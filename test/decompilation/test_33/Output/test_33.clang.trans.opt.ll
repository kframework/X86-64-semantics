; ModuleID = 'Output/test_33.clang.trans.opt.bc'
source_filename = "Output/test_33.clang.bc"
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
module asm "  .globl atoi;"
module asm "  .globl _atoi;"
module asm "  .type _atoi,@function"
module asm "_atoi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq atoi@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _atoi,0b-_atoi;"
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
module asm "  .globl sub_80;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_80(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [15 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x100 = internal constant %0 <{ [15 x i8] c"Ack(3,%d): %d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_80(%RegState*) local_unnamed_addr #0 {
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
  %3 = add i64 %RSP_val.1, -40
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
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !4
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !4
  %14 = and i64 %4, %1, !mcsema_real_eip !4
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %16 = add i64 %RSP_val.1, -12, !mcsema_real_eip !5
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %17, align 4, !mcsema_real_eip !5
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.5, -8, !mcsema_real_eip !6
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, align 4, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %19, align 4, !mcsema_real_eip !6
  %RBP_val.8 = load i64, i64* %XBP, align 8, !mcsema_real_eip !7
  %20 = add i64 %RBP_val.8, -16, !mcsema_real_eip !7
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !7
  %RSI_val.9 = load i64, i64* %XSI, align 8, !mcsema_real_eip !7
  store i64 %RSI_val.9, i64* %21, align 8, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, align 8, !mcsema_real_eip !8
  %22 = add i64 %RBP_val.10, -8, !mcsema_real_eip !8
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !8
  %24 = load i32, i32* %23, align 4, !mcsema_real_eip !8
  %25 = add i32 %24, -2
  %26 = xor i32 %25, %24, !mcsema_real_eip !8
  %27 = and i32 %26, 16, !mcsema_real_eip !8
  %28 = icmp ne i32 %27, 0, !mcsema_real_eip !8
  store i1 %28, i1* %AF, align 1, !mcsema_real_eip !8
  %29 = trunc i32 %25 to i8, !mcsema_real_eip !8
  %30 = tail call i8 @llvm.ctpop.i8(i8 %29), !mcsema_real_eip !8
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  store i1 %32, i1* %PF, align 1, !mcsema_real_eip !8
  %33 = icmp eq i32 %25, 0, !mcsema_real_eip !8
  store i1 %33, i1* %ZF, align 1, !mcsema_real_eip !8
  %34 = icmp slt i32 %25, 0
  store i1 %34, i1* %SF, align 1, !mcsema_real_eip !8
  %35 = icmp ult i32 %24, 2, !mcsema_real_eip !8
  store i1 %35, i1* %CF, align 1, !mcsema_real_eip !8
  %36 = and i32 %26, %24, !mcsema_real_eip !8
  %37 = icmp slt i32 %36, 0
  store i1 %37, i1* %OF, align 1, !mcsema_real_eip !8
  br i1 %33, label %block_0xa0, label %block_0xb5, !mcsema_real_eip !9

block_0xa0:                                       ; preds = %entry
  %38 = add i64 %RBP_val.10, -16, !mcsema_real_eip !10
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !10
  %40 = load i64, i64* %39, align 8, !mcsema_real_eip !10
  store i64 %40, i64* %XAX, align 8, !mcsema_real_eip !10
  %41 = add i64 %40, 8, !mcsema_real_eip !11
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !11
  %43 = load i64, i64* %42, align 8, !mcsema_real_eip !11
  store i64 %43, i64* %XDI, align 8, !mcsema_real_eip !11
  %RSP_val.17 = load i64, i64* %XSP, align 8, !mcsema_real_eip !12
  %44 = add i64 %RSP_val.17, -8
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !12
  store i64 -2415393069852865332, i64* %45, align 8, !mcsema_real_eip !12
  store i64 %44, i64* %XSP, align 8, !mcsema_real_eip !12
  %46 = tail call x86_64_sysvcc i64 @_atoi(i64 %43), !mcsema_real_eip !12
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %47 = trunc i64 %46 to i32
  br label %block_0xc2, !mcsema_real_eip !14

