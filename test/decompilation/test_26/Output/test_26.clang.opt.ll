; ModuleID = 'Output/test_26.clang.opt.bc'
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

; Function Attrs: noinline
define x86_64_sysvcc void @sub_120(%RegState*) local_unnamed_addr #0 {
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
  %3 = add i64 %RSP_val.1, -152
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
  %13 = icmp ult i64 %1, 144, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x221 to i64), i64* %XDI, align 8, !mcsema_real_eip !5
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
  %24 = add i64 %RBP_val.10, -88, !mcsema_real_eip !12
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
  %RBP_val.23 = load i64, i64* %XBP, align 8
  %45 = add i64 %RBP_val.23, -24, !mcsema_real_eip !22
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !22
  %47 = load i64, i64* %46, align 8, !mcsema_real_eip !22
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !22
  %48 = add i64 %RBP_val.23, -8, !mcsema_real_eip !23
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !23
  %50 = load i32, i32* %49, align 4, !mcsema_real_eip !23
  %51 = zext i32 %50 to i64, !mcsema_real_eip !23
  store i64 %51, i64* %XDX, align 8, !mcsema_real_eip !23
  %52 = add i64 %RBP_val.23, -48, !mcsema_real_eip !24
  %EDX.26 = bitcast i64* %XDX to i32*, !mcsema_real_eip !24
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !24
  store i32 %50, i32* %53, align 4, !mcsema_real_eip !24
  %RBP_val.28 = load i64, i64* %XBP, align 8
  %54 = add i64 %RBP_val.28, -16, !mcsema_real_eip !25
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !25
  %56 = load i64, i64* %55, align 8, !mcsema_real_eip !25
  store i64 %56, i64* %XCX, align 8, !mcsema_real_eip !25
  %57 = add i64 %RBP_val.28, -56, !mcsema_real_eip !26
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !26
  store i64 %56, i64* %58, align 8, !mcsema_real_eip !26
  %RBP_val.31 = load i64, i64* %XBP, align 8
  %59 = add i64 %RBP_val.31, -56, !mcsema_real_eip !27
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !27
  %61 = load i64, i64* %60, align 8, !mcsema_real_eip !27
  store i64 %61, i64* %XDI, align 8, !mcsema_real_eip !27
  %62 = add i64 %RBP_val.31, -48, !mcsema_real_eip !28
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !28
  %64 = load i32, i32* %63, align 4, !mcsema_real_eip !28
  %65 = zext i32 %64 to i64, !mcsema_real_eip !28
  store i64 %65, i64* %XSI, align 8, !mcsema_real_eip !28
  %66 = add i64 %RBP_val.31, -8, !mcsema_real_eip !29
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !29
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !29
  %69 = zext i32 %68 to i64, !mcsema_real_eip !29
  store i64 %69, i64* %XDX, align 8, !mcsema_real_eip !29
  %RSP_val.34 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  store i64 %RSP_val.34, i64* %XCX, align 8, !mcsema_real_eip !30
  %70 = add i64 %RSP_val.34, 16, !mcsema_real_eip !31
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !31
  store i32 %68, i32* %71, align 4, !mcsema_real_eip !31
  %RBP_val.38 = load i64, i64* %XBP, align 8, !mcsema_real_eip !32
  %72 = add i64 %RBP_val.38, -16, !mcsema_real_eip !32
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !32
  %74 = load i64, i64* %73, align 8, !mcsema_real_eip !32
  %RCX_val.39 = load i64, i64* %XCX, align 8, !mcsema_real_eip !33
  %75 = add i64 %RCX_val.39, 8, !mcsema_real_eip !33
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !33
  store i64 %74, i64* %76, align 8, !mcsema_real_eip !33
  %RCX_val.41 = load i64, i64* %XCX, align 8, !mcsema_real_eip !34
  %77 = add i64 %RCX_val.41, 32, !mcsema_real_eip !34
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !34
  %RAX_val.42 = load i64, i64* %XAX, align 8, !mcsema_real_eip !34
  store i64 %RAX_val.42, i64* %78, align 8, !mcsema_real_eip !34
  %RBP_val.43 = load i64, i64* %XBP, align 8, !mcsema_real_eip !35
  %79 = add i64 %RBP_val.43, -16, !mcsema_real_eip !35
  store i64 %79, i64* %R8, align 8, !mcsema_real_eip !35
  %RCX_val.44 = load i64, i64* %XCX, align 8, !mcsema_real_eip !36
  %80 = add i64 %RCX_val.44, 24, !mcsema_real_eip !36
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !36
  store i64 %79, i64* %81, align 8, !mcsema_real_eip !36
  %82 = bitcast i64* %XCX to i32**
  %RCX_val.461 = load i32*, i32** %82, align 8
  store i32 3, i32* %RCX_val.461, align 4, !mcsema_real_eip !37
  store i64 2, i64* %R9, align 8, !mcsema_real_eip !38
  %RBP_val.47 = load i64, i64* %XBP, align 8, !mcsema_real_eip !39
  %83 = add i64 %RBP_val.47, -92, !mcsema_real_eip !39
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !39
  store i32 1, i32* %84, align 4, !mcsema_real_eip !39
  %R8_val.50 = load i64, i64* %R8, align 8, !mcsema_real_eip !40
  store i64 %R8_val.50, i64* %XDX, align 8, !mcsema_real_eip !40
  %RAX_val.51 = load i64, i64* %XAX, align 8, !mcsema_real_eip !41
  store i64 %RAX_val.51, i64* %XCX, align 8, !mcsema_real_eip !41
  %RBP_val.52 = load i64, i64* %XBP, align 8, !mcsema_real_eip !42
  %85 = add i64 %RBP_val.52, -92, !mcsema_real_eip !42
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !42
  %87 = load i32, i32* %86, align 4, !mcsema_real_eip !42
  %88 = zext i32 %87 to i64, !mcsema_real_eip !42
  store i64 %88, i64* %R8, align 8, !mcsema_real_eip !42
  %RSP_val.53 = load i64, i64* %XSP, align 8, !mcsema_real_eip !43
  %89 = add i64 %RSP_val.53, -8
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !43
  store i64 -4981261766360305936, i64* %90, align 8, !mcsema_real_eip !43
  store i64 %89, i64* %XSP, align 8, !mcsema_real_eip !43
  tail call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !43
  %RBP_val.54 = load i64, i64* %XBP, align 8, !mcsema_real_eip !44
  %91 = add i64 %RBP_val.54, -64, !mcsema_real_eip !44
  %EDX_val.56 = load i32, i32* %EDX.26, align 4, !mcsema_real_eip !44
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !44
  store i32 %EDX_val.56, i32* %92, align 4, !mcsema_real_eip !44
  %RBP_val.57 = load i64, i64* %XBP, align 8, !mcsema_real_eip !45
  %93 = add i64 %RBP_val.57, -72, !mcsema_real_eip !45
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !45
  %RAX_val.58 = load i64, i64* %XAX, align 8, !mcsema_real_eip !45
  store i64 %RAX_val.58, i64* %94, align 8, !mcsema_real_eip !45
  %RBP_val.59 = load i64, i64* %XBP, align 8
  %95 = add i64 %RBP_val.59, -72, !mcsema_real_eip !46
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !46
  %97 = load i64, i64* %96, align 8, !mcsema_real_eip !46
  store i64 %97, i64* %XAX, align 8, !mcsema_real_eip !46
  %98 = add i64 %RBP_val.59, -40, !mcsema_real_eip !47
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !47
  store i64 %97, i64* %99, align 8, !mcsema_real_eip !47
  %RBP_val.62 = load i64, i64* %XBP, align 8
  %100 = add i64 %RBP_val.62, -64, !mcsema_real_eip !48
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !48
  %102 = load i32, i32* %101, align 4, !mcsema_real_eip !48
  %103 = zext i32 %102 to i64, !mcsema_real_eip !48
  store i64 %103, i64* %XDX, align 8, !mcsema_real_eip !48
  %104 = add i64 %RBP_val.62, -32, !mcsema_real_eip !49
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !49
  store i32 %102, i32* %105, align 4, !mcsema_real_eip !49
  %RBP_val.66 = load i64, i64* %XBP, align 8
  %106 = add i64 %RBP_val.66, -40, !mcsema_real_eip !50
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !50
  %108 = load i32, i32* %107, align 4, !mcsema_real_eip !50
  %109 = zext i32 %108 to i64, !mcsema_real_eip !50
  store i64 %109, i64* %XDX, align 8, !mcsema_real_eip !50
  %110 = add i64 %RBP_val.66, -36, !mcsema_real_eip !51
  %111 = inttoptr i64 %110 to i32*, !mcsema_real_eip !51
  %112 = load i32, i32* %111, align 4, !mcsema_real_eip !51
  %113 = add i32 %108, %112, !mcsema_real_eip !51
  %114 = xor i32 %113, %112, !mcsema_real_eip !51
  %115 = xor i32 %114, %108, !mcsema_real_eip !51
  %116 = and i32 %115, 16, !mcsema_real_eip !51
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !51
  store i1 %117, i1* %AF, align 1, !mcsema_real_eip !51
  %118 = icmp slt i32 %113, 0
  store i1 %118, i1* %SF, align 1, !mcsema_real_eip !51
  %119 = icmp eq i32 %113, 0, !mcsema_real_eip !51
  store i1 %119, i1* %ZF, align 1, !mcsema_real_eip !51
  %120 = xor i32 %112, -2147483648, !mcsema_real_eip !51
  %121 = xor i32 %120, %108, !mcsema_real_eip !51
  %122 = and i32 %114, %121, !mcsema_real_eip !51
  %123 = icmp slt i32 %122, 0
  store i1 %123, i1* %OF, align 1, !mcsema_real_eip !51
  %124 = trunc i32 %113 to i8, !mcsema_real_eip !51
  %125 = tail call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !51
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  store i1 %127, i1* %PF, align 1, !mcsema_real_eip !51
  %128 = icmp ult i32 %113, %112, !mcsema_real_eip !51
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !51
  %129 = zext i32 %113 to i64, !mcsema_real_eip !51
  store i64 %129, i64* %XDX, align 8, !mcsema_real_eip !51
  %130 = add i64 %RBP_val.66, -32, !mcsema_real_eip !52
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !52
  %132 = load i32, i32* %131, align 4, !mcsema_real_eip !52
  %133 = add i32 %113, %132, !mcsema_real_eip !52
  %134 = xor i32 %133, %132, !mcsema_real_eip !52
  %135 = xor i32 %134, %113, !mcsema_real_eip !52
  %136 = and i32 %135, 16, !mcsema_real_eip !52
  %137 = icmp ne i32 %136, 0, !mcsema_real_eip !52
  store i1 %137, i1* %AF, align 1, !mcsema_real_eip !52
  %138 = icmp slt i32 %133, 0
  store i1 %138, i1* %SF, align 1, !mcsema_real_eip !52
  %139 = icmp eq i32 %133, 0, !mcsema_real_eip !52
  store i1 %139, i1* %ZF, align 1, !mcsema_real_eip !52
  %140 = xor i32 %132, -2147483648, !mcsema_real_eip !52
  %141 = xor i32 %140, %113, !mcsema_real_eip !52
  %142 = and i32 %134, %141, !mcsema_real_eip !52
  %143 = icmp slt i32 %142, 0
  store i1 %143, i1* %OF, align 1, !mcsema_real_eip !52
  %144 = trunc i32 %133 to i8, !mcsema_real_eip !52
  %145 = tail call i8 @llvm.ctpop.i8(i8 %144), !mcsema_real_eip !52
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  store i1 %147, i1* %PF, align 1, !mcsema_real_eip !52
  %148 = icmp ult i32 %133, %132, !mcsema_real_eip !52
  store i1 %148, i1* %CF, align 1, !mcsema_real_eip !52
  %149 = zext i32 %133 to i64, !mcsema_real_eip !52
  store i64 %149, i64* %XDX, align 8, !mcsema_real_eip !52
  %150 = add i64 %RBP_val.66, -76, !mcsema_real_eip !53
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !53
  store i32 %133, i32* %151, align 4, !mcsema_real_eip !53
  %RBP_val.76 = load i64, i64* %XBP, align 8
  %152 = add i64 %RBP_val.76, -76, !mcsema_real_eip !54
  %153 = inttoptr i64 %152 to i32*, !mcsema_real_eip !54
  %154 = load i32, i32* %153, align 4, !mcsema_real_eip !54
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %XSI, align 8, !mcsema_real_eip !54
  %156 = add i64 %RBP_val.76, -88, !mcsema_real_eip !55
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !55
  %158 = load i64, i64* %157, align 8, !mcsema_real_eip !55
  store i64 %158, i64* %XDI, align 8, !mcsema_real_eip !55
  %AL.78 = bitcast i64* %XAX to i8*, !mcsema_real_eip !56
  store i8 0, i8* %AL.78, align 1, !mcsema_real_eip !56
  %RDX_val.81 = load i64, i64* %XDX, align 8, !mcsema_real_eip !57
  %RCX_val.82 = load i64, i64* %XCX, align 8, !mcsema_real_eip !57
  %R8_val.83 = load i64, i64* %R8, align 8, !mcsema_real_eip !57
  %R9_val.84 = load i64, i64* %R9, align 8, !mcsema_real_eip !57
  %RSP_val.85 = load i64, i64* %XSP, align 8, !mcsema_real_eip !57
  %159 = inttoptr i64 %RSP_val.85 to i64*, !mcsema_real_eip !57
  %160 = load i64, i64* %159, align 8, !mcsema_real_eip !57
  %161 = add i64 %RSP_val.85, 8, !mcsema_real_eip !57
  %162 = inttoptr i64 %161 to i64*, !mcsema_real_eip !57
  %163 = load i64, i64* %162, align 8, !mcsema_real_eip !57
  %164 = add i64 %RSP_val.85, 16, !mcsema_real_eip !57
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !57
  %166 = load i64, i64* %165, align 8, !mcsema_real_eip !57
  %167 = add i64 %RSP_val.85, 24, !mcsema_real_eip !57
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !57
  %169 = load i64, i64* %168, align 8, !mcsema_real_eip !57
  %170 = add i64 %RSP_val.85, 32, !mcsema_real_eip !57
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !57
  %172 = load i64, i64* %171, align 8, !mcsema_real_eip !57
  %173 = add i64 %RSP_val.85, 40, !mcsema_real_eip !57
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !57
  %175 = load i64, i64* %174, align 8, !mcsema_real_eip !57
  %176 = add i64 %RSP_val.85, -8
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !57
  store i64 -2415393069852865332, i64* %177, align 8, !mcsema_real_eip !57
  store i64 %176, i64* %XSP, align 8, !mcsema_real_eip !57
  %178 = tail call x86_64_sysvcc i64 @_printf(i64 %158, i64 %155, i64 %RDX_val.81, i64 %RCX_val.82, i64 %R8_val.83, i64 %R9_val.84, i64 %160, i64 %163, i64 %166, i64 %169, i64 %172, i64 %175), !mcsema_real_eip !57
  store i64 %178, i64* %XAX, align 8, !mcsema_real_eip !57
  %RBP_val.87 = load i64, i64* %XBP, align 8
  %179 = add i64 %RBP_val.87, -76, !mcsema_real_eip !58
  %180 = inttoptr i64 %179 to i32*, !mcsema_real_eip !58
  %181 = load i32, i32* %180, align 4, !mcsema_real_eip !58
  %182 = zext i32 %181 to i64, !mcsema_real_eip !58
  store i64 %182, i64* %XDX, align 8, !mcsema_real_eip !58
  %183 = add i64 %RBP_val.87, -96, !mcsema_real_eip !59
  %184 = trunc i64 %178 to i32
  %185 = inttoptr i64 %183 to i32*, !mcsema_real_eip !59
  store i32 %184, i32* %185, align 4, !mcsema_real_eip !59
  %EDX_val.92 = load i32, i32* %EDX.26, align 4, !mcsema_real_eip !60
  %186 = zext i32 %EDX_val.92 to i64, !mcsema_real_eip !60
  store i64 %186, i64* %XAX, align 8, !mcsema_real_eip !60
  %RSP_val.93 = load i64, i64* %XSP, align 8, !mcsema_real_eip !61
  %187 = add i64 %RSP_val.93, 144, !mcsema_real_eip !61
  %188 = xor i64 %187, %RSP_val.93, !mcsema_real_eip !61
  %189 = and i64 %188, 16
  %190 = icmp eq i64 %189, 0
  store i1 %190, i1* %AF, align 1, !mcsema_real_eip !61
  %191 = icmp slt i64 %187, 0
  store i1 %191, i1* %SF, align 1, !mcsema_real_eip !61
  %192 = icmp eq i64 %187, 0, !mcsema_real_eip !61
  store i1 %192, i1* %ZF, align 1, !mcsema_real_eip !61
  %193 = xor i64 %RSP_val.93, -9223372036854775808, !mcsema_real_eip !61
  %194 = and i64 %188, %193, !mcsema_real_eip !61
  %195 = icmp slt i64 %194, 0
  store i1 %195, i1* %OF, align 1, !mcsema_real_eip !61
  %196 = trunc i64 %187 to i8, !mcsema_real_eip !61
  %197 = tail call i8 @llvm.ctpop.i8(i8 %196), !mcsema_real_eip !61
  %198 = and i8 %197, 1
  %199 = icmp eq i8 %198, 0
  store i1 %199, i1* %PF, align 1, !mcsema_real_eip !61
  %200 = icmp ugt i64 %RSP_val.93, -145
  store i1 %200, i1* %CF, align 1, !mcsema_real_eip !61
  store i64 %187, i64* %XSP, align 8, !mcsema_real_eip !61
  %201 = inttoptr i64 %187 to i64*, !mcsema_real_eip !62
  %202 = load i64, i64* %201, align 8, !mcsema_real_eip !62
  store i64 %202, i64* %XBP, align 8, !mcsema_real_eip !62
  %203 = add i64 %RSP_val.93, 152, !mcsema_real_eip !62
  store i64 %203, i64* %XSP, align 8, !mcsema_real_eip !62
  %204 = add i64 %RSP_val.93, 160, !mcsema_real_eip !63
  %205 = inttoptr i64 %203 to i64*, !mcsema_real_eip !63
  %206 = load i64, i64* %205, align 8, !mcsema_real_eip !63
  store i64 %206, i64* %XIP, align 8, !mcsema_real_eip !63
  store i64 %204, i64* %XSP, align 8, !mcsema_real_eip !63
  ret void, !mcsema_real_eip !63
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #1 {
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
  %RBP_val.96 = load i64, i64* %XBP, align 8, !mcsema_real_eip !64
  %RSP_val.97 = load i64, i64* %XSP, align 8, !mcsema_real_eip !64
  %1 = add i64 %RSP_val.97, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !64
  store i64 %RBP_val.96, i64* %2, align 8, !mcsema_real_eip !64
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !65
  %RBX_val.99 = load i64, i64* %XBX, align 8, !mcsema_real_eip !66
  %3 = add i64 %RSP_val.97, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !66
  store i64 %RBX_val.99, i64* %4, align 8, !mcsema_real_eip !66
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !66
  %RBP_val.101 = load i64, i64* %XBP, align 8
  %5 = add i64 %RBP_val.101, 48, !mcsema_real_eip !67
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !67
  %7 = load i64, i64* %6, align 8, !mcsema_real_eip !67
  store i64 %7, i64* %XAX, align 8, !mcsema_real_eip !67
  %8 = add i64 %RBP_val.101, 40, !mcsema_real_eip !68
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !68
  %10 = load i64, i64* %9, align 8, !mcsema_real_eip !68
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !68
  %11 = add i64 %RBP_val.101, 24, !mcsema_real_eip !69
  store i64 %11, i64* %R11, align 8, !mcsema_real_eip !69
  %12 = add i64 %RBP_val.101, 16, !mcsema_real_eip !70
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !70
  %14 = load i32, i32* %13, align 4, !mcsema_real_eip !70
  %15 = zext i32 %14 to i64, !mcsema_real_eip !70
  store i64 %15, i64* %XBX, align 8, !mcsema_real_eip !70
  %16 = add i64 %RBP_val.101, -56, !mcsema_real_eip !71
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !71
  %RDI_val.106 = load i64, i64* %XDI, align 8, !mcsema_real_eip !71
  store i64 %RDI_val.106, i64* %17, align 8, !mcsema_real_eip !71
  %RBP_val.107 = load i64, i64* %XBP, align 8, !mcsema_real_eip !72
  %18 = add i64 %RBP_val.107, -48, !mcsema_real_eip !72
  %ESI.108 = bitcast i64* %XSI to i32*, !mcsema_real_eip !72
  %ESI_val.109 = load i32, i32* %ESI.108, align 4, !mcsema_real_eip !72
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !72
  store i32 %ESI_val.109, i32* %19, align 4, !mcsema_real_eip !72
  %RBP_val.110 = load i64, i64* %XBP, align 8
  %20 = add i64 %RBP_val.110, -48, !mcsema_real_eip !73
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !73
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !73
  %23 = zext i32 %22 to i64, !mcsema_real_eip !73
  store i64 %23, i64* %XSI, align 8, !mcsema_real_eip !73
  %24 = add i64 %RBP_val.110, -32, !mcsema_real_eip !74
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !74
  store i32 %22, i32* %25, align 4, !mcsema_real_eip !74
  %RBP_val.114 = load i64, i64* %XBP, align 8
  %26 = add i64 %RBP_val.114, -56, !mcsema_real_eip !75
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !75
  %28 = load i64, i64* %27, align 8, !mcsema_real_eip !75
  store i64 %28, i64* %XDI, align 8, !mcsema_real_eip !75
  %29 = add i64 %RBP_val.114, -40, !mcsema_real_eip !76
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !76
  store i64 %28, i64* %30, align 8, !mcsema_real_eip !76
  %RBP_val.117 = load i64, i64* %XBP, align 8, !mcsema_real_eip !77
  %31 = add i64 %RBP_val.117, -64, !mcsema_real_eip !77
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !77
  %RDX_val.118 = load i64, i64* %XDX, align 8, !mcsema_real_eip !77
  store i64 %RDX_val.118, i64* %32, align 8, !mcsema_real_eip !77
  %RBP_val.119 = load i64, i64* %XBP, align 8, !mcsema_real_eip !78
  %33 = add i64 %RBP_val.119, -72, !mcsema_real_eip !78
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !78
  %RCX_val.120 = load i64, i64* %XCX, align 8, !mcsema_real_eip !78
  store i64 %RCX_val.120, i64* %34, align 8, !mcsema_real_eip !78
  %RBP_val.121 = load i64, i64* %XBP, align 8, !mcsema_real_eip !79
  %35 = add i64 %RBP_val.121, -76, !mcsema_real_eip !79
  %R8D.122 = bitcast i64* %R8 to i32*, !mcsema_real_eip !79
  %R8D_val.123 = load i32, i32* %R8D.122, align 4, !mcsema_real_eip !79
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !79
  store i32 %R8D_val.123, i32* %36, align 4, !mcsema_real_eip !79
  %RBP_val.124 = load i64, i64* %XBP, align 8, !mcsema_real_eip !80
  %37 = add i64 %RBP_val.124, -80, !mcsema_real_eip !80
  %R9D.125 = bitcast i64* %R9 to i32*, !mcsema_real_eip !80
  %R9D_val.126 = load i32, i32* %R9D.125, align 4, !mcsema_real_eip !80
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !80
  store i32 %R9D_val.126, i32* %38, align 4, !mcsema_real_eip !80
  %RBP_val.127 = load i64, i64* %XBP, align 8, !mcsema_real_eip !81
  %39 = add i64 %RBP_val.127, -84, !mcsema_real_eip !81
  %EBX.128 = bitcast i64* %XBX to i32*, !mcsema_real_eip !81
  %EBX_val.129 = load i32, i32* %EBX.128, align 4, !mcsema_real_eip !81
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !81
  store i32 %EBX_val.129, i32* %40, align 4, !mcsema_real_eip !81
  %RBP_val.130 = load i64, i64* %XBP, align 8, !mcsema_real_eip !82
  %41 = add i64 %RBP_val.130, -96, !mcsema_real_eip !82
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !82
  %R10_val.131 = load i64, i64* %R10, align 8, !mcsema_real_eip !82
  store i64 %R10_val.131, i64* %42, align 8, !mcsema_real_eip !82
  %RBP_val.132 = load i64, i64* %XBP, align 8, !mcsema_real_eip !83
  %43 = add i64 %RBP_val.132, -104, !mcsema_real_eip !83
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !83
  %RAX_val.133 = load i64, i64* %XAX, align 8, !mcsema_real_eip !83
  store i64 %RAX_val.133, i64* %44, align 8, !mcsema_real_eip !83
  %RBP_val.134 = load i64, i64* %XBP, align 8
  %45 = add i64 %RBP_val.134, -40, !mcsema_real_eip !84
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !84
  %47 = load i32, i32* %46, align 4, !mcsema_real_eip !84
  %48 = zext i32 %47 to i64, !mcsema_real_eip !84
  store i64 %48, i64* %XSI, align 8, !mcsema_real_eip !84
  %49 = add i64 %RBP_val.134, -64, !mcsema_real_eip !85
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !85
  %51 = load i64, i64* %50, align 8, !mcsema_real_eip !85
  store i64 %51, i64* %XAX, align 8, !mcsema_real_eip !85
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !86
  %53 = load i32, i32* %52, align 4, !mcsema_real_eip !86
  %54 = zext i32 %53 to i64, !mcsema_real_eip !86
  store i64 %54, i64* %R8, align 8, !mcsema_real_eip !86
  %55 = add i32 %53, %47, !mcsema_real_eip !87
  %56 = xor i32 %55, %47, !mcsema_real_eip !87
  %57 = xor i32 %56, %53, !mcsema_real_eip !87
  %58 = and i32 %57, 16, !mcsema_real_eip !87
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !87
  store i1 %59, i1* %AF, align 1, !mcsema_real_eip !87
  %60 = icmp slt i32 %55, 0
  store i1 %60, i1* %SF, align 1, !mcsema_real_eip !87
  %61 = icmp eq i32 %55, 0, !mcsema_real_eip !87
  store i1 %61, i1* %ZF, align 1, !mcsema_real_eip !87
  %62 = xor i32 %47, -2147483648, !mcsema_real_eip !87
  %63 = xor i32 %62, %53, !mcsema_real_eip !87
  %64 = and i32 %56, %63, !mcsema_real_eip !87
  %65 = icmp slt i32 %64, 0
  store i1 %65, i1* %OF, align 1, !mcsema_real_eip !87
  %66 = trunc i32 %55 to i8, !mcsema_real_eip !87
  %67 = tail call i8 @llvm.ctpop.i8(i8 %66), !mcsema_real_eip !87
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  store i1 %69, i1* %PF, align 1, !mcsema_real_eip !87
  %70 = icmp ult i32 %55, %47, !mcsema_real_eip !87
  store i1 %70, i1* %CF, align 1, !mcsema_real_eip !87
  %71 = zext i32 %55 to i64, !mcsema_real_eip !87
  store i64 %71, i64* %XSI, align 8, !mcsema_real_eip !87
  %72 = add i64 %RBP_val.134, -72, !mcsema_real_eip !88
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !88
  %74 = load i64, i64* %73, align 8, !mcsema_real_eip !88
  store i64 %74, i64* %XAX, align 8, !mcsema_real_eip !88
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !89
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !89
  %77 = zext i32 %76 to i64, !mcsema_real_eip !89
  store i64 %77, i64* %R8, align 8, !mcsema_real_eip !89
  %78 = add i32 %76, %55, !mcsema_real_eip !90
  %79 = xor i32 %78, %55, !mcsema_real_eip !90
  %80 = xor i32 %79, %76, !mcsema_real_eip !90
  %81 = and i32 %80, 16, !mcsema_real_eip !90
  %82 = icmp ne i32 %81, 0, !mcsema_real_eip !90
  store i1 %82, i1* %AF, align 1, !mcsema_real_eip !90
  %83 = icmp slt i32 %78, 0
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !90
  %84 = icmp eq i32 %78, 0, !mcsema_real_eip !90
  store i1 %84, i1* %ZF, align 1, !mcsema_real_eip !90
  %85 = xor i32 %55, -2147483648, !mcsema_real_eip !90
  %86 = xor i32 %85, %76, !mcsema_real_eip !90
  %87 = and i32 %79, %86, !mcsema_real_eip !90
  %88 = icmp slt i32 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !90
  %89 = trunc i32 %78 to i8, !mcsema_real_eip !90
  %90 = tail call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !90
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  store i1 %92, i1* %PF, align 1, !mcsema_real_eip !90
  %93 = icmp ult i32 %78, %55, !mcsema_real_eip !90
  store i1 %93, i1* %CF, align 1, !mcsema_real_eip !90
  %94 = zext i32 %78 to i64, !mcsema_real_eip !90
  store i64 %94, i64* %XSI, align 8, !mcsema_real_eip !90
  %95 = bitcast i64* %R11 to i32**
  %R11_val.1471 = load i32*, i32** %95, align 8
  %96 = load i32, i32* %R11_val.1471, align 4, !mcsema_real_eip !91
  %97 = zext i32 %96 to i64, !mcsema_real_eip !91
  store i64 %97, i64* %R8, align 8, !mcsema_real_eip !91
  %98 = add i64 %RBP_val.134, -96, !mcsema_real_eip !92
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !92
  %100 = load i64, i64* %99, align 8, !mcsema_real_eip !92
  store i64 %100, i64* %XAX, align 8, !mcsema_real_eip !92
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !93
  %102 = load i32, i32* %101, align 4, !mcsema_real_eip !93
  %103 = zext i32 %102 to i64, !mcsema_real_eip !93
  store i64 %103, i64* %R9, align 8, !mcsema_real_eip !93
  %104 = add i32 %102, %96, !mcsema_real_eip !94
  %105 = xor i32 %104, %96, !mcsema_real_eip !94
  %106 = xor i32 %105, %102, !mcsema_real_eip !94
  %107 = and i32 %106, 16, !mcsema_real_eip !94
  %108 = icmp ne i32 %107, 0, !mcsema_real_eip !94
  store i1 %108, i1* %AF, align 1, !mcsema_real_eip !94
  %109 = icmp slt i32 %104, 0
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !94
  %110 = icmp eq i32 %104, 0, !mcsema_real_eip !94
  store i1 %110, i1* %ZF, align 1, !mcsema_real_eip !94
  %111 = xor i32 %96, -2147483648, !mcsema_real_eip !94
  %112 = xor i32 %111, %102, !mcsema_real_eip !94
  %113 = and i32 %105, %112, !mcsema_real_eip !94
  %114 = icmp slt i32 %113, 0
  store i1 %114, i1* %OF, align 1, !mcsema_real_eip !94
  %115 = trunc i32 %104 to i8, !mcsema_real_eip !94
  %116 = tail call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !94
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  store i1 %118, i1* %PF, align 1, !mcsema_real_eip !94
  %119 = icmp ult i32 %104, %96, !mcsema_real_eip !94
  store i1 %119, i1* %CF, align 1, !mcsema_real_eip !94
  %120 = zext i32 %104 to i64, !mcsema_real_eip !94
  store i64 %120, i64* %R8, align 8, !mcsema_real_eip !94
  %RBP_val.154 = load i64, i64* %XBP, align 8
  %121 = add i64 %RBP_val.154, -104, !mcsema_real_eip !95
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !95
  %123 = load i64, i64* %122, align 8, !mcsema_real_eip !95
  store i64 %123, i64* %XAX, align 8, !mcsema_real_eip !95
  %124 = inttoptr i64 %123 to i32*, !mcsema_real_eip !96
  %125 = load i32, i32* %124, align 4, !mcsema_real_eip !96
  %126 = zext i32 %125 to i64, !mcsema_real_eip !96
  store i64 %126, i64* %R9, align 8, !mcsema_real_eip !96
  %127 = add i32 %125, %104, !mcsema_real_eip !97
  %128 = zext i32 %127 to i64, !mcsema_real_eip !97
  store i64 %128, i64* %R8, align 8, !mcsema_real_eip !97
  %129 = add i32 %127, %78, !mcsema_real_eip !98
  %130 = xor i32 %129, %78, !mcsema_real_eip !98
  %131 = xor i32 %130, %127, !mcsema_real_eip !98
  %132 = and i32 %131, 16, !mcsema_real_eip !98
  %133 = icmp ne i32 %132, 0, !mcsema_real_eip !98
  store i1 %133, i1* %AF, align 1, !mcsema_real_eip !98
  %134 = icmp slt i32 %129, 0
  store i1 %134, i1* %SF, align 1, !mcsema_real_eip !98
  %135 = icmp eq i32 %129, 0, !mcsema_real_eip !98
  store i1 %135, i1* %ZF, align 1, !mcsema_real_eip !98
  %136 = xor i32 %78, -2147483648, !mcsema_real_eip !98
  %137 = xor i32 %136, %127, !mcsema_real_eip !98
  %138 = and i32 %130, %137, !mcsema_real_eip !98
  %139 = icmp slt i32 %138, 0
  store i1 %139, i1* %OF, align 1, !mcsema_real_eip !98
  %140 = trunc i32 %129 to i8, !mcsema_real_eip !98
  %141 = tail call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !98
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF, align 1, !mcsema_real_eip !98
  %144 = icmp ult i32 %129, %78, !mcsema_real_eip !98
  store i1 %144, i1* %CF, align 1, !mcsema_real_eip !98
  %145 = zext i32 %129 to i64, !mcsema_real_eip !98
  store i64 %145, i64* %XSI, align 8, !mcsema_real_eip !98
  %146 = add i64 %RBP_val.154, -120, !mcsema_real_eip !99
  %147 = inttoptr i64 %146 to i32*, !mcsema_real_eip !99
  store i32 %129, i32* %147, align 4, !mcsema_real_eip !99
  %RBP_val.167 = load i64, i64* %XBP, align 8
  %148 = add i64 %RBP_val.167, -36, !mcsema_real_eip !100
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !100
  %150 = load i32, i32* %149, align 4, !mcsema_real_eip !100
  %151 = zext i32 %150 to i64, !mcsema_real_eip !100
  store i64 %151, i64* %XSI, align 8, !mcsema_real_eip !100
  %152 = add i64 %RBP_val.167, -64, !mcsema_real_eip !101
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !101
  %154 = load i64, i64* %153, align 8, !mcsema_real_eip !101
  store i64 %154, i64* %XAX, align 8, !mcsema_real_eip !101
  %155 = add i64 %154, 4, !mcsema_real_eip !102
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !102
  %157 = load i32, i32* %156, align 4, !mcsema_real_eip !102
  %158 = zext i32 %157 to i64, !mcsema_real_eip !102
  store i64 %158, i64* %R8, align 8, !mcsema_real_eip !102
  %159 = add i32 %157, %150, !mcsema_real_eip !103
  %160 = xor i32 %159, %150, !mcsema_real_eip !103
  %161 = xor i32 %160, %157, !mcsema_real_eip !103
  %162 = and i32 %161, 16, !mcsema_real_eip !103
  %163 = icmp ne i32 %162, 0, !mcsema_real_eip !103
  store i1 %163, i1* %AF, align 1, !mcsema_real_eip !103
  %164 = icmp slt i32 %159, 0
  store i1 %164, i1* %SF, align 1, !mcsema_real_eip !103
  %165 = icmp eq i32 %159, 0, !mcsema_real_eip !103
  store i1 %165, i1* %ZF, align 1, !mcsema_real_eip !103
  %166 = xor i32 %150, -2147483648, !mcsema_real_eip !103
  %167 = xor i32 %166, %157, !mcsema_real_eip !103
  %168 = and i32 %160, %167, !mcsema_real_eip !103
  %169 = icmp slt i32 %168, 0
  store i1 %169, i1* %OF, align 1, !mcsema_real_eip !103
  %170 = trunc i32 %159 to i8, !mcsema_real_eip !103
  %171 = tail call i8 @llvm.ctpop.i8(i8 %170), !mcsema_real_eip !103
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  store i1 %173, i1* %PF, align 1, !mcsema_real_eip !103
  %174 = icmp ult i32 %159, %150, !mcsema_real_eip !103
  store i1 %174, i1* %CF, align 1, !mcsema_real_eip !103
  %175 = zext i32 %159 to i64, !mcsema_real_eip !103
  store i64 %175, i64* %XSI, align 8, !mcsema_real_eip !103
  %176 = add i64 %RBP_val.167, -72, !mcsema_real_eip !104
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !104
  %178 = load i64, i64* %177, align 8, !mcsema_real_eip !104
  store i64 %178, i64* %XAX, align 8, !mcsema_real_eip !104
  %179 = add i64 %178, 4, !mcsema_real_eip !105
  %180 = inttoptr i64 %179 to i32*, !mcsema_real_eip !105
  %181 = load i32, i32* %180, align 4, !mcsema_real_eip !105
  %182 = zext i32 %181 to i64, !mcsema_real_eip !105
  store i64 %182, i64* %R8, align 8, !mcsema_real_eip !105
  %183 = add i32 %181, %159, !mcsema_real_eip !106
  %184 = xor i32 %183, %159, !mcsema_real_eip !106
  %185 = xor i32 %184, %181, !mcsema_real_eip !106
  %186 = and i32 %185, 16, !mcsema_real_eip !106
  %187 = icmp ne i32 %186, 0, !mcsema_real_eip !106
  store i1 %187, i1* %AF, align 1, !mcsema_real_eip !106
  %188 = icmp slt i32 %183, 0
  store i1 %188, i1* %SF, align 1, !mcsema_real_eip !106
  %189 = icmp eq i32 %183, 0, !mcsema_real_eip !106
  store i1 %189, i1* %ZF, align 1, !mcsema_real_eip !106
  %190 = xor i32 %159, -2147483648, !mcsema_real_eip !106
  %191 = xor i32 %190, %181, !mcsema_real_eip !106
  %192 = and i32 %184, %191, !mcsema_real_eip !106
  %193 = icmp slt i32 %192, 0
  store i1 %193, i1* %OF, align 1, !mcsema_real_eip !106
  %194 = trunc i32 %183 to i8, !mcsema_real_eip !106
  %195 = tail call i8 @llvm.ctpop.i8(i8 %194), !mcsema_real_eip !106
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  store i1 %197, i1* %PF, align 1, !mcsema_real_eip !106
  %198 = icmp ult i32 %183, %159, !mcsema_real_eip !106
  store i1 %198, i1* %CF, align 1, !mcsema_real_eip !106
  %199 = zext i32 %183 to i64, !mcsema_real_eip !106
  store i64 %199, i64* %XSI, align 8, !mcsema_real_eip !106
  %R11_val.180 = load i64, i64* %R11, align 8, !mcsema_real_eip !107
  %200 = add i64 %R11_val.180, 4, !mcsema_real_eip !107
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !107
  %202 = load i32, i32* %201, align 4, !mcsema_real_eip !107
  %203 = zext i32 %202 to i64, !mcsema_real_eip !107
  store i64 %203, i64* %R8, align 8, !mcsema_real_eip !107
  %204 = add i64 %RBP_val.167, -96, !mcsema_real_eip !108
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !108
  %206 = load i64, i64* %205, align 8, !mcsema_real_eip !108
  store i64 %206, i64* %XAX, align 8, !mcsema_real_eip !108
  %207 = add i64 %206, 4, !mcsema_real_eip !109
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !109
  %209 = load i32, i32* %208, align 4, !mcsema_real_eip !109
  %210 = zext i32 %209 to i64, !mcsema_real_eip !109
  store i64 %210, i64* %R9, align 8, !mcsema_real_eip !109
  %211 = add i32 %209, %202, !mcsema_real_eip !110
  %212 = xor i32 %211, %202, !mcsema_real_eip !110
  %213 = xor i32 %212, %209, !mcsema_real_eip !110
  %214 = and i32 %213, 16, !mcsema_real_eip !110
  %215 = icmp ne i32 %214, 0, !mcsema_real_eip !110
  store i1 %215, i1* %AF, align 1, !mcsema_real_eip !110
  %216 = icmp slt i32 %211, 0
  store i1 %216, i1* %SF, align 1, !mcsema_real_eip !110
  %217 = icmp eq i32 %211, 0, !mcsema_real_eip !110
  store i1 %217, i1* %ZF, align 1, !mcsema_real_eip !110
  %218 = xor i32 %202, -2147483648, !mcsema_real_eip !110
  %219 = xor i32 %218, %209, !mcsema_real_eip !110
  %220 = and i32 %212, %219, !mcsema_real_eip !110
  %221 = icmp slt i32 %220, 0
  store i1 %221, i1* %OF, align 1, !mcsema_real_eip !110
  %222 = trunc i32 %211 to i8, !mcsema_real_eip !110
  %223 = tail call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !110
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  store i1 %225, i1* %PF, align 1, !mcsema_real_eip !110
  %226 = icmp ult i32 %211, %202, !mcsema_real_eip !110
  store i1 %226, i1* %CF, align 1, !mcsema_real_eip !110
  %227 = zext i32 %211 to i64, !mcsema_real_eip !110
  store i64 %227, i64* %R8, align 8, !mcsema_real_eip !110
  %RBP_val.187 = load i64, i64* %XBP, align 8
  %228 = add i64 %RBP_val.187, -104, !mcsema_real_eip !111
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !111
  %230 = load i64, i64* %229, align 8, !mcsema_real_eip !111
  store i64 %230, i64* %XAX, align 8, !mcsema_real_eip !111
  %231 = add i64 %230, 4, !mcsema_real_eip !112
  %232 = inttoptr i64 %231 to i32*, !mcsema_real_eip !112
  %233 = load i32, i32* %232, align 4, !mcsema_real_eip !112
  %234 = zext i32 %233 to i64, !mcsema_real_eip !112
  store i64 %234, i64* %R9, align 8, !mcsema_real_eip !112
  %235 = add i32 %233, %211, !mcsema_real_eip !113
  %236 = zext i32 %235 to i64, !mcsema_real_eip !113
  store i64 %236, i64* %R8, align 8, !mcsema_real_eip !113
  %237 = add i32 %235, %183, !mcsema_real_eip !114
  %238 = xor i32 %237, %183, !mcsema_real_eip !114
  %239 = xor i32 %238, %235, !mcsema_real_eip !114
  %240 = and i32 %239, 16, !mcsema_real_eip !114
  %241 = icmp ne i32 %240, 0, !mcsema_real_eip !114
  store i1 %241, i1* %AF, align 1, !mcsema_real_eip !114
  %242 = icmp slt i32 %237, 0
  store i1 %242, i1* %SF, align 1, !mcsema_real_eip !114
  %243 = icmp eq i32 %237, 0, !mcsema_real_eip !114
  store i1 %243, i1* %ZF, align 1, !mcsema_real_eip !114
  %244 = xor i32 %183, -2147483648, !mcsema_real_eip !114
  %245 = xor i32 %244, %235, !mcsema_real_eip !114
  %246 = and i32 %238, %245, !mcsema_real_eip !114
  %247 = icmp slt i32 %246, 0
  store i1 %247, i1* %OF, align 1, !mcsema_real_eip !114
  %248 = trunc i32 %237 to i8, !mcsema_real_eip !114
  %249 = tail call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !114
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  store i1 %251, i1* %PF, align 1, !mcsema_real_eip !114
  %252 = icmp ult i32 %237, %183, !mcsema_real_eip !114
  store i1 %252, i1* %CF, align 1, !mcsema_real_eip !114
  %253 = zext i32 %237 to i64, !mcsema_real_eip !114
  store i64 %253, i64* %XSI, align 8, !mcsema_real_eip !114
  %254 = add i64 %RBP_val.187, -116, !mcsema_real_eip !115
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !115
  store i32 %237, i32* %255, align 4, !mcsema_real_eip !115
  %RBP_val.200 = load i64, i64* %XBP, align 8
  %256 = add i64 %RBP_val.200, -32, !mcsema_real_eip !116
  %257 = inttoptr i64 %256 to i32*, !mcsema_real_eip !116
  %258 = load i32, i32* %257, align 4, !mcsema_real_eip !116
  %259 = zext i32 %258 to i64, !mcsema_real_eip !116
  store i64 %259, i64* %XSI, align 8, !mcsema_real_eip !116
  %260 = add i64 %RBP_val.200, -64, !mcsema_real_eip !117
  %261 = inttoptr i64 %260 to i64*, !mcsema_real_eip !117
  %262 = load i64, i64* %261, align 8, !mcsema_real_eip !117
  store i64 %262, i64* %XAX, align 8, !mcsema_real_eip !117
  %263 = add i64 %262, 8, !mcsema_real_eip !118
  %264 = inttoptr i64 %263 to i32*, !mcsema_real_eip !118
  %265 = load i32, i32* %264, align 4, !mcsema_real_eip !118
  %266 = zext i32 %265 to i64, !mcsema_real_eip !118
  store i64 %266, i64* %R8, align 8, !mcsema_real_eip !118
  %267 = add i32 %265, %258, !mcsema_real_eip !119
  %268 = xor i32 %267, %258, !mcsema_real_eip !119
  %269 = xor i32 %268, %265, !mcsema_real_eip !119
  %270 = and i32 %269, 16, !mcsema_real_eip !119
  %271 = icmp ne i32 %270, 0, !mcsema_real_eip !119
  store i1 %271, i1* %AF, align 1, !mcsema_real_eip !119
  %272 = icmp slt i32 %267, 0
  store i1 %272, i1* %SF, align 1, !mcsema_real_eip !119
  %273 = icmp eq i32 %267, 0, !mcsema_real_eip !119
  store i1 %273, i1* %ZF, align 1, !mcsema_real_eip !119
  %274 = xor i32 %258, -2147483648, !mcsema_real_eip !119
  %275 = xor i32 %274, %265, !mcsema_real_eip !119
  %276 = and i32 %268, %275, !mcsema_real_eip !119
  %277 = icmp slt i32 %276, 0
  store i1 %277, i1* %OF, align 1, !mcsema_real_eip !119
  %278 = trunc i32 %267 to i8, !mcsema_real_eip !119
  %279 = tail call i8 @llvm.ctpop.i8(i8 %278), !mcsema_real_eip !119
  %280 = and i8 %279, 1
  %281 = icmp eq i8 %280, 0
  store i1 %281, i1* %PF, align 1, !mcsema_real_eip !119
  %282 = icmp ult i32 %267, %258, !mcsema_real_eip !119
  store i1 %282, i1* %CF, align 1, !mcsema_real_eip !119
  %283 = zext i32 %267 to i64, !mcsema_real_eip !119
  store i64 %283, i64* %XSI, align 8, !mcsema_real_eip !119
  %284 = add i64 %RBP_val.200, -72, !mcsema_real_eip !120
  %285 = inttoptr i64 %284 to i64*, !mcsema_real_eip !120
  %286 = load i64, i64* %285, align 8, !mcsema_real_eip !120
  store i64 %286, i64* %XAX, align 8, !mcsema_real_eip !120
  %287 = add i64 %286, 8, !mcsema_real_eip !121
  %288 = inttoptr i64 %287 to i32*, !mcsema_real_eip !121
  %289 = load i32, i32* %288, align 4, !mcsema_real_eip !121
  %290 = zext i32 %289 to i64, !mcsema_real_eip !121
  store i64 %290, i64* %R8, align 8, !mcsema_real_eip !121
  %291 = add i32 %289, %267, !mcsema_real_eip !122
  %292 = xor i32 %291, %267, !mcsema_real_eip !122
  %293 = xor i32 %292, %289, !mcsema_real_eip !122
  %294 = and i32 %293, 16, !mcsema_real_eip !122
  %295 = icmp ne i32 %294, 0, !mcsema_real_eip !122
  store i1 %295, i1* %AF, align 1, !mcsema_real_eip !122
  %296 = icmp slt i32 %291, 0
  store i1 %296, i1* %SF, align 1, !mcsema_real_eip !122
  %297 = icmp eq i32 %291, 0, !mcsema_real_eip !122
  store i1 %297, i1* %ZF, align 1, !mcsema_real_eip !122
  %298 = xor i32 %267, -2147483648, !mcsema_real_eip !122
  %299 = xor i32 %298, %289, !mcsema_real_eip !122
  %300 = and i32 %292, %299, !mcsema_real_eip !122
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF, align 1, !mcsema_real_eip !122
  %302 = trunc i32 %291 to i8, !mcsema_real_eip !122
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !122
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF, align 1, !mcsema_real_eip !122
  %306 = icmp ult i32 %291, %267, !mcsema_real_eip !122
  store i1 %306, i1* %CF, align 1, !mcsema_real_eip !122
  %307 = zext i32 %291 to i64, !mcsema_real_eip !122
  store i64 %307, i64* %XSI, align 8, !mcsema_real_eip !122
  %R11_val.213 = load i64, i64* %R11, align 8, !mcsema_real_eip !123
  %308 = add i64 %R11_val.213, 8, !mcsema_real_eip !123
  %309 = inttoptr i64 %308 to i32*, !mcsema_real_eip !123
  %310 = load i32, i32* %309, align 4, !mcsema_real_eip !123
  %311 = zext i32 %310 to i64, !mcsema_real_eip !123
  store i64 %311, i64* %R8, align 8, !mcsema_real_eip !123
  %312 = add i64 %RBP_val.200, -96, !mcsema_real_eip !124
  %313 = inttoptr i64 %312 to i64*, !mcsema_real_eip !124
  %314 = load i64, i64* %313, align 8, !mcsema_real_eip !124
  store i64 %314, i64* %XAX, align 8, !mcsema_real_eip !124
  %315 = add i64 %314, 8, !mcsema_real_eip !125
  %316 = inttoptr i64 %315 to i32*, !mcsema_real_eip !125
  %317 = load i32, i32* %316, align 4, !mcsema_real_eip !125
  %318 = zext i32 %317 to i64, !mcsema_real_eip !125
  store i64 %318, i64* %R9, align 8, !mcsema_real_eip !125
  %319 = add i32 %317, %310, !mcsema_real_eip !126
  %320 = xor i32 %319, %310, !mcsema_real_eip !126
  %321 = xor i32 %320, %317, !mcsema_real_eip !126
  %322 = and i32 %321, 16, !mcsema_real_eip !126
  %323 = icmp ne i32 %322, 0, !mcsema_real_eip !126
  store i1 %323, i1* %AF, align 1, !mcsema_real_eip !126
  %324 = icmp slt i32 %319, 0
  store i1 %324, i1* %SF, align 1, !mcsema_real_eip !126
  %325 = icmp eq i32 %319, 0, !mcsema_real_eip !126
  store i1 %325, i1* %ZF, align 1, !mcsema_real_eip !126
  %326 = xor i32 %310, -2147483648, !mcsema_real_eip !126
  %327 = xor i32 %326, %317, !mcsema_real_eip !126
  %328 = and i32 %320, %327, !mcsema_real_eip !126
  %329 = icmp slt i32 %328, 0
  store i1 %329, i1* %OF, align 1, !mcsema_real_eip !126
  %330 = trunc i32 %319 to i8, !mcsema_real_eip !126
  %331 = tail call i8 @llvm.ctpop.i8(i8 %330), !mcsema_real_eip !126
  %332 = and i8 %331, 1
  %333 = icmp eq i8 %332, 0
  store i1 %333, i1* %PF, align 1, !mcsema_real_eip !126
  %334 = icmp ult i32 %319, %310, !mcsema_real_eip !126
  store i1 %334, i1* %CF, align 1, !mcsema_real_eip !126
  %335 = zext i32 %319 to i64, !mcsema_real_eip !126
  store i64 %335, i64* %R8, align 8, !mcsema_real_eip !126
  %RBP_val.220 = load i64, i64* %XBP, align 8
  %336 = add i64 %RBP_val.220, -104, !mcsema_real_eip !127
  %337 = inttoptr i64 %336 to i64*, !mcsema_real_eip !127
  %338 = load i64, i64* %337, align 8, !mcsema_real_eip !127
  store i64 %338, i64* %XAX, align 8, !mcsema_real_eip !127
  %339 = add i64 %338, 8, !mcsema_real_eip !128
  %340 = inttoptr i64 %339 to i32*, !mcsema_real_eip !128
  %341 = load i32, i32* %340, align 4, !mcsema_real_eip !128
  %342 = zext i32 %341 to i64, !mcsema_real_eip !128
  store i64 %342, i64* %R9, align 8, !mcsema_real_eip !128
  %343 = add i32 %341, %319, !mcsema_real_eip !129
  %344 = zext i32 %343 to i64, !mcsema_real_eip !129
  store i64 %344, i64* %R8, align 8, !mcsema_real_eip !129
  %345 = add i32 %343, %291, !mcsema_real_eip !130
  %346 = xor i32 %345, %291, !mcsema_real_eip !130
  %347 = xor i32 %346, %343, !mcsema_real_eip !130
  %348 = and i32 %347, 16, !mcsema_real_eip !130
  %349 = icmp ne i32 %348, 0, !mcsema_real_eip !130
  store i1 %349, i1* %AF, align 1, !mcsema_real_eip !130
  %350 = icmp slt i32 %345, 0
  store i1 %350, i1* %SF, align 1, !mcsema_real_eip !130
  %351 = icmp eq i32 %345, 0, !mcsema_real_eip !130
  store i1 %351, i1* %ZF, align 1, !mcsema_real_eip !130
  %352 = xor i32 %291, -2147483648, !mcsema_real_eip !130
  %353 = xor i32 %352, %343, !mcsema_real_eip !130
  %354 = and i32 %346, %353, !mcsema_real_eip !130
  %355 = icmp slt i32 %354, 0
  store i1 %355, i1* %OF, align 1, !mcsema_real_eip !130
  %356 = trunc i32 %345 to i8, !mcsema_real_eip !130
  %357 = tail call i8 @llvm.ctpop.i8(i8 %356), !mcsema_real_eip !130
  %358 = and i8 %357, 1
  %359 = icmp eq i8 %358, 0
  store i1 %359, i1* %PF, align 1, !mcsema_real_eip !130
  %360 = icmp ult i32 %345, %291, !mcsema_real_eip !130
  store i1 %360, i1* %CF, align 1, !mcsema_real_eip !130
  %361 = zext i32 %345 to i64, !mcsema_real_eip !130
  store i64 %361, i64* %XSI, align 8, !mcsema_real_eip !130
  %362 = add i64 %RBP_val.220, -112, !mcsema_real_eip !131
  %363 = inttoptr i64 %362 to i32*, !mcsema_real_eip !131
  store i32 %345, i32* %363, align 4, !mcsema_real_eip !131
  %RBP_val.233 = load i64, i64* %XBP, align 8
  %364 = add i64 %RBP_val.233, -112, !mcsema_real_eip !132
  %365 = inttoptr i64 %364 to i32*, !mcsema_real_eip !132
  %366 = load i32, i32* %365, align 4, !mcsema_real_eip !132
  %367 = zext i32 %366 to i64, !mcsema_real_eip !132
  store i64 %367, i64* %XSI, align 8, !mcsema_real_eip !132
  %368 = add i64 %RBP_val.233, -16, !mcsema_real_eip !133
  %369 = inttoptr i64 %368 to i32*, !mcsema_real_eip !133
  store i32 %366, i32* %369, align 4, !mcsema_real_eip !133
  %RBP_val.237 = load i64, i64* %XBP, align 8
  %370 = add i64 %RBP_val.237, -120, !mcsema_real_eip !134
  %371 = inttoptr i64 %370 to i64*, !mcsema_real_eip !134
  %372 = load i64, i64* %371, align 8, !mcsema_real_eip !134
  store i64 %372, i64* %XAX, align 8, !mcsema_real_eip !134
  %373 = add i64 %RBP_val.237, -24, !mcsema_real_eip !135
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !135
  store i64 %372, i64* %374, align 8, !mcsema_real_eip !135
  %RBP_val.240 = load i64, i64* %XBP, align 8
  %375 = add i64 %RBP_val.240, -16, !mcsema_real_eip !136
  %376 = inttoptr i64 %375 to i32*, !mcsema_real_eip !136
  %377 = load i32, i32* %376, align 4, !mcsema_real_eip !136
  %378 = zext i32 %377 to i64, !mcsema_real_eip !136
  store i64 %378, i64* %XSI, align 8, !mcsema_real_eip !136
  %379 = add i64 %RBP_val.240, -128, !mcsema_real_eip !137
  %380 = inttoptr i64 %379 to i32*, !mcsema_real_eip !137
  store i32 %377, i32* %380, align 4, !mcsema_real_eip !137
  %RBP_val.244 = load i64, i64* %XBP, align 8
  %381 = add i64 %RBP_val.244, -24, !mcsema_real_eip !138
  %382 = inttoptr i64 %381 to i64*, !mcsema_real_eip !138
  %383 = load i64, i64* %382, align 8, !mcsema_real_eip !138
  store i64 %383, i64* %XAX, align 8, !mcsema_real_eip !138
  %384 = add i64 %RBP_val.244, -136, !mcsema_real_eip !139
  %385 = inttoptr i64 %384 to i64*, !mcsema_real_eip !139
  store i64 %383, i64* %385, align 8, !mcsema_real_eip !139
  %RBP_val.247 = load i64, i64* %XBP, align 8
  %386 = add i64 %RBP_val.247, -136, !mcsema_real_eip !140
  %387 = inttoptr i64 %386 to i64*, !mcsema_real_eip !140
  %388 = load i64, i64* %387, align 8, !mcsema_real_eip !140
  store i64 %388, i64* %XAX, align 8, !mcsema_real_eip !140
  %389 = add i64 %RBP_val.247, -128, !mcsema_real_eip !141
  %390 = inttoptr i64 %389 to i32*, !mcsema_real_eip !141
  %391 = load i32, i32* %390, align 4, !mcsema_real_eip !141
  %392 = zext i32 %391 to i64, !mcsema_real_eip !141
  store i64 %392, i64* %XDX, align 8, !mcsema_real_eip !141
  %RSP_val.249 = load i64, i64* %XSP, align 8, !mcsema_real_eip !142
  %393 = inttoptr i64 %RSP_val.249 to i64*, !mcsema_real_eip !142
  %394 = load i64, i64* %393, align 8, !mcsema_real_eip !142
  store i64 %394, i64* %XBX, align 8, !mcsema_real_eip !142
  %395 = add i64 %RSP_val.249, 8, !mcsema_real_eip !142
  store i64 %395, i64* %XSP, align 8, !mcsema_real_eip !142
  %396 = inttoptr i64 %395 to i64*, !mcsema_real_eip !143
  %397 = load i64, i64* %396, align 8, !mcsema_real_eip !143
  store i64 %397, i64* %XBP, align 8, !mcsema_real_eip !143
  %398 = add i64 %RSP_val.249, 16, !mcsema_real_eip !143
  store i64 %398, i64* %XSP, align 8, !mcsema_real_eip !143
  %399 = add i64 %RSP_val.249, 24, !mcsema_real_eip !144
  %400 = inttoptr i64 %398 to i64*, !mcsema_real_eip !144
  %401 = load i64, i64* %400, align 8, !mcsema_real_eip !144
  store i64 %401, i64* %XIP, align 8, !mcsema_real_eip !144
  store i64 %399, i64* %XSP, align 8, !mcsema_real_eip !144
  ret void, !mcsema_real_eip !144
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
!2 = !{i64 288}
!3 = !{i64 289}
!4 = !{i64 292}
!5 = !{i64 299}
!6 = !{i64 309}
!7 = !{i64 316}
!8 = !{i64 323}
!9 = !{i64 330}
!10 = !{i64 337}
!11 = !{i64 342}
!12 = !{i64 344}
!13 = !{i64 348}
!14 = !{i64 351}
!15 = !{i64 356}
!16 = !{i64 360}
!17 = !{i64 364}
!18 = !{i64 370}
!19 = !{i64 374}
!20 = !{i64 381}
!21 = !{i64 385}
!22 = !{i64 392}
!23 = !{i64 396}
!24 = !{i64 399}
!25 = !{i64 402}
!26 = !{i64 406}
!27 = !{i64 410}
!28 = !{i64 414}
!29 = !{i64 417}
!30 = !{i64 420}
!31 = !{i64 423}
!32 = !{i64 426}
!33 = !{i64 430}
!34 = !{i64 434}
!35 = !{i64 438}
!36 = !{i64 442}
!37 = !{i64 446}
!38 = !{i64 457}
!39 = !{i64 463}
!40 = !{i64 466}
!41 = !{i64 469}
!42 = !{i64 472}
!43 = !{i64 476}
!44 = !{i64 481}
!45 = !{i64 484}
!46 = !{i64 488}
!47 = !{i64 492}
!48 = !{i64 496}
!49 = !{i64 499}
!50 = !{i64 502}
!51 = !{i64 505}
!52 = !{i64 508}
!53 = !{i64 511}
!54 = !{i64 514}
!55 = !{i64 517}
!56 = !{i64 521}
!57 = !{i64 523}
!58 = !{i64 528}
!59 = !{i64 531}
!60 = !{i64 534}
!61 = !{i64 536}
!62 = !{i64 543}
!63 = !{i64 544}
!64 = !{i64 0}
!65 = !{i64 1}
!66 = !{i64 4}
!67 = !{i64 5}
!68 = !{i64 9}
!69 = !{i64 13}
!70 = !{i64 17}
!71 = !{i64 20}
!72 = !{i64 24}
!73 = !{i64 27}
!74 = !{i64 30}
!75 = !{i64 33}
!76 = !{i64 37}
!77 = !{i64 41}
!78 = !{i64 45}
!79 = !{i64 49}
!80 = !{i64 53}
!81 = !{i64 57}
!82 = !{i64 60}
!83 = !{i64 64}
!84 = !{i64 68}
!85 = !{i64 71}
!86 = !{i64 75}
!87 = !{i64 78}
!88 = !{i64 81}
!89 = !{i64 85}
!90 = !{i64 88}
!91 = !{i64 91}
!92 = !{i64 94}
!93 = !{i64 98}
!94 = !{i64 101}
!95 = !{i64 104}
!96 = !{i64 108}
!97 = !{i64 111}
!98 = !{i64 114}
!99 = !{i64 117}
!100 = !{i64 120}
!101 = !{i64 123}
!102 = !{i64 127}
!103 = !{i64 131}
!104 = !{i64 134}
!105 = !{i64 138}
!106 = !{i64 142}
!107 = !{i64 145}
!108 = !{i64 149}
!109 = !{i64 153}
!110 = !{i64 157}
!111 = !{i64 160}
!112 = !{i64 164}
!113 = !{i64 168}
!114 = !{i64 171}
!115 = !{i64 174}
!116 = !{i64 177}
!117 = !{i64 180}
!118 = !{i64 184}
!119 = !{i64 188}
!120 = !{i64 191}
!121 = !{i64 195}
!122 = !{i64 199}
!123 = !{i64 202}
!124 = !{i64 206}
!125 = !{i64 210}
!126 = !{i64 214}
!127 = !{i64 217}
!128 = !{i64 221}
!129 = !{i64 225}
!130 = !{i64 228}
!131 = !{i64 231}
!132 = !{i64 234}
!133 = !{i64 237}
!134 = !{i64 240}
!135 = !{i64 244}
!136 = !{i64 248}
!137 = !{i64 251}
!138 = !{i64 254}
!139 = !{i64 258}
!140 = !{i64 265}
!141 = !{i64 272}
!142 = !{i64 275}
!143 = !{i64 276}
!144 = !{i64 277}
