use strict;
use warnings;
use Test::More tests => 15;

use DateTime;
use DateTime::Util::DayOfWeek::Locale 'fr';
my $dt = DateTime->new( year => 2006, month => 1, day => 18, locale => 'fr' );

ok( !$dt->is_lundi,    $dt->strftime('%Y-%m-%d(%a)') . ' is not lundi' );
ok( !$dt->is_mardi,    $dt->strftime('%Y-%m-%d(%a)') . ' is not mardi' );
ok( $dt->is_mercredi,  $dt->strftime('%Y-%m-%d(%a)') . ' is mercredi' );
ok( !$dt->is_jeudi,    $dt->strftime('%Y-%m-%d(%a)') . ' is not jeudi' );
ok( !$dt->is_vendredi, $dt->strftime('%Y-%m-%d(%a)') . ' is not vendredi' );
ok( !$dt->is_samedi,   $dt->strftime('%Y-%m-%d(%a)') . ' is not samedi' );
ok( !$dt->is_dimanche, $dt->strftime('%Y-%m-%d(%a)') . ' is not dimanche' );

$dt->add( days => 1 );
ok( !$dt->is_mercredi, $dt->strftime('%Y-%m-%d(%a)') . ' is not mercredi' );

$dt = DateTime->new( year => 2007, month => 2, day => 5, locale => 'fr' );
ok( $dt->is_lundi, $dt->strftime('%Y-%m-%d(%a)') . ' is lundi' );
$dt->add( days => 1 );
ok( $dt->is_mardi, $dt->strftime('%Y-%m-%d(%a)') . ' is mardi' );
$dt->add( days => 1 );
ok( $dt->is_mercredi, $dt->strftime('%Y-%m-%d(%a)') . ' is mercredi' );
$dt->add( days => 1 );
ok( $dt->is_jeudi, $dt->strftime('%Y-%m-%d(%a)') . ' is jeudi' );
$dt->add( days => 1 );
ok( $dt->is_vendredi, $dt->strftime('%Y-%m-%d(%a)') . ' is vendredi' );
$dt->add( days => 1 );
ok( $dt->is_samedi, $dt->strftime('%Y-%m-%d(%a)') . ' is samedi' );
$dt->add( days => 1 );
ok( $dt->is_dimanche, $dt->strftime('%Y-%m-%d(%a)') . ' is dimanche' );
