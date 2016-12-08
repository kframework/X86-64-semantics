; ModuleID = 'Output/test_2.clang.trans.opt.bc'
source_filename = "Output/test_2.clang.bc"
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

@data_0xea = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

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
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -56
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
  %13 = icmp ult i64 %1, 48, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %16 = bitcast i64* %XSI to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %16, align 8
  %17 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 40, i64 30>, <2 x i64>* %17, align 8
  %18 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 50, i64 60>, <2 x i64>* %18, align 8
  store i64 70, i64* %XAX, align 8, !mcsema_real_eip !5
  store i64 80, i64* %R10, align 8, !mcsema_real_eip !6
  %19 = add i64 %RSP_val.1, -12, !mcsema_real_eip !7
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %20, align 4, !mcsema_real_eip !7
  %21 = bitcast i64* %XSP to i32**
  %RSP_val.51 = load i32*, i32** %21, align 8
  store i32 70, i32* %RSP_val.51, align 4, !mcsema_real_eip !8
  %RSP_val.6 = load i64, i64* %XSP, align 8, !mcsema_real_eip !9
  %22 = add i64 %RSP_val.6, 8, !mcsema_real_eip !9
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !9
  store i32 80, i32* %23, align 4, !mcsema_real_eip !9
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %24 = add i64 %RBP_val.7, -12, !mcsema_real_eip !10
  %R10D.8 = bitcast i64* %R10 to i32*, !mcsema_real_eip !10
  %R10D_val.9 = load i32, i32* %R10D.8, align 4, !mcsema_real_eip !10
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !10
  store i32 %R10D_val.9, i32* %25, align 4, !mcsema_real_eip !10
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %26 = add i64 %RBP_val.10, -16, !mcsema_real_eip !11
  %EAX.11 = bitcast i64* %XAX to i32*, !mcsema_real_eip !11
  %EAX_val.12 = load i32, i32* %EAX.11, align 4, !mcsema_real_eip !11
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !11
  store i32 %EAX_val.12, i32* %27, align 4, !mcsema_real_eip !11
  %RSP_val.13 = load i64, i64* %XSP, align 8, !mcsema_real_eip !12
  %28 = add i64 %RSP_val.13, -8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !12
  store i64 -4981261766360305936, i64* %29, align 8, !mcsema_real_eip !12
  store i64 %28, i64* %XSP, align 8, !mcsema_real_eip !12
  tail call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !12
  store i64 ptrtoint (%0* @data_0xea to i64), i64* %XDI, align 8, !mcsema_real_eip !13
  %RBP_val.14 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %30 = add i64 %RBP_val.14, -8, !mcsema_real_eip !14
  %EAX_val.16 = load i32, i32* %EAX.11, align 4, !mcsema_real_eip !14
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !14
  store i32 %EAX_val.16, i32* %31, align 4, !mcsema_real_eip !14
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !15
  %32 = add i64 %RBP_val.17, -8, !mcsema_real_eip !15
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !15
  %34 = load i32, i32* %33, align 4, !mcsema_real_eip !15
  %35 = zext i32 %34 to i64, !mcsema_real_eip !15
  store i64 %35, i64* %XSI, align 8, !mcsema_real_eip !15
  %AL.18 = bitcast i64* %XAX to i8*, !mcsema_real_eip !16
  store i8 0, i8* %AL.18, align 1, !mcsema_real_eip !16
  %RDI_val.19 = load i64, i64* %XDI, align 8, !mcsema_real_eip !17
  %RDX_val.21 = load i64, i64* %XDX, align 8, !mcsema_real_eip !17
  %RCX_val.22 = load i64, i64* %XCX, align 8, !mcsema_real_eip !17
  %R8_val.23 = load i64, i64* %R8, align 8, !mcsema_real_eip !17
  %R9_val.24 = load i64, i64* %R9, align 8, !mcsema_real_eip !17
  %RSP_val.25 = load i64, i64* %XSP, align 8, !mcsema_real_eip !17
  %36 = inttoptr i64 %RSP_val.25 to i64*, !mcsema_real_eip !17
  %37 = load i64, i64* %36, align 8, !mcsema_real_eip !17
  %38 = add i64 %RSP_val.25, 8, !mcsema_real_eip !17
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !17
  %40 = load i64, i64* %39, align 8, !mcsema_real_eip !17
  %41 = add i64 %RSP_val.25, 16, !mcsema_real_eip !17
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !17
  %43 = load i64, i64* %42, align 8, !mcsema_real_eip !17
  %44 = add i64 %RSP_val.25, 24, !mcsema_real_eip !17
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !17
  %46 = load i64, i64* %45, align 8, !mcsema_real_eip !17
  %47 = add i64 %RSP_val.25, 32, !mcsema_real_eip !17
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !17
  %49 = load i64, i64* %48, align 8, !mcsema_real_eip !17
  %50 = add i64 %RSP_val.25, 40, !mcsema_real_eip !17
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !17
  %52 = load i64, i64* %51, align 8, !mcsema_real_eip !17
  %53 = add i64 %RSP_val.25, -8
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !17
  store i64 -2415393069852865332, i64* %54, align 8, !mcsema_real_eip !17
  store i64 %53, i64* %XSP, align 8, !mcsema_real_eip !17
  %55 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.19, i64 %35, i64 %RDX_val.21, i64 %RCX_val.22, i64 %R8_val.23, i64 %R9_val.24, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49, i64 %52), !mcsema_real_eip !17
  store i64 %55, i64* %XAX, align 8, !mcsema_real_eip !17
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  %56 = add i64 %RBP_val.27, -8, !mcsema_real_eip !18
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !18
  %58 = load i32, i32* %57, align 4, !mcsema_real_eip !18
  %59 = zext i32 %58 to i64, !mcsema_real_eip !18
  store i64 %59, i64* %XCX, align 8, !mcsema_real_eip !18
  %60 = add i64 %RBP_val.27, -20, !mcsema_real_eip !19
  %61 = trunc i64 %55 to i32
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !19
  store i32 %61, i32* %62, align 4, !mcsema_real_eip !19
  %ECX.31 = bitcast i64* %XCX to i32*, !mcsema_real_eip !20
  %ECX_val.32 = load i32, i32* %ECX.31, align 4, !mcsema_real_eip !20
  %63 = zext i32 %ECX_val.32 to i64, !mcsema_real_eip !20
  store i64 %63, i64* %XAX, align 8, !mcsema_real_eip !20
  %RSP_val.33 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %64 = add i64 %RSP_val.33, 48, !mcsema_real_eip !21
  %65 = xor i64 %64, %RSP_val.33, !mcsema_real_eip !21
  %66 = and i64 %65, 16
  %67 = icmp eq i64 %66, 0
  store i1 %67, i1* %AF, align 1, !mcsema_real_eip !21
  %68 = icmp slt i64 %64, 0
  store i1 %68, i1* %SF, align 1, !mcsema_real_eip !21
  %69 = icmp eq i64 %64, 0, !mcsema_real_eip !21
  store i1 %69, i1* %ZF, align 1, !mcsema_real_eip !21
  %70 = xor i64 %RSP_val.33, -9223372036854775808, !mcsema_real_eip !21
  %71 = and i64 %65, %70, !mcsema_real_eip !21
  %72 = icmp slt i64 %71, 0
  store i1 %72, i1* %OF, align 1, !mcsema_real_eip !21
  %73 = trunc i64 %64 to i8, !mcsema_real_eip !21
  %74 = tail call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !21
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  store i1 %76, i1* %PF, align 1, !mcsema_real_eip !21
  %77 = icmp ugt i64 %RSP_val.33, -49
  store i1 %77, i1* %CF, align 1, !mcsema_real_eip !21
  store i64 %64, i64* %XSP, align 8, !mcsema_real_eip !21
  %78 = inttoptr i64 %64 to i64*, !mcsema_real_eip !22
  %79 = load i64, i64* %78, align 8, !mcsema_real_eip !22
  store i64 %79, i64* %XBP, align 8, !mcsema_real_eip !22
  %80 = add i64 %RSP_val.33, 56, !mcsema_real_eip !22
  store i64 %80, i64* %XSP, align 8, !mcsema_real_eip !22
  %81 = add i64 %RSP_val.33, 64, !mcsema_real_eip !23
  %82 = inttoptr i64 %80 to i64*, !mcsema_real_eip !23
  %83 = load i64, i64* %82, align 8, !mcsema_real_eip !23
  store i64 %83, i64* %XIP, align 8, !mcsema_real_eip !23
  store i64 %81, i64* %XSP, align 8, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !24
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !24
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !24
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !24
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !24
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !24
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !24
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !24
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !24
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !24
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !24
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !24
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !24
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !24
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !24
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !24
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !24
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !24
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !24
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !24
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !24
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !24
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !24
  %RBP_val.36 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %RSP_val.37 = load i64, i64* %XSP, align 8, !mcsema_real_eip !24
  %1 = add i64 %RSP_val.37, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !24
  store i64 %RBP_val.36, i64* %2, align 8, !mcsema_real_eip !24
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !24
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !25
  %3 = add i64 %RSP_val.37, 16, !mcsema_real_eip !26
  %4 = inttoptr i64 %3 to i32*, !mcsema_real_eip !26
  %5 = load i32, i32* %4, align 4, !mcsema_real_eip !26
  %6 = zext i32 %5 to i64, !mcsema_real_eip !26
  store i64 %6, i64* %XAX, align 8, !mcsema_real_eip !26
  %7 = add i64 %RSP_val.37, 8, !mcsema_real_eip !27
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !27
  %9 = load i32, i32* %8, align 4, !mcsema_real_eip !27
  %10 = zext i32 %9 to i64, !mcsema_real_eip !27
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !27
  %11 = add i64 %RSP_val.37, -12, !mcsema_real_eip !28
  %EDI.42 = bitcast i64* %XDI to i32*, !mcsema_real_eip !28
  %EDI_val.43 = load i32, i32* %EDI.42, align 4, !mcsema_real_eip !28
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !28
  store i32 %EDI_val.43, i32* %12, align 4, !mcsema_real_eip !28
  %RBP_val.44 = load i64, i64* %XBP, align 8, !mcsema_real_eip !29
  %13 = add i64 %RBP_val.44, -8, !mcsema_real_eip !29
  %ESI.45 = bitcast i64* %XSI to i32*, !mcsema_real_eip !29
  %ESI_val.46 = load i32, i32* %ESI.45, align 4, !mcsema_real_eip !29
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !29
  store i32 %ESI_val.46, i32* %14, align 4, !mcsema_real_eip !29
  %RBP_val.47 = load i64, i64* %XBP, align 8, !mcsema_real_eip !30
  %15 = add i64 %RBP_val.47, -12, !mcsema_real_eip !30
  %EDX.48 = bitcast i64* %XDX to i32*, !mcsema_real_eip !30
  %EDX_val.49 = load i32, i32* %EDX.48, align 4, !mcsema_real_eip !30
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !30
  store i32 %EDX_val.49, i32* %16, align 4, !mcsema_real_eip !30
  %RBP_val.50 = load i64, i64* %XBP, align 8, !mcsema_real_eip !31
  %17 = add i64 %RBP_val.50, -16, !mcsema_real_eip !31
  %ECX.51 = bitcast i64* %XCX to i32*, !mcsema_real_eip !31
  %ECX_val.52 = load i32, i32* %ECX.51, align 4, !mcsema_real_eip !31
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !31
  store i32 %ECX_val.52, i32* %18, align 4, !mcsema_real_eip !31
  %RBP_val.53 = load i64, i64* %XBP, align 8, !mcsema_real_eip !32
  %19 = add i64 %RBP_val.53, -20, !mcsema_real_eip !32
  %R8D.54 = bitcast i64* %R8 to i32*, !mcsema_real_eip !32
  %R8D_val.55 = load i32, i32* %R8D.54, align 4, !mcsema_real_eip !32
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !32
  store i32 %R8D_val.55, i32* %20, align 4, !mcsema_real_eip !32
  %RBP_val.56 = load i64, i64* %XBP, align 8, !mcsema_real_eip !33
  %21 = add i64 %RBP_val.56, -24, !mcsema_real_eip !33
  %R9D.57 = bitcast i64* %R9 to i32*, !mcsema_real_eip !33
  %R9D_val.58 = load i32, i32* %R9D.57, align 4, !mcsema_real_eip !33
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !33
  store i32 %R9D_val.58, i32* %22, align 4, !mcsema_real_eip !33
  %RBP_val.59 = load i64, i64* %XBP, align 8, !mcsema_real_eip !34
  %23 = add i64 %RBP_val.59, -28, !mcsema_real_eip !34
  %R10D.60 = bitcast i64* %R10 to i32*, !mcsema_real_eip !34
  %R10D_val.61 = load i32, i32* %R10D.60, align 4, !mcsema_real_eip !34
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !34
  store i32 %R10D_val.61, i32* %24, align 4, !mcsema_real_eip !34
  %RBP_val.62 = load i64, i64* %XBP, align 8, !mcsema_real_eip !35
  %25 = add i64 %RBP_val.62, -32, !mcsema_real_eip !35
  %EAX.63 = bitcast i64* %XAX to i32*, !mcsema_real_eip !35
  %EAX_val.64 = load i32, i32* %EAX.63, align 4, !mcsema_real_eip !35
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !35
  store i32 %EAX_val.64, i32* %26, align 4, !mcsema_real_eip !35
  %RBP_val.65 = load i64, i64* %XBP, align 8, !mcsema_real_eip !36
  %27 = add i64 %RBP_val.65, -4, !mcsema_real_eip !36
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !36
  %29 = load i32, i32* %28, align 4, !mcsema_real_eip !36
  %30 = zext i32 %29 to i64, !mcsema_real_eip !36
  store i64 %30, i64* %XAX, align 8, !mcsema_real_eip !36
  %31 = add i64 %RBP_val.65, -8, !mcsema_real_eip !37
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !37
  %33 = load i32, i32* %32, align 4, !mcsema_real_eip !37
  %34 = add i32 %29, %33, !mcsema_real_eip !37
  %35 = xor i32 %34, %33, !mcsema_real_eip !37
  %36 = xor i32 %35, %29, !mcsema_real_eip !37
  %37 = and i32 %36, 16, !mcsema_real_eip !37
  %38 = icmp ne i32 %37, 0, !mcsema_real_eip !37
  store i1 %38, i1* %AF, align 1, !mcsema_real_eip !37
  %39 = icmp slt i32 %34, 0
  store i1 %39, i1* %SF, align 1, !mcsema_real_eip !37
  %40 = icmp eq i32 %34, 0, !mcsema_real_eip !37
  store i1 %40, i1* %ZF, align 1, !mcsema_real_eip !37
  %41 = xor i32 %33, -2147483648, !mcsema_real_eip !37
  %42 = xor i32 %41, %29, !mcsema_real_eip !37
  %43 = and i32 %35, %42, !mcsema_real_eip !37
  %44 = icmp slt i32 %43, 0
  store i1 %44, i1* %OF, align 1, !mcsema_real_eip !37
  %45 = trunc i32 %34 to i8, !mcsema_real_eip !37
  %46 = tail call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !37
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  store i1 %48, i1* %PF, align 1, !mcsema_real_eip !37
  %49 = icmp ult i32 %34, %33, !mcsema_real_eip !37
  store i1 %49, i1* %CF, align 1, !mcsema_real_eip !37
  %50 = zext i32 %34 to i64, !mcsema_real_eip !37
  store i64 %50, i64* %XAX, align 8, !mcsema_real_eip !37
  %51 = add i64 %RBP_val.65, -12, !mcsema_real_eip !38
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !38
  %53 = load i32, i32* %52, align 4, !mcsema_real_eip !38
  %54 = add i32 %34, %53, !mcsema_real_eip !38
  %55 = xor i32 %54, %53, !mcsema_real_eip !38
  %56 = xor i32 %55, %34, !mcsema_real_eip !38
  %57 = and i32 %56, 16, !mcsema_real_eip !38
  %58 = icmp ne i32 %57, 0, !mcsema_real_eip !38
  store i1 %58, i1* %AF, align 1, !mcsema_real_eip !38
  %59 = icmp slt i32 %54, 0
  store i1 %59, i1* %SF, align 1, !mcsema_real_eip !38
  %60 = icmp eq i32 %54, 0, !mcsema_real_eip !38
  store i1 %60, i1* %ZF, align 1, !mcsema_real_eip !38
  %61 = xor i32 %53, -2147483648, !mcsema_real_eip !38
  %62 = xor i32 %61, %34, !mcsema_real_eip !38
  %63 = and i32 %55, %62, !mcsema_real_eip !38
  %64 = icmp slt i32 %63, 0
  store i1 %64, i1* %OF, align 1, !mcsema_real_eip !38
  %65 = trunc i32 %54 to i8, !mcsema_real_eip !38
  %66 = tail call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !38
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  store i1 %68, i1* %PF, align 1, !mcsema_real_eip !38
  %69 = icmp ult i32 %54, %53, !mcsema_real_eip !38
  store i1 %69, i1* %CF, align 1, !mcsema_real_eip !38
  %70 = zext i32 %54 to i64, !mcsema_real_eip !38
  store i64 %70, i64* %XAX, align 8, !mcsema_real_eip !38
  %71 = add i64 %RBP_val.65, -16, !mcsema_real_eip !39
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !39
  %73 = load i32, i32* %72, align 4, !mcsema_real_eip !39
  %74 = add i32 %54, %73, !mcsema_real_eip !39
  %75 = xor i32 %74, %73, !mcsema_real_eip !39
  %76 = xor i32 %75, %54, !mcsema_real_eip !39
  %77 = and i32 %76, 16, !mcsema_real_eip !39
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !39
  store i1 %78, i1* %AF, align 1, !mcsema_real_eip !39
  %79 = icmp slt i32 %74, 0
  store i1 %79, i1* %SF, align 1, !mcsema_real_eip !39
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !39
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !39
  %81 = xor i32 %73, -2147483648, !mcsema_real_eip !39
  %82 = xor i32 %81, %54, !mcsema_real_eip !39
  %83 = and i32 %75, %82, !mcsema_real_eip !39
  %84 = icmp slt i32 %83, 0
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !39
  %85 = trunc i32 %74 to i8, !mcsema_real_eip !39
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !39
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !39
  %89 = icmp ult i32 %74, %73, !mcsema_real_eip !39
  store i1 %89, i1* %CF, align 1, !mcsema_real_eip !39
  %90 = zext i32 %74 to i64, !mcsema_real_eip !39
  store i64 %90, i64* %XAX, align 8, !mcsema_real_eip !39
  %91 = add i64 %RBP_val.65, -20, !mcsema_real_eip !40
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !40
  %93 = load i32, i32* %92, align 4, !mcsema_real_eip !40
  %94 = add i32 %74, %93, !mcsema_real_eip !40
  %95 = xor i32 %94, %93, !mcsema_real_eip !40
  %96 = xor i32 %95, %74, !mcsema_real_eip !40
  %97 = and i32 %96, 16, !mcsema_real_eip !40
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !40
  store i1 %98, i1* %AF, align 1, !mcsema_real_eip !40
  %99 = icmp slt i32 %94, 0
  store i1 %99, i1* %SF, align 1, !mcsema_real_eip !40
  %100 = icmp eq i32 %94, 0, !mcsema_real_eip !40
  store i1 %100, i1* %ZF, align 1, !mcsema_real_eip !40
  %101 = xor i32 %93, -2147483648, !mcsema_real_eip !40
  %102 = xor i32 %101, %74, !mcsema_real_eip !40
  %103 = and i32 %95, %102, !mcsema_real_eip !40
  %104 = icmp slt i32 %103, 0
  store i1 %104, i1* %OF, align 1, !mcsema_real_eip !40
  %105 = trunc i32 %94 to i8, !mcsema_real_eip !40
  %106 = tail call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !40
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  store i1 %108, i1* %PF, align 1, !mcsema_real_eip !40
  %109 = icmp ult i32 %94, %93, !mcsema_real_eip !40
  store i1 %109, i1* %CF, align 1, !mcsema_real_eip !40
  %110 = zext i32 %94 to i64, !mcsema_real_eip !40
  store i64 %110, i64* %XAX, align 8, !mcsema_real_eip !40
  %111 = add i64 %RBP_val.65, -24, !mcsema_real_eip !41
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !41
  %113 = load i32, i32* %112, align 4, !mcsema_real_eip !41
  %114 = add i32 %94, %113, !mcsema_real_eip !41
  %115 = xor i32 %114, %113, !mcsema_real_eip !41
  %116 = xor i32 %115, %94, !mcsema_real_eip !41
  %117 = and i32 %116, 16, !mcsema_real_eip !41
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !41
  store i1 %118, i1* %AF, align 1, !mcsema_real_eip !41
  %119 = icmp slt i32 %114, 0
  store i1 %119, i1* %SF, align 1, !mcsema_real_eip !41
  %120 = icmp eq i32 %114, 0, !mcsema_real_eip !41
  store i1 %120, i1* %ZF, align 1, !mcsema_real_eip !41
  %121 = xor i32 %113, -2147483648, !mcsema_real_eip !41
  %122 = xor i32 %121, %94, !mcsema_real_eip !41
  %123 = and i32 %115, %122, !mcsema_real_eip !41
  %124 = icmp slt i32 %123, 0
  store i1 %124, i1* %OF, align 1, !mcsema_real_eip !41
  %125 = trunc i32 %114 to i8, !mcsema_real_eip !41
  %126 = tail call i8 @llvm.ctpop.i8(i8 %125), !mcsema_real_eip !41
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  store i1 %128, i1* %PF, align 1, !mcsema_real_eip !41
  %129 = icmp ult i32 %114, %113, !mcsema_real_eip !41
  store i1 %129, i1* %CF, align 1, !mcsema_real_eip !41
  %130 = zext i32 %114 to i64, !mcsema_real_eip !41
  store i64 %130, i64* %XAX, align 8, !mcsema_real_eip !41
  %131 = add i64 %RBP_val.65, -28, !mcsema_real_eip !42
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !42
  %133 = load i32, i32* %132, align 4, !mcsema_real_eip !42
  %134 = add i32 %114, %133, !mcsema_real_eip !42
  %135 = xor i32 %134, %133, !mcsema_real_eip !42
  %136 = xor i32 %135, %114, !mcsema_real_eip !42
  %137 = and i32 %136, 16, !mcsema_real_eip !42
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !42
  store i1 %138, i1* %AF, align 1, !mcsema_real_eip !42
  %139 = icmp slt i32 %134, 0
  store i1 %139, i1* %SF, align 1, !mcsema_real_eip !42
  %140 = icmp eq i32 %134, 0, !mcsema_real_eip !42
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !42
  %141 = xor i32 %133, -2147483648, !mcsema_real_eip !42
  %142 = xor i32 %141, %114, !mcsema_real_eip !42
  %143 = and i32 %135, %142, !mcsema_real_eip !42
  %144 = icmp slt i32 %143, 0
  store i1 %144, i1* %OF, align 1, !mcsema_real_eip !42
  %145 = trunc i32 %134 to i8, !mcsema_real_eip !42
  %146 = tail call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !42
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  store i1 %148, i1* %PF, align 1, !mcsema_real_eip !42
  %149 = icmp ult i32 %134, %133, !mcsema_real_eip !42
  store i1 %149, i1* %CF, align 1, !mcsema_real_eip !42
  %150 = zext i32 %134 to i64, !mcsema_real_eip !42
  store i64 %150, i64* %XAX, align 8, !mcsema_real_eip !42
  %151 = add i64 %RBP_val.65, -36, !mcsema_real_eip !43
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !43
  store i32 %134, i32* %152, align 4, !mcsema_real_eip !43
  %RBP_val.87 = load i64, i64* %XBP, align 8, !mcsema_real_eip !44
  %153 = add i64 %RBP_val.87, -36, !mcsema_real_eip !44
  %154 = inttoptr i64 %153 to i32*, !mcsema_real_eip !44
  %155 = load i32, i32* %154, align 4, !mcsema_real_eip !44
  %156 = add i32 %155, -40
  %157 = xor i32 %156, %155, !mcsema_real_eip !44
  %158 = and i32 %157, 16, !mcsema_real_eip !44
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !44
  store i1 %159, i1* %AF, align 1, !mcsema_real_eip !44
  %160 = trunc i32 %156 to i8, !mcsema_real_eip !44
  %161 = tail call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !44
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !44
  %164 = icmp eq i32 %156, 0, !mcsema_real_eip !44
  store i1 %164, i1* %ZF, align 1, !mcsema_real_eip !44
  %165 = icmp slt i32 %156, 0
  store i1 %165, i1* %SF, align 1, !mcsema_real_eip !44
  %166 = icmp ult i32 %155, 40, !mcsema_real_eip !44
  store i1 %166, i1* %CF, align 1, !mcsema_real_eip !44
  %167 = and i32 %157, %155, !mcsema_real_eip !44
  %168 = icmp slt i32 %167, 0
  store i1 %168, i1* %OF, align 1, !mcsema_real_eip !44
  %169 = xor i1 %165, %168
  %170 = or i1 %164, %169, !mcsema_real_eip !45
  %171 = load i32, i32* %154, align 4
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %XAX, align 8
  %173 = add i64 %RBP_val.87, -32
  %174 = inttoptr i64 %173 to i32*
  %175 = add i64 %RBP_val.87, -40
  %176 = load i32, i32* %174, align 4
  br i1 %170, label %block_0x56, label %block_0x48, !mcsema_real_eip !45

