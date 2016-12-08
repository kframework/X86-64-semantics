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

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70(%RegState* nocapture) local_unnamed_addr #0 {
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
  store i64 10, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 20, i64* %XSI, align 8, !mcsema_real_eip !6
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %17, align 4, !mcsema_real_eip !7
  %RSP_val.5 = load i64, i64* %XSP, align 8, !mcsema_real_eip !8
  %18 = add i64 %RSP_val.5, -8
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !8
  store i64 -4981261766360305936, i64* %19, align 8, !mcsema_real_eip !8
  store i64 %18, i64* %XSP, align 8, !mcsema_real_eip !8
  tail call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !8
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, align 8, !mcsema_real_eip !9
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %20 = add i64 %RBP_val.6, -8, !mcsema_real_eip !10
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.8 = load i32, i32* %EAX.7, align 4, !mcsema_real_eip !10
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.8, i32* %21, align 4, !mcsema_real_eip !10
  %RBP_val.9 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %22 = add i64 %RBP_val.9, -8, !mcsema_real_eip !11
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !11
  %24 = load i32, i32* %23, align 4, !mcsema_real_eip !11
  %25 = zext i32 %24 to i64, !mcsema_real_eip !11
  store i64 %25, i64* %XSI, align 8, !mcsema_real_eip !11
  %AL.10 = bitcast i64* %XAX to i8*, !mcsema_real_eip !12
  store i8 0, i8* %AL.10, align 1, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, align 8, !mcsema_real_eip !13
  %RDX_val.13 = load i64, i64* %XDX, align 8, !mcsema_real_eip !13
  %RCX_val.14 = load i64, i64* %XCX, align 8, !mcsema_real_eip !13
  %R8_val.15 = load i64, i64* %R8, align 8, !mcsema_real_eip !13
  %R9_val.16 = load i64, i64* %R9, align 8, !mcsema_real_eip !13
  %RSP_val.17 = load i64, i64* %XSP, align 8, !mcsema_real_eip !13
  %26 = inttoptr i64 %RSP_val.17 to i64*, !mcsema_real_eip !13
  %27 = load i64, i64* %26, align 8, !mcsema_real_eip !13
  %28 = add i64 %RSP_val.17, 8, !mcsema_real_eip !13
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !13
  %30 = load i64, i64* %29, align 8, !mcsema_real_eip !13
  %31 = add i64 %RSP_val.17, 16, !mcsema_real_eip !13
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !13
  %33 = load i64, i64* %32, align 8, !mcsema_real_eip !13
  %34 = add i64 %RSP_val.17, 24, !mcsema_real_eip !13
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !13
  %36 = load i64, i64* %35, align 8, !mcsema_real_eip !13
  %37 = add i64 %RSP_val.17, 32, !mcsema_real_eip !13
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !13
  %39 = load i64, i64* %38, align 8, !mcsema_real_eip !13
  %40 = add i64 %RSP_val.17, 40, !mcsema_real_eip !13
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !13
  %42 = load i64, i64* %41, align 8, !mcsema_real_eip !13
  %43 = add i64 %RSP_val.17, -8
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !13
  store i64 -2415393069852865332, i64* %44, align 8, !mcsema_real_eip !13
  store i64 %43, i64* %XSP, align 8, !mcsema_real_eip !13
  %45 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.11, i64 %25, i64 %RDX_val.13, i64 %RCX_val.14, i64 %R8_val.15, i64 %R9_val.16, i64 %27, i64 %30, i64 %33, i64 %36, i64 %39, i64 %42), !mcsema_real_eip !13
  store i64 %45, i64* %XAX, align 8, !mcsema_real_eip !13
  %RBP_val.19 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %46 = add i64 %RBP_val.19, -8, !mcsema_real_eip !14
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !14
  %48 = load i32, i32* %47, align 4, !mcsema_real_eip !14
  %49 = zext i32 %48 to i64, !mcsema_real_eip !14
  store i64 %49, i64* %XSI, align 8, !mcsema_real_eip !14
  %50 = add i64 %RBP_val.19, -12, !mcsema_real_eip !15
  %51 = trunc i64 %45 to i32
  %52 = inttoptr i64 %50 to i32*, !mcsema_real_eip !15
  store i32 %51, i32* %52, align 4, !mcsema_real_eip !15
  %ESI.23 = bitcast i64* %XSI to i32*, !mcsema_real_eip !16
  %ESI_val.24 = load i32, i32* %ESI.23, align 4, !mcsema_real_eip !16
  %53 = zext i32 %ESI_val.24 to i64, !mcsema_real_eip !16
  store i64 %53, i64* %XAX, align 8, !mcsema_real_eip !16
  %RSP_val.25 = load i64, i64* %XSP, align 8, !mcsema_real_eip !17
  %54 = add i64 %RSP_val.25, 16, !mcsema_real_eip !17
  %55 = xor i64 %54, %RSP_val.25, !mcsema_real_eip !17
  %56 = and i64 %55, 16
  %57 = icmp eq i64 %56, 0
  store i1 %57, i1* %AF, align 1, !mcsema_real_eip !17
  %58 = icmp slt i64 %54, 0
  store i1 %58, i1* %SF, align 1, !mcsema_real_eip !17
  %59 = icmp eq i64 %54, 0, !mcsema_real_eip !17
  store i1 %59, i1* %ZF, align 1, !mcsema_real_eip !17
  %60 = xor i64 %RSP_val.25, -9223372036854775808, !mcsema_real_eip !17
  %61 = and i64 %55, %60, !mcsema_real_eip !17
  %62 = icmp slt i64 %61, 0
  store i1 %62, i1* %OF, align 1, !mcsema_real_eip !17
  %63 = trunc i64 %54 to i8, !mcsema_real_eip !17
  %64 = tail call i8 @llvm.ctpop.i8(i8 %63), !mcsema_real_eip !17
  %65 = and i8 %64, 1
  %66 = icmp eq i8 %65, 0
  store i1 %66, i1* %PF, align 1, !mcsema_real_eip !17
  %67 = icmp ugt i64 %RSP_val.25, -17
  store i1 %67, i1* %CF, align 1, !mcsema_real_eip !17
  store i64 %54, i64* %XSP, align 8, !mcsema_real_eip !17
  %68 = inttoptr i64 %54 to i64*, !mcsema_real_eip !18
  %69 = load i64, i64* %68, align 8, !mcsema_real_eip !18
  store i64 %69, i64* %XBP, align 8, !mcsema_real_eip !18
  %70 = add i64 %RSP_val.25, 24, !mcsema_real_eip !18
  store i64 %70, i64* %XSP, align 8, !mcsema_real_eip !18
  %71 = add i64 %RSP_val.25, 32, !mcsema_real_eip !19
  %72 = inttoptr i64 %70 to i64*, !mcsema_real_eip !19
  %73 = load i64, i64* %72, align 8, !mcsema_real_eip !19
  store i64 %73, i64* %XIP, align 8, !mcsema_real_eip !19
  store i64 %71, i64* %XSP, align 8, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !20
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !20
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !20
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !20
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !20
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !20
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !20
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !20
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !20
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !20
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !20
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !20
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !20
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !20
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !20
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !20
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !20
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !20
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !20
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !20
  %RBP_val.28 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %RSP_val.29 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %1 = add i64 %RSP_val.29, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !20
  store i64 %RBP_val.28, i64* %2, align 8, !mcsema_real_eip !20
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !20
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !21
  %3 = add i64 %RSP_val.29, -12, !mcsema_real_eip !22
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.33 = load i32, i32* %EDI.32, align 4, !mcsema_real_eip !22
  %4 = inttoptr i64 %3 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.33, i32* %4, align 4, !mcsema_real_eip !22
  %RBP_val.34 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %5 = add i64 %RBP_val.34, -8, !mcsema_real_eip !23
  %ESI.35 = bitcast i64* %XSI to i32*, !mcsema_real_eip !23
  %ESI_val.36 = load i32, i32* %ESI.35, align 4, !mcsema_real_eip !23
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !23
  store i32 %ESI_val.36, i32* %6, align 4, !mcsema_real_eip !23
  %RBP_val.37 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %7 = add i64 %RBP_val.37, -4, !mcsema_real_eip !24
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !24
  %9 = load i32, i32* %8, align 4, !mcsema_real_eip !24
  %10 = zext i32 %9 to i64, !mcsema_real_eip !24
  store i64 %10, i64* %XSI, align 8, !mcsema_real_eip !24
  %11 = add i64 %RBP_val.37, -8, !mcsema_real_eip !25
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !25
  %13 = load i32, i32* %12, align 4, !mcsema_real_eip !25
  %14 = add i32 %9, %13, !mcsema_real_eip !25
  %15 = xor i32 %14, %13, !mcsema_real_eip !25
  %16 = xor i32 %15, %9, !mcsema_real_eip !25
  %17 = and i32 %16, 16, !mcsema_real_eip !25
  %18 = icmp ne i32 %17, 0, !mcsema_real_eip !25
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !25
  %19 = icmp slt i32 %14, 0
  store i1 %19, i1* %SF, align 1, !mcsema_real_eip !25
  %20 = icmp eq i32 %14, 0, !mcsema_real_eip !25
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !25
  %21 = xor i32 %13, -2147483648, !mcsema_real_eip !25
  %22 = xor i32 %21, %9, !mcsema_real_eip !25
  %23 = and i32 %15, %22, !mcsema_real_eip !25
  %24 = icmp slt i32 %23, 0
  store i1 %24, i1* %OF, align 1, !mcsema_real_eip !25
  %25 = trunc i32 %14 to i8, !mcsema_real_eip !25
  %26 = tail call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !25
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !25
  %29 = icmp ult i32 %14, %13, !mcsema_real_eip !25
  store i1 %29, i1* %CF, align 1, !mcsema_real_eip !25
  %30 = zext i32 %14 to i64, !mcsema_real_eip !25
  store i64 %30, i64* %XSI, align 8, !mcsema_real_eip !25
  %31 = add i64 %RBP_val.37, -12, !mcsema_real_eip !26
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !26
  store i32 %14, i32* %32, align 4, !mcsema_real_eip !26
  %RBP_val.441 = load i64, i64* %XBP, align 8, !mcsema_real_eip !27
  %33 = add i64 %RBP_val.441, -4, !mcsema_real_eip !27
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !27
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !27
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !27
  %36 = trunc i32 %35 to i8, !mcsema_real_eip !27
  %37 = tail call i8 @llvm.ctpop.i8(i8 %36), !mcsema_real_eip !27
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  store i1 %39, i1* %PF, align 1, !mcsema_real_eip !27
  %40 = icmp eq i32 %35, 0, !mcsema_real_eip !27
  store i1 %40, i1* %ZF, align 1, !mcsema_real_eip !27
  %41 = icmp slt i32 %35, 0
  store i1 %41, i1* %SF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !27
  br i1 %41, label %block_0x5e, label %block_0x1d.lr.ph, !mcsema_real_eip !28

