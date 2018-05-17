#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;

use lib qw( /home/sdasgup3/x86-semantics/scripts/ );
use kutils;
use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;

my $help       = "";
my $file       = "";
my $print      = "";
my $clean      = "";
my $compile    = "";
my $krun       = "";
my $xrun       = "";
my $compare    = "";
my $output     = "";
my $linker     = "";
my @args       = ();
my $kstateskip = 0;
my $kdefn =
  "/home/sdasgup3/Github/binary-decompilation/x86-semantics/semantics/";
my $outdir = "Output/";
my $home   = $ENV{'HOME'};

GetOptions(
    "help"         => \$help,
    "print"        => \$print,
    "file:s"       => \$file,
    "args:s"       => \@args,
    "output:s"     => \$output,
    "krun"         => \$krun,
    "xrun"         => \$xrun,
    "compare"      => \$compare,
    "clean"        => \$clean,
    "outdir:s"     => \$outdir,
    "kstateskip:s" => \$kstateskip,
    "linker:s"     => \$linker,
) or die("Error in command line arguments\n");

if ($help) {
    print("");
    exit(1);
}

sub createEnv {

#'-cARGV=`_List_`(`ListItem`(#token("\"a.out\"","String")),`_List_`(`ListItem`(#token("\"HelloWorld!\"","String")),`.List`(.KList))))))'    '-pARGV=printf %s'
    my $args_ref = shift @_;
    my @args     = @{$args_ref};
    my $cargs    = "";

    for my $arg (@args) {
        $cargs =
          $cargs
          . "`_List_`(`ListItem`(#token(\"\\\"$arg\\\"\",\"String\"))" . ",";
    }

    $cargs = "'-cARGV=$cargs`.List`(.KList))))))'" . " " . "'-pARGV=printf %s'";
    return $cargs;
}

if ( "" ne $krun ) {
    my ( $dir, $basename, $ext ) = utils::split_filename($file);

    $output = "$outdir/$basename.kstate";

    my $envArgs = createEnv( \@args );
    execute(
        "time krun -d $kdefn $basename.$ext $envArgs --output-file $output",
        1 );

    execute(
"cat $output | sed  '/^\\s*\$/d' | sed 's/(\\s*\"/(\\n\"/g'  1> /tmp/x  2>&1 &&  mv /tmp/x $output",
        1
    );

    #execute( "", 1 );
    checkKRunStatus("$outdir/$basename.kstate");
}

if ( "" ne $xrun ) {
    my ( $dir, $basename, $ext ) = utils::split_filename($file);

    $output = "$outdir/$basename.xstate";

    if ( "" eq $linker ) {
        $linker = "ld";
    }
    execute( "as $basename.$ext -o $outdir/$basename.o",              1 );
    execute( "$linker $outdir/$basename.o -o $outdir/$basename.exec", 1 );
    execute(
"gdb --batch --command=../../../scripts/script_3.gdb --args $outdir/$basename.exec 1> $output 2>&1",
        1
    );

    #execute("rm -rf $outdir/$basename.exec");
    #execute("rm -rf $outdir/$basename.o");
}

if ( "" ne $compare ) {
    my ( $dir, $basename, $ext ) = utils::split_filename($file);

    my $filek   = "$outdir$basename.kstate";
    my $filex   = "$outdir$basename.xstate";
    my @kstates = processKFile( $basename, $filek );
    my @xstates = processXFile( $basename, $filex );

    pprint( \@kstates, \@xstates, $kstateskip );

    compareStates( $basename, \@kstates, \@xstates );
}

exit;
