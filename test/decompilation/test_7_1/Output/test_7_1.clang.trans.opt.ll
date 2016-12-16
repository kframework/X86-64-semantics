; ModuleID = 'Output/test_7_1.clang.trans.opt.bc'
source_filename = "Output/test_7_1.clang.bc"
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
module asm "  .globl sub_30;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_30(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb7 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [96 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
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
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.1, -88
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16
  %5 = icmp eq i64 %4, 0
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 80 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !4
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 84
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %14 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %14, align 4, !mcsema_real_eip !6
  %EAX.52 = bitcast i64* %XAX to i32*
  br label %block_0x46, !mcsema_real_eip !7

block_0x46:                                       ; preds = %block_0x50, %entry
  %15 = phi i32 [ %.pre, %block_0x50 ], [ 0, %entry ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_196 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_196.pre, %block_0x50 ], [ %_new_gep_, %entry ]
  %16 = add i32 %15, -10
  %17 = xor i32 %16, %15, !mcsema_real_eip !7
  %18 = and i32 %17, 16, !mcsema_real_eip !7
  %19 = icmp ne i32 %18, 0, !mcsema_real_eip !7
  store i1 %19, i1* %AF, align 1, !mcsema_real_eip !7
  %20 = trunc i32 %16 to i8, !mcsema_real_eip !7
  %21 = call i8 @llvm.ctpop.i8(i8 %20), !mcsema_real_eip !7
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  store i1 %23, i1* %PF, align 1, !mcsema_real_eip !7
  %24 = icmp eq i32 %16, 0, !mcsema_real_eip !7
  store i1 %24, i1* %ZF, align 1, !mcsema_real_eip !7
  %25 = icmp slt i32 %16, 0
  store i1 %25, i1* %SF, align 1, !mcsema_real_eip !7
  %26 = icmp ult i32 %15, 10, !mcsema_real_eip !7
  store i1 %26, i1* %CF, align 1, !mcsema_real_eip !7
  %27 = and i32 %17, %15, !mcsema_real_eip !7
  %28 = icmp slt i32 %27, 0
  store i1 %28, i1* %OF, align 1, !mcsema_real_eip !7
  %tmp = xor i1 %25, %28
  br i1 %tmp, label %block_0x50, label %block_0x6a, !mcsema_real_eip !8

block_0x50:                                       ; preds = %block_0x46
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_196, i64 -52
  %29 = bitcast i8* %_new_gep_20 to i32*
  %30 = load i32, i32* %29, align 4, !mcsema_real_eip !9
  %31 = sext i32 %30 to i64, !mcsema_real_eip !9
  store i64 %31, i64* %XAX, align 8, !mcsema_real_eip !9
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_196, i64 -48
  %32 = shl nsw i64 %31, 2
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_26, i64 %32
  %33 = bitcast i8* %_new_gep_27 to i32*
  store i32 21, i32* %33, align 4, !mcsema_real_eip !10
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2913 = load i8*, i8** %12, align 8
  %_new_gep_30 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2913, i64 -52
  %34 = bitcast i8* %_new_gep_30 to i32*
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !11
  %36 = add i32 %35, 1, !mcsema_real_eip !12
  %37 = xor i32 %36, %35, !mcsema_real_eip !12
  %38 = and i32 %37, 16, !mcsema_real_eip !12
  %39 = icmp ne i32 %38, 0, !mcsema_real_eip !12
  store i1 %39, i1* %AF, align 1, !mcsema_real_eip !12
  %40 = icmp slt i32 %36, 0
  store i1 %40, i1* %SF, align 1, !mcsema_real_eip !12
  %41 = icmp eq i32 %36, 0, !mcsema_real_eip !12
  store i1 %41, i1* %ZF, align 1, !mcsema_real_eip !12
  %42 = xor i32 %35, -2147483648, !mcsema_real_eip !12
  %43 = and i32 %37, %42, !mcsema_real_eip !12
  %44 = icmp slt i32 %43, 0
  store i1 %44, i1* %OF, align 1, !mcsema_real_eip !12
  %45 = trunc i32 %36 to i8, !mcsema_real_eip !12
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !12
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  store i1 %48, i1* %PF, align 1, !mcsema_real_eip !12
  %49 = icmp eq i32 %35, -1
  store i1 %49, i1* %CF, align 1, !mcsema_real_eip !12
  %50 = zext i32 %36 to i64, !mcsema_real_eip !12
  store i64 %50, i64* %XAX, align 8, !mcsema_real_eip !12
  store i32 %36, i32* %34, align 4, !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_196.pre = load i8*, i8** %12, align 8
  %_new_gep_20.phi.trans.insert = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_196.pre, i64 -52
  %.phi.trans.insert = bitcast i8* %_new_gep_20.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 4
  br label %block_0x46, !mcsema_real_eip !14

