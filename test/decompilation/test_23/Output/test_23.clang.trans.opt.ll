; ModuleID = 'Output/test_23.clang.trans.opt.bc'
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
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
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
  %AL.41 = bitcast i64* %XAX to i8*
  br label %block_0xf, !mcsema_real_eip !6

block_0xf:                                        ; preds = %block_0x69, %entry
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !6
  %18 = add i64 %RBP_val.5, -4, !mcsema_real_eip !6
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !6
  %20 = load i32, i32* %19, align 4, !mcsema_real_eip !6
  %21 = add i32 %20, -7
  %22 = xor i32 %21, %20, !mcsema_real_eip !6
  %23 = and i32 %22, 16, !mcsema_real_eip !6
  %24 = icmp ne i32 %23, 0, !mcsema_real_eip !6
  store i1 %24, i1* %AF, align 1, !mcsema_real_eip !6
  %25 = trunc i32 %21 to i8, !mcsema_real_eip !6
  %26 = tail call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !6
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !6
  %29 = icmp eq i32 %21, 0, !mcsema_real_eip !6
  store i1 %29, i1* %ZF, align 1, !mcsema_real_eip !6
  %30 = icmp slt i32 %21, 0
  store i1 %30, i1* %SF, align 1, !mcsema_real_eip !6
  %31 = icmp ult i32 %20, 7, !mcsema_real_eip !6
  store i1 %31, i1* %CF, align 1, !mcsema_real_eip !6
  %32 = and i32 %22, %20, !mcsema_real_eip !6
  %33 = icmp slt i32 %32, 0
  store i1 %33, i1* %OF, align 1, !mcsema_real_eip !6
  %tmp = xor i1 %30, %33
  br i1 %tmp, label %block_0x19, label %block_0x8b, !mcsema_real_eip !7

block_0x19:                                       ; preds = %block_0xf
  %34 = add i64 %RBP_val.5, -8, !mcsema_real_eip !8
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %35, align 4, !mcsema_real_eip !8
  br label %block_0x20, !mcsema_real_eip !9

block_0x20:                                       ; preds = %block_0x2a, %block_0x19
  %RBP_val.7 = load i64, i64* %XBP, align 8, !mcsema_real_eip !9
  %36 = add i64 %RBP_val.7, -8, !mcsema_real_eip !9
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !9
  %38 = load i32, i32* %37, align 4, !mcsema_real_eip !9
  %39 = add i32 %38, -11
  %40 = xor i32 %39, %38, !mcsema_real_eip !9
  %41 = and i32 %40, 16, !mcsema_real_eip !9
  %42 = icmp ne i32 %41, 0, !mcsema_real_eip !9
  store i1 %42, i1* %AF, align 1, !mcsema_real_eip !9
  %43 = trunc i32 %39 to i8, !mcsema_real_eip !9
  %44 = tail call i8 @llvm.ctpop.i8(i8 %43), !mcsema_real_eip !9
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  store i1 %46, i1* %PF, align 1, !mcsema_real_eip !9
  %47 = icmp eq i32 %39, 0, !mcsema_real_eip !9
  store i1 %47, i1* %ZF, align 1, !mcsema_real_eip !9
  %48 = icmp slt i32 %39, 0
  store i1 %48, i1* %SF, align 1, !mcsema_real_eip !9
  %49 = icmp ult i32 %38, 11, !mcsema_real_eip !9
  store i1 %49, i1* %CF, align 1, !mcsema_real_eip !9
  %50 = and i32 %40, %38, !mcsema_real_eip !9
  %51 = icmp slt i32 %50, 0
  store i1 %51, i1* %OF, align 1, !mcsema_real_eip !9
  %tmp1 = xor i1 %48, %51
  %RSP_val.31 = load i64, i64* %XSP, align 8
  %52 = add i64 %RSP_val.31, -8
  %53 = inttoptr i64 %52 to i64*
  br i1 %tmp1, label %block_0x2a, label %block_0x69, !mcsema_real_eip !10

block_0x2a:                                       ; preds = %block_0x20
  store i64 ptrtoint (%2* @data_0x42d to i64), i64* %XDI, align 8, !mcsema_real_eip !11
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !12
  %54 = add i64 %RBP_val.7, -4, !mcsema_real_eip !13
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !13
  %56 = load i32, i32* %55, align 4, !mcsema_real_eip !13
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, 11
  store i64 %58, i64* %XCX, align 8, !mcsema_real_eip !14
  %59 = add i64 %58, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  %60 = xor i64 %59, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  %61 = xor i64 %59, %58, !mcsema_real_eip !15
  %62 = and i64 %61, 16, !mcsema_real_eip !15
  %63 = icmp ne i64 %62, 0, !mcsema_real_eip !15
  store i1 %63, i1* %AF, align 1, !mcsema_real_eip !15
  %64 = icmp slt i64 %59, 0
  store i1 %64, i1* %SF, align 1, !mcsema_real_eip !15
  %65 = icmp eq i64 %59, 0, !mcsema_real_eip !15
  store i1 %65, i1* %ZF, align 1, !mcsema_real_eip !15
  %66 = xor i64 %58, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !15
  %67 = and i64 %60, %66, !mcsema_real_eip !15
  %68 = icmp slt i64 %67, 0
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !15
  %69 = trunc i64 %59 to i8, !mcsema_real_eip !15
  %70 = tail call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !15
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  store i1 %72, i1* %PF, align 1, !mcsema_real_eip !15
  %73 = icmp ult i64 %59, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  store i1 %73, i1* %CF, align 1, !mcsema_real_eip !15
  store i64 %59, i64* %XAX, align 8, !mcsema_real_eip !15
  %74 = load i32, i32* %37, align 4, !mcsema_real_eip !16
  %75 = sext i32 %74 to i64, !mcsema_real_eip !16
  store i64 %75, i64* %XCX, align 8, !mcsema_real_eip !16
  %76 = add i64 %59, %75, !mcsema_real_eip !17
  %77 = inttoptr i64 %76 to i8*, !mcsema_real_eip !17
  %78 = load i8, i8* %77, align 1, !mcsema_real_eip !17
  %79 = sext i8 %78 to i64
  %80 = and i64 %79, 4294967295
  store i64 %80, i64* %XSI, align 8, !mcsema_real_eip !17
  store i8 0, i8* %AL.41, align 1, !mcsema_real_eip !18
  store i64 -2415393069852865332, i64* %53, align 8, !mcsema_real_eip !19
  store i64 %52, i64* %XSP, align 8, !mcsema_real_eip !19
  %81 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%2* @data_0x42d to i64), i64 %80), !mcsema_real_eip !19
  store i64 %81, i64* %XAX, align 8, !mcsema_real_eip !19
  %RBP_val.19 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %82 = add i64 %RBP_val.19, -12, !mcsema_real_eip !20
  %83 = trunc i64 %81 to i32
  %84 = inttoptr i64 %82 to i32*, !mcsema_real_eip !20
  store i32 %83, i32* %84, align 4, !mcsema_real_eip !20
  %RBP_val.22 = load i64, i64* %XBP, align 8, !mcsema_real_eip !21
  %85 = add i64 %RBP_val.22, -8, !mcsema_real_eip !21
  %86 = inttoptr i64 %85 to i32*, !mcsema_real_eip !21
  %87 = load i32, i32* %86, align 4, !mcsema_real_eip !21
  %88 = add i32 %87, 1, !mcsema_real_eip !22
  %89 = xor i32 %88, %87, !mcsema_real_eip !22
  %90 = and i32 %89, 16, !mcsema_real_eip !22
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !22
  store i1 %91, i1* %AF, align 1, !mcsema_real_eip !22
  %92 = icmp slt i32 %88, 0
  store i1 %92, i1* %SF, align 1, !mcsema_real_eip !22
  %93 = icmp eq i32 %88, 0, !mcsema_real_eip !22
  store i1 %93, i1* %ZF, align 1, !mcsema_real_eip !22
  %94 = xor i32 %87, -2147483648, !mcsema_real_eip !22
  %95 = and i32 %89, %94, !mcsema_real_eip !22
  %96 = icmp slt i32 %95, 0
  store i1 %96, i1* %OF, align 1, !mcsema_real_eip !22
  %97 = trunc i32 %88 to i8, !mcsema_real_eip !22
  %98 = tail call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !22
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  store i1 %100, i1* %PF, align 1, !mcsema_real_eip !22
  %101 = icmp eq i32 %87, -1
  store i1 %101, i1* %CF, align 1, !mcsema_real_eip !22
  %102 = zext i32 %88 to i64, !mcsema_real_eip !22
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !22
  store i32 %88, i32* %86, align 4, !mcsema_real_eip !23
  br label %block_0x20, !mcsema_real_eip !24

block_0x69:                                       ; preds = %block_0x20
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, align 8, !mcsema_real_eip !25
  store i8 0, i8* %AL.41, align 1, !mcsema_real_eip !26
  %RSI_val.30 = load i64, i64* %XSI, align 8, !mcsema_real_eip !27
  store i64 -2415393069852865332, i64* %53, align 8, !mcsema_real_eip !27
  store i64 %52, i64* %XSP, align 8, !mcsema_real_eip !27
  %103 = tail call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.30), !mcsema_real_eip !27
  store i64 %103, i64* %XAX, align 8, !mcsema_real_eip !27
  %RBP_val.32 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %104 = add i64 %RBP_val.32, -16, !mcsema_real_eip !28
  %105 = trunc i64 %103 to i32
  %106 = inttoptr i64 %104 to i32*, !mcsema_real_eip !28
  store i32 %105, i32* %106, align 4, !mcsema_real_eip !28
  %RBP_val.35 = load i64, i64* %XBP, align 8, !mcsema_real_eip !29
  %107 = add i64 %RBP_val.35, -4, !mcsema_real_eip !29
  %108 = inttoptr i64 %107 to i32*, !mcsema_real_eip !29
  %109 = load i32, i32* %108, align 4, !mcsema_real_eip !29
  %110 = add i32 %109, 1, !mcsema_real_eip !30
  %111 = xor i32 %110, %109, !mcsema_real_eip !30
  %112 = and i32 %111, 16, !mcsema_real_eip !30
  %113 = icmp ne i32 %112, 0, !mcsema_real_eip !30
  store i1 %113, i1* %AF, align 1, !mcsema_real_eip !30
  %114 = icmp slt i32 %110, 0
  store i1 %114, i1* %SF, align 1, !mcsema_real_eip !30
  %115 = icmp eq i32 %110, 0, !mcsema_real_eip !30
  store i1 %115, i1* %ZF, align 1, !mcsema_real_eip !30
  %116 = xor i32 %109, -2147483648, !mcsema_real_eip !30
  %117 = and i32 %111, %116, !mcsema_real_eip !30
  %118 = icmp slt i32 %117, 0
  store i1 %118, i1* %OF, align 1, !mcsema_real_eip !30
  %119 = trunc i32 %110 to i8, !mcsema_real_eip !30
  %120 = tail call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !30
  %121 = and i8 %120, 1
  %122 = icmp eq i8 %121, 0
  store i1 %122, i1* %PF, align 1, !mcsema_real_eip !30
  %123 = icmp eq i32 %109, -1
  store i1 %123, i1* %CF, align 1, !mcsema_real_eip !30
  %124 = zext i32 %110 to i64, !mcsema_real_eip !30
  store i64 %124, i64* %XAX, align 8, !mcsema_real_eip !30
  store i32 %110, i32* %108, align 4, !mcsema_real_eip !31
  br label %block_0xf, !mcsema_real_eip !32

block_0x8b:                                       ; preds = %block_0xf
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, align 8, !mcsema_real_eip !33
  store i8 0, i8* %AL.41, align 1, !mcsema_real_eip !34
  %RSI_val.43 = load i64, i64* %XSI, align 8, !mcsema_real_eip !35
  %RSP_val.44 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %125 = add i64 %RSP_val.44, -8
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !35
  store i64 -2415393069852865332, i64* %126, align 8, !mcsema_real_eip !35
  store i64 %125, i64* %XSP, align 8, !mcsema_real_eip !35
  %127 = tail call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.43), !mcsema_real_eip !35
  store i64 %127, i64* %XAX, align 8, !mcsema_real_eip !35
  %RBP_val.45 = load i64, i64* %XBP, align 8, !mcsema_real_eip !36
  %128 = add i64 %RBP_val.45, -20, !mcsema_real_eip !36
  %129 = trunc i64 %127 to i32
  %130 = inttoptr i64 %128 to i32*, !mcsema_real_eip !36
  store i32 %129, i32* %130, align 4, !mcsema_real_eip !36
  %RSP_val.48 = load i64, i64* %XSP, align 8, !mcsema_real_eip !37
  %131 = add i64 %RSP_val.48, 32, !mcsema_real_eip !37
  %132 = xor i64 %131, %RSP_val.48, !mcsema_real_eip !37
  %133 = and i64 %132, 16, !mcsema_real_eip !37
  %134 = icmp ne i64 %133, 0, !mcsema_real_eip !37
  store i1 %134, i1* %AF, align 1, !mcsema_real_eip !37
  %135 = icmp slt i64 %131, 0
  store i1 %135, i1* %SF, align 1, !mcsema_real_eip !37
  %136 = icmp eq i64 %131, 0, !mcsema_real_eip !37
  store i1 %136, i1* %ZF, align 1, !mcsema_real_eip !37
  %137 = xor i64 %RSP_val.48, -9223372036854775808, !mcsema_real_eip !37
  %138 = and i64 %132, %137, !mcsema_real_eip !37
  %139 = icmp slt i64 %138, 0
  store i1 %139, i1* %OF, align 1, !mcsema_real_eip !37
  %140 = trunc i64 %131 to i8, !mcsema_real_eip !37
  %141 = tail call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !37
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF, align 1, !mcsema_real_eip !37
  %144 = icmp ugt i64 %RSP_val.48, -33
  store i1 %144, i1* %CF, align 1, !mcsema_real_eip !37
  store i64 %131, i64* %XSP, align 8, !mcsema_real_eip !37
  %145 = inttoptr i64 %131 to i64*, !mcsema_real_eip !38
  %146 = load i64, i64* %145, align 8, !mcsema_real_eip !38
  store i64 %146, i64* %XBP, align 8, !mcsema_real_eip !38
  %147 = add i64 %RSP_val.48, 40, !mcsema_real_eip !38
  store i64 %147, i64* %XSP, align 8, !mcsema_real_eip !38
  %148 = add i64 %RSP_val.48, 48, !mcsema_real_eip !39
  %149 = inttoptr i64 %147 to i64*, !mcsema_real_eip !39
  %150 = load i64, i64* %149, align 8, !mcsema_real_eip !39
  store i64 %150, i64* %XIP, align 8, !mcsema_real_eip !39
  store i64 %148, i64* %XSP, align 8, !mcsema_real_eip !39
  ret void, !mcsema_real_eip !39
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_b0(%RegState*) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2 = alloca [128 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 128
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !40
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !40
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !40
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !40
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !40
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !40
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !40
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !40
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !40
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !40
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !40
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !40
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !40
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !40
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !40
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !40
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !40
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !40
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !40
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !40
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !40
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !40
  %RSP_val.52 = load i64, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 120
  %1 = add i64 %RSP_val.52, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !41
  %_new_gep_3 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
  %3 = add i64 %RSP_val.52, -120
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !42
  %EAX.55 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !43
  %4 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 28, i64 28>, <2 x i64>* %4, align 8
  %5 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 56
  %6 = ptrtoint i8* %_new_gep_14 to i64
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !44
  %_new_gep_17 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 116
  %7 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %7, align 4, !mcsema_real_eip !45
  %_new_gep_20 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 112
  %EDI.64 = bitcast i64* %XDI to i32*, !mcsema_real_eip !46
  %EDI_val.65 = load i32, i32* %EDI.64, align 4, !mcsema_real_eip !46
  %8 = bitcast i8* %_new_gep_20 to i32*
  store i32 %EDI_val.65, i32* %8, align 8, !mcsema_real_eip !46
  %_new_gep_23 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 104
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.67 = load i64, i64* %XSI, align 8, !mcsema_real_eip !47
  store i64 %RSI_val.67, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !47
  %_new_gep_26 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 84
  %9 = bitcast i8* %_new_gep_26 to i32*
  store i32 0, i32* %9, align 4, !mcsema_real_eip !48
  %_new_gep_29 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 100
  %10 = bitcast i8* %_new_gep_29 to i32*
  store i32 1, i32* %10, align 4, !mcsema_real_eip !49
  %_new_gep_32 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 96
  %11 = bitcast i8* %_new_gep_32 to i32*
  store i32 1, i32* %11, align 8, !mcsema_real_eip !50
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !51
  store i1 icmp slt (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 0), i1* %SF, align 1, !mcsema_real_eip !51
  store i1 icmp eq (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 0), i1* %ZF, align 1, !mcsema_real_eip !51
  store i1 icmp slt (i64 and (i64 xor (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 ptrtoint (%1* @data_0x3e0 to i64)), i64 xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -9223372036854775797)), i64 0), i1* %OF, align 1, !mcsema_real_eip !51
  %12 = call i8 @llvm.ctpop.i8(i8 trunc (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11) to i8)), !mcsema_real_eip !51
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  store i1 %14, i1* %PF, align 1, !mcsema_real_eip !51
  store i1 icmp ult (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 ptrtoint (%1* @data_0x3e0 to i64)), i1* %CF, align 1, !mcsema_real_eip !51
  store i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64* %R9, align 8, !mcsema_real_eip !51
  store i8 88, i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 12) to i8*), align 4, !mcsema_real_eip !52
  %EAX_val.79 = load i32, i32* %EAX.55, align 4, !mcsema_real_eip !53
  %15 = zext i32 %EAX_val.79 to i64, !mcsema_real_eip !53
  store i64 %15, i64* %XDI, align 8, !mcsema_real_eip !53
  %R8_val.80 = load i64, i64* %R8, align 8, !mcsema_real_eip !54
  store i64 %R8_val.80, i64* %XSI, align 8, !mcsema_real_eip !54
  %RDX_val.83 = load i64, i64* %XDX, align 8, !mcsema_real_eip !55
  %RSP_val.84 = load i64, i64* %XSP, align 8, !mcsema_real_eip !55
  %_new_gep_41 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 0
  %16 = add i64 %RSP_val.84, -8
  %_allin_new_bt_42 = bitcast [128 x i8]* %_local_stack_start_ptr_2 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !55
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_, align 8
  store i64 %16, i64* %XSP, align 8, !mcsema_real_eip !55
  %17 = call x86_64_sysvcc i64 @_read(i64 %15, i64 %R8_val.80, i64 %RDX_val.83)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !55
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4323 = load i8*, i8** %5, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4323, i64 -72
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %17, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !56
  %AL.162 = bitcast i64* %XAX to i8*
  br label %block_0x114, !mcsema_real_eip !57

block_0x114:                                      ; preds = %block_0x2c7, %entry
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4624 = load i8*, i8** %5, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4624, i64 -36
  %18 = bitcast i8* %_new_gep_47 to i32*
  %19 = load i32, i32* %18, align 4, !mcsema_real_eip !57
  %20 = add i32 %19, -28
  %21 = xor i32 %20, %19, !mcsema_real_eip !57
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  store i1 %23, i1* %AF, align 1, !mcsema_real_eip !57
  %24 = trunc i32 %20 to i8, !mcsema_real_eip !57
  %25 = call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !57
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !57
  %28 = icmp eq i32 %20, 0, !mcsema_real_eip !57
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !57
  %29 = icmp slt i32 %20, 0
  store i1 %29, i1* %SF, align 1, !mcsema_real_eip !57
  %30 = icmp ult i32 %19, 28, !mcsema_real_eip !57
  store i1 %30, i1* %CF, align 1, !mcsema_real_eip !57
  %31 = and i32 %21, %19, !mcsema_real_eip !57
  %32 = icmp slt i32 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !57
  %tmp = xor i1 %29, %32
  br i1 %tmp, label %block_0x11e, label %block_0x2f7, !mcsema_real_eip !58

block_0x11e:                                      ; preds = %block_0x114
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4624, i64 -20
  %33 = bitcast i8* %_new_gep_50 to i32*
  %34 = load i32, i32* %33, align 4, !mcsema_real_eip !59
  %35 = zext i32 %34 to i64, !mcsema_real_eip !59
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !59
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4624, i64 -28
  %36 = bitcast i8* %_new_gep_53 to i32*
  store i32 %34, i32* %36, align 4, !mcsema_real_eip !60
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5527 = load i8*, i8** %5, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5527, i64 -24
  %37 = bitcast i8* %_new_gep_56 to i32*
  %38 = load i32, i32* %37, align 4, !mcsema_real_eip !61
  %39 = zext i32 %38 to i64, !mcsema_real_eip !61
  store i64 %39, i64* %XAX, align 8, !mcsema_real_eip !61
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5527, i64 -32
  %40 = bitcast i8* %_new_gep_59 to i32*
  store i32 %38, i32* %40, align 4, !mcsema_real_eip !62
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6128 = load i8*, i8** %5, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6128, i64 -36
  %41 = bitcast i8* %_new_gep_62 to i32*
  %42 = load i32, i32* %41, align 4, !mcsema_real_eip !63
  %43 = sext i32 %42 to i64, !mcsema_real_eip !63
  store i64 %43, i64* %XCX, align 8, !mcsema_real_eip !63
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6128, i64 -64
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_65, i64 %43
  %44 = load i8, i8* %_new_gep_66, align 1, !mcsema_real_eip !64
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -97, !mcsema_real_eip !65
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %XCX, align 8, !mcsema_real_eip !66
  %48 = add nsw i32 %45, -119
  %49 = xor i32 %48, %46, !mcsema_real_eip !67
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !67
  %52 = trunc i32 %48 to i8, !mcsema_real_eip !67
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !67
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  store i1 %55, i1* %PF, align 1, !mcsema_real_eip !67
  %56 = icmp eq i32 %48, 0, !mcsema_real_eip !67
  store i1 %56, i1* %ZF, align 1, !mcsema_real_eip !67
  %57 = icmp slt i8 %44, 119
  store i1 %57, i1* %SF, align 1, !mcsema_real_eip !67
  %58 = icmp ult i32 %46, 22, !mcsema_real_eip !67
  store i1 %58, i1* %CF, align 1, !mcsema_real_eip !67
  %59 = and i32 %49, %46, !mcsema_real_eip !67
  %60 = icmp slt i32 %59, 0
  store i1 %60, i1* %OF, align 1, !mcsema_real_eip !67
  %61 = zext i32 %48 to i64, !mcsema_real_eip !67
  store i64 %61, i64* %XAX, align 8, !mcsema_real_eip !67
  %_new_gep_69 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6128, i64 -80
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %47, i64* %_allin_new_bt_70, align 8, !mcsema_real_eip !68
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7129 = load i8*, i8** %5, align 8
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7129, i64 -84
  %EAX_val.109 = load i32, i32* %EAX.55, align 4, !mcsema_real_eip !69
  %62 = bitcast i8* %_new_gep_72 to i32*
  store i32 %EAX_val.109, i32* %62, align 4, !mcsema_real_eip !69
  %63 = load i1, i1* %ZF, align 1, !mcsema_real_eip !70
  %64 = load i1, i1* %CF, align 1, !mcsema_real_eip !70
  %.demorgan = or i1 %63, %64
  br i1 %.demorgan, label %block_0x148, label %block_0x18e, !mcsema_real_eip !70

