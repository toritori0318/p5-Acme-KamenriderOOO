package Acme::KamenriderOOO::Medal::Batta;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'batta',
        name       => 'バッタ',
        combo_name => 'バ',
        color      => 'green',
        pos        => 3,
    );
}

1;
