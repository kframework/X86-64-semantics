; ModuleID = 'Output/test_1.clang.trans.opt.bc'
source_filename = "Output/test_1.clang.bc"
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
module asm "  .globl sub_70;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_70(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb3 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
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
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -12, !mcsema_real_eip !4
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, align 4, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  store i32 %EDI_val.5, i32* %4, align 4, !mcsema_real_eip !4
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.6, -8, !mcsema_real_eip !5
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.8 = load i32, i32* %ESI.7, align 4, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !5
  store i32 %ESI_val.8, i32* %6, align 4, !mcsema_real_eip !5
  %RBP_val.9 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %7 = add i64 %RBP_val.9, -4, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !6
  %9 = load i32, i32* %8, align 4, !mcsema_real_eip !6
  %10 = zext i32 %9 to i64, !mcsema_real_eip !6
  store i64 %10, i64* %XSI, align 8, !mcsema_real_eip !6
  %11 = add i64 %RBP_val.9, -8, !mcsema_real_eip !7
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !7
  %13 = load i32, i32* %12, align 4, !mcsema_real_eip !7
  %14 = add i32 %9, %13, !mcsema_real_eip !7
  %15 = xor i32 %14, %13, !mcsema_real_eip !7
  %16 = xor i32 %15, %9, !mcsema_real_eip !7
  %17 = and i32 %16, 16, !mcsema_real_eip !7
  %18 = icmp ne i32 %17, 0, !mcsema_real_eip !7
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !7
  %19 = icmp slt i32 %14, 0
  store i1 %19, i1* %SF, align 1, !mcsema_real_eip !7
  %20 = icmp eq i32 %14, 0, !mcsema_real_eip !7
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !7
  %21 = xor i32 %13, -2147483648, !mcsema_real_eip !7
  %22 = xor i32 %21, %9, !mcsema_real_eip !7
  %23 = and i32 %15, %22, !mcsema_real_eip !7
  %24 = icmp slt i32 %23, 0
  store i1 %24, i1* %OF, align 1, !mcsema_real_eip !7
  %25 = trunc i32 %14 to i8, !mcsema_real_eip !7
  %26 = tail call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !7
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !7
  %29 = icmp ult i32 %14, %13, !mcsema_real_eip !7
  store i1 %29, i1* %CF, align 1, !mcsema_real_eip !7
  %30 = zext i32 %14 to i64, !mcsema_real_eip !7
  store i64 %30, i64* %XSI, align 8, !mcsema_real_eip !7
  %31 = add i64 %RBP_val.9, -12, !mcsema_real_eip !8
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !8
  store i32 %14, i32* %32, align 4, !mcsema_real_eip !8
  %RBP_val.161 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %33 = add i64 %RBP_val.161, -4, !mcsema_real_eip !9
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !9
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !9
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !9
  %36 = trunc i32 %35 to i8, !mcsema_real_eip !9
  %37 = tail call i8 @llvm.ctpop.i8(i8 %36), !mcsema_real_eip !9
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  store i1 %39, i1* %PF, align 1, !mcsema_real_eip !9
  %40 = icmp eq i32 %35, 0, !mcsema_real_eip !9
  store i1 %40, i1* %ZF, align 1, !mcsema_real_eip !9
  %41 = icmp slt i32 %35, 0
  store i1 %41, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !9
  br i1 %41, label %block_0x5e, label %block_0x1d.lr.ph, !mcsema_real_eip !10

block_0x1d.lr.ph:                                 ; preds = %entry
  %ECX.21 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  br label %block_0x1d

block_0x1d:                                       ; preds = %block_0x1d.lr.ph, %block_0x50
  %42 = phi i32* [ %34, %block_0x1d.lr.ph ], [ %121, %block_0x50 ]
  %RBP_val.162 = phi i64 [ %RBP_val.161, %block_0x1d.lr.ph ], [ %RBP_val.16, %block_0x50 ]
  store i64 2, i64* %XAX, align 8, !mcsema_real_eip !12
  %43 = load i32, i32* %42, align 4, !mcsema_real_eip !13
  %44 = zext i32 %43 to i64, !mcsema_real_eip !13
  store i64 %44, i64* %XCX, align 8, !mcsema_real_eip !13
  %45 = add i64 %RBP_val.162, -20, !mcsema_real_eip !14
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !14
  store i32 2, i32* %46, align 4, !mcsema_real_eip !14
  %ECX_val.22 = load i32, i32* %ECX.21, align 4, !mcsema_real_eip !11
  %47 = zext i32 %ECX_val.22 to i64, !mcsema_real_eip !11
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !11
  %EAX_val.24.lobit = ashr i32 %ECX_val.22, 31
  %48 = zext i32 %EAX_val.24.lobit to i64
  store i64 %48, i64* %XDX, align 8, !mcsema_real_eip !15
  %RBP_val.25 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %49 = add i64 %RBP_val.25, -20, !mcsema_real_eip !16
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !16
  %51 = load i32, i32* %50, align 4, !mcsema_real_eip !16
  %52 = zext i32 %51 to i64, !mcsema_real_eip !16
  store i64 %52, i64* %XCX, align 8, !mcsema_real_eip !16
  %53 = shl nuw i64 %48, 32, !mcsema_real_eip !17
  %54 = sext i32 %ECX_val.22 to i64, !mcsema_real_eip !17
  %55 = or i64 %53, %54, !mcsema_real_eip !17
  %56 = sext i32 %51 to i64, !mcsema_real_eip !17
  %57 = sdiv i64 %55, %56, !mcsema_real_eip !17
  %58 = srem i64 %55, %56, !mcsema_real_eip !17
  %59 = and i64 %58, 4294967295
  store i64 %59, i64* %XDX, align 8, !mcsema_real_eip !17
  %60 = and i64 %57, 4294967295
  store i64 %60, i64* %XAX, align 8, !mcsema_real_eip !17
  %61 = trunc i64 %58 to i32
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !18
  %62 = trunc i64 %58 to i8
  %63 = tail call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !18
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  store i1 %65, i1* %PF, align 1, !mcsema_real_eip !18
  %66 = icmp eq i32 %61, 0, !mcsema_real_eip !18
  store i1 %66, i1* %ZF, align 1, !mcsema_real_eip !18
  %67 = icmp slt i32 %61, 0
  store i1 %67, i1* %SF, align 1, !mcsema_real_eip !18
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !18
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !18
  %68 = add i64 %RBP_val.25, -12
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %XAX, align 8
  br i1 %66, label %block_0x39, label %block_0x47, !mcsema_real_eip !19

block_0x39:                                       ; preds = %block_0x1d
  %72 = add i32 %70, 10, !mcsema_real_eip !20
  %73 = xor i32 %72, %70, !mcsema_real_eip !20
  %74 = and i32 %73, 16, !mcsema_real_eip !20
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !20
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !20
  %76 = icmp slt i32 %72, 0
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !20
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !20
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !20
  %78 = xor i32 %70, -2147483648, !mcsema_real_eip !20
  %79 = and i32 %73, %78, !mcsema_real_eip !20
  %80 = icmp slt i32 %79, 0
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !20
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !20
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !20
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !20
  %85 = icmp ugt i32 %70, -11
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !20
  %86 = zext i32 %72 to i64, !mcsema_real_eip !20
  store i64 %86, i64* %XAX, align 8, !mcsema_real_eip !20
  %87 = add i64 %RBP_val.25, -16, !mcsema_real_eip !21
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !21
  store i32 %72, i32* %88, align 4, !mcsema_real_eip !21
  br label %block_0x50, !mcsema_real_eip !22