block_0x1d.lr.ph:                                 ; preds = %entry
  %ECX.52 = bitcast i64* %XCX to i32*, !mcsema_real_eip !29
  br label %block_0x1d

block_0x1d:                                       ; preds = %block_0x1d.lr.ph, %block_0x50
  %42 = phi i32* [ %34, %block_0x1d.lr.ph ], [ %131, %block_0x50 ]
  %RBP_val.442 = phi i64 [ %RBP_val.441, %block_0x1d.lr.ph ], [ %RBP_val.44, %block_0x50 ]
  store i64 2, i64* %XAX, align 8, !mcsema_real_eip !30
  %43 = load i32, i32* %42, align 4, !mcsema_real_eip !31
  %44 = zext i32 %43 to i64, !mcsema_real_eip !31
  store i64 %44, i64* %XCX, align 8, !mcsema_real_eip !31
  %45 = add i64 %RBP_val.442, -20, !mcsema_real_eip !32
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !32
  store i32 2, i32* %46, align 4, !mcsema_real_eip !32
  %ECX_val.53 = load i32, i32* %ECX.52, align 4, !mcsema_real_eip !29
  %47 = zext i32 %ECX_val.53 to i64, !mcsema_real_eip !29
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !29
  %EAX_val.55.lobit = ashr i32 %ECX_val.53, 31
  %48 = zext i32 %EAX_val.55.lobit to i64
  store i64 %48, i64* %XDX, align 8, !mcsema_real_eip !33
  %RBP_val.56 = load i64, i64* %XBP, align 8, !mcsema_real_eip !34
  %49 = add i64 %RBP_val.56, -20, !mcsema_real_eip !34
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !34
  %51 = load i32, i32* %50, align 4, !mcsema_real_eip !34
  %52 = zext i32 %51 to i64, !mcsema_real_eip !34
  store i64 %52, i64* %XCX, align 8, !mcsema_real_eip !34
  %53 = shl nuw i64 %48, 32, !mcsema_real_eip !35
  %54 = sext i32 %ECX_val.53 to i64, !mcsema_real_eip !35
  %55 = or i64 %53, %54, !mcsema_real_eip !35
  %56 = sext i32 %51 to i64, !mcsema_real_eip !35
  %57 = sdiv i64 %55, %56, !mcsema_real_eip !35
  %58 = srem i64 %55, %56, !mcsema_real_eip !35
  %59 = and i64 %58, 4294967295
  store i64 %59, i64* %XDX, align 8, !mcsema_real_eip !35
  %60 = and i64 %57, 4294967295
  store i64 %60, i64* %XAX, align 8, !mcsema_real_eip !35
  %61 = trunc i64 %58 to i32
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !36
  %62 = trunc i64 %58 to i8
  %63 = tail call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !36
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  store i1 %65, i1* %PF, align 1, !mcsema_real_eip !36
  %66 = icmp eq i32 %61, 0, !mcsema_real_eip !36
  store i1 %66, i1* %ZF, align 1, !mcsema_real_eip !36
  %67 = icmp slt i32 %61, 0
  store i1 %67, i1* %SF, align 1, !mcsema_real_eip !36
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !36
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !36
  %68 = add i64 %RBP_val.56, -12
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %XAX, align 8
  br i1 %66, label %block_0x39, label %block_0x47, !mcsema_real_eip !37

