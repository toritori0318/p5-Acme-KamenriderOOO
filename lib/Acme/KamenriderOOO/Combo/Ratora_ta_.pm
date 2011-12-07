package Acme::KamenriderOOO::Combo::Ratora_ta_;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Combo::Base);

sub info {
    return (
        id    => 'ratora-ta-',
        name  => 'ラトラータ',
        bgm   => 'ラトラーター！ラトラータ！',
        medal => ['Lion', 'Tora', 'Chita'],
        greed => 'カザリ',
        color => 'bold yellow',
    );
}

1;
