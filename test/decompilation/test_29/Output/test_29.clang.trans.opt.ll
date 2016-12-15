; ModuleID = 'Output/test_29.clang.trans.opt.bc'
source_filename = "Output/test_29.clang.bc"
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
module asm "  .globl sub_90;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_90(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xee = internal constant %0 <{ [16 x i8] c"%d %d %d %d %d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.1, -56
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
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 48 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !4
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %14 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %14, align 4, !mcsema_real_eip !6
  br label %block_0xa6, !mcsema_real_eip !7

block_0xa6:                                       ; preds = %block_0xb0, %entry
  %15 = phi i32 [ %.pre, %block_0xb0 ], [ 0, %entry ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195.pre, %block_0xb0 ], [ %_new_gep_, %entry ]
  %16 = add i32 %15, -5
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
  %26 = icmp ult i32 %15, 5, !mcsema_real_eip !7
  store i1 %26, i1* %CF, align 1, !mcsema_real_eip !7
  %27 = and i32 %17, %15, !mcsema_real_eip !7
  %28 = icmp slt i32 %27, 0
  store i1 %28, i1* %OF, align 1, !mcsema_real_eip !7
  %tmp = xor i1 %25, %28
  br i1 %tmp, label %block_0xb0, label %block_0xe6, !mcsema_real_eip !8

block_0xb0:                                       ; preds = %block_0xa6
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195, i64 -32
  %29 = ptrtoint i8* %_new_gep_23 to i64
  store i64 %29, i64* %XSI, align 8, !mcsema_real_eip !9
  %30 = bitcast i8* %_new_gep_23 to i32*
  store i32 5, i32* %30, align 4, !mcsema_real_eip !10
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_286 = load i8*, i8** %12, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_286, i64 -28
  %31 = bitcast i8* %_new_gep_29 to i32*
  store i32 6, i32* %31, align 4, !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_317 = load i8*, i8** %12, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_317, i64 -24
  %32 = bitcast i8* %_new_gep_32 to i32*
  store i32 7, i32* %32, align 4, !mcsema_real_eip !12
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_348 = load i8*, i8** %12, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_348, i64 -20
  %33 = bitcast i8* %_new_gep_35 to i32*
  store i32 8, i32* %33, align 4, !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_379 = load i8*, i8** %12, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_379, i64 -36
  %34 = bitcast i8* %_new_gep_38 to i32*
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !14
  %36 = zext i32 %35 to i64, !mcsema_real_eip !14
  store i64 %36, i64* %XDI, align 8, !mcsema_real_eip !14
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.20 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40, i64 -8
  %37 = add i64 %RSP_val.20, -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_, align 8
  store i64 %37, i64* %XSP, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7110 = load i8*, i8** %12, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* nonnull %0, i8* %_new_gep_41, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7110)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4311 = load i8*, i8** %12, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4311, i64 -36
  %38 = bitcast i8* %_new_gep_44 to i32*
  %39 = load i32, i32* %38, align 4, !mcsema_real_eip !16
  %40 = add i32 %39, 1, !mcsema_real_eip !17
  %41 = xor i32 %40, %39, !mcsema_real_eip !17
  %42 = and i32 %41, 16, !mcsema_real_eip !17
  %43 = icmp ne i32 %42, 0, !mcsema_real_eip !17
  store i1 %43, i1* %AF, align 1, !mcsema_real_eip !17
  %44 = icmp slt i32 %40, 0
  store i1 %44, i1* %SF, align 1, !mcsema_real_eip !17
  %45 = icmp eq i32 %40, 0, !mcsema_real_eip !17
  store i1 %45, i1* %ZF, align 1, !mcsema_real_eip !17
  %46 = xor i32 %39, -2147483648, !mcsema_real_eip !17
  %47 = and i32 %41, %46, !mcsema_real_eip !17
  %48 = icmp slt i32 %47, 0
  store i1 %48, i1* %OF, align 1, !mcsema_real_eip !17
  %49 = trunc i32 %40 to i8, !mcsema_real_eip !17
  %50 = call i8 @llvm.ctpop.i8(i8 %49), !mcsema_real_eip !17
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  store i1 %52, i1* %PF, align 1, !mcsema_real_eip !17
  %53 = icmp eq i32 %39, -1
  store i1 %53, i1* %CF, align 1, !mcsema_real_eip !17
  %54 = zext i32 %40 to i64, !mcsema_real_eip !17
  store i64 %54, i64* %XAX, align 8, !mcsema_real_eip !17
  store i32 %40, i32* %38, align 4, !mcsema_real_eip !18
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195.pre = load i8*, i8** %12, align 8
  %_new_gep_20.phi.trans.insert = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195.pre, i64 -36
  %.phi.trans.insert = bitcast i8* %_new_gep_20.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 4
  br label %block_0xa6, !mcsema_real_eip !19

block_0xe6:                                       ; preds = %block_0xa6
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !20
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.11 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 48
  %55 = add i64 %RSP_val.11, 48, !mcsema_real_eip !21
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %56 = and i64 %_trans_xor_53, 16
  %57 = icmp eq i64 %56, 0
  store i1 %57, i1* %AF, align 1, !mcsema_real_eip !21
  %58 = icmp slt i64 %55, 0
  store i1 %58, i1* %SF, align 1, !mcsema_real_eip !21
  %_trans_icmp_eq_55 = icmp eq i8* %_new_gep_50, null
  store i1 %_trans_icmp_eq_55, i1* %ZF, align 1, !mcsema_real_eip !21
  %59 = xor i64 %_trans_p2i_52, -9223372036854775808, !mcsema_real_eip !21
  %60 = and i64 %_trans_xor_53, %59, !mcsema_real_eip !21
  %61 = icmp slt i64 %60, 0
  store i1 %61, i1* %OF, align 1, !mcsema_real_eip !21
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %62 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !21
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  store i1 %64, i1* %PF, align 1, !mcsema_real_eip !21
  %_trans_icmp_ne_64 = icmp ne i64 %_trans_p2i_51, %RSP_val.11
  store i1 %_trans_icmp_ne_64, i1* %CF, align 1, !mcsema_real_eip !21
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %55, i64* %XSP, align 8, !mcsema_real_eip !21
  %_allin_new_bt_66 = bitcast i8* %_new_gep_50 to i64*
  %65 = load i64, i64* %_allin_new_bt_66, align 8, !mcsema_real_eip !22
  store volatile i64 %65, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %65, i64* %XBP, align 8, !mcsema_real_eip !22
  %_new_gep_67 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 56
  %66 = add i64 %RSP_val.11, 56, !mcsema_real_eip !22
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_, align 8
  store i64 %66, i64* %XSP, align 8, !mcsema_real_eip !22
  %_new_gep_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 64
  %67 = add i64 %RSP_val.11, 64, !mcsema_real_eip !23
  %_allin_new_bt_70 = bitcast i8* %_new_gep_67 to i64*
  %68 = load i64, i64* %_allin_new_bt_70, align 8, !mcsema_real_eip !23
  store i64 %68, i64* %XIP, align 8, !mcsema_real_eip !23
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_, align 8
  store i64 %67, i64* %XSP, align 8, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !24
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !24
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !24
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !24
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !24
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !24
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !24
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !24
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !24
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !24
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !24
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !24
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !24
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !24
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !24
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !24
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !24
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !24
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !24
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !24
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %RSP_val.28 = load i64, i64* %XSP, align 8, !mcsema_real_eip !24
  %1 = add i64 %RSP_val.28, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !24
  store i64 %RBP_val.27, i64* %2, align 8, !mcsema_real_eip !24
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !25
  %3 = add i64 %RSP_val.28, -40
  %4 = xor i64 %3, %1, !mcsema_real_eip !26
  %5 = and i64 %4, 16, !mcsema_real_eip !26
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !26
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !26
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !26
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !26
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !26
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !26
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !26
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !26
  %13 = icmp ult i64 %1, 32, !mcsema_real_eip !26
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !26
  %14 = and i64 %4, %1, !mcsema_real_eip !26
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !26
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !26
  %16 = add i64 %RSP_val.28, -12, !mcsema_real_eip !27
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !27
  %EDI_val.33 = load i32, i32* %EDI.32, align 4, !mcsema_real_eip !27
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !27
  store i32 %EDI_val.33, i32* %17, align 4, !mcsema_real_eip !27
  %RBP_val.34 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %18 = add i64 %RBP_val.34, -16, !mcsema_real_eip !28
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !28
  %RSI_val.35 = load i64, i64* %XSI, align 8, !mcsema_real_eip !28
  store i64 %RSI_val.35, i64* %19, align 8, !mcsema_real_eip !28
  %RBP_val.36 = load i64, i64* %XBP, align 8, !mcsema_real_eip !29
  %20 = add i64 %RBP_val.36, -20, !mcsema_real_eip !29
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !29
  store i32 3, i32* %21, align 4, !mcsema_real_eip !29
  br label %block_0x16, !mcsema_real_eip !30