block_0x6a:                                       ; preds = %block_0x46
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !15
  %_new_gep_36 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_196, i64 -48
  %51 = ptrtoint i8* %_new_gep_36 to i64
  store i64 10, i64* %XDI, align 8, !mcsema_real_eip !16
  store i64 10, i64* %XSI, align 8, !mcsema_real_eip !17
  store i64 10, i64* %XDX, align 8, !mcsema_real_eip !18
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_196, i64 -64
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  store i64 %51, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !19
  %EAX_val.17 = load i32, i32* %EAX.52, align 4, !mcsema_real_eip !20
  %52 = zext i32 %EAX_val.17 to i64, !mcsema_real_eip !20
  store i64 %52, i64* %XCX, align 8, !mcsema_real_eip !20
  store i64 %52, i64* %R8, align 8, !mcsema_real_eip !21
  store i64 %52, i64* %R9, align 8, !mcsema_real_eip !22
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_417 = load i8*, i8** %12, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_417, i64 -64
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %53 = load i64, i64* %_allin_new_bt_43, align 8, !mcsema_real_eip !23
  store i64 %53, i64* %R10, align 8, !mcsema_real_eip !23
  %54 = bitcast i8** %_RSP_ptr_ to i64**
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_4438 = load i64*, i64** %54, align 8
  store i64 %53, i64* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_4438, align 8, !mcsema_real_eip !24
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_47 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.25 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %_new_gep_48 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_47, i64 -8
  %55 = add i64 %RSP_val.25, -8
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !25
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_, align 8
  store i64 %55, i64* %XSP, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_999 = load i8*, i8** %12, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* nonnull %0, i8* %_new_gep_48, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_999)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0xb7 to i64), i64* %XDI, align 8, !mcsema_real_eip !26
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5010 = load i8*, i8** %12, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5010, i64 -56
  %EAX_val.28 = load i32, i32* %EAX.52, align 4, !mcsema_real_eip !27
  %56 = bitcast i8* %_new_gep_51 to i32*
  store i32 %EAX_val.28, i32* %56, align 4, !mcsema_real_eip !27
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5311 = load i8*, i8** %12, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5311, i64 -56
  %57 = bitcast i8* %_new_gep_54 to i32*
  %58 = load i32, i32* %57, align 4, !mcsema_real_eip !28
  %59 = zext i32 %58 to i64, !mcsema_real_eip !28
  store i64 %59, i64* %XSI, align 8, !mcsema_real_eip !28
  %AL.30 = bitcast i64* %XAX to i8*, !mcsema_real_eip !29
  store i8 0, i8* %AL.30, align 1, !mcsema_real_eip !29
  %RDI_val.31 = load i64, i64* %XDI, align 8, !mcsema_real_eip !30
  %RDX_val.33 = load i64, i64* %XDX, align 8, !mcsema_real_eip !30
  %RCX_val.34 = load i64, i64* %XCX, align 8, !mcsema_real_eip !30
  %R8_val.35 = load i64, i64* %R8, align 8, !mcsema_real_eip !30
  %R9_val.36 = load i64, i64* %R9, align 8, !mcsema_real_eip !30
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56 = load i8*, i8** %_RSP_ptr_, align 8
  %_allin_new_bt_57 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56 to i64*
  %60 = load i64, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !30
  %_new_gep_58 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 8
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %61 = load i64, i64* %_allin_new_bt_59, align 8, !mcsema_real_eip !30
  %_new_gep_60 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 16
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %62 = load i64, i64* %_allin_new_bt_61, align 8, !mcsema_real_eip !30
  %_new_gep_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 24
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %63 = load i64, i64* %_allin_new_bt_63, align 8, !mcsema_real_eip !30
  %_new_gep_64 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 32
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %64 = load i64, i64* %_allin_new_bt_65, align 8, !mcsema_real_eip !30
  %_new_gep_66 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 40
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %65 = load i64, i64* %_allin_new_bt_67, align 8, !mcsema_real_eip !30
  %RSP_val.38 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  %_new_gep_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 -8
  %66 = add i64 %RSP_val.38, -8
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_70, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_, align 8
  store i64 %66, i64* %XSP, align 8, !mcsema_real_eip !30
  %67 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.31, i64 %59, i64 %RDX_val.33, i64 %RCX_val.34, i64 %R8_val.35, i64 %R9_val.36, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_101 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_102 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_101, i64 8
  store i8* %_gep_fix_102, i8** %_RSP_ptr_, align 8
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7112 = load i8*, i8** %12, align 8
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7112, i64 -56
  %68 = bitcast i8* %_new_gep_72 to i32*
  %69 = load i32, i32* %68, align 4, !mcsema_real_eip !31
  %70 = zext i32 %69 to i64, !mcsema_real_eip !31
  store i64 %70, i64* %XCX, align 8, !mcsema_real_eip !31
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7112, i64 -68
  %71 = trunc i64 %67 to i32
  %72 = bitcast i8* %_new_gep_75 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !32
  %ECX.43 = bitcast i64* %XCX to i32*, !mcsema_real_eip !33
  %ECX_val.44 = load i32, i32* %ECX.43, align 4, !mcsema_real_eip !33
  %73 = zext i32 %ECX_val.44 to i64, !mcsema_real_eip !33
  store i64 %73, i64* %XAX, align 8, !mcsema_real_eip !33
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_77 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.45 = load i64, i64* %XSP, align 8, !mcsema_real_eip !34
  %_new_gep_78 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_77, i64 80
  %74 = add i64 %RSP_val.45, 80, !mcsema_real_eip !34
  %_trans_p2i_79 = ptrtoint i8* %_new_gep_78 to i64
  %_trans_p2i_80 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_77 to i64
  %_trans_xor_81 = xor i64 %_trans_p2i_79, %_trans_p2i_80
  %75 = and i64 %_trans_xor_81, 16
  %76 = icmp eq i64 %75, 0
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !34
  %77 = icmp slt i64 %74, 0
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !34
  %_trans_icmp_eq_83 = icmp eq i8* %_new_gep_78, null
  store i1 %_trans_icmp_eq_83, i1* %ZF, align 1, !mcsema_real_eip !34
  %78 = xor i64 %_trans_p2i_80, -9223372036854775808, !mcsema_real_eip !34
  %79 = and i64 %_trans_xor_81, %78, !mcsema_real_eip !34
  %80 = icmp slt i64 %79, 0
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !34
  %_trans_trunc_90 = trunc i64 %_trans_p2i_79 to i8
  %81 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_90), !mcsema_real_eip !34
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  store i1 %83, i1* %PF, align 1, !mcsema_real_eip !34
  %_trans_icmp_ne_92 = icmp ne i64 %_trans_p2i_79, %RSP_val.45
  store i1 %_trans_icmp_ne_92, i1* %CF, align 1, !mcsema_real_eip !34
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_, align 8
  store i64 %74, i64* %XSP, align 8, !mcsema_real_eip !34
  %_allin_new_bt_94 = bitcast i8* %_new_gep_78 to i64*
  %84 = load i64, i64* %_allin_new_bt_94, align 8, !mcsema_real_eip !35
  store volatile i64 %84, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %84, i64* %XBP, align 8, !mcsema_real_eip !35
  %_new_gep_95 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_77, i64 88
  %85 = add i64 %RSP_val.45, 88, !mcsema_real_eip !35
  store volatile i8* %_new_gep_95, i8** %_RSP_ptr_, align 8
  store i64 %85, i64* %XSP, align 8, !mcsema_real_eip !35
  %_new_gep_97 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_77, i64 96
  %86 = add i64 %RSP_val.45, 96, !mcsema_real_eip !36
  %_allin_new_bt_98 = bitcast i8* %_new_gep_95 to i64*
  %87 = load i64, i64* %_allin_new_bt_98, align 8, !mcsema_real_eip !36
  store i64 %87, i64* %XIP, align 8, !mcsema_real_eip !36
  store volatile i8* %_new_gep_97, i8** %_RSP_ptr_, align 8
  store i64 %86, i64* %XSP, align 8, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

