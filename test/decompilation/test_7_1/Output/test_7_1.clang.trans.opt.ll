; ModuleID = 'Output/test_7_1.clang.trans.opt.bc'
source_filename = "Output/test_7_1.clang.bc"
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
module asm "  .globl sub_30;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_30(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb7 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30(%RegState* nocapture) local_unnamed_addr #0 {
entry:
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
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -88
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
  %13 = icmp ult i64 %1, 80, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %17, align 4, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.5, -52, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %19, align 4, !mcsema_real_eip !6
  %EAX.8 = bitcast i64* %XAX to i32*
  br label %block_0x46, !mcsema_real_eip !7

block_0x46:                                       ; preds = %block_0x50, %entry
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %20 = add i64 %RBP_val.6, -52, !mcsema_real_eip !7
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !7
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !7
  %23 = add i32 %22, -10
  %24 = xor i32 %23, %22, !mcsema_real_eip !7
  %25 = and i32 %24, 16, !mcsema_real_eip !7
  %26 = icmp ne i32 %25, 0, !mcsema_real_eip !7
  store i1 %26, i1* %AF, align 1, !mcsema_real_eip !7
  %27 = trunc i32 %23 to i8, !mcsema_real_eip !7
  %28 = tail call i8 @llvm.ctpop.i8(i8 %27), !mcsema_real_eip !7
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  store i1 %30, i1* %PF, align 1, !mcsema_real_eip !7
  %31 = icmp eq i32 %23, 0, !mcsema_real_eip !7
  store i1 %31, i1* %ZF, align 1, !mcsema_real_eip !7
  %32 = icmp slt i32 %23, 0
  store i1 %32, i1* %SF, align 1, !mcsema_real_eip !7
  %33 = icmp ult i32 %22, 10, !mcsema_real_eip !7
  store i1 %33, i1* %CF, align 1, !mcsema_real_eip !7
  %34 = and i32 %24, %22, !mcsema_real_eip !7
  %35 = icmp slt i32 %34, 0
  store i1 %35, i1* %OF, align 1, !mcsema_real_eip !7
  %tmp = xor i1 %32, %35
  %36 = add i64 %RBP_val.6, -48
  br i1 %tmp, label %block_0x50, label %block_0x6a, !mcsema_real_eip !8

block_0x50:                                       ; preds = %block_0x46
  %37 = load i32, i32* %21, align 4, !mcsema_real_eip !9
  %38 = sext i32 %37 to i64, !mcsema_real_eip !9
  store i64 %38, i64* %XAX, align 8, !mcsema_real_eip !9
  %39 = shl nsw i64 %38, 2
  %40 = add i64 %39, %36, !mcsema_real_eip !10
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !10
  store i32 21, i32* %41, align 4, !mcsema_real_eip !10
  %RBP_val.51 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %42 = add i64 %RBP_val.51, -52, !mcsema_real_eip !11
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !11
  %44 = load i32, i32* %43, align 4, !mcsema_real_eip !11
  %45 = add i32 %44, 1, !mcsema_real_eip !12
  %46 = xor i32 %45, %44, !mcsema_real_eip !12
  %47 = and i32 %46, 16, !mcsema_real_eip !12
  %48 = icmp ne i32 %47, 0, !mcsema_real_eip !12
  store i1 %48, i1* %AF, align 1, !mcsema_real_eip !12
  %49 = icmp slt i32 %45, 0
  store i1 %49, i1* %SF, align 1, !mcsema_real_eip !12
  %50 = icmp eq i32 %45, 0, !mcsema_real_eip !12
  store i1 %50, i1* %ZF, align 1, !mcsema_real_eip !12
  %51 = xor i32 %44, -2147483648, !mcsema_real_eip !12
  %52 = and i32 %46, %51, !mcsema_real_eip !12
  %53 = icmp slt i32 %52, 0
  store i1 %53, i1* %OF, align 1, !mcsema_real_eip !12
  %54 = trunc i32 %45 to i8, !mcsema_real_eip !12
  %55 = tail call i8 @llvm.ctpop.i8(i8 %54), !mcsema_real_eip !12
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  store i1 %57, i1* %PF, align 1, !mcsema_real_eip !12
  %58 = icmp eq i32 %44, -1
  store i1 %58, i1* %CF, align 1, !mcsema_real_eip !12
  %59 = zext i32 %45 to i64, !mcsema_real_eip !12
  store i64 %59, i64* %XAX, align 8, !mcsema_real_eip !12
  store i32 %45, i32* %43, align 4, !mcsema_real_eip !13
  br label %block_0x46, !mcsema_real_eip !14