block_0x47:                                       ; preds = %block_0x1d
  %89 = add i32 %70, -10
  %90 = xor i32 %89, %70, !mcsema_real_eip !23
  %91 = and i32 %90, 16, !mcsema_real_eip !23
  %92 = icmp ne i32 %91, 0, !mcsema_real_eip !23
  store i1 %92, i1* %AF, align 1, !mcsema_real_eip !23
  %93 = trunc i32 %89 to i8, !mcsema_real_eip !23
  %94 = tail call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !23
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  store i1 %96, i1* %PF, align 1, !mcsema_real_eip !23
  %97 = icmp eq i32 %89, 0, !mcsema_real_eip !23
  store i1 %97, i1* %ZF, align 1, !mcsema_real_eip !23
  %98 = icmp slt i32 %89, 0
  store i1 %98, i1* %SF, align 1, !mcsema_real_eip !23
  %99 = icmp ult i32 %70, 10, !mcsema_real_eip !23
  store i1 %99, i1* %CF, align 1, !mcsema_real_eip !23
  %100 = and i32 %90, %70, !mcsema_real_eip !23
  %101 = icmp slt i32 %100, 0
  store i1 %101, i1* %OF, align 1, !mcsema_real_eip !23
  %102 = zext i32 %89 to i64, !mcsema_real_eip !23
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !23
  store i32 %89, i32* %69, align 4, !mcsema_real_eip !24
  br label %block_0x50, !mcsema_real_eip !25

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %RBP_val.46 = load i64, i64* %XBP, align 8, !mcsema_real_eip !25
  %103 = add i64 %RBP_val.46, -4, !mcsema_real_eip !25
  %104 = inttoptr i64 %103 to i32*, !mcsema_real_eip !25
  %105 = load i32, i32* %104, align 4, !mcsema_real_eip !25
  %106 = add i32 %105, -1, !mcsema_real_eip !26
  %107 = xor i32 %106, %105, !mcsema_real_eip !26
  %108 = and i32 %107, 16
  %109 = icmp eq i32 %108, 0
  store i1 %109, i1* %AF, align 1, !mcsema_real_eip !26
  %110 = icmp slt i32 %106, 0
  store i1 %110, i1* %SF, align 1, !mcsema_real_eip !26
  %111 = icmp eq i32 %106, 0, !mcsema_real_eip !26
  store i1 %111, i1* %ZF, align 1, !mcsema_real_eip !26
  %112 = and i32 %107, %105, !mcsema_real_eip !26
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF, align 1, !mcsema_real_eip !26
  %114 = trunc i32 %106 to i8, !mcsema_real_eip !26
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !26
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !26
  %118 = icmp ne i32 %105, 0
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !26
  %119 = zext i32 %106 to i64, !mcsema_real_eip !26
  store i64 %119, i64* %XAX, align 8, !mcsema_real_eip !26
  store i32 %106, i32* %104, align 4, !mcsema_real_eip !27
  %RBP_val.16 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %120 = add i64 %RBP_val.16, -4, !mcsema_real_eip !9
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !9
  %122 = load i32, i32* %121, align 4, !mcsema_real_eip !9
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !9
  %123 = trunc i32 %122 to i8, !mcsema_real_eip !9
  %124 = tail call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !9
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  store i1 %126, i1* %PF, align 1, !mcsema_real_eip !9
  %127 = icmp eq i32 %122, 0, !mcsema_real_eip !9
  store i1 %127, i1* %ZF, align 1, !mcsema_real_eip !9
  %128 = icmp slt i32 %122, 0
  store i1 %128, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !9
  br i1 %128, label %block_0x5e.loopexit, label %block_0x1d, !mcsema_real_eip !10

block_0x5e.loopexit:                              ; preds = %block_0x50
  br label %block_0x5e

