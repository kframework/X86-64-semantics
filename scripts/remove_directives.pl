#!/usr/bin/perl

# Common includes
use strict;
use warnings;
use Getopt::Long;

my $home = "";
BEGIN{
	$home = $ENV{"HOME"};
	unshift @INC, "$home/Documents/University/Grad/binary-decompilation/x86-semantics/scripts/";
}
use utils;
use File::Temp qw/ tempfile tempdir /;

my $file = "";
my $inplace = "";

GetOptions(
    "file:s" => \$file,
    "i" => \$inplace,
) or die("Error in command line arguments\n");

open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines = <$fp>;
close $fp;

my ( $fh, $tmpfile ) = tempfile( "tmpfileXXXXX", DIR => "/tmp/" );
sub defer_print {
  my $msg = shift @_;

  if("" ne $inplace) {
    print $fh $msg;
  } else {
    print $msg;
  }
}


my %LS = ();
for my $line (@lines) {
    chomp $line;
    $line = utils::trim($line);
    if($line =~ m/.*:$/g) {
    } else {
      $line = "    " . $line;
    }

    if($line =~ m/\.type|\.size|\.ident|\.align|\.weak|\.local|\.file|\.p2align|\.cfi\_/) {
      next;
    }

    # Ignore comments
    #if($line =~ m/\#/) {
    #  next;
    #}
    #if($line =~ m/\s+\#.*/g) {
    #  next;
    #}
      
    $line =~ s/\#.*//g;
    $line =~ s/\.rodata.*/.rodata/g;
    
    if($line =~ m/\.text|\.file|\.section|\.quad|\.value|\.long|\.zero|\.globl|\.comm|\.string|\.data|\.byte|\.bss|\.ascii|\.asciz|\.set/) {

    } else {
      $line =~ s/\.//g;

    }
    $line =~ s/([\_a-zA-Z\d]+)\.([\_a-zA-Z\d]+)/$1$2/g;
    $line =~ s/\@PLT//g;

    if($line =~ m/^\.L(.*)/) {
      defer_print "L". $1. "\n";
      next;
    }

    if($line =~ m/^    call/) {
      $line =~ s/\.//g;
      $line =~ s/\*//g;
      defer_print "". $line ."\n";
      next;
    }

    if($line =~ m/^    j.*/) {
      $line =~ s/\.//g;
      $line =~ s/\*//g;
      defer_print "". $line ."\n";
      next;
    }

    if($line =~ m/(.*)stdout\(%rip\)(.*)/) {
      defer_print $1. "\$stdout" . $2. "\n";
      #defer_print $1. "stdout" . $2. "\n";
      next;
    }

    if($line =~ m/^(.*)\+(.*)/g) {
      $line  = "$1 + $2"; 
    }


    # Case quad
    if($line =~ m/\.quad/g) {
      $line =~ s/\.L/L/g;
      defer_print "". $line ."\n";
      next;
    }


    if($line =~ m/(.*)\.L(.*)/) {
      my $pre = $1;
      my $post = $2;

      #my $text = "";
      my  $text = $pre."L". $post;
      #if($pre =~ m/\$/g) {
      #  $text = $pre."L". $post;
      #} else {
      #  $text = $pre."\$L". $post;
      #}

      defer_print "". $text. "\n";
      next;
    }

    #defer_print $line. "\n";
    #if($line =~ m/^(.*)\s+([a-zA-Z]+[0-9]*) \+ (\d+)(.*)/) {
    #  my $pre = $1;
    #  my $base = $2;
    #  my $const = $3;
    #  my $post = $4;

    #    $base = "\$". $base;
    #  $line = $pre . " $base + $const$post";
    #  defer_print "" . "$line". "\n";
    #  next;
    #}

    #if($line =~ m/^(.*)\s+([_a-zA-Z]+[0-9]*)\(%(\w+)\)(.*)/) {
    #  my $pre = $1;
    #  my $base = $2;
    #  my $reg = $3;
    #  my $post = $4;

    #  $base = "\$". $base;
    #  $line = $pre . " $base(%$reg)$post";
    #  defer_print "". "$line". "\n";
    #  next;
    #}

    #if($line =~ m/^(.*)\s+([_a-zA-Z]+[0-9]*)\(,%(\w+),(\d+)\)(.*)/) {
    #  my $pre = $1;
    #  my $base = $2;
    #  my $reg1 = $3;
    #  my $reg2 = $4;
    #  my $post = $5;

    #  $base = "\$". $base;
    #  $line = $pre . " $base(,%$reg1,$reg2)$post";
    #  defer_print "". "$line". "\n";
    #  next;
    #}

    if($line =~ m/^#.*/) {
      next;
    }

    if($line =~ m/GNU-stack/) {
      next;
    }

    if($line =~ m/(.*)\%fs:(.*)/) {
      defer_print $1. "\$" . $2. "\n";
      next;
    }


    #if($line =~ m/(.*)\s+(\S+)\(%rip\)(.*)/) {
    #  defer_print $1. " \$$2(%rip)" . $3. "\n";
    #  next;
    #}

    if($line =~ m/^main:/) {
      defer_print ".globl _start\n";
      defer_print "_start:". "\n";
      next;
    }

    if($line =~ m/(.*)call\s*\*(.*)/) {
      defer_print  $1. "call $2". "\n";
      next;
    }

    if($line =~ m/(.*)jmp\s*\*(.*)/) {
      defer_print  $1. "jmp $2". "\n";
      next;
    }

    defer_print $line . "\n";
}

if("" ne $inplace) {
  execute("mv $tmpfile $file");
}
