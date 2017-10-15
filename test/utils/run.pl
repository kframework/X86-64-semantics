#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;

#Global constants
my $home        = $ENV{'HOME'};
my $MCSEMA_HOME = "";
my $ALLIN_HOME  = "${home}/Github/binary-decompilation/";
my $DWARF_TYPE_READER =
  "${home}/Github/dwarf-type-reader/build/bin/dwarf-type-reader";
my $AUGMENT_TYPE =
"${home}/Github/binary-decompilation/tools/augment_ida_type/augment_ida_types.py";
my $CC          = "clang-3.8";
my $CXX         = "clang++-3.8";
my $OPT         = "opt";
my $LLVMDIS     = "llvm-dis";
my $LLVMAS      = "llvm-as";
my $LLVMAS35    = "${home}/Install/llvm-3.5.0.release.install/bin/llvm-as";
my $LLC         = "llc";
my $outdir      = "Output/";
my $CC_OPTIONS  = " -g ";
my $CXX_OPTIONS = " -g -std=c++11 ";
my $CC_35       = "${home}/Install/llvm-3.5.0.release.install/bin/clang-3.5";

#my $libnone=$ENV{'LIBNONE'};
my $libnone     = "";
my $BC2ALLVM    = "bc2allvm";
my $ALLTOGETHER = "alltogether";
my $ALLEY       = "alley";
my $IDA         = `which idal64`;
chomp $IDA;

#"-fomit-frame-pointer";
#my $redirect = " &> ";

# Customizable inputs
my $help        = "";
my $compiler    = "";
my $suffix      = "clang";
my $arch        = "64";
my $file        = "";
my $skip_mcsema = "";
my $print       = "";
my $map         = "";
my $entry       = "";
my $incdir      = "";
my $cfg         = "";
my $extract_bc  = "";
my $master      = "";
my $runpass     = "";
my $stdin_args  = "";
my $cmd_args    = "";
my $driver      = "";
my $allin_home  = "";
my $testallexe  = "";

GetOptions(
    "help"         => \$help,
    "print"        => \$print,
    "skip_mcsema"  => \$skip_mcsema,
    "cfg"          => \$cfg,
    "extract_bc"   => \$extract_bc,
    "master"       => \$master,
    "runpass"      => \$runpass,
    "testallexe"   => \$testallexe,
    "compiler:s"   => \$compiler,
    "home:s"       => \$MCSEMA_HOME,
    "arch:s"       => \$arch,
    "map:s"        => \$map,
    "file:s"       => \$file,
    "suffix:s"     => \$suffix,
    "entry:s"      => \$entry,
    "incdir:s"     => \$incdir,
    "stdin_args:s" => \$stdin_args,
    "driver:s"     => \$driver,
    "cmd_args:s"   => \$cmd_args,
    "allin_home:s" => \$allin_home,
) or die("Error in command line arguments\n");

if ($help) {
    print(
"~/Github/binary-decompilation/test/utils/run.pl -home ~/Github/mcsema_new_reg_assign/build/ -file test_28.c -extract_bc -master -entry main -print -incdir ~/Github/binary-decompilation/test/utils/ \n"
    );
    exit(1);
}

if ( "" eq $file ) {
    die "ERROR: Provide source file name\n";
}

#Derived paths
my $BIN_DESCEND_PATH = "${MCSEMA_HOME}/mc-sema/bin_descend";
my $CFG_TO_BC_PATH   = "${MCSEMA_HOME}/mc-sema/bitcode_from_cfg/";
my $GCC_ARCH         = "";
my $BIN_ARCH         = "";
my $CFGBC_ARCH       = "";
my $loadso           = "${allin_home}/lib/LLVMstack_deconstructor.so";
my $OPTSWITCH        = "-constprop -stack-decons -dce  -early-cse-memssa";

#my $OPTSWITCH="-stack-decons -mem2reg -dce  -early-cse-memssa";
#my $OPTSWITCH="-stack-decons -debug-only=\"stack_deconstructor\"";

if ( $map ne "" ) {
    $map = "--std-defs " . $map . " ";
}

if ( $arch eq "32" ) {
    $GCC_ARCH   = "-m32";
    $BIN_ARCH   = "-march=x86";
    $CFGBC_ARCH = "-mtriple=i686-pc-linux-gnu";
}
else {
    $GCC_ARCH   = "-m64";
    $BIN_ARCH   = "-march=x86-64";
    $CFGBC_ARCH = "-mtriple=x86_64-unknown-linux-gnu";
}

my $cfgext = ".ida";

my ( $basename, $ext ) = split_filename($file);

