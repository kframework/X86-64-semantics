; ModuleID = 'Output/test_32.clang.trans.opt.bc'
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
  %33 = icmp eq i32 %25, 0, !mcsema_real_eip !8
  store i1 %33, i1* %ZF, align 1, !mcsema_real_eip !8
  %34 = icmp slt i32 %25, 0
  store i1 %34, i1* %SF, align 1, !mcsema_real_eip !8
  %35 = icmp ult i32 %24, 2, !mcsema_real_eip !8
  store i1 %35, i1* %CF, align 1, !mcsema_real_eip !8
  %36 = and i32 %26, %24, !mcsema_real_eip !8
  %37 = icmp slt i32 %36, 0
  store i1 %37, i1* %OF, align 1, !mcsema_real_eip !8
  br i1 %33, label %block_0x80, label %block_0x95, !mcsema_real_eip !9

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
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %47 = trunc i64 %46 to i32
  br label %block_0xa2, !mcsema_real_eip !14

block_0x95:                                       ; preds = %entry
  store i64 20, i64* %XAX, align 8, !mcsema_real_eip !15
  br label %block_0xa2, !mcsema_real_eip !16

block_0xa2:                                       ; preds = %block_0x95, %block_0x80
  %EAX_val.13 = phi i32 [ 20, %block_0x95 ], [ %47, %block_0x80 ]
  %.sink1.in = phi i64 [ %RBP_val.10, %block_0x95 ], [ %RBP_val.18, %block_0x80 ]
  %.sink1 = add i64 %.sink1.in, -24
  %48 = inttoptr i64 %.sink1 to i32*
  store i32 %EAX_val.13, i32* %48, align 4
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !17
  %49 = add i64 %RBP_val.21, -24, !mcsema_real_eip !17
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !17
  %51 = load i32, i32* %50, align 4, !mcsema_real_eip !17
  %52 = zext i32 %51 to i64, !mcsema_real_eip !17
  store i64 %52, i64* %XAX, align 8, !mcsema_real_eip !17
  %53 = add i64 %RBP_val.21, -20, !mcsema_real_eip !18
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !18
  store i32 %51, i32* %54, align 4, !mcsema_real_eip !18
  %RBP_val.25 = load i64, i64* %XBP, align 8, !mcsema_real_eip !19
  %55 = add i64 %RBP_val.25, -20, !mcsema_real_eip !19
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !19
  %57 = load i32, i32* %56, align 4, !mcsema_real_eip !19
  %58 = sext i32 %57 to i64, !mcsema_real_eip !19
  store i64 %58, i64* %XDI, align 8, !mcsema_real_eip !19
  %RSP_val.26 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %59 = add i64 %RSP_val.26, -8
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !20
  store i64 -4981261766360305936, i64* %60, align 8, !mcsema_real_eip !20
  store i64 %59, i64* %XSP, align 8, !mcsema_real_eip !20
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !20
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %XDI, align 8, !mcsema_real_eip !21
  %RAX_val.27 = load i64, i64* %XAX, align 8, !mcsema_real_eip !22
  store i64 %RAX_val.27, i64* %XSI, align 8, !mcsema_real_eip !22
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !23
  store i8 0, i8* %AL.28, align 1, !mcsema_real_eip !23
  %RDX_val.31 = load i64, i64* %XDX, align 8, !mcsema_real_eip !24
  %RCX_val.32 = load i64, i64* %XCX, align 8, !mcsema_real_eip !24
  %R8_val.33 = load i64, i64* %R8, align 8, !mcsema_real_eip !24
  %R9_val.34 = load i64, i64* %R9, align 8, !mcsema_real_eip !24
  %RSP_val.35 = load i64, i64* %XSP, align 8, !mcsema_real_eip !24
  %61 = inttoptr i64 %RSP_val.35 to i64*, !mcsema_real_eip !24
  %62 = load i64, i64* %61, align 8, !mcsema_real_eip !24
  %63 = add i64 %RSP_val.35, 8, !mcsema_real_eip !24
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !24
  %65 = load i64, i64* %64, align 8, !mcsema_real_eip !24
  %66 = add i64 %RSP_val.35, 16, !mcsema_real_eip !24
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !24
  %68 = load i64, i64* %67, align 8, !mcsema_real_eip !24
  %69 = add i64 %RSP_val.35, 24, !mcsema_real_eip !24
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !24
  %71 = load i64, i64* %70, align 8, !mcsema_real_eip !24
  %72 = add i64 %RSP_val.35, 32, !mcsema_real_eip !24
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !24
  %74 = load i64, i64* %73, align 8, !mcsema_real_eip !24
  %75 = add i64 %RSP_val.35, 40, !mcsema_real_eip !24
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !24
  %77 = load i64, i64* %76, align 8, !mcsema_real_eip !24
  %78 = add i64 %RSP_val.35, -8
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !24
  store i64 -2415393069852865332, i64* %79, align 8, !mcsema_real_eip !24
  store i64 %78, i64* %XSP, align 8, !mcsema_real_eip !24
  %80 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %RAX_val.27, i64 %RDX_val.31, i64 %RCX_val.32, i64 %R8_val.33, i64 %R9_val.34, i64 %62, i64 %65, i64 %68, i64 %71, i64 %74, i64 %77), !mcsema_real_eip !24
  %ECX.37 = bitcast i64* %XCX to i32*, !mcsema_real_eip !25
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !25
  %RBP_val.41 = load i64, i64* %XBP, align 8, !mcsema_real_eip !26
  %81 = add i64 %RBP_val.41, -28, !mcsema_real_eip !26
  %82 = trunc i64 %80 to i32
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !26
  store i32 %82, i32* %83, align 4, !mcsema_real_eip !26
  %ECX_val.45 = load i32, i32* %ECX.37, align 4, !mcsema_real_eip !27
  %84 = zext i32 %ECX_val.45 to i64, !mcsema_real_eip !27
  store i64 %84, i64* %XAX, align 8, !mcsema_real_eip !27
  %RSP_val.46 = load i64, i64* %XSP, align 8, !mcsema_real_eip !28
  %85 = add i64 %RSP_val.46, 32, !mcsema_real_eip !28
  %86 = xor i64 %85, %RSP_val.46, !mcsema_real_eip !28
  %87 = and i64 %86, 16, !mcsema_real_eip !28
  %88 = icmp ne i64 %87, 0, !mcsema_real_eip !28
  store i1 %88, i1* %AF, align 1, !mcsema_real_eip !28
  %89 = icmp slt i64 %85, 0
  store i1 %89, i1* %SF, align 1, !mcsema_real_eip !28
  %90 = icmp eq i64 %85, 0, !mcsema_real_eip !28
  store i1 %90, i1* %ZF, align 1, !mcsema_real_eip !28
  %91 = xor i64 %RSP_val.46, -9223372036854775808, !mcsema_real_eip !28
  %92 = and i64 %86, %91, !mcsema_real_eip !28
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF, align 1, !mcsema_real_eip !28
  %94 = trunc i64 %85 to i8, !mcsema_real_eip !28
  %95 = tail call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !28
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  store i1 %97, i1* %PF, align 1, !mcsema_real_eip !28
  %98 = icmp ugt i64 %RSP_val.46, -33
  store i1 %98, i1* %CF, align 1, !mcsema_real_eip !28
  store i64 %85, i64* %XSP, align 8, !mcsema_real_eip !28
  %99 = inttoptr i64 %85 to i64*, !mcsema_real_eip !29
  %100 = load i64, i64* %99, align 8, !mcsema_real_eip !29
  store i64 %100, i64* %XBP, align 8, !mcsema_real_eip !29
  %101 = add i64 %RSP_val.46, 40, !mcsema_real_eip !29
  store i64 %101, i64* %XSP, align 8, !mcsema_real_eip !29
  %102 = add i64 %RSP_val.46, 48, !mcsema_real_eip !30
  %103 = inttoptr i64 %101 to i64*, !mcsema_real_eip !30
  %104 = load i64, i64* %103, align 8, !mcsema_real_eip !30
  store i64 %104, i64* %XIP, align 8, !mcsema_real_eip !30
  store i64 %102, i64* %XSP, align 8, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !31
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !31
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !31
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !31
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !31
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !31
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !31
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !31
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !31
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !31
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !31
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !31
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !31
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !31
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !31
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !31
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !31
  %RBP_val.49 = load i64, i64* %XBP, align 8, !mcsema_real_eip !31
  %RSP_val.50 = load i64, i64* %XSP, align 8, !mcsema_real_eip !31
  %1 = add i64 %RSP_val.50, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !31
  store i64 %RBP_val.49, i64* %2, align 8, !mcsema_real_eip !31
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !32
  %3 = add i64 %RSP_val.50, -40
  %4 = xor i64 %3, %1, !mcsema_real_eip !33
  %5 = and i64 %4, 16, !mcsema_real_eip !33
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !33
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !33
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !33
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !33
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !33
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !33
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !33
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !33
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !33
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !33
  %14 = and i64 %4, %1, !mcsema_real_eip !33
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !33
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !33
  %16 = add i64 %RSP_val.50, -24, !mcsema_real_eip !34
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !34
  %RDI_val.54 = load i64, i64* %XDI, align 8, !mcsema_real_eip !34
  store i64 %RDI_val.54, i64* %17, align 8, !mcsema_real_eip !34
  %RBP_val.55 = load i64, i64* %XBP, align 8, !mcsema_real_eip !35
  %18 = add i64 %RBP_val.55, -16, !mcsema_real_eip !35
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !35
  %20 = load i64, i64* %19, align 8, !mcsema_real_eip !35
  %21 = add i64 %20, -2
  %22 = xor i64 %21, %20, !mcsema_real_eip !35
  %23 = and i64 %22, 16, !mcsema_real_eip !35
  %24 = icmp ne i64 %23, 0, !mcsema_real_eip !35
  store i1 %24, i1* %AF, align 1, !mcsema_real_eip !35
  %25 = trunc i64 %21 to i8, !mcsema_real_eip !35
  %26 = tail call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !35
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !35
  %29 = icmp eq i64 %21, 0, !mcsema_real_eip !35
  store i1 %29, i1* %ZF, align 1, !mcsema_real_eip !35
  %30 = icmp slt i64 %21, 0
  store i1 %30, i1* %SF, align 1, !mcsema_real_eip !35
  %31 = icmp ult i64 %20, 2, !mcsema_real_eip !35
  store i1 %31, i1* %CF, align 1, !mcsema_real_eip !35
  %32 = and i64 %22, %20, !mcsema_real_eip !35
  %33 = icmp slt i64 %32, 0
  store i1 %33, i1* %OF, align 1, !mcsema_real_eip !35
  br i1 %31, label %block_0x50, label %block_0x24, !mcsema_real_eip !36

