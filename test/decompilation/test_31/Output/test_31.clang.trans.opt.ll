; ModuleID = 'Output/test_31.clang.trans.opt.bc'
source_filename = "Output/test_31.clang.bc"
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
module asm "  .globl sub_60;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_60(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x99 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
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
  store i64 1, i64* %XAX, align 8, !mcsema_real_eip !5
  %16 = add i64 %RSP_val.1, -16, !mcsema_real_eip !6
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.6 = load i32, i32* %EDI.5, align 4, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.6, i32* %17, align 4, !mcsema_real_eip !6
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %18 = add i64 %RBP_val.7, -8, !mcsema_real_eip !7
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !7
  %EAX_val.9 = load i32, i32* %EAX.8, align 4, !mcsema_real_eip !7
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !7
  %20 = load i32, i32* %19, align 4, !mcsema_real_eip !7
  %21 = sub i32 %EAX_val.9, %20, !mcsema_real_eip !7
  %22 = xor i32 %21, %EAX_val.9, !mcsema_real_eip !7
  %23 = xor i32 %22, %20, !mcsema_real_eip !7
  %24 = and i32 %23, 16, !mcsema_real_eip !7
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !7
  store i1 %25, i1* %AF, align 1, !mcsema_real_eip !7
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !7
  %27 = tail call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !7
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  store i1 %29, i1* %PF, align 1, !mcsema_real_eip !7
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !7
  store i1 %30, i1* %ZF, align 1, !mcsema_real_eip !7
  %31 = icmp slt i32 %21, 0
  store i1 %31, i1* %SF, align 1, !mcsema_real_eip !7
  %32 = icmp ult i32 %EAX_val.9, %20, !mcsema_real_eip !7
  store i1 %32, i1* %CF, align 1, !mcsema_real_eip !7
  %33 = xor i32 %20, %EAX_val.9, !mcsema_real_eip !7
  %34 = and i32 %22, %33, !mcsema_real_eip !7
  %35 = icmp slt i32 %34, 0
  store i1 %35, i1* %OF, align 1, !mcsema_real_eip !7
  br i1 %30, label %block_0x53, label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %entry
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !9
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !9
  %36 = load i32, i32* %19, align 4, !mcsema_real_eip !10
  %37 = sub i32 0, %36, !mcsema_real_eip !10
  %38 = xor i32 %36, %37, !mcsema_real_eip !10
  %39 = and i32 %38, 16, !mcsema_real_eip !10
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !10
  store i1 %40, i1* %AF, align 1, !mcsema_real_eip !10
  %41 = trunc i32 %37 to i8, !mcsema_real_eip !10
  %42 = tail call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !10
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !10
  %45 = icmp eq i32 %36, 0
  store i1 %45, i1* %ZF, align 1, !mcsema_real_eip !10
  %46 = icmp slt i32 %37, 0
  store i1 %46, i1* %SF, align 1, !mcsema_real_eip !10
  %47 = icmp ne i32 %36, 0
  store i1 %47, i1* %CF, align 1, !mcsema_real_eip !10
  %48 = and i32 %36, %37, !mcsema_real_eip !10
  %49 = icmp slt i32 %48, 0
  store i1 %49, i1* %OF, align 1, !mcsema_real_eip !10
  br i1 %45, label %block_0x53, label %block_0x30, !mcsema_real_eip !11

