package Acme::KamenriderOOO::Medal::Imagine;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'imajin',
        name       => 'イマジン',
        combo_name => 'マ',
        color      => 'white',
        pos        => 2,
    );
}

1;
