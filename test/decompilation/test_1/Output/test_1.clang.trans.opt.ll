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
  %RBP_val.19 = load i64, i64* %XBP, align 8
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
  %RBP_val.37 = load i64, i64* %XBP, align 8
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
  %ECX.52 = bitcast i64* %XCX to i32*
  br label %block_0x13, !mcsema_real_eip !26

block_0x13:                                       ; preds = %block_0x50, %entry
  %.sink13 = phi i1 [ %127, %block_0x50 ], [ %29, %entry ]
  %.sink12 = phi i32 [ %115, %block_0x50 ], [ %14, %entry ]
  %XAX.sink11 = phi i64* [ %XAX, %block_0x50 ], [ %XSI, %entry ]
  %.sink9 = phi i64 [ -4, %block_0x50 ], [ -12, %entry ]
  store i1 %.sink13, i1* %CF, align 1
  %30 = zext i32 %.sink12 to i64
  store i64 %30, i64* %XAX.sink11, align 8
  %RBP_val.80 = load i64, i64* %XBP, align 8
  %31 = add i64 %RBP_val.80, %.sink9
  %32 = inttoptr i64 %31 to i32*
  store i32 %.sink12, i32* %32, align 4
  %RBP_val.44 = load i64, i64* %XBP, align 8
  %33 = add i64 %RBP_val.44, -4
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !26
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !26
  %36 = trunc i32 %35 to i8, !mcsema_real_eip !26
  %37 = tail call i8 @llvm.ctpop.i8(i8 %36), !mcsema_real_eip !26
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  store i1 %39, i1* %PF, align 1, !mcsema_real_eip !26
  %40 = icmp eq i32 %35, 0, !mcsema_real_eip !26
  store i1 %40, i1* %ZF, align 1, !mcsema_real_eip !26
  %41 = icmp slt i32 %35, 0
  store i1 %41, i1* %SF, align 1, !mcsema_real_eip !26
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !26
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !26
  br i1 %41, label %block_0x5e, label %block_0x1d, !mcsema_real_eip !27

block_0x1d:                                       ; preds = %block_0x13
  store i64 2, i64* %XAX, align 8, !mcsema_real_eip !28
  %42 = load i32, i32* %34, align 4, !mcsema_real_eip !29
  %43 = zext i32 %42 to i64, !mcsema_real_eip !29
  store i64 %43, i64* %XCX, align 8, !mcsema_real_eip !29
  %44 = add i64 %RBP_val.44, -20, !mcsema_real_eip !30
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !30
  store i32 2, i32* %45, align 4, !mcsema_real_eip !30
  %ECX_val.53 = load i32, i32* %ECX.52, align 4, !mcsema_real_eip !31
  %46 = zext i32 %ECX_val.53 to i64, !mcsema_real_eip !31
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !31
  %EAX_val.55.lobit = ashr i32 %ECX_val.53, 31
  %47 = zext i32 %EAX_val.55.lobit to i64
  store i64 %47, i64* %XDX, align 8, !mcsema_real_eip !32
  %RBP_val.56 = load i64, i64* %XBP, align 8
  %48 = add i64 %RBP_val.56, -20, !mcsema_real_eip !33
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !33
  %50 = load i32, i32* %49, align 4, !mcsema_real_eip !33
  %51 = zext i32 %50 to i64, !mcsema_real_eip !33
  store i64 %51, i64* %XCX, align 8, !mcsema_real_eip !33
  %52 = shl nuw i64 %47, 32, !mcsema_real_eip !34
  %53 = sext i32 %ECX_val.53 to i64, !mcsema_real_eip !34
  %54 = or i64 %52, %53, !mcsema_real_eip !34
  %55 = sext i32 %50 to i64, !mcsema_real_eip !34
  %56 = sdiv i64 %54, %55, !mcsema_real_eip !34
  %57 = srem i64 %54, %55, !mcsema_real_eip !34
  %58 = and i64 %57, 4294967295
  store i64 %58, i64* %XDX, align 8, !mcsema_real_eip !34
  %59 = and i64 %56, 4294967295
  store i64 %59, i64* %XAX, align 8, !mcsema_real_eip !34
  %60 = trunc i64 %57 to i32
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !35
  %61 = trunc i64 %57 to i8
  %62 = tail call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !35
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  store i1 %64, i1* %PF, align 1, !mcsema_real_eip !35
  %65 = icmp eq i32 %60, 0, !mcsema_real_eip !35
  store i1 %65, i1* %ZF, align 1, !mcsema_real_eip !35
  %66 = icmp slt i32 %60, 0
  store i1 %66, i1* %SF, align 1, !mcsema_real_eip !35
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !35
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !35
  %67 = add i64 %RBP_val.56, -12
  %68 = inttoptr i64 %67 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %XAX, align 8
  br i1 %65, label %block_0x39, label %block_0x47, !mcsema_real_eip !36

