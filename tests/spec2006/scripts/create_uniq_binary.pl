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

    if($line =~ m/(.*) \.\/bin\/(.*)\.exe/) {
      my $one  = $1;
      my $two  = $2;
      if(exists $LS{$two}) {
         $LS{$two} ++;
      } else {
         $LS{$two} = 0;
      }
      my $cnt = $LS{$two};
#print $two. "::$two-$cnt\n";
      print $one . " ./bin/" . "$two-$cnt.exe" . "\n";
    }
}
