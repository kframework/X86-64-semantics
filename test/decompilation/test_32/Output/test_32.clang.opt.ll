; ModuleID = 'Output/test_32.clang.opt.bc'
source_filename = "Output/test_32.clang.bc"
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
module asm "  .globl sub_60;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_60(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [5 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [5 x i8] c"%ld\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) local_unnamed_addr #0 {
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
  %33 = icmp eq i32 %25, 0
  store i1 %33, i1* %ZF, align 1, !mcsema_real_eip !8
  %34 = icmp slt i32 %25, 0
  store i1 %34, i1* %SF, align 1, !mcsema_real_eip !8
  %35 = icmp ult i32 %24, 2, !mcsema_real_eip !8
  store i1 %35, i1* %CF, align 1, !mcsema_real_eip !8
  %36 = and i32 %26, %24, !mcsema_real_eip !8
  %37 = icmp slt i32 %36, 0
  store i1 %37, i1* %OF, align 1, !mcsema_real_eip !8
  br i1 %33, label %block_0x80, label %block_0xa2, !mcsema_real_eip !9

block_0x80:                                       ; preds = %entry
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
  %RBP_val.11.pre = load i64, i64* %XBP, align 8
  br label %block_0xa2, !mcsema_real_eip !13

block_0xa2:                                       ; preds = %entry, %block_0x80
  %RBP_val.11 = phi i64 [ %RBP_val.11.pre, %block_0x80 ], [ %RBP_val.10, %entry ]
  %.sink = phi i64 [ %46, %block_0x80 ], [ 20, %entry ]
  store i64 %.sink, i64* %XAX, align 8
  %47 = add i64 %RBP_val.11, -24
  %48 = trunc i64 %.sink to i32
  %49 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %49, align 4
  %RBP_val.21 = load i64, i64* %XBP, align 8
  %50 = add i64 %RBP_val.21, -24, !mcsema_real_eip !14
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !14
  %52 = load i32, i32* %51, align 4, !mcsema_real_eip !14
  %53 = zext i32 %52 to i64, !mcsema_real_eip !14
  store i64 %53, i64* %XAX, align 8, !mcsema_real_eip !14
  %54 = add i64 %RBP_val.21, -20, !mcsema_real_eip !15
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !15
  store i32 %52, i32* %55, align 4, !mcsema_real_eip !15
  %RBP_val.25 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %56 = add i64 %RBP_val.25, -20, !mcsema_real_eip !16
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !16
  %58 = load i32, i32* %57, align 4, !mcsema_real_eip !16
  %59 = sext i32 %58 to i64, !mcsema_real_eip !16
  store i64 %59, i64* %XDI, align 8, !mcsema_real_eip !16
  %RSP_val.26 = load i64, i64* %XSP, align 8, !mcsema_real_eip !17
  %60 = add i64 %RSP_val.26, -8
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !17
  store i64 -4981261766360305936, i64* %61, align 8, !mcsema_real_eip !17
  store i64 %60, i64* %XSP, align 8, !mcsema_real_eip !17
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !17
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %XDI, align 8, !mcsema_real_eip !18
  %RAX_val.27 = load i64, i64* %XAX, align 8, !mcsema_real_eip !19
  store i64 %RAX_val.27, i64* %XSI, align 8, !mcsema_real_eip !19
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !20
  store i8 0, i8* %AL.28, align 1, !mcsema_real_eip !20
  %RDX_val.31 = load i64, i64* %XDX, align 8, !mcsema_real_eip !21
  %RCX_val.32 = load i64, i64* %XCX, align 8, !mcsema_real_eip !21
  %R8_val.33 = load i64, i64* %R8, align 8, !mcsema_real_eip !21
  %R9_val.34 = load i64, i64* %R9, align 8, !mcsema_real_eip !21
  %RSP_val.35 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %62 = inttoptr i64 %RSP_val.35 to i64*, !mcsema_real_eip !21
  %63 = load i64, i64* %62, align 8, !mcsema_real_eip !21
  %64 = add i64 %RSP_val.35, 8, !mcsema_real_eip !21
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !21
  %66 = load i64, i64* %65, align 8, !mcsema_real_eip !21
  %67 = add i64 %RSP_val.35, 16, !mcsema_real_eip !21
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !21
  %69 = load i64, i64* %68, align 8, !mcsema_real_eip !21
  %70 = add i64 %RSP_val.35, 24, !mcsema_real_eip !21
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !21
  %72 = load i64, i64* %71, align 8, !mcsema_real_eip !21
  %73 = add i64 %RSP_val.35, 32, !mcsema_real_eip !21
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !21
  %75 = load i64, i64* %74, align 8, !mcsema_real_eip !21
  %76 = add i64 %RSP_val.35, 40, !mcsema_real_eip !21
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !21
  %78 = load i64, i64* %77, align 8, !mcsema_real_eip !21
  %79 = add i64 %RSP_val.35, -8
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !21
  store i64 -2415393069852865332, i64* %80, align 8, !mcsema_real_eip !21
  store i64 %79, i64* %XSP, align 8, !mcsema_real_eip !21
  %81 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %RAX_val.27, i64 %RDX_val.31, i64 %RCX_val.32, i64 %R8_val.33, i64 %R9_val.34, i64 %63, i64 %66, i64 %69, i64 %72, i64 %75, i64 %78), !mcsema_real_eip !21
  %ECX.37 = bitcast i64* %XCX to i32*, !mcsema_real_eip !22
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !22
  %RBP_val.41 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %82 = add i64 %RBP_val.41, -28, !mcsema_real_eip !23
  %83 = trunc i64 %81 to i32
  %84 = inttoptr i64 %82 to i32*, !mcsema_real_eip !23
  store i32 %83, i32* %84, align 4, !mcsema_real_eip !23
  %ECX_val.45 = load i32, i32* %ECX.37, align 4, !mcsema_real_eip !24
  %85 = zext i32 %ECX_val.45 to i64, !mcsema_real_eip !24
  store i64 %85, i64* %XAX, align 8, !mcsema_real_eip !24
  %RSP_val.46 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %86 = add i64 %RSP_val.46, 32, !mcsema_real_eip !25
  %87 = xor i64 %86, %RSP_val.46, !mcsema_real_eip !25
  %88 = and i64 %87, 16, !mcsema_real_eip !25
  %89 = icmp ne i64 %88, 0, !mcsema_real_eip !25
  store i1 %89, i1* %AF, align 1, !mcsema_real_eip !25
  %90 = icmp slt i64 %86, 0
  store i1 %90, i1* %SF, align 1, !mcsema_real_eip !25
  %91 = icmp eq i64 %86, 0, !mcsema_real_eip !25
  store i1 %91, i1* %ZF, align 1, !mcsema_real_eip !25
  %92 = xor i64 %RSP_val.46, -9223372036854775808, !mcsema_real_eip !25
  %93 = and i64 %87, %92, !mcsema_real_eip !25
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF, align 1, !mcsema_real_eip !25
  %95 = trunc i64 %86 to i8, !mcsema_real_eip !25
  %96 = tail call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !25
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  store i1 %98, i1* %PF, align 1, !mcsema_real_eip !25
  %99 = icmp ugt i64 %RSP_val.46, -33
  store i1 %99, i1* %CF, align 1, !mcsema_real_eip !25
  store i64 %86, i64* %XSP, align 8, !mcsema_real_eip !25
  %100 = inttoptr i64 %86 to i64*, !mcsema_real_eip !26
  %101 = load i64, i64* %100, align 8, !mcsema_real_eip !26
  store i64 %101, i64* %XBP, align 8, !mcsema_real_eip !26
  %102 = add i64 %RSP_val.46, 40, !mcsema_real_eip !26
  store i64 %102, i64* %XSP, align 8, !mcsema_real_eip !26
  %103 = add i64 %RSP_val.46, 48, !mcsema_real_eip !27
  %104 = inttoptr i64 %102 to i64*, !mcsema_real_eip !27
  %105 = load i64, i64* %104, align 8, !mcsema_real_eip !27
  store i64 %105, i64* %XIP, align 8, !mcsema_real_eip !27
  store i64 %103, i64* %XSP, align 8, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !28
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !28
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !28
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !28
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !28
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !28
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !28
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !28
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !28
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !28
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !28
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !28
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !28
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !28
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !28
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !28
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !28
  %RBP_val.49 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %RSP_val.50 = load i64, i64* %XSP, align 8, !mcsema_real_eip !28
  %1 = add i64 %RSP_val.50, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !28
  store i64 %RBP_val.49, i64* %2, align 8, !mcsema_real_eip !28
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !29
  %3 = add i64 %RSP_val.50, -40
  %4 = xor i64 %3, %1, !mcsema_real_eip !30
  %5 = and i64 %4, 16, !mcsema_real_eip !30
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !30
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !30
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !30
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !30
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !30
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !30
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !30
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !30
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !30
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !30
  %14 = and i64 %4, %1, !mcsema_real_eip !30
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !30
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !30
  %16 = add i64 %RSP_val.50, -24, !mcsema_real_eip !31
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !31
  %RDI_val.54 = load i64, i64* %XDI, align 8, !mcsema_real_eip !31
  store i64 %RDI_val.54, i64* %17, align 8, !mcsema_real_eip !31
  %RBP_val.55 = load i64, i64* %XBP, align 8
  %18 = add i64 %RBP_val.55, -16
  %19 = inttoptr i64 %18 to i64*
  %20 = load i64, i64* %19, align 8, !mcsema_real_eip !32
  %21 = add i64 %20, -2
  %22 = xor i64 %21, %20, !mcsema_real_eip !32
  %23 = and i64 %22, 16, !mcsema_real_eip !32
  %24 = icmp ne i64 %23, 0, !mcsema_real_eip !32
  store i1 %24, i1* %AF, align 1, !mcsema_real_eip !32
  %25 = trunc i64 %21 to i8, !mcsema_real_eip !32
  %26 = tail call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !32
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !32
  %29 = icmp eq i64 %21, 0, !mcsema_real_eip !32
  store i1 %29, i1* %ZF, align 1, !mcsema_real_eip !32
  %30 = icmp slt i64 %21, 0
  store i1 %30, i1* %SF, align 1, !mcsema_real_eip !32
  %31 = icmp ult i64 %20, 2, !mcsema_real_eip !32
  store i1 %31, i1* %CF, align 1, !mcsema_real_eip !32
  %32 = and i64 %22, %20, !mcsema_real_eip !32
  %33 = icmp slt i64 %32, 0
  store i1 %33, i1* %OF, align 1, !mcsema_real_eip !32
  br i1 %31, label %block_0x50, label %block_0x24, !mcsema_real_eip !33

