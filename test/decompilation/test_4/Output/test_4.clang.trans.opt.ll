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
  %RBP_val.14 = load i64, i64* %XBP, align 8
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
  %RBP_val.61 = load i64, i64* %XBP, align 8
  %63 = add i64 %RBP_val.61, -208, !mcsema_real_eip !33
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !33
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %XDX, align 8, !mcsema_real_eip !33
  store i64 %65, i64* %XDI, align 8, !mcsema_real_eip !34
  %66 = add i64 %RBP_val.61, -160, !mcsema_real_eip !35
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !35
  %68 = load i64, i64* %67, align 8
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
  %RBP_val.69 = load i64, i64* %XBP, align 8
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
  %RBP_val.97 = load i64, i64* %XBP, align 8
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
  %RBP_val.116 = load i64, i64* %XBP, align 8
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
  %EAX.152 = bitcast i64* %XAX to i32*, !mcsema_real_eip !85
  %.sink.in.in.pre = load i64, i64* %XBP, align 8
  br label %block_0x45, !mcsema_real_eip !86

block_0x45:                                       ; preds = %block_0x51, %entry
  %.sink.in.in = phi i64 [ %RBP_val.194, %block_0x51 ], [ %.sink.in.in.pre, %entry ]
  %EAX_val.199.sink = phi i32 [ %122, %block_0x51 ], [ 0, %entry ]
  %.sink.in = add i64 %.sink.in.in, -72
  %41 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.199.sink, i32* %41, align 4
  %RBP_val.150 = load i64, i64* %XBP, align 8
  %42 = add i64 %RBP_val.150, -72
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4, !mcsema_real_eip !86
  %45 = zext i32 %44 to i64, !mcsema_real_eip !86
  store i64 %45, i64* %XAX, align 8, !mcsema_real_eip !86
  %46 = add i64 %RBP_val.150, -36, !mcsema_real_eip !85
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !85
  %48 = load i32, i32* %47, align 4, !mcsema_real_eip !85
  %49 = sub i32 %44, %48, !mcsema_real_eip !85
  %50 = xor i32 %49, %44, !mcsema_real_eip !85
  %51 = xor i32 %50, %48, !mcsema_real_eip !85
  %52 = and i32 %51, 16, !mcsema_real_eip !85
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !85
  store i1 %53, i1* %AF, align 1, !mcsema_real_eip !85
  %54 = trunc i32 %49 to i8, !mcsema_real_eip !85
  %55 = tail call i8 @llvm.ctpop.i8(i8 %54), !mcsema_real_eip !85
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  store i1 %57, i1* %PF, align 1, !mcsema_real_eip !85
  %58 = icmp eq i32 %49, 0, !mcsema_real_eip !85
  store i1 %58, i1* %ZF, align 1, !mcsema_real_eip !85
  %59 = icmp slt i32 %49, 0
  store i1 %59, i1* %SF, align 1, !mcsema_real_eip !85
  %60 = icmp ult i32 %44, %48, !mcsema_real_eip !85
  store i1 %60, i1* %CF, align 1, !mcsema_real_eip !85
  %61 = xor i32 %48, %44, !mcsema_real_eip !85
  %62 = and i32 %50, %61, !mcsema_real_eip !85
  %63 = icmp slt i32 %62, 0
  store i1 %63, i1* %OF, align 1, !mcsema_real_eip !85
  %tmp = xor i1 %63, %59
  %64 = add i64 %RBP_val.150, -68
  %65 = inttoptr i64 %64 to i32*
  br i1 %tmp, label %block_0x51, label %block_0x7b, !mcsema_real_eip !87

