#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;
use File::Temp qw/ tempfile tempdir /;
use File::Find::Rule;

use lib qw( /home/sdasgup3/x86-semantics/scripts/ );
use kutils;
use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;

my $help       = "";
my $file       = "";
my $baseDir = "/home/sdasgup3/Github/binary-decompilation/x86-semantics/semantics";
my $regDir = $baseDir . "/registerInstructions/";
my $immDir = $baseDir . "/immediateInstructions/";
my $memDir = $baseDir . "/memoryInstructions/";
my $sysDir = $baseDir . "/systemInstructions/";
my $extraDir = $baseDir . "/extras/";
my $target   = $baseDir . "/underTestInstructions/";

GetOptions(
    "help"         => \$help,
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
  $line = utils::trim($line);

  if($line =~ m/:/) {
    next;
  }

  my $opcode = $line =~ s/\s.*//gr; 

  print $opcode ."\n";
  my @files = File::Find::Rule->file->name("$opcode\_*.k")->in($regDir);
  foreach (@files) {
    print $file . "\n";
}

  #execute("cp $regDir/$opcode\_* $target");
  #execute("cp $immDir/$opcode\_* $target");
  #execute("cp $memDir/$opcode\_* $target");
  #execute("cp $sysDir/$opcode\_* $target");
  #execute("cp $extraDir/* $target");

}

exit;