block_0x5e:                                       ; preds = %block_0x5e.loopexit, %entry
  %RBP_val.16.lcssa = phi i64 [ %RBP_val.161, %entry ], [ %RBP_val.16, %block_0x5e.loopexit ]
  %129 = add i64 %RBP_val.16.lcssa, -16, !mcsema_real_eip !28
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !28
  %131 = load i32, i32* %130, align 4, !mcsema_real_eip !28
  %132 = zext i32 %131 to i64, !mcsema_real_eip !28
  store i64 %132, i64* %XAX, align 8, !mcsema_real_eip !28
  %RSP_val.53 = load i64, i64* %XSP, align 8, !mcsema_real_eip !29
  %133 = inttoptr i64 %RSP_val.53 to i64*, !mcsema_real_eip !29
  %134 = load i64, i64* %133, align 8, !mcsema_real_eip !29
  store i64 %134, i64* %XBP, align 8, !mcsema_real_eip !29
  %135 = add i64 %RSP_val.53, 8, !mcsema_real_eip !29
  store i64 %135, i64* %XSP, align 8, !mcsema_real_eip !29
  %136 = add i64 %RSP_val.53, 16, !mcsema_real_eip !30
  %137 = inttoptr i64 %135 to i64*, !mcsema_real_eip !30
  %138 = load i64, i64* %137, align 8, !mcsema_real_eip !30
  store i64 %138, i64* %XIP, align 8, !mcsema_real_eip !30
  store i64 %136, i64* %XSP, align 8, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !31
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !31
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !31
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !31
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !31
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !31
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !31
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !31
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !31
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !31
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !31
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !31
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !31
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !31
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !31
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !31
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !31
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !31
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !31
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !31
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !31
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !31
  %RSP_val.56 = load i64, i64* %XSP, align 8, !mcsema_real_eip !31
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.56, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !32
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.56, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16
  %5 = icmp eq i64 %4, 0
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !33
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !33
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !33
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !33
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !33
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !33
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !33
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !33
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 10, i64* %XDI, align 8, !mcsema_real_eip !34
  store i64 20, i64* %XSI, align 8, !mcsema_real_eip !35
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !36
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %14 = add i64 %RSP_val.56, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !37
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !37
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, align 8, !mcsema_real_eip !38
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195 = load i8*, i8** %12, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195, i64 -8
  %EAX.62 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.63 = load i32, i32* %EAX.62, align 4, !mcsema_real_eip !39
  %15 = bitcast i8* %_new_gep_20 to i32*
  store i32 %EAX_val.63, i32* %15, align 4, !mcsema_real_eip !39
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_226 = load i8*, i8** %12, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_226, i64 -8
  %16 = bitcast i8* %_new_gep_23 to i32*
  %17 = load i32, i32* %16, align 4, !mcsema_real_eip !40
  %18 = zext i32 %17 to i64, !mcsema_real_eip !40
  store i64 %18, i64* %XSI, align 8, !mcsema_real_eip !40
  %AL.65 = bitcast i64* %XAX to i8*, !mcsema_real_eip !41
  store i8 0, i8* %AL.65, align 1, !mcsema_real_eip !41
  %RDI_val.66 = load i64, i64* %XDI, align 8, !mcsema_real_eip !42
  %RDX_val.68 = load i64, i64* %XDX, align 8, !mcsema_real_eip !42
  %RCX_val.69 = load i64, i64* %XCX, align 8, !mcsema_real_eip !42
  %R8_val.70 = load i64, i64* %R8, align 8, !mcsema_real_eip !42
  %R9_val.71 = load i64, i64* %R9, align 8, !mcsema_real_eip !42
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_, align 8
  %_allin_new_bt_26 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 to i64*
  %19 = load i64, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !42
  %_new_gep_27 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %20 = load i64, i64* %_allin_new_bt_28, align 8, !mcsema_real_eip !42
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %21 = load i64, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !42
  %_new_gep_31 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 24
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %22 = load i64, i64* %_allin_new_bt_32, align 8, !mcsema_real_eip !42
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 32
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %23 = load i64, i64* %_allin_new_bt_34, align 8, !mcsema_real_eip !42
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 40
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %24 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !42
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 48
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %25 = load i64, i64* %_allin_new_bt_38, align 8, !mcsema_real_eip !42
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 56
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %26 = load i64, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !42
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 64
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %27 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !42
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 72
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %28 = load i64, i64* %_allin_new_bt_44, align 8, !mcsema_real_eip !42
  %RSP_val.73 = load i64, i64* %XSP, align 8, !mcsema_real_eip !42
  %_new_gep_46 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 -8
  %29 = add i64 %RSP_val.73, -8
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_47, align 8, !mcsema_real_eip !42
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_, align 8
  store i64 %29, i64* %XSP, align 8, !mcsema_real_eip !42
  %30 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.66, i64 %18, i64 %RDX_val.68, i64 %RCX_val.69, i64 %R8_val.70, i64 %R9_val.71, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_78 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_79 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_78, i64 8
  store i8* %_gep_fix_79, i8** %_RSP_ptr_, align 8
  store i64 %30, i64* %XAX, align 8, !mcsema_real_eip !42
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_487 = load i8*, i8** %12, align 8
  %_new_gep_49 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_487, i64 -8
  %31 = bitcast i8* %_new_gep_49 to i32*
  %32 = load i32, i32* %31, align 4, !mcsema_real_eip !43
  %33 = zext i32 %32 to i64, !mcsema_real_eip !43
  store i64 %33, i64* %XSI, align 8, !mcsema_real_eip !43
  %_new_gep_52 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_487, i64 -12
  %34 = trunc i64 %30 to i32
  %35 = bitcast i8* %_new_gep_52 to i32*
  store i32 %34, i32* %35, align 4, !mcsema_real_eip !44
  %ESI.78 = bitcast i64* %XSI to i32*, !mcsema_real_eip !45
  %ESI_val.79 = load i32, i32* %ESI.78, align 4, !mcsema_real_eip !45
  %36 = zext i32 %ESI_val.79 to i64, !mcsema_real_eip !45
  store i64 %36, i64* %XAX, align 8, !mcsema_real_eip !45
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_54 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.80 = load i64, i64* %XSP, align 8, !mcsema_real_eip !46
  %_new_gep_55 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_54, i64 16
  %37 = add i64 %RSP_val.80, 16, !mcsema_real_eip !46
  %_trans_p2i_56 = ptrtoint i8* %_new_gep_55 to i64
  %_trans_p2i_57 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_54 to i64
  %_trans_xor_58 = xor i64 %_trans_p2i_56, %_trans_p2i_57
  %38 = and i64 %_trans_xor_58, 16
  %39 = icmp eq i64 %38, 0
  store i1 %39, i1* %AF, align 1, !mcsema_real_eip !46
  %40 = icmp slt i64 %37, 0
  store i1 %40, i1* %SF, align 1, !mcsema_real_eip !46
  %_trans_icmp_eq_60 = icmp eq i8* %_new_gep_55, null
  store i1 %_trans_icmp_eq_60, i1* %ZF, align 1, !mcsema_real_eip !46
  %41 = xor i64 %_trans_p2i_57, -9223372036854775808, !mcsema_real_eip !46
  %42 = and i64 %_trans_xor_58, %41, !mcsema_real_eip !46
  %43 = icmp slt i64 %42, 0
  store i1 %43, i1* %OF, align 1, !mcsema_real_eip !46
  %_trans_trunc_67 = trunc i64 %_trans_p2i_56 to i8
  %44 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_67), !mcsema_real_eip !46
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  store i1 %46, i1* %PF, align 1, !mcsema_real_eip !46
  %_trans_icmp_ne_69 = icmp ne i64 %RSP_val.80, %_trans_p2i_56
  store i1 %_trans_icmp_ne_69, i1* %CF, align 1, !mcsema_real_eip !46
  store volatile i8* %_new_gep_55, i8** %_RSP_ptr_, align 8
  store i64 %37, i64* %XSP, align 8, !mcsema_real_eip !46
  %_allin_new_bt_71 = bitcast i8* %_new_gep_55 to i64*
  %47 = load i64, i64* %_allin_new_bt_71, align 8, !mcsema_real_eip !47
  store volatile i64 %47, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %47, i64* %XBP, align 8, !mcsema_real_eip !47
  %_new_gep_72 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_54, i64 24
  %48 = add i64 %RSP_val.80, 24, !mcsema_real_eip !47
  store volatile i8* %_new_gep_72, i8** %_RSP_ptr_, align 8
  store i64 %48, i64* %XSP, align 8, !mcsema_real_eip !47
  %_new_gep_74 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_54, i64 32
  %49 = add i64 %RSP_val.80, 32, !mcsema_real_eip !48
  %_allin_new_bt_75 = bitcast i8* %_new_gep_72 to i64*
  %50 = load i64, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !48
  store i64 %50, i64* %XIP, align 8, !mcsema_real_eip !48
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_, align 8
  store i64 %49, i64* %XSP, align 8, !mcsema_real_eip !48
  ret void, !mcsema_real_eip !48
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [28 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
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
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, align 4, !mcsema_real_eip !4
  %2 = bitcast i8* %_new_gep_3 to i32*
  store i32 %EDI_val.5, i32* %2, align 4, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 12
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.8 = load i32, i32* %ESI.7, align 4, !mcsema_real_eip !5
  %3 = bitcast i8* %_new_gep_6 to i32*
  store i32 %ESI_val.8, i32* %3, align 4, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %4 = bitcast i8* %_new_gep_9 to i32*
  %_new_load_ = load i32, i32* %4, align 4
  %5 = add i32 %_new_load_, %ESI_val.8, !mcsema_real_eip !7
  %6 = xor i32 %5, %ESI_val.8, !mcsema_real_eip !7
  %7 = xor i32 %6, %_new_load_, !mcsema_real_eip !7
  %8 = and i32 %7, 16, !mcsema_real_eip !7
  %9 = icmp ne i32 %8, 0, !mcsema_real_eip !7
  store i1 %9, i1* %AF, align 1, !mcsema_real_eip !7
  %10 = icmp slt i32 %5, 0
  store i1 %10, i1* %SF, align 1, !mcsema_real_eip !7
  %11 = icmp eq i32 %5, 0, !mcsema_real_eip !7
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !7
  %12 = xor i32 %ESI_val.8, -2147483648, !mcsema_real_eip !7
  %13 = xor i32 %12, %_new_load_, !mcsema_real_eip !7
  %14 = and i32 %6, %13, !mcsema_real_eip !7
  %15 = icmp slt i32 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !7
  %16 = trunc i32 %5 to i8, !mcsema_real_eip !7
  %17 = call i8 @llvm.ctpop.i8(i8 %16), !mcsema_real_eip !7
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  store i1 %19, i1* %PF, align 1, !mcsema_real_eip !7
  %20 = icmp ult i32 %5, %ESI_val.8, !mcsema_real_eip !7
  store i1 %20, i1* %CF, align 1, !mcsema_real_eip !7
  %21 = zext i32 %5 to i64, !mcsema_real_eip !7
  store i64 %21, i64* %XSI, align 8, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %22 = bitcast i8* %_new_gep_15 to i32*
  store i32 %5, i32* %22, align 4, !mcsema_real_eip !8
  %ECX.21 = bitcast i64* %XCX to i32*
  br label %block_0x13, !mcsema_real_eip !9

block_0x13:                                       ; preds = %block_0x50, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17.pre, %block_0x50 ], [ %_new_gep_, %entry ]
  %_new_gep_18 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17, i64 -4
  %23 = ptrtoint i8* %_new_gep_18 to i64
  %_offset_above_rbp_74 = sub i64 %23, %_local_end_to_int_
  %_pot_address_in_parent_stack_75 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_74
  %_cond1_76 = icmp ugt i8* %_new_gep_18, %_local_stack_end_ptr_
  %_cond2_1_77 = icmp ugt i8* %_new_gep_18, %_parent_stack_end_ptr_
  %_cond2_2_78 = icmp ult i8* %_new_gep_18, %_parent_stack_start_ptr_
  %_cond2_79 = or i1 %_cond2_1_77, %_cond2_2_78
  %_cond4_80 = icmp ule i8* %_pot_address_in_parent_stack_75, %_parent_stack_end_ptr_
  %_cond1_n_cond2_81 = and i1 %_cond1_76, %_cond2_79
  %_cond1_n_cond2_cond3_82 = and i1 %_cond1_n_cond2_81, %_cond4_80
  %_address_in_parent_stack_bt_84..v = select i1 %_cond1_n_cond2_cond3_82, i8* %_pot_address_in_parent_stack_75, i8* %_new_gep_18
  %_address_in_parent_stack_bt_84. = bitcast i8* %_address_in_parent_stack_bt_84..v to i32*
  %_new_load_85 = load i32, i32* %_address_in_parent_stack_bt_84., align 4
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !9
  %24 = trunc i32 %_new_load_85 to i8, !mcsema_real_eip !9
  %25 = call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !9
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !9
  %28 = icmp eq i32 %_new_load_85, 0, !mcsema_real_eip !9
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !9
  %29 = icmp slt i32 %_new_load_85, 0
  store i1 %29, i1* %SF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !9
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !9
  br i1 %29, label %block_0x5e, label %block_0x1d, !mcsema_real_eip !10