block_0x51:                                       ; preds = %block_0x45
  %66 = add i64 %RBP_val.150, -48, !mcsema_real_eip !88
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !88
  %68 = load i64, i64* %67, align 8, !mcsema_real_eip !88
  store i64 %68, i64* %XAX, align 8, !mcsema_real_eip !88
  %69 = load i32, i32* %43, align 4, !mcsema_real_eip !89
  %70 = sext i32 %69 to i64, !mcsema_real_eip !89
  store i64 %70, i64* %XCX, align 8, !mcsema_real_eip !89
  %71 = shl nsw i64 %70, 2
  %72 = add i64 %71, %68, !mcsema_real_eip !90
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !90
  %74 = load i32, i32* %73, align 4, !mcsema_real_eip !90
  %75 = zext i32 %74 to i64, !mcsema_real_eip !90
  store i64 %75, i64* %XDX, align 8, !mcsema_real_eip !90
  %76 = add i64 %RBP_val.150, -64, !mcsema_real_eip !91
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !91
  %78 = load i64, i64* %77, align 8, !mcsema_real_eip !91
  store i64 %78, i64* %XAX, align 8, !mcsema_real_eip !91
  %79 = load i32, i32* %43, align 4, !mcsema_real_eip !92
  %80 = sext i32 %79 to i64, !mcsema_real_eip !92
  store i64 %80, i64* %XCX, align 8, !mcsema_real_eip !92
  %81 = shl nsw i64 %80, 2
  %82 = add i64 %81, %78, !mcsema_real_eip !93
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !93
  %84 = load i32, i32* %83, align 4, !mcsema_real_eip !93
  %85 = sub i32 %74, %84, !mcsema_real_eip !93
  %86 = xor i32 %85, %74, !mcsema_real_eip !93
  %87 = xor i32 %86, %84, !mcsema_real_eip !93
  %88 = and i32 %87, 16, !mcsema_real_eip !93
  %89 = icmp ne i32 %88, 0, !mcsema_real_eip !93
  store i1 %89, i1* %AF, align 1, !mcsema_real_eip !93
  %90 = trunc i32 %85 to i8, !mcsema_real_eip !93
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !93
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !93
  %94 = icmp eq i32 %85, 0, !mcsema_real_eip !93
  store i1 %94, i1* %ZF, align 1, !mcsema_real_eip !93
  %95 = icmp slt i32 %85, 0
  store i1 %95, i1* %SF, align 1, !mcsema_real_eip !93
  %96 = icmp ult i32 %74, %84, !mcsema_real_eip !93
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !93
  %97 = xor i32 %84, %74, !mcsema_real_eip !93
  %98 = and i32 %86, %97, !mcsema_real_eip !93
  %99 = icmp slt i32 %98, 0
  store i1 %99, i1* %OF, align 1, !mcsema_real_eip !93
  %100 = zext i32 %85 to i64, !mcsema_real_eip !93
  store i64 %100, i64* %XDX, align 8, !mcsema_real_eip !93
  %101 = load i32, i32* %65, align 4, !mcsema_real_eip !94
  %102 = add i32 %85, %101, !mcsema_real_eip !94
  %103 = xor i32 %102, %101, !mcsema_real_eip !94
  %104 = xor i32 %103, %85, !mcsema_real_eip !94
  %105 = and i32 %104, 16, !mcsema_real_eip !94
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !94
  store i1 %106, i1* %AF, align 1, !mcsema_real_eip !94
  %107 = icmp slt i32 %102, 0
  store i1 %107, i1* %SF, align 1, !mcsema_real_eip !94
  %108 = icmp eq i32 %102, 0, !mcsema_real_eip !94
  store i1 %108, i1* %ZF, align 1, !mcsema_real_eip !94
  %109 = xor i32 %101, -2147483648, !mcsema_real_eip !94
  %110 = xor i32 %109, %85, !mcsema_real_eip !94
  %111 = and i32 %103, %110, !mcsema_real_eip !94
  %112 = icmp slt i32 %111, 0
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !94
  %113 = trunc i32 %102 to i8, !mcsema_real_eip !94
  %114 = tail call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !94
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  store i1 %116, i1* %PF, align 1, !mcsema_real_eip !94
  %117 = icmp ult i32 %102, %101, !mcsema_real_eip !94
  store i1 %117, i1* %CF, align 1, !mcsema_real_eip !94
  %118 = zext i32 %102 to i64, !mcsema_real_eip !94
  store i64 %118, i64* %XDX, align 8, !mcsema_real_eip !94
  store i32 %102, i32* %65, align 4, !mcsema_real_eip !95
  %RBP_val.194 = load i64, i64* %XBP, align 8, !mcsema_real_eip !96
  %119 = add i64 %RBP_val.194, -72, !mcsema_real_eip !96
  %120 = inttoptr i64 %119 to i32*, !mcsema_real_eip !96
  %121 = load i32, i32* %120, align 4, !mcsema_real_eip !96
  %122 = add i32 %121, 1, !mcsema_real_eip !97
  %123 = xor i32 %122, %121, !mcsema_real_eip !97
  %124 = and i32 %123, 16, !mcsema_real_eip !97
  %125 = icmp ne i32 %124, 0, !mcsema_real_eip !97
  store i1 %125, i1* %AF, align 1, !mcsema_real_eip !97
  %126 = icmp slt i32 %122, 0
  store i1 %126, i1* %SF, align 1, !mcsema_real_eip !97
  %127 = icmp eq i32 %122, 0, !mcsema_real_eip !97
  store i1 %127, i1* %ZF, align 1, !mcsema_real_eip !97
  %128 = xor i32 %121, -2147483648, !mcsema_real_eip !97
  %129 = and i32 %123, %128, !mcsema_real_eip !97
  %130 = icmp slt i32 %129, 0
  store i1 %130, i1* %OF, align 1, !mcsema_real_eip !97
  %131 = trunc i32 %122 to i8, !mcsema_real_eip !97
  %132 = tail call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !97
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  store i1 %134, i1* %PF, align 1, !mcsema_real_eip !97
  %135 = icmp eq i32 %121, -1
  store i1 %135, i1* %CF, align 1, !mcsema_real_eip !97
  %136 = zext i32 %122 to i64, !mcsema_real_eip !97
  store i64 %136, i64* %XAX, align 8, !mcsema_real_eip !97
  br label %block_0x45, !mcsema_real_eip !98

