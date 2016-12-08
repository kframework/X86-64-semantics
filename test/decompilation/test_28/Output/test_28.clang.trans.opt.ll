; ModuleID = 'Output/test_28.clang.trans.opt.bc'
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
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x71 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_50(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -24
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = and i64 %4, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !4
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !4
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !4
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !4
  %13 = icmp ult i64 %1, 16, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 2, i64* %XDI, align 8, !mcsema_real_eip !5
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %17, align 4, !mcsema_real_eip !6
  %RSP_val.5 = load i64, i64* %XSP, align 8, !mcsema_real_eip !7
  %18 = add i64 %RSP_val.5, -8
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %19, align 8, !mcsema_real_eip !7
  store i64 %18, i64* %XSP, align 8, !mcsema_real_eip !7
  tail call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !7
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !8
  %RSP_val.10 = load i64, i64* %XSP, align 8, !mcsema_real_eip !9
  %20 = add i64 %RSP_val.10, 16, !mcsema_real_eip !9
  %21 = xor i64 %20, %RSP_val.10, !mcsema_real_eip !9
  %22 = and i64 %21, 16
  %23 = icmp eq i64 %22, 0
  store i1 %23, i1* %AF, align 1, !mcsema_real_eip !9
  %24 = icmp slt i64 %20, 0
  store i1 %24, i1* %SF, align 1, !mcsema_real_eip !9
  %25 = icmp eq i64 %20, 0, !mcsema_real_eip !9
  store i1 %25, i1* %ZF, align 1, !mcsema_real_eip !9
  %26 = xor i64 %RSP_val.10, -9223372036854775808, !mcsema_real_eip !9
  %27 = and i64 %21, %26, !mcsema_real_eip !9
  %28 = icmp slt i64 %27, 0
  store i1 %28, i1* %OF, align 1, !mcsema_real_eip !9
  %29 = trunc i64 %20 to i8, !mcsema_real_eip !9
  %30 = tail call i8 @llvm.ctpop.i8(i8 %29), !mcsema_real_eip !9
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  store i1 %32, i1* %PF, align 1, !mcsema_real_eip !9
  %33 = icmp ugt i64 %RSP_val.10, -17
  store i1 %33, i1* %CF, align 1, !mcsema_real_eip !9
  store i64 %20, i64* %XSP, align 8, !mcsema_real_eip !9
  %34 = inttoptr i64 %20 to i64*, !mcsema_real_eip !10
  %35 = load i64, i64* %34, align 8, !mcsema_real_eip !10
  store i64 %35, i64* %XBP, align 8, !mcsema_real_eip !10
  %36 = add i64 %RSP_val.10, 24, !mcsema_real_eip !10
  store i64 %36, i64* %XSP, align 8, !mcsema_real_eip !10
  %37 = add i64 %RSP_val.10, 32, !mcsema_real_eip !11
  %38 = inttoptr i64 %36 to i64*, !mcsema_real_eip !11
  %39 = load i64, i64* %38, align 8, !mcsema_real_eip !11
  store i64 %39, i64* %XIP, align 8, !mcsema_real_eip !11
  store i64 %37, i64* %XSP, align 8, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !12
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !12
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !12
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !12
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !12
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !12
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !12
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !12
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !12
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !12
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !12
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !12
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !12
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !12
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !12
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !12
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !12
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !12
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !12
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !12
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !12
  %RBP_val.13 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !12
  %1 = add i64 %RSP_val.14, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !12
  store i64 %RBP_val.13, i64* %2, align 8, !mcsema_real_eip !12
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !13
  %3 = add i64 %RSP_val.14, -24
  %4 = xor i64 %3, %1, !mcsema_real_eip !14
  %5 = and i64 %4, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !14
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !14
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !14
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !14
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !14
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !14
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !14
  %13 = icmp ult i64 %1, 16, !mcsema_real_eip !14
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !14
  %14 = and i64 %4, %1, !mcsema_real_eip !14
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !14
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !14
  %16 = add i64 %RSP_val.14, -12, !mcsema_real_eip !15
  %EDI.18 = bitcast i64* %XDI to i32*, !mcsema_real_eip !15
  %EDI_val.19 = load i32, i32* %EDI.18, align 4, !mcsema_real_eip !15
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !15
  store i32 %EDI_val.19, i32* %17, align 4, !mcsema_real_eip !15
  %RBP_val.20 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %18 = add i64 %RBP_val.20, -8, !mcsema_real_eip !16
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !16
  store i32 0, i32* %19, align 4, !mcsema_real_eip !16
  %AL.28 = bitcast i64* %XAX to i8*
  br label %block_0x12, !mcsema_real_eip !17

block_0x12:                                       ; preds = %block_0x1e, %entry
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !17
  %20 = add i64 %RBP_val.21, -8, !mcsema_real_eip !17
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !17
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !17
  %23 = zext i32 %22 to i64, !mcsema_real_eip !17
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !17
  %24 = add i64 %RBP_val.21, -4, !mcsema_real_eip !18
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !18
  %26 = load i32, i32* %25, align 4, !mcsema_real_eip !18
  %27 = sub i32 %22, %26, !mcsema_real_eip !18
  %28 = xor i32 %27, %22, !mcsema_real_eip !18
  %29 = xor i32 %28, %26, !mcsema_real_eip !18
  %30 = and i32 %29, 16, !mcsema_real_eip !18
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !18
  store i1 %31, i1* %AF, align 1, !mcsema_real_eip !18
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !18
  %33 = tail call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !18
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  store i1 %35, i1* %PF, align 1, !mcsema_real_eip !18
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !18
  store i1 %36, i1* %ZF, align 1, !mcsema_real_eip !18
  %37 = icmp slt i32 %27, 0
  store i1 %37, i1* %SF, align 1, !mcsema_real_eip !18
  %38 = icmp ult i32 %22, %26, !mcsema_real_eip !18
  store i1 %38, i1* %CF, align 1, !mcsema_real_eip !18
  %39 = xor i32 %26, %22, !mcsema_real_eip !18
  %40 = and i32 %28, %39, !mcsema_real_eip !18
  %41 = icmp slt i32 %40, 0
  store i1 %41, i1* %OF, align 1, !mcsema_real_eip !18
  %tmp = xor i1 %37, %41
  %RSP_val.25 = load i64, i64* %XSP, align 8
  br i1 %tmp, label %block_0x1e, label %block_0x40, !mcsema_real_eip !19

block_0x1e:                                       ; preds = %block_0x12
  store i64 ptrtoint (%0* @data_0x71 to i64), i64* %XDI, align 8, !mcsema_real_eip !20
  store i8 0, i8* %AL.28, align 1, !mcsema_real_eip !21
  %RSI_val.30 = load i64, i64* %XSI, align 8, !mcsema_real_eip !22
  %RDX_val.31 = load i64, i64* %XDX, align 8, !mcsema_real_eip !22
  %RCX_val.32 = load i64, i64* %XCX, align 8, !mcsema_real_eip !22
  %R8_val.33 = load i64, i64* %R8, align 8, !mcsema_real_eip !22
  %R9_val.34 = load i64, i64* %R9, align 8, !mcsema_real_eip !22
  %42 = inttoptr i64 %RSP_val.25 to i64*, !mcsema_real_eip !22
  %43 = load i64, i64* %42, align 8, !mcsema_real_eip !22
  %44 = add i64 %RSP_val.25, 8, !mcsema_real_eip !22
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !22
  %46 = load i64, i64* %45, align 8, !mcsema_real_eip !22
  %47 = add i64 %RSP_val.25, 16, !mcsema_real_eip !22
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !22
  %49 = load i64, i64* %48, align 8, !mcsema_real_eip !22
  %50 = add i64 %RSP_val.25, 24, !mcsema_real_eip !22
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !22
  %52 = load i64, i64* %51, align 8, !mcsema_real_eip !22
  %53 = add i64 %RSP_val.25, 32, !mcsema_real_eip !22
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !22
  %55 = load i64, i64* %54, align 8, !mcsema_real_eip !22
  %56 = add i64 %RSP_val.25, 40, !mcsema_real_eip !22
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !22
  %58 = load i64, i64* %57, align 8, !mcsema_real_eip !22
  %59 = add i64 %RSP_val.25, -8
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !22
  store i64 -2415393069852865332, i64* %60, align 8, !mcsema_real_eip !22
  store i64 %59, i64* %XSP, align 8, !mcsema_real_eip !22
  %61 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x71 to i64), i64 %RSI_val.30, i64 %RDX_val.31, i64 %RCX_val.32, i64 %R8_val.33, i64 %R9_val.34, i64 %43, i64 %46, i64 %49, i64 %52, i64 %55, i64 %58), !mcsema_real_eip !22
  store i64 %61, i64* %XAX, align 8, !mcsema_real_eip !22
  %RBP_val.37 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %62 = add i64 %RBP_val.37, -12, !mcsema_real_eip !23
  %63 = trunc i64 %61 to i32
  %64 = inttoptr i64 %62 to i32*, !mcsema_real_eip !23
  store i32 %63, i32* %64, align 4, !mcsema_real_eip !23
  %RBP_val.40 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %65 = add i64 %RBP_val.40, -8, !mcsema_real_eip !24
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !24
  %67 = load i32, i32* %66, align 4, !mcsema_real_eip !24
  %68 = add i32 %67, 1, !mcsema_real_eip !25
  %69 = xor i32 %68, %67, !mcsema_real_eip !25
  %70 = and i32 %69, 16, !mcsema_real_eip !25
  %71 = icmp ne i32 %70, 0, !mcsema_real_eip !25
  store i1 %71, i1* %AF, align 1, !mcsema_real_eip !25
  %72 = icmp slt i32 %68, 0
  store i1 %72, i1* %SF, align 1, !mcsema_real_eip !25
  %73 = icmp eq i32 %68, 0, !mcsema_real_eip !25
  store i1 %73, i1* %ZF, align 1, !mcsema_real_eip !25
  %74 = xor i32 %67, -2147483648, !mcsema_real_eip !25
  %75 = and i32 %69, %74, !mcsema_real_eip !25
  %76 = icmp slt i32 %75, 0
  store i1 %76, i1* %OF, align 1, !mcsema_real_eip !25
  %77 = trunc i32 %68 to i8, !mcsema_real_eip !25
  %78 = tail call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !25
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  store i1 %80, i1* %PF, align 1, !mcsema_real_eip !25
  %81 = icmp eq i32 %67, -1
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !25
  %82 = zext i32 %68 to i64, !mcsema_real_eip !25
  store i64 %82, i64* %XAX, align 8, !mcsema_real_eip !25
  store i32 %68, i32* %66, align 4, !mcsema_real_eip !26
  br label %block_0x12, !mcsema_real_eip !27

