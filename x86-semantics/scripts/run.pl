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
my $run     = "";
my $output  = "";
my $kdefn   = "/home/sdasgup3/Github/binary-decompilation/x86-semantics";
my $outdir  = "Output";

GetOptions(
    "help"     => \$help,
    "print"    => \$print,
    "file:s"   => \$file,
    "output:s" => \$output,
    "compile"  => \$compile,
    "run"      => \$run,
    "clean"    => \$clean,
) or die("Error in command line arguments\n");

if ($help) {
    print("");
    exit(1);
}

if ( "" ne $compile ) {
    execute("kompile x86-semantics.k --syntax-module X86-SYNTAX --debug -v");
}

if ( "" ne $run ) {
    my ( $basename, $ext ) = utils::split_filename($file);

    if ( "" eq $output ) {
        $output = "$outdir/$basename.kstate";
    }

    execute("krun -d $kdefn $basename.$ext --output-file $output");
    execute(
"cat $output | sed -e 's/\\(<[^</]*>\\)/\\n\\1/g' | sed  '/^\\s*\$/d' 1> /tmp/x  2>&1"
    );
    execute("mv /tmp/x $output");
}

exit;
