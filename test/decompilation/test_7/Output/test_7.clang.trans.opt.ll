; ModuleID = 'Output/test_7.clang.trans.opt.bc'
source_filename = "Output/test_7.clang.bc"
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
module asm "  .globl sub_140;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_140(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x261 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_140(%RegState*) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
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
  %R14 = getelementptr %RegState, %RegState* %0, i64 0, i32 70, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %R14_val.3 = load i64, i64* %R14, align 8, !mcsema_real_eip !4
  %3 = add i64 %RSP_val.1, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %R14_val.3, i64* %4, align 8, !mcsema_real_eip !4
  %RBX_val.5 = load i64, i64* %XBX, align 8, !mcsema_real_eip !5
  %5 = add i64 %RSP_val.1, -24
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  store i64 %RBX_val.5, i64* %6, align 8, !mcsema_real_eip !5
  %7 = add i64 %RSP_val.1, -184
  %8 = xor i64 %7, %5, !mcsema_real_eip !6
  %9 = and i64 %8, 16, !mcsema_real_eip !6
  %10 = icmp ne i64 %9, 0, !mcsema_real_eip !6
  store i1 %10, i1* %AF, align 1, !mcsema_real_eip !6
  %11 = trunc i64 %7 to i8, !mcsema_real_eip !6
  %12 = tail call i8 @llvm.ctpop.i8(i8 %11), !mcsema_real_eip !6
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  store i1 %14, i1* %PF, align 1, !mcsema_real_eip !6
  %15 = icmp eq i64 %7, 0, !mcsema_real_eip !6
  store i1 %15, i1* %ZF, align 1, !mcsema_real_eip !6
  %16 = icmp slt i64 %7, 0
  store i1 %16, i1* %SF, align 1, !mcsema_real_eip !6
  %17 = icmp ult i64 %5, 160, !mcsema_real_eip !6
  store i1 %17, i1* %CF, align 1, !mcsema_real_eip !6
  %18 = and i64 %8, %5, !mcsema_real_eip !6
  %19 = icmp slt i64 %18, 0
  store i1 %19, i1* %OF, align 1, !mcsema_real_eip !6
  store i64 %7, i64* %XSP, align 8, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %20 = add i64 %RBP_val.8, -20, !mcsema_real_eip !7
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %21, align 4, !mcsema_real_eip !7
  %RBP_val.9 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %22 = add i64 %RBP_val.9, -24, !mcsema_real_eip !8
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !8
  store i32 1, i32* %23, align 4, !mcsema_real_eip !8
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %24 = add i64 %RBP_val.10, -68, !mcsema_real_eip !9
  %EAX.12 = bitcast i64* %XAX to i32*
  br label %block_0x163, !mcsema_real_eip !10

block_0x163:                                      ; preds = %block_0x16d, %entry
  %.sink.in = phi i64 [ %64, %block_0x16d ], [ %24, %entry ]
  %EAX_val.35.sink = phi i32 [ %67, %block_0x16d ], [ 0, %entry ]
  %25 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.35.sink, i32* %25, align 4
  %RBP_val.11 = load i64, i64* %XBP, align 8
  %26 = add i64 %RBP_val.11, -68
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %27, align 4, !mcsema_real_eip !10
  %29 = add i32 %28, -10
  %30 = xor i32 %29, %28, !mcsema_real_eip !10
  %31 = and i32 %30, 16, !mcsema_real_eip !10
  %32 = icmp ne i32 %31, 0, !mcsema_real_eip !10
  store i1 %32, i1* %AF, align 1, !mcsema_real_eip !10
  %33 = trunc i32 %29 to i8, !mcsema_real_eip !10
  %34 = tail call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !10
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  store i1 %36, i1* %PF, align 1, !mcsema_real_eip !10
  %37 = icmp eq i32 %29, 0, !mcsema_real_eip !10
  store i1 %37, i1* %ZF, align 1, !mcsema_real_eip !10
  %38 = icmp slt i32 %29, 0
  store i1 %38, i1* %SF, align 1, !mcsema_real_eip !10
  %39 = icmp ult i32 %28, 10, !mcsema_real_eip !10
  store i1 %39, i1* %CF, align 1, !mcsema_real_eip !10
  %40 = and i32 %30, %28, !mcsema_real_eip !10
  %41 = icmp slt i32 %40, 0
  store i1 %41, i1* %OF, align 1, !mcsema_real_eip !10
  %tmp = xor i1 %38, %41
  br i1 %tmp, label %block_0x16d, label %block_0x189, !mcsema_real_eip !11

block_0x16d:                                      ; preds = %block_0x163
  %42 = load i32, i32* %27, align 4, !mcsema_real_eip !12
  %43 = add i32 %42, 1, !mcsema_real_eip !13
  %44 = xor i32 %43, %42, !mcsema_real_eip !13
  %45 = and i32 %44, 16, !mcsema_real_eip !13
  %46 = icmp ne i32 %45, 0, !mcsema_real_eip !13
  store i1 %46, i1* %AF, align 1, !mcsema_real_eip !13
  %47 = icmp slt i32 %43, 0
  store i1 %47, i1* %SF, align 1, !mcsema_real_eip !13
  %48 = icmp eq i32 %43, 0, !mcsema_real_eip !13
  store i1 %48, i1* %ZF, align 1, !mcsema_real_eip !13
  %49 = xor i32 %42, -2147483648, !mcsema_real_eip !13
  %50 = and i32 %44, %49, !mcsema_real_eip !13
  %51 = icmp slt i32 %50, 0
  store i1 %51, i1* %OF, align 1, !mcsema_real_eip !13
  %52 = trunc i32 %43 to i8, !mcsema_real_eip !13
  %53 = tail call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !13
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  store i1 %55, i1* %PF, align 1, !mcsema_real_eip !13
  %56 = icmp eq i32 %42, -1
  store i1 %56, i1* %CF, align 1, !mcsema_real_eip !13
  %57 = zext i32 %43 to i64, !mcsema_real_eip !13
  store i64 %57, i64* %XAX, align 8, !mcsema_real_eip !13
  %58 = load i32, i32* %27, align 4, !mcsema_real_eip !14
  %59 = sext i32 %58 to i64, !mcsema_real_eip !14
  store i64 %59, i64* %XCX, align 8, !mcsema_real_eip !14
  %60 = add i64 %RBP_val.11, -64, !mcsema_real_eip !15
  %61 = shl nsw i64 %59, 2
  %62 = add i64 %60, %61, !mcsema_real_eip !15
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !15
  store i32 %43, i32* %63, align 4, !mcsema_real_eip !15
  %RBP_val.30 = load i64, i64* %XBP, align 8
  %64 = add i64 %RBP_val.30, -68
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !16
  %66 = load i32, i32* %65, align 4, !mcsema_real_eip !16
  %67 = add i32 %66, 1, !mcsema_real_eip !17
  %68 = xor i32 %67, %66, !mcsema_real_eip !17
  %69 = and i32 %68, 16, !mcsema_real_eip !17
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !17
  store i1 %70, i1* %AF, align 1, !mcsema_real_eip !17
  %71 = icmp slt i32 %67, 0
  store i1 %71, i1* %SF, align 1, !mcsema_real_eip !17
  %72 = icmp eq i32 %67, 0, !mcsema_real_eip !17
  store i1 %72, i1* %ZF, align 1, !mcsema_real_eip !17
  %73 = xor i32 %66, -2147483648, !mcsema_real_eip !17
  %74 = and i32 %68, %73, !mcsema_real_eip !17
  %75 = icmp slt i32 %74, 0
  store i1 %75, i1* %OF, align 1, !mcsema_real_eip !17
  %76 = trunc i32 %67 to i8, !mcsema_real_eip !17
  %77 = tail call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !17
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  store i1 %79, i1* %PF, align 1, !mcsema_real_eip !17
  %80 = icmp eq i32 %66, -1
  store i1 %80, i1* %CF, align 1, !mcsema_real_eip !17
  %81 = zext i32 %67 to i64, !mcsema_real_eip !17
  store i64 %81, i64* %XAX, align 8, !mcsema_real_eip !17
  br label %block_0x163, !mcsema_real_eip !18

block_0x189:                                      ; preds = %block_0x163
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  store i64 40, i64* %XAX, align 8, !mcsema_real_eip !19
  store i64 40, i64* %XDI, align 8, !mcsema_real_eip !20
  %82 = add i64 %RBP_val.11, -24, !mcsema_real_eip !21
  store i64 %82, i64* %XCX, align 8, !mcsema_real_eip !21
  %83 = add i64 %RBP_val.11, -80, !mcsema_real_eip !22
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !22
  store i64 %82, i64* %84, align 8, !mcsema_real_eip !22
  %RDI_val.17 = load i64, i64* %XDI, align 8, !mcsema_real_eip !23
  %RSP_val.18 = load i64, i64* %XSP, align 8, !mcsema_real_eip !23
  %85 = add i64 %RSP_val.18, -8
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !23
  store i64 -2415393069852865332, i64* %86, align 8, !mcsema_real_eip !23
  store i64 %85, i64* %XSP, align 8, !mcsema_real_eip !23
  %87 = tail call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.17), !mcsema_real_eip !23
  store i64 %87, i64* %XAX, align 8, !mcsema_real_eip !23
  %RBP_val.19 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %88 = add i64 %RBP_val.19, -88, !mcsema_real_eip !24
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !24
  store i64 %87, i64* %89, align 8, !mcsema_real_eip !24
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !25
  %90 = add i64 %RBP_val.21, -92, !mcsema_real_eip !25
  br label %block_0x1a8, !mcsema_real_eip !12

