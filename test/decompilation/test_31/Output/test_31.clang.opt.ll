; ModuleID = 'Output/test_31.clang.opt.bc'
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

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) local_unnamed_addr #0 {
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
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
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
  store i64 5, i64* %XDI, align 8, !mcsema_real_eip !5
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %17, align 4, !mcsema_real_eip !6
  %RSP_val.5 = load i64, i64* %XSP, align 8, !mcsema_real_eip !7
  %18 = add i64 %RSP_val.5, -8
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !7
  store i64 -4981261766360305936, i64* %19, align 8, !mcsema_real_eip !7
  store i64 %18, i64* %XSP, align 8, !mcsema_real_eip !7
  tail call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !7
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, align 8, !mcsema_real_eip !8
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.7 = load i32, i32* %EAX.6, align 4, !mcsema_real_eip !9
  %20 = zext i32 %EAX_val.7 to i64, !mcsema_real_eip !9
  store i64 %20, i64* %XSI, align 8, !mcsema_real_eip !9
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !10
  store i8 0, i8* %AL.8, align 1, !mcsema_real_eip !10
  %RDX_val.11 = load i64, i64* %XDX, align 8, !mcsema_real_eip !11
  %RCX_val.12 = load i64, i64* %XCX, align 8, !mcsema_real_eip !11
  %R8_val.13 = load i64, i64* %R8, align 8, !mcsema_real_eip !11
  %R9_val.14 = load i64, i64* %R9, align 8, !mcsema_real_eip !11
  %RSP_val.15 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %21 = inttoptr i64 %RSP_val.15 to i64*, !mcsema_real_eip !11
  %22 = load i64, i64* %21, align 8, !mcsema_real_eip !11
  %23 = add i64 %RSP_val.15, 8, !mcsema_real_eip !11
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !11
  %25 = load i64, i64* %24, align 8, !mcsema_real_eip !11
  %26 = add i64 %RSP_val.15, 16, !mcsema_real_eip !11
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !11
  %28 = load i64, i64* %27, align 8, !mcsema_real_eip !11
  %29 = add i64 %RSP_val.15, 24, !mcsema_real_eip !11
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !11
  %31 = load i64, i64* %30, align 8, !mcsema_real_eip !11
  %32 = add i64 %RSP_val.15, 32, !mcsema_real_eip !11
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !11
  %34 = load i64, i64* %33, align 8, !mcsema_real_eip !11
  %35 = add i64 %RSP_val.15, 40, !mcsema_real_eip !11
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !11
  %37 = load i64, i64* %36, align 8, !mcsema_real_eip !11
  %38 = add i64 %RSP_val.15, -8
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %39, align 8, !mcsema_real_eip !11
  store i64 %38, i64* %XSP, align 8, !mcsema_real_eip !11
  %40 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x99 to i64), i64 %20, i64 %RDX_val.11, i64 %RCX_val.12, i64 %R8_val.13, i64 %R9_val.14, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34, i64 %37), !mcsema_real_eip !11
  %ESI.17 = bitcast i64* %XSI to i32*, !mcsema_real_eip !12
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %41 = add i64 %RBP_val.21, -8, !mcsema_real_eip !13
  %42 = trunc i64 %40 to i32
  %43 = inttoptr i64 %41 to i32*, !mcsema_real_eip !13
  store i32 %42, i32* %43, align 4, !mcsema_real_eip !13
  %ESI_val.25 = load i32, i32* %ESI.17, align 4, !mcsema_real_eip !14
  %44 = zext i32 %ESI_val.25 to i64, !mcsema_real_eip !14
  store i64 %44, i64* %XAX, align 8, !mcsema_real_eip !14
  %RSP_val.26 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %45 = add i64 %RSP_val.26, 16, !mcsema_real_eip !15
  %46 = xor i64 %45, %RSP_val.26, !mcsema_real_eip !15
  %47 = and i64 %46, 16
  %48 = icmp eq i64 %47, 0
  store i1 %48, i1* %AF, align 1, !mcsema_real_eip !15
  %49 = icmp slt i64 %45, 0
  store i1 %49, i1* %SF, align 1, !mcsema_real_eip !15
  %50 = icmp eq i64 %45, 0, !mcsema_real_eip !15
  store i1 %50, i1* %ZF, align 1, !mcsema_real_eip !15
  %51 = xor i64 %RSP_val.26, -9223372036854775808, !mcsema_real_eip !15
  %52 = and i64 %46, %51, !mcsema_real_eip !15
  %53 = icmp slt i64 %52, 0
  store i1 %53, i1* %OF, align 1, !mcsema_real_eip !15
  %54 = trunc i64 %45 to i8, !mcsema_real_eip !15
  %55 = tail call i8 @llvm.ctpop.i8(i8 %54), !mcsema_real_eip !15
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  store i1 %57, i1* %PF, align 1, !mcsema_real_eip !15
  %58 = icmp ugt i64 %RSP_val.26, -17
  store i1 %58, i1* %CF, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %XSP, align 8, !mcsema_real_eip !15
  %59 = inttoptr i64 %45 to i64*, !mcsema_real_eip !16
  %60 = load i64, i64* %59, align 8, !mcsema_real_eip !16
  store i64 %60, i64* %XBP, align 8, !mcsema_real_eip !16
  %61 = add i64 %RSP_val.26, 24, !mcsema_real_eip !16
  store i64 %61, i64* %XSP, align 8, !mcsema_real_eip !16
  %62 = add i64 %RSP_val.26, 32, !mcsema_real_eip !17
  %63 = inttoptr i64 %61 to i64*, !mcsema_real_eip !17
  %64 = load i64, i64* %63, align 8, !mcsema_real_eip !17
  store i64 %64, i64* %XIP, align 8, !mcsema_real_eip !17
  store i64 %62, i64* %XSP, align 8, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !18
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !18
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !18
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !18
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !18
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !18
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !18
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !18
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !18
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !18
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !18
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !18
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !18
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !18
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !18
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !18
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !18
  %RBP_val.29 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !18
  %1 = add i64 %RSP_val.30, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !18
  store i64 %RBP_val.29, i64* %2, align 8, !mcsema_real_eip !18
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !19
  %3 = add i64 %RSP_val.30, -24
  %4 = xor i64 %3, %1, !mcsema_real_eip !20
  %5 = and i64 %4, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !20
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !20
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !20
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !20
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !20
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !20
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !20
  %13 = icmp ult i64 %1, 16, !mcsema_real_eip !20
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !20
  %14 = and i64 %4, %1, !mcsema_real_eip !20
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !20
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !20
  store i64 1, i64* %XAX, align 8, !mcsema_real_eip !21
  %16 = add i64 %RSP_val.30, -16, !mcsema_real_eip !22
  %EDI.34 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.35 = load i32, i32* %EDI.34, align 4, !mcsema_real_eip !22
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.35, i32* %17, align 4, !mcsema_real_eip !22
  %RBP_val.36 = load i64, i64* %XBP, align 8
  %18 = add i64 %RBP_val.36, -8
  %EAX.37 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.38 = load i32, i32* %EAX.37, align 4
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* %19, align 4, !mcsema_real_eip !23
  %21 = sub i32 %EAX_val.38, %20, !mcsema_real_eip !23
  %22 = xor i32 %21, %EAX_val.38, !mcsema_real_eip !23
  %23 = xor i32 %22, %20, !mcsema_real_eip !23
  %24 = and i32 %23, 16, !mcsema_real_eip !23
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !23
  store i1 %25, i1* %AF, align 1, !mcsema_real_eip !23
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !23
  %27 = tail call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !23
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  store i1 %29, i1* %PF, align 1, !mcsema_real_eip !23
  %30 = icmp eq i32 %21, 0
  store i1 %30, i1* %ZF, align 1, !mcsema_real_eip !23
  %31 = icmp slt i32 %21, 0
  store i1 %31, i1* %SF, align 1, !mcsema_real_eip !23
  %32 = icmp ult i32 %EAX_val.38, %20, !mcsema_real_eip !23
  store i1 %32, i1* %CF, align 1, !mcsema_real_eip !23
  %33 = xor i32 %20, %EAX_val.38, !mcsema_real_eip !23
  %34 = and i32 %22, %33, !mcsema_real_eip !23
  %35 = icmp slt i32 %34, 0
  store i1 %35, i1* %OF, align 1, !mcsema_real_eip !23
  br i1 %30, label %block_0x53, label %block_0x19, !mcsema_real_eip !24

