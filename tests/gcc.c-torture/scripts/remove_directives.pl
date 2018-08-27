#!/usr/bin/perl

# Common includes
use strict;
use warnings;
use Getopt::Long;
use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;

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
    $line = utils::trim($line);
    if($line =~ m/.*:$/g) {
    } else {
      $line = "    " . $line;
    }

    if($line =~ m/\.type|\.size|\.ident|\.align|\.weak|\.local/) {
      next;
    }

    if($line =~ m/^\.L(.*)/) {
      print "L". $1. "\n";
      next;
    }

    if($line =~ m/^    call/) {
      $line =~ s/\.//g;
      print "". $line ."\n";
      next;
    }

    if($line =~ m/^    j.*/) {
      $line =~ s/\.//g;
      print "". $line ."\n";
      next;
    }

    if($line =~ m/^(.*)\+(.*)/g) {
      $line  = "$1 + $2"; 
    }

    # Case quad
    if($line =~ m/\.quad/g) {
      $line =~ s/\.L/L/g;
      print "". $line ."\n";
      next;
    }


    if($line =~ m/(.*)\.L(.*)/) {
      my $pre = $1;
      my $post = $2;

      my $text = "";
      if($pre =~ m/\$/g) {
        $text = $pre."L". $post;
      } else {
        $text = $pre."\$L". $post;
      }

      #if($text =~ m/(.*)\s+(\S+)\(%rip\)(.*)/) {
      #  $text = $1. " \$$2(%rip)" . $3;
      #  #print $1. " \$$2(%rip)" . $3. "\n";
        #next;
        #}
      #if($text =~ m/^(.*)\s+([a-zA-Z]+[0-9]*+)\+(\d+)\(%(\w+)\)(.*)/) {
      #if($text =~ m/^(.*)\+(.*)/) {
      # #$text = $1. " \$$2 + $3(%$4)" . $5 . "R1";
      # $text = "$1 + $2";
      #
      # X(%r)
      #}#
      # elsif ($text =~ m/(.*)\s+([a-zA-Z]+[0-9]*+)\(%(\w+)\)(.*)/) {
      #   $text = $1. " \$$2(%$3)" . $4 . "R2";
      #   #print $1. " \$$2(%rip)" . $3. "\n";
      #   #next;
      # }

      #print $1."L". $2. "\n";
      print "". $text. "\n";
      next;
    }

    #print "beyond\n";

    #if($line =~ m/^(.*)\.quad\s+(\S+)\+(\d+)(.*)/) {
    #  my $pre = $1;
    #  my $base = $2;
    #  my $const = $3;
    #  my $post = $4;
    #  $base =~ s/\.//g;
    #  $line = $pre . " .quad $base + $const$post";
    #  print "$line". "\n";
    #  next;
    #}

    # X+4(%rip)
    #if($line =~ m/^(.*)\s+(\S+)\+(\d+)\(%rip\)(.*)/) {
    if($line =~ m/^(.*) ([a-zA-Z]+[0-9]*) \+ (\d+)(.*)/) {
      my $pre = $1;
      my $base = $2;
      my $const = $3;
      my $post = $4;

        $base = "\$". $base;
      $line = $pre . " $base + $const$post";
      print "$line". "\n";
      next;
    }

    if($line =~ m/^(.*) ([a-zA-Z]+[0-9]*)\(%(\w+)\)(.*)/) {
      my $pre = $1;
      my $base = $2;
      my $reg = $3;
      my $post = $4;

      $base = "\$". $base;
      $line = $pre . " $base(%$reg)$post";
      print "$line". "\n";
      next;
    }

    # X(%rax)
    #if($line =~ m/^(.*)\s+(\w+)(\(%rip|%rax|%rbx|%rcx|%rdx\))(.*)/) {
    #if($line =~ m/^(.*)\s+([a-zA-Z]+[0-9]*)\(%rax\)(.*)/) {
    #  my $pre = $1;
    #  my $base = $2;
    #  #my $reg = $3;
    #  my $post = $3;
    #  $base =~ s/\.//g;
    #  $base = "\$".$base;
    #  $line = $pre . " $base(%rax)$post";
    #  print "$line". "\n";
    #  next;
    #}

    ## X+Y
    #if($line =~ m/^(.*)\s+(\S+)\+(\d+)(.*)/) {
    #  my $pre = $1;
    #  my $base = $2;
    #  my $const = $3;
    #  my $post = $4;
    #  $base =~ s/\.//g;
    #  #$base = "\$".$base;
    #  $line = $pre . " $base + $const$post";
    #  print "$line". "\n";
    #  next;
    #}


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

