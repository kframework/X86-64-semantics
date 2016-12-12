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
define x86_64_sysvcc void @sub_100(%RegState*) local_unnamed_addr #0 {
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
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -136
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = and i64 %4, 16, !mcsema_real_eip !4
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !4
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
  %13 = icmp ult i64 %1, 128, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 12, i64* %XAX, align 8, !mcsema_real_eip !5
  store i64 12, i64* %XDI, align 8, !mcsema_real_eip !6
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %17, align 4, !mcsema_real_eip !7
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %18 = add i64 %RBP_val.7, -16, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %19, align 4, !mcsema_real_eip !8
  %RBP_val.8 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %20 = add i64 %RBP_val.8, -12, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %21, align 4, !mcsema_real_eip !9
  %RBP_val.9 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %22 = add i64 %RBP_val.9, -8, !mcsema_real_eip !10
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !10
  store i32 10, i32* %23, align 4, !mcsema_real_eip !10
  %RDI_val.10 = load i64, i64* %XDI, align 8, !mcsema_real_eip !11
  %RSP_val.11 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %24 = add i64 %RSP_val.11, -8
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %25, align 8, !mcsema_real_eip !11
  store i64 %24, i64* %XSP, align 8, !mcsema_real_eip !11
  %26 = tail call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.10)
  store i64 %26, i64* %XAX, align 8, !mcsema_real_eip !11
  %RBP_val.12 = load i64, i64* %XBP, align 8
  %27 = add i64 %RBP_val.12, -16, !mcsema_real_eip !12
  store i64 %27, i64* %XDI, align 8, !mcsema_real_eip !12
  %28 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %28, align 8
  store i64 3, i64* %XCX, align 8, !mcsema_real_eip !13
  %29 = add i64 %RBP_val.12, -24, !mcsema_real_eip !14
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !14
  store i64 %26, i64* %30, align 8, !mcsema_real_eip !14
  %RBP_val.15 = load i64, i64* %XBP, align 8, !mcsema_real_eip !15
  %31 = add i64 %RBP_val.15, -24, !mcsema_real_eip !15
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !15
  %33 = load i64, i64* %32, align 8, !mcsema_real_eip !15
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !15
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !16
  store i32 5, i32* %34, align 4, !mcsema_real_eip !16
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !17
  %35 = add i64 %RBP_val.17, -24, !mcsema_real_eip !17
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !17
  %37 = load i64, i64* %36, align 8, !mcsema_real_eip !17
  store i64 %37, i64* %XAX, align 8, !mcsema_real_eip !17
  %38 = add i64 %37, 4, !mcsema_real_eip !18
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !18
  store i32 5, i32* %39, align 4, !mcsema_real_eip !18
  %RBP_val.19 = load i64, i64* %XBP, align 8, !mcsema_real_eip !19
  %40 = add i64 %RBP_val.19, -24, !mcsema_real_eip !19
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !19
  %42 = load i64, i64* %41, align 8, !mcsema_real_eip !19
  store i64 %42, i64* %XAX, align 8, !mcsema_real_eip !19
  %43 = add i64 %42, 8, !mcsema_real_eip !20
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !20
  store i32 5, i32* %44, align 4, !mcsema_real_eip !20
  %RBP_val.21 = load i64, i64* %XBP, align 8
  %45 = add i64 %RBP_val.21, -24, !mcsema_real_eip !21
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !21
  %47 = load i64, i64* %46, align 8, !mcsema_real_eip !21
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !21
  %48 = load i64, i64* %46, align 8, !mcsema_real_eip !22
  store i64 %48, i64* %XDX, align 8, !mcsema_real_eip !22
  %49 = add i64 %RBP_val.21, -16, !mcsema_real_eip !23
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !23
  %51 = load i64, i64* %50, align 8, !mcsema_real_eip !23
  store i64 %51, i64* %XSI, align 8, !mcsema_real_eip !23
  %52 = add i64 %RBP_val.21, -48, !mcsema_real_eip !24
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !24
  store i64 %51, i64* %53, align 8, !mcsema_real_eip !24
  %RBP_val.26 = load i64, i64* %XBP, align 8
  %54 = add i64 %RBP_val.26, -8, !mcsema_real_eip !25
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !25
  %56 = load i32, i32* %55, align 4, !mcsema_real_eip !25
  %57 = zext i32 %56 to i64, !mcsema_real_eip !25
  store i64 %57, i64* %R10, align 8, !mcsema_real_eip !25
  %58 = add i64 %RBP_val.26, -40, !mcsema_real_eip !26
  %R10D.28 = bitcast i64* %R10 to i32*, !mcsema_real_eip !26
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !26
  store i32 %56, i32* %59, align 4, !mcsema_real_eip !26
  %RBP_val.30 = load i64, i64* %XBP, align 8
  %60 = add i64 %RBP_val.30, -48, !mcsema_real_eip !27
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !27
  %62 = load i64, i64* %61, align 8, !mcsema_real_eip !27
  store i64 %62, i64* %XSI, align 8, !mcsema_real_eip !27
  %63 = add i64 %RBP_val.30, -40, !mcsema_real_eip !28
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !28
  %65 = load i32, i32* %64, align 4, !mcsema_real_eip !28
  %66 = zext i32 %65 to i64, !mcsema_real_eip !28
  store i64 %66, i64* %R10, align 8, !mcsema_real_eip !28
  %67 = add i64 %RBP_val.30, -64, !mcsema_real_eip !29
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !29
  %RDI_val.33 = load i64, i64* %XDI, align 8, !mcsema_real_eip !29
  store i64 %RDI_val.33, i64* %68, align 8, !mcsema_real_eip !29
  %RSI_val.34 = load i64, i64* %XSI, align 8, !mcsema_real_eip !30
  store i64 %RSI_val.34, i64* %XDI, align 8, !mcsema_real_eip !30
  %R10D_val.36 = load i32, i32* %R10D.28, align 4, !mcsema_real_eip !31
  %69 = zext i32 %R10D_val.36 to i64, !mcsema_real_eip !31
  store i64 %69, i64* %XSI, align 8, !mcsema_real_eip !31
  %RBP_val.37 = load i64, i64* %XBP, align 8
  %70 = add i64 %RBP_val.37, -64, !mcsema_real_eip !32
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !32
  %72 = load i64, i64* %71, align 8, !mcsema_real_eip !32
  store i64 %72, i64* %R11, align 8, !mcsema_real_eip !32
  %73 = add i64 %RBP_val.37, -72, !mcsema_real_eip !33
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !33
  %RDX_val.39 = load i64, i64* %XDX, align 8, !mcsema_real_eip !33
  store i64 %RDX_val.39, i64* %74, align 8, !mcsema_real_eip !33
  %R11_val.40 = load i64, i64* %R11, align 8, !mcsema_real_eip !34
  store i64 %R11_val.40, i64* %XDX, align 8, !mcsema_real_eip !34
  %RBP_val.41 = load i64, i64* %XBP, align 8, !mcsema_real_eip !35
  %75 = add i64 %RBP_val.41, -76, !mcsema_real_eip !35
  %ECX.42 = bitcast i64* %XCX to i32*, !mcsema_real_eip !35
  %ECX_val.43 = load i32, i32* %ECX.42, align 4, !mcsema_real_eip !35
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !35
  store i32 %ECX_val.43, i32* %76, align 4, !mcsema_real_eip !35
  %RAX_val.44 = load i64, i64* %XAX, align 8, !mcsema_real_eip !36
  store i64 %RAX_val.44, i64* %XCX, align 8, !mcsema_real_eip !36
  %77 = bitcast i64* %XSP to i32**
  %RSP_val.451 = load i32*, i32** %77, align 8
  store i32 3, i32* %RSP_val.451, align 4, !mcsema_real_eip !37
  %78 = bitcast i64* %R11 to i64**
  %R11_val.462 = load i64*, i64** %78, align 8
  %79 = load i64, i64* %R11_val.462, align 8, !mcsema_real_eip !38
  store i64 %79, i64* %XAX, align 8, !mcsema_real_eip !38
  %RSP_val.47 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %80 = add i64 %RSP_val.47, 8, !mcsema_real_eip !39
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !39
  store i64 %79, i64* %81, align 8, !mcsema_real_eip !39
  %R11_val.49 = load i64, i64* %R11, align 8, !mcsema_real_eip !40
  %82 = add i64 %R11_val.49, 8, !mcsema_real_eip !40
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !40
  %84 = load i32, i32* %83, align 4, !mcsema_real_eip !40
  %85 = zext i32 %84 to i64, !mcsema_real_eip !40
  store i64 %85, i64* %R10, align 8, !mcsema_real_eip !40
  %RSP_val.50 = load i64, i64* %XSP, align 8, !mcsema_real_eip !41
  %86 = add i64 %RSP_val.50, 16, !mcsema_real_eip !41
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !41
  store i32 %84, i32* %87, align 4, !mcsema_real_eip !41
  %RSP_val.53 = load i64, i64* %XSP, align 8, !mcsema_real_eip !42
  %88 = add i64 %RSP_val.53, 24, !mcsema_real_eip !42
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !42
  %R11_val.54 = load i64, i64* %R11, align 8, !mcsema_real_eip !42
  store i64 %R11_val.54, i64* %89, align 8, !mcsema_real_eip !42
  %RBP_val.55 = load i64, i64* %XBP, align 8, !mcsema_real_eip !43
  %90 = add i64 %RBP_val.55, -72, !mcsema_real_eip !43
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !43
  %92 = load i64, i64* %91, align 8, !mcsema_real_eip !43
  store i64 %92, i64* %XAX, align 8, !mcsema_real_eip !43
  %RSP_val.56 = load i64, i64* %XSP, align 8, !mcsema_real_eip !44
  %93 = add i64 %RSP_val.56, 32, !mcsema_real_eip !44
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !44
  store i64 %92, i64* %94, align 8, !mcsema_real_eip !44
  %RSP_val.58 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %95 = add i64 %RSP_val.58, -8
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !45
  store i64 -4981261766360305936, i64* %96, align 8, !mcsema_real_eip !45
  store i64 %95, i64* %XSP, align 8, !mcsema_real_eip !45
  tail call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !45
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, align 8, !mcsema_real_eip !46
  %RBP_val.59 = load i64, i64* %XBP, align 8, !mcsema_real_eip !47
  %97 = add i64 %RBP_val.59, -32, !mcsema_real_eip !47
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !47
  %RAX_val.60 = load i64, i64* %XAX, align 8, !mcsema_real_eip !47
  store i64 %RAX_val.60, i64* %98, align 8, !mcsema_real_eip !47
  %RBP_val.61 = load i64, i64* %XBP, align 8
  %99 = add i64 %RBP_val.61, -32
  %100 = inttoptr i64 %99 to i64*
  %101 = load i64, i64* %100, align 8, !mcsema_real_eip !48
  store i64 %101, i64* %XAX, align 8, !mcsema_real_eip !48
  %102 = inttoptr i64 %101 to i32*, !mcsema_real_eip !49
  %103 = load i32, i32* %102, align 4, !mcsema_real_eip !49
  %104 = zext i32 %103 to i64, !mcsema_real_eip !49
  store i64 %104, i64* %XSI, align 8, !mcsema_real_eip !49
  %105 = load i64, i64* %100, align 8, !mcsema_real_eip !50
  store i64 %105, i64* %XAX, align 8, !mcsema_real_eip !50
  %106 = add i64 %105, 4, !mcsema_real_eip !51
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !51
  %108 = load i32, i32* %107, align 4, !mcsema_real_eip !51
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !51
  %109 = add i32 %103, %108, !mcsema_real_eip !51
  %110 = xor i32 %109, %108, !mcsema_real_eip !51
  %111 = xor i32 %110, %103, !mcsema_real_eip !51
  %112 = and i32 %111, 16, !mcsema_real_eip !51
  %113 = icmp ne i32 %112, 0, !mcsema_real_eip !51
  store i1 %113, i1* %AF, align 1, !mcsema_real_eip !51
  %114 = icmp slt i32 %109, 0
  store i1 %114, i1* %SF, align 1, !mcsema_real_eip !51
  %115 = icmp eq i32 %109, 0, !mcsema_real_eip !51
  store i1 %115, i1* %ZF, align 1, !mcsema_real_eip !51
  %116 = xor i32 %108, -2147483648, !mcsema_real_eip !51
  %117 = xor i32 %116, %103, !mcsema_real_eip !51
  %118 = and i32 %110, %117, !mcsema_real_eip !51
  %119 = icmp slt i32 %118, 0
  store i1 %119, i1* %OF, align 1, !mcsema_real_eip !51
  %120 = trunc i32 %109 to i8, !mcsema_real_eip !51
  %121 = tail call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !51
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  store i1 %123, i1* %PF, align 1, !mcsema_real_eip !51
  %124 = icmp ult i32 %109, %108, !mcsema_real_eip !51
  store i1 %124, i1* %CF, align 1, !mcsema_real_eip !51
  %125 = zext i32 %109 to i64, !mcsema_real_eip !51
  store i64 %125, i64* %XSI, align 8, !mcsema_real_eip !51
  %126 = load i64, i64* %100, align 8, !mcsema_real_eip !52
  store i64 %126, i64* %XAX, align 8, !mcsema_real_eip !52
  %127 = add i64 %126, 8, !mcsema_real_eip !53
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !53
  %129 = load i32, i32* %128, align 4, !mcsema_real_eip !53
  %130 = add i32 %109, %129, !mcsema_real_eip !53
  %131 = xor i32 %130, %129, !mcsema_real_eip !53
  %132 = xor i32 %131, %109, !mcsema_real_eip !53
  %133 = and i32 %132, 16, !mcsema_real_eip !53
  %134 = icmp ne i32 %133, 0, !mcsema_real_eip !53
  store i1 %134, i1* %AF, align 1, !mcsema_real_eip !53
  %135 = icmp slt i32 %130, 0
  store i1 %135, i1* %SF, align 1, !mcsema_real_eip !53
  %136 = icmp eq i32 %130, 0, !mcsema_real_eip !53
  store i1 %136, i1* %ZF, align 1, !mcsema_real_eip !53
  %137 = xor i32 %129, -2147483648, !mcsema_real_eip !53
  %138 = xor i32 %137, %109, !mcsema_real_eip !53
  %139 = and i32 %131, %138, !mcsema_real_eip !53
  %140 = icmp slt i32 %139, 0
  store i1 %140, i1* %OF, align 1, !mcsema_real_eip !53
  %141 = trunc i32 %130 to i8, !mcsema_real_eip !53
  %142 = tail call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !53
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  store i1 %144, i1* %PF, align 1, !mcsema_real_eip !53
  %145 = icmp ult i32 %130, %129, !mcsema_real_eip !53
  store i1 %145, i1* %CF, align 1, !mcsema_real_eip !53
  %146 = zext i32 %130 to i64, !mcsema_real_eip !53
  store i64 %146, i64* %XSI, align 8, !mcsema_real_eip !53
  %147 = add i64 %RBP_val.61, -52, !mcsema_real_eip !54
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !54
  store i32 %130, i32* %148, align 4, !mcsema_real_eip !54
  %RBP_val.74 = load i64, i64* %XBP, align 8, !mcsema_real_eip !55
  %149 = add i64 %RBP_val.74, -52, !mcsema_real_eip !55
  %150 = inttoptr i64 %149 to i32*, !mcsema_real_eip !55
  %151 = load i32, i32* %150, align 4, !mcsema_real_eip !55
  %152 = zext i32 %151 to i64, !mcsema_real_eip !55
  store i64 %152, i64* %XSI, align 8, !mcsema_real_eip !55
  %AL.75 = bitcast i64* %XAX to i8*, !mcsema_real_eip !56
  store i8 0, i8* %AL.75, align 1, !mcsema_real_eip !56
  %RDI_val.76 = load i64, i64* %XDI, align 8, !mcsema_real_eip !57
  %RDX_val.78 = load i64, i64* %XDX, align 8, !mcsema_real_eip !57
  %RCX_val.79 = load i64, i64* %XCX, align 8, !mcsema_real_eip !57
  %R8_val.80 = load i64, i64* %R8, align 8, !mcsema_real_eip !57
  %R9_val.81 = load i64, i64* %R9, align 8, !mcsema_real_eip !57
  %RSP_val.82 = load i64, i64* %XSP, align 8, !mcsema_real_eip !57
  %153 = inttoptr i64 %RSP_val.82 to i64*, !mcsema_real_eip !57
  %154 = load i64, i64* %153, align 8, !mcsema_real_eip !57
  %155 = add i64 %RSP_val.82, 8, !mcsema_real_eip !57
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !57
  %157 = load i64, i64* %156, align 8, !mcsema_real_eip !57
  %158 = add i64 %RSP_val.82, 16, !mcsema_real_eip !57
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !57
  %160 = load i64, i64* %159, align 8, !mcsema_real_eip !57
  %161 = add i64 %RSP_val.82, 24, !mcsema_real_eip !57
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !57
  %163 = load i64, i64* %162, align 8, !mcsema_real_eip !57
  %164 = add i64 %RSP_val.82, 32, !mcsema_real_eip !57
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !57
  %166 = load i64, i64* %165, align 8, !mcsema_real_eip !57
  %167 = add i64 %RSP_val.82, 40, !mcsema_real_eip !57
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !57
  %169 = load i64, i64* %168, align 8, !mcsema_real_eip !57
  %170 = add i64 %RSP_val.82, -8
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !57
  store i64 -2415393069852865332, i64* %171, align 8, !mcsema_real_eip !57
  store i64 %170, i64* %XSP, align 8, !mcsema_real_eip !57
  %172 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.76, i64 %152, i64 %RDX_val.78, i64 %RCX_val.79, i64 %R8_val.80, i64 %R9_val.81, i64 %154, i64 %157, i64 %160, i64 %163, i64 %166, i64 %169), !mcsema_real_eip !57
  store i64 %172, i64* %XAX, align 8, !mcsema_real_eip !57
  %RBP_val.84 = load i64, i64* %XBP, align 8
  %173 = add i64 %RBP_val.84, -52, !mcsema_real_eip !58
  %174 = inttoptr i64 %173 to i32*, !mcsema_real_eip !58
  %175 = load i32, i32* %174, align 4, !mcsema_real_eip !58
  %176 = zext i32 %175 to i64, !mcsema_real_eip !58
  store i64 %176, i64* %XSI, align 8, !mcsema_real_eip !58
  %177 = add i64 %RBP_val.84, -80, !mcsema_real_eip !59
  %178 = trunc i64 %172 to i32
  %179 = inttoptr i64 %177 to i32*, !mcsema_real_eip !59
  store i32 %178, i32* %179, align 4, !mcsema_real_eip !59
  %ESI_val.89 = load i32, i32* %ESI.65, align 4, !mcsema_real_eip !60
  %180 = zext i32 %ESI_val.89 to i64, !mcsema_real_eip !60
  store i64 %180, i64* %XAX, align 8, !mcsema_real_eip !60
  %RSP_val.90 = load i64, i64* %XSP, align 8, !mcsema_real_eip !61
  %181 = add i64 %RSP_val.90, 128, !mcsema_real_eip !61
  %182 = xor i64 %181, %RSP_val.90, !mcsema_real_eip !61
  %183 = and i64 %182, 16, !mcsema_real_eip !61
  %184 = icmp ne i64 %183, 0, !mcsema_real_eip !61
  store i1 %184, i1* %AF, align 1, !mcsema_real_eip !61
  %185 = icmp slt i64 %181, 0
  store i1 %185, i1* %SF, align 1, !mcsema_real_eip !61
  %186 = icmp eq i64 %181, 0, !mcsema_real_eip !61
  store i1 %186, i1* %ZF, align 1, !mcsema_real_eip !61
  %187 = xor i64 %RSP_val.90, -9223372036854775808, !mcsema_real_eip !61
  %188 = and i64 %182, %187, !mcsema_real_eip !61
  %189 = icmp slt i64 %188, 0
  store i1 %189, i1* %OF, align 1, !mcsema_real_eip !61
  %190 = trunc i64 %181 to i8, !mcsema_real_eip !61
  %191 = tail call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !61
  %192 = and i8 %191, 1
  %193 = icmp eq i8 %192, 0
  store i1 %193, i1* %PF, align 1, !mcsema_real_eip !61
  %194 = icmp ugt i64 %RSP_val.90, -129
  store i1 %194, i1* %CF, align 1, !mcsema_real_eip !61
  store i64 %181, i64* %XSP, align 8, !mcsema_real_eip !61
  %195 = inttoptr i64 %181 to i64*, !mcsema_real_eip !62
  %196 = load i64, i64* %195, align 8, !mcsema_real_eip !62
  store i64 %196, i64* %XBP, align 8, !mcsema_real_eip !62
  %197 = add i64 %RSP_val.90, 136, !mcsema_real_eip !62
  store i64 %197, i64* %XSP, align 8, !mcsema_real_eip !62
  %198 = add i64 %RSP_val.90, 144, !mcsema_real_eip !63
  %199 = inttoptr i64 %197 to i64*, !mcsema_real_eip !63
  %200 = load i64, i64* %199, align 8, !mcsema_real_eip !63
  store i64 %200, i64* %XIP, align 8, !mcsema_real_eip !63
  store i64 %198, i64* %XSP, align 8, !mcsema_real_eip !63
  ret void, !mcsema_real_eip !63
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !64
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !64
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !64
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !64
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !64
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !64
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !64
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !64
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !64
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !64
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !64
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !64
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !64
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !64
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !64
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !64
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !64
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !64
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !64
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !64
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !64
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !64
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !64
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !64
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !64
  %R14 = getelementptr %RegState, %RegState* %0, i64 0, i32 70, !mcsema_real_eip !64
  %R15 = getelementptr %RegState, %RegState* %0, i64 0, i32 71, !mcsema_real_eip !64
  %RBP_val.93 = load i64, i64* %XBP, align 8, !mcsema_real_eip !64
  %RSP_val.94 = load i64, i64* %XSP, align 8, !mcsema_real_eip !64
  %1 = add i64 %RSP_val.94, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !64
  store i64 %RBP_val.93, i64* %2, align 8, !mcsema_real_eip !64
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !65
  %R15_val.96 = load i64, i64* %R15, align 8, !mcsema_real_eip !66
  %3 = add i64 %RSP_val.94, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !66
  store i64 %R15_val.96, i64* %4, align 8, !mcsema_real_eip !66
  %R14_val.98 = load i64, i64* %R14, align 8, !mcsema_real_eip !67
  %5 = add i64 %RSP_val.94, -24
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !67
  store i64 %R14_val.98, i64* %6, align 8, !mcsema_real_eip !67
  %RBX_val.100 = load i64, i64* %XBX, align 8, !mcsema_real_eip !68
  %7 = add i64 %RSP_val.94, -32
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !68
  store i64 %RBX_val.100, i64* %8, align 8, !mcsema_real_eip !68
  %9 = add i64 %RSP_val.94, -136
  %10 = xor i64 %9, %7, !mcsema_real_eip !69
  %11 = and i64 %10, 16, !mcsema_real_eip !69
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !69
  store i1 %12, i1* %AF, align 1, !mcsema_real_eip !69
  %13 = trunc i64 %9 to i8, !mcsema_real_eip !69
  %14 = tail call i8 @llvm.ctpop.i8(i8 %13), !mcsema_real_eip !69
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  store i1 %16, i1* %PF, align 1, !mcsema_real_eip !69
  %17 = icmp eq i64 %9, 0, !mcsema_real_eip !69
  store i1 %17, i1* %ZF, align 1, !mcsema_real_eip !69
  %18 = icmp slt i64 %9, 0
  store i1 %18, i1* %SF, align 1, !mcsema_real_eip !69
  %19 = icmp ult i64 %7, 104, !mcsema_real_eip !69
  store i1 %19, i1* %CF, align 1, !mcsema_real_eip !69
  %20 = and i64 %10, %7, !mcsema_real_eip !69
  %21 = icmp slt i64 %20, 0
  store i1 %21, i1* %OF, align 1, !mcsema_real_eip !69
  store i64 %9, i64* %XSP, align 8, !mcsema_real_eip !69
  %RBP_val.103 = load i64, i64* %XBP, align 8
  %22 = add i64 %RBP_val.103, 48, !mcsema_real_eip !70
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !70
  %24 = load i64, i64* %23, align 8, !mcsema_real_eip !70
  store i64 %24, i64* %XAX, align 8, !mcsema_real_eip !70
  %25 = add i64 %RBP_val.103, 40, !mcsema_real_eip !71
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !71
  %27 = load i64, i64* %26, align 8, !mcsema_real_eip !71
  store i64 %27, i64* %R10, align 8, !mcsema_real_eip !71
  %28 = add i64 %RBP_val.103, 24, !mcsema_real_eip !72
  store i64 %28, i64* %R11, align 8, !mcsema_real_eip !72
  %29 = add i64 %RBP_val.103, 16, !mcsema_real_eip !73
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !73
  %31 = load i32, i32* %30, align 4, !mcsema_real_eip !73
  %32 = zext i32 %31 to i64, !mcsema_real_eip !73
  store i64 %32, i64* %XBX, align 8, !mcsema_real_eip !73
  %33 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> <i64 12, i64 12>, <2 x i64>* %33, align 8
  %34 = add i64 %RBP_val.103, -56, !mcsema_real_eip !74
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !74
  %RDI_val.110 = load i64, i64* %XDI, align 8, !mcsema_real_eip !74
  store i64 %RDI_val.110, i64* %35, align 8, !mcsema_real_eip !74
  %RBP_val.111 = load i64, i64* %XBP, align 8, !mcsema_real_eip !75
  %36 = add i64 %RBP_val.111, -48, !mcsema_real_eip !75
  %ESI.112 = bitcast i64* %XSI to i32*, !mcsema_real_eip !75
  %ESI_val.113 = load i32, i32* %ESI.112, align 4, !mcsema_real_eip !75
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !75
  store i32 %ESI_val.113, i32* %37, align 4, !mcsema_real_eip !75
  %RBP_val.114 = load i64, i64* %XBP, align 8
  %38 = add i64 %RBP_val.114, -56, !mcsema_real_eip !76
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !76
  %40 = load i64, i64* %39, align 8, !mcsema_real_eip !76
  store i64 %40, i64* %XDI, align 8, !mcsema_real_eip !76
  %41 = add i64 %RBP_val.114, -40, !mcsema_real_eip !77
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !77
  store i64 %40, i64* %42, align 8, !mcsema_real_eip !77
  %RBP_val.117 = load i64, i64* %XBP, align 8
  %43 = add i64 %RBP_val.117, -48, !mcsema_real_eip !78
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !78
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !78
  %46 = zext i32 %45 to i64, !mcsema_real_eip !78
  store i64 %46, i64* %XSI, align 8, !mcsema_real_eip !78
  %47 = add i64 %RBP_val.117, -32, !mcsema_real_eip !79
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !79
  store i32 %45, i32* %48, align 4, !mcsema_real_eip !79
  %RBP_val.121 = load i64, i64* %XBP, align 8, !mcsema_real_eip !80
  %49 = add i64 %RBP_val.121, -64, !mcsema_real_eip !80
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !80
  %RDX_val.122 = load i64, i64* %XDX, align 8, !mcsema_real_eip !80
  store i64 %RDX_val.122, i64* %50, align 8, !mcsema_real_eip !80
  %RBP_val.123 = load i64, i64* %XBP, align 8, !mcsema_real_eip !81
  %51 = add i64 %RBP_val.123, -72, !mcsema_real_eip !81
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !81
  %RCX_val.124 = load i64, i64* %XCX, align 8, !mcsema_real_eip !81
  store i64 %RCX_val.124, i64* %52, align 8, !mcsema_real_eip !81
  %RBP_val.125 = load i64, i64* %XBP, align 8, !mcsema_real_eip !82
  %53 = add i64 %RBP_val.125, -76, !mcsema_real_eip !82
  %R8D.126 = bitcast i64* %R8 to i32*, !mcsema_real_eip !82
  %R8D_val.127 = load i32, i32* %R8D.126, align 4, !mcsema_real_eip !82
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !82
  store i32 %R8D_val.127, i32* %54, align 4, !mcsema_real_eip !82
  %RBP_val.128 = load i64, i64* %XBP, align 8, !mcsema_real_eip !83
  %55 = add i64 %RBP_val.128, -80, !mcsema_real_eip !83
  %R9D.129 = bitcast i64* %R9 to i32*, !mcsema_real_eip !83
  %R9D_val.130 = load i32, i32* %R9D.129, align 4, !mcsema_real_eip !83
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !83
  store i32 %R9D_val.130, i32* %56, align 4, !mcsema_real_eip !83
  %RBP_val.131 = load i64, i64* %XBP, align 8, !mcsema_real_eip !84
  %57 = add i64 %RBP_val.131, -84, !mcsema_real_eip !84
  %EBX.132 = bitcast i64* %XBX to i32*, !mcsema_real_eip !84
  %EBX_val.133 = load i32, i32* %EBX.132, align 4, !mcsema_real_eip !84
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !84
  store i32 %EBX_val.133, i32* %58, align 4, !mcsema_real_eip !84
  %RBP_val.134 = load i64, i64* %XBP, align 8, !mcsema_real_eip !85
  %59 = add i64 %RBP_val.134, -96, !mcsema_real_eip !85
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !85
  %R10_val.135 = load i64, i64* %R10, align 8, !mcsema_real_eip !85
  store i64 %R10_val.135, i64* %60, align 8, !mcsema_real_eip !85
  %RBP_val.136 = load i64, i64* %XBP, align 8, !mcsema_real_eip !86
  %61 = add i64 %RBP_val.136, -104, !mcsema_real_eip !86
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !86
  %RAX_val.137 = load i64, i64* %XAX, align 8, !mcsema_real_eip !86
  store i64 %RAX_val.137, i64* %62, align 8, !mcsema_real_eip !86
  %R15_val.138 = load i64, i64* %R15, align 8, !mcsema_real_eip !87
  store i64 %R15_val.138, i64* %XDI, align 8, !mcsema_real_eip !87
  %RBP_val.139 = load i64, i64* %XBP, align 8, !mcsema_real_eip !88
  %63 = add i64 %RBP_val.139, -120, !mcsema_real_eip !88
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !88
  %R11_val.140 = load i64, i64* %R11, align 8, !mcsema_real_eip !88
  store i64 %R11_val.140, i64* %64, align 8, !mcsema_real_eip !88
  %RDI_val.141 = load i64, i64* %XDI, align 8, !mcsema_real_eip !89
  %RSP_val.142 = load i64, i64* %XSP, align 8, !mcsema_real_eip !89
  %65 = add i64 %RSP_val.142, -8
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !89
  store i64 -2415393069852865332, i64* %66, align 8, !mcsema_real_eip !89
  store i64 %65, i64* %XSP, align 8, !mcsema_real_eip !89
  %67 = tail call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.141), !mcsema_real_eip !89
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !89
  %RBP_val.143 = load i64, i64* %XBP, align 8, !mcsema_real_eip !90
  %68 = add i64 %RBP_val.143, -112, !mcsema_real_eip !90
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !90
  store i64 %67, i64* %69, align 8, !mcsema_real_eip !90
  %RBP_val.145 = load i64, i64* %XBP, align 8
  %70 = add i64 %RBP_val.145, -40, !mcsema_real_eip !91
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !91
  %72 = load i32, i32* %71, align 4, !mcsema_real_eip !91
  %73 = zext i32 %72 to i64, !mcsema_real_eip !91
  store i64 %73, i64* %XSI, align 8, !mcsema_real_eip !91
  %74 = add i64 %RBP_val.145, -64, !mcsema_real_eip !92
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !92
  %76 = load i64, i64* %75, align 8, !mcsema_real_eip !92
  store i64 %76, i64* %XAX, align 8, !mcsema_real_eip !92
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !93
  %78 = load i32, i32* %77, align 4, !mcsema_real_eip !93
  %79 = add i32 %72, %78, !mcsema_real_eip !93
  %80 = xor i32 %79, %78, !mcsema_real_eip !93
  %81 = xor i32 %80, %72, !mcsema_real_eip !93
  %82 = and i32 %81, 16, !mcsema_real_eip !93
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !93
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !93
  %84 = icmp slt i32 %79, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !93
  %85 = icmp eq i32 %79, 0, !mcsema_real_eip !93
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !93
  %86 = xor i32 %78, -2147483648, !mcsema_real_eip !93
  %87 = xor i32 %86, %72, !mcsema_real_eip !93
  %88 = and i32 %80, %87, !mcsema_real_eip !93
  %89 = icmp slt i32 %88, 0
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !93
  %90 = trunc i32 %79 to i8, !mcsema_real_eip !93
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !93
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !93
  %94 = icmp ult i32 %79, %78, !mcsema_real_eip !93
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !93
  %95 = zext i32 %79 to i64, !mcsema_real_eip !93
  store i64 %95, i64* %XSI, align 8, !mcsema_real_eip !93
  %96 = add i64 %RBP_val.145, -72, !mcsema_real_eip !94
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !94
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !94
  store i64 %98, i64* %XAX, align 8, !mcsema_real_eip !94
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !95
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !95
  %101 = add i32 %79, %100, !mcsema_real_eip !95
  %102 = xor i32 %101, %100, !mcsema_real_eip !95
  %103 = xor i32 %102, %79, !mcsema_real_eip !95
  %104 = and i32 %103, 16, !mcsema_real_eip !95
  %105 = icmp ne i32 %104, 0, !mcsema_real_eip !95
  store i1 %105, i1* %AF, align 1, !mcsema_real_eip !95
  %106 = icmp slt i32 %101, 0
  store i1 %106, i1* %SF, align 1, !mcsema_real_eip !95
  %107 = icmp eq i32 %101, 0, !mcsema_real_eip !95
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !95
  %108 = xor i32 %100, -2147483648, !mcsema_real_eip !95
  %109 = xor i32 %108, %79, !mcsema_real_eip !95
  %110 = and i32 %102, %109, !mcsema_real_eip !95
  %111 = icmp slt i32 %110, 0
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !95
  %112 = trunc i32 %101 to i8, !mcsema_real_eip !95
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !95
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF, align 1, !mcsema_real_eip !95
  %116 = icmp ult i32 %101, %100, !mcsema_real_eip !95
  store i1 %116, i1* %CF, align 1, !mcsema_real_eip !95
  %117 = zext i32 %101 to i64, !mcsema_real_eip !95
  store i64 %117, i64* %XSI, align 8, !mcsema_real_eip !95
  %118 = add i64 %RBP_val.145, -120, !mcsema_real_eip !96
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !96
  %120 = load i64, i64* %119, align 8, !mcsema_real_eip !96
  store i64 %120, i64* %XAX, align 8, !mcsema_real_eip !96
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !97
  %122 = load i32, i32* %121, align 4, !mcsema_real_eip !97
  %123 = zext i32 %122 to i64, !mcsema_real_eip !97
  store i64 %123, i64* %R8, align 8, !mcsema_real_eip !97
  %124 = add i64 %RBP_val.145, -96, !mcsema_real_eip !98
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !98
  %126 = load i64, i64* %125, align 8, !mcsema_real_eip !98
  store i64 %126, i64* %XCX, align 8, !mcsema_real_eip !98
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !99
  %128 = load i32, i32* %127, align 4, !mcsema_real_eip !99
  %129 = add i32 %122, %128, !mcsema_real_eip !99
  %130 = xor i32 %129, %128, !mcsema_real_eip !99
  %131 = xor i32 %130, %122, !mcsema_real_eip !99
  %132 = and i32 %131, 16, !mcsema_real_eip !99
  %133 = icmp ne i32 %132, 0, !mcsema_real_eip !99
  store i1 %133, i1* %AF, align 1, !mcsema_real_eip !99
  %134 = icmp slt i32 %129, 0
  store i1 %134, i1* %SF, align 1, !mcsema_real_eip !99
  %135 = icmp eq i32 %129, 0, !mcsema_real_eip !99
  store i1 %135, i1* %ZF, align 1, !mcsema_real_eip !99
  %136 = xor i32 %128, -2147483648, !mcsema_real_eip !99
  %137 = xor i32 %136, %122, !mcsema_real_eip !99
  %138 = and i32 %130, %137, !mcsema_real_eip !99
  %139 = icmp slt i32 %138, 0
  store i1 %139, i1* %OF, align 1, !mcsema_real_eip !99
  %140 = trunc i32 %129 to i8, !mcsema_real_eip !99
  %141 = tail call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !99
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF, align 1, !mcsema_real_eip !99
  %144 = icmp ult i32 %129, %128, !mcsema_real_eip !99
  store i1 %144, i1* %CF, align 1, !mcsema_real_eip !99
  %145 = zext i32 %129 to i64, !mcsema_real_eip !99
  store i64 %145, i64* %R8, align 8, !mcsema_real_eip !99
  %RBP_val.160 = load i64, i64* %XBP, align 8
  %146 = add i64 %RBP_val.160, -104, !mcsema_real_eip !100
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !100
  %148 = load i64, i64* %147, align 8, !mcsema_real_eip !100
  store i64 %148, i64* %XCX, align 8, !mcsema_real_eip !100
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !101
  %150 = load i32, i32* %149, align 4, !mcsema_real_eip !101
  %151 = add i32 %129, %150, !mcsema_real_eip !101
  %152 = zext i32 %151 to i64, !mcsema_real_eip !101
  store i64 %152, i64* %R8, align 8, !mcsema_real_eip !101
  %153 = add i32 %151, %101, !mcsema_real_eip !102
  %154 = xor i32 %153, %101, !mcsema_real_eip !102
  %155 = xor i32 %154, %151, !mcsema_real_eip !102
  %156 = and i32 %155, 16, !mcsema_real_eip !102
  %157 = icmp ne i32 %156, 0, !mcsema_real_eip !102
  store i1 %157, i1* %AF, align 1, !mcsema_real_eip !102
  %158 = icmp slt i32 %153, 0
  store i1 %158, i1* %SF, align 1, !mcsema_real_eip !102
  %159 = icmp eq i32 %153, 0, !mcsema_real_eip !102
  store i1 %159, i1* %ZF, align 1, !mcsema_real_eip !102
  %160 = xor i32 %101, -2147483648, !mcsema_real_eip !102
  %161 = xor i32 %160, %151, !mcsema_real_eip !102
  %162 = and i32 %154, %161, !mcsema_real_eip !102
  %163 = icmp slt i32 %162, 0
  store i1 %163, i1* %OF, align 1, !mcsema_real_eip !102
  %164 = trunc i32 %153 to i8, !mcsema_real_eip !102
  %165 = tail call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !102
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  store i1 %167, i1* %PF, align 1, !mcsema_real_eip !102
  %168 = icmp ult i32 %153, %101, !mcsema_real_eip !102
  store i1 %168, i1* %CF, align 1, !mcsema_real_eip !102
  %169 = zext i32 %153 to i64, !mcsema_real_eip !102
  store i64 %169, i64* %XSI, align 8, !mcsema_real_eip !102
  %170 = add i64 %RBP_val.160, -112, !mcsema_real_eip !103
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !103
  %172 = load i64, i64* %171, align 8, !mcsema_real_eip !103
  store i64 %172, i64* %XCX, align 8, !mcsema_real_eip !103
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !104
  store i32 %153, i32* %173, align 4, !mcsema_real_eip !104
  %RBP_val.172 = load i64, i64* %XBP, align 8
  %174 = add i64 %RBP_val.172, -36, !mcsema_real_eip !105
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !105
  %176 = load i32, i32* %175, align 4, !mcsema_real_eip !105
  %177 = zext i32 %176 to i64, !mcsema_real_eip !105
  store i64 %177, i64* %XSI, align 8, !mcsema_real_eip !105
  %178 = add i64 %RBP_val.172, -64, !mcsema_real_eip !106
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !106
  %180 = load i64, i64* %179, align 8, !mcsema_real_eip !106
  store i64 %180, i64* %XCX, align 8, !mcsema_real_eip !106
  %181 = add i64 %180, 4, !mcsema_real_eip !107
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !107
  %183 = load i32, i32* %182, align 4, !mcsema_real_eip !107
  %184 = add i32 %176, %183, !mcsema_real_eip !107
  %185 = xor i32 %184, %183, !mcsema_real_eip !107
  %186 = xor i32 %185, %176, !mcsema_real_eip !107
  %187 = and i32 %186, 16, !mcsema_real_eip !107
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !107
  store i1 %188, i1* %AF, align 1, !mcsema_real_eip !107
  %189 = icmp slt i32 %184, 0
  store i1 %189, i1* %SF, align 1, !mcsema_real_eip !107
  %190 = icmp eq i32 %184, 0, !mcsema_real_eip !107
  store i1 %190, i1* %ZF, align 1, !mcsema_real_eip !107
  %191 = xor i32 %183, -2147483648, !mcsema_real_eip !107
  %192 = xor i32 %191, %176, !mcsema_real_eip !107
  %193 = and i32 %185, %192, !mcsema_real_eip !107
  %194 = icmp slt i32 %193, 0
  store i1 %194, i1* %OF, align 1, !mcsema_real_eip !107
  %195 = trunc i32 %184 to i8, !mcsema_real_eip !107
  %196 = tail call i8 @llvm.ctpop.i8(i8 %195), !mcsema_real_eip !107
  %197 = and i8 %196, 1
  %198 = icmp eq i8 %197, 0
  store i1 %198, i1* %PF, align 1, !mcsema_real_eip !107
  %199 = icmp ult i32 %184, %183, !mcsema_real_eip !107
  store i1 %199, i1* %CF, align 1, !mcsema_real_eip !107
  %200 = zext i32 %184 to i64, !mcsema_real_eip !107
  store i64 %200, i64* %XSI, align 8, !mcsema_real_eip !107
  %201 = add i64 %RBP_val.172, -72, !mcsema_real_eip !108
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !108
  %203 = load i64, i64* %202, align 8, !mcsema_real_eip !108
  store i64 %203, i64* %XCX, align 8, !mcsema_real_eip !108
  %204 = add i64 %203, 4, !mcsema_real_eip !109
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !109
  %206 = load i32, i32* %205, align 4, !mcsema_real_eip !109
  %207 = add i32 %184, %206, !mcsema_real_eip !109
  %208 = xor i32 %207, %206, !mcsema_real_eip !109
  %209 = xor i32 %208, %184, !mcsema_real_eip !109
  %210 = and i32 %209, 16, !mcsema_real_eip !109
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !109
  store i1 %211, i1* %AF, align 1, !mcsema_real_eip !109
  %212 = icmp slt i32 %207, 0
  store i1 %212, i1* %SF, align 1, !mcsema_real_eip !109
  %213 = icmp eq i32 %207, 0, !mcsema_real_eip !109
  store i1 %213, i1* %ZF, align 1, !mcsema_real_eip !109
  %214 = xor i32 %206, -2147483648, !mcsema_real_eip !109
  %215 = xor i32 %214, %184, !mcsema_real_eip !109
  %216 = and i32 %208, %215, !mcsema_real_eip !109
  %217 = icmp slt i32 %216, 0
  store i1 %217, i1* %OF, align 1, !mcsema_real_eip !109
  %218 = trunc i32 %207 to i8, !mcsema_real_eip !109
  %219 = tail call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !109
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !109
  %222 = icmp ult i32 %207, %206, !mcsema_real_eip !109
  store i1 %222, i1* %CF, align 1, !mcsema_real_eip !109
  %223 = zext i32 %207 to i64, !mcsema_real_eip !109
  store i64 %223, i64* %XSI, align 8, !mcsema_real_eip !109
  %RAX_val.181 = load i64, i64* %XAX, align 8, !mcsema_real_eip !110
  %224 = add i64 %RAX_val.181, 4, !mcsema_real_eip !110
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !110
  %226 = load i32, i32* %225, align 4, !mcsema_real_eip !110
  %227 = zext i32 %226 to i64, !mcsema_real_eip !110
  store i64 %227, i64* %R8, align 8, !mcsema_real_eip !110
  %228 = add i64 %RBP_val.172, -96, !mcsema_real_eip !111
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !111
  %230 = load i64, i64* %229, align 8, !mcsema_real_eip !111
  store i64 %230, i64* %XCX, align 8, !mcsema_real_eip !111
  %231 = add i64 %230, 4, !mcsema_real_eip !112
  %232 = inttoptr i64 %231 to i32*, !mcsema_real_eip !112
  %233 = load i32, i32* %232, align 4, !mcsema_real_eip !112
  %234 = add i32 %226, %233, !mcsema_real_eip !112
  %235 = xor i32 %234, %233, !mcsema_real_eip !112
  %236 = xor i32 %235, %226, !mcsema_real_eip !112
  %237 = and i32 %236, 16, !mcsema_real_eip !112
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !112
  store i1 %238, i1* %AF, align 1, !mcsema_real_eip !112
  %239 = icmp slt i32 %234, 0
  store i1 %239, i1* %SF, align 1, !mcsema_real_eip !112
  %240 = icmp eq i32 %234, 0, !mcsema_real_eip !112
  store i1 %240, i1* %ZF, align 1, !mcsema_real_eip !112
  %241 = xor i32 %233, -2147483648, !mcsema_real_eip !112
  %242 = xor i32 %241, %226, !mcsema_real_eip !112
  %243 = and i32 %235, %242, !mcsema_real_eip !112
  %244 = icmp slt i32 %243, 0
  store i1 %244, i1* %OF, align 1, !mcsema_real_eip !112
  %245 = trunc i32 %234 to i8, !mcsema_real_eip !112
  %246 = tail call i8 @llvm.ctpop.i8(i8 %245), !mcsema_real_eip !112
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  store i1 %248, i1* %PF, align 1, !mcsema_real_eip !112
  %249 = icmp ult i32 %234, %233, !mcsema_real_eip !112
  store i1 %249, i1* %CF, align 1, !mcsema_real_eip !112
  %250 = zext i32 %234 to i64, !mcsema_real_eip !112
  store i64 %250, i64* %R8, align 8, !mcsema_real_eip !112
  %RBP_val.186 = load i64, i64* %XBP, align 8
  %251 = add i64 %RBP_val.186, -104, !mcsema_real_eip !113
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !113
  %253 = load i64, i64* %252, align 8, !mcsema_real_eip !113
  store i64 %253, i64* %XCX, align 8, !mcsema_real_eip !113
  %254 = add i64 %253, 4, !mcsema_real_eip !114
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !114
  %256 = load i32, i32* %255, align 4, !mcsema_real_eip !114
  %257 = add i32 %234, %256, !mcsema_real_eip !114
  %258 = zext i32 %257 to i64, !mcsema_real_eip !114
  store i64 %258, i64* %R8, align 8, !mcsema_real_eip !114
  %259 = add i32 %257, %207, !mcsema_real_eip !115
  %260 = xor i32 %259, %207, !mcsema_real_eip !115
  %261 = xor i32 %260, %257, !mcsema_real_eip !115
  %262 = and i32 %261, 16, !mcsema_real_eip !115
  %263 = icmp ne i32 %262, 0, !mcsema_real_eip !115
  store i1 %263, i1* %AF, align 1, !mcsema_real_eip !115
  %264 = icmp slt i32 %259, 0
  store i1 %264, i1* %SF, align 1, !mcsema_real_eip !115
  %265 = icmp eq i32 %259, 0, !mcsema_real_eip !115
  store i1 %265, i1* %ZF, align 1, !mcsema_real_eip !115
  %266 = xor i32 %207, -2147483648, !mcsema_real_eip !115
  %267 = xor i32 %266, %257, !mcsema_real_eip !115
  %268 = and i32 %260, %267, !mcsema_real_eip !115
  %269 = icmp slt i32 %268, 0
  store i1 %269, i1* %OF, align 1, !mcsema_real_eip !115
  %270 = trunc i32 %259 to i8, !mcsema_real_eip !115
  %271 = tail call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !115
  %272 = and i8 %271, 1
  %273 = icmp eq i8 %272, 0
  store i1 %273, i1* %PF, align 1, !mcsema_real_eip !115
  %274 = icmp ult i32 %259, %207, !mcsema_real_eip !115
  store i1 %274, i1* %CF, align 1, !mcsema_real_eip !115
  %275 = zext i32 %259 to i64, !mcsema_real_eip !115
  store i64 %275, i64* %XSI, align 8, !mcsema_real_eip !115
  %276 = add i64 %RBP_val.186, -112, !mcsema_real_eip !116
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !116
  %278 = load i64, i64* %277, align 8, !mcsema_real_eip !116
  store i64 %278, i64* %XCX, align 8, !mcsema_real_eip !116
  %279 = add i64 %278, 4, !mcsema_real_eip !117
  %280 = inttoptr i64 %279 to i32*, !mcsema_real_eip !117
  store i32 %259, i32* %280, align 4, !mcsema_real_eip !117
  %RBP_val.198 = load i64, i64* %XBP, align 8
  %281 = add i64 %RBP_val.198, -32, !mcsema_real_eip !118
  %282 = inttoptr i64 %281 to i32*, !mcsema_real_eip !118
  %283 = load i32, i32* %282, align 4, !mcsema_real_eip !118
  %284 = zext i32 %283 to i64, !mcsema_real_eip !118
  store i64 %284, i64* %XSI, align 8, !mcsema_real_eip !118
  %285 = add i64 %RBP_val.198, -64, !mcsema_real_eip !119
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !119
  %287 = load i64, i64* %286, align 8, !mcsema_real_eip !119
  store i64 %287, i64* %XCX, align 8, !mcsema_real_eip !119
  %288 = add i64 %287, 8, !mcsema_real_eip !120
  %289 = inttoptr i64 %288 to i32*, !mcsema_real_eip !120
  %290 = load i32, i32* %289, align 4, !mcsema_real_eip !120
  %291 = add i32 %283, %290, !mcsema_real_eip !120
  %292 = xor i32 %291, %290, !mcsema_real_eip !120
  %293 = xor i32 %292, %283, !mcsema_real_eip !120
  %294 = and i32 %293, 16, !mcsema_real_eip !120
  %295 = icmp ne i32 %294, 0, !mcsema_real_eip !120
  store i1 %295, i1* %AF, align 1, !mcsema_real_eip !120
  %296 = icmp slt i32 %291, 0
  store i1 %296, i1* %SF, align 1, !mcsema_real_eip !120
  %297 = icmp eq i32 %291, 0, !mcsema_real_eip !120
  store i1 %297, i1* %ZF, align 1, !mcsema_real_eip !120
  %298 = xor i32 %290, -2147483648, !mcsema_real_eip !120
  %299 = xor i32 %298, %283, !mcsema_real_eip !120
  %300 = and i32 %292, %299, !mcsema_real_eip !120
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF, align 1, !mcsema_real_eip !120
  %302 = trunc i32 %291 to i8, !mcsema_real_eip !120
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !120
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF, align 1, !mcsema_real_eip !120
  %306 = icmp ult i32 %291, %290, !mcsema_real_eip !120
  store i1 %306, i1* %CF, align 1, !mcsema_real_eip !120
  %307 = zext i32 %291 to i64, !mcsema_real_eip !120
  store i64 %307, i64* %XSI, align 8, !mcsema_real_eip !120
  %308 = add i64 %RBP_val.198, -72, !mcsema_real_eip !121
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !121
  %310 = load i64, i64* %309, align 8, !mcsema_real_eip !121
  store i64 %310, i64* %XCX, align 8, !mcsema_real_eip !121
  %311 = add i64 %310, 8, !mcsema_real_eip !122
  %312 = inttoptr i64 %311 to i32*, !mcsema_real_eip !122
  %313 = load i32, i32* %312, align 4, !mcsema_real_eip !122
  %314 = add i32 %291, %313, !mcsema_real_eip !122
  %315 = xor i32 %314, %313, !mcsema_real_eip !122
  %316 = xor i32 %315, %291, !mcsema_real_eip !122
  %317 = and i32 %316, 16, !mcsema_real_eip !122
  %318 = icmp ne i32 %317, 0, !mcsema_real_eip !122
  store i1 %318, i1* %AF, align 1, !mcsema_real_eip !122
  %319 = icmp slt i32 %314, 0
  store i1 %319, i1* %SF, align 1, !mcsema_real_eip !122
  %320 = icmp eq i32 %314, 0, !mcsema_real_eip !122
  store i1 %320, i1* %ZF, align 1, !mcsema_real_eip !122
  %321 = xor i32 %313, -2147483648, !mcsema_real_eip !122
  %322 = xor i32 %321, %291, !mcsema_real_eip !122
  %323 = and i32 %315, %322, !mcsema_real_eip !122
  %324 = icmp slt i32 %323, 0
  store i1 %324, i1* %OF, align 1, !mcsema_real_eip !122
  %325 = trunc i32 %314 to i8, !mcsema_real_eip !122
  %326 = tail call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !122
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  store i1 %328, i1* %PF, align 1, !mcsema_real_eip !122
  %329 = icmp ult i32 %314, %313, !mcsema_real_eip !122
  store i1 %329, i1* %CF, align 1, !mcsema_real_eip !122
  %330 = zext i32 %314 to i64, !mcsema_real_eip !122
  store i64 %330, i64* %XSI, align 8, !mcsema_real_eip !122
  %RAX_val.207 = load i64, i64* %XAX, align 8, !mcsema_real_eip !123
  %331 = add i64 %RAX_val.207, 8, !mcsema_real_eip !123
  %332 = inttoptr i64 %331 to i32*, !mcsema_real_eip !123
  %333 = load i32, i32* %332, align 4, !mcsema_real_eip !123
  %334 = zext i32 %333 to i64, !mcsema_real_eip !123
  store i64 %334, i64* %R8, align 8, !mcsema_real_eip !123
  %335 = add i64 %RBP_val.198, -96, !mcsema_real_eip !124
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !124
  %337 = load i64, i64* %336, align 8, !mcsema_real_eip !124
  store i64 %337, i64* %XCX, align 8, !mcsema_real_eip !124
  %338 = add i64 %337, 8, !mcsema_real_eip !125
  %339 = inttoptr i64 %338 to i32*, !mcsema_real_eip !125
  %340 = load i32, i32* %339, align 4, !mcsema_real_eip !125
  %341 = add i32 %333, %340, !mcsema_real_eip !125
  %342 = xor i32 %341, %340, !mcsema_real_eip !125
  %343 = xor i32 %342, %333, !mcsema_real_eip !125
  %344 = and i32 %343, 16, !mcsema_real_eip !125
  %345 = icmp ne i32 %344, 0, !mcsema_real_eip !125
  store i1 %345, i1* %AF, align 1, !mcsema_real_eip !125
  %346 = icmp slt i32 %341, 0
  store i1 %346, i1* %SF, align 1, !mcsema_real_eip !125
  %347 = icmp eq i32 %341, 0, !mcsema_real_eip !125
  store i1 %347, i1* %ZF, align 1, !mcsema_real_eip !125
  %348 = xor i32 %340, -2147483648, !mcsema_real_eip !125
  %349 = xor i32 %348, %333, !mcsema_real_eip !125
  %350 = and i32 %342, %349, !mcsema_real_eip !125
  %351 = icmp slt i32 %350, 0
  store i1 %351, i1* %OF, align 1, !mcsema_real_eip !125
  %352 = trunc i32 %341 to i8, !mcsema_real_eip !125
  %353 = tail call i8 @llvm.ctpop.i8(i8 %352), !mcsema_real_eip !125
  %354 = and i8 %353, 1
  %355 = icmp eq i8 %354, 0
  store i1 %355, i1* %PF, align 1, !mcsema_real_eip !125
  %356 = icmp ult i32 %341, %340, !mcsema_real_eip !125
  store i1 %356, i1* %CF, align 1, !mcsema_real_eip !125
  %357 = zext i32 %341 to i64, !mcsema_real_eip !125
  store i64 %357, i64* %R8, align 8, !mcsema_real_eip !125
  %RBP_val.212 = load i64, i64* %XBP, align 8
  %358 = add i64 %RBP_val.212, -104, !mcsema_real_eip !126
  %359 = inttoptr i64 %358 to i64*, !mcsema_real_eip !126
  %360 = load i64, i64* %359, align 8, !mcsema_real_eip !126
  store i64 %360, i64* %XCX, align 8, !mcsema_real_eip !126
  %361 = add i64 %360, 8, !mcsema_real_eip !127
  %362 = inttoptr i64 %361 to i32*, !mcsema_real_eip !127
  %363 = load i32, i32* %362, align 4, !mcsema_real_eip !127
  %364 = add i32 %341, %363, !mcsema_real_eip !127
  %365 = zext i32 %364 to i64, !mcsema_real_eip !127
  store i64 %365, i64* %R8, align 8, !mcsema_real_eip !127
  %366 = add i32 %364, %314, !mcsema_real_eip !128
  %367 = xor i32 %366, %314, !mcsema_real_eip !128
  %368 = xor i32 %367, %364, !mcsema_real_eip !128
  %369 = and i32 %368, 16, !mcsema_real_eip !128
  %370 = icmp ne i32 %369, 0, !mcsema_real_eip !128
  store i1 %370, i1* %AF, align 1, !mcsema_real_eip !128
  %371 = icmp slt i32 %366, 0
  store i1 %371, i1* %SF, align 1, !mcsema_real_eip !128
  %372 = icmp eq i32 %366, 0, !mcsema_real_eip !128
  store i1 %372, i1* %ZF, align 1, !mcsema_real_eip !128
  %373 = xor i32 %314, -2147483648, !mcsema_real_eip !128
  %374 = xor i32 %373, %364, !mcsema_real_eip !128
  %375 = and i32 %367, %374, !mcsema_real_eip !128
  %376 = icmp slt i32 %375, 0
  store i1 %376, i1* %OF, align 1, !mcsema_real_eip !128
  %377 = trunc i32 %366 to i8, !mcsema_real_eip !128
  %378 = tail call i8 @llvm.ctpop.i8(i8 %377), !mcsema_real_eip !128
  %379 = and i8 %378, 1
  %380 = icmp eq i8 %379, 0
  store i1 %380, i1* %PF, align 1, !mcsema_real_eip !128
  %381 = icmp ult i32 %366, %314, !mcsema_real_eip !128
  store i1 %381, i1* %CF, align 1, !mcsema_real_eip !128
  %382 = zext i32 %366 to i64, !mcsema_real_eip !128
  store i64 %382, i64* %XSI, align 8, !mcsema_real_eip !128
  %383 = add i64 %RBP_val.212, -112, !mcsema_real_eip !129
  %384 = inttoptr i64 %383 to i64*, !mcsema_real_eip !129
  %385 = load i64, i64* %384, align 8, !mcsema_real_eip !129
  store i64 %385, i64* %XCX, align 8, !mcsema_real_eip !129
  %386 = add i64 %385, 8, !mcsema_real_eip !130
  %387 = inttoptr i64 %386 to i32*, !mcsema_real_eip !130
  store i32 %366, i32* %387, align 4, !mcsema_real_eip !130
  %RBP_val.224 = load i64, i64* %XBP, align 8, !mcsema_real_eip !131
  %388 = add i64 %RBP_val.224, -112, !mcsema_real_eip !131
  %389 = inttoptr i64 %388 to i64*, !mcsema_real_eip !131
  %390 = load i64, i64* %389, align 8, !mcsema_real_eip !131
  store i64 %390, i64* %XAX, align 8, !mcsema_real_eip !131
  %RSP_val.225 = load i64, i64* %XSP, align 8, !mcsema_real_eip !132
  %391 = add i64 %RSP_val.225, 104, !mcsema_real_eip !132
  %392 = xor i64 %391, %RSP_val.225, !mcsema_real_eip !132
  %393 = and i64 %392, 16, !mcsema_real_eip !132
  %394 = icmp ne i64 %393, 0, !mcsema_real_eip !132
  store i1 %394, i1* %AF, align 1, !mcsema_real_eip !132
  %395 = icmp slt i64 %391, 0
  store i1 %395, i1* %SF, align 1, !mcsema_real_eip !132
  %396 = icmp eq i64 %391, 0, !mcsema_real_eip !132
  store i1 %396, i1* %ZF, align 1, !mcsema_real_eip !132
  %397 = xor i64 %RSP_val.225, -9223372036854775808, !mcsema_real_eip !132
  %398 = and i64 %392, %397, !mcsema_real_eip !132
  %399 = icmp slt i64 %398, 0
  store i1 %399, i1* %OF, align 1, !mcsema_real_eip !132
  %400 = trunc i64 %391 to i8, !mcsema_real_eip !132
  %401 = tail call i8 @llvm.ctpop.i8(i8 %400), !mcsema_real_eip !132
  %402 = and i8 %401, 1
  %403 = icmp eq i8 %402, 0
  store i1 %403, i1* %PF, align 1, !mcsema_real_eip !132
  %404 = icmp ugt i64 %RSP_val.225, -105
  store i1 %404, i1* %CF, align 1, !mcsema_real_eip !132
  store i64 %391, i64* %XSP, align 8, !mcsema_real_eip !132
  %405 = inttoptr i64 %391 to i64*, !mcsema_real_eip !133
  %406 = load i64, i64* %405, align 8, !mcsema_real_eip !133
  store i64 %406, i64* %XBX, align 8, !mcsema_real_eip !133
  %407 = add i64 %RSP_val.225, 112, !mcsema_real_eip !133
  store i64 %407, i64* %XSP, align 8, !mcsema_real_eip !133
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !134
  %409 = load i64, i64* %408, align 8, !mcsema_real_eip !134
  store i64 %409, i64* %R14, align 8, !mcsema_real_eip !134
  %410 = add i64 %RSP_val.225, 120, !mcsema_real_eip !134
  store i64 %410, i64* %XSP, align 8, !mcsema_real_eip !134
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !135
  %412 = load i64, i64* %411, align 8, !mcsema_real_eip !135
  store i64 %412, i64* %R15, align 8, !mcsema_real_eip !135
  %413 = add i64 %RSP_val.225, 128, !mcsema_real_eip !135
  store i64 %413, i64* %XSP, align 8, !mcsema_real_eip !135
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !136
  %415 = load i64, i64* %414, align 8, !mcsema_real_eip !136
  store i64 %415, i64* %XBP, align 8, !mcsema_real_eip !136
  %416 = add i64 %RSP_val.225, 136, !mcsema_real_eip !136
  store i64 %416, i64* %XSP, align 8, !mcsema_real_eip !136
  %417 = add i64 %RSP_val.225, 144, !mcsema_real_eip !137
  %418 = inttoptr i64 %416 to i64*, !mcsema_real_eip !137
  %419 = load i64, i64* %418, align 8, !mcsema_real_eip !137
  store i64 %419, i64* %XIP, align 8, !mcsema_real_eip !137
  store i64 %417, i64* %XSP, align 8, !mcsema_real_eip !137
  ret void, !mcsema_real_eip !137
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 256}
!3 = !{i64 257}
!4 = !{i64 260}
!5 = !{i64 267}
!6 = !{i64 272}
!7 = !{i64 274}
!8 = !{i64 281}
!9 = !{i64 288}
!10 = !{i64 295}
!11 = !{i64 302}
!12 = !{i64 307}
!13 = !{i64 323}
!14 = !{i64 328}
!15 = !{i64 332}
!16 = !{i64 336}
!17 = !{i64 342}
!18 = !{i64 346}
!19 = !{i64 353}
!20 = !{i64 357}
!21 = !{i64 364}
!22 = !{i64 368}
!23 = !{i64 372}
!24 = !{i64 376}
!25 = !{i64 380}
!26 = !{i64 384}
!27 = !{i64 388}
!28 = !{i64 392}
!29 = !{i64 396}
!30 = !{i64 400}
!31 = !{i64 403}
!32 = !{i64 406}
!33 = !{i64 410}
!34 = !{i64 414}
!35 = !{i64 417}
!36 = !{i64 420}
!37 = !{i64 423}
!38 = !{i64 430}
!39 = !{i64 433}
!40 = !{i64 438}
!41 = !{i64 442}
!42 = !{i64 447}
!43 = !{i64 452}
!44 = !{i64 456}
!45 = !{i64 461}
!46 = !{i64 466}
!47 = !{i64 476}
!48 = !{i64 480}
!49 = !{i64 484}
!50 = !{i64 486}
!51 = !{i64 490}
!52 = !{i64 493}
!53 = !{i64 497}
!54 = !{i64 500}
!55 = !{i64 503}
!56 = !{i64 506}
!57 = !{i64 508}
!58 = !{i64 513}
!59 = !{i64 516}
!60 = !{i64 519}
!61 = !{i64 521}
!62 = !{i64 528}
!63 = !{i64 529}
!64 = !{i64 0}
!65 = !{i64 1}
!66 = !{i64 4}
!67 = !{i64 6}
!68 = !{i64 8}
!69 = !{i64 9}
!70 = !{i64 13}
!71 = !{i64 17}
!72 = !{i64 21}
!73 = !{i64 25}
!74 = !{i64 37}
!75 = !{i64 41}
!76 = !{i64 44}
!77 = !{i64 48}
!78 = !{i64 52}
!79 = !{i64 55}
!80 = !{i64 58}
!81 = !{i64 62}
!82 = !{i64 66}
!83 = !{i64 70}
!84 = !{i64 74}
!85 = !{i64 77}
!86 = !{i64 81}
!87 = !{i64 85}
!88 = !{i64 88}
!89 = !{i64 92}
!90 = !{i64 97}
!91 = !{i64 101}
!92 = !{i64 104}
!93 = !{i64 108}
!94 = !{i64 110}
!95 = !{i64 114}
!96 = !{i64 116}
!97 = !{i64 120}
!98 = !{i64 123}
!99 = !{i64 127}
!100 = !{i64 130}
!101 = !{i64 134}
!102 = !{i64 137}
!103 = !{i64 140}
!104 = !{i64 144}
!105 = !{i64 146}
!106 = !{i64 149}
!107 = !{i64 153}
!108 = !{i64 156}
!109 = !{i64 160}
!110 = !{i64 163}
!111 = !{i64 167}
!112 = !{i64 171}
!113 = !{i64 175}
!114 = !{i64 179}
!115 = !{i64 183}
!116 = !{i64 186}
!117 = !{i64 190}
!118 = !{i64 193}
!119 = !{i64 196}
!120 = !{i64 200}
!121 = !{i64 203}
!122 = !{i64 207}
!123 = !{i64 210}
!124 = !{i64 214}
!125 = !{i64 218}
!126 = !{i64 222}
!127 = !{i64 226}
!128 = !{i64 230}
!129 = !{i64 233}
!130 = !{i64 237}
!131 = !{i64 240}
!132 = !{i64 244}
!133 = !{i64 248}
!134 = !{i64 249}
!135 = !{i64 251}
!136 = !{i64 253}
!137 = !{i64 254}
