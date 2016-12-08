; ModuleID = 'Output/test_23_1.clang.opt.bc'
source_filename = "Output/test_23_1.clang.bc"
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

%0 = type <{ [185 x i8] }>
%1 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb0 = internal constant %0 <{ [185 x i8] c"`\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00e\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00[\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00j\00\00\00\00\00\00\00V\00\00\00\00\00\00\00w" }>, align 64
@data_0x169 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: naked
declare void @__mcsema_detach_call_value() local_unnamed_addr #0

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %17, align 4, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.5, -8, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %19, align 4, !mcsema_real_eip !6
  %20 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%0* @data_0xb0 to i64), i64 184) to i8*), align 8, !mcsema_real_eip !7
  %AL.6 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 %20, i8* %AL.6, align 1, !mcsema_real_eip !7
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %21 = add i64 %RBP_val.7, -9, !mcsema_real_eip !8
  %22 = inttoptr i64 %21 to i8*, !mcsema_real_eip !8
  store i8 %20, i8* %22, align 1, !mcsema_real_eip !8
  %ECX.22 = bitcast i64* %XCX to i32*
  %EAX.42 = bitcast i64* %XAX to i32*
  br label %block_0x20, !mcsema_real_eip !9

block_0x20:                                       ; preds = %block_0x76, %entry
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %23 = add i64 %RBP_val.10, -8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %24, align 4, !mcsema_real_eip !9
  %26 = add i32 %25, -1
  %27 = xor i32 %26, %25, !mcsema_real_eip !9
  %28 = and i32 %27, 16, !mcsema_real_eip !9
  %29 = icmp ne i32 %28, 0, !mcsema_real_eip !9
  store i1 %29, i1* %AF, align 1, !mcsema_real_eip !9
  %30 = trunc i32 %26 to i8, !mcsema_real_eip !9
  %31 = tail call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !9
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  store i1 %33, i1* %PF, align 1, !mcsema_real_eip !9
  %34 = icmp eq i32 %26, 0, !mcsema_real_eip !9
  store i1 %34, i1* %ZF, align 1, !mcsema_real_eip !9
  %35 = icmp slt i32 %26, 0
  store i1 %35, i1* %SF, align 1, !mcsema_real_eip !9
  %36 = icmp eq i32 %25, 0
  store i1 %36, i1* %CF, align 1, !mcsema_real_eip !9
  %37 = and i32 %27, %25, !mcsema_real_eip !9
  %38 = icmp slt i32 %37, 0
  store i1 %38, i1* %OF, align 1, !mcsema_real_eip !9
  %tmp = xor i1 %35, %38
  br i1 %tmp, label %block_0x2a, label %block_0x84, !mcsema_real_eip !10

block_0x2a:                                       ; preds = %block_0x20
  %39 = load i32, i32* %24, align 4, !mcsema_real_eip !11
  %40 = sext i32 %39 to i64, !mcsema_real_eip !11
  store i64 %40, i64* %XAX, align 8, !mcsema_real_eip !11
  %41 = add i64 %RBP_val.10, -9, !mcsema_real_eip !12
  %42 = add i64 %41, %40, !mcsema_real_eip !12
  %43 = inttoptr i64 %42 to i8*, !mcsema_real_eip !12
  %44 = load i8, i8* %43, align 1, !mcsema_real_eip !12
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -97, !mcsema_real_eip !13
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !14
  %48 = add nsw i32 %45, -119
  %49 = xor i32 %48, %46, !mcsema_real_eip !15
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !15
  %52 = trunc i32 %48 to i8, !mcsema_real_eip !15
  %53 = tail call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !15
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  store i1 %55, i1* %PF, align 1, !mcsema_real_eip !15
  %56 = icmp eq i32 %48, 0, !mcsema_real_eip !15
  store i1 %56, i1* %ZF, align 1, !mcsema_real_eip !15
  %57 = icmp slt i8 %44, 119
  store i1 %57, i1* %SF, align 1, !mcsema_real_eip !15
  %58 = icmp ult i32 %46, 22, !mcsema_real_eip !15
  store i1 %58, i1* %CF, align 1, !mcsema_real_eip !15
  %59 = and i32 %49, %46, !mcsema_real_eip !15
  %60 = icmp slt i32 %59, 0
  store i1 %60, i1* %OF, align 1, !mcsema_real_eip !15
  %61 = zext i32 %48 to i64, !mcsema_real_eip !15
  store i64 %61, i64* %XCX, align 8, !mcsema_real_eip !15
  %62 = add i64 %RBP_val.10, -24, !mcsema_real_eip !16
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !16
  store i64 %47, i64* %63, align 8, !mcsema_real_eip !16
  %RBP_val.30 = load i64, i64* %XBP, align 8, !mcsema_real_eip !17
  %64 = add i64 %RBP_val.30, -28, !mcsema_real_eip !17
  %ECX_val.32 = load i32, i32* %ECX.22, align 4, !mcsema_real_eip !17
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !17
  store i32 %ECX_val.32, i32* %65, align 4, !mcsema_real_eip !17
  %66 = load i1, i1* %ZF, align 1, !mcsema_real_eip !18
  %67 = load i1, i1* %CF, align 1, !mcsema_real_eip !18
  %.demorgan = or i1 %66, %67
  %RBP_val.37 = load i64, i64* %XBP, align 8
  br i1 %.demorgan, label %block_0x48, label %block_0x6a, !mcsema_real_eip !18