block_0x1a8:                                      ; preds = %block_0x1b2, %block_0x189
  %.sink4.in = phi i64 [ %132, %block_0x1b2 ], [ %90, %block_0x189 ]
  %EAX_val.111.sink = phi i32 [ %135, %block_0x1b2 ], [ 0, %block_0x189 ]
  %91 = inttoptr i64 %.sink4.in to i32*
  store i32 %EAX_val.111.sink, i32* %91, align 4
  %RBP_val.36 = load i64, i64* %XBP, align 8
  %92 = add i64 %RBP_val.36, -92
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !26
  %95 = add i32 %94, -10
  %96 = xor i32 %95, %94, !mcsema_real_eip !26
  %97 = and i32 %96, 16, !mcsema_real_eip !26
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !26
  store i1 %98, i1* %AF, align 1, !mcsema_real_eip !26
  %99 = trunc i32 %95 to i8, !mcsema_real_eip !26
  %100 = tail call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !26
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  store i1 %102, i1* %PF, align 1, !mcsema_real_eip !26
  %103 = icmp eq i32 %95, 0, !mcsema_real_eip !26
  store i1 %103, i1* %ZF, align 1, !mcsema_real_eip !26
  %104 = icmp slt i32 %95, 0
  store i1 %104, i1* %SF, align 1, !mcsema_real_eip !26
  %105 = icmp ult i32 %94, 10, !mcsema_real_eip !26
  store i1 %105, i1* %CF, align 1, !mcsema_real_eip !26
  %106 = and i32 %96, %94, !mcsema_real_eip !26
  %107 = icmp slt i32 %106, 0
  store i1 %107, i1* %OF, align 1, !mcsema_real_eip !26
  %tmp5 = xor i1 %104, %107
  br i1 %tmp5, label %block_0x1b2, label %block_0x1d1, !mcsema_real_eip !27

block_0x1b2:                                      ; preds = %block_0x1a8
  %108 = load i32, i32* %93, align 4, !mcsema_real_eip !28
  %109 = add i32 %108, 1, !mcsema_real_eip !29
  %110 = xor i32 %109, %108, !mcsema_real_eip !29
  %111 = and i32 %110, 16, !mcsema_real_eip !29
  %112 = icmp ne i32 %111, 0, !mcsema_real_eip !29
  store i1 %112, i1* %AF, align 1, !mcsema_real_eip !29
  %113 = icmp slt i32 %109, 0
  store i1 %113, i1* %SF, align 1, !mcsema_real_eip !29
  %114 = icmp eq i32 %109, 0, !mcsema_real_eip !29
  store i1 %114, i1* %ZF, align 1, !mcsema_real_eip !29
  %115 = xor i32 %108, -2147483648, !mcsema_real_eip !29
  %116 = and i32 %110, %115, !mcsema_real_eip !29
  %117 = icmp slt i32 %116, 0
  store i1 %117, i1* %OF, align 1, !mcsema_real_eip !29
  %118 = trunc i32 %109 to i8, !mcsema_real_eip !29
  %119 = tail call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !29
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  store i1 %121, i1* %PF, align 1, !mcsema_real_eip !29
  %122 = icmp eq i32 %108, -1
  store i1 %122, i1* %CF, align 1, !mcsema_real_eip !29
  %123 = zext i32 %109 to i64, !mcsema_real_eip !29
  store i64 %123, i64* %XAX, align 8, !mcsema_real_eip !29
  %124 = add i64 %RBP_val.36, -88, !mcsema_real_eip !30
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !30
  %126 = load i64, i64* %125, align 8, !mcsema_real_eip !30
  store i64 %126, i64* %XCX, align 8, !mcsema_real_eip !30
  %127 = load i32, i32* %93, align 4, !mcsema_real_eip !31
  %128 = sext i32 %127 to i64, !mcsema_real_eip !31
  store i64 %128, i64* %XDX, align 8, !mcsema_real_eip !31
  %129 = shl nsw i64 %128, 2
  %130 = add i64 %129, %126, !mcsema_real_eip !32
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !32
  store i32 %109, i32* %131, align 4, !mcsema_real_eip !32
  %RBP_val.106 = load i64, i64* %XBP, align 8
  %132 = add i64 %RBP_val.106, -92
  %133 = inttoptr i64 %132 to i32*, !mcsema_real_eip !33
  %134 = load i32, i32* %133, align 4, !mcsema_real_eip !33
  %135 = add i32 %134, 1, !mcsema_real_eip !34
  %136 = xor i32 %135, %134, !mcsema_real_eip !34
  %137 = and i32 %136, 16, !mcsema_real_eip !34
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !34
  store i1 %138, i1* %AF, align 1, !mcsema_real_eip !34
  %139 = icmp slt i32 %135, 0
  store i1 %139, i1* %SF, align 1, !mcsema_real_eip !34
  %140 = icmp eq i32 %135, 0, !mcsema_real_eip !34
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !34
  %141 = xor i32 %134, -2147483648, !mcsema_real_eip !34
  %142 = and i32 %136, %141, !mcsema_real_eip !34
  %143 = icmp slt i32 %142, 0
  store i1 %143, i1* %OF, align 1, !mcsema_real_eip !34
  %144 = trunc i32 %135 to i8, !mcsema_real_eip !34
  %145 = tail call i8 @llvm.ctpop.i8(i8 %144), !mcsema_real_eip !34
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  store i1 %147, i1* %PF, align 1, !mcsema_real_eip !34
  %148 = icmp eq i32 %134, -1
  store i1 %148, i1* %CF, align 1, !mcsema_real_eip !34
  %149 = zext i32 %135 to i64, !mcsema_real_eip !34
  store i64 %149, i64* %XAX, align 8, !mcsema_real_eip !34
  br label %block_0x1a8, !mcsema_real_eip !35

