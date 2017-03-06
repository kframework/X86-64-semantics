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
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
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
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -40
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
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, align 4, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %17, align 4, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.7, -16, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !6
  %RSI_val.8 = load i64, i64* %XSI, align 8, !mcsema_real_eip !6
  store i64 %RSI_val.8, i64* %19, align 8, !mcsema_real_eip !6
  %RBP_val.9 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %20 = add i64 %RBP_val.9, -20, !mcsema_real_eip !7
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !7
  store i32 3, i32* %21, align 4, !mcsema_real_eip !7
  br label %block_0x16, !mcsema_real_eip !8

block_0x16:                                       ; preds = %block_0x22, %entry
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %22 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !8
  %24 = load i32, i32* %23, align 4, !mcsema_real_eip !8
  %25 = zext i32 %24 to i64, !mcsema_real_eip !8
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !8
  %26 = add i64 %RBP_val.10, -4, !mcsema_real_eip !9
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !9
  %28 = load i32, i32* %27, align 4, !mcsema_real_eip !9
  %29 = sub i32 %24, %28, !mcsema_real_eip !9
  %30 = xor i32 %29, %24, !mcsema_real_eip !9
  %31 = xor i32 %30, %28, !mcsema_real_eip !9
  %32 = and i32 %31, 16, !mcsema_real_eip !9
  %33 = icmp ne i32 %32, 0, !mcsema_real_eip !9
  store i1 %33, i1* %AF, align 1, !mcsema_real_eip !9
  %34 = trunc i32 %29 to i8, !mcsema_real_eip !9
  %35 = tail call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !9
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  store i1 %37, i1* %PF, align 1, !mcsema_real_eip !9
  %38 = icmp eq i32 %29, 0, !mcsema_real_eip !9
  store i1 %38, i1* %ZF, align 1, !mcsema_real_eip !9
  %39 = icmp slt i32 %29, 0
  store i1 %39, i1* %SF, align 1, !mcsema_real_eip !9
  %40 = icmp ult i32 %24, %28, !mcsema_real_eip !9
  store i1 %40, i1* %CF, align 1, !mcsema_real_eip !9
  %41 = xor i32 %28, %24, !mcsema_real_eip !9
  %42 = and i32 %30, %41, !mcsema_real_eip !9
  %43 = icmp slt i32 %42, 0
  store i1 %43, i1* %OF, align 1, !mcsema_real_eip !9
  %44 = or i1 %40, %38, !mcsema_real_eip !10
  %45 = add i64 %RBP_val.10, -16
  %46 = inttoptr i64 %45 to i64*
  br i1 %44, label %block_0x4d, label %block_0x22, !mcsema_real_eip !10

block_0x22:                                       ; preds = %block_0x16
  %47 = load i64, i64* %46, align 8, !mcsema_real_eip !11
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !11
  %48 = load i32, i32* %23, align 4, !mcsema_real_eip !12
  %49 = add i32 %48, -1
  %50 = xor i32 %49, %48, !mcsema_real_eip !13
  %51 = and i32 %50, 16, !mcsema_real_eip !13
  %52 = icmp ne i32 %51, 0, !mcsema_real_eip !13
  store i1 %52, i1* %AF, align 1, !mcsema_real_eip !13
  %53 = trunc i32 %49 to i8, !mcsema_real_eip !13
  %54 = tail call i8 @llvm.ctpop.i8(i8 %53), !mcsema_real_eip !13
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  store i1 %56, i1* %PF, align 1, !mcsema_real_eip !13
  %57 = icmp eq i32 %49, 0, !mcsema_real_eip !13
  store i1 %57, i1* %ZF, align 1, !mcsema_real_eip !13
  %58 = icmp slt i32 %49, 0
  store i1 %58, i1* %SF, align 1, !mcsema_real_eip !13
  %59 = icmp eq i32 %48, 0
  store i1 %59, i1* %CF, align 1, !mcsema_real_eip !13
  %60 = and i32 %50, %48, !mcsema_real_eip !13
  %61 = icmp slt i32 %60, 0
  store i1 %61, i1* %OF, align 1, !mcsema_real_eip !13
  %62 = zext i32 %49 to i64
  store i64 %62, i64* %XCX, align 8, !mcsema_real_eip !14
  store i64 %62, i64* %XDX, align 8, !mcsema_real_eip !15
  %63 = shl nuw nsw i64 %62, 2
  %64 = add i64 %63, %47, !mcsema_real_eip !16
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !16
  %66 = load i32, i32* %65, align 4, !mcsema_real_eip !16
  %67 = zext i32 %66 to i64, !mcsema_real_eip !16
  store i64 %67, i64* %XCX, align 8, !mcsema_real_eip !16
  %68 = load i64, i64* %46, align 8, !mcsema_real_eip !17
  store i64 %68, i64* %XAX, align 8, !mcsema_real_eip !17
  %69 = load i32, i32* %23, align 4, !mcsema_real_eip !18
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %XSI, align 8, !mcsema_real_eip !18
  store i64 %70, i64* %XDX, align 8, !mcsema_real_eip !19
  %71 = shl nuw nsw i64 %70, 2
  %72 = add i64 %71, %68, !mcsema_real_eip !20
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !20
  store i32 %66, i32* %73, align 4, !mcsema_real_eip !20
  %RBP_val.32 = load i64, i64* %XBP, align 8, !mcsema_real_eip !21
  %74 = add i64 %RBP_val.32, -20, !mcsema_real_eip !21
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !21
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !21
  %77 = add i32 %76, -1, !mcsema_real_eip !22
  %78 = xor i32 %77, %76, !mcsema_real_eip !22
  %79 = and i32 %78, 16
  %80 = icmp eq i32 %79, 0
  store i1 %80, i1* %AF, align 1, !mcsema_real_eip !22
  %81 = icmp slt i32 %77, 0
  store i1 %81, i1* %SF, align 1, !mcsema_real_eip !22
  %82 = icmp eq i32 %77, 0, !mcsema_real_eip !22
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !22
  %83 = and i32 %78, %76, !mcsema_real_eip !22
  %84 = icmp slt i32 %83, 0
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !22
  %85 = trunc i32 %77 to i8, !mcsema_real_eip !22
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !22
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !22
  %89 = icmp ne i32 %76, 0
  store i1 %89, i1* %CF, align 1, !mcsema_real_eip !22
  %90 = zext i32 %77 to i64, !mcsema_real_eip !22
  store i64 %90, i64* %XAX, align 8, !mcsema_real_eip !22
  store i32 %77, i32* %75, align 4, !mcsema_real_eip !23
  br label %block_0x16, !mcsema_real_eip !24

