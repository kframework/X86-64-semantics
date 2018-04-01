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
use lib qw( /home/sdasgup3/x86-semantics/scripts/ );
use kutils;
use File::Find;
use File::chdir;
use Cwd;
use threads;

# Using GetOPtions
my $file        = "";
my $strata_path = "/home/sdasgup3/Github/strata-data/circuits";
my $instantiated_instr_path =
  "/home/sdasgup3/Github/strata-data/data-regs/instructions/";
my $script = "~/x86-semantics/scripts/process_spec.pl";

my $stoke_check_circuit =
  "/home/sdasgup3/Github/strata/stoke/./bin/stoke_check_circuit";

#my $stoke_check_circuit =
#"/home/sdasgup3/Github/strata-data/output-strata/nightlyruns/stoke_check_circuit";

my $functions_dir = "/home/sdasgup3/Github/strata-data/data-regs/functions";

my $testcases = "/home/sdasgup3/Github/strata-data/data-regs/testcases.tc";

#my $testcases = "~/Junk/TCS/testcases_100.tc";

my $help                 = "";
my $stratum              = "";
my $readmod              = "";
my $createspec           = "";
my $postprocess          = "";
my $kprove               = "";
my $getoplist            = "";
my $all                  = "";
my $genincludes          = "";
my $checksanity          = "";
my $gitdiff              = "";
my $diffwithstrata       = "";
my $gitadd               = "";
my $gitco                = "";
my $speconly             = "";
my $nightlyrun           = "";
my $start                = "";
my $getimm               = "";
my $getimmdiff           = "";
my $getmem               = "";
my $getz3formula         = "";
my $z3prove              = "";
my $useuif               = "";
my $getregvariant        = "";
my $compile              = "";
my $compareintel         = "";
my $comparemaps          = "";
my $getbvfs              = "";
my $check_stoke          = "";
my $match_stoke          = "";
my $single_thread        = "";
my $instructions_path    = "";
my $prepare_concrete_imm = "";
my $check_stoke_imm      = "";
my $match_stoke_imm      = "";
my $prefix               = "";

GetOptions(
    "help"                 => \$help,
    "file:s"               => \$file,
    "stratum"              => \$stratum,
    "readmod"              => \$readmod,
    "createspec"           => \$createspec,
    "getoplist"            => \$getoplist,
    "kprove"               => \$kprove,
    "postprocess"          => \$postprocess,
    "all"                  => \$all,
    "genincludes"          => \$genincludes,
    "checksanity"          => \$checksanity,
    "gitdiff"              => \$gitdiff,
    "diffwithstrata"       => \$diffwithstrata,
    "speconly"             => \$speconly,
    "gitadd"               => \$gitadd,
    "gitco"                => \$gitco,
    "getimm"               => \$getimm,
    "getimmdiff"           => \$getimmdiff,
    "getmem"               => \$getmem,
    "check_stoke"          => \$check_stoke,
    "prepare_concrete_imm" => \$prepare_concrete_imm,
    "check_stoke_imm"      => \$check_stoke_imm,
    "match_stoke"          => \$match_stoke,
    "match_stoke_imm"      => \$match_stoke_imm,
    "compareintel"         => \$compareintel,
    "getbvfs"              => \$getbvfs,
    "getregvariant"        => \$getregvariant,
    "nightlyrun"           => \$nightlyrun,
    "getz3formula"         => \$getz3formula,
    "z3prove"              => \$z3prove,
    "useuif"               => \$useuif,
    "compile"              => \$compile,
    "start:s"              => \$start,
    "single_thread"        => \$single_thread,
    "strata_path:s"        => \$strata_path,
    "instructions_path:s"  => \$instructions_path,
    "prefix:s"             => \$prefix,
) or die("Error in command line arguments\n");

##
my $sfp;
my $removeComment;
my $debugprint = 0;