block_0x1d1:                                      ; preds = %block_0x1a8
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !36
  %150 = add i64 %RBP_val.36, -64, !mcsema_real_eip !37
  store i64 %150, i64* %XCX, align 8, !mcsema_real_eip !37
  %151 = add i64 %RBP_val.36, -24
  %152 = inttoptr i64 %151 to i32*
  %153 = load i32, i32* %152, align 4, !mcsema_real_eip !38
  %154 = zext i32 %153 to i64, !mcsema_real_eip !38
  store i64 %154, i64* %XDI, align 8, !mcsema_real_eip !38
  %155 = add i64 %RBP_val.36, -80
  %156 = inttoptr i64 %155 to i64*
  %157 = load i64, i64* %156, align 8, !mcsema_real_eip !39
  store i64 %157, i64* %XDX, align 8, !mcsema_real_eip !39
  %158 = add i64 %RBP_val.36, -88
  %159 = inttoptr i64 %158 to i64*
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %XSI, align 8, !mcsema_real_eip !40
  %161 = load i32, i32* %152, align 4, !mcsema_real_eip !41
  %162 = zext i32 %161 to i64, !mcsema_real_eip !41
  store i64 %162, i64* %R8, align 8, !mcsema_real_eip !41
  %163 = load i64, i64* %156, align 8, !mcsema_real_eip !42
  store i64 %163, i64* %R9, align 8, !mcsema_real_eip !42
  %164 = load i64, i64* %159, align 8, !mcsema_real_eip !43
  store i64 %164, i64* %R10, align 8, !mcsema_real_eip !43
  %165 = add i64 %RBP_val.36, -104, !mcsema_real_eip !44
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !44
  store i64 %160, i64* %166, align 8, !mcsema_real_eip !44
  %RCX_val.46 = load i64, i64* %XCX, align 8
  store i64 %RCX_val.46, i64* %XSI, align 8, !mcsema_real_eip !45
  %RBP_val.47 = load i64, i64* %XBP, align 8
  %167 = add i64 %RBP_val.47, -104, !mcsema_real_eip !46
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !46
  %169 = load i64, i64* %168, align 8, !mcsema_real_eip !46
  store i64 %169, i64* %R11, align 8, !mcsema_real_eip !46
  %170 = add i64 %RBP_val.47, -112, !mcsema_real_eip !47
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !47
  store i64 %RCX_val.46, i64* %171, align 8, !mcsema_real_eip !47
  %R11_val.50 = load i64, i64* %R11, align 8, !mcsema_real_eip !48
  store i64 %R11_val.50, i64* %XCX, align 8, !mcsema_real_eip !48
  %RBP_val.51 = load i64, i64* %XBP, align 8, !mcsema_real_eip !49
  %172 = add i64 %RBP_val.51, -116, !mcsema_real_eip !49
  %R8D.52 = bitcast i64* %R8 to i32*, !mcsema_real_eip !49
  %R8D_val.53 = load i32, i32* %R8D.52, align 4, !mcsema_real_eip !49
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !49
  store i32 %R8D_val.53, i32* %173, align 4, !mcsema_real_eip !49
  %EAX_val.55 = load i32, i32* %EAX.12, align 4, !mcsema_real_eip !50
  %174 = zext i32 %EAX_val.55 to i64, !mcsema_real_eip !50
  store i64 %174, i64* %R8, align 8, !mcsema_real_eip !50
  %RBP_val.56 = load i64, i64* %XBP, align 8, !mcsema_real_eip !51
  %175 = add i64 %RBP_val.56, -128, !mcsema_real_eip !51
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !51
  %R9_val.57 = load i64, i64* %R9, align 8, !mcsema_real_eip !51
  store i64 %R9_val.57, i64* %176, align 8, !mcsema_real_eip !51
  %EAX_val.59 = load i32, i32* %EAX.12, align 4, !mcsema_real_eip !52
  %177 = zext i32 %EAX_val.59 to i64, !mcsema_real_eip !52
  store i64 %177, i64* %R9, align 8, !mcsema_real_eip !52
  %RBP_val.60 = load i64, i64* %XBP, align 8, !mcsema_real_eip !53
  %178 = add i64 %RBP_val.60, -116, !mcsema_real_eip !53
  %179 = inttoptr i64 %178 to i32*, !mcsema_real_eip !53
  %180 = load i32, i32* %179, align 4, !mcsema_real_eip !53
  %181 = zext i32 %180 to i64, !mcsema_real_eip !53
  store i64 %181, i64* %XAX, align 8, !mcsema_real_eip !53
  %182 = bitcast i64* %XSP to i32**
  %RSP_val.616 = load i32*, i32** %182, align 8
  store i32 %180, i32* %RSP_val.616, align 4, !mcsema_real_eip !54
  %RBP_val.64 = load i64, i64* %XBP, align 8, !mcsema_real_eip !55
  %183 = add i64 %RBP_val.64, -112, !mcsema_real_eip !55
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !55
  %185 = load i64, i64* %184, align 8, !mcsema_real_eip !55
  store i64 %185, i64* %XBX, align 8, !mcsema_real_eip !55
  %RSP_val.65 = load i64, i64* %XSP, align 8, !mcsema_real_eip !56
  %186 = add i64 %RSP_val.65, 8, !mcsema_real_eip !56
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !56
  store i64 %185, i64* %187, align 8, !mcsema_real_eip !56
  %RBP_val.67 = load i64, i64* %XBP, align 8, !mcsema_real_eip !57
  %188 = add i64 %RBP_val.67, -128, !mcsema_real_eip !57
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !57
  %190 = load i64, i64* %189, align 8, !mcsema_real_eip !57
  store i64 %190, i64* %R14, align 8, !mcsema_real_eip !57
  %RSP_val.68 = load i64, i64* %XSP, align 8, !mcsema_real_eip !58
  %191 = add i64 %RSP_val.68, 16, !mcsema_real_eip !58
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !58
  store i64 %190, i64* %192, align 8, !mcsema_real_eip !58
  %RSP_val.70 = load i64, i64* %XSP, align 8, !mcsema_real_eip !59
  %193 = add i64 %RSP_val.70, 24, !mcsema_real_eip !59
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !59
  %R10_val.71 = load i64, i64* %R10, align 8, !mcsema_real_eip !59
  store i64 %R10_val.71, i64* %194, align 8, !mcsema_real_eip !59
  %RSP_val.72 = load i64, i64* %XSP, align 8, !mcsema_real_eip !60
  %195 = add i64 %RSP_val.72, -8
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !60
  store i64 -4981261766360305936, i64* %196, align 8, !mcsema_real_eip !60
  store i64 %195, i64* %XSP, align 8, !mcsema_real_eip !60
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !60
  store i64 ptrtoint (%0* @data_0x261 to i64), i64* %XDI, align 8, !mcsema_real_eip !61
  %RBP_val.73 = load i64, i64* %XBP, align 8, !mcsema_real_eip !62
  %197 = add i64 %RBP_val.73, -96, !mcsema_real_eip !62
  %EAX_val.75 = load i32, i32* %EAX.12, align 4, !mcsema_real_eip !62
  %198 = inttoptr i64 %197 to i32*, !mcsema_real_eip !62
  store i32 %EAX_val.75, i32* %198, align 4, !mcsema_real_eip !62
  %RBP_val.76 = load i64, i64* %XBP, align 8, !mcsema_real_eip !63
  %199 = add i64 %RBP_val.76, -96, !mcsema_real_eip !63
  %200 = inttoptr i64 %199 to i32*, !mcsema_real_eip !63
  %201 = load i32, i32* %200, align 4, !mcsema_real_eip !63
  %202 = zext i32 %201 to i64, !mcsema_real_eip !63
  store i64 %202, i64* %XSI, align 8, !mcsema_real_eip !63
  %AL.77 = bitcast i64* %XAX to i8*, !mcsema_real_eip !64
  store i8 0, i8* %AL.77, align 1, !mcsema_real_eip !64
  %RDI_val.78 = load i64, i64* %XDI, align 8, !mcsema_real_eip !65
  %RDX_val.80 = load i64, i64* %XDX, align 8, !mcsema_real_eip !65
  %RCX_val.81 = load i64, i64* %XCX, align 8, !mcsema_real_eip !65
  %R8_val.82 = load i64, i64* %R8, align 8, !mcsema_real_eip !65
  %R9_val.83 = load i64, i64* %R9, align 8, !mcsema_real_eip !65
  %RSP_val.84 = load i64, i64* %XSP, align 8, !mcsema_real_eip !65
  %203 = inttoptr i64 %RSP_val.84 to i64*, !mcsema_real_eip !65
  %204 = load i64, i64* %203, align 8, !mcsema_real_eip !65
  %205 = add i64 %RSP_val.84, 8, !mcsema_real_eip !65
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !65
  %207 = load i64, i64* %206, align 8, !mcsema_real_eip !65
  %208 = add i64 %RSP_val.84, 16, !mcsema_real_eip !65
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !65
  %210 = load i64, i64* %209, align 8, !mcsema_real_eip !65
  %211 = add i64 %RSP_val.84, 24, !mcsema_real_eip !65
  %212 = inttoptr i64 %211 to i64*, !mcsema_real_eip !65
  %213 = load i64, i64* %212, align 8, !mcsema_real_eip !65
  %214 = add i64 %RSP_val.84, 32, !mcsema_real_eip !65
  %215 = inttoptr i64 %214 to i64*, !mcsema_real_eip !65
  %216 = load i64, i64* %215, align 8, !mcsema_real_eip !65
  %217 = add i64 %RSP_val.84, 40, !mcsema_real_eip !65
  %218 = inttoptr i64 %217 to i64*, !mcsema_real_eip !65
  %219 = load i64, i64* %218, align 8, !mcsema_real_eip !65
  %220 = add i64 %RSP_val.84, -8
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !65
  store i64 -2415393069852865332, i64* %221, align 8, !mcsema_real_eip !65
  store i64 %220, i64* %XSP, align 8, !mcsema_real_eip !65
  %222 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.78, i64 %202, i64 %RDX_val.80, i64 %RCX_val.81, i64 %R8_val.82, i64 %R9_val.83, i64 %204, i64 %207, i64 %210, i64 %213, i64 %216, i64 %219), !mcsema_real_eip !65
  store i64 %222, i64* %XAX, align 8, !mcsema_real_eip !65
  %RBP_val.86 = load i64, i64* %XBP, align 8
  %223 = add i64 %RBP_val.86, -96, !mcsema_real_eip !66
  %224 = inttoptr i64 %223 to i32*, !mcsema_real_eip !66
  %225 = load i32, i32* %224, align 4, !mcsema_real_eip !66
  %226 = zext i32 %225 to i64, !mcsema_real_eip !66
  store i64 %226, i64* %XSI, align 8, !mcsema_real_eip !66
  %227 = add i64 %RBP_val.86, -132, !mcsema_real_eip !67
  %228 = trunc i64 %222 to i32
  %229 = inttoptr i64 %227 to i32*, !mcsema_real_eip !67
  store i32 %228, i32* %229, align 4, !mcsema_real_eip !67
  %ESI.90 = bitcast i64* %XSI to i32*, !mcsema_real_eip !68
  %ESI_val.91 = load i32, i32* %ESI.90, align 4, !mcsema_real_eip !68
  %230 = zext i32 %ESI_val.91 to i64, !mcsema_real_eip !68
  store i64 %230, i64* %XAX, align 8, !mcsema_real_eip !68
  %RSP_val.92 = load i64, i64* %XSP, align 8, !mcsema_real_eip !69
  %231 = add i64 %RSP_val.92, 160, !mcsema_real_eip !69
  %232 = xor i64 %231, %RSP_val.92, !mcsema_real_eip !69
  %233 = and i64 %232, 16, !mcsema_real_eip !69
  %234 = icmp ne i64 %233, 0, !mcsema_real_eip !69
  store i1 %234, i1* %AF, align 1, !mcsema_real_eip !69
  %235 = icmp slt i64 %231, 0
  store i1 %235, i1* %SF, align 1, !mcsema_real_eip !69
  %236 = icmp eq i64 %231, 0, !mcsema_real_eip !69
  store i1 %236, i1* %ZF, align 1, !mcsema_real_eip !69
  %237 = xor i64 %RSP_val.92, -9223372036854775808, !mcsema_real_eip !69
  %238 = and i64 %232, %237, !mcsema_real_eip !69
  %239 = icmp slt i64 %238, 0
  store i1 %239, i1* %OF, align 1, !mcsema_real_eip !69
  %240 = trunc i64 %231 to i8, !mcsema_real_eip !69
  %241 = tail call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !69
  %242 = and i8 %241, 1
  %243 = icmp eq i8 %242, 0
  store i1 %243, i1* %PF, align 1, !mcsema_real_eip !69
  %244 = icmp ugt i64 %RSP_val.92, -161
  store i1 %244, i1* %CF, align 1, !mcsema_real_eip !69
  store i64 %231, i64* %XSP, align 8, !mcsema_real_eip !69
  %245 = inttoptr i64 %231 to i64*, !mcsema_real_eip !70
  %246 = load i64, i64* %245, align 8, !mcsema_real_eip !70
  store i64 %246, i64* %XBX, align 8, !mcsema_real_eip !70
  %247 = add i64 %RSP_val.92, 168, !mcsema_real_eip !70
  store i64 %247, i64* %XSP, align 8, !mcsema_real_eip !70
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !71
  %249 = load i64, i64* %248, align 8, !mcsema_real_eip !71
  store i64 %249, i64* %R14, align 8, !mcsema_real_eip !71
  %250 = add i64 %RSP_val.92, 176, !mcsema_real_eip !71
  store i64 %250, i64* %XSP, align 8, !mcsema_real_eip !71
  %251 = inttoptr i64 %250 to i64*, !mcsema_real_eip !72
  %252 = load i64, i64* %251, align 8, !mcsema_real_eip !72
  store i64 %252, i64* %XBP, align 8, !mcsema_real_eip !72
  %253 = add i64 %RSP_val.92, 184, !mcsema_real_eip !72
  store i64 %253, i64* %XSP, align 8, !mcsema_real_eip !72
  %254 = add i64 %RSP_val.92, 192, !mcsema_real_eip !73
  %255 = inttoptr i64 %253 to i64*, !mcsema_real_eip !73
  %256 = load i64, i64* %255, align 8, !mcsema_real_eip !73
  store i64 %256, i64* %XIP, align 8, !mcsema_real_eip !73
  store i64 %254, i64* %XSP, align 8, !mcsema_real_eip !73
  ret void, !mcsema_real_eip !73
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #1 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !74
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !74
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !74
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !74
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !74
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !74
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !74
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !74
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !74
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !74
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !74
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !74
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !74
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !74
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !74
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !74
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !74
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !74
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !74
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !74
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !74
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !74
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !74
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !74
  %RBP_val.112 = load i64, i64* %XBP, align 8, !mcsema_real_eip !74
  %RSP_val.113 = load i64, i64* %XSP, align 8, !mcsema_real_eip !74
  %1 = add i64 %RSP_val.113, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !74
  store i64 %RBP_val.112, i64* %2, align 8, !mcsema_real_eip !74
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !75
  %RBX_val.115 = load i64, i64* %XBX, align 8, !mcsema_real_eip !76
  %3 = add i64 %RSP_val.113, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !76
  store i64 %RBX_val.115, i64* %4, align 8, !mcsema_real_eip !76
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !76
  %RBP_val.117 = load i64, i64* %XBP, align 8
  %5 = add i64 %RBP_val.117, 40, !mcsema_real_eip !77
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !77
  %7 = load i64, i64* %6, align 8, !mcsema_real_eip !77
  store i64 %7, i64* %XAX, align 8, !mcsema_real_eip !77
  %8 = add i64 %RBP_val.117, 32, !mcsema_real_eip !78
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !78
  %10 = load i64, i64* %9, align 8, !mcsema_real_eip !78
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !78
  %11 = add i64 %RBP_val.117, 24, !mcsema_real_eip !79
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !79
  %13 = load i64, i64* %12, align 8, !mcsema_real_eip !79
  store i64 %13, i64* %R11, align 8, !mcsema_real_eip !79
  %14 = add i64 %RBP_val.117, 16, !mcsema_real_eip !80
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !80
  %16 = load i32, i32* %15, align 4, !mcsema_real_eip !80
  %17 = zext i32 %16 to i64, !mcsema_real_eip !80
  store i64 %17, i64* %XBX, align 8, !mcsema_real_eip !80
  %18 = add i64 %RBP_val.117, -12, !mcsema_real_eip !81
  %EDI.122 = bitcast i64* %XDI to i32*, !mcsema_real_eip !81
  %EDI_val.123 = load i32, i32* %EDI.122, align 4, !mcsema_real_eip !81
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !81
  store i32 %EDI_val.123, i32* %19, align 4, !mcsema_real_eip !81
  %RBP_val.124 = load i64, i64* %XBP, align 8, !mcsema_real_eip !82
  %20 = add i64 %RBP_val.124, -24, !mcsema_real_eip !82
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !82
  %RSI_val.125 = load i64, i64* %XSI, align 8, !mcsema_real_eip !82
  store i64 %RSI_val.125, i64* %21, align 8, !mcsema_real_eip !82
  %RBP_val.126 = load i64, i64* %XBP, align 8, !mcsema_real_eip !83
  %22 = add i64 %RBP_val.126, -32, !mcsema_real_eip !83
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !83
  %RDX_val.127 = load i64, i64* %XDX, align 8, !mcsema_real_eip !83
  store i64 %RDX_val.127, i64* %23, align 8, !mcsema_real_eip !83
  %RBP_val.128 = load i64, i64* %XBP, align 8, !mcsema_real_eip !84
  %24 = add i64 %RBP_val.128, -40, !mcsema_real_eip !84
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !84
  %RCX_val.129 = load i64, i64* %XCX, align 8, !mcsema_real_eip !84
  store i64 %RCX_val.129, i64* %25, align 8, !mcsema_real_eip !84
  %RBP_val.130 = load i64, i64* %XBP, align 8, !mcsema_real_eip !85
  %26 = add i64 %RBP_val.130, -44, !mcsema_real_eip !85
  %R8D.131 = bitcast i64* %R8 to i32*, !mcsema_real_eip !85
  %R8D_val.132 = load i32, i32* %R8D.131, align 4, !mcsema_real_eip !85
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !85
  store i32 %R8D_val.132, i32* %27, align 4, !mcsema_real_eip !85
  %RBP_val.133 = load i64, i64* %XBP, align 8, !mcsema_real_eip !86
  %28 = add i64 %RBP_val.133, -48, !mcsema_real_eip !86
  %R9D.134 = bitcast i64* %R9 to i32*, !mcsema_real_eip !86
  %R9D_val.135 = load i32, i32* %R9D.134, align 4, !mcsema_real_eip !86
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !86
  store i32 %R9D_val.135, i32* %29, align 4, !mcsema_real_eip !86
  %RBP_val.136 = load i64, i64* %XBP, align 8, !mcsema_real_eip !87
  %30 = add i64 %RBP_val.136, -52, !mcsema_real_eip !87
  %EBX.137 = bitcast i64* %XBX to i32*, !mcsema_real_eip !87
  %EBX_val.138 = load i32, i32* %EBX.137, align 4, !mcsema_real_eip !87
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !87
  store i32 %EBX_val.138, i32* %31, align 4, !mcsema_real_eip !87
  %RBP_val.139 = load i64, i64* %XBP, align 8, !mcsema_real_eip !88
  %32 = add i64 %RBP_val.139, -64, !mcsema_real_eip !88
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !88
  %R11_val.140 = load i64, i64* %R11, align 8, !mcsema_real_eip !88
  store i64 %R11_val.140, i64* %33, align 8, !mcsema_real_eip !88
  %RBP_val.141 = load i64, i64* %XBP, align 8, !mcsema_real_eip !89
  %34 = add i64 %RBP_val.141, -72, !mcsema_real_eip !89
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !89
  %R10_val.142 = load i64, i64* %R10, align 8, !mcsema_real_eip !89
  store i64 %R10_val.142, i64* %35, align 8, !mcsema_real_eip !89
  %RBP_val.143 = load i64, i64* %XBP, align 8, !mcsema_real_eip !90
  %36 = add i64 %RBP_val.143, -80, !mcsema_real_eip !90
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !90
  %RAX_val.144 = load i64, i64* %XAX, align 8, !mcsema_real_eip !90
  store i64 %RAX_val.144, i64* %37, align 8, !mcsema_real_eip !90
  %RBP_val.145 = load i64, i64* %XBP, align 8, !mcsema_real_eip !91
  %38 = add i64 %RBP_val.145, -84, !mcsema_real_eip !91
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !91
  store i32 0, i32* %39, align 4, !mcsema_real_eip !91
  %RBP_val.146 = load i64, i64* %XBP, align 8
  %40 = add i64 %RBP_val.146, -12, !mcsema_real_eip !92
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !92
  %42 = load i32, i32* %41, align 4, !mcsema_real_eip !92
  %43 = zext i32 %42 to i64, !mcsema_real_eip !92
  store i64 %43, i64* %XDI, align 8, !mcsema_real_eip !92
  %44 = add i64 %RBP_val.146, -84
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %45, align 4, !mcsema_real_eip !93
  %47 = add i32 %42, %46, !mcsema_real_eip !93
  %48 = xor i32 %47, %46, !mcsema_real_eip !93
  %49 = xor i32 %48, %42, !mcsema_real_eip !93
  %50 = and i32 %49, 16, !mcsema_real_eip !93
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !93
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !93
  %52 = icmp slt i32 %47, 0
  store i1 %52, i1* %SF, align 1, !mcsema_real_eip !93
  %53 = icmp eq i32 %47, 0, !mcsema_real_eip !93
  store i1 %53, i1* %ZF, align 1, !mcsema_real_eip !93
  %54 = xor i32 %46, -2147483648, !mcsema_real_eip !93
  %55 = xor i32 %54, %42, !mcsema_real_eip !93
  %56 = and i32 %48, %55, !mcsema_real_eip !93
  %57 = icmp slt i32 %56, 0
  store i1 %57, i1* %OF, align 1, !mcsema_real_eip !93
  %58 = trunc i32 %47 to i8, !mcsema_real_eip !93
  %59 = tail call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !93
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !93
  %62 = icmp ult i32 %47, %46, !mcsema_real_eip !93
  store i1 %62, i1* %CF, align 1, !mcsema_real_eip !93
  %63 = zext i32 %47 to i64, !mcsema_real_eip !93
  store i64 %63, i64* %XDI, align 8, !mcsema_real_eip !93
  store i32 %47, i32* %45, align 4, !mcsema_real_eip !94
  %RBP_val.153 = load i64, i64* %XBP, align 8, !mcsema_real_eip !95
  %64 = add i64 %RBP_val.153, -88, !mcsema_real_eip !95
  br label %block_0x51, !mcsema_real_eip !96

