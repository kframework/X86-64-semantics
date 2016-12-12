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
  %24 = tail call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.12)
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
  %.sink.in.in.pre = load i64, i64* %XBP, align 8
  br label %block_0xe0, !mcsema_real_eip !17

block_0xe0:                                       ; preds = %block_0xea, %entry
  %.sink.in.in = phi i64 [ %RBP_val.37, %block_0xea ], [ %.sink.in.in.pre, %entry ]
  %EAX_val.42.sink = phi i32 [ %77, %block_0xea ], [ 0, %entry ]
  %.sink.in = add i64 %.sink.in.in, -36
  %32 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.42.sink, i32* %32, align 4
  %RBP_val.24 = load i64, i64* %XBP, align 8
  %33 = add i64 %RBP_val.24, -36
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !17
  %36 = add i32 %35, -10
  %37 = xor i32 %36, %35, !mcsema_real_eip !17
  %38 = and i32 %37, 16, !mcsema_real_eip !17
  %39 = icmp ne i32 %38, 0, !mcsema_real_eip !17
  store i1 %39, i1* %AF, align 1, !mcsema_real_eip !17
  %40 = trunc i32 %36 to i8, !mcsema_real_eip !17
  %41 = tail call i8 @llvm.ctpop.i8(i8 %40), !mcsema_real_eip !17
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  store i1 %43, i1* %PF, align 1, !mcsema_real_eip !17
  %44 = icmp eq i32 %36, 0, !mcsema_real_eip !17
  store i1 %44, i1* %ZF, align 1, !mcsema_real_eip !17
  %45 = icmp slt i32 %36, 0
  store i1 %45, i1* %SF, align 1, !mcsema_real_eip !17
  %46 = icmp ult i32 %35, 10, !mcsema_real_eip !17
  store i1 %46, i1* %CF, align 1, !mcsema_real_eip !17
  %47 = and i32 %37, %35, !mcsema_real_eip !17
  %48 = icmp slt i32 %47, 0
  store i1 %48, i1* %OF, align 1, !mcsema_real_eip !17
  %tmp = xor i1 %45, %48
  br i1 %tmp, label %block_0xea, label %block_0x10c, !mcsema_real_eip !18

block_0xea:                                       ; preds = %block_0xe0
  %49 = load i32, i32* %34, align 4, !mcsema_real_eip !19
  %50 = add i32 %49, 10, !mcsema_real_eip !20
  %51 = add i32 %49, 11, !mcsema_real_eip !21
  %52 = xor i32 %51, %50, !mcsema_real_eip !21
  %53 = and i32 %52, 16, !mcsema_real_eip !21
  %54 = icmp ne i32 %53, 0, !mcsema_real_eip !21
  store i1 %54, i1* %AF, align 1, !mcsema_real_eip !21
  %55 = icmp slt i32 %51, 0
  store i1 %55, i1* %SF, align 1, !mcsema_real_eip !21
  %56 = icmp eq i32 %51, 0, !mcsema_real_eip !21
  store i1 %56, i1* %ZF, align 1, !mcsema_real_eip !21
  %57 = add i32 %49, -2147483638
  %58 = and i32 %52, %57, !mcsema_real_eip !21
  %59 = icmp slt i32 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !21
  %60 = trunc i32 %51 to i8, !mcsema_real_eip !21
  %61 = tail call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !21
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  store i1 %63, i1* %PF, align 1, !mcsema_real_eip !21
  %64 = icmp eq i32 %50, -1
  store i1 %64, i1* %CF, align 1, !mcsema_real_eip !21
  %65 = zext i32 %51 to i64, !mcsema_real_eip !21
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !21
  %66 = add i64 %RBP_val.24, -24, !mcsema_real_eip !22
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !22
  %68 = load i64, i64* %67, align 8, !mcsema_real_eip !22
  store i64 %68, i64* %XCX, align 8, !mcsema_real_eip !22
  %69 = load i32, i32* %34, align 4, !mcsema_real_eip !23
  %70 = sext i32 %69 to i64, !mcsema_real_eip !23
  store i64 %70, i64* %XDX, align 8, !mcsema_real_eip !23
  %71 = shl nsw i64 %70, 2
  %72 = add i64 %71, %68, !mcsema_real_eip !24
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !24
  store i32 %51, i32* %73, align 4, !mcsema_real_eip !24
  %RBP_val.37 = load i64, i64* %XBP, align 8, !mcsema_real_eip !25
  %74 = add i64 %RBP_val.37, -36, !mcsema_real_eip !25
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !25
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !25
  %77 = add i32 %76, 1, !mcsema_real_eip !26
  %78 = xor i32 %77, %76, !mcsema_real_eip !26
  %79 = and i32 %78, 16, !mcsema_real_eip !26
  %80 = icmp ne i32 %79, 0, !mcsema_real_eip !26
  store i1 %80, i1* %AF, align 1, !mcsema_real_eip !26
  %81 = icmp slt i32 %77, 0
  store i1 %81, i1* %SF, align 1, !mcsema_real_eip !26
  %82 = icmp eq i32 %77, 0, !mcsema_real_eip !26
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !26
  %83 = xor i32 %76, -2147483648, !mcsema_real_eip !26
  %84 = and i32 %78, %83, !mcsema_real_eip !26
  %85 = icmp slt i32 %84, 0
  store i1 %85, i1* %OF, align 1, !mcsema_real_eip !26
  %86 = trunc i32 %77 to i8, !mcsema_real_eip !26
  %87 = tail call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !26
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF, align 1, !mcsema_real_eip !26
  %90 = icmp eq i32 %76, -1
  store i1 %90, i1* %CF, align 1, !mcsema_real_eip !26
  %91 = zext i32 %77 to i64, !mcsema_real_eip !26
  store i64 %91, i64* %XAX, align 8, !mcsema_real_eip !26
  br label %block_0xe0, !mcsema_real_eip !27

block_0x10c:                                      ; preds = %block_0xe0
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %92 = add i64 %RBP_val.24, -40, !mcsema_real_eip !28
  br label %block_0x113, !mcsema_real_eip !19

