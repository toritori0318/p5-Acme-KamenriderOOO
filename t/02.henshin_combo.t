use strict;
use Test::More;
use Capture::Tiny qw/ capture /;
use Test::Output;

my @combo = (
    { henshin => 'タジャドル', medal => [ 'タカ','クジャク','クジャク'] },
    { henshin => 'タトバ',     medal => [ 'タカ','トラ','バッタ'] },
    { henshin => 'ラトラータ', medal => [ 'ライオン','トラ','チーター'] },
    { henshin => 'サゴーゾ',   medal => [ 'サイ','ゴリラ','ゾウ'] },
    { henshin => 'ガタキリバ', medal => [ 'クワガタ','カマキリ','バッタ'] },
    { henshin => 'シャウタ',   medal => [ 'シャチ','ウナギ','タコ'] },
    { henshin => 'プトティラ', medal => [ 'プテラ','トリケラ','ティラノ'] },
    { henshin => 'タマシー',   medal => [ 'タカ','イマジン','ショッカー'] },
    { henshin => 'ブラカワニ', medal => [ 'コブラ','カメ','ワニ'] },
);

use Acme::KamenriderOOO;
my $ooo = Acme::KamenriderOOO->new;
for (@combo) {
    stdout_like {
        $ooo->ooo_driver( @{$_->{medal}} );
        $ooo->henshin;
    } qr/$_->{henshin}/, "$_->{henshin}";
}

done_testing;
