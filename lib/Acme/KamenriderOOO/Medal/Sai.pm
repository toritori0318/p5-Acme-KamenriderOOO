package Acme::KamenriderOOO::Medal::Sai;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'sai',
        name       => 'サイ',
        combo_name => 'サ',
        color      => 'white',
        pos        => 1,
    );
}

1;