block_0x4d:                                       ; preds = %block_0x16
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, align 8, !mcsema_real_eip !25
  %91 = load i32, i32* %27, align 4, !mcsema_real_eip !26
  %92 = zext i32 %91 to i64, !mcsema_real_eip !26
  store i64 %92, i64* %XSI, align 8, !mcsema_real_eip !26
  %93 = load i64, i64* %46, align 8, !mcsema_real_eip !27
  store i64 %93, i64* %XAX, align 8, !mcsema_real_eip !27
  %94 = inttoptr i64 %93 to i32*, !mcsema_real_eip !28
  %95 = load i32, i32* %94, align 4, !mcsema_real_eip !28
  %96 = zext i32 %95 to i64, !mcsema_real_eip !28
  store i64 %96, i64* %XDX, align 8, !mcsema_real_eip !28
  %97 = load i64, i64* %46, align 8, !mcsema_real_eip !29
  store i64 %97, i64* %XAX, align 8, !mcsema_real_eip !29
  %98 = add i64 %97, 4, !mcsema_real_eip !30
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !30
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !30
  %101 = zext i32 %100 to i64, !mcsema_real_eip !30
  store i64 %101, i64* %XCX, align 8, !mcsema_real_eip !30
  %102 = load i64, i64* %46, align 8, !mcsema_real_eip !31
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !31
  %103 = add i64 %102, 8, !mcsema_real_eip !32
  %104 = inttoptr i64 %103 to i32*, !mcsema_real_eip !32
  %105 = load i32, i32* %104, align 4, !mcsema_real_eip !32
  %106 = zext i32 %105 to i64, !mcsema_real_eip !32
  store i64 %106, i64* %R8, align 8, !mcsema_real_eip !32
  %107 = load i64, i64* %46, align 8, !mcsema_real_eip !33
  store i64 %107, i64* %XAX, align 8, !mcsema_real_eip !33
  %108 = add i64 %107, 12, !mcsema_real_eip !34
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !34
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !34
  %111 = zext i32 %110 to i64, !mcsema_real_eip !34
  store i64 %111, i64* %R9, align 8, !mcsema_real_eip !34
  %AL.47 = bitcast i64* %XAX to i8*, !mcsema_real_eip !35
  store i8 0, i8* %AL.47, align 1, !mcsema_real_eip !35
  %RSP_val.54 = load i64, i64* %XSP, align 8, !mcsema_real_eip !36
  %112 = inttoptr i64 %RSP_val.54 to i64*, !mcsema_real_eip !36
  %113 = load i64, i64* %112, align 8, !mcsema_real_eip !36
  %114 = add i64 %RSP_val.54, 8, !mcsema_real_eip !36
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !36
  %116 = load i64, i64* %115, align 8, !mcsema_real_eip !36
  %117 = add i64 %RSP_val.54, 16, !mcsema_real_eip !36
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !36
  %119 = load i64, i64* %118, align 8, !mcsema_real_eip !36
  %120 = add i64 %RSP_val.54, 24, !mcsema_real_eip !36
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !36
  %122 = load i64, i64* %121, align 8, !mcsema_real_eip !36
  %123 = add i64 %RSP_val.54, 32, !mcsema_real_eip !36
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !36
  %125 = load i64, i64* %124, align 8, !mcsema_real_eip !36
  %126 = add i64 %RSP_val.54, 40, !mcsema_real_eip !36
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !36
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !36
  %129 = add i64 %RSP_val.54, 48, !mcsema_real_eip !36
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !36
  %131 = load i64, i64* %130, align 8, !mcsema_real_eip !36
  %132 = add i64 %RSP_val.54, 56, !mcsema_real_eip !36
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !36
  %134 = load i64, i64* %133, align 8, !mcsema_real_eip !36
  %135 = add i64 %RSP_val.54, 64, !mcsema_real_eip !36
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !36
  %137 = load i64, i64* %136, align 8, !mcsema_real_eip !36
  %138 = add i64 %RSP_val.54, 72, !mcsema_real_eip !36
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !36
  %140 = load i64, i64* %139, align 8, !mcsema_real_eip !36
  %141 = add i64 %RSP_val.54, -8
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !36
  store i64 -2415393069852865332, i64* %142, align 8, !mcsema_real_eip !36
  store i64 %141, i64* %XSP, align 8, !mcsema_real_eip !36
  %143 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xee to i64), i64 %92, i64 %96, i64 %101, i64 %106, i64 %111, i64 %113, i64 %116, i64 %119, i64 %122, i64 %125, i64 %128, i64 %131, i64 %134, i64 %137, i64 %140), !mcsema_real_eip !36
  store i64 %143, i64* %XAX, align 8, !mcsema_real_eip !36
  %RBP_val.56 = load i64, i64* %XBP, align 8, !mcsema_real_eip !37
  %144 = add i64 %RBP_val.56, -24, !mcsema_real_eip !37
  %145 = trunc i64 %143 to i32
  %146 = inttoptr i64 %144 to i32*, !mcsema_real_eip !37
  store i32 %145, i32* %146, align 4, !mcsema_real_eip !37
  %RSP_val.59 = load i64, i64* %XSP, align 8, !mcsema_real_eip !38
  %147 = add i64 %RSP_val.59, 32, !mcsema_real_eip !38
  %148 = xor i64 %147, %RSP_val.59, !mcsema_real_eip !38
  %149 = and i64 %148, 16, !mcsema_real_eip !38
  %150 = icmp ne i64 %149, 0, !mcsema_real_eip !38
  store i1 %150, i1* %AF, align 1, !mcsema_real_eip !38
  %151 = icmp slt i64 %147, 0
  store i1 %151, i1* %SF, align 1, !mcsema_real_eip !38
  %152 = icmp eq i64 %147, 0, !mcsema_real_eip !38
  store i1 %152, i1* %ZF, align 1, !mcsema_real_eip !38
  %153 = xor i64 %RSP_val.59, -9223372036854775808, !mcsema_real_eip !38
  %154 = and i64 %148, %153, !mcsema_real_eip !38
  %155 = icmp slt i64 %154, 0
  store i1 %155, i1* %OF, align 1, !mcsema_real_eip !38
  %156 = trunc i64 %147 to i8, !mcsema_real_eip !38
  %157 = tail call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !38
  %158 = and i8 %157, 1
  %159 = icmp eq i8 %158, 0
  store i1 %159, i1* %PF, align 1, !mcsema_real_eip !38
  %160 = icmp ugt i64 %RSP_val.59, -33
  store i1 %160, i1* %CF, align 1, !mcsema_real_eip !38
  store i64 %147, i64* %XSP, align 8, !mcsema_real_eip !38
  %161 = inttoptr i64 %147 to i64*, !mcsema_real_eip !39
  %162 = load i64, i64* %161, align 8, !mcsema_real_eip !39
  store i64 %162, i64* %XBP, align 8, !mcsema_real_eip !39
  %163 = add i64 %RSP_val.59, 40, !mcsema_real_eip !39
  store i64 %163, i64* %XSP, align 8, !mcsema_real_eip !39
  %164 = add i64 %RSP_val.59, 48, !mcsema_real_eip !40
  %165 = inttoptr i64 %163 to i64*, !mcsema_real_eip !40
  %166 = load i64, i64* %165, align 8, !mcsema_real_eip !40
  store i64 %166, i64* %XIP, align 8, !mcsema_real_eip !40
  store i64 %164, i64* %XSP, align 8, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !41
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !41
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !41
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !41
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !41
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !41
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !41
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !41
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !41
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !41
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !41
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !41
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !41
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !41
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !41
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !41
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !41
  %RSP_val.63 = load i64, i64* %XSP, align 8, !mcsema_real_eip !41
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %1 = add i64 %RSP_val.63, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !42
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.63, -56
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16
  %5 = icmp eq i64 %4, 0
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !43
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !43
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !43
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !43
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !43
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 48 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !43
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !43
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !43
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !43
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !44
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %14 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %14, align 4, !mcsema_real_eip !45
  br label %block_0xa6, !mcsema_real_eip !46

block_0xa6:                                       ; preds = %block_0xb0, %entry
  %15 = phi i32 [ %.pre, %block_0xb0 ], [ 0, %entry ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195.pre, %block_0xb0 ], [ %_new_gep_, %entry ]
  %16 = add i32 %15, -5
  %17 = xor i32 %16, %15, !mcsema_real_eip !46
  %18 = and i32 %17, 16, !mcsema_real_eip !46
  %19 = icmp ne i32 %18, 0, !mcsema_real_eip !46
  store i1 %19, i1* %AF, align 1, !mcsema_real_eip !46
  %20 = trunc i32 %16 to i8, !mcsema_real_eip !46
  %21 = call i8 @llvm.ctpop.i8(i8 %20), !mcsema_real_eip !46
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  store i1 %23, i1* %PF, align 1, !mcsema_real_eip !46
  %24 = icmp eq i32 %16, 0, !mcsema_real_eip !46
  store i1 %24, i1* %ZF, align 1, !mcsema_real_eip !46
  %25 = icmp slt i32 %16, 0
  store i1 %25, i1* %SF, align 1, !mcsema_real_eip !46
  %26 = icmp ult i32 %15, 5, !mcsema_real_eip !46
  store i1 %26, i1* %CF, align 1, !mcsema_real_eip !46
  %27 = and i32 %17, %15, !mcsema_real_eip !46
  %28 = icmp slt i32 %27, 0
  store i1 %28, i1* %OF, align 1, !mcsema_real_eip !46
  %tmp = xor i1 %25, %28
  br i1 %tmp, label %block_0xb0, label %block_0xe6, !mcsema_real_eip !47

