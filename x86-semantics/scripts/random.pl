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
"2147483648",
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
"2139095039",
"8388608",
"1078530011",
"1051372203",
"1095106560",
"1116225274",
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
"2139095039", #max
"4286578687", #-max
"1",
"2147483649", # - min
"2139095040", #inf
"4286578688", #-inf
"2147483647" #NaN
    );

#movq \$ARG1, %rax
#movq \$ARG2, %rbx
#  movq %rax, %xmm0
#  movq %rbx, %xmm1
#  mulps  %xmm0, %xmm1
my $template = qq(
  movq \$ARG1, %rax
  movq %rax, %xmm0
  cvtss2sd  %xmm0, %xmm1
  cvtsd2ss  %xmm1, %xmm0
);

for my $line1 (@corpus) {

#for my $line2 (@corpus) {

    my $r1 = $template =~ s/ARG1/$line1/gr;
    my $r2  = $r1 =~ s/ARG2/$line1/gr;
    print $r2. "\n";

# }
}

my @corpus2 = (
"0",           #0
"2147483648", #-0
"16777215", # a num
"2139095039", #max
"4286578687", #-max
"1",
"2147483649", # - min
"2139095040", #inf
"4286578688", #-inf
"2147483647" #NaN
    );

#for my $line1 (@corpus2) {
#  for my $line2 (@corpus2) {
#
#    my $r1 = $template =~ s/ARG1/$line1/gr;
#    my $r2  = $r1 =~ s/ARG2/$line2/gr;
#    print $r2. "\n";
#
#}
#}

