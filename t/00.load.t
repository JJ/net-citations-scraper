use Test::More tests => 1; # -*-cperl-*-

use lib qw(../lib lib);

BEGIN {
use_ok( 'Web::Scraper::Citations' );
}

diag( "Testing Web::Scraper::Citations $Web::Scraper::Citations::VERSION" );

my $person = Web::Scraper::Citations->new( gFxqc64AAAAJ ); #That's me