block_0x6a:                                       ; preds = %block_0x46
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !15
  store i64 10, i64* %XDI, align 8, !mcsema_real_eip !16
  store i64 10, i64* %XSI, align 8, !mcsema_real_eip !17
  store i64 10, i64* %XDX, align 8, !mcsema_real_eip !18
  %60 = add i64 %RBP_val.6, -64, !mcsema_real_eip !19
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !19
  store i64 %36, i64* %61, align 8, !mcsema_real_eip !19
  %EAX_val.17 = load i32, i32* %EAX.8, align 4, !mcsema_real_eip !20
  %62 = zext i32 %EAX_val.17 to i64, !mcsema_real_eip !20
  store i64 %62, i64* %XCX, align 8, !mcsema_real_eip !20
  store i64 %62, i64* %R8, align 8, !mcsema_real_eip !21
  store i64 %62, i64* %R9, align 8, !mcsema_real_eip !22
  %RBP_val.22 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %63 = add i64 %RBP_val.22, -64, !mcsema_real_eip !23
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !23
  %65 = load i64, i64* %64, align 8, !mcsema_real_eip !23
  store i64 %65, i64* %R10, align 8, !mcsema_real_eip !23
  %66 = bitcast i64* %XSP to i64**
  %RSP_val.231 = load i64*, i64** %66, align 8
  store i64 %65, i64* %RSP_val.231, align 8, !mcsema_real_eip !24
  %RSP_val.25 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %67 = add i64 %RSP_val.25, -8
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !25
  store i64 -4981261766360305936, i64* %68, align 8, !mcsema_real_eip !25
  store i64 %67, i64* %XSP, align 8, !mcsema_real_eip !25
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !25
  store i64 ptrtoint (%0* @data_0xb7 to i64), i64* %XDI, align 8, !mcsema_real_eip !26
  %RBP_val.26 = load i64, i64* %XBP, align 8, !mcsema_real_eip !27
  %69 = add i64 %RBP_val.26, -56, !mcsema_real_eip !27
  %EAX_val.28 = load i32, i32* %EAX.8, align 4, !mcsema_real_eip !27
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !27
  store i32 %EAX_val.28, i32* %70, align 4, !mcsema_real_eip !27
  %RBP_val.29 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %71 = add i64 %RBP_val.29, -56, !mcsema_real_eip !28
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !28
  %73 = load i32, i32* %72, align 4, !mcsema_real_eip !28
  %74 = zext i32 %73 to i64, !mcsema_real_eip !28
  store i64 %74, i64* %XSI, align 8, !mcsema_real_eip !28
  %AL.30 = bitcast i64* %XAX to i8*, !mcsema_real_eip !29
  store i8 0, i8* %AL.30, align 1, !mcsema_real_eip !29
  %RDI_val.31 = load i64, i64* %XDI, align 8, !mcsema_real_eip !30
  %RDX_val.33 = load i64, i64* %XDX, align 8, !mcsema_real_eip !30
  %RCX_val.34 = load i64, i64* %XCX, align 8, !mcsema_real_eip !30
  %R8_val.35 = load i64, i64* %R8, align 8, !mcsema_real_eip !30
  %R9_val.36 = load i64, i64* %R9, align 8, !mcsema_real_eip !30
  %RSP_val.37 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  %75 = inttoptr i64 %RSP_val.37 to i64*, !mcsema_real_eip !30
  %76 = load i64, i64* %75, align 8, !mcsema_real_eip !30
  %77 = add i64 %RSP_val.37, 8, !mcsema_real_eip !30
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !30
  %79 = load i64, i64* %78, align 8, !mcsema_real_eip !30
  %80 = add i64 %RSP_val.37, 16, !mcsema_real_eip !30
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !30
  %82 = load i64, i64* %81, align 8, !mcsema_real_eip !30
  %83 = add i64 %RSP_val.37, 24, !mcsema_real_eip !30
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !30
  %85 = load i64, i64* %84, align 8, !mcsema_real_eip !30
  %86 = add i64 %RSP_val.37, 32, !mcsema_real_eip !30
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !30
  %88 = load i64, i64* %87, align 8, !mcsema_real_eip !30
  %89 = add i64 %RSP_val.37, 40, !mcsema_real_eip !30
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !30
  %91 = load i64, i64* %90, align 8, !mcsema_real_eip !30
  %92 = add i64 %RSP_val.37, -8
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !30
  store i64 -2415393069852865332, i64* %93, align 8, !mcsema_real_eip !30
  store i64 %92, i64* %XSP, align 8, !mcsema_real_eip !30
  %94 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.31, i64 %74, i64 %RDX_val.33, i64 %RCX_val.34, i64 %R8_val.35, i64 %R9_val.36, i64 %76, i64 %79, i64 %82, i64 %85, i64 %88, i64 %91), !mcsema_real_eip !30
  store i64 %94, i64* %XAX, align 8, !mcsema_real_eip !30
  %RBP_val.39 = load i64, i64* %XBP, align 8, !mcsema_real_eip !31
  %95 = add i64 %RBP_val.39, -56, !mcsema_real_eip !31
  %96 = inttoptr i64 %95 to i32*, !mcsema_real_eip !31
  %97 = load i32, i32* %96, align 4, !mcsema_real_eip !31
  %98 = zext i32 %97 to i64, !mcsema_real_eip !31
  store i64 %98, i64* %XCX, align 8, !mcsema_real_eip !31
  %99 = add i64 %RBP_val.39, -68, !mcsema_real_eip !32
  %100 = trunc i64 %94 to i32
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !32
  store i32 %100, i32* %101, align 4, !mcsema_real_eip !32
  %ECX.43 = bitcast i64* %XCX to i32*, !mcsema_real_eip !33
  %ECX_val.44 = load i32, i32* %ECX.43, align 4, !mcsema_real_eip !33
  %102 = zext i32 %ECX_val.44 to i64, !mcsema_real_eip !33
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !33
  %RSP_val.45 = load i64, i64* %XSP, align 8, !mcsema_real_eip !34
  %103 = add i64 %RSP_val.45, 80, !mcsema_real_eip !34
  %104 = xor i64 %103, %RSP_val.45, !mcsema_real_eip !34
  %105 = and i64 %104, 16
  %106 = icmp eq i64 %105, 0
  store i1 %106, i1* %AF, align 1, !mcsema_real_eip !34
  %107 = icmp slt i64 %103, 0
  store i1 %107, i1* %SF, align 1, !mcsema_real_eip !34
  %108 = icmp eq i64 %103, 0, !mcsema_real_eip !34
  store i1 %108, i1* %ZF, align 1, !mcsema_real_eip !34
  %109 = xor i64 %RSP_val.45, -9223372036854775808, !mcsema_real_eip !34
  %110 = and i64 %104, %109, !mcsema_real_eip !34
  %111 = icmp slt i64 %110, 0
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !34
  %112 = trunc i64 %103 to i8, !mcsema_real_eip !34
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !34
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF, align 1, !mcsema_real_eip !34
  %116 = icmp ugt i64 %RSP_val.45, -81
  store i1 %116, i1* %CF, align 1, !mcsema_real_eip !34
  store i64 %103, i64* %XSP, align 8, !mcsema_real_eip !34
  %117 = inttoptr i64 %103 to i64*, !mcsema_real_eip !35
  %118 = load i64, i64* %117, align 8, !mcsema_real_eip !35
  store i64 %118, i64* %XBP, align 8, !mcsema_real_eip !35
  %119 = add i64 %RSP_val.45, 88, !mcsema_real_eip !35
  store i64 %119, i64* %XSP, align 8, !mcsema_real_eip !35
  %120 = add i64 %RSP_val.45, 96, !mcsema_real_eip !36
  %121 = inttoptr i64 %119 to i64*, !mcsema_real_eip !36
  %122 = load i64, i64* %121, align 8, !mcsema_real_eip !36
  store i64 %122, i64* %XIP, align 8, !mcsema_real_eip !36
  store i64 %120, i64* %XSP, align 8, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

