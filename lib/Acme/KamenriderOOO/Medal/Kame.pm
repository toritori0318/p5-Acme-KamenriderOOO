package Acme::KamenriderOOO::Medal::Kame;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'kame',
        name       => 'カメ',
        combo_name => 'カ',
        color      => 'white',
        pos        => 2,
    );
}

1;
