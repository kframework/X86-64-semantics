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
use lib qw( scripts/ );
use kutils;
use File::Find;
use File::chdir;
use Cwd;

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

#my $stoke_debug_circuit = "/home/sdasgup3/Install/strata/stoke/bin/stoke_debug_circuit";
my $stoke_debug_circuit =
  "/home/sdasgup3/Github/stoke/./bin/stoke_debug_formula";
my $help           = "";
my $stratum        = "";
my $readmod        = "";
my $createspec     = "";
my $postprocess    = "";
my $kprove         = "";
my $getoplist      = "";
my $all            = "";
my $genincludes    = "";
my $checksanity    = "";
my $gitdiff        = "";
my $diffwithstrata = "";
my $gitadd         = "";
my $gitco          = "";
my $speconly       = "";
my $nightlyrun     = "";
my $start          = "";
my $getimm         = "";
my $getimmdiff     = "";
my $getmem         = "";
my $getz3formula   = "";
my $z3prove        = "";
my $useuif         = "";
my $getregvariant  = "";
my $compile        = "";
my $compareother   = "";
my $comparemaps    = "";
my $getbvfs        = "";

GetOptions(
    "help"           => \$help,
    "file:s"         => \$file,
    "stratum"        => \$stratum,
    "readmod"        => \$readmod,
    "createspec"     => \$createspec,
    "getoplist"      => \$getoplist,
    "kprove"         => \$kprove,
    "postprocess"    => \$postprocess,
    "all"            => \$all,
    "genincludes"    => \$genincludes,
    "checksanity"    => \$checksanity,
    "gitdiff"        => \$gitdiff,
    "diffwithstrata" => \$diffwithstrata,
    "speconly"       => \$speconly,
    "gitadd"         => \$gitadd,
    "gitco"          => \$gitco,
    "getimm"         => \$getimm,
    "getimmdiff"     => \$getimmdiff,
    "getmem"         => \$getmem,
    "compareother"   => \$compareother,
    "getbvfs"        => \$getbvfs,
    "getregvariant"  => \$getregvariant,
    "comparemaps"    => \$comparemaps,
    "nightlyrun"     => \$nightlyrun,
    "getz3formula"   => \$getz3formula,
    "z3prove"        => \$z3prove,
    "useuif"         => \$useuif,
    "compile"        => \$compile,
    "start:s"        => \$start,
    "strata_path:s"  => \$strata_path,
) or die("Error in command line arguments\n");

##
my $sfp;
my $removeComment;
my $debugprint = 0;

if ( "" ne $comparemaps ) {
    my $allfile    = "docs/instruction_manuals/all.instrs";
    my $stokefile  = "docs/relatedwork/strata/all_concrete_instructions.txt";
    my $intelatt   = "docs/instruction_manuals/intel_att.txt";
    my $stratafile = "docs/relatedwork/strata/all_known_sema_opcodes.txt";

    ## get intel <-> att
    my ( $intel2att_ref, $att2intel_ref ) =
      assocIntelATT( $intelatt, $debugprint );
    my %intel2att = %{$intel2att_ref};
    my %att2intel = %{$att2intel_ref};
    print(  "Att/Intel Opcodes: "
          . scalar( keys %{att2intel} ) . "/"
          . scalar( keys %{intel2att} )
          . "\n" );

    my ( $all_att_ref, $all_intel_ref ) =
      modelInstructions( $allfile, $intelatt, "keep_instruction", 0 );

    my ( $stoke_att_ref, $stoke_intel_ref ) =
      modelInstructions( $stokefile, $intelatt, "keep_instruction", 0 );

    my ( $strata_att_ref, $strata_intel_ref ) =
      modelInstructions( $stratafile, $intelatt, "keep_instruction", 0 );

    # Compare file1 Vs file2
    utils::compareMaps( $all_att_ref, $stoke_att_ref, $debugprint, "A: All B: Stoke Total" );

    # Compare Stoke Vs Strata
    utils::compareMaps( $stoke_att_ref, $strata_att_ref, $debugprint, "A: Stoke Total B: Strata" );

    exit(0);

}

