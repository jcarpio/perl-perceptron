#!/usr/bin/perl

use strict;

if ($#ARGV != 2) { print "Usage: ./perceptron.pl <num_layers> <layer_size>\n" } 

my $num_layers = $ARGV[0];
my $layer_size = $ARGV[1];