block_0xb0:                                       ; preds = %block_0xa6
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195, i64 -32
  %29 = ptrtoint i8* %_new_gep_23 to i64
  store i64 %29, i64* %XSI, align 8, !mcsema_real_eip !48
  %30 = bitcast i8* %_new_gep_23 to i32*
  store i32 5, i32* %30, align 4, !mcsema_real_eip !49
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_286 = load i8*, i8** %12, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_286, i64 -28
  %31 = bitcast i8* %_new_gep_29 to i32*
  store i32 6, i32* %31, align 4, !mcsema_real_eip !50
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_317 = load i8*, i8** %12, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_317, i64 -24
  %32 = bitcast i8* %_new_gep_32 to i32*
  store i32 7, i32* %32, align 4, !mcsema_real_eip !51
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_348 = load i8*, i8** %12, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_348, i64 -20
  %33 = bitcast i8* %_new_gep_35 to i32*
  store i32 8, i32* %33, align 4, !mcsema_real_eip !52
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_379 = load i8*, i8** %12, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_379, i64 -36
  %34 = bitcast i8* %_new_gep_38 to i32*
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !53
  %36 = zext i32 %35 to i64, !mcsema_real_eip !53
  store i64 %36, i64* %XDI, align 8, !mcsema_real_eip !53
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.75 = load i64, i64* %XSP, align 8, !mcsema_real_eip !54
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40, i64 -8
  %37 = add i64 %RSP_val.75, -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !54
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_, align 8
  store i64 %37, i64* %XSP, align 8, !mcsema_real_eip !54
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7110 = load i8*, i8** %12, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_41, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7110)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4311 = load i8*, i8** %12, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4311, i64 -36
  %38 = bitcast i8* %_new_gep_44 to i32*
  %39 = load i32, i32* %38, align 4, !mcsema_real_eip !55
  %40 = add i32 %39, 1, !mcsema_real_eip !56
  %41 = xor i32 %40, %39, !mcsema_real_eip !56
  %42 = and i32 %41, 16, !mcsema_real_eip !56
  %43 = icmp ne i32 %42, 0, !mcsema_real_eip !56
  store i1 %43, i1* %AF, align 1, !mcsema_real_eip !56
  %44 = icmp slt i32 %40, 0
  store i1 %44, i1* %SF, align 1, !mcsema_real_eip !56
  %45 = icmp eq i32 %40, 0, !mcsema_real_eip !56
  store i1 %45, i1* %ZF, align 1, !mcsema_real_eip !56
  %46 = xor i32 %39, -2147483648, !mcsema_real_eip !56
  %47 = and i32 %41, %46, !mcsema_real_eip !56
  %48 = icmp slt i32 %47, 0
  store i1 %48, i1* %OF, align 1, !mcsema_real_eip !56
  %49 = trunc i32 %40 to i8, !mcsema_real_eip !56
  %50 = call i8 @llvm.ctpop.i8(i8 %49), !mcsema_real_eip !56
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  store i1 %52, i1* %PF, align 1, !mcsema_real_eip !56
  %53 = icmp eq i32 %39, -1
  store i1 %53, i1* %CF, align 1, !mcsema_real_eip !56
  %54 = zext i32 %40 to i64, !mcsema_real_eip !56
  store i64 %54, i64* %XAX, align 8, !mcsema_real_eip !56
  store i32 %40, i32* %38, align 4, !mcsema_real_eip !57
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195.pre = load i8*, i8** %12, align 8
  %_new_gep_20.phi.trans.insert = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195.pre, i64 -36
  %.phi.trans.insert = bitcast i8* %_new_gep_20.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 4
  br label %block_0xa6, !mcsema_real_eip !58

block_0xe6:                                       ; preds = %block_0xa6
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !41
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !59
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.86 = load i64, i64* %XSP, align 8, !mcsema_real_eip !60
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 48
  %55 = add i64 %RSP_val.86, 48, !mcsema_real_eip !60
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %56 = and i64 %_trans_xor_53, 16
  %57 = icmp eq i64 %56, 0
  store i1 %57, i1* %AF, align 1, !mcsema_real_eip !60
  %58 = icmp slt i64 %55, 0
  store i1 %58, i1* %SF, align 1, !mcsema_real_eip !60
  %_trans_icmp_eq_55 = icmp eq i8* %_new_gep_50, null
  store i1 %_trans_icmp_eq_55, i1* %ZF, align 1, !mcsema_real_eip !60
  %59 = xor i64 %_trans_p2i_52, -9223372036854775808, !mcsema_real_eip !60
  %60 = and i64 %_trans_xor_53, %59, !mcsema_real_eip !60
  %61 = icmp slt i64 %60, 0
  store i1 %61, i1* %OF, align 1, !mcsema_real_eip !60
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %62 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !60
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  store i1 %64, i1* %PF, align 1, !mcsema_real_eip !60
  %_trans_icmp_ne_64 = icmp ne i64 %RSP_val.86, %_trans_p2i_51
  store i1 %_trans_icmp_ne_64, i1* %CF, align 1, !mcsema_real_eip !60
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %55, i64* %XSP, align 8, !mcsema_real_eip !60
  %_allin_new_bt_66 = bitcast i8* %_new_gep_50 to i64*
  %65 = load i64, i64* %_allin_new_bt_66, align 8, !mcsema_real_eip !61
  store volatile i64 %65, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %65, i64* %XBP, align 8, !mcsema_real_eip !61
  %_new_gep_67 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 56
  %66 = add i64 %RSP_val.86, 56, !mcsema_real_eip !61
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_, align 8
  store i64 %66, i64* %XSP, align 8, !mcsema_real_eip !61
  %_new_gep_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 64
  %67 = add i64 %RSP_val.86, 64, !mcsema_real_eip !62
  %_allin_new_bt_70 = bitcast i8* %_new_gep_67 to i64*
  %68 = load i64, i64* %_allin_new_bt_70, align 8, !mcsema_real_eip !62
  store i64 %68, i64* %XIP, align 8, !mcsema_real_eip !62
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_, align 8
  store i64 %67, i64* %XSP, align 8, !mcsema_real_eip !62
  ret void, !mcsema_real_eip !62
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [48 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
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
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !4
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 32 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, align 4, !mcsema_real_eip !5
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 %EDI_val.6, i32* %11, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %RSI_val.8 = load i64, i64* %XSI, align 8, !mcsema_real_eip !6
  store i64 %RSI_val.8, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %12 = bitcast i8* %_new_gep_20 to i32*
  store i32 3, i32* %12, align 4, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  br label %block_0x16, !mcsema_real_eip !8

block_0x16:                                       ; preds = %block_0x22, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22.pre, %block_0x22 ], [ %_new_gep_, %entry ]
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -20
  %13 = ptrtoint i8* %_new_gep_23 to i64
  %_offset_above_rbp_ = sub i64 %13, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_23
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %14 = zext i32 %_new_load_ to i64, !mcsema_real_eip !8
  store i64 %14, i64* %XAX, align 8, !mcsema_real_eip !8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -4
  %15 = ptrtoint i8* %_new_gep_26 to i64
  %_offset_above_rbp_112 = sub i64 %15, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  %.v = select i1 %_cond1_n_cond2_cond3_120, i8* %_pot_address_in_parent_stack_113, i8* %_new_gep_26
  %16 = bitcast i8* %.v to i32*
  %_new_load_123 = load i32, i32* %16, align 4
  %17 = sub i32 %_new_load_, %_new_load_123, !mcsema_real_eip !9
  %18 = xor i32 %17, %_new_load_, !mcsema_real_eip !9
  %19 = xor i32 %18, %_new_load_123, !mcsema_real_eip !9
  %20 = and i32 %19, 16, !mcsema_real_eip !9
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !9
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !9
  %22 = trunc i32 %17 to i8, !mcsema_real_eip !9
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !9
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !9
  %26 = icmp eq i32 %17, 0, !mcsema_real_eip !9
  store i1 %26, i1* %ZF, align 1, !mcsema_real_eip !9
  %27 = icmp slt i32 %17, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !9
  %28 = icmp ult i32 %_new_load_, %_new_load_123, !mcsema_real_eip !9
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !9
  %29 = xor i32 %_new_load_123, %_new_load_, !mcsema_real_eip !9
  %30 = and i32 %18, %29, !mcsema_real_eip !9
  %31 = icmp slt i32 %30, 0
  store i1 %31, i1* %OF, align 1, !mcsema_real_eip !9
  %32 = or i1 %28, %26, !mcsema_real_eip !10
  br i1 %32, label %block_0x4d, label %block_0x22, !mcsema_real_eip !10

