; ModuleID = 'Output/test_29.clang.trans.opt.bc'
source_filename = "Output/test_29.clang.bc"
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
module asm "  .globl sub_90;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_90(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xee = internal constant %0 <{ [16 x i8] c"%d %d %d %d %d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
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
  %3 = add i64 %RSP_val.1, -56
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
  %13 = icmp ult i64 %1, 48, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %17, align 4, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.5, -36, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %19, align 4, !mcsema_real_eip !6
  br label %block_0xa6, !mcsema_real_eip !7

block_0xa6:                                       ; preds = %block_0xb0, %entry
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %20 = add i64 %RBP_val.6, -36, !mcsema_real_eip !7
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !7
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !7
  %23 = add i32 %22, -5
  %24 = xor i32 %23, %22, !mcsema_real_eip !7
  %25 = and i32 %24, 16, !mcsema_real_eip !7
  %26 = icmp ne i32 %25, 0, !mcsema_real_eip !7
  store i1 %26, i1* %AF, align 1, !mcsema_real_eip !7
  %27 = trunc i32 %23 to i8, !mcsema_real_eip !7
  %28 = tail call i8 @llvm.ctpop.i8(i8 %27), !mcsema_real_eip !7
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  store i1 %30, i1* %PF, align 1, !mcsema_real_eip !7
  %31 = icmp eq i32 %23, 0, !mcsema_real_eip !7
  store i1 %31, i1* %ZF, align 1, !mcsema_real_eip !7
  %32 = icmp slt i32 %23, 0
  store i1 %32, i1* %SF, align 1, !mcsema_real_eip !7
  %33 = icmp ult i32 %22, 5, !mcsema_real_eip !7
  store i1 %33, i1* %CF, align 1, !mcsema_real_eip !7
  %34 = and i32 %24, %22, !mcsema_real_eip !7
  %35 = icmp slt i32 %34, 0
  store i1 %35, i1* %OF, align 1, !mcsema_real_eip !7
  %tmp = xor i1 %32, %35
  br i1 %tmp, label %block_0xb0, label %block_0xe6, !mcsema_real_eip !8

block_0xb0:                                       ; preds = %block_0xa6
  %36 = add i64 %RBP_val.6, -32, !mcsema_real_eip !9
  store i64 %36, i64* %XSI, align 8, !mcsema_real_eip !9
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !10
  store i32 5, i32* %37, align 4, !mcsema_real_eip !10
  %RBP_val.16 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %38 = add i64 %RBP_val.16, -28, !mcsema_real_eip !11
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !11
  store i32 6, i32* %39, align 4, !mcsema_real_eip !11
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %40 = add i64 %RBP_val.17, -24, !mcsema_real_eip !12
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !12
  store i32 7, i32* %41, align 4, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %42 = add i64 %RBP_val.18, -20, !mcsema_real_eip !13
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !13
  store i32 8, i32* %43, align 4, !mcsema_real_eip !13
  %RBP_val.19 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %44 = add i64 %RBP_val.19, -36, !mcsema_real_eip !14
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !14
  %46 = load i32, i32* %45, align 4, !mcsema_real_eip !14
  %47 = zext i32 %46 to i64, !mcsema_real_eip !14
  store i64 %47, i64* %XDI, align 8, !mcsema_real_eip !14
  %RSP_val.20 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %48 = add i64 %RSP_val.20, -8
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !15
  store i64 -4981261766360305936, i64* %49, align 8, !mcsema_real_eip !15
  store i64 %48, i64* %XSP, align 8, !mcsema_real_eip !15
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !15
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %50 = add i64 %RBP_val.21, -36, !mcsema_real_eip !16
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !16
  %52 = load i32, i32* %51, align 4, !mcsema_real_eip !16
  %53 = add i32 %52, 1, !mcsema_real_eip !17
  %54 = xor i32 %53, %52, !mcsema_real_eip !17
  %55 = and i32 %54, 16, !mcsema_real_eip !17
  %56 = icmp ne i32 %55, 0, !mcsema_real_eip !17
  store i1 %56, i1* %AF, align 1, !mcsema_real_eip !17
  %57 = icmp slt i32 %53, 0
  store i1 %57, i1* %SF, align 1, !mcsema_real_eip !17
  %58 = icmp eq i32 %53, 0, !mcsema_real_eip !17
  store i1 %58, i1* %ZF, align 1, !mcsema_real_eip !17
  %59 = xor i32 %52, -2147483648, !mcsema_real_eip !17
  %60 = and i32 %54, %59, !mcsema_real_eip !17
  %61 = icmp slt i32 %60, 0
  store i1 %61, i1* %OF, align 1, !mcsema_real_eip !17
  %62 = trunc i32 %53 to i8, !mcsema_real_eip !17
  %63 = tail call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !17
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  store i1 %65, i1* %PF, align 1, !mcsema_real_eip !17
  %66 = icmp eq i32 %52, -1
  store i1 %66, i1* %CF, align 1, !mcsema_real_eip !17
  %67 = zext i32 %53 to i64, !mcsema_real_eip !17
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !17
  store i32 %53, i32* %51, align 4, !mcsema_real_eip !18
  br label %block_0xa6, !mcsema_real_eip !19