block_0x7b:                                       ; preds = %block_0x45
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !67
  %137 = load i32, i32* %65, align 4, !mcsema_real_eip !99
  %138 = zext i32 %137 to i64, !mcsema_real_eip !99
  store i64 %138, i64* %XAX, align 8, !mcsema_real_eip !99
  %139 = add i64 %RBP_val.150, -12, !mcsema_real_eip !100
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !100
  %141 = load i32, i32* %140, align 4, !mcsema_real_eip !100
  %142 = zext i32 %141 to i64, !mcsema_real_eip !100
  store i64 %142, i64* %XCX, align 8, !mcsema_real_eip !100
  %143 = add i64 %RBP_val.150, -16, !mcsema_real_eip !101
  %144 = inttoptr i64 %143 to i32*, !mcsema_real_eip !101
  %145 = load i32, i32* %144, align 4, !mcsema_real_eip !101
  %146 = add i32 %141, %145, !mcsema_real_eip !101
  %147 = xor i32 %146, %145, !mcsema_real_eip !101
  %148 = xor i32 %147, %141, !mcsema_real_eip !101
  %149 = and i32 %148, 16, !mcsema_real_eip !101
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !101
  store i1 %150, i1* %AF, align 1, !mcsema_real_eip !101
  %151 = icmp slt i32 %146, 0
  store i1 %151, i1* %SF, align 1, !mcsema_real_eip !101
  %152 = icmp eq i32 %146, 0, !mcsema_real_eip !101
  store i1 %152, i1* %ZF, align 1, !mcsema_real_eip !101
  %153 = xor i32 %145, -2147483648, !mcsema_real_eip !101
  %154 = xor i32 %153, %141, !mcsema_real_eip !101
  %155 = and i32 %147, %154, !mcsema_real_eip !101
  %156 = icmp slt i32 %155, 0
  store i1 %156, i1* %OF, align 1, !mcsema_real_eip !101
  %157 = trunc i32 %146 to i8, !mcsema_real_eip !101
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !101
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  store i1 %160, i1* %PF, align 1, !mcsema_real_eip !101
  %161 = icmp ult i32 %146, %145, !mcsema_real_eip !101
  store i1 %161, i1* %CF, align 1, !mcsema_real_eip !101
  %162 = zext i32 %146 to i64, !mcsema_real_eip !101
  store i64 %162, i64* %XCX, align 8, !mcsema_real_eip !101
  %163 = add i64 %RBP_val.150, -20, !mcsema_real_eip !102
  %164 = inttoptr i64 %163 to i32*, !mcsema_real_eip !102
  %165 = load i32, i32* %164, align 4, !mcsema_real_eip !102
  %166 = add i32 %146, %165, !mcsema_real_eip !102
  %167 = xor i32 %166, %165, !mcsema_real_eip !102
  %168 = xor i32 %167, %146, !mcsema_real_eip !102
  %169 = and i32 %168, 16, !mcsema_real_eip !102
  %170 = icmp ne i32 %169, 0, !mcsema_real_eip !102
  store i1 %170, i1* %AF, align 1, !mcsema_real_eip !102
  %171 = icmp slt i32 %166, 0
  store i1 %171, i1* %SF, align 1, !mcsema_real_eip !102
  %172 = icmp eq i32 %166, 0, !mcsema_real_eip !102
  store i1 %172, i1* %ZF, align 1, !mcsema_real_eip !102
  %173 = xor i32 %165, -2147483648, !mcsema_real_eip !102
  %174 = xor i32 %173, %146, !mcsema_real_eip !102
  %175 = and i32 %167, %174, !mcsema_real_eip !102
  %176 = icmp slt i32 %175, 0
  store i1 %176, i1* %OF, align 1, !mcsema_real_eip !102
  %177 = trunc i32 %166 to i8, !mcsema_real_eip !102
  %178 = tail call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !102
  %179 = and i8 %178, 1
  %180 = icmp eq i8 %179, 0
  store i1 %180, i1* %PF, align 1, !mcsema_real_eip !102
  %181 = icmp ult i32 %166, %165, !mcsema_real_eip !102
  store i1 %181, i1* %CF, align 1, !mcsema_real_eip !102
  %182 = zext i32 %166 to i64, !mcsema_real_eip !102
  store i64 %182, i64* %XCX, align 8, !mcsema_real_eip !102
  %183 = add i64 %RBP_val.150, -24, !mcsema_real_eip !103
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !103
  %185 = load i32, i32* %184, align 4, !mcsema_real_eip !103
  %186 = add i32 %166, %185, !mcsema_real_eip !103
  %187 = xor i32 %186, %185, !mcsema_real_eip !103
  %188 = xor i32 %187, %166, !mcsema_real_eip !103
  %189 = and i32 %188, 16, !mcsema_real_eip !103
  %190 = icmp ne i32 %189, 0, !mcsema_real_eip !103
  store i1 %190, i1* %AF, align 1, !mcsema_real_eip !103
  %191 = icmp slt i32 %186, 0
  store i1 %191, i1* %SF, align 1, !mcsema_real_eip !103
  %192 = icmp eq i32 %186, 0, !mcsema_real_eip !103
  store i1 %192, i1* %ZF, align 1, !mcsema_real_eip !103
  %193 = xor i32 %185, -2147483648, !mcsema_real_eip !103
  %194 = xor i32 %193, %166, !mcsema_real_eip !103
  %195 = and i32 %187, %194, !mcsema_real_eip !103
  %196 = icmp slt i32 %195, 0
  store i1 %196, i1* %OF, align 1, !mcsema_real_eip !103
  %197 = trunc i32 %186 to i8, !mcsema_real_eip !103
  %198 = tail call i8 @llvm.ctpop.i8(i8 %197), !mcsema_real_eip !103
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  store i1 %200, i1* %PF, align 1, !mcsema_real_eip !103
  %201 = icmp ult i32 %186, %185, !mcsema_real_eip !103
  store i1 %201, i1* %CF, align 1, !mcsema_real_eip !103
  %202 = zext i32 %186 to i64, !mcsema_real_eip !103
  store i64 %202, i64* %XCX, align 8, !mcsema_real_eip !103
  %203 = add i64 %RBP_val.150, -28, !mcsema_real_eip !104
  %204 = inttoptr i64 %203 to i32*, !mcsema_real_eip !104
  %205 = load i32, i32* %204, align 4, !mcsema_real_eip !104
  %206 = add i32 %186, %205, !mcsema_real_eip !104
  %207 = xor i32 %206, %205, !mcsema_real_eip !104
  %208 = xor i32 %207, %186, !mcsema_real_eip !104
  %209 = and i32 %208, 16, !mcsema_real_eip !104
  %210 = icmp ne i32 %209, 0, !mcsema_real_eip !104
  store i1 %210, i1* %AF, align 1, !mcsema_real_eip !104
  %211 = icmp slt i32 %206, 0
  store i1 %211, i1* %SF, align 1, !mcsema_real_eip !104
  %212 = icmp eq i32 %206, 0, !mcsema_real_eip !104
  store i1 %212, i1* %ZF, align 1, !mcsema_real_eip !104
  %213 = xor i32 %205, -2147483648, !mcsema_real_eip !104
  %214 = xor i32 %213, %186, !mcsema_real_eip !104
  %215 = and i32 %207, %214, !mcsema_real_eip !104
  %216 = icmp slt i32 %215, 0
  store i1 %216, i1* %OF, align 1, !mcsema_real_eip !104
  %217 = trunc i32 %206 to i8, !mcsema_real_eip !104
  %218 = tail call i8 @llvm.ctpop.i8(i8 %217), !mcsema_real_eip !104
  %219 = and i8 %218, 1
  %220 = icmp eq i8 %219, 0
  store i1 %220, i1* %PF, align 1, !mcsema_real_eip !104
  %221 = icmp ult i32 %206, %205, !mcsema_real_eip !104
  store i1 %221, i1* %CF, align 1, !mcsema_real_eip !104
  %222 = zext i32 %206 to i64, !mcsema_real_eip !104
  store i64 %222, i64* %XCX, align 8, !mcsema_real_eip !104
  %RBP_val.168 = load i64, i64* %XBP, align 8, !mcsema_real_eip !105
  %223 = add i64 %RBP_val.168, -32, !mcsema_real_eip !105
  %224 = inttoptr i64 %223 to i32*, !mcsema_real_eip !105
  %225 = load i32, i32* %224, align 4, !mcsema_real_eip !105
  %226 = add i32 %206, %225, !mcsema_real_eip !105
  %227 = xor i32 %226, %225, !mcsema_real_eip !105
  %228 = xor i32 %227, %206, !mcsema_real_eip !105
  %229 = and i32 %228, 16, !mcsema_real_eip !105
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !105
  store i1 %230, i1* %AF, align 1, !mcsema_real_eip !105
  %231 = icmp eq i32 %226, 0, !mcsema_real_eip !105
  store i1 %231, i1* %ZF, align 1, !mcsema_real_eip !105
  %232 = trunc i32 %226 to i8, !mcsema_real_eip !105
  %233 = tail call i8 @llvm.ctpop.i8(i8 %232), !mcsema_real_eip !105
  %234 = and i8 %233, 1
  %235 = icmp eq i8 %234, 0
  store i1 %235, i1* %PF, align 1, !mcsema_real_eip !105
  %236 = zext i32 %226 to i64, !mcsema_real_eip !105
  store i64 %236, i64* %XCX, align 8, !mcsema_real_eip !105
  %EAX_val.174 = load i32, i32* %EAX.152, align 4, !mcsema_real_eip !106
  %237 = sext i32 %EAX_val.174 to i64, !mcsema_real_eip !106
  %238 = sext i32 %226 to i64, !mcsema_real_eip !106
  %239 = mul nsw i64 %237, %238, !mcsema_real_eip !106
  %240 = trunc i64 %239 to i32, !mcsema_real_eip !106
  %sext = shl i64 %239, 32
  %241 = ashr exact i64 %sext, 32
  %242 = icmp ne i64 %241, %239, !mcsema_real_eip !106
  %243 = icmp slt i32 %240, 0, !mcsema_real_eip !106
  store i1 %243, i1* %SF, align 1, !mcsema_real_eip !106
  store i1 %242, i1* %OF, align 1, !mcsema_real_eip !106
  store i1 %242, i1* %CF, align 1, !mcsema_real_eip !106
  %244 = and i64 %239, 4294967295
  store i64 %244, i64* %XAX, align 8, !mcsema_real_eip !106
  %RSP_val.175 = load i64, i64* %XSP, align 8, !mcsema_real_eip !107
  %245 = inttoptr i64 %RSP_val.175 to i64*, !mcsema_real_eip !107
  %246 = load i64, i64* %245, align 8, !mcsema_real_eip !107
  store i64 %246, i64* %XBX, align 8, !mcsema_real_eip !107
  %247 = add i64 %RSP_val.175, 8, !mcsema_real_eip !107
  store i64 %247, i64* %XSP, align 8, !mcsema_real_eip !107
  %248 = inttoptr i64 %247 to i64*, !mcsema_real_eip !108
  %249 = load i64, i64* %248, align 8, !mcsema_real_eip !108
  store i64 %249, i64* %XBP, align 8, !mcsema_real_eip !108
  %250 = add i64 %RSP_val.175, 16, !mcsema_real_eip !108
  store i64 %250, i64* %XSP, align 8, !mcsema_real_eip !108
  %251 = add i64 %RSP_val.175, 24, !mcsema_real_eip !109
  %252 = inttoptr i64 %250 to i64*, !mcsema_real_eip !109
  %253 = load i64, i64* %252, align 8, !mcsema_real_eip !109
  store i64 %253, i64* %XIP, align 8, !mcsema_real_eip !109
  store i64 %251, i64* %XSP, align 8, !mcsema_real_eip !109
  ret void, !mcsema_real_eip !109
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
!85 = !{i64 72}
!86 = !{i64 69}
!87 = !{i64 75}
!88 = !{i64 81}
!89 = !{i64 85}
!90 = !{i64 89}
!91 = !{i64 92}
!92 = !{i64 96}
!93 = !{i64 100}
!94 = !{i64 103}
!95 = !{i64 106}
!96 = !{i64 109}
!97 = !{i64 112}
!98 = !{i64 118}
!99 = !{i64 123}
!100 = !{i64 126}
!101 = !{i64 129}
!102 = !{i64 132}
!103 = !{i64 135}
!104 = !{i64 138}
!105 = !{i64 141}
!106 = !{i64 144}
!107 = !{i64 147}
!108 = !{i64 148}
!109 = !{i64 149}
