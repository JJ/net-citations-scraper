use Test::More; # -*-cperl-*-

use lib qw(../lib lib);

BEGIN {
  use_ok( 'Web::Scraper::Citations' );
}

diag( "Testing Web::Scraper::Citations $Web::Scraper::Citations::VERSION" );

my $person = Web::Scraper::Citations->new( "gFxqc64AAAAJ" ); #That's me
isa_ok( $person, "Web::Scraper::Citations");

ok( $person->name =~ /Merelo/, "Name OK");
is( $person->affiliation, "Professor of Computer Architecture, University of Granada", "Affiliation OK");
ok( $person->h >= 25, "h OK" );
my %stats = %{$person->profile_stats};
ok( keys( %stats ) > 0, "Stats returned" );
ok( $stats{'h'} == $person->h, "Returned singing" );
done_testing();