block_0x16:                                       ; preds = %block_0x22, %entry
  %RBP_val.37 = load i64, i64* %XBP, align 8, !mcsema_real_eip !30
  %22 = add i64 %RBP_val.37, -20, !mcsema_real_eip !30
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !30
  %24 = load i32, i32* %23, align 4, !mcsema_real_eip !30
  %25 = zext i32 %24 to i64, !mcsema_real_eip !30
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !30
  %26 = add i64 %RBP_val.37, -4, !mcsema_real_eip !31
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !31
  %28 = load i32, i32* %27, align 4, !mcsema_real_eip !31
  %29 = sub i32 %24, %28, !mcsema_real_eip !31
  %30 = xor i32 %29, %24, !mcsema_real_eip !31
  %31 = xor i32 %30, %28, !mcsema_real_eip !31
  %32 = and i32 %31, 16, !mcsema_real_eip !31
  %33 = icmp ne i32 %32, 0, !mcsema_real_eip !31
  store i1 %33, i1* %AF, align 1, !mcsema_real_eip !31
  %34 = trunc i32 %29 to i8, !mcsema_real_eip !31
  %35 = tail call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !31
  %36 = and i8 %35, 1
  %37 = icmp eq i8 %36, 0
  store i1 %37, i1* %PF, align 1, !mcsema_real_eip !31
  %38 = icmp eq i32 %29, 0, !mcsema_real_eip !31
  store i1 %38, i1* %ZF, align 1, !mcsema_real_eip !31
  %39 = icmp slt i32 %29, 0
  store i1 %39, i1* %SF, align 1, !mcsema_real_eip !31
  %40 = icmp ult i32 %24, %28, !mcsema_real_eip !31
  store i1 %40, i1* %CF, align 1, !mcsema_real_eip !31
  %41 = xor i32 %28, %24, !mcsema_real_eip !31
  %42 = and i32 %30, %41, !mcsema_real_eip !31
  %43 = icmp slt i32 %42, 0
  store i1 %43, i1* %OF, align 1, !mcsema_real_eip !31
  %44 = or i1 %40, %38, !mcsema_real_eip !32
  %45 = add i64 %RBP_val.37, -16
  %46 = inttoptr i64 %45 to i64*
  br i1 %44, label %block_0x4d, label %block_0x22, !mcsema_real_eip !32

block_0x22:                                       ; preds = %block_0x16
  %47 = load i64, i64* %46, align 8, !mcsema_real_eip !33
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !33
  %48 = load i32, i32* %23, align 4, !mcsema_real_eip !34
  %49 = add i32 %48, -1
  %50 = xor i32 %49, %48, !mcsema_real_eip !35
  %51 = and i32 %50, 16, !mcsema_real_eip !35
  %52 = icmp ne i32 %51, 0, !mcsema_real_eip !35
  store i1 %52, i1* %AF, align 1, !mcsema_real_eip !35
  %53 = trunc i32 %49 to i8, !mcsema_real_eip !35
  %54 = tail call i8 @llvm.ctpop.i8(i8 %53), !mcsema_real_eip !35
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  store i1 %56, i1* %PF, align 1, !mcsema_real_eip !35
  %57 = icmp eq i32 %49, 0, !mcsema_real_eip !35
  store i1 %57, i1* %ZF, align 1, !mcsema_real_eip !35
  %58 = icmp slt i32 %49, 0
  store i1 %58, i1* %SF, align 1, !mcsema_real_eip !35
  %59 = icmp eq i32 %48, 0
  store i1 %59, i1* %CF, align 1, !mcsema_real_eip !35
  %60 = and i32 %50, %48, !mcsema_real_eip !35
  %61 = icmp slt i32 %60, 0
  store i1 %61, i1* %OF, align 1, !mcsema_real_eip !35
  %62 = zext i32 %49 to i64
  store i64 %62, i64* %XCX, align 8, !mcsema_real_eip !36
  store i64 %62, i64* %XDX, align 8, !mcsema_real_eip !37
  %63 = shl nuw nsw i64 %62, 2
  %64 = add i64 %63, %47, !mcsema_real_eip !38
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !38
  %66 = load i32, i32* %65, align 4, !mcsema_real_eip !38
  %67 = zext i32 %66 to i64, !mcsema_real_eip !38
  store i64 %67, i64* %XCX, align 8, !mcsema_real_eip !38
  %68 = load i64, i64* %46, align 8, !mcsema_real_eip !39
  store i64 %68, i64* %XAX, align 8, !mcsema_real_eip !39
  %69 = load i32, i32* %23, align 4, !mcsema_real_eip !40
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %XSI, align 8, !mcsema_real_eip !40
  store i64 %70, i64* %XDX, align 8, !mcsema_real_eip !41
  %71 = shl nuw nsw i64 %70, 2
  %72 = add i64 %71, %68, !mcsema_real_eip !42
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !42
  store i32 %66, i32* %73, align 4, !mcsema_real_eip !42
  %RBP_val.83 = load i64, i64* %XBP, align 8, !mcsema_real_eip !43
  %74 = add i64 %RBP_val.83, -20, !mcsema_real_eip !43
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !43
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !43
  %77 = add i32 %76, -1, !mcsema_real_eip !44
  %78 = xor i32 %77, %76, !mcsema_real_eip !44
  %79 = and i32 %78, 16
  %80 = icmp eq i32 %79, 0
  store i1 %80, i1* %AF, align 1, !mcsema_real_eip !44
  %81 = icmp slt i32 %77, 0
  store i1 %81, i1* %SF, align 1, !mcsema_real_eip !44
  %82 = icmp eq i32 %77, 0, !mcsema_real_eip !44
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !44
  %83 = and i32 %78, %76, !mcsema_real_eip !44
  %84 = icmp slt i32 %83, 0
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !44
  %85 = trunc i32 %77 to i8, !mcsema_real_eip !44
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !44
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !44
  %89 = icmp ne i32 %76, 0
  store i1 %89, i1* %CF, align 1, !mcsema_real_eip !44
  %90 = zext i32 %77 to i64, !mcsema_real_eip !44
  store i64 %90, i64* %XAX, align 8, !mcsema_real_eip !44
  store i32 %77, i32* %75, align 4, !mcsema_real_eip !45
  br label %block_0x16, !mcsema_real_eip !46

