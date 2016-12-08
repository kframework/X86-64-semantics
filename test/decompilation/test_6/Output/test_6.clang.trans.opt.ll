; ModuleID = 'Output/test_6.clang.trans.opt.bc'
source_filename = "Output/test_6.clang.bc"
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
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
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
module asm "  .globl sub_a0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_a0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x1af = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
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
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -104
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = and i64 %4, 16, !mcsema_real_eip !4
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !4
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
  %13 = icmp ult i64 %1, 96, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 40, i64* %XAX, align 8, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  store i64 40, i64* %XCX, align 8, !mcsema_real_eip !6
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %17, align 4, !mcsema_real_eip !7
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %18 = add i64 %RBP_val.7, -8, !mcsema_real_eip !8
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.9 = load i32, i32* %EDI.8, align 4, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.9, i32* %19, align 4, !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %20 = add i64 %RBP_val.10, -16, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !9
  %RSI_val.11 = load i64, i64* %XSI, align 8, !mcsema_real_eip !9
  store i64 %RSI_val.11, i64* %21, align 8, !mcsema_real_eip !9
  %RCX_val.12 = load i64, i64* %XCX, align 8, !mcsema_real_eip !10
  store i64 %RCX_val.12, i64* %XDI, align 8, !mcsema_real_eip !10
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %22 = add i64 %RSP_val.14, -8
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %23, align 8, !mcsema_real_eip !11
  store i64 %22, i64* %XSP, align 8, !mcsema_real_eip !11
  %24 = tail call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.12), !mcsema_real_eip !11
  store i64 %24, i64* %XAX, align 8, !mcsema_real_eip !11
  store i64 40, i64* %XDX, align 8, !mcsema_real_eip !12
  store i64 40, i64* %XDI, align 8, !mcsema_real_eip !13
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %25 = add i64 %RBP_val.17, -24, !mcsema_real_eip !14
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !14
  store i64 %24, i64* %26, align 8, !mcsema_real_eip !14
  %RDI_val.19 = load i64, i64* %XDI, align 8, !mcsema_real_eip !15
  %RSP_val.20 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %27 = add i64 %RSP_val.20, -8
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !15
  store i64 -2415393069852865332, i64* %28, align 8, !mcsema_real_eip !15
  store i64 %27, i64* %XSP, align 8, !mcsema_real_eip !15
  %29 = tail call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.19), !mcsema_real_eip !15
  store i64 %29, i64* %XAX, align 8, !mcsema_real_eip !15
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %30 = add i64 %RBP_val.21, -32, !mcsema_real_eip !16
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !16
  store i64 %29, i64* %31, align 8, !mcsema_real_eip !16
  %RBP_val.23 = load i64, i64* %XBP, align 8, !mcsema_real_eip !17
  %32 = add i64 %RBP_val.23, -36, !mcsema_real_eip !17
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !17
  store i32 0, i32* %33, align 4, !mcsema_real_eip !17
  br label %block_0xe0, !mcsema_real_eip !18

block_0xe0:                                       ; preds = %block_0xea, %entry
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  %34 = add i64 %RBP_val.24, -36, !mcsema_real_eip !18
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !18
  %36 = load i32, i32* %35, align 4, !mcsema_real_eip !18
  %37 = add i32 %36, -10
  %38 = xor i32 %37, %36, !mcsema_real_eip !18
  %39 = and i32 %38, 16, !mcsema_real_eip !18
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !18
  store i1 %40, i1* %AF, align 1, !mcsema_real_eip !18
  %41 = trunc i32 %37 to i8, !mcsema_real_eip !18
  %42 = tail call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !18
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !18
  %45 = icmp eq i32 %37, 0, !mcsema_real_eip !18
  store i1 %45, i1* %ZF, align 1, !mcsema_real_eip !18
  %46 = icmp slt i32 %37, 0
  store i1 %46, i1* %SF, align 1, !mcsema_real_eip !18
  %47 = icmp ult i32 %36, 10, !mcsema_real_eip !18
  store i1 %47, i1* %CF, align 1, !mcsema_real_eip !18
  %48 = and i32 %38, %36, !mcsema_real_eip !18
  %49 = icmp slt i32 %48, 0
  store i1 %49, i1* %OF, align 1, !mcsema_real_eip !18
  %tmp = xor i1 %46, %49
  br i1 %tmp, label %block_0xea, label %block_0x10c, !mcsema_real_eip !19

block_0xea:                                       ; preds = %block_0xe0
  %50 = load i32, i32* %35, align 4, !mcsema_real_eip !20
  %51 = add i32 %50, 10, !mcsema_real_eip !21
  %52 = add i32 %50, 11, !mcsema_real_eip !22
  %53 = xor i32 %52, %51, !mcsema_real_eip !22
  %54 = and i32 %53, 16, !mcsema_real_eip !22
  %55 = icmp ne i32 %54, 0, !mcsema_real_eip !22
  store i1 %55, i1* %AF, align 1, !mcsema_real_eip !22
  %56 = icmp slt i32 %52, 0
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !22
  %57 = icmp eq i32 %52, 0, !mcsema_real_eip !22
  store i1 %57, i1* %ZF, align 1, !mcsema_real_eip !22
  %58 = add i32 %50, -2147483638
  %59 = and i32 %53, %58, !mcsema_real_eip !22
  %60 = icmp slt i32 %59, 0
  store i1 %60, i1* %OF, align 1, !mcsema_real_eip !22
  %61 = trunc i32 %52 to i8, !mcsema_real_eip !22
  %62 = tail call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !22
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  store i1 %64, i1* %PF, align 1, !mcsema_real_eip !22
  %65 = icmp eq i32 %51, -1
  store i1 %65, i1* %CF, align 1, !mcsema_real_eip !22
  %66 = zext i32 %52 to i64, !mcsema_real_eip !22
  store i64 %66, i64* %XAX, align 8, !mcsema_real_eip !22
  %67 = add i64 %RBP_val.24, -24, !mcsema_real_eip !23
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !23
  %69 = load i64, i64* %68, align 8, !mcsema_real_eip !23
  store i64 %69, i64* %XCX, align 8, !mcsema_real_eip !23
  %70 = load i32, i32* %35, align 4, !mcsema_real_eip !24
  %71 = sext i32 %70 to i64, !mcsema_real_eip !24
  store i64 %71, i64* %XDX, align 8, !mcsema_real_eip !24
  %72 = shl nsw i64 %71, 2
  %73 = add i64 %72, %69, !mcsema_real_eip !25
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !25
  store i32 %52, i32* %74, align 4, !mcsema_real_eip !25
  %RBP_val.37 = load i64, i64* %XBP, align 8, !mcsema_real_eip !26
  %75 = add i64 %RBP_val.37, -36, !mcsema_real_eip !26
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !26
  %77 = load i32, i32* %76, align 4, !mcsema_real_eip !26
  %78 = add i32 %77, 1, !mcsema_real_eip !27
  %79 = xor i32 %78, %77, !mcsema_real_eip !27
  %80 = and i32 %79, 16, !mcsema_real_eip !27
  %81 = icmp ne i32 %80, 0, !mcsema_real_eip !27
  store i1 %81, i1* %AF, align 1, !mcsema_real_eip !27
  %82 = icmp slt i32 %78, 0
  store i1 %82, i1* %SF, align 1, !mcsema_real_eip !27
  %83 = icmp eq i32 %78, 0, !mcsema_real_eip !27
  store i1 %83, i1* %ZF, align 1, !mcsema_real_eip !27
  %84 = xor i32 %77, -2147483648, !mcsema_real_eip !27
  %85 = and i32 %79, %84, !mcsema_real_eip !27
  %86 = icmp slt i32 %85, 0
  store i1 %86, i1* %OF, align 1, !mcsema_real_eip !27
  %87 = trunc i32 %78 to i8, !mcsema_real_eip !27
  %88 = tail call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !27
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  store i1 %90, i1* %PF, align 1, !mcsema_real_eip !27
  %91 = icmp eq i32 %77, -1
  store i1 %91, i1* %CF, align 1, !mcsema_real_eip !27
  %92 = zext i32 %78 to i64, !mcsema_real_eip !27
  store i64 %92, i64* %XAX, align 8, !mcsema_real_eip !27
  store i32 %78, i32* %76, align 4, !mcsema_real_eip !28
  br label %block_0xe0, !mcsema_real_eip !29

