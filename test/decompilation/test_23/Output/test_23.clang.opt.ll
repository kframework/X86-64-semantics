; ModuleID = 'Output/test_23.clang.opt.bc'
source_filename = "Output/test_23.clang.bc"
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
module asm "  .globl read;"
module asm "  .globl _read;"
module asm "  .type _read,@function"
module asm "_read:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq read@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _read,0b-_read;"
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
module asm "  .globl exit;"
module asm "  .globl _exit;"
module asm "  .type _exit,@function"
module asm "_exit:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq exit@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _exit,0b-_exit;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_b0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_b0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [184 x i8] }>
%1 = type <{ [77 x i8] }>
%2 = type <{ [95 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x320 = internal constant %0 <{ [184 x i8] c"r\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\80\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00d\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00V\01\00\00\00\00\00\00" }>, align 64
@data_0x3e0 = internal global %1 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64
@data_0x42d = internal constant %2 <{ [95 x i8] c"%c\00\0A\00Wrong command!(only w,s,a,d accepted!)\0A\00You lose!\0A\00You win!\0A\00Your solution:%s \0A\00You lose\0A\00" }>, align 64

; Function Attrs: naked
declare void @__mcsema_detach_call_value() local_unnamed_addr #0

; Function Attrs: noinline
define x86_64_sysvcc void @sub_b0(%RegState*) local_unnamed_addr #1 {
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
  %3 = add i64 %RSP_val.1, -120
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = and i64 %4, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !5
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !5
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !5
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !5
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !5
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !5
  %7 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 28, i64 28>, <2 x i64>* %7, align 8
  %8 = add i64 %RSP_val.1, -72, !mcsema_real_eip !6
  store i64 %8, i64* %R8, align 8, !mcsema_real_eip !6
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %R9, align 8, !mcsema_real_eip !7
  %9 = add i64 %RSP_val.1, -12, !mcsema_real_eip !8
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %10, align 4, !mcsema_real_eip !8
  %RBP_val.12 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %11 = add i64 %RBP_val.12, -8, !mcsema_real_eip !9
  %EDI.13 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.14 = load i32, i32* %EDI.13, align 4, !mcsema_real_eip !9
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.14, i32* %12, align 4, !mcsema_real_eip !9
  %RBP_val.15 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %13 = add i64 %RBP_val.15, -16, !mcsema_real_eip !10
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !10
  %RSI_val.16 = load i64, i64* %XSI, align 8, !mcsema_real_eip !10
  store i64 %RSI_val.16, i64* %14, align 8, !mcsema_real_eip !10
  %RBP_val.17 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %15 = add i64 %RBP_val.17, -36, !mcsema_real_eip !11
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !11
  store i32 0, i32* %16, align 4, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %17 = add i64 %RBP_val.18, -20, !mcsema_real_eip !12
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !12
  store i32 1, i32* %18, align 4, !mcsema_real_eip !12
  %RBP_val.19 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %19 = add i64 %RBP_val.19, -24, !mcsema_real_eip !13
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !13
  store i32 1, i32* %20, align 4, !mcsema_real_eip !13
  %RBP_val.20 = load i64, i64* %XBP, align 8
  %21 = add i64 %RBP_val.20, -24, !mcsema_real_eip !14
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !14
  %23 = load i32, i32* %22, align 4, !mcsema_real_eip !14
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %24, 11
  store i64 %25, i64* %XSI, align 8, !mcsema_real_eip !15
  %R9_val.22 = load i64, i64* %R9, align 8, !mcsema_real_eip !16
  %26 = add i64 %R9_val.22, %25
  %27 = xor i64 %26, %R9_val.22, !mcsema_real_eip !16
  %28 = xor i64 %27, %25, !mcsema_real_eip !16
  %29 = and i64 %28, 16, !mcsema_real_eip !16
  %30 = icmp ne i64 %29, 0, !mcsema_real_eip !16
  store i1 %30, i1* %AF, align 1, !mcsema_real_eip !16
  %31 = icmp slt i64 %26, 0
  store i1 %31, i1* %SF, align 1, !mcsema_real_eip !16
  %32 = icmp eq i64 %26, 0, !mcsema_real_eip !16
  store i1 %32, i1* %ZF, align 1, !mcsema_real_eip !16
  %33 = xor i64 %25, -9223372036854775808, !mcsema_real_eip !16
  %34 = xor i64 %33, %R9_val.22, !mcsema_real_eip !16
  %35 = and i64 %27, %34, !mcsema_real_eip !16
  %36 = icmp slt i64 %35, 0
  store i1 %36, i1* %OF, align 1, !mcsema_real_eip !16
  %37 = trunc i64 %26 to i8, !mcsema_real_eip !16
  %38 = tail call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !16
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  store i1 %40, i1* %PF, align 1, !mcsema_real_eip !16
  %41 = icmp ult i64 %26, %R9_val.22, !mcsema_real_eip !16
  store i1 %41, i1* %CF, align 1, !mcsema_real_eip !16
  store i64 %26, i64* %R9, align 8, !mcsema_real_eip !16
  %42 = add i64 %RBP_val.20, -20, !mcsema_real_eip !17
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !17
  %44 = load i32, i32* %43, align 4, !mcsema_real_eip !17
  %45 = sext i32 %44 to i64, !mcsema_real_eip !17
  %46 = add i64 %26, %45, !mcsema_real_eip !18
  %47 = inttoptr i64 %46 to i8*, !mcsema_real_eip !18
  store i8 88, i8* %47, align 1, !mcsema_real_eip !18
  %EAX_val.28 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !19
  %48 = zext i32 %EAX_val.28 to i64, !mcsema_real_eip !19
  store i64 %48, i64* %XDI, align 8, !mcsema_real_eip !19
  %R8_val.29 = load i64, i64* %R8, align 8, !mcsema_real_eip !20
  store i64 %R8_val.29, i64* %XSI, align 8, !mcsema_real_eip !20
  %RDX_val.32 = load i64, i64* %XDX, align 8, !mcsema_real_eip !21
  %RSP_val.33 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %49 = add i64 %RSP_val.33, -8
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !21
  store i64 -2415393069852865332, i64* %50, align 8, !mcsema_real_eip !21
  store i64 %49, i64* %XSP, align 8, !mcsema_real_eip !21
  %51 = tail call x86_64_sysvcc i64 @_read(i64 %48, i64 %R8_val.29, i64 %RDX_val.32), !mcsema_real_eip !21
  store i64 %51, i64* %XAX, align 8, !mcsema_real_eip !21
  %RBP_val.34 = load i64, i64* %XBP, align 8, !mcsema_real_eip !22
  %52 = add i64 %RBP_val.34, -72, !mcsema_real_eip !22
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !22
  store i64 %51, i64* %53, align 8, !mcsema_real_eip !22
  %AL.132 = bitcast i64* %XAX to i8*
  br label %block_0x114, !mcsema_real_eip !23

block_0x114:                                      ; preds = %block_0x2c7, %entry
  %RBP_val.36 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %54 = add i64 %RBP_val.36, -36, !mcsema_real_eip !23
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !23
  %56 = load i32, i32* %55, align 4, !mcsema_real_eip !23
  %57 = add i32 %56, -28
  %58 = xor i32 %57, %56, !mcsema_real_eip !23
  %59 = and i32 %58, 16
  %60 = icmp eq i32 %59, 0
  store i1 %60, i1* %AF, align 1, !mcsema_real_eip !23
  %61 = trunc i32 %57 to i8, !mcsema_real_eip !23
  %62 = tail call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !23
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  store i1 %64, i1* %PF, align 1, !mcsema_real_eip !23
  %65 = icmp eq i32 %57, 0, !mcsema_real_eip !23
  store i1 %65, i1* %ZF, align 1, !mcsema_real_eip !23
  %66 = icmp slt i32 %57, 0
  store i1 %66, i1* %SF, align 1, !mcsema_real_eip !23
  %67 = icmp ult i32 %56, 28, !mcsema_real_eip !23
  store i1 %67, i1* %CF, align 1, !mcsema_real_eip !23
  %68 = and i32 %58, %56, !mcsema_real_eip !23
  %69 = icmp slt i32 %68, 0
  store i1 %69, i1* %OF, align 1, !mcsema_real_eip !23
  %tmp = xor i1 %66, %69
  br i1 %tmp, label %block_0x11e, label %block_0x312, !mcsema_real_eip !24

block_0x11e:                                      ; preds = %block_0x114
  %70 = add i64 %RBP_val.36, -20, !mcsema_real_eip !25
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !25
  %72 = load i32, i32* %71, align 4, !mcsema_real_eip !25
  %73 = zext i32 %72 to i64, !mcsema_real_eip !25
  store i64 %73, i64* %XAX, align 8, !mcsema_real_eip !25
  %74 = add i64 %RBP_val.36, -28, !mcsema_real_eip !26
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !26
  store i32 %72, i32* %75, align 4, !mcsema_real_eip !26
  %RBP_val.49 = load i64, i64* %XBP, align 8
  %76 = add i64 %RBP_val.49, -24, !mcsema_real_eip !27
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !27
  %78 = load i32, i32* %77, align 4, !mcsema_real_eip !27
  %79 = zext i32 %78 to i64, !mcsema_real_eip !27
  store i64 %79, i64* %XAX, align 8, !mcsema_real_eip !27
  %80 = add i64 %RBP_val.49, -32, !mcsema_real_eip !28
  %81 = inttoptr i64 %80 to i32*, !mcsema_real_eip !28
  store i32 %78, i32* %81, align 4, !mcsema_real_eip !28
  %RBP_val.53 = load i64, i64* %XBP, align 8
  %82 = add i64 %RBP_val.53, -36, !mcsema_real_eip !29
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !29
  %84 = load i32, i32* %83, align 4, !mcsema_real_eip !29
  %85 = sext i32 %84 to i64, !mcsema_real_eip !29
  store i64 %85, i64* %XCX, align 8, !mcsema_real_eip !29
  %86 = add i64 %RBP_val.53, -64, !mcsema_real_eip !30
  %87 = add i64 %86, %85, !mcsema_real_eip !30
  %88 = inttoptr i64 %87 to i8*, !mcsema_real_eip !30
  %89 = load i8, i8* %88, align 1, !mcsema_real_eip !30
  %90 = sext i8 %89 to i32
  %91 = add nsw i32 %90, -97, !mcsema_real_eip !31
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %XCX, align 8, !mcsema_real_eip !32
  %93 = add nsw i32 %90, -119
  %94 = xor i32 %93, %91, !mcsema_real_eip !33
  %95 = and i32 %94, 16
  %96 = icmp eq i32 %95, 0
  store i1 %96, i1* %AF, align 1, !mcsema_real_eip !33
  %97 = trunc i32 %93 to i8, !mcsema_real_eip !33
  %98 = tail call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !33
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  store i1 %100, i1* %PF, align 1, !mcsema_real_eip !33
  %101 = icmp eq i32 %93, 0, !mcsema_real_eip !33
  store i1 %101, i1* %ZF, align 1, !mcsema_real_eip !33
  %102 = icmp slt i8 %89, 119
  store i1 %102, i1* %SF, align 1, !mcsema_real_eip !33
  %103 = icmp ult i32 %91, 22, !mcsema_real_eip !33
  store i1 %103, i1* %CF, align 1, !mcsema_real_eip !33
  %104 = and i32 %94, %91, !mcsema_real_eip !33
  %105 = icmp slt i32 %104, 0
  store i1 %105, i1* %OF, align 1, !mcsema_real_eip !33
  %106 = zext i32 %93 to i64, !mcsema_real_eip !33
  store i64 %106, i64* %XAX, align 8, !mcsema_real_eip !33
  %107 = add i64 %RBP_val.53, -80, !mcsema_real_eip !34
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !34
  store i64 %92, i64* %108, align 8, !mcsema_real_eip !34
  %RBP_val.64 = load i64, i64* %XBP, align 8, !mcsema_real_eip !35
  %109 = add i64 %RBP_val.64, -84, !mcsema_real_eip !35
  %EAX_val.66 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !35
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !35
  store i32 %EAX_val.66, i32* %110, align 4, !mcsema_real_eip !35
  %111 = load i1, i1* %ZF, align 1, !mcsema_real_eip !36
  %112 = load i1, i1* %CF, align 1, !mcsema_real_eip !36
  %.demorgan = or i1 %111, %112
  br i1 %.demorgan, label %block_0x148, label %block_0x18e, !mcsema_real_eip !36

block_0x312:                                      ; preds = %block_0x29b, %block_0x114
  %.sink3 = phi i32 [ 1, %block_0x114 ], [ 2, %block_0x29b ]
  %.sink = phi i64 [ -108, %block_0x114 ], [ -104, %block_0x29b ]
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, align 8
  store i8 0, i8* %AL.132, align 1
  %RSI_val.195 = load i64, i64* %XSI, align 8
  %RSP_val.196 = load i64, i64* %XSP, align 8
  %113 = add i64 %RSP_val.196, -8
  %114 = inttoptr i64 %113 to i64*
  store i64 -2415393069852865332, i64* %114, align 8
  store i64 %113, i64* %XSP, align 8
  %115 = tail call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.195)
  store i64 %115, i64* %XAX, align 8
  %RBP_val.197 = load i64, i64* %XBP, align 8
  %116 = add i64 %RBP_val.197, -4
  %117 = inttoptr i64 %116 to i32*
  store i32 %.sink3, i32* %117, align 4
  %RBP_val.198 = load i64, i64* %XBP, align 8
  %118 = add i64 %RBP_val.198, %.sink
  %EAX_val.200 = load i32, i32* %EAX.4, align 4
  %119 = inttoptr i64 %118 to i32*
  store i32 %EAX_val.200, i32* %119, align 4
  %RBP_val.67 = load i64, i64* %XBP, align 8, !mcsema_real_eip !37
  %120 = add i64 %RBP_val.67, -4, !mcsema_real_eip !37
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !37
  %122 = load i32, i32* %121, align 4, !mcsema_real_eip !37
  %123 = zext i32 %122 to i64, !mcsema_real_eip !37
  store i64 %123, i64* %XAX, align 8, !mcsema_real_eip !37
  %RSP_val.68 = load i64, i64* %XSP, align 8, !mcsema_real_eip !38
  %124 = add i64 %RSP_val.68, 112, !mcsema_real_eip !38
  %125 = xor i64 %124, %RSP_val.68, !mcsema_real_eip !38
  %126 = and i64 %125, 16
  %127 = icmp eq i64 %126, 0
  store i1 %127, i1* %AF, align 1, !mcsema_real_eip !38
  %128 = icmp slt i64 %124, 0
  store i1 %128, i1* %SF, align 1, !mcsema_real_eip !38
  %129 = icmp eq i64 %124, 0, !mcsema_real_eip !38
  store i1 %129, i1* %ZF, align 1, !mcsema_real_eip !38
  %130 = xor i64 %RSP_val.68, -9223372036854775808, !mcsema_real_eip !38
  %131 = and i64 %125, %130, !mcsema_real_eip !38
  %132 = icmp slt i64 %131, 0
  store i1 %132, i1* %OF, align 1, !mcsema_real_eip !38
  %133 = trunc i64 %124 to i8, !mcsema_real_eip !38
  %134 = tail call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !38
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  store i1 %136, i1* %PF, align 1, !mcsema_real_eip !38
  %137 = icmp ugt i64 %RSP_val.68, -113
  store i1 %137, i1* %CF, align 1, !mcsema_real_eip !38
  store i64 %124, i64* %XSP, align 8, !mcsema_real_eip !38
  %138 = inttoptr i64 %124 to i64*, !mcsema_real_eip !39
  %139 = load i64, i64* %138, align 8, !mcsema_real_eip !39
  store i64 %139, i64* %XBP, align 8, !mcsema_real_eip !39
  %140 = add i64 %RSP_val.68, 120, !mcsema_real_eip !39
  store i64 %140, i64* %XSP, align 8, !mcsema_real_eip !39
  %141 = add i64 %RSP_val.68, 128, !mcsema_real_eip !40
  %142 = inttoptr i64 %140 to i64*, !mcsema_real_eip !40
  %143 = load i64, i64* %142, align 8, !mcsema_real_eip !40
  store i64 %143, i64* %XIP, align 8, !mcsema_real_eip !40
  store i64 %141, i64* %XSP, align 8, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40

block_0x148:                                      ; preds = %block_0x11e
  %RBP_val.87 = load i64, i64* %XBP, align 8
  %144 = add i64 %RBP_val.87, -80, !mcsema_real_eip !41
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !41
  %146 = load i64, i64* %145, align 8, !mcsema_real_eip !41
  store i64 %146, i64* %XAX, align 8, !mcsema_real_eip !41
  %147 = shl i64 %146, 3
  %148 = add i64 %147, ptrtoint (%0* @data_0x320 to i64), !mcsema_real_eip !42
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !42
  %150 = load i64, i64* %149, align 8, !mcsema_real_eip !42
  store i64 %150, i64* %XCX, align 8, !mcsema_real_eip !42
  switch i64 %150, label %279 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !43

block_0x18e:                                      ; preds = %block_0x11e, %block_0x148
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, align 8, !mcsema_real_eip !44
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !45
  %RSI_val.73 = load i64, i64* %XSI, align 8, !mcsema_real_eip !46
  %RSP_val.74 = load i64, i64* %XSP, align 8, !mcsema_real_eip !46
  %151 = add i64 %RSP_val.74, -8
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !46
  store i64 -2415393069852865332, i64* %152, align 8, !mcsema_real_eip !46
  store i64 %151, i64* %XSP, align 8, !mcsema_real_eip !46
  %153 = tail call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64 %RSI_val.73), !mcsema_real_eip !46
  store i64 %153, i64* %XAX, align 8, !mcsema_real_eip !46
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, align 8, !mcsema_real_eip !47
  %RBP_val.75 = load i64, i64* %XBP, align 8, !mcsema_real_eip !48
  %154 = add i64 %RBP_val.75, -88, !mcsema_real_eip !48
  %155 = trunc i64 %153 to i32
  %156 = inttoptr i64 %154 to i32*, !mcsema_real_eip !48
  store i32 %155, i32* %156, align 4, !mcsema_real_eip !48
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !49
  %RDI_val.79 = load i64, i64* %XDI, align 8, !mcsema_real_eip !50
  %RSI_val.80 = load i64, i64* %XSI, align 8, !mcsema_real_eip !50
  %RSP_val.81 = load i64, i64* %XSP, align 8, !mcsema_real_eip !50
  %157 = add i64 %RSP_val.81, -8
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !50
  store i64 -2415393069852865332, i64* %158, align 8, !mcsema_real_eip !50
  store i64 %157, i64* %XSP, align 8, !mcsema_real_eip !50
  %159 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.79, i64 %RSI_val.80), !mcsema_real_eip !50
  store i64 %159, i64* %XAX, align 8, !mcsema_real_eip !50
  store i64 4294967295, i64* %XDI, align 8, !mcsema_real_eip !51
  %RBP_val.82 = load i64, i64* %XBP, align 8, !mcsema_real_eip !52
  %160 = add i64 %RBP_val.82, -92, !mcsema_real_eip !52
  %161 = trunc i64 %159 to i32
  %162 = inttoptr i64 %160 to i32*, !mcsema_real_eip !52
  store i32 %161, i32* %162, align 4, !mcsema_real_eip !52
  %RDI_val.85 = load i64, i64* %XDI, align 8, !mcsema_real_eip !53
  %RSP_val.86 = load i64, i64* %XSP, align 8, !mcsema_real_eip !53
  %163 = add i64 %RSP_val.86, -8
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !53
  store i64 -2415393069852865332, i64* %164, align 8, !mcsema_real_eip !53
  store i64 %163, i64* %XSP, align 8, !mcsema_real_eip !53
  %165 = tail call x86_64_sysvcc i64 @_exit(i64 %RDI_val.85), !mcsema_real_eip !53
  store i64 %165, i64* %XAX, align 8, !mcsema_real_eip !53
  br label %block_0x1c0, !mcsema_real_eip !41