; Function Attrs: noinline norecurse nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !37
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !37
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !37
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !37
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !37
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !37
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !37
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !37
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !37
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !37
  %RBP_val.57 = load i64, i64* %XBP, align 8, !mcsema_real_eip !37
  %RSP_val.58 = load i64, i64* %XSP, align 8, !mcsema_real_eip !37
  %1 = add i64 %RSP_val.58, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !37
  store i64 %RBP_val.57, i64* %2, align 8, !mcsema_real_eip !37
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !37
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !38
  %3 = add i64 %RSP_val.58, 8, !mcsema_real_eip !39
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !39
  %5 = load i64, i64* %4, align 8, !mcsema_real_eip !39
  store i64 %5, i64* %XAX, align 8, !mcsema_real_eip !39
  %6 = add i64 %RSP_val.58, -12, !mcsema_real_eip !40
  %EDI.62 = bitcast i64* %XDI to i32*, !mcsema_real_eip !40
  %EDI_val.63 = load i32, i32* %EDI.62, align 4, !mcsema_real_eip !40
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !40
  store i32 %EDI_val.63, i32* %7, align 4, !mcsema_real_eip !40
  %RBP_val.64 = load i64, i64* %XBP, align 8, !mcsema_real_eip !41
  %8 = add i64 %RBP_val.64, -8, !mcsema_real_eip !41
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.66 = load i32, i32* %ESI.65, align 4, !mcsema_real_eip !41
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !41
  store i32 %ESI_val.66, i32* %9, align 4, !mcsema_real_eip !41
  %RBP_val.67 = load i64, i64* %XBP, align 8, !mcsema_real_eip !42
  %10 = add i64 %RBP_val.67, -12, !mcsema_real_eip !42
  %EDX.68 = bitcast i64* %XDX to i32*, !mcsema_real_eip !42
  %EDX_val.69 = load i32, i32* %EDX.68, align 4, !mcsema_real_eip !42
  %11 = inttoptr i64 %10 to i32*, !mcsema_real_eip !42
  store i32 %EDX_val.69, i32* %11, align 4, !mcsema_real_eip !42
  %RBP_val.70 = load i64, i64* %XBP, align 8, !mcsema_real_eip !43
  %12 = add i64 %RBP_val.70, -16, !mcsema_real_eip !43
  %ECX.71 = bitcast i64* %XCX to i32*, !mcsema_real_eip !43
  %ECX_val.72 = load i32, i32* %ECX.71, align 4, !mcsema_real_eip !43
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !43
  store i32 %ECX_val.72, i32* %13, align 4, !mcsema_real_eip !43
  %RBP_val.73 = load i64, i64* %XBP, align 8, !mcsema_real_eip !44
  %14 = add i64 %RBP_val.73, -20, !mcsema_real_eip !44
  %R8D.74 = bitcast i64* %R8 to i32*, !mcsema_real_eip !44
  %R8D_val.75 = load i32, i32* %R8D.74, align 4, !mcsema_real_eip !44
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !44
  store i32 %R8D_val.75, i32* %15, align 4, !mcsema_real_eip !44
  %RBP_val.76 = load i64, i64* %XBP, align 8, !mcsema_real_eip !45
  %16 = add i64 %RBP_val.76, -24, !mcsema_real_eip !45
  %R9D.77 = bitcast i64* %R9 to i32*, !mcsema_real_eip !45
  %R9D_val.78 = load i32, i32* %R9D.77, align 4, !mcsema_real_eip !45
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !45
  store i32 %R9D_val.78, i32* %17, align 4, !mcsema_real_eip !45
  %RBP_val.79 = load i64, i64* %XBP, align 8, !mcsema_real_eip !46
  %18 = add i64 %RBP_val.79, -32, !mcsema_real_eip !46
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !46
  %RAX_val.80 = load i64, i64* %XAX, align 8, !mcsema_real_eip !46
  store i64 %RAX_val.80, i64* %19, align 8, !mcsema_real_eip !46
  %RBP_val.81 = load i64, i64* %XBP, align 8, !mcsema_real_eip !47
  %20 = add i64 %RBP_val.81, -32, !mcsema_real_eip !47
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !47
  %22 = load i64, i64* %21, align 8, !mcsema_real_eip !47
  store i64 %22, i64* %XAX, align 8, !mcsema_real_eip !47
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !48
  %24 = load i32, i32* %23, align 4, !mcsema_real_eip !48
  %25 = zext i32 %24 to i64, !mcsema_real_eip !48
  store i64 %25, i64* %XCX, align 8, !mcsema_real_eip !48
  %26 = add i64 %RBP_val.81, -36, !mcsema_real_eip !49
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !49
  store i32 %24, i32* %27, align 4, !mcsema_real_eip !49
  %RBP_val.86 = load i64, i64* %XBP, align 8, !mcsema_real_eip !50
  %28 = add i64 %RBP_val.86, -36, !mcsema_real_eip !50
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !50
  %30 = load i32, i32* %29, align 4, !mcsema_real_eip !50
  %31 = zext i32 %30 to i64, !mcsema_real_eip !50
  store i64 %31, i64* %XAX, align 8, !mcsema_real_eip !50
  %RSP_val.87 = load i64, i64* %XSP, align 8, !mcsema_real_eip !51
  %32 = inttoptr i64 %RSP_val.87 to i64*, !mcsema_real_eip !51
  %33 = load i64, i64* %32, align 8, !mcsema_real_eip !51
  store i64 %33, i64* %XBP, align 8, !mcsema_real_eip !51
  %34 = add i64 %RSP_val.87, 8, !mcsema_real_eip !51
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !51
  %35 = add i64 %RSP_val.87, 16, !mcsema_real_eip !52
  %36 = inttoptr i64 %34 to i64*, !mcsema_real_eip !52
  %37 = load i64, i64* %36, align 8, !mcsema_real_eip !52
  store i64 %37, i64* %XIP, align 8, !mcsema_real_eip !52
  store i64 %35, i64* %XSP, align 8, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [96 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
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
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -88
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 80 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_14 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 84
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %12 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %12, align 4, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %EAX.52 = bitcast i64* %XAX to i32*
  br label %block_0x46, !mcsema_real_eip !7

block_0x46:                                       ; preds = %block_0x50, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19.pre, %block_0x50 ], [ %_new_gep_, %entry ]
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -52
  %13 = ptrtoint i8* %_new_gep_20 to i64
  %_offset_above_rbp_ = sub i64 %13, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_20
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %14 = add i32 %_new_load_, -10
  %15 = xor i32 %14, %_new_load_, !mcsema_real_eip !7
  %16 = and i32 %15, 16, !mcsema_real_eip !7
  %17 = icmp ne i32 %16, 0, !mcsema_real_eip !7
  store i1 %17, i1* %AF, align 1, !mcsema_real_eip !7
  %18 = trunc i32 %14 to i8, !mcsema_real_eip !7
  %19 = call i8 @llvm.ctpop.i8(i8 %18), !mcsema_real_eip !7
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  store i1 %21, i1* %PF, align 1, !mcsema_real_eip !7
  %22 = icmp eq i32 %14, 0, !mcsema_real_eip !7
  store i1 %22, i1* %ZF, align 1, !mcsema_real_eip !7
  %23 = icmp slt i32 %14, 0
  store i1 %23, i1* %SF, align 1, !mcsema_real_eip !7
  %24 = icmp ult i32 %_new_load_, 10, !mcsema_real_eip !7
  store i1 %24, i1* %CF, align 1, !mcsema_real_eip !7
  %25 = and i32 %15, %_new_load_, !mcsema_real_eip !7
  %26 = icmp slt i32 %25, 0
  store i1 %26, i1* %OF, align 1, !mcsema_real_eip !7
  %tmp = xor i1 %23, %26
  br i1 %tmp, label %block_0x50, label %block_0x6a, !mcsema_real_eip !8