block_0x10c:                                      ; preds = %block_0xe0
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %93 = add i64 %RBP_val.24, -40, !mcsema_real_eip !30
  %94 = inttoptr i64 %93 to i32*, !mcsema_real_eip !30
  store i32 0, i32* %94, align 4, !mcsema_real_eip !30
  br label %block_0x113, !mcsema_real_eip !20

block_0x113:                                      ; preds = %block_0x11d, %block_0x10c
  %RBP_val.43 = load i64, i64* %XBP, align 8, !mcsema_real_eip !31
  %95 = add i64 %RBP_val.43, -40, !mcsema_real_eip !31
  %96 = inttoptr i64 %95 to i32*, !mcsema_real_eip !31
  %97 = load i32, i32* %96, align 4, !mcsema_real_eip !31
  %98 = add i32 %97, -10
  %99 = xor i32 %98, %97, !mcsema_real_eip !31
  %100 = and i32 %99, 16, !mcsema_real_eip !31
  %101 = icmp ne i32 %100, 0, !mcsema_real_eip !31
  store i1 %101, i1* %AF, align 1, !mcsema_real_eip !31
  %102 = trunc i32 %98 to i8, !mcsema_real_eip !31
  %103 = tail call i8 @llvm.ctpop.i8(i8 %102), !mcsema_real_eip !31
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  store i1 %105, i1* %PF, align 1, !mcsema_real_eip !31
  %106 = icmp eq i32 %98, 0, !mcsema_real_eip !31
  store i1 %106, i1* %ZF, align 1, !mcsema_real_eip !31
  %107 = icmp slt i32 %98, 0
  store i1 %107, i1* %SF, align 1, !mcsema_real_eip !31
  %108 = icmp ult i32 %97, 10, !mcsema_real_eip !31
  store i1 %108, i1* %CF, align 1, !mcsema_real_eip !31
  %109 = and i32 %99, %97, !mcsema_real_eip !31
  %110 = icmp slt i32 %109, 0
  store i1 %110, i1* %OF, align 1, !mcsema_real_eip !31
  %tmp1 = xor i1 %107, %110
  %111 = add i64 %RBP_val.43, -32
  %112 = inttoptr i64 %111 to i64*
  br i1 %tmp1, label %block_0x11d, label %block_0x13c, !mcsema_real_eip !32

block_0x11d:                                      ; preds = %block_0x113
  %113 = load i32, i32* %96, align 4, !mcsema_real_eip !33
  %114 = add i32 %113, 1, !mcsema_real_eip !34
  %115 = xor i32 %114, %113, !mcsema_real_eip !34
  %116 = and i32 %115, 16, !mcsema_real_eip !34
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !34
  store i1 %117, i1* %AF, align 1, !mcsema_real_eip !34
  %118 = icmp slt i32 %114, 0
  store i1 %118, i1* %SF, align 1, !mcsema_real_eip !34
  %119 = icmp eq i32 %114, 0, !mcsema_real_eip !34
  store i1 %119, i1* %ZF, align 1, !mcsema_real_eip !34
  %120 = xor i32 %113, -2147483648, !mcsema_real_eip !34
  %121 = and i32 %115, %120, !mcsema_real_eip !34
  %122 = icmp slt i32 %121, 0
  store i1 %122, i1* %OF, align 1, !mcsema_real_eip !34
  %123 = trunc i32 %114 to i8, !mcsema_real_eip !34
  %124 = tail call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !34
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  store i1 %126, i1* %PF, align 1, !mcsema_real_eip !34
  %127 = icmp eq i32 %113, -1
  store i1 %127, i1* %CF, align 1, !mcsema_real_eip !34
  %128 = zext i32 %114 to i64, !mcsema_real_eip !34
  store i64 %128, i64* %XAX, align 8, !mcsema_real_eip !34
  %129 = load i64, i64* %112, align 8, !mcsema_real_eip !35
  store i64 %129, i64* %XCX, align 8, !mcsema_real_eip !35
  %130 = load i32, i32* %96, align 4, !mcsema_real_eip !36
  %131 = sext i32 %130 to i64, !mcsema_real_eip !36
  store i64 %131, i64* %XDX, align 8, !mcsema_real_eip !36
  %132 = shl nsw i64 %131, 2
  %133 = add i64 %132, %129, !mcsema_real_eip !37
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !37
  store i32 %114, i32* %134, align 4, !mcsema_real_eip !37
  %RBP_val.87 = load i64, i64* %XBP, align 8, !mcsema_real_eip !38
  %135 = add i64 %RBP_val.87, -40, !mcsema_real_eip !38
  %136 = inttoptr i64 %135 to i32*, !mcsema_real_eip !38
  %137 = load i32, i32* %136, align 4, !mcsema_real_eip !38
  %138 = add i32 %137, 1, !mcsema_real_eip !39
  %139 = xor i32 %138, %137, !mcsema_real_eip !39
  %140 = and i32 %139, 16, !mcsema_real_eip !39
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !39
  store i1 %141, i1* %AF, align 1, !mcsema_real_eip !39
  %142 = icmp slt i32 %138, 0
  store i1 %142, i1* %SF, align 1, !mcsema_real_eip !39
  %143 = icmp eq i32 %138, 0, !mcsema_real_eip !39
  store i1 %143, i1* %ZF, align 1, !mcsema_real_eip !39
  %144 = xor i32 %137, -2147483648, !mcsema_real_eip !39
  %145 = and i32 %139, %144, !mcsema_real_eip !39
  %146 = icmp slt i32 %145, 0
  store i1 %146, i1* %OF, align 1, !mcsema_real_eip !39
  %147 = trunc i32 %138 to i8, !mcsema_real_eip !39
  %148 = tail call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !39
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  store i1 %150, i1* %PF, align 1, !mcsema_real_eip !39
  %151 = icmp eq i32 %137, -1
  store i1 %151, i1* %CF, align 1, !mcsema_real_eip !39
  %152 = zext i32 %138 to i64, !mcsema_real_eip !39
  store i64 %152, i64* %XAX, align 8, !mcsema_real_eip !39
  store i32 %138, i32* %136, align 4, !mcsema_real_eip !40
  br label %block_0x113, !mcsema_real_eip !41

