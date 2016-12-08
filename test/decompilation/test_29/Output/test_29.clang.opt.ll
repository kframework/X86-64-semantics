; ModuleID = 'Output/test_29.clang.opt.bc'
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
  %.sink.in.in.pre = load i64, i64* %XBP, align 8
  br label %block_0xa6, !mcsema_real_eip !6

block_0xa6:                                       ; preds = %block_0xb0, %entry
  %.sink.in.in = phi i64 [ %RBP_val.21, %block_0xb0 ], [ %.sink.in.in.pre, %entry ]
  %EAX_val.26.sink = phi i32 [ %52, %block_0xb0 ], [ 0, %entry ]
  %.sink.in = add i64 %.sink.in.in, -36
  %18 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.26.sink, i32* %18, align 4
  %RBP_val.6 = load i64, i64* %XBP, align 8
  %19 = add i64 %RBP_val.6, -36, !mcsema_real_eip !6
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !6
  %21 = load i32, i32* %20, align 4, !mcsema_real_eip !6
  %22 = add i32 %21, -5
  %23 = xor i32 %22, %21, !mcsema_real_eip !6
  %24 = and i32 %23, 16, !mcsema_real_eip !6
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !6
  store i1 %25, i1* %AF, align 1, !mcsema_real_eip !6
  %26 = trunc i32 %22 to i8, !mcsema_real_eip !6
  %27 = tail call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !6
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  store i1 %29, i1* %PF, align 1, !mcsema_real_eip !6
  %30 = icmp eq i32 %22, 0, !mcsema_real_eip !6
  store i1 %30, i1* %ZF, align 1, !mcsema_real_eip !6
  %31 = icmp slt i32 %22, 0
  store i1 %31, i1* %SF, align 1, !mcsema_real_eip !6
  %32 = icmp ult i32 %21, 5, !mcsema_real_eip !6
  store i1 %32, i1* %CF, align 1, !mcsema_real_eip !6
  %33 = and i32 %23, %21, !mcsema_real_eip !6
  %34 = icmp slt i32 %33, 0
  store i1 %34, i1* %OF, align 1, !mcsema_real_eip !6
  %tmp = xor i1 %31, %34
  br i1 %tmp, label %block_0xb0, label %block_0xe6, !mcsema_real_eip !7

block_0xb0:                                       ; preds = %block_0xa6
  %35 = add i64 %RBP_val.6, -32
  store i64 %35, i64* %XSI, align 8, !mcsema_real_eip !8
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !9
  store i32 5, i32* %36, align 4, !mcsema_real_eip !9
  %RBP_val.16 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %37 = add i64 %RBP_val.16, -28, !mcsema_real_eip !10
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !10
  store i32 6, i32* %38, align 4, !mcsema_real_eip !10
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %39 = add i64 %RBP_val.17, -24, !mcsema_real_eip !11
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !11
  store i32 7, i32* %40, align 4, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %41 = add i64 %RBP_val.18, -20, !mcsema_real_eip !12
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !12
  store i32 8, i32* %42, align 4, !mcsema_real_eip !12
  %RBP_val.19 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %43 = add i64 %RBP_val.19, -36, !mcsema_real_eip !13
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !13
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !13
  %46 = zext i32 %45 to i64, !mcsema_real_eip !13
  store i64 %46, i64* %XDI, align 8, !mcsema_real_eip !13
  %RSP_val.20 = load i64, i64* %XSP, align 8, !mcsema_real_eip !14
  %47 = add i64 %RSP_val.20, -8
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !14
  store i64 -4981261766360305936, i64* %48, align 8, !mcsema_real_eip !14
  store i64 %47, i64* %XSP, align 8, !mcsema_real_eip !14
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !14
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !15
  %49 = add i64 %RBP_val.21, -36, !mcsema_real_eip !15
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !15
  %51 = load i32, i32* %50, align 4, !mcsema_real_eip !15
  %52 = add i32 %51, 1, !mcsema_real_eip !16
  %53 = xor i32 %52, %51, !mcsema_real_eip !16
  %54 = and i32 %53, 16, !mcsema_real_eip !16
  %55 = icmp ne i32 %54, 0, !mcsema_real_eip !16
  store i1 %55, i1* %AF, align 1, !mcsema_real_eip !16
  %56 = icmp slt i32 %52, 0
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !16
  %57 = icmp eq i32 %52, 0, !mcsema_real_eip !16
  store i1 %57, i1* %ZF, align 1, !mcsema_real_eip !16
  %58 = xor i32 %51, -2147483648, !mcsema_real_eip !16
  %59 = and i32 %53, %58, !mcsema_real_eip !16
  %60 = icmp slt i32 %59, 0
  store i1 %60, i1* %OF, align 1, !mcsema_real_eip !16
  %61 = trunc i32 %52 to i8, !mcsema_real_eip !16
  %62 = tail call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !16
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  store i1 %64, i1* %PF, align 1, !mcsema_real_eip !16
  %65 = icmp eq i32 %51, -1
  store i1 %65, i1* %CF, align 1, !mcsema_real_eip !16
  %66 = zext i32 %52 to i64, !mcsema_real_eip !16
  store i64 %66, i64* %XAX, align 8, !mcsema_real_eip !16
  br label %block_0xa6, !mcsema_real_eip !17

