package Acme::KamenriderOOO::Medal::Torikera;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'torikera',
        name       => 'トリケラ',
        combo_name => '',
        color      => 'magenta',
        pos        => 2,
    );
}

1;
