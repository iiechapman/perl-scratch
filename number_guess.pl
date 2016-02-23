#!/usr/bin/perl
#Number Guessing Game in Perl

use strict;
use warnings;


#generate Number

#start
#take Guess
#evaluate guess
#if right end loop
#else back to start


my $playing = "true";
my $min = 0;
my $max = 100;



sub generateNumber{
	my ($min,$max) = @_;
	my $number = int 1 + ($min + rand($max));
	#Debug
	#print "Number: $number\n";
	return $number;
}

#Start here

while ($playing eq "true") {
	my $number = generateNumber($min, $max);
	my $correct = "false";

	print "Let's play a number guessing game...\n";
	print "Choose a difficulty:\n";
	print "1: Easy\n";
	print "2: Medium\n";
	print "3: Hard\n";

	my $difficulty = 1;
	$difficulty = <STDIN>;

	while ($correct eq "false") {
		print "Guess a number from $min to $max\n";
		print "(Type 'q' to quit)\n";

		my $input = <STDIN>;
		chomp $input;

		if ((lc $input) eq "q") {
			$playing = "false";
			print "Goodbye!";
			last;
		} elsif ($input == $number ) {
			print "You are correct!\n";
			$correct = "true";
		} elsif (abs($input - $number) < 10 && ($difficulty == 3) ){
			print "Close! Try again\n";
		} elsif (abs($input - $number) < 2 && ($difficulty == 2) ){
			print "Getting Scorching Hot! Try again\n";
		} elsif (abs($input - $number) < 5 && ($difficulty == 2) ){
			print "Getting Red Hot! Try again\n";
		} elsif (abs($input - $number) < 10 && ($difficulty == 2) ){
			print "Getting Very Hot! Try again\n";
		} elsif (abs($input - $number) < 20 && ($difficulty == 2) ){
			print "Getting Hot! Try again\n";
		} elsif (abs($input - $number) < 40 && ($difficulty == 2) ){
			print "Getting Warm! Try again\n";
		} elsif (abs($input - $number) < 60 && ($difficulty == 2) ){
			print "Getting Lukewarm! Try again\n";
		} elsif (abs($input - $number) < 80 && ($difficulty == 2) ){
			print "Getting Cold! Try again\n";
		} elsif (abs($input - $number) < 90 && ($difficulty == 2) ){
			print "Getting Ice Cold! Try again\n";
		} elsif ($input > $number && $difficulty == 1) {
			print "Too high! Try again\n";
		} elsif ($input < $number && $difficulty == 1) {
			print "Too low! Try again\n";
		}
	}
}
