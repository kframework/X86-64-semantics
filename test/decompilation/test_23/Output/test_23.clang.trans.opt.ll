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
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_2 = alloca [128 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 128
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
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
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 120
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
  %3 = add i64 %RSP_val.1, -120
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !5
  %4 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 28, i64 28>, <2 x i64>* %4, align 8
  %5 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 56
  %6 = ptrtoint i8* %_new_gep_14 to i64
  store i64 %6, i64* %R8, align 8, !mcsema_real_eip !6
  %_new_gep_17 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 116
  %7 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %7, align 4, !mcsema_real_eip !7
  %_new_gep_20 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 112
  %EDI.13 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.14 = load i32, i32* %EDI.13, align 4, !mcsema_real_eip !8
  %8 = bitcast i8* %_new_gep_20 to i32*
  store i32 %EDI_val.14, i32* %8, align 8, !mcsema_real_eip !8
  %_new_gep_23 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 104
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.16 = load i64, i64* %XSI, align 8, !mcsema_real_eip !9
  store i64 %RSI_val.16, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !9
  %_new_gep_26 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 84
  %9 = bitcast i8* %_new_gep_26 to i32*
  store i32 0, i32* %9, align 4, !mcsema_real_eip !10
  %_new_gep_29 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 100
  %10 = bitcast i8* %_new_gep_29 to i32*
  store i32 1, i32* %10, align 4, !mcsema_real_eip !11
  %_new_gep_32 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 96
  %11 = bitcast i8* %_new_gep_32 to i32*
  store i32 1, i32* %11, align 8, !mcsema_real_eip !12
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !13
  store i1 icmp slt (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 0), i1* %SF, align 1, !mcsema_real_eip !13
  store i1 icmp eq (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 0), i1* %ZF, align 1, !mcsema_real_eip !13
  store i1 icmp slt (i64 and (i64 xor (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 ptrtoint (%1* @data_0x3e0 to i64)), i64 xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -9223372036854775797)), i64 0), i1* %OF, align 1, !mcsema_real_eip !13
  %12 = call i8 @llvm.ctpop.i8(i8 trunc (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11) to i8)), !mcsema_real_eip !13
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  store i1 %14, i1* %PF, align 1, !mcsema_real_eip !13
  store i1 icmp ult (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 ptrtoint (%1* @data_0x3e0 to i64)), i1* %CF, align 1, !mcsema_real_eip !13
  store i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64* %R9, align 8, !mcsema_real_eip !13
  store i8 88, i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 12) to i8*), align 4, !mcsema_real_eip !14
  %EAX_val.28 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !15
  %15 = zext i32 %EAX_val.28 to i64, !mcsema_real_eip !15
  store i64 %15, i64* %XDI, align 8, !mcsema_real_eip !15
  %R8_val.29 = load i64, i64* %R8, align 8, !mcsema_real_eip !16
  store i64 %R8_val.29, i64* %XSI, align 8, !mcsema_real_eip !16
  %RDX_val.32 = load i64, i64* %XDX, align 8, !mcsema_real_eip !17
  %RSP_val.33 = load i64, i64* %XSP, align 8, !mcsema_real_eip !17
  %_new_gep_41 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 0
  %16 = add i64 %RSP_val.33, -8
  %_allin_new_bt_42 = bitcast [128 x i8]* %_local_stack_start_ptr_2 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !17
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_, align 8
  store i64 %16, i64* %XSP, align 8, !mcsema_real_eip !17
  %17 = call x86_64_sysvcc i64 @_read(i64 %15, i64 %R8_val.29, i64 %RDX_val.32)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !17
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4323 = load i8*, i8** %5, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4323, i64 -72
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %17, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !18
  %AL.132 = bitcast i64* %XAX to i8*
  br label %block_0x114, !mcsema_real_eip !19

block_0x114:                                      ; preds = %block_0x2c7, %entry
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4624 = load i8*, i8** %5, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4624, i64 -36
  %18 = bitcast i8* %_new_gep_47 to i32*
  %19 = load i32, i32* %18, align 4, !mcsema_real_eip !19
  %20 = add i32 %19, -28
  %21 = xor i32 %20, %19, !mcsema_real_eip !19
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  store i1 %23, i1* %AF, align 1, !mcsema_real_eip !19
  %24 = trunc i32 %20 to i8, !mcsema_real_eip !19
  %25 = call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !19
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !19
  %28 = icmp eq i32 %20, 0, !mcsema_real_eip !19
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !19
  %29 = icmp slt i32 %20, 0
  store i1 %29, i1* %SF, align 1, !mcsema_real_eip !19
  %30 = icmp ult i32 %19, 28, !mcsema_real_eip !19
  store i1 %30, i1* %CF, align 1, !mcsema_real_eip !19
  %31 = and i32 %21, %19, !mcsema_real_eip !19
  %32 = icmp slt i32 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !19
  %tmp = xor i1 %29, %32
  br i1 %tmp, label %block_0x11e, label %block_0x2f7, !mcsema_real_eip !20

block_0x11e:                                      ; preds = %block_0x114
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4624, i64 -20
  %33 = bitcast i8* %_new_gep_50 to i32*
  %34 = load i32, i32* %33, align 4, !mcsema_real_eip !21
  %35 = zext i32 %34 to i64, !mcsema_real_eip !21
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !21
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4624, i64 -28
  %36 = bitcast i8* %_new_gep_53 to i32*
  store i32 %34, i32* %36, align 4, !mcsema_real_eip !22
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5527 = load i8*, i8** %5, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5527, i64 -24
  %37 = bitcast i8* %_new_gep_56 to i32*
  %38 = load i32, i32* %37, align 4, !mcsema_real_eip !23
  %39 = zext i32 %38 to i64, !mcsema_real_eip !23
  store i64 %39, i64* %XAX, align 8, !mcsema_real_eip !23
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5527, i64 -32
  %40 = bitcast i8* %_new_gep_59 to i32*
  store i32 %38, i32* %40, align 4, !mcsema_real_eip !24
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6128 = load i8*, i8** %5, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6128, i64 -36
  %41 = bitcast i8* %_new_gep_62 to i32*
  %42 = load i32, i32* %41, align 4, !mcsema_real_eip !25
  %43 = sext i32 %42 to i64, !mcsema_real_eip !25
  store i64 %43, i64* %XCX, align 8, !mcsema_real_eip !25
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6128, i64 -64
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_65, i64 %43
  %44 = load i8, i8* %_new_gep_66, align 1, !mcsema_real_eip !26
  %45 = sext i8 %44 to i32
  %46 = add nsw i32 %45, -97, !mcsema_real_eip !27
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %XCX, align 8, !mcsema_real_eip !28
  %48 = add nsw i32 %45, -119
  %49 = xor i32 %48, %46, !mcsema_real_eip !29
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !29
  %52 = trunc i32 %48 to i8, !mcsema_real_eip !29
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !29
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  store i1 %55, i1* %PF, align 1, !mcsema_real_eip !29
  %56 = icmp eq i32 %48, 0, !mcsema_real_eip !29
  store i1 %56, i1* %ZF, align 1, !mcsema_real_eip !29
  %57 = icmp slt i8 %44, 119
  store i1 %57, i1* %SF, align 1, !mcsema_real_eip !29
  %58 = icmp ult i32 %46, 22, !mcsema_real_eip !29
  store i1 %58, i1* %CF, align 1, !mcsema_real_eip !29
  %59 = and i32 %49, %46, !mcsema_real_eip !29
  %60 = icmp slt i32 %59, 0
  store i1 %60, i1* %OF, align 1, !mcsema_real_eip !29
  %61 = zext i32 %48 to i64, !mcsema_real_eip !29
  store i64 %61, i64* %XAX, align 8, !mcsema_real_eip !29
  %_new_gep_69 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6128, i64 -80
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %47, i64* %_allin_new_bt_70, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7129 = load i8*, i8** %5, align 8
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7129, i64 -84
  %EAX_val.66 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !31
  %62 = bitcast i8* %_new_gep_72 to i32*
  store i32 %EAX_val.66, i32* %62, align 4, !mcsema_real_eip !31
  %63 = load i1, i1* %ZF, align 1, !mcsema_real_eip !32
  %64 = load i1, i1* %CF, align 1, !mcsema_real_eip !32
  %.demorgan = or i1 %63, %64
  br i1 %.demorgan, label %block_0x148, label %block_0x18e, !mcsema_real_eip !32

block_0x2f7:                                      ; preds = %block_0x114
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, align 8, !mcsema_real_eip !33
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !34
  %RSI_val.39 = load i64, i64* %XSI, align 8, !mcsema_real_eip !35
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_74 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.40 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %_new_gep_75 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_74, i64 -8
  %65 = add i64 %RSP_val.40, -8
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_76, align 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_, align 8
  store i64 %65, i64* %XSP, align 8, !mcsema_real_eip !35
  %66 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.39)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_243 = load i8*, i8** %_RSP_ptr_, align 8
  br label %block_0x312, !mcsema_real_eip !21

block_0x312:                                      ; preds = %block_0x2a7, %block_0x2f7
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_243.pn = phi i8* [ %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_243, %block_0x2f7 ], [ %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_263, %block_0x2a7 ]
  %.sink45 = phi i64 [ %66, %block_0x2f7 ], [ %402, %block_0x2a7 ]
  %.sink = phi i32 [ 1, %block_0x2f7 ], [ 2, %block_0x2a7 ]
  %.sink15 = phi i64 [ -108, %block_0x2f7 ], [ -104, %block_0x2a7 ]
  %storemerge = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_243.pn, i64 8
  store i8* %storemerge, i8** %_RSP_ptr_, align 8
  store i64 %.sink45, i64* %XAX, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23138 = load i8*, i8** %5, align 8
  %_new_gep_232 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23138, i64 -4
  %67 = bitcast i8* %_new_gep_232 to i32*
  store i32 %.sink, i32* %67, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_234.sink42 = load i8*, i8** %5, align 8
  %_new_gep_235 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_234.sink42, i64 %.sink15
  %EAX_val.200 = load i32, i32* %EAX.4, align 4
  %68 = bitcast i8* %_new_gep_235 to i32*
  store i32 %EAX_val.200, i32* %68, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8326 = load i8*, i8** %5, align 8
  %_new_gep_84 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8326, i64 -4
  %69 = bitcast i8* %_new_gep_84 to i32*
  %70 = load i32, i32* %69, align 4, !mcsema_real_eip !36
  %71 = zext i32 %70 to i64, !mcsema_real_eip !36
  store i64 %71, i64* %XAX, align 8, !mcsema_real_eip !36
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_86 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.68 = load i64, i64* %XSP, align 8, !mcsema_real_eip !37
  %_new_gep_87 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_86, i64 112
  %72 = add i64 %RSP_val.68, 112, !mcsema_real_eip !37
  %_trans_p2i_88 = ptrtoint i8* %_new_gep_87 to i64
  %_trans_p2i_89 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_86 to i64
  %_trans_xor_90 = xor i64 %_trans_p2i_88, %_trans_p2i_89
  %73 = and i64 %_trans_xor_90, 16
  %74 = icmp eq i64 %73, 0
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !37
  %75 = icmp slt i64 %72, 0
  store i1 %75, i1* %SF, align 1, !mcsema_real_eip !37
  %_trans_icmp_eq_92 = icmp eq i8* %_new_gep_87, null
  store i1 %_trans_icmp_eq_92, i1* %ZF, align 1, !mcsema_real_eip !37
  %76 = xor i64 %_trans_p2i_89, -9223372036854775808, !mcsema_real_eip !37
  %77 = and i64 %_trans_xor_90, %76, !mcsema_real_eip !37
  %78 = icmp slt i64 %77, 0
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !37
  %_trans_trunc_99 = trunc i64 %_trans_p2i_88 to i8
  %79 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_99), !mcsema_real_eip !37
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !37
  %_trans_icmp_ne_101 = icmp ne i64 %_trans_p2i_88, %RSP_val.68
  store i1 %_trans_icmp_ne_101, i1* %CF, align 1, !mcsema_real_eip !37
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_, align 8
  store i64 %72, i64* %XSP, align 8, !mcsema_real_eip !37
  %_allin_new_bt_103 = bitcast i8* %_new_gep_87 to i64*
  %82 = load i64, i64* %_allin_new_bt_103, align 8, !mcsema_real_eip !38
  store volatile i64 %82, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %82, i64* %XBP, align 8, !mcsema_real_eip !38
  %_new_gep_104 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_86, i64 120
  %83 = add i64 %RSP_val.68, 120, !mcsema_real_eip !38
  store volatile i8* %_new_gep_104, i8** %_RSP_ptr_, align 8
  store i64 %83, i64* %XSP, align 8, !mcsema_real_eip !38
  %_new_gep_106 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_86, i64 128
  %84 = add i64 %RSP_val.68, 128, !mcsema_real_eip !39
  %_allin_new_bt_107 = bitcast i8* %_new_gep_104 to i64*
  %85 = load i64, i64* %_allin_new_bt_107, align 8, !mcsema_real_eip !39
  store i64 %85, i64* %XIP, align 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_106, i8** %_RSP_ptr_, align 8
  store i64 %84, i64* %XSP, align 8, !mcsema_real_eip !39
  ret void, !mcsema_real_eip !39

block_0x148:                                      ; preds = %block_0x11e
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10841 = load i8*, i8** %5, align 8
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10841, i64 -80
  %_allin_new_bt_110 = bitcast i8* %_new_gep_109 to i64*
  %86 = load i64, i64* %_allin_new_bt_110, align 8, !mcsema_real_eip !40
  store i64 %86, i64* %XAX, align 8, !mcsema_real_eip !40
  %87 = shl i64 %86, 3
  %88 = add i64 %87, ptrtoint (%0* @data_0x320 to i64), !mcsema_real_eip !41
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !41
  %90 = load i64, i64* %89, align 8, !mcsema_real_eip !41
  store i64 %90, i64* %XCX, align 8, !mcsema_real_eip !41
  switch i64 %90, label %208 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !42

block_0x18e:                                      ; preds = %block_0x11e, %block_0x148
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, align 8, !mcsema_real_eip !43
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !44
  %RSI_val.73 = load i64, i64* %XSI, align 8, !mcsema_real_eip !45
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_111 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.74 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_112 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_111, i64 -8
  %91 = add i64 %RSP_val.74, -8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_113, align 8, !mcsema_real_eip !45
  store volatile i8* %_new_gep_112, i8** %_RSP_ptr_, align 8
  store i64 %91, i64* %XSP, align 8, !mcsema_real_eip !45
  %92 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64 %RSI_val.73)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_245 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_246 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_245, i64 8
  store i8* %_gep_fix_246, i8** %_RSP_ptr_, align 8
  store i64 %92, i64* %XAX, align 8, !mcsema_real_eip !45
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, align 8, !mcsema_real_eip !46
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11430 = load i8*, i8** %5, align 8
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11430, i64 -88
  %93 = trunc i64 %92 to i32
  %94 = bitcast i8* %_new_gep_115 to i32*
  store i32 %93, i32* %94, align 4, !mcsema_real_eip !47
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !48
  %RDI_val.79 = load i64, i64* %XDI, align 8, !mcsema_real_eip !49
  %RSI_val.80 = load i64, i64* %XSI, align 8, !mcsema_real_eip !49
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_117 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.81 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %_new_gep_118 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_117, i64 -8
  %95 = add i64 %RSP_val.81, -8
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_119, align 8, !mcsema_real_eip !49
  store volatile i8* %_new_gep_118, i8** %_RSP_ptr_, align 8
  store i64 %95, i64* %XSP, align 8, !mcsema_real_eip !49
  %96 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.79, i64 %RSI_val.80)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_247 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_248 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_247, i64 8
  store i8* %_gep_fix_248, i8** %_RSP_ptr_, align 8
  store i64 %96, i64* %XAX, align 8, !mcsema_real_eip !49
  store i64 4294967295, i64* %XDI, align 8, !mcsema_real_eip !50
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12031 = load i8*, i8** %5, align 8
  %_new_gep_121 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12031, i64 -92
  %97 = trunc i64 %96 to i32
  %98 = bitcast i8* %_new_gep_121 to i32*
  store i32 %97, i32* %98, align 4, !mcsema_real_eip !51
  %RDI_val.85 = load i64, i64* %XDI, align 8, !mcsema_real_eip !52
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_123 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.86 = load i64, i64* %XSP, align 8, !mcsema_real_eip !52
  %_new_gep_124 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_123, i64 -8
  %99 = add i64 %RSP_val.86, -8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_125, align 8, !mcsema_real_eip !52
  store volatile i8* %_new_gep_124, i8** %_RSP_ptr_, align 8
  store i64 %99, i64* %XSP, align 8, !mcsema_real_eip !52
  %100 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.85)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_249 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_250 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_249, i64 8
  store i8* %_gep_fix_250, i8** %_RSP_ptr_, align 8
  store i64 %100, i64* %XAX, align 8, !mcsema_real_eip !52
  br label %block_0x1c0, !mcsema_real_eip !40

block_0x1c0:                                      ; preds = %block_0x180, %block_0x172, %block_0x164, %block_0x156, %block_0x18e
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !53
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12632 = load i8*, i8** %5, align 8
  %_new_gep_127 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12632, i64 -24
  %101 = bitcast i8* %_new_gep_127 to i32*
  %102 = load i32, i32* %101, align 4, !mcsema_real_eip !54
  %103 = sext i32 %102 to i64
  %104 = mul nsw i64 %103, 11
  store i64 %104, i64* %XCX, align 8, !mcsema_real_eip !55
  %105 = add i64 %104, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !56
  %106 = xor i64 %105, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !56
  %107 = xor i64 %105, %104, !mcsema_real_eip !56
  %108 = and i64 %107, 16, !mcsema_real_eip !56
  %109 = icmp ne i64 %108, 0, !mcsema_real_eip !56
  store i1 %109, i1* %AF, align 1, !mcsema_real_eip !56
  %110 = icmp slt i64 %105, 0
  store i1 %110, i1* %SF, align 1, !mcsema_real_eip !56
  %111 = icmp eq i64 %105, 0, !mcsema_real_eip !56
  store i1 %111, i1* %ZF, align 1, !mcsema_real_eip !56
  %112 = xor i64 %104, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !56
  %113 = and i64 %106, %112, !mcsema_real_eip !56
  %114 = icmp slt i64 %113, 0
  store i1 %114, i1* %OF, align 1, !mcsema_real_eip !56
  %115 = trunc i64 %105 to i8, !mcsema_real_eip !56
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !56
  %117 = and i8 %116, 1
  %118 = icmp eq i8 %117, 0
  store i1 %118, i1* %PF, align 1, !mcsema_real_eip !56
  %119 = icmp ult i64 %105, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !56
  store i1 %119, i1* %CF, align 1, !mcsema_real_eip !56
  store i64 %105, i64* %XAX, align 8, !mcsema_real_eip !56
  %_new_gep_130 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12632, i64 -20
  %120 = bitcast i8* %_new_gep_130 to i32*
  %121 = load i32, i32* %120, align 4, !mcsema_real_eip !57
  %122 = sext i32 %121 to i64, !mcsema_real_eip !57
  store i64 %122, i64* %XCX, align 8, !mcsema_real_eip !57
  %123 = add i64 %122, %105, !mcsema_real_eip !58
  %124 = inttoptr i64 %123 to i8*, !mcsema_real_eip !58
  %125 = load i8, i8* %124, align 1, !mcsema_real_eip !58
  %126 = sext i8 %125 to i64
  %127 = and i64 %126, 4294967295
  store i64 %127, i64* %XDX, align 8, !mcsema_real_eip !58
  %128 = sext i8 %125 to i32
  %129 = add nsw i32 %128, -35
  %130 = xor i32 %129, %128, !mcsema_real_eip !59
  %131 = and i32 %130, 16, !mcsema_real_eip !59
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !59
  store i1 %132, i1* %AF, align 1, !mcsema_real_eip !59
  %133 = trunc i32 %129 to i8, !mcsema_real_eip !59
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !59
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  store i1 %136, i1* %PF, align 1, !mcsema_real_eip !59
  %137 = icmp eq i32 %129, 0, !mcsema_real_eip !59
  store i1 %137, i1* %ZF, align 1, !mcsema_real_eip !59
  %138 = icmp slt i8 %125, 35
  store i1 %138, i1* %SF, align 1, !mcsema_real_eip !59
  %139 = icmp ult i8 %125, 35
  store i1 %139, i1* %CF, align 1, !mcsema_real_eip !59
  %140 = and i32 %130, %128, !mcsema_real_eip !59
  %141 = icmp slt i32 %140, 0
  store i1 %141, i1* %OF, align 1, !mcsema_real_eip !59
  br i1 %137, label %block_0x1e6, label %block_0x219, !mcsema_real_eip !60