; Function Attrs: noinline norecurse nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !37
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !37
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !37
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !37
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !37
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !37
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !37
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !37
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !37
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !37
  %RBP_val.57 = load i64, i64* %XBP, align 8, !mcsema_real_eip !37
  %RSP_val.58 = load i64, i64* %XSP, align 8, !mcsema_real_eip !37
  %1 = add i64 %RSP_val.58, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !37
  store i64 %RBP_val.57, i64* %2, align 8, !mcsema_real_eip !37
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !37
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !38
  %3 = add i64 %RSP_val.58, 8, !mcsema_real_eip !39
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !39
  %5 = load i64, i64* %4, align 8, !mcsema_real_eip !39
  store i64 %5, i64* %XAX, align 8, !mcsema_real_eip !39
  %6 = add i64 %RSP_val.58, -12, !mcsema_real_eip !40
  %EDI.62 = bitcast i64* %XDI to i32*, !mcsema_real_eip !40
  %EDI_val.63 = load i32, i32* %EDI.62, align 4, !mcsema_real_eip !40
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !40
  store i32 %EDI_val.63, i32* %7, align 4, !mcsema_real_eip !40
  %RBP_val.64 = load i64, i64* %XBP, align 8, !mcsema_real_eip !41
  %8 = add i64 %RBP_val.64, -8, !mcsema_real_eip !41
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.66 = load i32, i32* %ESI.65, align 4, !mcsema_real_eip !41
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !41
  store i32 %ESI_val.66, i32* %9, align 4, !mcsema_real_eip !41
  %RBP_val.67 = load i64, i64* %XBP, align 8, !mcsema_real_eip !42
  %10 = add i64 %RBP_val.67, -12, !mcsema_real_eip !42
  %EDX.68 = bitcast i64* %XDX to i32*, !mcsema_real_eip !42
  %EDX_val.69 = load i32, i32* %EDX.68, align 4, !mcsema_real_eip !42
  %11 = inttoptr i64 %10 to i32*, !mcsema_real_eip !42
  store i32 %EDX_val.69, i32* %11, align 4, !mcsema_real_eip !42
  %RBP_val.70 = load i64, i64* %XBP, align 8, !mcsema_real_eip !43
  %12 = add i64 %RBP_val.70, -16, !mcsema_real_eip !43
  %ECX.71 = bitcast i64* %XCX to i32*, !mcsema_real_eip !43
  %ECX_val.72 = load i32, i32* %ECX.71, align 4, !mcsema_real_eip !43
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !43
  store i32 %ECX_val.72, i32* %13, align 4, !mcsema_real_eip !43
  %RBP_val.73 = load i64, i64* %XBP, align 8, !mcsema_real_eip !44
  %14 = add i64 %RBP_val.73, -20, !mcsema_real_eip !44
  %R8D.74 = bitcast i64* %R8 to i32*, !mcsema_real_eip !44
  %R8D_val.75 = load i32, i32* %R8D.74, align 4, !mcsema_real_eip !44
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !44
  store i32 %R8D_val.75, i32* %15, align 4, !mcsema_real_eip !44
  %RBP_val.76 = load i64, i64* %XBP, align 8, !mcsema_real_eip !45
  %16 = add i64 %RBP_val.76, -24, !mcsema_real_eip !45
  %R9D.77 = bitcast i64* %R9 to i32*, !mcsema_real_eip !45
  %R9D_val.78 = load i32, i32* %R9D.77, align 4, !mcsema_real_eip !45
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !45
  store i32 %R9D_val.78, i32* %17, align 4, !mcsema_real_eip !45
  %RBP_val.79 = load i64, i64* %XBP, align 8, !mcsema_real_eip !46
  %18 = add i64 %RBP_val.79, -32, !mcsema_real_eip !46
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !46
  %RAX_val.80 = load i64, i64* %XAX, align 8, !mcsema_real_eip !46
  store i64 %RAX_val.80, i64* %19, align 8, !mcsema_real_eip !46
  %RBP_val.81 = load i64, i64* %XBP, align 8, !mcsema_real_eip !47
  %20 = add i64 %RBP_val.81, -32, !mcsema_real_eip !47
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !47
  %22 = load i64, i64* %21, align 8, !mcsema_real_eip !47
  store i64 %22, i64* %XAX, align 8, !mcsema_real_eip !47
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !48
  %24 = load i32, i32* %23, align 4, !mcsema_real_eip !48
  %25 = zext i32 %24 to i64, !mcsema_real_eip !48
  store i64 %25, i64* %XCX, align 8, !mcsema_real_eip !48
  %26 = add i64 %RBP_val.81, -36, !mcsema_real_eip !49
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !49
  store i32 %24, i32* %27, align 4, !mcsema_real_eip !49
  %RBP_val.86 = load i64, i64* %XBP, align 8, !mcsema_real_eip !50
  %28 = add i64 %RBP_val.86, -36, !mcsema_real_eip !50
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !50
  %30 = load i32, i32* %29, align 4, !mcsema_real_eip !50
  %31 = zext i32 %30 to i64, !mcsema_real_eip !50
  store i64 %31, i64* %XAX, align 8, !mcsema_real_eip !50
  %RSP_val.87 = load i64, i64* %XSP, align 8, !mcsema_real_eip !51
  %32 = inttoptr i64 %RSP_val.87 to i64*, !mcsema_real_eip !51
  %33 = load i64, i64* %32, align 8, !mcsema_real_eip !51
  store i64 %33, i64* %XBP, align 8, !mcsema_real_eip !51
  %34 = add i64 %RSP_val.87, 8, !mcsema_real_eip !51
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !51
  %35 = add i64 %RSP_val.87, 16, !mcsema_real_eip !52
  %36 = inttoptr i64 %34 to i64*, !mcsema_real_eip !52
  %37 = load i64, i64* %36, align 8, !mcsema_real_eip !52
  store i64 %37, i64* %XIP, align 8, !mcsema_real_eip !52
  store i64 %35, i64* %XSP, align 8, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

