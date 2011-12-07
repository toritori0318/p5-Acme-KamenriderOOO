package Acme::KamenriderOOO::Medal::Gorira;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'gorira',
        name       => 'ゴリラ',
        combo_name => 'ゴリ',
        color      => 'white',
        pos        => 2,
    );
}

1;