block_0x148:                                      ; preds = %block_0x11e
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7441 = load i8*, i8** %5, align 8
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7441, i64 -80
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %65 = load i64, i64* %_allin_new_bt_76, align 8, !mcsema_real_eip !71
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !71
  %66 = shl i64 %65, 3
  %67 = add i64 %66, ptrtoint (%0* @data_0x320 to i64), !mcsema_real_eip !72
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !72
  %69 = load i64, i64* %68, align 8, !mcsema_real_eip !72
  store i64 %69, i64* %XCX, align 8, !mcsema_real_eip !72
  switch i64 %69, label %425 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !73

block_0x156:                                      ; preds = %block_0x148
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7441, i64 -24
  %70 = bitcast i8* %_new_gep_78 to i32*
  %71 = load i32, i32* %70, align 4, !mcsema_real_eip !74
  %72 = add i32 %71, -1, !mcsema_real_eip !75
  %73 = xor i32 %72, %71, !mcsema_real_eip !75
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !75
  %76 = icmp slt i32 %72, 0
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !75
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !75
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !75
  %78 = and i32 %73, %71, !mcsema_real_eip !75
  %79 = icmp slt i32 %78, 0
  store i1 %79, i1* %OF, align 1, !mcsema_real_eip !75
  %80 = trunc i32 %72 to i8, !mcsema_real_eip !75
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !75
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  store i1 %83, i1* %PF, align 1, !mcsema_real_eip !75
  %84 = icmp ne i32 %71, 0
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !75
  %85 = zext i32 %72 to i64, !mcsema_real_eip !75
  store i64 %85, i64* %XAX, align 8, !mcsema_real_eip !75
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !76
  br label %block_0x1c0, !mcsema_real_eip !77

block_0x164:                                      ; preds = %block_0x148
  %_new_gep_84 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7441, i64 -24
  %86 = bitcast i8* %_new_gep_84 to i32*
  %87 = load i32, i32* %86, align 4, !mcsema_real_eip !78
  %88 = add i32 %87, 1, !mcsema_real_eip !79
  %89 = xor i32 %88, %87, !mcsema_real_eip !79
  %90 = and i32 %89, 16, !mcsema_real_eip !79
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !79
  store i1 %91, i1* %AF, align 1, !mcsema_real_eip !79
  %92 = icmp slt i32 %88, 0
  store i1 %92, i1* %SF, align 1, !mcsema_real_eip !79
  %93 = icmp eq i32 %88, 0, !mcsema_real_eip !79
  store i1 %93, i1* %ZF, align 1, !mcsema_real_eip !79
  %94 = xor i32 %87, -2147483648, !mcsema_real_eip !79
  %95 = and i32 %89, %94, !mcsema_real_eip !79
  %96 = icmp slt i32 %95, 0
  store i1 %96, i1* %OF, align 1, !mcsema_real_eip !79
  %97 = trunc i32 %88 to i8, !mcsema_real_eip !79
  %98 = call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !79
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  store i1 %100, i1* %PF, align 1, !mcsema_real_eip !79
  %101 = icmp eq i32 %87, -1
  store i1 %101, i1* %CF, align 1, !mcsema_real_eip !79
  %102 = zext i32 %88 to i64, !mcsema_real_eip !79
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !79
  store i32 %88, i32* %86, align 4, !mcsema_real_eip !80
  br label %block_0x1c0, !mcsema_real_eip !81

block_0x172:                                      ; preds = %block_0x148
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7441, i64 -20
  %103 = bitcast i8* %_new_gep_90 to i32*
  %104 = load i32, i32* %103, align 4, !mcsema_real_eip !82
  %105 = add i32 %104, -1, !mcsema_real_eip !83
  %106 = xor i32 %105, %104, !mcsema_real_eip !83
  %107 = and i32 %106, 16
  %108 = icmp eq i32 %107, 0
  store i1 %108, i1* %AF, align 1, !mcsema_real_eip !83
  %109 = icmp slt i32 %105, 0
  store i1 %109, i1* %SF, align 1, !mcsema_real_eip !83
  %110 = icmp eq i32 %105, 0, !mcsema_real_eip !83
  store i1 %110, i1* %ZF, align 1, !mcsema_real_eip !83
  %111 = and i32 %106, %104, !mcsema_real_eip !83
  %112 = icmp slt i32 %111, 0
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !83
  %113 = trunc i32 %105 to i8, !mcsema_real_eip !83
  %114 = call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !83
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  store i1 %116, i1* %PF, align 1, !mcsema_real_eip !83
  %117 = icmp ne i32 %104, 0
  store i1 %117, i1* %CF, align 1, !mcsema_real_eip !83
  %118 = zext i32 %105 to i64, !mcsema_real_eip !83
  store i64 %118, i64* %XAX, align 8, !mcsema_real_eip !83
  store i32 %105, i32* %103, align 4, !mcsema_real_eip !84
  br label %block_0x1c0, !mcsema_real_eip !85

block_0x180:                                      ; preds = %block_0x148
  %_new_gep_96 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7441, i64 -20
  %119 = bitcast i8* %_new_gep_96 to i32*
  %120 = load i32, i32* %119, align 4, !mcsema_real_eip !86
  %121 = add i32 %120, 1, !mcsema_real_eip !87
  %122 = xor i32 %121, %120, !mcsema_real_eip !87
  %123 = and i32 %122, 16, !mcsema_real_eip !87
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !87
  store i1 %124, i1* %AF, align 1, !mcsema_real_eip !87
  %125 = icmp slt i32 %121, 0
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !87
  %126 = icmp eq i32 %121, 0, !mcsema_real_eip !87
  store i1 %126, i1* %ZF, align 1, !mcsema_real_eip !87
  %127 = xor i32 %120, -2147483648, !mcsema_real_eip !87
  %128 = and i32 %122, %127, !mcsema_real_eip !87
  %129 = icmp slt i32 %128, 0
  store i1 %129, i1* %OF, align 1, !mcsema_real_eip !87
  %130 = trunc i32 %121 to i8, !mcsema_real_eip !87
  %131 = call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !87
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  store i1 %133, i1* %PF, align 1, !mcsema_real_eip !87
  %134 = icmp eq i32 %120, -1
  store i1 %134, i1* %CF, align 1, !mcsema_real_eip !87
  %135 = zext i32 %121 to i64, !mcsema_real_eip !87
  store i64 %135, i64* %XAX, align 8, !mcsema_real_eip !87
  store i32 %121, i32* %119, align 4, !mcsema_real_eip !88
  br label %block_0x1c0, !mcsema_real_eip !89

block_0x18e:                                      ; preds = %block_0x11e, %block_0x148
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, align 8, !mcsema_real_eip !90
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !91
  %RSI_val.139 = load i64, i64* %XSI, align 8, !mcsema_real_eip !92
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_101 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.140 = load i64, i64* %XSP, align 8, !mcsema_real_eip !92
  %_new_gep_102 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_101, i64 -8
  %136 = add i64 %RSP_val.140, -8
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_103, align 8, !mcsema_real_eip !92
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_, align 8
  store i64 %136, i64* %XSP, align 8, !mcsema_real_eip !92
  %137 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64 %RSI_val.139)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_243 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_244 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_243, i64 8
  store i8* %_gep_fix_244, i8** %_RSP_ptr_, align 8
  store i64 %137, i64* %XAX, align 8, !mcsema_real_eip !92
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, align 8, !mcsema_real_eip !93
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10430 = load i8*, i8** %5, align 8
  %_new_gep_105 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10430, i64 -88
  %138 = trunc i64 %137 to i32
  %139 = bitcast i8* %_new_gep_105 to i32*
  store i32 %138, i32* %139, align 4, !mcsema_real_eip !94
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !95
  %RDI_val.145 = load i64, i64* %XDI, align 8, !mcsema_real_eip !96
  %RSI_val.146 = load i64, i64* %XSI, align 8, !mcsema_real_eip !96
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_107 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.147 = load i64, i64* %XSP, align 8, !mcsema_real_eip !96
  %_new_gep_108 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_107, i64 -8
  %140 = add i64 %RSP_val.147, -8
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_109, align 8, !mcsema_real_eip !96
  store volatile i8* %_new_gep_108, i8** %_RSP_ptr_, align 8
  store i64 %140, i64* %XSP, align 8, !mcsema_real_eip !96
  %141 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.145, i64 %RSI_val.146)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_245 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_246 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_245, i64 8
  store i8* %_gep_fix_246, i8** %_RSP_ptr_, align 8
  store i64 %141, i64* %XAX, align 8, !mcsema_real_eip !96
  store i64 4294967295, i64* %XDI, align 8, !mcsema_real_eip !97
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11031 = load i8*, i8** %5, align 8
  %_new_gep_111 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11031, i64 -92
  %142 = trunc i64 %141 to i32
  %143 = bitcast i8* %_new_gep_111 to i32*
  store i32 %142, i32* %143, align 4, !mcsema_real_eip !98
  %RDI_val.151 = load i64, i64* %XDI, align 8, !mcsema_real_eip !99
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_113 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.152 = load i64, i64* %XSP, align 8, !mcsema_real_eip !99
  %_new_gep_114 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_113, i64 -8
  %144 = add i64 %RSP_val.152, -8
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_115, align 8, !mcsema_real_eip !99
  store volatile i8* %_new_gep_114, i8** %_RSP_ptr_, align 8
  store i64 %144, i64* %XSP, align 8, !mcsema_real_eip !99
  %145 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_247 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_248 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_247, i64 8
  store i8* %_gep_fix_248, i8** %_RSP_ptr_, align 8
  store i64 %145, i64* %XAX, align 8, !mcsema_real_eip !99
  br label %block_0x1c0, !mcsema_real_eip !100

block_0x1c0:                                      ; preds = %block_0x18e, %block_0x180, %block_0x172, %block_0x164, %block_0x156
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !100
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11632 = load i8*, i8** %5, align 8
  %_new_gep_117 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11632, i64 -24
  %146 = bitcast i8* %_new_gep_117 to i32*
  %147 = load i32, i32* %146, align 4, !mcsema_real_eip !101
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %148, 11
  store i64 %149, i64* %XCX, align 8, !mcsema_real_eip !102
  %150 = add i64 %149, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !103
  %151 = xor i64 %150, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !103
  %152 = xor i64 %150, %149, !mcsema_real_eip !103
  %153 = and i64 %152, 16, !mcsema_real_eip !103
  %154 = icmp ne i64 %153, 0, !mcsema_real_eip !103
  store i1 %154, i1* %AF, align 1, !mcsema_real_eip !103
  %155 = icmp slt i64 %150, 0
  store i1 %155, i1* %SF, align 1, !mcsema_real_eip !103
  %156 = icmp eq i64 %150, 0, !mcsema_real_eip !103
  store i1 %156, i1* %ZF, align 1, !mcsema_real_eip !103
  %157 = xor i64 %149, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !103
  %158 = and i64 %151, %157, !mcsema_real_eip !103
  %159 = icmp slt i64 %158, 0
  store i1 %159, i1* %OF, align 1, !mcsema_real_eip !103
  %160 = trunc i64 %150 to i8, !mcsema_real_eip !103
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !103
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !103
  %164 = icmp ult i64 %150, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !103
  store i1 %164, i1* %CF, align 1, !mcsema_real_eip !103
  store i64 %150, i64* %XAX, align 8, !mcsema_real_eip !103
  %_new_gep_120 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11632, i64 -20
  %165 = bitcast i8* %_new_gep_120 to i32*
  %166 = load i32, i32* %165, align 4, !mcsema_real_eip !104
  %167 = sext i32 %166 to i64, !mcsema_real_eip !104
  store i64 %167, i64* %XCX, align 8, !mcsema_real_eip !104
  %168 = add i64 %150, %167, !mcsema_real_eip !105
  %169 = inttoptr i64 %168 to i8*, !mcsema_real_eip !105
  %170 = load i8, i8* %169, align 1, !mcsema_real_eip !105
  %171 = sext i8 %170 to i64
  %172 = and i64 %171, 4294967295
  store i64 %172, i64* %XDX, align 8, !mcsema_real_eip !105
  %173 = sext i8 %170 to i32
  %174 = add nsw i32 %173, -35
  %175 = xor i32 %174, %173, !mcsema_real_eip !106
  %176 = and i32 %175, 16, !mcsema_real_eip !106
  %177 = icmp ne i32 %176, 0, !mcsema_real_eip !106
  store i1 %177, i1* %AF, align 1, !mcsema_real_eip !106
  %178 = trunc i32 %174 to i8, !mcsema_real_eip !106
  %179 = call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !106
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  store i1 %181, i1* %PF, align 1, !mcsema_real_eip !106
  %182 = icmp eq i32 %174, 0, !mcsema_real_eip !106
  store i1 %182, i1* %ZF, align 1, !mcsema_real_eip !106
  %183 = icmp slt i8 %170, 35
  store i1 %183, i1* %SF, align 1, !mcsema_real_eip !106
  %184 = icmp ult i8 %170, 35
  store i1 %184, i1* %CF, align 1, !mcsema_real_eip !106
  %185 = and i32 %175, %173, !mcsema_real_eip !106
  %186 = icmp slt i32 %185, 0
  store i1 %186, i1* %OF, align 1, !mcsema_real_eip !106
  br i1 %182, label %block_0x1e6, label %block_0x219, !mcsema_real_eip !107

block_0x1e6:                                      ; preds = %block_0x1c0
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, align 8, !mcsema_real_eip !108
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !109
  %RSI_val.164 = load i64, i64* %XSI, align 8, !mcsema_real_eip !110
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_122 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.165 = load i64, i64* %XSP, align 8, !mcsema_real_eip !110
  %_new_gep_123 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_122, i64 -8
  %187 = add i64 %RSP_val.165, -8
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_124, align 8, !mcsema_real_eip !110
  store volatile i8* %_new_gep_123, i8** %_RSP_ptr_, align 8
  store i64 %187, i64* %XSP, align 8, !mcsema_real_eip !110
  %188 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64 %RSI_val.164)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_249 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_250 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_249, i64 8
  store i8* %_gep_fix_250, i8** %_RSP_ptr_, align 8
  store i64 %188, i64* %XAX, align 8, !mcsema_real_eip !110
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, align 8, !mcsema_real_eip !111
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12539 = load i8*, i8** %5, align 8
  %_new_gep_126 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12539, i64 -64
  %189 = ptrtoint i8* %_new_gep_126 to i64
  store i64 %189, i64* %XSI, align 8, !mcsema_real_eip !112
  %_new_gep_129 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12539, i64 -96
  %190 = trunc i64 %188 to i32
  %191 = bitcast i8* %_new_gep_129 to i32*
  store i32 %190, i32* %191, align 4, !mcsema_real_eip !113
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !114
  %RDI_val.171 = load i64, i64* %XDI, align 8, !mcsema_real_eip !115
  %RSI_val.172 = load i64, i64* %XSI, align 8, !mcsema_real_eip !115
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_131 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.173 = load i64, i64* %XSP, align 8, !mcsema_real_eip !115
  %_new_gep_132 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_131, i64 -8
  %192 = add i64 %RSP_val.173, -8
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_133, align 8, !mcsema_real_eip !115
  store volatile i8* %_new_gep_132, i8** %_RSP_ptr_, align 8
  store i64 %192, i64* %XSP, align 8, !mcsema_real_eip !115
  %193 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.171, i64 %RSI_val.172)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_251 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_252 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_251, i64 8
  store i8* %_gep_fix_252, i8** %_RSP_ptr_, align 8
  store i64 %193, i64* %XAX, align 8, !mcsema_real_eip !115
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !116
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !116
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !116
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !116
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !116
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !116
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13440 = load i8*, i8** %5, align 8
  %_new_gep_135 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13440, i64 -100
  %194 = trunc i64 %193 to i32
  %195 = bitcast i8* %_new_gep_135 to i32*
  store i32 %194, i32* %195, align 4, !mcsema_real_eip !117
  %RDI_val.181 = load i64, i64* %XDI, align 8, !mcsema_real_eip !118
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.182 = load i64, i64* %XSP, align 8, !mcsema_real_eip !118
  %_new_gep_138 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_137, i64 -8
  %196 = add i64 %RSP_val.182, -8
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_139, align 8, !mcsema_real_eip !118
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_, align 8
  store i64 %196, i64* %XSP, align 8, !mcsema_real_eip !118
  %197 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.181)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_253 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_254 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_253, i64 8
  store i8* %_gep_fix_254, i8** %_RSP_ptr_, align 8
  store i64 %197, i64* %XAX, align 8, !mcsema_real_eip !118
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14033.pre = load i8*, i8** %5, align 8
  br label %block_0x219, !mcsema_real_eip !119

block_0x219:                                      ; preds = %block_0x1c0, %block_0x1e6
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14033 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11632, %block_0x1c0 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14033.pre, %block_0x1e6 ]
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !119
  %_new_gep_141 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14033, i64 -24
  %198 = bitcast i8* %_new_gep_141 to i32*
  %199 = load i32, i32* %198, align 4, !mcsema_real_eip !120
  %200 = sext i32 %199 to i64
  %201 = mul nsw i64 %200, 11
  store i64 %201, i64* %XCX, align 8, !mcsema_real_eip !121
  %202 = add i64 %201, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !122
  %203 = xor i64 %202, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !122
  %204 = xor i64 %202, %201, !mcsema_real_eip !122
  %205 = and i64 %204, 16, !mcsema_real_eip !122
  %206 = icmp ne i64 %205, 0, !mcsema_real_eip !122
  store i1 %206, i1* %AF, align 1, !mcsema_real_eip !122
  %207 = icmp slt i64 %202, 0
  store i1 %207, i1* %SF, align 1, !mcsema_real_eip !122
  %208 = icmp eq i64 %202, 0, !mcsema_real_eip !122
  store i1 %208, i1* %ZF, align 1, !mcsema_real_eip !122
  %209 = xor i64 %201, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !122
  %210 = and i64 %203, %209, !mcsema_real_eip !122
  %211 = icmp slt i64 %210, 0
  store i1 %211, i1* %OF, align 1, !mcsema_real_eip !122
  %212 = trunc i64 %202 to i8, !mcsema_real_eip !122
  %213 = call i8 @llvm.ctpop.i8(i8 %212), !mcsema_real_eip !122
  %214 = and i8 %213, 1
  %215 = icmp eq i8 %214, 0
  store i1 %215, i1* %PF, align 1, !mcsema_real_eip !122
  %216 = icmp ult i64 %202, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !122
  store i1 %216, i1* %CF, align 1, !mcsema_real_eip !122
  store i64 %202, i64* %XAX, align 8, !mcsema_real_eip !122
  %_new_gep_144 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14033, i64 -20
  %217 = bitcast i8* %_new_gep_144 to i32*
  %218 = load i32, i32* %217, align 4, !mcsema_real_eip !123
  %219 = sext i32 %218 to i64, !mcsema_real_eip !123
  store i64 %219, i64* %XCX, align 8, !mcsema_real_eip !123
  %220 = add i64 %202, %219, !mcsema_real_eip !124
  %221 = inttoptr i64 %220 to i8*, !mcsema_real_eip !124
  %222 = load i8, i8* %221, align 1, !mcsema_real_eip !124
  %223 = sext i8 %222 to i64
  %224 = and i64 %223, 4294967295
  store i64 %224, i64* %XDX, align 8, !mcsema_real_eip !124
  %225 = sext i8 %222 to i32
  %226 = add nsw i32 %225, -32
  %227 = xor i32 %226, %225, !mcsema_real_eip !125
  %228 = and i32 %227, 16, !mcsema_real_eip !125
  %229 = icmp ne i32 %228, 0, !mcsema_real_eip !125
  store i1 %229, i1* %AF, align 1, !mcsema_real_eip !125
  %230 = trunc i32 %226 to i8, !mcsema_real_eip !125
  %231 = call i8 @llvm.ctpop.i8(i8 %230), !mcsema_real_eip !125
  %232 = and i8 %231, 1
  %233 = icmp eq i8 %232, 0
  store i1 %233, i1* %PF, align 1, !mcsema_real_eip !125
  %234 = icmp eq i32 %226, 0, !mcsema_real_eip !125
  store i1 %234, i1* %ZF, align 1, !mcsema_real_eip !125
  %235 = icmp slt i8 %222, 32
  store i1 %235, i1* %SF, align 1, !mcsema_real_eip !125
  %236 = icmp ult i8 %222, 32
  store i1 %236, i1* %CF, align 1, !mcsema_real_eip !125
  %237 = and i32 %227, %225, !mcsema_real_eip !125
  %238 = icmp slt i32 %237, 0
  store i1 %238, i1* %OF, align 1, !mcsema_real_eip !125
  br i1 %234, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !126

