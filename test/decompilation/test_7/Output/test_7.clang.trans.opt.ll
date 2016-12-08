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
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !9
  store i32 0, i32* %25, align 4, !mcsema_real_eip !9
  %EAX.12 = bitcast i64* %XAX to i32*
  br label %block_0x163, !mcsema_real_eip !10

block_0x163:                                      ; preds = %block_0x16d, %entry
  %RBP_val.11 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %26 = add i64 %RBP_val.11, -68, !mcsema_real_eip !10
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !10
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
  %RBP_val.30 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %64 = add i64 %RBP_val.30, -68, !mcsema_real_eip !16
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
  store i32 %67, i32* %65, align 4, !mcsema_real_eip !18
  br label %block_0x163, !mcsema_real_eip !19

block_0x189:                                      ; preds = %block_0x163
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  store i64 40, i64* %XAX, align 8, !mcsema_real_eip !20
  store i64 40, i64* %XDI, align 8, !mcsema_real_eip !21
  %82 = add i64 %RBP_val.11, -24, !mcsema_real_eip !22
  store i64 %82, i64* %XCX, align 8, !mcsema_real_eip !22
  %83 = add i64 %RBP_val.11, -80, !mcsema_real_eip !23
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !23
  store i64 %82, i64* %84, align 8, !mcsema_real_eip !23
  %RDI_val.17 = load i64, i64* %XDI, align 8, !mcsema_real_eip !24
  %RSP_val.18 = load i64, i64* %XSP, align 8, !mcsema_real_eip !24
  %85 = add i64 %RSP_val.18, -8
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !24
  store i64 -2415393069852865332, i64* %86, align 8, !mcsema_real_eip !24
  store i64 %85, i64* %XSP, align 8, !mcsema_real_eip !24
  %87 = tail call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.17), !mcsema_real_eip !24
  store i64 %87, i64* %XAX, align 8, !mcsema_real_eip !24
  %RBP_val.19 = load i64, i64* %XBP, align 8, !mcsema_real_eip !25
  %88 = add i64 %RBP_val.19, -88, !mcsema_real_eip !25
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !25
  store i64 %87, i64* %89, align 8, !mcsema_real_eip !25
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !26
  %90 = add i64 %RBP_val.21, -92, !mcsema_real_eip !26
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !26
  store i32 0, i32* %91, align 4, !mcsema_real_eip !26
  br label %block_0x1a8, !mcsema_real_eip !12

block_0x1a8:                                      ; preds = %block_0x1b2, %block_0x189
  %RBP_val.36 = load i64, i64* %XBP, align 8, !mcsema_real_eip !27
  %92 = add i64 %RBP_val.36, -92, !mcsema_real_eip !27
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !27
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !27
  %95 = add i32 %94, -10
  %96 = xor i32 %95, %94, !mcsema_real_eip !27
  %97 = and i32 %96, 16, !mcsema_real_eip !27
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !27
  store i1 %98, i1* %AF, align 1, !mcsema_real_eip !27
  %99 = trunc i32 %95 to i8, !mcsema_real_eip !27
  %100 = tail call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !27
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  store i1 %102, i1* %PF, align 1, !mcsema_real_eip !27
  %103 = icmp eq i32 %95, 0, !mcsema_real_eip !27
  store i1 %103, i1* %ZF, align 1, !mcsema_real_eip !27
  %104 = icmp slt i32 %95, 0
  store i1 %104, i1* %SF, align 1, !mcsema_real_eip !27
  %105 = icmp ult i32 %94, 10, !mcsema_real_eip !27
  store i1 %105, i1* %CF, align 1, !mcsema_real_eip !27
  %106 = and i32 %96, %94, !mcsema_real_eip !27
  %107 = icmp slt i32 %106, 0
  store i1 %107, i1* %OF, align 1, !mcsema_real_eip !27
  %tmp1 = xor i1 %104, %107
  %108 = add i64 %RBP_val.36, -88
  %109 = inttoptr i64 %108 to i64*
  br i1 %tmp1, label %block_0x1b2, label %block_0x1d1, !mcsema_real_eip !28

block_0x1b2:                                      ; preds = %block_0x1a8
  %110 = load i32, i32* %93, align 4, !mcsema_real_eip !29
  %111 = add i32 %110, 1, !mcsema_real_eip !30
  %112 = xor i32 %111, %110, !mcsema_real_eip !30
  %113 = and i32 %112, 16, !mcsema_real_eip !30
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !30
  store i1 %114, i1* %AF, align 1, !mcsema_real_eip !30
  %115 = icmp slt i32 %111, 0
  store i1 %115, i1* %SF, align 1, !mcsema_real_eip !30
  %116 = icmp eq i32 %111, 0, !mcsema_real_eip !30
  store i1 %116, i1* %ZF, align 1, !mcsema_real_eip !30
  %117 = xor i32 %110, -2147483648, !mcsema_real_eip !30
  %118 = and i32 %112, %117, !mcsema_real_eip !30
  %119 = icmp slt i32 %118, 0
  store i1 %119, i1* %OF, align 1, !mcsema_real_eip !30
  %120 = trunc i32 %111 to i8, !mcsema_real_eip !30
  %121 = tail call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !30
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  store i1 %123, i1* %PF, align 1, !mcsema_real_eip !30
  %124 = icmp eq i32 %110, -1
  store i1 %124, i1* %CF, align 1, !mcsema_real_eip !30
  %125 = zext i32 %111 to i64, !mcsema_real_eip !30
  store i64 %125, i64* %XAX, align 8, !mcsema_real_eip !30
  %126 = load i64, i64* %109, align 8, !mcsema_real_eip !31
  store i64 %126, i64* %XCX, align 8, !mcsema_real_eip !31
  %127 = load i32, i32* %93, align 4, !mcsema_real_eip !32
  %128 = sext i32 %127 to i64, !mcsema_real_eip !32
  store i64 %128, i64* %XDX, align 8, !mcsema_real_eip !32
  %129 = shl nsw i64 %128, 2
  %130 = add i64 %129, %126, !mcsema_real_eip !33
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !33
  store i32 %111, i32* %131, align 4, !mcsema_real_eip !33
  %RBP_val.106 = load i64, i64* %XBP, align 8, !mcsema_real_eip !34
  %132 = add i64 %RBP_val.106, -92, !mcsema_real_eip !34
  %133 = inttoptr i64 %132 to i32*, !mcsema_real_eip !34
  %134 = load i32, i32* %133, align 4, !mcsema_real_eip !34
  %135 = add i32 %134, 1, !mcsema_real_eip !35
  %136 = xor i32 %135, %134, !mcsema_real_eip !35
  %137 = and i32 %136, 16, !mcsema_real_eip !35
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !35
  store i1 %138, i1* %AF, align 1, !mcsema_real_eip !35
  %139 = icmp slt i32 %135, 0
  store i1 %139, i1* %SF, align 1, !mcsema_real_eip !35
  %140 = icmp eq i32 %135, 0, !mcsema_real_eip !35
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !35
  %141 = xor i32 %134, -2147483648, !mcsema_real_eip !35
  %142 = and i32 %136, %141, !mcsema_real_eip !35
  %143 = icmp slt i32 %142, 0
  store i1 %143, i1* %OF, align 1, !mcsema_real_eip !35
  %144 = trunc i32 %135 to i8, !mcsema_real_eip !35
  %145 = tail call i8 @llvm.ctpop.i8(i8 %144), !mcsema_real_eip !35
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  store i1 %147, i1* %PF, align 1, !mcsema_real_eip !35
  %148 = icmp eq i32 %134, -1
  store i1 %148, i1* %CF, align 1, !mcsema_real_eip !35
  %149 = zext i32 %135 to i64, !mcsema_real_eip !35
  store i64 %149, i64* %XAX, align 8, !mcsema_real_eip !35
  store i32 %135, i32* %133, align 4, !mcsema_real_eip !36
  br label %block_0x1a8, !mcsema_real_eip !37