block_0x19:                                       ; preds = %entry
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !25
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !25
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !25
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !25
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !25
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !25
  %36 = load i32, i32* %19, align 4, !mcsema_real_eip !26
  %37 = sub i32 0, %36, !mcsema_real_eip !26
  %38 = xor i32 %36, %37, !mcsema_real_eip !26
  %39 = and i32 %38, 16, !mcsema_real_eip !26
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !26
  store i1 %40, i1* %AF, align 1, !mcsema_real_eip !26
  %41 = trunc i32 %37 to i8, !mcsema_real_eip !26
  %42 = tail call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !26
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !26
  %45 = icmp eq i32 %36, 0
  store i1 %45, i1* %ZF, align 1, !mcsema_real_eip !26
  %46 = icmp slt i32 %37, 0
  store i1 %46, i1* %SF, align 1, !mcsema_real_eip !26
  %47 = icmp ne i32 %36, 0
  store i1 %47, i1* %CF, align 1, !mcsema_real_eip !26
  %48 = and i32 %36, %37, !mcsema_real_eip !26
  %49 = icmp slt i32 %48, 0
  store i1 %49, i1* %OF, align 1, !mcsema_real_eip !26
  br i1 %45, label %block_0x53, label %block_0x30, !mcsema_real_eip !27

