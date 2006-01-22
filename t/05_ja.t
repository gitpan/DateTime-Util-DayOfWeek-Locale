use strict;
use warnings;
use Test::More tests => 15;
use DateTime;
use utf8;

BEGIN { use DateTime::Util::DayOfWeek::Locale 'ja'; }
my $dt = DateTime->new( year => 2006, month => 1, day => 18 );

ok( !$dt->is_月曜日,   $dt->strftime('%Y-%m-%d(%a)') . ' is not nitiyoubi' );
ok( !$dt->is_火曜日,  $dt->strftime('%Y-%m-%d(%a)') . ' is not kayoubi' );
ok( $dt->is_水曜日, $dt->strftime('%Y-%m-%d(%a)') . ' is suiyoubi' );
ok( !$dt->is_木曜日, $dt->strftime('%Y-%m-%d(%a)') . ' is not mokuyoubi' );
ok( !$dt->is_金曜日,   $dt->strftime('%Y-%m-%d(%a)') . ' is not kinyoubi' );
ok( !$dt->is_土曜日, $dt->strftime('%Y-%m-%d(%a)') . ' is not doyoubi' );
ok( !$dt->is_日曜日,   $dt->strftime('%Y-%m-%d(%a)') . ' is not nitiyoubi' );

$dt->add( days => 1 );
ok( !$dt->is_水曜日, $dt->strftime('%Y-%m-%d(%a)') . ' is not suiyoubi' );

$dt = DateTime->new( year => 2007, month => 2, day => 5 );
ok( $dt->is_月曜日, $dt->strftime('%Y-%m-%d(%a)') . ' is getsuyoubi' );
$dt->add( days => 1 );
ok( $dt->is_火曜日, $dt->strftime('%Y-%m-%d(%a)') . ' is kayoubi' );
$dt->add( days => 1 );
ok( $dt->is_水曜日, $dt->strftime('%Y-%m-%d(%a)') . ' is suiyoubi' );
$dt->add( days => 1 );
ok( $dt->is_木曜日, $dt->strftime('%Y-%m-%d(%a)') . ' is mokuyoubi' );
$dt->add( days => 1 );
ok( $dt->is_金曜日, $dt->strftime('%Y-%m-%d(%a)') . ' is kinyoubi' );
$dt->add( days => 1 );
ok( $dt->is_土曜日, $dt->strftime('%Y-%m-%d(%a)') . ' is doyoubi' );
$dt->add( days => 1 );
ok( $dt->is_日曜日, $dt->strftime('%Y-%m-%d(%a)') . ' is nitiyoubi' );

