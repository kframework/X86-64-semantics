; ModuleID = 'Output/test_2_1.clang.opt.bc'
source_filename = "Output/test_2_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_40;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_40(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_40(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !2
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
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, align 8, !mcsema_real_eip !4
  %3 = add i64 %RSP_val.1, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %RBX_val.3, i64* %4, align 8, !mcsema_real_eip !4
  %5 = add i64 %RSP_val.1, -56
  %6 = xor i64 %5, %3, !mcsema_real_eip !5
  %7 = and i64 %6, 16, !mcsema_real_eip !5
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !5
  store i1 %8, i1* %AF, align 1, !mcsema_real_eip !5
  %9 = trunc i64 %5 to i8, !mcsema_real_eip !5
  %10 = tail call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !5
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  store i1 %12, i1* %PF, align 1, !mcsema_real_eip !5
  %13 = icmp eq i64 %5, 0, !mcsema_real_eip !5
  store i1 %13, i1* %ZF, align 1, !mcsema_real_eip !5
  %14 = icmp slt i64 %5, 0
  store i1 %14, i1* %SF, align 1, !mcsema_real_eip !5
  %15 = icmp ult i64 %3, 40, !mcsema_real_eip !5
  store i1 %15, i1* %CF, align 1, !mcsema_real_eip !5
  %16 = and i64 %6, %3, !mcsema_real_eip !5
  %17 = icmp slt i64 %16, 0
  store i1 %17, i1* %OF, align 1, !mcsema_real_eip !5
  store i64 %5, i64* %XSP, align 8, !mcsema_real_eip !5
  %18 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 200, i64 300>, <2 x i64>* %18, align 8
  %19 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 400, i64 500>, <2 x i64>* %19, align 8
  %20 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %20, align 8
  %21 = bitcast i64* %XAX to <2 x i64>*
  store <2 x i64> <i64 100, i64 20>, <2 x i64>* %21, align 8
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %22 = add i64 %RBP_val.6, -12, !mcsema_real_eip !6
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %23, align 4, !mcsema_real_eip !6
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %24 = add i64 %RBP_val.7, -16, !mcsema_real_eip !7
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !7
  %EDI_val.9 = load i32, i32* %EDI.8, align 4, !mcsema_real_eip !7
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !7
  store i32 %EDI_val.9, i32* %25, align 4, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %26 = add i64 %RBP_val.10, -24, !mcsema_real_eip !8
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !8
  %RSI_val.11 = load i64, i64* %XSI, align 8, !mcsema_real_eip !8
  store i64 %RSI_val.11, i64* %27, align 8, !mcsema_real_eip !8
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.13 = load i32, i32* %EAX.12, align 4, !mcsema_real_eip !9
  %28 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !9
  store i64 %28, i64* %XDI, align 8, !mcsema_real_eip !9
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !10
  %ECX_val.15 = load i32, i32* %ECX.14, align 4, !mcsema_real_eip !10
  %29 = zext i32 %ECX_val.15 to i64, !mcsema_real_eip !10
  store i64 %29, i64* %XSI, align 8, !mcsema_real_eip !10
  %R8D.16 = bitcast i64* %R8 to i32*, !mcsema_real_eip !11
  %R8D_val.17 = load i32, i32* %R8D.16, align 4, !mcsema_real_eip !11
  %30 = zext i32 %R8D_val.17 to i64, !mcsema_real_eip !11
  store i64 %30, i64* %XCX, align 8, !mcsema_real_eip !11
  %R9D.18 = bitcast i64* %R9 to i32*, !mcsema_real_eip !12
  %R9D_val.19 = load i32, i32* %R9D.18, align 4, !mcsema_real_eip !12
  %31 = zext i32 %R9D_val.19 to i64, !mcsema_real_eip !12
  store i64 %31, i64* %R8, align 8, !mcsema_real_eip !12
  %R10D.20 = bitcast i64* %R10 to i32*, !mcsema_real_eip !13
  %R10D_val.21 = load i32, i32* %R10D.20, align 4, !mcsema_real_eip !13
  %32 = zext i32 %R10D_val.21 to i64, !mcsema_real_eip !13
  store i64 %32, i64* %R9, align 8, !mcsema_real_eip !13
  %33 = bitcast i64* %XSP to i32**
  %RSP_val.221 = load i32*, i32** %33, align 8
  store i32 10, i32* %RSP_val.221, align 4, !mcsema_real_eip !14
  %RSP_val.23 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %34 = add i64 %RSP_val.23, 8, !mcsema_real_eip !15
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !15
  store i32 20, i32* %35, align 4, !mcsema_real_eip !15
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %36 = add i64 %RBP_val.24, -28, !mcsema_real_eip !16
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !16
  %EBX_val.26 = load i32, i32* %EBX.25, align 4, !mcsema_real_eip !16
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !16
  store i32 %EBX_val.26, i32* %37, align 4, !mcsema_real_eip !16
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !17
  %38 = add i64 %RBP_val.27, -32, !mcsema_real_eip !17
  %R11D.28 = bitcast i64* %R11 to i32*, !mcsema_real_eip !17
  %R11D_val.29 = load i32, i32* %R11D.28, align 4, !mcsema_real_eip !17
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !17
  store i32 %R11D_val.29, i32* %39, align 4, !mcsema_real_eip !17
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !18
  %40 = add i64 %RSP_val.30, -8
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !18
  store i64 -4981261766360305936, i64* %41, align 8, !mcsema_real_eip !18
  store i64 %40, i64* %XSP, align 8, !mcsema_real_eip !18
  tail call x86_64_sysvcc void @foo(%RegState* %0), !mcsema_real_eip !18
  %RSP_val.31 = load i64, i64* %XSP, align 8, !mcsema_real_eip !19
  %42 = add i64 %RSP_val.31, 40, !mcsema_real_eip !19
  %43 = xor i64 %42, %RSP_val.31, !mcsema_real_eip !19
  %44 = and i64 %43, 16, !mcsema_real_eip !19
  %45 = icmp ne i64 %44, 0, !mcsema_real_eip !19
  store i1 %45, i1* %AF, align 1, !mcsema_real_eip !19
  %46 = icmp slt i64 %42, 0
  store i1 %46, i1* %SF, align 1, !mcsema_real_eip !19
  %47 = icmp eq i64 %42, 0, !mcsema_real_eip !19
  store i1 %47, i1* %ZF, align 1, !mcsema_real_eip !19
  %48 = xor i64 %RSP_val.31, -9223372036854775808, !mcsema_real_eip !19
  %49 = and i64 %43, %48, !mcsema_real_eip !19
  %50 = icmp slt i64 %49, 0
  store i1 %50, i1* %OF, align 1, !mcsema_real_eip !19
  %51 = trunc i64 %42 to i8, !mcsema_real_eip !19
  %52 = tail call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !19
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  store i1 %54, i1* %PF, align 1, !mcsema_real_eip !19
  %55 = icmp ugt i64 %RSP_val.31, -41
  store i1 %55, i1* %CF, align 1, !mcsema_real_eip !19
  store i64 %42, i64* %XSP, align 8, !mcsema_real_eip !19
  %56 = inttoptr i64 %42 to i64*, !mcsema_real_eip !20
  %57 = load i64, i64* %56, align 8, !mcsema_real_eip !20
  store i64 %57, i64* %XBX, align 8, !mcsema_real_eip !20
  %58 = add i64 %RSP_val.31, 48, !mcsema_real_eip !20
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !20
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !21
  %60 = load i64, i64* %59, align 8, !mcsema_real_eip !21
  store i64 %60, i64* %XBP, align 8, !mcsema_real_eip !21
  %61 = add i64 %RSP_val.31, 56, !mcsema_real_eip !21
  store i64 %61, i64* %XSP, align 8, !mcsema_real_eip !21
  %62 = add i64 %RSP_val.31, 64, !mcsema_real_eip !22
  %63 = inttoptr i64 %61 to i64*, !mcsema_real_eip !22
  %64 = load i64, i64* %63, align 8, !mcsema_real_eip !22
  store i64 %64, i64* %XIP, align 8, !mcsema_real_eip !22
  store i64 %62, i64* %XSP, align 8, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: noinline nounwind