block_0x1d:                                       ; preds = %block_0x13
  store i64 2, i64* %XAX, align 8, !mcsema_real_eip !12
  %_new_load_100 = load i32, i32* %_address_in_parent_stack_bt_84., align 4
  %30 = zext i32 %_new_load_100 to i64, !mcsema_real_eip !13
  store i64 %30, i64* %XCX, align 8, !mcsema_real_eip !13
  %_new_gep_24 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17, i64 -20
  %31 = bitcast i8* %_new_gep_24 to i32*
  store i32 2, i32* %31, align 4, !mcsema_real_eip !14
  %ECX_val.22 = load i32, i32* %ECX.21, align 4, !mcsema_real_eip !11
  %32 = zext i32 %ECX_val.22 to i64, !mcsema_real_eip !11
  store i64 %32, i64* %XAX, align 8, !mcsema_real_eip !11
  %EAX_val.24.lobit = ashr i32 %ECX_val.22, 31
  %33 = zext i32 %EAX_val.24.lobit to i64
  store i64 %33, i64* %XDX, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_27 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26, i64 -20
  %34 = ptrtoint i8* %_new_gep_27 to i64
  %_offset_above_rbp_104 = sub i64 %34, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  %.v2 = select i1 %_cond1_n_cond2_cond3_112, i8* %_pot_address_in_parent_stack_105, i8* %_new_gep_27
  %35 = bitcast i8* %.v2 to i32*
  %_new_load_115 = load i32, i32* %35, align 4
  %36 = zext i32 %_new_load_115 to i64, !mcsema_real_eip !16
  store i64 %36, i64* %XCX, align 8, !mcsema_real_eip !16
  %37 = shl nuw i64 %33, 32, !mcsema_real_eip !17
  %38 = sext i32 %ECX_val.22 to i64, !mcsema_real_eip !17
  %39 = or i64 %37, %38, !mcsema_real_eip !17
  %40 = sext i32 %_new_load_115 to i64, !mcsema_real_eip !17
  %41 = sdiv i64 %39, %40, !mcsema_real_eip !17
  %42 = srem i64 %39, %40, !mcsema_real_eip !17
  %43 = and i64 %42, 4294967295
  store i64 %43, i64* %XDX, align 8, !mcsema_real_eip !17
  %44 = and i64 %41, 4294967295
  store i64 %44, i64* %XAX, align 8, !mcsema_real_eip !17
  %45 = trunc i64 %42 to i32
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !18
  %46 = trunc i64 %42 to i8
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !18
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  store i1 %49, i1* %PF, align 1, !mcsema_real_eip !18
  %50 = icmp eq i32 %45, 0, !mcsema_real_eip !18
  store i1 %50, i1* %ZF, align 1, !mcsema_real_eip !18
  %51 = icmp slt i32 %45, 0
  store i1 %51, i1* %SF, align 1, !mcsema_real_eip !18
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !18
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !18
  %_new_gep_36 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26, i64 -12
  %52 = ptrtoint i8* %_new_gep_36 to i64
  %53 = bitcast i8* %_new_gep_36 to i32*
  %_offset_above_rbp_134 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %_new_gep_36, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %_new_gep_36, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %_new_gep_36, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  %_address_in_parent_stack_bt_144 = bitcast i8* %_pot_address_in_parent_stack_135 to i32*
  %_address_in_parent_stack_bt_144. = select i1 %_cond1_n_cond2_cond3_142, i32* %_address_in_parent_stack_bt_144, i32* %53
  %_new_load_145 = load i32, i32* %_address_in_parent_stack_bt_144., align 4
  %54 = zext i32 %_new_load_145 to i64
  store i64 %54, i64* %XAX, align 8
  br i1 %50, label %block_0x39, label %block_0x47, !mcsema_real_eip !19

