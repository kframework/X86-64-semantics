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

# Using GetOPtions
my $file        = "";
my $strata_path = "/home/sdasgup3/Github/strata-data/circuits";
my $instantiated_instr_path =
  "/home/sdasgup3/Github/strata-data/data-regs/instructions/";
my $help       = "";
my $stratum    = "";
my $readmod    = "";
my $createspec = "";

GetOptions(
    "help"          => \$help,
    "file:s"        => \$file,
    "stratum"       => \$stratum,
    "readmod"       => \$readmod,
    "createspec"    => \$createspec,
    "strata_path:s" => \$strata_path,
) or die("Error in command line arguments\n");

open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines      = <$fp>;
my $debugprint = 0;

## Create a spec file
if ( "" ne $createspec ) {
    my $specdir =
      "/home/sdasgup3/Github/binary-decompilation/x86-semantics/specs/";

    for my $opcode (@lines) {
        chomp $opcode;
        my $specfile = "$specdir/x86-semantics_${opcode}_spec.k";
        open( my $fp, ">", $specfile )
          or die "[create_spec] cannot open $specfile: $!";
        my @instr_arr =
          kutils::get_circuit( $opcode, $strata_path, $debugprint );

        my $counter   = 0;
        my $spec_code = "";
        for my $instr (@instr_arr) {
            $spec_code =
                $spec_code
              . "loc ( mi(64, $counter)) |-> storedinstr ( $instr , .Typedoperands )"
              . "\n";
            $counter++;
        }
        $spec_code =
          $spec_code
          . "loc ( mi(64, $counter)) |-> storedinstr ( nop .Typedoperands )";
        debugInfo( $spec_code . "\n", $debugprint );
        print $fp kutils::spec_template($spec_code);

        my ( $targetinstr, $metadata, $rwset ) =
          kutils::getReadMod( $opcode, $instantiated_instr_path, $debugprint );
        print $fp "\n/*" . "\n"
          . "opcode:$opcode" . "\n"
          . "instr:$targetinstr" . "\n"
          . $rwset . "*/";
    }
    exit(0);
}

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
if ( "" ne $readmod ) {

    #info("Using strata_path = $strata_path");
    for my $opcode (@lines) {
        chomp $opcode;
        my ( $instr, $metadata, $rwset ) =
          kutils::getReadMod( $opcode, $instantiated_instr_path, $debugprint );
        print "\n$opcode" . "\n"
          . $instr . "\n"
          . $metadata . "\n"
          . $rwset . "\n";
    }
    exit(0);
}