attributes #0 = { noinline }
attributes #1 = { noinline norecurse nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 48}
!3 = !{i64 49}
!4 = !{i64 52}
!5 = !{i64 56}
!6 = !{i64 63}
!7 = !{i64 70}
!8 = !{i64 74}
!9 = !{i64 80}
!10 = !{i64 84}
!11 = !{i64 92}
!12 = !{i64 95}
!13 = !{i64 98}
!14 = !{i64 101}
!15 = !{i64 106}
!16 = !{i64 115}
!17 = !{i64 117}
!18 = !{i64 119}
!19 = !{i64 121}
!20 = !{i64 125}
!21 = !{i64 127}
!22 = !{i64 130}
!23 = !{i64 133}
!24 = !{i64 137}
!25 = !{i64 141}
!26 = !{i64 146}
!27 = !{i64 156}
!28 = !{i64 159}
!29 = !{i64 162}
!30 = !{i64 164}
!31 = !{i64 169}
!32 = !{i64 172}
!33 = !{i64 175}
!34 = !{i64 177}
!35 = !{i64 181}
!36 = !{i64 182}
!37 = !{i64 0}
!38 = !{i64 1}
!39 = !{i64 4}
!40 = !{i64 8}
!41 = !{i64 11}
!42 = !{i64 14}
!43 = !{i64 17}
!44 = !{i64 20}
!45 = !{i64 24}
!46 = !{i64 28}
!47 = !{i64 32}
!48 = !{i64 36}
!49 = !{i64 38}
!50 = !{i64 41}
!51 = !{i64 44}
!52 = !{i64 45}
