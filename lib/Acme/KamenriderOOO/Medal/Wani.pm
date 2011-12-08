package Acme::KamenriderOOO::Medal::Wani;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'wani',
        name       => 'ワニ',
        combo_name => 'ワニ',
        color      => 'white',
        pos        => 3,
    );
}

1;
