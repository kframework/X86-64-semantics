; ModuleID = 'Output/test_4.clang.trans.opt.bc'
source_filename = "Output/test_4.clang.bc"
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
module asm "  .globl memcpy;"
module asm "  .globl _memcpy;"
module asm "  .type _memcpy,@function"
module asm "_memcpy:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memcpy@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memcpy,0b-_memcpy;"
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
module asm "  .globl sub_a0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_a0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [88 x i8] }>
%1 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x220 = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64
@data_0x278 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0(%RegState*) local_unnamed_addr #0 {
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
  %R12 = getelementptr %RegState, %RegState* %0, i64 0, i32 68, !mcsema_real_eip !2
  %R13 = getelementptr %RegState, %RegState* %0, i64 0, i32 69, !mcsema_real_eip !2
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
  %R13_val.7 = load i64, i64* %R13, align 8, !mcsema_real_eip !6
  %7 = add i64 %RSP_val.1, -32
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !6
  store i64 %R13_val.7, i64* %8, align 8, !mcsema_real_eip !6
  %R12_val.9 = load i64, i64* %R12, align 8, !mcsema_real_eip !7
  %9 = add i64 %RSP_val.1, -40
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !7
  store i64 %R12_val.9, i64* %10, align 8, !mcsema_real_eip !7
  %RBX_val.11 = load i64, i64* %XBX, align 8, !mcsema_real_eip !8
  %11 = add i64 %RSP_val.1, -48
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !8
  store i64 %RBX_val.11, i64* %12, align 8, !mcsema_real_eip !8
  %13 = add i64 %RSP_val.1, -264
  %14 = xor i64 %13, %11, !mcsema_real_eip !9
  %15 = and i64 %14, 16
  %16 = icmp eq i64 %15, 0
  store i1 %16, i1* %AF, align 1, !mcsema_real_eip !9
  %17 = trunc i64 %13 to i8, !mcsema_real_eip !9
  %18 = tail call i8 @llvm.ctpop.i8(i8 %17), !mcsema_real_eip !9
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  store i1 %20, i1* %PF, align 1, !mcsema_real_eip !9
  %21 = icmp eq i64 %13, 0, !mcsema_real_eip !9
  store i1 %21, i1* %ZF, align 1, !mcsema_real_eip !9
  %22 = icmp slt i64 %13, 0
  store i1 %22, i1* %SF, align 1, !mcsema_real_eip !9
  %23 = icmp ult i64 %11, 216, !mcsema_real_eip !9
  store i1 %23, i1* %CF, align 1, !mcsema_real_eip !9
  %24 = and i64 %14, %11, !mcsema_real_eip !9
  %25 = icmp slt i64 %24, 0
  store i1 %25, i1* %OF, align 1, !mcsema_real_eip !9
  store i64 %13, i64* %XSP, align 8, !mcsema_real_eip !9
  store i64 100, i64* %XAX, align 8, !mcsema_real_eip !10
  %26 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 200, i64 300>, <2 x i64>* %26, align 8
  %27 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 400, i64 500>, <2 x i64>* %27, align 8
  %28 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %28, align 8
  %RBP_val.14 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %29 = add i64 %RBP_val.14, -144, !mcsema_real_eip !11
  store i64 %29, i64* %XBX, align 8, !mcsema_real_eip !11
  %30 = add i64 %RBP_val.14, -96, !mcsema_real_eip !12
  store i64 %30, i64* %R14, align 8, !mcsema_real_eip !12
  store i64 add (i64 ptrtoint (%0* @data_0x220 to i64), i64 48), i64* %R15, align 8, !mcsema_real_eip !13
  %31 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (%0* @data_0x220 to i64), i64 40>, <2 x i64>* %31, align 8
  %32 = add i64 %RBP_val.14, -44, !mcsema_real_eip !14
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %33, align 4, !mcsema_real_eip !14
  %RBP_val.19 = load i64, i64* %XBP, align 8, !mcsema_real_eip !15
  %34 = add i64 %RBP_val.19, -48, !mcsema_real_eip !15
  %EDI.20 = bitcast i64* %XDI to i32*, !mcsema_real_eip !15
  %EDI_val.21 = load i32, i32* %EDI.20, align 4, !mcsema_real_eip !15
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !15
  store i32 %EDI_val.21, i32* %35, align 4, !mcsema_real_eip !15
  %RBP_val.22 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %36 = add i64 %RBP_val.22, -56, !mcsema_real_eip !16
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !16
  %RSI_val.23 = load i64, i64* %XSI, align 8, !mcsema_real_eip !16
  store i64 %RSI_val.23, i64* %37, align 8, !mcsema_real_eip !16
  %R14_val.24 = load i64, i64* %R14, align 8, !mcsema_real_eip !17
  store i64 %R14_val.24, i64* %XDI, align 8, !mcsema_real_eip !18
  %R12_val.26 = load i64, i64* %R12, align 8, !mcsema_real_eip !19
  store i64 %R12_val.26, i64* %XSI, align 8, !mcsema_real_eip !19
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %38 = add i64 %RBP_val.27, -152, !mcsema_real_eip !20
  %EDX.28 = bitcast i64* %XDX to i32*, !mcsema_real_eip !20
  %EDX_val.29 = load i32, i32* %EDX.28, align 4, !mcsema_real_eip !20
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !20
  store i32 %EDX_val.29, i32* %39, align 4, !mcsema_real_eip !20
  %R13_val.30 = load i64, i64* %R13, align 8, !mcsema_real_eip !21
  store i64 %R13_val.30, i64* %XDX, align 8, !mcsema_real_eip !21
  %RBP_val.31 = load i64, i64* %XBP, align 8, !mcsema_real_eip !22
  %40 = add i64 %RBP_val.31, -160, !mcsema_real_eip !22
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !22
  %R15_val.32 = load i64, i64* %R15, align 8, !mcsema_real_eip !22
  store i64 %R15_val.32, i64* %41, align 8, !mcsema_real_eip !22
  %RBP_val.33 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %42 = add i64 %RBP_val.33, -168, !mcsema_real_eip !23
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !23
  %R13_val.34 = load i64, i64* %R13, align 8, !mcsema_real_eip !23
  store i64 %R13_val.34, i64* %43, align 8, !mcsema_real_eip !23
  %RBP_val.35 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %44 = add i64 %RBP_val.35, -172, !mcsema_real_eip !24
  %EAX.36 = bitcast i64* %XAX to i32*, !mcsema_real_eip !24
  %EAX_val.37 = load i32, i32* %EAX.36, align 4, !mcsema_real_eip !24
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !24
  store i32 %EAX_val.37, i32* %45, align 4, !mcsema_real_eip !24
  %RBP_val.38 = load i64, i64* %XBP, align 8, !mcsema_real_eip !25
  %46 = add i64 %RBP_val.38, -176, !mcsema_real_eip !25
  %ECX.39 = bitcast i64* %XCX to i32*, !mcsema_real_eip !25
  %ECX_val.40 = load i32, i32* %ECX.39, align 4, !mcsema_real_eip !25
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !25
  store i32 %ECX_val.40, i32* %47, align 4, !mcsema_real_eip !25
  %RBP_val.41 = load i64, i64* %XBP, align 8, !mcsema_real_eip !26
  %48 = add i64 %RBP_val.41, -184, !mcsema_real_eip !26
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !26
  %R14_val.42 = load i64, i64* %R14, align 8, !mcsema_real_eip !26
  store i64 %R14_val.42, i64* %49, align 8, !mcsema_real_eip !26
  %RBP_val.43 = load i64, i64* %XBP, align 8, !mcsema_real_eip !27
  %50 = add i64 %RBP_val.43, -188, !mcsema_real_eip !27
  %R8D.44 = bitcast i64* %R8 to i32*, !mcsema_real_eip !27
  %R8D_val.45 = load i32, i32* %R8D.44, align 4, !mcsema_real_eip !27
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !27
  store i32 %R8D_val.45, i32* %51, align 4, !mcsema_real_eip !27
  %RBP_val.46 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %52 = add i64 %RBP_val.46, -192, !mcsema_real_eip !28
  %R9D.47 = bitcast i64* %R9 to i32*, !mcsema_real_eip !28
  %R9D_val.48 = load i32, i32* %R9D.47, align 4, !mcsema_real_eip !28
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !28
  store i32 %R9D_val.48, i32* %53, align 4, !mcsema_real_eip !28
  %RBP_val.49 = load i64, i64* %XBP, align 8, !mcsema_real_eip !29
  %54 = add i64 %RBP_val.49, -196, !mcsema_real_eip !29
  %R10D.50 = bitcast i64* %R10 to i32*, !mcsema_real_eip !29
  %R10D_val.51 = load i32, i32* %R10D.50, align 4, !mcsema_real_eip !29
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !29
  store i32 %R10D_val.51, i32* %55, align 4, !mcsema_real_eip !29
  %RBP_val.52 = load i64, i64* %XBP, align 8, !mcsema_real_eip !30
  %56 = add i64 %RBP_val.52, -200, !mcsema_real_eip !30
  %R11D.53 = bitcast i64* %R11 to i32*, !mcsema_real_eip !30
  %R11D_val.54 = load i32, i32* %R11D.53, align 4, !mcsema_real_eip !30
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !30
  store i32 %R11D_val.54, i32* %57, align 4, !mcsema_real_eip !30
  %RBP_val.55 = load i64, i64* %XBP, align 8, !mcsema_real_eip !31
  %58 = add i64 %RBP_val.55, -208, !mcsema_real_eip !31
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !31
  %RBX_val.56 = load i64, i64* %XBX, align 8, !mcsema_real_eip !31
  store i64 %RBX_val.56, i64* %59, align 8, !mcsema_real_eip !31
  %RDI_val.57 = load i64, i64* %XDI, align 8, !mcsema_real_eip !32
  %RSI_val.58 = load i64, i64* %XSI, align 8, !mcsema_real_eip !32
  %RDX_val.59 = load i64, i64* %XDX, align 8, !mcsema_real_eip !32
  %RSP_val.60 = load i64, i64* %XSP, align 8, !mcsema_real_eip !32
  %60 = add i64 %RSP_val.60, -8
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !32
  store i64 -2415393069852865332, i64* %61, align 8, !mcsema_real_eip !32
  store i64 %60, i64* %XSP, align 8, !mcsema_real_eip !32
  %62 = tail call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.57, i64 %RSI_val.58, i64 %RDX_val.59), !mcsema_real_eip !32
  store i64 %62, i64* %XAX, align 8, !mcsema_real_eip !32
  %RBP_val.61 = load i64, i64* %XBP, align 8, !mcsema_real_eip !33
  %63 = add i64 %RBP_val.61, -208, !mcsema_real_eip !33
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !33
  %65 = load i64, i64* %64, align 8, !mcsema_real_eip !33
  store i64 %65, i64* %XDX, align 8, !mcsema_real_eip !33
  store i64 %65, i64* %XDI, align 8, !mcsema_real_eip !34
  %66 = add i64 %RBP_val.61, -160, !mcsema_real_eip !35
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !35
  %68 = load i64, i64* %67, align 8, !mcsema_real_eip !35
  store i64 %68, i64* %XSI, align 8, !mcsema_real_eip !35
  %69 = add i64 %RBP_val.61, -168, !mcsema_real_eip !36
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !36
  %71 = load i64, i64* %70, align 8, !mcsema_real_eip !36
  store i64 %71, i64* %XDX, align 8, !mcsema_real_eip !36
  %RSP_val.68 = load i64, i64* %XSP, align 8, !mcsema_real_eip !37
  %72 = add i64 %RSP_val.68, -8
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !37
  store i64 -2415393069852865332, i64* %73, align 8, !mcsema_real_eip !37
  store i64 %72, i64* %XSP, align 8, !mcsema_real_eip !37
  %74 = tail call x86_64_sysvcc i64 @_memcpy(i64 %65, i64 %68, i64 %71), !mcsema_real_eip !37
  store i64 %74, i64* %XAX, align 8, !mcsema_real_eip !37
  %RBP_val.69 = load i64, i64* %XBP, align 8, !mcsema_real_eip !38
  %75 = add i64 %RBP_val.69, -172, !mcsema_real_eip !38
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !38
  %77 = load i32, i32* %76, align 4, !mcsema_real_eip !38
  %78 = zext i32 %77 to i64, !mcsema_real_eip !38
  store i64 %78, i64* %XDI, align 8, !mcsema_real_eip !38
  %79 = add i64 %RBP_val.69, -176, !mcsema_real_eip !39
  %80 = inttoptr i64 %79 to i32*, !mcsema_real_eip !39
  %81 = load i32, i32* %80, align 4, !mcsema_real_eip !39
  %82 = zext i32 %81 to i64, !mcsema_real_eip !39
  store i64 %82, i64* %XSI, align 8, !mcsema_real_eip !39
  %83 = add i64 %RBP_val.69, -152, !mcsema_real_eip !40
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !40
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !40
  %86 = zext i32 %85 to i64, !mcsema_real_eip !40
  store i64 %86, i64* %XDX, align 8, !mcsema_real_eip !40
  %87 = add i64 %RBP_val.69, -188, !mcsema_real_eip !41
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !41
  %89 = load i32, i32* %88, align 4, !mcsema_real_eip !41
  %90 = zext i32 %89 to i64, !mcsema_real_eip !41
  store i64 %90, i64* %XCX, align 8, !mcsema_real_eip !41
  %91 = add i64 %RBP_val.69, -192, !mcsema_real_eip !42
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !42
  %93 = load i32, i32* %92, align 4, !mcsema_real_eip !42
  %94 = zext i32 %93 to i64, !mcsema_real_eip !42
  store i64 %94, i64* %R8, align 8, !mcsema_real_eip !42
  %95 = add i64 %RBP_val.69, -196, !mcsema_real_eip !43
  %96 = inttoptr i64 %95 to i32*, !mcsema_real_eip !43
  %97 = load i32, i32* %96, align 4, !mcsema_real_eip !43
  %98 = zext i32 %97 to i64, !mcsema_real_eip !43
  store i64 %98, i64* %R9, align 8, !mcsema_real_eip !43
  %99 = bitcast i64* %XSP to i32**
  %RSP_val.751 = load i32*, i32** %99, align 8
  store i32 10, i32* %RSP_val.751, align 4, !mcsema_real_eip !44
  %RBP_val.76 = load i64, i64* %XBP, align 8, !mcsema_real_eip !45
  %100 = add i64 %RBP_val.76, -184, !mcsema_real_eip !45
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !45
  %102 = load i64, i64* %101, align 8, !mcsema_real_eip !45
  store i64 %102, i64* %XBX, align 8, !mcsema_real_eip !45
  %RSP_val.77 = load i64, i64* %XSP, align 8, !mcsema_real_eip !46
  %103 = add i64 %RSP_val.77, 8, !mcsema_real_eip !46
  %104 = inttoptr i64 %103 to i64*, !mcsema_real_eip !46
  store i64 %102, i64* %104, align 8, !mcsema_real_eip !46
  %RSP_val.79 = load i64, i64* %XSP, align 8, !mcsema_real_eip !47
  %105 = add i64 %RSP_val.79, 16, !mcsema_real_eip !47
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !47
  store i32 10, i32* %106, align 4, !mcsema_real_eip !47
  %RBP_val.80 = load i64, i64* %XBP, align 8, !mcsema_real_eip !48
  %107 = add i64 %RBP_val.80, -208, !mcsema_real_eip !48
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !48
  %109 = load i64, i64* %108, align 8, !mcsema_real_eip !48
  store i64 %109, i64* %R14, align 8, !mcsema_real_eip !48
  %RSP_val.81 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %110 = add i64 %RSP_val.81, 24, !mcsema_real_eip !49
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !49
  store i64 %109, i64* %111, align 8, !mcsema_real_eip !49
  %RSP_val.83 = load i64, i64* %XSP, align 8, !mcsema_real_eip !50
  %112 = add i64 %RSP_val.83, -8
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !50
  store i64 -4981261766360305936, i64* %113, align 8, !mcsema_real_eip !50
  store i64 %112, i64* %XSP, align 8, !mcsema_real_eip !50
  tail call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !50
  store i64 ptrtoint (%1* @data_0x278 to i64), i64* %XDI, align 8, !mcsema_real_eip !51
  %RBP_val.84 = load i64, i64* %XBP, align 8, !mcsema_real_eip !52
  %114 = add i64 %RBP_val.84, -148, !mcsema_real_eip !52
  %EAX_val.86 = load i32, i32* %EAX.36, align 4, !mcsema_real_eip !52
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.86, i32* %115, align 4, !mcsema_real_eip !52
  %RBP_val.87 = load i64, i64* %XBP, align 8, !mcsema_real_eip !53
  %116 = add i64 %RBP_val.87, -148, !mcsema_real_eip !53
  %117 = inttoptr i64 %116 to i32*, !mcsema_real_eip !53
  %118 = load i32, i32* %117, align 4, !mcsema_real_eip !53
  %119 = zext i32 %118 to i64, !mcsema_real_eip !53
  store i64 %119, i64* %XSI, align 8, !mcsema_real_eip !53
  %AL.88 = bitcast i64* %XAX to i8*, !mcsema_real_eip !54
  store i8 0, i8* %AL.88, align 1, !mcsema_real_eip !54
  %RDI_val.89 = load i64, i64* %XDI, align 8, !mcsema_real_eip !55
  %RDX_val.91 = load i64, i64* %XDX, align 8, !mcsema_real_eip !55
  %RCX_val.92 = load i64, i64* %XCX, align 8, !mcsema_real_eip !55
  %R8_val.93 = load i64, i64* %R8, align 8, !mcsema_real_eip !55
  %R9_val.94 = load i64, i64* %R9, align 8, !mcsema_real_eip !55
  %RSP_val.95 = load i64, i64* %XSP, align 8, !mcsema_real_eip !55
  %120 = inttoptr i64 %RSP_val.95 to i64*, !mcsema_real_eip !55
  %121 = load i64, i64* %120, align 8, !mcsema_real_eip !55
  %122 = add i64 %RSP_val.95, 8, !mcsema_real_eip !55
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !55
  %124 = load i64, i64* %123, align 8, !mcsema_real_eip !55
  %125 = add i64 %RSP_val.95, 16, !mcsema_real_eip !55
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !55
  %127 = load i64, i64* %126, align 8, !mcsema_real_eip !55
  %128 = add i64 %RSP_val.95, 24, !mcsema_real_eip !55
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !55
  %130 = load i64, i64* %129, align 8, !mcsema_real_eip !55
  %131 = add i64 %RSP_val.95, 32, !mcsema_real_eip !55
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !55
  %133 = load i64, i64* %132, align 8, !mcsema_real_eip !55
  %134 = add i64 %RSP_val.95, 40, !mcsema_real_eip !55
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !55
  %136 = load i64, i64* %135, align 8, !mcsema_real_eip !55
  %137 = add i64 %RSP_val.95, -8
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !55
  store i64 -2415393069852865332, i64* %138, align 8, !mcsema_real_eip !55
  store i64 %137, i64* %XSP, align 8, !mcsema_real_eip !55
  %139 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.89, i64 %119, i64 %RDX_val.91, i64 %RCX_val.92, i64 %R8_val.93, i64 %R9_val.94, i64 %121, i64 %124, i64 %127, i64 %130, i64 %133, i64 %136), !mcsema_real_eip !55
  store i64 %139, i64* %XAX, align 8, !mcsema_real_eip !55
  %RBP_val.97 = load i64, i64* %XBP, align 8, !mcsema_real_eip !56
  %140 = add i64 %RBP_val.97, -148, !mcsema_real_eip !56
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !56
  %142 = load i32, i32* %141, align 4, !mcsema_real_eip !56
  %143 = zext i32 %142 to i64, !mcsema_real_eip !56
  store i64 %143, i64* %XCX, align 8, !mcsema_real_eip !56
  %144 = add i64 %RBP_val.97, -212, !mcsema_real_eip !57
  %145 = trunc i64 %139 to i32
  %146 = inttoptr i64 %144 to i32*, !mcsema_real_eip !57
  store i32 %145, i32* %146, align 4, !mcsema_real_eip !57
  %ECX_val.102 = load i32, i32* %ECX.39, align 4, !mcsema_real_eip !58
  %147 = zext i32 %ECX_val.102 to i64, !mcsema_real_eip !58
  store i64 %147, i64* %XAX, align 8, !mcsema_real_eip !58
  %RSP_val.103 = load i64, i64* %XSP, align 8, !mcsema_real_eip !59
  %148 = add i64 %RSP_val.103, 216, !mcsema_real_eip !59
  %149 = xor i64 %148, %RSP_val.103, !mcsema_real_eip !59
  %150 = and i64 %149, 16
  %151 = icmp eq i64 %150, 0
  store i1 %151, i1* %AF, align 1, !mcsema_real_eip !59
  %152 = icmp slt i64 %148, 0
  store i1 %152, i1* %SF, align 1, !mcsema_real_eip !59
  %153 = icmp eq i64 %148, 0, !mcsema_real_eip !59
  store i1 %153, i1* %ZF, align 1, !mcsema_real_eip !59
  %154 = xor i64 %RSP_val.103, -9223372036854775808, !mcsema_real_eip !59
  %155 = and i64 %149, %154, !mcsema_real_eip !59
  %156 = icmp slt i64 %155, 0
  store i1 %156, i1* %OF, align 1, !mcsema_real_eip !59
  %157 = trunc i64 %148 to i8, !mcsema_real_eip !59
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !59
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  store i1 %160, i1* %PF, align 1, !mcsema_real_eip !59
  %161 = icmp ugt i64 %RSP_val.103, -217
  store i1 %161, i1* %CF, align 1, !mcsema_real_eip !59
  store i64 %148, i64* %XSP, align 8, !mcsema_real_eip !59
  %162 = inttoptr i64 %148 to i64*, !mcsema_real_eip !60
  %163 = load i64, i64* %162, align 8, !mcsema_real_eip !60
  store i64 %163, i64* %XBX, align 8, !mcsema_real_eip !60
  %164 = add i64 %RSP_val.103, 224, !mcsema_real_eip !60
  store i64 %164, i64* %XSP, align 8, !mcsema_real_eip !60
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !61
  %166 = load i64, i64* %165, align 8, !mcsema_real_eip !61
  store i64 %166, i64* %R12, align 8, !mcsema_real_eip !61
  %167 = add i64 %RSP_val.103, 232, !mcsema_real_eip !61
  store i64 %167, i64* %XSP, align 8, !mcsema_real_eip !61
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !62
  %169 = load i64, i64* %168, align 8, !mcsema_real_eip !62
  store i64 %169, i64* %R13, align 8, !mcsema_real_eip !62
  %170 = add i64 %RSP_val.103, 240, !mcsema_real_eip !62
  store i64 %170, i64* %XSP, align 8, !mcsema_real_eip !62
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !63
  %172 = load i64, i64* %171, align 8, !mcsema_real_eip !63
  store i64 %172, i64* %R14, align 8, !mcsema_real_eip !63
  %173 = add i64 %RSP_val.103, 248, !mcsema_real_eip !63
  store i64 %173, i64* %XSP, align 8, !mcsema_real_eip !63
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !64
  %175 = load i64, i64* %174, align 8, !mcsema_real_eip !64
  store i64 %175, i64* %R15, align 8, !mcsema_real_eip !64
  %176 = add i64 %RSP_val.103, 256, !mcsema_real_eip !64
  store i64 %176, i64* %XSP, align 8, !mcsema_real_eip !64
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !65
  %178 = load i64, i64* %177, align 8, !mcsema_real_eip !65
  store i64 %178, i64* %XBP, align 8, !mcsema_real_eip !65
  %179 = add i64 %RSP_val.103, 264, !mcsema_real_eip !65
  store i64 %179, i64* %XSP, align 8, !mcsema_real_eip !65
  %180 = add i64 %RSP_val.103, 272, !mcsema_real_eip !66
  %181 = inttoptr i64 %179 to i64*, !mcsema_real_eip !66
  %182 = load i64, i64* %181, align 8, !mcsema_real_eip !66
  store i64 %182, i64* %XIP, align 8, !mcsema_real_eip !66
  store i64 %180, i64* %XSP, align 8, !mcsema_real_eip !66
  ret void, !mcsema_real_eip !66
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !67
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !67
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !67
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !67
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !67
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !67
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !67
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !67
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !67
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !67
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !67
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !67
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !67
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !67
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !67
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !67
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !67
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !67
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !67
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !67
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !67
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !67
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !67
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !67
  %RBP_val.111 = load i64, i64* %XBP, align 8, !mcsema_real_eip !67
  %RSP_val.112 = load i64, i64* %XSP, align 8, !mcsema_real_eip !67
  %1 = add i64 %RSP_val.112, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !67
  store i64 %RBP_val.111, i64* %2, align 8, !mcsema_real_eip !67
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !68
  %RBX_val.114 = load i64, i64* %XBX, align 8, !mcsema_real_eip !69
  %3 = add i64 %RSP_val.112, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !69
  store i64 %RBX_val.114, i64* %4, align 8, !mcsema_real_eip !69
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !69
  %RBP_val.116 = load i64, i64* %XBP, align 8, !mcsema_real_eip !70
  %5 = add i64 %RBP_val.116, 40, !mcsema_real_eip !70
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !70
  %7 = load i64, i64* %6, align 8, !mcsema_real_eip !70
  store i64 %7, i64* %XAX, align 8, !mcsema_real_eip !70
  %8 = add i64 %RBP_val.116, 32, !mcsema_real_eip !71
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !71
  %10 = load i32, i32* %9, align 4, !mcsema_real_eip !71
  %11 = zext i32 %10 to i64, !mcsema_real_eip !71
  store i64 %11, i64* %R10, align 8, !mcsema_real_eip !71
  %12 = add i64 %RBP_val.116, 24, !mcsema_real_eip !72
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !72
  %14 = load i64, i64* %13, align 8, !mcsema_real_eip !72
  store i64 %14, i64* %R11, align 8, !mcsema_real_eip !72
  %15 = add i64 %RBP_val.116, 16, !mcsema_real_eip !73
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !73
  %17 = load i32, i32* %16, align 4, !mcsema_real_eip !73
  %18 = zext i32 %17 to i64, !mcsema_real_eip !73
  store i64 %18, i64* %XBX, align 8, !mcsema_real_eip !73
  %19 = add i64 %RBP_val.116, -12, !mcsema_real_eip !74
  %EDI.121 = bitcast i64* %XDI to i32*, !mcsema_real_eip !74
  %EDI_val.122 = load i32, i32* %EDI.121, align 4, !mcsema_real_eip !74
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !74
  store i32 %EDI_val.122, i32* %20, align 4, !mcsema_real_eip !74
  %RBP_val.123 = load i64, i64* %XBP, align 8, !mcsema_real_eip !75
  %21 = add i64 %RBP_val.123, -16, !mcsema_real_eip !75
  %ESI.124 = bitcast i64* %XSI to i32*, !mcsema_real_eip !75
  %ESI_val.125 = load i32, i32* %ESI.124, align 4, !mcsema_real_eip !75
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !75
  store i32 %ESI_val.125, i32* %22, align 4, !mcsema_real_eip !75
  %RBP_val.126 = load i64, i64* %XBP, align 8, !mcsema_real_eip !76
  %23 = add i64 %RBP_val.126, -20, !mcsema_real_eip !76
  %EDX.127 = bitcast i64* %XDX to i32*, !mcsema_real_eip !76
  %EDX_val.128 = load i32, i32* %EDX.127, align 4, !mcsema_real_eip !76
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !76
  store i32 %EDX_val.128, i32* %24, align 4, !mcsema_real_eip !76
  %RBP_val.129 = load i64, i64* %XBP, align 8, !mcsema_real_eip !77
  %25 = add i64 %RBP_val.129, -24, !mcsema_real_eip !77
  %ECX.130 = bitcast i64* %XCX to i32*, !mcsema_real_eip !77
  %ECX_val.131 = load i32, i32* %ECX.130, align 4, !mcsema_real_eip !77
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !77
  store i32 %ECX_val.131, i32* %26, align 4, !mcsema_real_eip !77
  %RBP_val.132 = load i64, i64* %XBP, align 8, !mcsema_real_eip !78
  %27 = add i64 %RBP_val.132, -28, !mcsema_real_eip !78
  %R8D.133 = bitcast i64* %R8 to i32*, !mcsema_real_eip !78
  %R8D_val.134 = load i32, i32* %R8D.133, align 4, !mcsema_real_eip !78
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !78
  store i32 %R8D_val.134, i32* %28, align 4, !mcsema_real_eip !78
  %RBP_val.135 = load i64, i64* %XBP, align 8, !mcsema_real_eip !79
  %29 = add i64 %RBP_val.135, -32, !mcsema_real_eip !79
  %R9D.136 = bitcast i64* %R9 to i32*, !mcsema_real_eip !79
  %R9D_val.137 = load i32, i32* %R9D.136, align 4, !mcsema_real_eip !79
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !79
  store i32 %R9D_val.137, i32* %30, align 4, !mcsema_real_eip !79
  %RBP_val.138 = load i64, i64* %XBP, align 8, !mcsema_real_eip !80
  %31 = add i64 %RBP_val.138, -36, !mcsema_real_eip !80
  %EBX.139 = bitcast i64* %XBX to i32*, !mcsema_real_eip !80
  %EBX_val.140 = load i32, i32* %EBX.139, align 4, !mcsema_real_eip !80
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !80
  store i32 %EBX_val.140, i32* %32, align 4, !mcsema_real_eip !80
  %RBP_val.141 = load i64, i64* %XBP, align 8, !mcsema_real_eip !81
  %33 = add i64 %RBP_val.141, -48, !mcsema_real_eip !81
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !81
  %R11_val.142 = load i64, i64* %R11, align 8, !mcsema_real_eip !81
  store i64 %R11_val.142, i64* %34, align 8, !mcsema_real_eip !81
  %RBP_val.143 = load i64, i64* %XBP, align 8, !mcsema_real_eip !82
  %35 = add i64 %RBP_val.143, -52, !mcsema_real_eip !82
  %R10D.144 = bitcast i64* %R10 to i32*, !mcsema_real_eip !82
  %R10D_val.145 = load i32, i32* %R10D.144, align 4, !mcsema_real_eip !82
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !82
  store i32 %R10D_val.145, i32* %36, align 4, !mcsema_real_eip !82
  %RBP_val.146 = load i64, i64* %XBP, align 8, !mcsema_real_eip !83
  %37 = add i64 %RBP_val.146, -64, !mcsema_real_eip !83
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !83
  %RAX_val.147 = load i64, i64* %XAX, align 8, !mcsema_real_eip !83
  store i64 %RAX_val.147, i64* %38, align 8, !mcsema_real_eip !83
  %RBP_val.148 = load i64, i64* %XBP, align 8, !mcsema_real_eip !84
  %39 = add i64 %RBP_val.148, -68, !mcsema_real_eip !84
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !84
  store i32 0, i32* %40, align 4, !mcsema_real_eip !84
  %RBP_val.149 = load i64, i64* %XBP, align 8, !mcsema_real_eip !85
  %41 = add i64 %RBP_val.149, -72, !mcsema_real_eip !85
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !85
  store i32 0, i32* %42, align 4, !mcsema_real_eip !85
  %EAX.152 = bitcast i64* %XAX to i32*, !mcsema_real_eip !86
  br label %block_0x45, !mcsema_real_eip !87