block_0x1c0:                                      ; preds = %block_0x180, %block_0x172, %block_0x164, %block_0x156, %block_0x18e
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !54
  %RBP_val.90 = load i64, i64* %XBP, align 8
  %166 = add i64 %RBP_val.90, -24, !mcsema_real_eip !55
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !55
  %168 = load i32, i32* %167, align 4, !mcsema_real_eip !55
  %169 = sext i32 %168 to i64
  %170 = mul nsw i64 %169, 11
  store i64 %170, i64* %XCX, align 8, !mcsema_real_eip !56
  %171 = add i64 %170, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !57
  %172 = xor i64 %171, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !57
  %173 = xor i64 %171, %170, !mcsema_real_eip !57
  %174 = and i64 %173, 16, !mcsema_real_eip !57
  %175 = icmp ne i64 %174, 0, !mcsema_real_eip !57
  store i1 %175, i1* %AF, align 1, !mcsema_real_eip !57
  %176 = icmp slt i64 %171, 0
  store i1 %176, i1* %SF, align 1, !mcsema_real_eip !57
  %177 = icmp eq i64 %171, 0, !mcsema_real_eip !57
  store i1 %177, i1* %ZF, align 1, !mcsema_real_eip !57
  %178 = xor i64 %170, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -9223372036854775808), !mcsema_real_eip !57
  %179 = and i64 %172, %178, !mcsema_real_eip !57
  %180 = icmp slt i64 %179, 0
  store i1 %180, i1* %OF, align 1, !mcsema_real_eip !57
  %181 = trunc i64 %171 to i8, !mcsema_real_eip !57
  %182 = tail call i8 @llvm.ctpop.i8(i8 %181), !mcsema_real_eip !57
  %183 = and i8 %182, 1
  %184 = icmp eq i8 %183, 0
  store i1 %184, i1* %PF, align 1, !mcsema_real_eip !57
  %185 = icmp ult i64 %171, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !57
  store i1 %185, i1* %CF, align 1, !mcsema_real_eip !57
  store i64 %171, i64* %XAX, align 8, !mcsema_real_eip !57
  %186 = add i64 %RBP_val.90, -20, !mcsema_real_eip !58
  %187 = inttoptr i64 %186 to i32*, !mcsema_real_eip !58
  %188 = load i32, i32* %187, align 4, !mcsema_real_eip !58
  %189 = sext i32 %188 to i64, !mcsema_real_eip !58
  store i64 %189, i64* %XCX, align 8, !mcsema_real_eip !58
  %190 = add i64 %189, %171, !mcsema_real_eip !59
  %191 = inttoptr i64 %190 to i8*, !mcsema_real_eip !59
  %192 = load i8, i8* %191, align 1, !mcsema_real_eip !59
  %193 = sext i8 %192 to i64
  %194 = and i64 %193, 4294967295
  store i64 %194, i64* %XDX, align 8, !mcsema_real_eip !59
  %195 = sext i8 %192 to i32
  %196 = add nsw i32 %195, -35
  %197 = xor i32 %196, %195, !mcsema_real_eip !60
  %198 = and i32 %197, 16, !mcsema_real_eip !60
  %199 = icmp ne i32 %198, 0, !mcsema_real_eip !60
  store i1 %199, i1* %AF, align 1, !mcsema_real_eip !60
  %200 = trunc i32 %196 to i8, !mcsema_real_eip !60
  %201 = tail call i8 @llvm.ctpop.i8(i8 %200), !mcsema_real_eip !60
  %202 = and i8 %201, 1
  %203 = icmp eq i8 %202, 0
  store i1 %203, i1* %PF, align 1, !mcsema_real_eip !60
  %204 = icmp eq i32 %196, 0
  store i1 %204, i1* %ZF, align 1, !mcsema_real_eip !60
  %205 = icmp slt i8 %192, 35
  store i1 %205, i1* %SF, align 1, !mcsema_real_eip !60
  %206 = icmp ult i8 %192, 35
  store i1 %206, i1* %CF, align 1, !mcsema_real_eip !60
  %207 = and i32 %197, %195, !mcsema_real_eip !60
  %208 = icmp slt i32 %207, 0
  store i1 %208, i1* %OF, align 1, !mcsema_real_eip !60
  br i1 %204, label %block_0x1e6, label %block_0x219, !mcsema_real_eip !61