block_0x1d1:                                      ; preds = %block_0x1a8
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !38
  %150 = add i64 %RBP_val.36, -64, !mcsema_real_eip !39
  store i64 %150, i64* %XCX, align 8, !mcsema_real_eip !39
  %151 = add i64 %RBP_val.36, -24, !mcsema_real_eip !40
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !40
  %153 = load i32, i32* %152, align 4, !mcsema_real_eip !40
  %154 = zext i32 %153 to i64, !mcsema_real_eip !40
  store i64 %154, i64* %XDI, align 8, !mcsema_real_eip !40
  %155 = add i64 %RBP_val.36, -80, !mcsema_real_eip !41
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !41
  %157 = load i64, i64* %156, align 8, !mcsema_real_eip !41
  store i64 %157, i64* %XDX, align 8, !mcsema_real_eip !41
  %158 = load i64, i64* %109, align 8, !mcsema_real_eip !42
  store i64 %158, i64* %XSI, align 8, !mcsema_real_eip !42
  %159 = load i32, i32* %152, align 4, !mcsema_real_eip !43
  %160 = zext i32 %159 to i64, !mcsema_real_eip !43
  store i64 %160, i64* %R8, align 8, !mcsema_real_eip !43
  %161 = load i64, i64* %156, align 8, !mcsema_real_eip !44
  store i64 %161, i64* %R9, align 8, !mcsema_real_eip !44
  %162 = load i64, i64* %109, align 8, !mcsema_real_eip !45
  store i64 %162, i64* %R10, align 8, !mcsema_real_eip !45
  %163 = add i64 %RBP_val.36, -104, !mcsema_real_eip !46
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !46
  store i64 %158, i64* %164, align 8, !mcsema_real_eip !46
  %RCX_val.46 = load i64, i64* %XCX, align 8, !mcsema_real_eip !47
  store i64 %RCX_val.46, i64* %XSI, align 8, !mcsema_real_eip !47
  %RBP_val.47 = load i64, i64* %XBP, align 8, !mcsema_real_eip !48
  %165 = add i64 %RBP_val.47, -104, !mcsema_real_eip !48
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !48
  %167 = load i64, i64* %166, align 8, !mcsema_real_eip !48
  store i64 %167, i64* %R11, align 8, !mcsema_real_eip !48
  %168 = add i64 %RBP_val.47, -112, !mcsema_real_eip !49
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !49
  store i64 %RCX_val.46, i64* %169, align 8, !mcsema_real_eip !49
  %R11_val.50 = load i64, i64* %R11, align 8, !mcsema_real_eip !50
  store i64 %R11_val.50, i64* %XCX, align 8, !mcsema_real_eip !50
  %RBP_val.51 = load i64, i64* %XBP, align 8, !mcsema_real_eip !51
  %170 = add i64 %RBP_val.51, -116, !mcsema_real_eip !51
  %R8D.52 = bitcast i64* %R8 to i32*, !mcsema_real_eip !51
  %R8D_val.53 = load i32, i32* %R8D.52, align 4, !mcsema_real_eip !51
  %171 = inttoptr i64 %170 to i32*, !mcsema_real_eip !51
  store i32 %R8D_val.53, i32* %171, align 4, !mcsema_real_eip !51
  %EAX_val.55 = load i32, i32* %EAX.12, align 4, !mcsema_real_eip !52
  %172 = zext i32 %EAX_val.55 to i64, !mcsema_real_eip !52
  store i64 %172, i64* %R8, align 8, !mcsema_real_eip !52
  %RBP_val.56 = load i64, i64* %XBP, align 8, !mcsema_real_eip !53
  %173 = add i64 %RBP_val.56, -128, !mcsema_real_eip !53
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !53
  %R9_val.57 = load i64, i64* %R9, align 8, !mcsema_real_eip !53
  store i64 %R9_val.57, i64* %174, align 8, !mcsema_real_eip !53
  %EAX_val.59 = load i32, i32* %EAX.12, align 4, !mcsema_real_eip !54
  %175 = zext i32 %EAX_val.59 to i64, !mcsema_real_eip !54
  store i64 %175, i64* %R9, align 8, !mcsema_real_eip !54
  %RBP_val.60 = load i64, i64* %XBP, align 8, !mcsema_real_eip !55
  %176 = add i64 %RBP_val.60, -116, !mcsema_real_eip !55
  %177 = inttoptr i64 %176 to i32*, !mcsema_real_eip !55
  %178 = load i32, i32* %177, align 4, !mcsema_real_eip !55
  %179 = zext i32 %178 to i64, !mcsema_real_eip !55
  store i64 %179, i64* %XAX, align 8, !mcsema_real_eip !55
  %180 = bitcast i64* %XSP to i32**
  %RSP_val.612 = load i32*, i32** %180, align 8
  store i32 %178, i32* %RSP_val.612, align 4, !mcsema_real_eip !56
  %RBP_val.64 = load i64, i64* %XBP, align 8, !mcsema_real_eip !57
  %181 = add i64 %RBP_val.64, -112, !mcsema_real_eip !57
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !57
  %183 = load i64, i64* %182, align 8, !mcsema_real_eip !57
  store i64 %183, i64* %XBX, align 8, !mcsema_real_eip !57
  %RSP_val.65 = load i64, i64* %XSP, align 8, !mcsema_real_eip !58
  %184 = add i64 %RSP_val.65, 8, !mcsema_real_eip !58
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !58
  store i64 %183, i64* %185, align 8, !mcsema_real_eip !58
  %RBP_val.67 = load i64, i64* %XBP, align 8, !mcsema_real_eip !59
  %186 = add i64 %RBP_val.67, -128, !mcsema_real_eip !59
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !59
  %188 = load i64, i64* %187, align 8, !mcsema_real_eip !59
  store i64 %188, i64* %R14, align 8, !mcsema_real_eip !59
  %RSP_val.68 = load i64, i64* %XSP, align 8, !mcsema_real_eip !60
  %189 = add i64 %RSP_val.68, 16, !mcsema_real_eip !60
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !60
  store i64 %188, i64* %190, align 8, !mcsema_real_eip !60
  %RSP_val.70 = load i64, i64* %XSP, align 8, !mcsema_real_eip !61
  %191 = add i64 %RSP_val.70, 24, !mcsema_real_eip !61
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !61
  %R10_val.71 = load i64, i64* %R10, align 8, !mcsema_real_eip !61
  store i64 %R10_val.71, i64* %192, align 8, !mcsema_real_eip !61
  %RSP_val.72 = load i64, i64* %XSP, align 8, !mcsema_real_eip !62
  %193 = add i64 %RSP_val.72, -8
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !62
  store i64 -4981261766360305936, i64* %194, align 8, !mcsema_real_eip !62
  store i64 %193, i64* %XSP, align 8, !mcsema_real_eip !62
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !62
  store i64 ptrtoint (%0* @data_0x261 to i64), i64* %XDI, align 8, !mcsema_real_eip !63
  %RBP_val.73 = load i64, i64* %XBP, align 8, !mcsema_real_eip !64
  %195 = add i64 %RBP_val.73, -96, !mcsema_real_eip !64
  %EAX_val.75 = load i32, i32* %EAX.12, align 4, !mcsema_real_eip !64
  %196 = inttoptr i64 %195 to i32*, !mcsema_real_eip !64
  store i32 %EAX_val.75, i32* %196, align 4, !mcsema_real_eip !64
  %RBP_val.76 = load i64, i64* %XBP, align 8, !mcsema_real_eip !65
  %197 = add i64 %RBP_val.76, -96, !mcsema_real_eip !65
  %198 = inttoptr i64 %197 to i32*, !mcsema_real_eip !65
  %199 = load i32, i32* %198, align 4, !mcsema_real_eip !65
  %200 = zext i32 %199 to i64, !mcsema_real_eip !65
  store i64 %200, i64* %XSI, align 8, !mcsema_real_eip !65
  %AL.77 = bitcast i64* %XAX to i8*, !mcsema_real_eip !66
  store i8 0, i8* %AL.77, align 1, !mcsema_real_eip !66
  %RDI_val.78 = load i64, i64* %XDI, align 8, !mcsema_real_eip !67
  %RDX_val.80 = load i64, i64* %XDX, align 8, !mcsema_real_eip !67
  %RCX_val.81 = load i64, i64* %XCX, align 8, !mcsema_real_eip !67
  %R8_val.82 = load i64, i64* %R8, align 8, !mcsema_real_eip !67
  %R9_val.83 = load i64, i64* %R9, align 8, !mcsema_real_eip !67
  %RSP_val.84 = load i64, i64* %XSP, align 8, !mcsema_real_eip !67
  %201 = inttoptr i64 %RSP_val.84 to i64*, !mcsema_real_eip !67
  %202 = load i64, i64* %201, align 8, !mcsema_real_eip !67
  %203 = add i64 %RSP_val.84, 8, !mcsema_real_eip !67
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !67
  %205 = load i64, i64* %204, align 8, !mcsema_real_eip !67
  %206 = add i64 %RSP_val.84, 16, !mcsema_real_eip !67
  %207 = inttoptr i64 %206 to i64*, !mcsema_real_eip !67
  %208 = load i64, i64* %207, align 8, !mcsema_real_eip !67
  %209 = add i64 %RSP_val.84, 24, !mcsema_real_eip !67
  %210 = inttoptr i64 %209 to i64*, !mcsema_real_eip !67
  %211 = load i64, i64* %210, align 8, !mcsema_real_eip !67
  %212 = add i64 %RSP_val.84, 32, !mcsema_real_eip !67
  %213 = inttoptr i64 %212 to i64*, !mcsema_real_eip !67
  %214 = load i64, i64* %213, align 8, !mcsema_real_eip !67
  %215 = add i64 %RSP_val.84, 40, !mcsema_real_eip !67
  %216 = inttoptr i64 %215 to i64*, !mcsema_real_eip !67
  %217 = load i64, i64* %216, align 8, !mcsema_real_eip !67
  %218 = add i64 %RSP_val.84, -8
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !67
  store i64 -2415393069852865332, i64* %219, align 8, !mcsema_real_eip !67
  store i64 %218, i64* %XSP, align 8, !mcsema_real_eip !67
  %220 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.78, i64 %200, i64 %RDX_val.80, i64 %RCX_val.81, i64 %R8_val.82, i64 %R9_val.83, i64 %202, i64 %205, i64 %208, i64 %211, i64 %214, i64 %217), !mcsema_real_eip !67
  store i64 %220, i64* %XAX, align 8, !mcsema_real_eip !67
  %RBP_val.86 = load i64, i64* %XBP, align 8, !mcsema_real_eip !68
  %221 = add i64 %RBP_val.86, -96, !mcsema_real_eip !68
  %222 = inttoptr i64 %221 to i32*, !mcsema_real_eip !68
  %223 = load i32, i32* %222, align 4, !mcsema_real_eip !68
  %224 = zext i32 %223 to i64, !mcsema_real_eip !68
  store i64 %224, i64* %XSI, align 8, !mcsema_real_eip !68
  %225 = add i64 %RBP_val.86, -132, !mcsema_real_eip !69
  %226 = trunc i64 %220 to i32
  %227 = inttoptr i64 %225 to i32*, !mcsema_real_eip !69
  store i32 %226, i32* %227, align 4, !mcsema_real_eip !69
  %ESI.90 = bitcast i64* %XSI to i32*, !mcsema_real_eip !70
  %ESI_val.91 = load i32, i32* %ESI.90, align 4, !mcsema_real_eip !70
  %228 = zext i32 %ESI_val.91 to i64, !mcsema_real_eip !70
  store i64 %228, i64* %XAX, align 8, !mcsema_real_eip !70
  %RSP_val.92 = load i64, i64* %XSP, align 8, !mcsema_real_eip !71
  %229 = add i64 %RSP_val.92, 160, !mcsema_real_eip !71
  %230 = xor i64 %229, %RSP_val.92, !mcsema_real_eip !71
  %231 = and i64 %230, 16, !mcsema_real_eip !71
  %232 = icmp ne i64 %231, 0, !mcsema_real_eip !71
  store i1 %232, i1* %AF, align 1, !mcsema_real_eip !71
  %233 = icmp slt i64 %229, 0
  store i1 %233, i1* %SF, align 1, !mcsema_real_eip !71
  %234 = icmp eq i64 %229, 0, !mcsema_real_eip !71
  store i1 %234, i1* %ZF, align 1, !mcsema_real_eip !71
  %235 = xor i64 %RSP_val.92, -9223372036854775808, !mcsema_real_eip !71
  %236 = and i64 %230, %235, !mcsema_real_eip !71
  %237 = icmp slt i64 %236, 0
  store i1 %237, i1* %OF, align 1, !mcsema_real_eip !71
  %238 = trunc i64 %229 to i8, !mcsema_real_eip !71
  %239 = tail call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !71
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  store i1 %241, i1* %PF, align 1, !mcsema_real_eip !71
  %242 = icmp ugt i64 %RSP_val.92, -161
  store i1 %242, i1* %CF, align 1, !mcsema_real_eip !71
  store i64 %229, i64* %XSP, align 8, !mcsema_real_eip !71
  %243 = inttoptr i64 %229 to i64*, !mcsema_real_eip !72
  %244 = load i64, i64* %243, align 8, !mcsema_real_eip !72
  store i64 %244, i64* %XBX, align 8, !mcsema_real_eip !72
  %245 = add i64 %RSP_val.92, 168, !mcsema_real_eip !72
  store i64 %245, i64* %XSP, align 8, !mcsema_real_eip !72
  %246 = inttoptr i64 %245 to i64*, !mcsema_real_eip !73
  %247 = load i64, i64* %246, align 8, !mcsema_real_eip !73
  store i64 %247, i64* %R14, align 8, !mcsema_real_eip !73
  %248 = add i64 %RSP_val.92, 176, !mcsema_real_eip !73
  store i64 %248, i64* %XSP, align 8, !mcsema_real_eip !73
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !74
  %250 = load i64, i64* %249, align 8, !mcsema_real_eip !74
  store i64 %250, i64* %XBP, align 8, !mcsema_real_eip !74
  %251 = add i64 %RSP_val.92, 184, !mcsema_real_eip !74
  store i64 %251, i64* %XSP, align 8, !mcsema_real_eip !74
  %252 = add i64 %RSP_val.92, 192, !mcsema_real_eip !75
  %253 = inttoptr i64 %251 to i64*, !mcsema_real_eip !75
  %254 = load i64, i64* %253, align 8, !mcsema_real_eip !75
  store i64 %254, i64* %XIP, align 8, !mcsema_real_eip !75
  store i64 %252, i64* %XSP, align 8, !mcsema_real_eip !75
  ret void, !mcsema_real_eip !75
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #1 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !76
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !76
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !76
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !76
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !76
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !76
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !76
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !76
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !76
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !76
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !76
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !76
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !76
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !76
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !76
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !76
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !76
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !76
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !76
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !76
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !76
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !76
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !76
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !76
  %RBP_val.112 = load i64, i64* %XBP, align 8, !mcsema_real_eip !76
  %RSP_val.113 = load i64, i64* %XSP, align 8, !mcsema_real_eip !76
  %1 = add i64 %RSP_val.113, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !76
  store i64 %RBP_val.112, i64* %2, align 8, !mcsema_real_eip !76
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !77
  %RBX_val.115 = load i64, i64* %XBX, align 8, !mcsema_real_eip !78
  %3 = add i64 %RSP_val.113, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !78
  store i64 %RBX_val.115, i64* %4, align 8, !mcsema_real_eip !78
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !78
  %RBP_val.117 = load i64, i64* %XBP, align 8, !mcsema_real_eip !79
  %5 = add i64 %RBP_val.117, 40, !mcsema_real_eip !79
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !79
  %7 = load i64, i64* %6, align 8, !mcsema_real_eip !79
  store i64 %7, i64* %XAX, align 8, !mcsema_real_eip !79
  %8 = add i64 %RBP_val.117, 32, !mcsema_real_eip !80
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !80
  %10 = load i64, i64* %9, align 8, !mcsema_real_eip !80
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !80
  %11 = add i64 %RBP_val.117, 24, !mcsema_real_eip !81
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !81
  %13 = load i64, i64* %12, align 8, !mcsema_real_eip !81
  store i64 %13, i64* %R11, align 8, !mcsema_real_eip !81
  %14 = add i64 %RBP_val.117, 16, !mcsema_real_eip !82
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !82
  %16 = load i32, i32* %15, align 4, !mcsema_real_eip !82
  %17 = zext i32 %16 to i64, !mcsema_real_eip !82
  store i64 %17, i64* %XBX, align 8, !mcsema_real_eip !82
  %18 = add i64 %RBP_val.117, -12, !mcsema_real_eip !83
  %EDI.122 = bitcast i64* %XDI to i32*, !mcsema_real_eip !83
  %EDI_val.123 = load i32, i32* %EDI.122, align 4, !mcsema_real_eip !83
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !83
  store i32 %EDI_val.123, i32* %19, align 4, !mcsema_real_eip !83
  %RBP_val.124 = load i64, i64* %XBP, align 8, !mcsema_real_eip !84
  %20 = add i64 %RBP_val.124, -24, !mcsema_real_eip !84
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !84
  %RSI_val.125 = load i64, i64* %XSI, align 8, !mcsema_real_eip !84
  store i64 %RSI_val.125, i64* %21, align 8, !mcsema_real_eip !84
  %RBP_val.126 = load i64, i64* %XBP, align 8, !mcsema_real_eip !85
  %22 = add i64 %RBP_val.126, -32, !mcsema_real_eip !85
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !85
  %RDX_val.127 = load i64, i64* %XDX, align 8, !mcsema_real_eip !85
  store i64 %RDX_val.127, i64* %23, align 8, !mcsema_real_eip !85
  %RBP_val.128 = load i64, i64* %XBP, align 8, !mcsema_real_eip !86
  %24 = add i64 %RBP_val.128, -40, !mcsema_real_eip !86
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !86
  %RCX_val.129 = load i64, i64* %XCX, align 8, !mcsema_real_eip !86
  store i64 %RCX_val.129, i64* %25, align 8, !mcsema_real_eip !86
  %RBP_val.130 = load i64, i64* %XBP, align 8, !mcsema_real_eip !87
  %26 = add i64 %RBP_val.130, -44, !mcsema_real_eip !87
  %R8D.131 = bitcast i64* %R8 to i32*, !mcsema_real_eip !87
  %R8D_val.132 = load i32, i32* %R8D.131, align 4, !mcsema_real_eip !87
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !87
  store i32 %R8D_val.132, i32* %27, align 4, !mcsema_real_eip !87
  %RBP_val.133 = load i64, i64* %XBP, align 8, !mcsema_real_eip !88
  %28 = add i64 %RBP_val.133, -48, !mcsema_real_eip !88
  %R9D.134 = bitcast i64* %R9 to i32*, !mcsema_real_eip !88
  %R9D_val.135 = load i32, i32* %R9D.134, align 4, !mcsema_real_eip !88
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !88
  store i32 %R9D_val.135, i32* %29, align 4, !mcsema_real_eip !88
  %RBP_val.136 = load i64, i64* %XBP, align 8, !mcsema_real_eip !89
  %30 = add i64 %RBP_val.136, -52, !mcsema_real_eip !89
  %EBX.137 = bitcast i64* %XBX to i32*, !mcsema_real_eip !89
  %EBX_val.138 = load i32, i32* %EBX.137, align 4, !mcsema_real_eip !89
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !89
  store i32 %EBX_val.138, i32* %31, align 4, !mcsema_real_eip !89
  %RBP_val.139 = load i64, i64* %XBP, align 8, !mcsema_real_eip !90
  %32 = add i64 %RBP_val.139, -64, !mcsema_real_eip !90
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !90
  %R11_val.140 = load i64, i64* %R11, align 8, !mcsema_real_eip !90
  store i64 %R11_val.140, i64* %33, align 8, !mcsema_real_eip !90
  %RBP_val.141 = load i64, i64* %XBP, align 8, !mcsema_real_eip !91
  %34 = add i64 %RBP_val.141, -72, !mcsema_real_eip !91
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !91
  %R10_val.142 = load i64, i64* %R10, align 8, !mcsema_real_eip !91
  store i64 %R10_val.142, i64* %35, align 8, !mcsema_real_eip !91
  %RBP_val.143 = load i64, i64* %XBP, align 8, !mcsema_real_eip !92
  %36 = add i64 %RBP_val.143, -80, !mcsema_real_eip !92
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !92
  %RAX_val.144 = load i64, i64* %XAX, align 8, !mcsema_real_eip !92
  store i64 %RAX_val.144, i64* %37, align 8, !mcsema_real_eip !92
  %RBP_val.145 = load i64, i64* %XBP, align 8, !mcsema_real_eip !93
  %38 = add i64 %RBP_val.145, -84, !mcsema_real_eip !93
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !93
  store i32 0, i32* %39, align 4, !mcsema_real_eip !93
  %RBP_val.146 = load i64, i64* %XBP, align 8, !mcsema_real_eip !94
  %40 = add i64 %RBP_val.146, -12, !mcsema_real_eip !94
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !94
  %42 = load i32, i32* %41, align 4, !mcsema_real_eip !94
  %43 = zext i32 %42 to i64, !mcsema_real_eip !94
  store i64 %43, i64* %XDI, align 8, !mcsema_real_eip !94
  %44 = add i64 %RBP_val.146, -84, !mcsema_real_eip !95
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !95
  %46 = load i32, i32* %45, align 4, !mcsema_real_eip !95
  %47 = add i32 %42, %46, !mcsema_real_eip !95
  %48 = xor i32 %47, %46, !mcsema_real_eip !95
  %49 = xor i32 %48, %42, !mcsema_real_eip !95
  %50 = and i32 %49, 16, !mcsema_real_eip !95
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !95
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !95
  %52 = icmp slt i32 %47, 0
  store i1 %52, i1* %SF, align 1, !mcsema_real_eip !95
  %53 = icmp eq i32 %47, 0, !mcsema_real_eip !95
  store i1 %53, i1* %ZF, align 1, !mcsema_real_eip !95
  %54 = xor i32 %46, -2147483648, !mcsema_real_eip !95
  %55 = xor i32 %54, %42, !mcsema_real_eip !95
  %56 = and i32 %48, %55, !mcsema_real_eip !95
  %57 = icmp slt i32 %56, 0
  store i1 %57, i1* %OF, align 1, !mcsema_real_eip !95
  %58 = trunc i32 %47 to i8, !mcsema_real_eip !95
  %59 = tail call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !95
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !95
  %62 = icmp ult i32 %47, %46, !mcsema_real_eip !95
  store i1 %62, i1* %CF, align 1, !mcsema_real_eip !95
  %63 = zext i32 %47 to i64, !mcsema_real_eip !95
  store i64 %63, i64* %XDI, align 8, !mcsema_real_eip !95
  store i32 %47, i32* %45, align 4, !mcsema_real_eip !96
  %RBP_val.153 = load i64, i64* %XBP, align 8, !mcsema_real_eip !97
  %64 = add i64 %RBP_val.153, -88, !mcsema_real_eip !97
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !97
  store i32 0, i32* %65, align 4, !mcsema_real_eip !97
  br label %block_0x51, !mcsema_real_eip !98