block_0x23f:                                      ; preds = %block_0x219
  %239 = load i32, i32* %198, align 4, !mcsema_real_eip !127
  %240 = add i32 %239, -2
  %241 = xor i32 %240, %239, !mcsema_real_eip !127
  %242 = and i32 %241, 16, !mcsema_real_eip !127
  %243 = icmp ne i32 %242, 0, !mcsema_real_eip !127
  store i1 %243, i1* %AF, align 1, !mcsema_real_eip !127
  %244 = trunc i32 %240 to i8, !mcsema_real_eip !127
  %245 = call i8 @llvm.ctpop.i8(i8 %244), !mcsema_real_eip !127
  %246 = and i8 %245, 1
  %247 = icmp eq i8 %246, 0
  store i1 %247, i1* %PF, align 1, !mcsema_real_eip !127
  %248 = icmp eq i32 %240, 0, !mcsema_real_eip !127
  store i1 %248, i1* %ZF, align 1, !mcsema_real_eip !127
  %249 = icmp slt i32 %240, 0
  store i1 %249, i1* %SF, align 1, !mcsema_real_eip !127
  %250 = icmp ult i32 %239, 2, !mcsema_real_eip !127
  store i1 %250, i1* %CF, align 1, !mcsema_real_eip !127
  %251 = and i32 %241, %239, !mcsema_real_eip !127
  %252 = icmp slt i32 %251, 0
  store i1 %252, i1* %OF, align 1, !mcsema_real_eip !127
  br i1 %248, label %block_0x249, label %block_0x283, !mcsema_real_eip !128

block_0x249:                                      ; preds = %block_0x23f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !129
  %253 = load i32, i32* %198, align 4, !mcsema_real_eip !130
  %254 = sext i32 %253 to i64
  %255 = mul nsw i64 %254, 11
  store i64 %255, i64* %XCX, align 8, !mcsema_real_eip !131
  %256 = add i64 %255, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !132
  %257 = xor i64 %256, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !132
  %258 = xor i64 %256, %255, !mcsema_real_eip !132
  %259 = and i64 %258, 16, !mcsema_real_eip !132
  %260 = icmp ne i64 %259, 0, !mcsema_real_eip !132
  store i1 %260, i1* %AF, align 1, !mcsema_real_eip !132
  %261 = icmp slt i64 %256, 0
  store i1 %261, i1* %SF, align 1, !mcsema_real_eip !132
  %262 = icmp eq i64 %256, 0, !mcsema_real_eip !132
  store i1 %262, i1* %ZF, align 1, !mcsema_real_eip !132
  %263 = xor i64 %255, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !132
  %264 = and i64 %257, %263, !mcsema_real_eip !132
  %265 = icmp slt i64 %264, 0
  store i1 %265, i1* %OF, align 1, !mcsema_real_eip !132
  %266 = trunc i64 %256 to i8, !mcsema_real_eip !132
  %267 = call i8 @llvm.ctpop.i8(i8 %266), !mcsema_real_eip !132
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  store i1 %269, i1* %PF, align 1, !mcsema_real_eip !132
  %270 = icmp ult i64 %256, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !132
  store i1 %270, i1* %CF, align 1, !mcsema_real_eip !132
  store i64 %256, i64* %XAX, align 8, !mcsema_real_eip !132
  %271 = load i32, i32* %217, align 4, !mcsema_real_eip !133
  %272 = sext i32 %271 to i64, !mcsema_real_eip !133
  store i64 %272, i64* %XCX, align 8, !mcsema_real_eip !133
  %273 = add i64 %256, %272, !mcsema_real_eip !134
  %274 = inttoptr i64 %273 to i8*, !mcsema_real_eip !134
  %275 = load i8, i8* %274, align 1, !mcsema_real_eip !134
  %276 = sext i8 %275 to i64
  %277 = and i64 %276, 4294967295
  store i64 %277, i64* %XDX, align 8, !mcsema_real_eip !134
  %278 = sext i8 %275 to i32
  %279 = add nsw i32 %278, -124
  %280 = xor i32 %279, %278, !mcsema_real_eip !135
  %281 = and i32 %280, 16
  %282 = icmp eq i32 %281, 0
  store i1 %282, i1* %AF, align 1, !mcsema_real_eip !135
  %283 = trunc i32 %279 to i8, !mcsema_real_eip !135
  %284 = call i8 @llvm.ctpop.i8(i8 %283), !mcsema_real_eip !135
  %285 = and i8 %284, 1
  %286 = icmp eq i8 %285, 0
  store i1 %286, i1* %PF, align 1, !mcsema_real_eip !135
  %287 = icmp eq i32 %279, 0, !mcsema_real_eip !135
  store i1 %287, i1* %ZF, align 1, !mcsema_real_eip !135
  %288 = icmp slt i8 %275, 124
  store i1 %288, i1* %SF, align 1, !mcsema_real_eip !135
  %289 = icmp ult i8 %275, 124
  store i1 %289, i1* %CF, align 1, !mcsema_real_eip !135
  %290 = and i32 %280, %278, !mcsema_real_eip !135
  %291 = icmp slt i32 %290, 0
  store i1 %291, i1* %OF, align 1, !mcsema_real_eip !135
  br i1 %287, label %block_0x26f, label %block_0x283, !mcsema_real_eip !136

block_0x26f:                                      ; preds = %block_0x249
  %292 = load i32, i32* %217, align 4, !mcsema_real_eip !137
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !137
  %293 = trunc i32 %292 to i8, !mcsema_real_eip !137
  %294 = call i8 @llvm.ctpop.i8(i8 %293), !mcsema_real_eip !137
  %295 = and i8 %294, 1
  %296 = icmp eq i8 %295, 0
  store i1 %296, i1* %PF, align 1, !mcsema_real_eip !137
  %297 = icmp eq i32 %292, 0, !mcsema_real_eip !137
  store i1 %297, i1* %ZF, align 1, !mcsema_real_eip !137
  %298 = icmp slt i32 %292, 0
  store i1 %298, i1* %SF, align 1, !mcsema_real_eip !137
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !137
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !137
  %299 = icmp slt i32 %292, 1
  br i1 %299, label %block_0x283, label %block_0x279, !mcsema_real_eip !138

block_0x279:                                      ; preds = %block_0x26f
  %300 = load i32, i32* %217, align 4, !mcsema_real_eip !139
  %301 = add i32 %300, -11
  %302 = xor i32 %301, %300, !mcsema_real_eip !139
  %303 = and i32 %302, 16, !mcsema_real_eip !139
  %304 = icmp ne i32 %303, 0, !mcsema_real_eip !139
  store i1 %304, i1* %AF, align 1, !mcsema_real_eip !139
  %305 = trunc i32 %301 to i8, !mcsema_real_eip !139
  %306 = call i8 @llvm.ctpop.i8(i8 %305), !mcsema_real_eip !139
  %307 = and i8 %306, 1
  %308 = icmp eq i8 %307, 0
  store i1 %308, i1* %PF, align 1, !mcsema_real_eip !139
  %309 = icmp eq i32 %301, 0, !mcsema_real_eip !139
  store i1 %309, i1* %ZF, align 1, !mcsema_real_eip !139
  %310 = icmp slt i32 %301, 0
  store i1 %310, i1* %SF, align 1, !mcsema_real_eip !139
  %311 = icmp ult i32 %300, 11, !mcsema_real_eip !139
  store i1 %311, i1* %CF, align 1, !mcsema_real_eip !139
  %312 = and i32 %302, %300, !mcsema_real_eip !139
  %313 = icmp slt i32 %312, 0
  store i1 %313, i1* %OF, align 1, !mcsema_real_eip !139
  %314 = xor i1 %310, %313
  br i1 %314, label %block_0x28f, label %block_0x283, !mcsema_real_eip !140

block_0x283:                                      ; preds = %block_0x249, %block_0x23f, %block_0x279, %block_0x26f
  %_new_gep_162 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14033, i64 -28
  %315 = bitcast i8* %_new_gep_162 to i32*
  %316 = load i32, i32* %315, align 4, !mcsema_real_eip !141
  %317 = zext i32 %316 to i64, !mcsema_real_eip !141
  store i64 %317, i64* %XAX, align 8, !mcsema_real_eip !141
  store i32 %316, i32* %217, align 4, !mcsema_real_eip !142
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16734 = load i8*, i8** %5, align 8
  %_new_gep_168 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16734, i64 -32
  %318 = bitcast i8* %_new_gep_168 to i32*
  %319 = load i32, i32* %318, align 4, !mcsema_real_eip !143
  %320 = zext i32 %319 to i64, !mcsema_real_eip !143
  store i64 %320, i64* %XAX, align 8, !mcsema_real_eip !143
  %_new_gep_171 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16734, i64 -24
  %321 = bitcast i8* %_new_gep_171 to i32*
  store i32 %319, i32* %321, align 4, !mcsema_real_eip !144
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17335.pre = load i8*, i8** %5, align 8
  br label %block_0x28f, !mcsema_real_eip !145

block_0x28f:                                      ; preds = %block_0x283, %block_0x279, %block_0x219
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17335 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17335.pre, %block_0x283 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14033, %block_0x279 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14033, %block_0x219 ]
  %_new_gep_174 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17335, i64 -28
  %322 = bitcast i8* %_new_gep_174 to i32*
  %323 = load i32, i32* %322, align 4, !mcsema_real_eip !145
  %324 = zext i32 %323 to i64, !mcsema_real_eip !145
  store i64 %324, i64* %XAX, align 8, !mcsema_real_eip !145
  %_new_gep_177 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17335, i64 -20
  %325 = bitcast i8* %_new_gep_177 to i32*
  %326 = load i32, i32* %325, align 4, !mcsema_real_eip !146
  %327 = sub i32 %323, %326, !mcsema_real_eip !146
  %328 = xor i32 %327, %323, !mcsema_real_eip !146
  %329 = xor i32 %328, %326, !mcsema_real_eip !146
  %330 = and i32 %329, 16, !mcsema_real_eip !146
  %331 = icmp ne i32 %330, 0, !mcsema_real_eip !146
  store i1 %331, i1* %AF, align 1, !mcsema_real_eip !146
  %332 = trunc i32 %327 to i8, !mcsema_real_eip !146
  %333 = call i8 @llvm.ctpop.i8(i8 %332), !mcsema_real_eip !146
  %334 = and i8 %333, 1
  %335 = icmp eq i8 %334, 0
  store i1 %335, i1* %PF, align 1, !mcsema_real_eip !146
  %336 = icmp eq i32 %327, 0, !mcsema_real_eip !146
  store i1 %336, i1* %ZF, align 1, !mcsema_real_eip !146
  %337 = icmp slt i32 %327, 0
  store i1 %337, i1* %SF, align 1, !mcsema_real_eip !146
  %338 = icmp ult i32 %323, %326, !mcsema_real_eip !146
  store i1 %338, i1* %CF, align 1, !mcsema_real_eip !146
  %339 = xor i32 %326, %323, !mcsema_real_eip !146
  %340 = and i32 %328, %339, !mcsema_real_eip !146
  %341 = icmp slt i32 %340, 0
  store i1 %341, i1* %OF, align 1, !mcsema_real_eip !146
  br i1 %336, label %block_0x29b, label %block_0x28f.block_0x2c7_crit_edge, !mcsema_real_eip !147

block_0x28f.block_0x2c7_crit_edge:                ; preds = %block_0x28f
  %.pre = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17335, i64 -24
  %.pre48 = bitcast i8* %.pre to i32*
  br label %block_0x2c7

block_0x29b:                                      ; preds = %block_0x28f
  %_new_gep_180 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17335, i64 -32
  %342 = bitcast i8* %_new_gep_180 to i32*
  %343 = load i32, i32* %342, align 4, !mcsema_real_eip !148
  %344 = zext i32 %343 to i64, !mcsema_real_eip !148
  store i64 %344, i64* %XAX, align 8, !mcsema_real_eip !148
  %_new_gep_183 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17335, i64 -24
  %345 = bitcast i8* %_new_gep_183 to i32*
  %346 = load i32, i32* %345, align 4, !mcsema_real_eip !149
  %347 = sub i32 %343, %346, !mcsema_real_eip !149
  %348 = xor i32 %347, %343, !mcsema_real_eip !149
  %349 = xor i32 %348, %346, !mcsema_real_eip !149
  %350 = and i32 %349, 16, !mcsema_real_eip !149
  %351 = icmp ne i32 %350, 0, !mcsema_real_eip !149
  store i1 %351, i1* %AF, align 1, !mcsema_real_eip !149
  %352 = trunc i32 %347 to i8, !mcsema_real_eip !149
  %353 = call i8 @llvm.ctpop.i8(i8 %352), !mcsema_real_eip !149
  %354 = and i8 %353, 1
  %355 = icmp eq i8 %354, 0
  store i1 %355, i1* %PF, align 1, !mcsema_real_eip !149
  %356 = icmp eq i32 %347, 0, !mcsema_real_eip !149
  store i1 %356, i1* %ZF, align 1, !mcsema_real_eip !149
  %357 = icmp slt i32 %347, 0
  store i1 %357, i1* %SF, align 1, !mcsema_real_eip !149
  %358 = icmp ult i32 %343, %346, !mcsema_real_eip !149
  store i1 %358, i1* %CF, align 1, !mcsema_real_eip !149
  %359 = xor i32 %346, %343, !mcsema_real_eip !149
  %360 = and i32 %348, %359, !mcsema_real_eip !149
  %361 = icmp slt i32 %360, 0
  store i1 %361, i1* %OF, align 1, !mcsema_real_eip !149
  br i1 %356, label %block_0x2a7, label %block_0x2c7, !mcsema_real_eip !150

block_0x2a7:                                      ; preds = %block_0x29b
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, align 8, !mcsema_real_eip !151
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !152
  %RSI_val.222 = load i64, i64* %XSI, align 8, !mcsema_real_eip !153
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_185 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.223 = load i64, i64* %XSP, align 8, !mcsema_real_eip !153
  %_new_gep_186 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_185, i64 -8
  %362 = add i64 %RSP_val.223, -8
  %_allin_new_bt_187 = bitcast i8* %_new_gep_186 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_187, align 8, !mcsema_real_eip !153
  store volatile i8* %_new_gep_186, i8** %_RSP_ptr_, align 8
  store i64 %362, i64* %XSP, align 8, !mcsema_real_eip !153
  %363 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.222)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_255 = load i8*, i8** %_RSP_ptr_, align 8
  br label %block_0x312, !mcsema_real_eip !154

block_0x2c7:                                      ; preds = %block_0x28f.block_0x2c7_crit_edge, %block_0x29b
  %.pre-phi = phi i32* [ %.pre48, %block_0x28f.block_0x2c7_crit_edge ], [ %345, %block_0x29b ]
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !155
  %364 = load i32, i32* %.pre-phi, align 4, !mcsema_real_eip !156
  %365 = sext i32 %364 to i64
  %366 = mul nsw i64 %365, 11
  store i64 %366, i64* %XCX, align 8, !mcsema_real_eip !157
  %367 = add i64 %366, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !158
  %368 = xor i64 %367, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !158
  %369 = xor i64 %367, %366, !mcsema_real_eip !158
  %370 = and i64 %369, 16, !mcsema_real_eip !158
  %371 = icmp ne i64 %370, 0, !mcsema_real_eip !158
  store i1 %371, i1* %AF, align 1, !mcsema_real_eip !158
  %372 = icmp slt i64 %367, 0
  store i1 %372, i1* %SF, align 1, !mcsema_real_eip !158
  %373 = icmp eq i64 %367, 0, !mcsema_real_eip !158
  store i1 %373, i1* %ZF, align 1, !mcsema_real_eip !158
  %374 = xor i64 %366, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !158
  %375 = and i64 %368, %374, !mcsema_real_eip !158
  %376 = icmp slt i64 %375, 0
  store i1 %376, i1* %OF, align 1, !mcsema_real_eip !158
  %377 = trunc i64 %367 to i8, !mcsema_real_eip !158
  %378 = call i8 @llvm.ctpop.i8(i8 %377), !mcsema_real_eip !158
  %379 = and i8 %378, 1
  %380 = icmp eq i8 %379, 0
  store i1 %380, i1* %PF, align 1, !mcsema_real_eip !158
  %381 = icmp ult i64 %367, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !158
  store i1 %381, i1* %CF, align 1, !mcsema_real_eip !158
  store i64 %367, i64* %XAX, align 8, !mcsema_real_eip !158
  %382 = load i32, i32* %325, align 4, !mcsema_real_eip !159
  %383 = sext i32 %382 to i64, !mcsema_real_eip !159
  store i64 %383, i64* %XCX, align 8, !mcsema_real_eip !159
  %384 = add i64 %367, %383, !mcsema_real_eip !160
  %385 = inttoptr i64 %384 to i8*, !mcsema_real_eip !160
  store i8 88, i8* %385, align 1, !mcsema_real_eip !160
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_200 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.235 = load i64, i64* %XSP, align 8, !mcsema_real_eip !161
  %_new_gep_201 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_200, i64 -8
  %386 = add i64 %RSP_val.235, -8
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_202, align 8, !mcsema_real_eip !161
  store volatile i8* %_new_gep_201, i8** %_RSP_ptr_, align 8
  store i64 %386, i64* %XSP, align 8, !mcsema_real_eip !161
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25736 = load i8*, i8** %5, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_201, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25736)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_259 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_260 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_259, i64 8
  store i8* %_gep_fix_260, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20337 = load i8*, i8** %5, align 8
  %_new_gep_204 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20337, i64 -36
  %387 = bitcast i8* %_new_gep_204 to i32*
  %388 = load i32, i32* %387, align 4, !mcsema_real_eip !162
  %389 = add i32 %388, 1, !mcsema_real_eip !163
  %390 = xor i32 %389, %388, !mcsema_real_eip !163
  %391 = and i32 %390, 16, !mcsema_real_eip !163
  %392 = icmp ne i32 %391, 0, !mcsema_real_eip !163
  store i1 %392, i1* %AF, align 1, !mcsema_real_eip !163
  %393 = icmp slt i32 %389, 0
  store i1 %393, i1* %SF, align 1, !mcsema_real_eip !163
  %394 = icmp eq i32 %389, 0, !mcsema_real_eip !163
  store i1 %394, i1* %ZF, align 1, !mcsema_real_eip !163
  %395 = xor i32 %388, -2147483648, !mcsema_real_eip !163
  %396 = and i32 %390, %395, !mcsema_real_eip !163
  %397 = icmp slt i32 %396, 0
  store i1 %397, i1* %OF, align 1, !mcsema_real_eip !163
  %398 = trunc i32 %389 to i8, !mcsema_real_eip !163
  %399 = call i8 @llvm.ctpop.i8(i8 %398), !mcsema_real_eip !163
  %400 = and i8 %399, 1
  %401 = icmp eq i8 %400, 0
  store i1 %401, i1* %PF, align 1, !mcsema_real_eip !163
  %402 = icmp eq i32 %388, -1
  store i1 %402, i1* %CF, align 1, !mcsema_real_eip !163
  %403 = zext i32 %389 to i64, !mcsema_real_eip !163
  store i64 %403, i64* %XDX, align 8, !mcsema_real_eip !163
  store i32 %389, i32* %387, align 4, !mcsema_real_eip !164
  br label %block_0x114, !mcsema_real_eip !165

block_0x2f7:                                      ; preds = %block_0x114
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, align 8, !mcsema_real_eip !166
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !167
  %RSI_val.244 = load i64, i64* %XSI, align 8, !mcsema_real_eip !168
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_209 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.245 = load i64, i64* %XSP, align 8, !mcsema_real_eip !168
  %_new_gep_210 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_209, i64 -8
  %404 = add i64 %RSP_val.245, -8
  %_allin_new_bt_211 = bitcast i8* %_new_gep_210 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_211, align 8, !mcsema_real_eip !168
  store volatile i8* %_new_gep_210, i8** %_RSP_ptr_, align 8
  store i64 %404, i64* %XSP, align 8, !mcsema_real_eip !168
  %405 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.244)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_261 = load i8*, i8** %_RSP_ptr_, align 8
  br label %block_0x312, !mcsema_real_eip !169

