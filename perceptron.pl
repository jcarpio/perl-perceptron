#!/usr/bin/perl

use strict;

if ($#ARGV + 1 != 4) { print "Usage: ./perceptron.pl <num_layers> <layer_size> <first_layer_size> <last_layer_size>\n" } 

my $num_layers = $ARGV[0];
my $layer_size = $ARGV[1];
my $first_layer_size = $ARGV[2];
my $last_layer_size = $ARGV[3]; 

my @a;
my @weights;
my @sum;
my @w;
my @u;
my @first_layer;

my ($k, $i, $j);

# Read file and obtain values

$a[1][1] = 1;
$a[1][2] = 2;
$a[1][3] = 3;

#random weight initialization

for($k=1; $k <= $num_layers; $k++) {
  for ($j = 1; $j <= $layer_size; $j++) {
     $u[$k][$j] = 1;
     for ($i = 1; $i <= $layer_size; $i ++) {
        $w[$k][$j][$i] = 0.5;
     }
  } 
}

#calculating a's 

for ($k = 2; $k <= $num_layers; $k++) { # Selecting layer number
   for ($j = 1; $j <= $layer_size; $j++) { # Selecting neuron in layer from 1 to $layer_size
      for ($i = 1; $i <= $layer_size; $i++) { # Selecting weight in neuron from 1 to $layer_size 
         $sum[$k][$j] =+ $a[$k-1][$i] * $w[$k][$j][$i];
      }
      $a[$k][$j] = $u[$k][$j] * $sum[$k][$j]; 
      print " $a[$k][$j] ";
   }
   print "\n";
}
