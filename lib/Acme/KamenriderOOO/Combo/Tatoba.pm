package Acme::KamenriderOOO::Combo::Tatoba;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Combo::Base);

sub info {
    return (
        id    => 'tatoba',
        name  => 'タトバ',
        bgm   => 'タ・ト・バ！タトバタ・ト・バ！',
        medal => ['Taka', 'Tora', 'Batta'],
        greed => 'オーズ',
        color => 'bold white',
    );
}

1;