block_0xb5:                                       ; preds = %entry
  store i64 8, i64* %XAX, align 8, !mcsema_real_eip !15
  br label %block_0xc2, !mcsema_real_eip !16

block_0xc2:                                       ; preds = %block_0xb5, %block_0xa0
  %EAX_val.13 = phi i32 [ 8, %block_0xb5 ], [ %47, %block_0xa0 ]
  %.sink1.in = phi i64 [ %RBP_val.10, %block_0xb5 ], [ %RBP_val.18, %block_0xa0 ]
  %.sink1 = add i64 %.sink1.in, -24
  %EAX.12 = bitcast i64* %XAX to i32*
  %48 = inttoptr i64 %.sink1 to i32*
  store i32 %EAX_val.13, i32* %48, align 4
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !17
  %49 = add i64 %RBP_val.21, -24, !mcsema_real_eip !17
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !17
  %51 = load i32, i32* %50, align 4, !mcsema_real_eip !17
  %52 = zext i32 %51 to i64, !mcsema_real_eip !17
  store i64 %52, i64* %XAX, align 8, !mcsema_real_eip !17
  store i64 3, i64* %XDI, align 8, !mcsema_real_eip !18
  %53 = add i64 %RBP_val.21, -20, !mcsema_real_eip !19
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !19
  store i32 %51, i32* %54, align 4, !mcsema_real_eip !19
  %RBP_val.25 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %55 = add i64 %RBP_val.25, -20, !mcsema_real_eip !20
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !20
  %57 = load i32, i32* %56, align 4, !mcsema_real_eip !20
  %58 = zext i32 %57 to i64, !mcsema_real_eip !20
  store i64 %58, i64* %XSI, align 8, !mcsema_real_eip !20
  %59 = load i32, i32* %56, align 4, !mcsema_real_eip !21
  %60 = zext i32 %59 to i64, !mcsema_real_eip !21
  store i64 %60, i64* %XAX, align 8, !mcsema_real_eip !21
  %61 = add i64 %RBP_val.25, -28, !mcsema_real_eip !22
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !22
  store i32 %57, i32* %62, align 4, !mcsema_real_eip !22
  %EAX_val.31 = load i32, i32* %EAX.12, align 4, !mcsema_real_eip !23
  %63 = zext i32 %EAX_val.31 to i64, !mcsema_real_eip !23
  store i64 %63, i64* %XSI, align 8, !mcsema_real_eip !23
  %RSP_val.32 = load i64, i64* %XSP, align 8, !mcsema_real_eip !24
  %64 = add i64 %RSP_val.32, -8
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !24
  store i64 -4981261766360305936, i64* %65, align 8, !mcsema_real_eip !24
  store i64 %64, i64* %XSP, align 8, !mcsema_real_eip !24
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !24
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %XDI, align 8, !mcsema_real_eip !25
  %RBP_val.33 = load i64, i64* %XBP, align 8, !mcsema_real_eip !26
  %66 = add i64 %RBP_val.33, -28, !mcsema_real_eip !26
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !26
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !26
  %69 = zext i32 %68 to i64, !mcsema_real_eip !26
  store i64 %69, i64* %XSI, align 8, !mcsema_real_eip !26
  %EAX_val.35 = load i32, i32* %EAX.12, align 4, !mcsema_real_eip !27
  %70 = zext i32 %EAX_val.35 to i64, !mcsema_real_eip !27
  store i64 %70, i64* %XDX, align 8, !mcsema_real_eip !27
  %AL.36 = bitcast i64* %XAX to i8*, !mcsema_real_eip !28
  store i8 0, i8* %AL.36, align 1, !mcsema_real_eip !28
  %RCX_val.40 = load i64, i64* %XCX, align 8, !mcsema_real_eip !29
  %R8_val.41 = load i64, i64* %R8, align 8, !mcsema_real_eip !29
  %R9_val.42 = load i64, i64* %R9, align 8, !mcsema_real_eip !29
  %RSP_val.43 = load i64, i64* %XSP, align 8, !mcsema_real_eip !29
  %71 = inttoptr i64 %RSP_val.43 to i64*, !mcsema_real_eip !29
  %72 = load i64, i64* %71, align 8, !mcsema_real_eip !29
  %73 = add i64 %RSP_val.43, 8, !mcsema_real_eip !29
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !29
  %75 = load i64, i64* %74, align 8, !mcsema_real_eip !29
  %76 = add i64 %RSP_val.43, 16, !mcsema_real_eip !29
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !29
  %78 = load i64, i64* %77, align 8, !mcsema_real_eip !29
  %79 = add i64 %RSP_val.43, 24, !mcsema_real_eip !29
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !29
  %81 = load i64, i64* %80, align 8, !mcsema_real_eip !29
  %82 = add i64 %RSP_val.43, 32, !mcsema_real_eip !29
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !29
  %84 = load i64, i64* %83, align 8, !mcsema_real_eip !29
  %85 = add i64 %RSP_val.43, 40, !mcsema_real_eip !29
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !29
  %87 = load i64, i64* %86, align 8, !mcsema_real_eip !29
  %88 = add i64 %RSP_val.43, -8
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !29
  store i64 -2415393069852865332, i64* %89, align 8, !mcsema_real_eip !29
  store i64 %88, i64* %XSP, align 8, !mcsema_real_eip !29
  %90 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %69, i64 %70, i64 %RCX_val.40, i64 %R8_val.41, i64 %R9_val.42, i64 %72, i64 %75, i64 %78, i64 %81, i64 %84, i64 %87), !mcsema_real_eip !29
  %EDX.45 = bitcast i64* %XDX to i32*, !mcsema_real_eip !30
  store i64 0, i64* %XDX, align 8, !mcsema_real_eip !30
  %RBP_val.49 = load i64, i64* %XBP, align 8, !mcsema_real_eip !31
  %91 = add i64 %RBP_val.49, -32, !mcsema_real_eip !31
  %92 = trunc i64 %90 to i32
  %93 = inttoptr i64 %91 to i32*, !mcsema_real_eip !31
  store i32 %92, i32* %93, align 4, !mcsema_real_eip !31
  %EDX_val.53 = load i32, i32* %EDX.45, align 4, !mcsema_real_eip !32
  %94 = zext i32 %EDX_val.53 to i64, !mcsema_real_eip !32
  store i64 %94, i64* %XAX, align 8, !mcsema_real_eip !32
  %RSP_val.54 = load i64, i64* %XSP, align 8, !mcsema_real_eip !33
  %95 = add i64 %RSP_val.54, 32, !mcsema_real_eip !33
  %96 = xor i64 %95, %RSP_val.54, !mcsema_real_eip !33
  %97 = and i64 %96, 16, !mcsema_real_eip !33
  %98 = icmp ne i64 %97, 0, !mcsema_real_eip !33
  store i1 %98, i1* %AF, align 1, !mcsema_real_eip !33
  %99 = icmp slt i64 %95, 0
  store i1 %99, i1* %SF, align 1, !mcsema_real_eip !33
  %100 = icmp eq i64 %95, 0, !mcsema_real_eip !33
  store i1 %100, i1* %ZF, align 1, !mcsema_real_eip !33
  %101 = xor i64 %RSP_val.54, -9223372036854775808, !mcsema_real_eip !33
  %102 = and i64 %96, %101, !mcsema_real_eip !33
  %103 = icmp slt i64 %102, 0
  store i1 %103, i1* %OF, align 1, !mcsema_real_eip !33
  %104 = trunc i64 %95 to i8, !mcsema_real_eip !33
  %105 = tail call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !33
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !33
  %108 = icmp ugt i64 %RSP_val.54, -33
  store i1 %108, i1* %CF, align 1, !mcsema_real_eip !33
  store i64 %95, i64* %XSP, align 8, !mcsema_real_eip !33
  %109 = inttoptr i64 %95 to i64*, !mcsema_real_eip !34
  %110 = load i64, i64* %109, align 8, !mcsema_real_eip !34
  store i64 %110, i64* %XBP, align 8, !mcsema_real_eip !34
  %111 = add i64 %RSP_val.54, 40, !mcsema_real_eip !34
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !34
  %112 = add i64 %RSP_val.54, 48, !mcsema_real_eip !35
  %113 = inttoptr i64 %111 to i64*, !mcsema_real_eip !35
  %114 = load i64, i64* %113, align 8, !mcsema_real_eip !35
  store i64 %114, i64* %XIP, align 8, !mcsema_real_eip !35
  store i64 %112, i64* %XSP, align 8, !mcsema_real_eip !35
  ret void, !mcsema_real_eip !35
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !36
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !36
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !36
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !36
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !36
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !36
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !36
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !36
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !36
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !36
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !36
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !36
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !36
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !36
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !36
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !36
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !36
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !36
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !36
  %RBP_val.57 = load i64, i64* %XBP, align 8, !mcsema_real_eip !36
  %RSP_val.58 = load i64, i64* %XSP, align 8, !mcsema_real_eip !36
  %1 = add i64 %RSP_val.58, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !36
  store i64 %RBP_val.57, i64* %2, align 8, !mcsema_real_eip !36
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !37
  %3 = add i64 %RSP_val.58, -24
  %4 = xor i64 %3, %1, !mcsema_real_eip !38
  %5 = and i64 %4, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !38
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !38
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !38
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !38
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !38
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !38
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !38
  %13 = icmp ult i64 %1, 16, !mcsema_real_eip !38
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !38
  %14 = and i64 %4, %1, !mcsema_real_eip !38
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !38
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !38
  %16 = add i64 %RSP_val.58, -16, !mcsema_real_eip !39
  %EDI.62 = bitcast i64* %XDI to i32*, !mcsema_real_eip !39
  %EDI_val.63 = load i32, i32* %EDI.62, align 4, !mcsema_real_eip !39
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !39
  store i32 %EDI_val.63, i32* %17, align 4, !mcsema_real_eip !39
  %RBP_val.64 = load i64, i64* %XBP, align 8, !mcsema_real_eip !40
  %18 = add i64 %RBP_val.64, -12, !mcsema_real_eip !40
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !40
  %ESI_val.66 = load i32, i32* %ESI.65, align 4, !mcsema_real_eip !40
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !40
  store i32 %ESI_val.66, i32* %19, align 4, !mcsema_real_eip !40
  %RBP_val.67 = load i64, i64* %XBP, align 8, !mcsema_real_eip !41
  %20 = add i64 %RBP_val.67, -8, !mcsema_real_eip !41
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !41
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !41
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !41
  %23 = trunc i32 %22 to i8, !mcsema_real_eip !41
  %24 = tail call i8 @llvm.ctpop.i8(i8 %23), !mcsema_real_eip !41
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  store i1 %26, i1* %PF, align 1, !mcsema_real_eip !41
  %27 = icmp eq i32 %22, 0, !mcsema_real_eip !41
  store i1 %27, i1* %ZF, align 1, !mcsema_real_eip !41
  %28 = icmp slt i32 %22, 0
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !41
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !41
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !41
  %29 = add i64 %RBP_val.67, -12
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30, align 4
  %EAX.76 = bitcast i64* %XAX to i32*
  br i1 %27, label %block_0x18, label %block_0x26, !mcsema_real_eip !42