block_0x113:                                      ; preds = %block_0x11d, %block_0x10c
  %.sink4.in = phi i64 [ %134, %block_0x11d ], [ %92, %block_0x10c ]
  %EAX_val.92.sink = phi i32 [ %137, %block_0x11d ], [ 0, %block_0x10c ]
  %93 = inttoptr i64 %.sink4.in to i32*
  store i32 %EAX_val.92.sink, i32* %93, align 4
  %RBP_val.43 = load i64, i64* %XBP, align 8
  %94 = add i64 %RBP_val.43, -40
  %95 = inttoptr i64 %94 to i32*
  %96 = load i32, i32* %95, align 4, !mcsema_real_eip !29
  %97 = add i32 %96, -10
  %98 = xor i32 %97, %96, !mcsema_real_eip !29
  %99 = and i32 %98, 16, !mcsema_real_eip !29
  %100 = icmp ne i32 %99, 0, !mcsema_real_eip !29
  store i1 %100, i1* %AF, align 1, !mcsema_real_eip !29
  %101 = trunc i32 %97 to i8, !mcsema_real_eip !29
  %102 = tail call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !29
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  store i1 %104, i1* %PF, align 1, !mcsema_real_eip !29
  %105 = icmp eq i32 %97, 0, !mcsema_real_eip !29
  store i1 %105, i1* %ZF, align 1, !mcsema_real_eip !29
  %106 = icmp slt i32 %97, 0
  store i1 %106, i1* %SF, align 1, !mcsema_real_eip !29
  %107 = icmp ult i32 %96, 10, !mcsema_real_eip !29
  store i1 %107, i1* %CF, align 1, !mcsema_real_eip !29
  %108 = and i32 %98, %96, !mcsema_real_eip !29
  %109 = icmp slt i32 %108, 0
  store i1 %109, i1* %OF, align 1, !mcsema_real_eip !29
  %tmp5 = xor i1 %106, %109
  br i1 %tmp5, label %block_0x11d, label %block_0x13c, !mcsema_real_eip !30

block_0x11d:                                      ; preds = %block_0x113
  %110 = load i32, i32* %95, align 4, !mcsema_real_eip !31
  %111 = add i32 %110, 1, !mcsema_real_eip !32
  %112 = xor i32 %111, %110, !mcsema_real_eip !32
  %113 = and i32 %112, 16, !mcsema_real_eip !32
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !32
  store i1 %114, i1* %AF, align 1, !mcsema_real_eip !32
  %115 = icmp slt i32 %111, 0
  store i1 %115, i1* %SF, align 1, !mcsema_real_eip !32
  %116 = icmp eq i32 %111, 0, !mcsema_real_eip !32
  store i1 %116, i1* %ZF, align 1, !mcsema_real_eip !32
  %117 = xor i32 %110, -2147483648, !mcsema_real_eip !32
  %118 = and i32 %112, %117, !mcsema_real_eip !32
  %119 = icmp slt i32 %118, 0
  store i1 %119, i1* %OF, align 1, !mcsema_real_eip !32
  %120 = trunc i32 %111 to i8, !mcsema_real_eip !32
  %121 = tail call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !32
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  store i1 %123, i1* %PF, align 1, !mcsema_real_eip !32
  %124 = icmp eq i32 %110, -1
  store i1 %124, i1* %CF, align 1, !mcsema_real_eip !32
  %125 = zext i32 %111 to i64, !mcsema_real_eip !32
  store i64 %125, i64* %XAX, align 8, !mcsema_real_eip !32
  %126 = add i64 %RBP_val.43, -32, !mcsema_real_eip !33
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !33
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !33
  store i64 %128, i64* %XCX, align 8, !mcsema_real_eip !33
  %129 = load i32, i32* %95, align 4, !mcsema_real_eip !34
  %130 = sext i32 %129 to i64, !mcsema_real_eip !34
  store i64 %130, i64* %XDX, align 8, !mcsema_real_eip !34
  %131 = shl nsw i64 %130, 2
  %132 = add i64 %131, %128, !mcsema_real_eip !35
  %133 = inttoptr i64 %132 to i32*, !mcsema_real_eip !35
  store i32 %111, i32* %133, align 4, !mcsema_real_eip !35
  %RBP_val.87 = load i64, i64* %XBP, align 8
  %134 = add i64 %RBP_val.87, -40
  %135 = inttoptr i64 %134 to i32*, !mcsema_real_eip !36
  %136 = load i32, i32* %135, align 4, !mcsema_real_eip !36
  %137 = add i32 %136, 1, !mcsema_real_eip !37
  %138 = xor i32 %137, %136, !mcsema_real_eip !37
  %139 = and i32 %138, 16, !mcsema_real_eip !37
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !37
  store i1 %140, i1* %AF, align 1, !mcsema_real_eip !37
  %141 = icmp slt i32 %137, 0
  store i1 %141, i1* %SF, align 1, !mcsema_real_eip !37
  %142 = icmp eq i32 %137, 0, !mcsema_real_eip !37
  store i1 %142, i1* %ZF, align 1, !mcsema_real_eip !37
  %143 = xor i32 %136, -2147483648, !mcsema_real_eip !37
  %144 = and i32 %138, %143, !mcsema_real_eip !37
  %145 = icmp slt i32 %144, 0
  store i1 %145, i1* %OF, align 1, !mcsema_real_eip !37
  %146 = trunc i32 %137 to i8, !mcsema_real_eip !37
  %147 = tail call i8 @llvm.ctpop.i8(i8 %146), !mcsema_real_eip !37
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  store i1 %149, i1* %PF, align 1, !mcsema_real_eip !37
  %150 = icmp eq i32 %136, -1
  store i1 %150, i1* %CF, align 1, !mcsema_real_eip !37
  %151 = zext i32 %137 to i64, !mcsema_real_eip !37
  store i64 %151, i64* %XAX, align 8, !mcsema_real_eip !37
  br label %block_0x113, !mcsema_real_eip !38

