package Acme::KamenriderOOO::Medal::Kondoru;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Medal::Base);

sub info {
    return (
        id         => 'kondoru',
        name       => 'コンドル',
        combo_name => 'ドル',
        color      => 'red',
        pos        => 3,
    );
}

1;