block_0x312:                                      ; preds = %block_0x2f7, %block_0x2a7
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_261.pn = phi i8* [ %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_261, %block_0x2f7 ], [ %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_255, %block_0x2a7 ]
  %.sink45 = phi i64 [ %405, %block_0x2f7 ], [ %363, %block_0x2a7 ]
  %.sink = phi i32 [ 1, %block_0x2f7 ], [ 2, %block_0x2a7 ]
  %.sink15 = phi i64 [ -108, %block_0x2f7 ], [ -104, %block_0x2a7 ]
  %storemerge = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_261.pn, i64 8
  store i8* %storemerge, i8** %_RSP_ptr_, align 8
  store i64 %.sink45, i64* %XAX, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_21225 = load i8*, i8** %5, align 8
  %_new_gep_213 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_21225, i64 -4
  %406 = bitcast i8* %_new_gep_213 to i32*
  store i32 %.sink, i32* %406, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_215.sink42 = load i8*, i8** %5, align 8
  %_new_gep_216 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_215.sink42, i64 %.sink15
  %EAX_val.249 = load i32, i32* %EAX.55, align 4
  %407 = bitcast i8* %_new_gep_216 to i32*
  store i32 %EAX_val.249, i32* %407, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_21826 = load i8*, i8** %5, align 8
  %_new_gep_219 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_21826, i64 -4
  %408 = bitcast i8* %_new_gep_219 to i32*
  %409 = load i32, i32* %408, align 4, !mcsema_real_eip !169
  %410 = zext i32 %409 to i64, !mcsema_real_eip !169
  store i64 %410, i64* %XAX, align 8, !mcsema_real_eip !169
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_221 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.251 = load i64, i64* %XSP, align 8, !mcsema_real_eip !170
  %_new_gep_222 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_221, i64 112
  %411 = add i64 %RSP_val.251, 112, !mcsema_real_eip !170
  %_trans_p2i_223 = ptrtoint i8* %_new_gep_222 to i64
  %_trans_p2i_224 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_221 to i64
  %_trans_xor_225 = xor i64 %_trans_p2i_223, %_trans_p2i_224
  %412 = and i64 %_trans_xor_225, 16
  %413 = icmp eq i64 %412, 0
  store i1 %413, i1* %AF, align 1, !mcsema_real_eip !170
  %414 = icmp slt i64 %411, 0
  store i1 %414, i1* %SF, align 1, !mcsema_real_eip !170
  %_trans_icmp_eq_227 = icmp eq i8* %_new_gep_222, null
  store i1 %_trans_icmp_eq_227, i1* %ZF, align 1, !mcsema_real_eip !170
  %415 = xor i64 %_trans_p2i_224, -9223372036854775808, !mcsema_real_eip !170
  %416 = and i64 %_trans_xor_225, %415, !mcsema_real_eip !170
  %417 = icmp slt i64 %416, 0
  store i1 %417, i1* %OF, align 1, !mcsema_real_eip !170
  %_trans_trunc_234 = trunc i64 %_trans_p2i_223 to i8
  %418 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_234), !mcsema_real_eip !170
  %419 = and i8 %418, 1
  %420 = icmp eq i8 %419, 0
  store i1 %420, i1* %PF, align 1, !mcsema_real_eip !170
  %_trans_icmp_ne_236 = icmp ne i64 %RSP_val.251, %_trans_p2i_223
  store i1 %_trans_icmp_ne_236, i1* %CF, align 1, !mcsema_real_eip !170
  store volatile i8* %_new_gep_222, i8** %_RSP_ptr_, align 8
  store i64 %411, i64* %XSP, align 8, !mcsema_real_eip !170
  %_allin_new_bt_238 = bitcast i8* %_new_gep_222 to i64*
  %421 = load i64, i64* %_allin_new_bt_238, align 8, !mcsema_real_eip !171
  store volatile i64 %421, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %421, i64* %XBP, align 8, !mcsema_real_eip !171
  %_new_gep_239 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_221, i64 120
  %422 = add i64 %RSP_val.251, 120, !mcsema_real_eip !171
  store volatile i8* %_new_gep_239, i8** %_RSP_ptr_, align 8
  store i64 %422, i64* %XSP, align 8, !mcsema_real_eip !171
  %_new_gep_241 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_221, i64 128
  %423 = add i64 %RSP_val.251, 128, !mcsema_real_eip !172
  %_allin_new_bt_242 = bitcast i8* %_new_gep_239 to i64*
  %424 = load i64, i64* %_allin_new_bt_242, align 8, !mcsema_real_eip !172
  store i64 %424, i64* %XIP, align 8, !mcsema_real_eip !172
  store volatile i8* %_new_gep_241, i8** %_RSP_ptr_, align 8
  store i64 %423, i64* %XSP, align 8, !mcsema_real_eip !172
  ret void, !mcsema_real_eip !172

; <label>:425:                                    ; preds = %block_0x148
  store i64 %69, i64* %XIP, align 8, !mcsema_real_eip !73
  call void @__mcsema_detach_call_value()
  ret void, !mcsema_real_eip !73
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read(i64, i64, i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_exit(i64) local_unnamed_addr #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [48 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
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
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !4
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 32 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !5
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %AL.41 = bitcast i64* %XAX to i8*
  br label %block_0xf, !mcsema_real_eip !6

block_0xf:                                        ; preds = %block_0x69, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_16 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_16.pre, %block_0x69 ], [ %_new_gep_, %entry ]
  %_new_gep_17 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_16, i64 -4
  %12 = ptrtoint i8* %_new_gep_17 to i64
  %_offset_above_rbp_ = sub i64 %12, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_17, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_17, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_17, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_17
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %13 = add i32 %_new_load_, -7
  %14 = xor i32 %13, %_new_load_, !mcsema_real_eip !6
  %15 = and i32 %14, 16, !mcsema_real_eip !6
  %16 = icmp ne i32 %15, 0, !mcsema_real_eip !6
  store i1 %16, i1* %AF, align 1, !mcsema_real_eip !6
  %17 = trunc i32 %13 to i8, !mcsema_real_eip !6
  %18 = call i8 @llvm.ctpop.i8(i8 %17), !mcsema_real_eip !6
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  store i1 %20, i1* %PF, align 1, !mcsema_real_eip !6
  %21 = icmp eq i32 %13, 0, !mcsema_real_eip !6
  store i1 %21, i1* %ZF, align 1, !mcsema_real_eip !6
  %22 = icmp slt i32 %13, 0
  store i1 %22, i1* %SF, align 1, !mcsema_real_eip !6
  %23 = icmp ult i32 %_new_load_, 7, !mcsema_real_eip !6
  store i1 %23, i1* %CF, align 1, !mcsema_real_eip !6
  %24 = and i32 %14, %_new_load_, !mcsema_real_eip !6
  %25 = icmp slt i32 %24, 0
  store i1 %25, i1* %OF, align 1, !mcsema_real_eip !6
  %tmp = xor i1 %22, %25
  br i1 %tmp, label %block_0x19, label %block_0x8b, !mcsema_real_eip !7

block_0x19:                                       ; preds = %block_0xf
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_16, i64 -8
  %26 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %26, align 4, !mcsema_real_eip !8
  br label %block_0x20, !mcsema_real_eip !9

block_0x20:                                       ; preds = %block_0x2a, %block_0x19
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -8
  %27 = ptrtoint i8* %_new_gep_23 to i64
  %_offset_above_rbp_90 = sub i64 %27, %_local_end_to_int_
  %_pot_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_90
  %_cond1_92 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_93 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_94 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_95 = or i1 %_cond2_1_93, %_cond2_2_94
  %_cond4_96 = icmp ule i8* %_pot_address_in_parent_stack_91, %_parent_stack_end_ptr_
  %_cond1_n_cond2_97 = and i1 %_cond1_92, %_cond2_95
  %_cond1_n_cond2_cond3_98 = and i1 %_cond1_n_cond2_97, %_cond4_96
  %_address_in_parent_stack_bt_100..v = select i1 %_cond1_n_cond2_cond3_98, i8* %_pot_address_in_parent_stack_91, i8* %_new_gep_23
  %_address_in_parent_stack_bt_100. = bitcast i8* %_address_in_parent_stack_bt_100..v to i32*
  %_new_load_101 = load i32, i32* %_address_in_parent_stack_bt_100., align 4
  %28 = add i32 %_new_load_101, -11
  %29 = xor i32 %28, %_new_load_101, !mcsema_real_eip !9
  %30 = and i32 %29, 16, !mcsema_real_eip !9
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !9
  store i1 %31, i1* %AF, align 1, !mcsema_real_eip !9
  %32 = trunc i32 %28 to i8, !mcsema_real_eip !9
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !9
  %34 = and i8 %33, 1
  %35 = icmp eq i8 %34, 0
  store i1 %35, i1* %PF, align 1, !mcsema_real_eip !9
  %36 = icmp eq i32 %28, 0, !mcsema_real_eip !9
  store i1 %36, i1* %ZF, align 1, !mcsema_real_eip !9
  %37 = icmp slt i32 %28, 0
  store i1 %37, i1* %SF, align 1, !mcsema_real_eip !9
  %38 = icmp ult i32 %_new_load_101, 11, !mcsema_real_eip !9
  store i1 %38, i1* %CF, align 1, !mcsema_real_eip !9
  %39 = and i32 %29, %_new_load_101, !mcsema_real_eip !9
  %40 = icmp slt i32 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !9
  %tmp2 = xor i1 %37, %40
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.31 = load i64, i64* %XSP, align 8
  %41 = add i64 %RSP_val.31, -8
  br i1 %tmp2, label %block_0x2a, label %block_0x69, !mcsema_real_eip !10

block_0x2a:                                       ; preds = %block_0x20
  store i64 ptrtoint (%2* @data_0x42d to i64), i64* %XDI, align 8, !mcsema_real_eip !11
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !12
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -4
  %42 = ptrtoint i8* %_new_gep_26 to i64
  %_offset_above_rbp_105 = sub i64 %42, %_local_end_to_int_
  %_pot_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_105
  %_cond1_107 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_108 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_109 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_110 = or i1 %_cond2_1_108, %_cond2_2_109
  %_cond4_111 = icmp ule i8* %_pot_address_in_parent_stack_106, %_parent_stack_end_ptr_
  %_cond1_n_cond2_112 = and i1 %_cond1_107, %_cond2_110
  %_cond1_n_cond2_cond3_113 = and i1 %_cond1_n_cond2_112, %_cond4_111
  %_address_in_parent_stack_bt_115..v = select i1 %_cond1_n_cond2_cond3_113, i8* %_pot_address_in_parent_stack_106, i8* %_new_gep_26
  %_address_in_parent_stack_bt_115. = bitcast i8* %_address_in_parent_stack_bt_115..v to i32*
  %_new_load_116 = load i32, i32* %_address_in_parent_stack_bt_115., align 4
  %43 = sext i32 %_new_load_116 to i64
  %44 = mul nsw i64 %43, 11
  store i64 %44, i64* %XCX, align 8, !mcsema_real_eip !14
  %45 = add i64 %44, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  %46 = xor i64 %45, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  %47 = xor i64 %45, %44, !mcsema_real_eip !15
  %48 = and i64 %47, 16, !mcsema_real_eip !15
  %49 = icmp ne i64 %48, 0, !mcsema_real_eip !15
  store i1 %49, i1* %AF, align 1, !mcsema_real_eip !15
  %50 = icmp slt i64 %45, 0
  store i1 %50, i1* %SF, align 1, !mcsema_real_eip !15
  %51 = icmp eq i64 %45, 0, !mcsema_real_eip !15
  store i1 %51, i1* %ZF, align 1, !mcsema_real_eip !15
  %52 = xor i64 %44, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !15
  %53 = and i64 %46, %52, !mcsema_real_eip !15
  %54 = icmp slt i64 %53, 0
  store i1 %54, i1* %OF, align 1, !mcsema_real_eip !15
  %55 = trunc i64 %45 to i8, !mcsema_real_eip !15
  %56 = call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !15
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  store i1 %58, i1* %PF, align 1, !mcsema_real_eip !15
  %59 = icmp ult i64 %45, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !15
  store i1 %59, i1* %CF, align 1, !mcsema_real_eip !15
  store i64 %45, i64* %XAX, align 8, !mcsema_real_eip !15
  %_new_load_131 = load i32, i32* %_address_in_parent_stack_bt_100., align 4
  %60 = sext i32 %_new_load_131 to i64, !mcsema_real_eip !16
  store i64 %60, i64* %XCX, align 8, !mcsema_real_eip !16
  %61 = add i64 %45, %60, !mcsema_real_eip !17
  %62 = inttoptr i64 %61 to i8*, !mcsema_real_eip !17
  %_offset_above_rbp_134 = sub i64 %61, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ult i8* %_local_stack_end_ptr_, %62
  %_cond2_1_137 = icmp ugt i8* %62, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %62, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond4_140, %_cond1_n_cond2_141
  %_pot_address_in_parent_stack_135. = select i1 %_cond1_n_cond2_cond3_142, i8* %_pot_address_in_parent_stack_135, i8* %62
  %_new_load_144 = load i8, i8* %_pot_address_in_parent_stack_135., align 1
  %63 = sext i8 %_new_load_144 to i64
  %64 = and i64 %63, 4294967295
  store i64 %64, i64* %XSI, align 8, !mcsema_real_eip !17
  store i8 0, i8* %AL.41, align 1, !mcsema_real_eip !18
  %_new_gep_32 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !19
  store volatile i8* %_new_gep_32, i8** %_RSP_ptr_, align 8
  store i64 %41, i64* %XSP, align 8, !mcsema_real_eip !19
  %65 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%2* @data_0x42d to i64), i64 %64)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !19
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -12
  %66 = trunc i64 %65 to i32
  %67 = bitcast i8* %_new_gep_35 to i32*
  store i32 %66, i32* %67, align 4, !mcsema_real_eip !20
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -8
  %68 = ptrtoint i8* %_new_gep_38 to i64
  %69 = bitcast i8* %_new_gep_38 to i32*
  %_offset_above_rbp_148 = sub i64 %68, %_local_end_to_int_
  %_pot_address_in_parent_stack_149 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_148
  %_cond1_150 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_151 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_152 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_153 = or i1 %_cond2_1_151, %_cond2_2_152
  %_cond4_154 = icmp ule i8* %_pot_address_in_parent_stack_149, %_parent_stack_end_ptr_
  %_cond1_n_cond2_155 = and i1 %_cond1_150, %_cond2_153
  %_cond1_n_cond2_cond3_156 = and i1 %_cond1_n_cond2_155, %_cond4_154
  %_address_in_parent_stack_bt_158 = bitcast i8* %_pot_address_in_parent_stack_149 to i32*
  %70 = select i1 %_cond1_n_cond2_cond3_156, i32* %_address_in_parent_stack_bt_158, i32* %69
  %_new_load_159 = load i32, i32* %70, align 4
  %71 = add i32 %_new_load_159, 1, !mcsema_real_eip !22
  %72 = xor i32 %71, %_new_load_159, !mcsema_real_eip !22
  %73 = and i32 %72, 16, !mcsema_real_eip !22
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !22
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !22
  %75 = icmp slt i32 %71, 0
  store i1 %75, i1* %SF, align 1, !mcsema_real_eip !22
  %76 = icmp eq i32 %71, 0, !mcsema_real_eip !22
  store i1 %76, i1* %ZF, align 1, !mcsema_real_eip !22
  %77 = xor i32 %_new_load_159, -2147483648, !mcsema_real_eip !22
  %78 = and i32 %72, %77, !mcsema_real_eip !22
  %79 = icmp slt i32 %78, 0
  store i1 %79, i1* %OF, align 1, !mcsema_real_eip !22
  %80 = trunc i32 %71 to i8, !mcsema_real_eip !22
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !22
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  store i1 %83, i1* %PF, align 1, !mcsema_real_eip !22
  %84 = icmp eq i32 %_new_load_159, -1
  store i1 %84, i1* %CF, align 1, !mcsema_real_eip !22
  %85 = zext i32 %71 to i64, !mcsema_real_eip !22
  store i64 %85, i64* %XAX, align 8, !mcsema_real_eip !22
  store i32 %71, i32* %69, align 4, !mcsema_real_eip !23
  br label %block_0x20, !mcsema_real_eip !24

block_0x69:                                       ; preds = %block_0x20
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, align 8, !mcsema_real_eip !25
  store i8 0, i8* %AL.41, align 1, !mcsema_real_eip !26
  %RSI_val.30 = load i64, i64* %XSI, align 8, !mcsema_real_eip !27
  %_new_gep_44 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_43, i64 -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !27
  store volatile i8* %_new_gep_44, i8** %_RSP_ptr_, align 8
  store i64 %41, i64* %XSP, align 8, !mcsema_real_eip !27
  %86 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.30)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_83 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_84 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_83, i64 8
  store i8* %_gep_fix_84, i8** %_RSP_ptr_, align 8
  store i64 %86, i64* %XAX, align 8, !mcsema_real_eip !27
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -16
  %87 = trunc i64 %86 to i32
  %88 = bitcast i8* %_new_gep_47 to i32*
  store i32 %87, i32* %88, align 4, !mcsema_real_eip !28
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49, i64 -4
  %89 = ptrtoint i8* %_new_gep_50 to i64
  %90 = bitcast i8* %_new_gep_50 to i32*
  %_offset_above_rbp_163 = sub i64 %89, %_local_end_to_int_
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  %_address_in_parent_stack_bt_173 = bitcast i8* %_pot_address_in_parent_stack_164 to i32*
  %_address_in_parent_stack_bt_173. = select i1 %_cond1_n_cond2_cond3_171, i32* %_address_in_parent_stack_bt_173, i32* %90
  %_new_load_174 = load i32, i32* %_address_in_parent_stack_bt_173., align 4
  %91 = add i32 %_new_load_174, 1, !mcsema_real_eip !30
  %92 = xor i32 %91, %_new_load_174, !mcsema_real_eip !30
  %93 = and i32 %92, 16, !mcsema_real_eip !30
  %94 = icmp ne i32 %93, 0, !mcsema_real_eip !30
  store i1 %94, i1* %AF, align 1, !mcsema_real_eip !30
  %95 = icmp slt i32 %91, 0
  store i1 %95, i1* %SF, align 1, !mcsema_real_eip !30
  %96 = icmp eq i32 %91, 0, !mcsema_real_eip !30
  store i1 %96, i1* %ZF, align 1, !mcsema_real_eip !30
  %97 = xor i32 %_new_load_174, -2147483648, !mcsema_real_eip !30
  %98 = and i32 %92, %97, !mcsema_real_eip !30
  %99 = icmp slt i32 %98, 0
  store i1 %99, i1* %OF, align 1, !mcsema_real_eip !30
  %100 = trunc i32 %91 to i8, !mcsema_real_eip !30
  %101 = call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !30
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  store i1 %103, i1* %PF, align 1, !mcsema_real_eip !30
  %104 = icmp eq i32 %_new_load_174, -1
  store i1 %104, i1* %CF, align 1, !mcsema_real_eip !30
  %105 = zext i32 %91 to i64, !mcsema_real_eip !30
  store i64 %105, i64* %XAX, align 8, !mcsema_real_eip !30
  store i32 %91, i32* %90, align 4, !mcsema_real_eip !31
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_16.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0xf, !mcsema_real_eip !32

