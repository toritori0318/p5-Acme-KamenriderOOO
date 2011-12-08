package Acme::KamenriderOOO::Combo::Tajatoru;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Combo::Base);

sub info {
    return (
        id    => 'tajadoru',
        name  => 'タジャドル',
        bgm   => 'タァージャードルー♪',
        medal => ['Taka', 'Kujaku', 'Kondoru'],
        greed => 'アンク',
        color => 'bold red',
    );
}

1;