block_0xe6:                                       ; preds = %block_0xa6
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !20
  %RSP_val.11 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %68 = add i64 %RSP_val.11, 48, !mcsema_real_eip !21
  %69 = xor i64 %68, %RSP_val.11, !mcsema_real_eip !21
  %70 = and i64 %69, 16
  %71 = icmp eq i64 %70, 0
  store i1 %71, i1* %AF, align 1, !mcsema_real_eip !21
  %72 = icmp slt i64 %68, 0
  store i1 %72, i1* %SF, align 1, !mcsema_real_eip !21
  %73 = icmp eq i64 %68, 0, !mcsema_real_eip !21
  store i1 %73, i1* %ZF, align 1, !mcsema_real_eip !21
  %74 = xor i64 %RSP_val.11, -9223372036854775808, !mcsema_real_eip !21
  %75 = and i64 %69, %74, !mcsema_real_eip !21
  %76 = icmp slt i64 %75, 0
  store i1 %76, i1* %OF, align 1, !mcsema_real_eip !21
  %77 = trunc i64 %68 to i8, !mcsema_real_eip !21
  %78 = tail call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !21
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  store i1 %80, i1* %PF, align 1, !mcsema_real_eip !21
  %81 = icmp ugt i64 %RSP_val.11, -49
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !21
  store i64 %68, i64* %XSP, align 8, !mcsema_real_eip !21
  %82 = inttoptr i64 %68 to i64*, !mcsema_real_eip !22
  %83 = load i64, i64* %82, align 8, !mcsema_real_eip !22
  store i64 %83, i64* %XBP, align 8, !mcsema_real_eip !22
  %84 = add i64 %RSP_val.11, 56, !mcsema_real_eip !22
  store i64 %84, i64* %XSP, align 8, !mcsema_real_eip !22
  %85 = add i64 %RSP_val.11, 64, !mcsema_real_eip !23
  %86 = inttoptr i64 %84 to i64*, !mcsema_real_eip !23
  %87 = load i64, i64* %86, align 8, !mcsema_real_eip !23
  store i64 %87, i64* %XIP, align 8, !mcsema_real_eip !23
  store i64 %85, i64* %XSP, align 8, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !24
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !24
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !24
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !24
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !24
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !24
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !24
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !24
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !24
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !24
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !24
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !24
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !24
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !24
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !24
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !24
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !24
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !24
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !24
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !24
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %RSP_val.28 = load i64, i64* %XSP, align 8, !mcsema_real_eip !24
  %1 = add i64 %RSP_val.28, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !24
  store i64 %RBP_val.27, i64* %2, align 8, !mcsema_real_eip !24
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !25
  %3 = add i64 %RSP_val.28, -40
  %4 = xor i64 %3, %1, !mcsema_real_eip !26
  %5 = and i64 %4, 16, !mcsema_real_eip !26
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !26
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !26
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !26
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !26
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !26
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !26
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !26
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !26
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !26
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !26
  %14 = and i64 %4, %1, !mcsema_real_eip !26
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !26
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !26
  %16 = add i64 %RSP_val.28, -12, !mcsema_real_eip !27
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !27
  %EDI_val.33 = load i32, i32* %EDI.32, align 4, !mcsema_real_eip !27
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !27
  store i32 %EDI_val.33, i32* %17, align 4, !mcsema_real_eip !27
  %RBP_val.34 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %18 = add i64 %RBP_val.34, -16, !mcsema_real_eip !28
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !28
  %RSI_val.35 = load i64, i64* %XSI, align 8, !mcsema_real_eip !28
  store i64 %RSI_val.35, i64* %19, align 8, !mcsema_real_eip !28
  %RBP_val.36 = load i64, i64* %XBP, align 8, !mcsema_real_eip !29
  %20 = add i64 %RBP_val.36, -20, !mcsema_real_eip !29
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !29
  store i32 3, i32* %21, align 4, !mcsema_real_eip !29
  br label %block_0x16, !mcsema_real_eip !30