block_0x39:                                       ; preds = %block_0x1d
  %55 = add i32 %_new_load_145, 10, !mcsema_real_eip !20
  %56 = xor i32 %55, %_new_load_145, !mcsema_real_eip !20
  %57 = and i32 %56, 16, !mcsema_real_eip !20
  %58 = icmp ne i32 %57, 0, !mcsema_real_eip !20
  store i1 %58, i1* %AF, align 1, !mcsema_real_eip !20
  %59 = icmp slt i32 %55, 0
  store i1 %59, i1* %SF, align 1, !mcsema_real_eip !20
  %60 = icmp eq i32 %55, 0, !mcsema_real_eip !20
  store i1 %60, i1* %ZF, align 1, !mcsema_real_eip !20
  %61 = xor i32 %_new_load_145, -2147483648, !mcsema_real_eip !20
  %62 = and i32 %56, %61, !mcsema_real_eip !20
  %63 = icmp slt i32 %62, 0
  store i1 %63, i1* %OF, align 1, !mcsema_real_eip !20
  %64 = trunc i32 %55 to i8, !mcsema_real_eip !20
  %65 = call i8 @llvm.ctpop.i8(i8 %64), !mcsema_real_eip !20
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  store i1 %67, i1* %PF, align 1, !mcsema_real_eip !20
  %68 = icmp ugt i32 %_new_load_145, -11
  store i1 %68, i1* %CF, align 1, !mcsema_real_eip !20
  %69 = zext i32 %55 to i64, !mcsema_real_eip !20
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !20
  %_new_gep_33 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26, i64 -16
  %70 = bitcast i8* %_new_gep_33 to i32*
  store i32 %55, i32* %70, align 4, !mcsema_real_eip !21
  br label %block_0x50, !mcsema_real_eip !22

block_0x47:                                       ; preds = %block_0x1d
  %71 = add i32 %_new_load_145, -10
  %72 = xor i32 %71, %_new_load_145, !mcsema_real_eip !23
  %73 = and i32 %72, 16, !mcsema_real_eip !23
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !23
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !23
  %75 = trunc i32 %71 to i8, !mcsema_real_eip !23
  %76 = call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !23
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !23
  %79 = icmp eq i32 %71, 0, !mcsema_real_eip !23
  store i1 %79, i1* %ZF, align 1, !mcsema_real_eip !23
  %80 = icmp slt i32 %71, 0
  store i1 %80, i1* %SF, align 1, !mcsema_real_eip !23
  %81 = icmp ult i32 %_new_load_145, 10, !mcsema_real_eip !23
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !23
  %82 = and i32 %72, %_new_load_145, !mcsema_real_eip !23
  %83 = icmp slt i32 %82, 0
  store i1 %83, i1* %OF, align 1, !mcsema_real_eip !23
  %84 = zext i32 %71 to i64, !mcsema_real_eip !23
  store i64 %84, i64* %XAX, align 8, !mcsema_real_eip !23
  store i32 %71, i32* %53, align 4, !mcsema_real_eip !24
  br label %block_0x50, !mcsema_real_eip !25

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -4
  %85 = ptrtoint i8* %_new_gep_42 to i64
  %86 = bitcast i8* %_new_gep_42 to i32*
  %_offset_above_rbp_149 = sub i64 %85, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i32*
  %_address_in_parent_stack_bt_159. = select i1 %_cond1_n_cond2_cond3_157, i32* %_address_in_parent_stack_bt_159, i32* %86
  %_new_load_160 = load i32, i32* %_address_in_parent_stack_bt_159., align 4
  %87 = add i32 %_new_load_160, -1, !mcsema_real_eip !26
  %88 = xor i32 %87, %_new_load_160, !mcsema_real_eip !26
  %89 = and i32 %88, 16
  %90 = icmp eq i32 %89, 0
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !26
  %91 = icmp slt i32 %87, 0
  store i1 %91, i1* %SF, align 1, !mcsema_real_eip !26
  %92 = icmp eq i32 %87, 0, !mcsema_real_eip !26
  store i1 %92, i1* %ZF, align 1, !mcsema_real_eip !26
  %93 = and i32 %88, %_new_load_160, !mcsema_real_eip !26
  %94 = icmp slt i32 %93, 0
  store i1 %94, i1* %OF, align 1, !mcsema_real_eip !26
  %95 = trunc i32 %87 to i8, !mcsema_real_eip !26
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !26
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  store i1 %98, i1* %PF, align 1, !mcsema_real_eip !26
  %99 = icmp ne i32 %_new_load_160, 0
  store i1 %99, i1* %CF, align 1, !mcsema_real_eip !26
  %100 = zext i32 %87 to i64, !mcsema_real_eip !26
  store i64 %100, i64* %XAX, align 8, !mcsema_real_eip !26
  store i32 %87, i32* %86, align 4, !mcsema_real_eip !27
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x13, !mcsema_real_eip !49