block_0x22:                                       ; preds = %block_0x16
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -16
  %_ptr_to_int_124 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_127 = sub i64 %_ptr_to_int_124, %_local_end_to_int_
  %_pot_address_in_parent_stack_128 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_127
  %_cond1_129 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_130 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_131 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_132 = or i1 %_cond2_1_130, %_cond2_2_131
  %_cond4_133 = icmp ule i8* %_pot_address_in_parent_stack_128, %_parent_stack_end_ptr_
  %_cond1_n_cond2_134 = and i1 %_cond1_129, %_cond2_132
  %_cond1_n_cond2_cond3_135 = and i1 %_cond1_n_cond2_134, %_cond4_133
  %_address_in_parent_stack_bt_137._allin_new_bt_30.v = select i1 %_cond1_n_cond2_cond3_135, i8* %_pot_address_in_parent_stack_128, i8* %_new_gep_29
  %_address_in_parent_stack_bt_137._allin_new_bt_30 = bitcast i8* %_address_in_parent_stack_bt_137._allin_new_bt_30.v to i64*
  %_new_load_138 = load i64, i64* %_address_in_parent_stack_bt_137._allin_new_bt_30, align 8
  store i64 %_new_load_138, i64* %XAX, align 8, !mcsema_real_eip !11
  %_new_load_153 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %33 = add i32 %_new_load_153, -1
  %34 = xor i32 %33, %_new_load_153, !mcsema_real_eip !13
  %35 = and i32 %34, 16, !mcsema_real_eip !13
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !13
  store i1 %36, i1* %AF, align 1, !mcsema_real_eip !13
  %37 = trunc i32 %33 to i8, !mcsema_real_eip !13
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !13
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  store i1 %40, i1* %PF, align 1, !mcsema_real_eip !13
  %41 = icmp eq i32 %33, 0, !mcsema_real_eip !13
  store i1 %41, i1* %ZF, align 1, !mcsema_real_eip !13
  %42 = icmp slt i32 %33, 0
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !13
  %43 = icmp eq i32 %_new_load_153, 0
  store i1 %43, i1* %CF, align 1, !mcsema_real_eip !13
  %44 = and i32 %34, %_new_load_153, !mcsema_real_eip !13
  %45 = icmp slt i32 %44, 0
  store i1 %45, i1* %OF, align 1, !mcsema_real_eip !13
  %46 = zext i32 %33 to i64
  store i64 %46, i64* %XCX, align 8, !mcsema_real_eip !14
  store i64 %46, i64* %XDX, align 8, !mcsema_real_eip !15
  %47 = shl nuw nsw i64 %46, 2
  %48 = add i64 %47, %_new_load_138, !mcsema_real_eip !16
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !16
  %_ptr_bt_156 = inttoptr i64 %48 to i8*
  %_offset_above_rbp_157 = sub i64 %48, %_local_end_to_int_
  %_pot_address_in_parent_stack_158 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_157
  %_cond1_159 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_156
  %_cond2_1_160 = icmp ugt i8* %_ptr_bt_156, %_parent_stack_end_ptr_
  %_cond2_2_161 = icmp ult i8* %_ptr_bt_156, %_parent_stack_start_ptr_
  %_cond2_162 = or i1 %_cond2_1_160, %_cond2_2_161
  %_cond4_163 = icmp ule i8* %_pot_address_in_parent_stack_158, %_parent_stack_end_ptr_
  %_cond1_n_cond2_164 = and i1 %_cond1_159, %_cond2_162
  %_cond1_n_cond2_cond3_165 = and i1 %_cond4_163, %_cond1_n_cond2_164
  %_address_in_parent_stack_bt_167 = bitcast i8* %_pot_address_in_parent_stack_158 to i32*
  %_address_in_parent_stack_bt_167. = select i1 %_cond1_n_cond2_cond3_165, i32* %_address_in_parent_stack_bt_167, i32* %49
  %_new_load_168 = load i32, i32* %_address_in_parent_stack_bt_167., align 4
  %50 = zext i32 %_new_load_168 to i64, !mcsema_real_eip !16
  store i64 %50, i64* %XCX, align 8, !mcsema_real_eip !16
  %_new_load_183 = load i64, i64* %_address_in_parent_stack_bt_137._allin_new_bt_30, align 8
  store i64 %_new_load_183, i64* %XAX, align 8, !mcsema_real_eip !17
  %_new_load_198 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %51 = zext i32 %_new_load_198 to i64
  store i64 %51, i64* %XSI, align 8, !mcsema_real_eip !18
  store i64 %51, i64* %XDX, align 8, !mcsema_real_eip !19
  %52 = shl nuw nsw i64 %51, 2
  %53 = add i64 %52, %_new_load_183, !mcsema_real_eip !20
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !20
  store i32 %_new_load_168, i32* %54, align 4, !mcsema_real_eip !20
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -20
  %55 = ptrtoint i8* %_new_gep_41 to i64
  %56 = bitcast i8* %_new_gep_41 to i32*
  %_offset_above_rbp_202 = sub i64 %55, %_local_end_to_int_
  %_pot_address_in_parent_stack_203 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_202
  %_cond1_204 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_205 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_206 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_207 = or i1 %_cond2_1_205, %_cond2_2_206
  %_cond4_208 = icmp ule i8* %_pot_address_in_parent_stack_203, %_parent_stack_end_ptr_
  %_cond1_n_cond2_209 = and i1 %_cond1_204, %_cond2_207
  %_cond1_n_cond2_cond3_210 = and i1 %_cond1_n_cond2_209, %_cond4_208
  %_address_in_parent_stack_bt_212 = bitcast i8* %_pot_address_in_parent_stack_203 to i32*
  %57 = select i1 %_cond1_n_cond2_cond3_210, i32* %_address_in_parent_stack_bt_212, i32* %56
  %_new_load_213 = load i32, i32* %57, align 4
  %58 = add i32 %_new_load_213, -1, !mcsema_real_eip !22
  %59 = xor i32 %58, %_new_load_213, !mcsema_real_eip !22
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  store i1 %61, i1* %AF, align 1, !mcsema_real_eip !22
  %62 = icmp slt i32 %58, 0
  store i1 %62, i1* %SF, align 1, !mcsema_real_eip !22
  %63 = icmp eq i32 %58, 0, !mcsema_real_eip !22
  store i1 %63, i1* %ZF, align 1, !mcsema_real_eip !22
  %64 = and i32 %59, %_new_load_213, !mcsema_real_eip !22
  %65 = icmp slt i32 %64, 0
  store i1 %65, i1* %OF, align 1, !mcsema_real_eip !22
  %66 = trunc i32 %58 to i8, !mcsema_real_eip !22
  %67 = call i8 @llvm.ctpop.i8(i8 %66), !mcsema_real_eip !22
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  store i1 %69, i1* %PF, align 1, !mcsema_real_eip !22
  %70 = icmp ne i32 %_new_load_213, 0
  store i1 %70, i1* %CF, align 1, !mcsema_real_eip !22
  %71 = zext i32 %58 to i64, !mcsema_real_eip !22
  store i64 %71, i64* %XAX, align 8, !mcsema_real_eip !22
  store i32 %58, i32* %56, align 4, !mcsema_real_eip !23
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x16, !mcsema_real_eip !24