block_0x51:                                       ; preds = %block_0x5d, %entry
  %.sink.in = phi i64 [ %118, %block_0x5d ], [ %64, %entry ]
  %EAX_val.182.sink = phi i32 [ %121, %block_0x5d ], [ 0, %entry ]
  %65 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.182.sink, i32* %65, align 4
  %RBP_val.154 = load i64, i64* %XBP, align 8
  %66 = add i64 %RBP_val.154, -88
  %67 = inttoptr i64 %66 to i32*
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !96
  %69 = zext i32 %68 to i64, !mcsema_real_eip !96
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !96
  %70 = add i64 %RBP_val.154, -44, !mcsema_real_eip !97
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !97
  %72 = load i32, i32* %71, align 4, !mcsema_real_eip !97
  %73 = sub i32 %68, %72, !mcsema_real_eip !97
  %74 = xor i32 %73, %68, !mcsema_real_eip !97
  %75 = xor i32 %74, %72, !mcsema_real_eip !97
  %76 = and i32 %75, 16, !mcsema_real_eip !97
  %77 = icmp ne i32 %76, 0, !mcsema_real_eip !97
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !97
  %78 = trunc i32 %73 to i8, !mcsema_real_eip !97
  %79 = tail call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !97
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !97
  %82 = icmp eq i32 %73, 0, !mcsema_real_eip !97
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !97
  %83 = icmp slt i32 %73, 0
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !97
  %84 = icmp ult i32 %68, %72, !mcsema_real_eip !97
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !97
  %85 = xor i32 %72, %68, !mcsema_real_eip !97
  %86 = and i32 %74, %85, !mcsema_real_eip !97
  %87 = icmp slt i32 %86, 0
  store i1 %87, i1* %OF, align 1, !mcsema_real_eip !97
  %tmp = xor i1 %87, %83
  br i1 %tmp, label %block_0x5d, label %block_0x7c, !mcsema_real_eip !98