block_0x156:                                      ; preds = %block_0x148
  %209 = add i64 %RBP_val.87, -24
  %210 = inttoptr i64 %209 to i32*
  %211 = load i32, i32* %210, align 4, !mcsema_real_eip !62
  %212 = add i32 %211, -1, !mcsema_real_eip !63
  %213 = xor i32 %212, %211, !mcsema_real_eip !63
  %214 = and i32 %213, 16
  %215 = icmp eq i32 %214, 0
  store i1 %215, i1* %AF, align 1, !mcsema_real_eip !63
  %216 = icmp slt i32 %212, 0
  store i1 %216, i1* %SF, align 1, !mcsema_real_eip !63
  %217 = icmp eq i32 %212, 0, !mcsema_real_eip !63
  store i1 %217, i1* %ZF, align 1, !mcsema_real_eip !63
  %218 = and i32 %213, %211, !mcsema_real_eip !63
  %219 = icmp slt i32 %218, 0
  store i1 %219, i1* %OF, align 1, !mcsema_real_eip !63
  %220 = trunc i32 %212 to i8, !mcsema_real_eip !63
  %221 = tail call i8 @llvm.ctpop.i8(i8 %220), !mcsema_real_eip !63
  %222 = and i8 %221, 1
  %223 = icmp eq i8 %222, 0
  store i1 %223, i1* %PF, align 1, !mcsema_real_eip !63
  %224 = icmp ne i32 %211, 0
  store i1 %224, i1* %CF, align 1, !mcsema_real_eip !63
  %225 = zext i32 %212 to i64, !mcsema_real_eip !63
  store i64 %225, i64* %XAX, align 8, !mcsema_real_eip !63
  store i32 %212, i32* %210, align 4, !mcsema_real_eip !64
  br label %block_0x1c0, !mcsema_real_eip !65

block_0x164:                                      ; preds = %block_0x148
  %226 = add i64 %RBP_val.87, -24
  %227 = inttoptr i64 %226 to i32*
  %228 = load i32, i32* %227, align 4, !mcsema_real_eip !66
  %229 = add i32 %228, 1, !mcsema_real_eip !67
  %230 = xor i32 %229, %228, !mcsema_real_eip !67
  %231 = and i32 %230, 16, !mcsema_real_eip !67
  %232 = icmp ne i32 %231, 0, !mcsema_real_eip !67
  store i1 %232, i1* %AF, align 1, !mcsema_real_eip !67
  %233 = icmp slt i32 %229, 0
  store i1 %233, i1* %SF, align 1, !mcsema_real_eip !67
  %234 = icmp eq i32 %229, 0, !mcsema_real_eip !67
  store i1 %234, i1* %ZF, align 1, !mcsema_real_eip !67
  %235 = xor i32 %228, -2147483648, !mcsema_real_eip !67
  %236 = and i32 %230, %235, !mcsema_real_eip !67
  %237 = icmp slt i32 %236, 0
  store i1 %237, i1* %OF, align 1, !mcsema_real_eip !67
  %238 = trunc i32 %229 to i8, !mcsema_real_eip !67
  %239 = tail call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !67
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  store i1 %241, i1* %PF, align 1, !mcsema_real_eip !67
  %242 = icmp eq i32 %228, -1
  store i1 %242, i1* %CF, align 1, !mcsema_real_eip !67
  %243 = zext i32 %229 to i64, !mcsema_real_eip !67
  store i64 %243, i64* %XAX, align 8, !mcsema_real_eip !67
  store i32 %229, i32* %227, align 4, !mcsema_real_eip !68
  br label %block_0x1c0, !mcsema_real_eip !69

block_0x172:                                      ; preds = %block_0x148
  %244 = add i64 %RBP_val.87, -20
  %245 = inttoptr i64 %244 to i32*
  %246 = load i32, i32* %245, align 4, !mcsema_real_eip !70
  %247 = add i32 %246, -1, !mcsema_real_eip !71
  %248 = xor i32 %247, %246, !mcsema_real_eip !71
  %249 = and i32 %248, 16
  %250 = icmp eq i32 %249, 0
  store i1 %250, i1* %AF, align 1, !mcsema_real_eip !71
  %251 = icmp slt i32 %247, 0
  store i1 %251, i1* %SF, align 1, !mcsema_real_eip !71
  %252 = icmp eq i32 %247, 0, !mcsema_real_eip !71
  store i1 %252, i1* %ZF, align 1, !mcsema_real_eip !71
  %253 = and i32 %248, %246, !mcsema_real_eip !71
  %254 = icmp slt i32 %253, 0
  store i1 %254, i1* %OF, align 1, !mcsema_real_eip !71
  %255 = trunc i32 %247 to i8, !mcsema_real_eip !71
  %256 = tail call i8 @llvm.ctpop.i8(i8 %255), !mcsema_real_eip !71
  %257 = and i8 %256, 1
  %258 = icmp eq i8 %257, 0
  store i1 %258, i1* %PF, align 1, !mcsema_real_eip !71
  %259 = icmp ne i32 %246, 0
  store i1 %259, i1* %CF, align 1, !mcsema_real_eip !71
  %260 = zext i32 %247 to i64, !mcsema_real_eip !71
  store i64 %260, i64* %XAX, align 8, !mcsema_real_eip !71
  store i32 %247, i32* %245, align 4, !mcsema_real_eip !72
  br label %block_0x1c0, !mcsema_real_eip !73

