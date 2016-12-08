; ModuleID = 'Output/test_25.clang.trans.opt.bc'
source_filename = "Output/test_25.clang.bc"
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
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
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
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [14 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xa4 = internal constant %0 <{ [14 x i8] c"I am: %s\0A\00%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
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
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = add i64 %RSP_val.1, -56
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
  %13 = icmp ult i64 %1, 48, !mcsema_real_eip !4
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
  %22 = add i64 %RBP_val.10, -20, !mcsema_real_eip !8
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %23, align 4, !mcsema_real_eip !8
  %RBP_val.11 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %24 = add i64 %RBP_val.11, -16, !mcsema_real_eip !9
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !9
  %26 = load i64, i64* %25, align 8, !mcsema_real_eip !9
  store i64 %26, i64* %XSI, align 8, !mcsema_real_eip !9
  %27 = add i64 %26, 8, !mcsema_real_eip !10
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !10
  %29 = load i64, i64* %28, align 8, !mcsema_real_eip !10
  store i64 %29, i64* %XDI, align 8, !mcsema_real_eip !10
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %30 = add i64 %RSP_val.14, -8
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !11
  store i64 -2415393069852865332, i64* %31, align 8, !mcsema_real_eip !11
  store i64 %30, i64* %XSP, align 8, !mcsema_real_eip !11
  %32 = tail call x86_64_sysvcc i64 @_strlen(i64 %29), !mcsema_real_eip !11
  store i64 %32, i64* %XAX, align 8, !mcsema_real_eip !11
  %EAX.15 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %33 = trunc i64 %32 to i32
  %34 = and i64 %32, 4294967295
  store i64 %34, i64* %XCX, align 8, !mcsema_real_eip !12
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %35 = add i64 %RBP_val.17, -24, !mcsema_real_eip !13
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !13
  store i32 %33, i32* %36, align 4, !mcsema_real_eip !13
  %RBP_val.20 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %37 = add i64 %RBP_val.20, -28, !mcsema_real_eip !14
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %38, align 4, !mcsema_real_eip !14
  %AL.26 = bitcast i64* %XAX to i8*
  br label %block_0x36, !mcsema_real_eip !15

block_0x36:                                       ; preds = %block_0x42, %entry
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !15
  %39 = add i64 %RBP_val.21, -28, !mcsema_real_eip !15
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !15
  %41 = load i32, i32* %40, align 4, !mcsema_real_eip !15
  %42 = zext i32 %41 to i64, !mcsema_real_eip !15
  store i64 %42, i64* %XAX, align 8, !mcsema_real_eip !15
  %43 = add i64 %RBP_val.21, -24, !mcsema_real_eip !16
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !16
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !16
  %46 = sub i32 %41, %45, !mcsema_real_eip !16
  %47 = xor i32 %46, %41, !mcsema_real_eip !16
  %48 = xor i32 %47, %45, !mcsema_real_eip !16
  %49 = and i32 %48, 16, !mcsema_real_eip !16
  %50 = icmp ne i32 %49, 0, !mcsema_real_eip !16
  store i1 %50, i1* %AF, align 1, !mcsema_real_eip !16
  %51 = trunc i32 %46 to i8, !mcsema_real_eip !16
  %52 = tail call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !16
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  store i1 %54, i1* %PF, align 1, !mcsema_real_eip !16
  %55 = icmp eq i32 %46, 0, !mcsema_real_eip !16
  store i1 %55, i1* %ZF, align 1, !mcsema_real_eip !16
  %56 = icmp slt i32 %46, 0
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !16
  %57 = icmp ult i32 %41, %45, !mcsema_real_eip !16
  store i1 %57, i1* %CF, align 1, !mcsema_real_eip !16
  %58 = xor i32 %45, %41, !mcsema_real_eip !16
  %59 = and i32 %47, %58, !mcsema_real_eip !16
  %60 = icmp slt i32 %59, 0
  store i1 %60, i1* %OF, align 1, !mcsema_real_eip !16
  %tmp = xor i1 %56, %60
  %RSP_val.29 = load i64, i64* %XSP, align 8
  %61 = add i64 %RSP_val.29, -8
  %62 = inttoptr i64 %61 to i64*
  br i1 %tmp, label %block_0x42, label %block_0x82, !mcsema_real_eip !17

block_0x42:                                       ; preds = %block_0x36
  store i64 ptrtoint (%0* @data_0xa4 to i64), i64* %XDI, align 8, !mcsema_real_eip !18
  %63 = add i64 %RBP_val.21, -16, !mcsema_real_eip !19
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !19
  %65 = load i64, i64* %64, align 8, !mcsema_real_eip !19
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !19
  %66 = add i64 %65, 8, !mcsema_real_eip !20
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !20
  %68 = load i64, i64* %67, align 8, !mcsema_real_eip !20
  store i64 %68, i64* %XSI, align 8, !mcsema_real_eip !20
  store i8 0, i8* %AL.26, align 1, !mcsema_real_eip !21
  store i64 -2415393069852865332, i64* %62, align 8, !mcsema_real_eip !22
  store i64 %61, i64* %XSP, align 8, !mcsema_real_eip !22
  %69 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xa4 to i64), i64 %68), !mcsema_real_eip !22
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !22
  %RBP_val.45 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %70 = add i64 %RBP_val.45, -16, !mcsema_real_eip !23
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !23
  %72 = load i64, i64* %71, align 8, !mcsema_real_eip !23
  store i64 %72, i64* %XSI, align 8, !mcsema_real_eip !23
  %73 = add i64 %72, 8, !mcsema_real_eip !24
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !24
  %75 = load i64, i64* %74, align 8, !mcsema_real_eip !24
  store i64 %75, i64* %XSI, align 8, !mcsema_real_eip !24
  %76 = add i64 %RBP_val.45, -28, !mcsema_real_eip !25
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !25
  %78 = load i32, i32* %77, align 4, !mcsema_real_eip !25
  %79 = sext i32 %78 to i64, !mcsema_real_eip !25
  store i64 %79, i64* %XDI, align 8, !mcsema_real_eip !25
  %80 = add i64 %79, %75, !mcsema_real_eip !26
  %81 = inttoptr i64 %80 to i8*, !mcsema_real_eip !26
  %82 = load i8, i8* %81, align 1, !mcsema_real_eip !26
  %83 = sext i8 %82 to i64
  %84 = and i64 %83, 4294967295
  store i64 %84, i64* %XCX, align 8, !mcsema_real_eip !26
  %85 = add i64 %RBP_val.45, -20, !mcsema_real_eip !27
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !27
  %87 = load i32, i32* %86, align 4, !mcsema_real_eip !27
  %88 = sext i8 %82 to i32
  %89 = add i32 %88, %87, !mcsema_real_eip !27
  %90 = xor i32 %89, %87, !mcsema_real_eip !27
  %91 = xor i32 %90, %88, !mcsema_real_eip !27
  %92 = and i32 %91, 16, !mcsema_real_eip !27
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !27
  store i1 %93, i1* %AF, align 1, !mcsema_real_eip !27
  %94 = icmp slt i32 %89, 0
  store i1 %94, i1* %SF, align 1, !mcsema_real_eip !27
  %95 = icmp eq i32 %89, 0, !mcsema_real_eip !27
  store i1 %95, i1* %ZF, align 1, !mcsema_real_eip !27
  %96 = xor i32 %87, -2147483648, !mcsema_real_eip !27
  %97 = xor i32 %96, %88, !mcsema_real_eip !27
  %98 = and i32 %90, %97, !mcsema_real_eip !27
  %99 = icmp slt i32 %98, 0
  store i1 %99, i1* %OF, align 1, !mcsema_real_eip !27
  %100 = trunc i32 %89 to i8, !mcsema_real_eip !27
  %101 = tail call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !27
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  store i1 %103, i1* %PF, align 1, !mcsema_real_eip !27
  %104 = icmp ult i32 %89, %87, !mcsema_real_eip !27
  store i1 %104, i1* %CF, align 1, !mcsema_real_eip !27
  %105 = zext i32 %89 to i64, !mcsema_real_eip !27
  store i64 %105, i64* %XCX, align 8, !mcsema_real_eip !27
  store i32 %89, i32* %86, align 4, !mcsema_real_eip !28
  %RBP_val.56 = load i64, i64* %XBP, align 8, !mcsema_real_eip !29
  %106 = add i64 %RBP_val.56, -32, !mcsema_real_eip !29
  %EAX_val.58 = load i32, i32* %EAX.15, align 4, !mcsema_real_eip !29
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !29
  store i32 %EAX_val.58, i32* %107, align 4, !mcsema_real_eip !29
  %RBP_val.59 = load i64, i64* %XBP, align 8, !mcsema_real_eip !30
  %108 = add i64 %RBP_val.59, -28, !mcsema_real_eip !30
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !30
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !30
  %111 = add i32 %110, 1, !mcsema_real_eip !31
  %112 = xor i32 %111, %110, !mcsema_real_eip !31
  %113 = and i32 %112, 16, !mcsema_real_eip !31
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !31
  store i1 %114, i1* %AF, align 1, !mcsema_real_eip !31
  %115 = icmp slt i32 %111, 0
  store i1 %115, i1* %SF, align 1, !mcsema_real_eip !31
  %116 = icmp eq i32 %111, 0, !mcsema_real_eip !31
  store i1 %116, i1* %ZF, align 1, !mcsema_real_eip !31
  %117 = xor i32 %110, -2147483648, !mcsema_real_eip !31
  %118 = and i32 %112, %117, !mcsema_real_eip !31
  %119 = icmp slt i32 %118, 0
  store i1 %119, i1* %OF, align 1, !mcsema_real_eip !31
  %120 = trunc i32 %111 to i8, !mcsema_real_eip !31
  %121 = tail call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !31
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  store i1 %123, i1* %PF, align 1, !mcsema_real_eip !31
  %124 = icmp eq i32 %110, -1
  store i1 %124, i1* %CF, align 1, !mcsema_real_eip !31
  %125 = zext i32 %111 to i64, !mcsema_real_eip !31
  store i64 %125, i64* %XAX, align 8, !mcsema_real_eip !31
  store i32 %111, i32* %109, align 4, !mcsema_real_eip !32
  br label %block_0x36, !mcsema_real_eip !33