block_0x156:                                      ; preds = %block_0x148
  %_new_gep_133 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10841, i64 -24
  %142 = bitcast i8* %_new_gep_133 to i32*
  %143 = load i32, i32* %142, align 4, !mcsema_real_eip !61
  %144 = add i32 %143, -1, !mcsema_real_eip !62
  %145 = xor i32 %144, %143, !mcsema_real_eip !62
  %146 = and i32 %145, 16
  %147 = icmp eq i32 %146, 0
  store i1 %147, i1* %AF, align 1, !mcsema_real_eip !62
  %148 = icmp slt i32 %144, 0
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !62
  %149 = icmp eq i32 %144, 0, !mcsema_real_eip !62
  store i1 %149, i1* %ZF, align 1, !mcsema_real_eip !62
  %150 = and i32 %145, %143, !mcsema_real_eip !62
  %151 = icmp slt i32 %150, 0
  store i1 %151, i1* %OF, align 1, !mcsema_real_eip !62
  %152 = trunc i32 %144 to i8, !mcsema_real_eip !62
  %153 = call i8 @llvm.ctpop.i8(i8 %152), !mcsema_real_eip !62
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  store i1 %155, i1* %PF, align 1, !mcsema_real_eip !62
  %156 = icmp ne i32 %143, 0
  store i1 %156, i1* %CF, align 1, !mcsema_real_eip !62
  %157 = zext i32 %144 to i64, !mcsema_real_eip !62
  store i64 %157, i64* %XAX, align 8, !mcsema_real_eip !62
  store i32 %144, i32* %142, align 4, !mcsema_real_eip !63
  br label %block_0x1c0, !mcsema_real_eip !64

block_0x164:                                      ; preds = %block_0x148
  %_new_gep_139 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10841, i64 -24
  %158 = bitcast i8* %_new_gep_139 to i32*
  %159 = load i32, i32* %158, align 4, !mcsema_real_eip !65
  %160 = add i32 %159, 1, !mcsema_real_eip !66
  %161 = xor i32 %160, %159, !mcsema_real_eip !66
  %162 = and i32 %161, 16, !mcsema_real_eip !66
  %163 = icmp ne i32 %162, 0, !mcsema_real_eip !66
  store i1 %163, i1* %AF, align 1, !mcsema_real_eip !66
  %164 = icmp slt i32 %160, 0
  store i1 %164, i1* %SF, align 1, !mcsema_real_eip !66
  %165 = icmp eq i32 %160, 0, !mcsema_real_eip !66
  store i1 %165, i1* %ZF, align 1, !mcsema_real_eip !66
  %166 = xor i32 %159, -2147483648, !mcsema_real_eip !66
  %167 = and i32 %161, %166, !mcsema_real_eip !66
  %168 = icmp slt i32 %167, 0
  store i1 %168, i1* %OF, align 1, !mcsema_real_eip !66
  %169 = trunc i32 %160 to i8, !mcsema_real_eip !66
  %170 = call i8 @llvm.ctpop.i8(i8 %169), !mcsema_real_eip !66
  %171 = and i8 %170, 1
  %172 = icmp eq i8 %171, 0
  store i1 %172, i1* %PF, align 1, !mcsema_real_eip !66
  %173 = icmp eq i32 %159, -1
  store i1 %173, i1* %CF, align 1, !mcsema_real_eip !66
  %174 = zext i32 %160 to i64, !mcsema_real_eip !66
  store i64 %174, i64* %XAX, align 8, !mcsema_real_eip !66
  store i32 %160, i32* %158, align 4, !mcsema_real_eip !67
  br label %block_0x1c0, !mcsema_real_eip !68

block_0x172:                                      ; preds = %block_0x148
  %_new_gep_145 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10841, i64 -20
  %175 = bitcast i8* %_new_gep_145 to i32*
  %176 = load i32, i32* %175, align 4, !mcsema_real_eip !69
  %177 = add i32 %176, -1, !mcsema_real_eip !70
  %178 = xor i32 %177, %176, !mcsema_real_eip !70
  %179 = and i32 %178, 16
  %180 = icmp eq i32 %179, 0
  store i1 %180, i1* %AF, align 1, !mcsema_real_eip !70
  %181 = icmp slt i32 %177, 0
  store i1 %181, i1* %SF, align 1, !mcsema_real_eip !70
  %182 = icmp eq i32 %177, 0, !mcsema_real_eip !70
  store i1 %182, i1* %ZF, align 1, !mcsema_real_eip !70
  %183 = and i32 %178, %176, !mcsema_real_eip !70
  %184 = icmp slt i32 %183, 0
  store i1 %184, i1* %OF, align 1, !mcsema_real_eip !70
  %185 = trunc i32 %177 to i8, !mcsema_real_eip !70
  %186 = call i8 @llvm.ctpop.i8(i8 %185), !mcsema_real_eip !70
  %187 = and i8 %186, 1
  %188 = icmp eq i8 %187, 0
  store i1 %188, i1* %PF, align 1, !mcsema_real_eip !70
  %189 = icmp ne i32 %176, 0
  store i1 %189, i1* %CF, align 1, !mcsema_real_eip !70
  %190 = zext i32 %177 to i64, !mcsema_real_eip !70
  store i64 %190, i64* %XAX, align 8, !mcsema_real_eip !70
  store i32 %177, i32* %175, align 4, !mcsema_real_eip !71
  br label %block_0x1c0, !mcsema_real_eip !72

block_0x180:                                      ; preds = %block_0x148
  %_new_gep_151 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10841, i64 -20
  %191 = bitcast i8* %_new_gep_151 to i32*
  %192 = load i32, i32* %191, align 4, !mcsema_real_eip !73
  %193 = add i32 %192, 1, !mcsema_real_eip !74
  %194 = xor i32 %193, %192, !mcsema_real_eip !74
  %195 = and i32 %194, 16, !mcsema_real_eip !74
  %196 = icmp ne i32 %195, 0, !mcsema_real_eip !74
  store i1 %196, i1* %AF, align 1, !mcsema_real_eip !74
  %197 = icmp slt i32 %193, 0
  store i1 %197, i1* %SF, align 1, !mcsema_real_eip !74
  %198 = icmp eq i32 %193, 0, !mcsema_real_eip !74
  store i1 %198, i1* %ZF, align 1, !mcsema_real_eip !74
  %199 = xor i32 %192, -2147483648, !mcsema_real_eip !74
  %200 = and i32 %194, %199, !mcsema_real_eip !74
  %201 = icmp slt i32 %200, 0
  store i1 %201, i1* %OF, align 1, !mcsema_real_eip !74
  %202 = trunc i32 %193 to i8, !mcsema_real_eip !74
  %203 = call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !74
  %204 = and i8 %203, 1
  %205 = icmp eq i8 %204, 0
  store i1 %205, i1* %PF, align 1, !mcsema_real_eip !74
  %206 = icmp eq i32 %192, -1
  store i1 %206, i1* %CF, align 1, !mcsema_real_eip !74
  %207 = zext i32 %193 to i64, !mcsema_real_eip !74
  store i64 %207, i64* %XAX, align 8, !mcsema_real_eip !74
  store i32 %193, i32* %191, align 4, !mcsema_real_eip !75
  br label %block_0x1c0, !mcsema_real_eip !76

; <label>:208:                                    ; preds = %block_0x148
  store i64 %90, i64* %XIP, align 8, !mcsema_real_eip !42
  call void @__mcsema_detach_call_value()
  ret void, !mcsema_real_eip !42

block_0x1e6:                                      ; preds = %block_0x1c0
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, align 8, !mcsema_real_eip !77
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !78
  %RSI_val.134 = load i64, i64* %XSI, align 8, !mcsema_real_eip !79
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_156 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.135 = load i64, i64* %XSP, align 8, !mcsema_real_eip !79
  %_new_gep_157 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_156, i64 -8
  %209 = add i64 %RSP_val.135, -8
  %_allin_new_bt_158 = bitcast i8* %_new_gep_157 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_158, align 8, !mcsema_real_eip !79
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_, align 8
  store i64 %209, i64* %XSP, align 8, !mcsema_real_eip !79
  %210 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64 %RSI_val.134)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_253 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_254 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_253, i64 8
  store i8* %_gep_fix_254, i8** %_RSP_ptr_, align 8
  store i64 %210, i64* %XAX, align 8, !mcsema_real_eip !79
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, align 8, !mcsema_real_eip !80
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15939 = load i8*, i8** %5, align 8
  %_new_gep_160 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15939, i64 -64
  %211 = ptrtoint i8* %_new_gep_160 to i64
  store i64 %211, i64* %XSI, align 8, !mcsema_real_eip !81
  %_new_gep_163 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15939, i64 -96
  %212 = trunc i64 %210 to i32
  %213 = bitcast i8* %_new_gep_163 to i32*
  store i32 %212, i32* %213, align 4, !mcsema_real_eip !82
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !83
  %RDI_val.141 = load i64, i64* %XDI, align 8, !mcsema_real_eip !84
  %RSI_val.142 = load i64, i64* %XSI, align 8, !mcsema_real_eip !84
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.143 = load i64, i64* %XSP, align 8, !mcsema_real_eip !84
  %_new_gep_166 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 -8
  %214 = add i64 %RSP_val.143, -8
  %_allin_new_bt_167 = bitcast i8* %_new_gep_166 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_167, align 8, !mcsema_real_eip !84
  store volatile i8* %_new_gep_166, i8** %_RSP_ptr_, align 8
  store i64 %214, i64* %XSP, align 8, !mcsema_real_eip !84
  %215 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.141, i64 %RSI_val.142)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_255 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_256 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_255, i64 8
  store i8* %_gep_fix_256, i8** %_RSP_ptr_, align 8
  store i64 %215, i64* %XAX, align 8, !mcsema_real_eip !84
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !85
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !85
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !85
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !85
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !85
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !85
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16840 = load i8*, i8** %5, align 8
  %_new_gep_169 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16840, i64 -100
  %216 = trunc i64 %215 to i32
  %217 = bitcast i8* %_new_gep_169 to i32*
  store i32 %216, i32* %217, align 4, !mcsema_real_eip !86
  %RDI_val.151 = load i64, i64* %XDI, align 8, !mcsema_real_eip !87
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_171 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.152 = load i64, i64* %XSP, align 8, !mcsema_real_eip !87
  %_new_gep_172 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_171, i64 -8
  %218 = add i64 %RSP_val.152, -8
  %_allin_new_bt_173 = bitcast i8* %_new_gep_172 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_173, align 8, !mcsema_real_eip !87
  store volatile i8* %_new_gep_172, i8** %_RSP_ptr_, align 8
  store i64 %218, i64* %XSP, align 8, !mcsema_real_eip !87
  %219 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_257 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_258 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_257, i64 8
  store i8* %_gep_fix_258, i8** %_RSP_ptr_, align 8
  store i64 %219, i64* %XAX, align 8, !mcsema_real_eip !87
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17433.pre = load i8*, i8** %5, align 8
  br label %block_0x219, !mcsema_real_eip !88

block_0x219:                                      ; preds = %block_0x1c0, %block_0x1e6
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17433 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12632, %block_0x1c0 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17433.pre, %block_0x1e6 ]
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !89
  %_new_gep_175 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17433, i64 -24
  %220 = bitcast i8* %_new_gep_175 to i32*
  %221 = load i32, i32* %220, align 4, !mcsema_real_eip !90
  %222 = sext i32 %221 to i64
  %223 = mul nsw i64 %222, 11
  store i64 %223, i64* %XCX, align 8, !mcsema_real_eip !91
  %224 = add i64 %223, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !92
  %225 = xor i64 %224, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !92
  %226 = xor i64 %224, %223, !mcsema_real_eip !92
  %227 = and i64 %226, 16, !mcsema_real_eip !92
  %228 = icmp ne i64 %227, 0, !mcsema_real_eip !92
  store i1 %228, i1* %AF, align 1, !mcsema_real_eip !92
  %229 = icmp slt i64 %224, 0
  store i1 %229, i1* %SF, align 1, !mcsema_real_eip !92
  %230 = icmp eq i64 %224, 0, !mcsema_real_eip !92
  store i1 %230, i1* %ZF, align 1, !mcsema_real_eip !92
  %231 = xor i64 %223, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !92
  %232 = and i64 %225, %231, !mcsema_real_eip !92
  %233 = icmp slt i64 %232, 0
  store i1 %233, i1* %OF, align 1, !mcsema_real_eip !92
  %234 = trunc i64 %224 to i8, !mcsema_real_eip !92
  %235 = call i8 @llvm.ctpop.i8(i8 %234), !mcsema_real_eip !92
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  store i1 %237, i1* %PF, align 1, !mcsema_real_eip !92
  %238 = icmp ult i64 %224, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !92
  store i1 %238, i1* %CF, align 1, !mcsema_real_eip !92
  store i64 %224, i64* %XAX, align 8, !mcsema_real_eip !92
  %_new_gep_178 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17433, i64 -20
  %239 = bitcast i8* %_new_gep_178 to i32*
  %240 = load i32, i32* %239, align 4, !mcsema_real_eip !93
  %241 = sext i32 %240 to i64, !mcsema_real_eip !93
  store i64 %241, i64* %XCX, align 8, !mcsema_real_eip !93
  %242 = add i64 %241, %224, !mcsema_real_eip !94
  %243 = inttoptr i64 %242 to i8*, !mcsema_real_eip !94
  %244 = load i8, i8* %243, align 1, !mcsema_real_eip !94
  %245 = sext i8 %244 to i64
  %246 = and i64 %245, 4294967295
  store i64 %246, i64* %XDX, align 8, !mcsema_real_eip !94
  %247 = sext i8 %244 to i32
  %248 = add nsw i32 %247, -32
  %249 = xor i32 %248, %247, !mcsema_real_eip !95
  %250 = and i32 %249, 16, !mcsema_real_eip !95
  %251 = icmp ne i32 %250, 0, !mcsema_real_eip !95
  store i1 %251, i1* %AF, align 1, !mcsema_real_eip !95
  %252 = trunc i32 %248 to i8, !mcsema_real_eip !95
  %253 = call i8 @llvm.ctpop.i8(i8 %252), !mcsema_real_eip !95
  %254 = and i8 %253, 1
  %255 = icmp eq i8 %254, 0
  store i1 %255, i1* %PF, align 1, !mcsema_real_eip !95
  %256 = icmp eq i32 %248, 0, !mcsema_real_eip !95
  store i1 %256, i1* %ZF, align 1, !mcsema_real_eip !95
  %257 = icmp slt i8 %244, 32
  store i1 %257, i1* %SF, align 1, !mcsema_real_eip !95
  %258 = icmp ult i8 %244, 32
  store i1 %258, i1* %CF, align 1, !mcsema_real_eip !95
  %259 = and i32 %249, %247, !mcsema_real_eip !95
  %260 = icmp slt i32 %259, 0
  store i1 %260, i1* %OF, align 1, !mcsema_real_eip !95
  br i1 %256, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !96

block_0x23f:                                      ; preds = %block_0x219
  %261 = load i32, i32* %220, align 4, !mcsema_real_eip !97
  %262 = add i32 %261, -2
  %263 = xor i32 %262, %261, !mcsema_real_eip !97
  %264 = and i32 %263, 16, !mcsema_real_eip !97
  %265 = icmp ne i32 %264, 0, !mcsema_real_eip !97
  store i1 %265, i1* %AF, align 1, !mcsema_real_eip !97
  %266 = trunc i32 %262 to i8, !mcsema_real_eip !97
  %267 = call i8 @llvm.ctpop.i8(i8 %266), !mcsema_real_eip !97
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  store i1 %269, i1* %PF, align 1, !mcsema_real_eip !97
  %270 = icmp eq i32 %262, 0, !mcsema_real_eip !97
  store i1 %270, i1* %ZF, align 1, !mcsema_real_eip !97
  %271 = icmp slt i32 %262, 0
  store i1 %271, i1* %SF, align 1, !mcsema_real_eip !97
  %272 = icmp ult i32 %261, 2, !mcsema_real_eip !97
  store i1 %272, i1* %CF, align 1, !mcsema_real_eip !97
  %273 = and i32 %263, %261, !mcsema_real_eip !97
  %274 = icmp slt i32 %273, 0
  store i1 %274, i1* %OF, align 1, !mcsema_real_eip !97
  br i1 %270, label %block_0x249, label %block_0x283, !mcsema_real_eip !98

block_0x28f:                                      ; preds = %block_0x279, %block_0x283, %block_0x219
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18335 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17433, %block_0x279 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18335.pre, %block_0x283 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17433, %block_0x219 ]
  %_new_gep_184 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18335, i64 -28
  %275 = bitcast i8* %_new_gep_184 to i32*
  %276 = load i32, i32* %275, align 4, !mcsema_real_eip !88
  %277 = zext i32 %276 to i64, !mcsema_real_eip !88
  store i64 %277, i64* %XAX, align 8, !mcsema_real_eip !88
  %_new_gep_187 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18335, i64 -20
  %278 = bitcast i8* %_new_gep_187 to i32*
  %279 = load i32, i32* %278, align 4, !mcsema_real_eip !99
  %280 = sub i32 %276, %279, !mcsema_real_eip !99
  %281 = xor i32 %280, %276, !mcsema_real_eip !99
  %282 = xor i32 %281, %279, !mcsema_real_eip !99
  %283 = and i32 %282, 16, !mcsema_real_eip !99
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !99
  store i1 %284, i1* %AF, align 1, !mcsema_real_eip !99
  %285 = trunc i32 %280 to i8, !mcsema_real_eip !99
  %286 = call i8 @llvm.ctpop.i8(i8 %285), !mcsema_real_eip !99
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  store i1 %288, i1* %PF, align 1, !mcsema_real_eip !99
  %289 = icmp eq i32 %280, 0, !mcsema_real_eip !99
  store i1 %289, i1* %ZF, align 1, !mcsema_real_eip !99
  %290 = icmp slt i32 %280, 0
  store i1 %290, i1* %SF, align 1, !mcsema_real_eip !99
  %291 = icmp ult i32 %276, %279, !mcsema_real_eip !99
  store i1 %291, i1* %CF, align 1, !mcsema_real_eip !99
  %292 = xor i32 %279, %276, !mcsema_real_eip !99
  %293 = and i32 %281, %292, !mcsema_real_eip !99
  %294 = icmp slt i32 %293, 0
  store i1 %294, i1* %OF, align 1, !mcsema_real_eip !99
  br i1 %289, label %block_0x29b, label %block_0x28f.block_0x2c7_crit_edge, !mcsema_real_eip !100

block_0x28f.block_0x2c7_crit_edge:                ; preds = %block_0x28f
  %.pre = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18335, i64 -24
  %.pre48 = bitcast i8* %.pre to i32*
  br label %block_0x2c7

block_0x29b:                                      ; preds = %block_0x28f
  %_new_gep_190 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18335, i64 -32
  %295 = bitcast i8* %_new_gep_190 to i32*
  %296 = load i32, i32* %295, align 4, !mcsema_real_eip !101
  %297 = zext i32 %296 to i64, !mcsema_real_eip !101
  store i64 %297, i64* %XAX, align 8, !mcsema_real_eip !101
  %_new_gep_193 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18335, i64 -24
  %298 = bitcast i8* %_new_gep_193 to i32*
  %299 = load i32, i32* %298, align 4, !mcsema_real_eip !102
  %300 = sub i32 %296, %299, !mcsema_real_eip !102
  %301 = xor i32 %300, %296, !mcsema_real_eip !102
  %302 = xor i32 %301, %299, !mcsema_real_eip !102
  %303 = and i32 %302, 16, !mcsema_real_eip !102
  %304 = icmp ne i32 %303, 0, !mcsema_real_eip !102
  store i1 %304, i1* %AF, align 1, !mcsema_real_eip !102
  %305 = trunc i32 %300 to i8, !mcsema_real_eip !102
  %306 = call i8 @llvm.ctpop.i8(i8 %305), !mcsema_real_eip !102
  %307 = and i8 %306, 1
  %308 = icmp eq i8 %307, 0
  store i1 %308, i1* %PF, align 1, !mcsema_real_eip !102
  %309 = icmp eq i32 %300, 0, !mcsema_real_eip !102
  store i1 %309, i1* %ZF, align 1, !mcsema_real_eip !102
  %310 = icmp slt i32 %300, 0
  store i1 %310, i1* %SF, align 1, !mcsema_real_eip !102
  %311 = icmp ult i32 %296, %299, !mcsema_real_eip !102
  store i1 %311, i1* %CF, align 1, !mcsema_real_eip !102
  %312 = xor i32 %299, %296, !mcsema_real_eip !102
  %313 = and i32 %301, %312, !mcsema_real_eip !102
  %314 = icmp slt i32 %313, 0
  store i1 %314, i1* %OF, align 1, !mcsema_real_eip !102
  br i1 %309, label %block_0x2a7, label %block_0x2c7, !mcsema_real_eip !103

