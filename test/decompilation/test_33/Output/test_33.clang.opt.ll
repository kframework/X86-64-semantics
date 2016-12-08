; ModuleID = 'Output/test_33.clang.opt.bc'
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
  %33 = icmp eq i32 %25, 0
  store i1 %33, i1* %ZF, align 1, !mcsema_real_eip !8
  %34 = icmp slt i32 %25, 0
  store i1 %34, i1* %SF, align 1, !mcsema_real_eip !8
  %35 = icmp ult i32 %24, 2, !mcsema_real_eip !8
  store i1 %35, i1* %CF, align 1, !mcsema_real_eip !8
  %36 = and i32 %26, %24, !mcsema_real_eip !8
  %37 = icmp slt i32 %36, 0
  store i1 %37, i1* %OF, align 1, !mcsema_real_eip !8
  br i1 %33, label %block_0xa0, label %block_0xc2, !mcsema_real_eip !9

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
  %RBP_val.11.pre = load i64, i64* %XBP, align 8
  br label %block_0xc2, !mcsema_real_eip !13

block_0xc2:                                       ; preds = %entry, %block_0xa0
  %RBP_val.11 = phi i64 [ %RBP_val.11.pre, %block_0xa0 ], [ %RBP_val.10, %entry ]
  %.sink = phi i64 [ %46, %block_0xa0 ], [ 8, %entry ]
  store i64 %.sink, i64* %XAX, align 8
  %47 = add i64 %RBP_val.11, -24
  %EAX.12 = bitcast i64* %XAX to i32*
  %48 = trunc i64 %.sink to i32
  %49 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %49, align 4
  %RBP_val.21 = load i64, i64* %XBP, align 8
  %50 = add i64 %RBP_val.21, -24, !mcsema_real_eip !14
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !14
  %52 = load i32, i32* %51, align 4, !mcsema_real_eip !14
  %53 = zext i32 %52 to i64, !mcsema_real_eip !14
  store i64 %53, i64* %XAX, align 8, !mcsema_real_eip !14
  store i64 3, i64* %XDI, align 8, !mcsema_real_eip !15
  %54 = add i64 %RBP_val.21, -20, !mcsema_real_eip !16
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !16
  store i32 %52, i32* %55, align 4, !mcsema_real_eip !16
  %RBP_val.25 = load i64, i64* %XBP, align 8
  %56 = add i64 %RBP_val.25, -20
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* %57, align 4, !mcsema_real_eip !17
  %59 = zext i32 %58 to i64, !mcsema_real_eip !17
  store i64 %59, i64* %XSI, align 8, !mcsema_real_eip !17
  %60 = load i32, i32* %57, align 4, !mcsema_real_eip !18
  %61 = zext i32 %60 to i64, !mcsema_real_eip !18
  store i64 %61, i64* %XAX, align 8, !mcsema_real_eip !18
  %62 = add i64 %RBP_val.25, -28, !mcsema_real_eip !19
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !19
  store i32 %58, i32* %63, align 4, !mcsema_real_eip !19
  %EAX_val.31 = load i32, i32* %EAX.12, align 4, !mcsema_real_eip !20
  %64 = zext i32 %EAX_val.31 to i64, !mcsema_real_eip !20
  store i64 %64, i64* %XSI, align 8, !mcsema_real_eip !20
  %RSP_val.32 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %65 = add i64 %RSP_val.32, -8
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !21
  store i64 -4981261766360305936, i64* %66, align 8, !mcsema_real_eip !21
  store i64 %65, i64* %XSP, align 8, !mcsema_real_eip !21
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !21
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %XDI, align 8, !mcsema_real_eip !22
  %RBP_val.33 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %67 = add i64 %RBP_val.33, -28, !mcsema_real_eip !23
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !23
  %69 = load i32, i32* %68, align 4, !mcsema_real_eip !23
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %XSI, align 8, !mcsema_real_eip !23
  %EAX_val.35 = load i32, i32* %EAX.12, align 4, !mcsema_real_eip !24
  %71 = zext i32 %EAX_val.35 to i64, !mcsema_real_eip !24
  store i64 %71, i64* %XDX, align 8, !mcsema_real_eip !24
  %AL.36 = bitcast i64* %XAX to i8*, !mcsema_real_eip !25
  store i8 0, i8* %AL.36, align 1, !mcsema_real_eip !25
  %RCX_val.40 = load i64, i64* %XCX, align 8, !mcsema_real_eip !26
  %R8_val.41 = load i64, i64* %R8, align 8, !mcsema_real_eip !26
  %R9_val.42 = load i64, i64* %R9, align 8, !mcsema_real_eip !26
  %RSP_val.43 = load i64, i64* %XSP, align 8, !mcsema_real_eip !26
  %72 = inttoptr i64 %RSP_val.43 to i64*, !mcsema_real_eip !26
  %73 = load i64, i64* %72, align 8, !mcsema_real_eip !26
  %74 = add i64 %RSP_val.43, 8, !mcsema_real_eip !26
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !26
  %76 = load i64, i64* %75, align 8, !mcsema_real_eip !26
  %77 = add i64 %RSP_val.43, 16, !mcsema_real_eip !26
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !26
  %79 = load i64, i64* %78, align 8, !mcsema_real_eip !26
  %80 = add i64 %RSP_val.43, 24, !mcsema_real_eip !26
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !26
  %82 = load i64, i64* %81, align 8, !mcsema_real_eip !26
  %83 = add i64 %RSP_val.43, 32, !mcsema_real_eip !26
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !26
  %85 = load i64, i64* %84, align 8, !mcsema_real_eip !26
  %86 = add i64 %RSP_val.43, 40, !mcsema_real_eip !26
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !26
  %88 = load i64, i64* %87, align 8, !mcsema_real_eip !26
  %89 = add i64 %RSP_val.43, -8
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !26
  store i64 -2415393069852865332, i64* %90, align 8, !mcsema_real_eip !26
  store i64 %89, i64* %XSP, align 8, !mcsema_real_eip !26
  %91 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %70, i64 %71, i64 %RCX_val.40, i64 %R8_val.41, i64 %R9_val.42, i64 %73, i64 %76, i64 %79, i64 %82, i64 %85, i64 %88), !mcsema_real_eip !26
  %EDX.45 = bitcast i64* %XDX to i32*, !mcsema_real_eip !27
  store i64 0, i64* %XDX, align 8, !mcsema_real_eip !27
  %RBP_val.49 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %92 = add i64 %RBP_val.49, -32, !mcsema_real_eip !28
  %93 = trunc i64 %91 to i32
  %94 = inttoptr i64 %92 to i32*, !mcsema_real_eip !28
  store i32 %93, i32* %94, align 4, !mcsema_real_eip !28
  %EDX_val.53 = load i32, i32* %EDX.45, align 4, !mcsema_real_eip !29
  %95 = zext i32 %EDX_val.53 to i64, !mcsema_real_eip !29
  store i64 %95, i64* %XAX, align 8, !mcsema_real_eip !29
  %RSP_val.54 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  %96 = add i64 %RSP_val.54, 32, !mcsema_real_eip !30
  %97 = xor i64 %96, %RSP_val.54, !mcsema_real_eip !30
  %98 = and i64 %97, 16, !mcsema_real_eip !30
  %99 = icmp ne i64 %98, 0, !mcsema_real_eip !30
  store i1 %99, i1* %AF, align 1, !mcsema_real_eip !30
  %100 = icmp slt i64 %96, 0
  store i1 %100, i1* %SF, align 1, !mcsema_real_eip !30
  %101 = icmp eq i64 %96, 0, !mcsema_real_eip !30
  store i1 %101, i1* %ZF, align 1, !mcsema_real_eip !30
  %102 = xor i64 %RSP_val.54, -9223372036854775808, !mcsema_real_eip !30
  %103 = and i64 %97, %102, !mcsema_real_eip !30
  %104 = icmp slt i64 %103, 0
  store i1 %104, i1* %OF, align 1, !mcsema_real_eip !30
  %105 = trunc i64 %96 to i8, !mcsema_real_eip !30
  %106 = tail call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !30
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  store i1 %108, i1* %PF, align 1, !mcsema_real_eip !30
  %109 = icmp ugt i64 %RSP_val.54, -33
  store i1 %109, i1* %CF, align 1, !mcsema_real_eip !30
  store i64 %96, i64* %XSP, align 8, !mcsema_real_eip !30
  %110 = inttoptr i64 %96 to i64*, !mcsema_real_eip !31
  %111 = load i64, i64* %110, align 8, !mcsema_real_eip !31
  store i64 %111, i64* %XBP, align 8, !mcsema_real_eip !31
  %112 = add i64 %RSP_val.54, 40, !mcsema_real_eip !31
  store i64 %112, i64* %XSP, align 8, !mcsema_real_eip !31
  %113 = add i64 %RSP_val.54, 48, !mcsema_real_eip !32
  %114 = inttoptr i64 %112 to i64*, !mcsema_real_eip !32
  %115 = load i64, i64* %114, align 8, !mcsema_real_eip !32
  store i64 %115, i64* %XIP, align 8, !mcsema_real_eip !32
  store i64 %113, i64* %XSP, align 8, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !33
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !33
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !33
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !33
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !33
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !33
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !33
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !33
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !33
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !33
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !33
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !33
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !33
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !33
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !33
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !33
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !33
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !33
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !33
  %RBP_val.57 = load i64, i64* %XBP, align 8, !mcsema_real_eip !33
  %RSP_val.58 = load i64, i64* %XSP, align 8, !mcsema_real_eip !33
  %1 = add i64 %RSP_val.58, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !33
  store i64 %RBP_val.57, i64* %2, align 8, !mcsema_real_eip !33
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !34
  %3 = add i64 %RSP_val.58, -24
  %4 = xor i64 %3, %1, !mcsema_real_eip !35
  %5 = and i64 %4, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !35
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !35
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !35
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !35
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !35
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !35
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !35
  %13 = icmp ult i64 %1, 16, !mcsema_real_eip !35
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !35
  %14 = and i64 %4, %1, !mcsema_real_eip !35
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !35
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !35
  %16 = add i64 %RSP_val.58, -16, !mcsema_real_eip !36
  %EDI.62 = bitcast i64* %XDI to i32*, !mcsema_real_eip !36
  %EDI_val.63 = load i32, i32* %EDI.62, align 4, !mcsema_real_eip !36
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !36
  store i32 %EDI_val.63, i32* %17, align 4, !mcsema_real_eip !36
  %RBP_val.64 = load i64, i64* %XBP, align 8, !mcsema_real_eip !37
  %18 = add i64 %RBP_val.64, -12, !mcsema_real_eip !37
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !37
  %ESI_val.66 = load i32, i32* %ESI.65, align 4, !mcsema_real_eip !37
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !37
  store i32 %ESI_val.66, i32* %19, align 4, !mcsema_real_eip !37
  %RBP_val.67 = load i64, i64* %XBP, align 8
  %20 = add i64 %RBP_val.67, -8
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !38
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !38
  %23 = trunc i32 %22 to i8, !mcsema_real_eip !38
  %24 = tail call i8 @llvm.ctpop.i8(i8 %23), !mcsema_real_eip !38
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  store i1 %26, i1* %PF, align 1, !mcsema_real_eip !38
  %27 = icmp eq i32 %22, 0, !mcsema_real_eip !38
  store i1 %27, i1* %ZF, align 1, !mcsema_real_eip !38
  %28 = icmp slt i32 %22, 0
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !38
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !38
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !38
  %29 = add i64 %RBP_val.67, -12
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30, align 4
  br i1 %27, label %block_0x18, label %block_0x26, !mcsema_real_eip !39