block_0x4d:                                       ; preds = %block_0x16
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !24
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !24
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, align 8, !mcsema_real_eip !47
  %91 = load i32, i32* %27, align 4, !mcsema_real_eip !48
  %92 = zext i32 %91 to i64, !mcsema_real_eip !48
  store i64 %92, i64* %XSI, align 8, !mcsema_real_eip !48
  %93 = load i64, i64* %46, align 8, !mcsema_real_eip !49
  store i64 %93, i64* %XAX, align 8, !mcsema_real_eip !49
  %94 = inttoptr i64 %93 to i32*, !mcsema_real_eip !50
  %95 = load i32, i32* %94, align 4, !mcsema_real_eip !50
  %96 = zext i32 %95 to i64, !mcsema_real_eip !50
  store i64 %96, i64* %XDX, align 8, !mcsema_real_eip !50
  %97 = load i64, i64* %46, align 8, !mcsema_real_eip !51
  store i64 %97, i64* %XAX, align 8, !mcsema_real_eip !51
  %98 = add i64 %97, 4, !mcsema_real_eip !52
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !52
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !52
  %101 = zext i32 %100 to i64, !mcsema_real_eip !52
  store i64 %101, i64* %XCX, align 8, !mcsema_real_eip !52
  %102 = load i64, i64* %46, align 8, !mcsema_real_eip !53
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !53
  %103 = add i64 %102, 8, !mcsema_real_eip !54
  %104 = inttoptr i64 %103 to i32*, !mcsema_real_eip !54
  %105 = load i32, i32* %104, align 4, !mcsema_real_eip !54
  %106 = zext i32 %105 to i64, !mcsema_real_eip !54
  store i64 %106, i64* %R8, align 8, !mcsema_real_eip !54
  %107 = load i64, i64* %46, align 8, !mcsema_real_eip !55
  store i64 %107, i64* %XAX, align 8, !mcsema_real_eip !55
  %108 = add i64 %107, 12, !mcsema_real_eip !56
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !56
  %110 = load i32, i32* %109, align 4, !mcsema_real_eip !56
  %111 = zext i32 %110 to i64, !mcsema_real_eip !56
  store i64 %111, i64* %R9, align 8, !mcsema_real_eip !56
  %AL.50 = bitcast i64* %XAX to i8*, !mcsema_real_eip !57
  store i8 0, i8* %AL.50, align 1, !mcsema_real_eip !57
  %RSP_val.57 = load i64, i64* %XSP, align 8, !mcsema_real_eip !58
  %112 = inttoptr i64 %RSP_val.57 to i64*, !mcsema_real_eip !58
  %113 = load i64, i64* %112, align 8, !mcsema_real_eip !58
  %114 = add i64 %RSP_val.57, 8, !mcsema_real_eip !58
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !58
  %116 = load i64, i64* %115, align 8, !mcsema_real_eip !58
  %117 = add i64 %RSP_val.57, 16, !mcsema_real_eip !58
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !58
  %119 = load i64, i64* %118, align 8, !mcsema_real_eip !58
  %120 = add i64 %RSP_val.57, 24, !mcsema_real_eip !58
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !58
  %122 = load i64, i64* %121, align 8, !mcsema_real_eip !58
  %123 = add i64 %RSP_val.57, 32, !mcsema_real_eip !58
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !58
  %125 = load i64, i64* %124, align 8, !mcsema_real_eip !58
  %126 = add i64 %RSP_val.57, 40, !mcsema_real_eip !58
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !58
  %128 = load i64, i64* %127, align 8, !mcsema_real_eip !58
  %129 = add i64 %RSP_val.57, -8
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !58
  store i64 -2415393069852865332, i64* %130, align 8, !mcsema_real_eip !58
  store i64 %129, i64* %XSP, align 8, !mcsema_real_eip !58
  %131 = tail call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xee to i64), i64 %92, i64 %96, i64 %101, i64 %106, i64 %111, i64 %113, i64 %116, i64 %119, i64 %122, i64 %125, i64 %128), !mcsema_real_eip !58
  store i64 %131, i64* %XAX, align 8, !mcsema_real_eip !58
  %RBP_val.59 = load i64, i64* %XBP, align 8, !mcsema_real_eip !59
  %132 = add i64 %RBP_val.59, -24, !mcsema_real_eip !59
  %133 = trunc i64 %131 to i32
  %134 = inttoptr i64 %132 to i32*, !mcsema_real_eip !59
  store i32 %133, i32* %134, align 4, !mcsema_real_eip !59
  %RSP_val.62 = load i64, i64* %XSP, align 8, !mcsema_real_eip !60
  %135 = add i64 %RSP_val.62, 32, !mcsema_real_eip !60
  %136 = xor i64 %135, %RSP_val.62, !mcsema_real_eip !60
  %137 = and i64 %136, 16, !mcsema_real_eip !60
  %138 = icmp ne i64 %137, 0, !mcsema_real_eip !60
  store i1 %138, i1* %AF, align 1, !mcsema_real_eip !60
  %139 = icmp slt i64 %135, 0
  store i1 %139, i1* %SF, align 1, !mcsema_real_eip !60
  %140 = icmp eq i64 %135, 0, !mcsema_real_eip !60
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !60
  %141 = xor i64 %RSP_val.62, -9223372036854775808, !mcsema_real_eip !60
  %142 = and i64 %136, %141, !mcsema_real_eip !60
  %143 = icmp slt i64 %142, 0
  store i1 %143, i1* %OF, align 1, !mcsema_real_eip !60
  %144 = trunc i64 %135 to i8, !mcsema_real_eip !60
  %145 = tail call i8 @llvm.ctpop.i8(i8 %144), !mcsema_real_eip !60
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  store i1 %147, i1* %PF, align 1, !mcsema_real_eip !60
  %148 = icmp ugt i64 %RSP_val.62, -33
  store i1 %148, i1* %CF, align 1, !mcsema_real_eip !60
  store i64 %135, i64* %XSP, align 8, !mcsema_real_eip !60
  %149 = inttoptr i64 %135 to i64*, !mcsema_real_eip !61
  %150 = load i64, i64* %149, align 8, !mcsema_real_eip !61
  store i64 %150, i64* %XBP, align 8, !mcsema_real_eip !61
  %151 = add i64 %RSP_val.62, 40, !mcsema_real_eip !61
  store i64 %151, i64* %XSP, align 8, !mcsema_real_eip !61
  %152 = add i64 %RSP_val.62, 48, !mcsema_real_eip !62
  %153 = inttoptr i64 %151 to i64*, !mcsema_real_eip !62
  %154 = load i64, i64* %153, align 8, !mcsema_real_eip !62
  store i64 %154, i64* %XIP, align 8, !mcsema_real_eip !62
  store i64 %152, i64* %XSP, align 8, !mcsema_real_eip !62
  ret void, !mcsema_real_eip !62
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -56
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
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 48 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %12 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %12, align 4, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  br label %block_0xa6, !mcsema_real_eip !7

block_0xa6:                                       ; preds = %block_0xb0, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19.pre, %block_0xb0 ], [ %_new_gep_, %entry ]
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -36
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
  %14 = add i32 %_new_load_, -5
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
  %24 = icmp ult i32 %_new_load_, 5, !mcsema_real_eip !7
  store i1 %24, i1* %CF, align 1, !mcsema_real_eip !7
  %25 = and i32 %15, %_new_load_, !mcsema_real_eip !7
  %26 = icmp slt i32 %25, 0
  store i1 %26, i1* %OF, align 1, !mcsema_real_eip !7
  %tmp = xor i1 %23, %26
  br i1 %tmp, label %block_0xb0, label %block_0xe6, !mcsema_real_eip !8

