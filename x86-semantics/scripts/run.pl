#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;

use lib qw( /home/sdasgup3/Github/binary-decompilation/x86-semantics/scripts/ );
use utils;

my $help    = "";
my $file    = "";
my $print   = "";
my $clean   = "";
my $compile = "";
my $krun    = "";
my $xrun    = "";
my $compare = "";
my $output  = "";
my $kdefn   = "/home/sdasgup3/Github/binary-decompilation/x86-semantics";
my $outdir  = "Output/";
my $home    = $ENV{'HOME'};

GetOptions(
    "help"     => \$help,
    "print"    => \$print,
    "file:s"   => \$file,
    "output:s" => \$output,
    "compile"  => \$compile,
    "krun"     => \$krun,
    "xrun"     => \$xrun,
    "compare"  => \$compare,
    "clean"    => \$clean,
    "outdir:s" => \$outdir,
) or die("Error in command line arguments\n");

if ($help) {
    print("");
    exit(1);
}

if ( "" ne $compile ) {
    execute("kompile x86-semantics.k --syntax-module X86-SYNTAX --debug -v");
}

if ( "" ne $krun ) {
    my ( $basename, $ext ) = utils::split_filename($file);

    $output = "$outdir/$basename.kstate";

    execute("krun -d $kdefn $basename.$ext --output-file $output");
    execute(
"cat $output | sed -e 's/\\(<[^</]*>\\)/\\n\\1/g' | sed  '/^\\s*\$/d' 1> /tmp/x  2>&1"
    );
    execute("mv /tmp/x $output");
    checkKRunStatus("$outdir/$basename.kstate");
}

if ( "" ne $xrun ) {
    my ( $basename, $ext ) = utils::split_filename($file);

    $output = "$outdir/$basename.xstate";

    execute("as $basename.$ext -o $outdir/$basename.o");
    execute("ld $outdir/$basename.o -o $outdir/$basename.exec");
    execute(
"gdb --batch --command=${home}/scripts-n-docs/scripts/gdb_scripts/script_3.gdb --args $outdir/$basename.exec 1> $output 2>&1"
    );
    execute("rm -rf $outdir/$basename.exec");
    execute("rm -rf $outdir/$basename.o");
}

if ( "" ne $compare ) {
    my ( $basename, $ext ) = utils::split_filename($file);

    my $filek = "$outdir/$basename.kstate";
    my $filex = "$outdir/$basename.xstate";
    my @kstates = processKFile($filek);
    my @xstates = processXFile($filex);
    #print @kstates. "\n"; 
    #print @xstates . "\n"; 

    compareStates(\@kstates, \@xstates);
}

exit;