block_0x13c:                                      ; preds = %block_0x113
  store i64 100, i64* %XDI, align 8, !mcsema_real_eip !42
  store i64 200, i64* %XSI, align 8, !mcsema_real_eip !43
  %153 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %153, align 8
  %154 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %154, align 8
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !44
  %155 = add i64 %RBP_val.43, -24, !mcsema_real_eip !45
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !45
  %157 = load i64, i64* %156, align 8, !mcsema_real_eip !45
  store i64 %157, i64* %R10, align 8, !mcsema_real_eip !45
  %158 = load i64, i64* %112, align 8, !mcsema_real_eip !46
  store i64 %158, i64* %R11, align 8, !mcsema_real_eip !46
  %159 = bitcast i64* %XSP to i32**
  %RSP_val.462 = load i32*, i32** %159, align 8
  store i32 10, i32* %RSP_val.462, align 4, !mcsema_real_eip !47
  %RSP_val.47 = load i64, i64* %XSP, align 8, !mcsema_real_eip !48
  %160 = add i64 %RSP_val.47, 8, !mcsema_real_eip !48
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !48
  %R10_val.48 = load i64, i64* %R10, align 8, !mcsema_real_eip !48
  store i64 %R10_val.48, i64* %161, align 8, !mcsema_real_eip !48
  %RSP_val.49 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %162 = add i64 %RSP_val.49, 16, !mcsema_real_eip !49
  %163 = inttoptr i64 %162 to i32*, !mcsema_real_eip !49
  store i32 10, i32* %163, align 4, !mcsema_real_eip !49
  %RSP_val.50 = load i64, i64* %XSP, align 8, !mcsema_real_eip !50
  %164 = add i64 %RSP_val.50, 24, !mcsema_real_eip !50
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !50
  %R11_val.51 = load i64, i64* %R11, align 8, !mcsema_real_eip !50
  store i64 %R11_val.51, i64* %165, align 8, !mcsema_real_eip !50
  %RBP_val.52 = load i64, i64* %XBP, align 8, !mcsema_real_eip !51
  %166 = add i64 %RBP_val.52, -48, !mcsema_real_eip !51
  %EAX_val.54 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !51
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !51
  store i32 %EAX_val.54, i32* %167, align 4, !mcsema_real_eip !51
  %RSP_val.55 = load i64, i64* %XSP, align 8, !mcsema_real_eip !52
  %168 = add i64 %RSP_val.55, -8
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !52
  store i64 -4981261766360305936, i64* %169, align 8, !mcsema_real_eip !52
  store i64 %168, i64* %XSP, align 8, !mcsema_real_eip !52
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !52
  store i64 ptrtoint (%0* @data_0x1af to i64), i64* %XDI, align 8, !mcsema_real_eip !53
  %RBP_val.56 = load i64, i64* %XBP, align 8, !mcsema_real_eip !54
  %170 = add i64 %RBP_val.56, -44, !mcsema_real_eip !54
  %EAX_val.58 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !54
  %171 = inttoptr i64 %170 to i32*, !mcsema_real_eip !54
  store i32 %EAX_val.58, i32* %171, align 4, !mcsema_real_eip !54
  %RBP_val.59 = load i64, i64* %XBP, align 8, !mcsema_real_eip !55
  %172 = add i64 %RBP_val.59, -44, !mcsema_real_eip !55
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !55
  %174 = load i32, i32* %173, align 4, !mcsema_real_eip !55
  %175 = zext i32 %174 to i64, !mcsema_real_eip !55
  store i64 %175, i64* %XSI, align 8, !mcsema_real_eip !55
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !56
  store i8 0, i8* %AL.60, align 1, !mcsema_real_eip !56
  %RDI_val.61 = load i64, i64* %XDI, align 8, !mcsema_real_eip !57
  %RDX_val.63 = load i64, i64* %XDX, align 8, !mcsema_real_eip !57
  %RCX_val.64 = load i64, i64* %XCX, align 8, !mcsema_real_eip !57
  %R8_val.65 = load i64, i64* %R8, align 8, !mcsema_real_eip !57
  %R9_val.66 = load i64, i64* %R9, align 8, !mcsema_real_eip !57
  %RSP_val.67 = load i64, i64* %XSP, align 8, !mcsema_real_eip !57
  %176 = inttoptr i64 %RSP_val.67 to i64*, !mcsema_real_eip !57
  %177 = load i64, i64* %176, align 8, !mcsema_real_eip !57
  %178 = add i64 %RSP_val.67, 8, !mcsema_real_eip !57
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !57
  %180 = load i64, i64* %179, align 8, !mcsema_real_eip !57
  %181 = add i64 %RSP_val.67, 16, !mcsema_real_eip !57
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !57
  %183 = load i64, i64* %182, align 8, !mcsema_real_eip !57
  %184 = add i64 %RSP_val.67, 24, !mcsema_real_eip !57
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !57
  %186 = load i64, i64* %185, align 8, !mcsema_real_eip !57
  %187 = add i64 %RSP_val.67, 32, !mcsema_real_eip !57
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !57
  %189 = load i64, i64* %188, align 8, !mcsema_real_eip !57
  %190 = add i64 %RSP_val.67, 40, !mcsema_real_eip !57
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !57
  %192 = load i64, i64* %191, align 8, !mcsema_real_eip !57
  %193 = add i64 %RSP_val.67, -8
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !57
  store i64 -2415393069852865332, i64* %194, align 8, !mcsema_real_eip !57
  store i64 %193, i64* %XSP, align 8, !mcsema_real_eip !57
  %195 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.61, i64 %175, i64 %RDX_val.63, i64 %RCX_val.64, i64 %R8_val.65, i64 %R9_val.66, i64 %177, i64 %180, i64 %183, i64 %186, i64 %189, i64 %192), !mcsema_real_eip !57
  store i64 %195, i64* %XAX, align 8, !mcsema_real_eip !57
  %RBP_val.69 = load i64, i64* %XBP, align 8, !mcsema_real_eip !58
  %196 = add i64 %RBP_val.69, -44, !mcsema_real_eip !58
  %197 = inttoptr i64 %196 to i32*, !mcsema_real_eip !58
  %198 = load i32, i32* %197, align 4, !mcsema_real_eip !58
  %199 = zext i32 %198 to i64, !mcsema_real_eip !58
  store i64 %199, i64* %XCX, align 8, !mcsema_real_eip !58
  %200 = add i64 %RBP_val.69, -52, !mcsema_real_eip !59
  %201 = trunc i64 %195 to i32
  %202 = inttoptr i64 %200 to i32*, !mcsema_real_eip !59
  store i32 %201, i32* %202, align 4, !mcsema_real_eip !59
  %ECX.73 = bitcast i64* %XCX to i32*, !mcsema_real_eip !60
  %ECX_val.74 = load i32, i32* %ECX.73, align 4, !mcsema_real_eip !60
  %203 = zext i32 %ECX_val.74 to i64, !mcsema_real_eip !60
  store i64 %203, i64* %XAX, align 8, !mcsema_real_eip !60
  %RSP_val.75 = load i64, i64* %XSP, align 8, !mcsema_real_eip !61
  %204 = add i64 %RSP_val.75, 96, !mcsema_real_eip !61
  %205 = xor i64 %204, %RSP_val.75, !mcsema_real_eip !61
  %206 = and i64 %205, 16, !mcsema_real_eip !61
  %207 = icmp ne i64 %206, 0, !mcsema_real_eip !61
  store i1 %207, i1* %AF, align 1, !mcsema_real_eip !61
  %208 = icmp slt i64 %204, 0
  store i1 %208, i1* %SF, align 1, !mcsema_real_eip !61
  %209 = icmp eq i64 %204, 0, !mcsema_real_eip !61
  store i1 %209, i1* %ZF, align 1, !mcsema_real_eip !61
  %210 = xor i64 %RSP_val.75, -9223372036854775808, !mcsema_real_eip !61
  %211 = and i64 %205, %210, !mcsema_real_eip !61
  %212 = icmp slt i64 %211, 0
  store i1 %212, i1* %OF, align 1, !mcsema_real_eip !61
  %213 = trunc i64 %204 to i8, !mcsema_real_eip !61
  %214 = tail call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !61
  %215 = and i8 %214, 1
  %216 = icmp eq i8 %215, 0
  store i1 %216, i1* %PF, align 1, !mcsema_real_eip !61
  %217 = icmp ugt i64 %RSP_val.75, -97
  store i1 %217, i1* %CF, align 1, !mcsema_real_eip !61
  store i64 %204, i64* %XSP, align 8, !mcsema_real_eip !61
  %218 = inttoptr i64 %204 to i64*, !mcsema_real_eip !62
  %219 = load i64, i64* %218, align 8, !mcsema_real_eip !62
  store i64 %219, i64* %XBP, align 8, !mcsema_real_eip !62
  %220 = add i64 %RSP_val.75, 104, !mcsema_real_eip !62
  store i64 %220, i64* %XSP, align 8, !mcsema_real_eip !62
  %221 = add i64 %RSP_val.75, 112, !mcsema_real_eip !63
  %222 = inttoptr i64 %220 to i64*, !mcsema_real_eip !63
  %223 = load i64, i64* %222, align 8, !mcsema_real_eip !63
  store i64 %223, i64* %XIP, align 8, !mcsema_real_eip !63
  store i64 %221, i64* %XSP, align 8, !mcsema_real_eip !63
  ret void, !mcsema_real_eip !63
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !64
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !64
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !64
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !64
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !64
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !64
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !64
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !64
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !64
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !64
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !64
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !64
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !64
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !64
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !64
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !64
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !64
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !64
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !64
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !64
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !64
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !64
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !64
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !64
  %RBP_val.93 = load i64, i64* %XBP, align 8, !mcsema_real_eip !64
  %RSP_val.94 = load i64, i64* %XSP, align 8, !mcsema_real_eip !64
  %1 = add i64 %RSP_val.94, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !64
  store i64 %RBP_val.93, i64* %2, align 8, !mcsema_real_eip !64
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !65
  %RBX_val.96 = load i64, i64* %XBX, align 8, !mcsema_real_eip !66
  %3 = add i64 %RSP_val.94, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !66
  store i64 %RBX_val.96, i64* %4, align 8, !mcsema_real_eip !66
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !66
  %RBP_val.98 = load i64, i64* %XBP, align 8, !mcsema_real_eip !67
  %5 = add i64 %RBP_val.98, 40, !mcsema_real_eip !67
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !67
  %7 = load i64, i64* %6, align 8, !mcsema_real_eip !67
  store i64 %7, i64* %XAX, align 8, !mcsema_real_eip !67
  %8 = add i64 %RBP_val.98, 32, !mcsema_real_eip !68
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !68
  %10 = load i32, i32* %9, align 4, !mcsema_real_eip !68
  %11 = zext i32 %10 to i64, !mcsema_real_eip !68
  store i64 %11, i64* %R10, align 8, !mcsema_real_eip !68
  %12 = add i64 %RBP_val.98, 24, !mcsema_real_eip !69
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !69
  %14 = load i64, i64* %13, align 8, !mcsema_real_eip !69
  store i64 %14, i64* %R11, align 8, !mcsema_real_eip !69
  %15 = add i64 %RBP_val.98, 16, !mcsema_real_eip !70
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !70
  %17 = load i32, i32* %16, align 4, !mcsema_real_eip !70
  %18 = zext i32 %17 to i64, !mcsema_real_eip !70
  store i64 %18, i64* %XBX, align 8, !mcsema_real_eip !70
  %19 = add i64 %RBP_val.98, -12, !mcsema_real_eip !71
  %EDI.103 = bitcast i64* %XDI to i32*, !mcsema_real_eip !71
  %EDI_val.104 = load i32, i32* %EDI.103, align 4, !mcsema_real_eip !71
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !71
  store i32 %EDI_val.104, i32* %20, align 4, !mcsema_real_eip !71
  %RBP_val.105 = load i64, i64* %XBP, align 8, !mcsema_real_eip !72
  %21 = add i64 %RBP_val.105, -16, !mcsema_real_eip !72
  %ESI.106 = bitcast i64* %XSI to i32*, !mcsema_real_eip !72
  %ESI_val.107 = load i32, i32* %ESI.106, align 4, !mcsema_real_eip !72
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !72
  store i32 %ESI_val.107, i32* %22, align 4, !mcsema_real_eip !72
  %RBP_val.108 = load i64, i64* %XBP, align 8, !mcsema_real_eip !73
  %23 = add i64 %RBP_val.108, -20, !mcsema_real_eip !73
  %EDX.109 = bitcast i64* %XDX to i32*, !mcsema_real_eip !73
  %EDX_val.110 = load i32, i32* %EDX.109, align 4, !mcsema_real_eip !73
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !73
  store i32 %EDX_val.110, i32* %24, align 4, !mcsema_real_eip !73
  %RBP_val.111 = load i64, i64* %XBP, align 8, !mcsema_real_eip !74
  %25 = add i64 %RBP_val.111, -24, !mcsema_real_eip !74
  %ECX.112 = bitcast i64* %XCX to i32*, !mcsema_real_eip !74
  %ECX_val.113 = load i32, i32* %ECX.112, align 4, !mcsema_real_eip !74
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !74
  store i32 %ECX_val.113, i32* %26, align 4, !mcsema_real_eip !74
  %RBP_val.114 = load i64, i64* %XBP, align 8, !mcsema_real_eip !75
  %27 = add i64 %RBP_val.114, -28, !mcsema_real_eip !75
  %R8D.115 = bitcast i64* %R8 to i32*, !mcsema_real_eip !75
  %R8D_val.116 = load i32, i32* %R8D.115, align 4, !mcsema_real_eip !75
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !75
  store i32 %R8D_val.116, i32* %28, align 4, !mcsema_real_eip !75
  %RBP_val.117 = load i64, i64* %XBP, align 8, !mcsema_real_eip !76
  %29 = add i64 %RBP_val.117, -32, !mcsema_real_eip !76
  %R9D.118 = bitcast i64* %R9 to i32*, !mcsema_real_eip !76
  %R9D_val.119 = load i32, i32* %R9D.118, align 4, !mcsema_real_eip !76
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !76
  store i32 %R9D_val.119, i32* %30, align 4, !mcsema_real_eip !76
  %RBP_val.120 = load i64, i64* %XBP, align 8, !mcsema_real_eip !77
  %31 = add i64 %RBP_val.120, -36, !mcsema_real_eip !77
  %EBX.121 = bitcast i64* %XBX to i32*, !mcsema_real_eip !77
  %EBX_val.122 = load i32, i32* %EBX.121, align 4, !mcsema_real_eip !77
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !77
  store i32 %EBX_val.122, i32* %32, align 4, !mcsema_real_eip !77
  %RBP_val.123 = load i64, i64* %XBP, align 8, !mcsema_real_eip !78
  %33 = add i64 %RBP_val.123, -48, !mcsema_real_eip !78
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !78
  %R11_val.124 = load i64, i64* %R11, align 8, !mcsema_real_eip !78
  store i64 %R11_val.124, i64* %34, align 8, !mcsema_real_eip !78
  %RBP_val.125 = load i64, i64* %XBP, align 8, !mcsema_real_eip !79
  %35 = add i64 %RBP_val.125, -52, !mcsema_real_eip !79
  %R10D.126 = bitcast i64* %R10 to i32*, !mcsema_real_eip !79
  %R10D_val.127 = load i32, i32* %R10D.126, align 4, !mcsema_real_eip !79
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !79
  store i32 %R10D_val.127, i32* %36, align 4, !mcsema_real_eip !79
  %RBP_val.128 = load i64, i64* %XBP, align 8, !mcsema_real_eip !80
  %37 = add i64 %RBP_val.128, -64, !mcsema_real_eip !80
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !80
  %RAX_val.129 = load i64, i64* %XAX, align 8, !mcsema_real_eip !80
  store i64 %RAX_val.129, i64* %38, align 8, !mcsema_real_eip !80
  %RBP_val.130 = load i64, i64* %XBP, align 8, !mcsema_real_eip !81
  %39 = add i64 %RBP_val.130, -68, !mcsema_real_eip !81
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !81
  store i32 0, i32* %40, align 4, !mcsema_real_eip !81
  %RBP_val.131 = load i64, i64* %XBP, align 8, !mcsema_real_eip !82
  %41 = add i64 %RBP_val.131, -72, !mcsema_real_eip !82
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !82
  store i32 0, i32* %42, align 4, !mcsema_real_eip !82
  %EAX.134 = bitcast i64* %XAX to i32*, !mcsema_real_eip !83
  br label %block_0x45, !mcsema_real_eip !84