block_0x8b:                                       ; preds = %block_0xf
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, align 8, !mcsema_real_eip !33
  store i8 0, i8* %AL.41, align 1, !mcsema_real_eip !34
  %RSI_val.43 = load i64, i64* %XSI, align 8, !mcsema_real_eip !35
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.44 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 -8
  %106 = add i64 %RSP_val.44, -8
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %106, i64* %XSP, align 8, !mcsema_real_eip !35
  %107 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.43)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_85 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_86 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_85, i64 8
  store i8* %_gep_fix_86, i8** %_RSP_ptr_, align 8
  store i64 %107, i64* %XAX, align 8, !mcsema_real_eip !35
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -20
  %108 = trunc i64 %107 to i32
  %109 = bitcast i8* %_new_gep_59 to i32*
  store i32 %108, i32* %109, align 4, !mcsema_real_eip !36
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.48 = load i64, i64* %XSP, align 8, !mcsema_real_eip !37
  %_new_gep_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 32
  %110 = add i64 %RSP_val.48, 32, !mcsema_real_eip !37
  %_trans_p2i_63 = ptrtoint i8* %_new_gep_62 to i64
  %_trans_p2i_64 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61 to i64
  %_trans_xor_65 = xor i64 %_trans_p2i_63, %_trans_p2i_64
  %111 = and i64 %_trans_xor_65, 16, !mcsema_real_eip !37
  %112 = icmp ne i64 %111, 0, !mcsema_real_eip !37
  store i1 %112, i1* %AF, align 1, !mcsema_real_eip !37
  %113 = icmp slt i64 %110, 0
  store i1 %113, i1* %SF, align 1, !mcsema_real_eip !37
  %_trans_icmp_eq_67 = icmp eq i8* %_new_gep_62, null
  store i1 %_trans_icmp_eq_67, i1* %ZF, align 1, !mcsema_real_eip !37
  %114 = xor i64 %_trans_p2i_64, -9223372036854775808, !mcsema_real_eip !37
  %115 = and i64 %_trans_xor_65, %114, !mcsema_real_eip !37
  %116 = icmp slt i64 %115, 0
  store i1 %116, i1* %OF, align 1, !mcsema_real_eip !37
  %_trans_trunc_74 = trunc i64 %_trans_p2i_63 to i8
  %117 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_74), !mcsema_real_eip !37
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  store i1 %119, i1* %PF, align 1, !mcsema_real_eip !37
  %_trans_icmp_ne_76 = icmp ne i64 %RSP_val.48, %_trans_p2i_63
  store i1 %_trans_icmp_ne_76, i1* %CF, align 1, !mcsema_real_eip !37
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_, align 8
  store i64 %110, i64* %XSP, align 8, !mcsema_real_eip !37
  %_offset_above_rbp_178 = sub i64 %_trans_p2i_63, %_local_end_to_int_
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  %_address_in_parent_stack_bt_188._allin_new_bt_78.v = select i1 %_cond1_n_cond2_cond3_186, i8* %_pot_address_in_parent_stack_179, i8* %_new_gep_62
  %_address_in_parent_stack_bt_188._allin_new_bt_78 = bitcast i8* %_address_in_parent_stack_bt_188._allin_new_bt_78.v to i64*
  %_new_load_189 = load i64, i64* %_address_in_parent_stack_bt_188._allin_new_bt_78, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_189 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_189, i64* %XBP, align 8, !mcsema_real_eip !38
  %_new_gep_79 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 40
  %120 = add i64 %RSP_val.48, 40, !mcsema_real_eip !38
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_, align 8
  store i64 %120, i64* %XSP, align 8, !mcsema_real_eip !38
  %_new_gep_81 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 48
  %121 = add i64 %RSP_val.48, 48, !mcsema_real_eip !39
  %_ptr_to_int_190 = ptrtoint i8* %_new_gep_79 to i64
  %_offset_above_rbp_193 = sub i64 %_ptr_to_int_190, %_local_end_to_int_
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_new_gep_79, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_new_gep_79, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_new_gep_79, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  %.v = select i1 %_cond1_n_cond2_cond3_201, i8* %_pot_address_in_parent_stack_194, i8* %_new_gep_79
  %122 = bitcast i8* %.v to i64*
  %_new_load_204 = load i64, i64* %122, align 8
  store i64 %_new_load_204, i64* %XIP, align 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_81, i8** %_RSP_ptr_, align 8
  store i64 %121, i64* %XSP, align 8, !mcsema_real_eip !39
  ret void, !mcsema_real_eip !39
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_b0.2(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_2 = alloca [128 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 128
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !40
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !40
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !40
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !40
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !40
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !40
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !40
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !40
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !40
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !40
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !40
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !40
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !40
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !40
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !40
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !40
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !40
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !40
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !40
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !40
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !40
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !40
  %RSP_val.52 = load i64, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 120
  %1 = add i64 %RSP_val.52, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !41
  %_new_gep_3 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
  %2 = add i64 %RSP_val.52, -120
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !42
  %EAX.55 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !43
  %3 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 28, i64 28>, <2 x i64>* %3, align 8
  %_new_gep_14 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 56
  %4 = ptrtoint i8* %_new_gep_14 to i64
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !44
  %_new_gep_17 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 116
  %5 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %5, align 4, !mcsema_real_eip !45
  %_new_gep_20 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 112
  %EDI.64 = bitcast i64* %XDI to i32*, !mcsema_real_eip !46
  %EDI_val.65 = load i32, i32* %EDI.64, align 4, !mcsema_real_eip !46
  %6 = bitcast i8* %_new_gep_20 to i32*
  store i32 %EDI_val.65, i32* %6, align 4, !mcsema_real_eip !46
  %_new_gep_23 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 104
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.67 = load i64, i64* %XSI, align 8, !mcsema_real_eip !47
  store i64 %RSI_val.67, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !47
  %_new_gep_26 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 84
  %7 = bitcast i8* %_new_gep_26 to i32*
  store i32 0, i32* %7, align 4, !mcsema_real_eip !48
  %_new_gep_29 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 100
  %8 = bitcast i8* %_new_gep_29 to i32*
  store i32 1, i32* %8, align 4, !mcsema_real_eip !49
  %_new_gep_32 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 96
  %9 = bitcast i8* %_new_gep_32 to i32*
  store i32 1, i32* %9, align 4, !mcsema_real_eip !50
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !51
  store i1 icmp slt (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 0), i1* %SF, align 1, !mcsema_real_eip !51
  store i1 icmp eq (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 0), i1* %ZF, align 1, !mcsema_real_eip !51
  store i1 icmp slt (i64 and (i64 xor (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 ptrtoint (%1* @data_0x3e0 to i64)), i64 xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -9223372036854775797)), i64 0), i1* %OF, align 1, !mcsema_real_eip !51
  %10 = call i8 @llvm.ctpop.i8(i8 trunc (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11) to i8)), !mcsema_real_eip !51
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  store i1 %12, i1* %PF, align 1, !mcsema_real_eip !51
  store i1 icmp ult (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 ptrtoint (%1* @data_0x3e0 to i64)), i1* %CF, align 1, !mcsema_real_eip !51
  store i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64* %R9, align 8, !mcsema_real_eip !51
  %_address_in_parent_stack_bt_278. = bitcast i8* %_new_gep_29 to i32*
  %_new_load_279 = load i32, i32* %_address_in_parent_stack_bt_278., align 4
  %13 = sext i32 %_new_load_279 to i64, !mcsema_real_eip !173
  %14 = add i64 %13, add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), !mcsema_real_eip !52
  %15 = inttoptr i64 %14 to i8*, !mcsema_real_eip !52
  store i8 88, i8* %15, align 1, !mcsema_real_eip !52
  %EAX_val.79 = load i32, i32* %EAX.55, align 4, !mcsema_real_eip !53
  %16 = zext i32 %EAX_val.79 to i64, !mcsema_real_eip !53
  store i64 %16, i64* %XDI, align 8, !mcsema_real_eip !53
  %R8_val.80 = load i64, i64* %R8, align 8, !mcsema_real_eip !54
  store i64 %R8_val.80, i64* %XSI, align 8, !mcsema_real_eip !54
  %RDX_val.83 = load i64, i64* %XDX, align 8, !mcsema_real_eip !55
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.84 = load i64, i64* %XSP, align 8, !mcsema_real_eip !55
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40, i64 -8
  %17 = add i64 %RSP_val.84, -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !55
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_, align 8
  store i64 %17, i64* %XSP, align 8, !mcsema_real_eip !55
  %18 = call x86_64_sysvcc i64 @_read(i64 %16, i64 %R8_val.80, i64 %RDX_val.83)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !55
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -72
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %18, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !56
  %AL.162 = bitcast i64* %XAX to i8*
  br label %block_0x114, !mcsema_real_eip !57

block_0x114:                                      ; preds = %block_0x2c7, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -36
  %19 = ptrtoint i8* %_new_gep_47 to i64
  %_offset_above_rbp_283 = sub i64 %19, %_local_end_to_int_
  %_pot_address_in_parent_stack_284 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_283
  %_cond1_285 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_286 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_287 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_288 = or i1 %_cond2_1_286, %_cond2_2_287
  %_cond4_289 = icmp ule i8* %_pot_address_in_parent_stack_284, %_parent_stack_end_ptr_
  %_cond1_n_cond2_290 = and i1 %_cond1_285, %_cond2_288
  %_cond1_n_cond2_cond3_291 = and i1 %_cond1_n_cond2_290, %_cond4_289
  %_address_in_parent_stack_bt_293..v = select i1 %_cond1_n_cond2_cond3_291, i8* %_pot_address_in_parent_stack_284, i8* %_new_gep_47
  %_address_in_parent_stack_bt_293. = bitcast i8* %_address_in_parent_stack_bt_293..v to i32*
  %_new_load_294 = load i32, i32* %_address_in_parent_stack_bt_293., align 4
  %20 = add i32 %_new_load_294, -28
  %21 = xor i32 %20, %_new_load_294, !mcsema_real_eip !57
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  store i1 %23, i1* %AF, align 1, !mcsema_real_eip !57
  %24 = trunc i32 %20 to i8, !mcsema_real_eip !57
  %25 = call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !57
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !57
  %28 = icmp eq i32 %20, 0, !mcsema_real_eip !57
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !57
  %29 = icmp slt i32 %20, 0
  store i1 %29, i1* %SF, align 1, !mcsema_real_eip !57
  %30 = icmp ult i32 %_new_load_294, 28, !mcsema_real_eip !57
  store i1 %30, i1* %CF, align 1, !mcsema_real_eip !57
  %31 = and i32 %21, %_new_load_294, !mcsema_real_eip !57
  %32 = icmp slt i32 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !57
  %tmp = xor i1 %29, %32
  br i1 %tmp, label %block_0x11e, label %block_0x2f7, !mcsema_real_eip !58

block_0x11e:                                      ; preds = %block_0x114
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -20
  %33 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_298 = sub i64 %33, %_local_end_to_int_
  %_pot_address_in_parent_stack_299 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_298
  %_cond1_300 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_301 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_302 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_303 = or i1 %_cond2_1_301, %_cond2_2_302
  %_cond4_304 = icmp ule i8* %_pot_address_in_parent_stack_299, %_parent_stack_end_ptr_
  %_cond1_n_cond2_305 = and i1 %_cond1_300, %_cond2_303
  %_cond1_n_cond2_cond3_306 = and i1 %_cond1_n_cond2_305, %_cond4_304
  %_address_in_parent_stack_bt_308..v = select i1 %_cond1_n_cond2_cond3_306, i8* %_pot_address_in_parent_stack_299, i8* %_new_gep_50
  %_address_in_parent_stack_bt_308. = bitcast i8* %_address_in_parent_stack_bt_308..v to i32*
  %_new_load_309 = load i32, i32* %_address_in_parent_stack_bt_308., align 4
  %34 = zext i32 %_new_load_309 to i64, !mcsema_real_eip !59
  store i64 %34, i64* %XAX, align 8, !mcsema_real_eip !59
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -28
  %35 = bitcast i8* %_new_gep_53 to i32*
  store i32 %_new_load_309, i32* %35, align 4, !mcsema_real_eip !60
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -24
  %36 = ptrtoint i8* %_new_gep_56 to i64
  %_offset_above_rbp_313 = sub i64 %36, %_local_end_to_int_
  %_pot_address_in_parent_stack_314 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_313
  %_cond1_315 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_316 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_317 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_318 = or i1 %_cond2_1_316, %_cond2_2_317
  %_cond4_319 = icmp ule i8* %_pot_address_in_parent_stack_314, %_parent_stack_end_ptr_
  %_cond1_n_cond2_320 = and i1 %_cond1_315, %_cond2_318
  %_cond1_n_cond2_cond3_321 = and i1 %_cond1_n_cond2_320, %_cond4_319
  %.v3 = select i1 %_cond1_n_cond2_cond3_321, i8* %_pot_address_in_parent_stack_314, i8* %_new_gep_56
  %37 = bitcast i8* %.v3 to i32*
  %_new_load_324 = load i32, i32* %37, align 4
  %38 = zext i32 %_new_load_324 to i64, !mcsema_real_eip !61
  store i64 %38, i64* %XAX, align 8, !mcsema_real_eip !61
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -32
  %39 = bitcast i8* %_new_gep_59 to i32*
  store i32 %_new_load_324, i32* %39, align 4, !mcsema_real_eip !62
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -36
  %40 = ptrtoint i8* %_new_gep_62 to i64
  %_offset_above_rbp_328 = sub i64 %40, %_local_end_to_int_
  %_pot_address_in_parent_stack_329 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_328
  %_cond1_330 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_331 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_332 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_333 = or i1 %_cond2_1_331, %_cond2_2_332
  %_cond4_334 = icmp ule i8* %_pot_address_in_parent_stack_329, %_parent_stack_end_ptr_
  %_cond1_n_cond2_335 = and i1 %_cond1_330, %_cond2_333
  %_cond1_n_cond2_cond3_336 = and i1 %_cond1_n_cond2_335, %_cond4_334
  %_address_in_parent_stack_bt_338..v = select i1 %_cond1_n_cond2_cond3_336, i8* %_pot_address_in_parent_stack_329, i8* %_new_gep_62
  %_address_in_parent_stack_bt_338. = bitcast i8* %_address_in_parent_stack_bt_338..v to i32*
  %_new_load_339 = load i32, i32* %_address_in_parent_stack_bt_338., align 4
  %41 = sext i32 %_new_load_339 to i64, !mcsema_real_eip !63
  store i64 %41, i64* %XCX, align 8, !mcsema_real_eip !63
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -64
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_65, i64 %41
  %42 = ptrtoint i8* %_new_gep_66 to i64
  %_offset_above_rbp_342 = sub i64 %42, %_local_end_to_int_
  %_pot_address_in_parent_stack_343 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_342
  %_cond1_344 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_345 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_346 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_347 = or i1 %_cond2_1_345, %_cond2_2_346
  %_cond4_348 = icmp ule i8* %_pot_address_in_parent_stack_343, %_parent_stack_end_ptr_
  %_cond1_n_cond2_349 = and i1 %_cond1_344, %_cond2_347
  %_cond1_n_cond2_cond3_350 = and i1 %_cond1_n_cond2_349, %_cond4_348
  %43 = select i1 %_cond1_n_cond2_cond3_350, i8* %_pot_address_in_parent_stack_343, i8* %_new_gep_66
  %_new_load_352 = load i8, i8* %43, align 1
  %44 = sext i8 %_new_load_352 to i32
  %45 = add nsw i32 %44, -97, !mcsema_real_eip !65
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %XCX, align 8, !mcsema_real_eip !66
  %47 = add nsw i32 %44, -119
  %48 = xor i32 %47, %45, !mcsema_real_eip !67
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  store i1 %50, i1* %AF, align 1, !mcsema_real_eip !67
  %51 = trunc i32 %47 to i8, !mcsema_real_eip !67
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !67
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  store i1 %54, i1* %PF, align 1, !mcsema_real_eip !67
  %55 = icmp eq i32 %47, 0, !mcsema_real_eip !67
  store i1 %55, i1* %ZF, align 1, !mcsema_real_eip !67
  %56 = icmp slt i8 %_new_load_352, 119
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !67
  %57 = icmp ult i32 %45, 22, !mcsema_real_eip !67
  store i1 %57, i1* %CF, align 1, !mcsema_real_eip !67
  %58 = and i32 %48, %45, !mcsema_real_eip !67
  %59 = icmp slt i32 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !67
  %60 = zext i32 %47 to i64, !mcsema_real_eip !67
  store i64 %60, i64* %XAX, align 8, !mcsema_real_eip !67
  %_new_gep_69 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -80
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %46, i64* %_allin_new_bt_70, align 8, !mcsema_real_eip !68
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -84
  %EAX_val.109 = load i32, i32* %EAX.55, align 4, !mcsema_real_eip !69
  %61 = bitcast i8* %_new_gep_72 to i32*
  store i32 %EAX_val.109, i32* %61, align 4, !mcsema_real_eip !69
  %62 = load i1, i1* %ZF, align 1, !mcsema_real_eip !70
  %63 = load i1, i1* %CF, align 1, !mcsema_real_eip !70
  %.demorgan = or i1 %62, %63
  br i1 %.demorgan, label %block_0x148, label %block_0x18e, !mcsema_real_eip !70

block_0x148:                                      ; preds = %block_0x11e
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -80
  %_ptr_to_int_353 = ptrtoint i8* %_new_gep_75 to i64
  %_offset_above_rbp_356 = sub i64 %_ptr_to_int_353, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_new_gep_75, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_new_gep_75, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_new_gep_75, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond1_n_cond2_363, %_cond4_362
  %_address_in_parent_stack_bt_366._allin_new_bt_76.v = select i1 %_cond1_n_cond2_cond3_364, i8* %_pot_address_in_parent_stack_357, i8* %_new_gep_75
  %_address_in_parent_stack_bt_366._allin_new_bt_76 = bitcast i8* %_address_in_parent_stack_bt_366._allin_new_bt_76.v to i64*
  %_new_load_367 = load i64, i64* %_address_in_parent_stack_bt_366._allin_new_bt_76, align 8
  store i64 %_new_load_367, i64* %XAX, align 8, !mcsema_real_eip !71
  %64 = shl i64 %_new_load_367, 3
  %65 = add i64 %64, ptrtoint (%0* @data_0x320 to i64), !mcsema_real_eip !72
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !72
  %_ptr_bt_370 = inttoptr i64 %65 to i8*
  %_offset_above_rbp_371 = sub i64 %65, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_370
  %_cond2_1_374 = icmp ugt i8* %_ptr_bt_370, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_ptr_bt_370, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond4_377, %_cond1_n_cond2_378
  %_address_in_parent_stack_bt_381 = bitcast i8* %_pot_address_in_parent_stack_372 to i64*
  %67 = select i1 %_cond1_n_cond2_cond3_379, i64* %_address_in_parent_stack_bt_381, i64* %66
  %_new_load_382 = load i64, i64* %67, align 8
  store i64 %_new_load_382, i64* %XCX, align 8, !mcsema_real_eip !72
  switch i64 %_new_load_382, label %408 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !73

block_0x156:                                      ; preds = %block_0x148
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -24
  %68 = ptrtoint i8* %_new_gep_78 to i64
  %69 = bitcast i8* %_new_gep_78 to i32*
  %_offset_above_rbp_386 = sub i64 %68, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond1_n_cond2_393, %_cond4_392
  %_address_in_parent_stack_bt_396 = bitcast i8* %_pot_address_in_parent_stack_387 to i32*
  %_address_in_parent_stack_bt_396. = select i1 %_cond1_n_cond2_cond3_394, i32* %_address_in_parent_stack_bt_396, i32* %69
  %_new_load_397 = load i32, i32* %_address_in_parent_stack_bt_396., align 4
  %70 = add i32 %_new_load_397, -1, !mcsema_real_eip !75
  %71 = xor i32 %70, %_new_load_397, !mcsema_real_eip !75
  %72 = and i32 %71, 16
  %73 = icmp eq i32 %72, 0
  store i1 %73, i1* %AF, align 1, !mcsema_real_eip !75
  %74 = icmp slt i32 %70, 0
  store i1 %74, i1* %SF, align 1, !mcsema_real_eip !75
  %75 = icmp eq i32 %70, 0, !mcsema_real_eip !75
  store i1 %75, i1* %ZF, align 1, !mcsema_real_eip !75
  %76 = and i32 %71, %_new_load_397, !mcsema_real_eip !75
  %77 = icmp slt i32 %76, 0
  store i1 %77, i1* %OF, align 1, !mcsema_real_eip !75
  %78 = trunc i32 %70 to i8, !mcsema_real_eip !75
  %79 = call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !75
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !75
  %82 = icmp ne i32 %_new_load_397, 0
  store i1 %82, i1* %CF, align 1, !mcsema_real_eip !75
  %83 = zext i32 %70 to i64, !mcsema_real_eip !75
  store i64 %83, i64* %XAX, align 8, !mcsema_real_eip !75
  store i32 %70, i32* %69, align 4, !mcsema_real_eip !76
  br label %block_0x1c0, !mcsema_real_eip !77

block_0x164:                                      ; preds = %block_0x148
  %_new_gep_84 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -24
  %84 = ptrtoint i8* %_new_gep_84 to i64
  %85 = bitcast i8* %_new_gep_84 to i32*
  %_offset_above_rbp_401 = sub i64 %84, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  %_address_in_parent_stack_bt_411 = bitcast i8* %_pot_address_in_parent_stack_402 to i32*
  %_address_in_parent_stack_bt_411. = select i1 %_cond1_n_cond2_cond3_409, i32* %_address_in_parent_stack_bt_411, i32* %85
  %_new_load_412 = load i32, i32* %_address_in_parent_stack_bt_411., align 4
  %86 = add i32 %_new_load_412, 1, !mcsema_real_eip !79
  %87 = xor i32 %86, %_new_load_412, !mcsema_real_eip !79
  %88 = and i32 %87, 16, !mcsema_real_eip !79
  %89 = icmp ne i32 %88, 0, !mcsema_real_eip !79
  store i1 %89, i1* %AF, align 1, !mcsema_real_eip !79
  %90 = icmp slt i32 %86, 0
  store i1 %90, i1* %SF, align 1, !mcsema_real_eip !79
  %91 = icmp eq i32 %86, 0, !mcsema_real_eip !79
  store i1 %91, i1* %ZF, align 1, !mcsema_real_eip !79
  %92 = xor i32 %_new_load_412, -2147483648, !mcsema_real_eip !79
  %93 = and i32 %87, %92, !mcsema_real_eip !79
  %94 = icmp slt i32 %93, 0
  store i1 %94, i1* %OF, align 1, !mcsema_real_eip !79
  %95 = trunc i32 %86 to i8, !mcsema_real_eip !79
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !79
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  store i1 %98, i1* %PF, align 1, !mcsema_real_eip !79
  %99 = icmp eq i32 %_new_load_412, -1
  store i1 %99, i1* %CF, align 1, !mcsema_real_eip !79
  %100 = zext i32 %86 to i64, !mcsema_real_eip !79
  store i64 %100, i64* %XAX, align 8, !mcsema_real_eip !79
  store i32 %86, i32* %85, align 4, !mcsema_real_eip !80
  br label %block_0x1c0, !mcsema_real_eip !81

block_0x172:                                      ; preds = %block_0x148
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -20
  %101 = ptrtoint i8* %_new_gep_90 to i64
  %102 = bitcast i8* %_new_gep_90 to i32*
  %_offset_above_rbp_416 = sub i64 %101, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_new_gep_90, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_new_gep_90, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_new_gep_90, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  %_address_in_parent_stack_bt_426 = bitcast i8* %_pot_address_in_parent_stack_417 to i32*
  %_address_in_parent_stack_bt_426. = select i1 %_cond1_n_cond2_cond3_424, i32* %_address_in_parent_stack_bt_426, i32* %102
  %_new_load_427 = load i32, i32* %_address_in_parent_stack_bt_426., align 4
  %103 = add i32 %_new_load_427, -1, !mcsema_real_eip !83
  %104 = xor i32 %103, %_new_load_427, !mcsema_real_eip !83
  %105 = and i32 %104, 16
  %106 = icmp eq i32 %105, 0
  store i1 %106, i1* %AF, align 1, !mcsema_real_eip !83
  %107 = icmp slt i32 %103, 0
  store i1 %107, i1* %SF, align 1, !mcsema_real_eip !83
  %108 = icmp eq i32 %103, 0, !mcsema_real_eip !83
  store i1 %108, i1* %ZF, align 1, !mcsema_real_eip !83
  %109 = and i32 %104, %_new_load_427, !mcsema_real_eip !83
  %110 = icmp slt i32 %109, 0
  store i1 %110, i1* %OF, align 1, !mcsema_real_eip !83
  %111 = trunc i32 %103 to i8, !mcsema_real_eip !83
  %112 = call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !83
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  store i1 %114, i1* %PF, align 1, !mcsema_real_eip !83
  %115 = icmp ne i32 %_new_load_427, 0
  store i1 %115, i1* %CF, align 1, !mcsema_real_eip !83
  %116 = zext i32 %103 to i64, !mcsema_real_eip !83
  store i64 %116, i64* %XAX, align 8, !mcsema_real_eip !83
  store i32 %103, i32* %102, align 4, !mcsema_real_eip !84
  br label %block_0x1c0, !mcsema_real_eip !85

