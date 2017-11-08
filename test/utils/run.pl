#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;

use lib qw( /home/sdasgup3/Github/binary-decompilation/test/utils/ );
use utils;

my $outdir = "Output/";
my $cfgext = ".ida";

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
my $testallexe      = "";
my $skip_runcompare = "";
my $run_compare     = "";
my $compile_bc      = "";
my $cleanup         = "";
my $testdir         = "";
my $force_gen       = "";

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
    "arch:s"          => \$arch,
    "map:s"           => \$map,
    "file:s"          => \$file,
    "suffix:s"        => \$suffix,
    "entry:s"         => \$entry,
    "incdir:s"        => \$incdir,
    "stdin_args:s"    => \$stdin_args,
    "driver:s"        => \$driver,
    "cmd_args:s"      => \$cmd_args,
    "outdir:s"        => \$outdir,
    "testdir:s"       => \$testdir,
    "force_gen"       => \$force_gen,
) or die("Error in command line arguments\n");

if ($help) {
    print("");
    exit(1);
}

my ( $basename, $ext ) = utils::split_filename($file);

if ( "asm" eq $ext and "yes" eq $tools::SKIP_ASM ) {
    utils::warnInfo("Skipped: asm file");
    exit(0);
}

if ( "" ne $cleanup ) {
    utils::cleanup( $outdir, $basename, $suffix );
    exit(0);
}

#Derived paths
if ( $map ne "" ) {
    $map = "--std-defs " . $map . " ";
}

### Drivers

if ( "revamb" eq $tools::MCSEMA_BRANCH ) {
    utils::generate_binary_from_source( $outdir, $basename, $suffix, $ext,
        $file, $driver, $force_gen );
    execute("$tools::TRANSLATE ${outdir}${basename}.${suffix}.o");

    utils::run_compare(
        "${outdir}${basename}.${suffix}.o",
        "${outdir}${basename}.${suffix}.o.translated",
        "Native", $stdin_args, $cmd_args, $outdir, $basename
    );

    exit(0);
}

if ( "" ne $genbin ) {
    utils::generate_binary_from_source( $outdir, $basename, $suffix, $ext,
        $file, $driver, $force_gen );
}

if ( "" ne $gencfg ) {
    utils::generate_cfg(
        $outdir, $testdir, $basename, $suffix, $cfgext,
        $master, $map,     $entry,    $force_gen
    );
}

if ( "" ne $extract_bc ) {
    utils::extract_bc_from_cfg(
        $outdir, $testdir, $basename, $suffix, $cfgext,
        $master, $arch,    $entry,    $force_gen
    );
}

if ( "" ne $compile_bc ) {
    utils::generate_linked_binary(
        "${outdir}${basename}.${suffix}.lifted.bc",
        "${outdir}${basename}.${suffix}.lifted.exe",
        $testdir,
        $outdir,
        $ext,
        $master,
        $incdir,
        $driver,
        $force_gen
    );
}

if ( "" ne $run_compare ) {
    utils::generate_binary_from_source( $outdir, $basename, $suffix, $ext,
        $file, $driver, $force_gen );

    if ( $tools::GEN_OBJ_FILE eq "" ) {
        if ( -e "${outdir}${basename}.${suffix}.o" ) {
            if ( "" ne $skip_runcompare ) {
                passInfo("${basename} Run Compare Skipped explicitly");
                exit(0);
            }

            utils::run_compare(
                "${outdir}${basename}.${suffix}.lifted.exe",
                "${outdir}${basename}.${suffix}.o",
                "Native",
                $stdin_args,
                $cmd_args,
                $outdir,
                $basename
            );
        }
    }
    else {
        utils::generate_linked_binary(
            "${outdir}${basename}.${suffix}.o",
            "${outdir}${basename}.${suffix}.native",
            $testdir,
            $outdir,
            $ext,
            $master,
            $incdir,
            $driver,
            $force_gen
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
}

exit;

#my $OPTSWITCH="-stack-decons -mem2reg -dce  -early-cse-memssa";
#my $OPTSWITCH="-stack-decons -debug-only=\"stack_deconstructor\"";