block_0xe6:                                       ; preds = %block_0xa6
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !18
  %RSP_val.11 = load i64, i64* %XSP, align 8, !mcsema_real_eip !19
  %67 = add i64 %RSP_val.11, 48, !mcsema_real_eip !19
  %68 = xor i64 %67, %RSP_val.11, !mcsema_real_eip !19
  %69 = and i64 %68, 16
  %70 = icmp eq i64 %69, 0
  store i1 %70, i1* %AF, align 1, !mcsema_real_eip !19
  %71 = icmp slt i64 %67, 0
  store i1 %71, i1* %SF, align 1, !mcsema_real_eip !19
  %72 = icmp eq i64 %67, 0, !mcsema_real_eip !19
  store i1 %72, i1* %ZF, align 1, !mcsema_real_eip !19
  %73 = xor i64 %RSP_val.11, -9223372036854775808, !mcsema_real_eip !19
  %74 = and i64 %68, %73, !mcsema_real_eip !19
  %75 = icmp slt i64 %74, 0
  store i1 %75, i1* %OF, align 1, !mcsema_real_eip !19
  %76 = trunc i64 %67 to i8, !mcsema_real_eip !19
  %77 = tail call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !19
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  store i1 %79, i1* %PF, align 1, !mcsema_real_eip !19
  %80 = icmp ugt i64 %RSP_val.11, -49
  store i1 %80, i1* %CF, align 1, !mcsema_real_eip !19
  store i64 %67, i64* %XSP, align 8, !mcsema_real_eip !19
  %81 = inttoptr i64 %67 to i64*, !mcsema_real_eip !20
  %82 = load i64, i64* %81, align 8, !mcsema_real_eip !20
  store i64 %82, i64* %XBP, align 8, !mcsema_real_eip !20
  %83 = add i64 %RSP_val.11, 56, !mcsema_real_eip !20
  store i64 %83, i64* %XSP, align 8, !mcsema_real_eip !20
  %84 = add i64 %RSP_val.11, 64, !mcsema_real_eip !21
  %85 = inttoptr i64 %83 to i64*, !mcsema_real_eip !21
  %86 = load i64, i64* %85, align 8, !mcsema_real_eip !21
  store i64 %86, i64* %XIP, align 8, !mcsema_real_eip !21
  store i64 %84, i64* %XSP, align 8, !mcsema_real_eip !21
  ret void, !mcsema_real_eip !21
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !22
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !22
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !22
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !22
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !22
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !22
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !22
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !22
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !22
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !22
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !22
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !22
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !22
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !22
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !22
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !22
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !22
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !22
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !22
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !22
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !22
  %RSP_val.28 = load i64, i64* %XSP, align 8, !mcsema_real_eip !22
  %1 = add i64 %RSP_val.28, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !22
  store i64 %RBP_val.27, i64* %2, align 8, !mcsema_real_eip !22
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !23
  %3 = add i64 %RSP_val.28, -40
  %4 = xor i64 %3, %1, !mcsema_real_eip !24
  %5 = and i64 %4, 16, !mcsema_real_eip !24
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !24
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !24
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !24
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !24
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !24
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !24
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !24
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !24
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !24
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !24
  %14 = and i64 %4, %1, !mcsema_real_eip !24
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !24
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !24
  %16 = add i64 %RSP_val.28, -12, !mcsema_real_eip !25
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !25
  %EDI_val.33 = load i32, i32* %EDI.32, align 4, !mcsema_real_eip !25
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !25
  store i32 %EDI_val.33, i32* %17, align 4, !mcsema_real_eip !25
  %RBP_val.34 = load i64, i64* %XBP, align 8, !mcsema_real_eip !26
  %18 = add i64 %RBP_val.34, -16, !mcsema_real_eip !26
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !26
  %RSI_val.35 = load i64, i64* %XSI, align 8, !mcsema_real_eip !26
  store i64 %RSI_val.35, i64* %19, align 8, !mcsema_real_eip !26
  %RBP_val.36 = load i64, i64* %XBP, align 8, !mcsema_real_eip !27
  %20 = add i64 %RBP_val.36, -20, !mcsema_real_eip !27
  br label %block_0x16, !mcsema_real_eip !28