block_0x45:                                       ; preds = %block_0x51, %entry
  %RBP_val.150 = load i64, i64* %XBP, align 8, !mcsema_real_eip !87
  %43 = add i64 %RBP_val.150, -72, !mcsema_real_eip !87
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !87
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !87
  %46 = zext i32 %45 to i64, !mcsema_real_eip !87
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !87
  %47 = add i64 %RBP_val.150, -36, !mcsema_real_eip !86
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !86
  %49 = load i32, i32* %48, align 4, !mcsema_real_eip !86
  %50 = sub i32 %45, %49, !mcsema_real_eip !86
  %51 = xor i32 %50, %45, !mcsema_real_eip !86
  %52 = xor i32 %51, %49, !mcsema_real_eip !86
  %53 = and i32 %52, 16, !mcsema_real_eip !86
  %54 = icmp ne i32 %53, 0, !mcsema_real_eip !86
  store i1 %54, i1* %AF, align 1, !mcsema_real_eip !86
  %55 = trunc i32 %50 to i8, !mcsema_real_eip !86
  %56 = tail call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !86
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  store i1 %58, i1* %PF, align 1, !mcsema_real_eip !86
  %59 = icmp eq i32 %50, 0, !mcsema_real_eip !86
  store i1 %59, i1* %ZF, align 1, !mcsema_real_eip !86
  %60 = icmp slt i32 %50, 0
  store i1 %60, i1* %SF, align 1, !mcsema_real_eip !86
  %61 = icmp ult i32 %45, %49, !mcsema_real_eip !86
  store i1 %61, i1* %CF, align 1, !mcsema_real_eip !86
  %62 = xor i32 %49, %45, !mcsema_real_eip !86
  %63 = and i32 %51, %62, !mcsema_real_eip !86
  %64 = icmp slt i32 %63, 0
  store i1 %64, i1* %OF, align 1, !mcsema_real_eip !86
  %tmp = xor i1 %60, %64
  %65 = add i64 %RBP_val.150, -68
  %66 = inttoptr i64 %65 to i32*
  br i1 %tmp, label %block_0x51, label %block_0x7b, !mcsema_real_eip !88

