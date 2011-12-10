package Acme::KamenriderOOO::Medal::Thirano;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'thirano',
        name       => 'ティラノ',
        combo_name => '',
        color      => 'magenta',
        pos        => 3,
    );
}

1;