block_0x5d:                                       ; preds = %block_0x51
  %88 = add i64 %RBP_val.154, -24, !mcsema_real_eip !99
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !99
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %XAX, align 8, !mcsema_real_eip !99
  %91 = load i32, i32* %67, align 4, !mcsema_real_eip !100
  %92 = sext i32 %91 to i64, !mcsema_real_eip !100
  store i64 %92, i64* %XCX, align 8, !mcsema_real_eip !100
  %93 = shl nsw i64 %92, 2
  %94 = add i64 %90, %93, !mcsema_real_eip !101
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !101
  %96 = load i32, i32* %95, align 4, !mcsema_real_eip !101
  %97 = zext i32 %96 to i64, !mcsema_real_eip !101
  store i64 %97, i64* %XDX, align 8, !mcsema_real_eip !101
  %98 = add i64 %RBP_val.154, -84
  %99 = inttoptr i64 %98 to i32*
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !102
  %101 = add i32 %96, %100, !mcsema_real_eip !102
  %102 = xor i32 %101, %100, !mcsema_real_eip !102
  %103 = xor i32 %102, %96, !mcsema_real_eip !102
  %104 = and i32 %103, 16, !mcsema_real_eip !102
  %105 = icmp ne i32 %104, 0, !mcsema_real_eip !102
  store i1 %105, i1* %AF, align 1, !mcsema_real_eip !102
  %106 = icmp slt i32 %101, 0
  store i1 %106, i1* %SF, align 1, !mcsema_real_eip !102
  %107 = icmp eq i32 %101, 0, !mcsema_real_eip !102
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !102
  %108 = xor i32 %100, -2147483648, !mcsema_real_eip !102
  %109 = xor i32 %108, %96, !mcsema_real_eip !102
  %110 = and i32 %102, %109, !mcsema_real_eip !102
  %111 = icmp slt i32 %110, 0
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !102
  %112 = trunc i32 %101 to i8, !mcsema_real_eip !102
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !102
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF, align 1, !mcsema_real_eip !102
  %116 = icmp ult i32 %101, %100, !mcsema_real_eip !102
  store i1 %116, i1* %CF, align 1, !mcsema_real_eip !102
  %117 = zext i32 %101 to i64, !mcsema_real_eip !102
  store i64 %117, i64* %XDX, align 8, !mcsema_real_eip !102
  store i32 %101, i32* %99, align 4, !mcsema_real_eip !103
  %RBP_val.177 = load i64, i64* %XBP, align 8
  %118 = add i64 %RBP_val.177, -88
  %119 = inttoptr i64 %118 to i32*, !mcsema_real_eip !104
  %120 = load i32, i32* %119, align 4, !mcsema_real_eip !104
  %121 = add i32 %120, 1, !mcsema_real_eip !105
  %122 = xor i32 %121, %120, !mcsema_real_eip !105
  %123 = and i32 %122, 16, !mcsema_real_eip !105
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !105
  store i1 %124, i1* %AF, align 1, !mcsema_real_eip !105
  %125 = icmp slt i32 %121, 0
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !105
  %126 = icmp eq i32 %121, 0, !mcsema_real_eip !105
  store i1 %126, i1* %ZF, align 1, !mcsema_real_eip !105
  %127 = xor i32 %120, -2147483648, !mcsema_real_eip !105
  %128 = and i32 %122, %127, !mcsema_real_eip !105
  %129 = icmp slt i32 %128, 0
  store i1 %129, i1* %OF, align 1, !mcsema_real_eip !105
  %130 = trunc i32 %121 to i8, !mcsema_real_eip !105
  %131 = tail call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !105
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  store i1 %133, i1* %PF, align 1, !mcsema_real_eip !105
  %134 = icmp eq i32 %120, -1
  store i1 %134, i1* %CF, align 1, !mcsema_real_eip !105
  %135 = zext i32 %121 to i64, !mcsema_real_eip !105
  store i64 %135, i64* %XAX, align 8, !mcsema_real_eip !105
  br label %block_0x51, !mcsema_real_eip !106

block_0x7c:                                       ; preds = %block_0x51
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !74
  %136 = add i64 %RBP_val.154, -32, !mcsema_real_eip !107
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !107
  %138 = load i64, i64* %137, align 8, !mcsema_real_eip !107
  store i64 %138, i64* %XAX, align 8, !mcsema_real_eip !107
  %139 = inttoptr i64 %138 to i32*, !mcsema_real_eip !108
  %140 = load i32, i32* %139, align 4, !mcsema_real_eip !108
  %141 = zext i32 %140 to i64, !mcsema_real_eip !108
  store i64 %141, i64* %XCX, align 8, !mcsema_real_eip !108
  %142 = add i64 %RBP_val.154, -84
  %143 = inttoptr i64 %142 to i32*
  %144 = load i32, i32* %143, align 4, !mcsema_real_eip !109
  %145 = add i32 %140, %144, !mcsema_real_eip !109
  %146 = xor i32 %145, %144, !mcsema_real_eip !109
  %147 = xor i32 %146, %140, !mcsema_real_eip !109
  %148 = and i32 %147, 16, !mcsema_real_eip !109
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !109
  store i1 %149, i1* %AF, align 1, !mcsema_real_eip !109
  %150 = icmp slt i32 %145, 0
  store i1 %150, i1* %SF, align 1, !mcsema_real_eip !109
  %151 = icmp eq i32 %145, 0, !mcsema_real_eip !109
  store i1 %151, i1* %ZF, align 1, !mcsema_real_eip !109
  %152 = xor i32 %144, -2147483648, !mcsema_real_eip !109
  %153 = xor i32 %152, %140, !mcsema_real_eip !109
  %154 = and i32 %146, %153, !mcsema_real_eip !109
  %155 = icmp slt i32 %154, 0
  store i1 %155, i1* %OF, align 1, !mcsema_real_eip !109
  %156 = trunc i32 %145 to i8, !mcsema_real_eip !109
  %157 = tail call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !109
  %158 = and i8 %157, 1
  %159 = icmp eq i8 %158, 0
  store i1 %159, i1* %PF, align 1, !mcsema_real_eip !109
  %160 = icmp ult i32 %145, %144, !mcsema_real_eip !109
  store i1 %160, i1* %CF, align 1, !mcsema_real_eip !109
  %161 = zext i32 %145 to i64, !mcsema_real_eip !109
  store i64 %161, i64* %XCX, align 8, !mcsema_real_eip !109
  store i32 %145, i32* %143, align 4, !mcsema_real_eip !110
  %RBP_val.166 = load i64, i64* %XBP, align 8, !mcsema_real_eip !111
  %162 = add i64 %RBP_val.166, -92, !mcsema_real_eip !111
  br label %block_0x8f, !mcsema_real_eip !99

block_0x8f:                                       ; preds = %block_0x9b, %block_0x7c
  %.sink4.in = phi i64 [ %216, %block_0x9b ], [ %162, %block_0x7c ]
  %EAX_val.210.sink = phi i32 [ %219, %block_0x9b ], [ 0, %block_0x7c ]
  %163 = inttoptr i64 %.sink4.in to i32*
  store i32 %EAX_val.210.sink, i32* %163, align 4
  %RBP_val.183 = load i64, i64* %XBP, align 8
  %164 = add i64 %RBP_val.183, -92
  %165 = inttoptr i64 %164 to i32*
  %166 = load i32, i32* %165, align 4, !mcsema_real_eip !112
  %167 = zext i32 %166 to i64, !mcsema_real_eip !112
  store i64 %167, i64* %XAX, align 8, !mcsema_real_eip !112
  %168 = add i64 %RBP_val.183, -48, !mcsema_real_eip !113
  %169 = inttoptr i64 %168 to i32*, !mcsema_real_eip !113
  %170 = load i32, i32* %169, align 4, !mcsema_real_eip !113
  %171 = sub i32 %166, %170, !mcsema_real_eip !113
  %172 = xor i32 %171, %166, !mcsema_real_eip !113
  %173 = xor i32 %172, %170, !mcsema_real_eip !113
  %174 = and i32 %173, 16, !mcsema_real_eip !113
  %175 = icmp ne i32 %174, 0, !mcsema_real_eip !113
  store i1 %175, i1* %AF, align 1, !mcsema_real_eip !113
  %176 = trunc i32 %171 to i8, !mcsema_real_eip !113
  %177 = tail call i8 @llvm.ctpop.i8(i8 %176), !mcsema_real_eip !113
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  store i1 %179, i1* %PF, align 1, !mcsema_real_eip !113
  %180 = icmp eq i32 %171, 0, !mcsema_real_eip !113
  store i1 %180, i1* %ZF, align 1, !mcsema_real_eip !113
  %181 = icmp slt i32 %171, 0
  store i1 %181, i1* %SF, align 1, !mcsema_real_eip !113
  %182 = icmp ult i32 %166, %170, !mcsema_real_eip !113
  store i1 %182, i1* %CF, align 1, !mcsema_real_eip !113
  %183 = xor i32 %170, %166, !mcsema_real_eip !113
  %184 = and i32 %172, %183, !mcsema_real_eip !113
  %185 = icmp slt i32 %184, 0
  store i1 %185, i1* %OF, align 1, !mcsema_real_eip !113
  %tmp11 = xor i1 %185, %181
  br i1 %tmp11, label %block_0x9b, label %block_0xba, !mcsema_real_eip !114