block_0x5e.loopexit:                              ; preds = %block_0x50
  br label %block_0x5e

block_0x5e:                                       ; preds = %block_0x5e.loopexit, %entry
  %RBP_val.44.lcssa = phi i64 [ %RBP_val.441, %entry ], [ %RBP_val.44, %block_0x5e.loopexit ]
  %72 = add i64 %RBP_val.44.lcssa, -16, !mcsema_real_eip !38
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !38
  %74 = load i32, i32* %73, align 4, !mcsema_real_eip !38
  %75 = zext i32 %74 to i64, !mcsema_real_eip !38
  store i64 %75, i64* %XAX, align 8, !mcsema_real_eip !38
  %RSP_val.46 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %76 = inttoptr i64 %RSP_val.46 to i64*, !mcsema_real_eip !39
  %77 = load i64, i64* %76, align 8, !mcsema_real_eip !39
  store i64 %77, i64* %XBP, align 8, !mcsema_real_eip !39
  %78 = add i64 %RSP_val.46, 8, !mcsema_real_eip !39
  store i64 %78, i64* %XSP, align 8, !mcsema_real_eip !39
  %79 = add i64 %RSP_val.46, 16, !mcsema_real_eip !40
  %80 = inttoptr i64 %78 to i64*, !mcsema_real_eip !40
  %81 = load i64, i64* %80, align 8, !mcsema_real_eip !40
  store i64 %81, i64* %XIP, align 8, !mcsema_real_eip !40
  store i64 %79, i64* %XSP, align 8, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40