block_0x5e:                                       ; preds = %block_0x13
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !20
  %71 = add i64 %RBP_val.44, -16, !mcsema_real_eip !37
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !37
  %73 = load i32, i32* %72, align 4, !mcsema_real_eip !37
  %74 = zext i32 %73 to i64, !mcsema_real_eip !37
  store i64 %74, i64* %XAX, align 8, !mcsema_real_eip !37
  %RSP_val.46 = load i64, i64* %XSP, align 8, !mcsema_real_eip !38
  %75 = inttoptr i64 %RSP_val.46 to i64*, !mcsema_real_eip !38
  %76 = load i64, i64* %75, align 8, !mcsema_real_eip !38
  store i64 %76, i64* %XBP, align 8, !mcsema_real_eip !38
  %77 = add i64 %RSP_val.46, 8, !mcsema_real_eip !38
  store i64 %77, i64* %XSP, align 8, !mcsema_real_eip !38
  %78 = add i64 %RSP_val.46, 16, !mcsema_real_eip !39
  %79 = inttoptr i64 %77 to i64*, !mcsema_real_eip !39
  %80 = load i64, i64* %79, align 8, !mcsema_real_eip !39
  store i64 %80, i64* %XIP, align 8, !mcsema_real_eip !39
  store i64 %78, i64* %XSP, align 8, !mcsema_real_eip !39
  ret void, !mcsema_real_eip !39

block_0x39:                                       ; preds = %block_0x1d
  %81 = add i32 %69, 10, !mcsema_real_eip !40
  %82 = xor i32 %81, %69, !mcsema_real_eip !40
  %83 = and i32 %82, 16, !mcsema_real_eip !40
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !40
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !40
  %85 = icmp slt i32 %81, 0
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !40
  %86 = icmp eq i32 %81, 0, !mcsema_real_eip !40
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !40
  %87 = xor i32 %69, -2147483648, !mcsema_real_eip !40
  %88 = and i32 %82, %87, !mcsema_real_eip !40
  %89 = icmp slt i32 %88, 0
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !40
  %90 = trunc i32 %81 to i8, !mcsema_real_eip !40
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !40
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !40
  %94 = icmp ugt i32 %69, -11
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !40
  br label %block_0x50, !mcsema_real_eip !41

block_0x47:                                       ; preds = %block_0x1d
  %95 = add i32 %69, -10
  %96 = xor i32 %95, %69, !mcsema_real_eip !42
  %97 = and i32 %96, 16, !mcsema_real_eip !42
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !42
  store i1 %98, i1* %AF, align 1, !mcsema_real_eip !42
  %99 = trunc i32 %95 to i8, !mcsema_real_eip !42
  %100 = tail call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !42
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  store i1 %102, i1* %PF, align 1, !mcsema_real_eip !42
  %103 = icmp eq i32 %95, 0, !mcsema_real_eip !42
  store i1 %103, i1* %ZF, align 1, !mcsema_real_eip !42
  %104 = icmp slt i32 %95, 0
  store i1 %104, i1* %SF, align 1, !mcsema_real_eip !42
  %105 = icmp ult i32 %69, 10, !mcsema_real_eip !42
  store i1 %105, i1* %CF, align 1, !mcsema_real_eip !42
  %106 = and i32 %96, %69, !mcsema_real_eip !42
  %107 = icmp slt i32 %106, 0
  store i1 %107, i1* %OF, align 1, !mcsema_real_eip !42
  br label %block_0x50, !mcsema_real_eip !43

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %.sink4 = phi i32 [ %95, %block_0x47 ], [ %81, %block_0x39 ]
  %.sink = phi i64 [ -12, %block_0x47 ], [ -16, %block_0x39 ]
  %108 = zext i32 %.sink4 to i64
  store i64 %108, i64* %XAX, align 8
  %109 = add i64 %.sink, %RBP_val.56
  %110 = inttoptr i64 %109 to i32*
  store i32 %.sink4, i32* %110, align 4
  %RBP_val.77 = load i64, i64* %XBP, align 8, !mcsema_real_eip !44
  %111 = add i64 %RBP_val.77, -4, !mcsema_real_eip !44
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !44
  %113 = load i32, i32* %112, align 4, !mcsema_real_eip !44
  %114 = zext i32 %113 to i64, !mcsema_real_eip !44
  store i64 %114, i64* %XAX, align 8, !mcsema_real_eip !44
  %115 = add i32 %113, -1, !mcsema_real_eip !45
  %116 = xor i32 %115, %113, !mcsema_real_eip !45
  %117 = and i32 %116, 16
  %118 = icmp eq i32 %117, 0
  store i1 %118, i1* %AF, align 1, !mcsema_real_eip !45
  %119 = icmp slt i32 %115, 0
  store i1 %119, i1* %SF, align 1, !mcsema_real_eip !45
  %120 = icmp eq i32 %115, 0, !mcsema_real_eip !45
  store i1 %120, i1* %ZF, align 1, !mcsema_real_eip !45
  %121 = and i32 %116, %113, !mcsema_real_eip !45
  %122 = icmp slt i32 %121, 0
  store i1 %122, i1* %OF, align 1, !mcsema_real_eip !45
  %123 = trunc i32 %115 to i8, !mcsema_real_eip !45
  %124 = tail call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !45
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  store i1 %126, i1* %PF, align 1, !mcsema_real_eip !45
  %127 = icmp ne i32 %113, 0
  br label %block_0x13, !mcsema_real_eip !46
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
!26 = !{i64 19}
!27 = !{i64 23}
!28 = !{i64 29}
!29 = !{i64 34}
!30 = !{i64 37}
!31 = !{i64 40}
!32 = !{i64 42}
!33 = !{i64 43}
!34 = !{i64 46}
!35 = !{i64 48}
!36 = !{i64 51}
!37 = !{i64 94}
!38 = !{i64 97}
!39 = !{i64 98}
!40 = !{i64 60}
!41 = !{i64 66}
!42 = !{i64 74}
!43 = !{i64 57}
!44 = !{i64 80}
!45 = !{i64 83}
!46 = !{i64 89}
