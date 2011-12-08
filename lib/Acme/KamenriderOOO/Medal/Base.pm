package Acme::KamenriderOOO::Medal::Base;

use strict;
use warnings;
use base qw(Class::Accessor);
use Term::ANSIColor qw(colored);

__PACKAGE__->mk_accessors(qw(
    id
    name
    combo_name
    color
    pos
));

sub new {
    my $class = shift;
    my $self  = bless {}, $class;

    $self->_initialize;
    return $self;
}

sub _initialize {
    my $self = shift;
    my %info = $self->info;
    $self->{$_} = $info{$_} for keys %info;
    return 1;
}

sub say {
    my ($self) = @_;
    my $name = $self->name . '！';
    my $str = ($self->color) ? colored($name, $self->color) : $name;
    print "$str\n";
}

1;

