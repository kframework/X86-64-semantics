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

my $home = "";
BEGIN{
	$home = $ENV{"HOME"};
	unshift @INC, "$home/Github/binary-decompilation/x86-semantics/scripts/";
}
use utils;
use kutils;
use File::Find;

#use File::chdir;
use Cwd;
use threads;

# Using GetOPtions
my $file = "";
my $instantiated_instr_path =
  "$home/Github/strata-data/data-regs/instructions/";
my $script = "~/x86-semantics/scripts/process_spec.pl";
my $UTInstructionsPath        = "underTestInstructions/";

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
my $testcases_path       = "";
my $prepare_concrete_imm = "";
my $prepare_concrete_mem = "";
my $check_stoke_imm      = "";
my $check_stoke_mem      = "";
my $match_stoke_imm      = "";
my $prefix               = "";
my $testid               = "";
my $prepare_concrete     = "";
my $radare2_support      = "";
my $angr_support         = "";
my $workdir              = "";
my $opcode               = "";
my $update_tc            = "";
my $use_updated_tc       = "";
my $no_strata_handler    = "";
my $samereg              = "";

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
    "no_strata_handler"    => \$no_strata_handler,
    "prepare_concrete_imm" => \$prepare_concrete_imm,
    "prepare_concrete_mem" => \$prepare_concrete_mem,
    "prepare_concrete"     => \$prepare_concrete,
    "radare2_support"      => \$radare2_support,
    "angr_support"         => \$angr_support,
    "check_stoke_imm"      => \$check_stoke_imm,
    "check_stoke_mem"      => \$check_stoke_mem,
    "update_tc"            => \$update_tc,
    "use_updated_tc"       => \$use_updated_tc,
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
    "instructions_path:s"  => \$instructions_path,
    "testcases_path:s"     => \$testcases_path,
    "prefix:s"             => \$prefix,
    "testid:s"             => \$testid,
    "workdir:s"            => \$workdir,
    "opcode:s"             => \$opcode,
    "samereg"              => \$samereg,
) or die("Error in command line arguments\n");

##
my $sfp;
my $removeComment;
my $debugprint = 0;