block_0x40:                                       ; preds = %block_0x12
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !12
  %83 = add i64 %RSP_val.25, 16, !mcsema_real_eip !28
  %84 = xor i64 %83, %RSP_val.25, !mcsema_real_eip !28
  %85 = and i64 %84, 16
  %86 = icmp eq i64 %85, 0
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !28
  %87 = icmp slt i64 %83, 0
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !28
  %88 = icmp eq i64 %83, 0, !mcsema_real_eip !28
  store i1 %88, i1* %ZF, align 1, !mcsema_real_eip !28
  %89 = xor i64 %RSP_val.25, -9223372036854775808, !mcsema_real_eip !28
  %90 = and i64 %84, %89, !mcsema_real_eip !28
  %91 = icmp slt i64 %90, 0
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !28
  %92 = trunc i64 %83 to i8, !mcsema_real_eip !28
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !28
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !28
  %96 = icmp ugt i64 %RSP_val.25, -17
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !28
  store i64 %83, i64* %XSP, align 8, !mcsema_real_eip !28
  %97 = inttoptr i64 %83 to i64*, !mcsema_real_eip !29
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !29
  store i64 %98, i64* %XBP, align 8, !mcsema_real_eip !29
  %99 = add i64 %RSP_val.25, 24, !mcsema_real_eip !29
  store i64 %99, i64* %XSP, align 8, !mcsema_real_eip !29
  %100 = add i64 %RSP_val.25, 32, !mcsema_real_eip !30
  %101 = inttoptr i64 %99 to i64*, !mcsema_real_eip !30
  %102 = load i64, i64* %101, align 8, !mcsema_real_eip !30
  store i64 %102, i64* %XIP, align 8, !mcsema_real_eip !30
  store i64 %100, i64* %XSP, align 8, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

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