block_0x18:                                       ; preds = %entry
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !40
  %32 = add i32 %31, 1, !mcsema_real_eip !40
  %33 = xor i32 %32, %31, !mcsema_real_eip !40
  %34 = and i32 %33, 16, !mcsema_real_eip !40
  %35 = icmp ne i32 %34, 0, !mcsema_real_eip !40
  store i1 %35, i1* %AF, align 1, !mcsema_real_eip !40
  %36 = icmp slt i32 %32, 0
  store i1 %36, i1* %SF, align 1, !mcsema_real_eip !40
  %37 = icmp eq i32 %32, 0, !mcsema_real_eip !40
  store i1 %37, i1* %ZF, align 1, !mcsema_real_eip !40
  %38 = xor i32 %31, -2147483648, !mcsema_real_eip !40
  %39 = and i32 %33, %38, !mcsema_real_eip !40
  %40 = icmp slt i32 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !40
  %41 = trunc i32 %32 to i8, !mcsema_real_eip !40
  %42 = tail call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !40
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !40
  %45 = icmp eq i32 %31, -1
  store i1 %45, i1* %CF, align 1, !mcsema_real_eip !40
  %46 = zext i32 %32 to i64, !mcsema_real_eip !40
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !40
  br label %block_0x70, !mcsema_real_eip !41