block_0x2c7:                                      ; preds = %block_0x28f.block_0x2c7_crit_edge, %block_0x29b
  %.pre-phi = phi i32* [ %.pre48, %block_0x28f.block_0x2c7_crit_edge ], [ %298, %block_0x29b ]
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !104
  %315 = load i32, i32* %.pre-phi, align 4, !mcsema_real_eip !105
  %316 = sext i32 %315 to i64
  %317 = mul nsw i64 %316, 11
  store i64 %317, i64* %XCX, align 8, !mcsema_real_eip !106
  %318 = add i64 %317, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !107
  %319 = xor i64 %318, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !107
  %320 = xor i64 %318, %317, !mcsema_real_eip !107
  %321 = and i64 %320, 16, !mcsema_real_eip !107
  %322 = icmp ne i64 %321, 0, !mcsema_real_eip !107
  store i1 %322, i1* %AF, align 1, !mcsema_real_eip !107
  %323 = icmp slt i64 %318, 0
  store i1 %323, i1* %SF, align 1, !mcsema_real_eip !107
  %324 = icmp eq i64 %318, 0, !mcsema_real_eip !107
  store i1 %324, i1* %ZF, align 1, !mcsema_real_eip !107
  %325 = xor i64 %317, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !107
  %326 = and i64 %319, %325, !mcsema_real_eip !107
  %327 = icmp slt i64 %326, 0
  store i1 %327, i1* %OF, align 1, !mcsema_real_eip !107
  %328 = trunc i64 %318 to i8, !mcsema_real_eip !107
  %329 = call i8 @llvm.ctpop.i8(i8 %328), !mcsema_real_eip !107
  %330 = and i8 %329, 1
  %331 = icmp eq i8 %330, 0
  store i1 %331, i1* %PF, align 1, !mcsema_real_eip !107
  %332 = icmp ult i64 %318, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !107
  store i1 %332, i1* %CF, align 1, !mcsema_real_eip !107
  store i64 %318, i64* %XAX, align 8, !mcsema_real_eip !107
  %333 = load i32, i32* %278, align 4, !mcsema_real_eip !108
  %334 = sext i32 %333 to i64, !mcsema_real_eip !108
  store i64 %334, i64* %XCX, align 8, !mcsema_real_eip !108
  %335 = add i64 %334, %318, !mcsema_real_eip !109
  %336 = inttoptr i64 %335 to i8*, !mcsema_real_eip !109
  store i8 88, i8* %336, align 1, !mcsema_real_eip !109
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_201 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.165 = load i64, i64* %XSP, align 8, !mcsema_real_eip !110
  %_new_gep_202 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_201, i64 -8
  %337 = add i64 %RSP_val.165, -8
  %_allin_new_bt_203 = bitcast i8* %_new_gep_202 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_203, align 8, !mcsema_real_eip !110
  store volatile i8* %_new_gep_202, i8** %_RSP_ptr_, align 8
  store i64 %337, i64* %XSP, align 8, !mcsema_real_eip !110
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25936 = load i8*, i8** %5, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* nonnull %0, i8* %_new_gep_202, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25936)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_261 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_262 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_261, i64 8
  store i8* %_gep_fix_262, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20437 = load i8*, i8** %5, align 8
  %_new_gep_205 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20437, i64 -36
  %338 = bitcast i8* %_new_gep_205 to i32*
  %339 = load i32, i32* %338, align 4, !mcsema_real_eip !111
  %340 = add i32 %339, 1, !mcsema_real_eip !112
  %341 = xor i32 %340, %339, !mcsema_real_eip !112
  %342 = and i32 %341, 16, !mcsema_real_eip !112
  %343 = icmp ne i32 %342, 0, !mcsema_real_eip !112
  store i1 %343, i1* %AF, align 1, !mcsema_real_eip !112
  %344 = icmp slt i32 %340, 0
  store i1 %344, i1* %SF, align 1, !mcsema_real_eip !112
  %345 = icmp eq i32 %340, 0, !mcsema_real_eip !112
  store i1 %345, i1* %ZF, align 1, !mcsema_real_eip !112
  %346 = xor i32 %339, -2147483648, !mcsema_real_eip !112
  %347 = and i32 %341, %346, !mcsema_real_eip !112
  %348 = icmp slt i32 %347, 0
  store i1 %348, i1* %OF, align 1, !mcsema_real_eip !112
  %349 = trunc i32 %340 to i8, !mcsema_real_eip !112
  %350 = call i8 @llvm.ctpop.i8(i8 %349), !mcsema_real_eip !112
  %351 = and i8 %350, 1
  %352 = icmp eq i8 %351, 0
  store i1 %352, i1* %PF, align 1, !mcsema_real_eip !112
  %353 = icmp eq i32 %339, -1
  store i1 %353, i1* %CF, align 1, !mcsema_real_eip !112
  %354 = zext i32 %340 to i64, !mcsema_real_eip !112
  store i64 %354, i64* %XDX, align 8, !mcsema_real_eip !112
  store i32 %340, i32* %338, align 4, !mcsema_real_eip !113
  br label %block_0x114, !mcsema_real_eip !114

block_0x249:                                      ; preds = %block_0x23f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !115
  %355 = load i32, i32* %220, align 4, !mcsema_real_eip !116
  %356 = sext i32 %355 to i64
  %357 = mul nsw i64 %356, 11
  store i64 %357, i64* %XCX, align 8, !mcsema_real_eip !117
  %358 = add i64 %357, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !118
  %359 = xor i64 %358, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !118
  %360 = xor i64 %358, %357, !mcsema_real_eip !118
  %361 = and i64 %360, 16, !mcsema_real_eip !118
  %362 = icmp ne i64 %361, 0, !mcsema_real_eip !118
  store i1 %362, i1* %AF, align 1, !mcsema_real_eip !118
  %363 = icmp slt i64 %358, 0
  store i1 %363, i1* %SF, align 1, !mcsema_real_eip !118
  %364 = icmp eq i64 %358, 0, !mcsema_real_eip !118
  store i1 %364, i1* %ZF, align 1, !mcsema_real_eip !118
  %365 = xor i64 %357, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !118
  %366 = and i64 %359, %365, !mcsema_real_eip !118
  %367 = icmp slt i64 %366, 0
  store i1 %367, i1* %OF, align 1, !mcsema_real_eip !118
  %368 = trunc i64 %358 to i8, !mcsema_real_eip !118
  %369 = call i8 @llvm.ctpop.i8(i8 %368), !mcsema_real_eip !118
  %370 = and i8 %369, 1
  %371 = icmp eq i8 %370, 0
  store i1 %371, i1* %PF, align 1, !mcsema_real_eip !118
  %372 = icmp ult i64 %358, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !118
  store i1 %372, i1* %CF, align 1, !mcsema_real_eip !118
  store i64 %358, i64* %XAX, align 8, !mcsema_real_eip !118
  %373 = load i32, i32* %239, align 4, !mcsema_real_eip !119
  %374 = sext i32 %373 to i64, !mcsema_real_eip !119
  store i64 %374, i64* %XCX, align 8, !mcsema_real_eip !119
  %375 = add i64 %374, %358, !mcsema_real_eip !120
  %376 = inttoptr i64 %375 to i8*, !mcsema_real_eip !120
  %377 = load i8, i8* %376, align 1, !mcsema_real_eip !120
  %378 = sext i8 %377 to i64
  %379 = and i64 %378, 4294967295
  store i64 %379, i64* %XDX, align 8, !mcsema_real_eip !120
  %380 = sext i8 %377 to i32
  %381 = add nsw i32 %380, -124
  %382 = xor i32 %381, %380, !mcsema_real_eip !121
  %383 = and i32 %382, 16
  %384 = icmp eq i32 %383, 0
  store i1 %384, i1* %AF, align 1, !mcsema_real_eip !121
  %385 = trunc i32 %381 to i8, !mcsema_real_eip !121
  %386 = call i8 @llvm.ctpop.i8(i8 %385), !mcsema_real_eip !121
  %387 = and i8 %386, 1
  %388 = icmp eq i8 %387, 0
  store i1 %388, i1* %PF, align 1, !mcsema_real_eip !121
  %389 = icmp eq i32 %381, 0, !mcsema_real_eip !121
  store i1 %389, i1* %ZF, align 1, !mcsema_real_eip !121
  %390 = icmp slt i8 %377, 124
  store i1 %390, i1* %SF, align 1, !mcsema_real_eip !121
  %391 = icmp ult i8 %377, 124
  store i1 %391, i1* %CF, align 1, !mcsema_real_eip !121
  %392 = and i32 %382, %380, !mcsema_real_eip !121
  %393 = icmp slt i32 %392, 0
  store i1 %393, i1* %OF, align 1, !mcsema_real_eip !121
  br i1 %389, label %block_0x26f, label %block_0x283, !mcsema_real_eip !122

block_0x283:                                      ; preds = %block_0x249, %block_0x23f, %block_0x279, %block_0x26f
  %_new_gep_217 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17433, i64 -28
  %394 = bitcast i8* %_new_gep_217 to i32*
  %395 = load i32, i32* %394, align 4, !mcsema_real_eip !123
  %396 = zext i32 %395 to i64, !mcsema_real_eip !123
  store i64 %396, i64* %XAX, align 8, !mcsema_real_eip !123
  store i32 %395, i32* %239, align 4, !mcsema_real_eip !124
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22234 = load i8*, i8** %5, align 8
  %_new_gep_223 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22234, i64 -32
  %397 = bitcast i8* %_new_gep_223 to i32*
  %398 = load i32, i32* %397, align 4, !mcsema_real_eip !125
  %399 = zext i32 %398 to i64, !mcsema_real_eip !125
  store i64 %399, i64* %XAX, align 8, !mcsema_real_eip !125
  %_new_gep_226 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22234, i64 -24
  %400 = bitcast i8* %_new_gep_226 to i32*
  store i32 %398, i32* %400, align 4, !mcsema_real_eip !126
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18335.pre = load i8*, i8** %5, align 8
  br label %block_0x28f, !mcsema_real_eip !115

block_0x2a7:                                      ; preds = %block_0x29b
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, align 8, !mcsema_real_eip !127
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !128
  %RSI_val.195 = load i64, i64* %XSI, align 8, !mcsema_real_eip !129
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_228 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.196 = load i64, i64* %XSP, align 8, !mcsema_real_eip !129
  %_new_gep_229 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_228, i64 -8
  %401 = add i64 %RSP_val.196, -8
  %_allin_new_bt_230 = bitcast i8* %_new_gep_229 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_230, align 8, !mcsema_real_eip !129
  store volatile i8* %_new_gep_229, i8** %_RSP_ptr_, align 8
  store i64 %401, i64* %XSP, align 8, !mcsema_real_eip !129
  %402 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.195)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_263 = load i8*, i8** %_RSP_ptr_, align 8
  br label %block_0x312, !mcsema_real_eip !130

block_0x26f:                                      ; preds = %block_0x249
  %403 = load i32, i32* %239, align 4, !mcsema_real_eip !131
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !131
  %404 = trunc i32 %403 to i8, !mcsema_real_eip !131
  %405 = call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !131
  %406 = and i8 %405, 1
  %407 = icmp eq i8 %406, 0
  store i1 %407, i1* %PF, align 1, !mcsema_real_eip !131
  %408 = icmp eq i32 %403, 0, !mcsema_real_eip !131
  store i1 %408, i1* %ZF, align 1, !mcsema_real_eip !131
  %409 = icmp slt i32 %403, 0
  store i1 %409, i1* %SF, align 1, !mcsema_real_eip !131
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !131
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !131
  %410 = icmp slt i32 %403, 1
  br i1 %410, label %block_0x283, label %block_0x279, !mcsema_real_eip !132

block_0x279:                                      ; preds = %block_0x26f
  %411 = load i32, i32* %239, align 4, !mcsema_real_eip !133
  %412 = add i32 %411, -11
  %413 = xor i32 %412, %411, !mcsema_real_eip !133
  %414 = and i32 %413, 16, !mcsema_real_eip !133
  %415 = icmp ne i32 %414, 0, !mcsema_real_eip !133
  store i1 %415, i1* %AF, align 1, !mcsema_real_eip !133
  %416 = trunc i32 %412 to i8, !mcsema_real_eip !133
  %417 = call i8 @llvm.ctpop.i8(i8 %416), !mcsema_real_eip !133
  %418 = and i8 %417, 1
  %419 = icmp eq i8 %418, 0
  store i1 %419, i1* %PF, align 1, !mcsema_real_eip !133
  %420 = icmp eq i32 %412, 0, !mcsema_real_eip !133
  store i1 %420, i1* %ZF, align 1, !mcsema_real_eip !133
  %421 = icmp slt i32 %412, 0
  store i1 %421, i1* %SF, align 1, !mcsema_real_eip !133
  %422 = icmp ult i32 %411, 11, !mcsema_real_eip !133
  store i1 %422, i1* %CF, align 1, !mcsema_real_eip !133
  %423 = and i32 %413, %411, !mcsema_real_eip !133
  %424 = icmp slt i32 %423, 0
  store i1 %424, i1* %OF, align 1, !mcsema_real_eip !133
  %425 = xor i1 %421, %424
  br i1 %425, label %block_0x28f, label %block_0x283, !mcsema_real_eip !134
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !135
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !135
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !135
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !135
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !135
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !135
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !135
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !135
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !135
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !135
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !135
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !135
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !135
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !135
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !135
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !135
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !135
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !135
  %RBP_val.203 = load i64, i64* %XBP, align 8, !mcsema_real_eip !135
  %RSP_val.204 = load i64, i64* %XSP, align 8, !mcsema_real_eip !135
  %1 = add i64 %RSP_val.204, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !135
  store i64 %RBP_val.203, i64* %2, align 8, !mcsema_real_eip !135
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !136
  %3 = add i64 %RSP_val.204, -40
  %4 = xor i64 %3, %1, !mcsema_real_eip !137
  %5 = and i64 %4, 16, !mcsema_real_eip !137
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !137
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !137
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !137
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !137
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !137
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !137
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !137
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !137
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !137
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !137
  %14 = and i64 %4, %1, !mcsema_real_eip !137
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !137
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !137
  %16 = add i64 %RSP_val.204, -12, !mcsema_real_eip !138
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !138
  store i32 0, i32* %17, align 4, !mcsema_real_eip !138
  %AL.209 = bitcast i64* %XAX to i8*
  br label %block_0xf, !mcsema_real_eip !139

block_0xf:                                        ; preds = %block_0x69, %entry
  %RBP_val.208 = load i64, i64* %XBP, align 8, !mcsema_real_eip !139
  %18 = add i64 %RBP_val.208, -4, !mcsema_real_eip !139
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !139
  %20 = load i32, i32* %19, align 4, !mcsema_real_eip !139
  %21 = add i32 %20, -7
  %22 = xor i32 %21, %20, !mcsema_real_eip !139
  %23 = and i32 %22, 16, !mcsema_real_eip !139
  %24 = icmp ne i32 %23, 0, !mcsema_real_eip !139
  store i1 %24, i1* %AF, align 1, !mcsema_real_eip !139
  %25 = trunc i32 %21 to i8, !mcsema_real_eip !139
  %26 = tail call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !139
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !139
  %29 = icmp eq i32 %21, 0, !mcsema_real_eip !139
  store i1 %29, i1* %ZF, align 1, !mcsema_real_eip !139
  %30 = icmp slt i32 %21, 0
  store i1 %30, i1* %SF, align 1, !mcsema_real_eip !139
  %31 = icmp ult i32 %20, 7, !mcsema_real_eip !139
  store i1 %31, i1* %CF, align 1, !mcsema_real_eip !139
  %32 = and i32 %22, %20, !mcsema_real_eip !139
  %33 = icmp slt i32 %32, 0
  store i1 %33, i1* %OF, align 1, !mcsema_real_eip !139
  %tmp = xor i1 %30, %33
  br i1 %tmp, label %block_0x19, label %block_0x8b, !mcsema_real_eip !140

block_0x19:                                       ; preds = %block_0xf
  %34 = add i64 %RBP_val.208, -8, !mcsema_real_eip !141
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !141
  store i32 0, i32* %35, align 4, !mcsema_real_eip !141
  br label %block_0x20, !mcsema_real_eip !142

block_0x8b:                                       ; preds = %block_0xf
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !135
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, align 8, !mcsema_real_eip !143
  store i8 0, i8* %AL.209, align 1, !mcsema_real_eip !144
  %RSI_val.211 = load i64, i64* %XSI, align 8, !mcsema_real_eip !145
  %RSP_val.212 = load i64, i64* %XSP, align 8, !mcsema_real_eip !145
  %36 = add i64 %RSP_val.212, -8
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !145
  store i64 -2415393069852865332, i64* %37, align 8, !mcsema_real_eip !145
  store i64 %36, i64* %XSP, align 8, !mcsema_real_eip !145
  %38 = tail call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.211), !mcsema_real_eip !145
  store i64 %38, i64* %XAX, align 8, !mcsema_real_eip !145
  %RBP_val.213 = load i64, i64* %XBP, align 8, !mcsema_real_eip !146
  %39 = add i64 %RBP_val.213, -20, !mcsema_real_eip !146
  %40 = trunc i64 %38 to i32
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !146
  store i32 %40, i32* %41, align 4, !mcsema_real_eip !146
  %RSP_val.216 = load i64, i64* %XSP, align 8, !mcsema_real_eip !147
  %42 = add i64 %RSP_val.216, 32, !mcsema_real_eip !147
  %43 = xor i64 %42, %RSP_val.216, !mcsema_real_eip !147
  %44 = and i64 %43, 16, !mcsema_real_eip !147
  %45 = icmp ne i64 %44, 0, !mcsema_real_eip !147
  store i1 %45, i1* %AF, align 1, !mcsema_real_eip !147
  %46 = icmp slt i64 %42, 0
  store i1 %46, i1* %SF, align 1, !mcsema_real_eip !147
  %47 = icmp eq i64 %42, 0, !mcsema_real_eip !147
  store i1 %47, i1* %ZF, align 1, !mcsema_real_eip !147
  %48 = xor i64 %RSP_val.216, -9223372036854775808, !mcsema_real_eip !147
  %49 = and i64 %43, %48, !mcsema_real_eip !147
  %50 = icmp slt i64 %49, 0
  store i1 %50, i1* %OF, align 1, !mcsema_real_eip !147
  %51 = trunc i64 %42 to i8, !mcsema_real_eip !147
  %52 = tail call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !147
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  store i1 %54, i1* %PF, align 1, !mcsema_real_eip !147
  %55 = icmp ugt i64 %RSP_val.216, -33
  store i1 %55, i1* %CF, align 1, !mcsema_real_eip !147
  store i64 %42, i64* %XSP, align 8, !mcsema_real_eip !147
  %56 = inttoptr i64 %42 to i64*, !mcsema_real_eip !148
  %57 = load i64, i64* %56, align 8, !mcsema_real_eip !148
  store i64 %57, i64* %XBP, align 8, !mcsema_real_eip !148
  %58 = add i64 %RSP_val.216, 40, !mcsema_real_eip !148
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !148
  %59 = add i64 %RSP_val.216, 48, !mcsema_real_eip !149
  %60 = inttoptr i64 %58 to i64*, !mcsema_real_eip !149
  %61 = load i64, i64* %60, align 8, !mcsema_real_eip !149
  store i64 %61, i64* %XIP, align 8, !mcsema_real_eip !149
  store i64 %59, i64* %XSP, align 8, !mcsema_real_eip !149
  ret void, !mcsema_real_eip !149

block_0x20:                                       ; preds = %block_0x2a, %block_0x19
  %RBP_val.220 = load i64, i64* %XBP, align 8, !mcsema_real_eip !142
  %62 = add i64 %RBP_val.220, -8, !mcsema_real_eip !142
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !142
  %64 = load i32, i32* %63, align 4, !mcsema_real_eip !142
  %65 = add i32 %64, -11
  %66 = xor i32 %65, %64, !mcsema_real_eip !142
  %67 = and i32 %66, 16, !mcsema_real_eip !142
  %68 = icmp ne i32 %67, 0, !mcsema_real_eip !142
  store i1 %68, i1* %AF, align 1, !mcsema_real_eip !142
  %69 = trunc i32 %65 to i8, !mcsema_real_eip !142
  %70 = tail call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !142
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  store i1 %72, i1* %PF, align 1, !mcsema_real_eip !142
  %73 = icmp eq i32 %65, 0, !mcsema_real_eip !142
  store i1 %73, i1* %ZF, align 1, !mcsema_real_eip !142
  %74 = icmp slt i32 %65, 0
  store i1 %74, i1* %SF, align 1, !mcsema_real_eip !142
  %75 = icmp ult i32 %64, 11, !mcsema_real_eip !142
  store i1 %75, i1* %CF, align 1, !mcsema_real_eip !142
  %76 = and i32 %66, %64, !mcsema_real_eip !142
  %77 = icmp slt i32 %76, 0
  store i1 %77, i1* %OF, align 1, !mcsema_real_eip !142
  %tmp1 = xor i1 %74, %77
  %RSP_val.224 = load i64, i64* %XSP, align 8
  %78 = add i64 %RSP_val.224, -8
  %79 = inttoptr i64 %78 to i64*
  br i1 %tmp1, label %block_0x2a, label %block_0x69, !mcsema_real_eip !150

