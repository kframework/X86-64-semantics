; ModuleID = 'Output/test_27.clang.trans.opt.bc'
source_filename = "Output/test_27.clang.bc"
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
module asm "  .globl sub_100;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_100(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [5 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x212 = internal constant %0 <{ [5 x i8] c"%lu\0A\00" }>, align 64

; Function Attrs: noinline
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
  %R14 = getelementptr %RegState, %RegState* %0, i64 0, i32 70, !mcsema_real_eip !2
  %R15 = getelementptr %RegState, %RegState* %0, i64 0, i32 71, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %R15_val.3 = load i64, i64* %R15, align 8, !mcsema_real_eip !4
  %3 = add i64 %RSP_val.1, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %R15_val.3, i64* %4, align 8, !mcsema_real_eip !4
  %R14_val.5 = load i64, i64* %R14, align 8, !mcsema_real_eip !5
  %5 = add i64 %RSP_val.1, -24
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  store i64 %R14_val.5, i64* %6, align 8, !mcsema_real_eip !5
  %RBX_val.7 = load i64, i64* %XBX, align 8, !mcsema_real_eip !6
  %7 = add i64 %RSP_val.1, -32
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !6
  store i64 %RBX_val.7, i64* %8, align 8, !mcsema_real_eip !6
  %9 = add i64 %RSP_val.1, -136
  %10 = xor i64 %9, %7, !mcsema_real_eip !7
  %11 = and i64 %10, 16, !mcsema_real_eip !7
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !7
  store i1 %12, i1* %AF, align 1, !mcsema_real_eip !7
  %13 = trunc i64 %9 to i8, !mcsema_real_eip !7
  %14 = tail call i8 @llvm.ctpop.i8(i8 %13), !mcsema_real_eip !7
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  store i1 %16, i1* %PF, align 1, !mcsema_real_eip !7
  %17 = icmp eq i64 %9, 0, !mcsema_real_eip !7
  store i1 %17, i1* %ZF, align 1, !mcsema_real_eip !7
  %18 = icmp slt i64 %9, 0
  store i1 %18, i1* %SF, align 1, !mcsema_real_eip !7
  %19 = icmp ult i64 %7, 104, !mcsema_real_eip !7
  store i1 %19, i1* %CF, align 1, !mcsema_real_eip !7
  %20 = and i64 %10, %7, !mcsema_real_eip !7
  %21 = icmp slt i64 %20, 0
  store i1 %21, i1* %OF, align 1, !mcsema_real_eip !7
  store i64 %9, i64* %XSP, align 8, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %22 = add i64 %RBP_val.10, 48, !mcsema_real_eip !8
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !8
  %24 = load i64, i64* %23, align 8, !mcsema_real_eip !8
  store i64 %24, i64* %XAX, align 8, !mcsema_real_eip !8
  %25 = add i64 %RBP_val.10, 40, !mcsema_real_eip !9
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !9
  %27 = load i64, i64* %26, align 8, !mcsema_real_eip !9
  store i64 %27, i64* %R10, align 8, !mcsema_real_eip !9
  %28 = add i64 %RBP_val.10, 24, !mcsema_real_eip !10
  store i64 %28, i64* %R11, align 8, !mcsema_real_eip !10
  %29 = add i64 %RBP_val.10, 16, !mcsema_real_eip !11
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !11
  %31 = load i32, i32* %30, align 4, !mcsema_real_eip !11
  %32 = zext i32 %31 to i64, !mcsema_real_eip !11
  store i64 %32, i64* %XBX, align 8, !mcsema_real_eip !11
  %33 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> <i64 12, i64 12>, <2 x i64>* %33, align 8
  %34 = add i64 %RBP_val.10, -56, !mcsema_real_eip !12
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !12
  %RDI_val.17 = load i64, i64* %XDI, align 8, !mcsema_real_eip !12
  store i64 %RDI_val.17, i64* %35, align 8, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %36 = add i64 %RBP_val.18, -48, !mcsema_real_eip !13
  %ESI.19 = bitcast i64* %XSI to i32*, !mcsema_real_eip !13
  %ESI_val.20 = load i32, i32* %ESI.19, align 4, !mcsema_real_eip !13
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !13
  store i32 %ESI_val.20, i32* %37, align 4, !mcsema_real_eip !13
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %38 = add i64 %RBP_val.21, -56, !mcsema_real_eip !14
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !14
  %40 = load i64, i64* %39, align 8, !mcsema_real_eip !14
  store i64 %40, i64* %XDI, align 8, !mcsema_real_eip !14
  %41 = add i64 %RBP_val.21, -40, !mcsema_real_eip !15
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !15
  store i64 %40, i64* %42, align 8, !mcsema_real_eip !15
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %43 = add i64 %RBP_val.24, -48, !mcsema_real_eip !16
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !16
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !16
  %46 = zext i32 %45 to i64, !mcsema_real_eip !16
  store i64 %46, i64* %XSI, align 8, !mcsema_real_eip !16
  %47 = add i64 %RBP_val.24, -32, !mcsema_real_eip !17
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !17
  store i32 %45, i32* %48, align 4, !mcsema_real_eip !17
  %RBP_val.28 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  %49 = add i64 %RBP_val.28, -64, !mcsema_real_eip !18
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !18
  %RDX_val.29 = load i64, i64* %XDX, align 8, !mcsema_real_eip !18
  store i64 %RDX_val.29, i64* %50, align 8, !mcsema_real_eip !18
  %RBP_val.30 = load i64, i64* %XBP, align 8, !mcsema_real_eip !19
  %51 = add i64 %RBP_val.30, -72, !mcsema_real_eip !19
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !19
  %RCX_val.31 = load i64, i64* %XCX, align 8, !mcsema_real_eip !19
  store i64 %RCX_val.31, i64* %52, align 8, !mcsema_real_eip !19
  %RBP_val.32 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %53 = add i64 %RBP_val.32, -76, !mcsema_real_eip !20
  %R8D.33 = bitcast i64* %R8 to i32*, !mcsema_real_eip !20
  %R8D_val.34 = load i32, i32* %R8D.33, align 4, !mcsema_real_eip !20
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !20
  store i32 %R8D_val.34, i32* %54, align 4, !mcsema_real_eip !20
  %RBP_val.35 = load i64, i64* %XBP, align 8, !mcsema_real_eip !21
  %55 = add i64 %RBP_val.35, -80, !mcsema_real_eip !21
  %R9D.36 = bitcast i64* %R9 to i32*, !mcsema_real_eip !21
  %R9D_val.37 = load i32, i32* %R9D.36, align 4, !mcsema_real_eip !21
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !21
  store i32 %R9D_val.37, i32* %56, align 4, !mcsema_real_eip !21
  %RBP_val.38 = load i64, i64* %XBP, align 8, !mcsema_real_eip !22
  %57 = add i64 %RBP_val.38, -84, !mcsema_real_eip !22
  %EBX.39 = bitcast i64* %XBX to i32*, !mcsema_real_eip !22
  %EBX_val.40 = load i32, i32* %EBX.39, align 4, !mcsema_real_eip !22
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !22
  store i32 %EBX_val.40, i32* %58, align 4, !mcsema_real_eip !22
  %RBP_val.41 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %59 = add i64 %RBP_val.41, -96, !mcsema_real_eip !23
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !23
  %R10_val.42 = load i64, i64* %R10, align 8, !mcsema_real_eip !23
  store i64 %R10_val.42, i64* %60, align 8, !mcsema_real_eip !23
  %RBP_val.43 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %61 = add i64 %RBP_val.43, -104, !mcsema_real_eip !24
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !24
  %RAX_val.44 = load i64, i64* %XAX, align 8, !mcsema_real_eip !24
  store i64 %RAX_val.44, i64* %62, align 8, !mcsema_real_eip !24
  %R15_val.45 = load i64, i64* %R15, align 8, !mcsema_real_eip !25
  store i64 %R15_val.45, i64* %XDI, align 8, !mcsema_real_eip !25
  %RBP_val.46 = load i64, i64* %XBP, align 8, !mcsema_real_eip !26
  %63 = add i64 %RBP_val.46, -120, !mcsema_real_eip !26
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !26
  %R11_val.47 = load i64, i64* %R11, align 8, !mcsema_real_eip !26
  store i64 %R11_val.47, i64* %64, align 8, !mcsema_real_eip !26
  %RDI_val.48 = load i64, i64* %XDI, align 8, !mcsema_real_eip !27
  %RSP_val.49 = load i64, i64* %XSP, align 8, !mcsema_real_eip !27
  %65 = add i64 %RSP_val.49, -8
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !27
  store i64 -2415393069852865332, i64* %66, align 8, !mcsema_real_eip !27
  store i64 %65, i64* %XSP, align 8, !mcsema_real_eip !27
  %67 = tail call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.48), !mcsema_real_eip !27
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !27
  %RBP_val.50 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %68 = add i64 %RBP_val.50, -112, !mcsema_real_eip !28
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !28
  store i64 %67, i64* %69, align 8, !mcsema_real_eip !28
  %RBP_val.52 = load i64, i64* %XBP, align 8, !mcsema_real_eip !29
  %70 = add i64 %RBP_val.52, -40, !mcsema_real_eip !29
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !29
  %72 = load i32, i32* %71, align 4, !mcsema_real_eip !29
  %73 = zext i32 %72 to i64, !mcsema_real_eip !29
  store i64 %73, i64* %XSI, align 8, !mcsema_real_eip !29
  %74 = add i64 %RBP_val.52, -64, !mcsema_real_eip !30
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !30
  %76 = load i64, i64* %75, align 8, !mcsema_real_eip !30
  store i64 %76, i64* %XAX, align 8, !mcsema_real_eip !30
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !31
  %78 = load i32, i32* %77, align 4, !mcsema_real_eip !31
  %79 = add i32 %72, %78, !mcsema_real_eip !31
  %80 = xor i32 %79, %78, !mcsema_real_eip !31
  %81 = xor i32 %80, %72, !mcsema_real_eip !31
  %82 = and i32 %81, 16, !mcsema_real_eip !31
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !31
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !31
  %84 = icmp slt i32 %79, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !31
  %85 = icmp eq i32 %79, 0, !mcsema_real_eip !31
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !31
  %86 = xor i32 %78, -2147483648, !mcsema_real_eip !31
  %87 = xor i32 %86, %72, !mcsema_real_eip !31
  %88 = and i32 %80, %87, !mcsema_real_eip !31
  %89 = icmp slt i32 %88, 0
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !31
  %90 = trunc i32 %79 to i8, !mcsema_real_eip !31
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !31
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !31
  %94 = icmp ult i32 %79, %78, !mcsema_real_eip !31
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !31
  %95 = zext i32 %79 to i64, !mcsema_real_eip !31
  store i64 %95, i64* %XSI, align 8, !mcsema_real_eip !31
  %96 = add i64 %RBP_val.52, -72, !mcsema_real_eip !32
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !32
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !32
  store i64 %98, i64* %XAX, align 8, !mcsema_real_eip !32
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !33
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !33
  %101 = add i32 %79, %100, !mcsema_real_eip !33
  %102 = xor i32 %101, %100, !mcsema_real_eip !33
  %103 = xor i32 %102, %79, !mcsema_real_eip !33
  %104 = and i32 %103, 16, !mcsema_real_eip !33
  %105 = icmp ne i32 %104, 0, !mcsema_real_eip !33
  store i1 %105, i1* %AF, align 1, !mcsema_real_eip !33
  %106 = icmp slt i32 %101, 0
  store i1 %106, i1* %SF, align 1, !mcsema_real_eip !33
  %107 = icmp eq i32 %101, 0, !mcsema_real_eip !33
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !33
  %108 = xor i32 %100, -2147483648, !mcsema_real_eip !33
  %109 = xor i32 %108, %79, !mcsema_real_eip !33
  %110 = and i32 %102, %109, !mcsema_real_eip !33
  %111 = icmp slt i32 %110, 0
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !33
  %112 = trunc i32 %101 to i8, !mcsema_real_eip !33
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !33
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF, align 1, !mcsema_real_eip !33
  %116 = icmp ult i32 %101, %100, !mcsema_real_eip !33
  store i1 %116, i1* %CF, align 1, !mcsema_real_eip !33
  %117 = zext i32 %101 to i64, !mcsema_real_eip !33
  store i64 %117, i64* %XSI, align 8, !mcsema_real_eip !33
  %118 = add i64 %RBP_val.52, -120, !mcsema_real_eip !34
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !34
  %120 = load i64, i64* %119, align 8, !mcsema_real_eip !34
  store i64 %120, i64* %XAX, align 8, !mcsema_real_eip !34
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !35
  %122 = load i32, i32* %121, align 4, !mcsema_real_eip !35
  %123 = zext i32 %122 to i64, !mcsema_real_eip !35
  store i64 %123, i64* %R8, align 8, !mcsema_real_eip !35
  %124 = add i64 %RBP_val.52, -96, !mcsema_real_eip !36
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !36
  %126 = load i64, i64* %125, align 8, !mcsema_real_eip !36
  store i64 %126, i64* %XCX, align 8, !mcsema_real_eip !36
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !37
  %128 = load i32, i32* %127, align 4, !mcsema_real_eip !37
  %129 = add i32 %122, %128, !mcsema_real_eip !37
  %130 = xor i32 %129, %128, !mcsema_real_eip !37
  %131 = xor i32 %130, %122, !mcsema_real_eip !37
  %132 = and i32 %131, 16, !mcsema_real_eip !37
  %133 = icmp ne i32 %132, 0, !mcsema_real_eip !37
  store i1 %133, i1* %AF, align 1, !mcsema_real_eip !37
  %134 = icmp slt i32 %129, 0
  store i1 %134, i1* %SF, align 1, !mcsema_real_eip !37
  %135 = icmp eq i32 %129, 0, !mcsema_real_eip !37
  store i1 %135, i1* %ZF, align 1, !mcsema_real_eip !37
  %136 = xor i32 %128, -2147483648, !mcsema_real_eip !37
  %137 = xor i32 %136, %122, !mcsema_real_eip !37
  %138 = and i32 %130, %137, !mcsema_real_eip !37
  %139 = icmp slt i32 %138, 0
  store i1 %139, i1* %OF, align 1, !mcsema_real_eip !37
  %140 = trunc i32 %129 to i8, !mcsema_real_eip !37
  %141 = tail call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !37
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF, align 1, !mcsema_real_eip !37
  %144 = icmp ult i32 %129, %128, !mcsema_real_eip !37
  store i1 %144, i1* %CF, align 1, !mcsema_real_eip !37
  %145 = zext i32 %129 to i64, !mcsema_real_eip !37
  store i64 %145, i64* %R8, align 8, !mcsema_real_eip !37
  %146 = add i64 %RBP_val.52, -104, !mcsema_real_eip !38
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !38
  %148 = load i64, i64* %147, align 8, !mcsema_real_eip !38
  store i64 %148, i64* %XCX, align 8, !mcsema_real_eip !38
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !39
  %150 = load i32, i32* %149, align 4, !mcsema_real_eip !39
  %151 = add i32 %129, %150, !mcsema_real_eip !39
  %152 = zext i32 %151 to i64, !mcsema_real_eip !39
  store i64 %152, i64* %R8, align 8, !mcsema_real_eip !39
  %153 = add i32 %151, %101, !mcsema_real_eip !40
  %154 = xor i32 %153, %101, !mcsema_real_eip !40
  %155 = xor i32 %154, %151, !mcsema_real_eip !40
  %156 = and i32 %155, 16, !mcsema_real_eip !40
  %157 = icmp ne i32 %156, 0, !mcsema_real_eip !40
  store i1 %157, i1* %AF, align 1, !mcsema_real_eip !40
  %158 = icmp slt i32 %153, 0
  store i1 %158, i1* %SF, align 1, !mcsema_real_eip !40
  %159 = icmp eq i32 %153, 0, !mcsema_real_eip !40
  store i1 %159, i1* %ZF, align 1, !mcsema_real_eip !40
  %160 = xor i32 %101, -2147483648, !mcsema_real_eip !40
  %161 = xor i32 %160, %151, !mcsema_real_eip !40
  %162 = and i32 %154, %161, !mcsema_real_eip !40
  %163 = icmp slt i32 %162, 0
  store i1 %163, i1* %OF, align 1, !mcsema_real_eip !40
  %164 = trunc i32 %153 to i8, !mcsema_real_eip !40
  %165 = tail call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !40
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  store i1 %167, i1* %PF, align 1, !mcsema_real_eip !40
  %168 = icmp ult i32 %153, %101, !mcsema_real_eip !40
  store i1 %168, i1* %CF, align 1, !mcsema_real_eip !40
  %169 = zext i32 %153 to i64, !mcsema_real_eip !40
  store i64 %169, i64* %XSI, align 8, !mcsema_real_eip !40
  %170 = add i64 %RBP_val.52, -112, !mcsema_real_eip !41
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !41
  %172 = load i64, i64* %171, align 8, !mcsema_real_eip !41
  store i64 %172, i64* %XCX, align 8, !mcsema_real_eip !41
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !42
  store i32 %153, i32* %173, align 4, !mcsema_real_eip !42
  %RBP_val.79 = load i64, i64* %XBP, align 8, !mcsema_real_eip !43
  %174 = add i64 %RBP_val.79, -36, !mcsema_real_eip !43
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !43
  %176 = load i32, i32* %175, align 4, !mcsema_real_eip !43
  %177 = zext i32 %176 to i64, !mcsema_real_eip !43
  store i64 %177, i64* %XSI, align 8, !mcsema_real_eip !43
  %178 = add i64 %RBP_val.79, -64, !mcsema_real_eip !44
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !44
  %180 = load i64, i64* %179, align 8, !mcsema_real_eip !44
  store i64 %180, i64* %XCX, align 8, !mcsema_real_eip !44
  %181 = add i64 %180, 4, !mcsema_real_eip !45
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !45
  %183 = load i32, i32* %182, align 4, !mcsema_real_eip !45
  %184 = add i32 %176, %183, !mcsema_real_eip !45
  %185 = xor i32 %184, %183, !mcsema_real_eip !45
  %186 = xor i32 %185, %176, !mcsema_real_eip !45
  %187 = and i32 %186, 16, !mcsema_real_eip !45
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !45
  store i1 %188, i1* %AF, align 1, !mcsema_real_eip !45
  %189 = icmp slt i32 %184, 0
  store i1 %189, i1* %SF, align 1, !mcsema_real_eip !45
  %190 = icmp eq i32 %184, 0, !mcsema_real_eip !45
  store i1 %190, i1* %ZF, align 1, !mcsema_real_eip !45
  %191 = xor i32 %183, -2147483648, !mcsema_real_eip !45
  %192 = xor i32 %191, %176, !mcsema_real_eip !45
  %193 = and i32 %185, %192, !mcsema_real_eip !45
  %194 = icmp slt i32 %193, 0
  store i1 %194, i1* %OF, align 1, !mcsema_real_eip !45
  %195 = trunc i32 %184 to i8, !mcsema_real_eip !45
  %196 = tail call i8 @llvm.ctpop.i8(i8 %195), !mcsema_real_eip !45
  %197 = and i8 %196, 1
  %198 = icmp eq i8 %197, 0
  store i1 %198, i1* %PF, align 1, !mcsema_real_eip !45
  %199 = icmp ult i32 %184, %183, !mcsema_real_eip !45
  store i1 %199, i1* %CF, align 1, !mcsema_real_eip !45
  %200 = zext i32 %184 to i64, !mcsema_real_eip !45
  store i64 %200, i64* %XSI, align 8, !mcsema_real_eip !45
  %201 = add i64 %RBP_val.79, -72, !mcsema_real_eip !46
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !46
  %203 = load i64, i64* %202, align 8, !mcsema_real_eip !46
  store i64 %203, i64* %XCX, align 8, !mcsema_real_eip !46
  %204 = add i64 %203, 4, !mcsema_real_eip !47
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !47
  %206 = load i32, i32* %205, align 4, !mcsema_real_eip !47
  %207 = add i32 %184, %206, !mcsema_real_eip !47
  %208 = xor i32 %207, %206, !mcsema_real_eip !47
  %209 = xor i32 %208, %184, !mcsema_real_eip !47
  %210 = and i32 %209, 16, !mcsema_real_eip !47
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !47
  store i1 %211, i1* %AF, align 1, !mcsema_real_eip !47
  %212 = icmp slt i32 %207, 0
  store i1 %212, i1* %SF, align 1, !mcsema_real_eip !47
  %213 = icmp eq i32 %207, 0, !mcsema_real_eip !47
  store i1 %213, i1* %ZF, align 1, !mcsema_real_eip !47
  %214 = xor i32 %206, -2147483648, !mcsema_real_eip !47
  %215 = xor i32 %214, %184, !mcsema_real_eip !47
  %216 = and i32 %208, %215, !mcsema_real_eip !47
  %217 = icmp slt i32 %216, 0
  store i1 %217, i1* %OF, align 1, !mcsema_real_eip !47
  %218 = trunc i32 %207 to i8, !mcsema_real_eip !47
  %219 = tail call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !47
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !47
  %222 = icmp ult i32 %207, %206, !mcsema_real_eip !47
  store i1 %222, i1* %CF, align 1, !mcsema_real_eip !47
  %223 = zext i32 %207 to i64, !mcsema_real_eip !47
  store i64 %223, i64* %XSI, align 8, !mcsema_real_eip !47
  %RAX_val.88 = load i64, i64* %XAX, align 8, !mcsema_real_eip !48
  %224 = add i64 %RAX_val.88, 4, !mcsema_real_eip !48
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !48
  %226 = load i32, i32* %225, align 4, !mcsema_real_eip !48
  %227 = zext i32 %226 to i64, !mcsema_real_eip !48
  store i64 %227, i64* %R8, align 8, !mcsema_real_eip !48
  %228 = add i64 %RBP_val.79, -96, !mcsema_real_eip !49
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !49
  %230 = load i64, i64* %229, align 8, !mcsema_real_eip !49
  store i64 %230, i64* %XCX, align 8, !mcsema_real_eip !49
  %231 = add i64 %230, 4, !mcsema_real_eip !50
  %232 = inttoptr i64 %231 to i32*, !mcsema_real_eip !50
  %233 = load i32, i32* %232, align 4, !mcsema_real_eip !50
  %234 = add i32 %226, %233, !mcsema_real_eip !50
  %235 = xor i32 %234, %233, !mcsema_real_eip !50
  %236 = xor i32 %235, %226, !mcsema_real_eip !50
  %237 = and i32 %236, 16, !mcsema_real_eip !50
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !50
  store i1 %238, i1* %AF, align 1, !mcsema_real_eip !50
  %239 = icmp slt i32 %234, 0
  store i1 %239, i1* %SF, align 1, !mcsema_real_eip !50
  %240 = icmp eq i32 %234, 0, !mcsema_real_eip !50
  store i1 %240, i1* %ZF, align 1, !mcsema_real_eip !50
  %241 = xor i32 %233, -2147483648, !mcsema_real_eip !50
  %242 = xor i32 %241, %226, !mcsema_real_eip !50
  %243 = and i32 %235, %242, !mcsema_real_eip !50
  %244 = icmp slt i32 %243, 0
  store i1 %244, i1* %OF, align 1, !mcsema_real_eip !50
  %245 = trunc i32 %234 to i8, !mcsema_real_eip !50
  %246 = tail call i8 @llvm.ctpop.i8(i8 %245), !mcsema_real_eip !50
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  store i1 %248, i1* %PF, align 1, !mcsema_real_eip !50
  %249 = icmp ult i32 %234, %233, !mcsema_real_eip !50
  store i1 %249, i1* %CF, align 1, !mcsema_real_eip !50
  %250 = zext i32 %234 to i64, !mcsema_real_eip !50
  store i64 %250, i64* %R8, align 8, !mcsema_real_eip !50
  %251 = add i64 %RBP_val.79, -104, !mcsema_real_eip !51
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !51
  %253 = load i64, i64* %252, align 8, !mcsema_real_eip !51
  store i64 %253, i64* %XCX, align 8, !mcsema_real_eip !51
  %254 = add i64 %253, 4, !mcsema_real_eip !52
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !52
  %256 = load i32, i32* %255, align 4, !mcsema_real_eip !52
  %257 = add i32 %234, %256, !mcsema_real_eip !52
  %258 = zext i32 %257 to i64, !mcsema_real_eip !52
  store i64 %258, i64* %R8, align 8, !mcsema_real_eip !52
  %259 = add i32 %257, %207, !mcsema_real_eip !53
  %260 = xor i32 %259, %207, !mcsema_real_eip !53
  %261 = xor i32 %260, %257, !mcsema_real_eip !53
  %262 = and i32 %261, 16, !mcsema_real_eip !53
  %263 = icmp ne i32 %262, 0, !mcsema_real_eip !53
  store i1 %263, i1* %AF, align 1, !mcsema_real_eip !53
  %264 = icmp slt i32 %259, 0
  store i1 %264, i1* %SF, align 1, !mcsema_real_eip !53
  %265 = icmp eq i32 %259, 0, !mcsema_real_eip !53
  store i1 %265, i1* %ZF, align 1, !mcsema_real_eip !53
  %266 = xor i32 %207, -2147483648, !mcsema_real_eip !53
  %267 = xor i32 %266, %257, !mcsema_real_eip !53
  %268 = and i32 %260, %267, !mcsema_real_eip !53
  %269 = icmp slt i32 %268, 0
  store i1 %269, i1* %OF, align 1, !mcsema_real_eip !53
  %270 = trunc i32 %259 to i8, !mcsema_real_eip !53
  %271 = tail call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !53
  %272 = and i8 %271, 1
  %273 = icmp eq i8 %272, 0
  store i1 %273, i1* %PF, align 1, !mcsema_real_eip !53
  %274 = icmp ult i32 %259, %207, !mcsema_real_eip !53
  store i1 %274, i1* %CF, align 1, !mcsema_real_eip !53
  %275 = zext i32 %259 to i64, !mcsema_real_eip !53
  store i64 %275, i64* %XSI, align 8, !mcsema_real_eip !53
  %276 = add i64 %RBP_val.79, -112, !mcsema_real_eip !54
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !54
  %278 = load i64, i64* %277, align 8, !mcsema_real_eip !54
  store i64 %278, i64* %XCX, align 8, !mcsema_real_eip !54
  %279 = add i64 %278, 4, !mcsema_real_eip !55
  %280 = inttoptr i64 %279 to i32*, !mcsema_real_eip !55
  store i32 %259, i32* %280, align 4, !mcsema_real_eip !55
  %RBP_val.105 = load i64, i64* %XBP, align 8, !mcsema_real_eip !56
  %281 = add i64 %RBP_val.105, -32, !mcsema_real_eip !56
  %282 = inttoptr i64 %281 to i32*, !mcsema_real_eip !56
  %283 = load i32, i32* %282, align 4, !mcsema_real_eip !56
  %284 = zext i32 %283 to i64, !mcsema_real_eip !56
  store i64 %284, i64* %XSI, align 8, !mcsema_real_eip !56
  %285 = add i64 %RBP_val.105, -64, !mcsema_real_eip !57
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !57
  %287 = load i64, i64* %286, align 8, !mcsema_real_eip !57
  store i64 %287, i64* %XCX, align 8, !mcsema_real_eip !57
  %288 = add i64 %287, 8, !mcsema_real_eip !58
  %289 = inttoptr i64 %288 to i32*, !mcsema_real_eip !58
  %290 = load i32, i32* %289, align 4, !mcsema_real_eip !58
  %291 = add i32 %283, %290, !mcsema_real_eip !58
  %292 = xor i32 %291, %290, !mcsema_real_eip !58
  %293 = xor i32 %292, %283, !mcsema_real_eip !58
  %294 = and i32 %293, 16, !mcsema_real_eip !58
  %295 = icmp ne i32 %294, 0, !mcsema_real_eip !58
  store i1 %295, i1* %AF, align 1, !mcsema_real_eip !58
  %296 = icmp slt i32 %291, 0
  store i1 %296, i1* %SF, align 1, !mcsema_real_eip !58
  %297 = icmp eq i32 %291, 0, !mcsema_real_eip !58
  store i1 %297, i1* %ZF, align 1, !mcsema_real_eip !58
  %298 = xor i32 %290, -2147483648, !mcsema_real_eip !58
  %299 = xor i32 %298, %283, !mcsema_real_eip !58
  %300 = and i32 %292, %299, !mcsema_real_eip !58
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF, align 1, !mcsema_real_eip !58
  %302 = trunc i32 %291 to i8, !mcsema_real_eip !58
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !58
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF, align 1, !mcsema_real_eip !58
  %306 = icmp ult i32 %291, %290, !mcsema_real_eip !58
  store i1 %306, i1* %CF, align 1, !mcsema_real_eip !58
  %307 = zext i32 %291 to i64, !mcsema_real_eip !58
  store i64 %307, i64* %XSI, align 8, !mcsema_real_eip !58
  %308 = add i64 %RBP_val.105, -72, !mcsema_real_eip !59
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !59
  %310 = load i64, i64* %309, align 8, !mcsema_real_eip !59
  store i64 %310, i64* %XCX, align 8, !mcsema_real_eip !59
  %311 = add i64 %310, 8, !mcsema_real_eip !60
  %312 = inttoptr i64 %311 to i32*, !mcsema_real_eip !60
  %313 = load i32, i32* %312, align 4, !mcsema_real_eip !60
  %314 = add i32 %291, %313, !mcsema_real_eip !60
  %315 = xor i32 %314, %313, !mcsema_real_eip !60
  %316 = xor i32 %315, %291, !mcsema_real_eip !60
  %317 = and i32 %316, 16, !mcsema_real_eip !60
  %318 = icmp ne i32 %317, 0, !mcsema_real_eip !60
  store i1 %318, i1* %AF, align 1, !mcsema_real_eip !60
  %319 = icmp slt i32 %314, 0
  store i1 %319, i1* %SF, align 1, !mcsema_real_eip !60
  %320 = icmp eq i32 %314, 0, !mcsema_real_eip !60
  store i1 %320, i1* %ZF, align 1, !mcsema_real_eip !60
  %321 = xor i32 %313, -2147483648, !mcsema_real_eip !60
  %322 = xor i32 %321, %291, !mcsema_real_eip !60
  %323 = and i32 %315, %322, !mcsema_real_eip !60
  %324 = icmp slt i32 %323, 0
  store i1 %324, i1* %OF, align 1, !mcsema_real_eip !60
  %325 = trunc i32 %314 to i8, !mcsema_real_eip !60
  %326 = tail call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !60
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  store i1 %328, i1* %PF, align 1, !mcsema_real_eip !60
  %329 = icmp ult i32 %314, %313, !mcsema_real_eip !60
  store i1 %329, i1* %CF, align 1, !mcsema_real_eip !60
  %330 = zext i32 %314 to i64, !mcsema_real_eip !60
  store i64 %330, i64* %XSI, align 8, !mcsema_real_eip !60
  %RAX_val.114 = load i64, i64* %XAX, align 8, !mcsema_real_eip !61
  %331 = add i64 %RAX_val.114, 8, !mcsema_real_eip !61
  %332 = inttoptr i64 %331 to i32*, !mcsema_real_eip !61
  %333 = load i32, i32* %332, align 4, !mcsema_real_eip !61
  %334 = zext i32 %333 to i64, !mcsema_real_eip !61
  store i64 %334, i64* %R8, align 8, !mcsema_real_eip !61
  %335 = add i64 %RBP_val.105, -96, !mcsema_real_eip !62
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !62
  %337 = load i64, i64* %336, align 8, !mcsema_real_eip !62
  store i64 %337, i64* %XCX, align 8, !mcsema_real_eip !62
  %338 = add i64 %337, 8, !mcsema_real_eip !63
  %339 = inttoptr i64 %338 to i32*, !mcsema_real_eip !63
  %340 = load i32, i32* %339, align 4, !mcsema_real_eip !63
  %341 = add i32 %333, %340, !mcsema_real_eip !63
  %342 = xor i32 %341, %340, !mcsema_real_eip !63
  %343 = xor i32 %342, %333, !mcsema_real_eip !63
  %344 = and i32 %343, 16, !mcsema_real_eip !63
  %345 = icmp ne i32 %344, 0, !mcsema_real_eip !63
  store i1 %345, i1* %AF, align 1, !mcsema_real_eip !63
  %346 = icmp slt i32 %341, 0
  store i1 %346, i1* %SF, align 1, !mcsema_real_eip !63
  %347 = icmp eq i32 %341, 0, !mcsema_real_eip !63
  store i1 %347, i1* %ZF, align 1, !mcsema_real_eip !63
  %348 = xor i32 %340, -2147483648, !mcsema_real_eip !63
  %349 = xor i32 %348, %333, !mcsema_real_eip !63
  %350 = and i32 %342, %349, !mcsema_real_eip !63
  %351 = icmp slt i32 %350, 0
  store i1 %351, i1* %OF, align 1, !mcsema_real_eip !63
  %352 = trunc i32 %341 to i8, !mcsema_real_eip !63
  %353 = tail call i8 @llvm.ctpop.i8(i8 %352), !mcsema_real_eip !63
  %354 = and i8 %353, 1
  %355 = icmp eq i8 %354, 0
  store i1 %355, i1* %PF, align 1, !mcsema_real_eip !63
  %356 = icmp ult i32 %341, %340, !mcsema_real_eip !63
  store i1 %356, i1* %CF, align 1, !mcsema_real_eip !63
  %357 = zext i32 %341 to i64, !mcsema_real_eip !63
  store i64 %357, i64* %R8, align 8, !mcsema_real_eip !63
  %358 = add i64 %RBP_val.105, -104, !mcsema_real_eip !64
  %359 = inttoptr i64 %358 to i64*, !mcsema_real_eip !64
  %360 = load i64, i64* %359, align 8, !mcsema_real_eip !64
  store i64 %360, i64* %XCX, align 8, !mcsema_real_eip !64
  %361 = add i64 %360, 8, !mcsema_real_eip !65
  %362 = inttoptr i64 %361 to i32*, !mcsema_real_eip !65
  %363 = load i32, i32* %362, align 4, !mcsema_real_eip !65
  %364 = add i32 %341, %363, !mcsema_real_eip !65
  %365 = zext i32 %364 to i64, !mcsema_real_eip !65
  store i64 %365, i64* %R8, align 8, !mcsema_real_eip !65
  %366 = add i32 %364, %314, !mcsema_real_eip !66
  %367 = xor i32 %366, %314, !mcsema_real_eip !66
  %368 = xor i32 %367, %364, !mcsema_real_eip !66
  %369 = and i32 %368, 16, !mcsema_real_eip !66
  %370 = icmp ne i32 %369, 0, !mcsema_real_eip !66
  store i1 %370, i1* %AF, align 1, !mcsema_real_eip !66
  %371 = icmp slt i32 %366, 0
  store i1 %371, i1* %SF, align 1, !mcsema_real_eip !66
  %372 = icmp eq i32 %366, 0, !mcsema_real_eip !66
  store i1 %372, i1* %ZF, align 1, !mcsema_real_eip !66
  %373 = xor i32 %314, -2147483648, !mcsema_real_eip !66
  %374 = xor i32 %373, %364, !mcsema_real_eip !66
  %375 = and i32 %367, %374, !mcsema_real_eip !66
  %376 = icmp slt i32 %375, 0
  store i1 %376, i1* %OF, align 1, !mcsema_real_eip !66
  %377 = trunc i32 %366 to i8, !mcsema_real_eip !66
  %378 = tail call i8 @llvm.ctpop.i8(i8 %377), !mcsema_real_eip !66
  %379 = and i8 %378, 1
  %380 = icmp eq i8 %379, 0
  store i1 %380, i1* %PF, align 1, !mcsema_real_eip !66
  %381 = icmp ult i32 %366, %314, !mcsema_real_eip !66
  store i1 %381, i1* %CF, align 1, !mcsema_real_eip !66
  %382 = zext i32 %366 to i64, !mcsema_real_eip !66
  store i64 %382, i64* %XSI, align 8, !mcsema_real_eip !66
  %383 = add i64 %RBP_val.105, -112, !mcsema_real_eip !67
  %384 = inttoptr i64 %383 to i64*, !mcsema_real_eip !67
  %385 = load i64, i64* %384, align 8, !mcsema_real_eip !67
  store i64 %385, i64* %XCX, align 8, !mcsema_real_eip !67
  %386 = add i64 %385, 8, !mcsema_real_eip !68
  %387 = inttoptr i64 %386 to i32*, !mcsema_real_eip !68
  store i32 %366, i32* %387, align 4, !mcsema_real_eip !68
  %RBP_val.131 = load i64, i64* %XBP, align 8, !mcsema_real_eip !69
  %388 = add i64 %RBP_val.131, -112, !mcsema_real_eip !69
  %389 = inttoptr i64 %388 to i64*, !mcsema_real_eip !69
  %390 = load i64, i64* %389, align 8, !mcsema_real_eip !69
  store i64 %390, i64* %XAX, align 8, !mcsema_real_eip !69
  %RSP_val.132 = load i64, i64* %XSP, align 8, !mcsema_real_eip !70
  %391 = add i64 %RSP_val.132, 104, !mcsema_real_eip !70
  %392 = xor i64 %391, %RSP_val.132, !mcsema_real_eip !70
  %393 = and i64 %392, 16, !mcsema_real_eip !70
  %394 = icmp ne i64 %393, 0, !mcsema_real_eip !70
  store i1 %394, i1* %AF, align 1, !mcsema_real_eip !70
  %395 = icmp slt i64 %391, 0
  store i1 %395, i1* %SF, align 1, !mcsema_real_eip !70
  %396 = icmp eq i64 %391, 0, !mcsema_real_eip !70
  store i1 %396, i1* %ZF, align 1, !mcsema_real_eip !70
  %397 = xor i64 %RSP_val.132, -9223372036854775808, !mcsema_real_eip !70
  %398 = and i64 %392, %397, !mcsema_real_eip !70
  %399 = icmp slt i64 %398, 0
  store i1 %399, i1* %OF, align 1, !mcsema_real_eip !70
  %400 = trunc i64 %391 to i8, !mcsema_real_eip !70
  %401 = tail call i8 @llvm.ctpop.i8(i8 %400), !mcsema_real_eip !70
  %402 = and i8 %401, 1
  %403 = icmp eq i8 %402, 0
  store i1 %403, i1* %PF, align 1, !mcsema_real_eip !70
  %404 = icmp ugt i64 %RSP_val.132, -105
  store i1 %404, i1* %CF, align 1, !mcsema_real_eip !70
  store i64 %391, i64* %XSP, align 8, !mcsema_real_eip !70
  %405 = inttoptr i64 %391 to i64*, !mcsema_real_eip !71
  %406 = load i64, i64* %405, align 8, !mcsema_real_eip !71
  store i64 %406, i64* %XBX, align 8, !mcsema_real_eip !71
  %407 = add i64 %RSP_val.132, 112, !mcsema_real_eip !71
  store i64 %407, i64* %XSP, align 8, !mcsema_real_eip !71
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !72
  %409 = load i64, i64* %408, align 8, !mcsema_real_eip !72
  store i64 %409, i64* %R14, align 8, !mcsema_real_eip !72
  %410 = add i64 %RSP_val.132, 120, !mcsema_real_eip !72
  store i64 %410, i64* %XSP, align 8, !mcsema_real_eip !72
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !73
  %412 = load i64, i64* %411, align 8, !mcsema_real_eip !73
  store i64 %412, i64* %R15, align 8, !mcsema_real_eip !73
  %413 = add i64 %RSP_val.132, 128, !mcsema_real_eip !73
  store i64 %413, i64* %XSP, align 8, !mcsema_real_eip !73
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !74
  %415 = load i64, i64* %414, align 8, !mcsema_real_eip !74
  store i64 %415, i64* %XBP, align 8, !mcsema_real_eip !74
  %416 = add i64 %RSP_val.132, 136, !mcsema_real_eip !74
  store i64 %416, i64* %XSP, align 8, !mcsema_real_eip !74
  %417 = add i64 %RSP_val.132, 144, !mcsema_real_eip !75
  %418 = inttoptr i64 %416 to i64*, !mcsema_real_eip !75
  %419 = load i64, i64* %418, align 8, !mcsema_real_eip !75
  store i64 %419, i64* %XIP, align 8, !mcsema_real_eip !75
  store i64 %417, i64* %XSP, align 8, !mcsema_real_eip !75
  ret void, !mcsema_real_eip !75
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_100(%RegState*) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [144 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 144
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !76
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !76
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !76
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !76
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !76
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !76
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !76
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !76
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !76
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !76
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !76
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !76
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !76
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !76
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !76
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !76
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !76
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !76
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !76
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !76
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !76
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !76
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !76
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !76
  %RSP_val.139 = load i64, i64* %XSP, align 8, !mcsema_real_eip !76
  %_new_gep_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 136
  %1 = add i64 %RSP_val.139, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !77
  %_new_gep_3 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.139, -136
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16, !mcsema_real_eip !78
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !78
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !78
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !78
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !78
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !78
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !78
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 128 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !78
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !78
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !78
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 12, i64* %XAX, align 8, !mcsema_real_eip !79
  store i64 12, i64* %XDI, align 8, !mcsema_real_eip !80
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_17 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %13 = bitcast i8* %_new_gep_17 to <4 x i32>*
  store <4 x i32> <i32 10, i32 10, i32 10, i32 0>, <4 x i32>* %13, align 8
  %_new_gep_26 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %14 = add i64 %RSP_val.139, -144
  %_allin_new_bt_27 = bitcast [144 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !81
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !81
  %15 = call x86_64_sysvcc i64 @_malloc(i64 12)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %15, i64* %XAX, align 8, !mcsema_real_eip !81
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2811 = load i8*, i8** %12, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2811, i64 -16
  %16 = ptrtoint i8* %_new_gep_29 to i64
  store i64 %16, i64* %XDI, align 8, !mcsema_real_eip !82
  %17 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %17, align 8
  store i64 3, i64* %XCX, align 8, !mcsema_real_eip !83
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2811, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %15, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !84
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3412 = load i8*, i8** %12, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3412, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %18 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !85
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !85
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !86
  store i32 5, i32* %19, align 4, !mcsema_real_eip !86
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3713 = load i8*, i8** %12, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3713, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %20 = load i64, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !87
  store i64 %20, i64* %XAX, align 8, !mcsema_real_eip !87
  %21 = add i64 %20, 4, !mcsema_real_eip !88
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !88
  store i32 5, i32* %22, align 4, !mcsema_real_eip !88
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4014 = load i8*, i8** %12, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4014, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %23 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !89
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !89
  %24 = add i64 %23, 8, !mcsema_real_eip !90
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !90
  store i32 5, i32* %25, align 4, !mcsema_real_eip !90
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4315 = load i8*, i8** %12, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4315, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %26 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !91
  store i64 %26, i64* %XAX, align 8, !mcsema_real_eip !91
  %27 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !92
  store i64 %27, i64* %XDX, align 8, !mcsema_real_eip !92
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4315, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %28 = load i64, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !93
  store i64 %28, i64* %XSI, align 8, !mcsema_real_eip !93
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4315, i64 -48
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 %28, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !94
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5516 = load i8*, i8** %12, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5516, i64 -8
  %29 = bitcast i8* %_new_gep_56 to i32*
  %30 = load i32, i32* %29, align 4, !mcsema_real_eip !95
  %31 = zext i32 %30 to i64, !mcsema_real_eip !95
  store i64 %31, i64* %R10, align 8, !mcsema_real_eip !95
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5516, i64 -40
  %R10D.166 = bitcast i64* %R10 to i32*, !mcsema_real_eip !96
  %32 = bitcast i8* %_new_gep_59 to i32*
  store i32 %30, i32* %32, align 4, !mcsema_real_eip !96
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6117 = load i8*, i8** %12, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6117, i64 -48
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %33 = load i64, i64* %_allin_new_bt_63, align 8, !mcsema_real_eip !97
  store i64 %33, i64* %XSI, align 8, !mcsema_real_eip !97
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6117, i64 -40
  %34 = bitcast i8* %_new_gep_65 to i32*
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !98
  %36 = zext i32 %35 to i64, !mcsema_real_eip !98
  store i64 %36, i64* %R10, align 8, !mcsema_real_eip !98
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6117, i64 -64
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %RDI_val.171 = load i64, i64* %XDI, align 8, !mcsema_real_eip !99
  store i64 %RDI_val.171, i64* %_allin_new_bt_69, align 8, !mcsema_real_eip !99
  %RSI_val.172 = load i64, i64* %XSI, align 8, !mcsema_real_eip !100
  store i64 %RSI_val.172, i64* %XDI, align 8, !mcsema_real_eip !100
  %R10D_val.174 = load i32, i32* %R10D.166, align 4, !mcsema_real_eip !101
  %37 = zext i32 %R10D_val.174 to i64, !mcsema_real_eip !101
  store i64 %37, i64* %XSI, align 8, !mcsema_real_eip !101
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7018 = load i8*, i8** %12, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7018, i64 -64
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %38 = load i64, i64* %_allin_new_bt_72, align 8, !mcsema_real_eip !102
  store i64 %38, i64* %R11, align 8, !mcsema_real_eip !102
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7018, i64 -72
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %RDX_val.177 = load i64, i64* %XDX, align 8, !mcsema_real_eip !103
  store i64 %RDX_val.177, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !103
  %R11_val.178 = load i64, i64* %R11, align 8, !mcsema_real_eip !104
  store i64 %R11_val.178, i64* %XDX, align 8, !mcsema_real_eip !104
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7619 = load i8*, i8** %12, align 8
  %_new_gep_77 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7619, i64 -76
  %ECX.180 = bitcast i64* %XCX to i32*, !mcsema_real_eip !105
  %ECX_val.181 = load i32, i32* %ECX.180, align 4, !mcsema_real_eip !105
  %39 = bitcast i8* %_new_gep_77 to i32*
  store i32 %ECX_val.181, i32* %39, align 4, !mcsema_real_eip !105
  %RAX_val.182 = load i64, i64* %XAX, align 8, !mcsema_real_eip !106
  store i64 %RAX_val.182, i64* %XCX, align 8, !mcsema_real_eip !106
  %40 = bitcast i8** %_RSP_ptr_ to i32**
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_7934520 = load i32*, i32** %40, align 8
  store i32 3, i32* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_7934520, align 4, !mcsema_real_eip !107
  %41 = bitcast i64* %R11 to i64**
  %R11_val.1846 = load i64*, i64** %41, align 8
  %42 = load i64, i64* %R11_val.1846, align 8, !mcsema_real_eip !108
  store i64 %42, i64* %XAX, align 8, !mcsema_real_eip !108
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_83 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82, i64 8
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  store i64 %42, i64* %_allin_new_bt_84, align 8, !mcsema_real_eip !109
  %R11_val.187 = load i64, i64* %R11, align 8, !mcsema_real_eip !110
  %43 = add i64 %R11_val.187, 8, !mcsema_real_eip !110
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !110
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !110
  %46 = zext i32 %45 to i64, !mcsema_real_eip !110
  store i64 %46, i64* %R10, align 8, !mcsema_real_eip !110
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_86 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85, i64 16
  %47 = bitcast i8* %_new_gep_86 to i32*
  store i32 %45, i32* %47, align 4, !mcsema_real_eip !111
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_89 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88, i64 24
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %R11_val.192 = load i64, i64* %R11, align 8, !mcsema_real_eip !112
  store i64 %R11_val.192, i64* %_allin_new_bt_90, align 8, !mcsema_real_eip !112
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9121 = load i8*, i8** %12, align 8
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9121, i64 -72
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %48 = load i64, i64* %_allin_new_bt_93, align 8, !mcsema_real_eip !113
  store i64 %48, i64* %XAX, align 8, !mcsema_real_eip !113
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_94 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_94, i64 32
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  store i64 %48, i64* %_allin_new_bt_96, align 8, !mcsema_real_eip !114
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.196 = load i64, i64* %XSP, align 8, !mcsema_real_eip !115
  %_new_gep_98 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 -8
  %49 = add i64 %RSP_val.196, -8
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, align 8, !mcsema_real_eip !115
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_, align 8
  store i64 %49, i64* %XSP, align 8, !mcsema_real_eip !115
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16922 = load i8*, i8** %12, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16922)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_171 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_172 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_171, i64 8
  store i8* %_gep_fix_172, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, align 8, !mcsema_real_eip !116
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10023 = load i8*, i8** %12, align 8
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10023, i64 -32
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %RAX_val.198 = load i64, i64* %XAX, align 8, !mcsema_real_eip !117
  store i64 %RAX_val.198, i64* %_allin_new_bt_102, align 8, !mcsema_real_eip !117
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10324 = load i8*, i8** %12, align 8
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10324, i64 -32
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %50 = load i64, i64* %_allin_new_bt_105, align 8, !mcsema_real_eip !118
  store i64 %50, i64* %XAX, align 8, !mcsema_real_eip !118
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !119
  %52 = load i32, i32* %51, align 4, !mcsema_real_eip !119
  %53 = zext i32 %52 to i64, !mcsema_real_eip !119
  store i64 %53, i64* %XSI, align 8, !mcsema_real_eip !119
  %54 = load i64, i64* %_allin_new_bt_105, align 8, !mcsema_real_eip !120
  store i64 %54, i64* %XAX, align 8, !mcsema_real_eip !120
  %55 = add i64 %54, 4, !mcsema_real_eip !121
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !121
  %57 = load i32, i32* %56, align 4, !mcsema_real_eip !121
  %ESI.203 = bitcast i64* %XSI to i32*, !mcsema_real_eip !121
  %58 = add i32 %52, %57, !mcsema_real_eip !121
  %59 = xor i32 %58, %57, !mcsema_real_eip !121
  %60 = xor i32 %59, %52, !mcsema_real_eip !121
  %61 = and i32 %60, 16, !mcsema_real_eip !121
  %62 = icmp ne i32 %61, 0, !mcsema_real_eip !121
  store i1 %62, i1* %AF, align 1, !mcsema_real_eip !121
  %63 = icmp slt i32 %58, 0
  store i1 %63, i1* %SF, align 1, !mcsema_real_eip !121
  %64 = icmp eq i32 %58, 0, !mcsema_real_eip !121
  store i1 %64, i1* %ZF, align 1, !mcsema_real_eip !121
  %65 = xor i32 %57, -2147483648, !mcsema_real_eip !121
  %66 = xor i32 %65, %52, !mcsema_real_eip !121
  %67 = and i32 %59, %66, !mcsema_real_eip !121
  %68 = icmp slt i32 %67, 0
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !121
  %69 = trunc i32 %58 to i8, !mcsema_real_eip !121
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !121
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  store i1 %72, i1* %PF, align 1, !mcsema_real_eip !121
  %73 = icmp ult i32 %58, %57, !mcsema_real_eip !121
  store i1 %73, i1* %CF, align 1, !mcsema_real_eip !121
  %74 = zext i32 %58 to i64, !mcsema_real_eip !121
  store i64 %74, i64* %XSI, align 8, !mcsema_real_eip !121
  %75 = load i64, i64* %_allin_new_bt_105, align 8, !mcsema_real_eip !122
  store i64 %75, i64* %XAX, align 8, !mcsema_real_eip !122
  %76 = add i64 %75, 8, !mcsema_real_eip !123
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !123
  %78 = load i32, i32* %77, align 4, !mcsema_real_eip !123
  %79 = add i32 %58, %78, !mcsema_real_eip !123
  %80 = xor i32 %79, %78, !mcsema_real_eip !123
  %81 = xor i32 %80, %58, !mcsema_real_eip !123
  %82 = and i32 %81, 16, !mcsema_real_eip !123
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !123
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !123
  %84 = icmp slt i32 %79, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !123
  %85 = icmp eq i32 %79, 0, !mcsema_real_eip !123
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !123
  %86 = xor i32 %78, -2147483648, !mcsema_real_eip !123
  %87 = xor i32 %86, %58, !mcsema_real_eip !123
  %88 = and i32 %80, %87, !mcsema_real_eip !123
  %89 = icmp slt i32 %88, 0
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !123
  %90 = trunc i32 %79 to i8, !mcsema_real_eip !123
  %91 = call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !123
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !123
  %94 = icmp ult i32 %79, %78, !mcsema_real_eip !123
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !123
  %95 = zext i32 %79 to i64, !mcsema_real_eip !123
  store i64 %95, i64* %XSI, align 8, !mcsema_real_eip !123
  %_new_gep_113 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10324, i64 -52
  %96 = bitcast i8* %_new_gep_113 to i32*
  store i32 %79, i32* %96, align 4, !mcsema_real_eip !124
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11525 = load i8*, i8** %12, align 8
  %_new_gep_116 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11525, i64 -52
  %97 = bitcast i8* %_new_gep_116 to i32*
  %98 = load i32, i32* %97, align 4, !mcsema_real_eip !125
  %99 = zext i32 %98 to i64, !mcsema_real_eip !125
  store i64 %99, i64* %XSI, align 8, !mcsema_real_eip !125
  %AL.213 = bitcast i64* %XAX to i8*, !mcsema_real_eip !126
  store i8 0, i8* %AL.213, align 1, !mcsema_real_eip !126
  %RDI_val.214 = load i64, i64* %XDI, align 8, !mcsema_real_eip !127
  %RDX_val.216 = load i64, i64* %XDX, align 8, !mcsema_real_eip !127
  %RCX_val.217 = load i64, i64* %XCX, align 8, !mcsema_real_eip !127
  %R8_val.218 = load i64, i64* %R8, align 8, !mcsema_real_eip !127
  %R9_val.219 = load i64, i64* %R9, align 8, !mcsema_real_eip !127
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118 = load i8*, i8** %_RSP_ptr_, align 8
  %_allin_new_bt_119 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118 to i64*
  %100 = load i64, i64* %_allin_new_bt_119, align 8, !mcsema_real_eip !127
  %_new_gep_120 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %101 = load i64, i64* %_allin_new_bt_121, align 8, !mcsema_real_eip !127
  %_new_gep_122 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 16
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %102 = load i64, i64* %_allin_new_bt_123, align 8, !mcsema_real_eip !127
  %_new_gep_124 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 24
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %103 = load i64, i64* %_allin_new_bt_125, align 8, !mcsema_real_eip !127
  %_new_gep_126 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 32
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %104 = load i64, i64* %_allin_new_bt_127, align 8, !mcsema_real_eip !127
  %_new_gep_128 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 40
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %105 = load i64, i64* %_allin_new_bt_129, align 8, !mcsema_real_eip !127
  %_new_gep_130 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 48
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %106 = load i64, i64* %_allin_new_bt_131, align 8, !mcsema_real_eip !127
  %_new_gep_132 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 56
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %107 = load i64, i64* %_allin_new_bt_133, align 8, !mcsema_real_eip !127
  %_new_gep_134 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 64
  %_allin_new_bt_135 = bitcast i8* %_new_gep_134 to i64*
  %108 = load i64, i64* %_allin_new_bt_135, align 8, !mcsema_real_eip !127
  %_new_gep_136 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 72
  %_allin_new_bt_137 = bitcast i8* %_new_gep_136 to i64*
  %109 = load i64, i64* %_allin_new_bt_137, align 8, !mcsema_real_eip !127
  %RSP_val.221 = load i64, i64* %XSP, align 8, !mcsema_real_eip !127
  %_new_gep_139 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 -8
  %110 = add i64 %RSP_val.221, -8
  %_allin_new_bt_140 = bitcast i8* %_new_gep_139 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_140, align 8, !mcsema_real_eip !127
  store volatile i8* %_new_gep_139, i8** %_RSP_ptr_, align 8
  store i64 %110, i64* %XSP, align 8, !mcsema_real_eip !127
  %111 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.214, i64 %99, i64 %RDX_val.216, i64 %RCX_val.217, i64 %R8_val.218, i64 %R9_val.219, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_173 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_174 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_173, i64 8
  store i8* %_gep_fix_174, i8** %_RSP_ptr_, align 8
  store i64 %111, i64* %XAX, align 8, !mcsema_real_eip !127
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14126 = load i8*, i8** %12, align 8
  %_new_gep_142 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14126, i64 -52
  %112 = bitcast i8* %_new_gep_142 to i32*
  %113 = load i32, i32* %112, align 4, !mcsema_real_eip !128
  %114 = zext i32 %113 to i64, !mcsema_real_eip !128
  store i64 %114, i64* %XSI, align 8, !mcsema_real_eip !128
  %_new_gep_145 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14126, i64 -80
  %115 = trunc i64 %111 to i32
  %116 = bitcast i8* %_new_gep_145 to i32*
  store i32 %115, i32* %116, align 4, !mcsema_real_eip !129
  %ESI_val.227 = load i32, i32* %ESI.203, align 4, !mcsema_real_eip !130
  %117 = zext i32 %ESI_val.227 to i64, !mcsema_real_eip !130
  store i64 %117, i64* %XAX, align 8, !mcsema_real_eip !130
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_147 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.228 = load i64, i64* %XSP, align 8, !mcsema_real_eip !131
  %_new_gep_148 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_147, i64 128
  %118 = add i64 %RSP_val.228, 128, !mcsema_real_eip !131
  %_trans_p2i_149 = ptrtoint i8* %_new_gep_148 to i64
  %_trans_p2i_150 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_147 to i64
  %_trans_xor_151 = xor i64 %_trans_p2i_149, %_trans_p2i_150
  %119 = and i64 %_trans_xor_151, 16, !mcsema_real_eip !131
  %120 = icmp ne i64 %119, 0, !mcsema_real_eip !131
  store i1 %120, i1* %AF, align 1, !mcsema_real_eip !131
  %121 = icmp slt i64 %118, 0
  store i1 %121, i1* %SF, align 1, !mcsema_real_eip !131
  %_trans_icmp_eq_153 = icmp eq i8* %_new_gep_148, null
  store i1 %_trans_icmp_eq_153, i1* %ZF, align 1, !mcsema_real_eip !131
  %122 = xor i64 %_trans_p2i_150, -9223372036854775808, !mcsema_real_eip !131
  %123 = and i64 %_trans_xor_151, %122, !mcsema_real_eip !131
  %124 = icmp slt i64 %123, 0
  store i1 %124, i1* %OF, align 1, !mcsema_real_eip !131
  %_trans_trunc_160 = trunc i64 %_trans_p2i_149 to i8
  %125 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_160), !mcsema_real_eip !131
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  store i1 %127, i1* %PF, align 1, !mcsema_real_eip !131
  %_trans_icmp_ne_162 = icmp ne i64 %RSP_val.228, %_trans_p2i_149
  store i1 %_trans_icmp_ne_162, i1* %CF, align 1, !mcsema_real_eip !131
  store volatile i8* %_new_gep_148, i8** %_RSP_ptr_, align 8
  store i64 %118, i64* %XSP, align 8, !mcsema_real_eip !131
  %_allin_new_bt_164 = bitcast i8* %_new_gep_148 to i64*
  %128 = load i64, i64* %_allin_new_bt_164, align 8, !mcsema_real_eip !132
  store volatile i64 %128, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %128, i64* %XBP, align 8, !mcsema_real_eip !132
  %_new_gep_165 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_147, i64 136
  %129 = add i64 %RSP_val.228, 136, !mcsema_real_eip !132
  store volatile i8* %_new_gep_165, i8** %_RSP_ptr_, align 8
  store i64 %129, i64* %XSP, align 8, !mcsema_real_eip !132
  %_new_gep_167 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_147, i64 144
  %130 = add i64 %RSP_val.228, 144, !mcsema_real_eip !133
  %_allin_new_bt_168 = bitcast i8* %_new_gep_165 to i64*
  %131 = load i64, i64* %_allin_new_bt_168, align 8, !mcsema_real_eip !133
  store i64 %131, i64* %XIP, align 8, !mcsema_real_eip !133
  store volatile i8* %_new_gep_167, i8** %_RSP_ptr_, align 8
  store i64 %130, i64* %XSP, align 8, !mcsema_real_eip !133
  ret void, !mcsema_real_eip !133
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
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
  %R14 = getelementptr %RegState, %RegState* %0, i64 0, i32 70, !mcsema_real_eip !2
  %R15 = getelementptr %RegState, %RegState* %0, i64 0, i32 71, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 136
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %R15_val.3 = load i64, i64* %R15, align 8, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 128
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R15_val.3, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %R14_val.5 = load i64, i64* %R14, align 8, !mcsema_real_eip !5
  %_new_gep_6 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %R14_val.5, i64* %_allin_new_bt_7, align 8, !mcsema_real_eip !5
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_, align 8
  %RBX_val.7 = load i64, i64* %XBX, align 8, !mcsema_real_eip !6
  %_new_gep_9 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 112
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  store i64 %RBX_val.7, i64* %_allin_new_bt_10, align 8, !mcsema_real_eip !6
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_, align 8
  %_new_gep_12 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -136
  %_trans_p2i_ = ptrtoint i8* %_new_gep_12 to i64
  %_trans_p2i_13 = ptrtoint i8* %_new_gep_9 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_13
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !7
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !7
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !7
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !7
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !7
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !7
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_9, inttoptr (i64 104 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !7
  %9 = and i64 %_trans_xor_, %_trans_p2i_13, !mcsema_real_eip !7
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !7
  store volatile i8* %_new_gep_12, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !7
  %_new_gep_23 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 184
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 40
  %_cond1_ = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_23
  %11 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %11, align 8
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !8
  %_new_gep_26 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 176
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 32
  %_cond1_178 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  %_address_in_parent_stack_bt_186._allin_new_bt_27.v = select i1 %_cond1_n_cond2_cond3_184, i8* %_pot_address_in_parent_stack_177, i8* %_new_gep_26
  %_address_in_parent_stack_bt_186._allin_new_bt_27 = bitcast i8* %_address_in_parent_stack_bt_186._allin_new_bt_27.v to i64*
  %_new_load_187 = load i64, i64* %_address_in_parent_stack_bt_186._allin_new_bt_27, align 8
  store i64 %_new_load_187, i64* %R10, align 8, !mcsema_real_eip !9
  %_new_gep_29 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 160
  %12 = ptrtoint i8* %_new_gep_29 to i64
  store i64 %12, i64* %R11, align 8, !mcsema_real_eip !10
  %_new_gep_32 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 152
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_193 = icmp ugt i8* %_new_gep_32, %_local_stack_end_ptr_
  %_cond2_1_194 = icmp ugt i8* %_new_gep_32, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_new_gep_32, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  %.v2 = select i1 %_cond1_n_cond2_cond3_199, i8* %_pot_address_in_parent_stack_192, i8* %_new_gep_32
  %13 = bitcast i8* %.v2 to i32*
  %_new_load_202 = load i32, i32* %13, align 4
  %14 = zext i32 %_new_load_202 to i64, !mcsema_real_eip !11
  store i64 %14, i64* %XBX, align 8, !mcsema_real_eip !11
  %15 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> <i64 12, i64 12>, <2 x i64>* %15, align 8
  %_new_gep_35 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 80
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %RDI_val.17 = load i64, i64* %XDI, align 8, !mcsema_real_eip !12
  store i64 %RDI_val.17, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !12
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -48
  %ESI.19 = bitcast i64* %XSI to i32*, !mcsema_real_eip !13
  %ESI_val.20 = load i32, i32* %ESI.19, align 4, !mcsema_real_eip !13
  %16 = bitcast i8* %_new_gep_38 to i32*
  store i32 %ESI_val.20, i32* %16, align 4, !mcsema_real_eip !13
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -56
  %_ptr_to_int_203 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_206 = sub i64 %_ptr_to_int_203, %_local_end_to_int_
  %_pot_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_cond1_208 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_209 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_210 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_211 = or i1 %_cond2_1_209, %_cond2_2_210
  %_cond4_212 = icmp ule i8* %_pot_address_in_parent_stack_207, %_parent_stack_end_ptr_
  %_cond1_n_cond2_213 = and i1 %_cond1_208, %_cond2_211
  %_cond1_n_cond2_cond3_214 = and i1 %_cond1_n_cond2_213, %_cond4_212
  %_address_in_parent_stack_bt_216._allin_new_bt_42.v = select i1 %_cond1_n_cond2_cond3_214, i8* %_pot_address_in_parent_stack_207, i8* %_new_gep_41
  %_address_in_parent_stack_bt_216._allin_new_bt_42 = bitcast i8* %_address_in_parent_stack_bt_216._allin_new_bt_42.v to i64*
  %_new_load_217 = load i64, i64* %_address_in_parent_stack_bt_216._allin_new_bt_42, align 8
  store i64 %_new_load_217, i64* %XDI, align 8, !mcsema_real_eip !14
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -40
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %_new_load_217, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -48
  %17 = ptrtoint i8* %_new_gep_47 to i64
  %_offset_above_rbp_221 = sub i64 %17, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_224 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  %.v3 = select i1 %_cond1_n_cond2_cond3_229, i8* %_pot_address_in_parent_stack_222, i8* %_new_gep_47
  %18 = bitcast i8* %.v3 to i32*
  %_new_load_232 = load i32, i32* %18, align 4
  %19 = zext i32 %_new_load_232 to i64, !mcsema_real_eip !16
  store i64 %19, i64* %XSI, align 8, !mcsema_real_eip !16
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -32
  %20 = bitcast i8* %_new_gep_50 to i32*
  store i32 %_new_load_232, i32* %20, align 4, !mcsema_real_eip !17
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52, i64 -64
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %RDX_val.29 = load i64, i64* %XDX, align 8, !mcsema_real_eip !18
  store i64 %RDX_val.29, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !18
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -72
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %RCX_val.31 = load i64, i64* %XCX, align 8, !mcsema_real_eip !19
  store i64 %RCX_val.31, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !19
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -76
  %R8D.33 = bitcast i64* %R8 to i32*, !mcsema_real_eip !20
  %R8D_val.34 = load i32, i32* %R8D.33, align 4, !mcsema_real_eip !20
  %21 = bitcast i8* %_new_gep_59 to i32*
  store i32 %R8D_val.34, i32* %21, align 4, !mcsema_real_eip !20
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -80
  %R9D.36 = bitcast i64* %R9 to i32*, !mcsema_real_eip !21
  %R9D_val.37 = load i32, i32* %R9D.36, align 4, !mcsema_real_eip !21
  %22 = bitcast i8* %_new_gep_62 to i32*
  store i32 %R9D_val.37, i32* %22, align 4, !mcsema_real_eip !21
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64, i64 -84
  %EBX.39 = bitcast i64* %XBX to i32*, !mcsema_real_eip !22
  %EBX_val.40 = load i32, i32* %EBX.39, align 4, !mcsema_real_eip !22
  %23 = bitcast i8* %_new_gep_65 to i32*
  store i32 %EBX_val.40, i32* %23, align 4, !mcsema_real_eip !22
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_67, i64 -96
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %R10_val.42 = load i64, i64* %R10, align 8, !mcsema_real_eip !23
  store i64 %R10_val.42, i64* %_allin_new_bt_69, align 8, !mcsema_real_eip !23
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70, i64 -104
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %RAX_val.44 = load i64, i64* %XAX, align 8, !mcsema_real_eip !24
  store i64 %RAX_val.44, i64* %_allin_new_bt_72, align 8, !mcsema_real_eip !24
  %R15_val.45 = load i64, i64* %R15, align 8, !mcsema_real_eip !25
  store i64 %R15_val.45, i64* %XDI, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73, i64 -120
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %R11_val.47 = load i64, i64* %R11, align 8, !mcsema_real_eip !26
  store i64 %R11_val.47, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !26
  %RDI_val.48 = load i64, i64* %XDI, align 8, !mcsema_real_eip !27
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.49 = load i64, i64* %XSP, align 8, !mcsema_real_eip !27
  %_new_gep_77 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_76, i64 -8
  %24 = add i64 %RSP_val.49, -8
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_78, align 8, !mcsema_real_eip !27
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XSP, align 8, !mcsema_real_eip !27
  %25 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.48)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !27
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, i64 -112
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  store i64 %25, i64* %_allin_new_bt_81, align 8, !mcsema_real_eip !28
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_83 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -40
  %26 = ptrtoint i8* %_new_gep_83 to i64
  %_offset_above_rbp_236 = sub i64 %26, %_local_end_to_int_
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_new_gep_83, %_local_stack_end_ptr_
  %_cond2_1_239 = icmp ugt i8* %_new_gep_83, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_new_gep_83, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  %_address_in_parent_stack_bt_246..v = select i1 %_cond1_n_cond2_cond3_244, i8* %_pot_address_in_parent_stack_237, i8* %_new_gep_83
  %_address_in_parent_stack_bt_246. = bitcast i8* %_address_in_parent_stack_bt_246..v to i32*
  %_new_load_247 = load i32, i32* %_address_in_parent_stack_bt_246., align 4
  %27 = zext i32 %_new_load_247 to i64, !mcsema_real_eip !29
  store i64 %27, i64* %XSI, align 8, !mcsema_real_eip !29
  %_new_gep_86 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -64
  %_ptr_to_int_248 = ptrtoint i8* %_new_gep_86 to i64
  %_offset_above_rbp_251 = sub i64 %_ptr_to_int_248, %_local_end_to_int_
  %_pot_address_in_parent_stack_252 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_251
  %_cond1_253 = icmp ugt i8* %_new_gep_86, %_local_stack_end_ptr_
  %_cond2_1_254 = icmp ugt i8* %_new_gep_86, %_parent_stack_end_ptr_
  %_cond2_2_255 = icmp ult i8* %_new_gep_86, %_parent_stack_start_ptr_
  %_cond2_256 = or i1 %_cond2_1_254, %_cond2_2_255
  %_cond4_257 = icmp ule i8* %_pot_address_in_parent_stack_252, %_parent_stack_end_ptr_
  %_cond1_n_cond2_258 = and i1 %_cond1_253, %_cond2_256
  %_cond1_n_cond2_cond3_259 = and i1 %_cond1_n_cond2_258, %_cond4_257
  %.v4 = select i1 %_cond1_n_cond2_cond3_259, i8* %_pot_address_in_parent_stack_252, i8* %_new_gep_86
  %28 = bitcast i8* %.v4 to i64*
  %_new_load_262 = load i64, i64* %28, align 8
  store i64 %_new_load_262, i64* %XAX, align 8, !mcsema_real_eip !30
  %29 = inttoptr i64 %_new_load_262 to i32*, !mcsema_real_eip !31
  %_ptr_bt_265 = inttoptr i64 %_new_load_262 to i8*
  %_offset_above_rbp_266 = sub i64 %_new_load_262, %_local_end_to_int_
  %_pot_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_266
  %_cond1_268 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_265
  %_cond2_1_269 = icmp ugt i8* %_ptr_bt_265, %_parent_stack_end_ptr_
  %_cond2_2_270 = icmp ult i8* %_ptr_bt_265, %_parent_stack_start_ptr_
  %_cond2_271 = or i1 %_cond2_1_269, %_cond2_2_270
  %_cond4_272 = icmp ule i8* %_pot_address_in_parent_stack_267, %_parent_stack_end_ptr_
  %_cond1_n_cond2_273 = and i1 %_cond1_268, %_cond2_271
  %_cond1_n_cond2_cond3_274 = and i1 %_cond4_272, %_cond1_n_cond2_273
  %_address_in_parent_stack_bt_276 = bitcast i8* %_pot_address_in_parent_stack_267 to i32*
  %_address_in_parent_stack_bt_276. = select i1 %_cond1_n_cond2_cond3_274, i32* %_address_in_parent_stack_bt_276, i32* %29
  %_new_load_277 = load i32, i32* %_address_in_parent_stack_bt_276., align 4
  %30 = add i32 %_new_load_247, %_new_load_277, !mcsema_real_eip !31
  %31 = xor i32 %30, %_new_load_277, !mcsema_real_eip !31
  %32 = xor i32 %31, %_new_load_247, !mcsema_real_eip !31
  %33 = and i32 %32, 16, !mcsema_real_eip !31
  %34 = icmp ne i32 %33, 0, !mcsema_real_eip !31
  store i1 %34, i1* %AF, align 1, !mcsema_real_eip !31
  %35 = icmp slt i32 %30, 0
  store i1 %35, i1* %SF, align 1, !mcsema_real_eip !31
  %36 = icmp eq i32 %30, 0, !mcsema_real_eip !31
  store i1 %36, i1* %ZF, align 1, !mcsema_real_eip !31
  %37 = xor i32 %_new_load_277, -2147483648, !mcsema_real_eip !31
  %38 = xor i32 %37, %_new_load_247, !mcsema_real_eip !31
  %39 = and i32 %31, %38, !mcsema_real_eip !31
  %40 = icmp slt i32 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !31
  %41 = trunc i32 %30 to i8, !mcsema_real_eip !31
  %42 = call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !31
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !31
  %45 = icmp ult i32 %30, %_new_load_277, !mcsema_real_eip !31
  store i1 %45, i1* %CF, align 1, !mcsema_real_eip !31
  %46 = zext i32 %30 to i64, !mcsema_real_eip !31
  store i64 %46, i64* %XSI, align 8, !mcsema_real_eip !31
  %_new_gep_89 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -72
  %_ptr_to_int_278 = ptrtoint i8* %_new_gep_89 to i64
  %_offset_above_rbp_281 = sub i64 %_ptr_to_int_278, %_local_end_to_int_
  %_pot_address_in_parent_stack_282 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_281
  %_cond1_283 = icmp ugt i8* %_new_gep_89, %_local_stack_end_ptr_
  %_cond2_1_284 = icmp ugt i8* %_new_gep_89, %_parent_stack_end_ptr_
  %_cond2_2_285 = icmp ult i8* %_new_gep_89, %_parent_stack_start_ptr_
  %_cond2_286 = or i1 %_cond2_1_284, %_cond2_2_285
  %_cond4_287 = icmp ule i8* %_pot_address_in_parent_stack_282, %_parent_stack_end_ptr_
  %_cond1_n_cond2_288 = and i1 %_cond1_283, %_cond2_286
  %_cond1_n_cond2_cond3_289 = and i1 %_cond1_n_cond2_288, %_cond4_287
  %.v5 = select i1 %_cond1_n_cond2_cond3_289, i8* %_pot_address_in_parent_stack_282, i8* %_new_gep_89
  %47 = bitcast i8* %.v5 to i64*
  %_new_load_292 = load i64, i64* %47, align 8
  store i64 %_new_load_292, i64* %XAX, align 8, !mcsema_real_eip !32
  %48 = inttoptr i64 %_new_load_292 to i32*, !mcsema_real_eip !33
  %_ptr_bt_295 = inttoptr i64 %_new_load_292 to i8*
  %_offset_above_rbp_296 = sub i64 %_new_load_292, %_local_end_to_int_
  %_pot_address_in_parent_stack_297 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_296
  %_cond1_298 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_295
  %_cond2_1_299 = icmp ugt i8* %_ptr_bt_295, %_parent_stack_end_ptr_
  %_cond2_2_300 = icmp ult i8* %_ptr_bt_295, %_parent_stack_start_ptr_
  %_cond2_301 = or i1 %_cond2_1_299, %_cond2_2_300
  %_cond4_302 = icmp ule i8* %_pot_address_in_parent_stack_297, %_parent_stack_end_ptr_
  %_cond1_n_cond2_303 = and i1 %_cond1_298, %_cond2_301
  %_cond1_n_cond2_cond3_304 = and i1 %_cond4_302, %_cond1_n_cond2_303
  %_address_in_parent_stack_bt_306 = bitcast i8* %_pot_address_in_parent_stack_297 to i32*
  %_address_in_parent_stack_bt_306. = select i1 %_cond1_n_cond2_cond3_304, i32* %_address_in_parent_stack_bt_306, i32* %48
  %_new_load_307 = load i32, i32* %_address_in_parent_stack_bt_306., align 4
  %49 = add i32 %30, %_new_load_307, !mcsema_real_eip !33
  %50 = xor i32 %49, %_new_load_307, !mcsema_real_eip !33
  %51 = xor i32 %50, %30, !mcsema_real_eip !33
  %52 = and i32 %51, 16, !mcsema_real_eip !33
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !33
  store i1 %53, i1* %AF, align 1, !mcsema_real_eip !33
  %54 = icmp slt i32 %49, 0
  store i1 %54, i1* %SF, align 1, !mcsema_real_eip !33
  %55 = icmp eq i32 %49, 0, !mcsema_real_eip !33
  store i1 %55, i1* %ZF, align 1, !mcsema_real_eip !33
  %56 = xor i32 %_new_load_307, -2147483648, !mcsema_real_eip !33
  %57 = xor i32 %56, %30, !mcsema_real_eip !33
  %58 = and i32 %50, %57, !mcsema_real_eip !33
  %59 = icmp slt i32 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !33
  %60 = trunc i32 %49 to i8, !mcsema_real_eip !33
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !33
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  store i1 %63, i1* %PF, align 1, !mcsema_real_eip !33
  %64 = icmp ult i32 %49, %_new_load_307, !mcsema_real_eip !33
  store i1 %64, i1* %CF, align 1, !mcsema_real_eip !33
  %65 = zext i32 %49 to i64, !mcsema_real_eip !33
  store i64 %65, i64* %XSI, align 8, !mcsema_real_eip !33
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -120
  %_ptr_to_int_308 = ptrtoint i8* %_new_gep_92 to i64
  %_offset_above_rbp_311 = sub i64 %_ptr_to_int_308, %_local_end_to_int_
  %_pot_address_in_parent_stack_312 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_311
  %_cond1_313 = icmp ugt i8* %_new_gep_92, %_local_stack_end_ptr_
  %_cond2_1_314 = icmp ugt i8* %_new_gep_92, %_parent_stack_end_ptr_
  %_cond2_2_315 = icmp ult i8* %_new_gep_92, %_parent_stack_start_ptr_
  %_cond2_316 = or i1 %_cond2_1_314, %_cond2_2_315
  %_cond4_317 = icmp ule i8* %_pot_address_in_parent_stack_312, %_parent_stack_end_ptr_
  %_cond1_n_cond2_318 = and i1 %_cond1_313, %_cond2_316
  %_cond1_n_cond2_cond3_319 = and i1 %_cond1_n_cond2_318, %_cond4_317
  %.v6 = select i1 %_cond1_n_cond2_cond3_319, i8* %_pot_address_in_parent_stack_312, i8* %_new_gep_92
  %66 = bitcast i8* %.v6 to i64*
  %_new_load_322 = load i64, i64* %66, align 8
  store i64 %_new_load_322, i64* %XAX, align 8, !mcsema_real_eip !34
  %67 = inttoptr i64 %_new_load_322 to i32*, !mcsema_real_eip !35
  %_ptr_bt_325 = inttoptr i64 %_new_load_322 to i8*
  %_offset_above_rbp_326 = sub i64 %_new_load_322, %_local_end_to_int_
  %_pot_address_in_parent_stack_327 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_326
  %_cond1_328 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_325
  %_cond2_1_329 = icmp ugt i8* %_ptr_bt_325, %_parent_stack_end_ptr_
  %_cond2_2_330 = icmp ult i8* %_ptr_bt_325, %_parent_stack_start_ptr_
  %_cond2_331 = or i1 %_cond2_1_329, %_cond2_2_330
  %_cond4_332 = icmp ule i8* %_pot_address_in_parent_stack_327, %_parent_stack_end_ptr_
  %_cond1_n_cond2_333 = and i1 %_cond1_328, %_cond2_331
  %_cond1_n_cond2_cond3_334 = and i1 %_cond4_332, %_cond1_n_cond2_333
  %_address_in_parent_stack_bt_336 = bitcast i8* %_pot_address_in_parent_stack_327 to i32*
  %_address_in_parent_stack_bt_336. = select i1 %_cond1_n_cond2_cond3_334, i32* %_address_in_parent_stack_bt_336, i32* %67
  %_new_load_337 = load i32, i32* %_address_in_parent_stack_bt_336., align 4
  %68 = zext i32 %_new_load_337 to i64, !mcsema_real_eip !35
  store i64 %68, i64* %R8, align 8, !mcsema_real_eip !35
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -96
  %_ptr_to_int_338 = ptrtoint i8* %_new_gep_95 to i64
  %_offset_above_rbp_341 = sub i64 %_ptr_to_int_338, %_local_end_to_int_
  %_pot_address_in_parent_stack_342 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_341
  %_cond1_343 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_344 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_345 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_346 = or i1 %_cond2_1_344, %_cond2_2_345
  %_cond4_347 = icmp ule i8* %_pot_address_in_parent_stack_342, %_parent_stack_end_ptr_
  %_cond1_n_cond2_348 = and i1 %_cond1_343, %_cond2_346
  %_cond1_n_cond2_cond3_349 = and i1 %_cond1_n_cond2_348, %_cond4_347
  %.v7 = select i1 %_cond1_n_cond2_cond3_349, i8* %_pot_address_in_parent_stack_342, i8* %_new_gep_95
  %69 = bitcast i8* %.v7 to i64*
  %_new_load_352 = load i64, i64* %69, align 8
  store i64 %_new_load_352, i64* %XCX, align 8, !mcsema_real_eip !36
  %70 = inttoptr i64 %_new_load_352 to i32*, !mcsema_real_eip !37
  %_ptr_bt_355 = inttoptr i64 %_new_load_352 to i8*
  %_offset_above_rbp_356 = sub i64 %_new_load_352, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_355
  %_cond2_1_359 = icmp ugt i8* %_ptr_bt_355, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_ptr_bt_355, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond4_362, %_cond1_n_cond2_363
  %_address_in_parent_stack_bt_366 = bitcast i8* %_pot_address_in_parent_stack_357 to i32*
  %_address_in_parent_stack_bt_366. = select i1 %_cond1_n_cond2_cond3_364, i32* %_address_in_parent_stack_bt_366, i32* %70
  %_new_load_367 = load i32, i32* %_address_in_parent_stack_bt_366., align 4
  %71 = add i32 %_new_load_337, %_new_load_367, !mcsema_real_eip !37
  %72 = xor i32 %71, %_new_load_367, !mcsema_real_eip !37
  %73 = xor i32 %72, %_new_load_337, !mcsema_real_eip !37
  %74 = and i32 %73, 16, !mcsema_real_eip !37
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !37
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !37
  %76 = icmp slt i32 %71, 0
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !37
  %77 = icmp eq i32 %71, 0, !mcsema_real_eip !37
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !37
  %78 = xor i32 %_new_load_367, -2147483648, !mcsema_real_eip !37
  %79 = xor i32 %78, %_new_load_337, !mcsema_real_eip !37
  %80 = and i32 %72, %79, !mcsema_real_eip !37
  %81 = icmp slt i32 %80, 0
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !37
  %82 = trunc i32 %71 to i8, !mcsema_real_eip !37
  %83 = call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !37
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !37
  %86 = icmp ult i32 %71, %_new_load_367, !mcsema_real_eip !37
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !37
  %87 = zext i32 %71 to i64, !mcsema_real_eip !37
  store i64 %87, i64* %R8, align 8, !mcsema_real_eip !37
  %_new_gep_98 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -104
  %_ptr_to_int_368 = ptrtoint i8* %_new_gep_98 to i64
  %_offset_above_rbp_371 = sub i64 %_ptr_to_int_368, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_new_gep_98, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_new_gep_98, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_new_gep_98, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  %.v8 = select i1 %_cond1_n_cond2_cond3_379, i8* %_pot_address_in_parent_stack_372, i8* %_new_gep_98
  %88 = bitcast i8* %.v8 to i64*
  %_new_load_382 = load i64, i64* %88, align 8
  store i64 %_new_load_382, i64* %XCX, align 8, !mcsema_real_eip !38
  %89 = inttoptr i64 %_new_load_382 to i32*, !mcsema_real_eip !39
  %_ptr_bt_385 = inttoptr i64 %_new_load_382 to i8*
  %_offset_above_rbp_386 = sub i64 %_new_load_382, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_385
  %_cond2_1_389 = icmp ugt i8* %_ptr_bt_385, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_ptr_bt_385, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond4_392, %_cond1_n_cond2_393
  %_address_in_parent_stack_bt_396 = bitcast i8* %_pot_address_in_parent_stack_387 to i32*
  %_address_in_parent_stack_bt_396. = select i1 %_cond1_n_cond2_cond3_394, i32* %_address_in_parent_stack_bt_396, i32* %89
  %_new_load_397 = load i32, i32* %_address_in_parent_stack_bt_396., align 4
  %90 = add i32 %71, %_new_load_397, !mcsema_real_eip !39
  %91 = zext i32 %90 to i64, !mcsema_real_eip !39
  store i64 %91, i64* %R8, align 8, !mcsema_real_eip !39
  %ESI_val.72 = load i32, i32* %ESI.19, align 4, !mcsema_real_eip !40
  %92 = add i32 %90, %ESI_val.72, !mcsema_real_eip !40
  %93 = xor i32 %92, %ESI_val.72, !mcsema_real_eip !40
  %94 = xor i32 %93, %90, !mcsema_real_eip !40
  %95 = and i32 %94, 16, !mcsema_real_eip !40
  %96 = icmp ne i32 %95, 0, !mcsema_real_eip !40
  store i1 %96, i1* %AF, align 1, !mcsema_real_eip !40
  %97 = icmp slt i32 %92, 0
  store i1 %97, i1* %SF, align 1, !mcsema_real_eip !40
  %98 = icmp eq i32 %92, 0, !mcsema_real_eip !40
  store i1 %98, i1* %ZF, align 1, !mcsema_real_eip !40
  %99 = xor i32 %ESI_val.72, -2147483648, !mcsema_real_eip !40
  %100 = xor i32 %99, %90, !mcsema_real_eip !40
  %101 = and i32 %93, %100, !mcsema_real_eip !40
  %102 = icmp slt i32 %101, 0
  store i1 %102, i1* %OF, align 1, !mcsema_real_eip !40
  %103 = trunc i32 %92 to i8, !mcsema_real_eip !40
  %104 = call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !40
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !40
  %107 = icmp ult i32 %92, %ESI_val.72, !mcsema_real_eip !40
  store i1 %107, i1* %CF, align 1, !mcsema_real_eip !40
  %108 = zext i32 %92 to i64, !mcsema_real_eip !40
  store i64 %108, i64* %XSI, align 8, !mcsema_real_eip !40
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -112
  %_ptr_to_int_398 = ptrtoint i8* %_new_gep_101 to i64
  %_offset_above_rbp_401 = sub i64 %_ptr_to_int_398, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_new_gep_101, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_new_gep_101, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_new_gep_101, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  %.v9 = select i1 %_cond1_n_cond2_cond3_409, i8* %_pot_address_in_parent_stack_402, i8* %_new_gep_101
  %109 = bitcast i8* %.v9 to i64*
  %_new_load_412 = load i64, i64* %109, align 8
  store i64 %_new_load_412, i64* %XCX, align 8, !mcsema_real_eip !41
  %110 = inttoptr i64 %_new_load_412 to i32*, !mcsema_real_eip !42
  store i32 %92, i32* %110, align 4, !mcsema_real_eip !42
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -36
  %111 = ptrtoint i8* %_new_gep_104 to i64
  %_offset_above_rbp_416 = sub i64 %111, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  %_address_in_parent_stack_bt_426..v = select i1 %_cond1_n_cond2_cond3_424, i8* %_pot_address_in_parent_stack_417, i8* %_new_gep_104
  %_address_in_parent_stack_bt_426. = bitcast i8* %_address_in_parent_stack_bt_426..v to i32*
  %_new_load_427 = load i32, i32* %_address_in_parent_stack_bt_426., align 4
  %112 = zext i32 %_new_load_427 to i64, !mcsema_real_eip !43
  store i64 %112, i64* %XSI, align 8, !mcsema_real_eip !43
  %_new_gep_107 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -64
  %_ptr_to_int_428 = ptrtoint i8* %_new_gep_107 to i64
  %_offset_above_rbp_431 = sub i64 %_ptr_to_int_428, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_new_gep_107, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_new_gep_107, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_new_gep_107, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  %.v10 = select i1 %_cond1_n_cond2_cond3_439, i8* %_pot_address_in_parent_stack_432, i8* %_new_gep_107
  %113 = bitcast i8* %.v10 to i64*
  %_new_load_442 = load i64, i64* %113, align 8
  store i64 %_new_load_442, i64* %XCX, align 8, !mcsema_real_eip !44
  %114 = add i64 %_new_load_442, 4, !mcsema_real_eip !45
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !45
  %_ptr_bt_445 = inttoptr i64 %114 to i8*
  %_offset_above_rbp_446 = sub i64 %114, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_445
  %_cond2_1_449 = icmp ugt i8* %_ptr_bt_445, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_ptr_bt_445, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond4_452, %_cond1_n_cond2_453
  %_address_in_parent_stack_bt_456 = bitcast i8* %_pot_address_in_parent_stack_447 to i32*
  %_address_in_parent_stack_bt_456. = select i1 %_cond1_n_cond2_cond3_454, i32* %_address_in_parent_stack_bt_456, i32* %115
  %_new_load_457 = load i32, i32* %_address_in_parent_stack_bt_456., align 4
  %116 = add i32 %_new_load_427, %_new_load_457, !mcsema_real_eip !45
  %117 = xor i32 %116, %_new_load_457, !mcsema_real_eip !45
  %118 = xor i32 %117, %_new_load_427, !mcsema_real_eip !45
  %119 = and i32 %118, 16, !mcsema_real_eip !45
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !45
  store i1 %120, i1* %AF, align 1, !mcsema_real_eip !45
  %121 = icmp slt i32 %116, 0
  store i1 %121, i1* %SF, align 1, !mcsema_real_eip !45
  %122 = icmp eq i32 %116, 0, !mcsema_real_eip !45
  store i1 %122, i1* %ZF, align 1, !mcsema_real_eip !45
  %123 = xor i32 %_new_load_457, -2147483648, !mcsema_real_eip !45
  %124 = xor i32 %123, %_new_load_427, !mcsema_real_eip !45
  %125 = and i32 %117, %124, !mcsema_real_eip !45
  %126 = icmp slt i32 %125, 0
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !45
  %127 = trunc i32 %116 to i8, !mcsema_real_eip !45
  %128 = call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !45
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  store i1 %130, i1* %PF, align 1, !mcsema_real_eip !45
  %131 = icmp ult i32 %116, %_new_load_457, !mcsema_real_eip !45
  store i1 %131, i1* %CF, align 1, !mcsema_real_eip !45
  %132 = zext i32 %116 to i64, !mcsema_real_eip !45
  store i64 %132, i64* %XSI, align 8, !mcsema_real_eip !45
  %_new_gep_110 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -72
  %_ptr_to_int_458 = ptrtoint i8* %_new_gep_110 to i64
  %_offset_above_rbp_461 = sub i64 %_ptr_to_int_458, %_local_end_to_int_
  %_pot_address_in_parent_stack_462 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_461
  %_cond1_463 = icmp ugt i8* %_new_gep_110, %_local_stack_end_ptr_
  %_cond2_1_464 = icmp ugt i8* %_new_gep_110, %_parent_stack_end_ptr_
  %_cond2_2_465 = icmp ult i8* %_new_gep_110, %_parent_stack_start_ptr_
  %_cond2_466 = or i1 %_cond2_1_464, %_cond2_2_465
  %_cond4_467 = icmp ule i8* %_pot_address_in_parent_stack_462, %_parent_stack_end_ptr_
  %_cond1_n_cond2_468 = and i1 %_cond1_463, %_cond2_466
  %_cond1_n_cond2_cond3_469 = and i1 %_cond1_n_cond2_468, %_cond4_467
  %.v11 = select i1 %_cond1_n_cond2_cond3_469, i8* %_pot_address_in_parent_stack_462, i8* %_new_gep_110
  %133 = bitcast i8* %.v11 to i64*
  %_new_load_472 = load i64, i64* %133, align 8
  store i64 %_new_load_472, i64* %XCX, align 8, !mcsema_real_eip !46
  %134 = add i64 %_new_load_472, 4, !mcsema_real_eip !47
  %135 = inttoptr i64 %134 to i32*, !mcsema_real_eip !47
  %_ptr_bt_475 = inttoptr i64 %134 to i8*
  %_offset_above_rbp_476 = sub i64 %134, %_local_end_to_int_
  %_pot_address_in_parent_stack_477 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_476
  %_cond1_478 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_475
  %_cond2_1_479 = icmp ugt i8* %_ptr_bt_475, %_parent_stack_end_ptr_
  %_cond2_2_480 = icmp ult i8* %_ptr_bt_475, %_parent_stack_start_ptr_
  %_cond2_481 = or i1 %_cond2_1_479, %_cond2_2_480
  %_cond4_482 = icmp ule i8* %_pot_address_in_parent_stack_477, %_parent_stack_end_ptr_
  %_cond1_n_cond2_483 = and i1 %_cond1_478, %_cond2_481
  %_cond1_n_cond2_cond3_484 = and i1 %_cond4_482, %_cond1_n_cond2_483
  %_address_in_parent_stack_bt_486 = bitcast i8* %_pot_address_in_parent_stack_477 to i32*
  %_address_in_parent_stack_bt_486. = select i1 %_cond1_n_cond2_cond3_484, i32* %_address_in_parent_stack_bt_486, i32* %135
  %_new_load_487 = load i32, i32* %_address_in_parent_stack_bt_486., align 4
  %136 = add i32 %116, %_new_load_487, !mcsema_real_eip !47
  %137 = xor i32 %136, %_new_load_487, !mcsema_real_eip !47
  %138 = xor i32 %137, %116, !mcsema_real_eip !47
  %139 = and i32 %138, 16, !mcsema_real_eip !47
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !47
  store i1 %140, i1* %AF, align 1, !mcsema_real_eip !47
  %141 = icmp slt i32 %136, 0
  store i1 %141, i1* %SF, align 1, !mcsema_real_eip !47
  %142 = icmp eq i32 %136, 0, !mcsema_real_eip !47
  store i1 %142, i1* %ZF, align 1, !mcsema_real_eip !47
  %143 = xor i32 %_new_load_487, -2147483648, !mcsema_real_eip !47
  %144 = xor i32 %143, %116, !mcsema_real_eip !47
  %145 = and i32 %137, %144, !mcsema_real_eip !47
  %146 = icmp slt i32 %145, 0
  store i1 %146, i1* %OF, align 1, !mcsema_real_eip !47
  %147 = trunc i32 %136 to i8, !mcsema_real_eip !47
  %148 = call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !47
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  store i1 %150, i1* %PF, align 1, !mcsema_real_eip !47
  %151 = icmp ult i32 %136, %_new_load_487, !mcsema_real_eip !47
  store i1 %151, i1* %CF, align 1, !mcsema_real_eip !47
  %152 = zext i32 %136 to i64, !mcsema_real_eip !47
  store i64 %152, i64* %XSI, align 8, !mcsema_real_eip !47
  %RAX_val.88 = load i64, i64* %XAX, align 8, !mcsema_real_eip !48
  %153 = add i64 %RAX_val.88, 4, !mcsema_real_eip !48
  %154 = inttoptr i64 %153 to i32*, !mcsema_real_eip !48
  %_ptr_bt_490 = inttoptr i64 %153 to i8*
  %_offset_above_rbp_491 = sub i64 %153, %_local_end_to_int_
  %_pot_address_in_parent_stack_492 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_491
  %_cond1_493 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_490
  %_cond2_1_494 = icmp ugt i8* %_ptr_bt_490, %_parent_stack_end_ptr_
  %_cond2_2_495 = icmp ult i8* %_ptr_bt_490, %_parent_stack_start_ptr_
  %_cond2_496 = or i1 %_cond2_1_494, %_cond2_2_495
  %_cond4_497 = icmp ule i8* %_pot_address_in_parent_stack_492, %_parent_stack_end_ptr_
  %_cond1_n_cond2_498 = and i1 %_cond1_493, %_cond2_496
  %_cond1_n_cond2_cond3_499 = and i1 %_cond4_497, %_cond1_n_cond2_498
  %_address_in_parent_stack_bt_501 = bitcast i8* %_pot_address_in_parent_stack_492 to i32*
  %155 = select i1 %_cond1_n_cond2_cond3_499, i32* %_address_in_parent_stack_bt_501, i32* %154
  %_new_load_502 = load i32, i32* %155, align 4
  %156 = zext i32 %_new_load_502 to i64, !mcsema_real_eip !48
  store i64 %156, i64* %R8, align 8, !mcsema_real_eip !48
  %_new_gep_113 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -96
  %_ptr_to_int_503 = ptrtoint i8* %_new_gep_113 to i64
  %_offset_above_rbp_506 = sub i64 %_ptr_to_int_503, %_local_end_to_int_
  %_pot_address_in_parent_stack_507 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_506
  %_cond1_508 = icmp ugt i8* %_new_gep_113, %_local_stack_end_ptr_
  %_cond2_1_509 = icmp ugt i8* %_new_gep_113, %_parent_stack_end_ptr_
  %_cond2_2_510 = icmp ult i8* %_new_gep_113, %_parent_stack_start_ptr_
  %_cond2_511 = or i1 %_cond2_1_509, %_cond2_2_510
  %_cond4_512 = icmp ule i8* %_pot_address_in_parent_stack_507, %_parent_stack_end_ptr_
  %_cond1_n_cond2_513 = and i1 %_cond1_508, %_cond2_511
  %_cond1_n_cond2_cond3_514 = and i1 %_cond1_n_cond2_513, %_cond4_512
  %_address_in_parent_stack_bt_516._allin_new_bt_114.v = select i1 %_cond1_n_cond2_cond3_514, i8* %_pot_address_in_parent_stack_507, i8* %_new_gep_113
  %_address_in_parent_stack_bt_516._allin_new_bt_114 = bitcast i8* %_address_in_parent_stack_bt_516._allin_new_bt_114.v to i64*
  %_new_load_517 = load i64, i64* %_address_in_parent_stack_bt_516._allin_new_bt_114, align 8
  store i64 %_new_load_517, i64* %XCX, align 8, !mcsema_real_eip !49
  %157 = add i64 %_new_load_517, 4, !mcsema_real_eip !50
  %158 = inttoptr i64 %157 to i32*, !mcsema_real_eip !50
  %_ptr_bt_520 = inttoptr i64 %157 to i8*
  %_offset_above_rbp_521 = sub i64 %157, %_local_end_to_int_
  %_pot_address_in_parent_stack_522 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_521
  %_cond1_523 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_520
  %_cond2_1_524 = icmp ugt i8* %_ptr_bt_520, %_parent_stack_end_ptr_
  %_cond2_2_525 = icmp ult i8* %_ptr_bt_520, %_parent_stack_start_ptr_
  %_cond2_526 = or i1 %_cond2_1_524, %_cond2_2_525
  %_cond4_527 = icmp ule i8* %_pot_address_in_parent_stack_522, %_parent_stack_end_ptr_
  %_cond1_n_cond2_528 = and i1 %_cond1_523, %_cond2_526
  %_cond1_n_cond2_cond3_529 = and i1 %_cond4_527, %_cond1_n_cond2_528
  %_address_in_parent_stack_bt_531 = bitcast i8* %_pot_address_in_parent_stack_522 to i32*
  %159 = select i1 %_cond1_n_cond2_cond3_529, i32* %_address_in_parent_stack_bt_531, i32* %158
  %_new_load_532 = load i32, i32* %159, align 4
  %160 = add i32 %_new_load_502, %_new_load_532, !mcsema_real_eip !50
  %161 = xor i32 %160, %_new_load_532, !mcsema_real_eip !50
  %162 = xor i32 %161, %_new_load_502, !mcsema_real_eip !50
  %163 = and i32 %162, 16, !mcsema_real_eip !50
  %164 = icmp ne i32 %163, 0, !mcsema_real_eip !50
  store i1 %164, i1* %AF, align 1, !mcsema_real_eip !50
  %165 = icmp slt i32 %160, 0
  store i1 %165, i1* %SF, align 1, !mcsema_real_eip !50
  %166 = icmp eq i32 %160, 0, !mcsema_real_eip !50
  store i1 %166, i1* %ZF, align 1, !mcsema_real_eip !50
  %167 = xor i32 %_new_load_532, -2147483648, !mcsema_real_eip !50
  %168 = xor i32 %167, %_new_load_502, !mcsema_real_eip !50
  %169 = and i32 %161, %168, !mcsema_real_eip !50
  %170 = icmp slt i32 %169, 0
  store i1 %170, i1* %OF, align 1, !mcsema_real_eip !50
  %171 = trunc i32 %160 to i8, !mcsema_real_eip !50
  %172 = call i8 @llvm.ctpop.i8(i8 %171), !mcsema_real_eip !50
  %173 = and i8 %172, 1
  %174 = icmp eq i8 %173, 0
  store i1 %174, i1* %PF, align 1, !mcsema_real_eip !50
  %175 = icmp ult i32 %160, %_new_load_532, !mcsema_real_eip !50
  store i1 %175, i1* %CF, align 1, !mcsema_real_eip !50
  %176 = zext i32 %160 to i64, !mcsema_real_eip !50
  store i64 %176, i64* %R8, align 8, !mcsema_real_eip !50
  %_new_gep_116 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -104
  %_ptr_to_int_533 = ptrtoint i8* %_new_gep_116 to i64
  %_offset_above_rbp_536 = sub i64 %_ptr_to_int_533, %_local_end_to_int_
  %_pot_address_in_parent_stack_537 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_536
  %_cond1_538 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_539 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_540 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_541 = or i1 %_cond2_1_539, %_cond2_2_540
  %_cond4_542 = icmp ule i8* %_pot_address_in_parent_stack_537, %_parent_stack_end_ptr_
  %_cond1_n_cond2_543 = and i1 %_cond1_538, %_cond2_541
  %_cond1_n_cond2_cond3_544 = and i1 %_cond1_n_cond2_543, %_cond4_542
  %_address_in_parent_stack_bt_546._allin_new_bt_117.v = select i1 %_cond1_n_cond2_cond3_544, i8* %_pot_address_in_parent_stack_537, i8* %_new_gep_116
  %_address_in_parent_stack_bt_546._allin_new_bt_117 = bitcast i8* %_address_in_parent_stack_bt_546._allin_new_bt_117.v to i64*
  %_new_load_547 = load i64, i64* %_address_in_parent_stack_bt_546._allin_new_bt_117, align 8
  store i64 %_new_load_547, i64* %XCX, align 8, !mcsema_real_eip !51
  %177 = add i64 %_new_load_547, 4, !mcsema_real_eip !52
  %178 = inttoptr i64 %177 to i32*, !mcsema_real_eip !52
  %_ptr_bt_550 = inttoptr i64 %177 to i8*
  %_offset_above_rbp_551 = sub i64 %177, %_local_end_to_int_
  %_pot_address_in_parent_stack_552 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_551
  %_cond1_553 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_550
  %_cond2_1_554 = icmp ugt i8* %_ptr_bt_550, %_parent_stack_end_ptr_
  %_cond2_2_555 = icmp ult i8* %_ptr_bt_550, %_parent_stack_start_ptr_
  %_cond2_556 = or i1 %_cond2_1_554, %_cond2_2_555
  %_cond4_557 = icmp ule i8* %_pot_address_in_parent_stack_552, %_parent_stack_end_ptr_
  %_cond1_n_cond2_558 = and i1 %_cond1_553, %_cond2_556
  %_cond1_n_cond2_cond3_559 = and i1 %_cond4_557, %_cond1_n_cond2_558
  %_address_in_parent_stack_bt_561 = bitcast i8* %_pot_address_in_parent_stack_552 to i32*
  %179 = select i1 %_cond1_n_cond2_cond3_559, i32* %_address_in_parent_stack_bt_561, i32* %178
  %_new_load_562 = load i32, i32* %179, align 4
  %180 = add i32 %160, %_new_load_562, !mcsema_real_eip !52
  %181 = zext i32 %180 to i64, !mcsema_real_eip !52
  store i64 %181, i64* %R8, align 8, !mcsema_real_eip !52
  %ESI_val.98 = load i32, i32* %ESI.19, align 4, !mcsema_real_eip !53
  %182 = add i32 %180, %ESI_val.98, !mcsema_real_eip !53
  %183 = xor i32 %182, %ESI_val.98, !mcsema_real_eip !53
  %184 = xor i32 %183, %180, !mcsema_real_eip !53
  %185 = and i32 %184, 16, !mcsema_real_eip !53
  %186 = icmp ne i32 %185, 0, !mcsema_real_eip !53
  store i1 %186, i1* %AF, align 1, !mcsema_real_eip !53
  %187 = icmp slt i32 %182, 0
  store i1 %187, i1* %SF, align 1, !mcsema_real_eip !53
  %188 = icmp eq i32 %182, 0, !mcsema_real_eip !53
  store i1 %188, i1* %ZF, align 1, !mcsema_real_eip !53
  %189 = xor i32 %ESI_val.98, -2147483648, !mcsema_real_eip !53
  %190 = xor i32 %189, %180, !mcsema_real_eip !53
  %191 = and i32 %183, %190, !mcsema_real_eip !53
  %192 = icmp slt i32 %191, 0
  store i1 %192, i1* %OF, align 1, !mcsema_real_eip !53
  %193 = trunc i32 %182 to i8, !mcsema_real_eip !53
  %194 = call i8 @llvm.ctpop.i8(i8 %193), !mcsema_real_eip !53
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  store i1 %196, i1* %PF, align 1, !mcsema_real_eip !53
  %197 = icmp ult i32 %182, %ESI_val.98, !mcsema_real_eip !53
  store i1 %197, i1* %CF, align 1, !mcsema_real_eip !53
  %198 = zext i32 %182 to i64, !mcsema_real_eip !53
  store i64 %198, i64* %XSI, align 8, !mcsema_real_eip !53
  %_new_gep_119 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -112
  %_ptr_to_int_563 = ptrtoint i8* %_new_gep_119 to i64
  %_offset_above_rbp_566 = sub i64 %_ptr_to_int_563, %_local_end_to_int_
  %_pot_address_in_parent_stack_567 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_566
  %_cond1_568 = icmp ugt i8* %_new_gep_119, %_local_stack_end_ptr_
  %_cond2_1_569 = icmp ugt i8* %_new_gep_119, %_parent_stack_end_ptr_
  %_cond2_2_570 = icmp ult i8* %_new_gep_119, %_parent_stack_start_ptr_
  %_cond2_571 = or i1 %_cond2_1_569, %_cond2_2_570
  %_cond4_572 = icmp ule i8* %_pot_address_in_parent_stack_567, %_parent_stack_end_ptr_
  %_cond1_n_cond2_573 = and i1 %_cond1_568, %_cond2_571
  %_cond1_n_cond2_cond3_574 = and i1 %_cond1_n_cond2_573, %_cond4_572
  %_address_in_parent_stack_bt_576._allin_new_bt_120.v = select i1 %_cond1_n_cond2_cond3_574, i8* %_pot_address_in_parent_stack_567, i8* %_new_gep_119
  %_address_in_parent_stack_bt_576._allin_new_bt_120 = bitcast i8* %_address_in_parent_stack_bt_576._allin_new_bt_120.v to i64*
  %_new_load_577 = load i64, i64* %_address_in_parent_stack_bt_576._allin_new_bt_120, align 8
  store i64 %_new_load_577, i64* %XCX, align 8, !mcsema_real_eip !54
  %199 = add i64 %_new_load_577, 4, !mcsema_real_eip !55
  %200 = inttoptr i64 %199 to i32*, !mcsema_real_eip !55
  store i32 %182, i32* %200, align 4, !mcsema_real_eip !55
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_122 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -32
  %201 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_581 = sub i64 %201, %_local_end_to_int_
  %_pot_address_in_parent_stack_582 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_581
  %_cond1_583 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_584 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_585 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_586 = or i1 %_cond2_1_584, %_cond2_2_585
  %_cond4_587 = icmp ule i8* %_pot_address_in_parent_stack_582, %_parent_stack_end_ptr_
  %_cond1_n_cond2_588 = and i1 %_cond1_583, %_cond2_586
  %_cond1_n_cond2_cond3_589 = and i1 %_cond1_n_cond2_588, %_cond4_587
  %.v12 = select i1 %_cond1_n_cond2_cond3_589, i8* %_pot_address_in_parent_stack_582, i8* %_new_gep_122
  %202 = bitcast i8* %.v12 to i32*
  %_new_load_592 = load i32, i32* %202, align 4
  %203 = zext i32 %_new_load_592 to i64, !mcsema_real_eip !56
  store i64 %203, i64* %XSI, align 8, !mcsema_real_eip !56
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -64
  %_ptr_to_int_593 = ptrtoint i8* %_new_gep_125 to i64
  %_offset_above_rbp_596 = sub i64 %_ptr_to_int_593, %_local_end_to_int_
  %_pot_address_in_parent_stack_597 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_596
  %_cond1_598 = icmp ugt i8* %_new_gep_125, %_local_stack_end_ptr_
  %_cond2_1_599 = icmp ugt i8* %_new_gep_125, %_parent_stack_end_ptr_
  %_cond2_2_600 = icmp ult i8* %_new_gep_125, %_parent_stack_start_ptr_
  %_cond2_601 = or i1 %_cond2_1_599, %_cond2_2_600
  %_cond4_602 = icmp ule i8* %_pot_address_in_parent_stack_597, %_parent_stack_end_ptr_
  %_cond1_n_cond2_603 = and i1 %_cond1_598, %_cond2_601
  %_cond1_n_cond2_cond3_604 = and i1 %_cond1_n_cond2_603, %_cond4_602
  %_address_in_parent_stack_bt_606._allin_new_bt_126.v = select i1 %_cond1_n_cond2_cond3_604, i8* %_pot_address_in_parent_stack_597, i8* %_new_gep_125
  %_address_in_parent_stack_bt_606._allin_new_bt_126 = bitcast i8* %_address_in_parent_stack_bt_606._allin_new_bt_126.v to i64*
  %_new_load_607 = load i64, i64* %_address_in_parent_stack_bt_606._allin_new_bt_126, align 8
  store i64 %_new_load_607, i64* %XCX, align 8, !mcsema_real_eip !57
  %204 = add i64 %_new_load_607, 8, !mcsema_real_eip !58
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !58
  %_ptr_bt_610 = inttoptr i64 %204 to i8*
  %_offset_above_rbp_611 = sub i64 %204, %_local_end_to_int_
  %_pot_address_in_parent_stack_612 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_611
  %_cond1_613 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_610
  %_cond2_1_614 = icmp ugt i8* %_ptr_bt_610, %_parent_stack_end_ptr_
  %_cond2_2_615 = icmp ult i8* %_ptr_bt_610, %_parent_stack_start_ptr_
  %_cond2_616 = or i1 %_cond2_1_614, %_cond2_2_615
  %_cond4_617 = icmp ule i8* %_pot_address_in_parent_stack_612, %_parent_stack_end_ptr_
  %_cond1_n_cond2_618 = and i1 %_cond1_613, %_cond2_616
  %_cond1_n_cond2_cond3_619 = and i1 %_cond4_617, %_cond1_n_cond2_618
  %_address_in_parent_stack_bt_621 = bitcast i8* %_pot_address_in_parent_stack_612 to i32*
  %206 = select i1 %_cond1_n_cond2_cond3_619, i32* %_address_in_parent_stack_bt_621, i32* %205
  %_new_load_622 = load i32, i32* %206, align 4
  %207 = add i32 %_new_load_592, %_new_load_622, !mcsema_real_eip !58
  %208 = xor i32 %207, %_new_load_622, !mcsema_real_eip !58
  %209 = xor i32 %208, %_new_load_592, !mcsema_real_eip !58
  %210 = and i32 %209, 16, !mcsema_real_eip !58
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !58
  store i1 %211, i1* %AF, align 1, !mcsema_real_eip !58
  %212 = icmp slt i32 %207, 0
  store i1 %212, i1* %SF, align 1, !mcsema_real_eip !58
  %213 = icmp eq i32 %207, 0, !mcsema_real_eip !58
  store i1 %213, i1* %ZF, align 1, !mcsema_real_eip !58
  %214 = xor i32 %_new_load_622, -2147483648, !mcsema_real_eip !58
  %215 = xor i32 %214, %_new_load_592, !mcsema_real_eip !58
  %216 = and i32 %208, %215, !mcsema_real_eip !58
  %217 = icmp slt i32 %216, 0
  store i1 %217, i1* %OF, align 1, !mcsema_real_eip !58
  %218 = trunc i32 %207 to i8, !mcsema_real_eip !58
  %219 = call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !58
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !58
  %222 = icmp ult i32 %207, %_new_load_622, !mcsema_real_eip !58
  store i1 %222, i1* %CF, align 1, !mcsema_real_eip !58
  %223 = zext i32 %207 to i64, !mcsema_real_eip !58
  store i64 %223, i64* %XSI, align 8, !mcsema_real_eip !58
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -72
  %_ptr_to_int_623 = ptrtoint i8* %_new_gep_128 to i64
  %_offset_above_rbp_626 = sub i64 %_ptr_to_int_623, %_local_end_to_int_
  %_pot_address_in_parent_stack_627 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_626
  %_cond1_628 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_629 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_630 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_631 = or i1 %_cond2_1_629, %_cond2_2_630
  %_cond4_632 = icmp ule i8* %_pot_address_in_parent_stack_627, %_parent_stack_end_ptr_
  %_cond1_n_cond2_633 = and i1 %_cond1_628, %_cond2_631
  %_cond1_n_cond2_cond3_634 = and i1 %_cond1_n_cond2_633, %_cond4_632
  %_address_in_parent_stack_bt_636._allin_new_bt_129.v = select i1 %_cond1_n_cond2_cond3_634, i8* %_pot_address_in_parent_stack_627, i8* %_new_gep_128
  %_address_in_parent_stack_bt_636._allin_new_bt_129 = bitcast i8* %_address_in_parent_stack_bt_636._allin_new_bt_129.v to i64*
  %_new_load_637 = load i64, i64* %_address_in_parent_stack_bt_636._allin_new_bt_129, align 8
  store i64 %_new_load_637, i64* %XCX, align 8, !mcsema_real_eip !59
  %224 = add i64 %_new_load_637, 8, !mcsema_real_eip !60
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !60
  %_ptr_bt_640 = inttoptr i64 %224 to i8*
  %_offset_above_rbp_641 = sub i64 %224, %_local_end_to_int_
  %_pot_address_in_parent_stack_642 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_641
  %_cond1_643 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_640
  %_cond2_1_644 = icmp ugt i8* %_ptr_bt_640, %_parent_stack_end_ptr_
  %_cond2_2_645 = icmp ult i8* %_ptr_bt_640, %_parent_stack_start_ptr_
  %_cond2_646 = or i1 %_cond2_1_644, %_cond2_2_645
  %_cond4_647 = icmp ule i8* %_pot_address_in_parent_stack_642, %_parent_stack_end_ptr_
  %_cond1_n_cond2_648 = and i1 %_cond1_643, %_cond2_646
  %_cond1_n_cond2_cond3_649 = and i1 %_cond4_647, %_cond1_n_cond2_648
  %_address_in_parent_stack_bt_651 = bitcast i8* %_pot_address_in_parent_stack_642 to i32*
  %226 = select i1 %_cond1_n_cond2_cond3_649, i32* %_address_in_parent_stack_bt_651, i32* %225
  %_new_load_652 = load i32, i32* %226, align 4
  %227 = add i32 %207, %_new_load_652, !mcsema_real_eip !60
  %228 = xor i32 %227, %_new_load_652, !mcsema_real_eip !60
  %229 = xor i32 %228, %207, !mcsema_real_eip !60
  %230 = and i32 %229, 16, !mcsema_real_eip !60
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !60
  store i1 %231, i1* %AF, align 1, !mcsema_real_eip !60
  %232 = icmp slt i32 %227, 0
  store i1 %232, i1* %SF, align 1, !mcsema_real_eip !60
  %233 = icmp eq i32 %227, 0, !mcsema_real_eip !60
  store i1 %233, i1* %ZF, align 1, !mcsema_real_eip !60
  %234 = xor i32 %_new_load_652, -2147483648, !mcsema_real_eip !60
  %235 = xor i32 %234, %207, !mcsema_real_eip !60
  %236 = and i32 %228, %235, !mcsema_real_eip !60
  %237 = icmp slt i32 %236, 0
  store i1 %237, i1* %OF, align 1, !mcsema_real_eip !60
  %238 = trunc i32 %227 to i8, !mcsema_real_eip !60
  %239 = call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !60
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  store i1 %241, i1* %PF, align 1, !mcsema_real_eip !60
  %242 = icmp ult i32 %227, %_new_load_652, !mcsema_real_eip !60
  store i1 %242, i1* %CF, align 1, !mcsema_real_eip !60
  %243 = zext i32 %227 to i64, !mcsema_real_eip !60
  store i64 %243, i64* %XSI, align 8, !mcsema_real_eip !60
  %RAX_val.114 = load i64, i64* %XAX, align 8, !mcsema_real_eip !61
  %244 = add i64 %RAX_val.114, 8, !mcsema_real_eip !61
  %245 = inttoptr i64 %244 to i32*, !mcsema_real_eip !61
  %_ptr_bt_655 = inttoptr i64 %244 to i8*
  %_offset_above_rbp_656 = sub i64 %244, %_local_end_to_int_
  %_pot_address_in_parent_stack_657 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_656
  %_cond1_658 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_655
  %_cond2_1_659 = icmp ugt i8* %_ptr_bt_655, %_parent_stack_end_ptr_
  %_cond2_2_660 = icmp ult i8* %_ptr_bt_655, %_parent_stack_start_ptr_
  %_cond2_661 = or i1 %_cond2_1_659, %_cond2_2_660
  %_cond4_662 = icmp ule i8* %_pot_address_in_parent_stack_657, %_parent_stack_end_ptr_
  %_cond1_n_cond2_663 = and i1 %_cond1_658, %_cond2_661
  %_cond1_n_cond2_cond3_664 = and i1 %_cond4_662, %_cond1_n_cond2_663
  %_address_in_parent_stack_bt_666 = bitcast i8* %_pot_address_in_parent_stack_657 to i32*
  %_address_in_parent_stack_bt_666. = select i1 %_cond1_n_cond2_cond3_664, i32* %_address_in_parent_stack_bt_666, i32* %245
  %_new_load_667 = load i32, i32* %_address_in_parent_stack_bt_666., align 4
  %246 = zext i32 %_new_load_667 to i64, !mcsema_real_eip !61
  store i64 %246, i64* %R8, align 8, !mcsema_real_eip !61
  %_new_gep_131 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -96
  %_ptr_to_int_668 = ptrtoint i8* %_new_gep_131 to i64
  %_offset_above_rbp_671 = sub i64 %_ptr_to_int_668, %_local_end_to_int_
  %_pot_address_in_parent_stack_672 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_671
  %_cond1_673 = icmp ugt i8* %_new_gep_131, %_local_stack_end_ptr_
  %_cond2_1_674 = icmp ugt i8* %_new_gep_131, %_parent_stack_end_ptr_
  %_cond2_2_675 = icmp ult i8* %_new_gep_131, %_parent_stack_start_ptr_
  %_cond2_676 = or i1 %_cond2_1_674, %_cond2_2_675
  %_cond4_677 = icmp ule i8* %_pot_address_in_parent_stack_672, %_parent_stack_end_ptr_
  %_cond1_n_cond2_678 = and i1 %_cond1_673, %_cond2_676
  %_cond1_n_cond2_cond3_679 = and i1 %_cond1_n_cond2_678, %_cond4_677
  %.v13 = select i1 %_cond1_n_cond2_cond3_679, i8* %_pot_address_in_parent_stack_672, i8* %_new_gep_131
  %247 = bitcast i8* %.v13 to i64*
  %_new_load_682 = load i64, i64* %247, align 8
  store i64 %_new_load_682, i64* %XCX, align 8, !mcsema_real_eip !62
  %248 = add i64 %_new_load_682, 8, !mcsema_real_eip !63
  %249 = inttoptr i64 %248 to i32*, !mcsema_real_eip !63
  %_ptr_bt_685 = inttoptr i64 %248 to i8*
  %_offset_above_rbp_686 = sub i64 %248, %_local_end_to_int_
  %_pot_address_in_parent_stack_687 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_686
  %_cond1_688 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_685
  %_cond2_1_689 = icmp ugt i8* %_ptr_bt_685, %_parent_stack_end_ptr_
  %_cond2_2_690 = icmp ult i8* %_ptr_bt_685, %_parent_stack_start_ptr_
  %_cond2_691 = or i1 %_cond2_1_689, %_cond2_2_690
  %_cond4_692 = icmp ule i8* %_pot_address_in_parent_stack_687, %_parent_stack_end_ptr_
  %_cond1_n_cond2_693 = and i1 %_cond1_688, %_cond2_691
  %_cond1_n_cond2_cond3_694 = and i1 %_cond4_692, %_cond1_n_cond2_693
  %_address_in_parent_stack_bt_696 = bitcast i8* %_pot_address_in_parent_stack_687 to i32*
  %_address_in_parent_stack_bt_696. = select i1 %_cond1_n_cond2_cond3_694, i32* %_address_in_parent_stack_bt_696, i32* %249
  %_new_load_697 = load i32, i32* %_address_in_parent_stack_bt_696., align 4
  %250 = add i32 %_new_load_667, %_new_load_697, !mcsema_real_eip !63
  %251 = xor i32 %250, %_new_load_697, !mcsema_real_eip !63
  %252 = xor i32 %251, %_new_load_667, !mcsema_real_eip !63
  %253 = and i32 %252, 16, !mcsema_real_eip !63
  %254 = icmp ne i32 %253, 0, !mcsema_real_eip !63
  store i1 %254, i1* %AF, align 1, !mcsema_real_eip !63
  %255 = icmp slt i32 %250, 0
  store i1 %255, i1* %SF, align 1, !mcsema_real_eip !63
  %256 = icmp eq i32 %250, 0, !mcsema_real_eip !63
  store i1 %256, i1* %ZF, align 1, !mcsema_real_eip !63
  %257 = xor i32 %_new_load_697, -2147483648, !mcsema_real_eip !63
  %258 = xor i32 %257, %_new_load_667, !mcsema_real_eip !63
  %259 = and i32 %251, %258, !mcsema_real_eip !63
  %260 = icmp slt i32 %259, 0
  store i1 %260, i1* %OF, align 1, !mcsema_real_eip !63
  %261 = trunc i32 %250 to i8, !mcsema_real_eip !63
  %262 = call i8 @llvm.ctpop.i8(i8 %261), !mcsema_real_eip !63
  %263 = and i8 %262, 1
  %264 = icmp eq i8 %263, 0
  store i1 %264, i1* %PF, align 1, !mcsema_real_eip !63
  %265 = icmp ult i32 %250, %_new_load_697, !mcsema_real_eip !63
  store i1 %265, i1* %CF, align 1, !mcsema_real_eip !63
  %266 = zext i32 %250 to i64, !mcsema_real_eip !63
  store i64 %266, i64* %R8, align 8, !mcsema_real_eip !63
  %_new_gep_134 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -104
  %_ptr_to_int_698 = ptrtoint i8* %_new_gep_134 to i64
  %_offset_above_rbp_701 = sub i64 %_ptr_to_int_698, %_local_end_to_int_
  %_pot_address_in_parent_stack_702 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_701
  %_cond1_703 = icmp ugt i8* %_new_gep_134, %_local_stack_end_ptr_
  %_cond2_1_704 = icmp ugt i8* %_new_gep_134, %_parent_stack_end_ptr_
  %_cond2_2_705 = icmp ult i8* %_new_gep_134, %_parent_stack_start_ptr_
  %_cond2_706 = or i1 %_cond2_1_704, %_cond2_2_705
  %_cond4_707 = icmp ule i8* %_pot_address_in_parent_stack_702, %_parent_stack_end_ptr_
  %_cond1_n_cond2_708 = and i1 %_cond1_703, %_cond2_706
  %_cond1_n_cond2_cond3_709 = and i1 %_cond1_n_cond2_708, %_cond4_707
  %.v14 = select i1 %_cond1_n_cond2_cond3_709, i8* %_pot_address_in_parent_stack_702, i8* %_new_gep_134
  %267 = bitcast i8* %.v14 to i64*
  %_new_load_712 = load i64, i64* %267, align 8
  store i64 %_new_load_712, i64* %XCX, align 8, !mcsema_real_eip !64
  %268 = add i64 %_new_load_712, 8, !mcsema_real_eip !65
  %269 = inttoptr i64 %268 to i32*, !mcsema_real_eip !65
  %_ptr_bt_715 = inttoptr i64 %268 to i8*
  %_offset_above_rbp_716 = sub i64 %268, %_local_end_to_int_
  %_pot_address_in_parent_stack_717 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_716
  %_cond1_718 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_715
  %_cond2_1_719 = icmp ugt i8* %_ptr_bt_715, %_parent_stack_end_ptr_
  %_cond2_2_720 = icmp ult i8* %_ptr_bt_715, %_parent_stack_start_ptr_
  %_cond2_721 = or i1 %_cond2_1_719, %_cond2_2_720
  %_cond4_722 = icmp ule i8* %_pot_address_in_parent_stack_717, %_parent_stack_end_ptr_
  %_cond1_n_cond2_723 = and i1 %_cond1_718, %_cond2_721
  %_cond1_n_cond2_cond3_724 = and i1 %_cond4_722, %_cond1_n_cond2_723
  %_address_in_parent_stack_bt_726 = bitcast i8* %_pot_address_in_parent_stack_717 to i32*
  %_address_in_parent_stack_bt_726. = select i1 %_cond1_n_cond2_cond3_724, i32* %_address_in_parent_stack_bt_726, i32* %269
  %_new_load_727 = load i32, i32* %_address_in_parent_stack_bt_726., align 4
  %270 = add i32 %250, %_new_load_727, !mcsema_real_eip !65
  %271 = zext i32 %270 to i64, !mcsema_real_eip !65
  store i64 %271, i64* %R8, align 8, !mcsema_real_eip !65
  %ESI_val.124 = load i32, i32* %ESI.19, align 4, !mcsema_real_eip !66
  %272 = add i32 %270, %ESI_val.124, !mcsema_real_eip !66
  %273 = xor i32 %272, %ESI_val.124, !mcsema_real_eip !66
  %274 = xor i32 %273, %270, !mcsema_real_eip !66
  %275 = and i32 %274, 16, !mcsema_real_eip !66
  %276 = icmp ne i32 %275, 0, !mcsema_real_eip !66
  store i1 %276, i1* %AF, align 1, !mcsema_real_eip !66
  %277 = icmp slt i32 %272, 0
  store i1 %277, i1* %SF, align 1, !mcsema_real_eip !66
  %278 = icmp eq i32 %272, 0, !mcsema_real_eip !66
  store i1 %278, i1* %ZF, align 1, !mcsema_real_eip !66
  %279 = xor i32 %ESI_val.124, -2147483648, !mcsema_real_eip !66
  %280 = xor i32 %279, %270, !mcsema_real_eip !66
  %281 = and i32 %273, %280, !mcsema_real_eip !66
  %282 = icmp slt i32 %281, 0
  store i1 %282, i1* %OF, align 1, !mcsema_real_eip !66
  %283 = trunc i32 %272 to i8, !mcsema_real_eip !66
  %284 = call i8 @llvm.ctpop.i8(i8 %283), !mcsema_real_eip !66
  %285 = and i8 %284, 1
  %286 = icmp eq i8 %285, 0
  store i1 %286, i1* %PF, align 1, !mcsema_real_eip !66
  %287 = icmp ult i32 %272, %ESI_val.124, !mcsema_real_eip !66
  store i1 %287, i1* %CF, align 1, !mcsema_real_eip !66
  %288 = zext i32 %272 to i64, !mcsema_real_eip !66
  store i64 %288, i64* %XSI, align 8, !mcsema_real_eip !66
  %_new_gep_137 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -112
  %_ptr_to_int_728 = ptrtoint i8* %_new_gep_137 to i64
  %_offset_above_rbp_731 = sub i64 %_ptr_to_int_728, %_local_end_to_int_
  %_pot_address_in_parent_stack_732 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_731
  %_cond1_733 = icmp ugt i8* %_new_gep_137, %_local_stack_end_ptr_
  %_cond2_1_734 = icmp ugt i8* %_new_gep_137, %_parent_stack_end_ptr_
  %_cond2_2_735 = icmp ult i8* %_new_gep_137, %_parent_stack_start_ptr_
  %_cond2_736 = or i1 %_cond2_1_734, %_cond2_2_735
  %_cond4_737 = icmp ule i8* %_pot_address_in_parent_stack_732, %_parent_stack_end_ptr_
  %_cond1_n_cond2_738 = and i1 %_cond1_733, %_cond2_736
  %_cond1_n_cond2_cond3_739 = and i1 %_cond1_n_cond2_738, %_cond4_737
  %.v15 = select i1 %_cond1_n_cond2_cond3_739, i8* %_pot_address_in_parent_stack_732, i8* %_new_gep_137
  %289 = bitcast i8* %.v15 to i64*
  %_new_load_742 = load i64, i64* %289, align 8
  store i64 %_new_load_742, i64* %XCX, align 8, !mcsema_real_eip !67
  %290 = add i64 %_new_load_742, 8, !mcsema_real_eip !68
  %291 = inttoptr i64 %290 to i32*, !mcsema_real_eip !68
  store i32 %272, i32* %291, align 4, !mcsema_real_eip !68
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_139 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_140 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_139, i64 -112
  %_ptr_to_int_743 = ptrtoint i8* %_new_gep_140 to i64
  %_offset_above_rbp_746 = sub i64 %_ptr_to_int_743, %_local_end_to_int_
  %_pot_address_in_parent_stack_747 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_746
  %_cond1_748 = icmp ugt i8* %_new_gep_140, %_local_stack_end_ptr_
  %_cond2_1_749 = icmp ugt i8* %_new_gep_140, %_parent_stack_end_ptr_
  %_cond2_2_750 = icmp ult i8* %_new_gep_140, %_parent_stack_start_ptr_
  %_cond2_751 = or i1 %_cond2_1_749, %_cond2_2_750
  %_cond4_752 = icmp ule i8* %_pot_address_in_parent_stack_747, %_parent_stack_end_ptr_
  %_cond1_n_cond2_753 = and i1 %_cond1_748, %_cond2_751
  %_cond1_n_cond2_cond3_754 = and i1 %_cond1_n_cond2_753, %_cond4_752
  %_address_in_parent_stack_bt_756._allin_new_bt_141.v = select i1 %_cond1_n_cond2_cond3_754, i8* %_pot_address_in_parent_stack_747, i8* %_new_gep_140
  %_address_in_parent_stack_bt_756._allin_new_bt_141 = bitcast i8* %_address_in_parent_stack_bt_756._allin_new_bt_141.v to i64*
  %_new_load_757 = load i64, i64* %_address_in_parent_stack_bt_756._allin_new_bt_141, align 8
  store i64 %_new_load_757, i64* %XAX, align 8, !mcsema_real_eip !69
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.132 = load i64, i64* %XSP, align 8, !mcsema_real_eip !70
  %_new_gep_143 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 104
  %292 = add i64 %RSP_val.132, 104, !mcsema_real_eip !70
  %_trans_p2i_144 = ptrtoint i8* %_new_gep_143 to i64
  %_trans_p2i_145 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142 to i64
  %_trans_xor_146 = xor i64 %_trans_p2i_144, %_trans_p2i_145
  %293 = and i64 %_trans_xor_146, 16, !mcsema_real_eip !70
  %294 = icmp ne i64 %293, 0, !mcsema_real_eip !70
  store i1 %294, i1* %AF, align 1, !mcsema_real_eip !70
  %295 = icmp slt i64 %292, 0
  store i1 %295, i1* %SF, align 1, !mcsema_real_eip !70
  %_trans_icmp_eq_148 = icmp eq i8* %_new_gep_143, null
  store i1 %_trans_icmp_eq_148, i1* %ZF, align 1, !mcsema_real_eip !70
  %296 = xor i64 %_trans_p2i_145, -9223372036854775808, !mcsema_real_eip !70
  %297 = and i64 %_trans_xor_146, %296, !mcsema_real_eip !70
  %298 = icmp slt i64 %297, 0
  store i1 %298, i1* %OF, align 1, !mcsema_real_eip !70
  %_trans_trunc_155 = trunc i64 %_trans_p2i_144 to i8
  %299 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_155), !mcsema_real_eip !70
  %300 = and i8 %299, 1
  %301 = icmp eq i8 %300, 0
  store i1 %301, i1* %PF, align 1, !mcsema_real_eip !70
  %_trans_icmp_ne_157 = icmp ne i64 %RSP_val.132, %_trans_p2i_144
  store i1 %_trans_icmp_ne_157, i1* %CF, align 1, !mcsema_real_eip !70
  store volatile i8* %_new_gep_143, i8** %_RSP_ptr_, align 8
  store i64 %292, i64* %XSP, align 8, !mcsema_real_eip !70
  %_offset_above_rbp_761 = sub i64 %_trans_p2i_144, %_local_end_to_int_
  %_pot_address_in_parent_stack_762 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_761
  %_cond1_763 = icmp ugt i8* %_new_gep_143, %_local_stack_end_ptr_
  %_cond2_1_764 = icmp ugt i8* %_new_gep_143, %_parent_stack_end_ptr_
  %_cond2_2_765 = icmp ult i8* %_new_gep_143, %_parent_stack_start_ptr_
  %_cond2_766 = or i1 %_cond2_1_764, %_cond2_2_765
  %_cond4_767 = icmp ule i8* %_pot_address_in_parent_stack_762, %_parent_stack_end_ptr_
  %_cond1_n_cond2_768 = and i1 %_cond1_763, %_cond2_766
  %_cond1_n_cond2_cond3_769 = and i1 %_cond1_n_cond2_768, %_cond4_767
  %.v16 = select i1 %_cond1_n_cond2_cond3_769, i8* %_pot_address_in_parent_stack_762, i8* %_new_gep_143
  %302 = bitcast i8* %.v16 to i64*
  %_new_load_772 = load i64, i64* %302, align 8
  store i64 %_new_load_772, i64* %XBX, align 8, !mcsema_real_eip !71
  %_new_gep_160 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 112
  %303 = add i64 %RSP_val.132, 112, !mcsema_real_eip !71
  store volatile i8* %_new_gep_160, i8** %_RSP_ptr_, align 8
  store i64 %303, i64* %XSP, align 8, !mcsema_real_eip !71
  %_ptr_to_int_773 = ptrtoint i8* %_new_gep_160 to i64
  %_offset_above_rbp_776 = sub i64 %_ptr_to_int_773, %_local_end_to_int_
  %_pot_address_in_parent_stack_777 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_776
  %_cond1_778 = icmp ugt i8* %_new_gep_160, %_local_stack_end_ptr_
  %_cond2_1_779 = icmp ugt i8* %_new_gep_160, %_parent_stack_end_ptr_
  %_cond2_2_780 = icmp ult i8* %_new_gep_160, %_parent_stack_start_ptr_
  %_cond2_781 = or i1 %_cond2_1_779, %_cond2_2_780
  %_cond4_782 = icmp ule i8* %_pot_address_in_parent_stack_777, %_parent_stack_end_ptr_
  %_cond1_n_cond2_783 = and i1 %_cond1_778, %_cond2_781
  %_cond1_n_cond2_cond3_784 = and i1 %_cond1_n_cond2_783, %_cond4_782
  %_address_in_parent_stack_bt_786._allin_new_bt_162.v = select i1 %_cond1_n_cond2_cond3_784, i8* %_pot_address_in_parent_stack_777, i8* %_new_gep_160
  %_address_in_parent_stack_bt_786._allin_new_bt_162 = bitcast i8* %_address_in_parent_stack_bt_786._allin_new_bt_162.v to i64*
  %_new_load_787 = load i64, i64* %_address_in_parent_stack_bt_786._allin_new_bt_162, align 8
  store i64 %_new_load_787, i64* %R14, align 8, !mcsema_real_eip !72
  %_new_gep_163 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 120
  %304 = add i64 %RSP_val.132, 120, !mcsema_real_eip !72
  store volatile i8* %_new_gep_163, i8** %_RSP_ptr_, align 8
  store i64 %304, i64* %XSP, align 8, !mcsema_real_eip !72
  %_ptr_to_int_788 = ptrtoint i8* %_new_gep_163 to i64
  %_offset_above_rbp_791 = sub i64 %_ptr_to_int_788, %_local_end_to_int_
  %_pot_address_in_parent_stack_792 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_791
  %_cond1_793 = icmp ugt i8* %_new_gep_163, %_local_stack_end_ptr_
  %_cond2_1_794 = icmp ugt i8* %_new_gep_163, %_parent_stack_end_ptr_
  %_cond2_2_795 = icmp ult i8* %_new_gep_163, %_parent_stack_start_ptr_
  %_cond2_796 = or i1 %_cond2_1_794, %_cond2_2_795
  %_cond4_797 = icmp ule i8* %_pot_address_in_parent_stack_792, %_parent_stack_end_ptr_
  %_cond1_n_cond2_798 = and i1 %_cond1_793, %_cond2_796
  %_cond1_n_cond2_cond3_799 = and i1 %_cond1_n_cond2_798, %_cond4_797
  %.v17 = select i1 %_cond1_n_cond2_cond3_799, i8* %_pot_address_in_parent_stack_792, i8* %_new_gep_163
  %305 = bitcast i8* %.v17 to i64*
  %_new_load_802 = load i64, i64* %305, align 8
  store i64 %_new_load_802, i64* %R15, align 8, !mcsema_real_eip !73
  %_new_gep_166 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 128
  %306 = add i64 %RSP_val.132, 128, !mcsema_real_eip !73
  store volatile i8* %_new_gep_166, i8** %_RSP_ptr_, align 8
  store i64 %306, i64* %XSP, align 8, !mcsema_real_eip !73
  %_ptr_to_int_803 = ptrtoint i8* %_new_gep_166 to i64
  %_offset_above_rbp_806 = sub i64 %_ptr_to_int_803, %_local_end_to_int_
  %_pot_address_in_parent_stack_807 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_806
  %_cond1_808 = icmp ugt i8* %_new_gep_166, %_local_stack_end_ptr_
  %_cond2_1_809 = icmp ugt i8* %_new_gep_166, %_parent_stack_end_ptr_
  %_cond2_2_810 = icmp ult i8* %_new_gep_166, %_parent_stack_start_ptr_
  %_cond2_811 = or i1 %_cond2_1_809, %_cond2_2_810
  %_cond4_812 = icmp ule i8* %_pot_address_in_parent_stack_807, %_parent_stack_end_ptr_
  %_cond1_n_cond2_813 = and i1 %_cond1_808, %_cond2_811
  %_cond1_n_cond2_cond3_814 = and i1 %_cond1_n_cond2_813, %_cond4_812
  %_address_in_parent_stack_bt_816._allin_new_bt_168.v = select i1 %_cond1_n_cond2_cond3_814, i8* %_pot_address_in_parent_stack_807, i8* %_new_gep_166
  %_address_in_parent_stack_bt_816._allin_new_bt_168 = bitcast i8* %_address_in_parent_stack_bt_816._allin_new_bt_168.v to i64*
  %_new_load_817 = load i64, i64* %_address_in_parent_stack_bt_816._allin_new_bt_168, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_817 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_817, i64* %XBP, align 8, !mcsema_real_eip !74
  %_new_gep_169 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 136
  %307 = add i64 %RSP_val.132, 136, !mcsema_real_eip !74
  store volatile i8* %_new_gep_169, i8** %_RSP_ptr_, align 8
  store i64 %307, i64* %XSP, align 8, !mcsema_real_eip !74
  %_new_gep_171 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 144
  %308 = add i64 %RSP_val.132, 144, !mcsema_real_eip !75
  %_ptr_to_int_818 = ptrtoint i8* %_new_gep_169 to i64
  %_offset_above_rbp_821 = sub i64 %_ptr_to_int_818, %_local_end_to_int_
  %_pot_address_in_parent_stack_822 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_821
  %_cond1_823 = icmp ugt i8* %_new_gep_169, %_local_stack_end_ptr_
  %_cond2_1_824 = icmp ugt i8* %_new_gep_169, %_parent_stack_end_ptr_
  %_cond2_2_825 = icmp ult i8* %_new_gep_169, %_parent_stack_start_ptr_
  %_cond2_826 = or i1 %_cond2_1_824, %_cond2_2_825
  %_cond4_827 = icmp ule i8* %_pot_address_in_parent_stack_822, %_parent_stack_end_ptr_
  %_cond1_n_cond2_828 = and i1 %_cond1_823, %_cond2_826
  %_cond1_n_cond2_cond3_829 = and i1 %_cond1_n_cond2_828, %_cond4_827
  %.v18 = select i1 %_cond1_n_cond2_cond3_829, i8* %_pot_address_in_parent_stack_822, i8* %_new_gep_169
  %309 = bitcast i8* %.v18 to i64*
  %_new_load_832 = load i64, i64* %309, align 8
  store i64 %_new_load_832, i64* %XIP, align 8, !mcsema_real_eip !75
  store volatile i8* %_new_gep_171, i8** %_RSP_ptr_, align 8
  store i64 %308, i64* %XSP, align 8, !mcsema_real_eip !75
  ret void, !mcsema_real_eip !75
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_100.2(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [144 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 144
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !76
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !76
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !76
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !76
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !76
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !76
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !76
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !76
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !76
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !76
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !76
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !76
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !76
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !76
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !76
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !76
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !76
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !76
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !76
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !76
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !76
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !76
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !76
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !76
  %RSP_val.139 = load i64, i64* %XSP, align 8, !mcsema_real_eip !76
  %_new_gep_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 136
  %1 = add i64 %RSP_val.139, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !77
  %_new_gep_3 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.139, -136
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !78
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !78
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !78
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !78
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !78
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !78
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !78
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 128 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !78
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !78
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !78
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 12, i64* %XAX, align 8, !mcsema_real_eip !79
  store i64 12, i64* %XDI, align 8, !mcsema_real_eip !80
  %_new_gep_17 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %11 = bitcast i8* %_new_gep_17 to <4 x i32>*
  store <4 x i32> <i32 10, i32 10, i32 10, i32 0>, <4 x i32>* %11, align 8
  %_new_gep_26 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.139, -144
  %_allin_new_bt_27 = bitcast [144 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !81
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !81
  %13 = call x86_64_sysvcc i64 @_malloc(i64 12)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XAX, align 8, !mcsema_real_eip !81
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -16
  %14 = ptrtoint i8* %_new_gep_29 to i64
  store i64 %14, i64* %XDI, align 8, !mcsema_real_eip !82
  %15 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %15, align 8
  store i64 3, i64* %XCX, align 8, !mcsema_real_eip !83
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %13, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !84
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -24
  %_ptr_to_int_ = ptrtoint i8* %_new_gep_35 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_35
  %16 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %16, align 8
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !85
  %17 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !86
  store i32 5, i32* %17, align 4, !mcsema_real_eip !86
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -24
  %_ptr_to_int_175 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_178 = sub i64 %_ptr_to_int_175, %_local_end_to_int_
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  %_address_in_parent_stack_bt_188._allin_new_bt_39.v = select i1 %_cond1_n_cond2_cond3_186, i8* %_pot_address_in_parent_stack_179, i8* %_new_gep_38
  %_address_in_parent_stack_bt_188._allin_new_bt_39 = bitcast i8* %_address_in_parent_stack_bt_188._allin_new_bt_39.v to i64*
  %_new_load_189 = load i64, i64* %_address_in_parent_stack_bt_188._allin_new_bt_39, align 8
  store i64 %_new_load_189, i64* %XAX, align 8, !mcsema_real_eip !87
  %18 = add i64 %_new_load_189, 4, !mcsema_real_eip !88
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !88
  store i32 5, i32* %19, align 4, !mcsema_real_eip !88
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -24
  %_ptr_to_int_190 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_193 = sub i64 %_ptr_to_int_190, %_local_end_to_int_
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  %.v2 = select i1 %_cond1_n_cond2_cond3_201, i8* %_pot_address_in_parent_stack_194, i8* %_new_gep_41
  %20 = bitcast i8* %.v2 to i64*
  %_new_load_204 = load i64, i64* %20, align 8
  store i64 %_new_load_204, i64* %XAX, align 8, !mcsema_real_eip !89
  %21 = add i64 %_new_load_204, 8, !mcsema_real_eip !90
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !90
  store i32 5, i32* %22, align 4, !mcsema_real_eip !90
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -24
  %_ptr_to_int_205 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_208 = sub i64 %_ptr_to_int_205, %_local_end_to_int_
  %_pot_address_in_parent_stack_209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_208
  %_cond1_210 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_211 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_212 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_213 = or i1 %_cond2_1_211, %_cond2_2_212
  %_cond4_214 = icmp ule i8* %_pot_address_in_parent_stack_209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_215 = and i1 %_cond1_210, %_cond2_213
  %_cond1_n_cond2_cond3_216 = and i1 %_cond1_n_cond2_215, %_cond4_214
  %_address_in_parent_stack_bt_218._allin_new_bt_45.v = select i1 %_cond1_n_cond2_cond3_216, i8* %_pot_address_in_parent_stack_209, i8* %_new_gep_44
  %_address_in_parent_stack_bt_218._allin_new_bt_45 = bitcast i8* %_address_in_parent_stack_bt_218._allin_new_bt_45.v to i64*
  %_new_load_219 = load i64, i64* %_address_in_parent_stack_bt_218._allin_new_bt_45, align 8
  store i64 %_new_load_219, i64* %XAX, align 8, !mcsema_real_eip !91
  %_new_load_234 = load i64, i64* %_address_in_parent_stack_bt_218._allin_new_bt_45, align 8
  store i64 %_new_load_234, i64* %XDX, align 8, !mcsema_real_eip !92
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -16
  %_ptr_to_int_235 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %_local_end_to_int_
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  %_address_in_parent_stack_bt_248._allin_new_bt_51.v = select i1 %_cond1_n_cond2_cond3_246, i8* %_pot_address_in_parent_stack_239, i8* %_new_gep_50
  %_address_in_parent_stack_bt_248._allin_new_bt_51 = bitcast i8* %_address_in_parent_stack_bt_248._allin_new_bt_51.v to i64*
  %_new_load_249 = load i64, i64* %_address_in_parent_stack_bt_248._allin_new_bt_51, align 8
  store i64 %_new_load_249, i64* %XSI, align 8, !mcsema_real_eip !93
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -48
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 %_new_load_249, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !94
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -8
  %23 = ptrtoint i8* %_new_gep_56 to i64
  %_offset_above_rbp_253 = sub i64 %23, %_local_end_to_int_
  %_pot_address_in_parent_stack_254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_253
  %_cond1_255 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_256 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_257 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_258 = or i1 %_cond2_1_256, %_cond2_2_257
  %_cond4_259 = icmp ule i8* %_pot_address_in_parent_stack_254, %_parent_stack_end_ptr_
  %_cond1_n_cond2_260 = and i1 %_cond1_255, %_cond2_258
  %_cond1_n_cond2_cond3_261 = and i1 %_cond1_n_cond2_260, %_cond4_259
  %.v3 = select i1 %_cond1_n_cond2_cond3_261, i8* %_pot_address_in_parent_stack_254, i8* %_new_gep_56
  %24 = bitcast i8* %.v3 to i32*
  %_new_load_264 = load i32, i32* %24, align 4
  %25 = zext i32 %_new_load_264 to i64, !mcsema_real_eip !95
  store i64 %25, i64* %R10, align 8, !mcsema_real_eip !95
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -40
  %R10D.166 = bitcast i64* %R10 to i32*, !mcsema_real_eip !96
  %26 = bitcast i8* %_new_gep_59 to i32*
  store i32 %_new_load_264, i32* %26, align 4, !mcsema_real_eip !96
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -48
  %_ptr_to_int_265 = ptrtoint i8* %_new_gep_62 to i64
  %_offset_above_rbp_268 = sub i64 %_ptr_to_int_265, %_local_end_to_int_
  %_pot_address_in_parent_stack_269 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_268
  %_cond1_270 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_271 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_272 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_273 = or i1 %_cond2_1_271, %_cond2_2_272
  %_cond4_274 = icmp ule i8* %_pot_address_in_parent_stack_269, %_parent_stack_end_ptr_
  %_cond1_n_cond2_275 = and i1 %_cond1_270, %_cond2_273
  %_cond1_n_cond2_cond3_276 = and i1 %_cond1_n_cond2_275, %_cond4_274
  %_address_in_parent_stack_bt_278._allin_new_bt_63.v = select i1 %_cond1_n_cond2_cond3_276, i8* %_pot_address_in_parent_stack_269, i8* %_new_gep_62
  %_address_in_parent_stack_bt_278._allin_new_bt_63 = bitcast i8* %_address_in_parent_stack_bt_278._allin_new_bt_63.v to i64*
  %_new_load_279 = load i64, i64* %_address_in_parent_stack_bt_278._allin_new_bt_63, align 8
  store i64 %_new_load_279, i64* %XSI, align 8, !mcsema_real_eip !97
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -40
  %27 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_283 = sub i64 %27, %_local_end_to_int_
  %_pot_address_in_parent_stack_284 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_283
  %_cond1_285 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_286 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_287 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_288 = or i1 %_cond2_1_286, %_cond2_2_287
  %_cond4_289 = icmp ule i8* %_pot_address_in_parent_stack_284, %_parent_stack_end_ptr_
  %_cond1_n_cond2_290 = and i1 %_cond1_285, %_cond2_288
  %_cond1_n_cond2_cond3_291 = and i1 %_cond1_n_cond2_290, %_cond4_289
  %.v4 = select i1 %_cond1_n_cond2_cond3_291, i8* %_pot_address_in_parent_stack_284, i8* %_new_gep_65
  %28 = bitcast i8* %.v4 to i32*
  %_new_load_294 = load i32, i32* %28, align 4
  %29 = zext i32 %_new_load_294 to i64, !mcsema_real_eip !98
  store i64 %29, i64* %R10, align 8, !mcsema_real_eip !98
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -64
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %RDI_val.171 = load i64, i64* %XDI, align 8, !mcsema_real_eip !99
  store i64 %RDI_val.171, i64* %_allin_new_bt_69, align 8, !mcsema_real_eip !99
  %RSI_val.172 = load i64, i64* %XSI, align 8, !mcsema_real_eip !100
  store i64 %RSI_val.172, i64* %XDI, align 8, !mcsema_real_eip !100
  %R10D_val.174 = load i32, i32* %R10D.166, align 4, !mcsema_real_eip !101
  %30 = zext i32 %R10D_val.174 to i64, !mcsema_real_eip !101
  store i64 %30, i64* %XSI, align 8, !mcsema_real_eip !101
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70, i64 -64
  %_ptr_to_int_295 = ptrtoint i8* %_new_gep_71 to i64
  %_offset_above_rbp_298 = sub i64 %_ptr_to_int_295, %_local_end_to_int_
  %_pot_address_in_parent_stack_299 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_298
  %_cond1_300 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_301 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_302 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_303 = or i1 %_cond2_1_301, %_cond2_2_302
  %_cond4_304 = icmp ule i8* %_pot_address_in_parent_stack_299, %_parent_stack_end_ptr_
  %_cond1_n_cond2_305 = and i1 %_cond1_300, %_cond2_303
  %_cond1_n_cond2_cond3_306 = and i1 %_cond1_n_cond2_305, %_cond4_304
  %_address_in_parent_stack_bt_308._allin_new_bt_72.v = select i1 %_cond1_n_cond2_cond3_306, i8* %_pot_address_in_parent_stack_299, i8* %_new_gep_71
  %_address_in_parent_stack_bt_308._allin_new_bt_72 = bitcast i8* %_address_in_parent_stack_bt_308._allin_new_bt_72.v to i64*
  %_new_load_309 = load i64, i64* %_address_in_parent_stack_bt_308._allin_new_bt_72, align 8
  store i64 %_new_load_309, i64* %R11, align 8, !mcsema_real_eip !102
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70, i64 -72
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %RDX_val.177 = load i64, i64* %XDX, align 8, !mcsema_real_eip !103
  store i64 %RDX_val.177, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !103
  %R11_val.178 = load i64, i64* %R11, align 8, !mcsema_real_eip !104
  store i64 %R11_val.178, i64* %XDX, align 8, !mcsema_real_eip !104
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_77 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_76, i64 -76
  %ECX.180 = bitcast i64* %XCX to i32*, !mcsema_real_eip !105
  %ECX_val.181 = load i32, i32* %ECX.180, align 4, !mcsema_real_eip !105
  %31 = bitcast i8* %_new_gep_77 to i32*
  store i32 %ECX_val.181, i32* %31, align 4, !mcsema_real_eip !105
  %RAX_val.182 = load i64, i64* %XAX, align 8, !mcsema_real_eip !106
  store i64 %RAX_val.182, i64* %XCX, align 8, !mcsema_real_eip !106
  %32 = bitcast i8** %_RSP_ptr_ to i32**
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_7956716 = load i32*, i32** %32, align 8
  store i32 3, i32* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_7956716, align 4, !mcsema_real_eip !107
  %R11_val.184 = load i64, i64* %R11, align 8, !mcsema_real_eip !108
  %33 = inttoptr i64 %R11_val.184 to i64*, !mcsema_real_eip !108
  %_ptr_bt_312 = inttoptr i64 %R11_val.184 to i8*
  %_offset_above_rbp_313 = sub i64 %R11_val.184, %_local_end_to_int_
  %_pot_address_in_parent_stack_314 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_313
  %_cond1_315 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_312
  %_cond2_1_316 = icmp ugt i8* %_ptr_bt_312, %_parent_stack_end_ptr_
  %_cond2_2_317 = icmp ult i8* %_ptr_bt_312, %_parent_stack_start_ptr_
  %_cond2_318 = or i1 %_cond2_1_316, %_cond2_2_317
  %_cond4_319 = icmp ule i8* %_pot_address_in_parent_stack_314, %_parent_stack_end_ptr_
  %_cond1_n_cond2_320 = and i1 %_cond1_315, %_cond2_318
  %_cond1_n_cond2_cond3_321 = and i1 %_cond4_319, %_cond1_n_cond2_320
  %_address_in_parent_stack_bt_323 = bitcast i8* %_pot_address_in_parent_stack_314 to i64*
  %34 = select i1 %_cond1_n_cond2_cond3_321, i64* %_address_in_parent_stack_bt_323, i64* %33
  %_new_load_324 = load i64, i64* %34, align 8
  store i64 %_new_load_324, i64* %XAX, align 8, !mcsema_real_eip !108
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_83 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82, i64 8
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  store i64 %_new_load_324, i64* %_allin_new_bt_84, align 8, !mcsema_real_eip !109
  %R11_val.187 = load i64, i64* %R11, align 8, !mcsema_real_eip !110
  %35 = add i64 %R11_val.187, 8, !mcsema_real_eip !110
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !110
  %_ptr_bt_327 = inttoptr i64 %35 to i8*
  %_offset_above_rbp_328 = sub i64 %35, %_local_end_to_int_
  %_pot_address_in_parent_stack_329 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_328
  %_cond1_330 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_327
  %_cond2_1_331 = icmp ugt i8* %_ptr_bt_327, %_parent_stack_end_ptr_
  %_cond2_2_332 = icmp ult i8* %_ptr_bt_327, %_parent_stack_start_ptr_
  %_cond2_333 = or i1 %_cond2_1_331, %_cond2_2_332
  %_cond4_334 = icmp ule i8* %_pot_address_in_parent_stack_329, %_parent_stack_end_ptr_
  %_cond1_n_cond2_335 = and i1 %_cond1_330, %_cond2_333
  %_cond1_n_cond2_cond3_336 = and i1 %_cond4_334, %_cond1_n_cond2_335
  %_address_in_parent_stack_bt_338 = bitcast i8* %_pot_address_in_parent_stack_329 to i32*
  %_address_in_parent_stack_bt_338. = select i1 %_cond1_n_cond2_cond3_336, i32* %_address_in_parent_stack_bt_338, i32* %36
  %_new_load_339 = load i32, i32* %_address_in_parent_stack_bt_338., align 4
  %37 = zext i32 %_new_load_339 to i64, !mcsema_real_eip !110
  store i64 %37, i64* %R10, align 8, !mcsema_real_eip !110
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_86 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85, i64 16
  %38 = bitcast i8* %_new_gep_86 to i32*
  store i32 %_new_load_339, i32* %38, align 4, !mcsema_real_eip !111
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_89 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88, i64 24
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %R11_val.192 = load i64, i64* %R11, align 8, !mcsema_real_eip !112
  store i64 %R11_val.192, i64* %_allin_new_bt_90, align 8, !mcsema_real_eip !112
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_91, i64 -72
  %_ptr_to_int_340 = ptrtoint i8* %_new_gep_92 to i64
  %_offset_above_rbp_343 = sub i64 %_ptr_to_int_340, %_local_end_to_int_
  %_pot_address_in_parent_stack_344 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_343
  %_cond1_345 = icmp ugt i8* %_new_gep_92, %_local_stack_end_ptr_
  %_cond2_1_346 = icmp ugt i8* %_new_gep_92, %_parent_stack_end_ptr_
  %_cond2_2_347 = icmp ult i8* %_new_gep_92, %_parent_stack_start_ptr_
  %_cond2_348 = or i1 %_cond2_1_346, %_cond2_2_347
  %_cond4_349 = icmp ule i8* %_pot_address_in_parent_stack_344, %_parent_stack_end_ptr_
  %_cond1_n_cond2_350 = and i1 %_cond1_345, %_cond2_348
  %_cond1_n_cond2_cond3_351 = and i1 %_cond1_n_cond2_350, %_cond4_349
  %.v8 = select i1 %_cond1_n_cond2_cond3_351, i8* %_pot_address_in_parent_stack_344, i8* %_new_gep_92
  %39 = bitcast i8* %.v8 to i64*
  %_new_load_354 = load i64, i64* %39, align 8
  store i64 %_new_load_354, i64* %XAX, align 8, !mcsema_real_eip !113
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_94 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_94, i64 32
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  store i64 %_new_load_354, i64* %_allin_new_bt_96, align 8, !mcsema_real_eip !114
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.196 = load i64, i64* %XSP, align 8, !mcsema_real_eip !115
  %_new_gep_98 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 -8
  %40 = add i64 %RSP_val.196, -8
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, align 8, !mcsema_real_eip !115
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_, align 8
  store i64 %40, i64* %XSP, align 8, !mcsema_real_eip !115
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_169 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_169)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_171 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_172 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_171, i64 8
  store i8* %_gep_fix_172, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, align 8, !mcsema_real_eip !116
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_100, i64 -32
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %RAX_val.198 = load i64, i64* %XAX, align 8, !mcsema_real_eip !117
  store i64 %RAX_val.198, i64* %_allin_new_bt_102, align 8, !mcsema_real_eip !117
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -32
  %_ptr_to_int_355 = ptrtoint i8* %_new_gep_104 to i64
  %_offset_above_rbp_358 = sub i64 %_ptr_to_int_355, %_local_end_to_int_
  %_pot_address_in_parent_stack_359 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_358
  %_cond1_360 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_361 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_362 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_363 = or i1 %_cond2_1_361, %_cond2_2_362
  %_cond4_364 = icmp ule i8* %_pot_address_in_parent_stack_359, %_parent_stack_end_ptr_
  %_cond1_n_cond2_365 = and i1 %_cond1_360, %_cond2_363
  %_cond1_n_cond2_cond3_366 = and i1 %_cond1_n_cond2_365, %_cond4_364
  %_address_in_parent_stack_bt_368._allin_new_bt_105.v = select i1 %_cond1_n_cond2_cond3_366, i8* %_pot_address_in_parent_stack_359, i8* %_new_gep_104
  %_address_in_parent_stack_bt_368._allin_new_bt_105 = bitcast i8* %_address_in_parent_stack_bt_368._allin_new_bt_105.v to i64*
  %_new_load_369 = load i64, i64* %_address_in_parent_stack_bt_368._allin_new_bt_105, align 8
  store i64 %_new_load_369, i64* %XAX, align 8, !mcsema_real_eip !118
  %41 = inttoptr i64 %_new_load_369 to i32*, !mcsema_real_eip !119
  %_ptr_bt_372 = inttoptr i64 %_new_load_369 to i8*
  %_offset_above_rbp_373 = sub i64 %_new_load_369, %_local_end_to_int_
  %_pot_address_in_parent_stack_374 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_373
  %_cond1_375 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_372
  %_cond2_1_376 = icmp ugt i8* %_ptr_bt_372, %_parent_stack_end_ptr_
  %_cond2_2_377 = icmp ult i8* %_ptr_bt_372, %_parent_stack_start_ptr_
  %_cond2_378 = or i1 %_cond2_1_376, %_cond2_2_377
  %_cond4_379 = icmp ule i8* %_pot_address_in_parent_stack_374, %_parent_stack_end_ptr_
  %_cond1_n_cond2_380 = and i1 %_cond1_375, %_cond2_378
  %_cond1_n_cond2_cond3_381 = and i1 %_cond4_379, %_cond1_n_cond2_380
  %_address_in_parent_stack_bt_383 = bitcast i8* %_pot_address_in_parent_stack_374 to i32*
  %42 = select i1 %_cond1_n_cond2_cond3_381, i32* %_address_in_parent_stack_bt_383, i32* %41
  %_new_load_384 = load i32, i32* %42, align 4
  %43 = zext i32 %_new_load_384 to i64, !mcsema_real_eip !119
  store i64 %43, i64* %XSI, align 8, !mcsema_real_eip !119
  %_new_load_399 = load i64, i64* %_address_in_parent_stack_bt_368._allin_new_bt_105, align 8
  store i64 %_new_load_399, i64* %XAX, align 8, !mcsema_real_eip !120
  %44 = add i64 %_new_load_399, 4, !mcsema_real_eip !121
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !121
  %_ptr_bt_402 = inttoptr i64 %44 to i8*
  %_offset_above_rbp_403 = sub i64 %44, %_local_end_to_int_
  %_pot_address_in_parent_stack_404 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_403
  %_cond1_405 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_402
  %_cond2_1_406 = icmp ugt i8* %_ptr_bt_402, %_parent_stack_end_ptr_
  %_cond2_2_407 = icmp ult i8* %_ptr_bt_402, %_parent_stack_start_ptr_
  %_cond2_408 = or i1 %_cond2_1_406, %_cond2_2_407
  %_cond4_409 = icmp ule i8* %_pot_address_in_parent_stack_404, %_parent_stack_end_ptr_
  %_cond1_n_cond2_410 = and i1 %_cond1_405, %_cond2_408
  %_cond1_n_cond2_cond3_411 = and i1 %_cond4_409, %_cond1_n_cond2_410
  %_address_in_parent_stack_bt_413 = bitcast i8* %_pot_address_in_parent_stack_404 to i32*
  %46 = select i1 %_cond1_n_cond2_cond3_411, i32* %_address_in_parent_stack_bt_413, i32* %45
  %_new_load_414 = load i32, i32* %46, align 4
  %ESI.203 = bitcast i64* %XSI to i32*, !mcsema_real_eip !121
  %47 = add i32 %_new_load_384, %_new_load_414, !mcsema_real_eip !121
  %48 = xor i32 %47, %_new_load_414, !mcsema_real_eip !121
  %49 = xor i32 %48, %_new_load_384, !mcsema_real_eip !121
  %50 = and i32 %49, 16, !mcsema_real_eip !121
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !121
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !121
  %52 = icmp slt i32 %47, 0
  store i1 %52, i1* %SF, align 1, !mcsema_real_eip !121
  %53 = icmp eq i32 %47, 0, !mcsema_real_eip !121
  store i1 %53, i1* %ZF, align 1, !mcsema_real_eip !121
  %54 = xor i32 %_new_load_414, -2147483648, !mcsema_real_eip !121
  %55 = xor i32 %54, %_new_load_384, !mcsema_real_eip !121
  %56 = and i32 %48, %55, !mcsema_real_eip !121
  %57 = icmp slt i32 %56, 0
  store i1 %57, i1* %OF, align 1, !mcsema_real_eip !121
  %58 = trunc i32 %47 to i8, !mcsema_real_eip !121
  %59 = call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !121
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !121
  %62 = icmp ult i32 %47, %_new_load_414, !mcsema_real_eip !121
  store i1 %62, i1* %CF, align 1, !mcsema_real_eip !121
  %63 = zext i32 %47 to i64, !mcsema_real_eip !121
  store i64 %63, i64* %XSI, align 8, !mcsema_real_eip !121
  %_new_load_429 = load i64, i64* %_address_in_parent_stack_bt_368._allin_new_bt_105, align 8
  store i64 %_new_load_429, i64* %XAX, align 8, !mcsema_real_eip !122
  %64 = add i64 %_new_load_429, 8, !mcsema_real_eip !123
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !123
  %_ptr_bt_432 = inttoptr i64 %64 to i8*
  %_offset_above_rbp_433 = sub i64 %64, %_local_end_to_int_
  %_pot_address_in_parent_stack_434 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_433
  %_cond1_435 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_432
  %_cond2_1_436 = icmp ugt i8* %_ptr_bt_432, %_parent_stack_end_ptr_
  %_cond2_2_437 = icmp ult i8* %_ptr_bt_432, %_parent_stack_start_ptr_
  %_cond2_438 = or i1 %_cond2_1_436, %_cond2_2_437
  %_cond4_439 = icmp ule i8* %_pot_address_in_parent_stack_434, %_parent_stack_end_ptr_
  %_cond1_n_cond2_440 = and i1 %_cond1_435, %_cond2_438
  %_cond1_n_cond2_cond3_441 = and i1 %_cond4_439, %_cond1_n_cond2_440
  %_address_in_parent_stack_bt_443 = bitcast i8* %_pot_address_in_parent_stack_434 to i32*
  %66 = select i1 %_cond1_n_cond2_cond3_441, i32* %_address_in_parent_stack_bt_443, i32* %65
  %_new_load_444 = load i32, i32* %66, align 4
  %67 = add i32 %47, %_new_load_444, !mcsema_real_eip !123
  %68 = xor i32 %67, %_new_load_444, !mcsema_real_eip !123
  %69 = xor i32 %68, %47, !mcsema_real_eip !123
  %70 = and i32 %69, 16, !mcsema_real_eip !123
  %71 = icmp ne i32 %70, 0, !mcsema_real_eip !123
  store i1 %71, i1* %AF, align 1, !mcsema_real_eip !123
  %72 = icmp slt i32 %67, 0
  store i1 %72, i1* %SF, align 1, !mcsema_real_eip !123
  %73 = icmp eq i32 %67, 0, !mcsema_real_eip !123
  store i1 %73, i1* %ZF, align 1, !mcsema_real_eip !123
  %74 = xor i32 %_new_load_444, -2147483648, !mcsema_real_eip !123
  %75 = xor i32 %74, %47, !mcsema_real_eip !123
  %76 = and i32 %68, %75, !mcsema_real_eip !123
  %77 = icmp slt i32 %76, 0
  store i1 %77, i1* %OF, align 1, !mcsema_real_eip !123
  %78 = trunc i32 %67 to i8, !mcsema_real_eip !123
  %79 = call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !123
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !123
  %82 = icmp ult i32 %67, %_new_load_444, !mcsema_real_eip !123
  store i1 %82, i1* %CF, align 1, !mcsema_real_eip !123
  %83 = zext i32 %67 to i64, !mcsema_real_eip !123
  store i64 %83, i64* %XSI, align 8, !mcsema_real_eip !123
  %_new_gep_113 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -52
  %84 = bitcast i8* %_new_gep_113 to i32*
  store i32 %67, i32* %84, align 4, !mcsema_real_eip !124
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_115 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_116 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_115, i64 -52
  %85 = ptrtoint i8* %_new_gep_116 to i64
  %_offset_above_rbp_448 = sub i64 %85, %_local_end_to_int_
  %_pot_address_in_parent_stack_449 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_448
  %_cond1_450 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_451 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_452 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_453 = or i1 %_cond2_1_451, %_cond2_2_452
  %_cond4_454 = icmp ule i8* %_pot_address_in_parent_stack_449, %_parent_stack_end_ptr_
  %_cond1_n_cond2_455 = and i1 %_cond1_450, %_cond2_453
  %_cond1_n_cond2_cond3_456 = and i1 %_cond1_n_cond2_455, %_cond4_454
  %_address_in_parent_stack_bt_458..v = select i1 %_cond1_n_cond2_cond3_456, i8* %_pot_address_in_parent_stack_449, i8* %_new_gep_116
  %_address_in_parent_stack_bt_458. = bitcast i8* %_address_in_parent_stack_bt_458..v to i32*
  %_new_load_459 = load i32, i32* %_address_in_parent_stack_bt_458., align 4
  %86 = zext i32 %_new_load_459 to i64, !mcsema_real_eip !125
  store i64 %86, i64* %XSI, align 8, !mcsema_real_eip !125
  %AL.213 = bitcast i64* %XAX to i8*, !mcsema_real_eip !126
  store i8 0, i8* %AL.213, align 1, !mcsema_real_eip !126
  %RDI_val.214 = load i64, i64* %XDI, align 8, !mcsema_real_eip !127
  %RDX_val.216 = load i64, i64* %XDX, align 8, !mcsema_real_eip !127
  %RCX_val.217 = load i64, i64* %XCX, align 8, !mcsema_real_eip !127
  %R8_val.218 = load i64, i64* %R8, align 8, !mcsema_real_eip !127
  %R9_val.219 = load i64, i64* %R9, align 8, !mcsema_real_eip !127
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_460 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118 to i64
  %_offset_above_rbp_463 = sub i64 %_ptr_to_int_460, %_local_end_to_int_
  %_pot_address_in_parent_stack_464 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_463
  %_cond1_465 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, %_local_stack_end_ptr_
  %_cond2_1_466 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, %_parent_stack_end_ptr_
  %_cond2_2_467 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, %_parent_stack_start_ptr_
  %_cond2_468 = or i1 %_cond2_1_466, %_cond2_2_467
  %_cond4_469 = icmp ule i8* %_pot_address_in_parent_stack_464, %_parent_stack_end_ptr_
  %_cond1_n_cond2_470 = and i1 %_cond1_465, %_cond2_468
  %_cond1_n_cond2_cond3_471 = and i1 %_cond1_n_cond2_470, %_cond4_469
  %.v9 = select i1 %_cond1_n_cond2_cond3_471, i8* %_pot_address_in_parent_stack_464, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118
  %87 = bitcast i8* %.v9 to i64*
  %_new_load_474 = load i64, i64* %87, align 8
  %_new_gep_120 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 8
  %_ptr_to_int_475 = ptrtoint i8* %_new_gep_120 to i64
  %_offset_above_rbp_478 = sub i64 %_ptr_to_int_475, %_local_end_to_int_
  %_pot_address_in_parent_stack_479 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_478
  %_cond1_480 = icmp ugt i8* %_new_gep_120, %_local_stack_end_ptr_
  %_cond2_1_481 = icmp ugt i8* %_new_gep_120, %_parent_stack_end_ptr_
  %_cond2_2_482 = icmp ult i8* %_new_gep_120, %_parent_stack_start_ptr_
  %_cond2_483 = or i1 %_cond2_1_481, %_cond2_2_482
  %_cond4_484 = icmp ule i8* %_pot_address_in_parent_stack_479, %_parent_stack_end_ptr_
  %_cond1_n_cond2_485 = and i1 %_cond1_480, %_cond2_483
  %_cond1_n_cond2_cond3_486 = and i1 %_cond1_n_cond2_485, %_cond4_484
  %_address_in_parent_stack_bt_488._allin_new_bt_121.v = select i1 %_cond1_n_cond2_cond3_486, i8* %_pot_address_in_parent_stack_479, i8* %_new_gep_120
  %_address_in_parent_stack_bt_488._allin_new_bt_121 = bitcast i8* %_address_in_parent_stack_bt_488._allin_new_bt_121.v to i64*
  %_new_load_489 = load i64, i64* %_address_in_parent_stack_bt_488._allin_new_bt_121, align 8
  %_new_gep_122 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 16
  %_ptr_to_int_490 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_493 = sub i64 %_ptr_to_int_490, %_local_end_to_int_
  %_pot_address_in_parent_stack_494 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_493
  %_cond1_495 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_496 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_497 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_498 = or i1 %_cond2_1_496, %_cond2_2_497
  %_cond4_499 = icmp ule i8* %_pot_address_in_parent_stack_494, %_parent_stack_end_ptr_
  %_cond1_n_cond2_500 = and i1 %_cond1_495, %_cond2_498
  %_cond1_n_cond2_cond3_501 = and i1 %_cond1_n_cond2_500, %_cond4_499
  %.v10 = select i1 %_cond1_n_cond2_cond3_501, i8* %_pot_address_in_parent_stack_494, i8* %_new_gep_122
  %88 = bitcast i8* %.v10 to i64*
  %_new_load_504 = load i64, i64* %88, align 8
  %_new_gep_124 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 24
  %_ptr_to_int_505 = ptrtoint i8* %_new_gep_124 to i64
  %_offset_above_rbp_508 = sub i64 %_ptr_to_int_505, %_local_end_to_int_
  %_pot_address_in_parent_stack_509 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_508
  %_cond1_510 = icmp ugt i8* %_new_gep_124, %_local_stack_end_ptr_
  %_cond2_1_511 = icmp ugt i8* %_new_gep_124, %_parent_stack_end_ptr_
  %_cond2_2_512 = icmp ult i8* %_new_gep_124, %_parent_stack_start_ptr_
  %_cond2_513 = or i1 %_cond2_1_511, %_cond2_2_512
  %_cond4_514 = icmp ule i8* %_pot_address_in_parent_stack_509, %_parent_stack_end_ptr_
  %_cond1_n_cond2_515 = and i1 %_cond1_510, %_cond2_513
  %_cond1_n_cond2_cond3_516 = and i1 %_cond1_n_cond2_515, %_cond4_514
  %_address_in_parent_stack_bt_518._allin_new_bt_125.v = select i1 %_cond1_n_cond2_cond3_516, i8* %_pot_address_in_parent_stack_509, i8* %_new_gep_124
  %_address_in_parent_stack_bt_518._allin_new_bt_125 = bitcast i8* %_address_in_parent_stack_bt_518._allin_new_bt_125.v to i64*
  %_new_load_519 = load i64, i64* %_address_in_parent_stack_bt_518._allin_new_bt_125, align 8
  %_new_gep_126 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 32
  %_ptr_to_int_520 = ptrtoint i8* %_new_gep_126 to i64
  %_offset_above_rbp_523 = sub i64 %_ptr_to_int_520, %_local_end_to_int_
  %_pot_address_in_parent_stack_524 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_523
  %_cond1_525 = icmp ugt i8* %_new_gep_126, %_local_stack_end_ptr_
  %_cond2_1_526 = icmp ugt i8* %_new_gep_126, %_parent_stack_end_ptr_
  %_cond2_2_527 = icmp ult i8* %_new_gep_126, %_parent_stack_start_ptr_
  %_cond2_528 = or i1 %_cond2_1_526, %_cond2_2_527
  %_cond4_529 = icmp ule i8* %_pot_address_in_parent_stack_524, %_parent_stack_end_ptr_
  %_cond1_n_cond2_530 = and i1 %_cond1_525, %_cond2_528
  %_cond1_n_cond2_cond3_531 = and i1 %_cond1_n_cond2_530, %_cond4_529
  %.v11 = select i1 %_cond1_n_cond2_cond3_531, i8* %_pot_address_in_parent_stack_524, i8* %_new_gep_126
  %89 = bitcast i8* %.v11 to i64*
  %_new_load_534 = load i64, i64* %89, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 40
  %_ptr_to_int_535 = ptrtoint i8* %_new_gep_128 to i64
  %_offset_above_rbp_538 = sub i64 %_ptr_to_int_535, %_local_end_to_int_
  %_pot_address_in_parent_stack_539 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_538
  %_cond1_540 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_541 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_542 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_543 = or i1 %_cond2_1_541, %_cond2_2_542
  %_cond4_544 = icmp ule i8* %_pot_address_in_parent_stack_539, %_parent_stack_end_ptr_
  %_cond1_n_cond2_545 = and i1 %_cond1_540, %_cond2_543
  %_cond1_n_cond2_cond3_546 = and i1 %_cond1_n_cond2_545, %_cond4_544
  %_address_in_parent_stack_bt_548._allin_new_bt_129.v = select i1 %_cond1_n_cond2_cond3_546, i8* %_pot_address_in_parent_stack_539, i8* %_new_gep_128
  %_address_in_parent_stack_bt_548._allin_new_bt_129 = bitcast i8* %_address_in_parent_stack_bt_548._allin_new_bt_129.v to i64*
  %_new_load_549 = load i64, i64* %_address_in_parent_stack_bt_548._allin_new_bt_129, align 8
  %_new_gep_130 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 48
  %_ptr_to_int_550 = ptrtoint i8* %_new_gep_130 to i64
  %_offset_above_rbp_553 = sub i64 %_ptr_to_int_550, %_local_end_to_int_
  %_pot_address_in_parent_stack_554 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_553
  %_cond1_555 = icmp ugt i8* %_new_gep_130, %_local_stack_end_ptr_
  %_cond2_1_556 = icmp ugt i8* %_new_gep_130, %_parent_stack_end_ptr_
  %_cond2_2_557 = icmp ult i8* %_new_gep_130, %_parent_stack_start_ptr_
  %_cond2_558 = or i1 %_cond2_1_556, %_cond2_2_557
  %_cond4_559 = icmp ule i8* %_pot_address_in_parent_stack_554, %_parent_stack_end_ptr_
  %_cond1_n_cond2_560 = and i1 %_cond1_555, %_cond2_558
  %_cond1_n_cond2_cond3_561 = and i1 %_cond1_n_cond2_560, %_cond4_559
  %.v12 = select i1 %_cond1_n_cond2_cond3_561, i8* %_pot_address_in_parent_stack_554, i8* %_new_gep_130
  %90 = bitcast i8* %.v12 to i64*
  %_new_load_564 = load i64, i64* %90, align 8
  %_new_gep_132 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 56
  %_ptr_to_int_565 = ptrtoint i8* %_new_gep_132 to i64
  %_offset_above_rbp_568 = sub i64 %_ptr_to_int_565, %_local_end_to_int_
  %_pot_address_in_parent_stack_569 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_568
  %_cond1_570 = icmp ugt i8* %_new_gep_132, %_local_stack_end_ptr_
  %_cond2_1_571 = icmp ugt i8* %_new_gep_132, %_parent_stack_end_ptr_
  %_cond2_2_572 = icmp ult i8* %_new_gep_132, %_parent_stack_start_ptr_
  %_cond2_573 = or i1 %_cond2_1_571, %_cond2_2_572
  %_cond4_574 = icmp ule i8* %_pot_address_in_parent_stack_569, %_parent_stack_end_ptr_
  %_cond1_n_cond2_575 = and i1 %_cond1_570, %_cond2_573
  %_cond1_n_cond2_cond3_576 = and i1 %_cond1_n_cond2_575, %_cond4_574
  %_address_in_parent_stack_bt_578._allin_new_bt_133.v = select i1 %_cond1_n_cond2_cond3_576, i8* %_pot_address_in_parent_stack_569, i8* %_new_gep_132
  %_address_in_parent_stack_bt_578._allin_new_bt_133 = bitcast i8* %_address_in_parent_stack_bt_578._allin_new_bt_133.v to i64*
  %_new_load_579 = load i64, i64* %_address_in_parent_stack_bt_578._allin_new_bt_133, align 8
  %_new_gep_134 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 64
  %_ptr_to_int_580 = ptrtoint i8* %_new_gep_134 to i64
  %_offset_above_rbp_583 = sub i64 %_ptr_to_int_580, %_local_end_to_int_
  %_pot_address_in_parent_stack_584 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_583
  %_cond1_585 = icmp ugt i8* %_new_gep_134, %_local_stack_end_ptr_
  %_cond2_1_586 = icmp ugt i8* %_new_gep_134, %_parent_stack_end_ptr_
  %_cond2_2_587 = icmp ult i8* %_new_gep_134, %_parent_stack_start_ptr_
  %_cond2_588 = or i1 %_cond2_1_586, %_cond2_2_587
  %_cond4_589 = icmp ule i8* %_pot_address_in_parent_stack_584, %_parent_stack_end_ptr_
  %_cond1_n_cond2_590 = and i1 %_cond1_585, %_cond2_588
  %_cond1_n_cond2_cond3_591 = and i1 %_cond1_n_cond2_590, %_cond4_589
  %.v13 = select i1 %_cond1_n_cond2_cond3_591, i8* %_pot_address_in_parent_stack_584, i8* %_new_gep_134
  %91 = bitcast i8* %.v13 to i64*
  %_new_load_594 = load i64, i64* %91, align 8
  %_new_gep_136 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 72
  %_ptr_to_int_595 = ptrtoint i8* %_new_gep_136 to i64
  %_offset_above_rbp_598 = sub i64 %_ptr_to_int_595, %_local_end_to_int_
  %_pot_address_in_parent_stack_599 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_598
  %_cond1_600 = icmp ugt i8* %_new_gep_136, %_local_stack_end_ptr_
  %_cond2_1_601 = icmp ugt i8* %_new_gep_136, %_parent_stack_end_ptr_
  %_cond2_2_602 = icmp ult i8* %_new_gep_136, %_parent_stack_start_ptr_
  %_cond2_603 = or i1 %_cond2_1_601, %_cond2_2_602
  %_cond4_604 = icmp ule i8* %_pot_address_in_parent_stack_599, %_parent_stack_end_ptr_
  %_cond1_n_cond2_605 = and i1 %_cond1_600, %_cond2_603
  %_cond1_n_cond2_cond3_606 = and i1 %_cond1_n_cond2_605, %_cond4_604
  %_address_in_parent_stack_bt_608._allin_new_bt_137.v = select i1 %_cond1_n_cond2_cond3_606, i8* %_pot_address_in_parent_stack_599, i8* %_new_gep_136
  %_address_in_parent_stack_bt_608._allin_new_bt_137 = bitcast i8* %_address_in_parent_stack_bt_608._allin_new_bt_137.v to i64*
  %_new_load_609 = load i64, i64* %_address_in_parent_stack_bt_608._allin_new_bt_137, align 8
  %RSP_val.221 = load i64, i64* %XSP, align 8, !mcsema_real_eip !127
  %_new_gep_139 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 -8
  %92 = add i64 %RSP_val.221, -8
  %_allin_new_bt_140 = bitcast i8* %_new_gep_139 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_140, align 8, !mcsema_real_eip !127
  store volatile i8* %_new_gep_139, i8** %_RSP_ptr_, align 8
  store i64 %92, i64* %XSP, align 8, !mcsema_real_eip !127
  %93 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.214, i64 %86, i64 %RDX_val.216, i64 %RCX_val.217, i64 %R8_val.218, i64 %R9_val.219, i64 %_new_load_474, i64 %_new_load_489, i64 %_new_load_504, i64 %_new_load_519, i64 %_new_load_534, i64 %_new_load_549, i64 %_new_load_564, i64 %_new_load_579, i64 %_new_load_594, i64 %_new_load_609)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_173 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_174 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_173, i64 8
  store i8* %_gep_fix_174, i8** %_RSP_ptr_, align 8
  store i64 %93, i64* %XAX, align 8, !mcsema_real_eip !127
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_141 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_142 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_141, i64 -52
  %94 = ptrtoint i8* %_new_gep_142 to i64
  %_offset_above_rbp_613 = sub i64 %94, %_local_end_to_int_
  %_pot_address_in_parent_stack_614 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_613
  %_cond1_615 = icmp ugt i8* %_new_gep_142, %_local_stack_end_ptr_
  %_cond2_1_616 = icmp ugt i8* %_new_gep_142, %_parent_stack_end_ptr_
  %_cond2_2_617 = icmp ult i8* %_new_gep_142, %_parent_stack_start_ptr_
  %_cond2_618 = or i1 %_cond2_1_616, %_cond2_2_617
  %_cond4_619 = icmp ule i8* %_pot_address_in_parent_stack_614, %_parent_stack_end_ptr_
  %_cond1_n_cond2_620 = and i1 %_cond1_615, %_cond2_618
  %_cond1_n_cond2_cond3_621 = and i1 %_cond1_n_cond2_620, %_cond4_619
  %.v14 = select i1 %_cond1_n_cond2_cond3_621, i8* %_pot_address_in_parent_stack_614, i8* %_new_gep_142
  %95 = bitcast i8* %.v14 to i32*
  %_new_load_624 = load i32, i32* %95, align 4
  %96 = zext i32 %_new_load_624 to i64, !mcsema_real_eip !128
  store i64 %96, i64* %XSI, align 8, !mcsema_real_eip !128
  %_new_gep_145 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_141, i64 -80
  %97 = trunc i64 %93 to i32
  %98 = bitcast i8* %_new_gep_145 to i32*
  store i32 %97, i32* %98, align 4, !mcsema_real_eip !129
  %ESI_val.227 = load i32, i32* %ESI.203, align 4, !mcsema_real_eip !130
  %99 = zext i32 %ESI_val.227 to i64, !mcsema_real_eip !130
  store i64 %99, i64* %XAX, align 8, !mcsema_real_eip !130
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_147 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.228 = load i64, i64* %XSP, align 8, !mcsema_real_eip !131
  %_new_gep_148 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_147, i64 128
  %100 = add i64 %RSP_val.228, 128, !mcsema_real_eip !131
  %_trans_p2i_149 = ptrtoint i8* %_new_gep_148 to i64
  %_trans_p2i_150 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_147 to i64
  %_trans_xor_151 = xor i64 %_trans_p2i_149, %_trans_p2i_150
  %101 = and i64 %_trans_xor_151, 16, !mcsema_real_eip !131
  %102 = icmp ne i64 %101, 0, !mcsema_real_eip !131
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !131
  %103 = icmp slt i64 %100, 0
  store i1 %103, i1* %SF, align 1, !mcsema_real_eip !131
  %_trans_icmp_eq_153 = icmp eq i8* %_new_gep_148, null
  store i1 %_trans_icmp_eq_153, i1* %ZF, align 1, !mcsema_real_eip !131
  %104 = xor i64 %_trans_p2i_150, -9223372036854775808, !mcsema_real_eip !131
  %105 = and i64 %_trans_xor_151, %104, !mcsema_real_eip !131
  %106 = icmp slt i64 %105, 0
  store i1 %106, i1* %OF, align 1, !mcsema_real_eip !131
  %_trans_trunc_160 = trunc i64 %_trans_p2i_149 to i8
  %107 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_160), !mcsema_real_eip !131
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  store i1 %109, i1* %PF, align 1, !mcsema_real_eip !131
  %_trans_icmp_ne_162 = icmp ne i64 %RSP_val.228, %_trans_p2i_149
  store i1 %_trans_icmp_ne_162, i1* %CF, align 1, !mcsema_real_eip !131
  store volatile i8* %_new_gep_148, i8** %_RSP_ptr_, align 8
  store i64 %100, i64* %XSP, align 8, !mcsema_real_eip !131
  %_offset_above_rbp_628 = sub i64 %_trans_p2i_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_629 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_628
  %_cond1_630 = icmp ugt i8* %_new_gep_148, %_local_stack_end_ptr_
  %_cond2_1_631 = icmp ugt i8* %_new_gep_148, %_parent_stack_end_ptr_
  %_cond2_2_632 = icmp ult i8* %_new_gep_148, %_parent_stack_start_ptr_
  %_cond2_633 = or i1 %_cond2_1_631, %_cond2_2_632
  %_cond4_634 = icmp ule i8* %_pot_address_in_parent_stack_629, %_parent_stack_end_ptr_
  %_cond1_n_cond2_635 = and i1 %_cond1_630, %_cond2_633
  %_cond1_n_cond2_cond3_636 = and i1 %_cond1_n_cond2_635, %_cond4_634
  %_address_in_parent_stack_bt_638._allin_new_bt_164.v = select i1 %_cond1_n_cond2_cond3_636, i8* %_pot_address_in_parent_stack_629, i8* %_new_gep_148
  %_address_in_parent_stack_bt_638._allin_new_bt_164 = bitcast i8* %_address_in_parent_stack_bt_638._allin_new_bt_164.v to i64*
  %_new_load_639 = load i64, i64* %_address_in_parent_stack_bt_638._allin_new_bt_164, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_639 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_639, i64* %XBP, align 8, !mcsema_real_eip !132
  %_new_gep_165 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_147, i64 136
  %110 = add i64 %RSP_val.228, 136, !mcsema_real_eip !132
  store volatile i8* %_new_gep_165, i8** %_RSP_ptr_, align 8
  store i64 %110, i64* %XSP, align 8, !mcsema_real_eip !132
  %_new_gep_167 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_147, i64 144
  %111 = add i64 %RSP_val.228, 144, !mcsema_real_eip !133
  %_ptr_to_int_640 = ptrtoint i8* %_new_gep_165 to i64
  %_offset_above_rbp_643 = sub i64 %_ptr_to_int_640, %_local_end_to_int_
  %_pot_address_in_parent_stack_644 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_643
  %_cond1_645 = icmp ugt i8* %_new_gep_165, %_local_stack_end_ptr_
  %_cond2_1_646 = icmp ugt i8* %_new_gep_165, %_parent_stack_end_ptr_
  %_cond2_2_647 = icmp ult i8* %_new_gep_165, %_parent_stack_start_ptr_
  %_cond2_648 = or i1 %_cond2_1_646, %_cond2_2_647
  %_cond4_649 = icmp ule i8* %_pot_address_in_parent_stack_644, %_parent_stack_end_ptr_
  %_cond1_n_cond2_650 = and i1 %_cond1_645, %_cond2_648
  %_cond1_n_cond2_cond3_651 = and i1 %_cond1_n_cond2_650, %_cond4_649
  %.v15 = select i1 %_cond1_n_cond2_cond3_651, i8* %_pot_address_in_parent_stack_644, i8* %_new_gep_165
  %112 = bitcast i8* %.v15 to i64*
  %_new_load_654 = load i64, i64* %112, align 8
  store i64 %_new_load_654, i64* %XIP, align 8, !mcsema_real_eip !133
  store volatile i8* %_new_gep_167, i8** %_RSP_ptr_, align 8
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !133
  ret void, !mcsema_real_eip !133
}

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 6}
!6 = !{i64 8}
!7 = !{i64 9}
!8 = !{i64 13}
!9 = !{i64 17}
!10 = !{i64 21}
!11 = !{i64 25}
!12 = !{i64 37}
!13 = !{i64 41}
!14 = !{i64 44}
!15 = !{i64 48}
!16 = !{i64 52}
!17 = !{i64 55}
!18 = !{i64 58}
!19 = !{i64 62}
!20 = !{i64 66}
!21 = !{i64 70}
!22 = !{i64 74}
!23 = !{i64 77}
!24 = !{i64 81}
!25 = !{i64 85}
!26 = !{i64 88}
!27 = !{i64 92}
!28 = !{i64 97}
!29 = !{i64 101}
!30 = !{i64 104}
!31 = !{i64 108}
!32 = !{i64 110}
!33 = !{i64 114}
!34 = !{i64 116}
!35 = !{i64 120}
!36 = !{i64 123}
!37 = !{i64 127}
!38 = !{i64 130}
!39 = !{i64 134}
!40 = !{i64 137}
!41 = !{i64 140}
!42 = !{i64 144}
!43 = !{i64 146}
!44 = !{i64 149}
!45 = !{i64 153}
!46 = !{i64 156}
!47 = !{i64 160}
!48 = !{i64 163}
!49 = !{i64 167}
!50 = !{i64 171}
!51 = !{i64 175}
!52 = !{i64 179}
!53 = !{i64 183}
!54 = !{i64 186}
!55 = !{i64 190}
!56 = !{i64 193}
!57 = !{i64 196}
!58 = !{i64 200}
!59 = !{i64 203}
!60 = !{i64 207}
!61 = !{i64 210}
!62 = !{i64 214}
!63 = !{i64 218}
!64 = !{i64 222}
!65 = !{i64 226}
!66 = !{i64 230}
!67 = !{i64 233}
!68 = !{i64 237}
!69 = !{i64 240}
!70 = !{i64 244}
!71 = !{i64 248}
!72 = !{i64 249}
!73 = !{i64 251}
!74 = !{i64 253}
!75 = !{i64 254}
!76 = !{i64 256}
!77 = !{i64 257}
!78 = !{i64 260}
!79 = !{i64 267}
!80 = !{i64 272}
!81 = !{i64 302}
!82 = !{i64 307}
!83 = !{i64 323}
!84 = !{i64 328}
!85 = !{i64 332}
!86 = !{i64 336}
!87 = !{i64 342}
!88 = !{i64 346}
!89 = !{i64 353}
!90 = !{i64 357}
!91 = !{i64 364}
!92 = !{i64 368}
!93 = !{i64 372}
!94 = !{i64 376}
!95 = !{i64 380}
!96 = !{i64 384}
!97 = !{i64 388}
!98 = !{i64 392}
!99 = !{i64 396}
!100 = !{i64 400}
!101 = !{i64 403}
!102 = !{i64 406}
!103 = !{i64 410}
!104 = !{i64 414}
!105 = !{i64 417}
!106 = !{i64 420}
!107 = !{i64 423}
!108 = !{i64 430}
!109 = !{i64 433}
!110 = !{i64 438}
!111 = !{i64 442}
!112 = !{i64 447}
!113 = !{i64 452}
!114 = !{i64 456}
!115 = !{i64 461}
!116 = !{i64 466}
!117 = !{i64 476}
!118 = !{i64 480}
!119 = !{i64 484}
!120 = !{i64 486}
!121 = !{i64 490}
!122 = !{i64 493}
!123 = !{i64 497}
!124 = !{i64 500}
!125 = !{i64 503}
!126 = !{i64 506}
!127 = !{i64 508}
!128 = !{i64 513}
!129 = !{i64 516}
!130 = !{i64 519}
!131 = !{i64 521}
!132 = !{i64 528}
!133 = !{i64 529}