block_0x26:                                       ; preds = %entry
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !42
  %47 = trunc i32 %31 to i8, !mcsema_real_eip !42
  %48 = tail call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !42
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  store i1 %50, i1* %PF, align 1, !mcsema_real_eip !42
  %51 = icmp eq i32 %31, 0, !mcsema_real_eip !42
  store i1 %51, i1* %ZF, align 1, !mcsema_real_eip !42
  %52 = icmp slt i32 %31, 0
  store i1 %52, i1* %SF, align 1, !mcsema_real_eip !42
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !42
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !42
  br i1 %51, label %block_0x30, label %block_0x4a, !mcsema_real_eip !43

block_0x30:                                       ; preds = %block_0x26
  store i64 1, i64* %XSI, align 8, !mcsema_real_eip !44
  %53 = load i32, i32* %21, align 4, !mcsema_real_eip !45
  %EAX.96 = bitcast i64* %XAX to i32*, !mcsema_real_eip !46
  %54 = add i32 %53, -1
  %55 = xor i32 %54, %53, !mcsema_real_eip !46
  %56 = and i32 %55, 16, !mcsema_real_eip !46
  %57 = icmp ne i32 %56, 0, !mcsema_real_eip !46
  store i1 %57, i1* %AF, align 1, !mcsema_real_eip !46
  %58 = trunc i32 %54 to i8, !mcsema_real_eip !46
  %59 = tail call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !46
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !46
  %62 = icmp eq i32 %54, 0, !mcsema_real_eip !46
  store i1 %62, i1* %ZF, align 1, !mcsema_real_eip !46
  %63 = icmp slt i32 %54, 0
  store i1 %63, i1* %SF, align 1, !mcsema_real_eip !46
  %64 = icmp eq i32 %53, 0
  store i1 %64, i1* %CF, align 1, !mcsema_real_eip !46
  %65 = and i32 %55, %53, !mcsema_real_eip !46
  %66 = icmp slt i32 %65, 0
  store i1 %66, i1* %OF, align 1, !mcsema_real_eip !46
  %67 = zext i32 %54 to i64
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !46
  store i64 %67, i64* %XDI, align 8, !mcsema_real_eip !47
  %RSP_val.100 = load i64, i64* %XSP, align 8, !mcsema_real_eip !48
  %68 = add i64 %RSP_val.100, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !48
  store i64 -4981261766360305936, i64* %69, align 8, !mcsema_real_eip !48
  store i64 %68, i64* %XSP, align 8, !mcsema_real_eip !48
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !48
  br label %block_0x70, !mcsema_real_eip !49