block_0x50:                                       ; preds = %block_0x46
  %_new_load_117 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %27 = sext i32 %_new_load_117 to i64, !mcsema_real_eip !9
  store i64 %27, i64* %XAX, align 8, !mcsema_real_eip !9
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -48
  %28 = shl nsw i64 %27, 2
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_26, i64 %28
  %29 = bitcast i8* %_new_gep_27 to i32*
  store i32 21, i32* %29, align 4, !mcsema_real_eip !10
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_30 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_29, i64 -52
  %30 = ptrtoint i8* %_new_gep_30 to i64
  %31 = bitcast i8* %_new_gep_30 to i32*
  %_offset_above_rbp_121 = sub i64 %30, %_local_end_to_int_
  %_pot_address_in_parent_stack_122 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_121
  %_cond1_123 = icmp ugt i8* %_new_gep_30, %_local_stack_end_ptr_
  %_cond2_1_124 = icmp ugt i8* %_new_gep_30, %_parent_stack_end_ptr_
  %_cond2_2_125 = icmp ult i8* %_new_gep_30, %_parent_stack_start_ptr_
  %_cond2_126 = or i1 %_cond2_1_124, %_cond2_2_125
  %_cond4_127 = icmp ule i8* %_pot_address_in_parent_stack_122, %_parent_stack_end_ptr_
  %_cond1_n_cond2_128 = and i1 %_cond1_123, %_cond2_126
  %_cond1_n_cond2_cond3_129 = and i1 %_cond1_n_cond2_128, %_cond4_127
  %_address_in_parent_stack_bt_131 = bitcast i8* %_pot_address_in_parent_stack_122 to i32*
  %32 = select i1 %_cond1_n_cond2_cond3_129, i32* %_address_in_parent_stack_bt_131, i32* %31
  %_new_load_132 = load i32, i32* %32, align 4
  %33 = add i32 %_new_load_132, 1, !mcsema_real_eip !12
  %34 = xor i32 %33, %_new_load_132, !mcsema_real_eip !12
  %35 = and i32 %34, 16, !mcsema_real_eip !12
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !12
  store i1 %36, i1* %AF, align 1, !mcsema_real_eip !12
  %37 = icmp slt i32 %33, 0
  store i1 %37, i1* %SF, align 1, !mcsema_real_eip !12
  %38 = icmp eq i32 %33, 0, !mcsema_real_eip !12
  store i1 %38, i1* %ZF, align 1, !mcsema_real_eip !12
  %39 = xor i32 %_new_load_132, -2147483648, !mcsema_real_eip !12
  %40 = and i32 %34, %39, !mcsema_real_eip !12
  %41 = icmp slt i32 %40, 0
  store i1 %41, i1* %OF, align 1, !mcsema_real_eip !12
  %42 = trunc i32 %33 to i8, !mcsema_real_eip !12
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !12
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  store i1 %45, i1* %PF, align 1, !mcsema_real_eip !12
  %46 = icmp eq i32 %_new_load_132, -1
  store i1 %46, i1* %CF, align 1, !mcsema_real_eip !12
  %47 = zext i32 %33 to i64, !mcsema_real_eip !12
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !12
  store i32 %33, i32* %31, align 4, !mcsema_real_eip !13
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x46, !mcsema_real_eip !14