block_0x30:                                       ; preds = %block_0x19
  %50 = load i32, i32* %19, align 4, !mcsema_real_eip !12
  %51 = add i32 %50, -1
  %52 = xor i32 %51, %50, !mcsema_real_eip !13
  %53 = and i32 %52, 16, !mcsema_real_eip !13
  %54 = icmp ne i32 %53, 0, !mcsema_real_eip !13
  store i1 %54, i1* %AF, align 1, !mcsema_real_eip !13
  %55 = trunc i32 %51 to i8, !mcsema_real_eip !13
  %56 = tail call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !13
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  store i1 %58, i1* %PF, align 1, !mcsema_real_eip !13
  %59 = icmp eq i32 %51, 0, !mcsema_real_eip !13
  store i1 %59, i1* %ZF, align 1, !mcsema_real_eip !13
  %60 = icmp slt i32 %51, 0
  store i1 %60, i1* %SF, align 1, !mcsema_real_eip !13
  %61 = icmp eq i32 %50, 0
  store i1 %61, i1* %CF, align 1, !mcsema_real_eip !13
  %62 = and i32 %52, %50, !mcsema_real_eip !13
  %63 = icmp slt i32 %62, 0
  store i1 %63, i1* %OF, align 1, !mcsema_real_eip !13
  %64 = zext i32 %51 to i64
  store i64 %64, i64* %XAX, align 8, !mcsema_real_eip !13
  store i64 %64, i64* %XDI, align 8, !mcsema_real_eip !14
  %RSP_val.23 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %65 = add i64 %RSP_val.23, -8
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !15
  store i64 -4981261766360305936, i64* %66, align 8, !mcsema_real_eip !15
  store i64 %65, i64* %XSP, align 8, !mcsema_real_eip !15
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !15
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %67 = add i64 %RBP_val.24, -8, !mcsema_real_eip !16
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !16
  %69 = load i32, i32* %68, align 4, !mcsema_real_eip !16
  %70 = add i32 %69, -2
  %71 = xor i32 %70, %69, !mcsema_real_eip !17
  %72 = and i32 %71, 16, !mcsema_real_eip !17
  %73 = icmp ne i32 %72, 0, !mcsema_real_eip !17
  store i1 %73, i1* %AF, align 1, !mcsema_real_eip !17
  %74 = trunc i32 %70 to i8, !mcsema_real_eip !17
  %75 = tail call i8 @llvm.ctpop.i8(i8 %74), !mcsema_real_eip !17
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  store i1 %77, i1* %PF, align 1, !mcsema_real_eip !17
  %78 = icmp eq i32 %70, 0, !mcsema_real_eip !17
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !17
  %79 = icmp slt i32 %70, 0
  store i1 %79, i1* %SF, align 1, !mcsema_real_eip !17
  %80 = icmp ult i32 %69, 2, !mcsema_real_eip !17
  store i1 %80, i1* %CF, align 1, !mcsema_real_eip !17
  %81 = and i32 %71, %69, !mcsema_real_eip !17
  %82 = icmp slt i32 %81, 0
  store i1 %82, i1* %OF, align 1, !mcsema_real_eip !17
  %83 = zext i32 %70 to i64, !mcsema_real_eip !17
  store i64 %83, i64* %XDI, align 8, !mcsema_real_eip !17
  %84 = add i64 %RBP_val.24, -12, !mcsema_real_eip !18
  %EAX_val.29 = load i32, i32* %EAX.8, align 4, !mcsema_real_eip !18
  %85 = inttoptr i64 %84 to i32*, !mcsema_real_eip !18
  store i32 %EAX_val.29, i32* %85, align 4, !mcsema_real_eip !18
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !19
  %86 = add i64 %RSP_val.30, -8
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !19
  store i64 -4981261766360305936, i64* %87, align 8, !mcsema_real_eip !19
  store i64 %86, i64* %XSP, align 8, !mcsema_real_eip !19
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !19
  %RBP_val.31 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %88 = add i64 %RBP_val.31, -12, !mcsema_real_eip !20
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !20
  %90 = load i32, i32* %89, align 4, !mcsema_real_eip !20
  %EAX_val.35 = load i32, i32* %EAX.8, align 4, !mcsema_real_eip !21
  %91 = add i32 %EAX_val.35, %90, !mcsema_real_eip !21
  %92 = xor i32 %91, %90, !mcsema_real_eip !21
  %93 = xor i32 %92, %EAX_val.35, !mcsema_real_eip !21
  %94 = and i32 %93, 16, !mcsema_real_eip !21
  %95 = icmp ne i32 %94, 0, !mcsema_real_eip !21
  store i1 %95, i1* %AF, align 1, !mcsema_real_eip !21
  %96 = icmp slt i32 %91, 0
  store i1 %96, i1* %SF, align 1, !mcsema_real_eip !21
  %97 = icmp eq i32 %91, 0, !mcsema_real_eip !21
  store i1 %97, i1* %ZF, align 1, !mcsema_real_eip !21
  %98 = xor i32 %90, -2147483648, !mcsema_real_eip !21
  %99 = xor i32 %98, %EAX_val.35, !mcsema_real_eip !21
  %100 = and i32 %92, %99, !mcsema_real_eip !21
  %101 = icmp slt i32 %100, 0
  store i1 %101, i1* %OF, align 1, !mcsema_real_eip !21
  %102 = trunc i32 %91 to i8, !mcsema_real_eip !21
  %103 = tail call i8 @llvm.ctpop.i8(i8 %102), !mcsema_real_eip !21
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  store i1 %105, i1* %PF, align 1, !mcsema_real_eip !21
  %106 = icmp ult i32 %91, %90, !mcsema_real_eip !21
  store i1 %106, i1* %CF, align 1, !mcsema_real_eip !21
  %107 = zext i32 %91 to i64, !mcsema_real_eip !21
  store i64 %107, i64* %XDI, align 8, !mcsema_real_eip !21
  br label %block_0x53, !mcsema_real_eip !22

