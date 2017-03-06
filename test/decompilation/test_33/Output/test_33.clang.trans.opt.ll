; ModuleID = 'Output/test_33.clang.trans.opt.bc'
source_filename = "Output/test_33.clang.bc"
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
module asm "  .globl atoi;"
module asm "  .globl _atoi;"
module asm "  .type _atoi,@function"
module asm "_atoi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq atoi@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _atoi,0b-_atoi;"
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
module asm "  .globl sub_80;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_80(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [15 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x100 = internal constant %0 <{ [15 x i8] c"Ack(3,%d): %d\0A\00" }>, align 64

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
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
  %16 = add i64 %RSP_val.1, -16, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, align 4, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %17, align 4, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.7, -12, !mcsema_real_eip !6
  %ESI.8 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.9 = load i32, i32* %ESI.8, align 4, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.9, i32* %19, align 4, !mcsema_real_eip !6
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %20 = add i64 %RBP_val.10, -8, !mcsema_real_eip !7
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !7
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !7
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !7
  %23 = trunc i32 %22 to i8, !mcsema_real_eip !7
  %24 = tail call i8 @llvm.ctpop.i8(i8 %23), !mcsema_real_eip !7
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  store i1 %26, i1* %PF, align 1, !mcsema_real_eip !7
  %27 = icmp eq i32 %22, 0, !mcsema_real_eip !7
  store i1 %27, i1* %ZF, align 1, !mcsema_real_eip !7
  %28 = icmp slt i32 %22, 0
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !7
  %29 = add i64 %RBP_val.10, -12
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30, align 4
  %EAX.28 = bitcast i64* %XAX to i32*
  br i1 %27, label %block_0x18, label %block_0x26, !mcsema_real_eip !8

block_0x18:                                       ; preds = %entry
  %32 = add i32 %31, 1, !mcsema_real_eip !9
  %33 = xor i32 %32, %31, !mcsema_real_eip !9
  %34 = and i32 %33, 16, !mcsema_real_eip !9
  %35 = icmp ne i32 %34, 0, !mcsema_real_eip !9
  store i1 %35, i1* %AF, align 1, !mcsema_real_eip !9
  %36 = icmp slt i32 %32, 0
  store i1 %36, i1* %SF, align 1, !mcsema_real_eip !9
  %37 = icmp eq i32 %32, 0, !mcsema_real_eip !9
  store i1 %37, i1* %ZF, align 1, !mcsema_real_eip !9
  %38 = xor i32 %31, -2147483648, !mcsema_real_eip !9
  %39 = and i32 %33, %38, !mcsema_real_eip !9
  %40 = icmp slt i32 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !9
  %41 = trunc i32 %32 to i8, !mcsema_real_eip !9
  %42 = tail call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !9
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !9
  %45 = icmp eq i32 %31, -1
  store i1 %45, i1* %CF, align 1, !mcsema_real_eip !9
  %46 = zext i32 %32 to i64, !mcsema_real_eip !9
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !9
  br label %block_0x70, !mcsema_real_eip !10

block_0x26:                                       ; preds = %entry
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !11
  %47 = trunc i32 %31 to i8, !mcsema_real_eip !11
  %48 = tail call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !11
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  store i1 %50, i1* %PF, align 1, !mcsema_real_eip !11
  %51 = icmp eq i32 %31, 0, !mcsema_real_eip !11
  store i1 %51, i1* %ZF, align 1, !mcsema_real_eip !11
  %52 = icmp slt i32 %31, 0
  store i1 %52, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !11
  br i1 %51, label %block_0x30, label %block_0x4a, !mcsema_real_eip !12

block_0x30:                                       ; preds = %block_0x26
  store i64 1, i64* %XSI, align 8, !mcsema_real_eip !13
  %53 = load i32, i32* %21, align 4, !mcsema_real_eip !14
  %54 = add i32 %53, -1
  %55 = xor i32 %54, %53, !mcsema_real_eip !15
  %56 = and i32 %55, 16, !mcsema_real_eip !15
  %57 = icmp ne i32 %56, 0, !mcsema_real_eip !15
  store i1 %57, i1* %AF, align 1, !mcsema_real_eip !15
  %58 = trunc i32 %54 to i8, !mcsema_real_eip !15
  %59 = tail call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !15
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !15
  %62 = icmp eq i32 %54, 0, !mcsema_real_eip !15
  store i1 %62, i1* %ZF, align 1, !mcsema_real_eip !15
  %63 = icmp slt i32 %54, 0
  store i1 %63, i1* %SF, align 1, !mcsema_real_eip !15
  %64 = icmp eq i32 %53, 0
  store i1 %64, i1* %CF, align 1, !mcsema_real_eip !15
  %65 = and i32 %55, %53, !mcsema_real_eip !15
  %66 = icmp slt i32 %65, 0
  store i1 %66, i1* %OF, align 1, !mcsema_real_eip !15
  %67 = zext i32 %54 to i64
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !15
  store i64 %67, i64* %XDI, align 8, !mcsema_real_eip !16
  %RSP_val.23 = load i64, i64* %XSP, align 8, !mcsema_real_eip !17
  %68 = add i64 %RSP_val.23, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !17
  store i64 -4981261766360305936, i64* %69, align 8, !mcsema_real_eip !17
  store i64 %68, i64* %XSP, align 8, !mcsema_real_eip !17
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !17
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  br label %block_0x70, !mcsema_real_eip !19

