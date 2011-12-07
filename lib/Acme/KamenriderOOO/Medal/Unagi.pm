package Acme::KamenriderOOO::Medal::Unagi;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'unagi',
        name       => 'ウナギ',
        combo_name => 'ウ',
        color      => 'blue',
        pos        => 2,
    );
}

1;