block_0x51:                                       ; preds = %block_0x45
  %67 = add i64 %RBP_val.150, -48, !mcsema_real_eip !89
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !89
  %69 = load i64, i64* %68, align 8, !mcsema_real_eip !89
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !89
  %70 = load i32, i32* %44, align 4, !mcsema_real_eip !90
  %71 = sext i32 %70 to i64, !mcsema_real_eip !90
  store i64 %71, i64* %XCX, align 8, !mcsema_real_eip !90
  %72 = shl nsw i64 %71, 2
  %73 = add i64 %72, %69, !mcsema_real_eip !91
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !91
  %75 = load i32, i32* %74, align 4, !mcsema_real_eip !91
  %76 = zext i32 %75 to i64, !mcsema_real_eip !91
  store i64 %76, i64* %XDX, align 8, !mcsema_real_eip !91
  %77 = add i64 %RBP_val.150, -64, !mcsema_real_eip !92
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !92
  %79 = load i64, i64* %78, align 8, !mcsema_real_eip !92
  store i64 %79, i64* %XAX, align 8, !mcsema_real_eip !92
  %80 = load i32, i32* %44, align 4, !mcsema_real_eip !93
  %81 = sext i32 %80 to i64, !mcsema_real_eip !93
  store i64 %81, i64* %XCX, align 8, !mcsema_real_eip !93
  %82 = shl nsw i64 %81, 2
  %83 = add i64 %82, %79, !mcsema_real_eip !94
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !94
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !94
  %86 = sub i32 %75, %85, !mcsema_real_eip !94
  %87 = xor i32 %86, %75, !mcsema_real_eip !94
  %88 = xor i32 %87, %85, !mcsema_real_eip !94
  %89 = and i32 %88, 16, !mcsema_real_eip !94
  %90 = icmp ne i32 %89, 0, !mcsema_real_eip !94
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !94
  %91 = trunc i32 %86 to i8, !mcsema_real_eip !94
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !94
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !94
  %95 = icmp eq i32 %86, 0, !mcsema_real_eip !94
  store i1 %95, i1* %ZF, align 1, !mcsema_real_eip !94
  %96 = icmp slt i32 %86, 0
  store i1 %96, i1* %SF, align 1, !mcsema_real_eip !94
  %97 = icmp ult i32 %75, %85, !mcsema_real_eip !94
  store i1 %97, i1* %CF, align 1, !mcsema_real_eip !94
  %98 = xor i32 %85, %75, !mcsema_real_eip !94
  %99 = and i32 %87, %98, !mcsema_real_eip !94
  %100 = icmp slt i32 %99, 0
  store i1 %100, i1* %OF, align 1, !mcsema_real_eip !94
  %101 = zext i32 %86 to i64, !mcsema_real_eip !94
  store i64 %101, i64* %XDX, align 8, !mcsema_real_eip !94
  %102 = load i32, i32* %66, align 4, !mcsema_real_eip !95
  %103 = add i32 %86, %102, !mcsema_real_eip !95
  %104 = xor i32 %103, %102, !mcsema_real_eip !95
  %105 = xor i32 %104, %86, !mcsema_real_eip !95
  %106 = and i32 %105, 16, !mcsema_real_eip !95
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !95
  store i1 %107, i1* %AF, align 1, !mcsema_real_eip !95
  %108 = icmp slt i32 %103, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !95
  %109 = icmp eq i32 %103, 0, !mcsema_real_eip !95
  store i1 %109, i1* %ZF, align 1, !mcsema_real_eip !95
  %110 = xor i32 %102, -2147483648, !mcsema_real_eip !95
  %111 = xor i32 %110, %86, !mcsema_real_eip !95
  %112 = and i32 %104, %111, !mcsema_real_eip !95
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF, align 1, !mcsema_real_eip !95
  %114 = trunc i32 %103 to i8, !mcsema_real_eip !95
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !95
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !95
  %118 = icmp ult i32 %103, %102, !mcsema_real_eip !95
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !95
  %119 = zext i32 %103 to i64, !mcsema_real_eip !95
  store i64 %119, i64* %XDX, align 8, !mcsema_real_eip !95
  store i32 %103, i32* %66, align 4, !mcsema_real_eip !96
  %RBP_val.194 = load i64, i64* %XBP, align 8, !mcsema_real_eip !97
  %120 = add i64 %RBP_val.194, -72, !mcsema_real_eip !97
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !97
  %122 = load i32, i32* %121, align 4, !mcsema_real_eip !97
  %123 = add i32 %122, 1, !mcsema_real_eip !98
  %124 = xor i32 %123, %122, !mcsema_real_eip !98
  %125 = and i32 %124, 16, !mcsema_real_eip !98
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !98
  store i1 %126, i1* %AF, align 1, !mcsema_real_eip !98
  %127 = icmp slt i32 %123, 0
  store i1 %127, i1* %SF, align 1, !mcsema_real_eip !98
  %128 = icmp eq i32 %123, 0, !mcsema_real_eip !98
  store i1 %128, i1* %ZF, align 1, !mcsema_real_eip !98
  %129 = xor i32 %122, -2147483648, !mcsema_real_eip !98
  %130 = and i32 %124, %129, !mcsema_real_eip !98
  %131 = icmp slt i32 %130, 0
  store i1 %131, i1* %OF, align 1, !mcsema_real_eip !98
  %132 = trunc i32 %123 to i8, !mcsema_real_eip !98
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !98
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  store i1 %135, i1* %PF, align 1, !mcsema_real_eip !98
  %136 = icmp eq i32 %122, -1
  store i1 %136, i1* %CF, align 1, !mcsema_real_eip !98
  %137 = zext i32 %123 to i64, !mcsema_real_eip !98
  store i64 %137, i64* %XAX, align 8, !mcsema_real_eip !98
  store i32 %123, i32* %121, align 4, !mcsema_real_eip !99
  br label %block_0x45, !mcsema_real_eip !100