block_0x18:                                       ; preds = %entry
  %32 = add i32 %31, 1, !mcsema_real_eip !43
  %33 = xor i32 %32, %31, !mcsema_real_eip !43
  %34 = and i32 %33, 16, !mcsema_real_eip !43
  %35 = icmp ne i32 %34, 0, !mcsema_real_eip !43
  store i1 %35, i1* %AF, align 1, !mcsema_real_eip !43
  %36 = icmp slt i32 %32, 0
  store i1 %36, i1* %SF, align 1, !mcsema_real_eip !43
  %37 = icmp eq i32 %32, 0, !mcsema_real_eip !43
  store i1 %37, i1* %ZF, align 1, !mcsema_real_eip !43
  %38 = xor i32 %31, -2147483648, !mcsema_real_eip !43
  %39 = and i32 %33, %38, !mcsema_real_eip !43
  %40 = icmp slt i32 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !43
  %41 = trunc i32 %32 to i8, !mcsema_real_eip !43
  %42 = tail call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !43
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !43
  %45 = icmp eq i32 %31, -1
  store i1 %45, i1* %CF, align 1, !mcsema_real_eip !43
  %46 = zext i32 %32 to i64, !mcsema_real_eip !43
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !43
  br label %block_0x70, !mcsema_real_eip !44

