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

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90(%RegState*) local_unnamed_addr #0 {
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
  %3 = add i64 %RSP_val.1, -120
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
  %13 = icmp ult i64 %1, 112, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x176 to i64), i64* %XDI, align 8, !mcsema_real_eip !5
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %17, align 4, !mcsema_real_eip !6
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %18 = add i64 %RBP_val.5, -16, !mcsema_real_eip !7
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !7
  store i32 10, i32* %19, align 4, !mcsema_real_eip !7
  %RBP_val.6 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %20 = add i64 %RBP_val.6, -12, !mcsema_real_eip !8
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %21, align 4, !mcsema_real_eip !8
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %22 = add i64 %RBP_val.7, -8, !mcsema_real_eip !9
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %23, align 4, !mcsema_real_eip !9
  store i64 24, i64* %XAX, align 8, !mcsema_real_eip !10
  store i64 24, i64* %XCX, align 8, !mcsema_real_eip !11
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %24 = add i64 %RBP_val.10, -72, !mcsema_real_eip !12
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, align 8, !mcsema_real_eip !12
  store i64 %RDI_val.11, i64* %25, align 8, !mcsema_real_eip !12
  %RCX_val.12 = load i64, i64* %XCX, align 8, !mcsema_real_eip !13
  store i64 %RCX_val.12, i64* %XDI, align 8, !mcsema_real_eip !13
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !14
  %26 = add i64 %RSP_val.14, -8
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !14
  store i64 -2415393069852865332, i64* %27, align 8, !mcsema_real_eip !14
  store i64 %26, i64* %XSP, align 8, !mcsema_real_eip !14
  %28 = tail call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.12), !mcsema_real_eip !14
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !14
  %RBP_val.15 = load i64, i64* %XBP, align 8, !mcsema_real_eip !15
  %29 = add i64 %RBP_val.15, -24, !mcsema_real_eip !15
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !15
  store i64 %28, i64* %30, align 8, !mcsema_real_eip !15
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %31 = add i64 %RBP_val.17, -24, !mcsema_real_eip !16
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !16
  %33 = load i64, i64* %32, align 8, !mcsema_real_eip !16
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !16
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !17
  store i32 5, i32* %34, align 4, !mcsema_real_eip !17
  %RBP_val.19 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  %35 = add i64 %RBP_val.19, -24, !mcsema_real_eip !18
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !18
  %37 = load i64, i64* %36, align 8, !mcsema_real_eip !18
  store i64 %37, i64* %XAX, align 8, !mcsema_real_eip !18
  %38 = add i64 %37, 4, !mcsema_real_eip !19
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !19
  store i32 5, i32* %39, align 4, !mcsema_real_eip !19
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %40 = add i64 %RBP_val.21, -24, !mcsema_real_eip !20
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !20
  %42 = load i64, i64* %41, align 8, !mcsema_real_eip !20
  store i64 %42, i64* %XAX, align 8, !mcsema_real_eip !20
  %43 = add i64 %42, 8, !mcsema_real_eip !21
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !21
  store i32 5, i32* %44, align 4, !mcsema_real_eip !21
  %RBP_val.23 = load i64, i64* %XBP, align 8, !mcsema_real_eip !22
  %45 = add i64 %RBP_val.23, -24, !mcsema_real_eip !22
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !22
  %47 = load i64, i64* %46, align 8, !mcsema_real_eip !22
  %RSP_val.24 = load i64, i64* %XSP, align 8, !mcsema_real_eip !23
  store i64 %RSP_val.24, i64* %XCX, align 8, !mcsema_real_eip !23
  %48 = add i64 %RSP_val.24, 8, !mcsema_real_eip !24
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !24
  store i64 %47, i64* %49, align 8, !mcsema_real_eip !24
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !25
  %50 = add i64 %RBP_val.27, -16, !mcsema_real_eip !25
  store i64 %50, i64* %XAX, align 8, !mcsema_real_eip !25
  %51 = bitcast i64* %XCX to i64**
  %RCX_val.281 = load i64*, i64** %51, align 8
  store i64 %50, i64* %RCX_val.281, align 8, !mcsema_real_eip !26
  %52 = bitcast i64* %XDX to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %52, align 8
  store i64 3, i64* %R8, align 8, !mcsema_real_eip !27
  %EDX.30 = bitcast i64* %XDX to i32*, !mcsema_real_eip !28
  store i64 1, i64* %XDI, align 8, !mcsema_real_eip !28
  %RBP_val.32 = load i64, i64* %XBP, align 8, !mcsema_real_eip !29
  %53 = add i64 %RBP_val.32, -76, !mcsema_real_eip !29
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !29
  store i32 2, i32* %54, align 4, !mcsema_real_eip !29
  %RBP_val.35 = load i64, i64* %XBP, align 8, !mcsema_real_eip !30
  %55 = add i64 %RBP_val.35, -80, !mcsema_real_eip !30
  %EDX_val.37 = load i32, i32* %EDX.30, align 4, !mcsema_real_eip !30
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !30
  store i32 %EDX_val.37, i32* %56, align 4, !mcsema_real_eip !30
  %R8D.38 = bitcast i64* %R8 to i32*, !mcsema_real_eip !31
  %R8D_val.39 = load i32, i32* %R8D.38, align 4, !mcsema_real_eip !31
  %57 = zext i32 %R8D_val.39 to i64, !mcsema_real_eip !31
  store i64 %57, i64* %XDX, align 8, !mcsema_real_eip !31
  %RBP_val.40 = load i64, i64* %XBP, align 8, !mcsema_real_eip !32
  %58 = add i64 %RBP_val.40, -80, !mcsema_real_eip !32
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !32
  %60 = load i32, i32* %59, align 4, !mcsema_real_eip !32
  %61 = zext i32 %60 to i64, !mcsema_real_eip !32
  store i64 %61, i64* %XCX, align 8, !mcsema_real_eip !32
  %62 = add i64 %RBP_val.40, -76, !mcsema_real_eip !33
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !33
  %64 = load i32, i32* %63, align 4, !mcsema_real_eip !33
  %65 = zext i32 %64 to i64, !mcsema_real_eip !33
  store i64 %65, i64* %R9, align 8, !mcsema_real_eip !33
  %66 = add i64 %RBP_val.40, -84, !mcsema_real_eip !34
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !34
  store i32 %R8D_val.39, i32* %67, align 4, !mcsema_real_eip !34
  %R9D.45 = bitcast i64* %R9 to i32*, !mcsema_real_eip !35
  %R9D_val.46 = load i32, i32* %R9D.45, align 4, !mcsema_real_eip !35
  %68 = zext i32 %R9D_val.46 to i64, !mcsema_real_eip !35
  store i64 %68, i64* %R8, align 8, !mcsema_real_eip !35
  %RBP_val.47 = load i64, i64* %XBP, align 8, !mcsema_real_eip !36
  %69 = add i64 %RBP_val.47, -84, !mcsema_real_eip !36
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !36
  %71 = load i32, i32* %70, align 4, !mcsema_real_eip !36
  %72 = zext i32 %71 to i64, !mcsema_real_eip !36
  store i64 %72, i64* %R9, align 8, !mcsema_real_eip !36
  %RSP_val.48 = load i64, i64* %XSP, align 8, !mcsema_real_eip !37
  %73 = add i64 %RSP_val.48, -8
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !37
  store i64 -4981261766360305936, i64* %74, align 8, !mcsema_real_eip !37
  store i64 %73, i64* %XSP, align 8, !mcsema_real_eip !37
  tail call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !37
  %RBP_val.49 = load i64, i64* %XBP, align 8, !mcsema_real_eip !38
  %75 = add i64 %RBP_val.49, -48, !mcsema_real_eip !38
  %EDX_val.51 = load i32, i32* %EDX.30, align 4, !mcsema_real_eip !38
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !38
  store i32 %EDX_val.51, i32* %76, align 4, !mcsema_real_eip !38
  %RBP_val.52 = load i64, i64* %XBP, align 8, !mcsema_real_eip !39
  %77 = add i64 %RBP_val.52, -56, !mcsema_real_eip !39
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !39
  %RAX_val.53 = load i64, i64* %XAX, align 8, !mcsema_real_eip !39
  store i64 %RAX_val.53, i64* %78, align 8, !mcsema_real_eip !39
  %RBP_val.54 = load i64, i64* %XBP, align 8, !mcsema_real_eip !40
  %79 = add i64 %RBP_val.54, -56, !mcsema_real_eip !40
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !40
  %81 = load i64, i64* %80, align 8, !mcsema_real_eip !40
  store i64 %81, i64* %XAX, align 8, !mcsema_real_eip !40
  %82 = add i64 %RBP_val.54, -40, !mcsema_real_eip !41
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !41
  store i64 %81, i64* %83, align 8, !mcsema_real_eip !41
  %RBP_val.57 = load i64, i64* %XBP, align 8, !mcsema_real_eip !42
  %84 = add i64 %RBP_val.57, -48, !mcsema_real_eip !42
  %85 = inttoptr i64 %84 to i32*, !mcsema_real_eip !42
  %86 = load i32, i32* %85, align 4, !mcsema_real_eip !42
  %87 = zext i32 %86 to i64, !mcsema_real_eip !42
  store i64 %87, i64* %XCX, align 8, !mcsema_real_eip !42
  %88 = add i64 %RBP_val.57, -32, !mcsema_real_eip !43
  %ECX.59 = bitcast i64* %XCX to i32*, !mcsema_real_eip !43
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !43
  store i32 %86, i32* %89, align 4, !mcsema_real_eip !43
  %RBP_val.61 = load i64, i64* %XBP, align 8, !mcsema_real_eip !44
  %90 = add i64 %RBP_val.61, -40, !mcsema_real_eip !44
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !44
  %92 = load i32, i32* %91, align 4, !mcsema_real_eip !44
  %93 = zext i32 %92 to i64, !mcsema_real_eip !44
  store i64 %93, i64* %XCX, align 8, !mcsema_real_eip !44
  %94 = add i64 %RBP_val.61, -36, !mcsema_real_eip !45
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !45
  %96 = load i32, i32* %95, align 4, !mcsema_real_eip !45
  %97 = add i32 %92, %96, !mcsema_real_eip !45
  %98 = xor i32 %97, %96, !mcsema_real_eip !45
  %99 = xor i32 %98, %92, !mcsema_real_eip !45
  %100 = and i32 %99, 16, !mcsema_real_eip !45
  %101 = icmp ne i32 %100, 0, !mcsema_real_eip !45
  store i1 %101, i1* %AF, align 1, !mcsema_real_eip !45
  %102 = icmp slt i32 %97, 0
  store i1 %102, i1* %SF, align 1, !mcsema_real_eip !45
  %103 = icmp eq i32 %97, 0, !mcsema_real_eip !45
  store i1 %103, i1* %ZF, align 1, !mcsema_real_eip !45
  %104 = xor i32 %96, -2147483648, !mcsema_real_eip !45
  %105 = xor i32 %104, %92, !mcsema_real_eip !45
  %106 = and i32 %98, %105, !mcsema_real_eip !45
  %107 = icmp slt i32 %106, 0
  store i1 %107, i1* %OF, align 1, !mcsema_real_eip !45
  %108 = trunc i32 %97 to i8, !mcsema_real_eip !45
  %109 = tail call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !45
  %110 = and i8 %109, 1
  %111 = icmp eq i8 %110, 0
  store i1 %111, i1* %PF, align 1, !mcsema_real_eip !45
  %112 = icmp ult i32 %97, %96, !mcsema_real_eip !45
  store i1 %112, i1* %CF, align 1, !mcsema_real_eip !45
  %113 = zext i32 %97 to i64, !mcsema_real_eip !45
  store i64 %113, i64* %XCX, align 8, !mcsema_real_eip !45
  %114 = add i64 %RBP_val.61, -32, !mcsema_real_eip !46
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !46
  %116 = load i32, i32* %115, align 4, !mcsema_real_eip !46
  %117 = add i32 %97, %116, !mcsema_real_eip !46
  %118 = xor i32 %117, %116, !mcsema_real_eip !46
  %119 = xor i32 %118, %97, !mcsema_real_eip !46
  %120 = and i32 %119, 16, !mcsema_real_eip !46
  %121 = icmp ne i32 %120, 0, !mcsema_real_eip !46
  store i1 %121, i1* %AF, align 1, !mcsema_real_eip !46
  %122 = icmp slt i32 %117, 0
  store i1 %122, i1* %SF, align 1, !mcsema_real_eip !46
  %123 = icmp eq i32 %117, 0, !mcsema_real_eip !46
  store i1 %123, i1* %ZF, align 1, !mcsema_real_eip !46
  %124 = xor i32 %116, -2147483648, !mcsema_real_eip !46
  %125 = xor i32 %124, %97, !mcsema_real_eip !46
  %126 = and i32 %118, %125, !mcsema_real_eip !46
  %127 = icmp slt i32 %126, 0
  store i1 %127, i1* %OF, align 1, !mcsema_real_eip !46
  %128 = trunc i32 %117 to i8, !mcsema_real_eip !46
  %129 = tail call i8 @llvm.ctpop.i8(i8 %128), !mcsema_real_eip !46
  %130 = and i8 %129, 1
  %131 = icmp eq i8 %130, 0
  store i1 %131, i1* %PF, align 1, !mcsema_real_eip !46
  %132 = icmp ult i32 %117, %116, !mcsema_real_eip !46
  store i1 %132, i1* %CF, align 1, !mcsema_real_eip !46
  %133 = zext i32 %117 to i64, !mcsema_real_eip !46
  store i64 %133, i64* %XCX, align 8, !mcsema_real_eip !46
  %134 = add i64 %RBP_val.61, -60, !mcsema_real_eip !47
  %135 = inttoptr i64 %134 to i32*, !mcsema_real_eip !47
  store i32 %117, i32* %135, align 4, !mcsema_real_eip !47
  %RBP_val.71 = load i64, i64* %XBP, align 8, !mcsema_real_eip !48
  %136 = add i64 %RBP_val.71, -60, !mcsema_real_eip !48
  %137 = inttoptr i64 %136 to i32*, !mcsema_real_eip !48
  %138 = load i32, i32* %137, align 4, !mcsema_real_eip !48
  %139 = zext i32 %138 to i64, !mcsema_real_eip !48
  store i64 %139, i64* %XSI, align 8, !mcsema_real_eip !48
  %140 = add i64 %RBP_val.71, -72, !mcsema_real_eip !49
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !49
  %142 = load i64, i64* %141, align 8, !mcsema_real_eip !49
  store i64 %142, i64* %XDI, align 8, !mcsema_real_eip !49
  %AL.73 = bitcast i64* %XAX to i8*, !mcsema_real_eip !50
  store i8 0, i8* %AL.73, align 1, !mcsema_real_eip !50
  %RDX_val.76 = load i64, i64* %XDX, align 8, !mcsema_real_eip !51
  %RCX_val.77 = load i64, i64* %XCX, align 8, !mcsema_real_eip !51
  %R8_val.78 = load i64, i64* %R8, align 8, !mcsema_real_eip !51
  %R9_val.79 = load i64, i64* %R9, align 8, !mcsema_real_eip !51
  %RSP_val.80 = load i64, i64* %XSP, align 8, !mcsema_real_eip !51
  %143 = inttoptr i64 %RSP_val.80 to i64*, !mcsema_real_eip !51
  %144 = load i64, i64* %143, align 8, !mcsema_real_eip !51
  %145 = add i64 %RSP_val.80, 8, !mcsema_real_eip !51
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !51
  %147 = load i64, i64* %146, align 8, !mcsema_real_eip !51
  %148 = add i64 %RSP_val.80, 16, !mcsema_real_eip !51
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !51
  %150 = load i64, i64* %149, align 8, !mcsema_real_eip !51
  %151 = add i64 %RSP_val.80, 24, !mcsema_real_eip !51
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !51
  %153 = load i64, i64* %152, align 8, !mcsema_real_eip !51
  %154 = add i64 %RSP_val.80, 32, !mcsema_real_eip !51
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !51
  %156 = load i64, i64* %155, align 8, !mcsema_real_eip !51
  %157 = add i64 %RSP_val.80, 40, !mcsema_real_eip !51
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !51
  %159 = load i64, i64* %158, align 8, !mcsema_real_eip !51
  %160 = add i64 %RSP_val.80, -8
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !51
  store i64 -2415393069852865332, i64* %161, align 8, !mcsema_real_eip !51
  store i64 %160, i64* %XSP, align 8, !mcsema_real_eip !51
  %162 = tail call x86_64_sysvcc i64 @_printf(i64 %142, i64 %139, i64 %RDX_val.76, i64 %RCX_val.77, i64 %R8_val.78, i64 %R9_val.79, i64 %144, i64 %147, i64 %150, i64 %153, i64 %156, i64 %159), !mcsema_real_eip !51
  store i64 %162, i64* %XAX, align 8, !mcsema_real_eip !51
  %RBP_val.82 = load i64, i64* %XBP, align 8, !mcsema_real_eip !52
  %163 = add i64 %RBP_val.82, -60, !mcsema_real_eip !52
  %164 = inttoptr i64 %163 to i32*, !mcsema_real_eip !52
  %165 = load i32, i32* %164, align 4, !mcsema_real_eip !52
  %166 = zext i32 %165 to i64, !mcsema_real_eip !52
  store i64 %166, i64* %XCX, align 8, !mcsema_real_eip !52
  %167 = add i64 %RBP_val.82, -88, !mcsema_real_eip !53
  %168 = trunc i64 %162 to i32
  %169 = inttoptr i64 %167 to i32*, !mcsema_real_eip !53
  store i32 %168, i32* %169, align 4, !mcsema_real_eip !53
  %ECX_val.87 = load i32, i32* %ECX.59, align 4, !mcsema_real_eip !54
  %170 = zext i32 %ECX_val.87 to i64, !mcsema_real_eip !54
  store i64 %170, i64* %XAX, align 8, !mcsema_real_eip !54
  %RSP_val.88 = load i64, i64* %XSP, align 8, !mcsema_real_eip !55
  %171 = add i64 %RSP_val.88, 112, !mcsema_real_eip !55
  %172 = xor i64 %171, %RSP_val.88, !mcsema_real_eip !55
  %173 = and i64 %172, 16
  %174 = icmp eq i64 %173, 0
  store i1 %174, i1* %AF, align 1, !mcsema_real_eip !55
  %175 = icmp slt i64 %171, 0
  store i1 %175, i1* %SF, align 1, !mcsema_real_eip !55
  %176 = icmp eq i64 %171, 0, !mcsema_real_eip !55
  store i1 %176, i1* %ZF, align 1, !mcsema_real_eip !55
  %177 = xor i64 %RSP_val.88, -9223372036854775808, !mcsema_real_eip !55
  %178 = and i64 %172, %177, !mcsema_real_eip !55
  %179 = icmp slt i64 %178, 0
  store i1 %179, i1* %OF, align 1, !mcsema_real_eip !55
  %180 = trunc i64 %171 to i8, !mcsema_real_eip !55
  %181 = tail call i8 @llvm.ctpop.i8(i8 %180), !mcsema_real_eip !55
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  store i1 %183, i1* %PF, align 1, !mcsema_real_eip !55
  %184 = icmp ugt i64 %RSP_val.88, -113
  store i1 %184, i1* %CF, align 1, !mcsema_real_eip !55
  store i64 %171, i64* %XSP, align 8, !mcsema_real_eip !55
  %185 = inttoptr i64 %171 to i64*, !mcsema_real_eip !56
  %186 = load i64, i64* %185, align 8, !mcsema_real_eip !56
  store i64 %186, i64* %XBP, align 8, !mcsema_real_eip !56
  %187 = add i64 %RSP_val.88, 120, !mcsema_real_eip !56
  store i64 %187, i64* %XSP, align 8, !mcsema_real_eip !56
  %188 = add i64 %RSP_val.88, 128, !mcsema_real_eip !57
  %189 = inttoptr i64 %187 to i64*, !mcsema_real_eip !57
  %190 = load i64, i64* %189, align 8, !mcsema_real_eip !57
  store i64 %190, i64* %XIP, align 8, !mcsema_real_eip !57
  store i64 %188, i64* %XSP, align 8, !mcsema_real_eip !57
  ret void, !mcsema_real_eip !57
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !58
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !58
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !58
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !58
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !58
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !58
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !58
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !58
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !58
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !58
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !58
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !58
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !58
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !58
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !58
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !58
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !58
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !58
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !58
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !58
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !58
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !58
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !58
  %RBP_val.91 = load i64, i64* %XBP, align 8, !mcsema_real_eip !58
  %RSP_val.92 = load i64, i64* %XSP, align 8, !mcsema_real_eip !58
  %1 = add i64 %RSP_val.92, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !58
  store i64 %RBP_val.91, i64* %2, align 8, !mcsema_real_eip !58
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !58
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !59
  %3 = add i64 %RSP_val.92, 16, !mcsema_real_eip !60
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !60
  %5 = load i64, i64* %4, align 8, !mcsema_real_eip !60
  store i64 %5, i64* %XAX, align 8, !mcsema_real_eip !60
  %6 = add i64 %RSP_val.92, 8, !mcsema_real_eip !61
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !61
  %8 = load i64, i64* %7, align 8, !mcsema_real_eip !61
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !61
  %9 = add i64 %RSP_val.92, -28, !mcsema_real_eip !62
  %EDI.97 = bitcast i64* %XDI to i32*, !mcsema_real_eip !62
  %EDI_val.98 = load i32, i32* %EDI.97, align 4, !mcsema_real_eip !62
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !62
  store i32 %EDI_val.98, i32* %10, align 4, !mcsema_real_eip !62
  %RBP_val.99 = load i64, i64* %XBP, align 8, !mcsema_real_eip !63
  %11 = add i64 %RBP_val.99, -24, !mcsema_real_eip !63
  %ESI.100 = bitcast i64* %XSI to i32*, !mcsema_real_eip !63
  %ESI_val.101 = load i32, i32* %ESI.100, align 4, !mcsema_real_eip !63
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !63
  store i32 %ESI_val.101, i32* %12, align 4, !mcsema_real_eip !63
  %RBP_val.102 = load i64, i64* %XBP, align 8, !mcsema_real_eip !64
  %13 = add i64 %RBP_val.102, -28, !mcsema_real_eip !64
  %EDX.103 = bitcast i64* %XDX to i32*, !mcsema_real_eip !64
  %EDX_val.104 = load i32, i32* %EDX.103, align 4, !mcsema_real_eip !64
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !64
  store i32 %EDX_val.104, i32* %14, align 4, !mcsema_real_eip !64
  %RBP_val.105 = load i64, i64* %XBP, align 8, !mcsema_real_eip !65
  %15 = add i64 %RBP_val.105, -32, !mcsema_real_eip !65
  %ECX.106 = bitcast i64* %XCX to i32*, !mcsema_real_eip !65
  %ECX_val.107 = load i32, i32* %ECX.106, align 4, !mcsema_real_eip !65
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !65
  store i32 %ECX_val.107, i32* %16, align 4, !mcsema_real_eip !65
  %RBP_val.108 = load i64, i64* %XBP, align 8, !mcsema_real_eip !66
  %17 = add i64 %RBP_val.108, -36, !mcsema_real_eip !66
  %R8D.109 = bitcast i64* %R8 to i32*, !mcsema_real_eip !66
  %R8D_val.110 = load i32, i32* %R8D.109, align 4, !mcsema_real_eip !66
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !66
  store i32 %R8D_val.110, i32* %18, align 4, !mcsema_real_eip !66
  %RBP_val.111 = load i64, i64* %XBP, align 8, !mcsema_real_eip !67
  %19 = add i64 %RBP_val.111, -40, !mcsema_real_eip !67
  %R9D.112 = bitcast i64* %R9 to i32*, !mcsema_real_eip !67
  %R9D_val.113 = load i32, i32* %R9D.112, align 4, !mcsema_real_eip !67
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !67
  store i32 %R9D_val.113, i32* %20, align 4, !mcsema_real_eip !67
  %RBP_val.114 = load i64, i64* %XBP, align 8, !mcsema_real_eip !68
  %21 = add i64 %RBP_val.114, -48, !mcsema_real_eip !68
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !68
  %R10_val.115 = load i64, i64* %R10, align 8, !mcsema_real_eip !68
  store i64 %R10_val.115, i64* %22, align 8, !mcsema_real_eip !68
  %RBP_val.116 = load i64, i64* %XBP, align 8, !mcsema_real_eip !69
  %23 = add i64 %RBP_val.116, -56, !mcsema_real_eip !69
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !69
  %RAX_val.117 = load i64, i64* %XAX, align 8, !mcsema_real_eip !69
  store i64 %RAX_val.117, i64* %24, align 8, !mcsema_real_eip !69
  %RBP_val.118 = load i64, i64* %XBP, align 8, !mcsema_real_eip !70
  %25 = add i64 %RBP_val.118, -48, !mcsema_real_eip !70
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !70
  %27 = load i64, i64* %26, align 8, !mcsema_real_eip !70
  store i64 %27, i64* %XAX, align 8, !mcsema_real_eip !70
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !71
  %29 = load i32, i32* %28, align 4, !mcsema_real_eip !71
  %30 = zext i32 %29 to i64, !mcsema_real_eip !71
  store i64 %30, i64* %XCX, align 8, !mcsema_real_eip !71
  %31 = add i64 %RBP_val.118, -56, !mcsema_real_eip !72
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !72
  %33 = load i64, i64* %32, align 8, !mcsema_real_eip !72
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !72
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !73
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !73
  %36 = zext i32 %35 to i64, !mcsema_real_eip !73
  store i64 %36, i64* %XDX, align 8, !mcsema_real_eip !73
  %37 = add i32 %35, %29, !mcsema_real_eip !74
  %38 = xor i32 %37, %29, !mcsema_real_eip !74
  %39 = xor i32 %38, %35, !mcsema_real_eip !74
  %40 = and i32 %39, 16, !mcsema_real_eip !74
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !74
  store i1 %41, i1* %AF, align 1, !mcsema_real_eip !74
  %42 = icmp slt i32 %37, 0
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !74
  %43 = icmp eq i32 %37, 0, !mcsema_real_eip !74
  store i1 %43, i1* %ZF, align 1, !mcsema_real_eip !74
  %44 = xor i32 %29, -2147483648, !mcsema_real_eip !74
  %45 = xor i32 %44, %35, !mcsema_real_eip !74
  %46 = and i32 %38, %45, !mcsema_real_eip !74
  %47 = icmp slt i32 %46, 0
  store i1 %47, i1* %OF, align 1, !mcsema_real_eip !74
  %48 = trunc i32 %37 to i8, !mcsema_real_eip !74
  %49 = tail call i8 @llvm.ctpop.i8(i8 %48), !mcsema_real_eip !74
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  store i1 %51, i1* %PF, align 1, !mcsema_real_eip !74
  %52 = icmp ult i32 %37, %29, !mcsema_real_eip !74
  store i1 %52, i1* %CF, align 1, !mcsema_real_eip !74
  %53 = zext i32 %37 to i64, !mcsema_real_eip !74
  store i64 %53, i64* %XCX, align 8, !mcsema_real_eip !74
  %54 = add i64 %RBP_val.118, -72, !mcsema_real_eip !75
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !75
  store i32 %37, i32* %55, align 4, !mcsema_real_eip !75
  %RBP_val.129 = load i64, i64* %XBP, align 8, !mcsema_real_eip !76
  %56 = add i64 %RBP_val.129, -48, !mcsema_real_eip !76
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !76
  %58 = load i64, i64* %57, align 8, !mcsema_real_eip !76
  store i64 %58, i64* %XAX, align 8, !mcsema_real_eip !76
  %59 = add i64 %58, 4, !mcsema_real_eip !77
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !77
  %61 = load i32, i32* %60, align 4, !mcsema_real_eip !77
  %62 = zext i32 %61 to i64, !mcsema_real_eip !77
  store i64 %62, i64* %XCX, align 8, !mcsema_real_eip !77
  %63 = add i64 %RBP_val.129, -56, !mcsema_real_eip !78
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !78
  %65 = load i64, i64* %64, align 8, !mcsema_real_eip !78
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !78
  %66 = add i64 %65, 4, !mcsema_real_eip !79
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !79
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !79
  %69 = zext i32 %68 to i64, !mcsema_real_eip !79
  store i64 %69, i64* %XDX, align 8, !mcsema_real_eip !79
  %70 = add i32 %68, %61, !mcsema_real_eip !80
  %71 = xor i32 %70, %61, !mcsema_real_eip !80
  %72 = xor i32 %71, %68, !mcsema_real_eip !80
  %73 = and i32 %72, 16, !mcsema_real_eip !80
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !80
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !80
  %75 = icmp slt i32 %70, 0
  store i1 %75, i1* %SF, align 1, !mcsema_real_eip !80
  %76 = icmp eq i32 %70, 0, !mcsema_real_eip !80
  store i1 %76, i1* %ZF, align 1, !mcsema_real_eip !80
  %77 = xor i32 %61, -2147483648, !mcsema_real_eip !80
  %78 = xor i32 %77, %68, !mcsema_real_eip !80
  %79 = and i32 %71, %78, !mcsema_real_eip !80
  %80 = icmp slt i32 %79, 0
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !80
  %81 = trunc i32 %70 to i8, !mcsema_real_eip !80
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !80
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !80
  %85 = icmp ult i32 %70, %61, !mcsema_real_eip !80
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !80
  %86 = zext i32 %70 to i64, !mcsema_real_eip !80
  store i64 %86, i64* %XCX, align 8, !mcsema_real_eip !80
  %87 = add i64 %RBP_val.129, -68, !mcsema_real_eip !81
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !81
  store i32 %70, i32* %88, align 4, !mcsema_real_eip !81
  %RBP_val.140 = load i64, i64* %XBP, align 8, !mcsema_real_eip !82
  %89 = add i64 %RBP_val.140, -48, !mcsema_real_eip !82
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !82
  %91 = load i64, i64* %90, align 8, !mcsema_real_eip !82
  store i64 %91, i64* %XAX, align 8, !mcsema_real_eip !82
  %92 = add i64 %91, 8, !mcsema_real_eip !83
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !83
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !83
  %95 = zext i32 %94 to i64, !mcsema_real_eip !83
  store i64 %95, i64* %XCX, align 8, !mcsema_real_eip !83
  %96 = add i64 %RBP_val.140, -56, !mcsema_real_eip !84
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !84
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !84
  store i64 %98, i64* %XAX, align 8, !mcsema_real_eip !84
  %99 = add i64 %98, 8, !mcsema_real_eip !85
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !85
  %101 = load i32, i32* %100, align 4, !mcsema_real_eip !85
  %102 = zext i32 %101 to i64, !mcsema_real_eip !85
  store i64 %102, i64* %XDX, align 8, !mcsema_real_eip !85
  %103 = add i32 %101, %94, !mcsema_real_eip !86
  %104 = xor i32 %103, %94, !mcsema_real_eip !86
  %105 = xor i32 %104, %101, !mcsema_real_eip !86
  %106 = and i32 %105, 16, !mcsema_real_eip !86
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !86
  store i1 %107, i1* %AF, align 1, !mcsema_real_eip !86
  %108 = icmp slt i32 %103, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !86
  %109 = icmp eq i32 %103, 0, !mcsema_real_eip !86
  store i1 %109, i1* %ZF, align 1, !mcsema_real_eip !86
  %110 = xor i32 %94, -2147483648, !mcsema_real_eip !86
  %111 = xor i32 %110, %101, !mcsema_real_eip !86
  %112 = and i32 %104, %111, !mcsema_real_eip !86
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF, align 1, !mcsema_real_eip !86
  %114 = trunc i32 %103 to i8, !mcsema_real_eip !86
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !86
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !86
  %118 = icmp ult i32 %103, %94, !mcsema_real_eip !86
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !86
  %119 = zext i32 %103 to i64, !mcsema_real_eip !86
  store i64 %119, i64* %XCX, align 8, !mcsema_real_eip !86
  %120 = add i64 %RBP_val.140, -64, !mcsema_real_eip !87
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !87
  store i32 %103, i32* %121, align 4, !mcsema_real_eip !87
  %RBP_val.151 = load i64, i64* %XBP, align 8, !mcsema_real_eip !88
  %122 = add i64 %RBP_val.151, -64, !mcsema_real_eip !88
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !88
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !88
  %125 = zext i32 %124 to i64, !mcsema_real_eip !88
  store i64 %125, i64* %XCX, align 8, !mcsema_real_eip !88
  %126 = add i64 %RBP_val.151, -8, !mcsema_real_eip !89
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !89
  store i32 %124, i32* %127, align 4, !mcsema_real_eip !89
  %RBP_val.155 = load i64, i64* %XBP, align 8, !mcsema_real_eip !90
  %128 = add i64 %RBP_val.155, -72, !mcsema_real_eip !90
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !90
  %130 = load i64, i64* %129, align 8, !mcsema_real_eip !90
  store i64 %130, i64* %XAX, align 8, !mcsema_real_eip !90
  %131 = add i64 %RBP_val.155, -16, !mcsema_real_eip !91
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !91
  store i64 %130, i64* %132, align 8, !mcsema_real_eip !91
  %RBP_val.158 = load i64, i64* %XBP, align 8, !mcsema_real_eip !92
  %133 = add i64 %RBP_val.158, -8, !mcsema_real_eip !92
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !92
  %135 = load i32, i32* %134, align 4, !mcsema_real_eip !92
  %136 = zext i32 %135 to i64, !mcsema_real_eip !92
  store i64 %136, i64* %XCX, align 8, !mcsema_real_eip !92
  %137 = add i64 %RBP_val.158, -80, !mcsema_real_eip !93
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !93
  store i32 %135, i32* %138, align 4, !mcsema_real_eip !93
  %RBP_val.162 = load i64, i64* %XBP, align 8, !mcsema_real_eip !94
  %139 = add i64 %RBP_val.162, -16, !mcsema_real_eip !94
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !94
  %141 = load i64, i64* %140, align 8, !mcsema_real_eip !94
  store i64 %141, i64* %XAX, align 8, !mcsema_real_eip !94
  %142 = add i64 %RBP_val.162, -88, !mcsema_real_eip !95
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !95
  store i64 %141, i64* %143, align 8, !mcsema_real_eip !95
  %RBP_val.165 = load i64, i64* %XBP, align 8, !mcsema_real_eip !96
  %144 = add i64 %RBP_val.165, -88, !mcsema_real_eip !96
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !96
  %146 = load i64, i64* %145, align 8, !mcsema_real_eip !96
  store i64 %146, i64* %XAX, align 8, !mcsema_real_eip !96
  %147 = add i64 %RBP_val.165, -80, !mcsema_real_eip !97
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !97
  %149 = load i32, i32* %148, align 4, !mcsema_real_eip !97
  %150 = zext i32 %149 to i64, !mcsema_real_eip !97
  store i64 %150, i64* %XDX, align 8, !mcsema_real_eip !97
  %RSP_val.167 = load i64, i64* %XSP, align 8, !mcsema_real_eip !98
  %151 = inttoptr i64 %RSP_val.167 to i64*, !mcsema_real_eip !98
  %152 = load i64, i64* %151, align 8, !mcsema_real_eip !98
  store i64 %152, i64* %XBP, align 8, !mcsema_real_eip !98
  %153 = add i64 %RSP_val.167, 8, !mcsema_real_eip !98
  store i64 %153, i64* %XSP, align 8, !mcsema_real_eip !98
  %154 = add i64 %RSP_val.167, 16, !mcsema_real_eip !99
  %155 = inttoptr i64 %153 to i64*, !mcsema_real_eip !99
  %156 = load i64, i64* %155, align 8, !mcsema_real_eip !99
  store i64 %156, i64* %XIP, align 8, !mcsema_real_eip !99
  store i64 %154, i64* %XSP, align 8, !mcsema_real_eip !99
  ret void, !mcsema_real_eip !99
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