block_0x51:                                       ; preds = %block_0x5d, %entry
  %RBP_val.154 = load i64, i64* %XBP, align 8, !mcsema_real_eip !98
  %66 = add i64 %RBP_val.154, -88, !mcsema_real_eip !98
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !98
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !98
  %69 = zext i32 %68 to i64, !mcsema_real_eip !98
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !98
  %70 = add i64 %RBP_val.154, -44, !mcsema_real_eip !99
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !99
  %72 = load i32, i32* %71, align 4, !mcsema_real_eip !99
  %73 = sub i32 %68, %72, !mcsema_real_eip !99
  %74 = xor i32 %73, %68, !mcsema_real_eip !99
  %75 = xor i32 %74, %72, !mcsema_real_eip !99
  %76 = and i32 %75, 16, !mcsema_real_eip !99
  %77 = icmp ne i32 %76, 0, !mcsema_real_eip !99
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !99
  %78 = trunc i32 %73 to i8, !mcsema_real_eip !99
  %79 = tail call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !99
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !99
  %82 = icmp eq i32 %73, 0, !mcsema_real_eip !99
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !99
  %83 = icmp slt i32 %73, 0
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !99
  %84 = icmp ult i32 %68, %72, !mcsema_real_eip !99
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !99
  %85 = xor i32 %72, %68, !mcsema_real_eip !99
  %86 = and i32 %74, %85, !mcsema_real_eip !99
  %87 = icmp slt i32 %86, 0
  store i1 %87, i1* %OF, align 1, !mcsema_real_eip !99
  %tmp = xor i1 %83, %87
  %88 = add i64 %RBP_val.154, -84
  %89 = inttoptr i64 %88 to i32*
  br i1 %tmp, label %block_0x5d, label %block_0x7c, !mcsema_real_eip !100