block_0x2a:                                       ; preds = %block_0x20
  store i64 ptrtoint (%2* @data_0x42d to i64), i64* %XDI, align 8, !mcsema_real_eip !151
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !152
  %80 = add i64 %RBP_val.220, -4, !mcsema_real_eip !153
  %81 = inttoptr i64 %80 to i32*, !mcsema_real_eip !153
  %82 = load i32, i32* %81, align 4, !mcsema_real_eip !153
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %83, 11
  store i64 %84, i64* %XCX, align 8, !mcsema_real_eip !154
  %85 = add i64 %84, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !155
  %86 = xor i64 %85, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !155
  %87 = xor i64 %85, %84, !mcsema_real_eip !155
  %88 = and i64 %87, 16, !mcsema_real_eip !155
  %89 = icmp ne i64 %88, 0, !mcsema_real_eip !155
  store i1 %89, i1* %AF, align 1, !mcsema_real_eip !155
  %90 = icmp slt i64 %85, 0
  store i1 %90, i1* %SF, align 1, !mcsema_real_eip !155
  %91 = icmp eq i64 %85, 0, !mcsema_real_eip !155
  store i1 %91, i1* %ZF, align 1, !mcsema_real_eip !155
  %92 = xor i64 %84, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !155
  %93 = and i64 %86, %92, !mcsema_real_eip !155
  %94 = icmp slt i64 %93, 0
  store i1 %94, i1* %OF, align 1, !mcsema_real_eip !155
  %95 = trunc i64 %85 to i8, !mcsema_real_eip !155
  %96 = tail call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !155
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  store i1 %98, i1* %PF, align 1, !mcsema_real_eip !155
  %99 = icmp ult i64 %85, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !155
  store i1 %99, i1* %CF, align 1, !mcsema_real_eip !155
  store i64 %85, i64* %XAX, align 8, !mcsema_real_eip !155
  %100 = load i32, i32* %63, align 4, !mcsema_real_eip !156
  %101 = sext i32 %100 to i64, !mcsema_real_eip !156
  store i64 %101, i64* %XCX, align 8, !mcsema_real_eip !156
  %102 = add i64 %101, %85, !mcsema_real_eip !157
  %103 = inttoptr i64 %102 to i8*, !mcsema_real_eip !157
  %104 = load i8, i8* %103, align 1, !mcsema_real_eip !157
  %105 = sext i8 %104 to i64
  %106 = and i64 %105, 4294967295
  store i64 %106, i64* %XSI, align 8, !mcsema_real_eip !157
  store i8 0, i8* %AL.209, align 1, !mcsema_real_eip !158
  store i64 -2415393069852865332, i64* %79, align 8, !mcsema_real_eip !159
  store i64 %78, i64* %XSP, align 8, !mcsema_real_eip !159
  %107 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%2* @data_0x42d to i64), i64 %106), !mcsema_real_eip !159
  store i64 %107, i64* %XAX, align 8, !mcsema_real_eip !159
  %RBP_val.245 = load i64, i64* %XBP, align 8, !mcsema_real_eip !160
  %108 = add i64 %RBP_val.245, -12, !mcsema_real_eip !160
  %109 = trunc i64 %107 to i32
  %110 = inttoptr i64 %108 to i32*, !mcsema_real_eip !160
  store i32 %109, i32* %110, align 4, !mcsema_real_eip !160
  %RBP_val.248 = load i64, i64* %XBP, align 8, !mcsema_real_eip !161
  %111 = add i64 %RBP_val.248, -8, !mcsema_real_eip !161
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !161
  %113 = load i32, i32* %112, align 4, !mcsema_real_eip !161
  %114 = add i32 %113, 1, !mcsema_real_eip !162
  %115 = xor i32 %114, %113, !mcsema_real_eip !162
  %116 = and i32 %115, 16, !mcsema_real_eip !162
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !162
  store i1 %117, i1* %AF, align 1, !mcsema_real_eip !162
  %118 = icmp slt i32 %114, 0
  store i1 %118, i1* %SF, align 1, !mcsema_real_eip !162
  %119 = icmp eq i32 %114, 0, !mcsema_real_eip !162
  store i1 %119, i1* %ZF, align 1, !mcsema_real_eip !162
  %120 = xor i32 %113, -2147483648, !mcsema_real_eip !162
  %121 = and i32 %115, %120, !mcsema_real_eip !162
  %122 = icmp slt i32 %121, 0
  store i1 %122, i1* %OF, align 1, !mcsema_real_eip !162
  %123 = trunc i32 %114 to i8, !mcsema_real_eip !162
  %124 = tail call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !162
  %125 = and i8 %124, 1
  %126 = icmp eq i8 %125, 0
  store i1 %126, i1* %PF, align 1, !mcsema_real_eip !162
  %127 = icmp eq i32 %113, -1
  store i1 %127, i1* %CF, align 1, !mcsema_real_eip !162
  %128 = zext i32 %114 to i64, !mcsema_real_eip !162
  store i64 %128, i64* %XAX, align 8, !mcsema_real_eip !162
  store i32 %114, i32* %112, align 4, !mcsema_real_eip !163
  br label %block_0x20, !mcsema_real_eip !164

block_0x69:                                       ; preds = %block_0x20
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, align 8, !mcsema_real_eip !165
  store i8 0, i8* %AL.209, align 1, !mcsema_real_eip !166
  %RSI_val.223 = load i64, i64* %XSI, align 8, !mcsema_real_eip !167
  store i64 -2415393069852865332, i64* %79, align 8, !mcsema_real_eip !167
  store i64 %78, i64* %XSP, align 8, !mcsema_real_eip !167
  %129 = tail call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.223), !mcsema_real_eip !167
  store i64 %129, i64* %XAX, align 8, !mcsema_real_eip !167
  %RBP_val.225 = load i64, i64* %XBP, align 8, !mcsema_real_eip !168
  %130 = add i64 %RBP_val.225, -16, !mcsema_real_eip !168
  %131 = trunc i64 %129 to i32
  %132 = inttoptr i64 %130 to i32*, !mcsema_real_eip !168
  store i32 %131, i32* %132, align 4, !mcsema_real_eip !168
  %RBP_val.228 = load i64, i64* %XBP, align 8, !mcsema_real_eip !169
  %133 = add i64 %RBP_val.228, -4, !mcsema_real_eip !169
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !169
  %135 = load i32, i32* %134, align 4, !mcsema_real_eip !169
  %136 = add i32 %135, 1, !mcsema_real_eip !170
  %137 = xor i32 %136, %135, !mcsema_real_eip !170
  %138 = and i32 %137, 16, !mcsema_real_eip !170
  %139 = icmp ne i32 %138, 0, !mcsema_real_eip !170
  store i1 %139, i1* %AF, align 1, !mcsema_real_eip !170
  %140 = icmp slt i32 %136, 0
  store i1 %140, i1* %SF, align 1, !mcsema_real_eip !170
  %141 = icmp eq i32 %136, 0, !mcsema_real_eip !170
  store i1 %141, i1* %ZF, align 1, !mcsema_real_eip !170
  %142 = xor i32 %135, -2147483648, !mcsema_real_eip !170
  %143 = and i32 %137, %142, !mcsema_real_eip !170
  %144 = icmp slt i32 %143, 0
  store i1 %144, i1* %OF, align 1, !mcsema_real_eip !170
  %145 = trunc i32 %136 to i8, !mcsema_real_eip !170
  %146 = tail call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !170
  %147 = and i8 %146, 1
  %148 = icmp eq i8 %147, 0
  store i1 %148, i1* %PF, align 1, !mcsema_real_eip !170
  %149 = icmp eq i32 %135, -1
  store i1 %149, i1* %CF, align 1, !mcsema_real_eip !170
  %150 = zext i32 %136 to i64, !mcsema_real_eip !170
  store i64 %150, i64* %XAX, align 8, !mcsema_real_eip !170
  store i32 %136, i32* %134, align 4, !mcsema_real_eip !171
  br label %block_0xf, !mcsema_real_eip !172
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read(i64, i64, i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_exit(i64) local_unnamed_addr #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_b0.1(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_2 = alloca [128 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 128
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
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
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 120
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -120
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !5
  %3 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 28, i64 28>, <2 x i64>* %3, align 8
  %_new_gep_14 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 56
  %4 = ptrtoint i8* %_new_gep_14 to i64
  store i64 %4, i64* %R8, align 8, !mcsema_real_eip !6
  %_new_gep_17 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 116
  %5 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %5, align 4, !mcsema_real_eip !7
  %_new_gep_20 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 112
  %EDI.13 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.14 = load i32, i32* %EDI.13, align 4, !mcsema_real_eip !8
  %6 = bitcast i8* %_new_gep_20 to i32*
  store i32 %EDI_val.14, i32* %6, align 4, !mcsema_real_eip !8
  %_new_gep_23 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 104
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.16 = load i64, i64* %XSI, align 8, !mcsema_real_eip !9
  store i64 %RSI_val.16, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !9
  %_new_gep_26 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 84
  %7 = bitcast i8* %_new_gep_26 to i32*
  store i32 0, i32* %7, align 4, !mcsema_real_eip !10
  %_new_gep_29 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 100
  %8 = bitcast i8* %_new_gep_29 to i32*
  store i32 1, i32* %8, align 4, !mcsema_real_eip !11
  %_new_gep_32 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_2, i64 0, i64 96
  %9 = bitcast i8* %_new_gep_32 to i32*
  store i32 1, i32* %9, align 4, !mcsema_real_eip !12
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !13
  store i1 icmp slt (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 0), i1* %SF, align 1, !mcsema_real_eip !13
  store i1 icmp eq (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 0), i1* %ZF, align 1, !mcsema_real_eip !13
  store i1 icmp slt (i64 and (i64 xor (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 ptrtoint (%1* @data_0x3e0 to i64)), i64 xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -9223372036854775797)), i64 0), i1* %OF, align 1, !mcsema_real_eip !13
  %10 = call i8 @llvm.ctpop.i8(i8 trunc (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11) to i8)), !mcsema_real_eip !13
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  store i1 %12, i1* %PF, align 1, !mcsema_real_eip !13
  store i1 icmp ult (i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64 ptrtoint (%1* @data_0x3e0 to i64)), i1* %CF, align 1, !mcsema_real_eip !13
  store i64 add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), i64* %R9, align 8, !mcsema_real_eip !13
  %_address_in_parent_stack_bt_278. = bitcast i8* %_new_gep_29 to i32*
  %_new_load_279 = load i32, i32* %_address_in_parent_stack_bt_278., align 4
  %13 = sext i32 %_new_load_279 to i64, !mcsema_real_eip !173
  %14 = add i64 %13, add (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 11), !mcsema_real_eip !14
  %15 = inttoptr i64 %14 to i8*, !mcsema_real_eip !14
  store i8 88, i8* %15, align 1, !mcsema_real_eip !14
  %EAX_val.28 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !15
  %16 = zext i32 %EAX_val.28 to i64, !mcsema_real_eip !15
  store i64 %16, i64* %XDI, align 8, !mcsema_real_eip !15
  %R8_val.29 = load i64, i64* %R8, align 8, !mcsema_real_eip !16
  store i64 %R8_val.29, i64* %XSI, align 8, !mcsema_real_eip !16
  %RDX_val.32 = load i64, i64* %XDX, align 8, !mcsema_real_eip !17
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.33 = load i64, i64* %XSP, align 8, !mcsema_real_eip !17
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40, i64 -8
  %17 = add i64 %RSP_val.33, -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !17
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_, align 8
  store i64 %17, i64* %XSP, align 8, !mcsema_real_eip !17
  %18 = call x86_64_sysvcc i64 @_read(i64 %16, i64 %R8_val.29, i64 %RDX_val.32)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !17
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -72
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %18, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !18
  %AL.132 = bitcast i64* %XAX to i8*
  br label %block_0x114, !mcsema_real_eip !19

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
  %21 = xor i32 %20, %_new_load_294, !mcsema_real_eip !19
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  store i1 %23, i1* %AF, align 1, !mcsema_real_eip !19
  %24 = trunc i32 %20 to i8, !mcsema_real_eip !19
  %25 = call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !19
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !19
  %28 = icmp eq i32 %20, 0, !mcsema_real_eip !19
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !19
  %29 = icmp slt i32 %20, 0
  store i1 %29, i1* %SF, align 1, !mcsema_real_eip !19
  %30 = icmp ult i32 %_new_load_294, 28, !mcsema_real_eip !19
  store i1 %30, i1* %CF, align 1, !mcsema_real_eip !19
  %31 = and i32 %21, %_new_load_294, !mcsema_real_eip !19
  %32 = icmp slt i32 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !19
  %tmp = xor i1 %29, %32
  br i1 %tmp, label %block_0x11e, label %block_0x2f7, !mcsema_real_eip !20

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
  %34 = zext i32 %_new_load_309 to i64, !mcsema_real_eip !21
  store i64 %34, i64* %XAX, align 8, !mcsema_real_eip !21
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -28
  %35 = bitcast i8* %_new_gep_53 to i32*
  store i32 %_new_load_309, i32* %35, align 4, !mcsema_real_eip !22
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
  %38 = zext i32 %_new_load_324 to i64, !mcsema_real_eip !23
  store i64 %38, i64* %XAX, align 8, !mcsema_real_eip !23
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -32
  %39 = bitcast i8* %_new_gep_59 to i32*
  store i32 %_new_load_324, i32* %39, align 4, !mcsema_real_eip !24
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
  %41 = sext i32 %_new_load_339 to i64, !mcsema_real_eip !25
  store i64 %41, i64* %XCX, align 8, !mcsema_real_eip !25
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
  %45 = add nsw i32 %44, -97, !mcsema_real_eip !27
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %XCX, align 8, !mcsema_real_eip !28
  %47 = add nsw i32 %44, -119
  %48 = xor i32 %47, %45, !mcsema_real_eip !29
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  store i1 %50, i1* %AF, align 1, !mcsema_real_eip !29
  %51 = trunc i32 %47 to i8, !mcsema_real_eip !29
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !29
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  store i1 %54, i1* %PF, align 1, !mcsema_real_eip !29
  %55 = icmp eq i32 %47, 0, !mcsema_real_eip !29
  store i1 %55, i1* %ZF, align 1, !mcsema_real_eip !29
  %56 = icmp slt i8 %_new_load_352, 119
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !29
  %57 = icmp ult i32 %45, 22, !mcsema_real_eip !29
  store i1 %57, i1* %CF, align 1, !mcsema_real_eip !29
  %58 = and i32 %48, %45, !mcsema_real_eip !29
  %59 = icmp slt i32 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !29
  %60 = zext i32 %47 to i64, !mcsema_real_eip !29
  store i64 %60, i64* %XAX, align 8, !mcsema_real_eip !29
  %_new_gep_69 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -80
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %46, i64* %_allin_new_bt_70, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -84
  %EAX_val.66 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !31
  %61 = bitcast i8* %_new_gep_72 to i32*
  store i32 %EAX_val.66, i32* %61, align 4, !mcsema_real_eip !31
  %62 = load i1, i1* %ZF, align 1, !mcsema_real_eip !32
  %63 = load i1, i1* %CF, align 1, !mcsema_real_eip !32
  %.demorgan = or i1 %62, %63
  br i1 %.demorgan, label %block_0x148, label %block_0x18e, !mcsema_real_eip !32

block_0x2f7:                                      ; preds = %block_0x114
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, align 8, !mcsema_real_eip !33
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !34
  %RSI_val.39 = load i64, i64* %XSI, align 8, !mcsema_real_eip !35
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_74 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.40 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %_new_gep_75 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_74, i64 -8
  %64 = add i64 %RSP_val.40, -8
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_76, align 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_, align 8
  store i64 %64, i64* %XSP, align 8, !mcsema_real_eip !35
  %65 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.39)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_243 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_244 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_243, i64 8
  store i8* %_gep_fix_244, i8** %_RSP_ptr_, align 8
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !35
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77, i64 -4
  %66 = bitcast i8* %_new_gep_78 to i32*
  store i32 1, i32* %66, align 4, !mcsema_real_eip !174
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_80, i64 -108
  br label %block_0x312, !mcsema_real_eip !21

block_0x312:                                      ; preds = %block_0x2a7, %block_0x2f7
  %_new_gep_235.sink = phi i8* [ %_new_gep_235, %block_0x2a7 ], [ %_new_gep_81, %block_0x2f7 ]
  %EAX_val.200 = load i32, i32* %EAX.4, align 4
  %67 = bitcast i8* %_new_gep_235.sink to i32*
  store i32 %EAX_val.200, i32* %67, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_84 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_83, i64 -4
  %68 = ptrtoint i8* %_new_gep_84 to i64
  %_offset_above_rbp_356 = sub i64 %68, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond1_n_cond2_363, %_cond4_362
  %_address_in_parent_stack_bt_366..v = select i1 %_cond1_n_cond2_cond3_364, i8* %_pot_address_in_parent_stack_357, i8* %_new_gep_84
  %_address_in_parent_stack_bt_366. = bitcast i8* %_address_in_parent_stack_bt_366..v to i32*
  %_new_load_367 = load i32, i32* %_address_in_parent_stack_bt_366., align 4
  %69 = zext i32 %_new_load_367 to i64, !mcsema_real_eip !36
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !36
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_86 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.68 = load i64, i64* %XSP, align 8, !mcsema_real_eip !37
  %_new_gep_87 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_86, i64 112
  %70 = add i64 %RSP_val.68, 112, !mcsema_real_eip !37
  %_trans_p2i_88 = ptrtoint i8* %_new_gep_87 to i64
  %_trans_p2i_89 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_86 to i64
  %_trans_xor_90 = xor i64 %_trans_p2i_88, %_trans_p2i_89
  %71 = and i64 %_trans_xor_90, 16
  %72 = icmp eq i64 %71, 0
  store i1 %72, i1* %AF, align 1, !mcsema_real_eip !37
  %73 = icmp slt i64 %70, 0
  store i1 %73, i1* %SF, align 1, !mcsema_real_eip !37
  %_trans_icmp_eq_92 = icmp eq i8* %_new_gep_87, null
  store i1 %_trans_icmp_eq_92, i1* %ZF, align 1, !mcsema_real_eip !37
  %74 = xor i64 %_trans_p2i_89, -9223372036854775808, !mcsema_real_eip !37
  %75 = and i64 %_trans_xor_90, %74, !mcsema_real_eip !37
  %76 = icmp slt i64 %75, 0
  store i1 %76, i1* %OF, align 1, !mcsema_real_eip !37
  %_trans_trunc_99 = trunc i64 %_trans_p2i_88 to i8
  %77 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_99), !mcsema_real_eip !37
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  store i1 %79, i1* %PF, align 1, !mcsema_real_eip !37
  %_trans_icmp_ne_101 = icmp ne i64 %_trans_p2i_88, %RSP_val.68
  store i1 %_trans_icmp_ne_101, i1* %CF, align 1, !mcsema_real_eip !37
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_, align 8
  store i64 %70, i64* %XSP, align 8, !mcsema_real_eip !37
  %_offset_above_rbp_371 = sub i64 %_trans_p2i_88, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  %.v19 = select i1 %_cond1_n_cond2_cond3_379, i8* %_pot_address_in_parent_stack_372, i8* %_new_gep_87
  %80 = bitcast i8* %.v19 to i64*
  %_new_load_382 = load i64, i64* %80, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_382 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_382, i64* %XBP, align 8, !mcsema_real_eip !38
  %_new_gep_104 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_86, i64 120
  %81 = add i64 %RSP_val.68, 120, !mcsema_real_eip !38
  store volatile i8* %_new_gep_104, i8** %_RSP_ptr_, align 8
  store i64 %81, i64* %XSP, align 8, !mcsema_real_eip !38
  %_new_gep_106 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_86, i64 128
  %82 = add i64 %RSP_val.68, 128, !mcsema_real_eip !39
  %_ptr_to_int_383 = ptrtoint i8* %_new_gep_104 to i64
  %_offset_above_rbp_386 = sub i64 %_ptr_to_int_383, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond1_n_cond2_393, %_cond4_392
  %_address_in_parent_stack_bt_396._allin_new_bt_107.v = select i1 %_cond1_n_cond2_cond3_394, i8* %_pot_address_in_parent_stack_387, i8* %_new_gep_104
  %_address_in_parent_stack_bt_396._allin_new_bt_107 = bitcast i8* %_address_in_parent_stack_bt_396._allin_new_bt_107.v to i64*
  %_new_load_397 = load i64, i64* %_address_in_parent_stack_bt_396._allin_new_bt_107, align 8
  store i64 %_new_load_397, i64* %XIP, align 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_106, i8** %_RSP_ptr_, align 8
  store i64 %82, i64* %XSP, align 8, !mcsema_real_eip !39
  ret void, !mcsema_real_eip !39

block_0x148:                                      ; preds = %block_0x11e
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_108 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_109 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_108, i64 -80
  %_ptr_to_int_398 = ptrtoint i8* %_new_gep_109 to i64
  %_offset_above_rbp_401 = sub i64 %_ptr_to_int_398, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_new_gep_109, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_new_gep_109, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_new_gep_109, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  %_address_in_parent_stack_bt_411._allin_new_bt_110.v = select i1 %_cond1_n_cond2_cond3_409, i8* %_pot_address_in_parent_stack_402, i8* %_new_gep_109
  %_address_in_parent_stack_bt_411._allin_new_bt_110 = bitcast i8* %_address_in_parent_stack_bt_411._allin_new_bt_110.v to i64*
  %_new_load_412 = load i64, i64* %_address_in_parent_stack_bt_411._allin_new_bt_110, align 8
  store i64 %_new_load_412, i64* %XAX, align 8, !mcsema_real_eip !40
  %83 = shl i64 %_new_load_412, 3
  %84 = add i64 %83, ptrtoint (%0* @data_0x320 to i64), !mcsema_real_eip !41
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !41
  %_ptr_bt_415 = inttoptr i64 %84 to i8*
  %_offset_above_rbp_416 = sub i64 %84, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_ptr_bt_415, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_ptr_bt_415, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_ptr_bt_415, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond4_422, %_cond1_n_cond2_423
  %_address_in_parent_stack_bt_426 = bitcast i8* %_pot_address_in_parent_stack_417 to i64*
  %86 = select i1 %_cond1_n_cond2_cond3_424, i64* %_address_in_parent_stack_bt_426, i64* %85
  %_new_load_427 = load i64, i64* %86, align 8
  store i64 %_new_load_427, i64* %XCX, align 8, !mcsema_real_eip !41
  switch i64 %_new_load_427, label %202 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !42