define internal x86_64_sysvcc void @foo(%RegState* nocapture) unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !23
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !23
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !23
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !23
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !23
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !23
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !23
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !23
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !23
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !23
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !23
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !23
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !23
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !23
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !23
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !23
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !23
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !23
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !23
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !23
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !23
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !23
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !23
  %RBP_val.35 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %RSP_val.36 = load i64, i64* %XSP, align 8, !mcsema_real_eip !23
  %1 = add i64 %RSP_val.36, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !23
  store i64 %RBP_val.35, i64* %2, align 8, !mcsema_real_eip !23
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !23
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !24
  %3 = add i64 %RSP_val.36, 16, !mcsema_real_eip !25
  %4 = inttoptr i64 %3 to i32*, !mcsema_real_eip !25
  %5 = load i32, i32* %4, align 4, !mcsema_real_eip !25
  %6 = zext i32 %5 to i64, !mcsema_real_eip !25
  store i64 %6, i64* %XAX, align 8, !mcsema_real_eip !25
  %7 = add i64 %RSP_val.36, 8, !mcsema_real_eip !26
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !26
  %9 = load i32, i32* %8, align 4, !mcsema_real_eip !26
  %10 = zext i32 %9 to i64, !mcsema_real_eip !26
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !26
  %11 = add i64 %RSP_val.36, -12, !mcsema_real_eip !27
  %EDI.41 = bitcast i64* %XDI to i32*, !mcsema_real_eip !27
  %EDI_val.42 = load i32, i32* %EDI.41, align 4, !mcsema_real_eip !27
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !27
  store i32 %EDI_val.42, i32* %12, align 4, !mcsema_real_eip !27
  %RBP_val.43 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %13 = add i64 %RBP_val.43, -8, !mcsema_real_eip !28
  %ESI.44 = bitcast i64* %XSI to i32*, !mcsema_real_eip !28
  %ESI_val.45 = load i32, i32* %ESI.44, align 4, !mcsema_real_eip !28
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !28
  store i32 %ESI_val.45, i32* %14, align 4, !mcsema_real_eip !28
  %RBP_val.46 = load i64, i64* %XBP, align 8, !mcsema_real_eip !29
  %15 = add i64 %RBP_val.46, -12, !mcsema_real_eip !29
  %EDX.47 = bitcast i64* %XDX to i32*, !mcsema_real_eip !29
  %EDX_val.48 = load i32, i32* %EDX.47, align 4, !mcsema_real_eip !29
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !29
  store i32 %EDX_val.48, i32* %16, align 4, !mcsema_real_eip !29
  %RBP_val.49 = load i64, i64* %XBP, align 8, !mcsema_real_eip !30
  %17 = add i64 %RBP_val.49, -16, !mcsema_real_eip !30
  %ECX.50 = bitcast i64* %XCX to i32*, !mcsema_real_eip !30
  %ECX_val.51 = load i32, i32* %ECX.50, align 4, !mcsema_real_eip !30
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !30
  store i32 %ECX_val.51, i32* %18, align 4, !mcsema_real_eip !30
  %RBP_val.52 = load i64, i64* %XBP, align 8, !mcsema_real_eip !31
  %19 = add i64 %RBP_val.52, -20, !mcsema_real_eip !31
  %R8D.53 = bitcast i64* %R8 to i32*, !mcsema_real_eip !31
  %R8D_val.54 = load i32, i32* %R8D.53, align 4, !mcsema_real_eip !31
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !31
  store i32 %R8D_val.54, i32* %20, align 4, !mcsema_real_eip !31
  %RBP_val.55 = load i64, i64* %XBP, align 8, !mcsema_real_eip !32
  %21 = add i64 %RBP_val.55, -24, !mcsema_real_eip !32
  %R9D.56 = bitcast i64* %R9 to i32*, !mcsema_real_eip !32
  %R9D_val.57 = load i32, i32* %R9D.56, align 4, !mcsema_real_eip !32
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !32
  store i32 %R9D_val.57, i32* %22, align 4, !mcsema_real_eip !32
  %RBP_val.58 = load i64, i64* %XBP, align 8, !mcsema_real_eip !33
  %23 = add i64 %RBP_val.58, -28, !mcsema_real_eip !33
  %R10D.59 = bitcast i64* %R10 to i32*, !mcsema_real_eip !33
  %R10D_val.60 = load i32, i32* %R10D.59, align 4, !mcsema_real_eip !33
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !33
  store i32 %R10D_val.60, i32* %24, align 4, !mcsema_real_eip !33
  %RBP_val.61 = load i64, i64* %XBP, align 8, !mcsema_real_eip !34
  %25 = add i64 %RBP_val.61, -32, !mcsema_real_eip !34
  %EAX.62 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.63 = load i32, i32* %EAX.62, align 4, !mcsema_real_eip !34
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !34
  store i32 %EAX_val.63, i32* %26, align 4, !mcsema_real_eip !34
  %RBP_val.64 = load i64, i64* %XBP, align 8
  %27 = add i64 %RBP_val.64, -28, !mcsema_real_eip !35
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !35
  %29 = load i32, i32* %28, align 4, !mcsema_real_eip !35
  %30 = zext i32 %29 to i64, !mcsema_real_eip !35
  store i64 %30, i64* %XAX, align 8, !mcsema_real_eip !35
  %31 = add i64 %RBP_val.64, -32, !mcsema_real_eip !36
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !36
  %33 = load i32, i32* %32, align 4, !mcsema_real_eip !36
  %34 = add i32 %29, %33, !mcsema_real_eip !36
  %35 = xor i32 %34, %33, !mcsema_real_eip !36
  %36 = xor i32 %35, %29, !mcsema_real_eip !36
  %37 = and i32 %36, 16, !mcsema_real_eip !36
  %38 = icmp ne i32 %37, 0, !mcsema_real_eip !36
  store i1 %38, i1* %AF, align 1, !mcsema_real_eip !36
  %39 = icmp slt i32 %34, 0
  store i1 %39, i1* %SF, align 1, !mcsema_real_eip !36
  %40 = icmp eq i32 %34, 0, !mcsema_real_eip !36
  store i1 %40, i1* %ZF, align 1, !mcsema_real_eip !36
  %41 = xor i32 %33, -2147483648, !mcsema_real_eip !36
  %42 = xor i32 %41, %29, !mcsema_real_eip !36
  %43 = and i32 %35, %42, !mcsema_real_eip !36
  %44 = icmp slt i32 %43, 0
  store i1 %44, i1* %OF, align 1, !mcsema_real_eip !36
  %45 = trunc i32 %34 to i8, !mcsema_real_eip !36
  %46 = tail call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !36
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  store i1 %48, i1* %PF, align 1, !mcsema_real_eip !36
  %49 = icmp ult i32 %34, %33, !mcsema_real_eip !36
  store i1 %49, i1* %CF, align 1, !mcsema_real_eip !36
  %50 = zext i32 %34 to i64, !mcsema_real_eip !36
  store i64 %50, i64* %XAX, align 8, !mcsema_real_eip !36
  %51 = add i64 %RBP_val.64, -36, !mcsema_real_eip !37
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !37
  store i32 %34, i32* %52, align 4, !mcsema_real_eip !37
  %RBP_val.71 = load i64, i64* %XBP, align 8, !mcsema_real_eip !38
  %53 = add i64 %RBP_val.71, -36, !mcsema_real_eip !38
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !38
  %55 = load i32, i32* %54, align 4, !mcsema_real_eip !38
  %56 = zext i32 %55 to i64, !mcsema_real_eip !38
  store i64 %56, i64* %XAX, align 8, !mcsema_real_eip !38
  %RSP_val.72 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %57 = inttoptr i64 %RSP_val.72 to i64*, !mcsema_real_eip !39
  %58 = load i64, i64* %57, align 8, !mcsema_real_eip !39
  store i64 %58, i64* %XBP, align 8, !mcsema_real_eip !39
  %59 = add i64 %RSP_val.72, 8, !mcsema_real_eip !39
  store i64 %59, i64* %XSP, align 8, !mcsema_real_eip !39
  %60 = add i64 %RSP_val.72, 16, !mcsema_real_eip !40
  %61 = inttoptr i64 %59 to i64*, !mcsema_real_eip !40
  %62 = load i64, i64* %61, align 8, !mcsema_real_eip !40
  store i64 %62, i64* %XIP, align 8, !mcsema_real_eip !40
  store i64 %60, i64* %XSP, align 8, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 64}
!3 = !{i64 65}
!4 = !{i64 68}
!5 = !{i64 69}
!6 = !{i64 117}
!7 = !{i64 124}
!8 = !{i64 127}
!9 = !{i64 131}
!10 = !{i64 133}
!11 = !{i64 135}
!12 = !{i64 138}
!13 = !{i64 141}
!14 = !{i64 144}
!15 = !{i64 151}
!16 = !{i64 159}
!17 = !{i64 162}
!18 = !{i64 166}
!19 = !{i64 171}
!20 = !{i64 175}
!21 = !{i64 176}
!22 = !{i64 177}
!23 = !{i64 0}
!24 = !{i64 1}
!25 = !{i64 4}
!26 = !{i64 7}
!27 = !{i64 11}
!28 = !{i64 14}
!29 = !{i64 17}
!30 = !{i64 20}
!31 = !{i64 23}
!32 = !{i64 27}
!33 = !{i64 31}
!34 = !{i64 35}
!35 = !{i64 38}
!36 = !{i64 41}
!37 = !{i64 44}
!38 = !{i64 47}
!39 = !{i64 50}
!40 = !{i64 51}
