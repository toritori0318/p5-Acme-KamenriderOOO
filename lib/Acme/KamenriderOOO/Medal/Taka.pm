package Acme::KamenriderOOO::Medal::Taka;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'taka',
        name       => 'タカ',
        combo_name => 'タカ',
        color      => 'red',
        pos        => 1,
    );
}

1;
