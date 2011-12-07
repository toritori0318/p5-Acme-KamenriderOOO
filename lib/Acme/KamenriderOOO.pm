package Acme::KamenriderOOO;

use strict;
use warnings;
use Carp  qw(croak);
use Class::Load qw/load_class/;

our $VERSION = '0.1';

my @medal_class = qw/
    Taka     Kujaku   Kondoru
    Kuwagata Kamakiri Batta
    Lion     Tora     Chita
    Sai      Gorira   Zou
    Shachi   Unagi    Tako
/;

my @combo_class = qw/
    Gatakiriba
    Ratora_ta_
    Sagozo
    Shauta
    Tajatoru
    Tatoba
/;

sub new {
    my $class = shift;
    my $self  = bless {driver => [], medal => [], combo => [], }, $class;

    $self->_initialize;
    return $self;
}

sub _initialize {
    my $self = shift;
    for my $class (@medal_class) {
        my $module_name = "Acme::KamenriderOOO::Medal::${class}";
        load_class($module_name);
        push @{$self->{medal}}, $module_name->new;
    }
    for my $class (@combo_class) {
        my $module_name = "Acme::KamenriderOOO::Combo::${class}";
        load_class($module_name);
        push @{$self->{combo}}, $module_name->new;
    }
}

sub ooo_driver {
    my ($self, @medals) = @_;
    die 'メダルは３つセットしよう！' if scalar @medals != 3;

    my @set_medals;
    for my $medal (@medals) {
        my @m = grep { $medal eq $_->name } @{$self->{medal}};
        if(my $mc = shift @m) {
            push @set_medals, $mc;
        }else{
            die "$medal というメダルは存在しないぞ！";
        }
    }
    $self->{driver} = \@set_medals;
}

sub henshin {
    my ($self) = @_;
    die 'オーズドライバーにメダルを３つセットしよう！' unless $self->{driver} && scalar @{$self->{driver}} > 0;

    my @medal_class;
    my @is_combo = grep { $_->is_combo($self->{driver}) } @{$self->{combo}};
    my $combo = shift @is_combo;
    unless($combo) {
        my $module_name = "Acme::KamenriderOOO::Combo::Ashu";
        load_class($module_name);
        $combo = $module_name->new(medal => $self->{driver});
    }
    $combo->say_medal;
    $combo->say_combo;
    $combo->say_combo_bgm;
}

sub select {
    my ($self, $type, $args) = @_;
    if($args && $args->{name}) {
        return grep { $args->{name} eq $_->{name} } @{$self->{$type}};
    }else{
        @{$self->{$type}};
    }
}

1;

__END__

=head1 NAME

Acme::KamenriderOOO - henshin!

=head1 SYNOPSIS

  use Acme::KamenriderOOO;

  my $ooo = Acme::KamenriderOOO->new;

  # combo infomation
  my @combo = $ooo->select('combo');
  my @combo = $ooo->select('combo', {name=>'タジャドル'});

  # medal infomation
  my @medal = $ooo->select('medal');
  my @medal = $ooo->select('medal', {name=>'タカ'});

  # Medal is set to the driver
  $ooo->ooo_driver( 'タカ','トラ','バッタ' );

  # kyuin kyuin kyuin kyuin kyuin ...

  # henshin!
  $ooo->henshin;    # タトバコンボ！

=head1 DESCRIPTION

I'll transform to Kamenrider OOO!

=head1 METHODS

=head2 new

=over 4

  my $ooo = Acme::KamenriderOOO->new;

Creates and returns a new Acme::KamenriderOOO object.

=back

=head2 select ($type, { name => $name } )

=over 4

  my @combo = $ooo->select('combo');
  my @combo = $ooo->select('combo', {name=>'タジャドル'});
  my @medal = $ooo->select('medal');
  my @medal = $ooo->select('medal', {name=>'タカ'});

Returns the Acme::KamenriderOOO::Combo or Acme::KamenriderOOO::Medal object.

=back

=head2 ooo_driver ( $medal1, $medal2, $medal3 )

=over 4

  $ooo->ooo_driver( 'タカ','トラ','バッタ' );

Three medals are set to OOO Driver....
This is preparation for transformation.

=back

=head2 henshin

=over 4

  $ooo->henshin;

It transform to Kamenrider OOO!

=back

=head1 SEE ALSO

=over 4

=item * Kamenrider OOO - Official WebPage

L<http://www.tv-asahi.co.jp/ooo/>

=back

=head1 AUTHOR

Tsuyoshi ToriiE<lt>toritori0318@gmail.com<gt>

=head1 COPYRIGHT AND LICENSE (The MIT License)

Copyright (c) 2011, Tsuyoshi Torii
E<lt>toritori0318@gmail.com<gt>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

=cut
