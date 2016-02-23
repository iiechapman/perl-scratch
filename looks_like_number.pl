#!/usr/bin/perl

use strict;
use warnings;

use Scalar::Util qw(looks_like_number);

print "How many loaves of bread shall I buy?\n";

my $loaves = <STDIN>;
chomp $loaves;

if (looks_like_number($loaves)) {
	print "Got it...\n";
} else {
	print "I don't get it....\n";
}