block_0x45:                                       ; preds = %block_0x51, %entry
  %RBP_val.132 = load i64, i64* %XBP, align 8, !mcsema_real_eip !84
  %43 = add i64 %RBP_val.132, -72, !mcsema_real_eip !84
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !84
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !84
  %46 = zext i32 %45 to i64, !mcsema_real_eip !84
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !84
  %47 = add i64 %RBP_val.132, -36, !mcsema_real_eip !83
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !83
  %49 = load i32, i32* %48, align 4, !mcsema_real_eip !83
  %50 = sub i32 %45, %49, !mcsema_real_eip !83
  %51 = xor i32 %50, %45, !mcsema_real_eip !83
  %52 = xor i32 %51, %49, !mcsema_real_eip !83
  %53 = and i32 %52, 16, !mcsema_real_eip !83
  %54 = icmp ne i32 %53, 0, !mcsema_real_eip !83
  store i1 %54, i1* %AF, align 1, !mcsema_real_eip !83
  %55 = trunc i32 %50 to i8, !mcsema_real_eip !83
  %56 = tail call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !83
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  store i1 %58, i1* %PF, align 1, !mcsema_real_eip !83
  %59 = icmp eq i32 %50, 0, !mcsema_real_eip !83
  store i1 %59, i1* %ZF, align 1, !mcsema_real_eip !83
  %60 = icmp slt i32 %50, 0
  store i1 %60, i1* %SF, align 1, !mcsema_real_eip !83
  %61 = icmp ult i32 %45, %49, !mcsema_real_eip !83
  store i1 %61, i1* %CF, align 1, !mcsema_real_eip !83
  %62 = xor i32 %49, %45, !mcsema_real_eip !83
  %63 = and i32 %51, %62, !mcsema_real_eip !83
  %64 = icmp slt i32 %63, 0
  store i1 %64, i1* %OF, align 1, !mcsema_real_eip !83
  %tmp = xor i1 %60, %64
  %65 = add i64 %RBP_val.132, -68
  %66 = inttoptr i64 %65 to i32*
  br i1 %tmp, label %block_0x51, label %block_0x7b, !mcsema_real_eip !85

