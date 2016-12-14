; ModuleID = 'Output/test_28.clang.opt.bc'
source_filename = "Output/test_28.clang.bc"
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
module asm "  .globl sub_50;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_50(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [13 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x71 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64
@data_0x80 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"F\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"!\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_50(%RegState*) #1 {
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
  br label %block_0x50, !mcsema_real_eip !2

block_0x50:                                       ; preds = %entry
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
  %20 = add i64 %1, -4, !mcsema_real_eip !15
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !15
  %EDI.18 = bitcast i64* %XDI to i32*, !mcsema_real_eip !15
  %EDI_val.19 = load i32, i32* %EDI.18, !mcsema_real_eip !15
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !15
  store i32 %EDI_val.19, i32* %22, !mcsema_real_eip !15
  %RBP_val.20 = load i64, i64* %XBP, !mcsema_real_eip !16
  %23 = add i64 %RBP_val.20, -8, !mcsema_real_eip !16
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !16
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !16
  store i32 0, i32* %25, !mcsema_real_eip !16
  br label %block_0x12, !mcsema_real_eip !17

block_0x12:                                       ; preds = %block_0x1e, %block_0x0
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !17
  %26 = add i64 %RBP_val.21, -8, !mcsema_real_eip !17
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !17
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !17
  %29 = load i32, i32* %28, !mcsema_real_eip !17
  %30 = zext i32 %29 to i64, !mcsema_real_eip !17
  store i64 %30, i64* %XAX, !mcsema_real_eip !17
  %31 = add i64 %RBP_val.21, -4, !mcsema_real_eip !18
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !18
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !18
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !18
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !18
  %34 = load i32, i32* %33, !mcsema_real_eip !18
  %35 = sub i32 %EAX_val.24, %34, !mcsema_real_eip !18
  %36 = xor i32 %35, %EAX_val.24, !mcsema_real_eip !18
  %37 = xor i32 %36, %34, !mcsema_real_eip !18
  %38 = and i32 %37, 16, !mcsema_real_eip !18
  %39 = icmp ne i32 %38, 0, !mcsema_real_eip !18
  store i1 %39, i1* %AF, !mcsema_real_eip !18
  %40 = trunc i32 %35 to i8, !mcsema_real_eip !18
  %41 = call i8 @llvm.ctpop.i8(i8 %40), !mcsema_real_eip !18
  %42 = trunc i8 %41 to i1, !mcsema_real_eip !18
  %43 = xor i1 %42, true, !mcsema_real_eip !18
  store i1 %43, i1* %PF, !mcsema_real_eip !18
  %44 = icmp eq i32 %35, 0, !mcsema_real_eip !18
  store i1 %44, i1* %ZF, !mcsema_real_eip !18
  %45 = lshr i32 %35, 31, !mcsema_real_eip !18
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !18
  store i1 %46, i1* %SF, !mcsema_real_eip !18
  %47 = icmp ult i32 %EAX_val.24, %34, !mcsema_real_eip !18
  store i1 %47, i1* %CF, !mcsema_real_eip !18
  %48 = xor i32 %EAX_val.24, %34, !mcsema_real_eip !18
  %49 = and i32 %48, %36, !mcsema_real_eip !18
  %50 = lshr i32 %49, 31, !mcsema_real_eip !18
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !18
  store i1 %51, i1* %OF, !mcsema_real_eip !18
  %52 = icmp eq i1 %46, %51, !mcsema_real_eip !19
  br i1 %52, label %block_0x40, label %block_0x1e, !mcsema_real_eip !19

