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
  qw(processKFile checkKRunStatus processXFile compareStates pprint find_stratum getReadMod spec_template getSpecCode selectbraces mixfix2infix processSpecOutput sanitizeSpecOutput writeKDefn opcHasOperand instrGetOperands runkprove postProcess createSpecFile checkSupported checkManuallyGenerated);
@EXPORT_OK = qw();

use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;

my $strata_path = "/home/sdasgup3/Github/strata-data/circuits";

#my @kpatterns = ( qr/<\w*> (\d+'[-]?\d+) <\/\w*>/, qr/<\w*> (\w+) <\/\w*>/ );
#my @kpatterns = ( qr/"(\w*)" \|-> (\d+'[-]?\d+)/, qr/"(\w*)" \|-> (\w+)/ );
my @kpatterns = ( qr/"(\w*)" \|-> (\d+'[-]?\d+)/, qr/"(\w*)" \|-> (.*)/ );
my @xpatterns = (
    qr/$\d* = ([-]?\d+)/,
#qr/$\d* = \{(0x[\dabcdef]+, 0x[\dabcdef]+)\}/,
    qr/$\d* = \{0x([\dabcdef]+), 0x([\dabcdef]+)\}/,
    qr/$\d* = \[ ([CPAZSOIF ]*) \]/,
);

my @r64s = (
    "rax", "rbx", "rcx", "rdx", "rsi", "rdi", "rsp", "rbp",
    "r8",  "r9",  "r10", "r11", "r12", "r13", "r14", "r15",
);

my @r8s = (
    "al",  "bl",  "cl",   "dl",   "sil",  "dil",  "spl",  "bpl",
    "r8b", "r9b", "r10b", "r11b", "r12b", "r13b", "r14b", "r15b",
);

my @rhs = ( "ah", "bh", "ch", "dh" );

my @r16s = (
    "ax",  "bx",  "cx",   "dx",   "si",   "di",   "sp",   "bp",
    "r8w", "r9w", "r10w", "r11w", "r12w", "r13w", "r14w", "r15w",
);

my @r32s = (
    "eax", "ebx", "ecx",  "edx",  "esi",  "edi",  "esp",  "ebp",
    "r8d", "r9d", "r10d", "r11d", "r12d", "r13d", "r14d", "r15d"
);

my %subRegToReg = (
    "al"    => "rax",
    "bl"    => "rbx",
    "cl"    => "rcx",
    "dl"    => "rdx",
    "sil"   => "rsi",
    "dil"   => "rdi",
    "spl"   => "rsp",
    "bpl"   => "rbp",
    "r8b"   => "r8",
    "r9b"   => "r9",
    "r10b"  => "r10",
    "r11b"  => "r11",
    "r12b"  => "r12",
    "r13b"  => "r13",
    "r14b"  => "r14",
    "r15b"  => "r15",
    "ax"    => "rax",
    "bx"    => "rbx",
    "cx"    => "rcx",
    "dx"    => "rdx",
    "si"    => "rsi",
    "di"    => "rdi",
    "sp"    => "rsp",
    "bp"    => "rbp",
    "r8w"   => "r8",
    "r9w"   => "r9",
    "r10w"  => "r10",
    "r11w"  => "r11",
    "r12w"  => "r12",
    "r13w"  => "r13",
    "r14w"  => "r14",
    "r15w"  => "r15",
    "eax"   => "rax",
    "ebx"   => "rbx",
    "ecx"   => "rcx",
    "edx"   => "rdx",
    "esi"   => "rsi",
    "edi"   => "rdi",
    "esp"   => "rsp",
    "ebp"   => "rbp",
    "r8d"   => "r8",
    "r9d"   => "r9",
    "r10d"  => "r10",
    "r11d"  => "r11",
    "r12d"  => "r12",
    "r13d"  => "r13",
    "r14d"  => "r14",
    "r15d"  => "r15",
    "ah"    => "rax",
    "bh"    => "rbx",
    "ch"    => "rcx",
    "dh"    => "rdx",
    "xmm0"  => "ymm0",
    "xmm1"  => "ymm1",
    "xmm2"  => "ymm2",
    "xmm3"  => "ymm3",
    "xmm4"  => "ymm4",
    "xmm5"  => "ymm5",
    "xmm6"  => "ymm6",
    "xmm7"  => "ymm7",
    "xmm8"  => "ymm8",
    "xmm9"  => "ymm9",
    "xmm10" => "ymm10",
    "xmm11" => "ymm11",
    "xmm12" => "ymm12",
    "xmm13" => "ymm13",
    "xmm14" => "ymm14",
    "xmm15" => "ymm15",
    "ymm0"  => "ymm0",
    "ymm1"  => "ymm1",
    "ymm2"  => "ymm2",
    "ymm3"  => "ymm3",
    "ymm4"  => "ymm4",
    "ymm5"  => "ymm5",
    "ymm6"  => "ymm6",
    "ymm7"  => "ymm7",
    "ymm8"  => "ymm8",
    "ymm9"  => "ymm9",
    "ymm10" => "ymm10",
    "ymm11" => "ymm11",
    "ymm12" => "ymm12",
    "ymm13" => "ymm13",
    "ymm14" => "ymm14",
    "ymm15" => "ymm15",
    "af"    => "af",
    "pf"    => "pf",
    "sf"    => "sf",
    "zf"    => "zf",
    "cf"    => "cf",
    "of"    => "of",
    "rax"   => "rax",
    "rbx"   => "rbx",
    "rcx"   => "rcx",
    "rdx"   => "rdx",
    "rsi"   => "rsi",
    "rdi"   => "rdi",
    "rsp"   => "rsp",
    "rbp"   => "rbp",
    "r8"    => "r8",
    "r9"    => "r9",
    "r10"   => "r10",
    "r11"   => "r11",
    "r12"   => "r12",
    "r13"   => "r13",
    "r14"   => "r14",
    "r15"   => "r15",
);

my %getRegSize = (
    "al"    => 8,
    "bl"    => 8,
    "cl"    => 8,
    "dl"    => 8,
    "sil"   => 8,
    "dil"   => 8,
    "spl"   => 8,
    "bpl"   => 8,
    "r8b"   => 8,
    "r9b"   => 8,
    "r10b"  => 8,
    "r11b"  => 8,
    "r12b"  => 8,
    "r13b"  => 8,
    "r14b"  => 8,
    "r15b"  => 8,
    "ax"    => 16,
    "bx"    => 16,
    "cx"    => 16,
    "dx"    => 16,
    "si"    => 16,
    "di"    => 16,
    "sp"    => 16,
    "bp"    => 16,
    "r8w"   => 16,
    "r9w"   => 16,
    "r10w"  => 16,
    "r11w"  => 16,
    "r12w"  => 16,
    "r13w"  => 16,
    "r14w"  => 16,
    "r15w"  => 16,
    "eax"   => 32,
    "ebx"   => 32,
    "ecx"   => 32,
    "edx"   => 32,
    "esi"   => 32,
    "edi"   => 32,
    "esp"   => 32,
    "ebp"   => 32,
    "r8d"   => 32,
    "r9d"   => 32,
    "r10d"  => 32,
    "r11d"  => 32,
    "r12d"  => 32,
    "r13d"  => 32,
    "r14d"  => 32,
    "r15d"  => 32,
    "ah"    => 8,
    "bh"    => 8,
    "ch"    => 8,
    "dh"    => 8,
    "xmm0"  => 128,
    "xmm1"  => 128,
    "xmm2"  => 128,
    "xmm3"  => 128,
    "xmm4"  => 128,
    "xmm5"  => 128,
    "xmm6"  => 128,
    "xmm7"  => 128,
    "xmm8"  => 128,
    "xmm9"  => 128,
    "xmm10" => 128,
    "xmm11" => 128,
    "xmm12" => 128,
    "xmm13" => 128,
    "xmm14" => 128,
    "xmm15" => 128,
    "ymm0"  => 256,
    "ymm1"  => 256,
    "ymm2"  => 256,
    "ymm3"  => 256,
    "ymm4"  => 256,
    "ymm5"  => 256,
    "ymm6"  => 256,
    "ymm7"  => 256,
    "ymm8"  => 256,
    "ymm9"  => 256,
    "ymm10" => 256,
    "ymm11" => 256,
    "ymm12" => 256,
    "ymm13" => 256,
    "ymm14" => 256,
    "ymm15" => 256,
    "af"    => 1,
    "pf"    => 1,
    "sf"    => 1,
    "zf"    => 1,
    "cf"    => 1,
    "of"    => 1,
    "rax"   => 64,
    "rbx"   => 64,
    "rcx"   => 64,
    "rdx"   => 64,
    "rsi"   => 64,
    "rdi"   => 64,
    "rsp"   => 64,
    "rbp"   => 64,
    "r8"    => 64,
    "r9"    => 64,
    "r10"   => 64,
    "r11"   => 64,
    "r12"   => 64,
    "r13"   => 64,
    "r14"   => 64,
    "r15"   => 64,
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
    my $spec_code      = shift @_;
    my $regstateConfig = shift @_;

    my $spectemplate = qq(module X86-SEMANTICS-SPEC
  imports X86-SEMANTICS

  rule
    <k>
$spec_code => exit_0
    </k>
    <entrypoint> zeroMIntW64 </entrypoint>
    <nextLoc> zeroMIntW64  </nextLoc>
    <memstate>
      <cmem> .Map </cmem>
      <dmem> .Map </dmem>
    </memstate>

    <regstate>
$regstateConfig
    </regstate>
    <regstatequeue> .List => _ </regstatequeue>
endmodule);

    return $spectemplate;
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
    my $counter =0 ;
    for my $line (@lines) {
        chomp $line;

        #print "Line: " . $line . "\n";
        if ( $line =~ m/$kpatterns[0]/ ) {

            #print "Match: " . $1 . "=>" . $2 . "\n";
            push( @{ $kstateMap{$1} }, $2 );
        }
        elsif ( $line =~ m/$kpatterns[1]/ ) {
            my $reg = $1;
            my $val = utils::trim($2);
            if($val =~ m/NaN/) {
              push @{ $kstateMap{$reg} }, "NaN";
            } else {
              push @{ $kstateMap{$reg} }, $val;
            }
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
            push @xstates, "0x".$2.$1;
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

#if ( $xnum =~ /([\dabcdef]+), ([\dabcdef]+)/ ) {
    if ( $xnum =~ /0x([\dabcdef]+)/ ) {
#$xhexnum = $1 . $2;
        $xhexnum = $1;
    }
    else {
        #print "Check3: ".$xnum."\n";
        $xhexnum = toHex( $xnum, $bit );
    }

    if ( $khexnum eq "" or $xhexnum eq "" ) {
        failInfo("Cannot convert to hex\n");
        return 0;
    }

    # print "Check2: " . $khexnum . " " . $xhexnum . "\n";
    if ( $xhexnum eq $khexnum ) {
        return 1;
    }
    else {
        failInfo("$xhexnum != $khexnum\n");
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
        if ( $kstates[$i] eq "NaN" ) {

            info("\"NaN\" found");
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

####################################
sub checkBaseInstr {
###################################
    my $encode = shift @_;
    if (
           $encode eq "adcw_r16_r16"
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

        # 3 Not implemented
        #or $encode eq "vcvtpd2dq_xmm_ymm"
        #or $encode eq "vcvtps2dq_ymm_ymm"

        #or $encode eq "vcvtpd2ps_xmm_ymm"

        or $encode eq "vcvtps2pd_ymm_xmm"

        # 2 Not implemented
        #or $encode eq "vcvttpd2dq_xmm_ymm"
        #or $encode eq "vcvttps2dq_ymm_ymm"

        or $encode eq "callq_label"
      )
    {
        return 1;
    }

    return 0;
}

sub find_stratum {
    my $opcode      = shift @_;
    my $strata_path = shift @_;
    my $debugprint  = shift @_;
    my $depth       = 0;
    my $count       = 0;

    my $filepath = $strata_path . "/" . $opcode . ".s";

    #debugInfo( "In file : " . $filepath . "\n", 1 );
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
            my $instr = utils::trim($1);
            my $test  = utils::trim($2);

            # Instr might contain immediates with $, need to
            # escape that.
            $instr =~ s/\$/\\\$/g;

            ## Alternative way to find opcode
#            my $encode = instr_to_opcode( $instr, $debugprint );
#
#            if ( $test ne $encode ) {
#                if (
#                    (
#                            $test eq "movq_r64_imm64"
#                        and $encode eq "movq_r64_imm32"
#                    )
#                    or
#                    ( $test eq "xchgw_r16_r16" and $encode eq "xchgw_r16_ax" )
#                    or
#                    ( $test eq "xchgl_r32_r32" and $encode eq "xchgl_r32_eax" )
#                    or
#                    ( $test eq "xchgq_r64_r64" and $encode eq "xchgq_rax_r64" )
#                    or
#                    ( $test eq "xchgq_r64_r64" and $encode eq "xchgq_r64_rax" )
#                  )
#                {
#                    # Ok causes
#                    $encode = $test;
#                }
#                else {
#                    print("$opcode::$test::$encode::\n");
#                    failInfo("$opcode::$test::$encode::\n");
#                }
#            }
            my $encode = $test;

            #debugInfo( $instr . "::" . $encode . "::\n", 1 );

            if ( checkBaseInstr($encode) ) {

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
                $depth = utils::max( $depth, 1 + $temp_depth );
                $count = $count + $temp_count;
            }
        }
    }

    return ( $depth, $count );
}

# Given opcode get the instr from the data-reg/instructions
#############################################
sub getTargetInstr {
#############################################
    my $opcode     = shift @_;
    my $path       = shift @_;
    my $debugprint = shift @_;
    my $path = "/home/sdasgup3/Github/strata-data/data-regs/instructions/";

    my $filepath = $path . "/" . $opcode . "/" . $opcode . ".s";
    my $metapath = $path . "/" . $opcode . "/" . $opcode . ".meta.json";
    my $instr    = "";
    my $metadata = "";

    # Find the concrete instruction.
    debugInfo( "[getTargetInstr] In file : " . $filepath . "\n", $debugprint );
    open( my $fp, "<", $filepath ) or die "cannot open $filepath: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;

        if ( $line =~ m/\.text|\.globl|\.type|^#.*|\.target|\.size|retq/ ) {
            next;
        }
        $instr = $line;
        $instr = utils::trim($instr);
    }

    return $instr;
}

# Given opcode get the .etadata from the data-reg/instructions
#############################################
sub getMDFromOpcode {
#############################################
    my $opcode     = shift @_;
    my $debugprint = shift @_;
    my $path = "/home/sdasgup3/Github/strata-data/data-regs/instructions/";

    my $metapath = $path . "/" . $opcode . "/" . $opcode . ".meta.json";
    my $metadata = "";

    # Find the read/write set using metadata.
    debugInfo( "[getMDFromOpcode] In file : " . $metapath . "\n", $debugprint );
    open( my $fp, "<", $metapath ) or die "cannot open $metapath: $!";
    my @lines = <$fp>;
    for my $line (@lines) {
        if ( $line =~ m/def_in|live_out|def_in_formal|live_out_formal/ ) {
            $metadata =
              $metadata . utils::removequotes( utils::trim($line) ) . "\n";
        }
    }

    return $metadata;
}

#####################################
sub instrGetOperands {
#####################################
    my $instr      = shift @_;
    my @returnInfo = ();
    my @components = split( / /, $instr );
    if ( scalar(@components) == 1 ) {
        return @returnInfo;
    }

    for ( my $i = 1 ; $i < scalar(@components) ; $i++ ) {
        my $opr = $components[$i];
        $opr = utils::trim( $opr, "," );
        push @returnInfo, $opr;
    }

    return @returnInfo;
}

#################################################
sub getOpList {
################################################
    my $opcode     = shift @_;
    my $path       = shift @_;
    my $debugprint = shift @_;

    my $filepath = $path . "/" . $opcode . ".s";

    open( my $fp, "<", $filepath ) or die "cannot open $filepath: $!";
    my @lines      = <$fp>;
    my $returnInfo = "$opcode=>";

    for my $line (@lines) {
        chomp $line;

        if ( $line =~ m/\.text|\.globl|\.type|^#.*|\.target|\.size|retq/ ) {
            next;
        }

        if ( $line =~ m/^(.*)#.*OPC=(.*)/ ) {
            $returnInfo = $returnInfo . " ";
            my $instr  = $1;
            my $encode = $2;
            $instr = utils::trim($instr);
            my @opList = instrGetOperands($instr);
            $returnInfo = $returnInfo . join( " ", @opList );
        }
    }
    $returnInfo = $returnInfo . "\n";
    return $returnInfo;
}

## Input: Concrete Instruction.
## Output: Read/Write reg set in a store, no way to distiguish between R/W/U
###########################################
sub getRWsetOfInstr {
###########################################
    my $instr      = shift @_;
    my $debugprint = shift @_;
    my $binpath =
      "/home/sdasgup3/Install/strata/stoke/src/ext/x64asm/bin/instr_info";
    my $returnInfo = "";
    my %store      = ();

    if ( $instr =~ m/callq \.(.*)/ ) {
        my $pseduInstr = $1;
        if ( $pseduInstr =~ m/clear_(.*)/ ) {
            $store{"%$1"} = 1;
        }
        elsif ( $pseduInstr =~ m/write_(.*)_to_(.*)/ ) {
            $store{"%$1"} = 1;
            $store{"%$2"} = 1;
        }
        elsif ( $pseduInstr =~ m/read_(.*)_into_(.*)/ ) {
            $store{"%$1"} = 1;
            $store{"%$2"} = 1;
        }
        elsif ( $pseduInstr =~ m/set_szp_for_(.*)/ ) {
            $store{"%$1"} = 1;
            $store{"%sf"} = 1;
            $store{"%zf"} = 1;
            $store{"%pf"} = 1;
        }
        elsif ( $pseduInstr =~ m/set_(of|cf|zf|pf|af|sf)/ ) {
            $store{"%$1"} = 1;
        }
        elsif ( $pseduInstr =~ m/move_(.*)_to_byte_\d+_of_(.*)/ ) {
            $store{"%$1"} = 1;
            $store{"%$2"} = 1;
        }
        elsif ( $pseduInstr =~ m/move_byte_\d+_of_(.*)_to_(.*)/ ) {
            $store{"%$1"} = 1;
            $store{"%$2"} = 1;
        }
        elsif ( $pseduInstr =~ m/move_128_032_(.*)_(.*)_(.*)_(.*)_(.*)/ ) {
            $store{"%$1"} = 1;
            $store{"%$2"} = 1;
            $store{"%$3"} = 1;
            $store{"%$4"} = 1;
            $store{"%$5"} = 1;
        }
        elsif ( $pseduInstr =~ m/move_032_128_(.*)_(.*)_(.*)_(.*)_(.*)/ ) {
            $store{"%$1"} = 1;
            $store{"%$2"} = 1;
            $store{"%$3"} = 1;
            $store{"%$4"} = 1;
            $store{"%$5"} = 1;
        }
        elsif ( $pseduInstr =~ m/move_\d+_\d+_(.*)_(.*)_(.*)/ ) {
            $store{"%$1"} = 1;
            $store{"%$2"} = 1;
            $store{"%$3"} = 1;
        }

        return ( $returnInfo, \%store );
    }

    ## Run instr_info to get the R/W set
    # Escape the $ sign (if present)
    $instr =~ s/\$/\\\$/g;
    execute("echo $instr | $binpath 1>/tmp/xxx 2>&1");

    my $filepath = "/tmp/xxx";
    open( my $fp, "<", $filepath )
      or die "[instr_to_opcode]cannot open $filepath: $!";
    my @lines = <$fp>;

    for my $line (@lines) {
        chomp $line;

        #debugInfo( $line . "\n", $debugprint );
        if ( $line =~ m/read|write|undef|flags/ ) {
            $returnInfo = $returnInfo . utils::trim($line) . "\n";
            if ( $line =~ m/:\{(.*)\}/ ) {
                my @temps = split( " ", $1 );
                for my $temp (@temps) {
                    $temp = utils::trim($temp);
                    if ( "" ne $temp ) {
                        $store{$temp} = 1;
                    }
                }

            }
        }
    }

    ## For instrs like vxorps $xmm2, %xmm2, %xm7 the R provided by instr_info is null.
    ## As the dest is simply zeroed.
    ## So its better to add the operand from the instr itself.
    my $operandListFromInstr_ref =
      getOperandListFromInstr( $instr, $debugprint );
    for my $temp ( @{$operandListFromInstr_ref} ) {
        $store{$temp} = 1;
    }

    debugInfo( "[getRWsetOfInstr] rw set: $instr::$returnInfo" . "\n",
        $debugprint );
    return ( $returnInfo, \%store );
}

sub getStrataBVFormula {
    my $instr      = shift @_;
    my $debugprint = shift @_;
    my $binpath =
"/home/sdasgup3/Install/strata/stoke/bin/stoke_debug_circuit --strata_path /home/sdasgup3/Github/strata-data/circuits/ --code";

    # Escape the $ sign (if present)
    $instr =~ s/\$/\\\$/g;
    execute("$binpath \"$instr\" 1>/tmp/yyy 2>&1");

    my $filepath = "/tmp/yyy";
    open( my $fp, "<", $filepath )
      or die "[instr_to_opcode]cannot open $filepath: $!";
    my @lines = <$fp>;

    return join( "", @lines );
}

##################################################
sub replaceCallWithPseudoInsr {
##################################################
    my $instr      = shift @_;
    my $debugprint = shift @_;

    debugInfo( "::" . $instr . "::", $debugprint );

    if ( $instr =~ m/\.clear_(\w+)/ ) {
        my $flag = $1;
        return "setFlag( mi(1, 0), " . "\"" . uc($flag) . "\")";
    }
    elsif ( $instr =~ m/\.set_(of|cf|zf|pf|af|sf)/ ) {
        my $flag = $1;
        return "setFlag( mi(1, 1), \"" . uc($flag) . "\")";
    }
    elsif ( $instr =~ m/\.write_(\w+)_to_(\w+)/ ) {
        my $r    = "%" . $1;
        my $flag = $2;
        return "writeRegisterToFlag( " . $r . ", \"" . uc($flag) . "\")";
    }
    elsif ( $instr =~ m/\.read_(\w+)_into_(\w+)/ ) {
        my $flag = $1;
        my $r    = "%" . $2;
        return "readFlagToRegister( \"" . uc($flag) . "\", " . $r . " )";
    }
    elsif ( $instr =~ m/set_szp_for_(\w+)/ ) {
        my $r = "%" . $1;
        return "setSZPForRegister( " . $r . " )";
    }
    elsif ( $instr =~ m/move_(\w+)_to_byte_(\d+)_of_(\w+)/ ) {
        my $r8     = "%" . $1;
        my $bitnum = $2;
        my $rN     = "%" . $3;
        return "movByteToPosOfReg( " . $r8 . ", " . $bitnum . ", " . $rN . " )";
    }
    elsif ( $instr =~ m/move_byte_(\d+)_of_(\w+)_to_(\w+)/ ) {
        my $bitnum = $1;
        my $rN     = "%" . $2;
        my $r8     = "%" . $3;
        return "movPosOfRegToByte( " . $bitnum . ", " . $rN . ", " . $r8 . " )";
    }
    elsif ( $instr =~ m/move_128_032_(\w+)_(\w+)_(\w+)_(\w+)_(\w+)/ ) {
        my $x  = "%" . $1;
        my $r1 = "%" . $2;
        my $r2 = "%" . $3;
        my $r3 = "%" . $4;
        my $r4 = "%" . $5;

        # R1, R2, R3, R4 could be Xmm, R32
        my $destW = 32;
        if ( $r1 =~ m/xmm/ ) {
            $destW = 128;
        }

        return
            "splitXmmToR32( "
          . $x . ", "
          . $r1 . ", "
          . $r2 . ", "
          . $r3 . ", "
          . $r4 . ", "
          . $destW . " )";
    }
    elsif ( $instr =~ m/move_032_128_(\w+)_(\w+)_(\w+)_(\w+)_(\w+)/ ) {
        my $x1 = "%" . $1;
        my $x2 = "%" . $2;
        my $x3 = "%" . $3;
        my $x4 = "%" . $4;
        my $x5 = "%" . $5;
        return
            "combineR32ToXmm( "
          . $x1 . ", "
          . $x2 . ", "
          . $x3 . ", "
          . $x4 . ", "
          . $x5 . " )";
    }
    elsif ( $instr =~ m/move_(\d+)_(\d+)_(\w+)_(\w+)_(\w+)/ ) {
        my $m  = $1;
        my $n  = $2;
        my $r1 = "%" . $3;
        my $r2 = "%" . $4;
        my $r3 = "%" . $5;

        $m =~ s/^0//;
        $n =~ s/^0//;

        if ( $m == 2 * $n ) {
            return "split2NToN($r1,  $r2, $r3 , $n)";
        }

        if ( $n == 2 * $m and $m != 64 ) {
            return "combineNTo2N($r1,  $r2, $r3, $m, $n, $m)";
        }
        else {
            if ( $r1 =~ m/xmm/ ) {
                return "combineNTo2N($r1,  $r2, $r3, 64, 128, 128)";
            }
            else {
                return "combineNTo2N($r1,  $r2, $r3, 64, 128, 64)";
            }
        }
    }

    print("Unknown call label: $instr\n");
    return "";
}

########################################
sub getInstrsFromCircuit {
#####################################
    my $opcode       = shift @_;
    my $strata_path  = shift @_;
    my $debugprint   = shift @_;
    my @instr_arr    = ();
    my @encode_arr   = ();
    my @orig_circuit = ();

    my $filepath = $strata_path . "/" . $opcode . ".s";
    debugInfo( "In file : " . $filepath . "\n", $debugprint );
    open( my $fp, "<", $filepath )
      or die "[getInstrsFromCircuit] cannot open $filepath: $!";

    utils::info("Reading circuit from $filepath");
    my @lines = <$fp>;
    for my $line (@lines) {
        chomp $line;

        if ( $line =~ m/\.text|\.globl|\.type|^#.*|\.target|\.size|retq/ ) {
            next;
        }

        debugInfo( "Line::" . $line . "\n", $debugprint );

        if ( $line =~ m/^(.*)#.*OPC=(.*)/ ) {
            my $instr  = $1;
            my $encode = $2;
            $instr  = utils::trim($instr);
            $encode = utils::trim($encode);
            $line   = utils::trim($line);
            push @instr_arr,    $instr;
            push @encode_arr,   $encode;
            push @orig_circuit, "circuit:" . $line;
        }
    }
    return \@instr_arr, \@encode_arr, \@orig_circuit;
}

# Get the spec code used in <cmem> </cmem>
# Handles converting call tp pseudo instr
##################################################
sub getSpecCode {
##################################################
    my $opcode     = shift @_;
    my $debugprint = shift @_;

    my ( $instr_arr_ref, $encode_arr_ref, $orig_circuit_ref ) =
      getInstrsFromCircuit( $opcode, $strata_path, $debugprint );
    my @instr_arr        = @{$instr_arr_ref};
    my @encode_arr       = @{$encode_arr_ref};
    my @orig_circuit_arr = @{$orig_circuit_ref};

    ## Obtain the Process RW set.
    my ( $dc1, $writeSet_ref, $undefSet_ref, $dc2 ) =
      processRWSET( $opcode, $debugprint, 1 );
    my %writeSet = %{$writeSet_ref};

    ## Issue a "need to inspect" warning if we have undefined set.
    if ( scalar( keys %{$undefSet_ref} ) ) {
        utils::warnInfo("[getSpecCode] Undef Present: $opcode");
        utils::printMap(\%{$undefSet_ref}, "Undef Set", 1);
    }

    ## Generate the save rstore code for resgisters which are cloberred
    ## more that what is guarenteed by the R/W set.
    my $saveCode    = "";
    my $restoreCode = "";
    my $counter     = 0;
    for my $reg ( keys %writeSet ) {
        if ( $reg eq "" ) {
            next;
        }

        ## Check if $rw is the parent reg
        my $preg = $subRegToReg{$reg};
        if ( $preg ne $reg ) {
            $counter++;
            if ( $counter == 3 ) {
                utils::failInfo("Cannot handle $counter save restores\n");
            }
            my $regS  = $getRegSize{$reg};
            my $pregS = $getRegSize{$preg};
##my $bitWToSave = ($pregS - $regS);

            ## lets assume that we might have to save 2 chucks
            ## chuckSize[1]...chuckStart[1]  chuckSize[0]...chuckStart[0]
            my @chuckStart = ( 0, 0 );
            my @chuckSize  = ( 0, 0 );
            my $regStart   = 0;

            if ( $reg =~ m/ah|bh|ch|dh/ ) {
                $chuckStart[0] = 0;
                $chuckSize[0]  = 8;

                $chuckStart[1] = 16;
                $chuckSize[1]  = ( $pregS - 16 );

                $regStart = 8;
            }
            else {
                $chuckStart[0] = $regS;
                $chuckSize[0]  = ( $pregS - $regS );
                $regStart      = 0;
            }

            $reg  = "%" . $reg;
            $preg = "%" . $preg;

            $saveCode =
              $saveCode . "saveRegister($preg, \"SPAD$counter\") ~>\n";
            $restoreCode = $restoreCode
              . "restoreRegister(\"SPAD$counter\", $chuckStart[0], $chuckSize[0], $chuckStart[1], $chuckSize[1],
          $regStart, $regS, $preg) ~>\n";
        }
    }

    my $spec_code = $saveCode;
    for ( my $i = 0 ; $i < scalar(@instr_arr) ; $i++ ) {
        my $instr  = $instr_arr[$i];
        my $encode = $encode_arr[$i];

        if ( $instr =~ m/callq/ ) {
            $instr = replaceCallWithPseudoInsr( $instr, $debugprint );
            $spec_code = $spec_code . $instr . " ~>\n";
        }
        else {
            if ( opcHasOperand($encode) ) {
                $spec_code =
                  $spec_code
                  . "execinstr ( $instr , .Typedoperands )" . " ~>\n";
            }
            else {
                $spec_code =
                  $spec_code . "execinstr ( $instr  .Typedoperands )" . " ~>\n";
            }
        }
        debugInfo( "Instr::" . $instr . "::\n", $debugprint );
    }

    if ( "" ne $restoreCode ) {
        $spec_code = $spec_code . $restoreCode;
    }

    $spec_code = $spec_code
      . "execinstr ( nop .Typedoperands ) ~> inforegisters ~> fetch" . "\n";

    debugInfo( $spec_code . "\n", $debugprint );

    return ( $spec_code, $counter );
}

sub mixfix2infix {
    my $arg        = shift @_;
    my $debugprint = shift @_;

    my $bin_op = (
qr/orBool|==K|\+Int|\-Int|>=Int|<=Int|>Int|<Int|==Int|<<Int|\+Float|\*Float|\/Float|\-Float/
    );
    my $unary_op    = (qr/notBool/);
    my $terniary_op = (qr/_#then_#else_#fi/);
    while (1) {
        if ( $arg =~ m/(.+)(#if|#ifMInt|#ifBool|#ifMInts)$terniary_op(.+)/ ) {
            my $pre  = $1;
            my $opr  = $2;
            my $post = $3;

            debugInfo( "Got Terniary op\n", $debugprint );
            my ( $op_arg, $rest ) = selectbraces( $post, 1 );
            my @args = findArgs( $op_arg, 3 );

            debugInfo( "Arg1: " . $args[0] . "\n", $debugprint );
            debugInfo( "Arg2: " . $args[1] . "\n", $debugprint );
            debugInfo( "Arg3: " . $args[2] . "\n", $debugprint );

            $arg =
                $pre
              . "($opr ("
              . $args[0]
              . " ) #then ( "
              . $args[1]
              . " ) #else ( "
              . $args[2]
              . " ) #fi) "
              . $rest;

            #print "\nAfter:" . $arg . "\n\n";
        }
        elsif ( $arg =~ m/(.+)_($bin_op)\_(.+)/ ) {

            my $op = $2;
            debugInfo( "\n\nGot Binary op: $op\n", $debugprint );

            #print "Front: " . $1 . "\n\n" . " Back: " . $3 . "\n\n";
            my ( $op_arg, $rest ) = selectbraces( $3, 1 );

            debugInfo( "Arg: " . $op_arg . "\n", $debugprint );
            debugInfo( "Rest: " . $rest . "\n",  $debugprint );

            my @args = findArgs( $op_arg, 2 );

            debugInfo( "Arg1: " . $args[0] . "\n", $debugprint );
            debugInfo( "Arg2: " . $args[1] . "\n", $debugprint );

            $arg =
                $1 . " ( "
              . $args[0] . " " . " $op " . " "
              . $args[1] . " ) "
              . $rest;

            #print "\nAfter:" . $arg . "\n";
        }
        elsif ( $arg =~ m/(.+)($unary_op)\_(.+)/ ) {

            #print "Front: " . $1 . "\n\n" . " Back: " . $3 . "\n\n";
            my ( $op_arg, $rest ) = selectbraces( $3, 1 );
            my $op = $2;
            debugInfo( "Got unary op: $op\n", $debugprint );

            #print "Arg: " . $op_arg . "\n";
            #print "Rest: " . $rest . "\n";

            my @args = findArgs( $op_arg, 1 );

            debugInfo( "Arg1: " . $args[0] . "\n", $debugprint );

            $arg = $1 . " $op " . " ( " . $args[0] . " ) " . $rest;

            #print "\n" . $arg . "\n";
        }
        else {
            last;
        }
    }

    return $arg;
}

sub findArgs {
    my $line     = shift @_;
    my $num_args = shift @_;
    my @args     = ();

    for ( my $i = 0 ; $i < $num_args ; $i++ ) {
        if ( $i == $num_args - 1 ) {
            push @args, $line;
            last;
        }
        if ( $line =~ m/^true\s*,\s*(.*)/ ) {
            push @args, "true";
            $line = $1;
        }
        elsif ( $line =~ m/^false\s*,\s*(.*)/ ) {
            push @args, "false";
            $line = $1;
        }
        elsif ( $line =~ m/^([-]?[e\.\+\dfd]+)\s*,\s*(.*)/ ) {
            push @args, $1;
            $line = $2;
        }
        else {
            my ( $op_arg, $rest ) = selectbraces( $line, 0 );
            push @args, $op_arg;
            $rest =~ s/\s*,\s*//;
            $line = $rest;
        }
    }
    return @args;
}

sub selectbraces {
    my $arg     = shift @_;
    my $remove  = shift @_;
    my $op_arg  = "";
    my $rest    = "";
    my $counter = 0;

    my @arr = split( //, $arg );
    my $first = 0;
    for ( my $i = 0 ; $i < scalar(@arr) ; $i++ ) {
        if ( $arr[$i] eq "(" ) {
            $counter++;
            $first = 1;
        }
        if ( $arr[$i] eq ")" ) {
            $counter--;
        }
        $op_arg = $op_arg . $arr[$i];
        if ( 0 != $first and $counter == 0 ) {
            $rest = join( "", @arr[ $i + 1 .. scalar(@arr) - 1 ] );
            last;
        }
    }

    $op_arg =~ s/\((.*)\)/$1/ if $remove == 1;

    ## Handling ():>Bool
    if ( $rest =~ m/^:>Bool/ ) {
        $rest =~ s/^:>Bool//;
        $op_arg = $op_arg . ":>Bool";
    }

    return ( $op_arg, $rest );
}

######################################
sub processSpecOutput {
######################################
    my $specoutput = shift @_;
    my $debugprint = shift @_;

    my %rsmap     = ();
    my %rev_rsmap = ();
    my @reglines  = ();

    open( my $fp, "<", $specoutput )
      or die " [create_spec] cannot open $specoutput : $! ";
    my @lines = <$fp>;
    close($fp);

    # Preprocess
    for ( my $i = 0 ; $i < scalar(@lines) ; $i++ ) {
        my $line = $lines[$i];
        chomp $line;

        ## Obtaiing the register values from Init term.
        if ( $line =~ m/^InitialTerm:/ ) {
            my $initTerm = $lines[ $i + 1 ];

            #print "InitialTerm: " . $initTerm . "\n";

            my @matches = $initTerm =~
m/String\@STRING-SYNTAX\(#""\w+""\) \|\-\> mi\(Int\@INT-SYNTAX\(#"\d+"\),, _\d+:Int\@INT-SYNTAX\)/g;

            #debugInfo( print join( "\n", @matches ), $debugprint );

            for my $match (@matches) {

                #print "Matching Lines: " . $match . "\n";
                if ( $match =~
m/String\@STRING-SYNTAX\(#""(\w+)""\) \|\-\> mi\(Int\@INT-SYNTAX\(#"\d+"\),, _(\d+):Int\@INT-SYNTAX\)/
                  )
                {
                    $rsmap{"$1"} = $2;
                    $rev_rsmap{$2} = "$1";
                }
            }

            printMap( \%rsmap, "REG -> NUM", $debugprint );
        }

        # Obtaining the final values of registers.
        if ( $line =~ m/^FinalTerm:/ ) {
            my $finalTerm = $lines[ $i + 1 ];

            #print "FinalTerm: " . $finalTerm . "\n\n";
            my $regstate;
            if ( $finalTerm =~ m/<regstate>\((.*)\s*\),,\s*<regstatequeue>/ ) {
                $regstate = $1;

                #print "Regstate: " . $regstate . "\n";
            }
            if ( !defined($regstate) ) {
                failInfo("Error 1");
            }
            @reglines = split( /String\@STRING-SYNTAX/, $regstate );
        }
    }

    printArray( \@reglines, "In processSpecOutput", $debugprint );

    #print join( "\n", @reglines );
    if ( scalar(@reglines) == 0 ) {
        failInfo("processSpecOutput: No FinalTerm in $specoutput");
    }
    return ( \%rsmap, \%rev_rsmap, \@reglines );
}

#############################
## watchdog to check if must != may
## storeRegs whether we want to store the al or RAX
sub processRWSET {
##############################
    my $opcode     = shift @_;
    my $debugprint = shift @_;
    my $storeRegs  = shift @_;

    my %mayRS  = ();
    my %mustRS = ();
    my %mayWS  = ();
    my %mustWS = ();
    my %mayUS  = ();
    my %mustUS = ();

    my $targetinstr = getTargetInstr($opcode);
    my ( $rwset, $store_ref ) = getRWsetOfInstr( $targetinstr, $debugprint );
    my @lines = split( "\n", $rwset );

    for my $line (@lines) {
        chomp $line;

        if ( $line =~ m/(maybe|must) (read|write|undef):\{(.*)\}/ ) {
            my @regs      = split( / /, $3 );
            my $mayOrmust = $1;
            my $RWU       = $2;
            for my $reg (@regs) {
                $reg =~ s/%//g;
                $reg = utils::trim($reg);

                if ( "" eq $reg ) {
                    next;
                }

                my $storeVal = uc( $subRegToReg{$reg} );
                if ( defined($storeRegs) and $storeRegs == 1 ) {
                    $storeVal = $reg;
                }

                if ( $RWU eq "read" ) {
                    if ( $mayOrmust eq "maybe" ) {
                        $mayRS{$storeVal} = 1;
                    }
                    else {
                        $mustRS{$storeVal} = 1;
                    }

                }
                elsif ( $RWU eq "write" ) {

                    if ( $mayOrmust eq "maybe" ) {
                        $mayWS{$storeVal} = 1;
                    }
                    else {
                        $mustWS{$storeVal} = 1;
                    }
                }
                elsif ( $RWU eq "undef" ) {

                    if ( $mayOrmust eq "maybe" ) {
                        $mayUS{$storeVal} = 1;
                    }
                    else {
                        $mustUS{$storeVal} = 1;
                    }
                }
            }
        }
    }

    my $alarm = 0;
    utils::info("$opcode: Check if May == Must");
    ## Check if may == must for Read Set
    my %RS = ();
    for my $key ( keys %mayRS ) {
        if ( !exists $mustRS{$key} ) {
            $alarm = 1;
            utils::warnInfo(
                "May Read $key does not belong to Must Read: $opcode");
        }
        $RS{$key} = 1;
    }
    for my $key ( keys %mustRS ) {
        if ( !exists $mayRS{$key} ) {
            $alarm = 1;
            utils::warnInfo(
                "Must Read $key does not belong to May Read: $opcode");
        }
        $RS{$key} = 1;
    }

    ## Check if may == must for Write Set
    my %WS = ();
    for my $key ( keys %mayWS ) {
        if ( !exists $mustWS{$key} ) {
            $alarm = 1;
            utils::warnInfo(
                "May Write $key does not belong to Must Write: $opcode");
        }
        $WS{$key} = 1;
    }
    for my $key ( keys %mustWS ) {
        if ( !exists $mayWS{$key} ) {
            $alarm = 1;
            utils::warnInfo(
                "Must Write $key does not belong to May Write: $opcode");
        }
        $WS{$key} = 1;
    }

    ## Check if may == must for Undef Set
    my %US = ();
    for my $key ( keys %mayUS ) {
        if ( !exists $mustUS{$key} ) {
            $alarm = 1;
            utils::warnInfo(
                "May Undef $key does not belong to Must Undef: $opcode");
        }
        $US{$key} = 1;
    }
    for my $key ( keys %mustUS ) {
        if ( !exists $mayUS{$key} ) {
            $alarm = 1;
            utils::warnInfo(
                "Must Undef ($key) does not belong to May Undef: $opcode");
        }
        $US{$key} = 1;
    }

    if ( 0 == $alarm ) {
        utils::passInfo("equal");
    }

    for my $key ( keys %mustRS ) {
        debugInfo( "::" . $key . "::\n", $debugprint );
    }
    for my $key ( keys %mustWS ) {
        debugInfo( "::" . $key . "::\n", $debugprint );
    }
    for my $key ( keys %mustUS ) {
        debugInfo( "::" . $key . "::\n", $debugprint );
    }

    return ( \%RS, \%WS, \%US, \%mustUS );
}

sub selectRules {
    my $workList_ref         = shift @_;
    my $readSet_ref          = shift @_;
    my $writeSet_ref         = shift @_;
    my $undefSet_ref         = shift @_;
    my $mustUndefSet_ref     = shift @_;
    my $actual2psedoRegs_ref = shift @_;
    my $rsmap_ref            = shift @_;
    my $rev_rsmap_ref        = shift @_;
    my $debugprint           = shift @_;

    my @workList         = @{$workList_ref};
    my %readSet          = %{$readSet_ref};
    my %writeSet         = %{$writeSet_ref};
    my %undefSet         = %{$undefSet_ref};
    my %mustUndefSet     = %{$mustUndefSet_ref};
    my %actual2psedoRegs = %{$actual2psedoRegs_ref};
    my %rsmap            = %{$rsmap_ref};
    my %rev_rsmap        = %{$rev_rsmap_ref};

    my $returnInfo      = "";
    my %deleteIndex     = ();
    my %collectedMINUMs = ();

    utils::printMap( \%readSet,  "selectRules: Read Set",  $debugprint );
    utils::printMap( \%writeSet, "selectRules: Write Set", $debugprint );
    utils::printMap( \%undefSet, "selectRules: Undef Set", $debugprint );
    utils::printMap( \%mustUndefSet, "selectRules: Must Undef Set",
        $debugprint );

    for ( my $i = 0 ; $i < scalar(@workList) ; $i++ ) {
        my $result = $workList[$i];
        if ( $result =~ m/"(\w+)" \|-> (.*)/ ) {
            my $reg = $1;
            my $val = $2;

            ## If the register is not in read/write/undef sets, remove it.
            if (    !exists( $readSet{$reg} )
                and !exists( $writeSet{$reg} )
                and !exists( $undefSet{$reg} ) )
            {
                #$returnInfo = $returnInfo . "//" . $result . "\n\n";
                next;
            }

            #push @deleteIndex, $i;
            $deleteIndex{$i} = 1;
            ## If the register is must undef sets, include it
            if ( exists $mustUndefSet{$reg} ) {
                $returnInfo = $returnInfo

                  #. " \"$reg\" |-> (MI$rsmap{$reg} => undef)" . "\n\n";
                  . " \"$reg\" |-> (undef)" . "\n\n";
                next;
            }

            ## If the register is in write or may undef set, include it
            if ( exists( $writeSet{$reg} ) or exists( $undefSet{$reg} ) ) {

                ## Convert concrete reg to generic ones.
                if ( exists $actual2psedoRegs{$reg} ) {
                    $returnInfo =
                        $returnInfo
                      . "convToRegKeys($actual2psedoRegs{$reg}) |-> $val"
                      . "\n\n";
                }
                else {
                    ## Implicit registers inc flags
                    $returnInfo = $returnInfo . $result . "\n\n";
                }

                ## Check the val part to collect the MINUMs
                ## This denotes the minums used in the included rule section.
                my @MINUMS = $val =~ m/MI\d+/g;
                for my $minum (@MINUMS) {
                    $collectedMINUMs{$minum} = 1;
                }

                next;

            }

            ## exists($readSet{$reg} and !exists(write and undef set))
            ## Strata generated formulas agrees wih the target's write
            ## sets only => Even the read set can clobbered
            ## For example if R1 is in read set but nit in write set, then the following
            ## convToRegKeys(R1) |-> ( MI550 => xorMInt(MI549, orMInt(MI549, MI550)) )
            ## need to converted to
            ## convToRegKeys(R1) |-> ( MI550 => MI550 )
#            if ( exists $actual2psedoRegs{$reg} ) {
#                $returnInfo =
#                    $returnInfo
#                  . "convToRegKeys($actual2psedoRegs{$reg}) |-> (MI$rsmap{$reg} => MI$rsmap{$reg})"
#                  . "\n\n";
#            }
#            else {
#                $returnInfo =
#                  $returnInfo
#                  . " \"$reg\" |-> (MI$rsmap{$reg} => MI$rsmap{$reg})" . "\n\n";
#            }
        }
    }

    printMap( \%collectedMINUMs,  "CollecTed MINUNS",     $debugprint );
    printMap( \%actual2psedoRegs, "Actual to Psedu Regs", $debugprint );
    debugInfo( "[selectRules] Included based on R/WU: $returnInfo\n",
        $debugprint );

    ## All the collected MIs should be converted to getParentValue or getFlag
    for my $minum ( keys %collectedMINUMs ) {
        my $num    = $minum =~ s/MI(\d+)/$1/gr;
        my $regKey = $rev_rsmap{$num};

        #print "$regKey\n";
        if ( exists $actual2psedoRegs{$regKey} ) {
            $returnInfo =~
              s/$minum/getParentValue($actual2psedoRegs{$regKey}, RSMap)/g;
        }
        else {
            if ( $regKey =~ m/CF|PF|AF|ZF|SF|OF/ ) {
                $returnInfo =~ s/$minum/getFlag(\"$regKey\", RSMap)/g;
            }
            else {
                my $realreg = "%" . lc($regKey);
                $returnInfo =~ s/$minum/getParentValue($realreg, RSMap)/g;
            }
        }
    }

    debugInfo( "[selectRules] After removeing readSet: $returnInfo\n",
        $debugprint );
    utils::printMap( \%deleteIndex, "Deleted Index", $debugprint );

    ## Remove the included elements from the workList
    my @prunedWL = ();
    for ( my $i = 0 ; $i < scalar(@workList) ; $i++ ) {
        if ( exists $deleteIndex{$i} ) {

        }
        else {
            push @prunedWL, $workList[$i];
        }
    }

    utils::printArray( \@prunedWL, "Pruned WL", $debugprint );
    utils::printMap( \%collectedMINUMs, "Used MINUMS", $debugprint );

    ## At this point pruned workList includes thoses rules which are not in read/write/undef sets
    ## But they might include the definition of minums used in those included.
    ## We need to include those definitions
    for my $result (@prunedWL) {
        if ( $result =~ m/"(\w+)" \|-> \(\s*(MI\d+)\s*=> .*/ ) {
            my $reg       = $1;
            my $defnminum = $2;
            my $val       = $3;

            ## If the register is not in read/write/undef sets, remove it.
            if ( exists( $collectedMINUMs{$defnminum} ) ) {

       #                $returnInfo =
       #                  $returnInfo
       #                  . " \"$reg\" |-> ($defnminum => $defnminum)" . "\n\n";
                utils::failInfo("Sratch Pad found");
            }
        }
    }

    return $returnInfo;
}

##########################################
sub sanitizeSpecOutput {
##########################################
    my (
        $opcode,       $rsmap_ref,    $rev_rsmap_ref,
        $reglines_ref, $specfile_ref, $debugprint_ref
    ) = @_;
    my %rsmap      = %{$rsmap_ref};
    my %rev_rsmap  = %{$rev_rsmap_ref};
    my @reglines   = @{$reglines_ref};
    my $specfile   = ${$specfile_ref};
    my $debugprint = ${$debugprint_ref};

    my $instr = getTargetInstr( $opcode, $debugprint );

    ## Obtain the Process RW set.
    my ( $readSet_ref, $writeSet_ref, $undefSet_ref, $mustUndefSet_ref ) =
      processRWSET( $opcode, $debugprint );
    my %readSet      = %{$readSet_ref};
    my %writeSet     = %{$writeSet_ref};
    my %undefSet     = %{$undefSet_ref};
    my %mustUndefSet = %{$mustUndefSet_ref};


    ## Check if the Write set has more than one reg Keys.
    ## If yes, they may need to be scheduled.
    if(scalar(keys %writeSet) > 1) {
      my $count = 0;
      for my $key (keys %writeSet) {
        if ( $key !~ m/CF|PF|AF|ZF|SF|OF/ ) {
          $count++
        } 
      }
      if($count > 1) {
        utils::warnInfo("$opcode: More that one writes. May Need to schedule.")
      }
    }


    utils::printMap( \%readSet,  "selectRules: Read Set",  $debugprint );
    utils::printMap( \%writeSet, "selectRules: Write Set", $debugprint );
    utils::printMap( \%undefSet, "selectRules: Undef Set", $debugprint );
    utils::printMap( \%mustUndefSet, "selectRules: Must Undef Set",
        $debugprint );

    ## Obtain the correspondence between the generic opcode
    ## and its particular instance.
    my %actual2psedoRegs = ();
    my $operandListFromOpcode_ref =
      getOperandListFromOpcode( $opcode, $debugprint );
    my $operandListFromInstr_ref =
      getOperandListFromInstr( $instr, $debugprint );
    my @operandListFromOpcode = @{$operandListFromOpcode_ref};
    my @operandListFromInstr  = @{$operandListFromInstr_ref};

    if ( scalar(@operandListFromOpcode) != scalar(@operandListFromInstr) ) {
        utils::failInfo("Fatal Error opcode not matching actual instr");
    }

    my $counter = 0;
    for ( my $i = 0 ; $i < scalar(@operandListFromOpcode) ; $i++ ) {
        my $op1 = $operandListFromOpcode[$i];
        my $op2 = $operandListFromInstr[$i];

        $counter++;
        my $sort = getRegSort($op1);
        if ( $sort =~ m/^Xmm|^Ymm|^R.*/ ) {
            $actual2psedoRegs{ uc( $subRegToReg{ utils::trim( $op2, "%" ) } ) }
              = "R$counter";
        }
    }

    utils::printMap( \%actual2psedoRegs, "ActualToPseduRegs", $debugprint );

    ## Process begin
    ## stage 1
    my @workList = ();
    for my $line (@reglines) {
        chomp $line;

        debugInfo( "Unsanitied Lines:$line\n", $debugprint );

        if ( $line =~ m/RIP/ ) {
            next;
        }

        my $mod = $line;

        # sanitization
        $mod =~ s/,,/,/g;
        $mod =~ s/""/"/g;
        $mod =~ s/Int\@INT-SYNTAX\(#"([-]?\d+)"\)/$1/g;
        $mod =~ s/Float\@FLOAT-SYNTAX\(#"([-]?[\+e\.\dfd]+)"\)/$1/g;
        $mod =~ s/Bool\@BOOL-SYNTAX\(#"(\w+)"\)/$1/g;
        $mod =~ s/_([-]?\d+):Int\@INT-SYNTAX/_$1/g;
        $mod =~ s/MInt\@MINT\(#"(\d+)'([-]?\d+)"\)/mi($1, $2)/g;
        $mod =~ s/\.List\{"mintlist"\}\(\.KList\@BASIC-K\)/.MInts/g;
        $mod =~ s/undef\(\.KList\@BASIC-K\)/undef/g;
        $mod =~ s/\(#"(\w+)"\)/"$1"/g;
        $mod =~ s/\($//g;

        my $result = "";

        debugInfo( "Stage 1.1: " . $mod . "\n\n", $debugprint );

        #$mod =~ s/"(\w+)" \|-> (.*)/ "$1" |-> ( MI$rsmap{$1} => $2)/g;
        $mod =~ s/"(\w+)" \|-> (.*)/ "$1" |-> ($2)/g;

        #debugInfo( "Stage 1.2: " . $mod . "\n\n", $debugprint );

        if ( $mod =~ /_/ ) {
            $result = mixfix2infix( $mod, $debugprint );
        }
        else {
            $result = $mod;
        }

        # Local Optimzations
        ## Replace mi(W, _NUM) => MINUM
        $result =~ s/mi\(\d+, _(\d+)\)/MI$rsmap{$rev_rsmap{$1}}/g;
        debugInfo( "Result:$result\n", $debugprint );

        push @workList, $result;
    }

    utils::printArray( \@workList, "Init Worklist", $debugprint );

    my $returnInfo = selectRules(
        \@workList, \%readSet,      \%writeSet,
        \%undefSet, \%mustUndefSet, \%actual2psedoRegs,
        \%rsmap,    \%rev_rsmap,    $debugprint
    );

    debugInfo( "Final Rules : $returnInfo\n", $debugprint );

    return $returnInfo;
}

sub opcHasOperand {
    my $opcode = shift @_;
    chomp $opcode;
    $opcode = utils::trim($opcode);
    my @components = split( /_/, $opcode );
    return scalar(@components) > 1;
}

sub getRegSort {
    my $reg = shift @_;

    chomp $reg;

    if ( $reg eq "xmm" ) {
        return "Xmm";
    }
    if ( $reg eq "ymm" ) {
        return "Ymm";
    }
    if ( $reg eq "one" ) {
        return "\$0x1";
    }
    if ( $reg eq "rh" ) {
        return "Rh";
    }
    if ( $reg eq "cl" ) {
        return "\%cl";
    }
    if ( $reg eq "ax" ) {
        return "\%ax";
    }
    if ( $reg eq "eax" ) {
        return "\%eax";
    }
    if ( $reg eq "rax" ) {
        return "\%rax";
    }
    return uc($reg);
}

sub getOperandListFromInstr {
    my $instr       = shift @_;
    my $debugprint  = shift @_;
    my @operamdList = ();

    if ( $instr =~ m/(\w+)\s+(\S+)\s*,\s+(\S+)\s*,\s+(\S+)/ ) {
        debugInfo(
            "Three operands::"
              . uc( $subRegToReg{ utils::trim( $2, "%" ) } ) . "::"
              . uc( $subRegToReg{ utils::trim( $3, "%" ) } ) . "::"
              . uc( $subRegToReg{ utils::trim( $4, "%" ) } )
              . ":: \n ",
            $debugprint
        );
        push @operamdList, $2;
        push @operamdList, $3;
        push @operamdList, $4;
    }
    elsif ( $instr =~ m/(\w+)\s+(\S+)\s*,\s+(\S+)/ ) {
        debugInfo(
            "Two operands::"
              . uc( $subRegToReg{ utils::trim( $2, "%" ) } ) . "::"
              . uc( $subRegToReg{ utils::trim( $3, "%" ) } )
              . ":: \n ",
            $debugprint
        );
        push @operamdList, $2;
        push @operamdList, $3;
    }
    elsif ( $instr =~ m/(\w+)\s+(\S+)/ ) {
        debugInfo(
            "One operands::"
              . uc( $subRegToReg{ utils::trim( $2, "%" ) } )
              . ":: \n ",
            $debugprint
        );
        push @operamdList, $2;
    }

    return \@operamdList;
}

sub getOperandListFromOpcode {
    my $opcode      = shift @_;
    my $debugprint  = shift @_;
    my @operamdList = ();

    if ( $opcode =~ m/(\w+)_(.*)_(.*)_(.*)/ ) {
        my $op3 = $2;
        my $op2 = $3;
        my $op1 = $4;

        push @operamdList, $op1;
        push @operamdList, $op2;
        push @operamdList, $op3;

    }
    elsif ( $opcode =~ m/(\w+)_(.*)_(.*)/ ) {
        my $op2 = $2;
        my $op1 = $3;
        push @operamdList, $op1;
        push @operamdList, $op2;
    }
    elsif ( $opcode =~ m/(\w+)_(.*)/ ) {
        my $op1 = $2;
        push @operamdList, $op1;
    }

    return \@operamdList;
}

sub writeKDefn {
    my $semantics  = shift @_;
    my $koutput    = shift @_;
    my $opcode     = shift @_;
    my $debugprint = shift @_;

    my $module_name    = $opcode =~ s/_/-/gr;
    my $module_name_uc = uc($module_name);
    my $enc            = $opcode =~ s/_.*//gr;
    my $operands       = "";

    my $operamdList_ref = getOperandListFromOpcode( $opcode, $debugprint );
    my @operamdList     = @{$operamdList_ref};
    my $counter         = 0;
    for my $op (@operamdList) {
        $counter++;
        my $sort = getRegSort($op);
        if ( $sort =~ m/^Xmm|^Ymm|^R.*/ ) {
            if ( 1 == $counter ) {
                $operands = "R$counter:$sort";
            }
            else {
                $operands = $operands . ", R$counter:$sort";
            }
        }
        else {
            if ( 1 == $counter ) {
                $operands = $sort;
            }
            else {
                $operands = $operands . ", " . $sort;
            }
        }
    }

    if ( $counter != 0 ) {
        $operands = $operands . ", ";
    }

    open( my $fp, ">", $koutput )
      or die " [writeKDefn] cannot open $koutput : $! ";

    my $template = "";
    if ( "" eq $semantics ) {
        $template = qq(// Autogenerated using stratification.
requires "x86-configuration.k"

module $module_name_uc
  imports X86-CONFIGURATION

  rule <k>
    execinstr ($enc $operands .Typedoperands) => .
  ...</k>
endmodule

module $module_name_uc-SEMANTICS
  imports $module_name_uc
endmodule
);
    }
    else {
        $template = qq(// Autogenerated using stratification.
requires "x86-configuration.k"

module $module_name_uc
  imports X86-CONFIGURATION

  rule <k>
    execinstr ($enc $operands .Typedoperands) => .
  ...</k>
    <regstate>
RSMap:Map => updateMap(RSMap,
$semantics
)

    </regstate>
endmodule

module $module_name_uc-SEMANTICS
  imports $module_name_uc
endmodule
);
    }

    print $fp $template;

    ## Comment section in k file.
    ## Get Orig circuit
    my ( $dc1, $dc2, $orig_circuit_ref ) =
      getInstrsFromCircuit( $opcode, $strata_path, $debugprint );
    my $orig_circuit = join( "\n", @{$orig_circuit_ref} );

    ## get TargetInstr
    my $targetinstr = getTargetInstr( $opcode, $debugprint );

    ## get RW set
    my ( $rwset, $store_ref ) = getRWsetOfInstr( $targetinstr, $debugprint );

    ## get BV formula
    my $strata_BVFormula = getStrataBVFormula( $targetinstr, $debugprint );

    print $fp "/*"
      . "\nTargetInstr:\n"
      . $targetinstr
      . "\nRWSet:\n"
      . $rwset
      . "\nCircuit:\n"
      . $orig_circuit
      . "\nBVF:\n"
      . $strata_BVFormula . "\n" . "*/";
}

sub createSpecFile {
    my $opcode                  = shift @_;
    my $strata_path             = shift @_;
    my $specdir                 = shift @_;
    my $instantiated_instr_path = shift @_;
    my $debugprint              = shift @_;

    chomp $opcode;

    my $specfile = "$specdir/x86-semantics_${opcode}_spec.k";
    utils::info("createspec $opcode: $specfile");

    open( my $fp, ">", $specfile )
      or die "[create_spec] cannot open $specfile: $!";

    ## Create the <cmem> spec code </cmem>
    my ( $spec_code, $saveRestoreCount ) =
      kutils::getSpecCode( $opcode, $debugprint );

    ## Comment section in specfile.
    ## Get Orig circuit
    my ( $dc1, $dc2, $orig_circuit_ref ) =
      getInstrsFromCircuit( $opcode, $strata_path, $debugprint );
    my $orig_circuit = join( "\n", @{$orig_circuit_ref} );

    ## get TargetInstr
    my $targetinstr = getTargetInstr( $opcode, $debugprint );

    ## get RW set
    my ( $rwset, $store_ref ) = getRWsetOfInstr( $targetinstr, $debugprint );

    if ( "" eq $targetinstr or "" eq $rwset ) {
        utils::failInfo(
"$opcode: Either of targetinstr/rwset is missing from comment section"
        );
    }

    ## Get the init config ie. <regstate> here </regstate>
    ### Get the list of instr constituting the circuit of opcode
    my ( $instr_arr_ref, $encode_arr_ref, $orig_circuit_ref ) =
      getInstrsFromCircuit( $opcode, $strata_path, $debugprint );
    my @instr_arr = @{$instr_arr_ref};

    ### Get the RW Set of the constituing circuit insructions.
    my %circuitRWStore = ();
    for my $cinstr (@instr_arr) {
        my $store_ref = getRWsetOfInstr( $cinstr, $debugprint );
        my %store = %{$store_ref};
        printMap( \%store, "Circuit: $cinstr", 1 );
        for my $key ( keys %store ) {
            $circuitRWStore{ uc( $subRegToReg{ utils::trim( $key, "%" ) } ) } =
              1;
        }
    }
    printMap( \%circuitRWStore, "Total Circuit", 1 );

    ### Get the RW Set of the target instruction.
    my $store_ref          = getRWsetOfInstr( $targetinstr, $debugprint );
    my %store              = %{$store_ref};
    my %targetInstrRWStore = ();
    for my $key ( keys %store ) {
        $targetInstrRWStore{ uc( $subRegToReg{ utils::trim( $key, "%" ) } ) } =
          1;
    }
    printMap( \%targetInstrRWStore, "Target", 1 );

    my $regstateConfig = "";
    my $counter        = 1;
    $regstateConfig = "\"RIP\" |->    (mi(64, 0) => _)" . "\n";

    ## Add scratch pad regisers for save restores.
    if ( 0 != $saveRestoreCount ) {
        for ( my $i = 1 ; $i <= $saveRestoreCount ; $i++ ) {
            $regstateConfig =
              $regstateConfig . "\"SPAD$i\" |->    (mi(256, 0) => _)" . "\n";
        }
    }

    ### If the constituing RW set belongs to target's RW set, then then need to kept
    ### symbolic, else keep then zeroed out.
    for my $key ( sort keys %circuitRWStore ) {
        if ( "" eq $key ) {
            next;
        }
        my $mintSize = 64;
        if ( $key =~ m/YMM/ ) {
            $mintSize = 256;
        }
        elsif ( $key =~ m/CF|PF|AF|ZF|SF|OF/ ) {
            $mintSize = 1;
        }

        if ( exists $targetInstrRWStore{$key} ) {

            $regstateConfig =
              $regstateConfig
              . "\"$key\" |-> (mi($mintSize, ?I$counter:Int):MInt => _)" . "\n";
            $counter++;
        }
        else {
            $regstateConfig =
              $regstateConfig
              . "\"$key\" |-> (mi($mintSize, 0):MInt => _)" . "\n";
        }
    }

    ## Dump
    print $fp kutils::spec_template( $spec_code, $regstateConfig );
    print $fp "\n/*" . "\n"
      . "opcode:$opcode" . "\n"
      . "instr:$targetinstr" . "\n"
      . $rwset . "\n"
      . $orig_circuit . "\n*/";
}

sub runkprove {
    my $opcode     = shift @_;
    my $specdir    = shift @_;
    my $debugprint = shift @_;

    chomp $opcode;
    utils::info("kprove $opcode");
    my $specfile   = "$specdir/x86-semantics_${opcode}_spec.k";
    my $specoutput = "$specdir/x86-semantics_${opcode}_spec.output";
    execute(
"time krun --prove $specfile ~/Junk/dummy.k  --smt_prelude /home/sdasgup3/Github/k/k-distribution/include/z3/basic.smt2 1>$specoutput 2>&1",
        1
    );
}

########################################
sub checkSupported {
########################################
    my $opcode      = shift @_;
    my $strata_path = shift @_;
    my $derivedPath = shift @_;
    my $debugprint  = shift @_;

    chomp $opcode;

    utils::info("Check if supported: $opcode");

    if(
        $opcode eq "xchgl_eax_r32" or
        $opcode eq "xchgl_r32_eax" or
        $opcode eq "xchgq_r64_rax" or
        $opcode eq "xchgq_rax_r64" or
        $opcode eq "xchgw_r16_ax"  or
        $opcode eq "xchgw_ax_r16"
    ) {
      return 0;

    }

    my ( $instr_arr_ref, $encode_arr_ref, $orig_circuit_ref ) =
      getInstrsFromCircuit( $opcode, $strata_path, $debugprint );

    my @instr_arr  = @{$instr_arr_ref};
    my @encode_arr = @{$encode_arr_ref};

    for ( my $i = 0 ; $i < scalar(@instr_arr) ; $i++ ) {
        my $encode       = $encode_arr[$i];
        my $derivedInstr = "$derivedPath/x86-$encode.k";

        if ( ( 0 == checkBaseInstr($encode) ) and !( -e $derivedInstr ) ) {
            print $opcode. " "
              . checkBaseInstr($opcode) . " "
              . $derivedInstr . "\n";
            return 0;
        }
    }

    return 1;
}

sub postProcess {
    my $opcode              = shift @_;
    my $specdir             = shift @_;
    my $derivedInstructions = shift @_;
    my $debugprint          = shift @_;

    chomp $opcode;
    my $specfile   = "$specdir/x86-semantics_${opcode}_spec.k";
    my $specoutput = "$specdir/x86-semantics_${opcode}_spec.output";
    my $koutput    = "$derivedInstructions/x86-${opcode}.k";

    # Map to store the register value binding
    utils::info("processSpecOutput $opcode");
    my ( $rsmap_ref, $rev_rsmap_ref, $reglines_ref ) =
      kutils::processSpecOutput( $specoutput, $debugprint );

    # Do simple sanitization and mixfix to infix conversion.
    utils::info("sanitizeSpecOutput $opcode");
    my $returnInfo =
      kutils::sanitizeSpecOutput( $opcode, $rsmap_ref, $rev_rsmap_ref,
        $reglines_ref, \$specfile, \$debugprint );

    # write to k file.
    utils::info("writeKDefn $opcode: $koutput");
    kutils::writeKDefn( $returnInfo, $koutput, $opcode, $debugprint );

}

sub checkManuallyGenerated {
  my $opcode              = shift @_;
  my $debugprint          = shift @_;

  if(
      $opcode eq "vmovmskpd_r32_xmm" or 
      $opcode eq "blsil_r32_r32"
      ) {
    return 1;
  }

  return 0;
}

1;