block_0x13c:                                      ; preds = %block_0x113
  store i64 100, i64* %XDI, align 8, !mcsema_real_eip !39
  store i64 200, i64* %XSI, align 8, !mcsema_real_eip !40
  %152 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %152, align 8
  %153 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %153, align 8
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !41
  %154 = add i64 %RBP_val.43, -24, !mcsema_real_eip !42
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !42
  %156 = load i64, i64* %155, align 8, !mcsema_real_eip !42
  store i64 %156, i64* %R10, align 8, !mcsema_real_eip !42
  %157 = add i64 %RBP_val.43, -32, !mcsema_real_eip !43
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !43
  %159 = load i64, i64* %158, align 8, !mcsema_real_eip !43
  store i64 %159, i64* %R11, align 8, !mcsema_real_eip !43
  %160 = bitcast i64* %XSP to i32**
  %RSP_val.466 = load i32*, i32** %160, align 8
  store i32 10, i32* %RSP_val.466, align 4, !mcsema_real_eip !44
  %RSP_val.47 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %161 = add i64 %RSP_val.47, 8, !mcsema_real_eip !45
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !45
  %R10_val.48 = load i64, i64* %R10, align 8, !mcsema_real_eip !45
  store i64 %R10_val.48, i64* %162, align 8, !mcsema_real_eip !45
  %RSP_val.49 = load i64, i64* %XSP, align 8, !mcsema_real_eip !46
  %163 = add i64 %RSP_val.49, 16, !mcsema_real_eip !46
  %164 = inttoptr i64 %163 to i32*, !mcsema_real_eip !46
  store i32 10, i32* %164, align 4, !mcsema_real_eip !46
  %RSP_val.50 = load i64, i64* %XSP, align 8, !mcsema_real_eip !47
  %165 = add i64 %RSP_val.50, 24, !mcsema_real_eip !47
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !47
  %R11_val.51 = load i64, i64* %R11, align 8, !mcsema_real_eip !47
  store i64 %R11_val.51, i64* %166, align 8, !mcsema_real_eip !47
  %RBP_val.52 = load i64, i64* %XBP, align 8, !mcsema_real_eip !48
  %167 = add i64 %RBP_val.52, -48, !mcsema_real_eip !48
  %EAX_val.54 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !48
  %168 = inttoptr i64 %167 to i32*, !mcsema_real_eip !48
  store i32 %EAX_val.54, i32* %168, align 4, !mcsema_real_eip !48
  %RSP_val.55 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %169 = add i64 %RSP_val.55, -8
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !49
  store i64 -4981261766360305936, i64* %170, align 8, !mcsema_real_eip !49
  store i64 %169, i64* %XSP, align 8, !mcsema_real_eip !49
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !49
  store i64 ptrtoint (%0* @data_0x1af to i64), i64* %XDI, align 8, !mcsema_real_eip !50
  %RBP_val.56 = load i64, i64* %XBP, align 8, !mcsema_real_eip !51
  %171 = add i64 %RBP_val.56, -44, !mcsema_real_eip !51
  %EAX_val.58 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !51
  %172 = inttoptr i64 %171 to i32*, !mcsema_real_eip !51
  store i32 %EAX_val.58, i32* %172, align 4, !mcsema_real_eip !51
  %RBP_val.59 = load i64, i64* %XBP, align 8, !mcsema_real_eip !52
  %173 = add i64 %RBP_val.59, -44, !mcsema_real_eip !52
  %174 = inttoptr i64 %173 to i32*, !mcsema_real_eip !52
  %175 = load i32, i32* %174, align 4, !mcsema_real_eip !52
  %176 = zext i32 %175 to i64, !mcsema_real_eip !52
  store i64 %176, i64* %XSI, align 8, !mcsema_real_eip !52
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !53
  store i8 0, i8* %AL.60, align 1, !mcsema_real_eip !53
  %RDI_val.61 = load i64, i64* %XDI, align 8, !mcsema_real_eip !54
  %RDX_val.63 = load i64, i64* %XDX, align 8, !mcsema_real_eip !54
  %RCX_val.64 = load i64, i64* %XCX, align 8, !mcsema_real_eip !54
  %R8_val.65 = load i64, i64* %R8, align 8, !mcsema_real_eip !54
  %R9_val.66 = load i64, i64* %R9, align 8, !mcsema_real_eip !54
  %RSP_val.67 = load i64, i64* %XSP, align 8, !mcsema_real_eip !54
  %177 = inttoptr i64 %RSP_val.67 to i64*, !mcsema_real_eip !54
  %178 = load i64, i64* %177, align 8, !mcsema_real_eip !54
  %179 = add i64 %RSP_val.67, 8, !mcsema_real_eip !54
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !54
  %181 = load i64, i64* %180, align 8, !mcsema_real_eip !54
  %182 = add i64 %RSP_val.67, 16, !mcsema_real_eip !54
  %183 = inttoptr i64 %182 to i64*, !mcsema_real_eip !54
  %184 = load i64, i64* %183, align 8, !mcsema_real_eip !54
  %185 = add i64 %RSP_val.67, 24, !mcsema_real_eip !54
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !54
  %187 = load i64, i64* %186, align 8, !mcsema_real_eip !54
  %188 = add i64 %RSP_val.67, 32, !mcsema_real_eip !54
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !54
  %190 = load i64, i64* %189, align 8, !mcsema_real_eip !54
  %191 = add i64 %RSP_val.67, 40, !mcsema_real_eip !54
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !54
  %193 = load i64, i64* %192, align 8, !mcsema_real_eip !54
  %194 = add i64 %RSP_val.67, -8
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !54
  store i64 -2415393069852865332, i64* %195, align 8, !mcsema_real_eip !54
  store i64 %194, i64* %XSP, align 8, !mcsema_real_eip !54
  %196 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.61, i64 %176, i64 %RDX_val.63, i64 %RCX_val.64, i64 %R8_val.65, i64 %R9_val.66, i64 %178, i64 %181, i64 %184, i64 %187, i64 %190, i64 %193), !mcsema_real_eip !54
  store i64 %196, i64* %XAX, align 8, !mcsema_real_eip !54
  %RBP_val.69 = load i64, i64* %XBP, align 8
  %197 = add i64 %RBP_val.69, -44, !mcsema_real_eip !55
  %198 = inttoptr i64 %197 to i32*, !mcsema_real_eip !55
  %199 = load i32, i32* %198, align 4, !mcsema_real_eip !55
  %200 = zext i32 %199 to i64, !mcsema_real_eip !55
  store i64 %200, i64* %XCX, align 8, !mcsema_real_eip !55
  %201 = add i64 %RBP_val.69, -52, !mcsema_real_eip !56
  %202 = trunc i64 %196 to i32
  %203 = inttoptr i64 %201 to i32*, !mcsema_real_eip !56
  store i32 %202, i32* %203, align 4, !mcsema_real_eip !56
  %ECX.73 = bitcast i64* %XCX to i32*, !mcsema_real_eip !57
  %ECX_val.74 = load i32, i32* %ECX.73, align 4, !mcsema_real_eip !57
  %204 = zext i32 %ECX_val.74 to i64, !mcsema_real_eip !57
  store i64 %204, i64* %XAX, align 8, !mcsema_real_eip !57
  %RSP_val.75 = load i64, i64* %XSP, align 8, !mcsema_real_eip !58
  %205 = add i64 %RSP_val.75, 96, !mcsema_real_eip !58
  %206 = xor i64 %205, %RSP_val.75, !mcsema_real_eip !58
  %207 = and i64 %206, 16, !mcsema_real_eip !58
  %208 = icmp ne i64 %207, 0, !mcsema_real_eip !58
  store i1 %208, i1* %AF, align 1, !mcsema_real_eip !58
  %209 = icmp slt i64 %205, 0
  store i1 %209, i1* %SF, align 1, !mcsema_real_eip !58
  %210 = icmp eq i64 %205, 0, !mcsema_real_eip !58
  store i1 %210, i1* %ZF, align 1, !mcsema_real_eip !58
  %211 = xor i64 %RSP_val.75, -9223372036854775808, !mcsema_real_eip !58
  %212 = and i64 %206, %211, !mcsema_real_eip !58
  %213 = icmp slt i64 %212, 0
  store i1 %213, i1* %OF, align 1, !mcsema_real_eip !58
  %214 = trunc i64 %205 to i8, !mcsema_real_eip !58
  %215 = tail call i8 @llvm.ctpop.i8(i8 %214), !mcsema_real_eip !58
  %216 = and i8 %215, 1
  %217 = icmp eq i8 %216, 0
  store i1 %217, i1* %PF, align 1, !mcsema_real_eip !58
  %218 = icmp ugt i64 %RSP_val.75, -97
  store i1 %218, i1* %CF, align 1, !mcsema_real_eip !58
  store i64 %205, i64* %XSP, align 8, !mcsema_real_eip !58
  %219 = inttoptr i64 %205 to i64*, !mcsema_real_eip !59
  %220 = load i64, i64* %219, align 8, !mcsema_real_eip !59
  store i64 %220, i64* %XBP, align 8, !mcsema_real_eip !59
  %221 = add i64 %RSP_val.75, 104, !mcsema_real_eip !59
  store i64 %221, i64* %XSP, align 8, !mcsema_real_eip !59
  %222 = add i64 %RSP_val.75, 112, !mcsema_real_eip !60
  %223 = inttoptr i64 %221 to i64*, !mcsema_real_eip !60
  %224 = load i64, i64* %223, align 8, !mcsema_real_eip !60
  store i64 %224, i64* %XIP, align 8, !mcsema_real_eip !60
  store i64 %222, i64* %XSP, align 8, !mcsema_real_eip !60
  ret void, !mcsema_real_eip !60
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !61
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !61
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !61
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !61
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !61
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !61
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !61
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !61
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !61
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !61
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !61
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !61
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !61
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !61
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !61
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !61
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !61
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !61
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !61
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !61
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !61
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !61
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !61
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !61
  %RBP_val.93 = load i64, i64* %XBP, align 8, !mcsema_real_eip !61
  %RSP_val.94 = load i64, i64* %XSP, align 8, !mcsema_real_eip !61
  %1 = add i64 %RSP_val.94, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !61
  store i64 %RBP_val.93, i64* %2, align 8, !mcsema_real_eip !61
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !62
  %RBX_val.96 = load i64, i64* %XBX, align 8, !mcsema_real_eip !63
  %3 = add i64 %RSP_val.94, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !63
  store i64 %RBX_val.96, i64* %4, align 8, !mcsema_real_eip !63
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !63
  %RBP_val.98 = load i64, i64* %XBP, align 8
  %5 = add i64 %RBP_val.98, 40, !mcsema_real_eip !64
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !64
  %7 = load i64, i64* %6, align 8, !mcsema_real_eip !64
  store i64 %7, i64* %XAX, align 8, !mcsema_real_eip !64
  %8 = add i64 %RBP_val.98, 32, !mcsema_real_eip !65
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !65
  %10 = load i32, i32* %9, align 4, !mcsema_real_eip !65
  %11 = zext i32 %10 to i64, !mcsema_real_eip !65
  store i64 %11, i64* %R10, align 8, !mcsema_real_eip !65
  %12 = add i64 %RBP_val.98, 24, !mcsema_real_eip !66
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !66
  %14 = load i64, i64* %13, align 8, !mcsema_real_eip !66
  store i64 %14, i64* %R11, align 8, !mcsema_real_eip !66
  %15 = add i64 %RBP_val.98, 16, !mcsema_real_eip !67
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !67
  %17 = load i32, i32* %16, align 4, !mcsema_real_eip !67
  %18 = zext i32 %17 to i64, !mcsema_real_eip !67
  store i64 %18, i64* %XBX, align 8, !mcsema_real_eip !67
  %19 = add i64 %RBP_val.98, -12, !mcsema_real_eip !68
  %EDI.103 = bitcast i64* %XDI to i32*, !mcsema_real_eip !68
  %EDI_val.104 = load i32, i32* %EDI.103, align 4, !mcsema_real_eip !68
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !68
  store i32 %EDI_val.104, i32* %20, align 4, !mcsema_real_eip !68
  %RBP_val.105 = load i64, i64* %XBP, align 8, !mcsema_real_eip !69
  %21 = add i64 %RBP_val.105, -16, !mcsema_real_eip !69
  %ESI.106 = bitcast i64* %XSI to i32*, !mcsema_real_eip !69
  %ESI_val.107 = load i32, i32* %ESI.106, align 4, !mcsema_real_eip !69
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !69
  store i32 %ESI_val.107, i32* %22, align 4, !mcsema_real_eip !69
  %RBP_val.108 = load i64, i64* %XBP, align 8, !mcsema_real_eip !70
  %23 = add i64 %RBP_val.108, -20, !mcsema_real_eip !70
  %EDX.109 = bitcast i64* %XDX to i32*, !mcsema_real_eip !70
  %EDX_val.110 = load i32, i32* %EDX.109, align 4, !mcsema_real_eip !70
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !70
  store i32 %EDX_val.110, i32* %24, align 4, !mcsema_real_eip !70
  %RBP_val.111 = load i64, i64* %XBP, align 8, !mcsema_real_eip !71
  %25 = add i64 %RBP_val.111, -24, !mcsema_real_eip !71
  %ECX.112 = bitcast i64* %XCX to i32*, !mcsema_real_eip !71
  %ECX_val.113 = load i32, i32* %ECX.112, align 4, !mcsema_real_eip !71
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !71
  store i32 %ECX_val.113, i32* %26, align 4, !mcsema_real_eip !71
  %RBP_val.114 = load i64, i64* %XBP, align 8, !mcsema_real_eip !72
  %27 = add i64 %RBP_val.114, -28, !mcsema_real_eip !72
  %R8D.115 = bitcast i64* %R8 to i32*, !mcsema_real_eip !72
  %R8D_val.116 = load i32, i32* %R8D.115, align 4, !mcsema_real_eip !72
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !72
  store i32 %R8D_val.116, i32* %28, align 4, !mcsema_real_eip !72
  %RBP_val.117 = load i64, i64* %XBP, align 8, !mcsema_real_eip !73
  %29 = add i64 %RBP_val.117, -32, !mcsema_real_eip !73
  %R9D.118 = bitcast i64* %R9 to i32*, !mcsema_real_eip !73
  %R9D_val.119 = load i32, i32* %R9D.118, align 4, !mcsema_real_eip !73
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !73
  store i32 %R9D_val.119, i32* %30, align 4, !mcsema_real_eip !73
  %RBP_val.120 = load i64, i64* %XBP, align 8, !mcsema_real_eip !74
  %31 = add i64 %RBP_val.120, -36, !mcsema_real_eip !74
  %EBX.121 = bitcast i64* %XBX to i32*, !mcsema_real_eip !74
  %EBX_val.122 = load i32, i32* %EBX.121, align 4, !mcsema_real_eip !74
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !74
  store i32 %EBX_val.122, i32* %32, align 4, !mcsema_real_eip !74
  %RBP_val.123 = load i64, i64* %XBP, align 8, !mcsema_real_eip !75
  %33 = add i64 %RBP_val.123, -48, !mcsema_real_eip !75
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !75
  %R11_val.124 = load i64, i64* %R11, align 8, !mcsema_real_eip !75
  store i64 %R11_val.124, i64* %34, align 8, !mcsema_real_eip !75
  %RBP_val.125 = load i64, i64* %XBP, align 8, !mcsema_real_eip !76
  %35 = add i64 %RBP_val.125, -52, !mcsema_real_eip !76
  %R10D.126 = bitcast i64* %R10 to i32*, !mcsema_real_eip !76
  %R10D_val.127 = load i32, i32* %R10D.126, align 4, !mcsema_real_eip !76
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !76
  store i32 %R10D_val.127, i32* %36, align 4, !mcsema_real_eip !76
  %RBP_val.128 = load i64, i64* %XBP, align 8, !mcsema_real_eip !77
  %37 = add i64 %RBP_val.128, -64, !mcsema_real_eip !77
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !77
  %RAX_val.129 = load i64, i64* %XAX, align 8, !mcsema_real_eip !77
  store i64 %RAX_val.129, i64* %38, align 8, !mcsema_real_eip !77
  %RBP_val.130 = load i64, i64* %XBP, align 8, !mcsema_real_eip !78
  %39 = add i64 %RBP_val.130, -68, !mcsema_real_eip !78
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !78
  store i32 0, i32* %40, align 4, !mcsema_real_eip !78
  %EAX.134 = bitcast i64* %XAX to i32*, !mcsema_real_eip !79
  %.sink.in.in.pre = load i64, i64* %XBP, align 8
  br label %block_0x45, !mcsema_real_eip !80