block_0x1e:                                       ; preds = %block_0x12
  store i64 ptrtoint (%0* @data_0x71 to i64), i64* %XDI, !mcsema_real_eip !20
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.28, !mcsema_real_eip !21
  %RSI_val.30 = load i64, i64* %XSI, !mcsema_real_eip !22
  %RDX_val.31 = load i64, i64* %XDX, !mcsema_real_eip !22
  %RCX_val.32 = load i64, i64* %XCX, !mcsema_real_eip !22
  %R8_val.33 = load i64, i64* %R8, !mcsema_real_eip !22
  %R9_val.34 = load i64, i64* %R9, !mcsema_real_eip !22
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !22
  %53 = inttoptr i64 %RSP_val.35 to i64*, !mcsema_real_eip !22
  %54 = load i64, i64* %53, !mcsema_real_eip !22
  %55 = add i64 %RSP_val.35, 8, !mcsema_real_eip !22
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !22
  %57 = load i64, i64* %56, !mcsema_real_eip !22
  %58 = add i64 %55, 8, !mcsema_real_eip !22
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !22
  %60 = load i64, i64* %59, !mcsema_real_eip !22
  %61 = add i64 %58, 8, !mcsema_real_eip !22
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !22
  %63 = load i64, i64* %62, !mcsema_real_eip !22
  %64 = add i64 %61, 8, !mcsema_real_eip !22
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !22
  %66 = load i64, i64* %65, !mcsema_real_eip !22
  %67 = add i64 %64, 8, !mcsema_real_eip !22
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !22
  %69 = load i64, i64* %68, !mcsema_real_eip !22
  %70 = sub i64 %RSP_val.35, 8, !mcsema_real_eip !22
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %71, !mcsema_real_eip !22
  store i64 %70, i64* %XSP, !mcsema_real_eip !22
  %72 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x71 to i64), i64 %RSI_val.30, i64 %RDX_val.31, i64 %RCX_val.32, i64 %R8_val.33, i64 %R9_val.34, i64 %54, i64 %57, i64 %60, i64 %63, i64 %66, i64 %69), !mcsema_real_eip !22
  store i64 %72, i64* %XAX, !mcsema_real_eip !22
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !23
  %73 = add i64 %RBP_val.37, -12, !mcsema_real_eip !23
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !23
  %EAX_val.39 = load i32, i32* %EAX.23, !mcsema_real_eip !23
  %75 = inttoptr i64 %73 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.39, i32* %75, !mcsema_real_eip !23
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !24
  %76 = add i64 %RBP_val.40, -8, !mcsema_real_eip !24
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !24
  %78 = inttoptr i64 %76 to i32*, !mcsema_real_eip !24
  %79 = load i32, i32* %78, !mcsema_real_eip !24
  %80 = zext i32 %79 to i64, !mcsema_real_eip !24
  store i64 %80, i64* %XAX, !mcsema_real_eip !24
  %EAX_val.42 = load i32, i32* %EAX.23, !mcsema_real_eip !25
  %81 = add i32 1, %EAX_val.42, !mcsema_real_eip !25
  %82 = xor i32 %81, %EAX_val.42, !mcsema_real_eip !25
  %83 = xor i32 %82, 1, !mcsema_real_eip !25
  %84 = and i32 %83, 16, !mcsema_real_eip !25
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !25
  store i1 %85, i1* %AF, !mcsema_real_eip !25
  %86 = lshr i32 %81, 31, !mcsema_real_eip !25
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !25
  store i1 %87, i1* %SF, !mcsema_real_eip !25
  %88 = icmp eq i32 %81, 0, !mcsema_real_eip !25
  store i1 %88, i1* %ZF, !mcsema_real_eip !25
  %89 = xor i32 %EAX_val.42, 1, !mcsema_real_eip !25
  %90 = xor i32 %89, -1, !mcsema_real_eip !25
  %91 = and i32 %90, %82, !mcsema_real_eip !25
  %92 = lshr i32 %91, 31, !mcsema_real_eip !25
  %93 = and i32 %92, 1, !mcsema_real_eip !25
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !25
  store i1 %94, i1* %OF, !mcsema_real_eip !25
  %95 = trunc i32 %81 to i8, !mcsema_real_eip !25
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !25
  %97 = trunc i8 %96 to i1, !mcsema_real_eip !25
  %98 = xor i1 %97, true, !mcsema_real_eip !25
  store i1 %98, i1* %PF, !mcsema_real_eip !25
  %99 = icmp ult i32 %81, %EAX_val.42, !mcsema_real_eip !25
  store i1 %99, i1* %CF, !mcsema_real_eip !25
  %100 = zext i32 %81 to i64, !mcsema_real_eip !25
  store i64 %100, i64* %XAX, !mcsema_real_eip !25
  %EAX_val.45 = load i32, i32* %EAX.23, !mcsema_real_eip !26
  store i32 %EAX_val.45, i32* %78, !mcsema_real_eip !26
  br label %block_0x12, !mcsema_real_eip !27

