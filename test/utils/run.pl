#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

use lib qw( /home/sdasgup3/Github/binary-decompilation/test/utils/ );
use utils;

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
my $LLVMAS      = "llvm-as";
my $LLVMAS35    = "${home}/Install/llvm-3.5.0.release.install/bin/llvm-as";
my $LLC         = "llc";
my $outdir      = "Output/";
my $CC_OPTIONS  = " -g ";
my $CXX_OPTIONS = " -g -std=c++11 ";
my $CC_35       = "${home}/Install/llvm-3.5.0.release.install/bin/clang-3.5";
my $libnone     = "";
my $BC2ALLVM    = "bc2allvm";
my $ALLTOGETHER = "alltogether";
my $ALLEY       = "alley";
my $IDA         = `which idal64`;
my $cfgext      = ".ida";
chomp $IDA;

#"-fomit-frame-pointer";
#my $redirect = " &> ";

# Customizable inputs
my $help            = "";
my $suffix          = "clang";
my $arch            = "64";
my $file            = "";
my $skip_mcsema     = "";
my $print           = "";
my $map             = "";
my $entry           = "";
my $incdir          = "";
my $gencfg          = "";
my $genbin          = "";
my $extract_bc      = "";
my $master          = "";
my $runpass         = "";
my $stdin_args      = "";
my $cmd_args        = "";
my $driver          = "";
my $allin_home      = "";
my $testallexe      = "";
my $skip_runcompare = "";
my $run_compare     = "";
my $compile_bc      = "";
my $cleanup         = "";

GetOptions(
    "help"            => \$help,
    "print"           => \$print,
    "skip_runcompare" => \$skip_runcompare,
    "skip_mcsema"     => \$skip_mcsema,
    "gencfg"          => \$gencfg,
    "genbin"          => \$genbin,
    "extract_bc"      => \$extract_bc,
    "master"          => \$master,
    "runpass"         => \$runpass,
    "compile_bc"      => \$compile_bc,
    "run_compare"     => \$run_compare,
    "cleanup"         => \$cleanup,
    "testallexe"      => \$testallexe,
    "home:s"          => \$MCSEMA_HOME,
    "arch:s"          => \$arch,
    "map:s"           => \$map,
    "file:s"          => \$file,
    "suffix:s"        => \$suffix,
    "entry:s"         => \$entry,
    "incdir:s"        => \$incdir,
    "stdin_args:s"    => \$stdin_args,
    "driver:s"        => \$driver,
    "cmd_args:s"      => \$cmd_args,
    "allin_home:s"    => \$allin_home,
    "outdir:s"        => \$outdir,
) or die("Error in command line arguments\n");

if ($help) {
    print("");
    exit(1);
}

my ( $basename, $ext ) = utils::split_filename($file);
if ( "" ne $cleanup ) {
    utils::cleanup( $outdir, $basename, $suffix );
    exit(0);
}

if ( "" eq $file || "" eq $MCSEMA_HOME ) {
    die "ERROR: Provide source file name or MCSEMA_HOME\n";
}

#Derived paths
my $loadso    = "${allin_home}/lib/LLVMstack_deconstructor.so";
my $OPTSWITCH = "-constprop -stack-decons -dce  -early-cse-memssa";
my $LLVMDIS   = "${MCSEMA_HOME}/build/llvm/bin/llvm-dis";
if ( $map ne "" ) {
    $map = "--std-defs " . $map . " ";
}
my $include_regstate = "";
if ( ${driver} ne "" ) {
    $include_regstate = "-I${MCSEMA_HOME}/mcsema/Arch/X86/Runtime/";
}

### Drivers
if ( "" ne $genbin ) {
    utils::generate_binary_from_source(
        $outdir, $basename,   $suffix, $ext,         $file,
        $CC,     $CC_OPTIONS, $CXX,    $CXX_OPTIONS, $arch
    );
}

if ( "" ne $gencfg ) {
    utils::generate_cfg(
        $outdir, $basename, $suffix,      $cfgext, $master,
        $map,    $entry,    $MCSEMA_HOME, $IDA
    );
}

if ( "" ne $extract_bc ) {
    utils::extract_bc_from_cfg(
        $outdir, $basename,    $suffix, $cfgext, $master,
        $arch,   $MCSEMA_HOME, $entry,  $LLVMDIS
    );
}

if ( "" ne $compile_bc ) {
    utils::generate_linked_binary(
        "${outdir}${basename}.${suffix}.lifted.bc",
        "${outdir}${basename}.${suffix}.lifted.exe",
        $outdir,
        $ext,
        $master,
        $CC,
        $CXX,
        $CXX_OPTIONS,
        $arch,
        $incdir,
        $include_regstate,
        $driver,
        $MCSEMA_HOME
    );
}

if ( "" ne $run_compare ) {
    utils::generate_binary_from_source(
        $outdir, $basename,   $suffix, $ext,         $file,
        $CC,     $CC_OPTIONS, $CXX,    $CXX_OPTIONS, $arch
    );

    utils::generate_linked_binary(
        "${outdir}${basename}.${suffix}.o",
        "${outdir}${basename}.${suffix}.native",
        $outdir,
        $ext,
        $master,
        $CC,
        $CXX,
        $CXX_OPTIONS,
        $arch,
        $incdir,
        $include_regstate,
        $driver,
        $MCSEMA_HOME
    );
    if ( -e "${outdir}${basename}.${suffix}.native" ) {
        if ( "" ne $skip_runcompare ) {
            passInfo("${basename} Run Compare Skipped");
            exit(0);
        }

        utils::run_compare(
            "${outdir}${basename}.${suffix}.lifted.exe",
            "${outdir}${basename}.${suffix}.native",
            "Native",
            $stdin_args,
            $cmd_args,
            $outdir,
            $basename
        );
    }
}

exit;

#my $OPTSWITCH="-stack-decons -mem2reg -dce  -early-cse-memssa";
#my $OPTSWITCH="-stack-decons -debug-only=\"stack_deconstructor\"";