block_0x180:                                      ; preds = %block_0x148
  %261 = add i64 %RBP_val.87, -20
  %262 = inttoptr i64 %261 to i32*
  %263 = load i32, i32* %262, align 4, !mcsema_real_eip !74
  %264 = add i32 %263, 1, !mcsema_real_eip !75
  %265 = xor i32 %264, %263, !mcsema_real_eip !75
  %266 = and i32 %265, 16, !mcsema_real_eip !75
  %267 = icmp ne i32 %266, 0, !mcsema_real_eip !75
  store i1 %267, i1* %AF, align 1, !mcsema_real_eip !75
  %268 = icmp slt i32 %264, 0
  store i1 %268, i1* %SF, align 1, !mcsema_real_eip !75
  %269 = icmp eq i32 %264, 0, !mcsema_real_eip !75
  store i1 %269, i1* %ZF, align 1, !mcsema_real_eip !75
  %270 = xor i32 %263, -2147483648, !mcsema_real_eip !75
  %271 = and i32 %265, %270, !mcsema_real_eip !75
  %272 = icmp slt i32 %271, 0
  store i1 %272, i1* %OF, align 1, !mcsema_real_eip !75
  %273 = trunc i32 %264 to i8, !mcsema_real_eip !75
  %274 = tail call i8 @llvm.ctpop.i8(i8 %273), !mcsema_real_eip !75
  %275 = and i8 %274, 1
  %276 = icmp eq i8 %275, 0
  store i1 %276, i1* %PF, align 1, !mcsema_real_eip !75
  %277 = icmp eq i32 %263, -1
  store i1 %277, i1* %CF, align 1, !mcsema_real_eip !75
  %278 = zext i32 %264 to i64, !mcsema_real_eip !75
  store i64 %278, i64* %XAX, align 8, !mcsema_real_eip !75
  store i32 %264, i32* %262, align 4, !mcsema_real_eip !76
  br label %block_0x1c0, !mcsema_real_eip !77

; <label>:279:                                    ; preds = %block_0x148
  store i64 %150, i64* %XIP, align 8, !mcsema_real_eip !43
  tail call void @__mcsema_detach_call_value(), !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43

block_0x1e6:                                      ; preds = %block_0x1c0
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, align 8, !mcsema_real_eip !78
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !79
  %RSI_val.134 = load i64, i64* %XSI, align 8, !mcsema_real_eip !80
  %RSP_val.135 = load i64, i64* %XSP, align 8, !mcsema_real_eip !80
  %280 = add i64 %RSP_val.135, -8
  %281 = inttoptr i64 %280 to i64*, !mcsema_real_eip !80
  store i64 -2415393069852865332, i64* %281, align 8, !mcsema_real_eip !80
  store i64 %280, i64* %XSP, align 8, !mcsema_real_eip !80
  %282 = tail call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64 %RSI_val.134), !mcsema_real_eip !80
  store i64 %282, i64* %XAX, align 8, !mcsema_real_eip !80
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, align 8, !mcsema_real_eip !81
  %RBP_val.136 = load i64, i64* %XBP, align 8
  %283 = add i64 %RBP_val.136, -64, !mcsema_real_eip !82
  store i64 %283, i64* %XSI, align 8, !mcsema_real_eip !82
  %284 = add i64 %RBP_val.136, -96, !mcsema_real_eip !83
  %285 = trunc i64 %282 to i32
  %286 = inttoptr i64 %284 to i32*, !mcsema_real_eip !83
  store i32 %285, i32* %286, align 4, !mcsema_real_eip !83
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !84
  %RDI_val.141 = load i64, i64* %XDI, align 8, !mcsema_real_eip !85
  %RSI_val.142 = load i64, i64* %XSI, align 8, !mcsema_real_eip !85
  %RSP_val.143 = load i64, i64* %XSP, align 8, !mcsema_real_eip !85
  %287 = add i64 %RSP_val.143, -8
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !85
  store i64 -2415393069852865332, i64* %288, align 8, !mcsema_real_eip !85
  store i64 %287, i64* %XSP, align 8, !mcsema_real_eip !85
  %289 = tail call x86_64_sysvcc i64 @_printf(i64 %RDI_val.141, i64 %RSI_val.142), !mcsema_real_eip !85
  store i64 %289, i64* %XAX, align 8, !mcsema_real_eip !85
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !86
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !86
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !86
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !86
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !86
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !86
  %RBP_val.148 = load i64, i64* %XBP, align 8, !mcsema_real_eip !87
  %290 = add i64 %RBP_val.148, -100, !mcsema_real_eip !87
  %291 = trunc i64 %289 to i32
  %292 = inttoptr i64 %290 to i32*, !mcsema_real_eip !87
  store i32 %291, i32* %292, align 4, !mcsema_real_eip !87
  %RDI_val.151 = load i64, i64* %XDI, align 8, !mcsema_real_eip !88
  %RSP_val.152 = load i64, i64* %XSP, align 8, !mcsema_real_eip !88
  %293 = add i64 %RSP_val.152, -8
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !88
  store i64 -2415393069852865332, i64* %294, align 8, !mcsema_real_eip !88
  store i64 %293, i64* %XSP, align 8, !mcsema_real_eip !88
  %295 = tail call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151), !mcsema_real_eip !88
  store i64 %295, i64* %XAX, align 8, !mcsema_real_eip !88
  %RBP_val.123.pre = load i64, i64* %XBP, align 8
  br label %block_0x219, !mcsema_real_eip !89

block_0x219:                                      ; preds = %block_0x1c0, %block_0x1e6
  %RBP_val.176 = phi i64 [ %RBP_val.90, %block_0x1c0 ], [ %RBP_val.123.pre, %block_0x1e6 ]
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !90
  %296 = add i64 %RBP_val.176, -24
  %297 = inttoptr i64 %296 to i32*
  %298 = load i32, i32* %297, align 4, !mcsema_real_eip !91
  %299 = sext i32 %298 to i64
  %300 = mul nsw i64 %299, 11
  store i64 %300, i64* %XCX, align 8, !mcsema_real_eip !92
  %301 = add i64 %300, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !93
  %302 = xor i64 %301, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !93
  %303 = xor i64 %301, %300, !mcsema_real_eip !93
  %304 = and i64 %303, 16, !mcsema_real_eip !93
  %305 = icmp ne i64 %304, 0, !mcsema_real_eip !93
  store i1 %305, i1* %AF, align 1, !mcsema_real_eip !93
  %306 = icmp slt i64 %301, 0
  store i1 %306, i1* %SF, align 1, !mcsema_real_eip !93
  %307 = icmp eq i64 %301, 0, !mcsema_real_eip !93
  store i1 %307, i1* %ZF, align 1, !mcsema_real_eip !93
  %308 = xor i64 %300, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -9223372036854775808), !mcsema_real_eip !93
  %309 = and i64 %302, %308, !mcsema_real_eip !93
  %310 = icmp slt i64 %309, 0
  store i1 %310, i1* %OF, align 1, !mcsema_real_eip !93
  %311 = trunc i64 %301 to i8, !mcsema_real_eip !93
  %312 = tail call i8 @llvm.ctpop.i8(i8 %311), !mcsema_real_eip !93
  %313 = and i8 %312, 1
  %314 = icmp eq i8 %313, 0
  store i1 %314, i1* %PF, align 1, !mcsema_real_eip !93
  %315 = icmp ult i64 %301, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !93
  store i1 %315, i1* %CF, align 1, !mcsema_real_eip !93
  store i64 %301, i64* %XAX, align 8, !mcsema_real_eip !93
  %316 = add i64 %RBP_val.176, -20
  %317 = inttoptr i64 %316 to i32*
  %318 = load i32, i32* %317, align 4, !mcsema_real_eip !94
  %319 = sext i32 %318 to i64, !mcsema_real_eip !94
  store i64 %319, i64* %XCX, align 8, !mcsema_real_eip !94
  %320 = add i64 %319, %301, !mcsema_real_eip !95
  %321 = inttoptr i64 %320 to i8*, !mcsema_real_eip !95
  %322 = load i8, i8* %321, align 1, !mcsema_real_eip !95
  %323 = sext i8 %322 to i64
  %324 = and i64 %323, 4294967295
  store i64 %324, i64* %XDX, align 8, !mcsema_real_eip !95
  %325 = sext i8 %322 to i32
  %326 = add nsw i32 %325, -32
  %327 = xor i32 %326, %325, !mcsema_real_eip !96
  %328 = and i32 %327, 16, !mcsema_real_eip !96
  %329 = icmp ne i32 %328, 0, !mcsema_real_eip !96
  store i1 %329, i1* %AF, align 1, !mcsema_real_eip !96
  %330 = trunc i32 %326 to i8, !mcsema_real_eip !96
  %331 = tail call i8 @llvm.ctpop.i8(i8 %330), !mcsema_real_eip !96
  %332 = and i8 %331, 1
  %333 = icmp eq i8 %332, 0
  store i1 %333, i1* %PF, align 1, !mcsema_real_eip !96
  %334 = icmp eq i32 %326, 0
  store i1 %334, i1* %ZF, align 1, !mcsema_real_eip !96
  %335 = icmp slt i8 %322, 32
  store i1 %335, i1* %SF, align 1, !mcsema_real_eip !96
  %336 = icmp ult i8 %322, 32
  store i1 %336, i1* %CF, align 1, !mcsema_real_eip !96
  %337 = and i32 %327, %325, !mcsema_real_eip !96
  %338 = icmp slt i32 %337, 0
  store i1 %338, i1* %OF, align 1, !mcsema_real_eip !96
  br i1 %334, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !97

