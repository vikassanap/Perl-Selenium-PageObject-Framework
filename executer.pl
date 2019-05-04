#! /usr/bin/perl

use strict;
use warnings;

use TAP::Harness;
use TAP::Formatter::HTML;

my $fmt = TAP::Formatter::HTML->new;

my @tests = glob('testCases/sign_in.t');
# In case you have more than one test script files, you just need to add the other test script one
# after the other

#For e.g. my @tests = glob('1.t
#                                           2.t
#                                           3.t');
my $harness = TAP::Harness->new( { formatter => $fmt, merge => 1 } );

my ($sec,$min,$hour,$day,$month,$yr19,@rest) =   localtime(time);
my $data = ($day."-".++$month."-".($yr19+1900)."-");

$fmt->output_file("/home/vikas/Perl/RR/testReports/".$data."Myfile.html");

$harness->runtests(@tests);