if ( "" ne $compareother ) {
    ## file names
    my $availfile = "docs/instruction_manuals/all.instrs";
    my $intelatt  = "docs/instruction_manuals/intel_att.txt";

    my $stratafile = "docs/relatedwork/strata/all_known_sema_opcodes.txt";
    my $stratavecimmfile =
      "docs/relatedwork/strata/stratum_vector_immediates.txt";
    my $mcsemafile = "docs/relatedwork/mcsema/amd64.txt";
    my $xedfile    = "docs/relatedwork/mcsema/xed.txt";
    my $acl2file   = "docs/relatedwork/acl2/supportedOPcodes.txt";
    my $stokefile  = "docs/relatedwork/strata/all_concrete_instructions.txt";
    my $stokeunsuppfile = "docs/relatedwork/strata/stoke_upsupported.txt";
    my $stokeunsuppfile2 = "docs/relatedwork/strata/stoke_upsupported2.txt";

    ## get intel <-> att
    my ( $intel2att_ref, $att2intel_ref ) =
      assocIntelATT( $intelatt, $debugprint );
    my %intel2att = %{$intel2att_ref};
    my %att2intel = %{$att2intel_ref};
    print(  " | Att/Intel Opcodes |"
          . scalar( keys %{att2intel} ) . "/"
          . scalar( keys %{intel2att} )
          . "|\n" );

    ## Get the total instructions
    my ( $avail_att_ref, $avail_intel_ref ) =
      modelInstructions( $availfile, $intelatt, "", 0 );
    my %avail_att   = %{$avail_att_ref};
    my %avail_intel = %{$avail_intel_ref};
    print(  "| Total (att/intel) | "
          . scalar( keys %{avail_att} ) . "/"
          . scalar( keys %{avail_intel} )
          . "|\n" );

    ## Get the strata supported instr
    my ( $strata_supp_att_ref, $strata_supp_intel_ref ) =
      modelInstructions( $stratafile, $intelatt, "", 0 );
    my %strata_supp_att   = %{$strata_supp_att_ref};
    my %strata_supp_intel = %{$strata_supp_intel_ref};
    print(  "| Strata Support(att/intel)| "
          . scalar( keys %strata_supp_att ) . "/"
          . scalar( keys %strata_supp_intel )
          . "|\n" );

    ## Get the mcsema supported instr
    my $mcsema_supp_intel_ref =
      assocateMcSemaXed( $mcsemafile, $xedfile, $debugprint );
    my %mcsema_supp_intel = %{$mcsema_supp_intel_ref};
    print(  "| McSema Support(Intel)| "
          . scalar( keys %mcsema_supp_intel )
          . "|\n" );

    ## Get the acl2 supported instr
    my $acl2_intel_ref =
      modelInstructions( $acl2file, $intelatt, "inIntel", $debugprint );
    my %acl2_intel = %{$acl2_intel_ref};
    print(  "| ACL2 Support(Intel)| "
          . scalar( keys %acl2_intel )
          . "|\n" );

    ## Get the stoke supported opcodes
    my ( $stoke_supp_att_ref, $stoke_supp_intel_ref ) =
      modelInstructions( $stokefile, $intelatt, "", 0 );
    print(  "| Stoke Support(Intel)| "
          . scalar( keys %{$stoke_supp_intel_ref} )
          . "|\n" );

    print "\n\n";

    ## Stoke 2  Vs McSema
    my ( $stoke2_unsupp_att_ref, $stoke2_unsupp_intel_ref ) =
      modelInstructions( $stokeunsuppfile2, $intelatt, "", 0 );
    utils::compareMaps( $stoke2_unsupp_intel_ref, \%mcsema_supp_intel,
        $debugprint, "A: Stoke 2  B: McSema" );

    # Compare Stoke2 Vs McSema
    utils::compareMaps( $stoke_supp_intel_ref, $strata_supp_intel_ref,
        $debugprint, "A: Stoke 2 B: McSema" );

    # Compare Stoke Vs Strata
    utils::compareMaps( $stoke_supp_intel_ref, $strata_supp_intel_ref,
        $debugprint, "A: Stoke B: Strata" );

    # Compare Stoke Vs McSema
    utils::compareMaps( $stoke_supp_intel_ref, $mcsema_supp_intel_ref,
        $debugprint, "A: Stoke B: McSema" );

    ## Stoke Unsupported  Vs McSema
    my ( $stoke_us_att_ref, $stoke_us_intel_ref ) =
      modelInstructions( $stokeunsuppfile, $intelatt, "", 0 );
    utils::compareMaps( $stoke_us_intel_ref, \%mcsema_supp_intel, $debugprint, "A: Stoke US  B: McSema" );

    # Strata Vs McSema
    utils::compareMaps( \%strata_supp_intel, \%mcsema_supp_intel, $debugprint, "A: Strata B: McSema" );

    ## Strata vector immediates Vs McSema
    my ( $strata_vectorimms_att_ref, $strata_vectorimms_intel_ref ) =
      modelInstructions( $stratavecimmfile, $intelatt, "", 0 );
    utils::compareMaps( $strata_vectorimms_intel_ref, \%mcsema_supp_intel,
        $debugprint, "A: Strata Vector Imms B: McSema" );

    ##  Strata vector immediates Vs Stoke Unsupported
    utils::compareMaps( $stoke_us_intel_ref, $strata_vectorimms_intel_ref,
        $debugprint, "A: Stoke US B: Strata Vector Imms" );

    # Compare ACL2 Vs Strata
        utils::compareMaps(\%acl2_intel, \%strata_supp_intel, $debugprint, "A: ACL2 B: Strata");
    
        # Compare ACL2 Vs McSema
        utils::compareMaps(\%acl2_intel, \%mcsema_supp_intel, $debugprint, "A: ACL2 B: McSema");

    exit(0);
}

