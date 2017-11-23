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


my @regs = (
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

my %subRegToReg = (
  "al" => "rax",
  "bl" => "rbx",
  "cl" => "rcx",
  "dl" => "rdx",
  "r8b" => "r8",
  "r9b" => "r9",
  "r10b" => "r10",
  "r11b" => "r11",
  "r12b" => "r12",
  "r13b" => "r13",
  "r14b" => "r14",
  "r15b" => "r15",
);

my @r8s = (
  "al",
  "bl",
  "cl",
  "dl",
  "r8b",
  "r9b",
  "r10b",
  "r11b",
  "r12b",
  "r13b",
  "r14b",
  "r15b",
);


generate(\@regs, \@r8s, \%subRegToReg);