block_0x51:                                       ; preds = %block_0x45
  %67 = add i64 %RBP_val.132, -48, !mcsema_real_eip !86
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !86
  %69 = load i64, i64* %68, align 8, !mcsema_real_eip !86
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !86
  %70 = load i32, i32* %44, align 4, !mcsema_real_eip !87
  %71 = sext i32 %70 to i64, !mcsema_real_eip !87
  store i64 %71, i64* %XCX, align 8, !mcsema_real_eip !87
  %72 = shl nsw i64 %71, 2
  %73 = add i64 %72, %69, !mcsema_real_eip !88
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !88
  %75 = load i32, i32* %74, align 4, !mcsema_real_eip !88
  %76 = zext i32 %75 to i64, !mcsema_real_eip !88
  store i64 %76, i64* %XDX, align 8, !mcsema_real_eip !88
  %77 = add i64 %RBP_val.132, -64, !mcsema_real_eip !89
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !89
  %79 = load i64, i64* %78, align 8, !mcsema_real_eip !89
  store i64 %79, i64* %XAX, align 8, !mcsema_real_eip !89
  %80 = load i32, i32* %44, align 4, !mcsema_real_eip !90
  %81 = sext i32 %80 to i64, !mcsema_real_eip !90
  store i64 %81, i64* %XCX, align 8, !mcsema_real_eip !90
  %82 = shl nsw i64 %81, 2
  %83 = add i64 %82, %79, !mcsema_real_eip !91
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !91
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !91
  %86 = sub i32 %75, %85, !mcsema_real_eip !91
  %87 = xor i32 %86, %75, !mcsema_real_eip !91
  %88 = xor i32 %87, %85, !mcsema_real_eip !91
  %89 = and i32 %88, 16, !mcsema_real_eip !91
  %90 = icmp ne i32 %89, 0, !mcsema_real_eip !91
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !91
  %91 = trunc i32 %86 to i8, !mcsema_real_eip !91
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !91
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !91
  %95 = icmp eq i32 %86, 0, !mcsema_real_eip !91
  store i1 %95, i1* %ZF, align 1, !mcsema_real_eip !91
  %96 = icmp slt i32 %86, 0
  store i1 %96, i1* %SF, align 1, !mcsema_real_eip !91
  %97 = icmp ult i32 %75, %85, !mcsema_real_eip !91
  store i1 %97, i1* %CF, align 1, !mcsema_real_eip !91
  %98 = xor i32 %85, %75, !mcsema_real_eip !91
  %99 = and i32 %87, %98, !mcsema_real_eip !91
  %100 = icmp slt i32 %99, 0
  store i1 %100, i1* %OF, align 1, !mcsema_real_eip !91
  %101 = zext i32 %86 to i64, !mcsema_real_eip !91
  store i64 %101, i64* %XDX, align 8, !mcsema_real_eip !91
  %102 = load i32, i32* %66, align 4, !mcsema_real_eip !92
  %103 = add i32 %86, %102, !mcsema_real_eip !92
  %104 = xor i32 %103, %102, !mcsema_real_eip !92
  %105 = xor i32 %104, %86, !mcsema_real_eip !92
  %106 = and i32 %105, 16, !mcsema_real_eip !92
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !92
  store i1 %107, i1* %AF, align 1, !mcsema_real_eip !92
  %108 = icmp slt i32 %103, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !92
  %109 = icmp eq i32 %103, 0, !mcsema_real_eip !92
  store i1 %109, i1* %ZF, align 1, !mcsema_real_eip !92
  %110 = xor i32 %102, -2147483648, !mcsema_real_eip !92
  %111 = xor i32 %110, %86, !mcsema_real_eip !92
  %112 = and i32 %104, %111, !mcsema_real_eip !92
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF, align 1, !mcsema_real_eip !92
  %114 = trunc i32 %103 to i8, !mcsema_real_eip !92
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !92
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !92
  %118 = icmp ult i32 %103, %102, !mcsema_real_eip !92
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !92
  %119 = zext i32 %103 to i64, !mcsema_real_eip !92
  store i64 %119, i64* %XDX, align 8, !mcsema_real_eip !92
  store i32 %103, i32* %66, align 4, !mcsema_real_eip !93
  %RBP_val.176 = load i64, i64* %XBP, align 8, !mcsema_real_eip !94
  %120 = add i64 %RBP_val.176, -72, !mcsema_real_eip !94
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !94
  %122 = load i32, i32* %121, align 4, !mcsema_real_eip !94
  %123 = add i32 %122, 1, !mcsema_real_eip !95
  %124 = xor i32 %123, %122, !mcsema_real_eip !95
  %125 = and i32 %124, 16, !mcsema_real_eip !95
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !95
  store i1 %126, i1* %AF, align 1, !mcsema_real_eip !95
  %127 = icmp slt i32 %123, 0
  store i1 %127, i1* %SF, align 1, !mcsema_real_eip !95
  %128 = icmp eq i32 %123, 0, !mcsema_real_eip !95
  store i1 %128, i1* %ZF, align 1, !mcsema_real_eip !95
  %129 = xor i32 %122, -2147483648, !mcsema_real_eip !95
  %130 = and i32 %124, %129, !mcsema_real_eip !95
  %131 = icmp slt i32 %130, 0
  store i1 %131, i1* %OF, align 1, !mcsema_real_eip !95
  %132 = trunc i32 %123 to i8, !mcsema_real_eip !95
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !95
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  store i1 %135, i1* %PF, align 1, !mcsema_real_eip !95
  %136 = icmp eq i32 %122, -1
  store i1 %136, i1* %CF, align 1, !mcsema_real_eip !95
  %137 = zext i32 %123 to i64, !mcsema_real_eip !95
  store i64 %137, i64* %XAX, align 8, !mcsema_real_eip !95
  store i32 %123, i32* %121, align 4, !mcsema_real_eip !96
  br label %block_0x45, !mcsema_real_eip !97

