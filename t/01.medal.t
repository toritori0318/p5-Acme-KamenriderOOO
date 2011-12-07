use strict;
use Test::More;
use Capture::Tiny qw/ capture /;
use Test::Output;
use Class::Load qw/load_class/;

my @medals = (
    { class => 'Taka'     , name => 'タカ' }  ,
    { class => 'Kujaku'   , name => 'クジャク' } ,
    { class => 'Kondoru'  , name => 'コンドル' } ,
    { class => 'Kuwagata' , name => 'クワガタ' },
    { class => 'Kamakiri' , name => 'カマキリ' },
    { class => 'Batta'    , name => 'バッタ' },
    { class => 'Lion'     , name => 'ライオン' },
    { class => 'Tora'     , name => 'トラ' },
    { class => 'Chita'    , name => 'チーター' },
    { class => 'Sai'      , name => 'サイ' },
    { class => 'Gorira'   , name => 'ゴリラ' },
    { class => 'Zou'      , name => 'ゾウ' },
    { class => 'Shachi'   , name => 'シャチ' },
    { class => 'Unagi'    , name => 'ウナギ' },
    { class => 'Tako'     , name => 'タコ' },
);

use Acme::KamenriderOOO;
my $ooo = Acme::KamenriderOOO->new;

for my $medal (@medals) {
    my $class = $medal->{class};
    my $module_name = "Acme::KamenriderOOO::Medal::${class}";
    load_class($module_name);
    my $m = $module_name->new;
    my $name = $medal->{name};
    if($m->name eq $name) {
        pass("class->$class name->$name");
    } else {
        fail("class->$class name->$name");
    }
}

done_testing;