block_0x16:                                       ; preds = %block_0x22, %entry
  %RBP_val.37 = load i64, i64* %XBP, align 8, !mcsema_real_eip !30
  %22 = add i64 %RBP_val.37, -20, !mcsema_real_eip !30
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !30
  %24 = load i32, i32* %23, align 4, !mcsema_real_eip !30
  %25 = zext i32 %24 to i64, !mcsema_real_eip !30
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !30
  %26 = add i64 %RBP_val.37, -4, !mcsema_real_eip !31
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !31
  %28 = load i32, i32* %27, align 4, !mcsema_real_eip !31
  %29 = sub i32 %24, %28, !mcsema_real_eip !31
  %30 = xor i32 %29, %24, !mcsema_real_eip !31
  %31 = xor i32 %30, %28, !mcsema_real_eip !31
  %32 = and i32 %31, 16, !mcsema_real_eip !31
  %33 = icmp ne i32 %32, 0, !mcsema_real_eip !31
  store i1 %33, i1* %AF, align 1, !mcsema_real_eip !31
  %34 = trunc i32 %29 to i8, !mcsema_real_eip !31
  %35 = tail call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !31
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  store i1 %37, i1* %PF, align 1, !mcsema_real_eip !31
  %38 = icmp eq i32 %29, 0, !mcsema_real_eip !31
  store i1 %38, i1* %ZF, align 1, !mcsema_real_eip !31
  %39 = icmp slt i32 %29, 0
  store i1 %39, i1* %SF, align 1, !mcsema_real_eip !31
  %40 = icmp ult i32 %24, %28, !mcsema_real_eip !31
  store i1 %40, i1* %CF, align 1, !mcsema_real_eip !31
  %41 = xor i32 %28, %24, !mcsema_real_eip !31
  %42 = and i32 %30, %41, !mcsema_real_eip !31
  %43 = icmp slt i32 %42, 0
  store i1 %43, i1* %OF, align 1, !mcsema_real_eip !31
  %44 = or i1 %40, %38, !mcsema_real_eip !32
  %45 = add i64 %RBP_val.37, -16
  %46 = inttoptr i64 %45 to i64*
  br i1 %44, label %block_0x4d, label %block_0x22, !mcsema_real_eip !32

