package base_page;

use strict;
use warnings;
use File::Basename;
use Time::HiRes qw(sleep);
use Test::WWW::Selenium;
use Test::More 'no_plan';
use Test::Exception;
use lib '/home/vikas/Perl/RR/pages';

BEGIN {
    my $path = "$ENV{'PWD'}/pages/*.pm";
 	my @files = < $path >;
 	foreach my $mod(@files){
   		 my($filename, $directories, $suffix) = fileparse($mod);
		    require $filename;
		  }
    }1;