block_0x24:                                       ; preds = %entry
  %34 = load i64, i64* %19, align 8, !mcsema_real_eip !34
  %35 = add i64 %34, -2
  %36 = xor i64 %35, %34, !mcsema_real_eip !35
  %37 = and i64 %36, 16, !mcsema_real_eip !35
  %38 = icmp ne i64 %37, 0, !mcsema_real_eip !35
  store i1 %38, i1* %AF, align 1, !mcsema_real_eip !35
  %39 = trunc i64 %35 to i8, !mcsema_real_eip !35
  %40 = tail call i8 @llvm.ctpop.i8(i8 %39), !mcsema_real_eip !35
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  store i1 %42, i1* %PF, align 1, !mcsema_real_eip !35
  %43 = icmp eq i64 %35, 0, !mcsema_real_eip !35
  store i1 %43, i1* %ZF, align 1, !mcsema_real_eip !35
  %44 = icmp slt i64 %35, 0
  store i1 %44, i1* %SF, align 1, !mcsema_real_eip !35
  %45 = icmp ult i64 %34, 2, !mcsema_real_eip !35
  store i1 %45, i1* %CF, align 1, !mcsema_real_eip !35
  %46 = and i64 %36, %34, !mcsema_real_eip !35
  %47 = icmp slt i64 %46, 0
  store i1 %47, i1* %OF, align 1, !mcsema_real_eip !35
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !35
  store i64 %35, i64* %XDI, align 8, !mcsema_real_eip !36
  %RSP_val.59 = load i64, i64* %XSP, align 8, !mcsema_real_eip !37
  %48 = add i64 %RSP_val.59, -8
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !37
  store i64 -4981261766360305936, i64* %49, align 8, !mcsema_real_eip !37
  store i64 %48, i64* %XSP, align 8, !mcsema_real_eip !37
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !37
  %RBP_val.60 = load i64, i64* %XBP, align 8
  %50 = add i64 %RBP_val.60, -16, !mcsema_real_eip !38
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !38
  %52 = load i64, i64* %51, align 8, !mcsema_real_eip !38
  %53 = add i64 %52, -1
  %54 = xor i64 %53, %52, !mcsema_real_eip !39
  %55 = and i64 %54, 16, !mcsema_real_eip !39
  %56 = icmp ne i64 %55, 0, !mcsema_real_eip !39
  store i1 %56, i1* %AF, align 1, !mcsema_real_eip !39
  %57 = trunc i64 %53 to i8, !mcsema_real_eip !39
  %58 = tail call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !39
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  store i1 %60, i1* %PF, align 1, !mcsema_real_eip !39
  %61 = icmp eq i64 %53, 0, !mcsema_real_eip !39
  store i1 %61, i1* %ZF, align 1, !mcsema_real_eip !39
  %62 = icmp slt i64 %53, 0
  store i1 %62, i1* %SF, align 1, !mcsema_real_eip !39
  %63 = icmp eq i64 %52, 0
  store i1 %63, i1* %CF, align 1, !mcsema_real_eip !39
  %64 = and i64 %54, %52, !mcsema_real_eip !39
  %65 = icmp slt i64 %64, 0
  store i1 %65, i1* %OF, align 1, !mcsema_real_eip !39
  store i64 %53, i64* %XDI, align 8, !mcsema_real_eip !39
  %66 = add i64 %RBP_val.60, -24, !mcsema_real_eip !40
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !40
  %RAX_val.63 = load i64, i64* %XAX, align 8, !mcsema_real_eip !40
  store i64 %RAX_val.63, i64* %67, align 8, !mcsema_real_eip !40
  %RSP_val.64 = load i64, i64* %XSP, align 8, !mcsema_real_eip !41
  %68 = add i64 %RSP_val.64, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !41
  store i64 -4981261766360305936, i64* %69, align 8, !mcsema_real_eip !41
  store i64 %68, i64* %XSP, align 8, !mcsema_real_eip !41
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !41
  %RBP_val.65 = load i64, i64* %XBP, align 8
  %70 = add i64 %RBP_val.65, -24, !mcsema_real_eip !42
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !42
  %72 = load i64, i64* %71, align 8, !mcsema_real_eip !42
  %RAX_val.67 = load i64, i64* %XAX, align 8, !mcsema_real_eip !43
  %73 = add i64 %RAX_val.67, %72, !mcsema_real_eip !43
  %74 = xor i64 %73, %72, !mcsema_real_eip !43
  %75 = xor i64 %74, %RAX_val.67, !mcsema_real_eip !43
  %76 = and i64 %75, 16, !mcsema_real_eip !43
  %77 = icmp ne i64 %76, 0, !mcsema_real_eip !43
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !43
  %78 = icmp slt i64 %73, 0
  store i1 %78, i1* %SF, align 1, !mcsema_real_eip !43
  %79 = icmp eq i64 %73, 0, !mcsema_real_eip !43
  store i1 %79, i1* %ZF, align 1, !mcsema_real_eip !43
  %80 = xor i64 %72, -9223372036854775808, !mcsema_real_eip !43
  %81 = xor i64 %80, %RAX_val.67, !mcsema_real_eip !43
  %82 = and i64 %74, %81, !mcsema_real_eip !43
  %83 = icmp slt i64 %82, 0
  store i1 %83, i1* %OF, align 1, !mcsema_real_eip !43
  %84 = trunc i64 %73 to i8, !mcsema_real_eip !43
  %85 = tail call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !43
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  store i1 %87, i1* %PF, align 1, !mcsema_real_eip !43
  %88 = icmp ult i64 %73, %72, !mcsema_real_eip !43
  store i1 %88, i1* %CF, align 1, !mcsema_real_eip !43
  store i64 %73, i64* %XDI, align 8, !mcsema_real_eip !43
  br label %block_0x50, !mcsema_real_eip !44