block_0x23f:                                      ; preds = %block_0x219
  %339 = load i32, i32* %297, align 4, !mcsema_real_eip !98
  %340 = add i32 %339, -2
  %341 = xor i32 %340, %339, !mcsema_real_eip !98
  %342 = and i32 %341, 16, !mcsema_real_eip !98
  %343 = icmp ne i32 %342, 0, !mcsema_real_eip !98
  store i1 %343, i1* %AF, align 1, !mcsema_real_eip !98
  %344 = trunc i32 %340 to i8, !mcsema_real_eip !98
  %345 = tail call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !98
  %346 = and i8 %345, 1
  %347 = icmp eq i8 %346, 0
  store i1 %347, i1* %PF, align 1, !mcsema_real_eip !98
  %348 = icmp eq i32 %340, 0
  store i1 %348, i1* %ZF, align 1, !mcsema_real_eip !98
  %349 = icmp slt i32 %340, 0
  store i1 %349, i1* %SF, align 1, !mcsema_real_eip !98
  %350 = icmp ult i32 %339, 2, !mcsema_real_eip !98
  store i1 %350, i1* %CF, align 1, !mcsema_real_eip !98
  %351 = and i32 %341, %339, !mcsema_real_eip !98
  %352 = icmp slt i32 %351, 0
  store i1 %352, i1* %OF, align 1, !mcsema_real_eip !98
  br i1 %348, label %block_0x249, label %block_0x283, !mcsema_real_eip !99

block_0x28f:                                      ; preds = %block_0x279, %block_0x283, %block_0x219
  %RBP_val.172 = phi i64 [ %RBP_val.176, %block_0x279 ], [ %RBP_val.153.pre, %block_0x283 ], [ %RBP_val.176, %block_0x219 ]
  %353 = add i64 %RBP_val.172, -28, !mcsema_real_eip !89
  %354 = inttoptr i64 %353 to i32*, !mcsema_real_eip !89
  %355 = load i32, i32* %354, align 4, !mcsema_real_eip !89
  %356 = zext i32 %355 to i64, !mcsema_real_eip !89
  store i64 %356, i64* %XAX, align 8, !mcsema_real_eip !89
  %357 = add i64 %RBP_val.172, -20
  %358 = inttoptr i64 %357 to i32*
  %359 = load i32, i32* %358, align 4, !mcsema_real_eip !100
  %360 = sub i32 %355, %359, !mcsema_real_eip !100
  %361 = xor i32 %360, %355, !mcsema_real_eip !100
  %362 = xor i32 %361, %359, !mcsema_real_eip !100
  %363 = and i32 %362, 16, !mcsema_real_eip !100
  %364 = icmp ne i32 %363, 0, !mcsema_real_eip !100
  store i1 %364, i1* %AF, align 1, !mcsema_real_eip !100
  %365 = trunc i32 %360 to i8, !mcsema_real_eip !100
  %366 = tail call i8 @llvm.ctpop.i8(i8 %365), !mcsema_real_eip !100
  %367 = and i8 %366, 1
  %368 = icmp eq i8 %367, 0
  store i1 %368, i1* %PF, align 1, !mcsema_real_eip !100
  %369 = icmp eq i32 %360, 0
  store i1 %369, i1* %ZF, align 1, !mcsema_real_eip !100
  %370 = icmp slt i32 %360, 0
  store i1 %370, i1* %SF, align 1, !mcsema_real_eip !100
  %371 = icmp ult i32 %355, %359, !mcsema_real_eip !100
  store i1 %371, i1* %CF, align 1, !mcsema_real_eip !100
  %372 = xor i32 %359, %355, !mcsema_real_eip !100
  %373 = and i32 %361, %372, !mcsema_real_eip !100
  %374 = icmp slt i32 %373, 0
  store i1 %374, i1* %OF, align 1, !mcsema_real_eip !100
  br i1 %369, label %block_0x29b, label %block_0x28f.block_0x2c7_crit_edge, !mcsema_real_eip !101

block_0x28f.block_0x2c7_crit_edge:                ; preds = %block_0x28f
  %.pre = add i64 %RBP_val.172, -24, !mcsema_real_eip !102
  %.pre25 = inttoptr i64 %.pre to i32*, !mcsema_real_eip !102
  br label %block_0x2c7

block_0x29b:                                      ; preds = %block_0x28f
  %375 = add i64 %RBP_val.172, -32, !mcsema_real_eip !103
  %376 = inttoptr i64 %375 to i32*, !mcsema_real_eip !103
  %377 = load i32, i32* %376, align 4, !mcsema_real_eip !103
  %378 = zext i32 %377 to i64, !mcsema_real_eip !103
  store i64 %378, i64* %XAX, align 8, !mcsema_real_eip !103
  %379 = add i64 %RBP_val.172, -24, !mcsema_real_eip !104
  %380 = inttoptr i64 %379 to i32*, !mcsema_real_eip !104
  %381 = load i32, i32* %380, align 4, !mcsema_real_eip !104
  %382 = sub i32 %377, %381, !mcsema_real_eip !104
  %383 = xor i32 %382, %377, !mcsema_real_eip !104
  %384 = xor i32 %383, %381, !mcsema_real_eip !104
  %385 = and i32 %384, 16, !mcsema_real_eip !104
  %386 = icmp ne i32 %385, 0, !mcsema_real_eip !104
  store i1 %386, i1* %AF, align 1, !mcsema_real_eip !104
  %387 = trunc i32 %382 to i8, !mcsema_real_eip !104
  %388 = tail call i8 @llvm.ctpop.i8(i8 %387), !mcsema_real_eip !104
  %389 = and i8 %388, 1
  %390 = icmp eq i8 %389, 0
  store i1 %390, i1* %PF, align 1, !mcsema_real_eip !104
  %391 = icmp eq i32 %382, 0
  store i1 %391, i1* %ZF, align 1, !mcsema_real_eip !104
  %392 = icmp slt i32 %382, 0
  store i1 %392, i1* %SF, align 1, !mcsema_real_eip !104
  %393 = icmp ult i32 %377, %381, !mcsema_real_eip !104
  store i1 %393, i1* %CF, align 1, !mcsema_real_eip !104
  %394 = xor i32 %381, %377, !mcsema_real_eip !104
  %395 = and i32 %383, %394, !mcsema_real_eip !104
  %396 = icmp slt i32 %395, 0
  store i1 %396, i1* %OF, align 1, !mcsema_real_eip !104
  br i1 %391, label %block_0x312, label %block_0x2c7, !mcsema_real_eip !105

block_0x2c7:                                      ; preds = %block_0x28f.block_0x2c7_crit_edge, %block_0x29b
  %.pre-phi26 = phi i32* [ %.pre25, %block_0x28f.block_0x2c7_crit_edge ], [ %380, %block_0x29b ]
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !106
  %397 = load i32, i32* %.pre-phi26, align 4, !mcsema_real_eip !102
  %398 = sext i32 %397 to i64
  %399 = mul nsw i64 %398, 11
  store i64 %399, i64* %XCX, align 8, !mcsema_real_eip !107
  %400 = add i64 %399, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !108
  %401 = xor i64 %400, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !108
  %402 = xor i64 %400, %399, !mcsema_real_eip !108
  %403 = and i64 %402, 16, !mcsema_real_eip !108
  %404 = icmp ne i64 %403, 0, !mcsema_real_eip !108
  store i1 %404, i1* %AF, align 1, !mcsema_real_eip !108
  %405 = icmp slt i64 %400, 0
  store i1 %405, i1* %SF, align 1, !mcsema_real_eip !108
  %406 = icmp eq i64 %400, 0, !mcsema_real_eip !108
  store i1 %406, i1* %ZF, align 1, !mcsema_real_eip !108
  %407 = xor i64 %399, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -9223372036854775808), !mcsema_real_eip !108
  %408 = and i64 %401, %407, !mcsema_real_eip !108
  %409 = icmp slt i64 %408, 0
  store i1 %409, i1* %OF, align 1, !mcsema_real_eip !108
  %410 = trunc i64 %400 to i8, !mcsema_real_eip !108
  %411 = tail call i8 @llvm.ctpop.i8(i8 %410), !mcsema_real_eip !108
  %412 = and i8 %411, 1
  %413 = icmp eq i8 %412, 0
  store i1 %413, i1* %PF, align 1, !mcsema_real_eip !108
  %414 = icmp ult i64 %400, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !108
  store i1 %414, i1* %CF, align 1, !mcsema_real_eip !108
  store i64 %400, i64* %XAX, align 8, !mcsema_real_eip !108
  %415 = load i32, i32* %358, align 4, !mcsema_real_eip !109
  %416 = sext i32 %415 to i64, !mcsema_real_eip !109
  store i64 %416, i64* %XCX, align 8, !mcsema_real_eip !109
  %417 = add i64 %416, %400, !mcsema_real_eip !110
  %418 = inttoptr i64 %417 to i8*, !mcsema_real_eip !110
  store i8 88, i8* %418, align 1, !mcsema_real_eip !110
  %RSP_val.165 = load i64, i64* %XSP, align 8, !mcsema_real_eip !111
  %419 = add i64 %RSP_val.165, -8
  %420 = inttoptr i64 %419 to i64*, !mcsema_real_eip !111
  store i64 -4981261766360305936, i64* %420, align 8, !mcsema_real_eip !111
  store i64 %419, i64* %XSP, align 8, !mcsema_real_eip !111
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !111
  %RBP_val.166 = load i64, i64* %XBP, align 8
  %421 = add i64 %RBP_val.166, -36
  %422 = inttoptr i64 %421 to i32*
  %423 = load i32, i32* %422, align 4, !mcsema_real_eip !112
  %424 = add i32 %423, 1, !mcsema_real_eip !113
  %425 = xor i32 %424, %423, !mcsema_real_eip !113
  %426 = and i32 %425, 16, !mcsema_real_eip !113
  %427 = icmp ne i32 %426, 0, !mcsema_real_eip !113
  store i1 %427, i1* %AF, align 1, !mcsema_real_eip !113
  %428 = icmp slt i32 %424, 0
  store i1 %428, i1* %SF, align 1, !mcsema_real_eip !113
  %429 = icmp eq i32 %424, 0, !mcsema_real_eip !113
  store i1 %429, i1* %ZF, align 1, !mcsema_real_eip !113
  %430 = xor i32 %423, -2147483648, !mcsema_real_eip !113
  %431 = and i32 %425, %430, !mcsema_real_eip !113
  %432 = icmp slt i32 %431, 0
  store i1 %432, i1* %OF, align 1, !mcsema_real_eip !113
  %433 = trunc i32 %424 to i8, !mcsema_real_eip !113
  %434 = tail call i8 @llvm.ctpop.i8(i8 %433), !mcsema_real_eip !113
  %435 = and i8 %434, 1
  %436 = icmp eq i8 %435, 0
  store i1 %436, i1* %PF, align 1, !mcsema_real_eip !113
  %437 = icmp eq i32 %423, -1
  store i1 %437, i1* %CF, align 1, !mcsema_real_eip !113
  %438 = zext i32 %424 to i64, !mcsema_real_eip !113
  store i64 %438, i64* %XDX, align 8, !mcsema_real_eip !113
  store i32 %424, i32* %422, align 4, !mcsema_real_eip !114
  br label %block_0x114, !mcsema_real_eip !115