block_0x4d:                                       ; preds = %block_0x16
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, align 8, !mcsema_real_eip !25
  %_new_load_228 = load i32, i32* %16, align 4
  %72 = zext i32 %_new_load_228 to i64, !mcsema_real_eip !26
  store i64 %72, i64* %XSI, align 8, !mcsema_real_eip !26
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -16
  %_ptr_to_int_229 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_232 = sub i64 %_ptr_to_int_229, %_local_end_to_int_
  %_pot_address_in_parent_stack_233 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_232
  %_cond1_234 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_235 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_236 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_237 = or i1 %_cond2_1_235, %_cond2_2_236
  %_cond4_238 = icmp ule i8* %_pot_address_in_parent_stack_233, %_parent_stack_end_ptr_
  %_cond1_n_cond2_239 = and i1 %_cond1_234, %_cond2_237
  %_cond1_n_cond2_cond3_240 = and i1 %_cond1_n_cond2_239, %_cond4_238
  %.v2 = select i1 %_cond1_n_cond2_cond3_240, i8* %_pot_address_in_parent_stack_233, i8* %_new_gep_50
  %73 = bitcast i8* %.v2 to i64*
  %_new_load_243 = load i64, i64* %73, align 8
  store i64 %_new_load_243, i64* %XAX, align 8, !mcsema_real_eip !27
  %74 = inttoptr i64 %_new_load_243 to i32*, !mcsema_real_eip !28
  %_ptr_bt_246 = inttoptr i64 %_new_load_243 to i8*
  %_offset_above_rbp_247 = sub i64 %_new_load_243, %_local_end_to_int_
  %_pot_address_in_parent_stack_248 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_247
  %_cond1_249 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_246
  %_cond2_1_250 = icmp ugt i8* %_ptr_bt_246, %_parent_stack_end_ptr_
  %_cond2_2_251 = icmp ult i8* %_ptr_bt_246, %_parent_stack_start_ptr_
  %_cond2_252 = or i1 %_cond2_1_250, %_cond2_2_251
  %_cond4_253 = icmp ule i8* %_pot_address_in_parent_stack_248, %_parent_stack_end_ptr_
  %_cond1_n_cond2_254 = and i1 %_cond1_249, %_cond2_252
  %_cond1_n_cond2_cond3_255 = and i1 %_cond4_253, %_cond1_n_cond2_254
  %_address_in_parent_stack_bt_257 = bitcast i8* %_pot_address_in_parent_stack_248 to i32*
  %_address_in_parent_stack_bt_257. = select i1 %_cond1_n_cond2_cond3_255, i32* %_address_in_parent_stack_bt_257, i32* %74
  %_new_load_258 = load i32, i32* %_address_in_parent_stack_bt_257., align 4
  %75 = zext i32 %_new_load_258 to i64, !mcsema_real_eip !28
  store i64 %75, i64* %XDX, align 8, !mcsema_real_eip !28
  %_new_load_273 = load i64, i64* %73, align 8
  store i64 %_new_load_273, i64* %XAX, align 8, !mcsema_real_eip !29
  %76 = add i64 %_new_load_273, 4, !mcsema_real_eip !30
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !30
  %_ptr_bt_276 = inttoptr i64 %76 to i8*
  %_offset_above_rbp_277 = sub i64 %76, %_local_end_to_int_
  %_pot_address_in_parent_stack_278 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_277
  %_cond1_279 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_276
  %_cond2_1_280 = icmp ugt i8* %_ptr_bt_276, %_parent_stack_end_ptr_
  %_cond2_2_281 = icmp ult i8* %_ptr_bt_276, %_parent_stack_start_ptr_
  %_cond2_282 = or i1 %_cond2_1_280, %_cond2_2_281
  %_cond4_283 = icmp ule i8* %_pot_address_in_parent_stack_278, %_parent_stack_end_ptr_
  %_cond1_n_cond2_284 = and i1 %_cond1_279, %_cond2_282
  %_cond1_n_cond2_cond3_285 = and i1 %_cond4_283, %_cond1_n_cond2_284
  %_address_in_parent_stack_bt_287 = bitcast i8* %_pot_address_in_parent_stack_278 to i32*
  %_address_in_parent_stack_bt_287. = select i1 %_cond1_n_cond2_cond3_285, i32* %_address_in_parent_stack_bt_287, i32* %77
  %_new_load_288 = load i32, i32* %_address_in_parent_stack_bt_287., align 4
  %78 = zext i32 %_new_load_288 to i64, !mcsema_real_eip !30
  store i64 %78, i64* %XCX, align 8, !mcsema_real_eip !30
  %_new_load_303 = load i64, i64* %73, align 8
  store i64 %_new_load_303, i64* %XAX, align 8, !mcsema_real_eip !31
  %79 = add i64 %_new_load_303, 8, !mcsema_real_eip !32
  %80 = inttoptr i64 %79 to i32*, !mcsema_real_eip !32
  %_ptr_bt_306 = inttoptr i64 %79 to i8*
  %_offset_above_rbp_307 = sub i64 %79, %_local_end_to_int_
  %_pot_address_in_parent_stack_308 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_307
  %_cond1_309 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_306
  %_cond2_1_310 = icmp ugt i8* %_ptr_bt_306, %_parent_stack_end_ptr_
  %_cond2_2_311 = icmp ult i8* %_ptr_bt_306, %_parent_stack_start_ptr_
  %_cond2_312 = or i1 %_cond2_1_310, %_cond2_2_311
  %_cond4_313 = icmp ule i8* %_pot_address_in_parent_stack_308, %_parent_stack_end_ptr_
  %_cond1_n_cond2_314 = and i1 %_cond1_309, %_cond2_312
  %_cond1_n_cond2_cond3_315 = and i1 %_cond4_313, %_cond1_n_cond2_314
  %_address_in_parent_stack_bt_317 = bitcast i8* %_pot_address_in_parent_stack_308 to i32*
  %_address_in_parent_stack_bt_317. = select i1 %_cond1_n_cond2_cond3_315, i32* %_address_in_parent_stack_bt_317, i32* %80
  %_new_load_318 = load i32, i32* %_address_in_parent_stack_bt_317., align 4
  %81 = zext i32 %_new_load_318 to i64, !mcsema_real_eip !32
  store i64 %81, i64* %R8, align 8, !mcsema_real_eip !32
  %_new_load_333 = load i64, i64* %73, align 8
  store i64 %_new_load_333, i64* %XAX, align 8, !mcsema_real_eip !33
  %82 = add i64 %_new_load_333, 12, !mcsema_real_eip !34
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !34
  %_ptr_bt_336 = inttoptr i64 %82 to i8*
  %_offset_above_rbp_337 = sub i64 %82, %_local_end_to_int_
  %_pot_address_in_parent_stack_338 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_337
  %_cond1_339 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_336
  %_cond2_1_340 = icmp ugt i8* %_ptr_bt_336, %_parent_stack_end_ptr_
  %_cond2_2_341 = icmp ult i8* %_ptr_bt_336, %_parent_stack_start_ptr_
  %_cond2_342 = or i1 %_cond2_1_340, %_cond2_2_341
  %_cond4_343 = icmp ule i8* %_pot_address_in_parent_stack_338, %_parent_stack_end_ptr_
  %_cond1_n_cond2_344 = and i1 %_cond1_339, %_cond2_342
  %_cond1_n_cond2_cond3_345 = and i1 %_cond4_343, %_cond1_n_cond2_344
  %_address_in_parent_stack_bt_347 = bitcast i8* %_pot_address_in_parent_stack_338 to i32*
  %_address_in_parent_stack_bt_347. = select i1 %_cond1_n_cond2_cond3_345, i32* %_address_in_parent_stack_bt_347, i32* %83
  %_new_load_348 = load i32, i32* %_address_in_parent_stack_bt_347., align 4
  %84 = zext i32 %_new_load_348 to i64, !mcsema_real_eip !34
  store i64 %84, i64* %R9, align 8, !mcsema_real_eip !34
  %AL.47 = bitcast i64* %XAX to i8*, !mcsema_real_eip !35
  store i8 0, i8* %AL.47, align 1, !mcsema_real_eip !35
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_349 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61 to i64
  %_offset_above_rbp_352 = sub i64 %_ptr_to_int_349, %_local_end_to_int_
  %_pot_address_in_parent_stack_353 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_352
  %_cond1_354 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, %_local_stack_end_ptr_
  %_cond2_1_355 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, %_parent_stack_end_ptr_
  %_cond2_2_356 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, %_parent_stack_start_ptr_
  %_cond2_357 = or i1 %_cond2_1_355, %_cond2_2_356
  %_cond4_358 = icmp ule i8* %_pot_address_in_parent_stack_353, %_parent_stack_end_ptr_
  %_cond1_n_cond2_359 = and i1 %_cond1_354, %_cond2_357
  %_cond1_n_cond2_cond3_360 = and i1 %_cond1_n_cond2_359, %_cond4_358
  %.v3 = select i1 %_cond1_n_cond2_cond3_360, i8* %_pot_address_in_parent_stack_353, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61
  %85 = bitcast i8* %.v3 to i64*
  %_new_load_363 = load i64, i64* %85, align 8
  %_new_gep_63 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 8
  %_ptr_to_int_364 = ptrtoint i8* %_new_gep_63 to i64
  %_offset_above_rbp_367 = sub i64 %_ptr_to_int_364, %_local_end_to_int_
  %_pot_address_in_parent_stack_368 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_367
  %_cond1_369 = icmp ugt i8* %_new_gep_63, %_local_stack_end_ptr_
  %_cond2_1_370 = icmp ugt i8* %_new_gep_63, %_parent_stack_end_ptr_
  %_cond2_2_371 = icmp ult i8* %_new_gep_63, %_parent_stack_start_ptr_
  %_cond2_372 = or i1 %_cond2_1_370, %_cond2_2_371
  %_cond4_373 = icmp ule i8* %_pot_address_in_parent_stack_368, %_parent_stack_end_ptr_
  %_cond1_n_cond2_374 = and i1 %_cond1_369, %_cond2_372
  %_cond1_n_cond2_cond3_375 = and i1 %_cond1_n_cond2_374, %_cond4_373
  %_address_in_parent_stack_bt_377._allin_new_bt_64.v = select i1 %_cond1_n_cond2_cond3_375, i8* %_pot_address_in_parent_stack_368, i8* %_new_gep_63
  %_address_in_parent_stack_bt_377._allin_new_bt_64 = bitcast i8* %_address_in_parent_stack_bt_377._allin_new_bt_64.v to i64*
  %_new_load_378 = load i64, i64* %_address_in_parent_stack_bt_377._allin_new_bt_64, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 16
  %_ptr_to_int_379 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_382 = sub i64 %_ptr_to_int_379, %_local_end_to_int_
  %_pot_address_in_parent_stack_383 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_382
  %_cond1_384 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_385 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_386 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_387 = or i1 %_cond2_1_385, %_cond2_2_386
  %_cond4_388 = icmp ule i8* %_pot_address_in_parent_stack_383, %_parent_stack_end_ptr_
  %_cond1_n_cond2_389 = and i1 %_cond1_384, %_cond2_387
  %_cond1_n_cond2_cond3_390 = and i1 %_cond1_n_cond2_389, %_cond4_388
  %.v4 = select i1 %_cond1_n_cond2_cond3_390, i8* %_pot_address_in_parent_stack_383, i8* %_new_gep_65
  %86 = bitcast i8* %.v4 to i64*
  %_new_load_393 = load i64, i64* %86, align 8
  %_new_gep_67 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 24
  %_ptr_to_int_394 = ptrtoint i8* %_new_gep_67 to i64
  %_offset_above_rbp_397 = sub i64 %_ptr_to_int_394, %_local_end_to_int_
  %_pot_address_in_parent_stack_398 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_397
  %_cond1_399 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_400 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_401 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_402 = or i1 %_cond2_1_400, %_cond2_2_401
  %_cond4_403 = icmp ule i8* %_pot_address_in_parent_stack_398, %_parent_stack_end_ptr_
  %_cond1_n_cond2_404 = and i1 %_cond1_399, %_cond2_402
  %_cond1_n_cond2_cond3_405 = and i1 %_cond1_n_cond2_404, %_cond4_403
  %_address_in_parent_stack_bt_407._allin_new_bt_68.v = select i1 %_cond1_n_cond2_cond3_405, i8* %_pot_address_in_parent_stack_398, i8* %_new_gep_67
  %_address_in_parent_stack_bt_407._allin_new_bt_68 = bitcast i8* %_address_in_parent_stack_bt_407._allin_new_bt_68.v to i64*
  %_new_load_408 = load i64, i64* %_address_in_parent_stack_bt_407._allin_new_bt_68, align 8
  %_new_gep_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 32
  %_ptr_to_int_409 = ptrtoint i8* %_new_gep_69 to i64
  %_offset_above_rbp_412 = sub i64 %_ptr_to_int_409, %_local_end_to_int_
  %_pot_address_in_parent_stack_413 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_412
  %_cond1_414 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_415 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_416 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_417 = or i1 %_cond2_1_415, %_cond2_2_416
  %_cond4_418 = icmp ule i8* %_pot_address_in_parent_stack_413, %_parent_stack_end_ptr_
  %_cond1_n_cond2_419 = and i1 %_cond1_414, %_cond2_417
  %_cond1_n_cond2_cond3_420 = and i1 %_cond1_n_cond2_419, %_cond4_418
  %.v5 = select i1 %_cond1_n_cond2_cond3_420, i8* %_pot_address_in_parent_stack_413, i8* %_new_gep_69
  %87 = bitcast i8* %.v5 to i64*
  %_new_load_423 = load i64, i64* %87, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 40
  %_ptr_to_int_424 = ptrtoint i8* %_new_gep_71 to i64
  %_offset_above_rbp_427 = sub i64 %_ptr_to_int_424, %_local_end_to_int_
  %_pot_address_in_parent_stack_428 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_427
  %_cond1_429 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_430 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_431 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_432 = or i1 %_cond2_1_430, %_cond2_2_431
  %_cond4_433 = icmp ule i8* %_pot_address_in_parent_stack_428, %_parent_stack_end_ptr_
  %_cond1_n_cond2_434 = and i1 %_cond1_429, %_cond2_432
  %_cond1_n_cond2_cond3_435 = and i1 %_cond1_n_cond2_434, %_cond4_433
  %_address_in_parent_stack_bt_437._allin_new_bt_72.v = select i1 %_cond1_n_cond2_cond3_435, i8* %_pot_address_in_parent_stack_428, i8* %_new_gep_71
  %_address_in_parent_stack_bt_437._allin_new_bt_72 = bitcast i8* %_address_in_parent_stack_bt_437._allin_new_bt_72.v to i64*
  %_new_load_438 = load i64, i64* %_address_in_parent_stack_bt_437._allin_new_bt_72, align 8
  %_new_gep_73 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 48
  %_ptr_to_int_439 = ptrtoint i8* %_new_gep_73 to i64
  %_offset_above_rbp_442 = sub i64 %_ptr_to_int_439, %_local_end_to_int_
  %_pot_address_in_parent_stack_443 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_442
  %_cond1_444 = icmp ugt i8* %_new_gep_73, %_local_stack_end_ptr_
  %_cond2_1_445 = icmp ugt i8* %_new_gep_73, %_parent_stack_end_ptr_
  %_cond2_2_446 = icmp ult i8* %_new_gep_73, %_parent_stack_start_ptr_
  %_cond2_447 = or i1 %_cond2_1_445, %_cond2_2_446
  %_cond4_448 = icmp ule i8* %_pot_address_in_parent_stack_443, %_parent_stack_end_ptr_
  %_cond1_n_cond2_449 = and i1 %_cond1_444, %_cond2_447
  %_cond1_n_cond2_cond3_450 = and i1 %_cond1_n_cond2_449, %_cond4_448
  %.v6 = select i1 %_cond1_n_cond2_cond3_450, i8* %_pot_address_in_parent_stack_443, i8* %_new_gep_73
  %88 = bitcast i8* %.v6 to i64*
  %_new_load_453 = load i64, i64* %88, align 8
  %_new_gep_75 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 56
  %_ptr_to_int_454 = ptrtoint i8* %_new_gep_75 to i64
  %_offset_above_rbp_457 = sub i64 %_ptr_to_int_454, %_local_end_to_int_
  %_pot_address_in_parent_stack_458 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_457
  %_cond1_459 = icmp ugt i8* %_new_gep_75, %_local_stack_end_ptr_
  %_cond2_1_460 = icmp ugt i8* %_new_gep_75, %_parent_stack_end_ptr_
  %_cond2_2_461 = icmp ult i8* %_new_gep_75, %_parent_stack_start_ptr_
  %_cond2_462 = or i1 %_cond2_1_460, %_cond2_2_461
  %_cond4_463 = icmp ule i8* %_pot_address_in_parent_stack_458, %_parent_stack_end_ptr_
  %_cond1_n_cond2_464 = and i1 %_cond1_459, %_cond2_462
  %_cond1_n_cond2_cond3_465 = and i1 %_cond1_n_cond2_464, %_cond4_463
  %_address_in_parent_stack_bt_467._allin_new_bt_76.v = select i1 %_cond1_n_cond2_cond3_465, i8* %_pot_address_in_parent_stack_458, i8* %_new_gep_75
  %_address_in_parent_stack_bt_467._allin_new_bt_76 = bitcast i8* %_address_in_parent_stack_bt_467._allin_new_bt_76.v to i64*
  %_new_load_468 = load i64, i64* %_address_in_parent_stack_bt_467._allin_new_bt_76, align 8
  %_new_gep_77 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 64
  %_ptr_to_int_469 = ptrtoint i8* %_new_gep_77 to i64
  %_offset_above_rbp_472 = sub i64 %_ptr_to_int_469, %_local_end_to_int_
  %_pot_address_in_parent_stack_473 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_472
  %_cond1_474 = icmp ugt i8* %_new_gep_77, %_local_stack_end_ptr_
  %_cond2_1_475 = icmp ugt i8* %_new_gep_77, %_parent_stack_end_ptr_
  %_cond2_2_476 = icmp ult i8* %_new_gep_77, %_parent_stack_start_ptr_
  %_cond2_477 = or i1 %_cond2_1_475, %_cond2_2_476
  %_cond4_478 = icmp ule i8* %_pot_address_in_parent_stack_473, %_parent_stack_end_ptr_
  %_cond1_n_cond2_479 = and i1 %_cond1_474, %_cond2_477
  %_cond1_n_cond2_cond3_480 = and i1 %_cond1_n_cond2_479, %_cond4_478
  %.v7 = select i1 %_cond1_n_cond2_cond3_480, i8* %_pot_address_in_parent_stack_473, i8* %_new_gep_77
  %89 = bitcast i8* %.v7 to i64*
  %_new_load_483 = load i64, i64* %89, align 8
  %_new_gep_79 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 72
  %_ptr_to_int_484 = ptrtoint i8* %_new_gep_79 to i64
  %_offset_above_rbp_487 = sub i64 %_ptr_to_int_484, %_local_end_to_int_
  %_pot_address_in_parent_stack_488 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_487
  %_cond1_489 = icmp ugt i8* %_new_gep_79, %_local_stack_end_ptr_
  %_cond2_1_490 = icmp ugt i8* %_new_gep_79, %_parent_stack_end_ptr_
  %_cond2_2_491 = icmp ult i8* %_new_gep_79, %_parent_stack_start_ptr_
  %_cond2_492 = or i1 %_cond2_1_490, %_cond2_2_491
  %_cond4_493 = icmp ule i8* %_pot_address_in_parent_stack_488, %_parent_stack_end_ptr_
  %_cond1_n_cond2_494 = and i1 %_cond1_489, %_cond2_492
  %_cond1_n_cond2_cond3_495 = and i1 %_cond1_n_cond2_494, %_cond4_493
  %_address_in_parent_stack_bt_497._allin_new_bt_80.v = select i1 %_cond1_n_cond2_cond3_495, i8* %_pot_address_in_parent_stack_488, i8* %_new_gep_79
  %_address_in_parent_stack_bt_497._allin_new_bt_80 = bitcast i8* %_address_in_parent_stack_bt_497._allin_new_bt_80.v to i64*
  %_new_load_498 = load i64, i64* %_address_in_parent_stack_bt_497._allin_new_bt_80, align 8
  %RSP_val.55 = load i64, i64* %XSP, align 8, !mcsema_real_eip !36
  %_new_gep_82 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 -8
  %90 = add i64 %RSP_val.55, -8
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_83, align 8, !mcsema_real_eip !36
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_, align 8
  store i64 %90, i64* %XSP, align 8, !mcsema_real_eip !36
  %91 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xee to i64), i64 %72, i64 %75, i64 %78, i64 %81, i64 %84, i64 %_new_load_363, i64 %_new_load_378, i64 %_new_load_393, i64 %_new_load_408, i64 %_new_load_423, i64 %_new_load_438, i64 %_new_load_453, i64 %_new_load_468, i64 %_new_load_483, i64 %_new_load_498)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %91, i64* %XAX, align 8, !mcsema_real_eip !36
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_85 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_84, i64 -24
  %92 = trunc i64 %91 to i32
  %93 = bitcast i8* %_new_gep_85 to i32*
  store i32 %92, i32* %93, align 4, !mcsema_real_eip !37
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_87 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.59 = load i64, i64* %XSP, align 8, !mcsema_real_eip !38
  %_new_gep_88 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_87, i64 32
  %94 = add i64 %RSP_val.59, 32, !mcsema_real_eip !38
  %_trans_p2i_89 = ptrtoint i8* %_new_gep_88 to i64
  %_trans_p2i_90 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_87 to i64
  %_trans_xor_91 = xor i64 %_trans_p2i_89, %_trans_p2i_90
  %95 = and i64 %_trans_xor_91, 16, !mcsema_real_eip !38
  %96 = icmp ne i64 %95, 0, !mcsema_real_eip !38
  store i1 %96, i1* %AF, align 1, !mcsema_real_eip !38
  %97 = icmp slt i64 %94, 0
  store i1 %97, i1* %SF, align 1, !mcsema_real_eip !38
  %_trans_icmp_eq_93 = icmp eq i8* %_new_gep_88, null
  store i1 %_trans_icmp_eq_93, i1* %ZF, align 1, !mcsema_real_eip !38
  %98 = xor i64 %_trans_p2i_90, -9223372036854775808, !mcsema_real_eip !38
  %99 = and i64 %_trans_xor_91, %98, !mcsema_real_eip !38
  %100 = icmp slt i64 %99, 0
  store i1 %100, i1* %OF, align 1, !mcsema_real_eip !38
  %_trans_trunc_100 = trunc i64 %_trans_p2i_89 to i8
  %101 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_100), !mcsema_real_eip !38
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  store i1 %103, i1* %PF, align 1, !mcsema_real_eip !38
  %_trans_icmp_ne_102 = icmp ne i64 %RSP_val.59, %_trans_p2i_89
  store i1 %_trans_icmp_ne_102, i1* %CF, align 1, !mcsema_real_eip !38
  store volatile i8* %_new_gep_88, i8** %_RSP_ptr_, align 8
  store i64 %94, i64* %XSP, align 8, !mcsema_real_eip !38
  %_offset_above_rbp_502 = sub i64 %_trans_p2i_89, %_local_end_to_int_
  %_pot_address_in_parent_stack_503 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_502
  %_cond1_504 = icmp ugt i8* %_new_gep_88, %_local_stack_end_ptr_
  %_cond2_1_505 = icmp ugt i8* %_new_gep_88, %_parent_stack_end_ptr_
  %_cond2_2_506 = icmp ult i8* %_new_gep_88, %_parent_stack_start_ptr_
  %_cond2_507 = or i1 %_cond2_1_505, %_cond2_2_506
  %_cond4_508 = icmp ule i8* %_pot_address_in_parent_stack_503, %_parent_stack_end_ptr_
  %_cond1_n_cond2_509 = and i1 %_cond1_504, %_cond2_507
  %_cond1_n_cond2_cond3_510 = and i1 %_cond1_n_cond2_509, %_cond4_508
  %.v8 = select i1 %_cond1_n_cond2_cond3_510, i8* %_pot_address_in_parent_stack_503, i8* %_new_gep_88
  %104 = bitcast i8* %.v8 to i64*
  %_new_load_513 = load i64, i64* %104, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_513 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_513, i64* %XBP, align 8, !mcsema_real_eip !39
  %_new_gep_105 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_87, i64 40
  %105 = add i64 %RSP_val.59, 40, !mcsema_real_eip !39
  store volatile i8* %_new_gep_105, i8** %_RSP_ptr_, align 8
  store i64 %105, i64* %XSP, align 8, !mcsema_real_eip !39
  %_new_gep_107 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_87, i64 48
  %106 = add i64 %RSP_val.59, 48, !mcsema_real_eip !40
  %_ptr_to_int_514 = ptrtoint i8* %_new_gep_105 to i64
  %_offset_above_rbp_517 = sub i64 %_ptr_to_int_514, %_local_end_to_int_
  %_pot_address_in_parent_stack_518 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_517
  %_cond1_519 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_520 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_521 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_522 = or i1 %_cond2_1_520, %_cond2_2_521
  %_cond4_523 = icmp ule i8* %_pot_address_in_parent_stack_518, %_parent_stack_end_ptr_
  %_cond1_n_cond2_524 = and i1 %_cond1_519, %_cond2_522
  %_cond1_n_cond2_cond3_525 = and i1 %_cond1_n_cond2_524, %_cond4_523
  %_address_in_parent_stack_bt_527._allin_new_bt_108.v = select i1 %_cond1_n_cond2_cond3_525, i8* %_pot_address_in_parent_stack_518, i8* %_new_gep_105
  %_address_in_parent_stack_bt_527._allin_new_bt_108 = bitcast i8* %_address_in_parent_stack_bt_527._allin_new_bt_108.v to i64*
  %_new_load_528 = load i64, i64* %_address_in_parent_stack_bt_527._allin_new_bt_108, align 8
  store i64 %_new_load_528, i64* %XIP, align 8, !mcsema_real_eip !40
  store volatile i8* %_new_gep_107, i8** %_RSP_ptr_, align 8
  store i64 %106, i64* %XSP, align 8, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !41
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !41
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !41
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !41
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !41
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !41
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !41
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !41
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !41
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !41
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !41
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !41
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !41
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !41
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !41
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !41
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !41
  %RSP_val.63 = load i64, i64* %XSP, align 8, !mcsema_real_eip !41
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %1 = add i64 %RSP_val.63, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !42
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.63, -56
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !43
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !43
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !43
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !43
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !43
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 48 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !43
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !43
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !43
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !43
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !44
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %12 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %12, align 4, !mcsema_real_eip !45
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  br label %block_0xa6, !mcsema_real_eip !46