block_0x180:                                      ; preds = %block_0x148
  %_new_gep_96 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -20
  %117 = ptrtoint i8* %_new_gep_96 to i64
  %118 = bitcast i8* %_new_gep_96 to i32*
  %_offset_above_rbp_431 = sub i64 %117, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_new_gep_96, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_new_gep_96, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_new_gep_96, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  %_address_in_parent_stack_bt_441 = bitcast i8* %_pot_address_in_parent_stack_432 to i32*
  %_address_in_parent_stack_bt_441. = select i1 %_cond1_n_cond2_cond3_439, i32* %_address_in_parent_stack_bt_441, i32* %118
  %_new_load_442 = load i32, i32* %_address_in_parent_stack_bt_441., align 4
  %119 = add i32 %_new_load_442, 1, !mcsema_real_eip !87
  %120 = xor i32 %119, %_new_load_442, !mcsema_real_eip !87
  %121 = and i32 %120, 16, !mcsema_real_eip !87
  %122 = icmp ne i32 %121, 0, !mcsema_real_eip !87
  store i1 %122, i1* %AF, align 1, !mcsema_real_eip !87
  %123 = icmp slt i32 %119, 0
  store i1 %123, i1* %SF, align 1, !mcsema_real_eip !87
  %124 = icmp eq i32 %119, 0, !mcsema_real_eip !87
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !87
  %125 = xor i32 %_new_load_442, -2147483648, !mcsema_real_eip !87
  %126 = and i32 %120, %125, !mcsema_real_eip !87
  %127 = icmp slt i32 %126, 0
  store i1 %127, i1* %OF, align 1, !mcsema_real_eip !87
  %128 = trunc i32 %119 to i8, !mcsema_real_eip !87
  %129 = call i8 @llvm.ctpop.i8(i8 %128), !mcsema_real_eip !87
  %130 = and i8 %129, 1
  %131 = icmp eq i8 %130, 0
  store i1 %131, i1* %PF, align 1, !mcsema_real_eip !87
  %132 = icmp eq i32 %_new_load_442, -1
  store i1 %132, i1* %CF, align 1, !mcsema_real_eip !87
  %133 = zext i32 %119 to i64, !mcsema_real_eip !87
  store i64 %133, i64* %XAX, align 8, !mcsema_real_eip !87
  store i32 %119, i32* %118, align 4, !mcsema_real_eip !88
  br label %block_0x1c0, !mcsema_real_eip !89

block_0x18e:                                      ; preds = %block_0x11e, %block_0x148
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, align 8, !mcsema_real_eip !90
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !91
  %RSI_val.139 = load i64, i64* %XSI, align 8, !mcsema_real_eip !92
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_101 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.140 = load i64, i64* %XSP, align 8, !mcsema_real_eip !92
  %_new_gep_102 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_101, i64 -8
  %134 = add i64 %RSP_val.140, -8
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_103, align 8, !mcsema_real_eip !92
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_, align 8
  store i64 %134, i64* %XSP, align 8, !mcsema_real_eip !92
  %135 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64 %RSI_val.139)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_243 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_244 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_243, i64 8
  store i8* %_gep_fix_244, i8** %_RSP_ptr_, align 8
  store i64 %135, i64* %XAX, align 8, !mcsema_real_eip !92
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, align 8, !mcsema_real_eip !93
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_105 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104, i64 -88
  %136 = trunc i64 %135 to i32
  %137 = bitcast i8* %_new_gep_105 to i32*
  store i32 %136, i32* %137, align 4, !mcsema_real_eip !94
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !95
  %RDI_val.145 = load i64, i64* %XDI, align 8, !mcsema_real_eip !96
  %RSI_val.146 = load i64, i64* %XSI, align 8, !mcsema_real_eip !96
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_107 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.147 = load i64, i64* %XSP, align 8, !mcsema_real_eip !96
  %_new_gep_108 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_107, i64 -8
  %138 = add i64 %RSP_val.147, -8
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_109, align 8, !mcsema_real_eip !96
  store volatile i8* %_new_gep_108, i8** %_RSP_ptr_, align 8
  store i64 %138, i64* %XSP, align 8, !mcsema_real_eip !96
  %139 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.145, i64 %RSI_val.146)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_245 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_246 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_245, i64 8
  store i8* %_gep_fix_246, i8** %_RSP_ptr_, align 8
  store i64 %139, i64* %XAX, align 8, !mcsema_real_eip !96
  store i64 4294967295, i64* %XDI, align 8, !mcsema_real_eip !97
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_111 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_110, i64 -92
  %140 = trunc i64 %139 to i32
  %141 = bitcast i8* %_new_gep_111 to i32*
  store i32 %140, i32* %141, align 4, !mcsema_real_eip !98
  %RDI_val.151 = load i64, i64* %XDI, align 8, !mcsema_real_eip !99
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_113 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.152 = load i64, i64* %XSP, align 8, !mcsema_real_eip !99
  %_new_gep_114 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_113, i64 -8
  %142 = add i64 %RSP_val.152, -8
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_115, align 8, !mcsema_real_eip !99
  store volatile i8* %_new_gep_114, i8** %_RSP_ptr_, align 8
  store i64 %142, i64* %XSP, align 8, !mcsema_real_eip !99
  %143 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_247 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_248 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_247, i64 8
  store i8* %_gep_fix_248, i8** %_RSP_ptr_, align 8
  store i64 %143, i64* %XAX, align 8, !mcsema_real_eip !99
  br label %block_0x1c0, !mcsema_real_eip !100

block_0x1c0:                                      ; preds = %block_0x18e, %block_0x180, %block_0x172, %block_0x164, %block_0x156
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !100
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_117 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_116, i64 -24
  %144 = ptrtoint i8* %_new_gep_117 to i64
  %_offset_above_rbp_446 = sub i64 %144, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_new_gep_117, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_new_gep_117, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_new_gep_117, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond1_n_cond2_453, %_cond4_452
  %_address_in_parent_stack_bt_456..v = select i1 %_cond1_n_cond2_cond3_454, i8* %_pot_address_in_parent_stack_447, i8* %_new_gep_117
  %_address_in_parent_stack_bt_456. = bitcast i8* %_address_in_parent_stack_bt_456..v to i32*
  %_new_load_457 = load i32, i32* %_address_in_parent_stack_bt_456., align 4
  %145 = sext i32 %_new_load_457 to i64
  %146 = mul nsw i64 %145, 11
  store i64 %146, i64* %XCX, align 8, !mcsema_real_eip !102
  %147 = add i64 %146, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !103
  %148 = xor i64 %147, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !103
  %149 = xor i64 %147, %146, !mcsema_real_eip !103
  %150 = and i64 %149, 16, !mcsema_real_eip !103
  %151 = icmp ne i64 %150, 0, !mcsema_real_eip !103
  store i1 %151, i1* %AF, align 1, !mcsema_real_eip !103
  %152 = icmp slt i64 %147, 0
  store i1 %152, i1* %SF, align 1, !mcsema_real_eip !103
  %153 = icmp eq i64 %147, 0, !mcsema_real_eip !103
  store i1 %153, i1* %ZF, align 1, !mcsema_real_eip !103
  %154 = xor i64 %146, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !103
  %155 = and i64 %148, %154, !mcsema_real_eip !103
  %156 = icmp slt i64 %155, 0
  store i1 %156, i1* %OF, align 1, !mcsema_real_eip !103
  %157 = trunc i64 %147 to i8, !mcsema_real_eip !103
  %158 = call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !103
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  store i1 %160, i1* %PF, align 1, !mcsema_real_eip !103
  %161 = icmp ult i64 %147, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !103
  store i1 %161, i1* %CF, align 1, !mcsema_real_eip !103
  store i64 %147, i64* %XAX, align 8, !mcsema_real_eip !103
  %_new_gep_120 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_116, i64 -20
  %162 = ptrtoint i8* %_new_gep_120 to i64
  %_offset_above_rbp_461 = sub i64 %162, %_local_end_to_int_
  %_pot_address_in_parent_stack_462 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_461
  %_cond1_463 = icmp ugt i8* %_new_gep_120, %_local_stack_end_ptr_
  %_cond2_1_464 = icmp ugt i8* %_new_gep_120, %_parent_stack_end_ptr_
  %_cond2_2_465 = icmp ult i8* %_new_gep_120, %_parent_stack_start_ptr_
  %_cond2_466 = or i1 %_cond2_1_464, %_cond2_2_465
  %_cond4_467 = icmp ule i8* %_pot_address_in_parent_stack_462, %_parent_stack_end_ptr_
  %_cond1_n_cond2_468 = and i1 %_cond1_463, %_cond2_466
  %_cond1_n_cond2_cond3_469 = and i1 %_cond1_n_cond2_468, %_cond4_467
  %.v6 = select i1 %_cond1_n_cond2_cond3_469, i8* %_pot_address_in_parent_stack_462, i8* %_new_gep_120
  %163 = bitcast i8* %.v6 to i32*
  %_new_load_472 = load i32, i32* %163, align 4
  %164 = sext i32 %_new_load_472 to i64, !mcsema_real_eip !104
  store i64 %164, i64* %XCX, align 8, !mcsema_real_eip !104
  %165 = add i64 %147, %164, !mcsema_real_eip !105
  %166 = inttoptr i64 %165 to i8*, !mcsema_real_eip !105
  %_offset_above_rbp_475 = sub i64 %165, %_local_end_to_int_
  %_pot_address_in_parent_stack_476 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_475
  %_cond1_477 = icmp ult i8* %_local_stack_end_ptr_, %166
  %_cond2_1_478 = icmp ugt i8* %166, %_parent_stack_end_ptr_
  %_cond2_2_479 = icmp ult i8* %166, %_parent_stack_start_ptr_
  %_cond2_480 = or i1 %_cond2_1_478, %_cond2_2_479
  %_cond4_481 = icmp ule i8* %_pot_address_in_parent_stack_476, %_parent_stack_end_ptr_
  %_cond1_n_cond2_482 = and i1 %_cond1_477, %_cond2_480
  %_cond1_n_cond2_cond3_483 = and i1 %_cond4_481, %_cond1_n_cond2_482
  %_pot_address_in_parent_stack_476. = select i1 %_cond1_n_cond2_cond3_483, i8* %_pot_address_in_parent_stack_476, i8* %166
  %_new_load_485 = load i8, i8* %_pot_address_in_parent_stack_476., align 1
  %167 = sext i8 %_new_load_485 to i64
  %168 = and i64 %167, 4294967295
  store i64 %168, i64* %XDX, align 8, !mcsema_real_eip !105
  %169 = sext i8 %_new_load_485 to i32
  %170 = add nsw i32 %169, -35
  %171 = xor i32 %170, %169, !mcsema_real_eip !106
  %172 = and i32 %171, 16, !mcsema_real_eip !106
  %173 = icmp ne i32 %172, 0, !mcsema_real_eip !106
  store i1 %173, i1* %AF, align 1, !mcsema_real_eip !106
  %174 = trunc i32 %170 to i8, !mcsema_real_eip !106
  %175 = call i8 @llvm.ctpop.i8(i8 %174), !mcsema_real_eip !106
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  store i1 %177, i1* %PF, align 1, !mcsema_real_eip !106
  %178 = icmp eq i32 %170, 0, !mcsema_real_eip !106
  store i1 %178, i1* %ZF, align 1, !mcsema_real_eip !106
  %179 = icmp slt i8 %_new_load_485, 35
  store i1 %179, i1* %SF, align 1, !mcsema_real_eip !106
  %180 = icmp ult i8 %_new_load_485, 35
  store i1 %180, i1* %CF, align 1, !mcsema_real_eip !106
  %181 = and i32 %171, %169, !mcsema_real_eip !106
  %182 = icmp slt i32 %181, 0
  store i1 %182, i1* %OF, align 1, !mcsema_real_eip !106
  br i1 %178, label %block_0x1e6, label %block_0x219, !mcsema_real_eip !107

block_0x1e6:                                      ; preds = %block_0x1c0
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, align 8, !mcsema_real_eip !108
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !109
  %RSI_val.164 = load i64, i64* %XSI, align 8, !mcsema_real_eip !110
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_122 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.165 = load i64, i64* %XSP, align 8, !mcsema_real_eip !110
  %_new_gep_123 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_122, i64 -8
  %183 = add i64 %RSP_val.165, -8
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_124, align 8, !mcsema_real_eip !110
  store volatile i8* %_new_gep_123, i8** %_RSP_ptr_, align 8
  store i64 %183, i64* %XSP, align 8, !mcsema_real_eip !110
  %184 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64 %RSI_val.164)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_249 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_250 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_249, i64 8
  store i8* %_gep_fix_250, i8** %_RSP_ptr_, align 8
  store i64 %184, i64* %XAX, align 8, !mcsema_real_eip !110
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, align 8, !mcsema_real_eip !111
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_125 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_126 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_125, i64 -64
  %185 = ptrtoint i8* %_new_gep_126 to i64
  store i64 %185, i64* %XSI, align 8, !mcsema_real_eip !112
  %_new_gep_129 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_125, i64 -96
  %186 = trunc i64 %184 to i32
  %187 = bitcast i8* %_new_gep_129 to i32*
  store i32 %186, i32* %187, align 4, !mcsema_real_eip !113
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !114
  %RDI_val.171 = load i64, i64* %XDI, align 8, !mcsema_real_eip !115
  %RSI_val.172 = load i64, i64* %XSI, align 8, !mcsema_real_eip !115
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_131 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.173 = load i64, i64* %XSP, align 8, !mcsema_real_eip !115
  %_new_gep_132 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_131, i64 -8
  %188 = add i64 %RSP_val.173, -8
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_133, align 8, !mcsema_real_eip !115
  store volatile i8* %_new_gep_132, i8** %_RSP_ptr_, align 8
  store i64 %188, i64* %XSP, align 8, !mcsema_real_eip !115
  %189 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.171, i64 %RSI_val.172)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_251 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_252 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_251, i64 8
  store i8* %_gep_fix_252, i8** %_RSP_ptr_, align 8
  store i64 %189, i64* %XAX, align 8, !mcsema_real_eip !115
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !116
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !116
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !116
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !116
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !116
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !116
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_135 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -100
  %190 = trunc i64 %189 to i32
  %191 = bitcast i8* %_new_gep_135 to i32*
  store i32 %190, i32* %191, align 4, !mcsema_real_eip !117
  %RDI_val.181 = load i64, i64* %XDI, align 8, !mcsema_real_eip !118
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.182 = load i64, i64* %XSP, align 8, !mcsema_real_eip !118
  %_new_gep_138 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_137, i64 -8
  %192 = add i64 %RSP_val.182, -8
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_139, align 8, !mcsema_real_eip !118
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_, align 8
  store i64 %192, i64* %XSP, align 8, !mcsema_real_eip !118
  %193 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.181)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_253 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_254 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_253, i64 8
  store i8* %_gep_fix_254, i8** %_RSP_ptr_, align 8
  store i64 %193, i64* %XAX, align 8, !mcsema_real_eip !118
  br label %block_0x219, !mcsema_real_eip !119

block_0x219:                                      ; preds = %block_0x1c0, %block_0x1e6
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !119
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_141 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_140, i64 -24
  %194 = ptrtoint i8* %_new_gep_141 to i64
  %_offset_above_rbp_489 = sub i64 %194, %_local_end_to_int_
  %_pot_address_in_parent_stack_490 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_489
  %_cond1_491 = icmp ugt i8* %_new_gep_141, %_local_stack_end_ptr_
  %_cond2_1_492 = icmp ugt i8* %_new_gep_141, %_parent_stack_end_ptr_
  %_cond2_2_493 = icmp ult i8* %_new_gep_141, %_parent_stack_start_ptr_
  %_cond2_494 = or i1 %_cond2_1_492, %_cond2_2_493
  %_cond4_495 = icmp ule i8* %_pot_address_in_parent_stack_490, %_parent_stack_end_ptr_
  %_cond1_n_cond2_496 = and i1 %_cond1_491, %_cond2_494
  %_cond1_n_cond2_cond3_497 = and i1 %_cond1_n_cond2_496, %_cond4_495
  %_address_in_parent_stack_bt_499..v = select i1 %_cond1_n_cond2_cond3_497, i8* %_pot_address_in_parent_stack_490, i8* %_new_gep_141
  %_address_in_parent_stack_bt_499. = bitcast i8* %_address_in_parent_stack_bt_499..v to i32*
  %_new_load_500 = load i32, i32* %_address_in_parent_stack_bt_499., align 4
  %195 = sext i32 %_new_load_500 to i64
  %196 = mul nsw i64 %195, 11
  store i64 %196, i64* %XCX, align 8, !mcsema_real_eip !121
  %197 = add i64 %196, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !122
  %198 = xor i64 %197, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !122
  %199 = xor i64 %197, %196, !mcsema_real_eip !122
  %200 = and i64 %199, 16, !mcsema_real_eip !122
  %201 = icmp ne i64 %200, 0, !mcsema_real_eip !122
  store i1 %201, i1* %AF, align 1, !mcsema_real_eip !122
  %202 = icmp slt i64 %197, 0
  store i1 %202, i1* %SF, align 1, !mcsema_real_eip !122
  %203 = icmp eq i64 %197, 0, !mcsema_real_eip !122
  store i1 %203, i1* %ZF, align 1, !mcsema_real_eip !122
  %204 = xor i64 %196, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !122
  %205 = and i64 %198, %204, !mcsema_real_eip !122
  %206 = icmp slt i64 %205, 0
  store i1 %206, i1* %OF, align 1, !mcsema_real_eip !122
  %207 = trunc i64 %197 to i8, !mcsema_real_eip !122
  %208 = call i8 @llvm.ctpop.i8(i8 %207), !mcsema_real_eip !122
  %209 = and i8 %208, 1
  %210 = icmp eq i8 %209, 0
  store i1 %210, i1* %PF, align 1, !mcsema_real_eip !122
  %211 = icmp ult i64 %197, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !122
  store i1 %211, i1* %CF, align 1, !mcsema_real_eip !122
  store i64 %197, i64* %XAX, align 8, !mcsema_real_eip !122
  %_new_gep_144 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_140, i64 -20
  %212 = ptrtoint i8* %_new_gep_144 to i64
  %213 = bitcast i8* %_new_gep_144 to i32*
  %_offset_above_rbp_504 = sub i64 %212, %_local_end_to_int_
  %_pot_address_in_parent_stack_505 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_504
  %_cond1_506 = icmp ugt i8* %_new_gep_144, %_local_stack_end_ptr_
  %_cond2_1_507 = icmp ugt i8* %_new_gep_144, %_parent_stack_end_ptr_
  %_cond2_2_508 = icmp ult i8* %_new_gep_144, %_parent_stack_start_ptr_
  %_cond2_509 = or i1 %_cond2_1_507, %_cond2_2_508
  %_cond4_510 = icmp ule i8* %_pot_address_in_parent_stack_505, %_parent_stack_end_ptr_
  %_cond1_n_cond2_511 = and i1 %_cond1_506, %_cond2_509
  %_cond1_n_cond2_cond3_512 = and i1 %_cond1_n_cond2_511, %_cond4_510
  %_address_in_parent_stack_bt_514 = bitcast i8* %_pot_address_in_parent_stack_505 to i32*
  %214 = select i1 %_cond1_n_cond2_cond3_512, i32* %_address_in_parent_stack_bt_514, i32* %213
  %_new_load_515 = load i32, i32* %214, align 4
  %215 = sext i32 %_new_load_515 to i64, !mcsema_real_eip !123
  store i64 %215, i64* %XCX, align 8, !mcsema_real_eip !123
  %216 = add i64 %197, %215, !mcsema_real_eip !124
  %217 = inttoptr i64 %216 to i8*, !mcsema_real_eip !124
  %_offset_above_rbp_518 = sub i64 %216, %_local_end_to_int_
  %_pot_address_in_parent_stack_519 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_518
  %_cond1_520 = icmp ult i8* %_local_stack_end_ptr_, %217
  %_cond2_1_521 = icmp ugt i8* %217, %_parent_stack_end_ptr_
  %_cond2_2_522 = icmp ult i8* %217, %_parent_stack_start_ptr_
  %_cond2_523 = or i1 %_cond2_1_521, %_cond2_2_522
  %_cond4_524 = icmp ule i8* %_pot_address_in_parent_stack_519, %_parent_stack_end_ptr_
  %_cond1_n_cond2_525 = and i1 %_cond1_520, %_cond2_523
  %_cond1_n_cond2_cond3_526 = and i1 %_cond4_524, %_cond1_n_cond2_525
  %_pot_address_in_parent_stack_519. = select i1 %_cond1_n_cond2_cond3_526, i8* %_pot_address_in_parent_stack_519, i8* %217
  %_new_load_528 = load i8, i8* %_pot_address_in_parent_stack_519., align 1
  %218 = sext i8 %_new_load_528 to i64
  %219 = and i64 %218, 4294967295
  store i64 %219, i64* %XDX, align 8, !mcsema_real_eip !124
  %220 = sext i8 %_new_load_528 to i32
  %221 = add nsw i32 %220, -32
  %222 = xor i32 %221, %220, !mcsema_real_eip !125
  %223 = and i32 %222, 16, !mcsema_real_eip !125
  %224 = icmp ne i32 %223, 0, !mcsema_real_eip !125
  store i1 %224, i1* %AF, align 1, !mcsema_real_eip !125
  %225 = trunc i32 %221 to i8, !mcsema_real_eip !125
  %226 = call i8 @llvm.ctpop.i8(i8 %225), !mcsema_real_eip !125
  %227 = and i8 %226, 1
  %228 = icmp eq i8 %227, 0
  store i1 %228, i1* %PF, align 1, !mcsema_real_eip !125
  %229 = icmp eq i32 %221, 0, !mcsema_real_eip !125
  store i1 %229, i1* %ZF, align 1, !mcsema_real_eip !125
  %230 = icmp slt i8 %_new_load_528, 32
  store i1 %230, i1* %SF, align 1, !mcsema_real_eip !125
  %231 = icmp ult i8 %_new_load_528, 32
  store i1 %231, i1* %CF, align 1, !mcsema_real_eip !125
  %232 = and i32 %222, %220, !mcsema_real_eip !125
  %233 = icmp slt i32 %232, 0
  store i1 %233, i1* %OF, align 1, !mcsema_real_eip !125
  br i1 %229, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !126