block_0x24:                                       ; preds = %entry
  %34 = load i64, i64* %19, align 8, !mcsema_real_eip !37
  %35 = add i64 %34, -2
  %36 = xor i64 %35, %34, !mcsema_real_eip !38
  %37 = and i64 %36, 16, !mcsema_real_eip !38
  %38 = icmp ne i64 %37, 0, !mcsema_real_eip !38
  store i1 %38, i1* %AF, align 1, !mcsema_real_eip !38
  %39 = trunc i64 %35 to i8, !mcsema_real_eip !38
  %40 = tail call i8 @llvm.ctpop.i8(i8 %39), !mcsema_real_eip !38
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  store i1 %42, i1* %PF, align 1, !mcsema_real_eip !38
  %43 = icmp eq i64 %35, 0, !mcsema_real_eip !38
  store i1 %43, i1* %ZF, align 1, !mcsema_real_eip !38
  %44 = icmp slt i64 %35, 0
  store i1 %44, i1* %SF, align 1, !mcsema_real_eip !38
  %45 = icmp ult i64 %34, 2, !mcsema_real_eip !38
  store i1 %45, i1* %CF, align 1, !mcsema_real_eip !38
  %46 = and i64 %36, %34, !mcsema_real_eip !38
  %47 = icmp slt i64 %46, 0
  store i1 %47, i1* %OF, align 1, !mcsema_real_eip !38
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !38
  store i64 %35, i64* %XDI, align 8, !mcsema_real_eip !39
  %RSP_val.59 = load i64, i64* %XSP, align 8, !mcsema_real_eip !40
  %48 = add i64 %RSP_val.59, -8
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !40
  store i64 -4981261766360305936, i64* %49, align 8, !mcsema_real_eip !40
  store i64 %48, i64* %XSP, align 8, !mcsema_real_eip !40
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !40
  %RBP_val.60 = load i64, i64* %XBP, align 8, !mcsema_real_eip !41
  %50 = add i64 %RBP_val.60, -16, !mcsema_real_eip !41
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !41
  %52 = load i64, i64* %51, align 8, !mcsema_real_eip !41
  %53 = add i64 %52, -1
  %54 = xor i64 %53, %52, !mcsema_real_eip !42
  %55 = and i64 %54, 16, !mcsema_real_eip !42
  %56 = icmp ne i64 %55, 0, !mcsema_real_eip !42
  store i1 %56, i1* %AF, align 1, !mcsema_real_eip !42
  %57 = trunc i64 %53 to i8, !mcsema_real_eip !42
  %58 = tail call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !42
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  store i1 %60, i1* %PF, align 1, !mcsema_real_eip !42
  %61 = icmp eq i64 %53, 0, !mcsema_real_eip !42
  store i1 %61, i1* %ZF, align 1, !mcsema_real_eip !42
  %62 = icmp slt i64 %53, 0
  store i1 %62, i1* %SF, align 1, !mcsema_real_eip !42
  %63 = icmp eq i64 %52, 0
  store i1 %63, i1* %CF, align 1, !mcsema_real_eip !42
  %64 = and i64 %54, %52, !mcsema_real_eip !42
  %65 = icmp slt i64 %64, 0
  store i1 %65, i1* %OF, align 1, !mcsema_real_eip !42
  store i64 %53, i64* %XDI, align 8, !mcsema_real_eip !42
  %66 = add i64 %RBP_val.60, -24, !mcsema_real_eip !43
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !43
  %RAX_val.63 = load i64, i64* %XAX, align 8, !mcsema_real_eip !43
  store i64 %RAX_val.63, i64* %67, align 8, !mcsema_real_eip !43
  %RSP_val.64 = load i64, i64* %XSP, align 8, !mcsema_real_eip !44
  %68 = add i64 %RSP_val.64, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !44
  store i64 -4981261766360305936, i64* %69, align 8, !mcsema_real_eip !44
  store i64 %68, i64* %XSP, align 8, !mcsema_real_eip !44
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !44
  %RBP_val.65 = load i64, i64* %XBP, align 8, !mcsema_real_eip !45
  %70 = add i64 %RBP_val.65, -24, !mcsema_real_eip !45
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !45
  %72 = load i64, i64* %71, align 8, !mcsema_real_eip !45
  %RAX_val.67 = load i64, i64* %XAX, align 8, !mcsema_real_eip !46
  %73 = add i64 %RAX_val.67, %72, !mcsema_real_eip !46
  %74 = xor i64 %73, %72, !mcsema_real_eip !46
  %75 = xor i64 %74, %RAX_val.67, !mcsema_real_eip !46
  %76 = and i64 %75, 16, !mcsema_real_eip !46
  %77 = icmp ne i64 %76, 0, !mcsema_real_eip !46
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !46
  %78 = icmp slt i64 %73, 0
  store i1 %78, i1* %SF, align 1, !mcsema_real_eip !46
  %79 = icmp eq i64 %73, 0, !mcsema_real_eip !46
  store i1 %79, i1* %ZF, align 1, !mcsema_real_eip !46
  %80 = xor i64 %72, -9223372036854775808, !mcsema_real_eip !46
  %81 = xor i64 %80, %RAX_val.67, !mcsema_real_eip !46
  %82 = and i64 %74, %81, !mcsema_real_eip !46
  %83 = icmp slt i64 %82, 0
  store i1 %83, i1* %OF, align 1, !mcsema_real_eip !46
  %84 = trunc i64 %73 to i8, !mcsema_real_eip !46
  %85 = tail call i8 @llvm.ctpop.i8(i8 %84), !mcsema_real_eip !46
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  store i1 %87, i1* %PF, align 1, !mcsema_real_eip !46
  %88 = icmp ult i64 %73, %72, !mcsema_real_eip !46
  store i1 %88, i1* %CF, align 1, !mcsema_real_eip !46
  store i64 %73, i64* %XDI, align 8, !mcsema_real_eip !46
  br label %block_0x50, !mcsema_real_eip !47

