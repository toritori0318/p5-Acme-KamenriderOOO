package Acme::KamenriderOOO::Medal::Chita;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'chita',
        name       => 'チーター',
        combo_name => 'ーター',
        color      => 'yellow',
        pos        => 3,
    );
}

1;
