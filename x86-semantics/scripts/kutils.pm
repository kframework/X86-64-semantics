package kutils;

use File::Compare;
use File::Basename;
use strict;
use File::Path qw(make_path remove_tree);
use POSIX;

use File::Temp qw/ tempfile tempdir /;

use bigint;
use bigint qw/hex oct/;

use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION = 1.00;
@ISA     = qw(Exporter);
@EXPORT =
  qw(processKFile checkKRunStatus processXFile compareStates pprint find_stratum getReadMod spec_template getSpecCode selectbraces mixfix2infix processSpecOutput sanitizeSpecOutput writeKDefn opcHasOperand instrGetOperands runkprove postProcess createSpecFile checkSupported checkManuallyGenerated getImmInstrs getMemInstrs generateZ3Formula modelInstructions assocateMcSemaXed assocateMcSemaAvail assocIntelATT getTargetInstr getStrataBVFormula getRegVaraint  mem_modify_testcases getInstrsFolder getDummyRegsForOperands getOperandListFromOpcode getOperandListFromInstr sanitizeBVF parseKFile);
@EXPORT_OK = qw();

use lib qw( /home/sdasgup3/scripts-n-docs/scripts/perl/ );
use utils;

our $stoke_debug_circuit =
  "/home/sdasgup3/Github/stoke/./bin/stoke_debug_formula";
our $strata_path = "/home/sdasgup3/Github/strata-data/circuits";
our $stoke_check_circuit =
  "/home/sdasgup3/Github/strata/stoke/./bin/stoke_check_circuit";
our $functions_dir = "/home/sdasgup3/Github/strata-data/data-regs/functions";
our $testcases     = "/home/sdasgup3/Github/strata-data/data-regs/testcases.tc";

my @xpatterns = (
    qr/$\d* = ([-]?\d+)/,

    #qr/$\d* = \{(0x[\dabcdef]+, 0x[\dabcdef]+)\}/,
    qr/$\d* = \{0x([\dabcdef]+), 0x([\dabcdef]+)\}/,
    qr/$\d* = \[ ([CPAZSOIF ]*) \]/,
);

my $uif_binop = (
qr/add_double|add_single|sub_double|sub_single|maxcmp_double|maxcmp_single|mincmp_double|mincmp_single|mul_double|mul_single|div_double|div_single/
);
my $uif_uop = (
qr/approx_reciprocal_double|approx_reciprocal_single|sqrt_double|sqrt_single|approx_reciprocal_sqrt_double|approx_reciprocal_sqrt_single|cvt_single_to_double|cvt_single_to_int32|cvt_single_to_int64|cvt_int32_to_double|cvt_int32_to_single/
);

our $uif_terop = (
qr/vfmadd132_double|vfmadd132_single|vfmsub132_double|vfmsub132_single|vfnmadd132_double|vfnmadd132_single|vfnmsub132_double|vfnmsub132_single/
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

our $z3_decl_template = qq(

(declare-const TMP_BV_8 (_ BitVec 8))
(declare-const TMP_BV_16 (_ BitVec 16))
(declare-const TMP_BV_32 (_ BitVec 32))
(declare-const TMP_BV_64 (_ BitVec 64))
(declare-const TMP_BV_128 (_ BitVec 128))
(declare-const TMP_BV_256 (_ BitVec 256))
(declare-const TMP_BOOL Bool)
(declare-const rbx (_ BitVec 64))
(declare-const rax (_ BitVec 64))
(declare-const rcx (_ BitVec 64))
(declare-const rdx (_ BitVec 64))
(declare-const rsp (_ BitVec 64))
(declare-const rip (_ BitVec 64))
(declare-const ymm0 (_ BitVec 256))
(declare-const ymm1 (_ BitVec 256))
(declare-const ymm2 (_ BitVec 256))
(declare-const ymm3 (_ BitVec 256))
(declare-const ymm4 (_ BitVec 256))
(declare-const ymm5 (_ BitVec 256))
(declare-const ymm6 (_ BitVec 256))
(declare-const ymm7 (_ BitVec 256))
(declare-const ymm8 (_ BitVec 256))
(declare-const ymm9 (_ BitVec 256))
(declare-const ymm10 (_ BitVec 256))
(declare-const ymm11 (_ BitVec 256))
(declare-const ymm12 (_ BitVec 256))
(declare-const ymm13 (_ BitVec 256))
(declare-const ymm14 (_ BitVec 256))
(declare-const ymm15 (_ BitVec 256))
(declare-const zf Bool)
(declare-const sf Bool)
(declare-const cf Bool)
(declare-const pf Bool)
(declare-const af Bool)
(declare-const of Bool)

; Uninterpreted binary function declaration
(declare-fun comisd ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 2))
(declare-fun comiss ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 2))
(declare-fun    cvt_single_to_fp16_rm   ((_ BitVec 32) (_ BitVec 8)) (_ BitVec 16) )
(declare-fun    cvt_single_to_int32_rm  ((_ BitVec 32) (_ BitVec 8)) (_ BitVec 32) )
(declare-fun    cvt_double_to_int64_rm  ((_ BitVec 64) (_ BitVec 8)) (_ BitVec 64) )

(declare-fun add_double ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun add_single ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun sub_double ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun sub_single ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun div_double ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun div_single ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun mul_double ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun mul_single ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun maxcmp_double ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 1))
(declare-fun maxcmp_single ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 1))
(declare-fun mincmp_double ((_ BitVec 64) (_ BitVec 64)) (_ BitVec 1))
(declare-fun mincmp_single ((_ BitVec 32) (_ BitVec 32)) (_ BitVec 1))

(declare-fun idiv_quotient_int8   ((_ BitVec 16) (_ BitVec 8)) (_ BitVec 8))
(declare-fun idiv_remainder_int8  ((_ BitVec 16) (_ BitVec 8)) (_ BitVec 8))
(declare-fun idiv_quotient_int16  ((_ BitVec 32) (_ BitVec 16)) (_ BitVec 16))
(declare-fun idiv_remainder_int16 ((_ BitVec 32) (_ BitVec 16)) (_ BitVec 16))
(declare-fun idiv_quotient_int32  ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))
(declare-fun idiv_remainder_int32 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))
(declare-fun idiv_quotient_int64  ((_ BitVec 128) (_ BitVec 64)) (_ BitVec 64))
(declare-fun idiv_remainder_int64 ((_ BitVec 128) (_ BitVec 64)) (_ BitVec 64))
(declare-fun div_quotient_int8   ((_ BitVec 16) (_ BitVec 8)) (_ BitVec 8))
(declare-fun div_remainder_int8  ((_ BitVec 16) (_ BitVec 8)) (_ BitVec 8))
(declare-fun div_quotient_int16  ((_ BitVec 32) (_ BitVec 16)) (_ BitVec 16))
(declare-fun div_remainder_int16 ((_ BitVec 32) (_ BitVec 16)) (_ BitVec 16))
(declare-fun div_quotient_int32  ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))
(declare-fun div_remainder_int32 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))
(declare-fun div_quotient_int64  ((_ BitVec 128) (_ BitVec 64)) (_ BitVec 64))
(declare-fun div_remainder_int64 ((_ BitVec 128) (_ BitVec 64)) (_ BitVec 64))

; Uninterpreted unary function declaration
(declare-fun    cvt_half_to_single      ((_ BitVec 16)) (_ BitVec 32) )
(declare-fun    cvt_double_to_int64_truncate     ((_ BitVec 64)) (_ BitVec 64) )
(declare-fun    cvt_single_to_int64_truncate     ((_ BitVec 32)) (_ BitVec 64) )

(declare-fun approx_reciprocal_double       ((_ BitVec 64)) (_ BitVec 64) )
(declare-fun approx_reciprocal_single       ((_ BitVec 32)) (_ BitVec 32) )
(declare-fun sqrt_double                    ((_ BitVec 64)) (_ BitVec 64) )
(declare-fun sqrt_single                    ((_ BitVec 32)) (_ BitVec 32) )
(declare-fun approx_reciprocal_sqrt_double  ((_ BitVec 64)) (_ BitVec 64) )
(declare-fun approx_reciprocal_sqrt_single  ((_ BitVec 32)) (_ BitVec 32) )

(declare-fun cvt_single_to_double           ((_ BitVec 32)) (_ BitVec 64) )
(declare-fun cvt_double_to_single           ((_ BitVec 64)) (_ BitVec 32) )

(declare-fun cvt_single_to_int32            ((_ BitVec 32)) (_ BitVec 32) )
(declare-fun cvt_single_to_int32_truncate   ((_ BitVec 32)) (_ BitVec 32) )
(declare-fun cvt_single_to_int64            ((_ BitVec 32)) (_ BitVec 64) )
(declare-fun cvt_double_to_int32            ((_ BitVec 64)) (_ BitVec 32) )
(declare-fun cvt_double_to_int32_truncate   ((_ BitVec 64)) (_ BitVec 32) )
(declare-fun cvt_double_to_int64            ((_ BitVec 64)) (_ BitVec 64) )

(declare-fun cvt_int32_to_single            ((_ BitVec 32)) (_ BitVec 32) )
(declare-fun cvt_int32_to_double            ((_ BitVec 32)) (_ BitVec 64) )
(declare-fun cvt_int64_to_single            ((_ BitVec 64)) (_ BitVec 32) )
(declare-fun cvt_int64_to_double            ((_ BitVec 64)) (_ BitVec 64) )

; Uninterpreted ternary function declaration
(declare-fun cmp_double_pred ((_ BitVec 64) (_ BitVec 64) (_ BitVec 8)) (_ BitVec 1))
(declare-fun cmp_single_pred ((_ BitVec 32) (_ BitVec 32) (_ BitVec 8)) (_ BitVec 1))

(declare-fun vfmadd132_double ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun vfmadd132_single ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun vfmadd231_double ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun vfmadd231_single ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun vfmadd213_double ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun vfmadd213_single ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun vfmsub132_double ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun vfmsub132_single ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun vfmsub231_double ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun vfmsub231_single ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun vfmsub213_double ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun vfmsub213_single ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun vfnmadd132_double ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun vfnmadd132_single ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun vfnmsub132_double ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun vfnmsub132_single ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))
(declare-fun vfnmadd213_double ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
(declare-fun vfnmadd231_double ((_ BitVec 64) (_ BitVec 64) (_ BitVec 64)) (_ BitVec 64))
);

