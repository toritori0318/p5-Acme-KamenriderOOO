package Acme::KamenriderOOO::Combo::Tamashii;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Combo::Base);

sub info {
    return (
        id    => 'tamashii',
        name  => 'タマシイ',
        bgm   => 'タマシー！タマシータマシイィー！ライダァーダマシイィ！',
        medal => ['Taka', 'Imagine', 'Shocker'],
        greed => '',
        color => 'bold white',
    );
}

1;
