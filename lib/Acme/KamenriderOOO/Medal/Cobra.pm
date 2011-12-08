package Acme::KamenriderOOO::Medal::Cobra;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'cobra',
        name       => 'コブラ',
        combo_name => 'ブラ',
        color      => 'white',
        pos        => 1,
    );
}

1;
