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
Getopt::Long::Configure('prefix=+');

use lib qw( /home/sdasgup3/Github/binary-decompilation/x86-semantics/scripts/ );
use utils;

# Get environment Variable
my $home       = $ENV{'HOME'};
my $hexPattern = qr/0x([0-9A-Za-z]+)/;

# Using GetOPtions
my $bit     = 64;
my $help    = "";
my $num     = "";
my $compare = "";

GetOptions(
    "bit:s"   => \$bit,
    "num:s"   => \$num,
    "compare" => \$compare,
    "help"    => \$help,
) or die(" Error in command line arguments \n ");

if ( "" ne $help ) {
    exit(0);
}

my ( $hexnum, $decimalnum, $binarynum, $unsigneddecimalnum );

if ( $num =~ m/$hexPattern/ ) {
    $hexnum = $1;
    $hexnum = signExtend( $hexnum, $bit );
    ( $decimalnum, $unsigneddecimalnum ) = toDec( $hexnum, $bit );
}
else {
    $decimalnum = $num;
    $hexnum = toHex( $decimalnum, $bit );
    ( $decimalnum, $unsigneddecimalnum ) = toDec( $hexnum, $bit );
}

$binarynum = dec2bin( $decimalnum, $bit );

print("Input: $num Bitwidth: $bit\n");
print("\tDecimal:\n");
print("\t\tSigned:  $decimalnum\n");
print("\t\tUnsigned: $unsigneddecimalnum\n");
print( "\tHex: " . printwithspaces( $hexnum, 2 ), "\n" );
print( "\t\t2's Compliment binary: ", printwithspaces( $binarynum, 8 ) . "\n" );