block_0x48:                                       ; preds = %entry
  %177 = add i32 %171, %176, !mcsema_real_eip !46
  %178 = xor i32 %177, %176, !mcsema_real_eip !46
  %179 = xor i32 %178, %171, !mcsema_real_eip !46
  %180 = and i32 %179, 16, !mcsema_real_eip !46
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !46
  store i1 %181, i1* %AF, align 1, !mcsema_real_eip !46
  %182 = icmp slt i32 %177, 0
  store i1 %182, i1* %SF, align 1, !mcsema_real_eip !46
  %183 = icmp eq i32 %177, 0, !mcsema_real_eip !46
  store i1 %183, i1* %ZF, align 1, !mcsema_real_eip !46
  %184 = xor i32 %176, -2147483648, !mcsema_real_eip !46
  %185 = xor i32 %184, %171, !mcsema_real_eip !46
  %186 = and i32 %178, %185, !mcsema_real_eip !46
  %187 = icmp slt i32 %186, 0
  store i1 %187, i1* %OF, align 1, !mcsema_real_eip !46
  %188 = trunc i32 %177 to i8, !mcsema_real_eip !46
  %189 = tail call i8 @llvm.ctpop.i8(i8 %188), !mcsema_real_eip !46
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  store i1 %191, i1* %PF, align 1, !mcsema_real_eip !46
  %192 = icmp ult i32 %177, %176, !mcsema_real_eip !46
  store i1 %192, i1* %CF, align 1, !mcsema_real_eip !46
  br label %block_0x5f, !mcsema_real_eip !47