block_0x5d:                                       ; preds = %block_0x51
  %90 = add i64 %RBP_val.154, -24, !mcsema_real_eip !101
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !101
  %92 = load i64, i64* %91, align 8, !mcsema_real_eip !101
  store i64 %92, i64* %XAX, align 8, !mcsema_real_eip !101
  %93 = load i32, i32* %67, align 4, !mcsema_real_eip !102
  %94 = sext i32 %93 to i64, !mcsema_real_eip !102
  store i64 %94, i64* %XCX, align 8, !mcsema_real_eip !102
  %95 = shl nsw i64 %94, 2
  %96 = add i64 %95, %92, !mcsema_real_eip !103
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !103
  %98 = load i32, i32* %97, align 4, !mcsema_real_eip !103
  %99 = zext i32 %98 to i64, !mcsema_real_eip !103
  store i64 %99, i64* %XDX, align 8, !mcsema_real_eip !103
  %100 = load i32, i32* %89, align 4, !mcsema_real_eip !104
  %101 = add i32 %98, %100, !mcsema_real_eip !104
  %102 = xor i32 %101, %100, !mcsema_real_eip !104
  %103 = xor i32 %102, %98, !mcsema_real_eip !104
  %104 = and i32 %103, 16, !mcsema_real_eip !104
  %105 = icmp ne i32 %104, 0, !mcsema_real_eip !104
  store i1 %105, i1* %AF, align 1, !mcsema_real_eip !104
  %106 = icmp slt i32 %101, 0
  store i1 %106, i1* %SF, align 1, !mcsema_real_eip !104
  %107 = icmp eq i32 %101, 0, !mcsema_real_eip !104
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !104
  %108 = xor i32 %100, -2147483648, !mcsema_real_eip !104
  %109 = xor i32 %108, %98, !mcsema_real_eip !104
  %110 = and i32 %102, %109, !mcsema_real_eip !104
  %111 = icmp slt i32 %110, 0
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !104
  %112 = trunc i32 %101 to i8, !mcsema_real_eip !104
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !104
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF, align 1, !mcsema_real_eip !104
  %116 = icmp ult i32 %101, %100, !mcsema_real_eip !104
  store i1 %116, i1* %CF, align 1, !mcsema_real_eip !104
  %117 = zext i32 %101 to i64, !mcsema_real_eip !104
  store i64 %117, i64* %XDX, align 8, !mcsema_real_eip !104
  store i32 %101, i32* %89, align 4, !mcsema_real_eip !105
  %RBP_val.177 = load i64, i64* %XBP, align 8, !mcsema_real_eip !106
  %118 = add i64 %RBP_val.177, -88, !mcsema_real_eip !106
  %119 = inttoptr i64 %118 to i32*, !mcsema_real_eip !106
  %120 = load i32, i32* %119, align 4, !mcsema_real_eip !106
  %121 = add i32 %120, 1, !mcsema_real_eip !107
  %122 = xor i32 %121, %120, !mcsema_real_eip !107
  %123 = and i32 %122, 16, !mcsema_real_eip !107
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !107
  store i1 %124, i1* %AF, align 1, !mcsema_real_eip !107
  %125 = icmp slt i32 %121, 0
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !107
  %126 = icmp eq i32 %121, 0, !mcsema_real_eip !107
  store i1 %126, i1* %ZF, align 1, !mcsema_real_eip !107
  %127 = xor i32 %120, -2147483648, !mcsema_real_eip !107
  %128 = and i32 %122, %127, !mcsema_real_eip !107
  %129 = icmp slt i32 %128, 0
  store i1 %129, i1* %OF, align 1, !mcsema_real_eip !107
  %130 = trunc i32 %121 to i8, !mcsema_real_eip !107
  %131 = tail call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !107
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  store i1 %133, i1* %PF, align 1, !mcsema_real_eip !107
  %134 = icmp eq i32 %120, -1
  store i1 %134, i1* %CF, align 1, !mcsema_real_eip !107
  %135 = zext i32 %121 to i64, !mcsema_real_eip !107
  store i64 %135, i64* %XAX, align 8, !mcsema_real_eip !107
  store i32 %121, i32* %119, align 4, !mcsema_real_eip !108
  br label %block_0x51, !mcsema_real_eip !109

