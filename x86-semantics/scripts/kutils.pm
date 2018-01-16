package kutils;

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
  qw(processKFile checkKRunStatus processXFile compareStates pprint find_stratum getReadMod spec_template get_circuit);
@EXPORT_OK = qw();

use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;

#my @kpatterns = ( qr/<\w*> (\d+'[-]?\d+) <\/\w*>/, qr/<\w*> (\w+) <\/\w*>/ );
my @kpatterns = ( qr/"(\w*)" \|-> (\d+'[-]?\d+)/, qr/"(\w*)" \|-> (\w+)/ );
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

sub spec_template {
    my $spec_code = shift @_;

    my $spec_template = qq(module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k> fetch => exit_0 </k>
    <entrypoint> zeroMIntW64 </entrypoint>
    <nextLoc> zeroMIntW64  </nextLoc>
    <memstate>
      <cmem>
$spec_code
      </cmem>
      <dmem> .Map </dmem>
    </memstate>

    <regstate>
      "RIP" |->    (mi(64, 0) => _)

      "RAX" |->    (mi(64,?I1 :Int):MInt => _ )
      "RBX" |->    (mi(64,?I2 :Int):MInt => _ )
      "RCX" |->    (mi(64,?I3 :Int):MInt => _ )
      "RDX" |->    (mi(64,?I4 :Int):MInt => _ )
      "RSI" |->    (mi(64,?I5 :Int):MInt => _ )
      "RDI" |->    (mi(64,?I6 :Int):MInt => _ )
      "RSP" |->    (mi(64,?I7 :Int):MInt => _ )
      "RBP" |->    (mi(64,?I8 :Int):MInt => _ )
      "R8"  |->    (mi(64,?I9 :Int):MInt => _ )
      "R9"  |->    (mi(64,?I10:Int):MInt => _ )
      "R10" |->    (mi(64,?I11:Int):MInt => _ )
      "R11" |->    (mi(64,?I12:Int):MInt => _ )
      "R12" |->    (mi(64,?I13:Int):MInt => _ )
      "R13" |->    (mi(64,?I14:Int):MInt => _ )
      "R14" |->    (mi(64,?I15:Int):MInt => _ )
      "R15" |->    (mi(64,?I16:Int):MInt => _ )
      "CF" |->     (mi(1, ?I17:Int):MInt => _ )
      "PF" |->     (mi(1, ?I18:Int):MInt => _ )
      "AF" |->     (mi(1, ?I19:Int):MInt => _ )
      "ZF" |->     (mi(1, ?I20:Int):MInt => _ )
      "SF" |->     (mi(1, ?I21:Int):MInt => _ )
      "OF" |->     (mi(1, ?I22:Int):MInt => _ )
      /*
      "YMM0"  |->  (?MI23:MInt => _ )
      "YMM1"  |->  (?MI24:MInt => _ )
      "YMM2"  |->  (?MI25:MInt => _ )
      "YMM3"  |->  (?MI26:MInt => _ )
      "YMM4"  |->  (?MI27:MInt => _ )
      "YMM5"  |->  (?MI28:MInt => _ )
      "YMM6"  |->  (?MI29:MInt => _ )
      "YMM7"  |->  (?MI30:MInt => _ )
      "YMM8"  |->  (?MI31:MInt => _ )
      "YMM9"  |->  (?MI32:MInt => _ )
      "YMM10" |->  (?MI33:MInt => _ )
      "YMM11" |->  (?MI34:MInt => _ )
      "YMM12" |->  (?MI35:MInt => _ )
      "YMM13" |->  (?MI36:MInt => _ )
      "YMM14" |->  (?MI37:MInt => _ )
      "YMM15" |->  (?MI38:MInt => _ )
      */
    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule);

    return $spec_template;
}

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
    my $file          = shift @_;
    my $tmpfile       = "/tmp/yyy";
    my @kstates       = ();
    my @sortedkstates = ();
    my %kstateMap     = ();

#execute(
#"grep  -A 43  \"<regstate>-fragment\"  $file  | sed -e '/rip/d' 1> ${tmpfile} 2>&1"
#    );
    execute(
        "grep  -A 39  \"ListItem\"  $file  | sed -e '/RIP/d' 1> ${tmpfile} 2>&1"
    );

    open( my $fp, "<", "$tmpfile" ) or die "Cannot
 open: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;

        #print "Line: " . $line . "\n";
        if ( $line =~ m/$kpatterns[0]/ ) {

            #print "Match: " . $1 . "=>" . $2 . "\n";
            push( @{ $kstateMap{$1} }, $2 );
        }
        elsif ( $line =~ m/$kpatterns[1]/ ) {

            #print "Match: " . $1 . "\n";
            push @{ $kstateMap{$1} }, $2;
        }
    }

    # Number of Instructions
    my $numOfInstrs = 0;
    for my $key ( keys %kstateMap ) {
        $numOfInstrs += scalar( @{ $kstateMap{$key} } );
    }
    $numOfInstrs /= 38;
    print( "numOfInstrs: " . $numOfInstrs . "\n" );

    my @orderedKeys = (
        "RAX",   "RBX",  "RCX",   "RDX",   "RSI",   "RDI",
        "RSP",   "RBP",  "R8",    "R9",    "R10",   "R11",
        "R12",   "R13",  "R14",   "R15",   "CF",    "PF",
        "AF",    "ZF",   "SF",    "OF",    "YMM0",  "YMM1",
        "YMM2",  "YMM3", "YMM4",  "YMM5",  "YMM6",  "YMM7",
        "YMM8",  "YMM9", "YMM10", "YMM11", "YMM12", "YMM13",
        "YMM14", "YMM15",
    );

    for my $key (@orderedKeys) {
        if ( $numOfInstrs != scalar( @{ $kstateMap{$key} } ) ) {
            failInfo("Count of $key is not same as $numOfInstrs\n");
            return @kstates;
        }
    }

    for ( my $instrCount = 0 ; $instrCount < $numOfInstrs ; $instrCount++ ) {
        for my $key (@orderedKeys) {
            push @kstates, $kstateMap{$key}[$instrCount];

        }
    }

    print join( " : ", @kstates );
    print "\n";

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

            #info("Skip $regMap{$i % $regcount}");
            next;
        }

        if ( $kstates[$i] eq "undef" ) {

            #info("\"undef\" found at $regMap{$i % $regcount}");
            next;
        }

        if ( 0 == compareInts( $kstates[$i], $xstates[$i] ) ) {
            failInfo( "$regMap{$i % $regcount} at instrcount: " . $instrcount );
            return;
        }
        else {
            #info("$instrcount matched");
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

## Generate Specs

## Input: Concrete Instruction.
## Output: Opcode text
sub instr_to_opcode {
    my $instr = shift @_;
    my $binpath =
      "/home/sdasgup3/Install/strata/stoke/src/ext/x64asm/bin/instr_info";
    execute("echo $instr | $binpath 1>/tmp/xxx 2>&1");
    my $debugprint = shift @_;

    my $filepath = "/tmp/xxx";
    open( my $fp, "<", $filepath )
      or die "[instr_to_opcode]cannot open $filepath: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;
        debugInfo( $line . "\n", $debugprint );
        if ( $line =~ m/opcode:\s*(\S*)/ ) {
            debugInfo( "[instr_to_opcode]opcode: $1" . "\n", $debugprint );
            return $1;
        }
    }

    return "No Opcode";
}