block_0x26:                                       ; preds = %entry
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !45
  %47 = trunc i32 %31 to i8, !mcsema_real_eip !45
  %48 = tail call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !45
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  store i1 %50, i1* %PF, align 1, !mcsema_real_eip !45
  %51 = icmp eq i32 %31, 0, !mcsema_real_eip !45
  store i1 %51, i1* %ZF, align 1, !mcsema_real_eip !45
  %52 = icmp slt i32 %31, 0
  store i1 %52, i1* %SF, align 1, !mcsema_real_eip !45
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !45
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !45
  br i1 %51, label %block_0x30, label %block_0x4a, !mcsema_real_eip !46

block_0x30:                                       ; preds = %block_0x26
  store i64 1, i64* %XSI, align 8, !mcsema_real_eip !47
  %53 = load i32, i32* %21, align 4, !mcsema_real_eip !48
  %54 = add i32 %53, -1
  %55 = xor i32 %54, %53, !mcsema_real_eip !49
  %56 = and i32 %55, 16, !mcsema_real_eip !49
  %57 = icmp ne i32 %56, 0, !mcsema_real_eip !49
  store i1 %57, i1* %AF, align 1, !mcsema_real_eip !49
  %58 = trunc i32 %54 to i8, !mcsema_real_eip !49
  %59 = tail call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !49
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !49
  %62 = icmp eq i32 %54, 0, !mcsema_real_eip !49
  store i1 %62, i1* %ZF, align 1, !mcsema_real_eip !49
  %63 = icmp slt i32 %54, 0
  store i1 %63, i1* %SF, align 1, !mcsema_real_eip !49
  %64 = icmp eq i32 %53, 0
  store i1 %64, i1* %CF, align 1, !mcsema_real_eip !49
  %65 = and i32 %55, %53, !mcsema_real_eip !49
  %66 = icmp slt i32 %65, 0
  store i1 %66, i1* %OF, align 1, !mcsema_real_eip !49
  %67 = zext i32 %54 to i64
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !49
  store i64 %67, i64* %XDI, align 8, !mcsema_real_eip !50
  %RSP_val.100 = load i64, i64* %XSP, align 8, !mcsema_real_eip !51
  %68 = add i64 %RSP_val.100, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !51
  store i64 -4981261766360305936, i64* %69, align 8, !mcsema_real_eip !51
  store i64 %68, i64* %XSP, align 8, !mcsema_real_eip !51
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !51
  %RBP_val.101 = load i64, i64* %XBP, align 8, !mcsema_real_eip !52
  br label %block_0x70, !mcsema_real_eip !53

