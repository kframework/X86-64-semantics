; ModuleID = 'Output/test_7.clang.trans.opt.bc'
source_filename = "Output/test_7.clang.bc"
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
module asm "  .globl sub_140;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_140(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x261 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
entry:
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
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, align 8, !mcsema_real_eip !4
  %3 = add i64 %RSP_val.1, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %RBX_val.3, i64* %4, align 8, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, 40, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %7 = load i64, i64* %6, align 8, !mcsema_real_eip !5
  store i64 %7, i64* %XAX, align 8, !mcsema_real_eip !5
  %8 = add i64 %RBP_val.5, 32, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %10 = load i64, i64* %9, align 8, !mcsema_real_eip !6
  store i64 %10, i64* %R10, align 8, !mcsema_real_eip !6
  %11 = add i64 %RBP_val.5, 24, !mcsema_real_eip !7
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !7
  %13 = load i64, i64* %12, align 8, !mcsema_real_eip !7
  store i64 %13, i64* %R11, align 8, !mcsema_real_eip !7
  %14 = add i64 %RBP_val.5, 16, !mcsema_real_eip !8
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !8
  %16 = load i32, i32* %15, align 4, !mcsema_real_eip !8
  %17 = zext i32 %16 to i64, !mcsema_real_eip !8
  store i64 %17, i64* %XBX, align 8, !mcsema_real_eip !8
  %18 = add i64 %RBP_val.5, -12, !mcsema_real_eip !9
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, align 4, !mcsema_real_eip !9
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.11, i32* %19, align 4, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %20 = add i64 %RBP_val.12, -24, !mcsema_real_eip !10
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !10
  %RSI_val.13 = load i64, i64* %XSI, align 8, !mcsema_real_eip !10
  store i64 %RSI_val.13, i64* %21, align 8, !mcsema_real_eip !10
  %RBP_val.14 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %22 = add i64 %RBP_val.14, -32, !mcsema_real_eip !11
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !11
  %RDX_val.15 = load i64, i64* %XDX, align 8, !mcsema_real_eip !11
  store i64 %RDX_val.15, i64* %23, align 8, !mcsema_real_eip !11
  %RBP_val.16 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %24 = add i64 %RBP_val.16, -40, !mcsema_real_eip !12
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !12
  %RCX_val.17 = load i64, i64* %XCX, align 8, !mcsema_real_eip !12
  store i64 %RCX_val.17, i64* %25, align 8, !mcsema_real_eip !12
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %26 = add i64 %RBP_val.18, -44, !mcsema_real_eip !13
  %R8D.19 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.20 = load i32, i32* %R8D.19, align 4, !mcsema_real_eip !13
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !13
  store i32 %R8D_val.20, i32* %27, align 4, !mcsema_real_eip !13
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %28 = add i64 %RBP_val.21, -48, !mcsema_real_eip !14
  %R9D.22 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.23 = load i32, i32* %R9D.22, align 4, !mcsema_real_eip !14
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !14
  store i32 %R9D_val.23, i32* %29, align 4, !mcsema_real_eip !14
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !15
  %30 = add i64 %RBP_val.24, -52, !mcsema_real_eip !15
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !15
  %EBX_val.26 = load i32, i32* %EBX.25, align 4, !mcsema_real_eip !15
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !15
  store i32 %EBX_val.26, i32* %31, align 4, !mcsema_real_eip !15
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %32 = add i64 %RBP_val.27, -64, !mcsema_real_eip !16
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !16
  %R11_val.28 = load i64, i64* %R11, align 8, !mcsema_real_eip !16
  store i64 %R11_val.28, i64* %33, align 8, !mcsema_real_eip !16
  %RBP_val.29 = load i64, i64* %XBP, align 8, !mcsema_real_eip !17
  %34 = add i64 %RBP_val.29, -72, !mcsema_real_eip !17
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !17
  %R10_val.30 = load i64, i64* %R10, align 8, !mcsema_real_eip !17
  store i64 %R10_val.30, i64* %35, align 8, !mcsema_real_eip !17
  %RBP_val.31 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  %36 = add i64 %RBP_val.31, -80, !mcsema_real_eip !18
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !18
  %RAX_val.32 = load i64, i64* %XAX, align 8, !mcsema_real_eip !18
  store i64 %RAX_val.32, i64* %37, align 8, !mcsema_real_eip !18
  %RBP_val.33 = load i64, i64* %XBP, align 8, !mcsema_real_eip !19
  %38 = add i64 %RBP_val.33, -84, !mcsema_real_eip !19
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %39, align 4, !mcsema_real_eip !19
  %RBP_val.34 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %40 = add i64 %RBP_val.34, -12, !mcsema_real_eip !20
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !20
  %42 = load i32, i32* %41, align 4, !mcsema_real_eip !20
  %43 = zext i32 %42 to i64, !mcsema_real_eip !20
  store i64 %43, i64* %XDI, align 8, !mcsema_real_eip !20
  %44 = add i64 %RBP_val.34, -84, !mcsema_real_eip !21
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !21
  %46 = load i32, i32* %45, align 4, !mcsema_real_eip !21
  %47 = add i32 %42, %46, !mcsema_real_eip !21
  %48 = xor i32 %47, %46, !mcsema_real_eip !21
  %49 = xor i32 %48, %42, !mcsema_real_eip !21
  %50 = and i32 %49, 16, !mcsema_real_eip !21
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !21
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !21
  %52 = icmp slt i32 %47, 0
  store i1 %52, i1* %SF, align 1, !mcsema_real_eip !21
  %53 = icmp eq i32 %47, 0, !mcsema_real_eip !21
  store i1 %53, i1* %ZF, align 1, !mcsema_real_eip !21
  %54 = xor i32 %46, -2147483648, !mcsema_real_eip !21
  %55 = xor i32 %54, %42, !mcsema_real_eip !21
  %56 = and i32 %48, %55, !mcsema_real_eip !21
  %57 = icmp slt i32 %56, 0
  store i1 %57, i1* %OF, align 1, !mcsema_real_eip !21
  %58 = trunc i32 %47 to i8, !mcsema_real_eip !21
  %59 = tail call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !21
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !21
  %62 = icmp ult i32 %47, %46, !mcsema_real_eip !21
  store i1 %62, i1* %CF, align 1, !mcsema_real_eip !21
  %63 = zext i32 %47 to i64, !mcsema_real_eip !21
  store i64 %63, i64* %XDI, align 8, !mcsema_real_eip !21
  store i32 %47, i32* %45, align 4, !mcsema_real_eip !22
  %RBP_val.41 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %64 = add i64 %RBP_val.41, -88, !mcsema_real_eip !23
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !23
  store i32 0, i32* %65, align 4, !mcsema_real_eip !23
  br label %block_0x51, !mcsema_real_eip !24

block_0x51:                                       ; preds = %block_0x5d, %entry
  %RBP_val.42 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %66 = add i64 %RBP_val.42, -88, !mcsema_real_eip !24
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !24
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !24
  %69 = zext i32 %68 to i64, !mcsema_real_eip !24
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !24
  %70 = add i64 %RBP_val.42, -44, !mcsema_real_eip !25
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !25
  %72 = load i32, i32* %71, align 4, !mcsema_real_eip !25
  %73 = sub i32 %68, %72, !mcsema_real_eip !25
  %74 = xor i32 %73, %68, !mcsema_real_eip !25
  %75 = xor i32 %74, %72, !mcsema_real_eip !25
  %76 = and i32 %75, 16, !mcsema_real_eip !25
  %77 = icmp ne i32 %76, 0, !mcsema_real_eip !25
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !25
  %78 = trunc i32 %73 to i8, !mcsema_real_eip !25
  %79 = tail call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !25
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !25
  %82 = icmp eq i32 %73, 0, !mcsema_real_eip !25
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !25
  %83 = icmp slt i32 %73, 0
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !25
  %84 = icmp ult i32 %68, %72, !mcsema_real_eip !25
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !25
  %85 = xor i32 %72, %68, !mcsema_real_eip !25
  %86 = and i32 %74, %85, !mcsema_real_eip !25
  %87 = icmp slt i32 %86, 0
  store i1 %87, i1* %OF, align 1, !mcsema_real_eip !25
  %tmp = xor i1 %83, %87
  %88 = add i64 %RBP_val.42, -84
  %89 = inttoptr i64 %88 to i32*
  br i1 %tmp, label %block_0x5d, label %block_0x7c, !mcsema_real_eip !26

block_0x5d:                                       ; preds = %block_0x51
  %90 = add i64 %RBP_val.42, -24, !mcsema_real_eip !27
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !27
  %92 = load i64, i64* %91, align 8, !mcsema_real_eip !27
  store i64 %92, i64* %XAX, align 8, !mcsema_real_eip !27
  %93 = load i32, i32* %67, align 4, !mcsema_real_eip !28
  %94 = sext i32 %93 to i64, !mcsema_real_eip !28
  store i64 %94, i64* %XCX, align 8, !mcsema_real_eip !28
  %95 = shl nsw i64 %94, 2
  %96 = add i64 %95, %92, !mcsema_real_eip !29
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !29
  %98 = load i32, i32* %97, align 4, !mcsema_real_eip !29
  %99 = zext i32 %98 to i64, !mcsema_real_eip !29
  store i64 %99, i64* %XDX, align 8, !mcsema_real_eip !29
  %100 = load i32, i32* %89, align 4, !mcsema_real_eip !30
  %101 = add i32 %98, %100, !mcsema_real_eip !30
  %102 = xor i32 %101, %100, !mcsema_real_eip !30
  %103 = xor i32 %102, %98, !mcsema_real_eip !30
  %104 = and i32 %103, 16, !mcsema_real_eip !30
  %105 = icmp ne i32 %104, 0, !mcsema_real_eip !30
  store i1 %105, i1* %AF, align 1, !mcsema_real_eip !30
  %106 = icmp slt i32 %101, 0
  store i1 %106, i1* %SF, align 1, !mcsema_real_eip !30
  %107 = icmp eq i32 %101, 0, !mcsema_real_eip !30
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !30
  %108 = xor i32 %100, -2147483648, !mcsema_real_eip !30
  %109 = xor i32 %108, %98, !mcsema_real_eip !30
  %110 = and i32 %102, %109, !mcsema_real_eip !30
  %111 = icmp slt i32 %110, 0
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !30
  %112 = trunc i32 %101 to i8, !mcsema_real_eip !30
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !30
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF, align 1, !mcsema_real_eip !30
  %116 = icmp ult i32 %101, %100, !mcsema_real_eip !30
  store i1 %116, i1* %CF, align 1, !mcsema_real_eip !30
  %117 = zext i32 %101 to i64, !mcsema_real_eip !30
  store i64 %117, i64* %XDX, align 8, !mcsema_real_eip !30
  store i32 %101, i32* %89, align 4, !mcsema_real_eip !31
  %RBP_val.56 = load i64, i64* %XBP, align 8, !mcsema_real_eip !32
  %118 = add i64 %RBP_val.56, -88, !mcsema_real_eip !32
  %119 = inttoptr i64 %118 to i32*, !mcsema_real_eip !32
  %120 = load i32, i32* %119, align 4, !mcsema_real_eip !32
  %121 = add i32 %120, 1, !mcsema_real_eip !33
  %122 = xor i32 %121, %120, !mcsema_real_eip !33
  %123 = and i32 %122, 16, !mcsema_real_eip !33
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !33
  store i1 %124, i1* %AF, align 1, !mcsema_real_eip !33
  %125 = icmp slt i32 %121, 0
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !33
  %126 = icmp eq i32 %121, 0, !mcsema_real_eip !33
  store i1 %126, i1* %ZF, align 1, !mcsema_real_eip !33
  %127 = xor i32 %120, -2147483648, !mcsema_real_eip !33
  %128 = and i32 %122, %127, !mcsema_real_eip !33
  %129 = icmp slt i32 %128, 0
  store i1 %129, i1* %OF, align 1, !mcsema_real_eip !33
  %130 = trunc i32 %121 to i8, !mcsema_real_eip !33
  %131 = tail call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !33
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  store i1 %133, i1* %PF, align 1, !mcsema_real_eip !33
  %134 = icmp eq i32 %120, -1
  store i1 %134, i1* %CF, align 1, !mcsema_real_eip !33
  %135 = zext i32 %121 to i64, !mcsema_real_eip !33
  store i64 %135, i64* %XAX, align 8, !mcsema_real_eip !33
  store i32 %121, i32* %119, align 4, !mcsema_real_eip !34
  br label %block_0x51, !mcsema_real_eip !35

block_0x7c:                                       ; preds = %block_0x51
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %136 = add i64 %RBP_val.42, -32, !mcsema_real_eip !36
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !36
  %138 = load i64, i64* %137, align 8, !mcsema_real_eip !36
  store i64 %138, i64* %XAX, align 8, !mcsema_real_eip !36
  %139 = inttoptr i64 %138 to i32*, !mcsema_real_eip !37
  %140 = load i32, i32* %139, align 4, !mcsema_real_eip !37
  %141 = zext i32 %140 to i64, !mcsema_real_eip !37
  store i64 %141, i64* %XCX, align 8, !mcsema_real_eip !37
  %142 = load i32, i32* %89, align 4, !mcsema_real_eip !38
  %143 = add i32 %140, %142, !mcsema_real_eip !38
  %144 = xor i32 %143, %142, !mcsema_real_eip !38
  %145 = xor i32 %144, %140, !mcsema_real_eip !38
  %146 = and i32 %145, 16, !mcsema_real_eip !38
  %147 = icmp ne i32 %146, 0, !mcsema_real_eip !38
  store i1 %147, i1* %AF, align 1, !mcsema_real_eip !38
  %148 = icmp slt i32 %143, 0
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !38
  %149 = icmp eq i32 %143, 0, !mcsema_real_eip !38
  store i1 %149, i1* %ZF, align 1, !mcsema_real_eip !38
  %150 = xor i32 %142, -2147483648, !mcsema_real_eip !38
  %151 = xor i32 %150, %140, !mcsema_real_eip !38
  %152 = and i32 %144, %151, !mcsema_real_eip !38
  %153 = icmp slt i32 %152, 0
  store i1 %153, i1* %OF, align 1, !mcsema_real_eip !38
  %154 = trunc i32 %143 to i8, !mcsema_real_eip !38
  %155 = tail call i8 @llvm.ctpop.i8(i8 %154), !mcsema_real_eip !38
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  store i1 %157, i1* %PF, align 1, !mcsema_real_eip !38
  %158 = icmp ult i32 %143, %142, !mcsema_real_eip !38
  store i1 %158, i1* %CF, align 1, !mcsema_real_eip !38
  %159 = zext i32 %143 to i64, !mcsema_real_eip !38
  store i64 %159, i64* %XCX, align 8, !mcsema_real_eip !38
  store i32 %143, i32* %89, align 4, !mcsema_real_eip !39
  %RBP_val.70 = load i64, i64* %XBP, align 8, !mcsema_real_eip !40
  %160 = add i64 %RBP_val.70, -92, !mcsema_real_eip !40
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !40
  store i32 0, i32* %161, align 4, !mcsema_real_eip !40
  br label %block_0x8f, !mcsema_real_eip !41

block_0x8f:                                       ; preds = %block_0x9b, %block_0x7c
  %RBP_val.71 = load i64, i64* %XBP, align 8, !mcsema_real_eip !41
  %162 = add i64 %RBP_val.71, -92, !mcsema_real_eip !41
  %163 = inttoptr i64 %162 to i32*, !mcsema_real_eip !41
  %164 = load i32, i32* %163, align 4, !mcsema_real_eip !41
  %165 = zext i32 %164 to i64, !mcsema_real_eip !41
  store i64 %165, i64* %XAX, align 8, !mcsema_real_eip !41
  %166 = add i64 %RBP_val.71, -48, !mcsema_real_eip !42
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !42
  %168 = load i32, i32* %167, align 4, !mcsema_real_eip !42
  %169 = sub i32 %164, %168, !mcsema_real_eip !42
  %170 = xor i32 %169, %164, !mcsema_real_eip !42
  %171 = xor i32 %170, %168, !mcsema_real_eip !42
  %172 = and i32 %171, 16, !mcsema_real_eip !42
  %173 = icmp ne i32 %172, 0, !mcsema_real_eip !42
  store i1 %173, i1* %AF, align 1, !mcsema_real_eip !42
  %174 = trunc i32 %169 to i8, !mcsema_real_eip !42
  %175 = tail call i8 @llvm.ctpop.i8(i8 %174), !mcsema_real_eip !42
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  store i1 %177, i1* %PF, align 1, !mcsema_real_eip !42
  %178 = icmp eq i32 %169, 0, !mcsema_real_eip !42
  store i1 %178, i1* %ZF, align 1, !mcsema_real_eip !42
  %179 = icmp slt i32 %169, 0
  store i1 %179, i1* %SF, align 1, !mcsema_real_eip !42
  %180 = icmp ult i32 %164, %168, !mcsema_real_eip !42
  store i1 %180, i1* %CF, align 1, !mcsema_real_eip !42
  %181 = xor i32 %168, %164, !mcsema_real_eip !42
  %182 = and i32 %170, %181, !mcsema_real_eip !42
  %183 = icmp slt i32 %182, 0
  store i1 %183, i1* %OF, align 1, !mcsema_real_eip !42
  %tmp1 = xor i1 %179, %183
  %184 = add i64 %RBP_val.71, -84
  %185 = inttoptr i64 %184 to i32*
  br i1 %tmp1, label %block_0x9b, label %block_0xba, !mcsema_real_eip !43

block_0x9b:                                       ; preds = %block_0x8f
  %186 = add i64 %RBP_val.71, -40, !mcsema_real_eip !44
  %187 = inttoptr i64 %186 to i64*, !mcsema_real_eip !44
  %188 = load i64, i64* %187, align 8, !mcsema_real_eip !44
  store i64 %188, i64* %XAX, align 8, !mcsema_real_eip !44
  %189 = load i32, i32* %163, align 4, !mcsema_real_eip !45
  %190 = sext i32 %189 to i64, !mcsema_real_eip !45
  store i64 %190, i64* %XCX, align 8, !mcsema_real_eip !45
  %191 = shl nsw i64 %190, 2
  %192 = add i64 %191, %188, !mcsema_real_eip !46
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !46
  %194 = load i32, i32* %193, align 4, !mcsema_real_eip !46
  %195 = zext i32 %194 to i64, !mcsema_real_eip !46
  store i64 %195, i64* %XDX, align 8, !mcsema_real_eip !46
  %196 = load i32, i32* %185, align 4, !mcsema_real_eip !47
  %197 = add i32 %194, %196, !mcsema_real_eip !47
  %198 = xor i32 %197, %196, !mcsema_real_eip !47
  %199 = xor i32 %198, %194, !mcsema_real_eip !47
  %200 = and i32 %199, 16, !mcsema_real_eip !47
  %201 = icmp ne i32 %200, 0, !mcsema_real_eip !47
  store i1 %201, i1* %AF, align 1, !mcsema_real_eip !47
  %202 = icmp slt i32 %197, 0
  store i1 %202, i1* %SF, align 1, !mcsema_real_eip !47
  %203 = icmp eq i32 %197, 0, !mcsema_real_eip !47
  store i1 %203, i1* %ZF, align 1, !mcsema_real_eip !47
  %204 = xor i32 %196, -2147483648, !mcsema_real_eip !47
  %205 = xor i32 %204, %194, !mcsema_real_eip !47
  %206 = and i32 %198, %205, !mcsema_real_eip !47
  %207 = icmp slt i32 %206, 0
  store i1 %207, i1* %OF, align 1, !mcsema_real_eip !47
  %208 = trunc i32 %197 to i8, !mcsema_real_eip !47
  %209 = tail call i8 @llvm.ctpop.i8(i8 %208), !mcsema_real_eip !47
  %210 = and i8 %209, 1
  %211 = icmp eq i8 %210, 0
  store i1 %211, i1* %PF, align 1, !mcsema_real_eip !47
  %212 = icmp ult i32 %197, %196, !mcsema_real_eip !47
  store i1 %212, i1* %CF, align 1, !mcsema_real_eip !47
  %213 = zext i32 %197 to i64, !mcsema_real_eip !47
  store i64 %213, i64* %XDX, align 8, !mcsema_real_eip !47
  store i32 %197, i32* %185, align 4, !mcsema_real_eip !48
  %RBP_val.85 = load i64, i64* %XBP, align 8, !mcsema_real_eip !49
  %214 = add i64 %RBP_val.85, -92, !mcsema_real_eip !49
  %215 = inttoptr i64 %214 to i32*, !mcsema_real_eip !49
  %216 = load i32, i32* %215, align 4, !mcsema_real_eip !49
  %217 = add i32 %216, 1, !mcsema_real_eip !50
  %218 = xor i32 %217, %216, !mcsema_real_eip !50
  %219 = and i32 %218, 16, !mcsema_real_eip !50
  %220 = icmp ne i32 %219, 0, !mcsema_real_eip !50
  store i1 %220, i1* %AF, align 1, !mcsema_real_eip !50
  %221 = icmp slt i32 %217, 0
  store i1 %221, i1* %SF, align 1, !mcsema_real_eip !50
  %222 = icmp eq i32 %217, 0, !mcsema_real_eip !50
  store i1 %222, i1* %ZF, align 1, !mcsema_real_eip !50
  %223 = xor i32 %216, -2147483648, !mcsema_real_eip !50
  %224 = and i32 %218, %223, !mcsema_real_eip !50
  %225 = icmp slt i32 %224, 0
  store i1 %225, i1* %OF, align 1, !mcsema_real_eip !50
  %226 = trunc i32 %217 to i8, !mcsema_real_eip !50
  %227 = tail call i8 @llvm.ctpop.i8(i8 %226), !mcsema_real_eip !50
  %228 = and i8 %227, 1
  %229 = icmp eq i8 %228, 0
  store i1 %229, i1* %PF, align 1, !mcsema_real_eip !50
  %230 = icmp eq i32 %216, -1
  store i1 %230, i1* %CF, align 1, !mcsema_real_eip !50
  %231 = zext i32 %217 to i64, !mcsema_real_eip !50
  store i64 %231, i64* %XAX, align 8, !mcsema_real_eip !50
  store i32 %217, i32* %215, align 4, !mcsema_real_eip !51
  br label %block_0x8f, !mcsema_real_eip !52

block_0xba:                                       ; preds = %block_0x8f
  %232 = add i64 %RBP_val.71, -52, !mcsema_real_eip !53
  %233 = inttoptr i64 %232 to i32*, !mcsema_real_eip !53
  %234 = load i32, i32* %233, align 4, !mcsema_real_eip !53
  %235 = zext i32 %234 to i64, !mcsema_real_eip !53
  store i64 %235, i64* %XAX, align 8, !mcsema_real_eip !53
  %236 = load i32, i32* %185, align 4, !mcsema_real_eip !54
  %237 = add i32 %234, %236, !mcsema_real_eip !54
  %238 = xor i32 %237, %236, !mcsema_real_eip !54
  %239 = xor i32 %238, %234, !mcsema_real_eip !54
  %240 = and i32 %239, 16, !mcsema_real_eip !54
  %241 = icmp ne i32 %240, 0, !mcsema_real_eip !54
  store i1 %241, i1* %AF, align 1, !mcsema_real_eip !54
  %242 = icmp slt i32 %237, 0
  store i1 %242, i1* %SF, align 1, !mcsema_real_eip !54
  %243 = icmp eq i32 %237, 0, !mcsema_real_eip !54
  store i1 %243, i1* %ZF, align 1, !mcsema_real_eip !54
  %244 = xor i32 %236, -2147483648, !mcsema_real_eip !54
  %245 = xor i32 %244, %234, !mcsema_real_eip !54
  %246 = and i32 %238, %245, !mcsema_real_eip !54
  %247 = icmp slt i32 %246, 0
  store i1 %247, i1* %OF, align 1, !mcsema_real_eip !54
  %248 = trunc i32 %237 to i8, !mcsema_real_eip !54
  %249 = tail call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !54
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  store i1 %251, i1* %PF, align 1, !mcsema_real_eip !54
  %252 = icmp ult i32 %237, %236, !mcsema_real_eip !54
  store i1 %252, i1* %CF, align 1, !mcsema_real_eip !54
  %253 = zext i32 %237 to i64, !mcsema_real_eip !54
  store i64 %253, i64* %XAX, align 8, !mcsema_real_eip !54
  store i32 %237, i32* %185, align 4, !mcsema_real_eip !55
  %RBP_val.98 = load i64, i64* %XBP, align 8, !mcsema_real_eip !56
  %254 = add i64 %RBP_val.98, -96, !mcsema_real_eip !56
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !56
  store i32 0, i32* %255, align 4, !mcsema_real_eip !56
  br label %block_0xca, !mcsema_real_eip !57

block_0xca:                                       ; preds = %block_0xd6, %block_0xba
  %RBP_val.99 = load i64, i64* %XBP, align 8, !mcsema_real_eip !57
  %256 = add i64 %RBP_val.99, -96, !mcsema_real_eip !57
  %257 = inttoptr i64 %256 to i32*, !mcsema_real_eip !57
  %258 = load i32, i32* %257, align 4, !mcsema_real_eip !57
  %259 = zext i32 %258 to i64, !mcsema_real_eip !57
  store i64 %259, i64* %XAX, align 8, !mcsema_real_eip !57
  %260 = add i64 %RBP_val.99, -44, !mcsema_real_eip !58
  %261 = inttoptr i64 %260 to i32*, !mcsema_real_eip !58
  %262 = load i32, i32* %261, align 4, !mcsema_real_eip !58
  %263 = sub i32 %258, %262, !mcsema_real_eip !58
  %264 = xor i32 %263, %258, !mcsema_real_eip !58
  %265 = xor i32 %264, %262, !mcsema_real_eip !58
  %266 = and i32 %265, 16, !mcsema_real_eip !58
  %267 = icmp ne i32 %266, 0, !mcsema_real_eip !58
  store i1 %267, i1* %AF, align 1, !mcsema_real_eip !58
  %268 = trunc i32 %263 to i8, !mcsema_real_eip !58
  %269 = tail call i8 @llvm.ctpop.i8(i8 %268), !mcsema_real_eip !58
  %270 = and i8 %269, 1
  %271 = icmp eq i8 %270, 0
  store i1 %271, i1* %PF, align 1, !mcsema_real_eip !58
  %272 = icmp eq i32 %263, 0, !mcsema_real_eip !58
  store i1 %272, i1* %ZF, align 1, !mcsema_real_eip !58
  %273 = icmp slt i32 %263, 0
  store i1 %273, i1* %SF, align 1, !mcsema_real_eip !58
  %274 = icmp ult i32 %258, %262, !mcsema_real_eip !58
  store i1 %274, i1* %CF, align 1, !mcsema_real_eip !58
  %275 = xor i32 %262, %258, !mcsema_real_eip !58
  %276 = and i32 %264, %275, !mcsema_real_eip !58
  %277 = icmp slt i32 %276, 0
  store i1 %277, i1* %OF, align 1, !mcsema_real_eip !58
  %tmp2 = xor i1 %273, %277
  %278 = add i64 %RBP_val.99, -84
  %279 = inttoptr i64 %278 to i32*
  br i1 %tmp2, label %block_0xd6, label %block_0xf5, !mcsema_real_eip !59

