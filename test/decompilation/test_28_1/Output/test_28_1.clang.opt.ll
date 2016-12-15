; ModuleID = 'Output/test_28_1.clang.opt.bc'
source_filename = "Output/test_28_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl callback_sub_0;"
module asm "  .type callback_sub_0,@function"
module asm "callback_sub_0:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size callback_sub_0,0b-callback_sub_0;"
module asm "  .cfi_endproc;"
module asm "  .globl printf;"
module asm "  .globl _printf;"
module asm "  .type _printf,@function"
module asm "_printf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq printf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _printf,0b-_printf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_30;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_30(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [13 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x51 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64
@data_0x60 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"(\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"!\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

; Function Attrs: naked
declare void @__mcsema_attach_call() #0

; Function Attrs: naked
declare void @__mcsema_attach_ret() #0

; Function Attrs: naked
declare void @__mcsema_detach_call() #0

; Function Attrs: naked
declare void @__mcsema_detach_call_value() #0

; Function Attrs: naked
declare void @__mcsema_detach_ret() #0

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  br label %block_0x30, !mcsema_real_eip !2

block_0x30:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 16, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 16, !mcsema_real_eip !4
  %6 = and i64 %5, 16, !mcsema_real_eip !4
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !4
  store i1 %7, i1* %AF, !mcsema_real_eip !4
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !4
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !4
  %11 = xor i1 %10, true, !mcsema_real_eip !4
  store i1 %11, i1* %PF, !mcsema_real_eip !4
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %12, i1* %ZF, !mcsema_real_eip !4
  %13 = lshr i64 %3, 63, !mcsema_real_eip !4
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !4
  store i1 %14, i1* %SF, !mcsema_real_eip !4
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 16, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 2, i64* %XDI, !mcsema_real_eip !5
  %20 = add i64 %1, -4, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !6
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %22, !mcsema_real_eip !6
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !7
  %23 = sub i64 %RSP_val.5, 8, !mcsema_real_eip !7
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %24, !mcsema_real_eip !7
  store i64 %23, i64* %XSP, !mcsema_real_eip !7
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !7
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.7 = load i32, i32* %EAX.6, !mcsema_real_eip !8
  store i1 false, i1* %CF, !mcsema_real_eip !8
  store i1 false, i1* %OF, !mcsema_real_eip !8
  store i1 false, i1* %SF, !mcsema_real_eip !8
  store i1 true, i1* %ZF, !mcsema_real_eip !8
  store i1 true, i1* %PF, !mcsema_real_eip !8
  store i1 undef, i1* %AF, !mcsema_real_eip !8
  store i64 0, i64* %XAX, !mcsema_real_eip !8
  %RSP_val.10 = load i64, i64* %XSP, !mcsema_real_eip !9
  %25 = add i64 16, %RSP_val.10, !mcsema_real_eip !9
  %26 = xor i64 %25, %RSP_val.10, !mcsema_real_eip !9
  %27 = xor i64 %26, 16, !mcsema_real_eip !9
  %28 = and i64 %27, 16, !mcsema_real_eip !9
  %29 = icmp ne i64 %28, 0, !mcsema_real_eip !9
  store i1 %29, i1* %AF, !mcsema_real_eip !9
  %30 = lshr i64 %25, 63, !mcsema_real_eip !9
  %31 = trunc i64 %30 to i1, !mcsema_real_eip !9
  store i1 %31, i1* %SF, !mcsema_real_eip !9
  %32 = icmp eq i64 %25, 0, !mcsema_real_eip !9
  store i1 %32, i1* %ZF, !mcsema_real_eip !9
  %33 = xor i64 %RSP_val.10, 16, !mcsema_real_eip !9
  %34 = xor i64 %33, -1, !mcsema_real_eip !9
  %35 = and i64 %34, %26, !mcsema_real_eip !9
  %36 = lshr i64 %35, 63, !mcsema_real_eip !9
  %37 = and i64 %36, 1, !mcsema_real_eip !9
  %38 = trunc i64 %37 to i1, !mcsema_real_eip !9
  store i1 %38, i1* %OF, !mcsema_real_eip !9
  %39 = trunc i64 %25 to i8, !mcsema_real_eip !9
  %40 = call i8 @llvm.ctpop.i8(i8 %39), !mcsema_real_eip !9
  %41 = trunc i8 %40 to i1, !mcsema_real_eip !9
  %42 = xor i1 %41, true, !mcsema_real_eip !9
  store i1 %42, i1* %PF, !mcsema_real_eip !9
  %43 = icmp ult i64 %25, %RSP_val.10, !mcsema_real_eip !9
  store i1 %43, i1* %CF, !mcsema_real_eip !9
  store i64 %25, i64* %XSP, !mcsema_real_eip !9
  %44 = inttoptr i64 %25 to i64*, !mcsema_real_eip !10
  %45 = load i64, i64* %44, !mcsema_real_eip !10
  store i64 %45, i64* %XBP, !mcsema_real_eip !10
  %46 = add i64 %25, 8, !mcsema_real_eip !10
  store i64 %46, i64* %XSP, !mcsema_real_eip !10
  %47 = add i64 %46, 8, !mcsema_real_eip !11
  %48 = inttoptr i64 %46 to i64*, !mcsema_real_eip !11
  %49 = load i64, i64* %48, !mcsema_real_eip !11
  store i64 %49, i64* %XIP, !mcsema_real_eip !11
  store i64 %47, i64* %XSP, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !12
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !12
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !12
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !12
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !12
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !12
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !12
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !12
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !12
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !12
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !12
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !12
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !12
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !12
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !12
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !12
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !12
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !12
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !12
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !12
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !12
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !12
  br label %block_0x0, !mcsema_real_eip !12