block_0x9b:                                       ; preds = %block_0x8f
  %186 = add i64 %RBP_val.183, -40, !mcsema_real_eip !115
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !115
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %XAX, align 8, !mcsema_real_eip !115
  %189 = load i32, i32* %165, align 4, !mcsema_real_eip !116
  %190 = sext i32 %189 to i64, !mcsema_real_eip !116
  store i64 %190, i64* %XCX, align 8, !mcsema_real_eip !116
  %191 = shl nsw i64 %190, 2
  %192 = add i64 %188, %191, !mcsema_real_eip !117
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !117
  %194 = load i32, i32* %193, align 4, !mcsema_real_eip !117
  %195 = zext i32 %194 to i64, !mcsema_real_eip !117
  store i64 %195, i64* %XDX, align 8, !mcsema_real_eip !117
  %196 = add i64 %RBP_val.183, -84
  %197 = inttoptr i64 %196 to i32*
  %198 = load i32, i32* %197, align 4, !mcsema_real_eip !118
  %199 = add i32 %194, %198, !mcsema_real_eip !118
  %200 = xor i32 %199, %198, !mcsema_real_eip !118
  %201 = xor i32 %200, %194, !mcsema_real_eip !118
  %202 = and i32 %201, 16, !mcsema_real_eip !118
  %203 = icmp ne i32 %202, 0, !mcsema_real_eip !118
  store i1 %203, i1* %AF, align 1, !mcsema_real_eip !118
  %204 = icmp slt i32 %199, 0
  store i1 %204, i1* %SF, align 1, !mcsema_real_eip !118
  %205 = icmp eq i32 %199, 0, !mcsema_real_eip !118
  store i1 %205, i1* %ZF, align 1, !mcsema_real_eip !118
  %206 = xor i32 %198, -2147483648, !mcsema_real_eip !118
  %207 = xor i32 %206, %194, !mcsema_real_eip !118
  %208 = and i32 %200, %207, !mcsema_real_eip !118
  %209 = icmp slt i32 %208, 0
  store i1 %209, i1* %OF, align 1, !mcsema_real_eip !118
  %210 = trunc i32 %199 to i8, !mcsema_real_eip !118
  %211 = tail call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !118
  %212 = and i8 %211, 1
  %213 = icmp eq i8 %212, 0
  store i1 %213, i1* %PF, align 1, !mcsema_real_eip !118
  %214 = icmp ult i32 %199, %198, !mcsema_real_eip !118
  store i1 %214, i1* %CF, align 1, !mcsema_real_eip !118
  %215 = zext i32 %199 to i64, !mcsema_real_eip !118
  store i64 %215, i64* %XDX, align 8, !mcsema_real_eip !118
  store i32 %199, i32* %197, align 4, !mcsema_real_eip !119
  %RBP_val.205 = load i64, i64* %XBP, align 8
  %216 = add i64 %RBP_val.205, -92
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !120
  %218 = load i32, i32* %217, align 4, !mcsema_real_eip !120
  %219 = add i32 %218, 1, !mcsema_real_eip !121
  %220 = xor i32 %219, %218, !mcsema_real_eip !121
  %221 = and i32 %220, 16, !mcsema_real_eip !121
  %222 = icmp ne i32 %221, 0, !mcsema_real_eip !121
  store i1 %222, i1* %AF, align 1, !mcsema_real_eip !121
  %223 = icmp slt i32 %219, 0
  store i1 %223, i1* %SF, align 1, !mcsema_real_eip !121
  %224 = icmp eq i32 %219, 0, !mcsema_real_eip !121
  store i1 %224, i1* %ZF, align 1, !mcsema_real_eip !121
  %225 = xor i32 %218, -2147483648, !mcsema_real_eip !121
  %226 = and i32 %220, %225, !mcsema_real_eip !121
  %227 = icmp slt i32 %226, 0
  store i1 %227, i1* %OF, align 1, !mcsema_real_eip !121
  %228 = trunc i32 %219 to i8, !mcsema_real_eip !121
  %229 = tail call i8 @llvm.ctpop.i8(i8 %228), !mcsema_real_eip !121
  %230 = and i8 %229, 1
  %231 = icmp eq i8 %230, 0
  store i1 %231, i1* %PF, align 1, !mcsema_real_eip !121
  %232 = icmp eq i32 %218, -1
  store i1 %232, i1* %CF, align 1, !mcsema_real_eip !121
  %233 = zext i32 %219 to i64, !mcsema_real_eip !121
  store i64 %233, i64* %XAX, align 8, !mcsema_real_eip !121
  br label %block_0x8f, !mcsema_real_eip !122

block_0xba:                                       ; preds = %block_0x8f
  %234 = add i64 %RBP_val.183, -52, !mcsema_real_eip !123
  %235 = inttoptr i64 %234 to i32*, !mcsema_real_eip !123
  %236 = load i32, i32* %235, align 4, !mcsema_real_eip !123
  %237 = zext i32 %236 to i64, !mcsema_real_eip !123
  store i64 %237, i64* %XAX, align 8, !mcsema_real_eip !123
  %238 = add i64 %RBP_val.183, -84
  %239 = inttoptr i64 %238 to i32*
  %240 = load i32, i32* %239, align 4, !mcsema_real_eip !124
  %241 = add i32 %236, %240, !mcsema_real_eip !124
  %242 = xor i32 %241, %240, !mcsema_real_eip !124
  %243 = xor i32 %242, %236, !mcsema_real_eip !124
  %244 = and i32 %243, 16, !mcsema_real_eip !124
  %245 = icmp ne i32 %244, 0, !mcsema_real_eip !124
  store i1 %245, i1* %AF, align 1, !mcsema_real_eip !124
  %246 = icmp slt i32 %241, 0
  store i1 %246, i1* %SF, align 1, !mcsema_real_eip !124
  %247 = icmp eq i32 %241, 0, !mcsema_real_eip !124
  store i1 %247, i1* %ZF, align 1, !mcsema_real_eip !124
  %248 = xor i32 %240, -2147483648, !mcsema_real_eip !124
  %249 = xor i32 %248, %236, !mcsema_real_eip !124
  %250 = and i32 %242, %249, !mcsema_real_eip !124
  %251 = icmp slt i32 %250, 0
  store i1 %251, i1* %OF, align 1, !mcsema_real_eip !124
  %252 = trunc i32 %241 to i8, !mcsema_real_eip !124
  %253 = tail call i8 @llvm.ctpop.i8(i8 %252), !mcsema_real_eip !124
  %254 = and i8 %253, 1
  %255 = icmp eq i8 %254, 0
  store i1 %255, i1* %PF, align 1, !mcsema_real_eip !124
  %256 = icmp ult i32 %241, %240, !mcsema_real_eip !124
  store i1 %256, i1* %CF, align 1, !mcsema_real_eip !124
  %257 = zext i32 %241 to i64, !mcsema_real_eip !124
  store i64 %257, i64* %XAX, align 8, !mcsema_real_eip !124
  store i32 %241, i32* %239, align 4, !mcsema_real_eip !125
  %RBP_val.194 = load i64, i64* %XBP, align 8, !mcsema_real_eip !126
  %258 = add i64 %RBP_val.194, -96, !mcsema_real_eip !126
  br label %block_0xca, !mcsema_real_eip !115

block_0xca:                                       ; preds = %block_0xd6, %block_0xba
  %.sink7.in = phi i64 [ %312, %block_0xd6 ], [ %258, %block_0xba ]
  %EAX_val.239.sink = phi i32 [ %315, %block_0xd6 ], [ 0, %block_0xba ]
  %259 = inttoptr i64 %.sink7.in to i32*
  store i32 %EAX_val.239.sink, i32* %259, align 4
  %RBP_val.211 = load i64, i64* %XBP, align 8
  %260 = add i64 %RBP_val.211, -96
  %261 = inttoptr i64 %260 to i32*
  %262 = load i32, i32* %261, align 4, !mcsema_real_eip !127
  %263 = zext i32 %262 to i64, !mcsema_real_eip !127
  store i64 %263, i64* %XAX, align 8, !mcsema_real_eip !127
  %264 = add i64 %RBP_val.211, -44, !mcsema_real_eip !128
  %265 = inttoptr i64 %264 to i32*, !mcsema_real_eip !128
  %266 = load i32, i32* %265, align 4, !mcsema_real_eip !128
  %267 = sub i32 %262, %266, !mcsema_real_eip !128
  %268 = xor i32 %267, %262, !mcsema_real_eip !128
  %269 = xor i32 %268, %266, !mcsema_real_eip !128
  %270 = and i32 %269, 16, !mcsema_real_eip !128
  %271 = icmp ne i32 %270, 0, !mcsema_real_eip !128
  store i1 %271, i1* %AF, align 1, !mcsema_real_eip !128
  %272 = trunc i32 %267 to i8, !mcsema_real_eip !128
  %273 = tail call i8 @llvm.ctpop.i8(i8 %272), !mcsema_real_eip !128
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  store i1 %275, i1* %PF, align 1, !mcsema_real_eip !128
  %276 = icmp eq i32 %267, 0, !mcsema_real_eip !128
  store i1 %276, i1* %ZF, align 1, !mcsema_real_eip !128
  %277 = icmp slt i32 %267, 0
  store i1 %277, i1* %SF, align 1, !mcsema_real_eip !128
  %278 = icmp ult i32 %262, %266, !mcsema_real_eip !128
  store i1 %278, i1* %CF, align 1, !mcsema_real_eip !128
  %279 = xor i32 %266, %262, !mcsema_real_eip !128
  %280 = and i32 %268, %279, !mcsema_real_eip !128
  %281 = icmp slt i32 %280, 0
  store i1 %281, i1* %OF, align 1, !mcsema_real_eip !128
  %tmp12 = xor i1 %281, %277
  br i1 %tmp12, label %block_0xd6, label %block_0xf5, !mcsema_real_eip !129