block_0x45:                                       ; preds = %block_0x51, %entry
  %.sink.in.in = phi i64 [ %RBP_val.176, %block_0x51 ], [ %.sink.in.in.pre, %entry ]
  %EAX_val.181.sink = phi i32 [ %122, %block_0x51 ], [ 0, %entry ]
  %.sink.in = add i64 %.sink.in.in, -72
  %41 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.181.sink, i32* %41, align 4
  %RBP_val.132 = load i64, i64* %XBP, align 8
  %42 = add i64 %RBP_val.132, -72
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4, !mcsema_real_eip !80
  %45 = zext i32 %44 to i64, !mcsema_real_eip !80
  store i64 %45, i64* %XAX, align 8, !mcsema_real_eip !80
  %46 = add i64 %RBP_val.132, -36, !mcsema_real_eip !79
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !79
  %48 = load i32, i32* %47, align 4, !mcsema_real_eip !79
  %49 = sub i32 %44, %48, !mcsema_real_eip !79
  %50 = xor i32 %49, %44, !mcsema_real_eip !79
  %51 = xor i32 %50, %48, !mcsema_real_eip !79
  %52 = and i32 %51, 16, !mcsema_real_eip !79
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !79
  store i1 %53, i1* %AF, align 1, !mcsema_real_eip !79
  %54 = trunc i32 %49 to i8, !mcsema_real_eip !79
  %55 = tail call i8 @llvm.ctpop.i8(i8 %54), !mcsema_real_eip !79
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  store i1 %57, i1* %PF, align 1, !mcsema_real_eip !79
  %58 = icmp eq i32 %49, 0, !mcsema_real_eip !79
  store i1 %58, i1* %ZF, align 1, !mcsema_real_eip !79
  %59 = icmp slt i32 %49, 0
  store i1 %59, i1* %SF, align 1, !mcsema_real_eip !79
  %60 = icmp ult i32 %44, %48, !mcsema_real_eip !79
  store i1 %60, i1* %CF, align 1, !mcsema_real_eip !79
  %61 = xor i32 %48, %44, !mcsema_real_eip !79
  %62 = and i32 %50, %61, !mcsema_real_eip !79
  %63 = icmp slt i32 %62, 0
  store i1 %63, i1* %OF, align 1, !mcsema_real_eip !79
  %tmp = xor i1 %63, %59
  %64 = add i64 %RBP_val.132, -68
  %65 = inttoptr i64 %64 to i32*
  br i1 %tmp, label %block_0x51, label %block_0x7b, !mcsema_real_eip !81