block_0x7c:                                       ; preds = %block_0x51
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !76
  %136 = add i64 %RBP_val.154, -32, !mcsema_real_eip !110
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !110
  %138 = load i64, i64* %137, align 8, !mcsema_real_eip !110
  store i64 %138, i64* %XAX, align 8, !mcsema_real_eip !110
  %139 = inttoptr i64 %138 to i32*, !mcsema_real_eip !111
  %140 = load i32, i32* %139, align 4, !mcsema_real_eip !111
  %141 = zext i32 %140 to i64, !mcsema_real_eip !111
  store i64 %141, i64* %XCX, align 8, !mcsema_real_eip !111
  %142 = load i32, i32* %89, align 4, !mcsema_real_eip !112
  %143 = add i32 %140, %142, !mcsema_real_eip !112
  %144 = xor i32 %143, %142, !mcsema_real_eip !112
  %145 = xor i32 %144, %140, !mcsema_real_eip !112
  %146 = and i32 %145, 16, !mcsema_real_eip !112
  %147 = icmp ne i32 %146, 0, !mcsema_real_eip !112
  store i1 %147, i1* %AF, align 1, !mcsema_real_eip !112
  %148 = icmp slt i32 %143, 0
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !112
  %149 = icmp eq i32 %143, 0, !mcsema_real_eip !112
  store i1 %149, i1* %ZF, align 1, !mcsema_real_eip !112
  %150 = xor i32 %142, -2147483648, !mcsema_real_eip !112
  %151 = xor i32 %150, %140, !mcsema_real_eip !112
  %152 = and i32 %144, %151, !mcsema_real_eip !112
  %153 = icmp slt i32 %152, 0
  store i1 %153, i1* %OF, align 1, !mcsema_real_eip !112
  %154 = trunc i32 %143 to i8, !mcsema_real_eip !112
  %155 = tail call i8 @llvm.ctpop.i8(i8 %154), !mcsema_real_eip !112
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  store i1 %157, i1* %PF, align 1, !mcsema_real_eip !112
  %158 = icmp ult i32 %143, %142, !mcsema_real_eip !112
  store i1 %158, i1* %CF, align 1, !mcsema_real_eip !112
  %159 = zext i32 %143 to i64, !mcsema_real_eip !112
  store i64 %159, i64* %XCX, align 8, !mcsema_real_eip !112
  store i32 %143, i32* %89, align 4, !mcsema_real_eip !113
  %RBP_val.166 = load i64, i64* %XBP, align 8, !mcsema_real_eip !114
  %160 = add i64 %RBP_val.166, -92, !mcsema_real_eip !114
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !114
  store i32 0, i32* %161, align 4, !mcsema_real_eip !114
  br label %block_0x8f, !mcsema_real_eip !101

block_0x8f:                                       ; preds = %block_0x9b, %block_0x7c
  %RBP_val.183 = load i64, i64* %XBP, align 8, !mcsema_real_eip !115
  %162 = add i64 %RBP_val.183, -92, !mcsema_real_eip !115
  %163 = inttoptr i64 %162 to i32*, !mcsema_real_eip !115
  %164 = load i32, i32* %163, align 4, !mcsema_real_eip !115
  %165 = zext i32 %164 to i64, !mcsema_real_eip !115
  store i64 %165, i64* %XAX, align 8, !mcsema_real_eip !115
  %166 = add i64 %RBP_val.183, -48, !mcsema_real_eip !116
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !116
  %168 = load i32, i32* %167, align 4, !mcsema_real_eip !116
  %169 = sub i32 %164, %168, !mcsema_real_eip !116
  %170 = xor i32 %169, %164, !mcsema_real_eip !116
  %171 = xor i32 %170, %168, !mcsema_real_eip !116
  %172 = and i32 %171, 16, !mcsema_real_eip !116
  %173 = icmp ne i32 %172, 0, !mcsema_real_eip !116
  store i1 %173, i1* %AF, align 1, !mcsema_real_eip !116
  %174 = trunc i32 %169 to i8, !mcsema_real_eip !116
  %175 = tail call i8 @llvm.ctpop.i8(i8 %174), !mcsema_real_eip !116
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  store i1 %177, i1* %PF, align 1, !mcsema_real_eip !116
  %178 = icmp eq i32 %169, 0, !mcsema_real_eip !116
  store i1 %178, i1* %ZF, align 1, !mcsema_real_eip !116
  %179 = icmp slt i32 %169, 0
  store i1 %179, i1* %SF, align 1, !mcsema_real_eip !116
  %180 = icmp ult i32 %164, %168, !mcsema_real_eip !116
  store i1 %180, i1* %CF, align 1, !mcsema_real_eip !116
  %181 = xor i32 %168, %164, !mcsema_real_eip !116
  %182 = and i32 %170, %181, !mcsema_real_eip !116
  %183 = icmp slt i32 %182, 0
  store i1 %183, i1* %OF, align 1, !mcsema_real_eip !116
  %tmp1 = xor i1 %179, %183
  %184 = add i64 %RBP_val.183, -84
  %185 = inttoptr i64 %184 to i32*
  br i1 %tmp1, label %block_0x9b, label %block_0xba, !mcsema_real_eip !117

block_0x9b:                                       ; preds = %block_0x8f
  %186 = add i64 %RBP_val.183, -40, !mcsema_real_eip !118
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !118
  %188 = load i64, i64* %187, align 8, !mcsema_real_eip !118
  store i64 %188, i64* %XAX, align 8, !mcsema_real_eip !118
  %189 = load i32, i32* %163, align 4, !mcsema_real_eip !119
  %190 = sext i32 %189 to i64, !mcsema_real_eip !119
  store i64 %190, i64* %XCX, align 8, !mcsema_real_eip !119
  %191 = shl nsw i64 %190, 2
  %192 = add i64 %191, %188, !mcsema_real_eip !120
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !120
  %194 = load i32, i32* %193, align 4, !mcsema_real_eip !120
  %195 = zext i32 %194 to i64, !mcsema_real_eip !120
  store i64 %195, i64* %XDX, align 8, !mcsema_real_eip !120
  %196 = load i32, i32* %185, align 4, !mcsema_real_eip !121
  %197 = add i32 %194, %196, !mcsema_real_eip !121
  %198 = xor i32 %197, %196, !mcsema_real_eip !121
  %199 = xor i32 %198, %194, !mcsema_real_eip !121
  %200 = and i32 %199, 16, !mcsema_real_eip !121
  %201 = icmp ne i32 %200, 0, !mcsema_real_eip !121
  store i1 %201, i1* %AF, align 1, !mcsema_real_eip !121
  %202 = icmp slt i32 %197, 0
  store i1 %202, i1* %SF, align 1, !mcsema_real_eip !121
  %203 = icmp eq i32 %197, 0, !mcsema_real_eip !121
  store i1 %203, i1* %ZF, align 1, !mcsema_real_eip !121
  %204 = xor i32 %196, -2147483648, !mcsema_real_eip !121
  %205 = xor i32 %204, %194, !mcsema_real_eip !121
  %206 = and i32 %198, %205, !mcsema_real_eip !121
  %207 = icmp slt i32 %206, 0
  store i1 %207, i1* %OF, align 1, !mcsema_real_eip !121
  %208 = trunc i32 %197 to i8, !mcsema_real_eip !121
  %209 = tail call i8 @llvm.ctpop.i8(i8 %208), !mcsema_real_eip !121
  %210 = and i8 %209, 1
  %211 = icmp eq i8 %210, 0
  store i1 %211, i1* %PF, align 1, !mcsema_real_eip !121
  %212 = icmp ult i32 %197, %196, !mcsema_real_eip !121
  store i1 %212, i1* %CF, align 1, !mcsema_real_eip !121
  %213 = zext i32 %197 to i64, !mcsema_real_eip !121
  store i64 %213, i64* %XDX, align 8, !mcsema_real_eip !121
  store i32 %197, i32* %185, align 4, !mcsema_real_eip !122
  %RBP_val.205 = load i64, i64* %XBP, align 8, !mcsema_real_eip !123
  %214 = add i64 %RBP_val.205, -92, !mcsema_real_eip !123
  %215 = inttoptr i64 %214 to i32*, !mcsema_real_eip !123
  %216 = load i32, i32* %215, align 4, !mcsema_real_eip !123
  %217 = add i32 %216, 1, !mcsema_real_eip !124
  %218 = xor i32 %217, %216, !mcsema_real_eip !124
  %219 = and i32 %218, 16, !mcsema_real_eip !124
  %220 = icmp ne i32 %219, 0, !mcsema_real_eip !124
  store i1 %220, i1* %AF, align 1, !mcsema_real_eip !124
  %221 = icmp slt i32 %217, 0
  store i1 %221, i1* %SF, align 1, !mcsema_real_eip !124
  %222 = icmp eq i32 %217, 0, !mcsema_real_eip !124
  store i1 %222, i1* %ZF, align 1, !mcsema_real_eip !124
  %223 = xor i32 %216, -2147483648, !mcsema_real_eip !124
  %224 = and i32 %218, %223, !mcsema_real_eip !124
  %225 = icmp slt i32 %224, 0
  store i1 %225, i1* %OF, align 1, !mcsema_real_eip !124
  %226 = trunc i32 %217 to i8, !mcsema_real_eip !124
  %227 = tail call i8 @llvm.ctpop.i8(i8 %226), !mcsema_real_eip !124
  %228 = and i8 %227, 1
  %229 = icmp eq i8 %228, 0
  store i1 %229, i1* %PF, align 1, !mcsema_real_eip !124
  %230 = icmp eq i32 %216, -1
  store i1 %230, i1* %CF, align 1, !mcsema_real_eip !124
  %231 = zext i32 %217 to i64, !mcsema_real_eip !124
  store i64 %231, i64* %XAX, align 8, !mcsema_real_eip !124
  store i32 %217, i32* %215, align 4, !mcsema_real_eip !125
  br label %block_0x8f, !mcsema_real_eip !126