block_0x18e:                                      ; preds = %block_0x11e, %block_0x148
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, align 8, !mcsema_real_eip !43
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !44
  %RSI_val.73 = load i64, i64* %XSI, align 8, !mcsema_real_eip !45
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_111 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.74 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_112 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_111, i64 -8
  %87 = add i64 %RSP_val.74, -8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_113, align 8, !mcsema_real_eip !45
  store volatile i8* %_new_gep_112, i8** %_RSP_ptr_, align 8
  store i64 %87, i64* %XSP, align 8, !mcsema_real_eip !45
  %88 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64 %RSI_val.73)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_245 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_246 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_245, i64 8
  store i8* %_gep_fix_246, i8** %_RSP_ptr_, align 8
  store i64 %88, i64* %XAX, align 8, !mcsema_real_eip !45
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, align 8, !mcsema_real_eip !46
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_114 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_115 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_114, i64 -88
  %89 = trunc i64 %88 to i32
  %90 = bitcast i8* %_new_gep_115 to i32*
  store i32 %89, i32* %90, align 4, !mcsema_real_eip !47
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !48
  %RDI_val.79 = load i64, i64* %XDI, align 8, !mcsema_real_eip !49
  %RSI_val.80 = load i64, i64* %XSI, align 8, !mcsema_real_eip !49
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_117 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.81 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %_new_gep_118 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_117, i64 -8
  %91 = add i64 %RSP_val.81, -8
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_119, align 8, !mcsema_real_eip !49
  store volatile i8* %_new_gep_118, i8** %_RSP_ptr_, align 8
  store i64 %91, i64* %XSP, align 8, !mcsema_real_eip !49
  %92 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.79, i64 %RSI_val.80)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_247 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_248 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_247, i64 8
  store i8* %_gep_fix_248, i8** %_RSP_ptr_, align 8
  store i64 %92, i64* %XAX, align 8, !mcsema_real_eip !49
  store i64 4294967295, i64* %XDI, align 8, !mcsema_real_eip !50
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_120 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_121 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_120, i64 -92
  %93 = trunc i64 %92 to i32
  %94 = bitcast i8* %_new_gep_121 to i32*
  store i32 %93, i32* %94, align 4, !mcsema_real_eip !51
  %RDI_val.85 = load i64, i64* %XDI, align 8, !mcsema_real_eip !52
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_123 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.86 = load i64, i64* %XSP, align 8, !mcsema_real_eip !52
  %_new_gep_124 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_123, i64 -8
  %95 = add i64 %RSP_val.86, -8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_125, align 8, !mcsema_real_eip !52
  store volatile i8* %_new_gep_124, i8** %_RSP_ptr_, align 8
  store i64 %95, i64* %XSP, align 8, !mcsema_real_eip !52
  %96 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.85)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_249 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_250 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_249, i64 8
  store i8* %_gep_fix_250, i8** %_RSP_ptr_, align 8
  store i64 %96, i64* %XAX, align 8, !mcsema_real_eip !52
  br label %block_0x1c0, !mcsema_real_eip !40

block_0x1c0:                                      ; preds = %block_0x180, %block_0x172, %block_0x164, %block_0x156, %block_0x18e
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !53
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_126 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_127 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_126, i64 -24
  %97 = ptrtoint i8* %_new_gep_127 to i64
  %_offset_above_rbp_431 = sub i64 %97, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_new_gep_127, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_new_gep_127, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_new_gep_127, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  %_address_in_parent_stack_bt_441..v = select i1 %_cond1_n_cond2_cond3_439, i8* %_pot_address_in_parent_stack_432, i8* %_new_gep_127
  %_address_in_parent_stack_bt_441. = bitcast i8* %_address_in_parent_stack_bt_441..v to i32*
  %_new_load_442 = load i32, i32* %_address_in_parent_stack_bt_441., align 4
  %98 = sext i32 %_new_load_442 to i64
  %99 = mul nsw i64 %98, 11
  store i64 %99, i64* %XCX, align 8, !mcsema_real_eip !55
  %100 = add i64 %99, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !56
  %101 = xor i64 %100, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !56
  %102 = xor i64 %100, %99, !mcsema_real_eip !56
  %103 = and i64 %102, 16, !mcsema_real_eip !56
  %104 = icmp ne i64 %103, 0, !mcsema_real_eip !56
  store i1 %104, i1* %AF, align 1, !mcsema_real_eip !56
  %105 = icmp slt i64 %100, 0
  store i1 %105, i1* %SF, align 1, !mcsema_real_eip !56
  %106 = icmp eq i64 %100, 0, !mcsema_real_eip !56
  store i1 %106, i1* %ZF, align 1, !mcsema_real_eip !56
  %107 = xor i64 %99, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !56
  %108 = and i64 %101, %107, !mcsema_real_eip !56
  %109 = icmp slt i64 %108, 0
  store i1 %109, i1* %OF, align 1, !mcsema_real_eip !56
  %110 = trunc i64 %100 to i8, !mcsema_real_eip !56
  %111 = call i8 @llvm.ctpop.i8(i8 %110), !mcsema_real_eip !56
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  store i1 %113, i1* %PF, align 1, !mcsema_real_eip !56
  %114 = icmp ult i64 %100, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !56
  store i1 %114, i1* %CF, align 1, !mcsema_real_eip !56
  store i64 %100, i64* %XAX, align 8, !mcsema_real_eip !56
  %_new_gep_130 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_126, i64 -20
  %115 = ptrtoint i8* %_new_gep_130 to i64
  %_offset_above_rbp_446 = sub i64 %115, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_new_gep_130, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_new_gep_130, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_new_gep_130, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond1_n_cond2_453, %_cond4_452
  %.v6 = select i1 %_cond1_n_cond2_cond3_454, i8* %_pot_address_in_parent_stack_447, i8* %_new_gep_130
  %116 = bitcast i8* %.v6 to i32*
  %_new_load_457 = load i32, i32* %116, align 4
  %117 = sext i32 %_new_load_457 to i64, !mcsema_real_eip !57
  store i64 %117, i64* %XCX, align 8, !mcsema_real_eip !57
  %118 = add i64 %117, %100, !mcsema_real_eip !58
  %119 = inttoptr i64 %118 to i8*, !mcsema_real_eip !58
  %_offset_above_rbp_460 = sub i64 %118, %_local_end_to_int_
  %_pot_address_in_parent_stack_461 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_460
  %_cond1_462 = icmp ugt i8* %119, %_local_stack_end_ptr_
  %_cond2_1_463 = icmp ugt i8* %119, %_parent_stack_end_ptr_
  %_cond2_2_464 = icmp ult i8* %119, %_parent_stack_start_ptr_
  %_cond2_465 = or i1 %_cond2_1_463, %_cond2_2_464
  %_cond4_466 = icmp ule i8* %_pot_address_in_parent_stack_461, %_parent_stack_end_ptr_
  %_cond1_n_cond2_467 = and i1 %_cond1_462, %_cond2_465
  %_cond1_n_cond2_cond3_468 = and i1 %_cond4_466, %_cond1_n_cond2_467
  %_pot_address_in_parent_stack_461. = select i1 %_cond1_n_cond2_cond3_468, i8* %_pot_address_in_parent_stack_461, i8* %119
  %_new_load_470 = load i8, i8* %_pot_address_in_parent_stack_461., align 1
  %120 = sext i8 %_new_load_470 to i64
  %121 = and i64 %120, 4294967295
  store i64 %121, i64* %XDX, align 8, !mcsema_real_eip !58
  %122 = sext i8 %_new_load_470 to i32
  %123 = add nsw i32 %122, -35
  %124 = xor i32 %123, %122, !mcsema_real_eip !59
  %125 = and i32 %124, 16, !mcsema_real_eip !59
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !59
  store i1 %126, i1* %AF, align 1, !mcsema_real_eip !59
  %127 = trunc i32 %123 to i8, !mcsema_real_eip !59
  %128 = call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !59
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  store i1 %130, i1* %PF, align 1, !mcsema_real_eip !59
  %131 = icmp eq i32 %123, 0, !mcsema_real_eip !59
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !59
  %132 = icmp slt i8 %_new_load_470, 35
  store i1 %132, i1* %SF, align 1, !mcsema_real_eip !59
  %133 = icmp ult i8 %_new_load_470, 35
  store i1 %133, i1* %CF, align 1, !mcsema_real_eip !59
  %134 = and i32 %124, %122, !mcsema_real_eip !59
  %135 = icmp slt i32 %134, 0
  store i1 %135, i1* %OF, align 1, !mcsema_real_eip !59
  br i1 %131, label %block_0x1e6, label %block_0x219, !mcsema_real_eip !60

block_0x156:                                      ; preds = %block_0x148
  %_new_gep_133 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_108, i64 -24
  %136 = ptrtoint i8* %_new_gep_133 to i64
  %137 = bitcast i8* %_new_gep_133 to i32*
  %_offset_above_rbp_474 = sub i64 %136, %_local_end_to_int_
  %_pot_address_in_parent_stack_475 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_474
  %_cond1_476 = icmp ugt i8* %_new_gep_133, %_local_stack_end_ptr_
  %_cond2_1_477 = icmp ugt i8* %_new_gep_133, %_parent_stack_end_ptr_
  %_cond2_2_478 = icmp ult i8* %_new_gep_133, %_parent_stack_start_ptr_
  %_cond2_479 = or i1 %_cond2_1_477, %_cond2_2_478
  %_cond4_480 = icmp ule i8* %_pot_address_in_parent_stack_475, %_parent_stack_end_ptr_
  %_cond1_n_cond2_481 = and i1 %_cond1_476, %_cond2_479
  %_cond1_n_cond2_cond3_482 = and i1 %_cond1_n_cond2_481, %_cond4_480
  %_address_in_parent_stack_bt_484 = bitcast i8* %_pot_address_in_parent_stack_475 to i32*
  %_address_in_parent_stack_bt_484. = select i1 %_cond1_n_cond2_cond3_482, i32* %_address_in_parent_stack_bt_484, i32* %137
  %_new_load_485 = load i32, i32* %_address_in_parent_stack_bt_484., align 4
  %138 = add i32 %_new_load_485, -1, !mcsema_real_eip !62
  %139 = xor i32 %138, %_new_load_485, !mcsema_real_eip !62
  %140 = and i32 %139, 16
  %141 = icmp eq i32 %140, 0
  store i1 %141, i1* %AF, align 1, !mcsema_real_eip !62
  %142 = icmp slt i32 %138, 0
  store i1 %142, i1* %SF, align 1, !mcsema_real_eip !62
  %143 = icmp eq i32 %138, 0, !mcsema_real_eip !62
  store i1 %143, i1* %ZF, align 1, !mcsema_real_eip !62
  %144 = and i32 %139, %_new_load_485, !mcsema_real_eip !62
  %145 = icmp slt i32 %144, 0
  store i1 %145, i1* %OF, align 1, !mcsema_real_eip !62
  %146 = trunc i32 %138 to i8, !mcsema_real_eip !62
  %147 = call i8 @llvm.ctpop.i8(i8 %146), !mcsema_real_eip !62
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  store i1 %149, i1* %PF, align 1, !mcsema_real_eip !62
  %150 = icmp ne i32 %_new_load_485, 0
  store i1 %150, i1* %CF, align 1, !mcsema_real_eip !62
  %151 = zext i32 %138 to i64, !mcsema_real_eip !62
  store i64 %151, i64* %XAX, align 8, !mcsema_real_eip !62
  store i32 %138, i32* %137, align 4, !mcsema_real_eip !63
  br label %block_0x1c0, !mcsema_real_eip !64

block_0x164:                                      ; preds = %block_0x148
  %_new_gep_139 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_108, i64 -24
  %152 = ptrtoint i8* %_new_gep_139 to i64
  %153 = bitcast i8* %_new_gep_139 to i32*
  %_offset_above_rbp_489 = sub i64 %152, %_local_end_to_int_
  %_pot_address_in_parent_stack_490 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_489
  %_cond1_491 = icmp ugt i8* %_new_gep_139, %_local_stack_end_ptr_
  %_cond2_1_492 = icmp ugt i8* %_new_gep_139, %_parent_stack_end_ptr_
  %_cond2_2_493 = icmp ult i8* %_new_gep_139, %_parent_stack_start_ptr_
  %_cond2_494 = or i1 %_cond2_1_492, %_cond2_2_493
  %_cond4_495 = icmp ule i8* %_pot_address_in_parent_stack_490, %_parent_stack_end_ptr_
  %_cond1_n_cond2_496 = and i1 %_cond1_491, %_cond2_494
  %_cond1_n_cond2_cond3_497 = and i1 %_cond1_n_cond2_496, %_cond4_495
  %_address_in_parent_stack_bt_499 = bitcast i8* %_pot_address_in_parent_stack_490 to i32*
  %_address_in_parent_stack_bt_499. = select i1 %_cond1_n_cond2_cond3_497, i32* %_address_in_parent_stack_bt_499, i32* %153
  %_new_load_500 = load i32, i32* %_address_in_parent_stack_bt_499., align 4
  %154 = add i32 %_new_load_500, 1, !mcsema_real_eip !66
  %155 = xor i32 %154, %_new_load_500, !mcsema_real_eip !66
  %156 = and i32 %155, 16, !mcsema_real_eip !66
  %157 = icmp ne i32 %156, 0, !mcsema_real_eip !66
  store i1 %157, i1* %AF, align 1, !mcsema_real_eip !66
  %158 = icmp slt i32 %154, 0
  store i1 %158, i1* %SF, align 1, !mcsema_real_eip !66
  %159 = icmp eq i32 %154, 0, !mcsema_real_eip !66
  store i1 %159, i1* %ZF, align 1, !mcsema_real_eip !66
  %160 = xor i32 %_new_load_500, -2147483648, !mcsema_real_eip !66
  %161 = and i32 %155, %160, !mcsema_real_eip !66
  %162 = icmp slt i32 %161, 0
  store i1 %162, i1* %OF, align 1, !mcsema_real_eip !66
  %163 = trunc i32 %154 to i8, !mcsema_real_eip !66
  %164 = call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !66
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  store i1 %166, i1* %PF, align 1, !mcsema_real_eip !66
  %167 = icmp eq i32 %_new_load_500, -1
  store i1 %167, i1* %CF, align 1, !mcsema_real_eip !66
  %168 = zext i32 %154 to i64, !mcsema_real_eip !66
  store i64 %168, i64* %XAX, align 8, !mcsema_real_eip !66
  store i32 %154, i32* %153, align 4, !mcsema_real_eip !67
  br label %block_0x1c0, !mcsema_real_eip !68

block_0x172:                                      ; preds = %block_0x148
  %_new_gep_145 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_108, i64 -20
  %169 = ptrtoint i8* %_new_gep_145 to i64
  %170 = bitcast i8* %_new_gep_145 to i32*
  %_offset_above_rbp_504 = sub i64 %169, %_local_end_to_int_
  %_pot_address_in_parent_stack_505 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_504
  %_cond1_506 = icmp ugt i8* %_new_gep_145, %_local_stack_end_ptr_
  %_cond2_1_507 = icmp ugt i8* %_new_gep_145, %_parent_stack_end_ptr_
  %_cond2_2_508 = icmp ult i8* %_new_gep_145, %_parent_stack_start_ptr_
  %_cond2_509 = or i1 %_cond2_1_507, %_cond2_2_508
  %_cond4_510 = icmp ule i8* %_pot_address_in_parent_stack_505, %_parent_stack_end_ptr_
  %_cond1_n_cond2_511 = and i1 %_cond1_506, %_cond2_509
  %_cond1_n_cond2_cond3_512 = and i1 %_cond1_n_cond2_511, %_cond4_510
  %_address_in_parent_stack_bt_514 = bitcast i8* %_pot_address_in_parent_stack_505 to i32*
  %_address_in_parent_stack_bt_514. = select i1 %_cond1_n_cond2_cond3_512, i32* %_address_in_parent_stack_bt_514, i32* %170
  %_new_load_515 = load i32, i32* %_address_in_parent_stack_bt_514., align 4
  %171 = add i32 %_new_load_515, -1, !mcsema_real_eip !70
  %172 = xor i32 %171, %_new_load_515, !mcsema_real_eip !70
  %173 = and i32 %172, 16
  %174 = icmp eq i32 %173, 0
  store i1 %174, i1* %AF, align 1, !mcsema_real_eip !70
  %175 = icmp slt i32 %171, 0
  store i1 %175, i1* %SF, align 1, !mcsema_real_eip !70
  %176 = icmp eq i32 %171, 0, !mcsema_real_eip !70
  store i1 %176, i1* %ZF, align 1, !mcsema_real_eip !70
  %177 = and i32 %172, %_new_load_515, !mcsema_real_eip !70
  %178 = icmp slt i32 %177, 0
  store i1 %178, i1* %OF, align 1, !mcsema_real_eip !70
  %179 = trunc i32 %171 to i8, !mcsema_real_eip !70
  %180 = call i8 @llvm.ctpop.i8(i8 %179), !mcsema_real_eip !70
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  store i1 %182, i1* %PF, align 1, !mcsema_real_eip !70
  %183 = icmp ne i32 %_new_load_515, 0
  store i1 %183, i1* %CF, align 1, !mcsema_real_eip !70
  %184 = zext i32 %171 to i64, !mcsema_real_eip !70
  store i64 %184, i64* %XAX, align 8, !mcsema_real_eip !70
  store i32 %171, i32* %170, align 4, !mcsema_real_eip !71
  br label %block_0x1c0, !mcsema_real_eip !72

block_0x180:                                      ; preds = %block_0x148
  %_new_gep_151 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_108, i64 -20
  %185 = ptrtoint i8* %_new_gep_151 to i64
  %186 = bitcast i8* %_new_gep_151 to i32*
  %_offset_above_rbp_519 = sub i64 %185, %_local_end_to_int_
  %_pot_address_in_parent_stack_520 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_519
  %_cond1_521 = icmp ugt i8* %_new_gep_151, %_local_stack_end_ptr_
  %_cond2_1_522 = icmp ugt i8* %_new_gep_151, %_parent_stack_end_ptr_
  %_cond2_2_523 = icmp ult i8* %_new_gep_151, %_parent_stack_start_ptr_
  %_cond2_524 = or i1 %_cond2_1_522, %_cond2_2_523
  %_cond4_525 = icmp ule i8* %_pot_address_in_parent_stack_520, %_parent_stack_end_ptr_
  %_cond1_n_cond2_526 = and i1 %_cond1_521, %_cond2_524
  %_cond1_n_cond2_cond3_527 = and i1 %_cond1_n_cond2_526, %_cond4_525
  %_address_in_parent_stack_bt_529 = bitcast i8* %_pot_address_in_parent_stack_520 to i32*
  %_address_in_parent_stack_bt_529. = select i1 %_cond1_n_cond2_cond3_527, i32* %_address_in_parent_stack_bt_529, i32* %186
  %_new_load_530 = load i32, i32* %_address_in_parent_stack_bt_529., align 4
  %187 = add i32 %_new_load_530, 1, !mcsema_real_eip !74
  %188 = xor i32 %187, %_new_load_530, !mcsema_real_eip !74
  %189 = and i32 %188, 16, !mcsema_real_eip !74
  %190 = icmp ne i32 %189, 0, !mcsema_real_eip !74
  store i1 %190, i1* %AF, align 1, !mcsema_real_eip !74
  %191 = icmp slt i32 %187, 0
  store i1 %191, i1* %SF, align 1, !mcsema_real_eip !74
  %192 = icmp eq i32 %187, 0, !mcsema_real_eip !74
  store i1 %192, i1* %ZF, align 1, !mcsema_real_eip !74
  %193 = xor i32 %_new_load_530, -2147483648, !mcsema_real_eip !74
  %194 = and i32 %188, %193, !mcsema_real_eip !74
  %195 = icmp slt i32 %194, 0
  store i1 %195, i1* %OF, align 1, !mcsema_real_eip !74
  %196 = trunc i32 %187 to i8, !mcsema_real_eip !74
  %197 = call i8 @llvm.ctpop.i8(i8 %196), !mcsema_real_eip !74
  %198 = and i8 %197, 1
  %199 = icmp eq i8 %198, 0
  store i1 %199, i1* %PF, align 1, !mcsema_real_eip !74
  %200 = icmp eq i32 %_new_load_530, -1
  store i1 %200, i1* %CF, align 1, !mcsema_real_eip !74
  %201 = zext i32 %187 to i64, !mcsema_real_eip !74
  store i64 %201, i64* %XAX, align 8, !mcsema_real_eip !74
  store i32 %187, i32* %186, align 4, !mcsema_real_eip !75
  br label %block_0x1c0, !mcsema_real_eip !76

; <label>:202:                                    ; preds = %block_0x148
  store i64 %_new_load_427, i64* %XIP, align 8, !mcsema_real_eip !42
  call void @__mcsema_detach_call_value()
  ret void, !mcsema_real_eip !42