block_0x23f:                                      ; preds = %block_0x219
  %_new_load_543 = load i32, i32* %_address_in_parent_stack_bt_499., align 4
  %234 = add i32 %_new_load_543, -2
  %235 = xor i32 %234, %_new_load_543, !mcsema_real_eip !127
  %236 = and i32 %235, 16, !mcsema_real_eip !127
  %237 = icmp ne i32 %236, 0, !mcsema_real_eip !127
  store i1 %237, i1* %AF, align 1, !mcsema_real_eip !127
  %238 = trunc i32 %234 to i8, !mcsema_real_eip !127
  %239 = call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !127
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  store i1 %241, i1* %PF, align 1, !mcsema_real_eip !127
  %242 = icmp eq i32 %234, 0, !mcsema_real_eip !127
  store i1 %242, i1* %ZF, align 1, !mcsema_real_eip !127
  %243 = icmp slt i32 %234, 0
  store i1 %243, i1* %SF, align 1, !mcsema_real_eip !127
  %244 = icmp ult i32 %_new_load_543, 2, !mcsema_real_eip !127
  store i1 %244, i1* %CF, align 1, !mcsema_real_eip !127
  %245 = and i32 %235, %_new_load_543, !mcsema_real_eip !127
  %246 = icmp slt i32 %245, 0
  store i1 %246, i1* %OF, align 1, !mcsema_real_eip !127
  br i1 %242, label %block_0x249, label %block_0x283, !mcsema_real_eip !128

block_0x249:                                      ; preds = %block_0x23f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !129
  %_new_load_558 = load i32, i32* %_address_in_parent_stack_bt_499., align 4
  %247 = sext i32 %_new_load_558 to i64
  %248 = mul nsw i64 %247, 11
  store i64 %248, i64* %XCX, align 8, !mcsema_real_eip !131
  %249 = add i64 %248, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !132
  %250 = xor i64 %249, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !132
  %251 = xor i64 %249, %248, !mcsema_real_eip !132
  %252 = and i64 %251, 16, !mcsema_real_eip !132
  %253 = icmp ne i64 %252, 0, !mcsema_real_eip !132
  store i1 %253, i1* %AF, align 1, !mcsema_real_eip !132
  %254 = icmp slt i64 %249, 0
  store i1 %254, i1* %SF, align 1, !mcsema_real_eip !132
  %255 = icmp eq i64 %249, 0, !mcsema_real_eip !132
  store i1 %255, i1* %ZF, align 1, !mcsema_real_eip !132
  %256 = xor i64 %248, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !132
  %257 = and i64 %250, %256, !mcsema_real_eip !132
  %258 = icmp slt i64 %257, 0
  store i1 %258, i1* %OF, align 1, !mcsema_real_eip !132
  %259 = trunc i64 %249 to i8, !mcsema_real_eip !132
  %260 = call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !132
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  store i1 %262, i1* %PF, align 1, !mcsema_real_eip !132
  %263 = icmp ult i64 %249, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !132
  store i1 %263, i1* %CF, align 1, !mcsema_real_eip !132
  store i64 %249, i64* %XAX, align 8, !mcsema_real_eip !132
  %_new_load_573 = load i32, i32* %214, align 4
  %264 = sext i32 %_new_load_573 to i64, !mcsema_real_eip !133
  store i64 %264, i64* %XCX, align 8, !mcsema_real_eip !133
  %265 = add i64 %249, %264, !mcsema_real_eip !134
  %266 = inttoptr i64 %265 to i8*, !mcsema_real_eip !134
  %_offset_above_rbp_576 = sub i64 %265, %_local_end_to_int_
  %_pot_address_in_parent_stack_577 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_576
  %_cond1_578 = icmp ult i8* %_local_stack_end_ptr_, %266
  %_cond2_1_579 = icmp ugt i8* %266, %_parent_stack_end_ptr_
  %_cond2_2_580 = icmp ult i8* %266, %_parent_stack_start_ptr_
  %_cond2_581 = or i1 %_cond2_1_579, %_cond2_2_580
  %_cond4_582 = icmp ule i8* %_pot_address_in_parent_stack_577, %_parent_stack_end_ptr_
  %_cond1_n_cond2_583 = and i1 %_cond1_578, %_cond2_581
  %_cond1_n_cond2_cond3_584 = and i1 %_cond4_582, %_cond1_n_cond2_583
  %_pot_address_in_parent_stack_577. = select i1 %_cond1_n_cond2_cond3_584, i8* %_pot_address_in_parent_stack_577, i8* %266
  %_new_load_586 = load i8, i8* %_pot_address_in_parent_stack_577., align 1
  %267 = sext i8 %_new_load_586 to i64
  %268 = and i64 %267, 4294967295
  store i64 %268, i64* %XDX, align 8, !mcsema_real_eip !134
  %269 = sext i8 %_new_load_586 to i32
  %270 = add nsw i32 %269, -124
  %271 = xor i32 %270, %269, !mcsema_real_eip !135
  %272 = and i32 %271, 16
  %273 = icmp eq i32 %272, 0
  store i1 %273, i1* %AF, align 1, !mcsema_real_eip !135
  %274 = trunc i32 %270 to i8, !mcsema_real_eip !135
  %275 = call i8 @llvm.ctpop.i8(i8 %274), !mcsema_real_eip !135
  %276 = and i8 %275, 1
  %277 = icmp eq i8 %276, 0
  store i1 %277, i1* %PF, align 1, !mcsema_real_eip !135
  %278 = icmp eq i32 %270, 0, !mcsema_real_eip !135
  store i1 %278, i1* %ZF, align 1, !mcsema_real_eip !135
  %279 = icmp slt i8 %_new_load_586, 124
  store i1 %279, i1* %SF, align 1, !mcsema_real_eip !135
  %280 = icmp ult i8 %_new_load_586, 124
  store i1 %280, i1* %CF, align 1, !mcsema_real_eip !135
  %281 = and i32 %271, %269, !mcsema_real_eip !135
  %282 = icmp slt i32 %281, 0
  store i1 %282, i1* %OF, align 1, !mcsema_real_eip !135
  br i1 %278, label %block_0x26f, label %block_0x283, !mcsema_real_eip !136

block_0x26f:                                      ; preds = %block_0x249
  %_new_load_601 = load i32, i32* %214, align 4
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !137
  %283 = trunc i32 %_new_load_601 to i8, !mcsema_real_eip !137
  %284 = call i8 @llvm.ctpop.i8(i8 %283), !mcsema_real_eip !137
  %285 = and i8 %284, 1
  %286 = icmp eq i8 %285, 0
  store i1 %286, i1* %PF, align 1, !mcsema_real_eip !137
  %287 = icmp eq i32 %_new_load_601, 0, !mcsema_real_eip !137
  store i1 %287, i1* %ZF, align 1, !mcsema_real_eip !137
  %288 = icmp slt i32 %_new_load_601, 0
  store i1 %288, i1* %SF, align 1, !mcsema_real_eip !137
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !137
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !137
  %289 = icmp slt i32 %_new_load_601, 1
  br i1 %289, label %block_0x283, label %block_0x279, !mcsema_real_eip !138

block_0x279:                                      ; preds = %block_0x26f
  %_new_load_616 = load i32, i32* %214, align 4
  %290 = add i32 %_new_load_616, -11
  %291 = xor i32 %290, %_new_load_616, !mcsema_real_eip !139
  %292 = and i32 %291, 16, !mcsema_real_eip !139
  %293 = icmp ne i32 %292, 0, !mcsema_real_eip !139
  store i1 %293, i1* %AF, align 1, !mcsema_real_eip !139
  %294 = trunc i32 %290 to i8, !mcsema_real_eip !139
  %295 = call i8 @llvm.ctpop.i8(i8 %294), !mcsema_real_eip !139
  %296 = and i8 %295, 1
  %297 = icmp eq i8 %296, 0
  store i1 %297, i1* %PF, align 1, !mcsema_real_eip !139
  %298 = icmp eq i32 %290, 0, !mcsema_real_eip !139
  store i1 %298, i1* %ZF, align 1, !mcsema_real_eip !139
  %299 = icmp slt i32 %290, 0
  store i1 %299, i1* %SF, align 1, !mcsema_real_eip !139
  %300 = icmp ult i32 %_new_load_616, 11, !mcsema_real_eip !139
  store i1 %300, i1* %CF, align 1, !mcsema_real_eip !139
  %301 = and i32 %291, %_new_load_616, !mcsema_real_eip !139
  %302 = icmp slt i32 %301, 0
  store i1 %302, i1* %OF, align 1, !mcsema_real_eip !139
  %303 = xor i1 %299, %302
  br i1 %303, label %block_0x28f, label %block_0x283, !mcsema_real_eip !140

block_0x283:                                      ; preds = %block_0x249, %block_0x23f, %block_0x279, %block_0x26f
  %_new_gep_162 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_140, i64 -28
  %304 = ptrtoint i8* %_new_gep_162 to i64
  %_offset_above_rbp_620 = sub i64 %304, %_local_end_to_int_
  %_pot_address_in_parent_stack_621 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_620
  %_cond1_622 = icmp ugt i8* %_new_gep_162, %_local_stack_end_ptr_
  %_cond2_1_623 = icmp ugt i8* %_new_gep_162, %_parent_stack_end_ptr_
  %_cond2_2_624 = icmp ult i8* %_new_gep_162, %_parent_stack_start_ptr_
  %_cond2_625 = or i1 %_cond2_1_623, %_cond2_2_624
  %_cond4_626 = icmp ule i8* %_pot_address_in_parent_stack_621, %_parent_stack_end_ptr_
  %_cond1_n_cond2_627 = and i1 %_cond1_622, %_cond2_625
  %_cond1_n_cond2_cond3_628 = and i1 %_cond1_n_cond2_627, %_cond4_626
  %_address_in_parent_stack_bt_630..v = select i1 %_cond1_n_cond2_cond3_628, i8* %_pot_address_in_parent_stack_621, i8* %_new_gep_162
  %_address_in_parent_stack_bt_630. = bitcast i8* %_address_in_parent_stack_bt_630..v to i32*
  %_new_load_631 = load i32, i32* %_address_in_parent_stack_bt_630., align 4
  %305 = zext i32 %_new_load_631 to i64, !mcsema_real_eip !141
  store i64 %305, i64* %XAX, align 8, !mcsema_real_eip !141
  store i32 %_new_load_631, i32* %213, align 4, !mcsema_real_eip !142
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_167 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_168 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_167, i64 -32
  %306 = ptrtoint i8* %_new_gep_168 to i64
  %_offset_above_rbp_635 = sub i64 %306, %_local_end_to_int_
  %_pot_address_in_parent_stack_636 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_635
  %_cond1_637 = icmp ugt i8* %_new_gep_168, %_local_stack_end_ptr_
  %_cond2_1_638 = icmp ugt i8* %_new_gep_168, %_parent_stack_end_ptr_
  %_cond2_2_639 = icmp ult i8* %_new_gep_168, %_parent_stack_start_ptr_
  %_cond2_640 = or i1 %_cond2_1_638, %_cond2_2_639
  %_cond4_641 = icmp ule i8* %_pot_address_in_parent_stack_636, %_parent_stack_end_ptr_
  %_cond1_n_cond2_642 = and i1 %_cond1_637, %_cond2_640
  %_cond1_n_cond2_cond3_643 = and i1 %_cond1_n_cond2_642, %_cond4_641
  %.v14 = select i1 %_cond1_n_cond2_cond3_643, i8* %_pot_address_in_parent_stack_636, i8* %_new_gep_168
  %307 = bitcast i8* %.v14 to i32*
  %_new_load_646 = load i32, i32* %307, align 4
  %308 = zext i32 %_new_load_646 to i64, !mcsema_real_eip !143
  store i64 %308, i64* %XAX, align 8, !mcsema_real_eip !143
  %_new_gep_171 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_167, i64 -24
  %309 = bitcast i8* %_new_gep_171 to i32*
  store i32 %_new_load_646, i32* %309, align 4, !mcsema_real_eip !144
  br label %block_0x28f, !mcsema_real_eip !145

block_0x28f:                                      ; preds = %block_0x283, %block_0x279, %block_0x219
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_173 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_174 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_173, i64 -28
  %310 = ptrtoint i8* %_new_gep_174 to i64
  %_offset_above_rbp_650 = sub i64 %310, %_local_end_to_int_
  %_pot_address_in_parent_stack_651 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_650
  %_cond1_652 = icmp ugt i8* %_new_gep_174, %_local_stack_end_ptr_
  %_cond2_1_653 = icmp ugt i8* %_new_gep_174, %_parent_stack_end_ptr_
  %_cond2_2_654 = icmp ult i8* %_new_gep_174, %_parent_stack_start_ptr_
  %_cond2_655 = or i1 %_cond2_1_653, %_cond2_2_654
  %_cond4_656 = icmp ule i8* %_pot_address_in_parent_stack_651, %_parent_stack_end_ptr_
  %_cond1_n_cond2_657 = and i1 %_cond1_652, %_cond2_655
  %_cond1_n_cond2_cond3_658 = and i1 %_cond1_n_cond2_657, %_cond4_656
  %_address_in_parent_stack_bt_660..v = select i1 %_cond1_n_cond2_cond3_658, i8* %_pot_address_in_parent_stack_651, i8* %_new_gep_174
  %_address_in_parent_stack_bt_660. = bitcast i8* %_address_in_parent_stack_bt_660..v to i32*
  %_new_load_661 = load i32, i32* %_address_in_parent_stack_bt_660., align 4
  %311 = zext i32 %_new_load_661 to i64, !mcsema_real_eip !145
  store i64 %311, i64* %XAX, align 8, !mcsema_real_eip !145
  %_new_gep_177 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_173, i64 -20
  %312 = ptrtoint i8* %_new_gep_177 to i64
  %_offset_above_rbp_665 = sub i64 %312, %_local_end_to_int_
  %_pot_address_in_parent_stack_666 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_665
  %_cond1_667 = icmp ugt i8* %_new_gep_177, %_local_stack_end_ptr_
  %_cond2_1_668 = icmp ugt i8* %_new_gep_177, %_parent_stack_end_ptr_
  %_cond2_2_669 = icmp ult i8* %_new_gep_177, %_parent_stack_start_ptr_
  %_cond2_670 = or i1 %_cond2_1_668, %_cond2_2_669
  %_cond4_671 = icmp ule i8* %_pot_address_in_parent_stack_666, %_parent_stack_end_ptr_
  %_cond1_n_cond2_672 = and i1 %_cond1_667, %_cond2_670
  %_cond1_n_cond2_cond3_673 = and i1 %_cond1_n_cond2_672, %_cond4_671
  %.v15 = select i1 %_cond1_n_cond2_cond3_673, i8* %_pot_address_in_parent_stack_666, i8* %_new_gep_177
  %313 = bitcast i8* %.v15 to i32*
  %_new_load_676 = load i32, i32* %313, align 4
  %314 = sub i32 %_new_load_661, %_new_load_676, !mcsema_real_eip !146
  %315 = xor i32 %314, %_new_load_661, !mcsema_real_eip !146
  %316 = xor i32 %315, %_new_load_676, !mcsema_real_eip !146
  %317 = and i32 %316, 16, !mcsema_real_eip !146
  %318 = icmp ne i32 %317, 0, !mcsema_real_eip !146
  store i1 %318, i1* %AF, align 1, !mcsema_real_eip !146
  %319 = trunc i32 %314 to i8, !mcsema_real_eip !146
  %320 = call i8 @llvm.ctpop.i8(i8 %319), !mcsema_real_eip !146
  %321 = and i8 %320, 1
  %322 = icmp eq i8 %321, 0
  store i1 %322, i1* %PF, align 1, !mcsema_real_eip !146
  %323 = icmp eq i32 %314, 0, !mcsema_real_eip !146
  store i1 %323, i1* %ZF, align 1, !mcsema_real_eip !146
  %324 = icmp slt i32 %314, 0
  store i1 %324, i1* %SF, align 1, !mcsema_real_eip !146
  %325 = icmp ult i32 %_new_load_661, %_new_load_676, !mcsema_real_eip !146
  store i1 %325, i1* %CF, align 1, !mcsema_real_eip !146
  %326 = xor i32 %_new_load_676, %_new_load_661, !mcsema_real_eip !146
  %327 = and i32 %315, %326, !mcsema_real_eip !146
  %328 = icmp slt i32 %327, 0
  store i1 %328, i1* %OF, align 1, !mcsema_real_eip !146
  br i1 %323, label %block_0x29b, label %block_0x28f.block_0x2c7_crit_edge, !mcsema_real_eip !147

block_0x28f.block_0x2c7_crit_edge:                ; preds = %block_0x28f
  %.pre = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_173, i64 -24
  %.pre20 = ptrtoint i8* %.pre to i64
  %.pre21 = sub i64 %.pre20, %_local_end_to_int_
  %.pre22 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %.pre21
  br label %block_0x2c7

block_0x29b:                                      ; preds = %block_0x28f
  %_new_gep_180 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_173, i64 -32
  %329 = ptrtoint i8* %_new_gep_180 to i64
  %_offset_above_rbp_680 = sub i64 %329, %_local_end_to_int_
  %_pot_address_in_parent_stack_681 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_680
  %_cond1_682 = icmp ugt i8* %_new_gep_180, %_local_stack_end_ptr_
  %_cond2_1_683 = icmp ugt i8* %_new_gep_180, %_parent_stack_end_ptr_
  %_cond2_2_684 = icmp ult i8* %_new_gep_180, %_parent_stack_start_ptr_
  %_cond2_685 = or i1 %_cond2_1_683, %_cond2_2_684
  %_cond4_686 = icmp ule i8* %_pot_address_in_parent_stack_681, %_parent_stack_end_ptr_
  %_cond1_n_cond2_687 = and i1 %_cond1_682, %_cond2_685
  %_cond1_n_cond2_cond3_688 = and i1 %_cond1_n_cond2_687, %_cond4_686
  %_address_in_parent_stack_bt_690..v = select i1 %_cond1_n_cond2_cond3_688, i8* %_pot_address_in_parent_stack_681, i8* %_new_gep_180
  %_address_in_parent_stack_bt_690. = bitcast i8* %_address_in_parent_stack_bt_690..v to i32*
  %_new_load_691 = load i32, i32* %_address_in_parent_stack_bt_690., align 4
  %330 = zext i32 %_new_load_691 to i64, !mcsema_real_eip !148
  store i64 %330, i64* %XAX, align 8, !mcsema_real_eip !148
  %_new_gep_183 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_173, i64 -24
  %331 = ptrtoint i8* %_new_gep_183 to i64
  %_offset_above_rbp_695 = sub i64 %331, %_local_end_to_int_
  %_pot_address_in_parent_stack_696 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_695
  %_cond1_697 = icmp ugt i8* %_new_gep_183, %_local_stack_end_ptr_
  %_cond2_1_698 = icmp ugt i8* %_new_gep_183, %_parent_stack_end_ptr_
  %_cond2_2_699 = icmp ult i8* %_new_gep_183, %_parent_stack_start_ptr_
  %_cond2_700 = or i1 %_cond2_1_698, %_cond2_2_699
  %_cond4_701 = icmp ule i8* %_pot_address_in_parent_stack_696, %_parent_stack_end_ptr_
  %_cond1_n_cond2_702 = and i1 %_cond1_697, %_cond2_700
  %_cond1_n_cond2_cond3_703 = and i1 %_cond1_n_cond2_702, %_cond4_701
  %.v17 = select i1 %_cond1_n_cond2_cond3_703, i8* %_pot_address_in_parent_stack_696, i8* %_new_gep_183
  %332 = bitcast i8* %.v17 to i32*
  %_new_load_706 = load i32, i32* %332, align 4
  %333 = sub i32 %_new_load_691, %_new_load_706, !mcsema_real_eip !149
  %334 = xor i32 %333, %_new_load_691, !mcsema_real_eip !149
  %335 = xor i32 %334, %_new_load_706, !mcsema_real_eip !149
  %336 = and i32 %335, 16, !mcsema_real_eip !149
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !149
  store i1 %337, i1* %AF, align 1, !mcsema_real_eip !149
  %338 = trunc i32 %333 to i8, !mcsema_real_eip !149
  %339 = call i8 @llvm.ctpop.i8(i8 %338), !mcsema_real_eip !149
  %340 = and i8 %339, 1
  %341 = icmp eq i8 %340, 0
  store i1 %341, i1* %PF, align 1, !mcsema_real_eip !149
  %342 = icmp eq i32 %333, 0, !mcsema_real_eip !149
  store i1 %342, i1* %ZF, align 1, !mcsema_real_eip !149
  %343 = icmp slt i32 %333, 0
  store i1 %343, i1* %SF, align 1, !mcsema_real_eip !149
  %344 = icmp ult i32 %_new_load_691, %_new_load_706, !mcsema_real_eip !149
  store i1 %344, i1* %CF, align 1, !mcsema_real_eip !149
  %345 = xor i32 %_new_load_706, %_new_load_691, !mcsema_real_eip !149
  %346 = and i32 %334, %345, !mcsema_real_eip !149
  %347 = icmp slt i32 %346, 0
  store i1 %347, i1* %OF, align 1, !mcsema_real_eip !149
  br i1 %342, label %block_0x2a7, label %block_0x2c7, !mcsema_real_eip !150