block_0x84:                                       ; preds = %block_0x20
  %68 = bitcast i64* %XSI to <2 x i64>*
  store <2 x i64> <i64 1, i64 ptrtoint (%1* @data_0x169 to i64)>, <2 x i64>* %68, align 8
  store i8 0, i8* %AL.6, align 1, !mcsema_real_eip !19
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %69 = add i64 %RSP_val.14, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !20
  store i64 -2415393069852865332, i64* %70, align 8, !mcsema_real_eip !20
  store i64 %69, i64* %XSP, align 8, !mcsema_real_eip !20
  %71 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%1* @data_0x169 to i64), i64 1), !mcsema_real_eip !20
  store i64 %71, i64* %XAX, align 8, !mcsema_real_eip !20
  %RBP_val.15 = load i64, i64* %XBP, align 8, !mcsema_real_eip !21
  %72 = add i64 %RBP_val.15, -4, !mcsema_real_eip !21
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !21
  store i32 1, i32* %73, align 4, !mcsema_real_eip !21
  %RBP_val.16 = load i64, i64* %XBP, align 8, !mcsema_real_eip !22
  %74 = add i64 %RBP_val.16, -32, !mcsema_real_eip !22
  %EAX_val.18 = load i32, i32* %EAX.42, align 4, !mcsema_real_eip !22
  br label %block_0xa4, !mcsema_real_eip !11

block_0xa4:                                       ; preds = %block_0x6a, %block_0x84
  %.sink3.in = phi i64 [ %107, %block_0x6a ], [ %74, %block_0x84 ]
  %.sink = phi i32 [ 1, %block_0x6a ], [ %EAX_val.18, %block_0x84 ]
  %75 = inttoptr i64 %.sink3.in to i32*
  store i32 %.sink, i32* %75, align 4
  %RBP_val.33 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %76 = add i64 %RBP_val.33, -4, !mcsema_real_eip !23
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !23
  %78 = load i32, i32* %77, align 4, !mcsema_real_eip !23
  %79 = zext i32 %78 to i64, !mcsema_real_eip !23
  store i64 %79, i64* %XAX, align 8, !mcsema_real_eip !23
  %RSP_val.34 = load i64, i64* %XSP, align 8, !mcsema_real_eip !24
  %80 = add i64 %RSP_val.34, 32, !mcsema_real_eip !24
  %81 = xor i64 %80, %RSP_val.34, !mcsema_real_eip !24
  %82 = and i64 %81, 16, !mcsema_real_eip !24
  %83 = icmp ne i64 %82, 0, !mcsema_real_eip !24
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !24
  %84 = icmp slt i64 %80, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !24
  %85 = icmp eq i64 %80, 0, !mcsema_real_eip !24
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !24
  %86 = xor i64 %RSP_val.34, -9223372036854775808, !mcsema_real_eip !24
  %87 = and i64 %81, %86, !mcsema_real_eip !24
  %88 = icmp slt i64 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !24
  %89 = trunc i64 %80 to i8, !mcsema_real_eip !24
  %90 = tail call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !24
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  store i1 %92, i1* %PF, align 1, !mcsema_real_eip !24
  %93 = icmp ugt i64 %RSP_val.34, -33
  store i1 %93, i1* %CF, align 1, !mcsema_real_eip !24
  store i64 %80, i64* %XSP, align 8, !mcsema_real_eip !24
  %94 = inttoptr i64 %80 to i64*, !mcsema_real_eip !25
  %95 = load i64, i64* %94, align 8, !mcsema_real_eip !25
  store i64 %95, i64* %XBP, align 8, !mcsema_real_eip !25
  %96 = add i64 %RSP_val.34, 40, !mcsema_real_eip !25
  store i64 %96, i64* %XSP, align 8, !mcsema_real_eip !25
  %97 = add i64 %RSP_val.34, 48, !mcsema_real_eip !26
  %98 = inttoptr i64 %96 to i64*, !mcsema_real_eip !26
  %99 = load i64, i64* %98, align 8, !mcsema_real_eip !26
  store i64 %99, i64* %XIP, align 8, !mcsema_real_eip !26
  store i64 %97, i64* %XSP, align 8, !mcsema_real_eip !26
  ret void, !mcsema_real_eip !26