block_0x7b:                                       ; preds = %block_0x45
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !67
  %138 = load i32, i32* %66, align 4, !mcsema_real_eip !101
  %139 = zext i32 %138 to i64, !mcsema_real_eip !101
  store i64 %139, i64* %XAX, align 8, !mcsema_real_eip !101
  %140 = add i64 %RBP_val.150, -12, !mcsema_real_eip !102
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !102
  %142 = load i32, i32* %141, align 4, !mcsema_real_eip !102
  %143 = zext i32 %142 to i64, !mcsema_real_eip !102
  store i64 %143, i64* %XCX, align 8, !mcsema_real_eip !102
  %144 = add i64 %RBP_val.150, -16, !mcsema_real_eip !103
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !103
  %146 = load i32, i32* %145, align 4, !mcsema_real_eip !103
  %147 = add i32 %142, %146, !mcsema_real_eip !103
  %148 = xor i32 %147, %146, !mcsema_real_eip !103
  %149 = xor i32 %148, %142, !mcsema_real_eip !103
  %150 = and i32 %149, 16, !mcsema_real_eip !103
  %151 = icmp ne i32 %150, 0, !mcsema_real_eip !103
  store i1 %151, i1* %AF, align 1, !mcsema_real_eip !103
  %152 = icmp slt i32 %147, 0
  store i1 %152, i1* %SF, align 1, !mcsema_real_eip !103
  %153 = icmp eq i32 %147, 0, !mcsema_real_eip !103
  store i1 %153, i1* %ZF, align 1, !mcsema_real_eip !103
  %154 = xor i32 %146, -2147483648, !mcsema_real_eip !103
  %155 = xor i32 %154, %142, !mcsema_real_eip !103
  %156 = and i32 %148, %155, !mcsema_real_eip !103
  %157 = icmp slt i32 %156, 0
  store i1 %157, i1* %OF, align 1, !mcsema_real_eip !103
  %158 = trunc i32 %147 to i8, !mcsema_real_eip !103
  %159 = tail call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !103
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  store i1 %161, i1* %PF, align 1, !mcsema_real_eip !103
  %162 = icmp ult i32 %147, %146, !mcsema_real_eip !103
  store i1 %162, i1* %CF, align 1, !mcsema_real_eip !103
  %163 = zext i32 %147 to i64, !mcsema_real_eip !103
  store i64 %163, i64* %XCX, align 8, !mcsema_real_eip !103
  %164 = add i64 %RBP_val.150, -20, !mcsema_real_eip !104
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !104
  %166 = load i32, i32* %165, align 4, !mcsema_real_eip !104
  %167 = add i32 %147, %166, !mcsema_real_eip !104
  %168 = xor i32 %167, %166, !mcsema_real_eip !104
  %169 = xor i32 %168, %147, !mcsema_real_eip !104
  %170 = and i32 %169, 16, !mcsema_real_eip !104
  %171 = icmp ne i32 %170, 0, !mcsema_real_eip !104
  store i1 %171, i1* %AF, align 1, !mcsema_real_eip !104
  %172 = icmp slt i32 %167, 0
  store i1 %172, i1* %SF, align 1, !mcsema_real_eip !104
  %173 = icmp eq i32 %167, 0, !mcsema_real_eip !104
  store i1 %173, i1* %ZF, align 1, !mcsema_real_eip !104
  %174 = xor i32 %166, -2147483648, !mcsema_real_eip !104
  %175 = xor i32 %174, %147, !mcsema_real_eip !104
  %176 = and i32 %168, %175, !mcsema_real_eip !104
  %177 = icmp slt i32 %176, 0
  store i1 %177, i1* %OF, align 1, !mcsema_real_eip !104
  %178 = trunc i32 %167 to i8, !mcsema_real_eip !104
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !104
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  store i1 %181, i1* %PF, align 1, !mcsema_real_eip !104
  %182 = icmp ult i32 %167, %166, !mcsema_real_eip !104
  store i1 %182, i1* %CF, align 1, !mcsema_real_eip !104
  %183 = zext i32 %167 to i64, !mcsema_real_eip !104
  store i64 %183, i64* %XCX, align 8, !mcsema_real_eip !104
  %184 = add i64 %RBP_val.150, -24, !mcsema_real_eip !105
  %185 = inttoptr i64 %184 to i32*, !mcsema_real_eip !105
  %186 = load i32, i32* %185, align 4, !mcsema_real_eip !105
  %187 = add i32 %167, %186, !mcsema_real_eip !105
  %188 = xor i32 %187, %186, !mcsema_real_eip !105
  %189 = xor i32 %188, %167, !mcsema_real_eip !105
  %190 = and i32 %189, 16, !mcsema_real_eip !105
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !105
  store i1 %191, i1* %AF, align 1, !mcsema_real_eip !105
  %192 = icmp slt i32 %187, 0
  store i1 %192, i1* %SF, align 1, !mcsema_real_eip !105
  %193 = icmp eq i32 %187, 0, !mcsema_real_eip !105
  store i1 %193, i1* %ZF, align 1, !mcsema_real_eip !105
  %194 = xor i32 %186, -2147483648, !mcsema_real_eip !105
  %195 = xor i32 %194, %167, !mcsema_real_eip !105
  %196 = and i32 %188, %195, !mcsema_real_eip !105
  %197 = icmp slt i32 %196, 0
  store i1 %197, i1* %OF, align 1, !mcsema_real_eip !105
  %198 = trunc i32 %187 to i8, !mcsema_real_eip !105
  %199 = tail call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !105
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  store i1 %201, i1* %PF, align 1, !mcsema_real_eip !105
  %202 = icmp ult i32 %187, %186, !mcsema_real_eip !105
  store i1 %202, i1* %CF, align 1, !mcsema_real_eip !105
  %203 = zext i32 %187 to i64, !mcsema_real_eip !105
  store i64 %203, i64* %XCX, align 8, !mcsema_real_eip !105
  %204 = add i64 %RBP_val.150, -28, !mcsema_real_eip !106
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !106
  %206 = load i32, i32* %205, align 4, !mcsema_real_eip !106
  %207 = add i32 %187, %206, !mcsema_real_eip !106
  %208 = xor i32 %207, %206, !mcsema_real_eip !106
  %209 = xor i32 %208, %187, !mcsema_real_eip !106
  %210 = and i32 %209, 16, !mcsema_real_eip !106
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !106
  store i1 %211, i1* %AF, align 1, !mcsema_real_eip !106
  %212 = icmp slt i32 %207, 0
  store i1 %212, i1* %SF, align 1, !mcsema_real_eip !106
  %213 = icmp eq i32 %207, 0, !mcsema_real_eip !106
  store i1 %213, i1* %ZF, align 1, !mcsema_real_eip !106
  %214 = xor i32 %206, -2147483648, !mcsema_real_eip !106
  %215 = xor i32 %214, %187, !mcsema_real_eip !106
  %216 = and i32 %208, %215, !mcsema_real_eip !106
  %217 = icmp slt i32 %216, 0
  store i1 %217, i1* %OF, align 1, !mcsema_real_eip !106
  %218 = trunc i32 %207 to i8, !mcsema_real_eip !106
  %219 = tail call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !106
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !106
  %222 = icmp ult i32 %207, %206, !mcsema_real_eip !106
  store i1 %222, i1* %CF, align 1, !mcsema_real_eip !106
  %223 = zext i32 %207 to i64, !mcsema_real_eip !106
  store i64 %223, i64* %XCX, align 8, !mcsema_real_eip !106
  %224 = add i64 %RBP_val.150, -32, !mcsema_real_eip !107
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !107
  %226 = load i32, i32* %225, align 4, !mcsema_real_eip !107
  %227 = add i32 %207, %226, !mcsema_real_eip !107
  %228 = xor i32 %227, %226, !mcsema_real_eip !107
  %229 = xor i32 %228, %207, !mcsema_real_eip !107
  %230 = and i32 %229, 16, !mcsema_real_eip !107
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !107
  store i1 %231, i1* %AF, align 1, !mcsema_real_eip !107
  %232 = icmp eq i32 %227, 0, !mcsema_real_eip !107
  store i1 %232, i1* %ZF, align 1, !mcsema_real_eip !107
  %233 = trunc i32 %227 to i8, !mcsema_real_eip !107
  %234 = tail call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !107
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  store i1 %236, i1* %PF, align 1, !mcsema_real_eip !107
  %237 = zext i32 %227 to i64, !mcsema_real_eip !107
  store i64 %237, i64* %XCX, align 8, !mcsema_real_eip !107
  %EAX_val.174 = load i32, i32* %EAX.152, align 4, !mcsema_real_eip !108
  %238 = sext i32 %EAX_val.174 to i64, !mcsema_real_eip !108
  %239 = sext i32 %227 to i64, !mcsema_real_eip !108
  %240 = mul nsw i64 %238, %239, !mcsema_real_eip !108
  %241 = trunc i64 %240 to i32, !mcsema_real_eip !108
  %sext = shl i64 %240, 32
  %242 = ashr exact i64 %sext, 32
  %243 = icmp ne i64 %242, %240, !mcsema_real_eip !108
  %244 = icmp slt i32 %241, 0, !mcsema_real_eip !108
  store i1 %244, i1* %SF, align 1, !mcsema_real_eip !108
  store i1 %243, i1* %OF, align 1, !mcsema_real_eip !108
  store i1 %243, i1* %CF, align 1, !mcsema_real_eip !108
  %245 = and i64 %240, 4294967295
  store i64 %245, i64* %XAX, align 8, !mcsema_real_eip !108
  %RSP_val.175 = load i64, i64* %XSP, align 8, !mcsema_real_eip !109
  %246 = inttoptr i64 %RSP_val.175 to i64*, !mcsema_real_eip !109
  %247 = load i64, i64* %246, align 8, !mcsema_real_eip !109
  store i64 %247, i64* %XBX, align 8, !mcsema_real_eip !109
  %248 = add i64 %RSP_val.175, 8, !mcsema_real_eip !109
  store i64 %248, i64* %XSP, align 8, !mcsema_real_eip !109
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !110
  %250 = load i64, i64* %249, align 8, !mcsema_real_eip !110
  store i64 %250, i64* %XBP, align 8, !mcsema_real_eip !110
  %251 = add i64 %RSP_val.175, 16, !mcsema_real_eip !110
  store i64 %251, i64* %XSP, align 8, !mcsema_real_eip !110
  %252 = add i64 %RSP_val.175, 24, !mcsema_real_eip !111
  %253 = inttoptr i64 %251 to i64*, !mcsema_real_eip !111
  %254 = load i64, i64* %253, align 8, !mcsema_real_eip !111
  store i64 %254, i64* %XIP, align 8, !mcsema_real_eip !111
  store i64 %252, i64* %XSP, align 8, !mcsema_real_eip !111
  ret void, !mcsema_real_eip !111
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