if ( "" ne $compareintel ) {
    ## file names
    my $availfile = "docs/instruction_manuals/all.instrs";
    my $intelatt  = "docs/instruction_manuals/intel_att.txt";

    my $stratafile = "docs/relatedwork/strata/strata_supported.txt";
    my $stratavecimmfile =
      "docs/relatedwork/strata/stratum_vector_immediates.txt";
    my $mcsemafile = "docs/relatedwork/mcsema/amd64.txt";
    my $xedfile    = "docs/relatedwork/mcsema/xed.txt";
    my $acl2file   = "docs/relatedwork/acl2/supportedOPcodes.txt";
    my $stoke_strata_unsup_file =
      "docs/relatedwork/strata/strata_stoke_unsupported.txt";
    my $ungeneralized_memory =
      "docs/relatedwork/strata/ungeneralized_memory.txt";

    ## get intel <-> att
    my ( $intel2att_ref, $att2intel_ref ) =
      assocIntelATT( $intelatt, $debugprint );
    my %intel2att = %{$intel2att_ref};
    my %att2intel = %{$att2intel_ref};
    print(  " | Att/Intel Opcodes |"
          . scalar( keys %{att2intel} ) . "/"
          . scalar( keys %{intel2att} )
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
    print( "| ACL2 Support(Intel)| " . scalar( keys %acl2_intel ) . "|\n" );

    print "\n\n";

    # Strata Vs McSema
    utils::compareMaps(
        \%strata_supp_intel, \%mcsema_supp_intel,
        $debugprint,         "A: Strata B: McSema"
    );

    ## Strata vector immediates Vs McSema
    my ( $strata_vectorimms_att_ref, $strata_vectorimms_intel_ref ) =
      modelInstructions( $stratavecimmfile, $intelatt, "", 0 );
    utils::compareMaps( $strata_vectorimms_intel_ref, \%mcsema_supp_intel,
        $debugprint, "A: Strata Vector Imms B: McSema" );

    # Compare ACL2 Vs Strata
    utils::compareMaps( \%acl2_intel, \%strata_supp_intel, $debugprint,
        "A: ACL2 B: Strata" );

    # Compare ACL2 Vs McSema
    utils::compareMaps( \%acl2_intel, \%mcsema_supp_intel, $debugprint,
        "A: ACL2 B: McSema" );

    ## Strata/Stoke unsupported Vs McSema
    my ( $ss_att_ref, $ss_intel_ref ) =
      modelInstructions( $stoke_strata_unsup_file, $intelatt, "", 0 );
    utils::compareMaps( $ss_intel_ref, \%mcsema_supp_intel,
        $debugprint, "A: Strata/Stoke Unsupported B: McSema" );

    ## ngeneralized memory Vs McSema
    my ( $ug_att_ref, $ug_intel_ref ) =
      modelInstructions( $ungeneralized_memory, $intelatt, "", 0 );
    utils::compareMaps( $ug_intel_ref, \%mcsema_supp_intel,
        $debugprint, "A: UnGeneralized Memory B: McSema" );

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

######################################################
if ( "" ne $prepare_concrete_imm ) {
    my $specgen_setup = "~/Github/strata/stoke/bin/specgen_setup";
    if ( "" eq $prefix ) {
        $prefix = "check_stoke";
    }
    for my $line (@lines) {
        chomp $line;
        my $workdir = "imm_instructions/$line";
        print "\n\nPreparing workdir $workdir\n";
        execute( "mkdir -p $workdir", 1 );
        my $check_stoke_text = "$workdir/$prefix.txt";

        open( my $scfp, ">", $check_stoke_text )
          or die "cannot open: $!";
        for ( my $i = 0 ; $i < 256 ; $i++ ) {
            my $conc_instr = $line . "_" . $i;
            print $scfp $conc_instr . "\n";
            execute("$specgen_setup --workdir $workdir --opc $conc_instr");
        }
    }
    exit(0);
}

if ( "" ne $match_stoke_imm ) {
    my @thrds = utils::initThreads( scalar(@lines) );
    my $i     = 0;
    my $size  = scalar(@lines);
    for my $line (@lines) {
        chomp $line;
        $thrds[$i] = threads->create( \&threadop_match_stoke, $line );
        $i++;
    }

    for ( my $j = 0 ; $j < $size ; $j++ ) {
        $thrds[$j]->join();
    }
    exit(0);
}

sub threadop_match_stoke {
    my $line = shift @_;
    $line = utils::trim($line);

    print("\n\n Running Match Stoke on $line\n");
    my $workdir = "imm_instructions/$line";
    execute(
"$script --match_stoke --file $workdir/match_stoke.txt  1>$workdir/match_stoke.log 2>&1",
        1
    );

    # populate check_stoke
    open( my $csfp, ">", "$workdir/check_stoke.txt" )
      or die "cannot open: $!";

    # populate check_stoke with non equivalents
    my $neqs =
      utils::myGrep( "(opcode \w+)", "noanti", "$workdir/match_stoke.log" );
    for my $neq ( @{$neqs} ) {
        print $csfp $neq . "\n";
    }

    # populate check_stoke.txt with those whose circuit is absent
    print("\n Polutating $workdir/check_stoke.txt\n");
    open( my $msfp, "<", "$workdir/match_stoke.txt" )
      or die "cannot open: $!";
    my @mslines = <$msfp>;
    close $msfp;

    for my $line (@mslines) {
        chomp $line;
        if ( -e "$strata_path/$line.s" ) {

        }
        else {
            print $csfp $line . "\n";
        }
    }

    print "Equiv/Not Equiv/Not Found/But Equivalent (line )\n";
    my $metric1 =
      utils::myGrep( "^Equivalent", "noanti", "$workdir/match_stoke.log" );
    my $metric2 =
      utils::myGrep( "But Equivalent", "noanti", "$workdir/match_stoke.log" );
    my $metric3 =
      utils::myGrep( "not equivalent", "noanti", "$workdir/match_stoke.log" );
    my $metric4 =
      utils::myGrep( "does not", "noanti", "$workdir/match_stoke.log" );
    my $metric5 = -s "$workdir/check_stoke.txt";

    print "\n\n $line\n\teq: "
      . scalar( @{$metric1} ) . "\n\t"
      . "But eq: "
      . scalar( @{$metric2} ) . "\n\t"
      . "Not eq: "
      . scalar( @{$metric3} ) . "\n\t"
      . "Not present: "
      . scalar( @{$metric4} ) . "\n";

    if ( $metric5 == ( scalar( @{$metric3} ) + scalar( @{$metric4} ) ) ) {
        utils::failInfo("check stoke failed polulation: $line");
    }

    close $csfp;
    threads->exit();
    return;
}

if ( "" ne $match_stoke ) {
    my $specgen = "/home/sdasgup3/Github/strata/stoke/bin/specgen";
    for my $line (@lines) {
        chomp $line;
        execute( "$specgen compare --circuit_dir $strata_path --opcode $line",
            1 );
    }
    exit(0);
}

####################################################################

if ( "" ne $check_stoke_imm ) {
    for my $line (@lines) {
        chomp $line;
        print("\n\n Running $line\n");
        my $workdir = "imm_instructions/$line";
        execute(
"$script --check_stoke --file $workdir/check_stoke.txt --instructions_path $workdir/instructions 1>$workdir/check_stoke.log 2>&1",
            1
        );

    }
    exit(0);
}

if ( "" ne $check_stoke ) {
    my $cores_used = 6;
    my @thrds      = utils::initThreads( scalar(@lines) );
    my $i          = 0;
    my $remaining  = scalar(@lines);
    my $size       = scalar(@lines);

    for ( my $k = 0 ; $k < $size ; $k = $k + $cores_used ) {
        if ( $k + $cores_used - 1 < $size ) {

            utils::info("Firing $cores_used.");

            my $start = $i;
            for ( my $j = $i ; $j < $start + $cores_used ; $j++ ) {
                my $line = $lines[$i];
                chomp $line;

                if ( "" eq $single_thread ) {
                    $thrds[$i] =
                      threads->create( \&threadop_check_stoke, $line );
                }
                else {
                    threadop_check_stoke($line);
                }
                $i++;
            }

            if ( "" eq $single_thread ) {
                for ( my $j = $start ; $j < $i ; $j++ ) {
                    $thrds[$j]->join();
                }
            }
        }
        else {
            utils::info( "Firing Last " . ( $size - $i ) );
            my $start = $i;
            for ( my $j = $i ; $j < $size ; $j++ ) {
                my $line = $lines[$i];
                chomp $line;
                $thrds[$i] = threads->create( \&threadop_check_stoke, $line );
                $i++;
            }

            if ( "" eq $single_thread ) {
                for ( my $j = $start ; $j < $i ; $j++ ) {
                    $thrds[$j]->join();
                }
            }
        }

    }
    exit(0);
}

sub threadop_check_stoke {
    my $file = shift @_;
    $file = utils::trim($file);

    my $id = "";
    if ( "" eq $single_thread ) {
        $id = threads->tid();
        print "Thread $id start: $file\n";
    }

    if ( "" ne $instructions_path ) {
        $instantiated_instr_path = $instructions_path;
    }

    my $target = "$instantiated_instr_path/$file/$file.s";
    my $meta   = "$instantiated_instr_path/$file/$file.meta.json";
    open( my $fpt, "<", $meta ) or die "Can't open $meta: $!";
    my @linest = <$fpt>;
    close($fpt);

    my $def_in   = "";
    my $live_out = "";
    for my $line (@linest) {
        chomp $line;

        #print $line . "\n";
        if ( $line =~ m/"def_in":\s*(.*),/g ) {
            $def_in = $1;
            next;
        }
        if ( $line =~ m/"live_out":\s*(.*),/g ) {
            $live_out = $1;
            next;
        }
    }

    execute(
"$stoke_check_circuit --target $target --functions $functions_dir --testcases $testcases --def_in $def_in --live_out $live_out",
        1
    );

    if ( "" eq $single_thread ) {
        print "Thread $id done!: $file\n";
        threads->exit();
    }
    return;
}

## Find Register Variant for a reg/imm/mem instruction
if ( "" ne $getregvariant ) {
    my $goalfile = "docs/relatedwork/strata/initial_goal.instrs";
    my $intelatt = "docs/instruction_manuals/intel_att.txt";
    my $basefile = "docs/relatedwork/strata/Misc/base-instructions.txt";
    my ( $goal_att_ref, $goal_intel_ref ) =
      modelInstructions( $goalfile, $intelatt, "keep_instruction", 0 );
    my ( $base_att_ref, $base_intel_ref ) =
      modelInstructions( $basefile, $intelatt, "keep_instruction", 0 );

    my $regVarCount    = 0;
    my $immVarCount    = 0;
    my $memVarCount    = 0;
    my $immmemVarCount = 0;
    my $noExtendCount  = 0;
    my $extendCount    = 0;
    my $skipped        = 0;
    my $noMatchCount   = 0;
    my $matchCount     = 0;

    my $counter = 0;
    for my $line (@lines) {
        chomp $line;
        $counter++;

        my ( $regVar, $found, $imm_or_mem, $type ) =
          getRegVaraint( $line, $base_att_ref, $debugprint );

        #print "$regVar $found $imm_or_mem $type \n";

        if ( $imm_or_mem eq "register" ) {
            $regVarCount++;
        }
        elsif ( $imm_or_mem eq "imm" ) {
            $immVarCount++;
        }
        elsif ( $imm_or_mem eq "mem" ) {
            $memVarCount++;
        }
        elsif ( $imm_or_mem eq "imm_mem" ) {
            $immmemVarCount++;
        }

        if ( $type eq "skipped" ) {
            $skipped++;
            next;
        }
        elsif ( $type eq "no_extend" ) {
            $noExtendCount++;
            next;
        }
        elsif ( $type eq "extend" ) {
            $extendCount++;
            next;
        }
        elsif ( $type eq "match" ) {
            $matchCount++;
            next;
        }

        ( $regVar, $found, $imm_or_mem, $type ) =
          getRegVaraint( $line, $goal_att_ref, $debugprint );

        if ( $type eq "no_extend" ) {
            $noExtendCount++;
            next;
        }
        elsif ( $type eq "extend" ) {
            $extendCount++;
            next;
        }
        elsif ( $type eq "no_match" ) {
            print $line. "\n";
            $noMatchCount++;

        }
        elsif ( $type eq "match" ) {
            $matchCount++;
            next;
        }

    }

    if ( $counter !=
        ( $regVarCount + $immVarCount + $memVarCount + $immmemVarCount ) )
    {
        print $counter. "\n";
        utils::failInfo("Sanity Check 1 failed");
    }

    print
"| Total   | Register Only | Immediate Instructions | Memory Instructions | Both Imm and Memory |\n"
      . "|----------------------|-----|-----|-------|-------|\n" . "|"
      . $counter . "|"
      . $regVarCount . "|"
      . $immVarCount . "|"
      . $memVarCount . "|"
      . $immmemVarCount . "|\n\n";

    print
"| Total   | Exact Match | Generalize to Imm/Mem  w/ extension |  Generalize to Imm/Mem  w/o extension | Skipped | Unspported |\n"
      . "|----------------------|-----|-----|--|--|--|\n" . "|"
      . $counter . "|"
      . $matchCount . "|"
      . $extendCount . "|"
      . $noExtendCount . "|"
      . $skipped . "|"
      . $noMatchCount . "|\n\n";

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
