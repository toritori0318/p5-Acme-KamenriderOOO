package Acme::KamenriderOOO::Medal::Zou;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'zou',
        name       => 'ゾウ',
        combo_name => 'ゾ',
        color      => 'white',
        pos        => 3,
    );
}

1;