my $include_regstate = "";
if ( ${driver} ne "" ) {
    $include_regstate = "-I${MCSEMA_HOME}/../mcsema/Arch/X86/Runtime/";
}

### Drivers
if ( "" ne $extract_bc ) {
    extract_bc_from_cfg();
    generate_linked_binary(
        "${outdir}${basename}.${suffix}.bc",
        "${outdir}${basename}.${suffix}.lifted.exe"
    );
    if ( -e "${outdir}${basename}.${suffix}.native" ) {
        run_compare(
            "${outdir}${basename}.${suffix}.lifted.exe",
            "${outdir}${basename}.${suffix}.native",
            "Native"
        );
    }
    cleanup();
    exit;
}

if ( "" ne $runpass ) {
    run_custom_pass();
    exit;
}

if ( "" ne $testallexe ) {
    generate_test_allexe();
    exit;
}

if ( "" ne $cfg ) {
    generate_binary_from_source();
    generate_cfg();
    #update_cfg();
}

exit;

# Functions
sub generate_binary_from_source {
    info("Generate source binary");
    execute(
"rm -rf ${outdir}${basename}.${suffix}.o ${outdir}${basename}.${suffix}.objdump"
    );
    if ( "asm" eq $ext ) {
        execute("nasm -f elf64 -o ${outdir}${basename}.${suffix}.o $file ;");
    }
    if ( "c" eq $ext ) {
        execute(
"${CC}  -O0 ${CC_OPTIONS}  $file ${GCC_ARCH}  -c   -o ${outdir}${basename}.${suffix}.o"
        );
        ## Create native binary for comparision
        execute(
"${CXX}  ${include_regstate} -O0 ${CXX_OPTIONS} ${CC_OPTIONS}  ${GCC_ARCH}  ${outdir}${basename}.${suffix}.o ${driver}  -o ${outdir}${basename}.${suffix}.native"
        );
    }
    if ( "cpp" eq $ext ) {
        execute(
"${CXX} -O0 ${CC_OPTIONS}  $file ${GCC_ARCH}  -c   -o ${outdir}${basename}.${suffix}.o"
        );
        ## Create native binary for comparision
        execute(
"${CXX}  -O0  ${include_regstate}  ${CXX_OPTIONS} ${CC_OPTIONS}  ${GCC_ARCH}  ${outdir}${basename}.${suffix}.o ${driver}  -o ${outdir}${basename}.${suffix}.native"
        );
    }
    if ( "o" eq $ext ) {
        execute("cp  $file  ${outdir}${basename}.${suffix}.o");
    }
    if ( "ll" eq $ext ) {
        execute(
"${CXX} -O0 ${CC_OPTIONS}  $file ${GCC_ARCH}  -c   -o ${outdir}${basename}.${suffix}.o"
        );
    }
    execute(
"objdump -d ${outdir}${basename}.${suffix}.o 1>${outdir}${basename}.${suffix}.objdump 2>&1"
    );
}

sub generate_linked_binary {
    info("Generate lifted binary");
    my $inputbc   = shift @_;
    my $outputexe = shift @_;

    execute("rm -rf ${outputexe}");

    if ( "" eq $master ) {
        execute(
"${CC} -O3 ${GCC_ARCH} -I${incdir} ${driver} $inputbc ${incdir}/ELF_64_linux.ll ${libnone}  -o $outputexe"
        );
    }
    else {
        execute(
"${CXX}  ${CXX_OPTIONS} ${GCC_ARCH}  -O3 ${include_regstate}  $inputbc ${driver} ${MCSEMA_HOME}/lib/libmcsema_rt64.a  ${libnone}  -o $outputexe"
        );
    }
}

sub generate_cfg {
    info("Generate cfg [$cfgext]");

    execute(
"rm -rf ${outdir}${basename}.${suffix}.i64 ${outdir}${basename}.${suffix}${cfgext}.cfg ${outdir}${basename}.${suffix}${cfgext}.log ${outdir}${basename}.${suffix}${cfgext}.tool.log"
    );

    if ( "" eq $master ) {
        execute(
"idal64 -B \"-S${BIN_DESCEND_PATH}/get_cfg.py --std-defs ${map} --batch --entry-symbol ${entry} --output ${outdir}${basename}.${suffix}${cfgext}.cfg --debug --debug_output ${outdir}${basename}.${suffix}.ida.log  --stack-vars\" -L${outdir}${basename}.${suffix}.ida.tool.log  ${outdir}${basename}.${suffix}.o "
        );
    }
    else {
        execute(
"$MCSEMA_HOME/bin/mcsema-disass --disassembler ${IDA} ${map} --arch amd64 --os linux --entrypoint ${entry} --binary  ${outdir}${basename}.${suffix}.o --output  ${outdir}${basename}.${suffix}${cfgext}.cfg --log_file ${outdir}${basename}.${suffix}.ida.log"
        );
    }
}