block_0x1e6:                                      ; preds = %block_0x1c0
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, align 8, !mcsema_real_eip !77
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !78
  %RSI_val.134 = load i64, i64* %XSI, align 8, !mcsema_real_eip !79
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_156 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.135 = load i64, i64* %XSP, align 8, !mcsema_real_eip !79
  %_new_gep_157 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_156, i64 -8
  %203 = add i64 %RSP_val.135, -8
  %_allin_new_bt_158 = bitcast i8* %_new_gep_157 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_158, align 8, !mcsema_real_eip !79
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_, align 8
  store i64 %203, i64* %XSP, align 8, !mcsema_real_eip !79
  %204 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64 %RSI_val.134)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_253 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_254 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_253, i64 8
  store i8* %_gep_fix_254, i8** %_RSP_ptr_, align 8
  store i64 %204, i64* %XAX, align 8, !mcsema_real_eip !79
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, align 8, !mcsema_real_eip !80
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_159 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_160 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_159, i64 -64
  %205 = ptrtoint i8* %_new_gep_160 to i64
  store i64 %205, i64* %XSI, align 8, !mcsema_real_eip !81
  %_new_gep_163 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_159, i64 -96
  %206 = trunc i64 %204 to i32
  %207 = bitcast i8* %_new_gep_163 to i32*
  store i32 %206, i32* %207, align 4, !mcsema_real_eip !82
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !83
  %RDI_val.141 = load i64, i64* %XDI, align 8, !mcsema_real_eip !84
  %RSI_val.142 = load i64, i64* %XSI, align 8, !mcsema_real_eip !84
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.143 = load i64, i64* %XSP, align 8, !mcsema_real_eip !84
  %_new_gep_166 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 -8
  %208 = add i64 %RSP_val.143, -8
  %_allin_new_bt_167 = bitcast i8* %_new_gep_166 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_167, align 8, !mcsema_real_eip !84
  store volatile i8* %_new_gep_166, i8** %_RSP_ptr_, align 8
  store i64 %208, i64* %XSP, align 8, !mcsema_real_eip !84
  %209 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.141, i64 %RSI_val.142)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_255 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_256 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_255, i64 8
  store i8* %_gep_fix_256, i8** %_RSP_ptr_, align 8
  store i64 %209, i64* %XAX, align 8, !mcsema_real_eip !84
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !85
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !85
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !85
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !85
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !85
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !85
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_168 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_169 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_168, i64 -100
  %210 = trunc i64 %209 to i32
  %211 = bitcast i8* %_new_gep_169 to i32*
  store i32 %210, i32* %211, align 4, !mcsema_real_eip !86
  %RDI_val.151 = load i64, i64* %XDI, align 8, !mcsema_real_eip !87
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_171 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.152 = load i64, i64* %XSP, align 8, !mcsema_real_eip !87
  %_new_gep_172 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_171, i64 -8
  %212 = add i64 %RSP_val.152, -8
  %_allin_new_bt_173 = bitcast i8* %_new_gep_172 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_173, align 8, !mcsema_real_eip !87
  store volatile i8* %_new_gep_172, i8** %_RSP_ptr_, align 8
  store i64 %212, i64* %XSP, align 8, !mcsema_real_eip !87
  %213 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_257 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_258 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_257, i64 8
  store i8* %_gep_fix_258, i8** %_RSP_ptr_, align 8
  store i64 %213, i64* %XAX, align 8, !mcsema_real_eip !87
  br label %block_0x219, !mcsema_real_eip !88

block_0x219:                                      ; preds = %block_0x1c0, %block_0x1e6
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !89
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_174 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_175 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_174, i64 -24
  %214 = ptrtoint i8* %_new_gep_175 to i64
  %_offset_above_rbp_534 = sub i64 %214, %_local_end_to_int_
  %_pot_address_in_parent_stack_535 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_534
  %_cond1_536 = icmp ugt i8* %_new_gep_175, %_local_stack_end_ptr_
  %_cond2_1_537 = icmp ugt i8* %_new_gep_175, %_parent_stack_end_ptr_
  %_cond2_2_538 = icmp ult i8* %_new_gep_175, %_parent_stack_start_ptr_
  %_cond2_539 = or i1 %_cond2_1_537, %_cond2_2_538
  %_cond4_540 = icmp ule i8* %_pot_address_in_parent_stack_535, %_parent_stack_end_ptr_
  %_cond1_n_cond2_541 = and i1 %_cond1_536, %_cond2_539
  %_cond1_n_cond2_cond3_542 = and i1 %_cond1_n_cond2_541, %_cond4_540
  %_address_in_parent_stack_bt_544..v = select i1 %_cond1_n_cond2_cond3_542, i8* %_pot_address_in_parent_stack_535, i8* %_new_gep_175
  %_address_in_parent_stack_bt_544. = bitcast i8* %_address_in_parent_stack_bt_544..v to i32*
  %_new_load_545 = load i32, i32* %_address_in_parent_stack_bt_544., align 4
  %215 = sext i32 %_new_load_545 to i64
  %216 = mul nsw i64 %215, 11
  store i64 %216, i64* %XCX, align 8, !mcsema_real_eip !91
  %217 = add i64 %216, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !92
  %218 = xor i64 %217, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !92
  %219 = xor i64 %217, %216, !mcsema_real_eip !92
  %220 = and i64 %219, 16, !mcsema_real_eip !92
  %221 = icmp ne i64 %220, 0, !mcsema_real_eip !92
  store i1 %221, i1* %AF, align 1, !mcsema_real_eip !92
  %222 = icmp slt i64 %217, 0
  store i1 %222, i1* %SF, align 1, !mcsema_real_eip !92
  %223 = icmp eq i64 %217, 0, !mcsema_real_eip !92
  store i1 %223, i1* %ZF, align 1, !mcsema_real_eip !92
  %224 = xor i64 %216, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !92
  %225 = and i64 %218, %224, !mcsema_real_eip !92
  %226 = icmp slt i64 %225, 0
  store i1 %226, i1* %OF, align 1, !mcsema_real_eip !92
  %227 = trunc i64 %217 to i8, !mcsema_real_eip !92
  %228 = call i8 @llvm.ctpop.i8(i8 %227), !mcsema_real_eip !92
  %229 = and i8 %228, 1
  %230 = icmp eq i8 %229, 0
  store i1 %230, i1* %PF, align 1, !mcsema_real_eip !92
  %231 = icmp ult i64 %217, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !92
  store i1 %231, i1* %CF, align 1, !mcsema_real_eip !92
  store i64 %217, i64* %XAX, align 8, !mcsema_real_eip !92
  %_new_gep_178 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_174, i64 -20
  %232 = ptrtoint i8* %_new_gep_178 to i64
  %233 = bitcast i8* %_new_gep_178 to i32*
  %_offset_above_rbp_549 = sub i64 %232, %_local_end_to_int_
  %_pot_address_in_parent_stack_550 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_549
  %_cond1_551 = icmp ugt i8* %_new_gep_178, %_local_stack_end_ptr_
  %_cond2_1_552 = icmp ugt i8* %_new_gep_178, %_parent_stack_end_ptr_
  %_cond2_2_553 = icmp ult i8* %_new_gep_178, %_parent_stack_start_ptr_
  %_cond2_554 = or i1 %_cond2_1_552, %_cond2_2_553
  %_cond4_555 = icmp ule i8* %_pot_address_in_parent_stack_550, %_parent_stack_end_ptr_
  %_cond1_n_cond2_556 = and i1 %_cond1_551, %_cond2_554
  %_cond1_n_cond2_cond3_557 = and i1 %_cond1_n_cond2_556, %_cond4_555
  %_address_in_parent_stack_bt_559 = bitcast i8* %_pot_address_in_parent_stack_550 to i32*
  %234 = select i1 %_cond1_n_cond2_cond3_557, i32* %_address_in_parent_stack_bt_559, i32* %233
  %_new_load_560 = load i32, i32* %234, align 4
  %235 = sext i32 %_new_load_560 to i64, !mcsema_real_eip !93
  store i64 %235, i64* %XCX, align 8, !mcsema_real_eip !93
  %236 = add i64 %235, %217, !mcsema_real_eip !94
  %237 = inttoptr i64 %236 to i8*, !mcsema_real_eip !94
  %_offset_above_rbp_563 = sub i64 %236, %_local_end_to_int_
  %_pot_address_in_parent_stack_564 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_563
  %_cond1_565 = icmp ugt i8* %237, %_local_stack_end_ptr_
  %_cond2_1_566 = icmp ugt i8* %237, %_parent_stack_end_ptr_
  %_cond2_2_567 = icmp ult i8* %237, %_parent_stack_start_ptr_
  %_cond2_568 = or i1 %_cond2_1_566, %_cond2_2_567
  %_cond4_569 = icmp ule i8* %_pot_address_in_parent_stack_564, %_parent_stack_end_ptr_
  %_cond1_n_cond2_570 = and i1 %_cond1_565, %_cond2_568
  %_cond1_n_cond2_cond3_571 = and i1 %_cond4_569, %_cond1_n_cond2_570
  %_pot_address_in_parent_stack_564. = select i1 %_cond1_n_cond2_cond3_571, i8* %_pot_address_in_parent_stack_564, i8* %237
  %_new_load_573 = load i8, i8* %_pot_address_in_parent_stack_564., align 1
  %238 = sext i8 %_new_load_573 to i64
  %239 = and i64 %238, 4294967295
  store i64 %239, i64* %XDX, align 8, !mcsema_real_eip !94
  %240 = sext i8 %_new_load_573 to i32
  %241 = add nsw i32 %240, -32
  %242 = xor i32 %241, %240, !mcsema_real_eip !95
  %243 = and i32 %242, 16, !mcsema_real_eip !95
  %244 = icmp ne i32 %243, 0, !mcsema_real_eip !95
  store i1 %244, i1* %AF, align 1, !mcsema_real_eip !95
  %245 = trunc i32 %241 to i8, !mcsema_real_eip !95
  %246 = call i8 @llvm.ctpop.i8(i8 %245), !mcsema_real_eip !95
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  store i1 %248, i1* %PF, align 1, !mcsema_real_eip !95
  %249 = icmp eq i32 %241, 0, !mcsema_real_eip !95
  store i1 %249, i1* %ZF, align 1, !mcsema_real_eip !95
  %250 = icmp slt i8 %_new_load_573, 32
  store i1 %250, i1* %SF, align 1, !mcsema_real_eip !95
  %251 = icmp ult i8 %_new_load_573, 32
  store i1 %251, i1* %CF, align 1, !mcsema_real_eip !95
  %252 = and i32 %242, %240, !mcsema_real_eip !95
  %253 = icmp slt i32 %252, 0
  store i1 %253, i1* %OF, align 1, !mcsema_real_eip !95
  br i1 %249, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !96

block_0x23f:                                      ; preds = %block_0x219
  %_new_load_588 = load i32, i32* %_address_in_parent_stack_bt_544., align 4
  %254 = add i32 %_new_load_588, -2
  %255 = xor i32 %254, %_new_load_588, !mcsema_real_eip !97
  %256 = and i32 %255, 16, !mcsema_real_eip !97
  %257 = icmp ne i32 %256, 0, !mcsema_real_eip !97
  store i1 %257, i1* %AF, align 1, !mcsema_real_eip !97
  %258 = trunc i32 %254 to i8, !mcsema_real_eip !97
  %259 = call i8 @llvm.ctpop.i8(i8 %258), !mcsema_real_eip !97
  %260 = and i8 %259, 1
  %261 = icmp eq i8 %260, 0
  store i1 %261, i1* %PF, align 1, !mcsema_real_eip !97
  %262 = icmp eq i32 %254, 0, !mcsema_real_eip !97
  store i1 %262, i1* %ZF, align 1, !mcsema_real_eip !97
  %263 = icmp slt i32 %254, 0
  store i1 %263, i1* %SF, align 1, !mcsema_real_eip !97
  %264 = icmp ult i32 %_new_load_588, 2, !mcsema_real_eip !97
  store i1 %264, i1* %CF, align 1, !mcsema_real_eip !97
  %265 = and i32 %255, %_new_load_588, !mcsema_real_eip !97
  %266 = icmp slt i32 %265, 0
  store i1 %266, i1* %OF, align 1, !mcsema_real_eip !97
  br i1 %262, label %block_0x249, label %block_0x283, !mcsema_real_eip !98

block_0x28f:                                      ; preds = %block_0x279, %block_0x283, %block_0x219
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_183 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_184 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_183, i64 -28
  %267 = ptrtoint i8* %_new_gep_184 to i64
  %_offset_above_rbp_592 = sub i64 %267, %_local_end_to_int_
  %_pot_address_in_parent_stack_593 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_592
  %_cond1_594 = icmp ugt i8* %_new_gep_184, %_local_stack_end_ptr_
  %_cond2_1_595 = icmp ugt i8* %_new_gep_184, %_parent_stack_end_ptr_
  %_cond2_2_596 = icmp ult i8* %_new_gep_184, %_parent_stack_start_ptr_
  %_cond2_597 = or i1 %_cond2_1_595, %_cond2_2_596
  %_cond4_598 = icmp ule i8* %_pot_address_in_parent_stack_593, %_parent_stack_end_ptr_
  %_cond1_n_cond2_599 = and i1 %_cond1_594, %_cond2_597
  %_cond1_n_cond2_cond3_600 = and i1 %_cond1_n_cond2_599, %_cond4_598
  %_address_in_parent_stack_bt_602..v = select i1 %_cond1_n_cond2_cond3_600, i8* %_pot_address_in_parent_stack_593, i8* %_new_gep_184
  %_address_in_parent_stack_bt_602. = bitcast i8* %_address_in_parent_stack_bt_602..v to i32*
  %_new_load_603 = load i32, i32* %_address_in_parent_stack_bt_602., align 4
  %268 = zext i32 %_new_load_603 to i64, !mcsema_real_eip !88
  store i64 %268, i64* %XAX, align 8, !mcsema_real_eip !88
  %_new_gep_187 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_183, i64 -20
  %269 = ptrtoint i8* %_new_gep_187 to i64
  %_offset_above_rbp_607 = sub i64 %269, %_local_end_to_int_
  %_pot_address_in_parent_stack_608 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_607
  %_cond1_609 = icmp ugt i8* %_new_gep_187, %_local_stack_end_ptr_
  %_cond2_1_610 = icmp ugt i8* %_new_gep_187, %_parent_stack_end_ptr_
  %_cond2_2_611 = icmp ult i8* %_new_gep_187, %_parent_stack_start_ptr_
  %_cond2_612 = or i1 %_cond2_1_610, %_cond2_2_611
  %_cond4_613 = icmp ule i8* %_pot_address_in_parent_stack_608, %_parent_stack_end_ptr_
  %_cond1_n_cond2_614 = and i1 %_cond1_609, %_cond2_612
  %_cond1_n_cond2_cond3_615 = and i1 %_cond1_n_cond2_614, %_cond4_613
  %.v15 = select i1 %_cond1_n_cond2_cond3_615, i8* %_pot_address_in_parent_stack_608, i8* %_new_gep_187
  %270 = bitcast i8* %.v15 to i32*
  %_new_load_618 = load i32, i32* %270, align 4
  %271 = sub i32 %_new_load_603, %_new_load_618, !mcsema_real_eip !99
  %272 = xor i32 %271, %_new_load_603, !mcsema_real_eip !99
  %273 = xor i32 %272, %_new_load_618, !mcsema_real_eip !99
  %274 = and i32 %273, 16, !mcsema_real_eip !99
  %275 = icmp ne i32 %274, 0, !mcsema_real_eip !99
  store i1 %275, i1* %AF, align 1, !mcsema_real_eip !99
  %276 = trunc i32 %271 to i8, !mcsema_real_eip !99
  %277 = call i8 @llvm.ctpop.i8(i8 %276), !mcsema_real_eip !99
  %278 = and i8 %277, 1
  %279 = icmp eq i8 %278, 0
  store i1 %279, i1* %PF, align 1, !mcsema_real_eip !99
  %280 = icmp eq i32 %271, 0, !mcsema_real_eip !99
  store i1 %280, i1* %ZF, align 1, !mcsema_real_eip !99
  %281 = icmp slt i32 %271, 0
  store i1 %281, i1* %SF, align 1, !mcsema_real_eip !99
  %282 = icmp ult i32 %_new_load_603, %_new_load_618, !mcsema_real_eip !99
  store i1 %282, i1* %CF, align 1, !mcsema_real_eip !99
  %283 = xor i32 %_new_load_618, %_new_load_603, !mcsema_real_eip !99
  %284 = and i32 %272, %283, !mcsema_real_eip !99
  %285 = icmp slt i32 %284, 0
  store i1 %285, i1* %OF, align 1, !mcsema_real_eip !99
  br i1 %280, label %block_0x29b, label %block_0x28f.block_0x2c7_crit_edge, !mcsema_real_eip !100

block_0x28f.block_0x2c7_crit_edge:                ; preds = %block_0x28f
  %.pre = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_183, i64 -24
  %.pre20 = ptrtoint i8* %.pre to i64
  %.pre21 = sub i64 %.pre20, %_local_end_to_int_
  %.pre22 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %.pre21
  br label %block_0x2c7

block_0x29b:                                      ; preds = %block_0x28f
  %_new_gep_190 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_183, i64 -32
  %286 = ptrtoint i8* %_new_gep_190 to i64
  %_offset_above_rbp_622 = sub i64 %286, %_local_end_to_int_
  %_pot_address_in_parent_stack_623 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_622
  %_cond1_624 = icmp ugt i8* %_new_gep_190, %_local_stack_end_ptr_
  %_cond2_1_625 = icmp ugt i8* %_new_gep_190, %_parent_stack_end_ptr_
  %_cond2_2_626 = icmp ult i8* %_new_gep_190, %_parent_stack_start_ptr_
  %_cond2_627 = or i1 %_cond2_1_625, %_cond2_2_626
  %_cond4_628 = icmp ule i8* %_pot_address_in_parent_stack_623, %_parent_stack_end_ptr_
  %_cond1_n_cond2_629 = and i1 %_cond1_624, %_cond2_627
  %_cond1_n_cond2_cond3_630 = and i1 %_cond1_n_cond2_629, %_cond4_628
  %_address_in_parent_stack_bt_632..v = select i1 %_cond1_n_cond2_cond3_630, i8* %_pot_address_in_parent_stack_623, i8* %_new_gep_190
  %_address_in_parent_stack_bt_632. = bitcast i8* %_address_in_parent_stack_bt_632..v to i32*
  %_new_load_633 = load i32, i32* %_address_in_parent_stack_bt_632., align 4
  %287 = zext i32 %_new_load_633 to i64, !mcsema_real_eip !101
  store i64 %287, i64* %XAX, align 8, !mcsema_real_eip !101
  %_new_gep_193 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_183, i64 -24
  %288 = ptrtoint i8* %_new_gep_193 to i64
  %_offset_above_rbp_637 = sub i64 %288, %_local_end_to_int_
  %_pot_address_in_parent_stack_638 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_637
  %_cond1_639 = icmp ugt i8* %_new_gep_193, %_local_stack_end_ptr_
  %_cond2_1_640 = icmp ugt i8* %_new_gep_193, %_parent_stack_end_ptr_
  %_cond2_2_641 = icmp ult i8* %_new_gep_193, %_parent_stack_start_ptr_
  %_cond2_642 = or i1 %_cond2_1_640, %_cond2_2_641
  %_cond4_643 = icmp ule i8* %_pot_address_in_parent_stack_638, %_parent_stack_end_ptr_
  %_cond1_n_cond2_644 = and i1 %_cond1_639, %_cond2_642
  %_cond1_n_cond2_cond3_645 = and i1 %_cond1_n_cond2_644, %_cond4_643
  %.v17 = select i1 %_cond1_n_cond2_cond3_645, i8* %_pot_address_in_parent_stack_638, i8* %_new_gep_193
  %289 = bitcast i8* %.v17 to i32*
  %_new_load_648 = load i32, i32* %289, align 4
  %290 = sub i32 %_new_load_633, %_new_load_648, !mcsema_real_eip !102
  %291 = xor i32 %290, %_new_load_633, !mcsema_real_eip !102
  %292 = xor i32 %291, %_new_load_648, !mcsema_real_eip !102
  %293 = and i32 %292, 16, !mcsema_real_eip !102
  %294 = icmp ne i32 %293, 0, !mcsema_real_eip !102
  store i1 %294, i1* %AF, align 1, !mcsema_real_eip !102
  %295 = trunc i32 %290 to i8, !mcsema_real_eip !102
  %296 = call i8 @llvm.ctpop.i8(i8 %295), !mcsema_real_eip !102
  %297 = and i8 %296, 1
  %298 = icmp eq i8 %297, 0
  store i1 %298, i1* %PF, align 1, !mcsema_real_eip !102
  %299 = icmp eq i32 %290, 0, !mcsema_real_eip !102
  store i1 %299, i1* %ZF, align 1, !mcsema_real_eip !102
  %300 = icmp slt i32 %290, 0
  store i1 %300, i1* %SF, align 1, !mcsema_real_eip !102
  %301 = icmp ult i32 %_new_load_633, %_new_load_648, !mcsema_real_eip !102
  store i1 %301, i1* %CF, align 1, !mcsema_real_eip !102
  %302 = xor i32 %_new_load_648, %_new_load_633, !mcsema_real_eip !102
  %303 = and i32 %291, %302, !mcsema_real_eip !102
  %304 = icmp slt i32 %303, 0
  store i1 %304, i1* %OF, align 1, !mcsema_real_eip !102
  br i1 %299, label %block_0x2a7, label %block_0x2c7, !mcsema_real_eip !103