attributes #0 = { noinline }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 144}
!3 = !{i64 145}
!4 = !{i64 148}
!5 = !{i64 152}
!6 = !{i64 162}
!7 = !{i64 169}
!8 = !{i64 176}
!9 = !{i64 183}
!10 = !{i64 190}
!11 = !{i64 195}
!12 = !{i64 197}
!13 = !{i64 201}
!14 = !{i64 204}
!15 = !{i64 209}
!16 = !{i64 213}
!17 = !{i64 217}
!18 = !{i64 223}
!19 = !{i64 227}
!20 = !{i64 234}
!21 = !{i64 238}
!22 = !{i64 245}
!23 = !{i64 249}
!24 = !{i64 252}
!25 = !{i64 256}
!26 = !{i64 260}
!27 = !{i64 273}
!28 = !{i64 279}
!29 = !{i64 281}
!30 = !{i64 284}
!31 = !{i64 287}
!32 = !{i64 290}
!33 = !{i64 293}
!34 = !{i64 297}
!35 = !{i64 301}
!36 = !{i64 304}
!37 = !{i64 308}
!38 = !{i64 313}
!39 = !{i64 316}
!40 = !{i64 320}
!41 = !{i64 324}
!42 = !{i64 328}
!43 = !{i64 331}
!44 = !{i64 334}
!45 = !{i64 337}
!46 = !{i64 340}
!47 = !{i64 343}
!48 = !{i64 346}
!49 = !{i64 349}
!50 = !{i64 353}
!51 = !{i64 355}
!52 = !{i64 360}
!53 = !{i64 363}
!54 = !{i64 366}
!55 = !{i64 368}
!56 = !{i64 372}
!57 = !{i64 373}
!58 = !{i64 0}
!59 = !{i64 1}
!60 = !{i64 4}
!61 = !{i64 8}
!62 = !{i64 12}
!63 = !{i64 15}
!64 = !{i64 18}
!65 = !{i64 21}
!66 = !{i64 24}
!67 = !{i64 28}
!68 = !{i64 32}
!69 = !{i64 36}
!70 = !{i64 40}
!71 = !{i64 44}
!72 = !{i64 46}
!73 = !{i64 50}
!74 = !{i64 52}
!75 = !{i64 54}
!76 = !{i64 57}
!77 = !{i64 61}
!78 = !{i64 64}
!79 = !{i64 68}
!80 = !{i64 71}
!81 = !{i64 73}
!82 = !{i64 76}
!83 = !{i64 80}
!84 = !{i64 83}
!85 = !{i64 87}
!86 = !{i64 90}
!87 = !{i64 92}
!88 = !{i64 95}
!89 = !{i64 98}
!90 = !{i64 101}
!91 = !{i64 105}
!92 = !{i64 109}
!93 = !{i64 112}
!94 = !{i64 115}
!95 = !{i64 119}
!96 = !{i64 123}
!97 = !{i64 127}
!98 = !{i64 130}
!99 = !{i64 131}