block_0xa6:                                       ; preds = %block_0xb0, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19.pre, %block_0xb0 ], [ %_new_gep_, %entry ]
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -36
  %13 = ptrtoint i8* %_new_gep_20 to i64
  %_offset_above_rbp_ = sub i64 %13, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_20
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %14 = add i32 %_new_load_, -5
  %15 = xor i32 %14, %_new_load_, !mcsema_real_eip !46
  %16 = and i32 %15, 16, !mcsema_real_eip !46
  %17 = icmp ne i32 %16, 0, !mcsema_real_eip !46
  store i1 %17, i1* %AF, align 1, !mcsema_real_eip !46
  %18 = trunc i32 %14 to i8, !mcsema_real_eip !46
  %19 = call i8 @llvm.ctpop.i8(i8 %18), !mcsema_real_eip !46
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  store i1 %21, i1* %PF, align 1, !mcsema_real_eip !46
  %22 = icmp eq i32 %14, 0, !mcsema_real_eip !46
  store i1 %22, i1* %ZF, align 1, !mcsema_real_eip !46
  %23 = icmp slt i32 %14, 0
  store i1 %23, i1* %SF, align 1, !mcsema_real_eip !46
  %24 = icmp ult i32 %_new_load_, 5, !mcsema_real_eip !46
  store i1 %24, i1* %CF, align 1, !mcsema_real_eip !46
  %25 = and i32 %15, %_new_load_, !mcsema_real_eip !46
  %26 = icmp slt i32 %25, 0
  store i1 %26, i1* %OF, align 1, !mcsema_real_eip !46
  %tmp = xor i1 %23, %26
  br i1 %tmp, label %block_0xb0, label %block_0xe6, !mcsema_real_eip !47