block_0x40:                                       ; preds = %block_0x12
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !28
  %101 = add i64 16, %RSP_val.25, !mcsema_real_eip !28
  %102 = xor i64 %101, %RSP_val.25, !mcsema_real_eip !28
  %103 = xor i64 %102, 16, !mcsema_real_eip !28
  %104 = and i64 %103, 16, !mcsema_real_eip !28
  %105 = icmp ne i64 %104, 0, !mcsema_real_eip !28
  store i1 %105, i1* %AF, !mcsema_real_eip !28
  %106 = lshr i64 %101, 63, !mcsema_real_eip !28
  %107 = trunc i64 %106 to i1, !mcsema_real_eip !28
  store i1 %107, i1* %SF, !mcsema_real_eip !28
  %108 = icmp eq i64 %101, 0, !mcsema_real_eip !28
  store i1 %108, i1* %ZF, !mcsema_real_eip !28
  %109 = xor i64 %RSP_val.25, 16, !mcsema_real_eip !28
  %110 = xor i64 %109, -1, !mcsema_real_eip !28
  %111 = and i64 %110, %102, !mcsema_real_eip !28
  %112 = lshr i64 %111, 63, !mcsema_real_eip !28
  %113 = and i64 %112, 1, !mcsema_real_eip !28
  %114 = trunc i64 %113 to i1, !mcsema_real_eip !28
  store i1 %114, i1* %OF, !mcsema_real_eip !28
  %115 = trunc i64 %101 to i8, !mcsema_real_eip !28
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !28
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !28
  %118 = xor i1 %117, true, !mcsema_real_eip !28
  store i1 %118, i1* %PF, !mcsema_real_eip !28
  %119 = icmp ult i64 %101, %RSP_val.25, !mcsema_real_eip !28
  store i1 %119, i1* %CF, !mcsema_real_eip !28
  store i64 %101, i64* %XSP, !mcsema_real_eip !28
  %120 = inttoptr i64 %101 to i64*, !mcsema_real_eip !29
  %121 = load i64, i64* %120, !mcsema_real_eip !29
  store i64 %121, i64* %XBP, !mcsema_real_eip !29
  %122 = add i64 %101, 8, !mcsema_real_eip !29
  store i64 %122, i64* %XSP, !mcsema_real_eip !29
  %123 = add i64 %122, 8, !mcsema_real_eip !30
  %124 = inttoptr i64 %122 to i64*, !mcsema_real_eip !30
  %125 = load i64, i64* %124, !mcsema_real_eip !30
  store i64 %125, i64* %XIP, !mcsema_real_eip !30
  store i64 %123, i64* %XSP, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
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
!2 = !{i64 80}
!3 = !{i64 81}
!4 = !{i64 84}
!5 = !{i64 88}
!6 = !{i64 93}
!7 = !{i64 100}
!8 = !{i64 105}
!9 = !{i64 107}
!10 = !{i64 111}
!11 = !{i64 112}
!12 = !{i64 0}
!13 = !{i64 1}
!14 = !{i64 4}
!15 = !{i64 8}
!16 = !{i64 11}
!17 = !{i64 18}
!18 = !{i64 21}
!19 = !{i64 24}
!20 = !{i64 30}
!21 = !{i64 40}
!22 = !{i64 42}
!23 = !{i64 47}
!24 = !{i64 50}
!25 = !{i64 53}
!26 = !{i64 56}
!27 = !{i64 59}
!28 = !{i64 64}
!29 = !{i64 68}
!30 = !{i64 69}