block_0x50:                                       ; preds = %entry, %block_0x24
  %RBP_val.68.sink = phi i64 [ %RBP_val.65, %block_0x24 ], [ %RBP_val.55, %entry ]
  %.sink = phi i64 [ %73, %block_0x24 ], [ 1, %entry ]
  %89 = add i64 %RBP_val.68.sink, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %.sink, i64* %90, align 8
  %RBP_val.71 = load i64, i64* %XBP, align 8, !mcsema_real_eip !45
  %91 = add i64 %RBP_val.71, -8, !mcsema_real_eip !45
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !45
  %93 = load i64, i64* %92, align 8, !mcsema_real_eip !45
  store i64 %93, i64* %XAX, align 8, !mcsema_real_eip !45
  %RSP_val.72 = load i64, i64* %XSP, align 8, !mcsema_real_eip !46
  %94 = add i64 %RSP_val.72, 32, !mcsema_real_eip !46
  %95 = xor i64 %94, %RSP_val.72, !mcsema_real_eip !46
  %96 = and i64 %95, 16, !mcsema_real_eip !46
  %97 = icmp ne i64 %96, 0, !mcsema_real_eip !46
  store i1 %97, i1* %AF, align 1, !mcsema_real_eip !46
  %98 = icmp slt i64 %94, 0
  store i1 %98, i1* %SF, align 1, !mcsema_real_eip !46
  %99 = icmp eq i64 %94, 0, !mcsema_real_eip !46
  store i1 %99, i1* %ZF, align 1, !mcsema_real_eip !46
  %100 = xor i64 %RSP_val.72, -9223372036854775808, !mcsema_real_eip !46
  %101 = and i64 %95, %100, !mcsema_real_eip !46
  %102 = icmp slt i64 %101, 0
  store i1 %102, i1* %OF, align 1, !mcsema_real_eip !46
  %103 = trunc i64 %94 to i8, !mcsema_real_eip !46
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !46
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !46
  %107 = icmp ugt i64 %RSP_val.72, -33
  store i1 %107, i1* %CF, align 1, !mcsema_real_eip !46
  store i64 %94, i64* %XSP, align 8, !mcsema_real_eip !46
  %108 = inttoptr i64 %94 to i64*, !mcsema_real_eip !47
  %109 = load i64, i64* %108, align 8, !mcsema_real_eip !47
  store i64 %109, i64* %XBP, align 8, !mcsema_real_eip !47
  %110 = add i64 %RSP_val.72, 40, !mcsema_real_eip !47
  store i64 %110, i64* %XSP, align 8, !mcsema_real_eip !47
  %111 = add i64 %RSP_val.72, 48, !mcsema_real_eip !48
  %112 = inttoptr i64 %110 to i64*, !mcsema_real_eip !48
  %113 = load i64, i64* %112, align 8, !mcsema_real_eip !48
  store i64 %113, i64* %XIP, align 8, !mcsema_real_eip !48
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !48
  ret void, !mcsema_real_eip !48
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
!2 = !{i64 96}
!3 = !{i64 97}
!4 = !{i64 100}
!5 = !{i64 104}
!6 = !{i64 111}
!7 = !{i64 114}
!8 = !{i64 118}
!9 = !{i64 122}
!10 = !{i64 128}
!11 = !{i64 132}
!12 = !{i64 136}
!13 = !{i64 144}
!14 = !{i64 162}
!15 = !{i64 165}
!16 = !{i64 168}
!17 = !{i64 172}
!18 = !{i64 177}
!19 = !{i64 187}
!20 = !{i64 190}
!21 = !{i64 192}
!22 = !{i64 197}
!23 = !{i64 199}
!24 = !{i64 202}
!25 = !{i64 204}
!26 = !{i64 208}
!27 = !{i64 209}
!28 = !{i64 0}
!29 = !{i64 1}
!30 = !{i64 4}
!31 = !{i64 8}
!32 = !{i64 12}
!33 = !{i64 17}
!34 = !{i64 36}
!35 = !{i64 40}
!36 = !{i64 44}
!37 = !{i64 47}
!38 = !{i64 52}
!39 = !{i64 56}
!40 = !{i64 60}
!41 = !{i64 64}
!42 = !{i64 69}
!43 = !{i64 73}
!44 = !{i64 23}
!45 = !{i64 80}
!46 = !{i64 84}
!47 = !{i64 88}
!48 = !{i64 89}