block_0x39:                                       ; preds = %block_0x1d
  %82 = add i32 %70, 10, !mcsema_real_eip !41
  %83 = xor i32 %82, %70, !mcsema_real_eip !41
  %84 = and i32 %83, 16, !mcsema_real_eip !41
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !41
  store i1 %85, i1* %AF, align 1, !mcsema_real_eip !41
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF, align 1, !mcsema_real_eip !41
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !41
  store i1 %87, i1* %ZF, align 1, !mcsema_real_eip !41
  %88 = xor i32 %70, -2147483648, !mcsema_real_eip !41
  %89 = and i32 %83, %88, !mcsema_real_eip !41
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF, align 1, !mcsema_real_eip !41
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !41
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !41
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !41
  %95 = icmp ugt i32 %70, -11
  store i1 %95, i1* %CF, align 1, !mcsema_real_eip !41
  %96 = zext i32 %82 to i64, !mcsema_real_eip !41
  store i64 %96, i64* %XAX, align 8, !mcsema_real_eip !41
  %97 = add i64 %RBP_val.56, -16, !mcsema_real_eip !42
  %98 = inttoptr i64 %97 to i32*, !mcsema_real_eip !42
  store i32 %82, i32* %98, align 4, !mcsema_real_eip !42
  br label %block_0x50, !mcsema_real_eip !43