block_0xd6:                                       ; preds = %block_0xca
  %280 = add i64 %RBP_val.99, -64, !mcsema_real_eip !60
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !60
  %282 = load i64, i64* %281, align 8, !mcsema_real_eip !60
  store i64 %282, i64* %XAX, align 8, !mcsema_real_eip !60
  %283 = load i32, i32* %257, align 4, !mcsema_real_eip !61
  %284 = sext i32 %283 to i64, !mcsema_real_eip !61
  store i64 %284, i64* %XCX, align 8, !mcsema_real_eip !61
  %285 = shl nsw i64 %284, 2
  %286 = add i64 %285, %282, !mcsema_real_eip !62
  %287 = inttoptr i64 %286 to i32*, !mcsema_real_eip !62
  %288 = load i32, i32* %287, align 4, !mcsema_real_eip !62
  %289 = zext i32 %288 to i64, !mcsema_real_eip !62
  store i64 %289, i64* %XDX, align 8, !mcsema_real_eip !62
  %290 = load i32, i32* %279, align 4, !mcsema_real_eip !63
  %291 = add i32 %288, %290, !mcsema_real_eip !63
  %292 = xor i32 %291, %290, !mcsema_real_eip !63
  %293 = xor i32 %292, %288, !mcsema_real_eip !63
  %294 = and i32 %293, 16, !mcsema_real_eip !63
  %295 = icmp ne i32 %294, 0, !mcsema_real_eip !63
  store i1 %295, i1* %AF, align 1, !mcsema_real_eip !63
  %296 = icmp slt i32 %291, 0
  store i1 %296, i1* %SF, align 1, !mcsema_real_eip !63
  %297 = icmp eq i32 %291, 0, !mcsema_real_eip !63
  store i1 %297, i1* %ZF, align 1, !mcsema_real_eip !63
  %298 = xor i32 %290, -2147483648, !mcsema_real_eip !63
  %299 = xor i32 %298, %288, !mcsema_real_eip !63
  %300 = and i32 %292, %299, !mcsema_real_eip !63
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF, align 1, !mcsema_real_eip !63
  %302 = trunc i32 %291 to i8, !mcsema_real_eip !63
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !63
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF, align 1, !mcsema_real_eip !63
  %306 = icmp ult i32 %291, %290, !mcsema_real_eip !63
  store i1 %306, i1* %CF, align 1, !mcsema_real_eip !63
  %307 = zext i32 %291 to i64, !mcsema_real_eip !63
  store i64 %307, i64* %XDX, align 8, !mcsema_real_eip !63
  store i32 %291, i32* %279, align 4, !mcsema_real_eip !64
  %RBP_val.113 = load i64, i64* %XBP, align 8, !mcsema_real_eip !65
  %308 = add i64 %RBP_val.113, -96, !mcsema_real_eip !65
  %309 = inttoptr i64 %308 to i32*, !mcsema_real_eip !65
  %310 = load i32, i32* %309, align 4, !mcsema_real_eip !65
  %311 = add i32 %310, 1, !mcsema_real_eip !66
  %312 = xor i32 %311, %310, !mcsema_real_eip !66
  %313 = and i32 %312, 16, !mcsema_real_eip !66
  %314 = icmp ne i32 %313, 0, !mcsema_real_eip !66
  store i1 %314, i1* %AF, align 1, !mcsema_real_eip !66
  %315 = icmp slt i32 %311, 0
  store i1 %315, i1* %SF, align 1, !mcsema_real_eip !66
  %316 = icmp eq i32 %311, 0, !mcsema_real_eip !66
  store i1 %316, i1* %ZF, align 1, !mcsema_real_eip !66
  %317 = xor i32 %310, -2147483648, !mcsema_real_eip !66
  %318 = and i32 %312, %317, !mcsema_real_eip !66
  %319 = icmp slt i32 %318, 0
  store i1 %319, i1* %OF, align 1, !mcsema_real_eip !66
  %320 = trunc i32 %311 to i8, !mcsema_real_eip !66
  %321 = tail call i8 @llvm.ctpop.i8(i8 %320), !mcsema_real_eip !66
  %322 = and i8 %321, 1
  %323 = icmp eq i8 %322, 0
  store i1 %323, i1* %PF, align 1, !mcsema_real_eip !66
  %324 = icmp eq i32 %310, -1
  store i1 %324, i1* %CF, align 1, !mcsema_real_eip !66
  %325 = zext i32 %311 to i64, !mcsema_real_eip !66
  store i64 %325, i64* %XAX, align 8, !mcsema_real_eip !66
  store i32 %311, i32* %309, align 4, !mcsema_real_eip !67
  br label %block_0xca, !mcsema_real_eip !68

block_0xf5:                                       ; preds = %block_0xca
  %326 = add i64 %RBP_val.99, -72, !mcsema_real_eip !69
  %327 = inttoptr i64 %326 to i64*, !mcsema_real_eip !69
  %328 = load i64, i64* %327, align 8, !mcsema_real_eip !69
  store i64 %328, i64* %XAX, align 8, !mcsema_real_eip !69
  %329 = inttoptr i64 %328 to i32*, !mcsema_real_eip !70
  %330 = load i32, i32* %329, align 4, !mcsema_real_eip !70
  %331 = zext i32 %330 to i64, !mcsema_real_eip !70
  store i64 %331, i64* %XCX, align 8, !mcsema_real_eip !70
  %332 = load i32, i32* %279, align 4, !mcsema_real_eip !71
  %333 = add i32 %330, %332, !mcsema_real_eip !71
  %334 = xor i32 %333, %332, !mcsema_real_eip !71
  %335 = xor i32 %334, %330, !mcsema_real_eip !71
  %336 = and i32 %335, 16, !mcsema_real_eip !71
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !71
  store i1 %337, i1* %AF, align 1, !mcsema_real_eip !71
  %338 = icmp slt i32 %333, 0
  store i1 %338, i1* %SF, align 1, !mcsema_real_eip !71
  %339 = icmp eq i32 %333, 0, !mcsema_real_eip !71
  store i1 %339, i1* %ZF, align 1, !mcsema_real_eip !71
  %340 = xor i32 %332, -2147483648, !mcsema_real_eip !71
  %341 = xor i32 %340, %330, !mcsema_real_eip !71
  %342 = and i32 %334, %341, !mcsema_real_eip !71
  %343 = icmp slt i32 %342, 0
  store i1 %343, i1* %OF, align 1, !mcsema_real_eip !71
  %344 = trunc i32 %333 to i8, !mcsema_real_eip !71
  %345 = tail call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !71
  %346 = and i8 %345, 1
  %347 = icmp eq i8 %346, 0
  store i1 %347, i1* %PF, align 1, !mcsema_real_eip !71
  %348 = icmp ult i32 %333, %332, !mcsema_real_eip !71
  store i1 %348, i1* %CF, align 1, !mcsema_real_eip !71
  %349 = zext i32 %333 to i64, !mcsema_real_eip !71
  store i64 %349, i64* %XCX, align 8, !mcsema_real_eip !71
  store i32 %333, i32* %279, align 4, !mcsema_real_eip !72
  %RBP_val.127 = load i64, i64* %XBP, align 8, !mcsema_real_eip !73
  %350 = add i64 %RBP_val.127, -100, !mcsema_real_eip !73
  %351 = inttoptr i64 %350 to i32*, !mcsema_real_eip !73
  store i32 0, i32* %351, align 4, !mcsema_real_eip !73
  br label %block_0x108, !mcsema_real_eip !74

block_0x108:                                      ; preds = %block_0x114, %block_0xf5
  %RBP_val.128 = load i64, i64* %XBP, align 8, !mcsema_real_eip !74
  %352 = add i64 %RBP_val.128, -100, !mcsema_real_eip !74
  %353 = inttoptr i64 %352 to i32*, !mcsema_real_eip !74
  %354 = load i32, i32* %353, align 4, !mcsema_real_eip !74
  %355 = zext i32 %354 to i64, !mcsema_real_eip !74
  store i64 %355, i64* %XAX, align 8, !mcsema_real_eip !74
  %356 = add i64 %RBP_val.128, -48, !mcsema_real_eip !75
  %357 = inttoptr i64 %356 to i32*, !mcsema_real_eip !75
  %358 = load i32, i32* %357, align 4, !mcsema_real_eip !75
  %359 = sub i32 %354, %358, !mcsema_real_eip !75
  %360 = xor i32 %359, %354, !mcsema_real_eip !75
  %361 = xor i32 %360, %358, !mcsema_real_eip !75
  %362 = and i32 %361, 16, !mcsema_real_eip !75
  %363 = icmp ne i32 %362, 0, !mcsema_real_eip !75
  store i1 %363, i1* %AF, align 1, !mcsema_real_eip !75
  %364 = trunc i32 %359 to i8, !mcsema_real_eip !75
  %365 = tail call i8 @llvm.ctpop.i8(i8 %364), !mcsema_real_eip !75
  %366 = and i8 %365, 1
  %367 = icmp eq i8 %366, 0
  store i1 %367, i1* %PF, align 1, !mcsema_real_eip !75
  %368 = icmp eq i32 %359, 0, !mcsema_real_eip !75
  store i1 %368, i1* %ZF, align 1, !mcsema_real_eip !75
  %369 = icmp slt i32 %359, 0
  store i1 %369, i1* %SF, align 1, !mcsema_real_eip !75
  %370 = icmp ult i32 %354, %358, !mcsema_real_eip !75
  store i1 %370, i1* %CF, align 1, !mcsema_real_eip !75
  %371 = xor i32 %358, %354, !mcsema_real_eip !75
  %372 = and i32 %360, %371, !mcsema_real_eip !75
  %373 = icmp slt i32 %372, 0
  store i1 %373, i1* %OF, align 1, !mcsema_real_eip !75
  %tmp3 = xor i1 %369, %373
  %374 = add i64 %RBP_val.128, -84
  %375 = inttoptr i64 %374 to i32*
  br i1 %tmp3, label %block_0x114, label %block_0x133, !mcsema_real_eip !76

block_0x114:                                      ; preds = %block_0x108
  %376 = add i64 %RBP_val.128, -80, !mcsema_real_eip !77
  %377 = inttoptr i64 %376 to i64*, !mcsema_real_eip !77
  %378 = load i64, i64* %377, align 8, !mcsema_real_eip !77
  store i64 %378, i64* %XAX, align 8, !mcsema_real_eip !77
  %379 = load i32, i32* %353, align 4, !mcsema_real_eip !78
  %380 = sext i32 %379 to i64, !mcsema_real_eip !78
  store i64 %380, i64* %XCX, align 8, !mcsema_real_eip !78
  %381 = shl nsw i64 %380, 2
  %382 = add i64 %381, %378, !mcsema_real_eip !79
  %383 = inttoptr i64 %382 to i32*, !mcsema_real_eip !79
  %384 = load i32, i32* %383, align 4, !mcsema_real_eip !79
  %385 = zext i32 %384 to i64, !mcsema_real_eip !79
  store i64 %385, i64* %XDX, align 8, !mcsema_real_eip !79
  %386 = load i32, i32* %375, align 4, !mcsema_real_eip !80
  %387 = add i32 %384, %386, !mcsema_real_eip !80
  %388 = xor i32 %387, %386, !mcsema_real_eip !80
  %389 = xor i32 %388, %384, !mcsema_real_eip !80
  %390 = and i32 %389, 16, !mcsema_real_eip !80
  %391 = icmp ne i32 %390, 0, !mcsema_real_eip !80
  store i1 %391, i1* %AF, align 1, !mcsema_real_eip !80
  %392 = icmp slt i32 %387, 0
  store i1 %392, i1* %SF, align 1, !mcsema_real_eip !80
  %393 = icmp eq i32 %387, 0, !mcsema_real_eip !80
  store i1 %393, i1* %ZF, align 1, !mcsema_real_eip !80
  %394 = xor i32 %386, -2147483648, !mcsema_real_eip !80
  %395 = xor i32 %394, %384, !mcsema_real_eip !80
  %396 = and i32 %388, %395, !mcsema_real_eip !80
  %397 = icmp slt i32 %396, 0
  store i1 %397, i1* %OF, align 1, !mcsema_real_eip !80
  %398 = trunc i32 %387 to i8, !mcsema_real_eip !80
  %399 = tail call i8 @llvm.ctpop.i8(i8 %398), !mcsema_real_eip !80
  %400 = and i8 %399, 1
  %401 = icmp eq i8 %400, 0
  store i1 %401, i1* %PF, align 1, !mcsema_real_eip !80
  %402 = icmp ult i32 %387, %386, !mcsema_real_eip !80
  store i1 %402, i1* %CF, align 1, !mcsema_real_eip !80
  %403 = zext i32 %387 to i64, !mcsema_real_eip !80
  store i64 %403, i64* %XDX, align 8, !mcsema_real_eip !80
  store i32 %387, i32* %375, align 4, !mcsema_real_eip !81
  %RBP_val.142 = load i64, i64* %XBP, align 8, !mcsema_real_eip !82
  %404 = add i64 %RBP_val.142, -100, !mcsema_real_eip !82
  %405 = inttoptr i64 %404 to i32*, !mcsema_real_eip !82
  %406 = load i32, i32* %405, align 4, !mcsema_real_eip !82
  %407 = add i32 %406, 1, !mcsema_real_eip !83
  %408 = xor i32 %407, %406, !mcsema_real_eip !83
  %409 = and i32 %408, 16, !mcsema_real_eip !83
  %410 = icmp ne i32 %409, 0, !mcsema_real_eip !83
  store i1 %410, i1* %AF, align 1, !mcsema_real_eip !83
  %411 = icmp slt i32 %407, 0
  store i1 %411, i1* %SF, align 1, !mcsema_real_eip !83
  %412 = icmp eq i32 %407, 0, !mcsema_real_eip !83
  store i1 %412, i1* %ZF, align 1, !mcsema_real_eip !83
  %413 = xor i32 %406, -2147483648, !mcsema_real_eip !83
  %414 = and i32 %408, %413, !mcsema_real_eip !83
  %415 = icmp slt i32 %414, 0
  store i1 %415, i1* %OF, align 1, !mcsema_real_eip !83
  %416 = trunc i32 %407 to i8, !mcsema_real_eip !83
  %417 = tail call i8 @llvm.ctpop.i8(i8 %416), !mcsema_real_eip !83
  %418 = and i8 %417, 1
  %419 = icmp eq i8 %418, 0
  store i1 %419, i1* %PF, align 1, !mcsema_real_eip !83
  %420 = icmp eq i32 %406, -1
  store i1 %420, i1* %CF, align 1, !mcsema_real_eip !83
  %421 = zext i32 %407 to i64, !mcsema_real_eip !83
  store i64 %421, i64* %XAX, align 8, !mcsema_real_eip !83
  store i32 %407, i32* %405, align 4, !mcsema_real_eip !84
  br label %block_0x108, !mcsema_real_eip !85

