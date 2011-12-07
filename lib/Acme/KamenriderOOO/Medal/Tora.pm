package Acme::KamenriderOOO::Medal::Tora;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'tora',
        name       => 'トラ',
        combo_name => 'トラ',
        color      => 'yellow',
        pos        => 2,
    );
}

1;