block_0x53:                                       ; preds = %entry, %block_0x19, %block_0x30
  %.sink.in.in = phi i64 [ %RBP_val.64, %block_0x30 ], [ %RBP_val.36, %block_0x19 ], [ %RBP_val.36, %entry ]
  %EDI_val.71.sink = phi i32 [ %116, %block_0x30 ], [ 1, %block_0x19 ], [ 1, %entry ]
  %.sink.in = add i64 %.sink.in.in, -4
  %50 = inttoptr i64 %.sink.in to i32*
  store i32 %EDI_val.71.sink, i32* %50, align 4
  %RBP_val.47 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %51 = add i64 %RBP_val.47, -4, !mcsema_real_eip !28
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !28
  %53 = load i32, i32* %52, align 4, !mcsema_real_eip !28
  %54 = zext i32 %53 to i64, !mcsema_real_eip !28
  store i64 %54, i64* %XAX, align 8, !mcsema_real_eip !28
  %RSP_val.48 = load i64, i64* %XSP, align 8, !mcsema_real_eip !29
  %55 = add i64 %RSP_val.48, 16, !mcsema_real_eip !29
  %56 = xor i64 %55, %RSP_val.48, !mcsema_real_eip !29
  %57 = and i64 %56, 16
  %58 = icmp eq i64 %57, 0
  store i1 %58, i1* %AF, align 1, !mcsema_real_eip !29
  %59 = icmp slt i64 %55, 0
  store i1 %59, i1* %SF, align 1, !mcsema_real_eip !29
  %60 = icmp eq i64 %55, 0, !mcsema_real_eip !29
  store i1 %60, i1* %ZF, align 1, !mcsema_real_eip !29
  %61 = xor i64 %RSP_val.48, -9223372036854775808, !mcsema_real_eip !29
  %62 = and i64 %56, %61, !mcsema_real_eip !29
  %63 = icmp slt i64 %62, 0
  store i1 %63, i1* %OF, align 1, !mcsema_real_eip !29
  %64 = trunc i64 %55 to i8, !mcsema_real_eip !29
  %65 = tail call i8 @llvm.ctpop.i8(i8 %64), !mcsema_real_eip !29
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  store i1 %67, i1* %PF, align 1, !mcsema_real_eip !29
  %68 = icmp ugt i64 %RSP_val.48, -17
  store i1 %68, i1* %CF, align 1, !mcsema_real_eip !29
  store i64 %55, i64* %XSP, align 8, !mcsema_real_eip !29
  %69 = inttoptr i64 %55 to i64*, !mcsema_real_eip !30
  %70 = load i64, i64* %69, align 8, !mcsema_real_eip !30
  store i64 %70, i64* %XBP, align 8, !mcsema_real_eip !30
  %71 = add i64 %RSP_val.48, 24, !mcsema_real_eip !30
  store i64 %71, i64* %XSP, align 8, !mcsema_real_eip !30
  %72 = add i64 %RSP_val.48, 32, !mcsema_real_eip !31
  %73 = inttoptr i64 %71 to i64*, !mcsema_real_eip !31
  %74 = load i64, i64* %73, align 8, !mcsema_real_eip !31
  store i64 %74, i64* %XIP, align 8, !mcsema_real_eip !31
  store i64 %72, i64* %XSP, align 8, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x30:                                       ; preds = %block_0x19
  %75 = load i32, i32* %19, align 4, !mcsema_real_eip !32
  %76 = add i32 %75, -1
  %77 = xor i32 %76, %75, !mcsema_real_eip !33
  %78 = and i32 %77, 16, !mcsema_real_eip !33
  %79 = icmp ne i32 %78, 0, !mcsema_real_eip !33
  store i1 %79, i1* %AF, align 1, !mcsema_real_eip !33
  %80 = trunc i32 %76 to i8, !mcsema_real_eip !33
  %81 = tail call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !33
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  store i1 %83, i1* %PF, align 1, !mcsema_real_eip !33
  %84 = icmp eq i32 %76, 0, !mcsema_real_eip !33
  store i1 %84, i1* %ZF, align 1, !mcsema_real_eip !33
  %85 = icmp slt i32 %76, 0
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !33
  %86 = icmp eq i32 %75, 0
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !33
  %87 = and i32 %77, %75, !mcsema_real_eip !33
  %88 = icmp slt i32 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !33
  %89 = zext i32 %76 to i64
  store i64 %89, i64* %XAX, align 8, !mcsema_real_eip !33
  store i64 %89, i64* %XDI, align 8, !mcsema_real_eip !34
  %RSP_val.56 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %90 = add i64 %RSP_val.56, -8
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !35
  store i64 -4981261766360305936, i64* %91, align 8, !mcsema_real_eip !35
  store i64 %90, i64* %XSP, align 8, !mcsema_real_eip !35
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !35
  %RBP_val.57 = load i64, i64* %XBP, align 8
  %92 = add i64 %RBP_val.57, -8, !mcsema_real_eip !36
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !36
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !36
  %95 = add i32 %94, -2
  %96 = xor i32 %95, %94, !mcsema_real_eip !37
  %97 = and i32 %96, 16, !mcsema_real_eip !37
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !37
  store i1 %98, i1* %AF, align 1, !mcsema_real_eip !37
  %99 = trunc i32 %95 to i8, !mcsema_real_eip !37
  %100 = tail call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !37
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  store i1 %102, i1* %PF, align 1, !mcsema_real_eip !37
  %103 = icmp eq i32 %95, 0, !mcsema_real_eip !37
  store i1 %103, i1* %ZF, align 1, !mcsema_real_eip !37
  %104 = icmp slt i32 %95, 0
  store i1 %104, i1* %SF, align 1, !mcsema_real_eip !37
  %105 = icmp ult i32 %94, 2, !mcsema_real_eip !37
  store i1 %105, i1* %CF, align 1, !mcsema_real_eip !37
  %106 = and i32 %96, %94, !mcsema_real_eip !37
  %107 = icmp slt i32 %106, 0
  store i1 %107, i1* %OF, align 1, !mcsema_real_eip !37
  %108 = zext i32 %95 to i64, !mcsema_real_eip !37
  store i64 %108, i64* %XDI, align 8, !mcsema_real_eip !37
  %109 = add i64 %RBP_val.57, -12, !mcsema_real_eip !38
  %EAX_val.62 = load i32, i32* %EAX.37, align 4, !mcsema_real_eip !38
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.62, i32* %110, align 4, !mcsema_real_eip !38
  %RSP_val.63 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %111 = add i64 %RSP_val.63, -8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !39
  store i64 -4981261766360305936, i64* %112, align 8, !mcsema_real_eip !39
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !39
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !39
  %RBP_val.64 = load i64, i64* %XBP, align 8
  %113 = add i64 %RBP_val.64, -12, !mcsema_real_eip !40
  %114 = inttoptr i64 %113 to i32*, !mcsema_real_eip !40
  %115 = load i32, i32* %114, align 4, !mcsema_real_eip !40
  %EAX_val.68 = load i32, i32* %EAX.37, align 4, !mcsema_real_eip !41
  %116 = add i32 %EAX_val.68, %115, !mcsema_real_eip !41
  %117 = xor i32 %116, %115, !mcsema_real_eip !41
  %118 = xor i32 %117, %EAX_val.68, !mcsema_real_eip !41
  %119 = and i32 %118, 16, !mcsema_real_eip !41
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !41
  store i1 %120, i1* %AF, align 1, !mcsema_real_eip !41
  %121 = icmp slt i32 %116, 0
  store i1 %121, i1* %SF, align 1, !mcsema_real_eip !41
  %122 = icmp eq i32 %116, 0, !mcsema_real_eip !41
  store i1 %122, i1* %ZF, align 1, !mcsema_real_eip !41
  %123 = xor i32 %115, -2147483648, !mcsema_real_eip !41
  %124 = xor i32 %123, %EAX_val.68, !mcsema_real_eip !41
  %125 = and i32 %117, %124, !mcsema_real_eip !41
  %126 = icmp slt i32 %125, 0
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !41
  %127 = trunc i32 %116 to i8, !mcsema_real_eip !41
  %128 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !41
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  store i1 %130, i1* %PF, align 1, !mcsema_real_eip !41
  %131 = icmp ult i32 %116, %115, !mcsema_real_eip !41
  store i1 %131, i1* %CF, align 1, !mcsema_real_eip !41
  %132 = zext i32 %116 to i64, !mcsema_real_eip !41
  store i64 %132, i64* %XDI, align 8, !mcsema_real_eip !41
  br label %block_0x53
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

attributes #0 = { noinline }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 96}
!3 = !{i64 97}
!4 = !{i64 100}
!5 = !{i64 104}
!6 = !{i64 109}
!7 = !{i64 116}
!8 = !{i64 121}
!9 = !{i64 131}
!10 = !{i64 133}
!11 = !{i64 135}
!12 = !{i64 140}
!13 = !{i64 142}
!14 = !{i64 145}
!15 = !{i64 147}
!16 = !{i64 151}
!17 = !{i64 152}
!18 = !{i64 0}
!19 = !{i64 1}
!20 = !{i64 4}
!21 = !{i64 8}
!22 = !{i64 13}
!23 = !{i64 16}
!24 = !{i64 19}
!25 = !{i64 25}
!26 = !{i64 27}
!27 = !{i64 30}
!28 = !{i64 83}
!29 = !{i64 86}
!30 = !{i64 90}
!31 = !{i64 91}
!32 = !{i64 48}
!33 = !{i64 51}
!34 = !{i64 54}
!35 = !{i64 56}
!36 = !{i64 61}
!37 = !{i64 64}
!38 = !{i64 67}
!39 = !{i64 70}
!40 = !{i64 75}
!41 = !{i64 78}
