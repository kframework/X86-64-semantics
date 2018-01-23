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
my $specdir = "/home/sdasgup3/Github/binary-decompilation/x86-semantics/specs/";
my $derivedInstructions =
"/home/sdasgup3/Github/binary-decompilation/x86-semantics/derivedInstructions/";
my $help        = "";
my $stratum     = "";
my $readmod     = "";
my $createspec  = "";
my $postprocess = "";
my $kprove      = "";
my $getoplist   = "";
my $all         = "";

GetOptions(
    "help"          => \$help,
    "file:s"        => \$file,
    "stratum"       => \$stratum,
    "readmod"       => \$readmod,
    "createspec"    => \$createspec,
    "getoplist"     => \$getoplist,
    "kprove"        => \$kprove,
    "postprocess"   => \$postprocess,
    "all"           => \$all,
    "strata_path:s" => \$strata_path,
) or die("Error in command line arguments\n");

open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines      = <$fp>;
my $debugprint = 0;

## Create a spec file
if ( "" ne $createspec ) {
    for my $opcode (@lines) {
        kutils::createSpecFile( $opcode, $strata_path, $specdir,
            $instantiated_instr_path, $debugprint );
    }
}

## Run krpove on spec file
if ( "" ne $kprove ) {
    for my $opcode (@lines) {
        kutils::runkprove( $opcode, $specdir, $debugprint );
    }
}

## Post process
if ( "" ne $postprocess ) {
    for my $opcode (@lines) {
        kutils::postProcess( $opcode, $specdir, $derivedInstructions,
            $debugprint );
    }
}

if ( "" ne $all ) {
    for my $opcode (@lines) {
        chomp $opcode;
        my $isSupported =
          kutils::checkSupported( $opcode, $strata_path, $derivedInstructions,
            $debugprint );
        if ( 0 == $isSupported ) {
            utils::warnInfo("$opcode: Unsupported");
            next;
        }
        kutils::createSpecFile( $opcode, $strata_path, $specdir,
            $instantiated_instr_path, $debugprint );
        kutils::runkprove( $opcode, $specdir, $debugprint );
        kutils::postProcess( $opcode, $specdir, $derivedInstructions,
            $debugprint );
        print "\n";
    }
}

## Get the stratum and num of instr of a particular circuit
if ( "" ne $stratum ) {
    if ( "" eq $strata_path ) {
        info(" Need-- strata_path ");
        exit(0);
    }

    #info(" Using strata_path = $strata_path ");
    for my $opcode (@lines) {
        chomp $opcode;
        my ( $depth, $count ) =
          kutils::find_stratum( $opcode, $strata_path, $debugprint );
        print " \n $opcode" . " \t " . $depth . " \t " . $count . " \n ";
    }
    exit(0);
}

## Get the read/write reg set
if ( "" ne $readmod ) {

    #info(" Using strata_path = $strata_path ");
    for my $opcode (@lines) {
        chomp $opcode;
        my ( $instr, $metadata, $rwset ) =
          kutils::getReadMod( $opcode, $instantiated_instr_path, $debugprint );
        print " \n $opcode" . " \n "
          . $instr . " \n "
          . $metadata . " \n "
          . $rwset . " \n ";
    }
    exit(0);
}

## Get all the registers involved in a circuit
if ( "" ne $getoplist ) {

    #info(" Using strata_path = $strata_path ");
    for my $opcode (@lines) {
        chomp $opcode;
        my $opList = kutils::getOpList( $opcode, $strata_path, $debugprint );
        print $opList;
    }
    exit(0);
}