block_0x2c7:                                      ; preds = %block_0x28f.block_0x2c7_crit_edge, %block_0x29b
  %_pot_address_in_parent_stack_653.pre-phi = phi i8* [ %.pre22, %block_0x28f.block_0x2c7_crit_edge ], [ %_pot_address_in_parent_stack_638, %block_0x29b ]
  %_new_gep_196.pre-phi = phi i8* [ %.pre, %block_0x28f.block_0x2c7_crit_edge ], [ %_new_gep_193, %block_0x29b ]
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !104
  %_cond1_654 = icmp ugt i8* %_new_gep_196.pre-phi, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_new_gep_196.pre-phi, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_new_gep_196.pre-phi, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653.pre-phi, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond1_n_cond2_659, %_cond4_658
  %_address_in_parent_stack_bt_662..v = select i1 %_cond1_n_cond2_cond3_660, i8* %_pot_address_in_parent_stack_653.pre-phi, i8* %_new_gep_196.pre-phi
  %_address_in_parent_stack_bt_662. = bitcast i8* %_address_in_parent_stack_bt_662..v to i32*
  %_new_load_663 = load i32, i32* %_address_in_parent_stack_bt_662., align 4
  %305 = sext i32 %_new_load_663 to i64
  %306 = mul nsw i64 %305, 11
  store i64 %306, i64* %XCX, align 8, !mcsema_real_eip !106
  %307 = add i64 %306, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !107
  %308 = xor i64 %307, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !107
  %309 = xor i64 %307, %306, !mcsema_real_eip !107
  %310 = and i64 %309, 16, !mcsema_real_eip !107
  %311 = icmp ne i64 %310, 0, !mcsema_real_eip !107
  store i1 %311, i1* %AF, align 1, !mcsema_real_eip !107
  %312 = icmp slt i64 %307, 0
  store i1 %312, i1* %SF, align 1, !mcsema_real_eip !107
  %313 = icmp eq i64 %307, 0, !mcsema_real_eip !107
  store i1 %313, i1* %ZF, align 1, !mcsema_real_eip !107
  %314 = xor i64 %306, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !107
  %315 = and i64 %308, %314, !mcsema_real_eip !107
  %316 = icmp slt i64 %315, 0
  store i1 %316, i1* %OF, align 1, !mcsema_real_eip !107
  %317 = trunc i64 %307 to i8, !mcsema_real_eip !107
  %318 = call i8 @llvm.ctpop.i8(i8 %317), !mcsema_real_eip !107
  %319 = and i8 %318, 1
  %320 = icmp eq i8 %319, 0
  store i1 %320, i1* %PF, align 1, !mcsema_real_eip !107
  %321 = icmp ult i64 %307, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !107
  store i1 %321, i1* %CF, align 1, !mcsema_real_eip !107
  store i64 %307, i64* %XAX, align 8, !mcsema_real_eip !107
  %_new_load_678 = load i32, i32* %270, align 4
  %322 = sext i32 %_new_load_678 to i64, !mcsema_real_eip !108
  store i64 %322, i64* %XCX, align 8, !mcsema_real_eip !108
  %323 = add i64 %322, %307, !mcsema_real_eip !109
  %324 = inttoptr i64 %323 to i8*, !mcsema_real_eip !109
  store i8 88, i8* %324, align 1, !mcsema_real_eip !109
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_201 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.165 = load i64, i64* %XSP, align 8, !mcsema_real_eip !110
  %_new_gep_202 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_201, i64 -8
  %325 = add i64 %RSP_val.165, -8
  %_allin_new_bt_203 = bitcast i8* %_new_gep_202 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_203, align 8, !mcsema_real_eip !110
  store volatile i8* %_new_gep_202, i8** %_RSP_ptr_, align 8
  store i64 %325, i64* %XSP, align 8, !mcsema_real_eip !110
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_259 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* nonnull %0, i8* %_new_gep_202, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_259)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_261 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_262 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_261, i64 8
  store i8* %_gep_fix_262, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_204 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_205 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_204, i64 -36
  %326 = ptrtoint i8* %_new_gep_205 to i64
  %327 = bitcast i8* %_new_gep_205 to i32*
  %_offset_above_rbp_682 = sub i64 %326, %_local_end_to_int_
  %_pot_address_in_parent_stack_683 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_682
  %_cond1_684 = icmp ugt i8* %_new_gep_205, %_local_stack_end_ptr_
  %_cond2_1_685 = icmp ugt i8* %_new_gep_205, %_parent_stack_end_ptr_
  %_cond2_2_686 = icmp ult i8* %_new_gep_205, %_parent_stack_start_ptr_
  %_cond2_687 = or i1 %_cond2_1_685, %_cond2_2_686
  %_cond4_688 = icmp ule i8* %_pot_address_in_parent_stack_683, %_parent_stack_end_ptr_
  %_cond1_n_cond2_689 = and i1 %_cond1_684, %_cond2_687
  %_cond1_n_cond2_cond3_690 = and i1 %_cond1_n_cond2_689, %_cond4_688
  %_address_in_parent_stack_bt_692 = bitcast i8* %_pot_address_in_parent_stack_683 to i32*
  %_address_in_parent_stack_bt_692. = select i1 %_cond1_n_cond2_cond3_690, i32* %_address_in_parent_stack_bt_692, i32* %327
  %_new_load_693 = load i32, i32* %_address_in_parent_stack_bt_692., align 4
  %328 = add i32 %_new_load_693, 1, !mcsema_real_eip !112
  %329 = xor i32 %328, %_new_load_693, !mcsema_real_eip !112
  %330 = and i32 %329, 16, !mcsema_real_eip !112
  %331 = icmp ne i32 %330, 0, !mcsema_real_eip !112
  store i1 %331, i1* %AF, align 1, !mcsema_real_eip !112
  %332 = icmp slt i32 %328, 0
  store i1 %332, i1* %SF, align 1, !mcsema_real_eip !112
  %333 = icmp eq i32 %328, 0, !mcsema_real_eip !112
  store i1 %333, i1* %ZF, align 1, !mcsema_real_eip !112
  %334 = xor i32 %_new_load_693, -2147483648, !mcsema_real_eip !112
  %335 = and i32 %329, %334, !mcsema_real_eip !112
  %336 = icmp slt i32 %335, 0
  store i1 %336, i1* %OF, align 1, !mcsema_real_eip !112
  %337 = trunc i32 %328 to i8, !mcsema_real_eip !112
  %338 = call i8 @llvm.ctpop.i8(i8 %337), !mcsema_real_eip !112
  %339 = and i8 %338, 1
  %340 = icmp eq i8 %339, 0
  store i1 %340, i1* %PF, align 1, !mcsema_real_eip !112
  %341 = icmp eq i32 %_new_load_693, -1
  store i1 %341, i1* %CF, align 1, !mcsema_real_eip !112
  %342 = zext i32 %328 to i64, !mcsema_real_eip !112
  store i64 %342, i64* %XDX, align 8, !mcsema_real_eip !112
  store i32 %328, i32* %327, align 4, !mcsema_real_eip !113
  br label %block_0x114, !mcsema_real_eip !114

block_0x249:                                      ; preds = %block_0x23f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !115
  %_new_load_708 = load i32, i32* %_address_in_parent_stack_bt_544., align 4
  %343 = sext i32 %_new_load_708 to i64
  %344 = mul nsw i64 %343, 11
  store i64 %344, i64* %XCX, align 8, !mcsema_real_eip !117
  %345 = add i64 %344, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !118
  %346 = xor i64 %345, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !118
  %347 = xor i64 %345, %344, !mcsema_real_eip !118
  %348 = and i64 %347, 16, !mcsema_real_eip !118
  %349 = icmp ne i64 %348, 0, !mcsema_real_eip !118
  store i1 %349, i1* %AF, align 1, !mcsema_real_eip !118
  %350 = icmp slt i64 %345, 0
  store i1 %350, i1* %SF, align 1, !mcsema_real_eip !118
  %351 = icmp eq i64 %345, 0, !mcsema_real_eip !118
  store i1 %351, i1* %ZF, align 1, !mcsema_real_eip !118
  %352 = xor i64 %344, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !118
  %353 = and i64 %346, %352, !mcsema_real_eip !118
  %354 = icmp slt i64 %353, 0
  store i1 %354, i1* %OF, align 1, !mcsema_real_eip !118
  %355 = trunc i64 %345 to i8, !mcsema_real_eip !118
  %356 = call i8 @llvm.ctpop.i8(i8 %355), !mcsema_real_eip !118
  %357 = and i8 %356, 1
  %358 = icmp eq i8 %357, 0
  store i1 %358, i1* %PF, align 1, !mcsema_real_eip !118
  %359 = icmp ult i64 %345, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !118
  store i1 %359, i1* %CF, align 1, !mcsema_real_eip !118
  store i64 %345, i64* %XAX, align 8, !mcsema_real_eip !118
  %_new_load_723 = load i32, i32* %234, align 4
  %360 = sext i32 %_new_load_723 to i64, !mcsema_real_eip !119
  store i64 %360, i64* %XCX, align 8, !mcsema_real_eip !119
  %361 = add i64 %360, %345, !mcsema_real_eip !120
  %362 = inttoptr i64 %361 to i8*, !mcsema_real_eip !120
  %_offset_above_rbp_726 = sub i64 %361, %_local_end_to_int_
  %_pot_address_in_parent_stack_727 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_726
  %_cond1_728 = icmp ugt i8* %362, %_local_stack_end_ptr_
  %_cond2_1_729 = icmp ugt i8* %362, %_parent_stack_end_ptr_
  %_cond2_2_730 = icmp ult i8* %362, %_parent_stack_start_ptr_
  %_cond2_731 = or i1 %_cond2_1_729, %_cond2_2_730
  %_cond4_732 = icmp ule i8* %_pot_address_in_parent_stack_727, %_parent_stack_end_ptr_
  %_cond1_n_cond2_733 = and i1 %_cond1_728, %_cond2_731
  %_cond1_n_cond2_cond3_734 = and i1 %_cond4_732, %_cond1_n_cond2_733
  %_pot_address_in_parent_stack_727. = select i1 %_cond1_n_cond2_cond3_734, i8* %_pot_address_in_parent_stack_727, i8* %362
  %_new_load_736 = load i8, i8* %_pot_address_in_parent_stack_727., align 1
  %363 = sext i8 %_new_load_736 to i64
  %364 = and i64 %363, 4294967295
  store i64 %364, i64* %XDX, align 8, !mcsema_real_eip !120
  %365 = sext i8 %_new_load_736 to i32
  %366 = add nsw i32 %365, -124
  %367 = xor i32 %366, %365, !mcsema_real_eip !121
  %368 = and i32 %367, 16
  %369 = icmp eq i32 %368, 0
  store i1 %369, i1* %AF, align 1, !mcsema_real_eip !121
  %370 = trunc i32 %366 to i8, !mcsema_real_eip !121
  %371 = call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !121
  %372 = and i8 %371, 1
  %373 = icmp eq i8 %372, 0
  store i1 %373, i1* %PF, align 1, !mcsema_real_eip !121
  %374 = icmp eq i32 %366, 0, !mcsema_real_eip !121
  store i1 %374, i1* %ZF, align 1, !mcsema_real_eip !121
  %375 = icmp slt i8 %_new_load_736, 124
  store i1 %375, i1* %SF, align 1, !mcsema_real_eip !121
  %376 = icmp ult i8 %_new_load_736, 124
  store i1 %376, i1* %CF, align 1, !mcsema_real_eip !121
  %377 = and i32 %367, %365, !mcsema_real_eip !121
  %378 = icmp slt i32 %377, 0
  store i1 %378, i1* %OF, align 1, !mcsema_real_eip !121
  br i1 %374, label %block_0x26f, label %block_0x283, !mcsema_real_eip !122

block_0x283:                                      ; preds = %block_0x249, %block_0x23f, %block_0x279, %block_0x26f
  %_new_gep_217 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_174, i64 -28
  %379 = ptrtoint i8* %_new_gep_217 to i64
  %_offset_above_rbp_740 = sub i64 %379, %_local_end_to_int_
  %_pot_address_in_parent_stack_741 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_740
  %_cond1_742 = icmp ugt i8* %_new_gep_217, %_local_stack_end_ptr_
  %_cond2_1_743 = icmp ugt i8* %_new_gep_217, %_parent_stack_end_ptr_
  %_cond2_2_744 = icmp ult i8* %_new_gep_217, %_parent_stack_start_ptr_
  %_cond2_745 = or i1 %_cond2_1_743, %_cond2_2_744
  %_cond4_746 = icmp ule i8* %_pot_address_in_parent_stack_741, %_parent_stack_end_ptr_
  %_cond1_n_cond2_747 = and i1 %_cond1_742, %_cond2_745
  %_cond1_n_cond2_cond3_748 = and i1 %_cond1_n_cond2_747, %_cond4_746
  %_address_in_parent_stack_bt_750..v = select i1 %_cond1_n_cond2_cond3_748, i8* %_pot_address_in_parent_stack_741, i8* %_new_gep_217
  %_address_in_parent_stack_bt_750. = bitcast i8* %_address_in_parent_stack_bt_750..v to i32*
  %_new_load_751 = load i32, i32* %_address_in_parent_stack_bt_750., align 4
  %380 = zext i32 %_new_load_751 to i64, !mcsema_real_eip !123
  store i64 %380, i64* %XAX, align 8, !mcsema_real_eip !123
  store i32 %_new_load_751, i32* %233, align 4, !mcsema_real_eip !124
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_222 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_223 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_222, i64 -32
  %381 = ptrtoint i8* %_new_gep_223 to i64
  %_offset_above_rbp_755 = sub i64 %381, %_local_end_to_int_
  %_pot_address_in_parent_stack_756 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_755
  %_cond1_757 = icmp ugt i8* %_new_gep_223, %_local_stack_end_ptr_
  %_cond2_1_758 = icmp ugt i8* %_new_gep_223, %_parent_stack_end_ptr_
  %_cond2_2_759 = icmp ult i8* %_new_gep_223, %_parent_stack_start_ptr_
  %_cond2_760 = or i1 %_cond2_1_758, %_cond2_2_759
  %_cond4_761 = icmp ule i8* %_pot_address_in_parent_stack_756, %_parent_stack_end_ptr_
  %_cond1_n_cond2_762 = and i1 %_cond1_757, %_cond2_760
  %_cond1_n_cond2_cond3_763 = and i1 %_cond1_n_cond2_762, %_cond4_761
  %.v14 = select i1 %_cond1_n_cond2_cond3_763, i8* %_pot_address_in_parent_stack_756, i8* %_new_gep_223
  %382 = bitcast i8* %.v14 to i32*
  %_new_load_766 = load i32, i32* %382, align 4
  %383 = zext i32 %_new_load_766 to i64, !mcsema_real_eip !125
  store i64 %383, i64* %XAX, align 8, !mcsema_real_eip !125
  %_new_gep_226 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_222, i64 -24
  %384 = bitcast i8* %_new_gep_226 to i32*
  store i32 %_new_load_766, i32* %384, align 4, !mcsema_real_eip !126
  br label %block_0x28f, !mcsema_real_eip !115

block_0x2a7:                                      ; preds = %block_0x29b
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, align 8, !mcsema_real_eip !127
  store i8 0, i8* %AL.132, align 1, !mcsema_real_eip !128
  %RSI_val.195 = load i64, i64* %XSI, align 8, !mcsema_real_eip !129
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_228 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.196 = load i64, i64* %XSP, align 8, !mcsema_real_eip !129
  %_new_gep_229 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_228, i64 -8
  %385 = add i64 %RSP_val.196, -8
  %_allin_new_bt_230 = bitcast i8* %_new_gep_229 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_230, align 8, !mcsema_real_eip !129
  store volatile i8* %_new_gep_229, i8** %_RSP_ptr_, align 8
  store i64 %385, i64* %XSP, align 8, !mcsema_real_eip !129
  %386 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.195)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_263 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_264 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_263, i64 8
  store i8* %_gep_fix_264, i8** %_RSP_ptr_, align 8
  store i64 %386, i64* %XAX, align 8, !mcsema_real_eip !129
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_231 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_232 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_231, i64 -4
  %387 = bitcast i8* %_new_gep_232 to i32*
  store i32 2, i32* %387, align 4, !mcsema_real_eip !175
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_234 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_235 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_234, i64 -104
  br label %block_0x312, !mcsema_real_eip !130

block_0x26f:                                      ; preds = %block_0x249
  %_new_load_781 = load i32, i32* %234, align 4
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !131
  %388 = trunc i32 %_new_load_781 to i8, !mcsema_real_eip !131
  %389 = call i8 @llvm.ctpop.i8(i8 %388), !mcsema_real_eip !131
  %390 = and i8 %389, 1
  %391 = icmp eq i8 %390, 0
  store i1 %391, i1* %PF, align 1, !mcsema_real_eip !131
  %392 = icmp eq i32 %_new_load_781, 0, !mcsema_real_eip !131
  store i1 %392, i1* %ZF, align 1, !mcsema_real_eip !131
  %393 = icmp slt i32 %_new_load_781, 0
  store i1 %393, i1* %SF, align 1, !mcsema_real_eip !131
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !131
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !131
  %394 = icmp slt i32 %_new_load_781, 1
  br i1 %394, label %block_0x283, label %block_0x279, !mcsema_real_eip !132

block_0x279:                                      ; preds = %block_0x26f
  %_new_load_796 = load i32, i32* %234, align 4
  %395 = add i32 %_new_load_796, -11
  %396 = xor i32 %395, %_new_load_796, !mcsema_real_eip !133
  %397 = and i32 %396, 16, !mcsema_real_eip !133
  %398 = icmp ne i32 %397, 0, !mcsema_real_eip !133
  store i1 %398, i1* %AF, align 1, !mcsema_real_eip !133
  %399 = trunc i32 %395 to i8, !mcsema_real_eip !133
  %400 = call i8 @llvm.ctpop.i8(i8 %399), !mcsema_real_eip !133
  %401 = and i8 %400, 1
  %402 = icmp eq i8 %401, 0
  store i1 %402, i1* %PF, align 1, !mcsema_real_eip !133
  %403 = icmp eq i32 %395, 0, !mcsema_real_eip !133
  store i1 %403, i1* %ZF, align 1, !mcsema_real_eip !133
  %404 = icmp slt i32 %395, 0
  store i1 %404, i1* %SF, align 1, !mcsema_real_eip !133
  %405 = icmp ult i32 %_new_load_796, 11, !mcsema_real_eip !133
  store i1 %405, i1* %CF, align 1, !mcsema_real_eip !133
  %406 = and i32 %396, %_new_load_796, !mcsema_real_eip !133
  %407 = icmp slt i32 %406, 0
  store i1 %407, i1* %OF, align 1, !mcsema_real_eip !133
  %408 = xor i1 %404, %407
  br i1 %408, label %block_0x28f, label %block_0x283, !mcsema_real_eip !134
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [48 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !135
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !135
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !135
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !135
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !135
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !135
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !135
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !135
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !135
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !135
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !135
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !135
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !135
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !135
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !135
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !135
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !135
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !135
  %RSP_val.204 = load i64, i64* %XSP, align 8, !mcsema_real_eip !135
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %1 = add i64 %RSP_val.204, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !136
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.204, -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !137
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !137
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !137
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !137
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !137
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !137
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !137
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 32 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !137
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !137
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !137
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !137
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !138
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %AL.209 = bitcast i64* %XAX to i8*
  br label %block_0xf, !mcsema_real_eip !139

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
  %14 = xor i32 %13, %_new_load_, !mcsema_real_eip !139
  %15 = and i32 %14, 16, !mcsema_real_eip !139
  %16 = icmp ne i32 %15, 0, !mcsema_real_eip !139
  store i1 %16, i1* %AF, align 1, !mcsema_real_eip !139
  %17 = trunc i32 %13 to i8, !mcsema_real_eip !139
  %18 = call i8 @llvm.ctpop.i8(i8 %17), !mcsema_real_eip !139
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  store i1 %20, i1* %PF, align 1, !mcsema_real_eip !139
  %21 = icmp eq i32 %13, 0, !mcsema_real_eip !139
  store i1 %21, i1* %ZF, align 1, !mcsema_real_eip !139
  %22 = icmp slt i32 %13, 0
  store i1 %22, i1* %SF, align 1, !mcsema_real_eip !139
  %23 = icmp ult i32 %_new_load_, 7, !mcsema_real_eip !139
  store i1 %23, i1* %CF, align 1, !mcsema_real_eip !139
  %24 = and i32 %14, %_new_load_, !mcsema_real_eip !139
  %25 = icmp slt i32 %24, 0
  store i1 %25, i1* %OF, align 1, !mcsema_real_eip !139
  %tmp = xor i1 %22, %25
  br i1 %tmp, label %block_0x19, label %block_0x8b, !mcsema_real_eip !140

block_0x19:                                       ; preds = %block_0xf
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_16, i64 -8
  %26 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %26, align 4, !mcsema_real_eip !141
  br label %block_0x20, !mcsema_real_eip !142

block_0x8b:                                       ; preds = %block_0xf
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !135
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, align 8, !mcsema_real_eip !143
  store i8 0, i8* %AL.209, align 1, !mcsema_real_eip !144
  %RSI_val.211 = load i64, i64* %XSI, align 8, !mcsema_real_eip !145
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.212 = load i64, i64* %XSP, align 8, !mcsema_real_eip !145
  %_new_gep_23 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_22, i64 -8
  %27 = add i64 %RSP_val.212, -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !145
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_, align 8
  store i64 %27, i64* %XSP, align 8, !mcsema_real_eip !145
  %28 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.211)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !145
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -20
  %29 = trunc i64 %28 to i32
  %30 = bitcast i8* %_new_gep_26 to i32*
  store i32 %29, i32* %30, align 4, !mcsema_real_eip !146
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.216 = load i64, i64* %XSP, align 8, !mcsema_real_eip !147
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 32
  %31 = add i64 %RSP_val.216, 32, !mcsema_real_eip !147
  %_trans_p2i_30 = ptrtoint i8* %_new_gep_29 to i64
  %_trans_p2i_31 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 to i64
  %_trans_xor_32 = xor i64 %_trans_p2i_30, %_trans_p2i_31
  %32 = and i64 %_trans_xor_32, 16, !mcsema_real_eip !147
  %33 = icmp ne i64 %32, 0, !mcsema_real_eip !147
  store i1 %33, i1* %AF, align 1, !mcsema_real_eip !147
  %34 = icmp slt i64 %31, 0
  store i1 %34, i1* %SF, align 1, !mcsema_real_eip !147
  %_trans_icmp_eq_34 = icmp eq i8* %_new_gep_29, null
  store i1 %_trans_icmp_eq_34, i1* %ZF, align 1, !mcsema_real_eip !147
  %35 = xor i64 %_trans_p2i_31, -9223372036854775808, !mcsema_real_eip !147
  %36 = and i64 %_trans_xor_32, %35, !mcsema_real_eip !147
  %37 = icmp slt i64 %36, 0
  store i1 %37, i1* %OF, align 1, !mcsema_real_eip !147
  %_trans_trunc_41 = trunc i64 %_trans_p2i_30 to i8
  %38 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_41), !mcsema_real_eip !147
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  store i1 %40, i1* %PF, align 1, !mcsema_real_eip !147
  %_trans_icmp_ne_43 = icmp ne i64 %_trans_p2i_30, %RSP_val.216
  store i1 %_trans_icmp_ne_43, i1* %CF, align 1, !mcsema_real_eip !147
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %31, i64* %XSP, align 8, !mcsema_real_eip !147
  %_offset_above_rbp_90 = sub i64 %_trans_p2i_30, %_local_end_to_int_
  %_pot_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_90
  %_cond1_92 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_93 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_94 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_95 = or i1 %_cond2_1_93, %_cond2_2_94
  %_cond4_96 = icmp ule i8* %_pot_address_in_parent_stack_91, %_parent_stack_end_ptr_
  %_cond1_n_cond2_97 = and i1 %_cond1_92, %_cond2_95
  %_cond1_n_cond2_cond3_98 = and i1 %_cond1_n_cond2_97, %_cond4_96
  %_address_in_parent_stack_bt_100._allin_new_bt_45.v = select i1 %_cond1_n_cond2_cond3_98, i8* %_pot_address_in_parent_stack_91, i8* %_new_gep_29
  %_address_in_parent_stack_bt_100._allin_new_bt_45 = bitcast i8* %_address_in_parent_stack_bt_100._allin_new_bt_45.v to i64*
  %_new_load_101 = load i64, i64* %_address_in_parent_stack_bt_100._allin_new_bt_45, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_101 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_101, i64* %XBP, align 8, !mcsema_real_eip !148
  %_new_gep_46 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 40
  %41 = add i64 %RSP_val.216, 40, !mcsema_real_eip !148
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_, align 8
  store i64 %41, i64* %XSP, align 8, !mcsema_real_eip !148
  %_new_gep_48 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 48
  %42 = add i64 %RSP_val.216, 48, !mcsema_real_eip !149
  %_ptr_to_int_102 = ptrtoint i8* %_new_gep_46 to i64
  %_offset_above_rbp_105 = sub i64 %_ptr_to_int_102, %_local_end_to_int_
  %_pot_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_105
  %_cond1_107 = icmp ugt i8* %_new_gep_46, %_local_stack_end_ptr_
  %_cond2_1_108 = icmp ugt i8* %_new_gep_46, %_parent_stack_end_ptr_
  %_cond2_2_109 = icmp ult i8* %_new_gep_46, %_parent_stack_start_ptr_
  %_cond2_110 = or i1 %_cond2_1_108, %_cond2_2_109
  %_cond4_111 = icmp ule i8* %_pot_address_in_parent_stack_106, %_parent_stack_end_ptr_
  %_cond1_n_cond2_112 = and i1 %_cond1_107, %_cond2_110
  %_cond1_n_cond2_cond3_113 = and i1 %_cond1_n_cond2_112, %_cond4_111
  %.v = select i1 %_cond1_n_cond2_cond3_113, i8* %_pot_address_in_parent_stack_106, i8* %_new_gep_46
  %43 = bitcast i8* %.v to i64*
  %_new_load_116 = load i64, i64* %43, align 8
  store i64 %_new_load_116, i64* %XIP, align 8, !mcsema_real_eip !149
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_, align 8
  store i64 %42, i64* %XSP, align 8, !mcsema_real_eip !149
  ret void, !mcsema_real_eip !149

