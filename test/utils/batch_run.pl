#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;
use File::chdir;
use Cwd;

use lib qw( /home/sdasgup3/Github/binary-decompilation/test/utils/ );
use utils;

#Global constants
my $home        = $ENV{'HOME'};
my $runpl       = "${home}/Github/binary-decompilation/test/utils/run.pl";
my $MCSEMA_HOME = "${home}/Github/mcsema_latest_master/";
my $help        = "";
my $infile      = "";
my $gencfg      = "";
my $genbin      = "";
my $extract_bc  = "";
my $compile_bc  = "";
my $run_compare = "";

#my $outdir = "McSemaOutput/";

my $outdir      = "RemillOutput/";
my $suffix      = "clang";
my $force_gen   = "";
my $install_bin = "";
my $revamb      = "";

GetOptions(
    "help"        => \$help,
    "file:s"      => \$infile,
    "gencfg"      => \$gencfg,
    "extract_bc"  => \$extract_bc,
    "compile_bc"  => \$compile_bc,
    "force_gen"   => \$force_gen,
    "install_bin" => \$install_bin,
    "revamb"      => \$revamb,
) or die("Error in command line arguments\n");

open( my $fp, "<", "$infile" ) or die "cannot open: $!";
my @tests = <$fp>;

my $cwd = getcwd();

## Drivers

for my $test (@tests) {
    chomp $test;

    my ( $bin, $dir, $ext ) = fileparse( $test, qr/\.[^.]*/ );
    info("");
    info("[PROCESS]: $dir$bin$ext");
    $CWD = $dir;

    if ( "" ne $gencfg ) {
        mkdir $outdir;
        execute("cp $bin ${outdir}${bin}.${suffix}.o");
        execute(
"${runpl} -file ${bin}${ext} --outdir $outdir -arch 64  -entry main -suffix ${suffix} --testdir $dir --master --gencfg"
        );
    }

    if ( "" ne $extract_bc ) {
        execute(
"${runpl} -file ${bin}${ext} --outdir $outdir -entry main -suffix ${suffix}  -testdir $dir --master --extract_bc"
        );
    }

    if ( "" ne $compile_bc ) {
        execute(
"${runpl} -file ${bin}${ext} --outdir $outdir -entry main -suffix ${suffix}  -testdir $dir --master --compile_bc"
        );
    }

    if ( "" ne $install_bin ) {
        execute("rm  ${bin}.${suffix}.lifted.exe;");
        execute(
"cp ${outdir}${bin}.${suffix}.lifted.exe ${bin}.${suffix}.lifted.exe;"
        );
    }

    if ( "" ne $revamb ) {
        my $TRANSLATE = "${home}/Github/orchestra/root/bin/translate";
        execute("${TRANSLATE}  ${bin};");
    }

    $CWD = $cwd;
}
