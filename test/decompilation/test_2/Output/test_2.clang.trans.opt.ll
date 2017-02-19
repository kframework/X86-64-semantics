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
  %4 = inttoptr i64 %3 to i32*, !mcsema_real_eip !4
  %5 = load i32, i32* %4, align 4, !mcsema_real_eip !4
  %6 = zext i32 %5 to i64, !mcsema_real_eip !4
  store i64 %6, i64* %XAX, align 8, !mcsema_real_eip !4
  %7 = add i64 %RSP_val.1, 8, !mcsema_real_eip !5
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !5
  %9 = load i32, i32* %8, align 4, !mcsema_real_eip !5
  %10 = zext i32 %9 to i64, !mcsema_real_eip !5
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !5
  %11 = add i64 %RSP_val.1, -12, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, align 4, !mcsema_real_eip !6
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %12, align 4, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %13 = add i64 %RBP_val.8, -8, !mcsema_real_eip !7
  %ESI.9 = bitcast i64* %XSI to i32*, !mcsema_real_eip !7
  %ESI_val.10 = load i32, i32* %ESI.9, align 4, !mcsema_real_eip !7
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !7
  store i32 %ESI_val.10, i32* %14, align 4, !mcsema_real_eip !7
  %RBP_val.11 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %15 = add i64 %RBP_val.11, -12, !mcsema_real_eip !8
  %EDX.12 = bitcast i64* %XDX to i32*, !mcsema_real_eip !8
  %EDX_val.13 = load i32, i32* %EDX.12, align 4, !mcsema_real_eip !8
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !8
  store i32 %EDX_val.13, i32* %16, align 4, !mcsema_real_eip !8
  %RBP_val.14 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %17 = add i64 %RBP_val.14, -16, !mcsema_real_eip !9
  %ECX.15 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.16 = load i32, i32* %ECX.15, align 4, !mcsema_real_eip !9
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.16, i32* %18, align 4, !mcsema_real_eip !9
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %19 = add i64 %RBP_val.17, -20, !mcsema_real_eip !10
  %R8D.18 = bitcast i64* %R8 to i32*, !mcsema_real_eip !10
  %R8D_val.19 = load i32, i32* %R8D.18, align 4, !mcsema_real_eip !10
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !10
  store i32 %R8D_val.19, i32* %20, align 4, !mcsema_real_eip !10
  %RBP_val.20 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %21 = add i64 %RBP_val.20, -24, !mcsema_real_eip !11
  %R9D.21 = bitcast i64* %R9 to i32*, !mcsema_real_eip !11
  %R9D_val.22 = load i32, i32* %R9D.21, align 4, !mcsema_real_eip !11
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !11
  store i32 %R9D_val.22, i32* %22, align 4, !mcsema_real_eip !11
  %RBP_val.23 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %23 = add i64 %RBP_val.23, -28, !mcsema_real_eip !12
  %R10D.24 = bitcast i64* %R10 to i32*, !mcsema_real_eip !12
  %R10D_val.25 = load i32, i32* %R10D.24, align 4, !mcsema_real_eip !12
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !12
  store i32 %R10D_val.25, i32* %24, align 4, !mcsema_real_eip !12
  %RBP_val.26 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %25 = add i64 %RBP_val.26, -32, !mcsema_real_eip !13
  %EAX.27 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.28 = load i32, i32* %EAX.27, align 4, !mcsema_real_eip !13
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.28, i32* %26, align 4, !mcsema_real_eip !13
  %RBP_val.29 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %27 = add i64 %RBP_val.29, -4, !mcsema_real_eip !14
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !14
  %29 = load i32, i32* %28, align 4, !mcsema_real_eip !14
  %30 = zext i32 %29 to i64, !mcsema_real_eip !14
  store i64 %30, i64* %XAX, align 8, !mcsema_real_eip !14
  %31 = add i64 %RBP_val.29, -8, !mcsema_real_eip !15
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !15
  %33 = load i32, i32* %32, align 4, !mcsema_real_eip !15
  %34 = add i32 %29, %33, !mcsema_real_eip !15
  %35 = xor i32 %34, %33, !mcsema_real_eip !15
  %36 = xor i32 %35, %29, !mcsema_real_eip !15
  %37 = and i32 %36, 16, !mcsema_real_eip !15
  %38 = icmp ne i32 %37, 0, !mcsema_real_eip !15
  store i1 %38, i1* %AF, align 1, !mcsema_real_eip !15
  %39 = icmp slt i32 %34, 0
  store i1 %39, i1* %SF, align 1, !mcsema_real_eip !15
  %40 = icmp eq i32 %34, 0, !mcsema_real_eip !15
  store i1 %40, i1* %ZF, align 1, !mcsema_real_eip !15
  %41 = xor i32 %33, -2147483648, !mcsema_real_eip !15
  %42 = xor i32 %41, %29, !mcsema_real_eip !15
  %43 = and i32 %35, %42, !mcsema_real_eip !15
  %44 = icmp slt i32 %43, 0
  store i1 %44, i1* %OF, align 1, !mcsema_real_eip !15
  %45 = trunc i32 %34 to i8, !mcsema_real_eip !15
  %46 = tail call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !15
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  store i1 %48, i1* %PF, align 1, !mcsema_real_eip !15
  %49 = icmp ult i32 %34, %33, !mcsema_real_eip !15
  store i1 %49, i1* %CF, align 1, !mcsema_real_eip !15
  %50 = zext i32 %34 to i64, !mcsema_real_eip !15
  store i64 %50, i64* %XAX, align 8, !mcsema_real_eip !15
  %51 = add i64 %RBP_val.29, -12, !mcsema_real_eip !16
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !16
  %53 = load i32, i32* %52, align 4, !mcsema_real_eip !16
  %54 = add i32 %34, %53, !mcsema_real_eip !16
  %55 = xor i32 %54, %53, !mcsema_real_eip !16
  %56 = xor i32 %55, %34, !mcsema_real_eip !16
  %57 = and i32 %56, 16, !mcsema_real_eip !16
  %58 = icmp ne i32 %57, 0, !mcsema_real_eip !16
  store i1 %58, i1* %AF, align 1, !mcsema_real_eip !16
  %59 = icmp slt i32 %54, 0
  store i1 %59, i1* %SF, align 1, !mcsema_real_eip !16
  %60 = icmp eq i32 %54, 0, !mcsema_real_eip !16
  store i1 %60, i1* %ZF, align 1, !mcsema_real_eip !16
  %61 = xor i32 %53, -2147483648, !mcsema_real_eip !16
  %62 = xor i32 %61, %34, !mcsema_real_eip !16
  %63 = and i32 %55, %62, !mcsema_real_eip !16
  %64 = icmp slt i32 %63, 0
  store i1 %64, i1* %OF, align 1, !mcsema_real_eip !16
  %65 = trunc i32 %54 to i8, !mcsema_real_eip !16
  %66 = tail call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !16
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  store i1 %68, i1* %PF, align 1, !mcsema_real_eip !16
  %69 = icmp ult i32 %54, %53, !mcsema_real_eip !16
  store i1 %69, i1* %CF, align 1, !mcsema_real_eip !16
  %70 = zext i32 %54 to i64, !mcsema_real_eip !16
  store i64 %70, i64* %XAX, align 8, !mcsema_real_eip !16
  %71 = add i64 %RBP_val.29, -16, !mcsema_real_eip !17
  %72 = inttoptr i64 %71 to i32*, !mcsema_real_eip !17
  %73 = load i32, i32* %72, align 4, !mcsema_real_eip !17
  %74 = add i32 %54, %73, !mcsema_real_eip !17
  %75 = xor i32 %74, %73, !mcsema_real_eip !17
  %76 = xor i32 %75, %54, !mcsema_real_eip !17
  %77 = and i32 %76, 16, !mcsema_real_eip !17
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !17
  store i1 %78, i1* %AF, align 1, !mcsema_real_eip !17
  %79 = icmp slt i32 %74, 0
  store i1 %79, i1* %SF, align 1, !mcsema_real_eip !17
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !17
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !17
  %81 = xor i32 %73, -2147483648, !mcsema_real_eip !17
  %82 = xor i32 %81, %54, !mcsema_real_eip !17
  %83 = and i32 %75, %82, !mcsema_real_eip !17
  %84 = icmp slt i32 %83, 0
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !17
  %85 = trunc i32 %74 to i8, !mcsema_real_eip !17
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !17
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !17
  %89 = icmp ult i32 %74, %73, !mcsema_real_eip !17
  store i1 %89, i1* %CF, align 1, !mcsema_real_eip !17
  %90 = zext i32 %74 to i64, !mcsema_real_eip !17
  store i64 %90, i64* %XAX, align 8, !mcsema_real_eip !17
  %91 = add i64 %RBP_val.29, -20, !mcsema_real_eip !18
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !18
  %93 = load i32, i32* %92, align 4, !mcsema_real_eip !18
  %94 = add i32 %74, %93, !mcsema_real_eip !18
  %95 = xor i32 %94, %93, !mcsema_real_eip !18
  %96 = xor i32 %95, %74, !mcsema_real_eip !18
  %97 = and i32 %96, 16, !mcsema_real_eip !18
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !18
  store i1 %98, i1* %AF, align 1, !mcsema_real_eip !18
  %99 = icmp slt i32 %94, 0
  store i1 %99, i1* %SF, align 1, !mcsema_real_eip !18
  %100 = icmp eq i32 %94, 0, !mcsema_real_eip !18
  store i1 %100, i1* %ZF, align 1, !mcsema_real_eip !18
  %101 = xor i32 %93, -2147483648, !mcsema_real_eip !18
  %102 = xor i32 %101, %74, !mcsema_real_eip !18
  %103 = and i32 %95, %102, !mcsema_real_eip !18
  %104 = icmp slt i32 %103, 0
  store i1 %104, i1* %OF, align 1, !mcsema_real_eip !18
  %105 = trunc i32 %94 to i8, !mcsema_real_eip !18
  %106 = tail call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !18
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  store i1 %108, i1* %PF, align 1, !mcsema_real_eip !18
  %109 = icmp ult i32 %94, %93, !mcsema_real_eip !18
  store i1 %109, i1* %CF, align 1, !mcsema_real_eip !18
  %110 = zext i32 %94 to i64, !mcsema_real_eip !18
  store i64 %110, i64* %XAX, align 8, !mcsema_real_eip !18
  %111 = add i64 %RBP_val.29, -24, !mcsema_real_eip !19
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !19
  %113 = load i32, i32* %112, align 4, !mcsema_real_eip !19
  %114 = add i32 %94, %113, !mcsema_real_eip !19
  %115 = xor i32 %114, %113, !mcsema_real_eip !19
  %116 = xor i32 %115, %94, !mcsema_real_eip !19
  %117 = and i32 %116, 16, !mcsema_real_eip !19
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !19
  store i1 %118, i1* %AF, align 1, !mcsema_real_eip !19
  %119 = icmp slt i32 %114, 0
  store i1 %119, i1* %SF, align 1, !mcsema_real_eip !19
  %120 = icmp eq i32 %114, 0, !mcsema_real_eip !19
  store i1 %120, i1* %ZF, align 1, !mcsema_real_eip !19
  %121 = xor i32 %113, -2147483648, !mcsema_real_eip !19
  %122 = xor i32 %121, %94, !mcsema_real_eip !19
  %123 = and i32 %115, %122, !mcsema_real_eip !19
  %124 = icmp slt i32 %123, 0
  store i1 %124, i1* %OF, align 1, !mcsema_real_eip !19
  %125 = trunc i32 %114 to i8, !mcsema_real_eip !19
  %126 = tail call i8 @llvm.ctpop.i8(i8 %125), !mcsema_real_eip !19
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  store i1 %128, i1* %PF, align 1, !mcsema_real_eip !19
  %129 = icmp ult i32 %114, %113, !mcsema_real_eip !19
  store i1 %129, i1* %CF, align 1, !mcsema_real_eip !19
  %130 = zext i32 %114 to i64, !mcsema_real_eip !19
  store i64 %130, i64* %XAX, align 8, !mcsema_real_eip !19
  %131 = add i64 %RBP_val.29, -28, !mcsema_real_eip !20
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !20
  %133 = load i32, i32* %132, align 4, !mcsema_real_eip !20
  %134 = add i32 %114, %133, !mcsema_real_eip !20
  %135 = xor i32 %134, %133, !mcsema_real_eip !20
  %136 = xor i32 %135, %114, !mcsema_real_eip !20
  %137 = and i32 %136, 16, !mcsema_real_eip !20
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !20
  store i1 %138, i1* %AF, align 1, !mcsema_real_eip !20
  %139 = icmp slt i32 %134, 0
  store i1 %139, i1* %SF, align 1, !mcsema_real_eip !20
  %140 = icmp eq i32 %134, 0, !mcsema_real_eip !20
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !20
  %141 = xor i32 %133, -2147483648, !mcsema_real_eip !20
  %142 = xor i32 %141, %114, !mcsema_real_eip !20
  %143 = and i32 %135, %142, !mcsema_real_eip !20
  %144 = icmp slt i32 %143, 0
  store i1 %144, i1* %OF, align 1, !mcsema_real_eip !20
  %145 = trunc i32 %134 to i8, !mcsema_real_eip !20
  %146 = tail call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !20
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  store i1 %148, i1* %PF, align 1, !mcsema_real_eip !20
  %149 = icmp ult i32 %134, %133, !mcsema_real_eip !20
  store i1 %149, i1* %CF, align 1, !mcsema_real_eip !20
  %150 = zext i32 %134 to i64, !mcsema_real_eip !20
  store i64 %150, i64* %XAX, align 8, !mcsema_real_eip !20
  %151 = add i64 %RBP_val.29, -36, !mcsema_real_eip !21
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !21
  store i32 %134, i32* %152, align 4, !mcsema_real_eip !21
  %RBP_val.51 = load i64, i64* %XBP, align 8, !mcsema_real_eip !22
  %153 = add i64 %RBP_val.51, -36, !mcsema_real_eip !22
  %154 = inttoptr i64 %153 to i32*, !mcsema_real_eip !22
  %155 = load i32, i32* %154, align 4, !mcsema_real_eip !22
  %156 = add i32 %155, -40
  %157 = xor i32 %156, %155, !mcsema_real_eip !22
  %158 = and i32 %157, 16, !mcsema_real_eip !22
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !22
  store i1 %159, i1* %AF, align 1, !mcsema_real_eip !22
  %160 = trunc i32 %156 to i8, !mcsema_real_eip !22
  %161 = tail call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !22
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !22
  %164 = icmp eq i32 %156, 0, !mcsema_real_eip !22
  store i1 %164, i1* %ZF, align 1, !mcsema_real_eip !22
  %165 = icmp slt i32 %156, 0
  store i1 %165, i1* %SF, align 1, !mcsema_real_eip !22
  %166 = icmp ult i32 %155, 40, !mcsema_real_eip !22
  store i1 %166, i1* %CF, align 1, !mcsema_real_eip !22
  %167 = and i32 %157, %155, !mcsema_real_eip !22
  %168 = icmp slt i32 %167, 0
  store i1 %168, i1* %OF, align 1, !mcsema_real_eip !22
  %169 = xor i1 %165, %168
  %170 = or i1 %164, %169, !mcsema_real_eip !23
  %171 = load i32, i32* %154, align 4
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %XAX, align 8
  %173 = add i64 %RBP_val.51, -32
  %174 = inttoptr i64 %173 to i32*
  %175 = add i64 %RBP_val.51, -40
  %176 = load i32, i32* %174, align 4
  br i1 %170, label %block_0x56, label %block_0x48, !mcsema_real_eip !23