block_0x4a:                                       ; preds = %block_0x26
  %70 = load i32, i32* %21, align 4, !mcsema_real_eip !20
  %71 = add i32 %70, -1
  %72 = xor i32 %71, %70, !mcsema_real_eip !21
  %73 = and i32 %72, 16, !mcsema_real_eip !21
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !21
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !21
  %75 = trunc i32 %71 to i8, !mcsema_real_eip !21
  %76 = tail call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !21
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !21
  %79 = icmp eq i32 %71, 0, !mcsema_real_eip !21
  store i1 %79, i1* %ZF, align 1, !mcsema_real_eip !21
  %80 = icmp slt i32 %71, 0
  store i1 %80, i1* %SF, align 1, !mcsema_real_eip !21
  %81 = icmp eq i32 %70, 0
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !21
  %82 = and i32 %72, %70, !mcsema_real_eip !21
  %83 = icmp slt i32 %82, 0
  store i1 %83, i1* %OF, align 1, !mcsema_real_eip !21
  %84 = zext i32 %71 to i64, !mcsema_real_eip !21
  store i64 %84, i64* %XAX, align 8, !mcsema_real_eip !21
  %85 = load i32, i32* %21, align 4, !mcsema_real_eip !22
  %86 = zext i32 %85 to i64, !mcsema_real_eip !22
  store i64 %86, i64* %XDI, align 8, !mcsema_real_eip !22
  %87 = load i32, i32* %30, align 4, !mcsema_real_eip !23
  %88 = add i32 %87, -1
  %89 = xor i32 %88, %87, !mcsema_real_eip !24
  %90 = and i32 %89, 16, !mcsema_real_eip !24
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !24
  store i1 %91, i1* %AF, align 1, !mcsema_real_eip !24
  %92 = trunc i32 %88 to i8, !mcsema_real_eip !24
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !24
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !24
  %96 = icmp eq i32 %88, 0, !mcsema_real_eip !24
  store i1 %96, i1* %ZF, align 1, !mcsema_real_eip !24
  %97 = icmp slt i32 %88, 0
  store i1 %97, i1* %SF, align 1, !mcsema_real_eip !24
  %98 = icmp eq i32 %87, 0
  store i1 %98, i1* %CF, align 1, !mcsema_real_eip !24
  %99 = and i32 %89, %87, !mcsema_real_eip !24
  %100 = icmp slt i32 %99, 0
  store i1 %100, i1* %OF, align 1, !mcsema_real_eip !24
  %101 = zext i32 %88 to i64
  store i64 %101, i64* %XCX, align 8, !mcsema_real_eip !24
  store i64 %101, i64* %XSI, align 8, !mcsema_real_eip !25
  %102 = add i64 %RBP_val.10, -16, !mcsema_real_eip !26
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !26
  store i32 %71, i32* %103, align 4, !mcsema_real_eip !26
  %RSP_val.39 = load i64, i64* %XSP, align 8, !mcsema_real_eip !27
  %104 = add i64 %RSP_val.39, -8
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !27
  store i64 -4981261766360305936, i64* %105, align 8, !mcsema_real_eip !27
  store i64 %104, i64* %XSP, align 8, !mcsema_real_eip !27
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !27
  %RBP_val.40 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %106 = add i64 %RBP_val.40, -16, !mcsema_real_eip !28
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !28
  %108 = load i32, i32* %107, align 4, !mcsema_real_eip !28
  %109 = zext i32 %108 to i64, !mcsema_real_eip !28
  store i64 %109, i64* %XDI, align 8, !mcsema_real_eip !28
  %EAX_val.42 = load i32, i32* %EAX.28, align 4, !mcsema_real_eip !29
  %110 = zext i32 %EAX_val.42 to i64, !mcsema_real_eip !29
  store i64 %110, i64* %XSI, align 8, !mcsema_real_eip !29
  %RSP_val.43 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  %111 = add i64 %RSP_val.43, -8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !30
  store i64 -4981261766360305936, i64* %112, align 8, !mcsema_real_eip !30
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !30
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !30
  %RBP_val.44 = load i64, i64* %XBP, align 8, !mcsema_real_eip !31
  br label %block_0x70, !mcsema_real_eip !32

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %.sink1.in = phi i64 [ %RBP_val.44, %block_0x4a ], [ %RBP_val.24, %block_0x30 ], [ %RBP_val.10, %block_0x18 ]
  %.sink1 = add i64 %.sink1.in, -4
  %EAX_val.46 = load i32, i32* %EAX.28, align 4
  %113 = inttoptr i64 %.sink1 to i32*
  store i32 %EAX_val.46, i32* %113, align 4
  %RBP_val.47 = load i64, i64* %XBP, align 8, !mcsema_real_eip !32
  %114 = add i64 %RBP_val.47, -4, !mcsema_real_eip !32
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !32
  %116 = load i32, i32* %115, align 4, !mcsema_real_eip !32
  %117 = zext i32 %116 to i64, !mcsema_real_eip !32
  store i64 %117, i64* %XAX, align 8, !mcsema_real_eip !32
  %RSP_val.48 = load i64, i64* %XSP, align 8, !mcsema_real_eip !33
  %118 = add i64 %RSP_val.48, 16, !mcsema_real_eip !33
  %119 = xor i64 %118, %RSP_val.48, !mcsema_real_eip !33
  %120 = and i64 %119, 16
  %121 = icmp eq i64 %120, 0
  store i1 %121, i1* %AF, align 1, !mcsema_real_eip !33
  %122 = icmp slt i64 %118, 0
  store i1 %122, i1* %SF, align 1, !mcsema_real_eip !33
  %123 = icmp eq i64 %118, 0, !mcsema_real_eip !33
  store i1 %123, i1* %ZF, align 1, !mcsema_real_eip !33
  %124 = xor i64 %RSP_val.48, -9223372036854775808, !mcsema_real_eip !33
  %125 = and i64 %119, %124, !mcsema_real_eip !33
  %126 = icmp slt i64 %125, 0
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !33
  %127 = trunc i64 %118 to i8, !mcsema_real_eip !33
  %128 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !33
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  store i1 %130, i1* %PF, align 1, !mcsema_real_eip !33
  %131 = icmp ugt i64 %RSP_val.48, -17
  store i1 %131, i1* %CF, align 1, !mcsema_real_eip !33
  store i64 %118, i64* %XSP, align 8, !mcsema_real_eip !33
  %132 = inttoptr i64 %118 to i64*, !mcsema_real_eip !34
  %133 = load i64, i64* %132, align 8, !mcsema_real_eip !34
  store i64 %133, i64* %XBP, align 8, !mcsema_real_eip !34
  %134 = add i64 %RSP_val.48, 24, !mcsema_real_eip !34
  store i64 %134, i64* %XSP, align 8, !mcsema_real_eip !34
  %135 = add i64 %RSP_val.48, 32, !mcsema_real_eip !35
  %136 = inttoptr i64 %134 to i64*, !mcsema_real_eip !35
  %137 = load i64, i64* %136, align 8, !mcsema_real_eip !35
  store i64 %137, i64* %XIP, align 8, !mcsema_real_eip !35
  store i64 %135, i64* %XSP, align 8, !mcsema_real_eip !35
  ret void, !mcsema_real_eip !35
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_80(%RegState*) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2 = alloca [48 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !36
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !36
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !36
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !36
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !36
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !36
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !36
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !36
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !36
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !36
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !36
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !36
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !36
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !36
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !36
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !36
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !36
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !36
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !36
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !36
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !36
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !36
  %RSP_val.52 = load i64, i64* %XSP, align 8, !mcsema_real_eip !36
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 40
  %1 = add i64 %RSP_val.52, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !37
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
  %3 = add i64 %RSP_val.52, -40
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !38
  %4 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 36
  %5 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %5, align 4, !mcsema_real_eip !39
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 32
  %EDI.57 = bitcast i64* %XDI to i32*, !mcsema_real_eip !40
  %EDI_val.58 = load i32, i32* %EDI.57, align 4
  %6 = bitcast i8* %_new_gep_17 to i32*
  store i32 %EDI_val.58, i32* %6, align 8, !mcsema_real_eip !40
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 24
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.60 = load i64, i64* %XSI, align 8, !mcsema_real_eip !41
  store i64 %RSI_val.60, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !41
  %7 = add i32 %EDI_val.58, -2
  %8 = xor i32 %7, %EDI_val.58, !mcsema_real_eip !42
  %9 = and i32 %8, 16, !mcsema_real_eip !42
  %10 = icmp ne i32 %9, 0, !mcsema_real_eip !42
  store i1 %10, i1* %AF, align 1, !mcsema_real_eip !42
  %11 = trunc i32 %7 to i8, !mcsema_real_eip !42
  %12 = call i8 @llvm.ctpop.i8(i8 %11), !mcsema_real_eip !42
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  store i1 %14, i1* %PF, align 1, !mcsema_real_eip !42
  %15 = icmp eq i32 %7, 0, !mcsema_real_eip !42
  store i1 %15, i1* %ZF, align 1, !mcsema_real_eip !42
  %16 = icmp slt i32 %7, 0
  store i1 %16, i1* %SF, align 1, !mcsema_real_eip !42
  %17 = icmp ult i32 %EDI_val.58, 2, !mcsema_real_eip !42
  store i1 %17, i1* %CF, align 1, !mcsema_real_eip !42
  %18 = and i32 %8, %EDI_val.58, !mcsema_real_eip !42
  %19 = icmp slt i32 %18, 0
  store i1 %19, i1* %OF, align 1, !mcsema_real_eip !42
  br i1 %15, label %block_0xa0, label %block_0xb5, !mcsema_real_eip !43

block_0xa0:                                       ; preds = %entry
  store i64 %RSI_val.60, i64* %XAX, align 8, !mcsema_real_eip !44
  %20 = add i64 %RSI_val.60, 8, !mcsema_real_eip !45
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !45
  %22 = load i64, i64* %21, align 8, !mcsema_real_eip !45
  store i64 %22, i64* %XDI, align 8, !mcsema_real_eip !45
  %_new_gep_29 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 0
  %23 = add i64 %RSP_val.52, -48
  %_allin_new_bt_30 = bitcast [48 x i8]* %_local_stack_start_ptr_2 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !46
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %23, i64* %XSP, align 8, !mcsema_real_eip !46
  %24 = call x86_64_sysvcc i64 @_atoi(i64 %22)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XAX, align 8, !mcsema_real_eip !46
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3113 = load i8*, i8** %4, align 8
  %25 = trunc i64 %24 to i32
  br label %block_0xc2, !mcsema_real_eip !47

block_0xb5:                                       ; preds = %entry
  store i64 8, i64* %XAX, align 8, !mcsema_real_eip !48
  br label %block_0xc2, !mcsema_real_eip !49

block_0xc2:                                       ; preds = %block_0xb5, %block_0xa0
  %EAX_val.71 = phi i32 [ 8, %block_0xb5 ], [ %25, %block_0xa0 ]
  %_load_rbp_ptr_22.sink = phi i8* [ %_new_gep_, %block_0xb5 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3113, %block_0xa0 ]
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22.sink, i64 -24
  %EAX.70 = bitcast i64* %XAX to i32*
  %26 = bitcast i8* %_new_gep_35 to i32*
  store i32 %EAX_val.71, i32* %26, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_378 = load i8*, i8** %4, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_378, i64 -24
  %27 = bitcast i8* %_new_gep_38 to i32*
  %28 = load i32, i32* %27, align 4, !mcsema_real_eip !50
  %29 = zext i32 %28 to i64, !mcsema_real_eip !50
  store i64 %29, i64* %XAX, align 8, !mcsema_real_eip !50
  store i64 3, i64* %XDI, align 8, !mcsema_real_eip !51
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_378, i64 -20
  %30 = bitcast i8* %_new_gep_41 to i32*
  store i32 %28, i32* %30, align 4, !mcsema_real_eip !52
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_439 = load i8*, i8** %4, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_439, i64 -20
  %31 = bitcast i8* %_new_gep_44 to i32*
  %32 = load i32, i32* %31, align 4, !mcsema_real_eip !53
  %33 = zext i32 %32 to i64, !mcsema_real_eip !53
  store i64 %33, i64* %XSI, align 8, !mcsema_real_eip !53
  %34 = load i32, i32* %31, align 4, !mcsema_real_eip !54
  %35 = zext i32 %34 to i64, !mcsema_real_eip !54
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !54
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_439, i64 -28
  %36 = bitcast i8* %_new_gep_50 to i32*
  store i32 %32, i32* %36, align 4, !mcsema_real_eip !55
  %EAX_val.82 = load i32, i32* %EAX.70, align 4, !mcsema_real_eip !56
  %37 = zext i32 %EAX_val.82 to i64, !mcsema_real_eip !56
  store i64 %37, i64* %XSI, align 8, !mcsema_real_eip !56
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.83 = load i64, i64* %XSP, align 8, !mcsema_real_eip !57
  %_new_gep_53 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52, i64 -8
  %38 = add i64 %RSP_val.83, -8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !57
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_, align 8
  store i64 %38, i64* %XSP, align 8, !mcsema_real_eip !57
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10610 = load i8*, i8** %4, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_53, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10610)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_109 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 8
  store i8* %_gep_fix_109, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %XDI, align 8, !mcsema_real_eip !58
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5511 = load i8*, i8** %4, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5511, i64 -28
  %39 = bitcast i8* %_new_gep_56 to i32*
  %40 = load i32, i32* %39, align 4, !mcsema_real_eip !59
  %41 = zext i32 %40 to i64, !mcsema_real_eip !59
  store i64 %41, i64* %XSI, align 8, !mcsema_real_eip !59
  %EAX_val.86 = load i32, i32* %EAX.70, align 4, !mcsema_real_eip !60
  %42 = zext i32 %EAX_val.86 to i64, !mcsema_real_eip !60
  store i64 %42, i64* %XDX, align 8, !mcsema_real_eip !60
  %AL.87 = bitcast i64* %XAX to i8*, !mcsema_real_eip !61
  store i8 0, i8* %AL.87, align 1, !mcsema_real_eip !61
  %RCX_val.91 = load i64, i64* %XCX, align 8, !mcsema_real_eip !62
  %R8_val.92 = load i64, i64* %R8, align 8, !mcsema_real_eip !62
  %R9_val.93 = load i64, i64* %R9, align 8, !mcsema_real_eip !62
  %_allin_new_bt_59 = bitcast i8* %_gep_fix_109 to i64*
  %43 = load i64, i64* %_allin_new_bt_59, align 8, !mcsema_real_eip !62
  %_new_gep_60 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 16
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %44 = load i64, i64* %_allin_new_bt_61, align 8, !mcsema_real_eip !62
  %_new_gep_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 24
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %45 = load i64, i64* %_allin_new_bt_63, align 8, !mcsema_real_eip !62
  %_new_gep_64 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 32
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %46 = load i64, i64* %_allin_new_bt_65, align 8, !mcsema_real_eip !62
  %_new_gep_66 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 40
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %47 = load i64, i64* %_allin_new_bt_67, align 8, !mcsema_real_eip !62
  %_new_gep_68 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 48
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %48 = load i64, i64* %_allin_new_bt_69, align 8, !mcsema_real_eip !62
  %_new_gep_70 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 56
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %49 = load i64, i64* %_allin_new_bt_71, align 8, !mcsema_real_eip !62
  %_new_gep_72 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 64
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %50 = load i64, i64* %_allin_new_bt_73, align 8, !mcsema_real_eip !62
  %_new_gep_74 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 72
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %51 = load i64, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !62
  %_new_gep_76 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 80
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %52 = load i64, i64* %_allin_new_bt_77, align 8, !mcsema_real_eip !62
  %RSP_val.95 = load i64, i64* %XSP, align 8, !mcsema_real_eip !62
  %53 = add i64 %RSP_val.95, -8
  %_allin_new_bt_80 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_80, align 8, !mcsema_real_eip !62
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i8** %_RSP_ptr_, align 8
  store i64 %53, i64* %XSP, align 8, !mcsema_real_eip !62
  %54 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %41, i64 %42, i64 %RCX_val.91, i64 %R8_val.92, i64 %R9_val.93, i64 %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_110 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_111 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_110, i64 8
  store i8* %_gep_fix_111, i8** %_RSP_ptr_, align 8
  %EDX.96 = bitcast i64* %XDX to i32*, !mcsema_real_eip !63
  store i64 0, i64* %XDX, align 8, !mcsema_real_eip !63
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8112 = load i8*, i8** %4, align 8
  %_new_gep_82 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8112, i64 -32
  %55 = trunc i64 %54 to i32
  %56 = bitcast i8* %_new_gep_82 to i32*
  store i32 %55, i32* %56, align 4, !mcsema_real_eip !64
  %EDX_val.104 = load i32, i32* %EDX.96, align 4, !mcsema_real_eip !65
  %57 = zext i32 %EDX_val.104 to i64, !mcsema_real_eip !65
  store i64 %57, i64* %XAX, align 8, !mcsema_real_eip !65
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.105 = load i64, i64* %XSP, align 8, !mcsema_real_eip !66
  %_new_gep_85 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84, i64 32
  %58 = add i64 %RSP_val.105, 32, !mcsema_real_eip !66
  %_trans_p2i_86 = ptrtoint i8* %_new_gep_85 to i64
  %_trans_p2i_87 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84 to i64
  %_trans_xor_88 = xor i64 %_trans_p2i_86, %_trans_p2i_87
  %59 = and i64 %_trans_xor_88, 16, !mcsema_real_eip !66
  %60 = icmp ne i64 %59, 0, !mcsema_real_eip !66
  store i1 %60, i1* %AF, align 1, !mcsema_real_eip !66
  %61 = icmp slt i64 %58, 0
  store i1 %61, i1* %SF, align 1, !mcsema_real_eip !66
  %_trans_icmp_eq_90 = icmp eq i8* %_new_gep_85, null
  store i1 %_trans_icmp_eq_90, i1* %ZF, align 1, !mcsema_real_eip !66
  %62 = xor i64 %_trans_p2i_87, -9223372036854775808, !mcsema_real_eip !66
  %63 = and i64 %_trans_xor_88, %62, !mcsema_real_eip !66
  %64 = icmp slt i64 %63, 0
  store i1 %64, i1* %OF, align 1, !mcsema_real_eip !66
  %_trans_trunc_97 = trunc i64 %_trans_p2i_86 to i8
  %65 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_97), !mcsema_real_eip !66
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  store i1 %67, i1* %PF, align 1, !mcsema_real_eip !66
  %_trans_icmp_ne_99 = icmp ne i64 %RSP_val.105, %_trans_p2i_86
  store i1 %_trans_icmp_ne_99, i1* %CF, align 1, !mcsema_real_eip !66
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_, align 8
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !66
  %_allin_new_bt_101 = bitcast i8* %_new_gep_85 to i64*
  %68 = load i64, i64* %_allin_new_bt_101, align 8, !mcsema_real_eip !67
  store volatile i64 %68, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %68, i64* %XBP, align 8, !mcsema_real_eip !67
  %_new_gep_102 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84, i64 40
  %69 = add i64 %RSP_val.105, 40, !mcsema_real_eip !67
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_, align 8
  store i64 %69, i64* %XSP, align 8, !mcsema_real_eip !67
  %_new_gep_104 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84, i64 48
  %70 = add i64 %RSP_val.105, 48, !mcsema_real_eip !68
  %_allin_new_bt_105 = bitcast i8* %_new_gep_102 to i64*
  %71 = load i64, i64* %_allin_new_bt_105, align 8, !mcsema_real_eip !68
  store i64 %71, i64* %XIP, align 8, !mcsema_real_eip !68
  store volatile i8* %_new_gep_104, i8** %_RSP_ptr_, align 8
  store i64 %70, i64* %XSP, align 8, !mcsema_real_eip !68
  ret void, !mcsema_real_eip !68
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_atoi(i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_2 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
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
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 24
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -24
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 16
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, align 4, !mcsema_real_eip !5
  %3 = bitcast i8* %_new_gep_14 to i32*
  store i32 %EDI_val.6, i32* %3, align 8, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 12
  %ESI.8 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.9 = load i32, i32* %ESI.8, align 4, !mcsema_real_eip !6
  %4 = bitcast i8* %_new_gep_17 to i32*
  store i32 %ESI_val.9, i32* %4, align 4, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %5 = bitcast i8* %_new_gep_14 to i32*
  %_new_load_ = load i32, i32* %5, align 8
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !7
  %6 = trunc i32 %_new_load_ to i8, !mcsema_real_eip !7
  %7 = call i8 @llvm.ctpop.i8(i8 %6), !mcsema_real_eip !7
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  store i1 %9, i1* %PF, align 1, !mcsema_real_eip !7
  %10 = icmp eq i32 %_new_load_, 0, !mcsema_real_eip !7
  store i1 %10, i1* %ZF, align 1, !mcsema_real_eip !7
  %11 = icmp slt i32 %_new_load_, 0
  store i1 %11, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !7
  %_address_in_parent_stack_bt_127. = bitcast i8* %_new_gep_17 to i32*
  %_new_load_128 = load i32, i32* %_address_in_parent_stack_bt_127., align 4
  %EAX.28 = bitcast i64* %XAX to i32*
  br i1 %10, label %block_0x18, label %block_0x26, !mcsema_real_eip !8

block_0x18:                                       ; preds = %entry
  %12 = add i32 %_new_load_128, 1, !mcsema_real_eip !9
  %13 = xor i32 %12, %_new_load_128, !mcsema_real_eip !9
  %14 = and i32 %13, 16, !mcsema_real_eip !9
  %15 = icmp ne i32 %14, 0, !mcsema_real_eip !9
  store i1 %15, i1* %AF, align 1, !mcsema_real_eip !9
  %16 = icmp slt i32 %12, 0
  store i1 %16, i1* %SF, align 1, !mcsema_real_eip !9
  %17 = icmp eq i32 %12, 0, !mcsema_real_eip !9
  store i1 %17, i1* %ZF, align 1, !mcsema_real_eip !9
  %18 = xor i32 %_new_load_128, -2147483648, !mcsema_real_eip !9
  %19 = and i32 %13, %18, !mcsema_real_eip !9
  %20 = icmp slt i32 %19, 0
  store i1 %20, i1* %OF, align 1, !mcsema_real_eip !9
  %21 = trunc i32 %12 to i8, !mcsema_real_eip !9
  %22 = call i8 @llvm.ctpop.i8(i8 %21), !mcsema_real_eip !9
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  store i1 %24, i1* %PF, align 1, !mcsema_real_eip !9
  %25 = icmp eq i32 %_new_load_128, -1
  store i1 %25, i1* %CF, align 1, !mcsema_real_eip !9
  %26 = zext i32 %12 to i64, !mcsema_real_eip !9
  store i64 %26, i64* %XAX, align 8, !mcsema_real_eip !9
  br label %block_0x70, !mcsema_real_eip !10

block_0x26:                                       ; preds = %entry
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !11
  %27 = trunc i32 %_new_load_128 to i8, !mcsema_real_eip !11
  %28 = call i8 @llvm.ctpop.i8(i8 %27), !mcsema_real_eip !11
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  store i1 %30, i1* %PF, align 1, !mcsema_real_eip !11
  %31 = icmp eq i32 %_new_load_128, 0, !mcsema_real_eip !11
  store i1 %31, i1* %ZF, align 1, !mcsema_real_eip !11
  %32 = icmp slt i32 %_new_load_128, 0
  store i1 %32, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !11
  br i1 %31, label %block_0x30, label %block_0x4a, !mcsema_real_eip !12

block_0x30:                                       ; preds = %block_0x26
  store i64 1, i64* %XSI, align 8, !mcsema_real_eip !13
  %_new_load_143 = load i32, i32* %5, align 8
  %33 = add i32 %_new_load_143, -1
  %34 = xor i32 %33, %_new_load_143, !mcsema_real_eip !15
  %35 = and i32 %34, 16, !mcsema_real_eip !15
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !15
  store i1 %36, i1* %AF, align 1, !mcsema_real_eip !15
  %37 = trunc i32 %33 to i8, !mcsema_real_eip !15
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !15
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  store i1 %40, i1* %PF, align 1, !mcsema_real_eip !15
  %41 = icmp eq i32 %33, 0, !mcsema_real_eip !15
  store i1 %41, i1* %ZF, align 1, !mcsema_real_eip !15
  %42 = icmp slt i32 %33, 0
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !15
  %43 = icmp eq i32 %_new_load_143, 0
  store i1 %43, i1* %CF, align 1, !mcsema_real_eip !15
  %44 = and i32 %34, %_new_load_143, !mcsema_real_eip !15
  %45 = icmp slt i32 %44, 0
  store i1 %45, i1* %OF, align 1, !mcsema_real_eip !15
  %46 = zext i32 %33 to i64
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !15
  store i64 %46, i64* %XDI, align 8, !mcsema_real_eip !16
  %_new_gep_35 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 0
  %47 = add i64 %RSP_val.1, -32
  %_allin_new_bt_36 = bitcast [32 x i8]* %_local_stack_start_ptr_2 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !17
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_, align 8
  store i64 %47, i64* %XSP, align 8, !mcsema_real_eip !17
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* nonnull %_new_gep_35, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x70, !mcsema_real_eip !19

block_0x4a:                                       ; preds = %block_0x26
  %_new_load_158 = load i32, i32* %5, align 8
  %48 = add i32 %_new_load_158, -1
  %49 = zext i32 %48 to i64, !mcsema_real_eip !21
  store i64 %49, i64* %XAX, align 8, !mcsema_real_eip !21
  %50 = zext i32 %_new_load_158 to i64, !mcsema_real_eip !22
  store i64 %50, i64* %XDI, align 8, !mcsema_real_eip !22
  %_new_load_188 = load i32, i32* %_address_in_parent_stack_bt_127., align 4
  %51 = add i32 %_new_load_188, -1
  %52 = xor i32 %51, %_new_load_188, !mcsema_real_eip !24
  %53 = and i32 %52, 16, !mcsema_real_eip !24
  %54 = icmp ne i32 %53, 0, !mcsema_real_eip !24
  store i1 %54, i1* %AF, align 1, !mcsema_real_eip !24
  %55 = trunc i32 %51 to i8, !mcsema_real_eip !24
  %56 = call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !24
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  store i1 %58, i1* %PF, align 1, !mcsema_real_eip !24
  %59 = icmp eq i32 %51, 0, !mcsema_real_eip !24
  store i1 %59, i1* %ZF, align 1, !mcsema_real_eip !24
  %60 = icmp slt i32 %51, 0
  store i1 %60, i1* %SF, align 1, !mcsema_real_eip !24
  %61 = icmp eq i32 %_new_load_188, 0
  store i1 %61, i1* %CF, align 1, !mcsema_real_eip !24
  %62 = and i32 %52, %_new_load_188, !mcsema_real_eip !24
  %63 = icmp slt i32 %62, 0
  store i1 %63, i1* %OF, align 1, !mcsema_real_eip !24
  %64 = zext i32 %51 to i64
  store i64 %64, i64* %XCX, align 8, !mcsema_real_eip !24
  store i64 %64, i64* %XSI, align 8, !mcsema_real_eip !25
  %_new_gep_50 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
  %65 = bitcast i8* %_new_gep_50 to i32*
  store i32 %48, i32* %65, align 8, !mcsema_real_eip !26
  %_new_gep_53 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 0
  %66 = add i64 %RSP_val.1, -32
  %_allin_new_bt_54 = bitcast [32 x i8]* %_local_stack_start_ptr_2 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !27
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_, align 8
  store i64 %66, i64* %XSP, align 8, !mcsema_real_eip !27
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* nonnull %_new_gep_53, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_93 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_94 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_93, i64 8
  store i8* %_gep_fix_94, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -16
  %67 = ptrtoint i8* %_new_gep_56 to i64
  %_offset_above_rbp_192 = sub i64 %67, %_local_end_to_int_
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  %.v4 = select i1 %_cond1_n_cond2_cond3_200, i8* %_pot_address_in_parent_stack_193, i8* %_new_gep_56
  %68 = bitcast i8* %.v4 to i32*
  %_new_load_203 = load i32, i32* %68, align 4
  %69 = zext i32 %_new_load_203 to i64, !mcsema_real_eip !28
  store i64 %69, i64* %XDI, align 8, !mcsema_real_eip !28
  %EAX_val.42 = load i32, i32* %EAX.28, align 4, !mcsema_real_eip !29
  %70 = zext i32 %EAX_val.42 to i64, !mcsema_real_eip !29
  store i64 %70, i64* %XSI, align 8, !mcsema_real_eip !29
  %RSP_val.43 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  %71 = add i64 %RSP_val.43, -8
  %_allin_new_bt_60 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_93 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !30
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_93, i8** %_RSP_ptr_, align 8
  store i64 %71, i64* %XSP, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_93, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_95)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_97 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_98 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_97, i64 8
  store i8* %_gep_fix_98, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x70, !mcsema_real_eip !32

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %_load_rbp_ptr_61.sink = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, %block_0x4a ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, %block_0x30 ], [ %_new_gep_, %block_0x18 ]
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61.sink, i64 -4
  %EAX_val.46 = load i32, i32* %EAX.28, align 4
  %72 = bitcast i8* %_new_gep_62 to i32*
  store i32 %EAX_val.46, i32* %72, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64, i64 -4
  %73 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_207 = sub i64 %73, %_local_end_to_int_
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  %_address_in_parent_stack_bt_217..v = select i1 %_cond1_n_cond2_cond3_215, i8* %_pot_address_in_parent_stack_208, i8* %_new_gep_65
  %_address_in_parent_stack_bt_217. = bitcast i8* %_address_in_parent_stack_bt_217..v to i32*
  %_new_load_218 = load i32, i32* %_address_in_parent_stack_bt_217., align 4
  %74 = zext i32 %_new_load_218 to i64, !mcsema_real_eip !32
  store i64 %74, i64* %XAX, align 8, !mcsema_real_eip !32
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.48 = load i64, i64* %XSP, align 8, !mcsema_real_eip !33
  %_new_gep_68 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 16
  %75 = add i64 %RSP_val.48, 16, !mcsema_real_eip !33
  %_trans_p2i_69 = ptrtoint i8* %_new_gep_68 to i64
  %_trans_p2i_70 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67 to i64
  %_trans_xor_71 = xor i64 %_trans_p2i_69, %_trans_p2i_70
  %76 = and i64 %_trans_xor_71, 16
  %77 = icmp eq i64 %76, 0
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !33
  %78 = icmp slt i64 %75, 0
  store i1 %78, i1* %SF, align 1, !mcsema_real_eip !33
  %_trans_icmp_eq_73 = icmp eq i8* %_new_gep_68, null
  store i1 %_trans_icmp_eq_73, i1* %ZF, align 1, !mcsema_real_eip !33
  %79 = xor i64 %_trans_p2i_70, -9223372036854775808, !mcsema_real_eip !33
  %80 = and i64 %_trans_xor_71, %79, !mcsema_real_eip !33
  %81 = icmp slt i64 %80, 0
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !33
  %_trans_trunc_80 = trunc i64 %_trans_p2i_69 to i8
  %82 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_80), !mcsema_real_eip !33
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !33
  %_trans_icmp_ne_82 = icmp ne i64 %RSP_val.48, %_trans_p2i_69
  store i1 %_trans_icmp_ne_82, i1* %CF, align 1, !mcsema_real_eip !33
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_, align 8
  store i64 %75, i64* %XSP, align 8, !mcsema_real_eip !33
  %_offset_above_rbp_222 = sub i64 %_trans_p2i_69, %_local_end_to_int_
  %_pot_address_in_parent_stack_223 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_222
  %_cond1_224 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_225 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_226 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_227 = or i1 %_cond2_1_225, %_cond2_2_226
  %_cond4_228 = icmp ule i8* %_pot_address_in_parent_stack_223, %_parent_stack_end_ptr_
  %_cond1_n_cond2_229 = and i1 %_cond1_224, %_cond2_227
  %_cond1_n_cond2_cond3_230 = and i1 %_cond1_n_cond2_229, %_cond4_228
  %.v3 = select i1 %_cond1_n_cond2_cond3_230, i8* %_pot_address_in_parent_stack_223, i8* %_new_gep_68
  %85 = bitcast i8* %.v3 to i64*
  %_new_load_233 = load i64, i64* %85, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_233 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_233, i64* %XBP, align 8, !mcsema_real_eip !34
  %_new_gep_85 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 24
  %86 = add i64 %RSP_val.48, 24, !mcsema_real_eip !34
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_, align 8
  store i64 %86, i64* %XSP, align 8, !mcsema_real_eip !34
  %_new_gep_87 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_67, i64 32
  %87 = add i64 %RSP_val.48, 32, !mcsema_real_eip !35
  %_ptr_to_int_234 = ptrtoint i8* %_new_gep_85 to i64
  %_offset_above_rbp_237 = sub i64 %_ptr_to_int_234, %_local_end_to_int_
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond1_n_cond2_244, %_cond4_243
  %_address_in_parent_stack_bt_247._allin_new_bt_88.v = select i1 %_cond1_n_cond2_cond3_245, i8* %_pot_address_in_parent_stack_238, i8* %_new_gep_85
  %_address_in_parent_stack_bt_247._allin_new_bt_88 = bitcast i8* %_address_in_parent_stack_bt_247._allin_new_bt_88.v to i64*
  %_new_load_248 = load i64, i64* %_address_in_parent_stack_bt_247._allin_new_bt_88, align 8
  store i64 %_new_load_248, i64* %XIP, align 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_, align 8
  store i64 %87, i64* %XSP, align 8, !mcsema_real_eip !35
  ret void, !mcsema_real_eip !35
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_80.2(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_2 = alloca [48 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !36
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !36
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !36
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !36
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !36
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !36
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !36
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !36
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !36
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !36
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !36
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !36
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !36
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !36
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !36
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !36
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !36
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !36
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !36
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !36
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !36
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !36
  %RSP_val.52 = load i64, i64* %XSP, align 8, !mcsema_real_eip !36
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 40
  %1 = add i64 %RSP_val.52, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !37
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
  %2 = add i64 %RSP_val.52, -40
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !38
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 36
  %3 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %3, align 4, !mcsema_real_eip !39
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 32
  %EDI.57 = bitcast i64* %XDI to i32*, !mcsema_real_eip !40
  %EDI_val.58 = load i32, i32* %EDI.57, align 4, !mcsema_real_eip !40
  %4 = bitcast i8* %_new_gep_17 to i32*
  store i32 %EDI_val.58, i32* %4, align 8, !mcsema_real_eip !40
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 24
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.60 = load i64, i64* %XSI, align 8, !mcsema_real_eip !41
  store i64 %RSI_val.60, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !41
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %5 = bitcast i8* %_new_gep_17 to i32*
  %_new_load_ = load i32, i32* %5, align 8
  %6 = add i32 %_new_load_, -2
  %7 = xor i32 %6, %_new_load_, !mcsema_real_eip !42
  %8 = and i32 %7, 16, !mcsema_real_eip !42
  %9 = icmp ne i32 %8, 0, !mcsema_real_eip !42
  store i1 %9, i1* %AF, align 1, !mcsema_real_eip !42
  %10 = trunc i32 %6 to i8, !mcsema_real_eip !42
  %11 = call i8 @llvm.ctpop.i8(i8 %10), !mcsema_real_eip !42
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  store i1 %13, i1* %PF, align 1, !mcsema_real_eip !42
  %14 = icmp eq i32 %6, 0, !mcsema_real_eip !42
  store i1 %14, i1* %ZF, align 1, !mcsema_real_eip !42
  %15 = icmp slt i32 %6, 0
  store i1 %15, i1* %SF, align 1, !mcsema_real_eip !42
  %16 = icmp ult i32 %_new_load_, 2, !mcsema_real_eip !42
  store i1 %16, i1* %CF, align 1, !mcsema_real_eip !42
  %17 = and i32 %7, %_new_load_, !mcsema_real_eip !42
  %18 = icmp slt i32 %17, 0
  store i1 %18, i1* %OF, align 1, !mcsema_real_eip !42
  br i1 %14, label %block_0xa0, label %block_0xb5, !mcsema_real_eip !43

block_0xa0:                                       ; preds = %entry
  %_address_in_parent_stack_bt_125._allin_new_bt_27 = bitcast i8* %_new_gep_20 to i64*
  %_new_load_126 = load i64, i64* %_address_in_parent_stack_bt_125._allin_new_bt_27, align 8
  store i64 %_new_load_126, i64* %XAX, align 8, !mcsema_real_eip !44
  %19 = add i64 %_new_load_126, 8, !mcsema_real_eip !45
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !45
  %_ptr_bt_129 = inttoptr i64 %19 to i8*
  %_offset_above_rbp_130 = sub i64 %19, %_local_end_to_int_
  %_pot_address_in_parent_stack_131 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_130
  %_cond1_132 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_129
  %_cond2_1_133 = icmp ugt i8* %_ptr_bt_129, %_parent_stack_end_ptr_
  %_cond2_2_134 = icmp ult i8* %_ptr_bt_129, %_parent_stack_start_ptr_
  %_cond2_135 = or i1 %_cond2_1_133, %_cond2_2_134
  %_cond4_136 = icmp ule i8* %_pot_address_in_parent_stack_131, %_parent_stack_end_ptr_
  %_cond1_n_cond2_137 = and i1 %_cond1_132, %_cond2_135
  %_cond1_n_cond2_cond3_138 = and i1 %_cond4_136, %_cond1_n_cond2_137
  %_address_in_parent_stack_bt_140 = bitcast i8* %_pot_address_in_parent_stack_131 to i64*
  %21 = select i1 %_cond1_n_cond2_cond3_138, i64* %_address_in_parent_stack_bt_140, i64* %20
  %_new_load_141 = load i64, i64* %21, align 8
  store i64 %_new_load_141, i64* %XDI, align 8, !mcsema_real_eip !45
  %_new_gep_29 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_2, i64 0, i64 0
  %22 = add i64 %RSP_val.52, -48
  %_allin_new_bt_30 = bitcast [48 x i8]* %_local_stack_start_ptr_2 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !46
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %22, i64* %XSP, align 8, !mcsema_real_eip !46
  %23 = call x86_64_sysvcc i64 @_atoi(i64 %_new_load_141)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !46
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %24 = trunc i64 %23 to i32
  br label %block_0xc2, !mcsema_real_eip !47

block_0xb5:                                       ; preds = %entry
  store i64 8, i64* %XAX, align 8, !mcsema_real_eip !48
  br label %block_0xc2, !mcsema_real_eip !49

block_0xc2:                                       ; preds = %block_0xb5, %block_0xa0
  %EAX_val.71 = phi i32 [ 8, %block_0xb5 ], [ %24, %block_0xa0 ]
  %_load_rbp_ptr_22.sink = phi i8* [ %_new_gep_, %block_0xb5 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, %block_0xa0 ]
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22.sink, i64 -24
  %EAX.70 = bitcast i64* %XAX to i32*
  %25 = bitcast i8* %_new_gep_35 to i32*
  store i32 %EAX_val.71, i32* %25, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -24
  %26 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_145 = sub i64 %26, %_local_end_to_int_
  %_pot_address_in_parent_stack_146 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_145
  %_cond1_147 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_148 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_149 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_150 = or i1 %_cond2_1_148, %_cond2_2_149
  %_cond4_151 = icmp ule i8* %_pot_address_in_parent_stack_146, %_parent_stack_end_ptr_
  %_cond1_n_cond2_152 = and i1 %_cond1_147, %_cond2_150
  %_cond1_n_cond2_cond3_153 = and i1 %_cond1_n_cond2_152, %_cond4_151
  %_address_in_parent_stack_bt_155..v = select i1 %_cond1_n_cond2_cond3_153, i8* %_pot_address_in_parent_stack_146, i8* %_new_gep_38
  %_address_in_parent_stack_bt_155. = bitcast i8* %_address_in_parent_stack_bt_155..v to i32*
  %_new_load_156 = load i32, i32* %_address_in_parent_stack_bt_155., align 4
  %27 = zext i32 %_new_load_156 to i64, !mcsema_real_eip !50
  store i64 %27, i64* %XAX, align 8, !mcsema_real_eip !50
  store i64 3, i64* %XDI, align 8, !mcsema_real_eip !51
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -20
  %28 = bitcast i8* %_new_gep_41 to i32*
  store i32 %_new_load_156, i32* %28, align 4, !mcsema_real_eip !52
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -20
  %29 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_160 = sub i64 %29, %_local_end_to_int_
  %_pot_address_in_parent_stack_161 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_160
  %_cond1_162 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_163 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_164 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_165 = or i1 %_cond2_1_163, %_cond2_2_164
  %_cond4_166 = icmp ule i8* %_pot_address_in_parent_stack_161, %_parent_stack_end_ptr_
  %_cond1_n_cond2_167 = and i1 %_cond1_162, %_cond2_165
  %_cond1_n_cond2_cond3_168 = and i1 %_cond1_n_cond2_167, %_cond4_166
  %.v3 = select i1 %_cond1_n_cond2_cond3_168, i8* %_pot_address_in_parent_stack_161, i8* %_new_gep_44
  %30 = bitcast i8* %.v3 to i32*
  %_new_load_171 = load i32, i32* %30, align 4
  %31 = zext i32 %_new_load_171 to i64, !mcsema_real_eip !53
  store i64 %31, i64* %XSI, align 8, !mcsema_real_eip !53
  %_new_load_186 = load i32, i32* %30, align 4
  %32 = zext i32 %_new_load_186 to i64, !mcsema_real_eip !54
  store i64 %32, i64* %XAX, align 8, !mcsema_real_eip !54
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -28
  %33 = bitcast i8* %_new_gep_50 to i32*
  store i32 %_new_load_171, i32* %33, align 4, !mcsema_real_eip !55
  %EAX_val.82 = load i32, i32* %EAX.70, align 4, !mcsema_real_eip !56
  %34 = zext i32 %EAX_val.82 to i64, !mcsema_real_eip !56
  store i64 %34, i64* %XSI, align 8, !mcsema_real_eip !56
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.83 = load i64, i64* %XSP, align 8, !mcsema_real_eip !57
  %_new_gep_53 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52, i64 -8
  %35 = add i64 %RSP_val.83, -8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !57
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_, align 8
  store i64 %35, i64* %XSP, align 8, !mcsema_real_eip !57
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_106 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_53, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_106)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_109 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 8
  store i8* %_gep_fix_109, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %XDI, align 8, !mcsema_real_eip !58
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -28
  %36 = ptrtoint i8* %_new_gep_56 to i64
  %_offset_above_rbp_190 = sub i64 %36, %_local_end_to_int_
  %_pot_address_in_parent_stack_191 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_190
  %_cond1_192 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_193 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_194 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_195 = or i1 %_cond2_1_193, %_cond2_2_194
  %_cond4_196 = icmp ule i8* %_pot_address_in_parent_stack_191, %_parent_stack_end_ptr_
  %_cond1_n_cond2_197 = and i1 %_cond1_192, %_cond2_195
  %_cond1_n_cond2_cond3_198 = and i1 %_cond1_n_cond2_197, %_cond4_196
  %.v4 = select i1 %_cond1_n_cond2_cond3_198, i8* %_pot_address_in_parent_stack_191, i8* %_new_gep_56
  %37 = bitcast i8* %.v4 to i32*
  %_new_load_201 = load i32, i32* %37, align 4
  %38 = zext i32 %_new_load_201 to i64, !mcsema_real_eip !59
  store i64 %38, i64* %XSI, align 8, !mcsema_real_eip !59
  %EAX_val.86 = load i32, i32* %EAX.70, align 4, !mcsema_real_eip !60
  %39 = zext i32 %EAX_val.86 to i64, !mcsema_real_eip !60
  store i64 %39, i64* %XDX, align 8, !mcsema_real_eip !60
  %AL.87 = bitcast i64* %XAX to i8*, !mcsema_real_eip !61
  store i8 0, i8* %AL.87, align 1, !mcsema_real_eip !61
  %RCX_val.91 = load i64, i64* %XCX, align 8, !mcsema_real_eip !62
  %R8_val.92 = load i64, i64* %R8, align 8, !mcsema_real_eip !62
  %R9_val.93 = load i64, i64* %R9, align 8, !mcsema_real_eip !62
  %_ptr_to_int_202 = ptrtoint i8* %_gep_fix_109 to i64
  %_offset_above_rbp_205 = sub i64 %_ptr_to_int_202, %_local_end_to_int_
  %_pot_address_in_parent_stack_206 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_cond1_207 = icmp ugt i8* %_gep_fix_109, %_local_stack_end_ptr_
  %_cond2_1_208 = icmp ugt i8* %_gep_fix_109, %_parent_stack_end_ptr_
  %_cond2_2_209 = icmp ult i8* %_gep_fix_109, %_parent_stack_start_ptr_
  %_cond2_210 = or i1 %_cond2_1_208, %_cond2_2_209
  %_cond4_211 = icmp ule i8* %_pot_address_in_parent_stack_206, %_parent_stack_end_ptr_
  %_cond1_n_cond2_212 = and i1 %_cond1_207, %_cond2_210
  %_cond1_n_cond2_cond3_213 = and i1 %_cond1_n_cond2_212, %_cond4_211
  %_address_in_parent_stack_bt_215._allin_new_bt_59.v = select i1 %_cond1_n_cond2_cond3_213, i8* %_pot_address_in_parent_stack_206, i8* %_gep_fix_109
  %_address_in_parent_stack_bt_215._allin_new_bt_59 = bitcast i8* %_address_in_parent_stack_bt_215._allin_new_bt_59.v to i64*
  %_new_load_216 = load i64, i64* %_address_in_parent_stack_bt_215._allin_new_bt_59, align 8
  %_new_gep_60 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 16
  %_ptr_to_int_217 = ptrtoint i8* %_new_gep_60 to i64
  %_offset_above_rbp_220 = sub i64 %_ptr_to_int_217, %_local_end_to_int_
  %_pot_address_in_parent_stack_221 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_cond1_222 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_223 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_224 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_225 = or i1 %_cond2_1_223, %_cond2_2_224
  %_cond4_226 = icmp ule i8* %_pot_address_in_parent_stack_221, %_parent_stack_end_ptr_
  %_cond1_n_cond2_227 = and i1 %_cond1_222, %_cond2_225
  %_cond1_n_cond2_cond3_228 = and i1 %_cond1_n_cond2_227, %_cond4_226
  %.v5 = select i1 %_cond1_n_cond2_cond3_228, i8* %_pot_address_in_parent_stack_221, i8* %_new_gep_60
  %40 = bitcast i8* %.v5 to i64*
  %_new_load_231 = load i64, i64* %40, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 24
  %_ptr_to_int_232 = ptrtoint i8* %_new_gep_62 to i64
  %_offset_above_rbp_235 = sub i64 %_ptr_to_int_232, %_local_end_to_int_
  %_pot_address_in_parent_stack_236 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_235
  %_cond1_237 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_238 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_239 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_240 = or i1 %_cond2_1_238, %_cond2_2_239
  %_cond4_241 = icmp ule i8* %_pot_address_in_parent_stack_236, %_parent_stack_end_ptr_
  %_cond1_n_cond2_242 = and i1 %_cond1_237, %_cond2_240
  %_cond1_n_cond2_cond3_243 = and i1 %_cond1_n_cond2_242, %_cond4_241
  %_address_in_parent_stack_bt_245._allin_new_bt_63.v = select i1 %_cond1_n_cond2_cond3_243, i8* %_pot_address_in_parent_stack_236, i8* %_new_gep_62
  %_address_in_parent_stack_bt_245._allin_new_bt_63 = bitcast i8* %_address_in_parent_stack_bt_245._allin_new_bt_63.v to i64*
  %_new_load_246 = load i64, i64* %_address_in_parent_stack_bt_245._allin_new_bt_63, align 8
  %_new_gep_64 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 32
  %_ptr_to_int_247 = ptrtoint i8* %_new_gep_64 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %_local_end_to_int_
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  %.v6 = select i1 %_cond1_n_cond2_cond3_258, i8* %_pot_address_in_parent_stack_251, i8* %_new_gep_64
  %41 = bitcast i8* %.v6 to i64*
  %_new_load_261 = load i64, i64* %41, align 8
  %_new_gep_66 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 40
  %_ptr_to_int_262 = ptrtoint i8* %_new_gep_66 to i64
  %_offset_above_rbp_265 = sub i64 %_ptr_to_int_262, %_local_end_to_int_
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond1_n_cond2_272, %_cond4_271
  %_address_in_parent_stack_bt_275._allin_new_bt_67.v = select i1 %_cond1_n_cond2_cond3_273, i8* %_pot_address_in_parent_stack_266, i8* %_new_gep_66
  %_address_in_parent_stack_bt_275._allin_new_bt_67 = bitcast i8* %_address_in_parent_stack_bt_275._allin_new_bt_67.v to i64*
  %_new_load_276 = load i64, i64* %_address_in_parent_stack_bt_275._allin_new_bt_67, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 48
  %_ptr_to_int_277 = ptrtoint i8* %_new_gep_68 to i64
  %_offset_above_rbp_280 = sub i64 %_ptr_to_int_277, %_local_end_to_int_
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  %.v7 = select i1 %_cond1_n_cond2_cond3_288, i8* %_pot_address_in_parent_stack_281, i8* %_new_gep_68
  %42 = bitcast i8* %.v7 to i64*
  %_new_load_291 = load i64, i64* %42, align 8
  %_new_gep_70 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 56
  %_ptr_to_int_292 = ptrtoint i8* %_new_gep_70 to i64
  %_offset_above_rbp_295 = sub i64 %_ptr_to_int_292, %_local_end_to_int_
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_new_gep_70, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_new_gep_70, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_new_gep_70, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  %_address_in_parent_stack_bt_305._allin_new_bt_71.v = select i1 %_cond1_n_cond2_cond3_303, i8* %_pot_address_in_parent_stack_296, i8* %_new_gep_70
  %_address_in_parent_stack_bt_305._allin_new_bt_71 = bitcast i8* %_address_in_parent_stack_bt_305._allin_new_bt_71.v to i64*
  %_new_load_306 = load i64, i64* %_address_in_parent_stack_bt_305._allin_new_bt_71, align 8
  %_new_gep_72 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 64
  %_ptr_to_int_307 = ptrtoint i8* %_new_gep_72 to i64
  %_offset_above_rbp_310 = sub i64 %_ptr_to_int_307, %_local_end_to_int_
  %_pot_address_in_parent_stack_311 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_310
  %_cond1_312 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond2_1_313 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_2_314 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_315 = or i1 %_cond2_1_313, %_cond2_2_314
  %_cond4_316 = icmp ule i8* %_pot_address_in_parent_stack_311, %_parent_stack_end_ptr_
  %_cond1_n_cond2_317 = and i1 %_cond1_312, %_cond2_315
  %_cond1_n_cond2_cond3_318 = and i1 %_cond1_n_cond2_317, %_cond4_316
  %.v8 = select i1 %_cond1_n_cond2_cond3_318, i8* %_pot_address_in_parent_stack_311, i8* %_new_gep_72
  %43 = bitcast i8* %.v8 to i64*
  %_new_load_321 = load i64, i64* %43, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 72
  %_ptr_to_int_322 = ptrtoint i8* %_new_gep_74 to i64
  %_offset_above_rbp_325 = sub i64 %_ptr_to_int_322, %_local_end_to_int_
  %_pot_address_in_parent_stack_326 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_325
  %_cond1_327 = icmp ugt i8* %_new_gep_74, %_local_stack_end_ptr_
  %_cond2_1_328 = icmp ugt i8* %_new_gep_74, %_parent_stack_end_ptr_
  %_cond2_2_329 = icmp ult i8* %_new_gep_74, %_parent_stack_start_ptr_
  %_cond2_330 = or i1 %_cond2_1_328, %_cond2_2_329
  %_cond4_331 = icmp ule i8* %_pot_address_in_parent_stack_326, %_parent_stack_end_ptr_
  %_cond1_n_cond2_332 = and i1 %_cond1_327, %_cond2_330
  %_cond1_n_cond2_cond3_333 = and i1 %_cond1_n_cond2_332, %_cond4_331
  %_address_in_parent_stack_bt_335._allin_new_bt_75.v = select i1 %_cond1_n_cond2_cond3_333, i8* %_pot_address_in_parent_stack_326, i8* %_new_gep_74
  %_address_in_parent_stack_bt_335._allin_new_bt_75 = bitcast i8* %_address_in_parent_stack_bt_335._allin_new_bt_75.v to i64*
  %_new_load_336 = load i64, i64* %_address_in_parent_stack_bt_335._allin_new_bt_75, align 8
  %_new_gep_76 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i64 80
  %_ptr_to_int_337 = ptrtoint i8* %_new_gep_76 to i64
  %_offset_above_rbp_340 = sub i64 %_ptr_to_int_337, %_local_end_to_int_
  %_pot_address_in_parent_stack_341 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_340
  %_cond1_342 = icmp ugt i8* %_new_gep_76, %_local_stack_end_ptr_
  %_cond2_1_343 = icmp ugt i8* %_new_gep_76, %_parent_stack_end_ptr_
  %_cond2_2_344 = icmp ult i8* %_new_gep_76, %_parent_stack_start_ptr_
  %_cond2_345 = or i1 %_cond2_1_343, %_cond2_2_344
  %_cond4_346 = icmp ule i8* %_pot_address_in_parent_stack_341, %_parent_stack_end_ptr_
  %_cond1_n_cond2_347 = and i1 %_cond1_342, %_cond2_345
  %_cond1_n_cond2_cond3_348 = and i1 %_cond1_n_cond2_347, %_cond4_346
  %.v9 = select i1 %_cond1_n_cond2_cond3_348, i8* %_pot_address_in_parent_stack_341, i8* %_new_gep_76
  %44 = bitcast i8* %.v9 to i64*
  %_new_load_351 = load i64, i64* %44, align 8
  %RSP_val.95 = load i64, i64* %XSP, align 8, !mcsema_real_eip !62
  %45 = add i64 %RSP_val.95, -8
  %_allin_new_bt_80 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_80, align 8, !mcsema_real_eip !62
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_108, i8** %_RSP_ptr_, align 8
  store i64 %45, i64* %XSP, align 8, !mcsema_real_eip !62
  %46 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %38, i64 %39, i64 %RCX_val.91, i64 %R8_val.92, i64 %R9_val.93, i64 %_new_load_216, i64 %_new_load_231, i64 %_new_load_246, i64 %_new_load_261, i64 %_new_load_276, i64 %_new_load_291, i64 %_new_load_306, i64 %_new_load_321, i64 %_new_load_336, i64 %_new_load_351)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_110 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_111 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_110, i64 8
  store i8* %_gep_fix_111, i8** %_RSP_ptr_, align 8
  %EDX.96 = bitcast i64* %XDX to i32*, !mcsema_real_eip !63
  store i64 0, i64* %XDX, align 8, !mcsema_real_eip !63
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_82 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_81, i64 -32
  %47 = trunc i64 %46 to i32
  %48 = bitcast i8* %_new_gep_82 to i32*
  store i32 %47, i32* %48, align 4, !mcsema_real_eip !64
  %EDX_val.104 = load i32, i32* %EDX.96, align 4, !mcsema_real_eip !65
  %49 = zext i32 %EDX_val.104 to i64, !mcsema_real_eip !65
  store i64 %49, i64* %XAX, align 8, !mcsema_real_eip !65
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.105 = load i64, i64* %XSP, align 8, !mcsema_real_eip !66
  %_new_gep_85 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84, i64 32
  %50 = add i64 %RSP_val.105, 32, !mcsema_real_eip !66
  %_trans_p2i_86 = ptrtoint i8* %_new_gep_85 to i64
  %_trans_p2i_87 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84 to i64
  %_trans_xor_88 = xor i64 %_trans_p2i_86, %_trans_p2i_87
  %51 = and i64 %_trans_xor_88, 16, !mcsema_real_eip !66
  %52 = icmp ne i64 %51, 0, !mcsema_real_eip !66
  store i1 %52, i1* %AF, align 1, !mcsema_real_eip !66
  %53 = icmp slt i64 %50, 0
  store i1 %53, i1* %SF, align 1, !mcsema_real_eip !66
  %_trans_icmp_eq_90 = icmp eq i8* %_new_gep_85, null
  store i1 %_trans_icmp_eq_90, i1* %ZF, align 1, !mcsema_real_eip !66
  %54 = xor i64 %_trans_p2i_87, -9223372036854775808, !mcsema_real_eip !66
  %55 = and i64 %_trans_xor_88, %54, !mcsema_real_eip !66
  %56 = icmp slt i64 %55, 0
  store i1 %56, i1* %OF, align 1, !mcsema_real_eip !66
  %_trans_trunc_97 = trunc i64 %_trans_p2i_86 to i8
  %57 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_97), !mcsema_real_eip !66
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  store i1 %59, i1* %PF, align 1, !mcsema_real_eip !66
  %_trans_icmp_ne_99 = icmp ne i64 %RSP_val.105, %_trans_p2i_86
  store i1 %_trans_icmp_ne_99, i1* %CF, align 1, !mcsema_real_eip !66
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_, align 8
  store i64 %50, i64* %XSP, align 8, !mcsema_real_eip !66
  %_offset_above_rbp_355 = sub i64 %_trans_p2i_86, %_local_end_to_int_
  %_pot_address_in_parent_stack_356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_355
  %_cond1_357 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_358 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_359 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_360 = or i1 %_cond2_1_358, %_cond2_2_359
  %_cond4_361 = icmp ule i8* %_pot_address_in_parent_stack_356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_362 = and i1 %_cond1_357, %_cond2_360
  %_cond1_n_cond2_cond3_363 = and i1 %_cond1_n_cond2_362, %_cond4_361
  %_address_in_parent_stack_bt_365._allin_new_bt_101.v = select i1 %_cond1_n_cond2_cond3_363, i8* %_pot_address_in_parent_stack_356, i8* %_new_gep_85
  %_address_in_parent_stack_bt_365._allin_new_bt_101 = bitcast i8* %_address_in_parent_stack_bt_365._allin_new_bt_101.v to i64*
  %_new_load_366 = load i64, i64* %_address_in_parent_stack_bt_365._allin_new_bt_101, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_366 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_366, i64* %XBP, align 8, !mcsema_real_eip !67
  %_new_gep_102 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84, i64 40
  %60 = add i64 %RSP_val.105, 40, !mcsema_real_eip !67
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_, align 8
  store i64 %60, i64* %XSP, align 8, !mcsema_real_eip !67
  %_new_gep_104 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_84, i64 48
  %61 = add i64 %RSP_val.105, 48, !mcsema_real_eip !68
  %_ptr_to_int_367 = ptrtoint i8* %_new_gep_102 to i64
  %_offset_above_rbp_370 = sub i64 %_ptr_to_int_367, %_local_end_to_int_
  %_pot_address_in_parent_stack_371 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_370
  %_cond1_372 = icmp ugt i8* %_new_gep_102, %_local_stack_end_ptr_
  %_cond2_1_373 = icmp ugt i8* %_new_gep_102, %_parent_stack_end_ptr_
  %_cond2_2_374 = icmp ult i8* %_new_gep_102, %_parent_stack_start_ptr_
  %_cond2_375 = or i1 %_cond2_1_373, %_cond2_2_374
  %_cond4_376 = icmp ule i8* %_pot_address_in_parent_stack_371, %_parent_stack_end_ptr_
  %_cond1_n_cond2_377 = and i1 %_cond1_372, %_cond2_375
  %_cond1_n_cond2_cond3_378 = and i1 %_cond1_n_cond2_377, %_cond4_376
  %.v10 = select i1 %_cond1_n_cond2_cond3_378, i8* %_pot_address_in_parent_stack_371, i8* %_new_gep_102
  %62 = bitcast i8* %.v10 to i64*
  %_new_load_381 = load i64, i64* %62, align 8
  store i64 %_new_load_381, i64* %XIP, align 8, !mcsema_real_eip !68
  store volatile i8* %_new_gep_104, i8** %_RSP_ptr_, align 8
  store i64 %61, i64* %XSP, align 8, !mcsema_real_eip !68
  ret void, !mcsema_real_eip !68
}