block_0xb0:                                       ; preds = %block_0xa6
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -32
  %27 = ptrtoint i8* %_new_gep_23 to i64
  store i64 %27, i64* %XSI, align 8, !mcsema_real_eip !9
  %28 = bitcast i8* %_new_gep_23 to i32*
  store i32 5, i32* %28, align 4, !mcsema_real_eip !10
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -28
  %29 = bitcast i8* %_new_gep_29 to i32*
  store i32 6, i32* %29, align 4, !mcsema_real_eip !11
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -24
  %30 = bitcast i8* %_new_gep_32 to i32*
  store i32 7, i32* %30, align 4, !mcsema_real_eip !12
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -20
  %31 = bitcast i8* %_new_gep_35 to i32*
  store i32 8, i32* %31, align 4, !mcsema_real_eip !13
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -36
  %32 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_76 = sub i64 %32, %_local_end_to_int_
  %_pot_address_in_parent_stack_77 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_76
  %_cond1_78 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_79 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_80 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_81 = or i1 %_cond2_1_79, %_cond2_2_80
  %_cond4_82 = icmp ule i8* %_pot_address_in_parent_stack_77, %_parent_stack_end_ptr_
  %_cond1_n_cond2_83 = and i1 %_cond1_78, %_cond2_81
  %_cond1_n_cond2_cond3_84 = and i1 %_cond1_n_cond2_83, %_cond4_82
  %_address_in_parent_stack_bt_86..v = select i1 %_cond1_n_cond2_cond3_84, i8* %_pot_address_in_parent_stack_77, i8* %_new_gep_38
  %_address_in_parent_stack_bt_86. = bitcast i8* %_address_in_parent_stack_bt_86..v to i32*
  %_new_load_87 = load i32, i32* %_address_in_parent_stack_bt_86., align 4
  %33 = zext i32 %_new_load_87 to i64, !mcsema_real_eip !14
  store i64 %33, i64* %XDI, align 8, !mcsema_real_eip !14
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.20 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_40, i64 -8
  %34 = add i64 %RSP_val.20, -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* nonnull %0, i8* %_new_gep_41, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -36
  %35 = ptrtoint i8* %_new_gep_44 to i64
  %36 = bitcast i8* %_new_gep_44 to i32*
  %_offset_above_rbp_91 = sub i64 %35, %_local_end_to_int_
  %_pot_address_in_parent_stack_92 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_91
  %_cond1_93 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_94 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_95 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_96 = or i1 %_cond2_1_94, %_cond2_2_95
  %_cond4_97 = icmp ule i8* %_pot_address_in_parent_stack_92, %_parent_stack_end_ptr_
  %_cond1_n_cond2_98 = and i1 %_cond1_93, %_cond2_96
  %_cond1_n_cond2_cond3_99 = and i1 %_cond1_n_cond2_98, %_cond4_97
  %_address_in_parent_stack_bt_101 = bitcast i8* %_pot_address_in_parent_stack_92 to i32*
  %37 = select i1 %_cond1_n_cond2_cond3_99, i32* %_address_in_parent_stack_bt_101, i32* %36
  %_new_load_102 = load i32, i32* %37, align 4
  %38 = add i32 %_new_load_102, 1, !mcsema_real_eip !17
  %39 = xor i32 %38, %_new_load_102, !mcsema_real_eip !17
  %40 = and i32 %39, 16, !mcsema_real_eip !17
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !17
  store i1 %41, i1* %AF, align 1, !mcsema_real_eip !17
  %42 = icmp slt i32 %38, 0
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !17
  %43 = icmp eq i32 %38, 0, !mcsema_real_eip !17
  store i1 %43, i1* %ZF, align 1, !mcsema_real_eip !17
  %44 = xor i32 %_new_load_102, -2147483648, !mcsema_real_eip !17
  %45 = and i32 %39, %44, !mcsema_real_eip !17
  %46 = icmp slt i32 %45, 0
  store i1 %46, i1* %OF, align 1, !mcsema_real_eip !17
  %47 = trunc i32 %38 to i8, !mcsema_real_eip !17
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !17
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  store i1 %50, i1* %PF, align 1, !mcsema_real_eip !17
  %51 = icmp eq i32 %_new_load_102, -1
  store i1 %51, i1* %CF, align 1, !mcsema_real_eip !17
  %52 = zext i32 %38 to i64, !mcsema_real_eip !17
  store i64 %52, i64* %XAX, align 8, !mcsema_real_eip !17
  store i32 %38, i32* %36, align 4, !mcsema_real_eip !18
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0xa6, !mcsema_real_eip !19

block_0xe6:                                       ; preds = %block_0xa6
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !20
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.11 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 48
  %53 = add i64 %RSP_val.11, 48, !mcsema_real_eip !21
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %54 = and i64 %_trans_xor_53, 16
  %55 = icmp eq i64 %54, 0
  store i1 %55, i1* %AF, align 1, !mcsema_real_eip !21
  %56 = icmp slt i64 %53, 0
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !21
  %_trans_icmp_eq_55 = icmp eq i8* %_new_gep_50, null
  store i1 %_trans_icmp_eq_55, i1* %ZF, align 1, !mcsema_real_eip !21
  %57 = xor i64 %_trans_p2i_52, -9223372036854775808, !mcsema_real_eip !21
  %58 = and i64 %_trans_xor_53, %57, !mcsema_real_eip !21
  %59 = icmp slt i64 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !21
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %60 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !21
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  store i1 %62, i1* %PF, align 1, !mcsema_real_eip !21
  %_trans_icmp_ne_64 = icmp ne i64 %_trans_p2i_51, %RSP_val.11
  store i1 %_trans_icmp_ne_64, i1* %CF, align 1, !mcsema_real_eip !21
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %53, i64* %XSP, align 8, !mcsema_real_eip !21
  %_offset_above_rbp_106 = sub i64 %_trans_p2i_51, %_local_end_to_int_
  %_pot_address_in_parent_stack_107 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_106
  %_cond1_108 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_109 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_110 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_111 = or i1 %_cond2_1_109, %_cond2_2_110
  %_cond4_112 = icmp ule i8* %_pot_address_in_parent_stack_107, %_parent_stack_end_ptr_
  %_cond1_n_cond2_113 = and i1 %_cond1_108, %_cond2_111
  %_cond1_n_cond2_cond3_114 = and i1 %_cond1_n_cond2_113, %_cond4_112
  %_address_in_parent_stack_bt_116._allin_new_bt_66.v = select i1 %_cond1_n_cond2_cond3_114, i8* %_pot_address_in_parent_stack_107, i8* %_new_gep_50
  %_address_in_parent_stack_bt_116._allin_new_bt_66 = bitcast i8* %_address_in_parent_stack_bt_116._allin_new_bt_66.v to i64*
  %_new_load_117 = load i64, i64* %_address_in_parent_stack_bt_116._allin_new_bt_66, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_117 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_117, i64* %XBP, align 8, !mcsema_real_eip !22
  %_new_gep_67 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 56
  %63 = add i64 %RSP_val.11, 56, !mcsema_real_eip !22
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_, align 8
  store i64 %63, i64* %XSP, align 8, !mcsema_real_eip !22
  %_new_gep_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 64
  %64 = add i64 %RSP_val.11, 64, !mcsema_real_eip !23
  %_ptr_to_int_118 = ptrtoint i8* %_new_gep_67 to i64
  %_offset_above_rbp_121 = sub i64 %_ptr_to_int_118, %_local_end_to_int_
  %_pot_address_in_parent_stack_122 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_121
  %_cond1_123 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_124 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_125 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_126 = or i1 %_cond2_1_124, %_cond2_2_125
  %_cond4_127 = icmp ule i8* %_pot_address_in_parent_stack_122, %_parent_stack_end_ptr_
  %_cond1_n_cond2_128 = and i1 %_cond1_123, %_cond2_126
  %_cond1_n_cond2_cond3_129 = and i1 %_cond1_n_cond2_128, %_cond4_127
  %.v = select i1 %_cond1_n_cond2_cond3_129, i8* %_pot_address_in_parent_stack_122, i8* %_new_gep_67
  %65 = bitcast i8* %.v to i64*
  %_new_load_132 = load i64, i64* %65, align 8
  store i64 %_new_load_132, i64* %XIP, align 8, !mcsema_real_eip !23
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_, align 8
  store i64 %64, i64* %XSP, align 8, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [48 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !24
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !24
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !24
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !24
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !24
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !24
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !24
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !24
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !24
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !24
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !24
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !24
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !24
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !24
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !24
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !24
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !24
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !24
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !24
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !24
  %RSP_val.28 = load i64, i64* %XSP, align 8, !mcsema_real_eip !24
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %1 = add i64 %RSP_val.28, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !25
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.28, -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !26
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !26
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !26
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !26
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !26
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !26
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !26
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 32 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !26
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !26
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !26
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !26
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !27
  %EDI_val.33 = load i32, i32* %EDI.32, align 4, !mcsema_real_eip !27
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 %EDI_val.33, i32* %11, align 4, !mcsema_real_eip !27
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %RSI_val.35 = load i64, i64* %XSI, align 8, !mcsema_real_eip !28
  store i64 %RSI_val.35, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !28
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %12 = bitcast i8* %_new_gep_20 to i32*
  store i32 3, i32* %12, align 4, !mcsema_real_eip !29
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  br label %block_0x16, !mcsema_real_eip !30

block_0x16:                                       ; preds = %block_0x22, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22.pre, %block_0x22 ], [ %_new_gep_, %entry ]
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -20
  %13 = ptrtoint i8* %_new_gep_23 to i64
  %_offset_above_rbp_ = sub i64 %13, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_23
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %14 = zext i32 %_new_load_ to i64, !mcsema_real_eip !30
  store i64 %14, i64* %XAX, align 8, !mcsema_real_eip !30
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -4
  %15 = ptrtoint i8* %_new_gep_26 to i64
  %_offset_above_rbp_104 = sub i64 %15, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  %.v = select i1 %_cond1_n_cond2_cond3_112, i8* %_pot_address_in_parent_stack_105, i8* %_new_gep_26
  %16 = bitcast i8* %.v to i32*
  %_new_load_115 = load i32, i32* %16, align 4
  %17 = sub i32 %_new_load_, %_new_load_115, !mcsema_real_eip !31
  %18 = xor i32 %17, %_new_load_, !mcsema_real_eip !31
  %19 = xor i32 %18, %_new_load_115, !mcsema_real_eip !31
  %20 = and i32 %19, 16, !mcsema_real_eip !31
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !31
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !31
  %22 = trunc i32 %17 to i8, !mcsema_real_eip !31
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !31
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !31
  %26 = icmp eq i32 %17, 0, !mcsema_real_eip !31
  store i1 %26, i1* %ZF, align 1, !mcsema_real_eip !31
  %27 = icmp slt i32 %17, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !31
  %28 = icmp ult i32 %_new_load_, %_new_load_115, !mcsema_real_eip !31
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !31
  %29 = xor i32 %_new_load_115, %_new_load_, !mcsema_real_eip !31
  %30 = and i32 %18, %29, !mcsema_real_eip !31
  %31 = icmp slt i32 %30, 0
  store i1 %31, i1* %OF, align 1, !mcsema_real_eip !31
  %32 = or i1 %28, %26, !mcsema_real_eip !32
  br i1 %32, label %block_0x4d, label %block_0x22, !mcsema_real_eip !32