block_0x48:                                       ; preds = %entry
  %177 = add i32 %171, %176, !mcsema_real_eip !24
  %178 = xor i32 %177, %176, !mcsema_real_eip !24
  %179 = xor i32 %178, %171, !mcsema_real_eip !24
  %180 = and i32 %179, 16, !mcsema_real_eip !24
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !24
  store i1 %181, i1* %AF, align 1, !mcsema_real_eip !24
  %182 = icmp slt i32 %177, 0
  store i1 %182, i1* %SF, align 1, !mcsema_real_eip !24
  %183 = icmp eq i32 %177, 0, !mcsema_real_eip !24
  store i1 %183, i1* %ZF, align 1, !mcsema_real_eip !24
  %184 = xor i32 %176, -2147483648, !mcsema_real_eip !24
  %185 = xor i32 %184, %171, !mcsema_real_eip !24
  %186 = and i32 %178, %185, !mcsema_real_eip !24
  %187 = icmp slt i32 %186, 0
  store i1 %187, i1* %OF, align 1, !mcsema_real_eip !24
  %188 = trunc i32 %177 to i8, !mcsema_real_eip !24
  %189 = tail call i8 @llvm.ctpop.i8(i8 %188), !mcsema_real_eip !24
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  store i1 %191, i1* %PF, align 1, !mcsema_real_eip !24
  %192 = icmp ult i32 %177, %176, !mcsema_real_eip !24
  store i1 %192, i1* %CF, align 1, !mcsema_real_eip !24
  br label %block_0x5f, !mcsema_real_eip !25

