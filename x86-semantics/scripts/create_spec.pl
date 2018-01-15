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
use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;
use lib qw( /home/sdasgup3/Github/binary-decompilation/x86-semantics/scripts/ );
use kutils;

=pod
This file is used to create the *spec.k files used for krpove.

perl create_spec.pl --file  <file> --strata_path <path to circuits>
  where file contains list of opcodes.


=cut

my $debugprint = 0;

# Using GetOPtions
my $file        = "";
my $strata_path = "/home/sdasgup3/Github/strata-data/circuits";
my $instantiated_instr_path =
  "/home/sdasgup3/Github/strata-data/data-regs/instructions/";
my $help     = "";
my $stratum  = "";
my $read_mod = "";

GetOptions(
    "help"          => \$help,
    "file:s"        => \$file,
    "stratum"       => \$stratum,
    "read_mod"      => \$read_mod,
    "strata_path:s" => \$strata_path,
) or die("Error in command line arguments\n");

open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines = <$fp>;

## Get the stratum and num of instr of a particular circuit
if ( "" ne $stratum ) {
    if ( "" eq $strata_path ) {
        info("Need --strata_path");
        exit(0);
    }

    #info("Using strata_path = $strata_path");
    for my $opcode (@lines) {
        chomp $opcode;
        my ( $depth, $count ) =
          kutils::find_stratum( $opcode, $strata_path, $debugprint );
        print "\n$opcode" . "\t" . $depth . "\t" . $count . "\n";
    }
    exit(0);
}

## Get the read/write reg set
if ( "" ne $read_mod ) {

    #info("Using strata_path = $strata_path");
    for my $opcode (@lines) {
        chomp $opcode;
        my ( $instr, $metadata ) =
          kutils::read_mod( $opcode, $instantiated_instr_path, $debugprint );
        print "\n$opcode" . "\n\t" . $instr . "\n\t" . $metadata . "\n";
    }
    exit(0);
}
