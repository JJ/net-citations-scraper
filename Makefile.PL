use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Web::Scraper::Citations',
    AUTHOR              => 'JJ <JMERELO@cpan.org>',
    VERSION_FROM        => 'lib/Web/Scraper/Citations.pm',
    ABSTRACT_FROM       => 'lib/Web/Scraper/Citations.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'version'    => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Web-Scraper-Citations-*' },
);