block_0x4a:                                       ; preds = %block_0x26
  %70 = load i32, i32* %21, align 4, !mcsema_real_eip !50
  %EAX.76 = bitcast i64* %XAX to i32*, !mcsema_real_eip !51
  %71 = add i32 %70, -1
  %72 = xor i32 %71, %70, !mcsema_real_eip !51
  %73 = and i32 %72, 16, !mcsema_real_eip !51
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !51
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !51
  %75 = trunc i32 %71 to i8, !mcsema_real_eip !51
  %76 = tail call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !51
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !51
  %79 = icmp eq i32 %71, 0, !mcsema_real_eip !51
  store i1 %79, i1* %ZF, align 1, !mcsema_real_eip !51
  %80 = icmp slt i32 %71, 0
  store i1 %80, i1* %SF, align 1, !mcsema_real_eip !51
  %81 = icmp eq i32 %70, 0
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !51
  %82 = and i32 %72, %70, !mcsema_real_eip !51
  %83 = icmp slt i32 %82, 0
  store i1 %83, i1* %OF, align 1, !mcsema_real_eip !51
  %84 = zext i32 %71 to i64, !mcsema_real_eip !51
  store i64 %84, i64* %XAX, align 8, !mcsema_real_eip !51
  %85 = load i32, i32* %21, align 4, !mcsema_real_eip !52
  %86 = zext i32 %85 to i64, !mcsema_real_eip !52
  store i64 %86, i64* %XDI, align 8, !mcsema_real_eip !52
  %87 = load i32, i32* %30, align 4, !mcsema_real_eip !53
  %88 = add i32 %87, -1
  %89 = xor i32 %88, %87, !mcsema_real_eip !54
  %90 = and i32 %89, 16, !mcsema_real_eip !54
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !54
  store i1 %91, i1* %AF, align 1, !mcsema_real_eip !54
  %92 = trunc i32 %88 to i8, !mcsema_real_eip !54
  %93 = tail call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !54
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !54
  %96 = icmp eq i32 %88, 0, !mcsema_real_eip !54
  store i1 %96, i1* %ZF, align 1, !mcsema_real_eip !54
  %97 = icmp slt i32 %88, 0
  store i1 %97, i1* %SF, align 1, !mcsema_real_eip !54
  %98 = icmp eq i32 %87, 0
  store i1 %98, i1* %CF, align 1, !mcsema_real_eip !54
  %99 = and i32 %89, %87, !mcsema_real_eip !54
  %100 = icmp slt i32 %99, 0
  store i1 %100, i1* %OF, align 1, !mcsema_real_eip !54
  %101 = zext i32 %88 to i64
  store i64 %101, i64* %XCX, align 8, !mcsema_real_eip !54
  store i64 %101, i64* %XSI, align 8, !mcsema_real_eip !55
  %102 = add i64 %RBP_val.67, -16, !mcsema_real_eip !56
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !56
  store i32 %71, i32* %103, align 4, !mcsema_real_eip !56
  %RSP_val.87 = load i64, i64* %XSP, align 8, !mcsema_real_eip !57
  %104 = add i64 %RSP_val.87, -8
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !57
  store i64 -4981261766360305936, i64* %105, align 8, !mcsema_real_eip !57
  store i64 %104, i64* %XSP, align 8, !mcsema_real_eip !57
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !57
  %RBP_val.88 = load i64, i64* %XBP, align 8, !mcsema_real_eip !58
  %106 = add i64 %RBP_val.88, -16, !mcsema_real_eip !58
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !58
  %108 = load i32, i32* %107, align 4, !mcsema_real_eip !58
  %109 = zext i32 %108 to i64, !mcsema_real_eip !58
  store i64 %109, i64* %XDI, align 8, !mcsema_real_eip !58
  %EAX_val.90 = load i32, i32* %EAX.76, align 4, !mcsema_real_eip !59
  %110 = zext i32 %EAX_val.90 to i64, !mcsema_real_eip !59
  store i64 %110, i64* %XSI, align 8, !mcsema_real_eip !59
  %RSP_val.91 = load i64, i64* %XSP, align 8, !mcsema_real_eip !60
  %111 = add i64 %RSP_val.91, -8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !60
  store i64 -4981261766360305936, i64* %112, align 8, !mcsema_real_eip !60
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !60
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !60
  br label %block_0x70, !mcsema_real_eip !44

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %EAX.93.pre-phi = phi i32* [ %EAX.76, %block_0x4a ], [ %EAX.96, %block_0x30 ], [ %EAX.70, %block_0x18 ]
  %RBP_val.92 = load i64, i64* %XBP, align 8
  %113 = add i64 %RBP_val.92, -4
  %EAX_val.94 = load i32, i32* %EAX.93.pre-phi, align 4
  %114 = inttoptr i64 %113 to i32*
  store i32 %EAX_val.94, i32* %114, align 4
  %RBP_val.104 = load i64, i64* %XBP, align 8, !mcsema_real_eip !61
  %115 = add i64 %RBP_val.104, -4, !mcsema_real_eip !61
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !61
  %117 = load i32, i32* %116, align 4, !mcsema_real_eip !61
  %118 = zext i32 %117 to i64, !mcsema_real_eip !61
  store i64 %118, i64* %XAX, align 8, !mcsema_real_eip !61
  %RSP_val.105 = load i64, i64* %XSP, align 8, !mcsema_real_eip !62
  %119 = add i64 %RSP_val.105, 16, !mcsema_real_eip !62
  %120 = xor i64 %119, %RSP_val.105, !mcsema_real_eip !62
  %121 = and i64 %120, 16
  %122 = icmp eq i64 %121, 0
  store i1 %122, i1* %AF, align 1, !mcsema_real_eip !62
  %123 = icmp slt i64 %119, 0
  store i1 %123, i1* %SF, align 1, !mcsema_real_eip !62
  %124 = icmp eq i64 %119, 0, !mcsema_real_eip !62
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !62
  %125 = xor i64 %RSP_val.105, -9223372036854775808, !mcsema_real_eip !62
  %126 = and i64 %120, %125, !mcsema_real_eip !62
  %127 = icmp slt i64 %126, 0
  store i1 %127, i1* %OF, align 1, !mcsema_real_eip !62
  %128 = trunc i64 %119 to i8, !mcsema_real_eip !62
  %129 = tail call i8 @llvm.ctpop.i8(i8 %128), !mcsema_real_eip !62
  %130 = and i8 %129, 1
  %131 = icmp eq i8 %130, 0
  store i1 %131, i1* %PF, align 1, !mcsema_real_eip !62
  %132 = icmp ugt i64 %RSP_val.105, -17
  store i1 %132, i1* %CF, align 1, !mcsema_real_eip !62
  store i64 %119, i64* %XSP, align 8, !mcsema_real_eip !62
  %133 = inttoptr i64 %119 to i64*, !mcsema_real_eip !63
  %134 = load i64, i64* %133, align 8, !mcsema_real_eip !63
  store i64 %134, i64* %XBP, align 8, !mcsema_real_eip !63
  %135 = add i64 %RSP_val.105, 24, !mcsema_real_eip !63
  store i64 %135, i64* %XSP, align 8, !mcsema_real_eip !63
  %136 = add i64 %RSP_val.105, 32, !mcsema_real_eip !64
  %137 = inttoptr i64 %135 to i64*, !mcsema_real_eip !64
  %138 = load i64, i64* %137, align 8, !mcsema_real_eip !64
  store i64 %138, i64* %XIP, align 8, !mcsema_real_eip !64
  store i64 %136, i64* %XSP, align 8, !mcsema_real_eip !64
  ret void, !mcsema_real_eip !64
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
!13 = !{i64 176}
!14 = !{i64 194}
!15 = !{i64 197}
!16 = !{i64 202}
!17 = !{i64 205}
!18 = !{i64 208}
!19 = !{i64 211}
!20 = !{i64 214}
!21 = !{i64 216}
!22 = !{i64 221}
!23 = !{i64 231}
!24 = !{i64 234}
!25 = !{i64 236}
!26 = !{i64 238}
!27 = !{i64 243}
!28 = !{i64 245}
!29 = !{i64 248}
!30 = !{i64 250}
!31 = !{i64 254}
!32 = !{i64 255}
!33 = !{i64 0}
!34 = !{i64 1}
!35 = !{i64 4}
!36 = !{i64 8}
!37 = !{i64 11}
!38 = !{i64 14}
!39 = !{i64 18}
!40 = !{i64 27}
!41 = !{i64 33}
!42 = !{i64 38}
!43 = !{i64 42}
!44 = !{i64 48}
!45 = !{i64 53}
!46 = !{i64 56}
!47 = !{i64 59}
!48 = !{i64 61}
!49 = !{i64 69}
!50 = !{i64 74}
!51 = !{i64 77}
!52 = !{i64 80}
!53 = !{i64 83}
!54 = !{i64 86}
!55 = !{i64 89}
!56 = !{i64 91}
!57 = !{i64 94}
!58 = !{i64 99}
!59 = !{i64 102}
!60 = !{i64 104}
!61 = !{i64 112}
!62 = !{i64 115}
!63 = !{i64 119}
!64 = !{i64 120}