block_0x16:                                       ; preds = %block_0x22, %entry
  %.sink.in = phi i64 [ %74, %block_0x22 ], [ %20, %entry ]
  %EAX_val.88.sink = phi i32 [ %77, %block_0x22 ], [ 3, %entry ]
  %21 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.88.sink, i32* %21, align 4
  %RBP_val.37 = load i64, i64* %XBP, align 8
  %22 = add i64 %RBP_val.37, -20
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* %23, align 4, !mcsema_real_eip !28
  %25 = zext i32 %24 to i64, !mcsema_real_eip !28
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !28
  %26 = add i64 %RBP_val.37, -4
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %27, align 4, !mcsema_real_eip !29
  %29 = sub i32 %24, %28, !mcsema_real_eip !29
  %30 = xor i32 %29, %24, !mcsema_real_eip !29
  %31 = xor i32 %30, %28, !mcsema_real_eip !29
  %32 = and i32 %31, 16, !mcsema_real_eip !29
  %33 = icmp ne i32 %32, 0, !mcsema_real_eip !29
  store i1 %33, i1* %AF, align 1, !mcsema_real_eip !29
  %34 = trunc i32 %29 to i8, !mcsema_real_eip !29
  %35 = tail call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !29
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  store i1 %37, i1* %PF, align 1, !mcsema_real_eip !29
  %38 = icmp eq i32 %29, 0
  store i1 %38, i1* %ZF, align 1, !mcsema_real_eip !29
  %39 = icmp slt i32 %29, 0
  store i1 %39, i1* %SF, align 1, !mcsema_real_eip !29
  %40 = icmp ult i32 %24, %28, !mcsema_real_eip !29
  store i1 %40, i1* %CF, align 1, !mcsema_real_eip !29
  %41 = xor i32 %28, %24, !mcsema_real_eip !29
  %42 = and i32 %30, %41, !mcsema_real_eip !29
  %43 = icmp slt i32 %42, 0
  store i1 %43, i1* %OF, align 1, !mcsema_real_eip !29
  %44 = or i1 %40, %38, !mcsema_real_eip !30
  %45 = add i64 %RBP_val.37, -16
  %46 = inttoptr i64 %45 to i64*
  br i1 %44, label %block_0x4d, label %block_0x22, !mcsema_real_eip !30