block_0x22:                                       ; preds = %block_0x16
  %47 = load i64, i64* %46, align 8, !mcsema_real_eip !33
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !33
  %48 = load i32, i32* %23, align 4, !mcsema_real_eip !34
  %49 = add i32 %48, -1
  %50 = xor i32 %49, %48, !mcsema_real_eip !35
  %51 = and i32 %50, 16, !mcsema_real_eip !35
  %52 = icmp ne i32 %51, 0, !mcsema_real_eip !35
  store i1 %52, i1* %AF, align 1, !mcsema_real_eip !35
  %53 = trunc i32 %49 to i8, !mcsema_real_eip !35
  %54 = tail call i8 @llvm.ctpop.i8(i8 %53), !mcsema_real_eip !35
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  store i1 %56, i1* %PF, align 1, !mcsema_real_eip !35
  %57 = icmp eq i32 %49, 0, !mcsema_real_eip !35
  store i1 %57, i1* %ZF, align 1, !mcsema_real_eip !35
  %58 = icmp slt i32 %49, 0
  store i1 %58, i1* %SF, align 1, !mcsema_real_eip !35
  %59 = icmp eq i32 %48, 0
  store i1 %59, i1* %CF, align 1, !mcsema_real_eip !35
  %60 = and i32 %50, %48, !mcsema_real_eip !35
  %61 = icmp slt i32 %60, 0
  store i1 %61, i1* %OF, align 1, !mcsema_real_eip !35
  %62 = zext i32 %49 to i64
  store i64 %62, i64* %XCX, align 8, !mcsema_real_eip !36
  store i64 %62, i64* %XDX, align 8, !mcsema_real_eip !37
  %63 = shl nuw nsw i64 %62, 2
  %64 = add i64 %63, %47, !mcsema_real_eip !38
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !38
  %66 = load i32, i32* %65, align 4, !mcsema_real_eip !38
  %67 = zext i32 %66 to i64, !mcsema_real_eip !38
  store i64 %67, i64* %XCX, align 8, !mcsema_real_eip !38
  %68 = load i64, i64* %46, align 8, !mcsema_real_eip !39
  store i64 %68, i64* %XAX, align 8, !mcsema_real_eip !39
  %69 = load i32, i32* %23, align 4, !mcsema_real_eip !40
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %XSI, align 8, !mcsema_real_eip !40
  store i64 %70, i64* %XDX, align 8, !mcsema_real_eip !41
  %71 = shl nuw nsw i64 %70, 2
  %72 = add i64 %71, %68, !mcsema_real_eip !42
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !42
  store i32 %66, i32* %73, align 4, !mcsema_real_eip !42
  %RBP_val.83 = load i64, i64* %XBP, align 8, !mcsema_real_eip !43
  %74 = add i64 %RBP_val.83, -20, !mcsema_real_eip !43
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !43
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !43
  %77 = add i32 %76, -1, !mcsema_real_eip !44
  %78 = xor i32 %77, %76, !mcsema_real_eip !44
  %79 = and i32 %78, 16
  %80 = icmp eq i32 %79, 0
  store i1 %80, i1* %AF, align 1, !mcsema_real_eip !44
  %81 = icmp slt i32 %77, 0
  store i1 %81, i1* %SF, align 1, !mcsema_real_eip !44
  %82 = icmp eq i32 %77, 0, !mcsema_real_eip !44
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !44
  %83 = and i32 %78, %76, !mcsema_real_eip !44
  %84 = icmp slt i32 %83, 0
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !44
  %85 = trunc i32 %77 to i8, !mcsema_real_eip !44
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !44
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !44
  %89 = icmp ne i32 %76, 0
  store i1 %89, i1* %CF, align 1, !mcsema_real_eip !44
  %90 = zext i32 %77 to i64, !mcsema_real_eip !44
  store i64 %90, i64* %XAX, align 8, !mcsema_real_eip !44
  store i32 %77, i32* %75, align 4, !mcsema_real_eip !45
  br label %block_0x16, !mcsema_real_eip !46