block_0x56:                                       ; preds = %entry
  %193 = sub i32 %171, %176, !mcsema_real_eip !26
  %194 = xor i32 %193, %171, !mcsema_real_eip !26
  %195 = xor i32 %194, %176, !mcsema_real_eip !26
  %196 = and i32 %195, 16, !mcsema_real_eip !26
  %197 = icmp ne i32 %196, 0, !mcsema_real_eip !26
  store i1 %197, i1* %AF, align 1, !mcsema_real_eip !26
  %198 = trunc i32 %193 to i8, !mcsema_real_eip !26
  %199 = tail call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !26
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  store i1 %201, i1* %PF, align 1, !mcsema_real_eip !26
  %202 = icmp eq i32 %193, 0, !mcsema_real_eip !26
  store i1 %202, i1* %ZF, align 1, !mcsema_real_eip !26
  %203 = icmp slt i32 %193, 0
  store i1 %203, i1* %SF, align 1, !mcsema_real_eip !26
  %204 = icmp ult i32 %171, %176, !mcsema_real_eip !26
  store i1 %204, i1* %CF, align 1, !mcsema_real_eip !26
  %205 = xor i32 %171, %176, !mcsema_real_eip !26
  %206 = and i32 %194, %205, !mcsema_real_eip !26
  %207 = icmp slt i32 %206, 0
  store i1 %207, i1* %OF, align 1, !mcsema_real_eip !26
  br label %block_0x5f, !mcsema_real_eip !27