block_0x51:                                       ; preds = %block_0x45
  %66 = add i64 %RBP_val.132, -48, !mcsema_real_eip !82
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !82
  %68 = load i64, i64* %67, align 8, !mcsema_real_eip !82
  store i64 %68, i64* %XAX, align 8, !mcsema_real_eip !82
  %69 = load i32, i32* %43, align 4, !mcsema_real_eip !83
  %70 = sext i32 %69 to i64, !mcsema_real_eip !83
  store i64 %70, i64* %XCX, align 8, !mcsema_real_eip !83
  %71 = shl nsw i64 %70, 2
  %72 = add i64 %71, %68, !mcsema_real_eip !84
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !84
  %74 = load i32, i32* %73, align 4, !mcsema_real_eip !84
  %75 = zext i32 %74 to i64, !mcsema_real_eip !84
  store i64 %75, i64* %XDX, align 8, !mcsema_real_eip !84
  %76 = add i64 %RBP_val.132, -64, !mcsema_real_eip !85
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !85
  %78 = load i64, i64* %77, align 8, !mcsema_real_eip !85
  store i64 %78, i64* %XAX, align 8, !mcsema_real_eip !85
  %79 = load i32, i32* %43, align 4, !mcsema_real_eip !86
  %80 = sext i32 %79 to i64, !mcsema_real_eip !86
  store i64 %80, i64* %XCX, align 8, !mcsema_real_eip !86
  %81 = shl nsw i64 %80, 2
  %82 = add i64 %81, %78, !mcsema_real_eip !87
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !87
  %84 = load i32, i32* %83, align 4, !mcsema_real_eip !87
  %85 = sub i32 %74, %84, !mcsema_real_eip !87
  %86 = xor i32 %85, %74, !mcsema_real_eip !87
  %87 = xor i32 %86, %84, !mcsema_real_eip !87
  %88 = and i32 %87, 16, !mcsema_real_eip !87
  %89 = icmp ne i32 %88, 0, !mcsema_real_eip !87
  store i1 %89, i1* %AF, align 1, !mcsema_real_eip !87
  %90 = trunc i32 %85 to i8, !mcsema_real_eip !87
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !87
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !87
  %94 = icmp eq i32 %85, 0, !mcsema_real_eip !87
  store i1 %94, i1* %ZF, align 1, !mcsema_real_eip !87
  %95 = icmp slt i32 %85, 0
  store i1 %95, i1* %SF, align 1, !mcsema_real_eip !87
  %96 = icmp ult i32 %74, %84, !mcsema_real_eip !87
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !87
  %97 = xor i32 %84, %74, !mcsema_real_eip !87
  %98 = and i32 %86, %97, !mcsema_real_eip !87
  %99 = icmp slt i32 %98, 0
  store i1 %99, i1* %OF, align 1, !mcsema_real_eip !87
  %100 = zext i32 %85 to i64, !mcsema_real_eip !87
  store i64 %100, i64* %XDX, align 8, !mcsema_real_eip !87
  %101 = load i32, i32* %65, align 4, !mcsema_real_eip !88
  %102 = add i32 %85, %101, !mcsema_real_eip !88
  %103 = xor i32 %102, %101, !mcsema_real_eip !88
  %104 = xor i32 %103, %85, !mcsema_real_eip !88
  %105 = and i32 %104, 16, !mcsema_real_eip !88
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !88
  store i1 %106, i1* %AF, align 1, !mcsema_real_eip !88
  %107 = icmp slt i32 %102, 0
  store i1 %107, i1* %SF, align 1, !mcsema_real_eip !88
  %108 = icmp eq i32 %102, 0, !mcsema_real_eip !88
  store i1 %108, i1* %ZF, align 1, !mcsema_real_eip !88
  %109 = xor i32 %101, -2147483648, !mcsema_real_eip !88
  %110 = xor i32 %109, %85, !mcsema_real_eip !88
  %111 = and i32 %103, %110, !mcsema_real_eip !88
  %112 = icmp slt i32 %111, 0
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !88
  %113 = trunc i32 %102 to i8, !mcsema_real_eip !88
  %114 = tail call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !88
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  store i1 %116, i1* %PF, align 1, !mcsema_real_eip !88
  %117 = icmp ult i32 %102, %101, !mcsema_real_eip !88
  store i1 %117, i1* %CF, align 1, !mcsema_real_eip !88
  %118 = zext i32 %102 to i64, !mcsema_real_eip !88
  store i64 %118, i64* %XDX, align 8, !mcsema_real_eip !88
  store i32 %102, i32* %65, align 4, !mcsema_real_eip !89
  %RBP_val.176 = load i64, i64* %XBP, align 8, !mcsema_real_eip !90
  %119 = add i64 %RBP_val.176, -72, !mcsema_real_eip !90
  %120 = inttoptr i64 %119 to i32*, !mcsema_real_eip !90
  %121 = load i32, i32* %120, align 4, !mcsema_real_eip !90
  %122 = add i32 %121, 1, !mcsema_real_eip !91
  %123 = xor i32 %122, %121, !mcsema_real_eip !91
  %124 = and i32 %123, 16, !mcsema_real_eip !91
  %125 = icmp ne i32 %124, 0, !mcsema_real_eip !91
  store i1 %125, i1* %AF, align 1, !mcsema_real_eip !91
  %126 = icmp slt i32 %122, 0
  store i1 %126, i1* %SF, align 1, !mcsema_real_eip !91
  %127 = icmp eq i32 %122, 0, !mcsema_real_eip !91
  store i1 %127, i1* %ZF, align 1, !mcsema_real_eip !91
  %128 = xor i32 %121, -2147483648, !mcsema_real_eip !91
  %129 = and i32 %123, %128, !mcsema_real_eip !91
  %130 = icmp slt i32 %129, 0
  store i1 %130, i1* %OF, align 1, !mcsema_real_eip !91
  %131 = trunc i32 %122 to i8, !mcsema_real_eip !91
  %132 = tail call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !91
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  store i1 %134, i1* %PF, align 1, !mcsema_real_eip !91
  %135 = icmp eq i32 %121, -1
  store i1 %135, i1* %CF, align 1, !mcsema_real_eip !91
  %136 = zext i32 %122 to i64, !mcsema_real_eip !91
  store i64 %136, i64* %XAX, align 8, !mcsema_real_eip !91
  br label %block_0x45, !mcsema_real_eip !92