attributes #0 = { noinline }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 160}
!3 = !{i64 161}
!4 = !{i64 164}
!5 = !{i64 166}
!6 = !{i64 168}
!7 = !{i64 170}
!8 = !{i64 172}
!9 = !{i64 173}
!10 = !{i64 180}
!11 = !{i64 219}
!12 = !{i64 226}
!13 = !{i64 230}
!14 = !{i64 259}
!15 = !{i64 266}
!16 = !{i64 269}
!17 = !{i64 273}
!18 = !{i64 276}
!19 = !{i64 279}
!20 = !{i64 282}
!21 = !{i64 288}
!22 = !{i64 291}
!23 = !{i64 298}
!24 = !{i64 305}
!25 = !{i64 311}
!26 = !{i64 317}
!27 = !{i64 324}
!28 = !{i64 331}
!29 = !{i64 338}
!30 = !{i64 345}
!31 = !{i64 352}
!32 = !{i64 359}
!33 = !{i64 364}
!34 = !{i64 371}
!35 = !{i64 374}
!36 = !{i64 381}
!37 = !{i64 388}
!38 = !{i64 393}
!39 = !{i64 399}
!40 = !{i64 405}
!41 = !{i64 411}
!42 = !{i64 417}
!43 = !{i64 424}
!44 = !{i64 431}
!45 = !{i64 438}
!46 = !{i64 445}
!47 = !{i64 450}
!48 = !{i64 458}
!49 = !{i64 465}
!50 = !{i64 470}
!51 = !{i64 475}
!52 = !{i64 485}
!53 = !{i64 491}
!54 = !{i64 497}
!55 = !{i64 499}
!56 = !{i64 504}
!57 = !{i64 510}
!58 = !{i64 516}
!59 = !{i64 518}
!60 = !{i64 525}
!61 = !{i64 526}
!62 = !{i64 528}
!63 = !{i64 530}
!64 = !{i64 532}
!65 = !{i64 534}
!66 = !{i64 535}
!67 = !{i64 0}
!68 = !{i64 1}
!69 = !{i64 4}
!70 = !{i64 5}
!71 = !{i64 9}
!72 = !{i64 13}
!73 = !{i64 17}
!74 = !{i64 20}
!75 = !{i64 23}
!76 = !{i64 26}
!77 = !{i64 29}
!78 = !{i64 32}
!79 = !{i64 36}
!80 = !{i64 40}
!81 = !{i64 43}
!82 = !{i64 47}
!83 = !{i64 51}
!84 = !{i64 55}
!85 = !{i64 62}
!86 = !{i64 72}
!87 = !{i64 69}
!88 = !{i64 75}
!89 = !{i64 81}
!90 = !{i64 85}
!91 = !{i64 89}
!92 = !{i64 92}
!93 = !{i64 96}
!94 = !{i64 100}
!95 = !{i64 103}
!96 = !{i64 106}
!97 = !{i64 109}
!98 = !{i64 112}
!99 = !{i64 115}
!100 = !{i64 118}
!101 = !{i64 123}
!102 = !{i64 126}
!103 = !{i64 129}
!104 = !{i64 132}
!105 = !{i64 135}
!106 = !{i64 138}
!107 = !{i64 141}
!108 = !{i64 144}
!109 = !{i64 147}
!110 = !{i64 148}
!111 = !{i64 149}
