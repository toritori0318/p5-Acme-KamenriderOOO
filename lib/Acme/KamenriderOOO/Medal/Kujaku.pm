package Acme::KamenriderOOO::Medal::Kujaku;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'kujaku',
        name       => 'クジャク',
        combo_name => 'ジャ',
        color      => 'red',
        pos        => 2,
    );
}

1;