block_0x249:                                      ; preds = %block_0x23f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !116
  %439 = load i32, i32* %297, align 4, !mcsema_real_eip !117
  %440 = sext i32 %439 to i64
  %441 = mul nsw i64 %440, 11
  store i64 %441, i64* %XCX, align 8, !mcsema_real_eip !118
  %442 = add i64 %441, ptrtoint (%1* @data_0x3e0 to i64)
  %443 = xor i64 %442, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !119
  %444 = xor i64 %442, %441, !mcsema_real_eip !119
  %445 = and i64 %444, 16, !mcsema_real_eip !119
  %446 = icmp ne i64 %445, 0, !mcsema_real_eip !119
  store i1 %446, i1* %AF, align 1, !mcsema_real_eip !119
  %447 = icmp slt i64 %442, 0
  store i1 %447, i1* %SF, align 1, !mcsema_real_eip !119
  %448 = icmp eq i64 %442, 0, !mcsema_real_eip !119
  store i1 %448, i1* %ZF, align 1, !mcsema_real_eip !119
  %449 = xor i64 %441, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -9223372036854775808), !mcsema_real_eip !119
  %450 = and i64 %443, %449, !mcsema_real_eip !119
  %451 = icmp slt i64 %450, 0
  store i1 %451, i1* %OF, align 1, !mcsema_real_eip !119
  %452 = trunc i64 %442 to i8, !mcsema_real_eip !119
  %453 = tail call i8 @llvm.ctpop.i8(i8 %452), !mcsema_real_eip !119
  %454 = and i8 %453, 1
  %455 = icmp eq i8 %454, 0
  store i1 %455, i1* %PF, align 1, !mcsema_real_eip !119
  %456 = icmp ult i64 %442, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !119
  store i1 %456, i1* %CF, align 1, !mcsema_real_eip !119
  store i64 %442, i64* %XAX, align 8, !mcsema_real_eip !119
  %457 = load i32, i32* %317, align 4, !mcsema_real_eip !120
  %458 = sext i32 %457 to i64, !mcsema_real_eip !120
  store i64 %458, i64* %XCX, align 8, !mcsema_real_eip !120
  %459 = add i64 %442, %458, !mcsema_real_eip !121
  %460 = inttoptr i64 %459 to i8*, !mcsema_real_eip !121
  %461 = load i8, i8* %460, align 1, !mcsema_real_eip !121
  %462 = sext i8 %461 to i64
  %463 = and i64 %462, 4294967295
  store i64 %463, i64* %XDX, align 8, !mcsema_real_eip !121
  %464 = sext i8 %461 to i32
  %465 = add nsw i32 %464, -124
  %466 = xor i32 %465, %464, !mcsema_real_eip !122
  %467 = and i32 %466, 16
  %468 = icmp eq i32 %467, 0
  store i1 %468, i1* %AF, align 1, !mcsema_real_eip !122
  %469 = trunc i32 %465 to i8, !mcsema_real_eip !122
  %470 = tail call i8 @llvm.ctpop.i8(i8 %469), !mcsema_real_eip !122
  %471 = and i8 %470, 1
  %472 = icmp eq i8 %471, 0
  store i1 %472, i1* %PF, align 1, !mcsema_real_eip !122
  %473 = icmp eq i32 %465, 0
  store i1 %473, i1* %ZF, align 1, !mcsema_real_eip !122
  %474 = icmp slt i8 %461, 124
  store i1 %474, i1* %SF, align 1, !mcsema_real_eip !122
  %475 = icmp ult i8 %461, 124
  store i1 %475, i1* %CF, align 1, !mcsema_real_eip !122
  %476 = and i32 %466, %464, !mcsema_real_eip !122
  %477 = icmp slt i32 %476, 0
  store i1 %477, i1* %OF, align 1, !mcsema_real_eip !122
  br i1 %473, label %block_0x26f, label %block_0x283, !mcsema_real_eip !123

block_0x283:                                      ; preds = %block_0x249, %block_0x23f, %block_0x279, %block_0x26f
  %478 = add i64 %RBP_val.176, -28, !mcsema_real_eip !124
  %479 = inttoptr i64 %478 to i32*, !mcsema_real_eip !124
  %480 = load i32, i32* %479, align 4, !mcsema_real_eip !124
  %481 = zext i32 %480 to i64, !mcsema_real_eip !124
  store i64 %481, i64* %XAX, align 8, !mcsema_real_eip !124
  store i32 %480, i32* %317, align 4, !mcsema_real_eip !125
  %RBP_val.180 = load i64, i64* %XBP, align 8
  %482 = add i64 %RBP_val.180, -32, !mcsema_real_eip !126
  %483 = inttoptr i64 %482 to i32*, !mcsema_real_eip !126
  %484 = load i32, i32* %483, align 4, !mcsema_real_eip !126
  %485 = zext i32 %484 to i64, !mcsema_real_eip !126
  store i64 %485, i64* %XAX, align 8, !mcsema_real_eip !126
  %486 = add i64 %RBP_val.180, -24, !mcsema_real_eip !127
  %487 = inttoptr i64 %486 to i32*, !mcsema_real_eip !127
  store i32 %484, i32* %487, align 4, !mcsema_real_eip !127
  %RBP_val.153.pre = load i64, i64* %XBP, align 8
  br label %block_0x28f, !mcsema_real_eip !116

block_0x26f:                                      ; preds = %block_0x249
  %488 = load i32, i32* %317, align 4, !mcsema_real_eip !128
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !128
  %489 = trunc i32 %488 to i8, !mcsema_real_eip !128
  %490 = tail call i8 @llvm.ctpop.i8(i8 %489), !mcsema_real_eip !128
  %491 = and i8 %490, 1
  %492 = icmp eq i8 %491, 0
  store i1 %492, i1* %PF, align 1, !mcsema_real_eip !128
  %493 = icmp eq i32 %488, 0, !mcsema_real_eip !128
  store i1 %493, i1* %ZF, align 1, !mcsema_real_eip !128
  %494 = icmp slt i32 %488, 0
  store i1 %494, i1* %SF, align 1, !mcsema_real_eip !128
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !128
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !128
  %495 = icmp slt i32 %488, 1
  br i1 %495, label %block_0x283, label %block_0x279, !mcsema_real_eip !129

block_0x279:                                      ; preds = %block_0x26f
  %496 = load i32, i32* %317, align 4, !mcsema_real_eip !130
  %497 = add i32 %496, -11
  %498 = xor i32 %497, %496, !mcsema_real_eip !130
  %499 = and i32 %498, 16, !mcsema_real_eip !130
  %500 = icmp ne i32 %499, 0, !mcsema_real_eip !130
  store i1 %500, i1* %AF, align 1, !mcsema_real_eip !130
  %501 = trunc i32 %497 to i8, !mcsema_real_eip !130
  %502 = tail call i8 @llvm.ctpop.i8(i8 %501), !mcsema_real_eip !130
  %503 = and i8 %502, 1
  %504 = icmp eq i8 %503, 0
  store i1 %504, i1* %PF, align 1, !mcsema_real_eip !130
  %505 = icmp eq i32 %497, 0, !mcsema_real_eip !130
  store i1 %505, i1* %ZF, align 1, !mcsema_real_eip !130
  %506 = icmp slt i32 %497, 0
  store i1 %506, i1* %SF, align 1, !mcsema_real_eip !130
  %507 = icmp ult i32 %496, 11, !mcsema_real_eip !130
  store i1 %507, i1* %CF, align 1, !mcsema_real_eip !130
  %508 = and i32 %498, %496, !mcsema_real_eip !130
  %509 = icmp slt i32 %508, 0
  store i1 %509, i1* %OF, align 1, !mcsema_real_eip !130
  %510 = xor i1 %506, %509
  br i1 %510, label %block_0x28f, label %block_0x283, !mcsema_real_eip !131
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !132
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !132
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !132
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !132
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !132
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !132
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !132
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !132
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !132
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !132
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !132
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !132
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !132
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !132
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !132
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !132
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !132
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !132
  %RBP_val.203 = load i64, i64* %XBP, align 8, !mcsema_real_eip !132
  %RSP_val.204 = load i64, i64* %XSP, align 8, !mcsema_real_eip !132
  %1 = add i64 %RSP_val.204, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !132
  store i64 %RBP_val.203, i64* %2, align 8, !mcsema_real_eip !132
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !133
  %3 = add i64 %RSP_val.204, -40
  %4 = xor i64 %3, %1, !mcsema_real_eip !134
  %5 = and i64 %4, 16, !mcsema_real_eip !134
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !134
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !134
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !134
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !134
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !134
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !134
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !134
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !134
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !134
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !134
  %14 = and i64 %4, %1, !mcsema_real_eip !134
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !134
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !134
  %AL.209 = bitcast i64* %XAX to i8*
  br label %block_0xf, !mcsema_real_eip !135