block_0x53:                                       ; preds = %entry, %block_0x19, %block_0x30
  %.sink1.in = phi i64 [ %RBP_val.31, %block_0x30 ], [ %RBP_val.7, %block_0x19 ], [ %RBP_val.7, %entry ]
  %EDI_val.38.sink = phi i32 [ %91, %block_0x30 ], [ 1, %block_0x19 ], [ 1, %entry ]
  %.sink1 = add i64 %.sink1.in, -4
  %108 = inttoptr i64 %.sink1 to i32*
  store i32 %EDI_val.38.sink, i32* %108, align 4
  %RBP_val.39 = load i64, i64* %XBP, align 8, !mcsema_real_eip !22
  %109 = add i64 %RBP_val.39, -4, !mcsema_real_eip !22
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !22
  %111 = load i32, i32* %110, align 4, !mcsema_real_eip !22
  %112 = zext i32 %111 to i64, !mcsema_real_eip !22
  store i64 %112, i64* %XAX, align 8, !mcsema_real_eip !22
  %RSP_val.40 = load i64, i64* %XSP, align 8, !mcsema_real_eip !23
  %113 = add i64 %RSP_val.40, 16, !mcsema_real_eip !23
  %114 = xor i64 %113, %RSP_val.40, !mcsema_real_eip !23
  %115 = and i64 %114, 16
  %116 = icmp eq i64 %115, 0
  store i1 %116, i1* %AF, align 1, !mcsema_real_eip !23
  %117 = icmp slt i64 %113, 0
  store i1 %117, i1* %SF, align 1, !mcsema_real_eip !23
  %118 = icmp eq i64 %113, 0, !mcsema_real_eip !23
  store i1 %118, i1* %ZF, align 1, !mcsema_real_eip !23
  %119 = xor i64 %RSP_val.40, -9223372036854775808, !mcsema_real_eip !23
  %120 = and i64 %114, %119, !mcsema_real_eip !23
  %121 = icmp slt i64 %120, 0
  store i1 %121, i1* %OF, align 1, !mcsema_real_eip !23
  %122 = trunc i64 %113 to i8, !mcsema_real_eip !23
  %123 = tail call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !23
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  store i1 %125, i1* %PF, align 1, !mcsema_real_eip !23
  %126 = icmp ugt i64 %RSP_val.40, -17
  store i1 %126, i1* %CF, align 1, !mcsema_real_eip !23
  store i64 %113, i64* %XSP, align 8, !mcsema_real_eip !23
  %127 = inttoptr i64 %113 to i64*, !mcsema_real_eip !24
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !24
  store i64 %128, i64* %XBP, align 8, !mcsema_real_eip !24
  %129 = add i64 %RSP_val.40, 24, !mcsema_real_eip !24
  store i64 %129, i64* %XSP, align 8, !mcsema_real_eip !24
  %130 = add i64 %RSP_val.40, 32, !mcsema_real_eip !25
  %131 = inttoptr i64 %129 to i64*, !mcsema_real_eip !25
  %132 = load i64, i64* %131, align 8, !mcsema_real_eip !25
  store i64 %132, i64* %XIP, align 8, !mcsema_real_eip !25
  store i64 %130, i64* %XSP, align 8, !mcsema_real_eip !25
  ret void, !mcsema_real_eip !25
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !26
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !26
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !26
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !26
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !26
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !26
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !26
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !26
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !26
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !26
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !26
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !26
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !26
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !26
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !26
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !26
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !26
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !26
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !26
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !26
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !26
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !26
  %RSP_val.44 = load i64, i64* %XSP, align 8, !mcsema_real_eip !26
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.44, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !27
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.44, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16
  %5 = icmp eq i64 %4, 0
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !28
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !28
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !28
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !28
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !28
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !28
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !28
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 5, i64* %XDI, align 8, !mcsema_real_eip !29
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !30
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %14 = add i64 %RSP_val.44, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !31
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !31
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, align 8, !mcsema_real_eip !32
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.50 = load i32, i32* %EAX.49, align 4, !mcsema_real_eip !33
  %15 = zext i32 %EAX_val.50 to i64, !mcsema_real_eip !33
  store i64 %15, i64* %XSI, align 8, !mcsema_real_eip !33
  %AL.51 = bitcast i64* %XAX to i8*, !mcsema_real_eip !34
  store i8 0, i8* %AL.51, align 1, !mcsema_real_eip !34
  %RDX_val.54 = load i64, i64* %XDX, align 8, !mcsema_real_eip !35
  %RCX_val.55 = load i64, i64* %XCX, align 8, !mcsema_real_eip !35
  %R8_val.56 = load i64, i64* %R8, align 8, !mcsema_real_eip !35
  %R9_val.57 = load i64, i64* %R9, align 8, !mcsema_real_eip !35
  %_allin_new_bt_20 = bitcast i8* %_gep_fix_ to i64*
  %16 = load i64, i64* %_allin_new_bt_20, align 8, !mcsema_real_eip !35
  %_new_gep_21 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 16
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %17 = load i64, i64* %_allin_new_bt_22, align 8, !mcsema_real_eip !35
  %_new_gep_23 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = load i64, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !35
  %_new_gep_25 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %19 = load i64, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !35
  %_new_gep_27 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %20 = load i64, i64* %_allin_new_bt_28, align 8, !mcsema_real_eip !35
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 48
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %21 = load i64, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !35
  %RSP_val.59 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %22 = add i64 %RSP_val.59, -8
  %_allin_new_bt_33 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !35
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i8** %_RSP_ptr_, align 8
  store i64 %22, i64* %XSP, align 8, !mcsema_real_eip !35
  %23 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x99 to i64), i64 %15, i64 %RDX_val.54, i64 %RCX_val.55, i64 %R8_val.56, i64 %R9_val.57, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_61 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_61, i64 8
  store i8* %_gep_fix_62, i8** %_RSP_ptr_, align 8
  %ESI.60 = bitcast i64* %XSI to i32*, !mcsema_real_eip !36
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !36
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_345 = load i8*, i8** %12, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_345, i64 -8
  %24 = trunc i64 %23 to i32
  %25 = bitcast i8* %_new_gep_35 to i32*
  store i32 %24, i32* %25, align 4, !mcsema_real_eip !37
  %ESI_val.68 = load i32, i32* %ESI.60, align 4, !mcsema_real_eip !38
  %26 = zext i32 %ESI_val.68 to i64, !mcsema_real_eip !38
  store i64 %26, i64* %XAX, align 8, !mcsema_real_eip !38
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.69 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %_new_gep_38 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 16
  %27 = add i64 %RSP_val.69, 16, !mcsema_real_eip !39
  %_trans_p2i_39 = ptrtoint i8* %_new_gep_38 to i64
  %_trans_p2i_40 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 to i64
  %_trans_xor_41 = xor i64 %_trans_p2i_39, %_trans_p2i_40
  %28 = and i64 %_trans_xor_41, 16
  %29 = icmp eq i64 %28, 0
  store i1 %29, i1* %AF, align 1, !mcsema_real_eip !39
  %30 = icmp slt i64 %27, 0
  store i1 %30, i1* %SF, align 1, !mcsema_real_eip !39
  %_trans_icmp_eq_43 = icmp eq i8* %_new_gep_38, null
  store i1 %_trans_icmp_eq_43, i1* %ZF, align 1, !mcsema_real_eip !39
  %31 = xor i64 %_trans_p2i_40, -9223372036854775808, !mcsema_real_eip !39
  %32 = and i64 %_trans_xor_41, %31, !mcsema_real_eip !39
  %33 = icmp slt i64 %32, 0
  store i1 %33, i1* %OF, align 1, !mcsema_real_eip !39
  %_trans_trunc_50 = trunc i64 %_trans_p2i_39 to i8
  %34 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_50), !mcsema_real_eip !39
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  store i1 %36, i1* %PF, align 1, !mcsema_real_eip !39
  %_trans_icmp_ne_52 = icmp ne i64 %RSP_val.69, %_trans_p2i_39
  store i1 %_trans_icmp_ne_52, i1* %CF, align 1, !mcsema_real_eip !39
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_, align 8
  store i64 %27, i64* %XSP, align 8, !mcsema_real_eip !39
  %_allin_new_bt_54 = bitcast i8* %_new_gep_38 to i64*
  %37 = load i64, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !40
  store volatile i64 %37, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %37, i64* %XBP, align 8, !mcsema_real_eip !40
  %_new_gep_55 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 24
  %38 = add i64 %RSP_val.69, 24, !mcsema_real_eip !40
  store volatile i8* %_new_gep_55, i8** %_RSP_ptr_, align 8
  store i64 %38, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_57 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 32
  %39 = add i64 %RSP_val.69, 32, !mcsema_real_eip !41
  %_allin_new_bt_58 = bitcast i8* %_new_gep_55 to i64*
  %40 = load i64, i64* %_allin_new_bt_58, align 8, !mcsema_real_eip !41
  store i64 %40, i64* %XIP, align 8, !mcsema_real_eip !41
  store volatile i8* %_new_gep_57, i8** %_RSP_ptr_, align 8
  store i64 %39, i64* %XSP, align 8, !mcsema_real_eip !41
  ret void, !mcsema_real_eip !41
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

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
  store i64 1, i64* %XAX, align 8, !mcsema_real_eip !5
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 16
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.6 = load i32, i32* %EDI.5, align 4, !mcsema_real_eip !6
  %3 = bitcast i8* %_new_gep_14 to i32*
  store i32 %EDI_val.6, i32* %3, align 8, !mcsema_real_eip !6
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %4 = bitcast i8* %_new_gep_14 to i32*
  %5 = sub i32 1, %EDI_val.6, !mcsema_real_eip !7
  %6 = xor i32 %5, %EDI_val.6, !mcsema_real_eip !7
  %7 = and i32 %6, 16, !mcsema_real_eip !7
  %8 = icmp ne i32 %7, 0, !mcsema_real_eip !7
  store i1 %8, i1* %AF, align 1, !mcsema_real_eip !7
  %9 = trunc i32 %5 to i8, !mcsema_real_eip !7
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !7
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  store i1 %12, i1* %PF, align 1, !mcsema_real_eip !7
  %13 = icmp eq i32 %5, 0, !mcsema_real_eip !7
  store i1 %13, i1* %ZF, align 1, !mcsema_real_eip !7
  %14 = icmp slt i32 %5, 0
  store i1 %14, i1* %SF, align 1, !mcsema_real_eip !7
  %15 = icmp ugt i32 %EDI_val.6, 1, !mcsema_real_eip !7
  store i1 %15, i1* %CF, align 1, !mcsema_real_eip !7
  %16 = and i32 %5, %EDI_val.6, !mcsema_real_eip !7
  %17 = icmp slt i32 %16, 0
  store i1 %17, i1* %OF, align 1, !mcsema_real_eip !7
  br i1 %13, label %block_0x53, label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %entry
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !9
  %_new_load_91 = load i32, i32* %4, align 8
  %18 = sub i32 0, %_new_load_91, !mcsema_real_eip !10
  %19 = xor i32 %_new_load_91, %18, !mcsema_real_eip !10
  %20 = and i32 %19, 16, !mcsema_real_eip !10
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !10
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !10
  %22 = trunc i32 %18 to i8, !mcsema_real_eip !10
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !10
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !10
  %26 = icmp eq i32 %_new_load_91, 0
  store i1 %26, i1* %ZF, align 1, !mcsema_real_eip !10
  %27 = icmp slt i32 %18, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !10
  %28 = icmp ne i32 %_new_load_91, 0
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !10
  %29 = and i32 %_new_load_91, %18, !mcsema_real_eip !10
  %30 = icmp slt i32 %29, 0
  store i1 %30, i1* %OF, align 1, !mcsema_real_eip !10
  br i1 %26, label %block_0x53, label %block_0x30, !mcsema_real_eip !11