block_0x82:                                       ; preds = %block_0x36
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  store i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64* %XDI, align 8, !mcsema_real_eip !34
  %126 = load i32, i32* %44, align 4, !mcsema_real_eip !35
  %127 = zext i32 %126 to i64, !mcsema_real_eip !35
  store i64 %127, i64* %XSI, align 8, !mcsema_real_eip !35
  store i8 0, i8* %AL.26, align 1, !mcsema_real_eip !36
  store i64 -2415393069852865332, i64* %62, align 8, !mcsema_real_eip !37
  store i64 %61, i64* %XSP, align 8, !mcsema_real_eip !37
  %128 = tail call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64 %127), !mcsema_real_eip !37
  store i64 %128, i64* %XAX, align 8, !mcsema_real_eip !37
  %RBP_val.30 = load i64, i64* %XBP, align 8, !mcsema_real_eip !38
  %129 = add i64 %RBP_val.30, -24, !mcsema_real_eip !38
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !38
  %131 = load i32, i32* %130, align 4, !mcsema_real_eip !38
  %132 = zext i32 %131 to i64, !mcsema_real_eip !38
  store i64 %132, i64* %XSI, align 8, !mcsema_real_eip !38
  %133 = add i64 %RBP_val.30, -36, !mcsema_real_eip !39
  %134 = trunc i64 %128 to i32
  %135 = inttoptr i64 %133 to i32*, !mcsema_real_eip !39
  store i32 %134, i32* %135, align 4, !mcsema_real_eip !39
  %ESI.34 = bitcast i64* %XSI to i32*, !mcsema_real_eip !40
  %ESI_val.35 = load i32, i32* %ESI.34, align 4, !mcsema_real_eip !40
  %136 = zext i32 %ESI_val.35 to i64, !mcsema_real_eip !40
  store i64 %136, i64* %XAX, align 8, !mcsema_real_eip !40
  %RSP_val.36 = load i64, i64* %XSP, align 8, !mcsema_real_eip !41
  %137 = add i64 %RSP_val.36, 48, !mcsema_real_eip !41
  %138 = xor i64 %137, %RSP_val.36, !mcsema_real_eip !41
  %139 = and i64 %138, 16
  %140 = icmp eq i64 %139, 0
  store i1 %140, i1* %AF, align 1, !mcsema_real_eip !41
  %141 = icmp slt i64 %137, 0
  store i1 %141, i1* %SF, align 1, !mcsema_real_eip !41
  %142 = icmp eq i64 %137, 0, !mcsema_real_eip !41
  store i1 %142, i1* %ZF, align 1, !mcsema_real_eip !41
  %143 = xor i64 %RSP_val.36, -9223372036854775808, !mcsema_real_eip !41
  %144 = and i64 %138, %143, !mcsema_real_eip !41
  %145 = icmp slt i64 %144, 0
  store i1 %145, i1* %OF, align 1, !mcsema_real_eip !41
  %146 = trunc i64 %137 to i8, !mcsema_real_eip !41
  %147 = tail call i8 @llvm.ctpop.i8(i8 %146), !mcsema_real_eip !41
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  store i1 %149, i1* %PF, align 1, !mcsema_real_eip !41
  %150 = icmp ugt i64 %RSP_val.36, -49
  store i1 %150, i1* %CF, align 1, !mcsema_real_eip !41
  store i64 %137, i64* %XSP, align 8, !mcsema_real_eip !41
  %151 = inttoptr i64 %137 to i64*, !mcsema_real_eip !42
  %152 = load i64, i64* %151, align 8, !mcsema_real_eip !42
  store i64 %152, i64* %XBP, align 8, !mcsema_real_eip !42
  %153 = add i64 %RSP_val.36, 56, !mcsema_real_eip !42
  store i64 %153, i64* %XSP, align 8, !mcsema_real_eip !42
  %154 = add i64 %RSP_val.36, 64, !mcsema_real_eip !43
  %155 = inttoptr i64 %153 to i64*, !mcsema_real_eip !43
  %156 = load i64, i64* %155, align 8, !mcsema_real_eip !43
  store i64 %156, i64* %XIP, align 8, !mcsema_real_eip !43
  store i64 %154, i64* %XSP, align 8, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) local_unnamed_addr #2

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 15}
!7 = !{i64 18}
!8 = !{i64 22}
!9 = !{i64 29}
!10 = !{i64 33}
!11 = !{i64 37}
!12 = !{i64 42}
!13 = !{i64 44}
!14 = !{i64 47}
!15 = !{i64 54}
!16 = !{i64 57}
!17 = !{i64 60}
!18 = !{i64 66}
!19 = !{i64 76}
!20 = !{i64 80}
!21 = !{i64 84}
!22 = !{i64 86}
!23 = !{i64 91}
!24 = !{i64 95}
!25 = !{i64 99}
!26 = !{i64 103}
!27 = !{i64 107}
!28 = !{i64 110}
!29 = !{i64 113}
!30 = !{i64 116}
!31 = !{i64 119}
!32 = !{i64 122}
!33 = !{i64 125}
!34 = !{i64 130}
!35 = !{i64 140}
!36 = !{i64 143}
!37 = !{i64 145}
!38 = !{i64 150}
!39 = !{i64 153}
!40 = !{i64 156}
!41 = !{i64 158}
!42 = !{i64 162}
!43 = !{i64 163}
