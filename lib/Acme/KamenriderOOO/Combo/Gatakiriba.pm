package Acme::KamenriderOOO::Combo::Gatakiriba;

use strict;
use warnings;

use base qw(Acme::KamenriderOOO::Combo::Base);

sub info {
    return (
        id    => 'gatakiriba',
        name  => 'ガタキリバ',
        bgm   => 'ガータガタキリバ！ガタキリバ！',
        medal => ['Kuwagata', 'Kamakiri', 'Batta'],
        greed => 'ウヴァ',
        color => 'bold green',
    );
}

1;
