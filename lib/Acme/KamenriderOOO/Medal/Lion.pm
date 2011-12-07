package Acme::KamenriderOOO::Medal::Lion;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'lion',
        name       => 'ライオン',
        combo_name => 'ラ',
        color      => 'yellow',
        pos        => 1,
    );
}

1;
