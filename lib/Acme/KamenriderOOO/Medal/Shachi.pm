package Acme::KamenriderOOO::Medal::Shachi;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'shachi',
        name       => 'シャチ',
        combo_name => 'シャ',
        color      => 'blue',
        pos        => 1,
    );
}

1;