block_0x2a7:                                      ; preds = %block_0x29b
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, align 8, !mcsema_real_eip !151
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !152
  %RSI_val.222 = load i64, i64* %XSI, align 8, !mcsema_real_eip !153
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_185 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.223 = load i64, i64* %XSP, align 8, !mcsema_real_eip !153
  %_new_gep_186 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_185, i64 -8
  %348 = add i64 %RSP_val.223, -8
  %_allin_new_bt_187 = bitcast i8* %_new_gep_186 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_187, align 8, !mcsema_real_eip !153
  store volatile i8* %_new_gep_186, i8** %_RSP_ptr_, align 8
  store i64 %348, i64* %XSP, align 8, !mcsema_real_eip !153
  %349 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.222)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_255 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_256 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_255, i64 8
  store i8* %_gep_fix_256, i8** %_RSP_ptr_, align 8
  store i64 %349, i64* %XAX, align 8, !mcsema_real_eip !153
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_188 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_189 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_188, i64 -4
  %350 = bitcast i8* %_new_gep_189 to i32*
  store i32 2, i32* %350, align 4, !mcsema_real_eip !174
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_191 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_192 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_191, i64 -104
  br label %block_0x312, !mcsema_real_eip !154

block_0x2c7:                                      ; preds = %block_0x28f.block_0x2c7_crit_edge, %block_0x29b
  %_pot_address_in_parent_stack_711.pre-phi = phi i8* [ %.pre22, %block_0x28f.block_0x2c7_crit_edge ], [ %_pot_address_in_parent_stack_696, %block_0x29b ]
  %_new_gep_195.pre-phi = phi i8* [ %.pre, %block_0x28f.block_0x2c7_crit_edge ], [ %_new_gep_183, %block_0x29b ]
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !155
  %_cond1_712 = icmp ugt i8* %_new_gep_195.pre-phi, %_local_stack_end_ptr_
  %_cond2_1_713 = icmp ugt i8* %_new_gep_195.pre-phi, %_parent_stack_end_ptr_
  %_cond2_2_714 = icmp ult i8* %_new_gep_195.pre-phi, %_parent_stack_start_ptr_
  %_cond2_715 = or i1 %_cond2_1_713, %_cond2_2_714
  %_cond4_716 = icmp ule i8* %_pot_address_in_parent_stack_711.pre-phi, %_parent_stack_end_ptr_
  %_cond1_n_cond2_717 = and i1 %_cond1_712, %_cond2_715
  %_cond1_n_cond2_cond3_718 = and i1 %_cond1_n_cond2_717, %_cond4_716
  %_address_in_parent_stack_bt_720..v = select i1 %_cond1_n_cond2_cond3_718, i8* %_pot_address_in_parent_stack_711.pre-phi, i8* %_new_gep_195.pre-phi
  %_address_in_parent_stack_bt_720. = bitcast i8* %_address_in_parent_stack_bt_720..v to i32*
  %_new_load_721 = load i32, i32* %_address_in_parent_stack_bt_720., align 4
  %351 = sext i32 %_new_load_721 to i64
  %352 = mul nsw i64 %351, 11
  store i64 %352, i64* %XCX, align 8, !mcsema_real_eip !157
  %353 = add i64 %352, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !158
  %354 = xor i64 %353, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !158
  %355 = xor i64 %353, %352, !mcsema_real_eip !158
  %356 = and i64 %355, 16, !mcsema_real_eip !158
  %357 = icmp ne i64 %356, 0, !mcsema_real_eip !158
  store i1 %357, i1* %AF, align 1, !mcsema_real_eip !158
  %358 = icmp slt i64 %353, 0
  store i1 %358, i1* %SF, align 1, !mcsema_real_eip !158
  %359 = icmp eq i64 %353, 0, !mcsema_real_eip !158
  store i1 %359, i1* %ZF, align 1, !mcsema_real_eip !158
  %360 = xor i64 %352, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !158
  %361 = and i64 %354, %360, !mcsema_real_eip !158
  %362 = icmp slt i64 %361, 0
  store i1 %362, i1* %OF, align 1, !mcsema_real_eip !158
  %363 = trunc i64 %353 to i8, !mcsema_real_eip !158
  %364 = call i8 @llvm.ctpop.i8(i8 %363), !mcsema_real_eip !158
  %365 = and i8 %364, 1
  %366 = icmp eq i8 %365, 0
  store i1 %366, i1* %PF, align 1, !mcsema_real_eip !158
  %367 = icmp ult i64 %353, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !158
  store i1 %367, i1* %CF, align 1, !mcsema_real_eip !158
  store i64 %353, i64* %XAX, align 8, !mcsema_real_eip !158
  %_new_load_736 = load i32, i32* %313, align 4
  %368 = sext i32 %_new_load_736 to i64, !mcsema_real_eip !159
  store i64 %368, i64* %XCX, align 8, !mcsema_real_eip !159
  %369 = add i64 %353, %368, !mcsema_real_eip !160
  %370 = inttoptr i64 %369 to i8*, !mcsema_real_eip !160
  store i8 88, i8* %370, align 1, !mcsema_real_eip !160
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_200 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.235 = load i64, i64* %XSP, align 8, !mcsema_real_eip !161
  %_new_gep_201 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_200, i64 -8
  %371 = add i64 %RSP_val.235, -8
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_202, align 8, !mcsema_real_eip !161
  store volatile i8* %_new_gep_201, i8** %_RSP_ptr_, align 8
  store i64 %371, i64* %XSP, align 8, !mcsema_real_eip !161
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_257 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* nonnull %0, i8* %_new_gep_201, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_257)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_259 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_260 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_259, i64 8
  store i8* %_gep_fix_260, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_203 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_204 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_203, i64 -36
  %372 = ptrtoint i8* %_new_gep_204 to i64
  %373 = bitcast i8* %_new_gep_204 to i32*
  %_offset_above_rbp_740 = sub i64 %372, %_local_end_to_int_
  %_pot_address_in_parent_stack_741 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_740
  %_cond1_742 = icmp ugt i8* %_new_gep_204, %_local_stack_end_ptr_
  %_cond2_1_743 = icmp ugt i8* %_new_gep_204, %_parent_stack_end_ptr_
  %_cond2_2_744 = icmp ult i8* %_new_gep_204, %_parent_stack_start_ptr_
  %_cond2_745 = or i1 %_cond2_1_743, %_cond2_2_744
  %_cond4_746 = icmp ule i8* %_pot_address_in_parent_stack_741, %_parent_stack_end_ptr_
  %_cond1_n_cond2_747 = and i1 %_cond1_742, %_cond2_745
  %_cond1_n_cond2_cond3_748 = and i1 %_cond1_n_cond2_747, %_cond4_746
  %_address_in_parent_stack_bt_750 = bitcast i8* %_pot_address_in_parent_stack_741 to i32*
  %_address_in_parent_stack_bt_750. = select i1 %_cond1_n_cond2_cond3_748, i32* %_address_in_parent_stack_bt_750, i32* %373
  %_new_load_751 = load i32, i32* %_address_in_parent_stack_bt_750., align 4
  %374 = add i32 %_new_load_751, 1, !mcsema_real_eip !163
  %375 = xor i32 %374, %_new_load_751, !mcsema_real_eip !163
  %376 = and i32 %375, 16, !mcsema_real_eip !163
  %377 = icmp ne i32 %376, 0, !mcsema_real_eip !163
  store i1 %377, i1* %AF, align 1, !mcsema_real_eip !163
  %378 = icmp slt i32 %374, 0
  store i1 %378, i1* %SF, align 1, !mcsema_real_eip !163
  %379 = icmp eq i32 %374, 0, !mcsema_real_eip !163
  store i1 %379, i1* %ZF, align 1, !mcsema_real_eip !163
  %380 = xor i32 %_new_load_751, -2147483648, !mcsema_real_eip !163
  %381 = and i32 %375, %380, !mcsema_real_eip !163
  %382 = icmp slt i32 %381, 0
  store i1 %382, i1* %OF, align 1, !mcsema_real_eip !163
  %383 = trunc i32 %374 to i8, !mcsema_real_eip !163
  %384 = call i8 @llvm.ctpop.i8(i8 %383), !mcsema_real_eip !163
  %385 = and i8 %384, 1
  %386 = icmp eq i8 %385, 0
  store i1 %386, i1* %PF, align 1, !mcsema_real_eip !163
  %387 = icmp eq i32 %_new_load_751, -1
  store i1 %387, i1* %CF, align 1, !mcsema_real_eip !163
  %388 = zext i32 %374 to i64, !mcsema_real_eip !163
  store i64 %388, i64* %XDX, align 8, !mcsema_real_eip !163
  store i32 %374, i32* %373, align 4, !mcsema_real_eip !164
  br label %block_0x114, !mcsema_real_eip !165

block_0x2f7:                                      ; preds = %block_0x114
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, align 8, !mcsema_real_eip !166
  store i8 0, i8* %AL.162, align 1, !mcsema_real_eip !167
  %RSI_val.244 = load i64, i64* %XSI, align 8, !mcsema_real_eip !168
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_209 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.245 = load i64, i64* %XSP, align 8, !mcsema_real_eip !168
  %_new_gep_210 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_209, i64 -8
  %389 = add i64 %RSP_val.245, -8
  %_allin_new_bt_211 = bitcast i8* %_new_gep_210 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_211, align 8, !mcsema_real_eip !168
  store volatile i8* %_new_gep_210, i8** %_RSP_ptr_, align 8
  store i64 %389, i64* %XSP, align 8, !mcsema_real_eip !168
  %390 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.244)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_261 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_262 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_261, i64 8
  store i8* %_gep_fix_262, i8** %_RSP_ptr_, align 8
  store i64 %390, i64* %XAX, align 8, !mcsema_real_eip !168
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_212 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_213 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_212, i64 -4
  %391 = bitcast i8* %_new_gep_213 to i32*
  store i32 1, i32* %391, align 4, !mcsema_real_eip !175
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_215 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_216 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_215, i64 -108
  br label %block_0x312, !mcsema_real_eip !169

block_0x312:                                      ; preds = %block_0x2f7, %block_0x2a7
  %_new_gep_216.sink = phi i8* [ %_new_gep_216, %block_0x2f7 ], [ %_new_gep_192, %block_0x2a7 ]
  %EAX_val.249 = load i32, i32* %EAX.55, align 4
  %392 = bitcast i8* %_new_gep_216.sink to i32*
  store i32 %EAX_val.249, i32* %392, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_218 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_219 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_218, i64 -4
  %393 = ptrtoint i8* %_new_gep_219 to i64
  %_offset_above_rbp_755 = sub i64 %393, %_local_end_to_int_
  %_pot_address_in_parent_stack_756 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_755
  %_cond1_757 = icmp ugt i8* %_new_gep_219, %_local_stack_end_ptr_
  %_cond2_1_758 = icmp ugt i8* %_new_gep_219, %_parent_stack_end_ptr_
  %_cond2_2_759 = icmp ult i8* %_new_gep_219, %_parent_stack_start_ptr_
  %_cond2_760 = or i1 %_cond2_1_758, %_cond2_2_759
  %_cond4_761 = icmp ule i8* %_pot_address_in_parent_stack_756, %_parent_stack_end_ptr_
  %_cond1_n_cond2_762 = and i1 %_cond1_757, %_cond2_760
  %_cond1_n_cond2_cond3_763 = and i1 %_cond1_n_cond2_762, %_cond4_761
  %_address_in_parent_stack_bt_765..v = select i1 %_cond1_n_cond2_cond3_763, i8* %_pot_address_in_parent_stack_756, i8* %_new_gep_219
  %_address_in_parent_stack_bt_765. = bitcast i8* %_address_in_parent_stack_bt_765..v to i32*
  %_new_load_766 = load i32, i32* %_address_in_parent_stack_bt_765., align 4
  %394 = zext i32 %_new_load_766 to i64, !mcsema_real_eip !169
  store i64 %394, i64* %XAX, align 8, !mcsema_real_eip !169
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_221 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.251 = load i64, i64* %XSP, align 8, !mcsema_real_eip !170
  %_new_gep_222 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_221, i64 112
  %395 = add i64 %RSP_val.251, 112, !mcsema_real_eip !170
  %_trans_p2i_223 = ptrtoint i8* %_new_gep_222 to i64
  %_trans_p2i_224 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_221 to i64
  %_trans_xor_225 = xor i64 %_trans_p2i_223, %_trans_p2i_224
  %396 = and i64 %_trans_xor_225, 16
  %397 = icmp eq i64 %396, 0
  store i1 %397, i1* %AF, align 1, !mcsema_real_eip !170
  %398 = icmp slt i64 %395, 0
  store i1 %398, i1* %SF, align 1, !mcsema_real_eip !170
  %_trans_icmp_eq_227 = icmp eq i8* %_new_gep_222, null
  store i1 %_trans_icmp_eq_227, i1* %ZF, align 1, !mcsema_real_eip !170
  %399 = xor i64 %_trans_p2i_224, -9223372036854775808, !mcsema_real_eip !170
  %400 = and i64 %_trans_xor_225, %399, !mcsema_real_eip !170
  %401 = icmp slt i64 %400, 0
  store i1 %401, i1* %OF, align 1, !mcsema_real_eip !170
  %_trans_trunc_234 = trunc i64 %_trans_p2i_223 to i8
  %402 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_234), !mcsema_real_eip !170
  %403 = and i8 %402, 1
  %404 = icmp eq i8 %403, 0
  store i1 %404, i1* %PF, align 1, !mcsema_real_eip !170
  %_trans_icmp_ne_236 = icmp ne i64 %RSP_val.251, %_trans_p2i_223
  store i1 %_trans_icmp_ne_236, i1* %CF, align 1, !mcsema_real_eip !170
  store volatile i8* %_new_gep_222, i8** %_RSP_ptr_, align 8
  store i64 %395, i64* %XSP, align 8, !mcsema_real_eip !170
  %_offset_above_rbp_770 = sub i64 %_trans_p2i_223, %_local_end_to_int_
  %_pot_address_in_parent_stack_771 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_770
  %_cond1_772 = icmp ugt i8* %_new_gep_222, %_local_stack_end_ptr_
  %_cond2_1_773 = icmp ugt i8* %_new_gep_222, %_parent_stack_end_ptr_
  %_cond2_2_774 = icmp ult i8* %_new_gep_222, %_parent_stack_start_ptr_
  %_cond2_775 = or i1 %_cond2_1_773, %_cond2_2_774
  %_cond4_776 = icmp ule i8* %_pot_address_in_parent_stack_771, %_parent_stack_end_ptr_
  %_cond1_n_cond2_777 = and i1 %_cond1_772, %_cond2_775
  %_cond1_n_cond2_cond3_778 = and i1 %_cond1_n_cond2_777, %_cond4_776
  %.v19 = select i1 %_cond1_n_cond2_cond3_778, i8* %_pot_address_in_parent_stack_771, i8* %_new_gep_222
  %405 = bitcast i8* %.v19 to i64*
  %_new_load_781 = load i64, i64* %405, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_781 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_781, i64* %XBP, align 8, !mcsema_real_eip !171
  %_new_gep_239 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_221, i64 120
  %406 = add i64 %RSP_val.251, 120, !mcsema_real_eip !171
  store volatile i8* %_new_gep_239, i8** %_RSP_ptr_, align 8
  store i64 %406, i64* %XSP, align 8, !mcsema_real_eip !171
  %_new_gep_241 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_221, i64 128
  %407 = add i64 %RSP_val.251, 128, !mcsema_real_eip !172
  %_ptr_to_int_782 = ptrtoint i8* %_new_gep_239 to i64
  %_offset_above_rbp_785 = sub i64 %_ptr_to_int_782, %_local_end_to_int_
  %_pot_address_in_parent_stack_786 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_785
  %_cond1_787 = icmp ugt i8* %_new_gep_239, %_local_stack_end_ptr_
  %_cond2_1_788 = icmp ugt i8* %_new_gep_239, %_parent_stack_end_ptr_
  %_cond2_2_789 = icmp ult i8* %_new_gep_239, %_parent_stack_start_ptr_
  %_cond2_790 = or i1 %_cond2_1_788, %_cond2_2_789
  %_cond4_791 = icmp ule i8* %_pot_address_in_parent_stack_786, %_parent_stack_end_ptr_
  %_cond1_n_cond2_792 = and i1 %_cond1_787, %_cond2_790
  %_cond1_n_cond2_cond3_793 = and i1 %_cond1_n_cond2_792, %_cond4_791
  %_address_in_parent_stack_bt_795._allin_new_bt_242.v = select i1 %_cond1_n_cond2_cond3_793, i8* %_pot_address_in_parent_stack_786, i8* %_new_gep_239
  %_address_in_parent_stack_bt_795._allin_new_bt_242 = bitcast i8* %_address_in_parent_stack_bt_795._allin_new_bt_242.v to i64*
  %_new_load_796 = load i64, i64* %_address_in_parent_stack_bt_795._allin_new_bt_242, align 8
  store i64 %_new_load_796, i64* %XIP, align 8, !mcsema_real_eip !172
  store volatile i8* %_new_gep_241, i8** %_RSP_ptr_, align 8
  store i64 %407, i64* %XSP, align 8, !mcsema_real_eip !172
  ret void, !mcsema_real_eip !172

; <label>:408:                                    ; preds = %block_0x148
  store i64 %_new_load_382, i64* %XIP, align 8, !mcsema_real_eip !73
  call void @__mcsema_detach_call_value()
  ret void, !mcsema_real_eip !73
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 15}
!7 = !{i64 19}
!8 = !{i64 25}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 42}
!12 = !{i64 52}
!13 = !{i64 62}
!14 = !{i64 66}
!15 = !{i64 70}
!16 = !{i64 73}
!17 = !{i64 77}
!18 = !{i64 81}
!19 = !{i64 83}
!20 = !{i64 88}
!21 = !{i64 91}
!22 = !{i64 94}
!23 = !{i64 97}
!24 = !{i64 100}
!25 = !{i64 105}
!26 = !{i64 115}
!27 = !{i64 117}
!28 = !{i64 122}
!29 = !{i64 125}
!30 = !{i64 128}
!31 = !{i64 131}
!32 = !{i64 134}
!33 = !{i64 139}
!34 = !{i64 149}
!35 = !{i64 151}
!36 = !{i64 156}
!37 = !{i64 159}
!38 = !{i64 163}
!39 = !{i64 164}
!40 = !{i64 176}
!41 = !{i64 177}
!42 = !{i64 180}
!43 = !{i64 184}
!44 = !{i64 193}
!45 = !{i64 207}
!46 = !{i64 214}
!47 = !{i64 217}
!48 = !{i64 221}
!49 = !{i64 228}
!50 = !{i64 235}
!51 = !{i64 250}
!52 = !{i64 257}
!53 = !{i64 262}
!54 = !{i64 264}
!55 = !{i64 267}
!56 = !{i64 272}
!57 = !{i64 276}
!58 = !{i64 280}
!59 = !{i64 286}
!60 = !{i64 289}
!61 = !{i64 292}
!62 = !{i64 295}
!63 = !{i64 298}
!64 = !{i64 302}
!65 = !{i64 307}
!66 = !{i64 310}
!67 = !{i64 312}
!68 = !{i64 315}
!69 = !{i64 319}
!70 = !{i64 322}
!71 = !{i64 328}
!72 = !{i64 332}
!73 = !{i64 340}
!74 = !{i64 342}
!75 = !{i64 345}
!76 = !{i64 348}
!77 = !{i64 351}
!78 = !{i64 356}
!79 = !{i64 359}
!80 = !{i64 362}
!81 = !{i64 365}
!82 = !{i64 370}
!83 = !{i64 373}
!84 = !{i64 376}
!85 = !{i64 379}
!86 = !{i64 384}
!87 = !{i64 387}
!88 = !{i64 390}
!89 = !{i64 393}
!90 = !{i64 398}
!91 = !{i64 408}
!92 = !{i64 410}
!93 = !{i64 415}
!94 = !{i64 425}
!95 = !{i64 428}
!96 = !{i64 430}
!97 = !{i64 435}
!98 = !{i64 440}
!99 = !{i64 443}
!100 = !{i64 448}
!101 = !{i64 458}
!102 = !{i64 462}
!103 = !{i64 466}
!104 = !{i64 469}
!105 = !{i64 473}
!106 = !{i64 477}
!107 = !{i64 480}
!108 = !{i64 486}
!109 = !{i64 496}
!110 = !{i64 498}
!111 = !{i64 503}
!112 = !{i64 513}
!113 = !{i64 517}
!114 = !{i64 520}
!115 = !{i64 522}
!116 = !{i64 527}
!117 = !{i64 529}
!118 = !{i64 532}
!119 = !{i64 537}
!120 = !{i64 547}
!121 = !{i64 551}
!122 = !{i64 555}
!123 = !{i64 558}
!124 = !{i64 562}
!125 = !{i64 566}
!126 = !{i64 569}
!127 = !{i64 575}
!128 = !{i64 579}
!129 = !{i64 585}
!130 = !{i64 595}
!131 = !{i64 599}
!132 = !{i64 603}
!133 = !{i64 606}
!134 = !{i64 610}
!135 = !{i64 614}
!136 = !{i64 617}
!137 = !{i64 623}
!138 = !{i64 627}
!139 = !{i64 633}
!140 = !{i64 637}
!141 = !{i64 643}
!142 = !{i64 646}
!143 = !{i64 649}
!144 = !{i64 652}
!145 = !{i64 655}
!146 = !{i64 658}
!147 = !{i64 661}
!148 = !{i64 667}
!149 = !{i64 670}
!150 = !{i64 673}
!151 = !{i64 679}
!152 = !{i64 689}
!153 = !{i64 691}
!154 = !{i64 706}
!155 = !{i64 711}
!156 = !{i64 721}
!157 = !{i64 725}
!158 = !{i64 729}
!159 = !{i64 732}
!160 = !{i64 736}
!161 = !{i64 740}
!162 = !{i64 745}
!163 = !{i64 748}
!164 = !{i64 751}
!165 = !{i64 754}
!166 = !{i64 759}
!167 = !{i64 769}
!168 = !{i64 771}
!169 = !{i64 786}
!170 = !{i64 789}
!171 = !{i64 793}
!172 = !{i64 794}
!173 = !{i64 253}
!174 = !{i64 696}
!175 = !{i64 776}
