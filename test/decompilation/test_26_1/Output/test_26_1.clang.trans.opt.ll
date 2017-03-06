; ModuleID = 'Output/test_26_1.clang.trans.opt.bc'
source_filename = "Output/test_26_1.clang.bc"
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
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
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

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x176 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

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
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, 16, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %5 = load i64, i64* %4, align 8, !mcsema_real_eip !4
  store i64 %5, i64* %XAX, align 8, !mcsema_real_eip !4
  %6 = add i64 %RSP_val.1, 8, !mcsema_real_eip !5
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !5
  %8 = load i64, i64* %7, align 8, !mcsema_real_eip !5
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !5
  %9 = add i64 %RSP_val.1, -28, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, align 4, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %10, align 4, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %11 = add i64 %RBP_val.8, -24, !mcsema_real_eip !7
  %ESI.9 = bitcast i64* %XSI to i32*, !mcsema_real_eip !7
  %ESI_val.10 = load i32, i32* %ESI.9, align 4, !mcsema_real_eip !7
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !7
  store i32 %ESI_val.10, i32* %12, align 4, !mcsema_real_eip !7
  %RBP_val.11 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %13 = add i64 %RBP_val.11, -28, !mcsema_real_eip !8
  %EDX.12 = bitcast i64* %XDX to i32*, !mcsema_real_eip !8
  %EDX_val.13 = load i32, i32* %EDX.12, align 4, !mcsema_real_eip !8
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !8
  store i32 %EDX_val.13, i32* %14, align 4, !mcsema_real_eip !8
  %RBP_val.14 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %15 = add i64 %RBP_val.14, -32, !mcsema_real_eip !9
  %ECX.15 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.16 = load i32, i32* %ECX.15, align 4, !mcsema_real_eip !9
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.16, i32* %16, align 4, !mcsema_real_eip !9
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %17 = add i64 %RBP_val.17, -36, !mcsema_real_eip !10
  %R8D.18 = bitcast i64* %R8 to i32*, !mcsema_real_eip !10
  %R8D_val.19 = load i32, i32* %R8D.18, align 4, !mcsema_real_eip !10
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !10
  store i32 %R8D_val.19, i32* %18, align 4, !mcsema_real_eip !10
  %RBP_val.20 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %19 = add i64 %RBP_val.20, -40, !mcsema_real_eip !11
  %R9D.21 = bitcast i64* %R9 to i32*, !mcsema_real_eip !11
  %R9D_val.22 = load i32, i32* %R9D.21, align 4, !mcsema_real_eip !11
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !11
  store i32 %R9D_val.22, i32* %20, align 4, !mcsema_real_eip !11
  %RBP_val.23 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %21 = add i64 %RBP_val.23, -48, !mcsema_real_eip !12
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !12
  %R10_val.24 = load i64, i64* %R10, align 8, !mcsema_real_eip !12
  store i64 %R10_val.24, i64* %22, align 8, !mcsema_real_eip !12
  %RBP_val.25 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %23 = add i64 %RBP_val.25, -56, !mcsema_real_eip !13
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !13
  %RAX_val.26 = load i64, i64* %XAX, align 8, !mcsema_real_eip !13
  store i64 %RAX_val.26, i64* %24, align 8, !mcsema_real_eip !13
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %25 = add i64 %RBP_val.27, -48, !mcsema_real_eip !14
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !14
  %27 = load i64, i64* %26, align 8, !mcsema_real_eip !14
  store i64 %27, i64* %XAX, align 8, !mcsema_real_eip !14
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !15
  %29 = load i32, i32* %28, align 4, !mcsema_real_eip !15
  %30 = zext i32 %29 to i64, !mcsema_real_eip !15
  store i64 %30, i64* %XCX, align 8, !mcsema_real_eip !15
  %31 = add i64 %RBP_val.27, -56, !mcsema_real_eip !16
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !16
  %33 = load i64, i64* %32, align 8, !mcsema_real_eip !16
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !16
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !17
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !17
  %36 = zext i32 %35 to i64, !mcsema_real_eip !17
  store i64 %36, i64* %XDX, align 8, !mcsema_real_eip !17
  %37 = add i32 %35, %29, !mcsema_real_eip !18
  %38 = xor i32 %37, %29, !mcsema_real_eip !18
  %39 = xor i32 %38, %35, !mcsema_real_eip !18
  %40 = and i32 %39, 16, !mcsema_real_eip !18
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !18
  store i1 %41, i1* %AF, align 1, !mcsema_real_eip !18
  %42 = icmp slt i32 %37, 0
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !18
  %43 = icmp eq i32 %37, 0, !mcsema_real_eip !18
  store i1 %43, i1* %ZF, align 1, !mcsema_real_eip !18
  %44 = xor i32 %29, -2147483648, !mcsema_real_eip !18
  %45 = xor i32 %44, %35, !mcsema_real_eip !18
  %46 = and i32 %38, %45, !mcsema_real_eip !18
  %47 = icmp slt i32 %46, 0
  store i1 %47, i1* %OF, align 1, !mcsema_real_eip !18
  %48 = trunc i32 %37 to i8, !mcsema_real_eip !18
  %49 = tail call i8 @llvm.ctpop.i8(i8 %48), !mcsema_real_eip !18
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  store i1 %51, i1* %PF, align 1, !mcsema_real_eip !18
  %52 = icmp ult i32 %37, %29, !mcsema_real_eip !18
  store i1 %52, i1* %CF, align 1, !mcsema_real_eip !18
  %53 = zext i32 %37 to i64, !mcsema_real_eip !18
  store i64 %53, i64* %XCX, align 8, !mcsema_real_eip !18
  %54 = add i64 %RBP_val.27, -72, !mcsema_real_eip !19
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !19
  store i32 %37, i32* %55, align 4, !mcsema_real_eip !19
  %RBP_val.38 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %56 = add i64 %RBP_val.38, -48, !mcsema_real_eip !20
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !20
  %58 = load i64, i64* %57, align 8, !mcsema_real_eip !20
  store i64 %58, i64* %XAX, align 8, !mcsema_real_eip !20
  %59 = add i64 %58, 4, !mcsema_real_eip !21
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !21
  %61 = load i32, i32* %60, align 4, !mcsema_real_eip !21
  %62 = zext i32 %61 to i64, !mcsema_real_eip !21
  store i64 %62, i64* %XCX, align 8, !mcsema_real_eip !21
  %63 = add i64 %RBP_val.38, -56, !mcsema_real_eip !22
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !22
  %65 = load i64, i64* %64, align 8, !mcsema_real_eip !22
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !22
  %66 = add i64 %65, 4, !mcsema_real_eip !23
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !23
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !23
  %69 = zext i32 %68 to i64, !mcsema_real_eip !23
  store i64 %69, i64* %XDX, align 8, !mcsema_real_eip !23
  %70 = add i32 %68, %61, !mcsema_real_eip !24
  %71 = xor i32 %70, %61, !mcsema_real_eip !24
  %72 = xor i32 %71, %68, !mcsema_real_eip !24
  %73 = and i32 %72, 16, !mcsema_real_eip !24
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !24
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !24
  %75 = icmp slt i32 %70, 0
  store i1 %75, i1* %SF, align 1, !mcsema_real_eip !24
  %76 = icmp eq i32 %70, 0, !mcsema_real_eip !24
  store i1 %76, i1* %ZF, align 1, !mcsema_real_eip !24
  %77 = xor i32 %61, -2147483648, !mcsema_real_eip !24
  %78 = xor i32 %77, %68, !mcsema_real_eip !24
  %79 = and i32 %71, %78, !mcsema_real_eip !24
  %80 = icmp slt i32 %79, 0
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !24
  %81 = trunc i32 %70 to i8, !mcsema_real_eip !24
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !24
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !24
  %85 = icmp ult i32 %70, %61, !mcsema_real_eip !24
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !24
  %86 = zext i32 %70 to i64, !mcsema_real_eip !24
  store i64 %86, i64* %XCX, align 8, !mcsema_real_eip !24
  %87 = add i64 %RBP_val.38, -68, !mcsema_real_eip !25
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !25
  store i32 %70, i32* %88, align 4, !mcsema_real_eip !25
  %RBP_val.49 = load i64, i64* %XBP, align 8, !mcsema_real_eip !26
  %89 = add i64 %RBP_val.49, -48, !mcsema_real_eip !26
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !26
  %91 = load i64, i64* %90, align 8, !mcsema_real_eip !26
  store i64 %91, i64* %XAX, align 8, !mcsema_real_eip !26
  %92 = add i64 %91, 8, !mcsema_real_eip !27
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !27
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !27
  %95 = zext i32 %94 to i64, !mcsema_real_eip !27
  store i64 %95, i64* %XCX, align 8, !mcsema_real_eip !27
  %96 = add i64 %RBP_val.49, -56, !mcsema_real_eip !28
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !28
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !28
  store i64 %98, i64* %XAX, align 8, !mcsema_real_eip !28
  %99 = add i64 %98, 8, !mcsema_real_eip !29
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !29
  %101 = load i32, i32* %100, align 4, !mcsema_real_eip !29
  %102 = zext i32 %101 to i64, !mcsema_real_eip !29
  store i64 %102, i64* %XDX, align 8, !mcsema_real_eip !29
  %103 = add i32 %101, %94, !mcsema_real_eip !30
  %104 = xor i32 %103, %94, !mcsema_real_eip !30
  %105 = xor i32 %104, %101, !mcsema_real_eip !30
  %106 = and i32 %105, 16, !mcsema_real_eip !30
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !30
  store i1 %107, i1* %AF, align 1, !mcsema_real_eip !30
  %108 = icmp slt i32 %103, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !30
  %109 = icmp eq i32 %103, 0, !mcsema_real_eip !30
  store i1 %109, i1* %ZF, align 1, !mcsema_real_eip !30
  %110 = xor i32 %94, -2147483648, !mcsema_real_eip !30
  %111 = xor i32 %110, %101, !mcsema_real_eip !30
  %112 = and i32 %104, %111, !mcsema_real_eip !30
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF, align 1, !mcsema_real_eip !30
  %114 = trunc i32 %103 to i8, !mcsema_real_eip !30
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !30
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !30
  %118 = icmp ult i32 %103, %94, !mcsema_real_eip !30
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !30
  %119 = zext i32 %103 to i64, !mcsema_real_eip !30
  store i64 %119, i64* %XCX, align 8, !mcsema_real_eip !30
  %120 = add i64 %RBP_val.49, -64, !mcsema_real_eip !31
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !31
  store i32 %103, i32* %121, align 4, !mcsema_real_eip !31
  %RBP_val.60 = load i64, i64* %XBP, align 8, !mcsema_real_eip !32
  %122 = add i64 %RBP_val.60, -64, !mcsema_real_eip !32
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !32
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !32
  %125 = zext i32 %124 to i64, !mcsema_real_eip !32
  store i64 %125, i64* %XCX, align 8, !mcsema_real_eip !32
  %126 = add i64 %RBP_val.60, -8, !mcsema_real_eip !33
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !33
  store i32 %124, i32* %127, align 4, !mcsema_real_eip !33
  %RBP_val.64 = load i64, i64* %XBP, align 8, !mcsema_real_eip !34
  %128 = add i64 %RBP_val.64, -72, !mcsema_real_eip !34
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !34
  %130 = load i64, i64* %129, align 8, !mcsema_real_eip !34
  store i64 %130, i64* %XAX, align 8, !mcsema_real_eip !34
  %131 = add i64 %RBP_val.64, -16, !mcsema_real_eip !35
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !35
  store i64 %130, i64* %132, align 8, !mcsema_real_eip !35
  %RBP_val.67 = load i64, i64* %XBP, align 8, !mcsema_real_eip !36
  %133 = add i64 %RBP_val.67, -8, !mcsema_real_eip !36
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !36
  %135 = load i32, i32* %134, align 4, !mcsema_real_eip !36
  %136 = zext i32 %135 to i64, !mcsema_real_eip !36
  store i64 %136, i64* %XCX, align 8, !mcsema_real_eip !36
  %137 = add i64 %RBP_val.67, -80, !mcsema_real_eip !37
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !37
  store i32 %135, i32* %138, align 4, !mcsema_real_eip !37
  %RBP_val.71 = load i64, i64* %XBP, align 8, !mcsema_real_eip !38
  %139 = add i64 %RBP_val.71, -16, !mcsema_real_eip !38
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !38
  %141 = load i64, i64* %140, align 8, !mcsema_real_eip !38
  store i64 %141, i64* %XAX, align 8, !mcsema_real_eip !38
  %142 = add i64 %RBP_val.71, -88, !mcsema_real_eip !39
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !39
  store i64 %141, i64* %143, align 8, !mcsema_real_eip !39
  %RBP_val.74 = load i64, i64* %XBP, align 8, !mcsema_real_eip !40
  %144 = add i64 %RBP_val.74, -88, !mcsema_real_eip !40
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !40
  %146 = load i64, i64* %145, align 8, !mcsema_real_eip !40
  store i64 %146, i64* %XAX, align 8, !mcsema_real_eip !40
  %147 = add i64 %RBP_val.74, -80, !mcsema_real_eip !41
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !41
  %149 = load i32, i32* %148, align 4, !mcsema_real_eip !41
  %150 = zext i32 %149 to i64, !mcsema_real_eip !41
  store i64 %150, i64* %XDX, align 8, !mcsema_real_eip !41
  %RSP_val.76 = load i64, i64* %XSP, align 8, !mcsema_real_eip !42
  %151 = inttoptr i64 %RSP_val.76 to i64*, !mcsema_real_eip !42
  %152 = load i64, i64* %151, align 8, !mcsema_real_eip !42
  store i64 %152, i64* %XBP, align 8, !mcsema_real_eip !42
  %153 = add i64 %RSP_val.76, 8, !mcsema_real_eip !42
  store i64 %153, i64* %XSP, align 8, !mcsema_real_eip !42
  %154 = add i64 %RSP_val.76, 16, !mcsema_real_eip !43
  %155 = inttoptr i64 %153 to i64*, !mcsema_real_eip !43
  %156 = load i64, i64* %155, align 8, !mcsema_real_eip !43
  store i64 %156, i64* %XIP, align 8, !mcsema_real_eip !43
  store i64 %154, i64* %XSP, align 8, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90(%RegState*) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [128 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 128
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !44
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !44
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !44
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !44
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !44
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !44
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !44
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !44
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !44
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !44
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !44
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !44
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !44
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !44
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !44
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !44
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !44
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !44
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !44
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !44
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !44
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !44
  %RSP_val.79 = load i64, i64* %XSP, align 8, !mcsema_real_eip !44
  %_new_gep_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %2 = add i64 %RSP_val.79, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  %3 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %3, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %3, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %2, i64* %XBP, align 8, !mcsema_real_eip !45
  %_new_gep_3 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %4 = add i64 %RSP_val.79, -120
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %3
  %5 = and i64 %_trans_xor_, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !46
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %7 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !46
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  store i1 %9, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !46
  %10 = icmp slt i64 %4, 0
  store i1 %10, i1* %SF, align 1, !mcsema_real_eip !46
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 112 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !46
  %11 = and i64 %_trans_xor_, %3, !mcsema_real_eip !46
  %12 = icmp slt i64 %11, 0
  store i1 %12, i1* %OF, align 1, !mcsema_real_eip !46
  store volatile i64 %_trans_p2i_, i64* %_RSP_ptr_.sroa.0, align 8
  %13 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_17 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %14 = bitcast i8* %_new_gep_17 to <4 x i32>*
  store <4 x i32> <i32 10, i32 10, i32 10, i32 0>, <4 x i32>* %14, align 8
  store i64 24, i64* %XAX, align 8, !mcsema_real_eip !47
  store i64 24, i64* %XCX, align 8, !mcsema_real_eip !48
  %_new_gep_26 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 ptrtoint (%0* @data_0x176 to i64), i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !49
  store i64 24, i64* %XDI, align 8, !mcsema_real_eip !50
  %15 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %16 = add i64 %RSP_val.79, -128
  %_allin_new_bt_30 = bitcast [128 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !51
  %17 = ptrtoint [128 x i8]* %_local_stack_start_ptr_1 to i64
  store volatile i64 %17, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %16, i64* %XSP, align 8, !mcsema_real_eip !51
  %18 = call x86_64_sysvcc i64 @_malloc(i64 24)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_11 = load i8*, i8** %15, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_11, i64 8
  %19 = ptrtoint i8* %_gep_fix_ to i64
  store i64 %19, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !51
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3112 = load i8*, i8** %13, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3112, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %18, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !52
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3413 = load i8*, i8** %13, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3413, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %20 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !53
  store i64 %20, i64* %XAX, align 8, !mcsema_real_eip !53
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !54
  store i32 5, i32* %21, align 4, !mcsema_real_eip !54
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3714 = load i8*, i8** %13, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3714, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %22 = load i64, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !55
  store i64 %22, i64* %XAX, align 8, !mcsema_real_eip !55
  %23 = add i64 %22, 4, !mcsema_real_eip !56
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !56
  store i32 5, i32* %24, align 4, !mcsema_real_eip !56
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4015 = load i8*, i8** %13, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4015, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %25 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !57
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !57
  %26 = add i64 %25, 8, !mcsema_real_eip !58
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !58
  store i32 5, i32* %27, align 4, !mcsema_real_eip !58
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4316 = load i8*, i8** %13, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4316, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %28 = load i64, i64* %_allin_new_bt_45, align 8
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !59
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463, i64* %XCX, align 8
  %29 = add i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463, 8, !mcsema_real_eip !60
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !60
  store i64 %28, i64* %30, align 8, !mcsema_real_eip !60
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4817 = load i8*, i8** %13, align 8
  %_new_gep_49 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4817, i64 -16
  %31 = ptrtoint i8* %_new_gep_49 to i64
  store i64 %31, i64* %XAX, align 8, !mcsema_real_eip !61
  %32 = bitcast i64* %XCX to i64**
  %RCX_val.1064 = load i64*, i64** %32, align 8
  store i64 %31, i64* %RCX_val.1064, align 8, !mcsema_real_eip !62
  %33 = bitcast i64* %XDX to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %33, align 8
  store i64 3, i64* %R8, align 8, !mcsema_real_eip !63
  %EDX.108 = bitcast i64* %XDX to i32*, !mcsema_real_eip !64
  store i64 1, i64* %XDI, align 8, !mcsema_real_eip !64
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5118 = load i8*, i8** %13, align 8
  %_new_gep_52 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5118, i64 -76
  %34 = bitcast i8* %_new_gep_52 to i32*
  store i32 2, i32* %34, align 4, !mcsema_real_eip !65
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5419 = load i8*, i8** %13, align 8
  %_new_gep_55 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5419, i64 -80
  %EDX_val.115 = load i32, i32* %EDX.108, align 4, !mcsema_real_eip !66
  %35 = bitcast i8* %_new_gep_55 to i32*
  store i32 %EDX_val.115, i32* %35, align 4, !mcsema_real_eip !66
  %R8D.116 = bitcast i64* %R8 to i32*, !mcsema_real_eip !67
  %R8D_val.117 = load i32, i32* %R8D.116, align 4, !mcsema_real_eip !67
  %36 = zext i32 %R8D_val.117 to i64, !mcsema_real_eip !67
  store i64 %36, i64* %XDX, align 8, !mcsema_real_eip !67
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5720 = load i8*, i8** %13, align 8
  %_new_gep_58 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5720, i64 -80
  %37 = bitcast i8* %_new_gep_58 to i32*
  %38 = load i32, i32* %37, align 4, !mcsema_real_eip !68
  %39 = zext i32 %38 to i64, !mcsema_real_eip !68
  store i64 %39, i64* %XCX, align 8, !mcsema_real_eip !68
  %_new_gep_61 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5720, i64 -76
  %40 = bitcast i8* %_new_gep_61 to i32*
  %41 = load i32, i32* %40, align 4, !mcsema_real_eip !69
  %42 = zext i32 %41 to i64, !mcsema_real_eip !69
  store i64 %42, i64* %R9, align 8, !mcsema_real_eip !69
  %_new_gep_64 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5720, i64 -84
  %43 = bitcast i8* %_new_gep_64 to i32*
  store i32 %R8D_val.117, i32* %43, align 4, !mcsema_real_eip !70
  %R9D.123 = bitcast i64* %R9 to i32*, !mcsema_real_eip !71
  %R9D_val.124 = load i32, i32* %R9D.123, align 4, !mcsema_real_eip !71
  %44 = zext i32 %R9D_val.124 to i64, !mcsema_real_eip !71
  store i64 %44, i64* %R8, align 8, !mcsema_real_eip !71
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6621 = load i8*, i8** %13, align 8
  %_new_gep_67 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6621, i64 -84
  %45 = bitcast i8* %_new_gep_67 to i32*
  %46 = load i32, i32* %45, align 4, !mcsema_real_eip !72
  %47 = zext i32 %46 to i64, !mcsema_real_eip !72
  store i64 %47, i64* %R9, align 8, !mcsema_real_eip !72
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6922 = load i8*, i8** %15, align 8
  %RSP_val.126 = load i64, i64* %XSP, align 8, !mcsema_real_eip !73
  %_new_gep_70 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6922, i64 -8
  %48 = add i64 %RSP_val.126, -8
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_71, align 8, !mcsema_real_eip !73
  %49 = ptrtoint i8* %_new_gep_70 to i64
  store volatile i64 %49, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %48, i64* %XSP, align 8, !mcsema_real_eip !73
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15923 = load i8*, i8** %13, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_70, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15923)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_16124 = load i8*, i8** %15, align 8
  %_gep_fix_162 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_16124, i64 8
  %50 = ptrtoint i8* %_gep_fix_162 to i64
  store i64 %50, i64* %_RSP_ptr_.sroa.0, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7225 = load i8*, i8** %13, align 8
  %_new_gep_73 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7225, i64 -48
  %EDX_val.129 = load i32, i32* %EDX.108, align 4, !mcsema_real_eip !74
  %51 = bitcast i8* %_new_gep_73 to i32*
  store i32 %EDX_val.129, i32* %51, align 4, !mcsema_real_eip !74
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7526 = load i8*, i8** %13, align 8
  %_new_gep_76 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7526, i64 -56
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %RAX_val.131 = load i64, i64* %XAX, align 8, !mcsema_real_eip !75
  store i64 %RAX_val.131, i64* %_allin_new_bt_77, align 8, !mcsema_real_eip !75
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7827 = load i8*, i8** %13, align 8
  %_new_gep_79 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7827, i64 -56
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %52 = load i64, i64* %_allin_new_bt_80, align 8, !mcsema_real_eip !76
  store i64 %52, i64* %XAX, align 8, !mcsema_real_eip !76
  %_new_gep_82 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7827, i64 -40
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 %52, i64* %_allin_new_bt_83, align 8, !mcsema_real_eip !77
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8428 = load i8*, i8** %13, align 8
  %_new_gep_85 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8428, i64 -48
  %53 = bitcast i8* %_new_gep_85 to i32*
  %54 = load i32, i32* %53, align 4, !mcsema_real_eip !78
  %55 = zext i32 %54 to i64, !mcsema_real_eip !78
  store i64 %55, i64* %XCX, align 8, !mcsema_real_eip !78
  %_new_gep_88 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8428, i64 -32
  %ECX.137 = bitcast i64* %XCX to i32*, !mcsema_real_eip !79
  %56 = bitcast i8* %_new_gep_88 to i32*
  store i32 %54, i32* %56, align 4, !mcsema_real_eip !79
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9029 = load i8*, i8** %13, align 8
  %_new_gep_91 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9029, i64 -40
  %57 = bitcast i8* %_new_gep_91 to i32*
  %58 = load i32, i32* %57, align 4, !mcsema_real_eip !80
  %59 = zext i32 %58 to i64, !mcsema_real_eip !80
  store i64 %59, i64* %XCX, align 8, !mcsema_real_eip !80
  %_new_gep_94 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9029, i64 -36
  %60 = bitcast i8* %_new_gep_94 to i32*
  %61 = load i32, i32* %60, align 4, !mcsema_real_eip !81
  %62 = add i32 %58, %61, !mcsema_real_eip !81
  %63 = xor i32 %62, %61, !mcsema_real_eip !81
  %64 = xor i32 %63, %58, !mcsema_real_eip !81
  %65 = and i32 %64, 16, !mcsema_real_eip !81
  %66 = icmp ne i32 %65, 0, !mcsema_real_eip !81
  store i1 %66, i1* %AF, align 1, !mcsema_real_eip !81
  %67 = icmp slt i32 %62, 0
  store i1 %67, i1* %SF, align 1, !mcsema_real_eip !81
  %68 = icmp eq i32 %62, 0, !mcsema_real_eip !81
  store i1 %68, i1* %ZF, align 1, !mcsema_real_eip !81
  %69 = xor i32 %61, -2147483648, !mcsema_real_eip !81
  %70 = xor i32 %69, %58, !mcsema_real_eip !81
  %71 = and i32 %63, %70, !mcsema_real_eip !81
  %72 = icmp slt i32 %71, 0
  store i1 %72, i1* %OF, align 1, !mcsema_real_eip !81
  %73 = trunc i32 %62 to i8, !mcsema_real_eip !81
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !81
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  store i1 %76, i1* %PF, align 1, !mcsema_real_eip !81
  %77 = icmp ult i32 %62, %61, !mcsema_real_eip !81
  store i1 %77, i1* %CF, align 1, !mcsema_real_eip !81
  %78 = zext i32 %62 to i64, !mcsema_real_eip !81
  store i64 %78, i64* %XCX, align 8, !mcsema_real_eip !81
  %_new_gep_97 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9029, i64 -32
  %79 = bitcast i8* %_new_gep_97 to i32*
  %80 = load i32, i32* %79, align 4, !mcsema_real_eip !82
  %81 = add i32 %62, %80, !mcsema_real_eip !82
  %82 = xor i32 %81, %80, !mcsema_real_eip !82
  %83 = xor i32 %82, %62, !mcsema_real_eip !82
  %84 = and i32 %83, 16, !mcsema_real_eip !82
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !82
  store i1 %85, i1* %AF, align 1, !mcsema_real_eip !82
  %86 = icmp slt i32 %81, 0
  store i1 %86, i1* %SF, align 1, !mcsema_real_eip !82
  %87 = icmp eq i32 %81, 0, !mcsema_real_eip !82
  store i1 %87, i1* %ZF, align 1, !mcsema_real_eip !82
  %88 = xor i32 %80, -2147483648, !mcsema_real_eip !82
  %89 = xor i32 %88, %62, !mcsema_real_eip !82
  %90 = and i32 %82, %89, !mcsema_real_eip !82
  %91 = icmp slt i32 %90, 0
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !82
  %92 = trunc i32 %81 to i8, !mcsema_real_eip !82
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !82
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !82
  %96 = icmp ult i32 %81, %80, !mcsema_real_eip !82
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !82
  %97 = zext i32 %81 to i64, !mcsema_real_eip !82
  store i64 %97, i64* %XCX, align 8, !mcsema_real_eip !82
  %_new_gep_100 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9029, i64 -60
  %98 = bitcast i8* %_new_gep_100 to i32*
  store i32 %81, i32* %98, align 4, !mcsema_real_eip !83
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10230 = load i8*, i8** %13, align 8
  %_new_gep_103 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10230, i64 -60
  %99 = bitcast i8* %_new_gep_103 to i32*
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !84
  %101 = zext i32 %100 to i64, !mcsema_real_eip !84
  store i64 %101, i64* %XSI, align 8, !mcsema_real_eip !84
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10230, i64 -72
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %102 = load i64, i64* %_allin_new_bt_107, align 8, !mcsema_real_eip !85
  store i64 %102, i64* %XDI, align 8, !mcsema_real_eip !85
  %AL.151 = bitcast i64* %XAX to i8*, !mcsema_real_eip !86
  store i8 0, i8* %AL.151, align 1, !mcsema_real_eip !86
  %RDX_val.154 = load i64, i64* %XDX, align 8, !mcsema_real_eip !87
  %RCX_val.155 = load i64, i64* %XCX, align 8, !mcsema_real_eip !87
  %R8_val.156 = load i64, i64* %R8, align 8, !mcsema_real_eip !87
  %R9_val.157 = load i64, i64* %R9, align 8, !mcsema_real_eip !87
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831 = load i8*, i8** %15, align 8
  %_allin_new_bt_109 = bitcast i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831 to i64*
  %103 = load i64, i64* %_allin_new_bt_109, align 8, !mcsema_real_eip !87
  %_new_gep_110 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 8
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %104 = load i64, i64* %_allin_new_bt_111, align 8, !mcsema_real_eip !87
  %_new_gep_112 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 16
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %105 = load i64, i64* %_allin_new_bt_113, align 8, !mcsema_real_eip !87
  %_new_gep_114 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 24
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %106 = load i64, i64* %_allin_new_bt_115, align 8, !mcsema_real_eip !87
  %_new_gep_116 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 32
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %107 = load i64, i64* %_allin_new_bt_117, align 8, !mcsema_real_eip !87
  %_new_gep_118 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 40
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %108 = load i64, i64* %_allin_new_bt_119, align 8, !mcsema_real_eip !87
  %_new_gep_120 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 48
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %109 = load i64, i64* %_allin_new_bt_121, align 8, !mcsema_real_eip !87
  %_new_gep_122 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 56
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %110 = load i64, i64* %_allin_new_bt_123, align 8, !mcsema_real_eip !87
  %_new_gep_124 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 64
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %111 = load i64, i64* %_allin_new_bt_125, align 8, !mcsema_real_eip !87
  %_new_gep_126 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 72
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %112 = load i64, i64* %_allin_new_bt_127, align 8, !mcsema_real_eip !87
  %RSP_val.159 = load i64, i64* %XSP, align 8, !mcsema_real_eip !87
  %_new_gep_129 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 -8
  %113 = add i64 %RSP_val.159, -8
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_130, align 8, !mcsema_real_eip !87
  %114 = ptrtoint i8* %_new_gep_129 to i64
  store volatile i64 %114, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %113, i64* %XSP, align 8, !mcsema_real_eip !87
  %115 = call x86_64_sysvcc i64 @_printf(i64 %102, i64 %101, i64 %RDX_val.154, i64 %RCX_val.155, i64 %R8_val.156, i64 %R9_val.157, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_16332 = load i8*, i8** %15, align 8
  %_gep_fix_164 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_16332, i64 8
  %116 = ptrtoint i8* %_gep_fix_164 to i64
  store i64 %116, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %115, i64* %XAX, align 8, !mcsema_real_eip !87
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13133 = load i8*, i8** %13, align 8
  %_new_gep_132 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13133, i64 -60
  %117 = bitcast i8* %_new_gep_132 to i32*
  %118 = load i32, i32* %117, align 4, !mcsema_real_eip !88
  %119 = zext i32 %118 to i64, !mcsema_real_eip !88
  store i64 %119, i64* %XCX, align 8, !mcsema_real_eip !88
  %_new_gep_135 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13133, i64 -88
  %120 = trunc i64 %115 to i32
  %121 = bitcast i8* %_new_gep_135 to i32*
  store i32 %120, i32* %121, align 4, !mcsema_real_eip !89
  %ECX_val.165 = load i32, i32* %ECX.137, align 4, !mcsema_real_eip !90
  %122 = zext i32 %ECX_val.165 to i64, !mcsema_real_eip !90
  store i64 %122, i64* %XAX, align 8, !mcsema_real_eip !90
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_137 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %123 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_137 to i8*
  %RSP_val.166 = load i64, i64* %XSP, align 8, !mcsema_real_eip !91
  %_new_gep_138 = getelementptr i8, i8* %123, i64 112
  %124 = add i64 %RSP_val.166, 112, !mcsema_real_eip !91
  %_trans_p2i_139 = ptrtoint i8* %_new_gep_138 to i64
  %_trans_xor_141 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_137, %_trans_p2i_139
  %125 = and i64 %_trans_xor_141, 16
  %126 = icmp eq i64 %125, 0
  store i1 %126, i1* %AF, align 1, !mcsema_real_eip !91
  %127 = icmp slt i64 %124, 0
  store i1 %127, i1* %SF, align 1, !mcsema_real_eip !91
  %_trans_icmp_eq_143 = icmp eq i8* %_new_gep_138, null
  store i1 %_trans_icmp_eq_143, i1* %ZF, align 1, !mcsema_real_eip !91
  %128 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_137, -9223372036854775808, !mcsema_real_eip !91
  %129 = and i64 %_trans_xor_141, %128, !mcsema_real_eip !91
  %130 = icmp slt i64 %129, 0
  store i1 %130, i1* %OF, align 1, !mcsema_real_eip !91
  %_trans_trunc_150 = trunc i64 %_trans_p2i_139 to i8
  %131 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_150), !mcsema_real_eip !91
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  store i1 %133, i1* %PF, align 1, !mcsema_real_eip !91
  %_trans_icmp_ne_152 = icmp ne i64 %RSP_val.166, %_trans_p2i_139
  store i1 %_trans_icmp_ne_152, i1* %CF, align 1, !mcsema_real_eip !91
  store volatile i64 %_trans_p2i_139, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %124, i64* %XSP, align 8, !mcsema_real_eip !91
  %_allin_new_bt_154 = bitcast i8* %_new_gep_138 to i64*
  %134 = load i64, i64* %_allin_new_bt_154, align 8, !mcsema_real_eip !92
  store volatile i64 %134, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %134, i64* %XBP, align 8, !mcsema_real_eip !92
  %_new_gep_155 = getelementptr i8, i8* %123, i64 120
  %135 = add i64 %RSP_val.166, 120, !mcsema_real_eip !92
  %136 = ptrtoint i8* %_new_gep_155 to i64
  store volatile i64 %136, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %135, i64* %XSP, align 8, !mcsema_real_eip !92
  %_new_gep_157 = getelementptr i8, i8* %123, i64 128
  %137 = add i64 %RSP_val.166, 128, !mcsema_real_eip !93
  %_allin_new_bt_158 = bitcast i8* %_new_gep_155 to i64*
  %138 = load i64, i64* %_allin_new_bt_158, align 8, !mcsema_real_eip !93
  store i64 %138, i64* %XIP, align 8, !mcsema_real_eip !93
  %139 = ptrtoint i8* %_new_gep_157 to i64
  store volatile i64 %139, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %137, i64* %XSP, align 8, !mcsema_real_eip !93
  ret void, !mcsema_real_eip !93
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [96 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
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
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 112
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 16
  %_cond1_ = icmp ugt i8* %_new_gep_3, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_3, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_3, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond4_, %_cond1_n_cond2_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_3
  %2 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %2, align 8
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_100 = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond4_104, %_cond1_n_cond2_105
  %_address_in_parent_stack_bt_108._allin_new_bt_7.v = select i1 %_cond1_n_cond2_cond3_106, i8* %_pot_address_in_parent_stack_99, i8* %_new_gep_6
  %_address_in_parent_stack_bt_108._allin_new_bt_7 = bitcast i8* %_address_in_parent_stack_bt_108._allin_new_bt_7.v to i64*
  %_new_load_109 = load i64, i64* %_address_in_parent_stack_bt_108._allin_new_bt_7, align 8
  store i64 %_new_load_109, i64* %R10, align 8, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 68
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, align 4, !mcsema_real_eip !6
  %3 = bitcast i8* %_new_gep_9 to i32*
  store i32 %EDI_val.7, i32* %3, align 4, !mcsema_real_eip !6
  %_new_gep_12 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  %ESI.9 = bitcast i64* %XSI to i32*, !mcsema_real_eip !7
  %ESI_val.10 = load i32, i32* %ESI.9, align 4, !mcsema_real_eip !7
  %4 = bitcast i8* %_new_gep_12 to i32*
  store i32 %ESI_val.10, i32* %4, align 4, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 60
  %EDX.12 = bitcast i64* %XDX to i32*, !mcsema_real_eip !8
  %EDX_val.13 = load i32, i32* %EDX.12, align 4, !mcsema_real_eip !8
  %5 = bitcast i8* %_new_gep_15 to i32*
  store i32 %EDX_val.13, i32* %5, align 4, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %ECX.15 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.16 = load i32, i32* %ECX.15, align 4, !mcsema_real_eip !9
  %6 = bitcast i8* %_new_gep_18 to i32*
  store i32 %ECX_val.16, i32* %6, align 4, !mcsema_real_eip !9
  %_new_gep_21 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %R8D.18 = bitcast i64* %R8 to i32*, !mcsema_real_eip !10
  %R8D_val.19 = load i32, i32* %R8D.18, align 4, !mcsema_real_eip !10
  %7 = bitcast i8* %_new_gep_21 to i32*
  store i32 %R8D_val.19, i32* %7, align 4, !mcsema_real_eip !10
  %_new_gep_24 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %R9D.21 = bitcast i64* %R9 to i32*, !mcsema_real_eip !11
  %R9D_val.22 = load i32, i32* %R9D.21, align 4, !mcsema_real_eip !11
  %8 = bitcast i8* %_new_gep_24 to i32*
  store i32 %R9D_val.22, i32* %8, align 4, !mcsema_real_eip !11
  %_new_gep_27 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  store i64 %_new_load_109, i64* %_allin_new_bt_28, align 8, !mcsema_real_eip !12
  %_new_gep_30 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  store i64 %_new_load_, i64* %_allin_new_bt_31, align 8, !mcsema_real_eip !13
  store i64 %_new_load_109, i64* %XAX, align 8, !mcsema_real_eip !14
  %9 = inttoptr i64 %_new_load_109 to i32*, !mcsema_real_eip !15
  %_ptr_bt_127 = inttoptr i64 %_new_load_109 to i8*
  %_offset_above_rbp_128 = sub i64 %_new_load_109, %_local_end_to_int_
  %_pot_address_in_parent_stack_129 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_128
  %_cond1_130 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_127
  %_cond2_1_131 = icmp ugt i8* %_ptr_bt_127, %_parent_stack_end_ptr_
  %_cond2_2_132 = icmp ult i8* %_ptr_bt_127, %_parent_stack_start_ptr_
  %_cond2_133 = or i1 %_cond2_1_131, %_cond2_2_132
  %_cond4_134 = icmp ule i8* %_pot_address_in_parent_stack_129, %_parent_stack_end_ptr_
  %_cond1_n_cond2_135 = and i1 %_cond1_130, %_cond2_133
  %_cond1_n_cond2_cond3_136 = and i1 %_cond4_134, %_cond1_n_cond2_135
  %_address_in_parent_stack_bt_138 = bitcast i8* %_pot_address_in_parent_stack_129 to i32*
  %_address_in_parent_stack_bt_138. = select i1 %_cond1_n_cond2_cond3_136, i32* %_address_in_parent_stack_bt_138, i32* %9
  %_new_load_139 = load i32, i32* %_address_in_parent_stack_bt_138., align 4
  %10 = zext i32 %_new_load_139 to i64, !mcsema_real_eip !15
  store i64 %10, i64* %XCX, align 8, !mcsema_real_eip !15
  %11 = bitcast i8* %_new_gep_30 to i64*
  %_new_load_154 = load i64, i64* %11, align 8
  store i64 %_new_load_154, i64* %XAX, align 8, !mcsema_real_eip !16
  %12 = inttoptr i64 %_new_load_154 to i32*, !mcsema_real_eip !17
  %_ptr_bt_157 = inttoptr i64 %_new_load_154 to i8*
  %_offset_above_rbp_158 = sub i64 %_new_load_154, %_local_end_to_int_
  %_pot_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_158
  %_cond1_160 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_157
  %_cond2_1_161 = icmp ugt i8* %_ptr_bt_157, %_parent_stack_end_ptr_
  %_cond2_2_162 = icmp ult i8* %_ptr_bt_157, %_parent_stack_start_ptr_
  %_cond2_163 = or i1 %_cond2_1_161, %_cond2_2_162
  %_cond4_164 = icmp ule i8* %_pot_address_in_parent_stack_159, %_parent_stack_end_ptr_
  %_cond1_n_cond2_165 = and i1 %_cond1_160, %_cond2_163
  %_cond1_n_cond2_cond3_166 = and i1 %_cond4_164, %_cond1_n_cond2_165
  %_address_in_parent_stack_bt_168 = bitcast i8* %_pot_address_in_parent_stack_159 to i32*
  %_address_in_parent_stack_bt_168. = select i1 %_cond1_n_cond2_cond3_166, i32* %_address_in_parent_stack_bt_168, i32* %12
  %_new_load_169 = load i32, i32* %_address_in_parent_stack_bt_168., align 4
  %13 = zext i32 %_new_load_169 to i64, !mcsema_real_eip !17
  store i64 %13, i64* %XDX, align 8, !mcsema_real_eip !17
  %14 = add i32 %_new_load_169, %_new_load_139, !mcsema_real_eip !18
  %15 = xor i32 %14, %_new_load_139, !mcsema_real_eip !18
  %16 = xor i32 %15, %_new_load_169, !mcsema_real_eip !18
  %17 = and i32 %16, 16, !mcsema_real_eip !18
  %18 = icmp ne i32 %17, 0, !mcsema_real_eip !18
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !18
  %19 = icmp slt i32 %14, 0
  store i1 %19, i1* %SF, align 1, !mcsema_real_eip !18
  %20 = icmp eq i32 %14, 0, !mcsema_real_eip !18
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !18
  %21 = xor i32 %_new_load_139, -2147483648, !mcsema_real_eip !18
  %22 = xor i32 %21, %_new_load_169, !mcsema_real_eip !18
  %23 = and i32 %15, %22, !mcsema_real_eip !18
  %24 = icmp slt i32 %23, 0
  store i1 %24, i1* %OF, align 1, !mcsema_real_eip !18
  %25 = trunc i32 %14 to i8, !mcsema_real_eip !18
  %26 = call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !18
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !18
  %29 = icmp ult i32 %14, %_new_load_139, !mcsema_real_eip !18
  store i1 %29, i1* %CF, align 1, !mcsema_real_eip !18
  %30 = zext i32 %14 to i64, !mcsema_real_eip !18
  store i64 %30, i64* %XCX, align 8, !mcsema_real_eip !18
  %_new_gep_39 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %31 = bitcast i8* %_new_gep_39 to i32*
  store i32 %14, i32* %31, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -48
  %_ptr_to_int_170 = ptrtoint i8* %_new_gep_42 to i64
  %_offset_above_rbp_173 = sub i64 %_ptr_to_int_170, %_local_end_to_int_
  %_pot_address_in_parent_stack_174 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_173
  %_cond1_175 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_176 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_177 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_178 = or i1 %_cond2_1_176, %_cond2_2_177
  %_cond4_179 = icmp ule i8* %_pot_address_in_parent_stack_174, %_parent_stack_end_ptr_
  %_cond1_n_cond2_180 = and i1 %_cond1_175, %_cond2_178
  %_cond1_n_cond2_cond3_181 = and i1 %_cond1_n_cond2_180, %_cond4_179
  %.v4 = select i1 %_cond1_n_cond2_cond3_181, i8* %_pot_address_in_parent_stack_174, i8* %_new_gep_42
  %32 = bitcast i8* %.v4 to i64*
  %_new_load_184 = load i64, i64* %32, align 8
  store i64 %_new_load_184, i64* %XAX, align 8, !mcsema_real_eip !20
  %33 = add i64 %_new_load_184, 4, !mcsema_real_eip !21
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !21
  %_ptr_bt_187 = inttoptr i64 %33 to i8*
  %_offset_above_rbp_188 = sub i64 %33, %_local_end_to_int_
  %_pot_address_in_parent_stack_189 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_188
  %_cond1_190 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_187
  %_cond2_1_191 = icmp ugt i8* %_ptr_bt_187, %_parent_stack_end_ptr_
  %_cond2_2_192 = icmp ult i8* %_ptr_bt_187, %_parent_stack_start_ptr_
  %_cond2_193 = or i1 %_cond2_1_191, %_cond2_2_192
  %_cond4_194 = icmp ule i8* %_pot_address_in_parent_stack_189, %_parent_stack_end_ptr_
  %_cond1_n_cond2_195 = and i1 %_cond1_190, %_cond2_193
  %_cond1_n_cond2_cond3_196 = and i1 %_cond4_194, %_cond1_n_cond2_195
  %_address_in_parent_stack_bt_198 = bitcast i8* %_pot_address_in_parent_stack_189 to i32*
  %_address_in_parent_stack_bt_198. = select i1 %_cond1_n_cond2_cond3_196, i32* %_address_in_parent_stack_bt_198, i32* %34
  %_new_load_199 = load i32, i32* %_address_in_parent_stack_bt_198., align 4
  %35 = zext i32 %_new_load_199 to i64, !mcsema_real_eip !21
  store i64 %35, i64* %XCX, align 8, !mcsema_real_eip !21
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -56
  %_ptr_to_int_200 = ptrtoint i8* %_new_gep_45 to i64
  %_offset_above_rbp_203 = sub i64 %_ptr_to_int_200, %_local_end_to_int_
  %_pot_address_in_parent_stack_204 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_203
  %_cond1_205 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_206 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_207 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_208 = or i1 %_cond2_1_206, %_cond2_2_207
  %_cond4_209 = icmp ule i8* %_pot_address_in_parent_stack_204, %_parent_stack_end_ptr_
  %_cond1_n_cond2_210 = and i1 %_cond1_205, %_cond2_208
  %_cond1_n_cond2_cond3_211 = and i1 %_cond1_n_cond2_210, %_cond4_209
  %.v5 = select i1 %_cond1_n_cond2_cond3_211, i8* %_pot_address_in_parent_stack_204, i8* %_new_gep_45
  %36 = bitcast i8* %.v5 to i64*
  %_new_load_214 = load i64, i64* %36, align 8
  store i64 %_new_load_214, i64* %XAX, align 8, !mcsema_real_eip !22
  %37 = add i64 %_new_load_214, 4, !mcsema_real_eip !23
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !23
  %_ptr_bt_217 = inttoptr i64 %37 to i8*
  %_offset_above_rbp_218 = sub i64 %37, %_local_end_to_int_
  %_pot_address_in_parent_stack_219 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_218
  %_cond1_220 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_217
  %_cond2_1_221 = icmp ugt i8* %_ptr_bt_217, %_parent_stack_end_ptr_
  %_cond2_2_222 = icmp ult i8* %_ptr_bt_217, %_parent_stack_start_ptr_
  %_cond2_223 = or i1 %_cond2_1_221, %_cond2_2_222
  %_cond4_224 = icmp ule i8* %_pot_address_in_parent_stack_219, %_parent_stack_end_ptr_
  %_cond1_n_cond2_225 = and i1 %_cond1_220, %_cond2_223
  %_cond1_n_cond2_cond3_226 = and i1 %_cond4_224, %_cond1_n_cond2_225
  %_address_in_parent_stack_bt_228 = bitcast i8* %_pot_address_in_parent_stack_219 to i32*
  %_address_in_parent_stack_bt_228. = select i1 %_cond1_n_cond2_cond3_226, i32* %_address_in_parent_stack_bt_228, i32* %38
  %_new_load_229 = load i32, i32* %_address_in_parent_stack_bt_228., align 4
  %39 = zext i32 %_new_load_229 to i64, !mcsema_real_eip !23
  store i64 %39, i64* %XDX, align 8, !mcsema_real_eip !23
  %40 = add i32 %_new_load_229, %_new_load_199, !mcsema_real_eip !24
  %41 = xor i32 %40, %_new_load_199, !mcsema_real_eip !24
  %42 = xor i32 %41, %_new_load_229, !mcsema_real_eip !24
  %43 = and i32 %42, 16, !mcsema_real_eip !24
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !24
  store i1 %44, i1* %AF, align 1, !mcsema_real_eip !24
  %45 = icmp slt i32 %40, 0
  store i1 %45, i1* %SF, align 1, !mcsema_real_eip !24
  %46 = icmp eq i32 %40, 0, !mcsema_real_eip !24
  store i1 %46, i1* %ZF, align 1, !mcsema_real_eip !24
  %47 = xor i32 %_new_load_199, -2147483648, !mcsema_real_eip !24
  %48 = xor i32 %47, %_new_load_229, !mcsema_real_eip !24
  %49 = and i32 %41, %48, !mcsema_real_eip !24
  %50 = icmp slt i32 %49, 0
  store i1 %50, i1* %OF, align 1, !mcsema_real_eip !24
  %51 = trunc i32 %40 to i8, !mcsema_real_eip !24
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !24
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  store i1 %54, i1* %PF, align 1, !mcsema_real_eip !24
  %55 = icmp ult i32 %40, %_new_load_199, !mcsema_real_eip !24
  store i1 %55, i1* %CF, align 1, !mcsema_real_eip !24
  %56 = zext i32 %40 to i64, !mcsema_real_eip !24
  store i64 %56, i64* %XCX, align 8, !mcsema_real_eip !24
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -68
  %57 = bitcast i8* %_new_gep_48 to i32*
  store i32 %40, i32* %57, align 4, !mcsema_real_eip !25
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -48
  %_ptr_to_int_230 = ptrtoint i8* %_new_gep_51 to i64
  %_offset_above_rbp_233 = sub i64 %_ptr_to_int_230, %_local_end_to_int_
  %_pot_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_233
  %_cond1_235 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_236 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_237 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_238 = or i1 %_cond2_1_236, %_cond2_2_237
  %_cond4_239 = icmp ule i8* %_pot_address_in_parent_stack_234, %_parent_stack_end_ptr_
  %_cond1_n_cond2_240 = and i1 %_cond1_235, %_cond2_238
  %_cond1_n_cond2_cond3_241 = and i1 %_cond1_n_cond2_240, %_cond4_239
  %.v6 = select i1 %_cond1_n_cond2_cond3_241, i8* %_pot_address_in_parent_stack_234, i8* %_new_gep_51
  %58 = bitcast i8* %.v6 to i64*
  %_new_load_244 = load i64, i64* %58, align 8
  store i64 %_new_load_244, i64* %XAX, align 8, !mcsema_real_eip !26
  %59 = add i64 %_new_load_244, 8, !mcsema_real_eip !27
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !27
  %_ptr_bt_247 = inttoptr i64 %59 to i8*
  %_offset_above_rbp_248 = sub i64 %59, %_local_end_to_int_
  %_pot_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_248
  %_cond1_250 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_247
  %_cond2_1_251 = icmp ugt i8* %_ptr_bt_247, %_parent_stack_end_ptr_
  %_cond2_2_252 = icmp ult i8* %_ptr_bt_247, %_parent_stack_start_ptr_
  %_cond2_253 = or i1 %_cond2_1_251, %_cond2_2_252
  %_cond4_254 = icmp ule i8* %_pot_address_in_parent_stack_249, %_parent_stack_end_ptr_
  %_cond1_n_cond2_255 = and i1 %_cond1_250, %_cond2_253
  %_cond1_n_cond2_cond3_256 = and i1 %_cond4_254, %_cond1_n_cond2_255
  %_address_in_parent_stack_bt_258 = bitcast i8* %_pot_address_in_parent_stack_249 to i32*
  %_address_in_parent_stack_bt_258. = select i1 %_cond1_n_cond2_cond3_256, i32* %_address_in_parent_stack_bt_258, i32* %60
  %_new_load_259 = load i32, i32* %_address_in_parent_stack_bt_258., align 4
  %61 = zext i32 %_new_load_259 to i64, !mcsema_real_eip !27
  store i64 %61, i64* %XCX, align 8, !mcsema_real_eip !27
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -56
  %_ptr_to_int_260 = ptrtoint i8* %_new_gep_54 to i64
  %_offset_above_rbp_263 = sub i64 %_ptr_to_int_260, %_local_end_to_int_
  %_pot_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_263
  %_cond1_265 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_266 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_267 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_268 = or i1 %_cond2_1_266, %_cond2_2_267
  %_cond4_269 = icmp ule i8* %_pot_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond1_n_cond2_270 = and i1 %_cond1_265, %_cond2_268
  %_cond1_n_cond2_cond3_271 = and i1 %_cond1_n_cond2_270, %_cond4_269
  %.v7 = select i1 %_cond1_n_cond2_cond3_271, i8* %_pot_address_in_parent_stack_264, i8* %_new_gep_54
  %62 = bitcast i8* %.v7 to i64*
  %_new_load_274 = load i64, i64* %62, align 8
  store i64 %_new_load_274, i64* %XAX, align 8, !mcsema_real_eip !28
  %63 = add i64 %_new_load_274, 8, !mcsema_real_eip !29
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !29
  %_ptr_bt_277 = inttoptr i64 %63 to i8*
  %_offset_above_rbp_278 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_279 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_278
  %_cond1_280 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_277
  %_cond2_1_281 = icmp ugt i8* %_ptr_bt_277, %_parent_stack_end_ptr_
  %_cond2_2_282 = icmp ult i8* %_ptr_bt_277, %_parent_stack_start_ptr_
  %_cond2_283 = or i1 %_cond2_1_281, %_cond2_2_282
  %_cond4_284 = icmp ule i8* %_pot_address_in_parent_stack_279, %_parent_stack_end_ptr_
  %_cond1_n_cond2_285 = and i1 %_cond1_280, %_cond2_283
  %_cond1_n_cond2_cond3_286 = and i1 %_cond4_284, %_cond1_n_cond2_285
  %_address_in_parent_stack_bt_288 = bitcast i8* %_pot_address_in_parent_stack_279 to i32*
  %_address_in_parent_stack_bt_288. = select i1 %_cond1_n_cond2_cond3_286, i32* %_address_in_parent_stack_bt_288, i32* %64
  %_new_load_289 = load i32, i32* %_address_in_parent_stack_bt_288., align 4
  %65 = zext i32 %_new_load_289 to i64, !mcsema_real_eip !29
  store i64 %65, i64* %XDX, align 8, !mcsema_real_eip !29
  %66 = add i32 %_new_load_289, %_new_load_259, !mcsema_real_eip !30
  %67 = xor i32 %66, %_new_load_259, !mcsema_real_eip !30
  %68 = xor i32 %67, %_new_load_289, !mcsema_real_eip !30
  %69 = and i32 %68, 16, !mcsema_real_eip !30
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !30
  store i1 %70, i1* %AF, align 1, !mcsema_real_eip !30
  %71 = icmp slt i32 %66, 0
  store i1 %71, i1* %SF, align 1, !mcsema_real_eip !30
  %72 = icmp eq i32 %66, 0, !mcsema_real_eip !30
  store i1 %72, i1* %ZF, align 1, !mcsema_real_eip !30
  %73 = xor i32 %_new_load_259, -2147483648, !mcsema_real_eip !30
  %74 = xor i32 %73, %_new_load_289, !mcsema_real_eip !30
  %75 = and i32 %67, %74, !mcsema_real_eip !30
  %76 = icmp slt i32 %75, 0
  store i1 %76, i1* %OF, align 1, !mcsema_real_eip !30
  %77 = trunc i32 %66 to i8, !mcsema_real_eip !30
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !30
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  store i1 %80, i1* %PF, align 1, !mcsema_real_eip !30
  %81 = icmp ult i32 %66, %_new_load_259, !mcsema_real_eip !30
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !30
  %82 = zext i32 %66 to i64, !mcsema_real_eip !30
  store i64 %82, i64* %XCX, align 8, !mcsema_real_eip !30
  %_new_gep_57 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -64
  %83 = bitcast i8* %_new_gep_57 to i32*
  store i32 %66, i32* %83, align 4, !mcsema_real_eip !31
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59, i64 -64
  %84 = ptrtoint i8* %_new_gep_60 to i64
  %_offset_above_rbp_293 = sub i64 %84, %_local_end_to_int_
  %_pot_address_in_parent_stack_294 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_293
  %_cond1_295 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_296 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_297 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_298 = or i1 %_cond2_1_296, %_cond2_2_297
  %_cond4_299 = icmp ule i8* %_pot_address_in_parent_stack_294, %_parent_stack_end_ptr_
  %_cond1_n_cond2_300 = and i1 %_cond1_295, %_cond2_298
  %_cond1_n_cond2_cond3_301 = and i1 %_cond1_n_cond2_300, %_cond4_299
  %.v8 = select i1 %_cond1_n_cond2_cond3_301, i8* %_pot_address_in_parent_stack_294, i8* %_new_gep_60
  %85 = bitcast i8* %.v8 to i32*
  %_new_load_304 = load i32, i32* %85, align 4
  %86 = zext i32 %_new_load_304 to i64, !mcsema_real_eip !32
  store i64 %86, i64* %XCX, align 8, !mcsema_real_eip !32
  %_new_gep_63 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59, i64 -8
  %87 = bitcast i8* %_new_gep_63 to i32*
  store i32 %_new_load_304, i32* %87, align 4, !mcsema_real_eip !33
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_66 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65, i64 -72
  %_ptr_to_int_305 = ptrtoint i8* %_new_gep_66 to i64
  %_offset_above_rbp_308 = sub i64 %_ptr_to_int_305, %_local_end_to_int_
  %_pot_address_in_parent_stack_309 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_308
  %_cond1_310 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_311 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_312 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_313 = or i1 %_cond2_1_311, %_cond2_2_312
  %_cond4_314 = icmp ule i8* %_pot_address_in_parent_stack_309, %_parent_stack_end_ptr_
  %_cond1_n_cond2_315 = and i1 %_cond1_310, %_cond2_313
  %_cond1_n_cond2_cond3_316 = and i1 %_cond1_n_cond2_315, %_cond4_314
  %_address_in_parent_stack_bt_318._allin_new_bt_67.v = select i1 %_cond1_n_cond2_cond3_316, i8* %_pot_address_in_parent_stack_309, i8* %_new_gep_66
  %_address_in_parent_stack_bt_318._allin_new_bt_67 = bitcast i8* %_address_in_parent_stack_bt_318._allin_new_bt_67.v to i64*
  %_new_load_319 = load i64, i64* %_address_in_parent_stack_bt_318._allin_new_bt_67, align 8
  store i64 %_new_load_319, i64* %XAX, align 8, !mcsema_real_eip !34
  %_new_gep_69 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65, i64 -16
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %_new_load_319, i64* %_allin_new_bt_70, align 8, !mcsema_real_eip !35
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -8
  %88 = ptrtoint i8* %_new_gep_72 to i64
  %_offset_above_rbp_323 = sub i64 %88, %_local_end_to_int_
  %_pot_address_in_parent_stack_324 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_323
  %_cond1_325 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond2_1_326 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_2_327 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_328 = or i1 %_cond2_1_326, %_cond2_2_327
  %_cond4_329 = icmp ule i8* %_pot_address_in_parent_stack_324, %_parent_stack_end_ptr_
  %_cond1_n_cond2_330 = and i1 %_cond1_325, %_cond2_328
  %_cond1_n_cond2_cond3_331 = and i1 %_cond1_n_cond2_330, %_cond4_329
  %.v9 = select i1 %_cond1_n_cond2_cond3_331, i8* %_pot_address_in_parent_stack_324, i8* %_new_gep_72
  %89 = bitcast i8* %.v9 to i32*
  %_new_load_334 = load i32, i32* %89, align 4
  %90 = zext i32 %_new_load_334 to i64, !mcsema_real_eip !36
  store i64 %90, i64* %XCX, align 8, !mcsema_real_eip !36
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -80
  %91 = bitcast i8* %_new_gep_75 to i32*
  store i32 %_new_load_334, i32* %91, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77, i64 -16
  %_ptr_to_int_335 = ptrtoint i8* %_new_gep_78 to i64
  %_offset_above_rbp_338 = sub i64 %_ptr_to_int_335, %_local_end_to_int_
  %_pot_address_in_parent_stack_339 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_338
  %_cond1_340 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_341 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_342 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_343 = or i1 %_cond2_1_341, %_cond2_2_342
  %_cond4_344 = icmp ule i8* %_pot_address_in_parent_stack_339, %_parent_stack_end_ptr_
  %_cond1_n_cond2_345 = and i1 %_cond1_340, %_cond2_343
  %_cond1_n_cond2_cond3_346 = and i1 %_cond1_n_cond2_345, %_cond4_344
  %_address_in_parent_stack_bt_348._allin_new_bt_79.v = select i1 %_cond1_n_cond2_cond3_346, i8* %_pot_address_in_parent_stack_339, i8* %_new_gep_78
  %_address_in_parent_stack_bt_348._allin_new_bt_79 = bitcast i8* %_address_in_parent_stack_bt_348._allin_new_bt_79.v to i64*
  %_new_load_349 = load i64, i64* %_address_in_parent_stack_bt_348._allin_new_bt_79, align 8
  store i64 %_new_load_349, i64* %XAX, align 8, !mcsema_real_eip !38
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77, i64 -88
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  store i64 %_new_load_349, i64* %_allin_new_bt_82, align 8, !mcsema_real_eip !39
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_84 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_83, i64 -88
  %_ptr_to_int_350 = ptrtoint i8* %_new_gep_84 to i64
  %_offset_above_rbp_353 = sub i64 %_ptr_to_int_350, %_local_end_to_int_
  %_pot_address_in_parent_stack_354 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_353
  %_cond1_355 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_356 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_357 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_358 = or i1 %_cond2_1_356, %_cond2_2_357
  %_cond4_359 = icmp ule i8* %_pot_address_in_parent_stack_354, %_parent_stack_end_ptr_
  %_cond1_n_cond2_360 = and i1 %_cond1_355, %_cond2_358
  %_cond1_n_cond2_cond3_361 = and i1 %_cond1_n_cond2_360, %_cond4_359
  %.v10 = select i1 %_cond1_n_cond2_cond3_361, i8* %_pot_address_in_parent_stack_354, i8* %_new_gep_84
  %92 = bitcast i8* %.v10 to i64*
  %_new_load_364 = load i64, i64* %92, align 8
  store i64 %_new_load_364, i64* %XAX, align 8, !mcsema_real_eip !40
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_83, i64 -80
  %93 = ptrtoint i8* %_new_gep_87 to i64
  %_offset_above_rbp_368 = sub i64 %93, %_local_end_to_int_
  %_pot_address_in_parent_stack_369 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_368
  %_cond1_370 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_371 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_372 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_373 = or i1 %_cond2_1_371, %_cond2_2_372
  %_cond4_374 = icmp ule i8* %_pot_address_in_parent_stack_369, %_parent_stack_end_ptr_
  %_cond1_n_cond2_375 = and i1 %_cond1_370, %_cond2_373
  %_cond1_n_cond2_cond3_376 = and i1 %_cond1_n_cond2_375, %_cond4_374
  %_address_in_parent_stack_bt_378..v = select i1 %_cond1_n_cond2_cond3_376, i8* %_pot_address_in_parent_stack_369, i8* %_new_gep_87
  %_address_in_parent_stack_bt_378. = bitcast i8* %_address_in_parent_stack_bt_378..v to i32*
  %_new_load_379 = load i32, i32* %_address_in_parent_stack_bt_378., align 4
  %94 = zext i32 %_new_load_379 to i64, !mcsema_real_eip !41
  store i64 %94, i64* %XDX, align 8, !mcsema_real_eip !41
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.76 = load i64, i64* %XSP, align 8, !mcsema_real_eip !42
  %_ptr_to_int_380 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89 to i64
  %_offset_above_rbp_383 = sub i64 %_ptr_to_int_380, %_local_end_to_int_
  %_pot_address_in_parent_stack_384 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_383
  %_cond1_385 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89, %_local_stack_end_ptr_
  %_cond2_1_386 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89, %_parent_stack_end_ptr_
  %_cond2_2_387 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89, %_parent_stack_start_ptr_
  %_cond2_388 = or i1 %_cond2_1_386, %_cond2_2_387
  %_cond4_389 = icmp ule i8* %_pot_address_in_parent_stack_384, %_parent_stack_end_ptr_
  %_cond1_n_cond2_390 = and i1 %_cond1_385, %_cond2_388
  %_cond1_n_cond2_cond3_391 = and i1 %_cond1_n_cond2_390, %_cond4_389
  %.v11 = select i1 %_cond1_n_cond2_cond3_391, i8* %_pot_address_in_parent_stack_384, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89
  %95 = bitcast i8* %.v11 to i64*
  %_new_load_394 = load i64, i64* %95, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_394 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_394, i64* %XBP, align 8, !mcsema_real_eip !42
  %_new_gep_91 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89, i64 8
  %96 = add i64 %RSP_val.76, 8, !mcsema_real_eip !42
  store volatile i8* %_new_gep_91, i8** %_RSP_ptr_, align 8
  store i64 %96, i64* %XSP, align 8, !mcsema_real_eip !42
  %_new_gep_93 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89, i64 16
  %97 = add i64 %RSP_val.76, 16, !mcsema_real_eip !43
  %_ptr_to_int_395 = ptrtoint i8* %_new_gep_91 to i64
  %_offset_above_rbp_398 = sub i64 %_ptr_to_int_395, %_local_end_to_int_
  %_pot_address_in_parent_stack_399 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_398
  %_cond1_400 = icmp ugt i8* %_new_gep_91, %_local_stack_end_ptr_
  %_cond2_1_401 = icmp ugt i8* %_new_gep_91, %_parent_stack_end_ptr_
  %_cond2_2_402 = icmp ult i8* %_new_gep_91, %_parent_stack_start_ptr_
  %_cond2_403 = or i1 %_cond2_1_401, %_cond2_2_402
  %_cond4_404 = icmp ule i8* %_pot_address_in_parent_stack_399, %_parent_stack_end_ptr_
  %_cond1_n_cond2_405 = and i1 %_cond1_400, %_cond2_403
  %_cond1_n_cond2_cond3_406 = and i1 %_cond1_n_cond2_405, %_cond4_404
  %_address_in_parent_stack_bt_408._allin_new_bt_94.v = select i1 %_cond1_n_cond2_cond3_406, i8* %_pot_address_in_parent_stack_399, i8* %_new_gep_91
  %_address_in_parent_stack_bt_408._allin_new_bt_94 = bitcast i8* %_address_in_parent_stack_bt_408._allin_new_bt_94.v to i64*
  %_new_load_409 = load i64, i64* %_address_in_parent_stack_bt_408._allin_new_bt_94, align 8
  store i64 %_new_load_409, i64* %XIP, align 8, !mcsema_real_eip !43
  store volatile i8* %_new_gep_93, i8** %_RSP_ptr_, align 8
  store i64 %97, i64* %XSP, align 8, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90.2(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [128 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 128
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !44
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !44
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !44
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !44
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !44
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !44
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !44
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !44
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !44
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !44
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !44
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !44
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !44
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !44
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !44
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !44
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !44
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !44
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !44
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !44
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !44
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !44
  %RSP_val.79 = load i64, i64* %XSP, align 8, !mcsema_real_eip !44
  %_new_gep_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %2 = add i64 %RSP_val.79, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  %3 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %3, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %2, i64* %XBP, align 8, !mcsema_real_eip !45
  %_new_gep_3 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %4 = add i64 %RSP_val.79, -120
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %3
  %5 = and i64 %_trans_xor_, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !46
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %7 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !46
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  store i1 %9, i1* %PF, align 1, !mcsema_real_eip !46
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !46
  %10 = icmp slt i64 %4, 0
  store i1 %10, i1* %SF, align 1, !mcsema_real_eip !46
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 112 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !46
  %11 = and i64 %_trans_xor_, %3, !mcsema_real_eip !46
  %12 = icmp slt i64 %11, 0
  store i1 %12, i1* %OF, align 1, !mcsema_real_eip !46
  store volatile i64 %_trans_p2i_, i64* %_RSP_ptr_.sroa.0, align 8
  %_new_gep_17 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %13 = bitcast i8* %_new_gep_17 to <4 x i32>*
  store <4 x i32> <i32 10, i32 10, i32 10, i32 0>, <4 x i32>* %13, align 8
  store i64 24, i64* %XAX, align 8, !mcsema_real_eip !47
  store i64 24, i64* %XCX, align 8, !mcsema_real_eip !48
  %_new_gep_26 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 ptrtoint (%0* @data_0x176 to i64), i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !49
  store i64 24, i64* %XDI, align 8, !mcsema_real_eip !50
  %14 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %15 = add i64 %RSP_val.79, -128
  %_allin_new_bt_30 = bitcast [128 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !51
  %16 = ptrtoint [128 x i8]* %_local_stack_start_ptr_1 to i64
  store volatile i64 %16, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %15, i64* %XSP, align 8, !mcsema_real_eip !51
  %17 = call x86_64_sysvcc i64 @_malloc(i64 24)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_18 = load i8*, i8** %14, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_18, i64 8
  %18 = ptrtoint i8* %_gep_fix_ to i64
  store i64 %18, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !51
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %17, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !52
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -24
  %_ptr_to_int_ = ptrtoint i8* %_new_gep_35 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_35
  %19 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %19, align 8
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !53
  %20 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !54
  store i32 5, i32* %20, align 4, !mcsema_real_eip !54
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -24
  %_ptr_to_int_165 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_168 = sub i64 %_ptr_to_int_165, %1
  %_pot_address_in_parent_stack_169 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_168
  %_cond1_170 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_171 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_172 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_173 = or i1 %_cond2_1_171, %_cond2_2_172
  %_cond4_174 = icmp ule i8* %_pot_address_in_parent_stack_169, %_parent_stack_end_ptr_
  %_cond1_n_cond2_175 = and i1 %_cond1_170, %_cond2_173
  %_cond1_n_cond2_cond3_176 = and i1 %_cond1_n_cond2_175, %_cond4_174
  %_address_in_parent_stack_bt_178._allin_new_bt_39.v = select i1 %_cond1_n_cond2_cond3_176, i8* %_pot_address_in_parent_stack_169, i8* %_new_gep_38
  %_address_in_parent_stack_bt_178._allin_new_bt_39 = bitcast i8* %_address_in_parent_stack_bt_178._allin_new_bt_39.v to i64*
  %_new_load_179 = load i64, i64* %_address_in_parent_stack_bt_178._allin_new_bt_39, align 8
  store i64 %_new_load_179, i64* %XAX, align 8, !mcsema_real_eip !55
  %21 = add i64 %_new_load_179, 4, !mcsema_real_eip !56
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !56
  store i32 5, i32* %22, align 4, !mcsema_real_eip !56
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -24
  %_ptr_to_int_180 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_183 = sub i64 %_ptr_to_int_180, %1
  %_pot_address_in_parent_stack_184 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_183
  %_cond1_185 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_186 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_187 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_188 = or i1 %_cond2_1_186, %_cond2_2_187
  %_cond4_189 = icmp ule i8* %_pot_address_in_parent_stack_184, %_parent_stack_end_ptr_
  %_cond1_n_cond2_190 = and i1 %_cond1_185, %_cond2_188
  %_cond1_n_cond2_cond3_191 = and i1 %_cond1_n_cond2_190, %_cond4_189
  %.v2 = select i1 %_cond1_n_cond2_cond3_191, i8* %_pot_address_in_parent_stack_184, i8* %_new_gep_41
  %23 = bitcast i8* %.v2 to i64*
  %_new_load_194 = load i64, i64* %23, align 8
  store i64 %_new_load_194, i64* %XAX, align 8, !mcsema_real_eip !57
  %24 = add i64 %_new_load_194, 8, !mcsema_real_eip !58
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !58
  store i32 5, i32* %25, align 4, !mcsema_real_eip !58
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -24
  %_ptr_to_int_195 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_198 = sub i64 %_ptr_to_int_195, %1
  %_pot_address_in_parent_stack_199 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_198
  %_cond1_200 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_201 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_202 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_203 = or i1 %_cond2_1_201, %_cond2_2_202
  %_cond4_204 = icmp ule i8* %_pot_address_in_parent_stack_199, %_parent_stack_end_ptr_
  %_cond1_n_cond2_205 = and i1 %_cond1_200, %_cond2_203
  %_cond1_n_cond2_cond3_206 = and i1 %_cond1_n_cond2_205, %_cond4_204
  %_address_in_parent_stack_bt_208._allin_new_bt_45.v = select i1 %_cond1_n_cond2_cond3_206, i8* %_pot_address_in_parent_stack_199, i8* %_new_gep_44
  %_address_in_parent_stack_bt_208._allin_new_bt_45 = bitcast i8* %_address_in_parent_stack_bt_208._allin_new_bt_45.v to i64*
  %_new_load_209 = load i64, i64* %_address_in_parent_stack_bt_208._allin_new_bt_45, align 8
  store i64 %_new_load_209, i64* %XAX, align 8, !mcsema_real_eip !59
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463, i64* %XCX, align 8
  %26 = add i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463, 8, !mcsema_real_eip !60
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !60
  store i64 %_new_load_209, i64* %27, align 8, !mcsema_real_eip !60
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_49 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_48, i64 -16
  %28 = ptrtoint i8* %_new_gep_49 to i64
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !61
  %29 = bitcast i64* %XCX to i64**
  %RCX_val.1064 = load i64*, i64** %29, align 8
  store i64 %28, i64* %RCX_val.1064, align 8, !mcsema_real_eip !62
  %30 = bitcast i64* %XDX to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %30, align 8
  store i64 3, i64* %R8, align 8, !mcsema_real_eip !63
  %EDX.108 = bitcast i64* %XDX to i32*, !mcsema_real_eip !64
  store i64 1, i64* %XDI, align 8, !mcsema_real_eip !64
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_52 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_51, i64 -76
  %31 = bitcast i8* %_new_gep_52 to i32*
  store i32 2, i32* %31, align 4, !mcsema_real_eip !65
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_55 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_54, i64 -80
  %EDX_val.115 = load i32, i32* %EDX.108, align 4, !mcsema_real_eip !66
  %32 = bitcast i8* %_new_gep_55 to i32*
  store i32 %EDX_val.115, i32* %32, align 4, !mcsema_real_eip !66
  %R8D.116 = bitcast i64* %R8 to i32*, !mcsema_real_eip !67
  %R8D_val.117 = load i32, i32* %R8D.116, align 4, !mcsema_real_eip !67
  %33 = zext i32 %R8D_val.117 to i64, !mcsema_real_eip !67
  store i64 %33, i64* %XDX, align 8, !mcsema_real_eip !67
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_58 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_57, i64 -80
  %34 = ptrtoint i8* %_new_gep_58 to i64
  %_offset_above_rbp_213 = sub i64 %34, %1
  %_pot_address_in_parent_stack_214 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_213
  %_cond1_215 = icmp ugt i8* %_new_gep_58, %_local_stack_end_ptr_
  %_cond2_1_216 = icmp ugt i8* %_new_gep_58, %_parent_stack_end_ptr_
  %_cond2_2_217 = icmp ult i8* %_new_gep_58, %_parent_stack_start_ptr_
  %_cond2_218 = or i1 %_cond2_1_216, %_cond2_2_217
  %_cond4_219 = icmp ule i8* %_pot_address_in_parent_stack_214, %_parent_stack_end_ptr_
  %_cond1_n_cond2_220 = and i1 %_cond1_215, %_cond2_218
  %_cond1_n_cond2_cond3_221 = and i1 %_cond1_n_cond2_220, %_cond4_219
  %.v5 = select i1 %_cond1_n_cond2_cond3_221, i8* %_pot_address_in_parent_stack_214, i8* %_new_gep_58
  %35 = bitcast i8* %.v5 to i32*
  %_new_load_224 = load i32, i32* %35, align 4
  %36 = zext i32 %_new_load_224 to i64, !mcsema_real_eip !68
  store i64 %36, i64* %XCX, align 8, !mcsema_real_eip !68
  %_new_gep_61 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_57, i64 -76
  %37 = ptrtoint i8* %_new_gep_61 to i64
  %_offset_above_rbp_228 = sub i64 %37, %1
  %_pot_address_in_parent_stack_229 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_228
  %_cond1_230 = icmp ugt i8* %_new_gep_61, %_local_stack_end_ptr_
  %_cond2_1_231 = icmp ugt i8* %_new_gep_61, %_parent_stack_end_ptr_
  %_cond2_2_232 = icmp ult i8* %_new_gep_61, %_parent_stack_start_ptr_
  %_cond2_233 = or i1 %_cond2_1_231, %_cond2_2_232
  %_cond4_234 = icmp ule i8* %_pot_address_in_parent_stack_229, %_parent_stack_end_ptr_
  %_cond1_n_cond2_235 = and i1 %_cond1_230, %_cond2_233
  %_cond1_n_cond2_cond3_236 = and i1 %_cond1_n_cond2_235, %_cond4_234
  %_address_in_parent_stack_bt_238..v = select i1 %_cond1_n_cond2_cond3_236, i8* %_pot_address_in_parent_stack_229, i8* %_new_gep_61
  %_address_in_parent_stack_bt_238. = bitcast i8* %_address_in_parent_stack_bt_238..v to i32*
  %_new_load_239 = load i32, i32* %_address_in_parent_stack_bt_238., align 4
  %38 = zext i32 %_new_load_239 to i64, !mcsema_real_eip !69
  store i64 %38, i64* %R9, align 8, !mcsema_real_eip !69
  %_new_gep_64 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_57, i64 -84
  %39 = bitcast i8* %_new_gep_64 to i32*
  store i32 %R8D_val.117, i32* %39, align 4, !mcsema_real_eip !70
  %R9D.123 = bitcast i64* %R9 to i32*, !mcsema_real_eip !71
  %R9D_val.124 = load i32, i32* %R9D.123, align 4, !mcsema_real_eip !71
  %40 = zext i32 %R9D_val.124 to i64, !mcsema_real_eip !71
  store i64 %40, i64* %R8, align 8, !mcsema_real_eip !71
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_67 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_66, i64 -84
  %41 = ptrtoint i8* %_new_gep_67 to i64
  %_offset_above_rbp_243 = sub i64 %41, %1
  %_pot_address_in_parent_stack_244 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_243
  %_cond1_245 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_246 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_247 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_248 = or i1 %_cond2_1_246, %_cond2_2_247
  %_cond4_249 = icmp ule i8* %_pot_address_in_parent_stack_244, %_parent_stack_end_ptr_
  %_cond1_n_cond2_250 = and i1 %_cond1_245, %_cond2_248
  %_cond1_n_cond2_cond3_251 = and i1 %_cond1_n_cond2_250, %_cond4_249
  %.v6 = select i1 %_cond1_n_cond2_cond3_251, i8* %_pot_address_in_parent_stack_244, i8* %_new_gep_67
  %42 = bitcast i8* %.v6 to i32*
  %_new_load_254 = load i32, i32* %42, align 4
  %43 = zext i32 %_new_load_254 to i64, !mcsema_real_eip !72
  store i64 %43, i64* %R9, align 8, !mcsema_real_eip !72
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6919 = load i8*, i8** %14, align 8
  %RSP_val.126 = load i64, i64* %XSP, align 8, !mcsema_real_eip !73
  %_new_gep_70 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6919, i64 -8
  %44 = add i64 %RSP_val.126, -8
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_71, align 8, !mcsema_real_eip !73
  %45 = ptrtoint i8* %_new_gep_70 to i64
  store volatile i64 %45, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %44, i64* %XSP, align 8, !mcsema_real_eip !73
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_159 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_70, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_159)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_16120 = load i8*, i8** %14, align 8
  %_gep_fix_162 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_16120, i64 8
  %46 = ptrtoint i8* %_gep_fix_162 to i64
  store i64 %46, i64* %_RSP_ptr_.sroa.0, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_73 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_72, i64 -48
  %EDX_val.129 = load i32, i32* %EDX.108, align 4, !mcsema_real_eip !74
  %47 = bitcast i8* %_new_gep_73 to i32*
  store i32 %EDX_val.129, i32* %47, align 4, !mcsema_real_eip !74
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_76 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_75, i64 -56
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %RAX_val.131 = load i64, i64* %XAX, align 8, !mcsema_real_eip !75
  store i64 %RAX_val.131, i64* %_allin_new_bt_77, align 8, !mcsema_real_eip !75
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_79 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_78, i64 -56
  %_ptr_to_int_255 = ptrtoint i8* %_new_gep_79 to i64
  %_offset_above_rbp_258 = sub i64 %_ptr_to_int_255, %1
  %_pot_address_in_parent_stack_259 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_258
  %_cond1_260 = icmp ugt i8* %_new_gep_79, %_local_stack_end_ptr_
  %_cond2_1_261 = icmp ugt i8* %_new_gep_79, %_parent_stack_end_ptr_
  %_cond2_2_262 = icmp ult i8* %_new_gep_79, %_parent_stack_start_ptr_
  %_cond2_263 = or i1 %_cond2_1_261, %_cond2_2_262
  %_cond4_264 = icmp ule i8* %_pot_address_in_parent_stack_259, %_parent_stack_end_ptr_
  %_cond1_n_cond2_265 = and i1 %_cond1_260, %_cond2_263
  %_cond1_n_cond2_cond3_266 = and i1 %_cond1_n_cond2_265, %_cond4_264
  %_address_in_parent_stack_bt_268._allin_new_bt_80.v = select i1 %_cond1_n_cond2_cond3_266, i8* %_pot_address_in_parent_stack_259, i8* %_new_gep_79
  %_address_in_parent_stack_bt_268._allin_new_bt_80 = bitcast i8* %_address_in_parent_stack_bt_268._allin_new_bt_80.v to i64*
  %_new_load_269 = load i64, i64* %_address_in_parent_stack_bt_268._allin_new_bt_80, align 8
  store i64 %_new_load_269, i64* %XAX, align 8, !mcsema_real_eip !76
  %_new_gep_82 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_78, i64 -40
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 %_new_load_269, i64* %_allin_new_bt_83, align 8, !mcsema_real_eip !77
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_85 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_84, i64 -48
  %48 = ptrtoint i8* %_new_gep_85 to i64
  %_offset_above_rbp_273 = sub i64 %48, %1
  %_pot_address_in_parent_stack_274 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_273
  %_cond1_275 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_276 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_277 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_278 = or i1 %_cond2_1_276, %_cond2_2_277
  %_cond4_279 = icmp ule i8* %_pot_address_in_parent_stack_274, %_parent_stack_end_ptr_
  %_cond1_n_cond2_280 = and i1 %_cond1_275, %_cond2_278
  %_cond1_n_cond2_cond3_281 = and i1 %_cond1_n_cond2_280, %_cond4_279
  %.v7 = select i1 %_cond1_n_cond2_cond3_281, i8* %_pot_address_in_parent_stack_274, i8* %_new_gep_85
  %49 = bitcast i8* %.v7 to i32*
  %_new_load_284 = load i32, i32* %49, align 4
  %50 = zext i32 %_new_load_284 to i64, !mcsema_real_eip !78
  store i64 %50, i64* %XCX, align 8, !mcsema_real_eip !78
  %_new_gep_88 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_84, i64 -32
  %ECX.137 = bitcast i64* %XCX to i32*, !mcsema_real_eip !79
  %51 = bitcast i8* %_new_gep_88 to i32*
  store i32 %_new_load_284, i32* %51, align 4, !mcsema_real_eip !79
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_91 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90, i64 -40
  %52 = ptrtoint i8* %_new_gep_91 to i64
  %_offset_above_rbp_288 = sub i64 %52, %1
  %_pot_address_in_parent_stack_289 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_288
  %_cond1_290 = icmp ugt i8* %_new_gep_91, %_local_stack_end_ptr_
  %_cond2_1_291 = icmp ugt i8* %_new_gep_91, %_parent_stack_end_ptr_
  %_cond2_2_292 = icmp ult i8* %_new_gep_91, %_parent_stack_start_ptr_
  %_cond2_293 = or i1 %_cond2_1_291, %_cond2_2_292
  %_cond4_294 = icmp ule i8* %_pot_address_in_parent_stack_289, %_parent_stack_end_ptr_
  %_cond1_n_cond2_295 = and i1 %_cond1_290, %_cond2_293
  %_cond1_n_cond2_cond3_296 = and i1 %_cond1_n_cond2_295, %_cond4_294
  %_address_in_parent_stack_bt_298..v = select i1 %_cond1_n_cond2_cond3_296, i8* %_pot_address_in_parent_stack_289, i8* %_new_gep_91
  %_address_in_parent_stack_bt_298. = bitcast i8* %_address_in_parent_stack_bt_298..v to i32*
  %_new_load_299 = load i32, i32* %_address_in_parent_stack_bt_298., align 4
  %53 = zext i32 %_new_load_299 to i64, !mcsema_real_eip !80
  store i64 %53, i64* %XCX, align 8, !mcsema_real_eip !80
  %_new_gep_94 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90, i64 -36
  %54 = ptrtoint i8* %_new_gep_94 to i64
  %_offset_above_rbp_303 = sub i64 %54, %1
  %_pot_address_in_parent_stack_304 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_303
  %_cond1_305 = icmp ugt i8* %_new_gep_94, %_local_stack_end_ptr_
  %_cond2_1_306 = icmp ugt i8* %_new_gep_94, %_parent_stack_end_ptr_
  %_cond2_2_307 = icmp ult i8* %_new_gep_94, %_parent_stack_start_ptr_
  %_cond2_308 = or i1 %_cond2_1_306, %_cond2_2_307
  %_cond4_309 = icmp ule i8* %_pot_address_in_parent_stack_304, %_parent_stack_end_ptr_
  %_cond1_n_cond2_310 = and i1 %_cond1_305, %_cond2_308
  %_cond1_n_cond2_cond3_311 = and i1 %_cond1_n_cond2_310, %_cond4_309
  %.v8 = select i1 %_cond1_n_cond2_cond3_311, i8* %_pot_address_in_parent_stack_304, i8* %_new_gep_94
  %55 = bitcast i8* %.v8 to i32*
  %_new_load_314 = load i32, i32* %55, align 4
  %56 = add i32 %_new_load_299, %_new_load_314, !mcsema_real_eip !81
  %57 = xor i32 %56, %_new_load_314, !mcsema_real_eip !81
  %58 = xor i32 %57, %_new_load_299, !mcsema_real_eip !81
  %59 = and i32 %58, 16, !mcsema_real_eip !81
  %60 = icmp ne i32 %59, 0, !mcsema_real_eip !81
  store i1 %60, i1* %AF, align 1, !mcsema_real_eip !81
  %61 = icmp slt i32 %56, 0
  store i1 %61, i1* %SF, align 1, !mcsema_real_eip !81
  %62 = icmp eq i32 %56, 0, !mcsema_real_eip !81
  store i1 %62, i1* %ZF, align 1, !mcsema_real_eip !81
  %63 = xor i32 %_new_load_314, -2147483648, !mcsema_real_eip !81
  %64 = xor i32 %63, %_new_load_299, !mcsema_real_eip !81
  %65 = and i32 %57, %64, !mcsema_real_eip !81
  %66 = icmp slt i32 %65, 0
  store i1 %66, i1* %OF, align 1, !mcsema_real_eip !81
  %67 = trunc i32 %56 to i8, !mcsema_real_eip !81
  %68 = call i8 @llvm.ctpop.i8(i8 %67), !mcsema_real_eip !81
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  store i1 %70, i1* %PF, align 1, !mcsema_real_eip !81
  %71 = icmp ult i32 %56, %_new_load_314, !mcsema_real_eip !81
  store i1 %71, i1* %CF, align 1, !mcsema_real_eip !81
  %72 = zext i32 %56 to i64, !mcsema_real_eip !81
  store i64 %72, i64* %XCX, align 8, !mcsema_real_eip !81
  %_new_gep_97 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90, i64 -32
  %73 = ptrtoint i8* %_new_gep_97 to i64
  %_offset_above_rbp_318 = sub i64 %73, %1
  %_pot_address_in_parent_stack_319 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_318
  %_cond1_320 = icmp ugt i8* %_new_gep_97, %_local_stack_end_ptr_
  %_cond2_1_321 = icmp ugt i8* %_new_gep_97, %_parent_stack_end_ptr_
  %_cond2_2_322 = icmp ult i8* %_new_gep_97, %_parent_stack_start_ptr_
  %_cond2_323 = or i1 %_cond2_1_321, %_cond2_2_322
  %_cond4_324 = icmp ule i8* %_pot_address_in_parent_stack_319, %_parent_stack_end_ptr_
  %_cond1_n_cond2_325 = and i1 %_cond1_320, %_cond2_323
  %_cond1_n_cond2_cond3_326 = and i1 %_cond1_n_cond2_325, %_cond4_324
  %_address_in_parent_stack_bt_328..v = select i1 %_cond1_n_cond2_cond3_326, i8* %_pot_address_in_parent_stack_319, i8* %_new_gep_97
  %_address_in_parent_stack_bt_328. = bitcast i8* %_address_in_parent_stack_bt_328..v to i32*
  %_new_load_329 = load i32, i32* %_address_in_parent_stack_bt_328., align 4
  %74 = add i32 %56, %_new_load_329, !mcsema_real_eip !82
  %75 = xor i32 %74, %_new_load_329, !mcsema_real_eip !82
  %76 = xor i32 %75, %56, !mcsema_real_eip !82
  %77 = and i32 %76, 16, !mcsema_real_eip !82
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !82
  store i1 %78, i1* %AF, align 1, !mcsema_real_eip !82
  %79 = icmp slt i32 %74, 0
  store i1 %79, i1* %SF, align 1, !mcsema_real_eip !82
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !82
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !82
  %81 = xor i32 %_new_load_329, -2147483648, !mcsema_real_eip !82
  %82 = xor i32 %81, %56, !mcsema_real_eip !82
  %83 = and i32 %75, %82, !mcsema_real_eip !82
  %84 = icmp slt i32 %83, 0
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !82
  %85 = trunc i32 %74 to i8, !mcsema_real_eip !82
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !82
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !82
  %89 = icmp ult i32 %74, %_new_load_329, !mcsema_real_eip !82
  store i1 %89, i1* %CF, align 1, !mcsema_real_eip !82
  %90 = zext i32 %74 to i64, !mcsema_real_eip !82
  store i64 %90, i64* %XCX, align 8, !mcsema_real_eip !82
  %_new_gep_100 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90, i64 -60
  %91 = bitcast i8* %_new_gep_100 to i32*
  store i32 %74, i32* %91, align 4, !mcsema_real_eip !83
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_103 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_102, i64 -60
  %92 = ptrtoint i8* %_new_gep_103 to i64
  %_offset_above_rbp_333 = sub i64 %92, %1
  %_pot_address_in_parent_stack_334 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_333
  %_cond1_335 = icmp ugt i8* %_new_gep_103, %_local_stack_end_ptr_
  %_cond2_1_336 = icmp ugt i8* %_new_gep_103, %_parent_stack_end_ptr_
  %_cond2_2_337 = icmp ult i8* %_new_gep_103, %_parent_stack_start_ptr_
  %_cond2_338 = or i1 %_cond2_1_336, %_cond2_2_337
  %_cond4_339 = icmp ule i8* %_pot_address_in_parent_stack_334, %_parent_stack_end_ptr_
  %_cond1_n_cond2_340 = and i1 %_cond1_335, %_cond2_338
  %_cond1_n_cond2_cond3_341 = and i1 %_cond1_n_cond2_340, %_cond4_339
  %.v9 = select i1 %_cond1_n_cond2_cond3_341, i8* %_pot_address_in_parent_stack_334, i8* %_new_gep_103
  %93 = bitcast i8* %.v9 to i32*
  %_new_load_344 = load i32, i32* %93, align 4
  %94 = zext i32 %_new_load_344 to i64, !mcsema_real_eip !84
  store i64 %94, i64* %XSI, align 8, !mcsema_real_eip !84
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_102, i64 -72
  %_ptr_to_int_345 = ptrtoint i8* %_new_gep_106 to i64
  %_offset_above_rbp_348 = sub i64 %_ptr_to_int_345, %1
  %_pot_address_in_parent_stack_349 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_348
  %_cond1_350 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_351 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_352 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_353 = or i1 %_cond2_1_351, %_cond2_2_352
  %_cond4_354 = icmp ule i8* %_pot_address_in_parent_stack_349, %_parent_stack_end_ptr_
  %_cond1_n_cond2_355 = and i1 %_cond1_350, %_cond2_353
  %_cond1_n_cond2_cond3_356 = and i1 %_cond1_n_cond2_355, %_cond4_354
  %_address_in_parent_stack_bt_358._allin_new_bt_107.v = select i1 %_cond1_n_cond2_cond3_356, i8* %_pot_address_in_parent_stack_349, i8* %_new_gep_106
  %_address_in_parent_stack_bt_358._allin_new_bt_107 = bitcast i8* %_address_in_parent_stack_bt_358._allin_new_bt_107.v to i64*
  %_new_load_359 = load i64, i64* %_address_in_parent_stack_bt_358._allin_new_bt_107, align 8
  store i64 %_new_load_359, i64* %XDI, align 8, !mcsema_real_eip !85
  %AL.151 = bitcast i64* %XAX to i8*, !mcsema_real_eip !86
  store i8 0, i8* %AL.151, align 1, !mcsema_real_eip !86
  %RDX_val.154 = load i64, i64* %XDX, align 8, !mcsema_real_eip !87
  %RCX_val.155 = load i64, i64* %XCX, align 8, !mcsema_real_eip !87
  %R8_val.156 = load i64, i64* %R8, align 8, !mcsema_real_eip !87
  %R9_val.157 = load i64, i64* %R9, align 8, !mcsema_real_eip !87
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_108 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %95 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_108 to i8*
  %_offset_above_rbp_363 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_108, %1
  %_pot_address_in_parent_stack_364 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_363
  %_cond1_365 = icmp ult i8* %_local_stack_end_ptr_, %95
  %_cond2_1_366 = icmp ugt i8* %95, %_parent_stack_end_ptr_
  %_cond2_2_367 = icmp ult i8* %95, %_parent_stack_start_ptr_
  %_cond2_368 = or i1 %_cond2_1_366, %_cond2_2_367
  %_cond4_369 = icmp ule i8* %_pot_address_in_parent_stack_364, %_parent_stack_end_ptr_
  %_cond1_n_cond2_370 = and i1 %_cond1_365, %_cond2_368
  %_cond1_n_cond2_cond3_371 = and i1 %_cond4_369, %_cond1_n_cond2_370
  %.v10 = select i1 %_cond1_n_cond2_cond3_371, i8* %_pot_address_in_parent_stack_364, i8* %95
  %96 = bitcast i8* %.v10 to i64*
  %_new_load_374 = load i64, i64* %96, align 8
  %_new_gep_110 = getelementptr i8, i8* %95, i64 8
  %_ptr_to_int_375 = ptrtoint i8* %_new_gep_110 to i64
  %_offset_above_rbp_378 = sub i64 %_ptr_to_int_375, %1
  %_pot_address_in_parent_stack_379 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_378
  %_cond1_380 = icmp ugt i8* %_new_gep_110, %_local_stack_end_ptr_
  %_cond2_1_381 = icmp ugt i8* %_new_gep_110, %_parent_stack_end_ptr_
  %_cond2_2_382 = icmp ult i8* %_new_gep_110, %_parent_stack_start_ptr_
  %_cond2_383 = or i1 %_cond2_1_381, %_cond2_2_382
  %_cond4_384 = icmp ule i8* %_pot_address_in_parent_stack_379, %_parent_stack_end_ptr_
  %_cond1_n_cond2_385 = and i1 %_cond1_380, %_cond2_383
  %_cond1_n_cond2_cond3_386 = and i1 %_cond1_n_cond2_385, %_cond4_384
  %_address_in_parent_stack_bt_388._allin_new_bt_111.v = select i1 %_cond1_n_cond2_cond3_386, i8* %_pot_address_in_parent_stack_379, i8* %_new_gep_110
  %_address_in_parent_stack_bt_388._allin_new_bt_111 = bitcast i8* %_address_in_parent_stack_bt_388._allin_new_bt_111.v to i64*
  %_new_load_389 = load i64, i64* %_address_in_parent_stack_bt_388._allin_new_bt_111, align 8
  %_new_gep_112 = getelementptr i8, i8* %95, i64 16
  %_ptr_to_int_390 = ptrtoint i8* %_new_gep_112 to i64
  %_offset_above_rbp_393 = sub i64 %_ptr_to_int_390, %1
  %_pot_address_in_parent_stack_394 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_393
  %_cond1_395 = icmp ugt i8* %_new_gep_112, %_local_stack_end_ptr_
  %_cond2_1_396 = icmp ugt i8* %_new_gep_112, %_parent_stack_end_ptr_
  %_cond2_2_397 = icmp ult i8* %_new_gep_112, %_parent_stack_start_ptr_
  %_cond2_398 = or i1 %_cond2_1_396, %_cond2_2_397
  %_cond4_399 = icmp ule i8* %_pot_address_in_parent_stack_394, %_parent_stack_end_ptr_
  %_cond1_n_cond2_400 = and i1 %_cond1_395, %_cond2_398
  %_cond1_n_cond2_cond3_401 = and i1 %_cond1_n_cond2_400, %_cond4_399
  %.v11 = select i1 %_cond1_n_cond2_cond3_401, i8* %_pot_address_in_parent_stack_394, i8* %_new_gep_112
  %97 = bitcast i8* %.v11 to i64*
  %_new_load_404 = load i64, i64* %97, align 8
  %_new_gep_114 = getelementptr i8, i8* %95, i64 24
  %_ptr_to_int_405 = ptrtoint i8* %_new_gep_114 to i64
  %_offset_above_rbp_408 = sub i64 %_ptr_to_int_405, %1
  %_pot_address_in_parent_stack_409 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_408
  %_cond1_410 = icmp ugt i8* %_new_gep_114, %_local_stack_end_ptr_
  %_cond2_1_411 = icmp ugt i8* %_new_gep_114, %_parent_stack_end_ptr_
  %_cond2_2_412 = icmp ult i8* %_new_gep_114, %_parent_stack_start_ptr_
  %_cond2_413 = or i1 %_cond2_1_411, %_cond2_2_412
  %_cond4_414 = icmp ule i8* %_pot_address_in_parent_stack_409, %_parent_stack_end_ptr_
  %_cond1_n_cond2_415 = and i1 %_cond1_410, %_cond2_413
  %_cond1_n_cond2_cond3_416 = and i1 %_cond1_n_cond2_415, %_cond4_414
  %_address_in_parent_stack_bt_418._allin_new_bt_115.v = select i1 %_cond1_n_cond2_cond3_416, i8* %_pot_address_in_parent_stack_409, i8* %_new_gep_114
  %_address_in_parent_stack_bt_418._allin_new_bt_115 = bitcast i8* %_address_in_parent_stack_bt_418._allin_new_bt_115.v to i64*
  %_new_load_419 = load i64, i64* %_address_in_parent_stack_bt_418._allin_new_bt_115, align 8
  %_new_gep_116 = getelementptr i8, i8* %95, i64 32
  %_ptr_to_int_420 = ptrtoint i8* %_new_gep_116 to i64
  %_offset_above_rbp_423 = sub i64 %_ptr_to_int_420, %1
  %_pot_address_in_parent_stack_424 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_423
  %_cond1_425 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_426 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_427 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_428 = or i1 %_cond2_1_426, %_cond2_2_427
  %_cond4_429 = icmp ule i8* %_pot_address_in_parent_stack_424, %_parent_stack_end_ptr_
  %_cond1_n_cond2_430 = and i1 %_cond1_425, %_cond2_428
  %_cond1_n_cond2_cond3_431 = and i1 %_cond1_n_cond2_430, %_cond4_429
  %.v12 = select i1 %_cond1_n_cond2_cond3_431, i8* %_pot_address_in_parent_stack_424, i8* %_new_gep_116
  %98 = bitcast i8* %.v12 to i64*
  %_new_load_434 = load i64, i64* %98, align 8
  %_new_gep_118 = getelementptr i8, i8* %95, i64 40
  %_ptr_to_int_435 = ptrtoint i8* %_new_gep_118 to i64
  %_offset_above_rbp_438 = sub i64 %_ptr_to_int_435, %1
  %_pot_address_in_parent_stack_439 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_438
  %_cond1_440 = icmp ugt i8* %_new_gep_118, %_local_stack_end_ptr_
  %_cond2_1_441 = icmp ugt i8* %_new_gep_118, %_parent_stack_end_ptr_
  %_cond2_2_442 = icmp ult i8* %_new_gep_118, %_parent_stack_start_ptr_
  %_cond2_443 = or i1 %_cond2_1_441, %_cond2_2_442
  %_cond4_444 = icmp ule i8* %_pot_address_in_parent_stack_439, %_parent_stack_end_ptr_
  %_cond1_n_cond2_445 = and i1 %_cond1_440, %_cond2_443
  %_cond1_n_cond2_cond3_446 = and i1 %_cond1_n_cond2_445, %_cond4_444
  %_address_in_parent_stack_bt_448._allin_new_bt_119.v = select i1 %_cond1_n_cond2_cond3_446, i8* %_pot_address_in_parent_stack_439, i8* %_new_gep_118
  %_address_in_parent_stack_bt_448._allin_new_bt_119 = bitcast i8* %_address_in_parent_stack_bt_448._allin_new_bt_119.v to i64*
  %_new_load_449 = load i64, i64* %_address_in_parent_stack_bt_448._allin_new_bt_119, align 8
  %_new_gep_120 = getelementptr i8, i8* %95, i64 48
  %_ptr_to_int_450 = ptrtoint i8* %_new_gep_120 to i64
  %_offset_above_rbp_453 = sub i64 %_ptr_to_int_450, %1
  %_pot_address_in_parent_stack_454 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_453
  %_cond1_455 = icmp ugt i8* %_new_gep_120, %_local_stack_end_ptr_
  %_cond2_1_456 = icmp ugt i8* %_new_gep_120, %_parent_stack_end_ptr_
  %_cond2_2_457 = icmp ult i8* %_new_gep_120, %_parent_stack_start_ptr_
  %_cond2_458 = or i1 %_cond2_1_456, %_cond2_2_457
  %_cond4_459 = icmp ule i8* %_pot_address_in_parent_stack_454, %_parent_stack_end_ptr_
  %_cond1_n_cond2_460 = and i1 %_cond1_455, %_cond2_458
  %_cond1_n_cond2_cond3_461 = and i1 %_cond1_n_cond2_460, %_cond4_459
  %.v13 = select i1 %_cond1_n_cond2_cond3_461, i8* %_pot_address_in_parent_stack_454, i8* %_new_gep_120
  %99 = bitcast i8* %.v13 to i64*
  %_new_load_464 = load i64, i64* %99, align 8
  %_new_gep_122 = getelementptr i8, i8* %95, i64 56
  %_ptr_to_int_465 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_468 = sub i64 %_ptr_to_int_465, %1
  %_pot_address_in_parent_stack_469 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_468
  %_cond1_470 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_471 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_472 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_473 = or i1 %_cond2_1_471, %_cond2_2_472
  %_cond4_474 = icmp ule i8* %_pot_address_in_parent_stack_469, %_parent_stack_end_ptr_
  %_cond1_n_cond2_475 = and i1 %_cond1_470, %_cond2_473
  %_cond1_n_cond2_cond3_476 = and i1 %_cond1_n_cond2_475, %_cond4_474
  %_address_in_parent_stack_bt_478._allin_new_bt_123.v = select i1 %_cond1_n_cond2_cond3_476, i8* %_pot_address_in_parent_stack_469, i8* %_new_gep_122
  %_address_in_parent_stack_bt_478._allin_new_bt_123 = bitcast i8* %_address_in_parent_stack_bt_478._allin_new_bt_123.v to i64*
  %_new_load_479 = load i64, i64* %_address_in_parent_stack_bt_478._allin_new_bt_123, align 8
  %_new_gep_124 = getelementptr i8, i8* %95, i64 64
  %_ptr_to_int_480 = ptrtoint i8* %_new_gep_124 to i64
  %_offset_above_rbp_483 = sub i64 %_ptr_to_int_480, %1
  %_pot_address_in_parent_stack_484 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_483
  %_cond1_485 = icmp ugt i8* %_new_gep_124, %_local_stack_end_ptr_
  %_cond2_1_486 = icmp ugt i8* %_new_gep_124, %_parent_stack_end_ptr_
  %_cond2_2_487 = icmp ult i8* %_new_gep_124, %_parent_stack_start_ptr_
  %_cond2_488 = or i1 %_cond2_1_486, %_cond2_2_487
  %_cond4_489 = icmp ule i8* %_pot_address_in_parent_stack_484, %_parent_stack_end_ptr_
  %_cond1_n_cond2_490 = and i1 %_cond1_485, %_cond2_488
  %_cond1_n_cond2_cond3_491 = and i1 %_cond1_n_cond2_490, %_cond4_489
  %.v14 = select i1 %_cond1_n_cond2_cond3_491, i8* %_pot_address_in_parent_stack_484, i8* %_new_gep_124
  %100 = bitcast i8* %.v14 to i64*
  %_new_load_494 = load i64, i64* %100, align 8
  %_new_gep_126 = getelementptr i8, i8* %95, i64 72
  %_ptr_to_int_495 = ptrtoint i8* %_new_gep_126 to i64
  %_offset_above_rbp_498 = sub i64 %_ptr_to_int_495, %1
  %_pot_address_in_parent_stack_499 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_498
  %_cond1_500 = icmp ugt i8* %_new_gep_126, %_local_stack_end_ptr_
  %_cond2_1_501 = icmp ugt i8* %_new_gep_126, %_parent_stack_end_ptr_
  %_cond2_2_502 = icmp ult i8* %_new_gep_126, %_parent_stack_start_ptr_
  %_cond2_503 = or i1 %_cond2_1_501, %_cond2_2_502
  %_cond4_504 = icmp ule i8* %_pot_address_in_parent_stack_499, %_parent_stack_end_ptr_
  %_cond1_n_cond2_505 = and i1 %_cond1_500, %_cond2_503
  %_cond1_n_cond2_cond3_506 = and i1 %_cond1_n_cond2_505, %_cond4_504
  %_address_in_parent_stack_bt_508._allin_new_bt_127.v = select i1 %_cond1_n_cond2_cond3_506, i8* %_pot_address_in_parent_stack_499, i8* %_new_gep_126
  %_address_in_parent_stack_bt_508._allin_new_bt_127 = bitcast i8* %_address_in_parent_stack_bt_508._allin_new_bt_127.v to i64*
  %_new_load_509 = load i64, i64* %_address_in_parent_stack_bt_508._allin_new_bt_127, align 8
  %RSP_val.159 = load i64, i64* %XSP, align 8, !mcsema_real_eip !87
  %_new_gep_129 = getelementptr i8, i8* %95, i64 -8
  %101 = add i64 %RSP_val.159, -8
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_130, align 8, !mcsema_real_eip !87
  %102 = ptrtoint i8* %_new_gep_129 to i64
  store volatile i64 %102, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %101, i64* %XSP, align 8, !mcsema_real_eip !87
  %103 = call x86_64_sysvcc i64 @_printf(i64 %_new_load_359, i64 %94, i64 %RDX_val.154, i64 %RCX_val.155, i64 %R8_val.156, i64 %R9_val.157, i64 %_new_load_374, i64 %_new_load_389, i64 %_new_load_404, i64 %_new_load_419, i64 %_new_load_434, i64 %_new_load_449, i64 %_new_load_464, i64 %_new_load_479, i64 %_new_load_494, i64 %_new_load_509)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_16321 = load i8*, i8** %14, align 8
  %_gep_fix_164 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_16321, i64 8
  %104 = ptrtoint i8* %_gep_fix_164 to i64
  store i64 %104, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %103, i64* %XAX, align 8, !mcsema_real_eip !87
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_131 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_132 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_131, i64 -60
  %105 = ptrtoint i8* %_new_gep_132 to i64
  %_offset_above_rbp_513 = sub i64 %105, %1
  %_pot_address_in_parent_stack_514 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_513
  %_cond1_515 = icmp ugt i8* %_new_gep_132, %_local_stack_end_ptr_
  %_cond2_1_516 = icmp ugt i8* %_new_gep_132, %_parent_stack_end_ptr_
  %_cond2_2_517 = icmp ult i8* %_new_gep_132, %_parent_stack_start_ptr_
  %_cond2_518 = or i1 %_cond2_1_516, %_cond2_2_517
  %_cond4_519 = icmp ule i8* %_pot_address_in_parent_stack_514, %_parent_stack_end_ptr_
  %_cond1_n_cond2_520 = and i1 %_cond1_515, %_cond2_518
  %_cond1_n_cond2_cond3_521 = and i1 %_cond1_n_cond2_520, %_cond4_519
  %.v15 = select i1 %_cond1_n_cond2_cond3_521, i8* %_pot_address_in_parent_stack_514, i8* %_new_gep_132
  %106 = bitcast i8* %.v15 to i32*
  %_new_load_524 = load i32, i32* %106, align 4
  %107 = zext i32 %_new_load_524 to i64, !mcsema_real_eip !88
  store i64 %107, i64* %XCX, align 8, !mcsema_real_eip !88
  %_new_gep_135 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_131, i64 -88
  %108 = trunc i64 %103 to i32
  %109 = bitcast i8* %_new_gep_135 to i32*
  store i32 %108, i32* %109, align 4, !mcsema_real_eip !89
  %ECX_val.165 = load i32, i32* %ECX.137, align 4, !mcsema_real_eip !90
  %110 = zext i32 %ECX_val.165 to i64, !mcsema_real_eip !90
  store i64 %110, i64* %XAX, align 8, !mcsema_real_eip !90
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_137 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %111 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_137 to i8*
  %RSP_val.166 = load i64, i64* %XSP, align 8, !mcsema_real_eip !91
  %_new_gep_138 = getelementptr i8, i8* %111, i64 112
  %112 = add i64 %RSP_val.166, 112, !mcsema_real_eip !91
  %_trans_p2i_139 = ptrtoint i8* %_new_gep_138 to i64
  %_trans_xor_141 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_137, %_trans_p2i_139
  %113 = and i64 %_trans_xor_141, 16
  %114 = icmp eq i64 %113, 0
  store i1 %114, i1* %AF, align 1, !mcsema_real_eip !91
  %115 = icmp slt i64 %112, 0
  store i1 %115, i1* %SF, align 1, !mcsema_real_eip !91
  %_trans_icmp_eq_143 = icmp eq i8* %_new_gep_138, null
  store i1 %_trans_icmp_eq_143, i1* %ZF, align 1, !mcsema_real_eip !91
  %116 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_137, -9223372036854775808, !mcsema_real_eip !91
  %117 = and i64 %_trans_xor_141, %116, !mcsema_real_eip !91
  %118 = icmp slt i64 %117, 0
  store i1 %118, i1* %OF, align 1, !mcsema_real_eip !91
  %_trans_trunc_150 = trunc i64 %_trans_p2i_139 to i8
  %119 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_150), !mcsema_real_eip !91
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  store i1 %121, i1* %PF, align 1, !mcsema_real_eip !91
  %_trans_icmp_ne_152 = icmp ne i64 %RSP_val.166, %_trans_p2i_139
  store i1 %_trans_icmp_ne_152, i1* %CF, align 1, !mcsema_real_eip !91
  store volatile i64 %_trans_p2i_139, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %112, i64* %XSP, align 8, !mcsema_real_eip !91
  %_offset_above_rbp_528 = sub i64 %_trans_p2i_139, %1
  %_pot_address_in_parent_stack_529 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_528
  %_cond1_530 = icmp ugt i8* %_new_gep_138, %_local_stack_end_ptr_
  %_cond2_1_531 = icmp ugt i8* %_new_gep_138, %_parent_stack_end_ptr_
  %_cond2_2_532 = icmp ult i8* %_new_gep_138, %_parent_stack_start_ptr_
  %_cond2_533 = or i1 %_cond2_1_531, %_cond2_2_532
  %_cond4_534 = icmp ule i8* %_pot_address_in_parent_stack_529, %_parent_stack_end_ptr_
  %_cond1_n_cond2_535 = and i1 %_cond1_530, %_cond2_533
  %_cond1_n_cond2_cond3_536 = and i1 %_cond1_n_cond2_535, %_cond4_534
  %_address_in_parent_stack_bt_538._allin_new_bt_154.v = select i1 %_cond1_n_cond2_cond3_536, i8* %_pot_address_in_parent_stack_529, i8* %_new_gep_138
  %_address_in_parent_stack_bt_538._allin_new_bt_154 = bitcast i8* %_address_in_parent_stack_bt_538._allin_new_bt_154.v to i64*
  %_new_load_539 = load i64, i64* %_address_in_parent_stack_bt_538._allin_new_bt_154, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_539 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_539, i64* %XBP, align 8, !mcsema_real_eip !92
  %_new_gep_155 = getelementptr i8, i8* %111, i64 120
  %122 = add i64 %RSP_val.166, 120, !mcsema_real_eip !92
  %123 = ptrtoint i8* %_new_gep_155 to i64
  store volatile i64 %123, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %122, i64* %XSP, align 8, !mcsema_real_eip !92
  %_new_gep_157 = getelementptr i8, i8* %111, i64 128
  %124 = add i64 %RSP_val.166, 128, !mcsema_real_eip !93
  %_offset_above_rbp_543 = sub i64 %123, %1
  %_pot_address_in_parent_stack_544 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_543
  %_cond1_545 = icmp ugt i8* %_new_gep_155, %_local_stack_end_ptr_
  %_cond2_1_546 = icmp ugt i8* %_new_gep_155, %_parent_stack_end_ptr_
  %_cond2_2_547 = icmp ult i8* %_new_gep_155, %_parent_stack_start_ptr_
  %_cond2_548 = or i1 %_cond2_1_546, %_cond2_2_547
  %_cond4_549 = icmp ule i8* %_pot_address_in_parent_stack_544, %_parent_stack_end_ptr_
  %_cond1_n_cond2_550 = and i1 %_cond1_545, %_cond2_548
  %_cond1_n_cond2_cond3_551 = and i1 %_cond1_n_cond2_550, %_cond4_549
  %.v16 = select i1 %_cond1_n_cond2_cond3_551, i8* %_pot_address_in_parent_stack_544, i8* %_new_gep_155
  %125 = bitcast i8* %.v16 to i64*
  %_new_load_554 = load i64, i64* %125, align 8
  store i64 %_new_load_554, i64* %XIP, align 8, !mcsema_real_eip !93
  %126 = ptrtoint i8* %_new_gep_157 to i64
  store volatile i64 %126, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %124, i64* %XSP, align 8, !mcsema_real_eip !93
  ret void, !mcsema_real_eip !93
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
!6 = !{i64 12}
!7 = !{i64 15}
!8 = !{i64 18}
!9 = !{i64 21}
!10 = !{i64 24}
!11 = !{i64 28}
!12 = !{i64 32}
!13 = !{i64 36}
!14 = !{i64 40}
!15 = !{i64 44}
!16 = !{i64 46}
!17 = !{i64 50}
!18 = !{i64 52}
!19 = !{i64 54}
!20 = !{i64 57}
!21 = !{i64 61}
!22 = !{i64 64}
!23 = !{i64 68}
!24 = !{i64 71}
!25 = !{i64 73}
!26 = !{i64 76}
!27 = !{i64 80}
!28 = !{i64 83}
!29 = !{i64 87}
!30 = !{i64 90}
!31 = !{i64 92}
!32 = !{i64 95}
!33 = !{i64 98}
!34 = !{i64 101}
!35 = !{i64 105}
!36 = !{i64 109}
!37 = !{i64 112}
!38 = !{i64 115}
!39 = !{i64 119}
!40 = !{i64 123}
!41 = !{i64 127}
!42 = !{i64 130}
!43 = !{i64 131}
!44 = !{i64 144}
!45 = !{i64 145}
!46 = !{i64 148}
!47 = !{i64 190}
!48 = !{i64 195}
!49 = !{i64 197}
!50 = !{i64 201}
!51 = !{i64 204}
!52 = !{i64 209}
!53 = !{i64 213}
!54 = !{i64 217}
!55 = !{i64 223}
!56 = !{i64 227}
!57 = !{i64 234}
!58 = !{i64 238}
!59 = !{i64 245}
!60 = !{i64 252}
!61 = !{i64 256}
!62 = !{i64 260}
!63 = !{i64 273}
!64 = !{i64 279}
!65 = !{i64 281}
!66 = !{i64 284}
!67 = !{i64 287}
!68 = !{i64 290}
!69 = !{i64 293}
!70 = !{i64 297}
!71 = !{i64 301}
!72 = !{i64 304}
!73 = !{i64 308}
!74 = !{i64 313}
!75 = !{i64 316}
!76 = !{i64 320}
!77 = !{i64 324}
!78 = !{i64 328}
!79 = !{i64 331}
!80 = !{i64 334}
!81 = !{i64 337}
!82 = !{i64 340}
!83 = !{i64 343}
!84 = !{i64 346}
!85 = !{i64 349}
!86 = !{i64 353}
!87 = !{i64 355}
!88 = !{i64 360}
!89 = !{i64 363}
!90 = !{i64 366}
!91 = !{i64 368}
!92 = !{i64 372}
!93 = !{i64 373}
