; ModuleID = 'Output/test_25.clang.opt.bc'
source_filename = "Output/test_25.clang.bc"
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
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
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
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [14 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xa4 = internal constant %0 <{ [14 x i8] c"I am: %s\0A\00%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
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
  %18 = add i64 %RBP_val.5, -8, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, align 4, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %19, align 4, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %20 = add i64 %RBP_val.8, -16, !mcsema_real_eip !7
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !7
  %RSI_val.9 = load i64, i64* %XSI, align 8, !mcsema_real_eip !7
  store i64 %RSI_val.9, i64* %21, align 8, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %22 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %23, align 4, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %24 = add i64 %RBP_val.11, -16, !mcsema_real_eip !9
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !9
  %26 = load i64, i64* %25, align 8, !mcsema_real_eip !9
  store i64 %26, i64* %XSI, align 8, !mcsema_real_eip !9
  %27 = add i64 %26, 8, !mcsema_real_eip !10
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !10
  %29 = load i64, i64* %28, align 8, !mcsema_real_eip !10
  store i64 %29, i64* %XDI, align 8, !mcsema_real_eip !10
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %30 = add i64 %RSP_val.14, -8
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %31, align 8, !mcsema_real_eip !11
  store i64 %30, i64* %XSP, align 8, !mcsema_real_eip !11
  %32 = tail call x86_64_sysvcc i64 @_strlen(i64 %29), !mcsema_real_eip !11
  store i64 %32, i64* %XAX, align 8, !mcsema_real_eip !11
  %EAX.15 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %33 = trunc i64 %32 to i32
  %34 = and i64 %32, 4294967295
  store i64 %34, i64* %XCX, align 8, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %35 = add i64 %RBP_val.17, -24, !mcsema_real_eip !13
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !13
  store i32 %33, i32* %36, align 4, !mcsema_real_eip !13
  %AL.26 = bitcast i64* %XAX to i8*
  %.sink.in.in.pre = load i64, i64* %XBP, align 8
  br label %block_0x36, !mcsema_real_eip !14

block_0x36:                                       ; preds = %block_0x42, %entry
  %.sink.in.in = phi i64 [ %RBP_val.59, %block_0x42 ], [ %.sink.in.in.pre, %entry ]
  %EAX_val.64.sink = phi i32 [ %110, %block_0x42 ], [ 0, %entry ]
  %.sink.in = add i64 %.sink.in.in, -28
  %37 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.64.sink, i32* %37, align 4
  %RBP_val.21 = load i64, i64* %XBP, align 8
  %38 = add i64 %RBP_val.21, -28, !mcsema_real_eip !14
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !14
  %40 = load i32, i32* %39, align 4, !mcsema_real_eip !14
  %41 = zext i32 %40 to i64, !mcsema_real_eip !14
  store i64 %41, i64* %XAX, align 8, !mcsema_real_eip !14
  %42 = add i64 %RBP_val.21, -24
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4, !mcsema_real_eip !15
  %45 = sub i32 %40, %44, !mcsema_real_eip !15
  %46 = xor i32 %45, %40, !mcsema_real_eip !15
  %47 = xor i32 %46, %44, !mcsema_real_eip !15
  %48 = and i32 %47, 16, !mcsema_real_eip !15
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !15
  store i1 %49, i1* %AF, align 1, !mcsema_real_eip !15
  %50 = trunc i32 %45 to i8, !mcsema_real_eip !15
  %51 = tail call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !15
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  store i1 %53, i1* %PF, align 1, !mcsema_real_eip !15
  %54 = icmp eq i32 %45, 0, !mcsema_real_eip !15
  store i1 %54, i1* %ZF, align 1, !mcsema_real_eip !15
  %55 = icmp slt i32 %45, 0
  store i1 %55, i1* %SF, align 1, !mcsema_real_eip !15
  %56 = icmp ult i32 %40, %44, !mcsema_real_eip !15
  store i1 %56, i1* %CF, align 1, !mcsema_real_eip !15
  %57 = xor i32 %44, %40, !mcsema_real_eip !15
  %58 = and i32 %46, %57, !mcsema_real_eip !15
  %59 = icmp slt i32 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !15
  %tmp = xor i1 %59, %55
  %RSP_val.29 = load i64, i64* %XSP, align 8
  %60 = add i64 %RSP_val.29, -8
  %61 = inttoptr i64 %60 to i64*
  br i1 %tmp, label %block_0x42, label %block_0x82, !mcsema_real_eip !16

block_0x42:                                       ; preds = %block_0x36
  store i64 ptrtoint (%0* @data_0xa4 to i64), i64* %XDI, align 8, !mcsema_real_eip !17
  %62 = add i64 %RBP_val.21, -16, !mcsema_real_eip !18
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !18
  %64 = load i64, i64* %63, align 8, !mcsema_real_eip !18
  store i64 %64, i64* %XAX, align 8, !mcsema_real_eip !18
  %65 = add i64 %64, 8, !mcsema_real_eip !19
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !19
  %67 = load i64, i64* %66, align 8, !mcsema_real_eip !19
  store i64 %67, i64* %XSI, align 8, !mcsema_real_eip !19
  store i8 0, i8* %AL.26, align 1, !mcsema_real_eip !20
  store i64 -2415393069852865332, i64* %61, align 8, !mcsema_real_eip !21
  store i64 %60, i64* %XSP, align 8, !mcsema_real_eip !21
  %68 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xa4 to i64), i64 %67), !mcsema_real_eip !21
  store i64 %68, i64* %XAX, align 8, !mcsema_real_eip !21
  %RBP_val.45 = load i64, i64* %XBP, align 8
  %69 = add i64 %RBP_val.45, -16, !mcsema_real_eip !22
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !22
  %71 = load i64, i64* %70, align 8, !mcsema_real_eip !22
  store i64 %71, i64* %XSI, align 8, !mcsema_real_eip !22
  %72 = add i64 %71, 8, !mcsema_real_eip !23
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !23
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %XSI, align 8, !mcsema_real_eip !23
  %75 = add i64 %RBP_val.45, -28, !mcsema_real_eip !24
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !24
  %77 = load i32, i32* %76, align 4, !mcsema_real_eip !24
  %78 = sext i32 %77 to i64, !mcsema_real_eip !24
  store i64 %78, i64* %XDI, align 8, !mcsema_real_eip !24
  %79 = add i64 %74, %78, !mcsema_real_eip !25
  %80 = inttoptr i64 %79 to i8*, !mcsema_real_eip !25
  %81 = load i8, i8* %80, align 1, !mcsema_real_eip !25
  %82 = sext i8 %81 to i64
  %83 = and i64 %82, 4294967295
  store i64 %83, i64* %XCX, align 8, !mcsema_real_eip !25
  %84 = add i64 %RBP_val.45, -20
  %85 = inttoptr i64 %84 to i32*
  %86 = load i32, i32* %85, align 4, !mcsema_real_eip !26
  %87 = sext i8 %81 to i32
  %88 = add i32 %87, %86, !mcsema_real_eip !26
  %89 = xor i32 %88, %86, !mcsema_real_eip !26
  %90 = xor i32 %89, %87, !mcsema_real_eip !26
  %91 = and i32 %90, 16, !mcsema_real_eip !26
  %92 = icmp ne i32 %91, 0, !mcsema_real_eip !26
  store i1 %92, i1* %AF, align 1, !mcsema_real_eip !26
  %93 = icmp slt i32 %88, 0
  store i1 %93, i1* %SF, align 1, !mcsema_real_eip !26
  %94 = icmp eq i32 %88, 0, !mcsema_real_eip !26
  store i1 %94, i1* %ZF, align 1, !mcsema_real_eip !26
  %95 = xor i32 %86, -2147483648, !mcsema_real_eip !26
  %96 = xor i32 %95, %87, !mcsema_real_eip !26
  %97 = and i32 %89, %96, !mcsema_real_eip !26
  %98 = icmp slt i32 %97, 0
  store i1 %98, i1* %OF, align 1, !mcsema_real_eip !26
  %99 = trunc i32 %88 to i8, !mcsema_real_eip !26
  %100 = tail call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !26
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  store i1 %102, i1* %PF, align 1, !mcsema_real_eip !26
  %103 = icmp ult i32 %88, %86, !mcsema_real_eip !26
  store i1 %103, i1* %CF, align 1, !mcsema_real_eip !26
  %104 = zext i32 %88 to i64, !mcsema_real_eip !26
  store i64 %104, i64* %XCX, align 8, !mcsema_real_eip !26
  store i32 %88, i32* %85, align 4, !mcsema_real_eip !27
  %RBP_val.56 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %105 = add i64 %RBP_val.56, -32, !mcsema_real_eip !28
  %EAX_val.58 = load i32, i32* %EAX.15, align 4, !mcsema_real_eip !28
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.58, i32* %106, align 4, !mcsema_real_eip !28
  %RBP_val.59 = load i64, i64* %XBP, align 8, !mcsema_real_eip !29
  %107 = add i64 %RBP_val.59, -28, !mcsema_real_eip !29
  %108 = inttoptr i64 %107 to i32*, !mcsema_real_eip !29
  %109 = load i32, i32* %108, align 4, !mcsema_real_eip !29
  %110 = add i32 %109, 1, !mcsema_real_eip !30
  %111 = xor i32 %110, %109, !mcsema_real_eip !30
  %112 = and i32 %111, 16, !mcsema_real_eip !30
  %113 = icmp ne i32 %112, 0, !mcsema_real_eip !30
  store i1 %113, i1* %AF, align 1, !mcsema_real_eip !30
  %114 = icmp slt i32 %110, 0
  store i1 %114, i1* %SF, align 1, !mcsema_real_eip !30
  %115 = icmp eq i32 %110, 0, !mcsema_real_eip !30
  store i1 %115, i1* %ZF, align 1, !mcsema_real_eip !30
  %116 = xor i32 %109, -2147483648, !mcsema_real_eip !30
  %117 = and i32 %111, %116, !mcsema_real_eip !30
  %118 = icmp slt i32 %117, 0
  store i1 %118, i1* %OF, align 1, !mcsema_real_eip !30
  %119 = trunc i32 %110 to i8, !mcsema_real_eip !30
  %120 = tail call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !30
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !30
  %123 = icmp eq i32 %109, -1
  store i1 %123, i1* %CF, align 1, !mcsema_real_eip !30
  %124 = zext i32 %110 to i64, !mcsema_real_eip !30
  store i64 %124, i64* %XAX, align 8, !mcsema_real_eip !30
  br label %block_0x36, !mcsema_real_eip !31