block_0x47:                                       ; preds = %block_0x1d
  %99 = add i32 %70, -10
  %100 = xor i32 %99, %70, !mcsema_real_eip !44
  %101 = and i32 %100, 16, !mcsema_real_eip !44
  %102 = icmp ne i32 %101, 0, !mcsema_real_eip !44
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !44
  %103 = trunc i32 %99 to i8, !mcsema_real_eip !44
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !44
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !44
  %107 = icmp eq i32 %99, 0, !mcsema_real_eip !44
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !44
  %108 = icmp slt i32 %99, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !44
  %109 = icmp ult i32 %70, 10, !mcsema_real_eip !44
  store i1 %109, i1* %CF, align 1, !mcsema_real_eip !44
  %110 = and i32 %100, %70, !mcsema_real_eip !44
  %111 = icmp slt i32 %110, 0
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !44
  %112 = zext i32 %99 to i64, !mcsema_real_eip !44
  store i64 %112, i64* %XAX, align 8, !mcsema_real_eip !44
  store i32 %99, i32* %69, align 4, !mcsema_real_eip !45
  br label %block_0x50, !mcsema_real_eip !46

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %RBP_val.77 = load i64, i64* %XBP, align 8, !mcsema_real_eip !47
  %113 = add i64 %RBP_val.77, -4, !mcsema_real_eip !47
  %114 = inttoptr i64 %113 to i32*, !mcsema_real_eip !47
  %115 = load i32, i32* %114, align 4, !mcsema_real_eip !47
  %116 = add i32 %115, -1, !mcsema_real_eip !48
  %117 = xor i32 %116, %115, !mcsema_real_eip !48
  %118 = and i32 %117, 16
  %119 = icmp eq i32 %118, 0
  store i1 %119, i1* %AF, align 1, !mcsema_real_eip !48
  %120 = icmp slt i32 %116, 0
  store i1 %120, i1* %SF, align 1, !mcsema_real_eip !48
  %121 = icmp eq i32 %116, 0, !mcsema_real_eip !48
  store i1 %121, i1* %ZF, align 1, !mcsema_real_eip !48
  %122 = and i32 %117, %115, !mcsema_real_eip !48
  %123 = icmp slt i32 %122, 0
  store i1 %123, i1* %OF, align 1, !mcsema_real_eip !48
  %124 = trunc i32 %116 to i8, !mcsema_real_eip !48
  %125 = tail call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !48
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  store i1 %127, i1* %PF, align 1, !mcsema_real_eip !48
  %128 = icmp ne i32 %115, 0
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !48
  %129 = zext i32 %116 to i64, !mcsema_real_eip !48
  store i64 %129, i64* %XAX, align 8, !mcsema_real_eip !48
  store i32 %116, i32* %114, align 4, !mcsema_real_eip !49
  %RBP_val.44 = load i64, i64* %XBP, align 8, !mcsema_real_eip !27
  %130 = add i64 %RBP_val.44, -4, !mcsema_real_eip !27
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !27
  %132 = load i32, i32* %131, align 4, !mcsema_real_eip !27
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !27
  %133 = trunc i32 %132 to i8, !mcsema_real_eip !27
  %134 = tail call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !27
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  store i1 %136, i1* %PF, align 1, !mcsema_real_eip !27
  %137 = icmp eq i32 %132, 0, !mcsema_real_eip !27
  store i1 %137, i1* %ZF, align 1, !mcsema_real_eip !27
  %138 = icmp slt i32 %132, 0
  store i1 %138, i1* %SF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !27
  br i1 %138, label %block_0x5e.loopexit, label %block_0x1d, !mcsema_real_eip !28
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
!2 = !{i64 112}
!3 = !{i64 113}
!4 = !{i64 116}
!5 = !{i64 120}
!6 = !{i64 125}
!7 = !{i64 130}
!8 = !{i64 137}
!9 = !{i64 142}
!10 = !{i64 152}
!11 = !{i64 155}
!12 = !{i64 158}
!13 = !{i64 160}
!14 = !{i64 165}
!15 = !{i64 168}
!16 = !{i64 171}
!17 = !{i64 173}
!18 = !{i64 177}
!19 = !{i64 178}
!20 = !{i64 0}
!21 = !{i64 1}
!22 = !{i64 4}
!23 = !{i64 7}
!24 = !{i64 10}
!25 = !{i64 13}
!26 = !{i64 16}
!27 = !{i64 19}
!28 = !{i64 23}
!29 = !{i64 40}
!30 = !{i64 29}
!31 = !{i64 34}
!32 = !{i64 37}
!33 = !{i64 42}
!34 = !{i64 43}
!35 = !{i64 46}
!36 = !{i64 48}
!37 = !{i64 51}
!38 = !{i64 94}
!39 = !{i64 97}
!40 = !{i64 98}
!41 = !{i64 60}
!42 = !{i64 63}
!43 = !{i64 66}
!44 = !{i64 74}
!45 = !{i64 77}
!46 = !{i64 57}
!47 = !{i64 80}
!48 = !{i64 83}
!49 = !{i64 86}