block_0xd6:                                       ; preds = %block_0xca
  %282 = add i64 %RBP_val.211, -64, !mcsema_real_eip !130
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !130
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %XAX, align 8, !mcsema_real_eip !130
  %285 = load i32, i32* %261, align 4, !mcsema_real_eip !131
  %286 = sext i32 %285 to i64, !mcsema_real_eip !131
  store i64 %286, i64* %XCX, align 8, !mcsema_real_eip !131
  %287 = shl nsw i64 %286, 2
  %288 = add i64 %284, %287, !mcsema_real_eip !132
  %289 = inttoptr i64 %288 to i32*, !mcsema_real_eip !132
  %290 = load i32, i32* %289, align 4, !mcsema_real_eip !132
  %291 = zext i32 %290 to i64, !mcsema_real_eip !132
  store i64 %291, i64* %XDX, align 8, !mcsema_real_eip !132
  %292 = add i64 %RBP_val.211, -84
  %293 = inttoptr i64 %292 to i32*
  %294 = load i32, i32* %293, align 4, !mcsema_real_eip !133
  %295 = add i32 %290, %294, !mcsema_real_eip !133
  %296 = xor i32 %295, %294, !mcsema_real_eip !133
  %297 = xor i32 %296, %290, !mcsema_real_eip !133
  %298 = and i32 %297, 16, !mcsema_real_eip !133
  %299 = icmp ne i32 %298, 0, !mcsema_real_eip !133
  store i1 %299, i1* %AF, align 1, !mcsema_real_eip !133
  %300 = icmp slt i32 %295, 0
  store i1 %300, i1* %SF, align 1, !mcsema_real_eip !133
  %301 = icmp eq i32 %295, 0, !mcsema_real_eip !133
  store i1 %301, i1* %ZF, align 1, !mcsema_real_eip !133
  %302 = xor i32 %294, -2147483648, !mcsema_real_eip !133
  %303 = xor i32 %302, %290, !mcsema_real_eip !133
  %304 = and i32 %296, %303, !mcsema_real_eip !133
  %305 = icmp slt i32 %304, 0
  store i1 %305, i1* %OF, align 1, !mcsema_real_eip !133
  %306 = trunc i32 %295 to i8, !mcsema_real_eip !133
  %307 = tail call i8 @llvm.ctpop.i8(i8 %306), !mcsema_real_eip !133
  %308 = and i8 %307, 1
  %309 = icmp eq i8 %308, 0
  store i1 %309, i1* %PF, align 1, !mcsema_real_eip !133
  %310 = icmp ult i32 %295, %294, !mcsema_real_eip !133
  store i1 %310, i1* %CF, align 1, !mcsema_real_eip !133
  %311 = zext i32 %295 to i64, !mcsema_real_eip !133
  store i64 %311, i64* %XDX, align 8, !mcsema_real_eip !133
  store i32 %295, i32* %293, align 4, !mcsema_real_eip !134
  %RBP_val.234 = load i64, i64* %XBP, align 8
  %312 = add i64 %RBP_val.234, -96
  %313 = inttoptr i64 %312 to i32*, !mcsema_real_eip !135
  %314 = load i32, i32* %313, align 4, !mcsema_real_eip !135
  %315 = add i32 %314, 1, !mcsema_real_eip !136
  %316 = xor i32 %315, %314, !mcsema_real_eip !136
  %317 = and i32 %316, 16, !mcsema_real_eip !136
  %318 = icmp ne i32 %317, 0, !mcsema_real_eip !136
  store i1 %318, i1* %AF, align 1, !mcsema_real_eip !136
  %319 = icmp slt i32 %315, 0
  store i1 %319, i1* %SF, align 1, !mcsema_real_eip !136
  %320 = icmp eq i32 %315, 0, !mcsema_real_eip !136
  store i1 %320, i1* %ZF, align 1, !mcsema_real_eip !136
  %321 = xor i32 %314, -2147483648, !mcsema_real_eip !136
  %322 = and i32 %316, %321, !mcsema_real_eip !136
  %323 = icmp slt i32 %322, 0
  store i1 %323, i1* %OF, align 1, !mcsema_real_eip !136
  %324 = trunc i32 %315 to i8, !mcsema_real_eip !136
  %325 = tail call i8 @llvm.ctpop.i8(i8 %324), !mcsema_real_eip !136
  %326 = and i8 %325, 1
  %327 = icmp eq i8 %326, 0
  store i1 %327, i1* %PF, align 1, !mcsema_real_eip !136
  %328 = icmp eq i32 %314, -1
  store i1 %328, i1* %CF, align 1, !mcsema_real_eip !136
  %329 = zext i32 %315 to i64, !mcsema_real_eip !136
  store i64 %329, i64* %XAX, align 8, !mcsema_real_eip !136
  br label %block_0xca, !mcsema_real_eip !137

block_0xf5:                                       ; preds = %block_0xca
  %330 = add i64 %RBP_val.211, -72, !mcsema_real_eip !138
  %331 = inttoptr i64 %330 to i64*, !mcsema_real_eip !138
  %332 = load i64, i64* %331, align 8, !mcsema_real_eip !138
  store i64 %332, i64* %XAX, align 8, !mcsema_real_eip !138
  %333 = inttoptr i64 %332 to i32*, !mcsema_real_eip !139
  %334 = load i32, i32* %333, align 4, !mcsema_real_eip !139
  %335 = zext i32 %334 to i64, !mcsema_real_eip !139
  store i64 %335, i64* %XCX, align 8, !mcsema_real_eip !139
  %336 = add i64 %RBP_val.211, -84
  %337 = inttoptr i64 %336 to i32*
  %338 = load i32, i32* %337, align 4, !mcsema_real_eip !140
  %339 = add i32 %334, %338, !mcsema_real_eip !140
  %340 = xor i32 %339, %338, !mcsema_real_eip !140
  %341 = xor i32 %340, %334, !mcsema_real_eip !140
  %342 = and i32 %341, 16, !mcsema_real_eip !140
  %343 = icmp ne i32 %342, 0, !mcsema_real_eip !140
  store i1 %343, i1* %AF, align 1, !mcsema_real_eip !140
  %344 = icmp slt i32 %339, 0
  store i1 %344, i1* %SF, align 1, !mcsema_real_eip !140
  %345 = icmp eq i32 %339, 0, !mcsema_real_eip !140
  store i1 %345, i1* %ZF, align 1, !mcsema_real_eip !140
  %346 = xor i32 %338, -2147483648, !mcsema_real_eip !140
  %347 = xor i32 %346, %334, !mcsema_real_eip !140
  %348 = and i32 %340, %347, !mcsema_real_eip !140
  %349 = icmp slt i32 %348, 0
  store i1 %349, i1* %OF, align 1, !mcsema_real_eip !140
  %350 = trunc i32 %339 to i8, !mcsema_real_eip !140
  %351 = tail call i8 @llvm.ctpop.i8(i8 %350), !mcsema_real_eip !140
  %352 = and i8 %351, 1
  %353 = icmp eq i8 %352, 0
  store i1 %353, i1* %PF, align 1, !mcsema_real_eip !140
  %354 = icmp ult i32 %339, %338, !mcsema_real_eip !140
  store i1 %354, i1* %CF, align 1, !mcsema_real_eip !140
  %355 = zext i32 %339 to i64, !mcsema_real_eip !140
  store i64 %355, i64* %XCX, align 8, !mcsema_real_eip !140
  store i32 %339, i32* %337, align 4, !mcsema_real_eip !141
  %RBP_val.223 = load i64, i64* %XBP, align 8, !mcsema_real_eip !142
  %356 = add i64 %RBP_val.223, -100, !mcsema_real_eip !142
  br label %block_0x108, !mcsema_real_eip !130

block_0x108:                                      ; preds = %block_0x114, %block_0xf5
  %.sink10.in = phi i64 [ %410, %block_0x114 ], [ %356, %block_0xf5 ]
  %EAX_val.263.sink = phi i32 [ %413, %block_0x114 ], [ 0, %block_0xf5 ]
  %357 = inttoptr i64 %.sink10.in to i32*
  store i32 %EAX_val.263.sink, i32* %357, align 4
  %RBP_val.240 = load i64, i64* %XBP, align 8
  %358 = add i64 %RBP_val.240, -100
  %359 = inttoptr i64 %358 to i32*
  %360 = load i32, i32* %359, align 4, !mcsema_real_eip !143
  %361 = zext i32 %360 to i64, !mcsema_real_eip !143
  store i64 %361, i64* %XAX, align 8, !mcsema_real_eip !143
  %362 = add i64 %RBP_val.240, -48, !mcsema_real_eip !144
  %363 = inttoptr i64 %362 to i32*, !mcsema_real_eip !144
  %364 = load i32, i32* %363, align 4, !mcsema_real_eip !144
  %365 = sub i32 %360, %364, !mcsema_real_eip !144
  %366 = xor i32 %365, %360, !mcsema_real_eip !144
  %367 = xor i32 %366, %364, !mcsema_real_eip !144
  %368 = and i32 %367, 16, !mcsema_real_eip !144
  %369 = icmp ne i32 %368, 0, !mcsema_real_eip !144
  store i1 %369, i1* %AF, align 1, !mcsema_real_eip !144
  %370 = trunc i32 %365 to i8, !mcsema_real_eip !144
  %371 = tail call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !144
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  store i1 %373, i1* %PF, align 1, !mcsema_real_eip !144
  %374 = icmp eq i32 %365, 0, !mcsema_real_eip !144
  store i1 %374, i1* %ZF, align 1, !mcsema_real_eip !144
  %375 = icmp slt i32 %365, 0
  store i1 %375, i1* %SF, align 1, !mcsema_real_eip !144
  %376 = icmp ult i32 %360, %364, !mcsema_real_eip !144
  store i1 %376, i1* %CF, align 1, !mcsema_real_eip !144
  %377 = xor i32 %364, %360, !mcsema_real_eip !144
  %378 = and i32 %366, %377, !mcsema_real_eip !144
  %379 = icmp slt i32 %378, 0
  store i1 %379, i1* %OF, align 1, !mcsema_real_eip !144
  %tmp13 = xor i1 %379, %375
  %380 = add i64 %RBP_val.240, -84
  %381 = inttoptr i64 %380 to i32*
  br i1 %tmp13, label %block_0x114, label %block_0x133, !mcsema_real_eip !145