block_0x4d:                                       ; preds = %block_0x16
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !24
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !24
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, align 8, !mcsema_real_eip !47
  %91 = load i32, i32* %27, align 4, !mcsema_real_eip !48
  %92 = zext i32 %91 to i64, !mcsema_real_eip !48
  store i64 %92, i64* %XSI, align 8, !mcsema_real_eip !48
  %93 = load i64, i64* %46, align 8, !mcsema_real_eip !49
  store i64 %93, i64* %XAX, align 8, !mcsema_real_eip !49
  %94 = inttoptr i64 %93 to i32*, !mcsema_real_eip !50
  %95 = load i32, i32* %94, align 4, !mcsema_real_eip !50
  %96 = zext i32 %95 to i64, !mcsema_real_eip !50
  store i64 %96, i64* %XDX, align 8, !mcsema_real_eip !50
  %97 = load i64, i64* %46, align 8, !mcsema_real_eip !51
  store i64 %97, i64* %XAX, align 8, !mcsema_real_eip !51
  %98 = add i64 %97, 4, !mcsema_real_eip !52
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !52
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !52
  %101 = zext i32 %100 to i64, !mcsema_real_eip !52
  store i64 %101, i64* %XCX, align 8, !mcsema_real_eip !52
  %102 = load i64, i64* %46, align 8, !mcsema_real_eip !53
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !53
  %103 = add i64 %102, 8, !mcsema_real_eip !54
  %104 = inttoptr i64 %103 to i32*, !mcsema_real_eip !54
  %105 = load i32, i32* %104, align 4, !mcsema_real_eip !54
  %106 = zext i32 %105 to i64, !mcsema_real_eip !54
  store i64 %106, i64* %R8, align 8, !mcsema_real_eip !54
  %107 = load i64, i64* %46, align 8, !mcsema_real_eip !55
  store i64 %107, i64* %XAX, align 8, !mcsema_real_eip !55
  %108 = add i64 %107, 12, !mcsema_real_eip !56
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !56
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !56
  %111 = zext i32 %110 to i64, !mcsema_real_eip !56
  store i64 %111, i64* %R9, align 8, !mcsema_real_eip !56
  %AL.50 = bitcast i64* %XAX to i8*, !mcsema_real_eip !57
  store i8 0, i8* %AL.50, align 1, !mcsema_real_eip !57
  %RSP_val.57 = load i64, i64* %XSP, align 8, !mcsema_real_eip !58
  %112 = inttoptr i64 %RSP_val.57 to i64*, !mcsema_real_eip !58
  %113 = load i64, i64* %112, align 8, !mcsema_real_eip !58
  %114 = add i64 %RSP_val.57, 8, !mcsema_real_eip !58
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !58
  %116 = load i64, i64* %115, align 8, !mcsema_real_eip !58
  %117 = add i64 %RSP_val.57, 16, !mcsema_real_eip !58
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !58
  %119 = load i64, i64* %118, align 8, !mcsema_real_eip !58
  %120 = add i64 %RSP_val.57, 24, !mcsema_real_eip !58
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !58
  %122 = load i64, i64* %121, align 8, !mcsema_real_eip !58
  %123 = add i64 %RSP_val.57, 32, !mcsema_real_eip !58
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !58
  %125 = load i64, i64* %124, align 8, !mcsema_real_eip !58
  %126 = add i64 %RSP_val.57, 40, !mcsema_real_eip !58
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !58
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !58
  %129 = add i64 %RSP_val.57, -8
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !58
  store i64 -2415393069852865332, i64* %130, align 8, !mcsema_real_eip !58
  store i64 %129, i64* %XSP, align 8, !mcsema_real_eip !58
  %131 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xee to i64), i64 %92, i64 %96, i64 %101, i64 %106, i64 %111, i64 %113, i64 %116, i64 %119, i64 %122, i64 %125, i64 %128), !mcsema_real_eip !58
  store i64 %131, i64* %XAX, align 8, !mcsema_real_eip !58
  %RBP_val.59 = load i64, i64* %XBP, align 8, !mcsema_real_eip !59
  %132 = add i64 %RBP_val.59, -24, !mcsema_real_eip !59
  %133 = trunc i64 %131 to i32
  %134 = inttoptr i64 %132 to i32*, !mcsema_real_eip !59
  store i32 %133, i32* %134, align 4, !mcsema_real_eip !59
  %RSP_val.62 = load i64, i64* %XSP, align 8, !mcsema_real_eip !60
  %135 = add i64 %RSP_val.62, 32, !mcsema_real_eip !60
  %136 = xor i64 %135, %RSP_val.62, !mcsema_real_eip !60
  %137 = and i64 %136, 16, !mcsema_real_eip !60
  %138 = icmp ne i64 %137, 0, !mcsema_real_eip !60
  store i1 %138, i1* %AF, align 1, !mcsema_real_eip !60
  %139 = icmp slt i64 %135, 0
  store i1 %139, i1* %SF, align 1, !mcsema_real_eip !60
  %140 = icmp eq i64 %135, 0, !mcsema_real_eip !60
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !60
  %141 = xor i64 %RSP_val.62, -9223372036854775808, !mcsema_real_eip !60
  %142 = and i64 %136, %141, !mcsema_real_eip !60
  %143 = icmp slt i64 %142, 0
  store i1 %143, i1* %OF, align 1, !mcsema_real_eip !60
  %144 = trunc i64 %135 to i8, !mcsema_real_eip !60
  %145 = tail call i8 @llvm.ctpop.i8(i8 %144), !mcsema_real_eip !60
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  store i1 %147, i1* %PF, align 1, !mcsema_real_eip !60
  %148 = icmp ugt i64 %RSP_val.62, -33
  store i1 %148, i1* %CF, align 1, !mcsema_real_eip !60
  store i64 %135, i64* %XSP, align 8, !mcsema_real_eip !60
  %149 = inttoptr i64 %135 to i64*, !mcsema_real_eip !61
  %150 = load i64, i64* %149, align 8, !mcsema_real_eip !61
  store i64 %150, i64* %XBP, align 8, !mcsema_real_eip !61
  %151 = add i64 %RSP_val.62, 40, !mcsema_real_eip !61
  store i64 %151, i64* %XSP, align 8, !mcsema_real_eip !61
  %152 = add i64 %RSP_val.62, 48, !mcsema_real_eip !62
  %153 = inttoptr i64 %151 to i64*, !mcsema_real_eip !62
  %154 = load i64, i64* %153, align 8, !mcsema_real_eip !62
  store i64 %154, i64* %XIP, align 8, !mcsema_real_eip !62
  store i64 %152, i64* %XSP, align 8, !mcsema_real_eip !62
  ret void, !mcsema_real_eip !62
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
!2 = !{i64 144}
!3 = !{i64 145}
!4 = !{i64 148}
!5 = !{i64 152}
!6 = !{i64 159}
!7 = !{i64 166}
!8 = !{i64 170}
!9 = !{i64 176}
!10 = !{i64 180}
!11 = !{i64 187}
!12 = !{i64 194}
!13 = !{i64 201}
!14 = !{i64 208}
!15 = !{i64 211}
!16 = !{i64 216}
!17 = !{i64 219}
!18 = !{i64 222}
!19 = !{i64 225}
!20 = !{i64 230}
!21 = !{i64 232}
!22 = !{i64 236}
!23 = !{i64 237}
!24 = !{i64 0}
!25 = !{i64 1}
!26 = !{i64 4}
!27 = !{i64 8}
!28 = !{i64 11}
!29 = !{i64 15}
!30 = !{i64 22}
!31 = !{i64 25}
!32 = !{i64 28}
!33 = !{i64 34}
!34 = !{i64 38}
!35 = !{i64 41}
!36 = !{i64 44}
!37 = !{i64 46}
!38 = !{i64 48}
!39 = !{i64 51}
!40 = !{i64 55}
!41 = !{i64 58}
!42 = !{i64 60}
!43 = !{i64 63}
!44 = !{i64 66}
!45 = !{i64 69}
!46 = !{i64 72}
!47 = !{i64 77}
!48 = !{i64 87}
!49 = !{i64 90}
!50 = !{i64 94}
!51 = !{i64 96}
!52 = !{i64 100}
!53 = !{i64 103}
!54 = !{i64 107}
!55 = !{i64 111}
!56 = !{i64 115}
!57 = !{i64 119}
!58 = !{i64 121}
!59 = !{i64 126}
!60 = !{i64 129}
!61 = !{i64 133}
!62 = !{i64 134}
