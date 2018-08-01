#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;
use File::Find;

use lib qw( /home/sdasgup3/x86-semantics/scripts/ );
use kutils;

my $file= "";

GetOptions( 
    "file"   => \$file,
    )
  or die("Error in command line arguments\n");


my @corpus = (
"0",
"2147483648",
"1040187392",
"1048576000",
"1056964608",
"1065353216",
"1073741824",
"1082130432",
"1090519040",
"1052770304",
"1061158912",
"1069547520",
"1077936128",
"1086324736",
"1036831949",
"1045220557",
"1053609165",
"1061997773",
"1399379109",
"1733542428",
"2067830734",
"2139095040",
"4286578688",
"4286578688",
"3221225472",
"1103626240",
"2139095039",
"8388608",
"1078530011",
"1051372203",
"1095106560",
"1116225274",
"1077936128",
"3225419776",
"1073741825",
"3221225473",
"4194304",
"2151677953",
"2139095039",
"4286578687",
"8388607",
"2155872255",
"8388608",
"12582912",
"16777215",
    );

my $template = qq(
  movq \$ARG1, %rax
  movq \$ARG2, %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  addps  %xmm0, %xmm1
);

for my $line1 (@corpus) {

  for my $line2 (@corpus) {

    my $r1 = $template =~ s/ARG1/$line1/gr;
    my $r2  = $r1 =~ s/ARG2/$line2/gr;
    print $r2. "\n";

  }

}
