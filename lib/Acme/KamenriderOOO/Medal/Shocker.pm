package Acme::KamenriderOOO::Medal::Shocker;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'shocker',
        name       => 'ショッカー',
        combo_name => 'シー',
        color      => 'white',
        pos        => 3,
    );
}

1;