block_0xf:                                        ; preds = %block_0x69, %entry
  %.sink4.in.in = phi i64 [ %RBP_val.228, %block_0x69 ], [ %1, %entry ]
  %EAX_val.233.sink = phi i32 [ %134, %block_0x69 ], [ 0, %entry ]
  %.sink4.in = add i64 %.sink4.in.in, -4
  %16 = inttoptr i64 %.sink4.in to i32*
  store i32 %EAX_val.233.sink, i32* %16, align 4
  %RBP_val.208 = load i64, i64* %XBP, align 8
  %17 = add i64 %RBP_val.208, -4, !mcsema_real_eip !135
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !135
  %19 = load i32, i32* %18, align 4, !mcsema_real_eip !135
  %20 = add i32 %19, -7
  %21 = xor i32 %20, %19, !mcsema_real_eip !135
  %22 = and i32 %21, 16, !mcsema_real_eip !135
  %23 = icmp ne i32 %22, 0, !mcsema_real_eip !135
  store i1 %23, i1* %AF, align 1, !mcsema_real_eip !135
  %24 = trunc i32 %20 to i8, !mcsema_real_eip !135
  %25 = tail call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !135
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !135
  %28 = icmp eq i32 %20, 0, !mcsema_real_eip !135
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !135
  %29 = icmp slt i32 %20, 0
  store i1 %29, i1* %SF, align 1, !mcsema_real_eip !135
  %30 = icmp ult i32 %19, 7, !mcsema_real_eip !135
  store i1 %30, i1* %CF, align 1, !mcsema_real_eip !135
  %31 = and i32 %21, %19, !mcsema_real_eip !135
  %32 = icmp slt i32 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !135
  %tmp = xor i1 %29, %32
  br i1 %tmp, label %block_0x20.preheader, label %block_0x8b, !mcsema_real_eip !136

block_0x20.preheader:                             ; preds = %block_0xf
  br label %block_0x20

block_0x8b:                                       ; preds = %block_0xf
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !132
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, align 8, !mcsema_real_eip !137
  store i8 0, i8* %AL.209, align 1, !mcsema_real_eip !138
  %RSI_val.211 = load i64, i64* %XSI, align 8, !mcsema_real_eip !139
  %RSP_val.212 = load i64, i64* %XSP, align 8, !mcsema_real_eip !139
  %33 = add i64 %RSP_val.212, -8
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !139
  store i64 -2415393069852865332, i64* %34, align 8, !mcsema_real_eip !139
  store i64 %33, i64* %XSP, align 8, !mcsema_real_eip !139
  %35 = tail call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.211), !mcsema_real_eip !139
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !139
  %RBP_val.213 = load i64, i64* %XBP, align 8, !mcsema_real_eip !140
  %36 = add i64 %RBP_val.213, -20, !mcsema_real_eip !140
  %37 = trunc i64 %35 to i32
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !140
  store i32 %37, i32* %38, align 4, !mcsema_real_eip !140
  %RSP_val.216 = load i64, i64* %XSP, align 8, !mcsema_real_eip !141
  %39 = add i64 %RSP_val.216, 32, !mcsema_real_eip !141
  %40 = xor i64 %39, %RSP_val.216, !mcsema_real_eip !141
  %41 = and i64 %40, 16, !mcsema_real_eip !141
  %42 = icmp ne i64 %41, 0, !mcsema_real_eip !141
  store i1 %42, i1* %AF, align 1, !mcsema_real_eip !141
  %43 = icmp slt i64 %39, 0
  store i1 %43, i1* %SF, align 1, !mcsema_real_eip !141
  %44 = icmp eq i64 %39, 0, !mcsema_real_eip !141
  store i1 %44, i1* %ZF, align 1, !mcsema_real_eip !141
  %45 = xor i64 %RSP_val.216, -9223372036854775808, !mcsema_real_eip !141
  %46 = and i64 %40, %45, !mcsema_real_eip !141
  %47 = icmp slt i64 %46, 0
  store i1 %47, i1* %OF, align 1, !mcsema_real_eip !141
  %48 = trunc i64 %39 to i8, !mcsema_real_eip !141
  %49 = tail call i8 @llvm.ctpop.i8(i8 %48), !mcsema_real_eip !141
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  store i1 %51, i1* %PF, align 1, !mcsema_real_eip !141
  %52 = icmp ugt i64 %RSP_val.216, -33
  store i1 %52, i1* %CF, align 1, !mcsema_real_eip !141
  store i64 %39, i64* %XSP, align 8, !mcsema_real_eip !141
  %53 = inttoptr i64 %39 to i64*, !mcsema_real_eip !142
  %54 = load i64, i64* %53, align 8, !mcsema_real_eip !142
  store i64 %54, i64* %XBP, align 8, !mcsema_real_eip !142
  %55 = add i64 %RSP_val.216, 40, !mcsema_real_eip !142
  store i64 %55, i64* %XSP, align 8, !mcsema_real_eip !142
  %56 = add i64 %RSP_val.216, 48, !mcsema_real_eip !143
  %57 = inttoptr i64 %55 to i64*, !mcsema_real_eip !143
  %58 = load i64, i64* %57, align 8, !mcsema_real_eip !143
  store i64 %58, i64* %XIP, align 8, !mcsema_real_eip !143
  store i64 %56, i64* %XSP, align 8, !mcsema_real_eip !143
  ret void, !mcsema_real_eip !143

block_0x20:                                       ; preds = %block_0x20.preheader, %block_0x2a
  %.sink.in.in = phi i64 [ %RBP_val.248, %block_0x2a ], [ %RBP_val.208, %block_0x20.preheader ]
  %EAX_val.253.sink = phi i32 [ %112, %block_0x2a ], [ 0, %block_0x20.preheader ]
  %.sink.in = add i64 %.sink.in.in, -8
  %59 = inttoptr i64 %.sink.in to i32*
  store i32 %EAX_val.253.sink, i32* %59, align 4
  %RBP_val.220 = load i64, i64* %XBP, align 8
  %60 = add i64 %RBP_val.220, -8
  %61 = inttoptr i64 %60 to i32*
  %62 = load i32, i32* %61, align 4, !mcsema_real_eip !144
  %63 = add i32 %62, -11
  %64 = xor i32 %63, %62, !mcsema_real_eip !144
  %65 = and i32 %64, 16, !mcsema_real_eip !144
  %66 = icmp ne i32 %65, 0, !mcsema_real_eip !144
  store i1 %66, i1* %AF, align 1, !mcsema_real_eip !144
  %67 = trunc i32 %63 to i8, !mcsema_real_eip !144
  %68 = tail call i8 @llvm.ctpop.i8(i8 %67), !mcsema_real_eip !144
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  store i1 %70, i1* %PF, align 1, !mcsema_real_eip !144
  %71 = icmp eq i32 %63, 0, !mcsema_real_eip !144
  store i1 %71, i1* %ZF, align 1, !mcsema_real_eip !144
  %72 = icmp slt i32 %63, 0
  store i1 %72, i1* %SF, align 1, !mcsema_real_eip !144
  %73 = icmp ult i32 %62, 11, !mcsema_real_eip !144
  store i1 %73, i1* %CF, align 1, !mcsema_real_eip !144
  %74 = and i32 %64, %62, !mcsema_real_eip !144
  %75 = icmp slt i32 %74, 0
  store i1 %75, i1* %OF, align 1, !mcsema_real_eip !144
  %tmp5 = xor i1 %72, %75
  %RSP_val.224 = load i64, i64* %XSP, align 8
  %76 = add i64 %RSP_val.224, -8
  %77 = inttoptr i64 %76 to i64*
  br i1 %tmp5, label %block_0x2a, label %block_0x69, !mcsema_real_eip !145

block_0x2a:                                       ; preds = %block_0x20
  store i64 ptrtoint (%2* @data_0x42d to i64), i64* %XDI, align 8, !mcsema_real_eip !146
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !147
  %78 = add i64 %RBP_val.220, -4, !mcsema_real_eip !148
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !148
  %80 = load i32, i32* %79, align 4, !mcsema_real_eip !148
  %81 = sext i32 %80 to i64
  %82 = mul nsw i64 %81, 11
  store i64 %82, i64* %XCX, align 8, !mcsema_real_eip !149
  %83 = add i64 %82, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !150
  %84 = xor i64 %83, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !150
  %85 = xor i64 %83, %82, !mcsema_real_eip !150
  %86 = and i64 %85, 16, !mcsema_real_eip !150
  %87 = icmp ne i64 %86, 0, !mcsema_real_eip !150
  store i1 %87, i1* %AF, align 1, !mcsema_real_eip !150
  %88 = icmp slt i64 %83, 0
  store i1 %88, i1* %SF, align 1, !mcsema_real_eip !150
  %89 = icmp eq i64 %83, 0, !mcsema_real_eip !150
  store i1 %89, i1* %ZF, align 1, !mcsema_real_eip !150
  %90 = xor i64 %82, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -9223372036854775808), !mcsema_real_eip !150
  %91 = and i64 %84, %90, !mcsema_real_eip !150
  %92 = icmp slt i64 %91, 0
  store i1 %92, i1* %OF, align 1, !mcsema_real_eip !150
  %93 = trunc i64 %83 to i8, !mcsema_real_eip !150
  %94 = tail call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !150
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  store i1 %96, i1* %PF, align 1, !mcsema_real_eip !150
  %97 = icmp ult i64 %83, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !150
  store i1 %97, i1* %CF, align 1, !mcsema_real_eip !150
  store i64 %83, i64* %XAX, align 8, !mcsema_real_eip !150
  %98 = load i32, i32* %61, align 4, !mcsema_real_eip !151
  %99 = sext i32 %98 to i64, !mcsema_real_eip !151
  store i64 %99, i64* %XCX, align 8, !mcsema_real_eip !151
  %100 = add i64 %99, %83, !mcsema_real_eip !152
  %101 = inttoptr i64 %100 to i8*, !mcsema_real_eip !152
  %102 = load i8, i8* %101, align 1, !mcsema_real_eip !152
  %103 = sext i8 %102 to i64
  %104 = and i64 %103, 4294967295
  store i64 %104, i64* %XSI, align 8, !mcsema_real_eip !152
  store i8 0, i8* %AL.209, align 1, !mcsema_real_eip !153
  store i64 -2415393069852865332, i64* %77, align 8, !mcsema_real_eip !154
  store i64 %76, i64* %XSP, align 8, !mcsema_real_eip !154
  %105 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%2* @data_0x42d to i64), i64 %104), !mcsema_real_eip !154
  store i64 %105, i64* %XAX, align 8, !mcsema_real_eip !154
  %RBP_val.245 = load i64, i64* %XBP, align 8, !mcsema_real_eip !155
  %106 = add i64 %RBP_val.245, -12, !mcsema_real_eip !155
  %107 = trunc i64 %105 to i32
  %108 = inttoptr i64 %106 to i32*, !mcsema_real_eip !155
  store i32 %107, i32* %108, align 4, !mcsema_real_eip !155
  %RBP_val.248 = load i64, i64* %XBP, align 8
  %109 = add i64 %RBP_val.248, -8, !mcsema_real_eip !156
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !156
  %111 = load i32, i32* %110, align 4, !mcsema_real_eip !156
  %112 = add i32 %111, 1, !mcsema_real_eip !157
  %113 = xor i32 %112, %111, !mcsema_real_eip !157
  %114 = and i32 %113, 16, !mcsema_real_eip !157
  %115 = icmp ne i32 %114, 0, !mcsema_real_eip !157
  store i1 %115, i1* %AF, align 1, !mcsema_real_eip !157
  %116 = icmp slt i32 %112, 0
  store i1 %116, i1* %SF, align 1, !mcsema_real_eip !157
  %117 = icmp eq i32 %112, 0, !mcsema_real_eip !157
  store i1 %117, i1* %ZF, align 1, !mcsema_real_eip !157
  %118 = xor i32 %111, -2147483648, !mcsema_real_eip !157
  %119 = and i32 %113, %118, !mcsema_real_eip !157
  %120 = icmp slt i32 %119, 0
  store i1 %120, i1* %OF, align 1, !mcsema_real_eip !157
  %121 = trunc i32 %112 to i8, !mcsema_real_eip !157
  %122 = tail call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !157
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  store i1 %124, i1* %PF, align 1, !mcsema_real_eip !157
  %125 = icmp eq i32 %111, -1
  store i1 %125, i1* %CF, align 1, !mcsema_real_eip !157
  %126 = zext i32 %112 to i64, !mcsema_real_eip !157
  store i64 %126, i64* %XAX, align 8, !mcsema_real_eip !157
  br label %block_0x20, !mcsema_real_eip !158