if ( "" ne $compile ) {
    createSingleFileDefn();
    execute("git status x86-instructions-semantics.k");
    execute(
"time  kompile x86-semantics.k --syntax-module X86-SYNTAX --main-module X86-SEMANTICS --debug -v"
    );

    exit(0);
}

my $derivedInstructions = "derivedInstructions/";
my $specdir             = "kproveSpecs/";
my $specoutdir          = "kproveOutput/";
if ( "" ne $useuif ) {
    $derivedInstructions = "instructions_with_uif/derivedInstructions/";
    $specoutdir          = "instructions_with_uif/kproveOutput/";
}

sub createSingleFileDefn {

    my $singleFile = "x86-instructions-semantics.k";
    open( $sfp, ">", $singleFile ) or die "Can't open: $!";
    $removeComment = 0;

    print $sfp "requires \"x86-configuration.k\"" . "\n";
    print $sfp "requires \"x86-flag-checks-syntax.k\"" . "\n\n";
    print $sfp "module X86-INSTRUCTIONS-SEMANTICS" . "\n";
    print $sfp "  imports X86-CONFIGURATION" . "\n";
    print $sfp "  imports X86-FLAG-CHECKS-SYNTAX" . "\n";

    my $baseInstrPath    = "baseInstructions/";
    my $derivedInstrPath = "derivedInstructions/";

    if ( "" ne $useuif ) {
        $baseInstrPath    = "instructions_with_uif/baseInstructions/";
        $derivedInstrPath = "instructions_with_uif/derivedInstructions/";
    }

    print("\tMerging $baseInstrPath\n");
    find( \&mergeToSingleFile, $baseInstrPath );

    #print $sfp "endmodule";
    #    close($sfp);

    #    $singleFile = "test2.k";
    #    open( $sfp, ">", $singleFile ) or die "Can't open: $!";
    $removeComment = 1;

    #    print $sfp "requires \"x86-configuration.k\"" . "\n\n";
    #    print $sfp "module X86-DERIVED-INSTRUCTIONS-SEMANTICS" . "\n";
    #    print $sfp "  imports X86-CONFIGURATION" . "\n";

    print("\tMerging $derivedInstrPath\n");
    find( \&mergeToSingleFile, $derivedInstrPath );

    print $sfp "endmodule";
    close($sfp);

    return;
}

sub mergeToSingleFile {
    my $file = $_;
    if ( !( -f $file ) or ( $file !~ m/\.k$/ ) ) {
        return;
    }

    my $koutput = "$file";

    open( my $fp, "<", $koutput ) or die "Can't open ::$koutput\:: $!";
    my @lines = <$fp>;

    for my $line (@lines) {
        if ( $line =~ m/^module (.*)/ ) {
            print $sfp "// " . lc($1) . "\n";
            next;
        }
        if ( $line =~ m/imports/ ) {
            next;
        }
        if ( $line =~ m/^requires "(.*\.k)"/ ) {
            next;
        }
        if ( $line =~ m/Autogenerated/ ) {
            next;
        }
        if ( $line =~ m/endmodule/ ) {
            print $sfp "\n";
            if ( $removeComment == 1 ) {
                last;
            }
            else {
                next;
            }
        }
        print $sfp $line;
    }
}