block_0xb0:                                       ; preds = %block_0xa6
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -32
  %27 = ptrtoint i8* %_new_gep_23 to i64
  store i64 %27, i64* %XSI, align 8, !mcsema_real_eip !48
  %28 = bitcast i8* %_new_gep_23 to i32*
  store i32 5, i32* %28, align 4, !mcsema_real_eip !49
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -28
  %29 = bitcast i8* %_new_gep_29 to i32*
  store i32 6, i32* %29, align 4, !mcsema_real_eip !50
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -24
  %30 = bitcast i8* %_new_gep_32 to i32*
  store i32 7, i32* %30, align 4, !mcsema_real_eip !51
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -20
  %31 = bitcast i8* %_new_gep_35 to i32*
  store i32 8, i32* %31, align 4, !mcsema_real_eip !52
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -36
  %32 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_76 = sub i64 %32, %_local_end_to_int_
  %_pot_address_in_parent_stack_77 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_76
  %_cond1_78 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_79 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_80 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_81 = or i1 %_cond2_1_79, %_cond2_2_80
  %_cond4_82 = icmp ule i8* %_pot_address_in_parent_stack_77, %_parent_stack_end_ptr_
  %_cond1_n_cond2_83 = and i1 %_cond1_78, %_cond2_81
  %_cond1_n_cond2_cond3_84 = and i1 %_cond1_n_cond2_83, %_cond4_82
  %_address_in_parent_stack_bt_86..v = select i1 %_cond1_n_cond2_cond3_84, i8* %_pot_address_in_parent_stack_77, i8* %_new_gep_38
  %_address_in_parent_stack_bt_86. = bitcast i8* %_address_in_parent_stack_bt_86..v to i32*
  %_new_load_87 = load i32, i32* %_address_in_parent_stack_bt_86., align 4
  %33 = zext i32 %_new_load_87 to i64, !mcsema_real_eip !53
  store i64 %33, i64* %XDI, align 8, !mcsema_real_eip !53
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.75 = load i64, i64* %XSP, align 8, !mcsema_real_eip !54
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40, i64 -8
  %34 = add i64 %RSP_val.75, -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !54
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !54
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_41, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -36
  %35 = ptrtoint i8* %_new_gep_44 to i64
  %36 = bitcast i8* %_new_gep_44 to i32*
  %_offset_above_rbp_91 = sub i64 %35, %_local_end_to_int_
  %_pot_address_in_parent_stack_92 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_91
  %_cond1_93 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_94 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_95 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_96 = or i1 %_cond2_1_94, %_cond2_2_95
  %_cond4_97 = icmp ule i8* %_pot_address_in_parent_stack_92, %_parent_stack_end_ptr_
  %_cond1_n_cond2_98 = and i1 %_cond1_93, %_cond2_96
  %_cond1_n_cond2_cond3_99 = and i1 %_cond1_n_cond2_98, %_cond4_97
  %_address_in_parent_stack_bt_101 = bitcast i8* %_pot_address_in_parent_stack_92 to i32*
  %37 = select i1 %_cond1_n_cond2_cond3_99, i32* %_address_in_parent_stack_bt_101, i32* %36
  %_new_load_102 = load i32, i32* %37, align 4
  %38 = add i32 %_new_load_102, 1, !mcsema_real_eip !56
  %39 = xor i32 %38, %_new_load_102, !mcsema_real_eip !56
  %40 = and i32 %39, 16, !mcsema_real_eip !56
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !56
  store i1 %41, i1* %AF, align 1, !mcsema_real_eip !56
  %42 = icmp slt i32 %38, 0
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !56
  %43 = icmp eq i32 %38, 0, !mcsema_real_eip !56
  store i1 %43, i1* %ZF, align 1, !mcsema_real_eip !56
  %44 = xor i32 %_new_load_102, -2147483648, !mcsema_real_eip !56
  %45 = and i32 %39, %44, !mcsema_real_eip !56
  %46 = icmp slt i32 %45, 0
  store i1 %46, i1* %OF, align 1, !mcsema_real_eip !56
  %47 = trunc i32 %38 to i8, !mcsema_real_eip !56
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !56
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  store i1 %50, i1* %PF, align 1, !mcsema_real_eip !56
  %51 = icmp eq i32 %_new_load_102, -1
  store i1 %51, i1* %CF, align 1, !mcsema_real_eip !56
  %52 = zext i32 %38 to i64, !mcsema_real_eip !56
  store i64 %52, i64* %XAX, align 8, !mcsema_real_eip !56
  store i32 %38, i32* %36, align 4, !mcsema_real_eip !57
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0xa6, !mcsema_real_eip !58

