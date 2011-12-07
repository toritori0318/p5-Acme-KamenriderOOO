package Acme::KamenriderOOO::Medal::Tako;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'tako',
        name       => 'タコ',
        combo_name => 'タ',
        color      => 'blue',
        pos        => 3,
    );
}

1;
