#!/usr/bin/perl

# Common includes
use strict;
use warnings;
use Getopt::Long;

my $file = "";

GetOptions(
    "file:s" => \$file,
) or die("Error in command line arguments\n");

open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines = <$fp>;
close $fp;


my %LS = ();
for my $line (@lines) {
    chomp $line;

    if($line =~ m/^\.L(.*)/) {
      print "L". $1. "\n";
      next;
    }

    if($line =~ m/(.*)\.L(.*)/) {
      print $1."L". $2. "\n";
      next;
    }

    if($line =~ m/^#.*/) {
      next;
    }

    if($line =~ m/\.file .*/) {
      next;
    }

    if($line =~ m/(.*)\%fs:(.*)/) {
      print $1. "\$" . $2. "\n";
      next;
    }

    if($line =~ m/\.text|\.globl|\.type|\.size|\.ident|\.section|\.file|\.data|\.align/) {
      next;
    }

    if($line =~ m/main(.*)/) {
      print ".globl _start\n";
      print "_start". $1. "\n";
      next;
    }
    print $line . "\n";
}