block_0x48:                                       ; preds = %block_0x2a
  %100 = add i64 %RBP_val.37, -24, !mcsema_real_eip !27
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !27
  %102 = load i64, i64* %101, align 8, !mcsema_real_eip !27
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !27
  %103 = shl i64 %102, 3
  %104 = add i64 %103, ptrtoint (%0* @data_0xb0 to i64), !mcsema_real_eip !28
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !28
  %106 = load i64, i64* %105, align 8, !mcsema_real_eip !28
  store i64 %106, i64* %XCX, align 8, !mcsema_real_eip !28
  switch i64 %106, label %108 [
    i64 86, label %block_0x76
    i64 91, label %block_0x76
    i64 101, label %block_0x76
    i64 106, label %block_0x6a
    i64 96, label %block_0x76
  ], !mcsema_real_eip !29

block_0x6a:                                       ; preds = %block_0x2a, %block_0x48
  %107 = add i64 %RBP_val.37, -4, !mcsema_real_eip !30
  br label %block_0xa4, !mcsema_real_eip !31

; <label>:108:                                    ; preds = %block_0x48
  store i64 %106, i64* %XIP, align 8, !mcsema_real_eip !29
  tail call void @__mcsema_detach_call_value(), !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29

block_0x76:                                       ; preds = %block_0x48, %block_0x48, %block_0x48, %block_0x48
  %109 = add i64 %RBP_val.37, -8
  %110 = inttoptr i64 %109 to i32*
  %111 = load i32, i32* %110, align 4, !mcsema_real_eip !32
  %112 = add i32 %111, 1, !mcsema_real_eip !33
  %113 = xor i32 %112, %111, !mcsema_real_eip !33
  %114 = and i32 %113, 16, !mcsema_real_eip !33
  %115 = icmp ne i32 %114, 0, !mcsema_real_eip !33
  store i1 %115, i1* %AF, align 1, !mcsema_real_eip !33
  %116 = icmp slt i32 %112, 0
  store i1 %116, i1* %SF, align 1, !mcsema_real_eip !33
  %117 = icmp eq i32 %112, 0, !mcsema_real_eip !33
  store i1 %117, i1* %ZF, align 1, !mcsema_real_eip !33
  %118 = xor i32 %111, -2147483648, !mcsema_real_eip !33
  %119 = and i32 %113, %118, !mcsema_real_eip !33
  %120 = icmp slt i32 %119, 0
  store i1 %120, i1* %OF, align 1, !mcsema_real_eip !33
  %121 = trunc i32 %112 to i8, !mcsema_real_eip !33
  %122 = tail call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !33
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  store i1 %124, i1* %PF, align 1, !mcsema_real_eip !33
  %125 = icmp eq i32 %111, -1
  store i1 %125, i1* %CF, align 1, !mcsema_real_eip !33
  %126 = zext i32 %112 to i64, !mcsema_real_eip !33
  store i64 %126, i64* %XAX, align 8, !mcsema_real_eip !33
  store i32 %112, i32* %110, align 4, !mcsema_real_eip !34
  br label %block_0x20, !mcsema_real_eip !35
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) local_unnamed_addr #3

attributes #0 = { naked }
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
!6 = !{i64 15}
!7 = !{i64 22}
!8 = !{i64 29}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 42}
!12 = !{i64 46}
!13 = !{i64 51}
!14 = !{i64 54}
!15 = !{i64 56}
!16 = !{i64 59}
!17 = !{i64 63}
!18 = !{i64 66}
!19 = !{i64 147}
!20 = !{i64 149}
!21 = !{i64 154}
!22 = !{i64 161}
!23 = !{i64 164}
!24 = !{i64 167}
!25 = !{i64 171}
!26 = !{i64 172}
!27 = !{i64 72}
!28 = !{i64 76}
!29 = !{i64 84}
!30 = !{i64 106}
!31 = !{i64 113}
!32 = !{i64 118}
!33 = !{i64 121}
!34 = !{i64 124}
!35 = !{i64 127}