sub find_stratum {
    my $opcode      = shift @_;
    my $strata_path = shift @_;
    my $debugprint  = shift @_;
    my $depth       = 0;
    my $count       = 0;

    my $filepath = $strata_path . "/" . $opcode . ".s";
    debugInfo( "In file : " . $filepath . "\n", $debugprint );
    open( my $fp, "<", $filepath )
      or die "[find_stratum]cannot open $filepath: $!";

    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;

        if ( $line =~ m/\.text|\.globl|\.type|^#.*|\.target|\.size/ ) {
            next;
        }

        debugInfo( $line . "\n", $debugprint );

        if ( $line =~ m/^(.*)#.*OPC=(.*)/ ) {
            my $instr = $1;

            my $test = $2;
            $instr = utils::trim($instr);

            # Instr might contain immediates with $, need to
            # escape that.
            $instr =~ s/\$/\\\$/g;

            $test =~ s/\s*//g;

            my $encode = instr_to_opcode( $instr, $debugprint );

            if ( $test ne $encode ) {
                if (
                    (
                            $test eq "movq_r64_imm64"
                        and $encode eq "movq_r64_imm32"
                    )
                    or
                    ( $test eq "xchgw_r16_r16" and $encode eq "xchgw_r16_ax" )
                    or
                    ( $test eq "xchgl_r32_r32" and $encode eq "xchgl_r32_eax" )
                    or
                    ( $test eq "xchgq_r64_r64" and $encode eq "xchgq_rax_r64" )
                    or
                    ( $test eq "xchgq_r64_r64" and $encode eq "xchgq_r64_rax" )
                  )
                {
                    # Ok causes
                    $encode = $test;
                }
                else {
                    print("$opcode::$test::$encode::\n");
                    failInfo("$opcode::$test::$encode::\n");
                }
            }

            debugInfo( $instr . "::" . $encode . "::\n", $debugprint );

            if (   $encode eq "adcw_r16_r16"
                or $encode eq "adcl_r32_r32"
                or $encode eq "adcq_r64_r64"
                or $encode eq "adcb_r8_r8"
                or $encode eq "cmoveq_r64_r64"
                or $encode eq "movq_r64_imm32"
                or $encode eq "movq_r64_imm64"
                or $encode eq "movq_r64_r64"
                or $encode eq "movb_r8_rh"
                or $encode eq "movb_rh_r8"
                or $encode eq "movswq_r64_r16"
                or $encode eq "movsbq_r64_r8"
                or $encode eq "movslq_r64_r32"
                or $encode eq "orq_r64_r64"
                or $encode eq "popcntq_r64_r64"
                or $encode eq "salq_r64_cl"
                or $encode eq "sarq_r64_cl"
                or $encode eq "shrq_r64_cl"
                or $encode eq "xorq_r64_r64"
                or $encode eq "vaddpd_ymm_ymm_ymm"
                or $encode eq "vaddps_ymm_ymm_ymm"
                or $encode eq "vsubpd_ymm_ymm_ymm"
                or $encode eq "vsubps_ymm_ymm_ymm"
                or $encode eq "vmulpd_ymm_ymm_ymm"
                or $encode eq "vmulps_ymm_ymm_ymm"
                or $encode eq "vrcpps_ymm_ymm"
                or $encode eq "vdivpd_ymm_ymm_ymm"
                or $encode eq "vdivps_ymm_ymm_ymm"
                or $encode eq "vmaxpd_ymm_ymm_ymm"
                or $encode eq "vmaxps_ymm_ymm_ymm"
                or $encode eq "vminpd_ymm_ymm_ymm"
                or $encode eq "vminps_ymm_ymm_ymm"
                or $encode eq "vrsqrtps_ymm_ymm"
                or $encode eq "vsqrtpd_ymm_ymm"
                or $encode eq "vsqrtps_ymm_ymm"
                or $encode eq "vzeroall"
                or $encode eq "vfmadd132pd_ymm_ymm_ymm"
                or $encode eq "vfmadd132ps_ymm_ymm_ymm"
                or $encode eq "vfmsub132pd_ymm_ymm_ymm"
                or $encode eq "vfmsub132ps_ymm_ymm_ymm"
                or $encode eq "vfnmadd132pd_ymm_ymm_ymm"
                or $encode eq "vfnmadd132ps_ymm_ymm_ymm"
                or $encode eq "vfnmsub132pd_ymm_ymm_ymm"
                or $encode eq "vfnmsub132ps_ymm_ymm_ymm"
                or $encode eq "vcvtdq2pd_ymm_ymm"
                or $encode eq "vcvtdq2ps_ymm_ymm"
                or $encode eq "vcvtpd2dq_xmm_ymm"
                or $encode eq "vcvtpd2ps_xmm_ymm"
                or $encode eq "vcvtps2dq_ymm_ymm"
                or $encode eq "vcvtps2pd_ymm_xmm"
                or $encode eq "vcvttpd2dq_xmm_ymm"
                or $encode eq "vcvttps2dq_ymm_ymm" )
            {
                #print $line . "\n";
                $count++;
            }
            elsif ( $encode eq "callq_label" ) {

                #print $line . "\n";
                $count++;
            }
            elsif ( $encode eq "retq" ) {
            }
            else {
                my $nextopcode = $encode;
                my ( $temp_depth, $temp_count ) =
                  find_stratum( $nextopcode, $strata_path, $debugprint );
                $depth = 1 + $temp_depth;
                $count = $count + $temp_count;
            }
        }
    }

    return ( $depth, $count );
}