if ( "" ne $nightlyrun ) {

    if ( "" eq $start ) {
        $start = 0;
    }

    my $cmd = "";
    for ( my $i = $start ; $i <= 15 ; $i++ ) {
        my $file = "docs/relatedwork/strata/stratum_$i.txt";
        $cmd = $cmd
          . "./scripts/process_spec.pl --file $file -all 1> $file.all.log 2>&1 ; ./scripts/run.pl --compile ; ";
    }

    execute( $cmd, 1 );
    exit(0);
}

if ( "" ne $getimm ) {
    kutils::getImmInstrs( $debugprint, $getimmdiff );
    exit(0);
}

if ( "" ne $getmem ) {
    kutils::getMemInstrs();
    exit(0);
}

open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines = <$fp>;

## Find Register Variant for a reg/imm/mem instruction
if ( "" ne $getregvariant ) {
    my $stokefile = "docs/relatedwork/strata/all_concrete_instructions.txt";
    my $intelatt  = "docs/instruction_manuals/intel_att.txt";
    my $basefile  = "docs/relatedwork/strata/Misc/base-opcodes.txt";
    my ( $stoke_att_ref, $stoke_intel_ref ) =
      modelInstructions( $stokefile, $intelatt, "keep_instruction", 0 );
    my ( $base_att_ref, $base_intel_ref ) =
      modelInstructions( $basefile, $intelatt, "keep_instruction", 0 );

    my $regVarCount = 0;
    my $immVarCount = 0;
    my $memVarCount = 0;
    my $immmemVarCount = 0;
    my $noExtendCount = 0;
    my $extendCount = 0;
    my $skipped = 0;
    my $noMatchCount = 0;
    my $matchCount = 0;
    my $cryptoCount = 0;
    my $x87Count = 0;
    my $mmxCount = 0;
    my $callJumpsCount = 0;
    my $sysCount = 0;
    my $vecimmsCount = 0;
    my $legacyCount = 0;

    my $counter = 0;
    for my $line (@lines) {
        chomp $line;
        $counter++;


        my ( $regVar, $found, $imm_or_mem, $type ) = getRegVaraint( $line, $base_att_ref, $debugprint );
#print "$regVar $found $imm_or_mem $type \n";

        if($imm_or_mem eq "register") {
          $regVarCount++;  
        } elsif($imm_or_mem eq "imm") {
          $immVarCount++;
        } elsif($imm_or_mem eq "mem") {
          $memVarCount++;
        } elsif($imm_or_mem eq "imm_mem") {
          $immmemVarCount++;
        }


        if($type eq "skipped") {
          $skipped++;  
          next;
        } elsif($type eq "no_extend") {
          $noExtendCount++;  
          next;
        } elsif($type eq "extend") {
          $extendCount++;  
          next;
        } elsif($type eq "match") {
          $matchCount++;
          next;
        }

        ( $regVar, $found, $imm_or_mem, $type ) = getRegVaraint( $line, $stoke_att_ref, $debugprint );

        if($type eq "no_extend") {
          $noExtendCount++;  
          next;
        } elsif($type eq "extend") {
          $extendCount++;  
          next;
        } elsif($type eq "no_match") {
          my $retVal = categorizeInstruction($line);

          if($retVal eq "crypto") {
            $cryptoCount ++;
          } elsif($retVal eq "x87") {
            $x87Count ++;
          } elsif($retVal eq "mmx") {
            $mmxCount ++;
          } elsif($retVal eq "cjumps") {
            print $line. "\n";
            $callJumpsCount ++;
          } elsif($retVal eq "sys") {
            $sysCount ++;
          } elsif($retVal eq "vecimms") {
            print $line. "\n";
            $vecimmsCount ++;
          } elsif($retVal eq "legacy") {
            $legacyCount ++;
          } else {
            print $line. "\n";
            $noMatchCount++;
          }

        } elsif($type eq "match") {
          $matchCount++;
          next;
        }

    }

    if($counter != ($regVarCount + $immVarCount + $memVarCount + $immmemVarCount)) {
      print $counter."\n";
      utils::failInfo("Sanity Check 1 failed");
    }

    my $temp = $cryptoCount + $x87Count + $mmxCount + $callJumpsCount + $sysCount+ $vecimmsCount + $legacyCount + $noMatchCount;
    if($counter != 
        ($skipped + $temp + $noExtendCount + $extendCount + $matchCount )) {
      utils::failInfo("Sanity Check 2 failed");
    }



    print "| Total   | Register Only | Immediate Instructions | Memory Instructions | Both Imm and Memory |\n" .
      "|----------------------|-----|-----|-------|-------|\n" .
      "|" . $counter . "|" .  $regVarCount . "|" . $immVarCount . "|" . $memVarCount . "|" . $immmemVarCount . "|\n\n";

    print "| Total   | Exact Match | Generalize to Imm/Mem  w/ extension |  Generalize to Imm/Mem  w/o extension | Skipped | Unspported |\n" .
      "|----------------------|-----|-----|--|--|--|\n" .
      "|" . $counter . "|" .  $matchCount . "|" . $extendCount . "|" . $noExtendCount . "|" . $skipped . "|" . $temp . "|\n\n";

    print "| Unsupported (above)   | Lagacy | System |  Vector Imm | Call/Jump/Stack | MMX | X87 | Crypto | Still Unsupported |\n" .
      "|--|--|--|--|--|--|--|--|--|\n" .
      "|" . $temp . "|" .  $legacyCount . "|" . $sysCount . "|" . $vecimmsCount . "|" . $callJumpsCount . "|" . $mmxCount . "|" . $x87Count . "|" . $cryptoCount . "|" . $noMatchCount .  "|\n\n";

}