block_0xba:                                       ; preds = %block_0x8f
  %232 = add i64 %RBP_val.183, -52, !mcsema_real_eip !127
  %233 = inttoptr i64 %232 to i32*, !mcsema_real_eip !127
  %234 = load i32, i32* %233, align 4, !mcsema_real_eip !127
  %235 = zext i32 %234 to i64, !mcsema_real_eip !127
  store i64 %235, i64* %XAX, align 8, !mcsema_real_eip !127
  %236 = load i32, i32* %185, align 4, !mcsema_real_eip !128
  %237 = add i32 %234, %236, !mcsema_real_eip !128
  %238 = xor i32 %237, %236, !mcsema_real_eip !128
  %239 = xor i32 %238, %234, !mcsema_real_eip !128
  %240 = and i32 %239, 16, !mcsema_real_eip !128
  %241 = icmp ne i32 %240, 0, !mcsema_real_eip !128
  store i1 %241, i1* %AF, align 1, !mcsema_real_eip !128
  %242 = icmp slt i32 %237, 0
  store i1 %242, i1* %SF, align 1, !mcsema_real_eip !128
  %243 = icmp eq i32 %237, 0, !mcsema_real_eip !128
  store i1 %243, i1* %ZF, align 1, !mcsema_real_eip !128
  %244 = xor i32 %236, -2147483648, !mcsema_real_eip !128
  %245 = xor i32 %244, %234, !mcsema_real_eip !128
  %246 = and i32 %238, %245, !mcsema_real_eip !128
  %247 = icmp slt i32 %246, 0
  store i1 %247, i1* %OF, align 1, !mcsema_real_eip !128
  %248 = trunc i32 %237 to i8, !mcsema_real_eip !128
  %249 = tail call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !128
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  store i1 %251, i1* %PF, align 1, !mcsema_real_eip !128
  %252 = icmp ult i32 %237, %236, !mcsema_real_eip !128
  store i1 %252, i1* %CF, align 1, !mcsema_real_eip !128
  %253 = zext i32 %237 to i64, !mcsema_real_eip !128
  store i64 %253, i64* %XAX, align 8, !mcsema_real_eip !128
  store i32 %237, i32* %185, align 4, !mcsema_real_eip !129
  %RBP_val.194 = load i64, i64* %XBP, align 8, !mcsema_real_eip !130
  %254 = add i64 %RBP_val.194, -96, !mcsema_real_eip !130
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !130
  store i32 0, i32* %255, align 4, !mcsema_real_eip !130
  br label %block_0xca, !mcsema_real_eip !118

block_0xca:                                       ; preds = %block_0xd6, %block_0xba
  %RBP_val.211 = load i64, i64* %XBP, align 8, !mcsema_real_eip !131
  %256 = add i64 %RBP_val.211, -96, !mcsema_real_eip !131
  %257 = inttoptr i64 %256 to i32*, !mcsema_real_eip !131
  %258 = load i32, i32* %257, align 4, !mcsema_real_eip !131
  %259 = zext i32 %258 to i64, !mcsema_real_eip !131
  store i64 %259, i64* %XAX, align 8, !mcsema_real_eip !131
  %260 = add i64 %RBP_val.211, -44, !mcsema_real_eip !132
  %261 = inttoptr i64 %260 to i32*, !mcsema_real_eip !132
  %262 = load i32, i32* %261, align 4, !mcsema_real_eip !132
  %263 = sub i32 %258, %262, !mcsema_real_eip !132
  %264 = xor i32 %263, %258, !mcsema_real_eip !132
  %265 = xor i32 %264, %262, !mcsema_real_eip !132
  %266 = and i32 %265, 16, !mcsema_real_eip !132
  %267 = icmp ne i32 %266, 0, !mcsema_real_eip !132
  store i1 %267, i1* %AF, align 1, !mcsema_real_eip !132
  %268 = trunc i32 %263 to i8, !mcsema_real_eip !132
  %269 = tail call i8 @llvm.ctpop.i8(i8 %268), !mcsema_real_eip !132
  %270 = and i8 %269, 1
  %271 = icmp eq i8 %270, 0
  store i1 %271, i1* %PF, align 1, !mcsema_real_eip !132
  %272 = icmp eq i32 %263, 0, !mcsema_real_eip !132
  store i1 %272, i1* %ZF, align 1, !mcsema_real_eip !132
  %273 = icmp slt i32 %263, 0
  store i1 %273, i1* %SF, align 1, !mcsema_real_eip !132
  %274 = icmp ult i32 %258, %262, !mcsema_real_eip !132
  store i1 %274, i1* %CF, align 1, !mcsema_real_eip !132
  %275 = xor i32 %262, %258, !mcsema_real_eip !132
  %276 = and i32 %264, %275, !mcsema_real_eip !132
  %277 = icmp slt i32 %276, 0
  store i1 %277, i1* %OF, align 1, !mcsema_real_eip !132
  %tmp2 = xor i1 %273, %277
  %278 = add i64 %RBP_val.211, -84
  %279 = inttoptr i64 %278 to i32*
  br i1 %tmp2, label %block_0xd6, label %block_0xf5, !mcsema_real_eip !133

block_0xd6:                                       ; preds = %block_0xca
  %280 = add i64 %RBP_val.211, -64, !mcsema_real_eip !134
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !134
  %282 = load i64, i64* %281, align 8, !mcsema_real_eip !134
  store i64 %282, i64* %XAX, align 8, !mcsema_real_eip !134
  %283 = load i32, i32* %257, align 4, !mcsema_real_eip !135
  %284 = sext i32 %283 to i64, !mcsema_real_eip !135
  store i64 %284, i64* %XCX, align 8, !mcsema_real_eip !135
  %285 = shl nsw i64 %284, 2
  %286 = add i64 %285, %282, !mcsema_real_eip !136
  %287 = inttoptr i64 %286 to i32*, !mcsema_real_eip !136
  %288 = load i32, i32* %287, align 4, !mcsema_real_eip !136
  %289 = zext i32 %288 to i64, !mcsema_real_eip !136
  store i64 %289, i64* %XDX, align 8, !mcsema_real_eip !136
  %290 = load i32, i32* %279, align 4, !mcsema_real_eip !137
  %291 = add i32 %288, %290, !mcsema_real_eip !137
  %292 = xor i32 %291, %290, !mcsema_real_eip !137
  %293 = xor i32 %292, %288, !mcsema_real_eip !137
  %294 = and i32 %293, 16, !mcsema_real_eip !137
  %295 = icmp ne i32 %294, 0, !mcsema_real_eip !137
  store i1 %295, i1* %AF, align 1, !mcsema_real_eip !137
  %296 = icmp slt i32 %291, 0
  store i1 %296, i1* %SF, align 1, !mcsema_real_eip !137
  %297 = icmp eq i32 %291, 0, !mcsema_real_eip !137
  store i1 %297, i1* %ZF, align 1, !mcsema_real_eip !137
  %298 = xor i32 %290, -2147483648, !mcsema_real_eip !137
  %299 = xor i32 %298, %288, !mcsema_real_eip !137
  %300 = and i32 %292, %299, !mcsema_real_eip !137
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF, align 1, !mcsema_real_eip !137
  %302 = trunc i32 %291 to i8, !mcsema_real_eip !137
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !137
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF, align 1, !mcsema_real_eip !137
  %306 = icmp ult i32 %291, %290, !mcsema_real_eip !137
  store i1 %306, i1* %CF, align 1, !mcsema_real_eip !137
  %307 = zext i32 %291 to i64, !mcsema_real_eip !137
  store i64 %307, i64* %XDX, align 8, !mcsema_real_eip !137
  store i32 %291, i32* %279, align 4, !mcsema_real_eip !138
  %RBP_val.234 = load i64, i64* %XBP, align 8, !mcsema_real_eip !139
  %308 = add i64 %RBP_val.234, -96, !mcsema_real_eip !139
  %309 = inttoptr i64 %308 to i32*, !mcsema_real_eip !139
  %310 = load i32, i32* %309, align 4, !mcsema_real_eip !139
  %311 = add i32 %310, 1, !mcsema_real_eip !140
  %312 = xor i32 %311, %310, !mcsema_real_eip !140
  %313 = and i32 %312, 16, !mcsema_real_eip !140
  %314 = icmp ne i32 %313, 0, !mcsema_real_eip !140
  store i1 %314, i1* %AF, align 1, !mcsema_real_eip !140
  %315 = icmp slt i32 %311, 0
  store i1 %315, i1* %SF, align 1, !mcsema_real_eip !140
  %316 = icmp eq i32 %311, 0, !mcsema_real_eip !140
  store i1 %316, i1* %ZF, align 1, !mcsema_real_eip !140
  %317 = xor i32 %310, -2147483648, !mcsema_real_eip !140
  %318 = and i32 %312, %317, !mcsema_real_eip !140
  %319 = icmp slt i32 %318, 0
  store i1 %319, i1* %OF, align 1, !mcsema_real_eip !140
  %320 = trunc i32 %311 to i8, !mcsema_real_eip !140
  %321 = tail call i8 @llvm.ctpop.i8(i8 %320), !mcsema_real_eip !140
  %322 = and i8 %321, 1
  %323 = icmp eq i8 %322, 0
  store i1 %323, i1* %PF, align 1, !mcsema_real_eip !140
  %324 = icmp eq i32 %310, -1
  store i1 %324, i1* %CF, align 1, !mcsema_real_eip !140
  %325 = zext i32 %311 to i64, !mcsema_real_eip !140
  store i64 %325, i64* %XAX, align 8, !mcsema_real_eip !140
  store i32 %311, i32* %309, align 4, !mcsema_real_eip !141
  br label %block_0xca, !mcsema_real_eip !142

