; ModuleID = 'Output/test_28.clang.trans.opt.bc'
source_filename = "Output/test_28.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [24 x i8], i64, [24 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [8 x i8], i64, [40 x i8] }>
%1 = type <{ [952 x i8] }>
%2 = type <{ [1902 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2082 = internal constant %0 <{ void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e20.20 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e20.20 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e3d.22 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e42.21 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_e3d.22 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1165.23 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1095.25 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_105b.26 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1070.24 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1165.23 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1165.23 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_10c1.27 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_10d5.28 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_10e9.29 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_10f5.30 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1101.31 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_110d.32 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1124.33 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_1131.34 to void (%struct.regs*)*), void (%struct.regs*)* bitcast (void (%struct.regs*, i8*, i8*, i8*)* @sub_185d.35 to void (%struct.regs*)*), i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1769), [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%1* @data_0x24ea to i64), i64 888), [8 x i8] c"\09\00\00\00\00\00\00\00", i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1774), [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%1* @data_0x24ea to i64), i64 888), [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1782), [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%1* @data_0x24ea to i64), i64 888), [8 x i8] c"\01\00\00\00\00\00\00\00", i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1791), [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%1* @data_0x24ea to i64), i64 888), [8 x i8] c"\02\00\00\00\00\00\00\00", i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1802), [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%1* @data_0x24ea to i64), i64 888), [8 x i8] c"\06\00\00\00\00\00\00\00", i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1811), [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%1* @data_0x24ea to i64), i64 888), [8 x i8] c"\07\00\00\00\00\00\00\00", i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1822), [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%1* @data_0x24ea to i64), i64 888), [8 x i8] c"\08\00\00\00\00\00\00\00", i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1831), [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00a\00\00\00\00\00\00\00", i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1835), [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00i\00\00\00\00\00\00\00", i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1846), [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%1* @data_0x24ea to i64), i64 888), [8 x i8] c"\03\00\00\00\00\00\00\00", i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1857), [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%1* @data_0x24ea to i64), i64 888), [8 x i8] c"\04\00\00\00\00\00\00\00", i64 add (i64 ptrtoint (%2* @data_0x28a2 to i64), i64 1872), [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%1* @data_0x24ea to i64), i64 888), [40 x i8] c"\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 64
@data_0x24ea = internal global %1 <{ [952 x i8] c"I have no name!\00%s () {\0A\00%s ()\0A\00%s: Out of memory\00./\00~/\00%s\0A\00PWD\00Can't get current working directory\0A\00alias\00PATH\00aivV\00GNU which v2.21, Copyright (C) 1999 - 2015 Carlo Wood.\0A\00GNU which comes with ABSOLUTELY NO WARRANTY;\0A\00This program is free software; your freedom to use, change\0A\00and distribute this program is protected by the GPL.\0A\00HOME\00--read-functions, --read-alias, -i\00--read-functions\00--read-alias, -i\00%s: %s: Warning: stdin is a tty.\0A\00declare -\00}\0A\00%s: no %s in (%s)\0A\00%s: Out of memory\0A\00Usage: %s [options] [--] COMMAND [...]\0A\00Write the full path of COMMAND(s) to standard output.\0A\0A\00  --version, -[vV] Print version and exit successfully.\0A\00  --help,          Print this help and exit successfully.\0A\00  --skip-dot       Skip directories in PATH that start with a dot.\0A\00  --skip-tilde     Skip directories in PATH that start with a tilde.\0A\00  --show-dot       Don't expand a dot to current directory in output.\0A\00  --show-tilde     Output a tilde for H" }>, align 64
@data_0x28a2 = internal constant %2 <{ [1902 x i8] c"I have no name!\00%s () {\0A\00%s ()\0A\00%s: Out of memory\00./\00~/\00%s\0A\00PWD\00Can't get current working directory\0A\00alias\00PATH\00aivV\00GNU which v2.21, Copyright (C) 1999 - 2015 Carlo Wood.\0A\00GNU which comes with ABSOLUTELY NO WARRANTY;\0A\00This program is free software; your freedom to use, change\0A\00and distribute this program is protected by the GPL.\0A\00HOME\00--read-functions, --read-alias, -i\00--read-functions\00--read-alias, -i\00%s: %s: Warning: stdin is a tty.\0A\00declare -\00}\0A\00%s: no %s in (%s)\0A\00%s: Out of memory\0A\00Usage: %s [options] [--] COMMAND [...]\0A\00Write the full path of COMMAND(s) to standard output.\0A\0A\00  --version, -[vV] Print version and exit successfully.\0A\00  --help,          Print this help and exit successfully.\0A\00  --skip-dot       Skip directories in PATH that start with a dot.\0A\00  --skip-tilde     Skip directories in PATH that start with a tilde.\0A\00  --show-dot       Don't expand a dot to current directory in output.\0A\00  --show-tilde     Output a tilde for HOME directory for non-root.\0A\00  --tty-only       Stop processing options on the right if not on tty.\0A\00  --all, -a        Print all matches in PATH, not just the first\0A\00  --read-alias, -i Read list of aliases from stdin.\0A\00  --skip-alias     Ignore option --read-alias; don't read stdin.\0A\00  --read-functions Read shell functions from stdin.\0A\00  --skip-functions Ignore option --read-functions; don't read stdin.\0A\0A\00Recommended use is to write the output of (alias; declare -f) to standard\0A\00input, so that which can show aliases and shell functions. See which(1) for\0A\00examples.\0A\0A\00If the options --read-alias and/or --read-functions are specified then the\0A\00output can be a full alias or function definition, optionally followed by\0A\00the full path of each command used inside of those.\0A\0A\00Report bugs to <which-bugs@gnu.org>.\0A\00help\00version\00skip-dot\00skip-tilde\00show-dot\00show-tilde\00tty-only\00all\00read-alias\00skip-alias\00read-functions\00skip-functions\00 ~\00\09~\00 \00\0A\00HOME\00" }>, align 64
@stdout = external global i64
@stderr = external global i64

declare x86_64_sysvcc i64 @getenv(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @getopt_long(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @fwrite(i64 inreg, i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @strncpy(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @isatty(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @fprintf(i64 inreg, i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @strchr(i64 inreg, i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @malloc(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @exit(i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @strcmp(i64 inreg, i64 inreg) local_unnamed_addr

declare x86_64_sysvcc i64 @geteuid() local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #2

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %_RSP_ptr_.sroa.0.i = alloca i64, align 8
  %_RBP_ptr_.sroa.0.i = alloca i64, align 8
  %_local_stack_start_ptr_2067.i = alloca [1568 x i8], align 1
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RSI_val.i = alloca i64, align 8, !mcsema_real_eip !2
  %_RSP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RSP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  %_RBP_ptr_.sroa.0.i.0..sroa_cast = bitcast i64* %_RBP_ptr_.sroa.0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  %1 = getelementptr inbounds [1568 x i8], [1568 x i8]* %_local_stack_start_ptr_2067.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1568, i8* nonnull %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RSI_val.i.0..sroa_cast = bitcast i64* %RSI_val.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* nonnull %RSI_val.i.0..sroa_cast)
  %_local_stack_end_ptr_.i = getelementptr inbounds [1568 x i8], [1568 x i8]* %_local_stack_start_ptr_2067.i, i64 0, i64 1568
  %2 = ptrtoint i8* %_local_stack_end_ptr_.i to i64
  store i64 %2, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %3 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !2
  store i64 %4, i64* %RSI_val.i, align 8
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %6 = load i64, i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %7 = load i64, i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %8 = load i64, i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %9 = bitcast i64* %R12.i to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %11 = bitcast i64* %R14.i to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %13 = load i64, i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %14 = load i1, i1* %DF.i, align 1, !mcsema_real_eip !2
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %17 = load i1, i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %18 = load i1, i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %19 = load i3, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %20 = load i1, i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %21 = load i1, i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %22 = load i1, i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %23 = load i1, i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %24 = load i1, i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %25 = load i1, i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %26 = load i1, i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %27 = load i1, i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %28 = load i1, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %29 = load i1, i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %30 = load i1, i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %31 = load i1, i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %32 = load i2, i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %33 = load i2, i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %34 = load i1, i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %35 = load i1, i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %36 = load i1, i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %37 = load i1, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %38 = load i1, i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %39 = load i1, i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %43 = load i16, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %44 = load i64, i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %45 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %46 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %47 = load i128, i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %48 = load i128, i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %49 = load i128, i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %50 = load i128, i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %51 = load i128, i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %52 = load i128, i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %53 = load i128, i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %54 = load i128, i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %55 = load i128, i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %56 = load i128, i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %57 = load i128, i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %58 = load i128, i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %59 = load i128, i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %60 = load i128, i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %61 = load i128, i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %62 = load i128, i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %63 = load i64, i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %64 = load i64, i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2068.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  %65 = bitcast i64* %_RSP_ptr_.sroa.0.i to i8**
  %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146.i5 = load i8*, i8** %65, align 8
  %_new_gep_.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146.i5, i64 -8
  %_allin_new_bt_.i = bitcast i8* %_new_gep_.i to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2068.i, i64* %_allin_new_bt_.i, align 8
  %_new_gep_3.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146.i5, i64 -24
  %66 = bitcast i8* %_new_gep_3.i to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %66, align 8
  %_new_gep_7.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146.i5, i64 -40
  %67 = bitcast i8* %_new_gep_7.i to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %67, align 8
  %_new_gep_9.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146.i5, i64 -48
  %_allin_new_bt_10.i = bitcast i8* %_new_gep_9.i to i64*
  store i64 %3, i64* %_allin_new_bt_10.i, align 8, !mcsema_real_eip !3
  %_new_gep_11.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146.i5, i64 -1560
  %68 = ptrtoint i8* %_new_gep_11.i to i64
  store volatile i64 %68, i64* %_RSP_ptr_.sroa.0.i, align 8
  %RSI_val.i.0.RSI_val.0.RSI_val.0.284.i = load i64, i64* %RSI_val.i, align 8
  store volatile i64 %RSI_val.i.0.RSI_val.0.RSI_val.0.284.i, i64* %_RBP_ptr_.sroa.0.i, align 8
  %69 = and i64 %5, 4294967295
  %70 = tail call x86_64_sysvcc i64 @getenv(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 107) to i64)), !mcsema_real_eip !4
  %_new_gep_13.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146.i5, i64 -472
  %71 = ptrtoint i8* %_new_gep_13.i to i64
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x2082 to i32), i32 592) to i64), i64* %RSI_val.i, align 8
  %72 = tail call x86_64_sysvcc i64 @memcpy(i64 %71, i64 zext (i32 add (i32 ptrtoint (%0* @data_0x2082 to i32), i32 592) to i64), i64 416), !mcsema_real_eip !5
  %73 = inttoptr i64 %RSI_val.i.0.RSI_val.0.RSI_val.0.284.i to i64*
  %74 = load i64, i64* %73, align 8, !mcsema_real_eip !6
  store i64 %74, i64* bitcast (%1* @data_0x24ea to i64*), align 64, !mcsema_real_eip !7
  store volatile i64 %RSI_val.i.0.RSI_val.0.RSI_val.0.284.i, i64* %RSI_val.i, align 8
  %75 = tail call x86_64_sysvcc i64 @getopt_long(i64 %69, i64 %RSI_val.i.0.RSI_val.0.RSI_val.0.284.i, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %71, i64 0), !mcsema_real_eip !8
  %76 = add i64 %75, -86, !mcsema_real_eip !9
  %77 = trunc i64 %76 to i32
  %78 = and i64 %76, 4294967295
  %79 = icmp ult i32 %77, 33
  br i1 %79, label %block_0x108e.i, label %block_0x10a0.i.preheader, !mcsema_real_eip !10

block_0x10a0.i.preheader:                         ; preds = %driverBlockRaw
  br label %block_0x10a0.i

block_0x10a0.i:                                   ; preds = %block_0x10a0.i.preheader, %block_0x1070.backedge.i
  %80 = phi i64 [ %89, %block_0x1070.backedge.i ], [ %78, %block_0x10a0.i.preheader ]
  %81 = phi i64 [ %86, %block_0x1070.backedge.i ], [ %75, %block_0x10a0.i.preheader ]
  %82 = trunc i64 %81 to i32, !mcsema_real_eip !11
  switch i32 %82, label %block_0x1070.backedge.i [
    i32 0, label %block_0x10ae.i
    i32 -1, label %block_0x11de.i
  ]

block_0x108e.i.loopexit:                          ; preds = %block_0x1070.backedge.i
  br label %block_0x108e.i

block_0x108e.i:                                   ; preds = %block_0x108e.i.loopexit, %driverBlockRaw
  %.lcssa2152.i = phi i64 [ %78, %driverBlockRaw ], [ %89, %block_0x108e.i.loopexit ]
  %cond.i = icmp eq i64 %.lcssa2152.i, 0
  br i1 %cond.i, label %sub_1010.exit, label %83

; <label>:83:                                     ; preds = %block_0x108e.i
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae.i:                                   ; preds = %block_0x10a0.i
  %84 = load i32, i32* bitcast (%1* @data_0x24ea to i32*), align 64, !mcsema_real_eip !13
  %85 = icmp ult i32 %84, 10
  br i1 %85, label %block_0x10ba.i, label %block_0x1070.backedge.i, !mcsema_real_eip !14

block_0x1070.backedge.i:                          ; preds = %block_0x10ae.i, %block_0x10a0.i
  store volatile i64 %RSI_val.i.0.RSI_val.0.RSI_val.0.284.i, i64* %RSI_val.i, align 8
  %86 = tail call x86_64_sysvcc i64 @getopt_long(i64 %69, i64 %RSI_val.i.0.RSI_val.0.RSI_val.0.284.i, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %71, i64 0), !mcsema_real_eip !8
  %87 = add i64 %86, -86, !mcsema_real_eip !9
  %88 = trunc i64 %87 to i32
  %89 = and i64 %87, 4294967295
  %90 = icmp ult i32 %88, 33
  br i1 %90, label %block_0x108e.i.loopexit, label %block_0x10a0.i, !mcsema_real_eip !10

block_0x10ba.i:                                   ; preds = %block_0x10ae.i
  %cond2779.i = icmp eq i32 %84, 0
  br i1 %cond2779.i, label %sub_1010.exit, label %94

block_0x11de.i:                                   ; preds = %block_0x10a0.i
  %_new_gep_34.i = getelementptr i8, i8* %_RSP_ptr_.sroa.0.i.0._RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146.i5, i64 -1568
  %_allin_new_bt_35.i = bitcast i8* %_new_gep_34.i to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_35.i, align 8, !mcsema_real_eip !15
  %91 = ptrtoint i8* %_new_gep_34.i to i64
  store volatile i64 %91, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !15
  store i64 %71, i64* %RBX.i, align 8, !mcsema_real_eip !15
  store i64 %80, i64* %RCX.i, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX.i, align 8, !mcsema_real_eip !15
  %RSI_val.i.0.RSI_val.0.RSI_val.0.282.i = load i64, i64* %RSI_val.i, align 8
  store i64 %RSI_val.i.0.RSI_val.0.RSI_val.0.282.i, i64* %RSI.i, align 8, !mcsema_real_eip !15
  store i64 %69, i64* %RDI.i, align 8, !mcsema_real_eip !15
  store volatile i64 %91, i64* %RSP.i, align 8
  %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_382072.i = load i64, i64* %_RBP_ptr_.sroa.0.i, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.i.0._RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_382072.i, i64* %RBP.i, align 8
  store i64 0, i64* %R8.i, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !15
  store i64 %69, i64* %R12.i, align 8, !mcsema_real_eip !15
  %92 = extractelement <2 x i64> %10, i32 1
  store i64 %92, i64* %R13.i, align 8, !mcsema_real_eip !15
  store i64 %70, i64* %R14.i, align 8, !mcsema_real_eip !15
  %93 = extractelement <2 x i64> %12, i32 1
  store i64 %93, i64* %R15.i, align 8, !mcsema_real_eip !15
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF.i, align 1, !mcsema_real_eip !15
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF.i, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF.i, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !15
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !15
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !15
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !15
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !15
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !15
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !15
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !15
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !15
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:94:                                     ; preds = %block_0x10ba.i
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable

sub_1010.exit:                                    ; preds = %block_0x108e.i, %block_0x10ba.i
  %95 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %96 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %97 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val.i, align 8
  %98 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0.i, align 8
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %68, i64 1512)
  %99 = extractvalue { i64, i1 } %uadd.i, 0
  %100 = xor i64 %99, %68, !mcsema_real_eip !21
  %101 = and i64 %100, 16, !mcsema_real_eip !21
  %102 = icmp ne i64 %101, 0, !mcsema_real_eip !21
  %103 = icmp slt i64 %99, 0
  %104 = icmp eq i64 %99, 0, !mcsema_real_eip !21
  %105 = xor i64 %68, -9223372036854775808, !mcsema_real_eip !21
  %106 = and i64 %100, %105, !mcsema_real_eip !21
  %107 = icmp slt i64 %106, 0
  %108 = trunc i64 %99 to i8, !mcsema_real_eip !21
  %109 = tail call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !21
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  %112 = extractvalue { i64, i1 } %uadd.i, 1
  store volatile i64 %99, i64* %_RSP_ptr_.sroa.0.i, align 8
  %113 = inttoptr i64 %99 to i64*, !mcsema_real_eip !22
  %114 = load i64, i64* %113, align 8, !mcsema_real_eip !22
  %115 = add i64 %99, 8, !mcsema_real_eip !22
  store volatile i64 %115, i64* %_RSP_ptr_.sroa.0.i, align 8
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !23
  %117 = load i64, i64* %116, align 8, !mcsema_real_eip !23
  %118 = add i64 %99, 16, !mcsema_real_eip !23
  store volatile i64 %118, i64* %_RSP_ptr_.sroa.0.i, align 8
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !24
  %120 = load i64, i64* %119, align 8, !mcsema_real_eip !24
  %121 = add i64 %99, 24, !mcsema_real_eip !24
  store volatile i64 %121, i64* %_RSP_ptr_.sroa.0.i, align 8
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !25
  %123 = load i64, i64* %122, align 8, !mcsema_real_eip !25
  %124 = add i64 %99, 32, !mcsema_real_eip !25
  store volatile i64 %124, i64* %_RSP_ptr_.sroa.0.i, align 8
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !26
  %126 = load i64, i64* %125, align 8, !mcsema_real_eip !26
  %127 = add i64 %99, 40, !mcsema_real_eip !26
  store volatile i64 %127, i64* %_RSP_ptr_.sroa.0.i, align 8
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !27
  %129 = load i64, i64* %128, align 8
  store volatile i64 %129, i64* %_RBP_ptr_.sroa.0.i, align 8
  %130 = add i64 %99, 56
  store volatile i64 %130, i64* %_RSP_ptr_.sroa.0.i, align 8
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !28
  store i64 %114, i64* %RBX.i, align 8, !mcsema_real_eip !28
  %131 = bitcast i64* %RCX.i to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %131, align 8
  %132 = bitcast i64* %RSI.i to <2 x i64>*
  store <2 x i64> <i64 53, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64)>, <2 x i64>* %132, align 8
  store volatile i64 %130, i64* %RSP.i, align 8
  store volatile i64 %129, i64* %RBP.i, align 8
  store i64 0, i64* %R8.i, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9.i, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10.i, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11.i, align 8, !mcsema_real_eip !28
  store i64 %117, i64* %R12.i, align 8, !mcsema_real_eip !28
  store i64 %120, i64* %R13.i, align 8, !mcsema_real_eip !28
  store i64 %123, i64* %R14.i, align 8, !mcsema_real_eip !28
  store i64 %126, i64* %R15.i, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP.i, align 8, !mcsema_real_eip !28
  store i1 %112, i1* %CF.i, align 1, !mcsema_real_eip !28
  store i1 %111, i1* %PF.i, align 1, !mcsema_real_eip !28
  store i1 %102, i1* %AF.i, align 1, !mcsema_real_eip !28
  store i1 %104, i1* %ZF.i, align 1, !mcsema_real_eip !28
  store i1 %103, i1* %SF.i, align 1, !mcsema_real_eip !28
  store i1 %107, i1* %OF.i, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF.i, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %17, i1* %FPU_B.i, align 1, !mcsema_real_eip !28
  store i1 %18, i1* %FPU_C3.i, align 1, !mcsema_real_eip !28
  store i3 %19, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !28
  store i1 %20, i1* %FPU_C2.i, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C1.i, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C0.i, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_ES.i, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_SF.i, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_PE.i, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_UE.i, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_OE.i, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_DE.i, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_IE.i, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_X.i, align 1, !mcsema_real_eip !28
  store i2 %32, i2* %FPU_RC.i, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_PC.i, align 1, !mcsema_real_eip !28
  store i1 %34, i1* %FPU_PM.i, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_UM.i, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_OM.i, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_DM.i, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_IM.i, align 1, !mcsema_real_eip !28
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !28
  store i64 %44, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !28
  store i16 %45, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !28
  store i64 %46, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !28
  store i128 %47, i128* %XMM0.i, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM1.i, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM2.i, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM3.i, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM4.i, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM5.i, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM6.i, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM7.i, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM8.i, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM9.i, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM10.i, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM11.i, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM12.i, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM13.i, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM14.i, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM15.i, align 1, !mcsema_real_eip !28
  store i64 %63, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !28
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RSP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %_RBP_ptr_.sroa.0.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 1568, i8* nonnull %1)
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  call void @llvm.lifetime.end(i64 8, i8* nonnull %RSI_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

define internal x86_64_sysvcc void @sub_e20.20(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_ = alloca i8, align 1
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 1
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !29
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !29
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !29
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !29
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !29
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !29
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !29
  %3 = load i64, i64* %RSI, align 8, !mcsema_real_eip !29
  store i64 %3, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !29
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !29
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !29
  %4 = load i64, i64* %RBP, align 8, !mcsema_real_eip !29
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !29
  %5 = load i64, i64* %R8, align 8, !mcsema_real_eip !29
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !29
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !29
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !29
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !29
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !29
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !29
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !29
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !29
  %9 = load i64, i64* %R13, align 8, !mcsema_real_eip !29
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !29
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !29
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !29
  %10 = load i64, i64* %RIP, align 8, !mcsema_real_eip !29
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !29
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !29
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !29
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !29
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !29
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !29
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !29
  %11 = load i1, i1* %DF, align 1, !mcsema_real_eip !29
  %12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !29
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !29
  %14 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !29
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %14, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !29
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !29
  %15 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !29
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !29
  %16 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !29
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !29
  %17 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !29
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !29
  %18 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !29
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !29
  %19 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !29
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !29
  %20 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !29
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !29
  %21 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !29
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !29
  %22 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !29
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !29
  %23 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !29
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !29
  %24 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !29
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !29
  %25 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !29
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !29
  %26 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !29
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !29
  %27 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !29
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !29
  %28 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !29
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !29
  %29 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !29
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !29
  %30 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !29
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !29
  %31 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !29
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !29
  %32 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !29
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !29
  %33 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !29
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !29
  %34 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !29
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !29
  %35 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !29
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !29
  %36 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !29
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !29
  %37 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !29
  %38 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !29
  %39 = bitcast i8* %38 to i64*
  %_ptr_to_int_ = ptrtoint i8* %38 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %38, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %38, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %38, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %40 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %39
  %_new_load_ = load i64, i64* %40, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !29
  %41 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !29
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !29
  %42 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !29
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !29
  %43 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !29
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !29
  %44 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !29
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !29
  %45 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !29
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !29
  %46 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !29
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !29
  %47 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !29
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !29
  %48 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !29
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !29
  %49 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !29
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !29
  %50 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !29
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !29
  %51 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !29
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !29
  %52 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !29
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !29
  %53 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !29
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !29
  %54 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !29
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !29
  %55 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !29
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !29
  %56 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !29
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !29
  %57 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !29
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !29
  %58 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !29
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !29
  %59 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !29
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !29
  %60 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !29
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !29
  %61 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !29
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !29
  %62 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !29
  %63 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2555.pre = load i8*, i8** %63, align 8
  br label %block_0xe20, !mcsema_real_eip !29

block_0xe20:                                      ; preds = %block_0xe33, %entry
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2555 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2555.pre, %entry ], [ %_new_gep_, %block_0xe33 ]
  %RBP_val.0 = phi i64 [ %4, %entry ], [ %64, %block_0xe33 ]
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2555, i64 1
  %64 = add i64 %RBP_val.0, 1, !mcsema_real_eip !29
  %65 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %65, i64* %_RBP_ptr_.sroa.0, align 8
  %_offset_above_rbp_710 = sub i64 %65, %1
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ugt i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2555, %_local_stack_start_ptr_
  %_cond2_1_713 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_714 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_715 = or i1 %_cond2_1_713, %_cond2_2_714
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond1_712, %_cond2_715
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_719. = select i1 %_cond1_n_cond2_cond3_718, i8* %_pot_address_in_parent_stack_711, i8* %_new_gep_
  %_new_load_720 = load i8, i8* %_address_in_parent_stack_719., align 1
  %66 = add i8 %_new_load_720, -9
  %67 = icmp ult i8 %66, 31
  br i1 %67, label %block_0xe33, label %block_0xe42, !mcsema_real_eip !30

block_0xe42:                                      ; preds = %block_0xe20
  %68 = zext i8 %66 to i64, !mcsema_real_eip !31
  %69 = add i8 %_new_load_720, -32
  %70 = icmp eq i8 %69, 0, !mcsema_real_eip !32
  br i1 %70, label %block_0xe50.preheader.preheader, label %block_0xe5e, !mcsema_real_eip !33

block_0xe50.preheader.preheader:                  ; preds = %block_0xe42
  br label %block_0xe50.preheader

block_0xe33:                                      ; preds = %block_0xe20
  %cond = icmp eq i8 %66, 0
  br i1 %cond, label %block_0xe20, label %71

; <label>:71:                                     ; preds = %block_0xe33
  tail call void @llvm.trap(), !mcsema_real_eip !34
  unreachable

block_0xe50:                                      ; preds = %block_0xe50.preheader, %block_0xe50
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32563 = phi i8* [ %_new_gep_4, %block_0xe50 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_38255626172663, %block_0xe50.preheader ]
  %RBP_val.3 = phi i64 [ %72, %block_0xe50 ], [ %RBP_val.42664, %block_0xe50.preheader ]
  %_new_gep_4 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32563, i64 1
  %72 = add i64 %RBP_val.3, 1, !mcsema_real_eip !35
  %73 = ptrtoint i8* %_new_gep_4 to i64
  store volatile i64 %73, i64* %_RBP_ptr_.sroa.0, align 8
  %_offset_above_rbp_736 = sub i64 %73, %1
  %_pot_address_in_parent_stack_737 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_736
  %_cond1_738 = icmp ugt i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32563, %_local_stack_start_ptr_
  %_cond2_1_739 = icmp ugt i8* %_new_gep_4, %_parent_stack_end_ptr_
  %_cond2_2_740 = icmp ult i8* %_new_gep_4, %_parent_stack_start_ptr_
  %_cond2_741 = or i1 %_cond2_1_739, %_cond2_2_740
  %_cond4_742 = icmp ule i8* %_pot_address_in_parent_stack_737, %_parent_stack_end_ptr_
  %_cond1_n_cond2_743 = and i1 %_cond1_738, %_cond2_741
  %_cond1_n_cond2_cond3_744 = and i1 %_cond1_n_cond2_743, %_cond4_742
  %_address_in_parent_stack_745. = select i1 %_cond1_n_cond2_cond3_744, i8* %_pot_address_in_parent_stack_737, i8* %_new_gep_4
  %_new_load_746 = load i8, i8* %_address_in_parent_stack_745., align 1
  %74 = icmp eq i8 %_new_load_746, 9
  br i1 %74, label %block_0xe50, label %block_0xe5a.loopexit, !mcsema_real_eip !36

block_0xe5a.loopexit:                             ; preds = %block_0xe50
  %75 = add i8 %_new_load_746, -32
  %76 = icmp eq i8 %75, 0, !mcsema_real_eip !32
  br i1 %76, label %block_0xe50.preheader, label %block_0xe5e.loopexit, !mcsema_real_eip !33

block_0xe50.preheader:                            ; preds = %block_0xe50.preheader.preheader, %block_0xe5a.loopexit
  %RBP_val.42664 = phi i64 [ %72, %block_0xe5a.loopexit ], [ %64, %block_0xe50.preheader.preheader ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_38255626172663 = phi i8* [ %_new_gep_4, %block_0xe5a.loopexit ], [ %_new_gep_, %block_0xe50.preheader.preheader ]
  br label %block_0xe50

block_0xe5e.loopexit:                             ; preds = %block_0xe5a.loopexit
  br label %block_0xe5e

block_0xe5e:                                      ; preds = %block_0xe5e.loopexit, %block_0xe42
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3825562617.lcssa = phi i8* [ %_new_gep_, %block_0xe42 ], [ %_new_gep_4, %block_0xe5e.loopexit ]
  %RBP_val.4.lcssa = phi i64 [ %64, %block_0xe42 ], [ %72, %block_0xe5e.loopexit ]
  %RAX_val.3.in.lcssa = phi i8 [ %_new_load_720, %block_0xe42 ], [ %_new_load_746, %block_0xe5e.loopexit ]
  %.lcssa2656 = phi i8 [ %69, %block_0xe42 ], [ %75, %block_0xe5e.loopexit ]
  %RAX_val.3.le = zext i8 %RAX_val.3.in.lcssa to i64
  %77 = xor i8 %.lcssa2656, %RAX_val.3.in.lcssa, !mcsema_real_eip !32
  %78 = icmp ult i8 %RAX_val.3.in.lcssa, 32, !mcsema_real_eip !37
  br i1 %78, label %block_0xe80, label %block_0xe89.preheader, !mcsema_real_eip !38

block_0xe89.preheader:                            ; preds = %block_0xe80, %block_0xe5e
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_382556 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3825562617.lcssa, %block_0xe5e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3825562618, %block_0xe80 ]
  %R15_val.0.ph = phi i64 [ 0, %block_0xe5e ], [ %R15_val.1, %block_0xe80 ]
  %R12_val.0.ph = phi i64 [ 0, %block_0xe5e ], [ %R12_val.1, %block_0xe80 ]
  %RCX_val.1.ph = phi i64 [ %68, %block_0xe5e ], [ %RAX_val.5, %block_0xe80 ]
  %RAX_val.4.ph = phi i64 [ %RAX_val.3.le, %block_0xe5e ], [ %RAX_val.5, %block_0xe80 ]
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_382556, i64 1
  br label %block_0xe89

block_0xe89:                                      ; preds = %block_0xe89.preheader, %block_0xe70
  %R15_val.0 = phi i64 [ %151, %block_0xe70 ], [ %R15_val.0.ph, %block_0xe89.preheader ]
  %R12_val.0 = phi i64 [ %153, %block_0xe70 ], [ %R12_val.0.ph, %block_0xe89.preheader ]
  %RAX_val.4 = phi i64 [ %150, %block_0xe70 ], [ %RAX_val.4.ph, %block_0xe89.preheader ]
  %79 = trunc i64 %RAX_val.4 to i8, !mcsema_real_eip !39
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %block_0xe95.loopexit, label %block_0xe8d, !mcsema_real_eip !40

block_0xe80.loopexit:                             ; preds = %block_0xe70
  %81 = xor i8 %154, %_new_load_844, !mcsema_real_eip !37
  br label %block_0xe80

block_0xe80:                                      ; preds = %block_0xe80.loopexit, %block_0xe5e
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3825562618 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3825562617.lcssa, %block_0xe5e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_382556, %block_0xe80.loopexit ]
  %R15_val.1 = phi i64 [ 0, %block_0xe5e ], [ %151, %block_0xe80.loopexit ]
  %CF_val.0 = phi i1 [ true, %block_0xe5e ], [ %156, %block_0xe80.loopexit ]
  %AF_val.0.in.in = phi i8 [ %77, %block_0xe5e ], [ %81, %block_0xe80.loopexit ]
  %R12_val.1 = phi i64 [ 0, %block_0xe5e ], [ %153, %block_0xe80.loopexit ]
  %RAX_val.5 = phi i64 [ %RAX_val.3.le, %block_0xe5e ], [ %150, %block_0xe80.loopexit ]
  %AF_val.0.in = and i8 %AF_val.0.in.in, 16
  %AF_val.0 = icmp ne i8 %AF_val.0.in, 0
  br i1 %CF_val.0, label %block_0xe95, label %block_0xe89.preheader, !mcsema_real_eip !41

block_0xe95.loopexit:                             ; preds = %block_0xe91, %block_0xe8d, %block_0xe89
  %AF_val.1.ph = phi i1 [ false, %block_0xe89 ], [ %89, %block_0xe8d ], [ %110, %block_0xe91 ]
  br label %block_0xe95

block_0xe95:                                      ; preds = %block_0xe95.loopexit, %block_0xe80
  %R15_val.2 = phi i64 [ %R15_val.1, %block_0xe80 ], [ %R15_val.0, %block_0xe95.loopexit ]
  %AF_val.1 = phi i1 [ %AF_val.0, %block_0xe80 ], [ %AF_val.1.ph, %block_0xe95.loopexit ]
  %R12_val.2 = phi i64 [ %R12_val.1, %block_0xe80 ], [ %R12_val.0, %block_0xe95.loopexit ]
  %RCX_val.2 = phi i64 [ %RAX_val.5, %block_0xe80 ], [ %RCX_val.1.ph, %block_0xe95.loopexit ]
  %82 = shl i64 %R15_val.2, 32
  %sext2403 = add i64 %82, 4294967296
  %83 = ashr exact i64 %sext2403, 32
  %84 = tail call x86_64_sysvcc i64 @malloc(i64 %83), !mcsema_real_eip !42
  %85 = icmp eq i64 %84, 0, !mcsema_real_eip !43
  br i1 %85, label %block_0xfac, label %block_0xead, !mcsema_real_eip !44

block_0xe8d:                                      ; preds = %block_0xe89
  %86 = add i8 %79, -38
  %87 = xor i8 %86, %79, !mcsema_real_eip !45
  %88 = and i8 %87, 16, !mcsema_real_eip !45
  %89 = icmp ne i8 %88, 0, !mcsema_real_eip !45
  %90 = icmp eq i8 %86, 0, !mcsema_real_eip !45
  br i1 %90, label %block_0xe95.loopexit, label %block_0xe91, !mcsema_real_eip !46

block_0xfac:                                      ; preds = %block_0xe95
  %_offset_above_rbp_748 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_749 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_748
  %_cond1_750 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_751 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_752 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_753 = or i1 %_cond2_2_752, %_cond2_1_751
  %_cond4_754 = icmp ule i8* %_pot_address_in_parent_stack_749, %_parent_stack_end_ptr_
  %_cond1_n_cond2_755 = and i1 %_cond2_753, %_cond1_750
  %_cond1_n_cond2_cond3_756 = and i1 %_cond1_n_cond2_755, %_cond4_754
  %_address_in_parent_stack_bt_758 = bitcast i8* %_pot_address_in_parent_stack_749 to i64*
  %91 = select i1 %_cond1_n_cond2_cond3_756, i64* %_address_in_parent_stack_bt_758, i64* bitcast (%1* @data_0x24ea to i64*)
  %_new_load_759 = load i64, i64* %91, align 8
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64), i64* %RSI_val, align 8
  %92 = tail call x86_64_sysvcc i64 @fprintf(i64 ptrtoint (i64* @stderr to i64), i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64)), !mcsema_real_eip !47
  %93 = tail call x86_64_sysvcc i64 @exit(i64 4294967295), !mcsema_real_eip !48
  %94 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559 = load i8*, i8** %94, align 8
  %_new_gep_6 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -8
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %93, i64* %_allin_new_bt_7, align 8, !mcsema_real_eip !49
  %95 = ptrtoint i8* %_new_gep_6 to i64
  store volatile i64 %95, i64* %_RSP_ptr_.sroa.0, align 8
  %96 = tail call x86_64_sysvcc i64 @malloc(i64 4294967295), !mcsema_real_eip !50
  %97 = icmp eq i64 %96, 0, !mcsema_real_eip !51
  br i1 %97, label %block_0xfdd, label %block_0xfdb, !mcsema_real_eip !52

block_0xead:                                      ; preds = %block_0xe95
  %sext = shl i64 %R12_val.2, 32
  %98 = ashr exact i64 %sext, 32
  %99 = add i64 %R15_val.2, %RBP_val.4.lcssa
  %100 = add i64 %99, %98
  store i64 %100, i64* %RSI_val, align 8
  %101 = tail call x86_64_sysvcc i64 @strncpy(i64 %84, i64 %100, i64 %R15_val.2), !mcsema_real_eip !53
  %102 = add i64 %84, %R15_val.2, !mcsema_real_eip !54
  %103 = inttoptr i64 %102 to i8*
  store i8 0, i8* %103, align 1, !mcsema_real_eip !54
  %104 = inttoptr i64 %9 to i64*, !mcsema_real_eip !55
  %_ptr_bt_762 = inttoptr i64 %9 to i8*
  %_offset_above_rbp_763 = sub i64 %9, %1
  %_pot_address_in_parent_stack_764 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_763
  %_cond1_765 = icmp ugt i8* %_ptr_bt_762, %_local_stack_end_ptr_
  %_cond2_1_766 = icmp ugt i8* %_ptr_bt_762, %_parent_stack_end_ptr_
  %_cond2_2_767 = icmp ult i8* %_ptr_bt_762, %_parent_stack_start_ptr_
  %_cond2_768 = or i1 %_cond2_1_766, %_cond2_2_767
  %_cond4_769 = icmp ule i8* %_pot_address_in_parent_stack_764, %_parent_stack_end_ptr_
  %_cond1_n_cond2_770 = and i1 %_cond1_765, %_cond2_768
  %_cond1_n_cond2_cond3_771 = and i1 %_cond4_769, %_cond1_n_cond2_770
  %_address_in_parent_stack_bt_773 = bitcast i8* %_pot_address_in_parent_stack_764 to i64*
  %105 = select i1 %_cond1_n_cond2_cond3_771, i64* %_address_in_parent_stack_bt_773, i64* %104
  %_new_load_774 = load i64, i64* %105, align 8
  store i64 %_new_load_774, i64* %RSI_val, align 8
  %106 = icmp eq i64 %_new_load_774, 0, !mcsema_real_eip !56
  br i1 %106, label %block_0xee3, label %block_0xecf, !mcsema_real_eip !57

block_0xe91:                                      ; preds = %block_0xe8d
  %107 = add i8 %79, -124
  %108 = xor i8 %107, %79, !mcsema_real_eip !58
  %109 = and i8 %108, 16
  %110 = icmp eq i8 %109, 0
  %111 = icmp eq i8 %107, 0, !mcsema_real_eip !58
  br i1 %111, label %block_0xe95.loopexit, label %block_0xe70, !mcsema_real_eip !59

block_0xee3:                                      ; preds = %block_0xecf, %block_0xead
  %RAX_val.6 = phi i64 [ %101, %block_0xead ], [ %125, %block_0xecf ]
  %_offset_above_rbp_776 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_777 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_776
  %_cond1_778 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_779 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_780 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_781 = or i1 %_cond2_2_780, %_cond2_1_779
  %_cond4_782 = icmp ule i8* %_pot_address_in_parent_stack_777, %_parent_stack_end_ptr_
  %_cond1_n_cond2_783 = and i1 %_cond2_781, %_cond1_778
  %_cond1_n_cond2_cond3_784 = and i1 %_cond1_n_cond2_783, %_cond4_782
  %112 = select i1 %_cond1_n_cond2_cond3_784, i8* %_pot_address_in_parent_stack_777, i8* getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_new_load_786 = load i8, i8* %112, align 1
  %113 = add i8 %_new_load_786, -1
  %114 = xor i8 %113, %_new_load_786, !mcsema_real_eip !60
  %115 = and i8 %114, 16, !mcsema_real_eip !60
  %116 = icmp ne i8 %115, 0, !mcsema_real_eip !60
  %117 = tail call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !60
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  %120 = icmp eq i8 %113, 0, !mcsema_real_eip !60
  %121 = icmp slt i8 %113, 0
  %122 = icmp eq i8 %_new_load_786, 0
  %123 = and i8 %114, %_new_load_786, !mcsema_real_eip !60
  %124 = icmp slt i8 %123, 0
  br i1 %120, label %block_0xeec, label %block_0xefe, !mcsema_real_eip !61

block_0xecf:                                      ; preds = %block_0xead
  %125 = tail call x86_64_sysvcc i64 @strcmp(i64 %84, i64 %_new_load_774), !mcsema_real_eip !62
  %126 = trunc i64 %125 to i32, !mcsema_real_eip !63
  %127 = icmp eq i32 %126, 0, !mcsema_real_eip !63
  br i1 %127, label %block_0xedb, label %block_0xee3, !mcsema_real_eip !64

block_0xfdd:                                      ; preds = %block_0xfac
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64), i64* %RSI_val, align 8
  %128 = tail call x86_64_sysvcc i64 @fprintf(i64 ptrtoint (i64* @stderr to i64), i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64)), !mcsema_real_eip !65
  %129 = tail call x86_64_sysvcc i64 @exit(i64 4294967295), !mcsema_real_eip !66
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_102419 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_12 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -16
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_102419, i64* %_allin_new_bt_13, align 8
  %_new_gep_14 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -24
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  store i64 %R15_val.2, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !67
  %_new_gep_16 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -32
  %_allin_new_bt_17 = bitcast i8* %_new_gep_16 to i64*
  store i64 0, i64* %_allin_new_bt_17, align 8, !mcsema_real_eip !68
  %_new_gep_18 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -40
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  store i64 %9, i64* %_allin_new_bt_19, align 8, !mcsema_real_eip !69
  %_new_gep_20 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -48
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 %R12_val.2, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !70
  %_new_gep_22 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -56
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  store i64 0, i64* %_allin_new_bt_23, align 8, !mcsema_real_eip !3
  %_new_gep_24 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -1568
  %130 = ptrtoint i8* %_new_gep_24 to i64
  store volatile i64 %130, i64* %_RSP_ptr_.sroa.0, align 8
  %RSI_val.0.RSI_val.0.315 = load i64, i64* %RSI_val, align 8
  store volatile i64 %RSI_val.0.RSI_val.0.315, i64* %_RBP_ptr_.sroa.0, align 8
  %131 = tail call x86_64_sysvcc i64 @getenv(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 107) to i64)), !mcsema_real_eip !4
  %_new_gep_26 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -480
  %132 = ptrtoint i8* %_new_gep_26 to i64
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x2082 to i32), i32 592) to i64), i64* %RSI_val, align 8
  %133 = tail call x86_64_sysvcc i64 @memcpy(i64 %132, i64 zext (i32 add (i32 ptrtoint (%0* @data_0x2082 to i32), i32 592) to i64), i64 416), !mcsema_real_eip !5
  %134 = inttoptr i64 %RSI_val.0.RSI_val.0.315 to i8*
  %_offset_above_rbp_790 = sub i64 %RSI_val.0.RSI_val.0.315, %1
  %_pot_address_in_parent_stack_791 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_790
  %_cond1_792 = icmp ugt i8* %134, %_local_stack_end_ptr_
  %_cond2_1_793 = icmp ugt i8* %134, %_parent_stack_end_ptr_
  %_cond2_2_794 = icmp ult i8* %134, %_parent_stack_start_ptr_
  %_cond2_795 = or i1 %_cond2_1_793, %_cond2_2_794
  %_cond4_796 = icmp ule i8* %_pot_address_in_parent_stack_791, %_parent_stack_end_ptr_
  %_cond1_n_cond2_797 = and i1 %_cond1_792, %_cond2_795
  %_cond1_n_cond2_cond3_798 = and i1 %_cond4_796, %_cond1_n_cond2_797
  %.v2420 = select i1 %_cond1_n_cond2_cond3_798, i8* %_pot_address_in_parent_stack_791, i8* %134
  %135 = bitcast i8* %.v2420 to i64*
  %_new_load_801 = load i64, i64* %135, align 8
  store i64 %_new_load_801, i64* bitcast (%1* @data_0x24ea to i64*), align 64, !mcsema_real_eip !7
  store volatile i64 %RSI_val.0.RSI_val.0.315, i64* %RSI_val, align 8
  %136 = tail call x86_64_sysvcc i64 @getopt_long(i64 4294967295, i64 %RSI_val.0.RSI_val.0.315, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %132, i64 0), !mcsema_real_eip !8
  %137 = add i64 %136, -86, !mcsema_real_eip !9
  %138 = trunc i64 %137 to i32
  %139 = and i64 %137, 4294967295
  %140 = icmp ult i32 %138, 33
  br i1 %140, label %block_0x108e, label %block_0x10a0.lr.ph, !mcsema_real_eip !10

block_0x10a0.lr.ph:                               ; preds = %block_0xfdd
  %_address_in_parent_stack_bt_1101 = bitcast i8* %_pot_address_in_parent_stack_749 to i32*
  %141 = select i1 %_cond1_n_cond2_cond3_756, i32* %_address_in_parent_stack_bt_1101, i32* bitcast (%1* @data_0x24ea to i32*)
  br label %block_0x10a0

block_0xfdb:                                      ; preds = %block_0xfac
  %142 = trunc i64 %96 to i8, !mcsema_real_eip !51
  %143 = tail call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !51
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  %146 = icmp slt i64 %96, 0
  %_offset_above_rbp_805 = sub i64 %95, %1
  %_pot_address_in_parent_stack_806 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_805
  %_cond1_807 = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_808 = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_809 = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_810 = or i1 %_cond2_1_808, %_cond2_2_809
  %_cond4_811 = icmp ule i8* %_pot_address_in_parent_stack_806, %_parent_stack_end_ptr_
  %_cond1_n_cond2_812 = and i1 %_cond1_807, %_cond2_810
  %_cond1_n_cond2_cond3_813 = and i1 %_cond4_811, %_cond1_n_cond2_812
  %.v2416 = select i1 %_cond1_n_cond2_cond3_813, i8* %_pot_address_in_parent_stack_806, i8* %_new_gep_6
  %147 = bitcast i8* %.v2416 to i64*
  %_new_load_816 = load i64, i64* %147, align 8
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 8
  %148 = ptrtoint i8* %_new_gep_33 to i64
  store volatile i64 %148, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %96, i64* %RAX, align 8, !mcsema_real_eip !71
  store i64 0, i64* %RBX, align 8, !mcsema_real_eip !71
  store i64 %_new_load_816, i64* %RCX, align 8, !mcsema_real_eip !71
  store i64 %_new_load_759, i64* %RDX, align 8, !mcsema_real_eip !71
  %RSI_val.0.RSI_val.0.314 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.314, i64* %RSI, align 8, !mcsema_real_eip !71
  store i64 4294967295, i64* %RDI, align 8, !mcsema_real_eip !71
  store volatile i64 %148, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_362418 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_362418, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !71
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !71
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !71
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !71
  store i64 %R12_val.2, i64* %R12, align 8, !mcsema_real_eip !71
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !71
  store i64 0, i64* %R14, align 8, !mcsema_real_eip !71
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !71
  store i64 %10, i64* %RIP, align 8, !mcsema_real_eip !71
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !71
  store i1 %145, i1* %PF, align 1, !mcsema_real_eip !71
  store i1 %AF_val.1, i1* %AF, align 1, !mcsema_real_eip !71
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !71
  store i1 %146, i1* %SF, align 1, !mcsema_real_eip !71
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !71
  store i1 %11, i1* %DF, align 1, !mcsema_real_eip !71
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %14, i32 128, i32 8, i1 false), !mcsema_real_eip !71
  store i1 %15, i1* %FPU_B, align 1, !mcsema_real_eip !71
  store i1 %16, i1* %FPU_C3, align 1, !mcsema_real_eip !71
  store i3 %17, i3* %FPU_TOP, align 1, !mcsema_real_eip !71
  store i1 %18, i1* %FPU_C2, align 1, !mcsema_real_eip !71
  store i1 %19, i1* %FPU_C1, align 1, !mcsema_real_eip !71
  store i1 %20, i1* %FPU_C0, align 1, !mcsema_real_eip !71
  store i1 %21, i1* %FPU_ES, align 1, !mcsema_real_eip !71
  store i1 %22, i1* %FPU_SF, align 1, !mcsema_real_eip !71
  store i1 %23, i1* %FPU_PE, align 1, !mcsema_real_eip !71
  store i1 %24, i1* %FPU_UE, align 1, !mcsema_real_eip !71
  store i1 %25, i1* %FPU_OE, align 1, !mcsema_real_eip !71
  store i1 %26, i1* %FPU_ZE, align 1, !mcsema_real_eip !71
  store i1 %27, i1* %FPU_DE, align 1, !mcsema_real_eip !71
  store i1 %28, i1* %FPU_IE, align 1, !mcsema_real_eip !71
  store i1 %29, i1* %FPU_X, align 1, !mcsema_real_eip !71
  store i2 %30, i2* %FPU_RC, align 1, !mcsema_real_eip !71
  store i2 %31, i2* %FPU_PC, align 1, !mcsema_real_eip !71
  store i1 %32, i1* %FPU_PM, align 1, !mcsema_real_eip !71
  store i1 %33, i1* %FPU_UM, align 1, !mcsema_real_eip !71
  store i1 %34, i1* %FPU_OM, align 1, !mcsema_real_eip !71
  store i1 %35, i1* %FPU_ZM, align 1, !mcsema_real_eip !71
  store i1 %36, i1* %FPU_DM, align 1, !mcsema_real_eip !71
  store i1 %37, i1* %FPU_IM, align 1, !mcsema_real_eip !71
  %_ptr_to_int_817 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_819 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_820 = sub i64 %_ptr_to_int_817, %1
  %_pot_address_in_parent_stack_821 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_820
  %_cond1_822 = icmp ugt i8* %_ptr_bt_819, %_local_stack_end_ptr_
  %_cond2_1_823 = icmp ugt i8* %_ptr_bt_819, %_parent_stack_end_ptr_
  %_cond2_2_824 = icmp ult i8* %_ptr_bt_819, %_parent_stack_start_ptr_
  %_cond2_825 = or i1 %_cond2_1_823, %_cond2_2_824
  %_cond4_826 = icmp ule i8* %_pot_address_in_parent_stack_821, %_parent_stack_end_ptr_
  %_cond1_n_cond2_827 = and i1 %_cond1_822, %_cond2_825
  %_cond1_n_cond2_cond3_828 = and i1 %_cond1_n_cond2_827, %_cond4_826
  %_address_in_parent_stack_bt_830 = bitcast i8* %_pot_address_in_parent_stack_821 to i64*
  %149 = select i1 %_cond1_n_cond2_cond3_828, i64* %_address_in_parent_stack_bt_830, i64* %FPU_TAG_val
  %_new_load_831 = load i64, i64* %149, align 8
  store i64 %_new_load_831, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !71
  store i64 %42, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !71
  store i16 %43, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !71
  store i64 %44, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !71
  store i128 %45, i128* %XMM0, align 1, !mcsema_real_eip !71
  store i128 %46, i128* %XMM1, align 1, !mcsema_real_eip !71
  store i128 %47, i128* %XMM2, align 1, !mcsema_real_eip !71
  store i128 %48, i128* %XMM3, align 1, !mcsema_real_eip !71
  store i128 %49, i128* %XMM4, align 1, !mcsema_real_eip !71
  store i128 %50, i128* %XMM5, align 1, !mcsema_real_eip !71
  store i128 %51, i128* %XMM6, align 1, !mcsema_real_eip !71
  store i128 %52, i128* %XMM7, align 1, !mcsema_real_eip !71
  store i128 %53, i128* %XMM8, align 1, !mcsema_real_eip !71
  store i128 %54, i128* %XMM9, align 1, !mcsema_real_eip !71
  store i128 %55, i128* %XMM10, align 1, !mcsema_real_eip !71
  store i128 %56, i128* %XMM11, align 1, !mcsema_real_eip !71
  store i128 %57, i128* %XMM12, align 1, !mcsema_real_eip !71
  store i128 %58, i128* %XMM13, align 1, !mcsema_real_eip !71
  store i128 %59, i128* %XMM14, align 1, !mcsema_real_eip !71
  store i128 %60, i128* %XMM15, align 1, !mcsema_real_eip !71
  store i64 %61, i64* %STACK_BASE, align 1, !mcsema_real_eip !71
  store i64 %62, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !71
  ret void, !mcsema_real_eip !71

block_0xe70:                                      ; preds = %block_0xe91
  %_new_gep_40 = getelementptr i8, i8* %_new_gep_39, i64 %R15_val.0
  %_ptr_to_int_832 = ptrtoint i8* %_new_gep_40 to i64
  %_offset_above_rbp_834 = sub i64 %_ptr_to_int_832, %1
  %_pot_address_in_parent_stack_835 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_834
  %_cond1_836 = icmp ugt i8* %_new_gep_40, %_local_stack_end_ptr_
  %_cond2_1_837 = icmp ugt i8* %_new_gep_40, %_parent_stack_end_ptr_
  %_cond2_2_838 = icmp ult i8* %_new_gep_40, %_parent_stack_start_ptr_
  %_cond2_839 = or i1 %_cond2_1_837, %_cond2_2_838
  %_cond4_840 = icmp ule i8* %_pot_address_in_parent_stack_835, %_parent_stack_end_ptr_
  %_cond1_n_cond2_841 = and i1 %_cond1_836, %_cond2_839
  %_cond1_n_cond2_cond3_842 = and i1 %_cond1_n_cond2_841, %_cond4_840
  %_address_in_parent_stack_843. = select i1 %_cond1_n_cond2_cond3_842, i8* %_pot_address_in_parent_stack_835, i8* %_new_gep_40
  %_new_load_844 = load i8, i8* %_address_in_parent_stack_843., align 1
  %150 = zext i8 %_new_load_844 to i64
  %151 = add i64 %R15_val.0, 1, !mcsema_real_eip !72
  %152 = add nsw i64 %R12_val.0, 4294967295
  %153 = and i64 %152, 4294967295
  %154 = add i8 %_new_load_844, -32
  %155 = icmp eq i8 %154, 0, !mcsema_real_eip !37
  %156 = icmp ult i8 %_new_load_844, 32, !mcsema_real_eip !37
  %.demorgan3279 = or i1 %156, %155
  br i1 %.demorgan3279, label %block_0xe80.loopexit, label %block_0xe89, !mcsema_real_eip !38

block_0xedb:                                      ; preds = %block_0xecf
  store i64 0, i64* %104, align 8, !mcsema_real_eip !73
  %_offset_above_rbp_846 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_847 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_846
  %_cond1_848 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_849 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_850 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_851 = or i1 %_cond2_2_850, %_cond2_1_849
  %_cond4_852 = icmp ule i8* %_pot_address_in_parent_stack_847, %_parent_stack_end_ptr_
  %_cond1_n_cond2_853 = and i1 %_cond2_851, %_cond1_848
  %_cond1_n_cond2_cond3_854 = and i1 %_cond1_n_cond2_853, %_cond4_852
  %157 = select i1 %_cond1_n_cond2_cond3_854, i8* %_pot_address_in_parent_stack_847, i8* getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_new_load_856 = load i8, i8* %157, align 1
  %158 = add i8 %_new_load_856, -1
  %159 = xor i8 %158, %_new_load_856, !mcsema_real_eip !60
  %160 = and i8 %159, 16, !mcsema_real_eip !60
  %161 = icmp ne i8 %160, 0, !mcsema_real_eip !60
  %162 = tail call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !60
  %163 = and i8 %162, 1
  %164 = icmp eq i8 %163, 0
  %165 = icmp eq i8 %158, 0, !mcsema_real_eip !60
  %166 = icmp slt i8 %158, 0
  %167 = icmp eq i8 %_new_load_856, 0
  %168 = and i8 %159, %_new_load_856, !mcsema_real_eip !60
  %169 = icmp slt i8 %168, 0
  br i1 %165, label %block_0xeec, label %block_0xefe, !mcsema_real_eip !61

block_0xefe:                                      ; preds = %block_0xeec, %block_0xedb, %block_0xee3
  %OF_val.0 = phi i1 [ false, %block_0xeec ], [ %124, %block_0xee3 ], [ %169, %block_0xedb ]
  %SF_val.0 = phi i1 [ %176, %block_0xeec ], [ %121, %block_0xee3 ], [ %166, %block_0xedb ]
  %CF_val.1 = phi i1 [ false, %block_0xeec ], [ %122, %block_0xee3 ], [ %167, %block_0xedb ]
  %AF_val.2 = phi i1 [ %AF_val.3, %block_0xeec ], [ %116, %block_0xee3 ], [ %161, %block_0xedb ]
  %PF_val.0 = phi i1 [ %180, %block_0xeec ], [ %119, %block_0xee3 ], [ %164, %block_0xedb ]
  %RAX_val.7 = phi i64 [ %174, %block_0xeec ], [ %RAX_val.6, %block_0xee3 ], [ %125, %block_0xedb ]
  store i64 %84, i64* %RSI_val, align 8
  %170 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_422557 = load i8*, i8** %170, align 8
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_422557, i64 16
  %_ptr_to_int_857 = ptrtoint i8* %_new_gep_43 to i64
  %_offset_above_rbp_860 = sub i64 %_ptr_to_int_857, %1
  %_pot_address_in_parent_stack_861 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_860
  %_cond1_862 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_863 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_864 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_865 = or i1 %_cond2_1_863, %_cond2_2_864
  %_cond4_866 = icmp ule i8* %_pot_address_in_parent_stack_861, %_parent_stack_end_ptr_
  %_cond1_n_cond2_867 = and i1 %_cond1_862, %_cond2_865
  %_cond1_n_cond2_cond3_868 = and i1 %_cond1_n_cond2_867, %_cond4_866
  %.v = select i1 %_cond1_n_cond2_cond3_868, i8* %_pot_address_in_parent_stack_861, i8* %_new_gep_43
  %171 = bitcast i8* %.v to i64*
  %_new_load_871 = load i64, i64* %171, align 8
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_422557, i64 -8
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_46, align 8, !mcsema_real_eip !74
  %172 = ptrtoint i8* %_new_gep_45 to i64
  store volatile i64 %172, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %RAX_val.7, i64* %RAX, align 8, !mcsema_real_eip !74
  store i64 0, i64* %RBX, align 8, !mcsema_real_eip !74
  store i64 %RCX_val.2, i64* %RCX, align 8, !mcsema_real_eip !74
  store i64 %_new_load_871, i64* %RDX, align 8, !mcsema_real_eip !74
  %RSI_val.0.RSI_val.0.313 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.313, i64* %RSI, align 8, !mcsema_real_eip !74
  store i64 1, i64* %RDI, align 8, !mcsema_real_eip !74
  store volatile i64 %172, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_492405 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_492405, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !74
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !74
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !74
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !74
  store i64 %R12_val.2, i64* %R12, align 8, !mcsema_real_eip !74
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !74
  store i64 %84, i64* %R14, align 8, !mcsema_real_eip !74
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !74
  store i64 %10, i64* %RIP, align 8, !mcsema_real_eip !74
  store i1 %CF_val.1, i1* %CF, align 1, !mcsema_real_eip !74
  store i1 %PF_val.0, i1* %PF, align 1, !mcsema_real_eip !74
  store i1 %AF_val.2, i1* %AF, align 1, !mcsema_real_eip !74
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !74
  store i1 %SF_val.0, i1* %SF, align 1, !mcsema_real_eip !74
  store i1 %OF_val.0, i1* %OF, align 1, !mcsema_real_eip !74
  store i1 %11, i1* %DF, align 1, !mcsema_real_eip !74
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %14, i32 128, i32 8, i1 false), !mcsema_real_eip !74
  store i1 %15, i1* %FPU_B, align 1, !mcsema_real_eip !74
  store i1 %16, i1* %FPU_C3, align 1, !mcsema_real_eip !74
  store i3 %17, i3* %FPU_TOP, align 1, !mcsema_real_eip !74
  store i1 %18, i1* %FPU_C2, align 1, !mcsema_real_eip !74
  store i1 %19, i1* %FPU_C1, align 1, !mcsema_real_eip !74
  store i1 %20, i1* %FPU_C0, align 1, !mcsema_real_eip !74
  store i1 %21, i1* %FPU_ES, align 1, !mcsema_real_eip !74
  store i1 %22, i1* %FPU_SF, align 1, !mcsema_real_eip !74
  store i1 %23, i1* %FPU_PE, align 1, !mcsema_real_eip !74
  store i1 %24, i1* %FPU_UE, align 1, !mcsema_real_eip !74
  store i1 %25, i1* %FPU_OE, align 1, !mcsema_real_eip !74
  store i1 %26, i1* %FPU_ZE, align 1, !mcsema_real_eip !74
  store i1 %27, i1* %FPU_DE, align 1, !mcsema_real_eip !74
  store i1 %28, i1* %FPU_IE, align 1, !mcsema_real_eip !74
  store i1 %29, i1* %FPU_X, align 1, !mcsema_real_eip !74
  store i2 %30, i2* %FPU_RC, align 1, !mcsema_real_eip !74
  store i2 %31, i2* %FPU_PC, align 1, !mcsema_real_eip !74
  store i1 %32, i1* %FPU_PM, align 1, !mcsema_real_eip !74
  store i1 %33, i1* %FPU_UM, align 1, !mcsema_real_eip !74
  store i1 %34, i1* %FPU_OM, align 1, !mcsema_real_eip !74
  store i1 %35, i1* %FPU_ZM, align 1, !mcsema_real_eip !74
  store i1 %36, i1* %FPU_DM, align 1, !mcsema_real_eip !74
  store i1 %37, i1* %FPU_IM, align 1, !mcsema_real_eip !74
  %_ptr_to_int_872 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_874 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_875 = sub i64 %_ptr_to_int_872, %1
  %_pot_address_in_parent_stack_876 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_875
  %_cond1_877 = icmp ugt i8* %_ptr_bt_874, %_local_stack_end_ptr_
  %_cond2_1_878 = icmp ugt i8* %_ptr_bt_874, %_parent_stack_end_ptr_
  %_cond2_2_879 = icmp ult i8* %_ptr_bt_874, %_parent_stack_start_ptr_
  %_cond2_880 = or i1 %_cond2_1_878, %_cond2_2_879
  %_cond4_881 = icmp ule i8* %_pot_address_in_parent_stack_876, %_parent_stack_end_ptr_
  %_cond1_n_cond2_882 = and i1 %_cond1_877, %_cond2_880
  %_cond1_n_cond2_cond3_883 = and i1 %_cond1_n_cond2_882, %_cond4_881
  %_address_in_parent_stack_bt_885 = bitcast i8* %_pot_address_in_parent_stack_876 to i64*
  %173 = select i1 %_cond1_n_cond2_cond3_883, i64* %_address_in_parent_stack_bt_885, i64* %FPU_TAG_val
  %_new_load_886 = load i64, i64* %173, align 8
  store i64 %_new_load_886, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !74
  store i64 %42, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !74
  store i16 %43, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !74
  store i64 %44, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !74
  store i128 %45, i128* %XMM0, align 1, !mcsema_real_eip !74
  store i128 %46, i128* %XMM1, align 1, !mcsema_real_eip !74
  store i128 %47, i128* %XMM2, align 1, !mcsema_real_eip !74
  store i128 %48, i128* %XMM3, align 1, !mcsema_real_eip !74
  store i128 %49, i128* %XMM4, align 1, !mcsema_real_eip !74
  store i128 %50, i128* %XMM5, align 1, !mcsema_real_eip !74
  store i128 %51, i128* %XMM6, align 1, !mcsema_real_eip !74
  store i128 %52, i128* %XMM7, align 1, !mcsema_real_eip !74
  store i128 %53, i128* %XMM8, align 1, !mcsema_real_eip !74
  store i128 %54, i128* %XMM9, align 1, !mcsema_real_eip !74
  store i128 %55, i128* %XMM10, align 1, !mcsema_real_eip !74
  store i128 %56, i128* %XMM11, align 1, !mcsema_real_eip !74
  store i128 %57, i128* %XMM12, align 1, !mcsema_real_eip !74
  store i128 %58, i128* %XMM13, align 1, !mcsema_real_eip !74
  store i128 %59, i128* %XMM14, align 1, !mcsema_real_eip !74
  store i128 %60, i128* %XMM15, align 1, !mcsema_real_eip !74
  store i64 %61, i64* %STACK_BASE, align 1, !mcsema_real_eip !74
  store i64 %62, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !74
  call void @llvm.trap()
  unreachable

block_0xeec:                                      ; preds = %block_0xedb, %block_0xee3
  %AF_val.3 = phi i1 [ %116, %block_0xee3 ], [ %161, %block_0xedb ]
  store i64 47, i64* %RSI_val, align 8
  %174 = tail call x86_64_sysvcc i64 @strchr(i64 %84, i64 47), !mcsema_real_eip !75
  %175 = icmp eq i64 %174, 0, !mcsema_real_eip !76
  %176 = icmp slt i64 %174, 0
  %177 = trunc i64 %174 to i8, !mcsema_real_eip !76
  %178 = tail call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !76
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  br i1 %175, label %block_0xf6f, label %block_0xefe, !mcsema_real_eip !77

block_0xf6f:                                      ; preds = %block_0xeec
  store i64 %84, i64* %RSI_val, align 8
  %181 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_542558 = load i8*, i8** %181, align 8
  %_new_gep_55 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_542558, i64 4
  %_ptr_to_int_902 = ptrtoint i8* %_new_gep_55 to i64
  %_offset_above_rbp_905 = sub i64 %_ptr_to_int_902, %1
  %_pot_address_in_parent_stack_906 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_905
  %_cond1_907 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_908 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_909 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_910 = or i1 %_cond2_1_908, %_cond2_2_909
  %_cond4_911 = icmp ule i8* %_pot_address_in_parent_stack_906, %_parent_stack_end_ptr_
  %_cond1_n_cond2_912 = and i1 %_cond1_907, %_cond2_910
  %_cond1_n_cond2_cond3_913 = and i1 %_cond1_n_cond2_912, %_cond4_911
  %.v2411 = select i1 %_cond1_n_cond2_cond3_913, i8* %_pot_address_in_parent_stack_906, i8* %_new_gep_55
  %182 = bitcast i8* %.v2411 to i32*
  %_new_load_916 = load i32, i32* %182, align 4
  %183 = zext i32 %_new_load_916 to i64, !mcsema_real_eip !78
  %_new_gep_58 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_542558, i64 -8
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_59, align 8, !mcsema_real_eip !79
  %184 = ptrtoint i8* %_new_gep_58 to i64
  store volatile i64 %184, i64* %_RSP_ptr_.sroa.0, align 8
  %185 = bitcast %struct.regs* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %185, i8 0, i64 16, i32 8, i1 false)
  store i64 %183, i64* %RCX, align 8, !mcsema_real_eip !79
  store i64 %R15_val.2, i64* %RDX, align 8, !mcsema_real_eip !79
  %RSI_val.0.RSI_val.0.312 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.312, i64* %RSI, align 8, !mcsema_real_eip !79
  store i64 1, i64* %RDI, align 8, !mcsema_real_eip !79
  store volatile i64 %184, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_622413 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_622413, i64* %RBP, align 8
  store i64 %5, i64* %R8, align 8, !mcsema_real_eip !79
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !79
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !79
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !79
  store i64 %R12_val.2, i64* %R12, align 8, !mcsema_real_eip !79
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !79
  store i64 %84, i64* %R14, align 8, !mcsema_real_eip !79
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !79
  store i64 %10, i64* %RIP, align 8, !mcsema_real_eip !79
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !79
  store i1 %180, i1* %PF, align 1, !mcsema_real_eip !79
  store i1 %AF_val.3, i1* %AF, align 1, !mcsema_real_eip !79
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !79
  store i1 %176, i1* %SF, align 1, !mcsema_real_eip !79
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !79
  store i1 %11, i1* %DF, align 1, !mcsema_real_eip !79
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %14, i32 128, i32 8, i1 false), !mcsema_real_eip !79
  store i1 %15, i1* %FPU_B, align 1, !mcsema_real_eip !79
  store i1 %16, i1* %FPU_C3, align 1, !mcsema_real_eip !79
  store i3 %17, i3* %FPU_TOP, align 1, !mcsema_real_eip !79
  store i1 %18, i1* %FPU_C2, align 1, !mcsema_real_eip !79
  store i1 %19, i1* %FPU_C1, align 1, !mcsema_real_eip !79
  store i1 %20, i1* %FPU_C0, align 1, !mcsema_real_eip !79
  store i1 %21, i1* %FPU_ES, align 1, !mcsema_real_eip !79
  store i1 %22, i1* %FPU_SF, align 1, !mcsema_real_eip !79
  store i1 %23, i1* %FPU_PE, align 1, !mcsema_real_eip !79
  store i1 %24, i1* %FPU_UE, align 1, !mcsema_real_eip !79
  store i1 %25, i1* %FPU_OE, align 1, !mcsema_real_eip !79
  store i1 %26, i1* %FPU_ZE, align 1, !mcsema_real_eip !79
  store i1 %27, i1* %FPU_DE, align 1, !mcsema_real_eip !79
  store i1 %28, i1* %FPU_IE, align 1, !mcsema_real_eip !79
  store i1 %29, i1* %FPU_X, align 1, !mcsema_real_eip !79
  store i2 %30, i2* %FPU_RC, align 1, !mcsema_real_eip !79
  store i2 %31, i2* %FPU_PC, align 1, !mcsema_real_eip !79
  store i1 %32, i1* %FPU_PM, align 1, !mcsema_real_eip !79
  store i1 %33, i1* %FPU_UM, align 1, !mcsema_real_eip !79
  store i1 %34, i1* %FPU_OM, align 1, !mcsema_real_eip !79
  store i1 %35, i1* %FPU_ZM, align 1, !mcsema_real_eip !79
  store i1 %36, i1* %FPU_DM, align 1, !mcsema_real_eip !79
  store i1 %37, i1* %FPU_IM, align 1, !mcsema_real_eip !79
  %_ptr_to_int_917 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_919 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_920 = sub i64 %_ptr_to_int_917, %1
  %_pot_address_in_parent_stack_921 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_920
  %_cond1_922 = icmp ugt i8* %_ptr_bt_919, %_local_stack_end_ptr_
  %_cond2_1_923 = icmp ugt i8* %_ptr_bt_919, %_parent_stack_end_ptr_
  %_cond2_2_924 = icmp ult i8* %_ptr_bt_919, %_parent_stack_start_ptr_
  %_cond2_925 = or i1 %_cond2_1_923, %_cond2_2_924
  %_cond4_926 = icmp ule i8* %_pot_address_in_parent_stack_921, %_parent_stack_end_ptr_
  %_cond1_n_cond2_927 = and i1 %_cond1_922, %_cond2_925
  %_cond1_n_cond2_cond3_928 = and i1 %_cond1_n_cond2_927, %_cond4_926
  %_address_in_parent_stack_bt_930 = bitcast i8* %_pot_address_in_parent_stack_921 to i64*
  %186 = select i1 %_cond1_n_cond2_cond3_928, i64* %_address_in_parent_stack_bt_930, i64* %FPU_TAG_val
  %_new_load_931 = load i64, i64* %186, align 8
  store i64 %_new_load_931, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !79
  store i64 %42, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !79
  store i16 %43, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !79
  store i64 %44, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !79
  store i128 %45, i128* %XMM0, align 1, !mcsema_real_eip !79
  store i128 %46, i128* %XMM1, align 1, !mcsema_real_eip !79
  store i128 %47, i128* %XMM2, align 1, !mcsema_real_eip !79
  store i128 %48, i128* %XMM3, align 1, !mcsema_real_eip !79
  store i128 %49, i128* %XMM4, align 1, !mcsema_real_eip !79
  store i128 %50, i128* %XMM5, align 1, !mcsema_real_eip !79
  store i128 %51, i128* %XMM6, align 1, !mcsema_real_eip !79
  store i128 %52, i128* %XMM7, align 1, !mcsema_real_eip !79
  store i128 %53, i128* %XMM8, align 1, !mcsema_real_eip !79
  store i128 %54, i128* %XMM9, align 1, !mcsema_real_eip !79
  store i128 %55, i128* %XMM10, align 1, !mcsema_real_eip !79
  store i128 %56, i128* %XMM11, align 1, !mcsema_real_eip !79
  store i128 %57, i128* %XMM12, align 1, !mcsema_real_eip !79
  store i128 %58, i128* %XMM13, align 1, !mcsema_real_eip !79
  store i128 %59, i128* %XMM14, align 1, !mcsema_real_eip !79
  store i128 %60, i128* %XMM15, align 1, !mcsema_real_eip !79
  store i64 %61, i64* %STACK_BASE, align 1, !mcsema_real_eip !79
  store i64 %62, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !79
  call void @llvm.trap()
  unreachable

block_0x10a0:                                     ; preds = %block_0x10a0.lr.ph, %block_0x1070.backedge
  %187 = phi i64 [ %139, %block_0x10a0.lr.ph ], [ %233, %block_0x1070.backedge ]
  %188 = phi i64 [ %136, %block_0x10a0.lr.ph ], [ %230, %block_0x1070.backedge ]
  %189 = trunc i64 %188 to i32, !mcsema_real_eip !11
  switch i32 %189, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %block_0xfdd
  %.lcssa2566 = phi i64 [ %139, %block_0xfdd ], [ %233, %block_0x108e.loopexit ]
  %cond3195 = icmp eq i64 %.lcssa2566, 0
  br i1 %cond3195, label %block_0x1165, label %228

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %190 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %191 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %192 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %193 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %uadd3204 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %130, i64 1512)
  %194 = extractvalue { i64, i1 } %uadd3204, 0
  %195 = xor i64 %194, %130, !mcsema_real_eip !21
  %196 = and i64 %195, 16, !mcsema_real_eip !21
  %197 = icmp ne i64 %196, 0, !mcsema_real_eip !21
  %198 = icmp slt i64 %194, 0
  %199 = icmp eq i64 %194, 0, !mcsema_real_eip !21
  %200 = xor i64 %130, -9223372036854775808, !mcsema_real_eip !21
  %201 = and i64 %195, %200, !mcsema_real_eip !21
  %202 = icmp slt i64 %201, 0
  %203 = trunc i64 %194 to i8, !mcsema_real_eip !21
  %204 = tail call i8 @llvm.ctpop.i8(i8 %203), !mcsema_real_eip !21
  %205 = and i8 %204, 1
  %206 = icmp eq i8 %205, 0
  %207 = extractvalue { i64, i1 } %uadd3204, 1
  %_new_int2ptr_75 = inttoptr i64 %194 to i8*
  store volatile i64 %194, i64* %_RSP_ptr_.sroa.0, align 8
  %208 = inttoptr i64 %194 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_988 = sub i64 %194, %1
  %_pot_address_in_parent_stack_989 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_988
  %_cond1_990 = icmp ugt i8* %_new_int2ptr_75, %_local_stack_end_ptr_
  %_cond2_1_991 = icmp ugt i8* %_new_int2ptr_75, %_parent_stack_end_ptr_
  %_cond2_2_992 = icmp ult i8* %_new_int2ptr_75, %_parent_stack_start_ptr_
  %_cond2_993 = or i1 %_cond2_1_991, %_cond2_2_992
  %_cond4_994 = icmp ule i8* %_pot_address_in_parent_stack_989, %_parent_stack_end_ptr_
  %_cond1_n_cond2_995 = and i1 %_cond1_990, %_cond2_993
  %_cond1_n_cond2_cond3_996 = and i1 %_cond4_994, %_cond1_n_cond2_995
  %_address_in_parent_stack_bt_998 = bitcast i8* %_pot_address_in_parent_stack_989 to i64*
  %209 = select i1 %_cond1_n_cond2_cond3_996, i64* %_address_in_parent_stack_bt_998, i64* %208
  %_new_load_999 = load i64, i64* %209, align 8
  %210 = add i64 %194, 8, !mcsema_real_eip !22
  %_new_int2ptr_76 = inttoptr i64 %210 to i8*
  store volatile i64 %210, i64* %_RSP_ptr_.sroa.0, align 8
  %211 = inttoptr i64 %210 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_1003 = sub i64 %210, %1
  %_pot_address_in_parent_stack_1004 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1003
  %_cond1_1005 = icmp ugt i8* %_new_int2ptr_76, %_local_stack_end_ptr_
  %_cond2_1_1006 = icmp ugt i8* %_new_int2ptr_76, %_parent_stack_end_ptr_
  %_cond2_2_1007 = icmp ult i8* %_new_int2ptr_76, %_parent_stack_start_ptr_
  %_cond2_1008 = or i1 %_cond2_1_1006, %_cond2_2_1007
  %_cond4_1009 = icmp ule i8* %_pot_address_in_parent_stack_1004, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1010 = and i1 %_cond1_1005, %_cond2_1008
  %_cond1_n_cond2_cond3_1011 = and i1 %_cond4_1009, %_cond1_n_cond2_1010
  %_address_in_parent_stack_bt_1013 = bitcast i8* %_pot_address_in_parent_stack_1004 to i64*
  %212 = select i1 %_cond1_n_cond2_cond3_1011, i64* %_address_in_parent_stack_bt_1013, i64* %211
  %_new_load_1014 = load i64, i64* %212, align 8
  %213 = add i64 %194, 16, !mcsema_real_eip !23
  %_new_int2ptr_77 = inttoptr i64 %213 to i8*
  store volatile i64 %213, i64* %_RSP_ptr_.sroa.0, align 8
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_1018 = sub i64 %213, %1
  %_pot_address_in_parent_stack_1019 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1018
  %_cond1_1020 = icmp ugt i8* %_new_int2ptr_77, %_local_stack_end_ptr_
  %_cond2_1_1021 = icmp ugt i8* %_new_int2ptr_77, %_parent_stack_end_ptr_
  %_cond2_2_1022 = icmp ult i8* %_new_int2ptr_77, %_parent_stack_start_ptr_
  %_cond2_1023 = or i1 %_cond2_1_1021, %_cond2_2_1022
  %_cond4_1024 = icmp ule i8* %_pot_address_in_parent_stack_1019, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1025 = and i1 %_cond1_1020, %_cond2_1023
  %_cond1_n_cond2_cond3_1026 = and i1 %_cond4_1024, %_cond1_n_cond2_1025
  %_address_in_parent_stack_bt_1028 = bitcast i8* %_pot_address_in_parent_stack_1019 to i64*
  %215 = select i1 %_cond1_n_cond2_cond3_1026, i64* %_address_in_parent_stack_bt_1028, i64* %214
  %_new_load_1029 = load i64, i64* %215, align 8
  %216 = add i64 %194, 24, !mcsema_real_eip !24
  %_new_int2ptr_78 = inttoptr i64 %216 to i8*
  store volatile i64 %216, i64* %_RSP_ptr_.sroa.0, align 8
  %217 = inttoptr i64 %216 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_1033 = sub i64 %216, %1
  %_pot_address_in_parent_stack_1034 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1033
  %_cond1_1035 = icmp ugt i8* %_new_int2ptr_78, %_local_stack_end_ptr_
  %_cond2_1_1036 = icmp ugt i8* %_new_int2ptr_78, %_parent_stack_end_ptr_
  %_cond2_2_1037 = icmp ult i8* %_new_int2ptr_78, %_parent_stack_start_ptr_
  %_cond2_1038 = or i1 %_cond2_1_1036, %_cond2_2_1037
  %_cond4_1039 = icmp ule i8* %_pot_address_in_parent_stack_1034, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1040 = and i1 %_cond1_1035, %_cond2_1038
  %_cond1_n_cond2_cond3_1041 = and i1 %_cond4_1039, %_cond1_n_cond2_1040
  %_address_in_parent_stack_bt_1043 = bitcast i8* %_pot_address_in_parent_stack_1034 to i64*
  %218 = select i1 %_cond1_n_cond2_cond3_1041, i64* %_address_in_parent_stack_bt_1043, i64* %217
  %_new_load_1044 = load i64, i64* %218, align 8
  %219 = add i64 %194, 32, !mcsema_real_eip !25
  %_new_int2ptr_79 = inttoptr i64 %219 to i8*
  store volatile i64 %219, i64* %_RSP_ptr_.sroa.0, align 8
  %220 = inttoptr i64 %219 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_1048 = sub i64 %219, %1
  %_pot_address_in_parent_stack_1049 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1048
  %_cond1_1050 = icmp ugt i8* %_new_int2ptr_79, %_local_stack_end_ptr_
  %_cond2_1_1051 = icmp ugt i8* %_new_int2ptr_79, %_parent_stack_end_ptr_
  %_cond2_2_1052 = icmp ult i8* %_new_int2ptr_79, %_parent_stack_start_ptr_
  %_cond2_1053 = or i1 %_cond2_1_1051, %_cond2_2_1052
  %_cond4_1054 = icmp ule i8* %_pot_address_in_parent_stack_1049, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1055 = and i1 %_cond1_1050, %_cond2_1053
  %_cond1_n_cond2_cond3_1056 = and i1 %_cond4_1054, %_cond1_n_cond2_1055
  %_address_in_parent_stack_bt_1058 = bitcast i8* %_pot_address_in_parent_stack_1049 to i64*
  %221 = select i1 %_cond1_n_cond2_cond3_1056, i64* %_address_in_parent_stack_bt_1058, i64* %220
  %_new_load_1059 = load i64, i64* %221, align 8
  %222 = add i64 %194, 40, !mcsema_real_eip !26
  %_new_int2ptr_80 = inttoptr i64 %222 to i8*
  store volatile i64 %222, i64* %_RSP_ptr_.sroa.0, align 8
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_1063 = sub i64 %222, %1
  %_pot_address_in_parent_stack_1064 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1063
  %_cond1_1065 = icmp ugt i8* %_new_int2ptr_80, %_local_stack_end_ptr_
  %_cond2_1_1066 = icmp ugt i8* %_new_int2ptr_80, %_parent_stack_end_ptr_
  %_cond2_2_1067 = icmp ult i8* %_new_int2ptr_80, %_parent_stack_start_ptr_
  %_cond2_1068 = or i1 %_cond2_1_1066, %_cond2_2_1067
  %_cond4_1069 = icmp ule i8* %_pot_address_in_parent_stack_1064, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1070 = and i1 %_cond1_1065, %_cond2_1068
  %_cond1_n_cond2_cond3_1071 = and i1 %_cond4_1069, %_cond1_n_cond2_1070
  %_address_in_parent_stack_bt_1073 = bitcast i8* %_pot_address_in_parent_stack_1064 to i64*
  %224 = select i1 %_cond1_n_cond2_cond3_1071, i64* %_address_in_parent_stack_bt_1073, i64* %223
  %_new_load_107425342535 = load i64, i64* %224, align 8
  store volatile i64 %_new_load_107425342535, i64* %_RBP_ptr_.sroa.0, align 8
  %225 = add i64 %194, 56
  store volatile i64 %225, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_999, i64* %RBX, align 8, !mcsema_real_eip !28
  %226 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %226, align 8
  %RSI_val.0.RSI_val.0.311 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.311, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %225, i64* %RSP, align 8
  store volatile i64 %_new_load_107425342535, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_1014, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_1029, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_1044, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_1059, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %10, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %207, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %206, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %197, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %199, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %198, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %202, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %11, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %14, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %15, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %16, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %17, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %18, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %20, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %30, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %31, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %33, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %34, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_1075 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_1077 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_1078 = sub i64 %_ptr_to_int_1075, %1
  %_pot_address_in_parent_stack_1079 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1078
  %_cond1_1080 = icmp ugt i8* %_ptr_bt_1077, %_local_stack_end_ptr_
  %_cond2_1_1081 = icmp ugt i8* %_ptr_bt_1077, %_parent_stack_end_ptr_
  %_cond2_2_1082 = icmp ult i8* %_ptr_bt_1077, %_parent_stack_start_ptr_
  %_cond2_1083 = or i1 %_cond2_1_1081, %_cond2_2_1082
  %_cond4_1084 = icmp ule i8* %_pot_address_in_parent_stack_1079, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1085 = and i1 %_cond1_1080, %_cond2_1083
  %_cond1_n_cond2_cond3_1086 = and i1 %_cond1_n_cond2_1085, %_cond4_1084
  %_address_in_parent_stack_bt_1088 = bitcast i8* %_pot_address_in_parent_stack_1079 to i64*
  %227 = select i1 %_cond1_n_cond2_cond3_1086, i64* %_address_in_parent_stack_bt_1088, i64* %FPU_TAG_val
  %_new_load_1089 = load i64, i64* %227, align 8
  store i64 %_new_load_1089, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %42, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %43, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %44, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %45, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %46, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %47, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %61, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %62, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:228:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_1102 = load i32, i32* %141, align 4
  %229 = icmp ult i32 %_new_load_1102, 10
  br i1 %229, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %RSI_val.0.RSI_val.0.315, i64* %RSI_val, align 8
  %230 = tail call x86_64_sysvcc i64 @getopt_long(i64 4294967295, i64 %RSI_val.0.RSI_val.0.315, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %132, i64 0), !mcsema_real_eip !8
  %231 = add i64 %230, -86, !mcsema_real_eip !9
  %232 = trunc i64 %231 to i32
  %233 = and i64 %231, 4294967295
  %234 = icmp ult i32 %232, 33
  br i1 %234, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond3196 = icmp eq i32 %_new_load_1102, 0
  br i1 %cond3196, label %block_0x1165, label %239

block_0x11de:                                     ; preds = %block_0x10a0
  %235 = and i32 %189, 16
  %236 = icmp eq i32 %235, 0
  %_new_gep_100 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -1576
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_101, align 8, !mcsema_real_eip !15
  %237 = ptrtoint i8* %_new_gep_100 to i64
  store volatile i64 %237, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %132, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %187, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.310 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.310, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 4294967295, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %237, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1042423 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1042423, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  store i64 4294967295, i64* %R12, align 8, !mcsema_real_eip !15
  store i64 %9, i64* %R13, align 8, !mcsema_real_eip !15
  store i64 %131, i64* %R14, align 8, !mcsema_real_eip !15
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %236, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %11, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %14, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %15, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %16, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %17, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %18, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %20, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %30, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %31, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %33, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_1129 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_1131 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_1132 = sub i64 %_ptr_to_int_1129, %1
  %_pot_address_in_parent_stack_1133 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1132
  %_cond1_1134 = icmp ugt i8* %_ptr_bt_1131, %_local_stack_end_ptr_
  %_cond2_1_1135 = icmp ugt i8* %_ptr_bt_1131, %_parent_stack_end_ptr_
  %_cond2_2_1136 = icmp ult i8* %_ptr_bt_1131, %_parent_stack_start_ptr_
  %_cond2_1137 = or i1 %_cond2_1_1135, %_cond2_2_1136
  %_cond4_1138 = icmp ule i8* %_pot_address_in_parent_stack_1133, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1139 = and i1 %_cond1_1134, %_cond2_1137
  %_cond1_n_cond2_cond3_1140 = and i1 %_cond1_n_cond2_1139, %_cond4_1138
  %_address_in_parent_stack_bt_1142 = bitcast i8* %_pot_address_in_parent_stack_1133 to i64*
  %238 = select i1 %_cond1_n_cond2_cond3_1140, i64* %_address_in_parent_stack_bt_1142, i64* %FPU_TAG_val
  %_new_load_1143 = load i64, i64* %238, align 8
  store i64 %_new_load_1143, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %42, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %43, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %44, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %45, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %46, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %47, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %61, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %62, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:239:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_e42.21(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_ = alloca i8, align 1
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 1
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !80
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !80
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !80
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !80
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !80
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !80
  %4 = load i64, i64* %RCX, align 8, !mcsema_real_eip !80
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !80
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !80
  %5 = load i64, i64* %RSI, align 8, !mcsema_real_eip !80
  store i64 %5, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !80
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !80
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !80
  %6 = load i64, i64* %RBP, align 8, !mcsema_real_eip !80
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !80
  %7 = load i64, i64* %R8, align 8, !mcsema_real_eip !80
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !80
  %8 = load i64, i64* %R9, align 8, !mcsema_real_eip !80
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !80
  %9 = load i64, i64* %R10, align 8, !mcsema_real_eip !80
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !80
  %10 = load i64, i64* %R11, align 8, !mcsema_real_eip !80
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !80
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !80
  %11 = load i64, i64* %R13, align 8, !mcsema_real_eip !80
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !80
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !80
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !80
  %12 = load i64, i64* %RIP, align 8, !mcsema_real_eip !80
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !80
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !80
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !80
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !80
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !80
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !80
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !80
  %13 = load i1, i1* %DF, align 1, !mcsema_real_eip !80
  %14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !80
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !80
  %16 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !80
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %16, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !80
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !80
  %17 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !80
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !80
  %18 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !80
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !80
  %19 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !80
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !80
  %20 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !80
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !80
  %21 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !80
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !80
  %22 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !80
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !80
  %23 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !80
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !80
  %24 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !80
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !80
  %25 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !80
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !80
  %26 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !80
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !80
  %27 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !80
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !80
  %28 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !80
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !80
  %29 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !80
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !80
  %30 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !80
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !80
  %31 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !80
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !80
  %32 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !80
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !80
  %33 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !80
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !80
  %34 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !80
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !80
  %35 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !80
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !80
  %36 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !80
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !80
  %37 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !80
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !80
  %38 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !80
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !80
  %39 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !80
  %40 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !80
  %41 = bitcast i8* %40 to i64*
  %_ptr_to_int_ = ptrtoint i8* %40 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %40, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %40, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %40, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %42 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %41
  %_new_load_ = load i64, i64* %42, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !80
  %43 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !80
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !80
  %44 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !80
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !80
  %45 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !80
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !80
  %46 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !80
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !80
  %47 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !80
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !80
  %48 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !80
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !80
  %49 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !80
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !80
  %50 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !80
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !80
  %51 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !80
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !80
  %52 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !80
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !80
  %53 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !80
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !80
  %54 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !80
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !80
  %55 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !80
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !80
  %56 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !80
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !80
  %57 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !80
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !80
  %58 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !80
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !80
  %59 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !80
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !80
  %60 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !80
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !80
  %61 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !80
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !80
  %62 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !80
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !80
  %63 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !80
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !80
  %64 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !80
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_ = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  %65 = inttoptr i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_ to i8*
  %_offset_above_rbp_707 = sub i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_, %1
  %_pot_address_in_parent_stack_708 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_707
  %_cond1_709 = icmp ugt i8* %65, %_local_stack_end_ptr_
  %_cond2_1_710 = icmp ugt i8* %65, %_parent_stack_end_ptr_
  %_cond2_2_711 = icmp ult i8* %65, %_parent_stack_start_ptr_
  %_cond2_712 = or i1 %_cond2_1_710, %_cond2_2_711
  %_cond4_713 = icmp ule i8* %_pot_address_in_parent_stack_708, %_parent_stack_end_ptr_
  %_cond1_n_cond2_714 = and i1 %_cond1_709, %_cond2_712
  %_cond1_n_cond2_cond3_715 = and i1 %_cond4_713, %_cond1_n_cond2_714
  %_address_in_parent_stack_716. = select i1 %_cond1_n_cond2_cond3_715, i8* %_pot_address_in_parent_stack_708, i8* %65
  %_new_load_717 = load i8, i8* %_address_in_parent_stack_716., align 1
  %66 = icmp eq i8 %_new_load_717, 9
  br i1 %66, label %block_0xe50.preheader, label %block_0xe5a, !mcsema_real_eip !36

block_0xe50.preheader:                            ; preds = %block_0xe5a, %entry
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_125592592 = phi i8* [ %65, %entry ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3525522594, %block_0xe5a ]
  %RBP_val.1 = phi i64 [ %6, %entry ], [ %RBP_val.3, %block_0xe5a ]
  br label %block_0xe50

block_0xe50:                                      ; preds = %block_0xe50, %block_0xe50.preheader
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12559 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_125592592, %block_0xe50.preheader ], [ %_new_gep_, %block_0xe50 ]
  %RBP_val.2 = phi i64 [ %RBP_val.1, %block_0xe50.preheader ], [ %67, %block_0xe50 ]
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12559, i64 1
  %67 = add i64 %RBP_val.2, 1, !mcsema_real_eip !35
  %68 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %68, i64* %_RBP_ptr_.sroa.0, align 8
  %_offset_above_rbp_720 = sub i64 %68, %1
  %_pot_address_in_parent_stack_721 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_720
  %_cond1_722 = icmp ugt i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12559, %_local_stack_start_ptr_
  %_cond2_1_723 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_724 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_725 = or i1 %_cond2_1_723, %_cond2_2_724
  %_cond4_726 = icmp ule i8* %_pot_address_in_parent_stack_721, %_parent_stack_end_ptr_
  %_cond1_n_cond2_727 = and i1 %_cond1_722, %_cond2_725
  %_cond1_n_cond2_cond3_728 = and i1 %_cond1_n_cond2_727, %_cond4_726
  %_address_in_parent_stack_729. = select i1 %_cond1_n_cond2_cond3_728, i8* %_pot_address_in_parent_stack_721, i8* %_new_gep_
  %_new_load_730 = load i8, i8* %_address_in_parent_stack_729., align 1
  %69 = icmp eq i8 %_new_load_730, 9
  br i1 %69, label %block_0xe50, label %block_0xe5a.loopexit, !mcsema_real_eip !36

block_0xe5a.loopexit:                             ; preds = %block_0xe50
  br label %block_0xe5a

block_0xe5a:                                      ; preds = %block_0xe5a.loopexit, %entry
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3525522594 = phi i8* [ %65, %entry ], [ %_new_gep_, %block_0xe5a.loopexit ]
  %RBP_val.3 = phi i64 [ %6, %entry ], [ %67, %block_0xe5a.loopexit ]
  %RAX_val.3.in = phi i8 [ %_new_load_717, %entry ], [ %_new_load_730, %block_0xe5a.loopexit ]
  %RAX_val.3 = zext i8 %RAX_val.3.in to i64
  %70 = add i8 %RAX_val.3.in, -32
  %71 = icmp eq i8 %70, 0, !mcsema_real_eip !32
  br i1 %71, label %block_0xe50.preheader, label %block_0xe5e, !mcsema_real_eip !33

block_0xe5e:                                      ; preds = %block_0xe5a
  %72 = xor i8 %70, %RAX_val.3.in, !mcsema_real_eip !32
  %73 = icmp ult i8 %RAX_val.3.in, 32, !mcsema_real_eip !37
  br i1 %73, label %block_0xe80, label %block_0xe89.preheader, !mcsema_real_eip !38

block_0xe89.preheader:                            ; preds = %block_0xe80, %block_0xe5e
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_352552 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3525522594, %block_0xe5e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3525522595, %block_0xe80 ]
  %R15_val.0.ph = phi i64 [ 0, %block_0xe5e ], [ %R15_val.1, %block_0xe80 ]
  %R12_val.0.ph = phi i64 [ 0, %block_0xe5e ], [ %R12_val.1, %block_0xe80 ]
  %RCX_val.1.ph = phi i64 [ %4, %block_0xe5e ], [ %RAX_val.5, %block_0xe80 ]
  %RAX_val.4.ph = phi i64 [ %RAX_val.3, %block_0xe5e ], [ %RAX_val.5, %block_0xe80 ]
  %74 = trunc i64 %3 to i8, !mcsema_real_eip !39
  %_new_gep_36 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_352552, i64 1
  br label %block_0xe89

block_0xe89:                                      ; preds = %block_0xe89.preheader, %block_0xe70
  %R15_val.0 = phi i64 [ %153, %block_0xe70 ], [ %R15_val.0.ph, %block_0xe89.preheader ]
  %R12_val.0 = phi i64 [ %155, %block_0xe70 ], [ %R12_val.0.ph, %block_0xe89.preheader ]
  %RAX_val.4 = phi i64 [ %152, %block_0xe70 ], [ %RAX_val.4.ph, %block_0xe89.preheader ]
  %75 = trunc i64 %RAX_val.4 to i8, !mcsema_real_eip !39
  %76 = sub i8 %75, %74, !mcsema_real_eip !39
  %77 = xor i64 %RAX_val.4, %3
  %78 = trunc i64 %77 to i8
  %79 = xor i8 %78, %76, !mcsema_real_eip !39
  %80 = and i8 %79, 16, !mcsema_real_eip !39
  %81 = icmp ne i8 %80, 0, !mcsema_real_eip !39
  %82 = icmp eq i8 %75, %74
  br i1 %82, label %block_0xe95.loopexit, label %block_0xe8d, !mcsema_real_eip !40

block_0xe80.loopexit:                             ; preds = %block_0xe70
  %83 = xor i8 %156, %_new_load_828, !mcsema_real_eip !37
  br label %block_0xe80

block_0xe80:                                      ; preds = %block_0xe80.loopexit, %block_0xe5e
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3525522595 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3525522594, %block_0xe5e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_352552, %block_0xe80.loopexit ]
  %R15_val.1 = phi i64 [ 0, %block_0xe5e ], [ %153, %block_0xe80.loopexit ]
  %CF_val.0 = phi i1 [ true, %block_0xe5e ], [ %158, %block_0xe80.loopexit ]
  %AF_val.0.in.in = phi i8 [ %72, %block_0xe5e ], [ %83, %block_0xe80.loopexit ]
  %R12_val.1 = phi i64 [ 0, %block_0xe5e ], [ %155, %block_0xe80.loopexit ]
  %RAX_val.5 = phi i64 [ %RAX_val.3, %block_0xe5e ], [ %152, %block_0xe80.loopexit ]
  %AF_val.0.in = and i8 %AF_val.0.in.in, 16
  %AF_val.0 = icmp ne i8 %AF_val.0.in, 0
  br i1 %CF_val.0, label %block_0xe95, label %block_0xe89.preheader, !mcsema_real_eip !41

block_0xe95.loopexit:                             ; preds = %block_0xe91, %block_0xe8d, %block_0xe89
  %AF_val.1.ph = phi i1 [ %81, %block_0xe89 ], [ %91, %block_0xe8d ], [ %112, %block_0xe91 ]
  br label %block_0xe95

block_0xe95:                                      ; preds = %block_0xe95.loopexit, %block_0xe80
  %R15_val.2 = phi i64 [ %R15_val.1, %block_0xe80 ], [ %R15_val.0, %block_0xe95.loopexit ]
  %AF_val.1 = phi i1 [ %AF_val.0, %block_0xe80 ], [ %AF_val.1.ph, %block_0xe95.loopexit ]
  %R12_val.2 = phi i64 [ %R12_val.1, %block_0xe80 ], [ %R12_val.0, %block_0xe95.loopexit ]
  %RCX_val.2 = phi i64 [ %RAX_val.5, %block_0xe80 ], [ %RCX_val.1.ph, %block_0xe95.loopexit ]
  %84 = shl i64 %R15_val.2, 32
  %sext2400 = add i64 %84, 4294967296
  %85 = ashr exact i64 %sext2400, 32
  %86 = tail call x86_64_sysvcc i64 @malloc(i64 %85), !mcsema_real_eip !42
  %87 = icmp eq i64 %86, 0, !mcsema_real_eip !43
  br i1 %87, label %block_0xfac, label %block_0xead, !mcsema_real_eip !44

block_0xe8d:                                      ; preds = %block_0xe89
  %88 = add i8 %75, -38
  %89 = xor i8 %88, %75, !mcsema_real_eip !45
  %90 = and i8 %89, 16, !mcsema_real_eip !45
  %91 = icmp ne i8 %90, 0, !mcsema_real_eip !45
  %92 = icmp eq i8 %88, 0, !mcsema_real_eip !45
  br i1 %92, label %block_0xe95.loopexit, label %block_0xe91, !mcsema_real_eip !46

block_0xfac:                                      ; preds = %block_0xe95
  %_offset_above_rbp_732 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_733 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_732
  %_cond1_734 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_735 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_736 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_737 = or i1 %_cond2_2_736, %_cond2_1_735
  %_cond4_738 = icmp ule i8* %_pot_address_in_parent_stack_733, %_parent_stack_end_ptr_
  %_cond1_n_cond2_739 = and i1 %_cond2_737, %_cond1_734
  %_cond1_n_cond2_cond3_740 = and i1 %_cond1_n_cond2_739, %_cond4_738
  %_address_in_parent_stack_bt_742 = bitcast i8* %_pot_address_in_parent_stack_733 to i64*
  %93 = select i1 %_cond1_n_cond2_cond3_740, i64* %_address_in_parent_stack_bt_742, i64* bitcast (%1* @data_0x24ea to i64*)
  %_new_load_743 = load i64, i64* %93, align 8
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64), i64* %RSI_val, align 8
  %94 = tail call x86_64_sysvcc i64 @fprintf(i64 ptrtoint (i64* @stderr to i64), i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64)), !mcsema_real_eip !47
  %95 = tail call x86_64_sysvcc i64 @exit(i64 4294967295), !mcsema_real_eip !48
  %96 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555 = load i8*, i8** %96, align 8
  %_new_gep_3 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555, i64 -8
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %95, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !49
  %97 = ptrtoint i8* %_new_gep_3 to i64
  store volatile i64 %97, i64* %_RSP_ptr_.sroa.0, align 8
  %98 = tail call x86_64_sysvcc i64 @malloc(i64 4294967295), !mcsema_real_eip !50
  %99 = icmp eq i64 %98, 0, !mcsema_real_eip !51
  br i1 %99, label %block_0xfdd, label %block_0xfdb, !mcsema_real_eip !52

block_0xead:                                      ; preds = %block_0xe95
  %sext = shl i64 %R12_val.2, 32
  %100 = ashr exact i64 %sext, 32
  %101 = add i64 %R15_val.2, %RBP_val.3
  %102 = add i64 %101, %100
  store i64 %102, i64* %RSI_val, align 8
  %103 = tail call x86_64_sysvcc i64 @strncpy(i64 %86, i64 %102, i64 %R15_val.2), !mcsema_real_eip !53
  %104 = add i64 %86, %R15_val.2, !mcsema_real_eip !54
  %105 = inttoptr i64 %104 to i8*
  store i8 0, i8* %105, align 1, !mcsema_real_eip !54
  %106 = inttoptr i64 %11 to i64*, !mcsema_real_eip !55
  %_ptr_bt_746 = inttoptr i64 %11 to i8*
  %_offset_above_rbp_747 = sub i64 %11, %1
  %_pot_address_in_parent_stack_748 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_747
  %_cond1_749 = icmp ugt i8* %_ptr_bt_746, %_local_stack_end_ptr_
  %_cond2_1_750 = icmp ugt i8* %_ptr_bt_746, %_parent_stack_end_ptr_
  %_cond2_2_751 = icmp ult i8* %_ptr_bt_746, %_parent_stack_start_ptr_
  %_cond2_752 = or i1 %_cond2_1_750, %_cond2_2_751
  %_cond4_753 = icmp ule i8* %_pot_address_in_parent_stack_748, %_parent_stack_end_ptr_
  %_cond1_n_cond2_754 = and i1 %_cond1_749, %_cond2_752
  %_cond1_n_cond2_cond3_755 = and i1 %_cond4_753, %_cond1_n_cond2_754
  %_address_in_parent_stack_bt_757 = bitcast i8* %_pot_address_in_parent_stack_748 to i64*
  %107 = select i1 %_cond1_n_cond2_cond3_755, i64* %_address_in_parent_stack_bt_757, i64* %106
  %_new_load_758 = load i64, i64* %107, align 8
  store i64 %_new_load_758, i64* %RSI_val, align 8
  %108 = icmp eq i64 %_new_load_758, 0, !mcsema_real_eip !56
  br i1 %108, label %block_0xee3, label %block_0xecf, !mcsema_real_eip !57

block_0xe91:                                      ; preds = %block_0xe8d
  %109 = add i8 %75, -124
  %110 = xor i8 %109, %75, !mcsema_real_eip !58
  %111 = and i8 %110, 16
  %112 = icmp eq i8 %111, 0
  %113 = icmp eq i8 %109, 0, !mcsema_real_eip !58
  br i1 %113, label %block_0xe95.loopexit, label %block_0xe70, !mcsema_real_eip !59

block_0xee3:                                      ; preds = %block_0xecf, %block_0xead
  %RAX_val.6 = phi i64 [ %103, %block_0xead ], [ %127, %block_0xecf ]
  %_offset_above_rbp_760 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_761 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_760
  %_cond1_762 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_763 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_764 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_765 = or i1 %_cond2_2_764, %_cond2_1_763
  %_cond4_766 = icmp ule i8* %_pot_address_in_parent_stack_761, %_parent_stack_end_ptr_
  %_cond1_n_cond2_767 = and i1 %_cond2_765, %_cond1_762
  %_cond1_n_cond2_cond3_768 = and i1 %_cond1_n_cond2_767, %_cond4_766
  %114 = select i1 %_cond1_n_cond2_cond3_768, i8* %_pot_address_in_parent_stack_761, i8* getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_new_load_770 = load i8, i8* %114, align 1
  %115 = add i8 %_new_load_770, -1
  %116 = xor i8 %115, %_new_load_770, !mcsema_real_eip !60
  %117 = and i8 %116, 16, !mcsema_real_eip !60
  %118 = icmp ne i8 %117, 0, !mcsema_real_eip !60
  %119 = tail call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !60
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  %122 = icmp eq i8 %115, 0, !mcsema_real_eip !60
  %123 = icmp slt i8 %115, 0
  %124 = icmp eq i8 %_new_load_770, 0
  %125 = and i8 %116, %_new_load_770, !mcsema_real_eip !60
  %126 = icmp slt i8 %125, 0
  br i1 %122, label %block_0xeec, label %block_0xefe, !mcsema_real_eip !61

block_0xecf:                                      ; preds = %block_0xead
  %127 = tail call x86_64_sysvcc i64 @strcmp(i64 %86, i64 %_new_load_758), !mcsema_real_eip !62
  %128 = trunc i64 %127 to i32, !mcsema_real_eip !63
  %129 = icmp eq i32 %128, 0, !mcsema_real_eip !63
  br i1 %129, label %block_0xedb, label %block_0xee3, !mcsema_real_eip !64

block_0xfdd:                                      ; preds = %block_0xfac
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64), i64* %RSI_val, align 8
  %130 = tail call x86_64_sysvcc i64 @fprintf(i64 ptrtoint (i64* @stderr to i64), i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64)), !mcsema_real_eip !65
  %131 = tail call x86_64_sysvcc i64 @exit(i64 4294967295), !mcsema_real_eip !66
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_72416 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_9 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555, i64 -16
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_72416, i64* %_allin_new_bt_10, align 8
  %_new_gep_11 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555, i64 -24
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  store i64 %R15_val.2, i64* %_allin_new_bt_12, align 8, !mcsema_real_eip !67
  %_new_gep_13 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555, i64 -32
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  store i64 0, i64* %_allin_new_bt_14, align 8, !mcsema_real_eip !68
  %_new_gep_15 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555, i64 -40
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  store i64 %11, i64* %_allin_new_bt_16, align 8, !mcsema_real_eip !69
  %_new_gep_17 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555, i64 -48
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 %R12_val.2, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !70
  %_new_gep_19 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555, i64 -56
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  store i64 %3, i64* %_allin_new_bt_20, align 8, !mcsema_real_eip !3
  %_new_gep_21 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555, i64 -1568
  %132 = ptrtoint i8* %_new_gep_21 to i64
  store volatile i64 %132, i64* %_RSP_ptr_.sroa.0, align 8
  %RSI_val.0.RSI_val.0.314 = load i64, i64* %RSI_val, align 8
  store volatile i64 %RSI_val.0.RSI_val.0.314, i64* %_RBP_ptr_.sroa.0, align 8
  %133 = tail call x86_64_sysvcc i64 @getenv(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 107) to i64)), !mcsema_real_eip !4
  %_new_gep_23 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555, i64 -480
  %134 = ptrtoint i8* %_new_gep_23 to i64
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x2082 to i32), i32 592) to i64), i64* %RSI_val, align 8
  %135 = tail call x86_64_sysvcc i64 @memcpy(i64 %134, i64 zext (i32 add (i32 ptrtoint (%0* @data_0x2082 to i32), i32 592) to i64), i64 416), !mcsema_real_eip !5
  %136 = inttoptr i64 %RSI_val.0.RSI_val.0.314 to i8*
  %_offset_above_rbp_774 = sub i64 %RSI_val.0.RSI_val.0.314, %1
  %_pot_address_in_parent_stack_775 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_774
  %_cond1_776 = icmp ugt i8* %136, %_local_stack_end_ptr_
  %_cond2_1_777 = icmp ugt i8* %136, %_parent_stack_end_ptr_
  %_cond2_2_778 = icmp ult i8* %136, %_parent_stack_start_ptr_
  %_cond2_779 = or i1 %_cond2_1_777, %_cond2_2_778
  %_cond4_780 = icmp ule i8* %_pot_address_in_parent_stack_775, %_parent_stack_end_ptr_
  %_cond1_n_cond2_781 = and i1 %_cond1_776, %_cond2_779
  %_cond1_n_cond2_cond3_782 = and i1 %_cond4_780, %_cond1_n_cond2_781
  %.v2417 = select i1 %_cond1_n_cond2_cond3_782, i8* %_pot_address_in_parent_stack_775, i8* %136
  %137 = bitcast i8* %.v2417 to i64*
  %_new_load_785 = load i64, i64* %137, align 8
  store i64 %_new_load_785, i64* bitcast (%1* @data_0x24ea to i64*), align 64, !mcsema_real_eip !7
  store volatile i64 %RSI_val.0.RSI_val.0.314, i64* %RSI_val, align 8
  %138 = tail call x86_64_sysvcc i64 @getopt_long(i64 4294967295, i64 %RSI_val.0.RSI_val.0.314, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %134, i64 0), !mcsema_real_eip !8
  %139 = add i64 %138, -86, !mcsema_real_eip !9
  %140 = trunc i64 %139 to i32
  %141 = and i64 %139, 4294967295
  %142 = icmp ult i32 %140, 33
  br i1 %142, label %block_0x108e, label %block_0x10a0.lr.ph, !mcsema_real_eip !10

block_0x10a0.lr.ph:                               ; preds = %block_0xfdd
  %_address_in_parent_stack_bt_1085 = bitcast i8* %_pot_address_in_parent_stack_733 to i32*
  %143 = select i1 %_cond1_n_cond2_cond3_740, i32* %_address_in_parent_stack_bt_1085, i32* bitcast (%1* @data_0x24ea to i32*)
  br label %block_0x10a0

block_0xfdb:                                      ; preds = %block_0xfac
  %144 = trunc i64 %98 to i8, !mcsema_real_eip !51
  %145 = tail call i8 @llvm.ctpop.i8(i8 %144), !mcsema_real_eip !51
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  %148 = icmp slt i64 %98, 0
  %_offset_above_rbp_789 = sub i64 %97, %1
  %_pot_address_in_parent_stack_790 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_789
  %_cond1_791 = icmp ugt i8* %_new_gep_3, %_local_stack_end_ptr_
  %_cond2_1_792 = icmp ugt i8* %_new_gep_3, %_parent_stack_end_ptr_
  %_cond2_2_793 = icmp ult i8* %_new_gep_3, %_parent_stack_start_ptr_
  %_cond2_794 = or i1 %_cond2_1_792, %_cond2_2_793
  %_cond4_795 = icmp ule i8* %_pot_address_in_parent_stack_790, %_parent_stack_end_ptr_
  %_cond1_n_cond2_796 = and i1 %_cond1_791, %_cond2_794
  %_cond1_n_cond2_cond3_797 = and i1 %_cond4_795, %_cond1_n_cond2_796
  %.v2413 = select i1 %_cond1_n_cond2_cond3_797, i8* %_pot_address_in_parent_stack_790, i8* %_new_gep_3
  %149 = bitcast i8* %.v2413 to i64*
  %_new_load_800 = load i64, i64* %149, align 8
  %_new_gep_30 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555, i64 8
  %150 = ptrtoint i8* %_new_gep_30 to i64
  store volatile i64 %150, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %98, i64* %RAX, align 8, !mcsema_real_eip !71
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !71
  store i64 %_new_load_800, i64* %RCX, align 8, !mcsema_real_eip !71
  store i64 %_new_load_743, i64* %RDX, align 8, !mcsema_real_eip !71
  %RSI_val.0.RSI_val.0.313 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.313, i64* %RSI, align 8, !mcsema_real_eip !71
  store i64 4294967295, i64* %RDI, align 8, !mcsema_real_eip !71
  store volatile i64 %150, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_332415 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_332415, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !71
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !71
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !71
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !71
  store i64 %R12_val.2, i64* %R12, align 8, !mcsema_real_eip !71
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !71
  store i64 0, i64* %R14, align 8, !mcsema_real_eip !71
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !71
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !71
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !71
  store i1 %147, i1* %PF, align 1, !mcsema_real_eip !71
  store i1 %AF_val.1, i1* %AF, align 1, !mcsema_real_eip !71
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !71
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !71
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !71
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !71
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !71
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !71
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !71
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !71
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !71
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !71
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !71
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !71
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !71
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !71
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !71
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !71
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !71
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !71
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !71
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !71
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !71
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !71
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !71
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !71
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !71
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !71
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !71
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !71
  %_ptr_to_int_801 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_803 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_804 = sub i64 %_ptr_to_int_801, %1
  %_pot_address_in_parent_stack_805 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_804
  %_cond1_806 = icmp ugt i8* %_ptr_bt_803, %_local_stack_end_ptr_
  %_cond2_1_807 = icmp ugt i8* %_ptr_bt_803, %_parent_stack_end_ptr_
  %_cond2_2_808 = icmp ult i8* %_ptr_bt_803, %_parent_stack_start_ptr_
  %_cond2_809 = or i1 %_cond2_1_807, %_cond2_2_808
  %_cond4_810 = icmp ule i8* %_pot_address_in_parent_stack_805, %_parent_stack_end_ptr_
  %_cond1_n_cond2_811 = and i1 %_cond1_806, %_cond2_809
  %_cond1_n_cond2_cond3_812 = and i1 %_cond1_n_cond2_811, %_cond4_810
  %_address_in_parent_stack_bt_814 = bitcast i8* %_pot_address_in_parent_stack_805 to i64*
  %151 = select i1 %_cond1_n_cond2_cond3_812, i64* %_address_in_parent_stack_bt_814, i64* %FPU_TAG_val
  %_new_load_815 = load i64, i64* %151, align 8
  store i64 %_new_load_815, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !71
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !71
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !71
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !71
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !71
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !71
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !71
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !71
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !71
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !71
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !71
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !71
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !71
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !71
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !71
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !71
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !71
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !71
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !71
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !71
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !71
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !71
  ret void, !mcsema_real_eip !71

block_0xe70:                                      ; preds = %block_0xe91
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_36, i64 %R15_val.0
  %_ptr_to_int_816 = ptrtoint i8* %_new_gep_37 to i64
  %_offset_above_rbp_818 = sub i64 %_ptr_to_int_816, %1
  %_pot_address_in_parent_stack_819 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_818
  %_cond1_820 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_821 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_822 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_823 = or i1 %_cond2_1_821, %_cond2_2_822
  %_cond4_824 = icmp ule i8* %_pot_address_in_parent_stack_819, %_parent_stack_end_ptr_
  %_cond1_n_cond2_825 = and i1 %_cond1_820, %_cond2_823
  %_cond1_n_cond2_cond3_826 = and i1 %_cond1_n_cond2_825, %_cond4_824
  %_address_in_parent_stack_827. = select i1 %_cond1_n_cond2_cond3_826, i8* %_pot_address_in_parent_stack_819, i8* %_new_gep_37
  %_new_load_828 = load i8, i8* %_address_in_parent_stack_827., align 1
  %152 = zext i8 %_new_load_828 to i64
  %153 = add i64 %R15_val.0, 1, !mcsema_real_eip !72
  %154 = add nsw i64 %R12_val.0, 4294967295
  %155 = and i64 %154, 4294967295
  %156 = add i8 %_new_load_828, -32
  %157 = icmp eq i8 %156, 0, !mcsema_real_eip !37
  %158 = icmp ult i8 %_new_load_828, 32, !mcsema_real_eip !37
  %.demorgan3276 = or i1 %158, %157
  br i1 %.demorgan3276, label %block_0xe80.loopexit, label %block_0xe89, !mcsema_real_eip !38

block_0xedb:                                      ; preds = %block_0xecf
  store i64 0, i64* %106, align 8, !mcsema_real_eip !73
  %_offset_above_rbp_830 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_831 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_830
  %_cond1_832 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_833 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_834 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_835 = or i1 %_cond2_2_834, %_cond2_1_833
  %_cond4_836 = icmp ule i8* %_pot_address_in_parent_stack_831, %_parent_stack_end_ptr_
  %_cond1_n_cond2_837 = and i1 %_cond2_835, %_cond1_832
  %_cond1_n_cond2_cond3_838 = and i1 %_cond1_n_cond2_837, %_cond4_836
  %159 = select i1 %_cond1_n_cond2_cond3_838, i8* %_pot_address_in_parent_stack_831, i8* getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_new_load_840 = load i8, i8* %159, align 1
  %160 = add i8 %_new_load_840, -1
  %161 = xor i8 %160, %_new_load_840, !mcsema_real_eip !60
  %162 = and i8 %161, 16, !mcsema_real_eip !60
  %163 = icmp ne i8 %162, 0, !mcsema_real_eip !60
  %164 = tail call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !60
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  %167 = icmp eq i8 %160, 0, !mcsema_real_eip !60
  %168 = icmp slt i8 %160, 0
  %169 = icmp eq i8 %_new_load_840, 0
  %170 = and i8 %161, %_new_load_840, !mcsema_real_eip !60
  %171 = icmp slt i8 %170, 0
  br i1 %167, label %block_0xeec, label %block_0xefe, !mcsema_real_eip !61

block_0xefe:                                      ; preds = %block_0xeec, %block_0xedb, %block_0xee3
  %OF_val.0 = phi i1 [ false, %block_0xeec ], [ %126, %block_0xee3 ], [ %171, %block_0xedb ]
  %SF_val.0 = phi i1 [ %178, %block_0xeec ], [ %123, %block_0xee3 ], [ %168, %block_0xedb ]
  %CF_val.1 = phi i1 [ false, %block_0xeec ], [ %124, %block_0xee3 ], [ %169, %block_0xedb ]
  %AF_val.2 = phi i1 [ %AF_val.3, %block_0xeec ], [ %118, %block_0xee3 ], [ %163, %block_0xedb ]
  %PF_val.0 = phi i1 [ %182, %block_0xeec ], [ %121, %block_0xee3 ], [ %166, %block_0xedb ]
  %RAX_val.7 = phi i64 [ %176, %block_0xeec ], [ %RAX_val.6, %block_0xee3 ], [ %127, %block_0xedb ]
  store i64 %86, i64* %RSI_val, align 8
  %172 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_392553 = load i8*, i8** %172, align 8
  %_new_gep_40 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_392553, i64 16
  %_ptr_to_int_841 = ptrtoint i8* %_new_gep_40 to i64
  %_offset_above_rbp_844 = sub i64 %_ptr_to_int_841, %1
  %_pot_address_in_parent_stack_845 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_844
  %_cond1_846 = icmp ugt i8* %_new_gep_40, %_local_stack_end_ptr_
  %_cond2_1_847 = icmp ugt i8* %_new_gep_40, %_parent_stack_end_ptr_
  %_cond2_2_848 = icmp ult i8* %_new_gep_40, %_parent_stack_start_ptr_
  %_cond2_849 = or i1 %_cond2_1_847, %_cond2_2_848
  %_cond4_850 = icmp ule i8* %_pot_address_in_parent_stack_845, %_parent_stack_end_ptr_
  %_cond1_n_cond2_851 = and i1 %_cond1_846, %_cond2_849
  %_cond1_n_cond2_cond3_852 = and i1 %_cond1_n_cond2_851, %_cond4_850
  %.v = select i1 %_cond1_n_cond2_cond3_852, i8* %_pot_address_in_parent_stack_845, i8* %_new_gep_40
  %173 = bitcast i8* %.v to i64*
  %_new_load_855 = load i64, i64* %173, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_392553, i64 -8
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_43, align 8, !mcsema_real_eip !74
  %174 = ptrtoint i8* %_new_gep_42 to i64
  store volatile i64 %174, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %RAX_val.7, i64* %RAX, align 8, !mcsema_real_eip !74
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !74
  store i64 %RCX_val.2, i64* %RCX, align 8, !mcsema_real_eip !74
  store i64 %_new_load_855, i64* %RDX, align 8, !mcsema_real_eip !74
  %RSI_val.0.RSI_val.0.312 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.312, i64* %RSI, align 8, !mcsema_real_eip !74
  store i64 1, i64* %RDI, align 8, !mcsema_real_eip !74
  store volatile i64 %174, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_462402 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_462402, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !74
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !74
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !74
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !74
  store i64 %R12_val.2, i64* %R12, align 8, !mcsema_real_eip !74
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !74
  store i64 %86, i64* %R14, align 8, !mcsema_real_eip !74
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !74
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !74
  store i1 %CF_val.1, i1* %CF, align 1, !mcsema_real_eip !74
  store i1 %PF_val.0, i1* %PF, align 1, !mcsema_real_eip !74
  store i1 %AF_val.2, i1* %AF, align 1, !mcsema_real_eip !74
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !74
  store i1 %SF_val.0, i1* %SF, align 1, !mcsema_real_eip !74
  store i1 %OF_val.0, i1* %OF, align 1, !mcsema_real_eip !74
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !74
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !74
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !74
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !74
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !74
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !74
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !74
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !74
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !74
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !74
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !74
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !74
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !74
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !74
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !74
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !74
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !74
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !74
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !74
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !74
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !74
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !74
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !74
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !74
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !74
  %_ptr_to_int_856 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_858 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_859 = sub i64 %_ptr_to_int_856, %1
  %_pot_address_in_parent_stack_860 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_859
  %_cond1_861 = icmp ugt i8* %_ptr_bt_858, %_local_stack_end_ptr_
  %_cond2_1_862 = icmp ugt i8* %_ptr_bt_858, %_parent_stack_end_ptr_
  %_cond2_2_863 = icmp ult i8* %_ptr_bt_858, %_parent_stack_start_ptr_
  %_cond2_864 = or i1 %_cond2_1_862, %_cond2_2_863
  %_cond4_865 = icmp ule i8* %_pot_address_in_parent_stack_860, %_parent_stack_end_ptr_
  %_cond1_n_cond2_866 = and i1 %_cond1_861, %_cond2_864
  %_cond1_n_cond2_cond3_867 = and i1 %_cond1_n_cond2_866, %_cond4_865
  %_address_in_parent_stack_bt_869 = bitcast i8* %_pot_address_in_parent_stack_860 to i64*
  %175 = select i1 %_cond1_n_cond2_cond3_867, i64* %_address_in_parent_stack_bt_869, i64* %FPU_TAG_val
  %_new_load_870 = load i64, i64* %175, align 8
  store i64 %_new_load_870, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !74
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !74
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !74
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !74
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !74
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !74
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !74
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !74
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !74
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !74
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !74
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !74
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !74
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !74
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !74
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !74
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !74
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !74
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !74
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !74
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !74
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !74
  call void @llvm.trap()
  unreachable

block_0xeec:                                      ; preds = %block_0xedb, %block_0xee3
  %AF_val.3 = phi i1 [ %118, %block_0xee3 ], [ %163, %block_0xedb ]
  store i64 47, i64* %RSI_val, align 8
  %176 = tail call x86_64_sysvcc i64 @strchr(i64 %86, i64 47), !mcsema_real_eip !75
  %177 = icmp eq i64 %176, 0, !mcsema_real_eip !76
  %178 = icmp slt i64 %176, 0
  %179 = trunc i64 %176 to i8, !mcsema_real_eip !76
  %180 = tail call i8 @llvm.ctpop.i8(i8 %179), !mcsema_real_eip !76
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  br i1 %177, label %block_0xf6f, label %block_0xefe, !mcsema_real_eip !77

block_0xf6f:                                      ; preds = %block_0xeec
  store i64 %86, i64* %RSI_val, align 8
  %183 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_512554 = load i8*, i8** %183, align 8
  %_new_gep_52 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_512554, i64 4
  %_ptr_to_int_886 = ptrtoint i8* %_new_gep_52 to i64
  %_offset_above_rbp_889 = sub i64 %_ptr_to_int_886, %1
  %_pot_address_in_parent_stack_890 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_889
  %_cond1_891 = icmp ugt i8* %_new_gep_52, %_local_stack_end_ptr_
  %_cond2_1_892 = icmp ugt i8* %_new_gep_52, %_parent_stack_end_ptr_
  %_cond2_2_893 = icmp ult i8* %_new_gep_52, %_parent_stack_start_ptr_
  %_cond2_894 = or i1 %_cond2_1_892, %_cond2_2_893
  %_cond4_895 = icmp ule i8* %_pot_address_in_parent_stack_890, %_parent_stack_end_ptr_
  %_cond1_n_cond2_896 = and i1 %_cond1_891, %_cond2_894
  %_cond1_n_cond2_cond3_897 = and i1 %_cond1_n_cond2_896, %_cond4_895
  %.v2408 = select i1 %_cond1_n_cond2_cond3_897, i8* %_pot_address_in_parent_stack_890, i8* %_new_gep_52
  %184 = bitcast i8* %.v2408 to i32*
  %_new_load_900 = load i32, i32* %184, align 4
  %185 = zext i32 %_new_load_900 to i64, !mcsema_real_eip !78
  %_new_gep_55 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_512554, i64 -8
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_56, align 8, !mcsema_real_eip !79
  %186 = ptrtoint i8* %_new_gep_55 to i64
  store volatile i64 %186, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !79
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !79
  store i64 %185, i64* %RCX, align 8, !mcsema_real_eip !79
  store i64 %R15_val.2, i64* %RDX, align 8, !mcsema_real_eip !79
  %RSI_val.0.RSI_val.0.311 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.311, i64* %RSI, align 8, !mcsema_real_eip !79
  store i64 1, i64* %RDI, align 8, !mcsema_real_eip !79
  store volatile i64 %186, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_592410 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_592410, i64* %RBP, align 8
  store i64 %7, i64* %R8, align 8, !mcsema_real_eip !79
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !79
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !79
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !79
  store i64 %R12_val.2, i64* %R12, align 8, !mcsema_real_eip !79
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !79
  store i64 %86, i64* %R14, align 8, !mcsema_real_eip !79
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !79
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !79
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !79
  store i1 %182, i1* %PF, align 1, !mcsema_real_eip !79
  store i1 %AF_val.3, i1* %AF, align 1, !mcsema_real_eip !79
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !79
  store i1 %178, i1* %SF, align 1, !mcsema_real_eip !79
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !79
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !79
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !79
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !79
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !79
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !79
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !79
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !79
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !79
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !79
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !79
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !79
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !79
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !79
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !79
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !79
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !79
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !79
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !79
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !79
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !79
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !79
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !79
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !79
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !79
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !79
  %_ptr_to_int_901 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_903 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_904 = sub i64 %_ptr_to_int_901, %1
  %_pot_address_in_parent_stack_905 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_904
  %_cond1_906 = icmp ugt i8* %_ptr_bt_903, %_local_stack_end_ptr_
  %_cond2_1_907 = icmp ugt i8* %_ptr_bt_903, %_parent_stack_end_ptr_
  %_cond2_2_908 = icmp ult i8* %_ptr_bt_903, %_parent_stack_start_ptr_
  %_cond2_909 = or i1 %_cond2_1_907, %_cond2_2_908
  %_cond4_910 = icmp ule i8* %_pot_address_in_parent_stack_905, %_parent_stack_end_ptr_
  %_cond1_n_cond2_911 = and i1 %_cond1_906, %_cond2_909
  %_cond1_n_cond2_cond3_912 = and i1 %_cond1_n_cond2_911, %_cond4_910
  %_address_in_parent_stack_bt_914 = bitcast i8* %_pot_address_in_parent_stack_905 to i64*
  %187 = select i1 %_cond1_n_cond2_cond3_912, i64* %_address_in_parent_stack_bt_914, i64* %FPU_TAG_val
  %_new_load_915 = load i64, i64* %187, align 8
  store i64 %_new_load_915, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !79
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !79
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !79
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !79
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !79
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !79
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !79
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !79
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !79
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !79
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !79
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !79
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !79
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !79
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !79
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !79
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !79
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !79
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !79
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !79
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !79
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !79
  call void @llvm.trap()
  unreachable

block_0x10a0:                                     ; preds = %block_0x10a0.lr.ph, %block_0x1070.backedge
  %188 = phi i64 [ %141, %block_0x10a0.lr.ph ], [ %234, %block_0x1070.backedge ]
  %189 = phi i64 [ %138, %block_0x10a0.lr.ph ], [ %231, %block_0x1070.backedge ]
  %190 = trunc i64 %189 to i32, !mcsema_real_eip !11
  switch i32 %190, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %block_0xfdd
  %.lcssa2562 = phi i64 [ %141, %block_0xfdd ], [ %234, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2562, 0
  br i1 %cond, label %block_0x1165, label %229

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %191 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %192 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %193 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %194 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %uadd3201 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %132, i64 1512)
  %195 = extractvalue { i64, i1 } %uadd3201, 0
  %196 = xor i64 %195, %132, !mcsema_real_eip !21
  %197 = and i64 %196, 16, !mcsema_real_eip !21
  %198 = icmp ne i64 %197, 0, !mcsema_real_eip !21
  %199 = icmp slt i64 %195, 0
  %200 = icmp eq i64 %195, 0, !mcsema_real_eip !21
  %201 = xor i64 %132, -9223372036854775808, !mcsema_real_eip !21
  %202 = and i64 %196, %201, !mcsema_real_eip !21
  %203 = icmp slt i64 %202, 0
  %204 = trunc i64 %195 to i8, !mcsema_real_eip !21
  %205 = tail call i8 @llvm.ctpop.i8(i8 %204), !mcsema_real_eip !21
  %206 = and i8 %205, 1
  %207 = icmp eq i8 %206, 0
  %208 = extractvalue { i64, i1 } %uadd3201, 1
  %_new_int2ptr_72 = inttoptr i64 %195 to i8*
  store volatile i64 %195, i64* %_RSP_ptr_.sroa.0, align 8
  %209 = inttoptr i64 %195 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_972 = sub i64 %195, %1
  %_pot_address_in_parent_stack_973 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_972
  %_cond1_974 = icmp ugt i8* %_new_int2ptr_72, %_local_stack_end_ptr_
  %_cond2_1_975 = icmp ugt i8* %_new_int2ptr_72, %_parent_stack_end_ptr_
  %_cond2_2_976 = icmp ult i8* %_new_int2ptr_72, %_parent_stack_start_ptr_
  %_cond2_977 = or i1 %_cond2_1_975, %_cond2_2_976
  %_cond4_978 = icmp ule i8* %_pot_address_in_parent_stack_973, %_parent_stack_end_ptr_
  %_cond1_n_cond2_979 = and i1 %_cond1_974, %_cond2_977
  %_cond1_n_cond2_cond3_980 = and i1 %_cond4_978, %_cond1_n_cond2_979
  %_address_in_parent_stack_bt_982 = bitcast i8* %_pot_address_in_parent_stack_973 to i64*
  %210 = select i1 %_cond1_n_cond2_cond3_980, i64* %_address_in_parent_stack_bt_982, i64* %209
  %_new_load_983 = load i64, i64* %210, align 8
  %211 = add i64 %195, 8, !mcsema_real_eip !22
  %_new_int2ptr_73 = inttoptr i64 %211 to i8*
  store volatile i64 %211, i64* %_RSP_ptr_.sroa.0, align 8
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_987 = sub i64 %211, %1
  %_pot_address_in_parent_stack_988 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_987
  %_cond1_989 = icmp ugt i8* %_new_int2ptr_73, %_local_stack_end_ptr_
  %_cond2_1_990 = icmp ugt i8* %_new_int2ptr_73, %_parent_stack_end_ptr_
  %_cond2_2_991 = icmp ult i8* %_new_int2ptr_73, %_parent_stack_start_ptr_
  %_cond2_992 = or i1 %_cond2_1_990, %_cond2_2_991
  %_cond4_993 = icmp ule i8* %_pot_address_in_parent_stack_988, %_parent_stack_end_ptr_
  %_cond1_n_cond2_994 = and i1 %_cond1_989, %_cond2_992
  %_cond1_n_cond2_cond3_995 = and i1 %_cond4_993, %_cond1_n_cond2_994
  %_address_in_parent_stack_bt_997 = bitcast i8* %_pot_address_in_parent_stack_988 to i64*
  %213 = select i1 %_cond1_n_cond2_cond3_995, i64* %_address_in_parent_stack_bt_997, i64* %212
  %_new_load_998 = load i64, i64* %213, align 8
  %214 = add i64 %195, 16, !mcsema_real_eip !23
  %_new_int2ptr_74 = inttoptr i64 %214 to i8*
  store volatile i64 %214, i64* %_RSP_ptr_.sroa.0, align 8
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_1002 = sub i64 %214, %1
  %_pot_address_in_parent_stack_1003 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1002
  %_cond1_1004 = icmp ugt i8* %_new_int2ptr_74, %_local_stack_end_ptr_
  %_cond2_1_1005 = icmp ugt i8* %_new_int2ptr_74, %_parent_stack_end_ptr_
  %_cond2_2_1006 = icmp ult i8* %_new_int2ptr_74, %_parent_stack_start_ptr_
  %_cond2_1007 = or i1 %_cond2_1_1005, %_cond2_2_1006
  %_cond4_1008 = icmp ule i8* %_pot_address_in_parent_stack_1003, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1009 = and i1 %_cond1_1004, %_cond2_1007
  %_cond1_n_cond2_cond3_1010 = and i1 %_cond4_1008, %_cond1_n_cond2_1009
  %_address_in_parent_stack_bt_1012 = bitcast i8* %_pot_address_in_parent_stack_1003 to i64*
  %216 = select i1 %_cond1_n_cond2_cond3_1010, i64* %_address_in_parent_stack_bt_1012, i64* %215
  %_new_load_1013 = load i64, i64* %216, align 8
  %217 = add i64 %195, 24, !mcsema_real_eip !24
  %_new_int2ptr_75 = inttoptr i64 %217 to i8*
  store volatile i64 %217, i64* %_RSP_ptr_.sroa.0, align 8
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_1017 = sub i64 %217, %1
  %_pot_address_in_parent_stack_1018 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1017
  %_cond1_1019 = icmp ugt i8* %_new_int2ptr_75, %_local_stack_end_ptr_
  %_cond2_1_1020 = icmp ugt i8* %_new_int2ptr_75, %_parent_stack_end_ptr_
  %_cond2_2_1021 = icmp ult i8* %_new_int2ptr_75, %_parent_stack_start_ptr_
  %_cond2_1022 = or i1 %_cond2_1_1020, %_cond2_2_1021
  %_cond4_1023 = icmp ule i8* %_pot_address_in_parent_stack_1018, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1024 = and i1 %_cond1_1019, %_cond2_1022
  %_cond1_n_cond2_cond3_1025 = and i1 %_cond4_1023, %_cond1_n_cond2_1024
  %_address_in_parent_stack_bt_1027 = bitcast i8* %_pot_address_in_parent_stack_1018 to i64*
  %219 = select i1 %_cond1_n_cond2_cond3_1025, i64* %_address_in_parent_stack_bt_1027, i64* %218
  %_new_load_1028 = load i64, i64* %219, align 8
  %220 = add i64 %195, 32, !mcsema_real_eip !25
  %_new_int2ptr_76 = inttoptr i64 %220 to i8*
  store volatile i64 %220, i64* %_RSP_ptr_.sroa.0, align 8
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_1032 = sub i64 %220, %1
  %_pot_address_in_parent_stack_1033 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1032
  %_cond1_1034 = icmp ugt i8* %_new_int2ptr_76, %_local_stack_end_ptr_
  %_cond2_1_1035 = icmp ugt i8* %_new_int2ptr_76, %_parent_stack_end_ptr_
  %_cond2_2_1036 = icmp ult i8* %_new_int2ptr_76, %_parent_stack_start_ptr_
  %_cond2_1037 = or i1 %_cond2_1_1035, %_cond2_2_1036
  %_cond4_1038 = icmp ule i8* %_pot_address_in_parent_stack_1033, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1039 = and i1 %_cond1_1034, %_cond2_1037
  %_cond1_n_cond2_cond3_1040 = and i1 %_cond4_1038, %_cond1_n_cond2_1039
  %_address_in_parent_stack_bt_1042 = bitcast i8* %_pot_address_in_parent_stack_1033 to i64*
  %222 = select i1 %_cond1_n_cond2_cond3_1040, i64* %_address_in_parent_stack_bt_1042, i64* %221
  %_new_load_1043 = load i64, i64* %222, align 8
  %223 = add i64 %195, 40, !mcsema_real_eip !26
  %_new_int2ptr_77 = inttoptr i64 %223 to i8*
  store volatile i64 %223, i64* %_RSP_ptr_.sroa.0, align 8
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_1047 = sub i64 %223, %1
  %_pot_address_in_parent_stack_1048 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1047
  %_cond1_1049 = icmp ugt i8* %_new_int2ptr_77, %_local_stack_end_ptr_
  %_cond2_1_1050 = icmp ugt i8* %_new_int2ptr_77, %_parent_stack_end_ptr_
  %_cond2_2_1051 = icmp ult i8* %_new_int2ptr_77, %_parent_stack_start_ptr_
  %_cond2_1052 = or i1 %_cond2_1_1050, %_cond2_2_1051
  %_cond4_1053 = icmp ule i8* %_pot_address_in_parent_stack_1048, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1054 = and i1 %_cond1_1049, %_cond2_1052
  %_cond1_n_cond2_cond3_1055 = and i1 %_cond4_1053, %_cond1_n_cond2_1054
  %_address_in_parent_stack_bt_1057 = bitcast i8* %_pot_address_in_parent_stack_1048 to i64*
  %225 = select i1 %_cond1_n_cond2_cond3_1055, i64* %_address_in_parent_stack_bt_1057, i64* %224
  %_new_load_105825312532 = load i64, i64* %225, align 8
  store volatile i64 %_new_load_105825312532, i64* %_RBP_ptr_.sroa.0, align 8
  %226 = add i64 %195, 56
  store volatile i64 %226, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_983, i64* %RBX, align 8, !mcsema_real_eip !28
  %227 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %227, align 8
  %RSI_val.0.RSI_val.0.310 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.310, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %226, i64* %RSP, align 8
  store volatile i64 %_new_load_105825312532, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_998, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_1013, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_1028, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_1043, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %208, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %207, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %198, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %200, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %199, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %203, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_1059 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_1061 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_1062 = sub i64 %_ptr_to_int_1059, %1
  %_pot_address_in_parent_stack_1063 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1062
  %_cond1_1064 = icmp ugt i8* %_ptr_bt_1061, %_local_stack_end_ptr_
  %_cond2_1_1065 = icmp ugt i8* %_ptr_bt_1061, %_parent_stack_end_ptr_
  %_cond2_2_1066 = icmp ult i8* %_ptr_bt_1061, %_parent_stack_start_ptr_
  %_cond2_1067 = or i1 %_cond2_1_1065, %_cond2_2_1066
  %_cond4_1068 = icmp ule i8* %_pot_address_in_parent_stack_1063, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1069 = and i1 %_cond1_1064, %_cond2_1067
  %_cond1_n_cond2_cond3_1070 = and i1 %_cond1_n_cond2_1069, %_cond4_1068
  %_address_in_parent_stack_bt_1072 = bitcast i8* %_pot_address_in_parent_stack_1063 to i64*
  %228 = select i1 %_cond1_n_cond2_cond3_1070, i64* %_address_in_parent_stack_bt_1072, i64* %FPU_TAG_val
  %_new_load_1073 = load i64, i64* %228, align 8
  store i64 %_new_load_1073, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:229:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_1086 = load i32, i32* %143, align 4
  %230 = icmp ult i32 %_new_load_1086, 10
  br i1 %230, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %RSI_val.0.RSI_val.0.314, i64* %RSI_val, align 8
  %231 = tail call x86_64_sysvcc i64 @getopt_long(i64 4294967295, i64 %RSI_val.0.RSI_val.0.314, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %134, i64 0), !mcsema_real_eip !8
  %232 = add i64 %231, -86, !mcsema_real_eip !9
  %233 = trunc i64 %232 to i32
  %234 = and i64 %232, 4294967295
  %235 = icmp ult i32 %233, 33
  br i1 %235, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond3195 = icmp eq i32 %_new_load_1086, 0
  br i1 %cond3195, label %block_0x1165, label %240

block_0x11de:                                     ; preds = %block_0x10a0
  %236 = and i32 %190, 16
  %237 = icmp eq i32 %236, 0
  %_new_gep_97 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2555, i64 -1576
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_98, align 8, !mcsema_real_eip !15
  %238 = ptrtoint i8* %_new_gep_97 to i64
  store volatile i64 %238, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %134, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %188, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.309 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.309, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 4294967295, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %238, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1012420 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1012420, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %9, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %R11, align 8, !mcsema_real_eip !15
  store i64 4294967295, i64* %R12, align 8, !mcsema_real_eip !15
  store i64 %11, i64* %R13, align 8, !mcsema_real_eip !15
  store i64 %133, i64* %R14, align 8, !mcsema_real_eip !15
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !15
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %237, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* nonnull %16, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_1113 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_1115 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_1116 = sub i64 %_ptr_to_int_1113, %1
  %_pot_address_in_parent_stack_1117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1116
  %_cond1_1118 = icmp ugt i8* %_ptr_bt_1115, %_local_stack_end_ptr_
  %_cond2_1_1119 = icmp ugt i8* %_ptr_bt_1115, %_parent_stack_end_ptr_
  %_cond2_2_1120 = icmp ult i8* %_ptr_bt_1115, %_parent_stack_start_ptr_
  %_cond2_1121 = or i1 %_cond2_1_1119, %_cond2_2_1120
  %_cond4_1122 = icmp ule i8* %_pot_address_in_parent_stack_1117, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1123 = and i1 %_cond1_1118, %_cond2_1121
  %_cond1_n_cond2_cond3_1124 = and i1 %_cond1_n_cond2_1123, %_cond4_1122
  %_address_in_parent_stack_bt_1126 = bitcast i8* %_pot_address_in_parent_stack_1117 to i64*
  %239 = select i1 %_cond1_n_cond2_cond3_1124, i64* %_address_in_parent_stack_bt_1126, i64* %FPU_TAG_val
  %_new_load_1127 = load i64, i64* %239, align 8
  store i64 %_new_load_1127, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %63, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:240:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_e3d.22(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_ = alloca i8, align 1
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 1
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !81
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !81
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !81
  %3 = load i64, i64* %RAX, align 8, !mcsema_real_eip !81
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !81
  %4 = load i64, i64* %RBX, align 8, !mcsema_real_eip !81
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !81
  %5 = load i64, i64* %RCX, align 8, !mcsema_real_eip !81
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !81
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !81
  %6 = load i64, i64* %RSI, align 8, !mcsema_real_eip !81
  store i64 %6, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !81
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !81
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !81
  %7 = load i64, i64* %RBP, align 8, !mcsema_real_eip !81
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !81
  %8 = load i64, i64* %R8, align 8, !mcsema_real_eip !81
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !81
  %9 = load i64, i64* %R9, align 8, !mcsema_real_eip !81
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !81
  %10 = load i64, i64* %R10, align 8, !mcsema_real_eip !81
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !81
  %11 = load i64, i64* %R11, align 8, !mcsema_real_eip !81
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !81
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !81
  %12 = load i64, i64* %R13, align 8, !mcsema_real_eip !81
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !81
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !81
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !81
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !81
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !81
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !81
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !81
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !81
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !81
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !81
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !81
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !81
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !81
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !81
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !81
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !81
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !81
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !81
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !81
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !81
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !81
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !81
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !81
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !81
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !81
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !81
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !81
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !81
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !81
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !81
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !81
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !81
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !81
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !81
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !81
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !81
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !81
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !81
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !81
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !81
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !81
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !81
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !81
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !81
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !81
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !81
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !81
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !81
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !81
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !81
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !81
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !81
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !81
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !81
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !81
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !81
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !81
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !81
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !81
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !81
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !81
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !81
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !81
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !81
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !81
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !81
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !81
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !81
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !81
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !81
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !81
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !81
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !81
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !81
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !81
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !81
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !81
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !81
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !81
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !81
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !81
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !81
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !81
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !81
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !81
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !81
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !81
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !81
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !81
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !81
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !81
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !81
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !81
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !81
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !81
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !81
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !81
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !81
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !81
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !81
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !81
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !81
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !81
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !81
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !81
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !81
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !81
  %66 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2555 = load i8*, i8** %66, align 8
  %_new_gep_ = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2555, i64 1
  %67 = add i64 %7, 1, !mcsema_real_eip !81
  %68 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %68, i64* %_RBP_ptr_.sroa.0, align 8
  %69 = and i64 %3, 255
  %70 = and i64 %4, -256, !mcsema_real_eip !82
  %71 = or i64 %70, %69
  %_offset_above_rbp_709 = sub i64 %68, %1
  %_pot_address_in_parent_stack_710 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_709
  %_cond1_711 = icmp ugt i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2555, %_local_stack_start_ptr_
  %_cond2_1_712 = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_713 = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_714 = or i1 %_cond2_1_712, %_cond2_2_713
  %_cond4_715 = icmp ule i8* %_pot_address_in_parent_stack_710, %_parent_stack_end_ptr_
  %_cond1_n_cond2_716 = and i1 %_cond1_711, %_cond2_714
  %_cond1_n_cond2_cond3_717 = and i1 %_cond1_n_cond2_716, %_cond4_715
  %_address_in_parent_stack_718. = select i1 %_cond1_n_cond2_cond3_717, i8* %_pot_address_in_parent_stack_710, i8* %_new_gep_
  %_new_load_719 = load i8, i8* %_address_in_parent_stack_718., align 1
  %72 = zext i8 %_new_load_719 to i64, !mcsema_real_eip !83
  %73 = and i64 %3, -256, !mcsema_real_eip !83
  %74 = or i64 %72, %73
  %75 = icmp eq i8 %_new_load_719, 9
  br i1 %75, label %block_0xe50.preheader, label %block_0xe5a, !mcsema_real_eip !36

block_0xe50.preheader:                            ; preds = %block_0xe5a, %entry
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_225632596 = phi i8* [ %_new_gep_, %entry ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3725562598, %block_0xe5a ]
  %RBP_val.1 = phi i64 [ %67, %entry ], [ %RBP_val.3, %block_0xe5a ]
  br label %block_0xe50

block_0xe50:                                      ; preds = %block_0xe50, %block_0xe50.preheader
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22563 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_225632596, %block_0xe50.preheader ], [ %_new_gep_3, %block_0xe50 ]
  %RBP_val.2 = phi i64 [ %RBP_val.1, %block_0xe50.preheader ], [ %76, %block_0xe50 ]
  %_new_gep_3 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22563, i64 1
  %76 = add i64 %RBP_val.2, 1, !mcsema_real_eip !35
  %77 = ptrtoint i8* %_new_gep_3 to i64
  store volatile i64 %77, i64* %_RBP_ptr_.sroa.0, align 8
  %_offset_above_rbp_722 = sub i64 %77, %1
  %_pot_address_in_parent_stack_723 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_722
  %_cond1_724 = icmp ugt i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22563, %_local_stack_start_ptr_
  %_cond2_1_725 = icmp ugt i8* %_new_gep_3, %_parent_stack_end_ptr_
  %_cond2_2_726 = icmp ult i8* %_new_gep_3, %_parent_stack_start_ptr_
  %_cond2_727 = or i1 %_cond2_1_725, %_cond2_2_726
  %_cond4_728 = icmp ule i8* %_pot_address_in_parent_stack_723, %_parent_stack_end_ptr_
  %_cond1_n_cond2_729 = and i1 %_cond1_724, %_cond2_727
  %_cond1_n_cond2_cond3_730 = and i1 %_cond1_n_cond2_729, %_cond4_728
  %_address_in_parent_stack_731. = select i1 %_cond1_n_cond2_cond3_730, i8* %_pot_address_in_parent_stack_723, i8* %_new_gep_3
  %_new_load_732 = load i8, i8* %_address_in_parent_stack_731., align 1
  %78 = icmp eq i8 %_new_load_732, 9
  br i1 %78, label %block_0xe50, label %block_0xe5a.loopexit, !mcsema_real_eip !36

block_0xe5a.loopexit:                             ; preds = %block_0xe50
  %79 = zext i8 %_new_load_732 to i64, !mcsema_real_eip !83
  br label %block_0xe5a

block_0xe5a:                                      ; preds = %block_0xe5a.loopexit, %entry
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3725562598 = phi i8* [ %_new_gep_, %entry ], [ %_new_gep_3, %block_0xe5a.loopexit ]
  %RBP_val.3 = phi i64 [ %67, %entry ], [ %76, %block_0xe5a.loopexit ]
  %RAX_val.3 = phi i64 [ %74, %entry ], [ %79, %block_0xe5a.loopexit ]
  %80 = trunc i64 %RAX_val.3 to i8, !mcsema_real_eip !32
  %81 = add i8 %80, -32
  %82 = icmp eq i8 %81, 0, !mcsema_real_eip !32
  br i1 %82, label %block_0xe50.preheader, label %block_0xe5e, !mcsema_real_eip !33

block_0xe5e:                                      ; preds = %block_0xe5a
  %83 = xor i8 %81, %80, !mcsema_real_eip !32
  %84 = icmp ult i8 %80, 32, !mcsema_real_eip !37
  br i1 %84, label %block_0xe80, label %block_0xe89.preheader, !mcsema_real_eip !38

block_0xe89.preheader:                            ; preds = %block_0xe80, %block_0xe5e
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_372556 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3725562598, %block_0xe5e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3725562599, %block_0xe80 ]
  %R15_val.0.ph = phi i64 [ 0, %block_0xe5e ], [ %R15_val.1, %block_0xe80 ]
  %R12_val.0.ph = phi i64 [ 0, %block_0xe5e ], [ %R12_val.1, %block_0xe80 ]
  %RCX_val.1.ph = phi i64 [ %5, %block_0xe5e ], [ %95, %block_0xe80 ]
  %RAX_val.4.ph = phi i64 [ %RAX_val.3, %block_0xe5e ], [ %RAX_val.5, %block_0xe80 ]
  %85 = trunc i64 %3 to i8, !mcsema_real_eip !39
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_372556, i64 1
  br label %block_0xe89

block_0xe89:                                      ; preds = %block_0xe89.preheader, %block_0xe70
  %R15_val.0 = phi i64 [ %165, %block_0xe70 ], [ %R15_val.0.ph, %block_0xe89.preheader ]
  %R12_val.0 = phi i64 [ %167, %block_0xe70 ], [ %R12_val.0.ph, %block_0xe89.preheader ]
  %RAX_val.4 = phi i64 [ %164, %block_0xe70 ], [ %RAX_val.4.ph, %block_0xe89.preheader ]
  %86 = trunc i64 %RAX_val.4 to i8, !mcsema_real_eip !39
  %87 = sub i8 %86, %85, !mcsema_real_eip !39
  %88 = xor i64 %RAX_val.4, %3
  %89 = trunc i64 %88 to i8
  %90 = xor i8 %89, %87, !mcsema_real_eip !39
  %91 = and i8 %90, 16, !mcsema_real_eip !39
  %92 = icmp ne i8 %91, 0, !mcsema_real_eip !39
  %93 = icmp eq i8 %86, %85
  br i1 %93, label %block_0xe95.loopexit, label %block_0xe8d, !mcsema_real_eip !40

block_0xe80.loopexit:                             ; preds = %block_0xe70
  %94 = xor i8 %168, %_new_load_830, !mcsema_real_eip !37
  br label %block_0xe80

block_0xe80:                                      ; preds = %block_0xe80.loopexit, %block_0xe5e
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3725562599 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3725562598, %block_0xe5e ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_372556, %block_0xe80.loopexit ]
  %R15_val.1 = phi i64 [ 0, %block_0xe5e ], [ %165, %block_0xe80.loopexit ]
  %CF_val.0 = phi i1 [ true, %block_0xe5e ], [ %170, %block_0xe80.loopexit ]
  %AF_val.0.in.in = phi i8 [ %83, %block_0xe5e ], [ %94, %block_0xe80.loopexit ]
  %R12_val.1 = phi i64 [ 0, %block_0xe5e ], [ %167, %block_0xe80.loopexit ]
  %RAX_val.5 = phi i64 [ %RAX_val.3, %block_0xe5e ], [ %164, %block_0xe80.loopexit ]
  %AF_val.0.in = and i8 %AF_val.0.in.in, 16
  %AF_val.0 = icmp ne i8 %AF_val.0.in, 0
  %95 = and i64 %RAX_val.5, 255
  br i1 %CF_val.0, label %block_0xe95, label %block_0xe89.preheader, !mcsema_real_eip !41

block_0xe95.loopexit:                             ; preds = %block_0xe91, %block_0xe8d, %block_0xe89
  %AF_val.1.ph = phi i1 [ %92, %block_0xe89 ], [ %103, %block_0xe8d ], [ %124, %block_0xe91 ]
  br label %block_0xe95

block_0xe95:                                      ; preds = %block_0xe95.loopexit, %block_0xe80
  %R15_val.2 = phi i64 [ %R15_val.1, %block_0xe80 ], [ %R15_val.0, %block_0xe95.loopexit ]
  %AF_val.1 = phi i1 [ %AF_val.0, %block_0xe80 ], [ %AF_val.1.ph, %block_0xe95.loopexit ]
  %R12_val.2 = phi i64 [ %R12_val.1, %block_0xe80 ], [ %R12_val.0, %block_0xe95.loopexit ]
  %RCX_val.2 = phi i64 [ %95, %block_0xe80 ], [ %RCX_val.1.ph, %block_0xe95.loopexit ]
  %96 = shl i64 %R15_val.2, 32
  %sext2403 = add i64 %96, 4294967296
  %97 = ashr exact i64 %sext2403, 32
  %98 = tail call x86_64_sysvcc i64 @malloc(i64 %97), !mcsema_real_eip !42
  %99 = icmp eq i64 %98, 0, !mcsema_real_eip !43
  br i1 %99, label %block_0xfac, label %block_0xead, !mcsema_real_eip !44

block_0xe8d:                                      ; preds = %block_0xe89
  %100 = add i8 %86, -38
  %101 = xor i8 %100, %86, !mcsema_real_eip !45
  %102 = and i8 %101, 16, !mcsema_real_eip !45
  %103 = icmp ne i8 %102, 0, !mcsema_real_eip !45
  %104 = icmp eq i8 %100, 0, !mcsema_real_eip !45
  br i1 %104, label %block_0xe95.loopexit, label %block_0xe91, !mcsema_real_eip !46

block_0xfac:                                      ; preds = %block_0xe95
  %_offset_above_rbp_734 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_735 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_734
  %_cond1_736 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_737 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_738 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_739 = or i1 %_cond2_2_738, %_cond2_1_737
  %_cond4_740 = icmp ule i8* %_pot_address_in_parent_stack_735, %_parent_stack_end_ptr_
  %_cond1_n_cond2_741 = and i1 %_cond2_739, %_cond1_736
  %_cond1_n_cond2_cond3_742 = and i1 %_cond1_n_cond2_741, %_cond4_740
  %_address_in_parent_stack_bt_744 = bitcast i8* %_pot_address_in_parent_stack_735 to i64*
  %105 = select i1 %_cond1_n_cond2_cond3_742, i64* %_address_in_parent_stack_bt_744, i64* bitcast (%1* @data_0x24ea to i64*)
  %_new_load_745 = load i64, i64* %105, align 8
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64), i64* %RSI_val, align 8
  %106 = tail call x86_64_sysvcc i64 @fprintf(i64 ptrtoint (i64* @stderr to i64), i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64)), !mcsema_real_eip !47
  %107 = tail call x86_64_sysvcc i64 @exit(i64 4294967295), !mcsema_real_eip !48
  %108 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559 = load i8*, i8** %108, align 8
  %_new_gep_5 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -8
  %_allin_new_bt_6 = bitcast i8* %_new_gep_5 to i64*
  store i64 %107, i64* %_allin_new_bt_6, align 8, !mcsema_real_eip !49
  %109 = ptrtoint i8* %_new_gep_5 to i64
  store volatile i64 %109, i64* %_RSP_ptr_.sroa.0, align 8
  %110 = tail call x86_64_sysvcc i64 @malloc(i64 4294967295), !mcsema_real_eip !50
  %111 = icmp eq i64 %110, 0, !mcsema_real_eip !51
  br i1 %111, label %block_0xfdd, label %block_0xfdb, !mcsema_real_eip !52

block_0xead:                                      ; preds = %block_0xe95
  %sext = shl i64 %R12_val.2, 32
  %112 = ashr exact i64 %sext, 32
  %113 = add i64 %R15_val.2, %RBP_val.3
  %114 = add i64 %113, %112
  store i64 %114, i64* %RSI_val, align 8
  %115 = tail call x86_64_sysvcc i64 @strncpy(i64 %98, i64 %114, i64 %R15_val.2), !mcsema_real_eip !53
  %116 = add i64 %98, %R15_val.2, !mcsema_real_eip !54
  %117 = inttoptr i64 %116 to i8*
  store i8 0, i8* %117, align 1, !mcsema_real_eip !54
  %118 = inttoptr i64 %12 to i64*, !mcsema_real_eip !55
  %_ptr_bt_748 = inttoptr i64 %12 to i8*
  %_offset_above_rbp_749 = sub i64 %12, %1
  %_pot_address_in_parent_stack_750 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_749
  %_cond1_751 = icmp ugt i8* %_ptr_bt_748, %_local_stack_end_ptr_
  %_cond2_1_752 = icmp ugt i8* %_ptr_bt_748, %_parent_stack_end_ptr_
  %_cond2_2_753 = icmp ult i8* %_ptr_bt_748, %_parent_stack_start_ptr_
  %_cond2_754 = or i1 %_cond2_1_752, %_cond2_2_753
  %_cond4_755 = icmp ule i8* %_pot_address_in_parent_stack_750, %_parent_stack_end_ptr_
  %_cond1_n_cond2_756 = and i1 %_cond1_751, %_cond2_754
  %_cond1_n_cond2_cond3_757 = and i1 %_cond4_755, %_cond1_n_cond2_756
  %_address_in_parent_stack_bt_759 = bitcast i8* %_pot_address_in_parent_stack_750 to i64*
  %119 = select i1 %_cond1_n_cond2_cond3_757, i64* %_address_in_parent_stack_bt_759, i64* %118
  %_new_load_760 = load i64, i64* %119, align 8
  store i64 %_new_load_760, i64* %RSI_val, align 8
  %120 = icmp eq i64 %_new_load_760, 0, !mcsema_real_eip !56
  br i1 %120, label %block_0xee3, label %block_0xecf, !mcsema_real_eip !57

block_0xe91:                                      ; preds = %block_0xe8d
  %121 = add i8 %86, -124
  %122 = xor i8 %121, %86, !mcsema_real_eip !58
  %123 = and i8 %122, 16
  %124 = icmp eq i8 %123, 0
  %125 = icmp eq i8 %121, 0, !mcsema_real_eip !58
  br i1 %125, label %block_0xe95.loopexit, label %block_0xe70, !mcsema_real_eip !59

block_0xee3:                                      ; preds = %block_0xecf, %block_0xead
  %RAX_val.6 = phi i64 [ %115, %block_0xead ], [ %139, %block_0xecf ]
  %_offset_above_rbp_762 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_763 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_762
  %_cond1_764 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_765 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_766 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_767 = or i1 %_cond2_2_766, %_cond2_1_765
  %_cond4_768 = icmp ule i8* %_pot_address_in_parent_stack_763, %_parent_stack_end_ptr_
  %_cond1_n_cond2_769 = and i1 %_cond2_767, %_cond1_764
  %_cond1_n_cond2_cond3_770 = and i1 %_cond1_n_cond2_769, %_cond4_768
  %126 = select i1 %_cond1_n_cond2_cond3_770, i8* %_pot_address_in_parent_stack_763, i8* getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_new_load_772 = load i8, i8* %126, align 1
  %127 = add i8 %_new_load_772, -1
  %128 = xor i8 %127, %_new_load_772, !mcsema_real_eip !60
  %129 = and i8 %128, 16, !mcsema_real_eip !60
  %130 = icmp ne i8 %129, 0, !mcsema_real_eip !60
  %131 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !60
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  %134 = icmp eq i8 %127, 0, !mcsema_real_eip !60
  %135 = icmp slt i8 %127, 0
  %136 = icmp eq i8 %_new_load_772, 0
  %137 = and i8 %128, %_new_load_772, !mcsema_real_eip !60
  %138 = icmp slt i8 %137, 0
  br i1 %134, label %block_0xeec, label %block_0xefe, !mcsema_real_eip !61

block_0xecf:                                      ; preds = %block_0xead
  %139 = tail call x86_64_sysvcc i64 @strcmp(i64 %98, i64 %_new_load_760), !mcsema_real_eip !62
  %140 = trunc i64 %139 to i32, !mcsema_real_eip !63
  %141 = icmp eq i32 %140, 0, !mcsema_real_eip !63
  br i1 %141, label %block_0xedb, label %block_0xee3, !mcsema_real_eip !64

block_0xfdd:                                      ; preds = %block_0xfac
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64), i64* %RSI_val, align 8
  %142 = tail call x86_64_sysvcc i64 @fprintf(i64 ptrtoint (i64* @stderr to i64), i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 32) to i64)), !mcsema_real_eip !65
  %143 = tail call x86_64_sysvcc i64 @exit(i64 4294967295), !mcsema_real_eip !66
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_92419 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_11 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -16
  %_allin_new_bt_12 = bitcast i8* %_new_gep_11 to i64*
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_92419, i64* %_allin_new_bt_12, align 8
  %_new_gep_13 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -24
  %_allin_new_bt_14 = bitcast i8* %_new_gep_13 to i64*
  store i64 %R15_val.2, i64* %_allin_new_bt_14, align 8, !mcsema_real_eip !67
  %_new_gep_15 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -32
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  store i64 0, i64* %_allin_new_bt_16, align 8, !mcsema_real_eip !68
  %_new_gep_17 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -40
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 %12, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !69
  %_new_gep_19 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -48
  %_allin_new_bt_20 = bitcast i8* %_new_gep_19 to i64*
  store i64 %R12_val.2, i64* %_allin_new_bt_20, align 8, !mcsema_real_eip !70
  %_new_gep_21 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -56
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  store i64 %71, i64* %_allin_new_bt_22, align 8, !mcsema_real_eip !3
  %_new_gep_23 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -1568
  %144 = ptrtoint i8* %_new_gep_23 to i64
  store volatile i64 %144, i64* %_RSP_ptr_.sroa.0, align 8
  %RSI_val.0.RSI_val.0.316 = load i64, i64* %RSI_val, align 8
  store volatile i64 %RSI_val.0.RSI_val.0.316, i64* %_RBP_ptr_.sroa.0, align 8
  %145 = tail call x86_64_sysvcc i64 @getenv(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 107) to i64)), !mcsema_real_eip !4
  %_new_gep_25 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -480
  %146 = ptrtoint i8* %_new_gep_25 to i64
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x2082 to i32), i32 592) to i64), i64* %RSI_val, align 8
  %147 = tail call x86_64_sysvcc i64 @memcpy(i64 %146, i64 zext (i32 add (i32 ptrtoint (%0* @data_0x2082 to i32), i32 592) to i64), i64 416), !mcsema_real_eip !5
  %148 = inttoptr i64 %RSI_val.0.RSI_val.0.316 to i8*
  %_offset_above_rbp_776 = sub i64 %RSI_val.0.RSI_val.0.316, %1
  %_pot_address_in_parent_stack_777 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_776
  %_cond1_778 = icmp ugt i8* %148, %_local_stack_end_ptr_
  %_cond2_1_779 = icmp ugt i8* %148, %_parent_stack_end_ptr_
  %_cond2_2_780 = icmp ult i8* %148, %_parent_stack_start_ptr_
  %_cond2_781 = or i1 %_cond2_1_779, %_cond2_2_780
  %_cond4_782 = icmp ule i8* %_pot_address_in_parent_stack_777, %_parent_stack_end_ptr_
  %_cond1_n_cond2_783 = and i1 %_cond1_778, %_cond2_781
  %_cond1_n_cond2_cond3_784 = and i1 %_cond4_782, %_cond1_n_cond2_783
  %.v2420 = select i1 %_cond1_n_cond2_cond3_784, i8* %_pot_address_in_parent_stack_777, i8* %148
  %149 = bitcast i8* %.v2420 to i64*
  %_new_load_787 = load i64, i64* %149, align 8
  store i64 %_new_load_787, i64* bitcast (%1* @data_0x24ea to i64*), align 64, !mcsema_real_eip !7
  store volatile i64 %RSI_val.0.RSI_val.0.316, i64* %RSI_val, align 8
  %150 = tail call x86_64_sysvcc i64 @getopt_long(i64 4294967295, i64 %RSI_val.0.RSI_val.0.316, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %146, i64 0), !mcsema_real_eip !8
  %151 = add i64 %150, -86, !mcsema_real_eip !9
  %152 = trunc i64 %151 to i32
  %153 = and i64 %151, 4294967295
  %154 = icmp ult i32 %152, 33
  br i1 %154, label %block_0x108e, label %block_0x10a0.lr.ph, !mcsema_real_eip !10

block_0x10a0.lr.ph:                               ; preds = %block_0xfdd
  %_address_in_parent_stack_bt_1087 = bitcast i8* %_pot_address_in_parent_stack_735 to i32*
  %155 = select i1 %_cond1_n_cond2_cond3_742, i32* %_address_in_parent_stack_bt_1087, i32* bitcast (%1* @data_0x24ea to i32*)
  br label %block_0x10a0

block_0xfdb:                                      ; preds = %block_0xfac
  %156 = trunc i64 %110 to i8, !mcsema_real_eip !51
  %157 = tail call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !51
  %158 = and i8 %157, 1
  %159 = icmp eq i8 %158, 0
  %160 = icmp slt i64 %110, 0
  %_offset_above_rbp_791 = sub i64 %109, %1
  %_pot_address_in_parent_stack_792 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_791
  %_cond1_793 = icmp ugt i8* %_new_gep_5, %_local_stack_end_ptr_
  %_cond2_1_794 = icmp ugt i8* %_new_gep_5, %_parent_stack_end_ptr_
  %_cond2_2_795 = icmp ult i8* %_new_gep_5, %_parent_stack_start_ptr_
  %_cond2_796 = or i1 %_cond2_1_794, %_cond2_2_795
  %_cond4_797 = icmp ule i8* %_pot_address_in_parent_stack_792, %_parent_stack_end_ptr_
  %_cond1_n_cond2_798 = and i1 %_cond1_793, %_cond2_796
  %_cond1_n_cond2_cond3_799 = and i1 %_cond4_797, %_cond1_n_cond2_798
  %.v2416 = select i1 %_cond1_n_cond2_cond3_799, i8* %_pot_address_in_parent_stack_792, i8* %_new_gep_5
  %161 = bitcast i8* %.v2416 to i64*
  %_new_load_802 = load i64, i64* %161, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 8
  %162 = ptrtoint i8* %_new_gep_32 to i64
  store volatile i64 %162, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %110, i64* %RAX, align 8, !mcsema_real_eip !71
  store i64 %71, i64* %RBX, align 8, !mcsema_real_eip !71
  store i64 %_new_load_802, i64* %RCX, align 8, !mcsema_real_eip !71
  store i64 %_new_load_745, i64* %RDX, align 8, !mcsema_real_eip !71
  %RSI_val.0.RSI_val.0.315 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.315, i64* %RSI, align 8, !mcsema_real_eip !71
  store i64 4294967295, i64* %RDI, align 8, !mcsema_real_eip !71
  store volatile i64 %162, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_352418 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_352418, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !71
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !71
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !71
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !71
  store i64 %R12_val.2, i64* %R12, align 8, !mcsema_real_eip !71
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !71
  store i64 0, i64* %R14, align 8, !mcsema_real_eip !71
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !71
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !71
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !71
  store i1 %159, i1* %PF, align 1, !mcsema_real_eip !71
  store i1 %AF_val.1, i1* %AF, align 1, !mcsema_real_eip !71
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !71
  store i1 %160, i1* %SF, align 1, !mcsema_real_eip !71
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !71
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !71
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !71
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !71
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !71
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !71
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !71
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !71
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !71
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !71
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !71
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !71
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !71
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !71
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !71
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !71
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !71
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !71
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !71
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !71
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !71
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !71
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !71
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !71
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !71
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !71
  %_ptr_to_int_803 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_805 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_806 = sub i64 %_ptr_to_int_803, %1
  %_pot_address_in_parent_stack_807 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_806
  %_cond1_808 = icmp ugt i8* %_ptr_bt_805, %_local_stack_end_ptr_
  %_cond2_1_809 = icmp ugt i8* %_ptr_bt_805, %_parent_stack_end_ptr_
  %_cond2_2_810 = icmp ult i8* %_ptr_bt_805, %_parent_stack_start_ptr_
  %_cond2_811 = or i1 %_cond2_1_809, %_cond2_2_810
  %_cond4_812 = icmp ule i8* %_pot_address_in_parent_stack_807, %_parent_stack_end_ptr_
  %_cond1_n_cond2_813 = and i1 %_cond1_808, %_cond2_811
  %_cond1_n_cond2_cond3_814 = and i1 %_cond1_n_cond2_813, %_cond4_812
  %_address_in_parent_stack_bt_816 = bitcast i8* %_pot_address_in_parent_stack_807 to i64*
  %163 = select i1 %_cond1_n_cond2_cond3_814, i64* %_address_in_parent_stack_bt_816, i64* %FPU_TAG_val
  %_new_load_817 = load i64, i64* %163, align 8
  store i64 %_new_load_817, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !71
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !71
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !71
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !71
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !71
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !71
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !71
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !71
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !71
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !71
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !71
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !71
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !71
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !71
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !71
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !71
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !71
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !71
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !71
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !71
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !71
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !71
  ret void, !mcsema_real_eip !71

block_0xe70:                                      ; preds = %block_0xe91
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_38, i64 %R15_val.0
  %_ptr_to_int_818 = ptrtoint i8* %_new_gep_39 to i64
  %_offset_above_rbp_820 = sub i64 %_ptr_to_int_818, %1
  %_pot_address_in_parent_stack_821 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_820
  %_cond1_822 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_823 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_824 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_825 = or i1 %_cond2_1_823, %_cond2_2_824
  %_cond4_826 = icmp ule i8* %_pot_address_in_parent_stack_821, %_parent_stack_end_ptr_
  %_cond1_n_cond2_827 = and i1 %_cond1_822, %_cond2_825
  %_cond1_n_cond2_cond3_828 = and i1 %_cond1_n_cond2_827, %_cond4_826
  %_address_in_parent_stack_829. = select i1 %_cond1_n_cond2_cond3_828, i8* %_pot_address_in_parent_stack_821, i8* %_new_gep_39
  %_new_load_830 = load i8, i8* %_address_in_parent_stack_829., align 1
  %164 = zext i8 %_new_load_830 to i64
  %165 = add i64 %R15_val.0, 1, !mcsema_real_eip !72
  %166 = add nsw i64 %R12_val.0, 4294967295
  %167 = and i64 %166, 4294967295
  %168 = add i8 %_new_load_830, -32
  %169 = icmp eq i8 %168, 0, !mcsema_real_eip !37
  %170 = icmp ult i8 %_new_load_830, 32, !mcsema_real_eip !37
  %.demorgan3276 = or i1 %170, %169
  br i1 %.demorgan3276, label %block_0xe80.loopexit, label %block_0xe89, !mcsema_real_eip !38

block_0xedb:                                      ; preds = %block_0xecf
  store i64 0, i64* %118, align 8, !mcsema_real_eip !73
  %_offset_above_rbp_832 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_833 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_832
  %_cond1_834 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_835 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_836 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_837 = or i1 %_cond2_2_836, %_cond2_1_835
  %_cond4_838 = icmp ule i8* %_pot_address_in_parent_stack_833, %_parent_stack_end_ptr_
  %_cond1_n_cond2_839 = and i1 %_cond2_837, %_cond1_834
  %_cond1_n_cond2_cond3_840 = and i1 %_cond1_n_cond2_839, %_cond4_838
  %171 = select i1 %_cond1_n_cond2_cond3_840, i8* %_pot_address_in_parent_stack_833, i8* getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_new_load_842 = load i8, i8* %171, align 1
  %172 = add i8 %_new_load_842, -1
  %173 = xor i8 %172, %_new_load_842, !mcsema_real_eip !60
  %174 = and i8 %173, 16, !mcsema_real_eip !60
  %175 = icmp ne i8 %174, 0, !mcsema_real_eip !60
  %176 = tail call i8 @llvm.ctpop.i8(i8 %172), !mcsema_real_eip !60
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  %179 = icmp eq i8 %172, 0, !mcsema_real_eip !60
  %180 = icmp slt i8 %172, 0
  %181 = icmp eq i8 %_new_load_842, 0
  %182 = and i8 %173, %_new_load_842, !mcsema_real_eip !60
  %183 = icmp slt i8 %182, 0
  br i1 %179, label %block_0xeec, label %block_0xefe, !mcsema_real_eip !61

block_0xefe:                                      ; preds = %block_0xeec, %block_0xedb, %block_0xee3
  %OF_val.0 = phi i1 [ false, %block_0xeec ], [ %138, %block_0xee3 ], [ %183, %block_0xedb ]
  %SF_val.0 = phi i1 [ %190, %block_0xeec ], [ %135, %block_0xee3 ], [ %180, %block_0xedb ]
  %CF_val.1 = phi i1 [ false, %block_0xeec ], [ %136, %block_0xee3 ], [ %181, %block_0xedb ]
  %AF_val.2 = phi i1 [ %AF_val.3, %block_0xeec ], [ %130, %block_0xee3 ], [ %175, %block_0xedb ]
  %PF_val.0 = phi i1 [ %194, %block_0xeec ], [ %133, %block_0xee3 ], [ %178, %block_0xedb ]
  %RAX_val.7 = phi i64 [ %188, %block_0xeec ], [ %RAX_val.6, %block_0xee3 ], [ %139, %block_0xedb ]
  store i64 %98, i64* %RSI_val, align 8
  %184 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_412557 = load i8*, i8** %184, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_412557, i64 16
  %_ptr_to_int_843 = ptrtoint i8* %_new_gep_42 to i64
  %_offset_above_rbp_846 = sub i64 %_ptr_to_int_843, %1
  %_pot_address_in_parent_stack_847 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_846
  %_cond1_848 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_849 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_850 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_851 = or i1 %_cond2_1_849, %_cond2_2_850
  %_cond4_852 = icmp ule i8* %_pot_address_in_parent_stack_847, %_parent_stack_end_ptr_
  %_cond1_n_cond2_853 = and i1 %_cond1_848, %_cond2_851
  %_cond1_n_cond2_cond3_854 = and i1 %_cond1_n_cond2_853, %_cond4_852
  %.v = select i1 %_cond1_n_cond2_cond3_854, i8* %_pot_address_in_parent_stack_847, i8* %_new_gep_42
  %185 = bitcast i8* %.v to i64*
  %_new_load_857 = load i64, i64* %185, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_412557, i64 -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !74
  %186 = ptrtoint i8* %_new_gep_44 to i64
  store volatile i64 %186, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %RAX_val.7, i64* %RAX, align 8, !mcsema_real_eip !74
  store i64 %71, i64* %RBX, align 8, !mcsema_real_eip !74
  store i64 %RCX_val.2, i64* %RCX, align 8, !mcsema_real_eip !74
  store i64 %_new_load_857, i64* %RDX, align 8, !mcsema_real_eip !74
  %RSI_val.0.RSI_val.0.314 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.314, i64* %RSI, align 8, !mcsema_real_eip !74
  store i64 1, i64* %RDI, align 8, !mcsema_real_eip !74
  store volatile i64 %186, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_482405 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_482405, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !74
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !74
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !74
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !74
  store i64 %R12_val.2, i64* %R12, align 8, !mcsema_real_eip !74
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !74
  store i64 %98, i64* %R14, align 8, !mcsema_real_eip !74
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !74
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !74
  store i1 %CF_val.1, i1* %CF, align 1, !mcsema_real_eip !74
  store i1 %PF_val.0, i1* %PF, align 1, !mcsema_real_eip !74
  store i1 %AF_val.2, i1* %AF, align 1, !mcsema_real_eip !74
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !74
  store i1 %SF_val.0, i1* %SF, align 1, !mcsema_real_eip !74
  store i1 %OF_val.0, i1* %OF, align 1, !mcsema_real_eip !74
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !74
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !74
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !74
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !74
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !74
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !74
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !74
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !74
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !74
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !74
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !74
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !74
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !74
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !74
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !74
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !74
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !74
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !74
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !74
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !74
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !74
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !74
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !74
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !74
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !74
  %_ptr_to_int_858 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_860 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_861 = sub i64 %_ptr_to_int_858, %1
  %_pot_address_in_parent_stack_862 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_861
  %_cond1_863 = icmp ugt i8* %_ptr_bt_860, %_local_stack_end_ptr_
  %_cond2_1_864 = icmp ugt i8* %_ptr_bt_860, %_parent_stack_end_ptr_
  %_cond2_2_865 = icmp ult i8* %_ptr_bt_860, %_parent_stack_start_ptr_
  %_cond2_866 = or i1 %_cond2_1_864, %_cond2_2_865
  %_cond4_867 = icmp ule i8* %_pot_address_in_parent_stack_862, %_parent_stack_end_ptr_
  %_cond1_n_cond2_868 = and i1 %_cond1_863, %_cond2_866
  %_cond1_n_cond2_cond3_869 = and i1 %_cond1_n_cond2_868, %_cond4_867
  %_address_in_parent_stack_bt_871 = bitcast i8* %_pot_address_in_parent_stack_862 to i64*
  %187 = select i1 %_cond1_n_cond2_cond3_869, i64* %_address_in_parent_stack_bt_871, i64* %FPU_TAG_val
  %_new_load_872 = load i64, i64* %187, align 8
  store i64 %_new_load_872, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !74
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !74
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !74
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !74
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !74
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !74
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !74
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !74
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !74
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !74
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !74
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !74
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !74
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !74
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !74
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !74
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !74
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !74
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !74
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !74
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !74
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !74
  call void @llvm.trap()
  unreachable

block_0xeec:                                      ; preds = %block_0xedb, %block_0xee3
  %AF_val.3 = phi i1 [ %130, %block_0xee3 ], [ %175, %block_0xedb ]
  store i64 47, i64* %RSI_val, align 8
  %188 = tail call x86_64_sysvcc i64 @strchr(i64 %98, i64 47), !mcsema_real_eip !75
  %189 = icmp eq i64 %188, 0, !mcsema_real_eip !76
  %190 = icmp slt i64 %188, 0
  %191 = trunc i64 %188 to i8, !mcsema_real_eip !76
  %192 = tail call i8 @llvm.ctpop.i8(i8 %191), !mcsema_real_eip !76
  %193 = and i8 %192, 1
  %194 = icmp eq i8 %193, 0
  br i1 %189, label %block_0xf6f, label %block_0xefe, !mcsema_real_eip !77

block_0xf6f:                                      ; preds = %block_0xeec
  store i64 %98, i64* %RSI_val, align 8
  %195 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_532558 = load i8*, i8** %195, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_532558, i64 4
  %_ptr_to_int_888 = ptrtoint i8* %_new_gep_54 to i64
  %_offset_above_rbp_891 = sub i64 %_ptr_to_int_888, %1
  %_pot_address_in_parent_stack_892 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_891
  %_cond1_893 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_894 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_895 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_896 = or i1 %_cond2_1_894, %_cond2_2_895
  %_cond4_897 = icmp ule i8* %_pot_address_in_parent_stack_892, %_parent_stack_end_ptr_
  %_cond1_n_cond2_898 = and i1 %_cond1_893, %_cond2_896
  %_cond1_n_cond2_cond3_899 = and i1 %_cond1_n_cond2_898, %_cond4_897
  %.v2411 = select i1 %_cond1_n_cond2_cond3_899, i8* %_pot_address_in_parent_stack_892, i8* %_new_gep_54
  %196 = bitcast i8* %.v2411 to i32*
  %_new_load_902 = load i32, i32* %196, align 4
  %197 = zext i32 %_new_load_902 to i64, !mcsema_real_eip !78
  %_new_gep_57 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_532558, i64 -8
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_58, align 8, !mcsema_real_eip !79
  %198 = ptrtoint i8* %_new_gep_57 to i64
  store volatile i64 %198, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !79
  store i64 %71, i64* %RBX, align 8, !mcsema_real_eip !79
  store i64 %197, i64* %RCX, align 8, !mcsema_real_eip !79
  store i64 %R15_val.2, i64* %RDX, align 8, !mcsema_real_eip !79
  %RSI_val.0.RSI_val.0.313 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.313, i64* %RSI, align 8, !mcsema_real_eip !79
  store i64 1, i64* %RDI, align 8, !mcsema_real_eip !79
  store volatile i64 %198, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_612413 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_612413, i64* %RBP, align 8
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !79
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !79
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !79
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !79
  store i64 %R12_val.2, i64* %R12, align 8, !mcsema_real_eip !79
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !79
  store i64 %98, i64* %R14, align 8, !mcsema_real_eip !79
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !79
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !79
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !79
  store i1 %194, i1* %PF, align 1, !mcsema_real_eip !79
  store i1 %AF_val.3, i1* %AF, align 1, !mcsema_real_eip !79
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !79
  store i1 %190, i1* %SF, align 1, !mcsema_real_eip !79
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !79
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !79
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !79
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !79
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !79
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !79
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !79
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !79
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !79
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !79
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !79
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !79
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !79
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !79
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !79
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !79
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !79
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !79
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !79
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !79
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !79
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !79
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !79
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !79
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !79
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !79
  %_ptr_to_int_903 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_905 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_906 = sub i64 %_ptr_to_int_903, %1
  %_pot_address_in_parent_stack_907 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_906
  %_cond1_908 = icmp ugt i8* %_ptr_bt_905, %_local_stack_end_ptr_
  %_cond2_1_909 = icmp ugt i8* %_ptr_bt_905, %_parent_stack_end_ptr_
  %_cond2_2_910 = icmp ult i8* %_ptr_bt_905, %_parent_stack_start_ptr_
  %_cond2_911 = or i1 %_cond2_1_909, %_cond2_2_910
  %_cond4_912 = icmp ule i8* %_pot_address_in_parent_stack_907, %_parent_stack_end_ptr_
  %_cond1_n_cond2_913 = and i1 %_cond1_908, %_cond2_911
  %_cond1_n_cond2_cond3_914 = and i1 %_cond1_n_cond2_913, %_cond4_912
  %_address_in_parent_stack_bt_916 = bitcast i8* %_pot_address_in_parent_stack_907 to i64*
  %199 = select i1 %_cond1_n_cond2_cond3_914, i64* %_address_in_parent_stack_bt_916, i64* %FPU_TAG_val
  %_new_load_917 = load i64, i64* %199, align 8
  store i64 %_new_load_917, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !79
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !79
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !79
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !79
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !79
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !79
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !79
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !79
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !79
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !79
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !79
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !79
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !79
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !79
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !79
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !79
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !79
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !79
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !79
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !79
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !79
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !79
  call void @llvm.trap()
  unreachable

block_0x10a0:                                     ; preds = %block_0x10a0.lr.ph, %block_0x1070.backedge
  %200 = phi i64 [ %153, %block_0x10a0.lr.ph ], [ %246, %block_0x1070.backedge ]
  %201 = phi i64 [ %150, %block_0x10a0.lr.ph ], [ %243, %block_0x1070.backedge ]
  %202 = trunc i64 %201 to i32, !mcsema_real_eip !11
  switch i32 %202, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %block_0xfdd
  %.lcssa2566 = phi i64 [ %153, %block_0xfdd ], [ %246, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2566, 0
  br i1 %cond, label %block_0x1165, label %241

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %203 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %204 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %205 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %206 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %uadd3201 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %144, i64 1512)
  %207 = extractvalue { i64, i1 } %uadd3201, 0
  %208 = xor i64 %207, %144, !mcsema_real_eip !21
  %209 = and i64 %208, 16, !mcsema_real_eip !21
  %210 = icmp ne i64 %209, 0, !mcsema_real_eip !21
  %211 = icmp slt i64 %207, 0
  %212 = icmp eq i64 %207, 0, !mcsema_real_eip !21
  %213 = xor i64 %144, -9223372036854775808, !mcsema_real_eip !21
  %214 = and i64 %208, %213, !mcsema_real_eip !21
  %215 = icmp slt i64 %214, 0
  %216 = trunc i64 %207 to i8, !mcsema_real_eip !21
  %217 = tail call i8 @llvm.ctpop.i8(i8 %216), !mcsema_real_eip !21
  %218 = and i8 %217, 1
  %219 = icmp eq i8 %218, 0
  %220 = extractvalue { i64, i1 } %uadd3201, 1
  %_new_int2ptr_74 = inttoptr i64 %207 to i8*
  store volatile i64 %207, i64* %_RSP_ptr_.sroa.0, align 8
  %221 = inttoptr i64 %207 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_974 = sub i64 %207, %1
  %_pot_address_in_parent_stack_975 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_974
  %_cond1_976 = icmp ugt i8* %_new_int2ptr_74, %_local_stack_end_ptr_
  %_cond2_1_977 = icmp ugt i8* %_new_int2ptr_74, %_parent_stack_end_ptr_
  %_cond2_2_978 = icmp ult i8* %_new_int2ptr_74, %_parent_stack_start_ptr_
  %_cond2_979 = or i1 %_cond2_1_977, %_cond2_2_978
  %_cond4_980 = icmp ule i8* %_pot_address_in_parent_stack_975, %_parent_stack_end_ptr_
  %_cond1_n_cond2_981 = and i1 %_cond1_976, %_cond2_979
  %_cond1_n_cond2_cond3_982 = and i1 %_cond4_980, %_cond1_n_cond2_981
  %_address_in_parent_stack_bt_984 = bitcast i8* %_pot_address_in_parent_stack_975 to i64*
  %222 = select i1 %_cond1_n_cond2_cond3_982, i64* %_address_in_parent_stack_bt_984, i64* %221
  %_new_load_985 = load i64, i64* %222, align 8
  %223 = add i64 %207, 8, !mcsema_real_eip !22
  %_new_int2ptr_75 = inttoptr i64 %223 to i8*
  store volatile i64 %223, i64* %_RSP_ptr_.sroa.0, align 8
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_989 = sub i64 %223, %1
  %_pot_address_in_parent_stack_990 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_989
  %_cond1_991 = icmp ugt i8* %_new_int2ptr_75, %_local_stack_end_ptr_
  %_cond2_1_992 = icmp ugt i8* %_new_int2ptr_75, %_parent_stack_end_ptr_
  %_cond2_2_993 = icmp ult i8* %_new_int2ptr_75, %_parent_stack_start_ptr_
  %_cond2_994 = or i1 %_cond2_1_992, %_cond2_2_993
  %_cond4_995 = icmp ule i8* %_pot_address_in_parent_stack_990, %_parent_stack_end_ptr_
  %_cond1_n_cond2_996 = and i1 %_cond1_991, %_cond2_994
  %_cond1_n_cond2_cond3_997 = and i1 %_cond4_995, %_cond1_n_cond2_996
  %_address_in_parent_stack_bt_999 = bitcast i8* %_pot_address_in_parent_stack_990 to i64*
  %225 = select i1 %_cond1_n_cond2_cond3_997, i64* %_address_in_parent_stack_bt_999, i64* %224
  %_new_load_1000 = load i64, i64* %225, align 8
  %226 = add i64 %207, 16, !mcsema_real_eip !23
  %_new_int2ptr_76 = inttoptr i64 %226 to i8*
  store volatile i64 %226, i64* %_RSP_ptr_.sroa.0, align 8
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_1004 = sub i64 %226, %1
  %_pot_address_in_parent_stack_1005 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1004
  %_cond1_1006 = icmp ugt i8* %_new_int2ptr_76, %_local_stack_end_ptr_
  %_cond2_1_1007 = icmp ugt i8* %_new_int2ptr_76, %_parent_stack_end_ptr_
  %_cond2_2_1008 = icmp ult i8* %_new_int2ptr_76, %_parent_stack_start_ptr_
  %_cond2_1009 = or i1 %_cond2_1_1007, %_cond2_2_1008
  %_cond4_1010 = icmp ule i8* %_pot_address_in_parent_stack_1005, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1011 = and i1 %_cond1_1006, %_cond2_1009
  %_cond1_n_cond2_cond3_1012 = and i1 %_cond4_1010, %_cond1_n_cond2_1011
  %_address_in_parent_stack_bt_1014 = bitcast i8* %_pot_address_in_parent_stack_1005 to i64*
  %228 = select i1 %_cond1_n_cond2_cond3_1012, i64* %_address_in_parent_stack_bt_1014, i64* %227
  %_new_load_1015 = load i64, i64* %228, align 8
  %229 = add i64 %207, 24, !mcsema_real_eip !24
  %_new_int2ptr_77 = inttoptr i64 %229 to i8*
  store volatile i64 %229, i64* %_RSP_ptr_.sroa.0, align 8
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_1019 = sub i64 %229, %1
  %_pot_address_in_parent_stack_1020 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1019
  %_cond1_1021 = icmp ugt i8* %_new_int2ptr_77, %_local_stack_end_ptr_
  %_cond2_1_1022 = icmp ugt i8* %_new_int2ptr_77, %_parent_stack_end_ptr_
  %_cond2_2_1023 = icmp ult i8* %_new_int2ptr_77, %_parent_stack_start_ptr_
  %_cond2_1024 = or i1 %_cond2_1_1022, %_cond2_2_1023
  %_cond4_1025 = icmp ule i8* %_pot_address_in_parent_stack_1020, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1026 = and i1 %_cond1_1021, %_cond2_1024
  %_cond1_n_cond2_cond3_1027 = and i1 %_cond4_1025, %_cond1_n_cond2_1026
  %_address_in_parent_stack_bt_1029 = bitcast i8* %_pot_address_in_parent_stack_1020 to i64*
  %231 = select i1 %_cond1_n_cond2_cond3_1027, i64* %_address_in_parent_stack_bt_1029, i64* %230
  %_new_load_1030 = load i64, i64* %231, align 8
  %232 = add i64 %207, 32, !mcsema_real_eip !25
  %_new_int2ptr_78 = inttoptr i64 %232 to i8*
  store volatile i64 %232, i64* %_RSP_ptr_.sroa.0, align 8
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_1034 = sub i64 %232, %1
  %_pot_address_in_parent_stack_1035 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1034
  %_cond1_1036 = icmp ugt i8* %_new_int2ptr_78, %_local_stack_end_ptr_
  %_cond2_1_1037 = icmp ugt i8* %_new_int2ptr_78, %_parent_stack_end_ptr_
  %_cond2_2_1038 = icmp ult i8* %_new_int2ptr_78, %_parent_stack_start_ptr_
  %_cond2_1039 = or i1 %_cond2_1_1037, %_cond2_2_1038
  %_cond4_1040 = icmp ule i8* %_pot_address_in_parent_stack_1035, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1041 = and i1 %_cond1_1036, %_cond2_1039
  %_cond1_n_cond2_cond3_1042 = and i1 %_cond4_1040, %_cond1_n_cond2_1041
  %_address_in_parent_stack_bt_1044 = bitcast i8* %_pot_address_in_parent_stack_1035 to i64*
  %234 = select i1 %_cond1_n_cond2_cond3_1042, i64* %_address_in_parent_stack_bt_1044, i64* %233
  %_new_load_1045 = load i64, i64* %234, align 8
  %235 = add i64 %207, 40, !mcsema_real_eip !26
  %_new_int2ptr_79 = inttoptr i64 %235 to i8*
  store volatile i64 %235, i64* %_RSP_ptr_.sroa.0, align 8
  %236 = inttoptr i64 %235 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_1049 = sub i64 %235, %1
  %_pot_address_in_parent_stack_1050 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1049
  %_cond1_1051 = icmp ugt i8* %_new_int2ptr_79, %_local_stack_end_ptr_
  %_cond2_1_1052 = icmp ugt i8* %_new_int2ptr_79, %_parent_stack_end_ptr_
  %_cond2_2_1053 = icmp ult i8* %_new_int2ptr_79, %_parent_stack_start_ptr_
  %_cond2_1054 = or i1 %_cond2_1_1052, %_cond2_2_1053
  %_cond4_1055 = icmp ule i8* %_pot_address_in_parent_stack_1050, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1056 = and i1 %_cond1_1051, %_cond2_1054
  %_cond1_n_cond2_cond3_1057 = and i1 %_cond4_1055, %_cond1_n_cond2_1056
  %_address_in_parent_stack_bt_1059 = bitcast i8* %_pot_address_in_parent_stack_1050 to i64*
  %237 = select i1 %_cond1_n_cond2_cond3_1057, i64* %_address_in_parent_stack_bt_1059, i64* %236
  %_new_load_106025342535 = load i64, i64* %237, align 8
  store volatile i64 %_new_load_106025342535, i64* %_RBP_ptr_.sroa.0, align 8
  %238 = add i64 %207, 56
  store volatile i64 %238, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_985, i64* %RBX, align 8, !mcsema_real_eip !28
  %239 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %239, align 8
  %RSI_val.0.RSI_val.0.312 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.312, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %238, i64* %RSP, align 8
  store volatile i64 %_new_load_106025342535, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_1000, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_1015, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_1030, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_1045, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %220, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %219, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %210, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %212, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %211, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %215, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_1061 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_1063 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_1064 = sub i64 %_ptr_to_int_1061, %1
  %_pot_address_in_parent_stack_1065 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1064
  %_cond1_1066 = icmp ugt i8* %_ptr_bt_1063, %_local_stack_end_ptr_
  %_cond2_1_1067 = icmp ugt i8* %_ptr_bt_1063, %_parent_stack_end_ptr_
  %_cond2_2_1068 = icmp ult i8* %_ptr_bt_1063, %_parent_stack_start_ptr_
  %_cond2_1069 = or i1 %_cond2_1_1067, %_cond2_2_1068
  %_cond4_1070 = icmp ule i8* %_pot_address_in_parent_stack_1065, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1071 = and i1 %_cond1_1066, %_cond2_1069
  %_cond1_n_cond2_cond3_1072 = and i1 %_cond1_n_cond2_1071, %_cond4_1070
  %_address_in_parent_stack_bt_1074 = bitcast i8* %_pot_address_in_parent_stack_1065 to i64*
  %240 = select i1 %_cond1_n_cond2_cond3_1072, i64* %_address_in_parent_stack_bt_1074, i64* %FPU_TAG_val
  %_new_load_1075 = load i64, i64* %240, align 8
  store i64 %_new_load_1075, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:241:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_1088 = load i32, i32* %155, align 4
  %242 = icmp ult i32 %_new_load_1088, 10
  br i1 %242, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %RSI_val.0.RSI_val.0.316, i64* %RSI_val, align 8
  %243 = tail call x86_64_sysvcc i64 @getopt_long(i64 4294967295, i64 %RSI_val.0.RSI_val.0.316, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %146, i64 0), !mcsema_real_eip !8
  %244 = add i64 %243, -86, !mcsema_real_eip !9
  %245 = trunc i64 %244 to i32
  %246 = and i64 %244, 4294967295
  %247 = icmp ult i32 %245, 33
  br i1 %247, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond3195 = icmp eq i32 %_new_load_1088, 0
  br i1 %cond3195, label %block_0x1165, label %252

block_0x11de:                                     ; preds = %block_0x10a0
  %248 = and i32 %202, 16
  %249 = icmp eq i32 %248, 0
  %_new_gep_99 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2559, i64 -1576
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_100, align 8, !mcsema_real_eip !15
  %250 = ptrtoint i8* %_new_gep_99 to i64
  store volatile i64 %250, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %146, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %200, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.311 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.311, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 4294967295, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %250, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1032423 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_1032423, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %9, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !15
  store i64 4294967295, i64* %R12, align 8, !mcsema_real_eip !15
  store i64 %12, i64* %R13, align 8, !mcsema_real_eip !15
  store i64 %145, i64* %R14, align 8, !mcsema_real_eip !15
  store i64 %R15_val.2, i64* %R15, align 8, !mcsema_real_eip !15
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %249, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_1115 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_1117 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_1118 = sub i64 %_ptr_to_int_1115, %1
  %_pot_address_in_parent_stack_1119 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1118
  %_cond1_1120 = icmp ugt i8* %_ptr_bt_1117, %_local_stack_end_ptr_
  %_cond2_1_1121 = icmp ugt i8* %_ptr_bt_1117, %_parent_stack_end_ptr_
  %_cond2_2_1122 = icmp ult i8* %_ptr_bt_1117, %_parent_stack_start_ptr_
  %_cond2_1123 = or i1 %_cond2_1_1121, %_cond2_2_1122
  %_cond4_1124 = icmp ule i8* %_pot_address_in_parent_stack_1119, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1125 = and i1 %_cond1_1120, %_cond2_1123
  %_cond1_n_cond2_cond3_1126 = and i1 %_cond1_n_cond2_1125, %_cond4_1124
  %_address_in_parent_stack_bt_1128 = bitcast i8* %_pot_address_in_parent_stack_1119 to i64*
  %251 = select i1 %_cond1_n_cond2_cond3_1126, i64* %_address_in_parent_stack_bt_1128, i64* %FPU_TAG_val
  %_new_load_1129 = load i64, i64* %251, align 8
  store i64 %_new_load_1129, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:252:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_1165.23(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_local_stack_start_ptr_5 = alloca [0 x i8], align 1
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_5.sub = getelementptr inbounds [0 x i8], [0 x i8]* %_local_stack_start_ptr_5, i64 0, i64 0
  %1 = ptrtoint [0 x i8]* %_local_stack_start_ptr_5 to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !84
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !84
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !84
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !84
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !84
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !84
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !84
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !84
  %3 = bitcast i64* %R8 to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !84
  %5 = bitcast i64* %R10 to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !84
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !84
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !84
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !84
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !84
  %7 = load i64, i64* %RIP, align 8, !mcsema_real_eip !84
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !84
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !84
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !84
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !84
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !84
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !84
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !84
  %8 = load i1, i1* %DF, align 1, !mcsema_real_eip !84
  %9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !84
  %10 = bitcast x86_fp80* %9 to i8*, !mcsema_real_eip !84
  %11 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !84
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %11, i8* %10, i32 128, i32 4, i1 false), !mcsema_real_eip !84
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !84
  %12 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !84
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !84
  %13 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !84
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !84
  %14 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !84
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !84
  %15 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !84
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !84
  %16 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !84
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !84
  %17 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !84
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !84
  %18 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !84
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !84
  %19 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !84
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !84
  %20 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !84
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !84
  %21 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !84
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !84
  %22 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !84
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !84
  %23 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !84
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !84
  %24 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !84
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !84
  %25 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !84
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !84
  %26 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !84
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !84
  %27 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !84
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !84
  %28 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !84
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !84
  %29 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !84
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !84
  %30 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !84
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !84
  %31 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !84
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !84
  %32 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !84
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !84
  %33 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !84
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !84
  %34 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !84
  %35 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !84
  %36 = bitcast i8* %35 to i64*
  %_ptr_to_int_ = ptrtoint i8* %35 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %35, %_local_stack_start_ptr_5.sub
  %_cond2_1_ = icmp ugt i8* %35, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %35, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %37 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %36
  %_new_load_ = load i64, i64* %37, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !84
  %38 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !84
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !84
  %39 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !84
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !84
  %40 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !84
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !84
  %41 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !84
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !84
  %42 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !84
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !84
  %43 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !84
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !84
  %44 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !84
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !84
  %45 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !84
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !84
  %46 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !84
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !84
  %47 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !84
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !84
  %48 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !84
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !84
  %49 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !84
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !84
  %50 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !84
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !84
  %51 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !84
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !84
  %52 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !84
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !84
  %53 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !84
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !84
  %54 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !84
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !84
  %55 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !84
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !84
  %56 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !84
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !84
  %57 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !84
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !84
  %58 = bitcast i64* %STACK_BASE to <2 x i64>*
  %59 = load <2 x i64>, <2 x i64>* %58, align 8
  %60 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %61 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %62 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  %63 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6, i64 1512)
  %64 = extractvalue { i64, i1 } %uadd, 0
  %65 = xor i64 %64, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6, !mcsema_real_eip !21
  %66 = and i64 %65, 16, !mcsema_real_eip !21
  %67 = icmp ne i64 %66, 0, !mcsema_real_eip !21
  %68 = icmp slt i64 %64, 0
  %69 = icmp eq i64 %64, 0, !mcsema_real_eip !21
  %70 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6, -9223372036854775808, !mcsema_real_eip !21
  %71 = and i64 %65, %70, !mcsema_real_eip !21
  %72 = icmp slt i64 %71, 0
  %73 = trunc i64 %64 to i8, !mcsema_real_eip !21
  %74 = tail call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !21
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %64 to i8*
  store volatile i64 %64, i64* %_RSP_ptr_.sroa.0, align 8
  %78 = inttoptr i64 %64 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_14 = sub i64 %64, %1
  %_pot_address_in_parent_stack_15 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_14
  %_cond1_16 = icmp ugt i8* %_new_int2ptr_, %_local_stack_start_ptr_5.sub
  %_cond2_1_17 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_18 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_19 = or i1 %_cond2_1_17, %_cond2_2_18
  %_cond4_20 = icmp ule i8* %_pot_address_in_parent_stack_15, %_parent_stack_end_ptr_
  %_cond1_n_cond2_21 = and i1 %_cond1_16, %_cond2_19
  %_cond1_n_cond2_cond3_22 = and i1 %_cond4_20, %_cond1_n_cond2_21
  %_address_in_parent_stack_bt_24 = bitcast i8* %_pot_address_in_parent_stack_15 to i64*
  %79 = select i1 %_cond1_n_cond2_cond3_22, i64* %_address_in_parent_stack_bt_24, i64* %78
  %_new_load_25 = load i64, i64* %79, align 8
  %80 = add i64 %64, 8, !mcsema_real_eip !22
  %_new_int2ptr_1 = inttoptr i64 %80 to i8*
  store volatile i64 %80, i64* %_RSP_ptr_.sroa.0, align 8
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_29 = sub i64 %80, %1
  %_pot_address_in_parent_stack_30 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_29
  %_cond1_31 = icmp ugt i8* %_new_int2ptr_1, %_local_stack_start_ptr_5.sub
  %_cond2_1_32 = icmp ugt i8* %_new_int2ptr_1, %_parent_stack_end_ptr_
  %_cond2_2_33 = icmp ult i8* %_new_int2ptr_1, %_parent_stack_start_ptr_
  %_cond2_34 = or i1 %_cond2_1_32, %_cond2_2_33
  %_cond4_35 = icmp ule i8* %_pot_address_in_parent_stack_30, %_parent_stack_end_ptr_
  %_cond1_n_cond2_36 = and i1 %_cond1_31, %_cond2_34
  %_cond1_n_cond2_cond3_37 = and i1 %_cond4_35, %_cond1_n_cond2_36
  %_address_in_parent_stack_bt_39 = bitcast i8* %_pot_address_in_parent_stack_30 to i64*
  %82 = select i1 %_cond1_n_cond2_cond3_37, i64* %_address_in_parent_stack_bt_39, i64* %81
  %_new_load_40 = load i64, i64* %82, align 8
  %83 = add i64 %64, 16, !mcsema_real_eip !23
  %_new_int2ptr_2 = inttoptr i64 %83 to i8*
  store volatile i64 %83, i64* %_RSP_ptr_.sroa.0, align 8
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_44 = sub i64 %83, %1
  %_pot_address_in_parent_stack_45 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_44
  %_cond1_46 = icmp ugt i8* %_new_int2ptr_2, %_local_stack_start_ptr_5.sub
  %_cond2_1_47 = icmp ugt i8* %_new_int2ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_48 = icmp ult i8* %_new_int2ptr_2, %_parent_stack_start_ptr_
  %_cond2_49 = or i1 %_cond2_1_47, %_cond2_2_48
  %_cond4_50 = icmp ule i8* %_pot_address_in_parent_stack_45, %_parent_stack_end_ptr_
  %_cond1_n_cond2_51 = and i1 %_cond1_46, %_cond2_49
  %_cond1_n_cond2_cond3_52 = and i1 %_cond4_50, %_cond1_n_cond2_51
  %_address_in_parent_stack_bt_54 = bitcast i8* %_pot_address_in_parent_stack_45 to i64*
  %85 = select i1 %_cond1_n_cond2_cond3_52, i64* %_address_in_parent_stack_bt_54, i64* %84
  %_new_load_55 = load i64, i64* %85, align 8
  %86 = add i64 %64, 24, !mcsema_real_eip !24
  %_new_int2ptr_3 = inttoptr i64 %86 to i8*
  store volatile i64 %86, i64* %_RSP_ptr_.sroa.0, align 8
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_59 = sub i64 %86, %1
  %_pot_address_in_parent_stack_60 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_59
  %_cond1_61 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_start_ptr_5.sub
  %_cond2_1_62 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_63 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_64 = or i1 %_cond2_1_62, %_cond2_2_63
  %_cond4_65 = icmp ule i8* %_pot_address_in_parent_stack_60, %_parent_stack_end_ptr_
  %_cond1_n_cond2_66 = and i1 %_cond1_61, %_cond2_64
  %_cond1_n_cond2_cond3_67 = and i1 %_cond4_65, %_cond1_n_cond2_66
  %_address_in_parent_stack_bt_69 = bitcast i8* %_pot_address_in_parent_stack_60 to i64*
  %88 = select i1 %_cond1_n_cond2_cond3_67, i64* %_address_in_parent_stack_bt_69, i64* %87
  %_new_load_70 = load i64, i64* %88, align 8
  %89 = add i64 %64, 32, !mcsema_real_eip !25
  %_new_int2ptr_4 = inttoptr i64 %89 to i8*
  store volatile i64 %89, i64* %_RSP_ptr_.sroa.0, align 8
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_74 = sub i64 %89, %1
  %_pot_address_in_parent_stack_75 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_74
  %_cond1_76 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_start_ptr_5.sub
  %_cond2_1_77 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_78 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_79 = or i1 %_cond2_1_77, %_cond2_2_78
  %_cond4_80 = icmp ule i8* %_pot_address_in_parent_stack_75, %_parent_stack_end_ptr_
  %_cond1_n_cond2_81 = and i1 %_cond1_76, %_cond2_79
  %_cond1_n_cond2_cond3_82 = and i1 %_cond4_80, %_cond1_n_cond2_81
  %_address_in_parent_stack_bt_84 = bitcast i8* %_pot_address_in_parent_stack_75 to i64*
  %91 = select i1 %_cond1_n_cond2_cond3_82, i64* %_address_in_parent_stack_bt_84, i64* %90
  %_new_load_85 = load i64, i64* %91, align 8
  %92 = add i64 %64, 40, !mcsema_real_eip !26
  %_new_int2ptr_5 = inttoptr i64 %92 to i8*
  store volatile i64 %92, i64* %_RSP_ptr_.sroa.0, align 8
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_89 = sub i64 %92, %1
  %_pot_address_in_parent_stack_90 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_89
  %_cond1_91 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_start_ptr_5.sub
  %_cond2_1_92 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_93 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_94 = or i1 %_cond2_1_92, %_cond2_2_93
  %_cond4_95 = icmp ule i8* %_pot_address_in_parent_stack_90, %_parent_stack_end_ptr_
  %_cond1_n_cond2_96 = and i1 %_cond1_91, %_cond2_94
  %_cond1_n_cond2_cond3_97 = and i1 %_cond4_95, %_cond1_n_cond2_96
  %_address_in_parent_stack_bt_99 = bitcast i8* %_pot_address_in_parent_stack_90 to i64*
  %94 = select i1 %_cond1_n_cond2_cond3_97, i64* %_address_in_parent_stack_bt_99, i64* %93
  %_new_load_10078 = load i64, i64* %94, align 8
  store volatile i64 %_new_load_10078, i64* %_RBP_ptr_.sroa.0, align 8
  %95 = add i64 %64, 56
  store volatile i64 %95, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_25, i64* %RBX, align 8, !mcsema_real_eip !28
  %96 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %96, align 8
  %97 = bitcast i64* %RSI to <2 x i64>*
  store <2 x i64> <i64 53, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64)>, <2 x i64>* %97, align 8
  store volatile i64 %95, i64* %RSP, align 8
  store volatile i64 %_new_load_10078, i64* %RBP, align 8
  %98 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %98, align 8
  %99 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %99, align 8
  store i64 %_new_load_40, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_55, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_70, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_85, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %77, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %76, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %67, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %69, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %68, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %72, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %8, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* nonnull %11, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %12, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %13, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %14, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %15, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %16, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %17, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %18, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %20, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %27, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %28, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %33, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %34, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_101 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_103 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_104 = sub i64 %_ptr_to_int_101, %1
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_ptr_bt_103, %_local_stack_start_ptr_5.sub
  %_cond2_1_107 = icmp ugt i8* %_ptr_bt_103, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_ptr_bt_103, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  %_address_in_parent_stack_bt_114 = bitcast i8* %_pot_address_in_parent_stack_105 to i64*
  %100 = select i1 %_cond1_n_cond2_cond3_112, i64* %_address_in_parent_stack_bt_114, i64* %FPU_TAG_val
  %_new_load_115 = load i64, i64* %100, align 8
  store i64 %_new_load_115, i64* %36, align 4
  store i16 %38, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %39, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %40, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %41, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %42, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %43, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %44, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %45, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %46, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %47, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM15, align 1, !mcsema_real_eip !28
  %101 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %59, <2 x i64>* %101, align 1
  ret void, !mcsema_real_eip !28
}

define internal x86_64_sysvcc void @sub_1070.24(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2035 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_2035, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !85
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !85
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !85
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !85
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !85
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !85
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !85
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !85
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !85
  store i64 %4, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !85
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !85
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !85
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !85
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !85
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !85
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !85
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !85
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !85
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !85
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !85
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !85
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !85
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !85
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !85
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !85
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !85
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !85
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !85
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !85
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !85
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !85
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !85
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !85
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !85
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !85
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !85
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !85
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !85
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !85
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !85
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !85
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !85
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !85
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !85
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !85
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !85
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !85
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !85
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !85
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !85
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !85
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !85
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !85
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !85
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !85
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !85
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !85
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !85
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !85
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !85
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !85
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !85
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !85
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !85
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !85
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !85
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !85
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !85
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !85
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !85
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !85
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !85
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !85
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !85
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !85
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !85
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !85
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !85
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !85
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !85
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !85
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !85
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !85
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !85
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !85
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !85
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !85
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !85
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !85
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !85
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !85
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !85
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !85
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !85
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !85
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !85
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !85
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !85
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !85
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !85
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !85
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !85
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !85
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !85
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !85
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !85
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !85
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !85
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !85
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !85
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !85
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !85
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !85
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !85
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !85
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !85
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !85
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !85
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !85
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !85
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !85
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !85
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !85
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !85
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !85
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !85
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !85
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !85
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !85
  %66 = extractelement <2 x i64> %10, i32 0
  %67 = and i64 %66, 4294967295
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036, i64* %RSI_val, align 8
  %68 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %69 = add i64 %68, -86, !mcsema_real_eip !9
  %70 = trunc i64 %69 to i32
  %71 = and i64 %69, 4294967295
  %72 = icmp ult i32 %70, 33
  br i1 %72, label %block_0x108e, label %block_0x10a0.lr.ph, !mcsema_real_eip !10

block_0x10a0.lr.ph:                               ; preds = %entry
  %_offset_above_rbp_710 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_713 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_714 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_715 = or i1 %_cond2_2_714, %_cond2_1_713
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond2_715, %_cond1_712
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_bt_720 = bitcast i8* %_pot_address_in_parent_stack_711 to i32*
  %73 = select i1 %_cond1_n_cond2_cond3_718, i32* %_address_in_parent_stack_bt_720, i32* bitcast (%1* @data_0x24ea to i32*)
  br label %block_0x10a0

block_0x10a0:                                     ; preds = %block_0x10a0.lr.ph, %block_0x1070.backedge
  %74 = phi i64 [ %71, %block_0x10a0.lr.ph ], [ %120, %block_0x1070.backedge ]
  %75 = phi i64 [ %68, %block_0x10a0.lr.ph ], [ %117, %block_0x1070.backedge ]
  %76 = trunc i64 %75 to i32, !mcsema_real_eip !11
  switch i32 %76, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %entry
  %.lcssa2158 = phi i64 [ %71, %entry ], [ %120, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2158, 0
  br i1 %cond, label %block_0x1165, label %115

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %77 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %78 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %79 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %80 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, i64 1512)
  %81 = extractvalue { i64, i1 } %uadd, 0
  %82 = xor i64 %81, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, !mcsema_real_eip !21
  %83 = and i64 %82, 16, !mcsema_real_eip !21
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !21
  %85 = icmp slt i64 %81, 0
  %86 = icmp eq i64 %81, 0, !mcsema_real_eip !21
  %87 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, -9223372036854775808, !mcsema_real_eip !21
  %88 = and i64 %82, %87, !mcsema_real_eip !21
  %89 = icmp slt i64 %88, 0
  %90 = trunc i64 %81 to i8, !mcsema_real_eip !21
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !21
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  %94 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %81 to i8*
  store volatile i64 %81, i64* %_RSP_ptr_.sroa.0, align 8
  %95 = inttoptr i64 %81 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_607 = sub i64 %81, %1
  %_pot_address_in_parent_stack_608 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_607
  %_cond1_609 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_610 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_611 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_612 = or i1 %_cond2_1_610, %_cond2_2_611
  %_cond4_613 = icmp ule i8* %_pot_address_in_parent_stack_608, %_parent_stack_end_ptr_
  %_cond1_n_cond2_614 = and i1 %_cond1_609, %_cond2_612
  %_cond1_n_cond2_cond3_615 = and i1 %_cond4_613, %_cond1_n_cond2_614
  %_address_in_parent_stack_bt_617 = bitcast i8* %_pot_address_in_parent_stack_608 to i64*
  %96 = select i1 %_cond1_n_cond2_cond3_615, i64* %_address_in_parent_stack_bt_617, i64* %95
  %_new_load_618 = load i64, i64* %96, align 8
  %97 = add i64 %81, 8, !mcsema_real_eip !22
  %_new_int2ptr_2 = inttoptr i64 %97 to i8*
  store volatile i64 %97, i64* %_RSP_ptr_.sroa.0, align 8
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_622 = sub i64 %97, %1
  %_pot_address_in_parent_stack_623 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_622
  %_cond1_624 = icmp ugt i8* %_new_int2ptr_2, %_local_stack_end_ptr_
  %_cond2_1_625 = icmp ugt i8* %_new_int2ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_626 = icmp ult i8* %_new_int2ptr_2, %_parent_stack_start_ptr_
  %_cond2_627 = or i1 %_cond2_1_625, %_cond2_2_626
  %_cond4_628 = icmp ule i8* %_pot_address_in_parent_stack_623, %_parent_stack_end_ptr_
  %_cond1_n_cond2_629 = and i1 %_cond1_624, %_cond2_627
  %_cond1_n_cond2_cond3_630 = and i1 %_cond4_628, %_cond1_n_cond2_629
  %_address_in_parent_stack_bt_632 = bitcast i8* %_pot_address_in_parent_stack_623 to i64*
  %99 = select i1 %_cond1_n_cond2_cond3_630, i64* %_address_in_parent_stack_bt_632, i64* %98
  %_new_load_633 = load i64, i64* %99, align 8
  %100 = add i64 %81, 16, !mcsema_real_eip !23
  %_new_int2ptr_3 = inttoptr i64 %100 to i8*
  store volatile i64 %100, i64* %_RSP_ptr_.sroa.0, align 8
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_637 = sub i64 %100, %1
  %_pot_address_in_parent_stack_638 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_637
  %_cond1_639 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_end_ptr_
  %_cond2_1_640 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_641 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_642 = or i1 %_cond2_1_640, %_cond2_2_641
  %_cond4_643 = icmp ule i8* %_pot_address_in_parent_stack_638, %_parent_stack_end_ptr_
  %_cond1_n_cond2_644 = and i1 %_cond1_639, %_cond2_642
  %_cond1_n_cond2_cond3_645 = and i1 %_cond4_643, %_cond1_n_cond2_644
  %_address_in_parent_stack_bt_647 = bitcast i8* %_pot_address_in_parent_stack_638 to i64*
  %102 = select i1 %_cond1_n_cond2_cond3_645, i64* %_address_in_parent_stack_bt_647, i64* %101
  %_new_load_648 = load i64, i64* %102, align 8
  %103 = add i64 %81, 24, !mcsema_real_eip !24
  %_new_int2ptr_4 = inttoptr i64 %103 to i8*
  store volatile i64 %103, i64* %_RSP_ptr_.sroa.0, align 8
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_652 = sub i64 %103, %1
  %_pot_address_in_parent_stack_653 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_652
  %_cond1_654 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond4_658, %_cond1_n_cond2_659
  %_address_in_parent_stack_bt_662 = bitcast i8* %_pot_address_in_parent_stack_653 to i64*
  %105 = select i1 %_cond1_n_cond2_cond3_660, i64* %_address_in_parent_stack_bt_662, i64* %104
  %_new_load_663 = load i64, i64* %105, align 8
  %106 = add i64 %81, 32, !mcsema_real_eip !25
  %_new_int2ptr_5 = inttoptr i64 %106 to i8*
  store volatile i64 %106, i64* %_RSP_ptr_.sroa.0, align 8
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_667 = sub i64 %106, %1
  %_pot_address_in_parent_stack_668 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_667
  %_cond1_669 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_end_ptr_
  %_cond2_1_670 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_671 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_672 = or i1 %_cond2_1_670, %_cond2_2_671
  %_cond4_673 = icmp ule i8* %_pot_address_in_parent_stack_668, %_parent_stack_end_ptr_
  %_cond1_n_cond2_674 = and i1 %_cond1_669, %_cond2_672
  %_cond1_n_cond2_cond3_675 = and i1 %_cond4_673, %_cond1_n_cond2_674
  %_address_in_parent_stack_bt_677 = bitcast i8* %_pot_address_in_parent_stack_668 to i64*
  %108 = select i1 %_cond1_n_cond2_cond3_675, i64* %_address_in_parent_stack_bt_677, i64* %107
  %_new_load_678 = load i64, i64* %108, align 8
  %109 = add i64 %81, 40, !mcsema_real_eip !26
  %_new_int2ptr_6 = inttoptr i64 %109 to i8*
  store volatile i64 %109, i64* %_RSP_ptr_.sroa.0, align 8
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_682 = sub i64 %109, %1
  %_pot_address_in_parent_stack_683 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_682
  %_cond1_684 = icmp ugt i8* %_new_int2ptr_6, %_local_stack_end_ptr_
  %_cond2_1_685 = icmp ugt i8* %_new_int2ptr_6, %_parent_stack_end_ptr_
  %_cond2_2_686 = icmp ult i8* %_new_int2ptr_6, %_parent_stack_start_ptr_
  %_cond2_687 = or i1 %_cond2_1_685, %_cond2_2_686
  %_cond4_688 = icmp ule i8* %_pot_address_in_parent_stack_683, %_parent_stack_end_ptr_
  %_cond1_n_cond2_689 = and i1 %_cond1_684, %_cond2_687
  %_cond1_n_cond2_cond3_690 = and i1 %_cond4_688, %_cond1_n_cond2_689
  %_address_in_parent_stack_bt_692 = bitcast i8* %_pot_address_in_parent_stack_683 to i64*
  %111 = select i1 %_cond1_n_cond2_cond3_690, i64* %_address_in_parent_stack_bt_692, i64* %110
  %_new_load_69321472148 = load i64, i64* %111, align 8
  store volatile i64 %_new_load_69321472148, i64* %_RBP_ptr_.sroa.0, align 8
  %112 = add i64 %81, 56
  store volatile i64 %112, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_618, i64* %RBX, align 8, !mcsema_real_eip !28
  %113 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %113, align 8
  %RSI_val.0.RSI_val.0.282 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.282, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %112, i64* %RSP, align 8
  store volatile i64 %_new_load_69321472148, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_633, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_648, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_663, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_678, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_694 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_696 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_697 = sub i64 %_ptr_to_int_694, %1
  %_pot_address_in_parent_stack_698 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_697
  %_cond1_699 = icmp ugt i8* %_ptr_bt_696, %_local_stack_end_ptr_
  %_cond2_1_700 = icmp ugt i8* %_ptr_bt_696, %_parent_stack_end_ptr_
  %_cond2_2_701 = icmp ult i8* %_ptr_bt_696, %_parent_stack_start_ptr_
  %_cond2_702 = or i1 %_cond2_1_700, %_cond2_2_701
  %_cond4_703 = icmp ule i8* %_pot_address_in_parent_stack_698, %_parent_stack_end_ptr_
  %_cond1_n_cond2_704 = and i1 %_cond1_699, %_cond2_702
  %_cond1_n_cond2_cond3_705 = and i1 %_cond1_n_cond2_704, %_cond4_703
  %_address_in_parent_stack_bt_707 = bitcast i8* %_pot_address_in_parent_stack_698 to i64*
  %114 = select i1 %_cond1_n_cond2_cond3_705, i64* %_address_in_parent_stack_bt_707, i64* %FPU_TAG_val
  %_new_load_708 = load i64, i64* %114, align 8
  store i64 %_new_load_708, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:115:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_721 = load i32, i32* %73, align 4
  %116 = icmp ult i32 %_new_load_721, 10
  br i1 %116, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036, i64* %RSI_val, align 8
  %117 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %118 = add i64 %117, -86, !mcsema_real_eip !9
  %119 = trunc i64 %118 to i32
  %120 = and i64 %118, 4294967295
  %121 = icmp ult i32 %119, 33
  br i1 %121, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond2779 = icmp eq i32 %_new_load_721, 0
  br i1 %cond2779, label %block_0x1165, label %129

block_0x11de:                                     ; preds = %block_0x10a0
  %122 = and i32 %76, 16
  %123 = icmp eq i32 %122, 0
  %124 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132155 = load i8*, i8** %124, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132155, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !15
  %125 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %125, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %74, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.281 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.281, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 %67, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %125, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162038 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162038, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  %126 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %126, align 8
  %127 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %127, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_722 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_724 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_725 = sub i64 %_ptr_to_int_722, %1
  %_pot_address_in_parent_stack_726 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_725
  %_cond1_727 = icmp ugt i8* %_ptr_bt_724, %_local_stack_end_ptr_
  %_cond2_1_728 = icmp ugt i8* %_ptr_bt_724, %_parent_stack_end_ptr_
  %_cond2_2_729 = icmp ult i8* %_ptr_bt_724, %_parent_stack_start_ptr_
  %_cond2_730 = or i1 %_cond2_1_728, %_cond2_2_729
  %_cond4_731 = icmp ule i8* %_pot_address_in_parent_stack_726, %_parent_stack_end_ptr_
  %_cond1_n_cond2_732 = and i1 %_cond1_727, %_cond2_730
  %_cond1_n_cond2_cond3_733 = and i1 %_cond1_n_cond2_732, %_cond4_731
  %_address_in_parent_stack_bt_735 = bitcast i8* %_pot_address_in_parent_stack_726 to i64*
  %128 = select i1 %_cond1_n_cond2_cond3_733, i64* %_address_in_parent_stack_bt_735, i64* %FPU_TAG_val
  %_new_load_736 = load i64, i64* %128, align 8
  store i64 %_new_load_736, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:129:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_1095.25(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2035 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_2035, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !86
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !86
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !86
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !86
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !86
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !86
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !86
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !86
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !86
  store i64 %4, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !86
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !86
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !86
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !86
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !86
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !86
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !86
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !86
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !86
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !86
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !86
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !86
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !86
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !86
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !86
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !86
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !86
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !86
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !86
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !86
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !86
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !86
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !86
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !86
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !86
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !86
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !86
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !86
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !86
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !86
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !86
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !86
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !86
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !86
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !86
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !86
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !86
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !86
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !86
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !86
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !86
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !86
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !86
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !86
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !86
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !86
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !86
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !86
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !86
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !86
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !86
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !86
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !86
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !86
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !86
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !86
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !86
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !86
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !86
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !86
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !86
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !86
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !86
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !86
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !86
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !86
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !86
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !86
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !86
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !86
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !86
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !86
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !86
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !86
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !86
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !86
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !86
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !86
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !86
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !86
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !86
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !86
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !86
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !86
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !86
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !86
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !86
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !86
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !86
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !86
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !86
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !86
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !86
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !86
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !86
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !86
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !86
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !86
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !86
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !86
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !86
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !86
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !86
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !86
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !86
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !86
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !86
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !86
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !86
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !86
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !86
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !86
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !86
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !86
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !86
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !86
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !86
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !86
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !86
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !86
  store i8 1, i8* getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0), align 64, !mcsema_real_eip !86
  %66 = extractelement <2 x i64> %10, i32 0
  %67 = and i64 %66, 4294967295
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036, i64* %RSI_val, align 8
  %68 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %69 = add i64 %68, -86, !mcsema_real_eip !9
  %70 = trunc i64 %69 to i32
  %71 = and i64 %69, 4294967295
  %72 = icmp ult i32 %70, 33
  br i1 %72, label %block_0x108e, label %block_0x10a0.lr.ph, !mcsema_real_eip !10

block_0x10a0.lr.ph:                               ; preds = %entry
  %_offset_above_rbp_710 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_713 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_714 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_715 = or i1 %_cond2_2_714, %_cond2_1_713
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond2_715, %_cond1_712
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_bt_720 = bitcast i8* %_pot_address_in_parent_stack_711 to i32*
  %73 = select i1 %_cond1_n_cond2_cond3_718, i32* %_address_in_parent_stack_bt_720, i32* bitcast (%1* @data_0x24ea to i32*)
  br label %block_0x10a0

block_0x10a0:                                     ; preds = %block_0x10a0.lr.ph, %block_0x1070.backedge
  %74 = phi i64 [ %71, %block_0x10a0.lr.ph ], [ %120, %block_0x1070.backedge ]
  %75 = phi i64 [ %68, %block_0x10a0.lr.ph ], [ %117, %block_0x1070.backedge ]
  %76 = trunc i64 %75 to i32, !mcsema_real_eip !11
  switch i32 %76, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %entry
  %.lcssa2158 = phi i64 [ %71, %entry ], [ %120, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2158, 0
  br i1 %cond, label %block_0x1165, label %115

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %77 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %78 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %79 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %80 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, i64 1512)
  %81 = extractvalue { i64, i1 } %uadd, 0
  %82 = xor i64 %81, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, !mcsema_real_eip !21
  %83 = and i64 %82, 16, !mcsema_real_eip !21
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !21
  %85 = icmp slt i64 %81, 0
  %86 = icmp eq i64 %81, 0, !mcsema_real_eip !21
  %87 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, -9223372036854775808, !mcsema_real_eip !21
  %88 = and i64 %82, %87, !mcsema_real_eip !21
  %89 = icmp slt i64 %88, 0
  %90 = trunc i64 %81 to i8, !mcsema_real_eip !21
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !21
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  %94 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %81 to i8*
  store volatile i64 %81, i64* %_RSP_ptr_.sroa.0, align 8
  %95 = inttoptr i64 %81 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_607 = sub i64 %81, %1
  %_pot_address_in_parent_stack_608 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_607
  %_cond1_609 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_610 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_611 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_612 = or i1 %_cond2_1_610, %_cond2_2_611
  %_cond4_613 = icmp ule i8* %_pot_address_in_parent_stack_608, %_parent_stack_end_ptr_
  %_cond1_n_cond2_614 = and i1 %_cond1_609, %_cond2_612
  %_cond1_n_cond2_cond3_615 = and i1 %_cond4_613, %_cond1_n_cond2_614
  %_address_in_parent_stack_bt_617 = bitcast i8* %_pot_address_in_parent_stack_608 to i64*
  %96 = select i1 %_cond1_n_cond2_cond3_615, i64* %_address_in_parent_stack_bt_617, i64* %95
  %_new_load_618 = load i64, i64* %96, align 8
  %97 = add i64 %81, 8, !mcsema_real_eip !22
  %_new_int2ptr_2 = inttoptr i64 %97 to i8*
  store volatile i64 %97, i64* %_RSP_ptr_.sroa.0, align 8
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_622 = sub i64 %97, %1
  %_pot_address_in_parent_stack_623 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_622
  %_cond1_624 = icmp ugt i8* %_new_int2ptr_2, %_local_stack_end_ptr_
  %_cond2_1_625 = icmp ugt i8* %_new_int2ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_626 = icmp ult i8* %_new_int2ptr_2, %_parent_stack_start_ptr_
  %_cond2_627 = or i1 %_cond2_1_625, %_cond2_2_626
  %_cond4_628 = icmp ule i8* %_pot_address_in_parent_stack_623, %_parent_stack_end_ptr_
  %_cond1_n_cond2_629 = and i1 %_cond1_624, %_cond2_627
  %_cond1_n_cond2_cond3_630 = and i1 %_cond4_628, %_cond1_n_cond2_629
  %_address_in_parent_stack_bt_632 = bitcast i8* %_pot_address_in_parent_stack_623 to i64*
  %99 = select i1 %_cond1_n_cond2_cond3_630, i64* %_address_in_parent_stack_bt_632, i64* %98
  %_new_load_633 = load i64, i64* %99, align 8
  %100 = add i64 %81, 16, !mcsema_real_eip !23
  %_new_int2ptr_3 = inttoptr i64 %100 to i8*
  store volatile i64 %100, i64* %_RSP_ptr_.sroa.0, align 8
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_637 = sub i64 %100, %1
  %_pot_address_in_parent_stack_638 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_637
  %_cond1_639 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_end_ptr_
  %_cond2_1_640 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_641 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_642 = or i1 %_cond2_1_640, %_cond2_2_641
  %_cond4_643 = icmp ule i8* %_pot_address_in_parent_stack_638, %_parent_stack_end_ptr_
  %_cond1_n_cond2_644 = and i1 %_cond1_639, %_cond2_642
  %_cond1_n_cond2_cond3_645 = and i1 %_cond4_643, %_cond1_n_cond2_644
  %_address_in_parent_stack_bt_647 = bitcast i8* %_pot_address_in_parent_stack_638 to i64*
  %102 = select i1 %_cond1_n_cond2_cond3_645, i64* %_address_in_parent_stack_bt_647, i64* %101
  %_new_load_648 = load i64, i64* %102, align 8
  %103 = add i64 %81, 24, !mcsema_real_eip !24
  %_new_int2ptr_4 = inttoptr i64 %103 to i8*
  store volatile i64 %103, i64* %_RSP_ptr_.sroa.0, align 8
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_652 = sub i64 %103, %1
  %_pot_address_in_parent_stack_653 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_652
  %_cond1_654 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond4_658, %_cond1_n_cond2_659
  %_address_in_parent_stack_bt_662 = bitcast i8* %_pot_address_in_parent_stack_653 to i64*
  %105 = select i1 %_cond1_n_cond2_cond3_660, i64* %_address_in_parent_stack_bt_662, i64* %104
  %_new_load_663 = load i64, i64* %105, align 8
  %106 = add i64 %81, 32, !mcsema_real_eip !25
  %_new_int2ptr_5 = inttoptr i64 %106 to i8*
  store volatile i64 %106, i64* %_RSP_ptr_.sroa.0, align 8
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_667 = sub i64 %106, %1
  %_pot_address_in_parent_stack_668 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_667
  %_cond1_669 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_end_ptr_
  %_cond2_1_670 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_671 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_672 = or i1 %_cond2_1_670, %_cond2_2_671
  %_cond4_673 = icmp ule i8* %_pot_address_in_parent_stack_668, %_parent_stack_end_ptr_
  %_cond1_n_cond2_674 = and i1 %_cond1_669, %_cond2_672
  %_cond1_n_cond2_cond3_675 = and i1 %_cond4_673, %_cond1_n_cond2_674
  %_address_in_parent_stack_bt_677 = bitcast i8* %_pot_address_in_parent_stack_668 to i64*
  %108 = select i1 %_cond1_n_cond2_cond3_675, i64* %_address_in_parent_stack_bt_677, i64* %107
  %_new_load_678 = load i64, i64* %108, align 8
  %109 = add i64 %81, 40, !mcsema_real_eip !26
  %_new_int2ptr_6 = inttoptr i64 %109 to i8*
  store volatile i64 %109, i64* %_RSP_ptr_.sroa.0, align 8
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_682 = sub i64 %109, %1
  %_pot_address_in_parent_stack_683 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_682
  %_cond1_684 = icmp ugt i8* %_new_int2ptr_6, %_local_stack_end_ptr_
  %_cond2_1_685 = icmp ugt i8* %_new_int2ptr_6, %_parent_stack_end_ptr_
  %_cond2_2_686 = icmp ult i8* %_new_int2ptr_6, %_parent_stack_start_ptr_
  %_cond2_687 = or i1 %_cond2_1_685, %_cond2_2_686
  %_cond4_688 = icmp ule i8* %_pot_address_in_parent_stack_683, %_parent_stack_end_ptr_
  %_cond1_n_cond2_689 = and i1 %_cond1_684, %_cond2_687
  %_cond1_n_cond2_cond3_690 = and i1 %_cond4_688, %_cond1_n_cond2_689
  %_address_in_parent_stack_bt_692 = bitcast i8* %_pot_address_in_parent_stack_683 to i64*
  %111 = select i1 %_cond1_n_cond2_cond3_690, i64* %_address_in_parent_stack_bt_692, i64* %110
  %_new_load_69321472148 = load i64, i64* %111, align 8
  store volatile i64 %_new_load_69321472148, i64* %_RBP_ptr_.sroa.0, align 8
  %112 = add i64 %81, 56
  store volatile i64 %112, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_618, i64* %RBX, align 8, !mcsema_real_eip !28
  %113 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %113, align 8
  %RSI_val.0.RSI_val.0.282 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.282, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %112, i64* %RSP, align 8
  store volatile i64 %_new_load_69321472148, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_633, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_648, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_663, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_678, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_694 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_696 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_697 = sub i64 %_ptr_to_int_694, %1
  %_pot_address_in_parent_stack_698 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_697
  %_cond1_699 = icmp ugt i8* %_ptr_bt_696, %_local_stack_end_ptr_
  %_cond2_1_700 = icmp ugt i8* %_ptr_bt_696, %_parent_stack_end_ptr_
  %_cond2_2_701 = icmp ult i8* %_ptr_bt_696, %_parent_stack_start_ptr_
  %_cond2_702 = or i1 %_cond2_1_700, %_cond2_2_701
  %_cond4_703 = icmp ule i8* %_pot_address_in_parent_stack_698, %_parent_stack_end_ptr_
  %_cond1_n_cond2_704 = and i1 %_cond1_699, %_cond2_702
  %_cond1_n_cond2_cond3_705 = and i1 %_cond1_n_cond2_704, %_cond4_703
  %_address_in_parent_stack_bt_707 = bitcast i8* %_pot_address_in_parent_stack_698 to i64*
  %114 = select i1 %_cond1_n_cond2_cond3_705, i64* %_address_in_parent_stack_bt_707, i64* %FPU_TAG_val
  %_new_load_708 = load i64, i64* %114, align 8
  store i64 %_new_load_708, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:115:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_721 = load i32, i32* %73, align 4
  %116 = icmp ult i32 %_new_load_721, 10
  br i1 %116, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036, i64* %RSI_val, align 8
  %117 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %118 = add i64 %117, -86, !mcsema_real_eip !9
  %119 = trunc i64 %118 to i32
  %120 = and i64 %118, 4294967295
  %121 = icmp ult i32 %119, 33
  br i1 %121, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond2779 = icmp eq i32 %_new_load_721, 0
  br i1 %cond2779, label %block_0x1165, label %129

block_0x11de:                                     ; preds = %block_0x10a0
  %122 = and i32 %76, 16
  %123 = icmp eq i32 %122, 0
  %124 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132155 = load i8*, i8** %124, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132155, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !15
  %125 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %125, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %74, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.281 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.281, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 %67, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %125, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162038 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162038, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  %126 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %126, align 8
  %127 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %127, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_722 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_724 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_725 = sub i64 %_ptr_to_int_722, %1
  %_pot_address_in_parent_stack_726 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_725
  %_cond1_727 = icmp ugt i8* %_ptr_bt_724, %_local_stack_end_ptr_
  %_cond2_1_728 = icmp ugt i8* %_ptr_bt_724, %_parent_stack_end_ptr_
  %_cond2_2_729 = icmp ult i8* %_ptr_bt_724, %_parent_stack_start_ptr_
  %_cond2_730 = or i1 %_cond2_1_728, %_cond2_2_729
  %_cond4_731 = icmp ule i8* %_pot_address_in_parent_stack_726, %_parent_stack_end_ptr_
  %_cond1_n_cond2_732 = and i1 %_cond1_727, %_cond2_730
  %_cond1_n_cond2_cond3_733 = and i1 %_cond1_n_cond2_732, %_cond4_731
  %_address_in_parent_stack_bt_735 = bitcast i8* %_pot_address_in_parent_stack_726 to i64*
  %128 = select i1 %_cond1_n_cond2_cond3_733, i64* %_address_in_parent_stack_bt_735, i64* %FPU_TAG_val
  %_new_load_736 = load i64, i64* %128, align 8
  store i64 %_new_load_736, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:129:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_105b.26(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2041 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_2041, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !87
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !87
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !87
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !87
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !87
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !87
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !87
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !87
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !87
  store i64 %4, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !87
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !87
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !87
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !87
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !87
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !87
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !87
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !87
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !87
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !87
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !87
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !87
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !87
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !87
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !87
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !87
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !87
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !87
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !87
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !87
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !87
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !87
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !87
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !87
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !87
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !87
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !87
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !87
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !87
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !87
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !87
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !87
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !87
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !87
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !87
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !87
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !87
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !87
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !87
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !87
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !87
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !87
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !87
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !87
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !87
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !87
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !87
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !87
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !87
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !87
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !87
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !87
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !87
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !87
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !87
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !87
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !87
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !87
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !87
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !87
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !87
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !87
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !87
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !87
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !87
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !87
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !87
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !87
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !87
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !87
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !87
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !87
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !87
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !87
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !87
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !87
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !87
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !87
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !87
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !87
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !87
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !87
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !87
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !87
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !87
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !87
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !87
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !87
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !87
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !87
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !87
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !87
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !87
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !87
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !87
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !87
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !87
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !87
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !87
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !87
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !87
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !87
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !87
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !87
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !87
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !87
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !87
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !87
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !87
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !87
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !87
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !87
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !87
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !87
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !87
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !87
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !87
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !87
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !87
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !87
  store i8 1, i8* getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0), align 64, !mcsema_real_eip !87
  %66 = extractelement <2 x i64> %10, i32 0
  %67 = and i64 %66, 4294967295
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2042 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2042, i64* %RSI_val, align 8
  %68 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %69 = add i64 %68, -86, !mcsema_real_eip !9
  %70 = trunc i64 %69 to i32
  %71 = and i64 %69, 4294967295
  %72 = icmp ult i32 %70, 33
  br i1 %72, label %block_0x108e, label %block_0x10a0.preheader, !mcsema_real_eip !10

block_0x10a0.preheader:                           ; preds = %entry
  %_offset_above_rbp_712 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_713 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_712
  %_cond1_714 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_715 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_716 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_717 = or i1 %_cond2_2_716, %_cond2_1_715
  %_cond4_718 = icmp ule i8* %_pot_address_in_parent_stack_713, %_parent_stack_end_ptr_
  %_cond1_n_cond2_719 = and i1 %_cond2_717, %_cond1_714
  %_cond1_n_cond2_cond3_720 = and i1 %_cond1_n_cond2_719, %_cond4_718
  %_address_in_parent_stack_bt_722 = bitcast i8* %_pot_address_in_parent_stack_713 to i32*
  %73 = select i1 %_cond1_n_cond2_cond3_720, i32* %_address_in_parent_stack_bt_722, i32* bitcast (%1* @data_0x24ea to i32*)
  br label %block_0x10a0

block_0x10a0:                                     ; preds = %block_0x1070, %block_0x10a0.preheader
  %RCX_val.0 = phi i64 [ %71, %block_0x10a0.preheader ], [ %118, %block_0x1070 ]
  %RAX_val.0 = phi i64 [ %68, %block_0x10a0.preheader ], [ %115, %block_0x1070 ]
  %74 = trunc i64 %RAX_val.0 to i32, !mcsema_real_eip !11
  switch i32 %74, label %block_0x1070 [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %entry
  %RCX_val.1 = phi i64 [ %71, %entry ], [ %118, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %RCX_val.1, 0
  br i1 %cond, label %block_0x1165, label %113

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %75 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %76 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %77 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %78 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2044 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2044, i64 1512)
  %79 = extractvalue { i64, i1 } %uadd, 0
  %80 = xor i64 %79, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2044, !mcsema_real_eip !21
  %81 = and i64 %80, 16, !mcsema_real_eip !21
  %82 = icmp ne i64 %81, 0, !mcsema_real_eip !21
  %83 = icmp slt i64 %79, 0
  %84 = icmp eq i64 %79, 0, !mcsema_real_eip !21
  %85 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2044, -9223372036854775808, !mcsema_real_eip !21
  %86 = and i64 %80, %85, !mcsema_real_eip !21
  %87 = icmp slt i64 %86, 0
  %88 = trunc i64 %79 to i8, !mcsema_real_eip !21
  %89 = tail call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !21
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  %92 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %79 to i8*
  store volatile i64 %79, i64* %_RSP_ptr_.sroa.0, align 8
  %93 = inttoptr i64 %79 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_609 = sub i64 %79, %1
  %_pot_address_in_parent_stack_610 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_609
  %_cond1_611 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_612 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_613 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_614 = or i1 %_cond2_1_612, %_cond2_2_613
  %_cond4_615 = icmp ule i8* %_pot_address_in_parent_stack_610, %_parent_stack_end_ptr_
  %_cond1_n_cond2_616 = and i1 %_cond1_611, %_cond2_614
  %_cond1_n_cond2_cond3_617 = and i1 %_cond4_615, %_cond1_n_cond2_616
  %_address_in_parent_stack_bt_619 = bitcast i8* %_pot_address_in_parent_stack_610 to i64*
  %94 = select i1 %_cond1_n_cond2_cond3_617, i64* %_address_in_parent_stack_bt_619, i64* %93
  %_new_load_620 = load i64, i64* %94, align 8
  %95 = add i64 %79, 8, !mcsema_real_eip !22
  %_new_int2ptr_3 = inttoptr i64 %95 to i8*
  store volatile i64 %95, i64* %_RSP_ptr_.sroa.0, align 8
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_624 = sub i64 %95, %1
  %_pot_address_in_parent_stack_625 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_624
  %_cond1_626 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_end_ptr_
  %_cond2_1_627 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_628 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_629 = or i1 %_cond2_1_627, %_cond2_2_628
  %_cond4_630 = icmp ule i8* %_pot_address_in_parent_stack_625, %_parent_stack_end_ptr_
  %_cond1_n_cond2_631 = and i1 %_cond1_626, %_cond2_629
  %_cond1_n_cond2_cond3_632 = and i1 %_cond4_630, %_cond1_n_cond2_631
  %_address_in_parent_stack_bt_634 = bitcast i8* %_pot_address_in_parent_stack_625 to i64*
  %97 = select i1 %_cond1_n_cond2_cond3_632, i64* %_address_in_parent_stack_bt_634, i64* %96
  %_new_load_635 = load i64, i64* %97, align 8
  %98 = add i64 %79, 16, !mcsema_real_eip !23
  %_new_int2ptr_4 = inttoptr i64 %98 to i8*
  store volatile i64 %98, i64* %_RSP_ptr_.sroa.0, align 8
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_639 = sub i64 %98, %1
  %_pot_address_in_parent_stack_640 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_639
  %_cond1_641 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_end_ptr_
  %_cond2_1_642 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_643 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_644 = or i1 %_cond2_1_642, %_cond2_2_643
  %_cond4_645 = icmp ule i8* %_pot_address_in_parent_stack_640, %_parent_stack_end_ptr_
  %_cond1_n_cond2_646 = and i1 %_cond1_641, %_cond2_644
  %_cond1_n_cond2_cond3_647 = and i1 %_cond4_645, %_cond1_n_cond2_646
  %_address_in_parent_stack_bt_649 = bitcast i8* %_pot_address_in_parent_stack_640 to i64*
  %100 = select i1 %_cond1_n_cond2_cond3_647, i64* %_address_in_parent_stack_bt_649, i64* %99
  %_new_load_650 = load i64, i64* %100, align 8
  %101 = add i64 %79, 24, !mcsema_real_eip !24
  %_new_int2ptr_5 = inttoptr i64 %101 to i8*
  store volatile i64 %101, i64* %_RSP_ptr_.sroa.0, align 8
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_654 = sub i64 %101, %1
  %_pot_address_in_parent_stack_655 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_654
  %_cond1_656 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_end_ptr_
  %_cond2_1_657 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_658 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_659 = or i1 %_cond2_1_657, %_cond2_2_658
  %_cond4_660 = icmp ule i8* %_pot_address_in_parent_stack_655, %_parent_stack_end_ptr_
  %_cond1_n_cond2_661 = and i1 %_cond1_656, %_cond2_659
  %_cond1_n_cond2_cond3_662 = and i1 %_cond4_660, %_cond1_n_cond2_661
  %_address_in_parent_stack_bt_664 = bitcast i8* %_pot_address_in_parent_stack_655 to i64*
  %103 = select i1 %_cond1_n_cond2_cond3_662, i64* %_address_in_parent_stack_bt_664, i64* %102
  %_new_load_665 = load i64, i64* %103, align 8
  %104 = add i64 %79, 32, !mcsema_real_eip !25
  %_new_int2ptr_6 = inttoptr i64 %104 to i8*
  store volatile i64 %104, i64* %_RSP_ptr_.sroa.0, align 8
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_669 = sub i64 %104, %1
  %_pot_address_in_parent_stack_670 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_669
  %_cond1_671 = icmp ugt i8* %_new_int2ptr_6, %_local_stack_end_ptr_
  %_cond2_1_672 = icmp ugt i8* %_new_int2ptr_6, %_parent_stack_end_ptr_
  %_cond2_2_673 = icmp ult i8* %_new_int2ptr_6, %_parent_stack_start_ptr_
  %_cond2_674 = or i1 %_cond2_1_672, %_cond2_2_673
  %_cond4_675 = icmp ule i8* %_pot_address_in_parent_stack_670, %_parent_stack_end_ptr_
  %_cond1_n_cond2_676 = and i1 %_cond1_671, %_cond2_674
  %_cond1_n_cond2_cond3_677 = and i1 %_cond4_675, %_cond1_n_cond2_676
  %_address_in_parent_stack_bt_679 = bitcast i8* %_pot_address_in_parent_stack_670 to i64*
  %106 = select i1 %_cond1_n_cond2_cond3_677, i64* %_address_in_parent_stack_bt_679, i64* %105
  %_new_load_680 = load i64, i64* %106, align 8
  %107 = add i64 %79, 40, !mcsema_real_eip !26
  %_new_int2ptr_7 = inttoptr i64 %107 to i8*
  store volatile i64 %107, i64* %_RSP_ptr_.sroa.0, align 8
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_684 = sub i64 %107, %1
  %_pot_address_in_parent_stack_685 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_684
  %_cond1_686 = icmp ugt i8* %_new_int2ptr_7, %_local_stack_end_ptr_
  %_cond2_1_687 = icmp ugt i8* %_new_int2ptr_7, %_parent_stack_end_ptr_
  %_cond2_2_688 = icmp ult i8* %_new_int2ptr_7, %_parent_stack_start_ptr_
  %_cond2_689 = or i1 %_cond2_1_687, %_cond2_2_688
  %_cond4_690 = icmp ule i8* %_pot_address_in_parent_stack_685, %_parent_stack_end_ptr_
  %_cond1_n_cond2_691 = and i1 %_cond1_686, %_cond2_689
  %_cond1_n_cond2_cond3_692 = and i1 %_cond4_690, %_cond1_n_cond2_691
  %_address_in_parent_stack_bt_694 = bitcast i8* %_pot_address_in_parent_stack_685 to i64*
  %109 = select i1 %_cond1_n_cond2_cond3_692, i64* %_address_in_parent_stack_bt_694, i64* %108
  %_new_load_69520452046 = load i64, i64* %109, align 8
  store volatile i64 %_new_load_69520452046, i64* %_RBP_ptr_.sroa.0, align 8
  %110 = add i64 %79, 56
  store volatile i64 %110, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_620, i64* %RBX, align 8, !mcsema_real_eip !28
  %111 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %111, align 8
  %RSI_val.0.RSI_val.0.284 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.284, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %110, i64* %RSP, align 8
  store volatile i64 %_new_load_69520452046, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_635, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_650, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_665, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_680, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %92, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %91, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %82, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %84, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %87, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_696 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_698 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_699 = sub i64 %_ptr_to_int_696, %1
  %_pot_address_in_parent_stack_700 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_699
  %_cond1_701 = icmp ugt i8* %_ptr_bt_698, %_local_stack_end_ptr_
  %_cond2_1_702 = icmp ugt i8* %_ptr_bt_698, %_parent_stack_end_ptr_
  %_cond2_2_703 = icmp ult i8* %_ptr_bt_698, %_parent_stack_start_ptr_
  %_cond2_704 = or i1 %_cond2_1_702, %_cond2_2_703
  %_cond4_705 = icmp ule i8* %_pot_address_in_parent_stack_700, %_parent_stack_end_ptr_
  %_cond1_n_cond2_706 = and i1 %_cond1_701, %_cond2_704
  %_cond1_n_cond2_cond3_707 = and i1 %_cond1_n_cond2_706, %_cond4_705
  %_address_in_parent_stack_bt_709 = bitcast i8* %_pot_address_in_parent_stack_700 to i64*
  %112 = select i1 %_cond1_n_cond2_cond3_707, i64* %_address_in_parent_stack_bt_709, i64* %FPU_TAG_val
  %_new_load_710 = load i64, i64* %112, align 8
  store i64 %_new_load_710, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:113:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_723 = load i32, i32* %73, align 4
  %114 = icmp ult i32 %_new_load_723, 10
  br i1 %114, label %block_0x10ba, label %block_0x1070, !mcsema_real_eip !14

block_0x1070:                                     ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2042, i64* %RSI_val, align 8
  %115 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %116 = add i64 %115, -86, !mcsema_real_eip !9
  %117 = trunc i64 %116 to i32
  %118 = and i64 %116, 4294967295
  %119 = icmp ult i32 %117, 33
  br i1 %119, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond2779 = icmp eq i32 %_new_load_723, 0
  br i1 %cond2779, label %block_0x1165, label %127

block_0x11de:                                     ; preds = %block_0x10a0
  %120 = and i32 %74, 16
  %121 = icmp eq i32 %120, 0
  %122 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_152162 = load i8*, i8** %122, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_152162, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !15
  %123 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %123, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %RCX_val.0, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.283 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.283, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 %67, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %123, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_182050 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_182050, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  %124 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %124, align 8
  %125 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %125, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %121, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_724 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_726 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_727 = sub i64 %_ptr_to_int_724, %1
  %_pot_address_in_parent_stack_728 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_727
  %_cond1_729 = icmp ugt i8* %_ptr_bt_726, %_local_stack_end_ptr_
  %_cond2_1_730 = icmp ugt i8* %_ptr_bt_726, %_parent_stack_end_ptr_
  %_cond2_2_731 = icmp ult i8* %_ptr_bt_726, %_parent_stack_start_ptr_
  %_cond2_732 = or i1 %_cond2_1_730, %_cond2_2_731
  %_cond4_733 = icmp ule i8* %_pot_address_in_parent_stack_728, %_parent_stack_end_ptr_
  %_cond1_n_cond2_734 = and i1 %_cond1_729, %_cond2_732
  %_cond1_n_cond2_cond3_735 = and i1 %_cond1_n_cond2_734, %_cond4_733
  %_address_in_parent_stack_bt_737 = bitcast i8* %_pot_address_in_parent_stack_728 to i64*
  %126 = select i1 %_cond1_n_cond2_cond3_735, i64* %_address_in_parent_stack_bt_737, i64* %FPU_TAG_val
  %_new_load_738 = load i64, i64* %126, align 8
  store i64 %_new_load_738, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:127:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_10c1.27(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2036 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_2036, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !88
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !88
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !88
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !88
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !88
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !88
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !88
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !88
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !88
  store i64 %4, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !88
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !88
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !88
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !88
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !88
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !88
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !88
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !88
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !88
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !88
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !88
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !88
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !88
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !88
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !88
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !88
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !88
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !88
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !88
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !88
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !88
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !88
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !88
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !88
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !88
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !88
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !88
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !88
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !88
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !88
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !88
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !88
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !88
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !88
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !88
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !88
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !88
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !88
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !88
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !88
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !88
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !88
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !88
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !88
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !88
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !88
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !88
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !88
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !88
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !88
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !88
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !88
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !88
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !88
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !88
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !88
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !88
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !88
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !88
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !88
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !88
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !88
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !88
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !88
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !88
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !88
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !88
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !88
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !88
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !88
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !88
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !88
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !88
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !88
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !88
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !88
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !88
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !88
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !88
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !88
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !88
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !88
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !88
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !88
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !88
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !88
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !88
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !88
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !88
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !88
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !88
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !88
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !88
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !88
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !88
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !88
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !88
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !88
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !88
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !88
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !88
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !88
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !88
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !88
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !88
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !88
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !88
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !88
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !88
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !88
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !88
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !88
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !88
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !88
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !88
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !88
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !88
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !88
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !88
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !88
  %_offset_above_rbp_605 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_606 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_605
  %_cond1_607 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_608 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_609 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_610 = or i1 %_cond2_2_609, %_cond2_1_608
  %_cond4_611 = icmp ule i8* %_pot_address_in_parent_stack_606, %_parent_stack_end_ptr_
  %_cond1_n_cond2_612 = and i1 %_cond2_610, %_cond1_607
  %_cond1_n_cond2_cond3_613 = and i1 %_cond1_n_cond2_612, %_cond4_611
  %_address_in_parent_stack_bt_615 = bitcast i8* %_pot_address_in_parent_stack_606 to i32*
  %66 = select i1 %_cond1_n_cond2_cond3_613, i32* %_address_in_parent_stack_bt_615, i32* bitcast (%1* @data_0x24ea to i32*)
  %_new_load_616 = load i32, i32* %66, align 4
  %67 = icmp eq i32 %_new_load_616, 0, !mcsema_real_eip !89
  %68 = zext i1 %67 to i32
  store i32 %68, i32* bitcast (%1* @data_0x24ea to i32*), align 64, !mcsema_real_eip !90
  %69 = extractelement <2 x i64> %10, i32 0
  %70 = and i64 %69, 4294967295
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037, i64* %RSI_val, align 8
  %71 = tail call x86_64_sysvcc i64 @getopt_long(i64 %70, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %72 = add i64 %71, -86, !mcsema_real_eip !9
  %73 = trunc i64 %72 to i32
  %74 = and i64 %72, 4294967295
  %75 = icmp ult i32 %73, 33
  br i1 %75, label %block_0x108e, label %block_0x10a0.preheader, !mcsema_real_eip !10

block_0x10a0.preheader:                           ; preds = %entry
  br label %block_0x10a0

block_0x10a0:                                     ; preds = %block_0x10a0.preheader, %block_0x1070.backedge
  %76 = phi i64 [ %122, %block_0x1070.backedge ], [ %74, %block_0x10a0.preheader ]
  %77 = phi i64 [ %119, %block_0x1070.backedge ], [ %71, %block_0x10a0.preheader ]
  %78 = trunc i64 %77 to i32, !mcsema_real_eip !11
  switch i32 %78, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %entry
  %.lcssa2159 = phi i64 [ %74, %entry ], [ %122, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2159, 0
  br i1 %cond, label %block_0x1165, label %117

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %79 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %80 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %81 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %82 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, i64 1512)
  %83 = extractvalue { i64, i1 } %uadd, 0
  %84 = xor i64 %83, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, !mcsema_real_eip !21
  %85 = and i64 %84, 16, !mcsema_real_eip !21
  %86 = icmp ne i64 %85, 0, !mcsema_real_eip !21
  %87 = icmp slt i64 %83, 0
  %88 = icmp eq i64 %83, 0, !mcsema_real_eip !21
  %89 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, -9223372036854775808, !mcsema_real_eip !21
  %90 = and i64 %84, %89, !mcsema_real_eip !21
  %91 = icmp slt i64 %90, 0
  %92 = trunc i64 %83 to i8, !mcsema_real_eip !21
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !21
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %83 to i8*
  store volatile i64 %83, i64* %_RSP_ptr_.sroa.0, align 8
  %97 = inttoptr i64 %83 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_620 = sub i64 %83, %1
  %_pot_address_in_parent_stack_621 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_620
  %_cond1_622 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_623 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_624 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_625 = or i1 %_cond2_1_623, %_cond2_2_624
  %_cond4_626 = icmp ule i8* %_pot_address_in_parent_stack_621, %_parent_stack_end_ptr_
  %_cond1_n_cond2_627 = and i1 %_cond1_622, %_cond2_625
  %_cond1_n_cond2_cond3_628 = and i1 %_cond4_626, %_cond1_n_cond2_627
  %_address_in_parent_stack_bt_630 = bitcast i8* %_pot_address_in_parent_stack_621 to i64*
  %98 = select i1 %_cond1_n_cond2_cond3_628, i64* %_address_in_parent_stack_bt_630, i64* %97
  %_new_load_631 = load i64, i64* %98, align 8
  %99 = add i64 %83, 8, !mcsema_real_eip !22
  %_new_int2ptr_2 = inttoptr i64 %99 to i8*
  store volatile i64 %99, i64* %_RSP_ptr_.sroa.0, align 8
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_635 = sub i64 %99, %1
  %_pot_address_in_parent_stack_636 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_635
  %_cond1_637 = icmp ugt i8* %_new_int2ptr_2, %_local_stack_end_ptr_
  %_cond2_1_638 = icmp ugt i8* %_new_int2ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_639 = icmp ult i8* %_new_int2ptr_2, %_parent_stack_start_ptr_
  %_cond2_640 = or i1 %_cond2_1_638, %_cond2_2_639
  %_cond4_641 = icmp ule i8* %_pot_address_in_parent_stack_636, %_parent_stack_end_ptr_
  %_cond1_n_cond2_642 = and i1 %_cond1_637, %_cond2_640
  %_cond1_n_cond2_cond3_643 = and i1 %_cond4_641, %_cond1_n_cond2_642
  %_address_in_parent_stack_bt_645 = bitcast i8* %_pot_address_in_parent_stack_636 to i64*
  %101 = select i1 %_cond1_n_cond2_cond3_643, i64* %_address_in_parent_stack_bt_645, i64* %100
  %_new_load_646 = load i64, i64* %101, align 8
  %102 = add i64 %83, 16, !mcsema_real_eip !23
  %_new_int2ptr_3 = inttoptr i64 %102 to i8*
  store volatile i64 %102, i64* %_RSP_ptr_.sroa.0, align 8
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_650 = sub i64 %102, %1
  %_pot_address_in_parent_stack_651 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_650
  %_cond1_652 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_end_ptr_
  %_cond2_1_653 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_654 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_655 = or i1 %_cond2_1_653, %_cond2_2_654
  %_cond4_656 = icmp ule i8* %_pot_address_in_parent_stack_651, %_parent_stack_end_ptr_
  %_cond1_n_cond2_657 = and i1 %_cond1_652, %_cond2_655
  %_cond1_n_cond2_cond3_658 = and i1 %_cond4_656, %_cond1_n_cond2_657
  %_address_in_parent_stack_bt_660 = bitcast i8* %_pot_address_in_parent_stack_651 to i64*
  %104 = select i1 %_cond1_n_cond2_cond3_658, i64* %_address_in_parent_stack_bt_660, i64* %103
  %_new_load_661 = load i64, i64* %104, align 8
  %105 = add i64 %83, 24, !mcsema_real_eip !24
  %_new_int2ptr_4 = inttoptr i64 %105 to i8*
  store volatile i64 %105, i64* %_RSP_ptr_.sroa.0, align 8
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_665 = sub i64 %105, %1
  %_pot_address_in_parent_stack_666 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_665
  %_cond1_667 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_end_ptr_
  %_cond2_1_668 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_669 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_670 = or i1 %_cond2_1_668, %_cond2_2_669
  %_cond4_671 = icmp ule i8* %_pot_address_in_parent_stack_666, %_parent_stack_end_ptr_
  %_cond1_n_cond2_672 = and i1 %_cond1_667, %_cond2_670
  %_cond1_n_cond2_cond3_673 = and i1 %_cond4_671, %_cond1_n_cond2_672
  %_address_in_parent_stack_bt_675 = bitcast i8* %_pot_address_in_parent_stack_666 to i64*
  %107 = select i1 %_cond1_n_cond2_cond3_673, i64* %_address_in_parent_stack_bt_675, i64* %106
  %_new_load_676 = load i64, i64* %107, align 8
  %108 = add i64 %83, 32, !mcsema_real_eip !25
  %_new_int2ptr_5 = inttoptr i64 %108 to i8*
  store volatile i64 %108, i64* %_RSP_ptr_.sroa.0, align 8
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_680 = sub i64 %108, %1
  %_pot_address_in_parent_stack_681 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_680
  %_cond1_682 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_end_ptr_
  %_cond2_1_683 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_684 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_685 = or i1 %_cond2_1_683, %_cond2_2_684
  %_cond4_686 = icmp ule i8* %_pot_address_in_parent_stack_681, %_parent_stack_end_ptr_
  %_cond1_n_cond2_687 = and i1 %_cond1_682, %_cond2_685
  %_cond1_n_cond2_cond3_688 = and i1 %_cond4_686, %_cond1_n_cond2_687
  %_address_in_parent_stack_bt_690 = bitcast i8* %_pot_address_in_parent_stack_681 to i64*
  %110 = select i1 %_cond1_n_cond2_cond3_688, i64* %_address_in_parent_stack_bt_690, i64* %109
  %_new_load_691 = load i64, i64* %110, align 8
  %111 = add i64 %83, 40, !mcsema_real_eip !26
  %_new_int2ptr_6 = inttoptr i64 %111 to i8*
  store volatile i64 %111, i64* %_RSP_ptr_.sroa.0, align 8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_695 = sub i64 %111, %1
  %_pot_address_in_parent_stack_696 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_695
  %_cond1_697 = icmp ugt i8* %_new_int2ptr_6, %_local_stack_end_ptr_
  %_cond2_1_698 = icmp ugt i8* %_new_int2ptr_6, %_parent_stack_end_ptr_
  %_cond2_2_699 = icmp ult i8* %_new_int2ptr_6, %_parent_stack_start_ptr_
  %_cond2_700 = or i1 %_cond2_1_698, %_cond2_2_699
  %_cond4_701 = icmp ule i8* %_pot_address_in_parent_stack_696, %_parent_stack_end_ptr_
  %_cond1_n_cond2_702 = and i1 %_cond1_697, %_cond2_700
  %_cond1_n_cond2_cond3_703 = and i1 %_cond4_701, %_cond1_n_cond2_702
  %_address_in_parent_stack_bt_705 = bitcast i8* %_pot_address_in_parent_stack_696 to i64*
  %113 = select i1 %_cond1_n_cond2_cond3_703, i64* %_address_in_parent_stack_bt_705, i64* %112
  %_new_load_70621482149 = load i64, i64* %113, align 8
  store volatile i64 %_new_load_70621482149, i64* %_RBP_ptr_.sroa.0, align 8
  %114 = add i64 %83, 56
  store volatile i64 %114, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_631, i64* %RBX, align 8, !mcsema_real_eip !28
  %115 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %115, align 8
  %RSI_val.0.RSI_val.0.283 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.283, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %114, i64* %RSP, align 8
  store volatile i64 %_new_load_70621482149, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_646, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_661, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_676, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_691, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %88, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_707 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_709 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_710 = sub i64 %_ptr_to_int_707, %1
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ugt i8* %_ptr_bt_709, %_local_stack_end_ptr_
  %_cond2_1_713 = icmp ugt i8* %_ptr_bt_709, %_parent_stack_end_ptr_
  %_cond2_2_714 = icmp ult i8* %_ptr_bt_709, %_parent_stack_start_ptr_
  %_cond2_715 = or i1 %_cond2_1_713, %_cond2_2_714
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond1_712, %_cond2_715
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_bt_720 = bitcast i8* %_pot_address_in_parent_stack_711 to i64*
  %116 = select i1 %_cond1_n_cond2_cond3_718, i64* %_address_in_parent_stack_bt_720, i64* %FPU_TAG_val
  %_new_load_721 = load i64, i64* %116, align 8
  store i64 %_new_load_721, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:117:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_734 = load i32, i32* %66, align 4
  %118 = icmp ult i32 %_new_load_734, 10
  br i1 %118, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037, i64* %RSI_val, align 8
  %119 = tail call x86_64_sysvcc i64 @getopt_long(i64 %70, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %120 = add i64 %119, -86, !mcsema_real_eip !9
  %121 = trunc i64 %120 to i32
  %122 = and i64 %120, 4294967295
  %123 = icmp ult i32 %121, 33
  br i1 %123, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond2779 = icmp eq i32 %_new_load_734, 0
  br i1 %cond2779, label %block_0x1165, label %131

block_0x11de:                                     ; preds = %block_0x10a0
  %124 = and i32 %78, 16
  %125 = icmp eq i32 %124, 0
  %126 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132156 = load i8*, i8** %126, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132156, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !15
  %127 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %127, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %76, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.282 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.282, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 %70, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %127, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162039 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162039, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  %128 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %128, align 8
  %129 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %129, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %125, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_735 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_737 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_738 = sub i64 %_ptr_to_int_735, %1
  %_pot_address_in_parent_stack_739 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_738
  %_cond1_740 = icmp ugt i8* %_ptr_bt_737, %_local_stack_end_ptr_
  %_cond2_1_741 = icmp ugt i8* %_ptr_bt_737, %_parent_stack_end_ptr_
  %_cond2_2_742 = icmp ult i8* %_ptr_bt_737, %_parent_stack_start_ptr_
  %_cond2_743 = or i1 %_cond2_1_741, %_cond2_2_742
  %_cond4_744 = icmp ule i8* %_pot_address_in_parent_stack_739, %_parent_stack_end_ptr_
  %_cond1_n_cond2_745 = and i1 %_cond1_740, %_cond2_743
  %_cond1_n_cond2_cond3_746 = and i1 %_cond1_n_cond2_745, %_cond4_744
  %_address_in_parent_stack_bt_748 = bitcast i8* %_pot_address_in_parent_stack_739 to i64*
  %130 = select i1 %_cond1_n_cond2_cond3_746, i64* %_address_in_parent_stack_bt_748, i64* %FPU_TAG_val
  %_new_load_749 = load i64, i64* %130, align 8
  store i64 %_new_load_749, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:131:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_10d5.28(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2036 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_2036, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !91
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !91
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !91
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !91
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !91
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !91
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !91
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !91
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !91
  store i64 %4, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !91
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !91
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !91
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !91
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !91
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !91
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !91
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !91
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !91
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !91
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !91
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !91
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !91
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !91
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !91
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !91
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !91
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !91
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !91
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !91
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !91
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !91
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !91
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !91
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !91
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !91
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !91
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !91
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !91
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !91
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !91
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !91
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !91
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !91
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !91
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !91
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !91
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !91
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !91
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !91
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !91
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !91
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !91
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !91
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !91
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !91
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !91
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !91
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !91
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !91
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !91
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !91
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !91
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !91
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !91
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !91
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !91
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !91
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !91
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !91
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !91
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !91
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !91
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !91
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !91
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !91
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !91
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !91
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !91
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !91
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !91
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !91
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !91
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !91
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !91
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !91
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !91
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !91
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !91
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !91
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !91
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !91
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !91
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !91
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !91
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !91
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !91
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !91
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !91
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !91
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !91
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !91
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !91
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !91
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !91
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !91
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !91
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !91
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !91
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !91
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !91
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !91
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !91
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !91
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !91
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !91
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !91
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !91
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !91
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !91
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !91
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !91
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !91
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !91
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !91
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !91
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !91
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !91
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !91
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !91
  %_offset_above_rbp_605 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_606 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_605
  %_cond1_607 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_608 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_609 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_610 = or i1 %_cond2_2_609, %_cond2_1_608
  %_cond4_611 = icmp ule i8* %_pot_address_in_parent_stack_606, %_parent_stack_end_ptr_
  %_cond1_n_cond2_612 = and i1 %_cond2_610, %_cond1_607
  %_cond1_n_cond2_cond3_613 = and i1 %_cond1_n_cond2_612, %_cond4_611
  %_address_in_parent_stack_bt_615 = bitcast i8* %_pot_address_in_parent_stack_606 to i32*
  %66 = select i1 %_cond1_n_cond2_cond3_613, i32* %_address_in_parent_stack_bt_615, i32* bitcast (%1* @data_0x24ea to i32*)
  %_new_load_616 = load i32, i32* %66, align 4
  %67 = icmp eq i32 %_new_load_616, 0, !mcsema_real_eip !92
  %68 = zext i1 %67 to i32
  store i32 %68, i32* bitcast (%1* @data_0x24ea to i32*), align 64, !mcsema_real_eip !93
  %69 = extractelement <2 x i64> %10, i32 0
  %70 = and i64 %69, 4294967295
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037, i64* %RSI_val, align 8
  %71 = tail call x86_64_sysvcc i64 @getopt_long(i64 %70, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %72 = add i64 %71, -86, !mcsema_real_eip !9
  %73 = trunc i64 %72 to i32
  %74 = and i64 %72, 4294967295
  %75 = icmp ult i32 %73, 33
  br i1 %75, label %block_0x108e, label %block_0x10a0.preheader, !mcsema_real_eip !10

block_0x10a0.preheader:                           ; preds = %entry
  br label %block_0x10a0

block_0x10a0:                                     ; preds = %block_0x10a0.preheader, %block_0x1070.backedge
  %76 = phi i64 [ %122, %block_0x1070.backedge ], [ %74, %block_0x10a0.preheader ]
  %77 = phi i64 [ %119, %block_0x1070.backedge ], [ %71, %block_0x10a0.preheader ]
  %78 = trunc i64 %77 to i32, !mcsema_real_eip !11
  switch i32 %78, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %entry
  %.lcssa2159 = phi i64 [ %74, %entry ], [ %122, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2159, 0
  br i1 %cond, label %block_0x1165, label %117

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %79 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %80 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %81 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %82 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, i64 1512)
  %83 = extractvalue { i64, i1 } %uadd, 0
  %84 = xor i64 %83, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, !mcsema_real_eip !21
  %85 = and i64 %84, 16, !mcsema_real_eip !21
  %86 = icmp ne i64 %85, 0, !mcsema_real_eip !21
  %87 = icmp slt i64 %83, 0
  %88 = icmp eq i64 %83, 0, !mcsema_real_eip !21
  %89 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, -9223372036854775808, !mcsema_real_eip !21
  %90 = and i64 %84, %89, !mcsema_real_eip !21
  %91 = icmp slt i64 %90, 0
  %92 = trunc i64 %83 to i8, !mcsema_real_eip !21
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !21
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %83 to i8*
  store volatile i64 %83, i64* %_RSP_ptr_.sroa.0, align 8
  %97 = inttoptr i64 %83 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_620 = sub i64 %83, %1
  %_pot_address_in_parent_stack_621 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_620
  %_cond1_622 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_623 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_624 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_625 = or i1 %_cond2_1_623, %_cond2_2_624
  %_cond4_626 = icmp ule i8* %_pot_address_in_parent_stack_621, %_parent_stack_end_ptr_
  %_cond1_n_cond2_627 = and i1 %_cond1_622, %_cond2_625
  %_cond1_n_cond2_cond3_628 = and i1 %_cond4_626, %_cond1_n_cond2_627
  %_address_in_parent_stack_bt_630 = bitcast i8* %_pot_address_in_parent_stack_621 to i64*
  %98 = select i1 %_cond1_n_cond2_cond3_628, i64* %_address_in_parent_stack_bt_630, i64* %97
  %_new_load_631 = load i64, i64* %98, align 8
  %99 = add i64 %83, 8, !mcsema_real_eip !22
  %_new_int2ptr_2 = inttoptr i64 %99 to i8*
  store volatile i64 %99, i64* %_RSP_ptr_.sroa.0, align 8
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_635 = sub i64 %99, %1
  %_pot_address_in_parent_stack_636 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_635
  %_cond1_637 = icmp ugt i8* %_new_int2ptr_2, %_local_stack_end_ptr_
  %_cond2_1_638 = icmp ugt i8* %_new_int2ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_639 = icmp ult i8* %_new_int2ptr_2, %_parent_stack_start_ptr_
  %_cond2_640 = or i1 %_cond2_1_638, %_cond2_2_639
  %_cond4_641 = icmp ule i8* %_pot_address_in_parent_stack_636, %_parent_stack_end_ptr_
  %_cond1_n_cond2_642 = and i1 %_cond1_637, %_cond2_640
  %_cond1_n_cond2_cond3_643 = and i1 %_cond4_641, %_cond1_n_cond2_642
  %_address_in_parent_stack_bt_645 = bitcast i8* %_pot_address_in_parent_stack_636 to i64*
  %101 = select i1 %_cond1_n_cond2_cond3_643, i64* %_address_in_parent_stack_bt_645, i64* %100
  %_new_load_646 = load i64, i64* %101, align 8
  %102 = add i64 %83, 16, !mcsema_real_eip !23
  %_new_int2ptr_3 = inttoptr i64 %102 to i8*
  store volatile i64 %102, i64* %_RSP_ptr_.sroa.0, align 8
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_650 = sub i64 %102, %1
  %_pot_address_in_parent_stack_651 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_650
  %_cond1_652 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_end_ptr_
  %_cond2_1_653 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_654 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_655 = or i1 %_cond2_1_653, %_cond2_2_654
  %_cond4_656 = icmp ule i8* %_pot_address_in_parent_stack_651, %_parent_stack_end_ptr_
  %_cond1_n_cond2_657 = and i1 %_cond1_652, %_cond2_655
  %_cond1_n_cond2_cond3_658 = and i1 %_cond4_656, %_cond1_n_cond2_657
  %_address_in_parent_stack_bt_660 = bitcast i8* %_pot_address_in_parent_stack_651 to i64*
  %104 = select i1 %_cond1_n_cond2_cond3_658, i64* %_address_in_parent_stack_bt_660, i64* %103
  %_new_load_661 = load i64, i64* %104, align 8
  %105 = add i64 %83, 24, !mcsema_real_eip !24
  %_new_int2ptr_4 = inttoptr i64 %105 to i8*
  store volatile i64 %105, i64* %_RSP_ptr_.sroa.0, align 8
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_665 = sub i64 %105, %1
  %_pot_address_in_parent_stack_666 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_665
  %_cond1_667 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_end_ptr_
  %_cond2_1_668 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_669 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_670 = or i1 %_cond2_1_668, %_cond2_2_669
  %_cond4_671 = icmp ule i8* %_pot_address_in_parent_stack_666, %_parent_stack_end_ptr_
  %_cond1_n_cond2_672 = and i1 %_cond1_667, %_cond2_670
  %_cond1_n_cond2_cond3_673 = and i1 %_cond4_671, %_cond1_n_cond2_672
  %_address_in_parent_stack_bt_675 = bitcast i8* %_pot_address_in_parent_stack_666 to i64*
  %107 = select i1 %_cond1_n_cond2_cond3_673, i64* %_address_in_parent_stack_bt_675, i64* %106
  %_new_load_676 = load i64, i64* %107, align 8
  %108 = add i64 %83, 32, !mcsema_real_eip !25
  %_new_int2ptr_5 = inttoptr i64 %108 to i8*
  store volatile i64 %108, i64* %_RSP_ptr_.sroa.0, align 8
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_680 = sub i64 %108, %1
  %_pot_address_in_parent_stack_681 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_680
  %_cond1_682 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_end_ptr_
  %_cond2_1_683 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_684 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_685 = or i1 %_cond2_1_683, %_cond2_2_684
  %_cond4_686 = icmp ule i8* %_pot_address_in_parent_stack_681, %_parent_stack_end_ptr_
  %_cond1_n_cond2_687 = and i1 %_cond1_682, %_cond2_685
  %_cond1_n_cond2_cond3_688 = and i1 %_cond4_686, %_cond1_n_cond2_687
  %_address_in_parent_stack_bt_690 = bitcast i8* %_pot_address_in_parent_stack_681 to i64*
  %110 = select i1 %_cond1_n_cond2_cond3_688, i64* %_address_in_parent_stack_bt_690, i64* %109
  %_new_load_691 = load i64, i64* %110, align 8
  %111 = add i64 %83, 40, !mcsema_real_eip !26
  %_new_int2ptr_6 = inttoptr i64 %111 to i8*
  store volatile i64 %111, i64* %_RSP_ptr_.sroa.0, align 8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_695 = sub i64 %111, %1
  %_pot_address_in_parent_stack_696 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_695
  %_cond1_697 = icmp ugt i8* %_new_int2ptr_6, %_local_stack_end_ptr_
  %_cond2_1_698 = icmp ugt i8* %_new_int2ptr_6, %_parent_stack_end_ptr_
  %_cond2_2_699 = icmp ult i8* %_new_int2ptr_6, %_parent_stack_start_ptr_
  %_cond2_700 = or i1 %_cond2_1_698, %_cond2_2_699
  %_cond4_701 = icmp ule i8* %_pot_address_in_parent_stack_696, %_parent_stack_end_ptr_
  %_cond1_n_cond2_702 = and i1 %_cond1_697, %_cond2_700
  %_cond1_n_cond2_cond3_703 = and i1 %_cond4_701, %_cond1_n_cond2_702
  %_address_in_parent_stack_bt_705 = bitcast i8* %_pot_address_in_parent_stack_696 to i64*
  %113 = select i1 %_cond1_n_cond2_cond3_703, i64* %_address_in_parent_stack_bt_705, i64* %112
  %_new_load_70621482149 = load i64, i64* %113, align 8
  store volatile i64 %_new_load_70621482149, i64* %_RBP_ptr_.sroa.0, align 8
  %114 = add i64 %83, 56
  store volatile i64 %114, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_631, i64* %RBX, align 8, !mcsema_real_eip !28
  %115 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %115, align 8
  %RSI_val.0.RSI_val.0.283 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.283, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %114, i64* %RSP, align 8
  store volatile i64 %_new_load_70621482149, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_646, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_661, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_676, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_691, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %88, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_707 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_709 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_710 = sub i64 %_ptr_to_int_707, %1
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ugt i8* %_ptr_bt_709, %_local_stack_end_ptr_
  %_cond2_1_713 = icmp ugt i8* %_ptr_bt_709, %_parent_stack_end_ptr_
  %_cond2_2_714 = icmp ult i8* %_ptr_bt_709, %_parent_stack_start_ptr_
  %_cond2_715 = or i1 %_cond2_1_713, %_cond2_2_714
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond1_712, %_cond2_715
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_bt_720 = bitcast i8* %_pot_address_in_parent_stack_711 to i64*
  %116 = select i1 %_cond1_n_cond2_cond3_718, i64* %_address_in_parent_stack_bt_720, i64* %FPU_TAG_val
  %_new_load_721 = load i64, i64* %116, align 8
  store i64 %_new_load_721, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:117:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_734 = load i32, i32* %66, align 4
  %118 = icmp ult i32 %_new_load_734, 10
  br i1 %118, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037, i64* %RSI_val, align 8
  %119 = tail call x86_64_sysvcc i64 @getopt_long(i64 %70, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %120 = add i64 %119, -86, !mcsema_real_eip !9
  %121 = trunc i64 %120 to i32
  %122 = and i64 %120, 4294967295
  %123 = icmp ult i32 %121, 33
  br i1 %123, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond2779 = icmp eq i32 %_new_load_734, 0
  br i1 %cond2779, label %block_0x1165, label %131

block_0x11de:                                     ; preds = %block_0x10a0
  %124 = and i32 %78, 16
  %125 = icmp eq i32 %124, 0
  %126 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132156 = load i8*, i8** %126, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132156, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !15
  %127 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %127, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %76, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.282 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.282, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 %70, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %127, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162039 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162039, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  %128 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %128, align 8
  %129 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %129, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %125, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_735 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_737 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_738 = sub i64 %_ptr_to_int_735, %1
  %_pot_address_in_parent_stack_739 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_738
  %_cond1_740 = icmp ugt i8* %_ptr_bt_737, %_local_stack_end_ptr_
  %_cond2_1_741 = icmp ugt i8* %_ptr_bt_737, %_parent_stack_end_ptr_
  %_cond2_2_742 = icmp ult i8* %_ptr_bt_737, %_parent_stack_start_ptr_
  %_cond2_743 = or i1 %_cond2_1_741, %_cond2_2_742
  %_cond4_744 = icmp ule i8* %_pot_address_in_parent_stack_739, %_parent_stack_end_ptr_
  %_cond1_n_cond2_745 = and i1 %_cond1_740, %_cond2_743
  %_cond1_n_cond2_cond3_746 = and i1 %_cond1_n_cond2_745, %_cond4_744
  %_address_in_parent_stack_bt_748 = bitcast i8* %_pot_address_in_parent_stack_739 to i64*
  %130 = select i1 %_cond1_n_cond2_cond3_746, i64* %_address_in_parent_stack_bt_748, i64* %FPU_TAG_val
  %_new_load_749 = load i64, i64* %130, align 8
  store i64 %_new_load_749, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:131:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_10e9.29(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2035 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_2035, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !94
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !94
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !94
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !94
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !94
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !94
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !94
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !94
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !94
  store i64 %4, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !94
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !94
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !94
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !94
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !94
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !94
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !94
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !94
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !94
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !94
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !94
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !94
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !94
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !94
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !94
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !94
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !94
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !94
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !94
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !94
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !94
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !94
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !94
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !94
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !94
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !94
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !94
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !94
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !94
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !94
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !94
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !94
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !94
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !94
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !94
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !94
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !94
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !94
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !94
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !94
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !94
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !94
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !94
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !94
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !94
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !94
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !94
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !94
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !94
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !94
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !94
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !94
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !94
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !94
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !94
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !94
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !94
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !94
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !94
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !94
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !94
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !94
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !94
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !94
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !94
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !94
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !94
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !94
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !94
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !94
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !94
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !94
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !94
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !94
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !94
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !94
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !94
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !94
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !94
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !94
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !94
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !94
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !94
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !94
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !94
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !94
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !94
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !94
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !94
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !94
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !94
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !94
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !94
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !94
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !94
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !94
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !94
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !94
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !94
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !94
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !94
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !94
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !94
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !94
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !94
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !94
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !94
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !94
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !94
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !94
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !94
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !94
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !94
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !94
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !94
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !94
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !94
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !94
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !94
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !94
  store i8 1, i8* getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0), align 64, !mcsema_real_eip !94
  %66 = extractelement <2 x i64> %10, i32 0
  %67 = and i64 %66, 4294967295
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036, i64* %RSI_val, align 8
  %68 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %69 = add i64 %68, -86, !mcsema_real_eip !9
  %70 = trunc i64 %69 to i32
  %71 = and i64 %69, 4294967295
  %72 = icmp ult i32 %70, 33
  br i1 %72, label %block_0x108e, label %block_0x10a0.lr.ph, !mcsema_real_eip !10

block_0x10a0.lr.ph:                               ; preds = %entry
  %_offset_above_rbp_710 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_713 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_714 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_715 = or i1 %_cond2_2_714, %_cond2_1_713
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond2_715, %_cond1_712
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_bt_720 = bitcast i8* %_pot_address_in_parent_stack_711 to i32*
  %73 = select i1 %_cond1_n_cond2_cond3_718, i32* %_address_in_parent_stack_bt_720, i32* bitcast (%1* @data_0x24ea to i32*)
  br label %block_0x10a0

block_0x10a0:                                     ; preds = %block_0x10a0.lr.ph, %block_0x1070.backedge
  %74 = phi i64 [ %71, %block_0x10a0.lr.ph ], [ %120, %block_0x1070.backedge ]
  %75 = phi i64 [ %68, %block_0x10a0.lr.ph ], [ %117, %block_0x1070.backedge ]
  %76 = trunc i64 %75 to i32, !mcsema_real_eip !11
  switch i32 %76, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %entry
  %.lcssa2158 = phi i64 [ %71, %entry ], [ %120, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2158, 0
  br i1 %cond, label %block_0x1165, label %115

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %77 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %78 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %79 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %80 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, i64 1512)
  %81 = extractvalue { i64, i1 } %uadd, 0
  %82 = xor i64 %81, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, !mcsema_real_eip !21
  %83 = and i64 %82, 16, !mcsema_real_eip !21
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !21
  %85 = icmp slt i64 %81, 0
  %86 = icmp eq i64 %81, 0, !mcsema_real_eip !21
  %87 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, -9223372036854775808, !mcsema_real_eip !21
  %88 = and i64 %82, %87, !mcsema_real_eip !21
  %89 = icmp slt i64 %88, 0
  %90 = trunc i64 %81 to i8, !mcsema_real_eip !21
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !21
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  %94 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %81 to i8*
  store volatile i64 %81, i64* %_RSP_ptr_.sroa.0, align 8
  %95 = inttoptr i64 %81 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_607 = sub i64 %81, %1
  %_pot_address_in_parent_stack_608 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_607
  %_cond1_609 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_610 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_611 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_612 = or i1 %_cond2_1_610, %_cond2_2_611
  %_cond4_613 = icmp ule i8* %_pot_address_in_parent_stack_608, %_parent_stack_end_ptr_
  %_cond1_n_cond2_614 = and i1 %_cond1_609, %_cond2_612
  %_cond1_n_cond2_cond3_615 = and i1 %_cond4_613, %_cond1_n_cond2_614
  %_address_in_parent_stack_bt_617 = bitcast i8* %_pot_address_in_parent_stack_608 to i64*
  %96 = select i1 %_cond1_n_cond2_cond3_615, i64* %_address_in_parent_stack_bt_617, i64* %95
  %_new_load_618 = load i64, i64* %96, align 8
  %97 = add i64 %81, 8, !mcsema_real_eip !22
  %_new_int2ptr_2 = inttoptr i64 %97 to i8*
  store volatile i64 %97, i64* %_RSP_ptr_.sroa.0, align 8
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_622 = sub i64 %97, %1
  %_pot_address_in_parent_stack_623 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_622
  %_cond1_624 = icmp ugt i8* %_new_int2ptr_2, %_local_stack_end_ptr_
  %_cond2_1_625 = icmp ugt i8* %_new_int2ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_626 = icmp ult i8* %_new_int2ptr_2, %_parent_stack_start_ptr_
  %_cond2_627 = or i1 %_cond2_1_625, %_cond2_2_626
  %_cond4_628 = icmp ule i8* %_pot_address_in_parent_stack_623, %_parent_stack_end_ptr_
  %_cond1_n_cond2_629 = and i1 %_cond1_624, %_cond2_627
  %_cond1_n_cond2_cond3_630 = and i1 %_cond4_628, %_cond1_n_cond2_629
  %_address_in_parent_stack_bt_632 = bitcast i8* %_pot_address_in_parent_stack_623 to i64*
  %99 = select i1 %_cond1_n_cond2_cond3_630, i64* %_address_in_parent_stack_bt_632, i64* %98
  %_new_load_633 = load i64, i64* %99, align 8
  %100 = add i64 %81, 16, !mcsema_real_eip !23
  %_new_int2ptr_3 = inttoptr i64 %100 to i8*
  store volatile i64 %100, i64* %_RSP_ptr_.sroa.0, align 8
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_637 = sub i64 %100, %1
  %_pot_address_in_parent_stack_638 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_637
  %_cond1_639 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_end_ptr_
  %_cond2_1_640 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_641 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_642 = or i1 %_cond2_1_640, %_cond2_2_641
  %_cond4_643 = icmp ule i8* %_pot_address_in_parent_stack_638, %_parent_stack_end_ptr_
  %_cond1_n_cond2_644 = and i1 %_cond1_639, %_cond2_642
  %_cond1_n_cond2_cond3_645 = and i1 %_cond4_643, %_cond1_n_cond2_644
  %_address_in_parent_stack_bt_647 = bitcast i8* %_pot_address_in_parent_stack_638 to i64*
  %102 = select i1 %_cond1_n_cond2_cond3_645, i64* %_address_in_parent_stack_bt_647, i64* %101
  %_new_load_648 = load i64, i64* %102, align 8
  %103 = add i64 %81, 24, !mcsema_real_eip !24
  %_new_int2ptr_4 = inttoptr i64 %103 to i8*
  store volatile i64 %103, i64* %_RSP_ptr_.sroa.0, align 8
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_652 = sub i64 %103, %1
  %_pot_address_in_parent_stack_653 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_652
  %_cond1_654 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond4_658, %_cond1_n_cond2_659
  %_address_in_parent_stack_bt_662 = bitcast i8* %_pot_address_in_parent_stack_653 to i64*
  %105 = select i1 %_cond1_n_cond2_cond3_660, i64* %_address_in_parent_stack_bt_662, i64* %104
  %_new_load_663 = load i64, i64* %105, align 8
  %106 = add i64 %81, 32, !mcsema_real_eip !25
  %_new_int2ptr_5 = inttoptr i64 %106 to i8*
  store volatile i64 %106, i64* %_RSP_ptr_.sroa.0, align 8
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_667 = sub i64 %106, %1
  %_pot_address_in_parent_stack_668 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_667
  %_cond1_669 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_end_ptr_
  %_cond2_1_670 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_671 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_672 = or i1 %_cond2_1_670, %_cond2_2_671
  %_cond4_673 = icmp ule i8* %_pot_address_in_parent_stack_668, %_parent_stack_end_ptr_
  %_cond1_n_cond2_674 = and i1 %_cond1_669, %_cond2_672
  %_cond1_n_cond2_cond3_675 = and i1 %_cond4_673, %_cond1_n_cond2_674
  %_address_in_parent_stack_bt_677 = bitcast i8* %_pot_address_in_parent_stack_668 to i64*
  %108 = select i1 %_cond1_n_cond2_cond3_675, i64* %_address_in_parent_stack_bt_677, i64* %107
  %_new_load_678 = load i64, i64* %108, align 8
  %109 = add i64 %81, 40, !mcsema_real_eip !26
  %_new_int2ptr_6 = inttoptr i64 %109 to i8*
  store volatile i64 %109, i64* %_RSP_ptr_.sroa.0, align 8
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_682 = sub i64 %109, %1
  %_pot_address_in_parent_stack_683 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_682
  %_cond1_684 = icmp ugt i8* %_new_int2ptr_6, %_local_stack_end_ptr_
  %_cond2_1_685 = icmp ugt i8* %_new_int2ptr_6, %_parent_stack_end_ptr_
  %_cond2_2_686 = icmp ult i8* %_new_int2ptr_6, %_parent_stack_start_ptr_
  %_cond2_687 = or i1 %_cond2_1_685, %_cond2_2_686
  %_cond4_688 = icmp ule i8* %_pot_address_in_parent_stack_683, %_parent_stack_end_ptr_
  %_cond1_n_cond2_689 = and i1 %_cond1_684, %_cond2_687
  %_cond1_n_cond2_cond3_690 = and i1 %_cond4_688, %_cond1_n_cond2_689
  %_address_in_parent_stack_bt_692 = bitcast i8* %_pot_address_in_parent_stack_683 to i64*
  %111 = select i1 %_cond1_n_cond2_cond3_690, i64* %_address_in_parent_stack_bt_692, i64* %110
  %_new_load_69321472148 = load i64, i64* %111, align 8
  store volatile i64 %_new_load_69321472148, i64* %_RBP_ptr_.sroa.0, align 8
  %112 = add i64 %81, 56
  store volatile i64 %112, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_618, i64* %RBX, align 8, !mcsema_real_eip !28
  %113 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %113, align 8
  %RSI_val.0.RSI_val.0.282 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.282, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %112, i64* %RSP, align 8
  store volatile i64 %_new_load_69321472148, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_633, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_648, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_663, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_678, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_694 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_696 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_697 = sub i64 %_ptr_to_int_694, %1
  %_pot_address_in_parent_stack_698 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_697
  %_cond1_699 = icmp ugt i8* %_ptr_bt_696, %_local_stack_end_ptr_
  %_cond2_1_700 = icmp ugt i8* %_ptr_bt_696, %_parent_stack_end_ptr_
  %_cond2_2_701 = icmp ult i8* %_ptr_bt_696, %_parent_stack_start_ptr_
  %_cond2_702 = or i1 %_cond2_1_700, %_cond2_2_701
  %_cond4_703 = icmp ule i8* %_pot_address_in_parent_stack_698, %_parent_stack_end_ptr_
  %_cond1_n_cond2_704 = and i1 %_cond1_699, %_cond2_702
  %_cond1_n_cond2_cond3_705 = and i1 %_cond1_n_cond2_704, %_cond4_703
  %_address_in_parent_stack_bt_707 = bitcast i8* %_pot_address_in_parent_stack_698 to i64*
  %114 = select i1 %_cond1_n_cond2_cond3_705, i64* %_address_in_parent_stack_bt_707, i64* %FPU_TAG_val
  %_new_load_708 = load i64, i64* %114, align 8
  store i64 %_new_load_708, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:115:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_721 = load i32, i32* %73, align 4
  %116 = icmp ult i32 %_new_load_721, 10
  br i1 %116, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036, i64* %RSI_val, align 8
  %117 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %118 = add i64 %117, -86, !mcsema_real_eip !9
  %119 = trunc i64 %118 to i32
  %120 = and i64 %118, 4294967295
  %121 = icmp ult i32 %119, 33
  br i1 %121, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond2779 = icmp eq i32 %_new_load_721, 0
  br i1 %cond2779, label %block_0x1165, label %129

block_0x11de:                                     ; preds = %block_0x10a0
  %122 = and i32 %76, 16
  %123 = icmp eq i32 %122, 0
  %124 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132155 = load i8*, i8** %124, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132155, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !15
  %125 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %125, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %74, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.281 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.281, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 %67, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %125, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162038 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162038, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  %126 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %126, align 8
  %127 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %127, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_722 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_724 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_725 = sub i64 %_ptr_to_int_722, %1
  %_pot_address_in_parent_stack_726 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_725
  %_cond1_727 = icmp ugt i8* %_ptr_bt_724, %_local_stack_end_ptr_
  %_cond2_1_728 = icmp ugt i8* %_ptr_bt_724, %_parent_stack_end_ptr_
  %_cond2_2_729 = icmp ult i8* %_ptr_bt_724, %_parent_stack_start_ptr_
  %_cond2_730 = or i1 %_cond2_1_728, %_cond2_2_729
  %_cond4_731 = icmp ule i8* %_pot_address_in_parent_stack_726, %_parent_stack_end_ptr_
  %_cond1_n_cond2_732 = and i1 %_cond1_727, %_cond2_730
  %_cond1_n_cond2_cond3_733 = and i1 %_cond1_n_cond2_732, %_cond4_731
  %_address_in_parent_stack_bt_735 = bitcast i8* %_pot_address_in_parent_stack_726 to i64*
  %128 = select i1 %_cond1_n_cond2_cond3_733, i64* %_address_in_parent_stack_bt_735, i64* %FPU_TAG_val
  %_new_load_736 = load i64, i64* %128, align 8
  store i64 %_new_load_736, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:129:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_10f5.30(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2035 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_2035, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !95
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !95
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !95
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !95
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !95
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !95
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !95
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !95
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !95
  store i64 %4, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !95
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !95
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !95
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !95
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !95
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !95
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !95
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !95
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !95
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !95
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !95
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !95
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !95
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !95
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !95
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !95
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !95
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !95
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !95
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !95
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !95
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !95
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !95
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !95
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !95
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !95
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !95
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !95
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !95
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !95
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !95
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !95
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !95
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !95
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !95
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !95
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !95
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !95
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !95
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !95
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !95
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !95
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !95
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !95
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !95
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !95
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !95
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !95
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !95
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !95
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !95
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !95
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !95
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !95
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !95
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !95
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !95
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !95
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !95
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !95
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !95
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !95
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !95
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !95
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !95
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !95
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !95
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !95
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !95
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !95
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !95
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !95
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !95
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !95
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !95
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !95
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !95
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !95
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !95
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !95
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !95
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !95
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !95
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !95
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !95
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !95
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !95
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !95
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !95
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !95
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !95
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !95
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !95
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !95
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !95
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !95
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !95
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !95
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !95
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !95
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !95
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !95
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !95
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !95
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !95
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !95
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !95
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !95
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !95
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !95
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !95
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !95
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !95
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !95
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !95
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !95
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !95
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !95
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !95
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !95
  store i8 1, i8* getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0), align 64, !mcsema_real_eip !95
  %66 = extractelement <2 x i64> %10, i32 0
  %67 = and i64 %66, 4294967295
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036, i64* %RSI_val, align 8
  %68 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %69 = add i64 %68, -86, !mcsema_real_eip !9
  %70 = trunc i64 %69 to i32
  %71 = and i64 %69, 4294967295
  %72 = icmp ult i32 %70, 33
  br i1 %72, label %block_0x108e, label %block_0x10a0.lr.ph, !mcsema_real_eip !10

block_0x10a0.lr.ph:                               ; preds = %entry
  %_offset_above_rbp_710 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_713 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_714 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_715 = or i1 %_cond2_2_714, %_cond2_1_713
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond2_715, %_cond1_712
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_bt_720 = bitcast i8* %_pot_address_in_parent_stack_711 to i32*
  %73 = select i1 %_cond1_n_cond2_cond3_718, i32* %_address_in_parent_stack_bt_720, i32* bitcast (%1* @data_0x24ea to i32*)
  br label %block_0x10a0

block_0x10a0:                                     ; preds = %block_0x10a0.lr.ph, %block_0x1070.backedge
  %74 = phi i64 [ %71, %block_0x10a0.lr.ph ], [ %120, %block_0x1070.backedge ]
  %75 = phi i64 [ %68, %block_0x10a0.lr.ph ], [ %117, %block_0x1070.backedge ]
  %76 = trunc i64 %75 to i32, !mcsema_real_eip !11
  switch i32 %76, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %entry
  %.lcssa2158 = phi i64 [ %71, %entry ], [ %120, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2158, 0
  br i1 %cond, label %block_0x1165, label %115

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %77 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %78 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %79 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %80 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, i64 1512)
  %81 = extractvalue { i64, i1 } %uadd, 0
  %82 = xor i64 %81, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, !mcsema_real_eip !21
  %83 = and i64 %82, 16, !mcsema_real_eip !21
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !21
  %85 = icmp slt i64 %81, 0
  %86 = icmp eq i64 %81, 0, !mcsema_real_eip !21
  %87 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, -9223372036854775808, !mcsema_real_eip !21
  %88 = and i64 %82, %87, !mcsema_real_eip !21
  %89 = icmp slt i64 %88, 0
  %90 = trunc i64 %81 to i8, !mcsema_real_eip !21
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !21
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  %94 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %81 to i8*
  store volatile i64 %81, i64* %_RSP_ptr_.sroa.0, align 8
  %95 = inttoptr i64 %81 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_607 = sub i64 %81, %1
  %_pot_address_in_parent_stack_608 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_607
  %_cond1_609 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_610 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_611 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_612 = or i1 %_cond2_1_610, %_cond2_2_611
  %_cond4_613 = icmp ule i8* %_pot_address_in_parent_stack_608, %_parent_stack_end_ptr_
  %_cond1_n_cond2_614 = and i1 %_cond1_609, %_cond2_612
  %_cond1_n_cond2_cond3_615 = and i1 %_cond4_613, %_cond1_n_cond2_614
  %_address_in_parent_stack_bt_617 = bitcast i8* %_pot_address_in_parent_stack_608 to i64*
  %96 = select i1 %_cond1_n_cond2_cond3_615, i64* %_address_in_parent_stack_bt_617, i64* %95
  %_new_load_618 = load i64, i64* %96, align 8
  %97 = add i64 %81, 8, !mcsema_real_eip !22
  %_new_int2ptr_2 = inttoptr i64 %97 to i8*
  store volatile i64 %97, i64* %_RSP_ptr_.sroa.0, align 8
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_622 = sub i64 %97, %1
  %_pot_address_in_parent_stack_623 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_622
  %_cond1_624 = icmp ugt i8* %_new_int2ptr_2, %_local_stack_end_ptr_
  %_cond2_1_625 = icmp ugt i8* %_new_int2ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_626 = icmp ult i8* %_new_int2ptr_2, %_parent_stack_start_ptr_
  %_cond2_627 = or i1 %_cond2_1_625, %_cond2_2_626
  %_cond4_628 = icmp ule i8* %_pot_address_in_parent_stack_623, %_parent_stack_end_ptr_
  %_cond1_n_cond2_629 = and i1 %_cond1_624, %_cond2_627
  %_cond1_n_cond2_cond3_630 = and i1 %_cond4_628, %_cond1_n_cond2_629
  %_address_in_parent_stack_bt_632 = bitcast i8* %_pot_address_in_parent_stack_623 to i64*
  %99 = select i1 %_cond1_n_cond2_cond3_630, i64* %_address_in_parent_stack_bt_632, i64* %98
  %_new_load_633 = load i64, i64* %99, align 8
  %100 = add i64 %81, 16, !mcsema_real_eip !23
  %_new_int2ptr_3 = inttoptr i64 %100 to i8*
  store volatile i64 %100, i64* %_RSP_ptr_.sroa.0, align 8
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_637 = sub i64 %100, %1
  %_pot_address_in_parent_stack_638 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_637
  %_cond1_639 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_end_ptr_
  %_cond2_1_640 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_641 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_642 = or i1 %_cond2_1_640, %_cond2_2_641
  %_cond4_643 = icmp ule i8* %_pot_address_in_parent_stack_638, %_parent_stack_end_ptr_
  %_cond1_n_cond2_644 = and i1 %_cond1_639, %_cond2_642
  %_cond1_n_cond2_cond3_645 = and i1 %_cond4_643, %_cond1_n_cond2_644
  %_address_in_parent_stack_bt_647 = bitcast i8* %_pot_address_in_parent_stack_638 to i64*
  %102 = select i1 %_cond1_n_cond2_cond3_645, i64* %_address_in_parent_stack_bt_647, i64* %101
  %_new_load_648 = load i64, i64* %102, align 8
  %103 = add i64 %81, 24, !mcsema_real_eip !24
  %_new_int2ptr_4 = inttoptr i64 %103 to i8*
  store volatile i64 %103, i64* %_RSP_ptr_.sroa.0, align 8
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_652 = sub i64 %103, %1
  %_pot_address_in_parent_stack_653 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_652
  %_cond1_654 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond4_658, %_cond1_n_cond2_659
  %_address_in_parent_stack_bt_662 = bitcast i8* %_pot_address_in_parent_stack_653 to i64*
  %105 = select i1 %_cond1_n_cond2_cond3_660, i64* %_address_in_parent_stack_bt_662, i64* %104
  %_new_load_663 = load i64, i64* %105, align 8
  %106 = add i64 %81, 32, !mcsema_real_eip !25
  %_new_int2ptr_5 = inttoptr i64 %106 to i8*
  store volatile i64 %106, i64* %_RSP_ptr_.sroa.0, align 8
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_667 = sub i64 %106, %1
  %_pot_address_in_parent_stack_668 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_667
  %_cond1_669 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_end_ptr_
  %_cond2_1_670 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_671 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_672 = or i1 %_cond2_1_670, %_cond2_2_671
  %_cond4_673 = icmp ule i8* %_pot_address_in_parent_stack_668, %_parent_stack_end_ptr_
  %_cond1_n_cond2_674 = and i1 %_cond1_669, %_cond2_672
  %_cond1_n_cond2_cond3_675 = and i1 %_cond4_673, %_cond1_n_cond2_674
  %_address_in_parent_stack_bt_677 = bitcast i8* %_pot_address_in_parent_stack_668 to i64*
  %108 = select i1 %_cond1_n_cond2_cond3_675, i64* %_address_in_parent_stack_bt_677, i64* %107
  %_new_load_678 = load i64, i64* %108, align 8
  %109 = add i64 %81, 40, !mcsema_real_eip !26
  %_new_int2ptr_6 = inttoptr i64 %109 to i8*
  store volatile i64 %109, i64* %_RSP_ptr_.sroa.0, align 8
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_682 = sub i64 %109, %1
  %_pot_address_in_parent_stack_683 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_682
  %_cond1_684 = icmp ugt i8* %_new_int2ptr_6, %_local_stack_end_ptr_
  %_cond2_1_685 = icmp ugt i8* %_new_int2ptr_6, %_parent_stack_end_ptr_
  %_cond2_2_686 = icmp ult i8* %_new_int2ptr_6, %_parent_stack_start_ptr_
  %_cond2_687 = or i1 %_cond2_1_685, %_cond2_2_686
  %_cond4_688 = icmp ule i8* %_pot_address_in_parent_stack_683, %_parent_stack_end_ptr_
  %_cond1_n_cond2_689 = and i1 %_cond1_684, %_cond2_687
  %_cond1_n_cond2_cond3_690 = and i1 %_cond4_688, %_cond1_n_cond2_689
  %_address_in_parent_stack_bt_692 = bitcast i8* %_pot_address_in_parent_stack_683 to i64*
  %111 = select i1 %_cond1_n_cond2_cond3_690, i64* %_address_in_parent_stack_bt_692, i64* %110
  %_new_load_69321472148 = load i64, i64* %111, align 8
  store volatile i64 %_new_load_69321472148, i64* %_RBP_ptr_.sroa.0, align 8
  %112 = add i64 %81, 56
  store volatile i64 %112, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_618, i64* %RBX, align 8, !mcsema_real_eip !28
  %113 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %113, align 8
  %RSI_val.0.RSI_val.0.282 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.282, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %112, i64* %RSP, align 8
  store volatile i64 %_new_load_69321472148, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_633, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_648, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_663, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_678, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_694 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_696 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_697 = sub i64 %_ptr_to_int_694, %1
  %_pot_address_in_parent_stack_698 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_697
  %_cond1_699 = icmp ugt i8* %_ptr_bt_696, %_local_stack_end_ptr_
  %_cond2_1_700 = icmp ugt i8* %_ptr_bt_696, %_parent_stack_end_ptr_
  %_cond2_2_701 = icmp ult i8* %_ptr_bt_696, %_parent_stack_start_ptr_
  %_cond2_702 = or i1 %_cond2_1_700, %_cond2_2_701
  %_cond4_703 = icmp ule i8* %_pot_address_in_parent_stack_698, %_parent_stack_end_ptr_
  %_cond1_n_cond2_704 = and i1 %_cond1_699, %_cond2_702
  %_cond1_n_cond2_cond3_705 = and i1 %_cond1_n_cond2_704, %_cond4_703
  %_address_in_parent_stack_bt_707 = bitcast i8* %_pot_address_in_parent_stack_698 to i64*
  %114 = select i1 %_cond1_n_cond2_cond3_705, i64* %_address_in_parent_stack_bt_707, i64* %FPU_TAG_val
  %_new_load_708 = load i64, i64* %114, align 8
  store i64 %_new_load_708, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:115:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_721 = load i32, i32* %73, align 4
  %116 = icmp ult i32 %_new_load_721, 10
  br i1 %116, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036, i64* %RSI_val, align 8
  %117 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %118 = add i64 %117, -86, !mcsema_real_eip !9
  %119 = trunc i64 %118 to i32
  %120 = and i64 %118, 4294967295
  %121 = icmp ult i32 %119, 33
  br i1 %121, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond2779 = icmp eq i32 %_new_load_721, 0
  br i1 %cond2779, label %block_0x1165, label %129

block_0x11de:                                     ; preds = %block_0x10a0
  %122 = and i32 %76, 16
  %123 = icmp eq i32 %122, 0
  %124 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132155 = load i8*, i8** %124, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132155, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !15
  %125 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %125, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %74, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.281 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.281, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 %67, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %125, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162038 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162038, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  %126 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %126, align 8
  %127 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %127, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_722 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_724 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_725 = sub i64 %_ptr_to_int_722, %1
  %_pot_address_in_parent_stack_726 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_725
  %_cond1_727 = icmp ugt i8* %_ptr_bt_724, %_local_stack_end_ptr_
  %_cond2_1_728 = icmp ugt i8* %_ptr_bt_724, %_parent_stack_end_ptr_
  %_cond2_2_729 = icmp ult i8* %_ptr_bt_724, %_parent_stack_start_ptr_
  %_cond2_730 = or i1 %_cond2_1_728, %_cond2_2_729
  %_cond4_731 = icmp ule i8* %_pot_address_in_parent_stack_726, %_parent_stack_end_ptr_
  %_cond1_n_cond2_732 = and i1 %_cond1_727, %_cond2_730
  %_cond1_n_cond2_cond3_733 = and i1 %_cond1_n_cond2_732, %_cond4_731
  %_address_in_parent_stack_bt_735 = bitcast i8* %_pot_address_in_parent_stack_726 to i64*
  %128 = select i1 %_cond1_n_cond2_cond3_733, i64* %_address_in_parent_stack_bt_735, i64* %FPU_TAG_val
  %_new_load_736 = load i64, i64* %128, align 8
  store i64 %_new_load_736, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:129:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_1101.31(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2035 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_2035, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !96
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !96
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !96
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !96
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !96
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !96
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !96
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !96
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !96
  store i64 %4, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !96
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !96
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !96
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !96
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !96
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !96
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !96
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !96
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !96
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !96
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !96
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !96
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !96
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !96
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !96
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !96
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !96
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !96
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !96
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !96
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !96
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !96
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !96
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !96
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !96
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !96
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !96
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !96
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !96
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !96
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !96
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !96
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !96
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !96
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !96
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !96
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !96
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !96
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !96
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !96
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !96
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !96
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !96
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !96
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !96
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !96
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !96
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !96
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !96
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !96
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !96
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !96
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !96
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !96
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !96
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !96
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !96
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !96
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !96
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !96
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !96
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !96
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !96
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !96
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !96
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !96
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !96
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !96
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !96
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !96
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !96
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !96
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !96
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !96
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !96
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !96
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !96
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !96
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !96
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !96
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !96
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !96
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !96
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !96
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !96
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !96
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !96
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !96
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !96
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !96
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !96
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !96
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !96
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !96
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !96
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !96
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !96
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !96
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !96
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !96
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !96
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !96
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !96
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !96
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !96
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !96
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !96
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !96
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !96
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !96
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !96
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !96
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !96
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !96
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !96
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !96
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !96
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !96
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !96
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !96
  store i8 1, i8* getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0), align 64, !mcsema_real_eip !96
  %66 = extractelement <2 x i64> %10, i32 0
  %67 = and i64 %66, 4294967295
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036, i64* %RSI_val, align 8
  %68 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %69 = add i64 %68, -86, !mcsema_real_eip !9
  %70 = trunc i64 %69 to i32
  %71 = and i64 %69, 4294967295
  %72 = icmp ult i32 %70, 33
  br i1 %72, label %block_0x108e, label %block_0x10a0.lr.ph, !mcsema_real_eip !10

block_0x10a0.lr.ph:                               ; preds = %entry
  %_offset_above_rbp_710 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_713 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_714 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_715 = or i1 %_cond2_2_714, %_cond2_1_713
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond2_715, %_cond1_712
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_bt_720 = bitcast i8* %_pot_address_in_parent_stack_711 to i32*
  %73 = select i1 %_cond1_n_cond2_cond3_718, i32* %_address_in_parent_stack_bt_720, i32* bitcast (%1* @data_0x24ea to i32*)
  br label %block_0x10a0

block_0x10a0:                                     ; preds = %block_0x10a0.lr.ph, %block_0x1070.backedge
  %74 = phi i64 [ %71, %block_0x10a0.lr.ph ], [ %120, %block_0x1070.backedge ]
  %75 = phi i64 [ %68, %block_0x10a0.lr.ph ], [ %117, %block_0x1070.backedge ]
  %76 = trunc i64 %75 to i32, !mcsema_real_eip !11
  switch i32 %76, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %entry
  %.lcssa2158 = phi i64 [ %71, %entry ], [ %120, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2158, 0
  br i1 %cond, label %block_0x1165, label %115

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %77 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %78 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %79 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %80 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, i64 1512)
  %81 = extractvalue { i64, i1 } %uadd, 0
  %82 = xor i64 %81, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, !mcsema_real_eip !21
  %83 = and i64 %82, 16, !mcsema_real_eip !21
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !21
  %85 = icmp slt i64 %81, 0
  %86 = icmp eq i64 %81, 0, !mcsema_real_eip !21
  %87 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2146, -9223372036854775808, !mcsema_real_eip !21
  %88 = and i64 %82, %87, !mcsema_real_eip !21
  %89 = icmp slt i64 %88, 0
  %90 = trunc i64 %81 to i8, !mcsema_real_eip !21
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !21
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  %94 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %81 to i8*
  store volatile i64 %81, i64* %_RSP_ptr_.sroa.0, align 8
  %95 = inttoptr i64 %81 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_607 = sub i64 %81, %1
  %_pot_address_in_parent_stack_608 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_607
  %_cond1_609 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_610 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_611 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_612 = or i1 %_cond2_1_610, %_cond2_2_611
  %_cond4_613 = icmp ule i8* %_pot_address_in_parent_stack_608, %_parent_stack_end_ptr_
  %_cond1_n_cond2_614 = and i1 %_cond1_609, %_cond2_612
  %_cond1_n_cond2_cond3_615 = and i1 %_cond4_613, %_cond1_n_cond2_614
  %_address_in_parent_stack_bt_617 = bitcast i8* %_pot_address_in_parent_stack_608 to i64*
  %96 = select i1 %_cond1_n_cond2_cond3_615, i64* %_address_in_parent_stack_bt_617, i64* %95
  %_new_load_618 = load i64, i64* %96, align 8
  %97 = add i64 %81, 8, !mcsema_real_eip !22
  %_new_int2ptr_2 = inttoptr i64 %97 to i8*
  store volatile i64 %97, i64* %_RSP_ptr_.sroa.0, align 8
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_622 = sub i64 %97, %1
  %_pot_address_in_parent_stack_623 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_622
  %_cond1_624 = icmp ugt i8* %_new_int2ptr_2, %_local_stack_end_ptr_
  %_cond2_1_625 = icmp ugt i8* %_new_int2ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_626 = icmp ult i8* %_new_int2ptr_2, %_parent_stack_start_ptr_
  %_cond2_627 = or i1 %_cond2_1_625, %_cond2_2_626
  %_cond4_628 = icmp ule i8* %_pot_address_in_parent_stack_623, %_parent_stack_end_ptr_
  %_cond1_n_cond2_629 = and i1 %_cond1_624, %_cond2_627
  %_cond1_n_cond2_cond3_630 = and i1 %_cond4_628, %_cond1_n_cond2_629
  %_address_in_parent_stack_bt_632 = bitcast i8* %_pot_address_in_parent_stack_623 to i64*
  %99 = select i1 %_cond1_n_cond2_cond3_630, i64* %_address_in_parent_stack_bt_632, i64* %98
  %_new_load_633 = load i64, i64* %99, align 8
  %100 = add i64 %81, 16, !mcsema_real_eip !23
  %_new_int2ptr_3 = inttoptr i64 %100 to i8*
  store volatile i64 %100, i64* %_RSP_ptr_.sroa.0, align 8
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_637 = sub i64 %100, %1
  %_pot_address_in_parent_stack_638 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_637
  %_cond1_639 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_end_ptr_
  %_cond2_1_640 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_641 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_642 = or i1 %_cond2_1_640, %_cond2_2_641
  %_cond4_643 = icmp ule i8* %_pot_address_in_parent_stack_638, %_parent_stack_end_ptr_
  %_cond1_n_cond2_644 = and i1 %_cond1_639, %_cond2_642
  %_cond1_n_cond2_cond3_645 = and i1 %_cond4_643, %_cond1_n_cond2_644
  %_address_in_parent_stack_bt_647 = bitcast i8* %_pot_address_in_parent_stack_638 to i64*
  %102 = select i1 %_cond1_n_cond2_cond3_645, i64* %_address_in_parent_stack_bt_647, i64* %101
  %_new_load_648 = load i64, i64* %102, align 8
  %103 = add i64 %81, 24, !mcsema_real_eip !24
  %_new_int2ptr_4 = inttoptr i64 %103 to i8*
  store volatile i64 %103, i64* %_RSP_ptr_.sroa.0, align 8
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_652 = sub i64 %103, %1
  %_pot_address_in_parent_stack_653 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_652
  %_cond1_654 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond4_658, %_cond1_n_cond2_659
  %_address_in_parent_stack_bt_662 = bitcast i8* %_pot_address_in_parent_stack_653 to i64*
  %105 = select i1 %_cond1_n_cond2_cond3_660, i64* %_address_in_parent_stack_bt_662, i64* %104
  %_new_load_663 = load i64, i64* %105, align 8
  %106 = add i64 %81, 32, !mcsema_real_eip !25
  %_new_int2ptr_5 = inttoptr i64 %106 to i8*
  store volatile i64 %106, i64* %_RSP_ptr_.sroa.0, align 8
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_667 = sub i64 %106, %1
  %_pot_address_in_parent_stack_668 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_667
  %_cond1_669 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_end_ptr_
  %_cond2_1_670 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_671 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_672 = or i1 %_cond2_1_670, %_cond2_2_671
  %_cond4_673 = icmp ule i8* %_pot_address_in_parent_stack_668, %_parent_stack_end_ptr_
  %_cond1_n_cond2_674 = and i1 %_cond1_669, %_cond2_672
  %_cond1_n_cond2_cond3_675 = and i1 %_cond4_673, %_cond1_n_cond2_674
  %_address_in_parent_stack_bt_677 = bitcast i8* %_pot_address_in_parent_stack_668 to i64*
  %108 = select i1 %_cond1_n_cond2_cond3_675, i64* %_address_in_parent_stack_bt_677, i64* %107
  %_new_load_678 = load i64, i64* %108, align 8
  %109 = add i64 %81, 40, !mcsema_real_eip !26
  %_new_int2ptr_6 = inttoptr i64 %109 to i8*
  store volatile i64 %109, i64* %_RSP_ptr_.sroa.0, align 8
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_682 = sub i64 %109, %1
  %_pot_address_in_parent_stack_683 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_682
  %_cond1_684 = icmp ugt i8* %_new_int2ptr_6, %_local_stack_end_ptr_
  %_cond2_1_685 = icmp ugt i8* %_new_int2ptr_6, %_parent_stack_end_ptr_
  %_cond2_2_686 = icmp ult i8* %_new_int2ptr_6, %_parent_stack_start_ptr_
  %_cond2_687 = or i1 %_cond2_1_685, %_cond2_2_686
  %_cond4_688 = icmp ule i8* %_pot_address_in_parent_stack_683, %_parent_stack_end_ptr_
  %_cond1_n_cond2_689 = and i1 %_cond1_684, %_cond2_687
  %_cond1_n_cond2_cond3_690 = and i1 %_cond4_688, %_cond1_n_cond2_689
  %_address_in_parent_stack_bt_692 = bitcast i8* %_pot_address_in_parent_stack_683 to i64*
  %111 = select i1 %_cond1_n_cond2_cond3_690, i64* %_address_in_parent_stack_bt_692, i64* %110
  %_new_load_69321472148 = load i64, i64* %111, align 8
  store volatile i64 %_new_load_69321472148, i64* %_RBP_ptr_.sroa.0, align 8
  %112 = add i64 %81, 56
  store volatile i64 %112, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_618, i64* %RBX, align 8, !mcsema_real_eip !28
  %113 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %113, align 8
  %RSI_val.0.RSI_val.0.282 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.282, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %112, i64* %RSP, align 8
  store volatile i64 %_new_load_69321472148, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_633, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_648, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_663, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_678, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_694 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_696 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_697 = sub i64 %_ptr_to_int_694, %1
  %_pot_address_in_parent_stack_698 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_697
  %_cond1_699 = icmp ugt i8* %_ptr_bt_696, %_local_stack_end_ptr_
  %_cond2_1_700 = icmp ugt i8* %_ptr_bt_696, %_parent_stack_end_ptr_
  %_cond2_2_701 = icmp ult i8* %_ptr_bt_696, %_parent_stack_start_ptr_
  %_cond2_702 = or i1 %_cond2_1_700, %_cond2_2_701
  %_cond4_703 = icmp ule i8* %_pot_address_in_parent_stack_698, %_parent_stack_end_ptr_
  %_cond1_n_cond2_704 = and i1 %_cond1_699, %_cond2_702
  %_cond1_n_cond2_cond3_705 = and i1 %_cond1_n_cond2_704, %_cond4_703
  %_address_in_parent_stack_bt_707 = bitcast i8* %_pot_address_in_parent_stack_698 to i64*
  %114 = select i1 %_cond1_n_cond2_cond3_705, i64* %_address_in_parent_stack_bt_707, i64* %FPU_TAG_val
  %_new_load_708 = load i64, i64* %114, align 8
  store i64 %_new_load_708, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:115:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_721 = load i32, i32* %73, align 4
  %116 = icmp ult i32 %_new_load_721, 10
  br i1 %116, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2036, i64* %RSI_val, align 8
  %117 = tail call x86_64_sysvcc i64 @getopt_long(i64 %67, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %118 = add i64 %117, -86, !mcsema_real_eip !9
  %119 = trunc i64 %118 to i32
  %120 = and i64 %118, 4294967295
  %121 = icmp ult i32 %119, 33
  br i1 %121, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond2779 = icmp eq i32 %_new_load_721, 0
  br i1 %cond2779, label %block_0x1165, label %129

block_0x11de:                                     ; preds = %block_0x10a0
  %122 = and i32 %76, 16
  %123 = icmp eq i32 %122, 0
  %124 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132155 = load i8*, i8** %124, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132155, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !15
  %125 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %125, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %74, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.281 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.281, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 %67, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %125, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162038 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162038, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  %126 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %126, align 8
  %127 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %127, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %123, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_722 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_724 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_725 = sub i64 %_ptr_to_int_722, %1
  %_pot_address_in_parent_stack_726 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_725
  %_cond1_727 = icmp ugt i8* %_ptr_bt_724, %_local_stack_end_ptr_
  %_cond2_1_728 = icmp ugt i8* %_ptr_bt_724, %_parent_stack_end_ptr_
  %_cond2_2_729 = icmp ult i8* %_ptr_bt_724, %_parent_stack_start_ptr_
  %_cond2_730 = or i1 %_cond2_1_728, %_cond2_2_729
  %_cond4_731 = icmp ule i8* %_pot_address_in_parent_stack_726, %_parent_stack_end_ptr_
  %_cond1_n_cond2_732 = and i1 %_cond1_727, %_cond2_730
  %_cond1_n_cond2_cond3_733 = and i1 %_cond1_n_cond2_732, %_cond4_731
  %_address_in_parent_stack_bt_735 = bitcast i8* %_pot_address_in_parent_stack_726 to i64*
  %128 = select i1 %_cond1_n_cond2_cond3_733, i64* %_address_in_parent_stack_bt_735, i64* %FPU_TAG_val
  %_new_load_736 = load i64, i64* %128, align 8
  store i64 %_new_load_736, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:129:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_110d.32(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2036 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_2036, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !97
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !97
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !97
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !97
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !97
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !97
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !97
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !97
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !97
  store i64 %4, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !97
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !97
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !97
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !97
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !97
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !97
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !97
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !97
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !97
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !97
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !97
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !97
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !97
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !97
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !97
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !97
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !97
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !97
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !97
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !97
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !97
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !97
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !97
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !97
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !97
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !97
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !97
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !97
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !97
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !97
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !97
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !97
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !97
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !97
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !97
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !97
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !97
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !97
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !97
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !97
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !97
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !97
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !97
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !97
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !97
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !97
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !97
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !97
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !97
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !97
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !97
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !97
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !97
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !97
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !97
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !97
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !97
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !97
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !97
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !97
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !97
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !97
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !97
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !97
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !97
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !97
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !97
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !97
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !97
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !97
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !97
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !97
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !97
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !97
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !97
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !97
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !97
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !97
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !97
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !97
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !97
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !97
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !97
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !97
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !97
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !97
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !97
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !97
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !97
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !97
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !97
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !97
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !97
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !97
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !97
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !97
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !97
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !97
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !97
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !97
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !97
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !97
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !97
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !97
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !97
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !97
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !97
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !97
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !97
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !97
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !97
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !97
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !97
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !97
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !97
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !97
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !97
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !97
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !97
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !97
  %_offset_above_rbp_605 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_606 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_605
  %_cond1_607 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_608 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_609 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_610 = or i1 %_cond2_2_609, %_cond2_1_608
  %_cond4_611 = icmp ule i8* %_pot_address_in_parent_stack_606, %_parent_stack_end_ptr_
  %_cond1_n_cond2_612 = and i1 %_cond2_610, %_cond1_607
  %_cond1_n_cond2_cond3_613 = and i1 %_cond1_n_cond2_612, %_cond4_611
  %_address_in_parent_stack_bt_615 = bitcast i8* %_pot_address_in_parent_stack_606 to i32*
  %66 = select i1 %_cond1_n_cond2_cond3_613, i32* %_address_in_parent_stack_bt_615, i32* bitcast (%1* @data_0x24ea to i32*)
  %_new_load_616 = load i32, i32* %66, align 4
  %67 = icmp eq i32 %_new_load_616, 0, !mcsema_real_eip !98
  %68 = zext i1 %67 to i32
  store i32 %68, i32* bitcast (%1* @data_0x24ea to i32*), align 64, !mcsema_real_eip !99
  %69 = extractelement <2 x i64> %10, i32 0
  %70 = and i64 %69, 4294967295
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037, i64* %RSI_val, align 8
  %71 = tail call x86_64_sysvcc i64 @getopt_long(i64 %70, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %72 = add i64 %71, -86, !mcsema_real_eip !9
  %73 = trunc i64 %72 to i32
  %74 = and i64 %72, 4294967295
  %75 = icmp ult i32 %73, 33
  br i1 %75, label %block_0x108e, label %block_0x10a0.preheader, !mcsema_real_eip !10

block_0x10a0.preheader:                           ; preds = %entry
  br label %block_0x10a0

block_0x10a0:                                     ; preds = %block_0x10a0.preheader, %block_0x1070.backedge
  %76 = phi i64 [ %122, %block_0x1070.backedge ], [ %74, %block_0x10a0.preheader ]
  %77 = phi i64 [ %119, %block_0x1070.backedge ], [ %71, %block_0x10a0.preheader ]
  %78 = trunc i64 %77 to i32, !mcsema_real_eip !11
  switch i32 %78, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %entry
  %.lcssa2159 = phi i64 [ %74, %entry ], [ %122, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2159, 0
  br i1 %cond, label %block_0x1165, label %117

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %79 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %80 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %81 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %82 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, i64 1512)
  %83 = extractvalue { i64, i1 } %uadd, 0
  %84 = xor i64 %83, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, !mcsema_real_eip !21
  %85 = and i64 %84, 16, !mcsema_real_eip !21
  %86 = icmp ne i64 %85, 0, !mcsema_real_eip !21
  %87 = icmp slt i64 %83, 0
  %88 = icmp eq i64 %83, 0, !mcsema_real_eip !21
  %89 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, -9223372036854775808, !mcsema_real_eip !21
  %90 = and i64 %84, %89, !mcsema_real_eip !21
  %91 = icmp slt i64 %90, 0
  %92 = trunc i64 %83 to i8, !mcsema_real_eip !21
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !21
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  %96 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %83 to i8*
  store volatile i64 %83, i64* %_RSP_ptr_.sroa.0, align 8
  %97 = inttoptr i64 %83 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_620 = sub i64 %83, %1
  %_pot_address_in_parent_stack_621 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_620
  %_cond1_622 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_623 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_624 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_625 = or i1 %_cond2_1_623, %_cond2_2_624
  %_cond4_626 = icmp ule i8* %_pot_address_in_parent_stack_621, %_parent_stack_end_ptr_
  %_cond1_n_cond2_627 = and i1 %_cond1_622, %_cond2_625
  %_cond1_n_cond2_cond3_628 = and i1 %_cond4_626, %_cond1_n_cond2_627
  %_address_in_parent_stack_bt_630 = bitcast i8* %_pot_address_in_parent_stack_621 to i64*
  %98 = select i1 %_cond1_n_cond2_cond3_628, i64* %_address_in_parent_stack_bt_630, i64* %97
  %_new_load_631 = load i64, i64* %98, align 8
  %99 = add i64 %83, 8, !mcsema_real_eip !22
  %_new_int2ptr_2 = inttoptr i64 %99 to i8*
  store volatile i64 %99, i64* %_RSP_ptr_.sroa.0, align 8
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_635 = sub i64 %99, %1
  %_pot_address_in_parent_stack_636 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_635
  %_cond1_637 = icmp ugt i8* %_new_int2ptr_2, %_local_stack_end_ptr_
  %_cond2_1_638 = icmp ugt i8* %_new_int2ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_639 = icmp ult i8* %_new_int2ptr_2, %_parent_stack_start_ptr_
  %_cond2_640 = or i1 %_cond2_1_638, %_cond2_2_639
  %_cond4_641 = icmp ule i8* %_pot_address_in_parent_stack_636, %_parent_stack_end_ptr_
  %_cond1_n_cond2_642 = and i1 %_cond1_637, %_cond2_640
  %_cond1_n_cond2_cond3_643 = and i1 %_cond4_641, %_cond1_n_cond2_642
  %_address_in_parent_stack_bt_645 = bitcast i8* %_pot_address_in_parent_stack_636 to i64*
  %101 = select i1 %_cond1_n_cond2_cond3_643, i64* %_address_in_parent_stack_bt_645, i64* %100
  %_new_load_646 = load i64, i64* %101, align 8
  %102 = add i64 %83, 16, !mcsema_real_eip !23
  %_new_int2ptr_3 = inttoptr i64 %102 to i8*
  store volatile i64 %102, i64* %_RSP_ptr_.sroa.0, align 8
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_650 = sub i64 %102, %1
  %_pot_address_in_parent_stack_651 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_650
  %_cond1_652 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_end_ptr_
  %_cond2_1_653 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_654 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_655 = or i1 %_cond2_1_653, %_cond2_2_654
  %_cond4_656 = icmp ule i8* %_pot_address_in_parent_stack_651, %_parent_stack_end_ptr_
  %_cond1_n_cond2_657 = and i1 %_cond1_652, %_cond2_655
  %_cond1_n_cond2_cond3_658 = and i1 %_cond4_656, %_cond1_n_cond2_657
  %_address_in_parent_stack_bt_660 = bitcast i8* %_pot_address_in_parent_stack_651 to i64*
  %104 = select i1 %_cond1_n_cond2_cond3_658, i64* %_address_in_parent_stack_bt_660, i64* %103
  %_new_load_661 = load i64, i64* %104, align 8
  %105 = add i64 %83, 24, !mcsema_real_eip !24
  %_new_int2ptr_4 = inttoptr i64 %105 to i8*
  store volatile i64 %105, i64* %_RSP_ptr_.sroa.0, align 8
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_665 = sub i64 %105, %1
  %_pot_address_in_parent_stack_666 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_665
  %_cond1_667 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_end_ptr_
  %_cond2_1_668 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_669 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_670 = or i1 %_cond2_1_668, %_cond2_2_669
  %_cond4_671 = icmp ule i8* %_pot_address_in_parent_stack_666, %_parent_stack_end_ptr_
  %_cond1_n_cond2_672 = and i1 %_cond1_667, %_cond2_670
  %_cond1_n_cond2_cond3_673 = and i1 %_cond4_671, %_cond1_n_cond2_672
  %_address_in_parent_stack_bt_675 = bitcast i8* %_pot_address_in_parent_stack_666 to i64*
  %107 = select i1 %_cond1_n_cond2_cond3_673, i64* %_address_in_parent_stack_bt_675, i64* %106
  %_new_load_676 = load i64, i64* %107, align 8
  %108 = add i64 %83, 32, !mcsema_real_eip !25
  %_new_int2ptr_5 = inttoptr i64 %108 to i8*
  store volatile i64 %108, i64* %_RSP_ptr_.sroa.0, align 8
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_680 = sub i64 %108, %1
  %_pot_address_in_parent_stack_681 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_680
  %_cond1_682 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_end_ptr_
  %_cond2_1_683 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_684 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_685 = or i1 %_cond2_1_683, %_cond2_2_684
  %_cond4_686 = icmp ule i8* %_pot_address_in_parent_stack_681, %_parent_stack_end_ptr_
  %_cond1_n_cond2_687 = and i1 %_cond1_682, %_cond2_685
  %_cond1_n_cond2_cond3_688 = and i1 %_cond4_686, %_cond1_n_cond2_687
  %_address_in_parent_stack_bt_690 = bitcast i8* %_pot_address_in_parent_stack_681 to i64*
  %110 = select i1 %_cond1_n_cond2_cond3_688, i64* %_address_in_parent_stack_bt_690, i64* %109
  %_new_load_691 = load i64, i64* %110, align 8
  %111 = add i64 %83, 40, !mcsema_real_eip !26
  %_new_int2ptr_6 = inttoptr i64 %111 to i8*
  store volatile i64 %111, i64* %_RSP_ptr_.sroa.0, align 8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_695 = sub i64 %111, %1
  %_pot_address_in_parent_stack_696 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_695
  %_cond1_697 = icmp ugt i8* %_new_int2ptr_6, %_local_stack_end_ptr_
  %_cond2_1_698 = icmp ugt i8* %_new_int2ptr_6, %_parent_stack_end_ptr_
  %_cond2_2_699 = icmp ult i8* %_new_int2ptr_6, %_parent_stack_start_ptr_
  %_cond2_700 = or i1 %_cond2_1_698, %_cond2_2_699
  %_cond4_701 = icmp ule i8* %_pot_address_in_parent_stack_696, %_parent_stack_end_ptr_
  %_cond1_n_cond2_702 = and i1 %_cond1_697, %_cond2_700
  %_cond1_n_cond2_cond3_703 = and i1 %_cond4_701, %_cond1_n_cond2_702
  %_address_in_parent_stack_bt_705 = bitcast i8* %_pot_address_in_parent_stack_696 to i64*
  %113 = select i1 %_cond1_n_cond2_cond3_703, i64* %_address_in_parent_stack_bt_705, i64* %112
  %_new_load_70621482149 = load i64, i64* %113, align 8
  store volatile i64 %_new_load_70621482149, i64* %_RBP_ptr_.sroa.0, align 8
  %114 = add i64 %83, 56
  store volatile i64 %114, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_631, i64* %RBX, align 8, !mcsema_real_eip !28
  %115 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %115, align 8
  %RSI_val.0.RSI_val.0.283 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.283, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %114, i64* %RSP, align 8
  store volatile i64 %_new_load_70621482149, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_646, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_661, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_676, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_691, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %88, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_707 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_709 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_710 = sub i64 %_ptr_to_int_707, %1
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ugt i8* %_ptr_bt_709, %_local_stack_end_ptr_
  %_cond2_1_713 = icmp ugt i8* %_ptr_bt_709, %_parent_stack_end_ptr_
  %_cond2_2_714 = icmp ult i8* %_ptr_bt_709, %_parent_stack_start_ptr_
  %_cond2_715 = or i1 %_cond2_1_713, %_cond2_2_714
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond1_712, %_cond2_715
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_bt_720 = bitcast i8* %_pot_address_in_parent_stack_711 to i64*
  %116 = select i1 %_cond1_n_cond2_cond3_718, i64* %_address_in_parent_stack_bt_720, i64* %FPU_TAG_val
  %_new_load_721 = load i64, i64* %116, align 8
  store i64 %_new_load_721, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:117:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_734 = load i32, i32* %66, align 4
  %118 = icmp ult i32 %_new_load_734, 10
  br i1 %118, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037, i64* %RSI_val, align 8
  %119 = tail call x86_64_sysvcc i64 @getopt_long(i64 %70, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %120 = add i64 %119, -86, !mcsema_real_eip !9
  %121 = trunc i64 %120 to i32
  %122 = and i64 %120, 4294967295
  %123 = icmp ult i32 %121, 33
  br i1 %123, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond2779 = icmp eq i32 %_new_load_734, 0
  br i1 %cond2779, label %block_0x1165, label %131

block_0x11de:                                     ; preds = %block_0x10a0
  %124 = and i32 %78, 16
  %125 = icmp eq i32 %124, 0
  %126 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132156 = load i8*, i8** %126, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132156, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !15
  %127 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %127, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %76, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.282 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.282, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 %70, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %127, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162039 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162039, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  %128 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %128, align 8
  %129 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %129, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %125, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_735 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_737 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_738 = sub i64 %_ptr_to_int_735, %1
  %_pot_address_in_parent_stack_739 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_738
  %_cond1_740 = icmp ugt i8* %_ptr_bt_737, %_local_stack_end_ptr_
  %_cond2_1_741 = icmp ugt i8* %_ptr_bt_737, %_parent_stack_end_ptr_
  %_cond2_2_742 = icmp ult i8* %_ptr_bt_737, %_parent_stack_start_ptr_
  %_cond2_743 = or i1 %_cond2_1_741, %_cond2_2_742
  %_cond4_744 = icmp ule i8* %_pot_address_in_parent_stack_739, %_parent_stack_end_ptr_
  %_cond1_n_cond2_745 = and i1 %_cond1_740, %_cond2_743
  %_cond1_n_cond2_cond3_746 = and i1 %_cond1_n_cond2_745, %_cond4_744
  %_address_in_parent_stack_bt_748 = bitcast i8* %_pot_address_in_parent_stack_739 to i64*
  %130 = select i1 %_cond1_n_cond2_cond3_746, i64* %_address_in_parent_stack_bt_748, i64* %FPU_TAG_val
  %_new_load_749 = load i64, i64* %130, align 8
  store i64 %_new_load_749, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:131:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_1124.33(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2036 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_2036, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !100
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !100
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !100
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !100
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !100
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !100
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !100
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !100
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !100
  store i64 %4, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !100
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !100
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !100
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !100
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !100
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !100
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !100
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !100
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !100
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !100
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !100
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !100
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !100
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !100
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !100
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !100
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !100
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !100
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !100
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !100
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !100
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !100
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !100
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !100
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !100
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !100
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !100
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !100
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !100
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !100
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !100
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !100
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !100
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !100
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !100
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !100
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !100
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !100
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !100
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !100
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !100
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !100
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !100
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !100
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !100
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !100
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !100
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !100
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !100
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !100
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !100
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !100
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !100
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !100
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !100
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !100
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !100
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !100
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !100
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !100
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !100
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !100
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !100
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !100
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !100
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !100
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !100
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !100
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !100
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !100
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !100
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !100
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !100
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !100
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !100
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !100
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !100
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !100
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !100
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !100
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !100
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !100
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !100
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !100
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !100
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !100
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !100
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !100
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !100
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !100
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !100
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !100
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !100
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !100
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !100
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !100
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !100
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !100
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !100
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !100
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !100
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !100
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !100
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !100
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !100
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !100
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !100
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !100
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !100
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !100
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !100
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !100
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !100
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !100
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !100
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !100
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !100
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !100
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !100
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !100
  %_offset_above_rbp_605 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_606 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_605
  %_cond1_607 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_608 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_609 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_610 = or i1 %_cond2_2_609, %_cond2_1_608
  %_cond4_611 = icmp ule i8* %_pot_address_in_parent_stack_606, %_parent_stack_end_ptr_
  %_cond1_n_cond2_612 = and i1 %_cond2_610, %_cond1_607
  %_cond1_n_cond2_cond3_613 = and i1 %_cond1_n_cond2_612, %_cond4_611
  %_address_in_parent_stack_bt_615 = bitcast i8* %_pot_address_in_parent_stack_606 to i32*
  %66 = select i1 %_cond1_n_cond2_cond3_613, i32* %_address_in_parent_stack_bt_615, i32* bitcast (%1* @data_0x24ea to i32*)
  %_new_load_616 = load i32, i32* %66, align 4
  %67 = icmp eq i32 %_new_load_616, 0, !mcsema_real_eip !100
  br i1 %67, label %block_0x114d, label %block_0x1070.preheader, !mcsema_real_eip !101

block_0x114d:                                     ; preds = %entry
  %68 = tail call x86_64_sysvcc i64 @geteuid(), !mcsema_real_eip !102
  %69 = trunc i64 %68 to i32, !mcsema_real_eip !103
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !103
  %71 = zext i1 %70 to i32
  br label %block_0x1070.preheader, !mcsema_real_eip !104

block_0x1070.preheader:                           ; preds = %entry, %block_0x114d
  %storemerge2855 = phi i32 [ %71, %block_0x114d ], [ 0, %entry ]
  store i32 %storemerge2855, i32* bitcast (%1* @data_0x24ea to i32*), align 64
  %72 = extractelement <2 x i64> %10, i32 0
  %73 = and i64 %72, 4294967295
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037, i64* %RSI_val, align 8
  %74 = tail call x86_64_sysvcc i64 @getopt_long(i64 %73, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %75 = add i64 %74, -86, !mcsema_real_eip !9
  %76 = trunc i64 %75 to i32
  %77 = and i64 %75, 4294967295
  %78 = icmp ult i32 %76, 33
  br i1 %78, label %block_0x108e, label %block_0x10a0.preheader, !mcsema_real_eip !10

block_0x10a0.preheader:                           ; preds = %block_0x1070.preheader
  br label %block_0x10a0

block_0x10a0:                                     ; preds = %block_0x10a0.preheader, %block_0x1070.backedge
  %79 = phi i64 [ %125, %block_0x1070.backedge ], [ %77, %block_0x10a0.preheader ]
  %80 = phi i64 [ %122, %block_0x1070.backedge ], [ %74, %block_0x10a0.preheader ]
  %81 = trunc i64 %80 to i32, !mcsema_real_eip !11
  switch i32 %81, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %block_0x1070.preheader
  %.lcssa2159 = phi i64 [ %77, %block_0x1070.preheader ], [ %125, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2159, 0
  br i1 %cond, label %block_0x1165, label %120

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %82 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %83 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %84 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %85 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, i64 1512)
  %86 = extractvalue { i64, i1 } %uadd, 0
  %87 = xor i64 %86, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, !mcsema_real_eip !21
  %88 = and i64 %87, 16, !mcsema_real_eip !21
  %89 = icmp ne i64 %88, 0, !mcsema_real_eip !21
  %90 = icmp slt i64 %86, 0
  %91 = icmp eq i64 %86, 0, !mcsema_real_eip !21
  %92 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2147, -9223372036854775808, !mcsema_real_eip !21
  %93 = and i64 %87, %92, !mcsema_real_eip !21
  %94 = icmp slt i64 %93, 0
  %95 = trunc i64 %86 to i8, !mcsema_real_eip !21
  %96 = tail call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !21
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  %99 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %86 to i8*
  store volatile i64 %86, i64* %_RSP_ptr_.sroa.0, align 8
  %100 = inttoptr i64 %86 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_620 = sub i64 %86, %1
  %_pot_address_in_parent_stack_621 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_620
  %_cond1_622 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_623 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_624 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_625 = or i1 %_cond2_1_623, %_cond2_2_624
  %_cond4_626 = icmp ule i8* %_pot_address_in_parent_stack_621, %_parent_stack_end_ptr_
  %_cond1_n_cond2_627 = and i1 %_cond1_622, %_cond2_625
  %_cond1_n_cond2_cond3_628 = and i1 %_cond4_626, %_cond1_n_cond2_627
  %_address_in_parent_stack_bt_630 = bitcast i8* %_pot_address_in_parent_stack_621 to i64*
  %101 = select i1 %_cond1_n_cond2_cond3_628, i64* %_address_in_parent_stack_bt_630, i64* %100
  %_new_load_631 = load i64, i64* %101, align 8
  %102 = add i64 %86, 8, !mcsema_real_eip !22
  %_new_int2ptr_2 = inttoptr i64 %102 to i8*
  store volatile i64 %102, i64* %_RSP_ptr_.sroa.0, align 8
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_635 = sub i64 %102, %1
  %_pot_address_in_parent_stack_636 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_635
  %_cond1_637 = icmp ugt i8* %_new_int2ptr_2, %_local_stack_end_ptr_
  %_cond2_1_638 = icmp ugt i8* %_new_int2ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_639 = icmp ult i8* %_new_int2ptr_2, %_parent_stack_start_ptr_
  %_cond2_640 = or i1 %_cond2_1_638, %_cond2_2_639
  %_cond4_641 = icmp ule i8* %_pot_address_in_parent_stack_636, %_parent_stack_end_ptr_
  %_cond1_n_cond2_642 = and i1 %_cond1_637, %_cond2_640
  %_cond1_n_cond2_cond3_643 = and i1 %_cond4_641, %_cond1_n_cond2_642
  %_address_in_parent_stack_bt_645 = bitcast i8* %_pot_address_in_parent_stack_636 to i64*
  %104 = select i1 %_cond1_n_cond2_cond3_643, i64* %_address_in_parent_stack_bt_645, i64* %103
  %_new_load_646 = load i64, i64* %104, align 8
  %105 = add i64 %86, 16, !mcsema_real_eip !23
  %_new_int2ptr_3 = inttoptr i64 %105 to i8*
  store volatile i64 %105, i64* %_RSP_ptr_.sroa.0, align 8
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_650 = sub i64 %105, %1
  %_pot_address_in_parent_stack_651 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_650
  %_cond1_652 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_end_ptr_
  %_cond2_1_653 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_654 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_655 = or i1 %_cond2_1_653, %_cond2_2_654
  %_cond4_656 = icmp ule i8* %_pot_address_in_parent_stack_651, %_parent_stack_end_ptr_
  %_cond1_n_cond2_657 = and i1 %_cond1_652, %_cond2_655
  %_cond1_n_cond2_cond3_658 = and i1 %_cond4_656, %_cond1_n_cond2_657
  %_address_in_parent_stack_bt_660 = bitcast i8* %_pot_address_in_parent_stack_651 to i64*
  %107 = select i1 %_cond1_n_cond2_cond3_658, i64* %_address_in_parent_stack_bt_660, i64* %106
  %_new_load_661 = load i64, i64* %107, align 8
  %108 = add i64 %86, 24, !mcsema_real_eip !24
  %_new_int2ptr_4 = inttoptr i64 %108 to i8*
  store volatile i64 %108, i64* %_RSP_ptr_.sroa.0, align 8
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_665 = sub i64 %108, %1
  %_pot_address_in_parent_stack_666 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_665
  %_cond1_667 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_end_ptr_
  %_cond2_1_668 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_669 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_670 = or i1 %_cond2_1_668, %_cond2_2_669
  %_cond4_671 = icmp ule i8* %_pot_address_in_parent_stack_666, %_parent_stack_end_ptr_
  %_cond1_n_cond2_672 = and i1 %_cond1_667, %_cond2_670
  %_cond1_n_cond2_cond3_673 = and i1 %_cond4_671, %_cond1_n_cond2_672
  %_address_in_parent_stack_bt_675 = bitcast i8* %_pot_address_in_parent_stack_666 to i64*
  %110 = select i1 %_cond1_n_cond2_cond3_673, i64* %_address_in_parent_stack_bt_675, i64* %109
  %_new_load_676 = load i64, i64* %110, align 8
  %111 = add i64 %86, 32, !mcsema_real_eip !25
  %_new_int2ptr_5 = inttoptr i64 %111 to i8*
  store volatile i64 %111, i64* %_RSP_ptr_.sroa.0, align 8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_680 = sub i64 %111, %1
  %_pot_address_in_parent_stack_681 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_680
  %_cond1_682 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_end_ptr_
  %_cond2_1_683 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_684 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_685 = or i1 %_cond2_1_683, %_cond2_2_684
  %_cond4_686 = icmp ule i8* %_pot_address_in_parent_stack_681, %_parent_stack_end_ptr_
  %_cond1_n_cond2_687 = and i1 %_cond1_682, %_cond2_685
  %_cond1_n_cond2_cond3_688 = and i1 %_cond4_686, %_cond1_n_cond2_687
  %_address_in_parent_stack_bt_690 = bitcast i8* %_pot_address_in_parent_stack_681 to i64*
  %113 = select i1 %_cond1_n_cond2_cond3_688, i64* %_address_in_parent_stack_bt_690, i64* %112
  %_new_load_691 = load i64, i64* %113, align 8
  %114 = add i64 %86, 40, !mcsema_real_eip !26
  %_new_int2ptr_6 = inttoptr i64 %114 to i8*
  store volatile i64 %114, i64* %_RSP_ptr_.sroa.0, align 8
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_695 = sub i64 %114, %1
  %_pot_address_in_parent_stack_696 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_695
  %_cond1_697 = icmp ugt i8* %_new_int2ptr_6, %_local_stack_end_ptr_
  %_cond2_1_698 = icmp ugt i8* %_new_int2ptr_6, %_parent_stack_end_ptr_
  %_cond2_2_699 = icmp ult i8* %_new_int2ptr_6, %_parent_stack_start_ptr_
  %_cond2_700 = or i1 %_cond2_1_698, %_cond2_2_699
  %_cond4_701 = icmp ule i8* %_pot_address_in_parent_stack_696, %_parent_stack_end_ptr_
  %_cond1_n_cond2_702 = and i1 %_cond1_697, %_cond2_700
  %_cond1_n_cond2_cond3_703 = and i1 %_cond4_701, %_cond1_n_cond2_702
  %_address_in_parent_stack_bt_705 = bitcast i8* %_pot_address_in_parent_stack_696 to i64*
  %116 = select i1 %_cond1_n_cond2_cond3_703, i64* %_address_in_parent_stack_bt_705, i64* %115
  %_new_load_70621482149 = load i64, i64* %116, align 8
  store volatile i64 %_new_load_70621482149, i64* %_RBP_ptr_.sroa.0, align 8
  %117 = add i64 %86, 56
  store volatile i64 %117, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_631, i64* %RBX, align 8, !mcsema_real_eip !28
  %118 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %118, align 8
  %RSI_val.0.RSI_val.0.282 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.282, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %117, i64* %RSP, align 8
  store volatile i64 %_new_load_70621482149, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_646, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_661, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_676, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_691, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %99, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %98, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %89, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %91, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %90, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %94, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_707 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_709 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_710 = sub i64 %_ptr_to_int_707, %1
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ugt i8* %_ptr_bt_709, %_local_stack_end_ptr_
  %_cond2_1_713 = icmp ugt i8* %_ptr_bt_709, %_parent_stack_end_ptr_
  %_cond2_2_714 = icmp ult i8* %_ptr_bt_709, %_parent_stack_start_ptr_
  %_cond2_715 = or i1 %_cond2_1_713, %_cond2_2_714
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond1_712, %_cond2_715
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_bt_720 = bitcast i8* %_pot_address_in_parent_stack_711 to i64*
  %119 = select i1 %_cond1_n_cond2_cond3_718, i64* %_address_in_parent_stack_bt_720, i64* %FPU_TAG_val
  %_new_load_721 = load i64, i64* %119, align 8
  store i64 %_new_load_721, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:120:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_734 = load i32, i32* %66, align 4
  %121 = icmp ult i32 %_new_load_734, 10
  br i1 %121, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2037, i64* %RSI_val, align 8
  %122 = tail call x86_64_sysvcc i64 @getopt_long(i64 %73, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %123 = add i64 %122, -86, !mcsema_real_eip !9
  %124 = trunc i64 %123 to i32
  %125 = and i64 %123, 4294967295
  %126 = icmp ult i32 %124, 33
  br i1 %126, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond2779 = icmp eq i32 %_new_load_734, 0
  br i1 %cond2779, label %block_0x1165, label %134

block_0x11de:                                     ; preds = %block_0x10a0
  %127 = and i32 %81, 16
  %128 = icmp eq i32 %127, 0
  %129 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132156 = load i8*, i8** %129, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132156, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !15
  %130 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %130, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %79, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.281 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.281, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 %73, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %130, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162039 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162039, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  %131 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %131, align 8
  %132 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %132, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %128, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_735 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_737 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_738 = sub i64 %_ptr_to_int_735, %1
  %_pot_address_in_parent_stack_739 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_738
  %_cond1_740 = icmp ugt i8* %_ptr_bt_737, %_local_stack_end_ptr_
  %_cond2_1_741 = icmp ugt i8* %_ptr_bt_737, %_parent_stack_end_ptr_
  %_cond2_2_742 = icmp ult i8* %_ptr_bt_737, %_parent_stack_start_ptr_
  %_cond2_743 = or i1 %_cond2_1_741, %_cond2_2_742
  %_cond4_744 = icmp ule i8* %_pot_address_in_parent_stack_739, %_parent_stack_end_ptr_
  %_cond1_n_cond2_745 = and i1 %_cond1_740, %_cond2_743
  %_cond1_n_cond2_cond3_746 = and i1 %_cond1_n_cond2_745, %_cond4_744
  %_address_in_parent_stack_bt_748 = bitcast i8* %_pot_address_in_parent_stack_739 to i64*
  %133 = select i1 %_cond1_n_cond2_cond3_746, i64* %_address_in_parent_stack_bt_748, i64* %FPU_TAG_val
  %_new_load_749 = load i64, i64* %133, align 8
  store i64 %_new_load_749, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:134:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

define internal x86_64_sysvcc void @sub_1131.34(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2037 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_2037, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !105
  %RSI_val = alloca i64, align 8, !mcsema_real_eip !105
  %RAX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !105
  %RBX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !105
  %3 = load i64, i64* %RBX, align 8, !mcsema_real_eip !105
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !105
  %RDX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !105
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !105
  %4 = load i64, i64* %RSI, align 8, !mcsema_real_eip !105
  store i64 %4, i64* %RSI_val, align 8
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !105
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !105
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !105
  %5 = load i64, i64* %RBP, align 8, !mcsema_real_eip !105
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !105
  %R9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !105
  %6 = load i64, i64* %R9, align 8, !mcsema_real_eip !105
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !105
  %7 = load i64, i64* %R10, align 8, !mcsema_real_eip !105
  %R11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !105
  %8 = load i64, i64* %R11, align 8, !mcsema_real_eip !105
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !105
  %R13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !105
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>, <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !105
  %R15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !105
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>, <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !105
  %13 = load i64, i64* %RIP, align 8, !mcsema_real_eip !105
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !105
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !105
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !105
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !105
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !105
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !105
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !105
  %14 = load i1, i1* %DF, align 1, !mcsema_real_eip !105
  %15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !105
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !105
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !105
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !105
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !105
  %18 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !105
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !105
  %19 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !105
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !105
  %20 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !105
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !105
  %21 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !105
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !105
  %22 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !105
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !105
  %23 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !105
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !105
  %24 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !105
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !105
  %25 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !105
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !105
  %26 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !105
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !105
  %27 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !105
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !105
  %28 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !105
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !105
  %29 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !105
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !105
  %30 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !105
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !105
  %31 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !105
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !105
  %32 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !105
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !105
  %33 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !105
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !105
  %34 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !105
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !105
  %35 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !105
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !105
  %36 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !105
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !105
  %37 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !105
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !105
  %38 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !105
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !105
  %39 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !105
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !105
  %40 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !105
  %41 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !105
  %42 = bitcast i8* %41 to i64*
  %_ptr_to_int_ = ptrtoint i8* %41 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %43 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %42
  %_new_load_ = load i64, i64* %43, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !105
  %44 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !105
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !105
  %45 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !105
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !105
  %46 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !105
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !105
  %47 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !105
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !105
  %48 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !105
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !105
  %49 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !105
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !105
  %50 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !105
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !105
  %51 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !105
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !105
  %52 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !105
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !105
  %53 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !105
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !105
  %54 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !105
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !105
  %55 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !105
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !105
  %56 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !105
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !105
  %57 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !105
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !105
  %58 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !105
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !105
  %59 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !105
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !105
  %60 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !105
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !105
  %61 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !105
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !105
  %62 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !105
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !105
  %63 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !105
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !105
  %64 = load i64, i64* %STACK_BASE, align 8, !mcsema_real_eip !105
  %STACK_LIMIT = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !105
  %65 = load i64, i64* %STACK_LIMIT, align 8, !mcsema_real_eip !105
  %66 = tail call x86_64_sysvcc i64 @isatty(i64 1), !mcsema_real_eip !106
  %67 = trunc i64 %66 to i32, !mcsema_real_eip !107
  %68 = icmp eq i32 %67, 0, !mcsema_real_eip !107
  %69 = zext i1 %68 to i32
  store i32 %69, i32* bitcast (%1* @data_0x24ea to i32*), align 64, !mcsema_real_eip !108
  %70 = extractelement <2 x i64> %10, i32 0
  %71 = and i64 %70, 4294967295
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2038 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2038, i64* %RSI_val, align 8
  %72 = tail call x86_64_sysvcc i64 @getopt_long(i64 %71, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %73 = add i64 %72, -86, !mcsema_real_eip !9
  %74 = trunc i64 %73 to i32
  %75 = and i64 %73, 4294967295
  %76 = icmp ult i32 %74, 33
  br i1 %76, label %block_0x108e, label %block_0x10a0.lr.ph, !mcsema_real_eip !10

block_0x10a0.lr.ph:                               ; preds = %entry
  %_offset_above_rbp_710 = sub i64 ptrtoint (%1* @data_0x24ea to i64), %1
  %_pot_address_in_parent_stack_711 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_710
  %_cond1_712 = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_1_713 = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_2_714 = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%1, %1* @data_0x24ea, i64 0, i32 0, i64 0)
  %_cond2_715 = or i1 %_cond2_2_714, %_cond2_1_713
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond2_715, %_cond1_712
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_bt_720 = bitcast i8* %_pot_address_in_parent_stack_711 to i32*
  %77 = select i1 %_cond1_n_cond2_cond3_718, i32* %_address_in_parent_stack_bt_720, i32* bitcast (%1* @data_0x24ea to i32*)
  br label %block_0x10a0

block_0x10a0:                                     ; preds = %block_0x10a0.lr.ph, %block_0x1070.backedge
  %78 = phi i64 [ %75, %block_0x10a0.lr.ph ], [ %124, %block_0x1070.backedge ]
  %79 = phi i64 [ %72, %block_0x10a0.lr.ph ], [ %121, %block_0x1070.backedge ]
  %80 = trunc i64 %79 to i32, !mcsema_real_eip !11
  switch i32 %80, label %block_0x1070.backedge [
    i32 0, label %block_0x10ae
    i32 -1, label %block_0x11de
  ]

block_0x108e.loopexit:                            ; preds = %block_0x1070.backedge
  br label %block_0x108e

block_0x108e:                                     ; preds = %block_0x108e.loopexit, %entry
  %.lcssa2160 = phi i64 [ %75, %entry ], [ %124, %block_0x108e.loopexit ]
  %cond = icmp eq i64 %.lcssa2160, 0
  br i1 %cond, label %block_0x1165, label %119

block_0x1165:                                     ; preds = %block_0x10ba, %block_0x108e
  %81 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 117) to i64), i64 55, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !17
  %82 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 173) to i64), i64 45, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !18
  %83 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 219) to i64), i64 59, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !19
  store i64 53, i64* %RSI_val, align 8
  %84 = tail call x86_64_sysvcc i64 @fwrite(i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64 53, i64 1, i64 ptrtoint (i64* @stdout to i64)), !mcsema_real_eip !20
  store volatile i64 0, i64* %_RBP_ptr_.sroa.0, align 8
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2148 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2148, i64 1512)
  %85 = extractvalue { i64, i1 } %uadd, 0
  %86 = xor i64 %85, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2148, !mcsema_real_eip !21
  %87 = and i64 %86, 16, !mcsema_real_eip !21
  %88 = icmp ne i64 %87, 0, !mcsema_real_eip !21
  %89 = icmp slt i64 %85, 0
  %90 = icmp eq i64 %85, 0, !mcsema_real_eip !21
  %91 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_2148, -9223372036854775808, !mcsema_real_eip !21
  %92 = and i64 %86, %91, !mcsema_real_eip !21
  %93 = icmp slt i64 %92, 0
  %94 = trunc i64 %85 to i8, !mcsema_real_eip !21
  %95 = tail call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !21
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  %98 = extractvalue { i64, i1 } %uadd, 1
  %_new_int2ptr_ = inttoptr i64 %85 to i8*
  store volatile i64 %85, i64* %_RSP_ptr_.sroa.0, align 8
  %99 = inttoptr i64 %85 to i64*, !mcsema_real_eip !22
  %_offset_above_rbp_607 = sub i64 %85, %1
  %_pot_address_in_parent_stack_608 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_607
  %_cond1_609 = icmp ugt i8* %_new_int2ptr_, %_local_stack_end_ptr_
  %_cond2_1_610 = icmp ugt i8* %_new_int2ptr_, %_parent_stack_end_ptr_
  %_cond2_2_611 = icmp ult i8* %_new_int2ptr_, %_parent_stack_start_ptr_
  %_cond2_612 = or i1 %_cond2_1_610, %_cond2_2_611
  %_cond4_613 = icmp ule i8* %_pot_address_in_parent_stack_608, %_parent_stack_end_ptr_
  %_cond1_n_cond2_614 = and i1 %_cond1_609, %_cond2_612
  %_cond1_n_cond2_cond3_615 = and i1 %_cond4_613, %_cond1_n_cond2_614
  %_address_in_parent_stack_bt_617 = bitcast i8* %_pot_address_in_parent_stack_608 to i64*
  %100 = select i1 %_cond1_n_cond2_cond3_615, i64* %_address_in_parent_stack_bt_617, i64* %99
  %_new_load_618 = load i64, i64* %100, align 8
  %101 = add i64 %85, 8, !mcsema_real_eip !22
  %_new_int2ptr_2 = inttoptr i64 %101 to i8*
  store volatile i64 %101, i64* %_RSP_ptr_.sroa.0, align 8
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !23
  %_offset_above_rbp_622 = sub i64 %101, %1
  %_pot_address_in_parent_stack_623 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_622
  %_cond1_624 = icmp ugt i8* %_new_int2ptr_2, %_local_stack_end_ptr_
  %_cond2_1_625 = icmp ugt i8* %_new_int2ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_626 = icmp ult i8* %_new_int2ptr_2, %_parent_stack_start_ptr_
  %_cond2_627 = or i1 %_cond2_1_625, %_cond2_2_626
  %_cond4_628 = icmp ule i8* %_pot_address_in_parent_stack_623, %_parent_stack_end_ptr_
  %_cond1_n_cond2_629 = and i1 %_cond1_624, %_cond2_627
  %_cond1_n_cond2_cond3_630 = and i1 %_cond4_628, %_cond1_n_cond2_629
  %_address_in_parent_stack_bt_632 = bitcast i8* %_pot_address_in_parent_stack_623 to i64*
  %103 = select i1 %_cond1_n_cond2_cond3_630, i64* %_address_in_parent_stack_bt_632, i64* %102
  %_new_load_633 = load i64, i64* %103, align 8
  %104 = add i64 %85, 16, !mcsema_real_eip !23
  %_new_int2ptr_3 = inttoptr i64 %104 to i8*
  store volatile i64 %104, i64* %_RSP_ptr_.sroa.0, align 8
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !24
  %_offset_above_rbp_637 = sub i64 %104, %1
  %_pot_address_in_parent_stack_638 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_637
  %_cond1_639 = icmp ugt i8* %_new_int2ptr_3, %_local_stack_end_ptr_
  %_cond2_1_640 = icmp ugt i8* %_new_int2ptr_3, %_parent_stack_end_ptr_
  %_cond2_2_641 = icmp ult i8* %_new_int2ptr_3, %_parent_stack_start_ptr_
  %_cond2_642 = or i1 %_cond2_1_640, %_cond2_2_641
  %_cond4_643 = icmp ule i8* %_pot_address_in_parent_stack_638, %_parent_stack_end_ptr_
  %_cond1_n_cond2_644 = and i1 %_cond1_639, %_cond2_642
  %_cond1_n_cond2_cond3_645 = and i1 %_cond4_643, %_cond1_n_cond2_644
  %_address_in_parent_stack_bt_647 = bitcast i8* %_pot_address_in_parent_stack_638 to i64*
  %106 = select i1 %_cond1_n_cond2_cond3_645, i64* %_address_in_parent_stack_bt_647, i64* %105
  %_new_load_648 = load i64, i64* %106, align 8
  %107 = add i64 %85, 24, !mcsema_real_eip !24
  %_new_int2ptr_4 = inttoptr i64 %107 to i8*
  store volatile i64 %107, i64* %_RSP_ptr_.sroa.0, align 8
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !25
  %_offset_above_rbp_652 = sub i64 %107, %1
  %_pot_address_in_parent_stack_653 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_652
  %_cond1_654 = icmp ugt i8* %_new_int2ptr_4, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_new_int2ptr_4, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_new_int2ptr_4, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond4_658, %_cond1_n_cond2_659
  %_address_in_parent_stack_bt_662 = bitcast i8* %_pot_address_in_parent_stack_653 to i64*
  %109 = select i1 %_cond1_n_cond2_cond3_660, i64* %_address_in_parent_stack_bt_662, i64* %108
  %_new_load_663 = load i64, i64* %109, align 8
  %110 = add i64 %85, 32, !mcsema_real_eip !25
  %_new_int2ptr_5 = inttoptr i64 %110 to i8*
  store volatile i64 %110, i64* %_RSP_ptr_.sroa.0, align 8
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !26
  %_offset_above_rbp_667 = sub i64 %110, %1
  %_pot_address_in_parent_stack_668 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_667
  %_cond1_669 = icmp ugt i8* %_new_int2ptr_5, %_local_stack_end_ptr_
  %_cond2_1_670 = icmp ugt i8* %_new_int2ptr_5, %_parent_stack_end_ptr_
  %_cond2_2_671 = icmp ult i8* %_new_int2ptr_5, %_parent_stack_start_ptr_
  %_cond2_672 = or i1 %_cond2_1_670, %_cond2_2_671
  %_cond4_673 = icmp ule i8* %_pot_address_in_parent_stack_668, %_parent_stack_end_ptr_
  %_cond1_n_cond2_674 = and i1 %_cond1_669, %_cond2_672
  %_cond1_n_cond2_cond3_675 = and i1 %_cond4_673, %_cond1_n_cond2_674
  %_address_in_parent_stack_bt_677 = bitcast i8* %_pot_address_in_parent_stack_668 to i64*
  %112 = select i1 %_cond1_n_cond2_cond3_675, i64* %_address_in_parent_stack_bt_677, i64* %111
  %_new_load_678 = load i64, i64* %112, align 8
  %113 = add i64 %85, 40, !mcsema_real_eip !26
  %_new_int2ptr_6 = inttoptr i64 %113 to i8*
  store volatile i64 %113, i64* %_RSP_ptr_.sroa.0, align 8
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !27
  %_offset_above_rbp_682 = sub i64 %113, %1
  %_pot_address_in_parent_stack_683 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_682
  %_cond1_684 = icmp ugt i8* %_new_int2ptr_6, %_local_stack_end_ptr_
  %_cond2_1_685 = icmp ugt i8* %_new_int2ptr_6, %_parent_stack_end_ptr_
  %_cond2_2_686 = icmp ult i8* %_new_int2ptr_6, %_parent_stack_start_ptr_
  %_cond2_687 = or i1 %_cond2_1_685, %_cond2_2_686
  %_cond4_688 = icmp ule i8* %_pot_address_in_parent_stack_683, %_parent_stack_end_ptr_
  %_cond1_n_cond2_689 = and i1 %_cond1_684, %_cond2_687
  %_cond1_n_cond2_cond3_690 = and i1 %_cond4_688, %_cond1_n_cond2_689
  %_address_in_parent_stack_bt_692 = bitcast i8* %_pot_address_in_parent_stack_683 to i64*
  %115 = select i1 %_cond1_n_cond2_cond3_690, i64* %_address_in_parent_stack_bt_692, i64* %114
  %_new_load_69321492150 = load i64, i64* %115, align 8
  store volatile i64 %_new_load_69321492150, i64* %_RBP_ptr_.sroa.0, align 8
  %116 = add i64 %85, 56
  store volatile i64 %116, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !28
  store i64 %_new_load_618, i64* %RBX, align 8, !mcsema_real_eip !28
  %117 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (i64* @stdout to i64), i64 1>, <2 x i64>* %117, align 8
  %RSI_val.0.RSI_val.0.283 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.283, i64* %RSI, align 8, !mcsema_real_eip !28
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 279) to i64), i64* %RDI, align 8, !mcsema_real_eip !28
  store volatile i64 %116, i64* %RSP, align 8
  store volatile i64 %_new_load_69321492150, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !28
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !28
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !28
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !28
  store i64 %_new_load_633, i64* %R12, align 8, !mcsema_real_eip !28
  store i64 %_new_load_648, i64* %R13, align 8, !mcsema_real_eip !28
  store i64 %_new_load_663, i64* %R14, align 8, !mcsema_real_eip !28
  store i64 %_new_load_678, i64* %R15, align 8, !mcsema_real_eip !28
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !28
  store i1 %98, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 %97, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 %88, i1* %AF, align 1, !mcsema_real_eip !28
  store i1 %90, i1* %ZF, align 1, !mcsema_real_eip !28
  store i1 %89, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 %93, i1* %OF, align 1, !mcsema_real_eip !28
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !28
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !28
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !28
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !28
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !28
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !28
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !28
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !28
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !28
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !28
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !28
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !28
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !28
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !28
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !28
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !28
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !28
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !28
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !28
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !28
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %_ptr_to_int_694 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_696 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_697 = sub i64 %_ptr_to_int_694, %1
  %_pot_address_in_parent_stack_698 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_697
  %_cond1_699 = icmp ugt i8* %_ptr_bt_696, %_local_stack_end_ptr_
  %_cond2_1_700 = icmp ugt i8* %_ptr_bt_696, %_parent_stack_end_ptr_
  %_cond2_2_701 = icmp ult i8* %_ptr_bt_696, %_parent_stack_start_ptr_
  %_cond2_702 = or i1 %_cond2_1_700, %_cond2_2_701
  %_cond4_703 = icmp ule i8* %_pot_address_in_parent_stack_698, %_parent_stack_end_ptr_
  %_cond1_n_cond2_704 = and i1 %_cond1_699, %_cond2_702
  %_cond1_n_cond2_cond3_705 = and i1 %_cond1_n_cond2_704, %_cond4_703
  %_address_in_parent_stack_bt_707 = bitcast i8* %_pot_address_in_parent_stack_698 to i64*
  %118 = select i1 %_cond1_n_cond2_cond3_705, i64* %_address_in_parent_stack_bt_707, i64* %FPU_TAG_val
  %_new_load_708 = load i64, i64* %118, align 8
  store i64 %_new_load_708, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !28
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !28
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !28
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !28
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !28
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !28
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !28
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !28
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !28
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !28
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !28
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !28
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !28
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !28
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !28
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !28
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !28
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !28
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !28
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

; <label>:119:                                    ; preds = %block_0x108e
  tail call void @llvm.trap(), !mcsema_real_eip !12
  unreachable

block_0x10ae:                                     ; preds = %block_0x10a0
  %_new_load_721 = load i32, i32* %77, align 4
  %120 = icmp ult i32 %_new_load_721, 10
  br i1 %120, label %block_0x10ba, label %block_0x1070.backedge, !mcsema_real_eip !14

block_0x1070.backedge:                            ; preds = %block_0x10a0, %block_0x10ae
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2038, i64* %RSI_val, align 8
  %121 = tail call x86_64_sysvcc i64 @getopt_long(i64 %71, i64 %5, i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64 %3, i64 0), !mcsema_real_eip !8
  %122 = add i64 %121, -86, !mcsema_real_eip !9
  %123 = trunc i64 %122 to i32
  %124 = and i64 %122, 4294967295
  %125 = icmp ult i32 %123, 33
  br i1 %125, label %block_0x108e.loopexit, label %block_0x10a0, !mcsema_real_eip !10

block_0x10ba:                                     ; preds = %block_0x10ae
  %cond2779 = icmp eq i32 %_new_load_721, 0
  br i1 %cond2779, label %block_0x1165, label %133

block_0x11de:                                     ; preds = %block_0x10a0
  %126 = and i32 %80, 16
  %127 = icmp eq i32 %126, 0
  %128 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132157 = load i8*, i8** %128, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_132157, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !15
  %129 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %129, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !15
  store i64 %3, i64* %RBX, align 8, !mcsema_real_eip !15
  store i64 %78, i64* %RCX, align 8, !mcsema_real_eip !15
  store i64 zext (i32 add (i32 ptrtoint (%2* @data_0x28a2 to i32), i32 112) to i64), i64* %RDX, align 8, !mcsema_real_eip !15
  %RSI_val.0.RSI_val.0.282 = load i64, i64* %RSI_val, align 8
  store i64 %RSI_val.0.RSI_val.0.282, i64* %RSI, align 8, !mcsema_real_eip !15
  store i64 %71, i64* %RDI, align 8, !mcsema_real_eip !15
  store volatile i64 %129, i64* %RSP, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162040 = load i64, i64* %_RBP_ptr_.sroa.0, align 8
  store volatile i64 %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_162040, i64* %RBP, align 8
  store i64 0, i64* %R8, align 8, !mcsema_real_eip !15
  store i64 %6, i64* %R9, align 8, !mcsema_real_eip !15
  store i64 %7, i64* %R10, align 8, !mcsema_real_eip !15
  store i64 %8, i64* %R11, align 8, !mcsema_real_eip !15
  %130 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %130, align 8
  %131 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %131, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !15
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !15
  store i1 %127, i1* %AF, align 1, !mcsema_real_eip !15
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !15
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !15
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !15
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* nonnull %17, i32 128, i32 8, i1 false), !mcsema_real_eip !15
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !15
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !15
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !15
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !15
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !15
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !15
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !15
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !15
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !15
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !15
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !15
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !15
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !15
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !15
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !15
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !15
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !15
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !15
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !15
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !15
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !15
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !15
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !15
  %_ptr_to_int_722 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_724 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_725 = sub i64 %_ptr_to_int_722, %1
  %_pot_address_in_parent_stack_726 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_725
  %_cond1_727 = icmp ugt i8* %_ptr_bt_724, %_local_stack_end_ptr_
  %_cond2_1_728 = icmp ugt i8* %_ptr_bt_724, %_parent_stack_end_ptr_
  %_cond2_2_729 = icmp ult i8* %_ptr_bt_724, %_parent_stack_start_ptr_
  %_cond2_730 = or i1 %_cond2_1_728, %_cond2_2_729
  %_cond4_731 = icmp ule i8* %_pot_address_in_parent_stack_726, %_parent_stack_end_ptr_
  %_cond1_n_cond2_732 = and i1 %_cond1_727, %_cond2_730
  %_cond1_n_cond2_cond3_733 = and i1 %_cond1_n_cond2_732, %_cond4_731
  %_address_in_parent_stack_bt_735 = bitcast i8* %_pot_address_in_parent_stack_726 to i64*
  %132 = select i1 %_cond1_n_cond2_cond3_733, i64* %_address_in_parent_stack_bt_735, i64* %FPU_TAG_val
  %_new_load_736 = load i64, i64* %132, align 8
  store i64 %_new_load_736, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !15
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !15
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !15
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !15
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !15
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !15
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !15
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !15
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !15
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !15
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !15
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !15
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !15
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !15
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !15
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !15
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !15
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !15
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !15
  store i64 %64, i64* %STACK_BASE, align 1, !mcsema_real_eip !15
  store i64 %65, i64* %STACK_LIMIT, align 1, !mcsema_real_eip !15
  call void @llvm.trap()
  unreachable

; <label>:133:                                    ; preds = %block_0x10ba
  tail call void @llvm.trap(), !mcsema_real_eip !16
  unreachable
}

; Function Attrs: noreturn nounwind
define internal x86_64_sysvcc void @sub_185d.35(%struct.regs*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #2 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_72 = alloca [8 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [8 x i8], [8 x i8]* %_local_stack_start_ptr_72, i64 0, i64 8
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %2 = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  %FPU_TAG_val = alloca i64, align 8
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !109
  %3 = bitcast %struct.regs* %0 to <2 x i64>*
  %4 = load <2 x i64>, <2 x i64>* %3, align 8
  %RCX = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !109
  %5 = bitcast i64* %RCX to <2 x i64>*
  %6 = load <2 x i64>, <2 x i64>* %5, align 8
  %RSI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !109
  %7 = load i64, i64* %RSI, align 8, !mcsema_real_eip !109
  %RDI = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !109
  %RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !109
  %RBP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !109
  %R8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !109
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>, <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !109
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>, <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !109
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>, <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !109
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>, <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !109
  %16 = load i64, i64* %RIP, align 8, !mcsema_real_eip !109
  %CF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !109
  %17 = load i1, i1* %CF, align 1, !mcsema_real_eip !109
  %PF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !109
  %18 = load i1, i1* %PF, align 1, !mcsema_real_eip !109
  %AF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !109
  %19 = load i1, i1* %AF, align 1, !mcsema_real_eip !109
  %ZF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !109
  %20 = load i1, i1* %ZF, align 1, !mcsema_real_eip !109
  %SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !109
  %21 = load i1, i1* %SF, align 1, !mcsema_real_eip !109
  %OF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !109
  %22 = load i1, i1* %OF, align 1, !mcsema_real_eip !109
  %DF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !109
  %23 = load i1, i1* %DF, align 1, !mcsema_real_eip !109
  %24 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !109
  %25 = bitcast x86_fp80* %24 to i8*, !mcsema_real_eip !109
  %26 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !109
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %26, i8* %25, i32 128, i32 4, i1 false), !mcsema_real_eip !109
  %FPU_B = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !109
  %27 = load i1, i1* %FPU_B, align 1, !mcsema_real_eip !109
  %FPU_C3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !109
  %28 = load i1, i1* %FPU_C3, align 1, !mcsema_real_eip !109
  %FPU_TOP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !109
  %29 = load i3, i3* %FPU_TOP, align 1, !mcsema_real_eip !109
  %FPU_C2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !109
  %30 = load i1, i1* %FPU_C2, align 1, !mcsema_real_eip !109
  %FPU_C1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !109
  %31 = load i1, i1* %FPU_C1, align 1, !mcsema_real_eip !109
  %FPU_C0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !109
  %32 = load i1, i1* %FPU_C0, align 1, !mcsema_real_eip !109
  %FPU_ES = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !109
  %33 = load i1, i1* %FPU_ES, align 1, !mcsema_real_eip !109
  %FPU_SF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !109
  %34 = load i1, i1* %FPU_SF, align 1, !mcsema_real_eip !109
  %FPU_PE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !109
  %35 = load i1, i1* %FPU_PE, align 1, !mcsema_real_eip !109
  %FPU_UE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !109
  %36 = load i1, i1* %FPU_UE, align 1, !mcsema_real_eip !109
  %FPU_OE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !109
  %37 = load i1, i1* %FPU_OE, align 1, !mcsema_real_eip !109
  %FPU_ZE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !109
  %38 = load i1, i1* %FPU_ZE, align 1, !mcsema_real_eip !109
  %FPU_DE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !109
  %39 = load i1, i1* %FPU_DE, align 1, !mcsema_real_eip !109
  %FPU_IE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !109
  %40 = load i1, i1* %FPU_IE, align 1, !mcsema_real_eip !109
  %FPU_X = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !109
  %41 = load i1, i1* %FPU_X, align 1, !mcsema_real_eip !109
  %FPU_RC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !109
  %42 = load i2, i2* %FPU_RC, align 1, !mcsema_real_eip !109
  %FPU_PC = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !109
  %43 = load i2, i2* %FPU_PC, align 1, !mcsema_real_eip !109
  %FPU_PM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !109
  %44 = load i1, i1* %FPU_PM, align 1, !mcsema_real_eip !109
  %FPU_UM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !109
  %45 = load i1, i1* %FPU_UM, align 1, !mcsema_real_eip !109
  %FPU_OM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !109
  %46 = load i1, i1* %FPU_OM, align 1, !mcsema_real_eip !109
  %FPU_ZM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !109
  %47 = load i1, i1* %FPU_ZM, align 1, !mcsema_real_eip !109
  %FPU_DM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !109
  %48 = load i1, i1* %FPU_DM, align 1, !mcsema_real_eip !109
  %FPU_IM = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !109
  %49 = load i1, i1* %FPU_IM, align 1, !mcsema_real_eip !109
  %50 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !109
  %51 = bitcast i8* %50 to i64*
  %_ptr_to_int_ = ptrtoint i8* %50 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %50, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %50, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %50, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %52 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* %51
  %_new_load_ = load i64, i64* %52, align 8
  store i64 %_new_load_, i64* %FPU_TAG_val, align 8
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !109
  %53 = load i16, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !109
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !109
  %54 = load i64, i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !109
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !109
  %55 = load i16, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !109
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !109
  %56 = load i64, i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !109
  %XMM0 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !109
  %57 = load i128, i128* %XMM0, align 1, !mcsema_real_eip !109
  %XMM1 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !109
  %58 = load i128, i128* %XMM1, align 1, !mcsema_real_eip !109
  %XMM2 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !109
  %59 = load i128, i128* %XMM2, align 1, !mcsema_real_eip !109
  %XMM3 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !109
  %60 = load i128, i128* %XMM3, align 1, !mcsema_real_eip !109
  %XMM4 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !109
  %61 = load i128, i128* %XMM4, align 1, !mcsema_real_eip !109
  %XMM5 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !109
  %62 = load i128, i128* %XMM5, align 1, !mcsema_real_eip !109
  %XMM6 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !109
  %63 = load i128, i128* %XMM6, align 1, !mcsema_real_eip !109
  %XMM7 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !109
  %64 = load i128, i128* %XMM7, align 1, !mcsema_real_eip !109
  %XMM8 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !109
  %65 = load i128, i128* %XMM8, align 1, !mcsema_real_eip !109
  %XMM9 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !109
  %66 = load i128, i128* %XMM9, align 1, !mcsema_real_eip !109
  %XMM10 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !109
  %67 = load i128, i128* %XMM10, align 1, !mcsema_real_eip !109
  %XMM11 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !109
  %68 = load i128, i128* %XMM11, align 1, !mcsema_real_eip !109
  %XMM12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !109
  %69 = load i128, i128* %XMM12, align 1, !mcsema_real_eip !109
  %XMM13 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !109
  %70 = load i128, i128* %XMM13, align 1, !mcsema_real_eip !109
  %XMM14 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !109
  %71 = load i128, i128* %XMM14, align 1, !mcsema_real_eip !109
  %XMM15 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !109
  %72 = load i128, i128* %XMM15, align 1, !mcsema_real_eip !109
  %STACK_BASE = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !109
  %73 = bitcast i64* %STACK_BASE to <2 x i64>*
  %74 = load <2 x i64>, <2 x i64>* %73, align 8
  %75 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_80 = load i8*, i8** %75, align 8
  %_new_gep_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_80, i64 -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_, align 8, !mcsema_real_eip !110
  %76 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %76, i64* %_RSP_ptr_.sroa.0, align 8
  %77 = bitcast %struct.regs* %0 to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %77, align 8
  %78 = bitcast i64* %RCX to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %78, align 8
  store i64 %7, i64* %RSI, align 8, !mcsema_real_eip !110
  store i64 ptrtoint (i64* @stdout to i64), i64* %RDI, align 8, !mcsema_real_eip !110
  store volatile i64 %76, i64* %RSP, align 8
  store volatile i64 %2, i64* %RBP, align 8
  %79 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %79, align 8
  %80 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %80, align 8
  %81 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %81, align 8
  %82 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %82, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !110
  store i1 %17, i1* %CF, align 1, !mcsema_real_eip !110
  store i1 %18, i1* %PF, align 1, !mcsema_real_eip !110
  store i1 %19, i1* %AF, align 1, !mcsema_real_eip !110
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !110
  store i1 %21, i1* %SF, align 1, !mcsema_real_eip !110
  store i1 %22, i1* %OF, align 1, !mcsema_real_eip !110
  store i1 %23, i1* %DF, align 1, !mcsema_real_eip !110
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* nonnull %26, i32 128, i32 8, i1 false), !mcsema_real_eip !110
  store i1 %27, i1* %FPU_B, align 1, !mcsema_real_eip !110
  store i1 %28, i1* %FPU_C3, align 1, !mcsema_real_eip !110
  store i3 %29, i3* %FPU_TOP, align 1, !mcsema_real_eip !110
  store i1 %30, i1* %FPU_C2, align 1, !mcsema_real_eip !110
  store i1 %31, i1* %FPU_C1, align 1, !mcsema_real_eip !110
  store i1 %32, i1* %FPU_C0, align 1, !mcsema_real_eip !110
  store i1 %33, i1* %FPU_ES, align 1, !mcsema_real_eip !110
  store i1 %34, i1* %FPU_SF, align 1, !mcsema_real_eip !110
  store i1 %35, i1* %FPU_PE, align 1, !mcsema_real_eip !110
  store i1 %36, i1* %FPU_UE, align 1, !mcsema_real_eip !110
  store i1 %37, i1* %FPU_OE, align 1, !mcsema_real_eip !110
  store i1 %38, i1* %FPU_ZE, align 1, !mcsema_real_eip !110
  store i1 %39, i1* %FPU_DE, align 1, !mcsema_real_eip !110
  store i1 %40, i1* %FPU_IE, align 1, !mcsema_real_eip !110
  store i1 %41, i1* %FPU_X, align 1, !mcsema_real_eip !110
  store i2 %42, i2* %FPU_RC, align 1, !mcsema_real_eip !110
  store i2 %43, i2* %FPU_PC, align 1, !mcsema_real_eip !110
  store i1 %44, i1* %FPU_PM, align 1, !mcsema_real_eip !110
  store i1 %45, i1* %FPU_UM, align 1, !mcsema_real_eip !110
  store i1 %46, i1* %FPU_OM, align 1, !mcsema_real_eip !110
  store i1 %47, i1* %FPU_ZM, align 1, !mcsema_real_eip !110
  store i1 %48, i1* %FPU_DM, align 1, !mcsema_real_eip !110
  store i1 %49, i1* %FPU_IM, align 1, !mcsema_real_eip !110
  %_ptr_to_int_17 = ptrtoint i64* %FPU_TAG_val to i64
  %_ptr_bt_19 = bitcast i64* %FPU_TAG_val to i8*
  %_offset_above_rbp_20 = sub i64 %_ptr_to_int_17, %1
  %_pot_address_in_parent_stack_21 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_20
  %_cond1_22 = icmp ugt i8* %_ptr_bt_19, %_local_stack_end_ptr_
  %_cond2_1_23 = icmp ugt i8* %_ptr_bt_19, %_parent_stack_end_ptr_
  %_cond2_2_24 = icmp ult i8* %_ptr_bt_19, %_parent_stack_start_ptr_
  %_cond2_25 = or i1 %_cond2_1_23, %_cond2_2_24
  %_cond4_26 = icmp ule i8* %_pot_address_in_parent_stack_21, %_parent_stack_end_ptr_
  %_cond1_n_cond2_27 = and i1 %_cond1_22, %_cond2_25
  %_cond1_n_cond2_cond3_28 = and i1 %_cond1_n_cond2_27, %_cond4_26
  %_address_in_parent_stack_bt_30 = bitcast i8* %_pot_address_in_parent_stack_21 to i64*
  %83 = select i1 %_cond1_n_cond2_cond3_28, i64* %_address_in_parent_stack_bt_30, i64* %FPU_TAG_val
  %_new_load_31 = load i64, i64* %83, align 8
  store i64 %_new_load_31, i64* %51, align 4
  store i16 %53, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !110
  store i64 %54, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !110
  store i16 %55, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !110
  store i64 %56, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !110
  store i128 %57, i128* %XMM0, align 1, !mcsema_real_eip !110
  store i128 %58, i128* %XMM1, align 1, !mcsema_real_eip !110
  store i128 %59, i128* %XMM2, align 1, !mcsema_real_eip !110
  store i128 %60, i128* %XMM3, align 1, !mcsema_real_eip !110
  store i128 %61, i128* %XMM4, align 1, !mcsema_real_eip !110
  store i128 %62, i128* %XMM5, align 1, !mcsema_real_eip !110
  store i128 %63, i128* %XMM6, align 1, !mcsema_real_eip !110
  store i128 %64, i128* %XMM7, align 1, !mcsema_real_eip !110
  store i128 %65, i128* %XMM8, align 1, !mcsema_real_eip !110
  store i128 %66, i128* %XMM9, align 1, !mcsema_real_eip !110
  store i128 %67, i128* %XMM10, align 1, !mcsema_real_eip !110
  store i128 %68, i128* %XMM11, align 1, !mcsema_real_eip !110
  store i128 %69, i128* %XMM12, align 1, !mcsema_real_eip !110
  store i128 %70, i128* %XMM13, align 1, !mcsema_real_eip !110
  store i128 %71, i128* %XMM14, align 1, !mcsema_real_eip !110
  store i128 %72, i128* %XMM15, align 1, !mcsema_real_eip !110
  %84 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %74, <2 x i64>* %84, align 1
  call void @llvm.trap()
  unreachable
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 4112, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 4121, [12 x i8] c"\09pushq\09%rbx\00"}
!4 = !{i64 4140, [9 x i8] c"\09callq\090\00"}
!5 = !{i64 4169, [9 x i8] c"\09callq\090\00"}
!6 = !{i64 4174, [19 x i8] c"\09movq\09(%rbp), %rax\00"}
!7 = !{i64 4178, [19 x i8] c"\09movq\09%rax, (%rip)\00"}
!8 = !{i64 4225, [9 x i8] c"\09callq\090\00"}
!9 = !{i64 4230, [22 x i8] c"\09leal\09-86(%rax), %ecx\00"}
!10 = !{i64 4236, [7 x i8] c"\09ja\0918\00"}
!11 = !{i64 4256, [18 x i8] c"\09testl\09%eax, %eax\00"}
!12 = !{i64 4238, [17 x i8] c"\09jmpq\09*(,%rcx,8)\00"}
!13 = !{i64 4270, [19 x i8] c"\09movl\09(%rip), %eax\00"}
!14 = !{i64 4280, [8 x i8] c"\09ja\09-74\00"}
!15 = !{i64 4576, [13 x i8] c"\09callq\09-4581\00"}
!16 = !{i64 4282, [17 x i8] c"\09jmpq\09*(,%rax,8)\00"}
!17 = !{i64 4478, [9 x i8] c"\09callq\090\00"}
!18 = !{i64 4501, [9 x i8] c"\09callq\090\00"}
!19 = !{i64 4524, [9 x i8] c"\09callq\090\00"}
!20 = !{i64 4547, [9 x i8] c"\09callq\090\00"}
!21 = !{i64 4556, [18 x i8] c"\09addq\09$1512, %rsp\00"}
!22 = !{i64 4563, [11 x i8] c"\09popq\09%rbx\00"}
!23 = !{i64 4564, [11 x i8] c"\09popq\09%r12\00"}
!24 = !{i64 4566, [11 x i8] c"\09popq\09%r13\00"}
!25 = !{i64 4568, [11 x i8] c"\09popq\09%r14\00"}
!26 = !{i64 4570, [11 x i8] c"\09popq\09%r15\00"}
!27 = !{i64 4572, [11 x i8] c"\09popq\09%rbp\00"}
!28 = !{i64 4573, [6 x i8] c"\09retq\00"}
!29 = !{i64 3616, [11 x i8] c"\09incq\09%rbp\00"}
!30 = !{i64 3633, [7 x i8] c"\09ja\0915\00"}
!31 = !{i64 3627, [15 x i8] c"\09addb\09$-9, %cl\00"}
!32 = !{i64 3674, [15 x i8] c"\09cmpb\09$32, %al\00"}
!33 = !{i64 3676, [8 x i8] c"\09je\09-14\00"}
!34 = !{i64 3638, [17 x i8] c"\09jmpq\09*(,%rcx,8)\00"}
!35 = !{i64 3664, [11 x i8] c"\09incq\09%rbp\00"}
!36 = !{i64 3672, [8 x i8] c"\09je\09-10\00"}
!37 = !{i64 3708, [15 x i8] c"\09cmpb\09$32, %al\00"}
!38 = !{i64 3710, [6 x i8] c"\09ja\099\00"}
!39 = !{i64 3721, [15 x i8] c"\09cmpb\09%bl, %al\00"}
!40 = !{i64 3723, [6 x i8] c"\09je\098\00"}
!41 = !{i64 3719, [7 x i8] c"\09jb\0912\00"}
!42 = !{i64 3740, [9 x i8] c"\09callq\090\00"}
!43 = !{i64 3748, [18 x i8] c"\09testq\09%r14, %r14\00"}
!44 = !{i64 3751, [8 x i8] c"\09je\09255\00"}
!45 = !{i64 3725, [15 x i8] c"\09cmpb\09$38, %al\00"}
!46 = !{i64 3727, [6 x i8] c"\09je\094\00"}
!47 = !{i64 4033, [9 x i8] c"\09callq\090\00"}
!48 = !{i64 4043, [9 x i8] c"\09callq\090\00"}
!49 = !{i64 4048, [12 x i8] c"\09pushq\09%rax\00"}
!50 = !{i64 4049, [9 x i8] c"\09callq\090\00"}
!51 = !{i64 4054, [18 x i8] c"\09testq\09%rax, %rax\00"}
!52 = !{i64 4057, [6 x i8] c"\09je\092\00"}
!53 = !{i64 3772, [9 x i8] c"\09callq\090\00"}
!54 = !{i64 3777, [22 x i8] c"\09movb\09$0, (%r14,%r15)\00"}
!55 = !{i64 3782, [19 x i8] c"\09movq\09(%r13), %rsi\00"}
!56 = !{i64 3786, [18 x i8] c"\09testq\09%rsi, %rsi\00"}
!57 = !{i64 3789, [7 x i8] c"\09je\0920\00"}
!58 = !{i64 3729, [16 x i8] c"\09cmpb\09$124, %al\00"}
!59 = !{i64 3731, [9 x i8] c"\09jne\09-37\00"}
!60 = !{i64 3811, [17 x i8] c"\09cmpb\09$1, (%rip)\00"}
!61 = !{i64 3818, [8 x i8] c"\09jne\0918\00"}
!62 = !{i64 3794, [9 x i8] c"\09callq\090\00"}
!63 = !{i64 3799, [18 x i8] c"\09testl\09%eax, %eax\00"}
!64 = !{i64 3801, [7 x i8] c"\09jne\098\00"}
!65 = !{i64 4082, [9 x i8] c"\09callq\090\00"}
!66 = !{i64 4092, [9 x i8] c"\09callq\090\00"}
!67 = !{i64 4113, [12 x i8] c"\09pushq\09%r15\00"}
!68 = !{i64 4115, [12 x i8] c"\09pushq\09%r14\00"}
!69 = !{i64 4117, [12 x i8] c"\09pushq\09%r13\00"}
!70 = !{i64 4119, [12 x i8] c"\09pushq\09%r12\00"}
!71 = !{i64 4060, [6 x i8] c"\09retq\00"}
!72 = !{i64 3702, [11 x i8] c"\09incq\09%r15\00"}
!73 = !{i64 3803, [17 x i8] c"\09movq\09$0, (%r13)\00"}
!74 = !{i64 3851, [13 x i8] c"\09callq\09-2048\00"}
!75 = !{i64 3828, [9 x i8] c"\09callq\090\00"}
!76 = !{i64 3833, [18 x i8] c"\09testq\09%rax, %rax\00"}
!77 = !{i64 3836, [8 x i8] c"\09je\09113\00"}
!78 = !{i64 3959, [20 x i8] c"\09movl\094(%rsp), %ecx\00"}
!79 = !{i64 3963, [13 x i8] c"\09callq\09-2432\00"}
!80 = !{i64 3650, [27 x i8] c"\09movabsq\09$4294967809, %rdx\00"}
!81 = !{i64 3645, [11 x i8] c"\09incq\09%rbp\00"}
!82 = !{i64 3648, [15 x i8] c"\09movb\09%al, %bl\00"}
!83 = !{i64 3667, [18 x i8] c"\09movb\09(%rbp), %al\00"}
!84 = !{i64 4453, [19 x i8] c"\09movq\09(%rip), %rbx\00"}
!85 = !{i64 4208, [15 x i8] c"\09movl\09$0, %edx\00"}
!86 = !{i64 4245, [17 x i8] c"\09movb\09$1, (%rip)\00"}
!87 = !{i64 4187, [17 x i8] c"\09movb\09$1, (%rip)\00"}
!88 = !{i64 4289, [17 x i8] c"\09xorl\09%eax, %eax\00"}
!89 = !{i64 4291, [17 x i8] c"\09cmpl\09$0, (%rip)\00"}
!90 = !{i64 4301, [19 x i8] c"\09movl\09%eax, (%rip)\00"}
!91 = !{i64 4309, [17 x i8] c"\09xorl\09%eax, %eax\00"}
!92 = !{i64 4311, [17 x i8] c"\09cmpl\09$0, (%rip)\00"}
!93 = !{i64 4321, [19 x i8] c"\09movl\09%eax, (%rip)\00"}
!94 = !{i64 4329, [17 x i8] c"\09movb\09$1, (%rip)\00"}
!95 = !{i64 4341, [17 x i8] c"\09movb\09$1, (%rip)\00"}
!96 = !{i64 4353, [17 x i8] c"\09movb\09$1, (%rip)\00"}
!97 = !{i64 4365, [17 x i8] c"\09xorl\09%eax, %eax\00"}
!98 = !{i64 4367, [17 x i8] c"\09cmpl\09$0, (%rip)\00"}
!99 = !{i64 4377, [19 x i8] c"\09movl\09%eax, (%rip)\00"}
!100 = !{i64 4388, [17 x i8] c"\09cmpl\09$0, (%rip)\00"}
!101 = !{i64 4395, [7 x i8] c"\09je\0932\00"}
!102 = !{i64 4429, [9 x i8] c"\09callq\090\00"}
!103 = !{i64 4434, [18 x i8] c"\09testl\09%eax, %eax\00"}
!104 = !{i64 4448, [10 x i8] c"\09jmp\09-245\00"}
!105 = !{i64 4401, [15 x i8] c"\09movl\09$1, %edi\00"}
!106 = !{i64 4406, [9 x i8] c"\09callq\090\00"}
!107 = !{i64 4413, [18 x i8] c"\09testl\09%eax, %eax\00"}
!108 = !{i64 4418, [19 x i8] c"\09movl\09%ecx, (%rip)\00"}
!109 = !{i64 6237, [19 x i8] c"\09movq\09(%rip), %rdi\00"}
!110 = !{i64 6244, [11 x i8] c"\09callq\09119\00"}