block_0x82:                                       ; preds = %block_0x36
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  store i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64* %XDI, align 8, !mcsema_real_eip !32
  %125 = load i32, i32* %43, align 4, !mcsema_real_eip !33
  %126 = zext i32 %125 to i64, !mcsema_real_eip !33
  store i64 %126, i64* %XSI, align 8, !mcsema_real_eip !33
  store i8 0, i8* %AL.26, align 1, !mcsema_real_eip !34
  store i64 -2415393069852865332, i64* %61, align 8, !mcsema_real_eip !35
  store i64 %60, i64* %XSP, align 8, !mcsema_real_eip !35
  %127 = tail call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64 %126), !mcsema_real_eip !35
  store i64 %127, i64* %XAX, align 8, !mcsema_real_eip !35
  %RBP_val.30 = load i64, i64* %XBP, align 8
  %128 = add i64 %RBP_val.30, -24, !mcsema_real_eip !36
  %129 = inttoptr i64 %128 to i32*, !mcsema_real_eip !36
  %130 = load i32, i32* %129, align 4, !mcsema_real_eip !36
  %131 = zext i32 %130 to i64, !mcsema_real_eip !36
  store i64 %131, i64* %XSI, align 8, !mcsema_real_eip !36
  %132 = add i64 %RBP_val.30, -36, !mcsema_real_eip !37
  %133 = trunc i64 %127 to i32
  %134 = inttoptr i64 %132 to i32*, !mcsema_real_eip !37
  store i32 %133, i32* %134, align 4, !mcsema_real_eip !37
  %ESI.34 = bitcast i64* %XSI to i32*, !mcsema_real_eip !38
  %ESI_val.35 = load i32, i32* %ESI.34, align 4, !mcsema_real_eip !38
  %135 = zext i32 %ESI_val.35 to i64, !mcsema_real_eip !38
  store i64 %135, i64* %XAX, align 8, !mcsema_real_eip !38
  %RSP_val.36 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %136 = add i64 %RSP_val.36, 48, !mcsema_real_eip !39
  %137 = xor i64 %136, %RSP_val.36, !mcsema_real_eip !39
  %138 = and i64 %137, 16
  %139 = icmp eq i64 %138, 0
  store i1 %139, i1* %AF, align 1, !mcsema_real_eip !39
  %140 = icmp slt i64 %136, 0
  store i1 %140, i1* %SF, align 1, !mcsema_real_eip !39
  %141 = icmp eq i64 %136, 0, !mcsema_real_eip !39
  store i1 %141, i1* %ZF, align 1, !mcsema_real_eip !39
  %142 = xor i64 %RSP_val.36, -9223372036854775808, !mcsema_real_eip !39
  %143 = and i64 %137, %142, !mcsema_real_eip !39
  %144 = icmp slt i64 %143, 0
  store i1 %144, i1* %OF, align 1, !mcsema_real_eip !39
  %145 = trunc i64 %136 to i8, !mcsema_real_eip !39
  %146 = tail call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !39
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  store i1 %148, i1* %PF, align 1, !mcsema_real_eip !39
  %149 = icmp ugt i64 %RSP_val.36, -49
  store i1 %149, i1* %CF, align 1, !mcsema_real_eip !39
  store i64 %136, i64* %XSP, align 8, !mcsema_real_eip !39
  %150 = inttoptr i64 %136 to i64*, !mcsema_real_eip !40
  %151 = load i64, i64* %150, align 8, !mcsema_real_eip !40
  store i64 %151, i64* %XBP, align 8, !mcsema_real_eip !40
  %152 = add i64 %RSP_val.36, 56, !mcsema_real_eip !40
  store i64 %152, i64* %XSP, align 8, !mcsema_real_eip !40
  %153 = add i64 %RSP_val.36, 64, !mcsema_real_eip !41
  %154 = inttoptr i64 %152 to i64*, !mcsema_real_eip !41
  %155 = load i64, i64* %154, align 8, !mcsema_real_eip !41
  store i64 %155, i64* %XIP, align 8, !mcsema_real_eip !41
  store i64 %153, i64* %XSP, align 8, !mcsema_real_eip !41
  ret void, !mcsema_real_eip !41
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) local_unnamed_addr #2

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 15}
!7 = !{i64 18}
!8 = !{i64 22}
!9 = !{i64 29}
!10 = !{i64 33}
!11 = !{i64 37}
!12 = !{i64 42}
!13 = !{i64 44}
!14 = !{i64 54}
!15 = !{i64 57}
!16 = !{i64 60}
!17 = !{i64 66}
!18 = !{i64 76}
!19 = !{i64 80}
!20 = !{i64 84}
!21 = !{i64 86}
!22 = !{i64 91}
!23 = !{i64 95}
!24 = !{i64 99}
!25 = !{i64 103}
!26 = !{i64 107}
!27 = !{i64 110}
!28 = !{i64 113}
!29 = !{i64 116}
!30 = !{i64 119}
!31 = !{i64 125}
!32 = !{i64 130}
!33 = !{i64 140}
!34 = !{i64 143}
!35 = !{i64 145}
!36 = !{i64 150}
!37 = !{i64 153}
!38 = !{i64 156}
!39 = !{i64 158}
!40 = !{i64 162}
!41 = !{i64 163}
