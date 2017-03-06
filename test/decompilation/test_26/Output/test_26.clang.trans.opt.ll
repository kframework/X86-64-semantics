; ModuleID = 'Output/test_26.clang.trans.opt.bc'
source_filename = "Output/test_26.clang.bc"
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
module asm "  .globl sub_120;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_120(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x221 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !2
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
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, 48, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %7 = load i64, i64* %6, align 8, !mcsema_real_eip !5
  store i64 %7, i64* %XAX, align 8, !mcsema_real_eip !5
  %8 = add i64 %RBP_val.5, 40, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %10 = load i64, i64* %9, align 8, !mcsema_real_eip !6
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !6
  %11 = add i64 %RBP_val.5, 24, !mcsema_real_eip !7
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !7
  %12 = add i64 %RBP_val.5, 16, !mcsema_real_eip !8
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !8
  %14 = load i32, i32* %13, align 4, !mcsema_real_eip !8
  %15 = zext i32 %14 to i64, !mcsema_real_eip !8
  store i64 %15, i64* %XBX, align 8, !mcsema_real_eip !8
  %16 = add i64 %RBP_val.5, -56, !mcsema_real_eip !9
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !9
  %RDI_val.10 = load i64, i64* %XDI, align 8, !mcsema_real_eip !9
  store i64 %RDI_val.10, i64* %17, align 8, !mcsema_real_eip !9
  %RBP_val.11 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %18 = add i64 %RBP_val.11, -48, !mcsema_real_eip !10
  %ESI.12 = bitcast i64* %XSI to i32*, !mcsema_real_eip !10
  %ESI_val.13 = load i32, i32* %ESI.12, align 4, !mcsema_real_eip !10
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !10
  store i32 %ESI_val.13, i32* %19, align 4, !mcsema_real_eip !10
  %RBP_val.14 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %20 = add i64 %RBP_val.14, -48, !mcsema_real_eip !11
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !11
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !11
  %23 = zext i32 %22 to i64, !mcsema_real_eip !11
  store i64 %23, i64* %XSI, align 8, !mcsema_real_eip !11
  %24 = add i64 %RBP_val.14, -32, !mcsema_real_eip !12
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !12
  store i32 %22, i32* %25, align 4, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %26 = add i64 %RBP_val.18, -56, !mcsema_real_eip !13
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !13
  %28 = load i64, i64* %27, align 8, !mcsema_real_eip !13
  store i64 %28, i64* %XDI, align 8, !mcsema_real_eip !13
  %29 = add i64 %RBP_val.18, -40, !mcsema_real_eip !14
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !14
  store i64 %28, i64* %30, align 8, !mcsema_real_eip !14
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !15
  %31 = add i64 %RBP_val.21, -64, !mcsema_real_eip !15
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !15
  %RDX_val.22 = load i64, i64* %XDX, align 8, !mcsema_real_eip !15
  store i64 %RDX_val.22, i64* %32, align 8, !mcsema_real_eip !15
  %RBP_val.23 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %33 = add i64 %RBP_val.23, -72, !mcsema_real_eip !16
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !16
  %RCX_val.24 = load i64, i64* %XCX, align 8, !mcsema_real_eip !16
  store i64 %RCX_val.24, i64* %34, align 8, !mcsema_real_eip !16
  %RBP_val.25 = load i64, i64* %XBP, align 8, !mcsema_real_eip !17
  %35 = add i64 %RBP_val.25, -76, !mcsema_real_eip !17
  %R8D.26 = bitcast i64* %R8 to i32*, !mcsema_real_eip !17
  %R8D_val.27 = load i32, i32* %R8D.26, align 4, !mcsema_real_eip !17
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !17
  store i32 %R8D_val.27, i32* %36, align 4, !mcsema_real_eip !17
  %RBP_val.28 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  %37 = add i64 %RBP_val.28, -80, !mcsema_real_eip !18
  %R9D.29 = bitcast i64* %R9 to i32*, !mcsema_real_eip !18
  %R9D_val.30 = load i32, i32* %R9D.29, align 4, !mcsema_real_eip !18
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !18
  store i32 %R9D_val.30, i32* %38, align 4, !mcsema_real_eip !18
  %RBP_val.31 = load i64, i64* %XBP, align 8, !mcsema_real_eip !19
  %39 = add i64 %RBP_val.31, -84, !mcsema_real_eip !19
  %EBX.32 = bitcast i64* %XBX to i32*, !mcsema_real_eip !19
  %EBX_val.33 = load i32, i32* %EBX.32, align 4, !mcsema_real_eip !19
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !19
  store i32 %EBX_val.33, i32* %40, align 4, !mcsema_real_eip !19
  %RBP_val.34 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %41 = add i64 %RBP_val.34, -96, !mcsema_real_eip !20
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !20
  %R10_val.35 = load i64, i64* %R10, align 8, !mcsema_real_eip !20
  store i64 %R10_val.35, i64* %42, align 8, !mcsema_real_eip !20
  %RBP_val.36 = load i64, i64* %XBP, align 8, !mcsema_real_eip !21
  %43 = add i64 %RBP_val.36, -104, !mcsema_real_eip !21
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !21
  %RAX_val.37 = load i64, i64* %XAX, align 8, !mcsema_real_eip !21
  store i64 %RAX_val.37, i64* %44, align 8, !mcsema_real_eip !21
  %RBP_val.38 = load i64, i64* %XBP, align 8, !mcsema_real_eip !22
  %45 = add i64 %RBP_val.38, -40, !mcsema_real_eip !22
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !22
  %47 = load i32, i32* %46, align 4, !mcsema_real_eip !22
  %48 = zext i32 %47 to i64, !mcsema_real_eip !22
  store i64 %48, i64* %XSI, align 8, !mcsema_real_eip !22
  %49 = add i64 %RBP_val.38, -64, !mcsema_real_eip !23
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !23
  %51 = load i64, i64* %50, align 8, !mcsema_real_eip !23
  store i64 %51, i64* %XAX, align 8, !mcsema_real_eip !23
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !24
  %53 = load i32, i32* %52, align 4, !mcsema_real_eip !24
  %54 = zext i32 %53 to i64, !mcsema_real_eip !24
  store i64 %54, i64* %R8, align 8, !mcsema_real_eip !24
  %55 = add i32 %53, %47, !mcsema_real_eip !25
  %56 = xor i32 %55, %47, !mcsema_real_eip !25
  %57 = xor i32 %56, %53, !mcsema_real_eip !25
  %58 = and i32 %57, 16, !mcsema_real_eip !25
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !25
  store i1 %59, i1* %AF, align 1, !mcsema_real_eip !25
  %60 = icmp slt i32 %55, 0
  store i1 %60, i1* %SF, align 1, !mcsema_real_eip !25
  %61 = icmp eq i32 %55, 0, !mcsema_real_eip !25
  store i1 %61, i1* %ZF, align 1, !mcsema_real_eip !25
  %62 = xor i32 %47, -2147483648, !mcsema_real_eip !25
  %63 = xor i32 %62, %53, !mcsema_real_eip !25
  %64 = and i32 %56, %63, !mcsema_real_eip !25
  %65 = icmp slt i32 %64, 0
  store i1 %65, i1* %OF, align 1, !mcsema_real_eip !25
  %66 = trunc i32 %55 to i8, !mcsema_real_eip !25
  %67 = tail call i8 @llvm.ctpop.i8(i8 %66), !mcsema_real_eip !25
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  store i1 %69, i1* %PF, align 1, !mcsema_real_eip !25
  %70 = icmp ult i32 %55, %47, !mcsema_real_eip !25
  store i1 %70, i1* %CF, align 1, !mcsema_real_eip !25
  %71 = zext i32 %55 to i64, !mcsema_real_eip !25
  store i64 %71, i64* %XSI, align 8, !mcsema_real_eip !25
  %72 = add i64 %RBP_val.38, -72, !mcsema_real_eip !26
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !26
  %74 = load i64, i64* %73, align 8, !mcsema_real_eip !26
  store i64 %74, i64* %XAX, align 8, !mcsema_real_eip !26
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !27
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !27
  %77 = zext i32 %76 to i64, !mcsema_real_eip !27
  store i64 %77, i64* %R8, align 8, !mcsema_real_eip !27
  %78 = add i32 %76, %55, !mcsema_real_eip !28
  %79 = xor i32 %78, %55, !mcsema_real_eip !28
  %80 = xor i32 %79, %76, !mcsema_real_eip !28
  %81 = and i32 %80, 16, !mcsema_real_eip !28
  %82 = icmp ne i32 %81, 0, !mcsema_real_eip !28
  store i1 %82, i1* %AF, align 1, !mcsema_real_eip !28
  %83 = icmp slt i32 %78, 0
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !28
  %84 = icmp eq i32 %78, 0, !mcsema_real_eip !28
  store i1 %84, i1* %ZF, align 1, !mcsema_real_eip !28
  %85 = xor i32 %55, -2147483648, !mcsema_real_eip !28
  %86 = xor i32 %85, %76, !mcsema_real_eip !28
  %87 = and i32 %79, %86, !mcsema_real_eip !28
  %88 = icmp slt i32 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !28
  %89 = trunc i32 %78 to i8, !mcsema_real_eip !28
  %90 = tail call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !28
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  store i1 %92, i1* %PF, align 1, !mcsema_real_eip !28
  %93 = icmp ult i32 %78, %55, !mcsema_real_eip !28
  store i1 %93, i1* %CF, align 1, !mcsema_real_eip !28
  %94 = zext i32 %78 to i64, !mcsema_real_eip !28
  store i64 %94, i64* %XSI, align 8, !mcsema_real_eip !28
  %95 = bitcast i64* %R11 to i32**
  %R11_val.511 = load i32*, i32** %95, align 8
  %96 = load i32, i32* %R11_val.511, align 4, !mcsema_real_eip !29
  %97 = zext i32 %96 to i64, !mcsema_real_eip !29
  store i64 %97, i64* %R8, align 8, !mcsema_real_eip !29
  %98 = add i64 %RBP_val.38, -96, !mcsema_real_eip !30
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !30
  %100 = load i64, i64* %99, align 8, !mcsema_real_eip !30
  store i64 %100, i64* %XAX, align 8, !mcsema_real_eip !30
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !31
  %102 = load i32, i32* %101, align 4, !mcsema_real_eip !31
  %103 = zext i32 %102 to i64, !mcsema_real_eip !31
  store i64 %103, i64* %R9, align 8, !mcsema_real_eip !31
  %104 = add i32 %102, %96, !mcsema_real_eip !32
  %105 = xor i32 %104, %96, !mcsema_real_eip !32
  %106 = xor i32 %105, %102, !mcsema_real_eip !32
  %107 = and i32 %106, 16, !mcsema_real_eip !32
  %108 = icmp ne i32 %107, 0, !mcsema_real_eip !32
  store i1 %108, i1* %AF, align 1, !mcsema_real_eip !32
  %109 = icmp slt i32 %104, 0
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !32
  %110 = icmp eq i32 %104, 0, !mcsema_real_eip !32
  store i1 %110, i1* %ZF, align 1, !mcsema_real_eip !32
  %111 = xor i32 %96, -2147483648, !mcsema_real_eip !32
  %112 = xor i32 %111, %102, !mcsema_real_eip !32
  %113 = and i32 %105, %112, !mcsema_real_eip !32
  %114 = icmp slt i32 %113, 0
  store i1 %114, i1* %OF, align 1, !mcsema_real_eip !32
  %115 = trunc i32 %104 to i8, !mcsema_real_eip !32
  %116 = tail call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !32
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  store i1 %118, i1* %PF, align 1, !mcsema_real_eip !32
  %119 = icmp ult i32 %104, %96, !mcsema_real_eip !32
  store i1 %119, i1* %CF, align 1, !mcsema_real_eip !32
  %120 = zext i32 %104 to i64, !mcsema_real_eip !32
  store i64 %120, i64* %R8, align 8, !mcsema_real_eip !32
  %121 = add i64 %RBP_val.38, -104, !mcsema_real_eip !33
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !33
  %123 = load i64, i64* %122, align 8, !mcsema_real_eip !33
  store i64 %123, i64* %XAX, align 8, !mcsema_real_eip !33
  %124 = inttoptr i64 %123 to i32*, !mcsema_real_eip !34
  %125 = load i32, i32* %124, align 4, !mcsema_real_eip !34
  %126 = zext i32 %125 to i64, !mcsema_real_eip !34
  store i64 %126, i64* %R9, align 8, !mcsema_real_eip !34
  %127 = add i32 %125, %104, !mcsema_real_eip !35
  %128 = zext i32 %127 to i64, !mcsema_real_eip !35
  store i64 %128, i64* %R8, align 8, !mcsema_real_eip !35
  %129 = add i32 %127, %78, !mcsema_real_eip !36
  %130 = xor i32 %129, %78, !mcsema_real_eip !36
  %131 = xor i32 %130, %127, !mcsema_real_eip !36
  %132 = and i32 %131, 16, !mcsema_real_eip !36
  %133 = icmp ne i32 %132, 0, !mcsema_real_eip !36
  store i1 %133, i1* %AF, align 1, !mcsema_real_eip !36
  %134 = icmp slt i32 %129, 0
  store i1 %134, i1* %SF, align 1, !mcsema_real_eip !36
  %135 = icmp eq i32 %129, 0, !mcsema_real_eip !36
  store i1 %135, i1* %ZF, align 1, !mcsema_real_eip !36
  %136 = xor i32 %78, -2147483648, !mcsema_real_eip !36
  %137 = xor i32 %136, %127, !mcsema_real_eip !36
  %138 = and i32 %130, %137, !mcsema_real_eip !36
  %139 = icmp slt i32 %138, 0
  store i1 %139, i1* %OF, align 1, !mcsema_real_eip !36
  %140 = trunc i32 %129 to i8, !mcsema_real_eip !36
  %141 = tail call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !36
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF, align 1, !mcsema_real_eip !36
  %144 = icmp ult i32 %129, %78, !mcsema_real_eip !36
  store i1 %144, i1* %CF, align 1, !mcsema_real_eip !36
  %145 = zext i32 %129 to i64, !mcsema_real_eip !36
  store i64 %145, i64* %XSI, align 8, !mcsema_real_eip !36
  %146 = add i64 %RBP_val.38, -120, !mcsema_real_eip !37
  %147 = inttoptr i64 %146 to i32*, !mcsema_real_eip !37
  store i32 %129, i32* %147, align 4, !mcsema_real_eip !37
  %RBP_val.71 = load i64, i64* %XBP, align 8, !mcsema_real_eip !38
  %148 = add i64 %RBP_val.71, -36, !mcsema_real_eip !38
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !38
  %150 = load i32, i32* %149, align 4, !mcsema_real_eip !38
  %151 = zext i32 %150 to i64, !mcsema_real_eip !38
  store i64 %151, i64* %XSI, align 8, !mcsema_real_eip !38
  %152 = add i64 %RBP_val.71, -64, !mcsema_real_eip !39
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !39
  %154 = load i64, i64* %153, align 8, !mcsema_real_eip !39
  store i64 %154, i64* %XAX, align 8, !mcsema_real_eip !39
  %155 = add i64 %154, 4, !mcsema_real_eip !40
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !40
  %157 = load i32, i32* %156, align 4, !mcsema_real_eip !40
  %158 = zext i32 %157 to i64, !mcsema_real_eip !40
  store i64 %158, i64* %R8, align 8, !mcsema_real_eip !40
  %159 = add i32 %157, %150, !mcsema_real_eip !41
  %160 = xor i32 %159, %150, !mcsema_real_eip !41
  %161 = xor i32 %160, %157, !mcsema_real_eip !41
  %162 = and i32 %161, 16, !mcsema_real_eip !41
  %163 = icmp ne i32 %162, 0, !mcsema_real_eip !41
  store i1 %163, i1* %AF, align 1, !mcsema_real_eip !41
  %164 = icmp slt i32 %159, 0
  store i1 %164, i1* %SF, align 1, !mcsema_real_eip !41
  %165 = icmp eq i32 %159, 0, !mcsema_real_eip !41
  store i1 %165, i1* %ZF, align 1, !mcsema_real_eip !41
  %166 = xor i32 %150, -2147483648, !mcsema_real_eip !41
  %167 = xor i32 %166, %157, !mcsema_real_eip !41
  %168 = and i32 %160, %167, !mcsema_real_eip !41
  %169 = icmp slt i32 %168, 0
  store i1 %169, i1* %OF, align 1, !mcsema_real_eip !41
  %170 = trunc i32 %159 to i8, !mcsema_real_eip !41
  %171 = tail call i8 @llvm.ctpop.i8(i8 %170), !mcsema_real_eip !41
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  store i1 %173, i1* %PF, align 1, !mcsema_real_eip !41
  %174 = icmp ult i32 %159, %150, !mcsema_real_eip !41
  store i1 %174, i1* %CF, align 1, !mcsema_real_eip !41
  %175 = zext i32 %159 to i64, !mcsema_real_eip !41
  store i64 %175, i64* %XSI, align 8, !mcsema_real_eip !41
  %176 = add i64 %RBP_val.71, -72, !mcsema_real_eip !42
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !42
  %178 = load i64, i64* %177, align 8, !mcsema_real_eip !42
  store i64 %178, i64* %XAX, align 8, !mcsema_real_eip !42
  %179 = add i64 %178, 4, !mcsema_real_eip !43
  %180 = inttoptr i64 %179 to i32*, !mcsema_real_eip !43
  %181 = load i32, i32* %180, align 4, !mcsema_real_eip !43
  %182 = zext i32 %181 to i64, !mcsema_real_eip !43
  store i64 %182, i64* %R8, align 8, !mcsema_real_eip !43
  %183 = add i32 %181, %159, !mcsema_real_eip !44
  %184 = xor i32 %183, %159, !mcsema_real_eip !44
  %185 = xor i32 %184, %181, !mcsema_real_eip !44
  %186 = and i32 %185, 16, !mcsema_real_eip !44
  %187 = icmp ne i32 %186, 0, !mcsema_real_eip !44
  store i1 %187, i1* %AF, align 1, !mcsema_real_eip !44
  %188 = icmp slt i32 %183, 0
  store i1 %188, i1* %SF, align 1, !mcsema_real_eip !44
  %189 = icmp eq i32 %183, 0, !mcsema_real_eip !44
  store i1 %189, i1* %ZF, align 1, !mcsema_real_eip !44
  %190 = xor i32 %159, -2147483648, !mcsema_real_eip !44
  %191 = xor i32 %190, %181, !mcsema_real_eip !44
  %192 = and i32 %184, %191, !mcsema_real_eip !44
  %193 = icmp slt i32 %192, 0
  store i1 %193, i1* %OF, align 1, !mcsema_real_eip !44
  %194 = trunc i32 %183 to i8, !mcsema_real_eip !44
  %195 = tail call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !44
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  store i1 %197, i1* %PF, align 1, !mcsema_real_eip !44
  %198 = icmp ult i32 %183, %159, !mcsema_real_eip !44
  store i1 %198, i1* %CF, align 1, !mcsema_real_eip !44
  %199 = zext i32 %183 to i64, !mcsema_real_eip !44
  store i64 %199, i64* %XSI, align 8, !mcsema_real_eip !44
  %R11_val.84 = load i64, i64* %R11, align 8, !mcsema_real_eip !45
  %200 = add i64 %R11_val.84, 4, !mcsema_real_eip !45
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !45
  %202 = load i32, i32* %201, align 4, !mcsema_real_eip !45
  %203 = zext i32 %202 to i64, !mcsema_real_eip !45
  store i64 %203, i64* %R8, align 8, !mcsema_real_eip !45
  %204 = add i64 %RBP_val.71, -96, !mcsema_real_eip !46
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !46
  %206 = load i64, i64* %205, align 8, !mcsema_real_eip !46
  store i64 %206, i64* %XAX, align 8, !mcsema_real_eip !46
  %207 = add i64 %206, 4, !mcsema_real_eip !47
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !47
  %209 = load i32, i32* %208, align 4, !mcsema_real_eip !47
  %210 = zext i32 %209 to i64, !mcsema_real_eip !47
  store i64 %210, i64* %R9, align 8, !mcsema_real_eip !47
  %211 = add i32 %209, %202, !mcsema_real_eip !48
  %212 = xor i32 %211, %202, !mcsema_real_eip !48
  %213 = xor i32 %212, %209, !mcsema_real_eip !48
  %214 = and i32 %213, 16, !mcsema_real_eip !48
  %215 = icmp ne i32 %214, 0, !mcsema_real_eip !48
  store i1 %215, i1* %AF, align 1, !mcsema_real_eip !48
  %216 = icmp slt i32 %211, 0
  store i1 %216, i1* %SF, align 1, !mcsema_real_eip !48
  %217 = icmp eq i32 %211, 0, !mcsema_real_eip !48
  store i1 %217, i1* %ZF, align 1, !mcsema_real_eip !48
  %218 = xor i32 %202, -2147483648, !mcsema_real_eip !48
  %219 = xor i32 %218, %209, !mcsema_real_eip !48
  %220 = and i32 %212, %219, !mcsema_real_eip !48
  %221 = icmp slt i32 %220, 0
  store i1 %221, i1* %OF, align 1, !mcsema_real_eip !48
  %222 = trunc i32 %211 to i8, !mcsema_real_eip !48
  %223 = tail call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !48
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  store i1 %225, i1* %PF, align 1, !mcsema_real_eip !48
  %226 = icmp ult i32 %211, %202, !mcsema_real_eip !48
  store i1 %226, i1* %CF, align 1, !mcsema_real_eip !48
  %227 = zext i32 %211 to i64, !mcsema_real_eip !48
  store i64 %227, i64* %R8, align 8, !mcsema_real_eip !48
  %228 = add i64 %RBP_val.71, -104, !mcsema_real_eip !49
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !49
  %230 = load i64, i64* %229, align 8, !mcsema_real_eip !49
  store i64 %230, i64* %XAX, align 8, !mcsema_real_eip !49
  %231 = add i64 %230, 4, !mcsema_real_eip !50
  %232 = inttoptr i64 %231 to i32*, !mcsema_real_eip !50
  %233 = load i32, i32* %232, align 4, !mcsema_real_eip !50
  %234 = zext i32 %233 to i64, !mcsema_real_eip !50
  store i64 %234, i64* %R9, align 8, !mcsema_real_eip !50
  %235 = add i32 %233, %211, !mcsema_real_eip !51
  %236 = zext i32 %235 to i64, !mcsema_real_eip !51
  store i64 %236, i64* %R8, align 8, !mcsema_real_eip !51
  %237 = add i32 %235, %183, !mcsema_real_eip !52
  %238 = xor i32 %237, %183, !mcsema_real_eip !52
  %239 = xor i32 %238, %235, !mcsema_real_eip !52
  %240 = and i32 %239, 16, !mcsema_real_eip !52
  %241 = icmp ne i32 %240, 0, !mcsema_real_eip !52
  store i1 %241, i1* %AF, align 1, !mcsema_real_eip !52
  %242 = icmp slt i32 %237, 0
  store i1 %242, i1* %SF, align 1, !mcsema_real_eip !52
  %243 = icmp eq i32 %237, 0, !mcsema_real_eip !52
  store i1 %243, i1* %ZF, align 1, !mcsema_real_eip !52
  %244 = xor i32 %183, -2147483648, !mcsema_real_eip !52
  %245 = xor i32 %244, %235, !mcsema_real_eip !52
  %246 = and i32 %238, %245, !mcsema_real_eip !52
  %247 = icmp slt i32 %246, 0
  store i1 %247, i1* %OF, align 1, !mcsema_real_eip !52
  %248 = trunc i32 %237 to i8, !mcsema_real_eip !52
  %249 = tail call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !52
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  store i1 %251, i1* %PF, align 1, !mcsema_real_eip !52
  %252 = icmp ult i32 %237, %183, !mcsema_real_eip !52
  store i1 %252, i1* %CF, align 1, !mcsema_real_eip !52
  %253 = zext i32 %237 to i64, !mcsema_real_eip !52
  store i64 %253, i64* %XSI, align 8, !mcsema_real_eip !52
  %254 = add i64 %RBP_val.71, -116, !mcsema_real_eip !53
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !53
  store i32 %237, i32* %255, align 4, !mcsema_real_eip !53
  %RBP_val.104 = load i64, i64* %XBP, align 8, !mcsema_real_eip !54
  %256 = add i64 %RBP_val.104, -32, !mcsema_real_eip !54
  %257 = inttoptr i64 %256 to i32*, !mcsema_real_eip !54
  %258 = load i32, i32* %257, align 4, !mcsema_real_eip !54
  %259 = zext i32 %258 to i64, !mcsema_real_eip !54
  store i64 %259, i64* %XSI, align 8, !mcsema_real_eip !54
  %260 = add i64 %RBP_val.104, -64, !mcsema_real_eip !55
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !55
  %262 = load i64, i64* %261, align 8, !mcsema_real_eip !55
  store i64 %262, i64* %XAX, align 8, !mcsema_real_eip !55
  %263 = add i64 %262, 8, !mcsema_real_eip !56
  %264 = inttoptr i64 %263 to i32*, !mcsema_real_eip !56
  %265 = load i32, i32* %264, align 4, !mcsema_real_eip !56
  %266 = zext i32 %265 to i64, !mcsema_real_eip !56
  store i64 %266, i64* %R8, align 8, !mcsema_real_eip !56
  %267 = add i32 %265, %258, !mcsema_real_eip !57
  %268 = xor i32 %267, %258, !mcsema_real_eip !57
  %269 = xor i32 %268, %265, !mcsema_real_eip !57
  %270 = and i32 %269, 16, !mcsema_real_eip !57
  %271 = icmp ne i32 %270, 0, !mcsema_real_eip !57
  store i1 %271, i1* %AF, align 1, !mcsema_real_eip !57
  %272 = icmp slt i32 %267, 0
  store i1 %272, i1* %SF, align 1, !mcsema_real_eip !57
  %273 = icmp eq i32 %267, 0, !mcsema_real_eip !57
  store i1 %273, i1* %ZF, align 1, !mcsema_real_eip !57
  %274 = xor i32 %258, -2147483648, !mcsema_real_eip !57
  %275 = xor i32 %274, %265, !mcsema_real_eip !57
  %276 = and i32 %268, %275, !mcsema_real_eip !57
  %277 = icmp slt i32 %276, 0
  store i1 %277, i1* %OF, align 1, !mcsema_real_eip !57
  %278 = trunc i32 %267 to i8, !mcsema_real_eip !57
  %279 = tail call i8 @llvm.ctpop.i8(i8 %278), !mcsema_real_eip !57
  %280 = and i8 %279, 1
  %281 = icmp eq i8 %280, 0
  store i1 %281, i1* %PF, align 1, !mcsema_real_eip !57
  %282 = icmp ult i32 %267, %258, !mcsema_real_eip !57
  store i1 %282, i1* %CF, align 1, !mcsema_real_eip !57
  %283 = zext i32 %267 to i64, !mcsema_real_eip !57
  store i64 %283, i64* %XSI, align 8, !mcsema_real_eip !57
  %284 = add i64 %RBP_val.104, -72, !mcsema_real_eip !58
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !58
  %286 = load i64, i64* %285, align 8, !mcsema_real_eip !58
  store i64 %286, i64* %XAX, align 8, !mcsema_real_eip !58
  %287 = add i64 %286, 8, !mcsema_real_eip !59
  %288 = inttoptr i64 %287 to i32*, !mcsema_real_eip !59
  %289 = load i32, i32* %288, align 4, !mcsema_real_eip !59
  %290 = zext i32 %289 to i64, !mcsema_real_eip !59
  store i64 %290, i64* %R8, align 8, !mcsema_real_eip !59
  %291 = add i32 %289, %267, !mcsema_real_eip !60
  %292 = xor i32 %291, %267, !mcsema_real_eip !60
  %293 = xor i32 %292, %289, !mcsema_real_eip !60
  %294 = and i32 %293, 16, !mcsema_real_eip !60
  %295 = icmp ne i32 %294, 0, !mcsema_real_eip !60
  store i1 %295, i1* %AF, align 1, !mcsema_real_eip !60
  %296 = icmp slt i32 %291, 0
  store i1 %296, i1* %SF, align 1, !mcsema_real_eip !60
  %297 = icmp eq i32 %291, 0, !mcsema_real_eip !60
  store i1 %297, i1* %ZF, align 1, !mcsema_real_eip !60
  %298 = xor i32 %267, -2147483648, !mcsema_real_eip !60
  %299 = xor i32 %298, %289, !mcsema_real_eip !60
  %300 = and i32 %292, %299, !mcsema_real_eip !60
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF, align 1, !mcsema_real_eip !60
  %302 = trunc i32 %291 to i8, !mcsema_real_eip !60
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !60
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF, align 1, !mcsema_real_eip !60
  %306 = icmp ult i32 %291, %267, !mcsema_real_eip !60
  store i1 %306, i1* %CF, align 1, !mcsema_real_eip !60
  %307 = zext i32 %291 to i64, !mcsema_real_eip !60
  store i64 %307, i64* %XSI, align 8, !mcsema_real_eip !60
  %R11_val.117 = load i64, i64* %R11, align 8, !mcsema_real_eip !61
  %308 = add i64 %R11_val.117, 8, !mcsema_real_eip !61
  %309 = inttoptr i64 %308 to i32*, !mcsema_real_eip !61
  %310 = load i32, i32* %309, align 4, !mcsema_real_eip !61
  %311 = zext i32 %310 to i64, !mcsema_real_eip !61
  store i64 %311, i64* %R8, align 8, !mcsema_real_eip !61
  %312 = add i64 %RBP_val.104, -96, !mcsema_real_eip !62
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !62
  %314 = load i64, i64* %313, align 8, !mcsema_real_eip !62
  store i64 %314, i64* %XAX, align 8, !mcsema_real_eip !62
  %315 = add i64 %314, 8, !mcsema_real_eip !63
  %316 = inttoptr i64 %315 to i32*, !mcsema_real_eip !63
  %317 = load i32, i32* %316, align 4, !mcsema_real_eip !63
  %318 = zext i32 %317 to i64, !mcsema_real_eip !63
  store i64 %318, i64* %R9, align 8, !mcsema_real_eip !63
  %319 = add i32 %317, %310, !mcsema_real_eip !64
  %320 = xor i32 %319, %310, !mcsema_real_eip !64
  %321 = xor i32 %320, %317, !mcsema_real_eip !64
  %322 = and i32 %321, 16, !mcsema_real_eip !64
  %323 = icmp ne i32 %322, 0, !mcsema_real_eip !64
  store i1 %323, i1* %AF, align 1, !mcsema_real_eip !64
  %324 = icmp slt i32 %319, 0
  store i1 %324, i1* %SF, align 1, !mcsema_real_eip !64
  %325 = icmp eq i32 %319, 0, !mcsema_real_eip !64
  store i1 %325, i1* %ZF, align 1, !mcsema_real_eip !64
  %326 = xor i32 %310, -2147483648, !mcsema_real_eip !64
  %327 = xor i32 %326, %317, !mcsema_real_eip !64
  %328 = and i32 %320, %327, !mcsema_real_eip !64
  %329 = icmp slt i32 %328, 0
  store i1 %329, i1* %OF, align 1, !mcsema_real_eip !64
  %330 = trunc i32 %319 to i8, !mcsema_real_eip !64
  %331 = tail call i8 @llvm.ctpop.i8(i8 %330), !mcsema_real_eip !64
  %332 = and i8 %331, 1
  %333 = icmp eq i8 %332, 0
  store i1 %333, i1* %PF, align 1, !mcsema_real_eip !64
  %334 = icmp ult i32 %319, %310, !mcsema_real_eip !64
  store i1 %334, i1* %CF, align 1, !mcsema_real_eip !64
  %335 = zext i32 %319 to i64, !mcsema_real_eip !64
  store i64 %335, i64* %R8, align 8, !mcsema_real_eip !64
  %336 = add i64 %RBP_val.104, -104, !mcsema_real_eip !65
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !65
  %338 = load i64, i64* %337, align 8, !mcsema_real_eip !65
  store i64 %338, i64* %XAX, align 8, !mcsema_real_eip !65
  %339 = add i64 %338, 8, !mcsema_real_eip !66
  %340 = inttoptr i64 %339 to i32*, !mcsema_real_eip !66
  %341 = load i32, i32* %340, align 4, !mcsema_real_eip !66
  %342 = zext i32 %341 to i64, !mcsema_real_eip !66
  store i64 %342, i64* %R9, align 8, !mcsema_real_eip !66
  %343 = add i32 %341, %319, !mcsema_real_eip !67
  %344 = zext i32 %343 to i64, !mcsema_real_eip !67
  store i64 %344, i64* %R8, align 8, !mcsema_real_eip !67
  %345 = add i32 %343, %291, !mcsema_real_eip !68
  %346 = xor i32 %345, %291, !mcsema_real_eip !68
  %347 = xor i32 %346, %343, !mcsema_real_eip !68
  %348 = and i32 %347, 16, !mcsema_real_eip !68
  %349 = icmp ne i32 %348, 0, !mcsema_real_eip !68
  store i1 %349, i1* %AF, align 1, !mcsema_real_eip !68
  %350 = icmp slt i32 %345, 0
  store i1 %350, i1* %SF, align 1, !mcsema_real_eip !68
  %351 = icmp eq i32 %345, 0, !mcsema_real_eip !68
  store i1 %351, i1* %ZF, align 1, !mcsema_real_eip !68
  %352 = xor i32 %291, -2147483648, !mcsema_real_eip !68
  %353 = xor i32 %352, %343, !mcsema_real_eip !68
  %354 = and i32 %346, %353, !mcsema_real_eip !68
  %355 = icmp slt i32 %354, 0
  store i1 %355, i1* %OF, align 1, !mcsema_real_eip !68
  %356 = trunc i32 %345 to i8, !mcsema_real_eip !68
  %357 = tail call i8 @llvm.ctpop.i8(i8 %356), !mcsema_real_eip !68
  %358 = and i8 %357, 1
  %359 = icmp eq i8 %358, 0
  store i1 %359, i1* %PF, align 1, !mcsema_real_eip !68
  %360 = icmp ult i32 %345, %291, !mcsema_real_eip !68
  store i1 %360, i1* %CF, align 1, !mcsema_real_eip !68
  %361 = zext i32 %345 to i64, !mcsema_real_eip !68
  store i64 %361, i64* %XSI, align 8, !mcsema_real_eip !68
  %362 = add i64 %RBP_val.104, -112, !mcsema_real_eip !69
  %363 = inttoptr i64 %362 to i32*, !mcsema_real_eip !69
  store i32 %345, i32* %363, align 4, !mcsema_real_eip !69
  %RBP_val.137 = load i64, i64* %XBP, align 8, !mcsema_real_eip !70
  %364 = add i64 %RBP_val.137, -112, !mcsema_real_eip !70
  %365 = inttoptr i64 %364 to i32*, !mcsema_real_eip !70
  %366 = load i32, i32* %365, align 4, !mcsema_real_eip !70
  %367 = zext i32 %366 to i64, !mcsema_real_eip !70
  store i64 %367, i64* %XSI, align 8, !mcsema_real_eip !70
  %368 = add i64 %RBP_val.137, -16, !mcsema_real_eip !71
  %369 = inttoptr i64 %368 to i32*, !mcsema_real_eip !71
  store i32 %366, i32* %369, align 4, !mcsema_real_eip !71
  %RBP_val.141 = load i64, i64* %XBP, align 8, !mcsema_real_eip !72
  %370 = add i64 %RBP_val.141, -120, !mcsema_real_eip !72
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !72
  %372 = load i64, i64* %371, align 8, !mcsema_real_eip !72
  store i64 %372, i64* %XAX, align 8, !mcsema_real_eip !72
  %373 = add i64 %RBP_val.141, -24, !mcsema_real_eip !73
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !73
  store i64 %372, i64* %374, align 8, !mcsema_real_eip !73
  %RBP_val.144 = load i64, i64* %XBP, align 8, !mcsema_real_eip !74
  %375 = add i64 %RBP_val.144, -16, !mcsema_real_eip !74
  %376 = inttoptr i64 %375 to i32*, !mcsema_real_eip !74
  %377 = load i32, i32* %376, align 4, !mcsema_real_eip !74
  %378 = zext i32 %377 to i64, !mcsema_real_eip !74
  store i64 %378, i64* %XSI, align 8, !mcsema_real_eip !74
  %379 = add i64 %RBP_val.144, -128, !mcsema_real_eip !75
  %380 = inttoptr i64 %379 to i32*, !mcsema_real_eip !75
  store i32 %377, i32* %380, align 4, !mcsema_real_eip !75
  %RBP_val.148 = load i64, i64* %XBP, align 8, !mcsema_real_eip !76
  %381 = add i64 %RBP_val.148, -24, !mcsema_real_eip !76
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !76
  %383 = load i64, i64* %382, align 8, !mcsema_real_eip !76
  store i64 %383, i64* %XAX, align 8, !mcsema_real_eip !76
  %384 = add i64 %RBP_val.148, -136, !mcsema_real_eip !77
  %385 = inttoptr i64 %384 to i64*, !mcsema_real_eip !77
  store i64 %383, i64* %385, align 8, !mcsema_real_eip !77
  %RBP_val.151 = load i64, i64* %XBP, align 8, !mcsema_real_eip !78
  %386 = add i64 %RBP_val.151, -136, !mcsema_real_eip !78
  %387 = inttoptr i64 %386 to i64*, !mcsema_real_eip !78
  %388 = load i64, i64* %387, align 8, !mcsema_real_eip !78
  store i64 %388, i64* %XAX, align 8, !mcsema_real_eip !78
  %389 = add i64 %RBP_val.151, -128, !mcsema_real_eip !79
  %390 = inttoptr i64 %389 to i32*, !mcsema_real_eip !79
  %391 = load i32, i32* %390, align 4, !mcsema_real_eip !79
  %392 = zext i32 %391 to i64, !mcsema_real_eip !79
  store i64 %392, i64* %XDX, align 8, !mcsema_real_eip !79
  %RSP_val.153 = load i64, i64* %XSP, align 8, !mcsema_real_eip !80
  %393 = inttoptr i64 %RSP_val.153 to i64*, !mcsema_real_eip !80
  %394 = load i64, i64* %393, align 8, !mcsema_real_eip !80
  store i64 %394, i64* %XBX, align 8, !mcsema_real_eip !80
  %395 = add i64 %RSP_val.153, 8, !mcsema_real_eip !80
  store i64 %395, i64* %XSP, align 8, !mcsema_real_eip !80
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !81
  %397 = load i64, i64* %396, align 8, !mcsema_real_eip !81
  store i64 %397, i64* %XBP, align 8, !mcsema_real_eip !81
  %398 = add i64 %RSP_val.153, 16, !mcsema_real_eip !81
  store i64 %398, i64* %XSP, align 8, !mcsema_real_eip !81
  %399 = add i64 %RSP_val.153, 24, !mcsema_real_eip !82
  %400 = inttoptr i64 %398 to i64*, !mcsema_real_eip !82
  %401 = load i64, i64* %400, align 8, !mcsema_real_eip !82
  store i64 %401, i64* %XIP, align 8, !mcsema_real_eip !82
  store i64 %399, i64* %XSP, align 8, !mcsema_real_eip !82
  ret void, !mcsema_real_eip !82
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_120(%RegState*) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [160 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [160 x i8], [160 x i8]* %_local_stack_start_ptr_1, i64 0, i64 160
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !83
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !83
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !83
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !83
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !83
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !83
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !83
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !83
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !83
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !83
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !83
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !83
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !83
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !83
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !83
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !83
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !83
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !83
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !83
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !83
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !83
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !83
  %RSP_val.157 = load i64, i64* %XSP, align 8, !mcsema_real_eip !83
  %_new_gep_ = getelementptr inbounds [160 x i8], [160 x i8]* %_local_stack_start_ptr_1, i64 0, i64 152
  %2 = add i64 %RSP_val.157, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  %3 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %3, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %3, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %2, i64* %XBP, align 8, !mcsema_real_eip !84
  %_new_gep_3 = getelementptr inbounds [160 x i8], [160 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %4 = add i64 %RSP_val.157, -152
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %3
  %5 = and i64 %_trans_xor_, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !85
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %7 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !85
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  store i1 %9, i1* %PF, align 1, !mcsema_real_eip !85
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !85
  %10 = icmp slt i64 %4, 0
  store i1 %10, i1* %SF, align 1, !mcsema_real_eip !85
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 144 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !85
  %11 = and i64 %_trans_xor_, %3, !mcsema_real_eip !85
  %12 = icmp slt i64 %11, 0
  store i1 %12, i1* %OF, align 1, !mcsema_real_eip !85
  store volatile i64 %_trans_p2i_, i64* %_RSP_ptr_.sroa.0, align 8
  %13 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_17 = getelementptr inbounds [160 x i8], [160 x i8]* %_local_stack_start_ptr_1, i64 0, i64 136
  %14 = bitcast i8* %_new_gep_17 to <4 x i32>*
  store <4 x i32> <i32 10, i32 10, i32 10, i32 0>, <4 x i32>* %14, align 8
  store i64 24, i64* %XAX, align 8, !mcsema_real_eip !86
  store i64 24, i64* %XCX, align 8, !mcsema_real_eip !87
  %_new_gep_26 = getelementptr inbounds [160 x i8], [160 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 ptrtoint (%0* @data_0x221 to i64), i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !88
  store i64 24, i64* %XDI, align 8, !mcsema_real_eip !89
  %15 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %16 = add i64 %RSP_val.157, -160
  %_allin_new_bt_30 = bitcast [160 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !90
  %17 = ptrtoint [160 x i8]* %_local_stack_start_ptr_1 to i64
  store volatile i64 %17, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %16, i64* %XSP, align 8, !mcsema_real_eip !90
  %18 = call x86_64_sysvcc i64 @_malloc(i64 24)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_11 = load i8*, i8** %15, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_11, i64 8
  %19 = ptrtoint i8* %_gep_fix_ to i64
  store i64 %19, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !90
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3112 = load i8*, i8** %13, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3112, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %18, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !91
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3413 = load i8*, i8** %13, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3413, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %20 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !92
  store i64 %20, i64* %XAX, align 8, !mcsema_real_eip !92
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !93
  store i32 5, i32* %21, align 4, !mcsema_real_eip !93
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3714 = load i8*, i8** %13, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3714, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %22 = load i64, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !94
  store i64 %22, i64* %XAX, align 8, !mcsema_real_eip !94
  %23 = add i64 %22, 4, !mcsema_real_eip !95
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !95
  store i32 5, i32* %24, align 4, !mcsema_real_eip !95
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4015 = load i8*, i8** %13, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4015, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %25 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !96
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !96
  %26 = add i64 %25, 8, !mcsema_real_eip !97
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !97
  store i32 5, i32* %27, align 4, !mcsema_real_eip !97
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4316 = load i8*, i8** %13, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4316, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %28 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !98
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !98
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4316, i64 -8
  %29 = bitcast i8* %_new_gep_47 to i32*
  %30 = load i32, i32* %29, align 4, !mcsema_real_eip !99
  %31 = zext i32 %30 to i64, !mcsema_real_eip !99
  store i64 %31, i64* %XDX, align 8, !mcsema_real_eip !99
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4316, i64 -48
  %EDX.182 = bitcast i64* %XDX to i32*, !mcsema_real_eip !100
  %32 = bitcast i8* %_new_gep_50 to i32*
  store i32 %30, i32* %32, align 4, !mcsema_real_eip !100
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5217 = load i8*, i8** %13, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5217, i64 -16
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %33 = load i64, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !101
  store i64 %33, i64* %XCX, align 8, !mcsema_real_eip !101
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5217, i64 -56
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 %33, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !102
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5818 = load i8*, i8** %13, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5818, i64 -56
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %34 = load i64, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !103
  store i64 %34, i64* %XDI, align 8, !mcsema_real_eip !103
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5818, i64 -48
  %35 = bitcast i8* %_new_gep_62 to i32*
  %36 = load i32, i32* %35, align 4, !mcsema_real_eip !104
  %37 = zext i32 %36 to i64, !mcsema_real_eip !104
  store i64 %37, i64* %XSI, align 8, !mcsema_real_eip !104
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5818, i64 -8
  %38 = bitcast i8* %_new_gep_65 to i32*
  %39 = load i32, i32* %38, align 4, !mcsema_real_eip !105
  %40 = zext i32 %39 to i64, !mcsema_real_eip !105
  store i64 %40, i64* %XDX, align 8, !mcsema_real_eip !105
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_673 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_673, i64* %XCX, align 8
  %41 = add i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_673, 16, !mcsema_real_eip !106
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !106
  store i32 %39, i32* %42, align 4, !mcsema_real_eip !106
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6919 = load i8*, i8** %13, align 8
  %_new_gep_70 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6919, i64 -16
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %43 = load i64, i64* %_allin_new_bt_71, align 8, !mcsema_real_eip !107
  %RCX_val.195 = load i64, i64* %XCX, align 8, !mcsema_real_eip !108
  %44 = add i64 %RCX_val.195, 8, !mcsema_real_eip !108
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !108
  store i64 %43, i64* %45, align 8, !mcsema_real_eip !108
  %RCX_val.197 = load i64, i64* %XCX, align 8, !mcsema_real_eip !109
  %46 = add i64 %RCX_val.197, 32, !mcsema_real_eip !109
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !109
  %RAX_val.198 = load i64, i64* %XAX, align 8, !mcsema_real_eip !109
  store i64 %RAX_val.198, i64* %47, align 8, !mcsema_real_eip !109
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7220 = load i8*, i8** %13, align 8
  %_new_gep_73 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7220, i64 -16
  %48 = ptrtoint i8* %_new_gep_73 to i64
  store i64 %48, i64* %R8, align 8, !mcsema_real_eip !110
  %RCX_val.200 = load i64, i64* %XCX, align 8, !mcsema_real_eip !111
  %49 = add i64 %RCX_val.200, 24, !mcsema_real_eip !111
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !111
  store i64 %48, i64* %50, align 8, !mcsema_real_eip !111
  %51 = bitcast i64* %XCX to i32**
  %RCX_val.2024 = load i32*, i32** %51, align 8
  store i32 3, i32* %RCX_val.2024, align 4, !mcsema_real_eip !112
  store i64 2, i64* %R9, align 8, !mcsema_real_eip !113
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7521 = load i8*, i8** %13, align 8
  %_new_gep_76 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7521, i64 -92
  %52 = bitcast i8* %_new_gep_76 to i32*
  store i32 1, i32* %52, align 4, !mcsema_real_eip !114
  %R8_val.206 = load i64, i64* %R8, align 8, !mcsema_real_eip !115
  store i64 %R8_val.206, i64* %XDX, align 8, !mcsema_real_eip !115
  %RAX_val.207 = load i64, i64* %XAX, align 8, !mcsema_real_eip !116
  store i64 %RAX_val.207, i64* %XCX, align 8, !mcsema_real_eip !116
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7822 = load i8*, i8** %13, align 8
  %_new_gep_79 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7822, i64 -92
  %53 = bitcast i8* %_new_gep_79 to i32*
  %54 = load i32, i32* %53, align 4, !mcsema_real_eip !117
  %55 = zext i32 %54 to i64, !mcsema_real_eip !117
  store i64 %55, i64* %R8, align 8, !mcsema_real_eip !117
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_8123 = load i8*, i8** %15, align 8
  %RSP_val.209 = load i64, i64* %XSP, align 8, !mcsema_real_eip !118
  %_new_gep_82 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_8123, i64 -8
  %56 = add i64 %RSP_val.209, -8
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_83, align 8, !mcsema_real_eip !118
  %57 = ptrtoint i8* %_new_gep_82 to i64
  store volatile i64 %57, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %56, i64* %XSP, align 8, !mcsema_real_eip !118
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17124 = load i8*, i8** %13, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_82, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17124)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_17325 = load i8*, i8** %15, align 8
  %_gep_fix_174 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_17325, i64 8
  %58 = ptrtoint i8* %_gep_fix_174 to i64
  store i64 %58, i64* %_RSP_ptr_.sroa.0, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8426 = load i8*, i8** %13, align 8
  %_new_gep_85 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8426, i64 -64
  %EDX_val.212 = load i32, i32* %EDX.182, align 4, !mcsema_real_eip !119
  %59 = bitcast i8* %_new_gep_85 to i32*
  store i32 %EDX_val.212, i32* %59, align 4, !mcsema_real_eip !119
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8727 = load i8*, i8** %13, align 8
  %_new_gep_88 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8727, i64 -72
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %RAX_val.214 = load i64, i64* %XAX, align 8, !mcsema_real_eip !120
  store i64 %RAX_val.214, i64* %_allin_new_bt_89, align 8, !mcsema_real_eip !120
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9028 = load i8*, i8** %13, align 8
  %_new_gep_91 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9028, i64 -72
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %60 = load i64, i64* %_allin_new_bt_92, align 8, !mcsema_real_eip !121
  store i64 %60, i64* %XAX, align 8, !mcsema_real_eip !121
  %_new_gep_94 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9028, i64 -40
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  store i64 %60, i64* %_allin_new_bt_95, align 8, !mcsema_real_eip !122
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9629 = load i8*, i8** %13, align 8
  %_new_gep_97 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9629, i64 -64
  %61 = bitcast i8* %_new_gep_97 to i32*
  %62 = load i32, i32* %61, align 4, !mcsema_real_eip !123
  %63 = zext i32 %62 to i64, !mcsema_real_eip !123
  store i64 %63, i64* %XDX, align 8, !mcsema_real_eip !123
  %_new_gep_100 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9629, i64 -32
  %64 = bitcast i8* %_new_gep_100 to i32*
  store i32 %62, i32* %64, align 4, !mcsema_real_eip !124
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10230 = load i8*, i8** %13, align 8
  %_new_gep_103 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10230, i64 -40
  %65 = bitcast i8* %_new_gep_103 to i32*
  %66 = load i32, i32* %65, align 4, !mcsema_real_eip !125
  %67 = zext i32 %66 to i64, !mcsema_real_eip !125
  store i64 %67, i64* %XDX, align 8, !mcsema_real_eip !125
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10230, i64 -36
  %68 = bitcast i8* %_new_gep_106 to i32*
  %69 = load i32, i32* %68, align 4, !mcsema_real_eip !126
  %70 = add i32 %66, %69, !mcsema_real_eip !126
  %71 = xor i32 %70, %69, !mcsema_real_eip !126
  %72 = xor i32 %71, %66, !mcsema_real_eip !126
  %73 = and i32 %72, 16, !mcsema_real_eip !126
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !126
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !126
  %75 = icmp slt i32 %70, 0
  store i1 %75, i1* %SF, align 1, !mcsema_real_eip !126
  %76 = icmp eq i32 %70, 0, !mcsema_real_eip !126
  store i1 %76, i1* %ZF, align 1, !mcsema_real_eip !126
  %77 = xor i32 %69, -2147483648, !mcsema_real_eip !126
  %78 = xor i32 %77, %66, !mcsema_real_eip !126
  %79 = and i32 %71, %78, !mcsema_real_eip !126
  %80 = icmp slt i32 %79, 0
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !126
  %81 = trunc i32 %70 to i8, !mcsema_real_eip !126
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !126
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !126
  %85 = icmp ult i32 %70, %69, !mcsema_real_eip !126
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !126
  %86 = zext i32 %70 to i64, !mcsema_real_eip !126
  store i64 %86, i64* %XDX, align 8, !mcsema_real_eip !126
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10230, i64 -32
  %87 = bitcast i8* %_new_gep_109 to i32*
  %88 = load i32, i32* %87, align 4, !mcsema_real_eip !127
  %89 = add i32 %70, %88, !mcsema_real_eip !127
  %90 = xor i32 %89, %88, !mcsema_real_eip !127
  %91 = xor i32 %90, %70, !mcsema_real_eip !127
  %92 = and i32 %91, 16, !mcsema_real_eip !127
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !127
  store i1 %93, i1* %AF, align 1, !mcsema_real_eip !127
  %94 = icmp slt i32 %89, 0
  store i1 %94, i1* %SF, align 1, !mcsema_real_eip !127
  %95 = icmp eq i32 %89, 0, !mcsema_real_eip !127
  store i1 %95, i1* %ZF, align 1, !mcsema_real_eip !127
  %96 = xor i32 %88, -2147483648, !mcsema_real_eip !127
  %97 = xor i32 %96, %70, !mcsema_real_eip !127
  %98 = and i32 %90, %97, !mcsema_real_eip !127
  %99 = icmp slt i32 %98, 0
  store i1 %99, i1* %OF, align 1, !mcsema_real_eip !127
  %100 = trunc i32 %89 to i8, !mcsema_real_eip !127
  %101 = call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !127
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  store i1 %103, i1* %PF, align 1, !mcsema_real_eip !127
  %104 = icmp ult i32 %89, %88, !mcsema_real_eip !127
  store i1 %104, i1* %CF, align 1, !mcsema_real_eip !127
  %105 = zext i32 %89 to i64, !mcsema_real_eip !127
  store i64 %105, i64* %XDX, align 8, !mcsema_real_eip !127
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10230, i64 -76
  %106 = bitcast i8* %_new_gep_112 to i32*
  store i32 %89, i32* %106, align 4, !mcsema_real_eip !128
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11431 = load i8*, i8** %13, align 8
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11431, i64 -76
  %107 = bitcast i8* %_new_gep_115 to i32*
  %108 = load i32, i32* %107, align 4, !mcsema_real_eip !129
  %109 = zext i32 %108 to i64, !mcsema_real_eip !129
  store i64 %109, i64* %XSI, align 8, !mcsema_real_eip !129
  %_new_gep_118 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11431, i64 -88
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %110 = load i64, i64* %_allin_new_bt_119, align 8, !mcsema_real_eip !130
  store i64 %110, i64* %XDI, align 8, !mcsema_real_eip !130
  %AL.234 = bitcast i64* %XAX to i8*, !mcsema_real_eip !131
  store i8 0, i8* %AL.234, align 1, !mcsema_real_eip !131
  %RDX_val.237 = load i64, i64* %XDX, align 8, !mcsema_real_eip !132
  %RCX_val.238 = load i64, i64* %XCX, align 8, !mcsema_real_eip !132
  %R8_val.239 = load i64, i64* %R8, align 8, !mcsema_real_eip !132
  %R9_val.240 = load i64, i64* %R9, align 8, !mcsema_real_eip !132
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032 = load i8*, i8** %15, align 8
  %_allin_new_bt_121 = bitcast i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032 to i64*
  %111 = load i64, i64* %_allin_new_bt_121, align 8, !mcsema_real_eip !132
  %_new_gep_122 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032, i64 8
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %112 = load i64, i64* %_allin_new_bt_123, align 8, !mcsema_real_eip !132
  %_new_gep_124 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032, i64 16
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %113 = load i64, i64* %_allin_new_bt_125, align 8, !mcsema_real_eip !132
  %_new_gep_126 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032, i64 24
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %114 = load i64, i64* %_allin_new_bt_127, align 8, !mcsema_real_eip !132
  %_new_gep_128 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032, i64 32
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %115 = load i64, i64* %_allin_new_bt_129, align 8, !mcsema_real_eip !132
  %_new_gep_130 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032, i64 40
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %116 = load i64, i64* %_allin_new_bt_131, align 8, !mcsema_real_eip !132
  %_new_gep_132 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032, i64 48
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %117 = load i64, i64* %_allin_new_bt_133, align 8, !mcsema_real_eip !132
  %_new_gep_134 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032, i64 56
  %_allin_new_bt_135 = bitcast i8* %_new_gep_134 to i64*
  %118 = load i64, i64* %_allin_new_bt_135, align 8, !mcsema_real_eip !132
  %_new_gep_136 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032, i64 64
  %_allin_new_bt_137 = bitcast i8* %_new_gep_136 to i64*
  %119 = load i64, i64* %_allin_new_bt_137, align 8, !mcsema_real_eip !132
  %_new_gep_138 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032, i64 72
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %120 = load i64, i64* %_allin_new_bt_139, align 8, !mcsema_real_eip !132
  %RSP_val.242 = load i64, i64* %XSP, align 8, !mcsema_real_eip !132
  %_new_gep_141 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_12032, i64 -8
  %121 = add i64 %RSP_val.242, -8
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_142, align 8, !mcsema_real_eip !132
  %122 = ptrtoint i8* %_new_gep_141 to i64
  store volatile i64 %122, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %121, i64* %XSP, align 8, !mcsema_real_eip !132
  %123 = call x86_64_sysvcc i64 @_printf(i64 %110, i64 %109, i64 %RDX_val.237, i64 %RCX_val.238, i64 %R8_val.239, i64 %R9_val.240, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_17533 = load i8*, i8** %15, align 8
  %_gep_fix_176 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_17533, i64 8
  %124 = ptrtoint i8* %_gep_fix_176 to i64
  store i64 %124, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %123, i64* %XAX, align 8, !mcsema_real_eip !132
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14334 = load i8*, i8** %13, align 8
  %_new_gep_144 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14334, i64 -76
  %125 = bitcast i8* %_new_gep_144 to i32*
  %126 = load i32, i32* %125, align 4, !mcsema_real_eip !133
  %127 = zext i32 %126 to i64, !mcsema_real_eip !133
  store i64 %127, i64* %XDX, align 8, !mcsema_real_eip !133
  %_new_gep_147 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14334, i64 -96
  %128 = trunc i64 %123 to i32
  %129 = bitcast i8* %_new_gep_147 to i32*
  store i32 %128, i32* %129, align 4, !mcsema_real_eip !134
  %EDX_val.248 = load i32, i32* %EDX.182, align 4, !mcsema_real_eip !135
  %130 = zext i32 %EDX_val.248 to i64, !mcsema_real_eip !135
  store i64 %130, i64* %XAX, align 8, !mcsema_real_eip !135
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_149 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %131 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_149 to i8*
  %RSP_val.249 = load i64, i64* %XSP, align 8, !mcsema_real_eip !136
  %_new_gep_150 = getelementptr i8, i8* %131, i64 144
  %132 = add i64 %RSP_val.249, 144, !mcsema_real_eip !136
  %_trans_p2i_151 = ptrtoint i8* %_new_gep_150 to i64
  %_trans_xor_153 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_149, %_trans_p2i_151
  %133 = and i64 %_trans_xor_153, 16
  %134 = icmp eq i64 %133, 0
  store i1 %134, i1* %AF, align 1, !mcsema_real_eip !136
  %135 = icmp slt i64 %132, 0
  store i1 %135, i1* %SF, align 1, !mcsema_real_eip !136
  %_trans_icmp_eq_155 = icmp eq i8* %_new_gep_150, null
  store i1 %_trans_icmp_eq_155, i1* %ZF, align 1, !mcsema_real_eip !136
  %136 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_149, -9223372036854775808, !mcsema_real_eip !136
  %137 = and i64 %_trans_xor_153, %136, !mcsema_real_eip !136
  %138 = icmp slt i64 %137, 0
  store i1 %138, i1* %OF, align 1, !mcsema_real_eip !136
  %_trans_trunc_162 = trunc i64 %_trans_p2i_151 to i8
  %139 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_162), !mcsema_real_eip !136
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  store i1 %141, i1* %PF, align 1, !mcsema_real_eip !136
  %_trans_icmp_ne_164 = icmp ne i64 %RSP_val.249, %_trans_p2i_151
  store i1 %_trans_icmp_ne_164, i1* %CF, align 1, !mcsema_real_eip !136
  store volatile i64 %_trans_p2i_151, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %132, i64* %XSP, align 8, !mcsema_real_eip !136
  %_allin_new_bt_166 = bitcast i8* %_new_gep_150 to i64*
  %142 = load i64, i64* %_allin_new_bt_166, align 8, !mcsema_real_eip !137
  store volatile i64 %142, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %142, i64* %XBP, align 8, !mcsema_real_eip !137
  %_new_gep_167 = getelementptr i8, i8* %131, i64 152
  %143 = add i64 %RSP_val.249, 152, !mcsema_real_eip !137
  %144 = ptrtoint i8* %_new_gep_167 to i64
  store volatile i64 %144, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %143, i64* %XSP, align 8, !mcsema_real_eip !137
  %_new_gep_169 = getelementptr i8, i8* %131, i64 160
  %145 = add i64 %RSP_val.249, 160, !mcsema_real_eip !138
  %_allin_new_bt_170 = bitcast i8* %_new_gep_167 to i64*
  %146 = load i64, i64* %_allin_new_bt_170, align 8, !mcsema_real_eip !138
  store i64 %146, i64* %XIP, align 8, !mcsema_real_eip !138
  %147 = ptrtoint i8* %_new_gep_169 to i64
  store volatile i64 %147, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %145, i64* %XSP, align 8, !mcsema_real_eip !138
  ret void, !mcsema_real_eip !138
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
  %_local_stack_start_ptr_1 = alloca [144 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 144
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !2
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
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 136
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, align 8, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 128
  %2 = add i64 %RSP_val.1, -16
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.3, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 184
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 40
  %_cond1_ = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_6
  %3 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %3, align 8
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 176
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 32
  %_cond1_154 = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  %_address_in_parent_stack_bt_162._allin_new_bt_10.v = select i1 %_cond1_n_cond2_cond3_160, i8* %_pot_address_in_parent_stack_153, i8* %_new_gep_9
  %_address_in_parent_stack_bt_162._allin_new_bt_10 = bitcast i8* %_address_in_parent_stack_bt_162._allin_new_bt_10.v to i64*
  %_new_load_163 = load i64, i64* %_address_in_parent_stack_bt_162._allin_new_bt_10, align 8
  store i64 %_new_load_163, i64* %R10, align 8, !mcsema_real_eip !6
  %_new_gep_12 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 160
  %4 = ptrtoint i8* %_new_gep_12 to i64
  store i64 %4, i64* %R11, align 8, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 152
  %_pot_address_in_parent_stack_168 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_169 = icmp ugt i8* %_new_gep_15, %_local_stack_end_ptr_
  %_cond2_1_170 = icmp ugt i8* %_new_gep_15, %_parent_stack_end_ptr_
  %_cond2_2_171 = icmp ult i8* %_new_gep_15, %_parent_stack_start_ptr_
  %_cond2_172 = or i1 %_cond2_1_170, %_cond2_2_171
  %_cond4_173 = icmp ule i8* %_pot_address_in_parent_stack_168, %_parent_stack_end_ptr_
  %_cond1_n_cond2_174 = and i1 %_cond1_169, %_cond2_172
  %_cond1_n_cond2_cond3_175 = and i1 %_cond1_n_cond2_174, %_cond4_173
  %.v2 = select i1 %_cond1_n_cond2_cond3_175, i8* %_pot_address_in_parent_stack_168, i8* %_new_gep_15
  %5 = bitcast i8* %.v2 to i32*
  %_new_load_178 = load i32, i32* %5, align 4
  %6 = zext i32 %_new_load_178 to i64, !mcsema_real_eip !8
  store i64 %6, i64* %XBX, align 8, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 80
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %RDI_val.10 = load i64, i64* %XDI, align 8, !mcsema_real_eip !9
  store i64 %RDI_val.10, i64* %_allin_new_bt_19, align 8, !mcsema_real_eip !9
  %_new_gep_21 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %ESI.12 = bitcast i64* %XSI to i32*, !mcsema_real_eip !10
  %ESI_val.13 = load i32, i32* %ESI.12, align 4, !mcsema_real_eip !10
  %7 = bitcast i8* %_new_gep_21 to i32*
  store i32 %ESI_val.13, i32* %7, align 4, !mcsema_real_eip !10
  %8 = zext i32 %ESI_val.13 to i64, !mcsema_real_eip !11
  store i64 %8, i64* %XSI, align 8, !mcsema_real_eip !11
  %_new_gep_27 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %9 = bitcast i8* %_new_gep_27 to i32*
  store i32 %ESI_val.13, i32* %9, align 4, !mcsema_real_eip !12
  %10 = bitcast i8* %_new_gep_18 to i64*
  %_new_load_208 = load i64, i64* %10, align 8
  store i64 %_new_load_208, i64* %XDI, align 8, !mcsema_real_eip !13
  %_new_gep_33 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 96
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  store i64 %_new_load_208, i64* %_allin_new_bt_34, align 8, !mcsema_real_eip !14
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_36 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_35, i64 -64
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %RDX_val.22 = load i64, i64* %XDX, align 8, !mcsema_real_eip !15
  store i64 %RDX_val.22, i64* %_allin_new_bt_37, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_38, i64 -72
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %RCX_val.24 = load i64, i64* %XCX, align 8, !mcsema_real_eip !16
  store i64 %RCX_val.24, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -76
  %R8D.26 = bitcast i64* %R8 to i32*, !mcsema_real_eip !17
  %R8D_val.27 = load i32, i32* %R8D.26, align 4, !mcsema_real_eip !17
  %11 = bitcast i8* %_new_gep_42 to i32*
  store i32 %R8D_val.27, i32* %11, align 4, !mcsema_real_eip !17
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_44, i64 -80
  %R9D.29 = bitcast i64* %R9 to i32*, !mcsema_real_eip !18
  %R9D_val.30 = load i32, i32* %R9D.29, align 4, !mcsema_real_eip !18
  %12 = bitcast i8* %_new_gep_45 to i32*
  store i32 %R9D_val.30, i32* %12, align 4, !mcsema_real_eip !18
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47, i64 -84
  %EBX.32 = bitcast i64* %XBX to i32*, !mcsema_real_eip !19
  %EBX_val.33 = load i32, i32* %EBX.32, align 4, !mcsema_real_eip !19
  %13 = bitcast i8* %_new_gep_48 to i32*
  store i32 %EBX_val.33, i32* %13, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -96
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %R10_val.35 = load i64, i64* %R10, align 8, !mcsema_real_eip !20
  store i64 %R10_val.35, i64* %_allin_new_bt_52, align 8, !mcsema_real_eip !20
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -104
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %RAX_val.37 = load i64, i64* %XAX, align 8, !mcsema_real_eip !21
  store i64 %RAX_val.37, i64* %_allin_new_bt_55, align 8, !mcsema_real_eip !21
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_57 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -40
  %14 = ptrtoint i8* %_new_gep_57 to i64
  %_offset_above_rbp_212 = sub i64 %14, %_local_end_to_int_
  %_pot_address_in_parent_stack_213 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_212
  %_cond1_214 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_215 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_216 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_217 = or i1 %_cond2_1_215, %_cond2_2_216
  %_cond4_218 = icmp ule i8* %_pot_address_in_parent_stack_213, %_parent_stack_end_ptr_
  %_cond1_n_cond2_219 = and i1 %_cond1_214, %_cond2_217
  %_cond1_n_cond2_cond3_220 = and i1 %_cond1_n_cond2_219, %_cond4_218
  %_address_in_parent_stack_bt_222..v = select i1 %_cond1_n_cond2_cond3_220, i8* %_pot_address_in_parent_stack_213, i8* %_new_gep_57
  %_address_in_parent_stack_bt_222. = bitcast i8* %_address_in_parent_stack_bt_222..v to i32*
  %_new_load_223 = load i32, i32* %_address_in_parent_stack_bt_222., align 4
  %15 = zext i32 %_new_load_223 to i64, !mcsema_real_eip !22
  store i64 %15, i64* %XSI, align 8, !mcsema_real_eip !22
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -64
  %_ptr_to_int_224 = ptrtoint i8* %_new_gep_60 to i64
  %_offset_above_rbp_227 = sub i64 %_ptr_to_int_224, %_local_end_to_int_
  %_pot_address_in_parent_stack_228 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_227
  %_cond1_229 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_230 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_231 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_232 = or i1 %_cond2_1_230, %_cond2_2_231
  %_cond4_233 = icmp ule i8* %_pot_address_in_parent_stack_228, %_parent_stack_end_ptr_
  %_cond1_n_cond2_234 = and i1 %_cond1_229, %_cond2_232
  %_cond1_n_cond2_cond3_235 = and i1 %_cond1_n_cond2_234, %_cond4_233
  %.v4 = select i1 %_cond1_n_cond2_cond3_235, i8* %_pot_address_in_parent_stack_228, i8* %_new_gep_60
  %16 = bitcast i8* %.v4 to i64*
  %_new_load_238 = load i64, i64* %16, align 8
  store i64 %_new_load_238, i64* %XAX, align 8, !mcsema_real_eip !23
  %17 = inttoptr i64 %_new_load_238 to i32*, !mcsema_real_eip !24
  %_ptr_bt_241 = inttoptr i64 %_new_load_238 to i8*
  %_offset_above_rbp_242 = sub i64 %_new_load_238, %_local_end_to_int_
  %_pot_address_in_parent_stack_243 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_242
  %_cond1_244 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_241
  %_cond2_1_245 = icmp ugt i8* %_ptr_bt_241, %_parent_stack_end_ptr_
  %_cond2_2_246 = icmp ult i8* %_ptr_bt_241, %_parent_stack_start_ptr_
  %_cond2_247 = or i1 %_cond2_1_245, %_cond2_2_246
  %_cond4_248 = icmp ule i8* %_pot_address_in_parent_stack_243, %_parent_stack_end_ptr_
  %_cond1_n_cond2_249 = and i1 %_cond1_244, %_cond2_247
  %_cond1_n_cond2_cond3_250 = and i1 %_cond4_248, %_cond1_n_cond2_249
  %_address_in_parent_stack_bt_252 = bitcast i8* %_pot_address_in_parent_stack_243 to i32*
  %_address_in_parent_stack_bt_252. = select i1 %_cond1_n_cond2_cond3_250, i32* %_address_in_parent_stack_bt_252, i32* %17
  %_new_load_253 = load i32, i32* %_address_in_parent_stack_bt_252., align 4
  %18 = zext i32 %_new_load_253 to i64, !mcsema_real_eip !24
  store i64 %18, i64* %R8, align 8, !mcsema_real_eip !24
  %19 = add i32 %_new_load_253, %_new_load_223, !mcsema_real_eip !25
  %20 = xor i32 %19, %_new_load_223, !mcsema_real_eip !25
  %21 = xor i32 %20, %_new_load_253, !mcsema_real_eip !25
  %22 = and i32 %21, 16, !mcsema_real_eip !25
  %23 = icmp ne i32 %22, 0, !mcsema_real_eip !25
  store i1 %23, i1* %AF, align 1, !mcsema_real_eip !25
  %24 = icmp slt i32 %19, 0
  store i1 %24, i1* %SF, align 1, !mcsema_real_eip !25
  %25 = icmp eq i32 %19, 0, !mcsema_real_eip !25
  store i1 %25, i1* %ZF, align 1, !mcsema_real_eip !25
  %26 = xor i32 %_new_load_223, -2147483648, !mcsema_real_eip !25
  %27 = xor i32 %26, %_new_load_253, !mcsema_real_eip !25
  %28 = and i32 %20, %27, !mcsema_real_eip !25
  %29 = icmp slt i32 %28, 0
  store i1 %29, i1* %OF, align 1, !mcsema_real_eip !25
  %30 = trunc i32 %19 to i8, !mcsema_real_eip !25
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !25
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  store i1 %33, i1* %PF, align 1, !mcsema_real_eip !25
  %34 = icmp ult i32 %19, %_new_load_223, !mcsema_real_eip !25
  store i1 %34, i1* %CF, align 1, !mcsema_real_eip !25
  %35 = zext i32 %19 to i64, !mcsema_real_eip !25
  store i64 %35, i64* %XSI, align 8, !mcsema_real_eip !25
  %_new_gep_63 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -72
  %_ptr_to_int_254 = ptrtoint i8* %_new_gep_63 to i64
  %_offset_above_rbp_257 = sub i64 %_ptr_to_int_254, %_local_end_to_int_
  %_pot_address_in_parent_stack_258 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_257
  %_cond1_259 = icmp ugt i8* %_new_gep_63, %_local_stack_end_ptr_
  %_cond2_1_260 = icmp ugt i8* %_new_gep_63, %_parent_stack_end_ptr_
  %_cond2_2_261 = icmp ult i8* %_new_gep_63, %_parent_stack_start_ptr_
  %_cond2_262 = or i1 %_cond2_1_260, %_cond2_2_261
  %_cond4_263 = icmp ule i8* %_pot_address_in_parent_stack_258, %_parent_stack_end_ptr_
  %_cond1_n_cond2_264 = and i1 %_cond1_259, %_cond2_262
  %_cond1_n_cond2_cond3_265 = and i1 %_cond1_n_cond2_264, %_cond4_263
  %.v5 = select i1 %_cond1_n_cond2_cond3_265, i8* %_pot_address_in_parent_stack_258, i8* %_new_gep_63
  %36 = bitcast i8* %.v5 to i64*
  %_new_load_268 = load i64, i64* %36, align 8
  store i64 %_new_load_268, i64* %XAX, align 8, !mcsema_real_eip !26
  %37 = inttoptr i64 %_new_load_268 to i32*, !mcsema_real_eip !27
  %_ptr_bt_271 = inttoptr i64 %_new_load_268 to i8*
  %_offset_above_rbp_272 = sub i64 %_new_load_268, %_local_end_to_int_
  %_pot_address_in_parent_stack_273 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_272
  %_cond1_274 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_271
  %_cond2_1_275 = icmp ugt i8* %_ptr_bt_271, %_parent_stack_end_ptr_
  %_cond2_2_276 = icmp ult i8* %_ptr_bt_271, %_parent_stack_start_ptr_
  %_cond2_277 = or i1 %_cond2_1_275, %_cond2_2_276
  %_cond4_278 = icmp ule i8* %_pot_address_in_parent_stack_273, %_parent_stack_end_ptr_
  %_cond1_n_cond2_279 = and i1 %_cond1_274, %_cond2_277
  %_cond1_n_cond2_cond3_280 = and i1 %_cond4_278, %_cond1_n_cond2_279
  %_address_in_parent_stack_bt_282 = bitcast i8* %_pot_address_in_parent_stack_273 to i32*
  %_address_in_parent_stack_bt_282. = select i1 %_cond1_n_cond2_cond3_280, i32* %_address_in_parent_stack_bt_282, i32* %37
  %_new_load_283 = load i32, i32* %_address_in_parent_stack_bt_282., align 4
  %38 = zext i32 %_new_load_283 to i64, !mcsema_real_eip !27
  store i64 %38, i64* %R8, align 8, !mcsema_real_eip !27
  %39 = add i32 %_new_load_283, %19, !mcsema_real_eip !28
  %40 = xor i32 %39, %19, !mcsema_real_eip !28
  %41 = xor i32 %40, %_new_load_283, !mcsema_real_eip !28
  %42 = and i32 %41, 16, !mcsema_real_eip !28
  %43 = icmp ne i32 %42, 0, !mcsema_real_eip !28
  store i1 %43, i1* %AF, align 1, !mcsema_real_eip !28
  %44 = icmp slt i32 %39, 0
  store i1 %44, i1* %SF, align 1, !mcsema_real_eip !28
  %45 = icmp eq i32 %39, 0, !mcsema_real_eip !28
  store i1 %45, i1* %ZF, align 1, !mcsema_real_eip !28
  %46 = xor i32 %19, -2147483648, !mcsema_real_eip !28
  %47 = xor i32 %46, %_new_load_283, !mcsema_real_eip !28
  %48 = and i32 %40, %47, !mcsema_real_eip !28
  %49 = icmp slt i32 %48, 0
  store i1 %49, i1* %OF, align 1, !mcsema_real_eip !28
  %50 = trunc i32 %39 to i8, !mcsema_real_eip !28
  %51 = call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !28
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  store i1 %53, i1* %PF, align 1, !mcsema_real_eip !28
  %54 = icmp ult i32 %39, %19, !mcsema_real_eip !28
  store i1 %54, i1* %CF, align 1, !mcsema_real_eip !28
  %55 = zext i32 %39 to i64, !mcsema_real_eip !28
  store i64 %55, i64* %XSI, align 8, !mcsema_real_eip !28
  %R11_val.51 = load i64, i64* %R11, align 8, !mcsema_real_eip !29
  %56 = inttoptr i64 %R11_val.51 to i32*, !mcsema_real_eip !29
  %_ptr_bt_286 = inttoptr i64 %R11_val.51 to i8*
  %_offset_above_rbp_287 = sub i64 %R11_val.51, %_local_end_to_int_
  %_pot_address_in_parent_stack_288 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_287
  %_cond1_289 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_286
  %_cond2_1_290 = icmp ugt i8* %_ptr_bt_286, %_parent_stack_end_ptr_
  %_cond2_2_291 = icmp ult i8* %_ptr_bt_286, %_parent_stack_start_ptr_
  %_cond2_292 = or i1 %_cond2_1_290, %_cond2_2_291
  %_cond4_293 = icmp ule i8* %_pot_address_in_parent_stack_288, %_parent_stack_end_ptr_
  %_cond1_n_cond2_294 = and i1 %_cond1_289, %_cond2_292
  %_cond1_n_cond2_cond3_295 = and i1 %_cond4_293, %_cond1_n_cond2_294
  %_address_in_parent_stack_bt_297 = bitcast i8* %_pot_address_in_parent_stack_288 to i32*
  %57 = select i1 %_cond1_n_cond2_cond3_295, i32* %_address_in_parent_stack_bt_297, i32* %56
  %_new_load_298 = load i32, i32* %57, align 4
  %58 = zext i32 %_new_load_298 to i64, !mcsema_real_eip !29
  store i64 %58, i64* %R8, align 8, !mcsema_real_eip !29
  %_new_gep_66 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -96
  %_ptr_to_int_299 = ptrtoint i8* %_new_gep_66 to i64
  %_offset_above_rbp_302 = sub i64 %_ptr_to_int_299, %_local_end_to_int_
  %_pot_address_in_parent_stack_303 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_302
  %_cond1_304 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_305 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_306 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_307 = or i1 %_cond2_1_305, %_cond2_2_306
  %_cond4_308 = icmp ule i8* %_pot_address_in_parent_stack_303, %_parent_stack_end_ptr_
  %_cond1_n_cond2_309 = and i1 %_cond1_304, %_cond2_307
  %_cond1_n_cond2_cond3_310 = and i1 %_cond1_n_cond2_309, %_cond4_308
  %_address_in_parent_stack_bt_312._allin_new_bt_67.v = select i1 %_cond1_n_cond2_cond3_310, i8* %_pot_address_in_parent_stack_303, i8* %_new_gep_66
  %_address_in_parent_stack_bt_312._allin_new_bt_67 = bitcast i8* %_address_in_parent_stack_bt_312._allin_new_bt_67.v to i64*
  %_new_load_313 = load i64, i64* %_address_in_parent_stack_bt_312._allin_new_bt_67, align 8
  store i64 %_new_load_313, i64* %XAX, align 8, !mcsema_real_eip !30
  %59 = inttoptr i64 %_new_load_313 to i32*, !mcsema_real_eip !31
  %_ptr_bt_316 = inttoptr i64 %_new_load_313 to i8*
  %_offset_above_rbp_317 = sub i64 %_new_load_313, %_local_end_to_int_
  %_pot_address_in_parent_stack_318 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_317
  %_cond1_319 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_316
  %_cond2_1_320 = icmp ugt i8* %_ptr_bt_316, %_parent_stack_end_ptr_
  %_cond2_2_321 = icmp ult i8* %_ptr_bt_316, %_parent_stack_start_ptr_
  %_cond2_322 = or i1 %_cond2_1_320, %_cond2_2_321
  %_cond4_323 = icmp ule i8* %_pot_address_in_parent_stack_318, %_parent_stack_end_ptr_
  %_cond1_n_cond2_324 = and i1 %_cond1_319, %_cond2_322
  %_cond1_n_cond2_cond3_325 = and i1 %_cond4_323, %_cond1_n_cond2_324
  %_address_in_parent_stack_bt_327 = bitcast i8* %_pot_address_in_parent_stack_318 to i32*
  %60 = select i1 %_cond1_n_cond2_cond3_325, i32* %_address_in_parent_stack_bt_327, i32* %59
  %_new_load_328 = load i32, i32* %60, align 4
  %61 = zext i32 %_new_load_328 to i64, !mcsema_real_eip !31
  store i64 %61, i64* %R9, align 8, !mcsema_real_eip !31
  %62 = add i32 %_new_load_328, %_new_load_298, !mcsema_real_eip !32
  %63 = xor i32 %62, %_new_load_298, !mcsema_real_eip !32
  %64 = xor i32 %63, %_new_load_328, !mcsema_real_eip !32
  %65 = and i32 %64, 16, !mcsema_real_eip !32
  %66 = icmp ne i32 %65, 0, !mcsema_real_eip !32
  store i1 %66, i1* %AF, align 1, !mcsema_real_eip !32
  %67 = icmp slt i32 %62, 0
  store i1 %67, i1* %SF, align 1, !mcsema_real_eip !32
  %68 = icmp eq i32 %62, 0, !mcsema_real_eip !32
  store i1 %68, i1* %ZF, align 1, !mcsema_real_eip !32
  %69 = xor i32 %_new_load_298, -2147483648, !mcsema_real_eip !32
  %70 = xor i32 %69, %_new_load_328, !mcsema_real_eip !32
  %71 = and i32 %63, %70, !mcsema_real_eip !32
  %72 = icmp slt i32 %71, 0
  store i1 %72, i1* %OF, align 1, !mcsema_real_eip !32
  %73 = trunc i32 %62 to i8, !mcsema_real_eip !32
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !32
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  store i1 %76, i1* %PF, align 1, !mcsema_real_eip !32
  %77 = icmp ult i32 %62, %_new_load_298, !mcsema_real_eip !32
  store i1 %77, i1* %CF, align 1, !mcsema_real_eip !32
  %78 = zext i32 %62 to i64, !mcsema_real_eip !32
  store i64 %78, i64* %R8, align 8, !mcsema_real_eip !32
  %_new_gep_69 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -104
  %_ptr_to_int_329 = ptrtoint i8* %_new_gep_69 to i64
  %_offset_above_rbp_332 = sub i64 %_ptr_to_int_329, %_local_end_to_int_
  %_pot_address_in_parent_stack_333 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_332
  %_cond1_334 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_335 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_336 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_337 = or i1 %_cond2_1_335, %_cond2_2_336
  %_cond4_338 = icmp ule i8* %_pot_address_in_parent_stack_333, %_parent_stack_end_ptr_
  %_cond1_n_cond2_339 = and i1 %_cond1_334, %_cond2_337
  %_cond1_n_cond2_cond3_340 = and i1 %_cond1_n_cond2_339, %_cond4_338
  %_address_in_parent_stack_bt_342._allin_new_bt_70.v = select i1 %_cond1_n_cond2_cond3_340, i8* %_pot_address_in_parent_stack_333, i8* %_new_gep_69
  %_address_in_parent_stack_bt_342._allin_new_bt_70 = bitcast i8* %_address_in_parent_stack_bt_342._allin_new_bt_70.v to i64*
  %_new_load_343 = load i64, i64* %_address_in_parent_stack_bt_342._allin_new_bt_70, align 8
  store i64 %_new_load_343, i64* %XAX, align 8, !mcsema_real_eip !33
  %79 = inttoptr i64 %_new_load_343 to i32*, !mcsema_real_eip !34
  %_ptr_bt_346 = inttoptr i64 %_new_load_343 to i8*
  %_offset_above_rbp_347 = sub i64 %_new_load_343, %_local_end_to_int_
  %_pot_address_in_parent_stack_348 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_347
  %_cond1_349 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_346
  %_cond2_1_350 = icmp ugt i8* %_ptr_bt_346, %_parent_stack_end_ptr_
  %_cond2_2_351 = icmp ult i8* %_ptr_bt_346, %_parent_stack_start_ptr_
  %_cond2_352 = or i1 %_cond2_1_350, %_cond2_2_351
  %_cond4_353 = icmp ule i8* %_pot_address_in_parent_stack_348, %_parent_stack_end_ptr_
  %_cond1_n_cond2_354 = and i1 %_cond1_349, %_cond2_352
  %_cond1_n_cond2_cond3_355 = and i1 %_cond4_353, %_cond1_n_cond2_354
  %_address_in_parent_stack_bt_357 = bitcast i8* %_pot_address_in_parent_stack_348 to i32*
  %80 = select i1 %_cond1_n_cond2_cond3_355, i32* %_address_in_parent_stack_bt_357, i32* %79
  %_new_load_358 = load i32, i32* %80, align 4
  %81 = zext i32 %_new_load_358 to i64, !mcsema_real_eip !34
  store i64 %81, i64* %R9, align 8, !mcsema_real_eip !34
  %82 = add i32 %_new_load_358, %62, !mcsema_real_eip !35
  %83 = zext i32 %82 to i64, !mcsema_real_eip !35
  store i64 %83, i64* %R8, align 8, !mcsema_real_eip !35
  %ESI_val.65 = load i32, i32* %ESI.12, align 4, !mcsema_real_eip !36
  %84 = add i32 %82, %ESI_val.65, !mcsema_real_eip !36
  %85 = xor i32 %84, %ESI_val.65, !mcsema_real_eip !36
  %86 = xor i32 %85, %82, !mcsema_real_eip !36
  %87 = and i32 %86, 16, !mcsema_real_eip !36
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !36
  store i1 %88, i1* %AF, align 1, !mcsema_real_eip !36
  %89 = icmp slt i32 %84, 0
  store i1 %89, i1* %SF, align 1, !mcsema_real_eip !36
  %90 = icmp eq i32 %84, 0, !mcsema_real_eip !36
  store i1 %90, i1* %ZF, align 1, !mcsema_real_eip !36
  %91 = xor i32 %ESI_val.65, -2147483648, !mcsema_real_eip !36
  %92 = xor i32 %91, %82, !mcsema_real_eip !36
  %93 = and i32 %85, %92, !mcsema_real_eip !36
  %94 = icmp slt i32 %93, 0
  store i1 %94, i1* %OF, align 1, !mcsema_real_eip !36
  %95 = trunc i32 %84 to i8, !mcsema_real_eip !36
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !36
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  store i1 %98, i1* %PF, align 1, !mcsema_real_eip !36
  %99 = icmp ult i32 %84, %ESI_val.65, !mcsema_real_eip !36
  store i1 %99, i1* %CF, align 1, !mcsema_real_eip !36
  %100 = zext i32 %84 to i64, !mcsema_real_eip !36
  store i64 %100, i64* %XSI, align 8, !mcsema_real_eip !36
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -120
  %101 = bitcast i8* %_new_gep_72 to i32*
  store i32 %84, i32* %101, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -36
  %102 = ptrtoint i8* %_new_gep_75 to i64
  %_offset_above_rbp_362 = sub i64 %102, %_local_end_to_int_
  %_pot_address_in_parent_stack_363 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_362
  %_cond1_364 = icmp ugt i8* %_new_gep_75, %_local_stack_end_ptr_
  %_cond2_1_365 = icmp ugt i8* %_new_gep_75, %_parent_stack_end_ptr_
  %_cond2_2_366 = icmp ult i8* %_new_gep_75, %_parent_stack_start_ptr_
  %_cond2_367 = or i1 %_cond2_1_365, %_cond2_2_366
  %_cond4_368 = icmp ule i8* %_pot_address_in_parent_stack_363, %_parent_stack_end_ptr_
  %_cond1_n_cond2_369 = and i1 %_cond1_364, %_cond2_367
  %_cond1_n_cond2_cond3_370 = and i1 %_cond1_n_cond2_369, %_cond4_368
  %_address_in_parent_stack_bt_372..v = select i1 %_cond1_n_cond2_cond3_370, i8* %_pot_address_in_parent_stack_363, i8* %_new_gep_75
  %_address_in_parent_stack_bt_372. = bitcast i8* %_address_in_parent_stack_bt_372..v to i32*
  %_new_load_373 = load i32, i32* %_address_in_parent_stack_bt_372., align 4
  %103 = zext i32 %_new_load_373 to i64, !mcsema_real_eip !38
  store i64 %103, i64* %XSI, align 8, !mcsema_real_eip !38
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -64
  %_ptr_to_int_374 = ptrtoint i8* %_new_gep_78 to i64
  %_offset_above_rbp_377 = sub i64 %_ptr_to_int_374, %_local_end_to_int_
  %_pot_address_in_parent_stack_378 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_377
  %_cond1_379 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_380 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_381 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_382 = or i1 %_cond2_1_380, %_cond2_2_381
  %_cond4_383 = icmp ule i8* %_pot_address_in_parent_stack_378, %_parent_stack_end_ptr_
  %_cond1_n_cond2_384 = and i1 %_cond1_379, %_cond2_382
  %_cond1_n_cond2_cond3_385 = and i1 %_cond1_n_cond2_384, %_cond4_383
  %.v6 = select i1 %_cond1_n_cond2_cond3_385, i8* %_pot_address_in_parent_stack_378, i8* %_new_gep_78
  %104 = bitcast i8* %.v6 to i64*
  %_new_load_388 = load i64, i64* %104, align 8
  store i64 %_new_load_388, i64* %XAX, align 8, !mcsema_real_eip !39
  %105 = add i64 %_new_load_388, 4, !mcsema_real_eip !40
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !40
  %_ptr_bt_391 = inttoptr i64 %105 to i8*
  %_offset_above_rbp_392 = sub i64 %105, %_local_end_to_int_
  %_pot_address_in_parent_stack_393 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_392
  %_cond1_394 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_391
  %_cond2_1_395 = icmp ugt i8* %_ptr_bt_391, %_parent_stack_end_ptr_
  %_cond2_2_396 = icmp ult i8* %_ptr_bt_391, %_parent_stack_start_ptr_
  %_cond2_397 = or i1 %_cond2_1_395, %_cond2_2_396
  %_cond4_398 = icmp ule i8* %_pot_address_in_parent_stack_393, %_parent_stack_end_ptr_
  %_cond1_n_cond2_399 = and i1 %_cond1_394, %_cond2_397
  %_cond1_n_cond2_cond3_400 = and i1 %_cond4_398, %_cond1_n_cond2_399
  %_address_in_parent_stack_bt_402 = bitcast i8* %_pot_address_in_parent_stack_393 to i32*
  %_address_in_parent_stack_bt_402. = select i1 %_cond1_n_cond2_cond3_400, i32* %_address_in_parent_stack_bt_402, i32* %106
  %_new_load_403 = load i32, i32* %_address_in_parent_stack_bt_402., align 4
  %107 = zext i32 %_new_load_403 to i64, !mcsema_real_eip !40
  store i64 %107, i64* %R8, align 8, !mcsema_real_eip !40
  %108 = add i32 %_new_load_403, %_new_load_373, !mcsema_real_eip !41
  %109 = xor i32 %108, %_new_load_373, !mcsema_real_eip !41
  %110 = xor i32 %109, %_new_load_403, !mcsema_real_eip !41
  %111 = and i32 %110, 16, !mcsema_real_eip !41
  %112 = icmp ne i32 %111, 0, !mcsema_real_eip !41
  store i1 %112, i1* %AF, align 1, !mcsema_real_eip !41
  %113 = icmp slt i32 %108, 0
  store i1 %113, i1* %SF, align 1, !mcsema_real_eip !41
  %114 = icmp eq i32 %108, 0, !mcsema_real_eip !41
  store i1 %114, i1* %ZF, align 1, !mcsema_real_eip !41
  %115 = xor i32 %_new_load_373, -2147483648, !mcsema_real_eip !41
  %116 = xor i32 %115, %_new_load_403, !mcsema_real_eip !41
  %117 = and i32 %109, %116, !mcsema_real_eip !41
  %118 = icmp slt i32 %117, 0
  store i1 %118, i1* %OF, align 1, !mcsema_real_eip !41
  %119 = trunc i32 %108 to i8, !mcsema_real_eip !41
  %120 = call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !41
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !41
  %123 = icmp ult i32 %108, %_new_load_373, !mcsema_real_eip !41
  store i1 %123, i1* %CF, align 1, !mcsema_real_eip !41
  %124 = zext i32 %108 to i64, !mcsema_real_eip !41
  store i64 %124, i64* %XSI, align 8, !mcsema_real_eip !41
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -72
  %_ptr_to_int_404 = ptrtoint i8* %_new_gep_81 to i64
  %_offset_above_rbp_407 = sub i64 %_ptr_to_int_404, %_local_end_to_int_
  %_pot_address_in_parent_stack_408 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_407
  %_cond1_409 = icmp ugt i8* %_new_gep_81, %_local_stack_end_ptr_
  %_cond2_1_410 = icmp ugt i8* %_new_gep_81, %_parent_stack_end_ptr_
  %_cond2_2_411 = icmp ult i8* %_new_gep_81, %_parent_stack_start_ptr_
  %_cond2_412 = or i1 %_cond2_1_410, %_cond2_2_411
  %_cond4_413 = icmp ule i8* %_pot_address_in_parent_stack_408, %_parent_stack_end_ptr_
  %_cond1_n_cond2_414 = and i1 %_cond1_409, %_cond2_412
  %_cond1_n_cond2_cond3_415 = and i1 %_cond1_n_cond2_414, %_cond4_413
  %.v7 = select i1 %_cond1_n_cond2_cond3_415, i8* %_pot_address_in_parent_stack_408, i8* %_new_gep_81
  %125 = bitcast i8* %.v7 to i64*
  %_new_load_418 = load i64, i64* %125, align 8
  store i64 %_new_load_418, i64* %XAX, align 8, !mcsema_real_eip !42
  %126 = add i64 %_new_load_418, 4, !mcsema_real_eip !43
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !43
  %_ptr_bt_421 = inttoptr i64 %126 to i8*
  %_offset_above_rbp_422 = sub i64 %126, %_local_end_to_int_
  %_pot_address_in_parent_stack_423 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_422
  %_cond1_424 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_421
  %_cond2_1_425 = icmp ugt i8* %_ptr_bt_421, %_parent_stack_end_ptr_
  %_cond2_2_426 = icmp ult i8* %_ptr_bt_421, %_parent_stack_start_ptr_
  %_cond2_427 = or i1 %_cond2_1_425, %_cond2_2_426
  %_cond4_428 = icmp ule i8* %_pot_address_in_parent_stack_423, %_parent_stack_end_ptr_
  %_cond1_n_cond2_429 = and i1 %_cond1_424, %_cond2_427
  %_cond1_n_cond2_cond3_430 = and i1 %_cond4_428, %_cond1_n_cond2_429
  %_address_in_parent_stack_bt_432 = bitcast i8* %_pot_address_in_parent_stack_423 to i32*
  %_address_in_parent_stack_bt_432. = select i1 %_cond1_n_cond2_cond3_430, i32* %_address_in_parent_stack_bt_432, i32* %127
  %_new_load_433 = load i32, i32* %_address_in_parent_stack_bt_432., align 4
  %128 = zext i32 %_new_load_433 to i64, !mcsema_real_eip !43
  store i64 %128, i64* %R8, align 8, !mcsema_real_eip !43
  %129 = add i32 %_new_load_433, %108, !mcsema_real_eip !44
  %130 = xor i32 %129, %108, !mcsema_real_eip !44
  %131 = xor i32 %130, %_new_load_433, !mcsema_real_eip !44
  %132 = and i32 %131, 16, !mcsema_real_eip !44
  %133 = icmp ne i32 %132, 0, !mcsema_real_eip !44
  store i1 %133, i1* %AF, align 1, !mcsema_real_eip !44
  %134 = icmp slt i32 %129, 0
  store i1 %134, i1* %SF, align 1, !mcsema_real_eip !44
  %135 = icmp eq i32 %129, 0, !mcsema_real_eip !44
  store i1 %135, i1* %ZF, align 1, !mcsema_real_eip !44
  %136 = xor i32 %108, -2147483648, !mcsema_real_eip !44
  %137 = xor i32 %136, %_new_load_433, !mcsema_real_eip !44
  %138 = and i32 %130, %137, !mcsema_real_eip !44
  %139 = icmp slt i32 %138, 0
  store i1 %139, i1* %OF, align 1, !mcsema_real_eip !44
  %140 = trunc i32 %129 to i8, !mcsema_real_eip !44
  %141 = call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !44
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF, align 1, !mcsema_real_eip !44
  %144 = icmp ult i32 %129, %108, !mcsema_real_eip !44
  store i1 %144, i1* %CF, align 1, !mcsema_real_eip !44
  %145 = zext i32 %129 to i64, !mcsema_real_eip !44
  store i64 %145, i64* %XSI, align 8, !mcsema_real_eip !44
  %R11_val.84 = load i64, i64* %R11, align 8, !mcsema_real_eip !45
  %146 = add i64 %R11_val.84, 4, !mcsema_real_eip !45
  %147 = inttoptr i64 %146 to i32*, !mcsema_real_eip !45
  %_ptr_bt_436 = inttoptr i64 %146 to i8*
  %_offset_above_rbp_437 = sub i64 %146, %_local_end_to_int_
  %_pot_address_in_parent_stack_438 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_437
  %_cond1_439 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_436
  %_cond2_1_440 = icmp ugt i8* %_ptr_bt_436, %_parent_stack_end_ptr_
  %_cond2_2_441 = icmp ult i8* %_ptr_bt_436, %_parent_stack_start_ptr_
  %_cond2_442 = or i1 %_cond2_1_440, %_cond2_2_441
  %_cond4_443 = icmp ule i8* %_pot_address_in_parent_stack_438, %_parent_stack_end_ptr_
  %_cond1_n_cond2_444 = and i1 %_cond1_439, %_cond2_442
  %_cond1_n_cond2_cond3_445 = and i1 %_cond4_443, %_cond1_n_cond2_444
  %_address_in_parent_stack_bt_447 = bitcast i8* %_pot_address_in_parent_stack_438 to i32*
  %148 = select i1 %_cond1_n_cond2_cond3_445, i32* %_address_in_parent_stack_bt_447, i32* %147
  %_new_load_448 = load i32, i32* %148, align 4
  %149 = zext i32 %_new_load_448 to i64, !mcsema_real_eip !45
  store i64 %149, i64* %R8, align 8, !mcsema_real_eip !45
  %_new_gep_84 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -96
  %_ptr_to_int_449 = ptrtoint i8* %_new_gep_84 to i64
  %_offset_above_rbp_452 = sub i64 %_ptr_to_int_449, %_local_end_to_int_
  %_pot_address_in_parent_stack_453 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_452
  %_cond1_454 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_455 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_456 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_457 = or i1 %_cond2_1_455, %_cond2_2_456
  %_cond4_458 = icmp ule i8* %_pot_address_in_parent_stack_453, %_parent_stack_end_ptr_
  %_cond1_n_cond2_459 = and i1 %_cond1_454, %_cond2_457
  %_cond1_n_cond2_cond3_460 = and i1 %_cond1_n_cond2_459, %_cond4_458
  %_address_in_parent_stack_bt_462._allin_new_bt_85.v = select i1 %_cond1_n_cond2_cond3_460, i8* %_pot_address_in_parent_stack_453, i8* %_new_gep_84
  %_address_in_parent_stack_bt_462._allin_new_bt_85 = bitcast i8* %_address_in_parent_stack_bt_462._allin_new_bt_85.v to i64*
  %_new_load_463 = load i64, i64* %_address_in_parent_stack_bt_462._allin_new_bt_85, align 8
  store i64 %_new_load_463, i64* %XAX, align 8, !mcsema_real_eip !46
  %150 = add i64 %_new_load_463, 4, !mcsema_real_eip !47
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !47
  %_ptr_bt_466 = inttoptr i64 %150 to i8*
  %_offset_above_rbp_467 = sub i64 %150, %_local_end_to_int_
  %_pot_address_in_parent_stack_468 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_467
  %_cond1_469 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_466
  %_cond2_1_470 = icmp ugt i8* %_ptr_bt_466, %_parent_stack_end_ptr_
  %_cond2_2_471 = icmp ult i8* %_ptr_bt_466, %_parent_stack_start_ptr_
  %_cond2_472 = or i1 %_cond2_1_470, %_cond2_2_471
  %_cond4_473 = icmp ule i8* %_pot_address_in_parent_stack_468, %_parent_stack_end_ptr_
  %_cond1_n_cond2_474 = and i1 %_cond1_469, %_cond2_472
  %_cond1_n_cond2_cond3_475 = and i1 %_cond4_473, %_cond1_n_cond2_474
  %_address_in_parent_stack_bt_477 = bitcast i8* %_pot_address_in_parent_stack_468 to i32*
  %152 = select i1 %_cond1_n_cond2_cond3_475, i32* %_address_in_parent_stack_bt_477, i32* %151
  %_new_load_478 = load i32, i32* %152, align 4
  %153 = zext i32 %_new_load_478 to i64, !mcsema_real_eip !47
  store i64 %153, i64* %R9, align 8, !mcsema_real_eip !47
  %154 = add i32 %_new_load_478, %_new_load_448, !mcsema_real_eip !48
  %155 = xor i32 %154, %_new_load_448, !mcsema_real_eip !48
  %156 = xor i32 %155, %_new_load_478, !mcsema_real_eip !48
  %157 = and i32 %156, 16, !mcsema_real_eip !48
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !48
  store i1 %158, i1* %AF, align 1, !mcsema_real_eip !48
  %159 = icmp slt i32 %154, 0
  store i1 %159, i1* %SF, align 1, !mcsema_real_eip !48
  %160 = icmp eq i32 %154, 0, !mcsema_real_eip !48
  store i1 %160, i1* %ZF, align 1, !mcsema_real_eip !48
  %161 = xor i32 %_new_load_448, -2147483648, !mcsema_real_eip !48
  %162 = xor i32 %161, %_new_load_478, !mcsema_real_eip !48
  %163 = and i32 %155, %162, !mcsema_real_eip !48
  %164 = icmp slt i32 %163, 0
  store i1 %164, i1* %OF, align 1, !mcsema_real_eip !48
  %165 = trunc i32 %154 to i8, !mcsema_real_eip !48
  %166 = call i8 @llvm.ctpop.i8(i8 %165), !mcsema_real_eip !48
  %167 = and i8 %166, 1
  %168 = icmp eq i8 %167, 0
  store i1 %168, i1* %PF, align 1, !mcsema_real_eip !48
  %169 = icmp ult i32 %154, %_new_load_448, !mcsema_real_eip !48
  store i1 %169, i1* %CF, align 1, !mcsema_real_eip !48
  %170 = zext i32 %154 to i64, !mcsema_real_eip !48
  store i64 %170, i64* %R8, align 8, !mcsema_real_eip !48
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -104
  %_ptr_to_int_479 = ptrtoint i8* %_new_gep_87 to i64
  %_offset_above_rbp_482 = sub i64 %_ptr_to_int_479, %_local_end_to_int_
  %_pot_address_in_parent_stack_483 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_482
  %_cond1_484 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_485 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_486 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_487 = or i1 %_cond2_1_485, %_cond2_2_486
  %_cond4_488 = icmp ule i8* %_pot_address_in_parent_stack_483, %_parent_stack_end_ptr_
  %_cond1_n_cond2_489 = and i1 %_cond1_484, %_cond2_487
  %_cond1_n_cond2_cond3_490 = and i1 %_cond1_n_cond2_489, %_cond4_488
  %_address_in_parent_stack_bt_492._allin_new_bt_88.v = select i1 %_cond1_n_cond2_cond3_490, i8* %_pot_address_in_parent_stack_483, i8* %_new_gep_87
  %_address_in_parent_stack_bt_492._allin_new_bt_88 = bitcast i8* %_address_in_parent_stack_bt_492._allin_new_bt_88.v to i64*
  %_new_load_493 = load i64, i64* %_address_in_parent_stack_bt_492._allin_new_bt_88, align 8
  store i64 %_new_load_493, i64* %XAX, align 8, !mcsema_real_eip !49
  %171 = add i64 %_new_load_493, 4, !mcsema_real_eip !50
  %172 = inttoptr i64 %171 to i32*, !mcsema_real_eip !50
  %_ptr_bt_496 = inttoptr i64 %171 to i8*
  %_offset_above_rbp_497 = sub i64 %171, %_local_end_to_int_
  %_pot_address_in_parent_stack_498 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_497
  %_cond1_499 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_496
  %_cond2_1_500 = icmp ugt i8* %_ptr_bt_496, %_parent_stack_end_ptr_
  %_cond2_2_501 = icmp ult i8* %_ptr_bt_496, %_parent_stack_start_ptr_
  %_cond2_502 = or i1 %_cond2_1_500, %_cond2_2_501
  %_cond4_503 = icmp ule i8* %_pot_address_in_parent_stack_498, %_parent_stack_end_ptr_
  %_cond1_n_cond2_504 = and i1 %_cond1_499, %_cond2_502
  %_cond1_n_cond2_cond3_505 = and i1 %_cond4_503, %_cond1_n_cond2_504
  %_address_in_parent_stack_bt_507 = bitcast i8* %_pot_address_in_parent_stack_498 to i32*
  %173 = select i1 %_cond1_n_cond2_cond3_505, i32* %_address_in_parent_stack_bt_507, i32* %172
  %_new_load_508 = load i32, i32* %173, align 4
  %174 = zext i32 %_new_load_508 to i64, !mcsema_real_eip !50
  store i64 %174, i64* %R9, align 8, !mcsema_real_eip !50
  %175 = add i32 %_new_load_508, %154, !mcsema_real_eip !51
  %176 = zext i32 %175 to i64, !mcsema_real_eip !51
  store i64 %176, i64* %R8, align 8, !mcsema_real_eip !51
  %ESI_val.98 = load i32, i32* %ESI.12, align 4, !mcsema_real_eip !52
  %177 = add i32 %175, %ESI_val.98, !mcsema_real_eip !52
  %178 = xor i32 %177, %ESI_val.98, !mcsema_real_eip !52
  %179 = xor i32 %178, %175, !mcsema_real_eip !52
  %180 = and i32 %179, 16, !mcsema_real_eip !52
  %181 = icmp ne i32 %180, 0, !mcsema_real_eip !52
  store i1 %181, i1* %AF, align 1, !mcsema_real_eip !52
  %182 = icmp slt i32 %177, 0
  store i1 %182, i1* %SF, align 1, !mcsema_real_eip !52
  %183 = icmp eq i32 %177, 0, !mcsema_real_eip !52
  store i1 %183, i1* %ZF, align 1, !mcsema_real_eip !52
  %184 = xor i32 %ESI_val.98, -2147483648, !mcsema_real_eip !52
  %185 = xor i32 %184, %175, !mcsema_real_eip !52
  %186 = and i32 %178, %185, !mcsema_real_eip !52
  %187 = icmp slt i32 %186, 0
  store i1 %187, i1* %OF, align 1, !mcsema_real_eip !52
  %188 = trunc i32 %177 to i8, !mcsema_real_eip !52
  %189 = call i8 @llvm.ctpop.i8(i8 %188), !mcsema_real_eip !52
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  store i1 %191, i1* %PF, align 1, !mcsema_real_eip !52
  %192 = icmp ult i32 %177, %ESI_val.98, !mcsema_real_eip !52
  store i1 %192, i1* %CF, align 1, !mcsema_real_eip !52
  %193 = zext i32 %177 to i64, !mcsema_real_eip !52
  store i64 %193, i64* %XSI, align 8, !mcsema_real_eip !52
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -116
  %194 = bitcast i8* %_new_gep_90 to i32*
  store i32 %177, i32* %194, align 4, !mcsema_real_eip !53
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_93 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92, i64 -32
  %195 = ptrtoint i8* %_new_gep_93 to i64
  %_offset_above_rbp_512 = sub i64 %195, %_local_end_to_int_
  %_pot_address_in_parent_stack_513 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_512
  %_cond1_514 = icmp ugt i8* %_new_gep_93, %_local_stack_end_ptr_
  %_cond2_1_515 = icmp ugt i8* %_new_gep_93, %_parent_stack_end_ptr_
  %_cond2_2_516 = icmp ult i8* %_new_gep_93, %_parent_stack_start_ptr_
  %_cond2_517 = or i1 %_cond2_1_515, %_cond2_2_516
  %_cond4_518 = icmp ule i8* %_pot_address_in_parent_stack_513, %_parent_stack_end_ptr_
  %_cond1_n_cond2_519 = and i1 %_cond1_514, %_cond2_517
  %_cond1_n_cond2_cond3_520 = and i1 %_cond1_n_cond2_519, %_cond4_518
  %_address_in_parent_stack_bt_522..v = select i1 %_cond1_n_cond2_cond3_520, i8* %_pot_address_in_parent_stack_513, i8* %_new_gep_93
  %_address_in_parent_stack_bt_522. = bitcast i8* %_address_in_parent_stack_bt_522..v to i32*
  %_new_load_523 = load i32, i32* %_address_in_parent_stack_bt_522., align 4
  %196 = zext i32 %_new_load_523 to i64, !mcsema_real_eip !54
  store i64 %196, i64* %XSI, align 8, !mcsema_real_eip !54
  %_new_gep_96 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92, i64 -64
  %_ptr_to_int_524 = ptrtoint i8* %_new_gep_96 to i64
  %_offset_above_rbp_527 = sub i64 %_ptr_to_int_524, %_local_end_to_int_
  %_pot_address_in_parent_stack_528 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_527
  %_cond1_529 = icmp ugt i8* %_new_gep_96, %_local_stack_end_ptr_
  %_cond2_1_530 = icmp ugt i8* %_new_gep_96, %_parent_stack_end_ptr_
  %_cond2_2_531 = icmp ult i8* %_new_gep_96, %_parent_stack_start_ptr_
  %_cond2_532 = or i1 %_cond2_1_530, %_cond2_2_531
  %_cond4_533 = icmp ule i8* %_pot_address_in_parent_stack_528, %_parent_stack_end_ptr_
  %_cond1_n_cond2_534 = and i1 %_cond1_529, %_cond2_532
  %_cond1_n_cond2_cond3_535 = and i1 %_cond1_n_cond2_534, %_cond4_533
  %.v8 = select i1 %_cond1_n_cond2_cond3_535, i8* %_pot_address_in_parent_stack_528, i8* %_new_gep_96
  %197 = bitcast i8* %.v8 to i64*
  %_new_load_538 = load i64, i64* %197, align 8
  store i64 %_new_load_538, i64* %XAX, align 8, !mcsema_real_eip !55
  %198 = add i64 %_new_load_538, 8, !mcsema_real_eip !56
  %199 = inttoptr i64 %198 to i32*, !mcsema_real_eip !56
  %_ptr_bt_541 = inttoptr i64 %198 to i8*
  %_offset_above_rbp_542 = sub i64 %198, %_local_end_to_int_
  %_pot_address_in_parent_stack_543 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_542
  %_cond1_544 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_541
  %_cond2_1_545 = icmp ugt i8* %_ptr_bt_541, %_parent_stack_end_ptr_
  %_cond2_2_546 = icmp ult i8* %_ptr_bt_541, %_parent_stack_start_ptr_
  %_cond2_547 = or i1 %_cond2_1_545, %_cond2_2_546
  %_cond4_548 = icmp ule i8* %_pot_address_in_parent_stack_543, %_parent_stack_end_ptr_
  %_cond1_n_cond2_549 = and i1 %_cond1_544, %_cond2_547
  %_cond1_n_cond2_cond3_550 = and i1 %_cond4_548, %_cond1_n_cond2_549
  %_address_in_parent_stack_bt_552 = bitcast i8* %_pot_address_in_parent_stack_543 to i32*
  %_address_in_parent_stack_bt_552. = select i1 %_cond1_n_cond2_cond3_550, i32* %_address_in_parent_stack_bt_552, i32* %199
  %_new_load_553 = load i32, i32* %_address_in_parent_stack_bt_552., align 4
  %200 = zext i32 %_new_load_553 to i64, !mcsema_real_eip !56
  store i64 %200, i64* %R8, align 8, !mcsema_real_eip !56
  %201 = add i32 %_new_load_553, %_new_load_523, !mcsema_real_eip !57
  %202 = xor i32 %201, %_new_load_523, !mcsema_real_eip !57
  %203 = xor i32 %202, %_new_load_553, !mcsema_real_eip !57
  %204 = and i32 %203, 16, !mcsema_real_eip !57
  %205 = icmp ne i32 %204, 0, !mcsema_real_eip !57
  store i1 %205, i1* %AF, align 1, !mcsema_real_eip !57
  %206 = icmp slt i32 %201, 0
  store i1 %206, i1* %SF, align 1, !mcsema_real_eip !57
  %207 = icmp eq i32 %201, 0, !mcsema_real_eip !57
  store i1 %207, i1* %ZF, align 1, !mcsema_real_eip !57
  %208 = xor i32 %_new_load_523, -2147483648, !mcsema_real_eip !57
  %209 = xor i32 %208, %_new_load_553, !mcsema_real_eip !57
  %210 = and i32 %202, %209, !mcsema_real_eip !57
  %211 = icmp slt i32 %210, 0
  store i1 %211, i1* %OF, align 1, !mcsema_real_eip !57
  %212 = trunc i32 %201 to i8, !mcsema_real_eip !57
  %213 = call i8 @llvm.ctpop.i8(i8 %212), !mcsema_real_eip !57
  %214 = and i8 %213, 1
  %215 = icmp eq i8 %214, 0
  store i1 %215, i1* %PF, align 1, !mcsema_real_eip !57
  %216 = icmp ult i32 %201, %_new_load_523, !mcsema_real_eip !57
  store i1 %216, i1* %CF, align 1, !mcsema_real_eip !57
  %217 = zext i32 %201 to i64, !mcsema_real_eip !57
  store i64 %217, i64* %XSI, align 8, !mcsema_real_eip !57
  %_new_gep_99 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92, i64 -72
  %_ptr_to_int_554 = ptrtoint i8* %_new_gep_99 to i64
  %_offset_above_rbp_557 = sub i64 %_ptr_to_int_554, %_local_end_to_int_
  %_pot_address_in_parent_stack_558 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_557
  %_cond1_559 = icmp ugt i8* %_new_gep_99, %_local_stack_end_ptr_
  %_cond2_1_560 = icmp ugt i8* %_new_gep_99, %_parent_stack_end_ptr_
  %_cond2_2_561 = icmp ult i8* %_new_gep_99, %_parent_stack_start_ptr_
  %_cond2_562 = or i1 %_cond2_1_560, %_cond2_2_561
  %_cond4_563 = icmp ule i8* %_pot_address_in_parent_stack_558, %_parent_stack_end_ptr_
  %_cond1_n_cond2_564 = and i1 %_cond1_559, %_cond2_562
  %_cond1_n_cond2_cond3_565 = and i1 %_cond1_n_cond2_564, %_cond4_563
  %.v9 = select i1 %_cond1_n_cond2_cond3_565, i8* %_pot_address_in_parent_stack_558, i8* %_new_gep_99
  %218 = bitcast i8* %.v9 to i64*
  %_new_load_568 = load i64, i64* %218, align 8
  store i64 %_new_load_568, i64* %XAX, align 8, !mcsema_real_eip !58
  %219 = add i64 %_new_load_568, 8, !mcsema_real_eip !59
  %220 = inttoptr i64 %219 to i32*, !mcsema_real_eip !59
  %_ptr_bt_571 = inttoptr i64 %219 to i8*
  %_offset_above_rbp_572 = sub i64 %219, %_local_end_to_int_
  %_pot_address_in_parent_stack_573 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_572
  %_cond1_574 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_571
  %_cond2_1_575 = icmp ugt i8* %_ptr_bt_571, %_parent_stack_end_ptr_
  %_cond2_2_576 = icmp ult i8* %_ptr_bt_571, %_parent_stack_start_ptr_
  %_cond2_577 = or i1 %_cond2_1_575, %_cond2_2_576
  %_cond4_578 = icmp ule i8* %_pot_address_in_parent_stack_573, %_parent_stack_end_ptr_
  %_cond1_n_cond2_579 = and i1 %_cond1_574, %_cond2_577
  %_cond1_n_cond2_cond3_580 = and i1 %_cond4_578, %_cond1_n_cond2_579
  %_address_in_parent_stack_bt_582 = bitcast i8* %_pot_address_in_parent_stack_573 to i32*
  %_address_in_parent_stack_bt_582. = select i1 %_cond1_n_cond2_cond3_580, i32* %_address_in_parent_stack_bt_582, i32* %220
  %_new_load_583 = load i32, i32* %_address_in_parent_stack_bt_582., align 4
  %221 = zext i32 %_new_load_583 to i64, !mcsema_real_eip !59
  store i64 %221, i64* %R8, align 8, !mcsema_real_eip !59
  %222 = add i32 %_new_load_583, %201, !mcsema_real_eip !60
  %223 = xor i32 %222, %201, !mcsema_real_eip !60
  %224 = xor i32 %223, %_new_load_583, !mcsema_real_eip !60
  %225 = and i32 %224, 16, !mcsema_real_eip !60
  %226 = icmp ne i32 %225, 0, !mcsema_real_eip !60
  store i1 %226, i1* %AF, align 1, !mcsema_real_eip !60
  %227 = icmp slt i32 %222, 0
  store i1 %227, i1* %SF, align 1, !mcsema_real_eip !60
  %228 = icmp eq i32 %222, 0, !mcsema_real_eip !60
  store i1 %228, i1* %ZF, align 1, !mcsema_real_eip !60
  %229 = xor i32 %201, -2147483648, !mcsema_real_eip !60
  %230 = xor i32 %229, %_new_load_583, !mcsema_real_eip !60
  %231 = and i32 %223, %230, !mcsema_real_eip !60
  %232 = icmp slt i32 %231, 0
  store i1 %232, i1* %OF, align 1, !mcsema_real_eip !60
  %233 = trunc i32 %222 to i8, !mcsema_real_eip !60
  %234 = call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !60
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  store i1 %236, i1* %PF, align 1, !mcsema_real_eip !60
  %237 = icmp ult i32 %222, %201, !mcsema_real_eip !60
  store i1 %237, i1* %CF, align 1, !mcsema_real_eip !60
  %238 = zext i32 %222 to i64, !mcsema_real_eip !60
  store i64 %238, i64* %XSI, align 8, !mcsema_real_eip !60
  %R11_val.117 = load i64, i64* %R11, align 8, !mcsema_real_eip !61
  %239 = add i64 %R11_val.117, 8, !mcsema_real_eip !61
  %240 = inttoptr i64 %239 to i32*, !mcsema_real_eip !61
  %_ptr_bt_586 = inttoptr i64 %239 to i8*
  %_offset_above_rbp_587 = sub i64 %239, %_local_end_to_int_
  %_pot_address_in_parent_stack_588 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_587
  %_cond1_589 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_586
  %_cond2_1_590 = icmp ugt i8* %_ptr_bt_586, %_parent_stack_end_ptr_
  %_cond2_2_591 = icmp ult i8* %_ptr_bt_586, %_parent_stack_start_ptr_
  %_cond2_592 = or i1 %_cond2_1_590, %_cond2_2_591
  %_cond4_593 = icmp ule i8* %_pot_address_in_parent_stack_588, %_parent_stack_end_ptr_
  %_cond1_n_cond2_594 = and i1 %_cond1_589, %_cond2_592
  %_cond1_n_cond2_cond3_595 = and i1 %_cond4_593, %_cond1_n_cond2_594
  %_address_in_parent_stack_bt_597 = bitcast i8* %_pot_address_in_parent_stack_588 to i32*
  %241 = select i1 %_cond1_n_cond2_cond3_595, i32* %_address_in_parent_stack_bt_597, i32* %240
  %_new_load_598 = load i32, i32* %241, align 4
  %242 = zext i32 %_new_load_598 to i64, !mcsema_real_eip !61
  store i64 %242, i64* %R8, align 8, !mcsema_real_eip !61
  %_new_gep_102 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92, i64 -96
  %_ptr_to_int_599 = ptrtoint i8* %_new_gep_102 to i64
  %_offset_above_rbp_602 = sub i64 %_ptr_to_int_599, %_local_end_to_int_
  %_pot_address_in_parent_stack_603 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_602
  %_cond1_604 = icmp ugt i8* %_new_gep_102, %_local_stack_end_ptr_
  %_cond2_1_605 = icmp ugt i8* %_new_gep_102, %_parent_stack_end_ptr_
  %_cond2_2_606 = icmp ult i8* %_new_gep_102, %_parent_stack_start_ptr_
  %_cond2_607 = or i1 %_cond2_1_605, %_cond2_2_606
  %_cond4_608 = icmp ule i8* %_pot_address_in_parent_stack_603, %_parent_stack_end_ptr_
  %_cond1_n_cond2_609 = and i1 %_cond1_604, %_cond2_607
  %_cond1_n_cond2_cond3_610 = and i1 %_cond1_n_cond2_609, %_cond4_608
  %_address_in_parent_stack_bt_612._allin_new_bt_103.v = select i1 %_cond1_n_cond2_cond3_610, i8* %_pot_address_in_parent_stack_603, i8* %_new_gep_102
  %_address_in_parent_stack_bt_612._allin_new_bt_103 = bitcast i8* %_address_in_parent_stack_bt_612._allin_new_bt_103.v to i64*
  %_new_load_613 = load i64, i64* %_address_in_parent_stack_bt_612._allin_new_bt_103, align 8
  store i64 %_new_load_613, i64* %XAX, align 8, !mcsema_real_eip !62
  %243 = add i64 %_new_load_613, 8, !mcsema_real_eip !63
  %244 = inttoptr i64 %243 to i32*, !mcsema_real_eip !63
  %_ptr_bt_616 = inttoptr i64 %243 to i8*
  %_offset_above_rbp_617 = sub i64 %243, %_local_end_to_int_
  %_pot_address_in_parent_stack_618 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_617
  %_cond1_619 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_616
  %_cond2_1_620 = icmp ugt i8* %_ptr_bt_616, %_parent_stack_end_ptr_
  %_cond2_2_621 = icmp ult i8* %_ptr_bt_616, %_parent_stack_start_ptr_
  %_cond2_622 = or i1 %_cond2_1_620, %_cond2_2_621
  %_cond4_623 = icmp ule i8* %_pot_address_in_parent_stack_618, %_parent_stack_end_ptr_
  %_cond1_n_cond2_624 = and i1 %_cond1_619, %_cond2_622
  %_cond1_n_cond2_cond3_625 = and i1 %_cond4_623, %_cond1_n_cond2_624
  %_address_in_parent_stack_bt_627 = bitcast i8* %_pot_address_in_parent_stack_618 to i32*
  %245 = select i1 %_cond1_n_cond2_cond3_625, i32* %_address_in_parent_stack_bt_627, i32* %244
  %_new_load_628 = load i32, i32* %245, align 4
  %246 = zext i32 %_new_load_628 to i64, !mcsema_real_eip !63
  store i64 %246, i64* %R9, align 8, !mcsema_real_eip !63
  %247 = add i32 %_new_load_628, %_new_load_598, !mcsema_real_eip !64
  %248 = xor i32 %247, %_new_load_598, !mcsema_real_eip !64
  %249 = xor i32 %248, %_new_load_628, !mcsema_real_eip !64
  %250 = and i32 %249, 16, !mcsema_real_eip !64
  %251 = icmp ne i32 %250, 0, !mcsema_real_eip !64
  store i1 %251, i1* %AF, align 1, !mcsema_real_eip !64
  %252 = icmp slt i32 %247, 0
  store i1 %252, i1* %SF, align 1, !mcsema_real_eip !64
  %253 = icmp eq i32 %247, 0, !mcsema_real_eip !64
  store i1 %253, i1* %ZF, align 1, !mcsema_real_eip !64
  %254 = xor i32 %_new_load_598, -2147483648, !mcsema_real_eip !64
  %255 = xor i32 %254, %_new_load_628, !mcsema_real_eip !64
  %256 = and i32 %248, %255, !mcsema_real_eip !64
  %257 = icmp slt i32 %256, 0
  store i1 %257, i1* %OF, align 1, !mcsema_real_eip !64
  %258 = trunc i32 %247 to i8, !mcsema_real_eip !64
  %259 = call i8 @llvm.ctpop.i8(i8 %258), !mcsema_real_eip !64
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  store i1 %261, i1* %PF, align 1, !mcsema_real_eip !64
  %262 = icmp ult i32 %247, %_new_load_598, !mcsema_real_eip !64
  store i1 %262, i1* %CF, align 1, !mcsema_real_eip !64
  %263 = zext i32 %247 to i64, !mcsema_real_eip !64
  store i64 %263, i64* %R8, align 8, !mcsema_real_eip !64
  %_new_gep_105 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92, i64 -104
  %_ptr_to_int_629 = ptrtoint i8* %_new_gep_105 to i64
  %_offset_above_rbp_632 = sub i64 %_ptr_to_int_629, %_local_end_to_int_
  %_pot_address_in_parent_stack_633 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_632
  %_cond1_634 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_635 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_636 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_637 = or i1 %_cond2_1_635, %_cond2_2_636
  %_cond4_638 = icmp ule i8* %_pot_address_in_parent_stack_633, %_parent_stack_end_ptr_
  %_cond1_n_cond2_639 = and i1 %_cond1_634, %_cond2_637
  %_cond1_n_cond2_cond3_640 = and i1 %_cond1_n_cond2_639, %_cond4_638
  %_address_in_parent_stack_bt_642._allin_new_bt_106.v = select i1 %_cond1_n_cond2_cond3_640, i8* %_pot_address_in_parent_stack_633, i8* %_new_gep_105
  %_address_in_parent_stack_bt_642._allin_new_bt_106 = bitcast i8* %_address_in_parent_stack_bt_642._allin_new_bt_106.v to i64*
  %_new_load_643 = load i64, i64* %_address_in_parent_stack_bt_642._allin_new_bt_106, align 8
  store i64 %_new_load_643, i64* %XAX, align 8, !mcsema_real_eip !65
  %264 = add i64 %_new_load_643, 8, !mcsema_real_eip !66
  %265 = inttoptr i64 %264 to i32*, !mcsema_real_eip !66
  %_ptr_bt_646 = inttoptr i64 %264 to i8*
  %_offset_above_rbp_647 = sub i64 %264, %_local_end_to_int_
  %_pot_address_in_parent_stack_648 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_647
  %_cond1_649 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_646
  %_cond2_1_650 = icmp ugt i8* %_ptr_bt_646, %_parent_stack_end_ptr_
  %_cond2_2_651 = icmp ult i8* %_ptr_bt_646, %_parent_stack_start_ptr_
  %_cond2_652 = or i1 %_cond2_1_650, %_cond2_2_651
  %_cond4_653 = icmp ule i8* %_pot_address_in_parent_stack_648, %_parent_stack_end_ptr_
  %_cond1_n_cond2_654 = and i1 %_cond1_649, %_cond2_652
  %_cond1_n_cond2_cond3_655 = and i1 %_cond4_653, %_cond1_n_cond2_654
  %_address_in_parent_stack_bt_657 = bitcast i8* %_pot_address_in_parent_stack_648 to i32*
  %266 = select i1 %_cond1_n_cond2_cond3_655, i32* %_address_in_parent_stack_bt_657, i32* %265
  %_new_load_658 = load i32, i32* %266, align 4
  %267 = zext i32 %_new_load_658 to i64, !mcsema_real_eip !66
  store i64 %267, i64* %R9, align 8, !mcsema_real_eip !66
  %268 = add i32 %_new_load_658, %247, !mcsema_real_eip !67
  %269 = zext i32 %268 to i64, !mcsema_real_eip !67
  store i64 %269, i64* %R8, align 8, !mcsema_real_eip !67
  %ESI_val.131 = load i32, i32* %ESI.12, align 4, !mcsema_real_eip !68
  %270 = add i32 %268, %ESI_val.131, !mcsema_real_eip !68
  %271 = xor i32 %270, %ESI_val.131, !mcsema_real_eip !68
  %272 = xor i32 %271, %268, !mcsema_real_eip !68
  %273 = and i32 %272, 16, !mcsema_real_eip !68
  %274 = icmp ne i32 %273, 0, !mcsema_real_eip !68
  store i1 %274, i1* %AF, align 1, !mcsema_real_eip !68
  %275 = icmp slt i32 %270, 0
  store i1 %275, i1* %SF, align 1, !mcsema_real_eip !68
  %276 = icmp eq i32 %270, 0, !mcsema_real_eip !68
  store i1 %276, i1* %ZF, align 1, !mcsema_real_eip !68
  %277 = xor i32 %ESI_val.131, -2147483648, !mcsema_real_eip !68
  %278 = xor i32 %277, %268, !mcsema_real_eip !68
  %279 = and i32 %271, %278, !mcsema_real_eip !68
  %280 = icmp slt i32 %279, 0
  store i1 %280, i1* %OF, align 1, !mcsema_real_eip !68
  %281 = trunc i32 %270 to i8, !mcsema_real_eip !68
  %282 = call i8 @llvm.ctpop.i8(i8 %281), !mcsema_real_eip !68
  %283 = and i8 %282, 1
  %284 = icmp eq i8 %283, 0
  store i1 %284, i1* %PF, align 1, !mcsema_real_eip !68
  %285 = icmp ult i32 %270, %ESI_val.131, !mcsema_real_eip !68
  store i1 %285, i1* %CF, align 1, !mcsema_real_eip !68
  %286 = zext i32 %270 to i64, !mcsema_real_eip !68
  store i64 %286, i64* %XSI, align 8, !mcsema_real_eip !68
  %_new_gep_108 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92, i64 -112
  %287 = bitcast i8* %_new_gep_108 to i32*
  store i32 %270, i32* %287, align 4, !mcsema_real_eip !69
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_111 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_110, i64 -112
  %288 = ptrtoint i8* %_new_gep_111 to i64
  %_offset_above_rbp_662 = sub i64 %288, %_local_end_to_int_
  %_pot_address_in_parent_stack_663 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_662
  %_cond1_664 = icmp ugt i8* %_new_gep_111, %_local_stack_end_ptr_
  %_cond2_1_665 = icmp ugt i8* %_new_gep_111, %_parent_stack_end_ptr_
  %_cond2_2_666 = icmp ult i8* %_new_gep_111, %_parent_stack_start_ptr_
  %_cond2_667 = or i1 %_cond2_1_665, %_cond2_2_666
  %_cond4_668 = icmp ule i8* %_pot_address_in_parent_stack_663, %_parent_stack_end_ptr_
  %_cond1_n_cond2_669 = and i1 %_cond1_664, %_cond2_667
  %_cond1_n_cond2_cond3_670 = and i1 %_cond1_n_cond2_669, %_cond4_668
  %_address_in_parent_stack_bt_672..v = select i1 %_cond1_n_cond2_cond3_670, i8* %_pot_address_in_parent_stack_663, i8* %_new_gep_111
  %_address_in_parent_stack_bt_672. = bitcast i8* %_address_in_parent_stack_bt_672..v to i32*
  %_new_load_673 = load i32, i32* %_address_in_parent_stack_bt_672., align 4
  %289 = zext i32 %_new_load_673 to i64, !mcsema_real_eip !70
  store i64 %289, i64* %XSI, align 8, !mcsema_real_eip !70
  %_new_gep_114 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_110, i64 -16
  %290 = bitcast i8* %_new_gep_114 to i32*
  store i32 %_new_load_673, i32* %290, align 4, !mcsema_real_eip !71
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_117 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_116, i64 -120
  %_ptr_to_int_674 = ptrtoint i8* %_new_gep_117 to i64
  %_offset_above_rbp_677 = sub i64 %_ptr_to_int_674, %_local_end_to_int_
  %_pot_address_in_parent_stack_678 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_677
  %_cond1_679 = icmp ugt i8* %_new_gep_117, %_local_stack_end_ptr_
  %_cond2_1_680 = icmp ugt i8* %_new_gep_117, %_parent_stack_end_ptr_
  %_cond2_2_681 = icmp ult i8* %_new_gep_117, %_parent_stack_start_ptr_
  %_cond2_682 = or i1 %_cond2_1_680, %_cond2_2_681
  %_cond4_683 = icmp ule i8* %_pot_address_in_parent_stack_678, %_parent_stack_end_ptr_
  %_cond1_n_cond2_684 = and i1 %_cond1_679, %_cond2_682
  %_cond1_n_cond2_cond3_685 = and i1 %_cond1_n_cond2_684, %_cond4_683
  %.v10 = select i1 %_cond1_n_cond2_cond3_685, i8* %_pot_address_in_parent_stack_678, i8* %_new_gep_117
  %291 = bitcast i8* %.v10 to i64*
  %_new_load_688 = load i64, i64* %291, align 8
  store i64 %_new_load_688, i64* %XAX, align 8, !mcsema_real_eip !72
  %_new_gep_120 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_116, i64 -24
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  store i64 %_new_load_688, i64* %_allin_new_bt_121, align 8, !mcsema_real_eip !73
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_123 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_122, i64 -16
  %292 = ptrtoint i8* %_new_gep_123 to i64
  %_offset_above_rbp_692 = sub i64 %292, %_local_end_to_int_
  %_pot_address_in_parent_stack_693 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_692
  %_cond1_694 = icmp ugt i8* %_new_gep_123, %_local_stack_end_ptr_
  %_cond2_1_695 = icmp ugt i8* %_new_gep_123, %_parent_stack_end_ptr_
  %_cond2_2_696 = icmp ult i8* %_new_gep_123, %_parent_stack_start_ptr_
  %_cond2_697 = or i1 %_cond2_1_695, %_cond2_2_696
  %_cond4_698 = icmp ule i8* %_pot_address_in_parent_stack_693, %_parent_stack_end_ptr_
  %_cond1_n_cond2_699 = and i1 %_cond1_694, %_cond2_697
  %_cond1_n_cond2_cond3_700 = and i1 %_cond1_n_cond2_699, %_cond4_698
  %_address_in_parent_stack_bt_702..v = select i1 %_cond1_n_cond2_cond3_700, i8* %_pot_address_in_parent_stack_693, i8* %_new_gep_123
  %_address_in_parent_stack_bt_702. = bitcast i8* %_address_in_parent_stack_bt_702..v to i32*
  %_new_load_703 = load i32, i32* %_address_in_parent_stack_bt_702., align 4
  %293 = zext i32 %_new_load_703 to i64, !mcsema_real_eip !74
  store i64 %293, i64* %XSI, align 8, !mcsema_real_eip !74
  %_new_gep_126 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_122, i64 -128
  %294 = bitcast i8* %_new_gep_126 to i32*
  store i32 %_new_load_703, i32* %294, align 4, !mcsema_real_eip !75
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_129 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_128, i64 -24
  %_ptr_to_int_704 = ptrtoint i8* %_new_gep_129 to i64
  %_offset_above_rbp_707 = sub i64 %_ptr_to_int_704, %_local_end_to_int_
  %_pot_address_in_parent_stack_708 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_707
  %_cond1_709 = icmp ugt i8* %_new_gep_129, %_local_stack_end_ptr_
  %_cond2_1_710 = icmp ugt i8* %_new_gep_129, %_parent_stack_end_ptr_
  %_cond2_2_711 = icmp ult i8* %_new_gep_129, %_parent_stack_start_ptr_
  %_cond2_712 = or i1 %_cond2_1_710, %_cond2_2_711
  %_cond4_713 = icmp ule i8* %_pot_address_in_parent_stack_708, %_parent_stack_end_ptr_
  %_cond1_n_cond2_714 = and i1 %_cond1_709, %_cond2_712
  %_cond1_n_cond2_cond3_715 = and i1 %_cond1_n_cond2_714, %_cond4_713
  %.v11 = select i1 %_cond1_n_cond2_cond3_715, i8* %_pot_address_in_parent_stack_708, i8* %_new_gep_129
  %295 = bitcast i8* %.v11 to i64*
  %_new_load_718 = load i64, i64* %295, align 8
  store i64 %_new_load_718, i64* %XAX, align 8, !mcsema_real_eip !76
  %_new_gep_132 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_128, i64 -136
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 %_new_load_718, i64* %_allin_new_bt_133, align 8, !mcsema_real_eip !77
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_135 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -136
  %_ptr_to_int_719 = ptrtoint i8* %_new_gep_135 to i64
  %_offset_above_rbp_722 = sub i64 %_ptr_to_int_719, %_local_end_to_int_
  %_pot_address_in_parent_stack_723 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_722
  %_cond1_724 = icmp ugt i8* %_new_gep_135, %_local_stack_end_ptr_
  %_cond2_1_725 = icmp ugt i8* %_new_gep_135, %_parent_stack_end_ptr_
  %_cond2_2_726 = icmp ult i8* %_new_gep_135, %_parent_stack_start_ptr_
  %_cond2_727 = or i1 %_cond2_1_725, %_cond2_2_726
  %_cond4_728 = icmp ule i8* %_pot_address_in_parent_stack_723, %_parent_stack_end_ptr_
  %_cond1_n_cond2_729 = and i1 %_cond1_724, %_cond2_727
  %_cond1_n_cond2_cond3_730 = and i1 %_cond1_n_cond2_729, %_cond4_728
  %_address_in_parent_stack_bt_732._allin_new_bt_136.v = select i1 %_cond1_n_cond2_cond3_730, i8* %_pot_address_in_parent_stack_723, i8* %_new_gep_135
  %_address_in_parent_stack_bt_732._allin_new_bt_136 = bitcast i8* %_address_in_parent_stack_bt_732._allin_new_bt_136.v to i64*
  %_new_load_733 = load i64, i64* %_address_in_parent_stack_bt_732._allin_new_bt_136, align 8
  store i64 %_new_load_733, i64* %XAX, align 8, !mcsema_real_eip !78
  %_new_gep_138 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -128
  %296 = ptrtoint i8* %_new_gep_138 to i64
  %_offset_above_rbp_737 = sub i64 %296, %_local_end_to_int_
  %_pot_address_in_parent_stack_738 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_737
  %_cond1_739 = icmp ugt i8* %_new_gep_138, %_local_stack_end_ptr_
  %_cond2_1_740 = icmp ugt i8* %_new_gep_138, %_parent_stack_end_ptr_
  %_cond2_2_741 = icmp ult i8* %_new_gep_138, %_parent_stack_start_ptr_
  %_cond2_742 = or i1 %_cond2_1_740, %_cond2_2_741
  %_cond4_743 = icmp ule i8* %_pot_address_in_parent_stack_738, %_parent_stack_end_ptr_
  %_cond1_n_cond2_744 = and i1 %_cond1_739, %_cond2_742
  %_cond1_n_cond2_cond3_745 = and i1 %_cond1_n_cond2_744, %_cond4_743
  %.v12 = select i1 %_cond1_n_cond2_cond3_745, i8* %_pot_address_in_parent_stack_738, i8* %_new_gep_138
  %297 = bitcast i8* %.v12 to i32*
  %_new_load_748 = load i32, i32* %297, align 4
  %298 = zext i32 %_new_load_748 to i64, !mcsema_real_eip !79
  store i64 %298, i64* %XDX, align 8, !mcsema_real_eip !79
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_140 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.153 = load i64, i64* %XSP, align 8, !mcsema_real_eip !80
  %_ptr_to_int_749 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_140 to i64
  %_offset_above_rbp_752 = sub i64 %_ptr_to_int_749, %_local_end_to_int_
  %_pot_address_in_parent_stack_753 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_752
  %_cond1_754 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_140, %_local_stack_end_ptr_
  %_cond2_1_755 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_140, %_parent_stack_end_ptr_
  %_cond2_2_756 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_140, %_parent_stack_start_ptr_
  %_cond2_757 = or i1 %_cond2_1_755, %_cond2_2_756
  %_cond4_758 = icmp ule i8* %_pot_address_in_parent_stack_753, %_parent_stack_end_ptr_
  %_cond1_n_cond2_759 = and i1 %_cond1_754, %_cond2_757
  %_cond1_n_cond2_cond3_760 = and i1 %_cond1_n_cond2_759, %_cond4_758
  %_address_in_parent_stack_bt_762._allin_new_bt_141.v = select i1 %_cond1_n_cond2_cond3_760, i8* %_pot_address_in_parent_stack_753, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_140
  %_address_in_parent_stack_bt_762._allin_new_bt_141 = bitcast i8* %_address_in_parent_stack_bt_762._allin_new_bt_141.v to i64*
  %_new_load_763 = load i64, i64* %_address_in_parent_stack_bt_762._allin_new_bt_141, align 8
  store i64 %_new_load_763, i64* %XBX, align 8, !mcsema_real_eip !80
  %_new_gep_142 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_140, i64 8
  %299 = add i64 %RSP_val.153, 8, !mcsema_real_eip !80
  store volatile i8* %_new_gep_142, i8** %_RSP_ptr_, align 8
  store i64 %299, i64* %XSP, align 8, !mcsema_real_eip !80
  %_ptr_to_int_764 = ptrtoint i8* %_new_gep_142 to i64
  %_offset_above_rbp_767 = sub i64 %_ptr_to_int_764, %_local_end_to_int_
  %_pot_address_in_parent_stack_768 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_767
  %_cond1_769 = icmp ugt i8* %_new_gep_142, %_local_stack_end_ptr_
  %_cond2_1_770 = icmp ugt i8* %_new_gep_142, %_parent_stack_end_ptr_
  %_cond2_2_771 = icmp ult i8* %_new_gep_142, %_parent_stack_start_ptr_
  %_cond2_772 = or i1 %_cond2_1_770, %_cond2_2_771
  %_cond4_773 = icmp ule i8* %_pot_address_in_parent_stack_768, %_parent_stack_end_ptr_
  %_cond1_n_cond2_774 = and i1 %_cond1_769, %_cond2_772
  %_cond1_n_cond2_cond3_775 = and i1 %_cond1_n_cond2_774, %_cond4_773
  %.v13 = select i1 %_cond1_n_cond2_cond3_775, i8* %_pot_address_in_parent_stack_768, i8* %_new_gep_142
  %300 = bitcast i8* %.v13 to i64*
  %_new_load_778 = load i64, i64* %300, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_778 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_778, i64* %XBP, align 8, !mcsema_real_eip !81
  %_new_gep_145 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_140, i64 16
  %301 = add i64 %RSP_val.153, 16, !mcsema_real_eip !81
  store volatile i8* %_new_gep_145, i8** %_RSP_ptr_, align 8
  store i64 %301, i64* %XSP, align 8, !mcsema_real_eip !81
  %_new_gep_147 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_140, i64 24
  %302 = add i64 %RSP_val.153, 24, !mcsema_real_eip !82
  %_ptr_to_int_779 = ptrtoint i8* %_new_gep_145 to i64
  %_offset_above_rbp_782 = sub i64 %_ptr_to_int_779, %_local_end_to_int_
  %_pot_address_in_parent_stack_783 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_782
  %_cond1_784 = icmp ugt i8* %_new_gep_145, %_local_stack_end_ptr_
  %_cond2_1_785 = icmp ugt i8* %_new_gep_145, %_parent_stack_end_ptr_
  %_cond2_2_786 = icmp ult i8* %_new_gep_145, %_parent_stack_start_ptr_
  %_cond2_787 = or i1 %_cond2_1_785, %_cond2_2_786
  %_cond4_788 = icmp ule i8* %_pot_address_in_parent_stack_783, %_parent_stack_end_ptr_
  %_cond1_n_cond2_789 = and i1 %_cond1_784, %_cond2_787
  %_cond1_n_cond2_cond3_790 = and i1 %_cond1_n_cond2_789, %_cond4_788
  %_address_in_parent_stack_bt_792._allin_new_bt_148.v = select i1 %_cond1_n_cond2_cond3_790, i8* %_pot_address_in_parent_stack_783, i8* %_new_gep_145
  %_address_in_parent_stack_bt_792._allin_new_bt_148 = bitcast i8* %_address_in_parent_stack_bt_792._allin_new_bt_148.v to i64*
  %_new_load_793 = load i64, i64* %_address_in_parent_stack_bt_792._allin_new_bt_148, align 8
  store i64 %_new_load_793, i64* %XIP, align 8, !mcsema_real_eip !82
  store volatile i8* %_new_gep_147, i8** %_RSP_ptr_, align 8
  store i64 %302, i64* %XSP, align 8, !mcsema_real_eip !82
  ret void, !mcsema_real_eip !82
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_120.2(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [160 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [160 x i8], [160 x i8]* %_local_stack_start_ptr_1, i64 0, i64 160
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !83
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !83
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !83
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !83
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !83
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !83
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !83
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !83
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !83
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !83
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !83
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !83
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !83
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !83
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !83
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !83
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !83
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !83
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !83
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !83
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !83
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !83
  %RSP_val.157 = load i64, i64* %XSP, align 8, !mcsema_real_eip !83
  %_new_gep_ = getelementptr inbounds [160 x i8], [160 x i8]* %_local_stack_start_ptr_1, i64 0, i64 152
  %2 = add i64 %RSP_val.157, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  %3 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %3, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %2, i64* %XBP, align 8, !mcsema_real_eip !84
  %_new_gep_3 = getelementptr inbounds [160 x i8], [160 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %4 = add i64 %RSP_val.157, -152
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %3
  %5 = and i64 %_trans_xor_, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !85
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %7 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !85
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  store i1 %9, i1* %PF, align 1, !mcsema_real_eip !85
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !85
  %10 = icmp slt i64 %4, 0
  store i1 %10, i1* %SF, align 1, !mcsema_real_eip !85
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 144 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !85
  %11 = and i64 %_trans_xor_, %3, !mcsema_real_eip !85
  %12 = icmp slt i64 %11, 0
  store i1 %12, i1* %OF, align 1, !mcsema_real_eip !85
  store volatile i64 %_trans_p2i_, i64* %_RSP_ptr_.sroa.0, align 8
  %_new_gep_17 = getelementptr inbounds [160 x i8], [160 x i8]* %_local_stack_start_ptr_1, i64 0, i64 136
  %13 = bitcast i8* %_new_gep_17 to <4 x i32>*
  store <4 x i32> <i32 10, i32 10, i32 10, i32 0>, <4 x i32>* %13, align 8
  store i64 24, i64* %XAX, align 8, !mcsema_real_eip !86
  store i64 24, i64* %XCX, align 8, !mcsema_real_eip !87
  %_new_gep_26 = getelementptr inbounds [160 x i8], [160 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 ptrtoint (%0* @data_0x221 to i64), i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !88
  store i64 24, i64* %XDI, align 8, !mcsema_real_eip !89
  %14 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %15 = add i64 %RSP_val.157, -160
  %_allin_new_bt_30 = bitcast [160 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !90
  %16 = ptrtoint [160 x i8]* %_local_stack_start_ptr_1 to i64
  store volatile i64 %16, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %15, i64* %XSP, align 8, !mcsema_real_eip !90
  %17 = call x86_64_sysvcc i64 @_malloc(i64 24)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_20 = load i8*, i8** %14, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_20, i64 8
  %18 = ptrtoint i8* %_gep_fix_ to i64
  store i64 %18, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !90
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %17, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !91
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
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !92
  %20 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !93
  store i32 5, i32* %20, align 4, !mcsema_real_eip !93
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -24
  %_ptr_to_int_177 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_180 = sub i64 %_ptr_to_int_177, %1
  %_pot_address_in_parent_stack_181 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_180
  %_cond1_182 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_183 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_184 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_185 = or i1 %_cond2_1_183, %_cond2_2_184
  %_cond4_186 = icmp ule i8* %_pot_address_in_parent_stack_181, %_parent_stack_end_ptr_
  %_cond1_n_cond2_187 = and i1 %_cond1_182, %_cond2_185
  %_cond1_n_cond2_cond3_188 = and i1 %_cond1_n_cond2_187, %_cond4_186
  %_address_in_parent_stack_bt_190._allin_new_bt_39.v = select i1 %_cond1_n_cond2_cond3_188, i8* %_pot_address_in_parent_stack_181, i8* %_new_gep_38
  %_address_in_parent_stack_bt_190._allin_new_bt_39 = bitcast i8* %_address_in_parent_stack_bt_190._allin_new_bt_39.v to i64*
  %_new_load_191 = load i64, i64* %_address_in_parent_stack_bt_190._allin_new_bt_39, align 8
  store i64 %_new_load_191, i64* %XAX, align 8, !mcsema_real_eip !94
  %21 = add i64 %_new_load_191, 4, !mcsema_real_eip !95
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !95
  store i32 5, i32* %22, align 4, !mcsema_real_eip !95
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -24
  %_ptr_to_int_192 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %1
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  %.v2 = select i1 %_cond1_n_cond2_cond3_203, i8* %_pot_address_in_parent_stack_196, i8* %_new_gep_41
  %23 = bitcast i8* %.v2 to i64*
  %_new_load_206 = load i64, i64* %23, align 8
  store i64 %_new_load_206, i64* %XAX, align 8, !mcsema_real_eip !96
  %24 = add i64 %_new_load_206, 8, !mcsema_real_eip !97
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !97
  store i32 5, i32* %25, align 4, !mcsema_real_eip !97
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -24
  %_ptr_to_int_207 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_207, %1
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  %_address_in_parent_stack_bt_220._allin_new_bt_45.v = select i1 %_cond1_n_cond2_cond3_218, i8* %_pot_address_in_parent_stack_211, i8* %_new_gep_44
  %_address_in_parent_stack_bt_220._allin_new_bt_45 = bitcast i8* %_address_in_parent_stack_bt_220._allin_new_bt_45.v to i64*
  %_new_load_221 = load i64, i64* %_address_in_parent_stack_bt_220._allin_new_bt_45, align 8
  store i64 %_new_load_221, i64* %XAX, align 8, !mcsema_real_eip !98
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -8
  %26 = ptrtoint i8* %_new_gep_47 to i64
  %_offset_above_rbp_225 = sub i64 %26, %1
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  %.v3 = select i1 %_cond1_n_cond2_cond3_233, i8* %_pot_address_in_parent_stack_226, i8* %_new_gep_47
  %27 = bitcast i8* %.v3 to i32*
  %_new_load_236 = load i32, i32* %27, align 4
  %28 = zext i32 %_new_load_236 to i64, !mcsema_real_eip !99
  store i64 %28, i64* %XDX, align 8, !mcsema_real_eip !99
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -48
  %EDX.182 = bitcast i64* %XDX to i32*, !mcsema_real_eip !100
  %29 = bitcast i8* %_new_gep_50 to i32*
  store i32 %_new_load_236, i32* %29, align 4, !mcsema_real_eip !100
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52, i64 -16
  %_ptr_to_int_237 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_240 = sub i64 %_ptr_to_int_237, %1
  %_pot_address_in_parent_stack_241 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_240
  %_cond1_242 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_243 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_244 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_245 = or i1 %_cond2_1_243, %_cond2_2_244
  %_cond4_246 = icmp ule i8* %_pot_address_in_parent_stack_241, %_parent_stack_end_ptr_
  %_cond1_n_cond2_247 = and i1 %_cond1_242, %_cond2_245
  %_cond1_n_cond2_cond3_248 = and i1 %_cond1_n_cond2_247, %_cond4_246
  %_address_in_parent_stack_bt_250._allin_new_bt_54.v = select i1 %_cond1_n_cond2_cond3_248, i8* %_pot_address_in_parent_stack_241, i8* %_new_gep_53
  %_address_in_parent_stack_bt_250._allin_new_bt_54 = bitcast i8* %_address_in_parent_stack_bt_250._allin_new_bt_54.v to i64*
  %_new_load_251 = load i64, i64* %_address_in_parent_stack_bt_250._allin_new_bt_54, align 8
  store i64 %_new_load_251, i64* %XCX, align 8, !mcsema_real_eip !101
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52, i64 -56
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 %_new_load_251, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !102
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -56
  %_ptr_to_int_252 = ptrtoint i8* %_new_gep_59 to i64
  %_offset_above_rbp_255 = sub i64 %_ptr_to_int_252, %1
  %_pot_address_in_parent_stack_256 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_255
  %_cond1_257 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_258 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_259 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_260 = or i1 %_cond2_1_258, %_cond2_2_259
  %_cond4_261 = icmp ule i8* %_pot_address_in_parent_stack_256, %_parent_stack_end_ptr_
  %_cond1_n_cond2_262 = and i1 %_cond1_257, %_cond2_260
  %_cond1_n_cond2_cond3_263 = and i1 %_cond1_n_cond2_262, %_cond4_261
  %.v4 = select i1 %_cond1_n_cond2_cond3_263, i8* %_pot_address_in_parent_stack_256, i8* %_new_gep_59
  %30 = bitcast i8* %.v4 to i64*
  %_new_load_266 = load i64, i64* %30, align 8
  store i64 %_new_load_266, i64* %XDI, align 8, !mcsema_real_eip !103
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -48
  %31 = ptrtoint i8* %_new_gep_62 to i64
  %_offset_above_rbp_270 = sub i64 %31, %1
  %_pot_address_in_parent_stack_271 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_270
  %_cond1_272 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_273 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_274 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_275 = or i1 %_cond2_1_273, %_cond2_2_274
  %_cond4_276 = icmp ule i8* %_pot_address_in_parent_stack_271, %_parent_stack_end_ptr_
  %_cond1_n_cond2_277 = and i1 %_cond1_272, %_cond2_275
  %_cond1_n_cond2_cond3_278 = and i1 %_cond1_n_cond2_277, %_cond4_276
  %_address_in_parent_stack_bt_280..v = select i1 %_cond1_n_cond2_cond3_278, i8* %_pot_address_in_parent_stack_271, i8* %_new_gep_62
  %_address_in_parent_stack_bt_280. = bitcast i8* %_address_in_parent_stack_bt_280..v to i32*
  %_new_load_281 = load i32, i32* %_address_in_parent_stack_bt_280., align 4
  %32 = zext i32 %_new_load_281 to i64, !mcsema_real_eip !104
  store i64 %32, i64* %XSI, align 8, !mcsema_real_eip !104
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -8
  %33 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_285 = sub i64 %33, %1
  %_pot_address_in_parent_stack_286 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_285
  %_cond1_287 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_288 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_289 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_290 = or i1 %_cond2_1_288, %_cond2_2_289
  %_cond4_291 = icmp ule i8* %_pot_address_in_parent_stack_286, %_parent_stack_end_ptr_
  %_cond1_n_cond2_292 = and i1 %_cond1_287, %_cond2_290
  %_cond1_n_cond2_cond3_293 = and i1 %_cond1_n_cond2_292, %_cond4_291
  %.v5 = select i1 %_cond1_n_cond2_cond3_293, i8* %_pot_address_in_parent_stack_286, i8* %_new_gep_65
  %34 = bitcast i8* %.v5 to i32*
  %_new_load_296 = load i32, i32* %34, align 4
  %35 = zext i32 %_new_load_296 to i64, !mcsema_real_eip !105
  store i64 %35, i64* %XDX, align 8, !mcsema_real_eip !105
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_676 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_676, i64* %XCX, align 8
  %36 = add i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_676, 16, !mcsema_real_eip !106
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !106
  store i32 %_new_load_296, i32* %37, align 4, !mcsema_real_eip !106
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_70 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_69, i64 -16
  %_ptr_to_int_297 = ptrtoint i8* %_new_gep_70 to i64
  %_offset_above_rbp_300 = sub i64 %_ptr_to_int_297, %1
  %_pot_address_in_parent_stack_301 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_300
  %_cond1_302 = icmp ugt i8* %_new_gep_70, %_local_stack_end_ptr_
  %_cond2_1_303 = icmp ugt i8* %_new_gep_70, %_parent_stack_end_ptr_
  %_cond2_2_304 = icmp ult i8* %_new_gep_70, %_parent_stack_start_ptr_
  %_cond2_305 = or i1 %_cond2_1_303, %_cond2_2_304
  %_cond4_306 = icmp ule i8* %_pot_address_in_parent_stack_301, %_parent_stack_end_ptr_
  %_cond1_n_cond2_307 = and i1 %_cond1_302, %_cond2_305
  %_cond1_n_cond2_cond3_308 = and i1 %_cond1_n_cond2_307, %_cond4_306
  %_address_in_parent_stack_bt_310._allin_new_bt_71.v = select i1 %_cond1_n_cond2_cond3_308, i8* %_pot_address_in_parent_stack_301, i8* %_new_gep_70
  %_address_in_parent_stack_bt_310._allin_new_bt_71 = bitcast i8* %_address_in_parent_stack_bt_310._allin_new_bt_71.v to i64*
  %_new_load_311 = load i64, i64* %_address_in_parent_stack_bt_310._allin_new_bt_71, align 8
  %RCX_val.195 = load i64, i64* %XCX, align 8, !mcsema_real_eip !108
  %38 = add i64 %RCX_val.195, 8, !mcsema_real_eip !108
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !108
  store i64 %_new_load_311, i64* %39, align 8, !mcsema_real_eip !108
  %RCX_val.197 = load i64, i64* %XCX, align 8, !mcsema_real_eip !109
  %40 = add i64 %RCX_val.197, 32, !mcsema_real_eip !109
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !109
  %RAX_val.198 = load i64, i64* %XAX, align 8, !mcsema_real_eip !109
  store i64 %RAX_val.198, i64* %41, align 8, !mcsema_real_eip !109
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_73 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_72, i64 -16
  %42 = ptrtoint i8* %_new_gep_73 to i64
  store i64 %42, i64* %R8, align 8, !mcsema_real_eip !110
  %RCX_val.200 = load i64, i64* %XCX, align 8, !mcsema_real_eip !111
  %43 = add i64 %RCX_val.200, 24, !mcsema_real_eip !111
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !111
  store i64 %42, i64* %44, align 8, !mcsema_real_eip !111
  %45 = bitcast i64* %XCX to i32**
  %RCX_val.2027 = load i32*, i32** %45, align 8
  store i32 3, i32* %RCX_val.2027, align 4, !mcsema_real_eip !112
  store i64 2, i64* %R9, align 8, !mcsema_real_eip !113
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_76 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_75, i64 -92
  %46 = bitcast i8* %_new_gep_76 to i32*
  store i32 1, i32* %46, align 4, !mcsema_real_eip !114
  %R8_val.206 = load i64, i64* %R8, align 8, !mcsema_real_eip !115
  store i64 %R8_val.206, i64* %XDX, align 8, !mcsema_real_eip !115
  %RAX_val.207 = load i64, i64* %XAX, align 8, !mcsema_real_eip !116
  store i64 %RAX_val.207, i64* %XCX, align 8, !mcsema_real_eip !116
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_79 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_78, i64 -92
  %47 = ptrtoint i8* %_new_gep_79 to i64
  %_offset_above_rbp_315 = sub i64 %47, %1
  %_pot_address_in_parent_stack_316 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_315
  %_cond1_317 = icmp ugt i8* %_new_gep_79, %_local_stack_end_ptr_
  %_cond2_1_318 = icmp ugt i8* %_new_gep_79, %_parent_stack_end_ptr_
  %_cond2_2_319 = icmp ult i8* %_new_gep_79, %_parent_stack_start_ptr_
  %_cond2_320 = or i1 %_cond2_1_318, %_cond2_2_319
  %_cond4_321 = icmp ule i8* %_pot_address_in_parent_stack_316, %_parent_stack_end_ptr_
  %_cond1_n_cond2_322 = and i1 %_cond1_317, %_cond2_320
  %_cond1_n_cond2_cond3_323 = and i1 %_cond1_n_cond2_322, %_cond4_321
  %.v8 = select i1 %_cond1_n_cond2_cond3_323, i8* %_pot_address_in_parent_stack_316, i8* %_new_gep_79
  %48 = bitcast i8* %.v8 to i32*
  %_new_load_326 = load i32, i32* %48, align 4
  %49 = zext i32 %_new_load_326 to i64, !mcsema_real_eip !117
  store i64 %49, i64* %R8, align 8, !mcsema_real_eip !117
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_8121 = load i8*, i8** %14, align 8
  %RSP_val.209 = load i64, i64* %XSP, align 8, !mcsema_real_eip !118
  %_new_gep_82 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_8121, i64 -8
  %50 = add i64 %RSP_val.209, -8
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_83, align 8, !mcsema_real_eip !118
  %51 = ptrtoint i8* %_new_gep_82 to i64
  store volatile i64 %51, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %50, i64* %XSP, align 8, !mcsema_real_eip !118
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_171 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_82, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_171)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_17322 = load i8*, i8** %14, align 8
  %_gep_fix_174 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_17322, i64 8
  %52 = ptrtoint i8* %_gep_fix_174 to i64
  store i64 %52, i64* %_RSP_ptr_.sroa.0, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_85 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_84, i64 -64
  %EDX_val.212 = load i32, i32* %EDX.182, align 4, !mcsema_real_eip !119
  %53 = bitcast i8* %_new_gep_85 to i32*
  store i32 %EDX_val.212, i32* %53, align 4, !mcsema_real_eip !119
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_87 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_88 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_87, i64 -72
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %RAX_val.214 = load i64, i64* %XAX, align 8, !mcsema_real_eip !120
  store i64 %RAX_val.214, i64* %_allin_new_bt_89, align 8, !mcsema_real_eip !120
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_91 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90, i64 -72
  %_ptr_to_int_327 = ptrtoint i8* %_new_gep_91 to i64
  %_offset_above_rbp_330 = sub i64 %_ptr_to_int_327, %1
  %_pot_address_in_parent_stack_331 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_330
  %_cond1_332 = icmp ugt i8* %_new_gep_91, %_local_stack_end_ptr_
  %_cond2_1_333 = icmp ugt i8* %_new_gep_91, %_parent_stack_end_ptr_
  %_cond2_2_334 = icmp ult i8* %_new_gep_91, %_parent_stack_start_ptr_
  %_cond2_335 = or i1 %_cond2_1_333, %_cond2_2_334
  %_cond4_336 = icmp ule i8* %_pot_address_in_parent_stack_331, %_parent_stack_end_ptr_
  %_cond1_n_cond2_337 = and i1 %_cond1_332, %_cond2_335
  %_cond1_n_cond2_cond3_338 = and i1 %_cond1_n_cond2_337, %_cond4_336
  %_address_in_parent_stack_bt_340._allin_new_bt_92.v = select i1 %_cond1_n_cond2_cond3_338, i8* %_pot_address_in_parent_stack_331, i8* %_new_gep_91
  %_address_in_parent_stack_bt_340._allin_new_bt_92 = bitcast i8* %_address_in_parent_stack_bt_340._allin_new_bt_92.v to i64*
  %_new_load_341 = load i64, i64* %_address_in_parent_stack_bt_340._allin_new_bt_92, align 8
  store i64 %_new_load_341, i64* %XAX, align 8, !mcsema_real_eip !121
  %_new_gep_94 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90, i64 -40
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  store i64 %_new_load_341, i64* %_allin_new_bt_95, align 8, !mcsema_real_eip !122
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_97 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_96, i64 -64
  %54 = ptrtoint i8* %_new_gep_97 to i64
  %_offset_above_rbp_345 = sub i64 %54, %1
  %_pot_address_in_parent_stack_346 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_345
  %_cond1_347 = icmp ugt i8* %_new_gep_97, %_local_stack_end_ptr_
  %_cond2_1_348 = icmp ugt i8* %_new_gep_97, %_parent_stack_end_ptr_
  %_cond2_2_349 = icmp ult i8* %_new_gep_97, %_parent_stack_start_ptr_
  %_cond2_350 = or i1 %_cond2_1_348, %_cond2_2_349
  %_cond4_351 = icmp ule i8* %_pot_address_in_parent_stack_346, %_parent_stack_end_ptr_
  %_cond1_n_cond2_352 = and i1 %_cond1_347, %_cond2_350
  %_cond1_n_cond2_cond3_353 = and i1 %_cond1_n_cond2_352, %_cond4_351
  %.v9 = select i1 %_cond1_n_cond2_cond3_353, i8* %_pot_address_in_parent_stack_346, i8* %_new_gep_97
  %55 = bitcast i8* %.v9 to i32*
  %_new_load_356 = load i32, i32* %55, align 4
  %56 = zext i32 %_new_load_356 to i64, !mcsema_real_eip !123
  store i64 %56, i64* %XDX, align 8, !mcsema_real_eip !123
  %_new_gep_100 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_96, i64 -32
  %57 = bitcast i8* %_new_gep_100 to i32*
  store i32 %_new_load_356, i32* %57, align 4, !mcsema_real_eip !124
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_103 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_102, i64 -40
  %58 = ptrtoint i8* %_new_gep_103 to i64
  %_offset_above_rbp_360 = sub i64 %58, %1
  %_pot_address_in_parent_stack_361 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_360
  %_cond1_362 = icmp ugt i8* %_new_gep_103, %_local_stack_end_ptr_
  %_cond2_1_363 = icmp ugt i8* %_new_gep_103, %_parent_stack_end_ptr_
  %_cond2_2_364 = icmp ult i8* %_new_gep_103, %_parent_stack_start_ptr_
  %_cond2_365 = or i1 %_cond2_1_363, %_cond2_2_364
  %_cond4_366 = icmp ule i8* %_pot_address_in_parent_stack_361, %_parent_stack_end_ptr_
  %_cond1_n_cond2_367 = and i1 %_cond1_362, %_cond2_365
  %_cond1_n_cond2_cond3_368 = and i1 %_cond1_n_cond2_367, %_cond4_366
  %_address_in_parent_stack_bt_370..v = select i1 %_cond1_n_cond2_cond3_368, i8* %_pot_address_in_parent_stack_361, i8* %_new_gep_103
  %_address_in_parent_stack_bt_370. = bitcast i8* %_address_in_parent_stack_bt_370..v to i32*
  %_new_load_371 = load i32, i32* %_address_in_parent_stack_bt_370., align 4
  %59 = zext i32 %_new_load_371 to i64, !mcsema_real_eip !125
  store i64 %59, i64* %XDX, align 8, !mcsema_real_eip !125
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_102, i64 -36
  %60 = ptrtoint i8* %_new_gep_106 to i64
  %_offset_above_rbp_375 = sub i64 %60, %1
  %_pot_address_in_parent_stack_376 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_375
  %_cond1_377 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_378 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_379 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_380 = or i1 %_cond2_1_378, %_cond2_2_379
  %_cond4_381 = icmp ule i8* %_pot_address_in_parent_stack_376, %_parent_stack_end_ptr_
  %_cond1_n_cond2_382 = and i1 %_cond1_377, %_cond2_380
  %_cond1_n_cond2_cond3_383 = and i1 %_cond1_n_cond2_382, %_cond4_381
  %.v10 = select i1 %_cond1_n_cond2_cond3_383, i8* %_pot_address_in_parent_stack_376, i8* %_new_gep_106
  %61 = bitcast i8* %.v10 to i32*
  %_new_load_386 = load i32, i32* %61, align 4
  %62 = add i32 %_new_load_371, %_new_load_386, !mcsema_real_eip !126
  %63 = xor i32 %62, %_new_load_386, !mcsema_real_eip !126
  %64 = xor i32 %63, %_new_load_371, !mcsema_real_eip !126
  %65 = and i32 %64, 16, !mcsema_real_eip !126
  %66 = icmp ne i32 %65, 0, !mcsema_real_eip !126
  store i1 %66, i1* %AF, align 1, !mcsema_real_eip !126
  %67 = icmp slt i32 %62, 0
  store i1 %67, i1* %SF, align 1, !mcsema_real_eip !126
  %68 = icmp eq i32 %62, 0, !mcsema_real_eip !126
  store i1 %68, i1* %ZF, align 1, !mcsema_real_eip !126
  %69 = xor i32 %_new_load_386, -2147483648, !mcsema_real_eip !126
  %70 = xor i32 %69, %_new_load_371, !mcsema_real_eip !126
  %71 = and i32 %63, %70, !mcsema_real_eip !126
  %72 = icmp slt i32 %71, 0
  store i1 %72, i1* %OF, align 1, !mcsema_real_eip !126
  %73 = trunc i32 %62 to i8, !mcsema_real_eip !126
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !126
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  store i1 %76, i1* %PF, align 1, !mcsema_real_eip !126
  %77 = icmp ult i32 %62, %_new_load_386, !mcsema_real_eip !126
  store i1 %77, i1* %CF, align 1, !mcsema_real_eip !126
  %78 = zext i32 %62 to i64, !mcsema_real_eip !126
  store i64 %78, i64* %XDX, align 8, !mcsema_real_eip !126
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_102, i64 -32
  %79 = ptrtoint i8* %_new_gep_109 to i64
  %_offset_above_rbp_390 = sub i64 %79, %1
  %_pot_address_in_parent_stack_391 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_cond1_392 = icmp ugt i8* %_new_gep_109, %_local_stack_end_ptr_
  %_cond2_1_393 = icmp ugt i8* %_new_gep_109, %_parent_stack_end_ptr_
  %_cond2_2_394 = icmp ult i8* %_new_gep_109, %_parent_stack_start_ptr_
  %_cond2_395 = or i1 %_cond2_1_393, %_cond2_2_394
  %_cond4_396 = icmp ule i8* %_pot_address_in_parent_stack_391, %_parent_stack_end_ptr_
  %_cond1_n_cond2_397 = and i1 %_cond1_392, %_cond2_395
  %_cond1_n_cond2_cond3_398 = and i1 %_cond1_n_cond2_397, %_cond4_396
  %_address_in_parent_stack_bt_400..v = select i1 %_cond1_n_cond2_cond3_398, i8* %_pot_address_in_parent_stack_391, i8* %_new_gep_109
  %_address_in_parent_stack_bt_400. = bitcast i8* %_address_in_parent_stack_bt_400..v to i32*
  %_new_load_401 = load i32, i32* %_address_in_parent_stack_bt_400., align 4
  %80 = add i32 %62, %_new_load_401, !mcsema_real_eip !127
  %81 = xor i32 %80, %_new_load_401, !mcsema_real_eip !127
  %82 = xor i32 %81, %62, !mcsema_real_eip !127
  %83 = and i32 %82, 16, !mcsema_real_eip !127
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !127
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !127
  %85 = icmp slt i32 %80, 0
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !127
  %86 = icmp eq i32 %80, 0, !mcsema_real_eip !127
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !127
  %87 = xor i32 %_new_load_401, -2147483648, !mcsema_real_eip !127
  %88 = xor i32 %87, %62, !mcsema_real_eip !127
  %89 = and i32 %81, %88, !mcsema_real_eip !127
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF, align 1, !mcsema_real_eip !127
  %91 = trunc i32 %80 to i8, !mcsema_real_eip !127
  %92 = call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !127
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !127
  %95 = icmp ult i32 %80, %_new_load_401, !mcsema_real_eip !127
  store i1 %95, i1* %CF, align 1, !mcsema_real_eip !127
  %96 = zext i32 %80 to i64, !mcsema_real_eip !127
  store i64 %96, i64* %XDX, align 8, !mcsema_real_eip !127
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_102, i64 -76
  %97 = bitcast i8* %_new_gep_112 to i32*
  store i32 %80, i32* %97, align 4, !mcsema_real_eip !128
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_114 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_114, i64 -76
  %98 = ptrtoint i8* %_new_gep_115 to i64
  %_offset_above_rbp_405 = sub i64 %98, %1
  %_pot_address_in_parent_stack_406 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_cond1_407 = icmp ugt i8* %_new_gep_115, %_local_stack_end_ptr_
  %_cond2_1_408 = icmp ugt i8* %_new_gep_115, %_parent_stack_end_ptr_
  %_cond2_2_409 = icmp ult i8* %_new_gep_115, %_parent_stack_start_ptr_
  %_cond2_410 = or i1 %_cond2_1_408, %_cond2_2_409
  %_cond4_411 = icmp ule i8* %_pot_address_in_parent_stack_406, %_parent_stack_end_ptr_
  %_cond1_n_cond2_412 = and i1 %_cond1_407, %_cond2_410
  %_cond1_n_cond2_cond3_413 = and i1 %_cond1_n_cond2_412, %_cond4_411
  %.v11 = select i1 %_cond1_n_cond2_cond3_413, i8* %_pot_address_in_parent_stack_406, i8* %_new_gep_115
  %99 = bitcast i8* %.v11 to i32*
  %_new_load_416 = load i32, i32* %99, align 4
  %100 = zext i32 %_new_load_416 to i64, !mcsema_real_eip !129
  store i64 %100, i64* %XSI, align 8, !mcsema_real_eip !129
  %_new_gep_118 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_114, i64 -88
  %_ptr_to_int_417 = ptrtoint i8* %_new_gep_118 to i64
  %_offset_above_rbp_420 = sub i64 %_ptr_to_int_417, %1
  %_pot_address_in_parent_stack_421 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_420
  %_cond1_422 = icmp ugt i8* %_new_gep_118, %_local_stack_end_ptr_
  %_cond2_1_423 = icmp ugt i8* %_new_gep_118, %_parent_stack_end_ptr_
  %_cond2_2_424 = icmp ult i8* %_new_gep_118, %_parent_stack_start_ptr_
  %_cond2_425 = or i1 %_cond2_1_423, %_cond2_2_424
  %_cond4_426 = icmp ule i8* %_pot_address_in_parent_stack_421, %_parent_stack_end_ptr_
  %_cond1_n_cond2_427 = and i1 %_cond1_422, %_cond2_425
  %_cond1_n_cond2_cond3_428 = and i1 %_cond1_n_cond2_427, %_cond4_426
  %_address_in_parent_stack_bt_430._allin_new_bt_119.v = select i1 %_cond1_n_cond2_cond3_428, i8* %_pot_address_in_parent_stack_421, i8* %_new_gep_118
  %_address_in_parent_stack_bt_430._allin_new_bt_119 = bitcast i8* %_address_in_parent_stack_bt_430._allin_new_bt_119.v to i64*
  %_new_load_431 = load i64, i64* %_address_in_parent_stack_bt_430._allin_new_bt_119, align 8
  store i64 %_new_load_431, i64* %XDI, align 8, !mcsema_real_eip !130
  %AL.234 = bitcast i64* %XAX to i8*, !mcsema_real_eip !131
  store i8 0, i8* %AL.234, align 1, !mcsema_real_eip !131
  %RDX_val.237 = load i64, i64* %XDX, align 8, !mcsema_real_eip !132
  %RCX_val.238 = load i64, i64* %XCX, align 8, !mcsema_real_eip !132
  %R8_val.239 = load i64, i64* %R8, align 8, !mcsema_real_eip !132
  %R9_val.240 = load i64, i64* %R9, align 8, !mcsema_real_eip !132
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %101 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120 to i8*
  %_offset_above_rbp_435 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_120, %1
  %_pot_address_in_parent_stack_436 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_435
  %_cond1_437 = icmp ult i8* %_local_stack_end_ptr_, %101
  %_cond2_1_438 = icmp ugt i8* %101, %_parent_stack_end_ptr_
  %_cond2_2_439 = icmp ult i8* %101, %_parent_stack_start_ptr_
  %_cond2_440 = or i1 %_cond2_1_438, %_cond2_2_439
  %_cond4_441 = icmp ule i8* %_pot_address_in_parent_stack_436, %_parent_stack_end_ptr_
  %_cond1_n_cond2_442 = and i1 %_cond1_437, %_cond2_440
  %_cond1_n_cond2_cond3_443 = and i1 %_cond4_441, %_cond1_n_cond2_442
  %.v12 = select i1 %_cond1_n_cond2_cond3_443, i8* %_pot_address_in_parent_stack_436, i8* %101
  %102 = bitcast i8* %.v12 to i64*
  %_new_load_446 = load i64, i64* %102, align 8
  %_new_gep_122 = getelementptr i8, i8* %101, i64 8
  %_ptr_to_int_447 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_450 = sub i64 %_ptr_to_int_447, %1
  %_pot_address_in_parent_stack_451 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_450
  %_cond1_452 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_453 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_454 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_455 = or i1 %_cond2_1_453, %_cond2_2_454
  %_cond4_456 = icmp ule i8* %_pot_address_in_parent_stack_451, %_parent_stack_end_ptr_
  %_cond1_n_cond2_457 = and i1 %_cond1_452, %_cond2_455
  %_cond1_n_cond2_cond3_458 = and i1 %_cond1_n_cond2_457, %_cond4_456
  %_address_in_parent_stack_bt_460._allin_new_bt_123.v = select i1 %_cond1_n_cond2_cond3_458, i8* %_pot_address_in_parent_stack_451, i8* %_new_gep_122
  %_address_in_parent_stack_bt_460._allin_new_bt_123 = bitcast i8* %_address_in_parent_stack_bt_460._allin_new_bt_123.v to i64*
  %_new_load_461 = load i64, i64* %_address_in_parent_stack_bt_460._allin_new_bt_123, align 8
  %_new_gep_124 = getelementptr i8, i8* %101, i64 16
  %_ptr_to_int_462 = ptrtoint i8* %_new_gep_124 to i64
  %_offset_above_rbp_465 = sub i64 %_ptr_to_int_462, %1
  %_pot_address_in_parent_stack_466 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_465
  %_cond1_467 = icmp ugt i8* %_new_gep_124, %_local_stack_end_ptr_
  %_cond2_1_468 = icmp ugt i8* %_new_gep_124, %_parent_stack_end_ptr_
  %_cond2_2_469 = icmp ult i8* %_new_gep_124, %_parent_stack_start_ptr_
  %_cond2_470 = or i1 %_cond2_1_468, %_cond2_2_469
  %_cond4_471 = icmp ule i8* %_pot_address_in_parent_stack_466, %_parent_stack_end_ptr_
  %_cond1_n_cond2_472 = and i1 %_cond1_467, %_cond2_470
  %_cond1_n_cond2_cond3_473 = and i1 %_cond1_n_cond2_472, %_cond4_471
  %.v13 = select i1 %_cond1_n_cond2_cond3_473, i8* %_pot_address_in_parent_stack_466, i8* %_new_gep_124
  %103 = bitcast i8* %.v13 to i64*
  %_new_load_476 = load i64, i64* %103, align 8
  %_new_gep_126 = getelementptr i8, i8* %101, i64 24
  %_ptr_to_int_477 = ptrtoint i8* %_new_gep_126 to i64
  %_offset_above_rbp_480 = sub i64 %_ptr_to_int_477, %1
  %_pot_address_in_parent_stack_481 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_480
  %_cond1_482 = icmp ugt i8* %_new_gep_126, %_local_stack_end_ptr_
  %_cond2_1_483 = icmp ugt i8* %_new_gep_126, %_parent_stack_end_ptr_
  %_cond2_2_484 = icmp ult i8* %_new_gep_126, %_parent_stack_start_ptr_
  %_cond2_485 = or i1 %_cond2_1_483, %_cond2_2_484
  %_cond4_486 = icmp ule i8* %_pot_address_in_parent_stack_481, %_parent_stack_end_ptr_
  %_cond1_n_cond2_487 = and i1 %_cond1_482, %_cond2_485
  %_cond1_n_cond2_cond3_488 = and i1 %_cond1_n_cond2_487, %_cond4_486
  %_address_in_parent_stack_bt_490._allin_new_bt_127.v = select i1 %_cond1_n_cond2_cond3_488, i8* %_pot_address_in_parent_stack_481, i8* %_new_gep_126
  %_address_in_parent_stack_bt_490._allin_new_bt_127 = bitcast i8* %_address_in_parent_stack_bt_490._allin_new_bt_127.v to i64*
  %_new_load_491 = load i64, i64* %_address_in_parent_stack_bt_490._allin_new_bt_127, align 8
  %_new_gep_128 = getelementptr i8, i8* %101, i64 32
  %_ptr_to_int_492 = ptrtoint i8* %_new_gep_128 to i64
  %_offset_above_rbp_495 = sub i64 %_ptr_to_int_492, %1
  %_pot_address_in_parent_stack_496 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_495
  %_cond1_497 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_498 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_499 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_500 = or i1 %_cond2_1_498, %_cond2_2_499
  %_cond4_501 = icmp ule i8* %_pot_address_in_parent_stack_496, %_parent_stack_end_ptr_
  %_cond1_n_cond2_502 = and i1 %_cond1_497, %_cond2_500
  %_cond1_n_cond2_cond3_503 = and i1 %_cond1_n_cond2_502, %_cond4_501
  %.v14 = select i1 %_cond1_n_cond2_cond3_503, i8* %_pot_address_in_parent_stack_496, i8* %_new_gep_128
  %104 = bitcast i8* %.v14 to i64*
  %_new_load_506 = load i64, i64* %104, align 8
  %_new_gep_130 = getelementptr i8, i8* %101, i64 40
  %_ptr_to_int_507 = ptrtoint i8* %_new_gep_130 to i64
  %_offset_above_rbp_510 = sub i64 %_ptr_to_int_507, %1
  %_pot_address_in_parent_stack_511 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_510
  %_cond1_512 = icmp ugt i8* %_new_gep_130, %_local_stack_end_ptr_
  %_cond2_1_513 = icmp ugt i8* %_new_gep_130, %_parent_stack_end_ptr_
  %_cond2_2_514 = icmp ult i8* %_new_gep_130, %_parent_stack_start_ptr_
  %_cond2_515 = or i1 %_cond2_1_513, %_cond2_2_514
  %_cond4_516 = icmp ule i8* %_pot_address_in_parent_stack_511, %_parent_stack_end_ptr_
  %_cond1_n_cond2_517 = and i1 %_cond1_512, %_cond2_515
  %_cond1_n_cond2_cond3_518 = and i1 %_cond1_n_cond2_517, %_cond4_516
  %_address_in_parent_stack_bt_520._allin_new_bt_131.v = select i1 %_cond1_n_cond2_cond3_518, i8* %_pot_address_in_parent_stack_511, i8* %_new_gep_130
  %_address_in_parent_stack_bt_520._allin_new_bt_131 = bitcast i8* %_address_in_parent_stack_bt_520._allin_new_bt_131.v to i64*
  %_new_load_521 = load i64, i64* %_address_in_parent_stack_bt_520._allin_new_bt_131, align 8
  %_new_gep_132 = getelementptr i8, i8* %101, i64 48
  %_ptr_to_int_522 = ptrtoint i8* %_new_gep_132 to i64
  %_offset_above_rbp_525 = sub i64 %_ptr_to_int_522, %1
  %_pot_address_in_parent_stack_526 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_525
  %_cond1_527 = icmp ugt i8* %_new_gep_132, %_local_stack_end_ptr_
  %_cond2_1_528 = icmp ugt i8* %_new_gep_132, %_parent_stack_end_ptr_
  %_cond2_2_529 = icmp ult i8* %_new_gep_132, %_parent_stack_start_ptr_
  %_cond2_530 = or i1 %_cond2_1_528, %_cond2_2_529
  %_cond4_531 = icmp ule i8* %_pot_address_in_parent_stack_526, %_parent_stack_end_ptr_
  %_cond1_n_cond2_532 = and i1 %_cond1_527, %_cond2_530
  %_cond1_n_cond2_cond3_533 = and i1 %_cond1_n_cond2_532, %_cond4_531
  %.v15 = select i1 %_cond1_n_cond2_cond3_533, i8* %_pot_address_in_parent_stack_526, i8* %_new_gep_132
  %105 = bitcast i8* %.v15 to i64*
  %_new_load_536 = load i64, i64* %105, align 8
  %_new_gep_134 = getelementptr i8, i8* %101, i64 56
  %_ptr_to_int_537 = ptrtoint i8* %_new_gep_134 to i64
  %_offset_above_rbp_540 = sub i64 %_ptr_to_int_537, %1
  %_pot_address_in_parent_stack_541 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_540
  %_cond1_542 = icmp ugt i8* %_new_gep_134, %_local_stack_end_ptr_
  %_cond2_1_543 = icmp ugt i8* %_new_gep_134, %_parent_stack_end_ptr_
  %_cond2_2_544 = icmp ult i8* %_new_gep_134, %_parent_stack_start_ptr_
  %_cond2_545 = or i1 %_cond2_1_543, %_cond2_2_544
  %_cond4_546 = icmp ule i8* %_pot_address_in_parent_stack_541, %_parent_stack_end_ptr_
  %_cond1_n_cond2_547 = and i1 %_cond1_542, %_cond2_545
  %_cond1_n_cond2_cond3_548 = and i1 %_cond1_n_cond2_547, %_cond4_546
  %_address_in_parent_stack_bt_550._allin_new_bt_135.v = select i1 %_cond1_n_cond2_cond3_548, i8* %_pot_address_in_parent_stack_541, i8* %_new_gep_134
  %_address_in_parent_stack_bt_550._allin_new_bt_135 = bitcast i8* %_address_in_parent_stack_bt_550._allin_new_bt_135.v to i64*
  %_new_load_551 = load i64, i64* %_address_in_parent_stack_bt_550._allin_new_bt_135, align 8
  %_new_gep_136 = getelementptr i8, i8* %101, i64 64
  %_ptr_to_int_552 = ptrtoint i8* %_new_gep_136 to i64
  %_offset_above_rbp_555 = sub i64 %_ptr_to_int_552, %1
  %_pot_address_in_parent_stack_556 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_555
  %_cond1_557 = icmp ugt i8* %_new_gep_136, %_local_stack_end_ptr_
  %_cond2_1_558 = icmp ugt i8* %_new_gep_136, %_parent_stack_end_ptr_
  %_cond2_2_559 = icmp ult i8* %_new_gep_136, %_parent_stack_start_ptr_
  %_cond2_560 = or i1 %_cond2_1_558, %_cond2_2_559
  %_cond4_561 = icmp ule i8* %_pot_address_in_parent_stack_556, %_parent_stack_end_ptr_
  %_cond1_n_cond2_562 = and i1 %_cond1_557, %_cond2_560
  %_cond1_n_cond2_cond3_563 = and i1 %_cond1_n_cond2_562, %_cond4_561
  %.v16 = select i1 %_cond1_n_cond2_cond3_563, i8* %_pot_address_in_parent_stack_556, i8* %_new_gep_136
  %106 = bitcast i8* %.v16 to i64*
  %_new_load_566 = load i64, i64* %106, align 8
  %_new_gep_138 = getelementptr i8, i8* %101, i64 72
  %_ptr_to_int_567 = ptrtoint i8* %_new_gep_138 to i64
  %_offset_above_rbp_570 = sub i64 %_ptr_to_int_567, %1
  %_pot_address_in_parent_stack_571 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_570
  %_cond1_572 = icmp ugt i8* %_new_gep_138, %_local_stack_end_ptr_
  %_cond2_1_573 = icmp ugt i8* %_new_gep_138, %_parent_stack_end_ptr_
  %_cond2_2_574 = icmp ult i8* %_new_gep_138, %_parent_stack_start_ptr_
  %_cond2_575 = or i1 %_cond2_1_573, %_cond2_2_574
  %_cond4_576 = icmp ule i8* %_pot_address_in_parent_stack_571, %_parent_stack_end_ptr_
  %_cond1_n_cond2_577 = and i1 %_cond1_572, %_cond2_575
  %_cond1_n_cond2_cond3_578 = and i1 %_cond1_n_cond2_577, %_cond4_576
  %_address_in_parent_stack_bt_580._allin_new_bt_139.v = select i1 %_cond1_n_cond2_cond3_578, i8* %_pot_address_in_parent_stack_571, i8* %_new_gep_138
  %_address_in_parent_stack_bt_580._allin_new_bt_139 = bitcast i8* %_address_in_parent_stack_bt_580._allin_new_bt_139.v to i64*
  %_new_load_581 = load i64, i64* %_address_in_parent_stack_bt_580._allin_new_bt_139, align 8
  %RSP_val.242 = load i64, i64* %XSP, align 8, !mcsema_real_eip !132
  %_new_gep_141 = getelementptr i8, i8* %101, i64 -8
  %107 = add i64 %RSP_val.242, -8
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_142, align 8, !mcsema_real_eip !132
  %108 = ptrtoint i8* %_new_gep_141 to i64
  store volatile i64 %108, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %107, i64* %XSP, align 8, !mcsema_real_eip !132
  %109 = call x86_64_sysvcc i64 @_printf(i64 %_new_load_431, i64 %100, i64 %RDX_val.237, i64 %RCX_val.238, i64 %R8_val.239, i64 %R9_val.240, i64 %_new_load_446, i64 %_new_load_461, i64 %_new_load_476, i64 %_new_load_491, i64 %_new_load_506, i64 %_new_load_521, i64 %_new_load_536, i64 %_new_load_551, i64 %_new_load_566, i64 %_new_load_581)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_17523 = load i8*, i8** %14, align 8
  %_gep_fix_176 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_17523, i64 8
  %110 = ptrtoint i8* %_gep_fix_176 to i64
  store i64 %110, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %109, i64* %XAX, align 8, !mcsema_real_eip !132
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_143 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_144 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_143, i64 -76
  %111 = ptrtoint i8* %_new_gep_144 to i64
  %_offset_above_rbp_585 = sub i64 %111, %1
  %_pot_address_in_parent_stack_586 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_585
  %_cond1_587 = icmp ugt i8* %_new_gep_144, %_local_stack_end_ptr_
  %_cond2_1_588 = icmp ugt i8* %_new_gep_144, %_parent_stack_end_ptr_
  %_cond2_2_589 = icmp ult i8* %_new_gep_144, %_parent_stack_start_ptr_
  %_cond2_590 = or i1 %_cond2_1_588, %_cond2_2_589
  %_cond4_591 = icmp ule i8* %_pot_address_in_parent_stack_586, %_parent_stack_end_ptr_
  %_cond1_n_cond2_592 = and i1 %_cond1_587, %_cond2_590
  %_cond1_n_cond2_cond3_593 = and i1 %_cond1_n_cond2_592, %_cond4_591
  %.v17 = select i1 %_cond1_n_cond2_cond3_593, i8* %_pot_address_in_parent_stack_586, i8* %_new_gep_144
  %112 = bitcast i8* %.v17 to i32*
  %_new_load_596 = load i32, i32* %112, align 4
  %113 = zext i32 %_new_load_596 to i64, !mcsema_real_eip !133
  store i64 %113, i64* %XDX, align 8, !mcsema_real_eip !133
  %_new_gep_147 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_143, i64 -96
  %114 = trunc i64 %109 to i32
  %115 = bitcast i8* %_new_gep_147 to i32*
  store i32 %114, i32* %115, align 4, !mcsema_real_eip !134
  %EDX_val.248 = load i32, i32* %EDX.182, align 4, !mcsema_real_eip !135
  %116 = zext i32 %EDX_val.248 to i64, !mcsema_real_eip !135
  store i64 %116, i64* %XAX, align 8, !mcsema_real_eip !135
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_149 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %117 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_149 to i8*
  %RSP_val.249 = load i64, i64* %XSP, align 8, !mcsema_real_eip !136
  %_new_gep_150 = getelementptr i8, i8* %117, i64 144
  %118 = add i64 %RSP_val.249, 144, !mcsema_real_eip !136
  %_trans_p2i_151 = ptrtoint i8* %_new_gep_150 to i64
  %_trans_xor_153 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_149, %_trans_p2i_151
  %119 = and i64 %_trans_xor_153, 16
  %120 = icmp eq i64 %119, 0
  store i1 %120, i1* %AF, align 1, !mcsema_real_eip !136
  %121 = icmp slt i64 %118, 0
  store i1 %121, i1* %SF, align 1, !mcsema_real_eip !136
  %_trans_icmp_eq_155 = icmp eq i8* %_new_gep_150, null
  store i1 %_trans_icmp_eq_155, i1* %ZF, align 1, !mcsema_real_eip !136
  %122 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_149, -9223372036854775808, !mcsema_real_eip !136
  %123 = and i64 %_trans_xor_153, %122, !mcsema_real_eip !136
  %124 = icmp slt i64 %123, 0
  store i1 %124, i1* %OF, align 1, !mcsema_real_eip !136
  %_trans_trunc_162 = trunc i64 %_trans_p2i_151 to i8
  %125 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_162), !mcsema_real_eip !136
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  store i1 %127, i1* %PF, align 1, !mcsema_real_eip !136
  %_trans_icmp_ne_164 = icmp ne i64 %RSP_val.249, %_trans_p2i_151
  store i1 %_trans_icmp_ne_164, i1* %CF, align 1, !mcsema_real_eip !136
  store volatile i64 %_trans_p2i_151, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %118, i64* %XSP, align 8, !mcsema_real_eip !136
  %_offset_above_rbp_600 = sub i64 %_trans_p2i_151, %1
  %_pot_address_in_parent_stack_601 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_600
  %_cond1_602 = icmp ugt i8* %_new_gep_150, %_local_stack_end_ptr_
  %_cond2_1_603 = icmp ugt i8* %_new_gep_150, %_parent_stack_end_ptr_
  %_cond2_2_604 = icmp ult i8* %_new_gep_150, %_parent_stack_start_ptr_
  %_cond2_605 = or i1 %_cond2_1_603, %_cond2_2_604
  %_cond4_606 = icmp ule i8* %_pot_address_in_parent_stack_601, %_parent_stack_end_ptr_
  %_cond1_n_cond2_607 = and i1 %_cond1_602, %_cond2_605
  %_cond1_n_cond2_cond3_608 = and i1 %_cond1_n_cond2_607, %_cond4_606
  %_address_in_parent_stack_bt_610._allin_new_bt_166.v = select i1 %_cond1_n_cond2_cond3_608, i8* %_pot_address_in_parent_stack_601, i8* %_new_gep_150
  %_address_in_parent_stack_bt_610._allin_new_bt_166 = bitcast i8* %_address_in_parent_stack_bt_610._allin_new_bt_166.v to i64*
  %_new_load_611 = load i64, i64* %_address_in_parent_stack_bt_610._allin_new_bt_166, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_611 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_611, i64* %XBP, align 8, !mcsema_real_eip !137
  %_new_gep_167 = getelementptr i8, i8* %117, i64 152
  %128 = add i64 %RSP_val.249, 152, !mcsema_real_eip !137
  %129 = ptrtoint i8* %_new_gep_167 to i64
  store volatile i64 %129, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %128, i64* %XSP, align 8, !mcsema_real_eip !137
  %_new_gep_169 = getelementptr i8, i8* %117, i64 160
  %130 = add i64 %RSP_val.249, 160, !mcsema_real_eip !138
  %_offset_above_rbp_615 = sub i64 %129, %1
  %_pot_address_in_parent_stack_616 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_615
  %_cond1_617 = icmp ugt i8* %_new_gep_167, %_local_stack_end_ptr_
  %_cond2_1_618 = icmp ugt i8* %_new_gep_167, %_parent_stack_end_ptr_
  %_cond2_2_619 = icmp ult i8* %_new_gep_167, %_parent_stack_start_ptr_
  %_cond2_620 = or i1 %_cond2_1_618, %_cond2_2_619
  %_cond4_621 = icmp ule i8* %_pot_address_in_parent_stack_616, %_parent_stack_end_ptr_
  %_cond1_n_cond2_622 = and i1 %_cond1_617, %_cond2_620
  %_cond1_n_cond2_cond3_623 = and i1 %_cond1_n_cond2_622, %_cond4_621
  %.v18 = select i1 %_cond1_n_cond2_cond3_623, i8* %_pot_address_in_parent_stack_616, i8* %_new_gep_167
  %131 = bitcast i8* %.v18 to i64*
  %_new_load_626 = load i64, i64* %131, align 8
  store i64 %_new_load_626, i64* %XIP, align 8, !mcsema_real_eip !138
  %132 = ptrtoint i8* %_new_gep_169 to i64
  store volatile i64 %132, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %130, i64* %XSP, align 8, !mcsema_real_eip !138
  ret void, !mcsema_real_eip !138
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
!5 = !{i64 5}
!6 = !{i64 9}
!7 = !{i64 13}
!8 = !{i64 17}
!9 = !{i64 20}
!10 = !{i64 24}
!11 = !{i64 27}
!12 = !{i64 30}
!13 = !{i64 33}
!14 = !{i64 37}
!15 = !{i64 41}
!16 = !{i64 45}
!17 = !{i64 49}
!18 = !{i64 53}
!19 = !{i64 57}
!20 = !{i64 60}
!21 = !{i64 64}
!22 = !{i64 68}
!23 = !{i64 71}
!24 = !{i64 75}
!25 = !{i64 78}
!26 = !{i64 81}
!27 = !{i64 85}
!28 = !{i64 88}
!29 = !{i64 91}
!30 = !{i64 94}
!31 = !{i64 98}
!32 = !{i64 101}
!33 = !{i64 104}
!34 = !{i64 108}
!35 = !{i64 111}
!36 = !{i64 114}
!37 = !{i64 117}
!38 = !{i64 120}
!39 = !{i64 123}
!40 = !{i64 127}
!41 = !{i64 131}
!42 = !{i64 134}
!43 = !{i64 138}
!44 = !{i64 142}
!45 = !{i64 145}
!46 = !{i64 149}
!47 = !{i64 153}
!48 = !{i64 157}
!49 = !{i64 160}
!50 = !{i64 164}
!51 = !{i64 168}
!52 = !{i64 171}
!53 = !{i64 174}
!54 = !{i64 177}
!55 = !{i64 180}
!56 = !{i64 184}
!57 = !{i64 188}
!58 = !{i64 191}
!59 = !{i64 195}
!60 = !{i64 199}
!61 = !{i64 202}
!62 = !{i64 206}
!63 = !{i64 210}
!64 = !{i64 214}
!65 = !{i64 217}
!66 = !{i64 221}
!67 = !{i64 225}
!68 = !{i64 228}
!69 = !{i64 231}
!70 = !{i64 234}
!71 = !{i64 237}
!72 = !{i64 240}
!73 = !{i64 244}
!74 = !{i64 248}
!75 = !{i64 251}
!76 = !{i64 254}
!77 = !{i64 258}
!78 = !{i64 265}
!79 = !{i64 272}
!80 = !{i64 275}
!81 = !{i64 276}
!82 = !{i64 277}
!83 = !{i64 288}
!84 = !{i64 289}
!85 = !{i64 292}
!86 = !{i64 337}
!87 = !{i64 342}
!88 = !{i64 344}
!89 = !{i64 348}
!90 = !{i64 351}
!91 = !{i64 356}
!92 = !{i64 360}
!93 = !{i64 364}
!94 = !{i64 370}
!95 = !{i64 374}
!96 = !{i64 381}
!97 = !{i64 385}
!98 = !{i64 392}
!99 = !{i64 396}
!100 = !{i64 399}
!101 = !{i64 402}
!102 = !{i64 406}
!103 = !{i64 410}
!104 = !{i64 414}
!105 = !{i64 417}
!106 = !{i64 423}
!107 = !{i64 426}
!108 = !{i64 430}
!109 = !{i64 434}
!110 = !{i64 438}
!111 = !{i64 442}
!112 = !{i64 446}
!113 = !{i64 457}
!114 = !{i64 463}
!115 = !{i64 466}
!116 = !{i64 469}
!117 = !{i64 472}
!118 = !{i64 476}
!119 = !{i64 481}
!120 = !{i64 484}
!121 = !{i64 488}
!122 = !{i64 492}
!123 = !{i64 496}
!124 = !{i64 499}
!125 = !{i64 502}
!126 = !{i64 505}
!127 = !{i64 508}
!128 = !{i64 511}
!129 = !{i64 514}
!130 = !{i64 517}
!131 = !{i64 521}
!132 = !{i64 523}
!133 = !{i64 528}
!134 = !{i64 531}
!135 = !{i64 534}
!136 = !{i64 536}
!137 = !{i64 543}
!138 = !{i64 544}