our $uif_z3py_template = qq(
cvt_int32_to_single = Function('cvt_int32_to_single', IntSort(), Float32())

# Uninterpreted binary function declaration
add_double = Function('add_double', BitVecSort(64), BitVecSort(64), BitVecSort(64))
add_single = Function('add_single', BitVecSort(32), BitVecSort(32), BitVecSort(32))

sub_double = Function('sub_double', BitVecSort(64), BitVecSort(64), BitVecSort(64))
sub_single = Function('sub_single', BitVecSort(32), BitVecSort(32), BitVecSort(32))

mul_double = Function('mul_double', BitVecSort(64), BitVecSort(64), BitVecSort(64))
mul_single = Function('mul_single', BitVecSort(32), BitVecSort(32), BitVecSort(32))

div_double = Function('div_double', BitVecSort(64), BitVecSort(64), BitVecSort(64))
div_single = Function('div_single', BitVecSort(32), BitVecSort(32), BitVecSort(32))

maxcmp_double = Function('maxcmp_double', BitVecSort(64), BitVecSort(64), BitVecSort(1))
maxcmp_single = Function('maxcmp_single', BitVecSort(32), BitVecSort(32), BitVecSort(1))

mincmp_double = Function('mincmp_double', BitVecSort(64), BitVecSort(64), BitVecSort(1))
mincmp_single = Function('mincmp_single', BitVecSort(32), BitVecSort(32), BitVecSort(1))

# Uninterpreted binary function declaration
approx_reciprocal_double = Function('approx_reciprocal_double', BitVecSort(64), BitVecSort(64))
approx_reciprocal_single = Function('approx_reciprocal_single', BitVecSort(32), BitVecSort(32))

sqrt_double = Function('sqrt_double', BitVecSort(64), BitVecSort(64))
sqrt_single = Function('sqrt_single', BitVecSort(32), BitVecSort(32))

approx_reciprocal_sqrt_double = Function('approx_reciprocal_sqrt_double_double', BitVecSort(64), BitVecSort(64))
approx_reciprocal_sqrt_single = Function('approx_reciprocal_sqrt_double_single', BitVecSort(32), BitVecSort(32))

cvt_single_to_double  = Function('cvt_single_to_double', BitVecSort(32), BitVecSort(64))
cvt_single_to_int32   = Function('cvt_single_to_int32', BitVecSort(32), BitVecSort(32))
cvt_single_to_int64   = Function('cvt_single_to_int64', BitVecSort(32), BitVecSort(64))
cvt_int32_to_single   = Function('cvt_int32_to_single', BitVecSort(32), BitVecSort(32))
cvt_int32_to_double   = Function('cvt_int32_to_double', BitVecSort(32), BitVecSort(64))

# Uninterpreted ternary function declaration
vfmadd132_double = Function('vfmadd132_double', BitVecSort(64), BitVecSort(64), BitVecSort(64), BitVecSort(64))
vfmadd132_single = Function('vfmadd132_single', BitVecSort(32), BitVecSort(32), BitVecSort(32), BitVecSort(32))

vfmsub132_double = Function('vfmsub132_double', BitVecSort(64), BitVecSort(64), BitVecSort(64), BitVecSort(64))
vfmsub132_single = Function('vfmsub132_single', BitVecSort(32), BitVecSort(32), BitVecSort(32), BitVecSort(32))

vfnmadd132_double = Function('vfnmadd132_double', BitVecSort(64), BitVecSort(64), BitVecSort(64), BitVecSort(64))
vfnmadd132_single = Function('vfnmadd132_single', BitVecSort(32), BitVecSort(32), BitVecSort(32), BitVecSort(32))

vfnmsub132_double = Function('vfnmsub132_double', BitVecSort(64), BitVecSort(64), BitVecSort(64), BitVecSort(64))
vfnmsub132_single = Function('vfnmsub132_single', BitVecSort(32), BitVecSort(32), BitVecSort(32), BitVecSort(32))
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

    #my $kcell = qr/<k> (.*) <\/k>/;
    my $kcellStart = qr/\s*<k>\s*/;
    my $kcellEnd   = qr/\s*<\/k>\s*/;
    open( my $fp, "<", "$file" ) or die "Can't open: $!";
    my @lines = <$fp>;

    my $criticalSection = 0;
    for my $line (@lines) {
        chomp $line;
        if ( $line =~ m/$kcellStart/ ) {
            $criticalSection = 1;
            next;
        }
        if ($criticalSection) {
            my $txt = utils::trim($line);
            if ( $txt eq "exit_0" ) {
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
    my $basename = shift @_;
    my $file     = shift @_;

    my ( $fh_unused, $tmpfile ) = tempfile( "tmpfileXXXXX", DIR => "/tmp/" );
    my @kstates       = ();
    my @sortedkstates = ();
    my %kstateMap     = ();
    print "$basename\n\n";
    my @kpatterns = ( qr/"(\w*)" \|-> (\d+'[-]?\d+)/, qr/"(\w*)" \|-> (.*)/ );

    execute(
"grep  -A 39  \"ListItem\"  $file  | sed -e '/RIP/d' 1> ${tmpfile} 2>&1",
        1
    );

    open( my $fp, "<", "$tmpfile" ) or die "Cannot open: $!";
    my @lines   = <$fp>;
    my $counter = 0;
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
            if ( $val =~ m/NaN/ ) {
                push @{ $kstateMap{$reg} }, "NaN";
            }
            else {
                push @{ $kstateMap{$reg} }, $val;
            }
        }
        elsif ( $line =~ m/ListItem/g ) {

        }
        else {
            print("Skipped::$line\n");
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
            failInfo("processKFile: Count of $key is not same as $numOfInstrs");
            return @kstates;
        }
    }

    for ( my $instrCount = 0 ; $instrCount < $numOfInstrs ; $instrCount++ ) {
        for my $key (@orderedKeys) {
            push @kstates, $kstateMap{$key}[$instrCount];

        }
    }

    #print join( " : ", @kstates );
    #print "\n";

    return @kstates;
}

sub processXFile {
    my $basename = shift @_;
    my $file     = shift @_;
    my ( $unused_fh, $tmpfile ) = tempfile( "tmpfileXXXXX", DIR => "/tmp/" );
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
            push @xstates, "0x" . $2 . $1;
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
    my ( $basename, $k_ref, $x_ref ) = @_;
    my @kstates    = @{$k_ref};
    my @xstates    = @{$x_ref};
    my $instrcount = 0;

    utils::info("$basename Compare Results :");
    if ( 0 == scalar(@kstates) or 0 == scalar(@xstates) ) {
        failInfo("Either of xstate or kstate is Empty\n");
        return;
    }
    if ( scalar(@kstates) != scalar(@xstates) ) {
        my $msg =
            "kstates = "
          . scalar(@kstates) . "\n"
          . "xstates = "
          . scalar(@xstates) . "\n\n";
        info("kstate xstate count unequal");
        print $msg;

        #return;
    }

    my $iter = scalar(@kstates);
    if ( scalar(@xstates) < scalar(@kstates) ) {
        $iter = scalar(@xstates);
    }

    for ( my $i = 0 ; $i < $iter ; $i++ ) {
        if (
            #4 == ( $i % $regcount ) or
            #5 == ( $i % $regcount ) or
            6 == ( $i % $regcount ) or 7 == ( $i % $regcount )
          )
        {

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
            print $kstates[$i] . "\n" . $xstates[$i] . "\n";
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
    passInfo("Passed");
}

sub pprint {
    my ( $k_ref, $x_ref, $kstateskip ) = @_;
    my @kstates    = @{$k_ref};
    my @xstates    = @{$x_ref};
    my $instrcount = 0;

    my $i = 0 + $kstateskip * $regcount;

    for ( ; $i < scalar(@kstates) ; $i++ ) {
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
    my $debugprint = shift @_;
    my $path       = shift @_;

    if ( !defined($path) ) {
        $path = "/home/sdasgup3/Github/strata-data/data-regs/instructions/";
    }
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

    if ( defined($debugprint) and 1 == $debugprint ) {
        print "Target: " . $instr . "\n";
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
    my $instr           = shift @_;
    my $debugprint      = shift @_;
    my $useuif          = shift @_;
    my $use_strata_path = shift @_;

    my $smtlib_format = "";
    if ( "" ne $useuif ) {
        $smtlib_format = " --smtlib_format ";
    }

    my $ckt_path = "";
    if ( 1 == $use_strata_path ) {
        $ckt_path = " --strata_path $strata_path";
    }

    my $binpath = "$stoke_debug_circuit $smtlib_format  $ckt_path --code";

    # Escape the $ sign (if present)
    $instr =~ s/\$/\\\$/g;
    execute( "$binpath \"$instr\" 1>/tmp/yyy 2>&1", 1 );

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

    #utils::info("Reading circuit from $filepath");
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
        utils::printMap( \%{$undefSet_ref}, "Undef Set", 1 );
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
                  $spec_code . "execinstr ( $instr , .Operands )" . " ~>\n";
            }
            else {
                $spec_code =
                  $spec_code . "execinstr ( $instr  .Operands )" . " ~>\n";
            }
        }
        debugInfo( "Instr::" . $instr . "::\n", $debugprint );
    }

    if ( "" ne $restoreCode ) {
        $spec_code = $spec_code . $restoreCode;
    }

    $spec_code = $spec_code
      . "execinstr ( nop .Operands ) ~> inforegisters ~> fetch" . "\n";

    debugInfo( $spec_code . "\n", $debugprint );

    return ( $spec_code, $counter );
}

sub mixfix2smt {
    my $arg        = shift @_;
    my $debugprint = shift @_;

    my $bin_op = (
qr/andBool|orBool|==K|\+Int|\-Int|>=Int|<=Int|>Int|<Int|==Int|<<Int|\+Float|\*Float|\/Float|\-Float|\&Int/
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
              . "(If (("
              . $args[0]
              . " ) , ( "
              . $args[1]
              . " ) , ( "
              . $args[2]
              . " ) )) "
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

            if ( $op eq "andBool" ) {
                $arg =
                  $1 . " (And( " . $args[0] . ", " . $args[1] . " )) " . $rest;
            }
            elsif ( $op eq "orBool" ) {
                $arg =
                  $1 . " (Or( " . $args[0] . ", " . $args[1] . " )) " . $rest;
            }
            else {

                my $pre = $1;

                $op =~ s/Int//g;
                $op =~ s/==K/==/g;
                $op =~ s/Float//g;
                $arg =
                    $pre . " ( "
                  . $args[0] . " " . " $op " . " "
                  . $args[1] . " ) "
                  . $rest;
            }

            #print "\n[mixfix2smt]After:" . $arg . "\n";
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

            $arg = $1 . " (Not " . " ( " . $args[0] . " )) " . $rest;

            #print "\n" . $arg . "\n";
        }
        elsif ( $arg =~ m/(.+)\_\(\_\)(.+)/ ) {
            my $op = $2;
            debugInfo( "\n\nGot UIF U op: $op\n", $debugprint );

            my ( $op_arg, $rest ) = selectbraces( $2, 1 );

            debugInfo( "Arg: " . $op_arg . "\n", $debugprint );
            debugInfo( "Rest: " . $rest . "\n",  $debugprint );

            my @args = findArgs( $op_arg, 2 );

            debugInfo( "Arg1: " . $args[0] . "\n", $debugprint );
            debugInfo( "Arg2: " . $args[1] . "\n", $debugprint );

            $arg = $1 . " $args[0] ( " . $args[1] . " ) " . $rest;

            #print "\nAfter:" . $arg . "\n";
        }
        elsif ( $arg =~ m/(.+)\_\(\_,\_\)(.+)/ ) {
            my $op = $2;
            debugInfo( "\n\nGot UIF Binary op: $op\n", $debugprint );

            my ( $op_arg, $rest ) = selectbraces( $2, 1 );

            debugInfo( "Arg: " . $op_arg . "\n", $debugprint );
            debugInfo( "Rest: " . $rest . "\n",  $debugprint );

            my @args = findArgs( $op_arg, 3 );

            debugInfo( "Arg1: " . $args[0] . "\n", $debugprint );
            debugInfo( "Arg2: " . $args[1] . "\n", $debugprint );
            debugInfo( "Arg3: " . $args[2] . "\n", $debugprint );

            ## Orders are NOT  changed here
            if (   $args[0] eq "maxcmp_double"
                or $args[0] eq "maxcmp_single"
                or $args[0] eq "mincmp_double"
                or $args[0] eq "mincmp_single" )
            {
                $arg =
                    $1
                  . " (If( $args[0] ( "
                  . $args[2] . ", "
                  . $args[1]
                  . " ) == ONE1, $args[2], $args[1]))"
                  . $rest;

            }
            else {
                $arg =
                    $1
                  . " $args[0] ( "
                  . $args[2] . ", "
                  . $args[1] . " ) "
                  . $rest;
            }

            #print "\nAfter:" . $arg . "\n";

        }
        elsif ( $arg =~ m/(.+)\_\(\_,\_,\_\)(.+)/ ) {
            my $op = $2;
            debugInfo( "\n\nGot UIF Ter op: $op\n", $debugprint );

            my ( $op_arg, $rest ) = selectbraces( $2, 1 );

            debugInfo( "Arg: " . $op_arg . "\n", $debugprint );
            debugInfo( "Rest: " . $rest . "\n",  $debugprint );

            my @args = findArgs( $op_arg, 4 );

            debugInfo( "Arg1: " . $args[0] . "\n", $debugprint );
            debugInfo( "Arg2: " . $args[1] . "\n", $debugprint );
            debugInfo( "Arg3: " . $args[2] . "\n", $debugprint );
            debugInfo( "Arg4: " . $args[3] . "\n", $debugprint );

            $arg =
                $1
              . " $args[0] ( "
              . $args[1] . ", "
              . $args[2] . ", "
              . $args[3] . " ) "
              . $rest;

            #print "\nAfter:" . $arg . "\n";

        }
        else {
            last;
        }
    }

    return $arg;
}

sub mixfix2infix {
    my $arg        = shift @_;
    my $debugprint = shift @_;

    #$debugprint = 1;

    my $bin_op = (
qr/andBool|orBool|==K|\+Int|\-Int|>=Int|<=Int|>Int|<Int|==Int|<<Int|\+Float|\*Float|\/Float|\-Float|\&Int/
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
        elsif ( $arg =~ m/(.+)\_\(\_\)(.+)/ ) {
            my $op = $2;
            debugInfo( "\n\nGot UIF U op: $op\n", $debugprint );

            my ( $op_arg, $rest ) = selectbraces( $2, 1 );

            debugInfo( "Arg: " . $op_arg . "\n", $debugprint );
            debugInfo( "Rest: " . $rest . "\n",  $debugprint );

            my @args = findArgs( $op_arg, 2 );

            debugInfo( "Arg1: " . $args[0] . "\n", $debugprint );
            debugInfo( "Arg2: " . $args[1] . "\n", $debugprint );

            $arg = $1 . " $args[0] ( " . $args[1] . " ) " . $rest;

            #print "\nAfter:" . $arg . "\n";
        }
        elsif ( $arg =~ m/(.+)\_\(\_,\_\)(.+)/ ) {
            my $op = $2;
            debugInfo( "\n\nGot UIF Binary op: $op\n", $debugprint );

            my ( $op_arg, $rest ) = selectbraces( $2, 1 );

            debugInfo( "Arg: " . $op_arg . "\n", $debugprint );
            debugInfo( "Rest: " . $rest . "\n",  $debugprint );

            my @args = findArgs( $op_arg, 3 );

            debugInfo( "Arg1: " . $args[0] . "\n", $debugprint );
            debugInfo( "Arg2: " . $args[1] . "\n", $debugprint );
            debugInfo( "Arg3: " . $args[2] . "\n", $debugprint );

            $arg =
              $1 . " $args[0] ( " . $args[1] . ", " . $args[2] . " ) " . $rest;

            #print "\nAfter:" . $arg . "\n";

        }
        elsif ( $arg =~ m/(.+)\_\(\_,\_,\_\)(.+)/ ) {
            my $op = $2;
            debugInfo( "\n\nGot UIF Ter op: $op\n", $debugprint );

            my ( $op_arg, $rest ) = selectbraces( $2, 1 );

            debugInfo( "Arg: " . $op_arg . "\n", $debugprint );
            debugInfo( "Rest: " . $rest . "\n",  $debugprint );

            my @args = findArgs( $op_arg, 4 );

            debugInfo( "Arg1: " . $args[0] . "\n", $debugprint );
            debugInfo( "Arg2: " . $args[1] . "\n", $debugprint );
            debugInfo( "Arg3: " . $args[2] . "\n", $debugprint );
            debugInfo( "Arg4: " . $args[3] . "\n", $debugprint );

            $arg =
                $1
              . " $args[0] ( "
              . $args[1] . ", "
              . $args[2] . ", "
              . $args[3] . " ) "
              . $rest;

            #print "\nAfter:" . $arg . "\n";

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

    my $uif_ops = (
qr/add_double|add_single|sub_double|sub_single|maxcmp_double|maxcmp_single|mincmp_double|mincmp_single|mul_double|mul_single|div_double|div_single|approx_reciprocal_double|approx_reciprocal_single|sqrt_double|sqrt_single|approx_reciprocal_sqrt_double|approx_reciprocal_sqrt_single|cvt_single_to_double|cvt_single_to_int32|cvt_single_to_int64|cvt_int32_to_double|cvt_int32_to_single|vfmadd132_double|vfmadd132_single|vfmsub132_double|vfmsub132_single|vfnmadd132_double|vfnmadd132_single|vfnmsub132_double|vfnmsub132_single/
    );

    for ( my $i = 0 ; $i < $num_args ; $i++ ) {
        if ( $i == $num_args - 1 ) {
            push @args, $line;
            last;
        }
        if ( $line =~ m/^($uif_ops)\s*,\s*(.*)/ ) {
            push @args, $1;
            $line = $2;
        }
        if ( $line =~ m/^(CONST_BV_S\d+_V\d+)\s*,\s*(.*)/ ) {
            push @args, $1;
            $line = $2;
        }
        if ( $line =~ m/^(CONST_BV_S\d+_VNEG\d+)\s*,\s*(.*)/ ) {
            push @args, $1;
            $line = $2;
        }
        elsif ( $line =~ m/^true\s*,\s*(.*)/ ) {
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

            #print "$op_arg\::$rest\n";
            push @args, $op_arg;
            $rest =~ s/\s*,\s*//;
            $line = $rest;
        }
    }
    return @args;
}

## Given abc()xyz reuturns abc() and xyz
sub selectbraces {
    my $arg     = shift @_;
    my $remove  = shift @_;
    my $op_arg  = "";
    my $rest    = "";
    my $counter = 0;

    #   utils::info("In selectbraces");

    ## for $arg == _(_,_,_)(...)xyz return _(_,_,_)(...) and xyz
    ## print("--$arg\n\n");

    if ( $arg =~ m/^(\_\(\_,\_,\_\))(.+)/ ) {
        $op_arg = $1;
        $arg    = $2;
    }
    elsif ( $arg =~ m/^(\_\(\_,\_\))(.+)/ ) {
        $op_arg = $1;
        $arg    = $2;
    }
    elsif ( $arg =~ m/^(\_\(\_\))(.+)/ ) {
        $op_arg = $1;
        $arg    = $2;
    }

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

    #   utils::info("Out selectbraces");
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

    utils::info("In processSpecOutput");
    print "Using $specoutput\n";

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
m/String\@STRING-SYNTAX\(#""\w+""\) \|\-\> mi\(Int\@INT-SYNTAX\(#"\d+"\),, \?I\d+_\d+:Int\@INT-SYNTAX\)/g;

            #debugInfo( print join( "\n", @matches ), $debugprint );

            for my $match (@matches) {

                #print "Matching Lines: " . $match . "\n";
                if ( $match =~
m/String\@STRING-SYNTAX\(#""(\w+)""\) \|\-\> mi\(Int\@INT-SYNTAX\(#"\d+"\),, \?I\d+_(\d+):Int\@INT-SYNTAX\)/
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

    utils::info("Out processSpecOutput");
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
sub sanitizeBVF {
##########################################
    my ( $opcode, $reglines_ref, $actual2psedoRegs_ref, $debugprint ) = @_;
    my @reglines         = @{$reglines_ref};
    my %actual2psedoRegs = %{$actual2psedoRegs_ref};

    ## Process begin
    ## stage 1
    my @workList = ();
    for my $line (@reglines) {
        chomp $line;

        # Skip
        if (   $line =~ m/^(code:|Formula|sig)/
            or $line =~ m/\s+(maybe|must|required)/
            or $line =~ m/^$/ )
        {
            next;
        }

        my ( $reg, $rule ) = ( "", "" );
        if ( $line =~ m/^%(.*):(.*)/ ) {
            $reg  = utils::trim($1);
            $rule = utils::trim($2);
        }
        else {
            failInfo("$opcode: Unrecognized line: $line");
        }

        debugInfo( "Unsanitied Lines-->$reg:$rule<--\n", $debugprint );

        my $ucReg   = uc( $subRegToReg{$reg} );
        my $is_flag = 0;
        if (   $ucReg eq "CF"
            or $ucReg eq "SF"
            or $ucReg eq "PF"
            or $ucReg eq "ZF"
            or $ucReg eq "AF"
            or $ucReg eq "OF" )
        {
            $is_flag = 1;
        }

        # Key of the K rule
        my $K_key = "";
        if ( exists $actual2psedoRegs{$ucReg} ) {
            $K_key = "convToRegKeys(" . $actual2psedoRegs{$ucReg} . ")";
        }
        else {
            $K_key = "\"" . $ucReg . "\"";
        }

        # Action for K rule
        my $K_rule = $rule;
        if ( $K_rule =~ m/^TRUE$/ ) {
            $K_rule = "mi(1, 1)";
        }
        if ( $K_rule =~ m/^FALSE$/ ) {
            $K_rule = "mi(1, 0)";
        }
        $K_rule =~ s/TRUE/true/g;
        $K_rule =~ s/FALSE/false/g;

        if ( $K_rule =~ m/^getParity\((.*)\)$/ ) {
            $K_rule =
"(#ifMInt ((countOnes($1, 0) &Int 1) ==K 0) #then mi(1,1) #else mi(1,0) #fi)";
        }

        # For bool regs (cf, af ...), add undef for TMP_BOOL
        if ( 1 == $is_flag ) {
            if ( $rule =~ m/TMP_BOOL_(\d+)/ ) {
                $K_rule = "(undef)";
            }
        }

        # Replace all the %r to getRegisterValue
        for my $k ( keys %actual2psedoRegs ) {
            my $replace_from = "%" . lc($k);
            my $replace_to =
              "getParentValue(" . $actual2psedoRegs{$k} . ", RSMap)";

            $K_rule =~ s/$replace_from/$replace_to/g;
        }
        $K_rule =~ s/%cf/eqMInt(getFlag("CF", RSMap), mi(1,1))/g;
        $K_rule =~ s/%pf/eqMInt(getFlag("PF", RSMap), mi(1,1))/g;
        $K_rule =~ s/%af/eqMInt(getFlag("AF", RSMap), mi(1,1))/g;
        $K_rule =~ s/%sf/eqMInt(getFlag("SF", RSMap), mi(1,1))/g;
        $K_rule =~ s/%zf/eqMInt(getFlag("ZF", RSMap), mi(1,1))/g;
        $K_rule =~ s/%of/eqMInt(getFlag("OF", RSMap), mi(1,1))/g;

        $K_rule =~ s/(%\w+)/getParentValue($1, RSMap)/g;

        push @workList, "$K_key |-> $K_rule";
    }

    utils::printArray( \@workList, "Final Rules", $debugprint );
    return join "\n\n", @workList;
}

##########################################
sub sanitizeSpecOutput {
##########################################
    my ( $opcode, $rsmap_ref, $rev_rsmap_ref,
        $reglines_ref, $specfile_ref, $debugprint_ref, $tosmt )
      = @_;
    my %rsmap      = %{$rsmap_ref};
    my %rev_rsmap  = %{$rev_rsmap_ref};
    my @reglines   = @{$reglines_ref};
    my $specfile   = ${$specfile_ref};
    my $debugprint = ${$debugprint_ref};

    utils::info("In sanitizeSpecOutput");

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
    if ( scalar( keys %writeSet ) > 1 ) {
        my $count = 0;
        for my $key ( keys %writeSet ) {
            if ( $key !~ m/CF|PF|AF|ZF|SF|OF/ ) {
                $count++;
            }
        }
        if ( $count > 1 ) {
            utils::warnInfo(
                "$opcode: More that one writes. May Need to schedule.");
        }
    }

    utils::printMap( \%readSet,  "selectRules: Read Set",  $debugprint );
    utils::printMap( \%writeSet, "selectRules: Write Set", $debugprint );
    utils::printMap( \%undefSet, "selectRules: Undef Set", $debugprint );
    utils::printMap( \%mustUndefSet, "selectRules: Must Undef Set",
        $debugprint );

    ## Obtain the correspondence between the generic opcode
    ## and its particular instance.

    my $operandListFromOpcode_ref =
      getOperandListFromOpcode( $opcode, $debugprint );
    my $operandListFromInstr_ref =
      getOperandListFromInstr( $instr, $debugprint );
    my $actual2psedoRegs_ref =
      getDummyRegsForOperands( $operandListFromOpcode_ref,
        $operandListFromInstr_ref );
    my %actual2psedoRegs = %{$actual2psedoRegs_ref};

=pod
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
=cut

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
        $mod =~ s/UIFBinOperationII\@MINT-WRAPPER-SYNTAX\(#"(\w+)"\)/$1/g;
        $mod =~ s/UIFBinOperationI\@MINT-WRAPPER-SYNTAX\(#"(\w+)"\)/$1/g;
        $mod =~ s/UIFBinOperation\@MINT-WRAPPER-SYNTAX\(#"(\w+)"\)/$1/g;
        $mod =~ s/UIFUOperation\@MINT-WRAPPER-SYNTAX\(#"(\w+)"\)/$1/g;
        $mod =~ s/UIFTerOperation\@MINT-WRAPPER-SYNTAX\(#"(\w+)"\)/$1/g;
        $mod =~ s/_([-]?\d+):Int\@INT-SYNTAX/_$1/g;
        $mod =~ s/MInt\@MINT\(#"(\d+)'([-]?\d+)"\)/mi($1, $2)/g;
        $mod =~ s/\.List\{"mintlist"\}\(\.KList\@BASIC-K\)/.MInts/g;
        $mod =~ s/undef\(\.KList\@BASIC-K\)/undef/g;
        $mod =~ s/\(#"(\w+)"\)/"$1"/g;
        $mod =~ s/\($//g;
        $mod =~ s/\?I\d+_(\d+)/_$1/g;

        my $result = "";

        debugInfo( "Stage 1.1: " . $mod . "\n\n", $debugprint );

        #$mod =~ s/"(\w+)" \|-> (.*)/ "$1" |-> ( MI$rsmap{$1} => $2)/g;
        $mod =~ s/"(\w+)" \|-> (.*)/ "$1" |-> ($2)/g;

        #debugInfo( "Stage 1.2: " . $mod . "\n\n", $debugprint );

        if ( $mod =~ /_/ ) {
            if ( defined($tosmt) and $tosmt == 1 ) {
                $result = mixfix2smt( $mod, $debugprint );
            }
            else {
                $result = mixfix2infix( $mod, $debugprint );
            }
        }
        else {
            $result = $mod;
        }

        # Local Optimzations
        ## Replace mi(W, _NUM) => MINUM
        debugInfo( "PreResult:$result\n", $debugprint );
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

    utils::info("Out sanitizeSpecOutput");
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

    if ( $instr =~ m/(\w+)\s+(\S+)\s*,\s+(\S+)\s*,\s+(\S+)\s*,\s+(\S+)/ ) {
        debugInfo(
            "[getOperandListFromInstr]Four operands::"
              . uc( $subRegToReg{ utils::trim( $2, "%" ) } ) . "::"
              . uc( $subRegToReg{ utils::trim( $3, "%" ) } ) . "::"
              . uc( $subRegToReg{ utils::trim( $4, "%" ) } ) . "::"
              . uc( $subRegToReg{ utils::trim( $5, "%" ) } )
              . ":: \n ",
            $debugprint
        );
        push @operamdList, $2;
        push @operamdList, $3;
        push @operamdList, $4;
        push @operamdList, $5;
    }
    elsif ( $instr =~ m/(\w+)\s+(\S+)\s*,\s+(\S+)\s*,\s+(\S+)/ ) {
        debugInfo(
            "[getOperandListFromInstr]Three operands::"
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
            "[getOperandListFromInstr]Two operands::"
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
            "[getOperandListFromInstr]One operands::"
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

    if ( $opcode =~ m/(\w+)_(.*)_(.*)_(.*)_(.*)/ ) {
        my $op4 = $2;
        my $op3 = $3;
        my $op2 = $4;
        my $op1 = $5;

        push @operamdList, $op1;
        push @operamdList, $op2;
        push @operamdList, $op3;
        push @operamdList, $op4;
    }
    elsif ( $opcode =~ m/(\w+)_(.*)_(.*)_(.*)/ ) {
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
    my $useuif     = shift @_;
    my $addComment = shift @_;

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

    my $fp;
    if ( "" eq $koutput ) {
        open( $fp, ">&STDOUT" ) or die " [writeKDefn] cannot open  : $! ";
    }
    else {
        open( $fp, ">", $koutput )
          or die " [writeKDefn] cannot open $koutput : $! ";
    }

    my $template = "";
    if ( "" eq $semantics ) {
        $template = qq(// Autogenerated using stratification.
requires "x86-configuration.k"

module $module_name_uc
  imports X86-CONFIGURATION

  rule <k>
    execinstr ($enc $operands .Operands) => .
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
    execinstr ($enc $operands .Operands) => .
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

    if ( defined($addComment) and 0 == $addComment ) {
        return;
    }
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
#my $strata_BVFormula = getStrataBVFormula( $targetinstr, $debugprint , "--smtlib_format");
    my $strata_BVFormula =
      getStrataBVFormula( $targetinstr, $debugprint, $useuif, 1 );

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
    my $specoutdir = shift @_;
    my $debugprint = shift @_;

    chomp $opcode;
    utils::info("kprove $opcode");
    my $specfile   = "$specdir/x86-semantics_${opcode}_spec.k";
    my $specoutput = "$specoutdir/x86-semantics_${opcode}_spec.output";
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

    if (   $opcode eq "xchgl_eax_r32"
        or $opcode eq "xchgl_r32_eax"
        or $opcode eq "xchgq_r64_rax"
        or $opcode eq "xchgq_rax_r64"
        or $opcode eq "xchgw_r16_ax"
        or $opcode eq "xchgw_ax_r16" )
    {
        return ( 0, "Redundant Instructions" );

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
            return ( 0, "UnSupported" );
        }
    }

    return ( 1, "" );
}

sub postProcess {
    my $opcode              = shift @_;
    my $specdir             = shift @_;
    my $specoutdir          = shift @_;
    my $derivedInstructions = shift @_;
    my $debugprint          = shift @_;
    my $useuif              = shift @_;

    chomp $opcode;
    my $specfile   = "$specdir/x86-semantics_${opcode}_spec.k";
    my $specoutput = "$specoutdir/x86-semantics_${opcode}_spec.output";
    my $koutput    = "$derivedInstructions/x86-${opcode}.k";

    # Map to store the register value binding
    utils::info("processSpecOutput $opcode");
    my ( $rsmap_ref, $rev_rsmap_ref, $reglines_ref ) =
      kutils::processSpecOutput( $specoutput, $debugprint );

    # Do simple sanitization and mixfix to infix conversion.
    utils::info("sanitizeSpecOutput $opcode");
    my $returnInfo =
      kutils::sanitizeSpecOutput( $opcode, $rsmap_ref, $rev_rsmap_ref,
        $reglines_ref, \$specfile, \$debugprint, 0 );

    # write to k file.
    utils::info("writeKDefn $opcode: $koutput");
    kutils::writeKDefn( $returnInfo, $koutput, $opcode, $debugprint, $useuif );

}

sub checkManuallyGenerated {
    my $opcode     = shift @_;
    my $debugprint = shift @_;

    if (   $opcode eq "vmovmskpd_r32_xmm"
        or $opcode eq "blsil_r32_r32" )
    {
        return 1;
    }

    return 0;
}

sub getMemInstrs {
    my $patt = "_m8|_16|_m32|_m64|_m128|_m256";

}

sub getRegVaraintForImm {
    my $line             = shift @_;
    my $knownSemaMap_ref = shift @_;

    my %knownSemaMap = %{$knownSemaMap_ref};

    ### Imm patterns
    my $patt     = qr/imm(\d+)/;
    my $antipatt = qr/_m16|_m8|_m32|_m64|_m128|_m256/;

    ## Check if the instr is an imm-reg instr
    if ( $line !~ m/imm/ ) {
        return ( "NotImmOnly", 0, "" );
    }

    if ( $line =~ m/$antipatt/g ) {
        return ( "NotImmOnly", 0, "" );
    }

    if ( $line =~ m/imm(\d+)_1/g ) {
        return ( "NotImmOnly", 0, "" );
    }

    my $immSize = 0;
    if ( $line =~ m/$patt/g ) {
        $immSize = $1;
    }

    my $opcode = $line =~ s/_.*//gr;

    ## Collect Stats
    if ( !exists $knownSemaMap{$opcode} ) {
        return ( "NotFoundInKnownSema", 0, "" );
    }

    my @variants = @{ $knownSemaMap{$opcode} };
    print "\nImm Instr: " . $line . "\n";

    ## Some simple modofications of imm inst
    ## inorder to get a match.
    my $mod1 = $line =~ s/_rax/_r64/gr;
    my $mod2 = $mod1 =~ s/_eax/_r32/gr;
    my $mod3 = $mod2 =~ s/_ax/_r16/gr;
    my $mod4 = $mod3 =~ s/_al/_r8/gr;
    my $mod5 = "";

    my @guesses  = ();
    my $foundOne = 0;

    #print "Check For exact operand size\n";

    push @guesses, "Type Exact";
    if ( $immSize == 8 ) {
        push @guesses, $mod4 =~ s/imm(\d+)/r8/gr;
        push @guesses, $mod4 =~ s/imm(\d+)/cl/gr;
    }
    if ( $immSize == 16 ) {
        push @guesses, $mod4 =~ s/imm(\d+)/r16/gr;
    }
    if ( $immSize == 32 ) {
        push @guesses, $mod4 =~ s/imm(\d+)/r32/gr;
    }
    if ( $immSize == 64 ) {
        push @guesses, $mod4 =~ s/imm(\d+)/r64/gr;
    }

    #p "Check For \"Require Extension\"\n";

    push @guesses, "Type Extend";
    if ( $immSize == 8 ) {
        push @guesses, $mod4 =~ s/imm(\d+)/r16/gr;
        push @guesses, $mod4 =~ s/imm(\d+)/r32/gr;
        push @guesses, $mod4 =~ s/imm(\d+)/r64/gr;
    }
    if ( $immSize == 16 ) {
        push @guesses, $mod4 =~ s/imm(\d+)/r32/gr;
        push @guesses, $mod4 =~ s/imm(\d+)/r64/gr;
    }
    if ( $immSize == 32 ) {
        push @guesses, $mod4 =~ s/imm(\d+)/r64/gr;
    }

    #printArray( \@guesses, "Guesses", 1 );
    my $matchType = "";
    for my $var (@variants) {
        for my $guess (@guesses) {

            #p "$var\::$guess\::$matchType\n";
            if ( $guess eq "Type Exact" ) {
                $matchType = "Exact";
                next;
            }
            elsif ( $guess eq "Type Extend" ) {
                $matchType = "Extend";
                next;
            }

            if ( $guess eq $var ) {
                $foundOne = 1;
                print "\t-$matchType->" . $var . "\n";
                return ( $var, 1, $matchType );
            }

        }
    }

    if ( 0 == $foundOne ) {
        printArray( \@variants, "Available known Semantics", 1 );
        return ( "NoMatchInKnownSema", 0, "" );
    }

    #}

}

sub getImmInstrs {
    my $debugprint = shift @_;
    my $getimmdiff = shift @_;

    my $allinstrs      = "docs/relatedwork/strata/generalizedImms.txt";
    my $semanticsknown = "docs/relatedwork/strata/strata_supported.txt";

    ## Create a map of known semantics
    open( my $fp, "<", $semanticsknown ) or die "cannot open: $!";
    my @lines        = <$fp>;
    my %knownSemaMap = ();
    my %auxMap       = ();

    for my $line (@lines) {
        chomp $line;
        my $opcode = $line =~ s/_.*//gr;
        if ( "" eq $opcode ) {
            next;
        }
        push @{ $knownSemaMap{$opcode} }, $line;
        $auxMap{$opcode} = 0;
    }

    ## Sanity check on map
    my $count = 0;
    for my $key ( keys %knownSemaMap ) {
        $count += scalar( @{ $knownSemaMap{$key} } );
    }
    close $fp;

    print "Total number of instr in semantic map (743): " . $count . "\n";
    print "Unique opcode in semantic map: "
      . scalar( keys %knownSemaMap ) . "\n\n";

    ## For each imm instr find the relevant known semantics
    my @semaNotFlound  = ();
    my $countSemaFound = 0;
    open( $fp, "<", $allinstrs ) or die "cannot open: $!";
    @lines = <$fp>;

    ## Bypass list
    my %bypassList = (
        "movq_r64_imm32" => 1,
        "movq_r64_imm64" => 1,
    );

    for my $line (@lines) {
        chomp $line;
        my $opcode = $line =~ s/_.*//gr;

        my ( $regVar, $found, $matchType ) =
          getRegVaraintForImm( $line, \%knownSemaMap );

        if ( 0 == $found and ( $regVar eq "NotImmOnly" ) ) {
            next;
        }

        if ( 0 == $found and ( $regVar eq "NotFoundInKnownSema" ) ) {
            push @semaNotFlound, $line;
            next;
        }

        if ( exists $bypassList{$line} ) {
            utils::warnInfo("Skipped:$line");
            next;
        }

        $auxMap{$opcode} = 1;
        $countSemaFound++;

        if ( 0 == $found and $regVar eq "NoMatchInKnownSema" ) {
            print("$line has no register variant\n");
        }

        if ( defined($getimmdiff) and $getimmdiff == 1 ) {
            diffImmReg( $line, $regVar, $debugprint );
        }
        else {
            createImmFromRegVariant( $line, $regVar, $matchType, $debugprint );
        }
    }

    my @notUtilized   = ();
    my $countUtilized = 0;
    for my $temp ( keys %auxMap ) {
        if ( $auxMap{$temp} == 0 ) {
            push @notUtilized, $temp;
        }
        else {
            $countUtilized++;
        }
    }
    print "\n\nKnown Semantics (not utilized/utilized/total) for imm: "
      . scalar(@notUtilized) . "/"
      . $countUtilized . "/"
      . scalar( keys %auxMap ) . "\n";

    #printArray(\@notUtilized, "Semantics Not Utilized", 1);

    print "\nInstr whose reg sema is present/absent: "
      . $countSemaFound . "/"
      . scalar(@semaNotFlound) . "\n";

    #printArray(\@semaNotFlound, "Semantics Not found", 1);

}

sub diffImmReg {
    my $immInstr   = shift @_;
    my $regInstr   = shift @_;
    my $debugprint = shift @_;

    my $outfile  = "derivedInstructions/x86-$immInstr.k";
    my $template = "derivedInstructions/x86-$regInstr.k";
    if ( !( -e $template ) ) {
        $template = "baseInstructions//x86-$regInstr.k";
    }

    execute( "diff $template $outfile", 1 );

}

sub createImmFromRegVariant {
    my $immInstr   = shift @_;
    my $regInstr   = shift @_;
    my $matchType  = shift @_;
    my $debugprint = shift @_;

    my $debugprint = 1;

    my $outfile  = "derivedImmInstructions/x86-$immInstr.k";
    my $template = "derivedInstructions/x86-$regInstr.k";
    if ( !( -e $template ) ) {
        $template = "baseInstructions//x86-$regInstr.k";
    }

    open( my $rfp, "<", $template ) or die "Can't open $template: $!";
    my @lines = <$rfp>;
    close $rfp;

    my $contents = "";
    my %assoc    = ();
    my %sizes    = ();

    my $operamdList_ref = getOperandListFromOpcode( $immInstr, $debugprint );
    my @operamdList = @{$operamdList_ref};

    printArray( \@operamdList, "Operand List", $debugprint );

    my $immSize = 0;
    if ( $immInstr =~ m/imm(\d+)/g ) {
        $immSize = $1;
    }

    for my $line (@lines) {
        chomp $line;

        my $modulename = $immInstr =~ s/_/-/gr;
        $modulename = uc($modulename);
        if ( $line =~ m/^module/ ) {
            $contents = $contents . "module $modulename\n";
            next;
        }

        if ( $line =~ m/^endmodule/ ) {
            $contents = $contents . "endmodule\n";
            last;
        }

        ## Modify the execinstr
        if ( $line =~ m/execinstr/ ) {
            my $i       = 0;
            my @matches = $line =~
m/(R\d+:Rh)|(R\d+:R\d+)|(%\w+:R\d+)|(R\d+:Xmm)|(R\d+:Ymm)|(\$0x[\dabcdef]+)|(%\w+)/g;
            for my $match (@matches) {
                if (   ( $match =~ m/(R\d+):(Rh)/ )
                    or ( $match =~ m/(R\d+):(R\d+)/ )
                    or ( $match =~ m/(%\w+):(R\d+)/ )
                    or ( $match =~ m/(%\w+)/ )
                    or ( $match =~ m/(R\d+):(Xmm)/ )
                    or ( $match =~ m/(R\d+):(Ymm)/ ) )
                {
                    my $reg      = $1;
                    my $size_exp = $2;
                    if ( defined($2) ) {
                        if ( $size_exp eq "Rh" ) {
                            $sizes{$reg} = 8;
                        }
                        elsif ( $size_exp eq "Xmm" ) {
                            $sizes{$reg} = 128;
                        }
                        elsif ( $size_exp eq "Ymm" ) {
                            $sizes{$reg} = 256;
                        }
                        elsif ( $size_exp =~ m/R(\d+)/ ) {
                            $sizes{$reg} = $1;
                        }
                    }
                    $assoc{$reg} = $operamdList[$i];
                    $i++;
                }
            }
        }
        $contents = $contents . $line . "\n";
    }

    printMap( \%sizes, "Size Map", $debugprint );
    printMap( \%assoc, "Before Association Map", $debugprint );

    for my $key ( keys %assoc ) {
        my $regNum = 0;
        if ( $key =~ m/R(\d+)/ ) {
            $regNum = $1;
        }
        else {
            $regNum = $key;
        }
        if (   $assoc{$key} eq "r8"
            or $assoc{$key} eq "rh"
            or $assoc{$key} eq "r16"
            or $assoc{$key} eq "r32"
            or $assoc{$key} eq "r64" )
        {
            $assoc{$key} = $key;
        }
        else {
            if ( $assoc{$key} =~ m/imm/ ) {
                $assoc{$key} = "I" . $regNum . "_" . $immSize;
            }
            else {
                $assoc{$key} = "%" . $assoc{$key};
            }
        }
    }
    printMap( \%assoc, "After Association Map", $debugprint );

    my $mod = $contents;
    for my $key ( keys %assoc ) {

        if ( $assoc{$key} =~ m/I(\d+)_(\d+)/ ) {
            $mod =~ s/$key:R$sizes{$key}/$assoc{$key}:Imm/g;
            $mod =~
s/getRegisterValue\($key, RSMap\)/handleImmediateWithSignExtend($assoc{$key}, $immSize, $sizes{$key} )/g;
            if ( $sizes{$key} == 64 ) {
                $mod =~
s/getParentValue\($key, RSMap\)/handleImmediateWithSignExtend($assoc{$key}, $immSize, $sizes{$key} )/g;
            }
            else {
                $mod =~
s/extractMInt\(getParentValue\($key, RSMap\), \d+, \d+\)/handleImmediateWithSignExtend($assoc{$key}, $immSize, $sizes{$key} )/g;
            }
        }
        else {
            $mod =~ s/$key/$assoc{$key}/g;
        }
    }

    open( my $fp, ">", $outfile ) or die "Can't open: $!";
    print $fp $mod;
    close $fp;
}

## Find the association between
## execInstr (R1 R2 ..) and the tergetInst
sub findRegisterAssoc {
    my $opcode     = shift @_;
    my $debugprint = shift @_;

    ## Find the registre association
    my %assoc = ();
    my $targetinstr = getTargetInstr( $opcode, $debugprint );
    my $operandListFromInstr_ref =
      getOperandListFromInstr( $targetinstr, $debugprint );
    my @operandListFromInstr = @{$operandListFromInstr_ref};
    printArray( $operandListFromInstr_ref, "[findRegisterAssoc] Opr List",
        $debugprint );

    my $counter = 1;
    $assoc{"cf"} = "CF";
    $assoc{"pf"} = "PF";
    $assoc{"af"} = "AF";
    $assoc{"zf"} = "ZF";
    $assoc{"sf"} = "SF";
    $assoc{"of"} = "OF";

    my $koutput = "instructions_with_uif/derivedInstructions/x86-$opcode.k";
    open( my $fp, "<", $koutput ) or die "Can't open $koutput: $!";
    my @lines = <$fp>;
    close $fp;

    my @formalList  = ();
    my @formalSizes = ();
    my $i           = 0;
    for my $line (@lines) {
        chomp $line;

        if ( $line =~ m/execinstr/ ) {
            my @matches = $line =~
m/(R\d+:Rh)|(R\d+:R\d+)|(%\w+:R\d+)|(R\d+:Xmm)|(R\d+:Ymm)|(\$0x[\dabcdef]+)|(%\w+)/g;
            for my $match (@matches) {

#if($match =~ m/(R\d+):(R\d+)|%(\w+):(R\d+)|(R\d+):(Xmm)|(R\d+):(Ymm)|\$0x([\dabcdef]+)/) {
                if (   ( $match =~ m/(R\d+):(Rh)/ )
                    or ( $match =~ m/(R\d+):(R\d+)/ )
                    or ( $match =~ m/%(\w+):(R\d+)/ )
                    or ( $match =~ m/%(\w+)/ )
                    or ( $match =~ m/(R\d+):(Xmm)/ )
                    or ( $match =~ m/(R\d+):(Ymm)/ )
                    or ( $match =~ m/\$0x([\dabcdef]+)/ ) )
                {
                    #print $match ."\n";
                    my $reg = $1;

                    #print $match ."-$reg-\n";
                    if ( defined($2) and ( $2 eq "Xmm" or $2 eq "Ymm" ) ) {
                        push @formalSizes, 256;
                    }
                    else {
                        push @formalSizes, 64;
                    }
                    if ( $reg =~ m/R(\d+)/ ) {
                        $assoc{ $subRegToReg{ utils::trim(
                                    $operandListFromInstr[$i], "%" ) } } =
                          uc($reg);
                    }
                    else {
                        $assoc{ $subRegToReg{ utils::trim(
                                    $operandListFromInstr[$i], "%" ) } } =
                          uc( $subRegToReg{$reg} );
                    }
                    $i++;
                }
            }
        }
    }

    printMap( \%assoc, "[findRegisterAssoc]Association Map", $debugprint );
    printArray( \@formalSizes, "[findRegisterAssoc]Sizes", $debugprint );

    return ( \%assoc, \@formalSizes );

}

## This generates formulas for register only derived instr
sub generateZ3Formula {
    my $opcode     = shift @_;
    my $debugprint = shift @_;

    chomp $opcode;

    print "\n\n";
    utils::info("Generating Z3 formula for $opcode");
    ## find the register assoc
    my ( $assoc_ref, $formalSizes_ref ) =
      findRegisterAssoc( $opcode, $debugprint );
    my %assoc       = %{$assoc_ref};
    my @formalSizes = @{$formalSizes_ref};

    ## Prepare the file to write
    # Have the declarations
    my $decl    = "";
    my $counter = 1;
    for my $frml (@formalSizes) {
        $decl = $decl . "R$counter = BitVec('R$counter', $frml)\n";
        $counter++;
    }

    my $z3file = "z3EquivFormulas//x86-$opcode.py";
    open( my $zfp, ">", $z3file ) or die "Can't open $z3file: $!";
    my $template = qq(from z3 import *
import proverUtils
# Declarations
CF = BitVec('CF', 1)
PF = BitVec('PF', 1)
AF = BitVec('AF', 1)
ZF = BitVec('ZF', 1)
SF = BitVec('SF', 1)
OF = BitVec('OF', 1)

RAX = BitVec('RAX', 64)
RCX = BitVec('RCX', 64)
RDX = BitVec('RDX', 64)
ZERO1 = BitVecVal(0, 1)
ONE1 = BitVecVal(1, 1)

cf = (CF == ONE1)
pf = (PF == ONE1)
af = (AF == ONE1)
zf = (ZF == ONE1)
sf = (SF == ONE1)
of = (OF == ONE1)

undef = BitVecVal(0, 1)
$uif_z3py_template


print('\x1b[6;30;44m' + 'Opcode:$opcode' + '\x1b[0m')

);
    print $zfp $template;

    my $kruleMap_ref = convertKRuleToSMT2( $opcode, $debugprint );
    my %kruleMap     = %{$kruleMap_ref};
    my %strataBVF    = ();

    ## Find the pair of rules to match
    my $koutput = "instructions_with_uif/derivedInstructions/x86-$opcode.k";
    open( my $fp, "<", $koutput ) or die "Can't open $koutput: $!";
    my @lines = <$fp>;
    close $fp;

    ## Get the BVFs
    my $founrCircuit = 0;
    for my $line (@lines) {
        chomp $line;

        if ( $line =~ m/Circuits:/ ) {
            $founrCircuit = 1;
            next;
        }

        if ( $founrCircuit == 1 ) {
            if ( $line =~ m/(\w+)\s*: (.*)/ ) {
                my $lhs = $1;
                my $rhs = $2;

                if (   $lhs eq "sigfpe"
                    or $lhs eq "sigbus"
                    or $lhs eq "sigsegv" )
                {
                    next;
                }

                $strataBVF{$1} = $2;
            }
        }

    }

    ## Print the formulas
    printMap( \%kruleMap,  "Krules", $debugprint );
    printMap( \%strataBVF, "BVF",    $debugprint );

    ## Find the consts decls
    my %uniq = ();
    for my $key ( sort keys %kruleMap ) {
        my @matches =
          $kruleMap{$key} =~ m/CONST_BV_S\d+_V\d+|CONST_BV_S\d+_VNEG\d+/g;
        for my $match (@matches) {
            if (   ( $match =~ m/CONST_BV_S(\d+)_V(\d+)/ )
                or ( $match =~ m/CONST_BV_S(\d+)_VNEG(\d+)/ ) )
            {
                my $name = $match;
                my $val  = $2;
                my $size = $1;
                $val = -1 * $val if ( $name =~ m/VNEG/ );

                #print "$name \:: $val\n";
                if ( !exists $uniq{$name} ) {
                    $decl = $decl . "$name = BitVecVal($val, $size)" . "\n";
                    $uniq{$name} = 1;
                }
            }
        }
    }

    for my $key ( sort keys %strataBVF ) {
        my @matches = $strataBVF{$key} =~ m/(<0x[\dabcdef]+\|\d+>)/g;
        for my $match (@matches) {
            if ( $match =~ m/<0x([\dabcdef]+)\|(\d+)>/ ) {
                my $name = "CONST_BV_S$2_V$1";
                if ( !exists $uniq{$name} ) {
                    $decl = $decl . "$name = BitVecVal(0x$1, $2)" . "\n";
                    $uniq{$name} = 1;
                }
            }
        }
    }

    print $zfp $decl . "\n";

    for my $key ( sort keys %strataBVF ) {
        if (   $key eq "af"
            or $key eq "pf" )
        {
            next;
        }

        my $kruleMapKey = $assoc{$key};
        if ( !exists $kruleMap{$kruleMapKey} ) {
            $kruleMapKey = uc($key);
        }

        if ( exists $kruleMap{$kruleMapKey} ) {

            my $rule1 = $kruleMap{$kruleMapKey};
            if (   $key eq "af"
                or $key eq "pf"
                or $key eq "sf"
                or $key eq "zf"
                or $key eq "of"
                or $key eq "cf" )
            {
                $rule1 = $rule1 . " == ONE1";
            }
            print $zfp "PK_" . $kruleMapKey . " = " . $rule1 . "\n";

            my $rule2 =
              convertBVFToSMT2( $strataBVF{$key}, \%assoc, $debugprint );

            print $zfp "PS_" . $kruleMapKey . " = " . $rule2 . "\n";
            print $zfp
              "proverUtils.prove( PK_$kruleMapKey == PS_$kruleMapKey )\n\n";
        }
        else {
            utils::failInfo(
                "$opcode: No K rule $kruleMapKey for S rule $key\n");

        }
    }

    close $zfp;

}

sub convertBVFToSMT2 {
    my $rule       = shift @_;
    my $assoc_ref  = shift @_;
    my $debugprint = shift @_;

    return preProcessBVFToSMT2( $rule, $assoc_ref, $debugprint );
}

sub preProcessBVFToSMT2 {
    my $rule       = shift @_;
    my $assoc_ref  = shift @_;
    my $debugprint = shift @_;

    utils::info("Converting Stratas rule to SMT");
    my %assoc = %{$assoc_ref};

    debugInfo( "Before removing Consts: $rule\n\n", $debugprint );
    $rule =~ s/<0x([\dabcdef]+)\|(\d+)>/(CONST_BV_S$2_V$1)/g;
    $rule =~ s/FALSE/(False)/g;
    $rule =~ s/TRUE/(True)/g;
    $rule =~ s/<TMP_BOOL_0>/(False)/g;
    $rule =~ s/<TMP_BOOL_1>/(True)/g;
    $rule =~ s/<%(\w+)>/($1)/g;
    debugInfo( "After removing Consts: $rule\n\n", $debugprint );

    while (1) {
        if ( $rule =~ m/<%(\w+)\|(\d+)>/ ) {
            my $r = $1;
            my $s = $2;
            if (   $r eq "af"
                or $r eq "pf"
                or $r eq "sf"
                or $r eq "zf"
                or $r eq "of"
                or $r eq "cf" )
            {
                $rule =~ s/<$r\|$s>/$r/g;
            }
            else {
                if ( exists $assoc{$r} ) {

          #      print "0.". $rule."\n";
          #                $rule =~ s/<%$r\|$s>(\[\d+:\d+\])/(($assoc{$r})$1)/g;
          #      print "1.". $rule."\n";
                    $rule =~ s/<%$r\|$s>/($assoc{$r})/g;

                    #      print "2.". $rule."\n";
                }
                else {
                    my $t = uc($r);

                  #                $rule =~ s/<%$r\|$s>(\[\d+:\d+\])/(($t)$1)/g;
                    $rule =~ s/<%$r\|$s>/($t)/g;
                }

            }
        }
        else {
            last;
        }
    }
    debugInfo( "After removing syms: $rule\n\n", $debugprint );
    ## we dont want to replace <%cf> to (CF == ONE1) at this point
    ## as this will break the format of the rule (op () ()) and
    ## introduce (a == ONE1)

    ## Replace cvt_single_to_double
    debugInfo( "[PreProcessBVFToSMT2]Before Rule: $rule\n\n", $debugprint );

    ## Fix a strata's bug
    $rule =~ s/vnfmsub132_double/vfnmsub132_double/g;

    ## Format change OP(R1,R2) => (OP R1 R2)
    my $prevRule = $rule;
    while (1) {
        $rule =~ s/($uif_terop)\((.*?, .*?, .*?)\)/($1 $2)/;
        $rule =~ s/($uif_binop)\((.*?, .*?)\)/($1 $2)/;
        $rule =~ s/($uif_uop)\((.*?)\)/($1 $2)/;

        if ( $prevRule eq $rule ) {
            last;
        }
        else {
            #print $prevRule . "\n". $rule . "\n\n";
        }
        $prevRule = $rule;
    }

    debugInfo( "[PreProcessBVFToSMT2]After Rule: $rule\n\n", $debugprint );
    $rule = convertBVFToSMT2_helper($rule);

    utils::info("Done");
    return $rule;
}

#
# BVF2SMT
#
sub convertBVFToSMT2_helper {
    my $rule       = shift @_;
    my $debugprint = 0;

    debugInfo( "[convertBVFToSMT2_helper] ->$rule\n", $debugprint );

    if (   $rule =~ m/^\(CONST_BV_S(\d+)_V(\d+)\)$/
        or $rule =~ m/^\(CONST_BV_S(\d+)_VNEG(\d+)\)$/
        or $rule =~ m/^\(R(\d+)\)$/
        or $rule =~ m/^\(R(\d+)\)$/ )
    {
        debugInfo( "[convertBVFToSMT2_helper]  Base\n", $debugprint );
        return $rule;
    }

    debugInfo( "[convertBVFToSMT2_helper] Non Base\n", $debugprint );

    if ( $rule =~ m/^(.+)\[(\d+):(\d+)\]$/ ) {
        my $arg  = $1;
        my $high = $2;
        my $low  = $3;
        debugInfo( "[convertBVFToSMT2_helper] Processing $arg with extract\n",
            $debugprint );

        $rule =
          "(Extract ($high, $low, (" . convertBVFToSMT2_helper($arg) . ")))";
    }

    ## Process normal operators
    my $bin_op =
qr/==|plus|concat|and|not|or|xor|sign-extend-\d+|if|cvt_single_to_double|s_shr|&|\||\^|<=|>=|<<|>>/;
    if ( $rule =~ m/^\(($bin_op) (.+)\)$/ ) {
        my $op   = $1;
        my $args = $2;

        my $args_ref = mineArgs( $args, $debugprint );

        my @retargs = @{$args_ref};
        debugInfo( "[convertBVFToSMT2_helper] Processing $op wo extract\n",
            $debugprint );

        if ( $op eq "plus" ) {
            $rule = "("
              . convertBVFToSMT2_helper( $retargs[0] ) . " + "
              . convertBVFToSMT2_helper( $retargs[1] ) . ")";
        }
        if ( $op eq "==" ) {
            $rule = "("
              . convertBVFToSMT2_helper( $retargs[0] ) . " == "
              . convertBVFToSMT2_helper( $retargs[1] ) . ")";
        }
        if ( $op eq "&" ) {
            $rule = "("
              . convertBVFToSMT2_helper( $retargs[0] ) . " & "
              . convertBVFToSMT2_helper( $retargs[1] ) . ")";
        }
        if ( $op eq "|" ) {
            $rule = "("
              . convertBVFToSMT2_helper( $retargs[0] ) . " | "
              . convertBVFToSMT2_helper( $retargs[1] ) . ")";
        }
        if ( $op eq "^" ) {
            $rule = "("
              . convertBVFToSMT2_helper( $retargs[0] ) . " ^ "
              . convertBVFToSMT2_helper( $retargs[1] ) . ")";
        }
        if ( $op eq "concat" ) {
            $rule =
                "(Concat("
              . convertBVFToSMT2_helper( $retargs[0] ) . ", "
              . convertBVFToSMT2_helper( $retargs[1] ) . "))";
        }
        if ( $op eq "and" ) {
            $rule = "(And("
              . convertBVFToSMT2_helper( $retargs[0] ) . ", "
              . convertBVFToSMT2_helper( $retargs[1] ) . "))";
        }
        if ( $op eq "or" ) {
            $rule = "(Or("
              . convertBVFToSMT2_helper( $retargs[0] ) . ", "
              . convertBVFToSMT2_helper( $retargs[1] ) . "))";
        }
        if ( $op eq "xor" ) {
            $rule = "(Xor("
              . convertBVFToSMT2_helper( $retargs[0] ) . ", "
              . convertBVFToSMT2_helper( $retargs[1] ) . "))";
        }
        if ( $op eq ">=" ) {
            $rule = "(UGE("
              . convertBVFToSMT2_helper( $retargs[0] ) . ", "
              . convertBVFToSMT2_helper( $retargs[1] ) . "))";
        }
        if ( $op eq ">" ) {
            $rule = "(UGT("
              . convertBVFToSMT2_helper( $retargs[0] ) . ", "
              . convertBVFToSMT2_helper( $retargs[1] ) . "))";
        }
        if ( $op eq "<=" ) {
            $rule = "(ULE("
              . convertBVFToSMT2_helper( $retargs[0] ) . ", "
              . convertBVFToSMT2_helper( $retargs[1] ) . "))";
        }
        if ( $op eq "<" ) {
            $rule = "(ULT("
              . convertBVFToSMT2_helper( $retargs[0] ) . ", "
              . convertBVFToSMT2_helper( $retargs[1] ) . "))";
        }
        if ( $op eq "not" ) {
            $rule = "(Not(" . convertBVFToSMT2_helper( $retargs[0] ) . "))";
        }
        if ( $op =~ m/sign-extend-(\d+)/ ) {
            my $n = $1;
            $rule =
                "(SignExt( $n - "
              . convertBVFToSMT2_helper( $retargs[0] )
              . ".size(), "
              . convertBVFToSMT2_helper( $retargs[0] ) . "))";
        }
        if ( $op eq "if" ) {
            $rule = "(If( "
              . convertBVFToSMT2_helper( $retargs[0] ) . ","
              . convertBVFToSMT2_helper( $retargs[1] ) . ","
              . convertBVFToSMT2_helper( $retargs[2] ) . "))";
        }
        if ( $op eq "s_shr" ) {
            $rule = "("
              . convertBVFToSMT2_helper( $retargs[0] ) . " >> "
              . convertBVFToSMT2_helper( $retargs[1] ) . ")";
        }
        if ( $op eq "<<" ) {
            $rule = "("
              . convertBVFToSMT2_helper( $retargs[0] ) . " << "
              . convertBVFToSMT2_helper( $retargs[1] ) . ")";
        }
        if ( $op eq ">>" ) {
            $rule =
                "(LShR( "
              . convertBVFToSMT2_helper( $retargs[0] ) . ", "
              . convertBVFToSMT2_helper( $retargs[1] ) . "))";
        }
    }

    ## Process UIFs
    if ( $rule =~ m/^\(($uif_uop) (.+)\)$/ ) {
        my $op   = $1;
        my $args = $2;

        my $args_ref = mineArgs( $args, $debugprint );

        my @retargs = @{$args_ref};
        debugInfo( "[convertBVFToSMT2_helper] Processing UIF $op\n",
            $debugprint );

        $rule = "( $op ( " . convertBVFToSMT2_helper( $retargs[0] ) . "))";
    }

    if ( $rule =~ m/^\(($uif_binop) (.+)\)$/ ) {
        my $op   = $1;
        my $args = $2;

        my $args_ref = mineArgs( $args, $debugprint );

        my @retargs = @{$args_ref};
        debugInfo( "[convertBVFToSMT2_helper] Processing UIF $op\n",
            $debugprint );

        $rule =
            "( $op ( "
          . convertBVFToSMT2_helper( $retargs[0] ) . ", "
          . convertBVFToSMT2_helper( $retargs[1] ) . "))";
    }

    if ( $rule =~ m/^\(($uif_terop) (.+)\)$/ ) {
        my $op   = $1;
        my $args = $2;

        my $args_ref = mineArgs( $args, $debugprint );

        my @retargs = @{$args_ref};
        debugInfo( "[convertBVFToSMT2_helper] Processing UIF $op\n",
            $debugprint );

        $rule =
            "( $op ( "
          . convertBVFToSMT2_helper( $retargs[0] ) . ", "
          . convertBVFToSMT2_helper( $retargs[1] ) . ", "
          . convertBVFToSMT2_helper( $retargs[2] ) . "))";
    }
    debugInfo( "[convertBVFToSMT2_helper] Transformed rule $rule\n",
        $debugprint );

    return $rule;
}

## Parse inputs of the form (.*) (*) (.*) ...
sub mineArgs {
    my $args       = shift @_;
    my $debugprint = shift @_;
    $debugprint = 0;

    debugInfo( "[mineArgs]$args\n", $debugprint );
    my @arr     = split( //, $args );
    my $inArgs  = 0;
    my @retArgs = ();

    my $op_arg  = "";
    my $counter = 0;
    for ( my $i = 0 ; $i < scalar(@arr) ; $i++ ) {

        #print $arr[$i] . "-$i" . "/" . scalar(@arr). "-";
        if ( $arr[$i] ne "(" and $inArgs == 0 ) {
            next;
        }
        if ( $arr[$i] eq "(" ) {
            $inArgs = 1;
            $counter++;
        }
        if ( $arr[$i] eq ")" ) {
            $counter--;
        }
        $op_arg = $op_arg . $arr[$i];

        if ( $counter == 0 ) {
            $inArgs = 0;

            #            print "*";

            if ( ( $i + 1 ) < scalar(@arr) and ( $arr[ $i + 1 ] eq "[" ) ) {

                # Add the extraction [h:l]
                my $k = $i + 1;
                for ( ; $k < scalar(@arr) ; $k++ ) {

                    #        print $arr[$k] . " ";
                    $op_arg = $op_arg . $arr[$k];
                    if ( $arr[$k] eq "]" ) {
                        $i = $k;
                        last;
                    }
                }
            }
            push @retArgs, $op_arg;
            $op_arg = "";
        }
    }

    printArray( \@retArgs, "\n[mineArgs]Return:", $debugprint );

    return \@retArgs;

}

sub convertKRuleToSMT2 {
    my $opcode     = shift @_;
    my $debugprint = shift @_;

    utils::info("Converting K rule to SMT");

    chomp $opcode;
    my $specfile = "kproveSpecs/x86-semantics_${opcode}_spec.k";
    my $specoutput =
      "instructions_with_uif/kproveOutput/x86-semantics_${opcode}_spec.output";

    my ( $rsmap_ref, $rev_rsmap_ref, $reglines_ref ) =
      kutils::processSpecOutput( $specoutput, $debugprint );

    my $returnInfo =
      kutils::sanitizeSpecOutput( $opcode, $rsmap_ref, $rev_rsmap_ref,
        $reglines_ref, \$specfile, \$debugprint, 1 );

    my %retMap = ();

    printArray( \@{ scalarToArray( $returnInfo, "\n" ) },
        "[convertKRuleToSMT2]", $debugprint );

    for my $item ( @{ scalarToArray( $returnInfo, "\n" ) } ) {
        chomp $item;
        trim($item);

        if ( $item eq "" ) {
            next;
        }
        my @splt = split( "\\|->", $item );
        $splt[0] = trim( $splt[0] );
        $splt[1] = trim( $splt[1] );

        if ( $splt[0] =~ m/"(\w+)"/ ) {
            $retMap{$1} = convertKRuleToSMT2_helper( $splt[1] );
        }
        if ( $splt[0] =~ m/convToRegKeys\((\w+)\)/ ) {
            $retMap{$1} = convertKRuleToSMT2_helper( $splt[1] );
        }
    }
    utils::info("Done");

    return \%retMap;

}

#
# K2SMT
#
sub convertKRuleToSMT2_helper {
    my $rule       = shift @_;
    my $debugprint = shift @_;

    #  utils::info("In convertKRuleToSMT2_helper");

    #$debugprint = 1;

    $rule =~ s/mi\((\d+), (\d+)\)/(CONST_BV_S$1_V$2)/g;
    $rule =~ s/mi\((\d+), -(\d+)\)/(CONST_BV_S$1_VNEG$2)/g;
    $rule =~ s/concatenateMInt/Concat/g;
    $rule =~ s/notBool/Not/g;
    $rule =~ s/true/True/g;
    $rule =~ s/false/False/g;

    my $bin_op = (
qr/extractMInt|addMInt|orMInt|andMInt|eqMInt|ashrMInt|lshrMInt|shlMInt|ultMInt|svalueMInt/
    );
    my $arg = $rule;
    my %cnt = (
        "addMInt"     => 0,
        "andMInt"     => 0,
        "eqMInt"      => 0,
        "ultMInt"     => 0,
        "extractMInt" => 0,
        "svalueMInt"  => 0,
        "xorMInt"     => 0,
        "orMInt"      => 0,
    );

    while (1) {
        my $op   = "";
        my $pre  = "";
        my $post = "";

        #        utils::info("Before");
        if ( $arg =~ m/(.+)(xorMInt)(.+)/ ) {
            $pre  = $1;
            $op   = $2;
            $post = $3;
        }
        elsif ( $arg =~ m/(.+)(ultMInt)(.+)/ ) {
            $pre  = $1;
            $op   = $2;
            $post = $3;
        }
        elsif ( $arg =~ m/(.+)(eqMInt)(.+)/ ) {
            $pre  = $1;
            $op   = $2;
            $post = $3;
        }
        elsif ( $arg =~ m/(.+)(orMInt)(.+)/ ) {
            $pre  = $1;
            $op   = $2;
            $post = $3;
        }
        elsif ( $arg =~ m/(.+)(addMInt)(.+)/ ) {
            $pre  = $1;
            $op   = $2;
            $post = $3;
        }
        elsif ( $arg =~ m/(.+)(andMInt)(.+)/ ) {
            $pre  = $1;
            $op   = $2;
            $post = $3;
        }
        elsif ( $arg =~ m/(.+)(svalueMInt)(.+)/ ) {
            $pre  = $1;
            $op   = $2;
            $post = $3;
        }
        elsif ( $arg =~ m/(.+)(extractMInt)(.+)/ ) {
            $pre  = $1;
            $op   = $2;
            $post = $3;
        }
        elsif ( $arg =~ m/(.+)(lshrMInt)(.+)/ ) {
            $pre  = $1;
            $op   = $2;
            $post = $3;
        }
        elsif ( $arg =~ m/(.+)(ashrMInt)(.+)/ ) {
            $pre  = $1;
            $op   = $2;
            $post = $3;
        }
        elsif ( $arg =~ m/(.+)(shlMInt)(.+)/ ) {
            $pre  = $1;
            $op   = $2;
            $post = $3;
        }
        else {
            last;
        }

#        elsif ($arg =~ m/(.+)(extractMInt|addMInt|orMInt|andMInt|eqMInt|ashrMInt|lshrMInt|shlMInt|ultMInt|svalueMInt)(.+)/) {
#          $pre  = $1;
#          $op   = $2;
#          $post = $3;
#
#        } else {
#          last;
#        }
#        utils::info("After2");

        debugInfo( "\n\nGot Binary op: $op\n", $debugprint );
        debugInfo( "\n\nBefore Rule: $arg\n",  $debugprint );

        #$cnt{$op}++;
        #        printMap(\%cnt, "op count map", 1);

        #        utils::info("Before selectbraces");
        my ( $op_arg, $rest ) = selectbraces( $post, 1 );

        #        utils::info("After selectbraces");

        debugInfo( "Arg: " . $op_arg . "\n", $debugprint );
        debugInfo( "Rest: " . $rest . "\n",  $debugprint );

        my @args = ();

        #        utils::info("Before findArgs");
        if ( $op eq "extractMInt" ) {
            @args = findArgs( $op_arg, 3 );
        }
        elsif ( $op eq "svalueMInt" ) {
            @args = findArgs( $op_arg, 1 );
        }
        else {
            @args = findArgs( $op_arg, 2 );
        }

        #        utils::info("After findArgs");

        for ( my $i = 0 ; $i < scalar(@args) ; $i++ ) {
            $args[$i] = utils::trim( $args[$i] );
            debugInfo( "Arg$i: " . $args[$i] . "\n", $debugprint );
        }

        if ( $op eq "eqMInt" ) {
            $arg = $pre . "( $args[0] == $args[1] ) $rest";
        }
        if ( $op eq "addMInt" ) {
            $arg = $pre . "( $args[0] + $args[1] ) $rest";
        }
        if ( $op eq "ultMInt" ) {
            $arg = $pre . "ULT( $args[0], $args[1] ) $rest";
        }
        if ( $op eq "svalueMInt" ) {
            $arg = $pre . "BV2Int( $args[0], is_signed=True) $rest";
        }
        if ( $op eq "orMInt" ) {
            $arg = $pre . "( $args[0] | $args[1] ) $rest";
        }
        if ( $op eq "andMInt" ) {
            $arg = $pre . "( $args[0] & $args[1] ) $rest";
        }
        if ( $op eq "xorMInt" ) {
            $arg = $pre . "( $args[0] ^ $args[1] ) $rest";
        }
        if ( $op eq "andBool" ) {
            $arg = $pre . "And" . "( $args[0] , $args[1] ) $rest";
        }
        if ( $op eq "orBool" ) {
            $arg = $pre . "Or" . "( $args[0] , $args[1] ) $rest";
        }
        if ( $op eq "extractMInt" ) {
            my $size  = $args[0] . ".size()";
            my $start = $args[1];
            my $end   = $args[2];
            $arg =
                $pre
              . "Extract"
              . "( $size - $start - 1, $size - $end, $args[0]  ) $rest";
        }
        if ( $op eq "ashrMInt" ) {
            $args[1] =~ s/^uvalueMInt//;
            if ( $args[1] =~ m/^(\d+)$/ ) {
                $arg = $pre
                  . "( $args[0] >> BitVecVal($args[1], $args[0].size()) ) $rest";
            }
            else {
                $arg = $pre
                  . "( $args[0] >> Concat( BitVecVal(0, $args[0].size() - $args[1].size()), $args[1]) ) $rest";
            }
        }
        if ( $op eq "lshrMInt" ) {
            $args[1] =~ s/^uvalueMInt//;
            if ( $args[1] =~ m/^(\d+)$/ ) {
                $arg = $pre
                  . "LShR( $args[0], BitVecVal($args[1], $args[0].size())) $rest";
            }
            else {
                $arg = $pre
                  . "LShR( $args[0], Concat( BitVecVal(0, $args[0].size() - $args[1].size()), $args[1]) ) $rest";
            }
        }
        if ( $op eq "shlMInt" ) {
            $args[1] =~ s/^uvalueMInt//;
            if ( $args[1] =~ m/^(\d+)$/ ) {
                $arg = $pre
                  . "( $args[0] <<  BitVecVal($args[1], $args[0].size())) $rest";
            }
            else {
                $arg = $pre
                  . "( $args[0] << Concat( BitVecVal(0, $args[0].size() - $args[1].size()), $args[1]) ) $rest";
            }
        }

        #        debugInfo( "\n\nAfter Rule: $arg\n", $debugprint );
    }
    $rule = $arg;

    ## Remove Sign Extension

    #$debugprint = 1;
    $arg = $rule;
    while (1) {
        my $n    = "";
        my $pre  = "";
        my $post = "";

        if ( $arg =~ m/(.+)mi\((\d+), BV2Int(.+)/ ) {
            $pre  = $1;
            $n    = $2;
            $post = $3;
        }
        else {
            last;
        }

        my $actualPost = "($n, BV2Int$post";

        debugInfo( "\n\nGot SExt:\n",                     $debugprint );
        debugInfo( "\n\nBefore Rule : $arg\n",            $debugprint );
        debugInfo( "\n\nBefore Rule Pre: $pre\n",         $debugprint );
        debugInfo( "\n\nBefore Rule Post: $actualPost\n", $debugprint );

        my ( $op_arg, $rest ) = selectbraces( $actualPost, 1 );

        debugInfo( "Arg: " . $op_arg . "\n", $debugprint );
        debugInfo( "Rest: " . $rest . "\n",  $debugprint );

        my @args = findArgs( $op_arg, 2 );

        debugInfo( "Arg1: " . $args[0] . "\n", $debugprint );
        debugInfo( "Arg2: " . $args[1] . "\n", $debugprint );

        ## $args[1] contain svalueMInt to be removed
        $args[1] =~ s/^BV2Int//;
        $args[1] =~ s/, is\_signed=True//;
        $args[1] = utils::trim( $args[1] );

        $arg =
            $pre
          . "SignExt("
          . $args[0] . " - "
          . $args[1]
          . ".size(), "
          . $args[1] . ")"
          . $rest;
        debugInfo( "\n\nAfter Rule: $arg\n", $debugprint );
    }

    $rule = $arg;
    $rule =~ s/getParentValue\(%(\w+), RSMap\)/uc($1)/ge;
    $rule =~ s/getParentValue\((\w+), RSMap\)/$1/g;
    $rule =~ s/getFlag\("(\w+)", RSMap\)/$1/g;

    #    utils::info("Out convertKRuleToSMT2_helper");
    return $rule;
}

sub assocateMcSemaXed {
    my $filenameMC  = shift @_;
    my $filenameXED = shift @_;
    my $debugprint  = shift @_;
    my $print       = shift @_;

    open( my $fp, "<", $filenameXED ) or die "Can't open: $!";
    my @lines = <$fp>;
    close $fp;

    my %model    = ();
    my %revmodel = ();

    ## Create a moel of xed
    for my $line (@lines) {
        chomp $line;

        my $key  = "";
        my $name = "";
        if ( $line =~ m/^(\d+) (\w+) (\w+) (.*)/g ) {
            $key  = $2;
            $name = $3;
            my $rest = $4;
            if ( $rest =~ m/X87/g ) {
                next;
            }

            push @{ $model{$key} }, $name;
            $revmodel{$name} = $key;
        }
    }

    my %retmodel = ();

    open( $fp, "<", $filenameMC ) or die "Can't open: $!";
    @lines = <$fp>;
    close $fp;

    for my $line (@lines) {
        chomp $line;

        $line =~ s/^ISEL_//g;

        if ( $line =~ m/X87/g ) {
            next;
        }

        my $key1 = $line;
        my $key2 = $line =~ s/_.*//gr;

        if ( exists $revmodel{$key1} ) {
            push @{ $retmodel{ $revmodel{$key1} } }, $line;
        }
        elsif ( exists $model{$key2} ) {

            #print "$line\n";
            push @{ $retmodel{$key2} }, $line;
        }
        else {
            ## Special case
            if ( $line =~ m/(RET_NEAR).*/g ) {

                #print "$1:$line\n";
                push @{ $retmodel{$1} }, $line;
            }
            elsif ( $line =~ m/(CALL_NEAR).*/g ) {

                #print "$1:$line\n";
                push @{ $retmodel{$1} }, $line;
            }
            else {
                #print "K1:$key1 K2:$key2 L:$line\n";
            }
        }
    }

    if ( defined($print) and $print == 1 ) {
        for my $key ( sort keys %retmodel ) {
            print $key. "\n";
            printArray( \@{ $retmodel{$key} }, "", 1 );
        }
    }

    return \%retmodel;
}

sub assocateMcSemaAvail {
    my $mcsema_supp_ref = shift @_;
    my $avail_ref       = shift @_;
    my $debugprint      = shift @_;

    my %mcsema_supp = %{$mcsema_supp_ref};
    my %avail       = %{$avail_ref};

    my %retmodel = ();

    for my $key ( keys %mcsema_supp ) {
        if ( exists $avail{ lc($key) } ) {

            #print "F:$key\n";
        }
        else {
            #print "NF1:$key\n";
        }
    }

    print "\n";

    for my $key ( keys %avail ) {
        if ( exists $mcsema_supp{ uc($key) } ) {

            #print "F:$key\n";
        }
        else {
            #     print "NF2:$key\n";
        }
    }
    return \%retmodel;
}

sub modelInstructions {
    my $filename     = shift @_;
    my $intelattfile = shift @_;
    my $hint         = shift @_;
    my $print        = shift @_;

    ## get intel <-> att
    my ( $intel2att_ref, $att2intel_ref ) = assocIntelATT( $intelattfile, 0 );
    my %intel2att = %{$intel2att_ref};
    my %att2intel = %{$att2intel_ref};

    ## Model instruction in a map.
    open( my $fp, "<", $filename ) or die "Can't open: $!";
    my @lines = <$fp>;
    close $fp;

    my %model_att   = ();
    my %model_intel = ();

    my $linecount = 0;
    for my $line (@lines) {
        chomp $line;
        $linecount++;

        my $key  = "";
        my $name = "";

        if ( $hint eq "keep_instruction" ) {
            $key = $line;
        }
        else {
            $key = $line =~ s/_.*//gr;
        }
        $name = $line;
        push @{ $model_att{$key} }, $name;
    }

    #printMapArray(\%model_att, "", 1);

    my $verifyCount = 0;
    for my $key ( sort keys %model_att ) {
        $verifyCount += scalar( @{ $model_att{$key} } );
    }

    if ( $verifyCount != $linecount ) {
        utils::failInfo("modelInstructions failed");
    }

    if ( defined($print) and $print == 1 ) {
        for my $key ( sort keys %model_att ) {
            print $key. "\n";
            printArray( \@{ $model_att{$key} }, "", 1 );
            print "Intel Key:" . $att2intel{$key} . "\n";
        }
    }

    if (   ( $hint eq "inIntel" )
        or ( $hint eq "keep_instruction" ) )
    {
        return ( \%model_att, \%model_att );
    }

    ## Get the corresponding intel keys
    for my $attkey ( sort keys %model_att ) {
        if ( exists $att2intel{$attkey} ) {
            $model_intel{ $att2intel{$attkey} } = $attkey;
        }
        else {
            print "$attkey\n";
        }
    }

    return ( \%model_att, \%model_intel );
}

sub assocIntelATT {
    my $filename   = shift @_;
    my $debugprint = shift @_;

    my $verifyCount = 0;

    ## Model instruction in a map.
    open( my $fp, "<", $filename ) or die "Can't open: $!";
    my @lines = <$fp>;
    close $fp;

    my %intel2att = ();
    my %att2intel = ();

    for my $line (@lines) {
        chomp $line;
        $verifyCount++;
        if ( $line =~ m/(\w+):(\w+) (\w+)/g ) {
            my $intel = $1;
            my $att   = $2 . " " . $3;
            push @{ $intel2att{$intel} }, $att;
            $att2intel{$att} = $intel;
        }
        elsif ( $line =~ m/(\w+):(\w+)/g ) {
            my $intel = $1;
            my $att   = $2;
            push @{ $intel2att{$intel} }, $att;
            $att2intel{$att} = $intel;
        }
    }

    if ( $verifyCount != scalar( keys %att2intel ) + 6 ) {
        print $verifyCount. "\n";
        print scalar( keys %att2intel ) . "\n";
        utils::failInfo("assocIntelATT failed");
    }

    if ( defined($debugprint) and $debugprint == 1 ) {
        printMap( \%att2intel, "ATT to Intel", 1 );
        printMapArray( \%intel2att, "Intel to ATT", 1 );
    }

    return ( \%intel2att, \%att2intel );
}

## Find the variant of the att instructions
## register, imm, or mem or imm_mem
## return the sizes
## sizes[0] == imm size
## sizes[1] == mem size
sub getVariant {
    my $line = shift @_;

    my $imm_or_mem = "";
    my @sizes      = ();

    if ( ( $line =~ m/_imm(\d+)/ ) and ( $line =~ m/_m(\d+)/ ) ) {

        if ( $line =~ m/_imm(\d+)/ ) {
            push @sizes, $1;
        }
        if ( $line =~ m/_m(\d+)/ ) {
            push @sizes, $1;
        }

        $imm_or_mem = "imm_mem";

    }
    elsif ( $line =~ m/_imm(\d+)/ ) {
        push @sizes, $1;
        push @sizes, 0;
        $imm_or_mem = "imm";
    }
    elsif ( $line =~ m/_m(\d+)/ ) {
        push @sizes, 0;
        push @sizes, $1;
        $imm_or_mem = "mem";
    }
    else {
        push @sizes, 0;
        push @sizes, 0;
        $imm_or_mem = "register";
    }

    return ( $imm_or_mem, \@sizes );
}

sub createGuesses {
    my $line         = shift @_;
    my $immSizes_ref = shift @_;
    my $memSizes_ref = shift @_;

    my @immSizes = @{$immSizes_ref};
    my @memSizes = @{$memSizes_ref};

    my @immRepls = ();
    my @memRepls = ();

    for my $immSize (@immSizes) {
        if ( 0 != $immSize ) {
            if ( 128 == $immSize ) {
                push @immRepls, "xmm";
            }
            elsif ( 256 == $immSize ) {
                push @immRepls, "ymm";
            }
            elsif ( 8 == $immSize ) {
                push @immRepls, "r8";
                push @immRepls, "cl";
            }
            else {
                push @immRepls, "r$immSize";
            }
        }
    }

    for my $memSize (@memSizes) {
        if ( 0 != $memSize ) {
            if ( 128 == $memSize ) {
                push @memRepls, "xmm";
            }
            elsif ( 256 == $memSize ) {
                push @memRepls, "ymm";
            }
            elsif ( 8 == $memSize ) {
                push @memRepls, "r8";
                push @memRepls, "cl";
            }
            else {
                push @memRepls, "r$memSize";
            }
        }
    }

    my @returnVals = ();
    if ( 0 != scalar(@immRepls) and 0 != scalar(@memRepls) ) {
        for my $immRepl (@immRepls) {
            for my $memRepl (@memRepls) {
                my $mod1 = $line =~ s/_imm(\d+)/_$immRepl/gr;
                my $mod2 = $mod1 =~ s/_m(\d+)/_$memRepl/gr;
                push @returnVals, $mod2;
            }
        }
    }
    elsif ( 0 != scalar(@immRepls) ) {
        for my $immRepl (@immRepls) {
            my $mod1 = $line =~ s/_imm(\d+)/_$immRepl/gr;
            push @returnVals, $mod1;
        }
    }
    elsif ( 0 != scalar(@memRepls) ) {
        for my $memRepl (@memRepls) {
            my $mod1 = $line =~ s/_m(\d+)/_$memRepl/gr;
            push @returnVals, $mod1;
        }
    }

    return \@returnVals;
}

sub getRegVaraint {
    my $line          = shift @_;
    my $allregmap_ref = shift @_;
    my $debugprint    = shift @_;

    #$debugprint = 1;

    my %allregmap = %{$allregmap_ref};

    #line is already a reg variant

    if ( exists $allregmap{$line} ) {
        return ( $allregmap{$line}[0], 1, "register", "match" );
    }

    my ( $imm_or_mem, $sizes_ref ) = getVariant($line);

    if ( $line =~ m/_\d+$/g ) {
        return ( "", 0, $imm_or_mem, "skipped" );
    }
    if ( $imm_or_mem eq "register" ) {
        return ( "", 0, "register", "no_match" );
    }

    my @sizes   = @{$sizes_ref};
    my $immSize = $sizes[0];
    my $memSize = $sizes[1];

    my @guesses  = ();
    my $foundOne = 0;

    ## Some simple modofications of imm inst
    ## inorder to get a match.
    my $mod1 = $line =~ s/_rax/_r64/gr;
    my $mod2 = $mod1 =~ s/_eax/_r32/gr;
    my $mod3 = $mod2 =~ s/_ax/_r16/gr;
    my $mod4 = $mod3 =~ s/_al/_r8/gr;

    #    print "$mod4\::$imm_or_mem\n";

    my @guesses  = ();
    my @immSizes = ();
    my @memSizes = ();

    push @guesses,  "Type No Extend";
    push @immSizes, $immSize;
    push @memSizes, $memSize;
    if ( $debugprint == 1 ) {
        print "$line: Type No Extend \n";
        printArray( \@immSizes, "Imm Sizes no Extend", $debugprint );
        printArray( \@memSizes, "Mem Sizes No Extend", $debugprint );
    }
    my $retGueses_ref = createGuesses( $mod4, \@immSizes, \@memSizes );
    push @guesses, @{$retGueses_ref};
    if ( $debugprint == 1 ) {
        printArray( \@guesses, "Guesses No Extend", $debugprint );
    }

    push @guesses, "Type Extend";
    @immSizes = ();
    @memSizes = ();
    for ( my $i = $immSize ; $i != 0 and $i <= 256 ; $i = $i * 2 ) {
        push @immSizes, $i;
    }
    for ( my $i = $memSize ; $i != 0 and $i <= 256 ; $i = $i * 2 ) {
        push @memSizes, $i;
    }

    if ( $debugprint == 1 ) {
        print "$line: Type Extend \n";
        printArray( \@immSizes, "Imm Sizes Extend", $debugprint );
        printArray( \@memSizes, "Mem Sizes Extend", $debugprint );
    }

    $retGueses_ref = createGuesses( $mod4, \@immSizes, \@memSizes );
    push @guesses, @{$retGueses_ref};
    if ( $debugprint == 1 ) {
        printArray( \@guesses, "Guesses Extend", $debugprint );
    }

    my $matchType = "";
    for my $guess (@guesses) {

        if ( $guess eq "Type No Extend" ) {
            $matchType = "no_extend";
            next;
        }
        elsif ( $guess eq "Type Extend" ) {
            $matchType = "extend";
            next;
        }

        #print "-> $guess\n";
        if ( exists $allregmap{$guess} ) {
            $foundOne = 1;
            return ( $allregmap{$guess}[0], 1, $imm_or_mem, $matchType );
        }
    }

    if ( 0 == $foundOne ) {
        return ( "", 0, $imm_or_mem, "no_match" );
    }
}

##########################################################

sub mem_modify_testcases {
    my $opcode             = shift @_;
    my $mem_operand        = shift @_;
    my $modified_testcases = shift @_;

    print "Modiy $kutils::testcases using $mem_operand\n";

    open( my $fp, "<", $kutils::testcases )
      or die "Can't open $kutils::testcases: $!";
    my @lines = <$fp>;
    close($fp);

    open( my $fpn, ">", $modified_testcases )
      or die "Can't open $modified_testcases: $!";

    for my $line (@lines) {
        my $cpyline = $line;
        chomp $cpyline;
        if ( $cpyline =~ m/$mem_operand/g ) {

           #print $line . "\n";
           #$cpyline =~ s/^($mem_operand\w+)(\W.*)/$1 00 00 00 06 ff ff ff e0/g;
            print $fpn "$mem_operand     00 00 00 06 ff ff ff e0" . "\n";
        }
        else {

            #if ( $cpyline =~
            #    m/00000006 ffffffe0   v v v v v v v v\s*(\d.*)00\s*$/g )
            #{

            #print $fpn "00000006 ffffffe0   v v v v v v v v   $1ff"."\n";
            #print $1. "\n";
            #}
            if ( $cpyline =~ m/%rsp/g ) {
                print $fpn "%rsp     00 00 00 06 ff ff ff f8" . "\n";
            }
            else {
                print $fpn $line;
            }

            #    my $temp = $cpyline =~
            #      s/%rcx\s*\S\S \S\S \S\S \S\S \S\S \S\S \S\S (\S\S)/$1/gr;
            #    my $hextemp = hex($temp);
            #    my $num     = sprintf( "%02x", $hextemp & 0x0f );
            #    my $newline = "00 00 00 00 00 00 00 $num";
            #    print $fpn "%rcx    $newline" . "\n";
            #}
            #else {
            #    print $fpn $line;
            #}
            #if ( $cpyline =~ m/%rcx/g ) {
            #    my $temp = $cpyline =~
            #      s/%rcx\s*\S\S \S\S \S\S \S\S \S\S \S\S \S\S (\S\S)/$1/gr;
            #    my $hextemp = hex($temp);
            #    my $num     = sprintf( "%02x", $hextemp & 0x0f );
            #    my $newline = "00 00 00 00 00 00 00 $num";
            #    print $fpn "%rcx    $newline" . "\n";
            #}

        }
    }

    close $fpn;
    print "Modiied: $modified_testcases\n";

    #return $modified_testcases;
}

sub getInstrsFolder {
    my $basepath   = shift @_;
    my $type       = shift @_;
    my $opcode     = shift @_;
    my $debugprint = shift @_;

    my $instfolder = "$basepath" . "/";
    if ( "register" eq $type ) {
        $instfolder = $instfolder
          . "concrete_instances/register-variants/$opcode/instructions/";
    }
    elsif ( "memory" eq $type ) {
        $instfolder = $instfolder
          . "concrete_instances/memory-variants/$opcode/instructions/";
    }
    else {
        $instfolder = $instfolder
          . "concrete_instances/immediate-variants/$opcode/instructions/";
    }
    if ( 1 eq $debugprint ) {
        print "$instfolder\n";
    }
    return $instfolder;
}

sub getDummyRegsForOperands {
    ## Obtain the correspondence between the generic opcode
    ## and its particular instance.
    my %actual2psedoRegs          = ();
    my $operandListFromOpcode_ref = shift @_;
    my $operandListFromInstr_ref  = shift @_;
    my @operandListFromOpcode     = @{$operandListFromOpcode_ref};
    my @operandListFromInstr      = @{$operandListFromInstr_ref};

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

    return \%actual2psedoRegs;
}

sub parseKFile {
    my $lines_ref  = shift @_;
    my $debugprint = shift @_;
    my @lines      = @{$lines_ref};

    my %map = ();

    for my $line (@lines) {
        chomp $line;
        if ( $line =~ m/^(.*) \|-> (.*)$/ ) {
            $map{ utils::trim($1) } = utils::trim($2);
        }
        if ( $line =~ m/^module (.*)$/ ) {
            $map{"module"} = utils::trim($1);
        }
        if ( $line =~ m/\s+execinstr (.*)$/ ) {
            $map{"execinstr"} = utils::trim($1);
        }
    }
    if ($debugprint) {
        printMap( \%map, "" );
    }

    return \%map;
}

1;
