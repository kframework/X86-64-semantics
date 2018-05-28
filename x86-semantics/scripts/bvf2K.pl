#!/usr/bin/perl

# Common includes
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;

#use File::chdir;
use Cwd;
use File::Path qw(make_path remove_tree);
use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;
use lib qw( /home/sdasgup3/x86-semantics/scripts/ );
use kutils;
use File::Find;

#use File::chdir;
use Cwd;
use threads;

# Using GetOPtions
my $kfile      = "";
my $opcode     = "";
my $type       = "";
my $help       = "";
my $debugprint = 0;

my %opcodeSkipList = (        # Reason of manual generation
    "pdepq_r64_r64_r64" => 1, # impractically huge strata formula.
    "pdepl_r32_r32_r32" => 1,
    "pextl_r32_r32_r32" => 1, # Difficlt to write the semantics in handlers
    "pextq_r64_r64_r64" => 1,
    "cmpxchgb_r8_rh"    => 1, # Schedule instructions
    "movmskpd_r64_xmm"  => 1, # Huge strata formula.
    "vmovmskpd_r64_xmm" => 1,
    "vmovmskpd_r64_ymm" => 1,
    "vmovmskpd_r32_xmm" => 1,
    "vmovmskpd_r32_ymm" => 1,
    "movmskpd_r32_xmm"  => 1,
);

GetOptions(
    "help"     => \$help,
    "kfile:s"  => \$kfile,
    "type:s"   => \$type,
    "opcode:s" => \$opcode,
) or die("Error in command line arguments\n");

if ( "" eq $opcode or "" eq $kfile or "" eq $type ) {
    print("--opcode --kfile -type register/memory/immediate\n");
    exit(0);
}

## Skip generating K rule for opcodeSkipList
if ( exists $opcodeSkipList{$opcode} ) {

    #print "$opcode\tSkip\n";
    utils::info("$opcode: Skip");
    exit(0);
}

# Infile
open( my $fp, "<", $kfile ) or die "Can't open $kfile: $!";
my @lines = <$fp>;

#Outfile
my $outFile =
  "$utils::home/Github/binary-decompilation/x86-semantics/semantics/";
if ( "register" eq $type ) {
    $outFile = $outFile . "registerInstructions/$opcode.k";
}
if ( "immediate" eq $type ) {
    $outFile = $outFile . "immediateInstructions/$opcode.k";
}
if ( "memory" eq $type ) {
    $outFile = $outFile . "memoryInstructions/$opcode.k";
}

my $instrfolder = kutils::getInstrsFolder(
    "$utils::home/Github/strata-data/output-strata/instruction-summary",
    $type, $opcode );

# Read the Target instr
my $countertargetinstr = "";
for my $line (@lines) {
    chomp $line;
    if ( $line =~ m/code:(.*)/g ) {
        $countertargetinstr = utils::trim($1);
    }
}

my $targetinstr = kutils::getTargetInstr( $opcode, $debugprint, $instrfolder );

if ( $countertargetinstr ne $targetinstr ) {
    print "CounterInstr: "
      . $countertargetinstr . "\n"
      . "TargetInstr: "
      . $targetinstr . "\n";
    failInfo("CheckPoint 1");
}

# Get the operands and association with dummy registers R1, R2, ...
my $operandListFromOpcode_ref =
  getOperandListFromOpcode( $opcode, $debugprint );
my $operandListFromInstr_ref =
  getOperandListFromInstr( $targetinstr, $debugprint );

#printArray($operandListFromOpcode_ref);
#printArray($operandListFromInstr_ref);

my $actual2psedoRegs_ref = getDummyRegsForOperands( $operandListFromOpcode_ref,
    $operandListFromInstr_ref );
my %actual2psedoRegs = %{$actual2psedoRegs_ref};
utils::printMap( $actual2psedoRegs_ref, "ActualToPseduRegs", $debugprint );

print "$opcode:\tK Rule at $outFile\n";
writeKDefn( sanitizeBVF( $opcode, \@lines, $actual2psedoRegs_ref, $debugprint ),
    $outFile, $opcode, 1, 0, 0 );