block_0x114:                                      ; preds = %block_0x108
  %382 = add i64 %RBP_val.240, -80, !mcsema_real_eip !146
  %383 = inttoptr i64 %382 to i64*, !mcsema_real_eip !146
  %384 = load i64, i64* %383, align 8, !mcsema_real_eip !146
  store i64 %384, i64* %XAX, align 8, !mcsema_real_eip !146
  %385 = load i32, i32* %359, align 4, !mcsema_real_eip !147
  %386 = sext i32 %385 to i64, !mcsema_real_eip !147
  store i64 %386, i64* %XCX, align 8, !mcsema_real_eip !147
  %387 = shl nsw i64 %386, 2
  %388 = add i64 %387, %384, !mcsema_real_eip !148
  %389 = inttoptr i64 %388 to i32*, !mcsema_real_eip !148
  %390 = load i32, i32* %389, align 4, !mcsema_real_eip !148
  %391 = zext i32 %390 to i64, !mcsema_real_eip !148
  store i64 %391, i64* %XDX, align 8, !mcsema_real_eip !148
  %392 = load i32, i32* %381, align 4, !mcsema_real_eip !149
  %393 = add i32 %390, %392, !mcsema_real_eip !149
  %394 = xor i32 %393, %392, !mcsema_real_eip !149
  %395 = xor i32 %394, %390, !mcsema_real_eip !149
  %396 = and i32 %395, 16, !mcsema_real_eip !149
  %397 = icmp ne i32 %396, 0, !mcsema_real_eip !149
  store i1 %397, i1* %AF, align 1, !mcsema_real_eip !149
  %398 = icmp slt i32 %393, 0
  store i1 %398, i1* %SF, align 1, !mcsema_real_eip !149
  %399 = icmp eq i32 %393, 0, !mcsema_real_eip !149
  store i1 %399, i1* %ZF, align 1, !mcsema_real_eip !149
  %400 = xor i32 %392, -2147483648, !mcsema_real_eip !149
  %401 = xor i32 %400, %390, !mcsema_real_eip !149
  %402 = and i32 %394, %401, !mcsema_real_eip !149
  %403 = icmp slt i32 %402, 0
  store i1 %403, i1* %OF, align 1, !mcsema_real_eip !149
  %404 = trunc i32 %393 to i8, !mcsema_real_eip !149
  %405 = tail call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !149
  %406 = and i8 %405, 1
  %407 = icmp eq i8 %406, 0
  store i1 %407, i1* %PF, align 1, !mcsema_real_eip !149
  %408 = icmp ult i32 %393, %392, !mcsema_real_eip !149
  store i1 %408, i1* %CF, align 1, !mcsema_real_eip !149
  %409 = zext i32 %393 to i64, !mcsema_real_eip !149
  store i64 %409, i64* %XDX, align 8, !mcsema_real_eip !149
  store i32 %393, i32* %381, align 4, !mcsema_real_eip !150
  %RBP_val.258 = load i64, i64* %XBP, align 8
  %410 = add i64 %RBP_val.258, -100
  %411 = inttoptr i64 %410 to i32*, !mcsema_real_eip !151
  %412 = load i32, i32* %411, align 4, !mcsema_real_eip !151
  %413 = add i32 %412, 1, !mcsema_real_eip !152
  %414 = xor i32 %413, %412, !mcsema_real_eip !152
  %415 = and i32 %414, 16, !mcsema_real_eip !152
  %416 = icmp ne i32 %415, 0, !mcsema_real_eip !152
  store i1 %416, i1* %AF, align 1, !mcsema_real_eip !152
  %417 = icmp slt i32 %413, 0
  store i1 %417, i1* %SF, align 1, !mcsema_real_eip !152
  %418 = icmp eq i32 %413, 0, !mcsema_real_eip !152
  store i1 %418, i1* %ZF, align 1, !mcsema_real_eip !152
  %419 = xor i32 %412, -2147483648, !mcsema_real_eip !152
  %420 = and i32 %414, %419, !mcsema_real_eip !152
  %421 = icmp slt i32 %420, 0
  store i1 %421, i1* %OF, align 1, !mcsema_real_eip !152
  %422 = trunc i32 %413 to i8, !mcsema_real_eip !152
  %423 = tail call i8 @llvm.ctpop.i8(i8 %422), !mcsema_real_eip !152
  %424 = and i8 %423, 1
  %425 = icmp eq i8 %424, 0
  store i1 %425, i1* %PF, align 1, !mcsema_real_eip !152
  %426 = icmp eq i32 %412, -1
  store i1 %426, i1* %CF, align 1, !mcsema_real_eip !152
  %427 = zext i32 %413 to i64, !mcsema_real_eip !152
  store i64 %427, i64* %XAX, align 8, !mcsema_real_eip !152
  br label %block_0x108, !mcsema_real_eip !153

block_0x133:                                      ; preds = %block_0x108
  %428 = load i32, i32* %381, align 4, !mcsema_real_eip !154
  %429 = zext i32 %428 to i64, !mcsema_real_eip !154
  store i64 %429, i64* %XAX, align 8, !mcsema_real_eip !154
  %RSP_val.245 = load i64, i64* %XSP, align 8, !mcsema_real_eip !155
  %430 = inttoptr i64 %RSP_val.245 to i64*, !mcsema_real_eip !155
  %431 = load i64, i64* %430, align 8, !mcsema_real_eip !155
  store i64 %431, i64* %XBX, align 8, !mcsema_real_eip !155
  %432 = add i64 %RSP_val.245, 8, !mcsema_real_eip !155
  store i64 %432, i64* %XSP, align 8, !mcsema_real_eip !155
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !156
  %434 = load i64, i64* %433, align 8, !mcsema_real_eip !156
  store i64 %434, i64* %XBP, align 8, !mcsema_real_eip !156
  %435 = add i64 %RSP_val.245, 16, !mcsema_real_eip !156
  store i64 %435, i64* %XSP, align 8, !mcsema_real_eip !156
  %436 = add i64 %RSP_val.245, 24, !mcsema_real_eip !157
  %437 = inttoptr i64 %435 to i64*, !mcsema_real_eip !157
  %438 = load i64, i64* %437, align 8, !mcsema_real_eip !157
  store i64 %438, i64* %XIP, align 8, !mcsema_real_eip !157
  store i64 %436, i64* %XSP, align 8, !mcsema_real_eip !157
  ret void, !mcsema_real_eip !157
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
!2 = !{i64 320}
!3 = !{i64 321}
!4 = !{i64 324}
!5 = !{i64 326}
!6 = !{i64 327}
!7 = !{i64 334}
!8 = !{i64 341}
!9 = !{i64 348}
!10 = !{i64 355}
!11 = !{i64 359}
!12 = !{i64 365}
!13 = !{i64 368}
!14 = !{i64 371}
!15 = !{i64 375}
!16 = !{i64 379}
!17 = !{i64 382}
!18 = !{i64 388}
!19 = !{i64 393}
!20 = !{i64 398}
!21 = !{i64 400}
!22 = !{i64 404}
!23 = !{i64 408}
!24 = !{i64 413}
!25 = !{i64 417}
!26 = !{i64 424}
!27 = !{i64 428}
!28 = !{i64 434}
!29 = !{i64 437}
!30 = !{i64 440}
!31 = !{i64 444}
!32 = !{i64 448}
!33 = !{i64 451}
!34 = !{i64 454}
!35 = !{i64 460}
!36 = !{i64 465}
!37 = !{i64 470}
!38 = !{i64 474}
!39 = !{i64 477}
!40 = !{i64 481}
!41 = !{i64 485}
!42 = !{i64 489}
!43 = !{i64 493}
!44 = !{i64 497}
!45 = !{i64 501}
!46 = !{i64 504}
!47 = !{i64 508}
!48 = !{i64 512}
!49 = !{i64 515}
!50 = !{i64 519}
!51 = !{i64 522}
!52 = !{i64 526}
!53 = !{i64 529}
!54 = !{i64 532}
!55 = !{i64 535}
!56 = !{i64 539}
!57 = !{i64 544}
!58 = !{i64 548}
!59 = !{i64 553}
!60 = !{i64 558}
!61 = !{i64 563}
!62 = !{i64 573}
!63 = !{i64 576}
!64 = !{i64 579}
!65 = !{i64 581}
!66 = !{i64 586}
!67 = !{i64 589}
!68 = !{i64 595}
!69 = !{i64 597}
!70 = !{i64 604}
!71 = !{i64 605}
!72 = !{i64 607}
!73 = !{i64 608}
!74 = !{i64 0}
!75 = !{i64 1}
!76 = !{i64 4}
!77 = !{i64 5}
!78 = !{i64 9}
!79 = !{i64 13}
!80 = !{i64 17}
!81 = !{i64 20}
!82 = !{i64 23}
!83 = !{i64 27}
!84 = !{i64 31}
!85 = !{i64 35}
!86 = !{i64 39}
!87 = !{i64 43}
!88 = !{i64 46}
!89 = !{i64 50}
!90 = !{i64 54}
!91 = !{i64 58}
!92 = !{i64 65}
!93 = !{i64 68}
!94 = !{i64 71}
!95 = !{i64 74}
!96 = !{i64 81}
!97 = !{i64 84}
!98 = !{i64 87}
!99 = !{i64 93}
!100 = !{i64 97}
!101 = !{i64 101}
!102 = !{i64 104}
!103 = !{i64 107}
!104 = !{i64 110}
!105 = !{i64 113}
!106 = !{i64 119}
!107 = !{i64 124}
!108 = !{i64 128}
!109 = !{i64 130}
!110 = !{i64 133}
!111 = !{i64 136}
!112 = !{i64 143}
!113 = !{i64 146}
!114 = !{i64 149}
!115 = !{i64 155}
!116 = !{i64 159}
!117 = !{i64 163}
!118 = !{i64 166}
!119 = !{i64 169}
!120 = !{i64 172}
!121 = !{i64 175}
!122 = !{i64 181}
!123 = !{i64 186}
!124 = !{i64 189}
!125 = !{i64 192}
!126 = !{i64 195}
!127 = !{i64 202}
!128 = !{i64 205}
!129 = !{i64 208}
!130 = !{i64 214}
!131 = !{i64 218}
!132 = !{i64 222}
!133 = !{i64 225}
!134 = !{i64 228}
!135 = !{i64 231}
!136 = !{i64 234}
!137 = !{i64 240}
!138 = !{i64 245}
!139 = !{i64 249}
!140 = !{i64 251}
!141 = !{i64 254}
!142 = !{i64 257}
!143 = !{i64 264}
!144 = !{i64 267}
!145 = !{i64 270}
!146 = !{i64 276}
!147 = !{i64 280}
!148 = !{i64 284}
!149 = !{i64 287}
!150 = !{i64 290}
!151 = !{i64 293}
!152 = !{i64 296}
!153 = !{i64 302}
!154 = !{i64 307}
!155 = !{i64 310}
!156 = !{i64 311}
!157 = !{i64 312}
