package utils;

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
  qw(createDir execute info passInfo failInfo display processKFile checkKRunStatus processXFile compareStates pprint toHex toDec printwithspaces dec2bin signExtend);
@EXPORT_OK = qw();

my @kpatterns = (
    qr/<rax> 64'([-]?\d*) <\/rax>/,
    qr/<rbx> 64'([-]?\d*) <\/rbx>/,
    qr/<rcx> 64'([-]?\d*) <\/rcx>/,
    qr/<rdx> 64'([-]?\d*) <\/rdx>/,
    qr/<rsi> 64'([-]?\d*) <\/rsi>/,
    qr/<rdi> 64'([-]?\d*) <\/rdi>/,
    qr/<rsp> 64'([-]?\d*) <\/rsp>/,
    qr/<rbp> 64'([-]?\d*) <\/rbp>/,
    qr/<r8> 64'([-]?\d*) <\/r8>/,
    qr/<r9> 64'([-]?\d*) <\/r9>/,
    qr/<r10> 64'([-]?\d*) <\/r10>/,
    qr/<r11> 64'([-]?\d*) <\/r11>/,
    qr/<r12> 64'([-]?\d*) <\/r12>/,
    qr/<r13> 64'([-]?\d*) <\/r13>/,
    qr/<r14> 64'([-]?\d*) <\/r14>/,
    qr/<r15> 64'([-]?\d*) <\/r15>/,
    qr/<cf> (1'\d*|\w*) <\/cf>/,
    qr/<pf> (1'\d*|\w*) <\/pf>/,
    qr/<af> (1'\d*|\w*) <\/af>/,
    qr/<zf> (1'\d*|\w*) <\/zf>/,
    qr/<sf> (1'\d*|\w*) <\/sf>/,
    qr/<of> (1'\d*|\w*) <\/of>/,
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
);
my $regcount = scalar keys %regMap;

my @xpatterns = ( qr/$\d* = ([-]?\d+)/, qr/$\d* = \[ ([CPAZSOIF ]*) \]/, );

sub execute {
    my $args = shift @_;
    print "$args \n";
    system("$args");
}

sub createDir {
    my $args = shift @_;
    make_path(
        $args,
        {
            chmod => 0777,
        }
    );
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

sub warnInfo {
    my $args = shift @_;
    system("echo  \e[4m\e[1m\e[35m$args\e[0m");
}

sub display {
    my $args = shift @_;
    print "\t$args \n";
}

# Sign extend a hex value.
sub signExtend {

    my $hex = shift @_;
    my $bit = shift @_;

    my @hexstr        = split( //, $hex );
    my $msb4bits      = $hexstr[0];
    my $n             = hex($msb4bits);
    my $ans           = "" . $hex;
    my $fourBitchunks = $bit / 4;
    my $tobefilled    = $fourBitchunks - scalar(@hexstr);
    my $filler        = "0";
    if ( $n >= 8 ) {
        $filler = "f";
    }

    for ( my $i = 0 ; $i < $tobefilled ; $i++ ) {
        $ans = $filler . $ans;
    }

    return $ans;
}

sub toDec {

    my $hex = shift @_;
    my $bit = shift @_;
    my $ans = "";

    my @hexstr = split( //, $hex );
    my $smin = pow( 2, $bit - 1 );

    my $msb4bits = $hexstr[0];
    my $n        = hex($msb4bits);
    if ( $n >= 8 ) {
        my @rest     = @hexstr[ 1 .. @hexstr - 1 ];
        my $restHex  = join( "", @rest );
        my $addend   = hex( ( $n - 8 ) . $restHex );
        my $signed   = $addend - $smin;
        my $unsigned = hex($hex);

        #print $addend."\n";
        return $addend - $smin, hex($hex);
    }
    else {
        return ( hex($hex), hex($hex) );
    }
}

sub dec2bin {
    my $num = shift @_;
    my $bit = shift @_;
    my $ans = "";

    for ( my $i = 0 ; $i < $bit ; $i++ ) {
        if ( $num & 1 ) {
            $ans = "1" . $ans;
        }
        else {
            $ans = "0" . $ans;
        }
        $num = $num >> 1;
    }
    return $ans;
}

# Convert a decimal number to `bit` width hex
sub toHex {
    my $num = shift @_;
    my $bit = shift @_;

    if ( $num == 0 ) {
        return "0";
    }

    my @hmap = (
        "0", "1", "2", "3", "4", "5", "6", "7",
        "8", "9", "a", "b", "c", "d", "e", "f"
    );
    my $chunks = $bit / 4;

    my $ans = "";
    for ( my $i = 0 ; $i < $chunks ; $i++ ) {
        my $n = $num & 15;
        $ans = $hmap[$n] . $ans;
        $num = $num >> 4;
    }
    return $ans;
}

sub printwithspaces {
    my $value = shift @_;
    my $space = shift @_;

    my $ans = "";
    my @arr = split( //, $value );

    for ( my $i = 0 ; $i < scalar(@arr) ; $i++ ) {
        if ( $i != 0 and ( $i % $space ) == 0 ) {
            $ans = $ans . " " . $arr[$i];
        }
        else {
            $ans = $ans . $arr[$i];
        }
    }
    return $ans;
}

sub split_filename {
    my $arg = shift @_;

    if ( "" eq $arg ) {
        return ( "", "" );
    }
    my @components = split( /\//, ${arg} );
    my $filename = $components[ @components - 1 ];

    @components = split( /\./, ${filename} );
    my @slice = @components[ 0 .. @components - 2 ];
    my $file  = join ".", @slice;
    my $ext   = $components[ @components - 1 ];

    # print( "\n" . $filename . "%%" . $file . "%%" . $ext . "\n" );
    return ( $file, $ext );
}

sub checkKRunStatus {
    my $file = shift @_;

    my $kcell = qr/<k> (.*) <\/k>/;
    open( my $fp, "<", "$file" ) or die "cannot open: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;
        if ( $line =~ m/$kcell/ ) {
            if ( $1 eq "exit_0" ) {
                passInfo("Pass: krun");
                return;
            }
            else {
                failInfo("Failed: non exit status");
                return;
            }
        }
    }
    failInfo("Failed: k cell missing");
}

sub processKFile {
    my $file = shift @_;

    my @kstates = ();

    open( my $fp, "<", "$file" ) or die "cannot open: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;

        #print $line . "\n";
        for my $p (@kpatterns) {
            if ( $line =~ m/$p/ ) {

                my $ln = $1;

                #print $1. "\n";

                if ( $ln =~ m/1'(\d*)/ ) {
                    push @kstates, $1;
                }
                else {
                    push @kstates, $ln;
                    last;
                }
            }
        }
    }
    return @kstates;
}

sub processXFile {
    my $file         = shift @_;
    my $tmpfile      = "/tmp/xxx";
    my @xstates      = ();
    my $gprcollected = 0;

    execute("grep --max-count=1  -A 17  \"nop\"  $file 1> ${tmpfile} 2>&1");

    open( my $fp, "<", "$tmpfile" ) or die "cannot open: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;

        #print $line."\n";
        if ( $line =~ m/$xpatterns[0]/ ) {

            #print $1. "\n";
            push @xstates, $1;
            $gprcollected = 1;
        }

        if ( 1 == $gprcollected ) {
            if ( $line =~ m/$xpatterns[1]/ ) {
                my $flags = $1;
                my @arrflags = ( 0, 0, 0, 0, 0, 0 );
                $arrflags[0] = 1 if $flags =~ m/.*CF.*/;
                $arrflags[1] = 1 if $flags =~ m/.*PF.*/;
                $arrflags[2] = 1 if $flags =~ m/.*AF.*/;
                $arrflags[3] = 1 if $flags =~ m/.*ZF.*/;
                $arrflags[4] = 1 if $flags =~ m/.*SF.*/;
                $arrflags[5] = 1 if $flags =~ m/.*OF.*/;
                push @xstates, @arrflags;
            }
        }
    }
    return @xstates;
}

sub compareInts {
    my $num1 = shift @_;
    my $num2 = shift @_;

    if ( $num1 == $num2 ) {
        return 1;
    }

    my $hexnum1 = toHex( $num1, 64 );
    my $hexnum2 = toHex( $num2, 64 );
    my ( $signed1, $unsigned1 ) = toDec($hexnum1, 64);
    my ( $signed2, $unsigned2 ) = toDec($hexnum2, 64);

    if ( $signed1 == $signed2 and $unsigned1 == $unsigned2 ) {
        return 1;
    }
    return 0;
}

sub compareStates {
    my ( $k_ref, $x_ref ) = @_;
    my @kstates = @{$k_ref};
    my @xstates = @{$x_ref};

    for ( my $i = 0 ; $i < $regcount ; $i++ ) {
        if ( $i == 6 ) {
            next;
        }

        if ( $kstates[$i] eq "undef" ) {
            info("\"undef\" found at $regMap{$i}");
            next;
        }

        if ( 0 == compareInts( $kstates[$i], $xstates[$i] ) ) {
            failInfo("Failed: $regMap{$i}");
            return;
        }
    }
    passInfo("Passed: compare");
}

sub pprint {
    my ( $k_ref, $x_ref ) = @_;
    my @kstates = @{$k_ref};
    my @xstates = @{$x_ref};

    print "\nreg\tkstate\txstate" . "\n---------------------\n";
    for ( my $i = 0 ; $i < $regcount ; $i++ ) {
        print "$regMap{$i}\t$kstates[$i]\t$xstates[$i]" . "\n";
    }
}

sub cleanup {
}
1;