block_0x22:                                       ; preds = %block_0x16
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -16
  %_ptr_to_int_116 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_119 = sub i64 %_ptr_to_int_116, %_local_end_to_int_
  %_pot_address_in_parent_stack_120 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_119
  %_cond1_121 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_122 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_123 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_124 = or i1 %_cond2_1_122, %_cond2_2_123
  %_cond4_125 = icmp ule i8* %_pot_address_in_parent_stack_120, %_parent_stack_end_ptr_
  %_cond1_n_cond2_126 = and i1 %_cond1_121, %_cond2_124
  %_cond1_n_cond2_cond3_127 = and i1 %_cond1_n_cond2_126, %_cond4_125
  %_address_in_parent_stack_bt_129._allin_new_bt_30.v = select i1 %_cond1_n_cond2_cond3_127, i8* %_pot_address_in_parent_stack_120, i8* %_new_gep_29
  %_address_in_parent_stack_bt_129._allin_new_bt_30 = bitcast i8* %_address_in_parent_stack_bt_129._allin_new_bt_30.v to i64*
  %_new_load_130 = load i64, i64* %_address_in_parent_stack_bt_129._allin_new_bt_30, align 8
  store i64 %_new_load_130, i64* %XAX, align 8, !mcsema_real_eip !33
  %_new_load_145 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %33 = add i32 %_new_load_145, -1
  %34 = xor i32 %33, %_new_load_145, !mcsema_real_eip !35
  %35 = and i32 %34, 16, !mcsema_real_eip !35
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !35
  store i1 %36, i1* %AF, align 1, !mcsema_real_eip !35
  %37 = trunc i32 %33 to i8, !mcsema_real_eip !35
  %38 = call i8 @llvm.ctpop.i8(i8 %37), !mcsema_real_eip !35
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  store i1 %40, i1* %PF, align 1, !mcsema_real_eip !35
  %41 = icmp eq i32 %33, 0, !mcsema_real_eip !35
  store i1 %41, i1* %ZF, align 1, !mcsema_real_eip !35
  %42 = icmp slt i32 %33, 0
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !35
  %43 = icmp eq i32 %_new_load_145, 0
  store i1 %43, i1* %CF, align 1, !mcsema_real_eip !35
  %44 = and i32 %34, %_new_load_145, !mcsema_real_eip !35
  %45 = icmp slt i32 %44, 0
  store i1 %45, i1* %OF, align 1, !mcsema_real_eip !35
  %46 = zext i32 %33 to i64
  store i64 %46, i64* %XCX, align 8, !mcsema_real_eip !36
  store i64 %46, i64* %XDX, align 8, !mcsema_real_eip !37
  %47 = shl nuw nsw i64 %46, 2
  %48 = add i64 %47, %_new_load_130, !mcsema_real_eip !38
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !38
  %_ptr_bt_148 = inttoptr i64 %48 to i8*
  %_offset_above_rbp_149 = sub i64 %48, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_ptr_bt_148, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_ptr_bt_148, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_ptr_bt_148, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond4_155, %_cond1_n_cond2_156
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i32*
  %_address_in_parent_stack_bt_159. = select i1 %_cond1_n_cond2_cond3_157, i32* %_address_in_parent_stack_bt_159, i32* %49
  %_new_load_160 = load i32, i32* %_address_in_parent_stack_bt_159., align 4
  %50 = zext i32 %_new_load_160 to i64, !mcsema_real_eip !38
  store i64 %50, i64* %XCX, align 8, !mcsema_real_eip !38
  %_new_load_175 = load i64, i64* %_address_in_parent_stack_bt_129._allin_new_bt_30, align 8
  store i64 %_new_load_175, i64* %XAX, align 8, !mcsema_real_eip !39
  %_new_load_190 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %51 = zext i32 %_new_load_190 to i64
  store i64 %51, i64* %XSI, align 8, !mcsema_real_eip !40
  store i64 %51, i64* %XDX, align 8, !mcsema_real_eip !41
  %52 = shl nuw nsw i64 %51, 2
  %53 = add i64 %52, %_new_load_175, !mcsema_real_eip !42
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !42
  store i32 %_new_load_160, i32* %54, align 4, !mcsema_real_eip !42
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -20
  %55 = ptrtoint i8* %_new_gep_41 to i64
  %56 = bitcast i8* %_new_gep_41 to i32*
  %_offset_above_rbp_194 = sub i64 %55, %_local_end_to_int_
  %_pot_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_197 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_198 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_199 = or i1 %_cond2_1_197, %_cond2_2_198
  %_cond4_200 = icmp ule i8* %_pot_address_in_parent_stack_195, %_parent_stack_end_ptr_
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  %_address_in_parent_stack_bt_204 = bitcast i8* %_pot_address_in_parent_stack_195 to i32*
  %57 = select i1 %_cond1_n_cond2_cond3_202, i32* %_address_in_parent_stack_bt_204, i32* %56
  %_new_load_205 = load i32, i32* %57, align 4
  %58 = add i32 %_new_load_205, -1, !mcsema_real_eip !44
  %59 = xor i32 %58, %_new_load_205, !mcsema_real_eip !44
  %60 = and i32 %59, 16
  %61 = icmp eq i32 %60, 0
  store i1 %61, i1* %AF, align 1, !mcsema_real_eip !44
  %62 = icmp slt i32 %58, 0
  store i1 %62, i1* %SF, align 1, !mcsema_real_eip !44
  %63 = icmp eq i32 %58, 0, !mcsema_real_eip !44
  store i1 %63, i1* %ZF, align 1, !mcsema_real_eip !44
  %64 = and i32 %59, %_new_load_205, !mcsema_real_eip !44
  %65 = icmp slt i32 %64, 0
  store i1 %65, i1* %OF, align 1, !mcsema_real_eip !44
  %66 = trunc i32 %58 to i8, !mcsema_real_eip !44
  %67 = call i8 @llvm.ctpop.i8(i8 %66), !mcsema_real_eip !44
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  store i1 %69, i1* %PF, align 1, !mcsema_real_eip !44
  %70 = icmp ne i32 %_new_load_205, 0
  store i1 %70, i1* %CF, align 1, !mcsema_real_eip !44
  %71 = zext i32 %58 to i64, !mcsema_real_eip !44
  store i64 %71, i64* %XAX, align 8, !mcsema_real_eip !44
  store i32 %58, i32* %56, align 4, !mcsema_real_eip !45
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x16, !mcsema_real_eip !46

