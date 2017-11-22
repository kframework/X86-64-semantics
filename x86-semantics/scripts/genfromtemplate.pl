#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;

use lib qw( ./ );
use template;

my $help    = "";
my $home    = $ENV{'HOME'};

GetOptions(
    "help"     => \$help,
) or die("Error in command line arguments\n");

if ($help) {
    print("");
    exit(1);
}


my @iter = (
  "rax", 
  "rbx", 
  "rcx", 
  "rdx", 
  "rsi", 
  "rdi", 
  "rsp", 
  "rbp",
  "r8", 
  "r9", 
  "r10", 
  "r11", 
  "r12", 
  "r13", 
  "r14", 
  "r15", 
); 



generate(\@iter);