sub update_cfg {

    info("Generate debug Types");
    execute("${DWARF_TYPE_READER} ${outdir}${basename}.${suffix}.o");

    #execute("${DWARF_TYPE_READER} --debug ${outdir}${basename}.${suffix}.o");
    execute(
"${AUGMENT_TYPE}  ${outdir}${basename}.${suffix}.o.debuginfo ${outdir}${basename}.${suffix}${cfgext}.cfg"
    );

}

###  Generate BC from CFG
sub extract_bc_from_cfg {
    info("Running cfg to bc");
    if ( "" ne $skip_mcsema ) {
        return;
    }

    if ( -e "${outdir}${basename}.${suffix}${cfgext}.cfg" ) {
        execute(
"rm -rf ${outdir}${basename}.${suffix}.bc ${outdir}${basename}.${suffix}.opt.bc ${outdir}${basename}.${suffix}.ll ${outdir}${basename}.${suffix}.opt.ll"
        );

        if ( "" eq $master ) {
            execute(
"${CFG_TO_BC_PATH}/cfg_to_bc ${CFGBC_ARCH}  -i ${outdir}${basename}.${suffix}${cfgext}.cfg  -o ${outdir}${basename}.${suffix}.bc  -entrypoint=${entry} 1> ${outdir}${basename}.${suffix}.cfg2bc.log 2>&1"
            );
        }
        else {
            execute(
"$MCSEMA_HOME/bin/mcsema-lift --arch amd64 --os linux --entrypoint ${entry} --cfg ${outdir}${basename}.${suffix}${cfgext}.cfg --output ${outdir}${basename}.${suffix}.bc  1> ${outdir}${basename}.${suffix}.cfg2bc.log 2>&1"
            );
        }

#execute("${OPT} -dce    ${outdir}${basename}.${suffix}.bc  -o=${outdir}${basename}.${suffix}.opt.bc");
#execute("${LLVMDIS}   ${outdir}${basename}.${suffix}.bc -o=${outdir}${basename}.${suffix}.ll");
#execute("${LLVMDIS}   ${outdir}${basename}.${suffix}.opt.bc -o=${outdir}${basename}.${suffix}.opt.ll");
    }
    else {
        print "CFG Missing : ${outdir}${basename}.${suffix}${cfgext}.cfg\n\n";
        exit(1);
    }
}

sub run_compare {
    my $exe_1 = shift @_;
    my $exe_2 = shift @_;
    my $tag   = shift @_;

    info("Run N Compare");
    execute(
"echo ${stdin_args} | $exe_1 ${cmd_args} 1>${outdir}after.trans.out 2>&1"
    );
    execute(
"echo ${stdin_args} | $exe_2 ${cmd_args} 1>${outdir}before.trans.out 2>&1"
    );

    if ( 0 ==
        compare( "${outdir}before.trans.out", "${outdir}after.trans.out" ) )
    {
        passInfo("${basename} $tag Output Passed");
        execute("rm -rf ${outdir}after.trans.out");
    }
    else {
        failInfo("\t${basename}: $tag Output Failed\n");
        execute("diff ${outdir}before.trans.out ${outdir}after.trans.out");
    }
}

sub cleanup {
    info("Cleanup");
    # Clean Up
    execute("rm -rf  ${outdir}${basename}.${suffix}.lifted.o");
    execute("rm -rf  ${outdir}${basename}.${suffix}.o");
    execute("rm -rf  ${outdir}${basename}.${suffix}.bc");
    execute("rm -rf  ${outdir}${basename}.${suffix}.opt.bc");
}

# Utilities
sub execute {
    my $args = shift @_;
    if ( "" ne $print ) {
        print "$args \n";
    }
    system("$args");
}

sub info {
    my $args = shift @_;
    system("echo  \e[4m\e[1m\e[34m$args\e[0m");
}

sub passInfo {
    my $args = shift @_;
    system("echo  \e[4m\e[1m\e[92m$args\e[0m");
}

sub failInfo {
    my $args = shift @_;
    system("echo  \e[4m\e[1m\e[91m$args\e[0m");
}


sub display {
    my $args = shift @_;
    print "\t$args \n";
}