if ( "" ne $compareintel ) {
    ## file names
    my $availfile = "docs/instruction_manuals/all.instrs";
    my $intelatt =
"$home/Github/strata-data/output-strata/instruction-summary/misc-documents/intel_att.txt";
#my $idealfile = "$home/Github/strata-data/output-strata/instruction-summary/clasification/all.txt";
    my $idealfile = "$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/k-semantics/current_support.txt";

    my $stratafile =
"$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/strata/strata_orig_supported.txt";
    my $currentfile =
"$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/k-semantics/current_support.txt";
    my $bapfile =
"$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/bap/baprunlog.txt";
    my $angrfile =
"$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/angrVex/support.txt";
    my $stratavecimmfile =
"$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/strata/Immediates/stratum_vector_immediates.txt";
    my $mcsemafile = "$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/mcsema/reportlist.txt";
#"$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/mcsema/amd64.txt";
    my $xedfile =
"$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/mcsema/xed.txt";
    my $acl2file = "$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/acl2/implemented.txt";
#"$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/acl2/supportedOPcodes.txt";
    my $r2file = "$home/Github/binary-decompilation/x86-semantics/docs/relatedwork/radare2/r2log.txt";
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

    ## Get the ideal supported instr
    my ( $ideal_supp_att_ref, $ideal_supp_intel_ref ) =
      modelInstructions( $idealfile, $intelatt, "", 0 );
    my %ideal_supp_att   = %{$ideal_supp_att_ref};
    my %ideal_supp_intel = %{$ideal_supp_intel_ref};
    print(  "| Ideal Support(att/intel)| "
          . scalar( keys %ideal_supp_att ) . "/"
          . scalar( keys %ideal_supp_intel )
          . "|\n" );

    ## Get the current supported instr
    my ( $curr_supp_att_ref, $curr_supp_intel_ref ) =
      modelInstructions( $currentfile, $intelatt, "", 0 );
    my %curr_supp_att   = %{$curr_supp_att_ref};
    my %curr_supp_intel = %{$curr_supp_intel_ref};
    #printMap(\%curr_supp_intel);
    print(  "| Current Support(att/intel)| "
          . scalar( keys %curr_supp_att ) . "/"
          . scalar( keys %curr_supp_intel )  
          . " \t[". scalar( keys %curr_supp_intel ) * 100 / scalar( keys %ideal_supp_intel ) ." %]"
          . "|\n" );
    #printMap(\%curr_supp_intel); 

    ## Get the bap supported instr
    my ( $bap_supp_att_ref, $bap_supp_intel_ref ) =
      modelInstructions( $bapfile, $intelatt, "", 0 );
    my %bap_supp_att   = %{$bap_supp_att_ref};
    my %bap_supp_intel = %{$bap_supp_intel_ref};
    print(  "| Bap Support(att/intel)| "
          . scalar( keys %bap_supp_att ) . "/"
          . scalar( keys %bap_supp_intel )
          . " \t[". scalar( keys %bap_supp_intel ) * 100 / scalar( keys %ideal_supp_intel ) ." %]"
          . "|\n" );

    ## Get the r2 supported instr
    my ( $r2_supp_att_ref, $r2_supp_intel_ref ) =
      modelInstructions( $r2file, $intelatt, "", 0 );
    my %r2_supp_att   = %{$r2_supp_att_ref};
    my %r2_supp_intel = %{$r2_supp_intel_ref};
    print(  "| Radar2 Support(att/intel)| "
          . scalar( keys %r2_supp_att ) . "/"
          . scalar( keys %r2_supp_intel )
          . " \t[". scalar( keys %r2_supp_intel ) * 100 / scalar( keys %ideal_supp_intel ) ." %]"
          . "|\n" );


    ## Get the angr supported instr
#    my ( $angr_supp_att_ref, $angr_supp_intel_ref ) =
#      modelInstructions( $angrfile, $intelatt, "", 0 );
#    my %angr_supp_att   = %{$angr_supp_att_ref};
#    my %angr_supp_intel = %{$angr_supp_intel_ref};
#    print(  "| Angr Support(att/intel)| "
#          . scalar( keys %angr_supp_att ) . "/"
#          . scalar( keys %angr_supp_intel )
#          . " \t[". scalar( keys %angr_supp_intel ) * 100 / scalar( keys %ideal_supp_intel ) ." %]"
#          . "|\n" );

    ## Get the strata supported instr
    my ( $strata_supp_att_ref, $strata_supp_intel_ref ) =
      modelInstructions( $stratafile, $intelatt, "", 0 );
    my %strata_supp_att   = %{$strata_supp_att_ref};
    my %strata_supp_intel = %{$strata_supp_intel_ref};
    print(  "| Strata Support(att/intel)| "
          . scalar( keys %strata_supp_att ) . "/"
          . scalar( keys %strata_supp_intel )
          . " \t[". scalar( keys %strata_supp_intel ) * 100 / scalar( keys %ideal_supp_intel ) ." %]"
          . "|\n" );

    ## Get the mcsema supported instr
#my $mcsema_supp_intel_ref =
#      assocateMcSemaXed( $mcsemafile, $xedfile, $debugprint );
    my ( $mcsema_supp_att_ref, $mcsema_supp_intel_ref ) =
      modelInstructions( $mcsemafile, $intelatt, "inIntel", 0 );
    my %mcsema_supp_att   = %{$mcsema_supp_att_ref};
    my %mcsema_supp_intel = %{$mcsema_supp_intel_ref};
    #printMap(\%mcsema_supp_intel);
    print(  "| McSema Support(Intel)| "
          . scalar( keys %mcsema_supp_att ) . "/"
          . scalar( keys %mcsema_supp_intel )
          . " \t[". scalar( keys %mcsema_supp_intel ) * 100 / scalar( keys %ideal_supp_intel ) ." %]"
          . "|\n" );

    ## Get the acl2 supported instr
    my $acl2_intel_ref =
      modelInstructions( $acl2file, $intelatt, "inIntel", $debugprint );
    my %acl2_intel = %{$acl2_intel_ref};
    print( "| ACL2 Support(Intel)| " 
        . scalar( keys %acl2_intel ) 
        . " \t[". scalar( keys %acl2_intel ) * 100 / scalar( keys %ideal_supp_intel ) ." %]"
        . "|\n" );

    print "\n\n";
    #printMap(\%acl2_intel); 

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
    execute("mkdir -p $UTInstructionsPath");
    createSingleFileDefn();
    execute("git status x86-instructions-semantics.k");
    execute(
"time  kompile x86-semantics.k --syntax-module X86-SYNTAX --main-module X86-SEMANTICS --debug -v --backend java -I ~/Github/llvm-verified-backend.old/ -I ~/Github/llvm-verified-backend.old/common/x86-config/",
        1
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

    my $baseInstrPath             = "baseInstructions/";
    my $derivedInstrPath          = "derivedInstructions/";
    my $registerInstructionsPath  = "registerInstructions/";
    my $immediateInstructionsPath = "immediateInstructions/";
    my $memoryInstructionsPath    = "memoryInstructions/";
    my $systemInstructionsPath    = "systemInstructions/";
    my $customInstructionsPath    = "customInstructions/";

    if ( "" ne $useuif ) {
        $baseInstrPath    = "instructions_with_uif/baseInstructions/";
        $derivedInstrPath = "instructions_with_uif/derivedInstructions/";
    }

    print("\tMerging UTInstructionsPath\n");
    find( \&mergeToSingleFile, $UTInstructionsPath );

    #print("\tMerging customInstructionsPath\n");
    #find( \&mergeToSingleFile, $customInstructionsPath );

    #print("\tMerging $registerInstructionsPath\n");
    #find( \&mergeToSingleFile, $registerInstructionsPath );
    #print("\tMerging $immediateInstructionsPath\n");
    #find( \&mergeToSingleFile, $immediateInstructionsPath );
    #print("\tMerging $memoryInstructionsPath\n");
    #find( \&mergeToSingleFile, $memoryInstructionsPath );

    #print("\tMerging $systemInstructionsPath\n");
    #find( \&mergeToSingleFile, $systemInstructionsPath );

    #print $sfp "endmodule";
    #    close($sfp);

    #    $singleFile = "test2.k";
    #    open( $sfp, ">", $singleFile ) or die "Can't open: $!";
    $removeComment = 1;

    #    print $sfp "requires \"x86-configuration.k\"" . "\n\n";
    #    print $sfp "module X86-DERIVED-INSTRUCTIONS-SEMANTICS" . "\n";
    #    print $sfp "  imports X86-CONFIGURATION" . "\n";

    #print("\tMerging $derivedInstrPath\n");
    #find( \&mergeToSingleFile, $derivedInstrPath );

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

if ( "" ne $prepare_concrete ) {
    my $specgen_setup = "~/Github/strata/stoke/bin/specgen_setup";
    if ( "" eq $workdir ) {
        utils::failInfo("Provide workdir arg");
        exit(0);
    }

    print "\n\nInstantiating  $opcode\n";
    execute("mkdir -p $workdir");
    my $switch_samereg = "";
    if ( "" ne $samereg ) {
        $switch_samereg = "--samereg";
    }
    execute( "$specgen_setup --workdir $workdir --opc $opcode $switch_samereg",
        1 );

    exit(0);
}

if ( "" ne $update_tc ) {
    if ( "" eq $opcode ) {
        utils::failInfo("opcode not provided");
    }
    if ( "" eq $instructions_path ) {
        utils::failInfo("instructions_path not provided");
    }
    if ( "" eq $testid ) {
        utils::failInfo("testid not provided");
    }
    my $target = "$instructions_path/$opcode/$opcode.s";
    open( my $fp, "<", $target ) or die "Can't open $target: $!";
    my @lines = <$fp>;
    close($fp);

    my $mem_operand = "";
    for my $line (@lines) {
        chomp $line;
        if ( $line =~ m/\((%.*)\)/g ) {
            $mem_operand = $1;
            next;
        }
    }
    my $testcases_path = "$instructions_path/../testcases.$testid.tc";
    kutils::mem_modify_testcases( $opcode, $mem_operand, $testcases_path );

    exit(0);
}

if ( "" ne $prepare_concrete_imm ) {
    my $specgen_setup = "~/Github/strata/stoke/bin/specgen_setup";
    if ( "" eq $prefix ) {
        $prefix = "check_stoke";
    }
    my $line = $opcode;

    #for my $line (@lines) {
    chomp $line;
    my $workdir = "concrete_instances/immediate-variants/$line";
    print "\n\nPreparing workdir $workdir\n";
    execute( "mkdir -p $workdir", 1 );

    #my $check_stoke_text = "$workdir/$prefix.txt";

    #open( my $scfp, ">", $check_stoke_text )
    #  or die "cannot open: $!";
    for ( my $i = 0 ; $i < 256 ; $i++ ) {
        my $conc_instr = $line . "_" . $i;

        #print $scfp $conc_instr . "\n";
        execute("$specgen_setup --workdir $workdir --opc $conc_instr");
    }

    #}
    exit(0);
}

if ( "" ne $prepare_concrete_mem ) {
    my $specgen_setup = "~/Github/strata/stoke/bin/specgen_setup";
    if ( "" eq $prefix ) {
        $prefix = "check_stoke";
    }
    my $line = $opcode;

    #for my $line (@lines) {
    chomp $line;
    my $workdir = "concrete_instances/memory-variants/$line";
    print "\n\nPreparing workdir $workdir\n";
    execute( "mkdir -p $workdir", 1 );

    #my $check_stoke_text = "$workdir/$prefix.txt";

    #open( my $scfp, ">", $check_stoke_text )
    #  or die "cannot open: $!";
    for ( my $i = 0 ; $i < 256 ; $i++ ) {
        my $conc_instr = $line . "_" . $i;

        #print $scfp $conc_instr . "\n";
        execute("$specgen_setup --workdir $workdir --opc $conc_instr");
    }

    #}
    exit(0);
}

####################################################################
####################################################################
####################################################################

open( my $fp, "<", $file ) or die "cannot open $file: $!";
my @lines = <$fp>;

######################################################

####################################################################
if ( "" ne $check_stoke_imm or "" ne $check_stoke_mem ) {
    my $start = time;

    if ( "" eq $testid ) {
        utils::failInfo("You may like to provide testid ");
        exit(0);
    }

    my $basedir = "concrete_instances/immediate-variants/";
    if ( "" ne $check_stoke_mem ) {
        $basedir = "concrete_instances/memory-variants";
    }

    for my $line (@lines) {
        chomp $line;
        print("\n\n Running $line\n");
        my $workdir         = "$basedir/$line";
        my $check_stoke_txt = "$workdir/check_stoke.txt";
        my $check_stoke_log = "$workdir/check_stoke.log";
        if ( "" ne $testid ) {
            $check_stoke_txt = "$workdir/check_stoke.$testid.txt";
            $check_stoke_log = "$workdir/check_stoke.$testid.log";
        }
        if ( "" ne $check_stoke_mem ) {
            execute(
"$script --check_stoke --file $check_stoke_txt --instructions_path $workdir/instructions --update_tc 1>$check_stoke_log 2>&1",
                1
            );
        }
        else {
            execute(
"$script --check_stoke --file $check_stoke_txt --instructions_path $workdir/instructions --testid $testid  1>$check_stoke_log 2>&1",
                1
            );
        }

    }

    my $duration = time - $start;
    print "Execution time: $duration s\n";
    exit(0);
}

if ( "" ne $check_stoke ) {
    if ( "" eq $testid ) {
        utils::failInfo("You may like to provide testid ");
        exit(0);
    }

    my $cores_used = 30;
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

    my $start = time;

    $file = utils::trim($file);

    my $id = "";
    if ( "" eq $single_thread ) {
        $id = threads->tid();
        print "Thread $id start: $file\n";
    }

    if ( "" eq $instructions_path ) {
        utils::failInfo("instructions_path not provided");
    }

    my $target = "$instructions_path/$file/$file.s";
    my $meta   = "$instructions_path/$file/$file.meta.json";
    open( my $fpt, "<", $meta ) or die "Can't open $meta: $!";
    my @linest = <$fpt>;
    close($fpt);

    my $def_in          = "";
    my $live_out        = "";
    my $maybe_undef_out = "";
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
        if ( $line =~ m/"maybe_undef_out":\s*(.*),/g ) {
            $maybe_undef_out = $1;
            next;
        }
    }

    my $testcases_path = $kutils::testcases;
    if ( "" ne $use_updated_tc ) {
        $testcases_path = "$instructions_path/../testcases.$testid.tc";
    }

    my $strata_path_switch = "--strata_path $kutils::strata_path";
    if ( "" ne $no_strata_handler ) {
        $strata_path_switch = "";
    }
    execute(
"timeout 30m  $kutils::stoke_check_circuit $strata_path_switch --target $target --functions $kutils::functions_dir --testcases $testcases_path --def_in $def_in --live_out $live_out --maybe_undef_out $maybe_undef_out",
        1
    );
    my $duration = time - $start;
    print "Execution time $file: $duration s\n";

    if ( "" eq $single_thread ) {
        print "Thread $id done!: $file\n";
        threads->exit();
    }

    return;
}

################ Match Stoke ########################

if ( "" ne $match_stoke_imm ) {
    my $start = time;

    if ( "" eq $testid ) {
        utils::warnInfo("You may like to provide testid");
    }

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
    my $duration = time - $start;
    print "Execution time: $duration s\n";
    exit(0);
}

sub threadop_match_stoke {
    my $line = shift @_;
    $line = utils::trim($line);

    print("\n\n Running Match Stoke on $line\n");

    #my $workdir = "imm_instructions/$line";
    my $workdir = "concrete_instances/immediate-variants/$line";

    my $match_stoke_txt = "$workdir/match_stoke.txt";
    my $match_stoke_log = "$workdir/match_stoke.log";
    my $check_stoke_txt = "$workdir/check_stoke.txt";
    if ( "" ne $testid ) {
        $match_stoke_txt = "$workdir/match_stoke.$testid.txt";
        $match_stoke_log = "$workdir/match_stoke.$testid.log";
        $check_stoke_txt = "$workdir/check_stoke.$testid.txt";
    }

    execute(
"$script --match_stoke --file $match_stoke_txt  1>$match_stoke_log 2>&1",
        1
    );

    # populate check_stoke
    open( my $csfp, ">", "$check_stoke_txt" )
      or die "cannot open: $!";

    # populate check_stoke with non equivalents
    my $neqs =
      utils::myGrep( "\\(opcode \\w+\\)", "noanti", "$match_stoke_log" );
    for my $neq ( @{$neqs} ) {
        chomp $neq;
        if ( $neq =~ m/\(opcode (\w+)\)/g ) {
            print $csfp $1 . "\n";
        }
    }

    # populate check_stoke.txt with those whose circuit is absent
    print("\n\n Populating $check_stoke_txt\n");
    open( my $msfp, "<", "$match_stoke_txt" )
      or die "cannot open: $!";
    my @mslines = <$msfp>;
    close $msfp;

    for my $line (@mslines) {
        chomp $line;
        if ( -e "$kutils::strata_path/$line.s" ) {

        }
        else {
            print $csfp $line . "\n";
        }
    }
    close $csfp;

    #print "Equiv/Not Equiv/Not Found/But Equivalent (line )\n";
    my $metric1 = utils::myGrep( "^Equivalent", "noanti", "$match_stoke_log" );
    my $metric2 =
      utils::myGrep( "But Equivalent", "noanti", "$match_stoke_log" );
    my $metric3 =
      utils::myGrep( "not equivalent", "noanti", "$match_stoke_log" );
    my $metric4 = utils::myGrep( "does not", "noanti", "$match_stoke_log" );
    my $metric5 = utils::numlines("$check_stoke_txt");

    print "$line\n\teq: "
      . scalar( @{$metric1} ) . "\n\t"
      . "But eq($line): "
      . scalar( @{$metric2} ) . "\n\t"
      . "Not eq($line): "
      . scalar( @{$metric3} ) . "\n\t"
      . "Not present: "
      . scalar( @{$metric4} ) . "\n\t"
      . "Size check_stoke: "
      . $metric5 . "\n";

    if ( $metric5 !=
        ( scalar( @{$metric2} ) + ( @{$metric3} ) + scalar( @{$metric4} ) ) )
    {
        utils::failInfo("check stoke failed polulation: $line");
    }

    threads->exit();
    return;
}

if ( "" ne $match_stoke ) {
    my $specgen = "$home/Github/strata/stoke/bin/specgen";
    for my $line (@lines) {
        chomp $line;
        execute(
"$specgen compare --circuit_dir $kutils::strata_path --opcode $line",
            1
        );
    }
    exit(0);
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

        kutils::createSpecFile( $opcode, $kutils::strata_path, $specdir,
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

        kutils::createSpecFile( $opcode, $kutils::strata_path, $specdir,
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
      kutils::checkSupported( $opcode, $kutils::strata_path,
        $derivedInstructions, $debugprint );
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
    if ( "" eq $kutils::trata_path ) {
        info(" Need-- strata_path ");
        exit(0);
    }

    #info(" Using strata_path = $strata_path ");
    for my $opcode (@lines) {
        chomp $opcode;
        my ( $depth, $count ) =
          kutils::find_stratum( $opcode, $kutils::strata_path, $debugprint );
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
        my $opList =
          kutils::getOpList( $opcode, $kutils::trata_path, $debugprint );
        print $opList;
    }
    exit(0);
}

################## radare2_support ########################################
if ( "" ne $radare2_support ) {
    my $specgen_setup = "~/Github/strata/stoke/bin/specgen_setup";

    for my $line (@lines) {
        chomp $line;
        my $instance = "./instructions/$line/$line.s";
        my $output   = "./instructions/$line/$line.o";
        print "\n\nESIL for $line\n";

        #Display the instructions
        execute("cat $instance");

        # Assemble
        execute("as $instance -o $output");

        # Run r2
        execute( "r2 -a x64 -b 64 -qc   'e asm.esil = true; pd 2'   $output ",
            1 );

    }
    exit(0);
}

if ( "" ne $angr_support ) {

    my $start = time;
    my @thrds = utils::initThreads( scalar(@lines) );
    my $i     = 0;
    my $size  = scalar(@lines);

    for my $line (@lines) {
        chomp $line;
        $thrds[$i] = threads->create( \&angr_support_task, $line );
        $i++;
    }

    for ( my $j = 0 ; $j < $size ; $j++ ) {
        $thrds[$j]->join();
    }

    my $duration = time - $start;
    print "Execution time: $duration s\n";
    exit(0);
}

sub angr_support_task {
    my $line     = shift @_;
    my $instance = "$line.s";
    my $outbin   = "$line.exe";
    my $pyfile   = "$line.gen.vex.py";
    my $outfile  = "$line.vex";
    open( $sfp, ">", $pyfile ) or die "Can't open $pyfile: $!";

    print $sfp "import angr" . "\n"
      . "proj = angr.Project('$outbin')" . "\n"
      . "print proj.arch" . "\n"
      . "print proj.entry" . "\n"
      . "print proj.filename" . "\n"
      . "irsb = proj.factory.block(proj.entry).vex" . "\n"
      . "irsb.pp()";

    close $sfp;

    print "\n\nVEX for $line\n";

    #Display the instructions
#execute("cat $instance 1 >$outfile 2>&1");

    # Assemble
    #execute("as $instance -o $output");

    # Run angr
#execute( "python $pyfile 1>$outfile 2>&1", 1 );
}