block_0x133:                                      ; preds = %block_0x108
  %422 = load i32, i32* %375, align 4, !mcsema_real_eip !86
  %423 = zext i32 %422 to i64, !mcsema_real_eip !86
  store i64 %423, i64* %XAX, align 8, !mcsema_real_eip !86
  %RSP_val.149 = load i64, i64* %XSP, align 8, !mcsema_real_eip !87
  %424 = inttoptr i64 %RSP_val.149 to i64*, !mcsema_real_eip !87
  %425 = load i64, i64* %424, align 8, !mcsema_real_eip !87
  store i64 %425, i64* %XBX, align 8, !mcsema_real_eip !87
  %426 = add i64 %RSP_val.149, 8, !mcsema_real_eip !87
  store i64 %426, i64* %XSP, align 8, !mcsema_real_eip !87
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !88
  %428 = load i64, i64* %427, align 8, !mcsema_real_eip !88
  store i64 %428, i64* %XBP, align 8, !mcsema_real_eip !88
  %429 = add i64 %RSP_val.149, 16, !mcsema_real_eip !88
  store i64 %429, i64* %XSP, align 8, !mcsema_real_eip !88
  %430 = add i64 %RSP_val.149, 24, !mcsema_real_eip !89
  %431 = inttoptr i64 %429 to i64*, !mcsema_real_eip !89
  %432 = load i64, i64* %431, align 8, !mcsema_real_eip !89
  store i64 %432, i64* %XIP, align 8, !mcsema_real_eip !89
  store i64 %430, i64* %XSP, align 8, !mcsema_real_eip !89
  ret void, !mcsema_real_eip !89
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_140(%RegState*) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [192 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 192
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !90
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !90
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !90
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !90
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !90
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !90
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !90
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !90
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !90
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !90
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !90
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !90
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !90
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !90
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !90
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !90
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !90
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !90
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !90
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !90
  %R14 = getelementptr %RegState, %RegState* %0, i64 0, i32 70, !mcsema_real_eip !90
  %RSP_val.153 = load i64, i64* %XSP, align 8, !mcsema_real_eip !90
  %_new_gep_ = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 184
  %1 = add i64 %RSP_val.153, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !91
  %R14_val.155 = load i64, i64* %R14, align 8, !mcsema_real_eip !92
  %_new_gep_3 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 176
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R14_val.155, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !92
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %RBX_val.157 = load i64, i64* %XBX, align 8, !mcsema_real_eip !93
  %_new_gep_6 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 168
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %RBX_val.157, i64* %_allin_new_bt_7, align 8, !mcsema_real_eip !93
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_, align 8
  %_new_gep_9 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.153, -184
  %_trans_p2i_ = ptrtoint i8* %_new_gep_9 to i64
  %_trans_p2i_10 = ptrtoint i8* %_new_gep_6 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_10
  %4 = and i64 %_trans_xor_, 16, !mcsema_real_eip !94
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !94
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !94
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !94
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !94
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !94
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !94
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_6, inttoptr (i64 160 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !94
  %10 = and i64 %_trans_xor_, %_trans_p2i_10, !mcsema_real_eip !94
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !94
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !94
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_20 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 164
  %13 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !95
  %_new_gep_23 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 160
  %14 = bitcast i8* %_new_gep_23 to i32*
  store i32 1, i32* %14, align 4, !mcsema_real_eip !96
  %_new_gep_26 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 116
  %15 = bitcast i8* %_new_gep_26 to i32*
  store i32 0, i32* %15, align 4, !mcsema_real_eip !97
  %EAX.178 = bitcast i64* %XAX to i32*
  br label %block_0x163, !mcsema_real_eip !98

block_0x163:                                      ; preds = %block_0x16d, %entry
  %16 = phi i32 [ %.pre, %block_0x16d ], [ 0, %entry ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2810 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2810.pre, %block_0x16d ], [ %_new_gep_, %entry ]
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2810, i64 -68
  %17 = bitcast i8* %_new_gep_29 to i32*
  %18 = add i32 %16, -10
  %19 = xor i32 %18, %16, !mcsema_real_eip !98
  %20 = and i32 %19, 16, !mcsema_real_eip !98
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !98
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !98
  %22 = trunc i32 %18 to i8, !mcsema_real_eip !98
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !98
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !98
  %26 = icmp eq i32 %18, 0, !mcsema_real_eip !98
  store i1 %26, i1* %ZF, align 1, !mcsema_real_eip !98
  %27 = icmp slt i32 %18, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !98
  %28 = icmp ult i32 %16, 10, !mcsema_real_eip !98
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !98
  %29 = and i32 %19, %16, !mcsema_real_eip !98
  %30 = icmp slt i32 %29, 0
  store i1 %30, i1* %OF, align 1, !mcsema_real_eip !98
  %tmp = xor i1 %27, %30
  br i1 %tmp, label %block_0x16d, label %block_0x189, !mcsema_real_eip !99

block_0x16d:                                      ; preds = %block_0x163
  %31 = load i32, i32* %17, align 4, !mcsema_real_eip !100
  %32 = add i32 %31, 1, !mcsema_real_eip !101
  %33 = xor i32 %32, %31, !mcsema_real_eip !101
  %34 = and i32 %33, 16, !mcsema_real_eip !101
  %35 = icmp ne i32 %34, 0, !mcsema_real_eip !101
  store i1 %35, i1* %AF, align 1, !mcsema_real_eip !101
  %36 = icmp slt i32 %32, 0
  store i1 %36, i1* %SF, align 1, !mcsema_real_eip !101
  %37 = icmp eq i32 %32, 0, !mcsema_real_eip !101
  store i1 %37, i1* %ZF, align 1, !mcsema_real_eip !101
  %38 = xor i32 %31, -2147483648, !mcsema_real_eip !101
  %39 = and i32 %33, %38, !mcsema_real_eip !101
  %40 = icmp slt i32 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !101
  %41 = trunc i32 %32 to i8, !mcsema_real_eip !101
  %42 = call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !101
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !101
  %45 = icmp eq i32 %31, -1
  store i1 %45, i1* %CF, align 1, !mcsema_real_eip !101
  %46 = zext i32 %32 to i64, !mcsema_real_eip !101
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !101
  %47 = load i32, i32* %17, align 4, !mcsema_real_eip !102
  %48 = sext i32 %47 to i64, !mcsema_real_eip !102
  store i64 %48, i64* %XCX, align 8, !mcsema_real_eip !102
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2810, i64 -64
  %49 = shl nsw i64 %48, 2
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_38, i64 %49
  %50 = bitcast i8* %_new_gep_39 to i32*
  store i32 %32, i32* %50, align 4, !mcsema_real_eip !103
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4126 = load i8*, i8** %12, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4126, i64 -68
  %51 = bitcast i8* %_new_gep_42 to i32*
  %52 = load i32, i32* %51, align 4, !mcsema_real_eip !104
  %53 = add i32 %52, 1, !mcsema_real_eip !105
  %54 = xor i32 %53, %52, !mcsema_real_eip !105
  %55 = and i32 %54, 16, !mcsema_real_eip !105
  %56 = icmp ne i32 %55, 0, !mcsema_real_eip !105
  store i1 %56, i1* %AF, align 1, !mcsema_real_eip !105
  %57 = icmp slt i32 %53, 0
  store i1 %57, i1* %SF, align 1, !mcsema_real_eip !105
  %58 = icmp eq i32 %53, 0, !mcsema_real_eip !105
  store i1 %58, i1* %ZF, align 1, !mcsema_real_eip !105
  %59 = xor i32 %52, -2147483648, !mcsema_real_eip !105
  %60 = and i32 %54, %59, !mcsema_real_eip !105
  %61 = icmp slt i32 %60, 0
  store i1 %61, i1* %OF, align 1, !mcsema_real_eip !105
  %62 = trunc i32 %53 to i8, !mcsema_real_eip !105
  %63 = call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !105
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  store i1 %65, i1* %PF, align 1, !mcsema_real_eip !105
  %66 = icmp eq i32 %52, -1
  store i1 %66, i1* %CF, align 1, !mcsema_real_eip !105
  %67 = zext i32 %53 to i64, !mcsema_real_eip !105
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !105
  store i32 %53, i32* %51, align 4, !mcsema_real_eip !106
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2810.pre = load i8*, i8** %12, align 8
  %_new_gep_29.phi.trans.insert = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2810.pre, i64 -68
  %.phi.trans.insert = bitcast i8* %_new_gep_29.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 4
  br label %block_0x163, !mcsema_real_eip !107

block_0x189:                                      ; preds = %block_0x163
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !90
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !90
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !90
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !90
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !90
  store i64 40, i64* %XAX, align 8, !mcsema_real_eip !108
  store i64 40, i64* %XDI, align 8, !mcsema_real_eip !109
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2810, i64 -24
  %68 = ptrtoint i8* %_new_gep_48 to i64
  store i64 %68, i64* %XCX, align 8, !mcsema_real_eip !110
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2810, i64 -80
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  store i64 %68, i64* %_allin_new_bt_52, align 8, !mcsema_real_eip !111
  %RDI_val.183 = load i64, i64* %XDI, align 8, !mcsema_real_eip !112
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_53 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.184 = load i64, i64* %XSP, align 8, !mcsema_real_eip !112
  %_new_gep_54 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_53, i64 -8
  %69 = add i64 %RSP_val.184, -8
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_55, align 8, !mcsema_real_eip !112
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_, align 8
  store i64 %69, i64* %XSP, align 8, !mcsema_real_eip !112
  %70 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.183)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %70, i64* %XAX, align 8, !mcsema_real_eip !112
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5611 = load i8*, i8** %12, align 8
  %_new_gep_57 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5611, i64 -88
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  store i64 %70, i64* %_allin_new_bt_58, align 8, !mcsema_real_eip !113
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5912 = load i8*, i8** %12, align 8
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5912, i64 -92
  %71 = bitcast i8* %_new_gep_60 to i32*
  store i32 0, i32* %71, align 4, !mcsema_real_eip !114
  br label %block_0x1a8, !mcsema_real_eip !115

block_0x1a8:                                      ; preds = %block_0x1b2, %block_0x189
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6213 = load i8*, i8** %12, align 8
  %_new_gep_63 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6213, i64 -92
  %72 = bitcast i8* %_new_gep_63 to i32*
  %73 = load i32, i32* %72, align 4, !mcsema_real_eip !115
  %74 = add i32 %73, -10
  %75 = xor i32 %74, %73, !mcsema_real_eip !115
  %76 = and i32 %75, 16, !mcsema_real_eip !115
  %77 = icmp ne i32 %76, 0, !mcsema_real_eip !115
  store i1 %77, i1* %AF, align 1, !mcsema_real_eip !115
  %78 = trunc i32 %74 to i8, !mcsema_real_eip !115
  %79 = call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !115
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !115
  %82 = icmp eq i32 %74, 0, !mcsema_real_eip !115
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !115
  %83 = icmp slt i32 %74, 0
  store i1 %83, i1* %SF, align 1, !mcsema_real_eip !115
  %84 = icmp ult i32 %73, 10, !mcsema_real_eip !115
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !115
  %85 = and i32 %75, %73, !mcsema_real_eip !115
  %86 = icmp slt i32 %85, 0
  store i1 %86, i1* %OF, align 1, !mcsema_real_eip !115
  %tmp3 = xor i1 %83, %86
  br i1 %tmp3, label %block_0x1b2, label %block_0x1d1, !mcsema_real_eip !116

block_0x1b2:                                      ; preds = %block_0x1a8
  %87 = load i32, i32* %72, align 4, !mcsema_real_eip !117
  %88 = add i32 %87, 1, !mcsema_real_eip !118
  %89 = xor i32 %88, %87, !mcsema_real_eip !118
  %90 = and i32 %89, 16, !mcsema_real_eip !118
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !118
  store i1 %91, i1* %AF, align 1, !mcsema_real_eip !118
  %92 = icmp slt i32 %88, 0
  store i1 %92, i1* %SF, align 1, !mcsema_real_eip !118
  %93 = icmp eq i32 %88, 0, !mcsema_real_eip !118
  store i1 %93, i1* %ZF, align 1, !mcsema_real_eip !118
  %94 = xor i32 %87, -2147483648, !mcsema_real_eip !118
  %95 = and i32 %89, %94, !mcsema_real_eip !118
  %96 = icmp slt i32 %95, 0
  store i1 %96, i1* %OF, align 1, !mcsema_real_eip !118
  %97 = trunc i32 %88 to i8, !mcsema_real_eip !118
  %98 = call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !118
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  store i1 %100, i1* %PF, align 1, !mcsema_real_eip !118
  %101 = icmp eq i32 %87, -1
  store i1 %101, i1* %CF, align 1, !mcsema_real_eip !118
  %102 = zext i32 %88 to i64, !mcsema_real_eip !118
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !118
  %_new_gep_69 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6213, i64 -88
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %103 = load i64, i64* %_allin_new_bt_70, align 8, !mcsema_real_eip !119
  store i64 %103, i64* %XCX, align 8, !mcsema_real_eip !119
  %104 = load i32, i32* %72, align 4, !mcsema_real_eip !120
  %105 = sext i32 %104 to i64, !mcsema_real_eip !120
  store i64 %105, i64* %XDX, align 8, !mcsema_real_eip !120
  %106 = shl nsw i64 %105, 2
  %107 = add i64 %106, %103, !mcsema_real_eip !121
  %108 = inttoptr i64 %107 to i32*, !mcsema_real_eip !121
  store i32 %88, i32* %108, align 4, !mcsema_real_eip !121
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7425 = load i8*, i8** %12, align 8
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7425, i64 -92
  %109 = bitcast i8* %_new_gep_75 to i32*
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !122
  %111 = add i32 %110, 1, !mcsema_real_eip !123
  %112 = xor i32 %111, %110, !mcsema_real_eip !123
  %113 = and i32 %112, 16, !mcsema_real_eip !123
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !123
  store i1 %114, i1* %AF, align 1, !mcsema_real_eip !123
  %115 = icmp slt i32 %111, 0
  store i1 %115, i1* %SF, align 1, !mcsema_real_eip !123
  %116 = icmp eq i32 %111, 0, !mcsema_real_eip !123
  store i1 %116, i1* %ZF, align 1, !mcsema_real_eip !123
  %117 = xor i32 %110, -2147483648, !mcsema_real_eip !123
  %118 = and i32 %112, %117, !mcsema_real_eip !123
  %119 = icmp slt i32 %118, 0
  store i1 %119, i1* %OF, align 1, !mcsema_real_eip !123
  %120 = trunc i32 %111 to i8, !mcsema_real_eip !123
  %121 = call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !123
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  store i1 %123, i1* %PF, align 1, !mcsema_real_eip !123
  %124 = icmp eq i32 %110, -1
  store i1 %124, i1* %CF, align 1, !mcsema_real_eip !123
  %125 = zext i32 %111 to i64, !mcsema_real_eip !123
  store i64 %125, i64* %XAX, align 8, !mcsema_real_eip !123
  store i32 %111, i32* %109, align 4, !mcsema_real_eip !124
  br label %block_0x1a8, !mcsema_real_eip !125

block_0x1d1:                                      ; preds = %block_0x1a8
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !126
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6213, i64 -64
  %126 = ptrtoint i8* %_new_gep_81 to i64
  store i64 %126, i64* %XCX, align 8, !mcsema_real_eip !127
  %_new_gep_84 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6213, i64 -24
  %127 = bitcast i8* %_new_gep_84 to i32*
  %128 = load i32, i32* %127, align 4, !mcsema_real_eip !128
  %129 = zext i32 %128 to i64, !mcsema_real_eip !128
  store i64 %129, i64* %XDI, align 8, !mcsema_real_eip !128
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6213, i64 -80
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %130 = load i64, i64* %_allin_new_bt_88, align 8, !mcsema_real_eip !129
  store i64 %130, i64* %XDX, align 8, !mcsema_real_eip !129
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6213, i64 -88
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %131 = load i64, i64* %_allin_new_bt_91, align 8, !mcsema_real_eip !130
  store i64 %131, i64* %XSI, align 8, !mcsema_real_eip !130
  %132 = load i32, i32* %127, align 4, !mcsema_real_eip !131
  %133 = zext i32 %132 to i64, !mcsema_real_eip !131
  store i64 %133, i64* %R8, align 8, !mcsema_real_eip !131
  %134 = load i64, i64* %_allin_new_bt_88, align 8, !mcsema_real_eip !132
  store i64 %134, i64* %R9, align 8, !mcsema_real_eip !132
  %135 = load i64, i64* %_allin_new_bt_91, align 8, !mcsema_real_eip !133
  store i64 %135, i64* %R10, align 8, !mcsema_real_eip !133
  %_new_gep_102 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6213, i64 -104
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  store i64 %131, i64* %_allin_new_bt_103, align 8, !mcsema_real_eip !134
  %RCX_val.213 = load i64, i64* %XCX, align 8, !mcsema_real_eip !135
  store i64 %RCX_val.213, i64* %XSI, align 8, !mcsema_real_eip !135
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10414 = load i8*, i8** %12, align 8
  %_new_gep_105 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10414, i64 -104
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %136 = load i64, i64* %_allin_new_bt_106, align 8, !mcsema_real_eip !136
  store i64 %136, i64* %R11, align 8, !mcsema_real_eip !136
  %_new_gep_108 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10414, i64 -112
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  store i64 %RCX_val.213, i64* %_allin_new_bt_109, align 8, !mcsema_real_eip !137
  %R11_val.217 = load i64, i64* %R11, align 8, !mcsema_real_eip !138
  store i64 %R11_val.217, i64* %XCX, align 8, !mcsema_real_eip !138
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11015 = load i8*, i8** %12, align 8
  %_new_gep_111 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11015, i64 -116
  %R8D.219 = bitcast i64* %R8 to i32*, !mcsema_real_eip !139
  %R8D_val.220 = load i32, i32* %R8D.219, align 4, !mcsema_real_eip !139
  %137 = bitcast i8* %_new_gep_111 to i32*
  store i32 %R8D_val.220, i32* %137, align 4, !mcsema_real_eip !139
  %EAX_val.222 = load i32, i32* %EAX.178, align 4, !mcsema_real_eip !140
  %138 = zext i32 %EAX_val.222 to i64, !mcsema_real_eip !140
  store i64 %138, i64* %R8, align 8, !mcsema_real_eip !140
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11316 = load i8*, i8** %12, align 8
  %_new_gep_114 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11316, i64 -128
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %R9_val.224 = load i64, i64* %R9, align 8, !mcsema_real_eip !141
  store i64 %R9_val.224, i64* %_allin_new_bt_115, align 8, !mcsema_real_eip !141
  %EAX_val.226 = load i32, i32* %EAX.178, align 4, !mcsema_real_eip !142
  %139 = zext i32 %EAX_val.226 to i64, !mcsema_real_eip !142
  store i64 %139, i64* %R9, align 8, !mcsema_real_eip !142
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11617 = load i8*, i8** %12, align 8
  %_new_gep_117 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11617, i64 -116
  %140 = bitcast i8* %_new_gep_117 to i32*
  %141 = load i32, i32* %140, align 4, !mcsema_real_eip !143
  %142 = zext i32 %141 to i64, !mcsema_real_eip !143
  store i64 %142, i64* %XAX, align 8, !mcsema_real_eip !143
  %143 = bitcast i8** %_RSP_ptr_ to i32**
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_11945618 = load i32*, i32** %143, align 8
  store i32 %141, i32* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_11945618, align 4, !mcsema_real_eip !144
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12219 = load i8*, i8** %12, align 8
  %_new_gep_123 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12219, i64 -112
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %144 = load i64, i64* %_allin_new_bt_124, align 8, !mcsema_real_eip !145
  store i64 %144, i64* %XBX, align 8, !mcsema_real_eip !145
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_125 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_126 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_125, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  store i64 %144, i64* %_allin_new_bt_127, align 8, !mcsema_real_eip !146
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12820 = load i8*, i8** %12, align 8
  %_new_gep_129 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12820, i64 -128
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %145 = load i64, i64* %_allin_new_bt_130, align 8, !mcsema_real_eip !147
  store i64 %145, i64* %R14, align 8, !mcsema_real_eip !147
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_131 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_132 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_131, i64 16
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 %145, i64* %_allin_new_bt_133, align 8, !mcsema_real_eip !148
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_134 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_135 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_134, i64 24
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %R10_val.238 = load i64, i64* %R10, align 8, !mcsema_real_eip !149
  store i64 %R10_val.238, i64* %_allin_new_bt_136, align 8, !mcsema_real_eip !149
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.239 = load i64, i64* %XSP, align 8, !mcsema_real_eip !150
  %_new_gep_138 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_137, i64 -8
  %146 = add i64 %RSP_val.239, -8
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_139, align 8, !mcsema_real_eip !150
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_, align 8
  store i64 %146, i64* %XSP, align 8, !mcsema_real_eip !150
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19521 = load i8*, i8** %12, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_138, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19521)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_197 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_198 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_197, i64 8
  store i8* %_gep_fix_198, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x261 to i64), i64* %XDI, align 8, !mcsema_real_eip !151
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14022 = load i8*, i8** %12, align 8
  %_new_gep_141 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14022, i64 -96
  %EAX_val.242 = load i32, i32* %EAX.178, align 4, !mcsema_real_eip !152
  %147 = bitcast i8* %_new_gep_141 to i32*
  store i32 %EAX_val.242, i32* %147, align 4, !mcsema_real_eip !152
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14323 = load i8*, i8** %12, align 8
  %_new_gep_144 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14323, i64 -96
  %148 = bitcast i8* %_new_gep_144 to i32*
  %149 = load i32, i32* %148, align 4, !mcsema_real_eip !153
  %150 = zext i32 %149 to i64, !mcsema_real_eip !153
  store i64 %150, i64* %XSI, align 8, !mcsema_real_eip !153
  %AL.244 = bitcast i64* %XAX to i8*, !mcsema_real_eip !154
  store i8 0, i8* %AL.244, align 1, !mcsema_real_eip !154
  %RDI_val.245 = load i64, i64* %XDI, align 8, !mcsema_real_eip !155
  %RDX_val.247 = load i64, i64* %XDX, align 8, !mcsema_real_eip !155
  %RCX_val.248 = load i64, i64* %XCX, align 8, !mcsema_real_eip !155
  %R8_val.249 = load i64, i64* %R8, align 8, !mcsema_real_eip !155
  %R9_val.250 = load i64, i64* %R9, align 8, !mcsema_real_eip !155
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146 = load i8*, i8** %_RSP_ptr_, align 8
  %_allin_new_bt_147 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146 to i64*
  %151 = load i64, i64* %_allin_new_bt_147, align 8, !mcsema_real_eip !155
  %_new_gep_148 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 8
  %_allin_new_bt_149 = bitcast i8* %_new_gep_148 to i64*
  %152 = load i64, i64* %_allin_new_bt_149, align 8, !mcsema_real_eip !155
  %_new_gep_150 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 16
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  %153 = load i64, i64* %_allin_new_bt_151, align 8, !mcsema_real_eip !155
  %_new_gep_152 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 24
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %154 = load i64, i64* %_allin_new_bt_153, align 8, !mcsema_real_eip !155
  %_new_gep_154 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 32
  %_allin_new_bt_155 = bitcast i8* %_new_gep_154 to i64*
  %155 = load i64, i64* %_allin_new_bt_155, align 8, !mcsema_real_eip !155
  %_new_gep_156 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 40
  %_allin_new_bt_157 = bitcast i8* %_new_gep_156 to i64*
  %156 = load i64, i64* %_allin_new_bt_157, align 8, !mcsema_real_eip !155
  %RSP_val.252 = load i64, i64* %XSP, align 8, !mcsema_real_eip !155
  %_new_gep_159 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 -8
  %157 = add i64 %RSP_val.252, -8
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_160, align 8, !mcsema_real_eip !155
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_, align 8
  store i64 %157, i64* %XSP, align 8, !mcsema_real_eip !155
  %158 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.245, i64 %150, i64 %RDX_val.247, i64 %RCX_val.248, i64 %R8_val.249, i64 %R9_val.250, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_199 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_200 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_199, i64 8
  store i8* %_gep_fix_200, i8** %_RSP_ptr_, align 8
  store i64 %158, i64* %XAX, align 8, !mcsema_real_eip !155
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16124 = load i8*, i8** %12, align 8
  %_new_gep_162 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16124, i64 -96
  %159 = bitcast i8* %_new_gep_162 to i32*
  %160 = load i32, i32* %159, align 4, !mcsema_real_eip !156
  %161 = zext i32 %160 to i64, !mcsema_real_eip !156
  store i64 %161, i64* %XSI, align 8, !mcsema_real_eip !156
  %_new_gep_165 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16124, i64 -132
  %162 = trunc i64 %158 to i32
  %163 = bitcast i8* %_new_gep_165 to i32*
  store i32 %162, i32* %163, align 4, !mcsema_real_eip !157
  %ESI.257 = bitcast i64* %XSI to i32*, !mcsema_real_eip !158
  %ESI_val.258 = load i32, i32* %ESI.257, align 4, !mcsema_real_eip !158
  %164 = zext i32 %ESI_val.258 to i64, !mcsema_real_eip !158
  store i64 %164, i64* %XAX, align 8, !mcsema_real_eip !158
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.259 = load i64, i64* %XSP, align 8, !mcsema_real_eip !159
  %_new_gep_168 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167, i64 160
  %165 = add i64 %RSP_val.259, 160, !mcsema_real_eip !159
  %_trans_p2i_169 = ptrtoint i8* %_new_gep_168 to i64
  %_trans_p2i_170 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167 to i64
  %_trans_xor_171 = xor i64 %_trans_p2i_169, %_trans_p2i_170
  %166 = and i64 %_trans_xor_171, 16, !mcsema_real_eip !159
  %167 = icmp ne i64 %166, 0, !mcsema_real_eip !159
  store i1 %167, i1* %AF, align 1, !mcsema_real_eip !159
  %168 = icmp slt i64 %165, 0
  store i1 %168, i1* %SF, align 1, !mcsema_real_eip !159
  %_trans_icmp_eq_173 = icmp eq i8* %_new_gep_168, null
  store i1 %_trans_icmp_eq_173, i1* %ZF, align 1, !mcsema_real_eip !159
  %169 = xor i64 %_trans_p2i_170, -9223372036854775808, !mcsema_real_eip !159
  %170 = and i64 %_trans_xor_171, %169, !mcsema_real_eip !159
  %171 = icmp slt i64 %170, 0
  store i1 %171, i1* %OF, align 1, !mcsema_real_eip !159
  %_trans_trunc_180 = trunc i64 %_trans_p2i_169 to i8
  %172 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_180), !mcsema_real_eip !159
  %173 = and i8 %172, 1
  %174 = icmp eq i8 %173, 0
  store i1 %174, i1* %PF, align 1, !mcsema_real_eip !159
  %_trans_icmp_ne_182 = icmp ne i64 %RSP_val.259, %_trans_p2i_169
  store i1 %_trans_icmp_ne_182, i1* %CF, align 1, !mcsema_real_eip !159
  store volatile i8* %_new_gep_168, i8** %_RSP_ptr_, align 8
  store i64 %165, i64* %XSP, align 8, !mcsema_real_eip !159
  %_allin_new_bt_184 = bitcast i8* %_new_gep_168 to i64*
  %175 = load i64, i64* %_allin_new_bt_184, align 8, !mcsema_real_eip !160
  store i64 %175, i64* %XBX, align 8, !mcsema_real_eip !160
  %_new_gep_185 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167, i64 168
  %176 = add i64 %RSP_val.259, 168, !mcsema_real_eip !160
  store volatile i8* %_new_gep_185, i8** %_RSP_ptr_, align 8
  store i64 %176, i64* %XSP, align 8, !mcsema_real_eip !160
  %_allin_new_bt_187 = bitcast i8* %_new_gep_185 to i64*
  %177 = load i64, i64* %_allin_new_bt_187, align 8, !mcsema_real_eip !161
  store i64 %177, i64* %R14, align 8, !mcsema_real_eip !161
  %_new_gep_188 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167, i64 176
  %178 = add i64 %RSP_val.259, 176, !mcsema_real_eip !161
  store volatile i8* %_new_gep_188, i8** %_RSP_ptr_, align 8
  store i64 %178, i64* %XSP, align 8, !mcsema_real_eip !161
  %_allin_new_bt_190 = bitcast i8* %_new_gep_188 to i64*
  %179 = load i64, i64* %_allin_new_bt_190, align 8, !mcsema_real_eip !162
  store volatile i64 %179, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %179, i64* %XBP, align 8, !mcsema_real_eip !162
  %_new_gep_191 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167, i64 184
  %180 = add i64 %RSP_val.259, 184, !mcsema_real_eip !162
  store volatile i8* %_new_gep_191, i8** %_RSP_ptr_, align 8
  store i64 %180, i64* %XSP, align 8, !mcsema_real_eip !162
  %_new_gep_193 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167, i64 192
  %181 = add i64 %RSP_val.259, 192, !mcsema_real_eip !163
  %_allin_new_bt_194 = bitcast i8* %_new_gep_191 to i64*
  %182 = load i64, i64* %_allin_new_bt_194, align 8, !mcsema_real_eip !163
  store i64 %182, i64* %XIP, align 8, !mcsema_real_eip !163
  store volatile i8* %_new_gep_193, i8** %_RSP_ptr_, align 8
  store i64 %181, i64* %XSP, align 8, !mcsema_real_eip !163
  ret void, !mcsema_real_eip !163
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [108 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 108
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
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
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 100
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, align 8, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr inbounds [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 92
  %2 = add i64 %RSP_val.1, -16
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.3, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 140
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 32
  %_cond1_ = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_6
  %3 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %3, align 8
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 132
  %_pot_address_in_parent_stack_210 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 24
  %_cond1_211 = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_212 = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_213 = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_214 = or i1 %_cond2_1_212, %_cond2_2_213
  %_cond4_215 = icmp ule i8* %_pot_address_in_parent_stack_210, %_parent_stack_end_ptr_
  %_cond1_n_cond2_216 = and i1 %_cond1_211, %_cond2_214
  %_cond1_n_cond2_cond3_217 = and i1 %_cond1_n_cond2_216, %_cond4_215
  %_address_in_parent_stack_bt_219._allin_new_bt_10.v = select i1 %_cond1_n_cond2_cond3_217, i8* %_pot_address_in_parent_stack_210, i8* %_new_gep_9
  %_address_in_parent_stack_bt_219._allin_new_bt_10 = bitcast i8* %_address_in_parent_stack_bt_219._allin_new_bt_10.v to i64*
  %_new_load_220 = load i64, i64* %_address_in_parent_stack_bt_219._allin_new_bt_10, align 8
  store i64 %_new_load_220, i64* %R10, align 8, !mcsema_real_eip !6
  %_new_gep_12 = getelementptr [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 124
  %_pot_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 16
  %_cond1_226 = icmp ugt i8* %_new_gep_12, %_local_stack_end_ptr_
  %_cond2_1_227 = icmp ugt i8* %_new_gep_12, %_parent_stack_end_ptr_
  %_cond2_2_228 = icmp ult i8* %_new_gep_12, %_parent_stack_start_ptr_
  %_cond2_229 = or i1 %_cond2_1_227, %_cond2_2_228
  %_cond4_230 = icmp ule i8* %_pot_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond1_n_cond2_231 = and i1 %_cond1_226, %_cond2_229
  %_cond1_n_cond2_cond3_232 = and i1 %_cond1_n_cond2_231, %_cond4_230
  %.v2 = select i1 %_cond1_n_cond2_cond3_232, i8* %_pot_address_in_parent_stack_225, i8* %_new_gep_12
  %4 = bitcast i8* %.v2 to i64*
  %_new_load_235 = load i64, i64* %4, align 8
  store i64 %_new_load_235, i64* %R11, align 8, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 116
  %_pot_address_in_parent_stack_240 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_241 = icmp ugt i8* %_new_gep_15, %_local_stack_end_ptr_
  %_cond2_1_242 = icmp ugt i8* %_new_gep_15, %_parent_stack_end_ptr_
  %_cond2_2_243 = icmp ult i8* %_new_gep_15, %_parent_stack_start_ptr_
  %_cond2_244 = or i1 %_cond2_1_242, %_cond2_2_243
  %_cond4_245 = icmp ule i8* %_pot_address_in_parent_stack_240, %_parent_stack_end_ptr_
  %_cond1_n_cond2_246 = and i1 %_cond1_241, %_cond2_244
  %_cond1_n_cond2_cond3_247 = and i1 %_cond1_n_cond2_246, %_cond4_245
  %_address_in_parent_stack_bt_249..v = select i1 %_cond1_n_cond2_cond3_247, i8* %_pot_address_in_parent_stack_240, i8* %_new_gep_15
  %_address_in_parent_stack_bt_249. = bitcast i8* %_address_in_parent_stack_bt_249..v to i32*
  %_new_load_250 = load i32, i32* %_address_in_parent_stack_bt_249., align 4
  %5 = zext i32 %_new_load_250 to i64, !mcsema_real_eip !8
  store i64 %5, i64* %XBX, align 8, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr inbounds [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, align 4, !mcsema_real_eip !9
  %6 = bitcast i8* %_new_gep_18 to i32*
  store i32 %EDI_val.11, i32* %6, align 4, !mcsema_real_eip !9
  %_new_gep_21 = getelementptr inbounds [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 76
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %RSI_val.13 = load i64, i64* %XSI, align 8, !mcsema_real_eip !10
  store i64 %RSI_val.13, i64* %_allin_new_bt_22, align 8, !mcsema_real_eip !10
  %_new_gep_27 = getelementptr inbounds [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 60
  %7 = bitcast i64* %XCX to <2 x i64>*
  %8 = load <2 x i64>, <2 x i64>* %7, align 8
  %9 = bitcast i8* %_new_gep_27 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %9, align 8
  %_new_gep_30 = getelementptr inbounds [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %R8D.19 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.20 = load i32, i32* %R8D.19, align 4, !mcsema_real_eip !13
  %10 = bitcast i8* %_new_gep_30 to i32*
  store i32 %R8D_val.20, i32* %10, align 4, !mcsema_real_eip !13
  %_new_gep_33 = getelementptr inbounds [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %R9D.22 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.23 = load i32, i32* %R9D.22, align 4, !mcsema_real_eip !14
  %11 = bitcast i8* %_new_gep_33 to i32*
  store i32 %R9D_val.23, i32* %11, align 4, !mcsema_real_eip !14
  %_new_gep_36 = getelementptr inbounds [108 x i8], [108 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %12 = bitcast i8* %_new_gep_36 to i32*
  store i32 %_new_load_250, i32* %12, align 4, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_38, i64 -64
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  store i64 %_new_load_235, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -72
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %R10_val.30 = load i64, i64* %R10, align 8, !mcsema_real_eip !17
  store i64 %R10_val.30, i64* %_allin_new_bt_43, align 8, !mcsema_real_eip !17
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_44, i64 -80
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %RAX_val.32 = load i64, i64* %XAX, align 8, !mcsema_real_eip !18
  store i64 %RAX_val.32, i64* %_allin_new_bt_46, align 8, !mcsema_real_eip !18
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47, i64 -84
  %13 = bitcast i8* %_new_gep_48 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -12
  %14 = ptrtoint i8* %_new_gep_51 to i64
  %_offset_above_rbp_254 = sub i64 %14, %_local_end_to_int_
  %_pot_address_in_parent_stack_255 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_254
  %_cond1_256 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_257 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_258 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_259 = or i1 %_cond2_1_257, %_cond2_2_258
  %_cond4_260 = icmp ule i8* %_pot_address_in_parent_stack_255, %_parent_stack_end_ptr_
  %_cond1_n_cond2_261 = and i1 %_cond1_256, %_cond2_259
  %_cond1_n_cond2_cond3_262 = and i1 %_cond1_n_cond2_261, %_cond4_260
  %.v3 = select i1 %_cond1_n_cond2_cond3_262, i8* %_pot_address_in_parent_stack_255, i8* %_new_gep_51
  %15 = bitcast i8* %.v3 to i32*
  %_new_load_265 = load i32, i32* %15, align 4
  %16 = zext i32 %_new_load_265 to i64, !mcsema_real_eip !20
  store i64 %16, i64* %XDI, align 8, !mcsema_real_eip !20
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -84
  %17 = ptrtoint i8* %_new_gep_54 to i64
  %18 = bitcast i8* %_new_gep_54 to i32*
  %_offset_above_rbp_269 = sub i64 %17, %_local_end_to_int_
  %_pot_address_in_parent_stack_270 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_269
  %_cond1_271 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_272 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_273 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_274 = or i1 %_cond2_1_272, %_cond2_2_273
  %_cond4_275 = icmp ule i8* %_pot_address_in_parent_stack_270, %_parent_stack_end_ptr_
  %_cond1_n_cond2_276 = and i1 %_cond1_271, %_cond2_274
  %_cond1_n_cond2_cond3_277 = and i1 %_cond1_n_cond2_276, %_cond4_275
  %_address_in_parent_stack_bt_279 = bitcast i8* %_pot_address_in_parent_stack_270 to i32*
  %_address_in_parent_stack_bt_279. = select i1 %_cond1_n_cond2_cond3_277, i32* %_address_in_parent_stack_bt_279, i32* %18
  %_new_load_280 = load i32, i32* %_address_in_parent_stack_bt_279., align 4
  %19 = add i32 %_new_load_265, %_new_load_280, !mcsema_real_eip !21
  %20 = xor i32 %19, %_new_load_280, !mcsema_real_eip !21
  %21 = xor i32 %20, %_new_load_265, !mcsema_real_eip !21
  %22 = and i32 %21, 16, !mcsema_real_eip !21
  %23 = icmp ne i32 %22, 0, !mcsema_real_eip !21
  store i1 %23, i1* %AF, align 1, !mcsema_real_eip !21
  %24 = icmp slt i32 %19, 0
  store i1 %24, i1* %SF, align 1, !mcsema_real_eip !21
  %25 = icmp eq i32 %19, 0, !mcsema_real_eip !21
  store i1 %25, i1* %ZF, align 1, !mcsema_real_eip !21
  %26 = xor i32 %_new_load_280, -2147483648, !mcsema_real_eip !21
  %27 = xor i32 %26, %_new_load_265, !mcsema_real_eip !21
  %28 = and i32 %20, %27, !mcsema_real_eip !21
  %29 = icmp slt i32 %28, 0
  store i1 %29, i1* %OF, align 1, !mcsema_real_eip !21
  %30 = trunc i32 %19 to i8, !mcsema_real_eip !21
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !21
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  store i1 %33, i1* %PF, align 1, !mcsema_real_eip !21
  %34 = icmp ult i32 %19, %_new_load_280, !mcsema_real_eip !21
  store i1 %34, i1* %CF, align 1, !mcsema_real_eip !21
  %35 = zext i32 %19 to i64, !mcsema_real_eip !21
  store i64 %35, i64* %XDI, align 8, !mcsema_real_eip !21
  store i32 %19, i32* %18, align 4, !mcsema_real_eip !22
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59, i64 -88
  %36 = bitcast i8* %_new_gep_60 to i32*
  store i32 0, i32* %36, align 4, !mcsema_real_eip !23
  br label %block_0x51, !mcsema_real_eip !24

block_0x51:                                       ; preds = %block_0x5d, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_63 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -88
  %37 = ptrtoint i8* %_new_gep_63 to i64
  %_offset_above_rbp_284 = sub i64 %37, %_local_end_to_int_
  %_pot_address_in_parent_stack_285 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_284
  %_cond1_286 = icmp ugt i8* %_new_gep_63, %_local_stack_end_ptr_
  %_cond2_1_287 = icmp ugt i8* %_new_gep_63, %_parent_stack_end_ptr_
  %_cond2_2_288 = icmp ult i8* %_new_gep_63, %_parent_stack_start_ptr_
  %_cond2_289 = or i1 %_cond2_1_287, %_cond2_2_288
  %_cond4_290 = icmp ule i8* %_pot_address_in_parent_stack_285, %_parent_stack_end_ptr_
  %_cond1_n_cond2_291 = and i1 %_cond1_286, %_cond2_289
  %_cond1_n_cond2_cond3_292 = and i1 %_cond1_n_cond2_291, %_cond4_290
  %_address_in_parent_stack_bt_294..v = select i1 %_cond1_n_cond2_cond3_292, i8* %_pot_address_in_parent_stack_285, i8* %_new_gep_63
  %_address_in_parent_stack_bt_294. = bitcast i8* %_address_in_parent_stack_bt_294..v to i32*
  %_new_load_295 = load i32, i32* %_address_in_parent_stack_bt_294., align 4
  %38 = zext i32 %_new_load_295 to i64, !mcsema_real_eip !24
  store i64 %38, i64* %XAX, align 8, !mcsema_real_eip !24
  %_new_gep_66 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -44
  %39 = ptrtoint i8* %_new_gep_66 to i64
  %_offset_above_rbp_299 = sub i64 %39, %_local_end_to_int_
  %_pot_address_in_parent_stack_300 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_299
  %_cond1_301 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_302 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_303 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_304 = or i1 %_cond2_1_302, %_cond2_2_303
  %_cond4_305 = icmp ule i8* %_pot_address_in_parent_stack_300, %_parent_stack_end_ptr_
  %_cond1_n_cond2_306 = and i1 %_cond1_301, %_cond2_304
  %_cond1_n_cond2_cond3_307 = and i1 %_cond1_n_cond2_306, %_cond4_305
  %.v4 = select i1 %_cond1_n_cond2_cond3_307, i8* %_pot_address_in_parent_stack_300, i8* %_new_gep_66
  %40 = bitcast i8* %.v4 to i32*
  %_new_load_310 = load i32, i32* %40, align 4
  %41 = sub i32 %_new_load_295, %_new_load_310, !mcsema_real_eip !25
  %42 = xor i32 %41, %_new_load_295, !mcsema_real_eip !25
  %43 = xor i32 %42, %_new_load_310, !mcsema_real_eip !25
  %44 = and i32 %43, 16, !mcsema_real_eip !25
  %45 = icmp ne i32 %44, 0, !mcsema_real_eip !25
  store i1 %45, i1* %AF, align 1, !mcsema_real_eip !25
  %46 = trunc i32 %41 to i8, !mcsema_real_eip !25
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !25
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  store i1 %49, i1* %PF, align 1, !mcsema_real_eip !25
  %50 = icmp eq i32 %41, 0, !mcsema_real_eip !25
  store i1 %50, i1* %ZF, align 1, !mcsema_real_eip !25
  %51 = icmp slt i32 %41, 0
  store i1 %51, i1* %SF, align 1, !mcsema_real_eip !25
  %52 = icmp ult i32 %_new_load_295, %_new_load_310, !mcsema_real_eip !25
  store i1 %52, i1* %CF, align 1, !mcsema_real_eip !25
  %53 = xor i32 %_new_load_310, %_new_load_295, !mcsema_real_eip !25
  %54 = and i32 %42, %53, !mcsema_real_eip !25
  %55 = icmp slt i32 %54, 0
  store i1 %55, i1* %OF, align 1, !mcsema_real_eip !25
  %tmp = xor i1 %51, %55
  br i1 %tmp, label %block_0x5d, label %block_0x7c, !mcsema_real_eip !26

block_0x5d:                                       ; preds = %block_0x51
  %_new_gep_69 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -24
  %_ptr_to_int_311 = ptrtoint i8* %_new_gep_69 to i64
  %_offset_above_rbp_314 = sub i64 %_ptr_to_int_311, %_local_end_to_int_
  %_pot_address_in_parent_stack_315 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_314
  %_cond1_316 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_317 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_318 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_319 = or i1 %_cond2_1_317, %_cond2_2_318
  %_cond4_320 = icmp ule i8* %_pot_address_in_parent_stack_315, %_parent_stack_end_ptr_
  %_cond1_n_cond2_321 = and i1 %_cond1_316, %_cond2_319
  %_cond1_n_cond2_cond3_322 = and i1 %_cond1_n_cond2_321, %_cond4_320
  %_address_in_parent_stack_bt_324._allin_new_bt_70.v = select i1 %_cond1_n_cond2_cond3_322, i8* %_pot_address_in_parent_stack_315, i8* %_new_gep_69
  %_address_in_parent_stack_bt_324._allin_new_bt_70 = bitcast i8* %_address_in_parent_stack_bt_324._allin_new_bt_70.v to i64*
  %_new_load_325 = load i64, i64* %_address_in_parent_stack_bt_324._allin_new_bt_70, align 8
  store i64 %_new_load_325, i64* %XAX, align 8, !mcsema_real_eip !27
  %_new_load_340 = load i32, i32* %_address_in_parent_stack_bt_294., align 4
  %56 = sext i32 %_new_load_340 to i64, !mcsema_real_eip !28
  store i64 %56, i64* %XCX, align 8, !mcsema_real_eip !28
  %57 = shl nsw i64 %56, 2
  %58 = add i64 %57, %_new_load_325, !mcsema_real_eip !29
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !29
  %_ptr_bt_343 = inttoptr i64 %58 to i8*
  %_offset_above_rbp_344 = sub i64 %58, %_local_end_to_int_
  %_pot_address_in_parent_stack_345 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_344
  %_cond1_346 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_343
  %_cond2_1_347 = icmp ugt i8* %_ptr_bt_343, %_parent_stack_end_ptr_
  %_cond2_2_348 = icmp ult i8* %_ptr_bt_343, %_parent_stack_start_ptr_
  %_cond2_349 = or i1 %_cond2_1_347, %_cond2_2_348
  %_cond4_350 = icmp ule i8* %_pot_address_in_parent_stack_345, %_parent_stack_end_ptr_
  %_cond1_n_cond2_351 = and i1 %_cond1_346, %_cond2_349
  %_cond1_n_cond2_cond3_352 = and i1 %_cond4_350, %_cond1_n_cond2_351
  %_address_in_parent_stack_bt_354 = bitcast i8* %_pot_address_in_parent_stack_345 to i32*
  %_address_in_parent_stack_bt_354. = select i1 %_cond1_n_cond2_cond3_352, i32* %_address_in_parent_stack_bt_354, i32* %59
  %_new_load_355 = load i32, i32* %_address_in_parent_stack_bt_354., align 4
  %60 = zext i32 %_new_load_355 to i64, !mcsema_real_eip !29
  store i64 %60, i64* %XDX, align 8, !mcsema_real_eip !29
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -84
  %61 = ptrtoint i8* %_new_gep_75 to i64
  %62 = bitcast i8* %_new_gep_75 to i32*
  %_offset_above_rbp_359 = sub i64 %61, %_local_end_to_int_
  %_pot_address_in_parent_stack_360 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_359
  %_cond1_361 = icmp ugt i8* %_new_gep_75, %_local_stack_end_ptr_
  %_cond2_1_362 = icmp ugt i8* %_new_gep_75, %_parent_stack_end_ptr_
  %_cond2_2_363 = icmp ult i8* %_new_gep_75, %_parent_stack_start_ptr_
  %_cond2_364 = or i1 %_cond2_1_362, %_cond2_2_363
  %_cond4_365 = icmp ule i8* %_pot_address_in_parent_stack_360, %_parent_stack_end_ptr_
  %_cond1_n_cond2_366 = and i1 %_cond1_361, %_cond2_364
  %_cond1_n_cond2_cond3_367 = and i1 %_cond1_n_cond2_366, %_cond4_365
  %_address_in_parent_stack_bt_369 = bitcast i8* %_pot_address_in_parent_stack_360 to i32*
  %63 = select i1 %_cond1_n_cond2_cond3_367, i32* %_address_in_parent_stack_bt_369, i32* %62
  %_new_load_370 = load i32, i32* %63, align 4
  %64 = add i32 %_new_load_355, %_new_load_370, !mcsema_real_eip !30
  %65 = xor i32 %64, %_new_load_370, !mcsema_real_eip !30
  %66 = xor i32 %65, %_new_load_355, !mcsema_real_eip !30
  %67 = and i32 %66, 16, !mcsema_real_eip !30
  %68 = icmp ne i32 %67, 0, !mcsema_real_eip !30
  store i1 %68, i1* %AF, align 1, !mcsema_real_eip !30
  %69 = icmp slt i32 %64, 0
  store i1 %69, i1* %SF, align 1, !mcsema_real_eip !30
  %70 = icmp eq i32 %64, 0, !mcsema_real_eip !30
  store i1 %70, i1* %ZF, align 1, !mcsema_real_eip !30
  %71 = xor i32 %_new_load_370, -2147483648, !mcsema_real_eip !30
  %72 = xor i32 %71, %_new_load_355, !mcsema_real_eip !30
  %73 = and i32 %65, %72, !mcsema_real_eip !30
  %74 = icmp slt i32 %73, 0
  store i1 %74, i1* %OF, align 1, !mcsema_real_eip !30
  %75 = trunc i32 %64 to i8, !mcsema_real_eip !30
  %76 = call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !30
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !30
  %79 = icmp ult i32 %64, %_new_load_370, !mcsema_real_eip !30
  store i1 %79, i1* %CF, align 1, !mcsema_real_eip !30
  %80 = zext i32 %64 to i64, !mcsema_real_eip !30
  store i64 %80, i64* %XDX, align 8, !mcsema_real_eip !30
  store i32 %64, i32* %62, align 4, !mcsema_real_eip !31
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_80, i64 -88
  %81 = ptrtoint i8* %_new_gep_81 to i64
  %82 = bitcast i8* %_new_gep_81 to i32*
  %_offset_above_rbp_374 = sub i64 %81, %_local_end_to_int_
  %_pot_address_in_parent_stack_375 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_374
  %_cond1_376 = icmp ugt i8* %_new_gep_81, %_local_stack_end_ptr_
  %_cond2_1_377 = icmp ugt i8* %_new_gep_81, %_parent_stack_end_ptr_
  %_cond2_2_378 = icmp ult i8* %_new_gep_81, %_parent_stack_start_ptr_
  %_cond2_379 = or i1 %_cond2_1_377, %_cond2_2_378
  %_cond4_380 = icmp ule i8* %_pot_address_in_parent_stack_375, %_parent_stack_end_ptr_
  %_cond1_n_cond2_381 = and i1 %_cond1_376, %_cond2_379
  %_cond1_n_cond2_cond3_382 = and i1 %_cond1_n_cond2_381, %_cond4_380
  %_address_in_parent_stack_bt_384 = bitcast i8* %_pot_address_in_parent_stack_375 to i32*
  %_address_in_parent_stack_bt_384. = select i1 %_cond1_n_cond2_cond3_382, i32* %_address_in_parent_stack_bt_384, i32* %82
  %_new_load_385 = load i32, i32* %_address_in_parent_stack_bt_384., align 4
  %83 = add i32 %_new_load_385, 1, !mcsema_real_eip !33
  %84 = xor i32 %83, %_new_load_385, !mcsema_real_eip !33
  %85 = and i32 %84, 16, !mcsema_real_eip !33
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !33
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !33
  %87 = icmp slt i32 %83, 0
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !33
  %88 = icmp eq i32 %83, 0, !mcsema_real_eip !33
  store i1 %88, i1* %ZF, align 1, !mcsema_real_eip !33
  %89 = xor i32 %_new_load_385, -2147483648, !mcsema_real_eip !33
  %90 = and i32 %84, %89, !mcsema_real_eip !33
  %91 = icmp slt i32 %90, 0
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !33
  %92 = trunc i32 %83 to i8, !mcsema_real_eip !33
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !33
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !33
  %96 = icmp eq i32 %_new_load_385, -1
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !33
  %97 = zext i32 %83 to i64, !mcsema_real_eip !33
  store i64 %97, i64* %XAX, align 8, !mcsema_real_eip !33
  store i32 %83, i32* %82, align 4, !mcsema_real_eip !34
  br label %block_0x51, !mcsema_real_eip !35

block_0x7c:                                       ; preds = %block_0x51
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -32
  %_ptr_to_int_386 = ptrtoint i8* %_new_gep_87 to i64
  %_offset_above_rbp_389 = sub i64 %_ptr_to_int_386, %_local_end_to_int_
  %_pot_address_in_parent_stack_390 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_389
  %_cond1_391 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_392 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_393 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_394 = or i1 %_cond2_1_392, %_cond2_2_393
  %_cond4_395 = icmp ule i8* %_pot_address_in_parent_stack_390, %_parent_stack_end_ptr_
  %_cond1_n_cond2_396 = and i1 %_cond1_391, %_cond2_394
  %_cond1_n_cond2_cond3_397 = and i1 %_cond1_n_cond2_396, %_cond4_395
  %_address_in_parent_stack_bt_399._allin_new_bt_88.v = select i1 %_cond1_n_cond2_cond3_397, i8* %_pot_address_in_parent_stack_390, i8* %_new_gep_87
  %_address_in_parent_stack_bt_399._allin_new_bt_88 = bitcast i8* %_address_in_parent_stack_bt_399._allin_new_bt_88.v to i64*
  %_new_load_400 = load i64, i64* %_address_in_parent_stack_bt_399._allin_new_bt_88, align 8
  store i64 %_new_load_400, i64* %XAX, align 8, !mcsema_real_eip !36
  %98 = inttoptr i64 %_new_load_400 to i32*, !mcsema_real_eip !37
  %_ptr_bt_403 = inttoptr i64 %_new_load_400 to i8*
  %_offset_above_rbp_404 = sub i64 %_new_load_400, %_local_end_to_int_
  %_pot_address_in_parent_stack_405 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_404
  %_cond1_406 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_403
  %_cond2_1_407 = icmp ugt i8* %_ptr_bt_403, %_parent_stack_end_ptr_
  %_cond2_2_408 = icmp ult i8* %_ptr_bt_403, %_parent_stack_start_ptr_
  %_cond2_409 = or i1 %_cond2_1_407, %_cond2_2_408
  %_cond4_410 = icmp ule i8* %_pot_address_in_parent_stack_405, %_parent_stack_end_ptr_
  %_cond1_n_cond2_411 = and i1 %_cond1_406, %_cond2_409
  %_cond1_n_cond2_cond3_412 = and i1 %_cond4_410, %_cond1_n_cond2_411
  %_address_in_parent_stack_bt_414 = bitcast i8* %_pot_address_in_parent_stack_405 to i32*
  %99 = select i1 %_cond1_n_cond2_cond3_412, i32* %_address_in_parent_stack_bt_414, i32* %98
  %_new_load_415 = load i32, i32* %99, align 4
  %100 = zext i32 %_new_load_415 to i64, !mcsema_real_eip !37
  store i64 %100, i64* %XCX, align 8, !mcsema_real_eip !37
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -84
  %101 = ptrtoint i8* %_new_gep_90 to i64
  %102 = bitcast i8* %_new_gep_90 to i32*
  %_offset_above_rbp_419 = sub i64 %101, %_local_end_to_int_
  %_pot_address_in_parent_stack_420 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_419
  %_cond1_421 = icmp ugt i8* %_new_gep_90, %_local_stack_end_ptr_
  %_cond2_1_422 = icmp ugt i8* %_new_gep_90, %_parent_stack_end_ptr_
  %_cond2_2_423 = icmp ult i8* %_new_gep_90, %_parent_stack_start_ptr_
  %_cond2_424 = or i1 %_cond2_1_422, %_cond2_2_423
  %_cond4_425 = icmp ule i8* %_pot_address_in_parent_stack_420, %_parent_stack_end_ptr_
  %_cond1_n_cond2_426 = and i1 %_cond1_421, %_cond2_424
  %_cond1_n_cond2_cond3_427 = and i1 %_cond1_n_cond2_426, %_cond4_425
  %_address_in_parent_stack_bt_429 = bitcast i8* %_pot_address_in_parent_stack_420 to i32*
  %_address_in_parent_stack_bt_429. = select i1 %_cond1_n_cond2_cond3_427, i32* %_address_in_parent_stack_bt_429, i32* %102
  %_new_load_430 = load i32, i32* %_address_in_parent_stack_bt_429., align 4
  %103 = add i32 %_new_load_415, %_new_load_430, !mcsema_real_eip !38
  %104 = xor i32 %103, %_new_load_430, !mcsema_real_eip !38
  %105 = xor i32 %104, %_new_load_415, !mcsema_real_eip !38
  %106 = and i32 %105, 16, !mcsema_real_eip !38
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !38
  store i1 %107, i1* %AF, align 1, !mcsema_real_eip !38
  %108 = icmp slt i32 %103, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !38
  %109 = icmp eq i32 %103, 0, !mcsema_real_eip !38
  store i1 %109, i1* %ZF, align 1, !mcsema_real_eip !38
  %110 = xor i32 %_new_load_430, -2147483648, !mcsema_real_eip !38
  %111 = xor i32 %110, %_new_load_415, !mcsema_real_eip !38
  %112 = and i32 %104, %111, !mcsema_real_eip !38
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF, align 1, !mcsema_real_eip !38
  %114 = trunc i32 %103 to i8, !mcsema_real_eip !38
  %115 = call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !38
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !38
  %118 = icmp ult i32 %103, %_new_load_430, !mcsema_real_eip !38
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !38
  %119 = zext i32 %103 to i64, !mcsema_real_eip !38
  store i64 %119, i64* %XCX, align 8, !mcsema_real_eip !38
  store i32 %103, i32* %102, align 4, !mcsema_real_eip !39
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_96 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_95, i64 -92
  %120 = bitcast i8* %_new_gep_96 to i32*
  store i32 0, i32* %120, align 4, !mcsema_real_eip !40
  br label %block_0x8f, !mcsema_real_eip !41

block_0x8f:                                       ; preds = %block_0x9b, %block_0x7c
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_98 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_99 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_98, i64 -92
  %121 = ptrtoint i8* %_new_gep_99 to i64
  %_offset_above_rbp_434 = sub i64 %121, %_local_end_to_int_
  %_pot_address_in_parent_stack_435 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_434
  %_cond1_436 = icmp ugt i8* %_new_gep_99, %_local_stack_end_ptr_
  %_cond2_1_437 = icmp ugt i8* %_new_gep_99, %_parent_stack_end_ptr_
  %_cond2_2_438 = icmp ult i8* %_new_gep_99, %_parent_stack_start_ptr_
  %_cond2_439 = or i1 %_cond2_1_437, %_cond2_2_438
  %_cond4_440 = icmp ule i8* %_pot_address_in_parent_stack_435, %_parent_stack_end_ptr_
  %_cond1_n_cond2_441 = and i1 %_cond1_436, %_cond2_439
  %_cond1_n_cond2_cond3_442 = and i1 %_cond1_n_cond2_441, %_cond4_440
  %_address_in_parent_stack_bt_444..v = select i1 %_cond1_n_cond2_cond3_442, i8* %_pot_address_in_parent_stack_435, i8* %_new_gep_99
  %_address_in_parent_stack_bt_444. = bitcast i8* %_address_in_parent_stack_bt_444..v to i32*
  %_new_load_445 = load i32, i32* %_address_in_parent_stack_bt_444., align 4
  %122 = zext i32 %_new_load_445 to i64, !mcsema_real_eip !41
  store i64 %122, i64* %XAX, align 8, !mcsema_real_eip !41
  %_new_gep_102 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_98, i64 -48
  %123 = ptrtoint i8* %_new_gep_102 to i64
  %_offset_above_rbp_449 = sub i64 %123, %_local_end_to_int_
  %_pot_address_in_parent_stack_450 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_449
  %_cond1_451 = icmp ugt i8* %_new_gep_102, %_local_stack_end_ptr_
  %_cond2_1_452 = icmp ugt i8* %_new_gep_102, %_parent_stack_end_ptr_
  %_cond2_2_453 = icmp ult i8* %_new_gep_102, %_parent_stack_start_ptr_
  %_cond2_454 = or i1 %_cond2_1_452, %_cond2_2_453
  %_cond4_455 = icmp ule i8* %_pot_address_in_parent_stack_450, %_parent_stack_end_ptr_
  %_cond1_n_cond2_456 = and i1 %_cond1_451, %_cond2_454
  %_cond1_n_cond2_cond3_457 = and i1 %_cond1_n_cond2_456, %_cond4_455
  %.v5 = select i1 %_cond1_n_cond2_cond3_457, i8* %_pot_address_in_parent_stack_450, i8* %_new_gep_102
  %124 = bitcast i8* %.v5 to i32*
  %_new_load_460 = load i32, i32* %124, align 4
  %125 = sub i32 %_new_load_445, %_new_load_460, !mcsema_real_eip !42
  %126 = xor i32 %125, %_new_load_445, !mcsema_real_eip !42
  %127 = xor i32 %126, %_new_load_460, !mcsema_real_eip !42
  %128 = and i32 %127, 16, !mcsema_real_eip !42
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !42
  store i1 %129, i1* %AF, align 1, !mcsema_real_eip !42
  %130 = trunc i32 %125 to i8, !mcsema_real_eip !42
  %131 = call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !42
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  store i1 %133, i1* %PF, align 1, !mcsema_real_eip !42
  %134 = icmp eq i32 %125, 0, !mcsema_real_eip !42
  store i1 %134, i1* %ZF, align 1, !mcsema_real_eip !42
  %135 = icmp slt i32 %125, 0
  store i1 %135, i1* %SF, align 1, !mcsema_real_eip !42
  %136 = icmp ult i32 %_new_load_445, %_new_load_460, !mcsema_real_eip !42
  store i1 %136, i1* %CF, align 1, !mcsema_real_eip !42
  %137 = xor i32 %_new_load_460, %_new_load_445, !mcsema_real_eip !42
  %138 = and i32 %126, %137, !mcsema_real_eip !42
  %139 = icmp slt i32 %138, 0
  store i1 %139, i1* %OF, align 1, !mcsema_real_eip !42
  %tmp6 = xor i1 %135, %139
  br i1 %tmp6, label %block_0x9b, label %block_0xba, !mcsema_real_eip !43

block_0x9b:                                       ; preds = %block_0x8f
  %_new_gep_105 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_98, i64 -40
  %_ptr_to_int_461 = ptrtoint i8* %_new_gep_105 to i64
  %_offset_above_rbp_464 = sub i64 %_ptr_to_int_461, %_local_end_to_int_
  %_pot_address_in_parent_stack_465 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_464
  %_cond1_466 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_467 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_468 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_469 = or i1 %_cond2_1_467, %_cond2_2_468
  %_cond4_470 = icmp ule i8* %_pot_address_in_parent_stack_465, %_parent_stack_end_ptr_
  %_cond1_n_cond2_471 = and i1 %_cond1_466, %_cond2_469
  %_cond1_n_cond2_cond3_472 = and i1 %_cond1_n_cond2_471, %_cond4_470
  %_address_in_parent_stack_bt_474._allin_new_bt_106.v = select i1 %_cond1_n_cond2_cond3_472, i8* %_pot_address_in_parent_stack_465, i8* %_new_gep_105
  %_address_in_parent_stack_bt_474._allin_new_bt_106 = bitcast i8* %_address_in_parent_stack_bt_474._allin_new_bt_106.v to i64*
  %_new_load_475 = load i64, i64* %_address_in_parent_stack_bt_474._allin_new_bt_106, align 8
  store i64 %_new_load_475, i64* %XAX, align 8, !mcsema_real_eip !44
  %_new_load_490 = load i32, i32* %_address_in_parent_stack_bt_444., align 4
  %140 = sext i32 %_new_load_490 to i64, !mcsema_real_eip !45
  store i64 %140, i64* %XCX, align 8, !mcsema_real_eip !45
  %141 = shl nsw i64 %140, 2
  %142 = add i64 %141, %_new_load_475, !mcsema_real_eip !46
  %143 = inttoptr i64 %142 to i32*, !mcsema_real_eip !46
  %_ptr_bt_493 = inttoptr i64 %142 to i8*
  %_offset_above_rbp_494 = sub i64 %142, %_local_end_to_int_
  %_pot_address_in_parent_stack_495 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_494
  %_cond1_496 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_493
  %_cond2_1_497 = icmp ugt i8* %_ptr_bt_493, %_parent_stack_end_ptr_
  %_cond2_2_498 = icmp ult i8* %_ptr_bt_493, %_parent_stack_start_ptr_
  %_cond2_499 = or i1 %_cond2_1_497, %_cond2_2_498
  %_cond4_500 = icmp ule i8* %_pot_address_in_parent_stack_495, %_parent_stack_end_ptr_
  %_cond1_n_cond2_501 = and i1 %_cond1_496, %_cond2_499
  %_cond1_n_cond2_cond3_502 = and i1 %_cond4_500, %_cond1_n_cond2_501
  %_address_in_parent_stack_bt_504 = bitcast i8* %_pot_address_in_parent_stack_495 to i32*
  %_address_in_parent_stack_bt_504. = select i1 %_cond1_n_cond2_cond3_502, i32* %_address_in_parent_stack_bt_504, i32* %143
  %_new_load_505 = load i32, i32* %_address_in_parent_stack_bt_504., align 4
  %144 = zext i32 %_new_load_505 to i64, !mcsema_real_eip !46
  store i64 %144, i64* %XDX, align 8, !mcsema_real_eip !46
  %_new_gep_111 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_98, i64 -84
  %145 = ptrtoint i8* %_new_gep_111 to i64
  %146 = bitcast i8* %_new_gep_111 to i32*
  %_offset_above_rbp_509 = sub i64 %145, %_local_end_to_int_
  %_pot_address_in_parent_stack_510 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_509
  %_cond1_511 = icmp ugt i8* %_new_gep_111, %_local_stack_end_ptr_
  %_cond2_1_512 = icmp ugt i8* %_new_gep_111, %_parent_stack_end_ptr_
  %_cond2_2_513 = icmp ult i8* %_new_gep_111, %_parent_stack_start_ptr_
  %_cond2_514 = or i1 %_cond2_1_512, %_cond2_2_513
  %_cond4_515 = icmp ule i8* %_pot_address_in_parent_stack_510, %_parent_stack_end_ptr_
  %_cond1_n_cond2_516 = and i1 %_cond1_511, %_cond2_514
  %_cond1_n_cond2_cond3_517 = and i1 %_cond1_n_cond2_516, %_cond4_515
  %_address_in_parent_stack_bt_519 = bitcast i8* %_pot_address_in_parent_stack_510 to i32*
  %147 = select i1 %_cond1_n_cond2_cond3_517, i32* %_address_in_parent_stack_bt_519, i32* %146
  %_new_load_520 = load i32, i32* %147, align 4
  %148 = add i32 %_new_load_505, %_new_load_520, !mcsema_real_eip !47
  %149 = xor i32 %148, %_new_load_520, !mcsema_real_eip !47
  %150 = xor i32 %149, %_new_load_505, !mcsema_real_eip !47
  %151 = and i32 %150, 16, !mcsema_real_eip !47
  %152 = icmp ne i32 %151, 0, !mcsema_real_eip !47
  store i1 %152, i1* %AF, align 1, !mcsema_real_eip !47
  %153 = icmp slt i32 %148, 0
  store i1 %153, i1* %SF, align 1, !mcsema_real_eip !47
  %154 = icmp eq i32 %148, 0, !mcsema_real_eip !47
  store i1 %154, i1* %ZF, align 1, !mcsema_real_eip !47
  %155 = xor i32 %_new_load_520, -2147483648, !mcsema_real_eip !47
  %156 = xor i32 %155, %_new_load_505, !mcsema_real_eip !47
  %157 = and i32 %149, %156, !mcsema_real_eip !47
  %158 = icmp slt i32 %157, 0
  store i1 %158, i1* %OF, align 1, !mcsema_real_eip !47
  %159 = trunc i32 %148 to i8, !mcsema_real_eip !47
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !47
  %161 = and i8 %160, 1
  %162 = icmp eq i8 %161, 0
  store i1 %162, i1* %PF, align 1, !mcsema_real_eip !47
  %163 = icmp ult i32 %148, %_new_load_520, !mcsema_real_eip !47
  store i1 %163, i1* %CF, align 1, !mcsema_real_eip !47
  %164 = zext i32 %148 to i64, !mcsema_real_eip !47
  store i64 %164, i64* %XDX, align 8, !mcsema_real_eip !47
  store i32 %148, i32* %146, align 4, !mcsema_real_eip !48
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_117 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_116, i64 -92
  %165 = ptrtoint i8* %_new_gep_117 to i64
  %166 = bitcast i8* %_new_gep_117 to i32*
  %_offset_above_rbp_524 = sub i64 %165, %_local_end_to_int_
  %_pot_address_in_parent_stack_525 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_524
  %_cond1_526 = icmp ugt i8* %_new_gep_117, %_local_stack_end_ptr_
  %_cond2_1_527 = icmp ugt i8* %_new_gep_117, %_parent_stack_end_ptr_
  %_cond2_2_528 = icmp ult i8* %_new_gep_117, %_parent_stack_start_ptr_
  %_cond2_529 = or i1 %_cond2_1_527, %_cond2_2_528
  %_cond4_530 = icmp ule i8* %_pot_address_in_parent_stack_525, %_parent_stack_end_ptr_
  %_cond1_n_cond2_531 = and i1 %_cond1_526, %_cond2_529
  %_cond1_n_cond2_cond3_532 = and i1 %_cond1_n_cond2_531, %_cond4_530
  %_address_in_parent_stack_bt_534 = bitcast i8* %_pot_address_in_parent_stack_525 to i32*
  %_address_in_parent_stack_bt_534. = select i1 %_cond1_n_cond2_cond3_532, i32* %_address_in_parent_stack_bt_534, i32* %166
  %_new_load_535 = load i32, i32* %_address_in_parent_stack_bt_534., align 4
  %167 = add i32 %_new_load_535, 1, !mcsema_real_eip !50
  %168 = xor i32 %167, %_new_load_535, !mcsema_real_eip !50
  %169 = and i32 %168, 16, !mcsema_real_eip !50
  %170 = icmp ne i32 %169, 0, !mcsema_real_eip !50
  store i1 %170, i1* %AF, align 1, !mcsema_real_eip !50
  %171 = icmp slt i32 %167, 0
  store i1 %171, i1* %SF, align 1, !mcsema_real_eip !50
  %172 = icmp eq i32 %167, 0, !mcsema_real_eip !50
  store i1 %172, i1* %ZF, align 1, !mcsema_real_eip !50
  %173 = xor i32 %_new_load_535, -2147483648, !mcsema_real_eip !50
  %174 = and i32 %168, %173, !mcsema_real_eip !50
  %175 = icmp slt i32 %174, 0
  store i1 %175, i1* %OF, align 1, !mcsema_real_eip !50
  %176 = trunc i32 %167 to i8, !mcsema_real_eip !50
  %177 = call i8 @llvm.ctpop.i8(i8 %176), !mcsema_real_eip !50
  %178 = and i8 %177, 1
  %179 = icmp eq i8 %178, 0
  store i1 %179, i1* %PF, align 1, !mcsema_real_eip !50
  %180 = icmp eq i32 %_new_load_535, -1
  store i1 %180, i1* %CF, align 1, !mcsema_real_eip !50
  %181 = zext i32 %167 to i64, !mcsema_real_eip !50
  store i64 %181, i64* %XAX, align 8, !mcsema_real_eip !50
  store i32 %167, i32* %166, align 4, !mcsema_real_eip !51
  br label %block_0x8f, !mcsema_real_eip !52

block_0xba:                                       ; preds = %block_0x8f
  %_new_gep_123 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_98, i64 -52
  %182 = ptrtoint i8* %_new_gep_123 to i64
  %_offset_above_rbp_539 = sub i64 %182, %_local_end_to_int_
  %_pot_address_in_parent_stack_540 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_539
  %_cond1_541 = icmp ugt i8* %_new_gep_123, %_local_stack_end_ptr_
  %_cond2_1_542 = icmp ugt i8* %_new_gep_123, %_parent_stack_end_ptr_
  %_cond2_2_543 = icmp ult i8* %_new_gep_123, %_parent_stack_start_ptr_
  %_cond2_544 = or i1 %_cond2_1_542, %_cond2_2_543
  %_cond4_545 = icmp ule i8* %_pot_address_in_parent_stack_540, %_parent_stack_end_ptr_
  %_cond1_n_cond2_546 = and i1 %_cond1_541, %_cond2_544
  %_cond1_n_cond2_cond3_547 = and i1 %_cond1_n_cond2_546, %_cond4_545
  %_address_in_parent_stack_bt_549..v = select i1 %_cond1_n_cond2_cond3_547, i8* %_pot_address_in_parent_stack_540, i8* %_new_gep_123
  %_address_in_parent_stack_bt_549. = bitcast i8* %_address_in_parent_stack_bt_549..v to i32*
  %_new_load_550 = load i32, i32* %_address_in_parent_stack_bt_549., align 4
  %183 = zext i32 %_new_load_550 to i64, !mcsema_real_eip !53
  store i64 %183, i64* %XAX, align 8, !mcsema_real_eip !53
  %_new_gep_126 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_98, i64 -84
  %184 = ptrtoint i8* %_new_gep_126 to i64
  %185 = bitcast i8* %_new_gep_126 to i32*
  %_offset_above_rbp_554 = sub i64 %184, %_local_end_to_int_
  %_pot_address_in_parent_stack_555 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_554
  %_cond1_556 = icmp ugt i8* %_new_gep_126, %_local_stack_end_ptr_
  %_cond2_1_557 = icmp ugt i8* %_new_gep_126, %_parent_stack_end_ptr_
  %_cond2_2_558 = icmp ult i8* %_new_gep_126, %_parent_stack_start_ptr_
  %_cond2_559 = or i1 %_cond2_1_557, %_cond2_2_558
  %_cond4_560 = icmp ule i8* %_pot_address_in_parent_stack_555, %_parent_stack_end_ptr_
  %_cond1_n_cond2_561 = and i1 %_cond1_556, %_cond2_559
  %_cond1_n_cond2_cond3_562 = and i1 %_cond1_n_cond2_561, %_cond4_560
  %_address_in_parent_stack_bt_564 = bitcast i8* %_pot_address_in_parent_stack_555 to i32*
  %186 = select i1 %_cond1_n_cond2_cond3_562, i32* %_address_in_parent_stack_bt_564, i32* %185
  %_new_load_565 = load i32, i32* %186, align 4
  %187 = add i32 %_new_load_550, %_new_load_565, !mcsema_real_eip !54
  %188 = xor i32 %187, %_new_load_565, !mcsema_real_eip !54
  %189 = xor i32 %188, %_new_load_550, !mcsema_real_eip !54
  %190 = and i32 %189, 16, !mcsema_real_eip !54
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !54
  store i1 %191, i1* %AF, align 1, !mcsema_real_eip !54
  %192 = icmp slt i32 %187, 0
  store i1 %192, i1* %SF, align 1, !mcsema_real_eip !54
  %193 = icmp eq i32 %187, 0, !mcsema_real_eip !54
  store i1 %193, i1* %ZF, align 1, !mcsema_real_eip !54
  %194 = xor i32 %_new_load_565, -2147483648, !mcsema_real_eip !54
  %195 = xor i32 %194, %_new_load_550, !mcsema_real_eip !54
  %196 = and i32 %188, %195, !mcsema_real_eip !54
  %197 = icmp slt i32 %196, 0
  store i1 %197, i1* %OF, align 1, !mcsema_real_eip !54
  %198 = trunc i32 %187 to i8, !mcsema_real_eip !54
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !54
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  store i1 %201, i1* %PF, align 1, !mcsema_real_eip !54
  %202 = icmp ult i32 %187, %_new_load_565, !mcsema_real_eip !54
  store i1 %202, i1* %CF, align 1, !mcsema_real_eip !54
  %203 = zext i32 %187 to i64, !mcsema_real_eip !54
  store i64 %203, i64* %XAX, align 8, !mcsema_real_eip !54
  store i32 %187, i32* %185, align 4, !mcsema_real_eip !55
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_131 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_132 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_131, i64 -96
  %204 = bitcast i8* %_new_gep_132 to i32*
  store i32 0, i32* %204, align 4, !mcsema_real_eip !56
  br label %block_0xca, !mcsema_real_eip !57

block_0xca:                                       ; preds = %block_0xd6, %block_0xba
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_135 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -96
  %205 = ptrtoint i8* %_new_gep_135 to i64
  %_offset_above_rbp_569 = sub i64 %205, %_local_end_to_int_
  %_pot_address_in_parent_stack_570 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_569
  %_cond1_571 = icmp ugt i8* %_new_gep_135, %_local_stack_end_ptr_
  %_cond2_1_572 = icmp ugt i8* %_new_gep_135, %_parent_stack_end_ptr_
  %_cond2_2_573 = icmp ult i8* %_new_gep_135, %_parent_stack_start_ptr_
  %_cond2_574 = or i1 %_cond2_1_572, %_cond2_2_573
  %_cond4_575 = icmp ule i8* %_pot_address_in_parent_stack_570, %_parent_stack_end_ptr_
  %_cond1_n_cond2_576 = and i1 %_cond1_571, %_cond2_574
  %_cond1_n_cond2_cond3_577 = and i1 %_cond1_n_cond2_576, %_cond4_575
  %_address_in_parent_stack_bt_579..v = select i1 %_cond1_n_cond2_cond3_577, i8* %_pot_address_in_parent_stack_570, i8* %_new_gep_135
  %_address_in_parent_stack_bt_579. = bitcast i8* %_address_in_parent_stack_bt_579..v to i32*
  %_new_load_580 = load i32, i32* %_address_in_parent_stack_bt_579., align 4
  %206 = zext i32 %_new_load_580 to i64, !mcsema_real_eip !57
  store i64 %206, i64* %XAX, align 8, !mcsema_real_eip !57
  %_new_gep_138 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -44
  %207 = ptrtoint i8* %_new_gep_138 to i64
  %_offset_above_rbp_584 = sub i64 %207, %_local_end_to_int_
  %_pot_address_in_parent_stack_585 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_584
  %_cond1_586 = icmp ugt i8* %_new_gep_138, %_local_stack_end_ptr_
  %_cond2_1_587 = icmp ugt i8* %_new_gep_138, %_parent_stack_end_ptr_
  %_cond2_2_588 = icmp ult i8* %_new_gep_138, %_parent_stack_start_ptr_
  %_cond2_589 = or i1 %_cond2_1_587, %_cond2_2_588
  %_cond4_590 = icmp ule i8* %_pot_address_in_parent_stack_585, %_parent_stack_end_ptr_
  %_cond1_n_cond2_591 = and i1 %_cond1_586, %_cond2_589
  %_cond1_n_cond2_cond3_592 = and i1 %_cond1_n_cond2_591, %_cond4_590
  %.v7 = select i1 %_cond1_n_cond2_cond3_592, i8* %_pot_address_in_parent_stack_585, i8* %_new_gep_138
  %208 = bitcast i8* %.v7 to i32*
  %_new_load_595 = load i32, i32* %208, align 4
  %209 = sub i32 %_new_load_580, %_new_load_595, !mcsema_real_eip !58
  %210 = xor i32 %209, %_new_load_580, !mcsema_real_eip !58
  %211 = xor i32 %210, %_new_load_595, !mcsema_real_eip !58
  %212 = and i32 %211, 16, !mcsema_real_eip !58
  %213 = icmp ne i32 %212, 0, !mcsema_real_eip !58
  store i1 %213, i1* %AF, align 1, !mcsema_real_eip !58
  %214 = trunc i32 %209 to i8, !mcsema_real_eip !58
  %215 = call i8 @llvm.ctpop.i8(i8 %214), !mcsema_real_eip !58
  %216 = and i8 %215, 1
  %217 = icmp eq i8 %216, 0
  store i1 %217, i1* %PF, align 1, !mcsema_real_eip !58
  %218 = icmp eq i32 %209, 0, !mcsema_real_eip !58
  store i1 %218, i1* %ZF, align 1, !mcsema_real_eip !58
  %219 = icmp slt i32 %209, 0
  store i1 %219, i1* %SF, align 1, !mcsema_real_eip !58
  %220 = icmp ult i32 %_new_load_580, %_new_load_595, !mcsema_real_eip !58
  store i1 %220, i1* %CF, align 1, !mcsema_real_eip !58
  %221 = xor i32 %_new_load_595, %_new_load_580, !mcsema_real_eip !58
  %222 = and i32 %210, %221, !mcsema_real_eip !58
  %223 = icmp slt i32 %222, 0
  store i1 %223, i1* %OF, align 1, !mcsema_real_eip !58
  %tmp8 = xor i1 %219, %223
  br i1 %tmp8, label %block_0xd6, label %block_0xf5, !mcsema_real_eip !59

block_0xd6:                                       ; preds = %block_0xca
  %_new_gep_141 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -64
  %_ptr_to_int_596 = ptrtoint i8* %_new_gep_141 to i64
  %_offset_above_rbp_599 = sub i64 %_ptr_to_int_596, %_local_end_to_int_
  %_pot_address_in_parent_stack_600 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_599
  %_cond1_601 = icmp ugt i8* %_new_gep_141, %_local_stack_end_ptr_
  %_cond2_1_602 = icmp ugt i8* %_new_gep_141, %_parent_stack_end_ptr_
  %_cond2_2_603 = icmp ult i8* %_new_gep_141, %_parent_stack_start_ptr_
  %_cond2_604 = or i1 %_cond2_1_602, %_cond2_2_603
  %_cond4_605 = icmp ule i8* %_pot_address_in_parent_stack_600, %_parent_stack_end_ptr_
  %_cond1_n_cond2_606 = and i1 %_cond1_601, %_cond2_604
  %_cond1_n_cond2_cond3_607 = and i1 %_cond1_n_cond2_606, %_cond4_605
  %_address_in_parent_stack_bt_609._allin_new_bt_142.v = select i1 %_cond1_n_cond2_cond3_607, i8* %_pot_address_in_parent_stack_600, i8* %_new_gep_141
  %_address_in_parent_stack_bt_609._allin_new_bt_142 = bitcast i8* %_address_in_parent_stack_bt_609._allin_new_bt_142.v to i64*
  %_new_load_610 = load i64, i64* %_address_in_parent_stack_bt_609._allin_new_bt_142, align 8
  store i64 %_new_load_610, i64* %XAX, align 8, !mcsema_real_eip !60
  %_new_load_625 = load i32, i32* %_address_in_parent_stack_bt_579., align 4
  %224 = sext i32 %_new_load_625 to i64, !mcsema_real_eip !61
  store i64 %224, i64* %XCX, align 8, !mcsema_real_eip !61
  %225 = shl nsw i64 %224, 2
  %226 = add i64 %225, %_new_load_610, !mcsema_real_eip !62
  %227 = inttoptr i64 %226 to i32*, !mcsema_real_eip !62
  %_ptr_bt_628 = inttoptr i64 %226 to i8*
  %_offset_above_rbp_629 = sub i64 %226, %_local_end_to_int_
  %_pot_address_in_parent_stack_630 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_629
  %_cond1_631 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_628
  %_cond2_1_632 = icmp ugt i8* %_ptr_bt_628, %_parent_stack_end_ptr_
  %_cond2_2_633 = icmp ult i8* %_ptr_bt_628, %_parent_stack_start_ptr_
  %_cond2_634 = or i1 %_cond2_1_632, %_cond2_2_633
  %_cond4_635 = icmp ule i8* %_pot_address_in_parent_stack_630, %_parent_stack_end_ptr_
  %_cond1_n_cond2_636 = and i1 %_cond1_631, %_cond2_634
  %_cond1_n_cond2_cond3_637 = and i1 %_cond4_635, %_cond1_n_cond2_636
  %_address_in_parent_stack_bt_639 = bitcast i8* %_pot_address_in_parent_stack_630 to i32*
  %_address_in_parent_stack_bt_639. = select i1 %_cond1_n_cond2_cond3_637, i32* %_address_in_parent_stack_bt_639, i32* %227
  %_new_load_640 = load i32, i32* %_address_in_parent_stack_bt_639., align 4
  %228 = zext i32 %_new_load_640 to i64, !mcsema_real_eip !62
  store i64 %228, i64* %XDX, align 8, !mcsema_real_eip !62
  %_new_gep_147 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -84
  %229 = ptrtoint i8* %_new_gep_147 to i64
  %230 = bitcast i8* %_new_gep_147 to i32*
  %_offset_above_rbp_644 = sub i64 %229, %_local_end_to_int_
  %_pot_address_in_parent_stack_645 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_644
  %_cond1_646 = icmp ugt i8* %_new_gep_147, %_local_stack_end_ptr_
  %_cond2_1_647 = icmp ugt i8* %_new_gep_147, %_parent_stack_end_ptr_
  %_cond2_2_648 = icmp ult i8* %_new_gep_147, %_parent_stack_start_ptr_
  %_cond2_649 = or i1 %_cond2_1_647, %_cond2_2_648
  %_cond4_650 = icmp ule i8* %_pot_address_in_parent_stack_645, %_parent_stack_end_ptr_
  %_cond1_n_cond2_651 = and i1 %_cond1_646, %_cond2_649
  %_cond1_n_cond2_cond3_652 = and i1 %_cond1_n_cond2_651, %_cond4_650
  %_address_in_parent_stack_bt_654 = bitcast i8* %_pot_address_in_parent_stack_645 to i32*
  %231 = select i1 %_cond1_n_cond2_cond3_652, i32* %_address_in_parent_stack_bt_654, i32* %230
  %_new_load_655 = load i32, i32* %231, align 4
  %232 = add i32 %_new_load_640, %_new_load_655, !mcsema_real_eip !63
  %233 = xor i32 %232, %_new_load_655, !mcsema_real_eip !63
  %234 = xor i32 %233, %_new_load_640, !mcsema_real_eip !63
  %235 = and i32 %234, 16, !mcsema_real_eip !63
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !63
  store i1 %236, i1* %AF, align 1, !mcsema_real_eip !63
  %237 = icmp slt i32 %232, 0
  store i1 %237, i1* %SF, align 1, !mcsema_real_eip !63
  %238 = icmp eq i32 %232, 0, !mcsema_real_eip !63
  store i1 %238, i1* %ZF, align 1, !mcsema_real_eip !63
  %239 = xor i32 %_new_load_655, -2147483648, !mcsema_real_eip !63
  %240 = xor i32 %239, %_new_load_640, !mcsema_real_eip !63
  %241 = and i32 %233, %240, !mcsema_real_eip !63
  %242 = icmp slt i32 %241, 0
  store i1 %242, i1* %OF, align 1, !mcsema_real_eip !63
  %243 = trunc i32 %232 to i8, !mcsema_real_eip !63
  %244 = call i8 @llvm.ctpop.i8(i8 %243), !mcsema_real_eip !63
  %245 = and i8 %244, 1
  %246 = icmp eq i8 %245, 0
  store i1 %246, i1* %PF, align 1, !mcsema_real_eip !63
  %247 = icmp ult i32 %232, %_new_load_655, !mcsema_real_eip !63
  store i1 %247, i1* %CF, align 1, !mcsema_real_eip !63
  %248 = zext i32 %232 to i64, !mcsema_real_eip !63
  store i64 %248, i64* %XDX, align 8, !mcsema_real_eip !63
  store i32 %232, i32* %230, align 4, !mcsema_real_eip !64
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_152 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_153 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_152, i64 -96
  %249 = ptrtoint i8* %_new_gep_153 to i64
  %250 = bitcast i8* %_new_gep_153 to i32*
  %_offset_above_rbp_659 = sub i64 %249, %_local_end_to_int_
  %_pot_address_in_parent_stack_660 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_659
  %_cond1_661 = icmp ugt i8* %_new_gep_153, %_local_stack_end_ptr_
  %_cond2_1_662 = icmp ugt i8* %_new_gep_153, %_parent_stack_end_ptr_
  %_cond2_2_663 = icmp ult i8* %_new_gep_153, %_parent_stack_start_ptr_
  %_cond2_664 = or i1 %_cond2_1_662, %_cond2_2_663
  %_cond4_665 = icmp ule i8* %_pot_address_in_parent_stack_660, %_parent_stack_end_ptr_
  %_cond1_n_cond2_666 = and i1 %_cond1_661, %_cond2_664
  %_cond1_n_cond2_cond3_667 = and i1 %_cond1_n_cond2_666, %_cond4_665
  %_address_in_parent_stack_bt_669 = bitcast i8* %_pot_address_in_parent_stack_660 to i32*
  %_address_in_parent_stack_bt_669. = select i1 %_cond1_n_cond2_cond3_667, i32* %_address_in_parent_stack_bt_669, i32* %250
  %_new_load_670 = load i32, i32* %_address_in_parent_stack_bt_669., align 4
  %251 = add i32 %_new_load_670, 1, !mcsema_real_eip !66
  %252 = xor i32 %251, %_new_load_670, !mcsema_real_eip !66
  %253 = and i32 %252, 16, !mcsema_real_eip !66
  %254 = icmp ne i32 %253, 0, !mcsema_real_eip !66
  store i1 %254, i1* %AF, align 1, !mcsema_real_eip !66
  %255 = icmp slt i32 %251, 0
  store i1 %255, i1* %SF, align 1, !mcsema_real_eip !66
  %256 = icmp eq i32 %251, 0, !mcsema_real_eip !66
  store i1 %256, i1* %ZF, align 1, !mcsema_real_eip !66
  %257 = xor i32 %_new_load_670, -2147483648, !mcsema_real_eip !66
  %258 = and i32 %252, %257, !mcsema_real_eip !66
  %259 = icmp slt i32 %258, 0
  store i1 %259, i1* %OF, align 1, !mcsema_real_eip !66
  %260 = trunc i32 %251 to i8, !mcsema_real_eip !66
  %261 = call i8 @llvm.ctpop.i8(i8 %260), !mcsema_real_eip !66
  %262 = and i8 %261, 1
  %263 = icmp eq i8 %262, 0
  store i1 %263, i1* %PF, align 1, !mcsema_real_eip !66
  %264 = icmp eq i32 %_new_load_670, -1
  store i1 %264, i1* %CF, align 1, !mcsema_real_eip !66
  %265 = zext i32 %251 to i64, !mcsema_real_eip !66
  store i64 %265, i64* %XAX, align 8, !mcsema_real_eip !66
  store i32 %251, i32* %250, align 4, !mcsema_real_eip !67
  br label %block_0xca, !mcsema_real_eip !68

block_0xf5:                                       ; preds = %block_0xca
  %_new_gep_159 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -72
  %_ptr_to_int_671 = ptrtoint i8* %_new_gep_159 to i64
  %_offset_above_rbp_674 = sub i64 %_ptr_to_int_671, %_local_end_to_int_
  %_pot_address_in_parent_stack_675 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_674
  %_cond1_676 = icmp ugt i8* %_new_gep_159, %_local_stack_end_ptr_
  %_cond2_1_677 = icmp ugt i8* %_new_gep_159, %_parent_stack_end_ptr_
  %_cond2_2_678 = icmp ult i8* %_new_gep_159, %_parent_stack_start_ptr_
  %_cond2_679 = or i1 %_cond2_1_677, %_cond2_2_678
  %_cond4_680 = icmp ule i8* %_pot_address_in_parent_stack_675, %_parent_stack_end_ptr_
  %_cond1_n_cond2_681 = and i1 %_cond1_676, %_cond2_679
  %_cond1_n_cond2_cond3_682 = and i1 %_cond1_n_cond2_681, %_cond4_680
  %_address_in_parent_stack_bt_684._allin_new_bt_160.v = select i1 %_cond1_n_cond2_cond3_682, i8* %_pot_address_in_parent_stack_675, i8* %_new_gep_159
  %_address_in_parent_stack_bt_684._allin_new_bt_160 = bitcast i8* %_address_in_parent_stack_bt_684._allin_new_bt_160.v to i64*
  %_new_load_685 = load i64, i64* %_address_in_parent_stack_bt_684._allin_new_bt_160, align 8
  store i64 %_new_load_685, i64* %XAX, align 8, !mcsema_real_eip !69
  %266 = inttoptr i64 %_new_load_685 to i32*, !mcsema_real_eip !70
  %_ptr_bt_688 = inttoptr i64 %_new_load_685 to i8*
  %_offset_above_rbp_689 = sub i64 %_new_load_685, %_local_end_to_int_
  %_pot_address_in_parent_stack_690 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_689
  %_cond1_691 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_688
  %_cond2_1_692 = icmp ugt i8* %_ptr_bt_688, %_parent_stack_end_ptr_
  %_cond2_2_693 = icmp ult i8* %_ptr_bt_688, %_parent_stack_start_ptr_
  %_cond2_694 = or i1 %_cond2_1_692, %_cond2_2_693
  %_cond4_695 = icmp ule i8* %_pot_address_in_parent_stack_690, %_parent_stack_end_ptr_
  %_cond1_n_cond2_696 = and i1 %_cond1_691, %_cond2_694
  %_cond1_n_cond2_cond3_697 = and i1 %_cond4_695, %_cond1_n_cond2_696
  %_address_in_parent_stack_bt_699 = bitcast i8* %_pot_address_in_parent_stack_690 to i32*
  %267 = select i1 %_cond1_n_cond2_cond3_697, i32* %_address_in_parent_stack_bt_699, i32* %266
  %_new_load_700 = load i32, i32* %267, align 4
  %268 = zext i32 %_new_load_700 to i64, !mcsema_real_eip !70
  store i64 %268, i64* %XCX, align 8, !mcsema_real_eip !70
  %_new_gep_162 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -84
  %269 = ptrtoint i8* %_new_gep_162 to i64
  %270 = bitcast i8* %_new_gep_162 to i32*
  %_offset_above_rbp_704 = sub i64 %269, %_local_end_to_int_
  %_pot_address_in_parent_stack_705 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_704
  %_cond1_706 = icmp ugt i8* %_new_gep_162, %_local_stack_end_ptr_
  %_cond2_1_707 = icmp ugt i8* %_new_gep_162, %_parent_stack_end_ptr_
  %_cond2_2_708 = icmp ult i8* %_new_gep_162, %_parent_stack_start_ptr_
  %_cond2_709 = or i1 %_cond2_1_707, %_cond2_2_708
  %_cond4_710 = icmp ule i8* %_pot_address_in_parent_stack_705, %_parent_stack_end_ptr_
  %_cond1_n_cond2_711 = and i1 %_cond1_706, %_cond2_709
  %_cond1_n_cond2_cond3_712 = and i1 %_cond1_n_cond2_711, %_cond4_710
  %_address_in_parent_stack_bt_714 = bitcast i8* %_pot_address_in_parent_stack_705 to i32*
  %_address_in_parent_stack_bt_714. = select i1 %_cond1_n_cond2_cond3_712, i32* %_address_in_parent_stack_bt_714, i32* %270
  %_new_load_715 = load i32, i32* %_address_in_parent_stack_bt_714., align 4
  %271 = add i32 %_new_load_700, %_new_load_715, !mcsema_real_eip !71
  %272 = xor i32 %271, %_new_load_715, !mcsema_real_eip !71
  %273 = xor i32 %272, %_new_load_700, !mcsema_real_eip !71
  %274 = and i32 %273, 16, !mcsema_real_eip !71
  %275 = icmp ne i32 %274, 0, !mcsema_real_eip !71
  store i1 %275, i1* %AF, align 1, !mcsema_real_eip !71
  %276 = icmp slt i32 %271, 0
  store i1 %276, i1* %SF, align 1, !mcsema_real_eip !71
  %277 = icmp eq i32 %271, 0, !mcsema_real_eip !71
  store i1 %277, i1* %ZF, align 1, !mcsema_real_eip !71
  %278 = xor i32 %_new_load_715, -2147483648, !mcsema_real_eip !71
  %279 = xor i32 %278, %_new_load_700, !mcsema_real_eip !71
  %280 = and i32 %272, %279, !mcsema_real_eip !71
  %281 = icmp slt i32 %280, 0
  store i1 %281, i1* %OF, align 1, !mcsema_real_eip !71
  %282 = trunc i32 %271 to i8, !mcsema_real_eip !71
  %283 = call i8 @llvm.ctpop.i8(i8 %282), !mcsema_real_eip !71
  %284 = and i8 %283, 1
  %285 = icmp eq i8 %284, 0
  store i1 %285, i1* %PF, align 1, !mcsema_real_eip !71
  %286 = icmp ult i32 %271, %_new_load_715, !mcsema_real_eip !71
  store i1 %286, i1* %CF, align 1, !mcsema_real_eip !71
  %287 = zext i32 %271 to i64, !mcsema_real_eip !71
  store i64 %287, i64* %XCX, align 8, !mcsema_real_eip !71
  store i32 %271, i32* %270, align 4, !mcsema_real_eip !72
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_167 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_168 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_167, i64 -100
  %288 = bitcast i8* %_new_gep_168 to i32*
  store i32 0, i32* %288, align 4, !mcsema_real_eip !73
  br label %block_0x108, !mcsema_real_eip !74

block_0x108:                                      ; preds = %block_0x114, %block_0xf5
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_170 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_171 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_170, i64 -100
  %289 = ptrtoint i8* %_new_gep_171 to i64
  %_offset_above_rbp_719 = sub i64 %289, %_local_end_to_int_
  %_pot_address_in_parent_stack_720 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_719
  %_cond1_721 = icmp ugt i8* %_new_gep_171, %_local_stack_end_ptr_
  %_cond2_1_722 = icmp ugt i8* %_new_gep_171, %_parent_stack_end_ptr_
  %_cond2_2_723 = icmp ult i8* %_new_gep_171, %_parent_stack_start_ptr_
  %_cond2_724 = or i1 %_cond2_1_722, %_cond2_2_723
  %_cond4_725 = icmp ule i8* %_pot_address_in_parent_stack_720, %_parent_stack_end_ptr_
  %_cond1_n_cond2_726 = and i1 %_cond1_721, %_cond2_724
  %_cond1_n_cond2_cond3_727 = and i1 %_cond1_n_cond2_726, %_cond4_725
  %_address_in_parent_stack_bt_729..v = select i1 %_cond1_n_cond2_cond3_727, i8* %_pot_address_in_parent_stack_720, i8* %_new_gep_171
  %_address_in_parent_stack_bt_729. = bitcast i8* %_address_in_parent_stack_bt_729..v to i32*
  %_new_load_730 = load i32, i32* %_address_in_parent_stack_bt_729., align 4
  %290 = zext i32 %_new_load_730 to i64, !mcsema_real_eip !74
  store i64 %290, i64* %XAX, align 8, !mcsema_real_eip !74
  %_new_gep_174 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_170, i64 -48
  %291 = ptrtoint i8* %_new_gep_174 to i64
  %_offset_above_rbp_734 = sub i64 %291, %_local_end_to_int_
  %_pot_address_in_parent_stack_735 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_734
  %_cond1_736 = icmp ugt i8* %_new_gep_174, %_local_stack_end_ptr_
  %_cond2_1_737 = icmp ugt i8* %_new_gep_174, %_parent_stack_end_ptr_
  %_cond2_2_738 = icmp ult i8* %_new_gep_174, %_parent_stack_start_ptr_
  %_cond2_739 = or i1 %_cond2_1_737, %_cond2_2_738
  %_cond4_740 = icmp ule i8* %_pot_address_in_parent_stack_735, %_parent_stack_end_ptr_
  %_cond1_n_cond2_741 = and i1 %_cond1_736, %_cond2_739
  %_cond1_n_cond2_cond3_742 = and i1 %_cond1_n_cond2_741, %_cond4_740
  %.v9 = select i1 %_cond1_n_cond2_cond3_742, i8* %_pot_address_in_parent_stack_735, i8* %_new_gep_174
  %292 = bitcast i8* %.v9 to i32*
  %_new_load_745 = load i32, i32* %292, align 4
  %293 = sub i32 %_new_load_730, %_new_load_745, !mcsema_real_eip !75
  %294 = xor i32 %293, %_new_load_730, !mcsema_real_eip !75
  %295 = xor i32 %294, %_new_load_745, !mcsema_real_eip !75
  %296 = and i32 %295, 16, !mcsema_real_eip !75
  %297 = icmp ne i32 %296, 0, !mcsema_real_eip !75
  store i1 %297, i1* %AF, align 1, !mcsema_real_eip !75
  %298 = trunc i32 %293 to i8, !mcsema_real_eip !75
  %299 = call i8 @llvm.ctpop.i8(i8 %298), !mcsema_real_eip !75
  %300 = and i8 %299, 1
  %301 = icmp eq i8 %300, 0
  store i1 %301, i1* %PF, align 1, !mcsema_real_eip !75
  %302 = icmp eq i32 %293, 0, !mcsema_real_eip !75
  store i1 %302, i1* %ZF, align 1, !mcsema_real_eip !75
  %303 = icmp slt i32 %293, 0
  store i1 %303, i1* %SF, align 1, !mcsema_real_eip !75
  %304 = icmp ult i32 %_new_load_730, %_new_load_745, !mcsema_real_eip !75
  store i1 %304, i1* %CF, align 1, !mcsema_real_eip !75
  %305 = xor i32 %_new_load_745, %_new_load_730, !mcsema_real_eip !75
  %306 = and i32 %294, %305, !mcsema_real_eip !75
  %307 = icmp slt i32 %306, 0
  store i1 %307, i1* %OF, align 1, !mcsema_real_eip !75
  %tmp10 = xor i1 %303, %307
  br i1 %tmp10, label %block_0x114, label %block_0x133, !mcsema_real_eip !76

block_0x114:                                      ; preds = %block_0x108
  %_new_gep_177 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_170, i64 -80
  %_ptr_to_int_746 = ptrtoint i8* %_new_gep_177 to i64
  %_offset_above_rbp_749 = sub i64 %_ptr_to_int_746, %_local_end_to_int_
  %_pot_address_in_parent_stack_750 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_749
  %_cond1_751 = icmp ugt i8* %_new_gep_177, %_local_stack_end_ptr_
  %_cond2_1_752 = icmp ugt i8* %_new_gep_177, %_parent_stack_end_ptr_
  %_cond2_2_753 = icmp ult i8* %_new_gep_177, %_parent_stack_start_ptr_
  %_cond2_754 = or i1 %_cond2_1_752, %_cond2_2_753
  %_cond4_755 = icmp ule i8* %_pot_address_in_parent_stack_750, %_parent_stack_end_ptr_
  %_cond1_n_cond2_756 = and i1 %_cond1_751, %_cond2_754
  %_cond1_n_cond2_cond3_757 = and i1 %_cond1_n_cond2_756, %_cond4_755
  %_address_in_parent_stack_bt_759._allin_new_bt_178.v = select i1 %_cond1_n_cond2_cond3_757, i8* %_pot_address_in_parent_stack_750, i8* %_new_gep_177
  %_address_in_parent_stack_bt_759._allin_new_bt_178 = bitcast i8* %_address_in_parent_stack_bt_759._allin_new_bt_178.v to i64*
  %_new_load_760 = load i64, i64* %_address_in_parent_stack_bt_759._allin_new_bt_178, align 8
  store i64 %_new_load_760, i64* %XAX, align 8, !mcsema_real_eip !77
  %_new_load_775 = load i32, i32* %_address_in_parent_stack_bt_729., align 4
  %308 = sext i32 %_new_load_775 to i64, !mcsema_real_eip !78
  store i64 %308, i64* %XCX, align 8, !mcsema_real_eip !78
  %309 = shl nsw i64 %308, 2
  %310 = add i64 %309, %_new_load_760, !mcsema_real_eip !79
  %311 = inttoptr i64 %310 to i32*, !mcsema_real_eip !79
  %_ptr_bt_778 = inttoptr i64 %310 to i8*
  %_offset_above_rbp_779 = sub i64 %310, %_local_end_to_int_
  %_pot_address_in_parent_stack_780 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_779
  %_cond1_781 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_778
  %_cond2_1_782 = icmp ugt i8* %_ptr_bt_778, %_parent_stack_end_ptr_
  %_cond2_2_783 = icmp ult i8* %_ptr_bt_778, %_parent_stack_start_ptr_
  %_cond2_784 = or i1 %_cond2_1_782, %_cond2_2_783
  %_cond4_785 = icmp ule i8* %_pot_address_in_parent_stack_780, %_parent_stack_end_ptr_
  %_cond1_n_cond2_786 = and i1 %_cond1_781, %_cond2_784
  %_cond1_n_cond2_cond3_787 = and i1 %_cond4_785, %_cond1_n_cond2_786
  %_address_in_parent_stack_bt_789 = bitcast i8* %_pot_address_in_parent_stack_780 to i32*
  %_address_in_parent_stack_bt_789. = select i1 %_cond1_n_cond2_cond3_787, i32* %_address_in_parent_stack_bt_789, i32* %311
  %_new_load_790 = load i32, i32* %_address_in_parent_stack_bt_789., align 4
  %312 = zext i32 %_new_load_790 to i64, !mcsema_real_eip !79
  store i64 %312, i64* %XDX, align 8, !mcsema_real_eip !79
  %_new_gep_183 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_170, i64 -84
  %313 = ptrtoint i8* %_new_gep_183 to i64
  %314 = bitcast i8* %_new_gep_183 to i32*
  %_offset_above_rbp_794 = sub i64 %313, %_local_end_to_int_
  %_pot_address_in_parent_stack_795 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_794
  %_cond1_796 = icmp ugt i8* %_new_gep_183, %_local_stack_end_ptr_
  %_cond2_1_797 = icmp ugt i8* %_new_gep_183, %_parent_stack_end_ptr_
  %_cond2_2_798 = icmp ult i8* %_new_gep_183, %_parent_stack_start_ptr_
  %_cond2_799 = or i1 %_cond2_1_797, %_cond2_2_798
  %_cond4_800 = icmp ule i8* %_pot_address_in_parent_stack_795, %_parent_stack_end_ptr_
  %_cond1_n_cond2_801 = and i1 %_cond1_796, %_cond2_799
  %_cond1_n_cond2_cond3_802 = and i1 %_cond1_n_cond2_801, %_cond4_800
  %_address_in_parent_stack_bt_804 = bitcast i8* %_pot_address_in_parent_stack_795 to i32*
  %315 = select i1 %_cond1_n_cond2_cond3_802, i32* %_address_in_parent_stack_bt_804, i32* %314
  %_new_load_805 = load i32, i32* %315, align 4
  %316 = add i32 %_new_load_790, %_new_load_805, !mcsema_real_eip !80
  %317 = xor i32 %316, %_new_load_805, !mcsema_real_eip !80
  %318 = xor i32 %317, %_new_load_790, !mcsema_real_eip !80
  %319 = and i32 %318, 16, !mcsema_real_eip !80
  %320 = icmp ne i32 %319, 0, !mcsema_real_eip !80
  store i1 %320, i1* %AF, align 1, !mcsema_real_eip !80
  %321 = icmp slt i32 %316, 0
  store i1 %321, i1* %SF, align 1, !mcsema_real_eip !80
  %322 = icmp eq i32 %316, 0, !mcsema_real_eip !80
  store i1 %322, i1* %ZF, align 1, !mcsema_real_eip !80
  %323 = xor i32 %_new_load_805, -2147483648, !mcsema_real_eip !80
  %324 = xor i32 %323, %_new_load_790, !mcsema_real_eip !80
  %325 = and i32 %317, %324, !mcsema_real_eip !80
  %326 = icmp slt i32 %325, 0
  store i1 %326, i1* %OF, align 1, !mcsema_real_eip !80
  %327 = trunc i32 %316 to i8, !mcsema_real_eip !80
  %328 = call i8 @llvm.ctpop.i8(i8 %327), !mcsema_real_eip !80
  %329 = and i8 %328, 1
  %330 = icmp eq i8 %329, 0
  store i1 %330, i1* %PF, align 1, !mcsema_real_eip !80
  %331 = icmp ult i32 %316, %_new_load_805, !mcsema_real_eip !80
  store i1 %331, i1* %CF, align 1, !mcsema_real_eip !80
  %332 = zext i32 %316 to i64, !mcsema_real_eip !80
  store i64 %332, i64* %XDX, align 8, !mcsema_real_eip !80
  store i32 %316, i32* %314, align 4, !mcsema_real_eip !81
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_188 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_189 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_188, i64 -100
  %333 = ptrtoint i8* %_new_gep_189 to i64
  %334 = bitcast i8* %_new_gep_189 to i32*
  %_offset_above_rbp_809 = sub i64 %333, %_local_end_to_int_
  %_pot_address_in_parent_stack_810 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_809
  %_cond1_811 = icmp ugt i8* %_new_gep_189, %_local_stack_end_ptr_
  %_cond2_1_812 = icmp ugt i8* %_new_gep_189, %_parent_stack_end_ptr_
  %_cond2_2_813 = icmp ult i8* %_new_gep_189, %_parent_stack_start_ptr_
  %_cond2_814 = or i1 %_cond2_1_812, %_cond2_2_813
  %_cond4_815 = icmp ule i8* %_pot_address_in_parent_stack_810, %_parent_stack_end_ptr_
  %_cond1_n_cond2_816 = and i1 %_cond1_811, %_cond2_814
  %_cond1_n_cond2_cond3_817 = and i1 %_cond1_n_cond2_816, %_cond4_815
  %_address_in_parent_stack_bt_819 = bitcast i8* %_pot_address_in_parent_stack_810 to i32*
  %_address_in_parent_stack_bt_819. = select i1 %_cond1_n_cond2_cond3_817, i32* %_address_in_parent_stack_bt_819, i32* %334
  %_new_load_820 = load i32, i32* %_address_in_parent_stack_bt_819., align 4
  %335 = add i32 %_new_load_820, 1, !mcsema_real_eip !83
  %336 = xor i32 %335, %_new_load_820, !mcsema_real_eip !83
  %337 = and i32 %336, 16, !mcsema_real_eip !83
  %338 = icmp ne i32 %337, 0, !mcsema_real_eip !83
  store i1 %338, i1* %AF, align 1, !mcsema_real_eip !83
  %339 = icmp slt i32 %335, 0
  store i1 %339, i1* %SF, align 1, !mcsema_real_eip !83
  %340 = icmp eq i32 %335, 0, !mcsema_real_eip !83
  store i1 %340, i1* %ZF, align 1, !mcsema_real_eip !83
  %341 = xor i32 %_new_load_820, -2147483648, !mcsema_real_eip !83
  %342 = and i32 %336, %341, !mcsema_real_eip !83
  %343 = icmp slt i32 %342, 0
  store i1 %343, i1* %OF, align 1, !mcsema_real_eip !83
  %344 = trunc i32 %335 to i8, !mcsema_real_eip !83
  %345 = call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !83
  %346 = and i8 %345, 1
  %347 = icmp eq i8 %346, 0
  store i1 %347, i1* %PF, align 1, !mcsema_real_eip !83
  %348 = icmp eq i32 %_new_load_820, -1
  store i1 %348, i1* %CF, align 1, !mcsema_real_eip !83
  %349 = zext i32 %335 to i64, !mcsema_real_eip !83
  store i64 %349, i64* %XAX, align 8, !mcsema_real_eip !83
  store i32 %335, i32* %334, align 4, !mcsema_real_eip !84
  br label %block_0x108, !mcsema_real_eip !85

block_0x133:                                      ; preds = %block_0x108
  %_new_gep_195 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_170, i64 -84
  %350 = ptrtoint i8* %_new_gep_195 to i64
  %_offset_above_rbp_824 = sub i64 %350, %_local_end_to_int_
  %_pot_address_in_parent_stack_825 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_824
  %_cond1_826 = icmp ugt i8* %_new_gep_195, %_local_stack_end_ptr_
  %_cond2_1_827 = icmp ugt i8* %_new_gep_195, %_parent_stack_end_ptr_
  %_cond2_2_828 = icmp ult i8* %_new_gep_195, %_parent_stack_start_ptr_
  %_cond2_829 = or i1 %_cond2_1_827, %_cond2_2_828
  %_cond4_830 = icmp ule i8* %_pot_address_in_parent_stack_825, %_parent_stack_end_ptr_
  %_cond1_n_cond2_831 = and i1 %_cond1_826, %_cond2_829
  %_cond1_n_cond2_cond3_832 = and i1 %_cond1_n_cond2_831, %_cond4_830
  %_address_in_parent_stack_bt_834..v = select i1 %_cond1_n_cond2_cond3_832, i8* %_pot_address_in_parent_stack_825, i8* %_new_gep_195
  %_address_in_parent_stack_bt_834. = bitcast i8* %_address_in_parent_stack_bt_834..v to i32*
  %_new_load_835 = load i32, i32* %_address_in_parent_stack_bt_834., align 4
  %351 = zext i32 %_new_load_835 to i64, !mcsema_real_eip !86
  store i64 %351, i64* %XAX, align 8, !mcsema_real_eip !86
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_197 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.149 = load i64, i64* %XSP, align 8, !mcsema_real_eip !87
  %_ptr_to_int_836 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_197 to i64
  %_offset_above_rbp_839 = sub i64 %_ptr_to_int_836, %_local_end_to_int_
  %_pot_address_in_parent_stack_840 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_839
  %_cond1_841 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_197, %_local_stack_end_ptr_
  %_cond2_1_842 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_197, %_parent_stack_end_ptr_
  %_cond2_2_843 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_197, %_parent_stack_start_ptr_
  %_cond2_844 = or i1 %_cond2_1_842, %_cond2_2_843
  %_cond4_845 = icmp ule i8* %_pot_address_in_parent_stack_840, %_parent_stack_end_ptr_
  %_cond1_n_cond2_846 = and i1 %_cond1_841, %_cond2_844
  %_cond1_n_cond2_cond3_847 = and i1 %_cond1_n_cond2_846, %_cond4_845
  %.v11 = select i1 %_cond1_n_cond2_cond3_847, i8* %_pot_address_in_parent_stack_840, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_197
  %352 = bitcast i8* %.v11 to i64*
  %_new_load_850 = load i64, i64* %352, align 8
  store i64 %_new_load_850, i64* %XBX, align 8, !mcsema_real_eip !87
  %_new_gep_199 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_197, i64 8
  %353 = add i64 %RSP_val.149, 8, !mcsema_real_eip !87
  store volatile i8* %_new_gep_199, i8** %_RSP_ptr_, align 8
  store i64 %353, i64* %XSP, align 8, !mcsema_real_eip !87
  %_ptr_to_int_851 = ptrtoint i8* %_new_gep_199 to i64
  %_offset_above_rbp_854 = sub i64 %_ptr_to_int_851, %_local_end_to_int_
  %_pot_address_in_parent_stack_855 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_854
  %_cond1_856 = icmp ugt i8* %_new_gep_199, %_local_stack_end_ptr_
  %_cond2_1_857 = icmp ugt i8* %_new_gep_199, %_parent_stack_end_ptr_
  %_cond2_2_858 = icmp ult i8* %_new_gep_199, %_parent_stack_start_ptr_
  %_cond2_859 = or i1 %_cond2_1_857, %_cond2_2_858
  %_cond4_860 = icmp ule i8* %_pot_address_in_parent_stack_855, %_parent_stack_end_ptr_
  %_cond1_n_cond2_861 = and i1 %_cond1_856, %_cond2_859
  %_cond1_n_cond2_cond3_862 = and i1 %_cond1_n_cond2_861, %_cond4_860
  %_address_in_parent_stack_bt_864._allin_new_bt_201.v = select i1 %_cond1_n_cond2_cond3_862, i8* %_pot_address_in_parent_stack_855, i8* %_new_gep_199
  %_address_in_parent_stack_bt_864._allin_new_bt_201 = bitcast i8* %_address_in_parent_stack_bt_864._allin_new_bt_201.v to i64*
  %_new_load_865 = load i64, i64* %_address_in_parent_stack_bt_864._allin_new_bt_201, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_865 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_865, i64* %XBP, align 8, !mcsema_real_eip !88
  %_new_gep_202 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_197, i64 16
  %354 = add i64 %RSP_val.149, 16, !mcsema_real_eip !88
  store volatile i8* %_new_gep_202, i8** %_RSP_ptr_, align 8
  store i64 %354, i64* %XSP, align 8, !mcsema_real_eip !88
  %_new_gep_204 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_197, i64 24
  %355 = add i64 %RSP_val.149, 24, !mcsema_real_eip !89
  %_ptr_to_int_866 = ptrtoint i8* %_new_gep_202 to i64
  %_offset_above_rbp_869 = sub i64 %_ptr_to_int_866, %_local_end_to_int_
  %_pot_address_in_parent_stack_870 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_869
  %_cond1_871 = icmp ugt i8* %_new_gep_202, %_local_stack_end_ptr_
  %_cond2_1_872 = icmp ugt i8* %_new_gep_202, %_parent_stack_end_ptr_
  %_cond2_2_873 = icmp ult i8* %_new_gep_202, %_parent_stack_start_ptr_
  %_cond2_874 = or i1 %_cond2_1_872, %_cond2_2_873
  %_cond4_875 = icmp ule i8* %_pot_address_in_parent_stack_870, %_parent_stack_end_ptr_
  %_cond1_n_cond2_876 = and i1 %_cond1_871, %_cond2_874
  %_cond1_n_cond2_cond3_877 = and i1 %_cond1_n_cond2_876, %_cond4_875
  %.v12 = select i1 %_cond1_n_cond2_cond3_877, i8* %_pot_address_in_parent_stack_870, i8* %_new_gep_202
  %356 = bitcast i8* %.v12 to i64*
  %_new_load_880 = load i64, i64* %356, align 8
  store i64 %_new_load_880, i64* %XIP, align 8, !mcsema_real_eip !89
  store volatile i8* %_new_gep_204, i8** %_RSP_ptr_, align 8
  store i64 %355, i64* %XSP, align 8, !mcsema_real_eip !89
  ret void, !mcsema_real_eip !89
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_140.2(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [192 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 192
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !90
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !90
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !90
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !90
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !90
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !90
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !90
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !90
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !90
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !90
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !90
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !90
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !90
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !90
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !90
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !90
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !90
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !90
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !90
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !90
  %R14 = getelementptr %RegState, %RegState* %0, i64 0, i32 70, !mcsema_real_eip !90
  %RSP_val.153 = load i64, i64* %XSP, align 8, !mcsema_real_eip !90
  %_new_gep_ = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 184
  %1 = add i64 %RSP_val.153, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !91
  %R14_val.155 = load i64, i64* %R14, align 8, !mcsema_real_eip !92
  %_new_gep_3 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 176
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R14_val.155, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !92
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %RBX_val.157 = load i64, i64* %XBX, align 8, !mcsema_real_eip !93
  %_new_gep_6 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 168
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %RBX_val.157, i64* %_allin_new_bt_7, align 8, !mcsema_real_eip !93
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_, align 8
  %_new_gep_9 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.153, -184
  %_trans_p2i_ = ptrtoint i8* %_new_gep_9 to i64
  %_trans_p2i_10 = ptrtoint i8* %_new_gep_6 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_10
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !94
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !94
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !94
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !94
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !94
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !94
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !94
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_6, inttoptr (i64 160 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !94
  %9 = and i64 %_trans_xor_, %_trans_p2i_10, !mcsema_real_eip !94
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !94
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !94
  %_new_gep_20 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 164
  %11 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !95
  %_new_gep_23 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 160
  %12 = bitcast i8* %_new_gep_23 to i32*
  store i32 1, i32* %12, align 4, !mcsema_real_eip !96
  %_new_gep_26 = getelementptr inbounds [192 x i8], [192 x i8]* %_local_stack_start_ptr_1, i64 0, i64 116
  %13 = bitcast i8* %_new_gep_26 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !97
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %EAX.178 = bitcast i64* %XAX to i32*
  br label %block_0x163, !mcsema_real_eip !98

block_0x163:                                      ; preds = %block_0x16d, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28.pre, %block_0x16d ], [ %_new_gep_, %entry ]
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -68
  %14 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_ = sub i64 %14, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_29
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %15 = add i32 %_new_load_, -10
  %16 = xor i32 %15, %_new_load_, !mcsema_real_eip !98
  %17 = and i32 %16, 16, !mcsema_real_eip !98
  %18 = icmp ne i32 %17, 0, !mcsema_real_eip !98
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !98
  %19 = trunc i32 %15 to i8, !mcsema_real_eip !98
  %20 = call i8 @llvm.ctpop.i8(i8 %19), !mcsema_real_eip !98
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  store i1 %22, i1* %PF, align 1, !mcsema_real_eip !98
  %23 = icmp eq i32 %15, 0, !mcsema_real_eip !98
  store i1 %23, i1* %ZF, align 1, !mcsema_real_eip !98
  %24 = icmp slt i32 %15, 0
  store i1 %24, i1* %SF, align 1, !mcsema_real_eip !98
  %25 = icmp ult i32 %_new_load_, 10, !mcsema_real_eip !98
  store i1 %25, i1* %CF, align 1, !mcsema_real_eip !98
  %26 = and i32 %16, %_new_load_, !mcsema_real_eip !98
  %27 = icmp slt i32 %26, 0
  store i1 %27, i1* %OF, align 1, !mcsema_real_eip !98
  %tmp = xor i1 %24, %27
  br i1 %tmp, label %block_0x16d, label %block_0x189, !mcsema_real_eip !99

block_0x16d:                                      ; preds = %block_0x163
  %_new_load_215 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %28 = add i32 %_new_load_215, 1, !mcsema_real_eip !101
  %29 = xor i32 %28, %_new_load_215, !mcsema_real_eip !101
  %30 = and i32 %29, 16, !mcsema_real_eip !101
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !101
  store i1 %31, i1* %AF, align 1, !mcsema_real_eip !101
  %32 = icmp slt i32 %28, 0
  store i1 %32, i1* %SF, align 1, !mcsema_real_eip !101
  %33 = icmp eq i32 %28, 0, !mcsema_real_eip !101
  store i1 %33, i1* %ZF, align 1, !mcsema_real_eip !101
  %34 = xor i32 %_new_load_215, -2147483648, !mcsema_real_eip !101
  %35 = and i32 %29, %34, !mcsema_real_eip !101
  %36 = icmp slt i32 %35, 0
  store i1 %36, i1* %OF, align 1, !mcsema_real_eip !101
  %37 = trunc i32 %28 to i8, !mcsema_real_eip !101
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !101
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  store i1 %40, i1* %PF, align 1, !mcsema_real_eip !101
  %41 = icmp eq i32 %_new_load_215, -1
  store i1 %41, i1* %CF, align 1, !mcsema_real_eip !101
  %42 = zext i32 %28 to i64, !mcsema_real_eip !101
  store i64 %42, i64* %XAX, align 8, !mcsema_real_eip !101
  %_new_load_230 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %43 = sext i32 %_new_load_230 to i64, !mcsema_real_eip !102
  store i64 %43, i64* %XCX, align 8, !mcsema_real_eip !102
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -64
  %44 = shl nsw i64 %43, 2
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_38, i64 %44
  %45 = bitcast i8* %_new_gep_39 to i32*
  store i32 %28, i32* %45, align 4, !mcsema_real_eip !103
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -68
  %46 = ptrtoint i8* %_new_gep_42 to i64
  %47 = bitcast i8* %_new_gep_42 to i32*
  %_offset_above_rbp_234 = sub i64 %46, %_local_end_to_int_
  %_pot_address_in_parent_stack_235 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_234
  %_cond1_236 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_237 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_238 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_239 = or i1 %_cond2_1_237, %_cond2_2_238
  %_cond4_240 = icmp ule i8* %_pot_address_in_parent_stack_235, %_parent_stack_end_ptr_
  %_cond1_n_cond2_241 = and i1 %_cond1_236, %_cond2_239
  %_cond1_n_cond2_cond3_242 = and i1 %_cond1_n_cond2_241, %_cond4_240
  %_address_in_parent_stack_bt_244 = bitcast i8* %_pot_address_in_parent_stack_235 to i32*
  %_address_in_parent_stack_bt_244. = select i1 %_cond1_n_cond2_cond3_242, i32* %_address_in_parent_stack_bt_244, i32* %47
  %_new_load_245 = load i32, i32* %_address_in_parent_stack_bt_244., align 4
  %48 = add i32 %_new_load_245, 1, !mcsema_real_eip !105
  %49 = xor i32 %48, %_new_load_245, !mcsema_real_eip !105
  %50 = and i32 %49, 16, !mcsema_real_eip !105
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !105
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !105
  %52 = icmp slt i32 %48, 0
  store i1 %52, i1* %SF, align 1, !mcsema_real_eip !105
  %53 = icmp eq i32 %48, 0, !mcsema_real_eip !105
  store i1 %53, i1* %ZF, align 1, !mcsema_real_eip !105
  %54 = xor i32 %_new_load_245, -2147483648, !mcsema_real_eip !105
  %55 = and i32 %49, %54, !mcsema_real_eip !105
  %56 = icmp slt i32 %55, 0
  store i1 %56, i1* %OF, align 1, !mcsema_real_eip !105
  %57 = trunc i32 %48 to i8, !mcsema_real_eip !105
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !105
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  store i1 %60, i1* %PF, align 1, !mcsema_real_eip !105
  %61 = icmp eq i32 %_new_load_245, -1
  store i1 %61, i1* %CF, align 1, !mcsema_real_eip !105
  %62 = zext i32 %48 to i64, !mcsema_real_eip !105
  store i64 %62, i64* %XAX, align 8, !mcsema_real_eip !105
  store i32 %48, i32* %47, align 4, !mcsema_real_eip !106
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x163, !mcsema_real_eip !107

block_0x189:                                      ; preds = %block_0x163
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !90
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !90
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !90
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !90
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !90
  store i64 40, i64* %XAX, align 8, !mcsema_real_eip !108
  store i64 40, i64* %XDI, align 8, !mcsema_real_eip !109
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -24
  %63 = ptrtoint i8* %_new_gep_48 to i64
  store i64 %63, i64* %XCX, align 8, !mcsema_real_eip !110
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -80
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  store i64 %63, i64* %_allin_new_bt_52, align 8, !mcsema_real_eip !111
  %RDI_val.183 = load i64, i64* %XDI, align 8, !mcsema_real_eip !112
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_53 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.184 = load i64, i64* %XSP, align 8, !mcsema_real_eip !112
  %_new_gep_54 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_53, i64 -8
  %64 = add i64 %RSP_val.184, -8
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_55, align 8, !mcsema_real_eip !112
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_, align 8
  store i64 %64, i64* %XSP, align 8, !mcsema_real_eip !112
  %65 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.183)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !112
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_57 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -88
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  store i64 %65, i64* %_allin_new_bt_58, align 8, !mcsema_real_eip !113
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59, i64 -92
  %66 = bitcast i8* %_new_gep_60 to i32*
  store i32 0, i32* %66, align 4, !mcsema_real_eip !114
  br label %block_0x1a8, !mcsema_real_eip !115

block_0x1a8:                                      ; preds = %block_0x1b2, %block_0x189
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_63 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -92
  %67 = ptrtoint i8* %_new_gep_63 to i64
  %_offset_above_rbp_249 = sub i64 %67, %_local_end_to_int_
  %_pot_address_in_parent_stack_250 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_249
  %_cond1_251 = icmp ugt i8* %_new_gep_63, %_local_stack_end_ptr_
  %_cond2_1_252 = icmp ugt i8* %_new_gep_63, %_parent_stack_end_ptr_
  %_cond2_2_253 = icmp ult i8* %_new_gep_63, %_parent_stack_start_ptr_
  %_cond2_254 = or i1 %_cond2_1_252, %_cond2_2_253
  %_cond4_255 = icmp ule i8* %_pot_address_in_parent_stack_250, %_parent_stack_end_ptr_
  %_cond1_n_cond2_256 = and i1 %_cond1_251, %_cond2_254
  %_cond1_n_cond2_cond3_257 = and i1 %_cond1_n_cond2_256, %_cond4_255
  %_address_in_parent_stack_bt_259..v = select i1 %_cond1_n_cond2_cond3_257, i8* %_pot_address_in_parent_stack_250, i8* %_new_gep_63
  %_address_in_parent_stack_bt_259. = bitcast i8* %_address_in_parent_stack_bt_259..v to i32*
  %_new_load_260 = load i32, i32* %_address_in_parent_stack_bt_259., align 4
  %68 = add i32 %_new_load_260, -10
  %69 = xor i32 %68, %_new_load_260, !mcsema_real_eip !115
  %70 = and i32 %69, 16, !mcsema_real_eip !115
  %71 = icmp ne i32 %70, 0, !mcsema_real_eip !115
  store i1 %71, i1* %AF, align 1, !mcsema_real_eip !115
  %72 = trunc i32 %68 to i8, !mcsema_real_eip !115
  %73 = call i8 @llvm.ctpop.i8(i8 %72), !mcsema_real_eip !115
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  store i1 %75, i1* %PF, align 1, !mcsema_real_eip !115
  %76 = icmp eq i32 %68, 0, !mcsema_real_eip !115
  store i1 %76, i1* %ZF, align 1, !mcsema_real_eip !115
  %77 = icmp slt i32 %68, 0
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !115
  %78 = icmp ult i32 %_new_load_260, 10, !mcsema_real_eip !115
  store i1 %78, i1* %CF, align 1, !mcsema_real_eip !115
  %79 = and i32 %69, %_new_load_260, !mcsema_real_eip !115
  %80 = icmp slt i32 %79, 0
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !115
  %tmp2 = xor i1 %77, %80
  br i1 %tmp2, label %block_0x1b2, label %block_0x1d1, !mcsema_real_eip !116

block_0x1b2:                                      ; preds = %block_0x1a8
  %_new_load_275 = load i32, i32* %_address_in_parent_stack_bt_259., align 4
  %81 = add i32 %_new_load_275, 1, !mcsema_real_eip !118
  %82 = xor i32 %81, %_new_load_275, !mcsema_real_eip !118
  %83 = and i32 %82, 16, !mcsema_real_eip !118
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !118
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !118
  %85 = icmp slt i32 %81, 0
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !118
  %86 = icmp eq i32 %81, 0, !mcsema_real_eip !118
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !118
  %87 = xor i32 %_new_load_275, -2147483648, !mcsema_real_eip !118
  %88 = and i32 %82, %87, !mcsema_real_eip !118
  %89 = icmp slt i32 %88, 0
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !118
  %90 = trunc i32 %81 to i8, !mcsema_real_eip !118
  %91 = call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !118
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !118
  %94 = icmp eq i32 %_new_load_275, -1
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !118
  %95 = zext i32 %81 to i64, !mcsema_real_eip !118
  store i64 %95, i64* %XAX, align 8, !mcsema_real_eip !118
  %_new_gep_69 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -88
  %_ptr_to_int_276 = ptrtoint i8* %_new_gep_69 to i64
  %_offset_above_rbp_279 = sub i64 %_ptr_to_int_276, %_local_end_to_int_
  %_pot_address_in_parent_stack_280 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_279
  %_cond1_281 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_282 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_283 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_284 = or i1 %_cond2_1_282, %_cond2_2_283
  %_cond4_285 = icmp ule i8* %_pot_address_in_parent_stack_280, %_parent_stack_end_ptr_
  %_cond1_n_cond2_286 = and i1 %_cond1_281, %_cond2_284
  %_cond1_n_cond2_cond3_287 = and i1 %_cond1_n_cond2_286, %_cond4_285
  %.v = select i1 %_cond1_n_cond2_cond3_287, i8* %_pot_address_in_parent_stack_280, i8* %_new_gep_69
  %96 = bitcast i8* %.v to i64*
  %_new_load_290 = load i64, i64* %96, align 8
  store i64 %_new_load_290, i64* %XCX, align 8, !mcsema_real_eip !119
  %_new_load_305 = load i32, i32* %_address_in_parent_stack_bt_259., align 4
  %97 = sext i32 %_new_load_305 to i64, !mcsema_real_eip !120
  store i64 %97, i64* %XDX, align 8, !mcsema_real_eip !120
  %98 = shl nsw i64 %97, 2
  %99 = add i64 %98, %_new_load_290, !mcsema_real_eip !121
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !121
  store i32 %81, i32* %100, align 4, !mcsema_real_eip !121
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -92
  %101 = ptrtoint i8* %_new_gep_75 to i64
  %102 = bitcast i8* %_new_gep_75 to i32*
  %_offset_above_rbp_309 = sub i64 %101, %_local_end_to_int_
  %_pot_address_in_parent_stack_310 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_309
  %_cond1_311 = icmp ugt i8* %_new_gep_75, %_local_stack_end_ptr_
  %_cond2_1_312 = icmp ugt i8* %_new_gep_75, %_parent_stack_end_ptr_
  %_cond2_2_313 = icmp ult i8* %_new_gep_75, %_parent_stack_start_ptr_
  %_cond2_314 = or i1 %_cond2_1_312, %_cond2_2_313
  %_cond4_315 = icmp ule i8* %_pot_address_in_parent_stack_310, %_parent_stack_end_ptr_
  %_cond1_n_cond2_316 = and i1 %_cond1_311, %_cond2_314
  %_cond1_n_cond2_cond3_317 = and i1 %_cond1_n_cond2_316, %_cond4_315
  %_address_in_parent_stack_bt_319 = bitcast i8* %_pot_address_in_parent_stack_310 to i32*
  %103 = select i1 %_cond1_n_cond2_cond3_317, i32* %_address_in_parent_stack_bt_319, i32* %102
  %_new_load_320 = load i32, i32* %103, align 4
  %104 = add i32 %_new_load_320, 1, !mcsema_real_eip !123
  %105 = xor i32 %104, %_new_load_320, !mcsema_real_eip !123
  %106 = and i32 %105, 16, !mcsema_real_eip !123
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !123
  store i1 %107, i1* %AF, align 1, !mcsema_real_eip !123
  %108 = icmp slt i32 %104, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !123
  %109 = icmp eq i32 %104, 0, !mcsema_real_eip !123
  store i1 %109, i1* %ZF, align 1, !mcsema_real_eip !123
  %110 = xor i32 %_new_load_320, -2147483648, !mcsema_real_eip !123
  %111 = and i32 %105, %110, !mcsema_real_eip !123
  %112 = icmp slt i32 %111, 0
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !123
  %113 = trunc i32 %104 to i8, !mcsema_real_eip !123
  %114 = call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !123
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  store i1 %116, i1* %PF, align 1, !mcsema_real_eip !123
  %117 = icmp eq i32 %_new_load_320, -1
  store i1 %117, i1* %CF, align 1, !mcsema_real_eip !123
  %118 = zext i32 %104 to i64, !mcsema_real_eip !123
  store i64 %118, i64* %XAX, align 8, !mcsema_real_eip !123
  store i32 %104, i32* %102, align 4, !mcsema_real_eip !124
  br label %block_0x1a8, !mcsema_real_eip !125

block_0x1d1:                                      ; preds = %block_0x1a8
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !126
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -64
  %119 = ptrtoint i8* %_new_gep_81 to i64
  store i64 %119, i64* %XCX, align 8, !mcsema_real_eip !127
  %_new_gep_84 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -24
  %120 = ptrtoint i8* %_new_gep_84 to i64
  %_offset_above_rbp_324 = sub i64 %120, %_local_end_to_int_
  %_pot_address_in_parent_stack_325 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_324
  %_cond1_326 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_327 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_328 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_329 = or i1 %_cond2_1_327, %_cond2_2_328
  %_cond4_330 = icmp ule i8* %_pot_address_in_parent_stack_325, %_parent_stack_end_ptr_
  %_cond1_n_cond2_331 = and i1 %_cond1_326, %_cond2_329
  %_cond1_n_cond2_cond3_332 = and i1 %_cond1_n_cond2_331, %_cond4_330
  %_address_in_parent_stack_bt_334..v = select i1 %_cond1_n_cond2_cond3_332, i8* %_pot_address_in_parent_stack_325, i8* %_new_gep_84
  %_address_in_parent_stack_bt_334. = bitcast i8* %_address_in_parent_stack_bt_334..v to i32*
  %_new_load_335 = load i32, i32* %_address_in_parent_stack_bt_334., align 4
  %121 = zext i32 %_new_load_335 to i64, !mcsema_real_eip !128
  store i64 %121, i64* %XDI, align 8, !mcsema_real_eip !128
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -80
  %_ptr_to_int_336 = ptrtoint i8* %_new_gep_87 to i64
  %_offset_above_rbp_339 = sub i64 %_ptr_to_int_336, %_local_end_to_int_
  %_pot_address_in_parent_stack_340 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_339
  %_cond1_341 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_342 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_343 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_344 = or i1 %_cond2_1_342, %_cond2_2_343
  %_cond4_345 = icmp ule i8* %_pot_address_in_parent_stack_340, %_parent_stack_end_ptr_
  %_cond1_n_cond2_346 = and i1 %_cond1_341, %_cond2_344
  %_cond1_n_cond2_cond3_347 = and i1 %_cond1_n_cond2_346, %_cond4_345
  %.v3 = select i1 %_cond1_n_cond2_cond3_347, i8* %_pot_address_in_parent_stack_340, i8* %_new_gep_87
  %122 = bitcast i8* %.v3 to i64*
  %_new_load_350 = load i64, i64* %122, align 8
  store i64 %_new_load_350, i64* %XDX, align 8, !mcsema_real_eip !129
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -88
  %_ptr_to_int_351 = ptrtoint i8* %_new_gep_90 to i64
  %_offset_above_rbp_354 = sub i64 %_ptr_to_int_351, %_local_end_to_int_
  %_pot_address_in_parent_stack_355 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_354
  %_cond1_356 = icmp ugt i8* %_new_gep_90, %_local_stack_end_ptr_
  %_cond2_1_357 = icmp ugt i8* %_new_gep_90, %_parent_stack_end_ptr_
  %_cond2_2_358 = icmp ult i8* %_new_gep_90, %_parent_stack_start_ptr_
  %_cond2_359 = or i1 %_cond2_1_357, %_cond2_2_358
  %_cond4_360 = icmp ule i8* %_pot_address_in_parent_stack_355, %_parent_stack_end_ptr_
  %_cond1_n_cond2_361 = and i1 %_cond1_356, %_cond2_359
  %_cond1_n_cond2_cond3_362 = and i1 %_cond1_n_cond2_361, %_cond4_360
  %_address_in_parent_stack_bt_364._allin_new_bt_91.v = select i1 %_cond1_n_cond2_cond3_362, i8* %_pot_address_in_parent_stack_355, i8* %_new_gep_90
  %_address_in_parent_stack_bt_364._allin_new_bt_91 = bitcast i8* %_address_in_parent_stack_bt_364._allin_new_bt_91.v to i64*
  %_new_load_365 = load i64, i64* %_address_in_parent_stack_bt_364._allin_new_bt_91, align 8
  store i64 %_new_load_365, i64* %XSI, align 8, !mcsema_real_eip !130
  %_new_load_380 = load i32, i32* %_address_in_parent_stack_bt_334., align 4
  %123 = zext i32 %_new_load_380 to i64, !mcsema_real_eip !131
  store i64 %123, i64* %R8, align 8, !mcsema_real_eip !131
  %_new_load_395 = load i64, i64* %122, align 8
  store i64 %_new_load_395, i64* %R9, align 8, !mcsema_real_eip !132
  %_new_load_410 = load i64, i64* %_address_in_parent_stack_bt_364._allin_new_bt_91, align 8
  store i64 %_new_load_410, i64* %R10, align 8, !mcsema_real_eip !133
  %_new_gep_102 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -104
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  store i64 %_new_load_365, i64* %_allin_new_bt_103, align 8, !mcsema_real_eip !134
  %RCX_val.213 = load i64, i64* %XCX, align 8, !mcsema_real_eip !135
  store i64 %RCX_val.213, i64* %XSI, align 8, !mcsema_real_eip !135
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_105 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104, i64 -104
  %_ptr_to_int_411 = ptrtoint i8* %_new_gep_105 to i64
  %_offset_above_rbp_414 = sub i64 %_ptr_to_int_411, %_local_end_to_int_
  %_pot_address_in_parent_stack_415 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_414
  %_cond1_416 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_417 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_418 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_419 = or i1 %_cond2_1_417, %_cond2_2_418
  %_cond4_420 = icmp ule i8* %_pot_address_in_parent_stack_415, %_parent_stack_end_ptr_
  %_cond1_n_cond2_421 = and i1 %_cond1_416, %_cond2_419
  %_cond1_n_cond2_cond3_422 = and i1 %_cond1_n_cond2_421, %_cond4_420
  %_address_in_parent_stack_bt_424._allin_new_bt_106.v = select i1 %_cond1_n_cond2_cond3_422, i8* %_pot_address_in_parent_stack_415, i8* %_new_gep_105
  %_address_in_parent_stack_bt_424._allin_new_bt_106 = bitcast i8* %_address_in_parent_stack_bt_424._allin_new_bt_106.v to i64*
  %_new_load_425 = load i64, i64* %_address_in_parent_stack_bt_424._allin_new_bt_106, align 8
  store i64 %_new_load_425, i64* %R11, align 8, !mcsema_real_eip !136
  %_new_gep_108 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104, i64 -112
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  store i64 %RCX_val.213, i64* %_allin_new_bt_109, align 8, !mcsema_real_eip !137
  %R11_val.217 = load i64, i64* %R11, align 8, !mcsema_real_eip !138
  store i64 %R11_val.217, i64* %XCX, align 8, !mcsema_real_eip !138
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_111 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_110, i64 -116
  %R8D.219 = bitcast i64* %R8 to i32*, !mcsema_real_eip !139
  %R8D_val.220 = load i32, i32* %R8D.219, align 4, !mcsema_real_eip !139
  %124 = bitcast i8* %_new_gep_111 to i32*
  store i32 %R8D_val.220, i32* %124, align 4, !mcsema_real_eip !139
  %EAX_val.222 = load i32, i32* %EAX.178, align 4, !mcsema_real_eip !140
  %125 = zext i32 %EAX_val.222 to i64, !mcsema_real_eip !140
  store i64 %125, i64* %R8, align 8, !mcsema_real_eip !140
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_114 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_113, i64 -128
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %R9_val.224 = load i64, i64* %R9, align 8, !mcsema_real_eip !141
  store i64 %R9_val.224, i64* %_allin_new_bt_115, align 8, !mcsema_real_eip !141
  %EAX_val.226 = load i32, i32* %EAX.178, align 4, !mcsema_real_eip !142
  %126 = zext i32 %EAX_val.226 to i64, !mcsema_real_eip !142
  store i64 %126, i64* %R9, align 8, !mcsema_real_eip !142
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_117 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_116, i64 -116
  %127 = ptrtoint i8* %_new_gep_117 to i64
  %_offset_above_rbp_429 = sub i64 %127, %_local_end_to_int_
  %_pot_address_in_parent_stack_430 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_429
  %_cond1_431 = icmp ugt i8* %_new_gep_117, %_local_stack_end_ptr_
  %_cond2_1_432 = icmp ugt i8* %_new_gep_117, %_parent_stack_end_ptr_
  %_cond2_2_433 = icmp ult i8* %_new_gep_117, %_parent_stack_start_ptr_
  %_cond2_434 = or i1 %_cond2_1_432, %_cond2_2_433
  %_cond4_435 = icmp ule i8* %_pot_address_in_parent_stack_430, %_parent_stack_end_ptr_
  %_cond1_n_cond2_436 = and i1 %_cond1_431, %_cond2_434
  %_cond1_n_cond2_cond3_437 = and i1 %_cond1_n_cond2_436, %_cond4_435
  %.v4 = select i1 %_cond1_n_cond2_cond3_437, i8* %_pot_address_in_parent_stack_430, i8* %_new_gep_117
  %128 = bitcast i8* %.v4 to i32*
  %_new_load_440 = load i32, i32* %128, align 4
  %129 = zext i32 %_new_load_440 to i64, !mcsema_real_eip !143
  store i64 %129, i64* %XAX, align 8, !mcsema_real_eip !143
  %130 = bitcast i8** %_RSP_ptr_ to i32**
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_11956715 = load i32*, i32** %130, align 8
  store i32 %_new_load_440, i32* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_11956715, align 4, !mcsema_real_eip !144
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_123 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_122, i64 -112
  %_ptr_to_int_441 = ptrtoint i8* %_new_gep_123 to i64
  %_offset_above_rbp_444 = sub i64 %_ptr_to_int_441, %_local_end_to_int_
  %_pot_address_in_parent_stack_445 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_444
  %_cond1_446 = icmp ugt i8* %_new_gep_123, %_local_stack_end_ptr_
  %_cond2_1_447 = icmp ugt i8* %_new_gep_123, %_parent_stack_end_ptr_
  %_cond2_2_448 = icmp ult i8* %_new_gep_123, %_parent_stack_start_ptr_
  %_cond2_449 = or i1 %_cond2_1_447, %_cond2_2_448
  %_cond4_450 = icmp ule i8* %_pot_address_in_parent_stack_445, %_parent_stack_end_ptr_
  %_cond1_n_cond2_451 = and i1 %_cond1_446, %_cond2_449
  %_cond1_n_cond2_cond3_452 = and i1 %_cond1_n_cond2_451, %_cond4_450
  %_address_in_parent_stack_bt_454._allin_new_bt_124.v = select i1 %_cond1_n_cond2_cond3_452, i8* %_pot_address_in_parent_stack_445, i8* %_new_gep_123
  %_address_in_parent_stack_bt_454._allin_new_bt_124 = bitcast i8* %_address_in_parent_stack_bt_454._allin_new_bt_124.v to i64*
  %_new_load_455 = load i64, i64* %_address_in_parent_stack_bt_454._allin_new_bt_124, align 8
  store i64 %_new_load_455, i64* %XBX, align 8, !mcsema_real_eip !145
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_125 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_126 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_125, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  store i64 %_new_load_455, i64* %_allin_new_bt_127, align 8, !mcsema_real_eip !146
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_129 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_128, i64 -128
  %_ptr_to_int_456 = ptrtoint i8* %_new_gep_129 to i64
  %_offset_above_rbp_459 = sub i64 %_ptr_to_int_456, %_local_end_to_int_
  %_pot_address_in_parent_stack_460 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_459
  %_cond1_461 = icmp ugt i8* %_new_gep_129, %_local_stack_end_ptr_
  %_cond2_1_462 = icmp ugt i8* %_new_gep_129, %_parent_stack_end_ptr_
  %_cond2_2_463 = icmp ult i8* %_new_gep_129, %_parent_stack_start_ptr_
  %_cond2_464 = or i1 %_cond2_1_462, %_cond2_2_463
  %_cond4_465 = icmp ule i8* %_pot_address_in_parent_stack_460, %_parent_stack_end_ptr_
  %_cond1_n_cond2_466 = and i1 %_cond1_461, %_cond2_464
  %_cond1_n_cond2_cond3_467 = and i1 %_cond1_n_cond2_466, %_cond4_465
  %.v8 = select i1 %_cond1_n_cond2_cond3_467, i8* %_pot_address_in_parent_stack_460, i8* %_new_gep_129
  %131 = bitcast i8* %.v8 to i64*
  %_new_load_470 = load i64, i64* %131, align 8
  store i64 %_new_load_470, i64* %R14, align 8, !mcsema_real_eip !147
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_131 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_132 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_131, i64 16
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 %_new_load_470, i64* %_allin_new_bt_133, align 8, !mcsema_real_eip !148
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_134 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_135 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_134, i64 24
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %R10_val.238 = load i64, i64* %R10, align 8, !mcsema_real_eip !149
  store i64 %R10_val.238, i64* %_allin_new_bt_136, align 8, !mcsema_real_eip !149
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.239 = load i64, i64* %XSP, align 8, !mcsema_real_eip !150
  %_new_gep_138 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_137, i64 -8
  %132 = add i64 %RSP_val.239, -8
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_139, align 8, !mcsema_real_eip !150
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_, align 8
  store i64 %132, i64* %XSP, align 8, !mcsema_real_eip !150
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_195 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_138, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_195)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_197 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_198 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_197, i64 8
  store i8* %_gep_fix_198, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x261 to i64), i64* %XDI, align 8, !mcsema_real_eip !151
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_141 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_140, i64 -96
  %EAX_val.242 = load i32, i32* %EAX.178, align 4, !mcsema_real_eip !152
  %133 = bitcast i8* %_new_gep_141 to i32*
  store i32 %EAX_val.242, i32* %133, align 4, !mcsema_real_eip !152
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_143 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_144 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_143, i64 -96
  %134 = ptrtoint i8* %_new_gep_144 to i64
  %_offset_above_rbp_474 = sub i64 %134, %_local_end_to_int_
  %_pot_address_in_parent_stack_475 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_474
  %_cond1_476 = icmp ugt i8* %_new_gep_144, %_local_stack_end_ptr_
  %_cond2_1_477 = icmp ugt i8* %_new_gep_144, %_parent_stack_end_ptr_
  %_cond2_2_478 = icmp ult i8* %_new_gep_144, %_parent_stack_start_ptr_
  %_cond2_479 = or i1 %_cond2_1_477, %_cond2_2_478
  %_cond4_480 = icmp ule i8* %_pot_address_in_parent_stack_475, %_parent_stack_end_ptr_
  %_cond1_n_cond2_481 = and i1 %_cond1_476, %_cond2_479
  %_cond1_n_cond2_cond3_482 = and i1 %_cond1_n_cond2_481, %_cond4_480
  %_address_in_parent_stack_bt_484..v = select i1 %_cond1_n_cond2_cond3_482, i8* %_pot_address_in_parent_stack_475, i8* %_new_gep_144
  %_address_in_parent_stack_bt_484. = bitcast i8* %_address_in_parent_stack_bt_484..v to i32*
  %_new_load_485 = load i32, i32* %_address_in_parent_stack_bt_484., align 4
  %135 = zext i32 %_new_load_485 to i64, !mcsema_real_eip !153
  store i64 %135, i64* %XSI, align 8, !mcsema_real_eip !153
  %AL.244 = bitcast i64* %XAX to i8*, !mcsema_real_eip !154
  store i8 0, i8* %AL.244, align 1, !mcsema_real_eip !154
  %RDI_val.245 = load i64, i64* %XDI, align 8, !mcsema_real_eip !155
  %RDX_val.247 = load i64, i64* %XDX, align 8, !mcsema_real_eip !155
  %RCX_val.248 = load i64, i64* %XCX, align 8, !mcsema_real_eip !155
  %R8_val.249 = load i64, i64* %R8, align 8, !mcsema_real_eip !155
  %R9_val.250 = load i64, i64* %R9, align 8, !mcsema_real_eip !155
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_486 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146 to i64
  %_offset_above_rbp_489 = sub i64 %_ptr_to_int_486, %_local_end_to_int_
  %_pot_address_in_parent_stack_490 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_489
  %_cond1_491 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, %_local_stack_end_ptr_
  %_cond2_1_492 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, %_parent_stack_end_ptr_
  %_cond2_2_493 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, %_parent_stack_start_ptr_
  %_cond2_494 = or i1 %_cond2_1_492, %_cond2_2_493
  %_cond4_495 = icmp ule i8* %_pot_address_in_parent_stack_490, %_parent_stack_end_ptr_
  %_cond1_n_cond2_496 = and i1 %_cond1_491, %_cond2_494
  %_cond1_n_cond2_cond3_497 = and i1 %_cond1_n_cond2_496, %_cond4_495
  %.v9 = select i1 %_cond1_n_cond2_cond3_497, i8* %_pot_address_in_parent_stack_490, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146
  %136 = bitcast i8* %.v9 to i64*
  %_new_load_500 = load i64, i64* %136, align 8
  %_new_gep_148 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 8
  %_ptr_to_int_501 = ptrtoint i8* %_new_gep_148 to i64
  %_offset_above_rbp_504 = sub i64 %_ptr_to_int_501, %_local_end_to_int_
  %_pot_address_in_parent_stack_505 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_504
  %_cond1_506 = icmp ugt i8* %_new_gep_148, %_local_stack_end_ptr_
  %_cond2_1_507 = icmp ugt i8* %_new_gep_148, %_parent_stack_end_ptr_
  %_cond2_2_508 = icmp ult i8* %_new_gep_148, %_parent_stack_start_ptr_
  %_cond2_509 = or i1 %_cond2_1_507, %_cond2_2_508
  %_cond4_510 = icmp ule i8* %_pot_address_in_parent_stack_505, %_parent_stack_end_ptr_
  %_cond1_n_cond2_511 = and i1 %_cond1_506, %_cond2_509
  %_cond1_n_cond2_cond3_512 = and i1 %_cond1_n_cond2_511, %_cond4_510
  %_address_in_parent_stack_bt_514._allin_new_bt_149.v = select i1 %_cond1_n_cond2_cond3_512, i8* %_pot_address_in_parent_stack_505, i8* %_new_gep_148
  %_address_in_parent_stack_bt_514._allin_new_bt_149 = bitcast i8* %_address_in_parent_stack_bt_514._allin_new_bt_149.v to i64*
  %_new_load_515 = load i64, i64* %_address_in_parent_stack_bt_514._allin_new_bt_149, align 8
  %_new_gep_150 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 16
  %_ptr_to_int_516 = ptrtoint i8* %_new_gep_150 to i64
  %_offset_above_rbp_519 = sub i64 %_ptr_to_int_516, %_local_end_to_int_
  %_pot_address_in_parent_stack_520 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_519
  %_cond1_521 = icmp ugt i8* %_new_gep_150, %_local_stack_end_ptr_
  %_cond2_1_522 = icmp ugt i8* %_new_gep_150, %_parent_stack_end_ptr_
  %_cond2_2_523 = icmp ult i8* %_new_gep_150, %_parent_stack_start_ptr_
  %_cond2_524 = or i1 %_cond2_1_522, %_cond2_2_523
  %_cond4_525 = icmp ule i8* %_pot_address_in_parent_stack_520, %_parent_stack_end_ptr_
  %_cond1_n_cond2_526 = and i1 %_cond1_521, %_cond2_524
  %_cond1_n_cond2_cond3_527 = and i1 %_cond1_n_cond2_526, %_cond4_525
  %.v10 = select i1 %_cond1_n_cond2_cond3_527, i8* %_pot_address_in_parent_stack_520, i8* %_new_gep_150
  %137 = bitcast i8* %.v10 to i64*
  %_new_load_530 = load i64, i64* %137, align 8
  %_new_gep_152 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 24
  %_ptr_to_int_531 = ptrtoint i8* %_new_gep_152 to i64
  %_offset_above_rbp_534 = sub i64 %_ptr_to_int_531, %_local_end_to_int_
  %_pot_address_in_parent_stack_535 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_534
  %_cond1_536 = icmp ugt i8* %_new_gep_152, %_local_stack_end_ptr_
  %_cond2_1_537 = icmp ugt i8* %_new_gep_152, %_parent_stack_end_ptr_
  %_cond2_2_538 = icmp ult i8* %_new_gep_152, %_parent_stack_start_ptr_
  %_cond2_539 = or i1 %_cond2_1_537, %_cond2_2_538
  %_cond4_540 = icmp ule i8* %_pot_address_in_parent_stack_535, %_parent_stack_end_ptr_
  %_cond1_n_cond2_541 = and i1 %_cond1_536, %_cond2_539
  %_cond1_n_cond2_cond3_542 = and i1 %_cond1_n_cond2_541, %_cond4_540
  %_address_in_parent_stack_bt_544._allin_new_bt_153.v = select i1 %_cond1_n_cond2_cond3_542, i8* %_pot_address_in_parent_stack_535, i8* %_new_gep_152
  %_address_in_parent_stack_bt_544._allin_new_bt_153 = bitcast i8* %_address_in_parent_stack_bt_544._allin_new_bt_153.v to i64*
  %_new_load_545 = load i64, i64* %_address_in_parent_stack_bt_544._allin_new_bt_153, align 8
  %_new_gep_154 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 32
  %_ptr_to_int_546 = ptrtoint i8* %_new_gep_154 to i64
  %_offset_above_rbp_549 = sub i64 %_ptr_to_int_546, %_local_end_to_int_
  %_pot_address_in_parent_stack_550 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_549
  %_cond1_551 = icmp ugt i8* %_new_gep_154, %_local_stack_end_ptr_
  %_cond2_1_552 = icmp ugt i8* %_new_gep_154, %_parent_stack_end_ptr_
  %_cond2_2_553 = icmp ult i8* %_new_gep_154, %_parent_stack_start_ptr_
  %_cond2_554 = or i1 %_cond2_1_552, %_cond2_2_553
  %_cond4_555 = icmp ule i8* %_pot_address_in_parent_stack_550, %_parent_stack_end_ptr_
  %_cond1_n_cond2_556 = and i1 %_cond1_551, %_cond2_554
  %_cond1_n_cond2_cond3_557 = and i1 %_cond1_n_cond2_556, %_cond4_555
  %.v11 = select i1 %_cond1_n_cond2_cond3_557, i8* %_pot_address_in_parent_stack_550, i8* %_new_gep_154
  %138 = bitcast i8* %.v11 to i64*
  %_new_load_560 = load i64, i64* %138, align 8
  %_new_gep_156 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 40
  %_ptr_to_int_561 = ptrtoint i8* %_new_gep_156 to i64
  %_offset_above_rbp_564 = sub i64 %_ptr_to_int_561, %_local_end_to_int_
  %_pot_address_in_parent_stack_565 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_564
  %_cond1_566 = icmp ugt i8* %_new_gep_156, %_local_stack_end_ptr_
  %_cond2_1_567 = icmp ugt i8* %_new_gep_156, %_parent_stack_end_ptr_
  %_cond2_2_568 = icmp ult i8* %_new_gep_156, %_parent_stack_start_ptr_
  %_cond2_569 = or i1 %_cond2_1_567, %_cond2_2_568
  %_cond4_570 = icmp ule i8* %_pot_address_in_parent_stack_565, %_parent_stack_end_ptr_
  %_cond1_n_cond2_571 = and i1 %_cond1_566, %_cond2_569
  %_cond1_n_cond2_cond3_572 = and i1 %_cond1_n_cond2_571, %_cond4_570
  %_address_in_parent_stack_bt_574._allin_new_bt_157.v = select i1 %_cond1_n_cond2_cond3_572, i8* %_pot_address_in_parent_stack_565, i8* %_new_gep_156
  %_address_in_parent_stack_bt_574._allin_new_bt_157 = bitcast i8* %_address_in_parent_stack_bt_574._allin_new_bt_157.v to i64*
  %_new_load_575 = load i64, i64* %_address_in_parent_stack_bt_574._allin_new_bt_157, align 8
  %RSP_val.252 = load i64, i64* %XSP, align 8, !mcsema_real_eip !155
  %_new_gep_159 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_146, i64 -8
  %139 = add i64 %RSP_val.252, -8
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_160, align 8, !mcsema_real_eip !155
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_, align 8
  store i64 %139, i64* %XSP, align 8, !mcsema_real_eip !155
  %140 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.245, i64 %135, i64 %RDX_val.247, i64 %RCX_val.248, i64 %R8_val.249, i64 %R9_val.250, i64 %_new_load_500, i64 %_new_load_515, i64 %_new_load_530, i64 %_new_load_545, i64 %_new_load_560, i64 %_new_load_575)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_199 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_200 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_199, i64 8
  store i8* %_gep_fix_200, i8** %_RSP_ptr_, align 8
  store i64 %140, i64* %XAX, align 8, !mcsema_real_eip !155
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_162 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_161, i64 -96
  %141 = ptrtoint i8* %_new_gep_162 to i64
  %_offset_above_rbp_579 = sub i64 %141, %_local_end_to_int_
  %_pot_address_in_parent_stack_580 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_579
  %_cond1_581 = icmp ugt i8* %_new_gep_162, %_local_stack_end_ptr_
  %_cond2_1_582 = icmp ugt i8* %_new_gep_162, %_parent_stack_end_ptr_
  %_cond2_2_583 = icmp ult i8* %_new_gep_162, %_parent_stack_start_ptr_
  %_cond2_584 = or i1 %_cond2_1_582, %_cond2_2_583
  %_cond4_585 = icmp ule i8* %_pot_address_in_parent_stack_580, %_parent_stack_end_ptr_
  %_cond1_n_cond2_586 = and i1 %_cond1_581, %_cond2_584
  %_cond1_n_cond2_cond3_587 = and i1 %_cond1_n_cond2_586, %_cond4_585
  %.v12 = select i1 %_cond1_n_cond2_cond3_587, i8* %_pot_address_in_parent_stack_580, i8* %_new_gep_162
  %142 = bitcast i8* %.v12 to i32*
  %_new_load_590 = load i32, i32* %142, align 4
  %143 = zext i32 %_new_load_590 to i64, !mcsema_real_eip !156
  store i64 %143, i64* %XSI, align 8, !mcsema_real_eip !156
  %_new_gep_165 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_161, i64 -132
  %144 = trunc i64 %140 to i32
  %145 = bitcast i8* %_new_gep_165 to i32*
  store i32 %144, i32* %145, align 4, !mcsema_real_eip !157
  %ESI.257 = bitcast i64* %XSI to i32*, !mcsema_real_eip !158
  %ESI_val.258 = load i32, i32* %ESI.257, align 4, !mcsema_real_eip !158
  %146 = zext i32 %ESI_val.258 to i64, !mcsema_real_eip !158
  store i64 %146, i64* %XAX, align 8, !mcsema_real_eip !158
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.259 = load i64, i64* %XSP, align 8, !mcsema_real_eip !159
  %_new_gep_168 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167, i64 160
  %147 = add i64 %RSP_val.259, 160, !mcsema_real_eip !159
  %_trans_p2i_169 = ptrtoint i8* %_new_gep_168 to i64
  %_trans_p2i_170 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167 to i64
  %_trans_xor_171 = xor i64 %_trans_p2i_169, %_trans_p2i_170
  %148 = and i64 %_trans_xor_171, 16, !mcsema_real_eip !159
  %149 = icmp ne i64 %148, 0, !mcsema_real_eip !159
  store i1 %149, i1* %AF, align 1, !mcsema_real_eip !159
  %150 = icmp slt i64 %147, 0
  store i1 %150, i1* %SF, align 1, !mcsema_real_eip !159
  %_trans_icmp_eq_173 = icmp eq i8* %_new_gep_168, null
  store i1 %_trans_icmp_eq_173, i1* %ZF, align 1, !mcsema_real_eip !159
  %151 = xor i64 %_trans_p2i_170, -9223372036854775808, !mcsema_real_eip !159
  %152 = and i64 %_trans_xor_171, %151, !mcsema_real_eip !159
  %153 = icmp slt i64 %152, 0
  store i1 %153, i1* %OF, align 1, !mcsema_real_eip !159
  %_trans_trunc_180 = trunc i64 %_trans_p2i_169 to i8
  %154 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_180), !mcsema_real_eip !159
  %155 = and i8 %154, 1
  %156 = icmp eq i8 %155, 0
  store i1 %156, i1* %PF, align 1, !mcsema_real_eip !159
  %_trans_icmp_ne_182 = icmp ne i64 %RSP_val.259, %_trans_p2i_169
  store i1 %_trans_icmp_ne_182, i1* %CF, align 1, !mcsema_real_eip !159
  store volatile i8* %_new_gep_168, i8** %_RSP_ptr_, align 8
  store i64 %147, i64* %XSP, align 8, !mcsema_real_eip !159
  %_offset_above_rbp_594 = sub i64 %_trans_p2i_169, %_local_end_to_int_
  %_pot_address_in_parent_stack_595 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_594
  %_cond1_596 = icmp ugt i8* %_new_gep_168, %_local_stack_end_ptr_
  %_cond2_1_597 = icmp ugt i8* %_new_gep_168, %_parent_stack_end_ptr_
  %_cond2_2_598 = icmp ult i8* %_new_gep_168, %_parent_stack_start_ptr_
  %_cond2_599 = or i1 %_cond2_1_597, %_cond2_2_598
  %_cond4_600 = icmp ule i8* %_pot_address_in_parent_stack_595, %_parent_stack_end_ptr_
  %_cond1_n_cond2_601 = and i1 %_cond1_596, %_cond2_599
  %_cond1_n_cond2_cond3_602 = and i1 %_cond1_n_cond2_601, %_cond4_600
  %_address_in_parent_stack_bt_604._allin_new_bt_184.v = select i1 %_cond1_n_cond2_cond3_602, i8* %_pot_address_in_parent_stack_595, i8* %_new_gep_168
  %_address_in_parent_stack_bt_604._allin_new_bt_184 = bitcast i8* %_address_in_parent_stack_bt_604._allin_new_bt_184.v to i64*
  %_new_load_605 = load i64, i64* %_address_in_parent_stack_bt_604._allin_new_bt_184, align 8
  store i64 %_new_load_605, i64* %XBX, align 8, !mcsema_real_eip !160
  %_new_gep_185 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167, i64 168
  %157 = add i64 %RSP_val.259, 168, !mcsema_real_eip !160
  store volatile i8* %_new_gep_185, i8** %_RSP_ptr_, align 8
  store i64 %157, i64* %XSP, align 8, !mcsema_real_eip !160
  %_ptr_to_int_606 = ptrtoint i8* %_new_gep_185 to i64
  %_offset_above_rbp_609 = sub i64 %_ptr_to_int_606, %_local_end_to_int_
  %_pot_address_in_parent_stack_610 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_609
  %_cond1_611 = icmp ugt i8* %_new_gep_185, %_local_stack_end_ptr_
  %_cond2_1_612 = icmp ugt i8* %_new_gep_185, %_parent_stack_end_ptr_
  %_cond2_2_613 = icmp ult i8* %_new_gep_185, %_parent_stack_start_ptr_
  %_cond2_614 = or i1 %_cond2_1_612, %_cond2_2_613
  %_cond4_615 = icmp ule i8* %_pot_address_in_parent_stack_610, %_parent_stack_end_ptr_
  %_cond1_n_cond2_616 = and i1 %_cond1_611, %_cond2_614
  %_cond1_n_cond2_cond3_617 = and i1 %_cond1_n_cond2_616, %_cond4_615
  %.v13 = select i1 %_cond1_n_cond2_cond3_617, i8* %_pot_address_in_parent_stack_610, i8* %_new_gep_185
  %158 = bitcast i8* %.v13 to i64*
  %_new_load_620 = load i64, i64* %158, align 8
  store i64 %_new_load_620, i64* %R14, align 8, !mcsema_real_eip !161
  %_new_gep_188 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167, i64 176
  %159 = add i64 %RSP_val.259, 176, !mcsema_real_eip !161
  store volatile i8* %_new_gep_188, i8** %_RSP_ptr_, align 8
  store i64 %159, i64* %XSP, align 8, !mcsema_real_eip !161
  %_ptr_to_int_621 = ptrtoint i8* %_new_gep_188 to i64
  %_offset_above_rbp_624 = sub i64 %_ptr_to_int_621, %_local_end_to_int_
  %_pot_address_in_parent_stack_625 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_624
  %_cond1_626 = icmp ugt i8* %_new_gep_188, %_local_stack_end_ptr_
  %_cond2_1_627 = icmp ugt i8* %_new_gep_188, %_parent_stack_end_ptr_
  %_cond2_2_628 = icmp ult i8* %_new_gep_188, %_parent_stack_start_ptr_
  %_cond2_629 = or i1 %_cond2_1_627, %_cond2_2_628
  %_cond4_630 = icmp ule i8* %_pot_address_in_parent_stack_625, %_parent_stack_end_ptr_
  %_cond1_n_cond2_631 = and i1 %_cond1_626, %_cond2_629
  %_cond1_n_cond2_cond3_632 = and i1 %_cond1_n_cond2_631, %_cond4_630
  %_address_in_parent_stack_bt_634._allin_new_bt_190.v = select i1 %_cond1_n_cond2_cond3_632, i8* %_pot_address_in_parent_stack_625, i8* %_new_gep_188
  %_address_in_parent_stack_bt_634._allin_new_bt_190 = bitcast i8* %_address_in_parent_stack_bt_634._allin_new_bt_190.v to i64*
  %_new_load_635 = load i64, i64* %_address_in_parent_stack_bt_634._allin_new_bt_190, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_635 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_635, i64* %XBP, align 8, !mcsema_real_eip !162
  %_new_gep_191 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167, i64 184
  %160 = add i64 %RSP_val.259, 184, !mcsema_real_eip !162
  store volatile i8* %_new_gep_191, i8** %_RSP_ptr_, align 8
  store i64 %160, i64* %XSP, align 8, !mcsema_real_eip !162
  %_new_gep_193 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_167, i64 192
  %161 = add i64 %RSP_val.259, 192, !mcsema_real_eip !163
  %_ptr_to_int_636 = ptrtoint i8* %_new_gep_191 to i64
  %_offset_above_rbp_639 = sub i64 %_ptr_to_int_636, %_local_end_to_int_
  %_pot_address_in_parent_stack_640 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_639
  %_cond1_641 = icmp ugt i8* %_new_gep_191, %_local_stack_end_ptr_
  %_cond2_1_642 = icmp ugt i8* %_new_gep_191, %_parent_stack_end_ptr_
  %_cond2_2_643 = icmp ult i8* %_new_gep_191, %_parent_stack_start_ptr_
  %_cond2_644 = or i1 %_cond2_1_642, %_cond2_2_643
  %_cond4_645 = icmp ule i8* %_pot_address_in_parent_stack_640, %_parent_stack_end_ptr_
  %_cond1_n_cond2_646 = and i1 %_cond1_641, %_cond2_644
  %_cond1_n_cond2_cond3_647 = and i1 %_cond1_n_cond2_646, %_cond4_645
  %.v14 = select i1 %_cond1_n_cond2_cond3_647, i8* %_pot_address_in_parent_stack_640, i8* %_new_gep_191
  %162 = bitcast i8* %.v14 to i64*
  %_new_load_650 = load i64, i64* %162, align 8
  store i64 %_new_load_650, i64* %XIP, align 8, !mcsema_real_eip !163
  store volatile i8* %_new_gep_193, i8** %_RSP_ptr_, align 8
  store i64 %161, i64* %XSP, align 8, !mcsema_real_eip !163
  ret void, !mcsema_real_eip !163
}

attributes #0 = { noinline nounwind }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 5}
!6 = !{i64 9}
!7 = !{i64 13}
!8 = !{i64 17}
!9 = !{i64 20}
!10 = !{i64 23}
!11 = !{i64 27}
!12 = !{i64 31}
!13 = !{i64 35}
!14 = !{i64 39}
!15 = !{i64 43}
!16 = !{i64 46}
!17 = !{i64 50}
!18 = !{i64 54}
!19 = !{i64 58}
!20 = !{i64 65}
!21 = !{i64 68}
!22 = !{i64 71}
!23 = !{i64 74}
!24 = !{i64 81}
!25 = !{i64 84}
!26 = !{i64 87}
!27 = !{i64 93}
!28 = !{i64 97}
!29 = !{i64 101}
!30 = !{i64 104}
!31 = !{i64 107}
!32 = !{i64 110}
!33 = !{i64 113}
!34 = !{i64 116}
!35 = !{i64 119}
!36 = !{i64 124}
!37 = !{i64 128}
!38 = !{i64 130}
!39 = !{i64 133}
!40 = !{i64 136}
!41 = !{i64 143}
!42 = !{i64 146}
!43 = !{i64 149}
!44 = !{i64 155}
!45 = !{i64 159}
!46 = !{i64 163}
!47 = !{i64 166}
!48 = !{i64 169}
!49 = !{i64 172}
!50 = !{i64 175}
!51 = !{i64 178}
!52 = !{i64 181}
!53 = !{i64 186}
!54 = !{i64 189}
!55 = !{i64 192}
!56 = !{i64 195}
!57 = !{i64 202}
!58 = !{i64 205}
!59 = !{i64 208}
!60 = !{i64 214}
!61 = !{i64 218}
!62 = !{i64 222}
!63 = !{i64 225}
!64 = !{i64 228}
!65 = !{i64 231}
!66 = !{i64 234}
!67 = !{i64 237}
!68 = !{i64 240}
!69 = !{i64 245}
!70 = !{i64 249}
!71 = !{i64 251}
!72 = !{i64 254}
!73 = !{i64 257}
!74 = !{i64 264}
!75 = !{i64 267}
!76 = !{i64 270}
!77 = !{i64 276}
!78 = !{i64 280}
!79 = !{i64 284}
!80 = !{i64 287}
!81 = !{i64 290}
!82 = !{i64 293}
!83 = !{i64 296}
!84 = !{i64 299}
!85 = !{i64 302}
!86 = !{i64 307}
!87 = !{i64 310}
!88 = !{i64 311}
!89 = !{i64 312}
!90 = !{i64 320}
!91 = !{i64 321}
!92 = !{i64 324}
!93 = !{i64 326}
!94 = !{i64 327}
!95 = !{i64 334}
!96 = !{i64 341}
!97 = !{i64 348}
!98 = !{i64 355}
!99 = !{i64 359}
!100 = !{i64 365}
!101 = !{i64 368}
!102 = !{i64 371}
!103 = !{i64 375}
!104 = !{i64 379}
!105 = !{i64 382}
!106 = !{i64 385}
!107 = !{i64 388}
!108 = !{i64 393}
!109 = !{i64 398}
!110 = !{i64 400}
!111 = !{i64 404}
!112 = !{i64 408}
!113 = !{i64 413}
!114 = !{i64 417}
!115 = !{i64 424}
!116 = !{i64 428}
!117 = !{i64 434}
!118 = !{i64 437}
!119 = !{i64 440}
!120 = !{i64 444}
!121 = !{i64 448}
!122 = !{i64 451}
!123 = !{i64 454}
!124 = !{i64 457}
!125 = !{i64 460}
!126 = !{i64 465}
!127 = !{i64 470}
!128 = !{i64 474}
!129 = !{i64 477}
!130 = !{i64 481}
!131 = !{i64 485}
!132 = !{i64 489}
!133 = !{i64 493}
!134 = !{i64 497}
!135 = !{i64 501}
!136 = !{i64 504}
!137 = !{i64 508}
!138 = !{i64 512}
!139 = !{i64 515}
!140 = !{i64 519}
!141 = !{i64 522}
!142 = !{i64 526}
!143 = !{i64 529}
!144 = !{i64 532}
!145 = !{i64 535}
!146 = !{i64 539}
!147 = !{i64 544}
!148 = !{i64 548}
!149 = !{i64 553}
!150 = !{i64 558}
!151 = !{i64 563}
!152 = !{i64 573}
!153 = !{i64 576}
!154 = !{i64 579}
!155 = !{i64 581}
!156 = !{i64 586}
!157 = !{i64 589}
!158 = !{i64 595}
!159 = !{i64 597}
!160 = !{i64 604}
!161 = !{i64 605}
!162 = !{i64 607}
!163 = !{i64 608}