## Get the bvfs
if ( "" ne $getbvfs ) {
    my $counter = 1;
    for my $opcode (@lines) {
        chomp $opcode;
        my $targetinstr = getTargetInstr( $opcode, $debugprint );
        print "\n\n$counter> $opcode ($targetinstr)\n";
        my $strata_BVFormula =
          getStrataBVFormula( $targetinstr, $debugprint, "", 0 );

        if ( $strata_BVFormula =~ m/unsupported/g ) {
            print "Unsupported:$opcode:$targetinstr";
        }
        else {
            print "$strata_BVFormula";
        }
        $counter = $counter + 1;
    }

}

## Run the Z3 prover
if ( "" ne $z3prove ) {
    for my $opcode (@lines) {
        chomp $opcode;

        if ( 0 == checkSuppOrManuallyGen( $opcode, $debugprint ) ) {
            next;
        }
        execute("python z3EquivFormulas/x86-$opcode.py");
    }
}

## Get z3 Formulas
if ( "" ne $getz3formula ) {
    for my $opcode (@lines) {
        chomp $opcode;

        if ( 0 == checkSuppOrManuallyGen( $opcode, $debugprint ) ) {
            next;
        }
        generateZ3Formula( $opcode, $debugprint );
    }
}

## diff with strata diffs the current output with the ones
## proved equivalent to strata BVFs using Z3
if ( "" ne $diffwithstrata ) {
    for my $opcode (@lines) {
        chomp $opcode;

        if ( 0 == checkSuppOrManuallyGen( $opcode, $debugprint ) ) {
            next;
        }

        my $koutput = "$derivedInstructions/x86-${opcode}.k";
        my $oracle =
          "instructions_with_uif/derivedInstructions/x86-${opcode}.k";

        execute("diff $oracle $koutput");
    }
}

## Git diff
if ( "" ne $gitdiff ) {
    for my $opcode (@lines) {
        chomp $opcode;

        if ( 0 == checkSuppOrManuallyGen( $opcode, $debugprint ) ) {
            next;
        }

        my $koutput = "$derivedInstructions/x86-${opcode}.k";

        execute("git diff  $koutput");
    }
}

## Git add
if ( "" ne $gitadd ) {
    for my $opcode (@lines) {
        chomp $opcode;

        if ( 0 == checkSuppOrManuallyGen( $opcode, $debugprint ) ) {
            next;
        }

        my $filesToAdd = "";
        my $specfile   = "$specdir/x86-semantics_${opcode}_spec.k";
        my $specout    = "$specoutdir/x86-semantics_${opcode}_spec.output";
        my $koutput    = "$derivedInstructions/x86-${opcode}.k";

        if ( $speconly eq "" ) {
            $filesToAdd = "$specfile $specout $koutput";
        }
        else {
            $filesToAdd = $specfile;
        }
        execute("git add $filesToAdd");
    }
}

