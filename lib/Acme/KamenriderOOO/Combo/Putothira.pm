package Acme::KamenriderOOO::Combo::Putothira;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Combo::Base);

sub info {
    return (
        id    => 'putothira',
        name  => 'プトティラ',
        bgm   => 'プットッティラーノサウルーーース！',
        medal => ['Putera', 'Torikera', 'Thirano'],
        greed => '',
        color => 'bold magenta',
    );
}

1;