block_0xf5:                                       ; preds = %block_0xca
  %326 = add i64 %RBP_val.211, -72, !mcsema_real_eip !143
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !143
  %328 = load i64, i64* %327, align 8, !mcsema_real_eip !143
  store i64 %328, i64* %XAX, align 8, !mcsema_real_eip !143
  %329 = inttoptr i64 %328 to i32*, !mcsema_real_eip !144
  %330 = load i32, i32* %329, align 4, !mcsema_real_eip !144
  %331 = zext i32 %330 to i64, !mcsema_real_eip !144
  store i64 %331, i64* %XCX, align 8, !mcsema_real_eip !144
  %332 = load i32, i32* %279, align 4, !mcsema_real_eip !145
  %333 = add i32 %330, %332, !mcsema_real_eip !145
  %334 = xor i32 %333, %332, !mcsema_real_eip !145
  %335 = xor i32 %334, %330, !mcsema_real_eip !145
  %336 = and i32 %335, 16, !mcsema_real_eip !145
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !145
  store i1 %337, i1* %AF, align 1, !mcsema_real_eip !145
  %338 = icmp slt i32 %333, 0
  store i1 %338, i1* %SF, align 1, !mcsema_real_eip !145
  %339 = icmp eq i32 %333, 0, !mcsema_real_eip !145
  store i1 %339, i1* %ZF, align 1, !mcsema_real_eip !145
  %340 = xor i32 %332, -2147483648, !mcsema_real_eip !145
  %341 = xor i32 %340, %330, !mcsema_real_eip !145
  %342 = and i32 %334, %341, !mcsema_real_eip !145
  %343 = icmp slt i32 %342, 0
  store i1 %343, i1* %OF, align 1, !mcsema_real_eip !145
  %344 = trunc i32 %333 to i8, !mcsema_real_eip !145
  %345 = tail call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !145
  %346 = and i8 %345, 1
  %347 = icmp eq i8 %346, 0
  store i1 %347, i1* %PF, align 1, !mcsema_real_eip !145
  %348 = icmp ult i32 %333, %332, !mcsema_real_eip !145
  store i1 %348, i1* %CF, align 1, !mcsema_real_eip !145
  %349 = zext i32 %333 to i64, !mcsema_real_eip !145
  store i64 %349, i64* %XCX, align 8, !mcsema_real_eip !145
  store i32 %333, i32* %279, align 4, !mcsema_real_eip !146
  %RBP_val.223 = load i64, i64* %XBP, align 8, !mcsema_real_eip !147
  %350 = add i64 %RBP_val.223, -100, !mcsema_real_eip !147
  %351 = inttoptr i64 %350 to i32*, !mcsema_real_eip !147
  store i32 0, i32* %351, align 4, !mcsema_real_eip !147
  br label %block_0x108, !mcsema_real_eip !134

block_0x108:                                      ; preds = %block_0x114, %block_0xf5
  %RBP_val.240 = load i64, i64* %XBP, align 8, !mcsema_real_eip !148
  %352 = add i64 %RBP_val.240, -100, !mcsema_real_eip !148
  %353 = inttoptr i64 %352 to i32*, !mcsema_real_eip !148
  %354 = load i32, i32* %353, align 4, !mcsema_real_eip !148
  %355 = zext i32 %354 to i64, !mcsema_real_eip !148
  store i64 %355, i64* %XAX, align 8, !mcsema_real_eip !148
  %356 = add i64 %RBP_val.240, -48, !mcsema_real_eip !149
  %357 = inttoptr i64 %356 to i32*, !mcsema_real_eip !149
  %358 = load i32, i32* %357, align 4, !mcsema_real_eip !149
  %359 = sub i32 %354, %358, !mcsema_real_eip !149
  %360 = xor i32 %359, %354, !mcsema_real_eip !149
  %361 = xor i32 %360, %358, !mcsema_real_eip !149
  %362 = and i32 %361, 16, !mcsema_real_eip !149
  %363 = icmp ne i32 %362, 0, !mcsema_real_eip !149
  store i1 %363, i1* %AF, align 1, !mcsema_real_eip !149
  %364 = trunc i32 %359 to i8, !mcsema_real_eip !149
  %365 = tail call i8 @llvm.ctpop.i8(i8 %364), !mcsema_real_eip !149
  %366 = and i8 %365, 1
  %367 = icmp eq i8 %366, 0
  store i1 %367, i1* %PF, align 1, !mcsema_real_eip !149
  %368 = icmp eq i32 %359, 0, !mcsema_real_eip !149
  store i1 %368, i1* %ZF, align 1, !mcsema_real_eip !149
  %369 = icmp slt i32 %359, 0
  store i1 %369, i1* %SF, align 1, !mcsema_real_eip !149
  %370 = icmp ult i32 %354, %358, !mcsema_real_eip !149
  store i1 %370, i1* %CF, align 1, !mcsema_real_eip !149
  %371 = xor i32 %358, %354, !mcsema_real_eip !149
  %372 = and i32 %360, %371, !mcsema_real_eip !149
  %373 = icmp slt i32 %372, 0
  store i1 %373, i1* %OF, align 1, !mcsema_real_eip !149
  %tmp3 = xor i1 %369, %373
  %374 = add i64 %RBP_val.240, -84
  %375 = inttoptr i64 %374 to i32*
  br i1 %tmp3, label %block_0x114, label %block_0x133, !mcsema_real_eip !150

