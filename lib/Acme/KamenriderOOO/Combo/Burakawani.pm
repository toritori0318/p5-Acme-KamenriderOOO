package Acme::KamenriderOOO::Combo::Burakawani;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Combo::Base);

sub info {
    return (
        id    => 'burakawani',
        name  => 'ブラカワニ',
        bgm   => 'ブラカーーーワニ！',
        medal => ['Cobra', 'Kame', 'Wani'],
        greed => '',
        color => 'bold white',
    );
}

1;