block_0x22:                                       ; preds = %block_0x16
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !31
  %48 = load i32, i32* %23, align 4, !mcsema_real_eip !32
  %49 = add i32 %48, -1
  %50 = xor i32 %49, %48, !mcsema_real_eip !33
  %51 = and i32 %50, 16, !mcsema_real_eip !33
  %52 = icmp ne i32 %51, 0, !mcsema_real_eip !33
  store i1 %52, i1* %AF, align 1, !mcsema_real_eip !33
  %53 = trunc i32 %49 to i8, !mcsema_real_eip !33
  %54 = tail call i8 @llvm.ctpop.i8(i8 %53), !mcsema_real_eip !33
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  store i1 %56, i1* %PF, align 1, !mcsema_real_eip !33
  %57 = icmp eq i32 %49, 0, !mcsema_real_eip !33
  store i1 %57, i1* %ZF, align 1, !mcsema_real_eip !33
  %58 = icmp slt i32 %49, 0
  store i1 %58, i1* %SF, align 1, !mcsema_real_eip !33
  %59 = icmp eq i32 %48, 0
  store i1 %59, i1* %CF, align 1, !mcsema_real_eip !33
  %60 = and i32 %50, %48, !mcsema_real_eip !33
  %61 = icmp slt i32 %60, 0
  store i1 %61, i1* %OF, align 1, !mcsema_real_eip !33
  %62 = zext i32 %49 to i64
  store i64 %62, i64* %XCX, align 8, !mcsema_real_eip !34
  store i64 %62, i64* %XDX, align 8, !mcsema_real_eip !35
  %63 = shl nuw nsw i64 %62, 2
  %64 = add i64 %47, %63, !mcsema_real_eip !36
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !36
  %66 = load i32, i32* %65, align 4, !mcsema_real_eip !36
  %67 = zext i32 %66 to i64, !mcsema_real_eip !36
  store i64 %67, i64* %XCX, align 8, !mcsema_real_eip !36
  %68 = load i64, i64* %46, align 8
  store i64 %68, i64* %XAX, align 8, !mcsema_real_eip !37
  %69 = load i32, i32* %23, align 4, !mcsema_real_eip !38
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %XSI, align 8, !mcsema_real_eip !38
  store i64 %70, i64* %XDX, align 8, !mcsema_real_eip !39
  %71 = shl nuw nsw i64 %70, 2
  %72 = add i64 %68, %71, !mcsema_real_eip !40
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !40
  store i32 %66, i32* %73, align 4, !mcsema_real_eip !40
  %RBP_val.83 = load i64, i64* %XBP, align 8
  %74 = add i64 %RBP_val.83, -20
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !41
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !41
  %77 = add i32 %76, -1, !mcsema_real_eip !42
  %78 = xor i32 %77, %76, !mcsema_real_eip !42
  %79 = and i32 %78, 16
  %80 = icmp eq i32 %79, 0
  store i1 %80, i1* %AF, align 1, !mcsema_real_eip !42
  %81 = icmp slt i32 %77, 0
  store i1 %81, i1* %SF, align 1, !mcsema_real_eip !42
  %82 = icmp eq i32 %77, 0, !mcsema_real_eip !42
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !42
  %83 = and i32 %78, %76, !mcsema_real_eip !42
  %84 = icmp slt i32 %83, 0
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !42
  %85 = trunc i32 %77 to i8, !mcsema_real_eip !42
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !42
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !42
  %89 = icmp ne i32 %76, 0
  store i1 %89, i1* %CF, align 1, !mcsema_real_eip !42
  %90 = zext i32 %77 to i64, !mcsema_real_eip !42
  store i64 %90, i64* %XAX, align 8, !mcsema_real_eip !42
  br label %block_0x16, !mcsema_real_eip !43