sub getReadMod {
    my $opcode     = shift @_;
    my $path       = shift @_;
    my $debugprint = shift @_;

    my $filepath = $path . "/" . $opcode . "/" . $opcode . ".s";
    my $metapath = $path . "/" . $opcode . "/" . $opcode . ".meta.json";
    my $instr    = "";
    my $metadata = "";

    # Find the concrete instruction.
    debugInfo( "In file : " . $filepath . "\n", $debugprint );
    open( my $fp, "<", $filepath ) or die "cannot open $filepath: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;

        if ( $line =~ m/\.text|\.globl|\.type|^#.*|\.target|\.size|retq/ ) {
            next;
        }
        $instr = $line;
    }

    # Find the read/write set using metadata.
    debugInfo( "In file : " . $metapath . "\n", $debugprint );
    open( my $fp, "<", $metapath ) or die "cannot open $metapath: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        if ( $line =~ m/def_in|live_out|def_in_formal|live_out_formal/ ) {
            $metadata =
              $metadata . utils::removequotes( utils::trim($line) ) . "\n";
        }
    }

    # Find the read/write set for the concrete instr.
    my $rwset = instr_to_rwset( $instr, $debugprint );

    # Compare the RW sets obtained via 2 different methods.

    return ( $instr, $metadata, $rwset );
}