block_0x5f:                                       ; preds = %block_0x56, %block_0x48
  %storemerge.in = phi i32 [ %193, %block_0x56 ], [ %177, %block_0x48 ]
  %storemerge = zext i32 %storemerge.in to i64
  store i64 %storemerge, i64* %XAX, align 8
  %208 = inttoptr i64 %175 to i32*
  store i32 %storemerge.in, i32* %208, align 4
  %RBP_val.66 = load i64, i64* %XBP, align 8, !mcsema_real_eip !27
  %209 = add i64 %RBP_val.66, -40, !mcsema_real_eip !27
  %210 = inttoptr i64 %209 to i32*, !mcsema_real_eip !27
  %211 = load i32, i32* %210, align 4, !mcsema_real_eip !27
  %212 = zext i32 %211 to i64, !mcsema_real_eip !27
  store i64 %212, i64* %XAX, align 8, !mcsema_real_eip !27
  %RSP_val.67 = load i64, i64* %XSP, align 8, !mcsema_real_eip !28
  %213 = inttoptr i64 %RSP_val.67 to i64*, !mcsema_real_eip !28
  %214 = load i64, i64* %213, align 8, !mcsema_real_eip !28
  store i64 %214, i64* %XBP, align 8, !mcsema_real_eip !28
  %215 = add i64 %RSP_val.67, 8, !mcsema_real_eip !28
  store i64 %215, i64* %XSP, align 8, !mcsema_real_eip !28
  %216 = add i64 %RSP_val.67, 16, !mcsema_real_eip !29
  %217 = inttoptr i64 %215 to i64*, !mcsema_real_eip !29
  %218 = load i64, i64* %217, align 8, !mcsema_real_eip !29
  store i64 %218, i64* %XIP, align 8, !mcsema_real_eip !29
  store i64 %216, i64* %XSP, align 8, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !30
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !30
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !30
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !30
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !30
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !30
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !30
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !30
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !30
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !30
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !30
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !30
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !30
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !30
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !30
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !30
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !30
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !30
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !30
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !30
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !30
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !30
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !30
  %RSP_val.70 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %1 = add i64 %RSP_val.70, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !31
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.70, -56
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16
  %5 = icmp eq i64 %4, 0
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !32
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !32
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !32
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !32
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !32
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 48 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !32
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !32
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !32
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !32
  %12 = bitcast i64* %XSI to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %12, align 8
  %13 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 40, i64 30>, <2 x i64>* %13, align 8
  %14 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 50, i64 60>, <2 x i64>* %14, align 8
  store i64 70, i64* %XAX, align 8, !mcsema_real_eip !33
  store i64 80, i64* %R10, align 8, !mcsema_real_eip !34
  %15 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %16 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %16, align 4, !mcsema_real_eip !35
  %17 = bitcast i8* %_new_gep_3 to i32*
  store i32 70, i32* %17, align 4, !mcsema_real_eip !36
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_19, i64 8
  %18 = bitcast i8* %_new_gep_20 to i32*
  store i32 80, i32* %18, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_228 = load i8*, i8** %15, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_228, i64 -12
  %R10D.77 = bitcast i64* %R10 to i32*, !mcsema_real_eip !38
  %R10D_val.78 = load i32, i32* %R10D.77, align 4, !mcsema_real_eip !38
  %19 = bitcast i8* %_new_gep_23 to i32*
  store i32 %R10D_val.78, i32* %19, align 4, !mcsema_real_eip !38
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_259 = load i8*, i8** %15, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_259, i64 -16
  %EAX.80 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.81 = load i32, i32* %EAX.80, align 4, !mcsema_real_eip !39
  %20 = bitcast i8* %_new_gep_26 to i32*
  store i32 %EAX_val.81, i32* %20, align 4, !mcsema_real_eip !39
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.82 = load i64, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 -8
  %21 = add i64 %RSP_val.82, -8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !40
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %21, i64* %XSP, align 8, !mcsema_real_eip !40
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8010 = load i8*, i8** %15, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_29, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8010)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0xea to i64), i64* %XDI, align 8, !mcsema_real_eip !41
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3111 = load i8*, i8** %15, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3111, i64 -8
  %EAX_val.85 = load i32, i32* %EAX.80, align 4, !mcsema_real_eip !42
  %22 = bitcast i8* %_new_gep_32 to i32*
  store i32 %EAX_val.85, i32* %22, align 4, !mcsema_real_eip !42
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3412 = load i8*, i8** %15, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3412, i64 -8
  %23 = bitcast i8* %_new_gep_35 to i32*
  %24 = load i32, i32* %23, align 4, !mcsema_real_eip !43
  %25 = zext i32 %24 to i64, !mcsema_real_eip !43
  store i64 %25, i64* %XSI, align 8, !mcsema_real_eip !43
  %AL.87 = bitcast i64* %XAX to i8*, !mcsema_real_eip !44
  store i8 0, i8* %AL.87, align 1, !mcsema_real_eip !44
  %RDI_val.88 = load i64, i64* %XDI, align 8, !mcsema_real_eip !45
  %RDX_val.90 = load i64, i64* %XDX, align 8, !mcsema_real_eip !45
  %RCX_val.91 = load i64, i64* %XCX, align 8, !mcsema_real_eip !45
  %R8_val.92 = load i64, i64* %R8, align 8, !mcsema_real_eip !45
  %R9_val.93 = load i64, i64* %R9, align 8, !mcsema_real_eip !45
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_, align 8
  %_allin_new_bt_38 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 to i64*
  %26 = load i64, i64* %_allin_new_bt_38, align 8, !mcsema_real_eip !45
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 8
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %27 = load i64, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !45
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 16
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %28 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !45
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 24
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %29 = load i64, i64* %_allin_new_bt_44, align 8, !mcsema_real_eip !45
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 32
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %30 = load i64, i64* %_allin_new_bt_46, align 8, !mcsema_real_eip !45
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 40
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %31 = load i64, i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !45
  %RSP_val.95 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 -8
  %32 = add i64 %RSP_val.95, -8
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !45
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %32, i64* %XSP, align 8, !mcsema_real_eip !45
  %33 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.88, i64 %25, i64 %RDX_val.90, i64 %RCX_val.91, i64 %R8_val.92, i64 %R9_val.93, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_82 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_83 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_82, i64 8
  store i8* %_gep_fix_83, i8** %_RSP_ptr_, align 8
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !45
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5213 = load i8*, i8** %15, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5213, i64 -8
  %34 = bitcast i8* %_new_gep_53 to i32*
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !46
  %36 = zext i32 %35 to i64, !mcsema_real_eip !46
  store i64 %36, i64* %XCX, align 8, !mcsema_real_eip !46
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5213, i64 -20
  %37 = trunc i64 %33 to i32
  %38 = bitcast i8* %_new_gep_56 to i32*
  store i32 %37, i32* %38, align 4, !mcsema_real_eip !47
  %ECX.100 = bitcast i64* %XCX to i32*, !mcsema_real_eip !48
  %ECX_val.101 = load i32, i32* %ECX.100, align 4, !mcsema_real_eip !48
  %39 = zext i32 %ECX_val.101 to i64, !mcsema_real_eip !48
  store i64 %39, i64* %XAX, align 8, !mcsema_real_eip !48
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.102 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %_new_gep_59 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58, i64 48
  %40 = add i64 %RSP_val.102, 48, !mcsema_real_eip !49
  %_trans_p2i_60 = ptrtoint i8* %_new_gep_59 to i64
  %_trans_p2i_61 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58 to i64
  %_trans_xor_62 = xor i64 %_trans_p2i_60, %_trans_p2i_61
  %41 = and i64 %_trans_xor_62, 16
  %42 = icmp eq i64 %41, 0
  store i1 %42, i1* %AF, align 1, !mcsema_real_eip !49
  %43 = icmp slt i64 %40, 0
  store i1 %43, i1* %SF, align 1, !mcsema_real_eip !49
  %_trans_icmp_eq_64 = icmp eq i8* %_new_gep_59, null
  store i1 %_trans_icmp_eq_64, i1* %ZF, align 1, !mcsema_real_eip !49
  %44 = xor i64 %_trans_p2i_61, -9223372036854775808, !mcsema_real_eip !49
  %45 = and i64 %_trans_xor_62, %44, !mcsema_real_eip !49
  %46 = icmp slt i64 %45, 0
  store i1 %46, i1* %OF, align 1, !mcsema_real_eip !49
  %_trans_trunc_71 = trunc i64 %_trans_p2i_60 to i8
  %47 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_71), !mcsema_real_eip !49
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  store i1 %49, i1* %PF, align 1, !mcsema_real_eip !49
  %_trans_icmp_ne_73 = icmp ne i64 %RSP_val.102, %_trans_p2i_60
  store i1 %_trans_icmp_ne_73, i1* %CF, align 1, !mcsema_real_eip !49
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_, align 8
  store i64 %40, i64* %XSP, align 8, !mcsema_real_eip !49
  %_allin_new_bt_75 = bitcast i8* %_new_gep_59 to i64*
  %50 = load i64, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !50
  store volatile i64 %50, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %50, i64* %XBP, align 8, !mcsema_real_eip !50
  %_new_gep_76 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58, i64 56
  %51 = add i64 %RSP_val.102, 56, !mcsema_real_eip !50
  store volatile i8* %_new_gep_76, i8** %_RSP_ptr_, align 8
  store i64 %51, i64* %XSP, align 8, !mcsema_real_eip !50
  %_new_gep_78 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58, i64 64
  %52 = add i64 %RSP_val.102, 64, !mcsema_real_eip !51
  %_allin_new_bt_79 = bitcast i8* %_new_gep_76 to i64*
  %53 = load i64, i64* %_allin_new_bt_79, align 8, !mcsema_real_eip !51
  store i64 %53, i64* %XIP, align 8, !mcsema_real_eip !51
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_, align 8
  store i64 %52, i64* %XSP, align 8, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_3 = alloca [48 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 48
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
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 40
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 64
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
  %2 = bitcast i8* %.v to i32*
  %_new_load_ = load i32, i32* %2, align 4
  %3 = zext i32 %_new_load_ to i64, !mcsema_real_eip !4
  store i64 %3, i64* %XAX, align 8, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 56
  %_pot_address_in_parent_stack_90 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_91 = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_92 = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_93 = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_94 = or i1 %_cond2_1_92, %_cond2_2_93
  %_cond4_95 = icmp ule i8* %_pot_address_in_parent_stack_90, %_parent_stack_end_ptr_
  %_cond1_n_cond2_96 = and i1 %_cond1_91, %_cond2_94
  %_cond1_n_cond2_cond3_97 = and i1 %_cond4_95, %_cond1_n_cond2_96
  %_address_in_parent_stack_bt_99..v = select i1 %_cond1_n_cond2_cond3_97, i8* %_pot_address_in_parent_stack_90, i8* %_new_gep_6
  %_address_in_parent_stack_bt_99. = bitcast i8* %_address_in_parent_stack_bt_99..v to i32*
  %_new_load_100 = load i32, i32* %_address_in_parent_stack_bt_99., align 4
  %4 = zext i32 %_new_load_100 to i64, !mcsema_real_eip !5
  store i64 %4, i64* %R10, align 8, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 36
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, align 4, !mcsema_real_eip !6
  %5 = bitcast i8* %_new_gep_9 to i32*
  store i32 %EDI_val.7, i32* %5, align 4, !mcsema_real_eip !6
  %_new_gep_12 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 32
  %ESI.9 = bitcast i64* %XSI to i32*, !mcsema_real_eip !7
  %ESI_val.10 = load i32, i32* %ESI.9, align 4, !mcsema_real_eip !7
  %6 = bitcast i8* %_new_gep_12 to i32*
  store i32 %ESI_val.10, i32* %6, align 4, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 28
  %EDX.12 = bitcast i64* %XDX to i32*, !mcsema_real_eip !8
  %EDX_val.13 = load i32, i32* %EDX.12, align 4, !mcsema_real_eip !8
  %7 = bitcast i8* %_new_gep_15 to i32*
  store i32 %EDX_val.13, i32* %7, align 4, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 24
  %ECX.15 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.16 = load i32, i32* %ECX.15, align 4, !mcsema_real_eip !9
  %8 = bitcast i8* %_new_gep_18 to i32*
  store i32 %ECX_val.16, i32* %8, align 4, !mcsema_real_eip !9
  %_new_gep_21 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 20
  %R8D.18 = bitcast i64* %R8 to i32*, !mcsema_real_eip !10
  %R8D_val.19 = load i32, i32* %R8D.18, align 4, !mcsema_real_eip !10
  %9 = bitcast i8* %_new_gep_21 to i32*
  store i32 %R8D_val.19, i32* %9, align 4, !mcsema_real_eip !10
  %_new_gep_24 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 16
  %R9D.21 = bitcast i64* %R9 to i32*, !mcsema_real_eip !11
  %R9D_val.22 = load i32, i32* %R9D.21, align 4, !mcsema_real_eip !11
  %10 = bitcast i8* %_new_gep_24 to i32*
  store i32 %R9D_val.22, i32* %10, align 4, !mcsema_real_eip !11
  %_new_gep_27 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 12
  %11 = bitcast i8* %_new_gep_27 to i32*
  store i32 %_new_load_100, i32* %11, align 4, !mcsema_real_eip !12
  %_new_gep_30 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 8
  %12 = bitcast i8* %_new_gep_30 to i32*
  store i32 %_new_load_, i32* %12, align 4, !mcsema_real_eip !13
  %_new_gep_33 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 36
  %13 = bitcast i8* %_new_gep_33 to i32*
  %_new_load_115 = load i32, i32* %13, align 4
  %_address_in_parent_stack_bt_129. = bitcast i8* %_new_gep_12 to i32*
  %_new_load_130 = load i32, i32* %_address_in_parent_stack_bt_129., align 4
  %14 = add i32 %_new_load_115, %_new_load_130, !mcsema_real_eip !15
  %15 = bitcast i8* %_new_gep_15 to i32*
  %_new_load_145 = load i32, i32* %15, align 4
  %16 = add i32 %14, %_new_load_145, !mcsema_real_eip !16
  %_address_in_parent_stack_bt_159. = bitcast i8* %_new_gep_18 to i32*
  %_new_load_160 = load i32, i32* %_address_in_parent_stack_bt_159., align 4
  %17 = add i32 %16, %_new_load_160, !mcsema_real_eip !17
  %18 = bitcast i8* %_new_gep_21 to i32*
  %_new_load_175 = load i32, i32* %18, align 4
  %19 = add i32 %17, %_new_load_175, !mcsema_real_eip !18
  %_address_in_parent_stack_bt_189. = bitcast i8* %_new_gep_24 to i32*
  %_new_load_190 = load i32, i32* %_address_in_parent_stack_bt_189., align 4
  %20 = add i32 %19, %_new_load_190, !mcsema_real_eip !19
  %21 = bitcast i8* %_new_gep_27 to i32*
  %_new_load_205 = load i32, i32* %21, align 4
  %22 = add i32 %20, %_new_load_205, !mcsema_real_eip !20
  %23 = xor i32 %22, %_new_load_205, !mcsema_real_eip !20
  %24 = xor i32 %23, %20, !mcsema_real_eip !20
  %25 = and i32 %24, 16, !mcsema_real_eip !20
  %26 = icmp ne i32 %25, 0, !mcsema_real_eip !20
  store i1 %26, i1* %AF, align 1, !mcsema_real_eip !20
  %27 = icmp slt i32 %22, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !20
  %28 = icmp eq i32 %22, 0, !mcsema_real_eip !20
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !20
  %29 = xor i32 %_new_load_205, -2147483648, !mcsema_real_eip !20
  %30 = xor i32 %29, %20, !mcsema_real_eip !20
  %31 = and i32 %23, %30, !mcsema_real_eip !20
  %32 = icmp slt i32 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !20
  %33 = trunc i32 %22 to i8, !mcsema_real_eip !20
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !20
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  store i1 %36, i1* %PF, align 1, !mcsema_real_eip !20
  %37 = icmp ult i32 %22, %_new_load_205, !mcsema_real_eip !20
  store i1 %37, i1* %CF, align 1, !mcsema_real_eip !20
  %38 = zext i32 %22 to i64, !mcsema_real_eip !20
  store i64 %38, i64* %XAX, align 8, !mcsema_real_eip !20
  %_new_gep_54 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 4
  %39 = bitcast i8* %_new_gep_54 to i32*
  store i32 %22, i32* %39, align 4, !mcsema_real_eip !21
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_57 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -36
  %40 = ptrtoint i8* %_new_gep_57 to i64
  %_offset_above_rbp_209 = sub i64 %40, %_local_end_to_int_
  %_pot_address_in_parent_stack_210 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_209
  %_cond1_211 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_212 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_213 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_214 = or i1 %_cond2_1_212, %_cond2_2_213
  %_cond4_215 = icmp ule i8* %_pot_address_in_parent_stack_210, %_parent_stack_end_ptr_
  %_cond1_n_cond2_216 = and i1 %_cond1_211, %_cond2_214
  %_cond1_n_cond2_cond3_217 = and i1 %_cond1_n_cond2_216, %_cond4_215
  %_address_in_parent_stack_bt_219..v = select i1 %_cond1_n_cond2_cond3_217, i8* %_pot_address_in_parent_stack_210, i8* %_new_gep_57
  %_address_in_parent_stack_bt_219. = bitcast i8* %_address_in_parent_stack_bt_219..v to i32*
  %_new_load_220 = load i32, i32* %_address_in_parent_stack_bt_219., align 4
  %41 = add i32 %_new_load_220, -40
  %42 = xor i32 %41, %_new_load_220, !mcsema_real_eip !22
  %43 = and i32 %42, 16, !mcsema_real_eip !22
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !22
  store i1 %44, i1* %AF, align 1, !mcsema_real_eip !22
  %45 = trunc i32 %41 to i8, !mcsema_real_eip !22
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !22
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  store i1 %48, i1* %PF, align 1, !mcsema_real_eip !22
  %49 = icmp eq i32 %41, 0, !mcsema_real_eip !22
  store i1 %49, i1* %ZF, align 1, !mcsema_real_eip !22
  %50 = icmp slt i32 %41, 0
  store i1 %50, i1* %SF, align 1, !mcsema_real_eip !22
  %51 = icmp ult i32 %_new_load_220, 40, !mcsema_real_eip !22
  store i1 %51, i1* %CF, align 1, !mcsema_real_eip !22
  %52 = and i32 %42, %_new_load_220, !mcsema_real_eip !22
  %53 = icmp slt i32 %52, 0
  store i1 %53, i1* %OF, align 1, !mcsema_real_eip !22
  %54 = xor i1 %50, %53
  %55 = or i1 %49, %54, !mcsema_real_eip !23
  %_new_load_265 = load i32, i32* %_address_in_parent_stack_bt_219., align 4
  %56 = zext i32 %_new_load_265 to i64
  store i64 %56, i64* %XAX, align 8
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -32
  %57 = ptrtoint i8* %_new_gep_72 to i64
  %_offset_above_rbp_269 = sub i64 %57, %_local_end_to_int_
  %_cond2_2_273 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_1_272 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_274 = or i1 %_cond2_1_272, %_cond2_2_273
  %_cond1_271 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond1_n_cond2_276 = and i1 %_cond1_271, %_cond2_274
  %_pot_address_in_parent_stack_270 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_269
  %_cond4_275 = icmp ule i8* %_pot_address_in_parent_stack_270, %_parent_stack_end_ptr_
  %_cond1_n_cond2_cond3_277 = and i1 %_cond1_n_cond2_276, %_cond4_275
  %.v10 = select i1 %_cond1_n_cond2_cond3_277, i8* %_pot_address_in_parent_stack_270, i8* %_new_gep_72
  %58 = bitcast i8* %.v10 to i32*
  %_new_load_280 = load i32, i32* %58, align 4
  br i1 %55, label %block_0x56, label %block_0x48, !mcsema_real_eip !23

block_0x48:                                       ; preds = %entry
  %59 = add i32 %_new_load_265, %_new_load_280, !mcsema_real_eip !24
  %60 = xor i32 %59, %_new_load_280, !mcsema_real_eip !24
  %61 = xor i32 %60, %_new_load_265, !mcsema_real_eip !24
  %62 = and i32 %61, 16, !mcsema_real_eip !24
  %63 = icmp ne i32 %62, 0, !mcsema_real_eip !24
  store i1 %63, i1* %AF, align 1, !mcsema_real_eip !24
  %64 = icmp slt i32 %59, 0
  store i1 %64, i1* %SF, align 1, !mcsema_real_eip !24
  %65 = icmp eq i32 %59, 0, !mcsema_real_eip !24
  store i1 %65, i1* %ZF, align 1, !mcsema_real_eip !24
  %66 = xor i32 %_new_load_280, -2147483648, !mcsema_real_eip !24
  %67 = xor i32 %66, %_new_load_265, !mcsema_real_eip !24
  %68 = and i32 %60, %67, !mcsema_real_eip !24
  %69 = icmp slt i32 %68, 0
  store i1 %69, i1* %OF, align 1, !mcsema_real_eip !24
  %70 = trunc i32 %59 to i8, !mcsema_real_eip !24
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !24
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  store i1 %73, i1* %PF, align 1, !mcsema_real_eip !24
  %74 = icmp ult i32 %59, %_new_load_280, !mcsema_real_eip !24
  store i1 %74, i1* %CF, align 1, !mcsema_real_eip !24
  br label %block_0x5f, !mcsema_real_eip !25

block_0x56:                                       ; preds = %entry
  %75 = sub i32 %_new_load_265, %_new_load_280, !mcsema_real_eip !26
  %76 = xor i32 %75, %_new_load_265, !mcsema_real_eip !26
  %77 = xor i32 %76, %_new_load_280, !mcsema_real_eip !26
  %78 = and i32 %77, 16, !mcsema_real_eip !26
  %79 = icmp ne i32 %78, 0, !mcsema_real_eip !26
  store i1 %79, i1* %AF, align 1, !mcsema_real_eip !26
  %80 = trunc i32 %75 to i8, !mcsema_real_eip !26
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !26
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  store i1 %83, i1* %PF, align 1, !mcsema_real_eip !26
  %84 = icmp eq i32 %75, 0, !mcsema_real_eip !26
  store i1 %84, i1* %ZF, align 1, !mcsema_real_eip !26
  %85 = icmp slt i32 %75, 0
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !26
  %86 = icmp ult i32 %_new_load_265, %_new_load_280, !mcsema_real_eip !26
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !26
  %87 = xor i32 %_new_load_280, %_new_load_265, !mcsema_real_eip !26
  %88 = and i32 %76, %87, !mcsema_real_eip !26
  %89 = icmp slt i32 %88, 0
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !26
  br label %block_0x5f, !mcsema_real_eip !27

block_0x5f:                                       ; preds = %block_0x56, %block_0x48
  %.sink2 = phi i32 [ %75, %block_0x56 ], [ %59, %block_0x48 ]
  %90 = zext i32 %.sink2 to i64
  store i64 %90, i64* %XAX, align 8
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -40
  %91 = bitcast i8* %_new_gep_75 to i32*
  store i32 %.sink2, i32* %91, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77, i64 -40
  %92 = ptrtoint i8* %_new_gep_78 to i64
  %_offset_above_rbp_284 = sub i64 %92, %_local_end_to_int_
  %_pot_address_in_parent_stack_285 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_284
  %_cond1_286 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_287 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_288 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_289 = or i1 %_cond2_1_287, %_cond2_2_288
  %_cond4_290 = icmp ule i8* %_pot_address_in_parent_stack_285, %_parent_stack_end_ptr_
  %_cond1_n_cond2_291 = and i1 %_cond1_286, %_cond2_289
  %_cond1_n_cond2_cond3_292 = and i1 %_cond1_n_cond2_291, %_cond4_290
  %_address_in_parent_stack_bt_294..v = select i1 %_cond1_n_cond2_cond3_292, i8* %_pot_address_in_parent_stack_285, i8* %_new_gep_78
  %_address_in_parent_stack_bt_294. = bitcast i8* %_address_in_parent_stack_bt_294..v to i32*
  %_new_load_295 = load i32, i32* %_address_in_parent_stack_bt_294., align 4
  %93 = zext i32 %_new_load_295 to i64, !mcsema_real_eip !27
  store i64 %93, i64* %XAX, align 8, !mcsema_real_eip !27
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_80 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.67 = load i64, i64* %XSP, align 8, !mcsema_real_eip !28
  %_ptr_to_int_296 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_80 to i64
  %_offset_above_rbp_299 = sub i64 %_ptr_to_int_296, %_local_end_to_int_
  %_pot_address_in_parent_stack_300 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_299
  %_cond1_301 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_80, %_local_stack_end_ptr_
  %_cond2_1_302 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_80, %_parent_stack_end_ptr_
  %_cond2_2_303 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_80, %_parent_stack_start_ptr_
  %_cond2_304 = or i1 %_cond2_1_302, %_cond2_2_303
  %_cond4_305 = icmp ule i8* %_pot_address_in_parent_stack_300, %_parent_stack_end_ptr_
  %_cond1_n_cond2_306 = and i1 %_cond1_301, %_cond2_304
  %_cond1_n_cond2_cond3_307 = and i1 %_cond1_n_cond2_306, %_cond4_305
  %.v9 = select i1 %_cond1_n_cond2_cond3_307, i8* %_pot_address_in_parent_stack_300, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_80
  %94 = bitcast i8* %.v9 to i64*
  %_new_load_310 = load i64, i64* %94, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_310 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_310, i64* %XBP, align 8, !mcsema_real_eip !28
  %_new_gep_82 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_80, i64 8
  %95 = add i64 %RSP_val.67, 8, !mcsema_real_eip !28
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_, align 8
  store i64 %95, i64* %XSP, align 8, !mcsema_real_eip !28
  %_new_gep_84 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_80, i64 16
  %96 = add i64 %RSP_val.67, 16, !mcsema_real_eip !29
  %_ptr_to_int_311 = ptrtoint i8* %_new_gep_82 to i64
  %_offset_above_rbp_314 = sub i64 %_ptr_to_int_311, %_local_end_to_int_
  %_pot_address_in_parent_stack_315 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_314
  %_cond1_316 = icmp ugt i8* %_new_gep_82, %_local_stack_end_ptr_
  %_cond2_1_317 = icmp ugt i8* %_new_gep_82, %_parent_stack_end_ptr_
  %_cond2_2_318 = icmp ult i8* %_new_gep_82, %_parent_stack_start_ptr_
  %_cond2_319 = or i1 %_cond2_1_317, %_cond2_2_318
  %_cond4_320 = icmp ule i8* %_pot_address_in_parent_stack_315, %_parent_stack_end_ptr_
  %_cond1_n_cond2_321 = and i1 %_cond1_316, %_cond2_319
  %_cond1_n_cond2_cond3_322 = and i1 %_cond1_n_cond2_321, %_cond4_320
  %_address_in_parent_stack_bt_324._allin_new_bt_85.v = select i1 %_cond1_n_cond2_cond3_322, i8* %_pot_address_in_parent_stack_315, i8* %_new_gep_82
  %_address_in_parent_stack_bt_324._allin_new_bt_85 = bitcast i8* %_address_in_parent_stack_bt_324._allin_new_bt_85.v to i64*
  %_new_load_325 = load i64, i64* %_address_in_parent_stack_bt_324._allin_new_bt_85, align 8
  store i64 %_new_load_325, i64* %XIP, align 8, !mcsema_real_eip !29
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_, align 8
  store i64 %96, i64* %XSP, align 8, !mcsema_real_eip !29
  ret void, !mcsema_real_eip !29
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !30
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !30
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !30
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !30
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !30
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !30
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !30
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !30
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !30
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !30
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !30
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !30
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !30
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !30
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !30
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !30
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !30
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !30
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !30
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !30
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !30
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !30
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !30
  %RSP_val.70 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %1 = add i64 %RSP_val.70, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !31
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.70, -56
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !32
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !32
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !32
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !32
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !32
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 48 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !32
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !32
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !32
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !32
  %11 = bitcast i64* %XSI to <2 x i64>*
  store <2 x i64> <i64 20, i64 10>, <2 x i64>* %11, align 8
  %12 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 40, i64 30>, <2 x i64>* %12, align 8
  %13 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 50, i64 60>, <2 x i64>* %13, align 8
  store i64 70, i64* %XAX, align 8, !mcsema_real_eip !33
  store i64 80, i64* %R10, align 8, !mcsema_real_eip !34
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %14 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %14, align 4, !mcsema_real_eip !35
  %15 = bitcast i8* %_new_gep_3 to i32*
  store i32 70, i32* %15, align 4, !mcsema_real_eip !36
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_19, i64 8
  %16 = bitcast i8* %_new_gep_20 to i32*
  store i32 80, i32* %16, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -12
  %R10D.77 = bitcast i64* %R10 to i32*, !mcsema_real_eip !38
  %R10D_val.78 = load i32, i32* %R10D.77, align 4, !mcsema_real_eip !38
  %17 = bitcast i8* %_new_gep_23 to i32*
  store i32 %R10D_val.78, i32* %17, align 4, !mcsema_real_eip !38
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -16
  %EAX.80 = bitcast i64* %XAX to i32*, !mcsema_real_eip !39
  %EAX_val.81 = load i32, i32* %EAX.80, align 4, !mcsema_real_eip !39
  %18 = bitcast i8* %_new_gep_26 to i32*
  store i32 %EAX_val.81, i32* %18, align 4, !mcsema_real_eip !39
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.82 = load i64, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 -8
  %19 = add i64 %RSP_val.82, -8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !40
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %19, i64* %XSP, align 8, !mcsema_real_eip !40
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_29, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_80)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0xea to i64), i64* %XDI, align 8, !mcsema_real_eip !41
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -8
  %EAX_val.85 = load i32, i32* %EAX.80, align 4, !mcsema_real_eip !42
  %20 = bitcast i8* %_new_gep_32 to i32*
  store i32 %EAX_val.85, i32* %20, align 4, !mcsema_real_eip !42
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -8
  %21 = ptrtoint i8* %_new_gep_35 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %21, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_35
  %22 = bitcast i8* %.v to i32*
  %_new_load_ = load i32, i32* %22, align 4
  %23 = zext i32 %_new_load_ to i64, !mcsema_real_eip !43
  store i64 %23, i64* %XSI, align 8, !mcsema_real_eip !43
  %AL.87 = bitcast i64* %XAX to i8*, !mcsema_real_eip !44
  store i8 0, i8* %AL.87, align 1, !mcsema_real_eip !44
  %RDI_val.88 = load i64, i64* %XDI, align 8, !mcsema_real_eip !45
  %RDX_val.90 = load i64, i64* %XDX, align 8, !mcsema_real_eip !45
  %RCX_val.91 = load i64, i64* %XCX, align 8, !mcsema_real_eip !45
  %R8_val.92 = load i64, i64* %R8, align 8, !mcsema_real_eip !45
  %R9_val.93 = load i64, i64* %R9, align 8, !mcsema_real_eip !45
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_84 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 to i64
  %_offset_above_rbp_87 = sub i64 %_ptr_to_int_84, %_local_end_to_int_
  %_pot_address_in_parent_stack_88 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_87
  %_cond1_89 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, %_local_stack_end_ptr_
  %_cond2_1_90 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, %_parent_stack_end_ptr_
  %_cond2_2_91 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, %_parent_stack_start_ptr_
  %_cond2_92 = or i1 %_cond2_1_90, %_cond2_2_91
  %_cond4_93 = icmp ule i8* %_pot_address_in_parent_stack_88, %_parent_stack_end_ptr_
  %_cond1_n_cond2_94 = and i1 %_cond1_89, %_cond2_92
  %_cond1_n_cond2_cond3_95 = and i1 %_cond1_n_cond2_94, %_cond4_93
  %_address_in_parent_stack_bt_97._allin_new_bt_38.v = select i1 %_cond1_n_cond2_cond3_95, i8* %_pot_address_in_parent_stack_88, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37
  %_address_in_parent_stack_bt_97._allin_new_bt_38 = bitcast i8* %_address_in_parent_stack_bt_97._allin_new_bt_38.v to i64*
  %_new_load_98 = load i64, i64* %_address_in_parent_stack_bt_97._allin_new_bt_38, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 8
  %_ptr_to_int_99 = ptrtoint i8* %_new_gep_39 to i64
  %_offset_above_rbp_102 = sub i64 %_ptr_to_int_99, %_local_end_to_int_
  %_pot_address_in_parent_stack_103 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_cond1_104 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_105 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_106 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_107 = or i1 %_cond2_1_105, %_cond2_2_106
  %_cond4_108 = icmp ule i8* %_pot_address_in_parent_stack_103, %_parent_stack_end_ptr_
  %_cond1_n_cond2_109 = and i1 %_cond1_104, %_cond2_107
  %_cond1_n_cond2_cond3_110 = and i1 %_cond1_n_cond2_109, %_cond4_108
  %.v5 = select i1 %_cond1_n_cond2_cond3_110, i8* %_pot_address_in_parent_stack_103, i8* %_new_gep_39
  %24 = bitcast i8* %.v5 to i64*
  %_new_load_113 = load i64, i64* %24, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 16
  %_ptr_to_int_114 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_117 = sub i64 %_ptr_to_int_114, %_local_end_to_int_
  %_pot_address_in_parent_stack_118 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_cond1_119 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_120 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_121 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_122 = or i1 %_cond2_1_120, %_cond2_2_121
  %_cond4_123 = icmp ule i8* %_pot_address_in_parent_stack_118, %_parent_stack_end_ptr_
  %_cond1_n_cond2_124 = and i1 %_cond1_119, %_cond2_122
  %_cond1_n_cond2_cond3_125 = and i1 %_cond1_n_cond2_124, %_cond4_123
  %_address_in_parent_stack_bt_127._allin_new_bt_42.v = select i1 %_cond1_n_cond2_cond3_125, i8* %_pot_address_in_parent_stack_118, i8* %_new_gep_41
  %_address_in_parent_stack_bt_127._allin_new_bt_42 = bitcast i8* %_address_in_parent_stack_bt_127._allin_new_bt_42.v to i64*
  %_new_load_128 = load i64, i64* %_address_in_parent_stack_bt_127._allin_new_bt_42, align 8
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 24
  %_ptr_to_int_129 = ptrtoint i8* %_new_gep_43 to i64
  %_offset_above_rbp_132 = sub i64 %_ptr_to_int_129, %_local_end_to_int_
  %_pot_address_in_parent_stack_133 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_132
  %_cond1_134 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_135 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_136 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_137 = or i1 %_cond2_1_135, %_cond2_2_136
  %_cond4_138 = icmp ule i8* %_pot_address_in_parent_stack_133, %_parent_stack_end_ptr_
  %_cond1_n_cond2_139 = and i1 %_cond1_134, %_cond2_137
  %_cond1_n_cond2_cond3_140 = and i1 %_cond1_n_cond2_139, %_cond4_138
  %.v6 = select i1 %_cond1_n_cond2_cond3_140, i8* %_pot_address_in_parent_stack_133, i8* %_new_gep_43
  %25 = bitcast i8* %.v6 to i64*
  %_new_load_143 = load i64, i64* %25, align 8
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 32
  %_ptr_to_int_144 = ptrtoint i8* %_new_gep_45 to i64
  %_offset_above_rbp_147 = sub i64 %_ptr_to_int_144, %_local_end_to_int_
  %_pot_address_in_parent_stack_148 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_147
  %_cond1_149 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_150 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_151 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_152 = or i1 %_cond2_1_150, %_cond2_2_151
  %_cond4_153 = icmp ule i8* %_pot_address_in_parent_stack_148, %_parent_stack_end_ptr_
  %_cond1_n_cond2_154 = and i1 %_cond1_149, %_cond2_152
  %_cond1_n_cond2_cond3_155 = and i1 %_cond1_n_cond2_154, %_cond4_153
  %_address_in_parent_stack_bt_157._allin_new_bt_46.v = select i1 %_cond1_n_cond2_cond3_155, i8* %_pot_address_in_parent_stack_148, i8* %_new_gep_45
  %_address_in_parent_stack_bt_157._allin_new_bt_46 = bitcast i8* %_address_in_parent_stack_bt_157._allin_new_bt_46.v to i64*
  %_new_load_158 = load i64, i64* %_address_in_parent_stack_bt_157._allin_new_bt_46, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 40
  %_ptr_to_int_159 = ptrtoint i8* %_new_gep_47 to i64
  %_offset_above_rbp_162 = sub i64 %_ptr_to_int_159, %_local_end_to_int_
  %_pot_address_in_parent_stack_163 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_162
  %_cond1_164 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_165 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_166 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_167 = or i1 %_cond2_1_165, %_cond2_2_166
  %_cond4_168 = icmp ule i8* %_pot_address_in_parent_stack_163, %_parent_stack_end_ptr_
  %_cond1_n_cond2_169 = and i1 %_cond1_164, %_cond2_167
  %_cond1_n_cond2_cond3_170 = and i1 %_cond1_n_cond2_169, %_cond4_168
  %.v7 = select i1 %_cond1_n_cond2_cond3_170, i8* %_pot_address_in_parent_stack_163, i8* %_new_gep_47
  %26 = bitcast i8* %.v7 to i64*
  %_new_load_173 = load i64, i64* %26, align 8
  %RSP_val.95 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 -8
  %27 = add i64 %RSP_val.95, -8
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !45
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %27, i64* %XSP, align 8, !mcsema_real_eip !45
  %28 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.88, i64 %23, i64 %RDX_val.90, i64 %RCX_val.91, i64 %R8_val.92, i64 %R9_val.93, i64 %_new_load_98, i64 %_new_load_113, i64 %_new_load_128, i64 %_new_load_143, i64 %_new_load_158, i64 %_new_load_173)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_82 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_83 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_82, i64 8
  store i8* %_gep_fix_83, i8** %_RSP_ptr_, align 8
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !45
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52, i64 -8
  %29 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_177 = sub i64 %29, %_local_end_to_int_
  %_pot_address_in_parent_stack_178 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_177
  %_cond1_179 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_180 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_181 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_182 = or i1 %_cond2_1_180, %_cond2_2_181
  %_cond4_183 = icmp ule i8* %_pot_address_in_parent_stack_178, %_parent_stack_end_ptr_
  %_cond1_n_cond2_184 = and i1 %_cond1_179, %_cond2_182
  %_cond1_n_cond2_cond3_185 = and i1 %_cond1_n_cond2_184, %_cond4_183
  %_address_in_parent_stack_bt_187..v = select i1 %_cond1_n_cond2_cond3_185, i8* %_pot_address_in_parent_stack_178, i8* %_new_gep_53
  %_address_in_parent_stack_bt_187. = bitcast i8* %_address_in_parent_stack_bt_187..v to i32*
  %_new_load_188 = load i32, i32* %_address_in_parent_stack_bt_187., align 4
  %30 = zext i32 %_new_load_188 to i64, !mcsema_real_eip !46
  store i64 %30, i64* %XCX, align 8, !mcsema_real_eip !46
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52, i64 -20
  %31 = trunc i64 %28 to i32
  %32 = bitcast i8* %_new_gep_56 to i32*
  store i32 %31, i32* %32, align 4, !mcsema_real_eip !47
  %ECX.100 = bitcast i64* %XCX to i32*, !mcsema_real_eip !48
  %ECX_val.101 = load i32, i32* %ECX.100, align 4, !mcsema_real_eip !48
  %33 = zext i32 %ECX_val.101 to i64, !mcsema_real_eip !48
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !48
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.102 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %_new_gep_59 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58, i64 48
  %34 = add i64 %RSP_val.102, 48, !mcsema_real_eip !49
  %_trans_p2i_60 = ptrtoint i8* %_new_gep_59 to i64
  %_trans_p2i_61 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58 to i64
  %_trans_xor_62 = xor i64 %_trans_p2i_60, %_trans_p2i_61
  %35 = and i64 %_trans_xor_62, 16
  %36 = icmp eq i64 %35, 0
  store i1 %36, i1* %AF, align 1, !mcsema_real_eip !49
  %37 = icmp slt i64 %34, 0
  store i1 %37, i1* %SF, align 1, !mcsema_real_eip !49
  %_trans_icmp_eq_64 = icmp eq i8* %_new_gep_59, null
  store i1 %_trans_icmp_eq_64, i1* %ZF, align 1, !mcsema_real_eip !49
  %38 = xor i64 %_trans_p2i_61, -9223372036854775808, !mcsema_real_eip !49
  %39 = and i64 %_trans_xor_62, %38, !mcsema_real_eip !49
  %40 = icmp slt i64 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !49
  %_trans_trunc_71 = trunc i64 %_trans_p2i_60 to i8
  %41 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_71), !mcsema_real_eip !49
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  store i1 %43, i1* %PF, align 1, !mcsema_real_eip !49
  %_trans_icmp_ne_73 = icmp ne i64 %RSP_val.102, %_trans_p2i_60
  store i1 %_trans_icmp_ne_73, i1* %CF, align 1, !mcsema_real_eip !49
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !49
  %_offset_above_rbp_192 = sub i64 %_trans_p2i_60, %_local_end_to_int_
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  %.v8 = select i1 %_cond1_n_cond2_cond3_200, i8* %_pot_address_in_parent_stack_193, i8* %_new_gep_59
  %44 = bitcast i8* %.v8 to i64*
  %_new_load_203 = load i64, i64* %44, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_203 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_203, i64* %XBP, align 8, !mcsema_real_eip !50
  %_new_gep_76 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58, i64 56
  %45 = add i64 %RSP_val.102, 56, !mcsema_real_eip !50
  store volatile i8* %_new_gep_76, i8** %_RSP_ptr_, align 8
  store i64 %45, i64* %XSP, align 8, !mcsema_real_eip !50
  %_new_gep_78 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58, i64 64
  %46 = add i64 %RSP_val.102, 64, !mcsema_real_eip !51
  %_ptr_to_int_204 = ptrtoint i8* %_new_gep_76 to i64
  %_offset_above_rbp_207 = sub i64 %_ptr_to_int_204, %_local_end_to_int_
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_new_gep_76, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_new_gep_76, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_new_gep_76, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  %_address_in_parent_stack_bt_217._allin_new_bt_79.v = select i1 %_cond1_n_cond2_cond3_215, i8* %_pot_address_in_parent_stack_208, i8* %_new_gep_76
  %_address_in_parent_stack_bt_217._allin_new_bt_79 = bitcast i8* %_address_in_parent_stack_bt_217._allin_new_bt_79.v to i64*
  %_new_load_218 = load i64, i64* %_address_in_parent_stack_bt_217._allin_new_bt_79, align 8
  store i64 %_new_load_218, i64* %XIP, align 8, !mcsema_real_eip !51
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_, align 8
  store i64 %46, i64* %XSP, align 8, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
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
!6 = !{i64 11}
!7 = !{i64 14}
!8 = !{i64 17}
!9 = !{i64 20}
!10 = !{i64 23}
!11 = !{i64 27}
!12 = !{i64 31}
!13 = !{i64 35}
!14 = !{i64 38}
!15 = !{i64 41}
!16 = !{i64 44}
!17 = !{i64 47}
!18 = !{i64 50}
!19 = !{i64 53}
!20 = !{i64 56}
!21 = !{i64 59}
!22 = !{i64 62}
!23 = !{i64 66}
!24 = !{i64 75}
!25 = !{i64 81}
!26 = !{i64 89}
!27 = !{i64 95}
!28 = !{i64 98}
!29 = !{i64 99}
!30 = !{i64 112}
!31 = !{i64 113}
!32 = !{i64 116}
!33 = !{i64 152}
!34 = !{i64 157}
!35 = !{i64 163}
!36 = !{i64 170}
!37 = !{i64 177}
!38 = !{i64 185}
!39 = !{i64 189}
!40 = !{i64 192}
!41 = !{i64 197}
!42 = !{i64 207}
!43 = !{i64 210}
!44 = !{i64 213}
!45 = !{i64 215}
!46 = !{i64 220}
!47 = !{i64 223}
!48 = !{i64 226}
!49 = !{i64 228}
!50 = !{i64 232}
!51 = !{i64 233}