block_0x0:                                        ; preds = %entry
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !12
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !12
  %1 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !12
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !12
  store i64 %RBP_val.13, i64* %2, !mcsema_real_eip !12
  store i64 %1, i64* %XSP, !mcsema_real_eip !12
  store i64 %1, i64* %XBP, !mcsema_real_eip !13
  %3 = sub i64 %1, 16, !mcsema_real_eip !14
  %4 = xor i64 %3, %1, !mcsema_real_eip !14
  %5 = xor i64 %4, 16, !mcsema_real_eip !14
  %6 = and i64 %5, 16, !mcsema_real_eip !14
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !14
  store i1 %7, i1* %AF, !mcsema_real_eip !14
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !14
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !14
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !14
  %11 = xor i1 %10, true, !mcsema_real_eip !14
  store i1 %11, i1* %PF, !mcsema_real_eip !14
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !14
  store i1 %12, i1* %ZF, !mcsema_real_eip !14
  %13 = lshr i64 %3, 63, !mcsema_real_eip !14
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !14
  store i1 %14, i1* %SF, !mcsema_real_eip !14
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !14
  store i1 %15, i1* %CF, !mcsema_real_eip !14
  %16 = xor i64 %1, 16, !mcsema_real_eip !14
  %17 = and i64 %16, %4, !mcsema_real_eip !14
  %18 = lshr i64 %17, 63, !mcsema_real_eip !14
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !14
  store i1 %19, i1* %OF, !mcsema_real_eip !14
  store i64 %3, i64* %XSP, !mcsema_real_eip !14
  store i64 ptrtoint (%0* @data_0x51 to i64), i64* %XAX, !mcsema_real_eip !15
  %20 = add i64 %1, -4, !mcsema_real_eip !16
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !16
  %EDI.18 = bitcast i64* %XDI to i32*, !mcsema_real_eip !16
  %EDI_val.19 = load i32, i32* %EDI.18, !mcsema_real_eip !16
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !16
  store i32 %EDI_val.19, i32* %22, !mcsema_real_eip !16
  %RAX_val.20 = load i64, i64* %XAX, !mcsema_real_eip !17
  store i64 %RAX_val.20, i64* %XDI, !mcsema_real_eip !17
  %AL.21 = bitcast i64* %XAX to i8*, !mcsema_real_eip !18
  store i8 0, i8* %AL.21, !mcsema_real_eip !18
  %RSI_val.23 = load i64, i64* %XSI, !mcsema_real_eip !19
  %RDX_val.24 = load i64, i64* %XDX, !mcsema_real_eip !19
  %RCX_val.25 = load i64, i64* %XCX, !mcsema_real_eip !19
  %R8_val.26 = load i64, i64* %R8, !mcsema_real_eip !19
  %R9_val.27 = load i64, i64* %R9, !mcsema_real_eip !19
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !19
  %23 = inttoptr i64 %RSP_val.28 to i64*, !mcsema_real_eip !19
  %24 = load i64, i64* %23, !mcsema_real_eip !19
  %25 = add i64 %RSP_val.28, 8, !mcsema_real_eip !19
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !19
  %27 = load i64, i64* %26, !mcsema_real_eip !19
  %28 = add i64 %25, 8, !mcsema_real_eip !19
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !19
  %30 = load i64, i64* %29, !mcsema_real_eip !19
  %31 = add i64 %28, 8, !mcsema_real_eip !19
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !19
  %33 = load i64, i64* %32, !mcsema_real_eip !19
  %34 = add i64 %31, 8, !mcsema_real_eip !19
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !19
  %36 = load i64, i64* %35, !mcsema_real_eip !19
  %37 = add i64 %34, 8, !mcsema_real_eip !19
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !19
  %39 = load i64, i64* %38, !mcsema_real_eip !19
  %40 = sub i64 %RSP_val.28, 8, !mcsema_real_eip !19
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !19
  store i64 -2415393069852865332, i64* %41, !mcsema_real_eip !19
  store i64 %40, i64* %XSP, !mcsema_real_eip !19
  %42 = call x86_64_sysvcc i64 @_printf(i64 %RAX_val.20, i64 %RSI_val.23, i64 %RDX_val.24, i64 %RCX_val.25, i64 %R8_val.26, i64 %R9_val.27, i64 %24, i64 %27, i64 %30, i64 %33, i64 %36, i64 %39), !mcsema_real_eip !19
  store i64 %42, i64* %XAX, !mcsema_real_eip !19
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !20
  %43 = add i64 %RBP_val.30, -8, !mcsema_real_eip !20
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !20
  %EAX.31 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.32 = load i32, i32* %EAX.31, !mcsema_real_eip !20
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.32, i32* %45, !mcsema_real_eip !20
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !21
  %46 = add i64 16, %RSP_val.33, !mcsema_real_eip !21
  %47 = xor i64 %46, %RSP_val.33, !mcsema_real_eip !21
  %48 = xor i64 %47, 16, !mcsema_real_eip !21
  %49 = and i64 %48, 16, !mcsema_real_eip !21
  %50 = icmp ne i64 %49, 0, !mcsema_real_eip !21
  store i1 %50, i1* %AF, !mcsema_real_eip !21
  %51 = lshr i64 %46, 63, !mcsema_real_eip !21
  %52 = trunc i64 %51 to i1, !mcsema_real_eip !21
  store i1 %52, i1* %SF, !mcsema_real_eip !21
  %53 = icmp eq i64 %46, 0, !mcsema_real_eip !21
  store i1 %53, i1* %ZF, !mcsema_real_eip !21
  %54 = xor i64 %RSP_val.33, 16, !mcsema_real_eip !21
  %55 = xor i64 %54, -1, !mcsema_real_eip !21
  %56 = and i64 %55, %47, !mcsema_real_eip !21
  %57 = lshr i64 %56, 63, !mcsema_real_eip !21
  %58 = and i64 %57, 1, !mcsema_real_eip !21
  %59 = trunc i64 %58 to i1, !mcsema_real_eip !21
  store i1 %59, i1* %OF, !mcsema_real_eip !21
  %60 = trunc i64 %46 to i8, !mcsema_real_eip !21
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !21
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !21
  %63 = xor i1 %62, true, !mcsema_real_eip !21
  store i1 %63, i1* %PF, !mcsema_real_eip !21
  %64 = icmp ult i64 %46, %RSP_val.33, !mcsema_real_eip !21
  store i1 %64, i1* %CF, !mcsema_real_eip !21
  store i64 %46, i64* %XSP, !mcsema_real_eip !21
  %65 = inttoptr i64 %46 to i64*, !mcsema_real_eip !22
  %66 = load i64, i64* %65, !mcsema_real_eip !22
  store i64 %66, i64* %XBP, !mcsema_real_eip !22
  %67 = add i64 %46, 8, !mcsema_real_eip !22
  store i64 %67, i64* %XSP, !mcsema_real_eip !22
  %68 = add i64 %67, 8, !mcsema_real_eip !23
  %69 = inttoptr i64 %67 to i64*, !mcsema_real_eip !23
  %70 = load i64, i64* %69, !mcsema_real_eip !23
  store i64 %70, i64* %XIP, !mcsema_real_eip !23
  store i64 %68, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 48}
!3 = !{i64 49}
!4 = !{i64 52}
!5 = !{i64 56}
!6 = !{i64 61}
!7 = !{i64 68}
!8 = !{i64 73}
!9 = !{i64 75}
!10 = !{i64 79}
!11 = !{i64 80}
!12 = !{i64 0}
!13 = !{i64 1}
!14 = !{i64 4}
!15 = !{i64 8}
!16 = !{i64 18}
!17 = !{i64 21}
!18 = !{i64 24}
!19 = !{i64 26}
!20 = !{i64 31}
!21 = !{i64 34}
!22 = !{i64 38}
!23 = !{i64 39}
