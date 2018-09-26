#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;
use File::Temp qw/ tempfile tempdir /;
#use File::Find::Rule;

my $home = "";
BEGIN{
	$home = $ENV{"HOME"};
	unshift @INC, "$home/binary-decompilation/x86-semantics/scripts/";
}

use kutils;
use utils;

my $help       = "";
my $file       = "";
my $diff       = "";
my $baseDir = "$home/Github/binary-decompilation/x86-semantics/semantics";
my $regDir = $baseDir . "/registerInstructions/";
my $immDir = $baseDir . "/immediateInstructions/";
my $memDir = $baseDir . "/memoryInstructions/";
my $sysDir = $baseDir . "/systemInstructions/";
my $extraDir = $baseDir . "/extras/";
my $target   = $baseDir . "/underTestInstructions/";

GetOptions(
    "help"         => \$help,
    "diff"         => \$diff,
    "file:s"       => \$file,
) or die("Error in command line arguments\n");

if ($help) {
    print("");
    exit(1);
}

open( my $fp, "<", $file ) or die "Can't open $file: $!";
my @lines   = <$fp>;

for my $line (@lines) {
  chomp $line;
  
  if("" ne $diff) {
    #print "Diffing $line\n";
    if(-e "$regDir/$line") {
      execute("diff $regDir/$line $target/$line", 1);
    } elsif(-e "$memDir/$line") {
      execute("diff $memDir/$line $target/$line", 1);
    } elsif(-e "$immDir/$line") {
      execute("diff $immDir/$line $target/$line", 1);
    } else {
      execute("diff $sysDir/$line $target/$line", 1);
    }
  } else {
    print "Updating $line\n";
    execute("cp $regDir/$line $immDir/$line $memDir/$line $sysDir/$line $target 1> /dev/null 2>&1");
  }
}