block_0x69:                                       ; preds = %block_0x20
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, align 8, !mcsema_real_eip !159
  store i8 0, i8* %AL.209, align 1, !mcsema_real_eip !160
  %RSI_val.223 = load i64, i64* %XSI, align 8, !mcsema_real_eip !161
  store i64 -2415393069852865332, i64* %77, align 8, !mcsema_real_eip !161
  store i64 %76, i64* %XSP, align 8, !mcsema_real_eip !161
  %127 = tail call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.223), !mcsema_real_eip !161
  store i64 %127, i64* %XAX, align 8, !mcsema_real_eip !161
  %RBP_val.225 = load i64, i64* %XBP, align 8, !mcsema_real_eip !162
  %128 = add i64 %RBP_val.225, -16, !mcsema_real_eip !162
  %129 = trunc i64 %127 to i32
  %130 = inttoptr i64 %128 to i32*, !mcsema_real_eip !162
  store i32 %129, i32* %130, align 4, !mcsema_real_eip !162
  %RBP_val.228 = load i64, i64* %XBP, align 8, !mcsema_real_eip !163
  %131 = add i64 %RBP_val.228, -4, !mcsema_real_eip !163
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !163
  %133 = load i32, i32* %132, align 4, !mcsema_real_eip !163
  %134 = add i32 %133, 1, !mcsema_real_eip !164
  %135 = xor i32 %134, %133, !mcsema_real_eip !164
  %136 = and i32 %135, 16, !mcsema_real_eip !164
  %137 = icmp ne i32 %136, 0, !mcsema_real_eip !164
  store i1 %137, i1* %AF, align 1, !mcsema_real_eip !164
  %138 = icmp slt i32 %134, 0
  store i1 %138, i1* %SF, align 1, !mcsema_real_eip !164
  %139 = icmp eq i32 %134, 0, !mcsema_real_eip !164
  store i1 %139, i1* %ZF, align 1, !mcsema_real_eip !164
  %140 = xor i32 %133, -2147483648, !mcsema_real_eip !164
  %141 = and i32 %135, %140, !mcsema_real_eip !164
  %142 = icmp slt i32 %141, 0
  store i1 %142, i1* %OF, align 1, !mcsema_real_eip !164
  %143 = trunc i32 %134 to i8, !mcsema_real_eip !164
  %144 = tail call i8 @llvm.ctpop.i8(i8 %143), !mcsema_real_eip !164
  %145 = and i8 %144, 1
  %146 = icmp eq i8 %145, 0
  store i1 %146, i1* %PF, align 1, !mcsema_real_eip !164
  %147 = icmp eq i32 %133, -1
  store i1 %147, i1* %CF, align 1, !mcsema_real_eip !164
  %148 = zext i32 %134 to i64, !mcsema_real_eip !164
  store i64 %148, i64* %XAX, align 8, !mcsema_real_eip !164
  br label %block_0xf, !mcsema_real_eip !165
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read(i64, i64, i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_exit(i64) local_unnamed_addr #3

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 176}
!3 = !{i64 177}
!4 = !{i64 180}
!5 = !{i64 184}
!6 = !{i64 193}
!7 = !{i64 197}
!8 = !{i64 207}
!9 = !{i64 214}
!10 = !{i64 217}
!11 = !{i64 221}
!12 = !{i64 228}
!13 = !{i64 235}
!14 = !{i64 242}
!15 = !{i64 246}
!16 = !{i64 250}
!17 = !{i64 253}
!18 = !{i64 257}
!19 = !{i64 262}
!20 = !{i64 264}
!21 = !{i64 267}
!22 = !{i64 272}
!23 = !{i64 276}
!24 = !{i64 280}
!25 = !{i64 286}
!26 = !{i64 289}
!27 = !{i64 292}
!28 = !{i64 295}
!29 = !{i64 298}
!30 = !{i64 302}
!31 = !{i64 307}
!32 = !{i64 310}
!33 = !{i64 312}
!34 = !{i64 315}
!35 = !{i64 319}
!36 = !{i64 322}
!37 = !{i64 786}
!38 = !{i64 789}
!39 = !{i64 793}
!40 = !{i64 794}
!41 = !{i64 328}
!42 = !{i64 332}
!43 = !{i64 340}
!44 = !{i64 398}
!45 = !{i64 408}
!46 = !{i64 410}
!47 = !{i64 415}
!48 = !{i64 425}
!49 = !{i64 428}
!50 = !{i64 430}
!51 = !{i64 435}
!52 = !{i64 440}
!53 = !{i64 443}
!54 = !{i64 448}
!55 = !{i64 458}
!56 = !{i64 462}
!57 = !{i64 466}
!58 = !{i64 469}
!59 = !{i64 473}
!60 = !{i64 477}
!61 = !{i64 480}
!62 = !{i64 342}
!63 = !{i64 345}
!64 = !{i64 348}
!65 = !{i64 351}
!66 = !{i64 356}
!67 = !{i64 359}
!68 = !{i64 362}
!69 = !{i64 365}
!70 = !{i64 370}
!71 = !{i64 373}
!72 = !{i64 376}
!73 = !{i64 379}
!74 = !{i64 384}
!75 = !{i64 387}
!76 = !{i64 390}
!77 = !{i64 393}
!78 = !{i64 486}
!79 = !{i64 496}
!80 = !{i64 498}
!81 = !{i64 503}
!82 = !{i64 513}
!83 = !{i64 517}
!84 = !{i64 520}
!85 = !{i64 522}
!86 = !{i64 527}
!87 = !{i64 529}
!88 = !{i64 532}
!89 = !{i64 655}
!90 = !{i64 537}
!91 = !{i64 547}
!92 = !{i64 551}
!93 = !{i64 555}
!94 = !{i64 558}
!95 = !{i64 562}
!96 = !{i64 566}
!97 = !{i64 569}
!98 = !{i64 575}
!99 = !{i64 579}
!100 = !{i64 658}
!101 = !{i64 661}
!102 = !{i64 721}
!103 = !{i64 667}
!104 = !{i64 670}
!105 = !{i64 673}
!106 = !{i64 711}
!107 = !{i64 725}
!108 = !{i64 729}
!109 = !{i64 732}
!110 = !{i64 736}
!111 = !{i64 740}
!112 = !{i64 745}
!113 = !{i64 748}
!114 = !{i64 751}
!115 = !{i64 754}
!116 = !{i64 585}
!117 = !{i64 595}
!118 = !{i64 599}
!119 = !{i64 603}
!120 = !{i64 606}
!121 = !{i64 610}
!122 = !{i64 614}
!123 = !{i64 617}
!124 = !{i64 643}
!125 = !{i64 646}
!126 = !{i64 649}
!127 = !{i64 652}
!128 = !{i64 623}
!129 = !{i64 627}
!130 = !{i64 633}
!131 = !{i64 637}
!132 = !{i64 0}
!133 = !{i64 1}
!134 = !{i64 4}
!135 = !{i64 15}
!136 = !{i64 19}
!137 = !{i64 139}
!138 = !{i64 149}
!139 = !{i64 151}
!140 = !{i64 156}
!141 = !{i64 159}
!142 = !{i64 163}
!143 = !{i64 164}
!144 = !{i64 32}
!145 = !{i64 36}
!146 = !{i64 42}
!147 = !{i64 52}
!148 = !{i64 62}
!149 = !{i64 66}
!150 = !{i64 70}
!151 = !{i64 73}
!152 = !{i64 77}
!153 = !{i64 81}
!154 = !{i64 83}
!155 = !{i64 88}
!156 = !{i64 91}
!157 = !{i64 94}
!158 = !{i64 100}
!159 = !{i64 105}
!160 = !{i64 115}
!161 = !{i64 117}
!162 = !{i64 122}
!163 = !{i64 125}
!164 = !{i64 128}
!165 = !{i64 134}