attributes #0 = { noinline nounwind }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 14}
!8 = !{i64 18}
!9 = !{i64 27}
!10 = !{i64 33}
!11 = !{i64 38}
!12 = !{i64 42}
!13 = !{i64 48}
!14 = !{i64 53}
!15 = !{i64 56}
!16 = !{i64 59}
!17 = !{i64 61}
!18 = !{i64 66}
!19 = !{i64 69}
!20 = !{i64 74}
!21 = !{i64 77}
!22 = !{i64 80}
!23 = !{i64 83}
!24 = !{i64 86}
!25 = !{i64 89}
!26 = !{i64 91}
!27 = !{i64 94}
!28 = !{i64 99}
!29 = !{i64 102}
!30 = !{i64 104}
!31 = !{i64 109}
!32 = !{i64 112}
!33 = !{i64 115}
!34 = !{i64 119}
!35 = !{i64 120}
!36 = !{i64 128}
!37 = !{i64 129}
!38 = !{i64 132}
!39 = !{i64 136}
!40 = !{i64 143}
!41 = !{i64 146}
!42 = !{i64 150}
!43 = !{i64 154}
!44 = !{i64 160}
!45 = !{i64 164}
!46 = !{i64 168}
!47 = !{i64 176}
!48 = !{i64 181}
!49 = !{i64 189}
!50 = !{i64 194}
!51 = !{i64 197}
!52 = !{i64 202}
!53 = !{i64 205}
!54 = !{i64 208}
!55 = !{i64 211}
!56 = !{i64 214}
!57 = !{i64 216}
!58 = !{i64 221}
!59 = !{i64 231}
!60 = !{i64 234}
!61 = !{i64 236}
!62 = !{i64 238}
!63 = !{i64 243}
!64 = !{i64 245}
!65 = !{i64 248}
!66 = !{i64 250}
!67 = !{i64 254}
!68 = !{i64 255}
