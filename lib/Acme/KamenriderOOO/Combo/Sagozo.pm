package Acme::KamenriderOOO::Combo::Sagozo;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Combo::Base);

sub info {
    return (
        id    => 'sagozo',
        name  => 'サゴーゾ',
        bgm   => 'サゴーゾ！・・サゴーゾ！',
        medal => ['Sai', 'Gorira', 'Zou'],
        greed => 'ガメル',
        color => 'bold white',
    );
}

1;