block_0x4d:                                       ; preds = %block_0x16
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !22
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !22
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, align 8, !mcsema_real_eip !44
  %91 = load i32, i32* %27, align 4, !mcsema_real_eip !45
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %XSI, align 8, !mcsema_real_eip !45
  %93 = load i64, i64* %46, align 8, !mcsema_real_eip !46
  store i64 %93, i64* %XAX, align 8, !mcsema_real_eip !46
  %94 = inttoptr i64 %93 to i32*, !mcsema_real_eip !47
  %95 = load i32, i32* %94, align 4, !mcsema_real_eip !47
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %XDX, align 8, !mcsema_real_eip !47
  %97 = load i64, i64* %46, align 8, !mcsema_real_eip !48
  store i64 %97, i64* %XAX, align 8, !mcsema_real_eip !48
  %98 = add i64 %97, 4, !mcsema_real_eip !49
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !49
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !49
  %101 = zext i32 %100 to i64
  store i64 %101, i64* %XCX, align 8, !mcsema_real_eip !49
  %102 = load i64, i64* %46, align 8, !mcsema_real_eip !50
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !50
  %103 = add i64 %102, 8, !mcsema_real_eip !51
  %104 = inttoptr i64 %103 to i32*, !mcsema_real_eip !51
  %105 = load i32, i32* %104, align 4, !mcsema_real_eip !51
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %R8, align 8, !mcsema_real_eip !51
  %107 = load i64, i64* %46, align 8, !mcsema_real_eip !52
  store i64 %107, i64* %XAX, align 8, !mcsema_real_eip !52
  %108 = add i64 %107, 12, !mcsema_real_eip !53
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !53
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !53
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %R9, align 8, !mcsema_real_eip !53
  %AL.50 = bitcast i64* %XAX to i8*, !mcsema_real_eip !54
  store i8 0, i8* %AL.50, align 1, !mcsema_real_eip !54
  %RSP_val.57 = load i64, i64* %XSP, align 8, !mcsema_real_eip !55
  %112 = inttoptr i64 %RSP_val.57 to i64*, !mcsema_real_eip !55
  %113 = load i64, i64* %112, align 8, !mcsema_real_eip !55
  %114 = add i64 %RSP_val.57, 8, !mcsema_real_eip !55
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !55
  %116 = load i64, i64* %115, align 8, !mcsema_real_eip !55
  %117 = add i64 %RSP_val.57, 16, !mcsema_real_eip !55
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !55
  %119 = load i64, i64* %118, align 8, !mcsema_real_eip !55
  %120 = add i64 %RSP_val.57, 24, !mcsema_real_eip !55
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !55
  %122 = load i64, i64* %121, align 8, !mcsema_real_eip !55
  %123 = add i64 %RSP_val.57, 32, !mcsema_real_eip !55
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !55
  %125 = load i64, i64* %124, align 8, !mcsema_real_eip !55
  %126 = add i64 %RSP_val.57, 40, !mcsema_real_eip !55
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !55
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !55
  %129 = add i64 %RSP_val.57, -8
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !55
  store i64 -2415393069852865332, i64* %130, align 8, !mcsema_real_eip !55
  store i64 %129, i64* %XSP, align 8, !mcsema_real_eip !55
  %131 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xee to i64), i64 %92, i64 %96, i64 %101, i64 %106, i64 %111, i64 %113, i64 %116, i64 %119, i64 %122, i64 %125, i64 %128), !mcsema_real_eip !55
  store i64 %131, i64* %XAX, align 8, !mcsema_real_eip !55
  %RBP_val.59 = load i64, i64* %XBP, align 8, !mcsema_real_eip !56
  %132 = add i64 %RBP_val.59, -24, !mcsema_real_eip !56
  %133 = trunc i64 %131 to i32
  %134 = inttoptr i64 %132 to i32*, !mcsema_real_eip !56
  store i32 %133, i32* %134, align 4, !mcsema_real_eip !56
  %RSP_val.62 = load i64, i64* %XSP, align 8, !mcsema_real_eip !57
  %135 = add i64 %RSP_val.62, 32, !mcsema_real_eip !57
  %136 = xor i64 %135, %RSP_val.62, !mcsema_real_eip !57
  %137 = and i64 %136, 16, !mcsema_real_eip !57
  %138 = icmp ne i64 %137, 0, !mcsema_real_eip !57
  store i1 %138, i1* %AF, align 1, !mcsema_real_eip !57
  %139 = icmp slt i64 %135, 0
  store i1 %139, i1* %SF, align 1, !mcsema_real_eip !57
  %140 = icmp eq i64 %135, 0, !mcsema_real_eip !57
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !57
  %141 = xor i64 %RSP_val.62, -9223372036854775808, !mcsema_real_eip !57
  %142 = and i64 %136, %141, !mcsema_real_eip !57
  %143 = icmp slt i64 %142, 0
  store i1 %143, i1* %OF, align 1, !mcsema_real_eip !57
  %144 = trunc i64 %135 to i8, !mcsema_real_eip !57
  %145 = tail call i8 @llvm.ctpop.i8(i8 %144), !mcsema_real_eip !57
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  store i1 %147, i1* %PF, align 1, !mcsema_real_eip !57
  %148 = icmp ugt i64 %RSP_val.62, -33
  store i1 %148, i1* %CF, align 1, !mcsema_real_eip !57
  store i64 %135, i64* %XSP, align 8, !mcsema_real_eip !57
  %149 = inttoptr i64 %135 to i64*, !mcsema_real_eip !58
  %150 = load i64, i64* %149, align 8, !mcsema_real_eip !58
  store i64 %150, i64* %XBP, align 8, !mcsema_real_eip !58
  %151 = add i64 %RSP_val.62, 40, !mcsema_real_eip !58
  store i64 %151, i64* %XSP, align 8, !mcsema_real_eip !58
  %152 = add i64 %RSP_val.62, 48, !mcsema_real_eip !59
  %153 = inttoptr i64 %151 to i64*, !mcsema_real_eip !59
  %154 = load i64, i64* %153, align 8, !mcsema_real_eip !59
  store i64 %154, i64* %XIP, align 8, !mcsema_real_eip !59
  store i64 %152, i64* %XSP, align 8, !mcsema_real_eip !59
  ret void, !mcsema_real_eip !59
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
!6 = !{i64 166}
!7 = !{i64 170}
!8 = !{i64 176}
!9 = !{i64 180}
!10 = !{i64 187}
!11 = !{i64 194}
!12 = !{i64 201}
!13 = !{i64 208}
!14 = !{i64 211}
!15 = !{i64 216}
!16 = !{i64 219}
!17 = !{i64 225}
!18 = !{i64 230}
!19 = !{i64 232}
!20 = !{i64 236}
!21 = !{i64 237}
!22 = !{i64 0}
!23 = !{i64 1}
!24 = !{i64 4}
!25 = !{i64 8}
!26 = !{i64 11}
!27 = !{i64 15}
!28 = !{i64 22}
!29 = !{i64 25}
!30 = !{i64 28}
!31 = !{i64 34}
!32 = !{i64 38}
!33 = !{i64 41}
!34 = !{i64 44}
!35 = !{i64 46}
!36 = !{i64 48}
!37 = !{i64 51}
!38 = !{i64 55}
!39 = !{i64 58}
!40 = !{i64 60}
!41 = !{i64 63}
!42 = !{i64 66}
!43 = !{i64 72}
!44 = !{i64 77}
!45 = !{i64 87}
!46 = !{i64 90}
!47 = !{i64 94}
!48 = !{i64 96}
!49 = !{i64 100}
!50 = !{i64 103}
!51 = !{i64 107}
!52 = !{i64 111}
!53 = !{i64 115}
!54 = !{i64 119}
!55 = !{i64 121}
!56 = !{i64 126}
!57 = !{i64 129}
!58 = !{i64 133}
!59 = !{i64 134}
