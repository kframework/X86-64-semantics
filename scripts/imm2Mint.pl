#!/usr/bin/perl

# Common includes
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;
use File::chdir;
use Cwd;
use File::Path qw(make_path remove_tree);
use Env;
use POSIX;     # to use power
use bigint;    # to stop imprecesion
use bigint qw/hex oct/;
use File::Temp qw/ tempfile tempdir /;

BEGIN {
    my $script_dir = dirname(__FILE__);
    unshift @INC, $script_dir;
}
use utils;
use kutils;
use File::Find;

# Get environment Variable
my $file = "";
my $help               = "";

GetOptions(
    "help"   => \$help,
    "file:s" => \$file,
) or die("Error in command line arguments\n");

if ( $help ne "" ) {
    print "Usage: imm2MInt.pl --file <filename>\n";
    exit(0);
}


if("" eq $file) {
  exit (0);
}

execute("sed -i -e 's/\\(Imm[0-9]*\\):Imm/\\1:MInt/g' $file", 1);
execute("sed -i -e 's/handleImmediateWithSignExtend(\\(Imm[0-9]*\\), \\([0-9]*\\), \\([0-9]*\\))/signExtend(\\1, \\2, \\3)/g' $file", 1);

# Using fileparse
my ( $base, $dir, $ext ) = fileparse( $file, qr/\.[^.]*/ );


my $immWidth = 0;
my $expectedWidth = 0;

if($base =~ m/imm(\d+)/) {
  $immWidth = $1;
}

if($base =~ m/rel(\d+)/) {
  $immWidth = $1;
}

if($immWidth == 0) {
  exit 0;
}

print $base . "[$immWidth]" ."\n";

open( my $fp, "<", $file ) or die "Can't open ::$file\:: $!";
my @lines = <$fp>;
close($fp);

my ($fh, $tmpfilename) = tempfile( "tmpfileXXXXX", DIR => "/tmp/");
for my $line (@lines) {
#  if ( $line =~ m/Imm(\d+):MInt/) {
#    $expectedWidth = $1;
#    if($immWidth == $expectedWidth) {
#      utils::failInfo("Fail: $file");
#    }
#  }

  if($line =~ m/<\/regstate>/) {
    print $fh $line;
    print $fh "      requires bitwidthMInt(Imm$immWidth) ==Int $immWidth\n";
  } else {
    print $fh $line;
  }

}
close($fh);
execute("mv $tmpfilename $file", 1);


exit(0);
