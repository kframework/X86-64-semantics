package ktestutils;

use File::Compare;
use File::Basename;
use strict;
use File::Path qw(make_path remove_tree);
use POSIX;

use bigint;
use bigint qw/hex oct/;

use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION = 1.00;
@ISA     = qw(Exporter);
@EXPORT =
  qw(createDir execute info passInfo failInfo display processKFile checkKRunStatus processXFile compareStates pprint toHex toDec printwithspaces dec2bin signExtend float2binary bin2hex);
@EXPORT_OK = qw();

use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;

my @kpatterns = ( qr/<\w*> (\d+'[-]?\d+) <\/\w*>/, qr/<\w*> (\w+) <\/\w*>/ );
my @xpatterns = (
    qr/$\d* = ([-]?\d+)/,
    qr/$\d* = \{([\dabcdef]+, [\dabcdef]+)\}/,
    qr/$\d* = \[ ([CPAZSOIF ]*) \]/,
);

my %regMap = (
    0  => "rax",
    1  => "rbx",
    2  => "rcx",
    3  => "rdx",
    4  => "rsi",
    5  => "rdi",
    6  => "rsp",
    7  => "rbp",
    8  => "r8",
    9  => "r9",
    10 => "r10",
    11 => "r11",
    12 => "r12",
    13 => "r13",
    14 => "r14",
    15 => "r15",
    16 => "cf",
    17 => "pf",
    18 => "af",
    19 => "zf",
    20 => "sf",
    21 => "of",
    22 => "ymm0",
    23 => "ymm1",
    24 => "ymm2",
    25 => "ymm3",
    26 => "ymm4",
    27 => "ymm5",
    28 => "ymm6",
    29 => "ymm7",
    30 => "ymm8",
    31 => "ymm9",
    32 => "ymm10",
    33 => "ymm11",
    34 => "ymm12",
    35 => "ymm13",
    36 => "ymm14",
    37 => "ymm15",
);

my $regcount = scalar keys %regMap;

sub checkKRunStatus {
    my $file = shift @_;

    my $kcell = qr/<k> (.*) <\/k>/;
    open( my $fp, "<", "$file" ) or die "Can't open: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;
        if ( $line =~ m/$kcell/ ) {
            if ( $1 eq "exit_0" ) {
                passInfo("Pass: krun");
                return;
            }
            else {
                failInfo("Non exit status");
                return;
            }
        }
    }
    failInfo("K cell missing");
}

sub processKFile {
    my $file    = shift @_;
    my $tmpfile = "/tmp/yyy";
    my @kstates = ();

    execute(
"grep  -A 43  \"<regstate>-fragment\"  $file  | sed -e '/rip/d' 1> ${tmpfile} 2>&1"
    );

    open( my $fp, "<", "$tmpfile" ) or die "Cannot
 open: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;

        #print "Line: " . $line . "\n";
        if ( $line =~ m/$kpatterns[0]/ ) {

            #print "Match: " . $1 . "\n";
            push @kstates, $1;
        }
        elsif ( $line =~ m/$kpatterns[1]/ ) {

            #print "Match: " . $1 . "\n";
            push @kstates, $1;
        } 
    }
    return @kstates;
}

sub processXFile {
    my $file    = shift @_;
    my $tmpfile = "/tmp/xxx";
    my @xstates = ();

    execute("grep   -A 33  \"_start+\"  $file 1> ${tmpfile} 2>&1");

    open( my $fp, "<", "$tmpfile" ) or die "Can't open: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;

        #print $line."\n";
        if ( $line =~ m/$xpatterns[0]/ ) {

            #print "Rs:".$1. "\n";
            push @xstates, $1;
        }

        if ( $line =~ m/$xpatterns[1]/ ) {

            #print "Ys".$1. "\n";
            push @xstates, $1;
        }

        if ( $line =~ m/$xpatterns[2]/ ) {

            #print "Fs".$1. "\n";
            my @arrflags = parseFlags($1);
            push @xstates, @arrflags;
        }
    }
    return @xstates;
}

sub parseFlags {
    my $flags = shift @_;
    my @arrflags = ( 0, 0, 0, 0, 0, 0 );
    $arrflags[0] = 1 if $flags =~ m/.*CF.*/;
    $arrflags[1] = 1 if $flags =~ m/.*PF.*/;
    $arrflags[2] = 1 if $flags =~ m/.*AF.*/;
    $arrflags[3] = 1 if $flags =~ m/.*ZF.*/;
    $arrflags[4] = 1 if $flags =~ m/.*SF.*/;
    $arrflags[5] = 1 if $flags =~ m/.*OF.*/;

    return @arrflags;
}

sub compareInts {
    my $knum = shift @_;
    my $xnum = shift @_;

    #print "Check: " . $knum . " " . $xnum . "\n";
    my $khexnum = "";
    my $xhexnum = "";
    my $bit     = 64;

    if ( $knum =~ /(\d+)'([-]?\d+)/ ) {
        $bit     = $1;
        $knum    = $2;
        $khexnum = toHex( $knum, $bit );
    }

    if ( $xnum =~ /([\dabcdef]+), ([\dabcdef]+)/ ) {
        $xhexnum = $1 . $2;
    }
    else {
        #print "Check3: ".$xnum."\n";
        $xhexnum = toHex( $xnum, $bit );
    }

    if ( $khexnum eq "" or $xhexnum eq "" ) {
        failInfo("Cannot convert to hex\n");
        return 0;
    }

    #print "Check2: " . $khexnum . " " . $xhexnum . "\n";
    if ( $xhexnum == $khexnum ) {
        return 1;
    }
    return 0;
}

sub compareStates {
    my ( $k_ref, $x_ref ) = @_;
    my @kstates    = @{$k_ref};
    my @xstates    = @{$x_ref};
    my $instrcount = 0;

    if ( 0 == scalar(@kstates) or 0 == scalar(@xstates) ) {
        failInfo("Either of xstate or kstate is Empty\n");
        return;
    }

    for ( my $i = 0 ; $i < scalar(@kstates) ; $i++ ) {
        if ( 6 == ( $i % $regcount ) ) {
            info("Skip $regMap{$i % $regcount}");
            next;
        }

        if ( $kstates[$i] eq "undef" ) {
            info("\"undef\" found at $regMap{$i % $regcount}");
            next;
        }

        if ( 0 == compareInts( $kstates[$i], $xstates[$i] ) ) {
            failInfo(
                "$regMap{$i % $regcount} after instrcount: " . $instrcount );
            return;
        }

        if ( 0 == $i % $regcount ) {
            $instrcount++;
        }
    }
    passInfo("Passed: compare");
}

sub pprint {
    my ( $k_ref, $x_ref ) = @_;
    my @kstates    = @{$k_ref};
    my @xstates    = @{$x_ref};
    my $instrcount = 0;

    for ( my $i = 0 ; $i < scalar(@kstates) ; $i++ ) {
        if ( 0 == $i % $regcount ) {
            print "\n$instrcount) reg\tkstate\txstate"
              . "\n---------------------\n";
        }

        print "$regMap{$i % $regcount}\t$kstates[$i]\t$xstates[$i]" . "\n";

        if ( 0 == $i % $regcount ) {
            $instrcount++;
        }
    }
}

sub cleanup {
}
1;
