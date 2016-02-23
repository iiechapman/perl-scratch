#!/usr/bin/perl

#Tests using packages

$i = 1;
print "No Package: $i\n";

package foo;

$i = 2;
print "Package Foo: $i\n";

package main;

print "Package Main: $i\n";


print "Package Foo: $foo::i\n";