block_0x7b:                                       ; preds = %block_0x45
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !64
  %138 = load i32, i32* %66, align 4, !mcsema_real_eip !98
  %139 = zext i32 %138 to i64, !mcsema_real_eip !98
  store i64 %139, i64* %XAX, align 8, !mcsema_real_eip !98
  %140 = add i64 %RBP_val.132, -12, !mcsema_real_eip !99
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !99
  %142 = load i32, i32* %141, align 4, !mcsema_real_eip !99
  %143 = zext i32 %142 to i64, !mcsema_real_eip !99
  store i64 %143, i64* %XCX, align 8, !mcsema_real_eip !99
  %144 = add i64 %RBP_val.132, -16, !mcsema_real_eip !100
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !100
  %146 = load i32, i32* %145, align 4, !mcsema_real_eip !100
  %147 = add i32 %142, %146, !mcsema_real_eip !100
  %148 = xor i32 %147, %146, !mcsema_real_eip !100
  %149 = xor i32 %148, %142, !mcsema_real_eip !100
  %150 = and i32 %149, 16, !mcsema_real_eip !100
  %151 = icmp ne i32 %150, 0, !mcsema_real_eip !100
  store i1 %151, i1* %AF, align 1, !mcsema_real_eip !100
  %152 = icmp slt i32 %147, 0
  store i1 %152, i1* %SF, align 1, !mcsema_real_eip !100
  %153 = icmp eq i32 %147, 0, !mcsema_real_eip !100
  store i1 %153, i1* %ZF, align 1, !mcsema_real_eip !100
  %154 = xor i32 %146, -2147483648, !mcsema_real_eip !100
  %155 = xor i32 %154, %142, !mcsema_real_eip !100
  %156 = and i32 %148, %155, !mcsema_real_eip !100
  %157 = icmp slt i32 %156, 0
  store i1 %157, i1* %OF, align 1, !mcsema_real_eip !100
  %158 = trunc i32 %147 to i8, !mcsema_real_eip !100
  %159 = tail call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !100
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  store i1 %161, i1* %PF, align 1, !mcsema_real_eip !100
  %162 = icmp ult i32 %147, %146, !mcsema_real_eip !100
  store i1 %162, i1* %CF, align 1, !mcsema_real_eip !100
  %163 = zext i32 %147 to i64, !mcsema_real_eip !100
  store i64 %163, i64* %XCX, align 8, !mcsema_real_eip !100
  %164 = add i64 %RBP_val.132, -20, !mcsema_real_eip !101
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !101
  %166 = load i32, i32* %165, align 4, !mcsema_real_eip !101
  %167 = add i32 %147, %166, !mcsema_real_eip !101
  %168 = xor i32 %167, %166, !mcsema_real_eip !101
  %169 = xor i32 %168, %147, !mcsema_real_eip !101
  %170 = and i32 %169, 16, !mcsema_real_eip !101
  %171 = icmp ne i32 %170, 0, !mcsema_real_eip !101
  store i1 %171, i1* %AF, align 1, !mcsema_real_eip !101
  %172 = icmp slt i32 %167, 0
  store i1 %172, i1* %SF, align 1, !mcsema_real_eip !101
  %173 = icmp eq i32 %167, 0, !mcsema_real_eip !101
  store i1 %173, i1* %ZF, align 1, !mcsema_real_eip !101
  %174 = xor i32 %166, -2147483648, !mcsema_real_eip !101
  %175 = xor i32 %174, %147, !mcsema_real_eip !101
  %176 = and i32 %168, %175, !mcsema_real_eip !101
  %177 = icmp slt i32 %176, 0
  store i1 %177, i1* %OF, align 1, !mcsema_real_eip !101
  %178 = trunc i32 %167 to i8, !mcsema_real_eip !101
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !101
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  store i1 %181, i1* %PF, align 1, !mcsema_real_eip !101
  %182 = icmp ult i32 %167, %166, !mcsema_real_eip !101
  store i1 %182, i1* %CF, align 1, !mcsema_real_eip !101
  %183 = zext i32 %167 to i64, !mcsema_real_eip !101
  store i64 %183, i64* %XCX, align 8, !mcsema_real_eip !101
  %184 = add i64 %RBP_val.132, -24, !mcsema_real_eip !102
  %185 = inttoptr i64 %184 to i32*, !mcsema_real_eip !102
  %186 = load i32, i32* %185, align 4, !mcsema_real_eip !102
  %187 = add i32 %167, %186, !mcsema_real_eip !102
  %188 = xor i32 %187, %186, !mcsema_real_eip !102
  %189 = xor i32 %188, %167, !mcsema_real_eip !102
  %190 = and i32 %189, 16, !mcsema_real_eip !102
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !102
  store i1 %191, i1* %AF, align 1, !mcsema_real_eip !102
  %192 = icmp slt i32 %187, 0
  store i1 %192, i1* %SF, align 1, !mcsema_real_eip !102
  %193 = icmp eq i32 %187, 0, !mcsema_real_eip !102
  store i1 %193, i1* %ZF, align 1, !mcsema_real_eip !102
  %194 = xor i32 %186, -2147483648, !mcsema_real_eip !102
  %195 = xor i32 %194, %167, !mcsema_real_eip !102
  %196 = and i32 %188, %195, !mcsema_real_eip !102
  %197 = icmp slt i32 %196, 0
  store i1 %197, i1* %OF, align 1, !mcsema_real_eip !102
  %198 = trunc i32 %187 to i8, !mcsema_real_eip !102
  %199 = tail call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !102
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  store i1 %201, i1* %PF, align 1, !mcsema_real_eip !102
  %202 = icmp ult i32 %187, %186, !mcsema_real_eip !102
  store i1 %202, i1* %CF, align 1, !mcsema_real_eip !102
  %203 = zext i32 %187 to i64, !mcsema_real_eip !102
  store i64 %203, i64* %XCX, align 8, !mcsema_real_eip !102
  %204 = add i64 %RBP_val.132, -28, !mcsema_real_eip !103
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !103
  %206 = load i32, i32* %205, align 4, !mcsema_real_eip !103
  %207 = add i32 %187, %206, !mcsema_real_eip !103
  %208 = xor i32 %207, %206, !mcsema_real_eip !103
  %209 = xor i32 %208, %187, !mcsema_real_eip !103
  %210 = and i32 %209, 16, !mcsema_real_eip !103
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !103
  store i1 %211, i1* %AF, align 1, !mcsema_real_eip !103
  %212 = icmp slt i32 %207, 0
  store i1 %212, i1* %SF, align 1, !mcsema_real_eip !103
  %213 = icmp eq i32 %207, 0, !mcsema_real_eip !103
  store i1 %213, i1* %ZF, align 1, !mcsema_real_eip !103
  %214 = xor i32 %206, -2147483648, !mcsema_real_eip !103
  %215 = xor i32 %214, %187, !mcsema_real_eip !103
  %216 = and i32 %208, %215, !mcsema_real_eip !103
  %217 = icmp slt i32 %216, 0
  store i1 %217, i1* %OF, align 1, !mcsema_real_eip !103
  %218 = trunc i32 %207 to i8, !mcsema_real_eip !103
  %219 = tail call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !103
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !103
  %222 = icmp ult i32 %207, %206, !mcsema_real_eip !103
  store i1 %222, i1* %CF, align 1, !mcsema_real_eip !103
  %223 = zext i32 %207 to i64, !mcsema_real_eip !103
  store i64 %223, i64* %XCX, align 8, !mcsema_real_eip !103
  %224 = add i64 %RBP_val.132, -32, !mcsema_real_eip !104
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !104
  %226 = load i32, i32* %225, align 4, !mcsema_real_eip !104
  %227 = add i32 %207, %226, !mcsema_real_eip !104
  %228 = xor i32 %227, %226, !mcsema_real_eip !104
  %229 = xor i32 %228, %207, !mcsema_real_eip !104
  %230 = and i32 %229, 16, !mcsema_real_eip !104
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !104
  store i1 %231, i1* %AF, align 1, !mcsema_real_eip !104
  %232 = icmp eq i32 %227, 0, !mcsema_real_eip !104
  store i1 %232, i1* %ZF, align 1, !mcsema_real_eip !104
  %233 = trunc i32 %227 to i8, !mcsema_real_eip !104
  %234 = tail call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !104
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  store i1 %236, i1* %PF, align 1, !mcsema_real_eip !104
  %237 = zext i32 %227 to i64, !mcsema_real_eip !104
  store i64 %237, i64* %XCX, align 8, !mcsema_real_eip !104
  %EAX_val.156 = load i32, i32* %EAX.134, align 4, !mcsema_real_eip !105
  %238 = sext i32 %EAX_val.156 to i64, !mcsema_real_eip !105
  %239 = sext i32 %227 to i64, !mcsema_real_eip !105
  %240 = mul nsw i64 %238, %239, !mcsema_real_eip !105
  %241 = trunc i64 %240 to i32, !mcsema_real_eip !105
  %sext = shl i64 %240, 32
  %242 = ashr exact i64 %sext, 32
  %243 = icmp ne i64 %242, %240, !mcsema_real_eip !105
  %244 = icmp slt i32 %241, 0, !mcsema_real_eip !105
  store i1 %244, i1* %SF, align 1, !mcsema_real_eip !105
  store i1 %243, i1* %OF, align 1, !mcsema_real_eip !105
  store i1 %243, i1* %CF, align 1, !mcsema_real_eip !105
  %245 = and i64 %240, 4294967295
  store i64 %245, i64* %XAX, align 8, !mcsema_real_eip !105
  %RSP_val.157 = load i64, i64* %XSP, align 8, !mcsema_real_eip !106
  %246 = inttoptr i64 %RSP_val.157 to i64*, !mcsema_real_eip !106
  %247 = load i64, i64* %246, align 8, !mcsema_real_eip !106
  store i64 %247, i64* %XBX, align 8, !mcsema_real_eip !106
  %248 = add i64 %RSP_val.157, 8, !mcsema_real_eip !106
  store i64 %248, i64* %XSP, align 8, !mcsema_real_eip !106
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !107
  %250 = load i64, i64* %249, align 8, !mcsema_real_eip !107
  store i64 %250, i64* %XBP, align 8, !mcsema_real_eip !107
  %251 = add i64 %RSP_val.157, 16, !mcsema_real_eip !107
  store i64 %251, i64* %XSP, align 8, !mcsema_real_eip !107
  %252 = add i64 %RSP_val.157, 24, !mcsema_real_eip !108
  %253 = inttoptr i64 %251 to i64*, !mcsema_real_eip !108
  %254 = load i64, i64* %253, align 8, !mcsema_real_eip !108
  store i64 %254, i64* %XIP, align 8, !mcsema_real_eip !108
  store i64 %252, i64* %XSP, align 8, !mcsema_real_eip !108
  ret void, !mcsema_real_eip !108
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