block_0x4a:                                       ; preds = %block_0x26
  %70 = load i32, i32* %21, align 4, !mcsema_real_eip !54
  %71 = add i32 %70, -1
  %72 = xor i32 %71, %70, !mcsema_real_eip !55
  %73 = and i32 %72, 16, !mcsema_real_eip !55
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !55
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !55
  %75 = trunc i32 %71 to i8, !mcsema_real_eip !55
  %76 = tail call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !55
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !55
  %79 = icmp eq i32 %71, 0, !mcsema_real_eip !55
  store i1 %79, i1* %ZF, align 1, !mcsema_real_eip !55
  %80 = icmp slt i32 %71, 0
  store i1 %80, i1* %SF, align 1, !mcsema_real_eip !55
  %81 = icmp eq i32 %70, 0
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !55
  %82 = and i32 %72, %70, !mcsema_real_eip !55
  %83 = icmp slt i32 %82, 0
  store i1 %83, i1* %OF, align 1, !mcsema_real_eip !55
  %84 = zext i32 %71 to i64, !mcsema_real_eip !55
  store i64 %84, i64* %XAX, align 8, !mcsema_real_eip !55
  %85 = load i32, i32* %21, align 4, !mcsema_real_eip !56
  %86 = zext i32 %85 to i64, !mcsema_real_eip !56
  store i64 %86, i64* %XDI, align 8, !mcsema_real_eip !56
  %87 = load i32, i32* %30, align 4, !mcsema_real_eip !57
  %88 = add i32 %87, -1
  %89 = xor i32 %88, %87, !mcsema_real_eip !58
  %90 = and i32 %89, 16, !mcsema_real_eip !58
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !58
  store i1 %91, i1* %AF, align 1, !mcsema_real_eip !58
  %92 = trunc i32 %88 to i8, !mcsema_real_eip !58
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !58
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !58
  %96 = icmp eq i32 %88, 0, !mcsema_real_eip !58
  store i1 %96, i1* %ZF, align 1, !mcsema_real_eip !58
  %97 = icmp slt i32 %88, 0
  store i1 %97, i1* %SF, align 1, !mcsema_real_eip !58
  %98 = icmp eq i32 %87, 0
  store i1 %98, i1* %CF, align 1, !mcsema_real_eip !58
  %99 = and i32 %89, %87, !mcsema_real_eip !58
  %100 = icmp slt i32 %99, 0
  store i1 %100, i1* %OF, align 1, !mcsema_real_eip !58
  %101 = zext i32 %88 to i64
  store i64 %101, i64* %XCX, align 8, !mcsema_real_eip !58
  store i64 %101, i64* %XSI, align 8, !mcsema_real_eip !59
  %102 = add i64 %RBP_val.67, -16, !mcsema_real_eip !60
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !60
  store i32 %71, i32* %103, align 4, !mcsema_real_eip !60
  %RSP_val.87 = load i64, i64* %XSP, align 8, !mcsema_real_eip !61
  %104 = add i64 %RSP_val.87, -8
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !61
  store i64 -4981261766360305936, i64* %105, align 8, !mcsema_real_eip !61
  store i64 %104, i64* %XSP, align 8, !mcsema_real_eip !61
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !61
  %RBP_val.88 = load i64, i64* %XBP, align 8, !mcsema_real_eip !62
  %106 = add i64 %RBP_val.88, -16, !mcsema_real_eip !62
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !62
  %108 = load i32, i32* %107, align 4, !mcsema_real_eip !62
  %109 = zext i32 %108 to i64, !mcsema_real_eip !62
  store i64 %109, i64* %XDI, align 8, !mcsema_real_eip !62
  %EAX_val.90 = load i32, i32* %EAX.76, align 4, !mcsema_real_eip !63
  %110 = zext i32 %EAX_val.90 to i64, !mcsema_real_eip !63
  store i64 %110, i64* %XSI, align 8, !mcsema_real_eip !63
  %RSP_val.91 = load i64, i64* %XSP, align 8, !mcsema_real_eip !64
  %111 = add i64 %RSP_val.91, -8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !64
  store i64 -4981261766360305936, i64* %112, align 8, !mcsema_real_eip !64
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !64
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !64
  %RBP_val.92 = load i64, i64* %XBP, align 8, !mcsema_real_eip !65
  br label %block_0x70, !mcsema_real_eip !47

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %.sink1.in = phi i64 [ %RBP_val.92, %block_0x4a ], [ %RBP_val.101, %block_0x30 ], [ %RBP_val.67, %block_0x18 ]
  %.sink1 = add i64 %.sink1.in, -4
  %EAX_val.94 = load i32, i32* %EAX.76, align 4
  %113 = inttoptr i64 %.sink1 to i32*
  store i32 %EAX_val.94, i32* %113, align 4
  %RBP_val.104 = load i64, i64* %XBP, align 8, !mcsema_real_eip !66
  %114 = add i64 %RBP_val.104, -4, !mcsema_real_eip !66
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !66
  %116 = load i32, i32* %115, align 4, !mcsema_real_eip !66
  %117 = zext i32 %116 to i64, !mcsema_real_eip !66
  store i64 %117, i64* %XAX, align 8, !mcsema_real_eip !66
  %RSP_val.105 = load i64, i64* %XSP, align 8, !mcsema_real_eip !67
  %118 = add i64 %RSP_val.105, 16, !mcsema_real_eip !67
  %119 = xor i64 %118, %RSP_val.105, !mcsema_real_eip !67
  %120 = and i64 %119, 16
  %121 = icmp eq i64 %120, 0
  store i1 %121, i1* %AF, align 1, !mcsema_real_eip !67
  %122 = icmp slt i64 %118, 0
  store i1 %122, i1* %SF, align 1, !mcsema_real_eip !67
  %123 = icmp eq i64 %118, 0, !mcsema_real_eip !67
  store i1 %123, i1* %ZF, align 1, !mcsema_real_eip !67
  %124 = xor i64 %RSP_val.105, -9223372036854775808, !mcsema_real_eip !67
  %125 = and i64 %119, %124, !mcsema_real_eip !67
  %126 = icmp slt i64 %125, 0
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !67
  %127 = trunc i64 %118 to i8, !mcsema_real_eip !67
  %128 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !67
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  store i1 %130, i1* %PF, align 1, !mcsema_real_eip !67
  %131 = icmp ugt i64 %RSP_val.105, -17
  store i1 %131, i1* %CF, align 1, !mcsema_real_eip !67
  store i64 %118, i64* %XSP, align 8, !mcsema_real_eip !67
  %132 = inttoptr i64 %118 to i64*, !mcsema_real_eip !68
  %133 = load i64, i64* %132, align 8, !mcsema_real_eip !68
  store i64 %133, i64* %XBP, align 8, !mcsema_real_eip !68
  %134 = add i64 %RSP_val.105, 24, !mcsema_real_eip !68
  store i64 %134, i64* %XSP, align 8, !mcsema_real_eip !68
  %135 = add i64 %RSP_val.105, 32, !mcsema_real_eip !69
  %136 = inttoptr i64 %134 to i64*, !mcsema_real_eip !69
  %137 = load i64, i64* %136, align 8, !mcsema_real_eip !69
  store i64 %137, i64* %XIP, align 8, !mcsema_real_eip !69
  store i64 %135, i64* %XSP, align 8, !mcsema_real_eip !69
  ret void, !mcsema_real_eip !69
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_atoi(i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

attributes #0 = { noinline }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 128}
!3 = !{i64 129}
!4 = !{i64 132}
!5 = !{i64 136}
!6 = !{i64 143}
!7 = !{i64 146}
!8 = !{i64 150}
!9 = !{i64 154}
!10 = !{i64 160}
!11 = !{i64 164}
!12 = !{i64 168}
!13 = !{i64 173}
!14 = !{i64 176}
!15 = !{i64 181}
!16 = !{i64 189}
!17 = !{i64 194}
!18 = !{i64 197}
!19 = !{i64 202}
!20 = !{i64 205}
!21 = !{i64 208}
!22 = !{i64 211}
!23 = !{i64 214}
!24 = !{i64 216}
!25 = !{i64 221}
!26 = !{i64 231}
!27 = !{i64 234}
!28 = !{i64 236}
!29 = !{i64 238}
!30 = !{i64 243}
!31 = !{i64 245}
!32 = !{i64 248}
!33 = !{i64 250}
!34 = !{i64 254}
!35 = !{i64 255}
!36 = !{i64 0}
!37 = !{i64 1}
!38 = !{i64 4}
!39 = !{i64 8}
!40 = !{i64 11}
!41 = !{i64 14}
!42 = !{i64 18}
!43 = !{i64 27}
!44 = !{i64 33}
!45 = !{i64 38}
!46 = !{i64 42}
!47 = !{i64 48}
!48 = !{i64 53}
!49 = !{i64 56}
!50 = !{i64 59}
!51 = !{i64 61}
!52 = !{i64 66}
!53 = !{i64 69}
!54 = !{i64 74}
!55 = !{i64 77}
!56 = !{i64 80}
!57 = !{i64 83}
!58 = !{i64 86}
!59 = !{i64 89}
!60 = !{i64 91}
!61 = !{i64 94}
!62 = !{i64 99}
!63 = !{i64 102}
!64 = !{i64 104}
!65 = !{i64 109}
!66 = !{i64 112}
!67 = !{i64 115}
!68 = !{i64 119}
!69 = !{i64 120}