block_0x50:                                       ; preds = %entry, %block_0x24
  %RBP_val.65.sink = phi i64 [ %RBP_val.65, %block_0x24 ], [ %RBP_val.55, %entry ]
  %.sink = phi i64 [ %73, %block_0x24 ], [ 1, %entry ]
  %89 = add i64 %RBP_val.65.sink, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %.sink, i64* %90, align 8
  %RBP_val.71 = load i64, i64* %XBP, align 8, !mcsema_real_eip !48
  %91 = add i64 %RBP_val.71, -8, !mcsema_real_eip !48
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !48
  %93 = load i64, i64* %92, align 8, !mcsema_real_eip !48
  store i64 %93, i64* %XAX, align 8, !mcsema_real_eip !48
  %RSP_val.72 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %94 = add i64 %RSP_val.72, 32, !mcsema_real_eip !49
  %95 = xor i64 %94, %RSP_val.72, !mcsema_real_eip !49
  %96 = and i64 %95, 16, !mcsema_real_eip !49
  %97 = icmp ne i64 %96, 0, !mcsema_real_eip !49
  store i1 %97, i1* %AF, align 1, !mcsema_real_eip !49
  %98 = icmp slt i64 %94, 0
  store i1 %98, i1* %SF, align 1, !mcsema_real_eip !49
  %99 = icmp eq i64 %94, 0, !mcsema_real_eip !49
  store i1 %99, i1* %ZF, align 1, !mcsema_real_eip !49
  %100 = xor i64 %RSP_val.72, -9223372036854775808, !mcsema_real_eip !49
  %101 = and i64 %95, %100, !mcsema_real_eip !49
  %102 = icmp slt i64 %101, 0
  store i1 %102, i1* %OF, align 1, !mcsema_real_eip !49
  %103 = trunc i64 %94 to i8, !mcsema_real_eip !49
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !49
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !49
  %107 = icmp ugt i64 %RSP_val.72, -33
  store i1 %107, i1* %CF, align 1, !mcsema_real_eip !49
  store i64 %94, i64* %XSP, align 8, !mcsema_real_eip !49
  %108 = inttoptr i64 %94 to i64*, !mcsema_real_eip !50
  %109 = load i64, i64* %108, align 8, !mcsema_real_eip !50
  store i64 %109, i64* %XBP, align 8, !mcsema_real_eip !50
  %110 = add i64 %RSP_val.72, 40, !mcsema_real_eip !50
  store i64 %110, i64* %XSP, align 8, !mcsema_real_eip !50
  %111 = add i64 %RSP_val.72, 48, !mcsema_real_eip !51
  %112 = inttoptr i64 %110 to i64*, !mcsema_real_eip !51
  %113 = load i64, i64* %112, align 8, !mcsema_real_eip !51
  store i64 %113, i64* %XIP, align 8, !mcsema_real_eip !51
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
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
!13 = !{i64 141}
!14 = !{i64 144}
!15 = !{i64 149}
!16 = !{i64 157}
!17 = !{i64 162}
!18 = !{i64 165}
!19 = !{i64 168}
!20 = !{i64 172}
!21 = !{i64 177}
!22 = !{i64 187}
!23 = !{i64 190}
!24 = !{i64 192}
!25 = !{i64 197}
!26 = !{i64 199}
!27 = !{i64 202}
!28 = !{i64 204}
!29 = !{i64 208}
!30 = !{i64 209}
!31 = !{i64 0}
!32 = !{i64 1}
!33 = !{i64 4}
!34 = !{i64 8}
!35 = !{i64 12}
!36 = !{i64 17}
!37 = !{i64 36}
!38 = !{i64 40}
!39 = !{i64 44}
!40 = !{i64 47}
!41 = !{i64 52}
!42 = !{i64 56}
!43 = !{i64 60}
!44 = !{i64 64}
!45 = !{i64 69}
!46 = !{i64 73}
!47 = !{i64 23}
!48 = !{i64 80}
!49 = !{i64 84}
!50 = !{i64 88}
!51 = !{i64 89}
