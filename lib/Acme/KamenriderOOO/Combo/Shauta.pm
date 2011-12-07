package Acme::KamenriderOOO::Combo::Shauta;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Combo::Base);

sub info {
    return (
        id    => 'shauta',
        name  => 'シャウタ',
        bgm   => 'シャシャシャウター！シャシャシャウター！',
        medal => ['Shachi', 'Unagi', 'Tako'],
        greed => 'メズール',
        color => 'bold blue',
    );
}

1;
