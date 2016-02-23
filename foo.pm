#!/usr/bin/perl

#Foo Package test

=pod

=head1 DESCRIPTION

This makes a package named foo for simple tests of packages

=cut

package Foo;

require Exporter;
@ISA = qw(Exporter);
@EXPORT = qw(bar blat);


sub bar {
	print "Hello $_[0]\n";
}

sub blat {
	print "World $_[0]\n";
}

1;
