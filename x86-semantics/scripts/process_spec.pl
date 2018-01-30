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
my $genincludes = "";
my $checksanity = "";

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
    "genincludes"   => \$genincludes,
    "checksanity"   => \$checksanity,
    "strata_path:s" => \$strata_path,
) or die("Error in command line arguments\n");

open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines      = <$fp>;
my $debugprint = 0;

## Create a spec file
if ( "" ne $createspec ) {
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
        print "\n";
    }
}

## Run krpove on spec file
if ( "" ne $kprove ) {
    for my $opcode (@lines) {
        chomp $opcode;
        my $isSupported =
          kutils::checkSupported( $opcode, $strata_path, $derivedInstructions,
            $debugprint );
        if ( 0 == $isSupported ) {
            utils::warnInfo("$opcode: Unsupported");
            next;
        }
        kutils::runkprove( $opcode, $specdir, $debugprint );
        print "\n";
    }
}

## Post process
if ( "" ne $postprocess ) {
    for my $opcode (@lines) {
        chomp $opcode;
        my $isSupported =
          kutils::checkSupported( $opcode, $strata_path, $derivedInstructions,
            $debugprint );
        if ( 0 == $isSupported ) {
            utils::warnInfo("$opcode: Unsupported");
            next;
        }
        kutils::postProcess( $opcode, $specdir, $derivedInstructions,
            $debugprint );
        print "\n";
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

if ( "" ne $genincludes ) {
    my @reqs = ();
    my @imports = ();
    my @syntaxs = ();

    for my $opcode (@lines) {
        chomp $opcode;
        my $isSupported =
          kutils::checkSupported( $opcode, $strata_path, $derivedInstructions,
            $debugprint );
        if ( 0 == $isSupported ) {
            utils::warnInfo("$opcode: Unsupported");
            next;
        }
        my $req    = "requires \"x86-${opcode}.k\"";
        my $koutput    = "$derivedInstructions/x86-${opcode}.k";
        my $matches_ref = utils::myGrep("-SEMANTICS", $koutput);
        my @matches = @{$matches_ref};

        if(scalar(@matches) > 1) {
          utils::failInfo("$opcode: More that one top level module");
        }

        my $semantic_module = $matches[0];
        $semantic_module =~ s/module //g; 
        $semantic_module = utils::trim($semantic_module);  
        my $import = "  imports $semantic_module";

        my $syntax = $opcode =~ s/_.*//gr;
        $syntax =  "                              |  \"$syntax\" [token]";

        push @reqs, $req;
        push @imports, $import;
        push @syntaxs, $syntax;

    }

    print join("\n", @reqs);

    print "\n";

    print join("\n", @imports);

    print "\n";

    print join("\n", @syntaxs);
}

if ( "" ne $checksanity ) {
    my @reqs = ();
    my @imports = ();
    my @syntaxs = ();

    my @patterns = (
        "bitwidthMInt", 
        "plugInMask", 
        "extractMask", 
        "zeroExtend", 
        "signExtend", 
        "splitVectorHelper",
        "minFloat",
        "maxFloat",
        "Float2MInt\\\(MInt2Float",
        "MInt2Float\\\(Float2MInt",
        "_\\\\s+",
        );
    
    my $antipattern = "convTo\|CF\|ZF\|SF\|PF\|OF\|AF";

    for my $opcode (@lines) {
        chomp $opcode;
        my $isSupported =
          kutils::checkSupported( $opcode, $strata_path, $derivedInstructions,
            $debugprint );
        if ( 0 == $isSupported ) {
            utils::warnInfo("$opcode: Unsupported");
            next;
        }
        my $koutput    = "$derivedInstructions/x86-${opcode}.k";
        

        utils::info("$opcode: Check Sanity");
        for my $pattern (@patterns) {
          my $matches_ref = utils::myGrep($pattern, "sdasgup3", $koutput);
          my @matches = @{$matches_ref};

          if(scalar(@matches) > 0) {
            utils::failInfo("$pattern: $koutput");
          }
        }

        my $matches_ref = utils::myGrep("\\|->", $antipattern, $koutput);
        my @matches = @{$matches_ref};
        if(scalar(@matches) > 0) {
          utils::failInfo("Scratch Pad:" . $koutput);
        }

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