sub split_filename {
    my $arg = shift @_;

    if ( "" eq $arg ) {
        return ( "", "" );
    }
    my @components = split( /\//, ${arg} );
    my $filename = $components[ @components - 1 ];
    @components = split( /\./, ${filename} );
    my $file = $components[0];
    my $ext  = $components[1];
    return ( $file, $ext );
}

# Add all the variables we wanted to dump for inspect
sub printall {
    print "\n\n";
    print "\n\n";
}

### Run my passes
sub run_custom_pass {
    print("\nRunning custom passes\n");

    execute(
"rm -rf ${outdir}${basename}.${suffix}.trans.bc ${outdir}${basename}.${suffix}.trans.opt.bc ${outdir}${basename}.${suffix}.trans.ll ${outdir}${basename}.${suffix}.trans.opt.ll"
    );

    ## Finding entryfunc called by the inline asm driver
    my $entryfunc = "";
    if ( -e "${outdir}${basename}.${suffix}.cfg2bc.log" ) {
        open( my $fp, "<", "${outdir}${basename}.${suffix}.cfg2bc.log" )
          or die "cannot open ${outdir}${basename}.${suffix}.cfg2bc.log: $!";
        my @lines = <$fp>;
        close($fp);
        foreach my $line (@lines) {
            chomp($line);
            if ( $line =~ m/${entry} is implemented by (.*)/ ) {
                $entryfunc = $1;
            }
        }
    }
    else {
        print
"Missing : ${outdir}${basename}.${suffix}.cfg2bc.log (Required for extracting the entry function)\n\n";
        exit(1);
    }

    if ( "" eq $entryfunc ) {
        print "Could not extract entry function\n\n";
        exit(1);
    }

    execute(
"${OPT} -load=${loadso} ${OPTSWITCH} -mcsema_main ${entryfunc} ${outdir}${basename}.${suffix}.ll  -o ${outdir}${basename}.${suffix}.trans.bc  2>  ${outdir}${basename}.${suffix}.pass.log"
    );

#${ALLIN} ${outdir}${basename}.${ext}.ll -o ${outdir}${basename}.${ext}.trans.bc 2>  ${outdir}${basename}.${ext}.pass.log
    execute(
"${OPT} -O3  ${outdir}${basename}.${suffix}.trans.bc -o=${outdir}${basename}.${suffix}.trans.opt.bc"
    );
    execute(
"${LLVMDIS} ${outdir}${basename}.${suffix}.trans.bc -o ${outdir}${basename}.${suffix}.trans.ll"
    );
    execute(
"${LLVMDIS} ${outdir}${basename}.${suffix}.trans.opt.bc -o ${outdir}${basename}.${suffix}.trans.opt.ll"
    );

    print("\nRunning checks on pass \n");
    if (
        compare(
            "${outdir}${basename}.${suffix}.pass.log",
            "${outdir}${basename}.${suffix}.pass.log.gold"
        ) == 0
      )
    {
        print("\t${basename}: Transformations Passed\n");
        execute("rm -rf ${outdir}${basename}.${suffix}.pass.log");
    }
    else {
        print("\t${basename}: Transformations Failed\n");
        execute(
"diff ${outdir}${basename}.${suffix}.pass.log ${outdir}${basename}.${suffix}.pass.log.gold"
        );
    }

    ## Run and check output between before and after analysis
    generate_linked_binary(
        "${outdir}${basename}.${suffix}.trans.opt.bc",
        "${outdir}${basename}.${suffix}.trans.lifted.exe"
    );
    run_compare(
        "${outdir}${basename}.${suffix}.trans.lifted.exe",
        "${outdir}${basename}.${suffix}.lifted.exe",
        "Native"
    );
}

sub generate_test_allexe {
    print("\nGenerating Allexe \n");
    ## Generate allexe's
    execute("rm -rf 	./${outdir}*.allexe");
    my $driverbc = "";
    if ( "" ne $driver ) {
        execute(
            "${CC} -I${incdir} -emit-llvm -c	$driver -o  ${outdir}driver_64.bc"
        );
        $driverbc = "${outdir}driver_64.bc";
    }
    execute("${LLVMAS} ${incdir}/ELF_64_linux.ll  -o ${outdir}ELF_64_linux.bc");
    execute(
"${BC2ALLVM}  $driverbc ${outdir}${basename}.${suffix}.trans.bc ${outdir}/ELF_64_linux.bc  -o ${outdir}${basename}.${suffix}.trans.allexe"
    );
    execute(
"${ALLTOGETHER} -disable-opt ${outdir}${basename}.${suffix}.trans.allexe -o ${outdir}${basename}.${suffix}.trans.merged.allexe 1>${outdir}alltogether.log 2>&1"
    );

    ## Run and check output of allexe obtained from IR after analysis
    run_compare(
"${ALLEY} --force-static  ${outdir}${basename}.${suffix}.trans.merged.allexe",
        "${outdir}${basename}.${suffix}.lifted.exe", "Allexe"
    );
}
