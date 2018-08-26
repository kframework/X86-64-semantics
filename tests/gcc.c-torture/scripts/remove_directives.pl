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
      my $text = $1."L". $2;

      if($text =~ m/(.*)\s+(\S+)\(%rip\)(.*)/) {
        $text = $1. " \$$2(%rip)" . $3;
        #print $1. " \$$2(%rip)" . $3. "\n";
        #next;
      }
      #print $1."L". $2. "\n";
      print $text. "\n";
      next;
    }

    if($line =~ m/^#.*/) {
      next;
    }

    if($line =~ m/GNU-stack/) {
      next;
    }

    #if($line =~ m/\.file .*/) {
    #  next;
    #}

    if($line =~ m/(.*)\%fs:(.*)/) {
      print $1. "\$" . $2. "\n";
      next;
    }

    if($line =~ m/(.*)stdout\(%rip\)(.*)/) {
      print $1. "\$stdout" . $2. "\n";
      next;
    }

    if($line =~ m/(.*)\s+(\S+)\(%rip\)(.*)/) {
      print $1. " \$$2(%rip)" . $3. "\n";
      next;
    }

    #if($line =~ m/\.text|\.globl|\.type|\.size|\.ident|\.section|\.file|\.data|\.align|\.weak/) {
    #  next;
    #}
    if($line =~ m/\.type|\.size|\.ident|\.align|\.weak|\.local/) {
      next;
    }

    #if($line =~ m/^main(.*)/) {
    if($line =~ m/^main:/) {
      print ".globl _start\n";
      print "_start:". "\n";
      next;
    }

    if($line =~ m/(.*)call\s*\*(.*)/) {
      print  $1. "call $2". "\n";
      next;
    }

    if($line =~ m/(.*)jmp\s*\*(.*)/) {
      print  $1. "jmp $2". "\n";
      next;
    }

    print $line . "\n";
}