block_0x4d:                                       ; preds = %block_0x16
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !24
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !24
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, align 8, !mcsema_real_eip !47
  %_new_load_220 = load i32, i32* %16, align 4
  %72 = zext i32 %_new_load_220 to i64, !mcsema_real_eip !48
  store i64 %72, i64* %XSI, align 8, !mcsema_real_eip !48
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -16
  %_ptr_to_int_221 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_224 = sub i64 %_ptr_to_int_221, %_local_end_to_int_
  %_pot_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_224
  %_cond1_226 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_227 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_228 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_229 = or i1 %_cond2_1_227, %_cond2_2_228
  %_cond4_230 = icmp ule i8* %_pot_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond1_n_cond2_231 = and i1 %_cond1_226, %_cond2_229
  %_cond1_n_cond2_cond3_232 = and i1 %_cond1_n_cond2_231, %_cond4_230
  %.v2 = select i1 %_cond1_n_cond2_cond3_232, i8* %_pot_address_in_parent_stack_225, i8* %_new_gep_50
  %73 = bitcast i8* %.v2 to i64*
  %_new_load_235 = load i64, i64* %73, align 8
  store i64 %_new_load_235, i64* %XAX, align 8, !mcsema_real_eip !49
  %74 = inttoptr i64 %_new_load_235 to i32*, !mcsema_real_eip !50
  %_ptr_bt_238 = inttoptr i64 %_new_load_235 to i8*
  %_offset_above_rbp_239 = sub i64 %_new_load_235, %_local_end_to_int_
  %_pot_address_in_parent_stack_240 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_239
  %_cond1_241 = icmp ugt i8* %_ptr_bt_238, %_local_stack_end_ptr_
  %_cond2_1_242 = icmp ugt i8* %_ptr_bt_238, %_parent_stack_end_ptr_
  %_cond2_2_243 = icmp ult i8* %_ptr_bt_238, %_parent_stack_start_ptr_
  %_cond2_244 = or i1 %_cond2_1_242, %_cond2_2_243
  %_cond4_245 = icmp ule i8* %_pot_address_in_parent_stack_240, %_parent_stack_end_ptr_
  %_cond1_n_cond2_246 = and i1 %_cond1_241, %_cond2_244
  %_cond1_n_cond2_cond3_247 = and i1 %_cond4_245, %_cond1_n_cond2_246
  %_address_in_parent_stack_bt_249 = bitcast i8* %_pot_address_in_parent_stack_240 to i32*
  %_address_in_parent_stack_bt_249. = select i1 %_cond1_n_cond2_cond3_247, i32* %_address_in_parent_stack_bt_249, i32* %74
  %_new_load_250 = load i32, i32* %_address_in_parent_stack_bt_249., align 4
  %75 = zext i32 %_new_load_250 to i64, !mcsema_real_eip !50
  store i64 %75, i64* %XDX, align 8, !mcsema_real_eip !50
  %_new_load_265 = load i64, i64* %73, align 8
  store i64 %_new_load_265, i64* %XAX, align 8, !mcsema_real_eip !51
  %76 = add i64 %_new_load_265, 4, !mcsema_real_eip !52
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !52
  %_ptr_bt_268 = inttoptr i64 %76 to i8*
  %_offset_above_rbp_269 = sub i64 %76, %_local_end_to_int_
  %_pot_address_in_parent_stack_270 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_269
  %_cond1_271 = icmp ugt i8* %_ptr_bt_268, %_local_stack_end_ptr_
  %_cond2_1_272 = icmp ugt i8* %_ptr_bt_268, %_parent_stack_end_ptr_
  %_cond2_2_273 = icmp ult i8* %_ptr_bt_268, %_parent_stack_start_ptr_
  %_cond2_274 = or i1 %_cond2_1_272, %_cond2_2_273
  %_cond4_275 = icmp ule i8* %_pot_address_in_parent_stack_270, %_parent_stack_end_ptr_
  %_cond1_n_cond2_276 = and i1 %_cond1_271, %_cond2_274
  %_cond1_n_cond2_cond3_277 = and i1 %_cond4_275, %_cond1_n_cond2_276
  %_address_in_parent_stack_bt_279 = bitcast i8* %_pot_address_in_parent_stack_270 to i32*
  %_address_in_parent_stack_bt_279. = select i1 %_cond1_n_cond2_cond3_277, i32* %_address_in_parent_stack_bt_279, i32* %77
  %_new_load_280 = load i32, i32* %_address_in_parent_stack_bt_279., align 4
  %78 = zext i32 %_new_load_280 to i64, !mcsema_real_eip !52
  store i64 %78, i64* %XCX, align 8, !mcsema_real_eip !52
  %_new_load_295 = load i64, i64* %73, align 8
  store i64 %_new_load_295, i64* %XAX, align 8, !mcsema_real_eip !53
  %79 = add i64 %_new_load_295, 8, !mcsema_real_eip !54
  %80 = inttoptr i64 %79 to i32*, !mcsema_real_eip !54
  %_ptr_bt_298 = inttoptr i64 %79 to i8*
  %_offset_above_rbp_299 = sub i64 %79, %_local_end_to_int_
  %_pot_address_in_parent_stack_300 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_299
  %_cond1_301 = icmp ugt i8* %_ptr_bt_298, %_local_stack_end_ptr_
  %_cond2_1_302 = icmp ugt i8* %_ptr_bt_298, %_parent_stack_end_ptr_
  %_cond2_2_303 = icmp ult i8* %_ptr_bt_298, %_parent_stack_start_ptr_
  %_cond2_304 = or i1 %_cond2_1_302, %_cond2_2_303
  %_cond4_305 = icmp ule i8* %_pot_address_in_parent_stack_300, %_parent_stack_end_ptr_
  %_cond1_n_cond2_306 = and i1 %_cond1_301, %_cond2_304
  %_cond1_n_cond2_cond3_307 = and i1 %_cond4_305, %_cond1_n_cond2_306
  %_address_in_parent_stack_bt_309 = bitcast i8* %_pot_address_in_parent_stack_300 to i32*
  %_address_in_parent_stack_bt_309. = select i1 %_cond1_n_cond2_cond3_307, i32* %_address_in_parent_stack_bt_309, i32* %80
  %_new_load_310 = load i32, i32* %_address_in_parent_stack_bt_309., align 4
  %81 = zext i32 %_new_load_310 to i64, !mcsema_real_eip !54
  store i64 %81, i64* %R8, align 8, !mcsema_real_eip !54
  %_new_load_325 = load i64, i64* %73, align 8
  store i64 %_new_load_325, i64* %XAX, align 8, !mcsema_real_eip !55
  %82 = add i64 %_new_load_325, 12, !mcsema_real_eip !56
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !56
  %_ptr_bt_328 = inttoptr i64 %82 to i8*
  %_offset_above_rbp_329 = sub i64 %82, %_local_end_to_int_
  %_pot_address_in_parent_stack_330 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_329
  %_cond1_331 = icmp ugt i8* %_ptr_bt_328, %_local_stack_end_ptr_
  %_cond2_1_332 = icmp ugt i8* %_ptr_bt_328, %_parent_stack_end_ptr_
  %_cond2_2_333 = icmp ult i8* %_ptr_bt_328, %_parent_stack_start_ptr_
  %_cond2_334 = or i1 %_cond2_1_332, %_cond2_2_333
  %_cond4_335 = icmp ule i8* %_pot_address_in_parent_stack_330, %_parent_stack_end_ptr_
  %_cond1_n_cond2_336 = and i1 %_cond1_331, %_cond2_334
  %_cond1_n_cond2_cond3_337 = and i1 %_cond4_335, %_cond1_n_cond2_336
  %_address_in_parent_stack_bt_339 = bitcast i8* %_pot_address_in_parent_stack_330 to i32*
  %_address_in_parent_stack_bt_339. = select i1 %_cond1_n_cond2_cond3_337, i32* %_address_in_parent_stack_bt_339, i32* %83
  %_new_load_340 = load i32, i32* %_address_in_parent_stack_bt_339., align 4
  %84 = zext i32 %_new_load_340 to i64, !mcsema_real_eip !56
  store i64 %84, i64* %R9, align 8, !mcsema_real_eip !56
  %AL.50 = bitcast i64* %XAX to i8*, !mcsema_real_eip !57
  store i8 0, i8* %AL.50, align 1, !mcsema_real_eip !57
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_341 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61 to i64
  %_offset_above_rbp_344 = sub i64 %_ptr_to_int_341, %_local_end_to_int_
  %_pot_address_in_parent_stack_345 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_344
  %_cond1_346 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, %_local_stack_end_ptr_
  %_cond2_1_347 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, %_parent_stack_end_ptr_
  %_cond2_2_348 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, %_parent_stack_start_ptr_
  %_cond2_349 = or i1 %_cond2_1_347, %_cond2_2_348
  %_cond4_350 = icmp ule i8* %_pot_address_in_parent_stack_345, %_parent_stack_end_ptr_
  %_cond1_n_cond2_351 = and i1 %_cond1_346, %_cond2_349
  %_cond1_n_cond2_cond3_352 = and i1 %_cond1_n_cond2_351, %_cond4_350
  %.v3 = select i1 %_cond1_n_cond2_cond3_352, i8* %_pot_address_in_parent_stack_345, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61
  %85 = bitcast i8* %.v3 to i64*
  %_new_load_355 = load i64, i64* %85, align 8
  %_new_gep_63 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 8
  %_ptr_to_int_356 = ptrtoint i8* %_new_gep_63 to i64
  %_offset_above_rbp_359 = sub i64 %_ptr_to_int_356, %_local_end_to_int_
  %_pot_address_in_parent_stack_360 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_359
  %_cond1_361 = icmp ugt i8* %_new_gep_63, %_local_stack_end_ptr_
  %_cond2_1_362 = icmp ugt i8* %_new_gep_63, %_parent_stack_end_ptr_
  %_cond2_2_363 = icmp ult i8* %_new_gep_63, %_parent_stack_start_ptr_
  %_cond2_364 = or i1 %_cond2_1_362, %_cond2_2_363
  %_cond4_365 = icmp ule i8* %_pot_address_in_parent_stack_360, %_parent_stack_end_ptr_
  %_cond1_n_cond2_366 = and i1 %_cond1_361, %_cond2_364
  %_cond1_n_cond2_cond3_367 = and i1 %_cond1_n_cond2_366, %_cond4_365
  %_address_in_parent_stack_bt_369._allin_new_bt_64.v = select i1 %_cond1_n_cond2_cond3_367, i8* %_pot_address_in_parent_stack_360, i8* %_new_gep_63
  %_address_in_parent_stack_bt_369._allin_new_bt_64 = bitcast i8* %_address_in_parent_stack_bt_369._allin_new_bt_64.v to i64*
  %_new_load_370 = load i64, i64* %_address_in_parent_stack_bt_369._allin_new_bt_64, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 16
  %_ptr_to_int_371 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_374 = sub i64 %_ptr_to_int_371, %_local_end_to_int_
  %_pot_address_in_parent_stack_375 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_374
  %_cond1_376 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_377 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_378 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_379 = or i1 %_cond2_1_377, %_cond2_2_378
  %_cond4_380 = icmp ule i8* %_pot_address_in_parent_stack_375, %_parent_stack_end_ptr_
  %_cond1_n_cond2_381 = and i1 %_cond1_376, %_cond2_379
  %_cond1_n_cond2_cond3_382 = and i1 %_cond1_n_cond2_381, %_cond4_380
  %.v4 = select i1 %_cond1_n_cond2_cond3_382, i8* %_pot_address_in_parent_stack_375, i8* %_new_gep_65
  %86 = bitcast i8* %.v4 to i64*
  %_new_load_385 = load i64, i64* %86, align 8
  %_new_gep_67 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 24
  %_ptr_to_int_386 = ptrtoint i8* %_new_gep_67 to i64
  %_offset_above_rbp_389 = sub i64 %_ptr_to_int_386, %_local_end_to_int_
  %_pot_address_in_parent_stack_390 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_389
  %_cond1_391 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_392 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_393 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_394 = or i1 %_cond2_1_392, %_cond2_2_393
  %_cond4_395 = icmp ule i8* %_pot_address_in_parent_stack_390, %_parent_stack_end_ptr_
  %_cond1_n_cond2_396 = and i1 %_cond1_391, %_cond2_394
  %_cond1_n_cond2_cond3_397 = and i1 %_cond1_n_cond2_396, %_cond4_395
  %_address_in_parent_stack_bt_399._allin_new_bt_68.v = select i1 %_cond1_n_cond2_cond3_397, i8* %_pot_address_in_parent_stack_390, i8* %_new_gep_67
  %_address_in_parent_stack_bt_399._allin_new_bt_68 = bitcast i8* %_address_in_parent_stack_bt_399._allin_new_bt_68.v to i64*
  %_new_load_400 = load i64, i64* %_address_in_parent_stack_bt_399._allin_new_bt_68, align 8
  %_new_gep_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 32
  %_ptr_to_int_401 = ptrtoint i8* %_new_gep_69 to i64
  %_offset_above_rbp_404 = sub i64 %_ptr_to_int_401, %_local_end_to_int_
  %_pot_address_in_parent_stack_405 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_404
  %_cond1_406 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_407 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_408 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_409 = or i1 %_cond2_1_407, %_cond2_2_408
  %_cond4_410 = icmp ule i8* %_pot_address_in_parent_stack_405, %_parent_stack_end_ptr_
  %_cond1_n_cond2_411 = and i1 %_cond1_406, %_cond2_409
  %_cond1_n_cond2_cond3_412 = and i1 %_cond1_n_cond2_411, %_cond4_410
  %.v5 = select i1 %_cond1_n_cond2_cond3_412, i8* %_pot_address_in_parent_stack_405, i8* %_new_gep_69
  %87 = bitcast i8* %.v5 to i64*
  %_new_load_415 = load i64, i64* %87, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 40
  %_ptr_to_int_416 = ptrtoint i8* %_new_gep_71 to i64
  %_offset_above_rbp_419 = sub i64 %_ptr_to_int_416, %_local_end_to_int_
  %_pot_address_in_parent_stack_420 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_419
  %_cond1_421 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_422 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_423 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_424 = or i1 %_cond2_1_422, %_cond2_2_423
  %_cond4_425 = icmp ule i8* %_pot_address_in_parent_stack_420, %_parent_stack_end_ptr_
  %_cond1_n_cond2_426 = and i1 %_cond1_421, %_cond2_424
  %_cond1_n_cond2_cond3_427 = and i1 %_cond1_n_cond2_426, %_cond4_425
  %_address_in_parent_stack_bt_429._allin_new_bt_72.v = select i1 %_cond1_n_cond2_cond3_427, i8* %_pot_address_in_parent_stack_420, i8* %_new_gep_71
  %_address_in_parent_stack_bt_429._allin_new_bt_72 = bitcast i8* %_address_in_parent_stack_bt_429._allin_new_bt_72.v to i64*
  %_new_load_430 = load i64, i64* %_address_in_parent_stack_bt_429._allin_new_bt_72, align 8
  %RSP_val.58 = load i64, i64* %XSP, align 8, !mcsema_real_eip !58
  %_new_gep_74 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_61, i64 -8
  %88 = add i64 %RSP_val.58, -8
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !58
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_, align 8
  store i64 %88, i64* %XSP, align 8, !mcsema_real_eip !58
  %89 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xee to i64), i64 %72, i64 %75, i64 %78, i64 %81, i64 %84, i64 %_new_load_355, i64 %_new_load_370, i64 %_new_load_385, i64 %_new_load_400, i64 %_new_load_415, i64 %_new_load_430)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %89, i64* %XAX, align 8, !mcsema_real_eip !58
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_77 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_76, i64 -24
  %90 = trunc i64 %89 to i32
  %91 = bitcast i8* %_new_gep_77 to i32*
  store i32 %90, i32* %91, align 4, !mcsema_real_eip !59
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_79 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.62 = load i64, i64* %XSP, align 8, !mcsema_real_eip !60
  %_new_gep_80 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_79, i64 32
  %92 = add i64 %RSP_val.62, 32, !mcsema_real_eip !60
  %_trans_p2i_81 = ptrtoint i8* %_new_gep_80 to i64
  %_trans_p2i_82 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_79 to i64
  %_trans_xor_83 = xor i64 %_trans_p2i_81, %_trans_p2i_82
  %93 = and i64 %_trans_xor_83, 16, !mcsema_real_eip !60
  %94 = icmp ne i64 %93, 0, !mcsema_real_eip !60
  store i1 %94, i1* %AF, align 1, !mcsema_real_eip !60
  %95 = icmp slt i64 %92, 0
  store i1 %95, i1* %SF, align 1, !mcsema_real_eip !60
  %_trans_icmp_eq_85 = icmp eq i8* %_new_gep_80, null
  store i1 %_trans_icmp_eq_85, i1* %ZF, align 1, !mcsema_real_eip !60
  %96 = xor i64 %_trans_p2i_82, -9223372036854775808, !mcsema_real_eip !60
  %97 = and i64 %_trans_xor_83, %96, !mcsema_real_eip !60
  %98 = icmp slt i64 %97, 0
  store i1 %98, i1* %OF, align 1, !mcsema_real_eip !60
  %_trans_trunc_92 = trunc i64 %_trans_p2i_81 to i8
  %99 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_92), !mcsema_real_eip !60
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  store i1 %101, i1* %PF, align 1, !mcsema_real_eip !60
  %_trans_icmp_ne_94 = icmp ne i64 %_trans_p2i_81, %RSP_val.62
  store i1 %_trans_icmp_ne_94, i1* %CF, align 1, !mcsema_real_eip !60
  store volatile i8* %_new_gep_80, i8** %_RSP_ptr_, align 8
  store i64 %92, i64* %XSP, align 8, !mcsema_real_eip !60
  %_offset_above_rbp_434 = sub i64 %_trans_p2i_81, %_local_end_to_int_
  %_pot_address_in_parent_stack_435 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_434
  %_cond1_436 = icmp ugt i8* %_new_gep_80, %_local_stack_end_ptr_
  %_cond2_1_437 = icmp ugt i8* %_new_gep_80, %_parent_stack_end_ptr_
  %_cond2_2_438 = icmp ult i8* %_new_gep_80, %_parent_stack_start_ptr_
  %_cond2_439 = or i1 %_cond2_1_437, %_cond2_2_438
  %_cond4_440 = icmp ule i8* %_pot_address_in_parent_stack_435, %_parent_stack_end_ptr_
  %_cond1_n_cond2_441 = and i1 %_cond1_436, %_cond2_439
  %_cond1_n_cond2_cond3_442 = and i1 %_cond1_n_cond2_441, %_cond4_440
  %.v6 = select i1 %_cond1_n_cond2_cond3_442, i8* %_pot_address_in_parent_stack_435, i8* %_new_gep_80
  %102 = bitcast i8* %.v6 to i64*
  %_new_load_445 = load i64, i64* %102, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_445 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_445, i64* %XBP, align 8, !mcsema_real_eip !61
  %_new_gep_97 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_79, i64 40
  %103 = add i64 %RSP_val.62, 40, !mcsema_real_eip !61
  store volatile i8* %_new_gep_97, i8** %_RSP_ptr_, align 8
  store i64 %103, i64* %XSP, align 8, !mcsema_real_eip !61
  %_new_gep_99 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_79, i64 48
  %104 = add i64 %RSP_val.62, 48, !mcsema_real_eip !62
  %_ptr_to_int_446 = ptrtoint i8* %_new_gep_97 to i64
  %_offset_above_rbp_449 = sub i64 %_ptr_to_int_446, %_local_end_to_int_
  %_pot_address_in_parent_stack_450 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_449
  %_cond1_451 = icmp ugt i8* %_new_gep_97, %_local_stack_end_ptr_
  %_cond2_1_452 = icmp ugt i8* %_new_gep_97, %_parent_stack_end_ptr_
  %_cond2_2_453 = icmp ult i8* %_new_gep_97, %_parent_stack_start_ptr_
  %_cond2_454 = or i1 %_cond2_1_452, %_cond2_2_453
  %_cond4_455 = icmp ule i8* %_pot_address_in_parent_stack_450, %_parent_stack_end_ptr_
  %_cond1_n_cond2_456 = and i1 %_cond1_451, %_cond2_454
  %_cond1_n_cond2_cond3_457 = and i1 %_cond1_n_cond2_456, %_cond4_455
  %_address_in_parent_stack_bt_459._allin_new_bt_100.v = select i1 %_cond1_n_cond2_cond3_457, i8* %_pot_address_in_parent_stack_450, i8* %_new_gep_97
  %_address_in_parent_stack_bt_459._allin_new_bt_100 = bitcast i8* %_address_in_parent_stack_bt_459._allin_new_bt_100.v to i64*
  %_new_load_460 = load i64, i64* %_address_in_parent_stack_bt_459._allin_new_bt_100, align 8
  store i64 %_new_load_460, i64* %XIP, align 8, !mcsema_real_eip !62
  store volatile i8* %_new_gep_99, i8** %_RSP_ptr_, align 8
  store i64 %104, i64* %XSP, align 8, !mcsema_real_eip !62
  ret void, !mcsema_real_eip !62
}

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 144}
!3 = !{i64 145}
!4 = !{i64 148}
!5 = !{i64 152}
!6 = !{i64 159}
!7 = !{i64 166}
!8 = !{i64 170}
!9 = !{i64 176}
!10 = !{i64 180}
!11 = !{i64 187}
!12 = !{i64 194}
!13 = !{i64 201}
!14 = !{i64 208}
!15 = !{i64 211}
!16 = !{i64 216}
!17 = !{i64 219}
!18 = !{i64 222}
!19 = !{i64 225}
!20 = !{i64 230}
!21 = !{i64 232}
!22 = !{i64 236}
!23 = !{i64 237}
!24 = !{i64 0}
!25 = !{i64 1}
!26 = !{i64 4}
!27 = !{i64 8}
!28 = !{i64 11}
!29 = !{i64 15}
!30 = !{i64 22}
!31 = !{i64 25}
!32 = !{i64 28}
!33 = !{i64 34}
!34 = !{i64 38}
!35 = !{i64 41}
!36 = !{i64 44}
!37 = !{i64 46}
!38 = !{i64 48}
!39 = !{i64 51}
!40 = !{i64 55}
!41 = !{i64 58}
!42 = !{i64 60}
!43 = !{i64 63}
!44 = !{i64 66}
!45 = !{i64 69}
!46 = !{i64 72}
!47 = !{i64 77}
!48 = !{i64 87}
!49 = !{i64 90}
!50 = !{i64 94}
!51 = !{i64 96}
!52 = !{i64 100}
!53 = !{i64 103}
!54 = !{i64 107}
!55 = !{i64 111}
!56 = !{i64 115}
!57 = !{i64 119}
!58 = !{i64 121}
!59 = !{i64 126}
!60 = !{i64 129}
!61 = !{i64 133}
!62 = !{i64 134}