block_0x7b:                                       ; preds = %block_0x45
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !61
  %137 = load i32, i32* %65, align 4, !mcsema_real_eip !93
  %138 = zext i32 %137 to i64, !mcsema_real_eip !93
  store i64 %138, i64* %XAX, align 8, !mcsema_real_eip !93
  %139 = add i64 %RBP_val.132, -12, !mcsema_real_eip !94
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !94
  %141 = load i32, i32* %140, align 4, !mcsema_real_eip !94
  %142 = zext i32 %141 to i64, !mcsema_real_eip !94
  store i64 %142, i64* %XCX, align 8, !mcsema_real_eip !94
  %143 = add i64 %RBP_val.132, -16, !mcsema_real_eip !95
  %144 = inttoptr i64 %143 to i32*, !mcsema_real_eip !95
  %145 = load i32, i32* %144, align 4, !mcsema_real_eip !95
  %146 = add i32 %141, %145, !mcsema_real_eip !95
  %147 = xor i32 %146, %145, !mcsema_real_eip !95
  %148 = xor i32 %147, %141, !mcsema_real_eip !95
  %149 = and i32 %148, 16, !mcsema_real_eip !95
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !95
  store i1 %150, i1* %AF, align 1, !mcsema_real_eip !95
  %151 = icmp slt i32 %146, 0
  store i1 %151, i1* %SF, align 1, !mcsema_real_eip !95
  %152 = icmp eq i32 %146, 0, !mcsema_real_eip !95
  store i1 %152, i1* %ZF, align 1, !mcsema_real_eip !95
  %153 = xor i32 %145, -2147483648, !mcsema_real_eip !95
  %154 = xor i32 %153, %141, !mcsema_real_eip !95
  %155 = and i32 %147, %154, !mcsema_real_eip !95
  %156 = icmp slt i32 %155, 0
  store i1 %156, i1* %OF, align 1, !mcsema_real_eip !95
  %157 = trunc i32 %146 to i8, !mcsema_real_eip !95
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !95
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  store i1 %160, i1* %PF, align 1, !mcsema_real_eip !95
  %161 = icmp ult i32 %146, %145, !mcsema_real_eip !95
  store i1 %161, i1* %CF, align 1, !mcsema_real_eip !95
  %162 = zext i32 %146 to i64, !mcsema_real_eip !95
  store i64 %162, i64* %XCX, align 8, !mcsema_real_eip !95
  %163 = add i64 %RBP_val.132, -20, !mcsema_real_eip !96
  %164 = inttoptr i64 %163 to i32*, !mcsema_real_eip !96
  %165 = load i32, i32* %164, align 4, !mcsema_real_eip !96
  %166 = add i32 %146, %165, !mcsema_real_eip !96
  %167 = xor i32 %166, %165, !mcsema_real_eip !96
  %168 = xor i32 %167, %146, !mcsema_real_eip !96
  %169 = and i32 %168, 16, !mcsema_real_eip !96
  %170 = icmp ne i32 %169, 0, !mcsema_real_eip !96
  store i1 %170, i1* %AF, align 1, !mcsema_real_eip !96
  %171 = icmp slt i32 %166, 0
  store i1 %171, i1* %SF, align 1, !mcsema_real_eip !96
  %172 = icmp eq i32 %166, 0, !mcsema_real_eip !96
  store i1 %172, i1* %ZF, align 1, !mcsema_real_eip !96
  %173 = xor i32 %165, -2147483648, !mcsema_real_eip !96
  %174 = xor i32 %173, %146, !mcsema_real_eip !96
  %175 = and i32 %167, %174, !mcsema_real_eip !96
  %176 = icmp slt i32 %175, 0
  store i1 %176, i1* %OF, align 1, !mcsema_real_eip !96
  %177 = trunc i32 %166 to i8, !mcsema_real_eip !96
  %178 = tail call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !96
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  store i1 %180, i1* %PF, align 1, !mcsema_real_eip !96
  %181 = icmp ult i32 %166, %165, !mcsema_real_eip !96
  store i1 %181, i1* %CF, align 1, !mcsema_real_eip !96
  %182 = zext i32 %166 to i64, !mcsema_real_eip !96
  store i64 %182, i64* %XCX, align 8, !mcsema_real_eip !96
  %183 = add i64 %RBP_val.132, -24, !mcsema_real_eip !97
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !97
  %185 = load i32, i32* %184, align 4, !mcsema_real_eip !97
  %186 = add i32 %166, %185, !mcsema_real_eip !97
  %187 = xor i32 %186, %185, !mcsema_real_eip !97
  %188 = xor i32 %187, %166, !mcsema_real_eip !97
  %189 = and i32 %188, 16, !mcsema_real_eip !97
  %190 = icmp ne i32 %189, 0, !mcsema_real_eip !97
  store i1 %190, i1* %AF, align 1, !mcsema_real_eip !97
  %191 = icmp slt i32 %186, 0
  store i1 %191, i1* %SF, align 1, !mcsema_real_eip !97
  %192 = icmp eq i32 %186, 0, !mcsema_real_eip !97
  store i1 %192, i1* %ZF, align 1, !mcsema_real_eip !97
  %193 = xor i32 %185, -2147483648, !mcsema_real_eip !97
  %194 = xor i32 %193, %166, !mcsema_real_eip !97
  %195 = and i32 %187, %194, !mcsema_real_eip !97
  %196 = icmp slt i32 %195, 0
  store i1 %196, i1* %OF, align 1, !mcsema_real_eip !97
  %197 = trunc i32 %186 to i8, !mcsema_real_eip !97
  %198 = tail call i8 @llvm.ctpop.i8(i8 %197), !mcsema_real_eip !97
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  store i1 %200, i1* %PF, align 1, !mcsema_real_eip !97
  %201 = icmp ult i32 %186, %185, !mcsema_real_eip !97
  store i1 %201, i1* %CF, align 1, !mcsema_real_eip !97
  %202 = zext i32 %186 to i64, !mcsema_real_eip !97
  store i64 %202, i64* %XCX, align 8, !mcsema_real_eip !97
  %203 = add i64 %RBP_val.132, -28, !mcsema_real_eip !98
  %204 = inttoptr i64 %203 to i32*, !mcsema_real_eip !98
  %205 = load i32, i32* %204, align 4, !mcsema_real_eip !98
  %206 = add i32 %186, %205, !mcsema_real_eip !98
  %207 = xor i32 %206, %205, !mcsema_real_eip !98
  %208 = xor i32 %207, %186, !mcsema_real_eip !98
  %209 = and i32 %208, 16, !mcsema_real_eip !98
  %210 = icmp ne i32 %209, 0, !mcsema_real_eip !98
  store i1 %210, i1* %AF, align 1, !mcsema_real_eip !98
  %211 = icmp slt i32 %206, 0
  store i1 %211, i1* %SF, align 1, !mcsema_real_eip !98
  %212 = icmp eq i32 %206, 0, !mcsema_real_eip !98
  store i1 %212, i1* %ZF, align 1, !mcsema_real_eip !98
  %213 = xor i32 %205, -2147483648, !mcsema_real_eip !98
  %214 = xor i32 %213, %186, !mcsema_real_eip !98
  %215 = and i32 %207, %214, !mcsema_real_eip !98
  %216 = icmp slt i32 %215, 0
  store i1 %216, i1* %OF, align 1, !mcsema_real_eip !98
  %217 = trunc i32 %206 to i8, !mcsema_real_eip !98
  %218 = tail call i8 @llvm.ctpop.i8(i8 %217), !mcsema_real_eip !98
  %219 = and i8 %218, 1
  %220 = icmp eq i8 %219, 0
  store i1 %220, i1* %PF, align 1, !mcsema_real_eip !98
  %221 = icmp ult i32 %206, %205, !mcsema_real_eip !98
  store i1 %221, i1* %CF, align 1, !mcsema_real_eip !98
  %222 = zext i32 %206 to i64, !mcsema_real_eip !98
  store i64 %222, i64* %XCX, align 8, !mcsema_real_eip !98
  %RBP_val.150 = load i64, i64* %XBP, align 8, !mcsema_real_eip !99
  %223 = add i64 %RBP_val.150, -32, !mcsema_real_eip !99
  %224 = inttoptr i64 %223 to i32*, !mcsema_real_eip !99
  %225 = load i32, i32* %224, align 4, !mcsema_real_eip !99
  %226 = add i32 %206, %225, !mcsema_real_eip !99
  %227 = xor i32 %226, %225, !mcsema_real_eip !99
  %228 = xor i32 %227, %206, !mcsema_real_eip !99
  %229 = and i32 %228, 16, !mcsema_real_eip !99
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !99
  store i1 %230, i1* %AF, align 1, !mcsema_real_eip !99
  %231 = icmp eq i32 %226, 0, !mcsema_real_eip !99
  store i1 %231, i1* %ZF, align 1, !mcsema_real_eip !99
  %232 = trunc i32 %226 to i8, !mcsema_real_eip !99
  %233 = tail call i8 @llvm.ctpop.i8(i8 %232), !mcsema_real_eip !99
  %234 = and i8 %233, 1
  %235 = icmp eq i8 %234, 0
  store i1 %235, i1* %PF, align 1, !mcsema_real_eip !99
  %236 = zext i32 %226 to i64, !mcsema_real_eip !99
  store i64 %236, i64* %XCX, align 8, !mcsema_real_eip !99
  %EAX_val.156 = load i32, i32* %EAX.134, align 4, !mcsema_real_eip !100
  %237 = sext i32 %EAX_val.156 to i64, !mcsema_real_eip !100
  %238 = sext i32 %226 to i64, !mcsema_real_eip !100
  %239 = mul nsw i64 %237, %238, !mcsema_real_eip !100
  %240 = trunc i64 %239 to i32, !mcsema_real_eip !100
  %sext = shl i64 %239, 32
  %241 = ashr exact i64 %sext, 32
  %242 = icmp ne i64 %241, %239, !mcsema_real_eip !100
  %243 = icmp slt i32 %240, 0, !mcsema_real_eip !100
  store i1 %243, i1* %SF, align 1, !mcsema_real_eip !100
  store i1 %242, i1* %OF, align 1, !mcsema_real_eip !100
  store i1 %242, i1* %CF, align 1, !mcsema_real_eip !100
  %244 = and i64 %239, 4294967295
  store i64 %244, i64* %XAX, align 8, !mcsema_real_eip !100
  %RSP_val.157 = load i64, i64* %XSP, align 8, !mcsema_real_eip !101
  %245 = inttoptr i64 %RSP_val.157 to i64*, !mcsema_real_eip !101
  %246 = load i64, i64* %245, align 8, !mcsema_real_eip !101
  store i64 %246, i64* %XBX, align 8, !mcsema_real_eip !101
  %247 = add i64 %RSP_val.157, 8, !mcsema_real_eip !101
  store i64 %247, i64* %XSP, align 8, !mcsema_real_eip !101
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !102
  %249 = load i64, i64* %248, align 8, !mcsema_real_eip !102
  store i64 %249, i64* %XBP, align 8, !mcsema_real_eip !102
  %250 = add i64 %RSP_val.157, 16, !mcsema_real_eip !102
  store i64 %250, i64* %XSP, align 8, !mcsema_real_eip !102
  %251 = add i64 %RSP_val.157, 24, !mcsema_real_eip !103
  %252 = inttoptr i64 %250 to i64*, !mcsema_real_eip !103
  %253 = load i64, i64* %252, align 8, !mcsema_real_eip !103
  store i64 %253, i64* %XIP, align 8, !mcsema_real_eip !103
  store i64 %251, i64* %XSP, align 8, !mcsema_real_eip !103
  ret void, !mcsema_real_eip !103
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
!17 = !{i64 224}
!18 = !{i64 228}
!19 = !{i64 234}
!20 = !{i64 237}
!21 = !{i64 240}
!22 = !{i64 243}
!23 = !{i64 247}
!24 = !{i64 251}
!25 = !{i64 254}
!26 = !{i64 257}
!27 = !{i64 263}
!28 = !{i64 268}
!29 = !{i64 275}
!30 = !{i64 279}
!31 = !{i64 285}
!32 = !{i64 288}
!33 = !{i64 291}
!34 = !{i64 295}
!35 = !{i64 299}
!36 = !{i64 302}
!37 = !{i64 305}
!38 = !{i64 311}
!39 = !{i64 316}
!40 = !{i64 321}
!41 = !{i64 348}
!42 = !{i64 353}
!43 = !{i64 357}
!44 = !{i64 361}
!45 = !{i64 368}
!46 = !{i64 373}
!47 = !{i64 381}
!48 = !{i64 386}
!49 = !{i64 389}
!50 = !{i64 394}
!51 = !{i64 404}
!52 = !{i64 407}
!53 = !{i64 410}
!54 = !{i64 412}
!55 = !{i64 417}
!56 = !{i64 420}
!57 = !{i64 423}
!58 = !{i64 425}
!59 = !{i64 429}
!60 = !{i64 430}
!61 = !{i64 0}
!62 = !{i64 1}
!63 = !{i64 4}
!64 = !{i64 5}
!65 = !{i64 9}
!66 = !{i64 13}
!67 = !{i64 17}
!68 = !{i64 20}
!69 = !{i64 23}
!70 = !{i64 26}
!71 = !{i64 29}
!72 = !{i64 32}
!73 = !{i64 36}
!74 = !{i64 40}
!75 = !{i64 43}
!76 = !{i64 47}
!77 = !{i64 51}
!78 = !{i64 55}
!79 = !{i64 72}
!80 = !{i64 69}
!81 = !{i64 75}
!82 = !{i64 81}
!83 = !{i64 85}
!84 = !{i64 89}
!85 = !{i64 92}
!86 = !{i64 96}
!87 = !{i64 100}
!88 = !{i64 103}
!89 = !{i64 106}
!90 = !{i64 109}
!91 = !{i64 112}
!92 = !{i64 118}
!93 = !{i64 123}
!94 = !{i64 126}
!95 = !{i64 129}
!96 = !{i64 132}
!97 = !{i64 135}
!98 = !{i64 138}
!99 = !{i64 141}
!100 = !{i64 144}
!101 = !{i64 147}
!102 = !{i64 148}
!103 = !{i64 149}
