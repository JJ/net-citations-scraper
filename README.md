# Web::Scraper::Citations

[Google scholar citations](http://scholar.google.com/citations) profile scraper. Extracts researcher citation stats.

##Build status

[![Build Status](https://travis-ci.org/JJ/net-citations-scraper.svg?branch=master)](https://travis-ci.org/JJ/net-citations-scraper)

##Installation

After cloning from here (which you might have done already),

	cpanm --installdeps .
	perl Makefile.PL
	make
	make test
	make install

Done!

##Play

With your researcher ID,

    scripts/get-profile <my-id>
	
## TOSssing you off


Google has now [a single terms of service for all of them](https://www.google.com/policies/terms/). It basically says "don't mess with us". So use this scraper as you would do it by hand, and mainly for personal or institutional purposes. When in doubt, don't.
