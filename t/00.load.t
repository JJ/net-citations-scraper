use Test::More; # -*-cperl-*-

use lib qw(../lib lib);

BEGIN {
  use_ok( 'Web::Scraper::Citations' );
}

diag( "Testing Web::Scraper::Citations $Web::Scraper::Citations::VERSION" );

my $person;
my $id = "gFxqc64AAAAJ";
eval {
  $person = Web::Scraper::Citations->new( $id ); #That's me
};

if ( $person ) {
  isa_ok( $person, "Web::Scraper::Citations");
}

$person = Web::Scraper::Citations->new( "file:citations-jj.html" ); #from file
ok( $person->name =~ /Merelo/, "Name OK");
is( $person->id, $id, "ID OK");
is( $person->affiliation, "Professor of Computer Architecture, University of Granada", "Affiliation OK");
ok( $person->h >= 26, "h OK" );
my %stats = %{$person->profile_stats};
ok( keys( %stats ) > 0, "Stats returned" );
ok( $stats{'h'} == $person->h, "Returned singing" );
done_testing();