block_0x56:                                       ; preds = %entry
  %193 = sub i32 %171, %176, !mcsema_real_eip !48
  %194 = xor i32 %193, %171, !mcsema_real_eip !48
  %195 = xor i32 %194, %176, !mcsema_real_eip !48
  %196 = and i32 %195, 16, !mcsema_real_eip !48
  %197 = icmp ne i32 %196, 0, !mcsema_real_eip !48
  store i1 %197, i1* %AF, align 1, !mcsema_real_eip !48
  %198 = trunc i32 %193 to i8, !mcsema_real_eip !48
  %199 = tail call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !48
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  store i1 %201, i1* %PF, align 1, !mcsema_real_eip !48
  %202 = icmp eq i32 %193, 0, !mcsema_real_eip !48
  store i1 %202, i1* %ZF, align 1, !mcsema_real_eip !48
  %203 = icmp slt i32 %193, 0
  store i1 %203, i1* %SF, align 1, !mcsema_real_eip !48
  %204 = icmp ult i32 %171, %176, !mcsema_real_eip !48
  store i1 %204, i1* %CF, align 1, !mcsema_real_eip !48
  %205 = xor i32 %171, %176, !mcsema_real_eip !48
  %206 = and i32 %194, %205, !mcsema_real_eip !48
  %207 = icmp slt i32 %206, 0
  store i1 %207, i1* %OF, align 1, !mcsema_real_eip !48
  br label %block_0x5f, !mcsema_real_eip !49

