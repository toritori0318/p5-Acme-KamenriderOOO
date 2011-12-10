package Acme::KamenriderOOO::Medal::Putera;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'putera',
        name       => 'プテラ',
        combo_name => '',
        color      => 'magenta',
        pos        => 1,
    );
}

1;