## Input: Concrete Instruction.
## Output: Read/Write reg set.
sub instr_to_rwset {
    my $instr = shift @_;
    my $binpath =
      "/home/sdasgup3/Install/strata/stoke/src/ext/x64asm/bin/instr_info";
    execute("echo $instr | $binpath 1>/tmp/xxx 2>&1");
    my $debugprint = shift @_;
    my $returnInfo = "";

    my $filepath = "/tmp/xxx";
    open( my $fp, "<", $filepath )
      or die "[instr_to_opcode]cannot open $filepath: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;

        #debugInfo( $line . "\n", $debugprint );
        if ( $line =~ m/read|write|undef|flags/ ) {
            $returnInfo = $returnInfo . utils::trim($line) . "\n";
        }
    }
    debugInfo( "[instr_to_rwset] rw set: $returnInfo" . "\n", $debugprint );
    return $returnInfo;
}

sub get_circuit {
    my $opcode      = shift @_;
    my $strata_path = shift @_;
    my $debugprint  = shift @_;
    my @instr_arr   = ();

    my $filepath = $strata_path . "/" . $opcode . ".s";
    debugInfo( "In file : " . $filepath . "\n", $debugprint );
    open( my $fp, "<", $filepath )
      or die "[find_stratum]cannot open $filepath: $!";

    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;

        if ( $line =~ m/\.text|\.globl|\.type|^#.*|\.target|\.size|retq/ ) {
            next;
        }

        debugInfo( $line . "\n", $debugprint );

        if ( $line =~ m/^(.*)#.*OPC=(.*)/ ) {
            my $instr = $1;

            my $test = $2;
            $instr = utils::trim($instr);
            #$instr =~ s/\$/\\\$/g;

            #debugInfo( $instr . "::\n", $debugprint );
            push @instr_arr, $instr;
        }
    }
    debugInfo( join( ' ', @instr_arr, ) . "::\n", $debugprint );
    return @instr_arr;
}

1;