attributes #0 = { noinline }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 160}
!3 = !{i64 161}
!4 = !{i64 164}
!5 = !{i64 168}
!6 = !{i64 173}
!7 = !{i64 175}
!8 = !{i64 182}
!9 = !{i64 185}
!10 = !{i64 189}
!11 = !{i64 192}
!12 = !{i64 197}
!13 = !{i64 202}
!14 = !{i64 204}
!15 = !{i64 208}
!16 = !{i64 213}
!17 = !{i64 217}
!18 = !{i64 224}
!19 = !{i64 228}
!20 = !{i64 234}
!21 = !{i64 237}
!22 = !{i64 240}
!23 = !{i64 243}
!24 = !{i64 247}
!25 = !{i64 251}
!26 = !{i64 254}
!27 = !{i64 257}
!28 = !{i64 260}
!29 = !{i64 263}
!30 = !{i64 268}
!31 = !{i64 275}
!32 = !{i64 279}
!33 = !{i64 285}
!34 = !{i64 288}
!35 = !{i64 291}
!36 = !{i64 295}
!37 = !{i64 299}
!38 = !{i64 302}
!39 = !{i64 305}
!40 = !{i64 308}
!41 = !{i64 311}
!42 = !{i64 316}
!43 = !{i64 321}
!44 = !{i64 348}
!45 = !{i64 353}
!46 = !{i64 357}
!47 = !{i64 361}
!48 = !{i64 368}
!49 = !{i64 373}
!50 = !{i64 381}
!51 = !{i64 386}
!52 = !{i64 389}
!53 = !{i64 394}
!54 = !{i64 404}
!55 = !{i64 407}
!56 = !{i64 410}
!57 = !{i64 412}
!58 = !{i64 417}
!59 = !{i64 420}
!60 = !{i64 423}
!61 = !{i64 425}
!62 = !{i64 429}
!63 = !{i64 430}
!64 = !{i64 0}
!65 = !{i64 1}
!66 = !{i64 4}
!67 = !{i64 5}
!68 = !{i64 9}
!69 = !{i64 13}
!70 = !{i64 17}
!71 = !{i64 20}
!72 = !{i64 23}
!73 = !{i64 26}
!74 = !{i64 29}
!75 = !{i64 32}
!76 = !{i64 36}
!77 = !{i64 40}
!78 = !{i64 43}
!79 = !{i64 47}
!80 = !{i64 51}
!81 = !{i64 55}
!82 = !{i64 62}
!83 = !{i64 72}
!84 = !{i64 69}
!85 = !{i64 75}
!86 = !{i64 81}
!87 = !{i64 85}
!88 = !{i64 89}
!89 = !{i64 92}
!90 = !{i64 96}
!91 = !{i64 100}
!92 = !{i64 103}
!93 = !{i64 106}
!94 = !{i64 109}
!95 = !{i64 112}
!96 = !{i64 115}
!97 = !{i64 118}
!98 = !{i64 123}
!99 = !{i64 126}
!100 = !{i64 129}
!101 = !{i64 132}
!102 = !{i64 135}
!103 = !{i64 138}
!104 = !{i64 141}
!105 = !{i64 144}
!106 = !{i64 147}
!107 = !{i64 148}
!108 = !{i64 149}
