package Acme::KamenriderOOO::Combo::Base;

use strict;
use warnings;
use base qw(Class::Accessor);
use Class::Load qw/load_class/;
use Term::ANSIColor qw(colored);

__PACKAGE__->mk_accessors(qw(
   id
   name
   bgm
   medal
   greed
   color
));

sub new {
    my $class = shift;
    my $args = ref $_[0] eq 'HASH' ? $_[0] : {@_};

    my $self = $class->SUPER::new({
        %$args
    });
    $self->_initialize;
    $self;
}

sub _initialize {
    my $self = shift;
    my %info = $self->info;
    $self->{$_} = $info{$_} for keys %info;
    my @medal_class;
    for my $class (@{$self->{medal}}) {
        return if ref($class) ne '';
        my $module_name = "Acme::KamenriderOOO::Medal::${class}";
        load_class($module_name);
        push @medal_class, $module_name->new;
    }
    $self->{medal} = \@medal_class;
}

sub say_medal {
    my ($self) = @_;
    $_->say for (@{$self->medal});
}

sub say_combo {
    my ($self) = @_;
    print $self->name, "コンボ！\n";
}

sub say_combo_bgm {
    my ($self) = @_;
    if($self->bgm) {
        my $str = ($self->color) ? colored($self->bgm, $self->color) : $self->bgm;
        print "$str\n";
    }
}

sub is_combo {
    my ($self, $slot ) = @_;
    for my $slot_medal (@$slot) {
        my $hit;
        for my $combo_medal (@{$self->medal}) {
            if($slot_medal->id eq $combo_medal->id){
                $hit = 1;
                last;
            }
        }
        return 0 unless $hit;
    }
    return 1;
}

1;

