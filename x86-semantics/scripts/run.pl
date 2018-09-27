#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;
use File::Temp qw/ tempfile tempdir /;

my $home = "";
BEGIN{
	$home = $ENV{"HOME"};
	unshift @INC, "$home/Github/binary-decompilation/x86-semantics/scripts/";
}
use kutils;
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
my $testinput  = "";
my $nopathsplit  = "";
my @args       = ();
my $kstateskip = 0;
#my $home   = $ENV{'HOME'};
my $kdefn =
  "/home/sdasgup3/Github/binary-decompilation/x86-semantics/semantics/";
my $outdir = "Output/";

GetOptions(
    "help"         => \$help,
    "print"        => \$print,
    "file:s"       => \$file,
    "args:s"       => \@args,
    "output:s"     => \$output,
    "krun"         => \$krun,
    "xrun"         => \$xrun,
    "compare"      => \$compare,
    "nopathsplit"      => \$nopathsplit,
    "clean"        => \$clean,
    "outdir:s"     => \$outdir,
    "testinput:s"  => \$testinput,
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

sub createRegArgs {

    my $retVal =
"'-cREGV= regvalpair(\"RIP\", mi(64, 0)) regvalpair(\"RAX\",  mi(64, 0)) regvalpair(\"RBX\"    , mi(64, 0)) regvalpair(\"RCX\"    , mi(64, 0)) regvalpair(\"RDX\"    , mi(64, 0)) regvalpair(\"RSI\"    , mi(64, 0)) regvalpair(\"RDI\"    , mi(64, 0)) regvalpair(\"RSP\"    , mi(64, 0)) regvalpair(\"RBP\"    , mi(64, 0)) regvalpair(\"R8\"     , mi(64, 0)) regvalpair(\"R9\"     , mi(64, 0)) regvalpair(\"R10\"    , mi(64, 0)) regvalpair(\"R11\"    , mi(64, 0)) regvalpair(\"R12\"    , mi(64, 0)) regvalpair(\"R13\"    , mi(64, 0)) regvalpair(\"R14\"    , mi(64, 0)) regvalpair(\"R15\"    , mi(64, 0)) regvalpair(\"CF\"     , mi(1, 0)) regvalpair(\"DF\" , mi(1, 0)) regvalpair(\"PF\" , mi(1, 0)) regvalpair(\"AF\"     , mi(1, 0)) regvalpair(\"ZF\"     , mi(1, 0)) regvalpair(\"SF\"     , mi(1, 0)) regvalpair(\"OF\"     , mi(1, 0)) regvalpair(\"YMM0\"   ,  mi(256, 0)) regvalpair(\"YMM1\"   ,  mi(256, 0)) regvalpair(\"YMM2\"   ,  mi(256, 0)) regvalpair(\"YMM3\"   ,  mi(256, 0)) regvalpair(\"YMM4\"   ,  mi(256, 0)) regvalpair(\"YMM5\"   ,  mi(256, 0)) regvalpair(\"YMM6\"   ,  mi(256, 0)) regvalpair(\"YMM7\"   ,  mi(256, 0)) regvalpair(\"YMM8\"   ,  mi(256, 0)) regvalpair(\"YMM9\"   ,  mi(256, 0)) regvalpair(\"YMM10\"  ,  mi(256, 0)) regvalpair(\"YMM11\"  ,  mi(256, 0)) regvalpair(\"YMM12\"  ,  mi(256, 0)) regvalpair(\"YMM13\"  ,  mi(256, 0)) regvalpair(\"YMM14\"  ,  mi(256, 0)) regvalpair(\"YMM15\"  ,  mi(256, 0))'";
    if ( "" eq $testinput ) {
        return $retVal;
    }

    open( my $fp, "<", $testinput ) or die "cannot open: $!";
    my @lines = <$fp>;
    close $fp;
    $retVal = "'-cREGV= regvalpair(\"RIP\", mi(64, 0))";

    for my $line (@lines) {
        if ( $line =~ m/^%(\w+)\s+([\dabcdef].*)/ ) {
            my $reg    = $1;
            my $val    = utils::trim( $2, " " );
            my $intval = 0;
            my $size   = 0;

            if ( $reg =~ m/rf/ ) {
                next;
            }
            if ( $reg =~ m/^ymm/ ) {
                $size = 256;
            }
            elsif ( $reg =~ m/^r/ ) {
                $size = 64;
            }
            elsif ( $reg =~ m/af|cf|of|zf|sf|pf/ ) {
                $size = 1;
            }
            else {
                next;
            }

            $intval = utils::toDec( $val, $size );
            my $reg_uc = uc($reg);

            #print $reg_uc. " "
            #  . $size
            #  . "\n\t\t"
            #  . $val
            #  . "\n\t\t$intval" . "\n";
            $retVal = $retVal . " regvalpair(\"$reg_uc\", mi($size, $intval))";
        }
    }
    $retVal = $retVal . "'";
    return $retVal;
}

#sub generateOutTC {
#  my $outFile = shift @_;
#
#}

if ( "" ne $krun ) {
    my ( $dir, $basename, $ext ) = utils::split_filename($file);

    #$output = "$outdir/$basename.kstate";

#my $envArgs = createEnv( \@args );
#my $regArgs = createRegArgs();
    my $envArgs = "";
    my $regArgs = "";

    if($nopathsplit ne "") {
      $basename =  $dir. "/" . $basename; 
    }

    execute(
"time krun -d $kdefn $basename.$ext $envArgs $regArgs --output-file $output",
        1
    );

    my ( $fh_unused, $tmpfile ) = tempfile( "tmpfileXXXXX", DIR => "/tmp/" );
    execute(
"cat $output | sed  '/^\\s*\$/d' | sed 's/(\\s*\"/(\\n\"/g'  1> $tmpfile  2>&1 &&  mv $tmpfile $output",
        1
    );

    #checkKRunStatus("$outdir/$basename.kstate");
    checkKRunStatus("$output");

    #generateOutTC($output);
}

if ( "" ne $xrun ) {
    my ( $dir, $basename, $ext ) = utils::split_filename($file);

    my $srcname = $basename;

    $output = "$outdir/$basename.xstate";

    if ( "" eq $linker ) {
        $linker = "ld";
    }

    if($nopathsplit ne "") {
      $srcname =  $dir. "/" . $basename; 
    }

    execute( "as $srcname.$ext -o $outdir/$basename.o",              1 );
    execute( "$linker $outdir/$basename.o -o $outdir/$basename.exec", 1 );
    execute(
"gdb --batch --command=/home/sdasgup3/Github/binary-decompilation/x86-semantics/scripts/script_3.gdb --args $outdir/$basename.exec 1> $output 2>&1",
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