block_0xe6:                                       ; preds = %block_0xa6
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !41
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !59
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.86 = load i64, i64* %XSP, align 8, !mcsema_real_eip !60
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 48
  %53 = add i64 %RSP_val.86, 48, !mcsema_real_eip !60
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %54 = and i64 %_trans_xor_53, 16
  %55 = icmp eq i64 %54, 0
  store i1 %55, i1* %AF, align 1, !mcsema_real_eip !60
  %56 = icmp slt i64 %53, 0
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !60
  %_trans_icmp_eq_55 = icmp eq i8* %_new_gep_50, null
  store i1 %_trans_icmp_eq_55, i1* %ZF, align 1, !mcsema_real_eip !60
  %57 = xor i64 %_trans_p2i_52, -9223372036854775808, !mcsema_real_eip !60
  %58 = and i64 %_trans_xor_53, %57, !mcsema_real_eip !60
  %59 = icmp slt i64 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !60
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %60 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !60
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  store i1 %62, i1* %PF, align 1, !mcsema_real_eip !60
  %_trans_icmp_ne_64 = icmp ne i64 %RSP_val.86, %_trans_p2i_51
  store i1 %_trans_icmp_ne_64, i1* %CF, align 1, !mcsema_real_eip !60
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %53, i64* %XSP, align 8, !mcsema_real_eip !60
  %_offset_above_rbp_106 = sub i64 %_trans_p2i_51, %_local_end_to_int_
  %_pot_address_in_parent_stack_107 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_106
  %_cond1_108 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_109 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_110 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_111 = or i1 %_cond2_1_109, %_cond2_2_110
  %_cond4_112 = icmp ule i8* %_pot_address_in_parent_stack_107, %_parent_stack_end_ptr_
  %_cond1_n_cond2_113 = and i1 %_cond1_108, %_cond2_111
  %_cond1_n_cond2_cond3_114 = and i1 %_cond1_n_cond2_113, %_cond4_112
  %_address_in_parent_stack_bt_116._allin_new_bt_66.v = select i1 %_cond1_n_cond2_cond3_114, i8* %_pot_address_in_parent_stack_107, i8* %_new_gep_50
  %_address_in_parent_stack_bt_116._allin_new_bt_66 = bitcast i8* %_address_in_parent_stack_bt_116._allin_new_bt_66.v to i64*
  %_new_load_117 = load i64, i64* %_address_in_parent_stack_bt_116._allin_new_bt_66, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_117 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_117, i64* %XBP, align 8, !mcsema_real_eip !61
  %_new_gep_67 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 56
  %63 = add i64 %RSP_val.86, 56, !mcsema_real_eip !61
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_, align 8
  store i64 %63, i64* %XSP, align 8, !mcsema_real_eip !61
  %_new_gep_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 64
  %64 = add i64 %RSP_val.86, 64, !mcsema_real_eip !62
  %_ptr_to_int_118 = ptrtoint i8* %_new_gep_67 to i64
  %_offset_above_rbp_121 = sub i64 %_ptr_to_int_118, %_local_end_to_int_
  %_pot_address_in_parent_stack_122 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_121
  %_cond1_123 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_124 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_125 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_126 = or i1 %_cond2_1_124, %_cond2_2_125
  %_cond4_127 = icmp ule i8* %_pot_address_in_parent_stack_122, %_parent_stack_end_ptr_
  %_cond1_n_cond2_128 = and i1 %_cond1_123, %_cond2_126
  %_cond1_n_cond2_cond3_129 = and i1 %_cond1_n_cond2_128, %_cond4_127
  %.v = select i1 %_cond1_n_cond2_cond3_129, i8* %_pot_address_in_parent_stack_122, i8* %_new_gep_67
  %65 = bitcast i8* %.v to i64*
  %_new_load_132 = load i64, i64* %65, align 8
  store i64 %_new_load_132, i64* %XIP, align 8, !mcsema_real_eip !62
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_, align 8
  store i64 %64, i64* %XSP, align 8, !mcsema_real_eip !62
  ret void, !mcsema_real_eip !62
}

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
!6 = !{i64 11}
!7 = !{i64 15}
!8 = !{i64 22}
!9 = !{i64 25}
!10 = !{i64 28}
!11 = !{i64 34}
!12 = !{i64 38}
!13 = !{i64 41}
!14 = !{i64 44}
!15 = !{i64 46}
!16 = !{i64 48}
!17 = !{i64 51}
!18 = !{i64 55}
!19 = !{i64 58}
!20 = !{i64 60}
!21 = !{i64 63}
!22 = !{i64 66}
!23 = !{i64 69}
!24 = !{i64 72}
!25 = !{i64 77}
!26 = !{i64 87}
!27 = !{i64 90}
!28 = !{i64 94}
!29 = !{i64 96}
!30 = !{i64 100}
!31 = !{i64 103}
!32 = !{i64 107}
!33 = !{i64 111}
!34 = !{i64 115}
!35 = !{i64 119}
!36 = !{i64 121}
!37 = !{i64 126}
!38 = !{i64 129}
!39 = !{i64 133}
!40 = !{i64 134}
!41 = !{i64 144}
!42 = !{i64 145}
!43 = !{i64 148}
!44 = !{i64 152}
!45 = !{i64 159}
!46 = !{i64 166}
!47 = !{i64 170}
!48 = !{i64 176}
!49 = !{i64 180}
!50 = !{i64 187}
!51 = !{i64 194}
!52 = !{i64 201}
!53 = !{i64 208}
!54 = !{i64 211}
!55 = !{i64 216}
!56 = !{i64 219}
!57 = !{i64 222}
!58 = !{i64 225}
!59 = !{i64 230}
!60 = !{i64 232}
!61 = !{i64 236}
!62 = !{i64 237}