block_0x5f:                                       ; preds = %block_0x56, %block_0x48
  %storemerge.in = phi i32 [ %193, %block_0x56 ], [ %177, %block_0x48 ]
  %storemerge = zext i32 %storemerge.in to i64
  store i64 %storemerge, i64* %XAX, align 8
  %208 = inttoptr i64 %175 to i32*
  store i32 %storemerge.in, i32* %208, align 4
  %RBP_val.102 = load i64, i64* %XBP, align 8, !mcsema_real_eip !50
  %209 = add i64 %RBP_val.102, -40, !mcsema_real_eip !50
  %210 = inttoptr i64 %209 to i32*, !mcsema_real_eip !50
  %211 = load i32, i32* %210, align 4, !mcsema_real_eip !50
  %212 = zext i32 %211 to i64, !mcsema_real_eip !50
  store i64 %212, i64* %XAX, align 8, !mcsema_real_eip !50
  %RSP_val.103 = load i64, i64* %XSP, align 8, !mcsema_real_eip !51
  %213 = inttoptr i64 %RSP_val.103 to i64*, !mcsema_real_eip !51
  %214 = load i64, i64* %213, align 8, !mcsema_real_eip !51
  store i64 %214, i64* %XBP, align 8, !mcsema_real_eip !51
  %215 = add i64 %RSP_val.103, 8, !mcsema_real_eip !51
  store i64 %215, i64* %XSP, align 8, !mcsema_real_eip !51
  %216 = add i64 %RSP_val.103, 16, !mcsema_real_eip !52
  %217 = inttoptr i64 %215 to i64*, !mcsema_real_eip !52
  %218 = load i64, i64* %217, align 8, !mcsema_real_eip !52
  store i64 %218, i64* %XIP, align 8, !mcsema_real_eip !52
  store i64 %216, i64* %XSP, align 8, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
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
!5 = !{i64 152}
!6 = !{i64 157}
!7 = !{i64 163}
!8 = !{i64 170}
!9 = !{i64 177}
!10 = !{i64 185}
!11 = !{i64 189}
!12 = !{i64 192}
!13 = !{i64 197}
!14 = !{i64 207}
!15 = !{i64 210}
!16 = !{i64 213}
!17 = !{i64 215}
!18 = !{i64 220}
!19 = !{i64 223}
!20 = !{i64 226}
!21 = !{i64 228}
!22 = !{i64 232}
!23 = !{i64 233}
!24 = !{i64 0}
!25 = !{i64 1}
!26 = !{i64 4}
!27 = !{i64 7}
!28 = !{i64 11}
!29 = !{i64 14}
!30 = !{i64 17}
!31 = !{i64 20}
!32 = !{i64 23}
!33 = !{i64 27}
!34 = !{i64 31}
!35 = !{i64 35}
!36 = !{i64 38}
!37 = !{i64 41}
!38 = !{i64 44}
!39 = !{i64 47}
!40 = !{i64 50}
!41 = !{i64 53}
!42 = !{i64 56}
!43 = !{i64 59}
!44 = !{i64 62}
!45 = !{i64 66}
!46 = !{i64 75}
!47 = !{i64 81}
!48 = !{i64 89}
!49 = !{i64 72}
!50 = !{i64 95}
!51 = !{i64 98}
!52 = !{i64 99}