block_0x6a:                                       ; preds = %block_0x46
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !15
  %_new_gep_36 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -48
  %48 = ptrtoint i8* %_new_gep_36 to i64
  store i64 10, i64* %XDI, align 8, !mcsema_real_eip !16
  store i64 10, i64* %XSI, align 8, !mcsema_real_eip !17
  store i64 10, i64* %XDX, align 8, !mcsema_real_eip !18
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -64
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  store i64 %48, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !19
  %EAX_val.17 = load i32, i32* %EAX.52, align 4, !mcsema_real_eip !20
  %49 = zext i32 %EAX_val.17 to i64, !mcsema_real_eip !20
  store i64 %49, i64* %XCX, align 8, !mcsema_real_eip !20
  store i64 %49, i64* %R8, align 8, !mcsema_real_eip !21
  store i64 %49, i64* %R9, align 8, !mcsema_real_eip !22
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -64
  %_ptr_to_int_133 = ptrtoint i8* %_new_gep_42 to i64
  %_offset_above_rbp_136 = sub i64 %_ptr_to_int_133, %_local_end_to_int_
  %_pot_address_in_parent_stack_137 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_136
  %_cond1_138 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_139 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_140 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_141 = or i1 %_cond2_1_139, %_cond2_2_140
  %_cond4_142 = icmp ule i8* %_pot_address_in_parent_stack_137, %_parent_stack_end_ptr_
  %_cond1_n_cond2_143 = and i1 %_cond1_138, %_cond2_141
  %_cond1_n_cond2_cond3_144 = and i1 %_cond1_n_cond2_143, %_cond4_142
  %_address_in_parent_stack_bt_146._allin_new_bt_43.v = select i1 %_cond1_n_cond2_cond3_144, i8* %_pot_address_in_parent_stack_137, i8* %_new_gep_42
  %_address_in_parent_stack_bt_146._allin_new_bt_43 = bitcast i8* %_address_in_parent_stack_bt_146._allin_new_bt_43.v to i64*
  %_new_load_147 = load i64, i64* %_address_in_parent_stack_bt_146._allin_new_bt_43, align 8
  store i64 %_new_load_147, i64* %R10, align 8, !mcsema_real_eip !23
  %50 = bitcast i8** %_RSP_ptr_ to i64**
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_4427 = load i64*, i64** %50, align 8
  store i64 %_new_load_147, i64* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_4427, align 8, !mcsema_real_eip !24
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_47 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.25 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %_new_gep_48 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_47, i64 -8
  %51 = add i64 %RSP_val.25, -8
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !25
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_, align 8
  store i64 %51, i64* %XSP, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_99 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* nonnull %0, i8* %_new_gep_48, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_99)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0xb7 to i64), i64* %XDI, align 8, !mcsema_real_eip !26
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -56
  %EAX_val.28 = load i32, i32* %EAX.52, align 4, !mcsema_real_eip !27
  %52 = bitcast i8* %_new_gep_51 to i32*
  store i32 %EAX_val.28, i32* %52, align 4, !mcsema_real_eip !27
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -56
  %53 = ptrtoint i8* %_new_gep_54 to i64
  %_offset_above_rbp_151 = sub i64 %53, %_local_end_to_int_
  %_pot_address_in_parent_stack_152 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_151
  %_cond1_153 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_154 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_155 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_156 = or i1 %_cond2_1_154, %_cond2_2_155
  %_cond4_157 = icmp ule i8* %_pot_address_in_parent_stack_152, %_parent_stack_end_ptr_
  %_cond1_n_cond2_158 = and i1 %_cond1_153, %_cond2_156
  %_cond1_n_cond2_cond3_159 = and i1 %_cond1_n_cond2_158, %_cond4_157
  %.v = select i1 %_cond1_n_cond2_cond3_159, i8* %_pot_address_in_parent_stack_152, i8* %_new_gep_54
  %54 = bitcast i8* %.v to i32*
  %_new_load_162 = load i32, i32* %54, align 4
  %55 = zext i32 %_new_load_162 to i64, !mcsema_real_eip !28
  store i64 %55, i64* %XSI, align 8, !mcsema_real_eip !28
  %AL.30 = bitcast i64* %XAX to i8*, !mcsema_real_eip !29
  store i8 0, i8* %AL.30, align 1, !mcsema_real_eip !29
  %RDI_val.31 = load i64, i64* %XDI, align 8, !mcsema_real_eip !30
  %RDX_val.33 = load i64, i64* %XDX, align 8, !mcsema_real_eip !30
  %RCX_val.34 = load i64, i64* %XCX, align 8, !mcsema_real_eip !30
  %R8_val.35 = load i64, i64* %R8, align 8, !mcsema_real_eip !30
  %R9_val.36 = load i64, i64* %R9, align 8, !mcsema_real_eip !30
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_163 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56 to i64
  %_offset_above_rbp_166 = sub i64 %_ptr_to_int_163, %_local_end_to_int_
  %_pot_address_in_parent_stack_167 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_166
  %_cond1_168 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, %_local_stack_end_ptr_
  %_cond2_1_169 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, %_parent_stack_end_ptr_
  %_cond2_2_170 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, %_parent_stack_start_ptr_
  %_cond2_171 = or i1 %_cond2_1_169, %_cond2_2_170
  %_cond4_172 = icmp ule i8* %_pot_address_in_parent_stack_167, %_parent_stack_end_ptr_
  %_cond1_n_cond2_173 = and i1 %_cond1_168, %_cond2_171
  %_cond1_n_cond2_cond3_174 = and i1 %_cond1_n_cond2_173, %_cond4_172
  %_address_in_parent_stack_bt_176._allin_new_bt_57.v = select i1 %_cond1_n_cond2_cond3_174, i8* %_pot_address_in_parent_stack_167, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56
  %_address_in_parent_stack_bt_176._allin_new_bt_57 = bitcast i8* %_address_in_parent_stack_bt_176._allin_new_bt_57.v to i64*
  %_new_load_177 = load i64, i64* %_address_in_parent_stack_bt_176._allin_new_bt_57, align 8
  %_new_gep_58 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 8
  %_ptr_to_int_178 = ptrtoint i8* %_new_gep_58 to i64
  %_offset_above_rbp_181 = sub i64 %_ptr_to_int_178, %_local_end_to_int_
  %_pot_address_in_parent_stack_182 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_181
  %_cond1_183 = icmp ugt i8* %_new_gep_58, %_local_stack_end_ptr_
  %_cond2_1_184 = icmp ugt i8* %_new_gep_58, %_parent_stack_end_ptr_
  %_cond2_2_185 = icmp ult i8* %_new_gep_58, %_parent_stack_start_ptr_
  %_cond2_186 = or i1 %_cond2_1_184, %_cond2_2_185
  %_cond4_187 = icmp ule i8* %_pot_address_in_parent_stack_182, %_parent_stack_end_ptr_
  %_cond1_n_cond2_188 = and i1 %_cond1_183, %_cond2_186
  %_cond1_n_cond2_cond3_189 = and i1 %_cond1_n_cond2_188, %_cond4_187
  %.v3 = select i1 %_cond1_n_cond2_cond3_189, i8* %_pot_address_in_parent_stack_182, i8* %_new_gep_58
  %56 = bitcast i8* %.v3 to i64*
  %_new_load_192 = load i64, i64* %56, align 8
  %_new_gep_60 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 16
  %_ptr_to_int_193 = ptrtoint i8* %_new_gep_60 to i64
  %_offset_above_rbp_196 = sub i64 %_ptr_to_int_193, %_local_end_to_int_
  %_pot_address_in_parent_stack_197 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_196
  %_cond1_198 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_199 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_200 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_201 = or i1 %_cond2_1_199, %_cond2_2_200
  %_cond4_202 = icmp ule i8* %_pot_address_in_parent_stack_197, %_parent_stack_end_ptr_
  %_cond1_n_cond2_203 = and i1 %_cond1_198, %_cond2_201
  %_cond1_n_cond2_cond3_204 = and i1 %_cond1_n_cond2_203, %_cond4_202
  %_address_in_parent_stack_bt_206._allin_new_bt_61.v = select i1 %_cond1_n_cond2_cond3_204, i8* %_pot_address_in_parent_stack_197, i8* %_new_gep_60
  %_address_in_parent_stack_bt_206._allin_new_bt_61 = bitcast i8* %_address_in_parent_stack_bt_206._allin_new_bt_61.v to i64*
  %_new_load_207 = load i64, i64* %_address_in_parent_stack_bt_206._allin_new_bt_61, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 24
  %_ptr_to_int_208 = ptrtoint i8* %_new_gep_62 to i64
  %_offset_above_rbp_211 = sub i64 %_ptr_to_int_208, %_local_end_to_int_
  %_pot_address_in_parent_stack_212 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_211
  %_cond1_213 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_214 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_215 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_216 = or i1 %_cond2_1_214, %_cond2_2_215
  %_cond4_217 = icmp ule i8* %_pot_address_in_parent_stack_212, %_parent_stack_end_ptr_
  %_cond1_n_cond2_218 = and i1 %_cond1_213, %_cond2_216
  %_cond1_n_cond2_cond3_219 = and i1 %_cond1_n_cond2_218, %_cond4_217
  %.v4 = select i1 %_cond1_n_cond2_cond3_219, i8* %_pot_address_in_parent_stack_212, i8* %_new_gep_62
  %57 = bitcast i8* %.v4 to i64*
  %_new_load_222 = load i64, i64* %57, align 8
  %_new_gep_64 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 32
  %_ptr_to_int_223 = ptrtoint i8* %_new_gep_64 to i64
  %_offset_above_rbp_226 = sub i64 %_ptr_to_int_223, %_local_end_to_int_
  %_pot_address_in_parent_stack_227 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_226
  %_cond1_228 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_229 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_230 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_231 = or i1 %_cond2_1_229, %_cond2_2_230
  %_cond4_232 = icmp ule i8* %_pot_address_in_parent_stack_227, %_parent_stack_end_ptr_
  %_cond1_n_cond2_233 = and i1 %_cond1_228, %_cond2_231
  %_cond1_n_cond2_cond3_234 = and i1 %_cond1_n_cond2_233, %_cond4_232
  %_address_in_parent_stack_bt_236._allin_new_bt_65.v = select i1 %_cond1_n_cond2_cond3_234, i8* %_pot_address_in_parent_stack_227, i8* %_new_gep_64
  %_address_in_parent_stack_bt_236._allin_new_bt_65 = bitcast i8* %_address_in_parent_stack_bt_236._allin_new_bt_65.v to i64*
  %_new_load_237 = load i64, i64* %_address_in_parent_stack_bt_236._allin_new_bt_65, align 8
  %_new_gep_66 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 40
  %_ptr_to_int_238 = ptrtoint i8* %_new_gep_66 to i64
  %_offset_above_rbp_241 = sub i64 %_ptr_to_int_238, %_local_end_to_int_
  %_pot_address_in_parent_stack_242 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_241
  %_cond1_243 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_244 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_245 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_246 = or i1 %_cond2_1_244, %_cond2_2_245
  %_cond4_247 = icmp ule i8* %_pot_address_in_parent_stack_242, %_parent_stack_end_ptr_
  %_cond1_n_cond2_248 = and i1 %_cond1_243, %_cond2_246
  %_cond1_n_cond2_cond3_249 = and i1 %_cond1_n_cond2_248, %_cond4_247
  %.v5 = select i1 %_cond1_n_cond2_cond3_249, i8* %_pot_address_in_parent_stack_242, i8* %_new_gep_66
  %58 = bitcast i8* %.v5 to i64*
  %_new_load_252 = load i64, i64* %58, align 8
  %RSP_val.38 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  %_new_gep_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_56, i64 -8
  %59 = add i64 %RSP_val.38, -8
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_70, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_, align 8
  store i64 %59, i64* %XSP, align 8, !mcsema_real_eip !30
  %60 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.31, i64 %55, i64 %RDX_val.33, i64 %RCX_val.34, i64 %R8_val.35, i64 %R9_val.36, i64 %_new_load_177, i64 %_new_load_192, i64 %_new_load_207, i64 %_new_load_222, i64 %_new_load_237, i64 %_new_load_252)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_101 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_102 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_101, i64 8
  store i8* %_gep_fix_102, i8** %_RSP_ptr_, align 8
  store i64 %60, i64* %XAX, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -56
  %61 = ptrtoint i8* %_new_gep_72 to i64
  %_offset_above_rbp_256 = sub i64 %61, %_local_end_to_int_
  %_pot_address_in_parent_stack_257 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_256
  %_cond1_258 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond2_1_259 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_2_260 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_261 = or i1 %_cond2_1_259, %_cond2_2_260
  %_cond4_262 = icmp ule i8* %_pot_address_in_parent_stack_257, %_parent_stack_end_ptr_
  %_cond1_n_cond2_263 = and i1 %_cond1_258, %_cond2_261
  %_cond1_n_cond2_cond3_264 = and i1 %_cond1_n_cond2_263, %_cond4_262
  %_address_in_parent_stack_bt_266..v = select i1 %_cond1_n_cond2_cond3_264, i8* %_pot_address_in_parent_stack_257, i8* %_new_gep_72
  %_address_in_parent_stack_bt_266. = bitcast i8* %_address_in_parent_stack_bt_266..v to i32*
  %_new_load_267 = load i32, i32* %_address_in_parent_stack_bt_266., align 4
  %62 = zext i32 %_new_load_267 to i64, !mcsema_real_eip !31
  store i64 %62, i64* %XCX, align 8, !mcsema_real_eip !31
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -68
  %63 = trunc i64 %60 to i32
  %64 = bitcast i8* %_new_gep_75 to i32*
  store i32 %63, i32* %64, align 4, !mcsema_real_eip !32
  %ECX.43 = bitcast i64* %XCX to i32*, !mcsema_real_eip !33
  %ECX_val.44 = load i32, i32* %ECX.43, align 4, !mcsema_real_eip !33
  %65 = zext i32 %ECX_val.44 to i64, !mcsema_real_eip !33
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !33
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_77 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.45 = load i64, i64* %XSP, align 8, !mcsema_real_eip !34
  %_new_gep_78 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_77, i64 80
  %66 = add i64 %RSP_val.45, 80, !mcsema_real_eip !34
  %_trans_p2i_79 = ptrtoint i8* %_new_gep_78 to i64
  %_trans_p2i_80 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_77 to i64
  %_trans_xor_81 = xor i64 %_trans_p2i_79, %_trans_p2i_80
  %67 = and i64 %_trans_xor_81, 16
  %68 = icmp eq i64 %67, 0
  store i1 %68, i1* %AF, align 1, !mcsema_real_eip !34
  %69 = icmp slt i64 %66, 0
  store i1 %69, i1* %SF, align 1, !mcsema_real_eip !34
  %_trans_icmp_eq_83 = icmp eq i8* %_new_gep_78, null
  store i1 %_trans_icmp_eq_83, i1* %ZF, align 1, !mcsema_real_eip !34
  %70 = xor i64 %_trans_p2i_80, -9223372036854775808, !mcsema_real_eip !34
  %71 = and i64 %_trans_xor_81, %70, !mcsema_real_eip !34
  %72 = icmp slt i64 %71, 0
  store i1 %72, i1* %OF, align 1, !mcsema_real_eip !34
  %_trans_trunc_90 = trunc i64 %_trans_p2i_79 to i8
  %73 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_90), !mcsema_real_eip !34
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  store i1 %75, i1* %PF, align 1, !mcsema_real_eip !34
  %_trans_icmp_ne_92 = icmp ne i64 %_trans_p2i_79, %RSP_val.45
  store i1 %_trans_icmp_ne_92, i1* %CF, align 1, !mcsema_real_eip !34
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_, align 8
  store i64 %66, i64* %XSP, align 8, !mcsema_real_eip !34
  %_offset_above_rbp_271 = sub i64 %_trans_p2i_79, %_local_end_to_int_
  %_pot_address_in_parent_stack_272 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_271
  %_cond1_273 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_274 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_275 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_276 = or i1 %_cond2_1_274, %_cond2_2_275
  %_cond4_277 = icmp ule i8* %_pot_address_in_parent_stack_272, %_parent_stack_end_ptr_
  %_cond1_n_cond2_278 = and i1 %_cond1_273, %_cond2_276
  %_cond1_n_cond2_cond3_279 = and i1 %_cond1_n_cond2_278, %_cond4_277
  %.v6 = select i1 %_cond1_n_cond2_cond3_279, i8* %_pot_address_in_parent_stack_272, i8* %_new_gep_78
  %76 = bitcast i8* %.v6 to i64*
  %_new_load_282 = load i64, i64* %76, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_282 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_282, i64* %XBP, align 8, !mcsema_real_eip !35
  %_new_gep_95 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_77, i64 88
  %77 = add i64 %RSP_val.45, 88, !mcsema_real_eip !35
  store volatile i8* %_new_gep_95, i8** %_RSP_ptr_, align 8
  store i64 %77, i64* %XSP, align 8, !mcsema_real_eip !35
  %_new_gep_97 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_77, i64 96
  %78 = add i64 %RSP_val.45, 96, !mcsema_real_eip !36
  %_ptr_to_int_283 = ptrtoint i8* %_new_gep_95 to i64
  %_offset_above_rbp_286 = sub i64 %_ptr_to_int_283, %_local_end_to_int_
  %_pot_address_in_parent_stack_287 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_286
  %_cond1_288 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_289 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_290 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_291 = or i1 %_cond2_1_289, %_cond2_2_290
  %_cond4_292 = icmp ule i8* %_pot_address_in_parent_stack_287, %_parent_stack_end_ptr_
  %_cond1_n_cond2_293 = and i1 %_cond1_288, %_cond2_291
  %_cond1_n_cond2_cond3_294 = and i1 %_cond1_n_cond2_293, %_cond4_292
  %_address_in_parent_stack_bt_296._allin_new_bt_98.v = select i1 %_cond1_n_cond2_cond3_294, i8* %_pot_address_in_parent_stack_287, i8* %_new_gep_95
  %_address_in_parent_stack_bt_296._allin_new_bt_98 = bitcast i8* %_address_in_parent_stack_bt_296._allin_new_bt_98.v to i64*
  %_new_load_297 = load i64, i64* %_address_in_parent_stack_bt_296._allin_new_bt_98, align 8
  store i64 %_new_load_297, i64* %XIP, align 8, !mcsema_real_eip !36
  store volatile i8* %_new_gep_97, i8** %_RSP_ptr_, align 8
  store i64 %78, i64* %XSP, align 8, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

