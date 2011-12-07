package Acme::KamenriderOOO::Medal::Kuwagata;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'kuwagata',
        name       => 'クワガタ',
        combo_name => 'ガタ',
        color      => 'green',
        pos        => 1,
    );
}

1;