block_0x114:                                      ; preds = %block_0x108
  %376 = add i64 %RBP_val.240, -80, !mcsema_real_eip !151
  %377 = inttoptr i64 %376 to i64*, !mcsema_real_eip !151
  %378 = load i64, i64* %377, align 8, !mcsema_real_eip !151
  store i64 %378, i64* %XAX, align 8, !mcsema_real_eip !151
  %379 = load i32, i32* %353, align 4, !mcsema_real_eip !152
  %380 = sext i32 %379 to i64, !mcsema_real_eip !152
  store i64 %380, i64* %XCX, align 8, !mcsema_real_eip !152
  %381 = shl nsw i64 %380, 2
  %382 = add i64 %381, %378, !mcsema_real_eip !153
  %383 = inttoptr i64 %382 to i32*, !mcsema_real_eip !153
  %384 = load i32, i32* %383, align 4, !mcsema_real_eip !153
  %385 = zext i32 %384 to i64, !mcsema_real_eip !153
  store i64 %385, i64* %XDX, align 8, !mcsema_real_eip !153
  %386 = load i32, i32* %375, align 4, !mcsema_real_eip !154
  %387 = add i32 %384, %386, !mcsema_real_eip !154
  %388 = xor i32 %387, %386, !mcsema_real_eip !154
  %389 = xor i32 %388, %384, !mcsema_real_eip !154
  %390 = and i32 %389, 16, !mcsema_real_eip !154
  %391 = icmp ne i32 %390, 0, !mcsema_real_eip !154
  store i1 %391, i1* %AF, align 1, !mcsema_real_eip !154
  %392 = icmp slt i32 %387, 0
  store i1 %392, i1* %SF, align 1, !mcsema_real_eip !154
  %393 = icmp eq i32 %387, 0, !mcsema_real_eip !154
  store i1 %393, i1* %ZF, align 1, !mcsema_real_eip !154
  %394 = xor i32 %386, -2147483648, !mcsema_real_eip !154
  %395 = xor i32 %394, %384, !mcsema_real_eip !154
  %396 = and i32 %388, %395, !mcsema_real_eip !154
  %397 = icmp slt i32 %396, 0
  store i1 %397, i1* %OF, align 1, !mcsema_real_eip !154
  %398 = trunc i32 %387 to i8, !mcsema_real_eip !154
  %399 = tail call i8 @llvm.ctpop.i8(i8 %398), !mcsema_real_eip !154
  %400 = and i8 %399, 1
  %401 = icmp eq i8 %400, 0
  store i1 %401, i1* %PF, align 1, !mcsema_real_eip !154
  %402 = icmp ult i32 %387, %386, !mcsema_real_eip !154
  store i1 %402, i1* %CF, align 1, !mcsema_real_eip !154
  %403 = zext i32 %387 to i64, !mcsema_real_eip !154
  store i64 %403, i64* %XDX, align 8, !mcsema_real_eip !154
  store i32 %387, i32* %375, align 4, !mcsema_real_eip !155
  %RBP_val.258 = load i64, i64* %XBP, align 8, !mcsema_real_eip !156
  %404 = add i64 %RBP_val.258, -100, !mcsema_real_eip !156
  %405 = inttoptr i64 %404 to i32*, !mcsema_real_eip !156
  %406 = load i32, i32* %405, align 4, !mcsema_real_eip !156
  %407 = add i32 %406, 1, !mcsema_real_eip !157
  %408 = xor i32 %407, %406, !mcsema_real_eip !157
  %409 = and i32 %408, 16, !mcsema_real_eip !157
  %410 = icmp ne i32 %409, 0, !mcsema_real_eip !157
  store i1 %410, i1* %AF, align 1, !mcsema_real_eip !157
  %411 = icmp slt i32 %407, 0
  store i1 %411, i1* %SF, align 1, !mcsema_real_eip !157
  %412 = icmp eq i32 %407, 0, !mcsema_real_eip !157
  store i1 %412, i1* %ZF, align 1, !mcsema_real_eip !157
  %413 = xor i32 %406, -2147483648, !mcsema_real_eip !157
  %414 = and i32 %408, %413, !mcsema_real_eip !157
  %415 = icmp slt i32 %414, 0
  store i1 %415, i1* %OF, align 1, !mcsema_real_eip !157
  %416 = trunc i32 %407 to i8, !mcsema_real_eip !157
  %417 = tail call i8 @llvm.ctpop.i8(i8 %416), !mcsema_real_eip !157
  %418 = and i8 %417, 1
  %419 = icmp eq i8 %418, 0
  store i1 %419, i1* %PF, align 1, !mcsema_real_eip !157
  %420 = icmp eq i32 %406, -1
  store i1 %420, i1* %CF, align 1, !mcsema_real_eip !157
  %421 = zext i32 %407 to i64, !mcsema_real_eip !157
  store i64 %421, i64* %XAX, align 8, !mcsema_real_eip !157
  store i32 %407, i32* %405, align 4, !mcsema_real_eip !158
  br label %block_0x108, !mcsema_real_eip !159

block_0x133:                                      ; preds = %block_0x108
  %422 = load i32, i32* %375, align 4, !mcsema_real_eip !160
  %423 = zext i32 %422 to i64, !mcsema_real_eip !160
  store i64 %423, i64* %XAX, align 8, !mcsema_real_eip !160
  %RSP_val.245 = load i64, i64* %XSP, align 8, !mcsema_real_eip !161
  %424 = inttoptr i64 %RSP_val.245 to i64*, !mcsema_real_eip !161
  %425 = load i64, i64* %424, align 8, !mcsema_real_eip !161
  store i64 %425, i64* %XBX, align 8, !mcsema_real_eip !161
  %426 = add i64 %RSP_val.245, 8, !mcsema_real_eip !161
  store i64 %426, i64* %XSP, align 8, !mcsema_real_eip !161
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !162
  %428 = load i64, i64* %427, align 8, !mcsema_real_eip !162
  store i64 %428, i64* %XBP, align 8, !mcsema_real_eip !162
  %429 = add i64 %RSP_val.245, 16, !mcsema_real_eip !162
  store i64 %429, i64* %XSP, align 8, !mcsema_real_eip !162
  %430 = add i64 %RSP_val.245, 24, !mcsema_real_eip !163
  %431 = inttoptr i64 %429 to i64*, !mcsema_real_eip !163
  %432 = load i64, i64* %431, align 8, !mcsema_real_eip !163
  store i64 %432, i64* %XIP, align 8, !mcsema_real_eip !163
  store i64 %430, i64* %XSP, align 8, !mcsema_real_eip !163
  ret void, !mcsema_real_eip !163
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
!18 = !{i64 385}
!19 = !{i64 388}
!20 = !{i64 393}
!21 = !{i64 398}
!22 = !{i64 400}
!23 = !{i64 404}
!24 = !{i64 408}
!25 = !{i64 413}
!26 = !{i64 417}
!27 = !{i64 424}
!28 = !{i64 428}
!29 = !{i64 434}
!30 = !{i64 437}
!31 = !{i64 440}
!32 = !{i64 444}
!33 = !{i64 448}
!34 = !{i64 451}
!35 = !{i64 454}
!36 = !{i64 457}
!37 = !{i64 460}
!38 = !{i64 465}
!39 = !{i64 470}
!40 = !{i64 474}
!41 = !{i64 477}
!42 = !{i64 481}
!43 = !{i64 485}
!44 = !{i64 489}
!45 = !{i64 493}
!46 = !{i64 497}
!47 = !{i64 501}
!48 = !{i64 504}
!49 = !{i64 508}
!50 = !{i64 512}
!51 = !{i64 515}
!52 = !{i64 519}
!53 = !{i64 522}
!54 = !{i64 526}
!55 = !{i64 529}
!56 = !{i64 532}
!57 = !{i64 535}
!58 = !{i64 539}
!59 = !{i64 544}
!60 = !{i64 548}
!61 = !{i64 553}
!62 = !{i64 558}
!63 = !{i64 563}
!64 = !{i64 573}
!65 = !{i64 576}
!66 = !{i64 579}
!67 = !{i64 581}
!68 = !{i64 586}
!69 = !{i64 589}
!70 = !{i64 595}
!71 = !{i64 597}
!72 = !{i64 604}
!73 = !{i64 605}
!74 = !{i64 607}
!75 = !{i64 608}
!76 = !{i64 0}
!77 = !{i64 1}
!78 = !{i64 4}
!79 = !{i64 5}
!80 = !{i64 9}
!81 = !{i64 13}
!82 = !{i64 17}
!83 = !{i64 20}
!84 = !{i64 23}
!85 = !{i64 27}
!86 = !{i64 31}
!87 = !{i64 35}
!88 = !{i64 39}
!89 = !{i64 43}
!90 = !{i64 46}
!91 = !{i64 50}
!92 = !{i64 54}
!93 = !{i64 58}
!94 = !{i64 65}
!95 = !{i64 68}
!96 = !{i64 71}
!97 = !{i64 74}
!98 = !{i64 81}
!99 = !{i64 84}
!100 = !{i64 87}
!101 = !{i64 93}
!102 = !{i64 97}
!103 = !{i64 101}
!104 = !{i64 104}
!105 = !{i64 107}
!106 = !{i64 110}
!107 = !{i64 113}
!108 = !{i64 116}
!109 = !{i64 119}
!110 = !{i64 124}
!111 = !{i64 128}
!112 = !{i64 130}
!113 = !{i64 133}
!114 = !{i64 136}
!115 = !{i64 143}
!116 = !{i64 146}
!117 = !{i64 149}
!118 = !{i64 155}
!119 = !{i64 159}
!120 = !{i64 163}
!121 = !{i64 166}
!122 = !{i64 169}
!123 = !{i64 172}
!124 = !{i64 175}
!125 = !{i64 178}
!126 = !{i64 181}
!127 = !{i64 186}
!128 = !{i64 189}
!129 = !{i64 192}
!130 = !{i64 195}
!131 = !{i64 202}
!132 = !{i64 205}
!133 = !{i64 208}
!134 = !{i64 214}
!135 = !{i64 218}
!136 = !{i64 222}
!137 = !{i64 225}
!138 = !{i64 228}
!139 = !{i64 231}
!140 = !{i64 234}
!141 = !{i64 237}
!142 = !{i64 240}
!143 = !{i64 245}
!144 = !{i64 249}
!145 = !{i64 251}
!146 = !{i64 254}
!147 = !{i64 257}
!148 = !{i64 264}
!149 = !{i64 267}
!150 = !{i64 270}
!151 = !{i64 276}
!152 = !{i64 280}
!153 = !{i64 284}
!154 = !{i64 287}
!155 = !{i64 290}
!156 = !{i64 293}
!157 = !{i64 296}
!158 = !{i64 299}
!159 = !{i64 302}
!160 = !{i64 307}
!161 = !{i64 310}
!162 = !{i64 311}
!163 = !{i64 312}