block_0x30:                                       ; preds = %block_0x19
  %_new_load_106 = load i32, i32* %4, align 8
  %31 = add i32 %_new_load_106, -1
  %32 = xor i32 %31, %_new_load_106, !mcsema_real_eip !13
  %33 = and i32 %32, 16, !mcsema_real_eip !13
  %34 = icmp ne i32 %33, 0, !mcsema_real_eip !13
  store i1 %34, i1* %AF, align 1, !mcsema_real_eip !13
  %35 = trunc i32 %31 to i8, !mcsema_real_eip !13
  %36 = call i8 @llvm.ctpop.i8(i8 %35), !mcsema_real_eip !13
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  store i1 %38, i1* %PF, align 1, !mcsema_real_eip !13
  %39 = icmp eq i32 %31, 0, !mcsema_real_eip !13
  store i1 %39, i1* %ZF, align 1, !mcsema_real_eip !13
  %40 = icmp slt i32 %31, 0
  store i1 %40, i1* %SF, align 1, !mcsema_real_eip !13
  %41 = icmp eq i32 %_new_load_106, 0
  store i1 %41, i1* %CF, align 1, !mcsema_real_eip !13
  %42 = and i32 %32, %_new_load_106, !mcsema_real_eip !13
  %43 = icmp slt i32 %42, 0
  store i1 %43, i1* %OF, align 1, !mcsema_real_eip !13
  %44 = zext i32 %31 to i64
  store i64 %44, i64* %XAX, align 8, !mcsema_real_eip !13
  store i64 %44, i64* %XDI, align 8, !mcsema_real_eip !14
  %_new_gep_29 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 0
  %45 = add i64 %RSP_val.1, -32
  %_allin_new_bt_30 = bitcast [32 x i8]* %_local_stack_start_ptr_2 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %45, i64* %XSP, align 8, !mcsema_real_eip !15
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* nonnull %_new_gep_29, i8* nonnull %_local_stack_end_ptr_, i8* nonnull %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -8
  %46 = ptrtoint i8* %_new_gep_32 to i64
  %_offset_above_rbp_110 = sub i64 %46, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %_new_gep_32, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %_new_gep_32, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %_new_gep_32, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  %.v4 = select i1 %_cond1_n_cond2_cond3_118, i8* %_pot_address_in_parent_stack_111, i8* %_new_gep_32
  %47 = bitcast i8* %.v4 to i32*
  %_new_load_121 = load i32, i32* %47, align 4
  %48 = add i32 %_new_load_121, -2
  %49 = xor i32 %48, %_new_load_121, !mcsema_real_eip !17
  %50 = and i32 %49, 16, !mcsema_real_eip !17
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !17
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !17
  %52 = trunc i32 %48 to i8, !mcsema_real_eip !17
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !17
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  store i1 %55, i1* %PF, align 1, !mcsema_real_eip !17
  %56 = icmp eq i32 %48, 0, !mcsema_real_eip !17
  store i1 %56, i1* %ZF, align 1, !mcsema_real_eip !17
  %57 = icmp slt i32 %48, 0
  store i1 %57, i1* %SF, align 1, !mcsema_real_eip !17
  %58 = icmp ult i32 %_new_load_121, 2, !mcsema_real_eip !17
  store i1 %58, i1* %CF, align 1, !mcsema_real_eip !17
  %59 = and i32 %49, %_new_load_121, !mcsema_real_eip !17
  %60 = icmp slt i32 %59, 0
  store i1 %60, i1* %OF, align 1, !mcsema_real_eip !17
  %61 = zext i32 %48 to i64, !mcsema_real_eip !17
  store i64 %61, i64* %XDI, align 8, !mcsema_real_eip !17
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -12
  %EAX_val.29 = load i32, i32* %EAX.8, align 4, !mcsema_real_eip !18
  %62 = bitcast i8* %_new_gep_35 to i32*
  store i32 %EAX_val.29, i32* %62, align 4, !mcsema_real_eip !18
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !19
  %_new_gep_38 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 -8
  %63 = add i64 %RSP_val.30, -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !19
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_, align 8
  store i64 %63, i64* %XSP, align 8, !mcsema_real_eip !19
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_38, i8* nonnull %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_75 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_76 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_75, i64 8
  store i8* %_gep_fix_76, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -12
  %64 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_125 = sub i64 %64, %_local_end_to_int_
  %_pot_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_125
  %_cond1_127 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_128 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_129 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_130 = or i1 %_cond2_1_128, %_cond2_2_129
  %_cond4_131 = icmp ule i8* %_pot_address_in_parent_stack_126, %_parent_stack_end_ptr_
  %_cond1_n_cond2_132 = and i1 %_cond1_127, %_cond2_130
  %_cond1_n_cond2_cond3_133 = and i1 %_cond1_n_cond2_132, %_cond4_131
  %_address_in_parent_stack_bt_135..v = select i1 %_cond1_n_cond2_cond3_133, i8* %_pot_address_in_parent_stack_126, i8* %_new_gep_41
  %_address_in_parent_stack_bt_135. = bitcast i8* %_address_in_parent_stack_bt_135..v to i32*
  %_new_load_136 = load i32, i32* %_address_in_parent_stack_bt_135., align 4
  %EAX_val.35 = load i32, i32* %EAX.8, align 4, !mcsema_real_eip !21
  %65 = add i32 %EAX_val.35, %_new_load_136, !mcsema_real_eip !21
  %66 = xor i32 %65, %_new_load_136, !mcsema_real_eip !21
  %67 = xor i32 %66, %EAX_val.35, !mcsema_real_eip !21
  %68 = and i32 %67, 16, !mcsema_real_eip !21
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !21
  store i1 %69, i1* %AF, align 1, !mcsema_real_eip !21
  %70 = icmp slt i32 %65, 0
  store i1 %70, i1* %SF, align 1, !mcsema_real_eip !21
  %71 = icmp eq i32 %65, 0, !mcsema_real_eip !21
  store i1 %71, i1* %ZF, align 1, !mcsema_real_eip !21
  %72 = xor i32 %_new_load_136, -2147483648, !mcsema_real_eip !21
  %73 = xor i32 %72, %EAX_val.35, !mcsema_real_eip !21
  %74 = and i32 %66, %73, !mcsema_real_eip !21
  %75 = icmp slt i32 %74, 0
  store i1 %75, i1* %OF, align 1, !mcsema_real_eip !21
  %76 = trunc i32 %65 to i8, !mcsema_real_eip !21
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !21
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  store i1 %79, i1* %PF, align 1, !mcsema_real_eip !21
  %80 = icmp ult i32 %65, %_new_load_136, !mcsema_real_eip !21
  store i1 %80, i1* %CF, align 1, !mcsema_real_eip !21
  %81 = zext i32 %65 to i64, !mcsema_real_eip !21
  store i64 %81, i64* %XDI, align 8, !mcsema_real_eip !21
  br label %block_0x53, !mcsema_real_eip !22