## Git checkout
if ( "" ne $gitco ) {
    for my $opcode (@lines) {
        chomp $opcode;

        if ( 0 == checkSuppOrManuallyGen( $opcode, $debugprint ) ) {
            next;
        }

        my $filesToRestore = "";
        my $specfile       = "$specdir/x86-semantics_${opcode}_spec.k";
        my $specout        = "$specoutdir/x86-semantics_${opcode}_spec.output";
        my $koutput        = "$derivedInstructions/x86-${opcode}.k";

        if ( $speconly eq "" ) {
            $filesToRestore = "$specfile $specout $koutput";
        }
        else {
            $filesToRestore = $specfile;
        }
        execute("git checkout $filesToRestore");
    }
}

## Create a spec file
if ( "" ne $createspec ) {
    for my $opcode (@lines) {
        chomp $opcode;

        if ( 0 == checkSuppOrManuallyGen( $opcode, $debugprint ) ) {
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

        if ( 0 == checkSuppOrManuallyGen( $opcode, $debugprint ) ) {
            next;
        }

        kutils::runkprove( $opcode, $specdir, $specoutdir, $debugprint );
        print "\n";
    }
}

## Post process
if ( "" ne $postprocess ) {
    for my $opcode (@lines) {
        chomp $opcode;

        if ( 0 == checkSuppOrManuallyGen( $opcode, $debugprint ) ) {
            next;
        }

        kutils::postProcess( $opcode, $specdir, $specoutdir,
            $derivedInstructions, $debugprint, $useuif );
        print "\n";
    }
}

if ( "" ne $all ) {
    for my $opcode (@lines) {
        chomp $opcode;

        if ( 0 == checkSuppOrManuallyGen( $opcode, $debugprint ) ) {
            next;
        }

        kutils::createSpecFile( $opcode, $strata_path, $specdir,
            $instantiated_instr_path, $debugprint );
        kutils::runkprove( $opcode, $specdir, $specoutdir, $debugprint );
        kutils::postProcess( $opcode, $specdir, $specoutdir,
            $derivedInstructions, $debugprint );
        print "\n";
    }
}

sub checkSuppOrManuallyGen {
    my $opcode     = shift @_;
    my $debugprint = shift @_;

    my ( $isSupported, $reason ) =
      kutils::checkSupported( $opcode, $strata_path, $derivedInstructions,
        $debugprint );
    if ( 0 == $isSupported ) {
        utils::warnInfo("$opcode: $reason");
        return 0;
    }
    if ( "" ne $reason ) {
        utils::warnInfo("$opcode: $reason");
    }

    my $isManuallyGenerated =
      kutils::checkManuallyGenerated( $opcode, $debugprint );
    if ( 1 == $isManuallyGenerated ) {
        utils::warnInfo("$opcode: Manually Generated");
        return 0;
    }

    return 1;
}

if ( "" ne $checksanity ) {
    my @reqs    = ();
    my @imports = ();
    my @syntaxs = ();

    my @patterns = (
        "bitwidthMInt",             "plugInMask",
        "extractMask",              "zeroExtend",
        "signExtend",               "splitVectorHelper",
        "minFloat",                 "maxFloat",
        "Float2MInt\\\(MInt2Float", "MInt2Float\\\(Float2MInt",
        "_\\\\s+",                  "regstate",
    );

    my $antipattern = "convTo\|CF\|ZF\|SF\|PF\|OF\|AF";

    for my $opcode (@lines) {
        chomp $opcode;

        if ( 0 == checkSuppOrManuallyGen( $opcode, $debugprint ) ) {
            next;
        }

        my $koutput = "$derivedInstructions/x86-${opcode}.k";

        utils::info("$opcode: Check Sanity");
        for my $pattern (@patterns) {
            my $matches_ref = utils::myGrep( $pattern, "sdasgup3", $koutput );
            my @matches = @{$matches_ref};

            if ( ( $pattern eq "regstate" ) ) {
                if ( ( scalar(@matches) == 0 ) ) {
                    utils::failInfo("$pattern: $koutput");
                }
            }
            elsif ( scalar(@matches) > 0 ) {
                utils::failInfo("$pattern: $koutput");
            }
        }

        my $matches_ref = utils::myGrep( "\\|->", $antipattern, $koutput );
        my @matches = @{$matches_ref};
        if ( scalar(@matches) > 0 ) {
            utils::failInfo( "Scratch Pad:" . $koutput );
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
