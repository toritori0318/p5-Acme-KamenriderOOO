package Acme::KamenriderOOO::Medal::Kamakiri;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'kamakiri',
        name       => 'カマキリ',
        combo_name => 'キリ',
        color      => 'green',
        pos        => 2,
    );
}

1;