block_0x53:                                       ; preds = %entry, %block_0x19, %block_0x30
  %_RBP_ptr_.0._load_rbp_ptr_40.pn = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, %block_0x30 ], [ %_new_gep_, %block_0x19 ], [ %_new_gep_, %entry ]
  %EDI_val.38.sink = phi i32 [ %65, %block_0x30 ], [ 1, %block_0x19 ], [ 1, %entry ]
  %_allin_new_bt_45.sink.in = getelementptr i8, i8* %_RBP_ptr_.0._load_rbp_ptr_40.pn, i64 -4
  %82 = bitcast i8* %_allin_new_bt_45.sink.in to i32*
  store i32 %EDI_val.38.sink, i32* %82, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -4
  %83 = ptrtoint i8* %_new_gep_47 to i64
  %_offset_above_rbp_140 = sub i64 %83, %_local_end_to_int_
  %_pot_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_140
  %_cond1_142 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_143 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_144 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_145 = or i1 %_cond2_1_143, %_cond2_2_144
  %_cond4_146 = icmp ule i8* %_pot_address_in_parent_stack_141, %_parent_stack_end_ptr_
  %_cond1_n_cond2_147 = and i1 %_cond1_142, %_cond2_145
  %_cond1_n_cond2_cond3_148 = and i1 %_cond1_n_cond2_147, %_cond4_146
  %_address_in_parent_stack_bt_150..v = select i1 %_cond1_n_cond2_cond3_148, i8* %_pot_address_in_parent_stack_141, i8* %_new_gep_47
  %_address_in_parent_stack_bt_150. = bitcast i8* %_address_in_parent_stack_bt_150..v to i32*
  %_new_load_151 = load i32, i32* %_address_in_parent_stack_bt_150., align 4
  %84 = zext i32 %_new_load_151 to i64, !mcsema_real_eip !22
  store i64 %84, i64* %XAX, align 8, !mcsema_real_eip !22
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.40 = load i64, i64* %XSP, align 8, !mcsema_real_eip !23
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 16
  %85 = add i64 %RSP_val.40, 16, !mcsema_real_eip !23
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %86 = and i64 %_trans_xor_53, 16
  %87 = icmp eq i64 %86, 0
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !23
  %88 = icmp slt i64 %85, 0
  store i1 %88, i1* %SF, align 1, !mcsema_real_eip !23
  %_trans_icmp_eq_55 = icmp eq i8* %_new_gep_50, null
  store i1 %_trans_icmp_eq_55, i1* %ZF, align 1, !mcsema_real_eip !23
  %89 = xor i64 %_trans_p2i_52, -9223372036854775808, !mcsema_real_eip !23
  %90 = and i64 %_trans_xor_53, %89, !mcsema_real_eip !23
  %91 = icmp slt i64 %90, 0
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !23
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %92 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !23
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !23
  %_trans_icmp_ne_64 = icmp ne i64 %RSP_val.40, %_trans_p2i_51
  store i1 %_trans_icmp_ne_64, i1* %CF, align 1, !mcsema_real_eip !23
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %85, i64* %XSP, align 8, !mcsema_real_eip !23
  %_offset_above_rbp_155 = sub i64 %_trans_p2i_51, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  %.v3 = select i1 %_cond1_n_cond2_cond3_163, i8* %_pot_address_in_parent_stack_156, i8* %_new_gep_50
  %95 = bitcast i8* %.v3 to i64*
  %_new_load_166 = load i64, i64* %95, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_166 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_166, i64* %XBP, align 8, !mcsema_real_eip !24
  %_new_gep_67 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 24
  %96 = add i64 %RSP_val.40, 24, !mcsema_real_eip !24
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_, align 8
  store i64 %96, i64* %XSP, align 8, !mcsema_real_eip !24
  %_new_gep_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 32
  %97 = add i64 %RSP_val.40, 32, !mcsema_real_eip !25
  %_ptr_to_int_167 = ptrtoint i8* %_new_gep_67 to i64
  %_offset_above_rbp_170 = sub i64 %_ptr_to_int_167, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  %_address_in_parent_stack_bt_180._allin_new_bt_70.v = select i1 %_cond1_n_cond2_cond3_178, i8* %_pot_address_in_parent_stack_171, i8* %_new_gep_67
  %_address_in_parent_stack_bt_180._allin_new_bt_70 = bitcast i8* %_address_in_parent_stack_bt_180._allin_new_bt_70.v to i64*
  %_new_load_181 = load i64, i64* %_address_in_parent_stack_bt_180._allin_new_bt_70, align 8
  store i64 %_new_load_181, i64* %XIP, align 8, !mcsema_real_eip !25
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_, align 8
  store i64 %97, i64* %XSP, align 8, !mcsema_real_eip !25
  ret void, !mcsema_real_eip !25
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60.2(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !26
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !26
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !26
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !26
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !26
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !26
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !26
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !26
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !26
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !26
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !26
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !26
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !26
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !26
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !26
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !26
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !26
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !26
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !26
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !26
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !26
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !26
  %RSP_val.44 = load i64, i64* %XSP, align 8, !mcsema_real_eip !26
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.44, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !27
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.44, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !28
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !28
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !28
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !28
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !28
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !28
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !28
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !28
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 5, i64* %XDI, align 8, !mcsema_real_eip !29
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !30
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.44, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !31
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !31
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, align 8, !mcsema_real_eip !32
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.50 = load i32, i32* %EAX.49, align 4, !mcsema_real_eip !33
  %13 = zext i32 %EAX_val.50 to i64, !mcsema_real_eip !33
  store i64 %13, i64* %XSI, align 8, !mcsema_real_eip !33
  %AL.51 = bitcast i64* %XAX to i8*, !mcsema_real_eip !34
  store i8 0, i8* %AL.51, align 1, !mcsema_real_eip !34
  %RDX_val.54 = load i64, i64* %XDX, align 8, !mcsema_real_eip !35
  %RCX_val.55 = load i64, i64* %XCX, align 8, !mcsema_real_eip !35
  %R8_val.56 = load i64, i64* %R8, align 8, !mcsema_real_eip !35
  %R9_val.57 = load i64, i64* %R9, align 8, !mcsema_real_eip !35
  %_ptr_to_int_ = ptrtoint i8* %_gep_fix_ to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_gep_fix_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_gep_fix_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_gep_fix_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_gep_fix_
  %14 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %14, align 8
  %_new_gep_21 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 16
  %_ptr_to_int_63 = ptrtoint i8* %_new_gep_21 to i64
  %_offset_above_rbp_66 = sub i64 %_ptr_to_int_63, %_local_end_to_int_
  %_pot_address_in_parent_stack_67 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_66
  %_cond1_68 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_69 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_70 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_71 = or i1 %_cond2_1_69, %_cond2_2_70
  %_cond4_72 = icmp ule i8* %_pot_address_in_parent_stack_67, %_parent_stack_end_ptr_
  %_cond1_n_cond2_73 = and i1 %_cond1_68, %_cond2_71
  %_cond1_n_cond2_cond3_74 = and i1 %_cond1_n_cond2_73, %_cond4_72
  %_address_in_parent_stack_bt_76._allin_new_bt_22.v = select i1 %_cond1_n_cond2_cond3_74, i8* %_pot_address_in_parent_stack_67, i8* %_new_gep_21
  %_address_in_parent_stack_bt_76._allin_new_bt_22 = bitcast i8* %_address_in_parent_stack_bt_76._allin_new_bt_22.v to i64*
  %_new_load_77 = load i64, i64* %_address_in_parent_stack_bt_76._allin_new_bt_22, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %_ptr_to_int_78 = ptrtoint i8* %_new_gep_23 to i64
  %_offset_above_rbp_81 = sub i64 %_ptr_to_int_78, %_local_end_to_int_
  %_pot_address_in_parent_stack_82 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_81
  %_cond1_83 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_84 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_85 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_86 = or i1 %_cond2_1_84, %_cond2_2_85
  %_cond4_87 = icmp ule i8* %_pot_address_in_parent_stack_82, %_parent_stack_end_ptr_
  %_cond1_n_cond2_88 = and i1 %_cond1_83, %_cond2_86
  %_cond1_n_cond2_cond3_89 = and i1 %_cond1_n_cond2_88, %_cond4_87
  %.v2 = select i1 %_cond1_n_cond2_cond3_89, i8* %_pot_address_in_parent_stack_82, i8* %_new_gep_23
  %15 = bitcast i8* %.v2 to i64*
  %_new_load_92 = load i64, i64* %15, align 8
  %_new_gep_25 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %_ptr_to_int_93 = ptrtoint i8* %_new_gep_25 to i64
  %_offset_above_rbp_96 = sub i64 %_ptr_to_int_93, %_local_end_to_int_
  %_pot_address_in_parent_stack_97 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_96
  %_cond1_98 = icmp ugt i8* %_new_gep_25, %_local_stack_end_ptr_
  %_cond2_1_99 = icmp ugt i8* %_new_gep_25, %_parent_stack_end_ptr_
  %_cond2_2_100 = icmp ult i8* %_new_gep_25, %_parent_stack_start_ptr_
  %_cond2_101 = or i1 %_cond2_1_99, %_cond2_2_100
  %_cond4_102 = icmp ule i8* %_pot_address_in_parent_stack_97, %_parent_stack_end_ptr_
  %_cond1_n_cond2_103 = and i1 %_cond1_98, %_cond2_101
  %_cond1_n_cond2_cond3_104 = and i1 %_cond1_n_cond2_103, %_cond4_102
  %_address_in_parent_stack_bt_106._allin_new_bt_26.v = select i1 %_cond1_n_cond2_cond3_104, i8* %_pot_address_in_parent_stack_97, i8* %_new_gep_25
  %_address_in_parent_stack_bt_106._allin_new_bt_26 = bitcast i8* %_address_in_parent_stack_bt_106._allin_new_bt_26.v to i64*
  %_new_load_107 = load i64, i64* %_address_in_parent_stack_bt_106._allin_new_bt_26, align 8
  %_new_gep_27 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %_ptr_to_int_108 = ptrtoint i8* %_new_gep_27 to i64
  %_offset_above_rbp_111 = sub i64 %_ptr_to_int_108, %_local_end_to_int_
  %_pot_address_in_parent_stack_112 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_111
  %_cond1_113 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_114 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_115 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_116 = or i1 %_cond2_1_114, %_cond2_2_115
  %_cond4_117 = icmp ule i8* %_pot_address_in_parent_stack_112, %_parent_stack_end_ptr_
  %_cond1_n_cond2_118 = and i1 %_cond1_113, %_cond2_116
  %_cond1_n_cond2_cond3_119 = and i1 %_cond1_n_cond2_118, %_cond4_117
  %.v3 = select i1 %_cond1_n_cond2_cond3_119, i8* %_pot_address_in_parent_stack_112, i8* %_new_gep_27
  %16 = bitcast i8* %.v3 to i64*
  %_new_load_122 = load i64, i64* %16, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 48
  %_ptr_to_int_123 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_126 = sub i64 %_ptr_to_int_123, %_local_end_to_int_
  %_pot_address_in_parent_stack_127 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_126
  %_cond1_128 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_129 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_130 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_131 = or i1 %_cond2_1_129, %_cond2_2_130
  %_cond4_132 = icmp ule i8* %_pot_address_in_parent_stack_127, %_parent_stack_end_ptr_
  %_cond1_n_cond2_133 = and i1 %_cond1_128, %_cond2_131
  %_cond1_n_cond2_cond3_134 = and i1 %_cond1_n_cond2_133, %_cond4_132
  %_address_in_parent_stack_bt_136._allin_new_bt_30.v = select i1 %_cond1_n_cond2_cond3_134, i8* %_pot_address_in_parent_stack_127, i8* %_new_gep_29
  %_address_in_parent_stack_bt_136._allin_new_bt_30 = bitcast i8* %_address_in_parent_stack_bt_136._allin_new_bt_30.v to i64*
  %_new_load_137 = load i64, i64* %_address_in_parent_stack_bt_136._allin_new_bt_30, align 8
  %RSP_val.59 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %17 = add i64 %RSP_val.59, -8
  %_allin_new_bt_33 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !35
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i8** %_RSP_ptr_, align 8
  store i64 %17, i64* %XSP, align 8, !mcsema_real_eip !35
  %18 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x99 to i64), i64 %13, i64 %RDX_val.54, i64 %RCX_val.55, i64 %R8_val.56, i64 %R9_val.57, i64 %_new_load_, i64 %_new_load_77, i64 %_new_load_92, i64 %_new_load_107, i64 %_new_load_122, i64 %_new_load_137)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_61 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_61, i64 8
  store i8* %_gep_fix_62, i8** %_RSP_ptr_, align 8
  %ESI.60 = bitcast i64* %XSI to i32*, !mcsema_real_eip !36
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !36
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -8
  %19 = trunc i64 %18 to i32
  %20 = bitcast i8* %_new_gep_35 to i32*
  store i32 %19, i32* %20, align 4, !mcsema_real_eip !37
  %ESI_val.68 = load i32, i32* %ESI.60, align 4, !mcsema_real_eip !38
  %21 = zext i32 %ESI_val.68 to i64, !mcsema_real_eip !38
  store i64 %21, i64* %XAX, align 8, !mcsema_real_eip !38
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.69 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %_new_gep_38 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 16
  %22 = add i64 %RSP_val.69, 16, !mcsema_real_eip !39
  %_trans_p2i_39 = ptrtoint i8* %_new_gep_38 to i64
  %_trans_p2i_40 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 to i64
  %_trans_xor_41 = xor i64 %_trans_p2i_39, %_trans_p2i_40
  %23 = and i64 %_trans_xor_41, 16
  %24 = icmp eq i64 %23, 0
  store i1 %24, i1* %AF, align 1, !mcsema_real_eip !39
  %25 = icmp slt i64 %22, 0
  store i1 %25, i1* %SF, align 1, !mcsema_real_eip !39
  %_trans_icmp_eq_43 = icmp eq i8* %_new_gep_38, null
  store i1 %_trans_icmp_eq_43, i1* %ZF, align 1, !mcsema_real_eip !39
  %26 = xor i64 %_trans_p2i_40, -9223372036854775808, !mcsema_real_eip !39
  %27 = and i64 %_trans_xor_41, %26, !mcsema_real_eip !39
  %28 = icmp slt i64 %27, 0
  store i1 %28, i1* %OF, align 1, !mcsema_real_eip !39
  %_trans_trunc_50 = trunc i64 %_trans_p2i_39 to i8
  %29 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_50), !mcsema_real_eip !39
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  store i1 %31, i1* %PF, align 1, !mcsema_real_eip !39
  %_trans_icmp_ne_52 = icmp ne i64 %RSP_val.69, %_trans_p2i_39
  store i1 %_trans_icmp_ne_52, i1* %CF, align 1, !mcsema_real_eip !39
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_, align 8
  store i64 %22, i64* %XSP, align 8, !mcsema_real_eip !39
  %_offset_above_rbp_141 = sub i64 %_trans_p2i_39, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  %.v4 = select i1 %_cond1_n_cond2_cond3_149, i8* %_pot_address_in_parent_stack_142, i8* %_new_gep_38
  %32 = bitcast i8* %.v4 to i64*
  %_new_load_152 = load i64, i64* %32, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_152 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_152, i64* %XBP, align 8, !mcsema_real_eip !40
  %_new_gep_55 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 24
  %33 = add i64 %RSP_val.69, 24, !mcsema_real_eip !40
  store volatile i8* %_new_gep_55, i8** %_RSP_ptr_, align 8
  store i64 %33, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_57 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 32
  %34 = add i64 %RSP_val.69, 32, !mcsema_real_eip !41
  %_ptr_to_int_153 = ptrtoint i8* %_new_gep_55 to i64
  %_offset_above_rbp_156 = sub i64 %_ptr_to_int_153, %_local_end_to_int_
  %_pot_address_in_parent_stack_157 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_156
  %_cond1_158 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_159 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_160 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_161 = or i1 %_cond2_1_159, %_cond2_2_160
  %_cond4_162 = icmp ule i8* %_pot_address_in_parent_stack_157, %_parent_stack_end_ptr_
  %_cond1_n_cond2_163 = and i1 %_cond1_158, %_cond2_161
  %_cond1_n_cond2_cond3_164 = and i1 %_cond1_n_cond2_163, %_cond4_162
  %_address_in_parent_stack_bt_166._allin_new_bt_58.v = select i1 %_cond1_n_cond2_cond3_164, i8* %_pot_address_in_parent_stack_157, i8* %_new_gep_55
  %_address_in_parent_stack_bt_166._allin_new_bt_58 = bitcast i8* %_address_in_parent_stack_bt_166._allin_new_bt_58.v to i64*
  %_new_load_167 = load i64, i64* %_address_in_parent_stack_bt_166._allin_new_bt_58, align 8
  store i64 %_new_load_167, i64* %XIP, align 8, !mcsema_real_eip !41
  store volatile i8* %_new_gep_57, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !41
  ret void, !mcsema_real_eip !41
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
!6 = !{i64 13}
!7 = !{i64 16}
!8 = !{i64 19}
!9 = !{i64 25}
!10 = !{i64 27}
!11 = !{i64 30}
!12 = !{i64 48}
!13 = !{i64 51}
!14 = !{i64 54}
!15 = !{i64 56}
!16 = !{i64 61}
!17 = !{i64 64}
!18 = !{i64 67}
!19 = !{i64 70}
!20 = !{i64 75}
!21 = !{i64 78}
!22 = !{i64 83}
!23 = !{i64 86}
!24 = !{i64 90}
!25 = !{i64 91}
!26 = !{i64 96}
!27 = !{i64 97}
!28 = !{i64 100}
!29 = !{i64 104}
!30 = !{i64 109}
!31 = !{i64 116}
!32 = !{i64 121}
!33 = !{i64 131}
!34 = !{i64 133}
!35 = !{i64 135}
!36 = !{i64 140}
!37 = !{i64 142}
!38 = !{i64 145}
!39 = !{i64 147}
!40 = !{i64 151}
!41 = !{i64 152}