; Function Attrs: noinline norecurse nounwind
define x86_64_sysvcc void @sub_0.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [44 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1, i64 0, i64 44
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !37
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !37
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !37
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !37
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !37
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !37
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !37
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !37
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !37
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !37
  %RSP_val.58 = load i64, i64* %XSP, align 8, !mcsema_real_eip !37
  %_new_gep_ = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %1 = add i64 %RSP_val.58, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !37
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !38
  %_new_gep_3 = getelementptr [44 x i8], [44 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_ = icmp ugt i8* %_new_gep_3, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_3, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_3, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond4_, %_cond1_n_cond2_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_3
  %2 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %2, align 8
  %_new_gep_6 = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %EDI.62 = bitcast i64* %XDI to i32*, !mcsema_real_eip !40
  %EDI_val.63 = load i32, i32* %EDI.62, align 4, !mcsema_real_eip !40
  %3 = bitcast i8* %_new_gep_6 to i32*
  store i32 %EDI_val.63, i32* %3, align 4, !mcsema_real_eip !40
  %_new_gep_9 = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.66 = load i32, i32* %ESI.65, align 4, !mcsema_real_eip !41
  %4 = bitcast i8* %_new_gep_9 to i32*
  store i32 %ESI_val.66, i32* %4, align 4, !mcsema_real_eip !41
  %_new_gep_12 = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %EDX.68 = bitcast i64* %XDX to i32*, !mcsema_real_eip !42
  %EDX_val.69 = load i32, i32* %EDX.68, align 4, !mcsema_real_eip !42
  %5 = bitcast i8* %_new_gep_12 to i32*
  store i32 %EDX_val.69, i32* %5, align 4, !mcsema_real_eip !42
  %_new_gep_15 = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %ECX.71 = bitcast i64* %XCX to i32*, !mcsema_real_eip !43
  %ECX_val.72 = load i32, i32* %ECX.71, align 4, !mcsema_real_eip !43
  %6 = bitcast i8* %_new_gep_15 to i32*
  store i32 %ECX_val.72, i32* %6, align 4, !mcsema_real_eip !43
  %_new_gep_18 = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %R8D.74 = bitcast i64* %R8 to i32*, !mcsema_real_eip !44
  %R8D_val.75 = load i32, i32* %R8D.74, align 4, !mcsema_real_eip !44
  %7 = bitcast i8* %_new_gep_18 to i32*
  store i32 %R8D_val.75, i32* %7, align 4, !mcsema_real_eip !44
  %_new_gep_21 = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1, i64 0, i64 12
  %R9D.77 = bitcast i64* %R9 to i32*, !mcsema_real_eip !45
  %R9D_val.78 = load i32, i32* %R9D.77, align 4, !mcsema_real_eip !45
  %8 = bitcast i8* %_new_gep_21 to i32*
  store i32 %R9D_val.78, i32* %8, align 4, !mcsema_real_eip !45
  %_new_gep_24 = getelementptr inbounds [44 x i8], [44 x i8]* %_local_stack_start_ptr_1, i64 0, i64 4
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  store i64 %_new_load_, i64* %_allin_new_bt_25, align 8, !mcsema_real_eip !46
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !47
  %9 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !48
  %_ptr_bt_58 = inttoptr i64 %_new_load_ to i8*
  %_offset_above_rbp_59 = sub i64 %_new_load_, %_local_end_to_int_
  %_pot_address_in_parent_stack_60 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_59
  %_cond1_61 = icmp ugt i8* %_ptr_bt_58, %_local_stack_end_ptr_
  %_cond2_1_62 = icmp ugt i8* %_ptr_bt_58, %_parent_stack_end_ptr_
  %_cond2_2_63 = icmp ult i8* %_ptr_bt_58, %_parent_stack_start_ptr_
  %_cond2_64 = or i1 %_cond2_1_62, %_cond2_2_63
  %_cond4_65 = icmp ule i8* %_pot_address_in_parent_stack_60, %_parent_stack_end_ptr_
  %_cond1_n_cond2_66 = and i1 %_cond1_61, %_cond2_64
  %_cond1_n_cond2_cond3_67 = and i1 %_cond4_65, %_cond1_n_cond2_66
  %_address_in_parent_stack_bt_69 = bitcast i8* %_pot_address_in_parent_stack_60 to i32*
  %10 = select i1 %_cond1_n_cond2_cond3_67, i32* %_address_in_parent_stack_bt_69, i32* %9
  %_new_load_70 = load i32, i32* %10, align 4
  %11 = zext i32 %_new_load_70 to i64, !mcsema_real_eip !48
  store i64 %11, i64* %XCX, align 8, !mcsema_real_eip !48
  %12 = bitcast [44 x i8]* %_local_stack_start_ptr_1 to i32*
  store i32 %_new_load_70, i32* %12, align 4, !mcsema_real_eip !49
  %13 = zext i32 %_new_load_70 to i64, !mcsema_real_eip !50
  store i64 %13, i64* %XAX, align 8, !mcsema_real_eip !50
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_35 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.87 = load i64, i64* %XSP, align 8, !mcsema_real_eip !51
  %_ptr_to_int_86 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_35 to i64
  %_offset_above_rbp_89 = sub i64 %_ptr_to_int_86, %_local_end_to_int_
  %_pot_address_in_parent_stack_90 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_89
  %_cond1_91 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_35, %_local_stack_end_ptr_
  %_cond2_1_92 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_35, %_parent_stack_end_ptr_
  %_cond2_2_93 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_35, %_parent_stack_start_ptr_
  %_cond2_94 = or i1 %_cond2_1_92, %_cond2_2_93
  %_cond4_95 = icmp ule i8* %_pot_address_in_parent_stack_90, %_parent_stack_end_ptr_
  %_cond1_n_cond2_96 = and i1 %_cond1_91, %_cond2_94
  %_cond1_n_cond2_cond3_97 = and i1 %_cond1_n_cond2_96, %_cond4_95
  %.v2 = select i1 %_cond1_n_cond2_cond3_97, i8* %_pot_address_in_parent_stack_90, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_35
  %14 = bitcast i8* %.v2 to i64*
  %_new_load_100 = load i64, i64* %14, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_100 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_100, i64* %XBP, align 8, !mcsema_real_eip !51
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_35, i64 8
  %15 = add i64 %RSP_val.87, 8, !mcsema_real_eip !51
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_, align 8
  store i64 %15, i64* %XSP, align 8, !mcsema_real_eip !51
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_35, i64 16
  %16 = add i64 %RSP_val.87, 16, !mcsema_real_eip !52
  %_ptr_to_int_101 = ptrtoint i8* %_new_gep_37 to i64
  %_offset_above_rbp_104 = sub i64 %_ptr_to_int_101, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  %_address_in_parent_stack_bt_114._allin_new_bt_40.v = select i1 %_cond1_n_cond2_cond3_112, i8* %_pot_address_in_parent_stack_105, i8* %_new_gep_37
  %_address_in_parent_stack_bt_114._allin_new_bt_40 = bitcast i8* %_address_in_parent_stack_bt_114._allin_new_bt_40.v to i64*
  %_new_load_115 = load i64, i64* %_address_in_parent_stack_bt_114._allin_new_bt_40, align 8
  store i64 %_new_load_115, i64* %XIP, align 8, !mcsema_real_eip !52
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_, align 8
  store i64 %16, i64* %XSP, align 8, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
}

attributes #0 = { noinline }
attributes #1 = { noinline norecurse nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 48}
!3 = !{i64 49}
!4 = !{i64 52}
!5 = !{i64 56}
!6 = !{i64 63}
!7 = !{i64 70}
!8 = !{i64 74}
!9 = !{i64 80}
!10 = !{i64 84}
!11 = !{i64 92}
!12 = !{i64 95}
!13 = !{i64 98}
!14 = !{i64 101}
!15 = !{i64 106}
!16 = !{i64 115}
!17 = !{i64 117}
!18 = !{i64 119}
!19 = !{i64 121}
!20 = !{i64 125}
!21 = !{i64 127}
!22 = !{i64 130}
!23 = !{i64 133}
!24 = !{i64 137}
!25 = !{i64 141}
!26 = !{i64 146}
!27 = !{i64 156}
!28 = !{i64 159}
!29 = !{i64 162}
!30 = !{i64 164}
!31 = !{i64 169}
!32 = !{i64 172}
!33 = !{i64 175}
!34 = !{i64 177}
!35 = !{i64 181}
!36 = !{i64 182}
!37 = !{i64 0}
!38 = !{i64 1}
!39 = !{i64 4}
!40 = !{i64 8}
!41 = !{i64 11}
!42 = !{i64 14}
!43 = !{i64 17}
!44 = !{i64 20}
!45 = !{i64 24}
!46 = !{i64 28}
!47 = !{i64 32}
!48 = !{i64 36}
!49 = !{i64 38}
!50 = !{i64 41}
!51 = !{i64 44}
!52 = !{i64 45}