block_0x20:                                       ; preds = %block_0x2a, %block_0x19
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -8
  %44 = ptrtoint i8* %_new_gep_51 to i64
  %_offset_above_rbp_120 = sub i64 %44, %_local_end_to_int_
  %_pot_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_120
  %_cond1_122 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_123 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_124 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_125 = or i1 %_cond2_1_123, %_cond2_2_124
  %_cond4_126 = icmp ule i8* %_pot_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond1_n_cond2_127 = and i1 %_cond1_122, %_cond2_125
  %_cond1_n_cond2_cond3_128 = and i1 %_cond1_n_cond2_127, %_cond4_126
  %_address_in_parent_stack_bt_130..v = select i1 %_cond1_n_cond2_cond3_128, i8* %_pot_address_in_parent_stack_121, i8* %_new_gep_51
  %_address_in_parent_stack_bt_130. = bitcast i8* %_address_in_parent_stack_bt_130..v to i32*
  %_new_load_131 = load i32, i32* %_address_in_parent_stack_bt_130., align 4
  %45 = add i32 %_new_load_131, -11
  %46 = xor i32 %45, %_new_load_131, !mcsema_real_eip !142
  %47 = and i32 %46, 16, !mcsema_real_eip !142
  %48 = icmp ne i32 %47, 0, !mcsema_real_eip !142
  store i1 %48, i1* %AF, align 1, !mcsema_real_eip !142
  %49 = trunc i32 %45 to i8, !mcsema_real_eip !142
  %50 = call i8 @llvm.ctpop.i8(i8 %49), !mcsema_real_eip !142
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  store i1 %52, i1* %PF, align 1, !mcsema_real_eip !142
  %53 = icmp eq i32 %45, 0, !mcsema_real_eip !142
  store i1 %53, i1* %ZF, align 1, !mcsema_real_eip !142
  %54 = icmp slt i32 %45, 0
  store i1 %54, i1* %SF, align 1, !mcsema_real_eip !142
  %55 = icmp ult i32 %_new_load_131, 11, !mcsema_real_eip !142
  store i1 %55, i1* %CF, align 1, !mcsema_real_eip !142
  %56 = and i32 %46, %_new_load_131, !mcsema_real_eip !142
  %57 = icmp slt i32 %56, 0
  store i1 %57, i1* %OF, align 1, !mcsema_real_eip !142
  %tmp2 = xor i1 %54, %57
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_71 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.224 = load i64, i64* %XSP, align 8
  %58 = add i64 %RSP_val.224, -8
  br i1 %tmp2, label %block_0x2a, label %block_0x69, !mcsema_real_eip !150

block_0x2a:                                       ; preds = %block_0x20
  store i64 ptrtoint (%2* @data_0x42d to i64), i64* %XDI, align 8, !mcsema_real_eip !151
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, align 8, !mcsema_real_eip !152
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -4
  %59 = ptrtoint i8* %_new_gep_54 to i64
  %_offset_above_rbp_135 = sub i64 %59, %_local_end_to_int_
  %_pot_address_in_parent_stack_136 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_135
  %_cond1_137 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_138 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_139 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_140 = or i1 %_cond2_1_138, %_cond2_2_139
  %_cond4_141 = icmp ule i8* %_pot_address_in_parent_stack_136, %_parent_stack_end_ptr_
  %_cond1_n_cond2_142 = and i1 %_cond1_137, %_cond2_140
  %_cond1_n_cond2_cond3_143 = and i1 %_cond1_n_cond2_142, %_cond4_141
  %_address_in_parent_stack_bt_145..v = select i1 %_cond1_n_cond2_cond3_143, i8* %_pot_address_in_parent_stack_136, i8* %_new_gep_54
  %_address_in_parent_stack_bt_145. = bitcast i8* %_address_in_parent_stack_bt_145..v to i32*
  %_new_load_146 = load i32, i32* %_address_in_parent_stack_bt_145., align 4
  %60 = sext i32 %_new_load_146 to i64
  %61 = mul nsw i64 %60, 11
  store i64 %61, i64* %XCX, align 8, !mcsema_real_eip !154
  %62 = add i64 %61, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !155
  %63 = xor i64 %62, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !155
  %64 = xor i64 %62, %61, !mcsema_real_eip !155
  %65 = and i64 %64, 16, !mcsema_real_eip !155
  %66 = icmp ne i64 %65, 0, !mcsema_real_eip !155
  store i1 %66, i1* %AF, align 1, !mcsema_real_eip !155
  %67 = icmp slt i64 %62, 0
  store i1 %67, i1* %SF, align 1, !mcsema_real_eip !155
  %68 = icmp eq i64 %62, 0, !mcsema_real_eip !155
  store i1 %68, i1* %ZF, align 1, !mcsema_real_eip !155
  %69 = xor i64 %61, xor (i64 ptrtoint (%1* @data_0x3e0 to i64), i64 -1), !mcsema_real_eip !155
  %70 = and i64 %63, %69, !mcsema_real_eip !155
  %71 = icmp slt i64 %70, 0
  store i1 %71, i1* %OF, align 1, !mcsema_real_eip !155
  %72 = trunc i64 %62 to i8, !mcsema_real_eip !155
  %73 = call i8 @llvm.ctpop.i8(i8 %72), !mcsema_real_eip !155
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  store i1 %75, i1* %PF, align 1, !mcsema_real_eip !155
  %76 = icmp ult i64 %62, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !155
  store i1 %76, i1* %CF, align 1, !mcsema_real_eip !155
  store i64 %62, i64* %XAX, align 8, !mcsema_real_eip !155
  %_new_load_161 = load i32, i32* %_address_in_parent_stack_bt_130., align 4
  %77 = sext i32 %_new_load_161 to i64, !mcsema_real_eip !156
  store i64 %77, i64* %XCX, align 8, !mcsema_real_eip !156
  %78 = add i64 %77, %62, !mcsema_real_eip !157
  %79 = inttoptr i64 %78 to i8*, !mcsema_real_eip !157
  %_offset_above_rbp_164 = sub i64 %78, %_local_end_to_int_
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %79, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %79, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %79, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond4_170, %_cond1_n_cond2_171
  %_pot_address_in_parent_stack_165. = select i1 %_cond1_n_cond2_cond3_172, i8* %_pot_address_in_parent_stack_165, i8* %79
  %_new_load_174 = load i8, i8* %_pot_address_in_parent_stack_165., align 1
  %80 = sext i8 %_new_load_174 to i64
  %81 = and i64 %80, 4294967295
  store i64 %81, i64* %XSI, align 8, !mcsema_real_eip !157
  store i8 0, i8* %AL.209, align 1, !mcsema_real_eip !158
  %_new_gep_60 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_71, i64 -8
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_61, align 8, !mcsema_real_eip !159
  store volatile i8* %_new_gep_60, i8** %_RSP_ptr_, align 8
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !159
  %82 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%2* @data_0x42d to i64), i64 %81)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_83 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_84 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_83, i64 8
  store i8* %_gep_fix_84, i8** %_RSP_ptr_, align 8
  store i64 %82, i64* %XAX, align 8, !mcsema_real_eip !159
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_63 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_62, i64 -12
  %83 = trunc i64 %82 to i32
  %84 = bitcast i8* %_new_gep_63 to i32*
  store i32 %83, i32* %84, align 4, !mcsema_real_eip !160
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_66 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65, i64 -8
  %85 = ptrtoint i8* %_new_gep_66 to i64
  %86 = bitcast i8* %_new_gep_66 to i32*
  %_offset_above_rbp_178 = sub i64 %85, %_local_end_to_int_
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  %_address_in_parent_stack_bt_188 = bitcast i8* %_pot_address_in_parent_stack_179 to i32*
  %87 = select i1 %_cond1_n_cond2_cond3_186, i32* %_address_in_parent_stack_bt_188, i32* %86
  %_new_load_189 = load i32, i32* %87, align 4
  %88 = add i32 %_new_load_189, 1, !mcsema_real_eip !162
  %89 = xor i32 %88, %_new_load_189, !mcsema_real_eip !162
  %90 = and i32 %89, 16, !mcsema_real_eip !162
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !162
  store i1 %91, i1* %AF, align 1, !mcsema_real_eip !162
  %92 = icmp slt i32 %88, 0
  store i1 %92, i1* %SF, align 1, !mcsema_real_eip !162
  %93 = icmp eq i32 %88, 0, !mcsema_real_eip !162
  store i1 %93, i1* %ZF, align 1, !mcsema_real_eip !162
  %94 = xor i32 %_new_load_189, -2147483648, !mcsema_real_eip !162
  %95 = and i32 %89, %94, !mcsema_real_eip !162
  %96 = icmp slt i32 %95, 0
  store i1 %96, i1* %OF, align 1, !mcsema_real_eip !162
  %97 = trunc i32 %88 to i8, !mcsema_real_eip !162
  %98 = call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !162
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  store i1 %100, i1* %PF, align 1, !mcsema_real_eip !162
  %101 = icmp eq i32 %_new_load_189, -1
  store i1 %101, i1* %CF, align 1, !mcsema_real_eip !162
  %102 = zext i32 %88 to i64, !mcsema_real_eip !162
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !162
  store i32 %88, i32* %86, align 4, !mcsema_real_eip !163
  br label %block_0x20, !mcsema_real_eip !164

block_0x69:                                       ; preds = %block_0x20
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, align 8, !mcsema_real_eip !165
  store i8 0, i8* %AL.209, align 1, !mcsema_real_eip !166
  %RSI_val.223 = load i64, i64* %XSI, align 8, !mcsema_real_eip !167
  %_new_gep_72 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_71, i64 -8
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_73, align 8, !mcsema_real_eip !167
  store volatile i8* %_new_gep_72, i8** %_RSP_ptr_, align 8
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !167
  %103 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.223)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_85 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_86 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_85, i64 8
  store i8* %_gep_fix_86, i8** %_RSP_ptr_, align 8
  store i64 %103, i64* %XAX, align 8, !mcsema_real_eip !167
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -16
  %104 = trunc i64 %103 to i32
  %105 = bitcast i8* %_new_gep_75 to i32*
  store i32 %104, i32* %105, align 4, !mcsema_real_eip !168
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77, i64 -4
  %106 = ptrtoint i8* %_new_gep_78 to i64
  %107 = bitcast i8* %_new_gep_78 to i32*
  %_offset_above_rbp_193 = sub i64 %106, %_local_end_to_int_
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  %_address_in_parent_stack_bt_203 = bitcast i8* %_pot_address_in_parent_stack_194 to i32*
  %_address_in_parent_stack_bt_203. = select i1 %_cond1_n_cond2_cond3_201, i32* %_address_in_parent_stack_bt_203, i32* %107
  %_new_load_204 = load i32, i32* %_address_in_parent_stack_bt_203., align 4
  %108 = add i32 %_new_load_204, 1, !mcsema_real_eip !170
  %109 = xor i32 %108, %_new_load_204, !mcsema_real_eip !170
  %110 = and i32 %109, 16, !mcsema_real_eip !170
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !170
  store i1 %111, i1* %AF, align 1, !mcsema_real_eip !170
  %112 = icmp slt i32 %108, 0
  store i1 %112, i1* %SF, align 1, !mcsema_real_eip !170
  %113 = icmp eq i32 %108, 0, !mcsema_real_eip !170
  store i1 %113, i1* %ZF, align 1, !mcsema_real_eip !170
  %114 = xor i32 %_new_load_204, -2147483648, !mcsema_real_eip !170
  %115 = and i32 %109, %114, !mcsema_real_eip !170
  %116 = icmp slt i32 %115, 0
  store i1 %116, i1* %OF, align 1, !mcsema_real_eip !170
  %117 = trunc i32 %108 to i8, !mcsema_real_eip !170
  %118 = call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !170
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  store i1 %120, i1* %PF, align 1, !mcsema_real_eip !170
  %121 = icmp eq i32 %_new_load_204, -1
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !170
  %122 = zext i32 %108 to i64, !mcsema_real_eip !170
  store i64 %122, i64* %XAX, align 8, !mcsema_real_eip !170
  store i32 %108, i32* %107, align 4, !mcsema_real_eip !171
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_16.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0xf, !mcsema_real_eip !172
}

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
!7 = !{i64 207}
!8 = !{i64 214}
!9 = !{i64 217}
!10 = !{i64 221}
!11 = !{i64 228}
!12 = !{i64 235}
!13 = !{i64 250}
!14 = !{i64 257}
!15 = !{i64 262}
!16 = !{i64 264}
!17 = !{i64 267}
!18 = !{i64 272}
!19 = !{i64 276}
!20 = !{i64 280}
!21 = !{i64 286}
!22 = !{i64 289}
!23 = !{i64 292}
!24 = !{i64 295}
!25 = !{i64 298}
!26 = !{i64 302}
!27 = !{i64 307}
!28 = !{i64 310}
!29 = !{i64 312}
!30 = !{i64 315}
!31 = !{i64 319}
!32 = !{i64 322}
!33 = !{i64 759}
!34 = !{i64 769}
!35 = !{i64 771}
!36 = !{i64 786}
!37 = !{i64 789}
!38 = !{i64 793}
!39 = !{i64 794}
!40 = !{i64 328}
!41 = !{i64 332}
!42 = !{i64 340}
!43 = !{i64 398}
!44 = !{i64 408}
!45 = !{i64 410}
!46 = !{i64 415}
!47 = !{i64 425}
!48 = !{i64 428}
!49 = !{i64 430}
!50 = !{i64 435}
!51 = !{i64 440}
!52 = !{i64 443}
!53 = !{i64 448}
!54 = !{i64 458}
!55 = !{i64 462}
!56 = !{i64 466}
!57 = !{i64 469}
!58 = !{i64 473}
!59 = !{i64 477}
!60 = !{i64 480}
!61 = !{i64 342}
!62 = !{i64 345}
!63 = !{i64 348}
!64 = !{i64 351}
!65 = !{i64 356}
!66 = !{i64 359}
!67 = !{i64 362}
!68 = !{i64 365}
!69 = !{i64 370}
!70 = !{i64 373}
!71 = !{i64 376}
!72 = !{i64 379}
!73 = !{i64 384}
!74 = !{i64 387}
!75 = !{i64 390}
!76 = !{i64 393}
!77 = !{i64 486}
!78 = !{i64 496}
!79 = !{i64 498}
!80 = !{i64 503}
!81 = !{i64 513}
!82 = !{i64 517}
!83 = !{i64 520}
!84 = !{i64 522}
!85 = !{i64 527}
!86 = !{i64 529}
!87 = !{i64 532}
!88 = !{i64 655}
!89 = !{i64 537}
!90 = !{i64 547}
!91 = !{i64 551}
!92 = !{i64 555}
!93 = !{i64 558}
!94 = !{i64 562}
!95 = !{i64 566}
!96 = !{i64 569}
!97 = !{i64 575}
!98 = !{i64 579}
!99 = !{i64 658}
!100 = !{i64 661}
!101 = !{i64 667}
!102 = !{i64 670}
!103 = !{i64 673}
!104 = !{i64 711}
!105 = !{i64 721}
!106 = !{i64 725}
!107 = !{i64 729}
!108 = !{i64 732}
!109 = !{i64 736}
!110 = !{i64 740}
!111 = !{i64 745}
!112 = !{i64 748}
!113 = !{i64 751}
!114 = !{i64 754}
!115 = !{i64 585}
!116 = !{i64 595}
!117 = !{i64 599}
!118 = !{i64 603}
!119 = !{i64 606}
!120 = !{i64 610}
!121 = !{i64 614}
!122 = !{i64 617}
!123 = !{i64 643}
!124 = !{i64 646}
!125 = !{i64 649}
!126 = !{i64 652}
!127 = !{i64 679}
!128 = !{i64 689}
!129 = !{i64 691}
!130 = !{i64 706}
!131 = !{i64 623}
!132 = !{i64 627}
!133 = !{i64 633}
!134 = !{i64 637}
!135 = !{i64 0}
!136 = !{i64 1}
!137 = !{i64 4}
!138 = !{i64 8}
!139 = !{i64 15}
!140 = !{i64 19}
!141 = !{i64 25}
!142 = !{i64 32}
!143 = !{i64 139}
!144 = !{i64 149}
!145 = !{i64 151}
!146 = !{i64 156}
!147 = !{i64 159}
!148 = !{i64 163}
!149 = !{i64 164}
!150 = !{i64 36}
!151 = !{i64 42}
!152 = !{i64 52}
!153 = !{i64 62}
!154 = !{i64 66}
!155 = !{i64 70}
!156 = !{i64 73}
!157 = !{i64 77}
!158 = !{i64 81}
!159 = !{i64 83}
!160 = !{i64 88}
!161 = !{i64 91}
!162 = !{i64 94}
!163 = !{i64 97}
!164 = !{i64 100}
!165 = !{i64 105}
!166 = !{i64 115}
!167 = !{i64 117}
!168 = !{i64 122}
!169 = !{i64 125}
!170 = !{i64 128}
!171 = !{i64 131}
!172 = !{i64 134}
!173 = !{i64 253}
!174 = !{i64 776}
!175 = !{i64 696}