block_0x5e:                                       ; preds = %block_0x13
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17, i64 -16
  %101 = ptrtoint i8* %_new_gep_48 to i64
  %_offset_above_rbp_164 = sub i64 %101, %_local_end_to_int_
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %_new_gep_48, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %_new_gep_48, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %_new_gep_48, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  %_address_in_parent_stack_bt_174..v = select i1 %_cond1_n_cond2_cond3_172, i8* %_pot_address_in_parent_stack_165, i8* %_new_gep_48
  %_address_in_parent_stack_bt_174. = bitcast i8* %_address_in_parent_stack_bt_174..v to i32*
  %_new_load_175 = load i32, i32* %_address_in_parent_stack_bt_174., align 4
  %102 = zext i32 %_new_load_175 to i64, !mcsema_real_eip !28
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !28
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_50 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.53 = load i64, i64* %XSP, align 8, !mcsema_real_eip !29
  %_ptr_to_int_176 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_50 to i64
  %_offset_above_rbp_179 = sub i64 %_ptr_to_int_176, %_local_end_to_int_
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_50, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_50, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_50, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  %.v3 = select i1 %_cond1_n_cond2_cond3_187, i8* %_pot_address_in_parent_stack_180, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_50
  %103 = bitcast i8* %.v3 to i64*
  %_new_load_190 = load i64, i64* %103, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_190 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_190, i64* %XBP, align 8, !mcsema_real_eip !29
  %_new_gep_52 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_50, i64 8
  %104 = add i64 %RSP_val.53, 8, !mcsema_real_eip !29
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_, align 8
  store i64 %104, i64* %XSP, align 8, !mcsema_real_eip !29
  %_new_gep_54 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_50, i64 16
  %105 = add i64 %RSP_val.53, 16, !mcsema_real_eip !30
  %_ptr_to_int_191 = ptrtoint i8* %_new_gep_52 to i64
  %_offset_above_rbp_194 = sub i64 %_ptr_to_int_191, %_local_end_to_int_
  %_pot_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i8* %_new_gep_52, %_local_stack_end_ptr_
  %_cond2_1_197 = icmp ugt i8* %_new_gep_52, %_parent_stack_end_ptr_
  %_cond2_2_198 = icmp ult i8* %_new_gep_52, %_parent_stack_start_ptr_
  %_cond2_199 = or i1 %_cond2_1_197, %_cond2_2_198
  %_cond4_200 = icmp ule i8* %_pot_address_in_parent_stack_195, %_parent_stack_end_ptr_
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  %_address_in_parent_stack_bt_204._allin_new_bt_55.v = select i1 %_cond1_n_cond2_cond3_202, i8* %_pot_address_in_parent_stack_195, i8* %_new_gep_52
  %_address_in_parent_stack_bt_204._allin_new_bt_55 = bitcast i8* %_address_in_parent_stack_bt_204._allin_new_bt_55.v to i64*
  %_new_load_205 = load i64, i64* %_address_in_parent_stack_bt_204._allin_new_bt_55, align 8
  store i64 %_new_load_205, i64* %XIP, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_, align 8
  store i64 %105, i64* %XSP, align 8, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !31
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !31
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !31
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !31
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !31
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !31
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !31
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !31
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !31
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !31
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !31
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !31
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !31
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !31
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !31
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !31
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !31
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !31
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !31
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !31
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !31
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !31
  %RSP_val.56 = load i64, i64* %XSP, align 8, !mcsema_real_eip !31
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.56, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !32
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.56, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !33
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !33
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !33
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !33
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !33
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !33
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !33
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !33
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 10, i64* %XDI, align 8, !mcsema_real_eip !34
  store i64 20, i64* %XSI, align 8, !mcsema_real_eip !35
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !36
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.56, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !37
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !37
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, align 8, !mcsema_real_eip !38
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -8
  %EAX.62 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.63 = load i32, i32* %EAX.62, align 4, !mcsema_real_eip !39
  %13 = bitcast i8* %_new_gep_20 to i32*
  store i32 %EAX_val.63, i32* %13, align 4, !mcsema_real_eip !39
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -8
  %14 = ptrtoint i8* %_new_gep_23 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %14, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_23
  %15 = bitcast i8* %.v to i32*
  %_new_load_ = load i32, i32* %15, align 4
  %16 = zext i32 %_new_load_ to i64, !mcsema_real_eip !40
  store i64 %16, i64* %XSI, align 8, !mcsema_real_eip !40
  %AL.65 = bitcast i64* %XAX to i8*, !mcsema_real_eip !41
  store i8 0, i8* %AL.65, align 1, !mcsema_real_eip !41
  %RDI_val.66 = load i64, i64* %XDI, align 8, !mcsema_real_eip !42
  %RDX_val.68 = load i64, i64* %XDX, align 8, !mcsema_real_eip !42
  %RCX_val.69 = load i64, i64* %XCX, align 8, !mcsema_real_eip !42
  %R8_val.70 = load i64, i64* %R8, align 8, !mcsema_real_eip !42
  %R9_val.71 = load i64, i64* %R9, align 8, !mcsema_real_eip !42
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_80 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 to i64
  %_offset_above_rbp_83 = sub i64 %_ptr_to_int_80, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  %_address_in_parent_stack_bt_93._allin_new_bt_26.v = select i1 %_cond1_n_cond2_cond3_91, i8* %_pot_address_in_parent_stack_84, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25
  %_address_in_parent_stack_bt_93._allin_new_bt_26 = bitcast i8* %_address_in_parent_stack_bt_93._allin_new_bt_26.v to i64*
  %_new_load_94 = load i64, i64* %_address_in_parent_stack_bt_93._allin_new_bt_26, align 8
  %_new_gep_27 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 8
  %_ptr_to_int_95 = ptrtoint i8* %_new_gep_27 to i64
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_95, %_local_end_to_int_
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  %.v2 = select i1 %_cond1_n_cond2_cond3_106, i8* %_pot_address_in_parent_stack_99, i8* %_new_gep_27
  %17 = bitcast i8* %.v2 to i64*
  %_new_load_109 = load i64, i64* %17, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 16
  %_ptr_to_int_110 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_113 = sub i64 %_ptr_to_int_110, %_local_end_to_int_
  %_pot_address_in_parent_stack_114 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_113
  %_cond1_115 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_116 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_117 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_118 = or i1 %_cond2_1_116, %_cond2_2_117
  %_cond4_119 = icmp ule i8* %_pot_address_in_parent_stack_114, %_parent_stack_end_ptr_
  %_cond1_n_cond2_120 = and i1 %_cond1_115, %_cond2_118
  %_cond1_n_cond2_cond3_121 = and i1 %_cond1_n_cond2_120, %_cond4_119
  %_address_in_parent_stack_bt_123._allin_new_bt_30.v = select i1 %_cond1_n_cond2_cond3_121, i8* %_pot_address_in_parent_stack_114, i8* %_new_gep_29
  %_address_in_parent_stack_bt_123._allin_new_bt_30 = bitcast i8* %_address_in_parent_stack_bt_123._allin_new_bt_30.v to i64*
  %_new_load_124 = load i64, i64* %_address_in_parent_stack_bt_123._allin_new_bt_30, align 8
  %_new_gep_31 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 24
  %_ptr_to_int_125 = ptrtoint i8* %_new_gep_31 to i64
  %_offset_above_rbp_128 = sub i64 %_ptr_to_int_125, %_local_end_to_int_
  %_pot_address_in_parent_stack_129 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_128
  %_cond1_130 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_131 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_132 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_133 = or i1 %_cond2_1_131, %_cond2_2_132
  %_cond4_134 = icmp ule i8* %_pot_address_in_parent_stack_129, %_parent_stack_end_ptr_
  %_cond1_n_cond2_135 = and i1 %_cond1_130, %_cond2_133
  %_cond1_n_cond2_cond3_136 = and i1 %_cond1_n_cond2_135, %_cond4_134
  %.v3 = select i1 %_cond1_n_cond2_cond3_136, i8* %_pot_address_in_parent_stack_129, i8* %_new_gep_31
  %18 = bitcast i8* %.v3 to i64*
  %_new_load_139 = load i64, i64* %18, align 8
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 32
  %_ptr_to_int_140 = ptrtoint i8* %_new_gep_33 to i64
  %_offset_above_rbp_143 = sub i64 %_ptr_to_int_140, %_local_end_to_int_
  %_pot_address_in_parent_stack_144 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_143
  %_cond1_145 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_146 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_147 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_148 = or i1 %_cond2_1_146, %_cond2_2_147
  %_cond4_149 = icmp ule i8* %_pot_address_in_parent_stack_144, %_parent_stack_end_ptr_
  %_cond1_n_cond2_150 = and i1 %_cond1_145, %_cond2_148
  %_cond1_n_cond2_cond3_151 = and i1 %_cond1_n_cond2_150, %_cond4_149
  %_address_in_parent_stack_bt_153._allin_new_bt_34.v = select i1 %_cond1_n_cond2_cond3_151, i8* %_pot_address_in_parent_stack_144, i8* %_new_gep_33
  %_address_in_parent_stack_bt_153._allin_new_bt_34 = bitcast i8* %_address_in_parent_stack_bt_153._allin_new_bt_34.v to i64*
  %_new_load_154 = load i64, i64* %_address_in_parent_stack_bt_153._allin_new_bt_34, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 40
  %_ptr_to_int_155 = ptrtoint i8* %_new_gep_35 to i64
  %_offset_above_rbp_158 = sub i64 %_ptr_to_int_155, %_local_end_to_int_
  %_pot_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_158
  %_cond1_160 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_161 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_162 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_163 = or i1 %_cond2_1_161, %_cond2_2_162
  %_cond4_164 = icmp ule i8* %_pot_address_in_parent_stack_159, %_parent_stack_end_ptr_
  %_cond1_n_cond2_165 = and i1 %_cond1_160, %_cond2_163
  %_cond1_n_cond2_cond3_166 = and i1 %_cond1_n_cond2_165, %_cond4_164
  %.v4 = select i1 %_cond1_n_cond2_cond3_166, i8* %_pot_address_in_parent_stack_159, i8* %_new_gep_35
  %19 = bitcast i8* %.v4 to i64*
  %_new_load_169 = load i64, i64* %19, align 8
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 48
  %_ptr_to_int_170 = ptrtoint i8* %_new_gep_37 to i64
  %_offset_above_rbp_173 = sub i64 %_ptr_to_int_170, %_local_end_to_int_
  %_pot_address_in_parent_stack_174 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_173
  %_cond1_175 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_176 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_177 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_178 = or i1 %_cond2_1_176, %_cond2_2_177
  %_cond4_179 = icmp ule i8* %_pot_address_in_parent_stack_174, %_parent_stack_end_ptr_
  %_cond1_n_cond2_180 = and i1 %_cond1_175, %_cond2_178
  %_cond1_n_cond2_cond3_181 = and i1 %_cond1_n_cond2_180, %_cond4_179
  %_address_in_parent_stack_bt_183._allin_new_bt_38.v = select i1 %_cond1_n_cond2_cond3_181, i8* %_pot_address_in_parent_stack_174, i8* %_new_gep_37
  %_address_in_parent_stack_bt_183._allin_new_bt_38 = bitcast i8* %_address_in_parent_stack_bt_183._allin_new_bt_38.v to i64*
  %_new_load_184 = load i64, i64* %_address_in_parent_stack_bt_183._allin_new_bt_38, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 56
  %_ptr_to_int_185 = ptrtoint i8* %_new_gep_39 to i64
  %_offset_above_rbp_188 = sub i64 %_ptr_to_int_185, %_local_end_to_int_
  %_pot_address_in_parent_stack_189 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_188
  %_cond1_190 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_191 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_192 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_193 = or i1 %_cond2_1_191, %_cond2_2_192
  %_cond4_194 = icmp ule i8* %_pot_address_in_parent_stack_189, %_parent_stack_end_ptr_
  %_cond1_n_cond2_195 = and i1 %_cond1_190, %_cond2_193
  %_cond1_n_cond2_cond3_196 = and i1 %_cond1_n_cond2_195, %_cond4_194
  %.v5 = select i1 %_cond1_n_cond2_cond3_196, i8* %_pot_address_in_parent_stack_189, i8* %_new_gep_39
  %20 = bitcast i8* %.v5 to i64*
  %_new_load_199 = load i64, i64* %20, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 64
  %_ptr_to_int_200 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_203 = sub i64 %_ptr_to_int_200, %_local_end_to_int_
  %_pot_address_in_parent_stack_204 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_203
  %_cond1_205 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_206 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_207 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_208 = or i1 %_cond2_1_206, %_cond2_2_207
  %_cond4_209 = icmp ule i8* %_pot_address_in_parent_stack_204, %_parent_stack_end_ptr_
  %_cond1_n_cond2_210 = and i1 %_cond1_205, %_cond2_208
  %_cond1_n_cond2_cond3_211 = and i1 %_cond1_n_cond2_210, %_cond4_209
  %_address_in_parent_stack_bt_213._allin_new_bt_42.v = select i1 %_cond1_n_cond2_cond3_211, i8* %_pot_address_in_parent_stack_204, i8* %_new_gep_41
  %_address_in_parent_stack_bt_213._allin_new_bt_42 = bitcast i8* %_address_in_parent_stack_bt_213._allin_new_bt_42.v to i64*
  %_new_load_214 = load i64, i64* %_address_in_parent_stack_bt_213._allin_new_bt_42, align 8
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 72
  %_ptr_to_int_215 = ptrtoint i8* %_new_gep_43 to i64
  %_offset_above_rbp_218 = sub i64 %_ptr_to_int_215, %_local_end_to_int_
  %_pot_address_in_parent_stack_219 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_218
  %_cond1_220 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_221 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_222 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_223 = or i1 %_cond2_1_221, %_cond2_2_222
  %_cond4_224 = icmp ule i8* %_pot_address_in_parent_stack_219, %_parent_stack_end_ptr_
  %_cond1_n_cond2_225 = and i1 %_cond1_220, %_cond2_223
  %_cond1_n_cond2_cond3_226 = and i1 %_cond1_n_cond2_225, %_cond4_224
  %.v6 = select i1 %_cond1_n_cond2_cond3_226, i8* %_pot_address_in_parent_stack_219, i8* %_new_gep_43
  %21 = bitcast i8* %.v6 to i64*
  %_new_load_229 = load i64, i64* %21, align 8
  %RSP_val.73 = load i64, i64* %XSP, align 8, !mcsema_real_eip !42
  %_new_gep_46 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 -8
  %22 = add i64 %RSP_val.73, -8
  %_allin_new_bt_47 = bitcast i8* %_new_gep_46 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_47, align 8, !mcsema_real_eip !42
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_, align 8
  store i64 %22, i64* %XSP, align 8, !mcsema_real_eip !42
  %23 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.66, i64 %16, i64 %RDX_val.68, i64 %RCX_val.69, i64 %R8_val.70, i64 %R9_val.71, i64 %_new_load_94, i64 %_new_load_109, i64 %_new_load_124, i64 %_new_load_139, i64 %_new_load_154, i64 %_new_load_169, i64 %_new_load_184, i64 %_new_load_199, i64 %_new_load_214, i64 %_new_load_229)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_78 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_79 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_78, i64 8
  store i8* %_gep_fix_79, i8** %_RSP_ptr_, align 8
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !42
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_49 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_48, i64 -8
  %24 = ptrtoint i8* %_new_gep_49 to i64
  %_offset_above_rbp_233 = sub i64 %24, %_local_end_to_int_
  %_pot_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_233
  %_cond1_235 = icmp ugt i8* %_new_gep_49, %_local_stack_end_ptr_
  %_cond2_1_236 = icmp ugt i8* %_new_gep_49, %_parent_stack_end_ptr_
  %_cond2_2_237 = icmp ult i8* %_new_gep_49, %_parent_stack_start_ptr_
  %_cond2_238 = or i1 %_cond2_1_236, %_cond2_2_237
  %_cond4_239 = icmp ule i8* %_pot_address_in_parent_stack_234, %_parent_stack_end_ptr_
  %_cond1_n_cond2_240 = and i1 %_cond1_235, %_cond2_238
  %_cond1_n_cond2_cond3_241 = and i1 %_cond1_n_cond2_240, %_cond4_239
  %_address_in_parent_stack_bt_243..v = select i1 %_cond1_n_cond2_cond3_241, i8* %_pot_address_in_parent_stack_234, i8* %_new_gep_49
  %_address_in_parent_stack_bt_243. = bitcast i8* %_address_in_parent_stack_bt_243..v to i32*
  %_new_load_244 = load i32, i32* %_address_in_parent_stack_bt_243., align 4
  %25 = zext i32 %_new_load_244 to i64, !mcsema_real_eip !43
  store i64 %25, i64* %XSI, align 8, !mcsema_real_eip !43
  %_new_gep_52 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_48, i64 -12
  %26 = trunc i64 %23 to i32
  %27 = bitcast i8* %_new_gep_52 to i32*
  store i32 %26, i32* %27, align 4, !mcsema_real_eip !44
  %ESI.78 = bitcast i64* %XSI to i32*, !mcsema_real_eip !45
  %ESI_val.79 = load i32, i32* %ESI.78, align 4, !mcsema_real_eip !45
  %28 = zext i32 %ESI_val.79 to i64, !mcsema_real_eip !45
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !45
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_54 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.80 = load i64, i64* %XSP, align 8, !mcsema_real_eip !46
  %_new_gep_55 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_54, i64 16
  %29 = add i64 %RSP_val.80, 16, !mcsema_real_eip !46
  %_trans_p2i_56 = ptrtoint i8* %_new_gep_55 to i64
  %_trans_p2i_57 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_54 to i64
  %_trans_xor_58 = xor i64 %_trans_p2i_56, %_trans_p2i_57
  %30 = and i64 %_trans_xor_58, 16
  %31 = icmp eq i64 %30, 0
  store i1 %31, i1* %AF, align 1, !mcsema_real_eip !46
  %32 = icmp slt i64 %29, 0
  store i1 %32, i1* %SF, align 1, !mcsema_real_eip !46
  %_trans_icmp_eq_60 = icmp eq i8* %_new_gep_55, null
  store i1 %_trans_icmp_eq_60, i1* %ZF, align 1, !mcsema_real_eip !46
  %33 = xor i64 %_trans_p2i_57, -9223372036854775808, !mcsema_real_eip !46
  %34 = and i64 %_trans_xor_58, %33, !mcsema_real_eip !46
  %35 = icmp slt i64 %34, 0
  store i1 %35, i1* %OF, align 1, !mcsema_real_eip !46
  %_trans_trunc_67 = trunc i64 %_trans_p2i_56 to i8
  %36 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_67), !mcsema_real_eip !46
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  store i1 %38, i1* %PF, align 1, !mcsema_real_eip !46
  %_trans_icmp_ne_69 = icmp ne i64 %RSP_val.80, %_trans_p2i_56
  store i1 %_trans_icmp_ne_69, i1* %CF, align 1, !mcsema_real_eip !46
  store volatile i8* %_new_gep_55, i8** %_RSP_ptr_, align 8
  store i64 %29, i64* %XSP, align 8, !mcsema_real_eip !46
  %_offset_above_rbp_248 = sub i64 %_trans_p2i_56, %_local_end_to_int_
  %_pot_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_248
  %_cond1_250 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_251 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_252 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_253 = or i1 %_cond2_1_251, %_cond2_2_252
  %_cond4_254 = icmp ule i8* %_pot_address_in_parent_stack_249, %_parent_stack_end_ptr_
  %_cond1_n_cond2_255 = and i1 %_cond1_250, %_cond2_253
  %_cond1_n_cond2_cond3_256 = and i1 %_cond1_n_cond2_255, %_cond4_254
  %.v7 = select i1 %_cond1_n_cond2_cond3_256, i8* %_pot_address_in_parent_stack_249, i8* %_new_gep_55
  %39 = bitcast i8* %.v7 to i64*
  %_new_load_259 = load i64, i64* %39, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_259 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_259, i64* %XBP, align 8, !mcsema_real_eip !47
  %_new_gep_72 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_54, i64 24
  %40 = add i64 %RSP_val.80, 24, !mcsema_real_eip !47
  store volatile i8* %_new_gep_72, i8** %_RSP_ptr_, align 8
  store i64 %40, i64* %XSP, align 8, !mcsema_real_eip !47
  %_new_gep_74 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_54, i64 32
  %41 = add i64 %RSP_val.80, 32, !mcsema_real_eip !48
  %_ptr_to_int_260 = ptrtoint i8* %_new_gep_72 to i64
  %_offset_above_rbp_263 = sub i64 %_ptr_to_int_260, %_local_end_to_int_
  %_pot_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_263
  %_cond1_265 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond2_1_266 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_2_267 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_268 = or i1 %_cond2_1_266, %_cond2_2_267
  %_cond4_269 = icmp ule i8* %_pot_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond1_n_cond2_270 = and i1 %_cond1_265, %_cond2_268
  %_cond1_n_cond2_cond3_271 = and i1 %_cond1_n_cond2_270, %_cond4_269
  %_address_in_parent_stack_bt_273._allin_new_bt_75.v = select i1 %_cond1_n_cond2_cond3_271, i8* %_pot_address_in_parent_stack_264, i8* %_new_gep_72
  %_address_in_parent_stack_bt_273._allin_new_bt_75 = bitcast i8* %_address_in_parent_stack_bt_273._allin_new_bt_75.v to i64*
  %_new_load_274 = load i64, i64* %_address_in_parent_stack_bt_273._allin_new_bt_75, align 8
  store i64 %_new_load_274, i64* %XIP, align 8, !mcsema_real_eip !48
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_, align 8
  store i64 %41, i64* %XSP, align 8, !mcsema_real_eip !48
  ret void, !mcsema_real_eip !48
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
!5 = !{i64 7}
!6 = !{i64 10}
!7 = !{i64 13}
!8 = !{i64 16}
!9 = !{i64 19}
!10 = !{i64 23}
!11 = !{i64 40}
!12 = !{i64 29}
!13 = !{i64 34}
!14 = !{i64 37}
!15 = !{i64 42}
!16 = !{i64 43}
!17 = !{i64 46}
!18 = !{i64 48}
!19 = !{i64 51}
!20 = !{i64 60}
!21 = !{i64 63}
!22 = !{i64 66}
!23 = !{i64 74}
!24 = !{i64 77}
!25 = !{i64 80}
!26 = !{i64 83}
!27 = !{i64 86}
!28 = !{i64 94}
!29 = !{i64 97}
!30 = !{i64 98}
!31 = !{i64 112}
!32 = !{i64 113}
!33 = !{i64 116}
!34 = !{i64 120}
!35 = !{i64 125}
!36 = !{i64 130}
!37 = !{i64 137}
!38 = !{i64 142}
!39 = !{i64 152}
!40 = !{i64 155}
!41 = !{i64 158}
!42 = !{i64 160}
!43 = !{i64 165}
!44 = !{i64 168}
!45 = !{i64 171}
!46 = !{i64 173}
!47 = !{i64 177}
!48 = !{i64 178}
!49 = !{i64 89}
