; ModuleID = 'Output/test_6.clang.trans.opt.bc'
source_filename = "Output/test_6.clang.bc"
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
module asm "  .globl sub_a0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_a0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x1af = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [112 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 112
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
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
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.1, -104
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !4
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 96 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !4
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 40, i64* %XAX, align 8, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  store i64 40, i64* %XCX, align 8, !mcsema_real_eip !6
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 100
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !7
  %_new_gep_17 = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 96
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.9 = load i32, i32* %EDI.8, align 4, !mcsema_real_eip !8
  %14 = bitcast i8* %_new_gep_17 to i32*
  store i32 %EDI_val.9, i32* %14, align 8, !mcsema_real_eip !8
  %_new_gep_20 = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.11 = load i64, i64* %XSI, align 8, !mcsema_real_eip !9
  store i64 %RSI_val.11, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !9
  store i64 40, i64* %XDI, align 8, !mcsema_real_eip !10
  %_new_gep_23 = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %15 = add i64 %RSP_val.1, -112
  %_allin_new_bt_24 = bitcast [112 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !11
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_, align 8
  store i64 %15, i64* %XSP, align 8, !mcsema_real_eip !11
  %16 = call x86_64_sysvcc i64 @_malloc(i64 40)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %16, i64* %XAX, align 8, !mcsema_real_eip !11
  store i64 40, i64* %XDX, align 8, !mcsema_real_eip !12
  store i64 40, i64* %XDI, align 8, !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2510 = load i8*, i8** %12, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2510, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 %16, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !14
  %RDI_val.19 = load i64, i64* %XDI, align 8, !mcsema_real_eip !15
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.20 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 -8
  %17 = add i64 %RSP_val.20, -8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %17, i64* %XSP, align 8, !mcsema_real_eip !15
  %18 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.19)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_149 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_150 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_149, i64 8
  store i8* %_gep_fix_150, i8** %_RSP_ptr_, align 8
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3111 = load i8*, i8** %12, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3111, i64 -32
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %18, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3412 = load i8*, i8** %12, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3412, i64 -36
  %19 = bitcast i8* %_new_gep_35 to i32*
  store i32 0, i32* %19, align 4, !mcsema_real_eip !17
  br label %block_0xe0, !mcsema_real_eip !18

block_0xe0:                                       ; preds = %block_0xea, %entry
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3713 = load i8*, i8** %12, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3713, i64 -36
  %20 = bitcast i8* %_new_gep_38 to i32*
  %21 = load i32, i32* %20, align 4, !mcsema_real_eip !18
  %22 = add i32 %21, -10
  %23 = xor i32 %22, %21, !mcsema_real_eip !18
  %24 = and i32 %23, 16, !mcsema_real_eip !18
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !18
  store i1 %25, i1* %AF, align 1, !mcsema_real_eip !18
  %26 = trunc i32 %22 to i8, !mcsema_real_eip !18
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !18
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  store i1 %29, i1* %PF, align 1, !mcsema_real_eip !18
  %30 = icmp eq i32 %22, 0, !mcsema_real_eip !18
  store i1 %30, i1* %ZF, align 1, !mcsema_real_eip !18
  %31 = icmp slt i32 %22, 0
  store i1 %31, i1* %SF, align 1, !mcsema_real_eip !18
  %32 = icmp ult i32 %21, 10, !mcsema_real_eip !18
  store i1 %32, i1* %CF, align 1, !mcsema_real_eip !18
  %33 = and i32 %23, %21, !mcsema_real_eip !18
  %34 = icmp slt i32 %33, 0
  store i1 %34, i1* %OF, align 1, !mcsema_real_eip !18
  %tmp = xor i1 %31, %34
  br i1 %tmp, label %block_0xea, label %block_0x10c, !mcsema_real_eip !19

block_0xea:                                       ; preds = %block_0xe0
  %35 = load i32, i32* %20, align 4, !mcsema_real_eip !20
  %36 = add i32 %35, 10, !mcsema_real_eip !21
  %37 = add i32 %35, 11, !mcsema_real_eip !22
  %38 = xor i32 %37, %36, !mcsema_real_eip !22
  %39 = and i32 %38, 16, !mcsema_real_eip !22
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !22
  store i1 %40, i1* %AF, align 1, !mcsema_real_eip !22
  %41 = icmp slt i32 %37, 0
  store i1 %41, i1* %SF, align 1, !mcsema_real_eip !22
  %42 = icmp eq i32 %37, 0, !mcsema_real_eip !22
  store i1 %42, i1* %ZF, align 1, !mcsema_real_eip !22
  %43 = add i32 %35, -2147483638
  %44 = and i32 %38, %43, !mcsema_real_eip !22
  %45 = icmp slt i32 %44, 0
  store i1 %45, i1* %OF, align 1, !mcsema_real_eip !22
  %46 = trunc i32 %37 to i8, !mcsema_real_eip !22
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !22
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  store i1 %49, i1* %PF, align 1, !mcsema_real_eip !22
  %50 = icmp eq i32 %36, -1
  store i1 %50, i1* %CF, align 1, !mcsema_real_eip !22
  %51 = zext i32 %37 to i64, !mcsema_real_eip !22
  store i64 %51, i64* %XAX, align 8, !mcsema_real_eip !22
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3713, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %52 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !23
  store i64 %52, i64* %XCX, align 8, !mcsema_real_eip !23
  %53 = load i32, i32* %20, align 4, !mcsema_real_eip !24
  %54 = sext i32 %53 to i64, !mcsema_real_eip !24
  store i64 %54, i64* %XDX, align 8, !mcsema_real_eip !24
  %55 = shl nsw i64 %54, 2
  %56 = add i64 %55, %52, !mcsema_real_eip !25
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !25
  store i32 %37, i32* %57, align 4, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4922 = load i8*, i8** %12, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4922, i64 -36
  %58 = bitcast i8* %_new_gep_50 to i32*
  %59 = load i32, i32* %58, align 4, !mcsema_real_eip !26
  %60 = add i32 %59, 1, !mcsema_real_eip !27
  %61 = xor i32 %60, %59, !mcsema_real_eip !27
  %62 = and i32 %61, 16, !mcsema_real_eip !27
  %63 = icmp ne i32 %62, 0, !mcsema_real_eip !27
  store i1 %63, i1* %AF, align 1, !mcsema_real_eip !27
  %64 = icmp slt i32 %60, 0
  store i1 %64, i1* %SF, align 1, !mcsema_real_eip !27
  %65 = icmp eq i32 %60, 0, !mcsema_real_eip !27
  store i1 %65, i1* %ZF, align 1, !mcsema_real_eip !27
  %66 = xor i32 %59, -2147483648, !mcsema_real_eip !27
  %67 = and i32 %61, %66, !mcsema_real_eip !27
  %68 = icmp slt i32 %67, 0
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !27
  %69 = trunc i32 %60 to i8, !mcsema_real_eip !27
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !27
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  store i1 %72, i1* %PF, align 1, !mcsema_real_eip !27
  %73 = icmp eq i32 %59, -1
  store i1 %73, i1* %CF, align 1, !mcsema_real_eip !27
  %74 = zext i32 %60 to i64, !mcsema_real_eip !27
  store i64 %74, i64* %XAX, align 8, !mcsema_real_eip !27
  store i32 %60, i32* %58, align 4, !mcsema_real_eip !28
  br label %block_0xe0, !mcsema_real_eip !29

block_0x10c:                                      ; preds = %block_0xe0
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3713, i64 -40
  %75 = bitcast i8* %_new_gep_56 to i32*
  store i32 0, i32* %75, align 4, !mcsema_real_eip !30
  br label %block_0x113, !mcsema_real_eip !20

block_0x113:                                      ; preds = %block_0x11d, %block_0x10c
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5814 = load i8*, i8** %12, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5814, i64 -40
  %76 = bitcast i8* %_new_gep_59 to i32*
  %77 = load i32, i32* %76, align 4, !mcsema_real_eip !31
  %78 = add i32 %77, -10
  %79 = xor i32 %78, %77, !mcsema_real_eip !31
  %80 = and i32 %79, 16, !mcsema_real_eip !31
  %81 = icmp ne i32 %80, 0, !mcsema_real_eip !31
  store i1 %81, i1* %AF, align 1, !mcsema_real_eip !31
  %82 = trunc i32 %78 to i8, !mcsema_real_eip !31
  %83 = call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !31
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !31
  %86 = icmp eq i32 %78, 0, !mcsema_real_eip !31
  store i1 %86, i1* %ZF, align 1, !mcsema_real_eip !31
  %87 = icmp slt i32 %78, 0
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !31
  %88 = icmp ult i32 %77, 10, !mcsema_real_eip !31
  store i1 %88, i1* %CF, align 1, !mcsema_real_eip !31
  %89 = and i32 %79, %77, !mcsema_real_eip !31
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF, align 1, !mcsema_real_eip !31
  %tmp3 = xor i1 %87, %90
  br i1 %tmp3, label %block_0x11d, label %block_0x13c, !mcsema_real_eip !32

block_0x11d:                                      ; preds = %block_0x113
  %91 = load i32, i32* %76, align 4, !mcsema_real_eip !33
  %92 = add i32 %91, 1, !mcsema_real_eip !34
  %93 = xor i32 %92, %91, !mcsema_real_eip !34
  %94 = and i32 %93, 16, !mcsema_real_eip !34
  %95 = icmp ne i32 %94, 0, !mcsema_real_eip !34
  store i1 %95, i1* %AF, align 1, !mcsema_real_eip !34
  %96 = icmp slt i32 %92, 0
  store i1 %96, i1* %SF, align 1, !mcsema_real_eip !34
  %97 = icmp eq i32 %92, 0, !mcsema_real_eip !34
  store i1 %97, i1* %ZF, align 1, !mcsema_real_eip !34
  %98 = xor i32 %91, -2147483648, !mcsema_real_eip !34
  %99 = and i32 %93, %98, !mcsema_real_eip !34
  %100 = icmp slt i32 %99, 0
  store i1 %100, i1* %OF, align 1, !mcsema_real_eip !34
  %101 = trunc i32 %92 to i8, !mcsema_real_eip !34
  %102 = call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !34
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  store i1 %104, i1* %PF, align 1, !mcsema_real_eip !34
  %105 = icmp eq i32 %91, -1
  store i1 %105, i1* %CF, align 1, !mcsema_real_eip !34
  %106 = zext i32 %92 to i64, !mcsema_real_eip !34
  store i64 %106, i64* %XAX, align 8, !mcsema_real_eip !34
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5814, i64 -32
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %107 = load i64, i64* %_allin_new_bt_66, align 8, !mcsema_real_eip !35
  store i64 %107, i64* %XCX, align 8, !mcsema_real_eip !35
  %108 = load i32, i32* %76, align 4, !mcsema_real_eip !36
  %109 = sext i32 %108 to i64, !mcsema_real_eip !36
  store i64 %109, i64* %XDX, align 8, !mcsema_real_eip !36
  %110 = shl nsw i64 %109, 2
  %111 = add i64 %110, %107, !mcsema_real_eip !37
  %112 = inttoptr i64 %111 to i32*, !mcsema_real_eip !37
  store i32 %92, i32* %112, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7021 = load i8*, i8** %12, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7021, i64 -40
  %113 = bitcast i8* %_new_gep_71 to i32*
  %114 = load i32, i32* %113, align 4, !mcsema_real_eip !38
  %115 = add i32 %114, 1, !mcsema_real_eip !39
  %116 = xor i32 %115, %114, !mcsema_real_eip !39
  %117 = and i32 %116, 16, !mcsema_real_eip !39
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !39
  store i1 %118, i1* %AF, align 1, !mcsema_real_eip !39
  %119 = icmp slt i32 %115, 0
  store i1 %119, i1* %SF, align 1, !mcsema_real_eip !39
  %120 = icmp eq i32 %115, 0, !mcsema_real_eip !39
  store i1 %120, i1* %ZF, align 1, !mcsema_real_eip !39
  %121 = xor i32 %114, -2147483648, !mcsema_real_eip !39
  %122 = and i32 %116, %121, !mcsema_real_eip !39
  %123 = icmp slt i32 %122, 0
  store i1 %123, i1* %OF, align 1, !mcsema_real_eip !39
  %124 = trunc i32 %115 to i8, !mcsema_real_eip !39
  %125 = call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !39
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  store i1 %127, i1* %PF, align 1, !mcsema_real_eip !39
  %128 = icmp eq i32 %114, -1
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !39
  %129 = zext i32 %115 to i64, !mcsema_real_eip !39
  store i64 %129, i64* %XAX, align 8, !mcsema_real_eip !39
  store i32 %115, i32* %113, align 4, !mcsema_real_eip !40
  br label %block_0x113, !mcsema_real_eip !41

block_0x13c:                                      ; preds = %block_0x113
  store i64 100, i64* %XDI, align 8, !mcsema_real_eip !42
  store i64 200, i64* %XSI, align 8, !mcsema_real_eip !43
  %130 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %130, align 8
  %131 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %131, align 8
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !44
  %_new_gep_77 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5814, i64 -24
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %132 = load i64, i64* %_allin_new_bt_78, align 8, !mcsema_real_eip !45
  store i64 %132, i64* %R10, align 8, !mcsema_real_eip !45
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5814, i64 -32
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %133 = load i64, i64* %_allin_new_bt_81, align 8, !mcsema_real_eip !46
  store i64 %133, i64* %R11, align 8, !mcsema_real_eip !46
  %134 = bitcast i8** %_RSP_ptr_ to i32**
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_8245615 = load i32*, i32** %134, align 8
  store i32 10, i32* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_8245615, align 4, !mcsema_real_eip !47
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_86 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85, i64 8
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %R10_val.48 = load i64, i64* %R10, align 8, !mcsema_real_eip !48
  store i64 %R10_val.48, i64* %_allin_new_bt_87, align 8, !mcsema_real_eip !48
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_89 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88, i64 16
  %135 = bitcast i8* %_new_gep_89 to i32*
  store i32 10, i32* %135, align 4, !mcsema_real_eip !49
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_91 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_92 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_91, i64 24
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %R11_val.51 = load i64, i64* %R11, align 8, !mcsema_real_eip !50
  store i64 %R11_val.51, i64* %_allin_new_bt_93, align 8, !mcsema_real_eip !50
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9416 = load i8*, i8** %12, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9416, i64 -48
  %EAX_val.54 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !51
  %136 = bitcast i8* %_new_gep_95 to i32*
  store i32 %EAX_val.54, i32* %136, align 4, !mcsema_real_eip !51
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.55 = load i64, i64* %XSP, align 8, !mcsema_real_eip !52
  %_new_gep_98 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 -8
  %137 = add i64 %RSP_val.55, -8
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, align 8, !mcsema_real_eip !52
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_, align 8
  store i64 %137, i64* %XSP, align 8, !mcsema_real_eip !52
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15117 = load i8*, i8** %12, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* nonnull %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15117)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_153 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_154 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_153, i64 8
  store i8* %_gep_fix_154, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x1af to i64), i64* %XDI, align 8, !mcsema_real_eip !53
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10018 = load i8*, i8** %12, align 8
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10018, i64 -44
  %EAX_val.58 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !54
  %138 = bitcast i8* %_new_gep_101 to i32*
  store i32 %EAX_val.58, i32* %138, align 4, !mcsema_real_eip !54
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10319 = load i8*, i8** %12, align 8
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10319, i64 -44
  %139 = bitcast i8* %_new_gep_104 to i32*
  %140 = load i32, i32* %139, align 4, !mcsema_real_eip !55
  %141 = zext i32 %140 to i64, !mcsema_real_eip !55
  store i64 %141, i64* %XSI, align 8, !mcsema_real_eip !55
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !56
  store i8 0, i8* %AL.60, align 1, !mcsema_real_eip !56
  %RDI_val.61 = load i64, i64* %XDI, align 8, !mcsema_real_eip !57
  %RDX_val.63 = load i64, i64* %XDX, align 8, !mcsema_real_eip !57
  %RCX_val.64 = load i64, i64* %XCX, align 8, !mcsema_real_eip !57
  %R8_val.65 = load i64, i64* %R8, align 8, !mcsema_real_eip !57
  %R9_val.66 = load i64, i64* %R9, align 8, !mcsema_real_eip !57
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106 = load i8*, i8** %_RSP_ptr_, align 8
  %_allin_new_bt_107 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106 to i64*
  %142 = load i64, i64* %_allin_new_bt_107, align 8, !mcsema_real_eip !57
  %_new_gep_108 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 8
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %143 = load i64, i64* %_allin_new_bt_109, align 8, !mcsema_real_eip !57
  %_new_gep_110 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 16
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %144 = load i64, i64* %_allin_new_bt_111, align 8, !mcsema_real_eip !57
  %_new_gep_112 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 24
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %145 = load i64, i64* %_allin_new_bt_113, align 8, !mcsema_real_eip !57
  %_new_gep_114 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 32
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %146 = load i64, i64* %_allin_new_bt_115, align 8, !mcsema_real_eip !57
  %_new_gep_116 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 40
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %147 = load i64, i64* %_allin_new_bt_117, align 8, !mcsema_real_eip !57
  %RSP_val.68 = load i64, i64* %XSP, align 8, !mcsema_real_eip !57
  %_new_gep_119 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 -8
  %148 = add i64 %RSP_val.68, -8
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_120, align 8, !mcsema_real_eip !57
  store volatile i8* %_new_gep_119, i8** %_RSP_ptr_, align 8
  store i64 %148, i64* %XSP, align 8, !mcsema_real_eip !57
  %149 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.61, i64 %141, i64 %RDX_val.63, i64 %RCX_val.64, i64 %R8_val.65, i64 %R9_val.66, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_155 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_156 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_155, i64 8
  store i8* %_gep_fix_156, i8** %_RSP_ptr_, align 8
  store i64 %149, i64* %XAX, align 8, !mcsema_real_eip !57
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12120 = load i8*, i8** %12, align 8
  %_new_gep_122 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12120, i64 -44
  %150 = bitcast i8* %_new_gep_122 to i32*
  %151 = load i32, i32* %150, align 4, !mcsema_real_eip !58
  %152 = zext i32 %151 to i64, !mcsema_real_eip !58
  store i64 %152, i64* %XCX, align 8, !mcsema_real_eip !58
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12120, i64 -52
  %153 = trunc i64 %149 to i32
  %154 = bitcast i8* %_new_gep_125 to i32*
  store i32 %153, i32* %154, align 4, !mcsema_real_eip !59
  %ECX.73 = bitcast i64* %XCX to i32*, !mcsema_real_eip !60
  %ECX_val.74 = load i32, i32* %ECX.73, align 4, !mcsema_real_eip !60
  %155 = zext i32 %ECX_val.74 to i64, !mcsema_real_eip !60
  store i64 %155, i64* %XAX, align 8, !mcsema_real_eip !60
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.75 = load i64, i64* %XSP, align 8, !mcsema_real_eip !61
  %_new_gep_128 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127, i64 96
  %156 = add i64 %RSP_val.75, 96, !mcsema_real_eip !61
  %_trans_p2i_129 = ptrtoint i8* %_new_gep_128 to i64
  %_trans_p2i_130 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127 to i64
  %_trans_xor_131 = xor i64 %_trans_p2i_129, %_trans_p2i_130
  %157 = and i64 %_trans_xor_131, 16, !mcsema_real_eip !61
  %158 = icmp ne i64 %157, 0, !mcsema_real_eip !61
  store i1 %158, i1* %AF, align 1, !mcsema_real_eip !61
  %159 = icmp slt i64 %156, 0
  store i1 %159, i1* %SF, align 1, !mcsema_real_eip !61
  %_trans_icmp_eq_133 = icmp eq i8* %_new_gep_128, null
  store i1 %_trans_icmp_eq_133, i1* %ZF, align 1, !mcsema_real_eip !61
  %160 = xor i64 %_trans_p2i_130, -9223372036854775808, !mcsema_real_eip !61
  %161 = and i64 %_trans_xor_131, %160, !mcsema_real_eip !61
  %162 = icmp slt i64 %161, 0
  store i1 %162, i1* %OF, align 1, !mcsema_real_eip !61
  %_trans_trunc_140 = trunc i64 %_trans_p2i_129 to i8
  %163 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_140), !mcsema_real_eip !61
  %164 = and i8 %163, 1
  %165 = icmp eq i8 %164, 0
  store i1 %165, i1* %PF, align 1, !mcsema_real_eip !61
  %_trans_icmp_ne_142 = icmp ne i64 %_trans_p2i_129, %RSP_val.75
  store i1 %_trans_icmp_ne_142, i1* %CF, align 1, !mcsema_real_eip !61
  store volatile i8* %_new_gep_128, i8** %_RSP_ptr_, align 8
  store i64 %156, i64* %XSP, align 8, !mcsema_real_eip !61
  %_allin_new_bt_144 = bitcast i8* %_new_gep_128 to i64*
  %166 = load i64, i64* %_allin_new_bt_144, align 8, !mcsema_real_eip !62
  store volatile i64 %166, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %166, i64* %XBP, align 8, !mcsema_real_eip !62
  %_new_gep_145 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127, i64 104
  %167 = add i64 %RSP_val.75, 104, !mcsema_real_eip !62
  store volatile i8* %_new_gep_145, i8** %_RSP_ptr_, align 8
  store i64 %167, i64* %XSP, align 8, !mcsema_real_eip !62
  %_new_gep_147 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127, i64 112
  %168 = add i64 %RSP_val.75, 112, !mcsema_real_eip !63
  %_allin_new_bt_148 = bitcast i8* %_new_gep_145 to i64*
  %169 = load i64, i64* %_allin_new_bt_148, align 8, !mcsema_real_eip !63
  store i64 %169, i64* %XIP, align 8, !mcsema_real_eip !63
  store volatile i8* %_new_gep_147, i8** %_RSP_ptr_, align 8
  store i64 %168, i64* %XSP, align 8, !mcsema_real_eip !63
  ret void, !mcsema_real_eip !63
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !64
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !64
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !64
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !64
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !64
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !64
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !64
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !64
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !64
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !64
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !64
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !64
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !64
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !64
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !64
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !64
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !64
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !64
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !64
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !64
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !64
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !64
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !64
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !64
  %RBP_val.93 = load i64, i64* %XBP, align 8, !mcsema_real_eip !64
  %RSP_val.94 = load i64, i64* %XSP, align 8, !mcsema_real_eip !64
  %1 = add i64 %RSP_val.94, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !64
  store i64 %RBP_val.93, i64* %2, align 8, !mcsema_real_eip !64
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !65
  %RBX_val.96 = load i64, i64* %XBX, align 8, !mcsema_real_eip !66
  %3 = add i64 %RSP_val.94, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !66
  store i64 %RBX_val.96, i64* %4, align 8, !mcsema_real_eip !66
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !66
  %RBP_val.98 = load i64, i64* %XBP, align 8, !mcsema_real_eip !67
  %5 = add i64 %RBP_val.98, 40, !mcsema_real_eip !67
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !67
  %7 = load i64, i64* %6, align 8, !mcsema_real_eip !67
  store i64 %7, i64* %XAX, align 8, !mcsema_real_eip !67
  %8 = add i64 %RBP_val.98, 32, !mcsema_real_eip !68
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !68
  %10 = load i32, i32* %9, align 4, !mcsema_real_eip !68
  %11 = zext i32 %10 to i64, !mcsema_real_eip !68
  store i64 %11, i64* %R10, align 8, !mcsema_real_eip !68
  %12 = add i64 %RBP_val.98, 24, !mcsema_real_eip !69
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !69
  %14 = load i64, i64* %13, align 8, !mcsema_real_eip !69
  store i64 %14, i64* %R11, align 8, !mcsema_real_eip !69
  %15 = add i64 %RBP_val.98, 16, !mcsema_real_eip !70
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !70
  %17 = load i32, i32* %16, align 4, !mcsema_real_eip !70
  %18 = zext i32 %17 to i64, !mcsema_real_eip !70
  store i64 %18, i64* %XBX, align 8, !mcsema_real_eip !70
  %19 = add i64 %RBP_val.98, -12, !mcsema_real_eip !71
  %EDI.103 = bitcast i64* %XDI to i32*, !mcsema_real_eip !71
  %EDI_val.104 = load i32, i32* %EDI.103, align 4, !mcsema_real_eip !71
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !71
  store i32 %EDI_val.104, i32* %20, align 4, !mcsema_real_eip !71
  %RBP_val.105 = load i64, i64* %XBP, align 8, !mcsema_real_eip !72
  %21 = add i64 %RBP_val.105, -16, !mcsema_real_eip !72
  %ESI.106 = bitcast i64* %XSI to i32*, !mcsema_real_eip !72
  %ESI_val.107 = load i32, i32* %ESI.106, align 4, !mcsema_real_eip !72
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !72
  store i32 %ESI_val.107, i32* %22, align 4, !mcsema_real_eip !72
  %RBP_val.108 = load i64, i64* %XBP, align 8, !mcsema_real_eip !73
  %23 = add i64 %RBP_val.108, -20, !mcsema_real_eip !73
  %EDX.109 = bitcast i64* %XDX to i32*, !mcsema_real_eip !73
  %EDX_val.110 = load i32, i32* %EDX.109, align 4, !mcsema_real_eip !73
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !73
  store i32 %EDX_val.110, i32* %24, align 4, !mcsema_real_eip !73
  %RBP_val.111 = load i64, i64* %XBP, align 8, !mcsema_real_eip !74
  %25 = add i64 %RBP_val.111, -24, !mcsema_real_eip !74
  %ECX.112 = bitcast i64* %XCX to i32*, !mcsema_real_eip !74
  %ECX_val.113 = load i32, i32* %ECX.112, align 4, !mcsema_real_eip !74
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !74
  store i32 %ECX_val.113, i32* %26, align 4, !mcsema_real_eip !74
  %RBP_val.114 = load i64, i64* %XBP, align 8, !mcsema_real_eip !75
  %27 = add i64 %RBP_val.114, -28, !mcsema_real_eip !75
  %R8D.115 = bitcast i64* %R8 to i32*, !mcsema_real_eip !75
  %R8D_val.116 = load i32, i32* %R8D.115, align 4, !mcsema_real_eip !75
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !75
  store i32 %R8D_val.116, i32* %28, align 4, !mcsema_real_eip !75
  %RBP_val.117 = load i64, i64* %XBP, align 8, !mcsema_real_eip !76
  %29 = add i64 %RBP_val.117, -32, !mcsema_real_eip !76
  %R9D.118 = bitcast i64* %R9 to i32*, !mcsema_real_eip !76
  %R9D_val.119 = load i32, i32* %R9D.118, align 4, !mcsema_real_eip !76
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !76
  store i32 %R9D_val.119, i32* %30, align 4, !mcsema_real_eip !76
  %RBP_val.120 = load i64, i64* %XBP, align 8, !mcsema_real_eip !77
  %31 = add i64 %RBP_val.120, -36, !mcsema_real_eip !77
  %EBX.121 = bitcast i64* %XBX to i32*, !mcsema_real_eip !77
  %EBX_val.122 = load i32, i32* %EBX.121, align 4, !mcsema_real_eip !77
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !77
  store i32 %EBX_val.122, i32* %32, align 4, !mcsema_real_eip !77
  %RBP_val.123 = load i64, i64* %XBP, align 8, !mcsema_real_eip !78
  %33 = add i64 %RBP_val.123, -48, !mcsema_real_eip !78
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !78
  %R11_val.124 = load i64, i64* %R11, align 8, !mcsema_real_eip !78
  store i64 %R11_val.124, i64* %34, align 8, !mcsema_real_eip !78
  %RBP_val.125 = load i64, i64* %XBP, align 8, !mcsema_real_eip !79
  %35 = add i64 %RBP_val.125, -52, !mcsema_real_eip !79
  %R10D.126 = bitcast i64* %R10 to i32*, !mcsema_real_eip !79
  %R10D_val.127 = load i32, i32* %R10D.126, align 4, !mcsema_real_eip !79
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !79
  store i32 %R10D_val.127, i32* %36, align 4, !mcsema_real_eip !79
  %RBP_val.128 = load i64, i64* %XBP, align 8, !mcsema_real_eip !80
  %37 = add i64 %RBP_val.128, -64, !mcsema_real_eip !80
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !80
  %RAX_val.129 = load i64, i64* %XAX, align 8, !mcsema_real_eip !80
  store i64 %RAX_val.129, i64* %38, align 8, !mcsema_real_eip !80
  %RBP_val.130 = load i64, i64* %XBP, align 8, !mcsema_real_eip !81
  %39 = add i64 %RBP_val.130, -68, !mcsema_real_eip !81
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !81
  store i32 0, i32* %40, align 4, !mcsema_real_eip !81
  %RBP_val.131 = load i64, i64* %XBP, align 8, !mcsema_real_eip !82
  %41 = add i64 %RBP_val.131, -72, !mcsema_real_eip !82
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !82
  store i32 0, i32* %42, align 4, !mcsema_real_eip !82
  %EAX.134 = bitcast i64* %XAX to i32*, !mcsema_real_eip !83
  br label %block_0x45, !mcsema_real_eip !84

block_0x45:                                       ; preds = %block_0x51, %entry
  %RBP_val.132 = load i64, i64* %XBP, align 8, !mcsema_real_eip !84
  %43 = add i64 %RBP_val.132, -72, !mcsema_real_eip !84
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !84
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !84
  %46 = zext i32 %45 to i64, !mcsema_real_eip !84
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !84
  %47 = add i64 %RBP_val.132, -36, !mcsema_real_eip !83
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !83
  %49 = load i32, i32* %48, align 4, !mcsema_real_eip !83
  %50 = sub i32 %45, %49, !mcsema_real_eip !83
  %51 = xor i32 %50, %45, !mcsema_real_eip !83
  %52 = xor i32 %51, %49, !mcsema_real_eip !83
  %53 = and i32 %52, 16, !mcsema_real_eip !83
  %54 = icmp ne i32 %53, 0, !mcsema_real_eip !83
  store i1 %54, i1* %AF, align 1, !mcsema_real_eip !83
  %55 = trunc i32 %50 to i8, !mcsema_real_eip !83
  %56 = tail call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !83
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  store i1 %58, i1* %PF, align 1, !mcsema_real_eip !83
  %59 = icmp eq i32 %50, 0, !mcsema_real_eip !83
  store i1 %59, i1* %ZF, align 1, !mcsema_real_eip !83
  %60 = icmp slt i32 %50, 0
  store i1 %60, i1* %SF, align 1, !mcsema_real_eip !83
  %61 = icmp ult i32 %45, %49, !mcsema_real_eip !83
  store i1 %61, i1* %CF, align 1, !mcsema_real_eip !83
  %62 = xor i32 %49, %45, !mcsema_real_eip !83
  %63 = and i32 %51, %62, !mcsema_real_eip !83
  %64 = icmp slt i32 %63, 0
  store i1 %64, i1* %OF, align 1, !mcsema_real_eip !83
  %tmp = xor i1 %60, %64
  %65 = add i64 %RBP_val.132, -68
  %66 = inttoptr i64 %65 to i32*
  br i1 %tmp, label %block_0x51, label %block_0x7b, !mcsema_real_eip !85

block_0x51:                                       ; preds = %block_0x45
  %67 = add i64 %RBP_val.132, -48, !mcsema_real_eip !86
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !86
  %69 = load i64, i64* %68, align 8, !mcsema_real_eip !86
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !86
  %70 = load i32, i32* %44, align 4, !mcsema_real_eip !87
  %71 = sext i32 %70 to i64, !mcsema_real_eip !87
  store i64 %71, i64* %XCX, align 8, !mcsema_real_eip !87
  %72 = shl nsw i64 %71, 2
  %73 = add i64 %72, %69, !mcsema_real_eip !88
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !88
  %75 = load i32, i32* %74, align 4, !mcsema_real_eip !88
  %76 = zext i32 %75 to i64, !mcsema_real_eip !88
  store i64 %76, i64* %XDX, align 8, !mcsema_real_eip !88
  %77 = add i64 %RBP_val.132, -64, !mcsema_real_eip !89
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !89
  %79 = load i64, i64* %78, align 8, !mcsema_real_eip !89
  store i64 %79, i64* %XAX, align 8, !mcsema_real_eip !89
  %80 = load i32, i32* %44, align 4, !mcsema_real_eip !90
  %81 = sext i32 %80 to i64, !mcsema_real_eip !90
  store i64 %81, i64* %XCX, align 8, !mcsema_real_eip !90
  %82 = shl nsw i64 %81, 2
  %83 = add i64 %82, %79, !mcsema_real_eip !91
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !91
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !91
  %86 = sub i32 %75, %85, !mcsema_real_eip !91
  %87 = xor i32 %86, %75, !mcsema_real_eip !91
  %88 = xor i32 %87, %85, !mcsema_real_eip !91
  %89 = and i32 %88, 16, !mcsema_real_eip !91
  %90 = icmp ne i32 %89, 0, !mcsema_real_eip !91
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !91
  %91 = trunc i32 %86 to i8, !mcsema_real_eip !91
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !91
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !91
  %95 = icmp eq i32 %86, 0, !mcsema_real_eip !91
  store i1 %95, i1* %ZF, align 1, !mcsema_real_eip !91
  %96 = icmp slt i32 %86, 0
  store i1 %96, i1* %SF, align 1, !mcsema_real_eip !91
  %97 = icmp ult i32 %75, %85, !mcsema_real_eip !91
  store i1 %97, i1* %CF, align 1, !mcsema_real_eip !91
  %98 = xor i32 %85, %75, !mcsema_real_eip !91
  %99 = and i32 %87, %98, !mcsema_real_eip !91
  %100 = icmp slt i32 %99, 0
  store i1 %100, i1* %OF, align 1, !mcsema_real_eip !91
  %101 = zext i32 %86 to i64, !mcsema_real_eip !91
  store i64 %101, i64* %XDX, align 8, !mcsema_real_eip !91
  %102 = load i32, i32* %66, align 4, !mcsema_real_eip !92
  %103 = add i32 %86, %102, !mcsema_real_eip !92
  %104 = xor i32 %103, %102, !mcsema_real_eip !92
  %105 = xor i32 %104, %86, !mcsema_real_eip !92
  %106 = and i32 %105, 16, !mcsema_real_eip !92
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !92
  store i1 %107, i1* %AF, align 1, !mcsema_real_eip !92
  %108 = icmp slt i32 %103, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !92
  %109 = icmp eq i32 %103, 0, !mcsema_real_eip !92
  store i1 %109, i1* %ZF, align 1, !mcsema_real_eip !92
  %110 = xor i32 %102, -2147483648, !mcsema_real_eip !92
  %111 = xor i32 %110, %86, !mcsema_real_eip !92
  %112 = and i32 %104, %111, !mcsema_real_eip !92
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF, align 1, !mcsema_real_eip !92
  %114 = trunc i32 %103 to i8, !mcsema_real_eip !92
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !92
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !92
  %118 = icmp ult i32 %103, %102, !mcsema_real_eip !92
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !92
  %119 = zext i32 %103 to i64, !mcsema_real_eip !92
  store i64 %119, i64* %XDX, align 8, !mcsema_real_eip !92
  store i32 %103, i32* %66, align 4, !mcsema_real_eip !93
  %RBP_val.176 = load i64, i64* %XBP, align 8, !mcsema_real_eip !94
  %120 = add i64 %RBP_val.176, -72, !mcsema_real_eip !94
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !94
  %122 = load i32, i32* %121, align 4, !mcsema_real_eip !94
  %123 = add i32 %122, 1, !mcsema_real_eip !95
  %124 = xor i32 %123, %122, !mcsema_real_eip !95
  %125 = and i32 %124, 16, !mcsema_real_eip !95
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !95
  store i1 %126, i1* %AF, align 1, !mcsema_real_eip !95
  %127 = icmp slt i32 %123, 0
  store i1 %127, i1* %SF, align 1, !mcsema_real_eip !95
  %128 = icmp eq i32 %123, 0, !mcsema_real_eip !95
  store i1 %128, i1* %ZF, align 1, !mcsema_real_eip !95
  %129 = xor i32 %122, -2147483648, !mcsema_real_eip !95
  %130 = and i32 %124, %129, !mcsema_real_eip !95
  %131 = icmp slt i32 %130, 0
  store i1 %131, i1* %OF, align 1, !mcsema_real_eip !95
  %132 = trunc i32 %123 to i8, !mcsema_real_eip !95
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !95
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  store i1 %135, i1* %PF, align 1, !mcsema_real_eip !95
  %136 = icmp eq i32 %122, -1
  store i1 %136, i1* %CF, align 1, !mcsema_real_eip !95
  %137 = zext i32 %123 to i64, !mcsema_real_eip !95
  store i64 %137, i64* %XAX, align 8, !mcsema_real_eip !95
  store i32 %123, i32* %121, align 4, !mcsema_real_eip !96
  br label %block_0x45, !mcsema_real_eip !97

block_0x7b:                                       ; preds = %block_0x45
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !64
  %138 = load i32, i32* %66, align 4, !mcsema_real_eip !98
  %139 = zext i32 %138 to i64, !mcsema_real_eip !98
  store i64 %139, i64* %XAX, align 8, !mcsema_real_eip !98
  %140 = add i64 %RBP_val.132, -12, !mcsema_real_eip !99
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !99
  %142 = load i32, i32* %141, align 4, !mcsema_real_eip !99
  %143 = zext i32 %142 to i64, !mcsema_real_eip !99
  store i64 %143, i64* %XCX, align 8, !mcsema_real_eip !99
  %144 = add i64 %RBP_val.132, -16, !mcsema_real_eip !100
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !100
  %146 = load i32, i32* %145, align 4, !mcsema_real_eip !100
  %147 = add i32 %142, %146, !mcsema_real_eip !100
  %148 = xor i32 %147, %146, !mcsema_real_eip !100
  %149 = xor i32 %148, %142, !mcsema_real_eip !100
  %150 = and i32 %149, 16, !mcsema_real_eip !100
  %151 = icmp ne i32 %150, 0, !mcsema_real_eip !100
  store i1 %151, i1* %AF, align 1, !mcsema_real_eip !100
  %152 = icmp slt i32 %147, 0
  store i1 %152, i1* %SF, align 1, !mcsema_real_eip !100
  %153 = icmp eq i32 %147, 0, !mcsema_real_eip !100
  store i1 %153, i1* %ZF, align 1, !mcsema_real_eip !100
  %154 = xor i32 %146, -2147483648, !mcsema_real_eip !100
  %155 = xor i32 %154, %142, !mcsema_real_eip !100
  %156 = and i32 %148, %155, !mcsema_real_eip !100
  %157 = icmp slt i32 %156, 0
  store i1 %157, i1* %OF, align 1, !mcsema_real_eip !100
  %158 = trunc i32 %147 to i8, !mcsema_real_eip !100
  %159 = tail call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !100
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  store i1 %161, i1* %PF, align 1, !mcsema_real_eip !100
  %162 = icmp ult i32 %147, %146, !mcsema_real_eip !100
  store i1 %162, i1* %CF, align 1, !mcsema_real_eip !100
  %163 = zext i32 %147 to i64, !mcsema_real_eip !100
  store i64 %163, i64* %XCX, align 8, !mcsema_real_eip !100
  %164 = add i64 %RBP_val.132, -20, !mcsema_real_eip !101
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !101
  %166 = load i32, i32* %165, align 4, !mcsema_real_eip !101
  %167 = add i32 %147, %166, !mcsema_real_eip !101
  %168 = xor i32 %167, %166, !mcsema_real_eip !101
  %169 = xor i32 %168, %147, !mcsema_real_eip !101
  %170 = and i32 %169, 16, !mcsema_real_eip !101
  %171 = icmp ne i32 %170, 0, !mcsema_real_eip !101
  store i1 %171, i1* %AF, align 1, !mcsema_real_eip !101
  %172 = icmp slt i32 %167, 0
  store i1 %172, i1* %SF, align 1, !mcsema_real_eip !101
  %173 = icmp eq i32 %167, 0, !mcsema_real_eip !101
  store i1 %173, i1* %ZF, align 1, !mcsema_real_eip !101
  %174 = xor i32 %166, -2147483648, !mcsema_real_eip !101
  %175 = xor i32 %174, %147, !mcsema_real_eip !101
  %176 = and i32 %168, %175, !mcsema_real_eip !101
  %177 = icmp slt i32 %176, 0
  store i1 %177, i1* %OF, align 1, !mcsema_real_eip !101
  %178 = trunc i32 %167 to i8, !mcsema_real_eip !101
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !101
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  store i1 %181, i1* %PF, align 1, !mcsema_real_eip !101
  %182 = icmp ult i32 %167, %166, !mcsema_real_eip !101
  store i1 %182, i1* %CF, align 1, !mcsema_real_eip !101
  %183 = zext i32 %167 to i64, !mcsema_real_eip !101
  store i64 %183, i64* %XCX, align 8, !mcsema_real_eip !101
  %184 = add i64 %RBP_val.132, -24, !mcsema_real_eip !102
  %185 = inttoptr i64 %184 to i32*, !mcsema_real_eip !102
  %186 = load i32, i32* %185, align 4, !mcsema_real_eip !102
  %187 = add i32 %167, %186, !mcsema_real_eip !102
  %188 = xor i32 %187, %186, !mcsema_real_eip !102
  %189 = xor i32 %188, %167, !mcsema_real_eip !102
  %190 = and i32 %189, 16, !mcsema_real_eip !102
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !102
  store i1 %191, i1* %AF, align 1, !mcsema_real_eip !102
  %192 = icmp slt i32 %187, 0
  store i1 %192, i1* %SF, align 1, !mcsema_real_eip !102
  %193 = icmp eq i32 %187, 0, !mcsema_real_eip !102
  store i1 %193, i1* %ZF, align 1, !mcsema_real_eip !102
  %194 = xor i32 %186, -2147483648, !mcsema_real_eip !102
  %195 = xor i32 %194, %167, !mcsema_real_eip !102
  %196 = and i32 %188, %195, !mcsema_real_eip !102
  %197 = icmp slt i32 %196, 0
  store i1 %197, i1* %OF, align 1, !mcsema_real_eip !102
  %198 = trunc i32 %187 to i8, !mcsema_real_eip !102
  %199 = tail call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !102
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  store i1 %201, i1* %PF, align 1, !mcsema_real_eip !102
  %202 = icmp ult i32 %187, %186, !mcsema_real_eip !102
  store i1 %202, i1* %CF, align 1, !mcsema_real_eip !102
  %203 = zext i32 %187 to i64, !mcsema_real_eip !102
  store i64 %203, i64* %XCX, align 8, !mcsema_real_eip !102
  %204 = add i64 %RBP_val.132, -28, !mcsema_real_eip !103
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !103
  %206 = load i32, i32* %205, align 4, !mcsema_real_eip !103
  %207 = add i32 %187, %206, !mcsema_real_eip !103
  %208 = xor i32 %207, %206, !mcsema_real_eip !103
  %209 = xor i32 %208, %187, !mcsema_real_eip !103
  %210 = and i32 %209, 16, !mcsema_real_eip !103
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !103
  store i1 %211, i1* %AF, align 1, !mcsema_real_eip !103
  %212 = icmp slt i32 %207, 0
  store i1 %212, i1* %SF, align 1, !mcsema_real_eip !103
  %213 = icmp eq i32 %207, 0, !mcsema_real_eip !103
  store i1 %213, i1* %ZF, align 1, !mcsema_real_eip !103
  %214 = xor i32 %206, -2147483648, !mcsema_real_eip !103
  %215 = xor i32 %214, %187, !mcsema_real_eip !103
  %216 = and i32 %208, %215, !mcsema_real_eip !103
  %217 = icmp slt i32 %216, 0
  store i1 %217, i1* %OF, align 1, !mcsema_real_eip !103
  %218 = trunc i32 %207 to i8, !mcsema_real_eip !103
  %219 = tail call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !103
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !103
  %222 = icmp ult i32 %207, %206, !mcsema_real_eip !103
  store i1 %222, i1* %CF, align 1, !mcsema_real_eip !103
  %223 = zext i32 %207 to i64, !mcsema_real_eip !103
  store i64 %223, i64* %XCX, align 8, !mcsema_real_eip !103
  %224 = add i64 %RBP_val.132, -32, !mcsema_real_eip !104
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !104
  %226 = load i32, i32* %225, align 4, !mcsema_real_eip !104
  %227 = add i32 %207, %226, !mcsema_real_eip !104
  %228 = xor i32 %227, %226, !mcsema_real_eip !104
  %229 = xor i32 %228, %207, !mcsema_real_eip !104
  %230 = and i32 %229, 16, !mcsema_real_eip !104
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !104
  store i1 %231, i1* %AF, align 1, !mcsema_real_eip !104
  %232 = icmp eq i32 %227, 0, !mcsema_real_eip !104
  store i1 %232, i1* %ZF, align 1, !mcsema_real_eip !104
  %233 = trunc i32 %227 to i8, !mcsema_real_eip !104
  %234 = tail call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !104
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  store i1 %236, i1* %PF, align 1, !mcsema_real_eip !104
  %237 = zext i32 %227 to i64, !mcsema_real_eip !104
  store i64 %237, i64* %XCX, align 8, !mcsema_real_eip !104
  %EAX_val.156 = load i32, i32* %EAX.134, align 4, !mcsema_real_eip !105
  %238 = sext i32 %EAX_val.156 to i64, !mcsema_real_eip !105
  %239 = sext i32 %227 to i64, !mcsema_real_eip !105
  %240 = mul nsw i64 %238, %239, !mcsema_real_eip !105
  %241 = trunc i64 %240 to i32, !mcsema_real_eip !105
  %sext = shl i64 %240, 32
  %242 = ashr exact i64 %sext, 32
  %243 = icmp ne i64 %242, %240, !mcsema_real_eip !105
  %244 = icmp slt i32 %241, 0, !mcsema_real_eip !105
  store i1 %244, i1* %SF, align 1, !mcsema_real_eip !105
  store i1 %243, i1* %OF, align 1, !mcsema_real_eip !105
  store i1 %243, i1* %CF, align 1, !mcsema_real_eip !105
  %245 = and i64 %240, 4294967295
  store i64 %245, i64* %XAX, align 8, !mcsema_real_eip !105
  %RSP_val.157 = load i64, i64* %XSP, align 8, !mcsema_real_eip !106
  %246 = inttoptr i64 %RSP_val.157 to i64*, !mcsema_real_eip !106
  %247 = load i64, i64* %246, align 8, !mcsema_real_eip !106
  store i64 %247, i64* %XBX, align 8, !mcsema_real_eip !106
  %248 = add i64 %RSP_val.157, 8, !mcsema_real_eip !106
  store i64 %248, i64* %XSP, align 8, !mcsema_real_eip !106
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !107
  %250 = load i64, i64* %249, align 8, !mcsema_real_eip !107
  store i64 %250, i64* %XBP, align 8, !mcsema_real_eip !107
  %251 = add i64 %RSP_val.157, 16, !mcsema_real_eip !107
  store i64 %251, i64* %XSP, align 8, !mcsema_real_eip !107
  %252 = add i64 %RSP_val.157, 24, !mcsema_real_eip !108
  %253 = inttoptr i64 %251 to i64*, !mcsema_real_eip !108
  %254 = load i64, i64* %253, align 8, !mcsema_real_eip !108
  store i64 %254, i64* %XIP, align 8, !mcsema_real_eip !108
  store i64 %252, i64* %XSP, align 8, !mcsema_real_eip !108
  ret void, !mcsema_real_eip !108
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [112 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 112
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
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
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -104
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
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 96 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 40, i64* %XAX, align 8, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  store i64 40, i64* %XCX, align 8, !mcsema_real_eip !6
  %_new_gep_14 = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 100
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !7
  %_new_gep_17 = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 96
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.9 = load i32, i32* %EDI.8, align 4, !mcsema_real_eip !8
  %12 = bitcast i8* %_new_gep_17 to i32*
  store i32 %EDI_val.9, i32* %12, align 8, !mcsema_real_eip !8
  %_new_gep_20 = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.11 = load i64, i64* %XSI, align 8, !mcsema_real_eip !9
  store i64 %RSI_val.11, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !9
  store i64 40, i64* %XDI, align 8, !mcsema_real_eip !10
  %_new_gep_23 = getelementptr inbounds [112 x i8], [112 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %13 = add i64 %RSP_val.1, -112
  %_allin_new_bt_24 = bitcast [112 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !11
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XSP, align 8, !mcsema_real_eip !11
  %14 = call x86_64_sysvcc i64 @_malloc(i64 40)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XAX, align 8, !mcsema_real_eip !11
  store i64 40, i64* %XDX, align 8, !mcsema_real_eip !12
  store i64 40, i64* %XDI, align 8, !mcsema_real_eip !13
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 %14, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !14
  %RDI_val.19 = load i64, i64* %XDI, align 8, !mcsema_real_eip !15
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.20 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 -8
  %15 = add i64 %RSP_val.20, -8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %15, i64* %XSP, align 8, !mcsema_real_eip !15
  %16 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.19)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_149 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_150 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_149, i64 8
  store i8* %_gep_fix_150, i8** %_RSP_ptr_, align 8
  store i64 %16, i64* %XAX, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -32
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %16, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -36
  %17 = bitcast i8* %_new_gep_35 to i32*
  store i32 0, i32* %17, align 4, !mcsema_real_eip !17
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  br label %block_0xe0, !mcsema_real_eip !18

block_0xe0:                                       ; preds = %block_0xea, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -36
  %18 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_ = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_38
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %19 = add i32 %_new_load_, -10
  %20 = xor i32 %19, %_new_load_, !mcsema_real_eip !18
  %21 = and i32 %20, 16, !mcsema_real_eip !18
  %22 = icmp ne i32 %21, 0, !mcsema_real_eip !18
  store i1 %22, i1* %AF, align 1, !mcsema_real_eip !18
  %23 = trunc i32 %19 to i8, !mcsema_real_eip !18
  %24 = call i8 @llvm.ctpop.i8(i8 %23), !mcsema_real_eip !18
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  store i1 %26, i1* %PF, align 1, !mcsema_real_eip !18
  %27 = icmp eq i32 %19, 0, !mcsema_real_eip !18
  store i1 %27, i1* %ZF, align 1, !mcsema_real_eip !18
  %28 = icmp slt i32 %19, 0
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !18
  %29 = icmp ult i32 %_new_load_, 10, !mcsema_real_eip !18
  store i1 %29, i1* %CF, align 1, !mcsema_real_eip !18
  %30 = and i32 %20, %_new_load_, !mcsema_real_eip !18
  %31 = icmp slt i32 %30, 0
  store i1 %31, i1* %OF, align 1, !mcsema_real_eip !18
  %tmp = xor i1 %28, %31
  br i1 %tmp, label %block_0xea, label %block_0x10c, !mcsema_real_eip !19

block_0xea:                                       ; preds = %block_0xe0
  %_new_load_171 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %32 = add i32 %_new_load_171, 10, !mcsema_real_eip !21
  %33 = add i32 %_new_load_171, 11, !mcsema_real_eip !22
  %34 = xor i32 %33, %32, !mcsema_real_eip !22
  %35 = and i32 %34, 16, !mcsema_real_eip !22
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !22
  store i1 %36, i1* %AF, align 1, !mcsema_real_eip !22
  %37 = icmp slt i32 %33, 0
  store i1 %37, i1* %SF, align 1, !mcsema_real_eip !22
  %38 = icmp eq i32 %33, 0, !mcsema_real_eip !22
  store i1 %38, i1* %ZF, align 1, !mcsema_real_eip !22
  %39 = add i32 %_new_load_171, -2147483638
  %40 = and i32 %34, %39, !mcsema_real_eip !22
  %41 = icmp slt i32 %40, 0
  store i1 %41, i1* %OF, align 1, !mcsema_real_eip !22
  %42 = trunc i32 %33 to i8, !mcsema_real_eip !22
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !22
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  store i1 %45, i1* %PF, align 1, !mcsema_real_eip !22
  %46 = icmp eq i32 %32, -1
  store i1 %46, i1* %CF, align 1, !mcsema_real_eip !22
  %47 = zext i32 %33 to i64, !mcsema_real_eip !22
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !22
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -24
  %_ptr_to_int_172 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_175 = sub i64 %_ptr_to_int_172, %_local_end_to_int_
  %_pot_address_in_parent_stack_176 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_175
  %_cond1_177 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_178 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_179 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_180 = or i1 %_cond2_1_178, %_cond2_2_179
  %_cond4_181 = icmp ule i8* %_pot_address_in_parent_stack_176, %_parent_stack_end_ptr_
  %_cond1_n_cond2_182 = and i1 %_cond1_177, %_cond2_180
  %_cond1_n_cond2_cond3_183 = and i1 %_cond1_n_cond2_182, %_cond4_181
  %.v = select i1 %_cond1_n_cond2_cond3_183, i8* %_pot_address_in_parent_stack_176, i8* %_new_gep_44
  %48 = bitcast i8* %.v to i64*
  %_new_load_186 = load i64, i64* %48, align 8
  store i64 %_new_load_186, i64* %XCX, align 8, !mcsema_real_eip !23
  %_new_load_201 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %49 = sext i32 %_new_load_201 to i64, !mcsema_real_eip !24
  store i64 %49, i64* %XDX, align 8, !mcsema_real_eip !24
  %50 = shl nsw i64 %49, 2
  %51 = add i64 %50, %_new_load_186, !mcsema_real_eip !25
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !25
  store i32 %33, i32* %52, align 4, !mcsema_real_eip !25
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49, i64 -36
  %53 = ptrtoint i8* %_new_gep_50 to i64
  %54 = bitcast i8* %_new_gep_50 to i32*
  %_offset_above_rbp_205 = sub i64 %53, %_local_end_to_int_
  %_pot_address_in_parent_stack_206 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_cond1_207 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_208 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_209 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_210 = or i1 %_cond2_1_208, %_cond2_2_209
  %_cond4_211 = icmp ule i8* %_pot_address_in_parent_stack_206, %_parent_stack_end_ptr_
  %_cond1_n_cond2_212 = and i1 %_cond1_207, %_cond2_210
  %_cond1_n_cond2_cond3_213 = and i1 %_cond1_n_cond2_212, %_cond4_211
  %_address_in_parent_stack_bt_215 = bitcast i8* %_pot_address_in_parent_stack_206 to i32*
  %55 = select i1 %_cond1_n_cond2_cond3_213, i32* %_address_in_parent_stack_bt_215, i32* %54
  %_new_load_216 = load i32, i32* %55, align 4
  %56 = add i32 %_new_load_216, 1, !mcsema_real_eip !27
  %57 = xor i32 %56, %_new_load_216, !mcsema_real_eip !27
  %58 = and i32 %57, 16, !mcsema_real_eip !27
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !27
  store i1 %59, i1* %AF, align 1, !mcsema_real_eip !27
  %60 = icmp slt i32 %56, 0
  store i1 %60, i1* %SF, align 1, !mcsema_real_eip !27
  %61 = icmp eq i32 %56, 0, !mcsema_real_eip !27
  store i1 %61, i1* %ZF, align 1, !mcsema_real_eip !27
  %62 = xor i32 %_new_load_216, -2147483648, !mcsema_real_eip !27
  %63 = and i32 %57, %62, !mcsema_real_eip !27
  %64 = icmp slt i32 %63, 0
  store i1 %64, i1* %OF, align 1, !mcsema_real_eip !27
  %65 = trunc i32 %56 to i8, !mcsema_real_eip !27
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !27
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  store i1 %68, i1* %PF, align 1, !mcsema_real_eip !27
  %69 = icmp eq i32 %_new_load_216, -1
  store i1 %69, i1* %CF, align 1, !mcsema_real_eip !27
  %70 = zext i32 %56 to i64, !mcsema_real_eip !27
  store i64 %70, i64* %XAX, align 8, !mcsema_real_eip !27
  store i32 %56, i32* %54, align 4, !mcsema_real_eip !28
  br label %block_0xe0, !mcsema_real_eip !29

block_0x10c:                                      ; preds = %block_0xe0
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -40
  %71 = bitcast i8* %_new_gep_56 to i32*
  store i32 0, i32* %71, align 4, !mcsema_real_eip !30
  br label %block_0x113, !mcsema_real_eip !20

block_0x113:                                      ; preds = %block_0x11d, %block_0x10c
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -40
  %72 = ptrtoint i8* %_new_gep_59 to i64
  %_offset_above_rbp_220 = sub i64 %72, %_local_end_to_int_
  %_pot_address_in_parent_stack_221 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_cond1_222 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_223 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_224 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_225 = or i1 %_cond2_1_223, %_cond2_2_224
  %_cond4_226 = icmp ule i8* %_pot_address_in_parent_stack_221, %_parent_stack_end_ptr_
  %_cond1_n_cond2_227 = and i1 %_cond1_222, %_cond2_225
  %_cond1_n_cond2_cond3_228 = and i1 %_cond1_n_cond2_227, %_cond4_226
  %_address_in_parent_stack_bt_230..v = select i1 %_cond1_n_cond2_cond3_228, i8* %_pot_address_in_parent_stack_221, i8* %_new_gep_59
  %_address_in_parent_stack_bt_230. = bitcast i8* %_address_in_parent_stack_bt_230..v to i32*
  %_new_load_231 = load i32, i32* %_address_in_parent_stack_bt_230., align 4
  %73 = add i32 %_new_load_231, -10
  %74 = xor i32 %73, %_new_load_231, !mcsema_real_eip !31
  %75 = and i32 %74, 16, !mcsema_real_eip !31
  %76 = icmp ne i32 %75, 0, !mcsema_real_eip !31
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !31
  %77 = trunc i32 %73 to i8, !mcsema_real_eip !31
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !31
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  store i1 %80, i1* %PF, align 1, !mcsema_real_eip !31
  %81 = icmp eq i32 %73, 0, !mcsema_real_eip !31
  store i1 %81, i1* %ZF, align 1, !mcsema_real_eip !31
  %82 = icmp slt i32 %73, 0
  store i1 %82, i1* %SF, align 1, !mcsema_real_eip !31
  %83 = icmp ult i32 %_new_load_231, 10, !mcsema_real_eip !31
  store i1 %83, i1* %CF, align 1, !mcsema_real_eip !31
  %84 = and i32 %74, %_new_load_231, !mcsema_real_eip !31
  %85 = icmp slt i32 %84, 0
  store i1 %85, i1* %OF, align 1, !mcsema_real_eip !31
  %tmp2 = xor i1 %82, %85
  br i1 %tmp2, label %block_0x11d, label %block_0x13c, !mcsema_real_eip !32

block_0x11d:                                      ; preds = %block_0x113
  %_new_load_246 = load i32, i32* %_address_in_parent_stack_bt_230., align 4
  %86 = add i32 %_new_load_246, 1, !mcsema_real_eip !34
  %87 = xor i32 %86, %_new_load_246, !mcsema_real_eip !34
  %88 = and i32 %87, 16, !mcsema_real_eip !34
  %89 = icmp ne i32 %88, 0, !mcsema_real_eip !34
  store i1 %89, i1* %AF, align 1, !mcsema_real_eip !34
  %90 = icmp slt i32 %86, 0
  store i1 %90, i1* %SF, align 1, !mcsema_real_eip !34
  %91 = icmp eq i32 %86, 0, !mcsema_real_eip !34
  store i1 %91, i1* %ZF, align 1, !mcsema_real_eip !34
  %92 = xor i32 %_new_load_246, -2147483648, !mcsema_real_eip !34
  %93 = and i32 %87, %92, !mcsema_real_eip !34
  %94 = icmp slt i32 %93, 0
  store i1 %94, i1* %OF, align 1, !mcsema_real_eip !34
  %95 = trunc i32 %86 to i8, !mcsema_real_eip !34
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !34
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  store i1 %98, i1* %PF, align 1, !mcsema_real_eip !34
  %99 = icmp eq i32 %_new_load_246, -1
  store i1 %99, i1* %CF, align 1, !mcsema_real_eip !34
  %100 = zext i32 %86 to i64, !mcsema_real_eip !34
  store i64 %100, i64* %XAX, align 8, !mcsema_real_eip !34
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -32
  %_ptr_to_int_247 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %_local_end_to_int_
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  %.v3 = select i1 %_cond1_n_cond2_cond3_258, i8* %_pot_address_in_parent_stack_251, i8* %_new_gep_65
  %101 = bitcast i8* %.v3 to i64*
  %_new_load_261 = load i64, i64* %101, align 8
  store i64 %_new_load_261, i64* %XCX, align 8, !mcsema_real_eip !35
  %_new_load_276 = load i32, i32* %_address_in_parent_stack_bt_230., align 4
  %102 = sext i32 %_new_load_276 to i64, !mcsema_real_eip !36
  store i64 %102, i64* %XDX, align 8, !mcsema_real_eip !36
  %103 = shl nsw i64 %102, 2
  %104 = add i64 %103, %_new_load_261, !mcsema_real_eip !37
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !37
  store i32 %86, i32* %105, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70, i64 -40
  %106 = ptrtoint i8* %_new_gep_71 to i64
  %107 = bitcast i8* %_new_gep_71 to i32*
  %_offset_above_rbp_280 = sub i64 %106, %_local_end_to_int_
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  %_address_in_parent_stack_bt_290 = bitcast i8* %_pot_address_in_parent_stack_281 to i32*
  %108 = select i1 %_cond1_n_cond2_cond3_288, i32* %_address_in_parent_stack_bt_290, i32* %107
  %_new_load_291 = load i32, i32* %108, align 4
  %109 = add i32 %_new_load_291, 1, !mcsema_real_eip !39
  %110 = xor i32 %109, %_new_load_291, !mcsema_real_eip !39
  %111 = and i32 %110, 16, !mcsema_real_eip !39
  %112 = icmp ne i32 %111, 0, !mcsema_real_eip !39
  store i1 %112, i1* %AF, align 1, !mcsema_real_eip !39
  %113 = icmp slt i32 %109, 0
  store i1 %113, i1* %SF, align 1, !mcsema_real_eip !39
  %114 = icmp eq i32 %109, 0, !mcsema_real_eip !39
  store i1 %114, i1* %ZF, align 1, !mcsema_real_eip !39
  %115 = xor i32 %_new_load_291, -2147483648, !mcsema_real_eip !39
  %116 = and i32 %110, %115, !mcsema_real_eip !39
  %117 = icmp slt i32 %116, 0
  store i1 %117, i1* %OF, align 1, !mcsema_real_eip !39
  %118 = trunc i32 %109 to i8, !mcsema_real_eip !39
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !39
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  store i1 %121, i1* %PF, align 1, !mcsema_real_eip !39
  %122 = icmp eq i32 %_new_load_291, -1
  store i1 %122, i1* %CF, align 1, !mcsema_real_eip !39
  %123 = zext i32 %109 to i64, !mcsema_real_eip !39
  store i64 %123, i64* %XAX, align 8, !mcsema_real_eip !39
  store i32 %109, i32* %107, align 4, !mcsema_real_eip !40
  br label %block_0x113, !mcsema_real_eip !41

block_0x13c:                                      ; preds = %block_0x113
  store i64 100, i64* %XDI, align 8, !mcsema_real_eip !42
  store i64 200, i64* %XSI, align 8, !mcsema_real_eip !43
  %124 = bitcast i64* %XCX to <2 x i64>*
  store <2 x i64> <i64 400, i64 300>, <2 x i64>* %124, align 8
  %125 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 500, i64 600>, <2 x i64>* %125, align 8
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !44
  %_new_gep_77 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -24
  %_ptr_to_int_292 = ptrtoint i8* %_new_gep_77 to i64
  %_offset_above_rbp_295 = sub i64 %_ptr_to_int_292, %_local_end_to_int_
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_new_gep_77, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_new_gep_77, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_new_gep_77, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  %_address_in_parent_stack_bt_305._allin_new_bt_78.v = select i1 %_cond1_n_cond2_cond3_303, i8* %_pot_address_in_parent_stack_296, i8* %_new_gep_77
  %_address_in_parent_stack_bt_305._allin_new_bt_78 = bitcast i8* %_address_in_parent_stack_bt_305._allin_new_bt_78.v to i64*
  %_new_load_306 = load i64, i64* %_address_in_parent_stack_bt_305._allin_new_bt_78, align 8
  store i64 %_new_load_306, i64* %R10, align 8, !mcsema_real_eip !45
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -32
  %_ptr_to_int_307 = ptrtoint i8* %_new_gep_80 to i64
  %_offset_above_rbp_310 = sub i64 %_ptr_to_int_307, %_local_end_to_int_
  %_pot_address_in_parent_stack_311 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_310
  %_cond1_312 = icmp ugt i8* %_new_gep_80, %_local_stack_end_ptr_
  %_cond2_1_313 = icmp ugt i8* %_new_gep_80, %_parent_stack_end_ptr_
  %_cond2_2_314 = icmp ult i8* %_new_gep_80, %_parent_stack_start_ptr_
  %_cond2_315 = or i1 %_cond2_1_313, %_cond2_2_314
  %_cond4_316 = icmp ule i8* %_pot_address_in_parent_stack_311, %_parent_stack_end_ptr_
  %_cond1_n_cond2_317 = and i1 %_cond1_312, %_cond2_315
  %_cond1_n_cond2_cond3_318 = and i1 %_cond1_n_cond2_317, %_cond4_316
  %.v4 = select i1 %_cond1_n_cond2_cond3_318, i8* %_pot_address_in_parent_stack_311, i8* %_new_gep_80
  %126 = bitcast i8* %.v4 to i64*
  %_new_load_321 = load i64, i64* %126, align 8
  store i64 %_new_load_321, i64* %R11, align 8, !mcsema_real_eip !46
  %127 = bitcast i8** %_RSP_ptr_ to i32**
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_8256713 = load i32*, i32** %127, align 8
  store i32 10, i32* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_8256713, align 4, !mcsema_real_eip !47
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_86 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85, i64 8
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %R10_val.48 = load i64, i64* %R10, align 8, !mcsema_real_eip !48
  store i64 %R10_val.48, i64* %_allin_new_bt_87, align 8, !mcsema_real_eip !48
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_89 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88, i64 16
  %128 = bitcast i8* %_new_gep_89 to i32*
  store i32 10, i32* %128, align 4, !mcsema_real_eip !49
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_91 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_92 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_91, i64 24
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %R11_val.51 = load i64, i64* %R11, align 8, !mcsema_real_eip !50
  store i64 %R11_val.51, i64* %_allin_new_bt_93, align 8, !mcsema_real_eip !50
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_94, i64 -48
  %EAX_val.54 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !51
  %129 = bitcast i8* %_new_gep_95 to i32*
  store i32 %EAX_val.54, i32* %129, align 4, !mcsema_real_eip !51
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.55 = load i64, i64* %XSP, align 8, !mcsema_real_eip !52
  %_new_gep_98 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 -8
  %130 = add i64 %RSP_val.55, -8
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, align 8, !mcsema_real_eip !52
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_, align 8
  store i64 %130, i64* %XSP, align 8, !mcsema_real_eip !52
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_151 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* nonnull %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_151)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_153 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_154 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_153, i64 8
  store i8* %_gep_fix_154, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x1af to i64), i64* %XDI, align 8, !mcsema_real_eip !53
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_100, i64 -44
  %EAX_val.58 = load i32, i32* %EAX.4, align 4, !mcsema_real_eip !54
  %131 = bitcast i8* %_new_gep_101 to i32*
  store i32 %EAX_val.58, i32* %131, align 4, !mcsema_real_eip !54
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -44
  %132 = ptrtoint i8* %_new_gep_104 to i64
  %_offset_above_rbp_325 = sub i64 %132, %_local_end_to_int_
  %_pot_address_in_parent_stack_326 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_325
  %_cond1_327 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_328 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_329 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_330 = or i1 %_cond2_1_328, %_cond2_2_329
  %_cond4_331 = icmp ule i8* %_pot_address_in_parent_stack_326, %_parent_stack_end_ptr_
  %_cond1_n_cond2_332 = and i1 %_cond1_327, %_cond2_330
  %_cond1_n_cond2_cond3_333 = and i1 %_cond1_n_cond2_332, %_cond4_331
  %_address_in_parent_stack_bt_335..v = select i1 %_cond1_n_cond2_cond3_333, i8* %_pot_address_in_parent_stack_326, i8* %_new_gep_104
  %_address_in_parent_stack_bt_335. = bitcast i8* %_address_in_parent_stack_bt_335..v to i32*
  %_new_load_336 = load i32, i32* %_address_in_parent_stack_bt_335., align 4
  %133 = zext i32 %_new_load_336 to i64, !mcsema_real_eip !55
  store i64 %133, i64* %XSI, align 8, !mcsema_real_eip !55
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !56
  store i8 0, i8* %AL.60, align 1, !mcsema_real_eip !56
  %RDI_val.61 = load i64, i64* %XDI, align 8, !mcsema_real_eip !57
  %RDX_val.63 = load i64, i64* %XDX, align 8, !mcsema_real_eip !57
  %RCX_val.64 = load i64, i64* %XCX, align 8, !mcsema_real_eip !57
  %R8_val.65 = load i64, i64* %R8, align 8, !mcsema_real_eip !57
  %R9_val.66 = load i64, i64* %R9, align 8, !mcsema_real_eip !57
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_337 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106 to i64
  %_offset_above_rbp_340 = sub i64 %_ptr_to_int_337, %_local_end_to_int_
  %_pot_address_in_parent_stack_341 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_340
  %_cond1_342 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, %_local_stack_end_ptr_
  %_cond2_1_343 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, %_parent_stack_end_ptr_
  %_cond2_2_344 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, %_parent_stack_start_ptr_
  %_cond2_345 = or i1 %_cond2_1_343, %_cond2_2_344
  %_cond4_346 = icmp ule i8* %_pot_address_in_parent_stack_341, %_parent_stack_end_ptr_
  %_cond1_n_cond2_347 = and i1 %_cond1_342, %_cond2_345
  %_cond1_n_cond2_cond3_348 = and i1 %_cond1_n_cond2_347, %_cond4_346
  %.v8 = select i1 %_cond1_n_cond2_cond3_348, i8* %_pot_address_in_parent_stack_341, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106
  %134 = bitcast i8* %.v8 to i64*
  %_new_load_351 = load i64, i64* %134, align 8
  %_new_gep_108 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 8
  %_ptr_to_int_352 = ptrtoint i8* %_new_gep_108 to i64
  %_offset_above_rbp_355 = sub i64 %_ptr_to_int_352, %_local_end_to_int_
  %_pot_address_in_parent_stack_356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_355
  %_cond1_357 = icmp ugt i8* %_new_gep_108, %_local_stack_end_ptr_
  %_cond2_1_358 = icmp ugt i8* %_new_gep_108, %_parent_stack_end_ptr_
  %_cond2_2_359 = icmp ult i8* %_new_gep_108, %_parent_stack_start_ptr_
  %_cond2_360 = or i1 %_cond2_1_358, %_cond2_2_359
  %_cond4_361 = icmp ule i8* %_pot_address_in_parent_stack_356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_362 = and i1 %_cond1_357, %_cond2_360
  %_cond1_n_cond2_cond3_363 = and i1 %_cond1_n_cond2_362, %_cond4_361
  %_address_in_parent_stack_bt_365._allin_new_bt_109.v = select i1 %_cond1_n_cond2_cond3_363, i8* %_pot_address_in_parent_stack_356, i8* %_new_gep_108
  %_address_in_parent_stack_bt_365._allin_new_bt_109 = bitcast i8* %_address_in_parent_stack_bt_365._allin_new_bt_109.v to i64*
  %_new_load_366 = load i64, i64* %_address_in_parent_stack_bt_365._allin_new_bt_109, align 8
  %_new_gep_110 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 16
  %_ptr_to_int_367 = ptrtoint i8* %_new_gep_110 to i64
  %_offset_above_rbp_370 = sub i64 %_ptr_to_int_367, %_local_end_to_int_
  %_pot_address_in_parent_stack_371 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_370
  %_cond1_372 = icmp ugt i8* %_new_gep_110, %_local_stack_end_ptr_
  %_cond2_1_373 = icmp ugt i8* %_new_gep_110, %_parent_stack_end_ptr_
  %_cond2_2_374 = icmp ult i8* %_new_gep_110, %_parent_stack_start_ptr_
  %_cond2_375 = or i1 %_cond2_1_373, %_cond2_2_374
  %_cond4_376 = icmp ule i8* %_pot_address_in_parent_stack_371, %_parent_stack_end_ptr_
  %_cond1_n_cond2_377 = and i1 %_cond1_372, %_cond2_375
  %_cond1_n_cond2_cond3_378 = and i1 %_cond1_n_cond2_377, %_cond4_376
  %.v9 = select i1 %_cond1_n_cond2_cond3_378, i8* %_pot_address_in_parent_stack_371, i8* %_new_gep_110
  %135 = bitcast i8* %.v9 to i64*
  %_new_load_381 = load i64, i64* %135, align 8
  %_new_gep_112 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 24
  %_ptr_to_int_382 = ptrtoint i8* %_new_gep_112 to i64
  %_offset_above_rbp_385 = sub i64 %_ptr_to_int_382, %_local_end_to_int_
  %_pot_address_in_parent_stack_386 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_385
  %_cond1_387 = icmp ugt i8* %_new_gep_112, %_local_stack_end_ptr_
  %_cond2_1_388 = icmp ugt i8* %_new_gep_112, %_parent_stack_end_ptr_
  %_cond2_2_389 = icmp ult i8* %_new_gep_112, %_parent_stack_start_ptr_
  %_cond2_390 = or i1 %_cond2_1_388, %_cond2_2_389
  %_cond4_391 = icmp ule i8* %_pot_address_in_parent_stack_386, %_parent_stack_end_ptr_
  %_cond1_n_cond2_392 = and i1 %_cond1_387, %_cond2_390
  %_cond1_n_cond2_cond3_393 = and i1 %_cond1_n_cond2_392, %_cond4_391
  %_address_in_parent_stack_bt_395._allin_new_bt_113.v = select i1 %_cond1_n_cond2_cond3_393, i8* %_pot_address_in_parent_stack_386, i8* %_new_gep_112
  %_address_in_parent_stack_bt_395._allin_new_bt_113 = bitcast i8* %_address_in_parent_stack_bt_395._allin_new_bt_113.v to i64*
  %_new_load_396 = load i64, i64* %_address_in_parent_stack_bt_395._allin_new_bt_113, align 8
  %_new_gep_114 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 32
  %_ptr_to_int_397 = ptrtoint i8* %_new_gep_114 to i64
  %_offset_above_rbp_400 = sub i64 %_ptr_to_int_397, %_local_end_to_int_
  %_pot_address_in_parent_stack_401 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_400
  %_cond1_402 = icmp ugt i8* %_new_gep_114, %_local_stack_end_ptr_
  %_cond2_1_403 = icmp ugt i8* %_new_gep_114, %_parent_stack_end_ptr_
  %_cond2_2_404 = icmp ult i8* %_new_gep_114, %_parent_stack_start_ptr_
  %_cond2_405 = or i1 %_cond2_1_403, %_cond2_2_404
  %_cond4_406 = icmp ule i8* %_pot_address_in_parent_stack_401, %_parent_stack_end_ptr_
  %_cond1_n_cond2_407 = and i1 %_cond1_402, %_cond2_405
  %_cond1_n_cond2_cond3_408 = and i1 %_cond1_n_cond2_407, %_cond4_406
  %.v10 = select i1 %_cond1_n_cond2_cond3_408, i8* %_pot_address_in_parent_stack_401, i8* %_new_gep_114
  %136 = bitcast i8* %.v10 to i64*
  %_new_load_411 = load i64, i64* %136, align 8
  %_new_gep_116 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 40
  %_ptr_to_int_412 = ptrtoint i8* %_new_gep_116 to i64
  %_offset_above_rbp_415 = sub i64 %_ptr_to_int_412, %_local_end_to_int_
  %_pot_address_in_parent_stack_416 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_415
  %_cond1_417 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_418 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_419 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_420 = or i1 %_cond2_1_418, %_cond2_2_419
  %_cond4_421 = icmp ule i8* %_pot_address_in_parent_stack_416, %_parent_stack_end_ptr_
  %_cond1_n_cond2_422 = and i1 %_cond1_417, %_cond2_420
  %_cond1_n_cond2_cond3_423 = and i1 %_cond1_n_cond2_422, %_cond4_421
  %_address_in_parent_stack_bt_425._allin_new_bt_117.v = select i1 %_cond1_n_cond2_cond3_423, i8* %_pot_address_in_parent_stack_416, i8* %_new_gep_116
  %_address_in_parent_stack_bt_425._allin_new_bt_117 = bitcast i8* %_address_in_parent_stack_bt_425._allin_new_bt_117.v to i64*
  %_new_load_426 = load i64, i64* %_address_in_parent_stack_bt_425._allin_new_bt_117, align 8
  %RSP_val.68 = load i64, i64* %XSP, align 8, !mcsema_real_eip !57
  %_new_gep_119 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_106, i64 -8
  %137 = add i64 %RSP_val.68, -8
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_120, align 8, !mcsema_real_eip !57
  store volatile i8* %_new_gep_119, i8** %_RSP_ptr_, align 8
  store i64 %137, i64* %XSP, align 8, !mcsema_real_eip !57
  %138 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.61, i64 %133, i64 %RDX_val.63, i64 %RCX_val.64, i64 %R8_val.65, i64 %R9_val.66, i64 %_new_load_351, i64 %_new_load_366, i64 %_new_load_381, i64 %_new_load_396, i64 %_new_load_411, i64 %_new_load_426)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_155 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_156 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_155, i64 8
  store i8* %_gep_fix_156, i8** %_RSP_ptr_, align 8
  store i64 %138, i64* %XAX, align 8, !mcsema_real_eip !57
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_122 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -44
  %139 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_430 = sub i64 %139, %_local_end_to_int_
  %_pot_address_in_parent_stack_431 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_430
  %_cond1_432 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_433 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_434 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_435 = or i1 %_cond2_1_433, %_cond2_2_434
  %_cond4_436 = icmp ule i8* %_pot_address_in_parent_stack_431, %_parent_stack_end_ptr_
  %_cond1_n_cond2_437 = and i1 %_cond1_432, %_cond2_435
  %_cond1_n_cond2_cond3_438 = and i1 %_cond1_n_cond2_437, %_cond4_436
  %.v11 = select i1 %_cond1_n_cond2_cond3_438, i8* %_pot_address_in_parent_stack_431, i8* %_new_gep_122
  %140 = bitcast i8* %.v11 to i32*
  %_new_load_441 = load i32, i32* %140, align 4
  %141 = zext i32 %_new_load_441 to i64, !mcsema_real_eip !58
  store i64 %141, i64* %XCX, align 8, !mcsema_real_eip !58
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -52
  %142 = trunc i64 %138 to i32
  %143 = bitcast i8* %_new_gep_125 to i32*
  store i32 %142, i32* %143, align 4, !mcsema_real_eip !59
  %ECX.73 = bitcast i64* %XCX to i32*, !mcsema_real_eip !60
  %ECX_val.74 = load i32, i32* %ECX.73, align 4, !mcsema_real_eip !60
  %144 = zext i32 %ECX_val.74 to i64, !mcsema_real_eip !60
  store i64 %144, i64* %XAX, align 8, !mcsema_real_eip !60
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.75 = load i64, i64* %XSP, align 8, !mcsema_real_eip !61
  %_new_gep_128 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127, i64 96
  %145 = add i64 %RSP_val.75, 96, !mcsema_real_eip !61
  %_trans_p2i_129 = ptrtoint i8* %_new_gep_128 to i64
  %_trans_p2i_130 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127 to i64
  %_trans_xor_131 = xor i64 %_trans_p2i_129, %_trans_p2i_130
  %146 = and i64 %_trans_xor_131, 16, !mcsema_real_eip !61
  %147 = icmp ne i64 %146, 0, !mcsema_real_eip !61
  store i1 %147, i1* %AF, align 1, !mcsema_real_eip !61
  %148 = icmp slt i64 %145, 0
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !61
  %_trans_icmp_eq_133 = icmp eq i8* %_new_gep_128, null
  store i1 %_trans_icmp_eq_133, i1* %ZF, align 1, !mcsema_real_eip !61
  %149 = xor i64 %_trans_p2i_130, -9223372036854775808, !mcsema_real_eip !61
  %150 = and i64 %_trans_xor_131, %149, !mcsema_real_eip !61
  %151 = icmp slt i64 %150, 0
  store i1 %151, i1* %OF, align 1, !mcsema_real_eip !61
  %_trans_trunc_140 = trunc i64 %_trans_p2i_129 to i8
  %152 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_140), !mcsema_real_eip !61
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  store i1 %154, i1* %PF, align 1, !mcsema_real_eip !61
  %_trans_icmp_ne_142 = icmp ne i64 %_trans_p2i_129, %RSP_val.75
  store i1 %_trans_icmp_ne_142, i1* %CF, align 1, !mcsema_real_eip !61
  store volatile i8* %_new_gep_128, i8** %_RSP_ptr_, align 8
  store i64 %145, i64* %XSP, align 8, !mcsema_real_eip !61
  %_offset_above_rbp_445 = sub i64 %_trans_p2i_129, %_local_end_to_int_
  %_pot_address_in_parent_stack_446 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_445
  %_cond1_447 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_448 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_449 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_450 = or i1 %_cond2_1_448, %_cond2_2_449
  %_cond4_451 = icmp ule i8* %_pot_address_in_parent_stack_446, %_parent_stack_end_ptr_
  %_cond1_n_cond2_452 = and i1 %_cond1_447, %_cond2_450
  %_cond1_n_cond2_cond3_453 = and i1 %_cond1_n_cond2_452, %_cond4_451
  %_address_in_parent_stack_bt_455._allin_new_bt_144.v = select i1 %_cond1_n_cond2_cond3_453, i8* %_pot_address_in_parent_stack_446, i8* %_new_gep_128
  %_address_in_parent_stack_bt_455._allin_new_bt_144 = bitcast i8* %_address_in_parent_stack_bt_455._allin_new_bt_144.v to i64*
  %_new_load_456 = load i64, i64* %_address_in_parent_stack_bt_455._allin_new_bt_144, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_456 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_456, i64* %XBP, align 8, !mcsema_real_eip !62
  %_new_gep_145 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127, i64 104
  %155 = add i64 %RSP_val.75, 104, !mcsema_real_eip !62
  store volatile i8* %_new_gep_145, i8** %_RSP_ptr_, align 8
  store i64 %155, i64* %XSP, align 8, !mcsema_real_eip !62
  %_new_gep_147 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127, i64 112
  %156 = add i64 %RSP_val.75, 112, !mcsema_real_eip !63
  %_ptr_to_int_457 = ptrtoint i8* %_new_gep_145 to i64
  %_offset_above_rbp_460 = sub i64 %_ptr_to_int_457, %_local_end_to_int_
  %_pot_address_in_parent_stack_461 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_460
  %_cond1_462 = icmp ugt i8* %_new_gep_145, %_local_stack_end_ptr_
  %_cond2_1_463 = icmp ugt i8* %_new_gep_145, %_parent_stack_end_ptr_
  %_cond2_2_464 = icmp ult i8* %_new_gep_145, %_parent_stack_start_ptr_
  %_cond2_465 = or i1 %_cond2_1_463, %_cond2_2_464
  %_cond4_466 = icmp ule i8* %_pot_address_in_parent_stack_461, %_parent_stack_end_ptr_
  %_cond1_n_cond2_467 = and i1 %_cond1_462, %_cond2_465
  %_cond1_n_cond2_cond3_468 = and i1 %_cond1_n_cond2_467, %_cond4_466
  %.v12 = select i1 %_cond1_n_cond2_cond3_468, i8* %_pot_address_in_parent_stack_461, i8* %_new_gep_145
  %157 = bitcast i8* %.v12 to i64*
  %_new_load_471 = load i64, i64* %157, align 8
  store i64 %_new_load_471, i64* %XIP, align 8, !mcsema_real_eip !63
  store volatile i8* %_new_gep_147, i8** %_RSP_ptr_, align 8
  store i64 %156, i64* %XSP, align 8, !mcsema_real_eip !63
  ret void, !mcsema_real_eip !63
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [80 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 80
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !64
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !64
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !64
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !64
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !64
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !64
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !64
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !64
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !64
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !64
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !64
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !64
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !64
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !64
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !64
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !64
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !64
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !64
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !64
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !64
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !64
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !64
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !64
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !64
  %RSP_val.94 = load i64, i64* %XSP, align 8, !mcsema_real_eip !64
  %_new_gep_ = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 72
  %1 = add i64 %RSP_val.94, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !65
  %RBX_val.96 = load i64, i64* %XBX, align 8, !mcsema_real_eip !66
  %_new_gep_3 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  %2 = add i64 %RSP_val.94, -16
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.96, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !66
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !66
  %_new_gep_6 = getelementptr [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 112
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
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !67
  %_new_gep_9 = getelementptr [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %_pot_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 24
  %_cond1_118 = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_119 = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_120 = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_121 = or i1 %_cond2_1_119, %_cond2_2_120
  %_cond4_122 = icmp ule i8* %_pot_address_in_parent_stack_117, %_parent_stack_end_ptr_
  %_cond1_n_cond2_123 = and i1 %_cond1_118, %_cond2_121
  %_cond1_n_cond2_cond3_124 = and i1 %_cond1_n_cond2_123, %_cond4_122
  %_address_in_parent_stack_bt_126..v = select i1 %_cond1_n_cond2_cond3_124, i8* %_pot_address_in_parent_stack_117, i8* %_new_gep_9
  %_address_in_parent_stack_bt_126. = bitcast i8* %_address_in_parent_stack_bt_126..v to i32*
  %_new_load_127 = load i32, i32* %_address_in_parent_stack_bt_126., align 4
  %4 = zext i32 %_new_load_127 to i64, !mcsema_real_eip !68
  store i64 %4, i64* %R10, align 8, !mcsema_real_eip !68
  %_new_gep_12 = getelementptr [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 96
  %_pot_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 16
  %_cond1_133 = icmp ugt i8* %_new_gep_12, %_local_stack_end_ptr_
  %_cond2_1_134 = icmp ugt i8* %_new_gep_12, %_parent_stack_end_ptr_
  %_cond2_2_135 = icmp ult i8* %_new_gep_12, %_parent_stack_start_ptr_
  %_cond2_136 = or i1 %_cond2_1_134, %_cond2_2_135
  %_cond4_137 = icmp ule i8* %_pot_address_in_parent_stack_132, %_parent_stack_end_ptr_
  %_cond1_n_cond2_138 = and i1 %_cond1_133, %_cond2_136
  %_cond1_n_cond2_cond3_139 = and i1 %_cond1_n_cond2_138, %_cond4_137
  %.v2 = select i1 %_cond1_n_cond2_cond3_139, i8* %_pot_address_in_parent_stack_132, i8* %_new_gep_12
  %5 = bitcast i8* %.v2 to i64*
  %_new_load_142 = load i64, i64* %5, align 8
  store i64 %_new_load_142, i64* %R11, align 8, !mcsema_real_eip !69
  %_new_gep_15 = getelementptr [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %_pot_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_148 = icmp ugt i8* %_new_gep_15, %_local_stack_end_ptr_
  %_cond2_1_149 = icmp ugt i8* %_new_gep_15, %_parent_stack_end_ptr_
  %_cond2_2_150 = icmp ult i8* %_new_gep_15, %_parent_stack_start_ptr_
  %_cond2_151 = or i1 %_cond2_1_149, %_cond2_2_150
  %_cond4_152 = icmp ule i8* %_pot_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond1_n_cond2_153 = and i1 %_cond1_148, %_cond2_151
  %_cond1_n_cond2_cond3_154 = and i1 %_cond1_n_cond2_153, %_cond4_152
  %_address_in_parent_stack_bt_156..v = select i1 %_cond1_n_cond2_cond3_154, i8* %_pot_address_in_parent_stack_147, i8* %_new_gep_15
  %_address_in_parent_stack_bt_156. = bitcast i8* %_address_in_parent_stack_bt_156..v to i32*
  %_new_load_157 = load i32, i32* %_address_in_parent_stack_bt_156., align 4
  %6 = zext i32 %_new_load_157 to i64, !mcsema_real_eip !70
  store i64 %6, i64* %XBX, align 8, !mcsema_real_eip !70
  %_new_gep_18 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 60
  %EDI.103 = bitcast i64* %XDI to i32*, !mcsema_real_eip !71
  %EDI_val.104 = load i32, i32* %EDI.103, align 4, !mcsema_real_eip !71
  %7 = bitcast i8* %_new_gep_18 to i32*
  store i32 %EDI_val.104, i32* %7, align 4, !mcsema_real_eip !71
  %_new_gep_21 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %ESI.106 = bitcast i64* %XSI to i32*, !mcsema_real_eip !72
  %ESI_val.107 = load i32, i32* %ESI.106, align 4, !mcsema_real_eip !72
  %8 = bitcast i8* %_new_gep_21 to i32*
  store i32 %ESI_val.107, i32* %8, align 4, !mcsema_real_eip !72
  %_new_gep_24 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %EDX.109 = bitcast i64* %XDX to i32*, !mcsema_real_eip !73
  %EDX_val.110 = load i32, i32* %EDX.109, align 4, !mcsema_real_eip !73
  %9 = bitcast i8* %_new_gep_24 to i32*
  store i32 %EDX_val.110, i32* %9, align 4, !mcsema_real_eip !73
  %_new_gep_27 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %ECX.112 = bitcast i64* %XCX to i32*, !mcsema_real_eip !74
  %ECX_val.113 = load i32, i32* %ECX.112, align 4, !mcsema_real_eip !74
  %10 = bitcast i8* %_new_gep_27 to i32*
  store i32 %ECX_val.113, i32* %10, align 4, !mcsema_real_eip !74
  %_new_gep_30 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 44
  %R8D.115 = bitcast i64* %R8 to i32*, !mcsema_real_eip !75
  %R8D_val.116 = load i32, i32* %R8D.115, align 4, !mcsema_real_eip !75
  %11 = bitcast i8* %_new_gep_30 to i32*
  store i32 %R8D_val.116, i32* %11, align 4, !mcsema_real_eip !75
  %_new_gep_33 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %R9D.118 = bitcast i64* %R9 to i32*, !mcsema_real_eip !76
  %R9D_val.119 = load i32, i32* %R9D.118, align 4, !mcsema_real_eip !76
  %12 = bitcast i8* %_new_gep_33 to i32*
  store i32 %R9D_val.119, i32* %12, align 4, !mcsema_real_eip !76
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_36 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_35, i64 -36
  %13 = bitcast i8* %_new_gep_36 to i32*
  store i32 %_new_load_157, i32* %13, align 4, !mcsema_real_eip !77
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_38, i64 -48
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %R11_val.124 = load i64, i64* %R11, align 8, !mcsema_real_eip !78
  store i64 %R11_val.124, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !78
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -52
  %R10D.126 = bitcast i64* %R10 to i32*, !mcsema_real_eip !79
  %R10D_val.127 = load i32, i32* %R10D.126, align 4, !mcsema_real_eip !79
  %14 = bitcast i8* %_new_gep_42 to i32*
  store i32 %R10D_val.127, i32* %14, align 4, !mcsema_real_eip !79
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_44, i64 -64
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %RAX_val.129 = load i64, i64* %XAX, align 8, !mcsema_real_eip !80
  store i64 %RAX_val.129, i64* %_allin_new_bt_46, align 8, !mcsema_real_eip !80
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47, i64 -68
  %15 = bitcast i8* %_new_gep_48 to i32*
  store i32 0, i32* %15, align 4, !mcsema_real_eip !81
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -72
  %16 = bitcast i8* %_new_gep_51 to i32*
  store i32 0, i32* %16, align 4, !mcsema_real_eip !82
  %EAX.134 = bitcast i64* %XAX to i32*, !mcsema_real_eip !83
  br label %block_0x45, !mcsema_real_eip !84

block_0x45:                                       ; preds = %block_0x51, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -72
  %17 = ptrtoint i8* %_new_gep_54 to i64
  %_offset_above_rbp_161 = sub i64 %17, %_local_end_to_int_
  %_pot_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_cond1_163 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_164 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_165 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_166 = or i1 %_cond2_1_164, %_cond2_2_165
  %_cond4_167 = icmp ule i8* %_pot_address_in_parent_stack_162, %_parent_stack_end_ptr_
  %_cond1_n_cond2_168 = and i1 %_cond1_163, %_cond2_166
  %_cond1_n_cond2_cond3_169 = and i1 %_cond1_n_cond2_168, %_cond4_167
  %_address_in_parent_stack_bt_171..v = select i1 %_cond1_n_cond2_cond3_169, i8* %_pot_address_in_parent_stack_162, i8* %_new_gep_54
  %_address_in_parent_stack_bt_171. = bitcast i8* %_address_in_parent_stack_bt_171..v to i32*
  %_new_load_172 = load i32, i32* %_address_in_parent_stack_bt_171., align 4
  %18 = zext i32 %_new_load_172 to i64, !mcsema_real_eip !84
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !84
  %_new_gep_57 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -36
  %19 = ptrtoint i8* %_new_gep_57 to i64
  %_offset_above_rbp_176 = sub i64 %19, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  %.v3 = select i1 %_cond1_n_cond2_cond3_184, i8* %_pot_address_in_parent_stack_177, i8* %_new_gep_57
  %20 = bitcast i8* %.v3 to i32*
  %_new_load_187 = load i32, i32* %20, align 4
  %21 = sub i32 %_new_load_172, %_new_load_187, !mcsema_real_eip !83
  %22 = xor i32 %21, %_new_load_172, !mcsema_real_eip !83
  %23 = xor i32 %22, %_new_load_187, !mcsema_real_eip !83
  %24 = and i32 %23, 16, !mcsema_real_eip !83
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !83
  store i1 %25, i1* %AF, align 1, !mcsema_real_eip !83
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !83
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !83
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  store i1 %29, i1* %PF, align 1, !mcsema_real_eip !83
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !83
  store i1 %30, i1* %ZF, align 1, !mcsema_real_eip !83
  %31 = icmp slt i32 %21, 0
  store i1 %31, i1* %SF, align 1, !mcsema_real_eip !83
  %32 = icmp ult i32 %_new_load_172, %_new_load_187, !mcsema_real_eip !83
  store i1 %32, i1* %CF, align 1, !mcsema_real_eip !83
  %33 = xor i32 %_new_load_187, %_new_load_172, !mcsema_real_eip !83
  %34 = and i32 %22, %33, !mcsema_real_eip !83
  %35 = icmp slt i32 %34, 0
  store i1 %35, i1* %OF, align 1, !mcsema_real_eip !83
  %tmp = xor i1 %31, %35
  br i1 %tmp, label %block_0x51, label %block_0x7b, !mcsema_real_eip !85

block_0x51:                                       ; preds = %block_0x45
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -48
  %_ptr_to_int_188 = ptrtoint i8* %_new_gep_60 to i64
  %_offset_above_rbp_191 = sub i64 %_ptr_to_int_188, %_local_end_to_int_
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_191
  %_cond1_193 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_194 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  %_address_in_parent_stack_bt_201._allin_new_bt_61.v = select i1 %_cond1_n_cond2_cond3_199, i8* %_pot_address_in_parent_stack_192, i8* %_new_gep_60
  %_address_in_parent_stack_bt_201._allin_new_bt_61 = bitcast i8* %_address_in_parent_stack_bt_201._allin_new_bt_61.v to i64*
  %_new_load_202 = load i64, i64* %_address_in_parent_stack_bt_201._allin_new_bt_61, align 8
  store i64 %_new_load_202, i64* %XAX, align 8, !mcsema_real_eip !86
  %_new_load_217 = load i32, i32* %_address_in_parent_stack_bt_171., align 4
  %36 = sext i32 %_new_load_217 to i64, !mcsema_real_eip !87
  store i64 %36, i64* %XCX, align 8, !mcsema_real_eip !87
  %37 = shl nsw i64 %36, 2
  %38 = add i64 %37, %_new_load_202, !mcsema_real_eip !88
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !88
  %_ptr_bt_220 = inttoptr i64 %38 to i8*
  %_offset_above_rbp_221 = sub i64 %38, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_ptr_bt_220, %_local_stack_end_ptr_
  %_cond2_1_224 = icmp ugt i8* %_ptr_bt_220, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_ptr_bt_220, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond4_227, %_cond1_n_cond2_228
  %_address_in_parent_stack_bt_231 = bitcast i8* %_pot_address_in_parent_stack_222 to i32*
  %_address_in_parent_stack_bt_231. = select i1 %_cond1_n_cond2_cond3_229, i32* %_address_in_parent_stack_bt_231, i32* %39
  %_new_load_232 = load i32, i32* %_address_in_parent_stack_bt_231., align 4
  %40 = zext i32 %_new_load_232 to i64, !mcsema_real_eip !88
  store i64 %40, i64* %XDX, align 8, !mcsema_real_eip !88
  %_new_gep_66 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -64
  %_ptr_to_int_233 = ptrtoint i8* %_new_gep_66 to i64
  %_offset_above_rbp_236 = sub i64 %_ptr_to_int_233, %_local_end_to_int_
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_239 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  %.v4 = select i1 %_cond1_n_cond2_cond3_244, i8* %_pot_address_in_parent_stack_237, i8* %_new_gep_66
  %41 = bitcast i8* %.v4 to i64*
  %_new_load_247 = load i64, i64* %41, align 8
  store i64 %_new_load_247, i64* %XAX, align 8, !mcsema_real_eip !89
  %_new_load_262 = load i32, i32* %_address_in_parent_stack_bt_171., align 4
  %42 = sext i32 %_new_load_262 to i64, !mcsema_real_eip !90
  store i64 %42, i64* %XCX, align 8, !mcsema_real_eip !90
  %43 = shl nsw i64 %42, 2
  %44 = add i64 %43, %_new_load_247, !mcsema_real_eip !91
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !91
  %_ptr_bt_265 = inttoptr i64 %44 to i8*
  %_offset_above_rbp_266 = sub i64 %44, %_local_end_to_int_
  %_pot_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_266
  %_cond1_268 = icmp ugt i8* %_ptr_bt_265, %_local_stack_end_ptr_
  %_cond2_1_269 = icmp ugt i8* %_ptr_bt_265, %_parent_stack_end_ptr_
  %_cond2_2_270 = icmp ult i8* %_ptr_bt_265, %_parent_stack_start_ptr_
  %_cond2_271 = or i1 %_cond2_1_269, %_cond2_2_270
  %_cond4_272 = icmp ule i8* %_pot_address_in_parent_stack_267, %_parent_stack_end_ptr_
  %_cond1_n_cond2_273 = and i1 %_cond1_268, %_cond2_271
  %_cond1_n_cond2_cond3_274 = and i1 %_cond4_272, %_cond1_n_cond2_273
  %_address_in_parent_stack_bt_276 = bitcast i8* %_pot_address_in_parent_stack_267 to i32*
  %46 = select i1 %_cond1_n_cond2_cond3_274, i32* %_address_in_parent_stack_bt_276, i32* %45
  %_new_load_277 = load i32, i32* %46, align 4
  %47 = sub i32 %_new_load_232, %_new_load_277, !mcsema_real_eip !91
  %48 = xor i32 %47, %_new_load_232, !mcsema_real_eip !91
  %49 = xor i32 %48, %_new_load_277, !mcsema_real_eip !91
  %50 = and i32 %49, 16, !mcsema_real_eip !91
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !91
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !91
  %52 = trunc i32 %47 to i8, !mcsema_real_eip !91
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !91
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  store i1 %55, i1* %PF, align 1, !mcsema_real_eip !91
  %56 = icmp eq i32 %47, 0, !mcsema_real_eip !91
  store i1 %56, i1* %ZF, align 1, !mcsema_real_eip !91
  %57 = icmp slt i32 %47, 0
  store i1 %57, i1* %SF, align 1, !mcsema_real_eip !91
  %58 = icmp ult i32 %_new_load_232, %_new_load_277, !mcsema_real_eip !91
  store i1 %58, i1* %CF, align 1, !mcsema_real_eip !91
  %59 = xor i32 %_new_load_277, %_new_load_232, !mcsema_real_eip !91
  %60 = and i32 %48, %59, !mcsema_real_eip !91
  %61 = icmp slt i32 %60, 0
  store i1 %61, i1* %OF, align 1, !mcsema_real_eip !91
  %62 = zext i32 %47 to i64, !mcsema_real_eip !91
  store i64 %62, i64* %XDX, align 8, !mcsema_real_eip !91
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -68
  %63 = ptrtoint i8* %_new_gep_72 to i64
  %64 = bitcast i8* %_new_gep_72 to i32*
  %_offset_above_rbp_281 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_282 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_281
  %_cond1_283 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond2_1_284 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_2_285 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_286 = or i1 %_cond2_1_284, %_cond2_2_285
  %_cond4_287 = icmp ule i8* %_pot_address_in_parent_stack_282, %_parent_stack_end_ptr_
  %_cond1_n_cond2_288 = and i1 %_cond1_283, %_cond2_286
  %_cond1_n_cond2_cond3_289 = and i1 %_cond1_n_cond2_288, %_cond4_287
  %_address_in_parent_stack_bt_291 = bitcast i8* %_pot_address_in_parent_stack_282 to i32*
  %_address_in_parent_stack_bt_291. = select i1 %_cond1_n_cond2_cond3_289, i32* %_address_in_parent_stack_bt_291, i32* %64
  %_new_load_292 = load i32, i32* %_address_in_parent_stack_bt_291., align 4
  %65 = add i32 %47, %_new_load_292, !mcsema_real_eip !92
  %66 = xor i32 %65, %_new_load_292, !mcsema_real_eip !92
  %67 = xor i32 %66, %47, !mcsema_real_eip !92
  %68 = and i32 %67, 16, !mcsema_real_eip !92
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !92
  store i1 %69, i1* %AF, align 1, !mcsema_real_eip !92
  %70 = icmp slt i32 %65, 0
  store i1 %70, i1* %SF, align 1, !mcsema_real_eip !92
  %71 = icmp eq i32 %65, 0, !mcsema_real_eip !92
  store i1 %71, i1* %ZF, align 1, !mcsema_real_eip !92
  %72 = xor i32 %_new_load_292, -2147483648, !mcsema_real_eip !92
  %73 = xor i32 %72, %47, !mcsema_real_eip !92
  %74 = and i32 %66, %73, !mcsema_real_eip !92
  %75 = icmp slt i32 %74, 0
  store i1 %75, i1* %OF, align 1, !mcsema_real_eip !92
  %76 = trunc i32 %65 to i8, !mcsema_real_eip !92
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !92
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  store i1 %79, i1* %PF, align 1, !mcsema_real_eip !92
  %80 = icmp ult i32 %65, %_new_load_292, !mcsema_real_eip !92
  store i1 %80, i1* %CF, align 1, !mcsema_real_eip !92
  %81 = zext i32 %65 to i64, !mcsema_real_eip !92
  store i64 %81, i64* %XDX, align 8, !mcsema_real_eip !92
  store i32 %65, i32* %64, align 4, !mcsema_real_eip !93
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77, i64 -72
  %82 = ptrtoint i8* %_new_gep_78 to i64
  %83 = bitcast i8* %_new_gep_78 to i32*
  %_offset_above_rbp_296 = sub i64 %82, %_local_end_to_int_
  %_pot_address_in_parent_stack_297 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_296
  %_cond1_298 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_299 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_300 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_301 = or i1 %_cond2_1_299, %_cond2_2_300
  %_cond4_302 = icmp ule i8* %_pot_address_in_parent_stack_297, %_parent_stack_end_ptr_
  %_cond1_n_cond2_303 = and i1 %_cond1_298, %_cond2_301
  %_cond1_n_cond2_cond3_304 = and i1 %_cond1_n_cond2_303, %_cond4_302
  %_address_in_parent_stack_bt_306 = bitcast i8* %_pot_address_in_parent_stack_297 to i32*
  %84 = select i1 %_cond1_n_cond2_cond3_304, i32* %_address_in_parent_stack_bt_306, i32* %83
  %_new_load_307 = load i32, i32* %84, align 4
  %85 = add i32 %_new_load_307, 1, !mcsema_real_eip !95
  %86 = xor i32 %85, %_new_load_307, !mcsema_real_eip !95
  %87 = and i32 %86, 16, !mcsema_real_eip !95
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !95
  store i1 %88, i1* %AF, align 1, !mcsema_real_eip !95
  %89 = icmp slt i32 %85, 0
  store i1 %89, i1* %SF, align 1, !mcsema_real_eip !95
  %90 = icmp eq i32 %85, 0, !mcsema_real_eip !95
  store i1 %90, i1* %ZF, align 1, !mcsema_real_eip !95
  %91 = xor i32 %_new_load_307, -2147483648, !mcsema_real_eip !95
  %92 = and i32 %86, %91, !mcsema_real_eip !95
  %93 = icmp slt i32 %92, 0
  store i1 %93, i1* %OF, align 1, !mcsema_real_eip !95
  %94 = trunc i32 %85 to i8, !mcsema_real_eip !95
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !95
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  store i1 %97, i1* %PF, align 1, !mcsema_real_eip !95
  %98 = icmp eq i32 %_new_load_307, -1
  store i1 %98, i1* %CF, align 1, !mcsema_real_eip !95
  %99 = zext i32 %85 to i64, !mcsema_real_eip !95
  store i64 %99, i64* %XAX, align 8, !mcsema_real_eip !95
  store i32 %85, i32* %83, align 4, !mcsema_real_eip !96
  br label %block_0x45, !mcsema_real_eip !97

block_0x7b:                                       ; preds = %block_0x45
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !64
  %_new_gep_84 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -68
  %100 = ptrtoint i8* %_new_gep_84 to i64
  %_offset_above_rbp_311 = sub i64 %100, %_local_end_to_int_
  %_pot_address_in_parent_stack_312 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_311
  %_cond1_313 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_314 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_315 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_316 = or i1 %_cond2_1_314, %_cond2_2_315
  %_cond4_317 = icmp ule i8* %_pot_address_in_parent_stack_312, %_parent_stack_end_ptr_
  %_cond1_n_cond2_318 = and i1 %_cond1_313, %_cond2_316
  %_cond1_n_cond2_cond3_319 = and i1 %_cond1_n_cond2_318, %_cond4_317
  %_address_in_parent_stack_bt_321..v = select i1 %_cond1_n_cond2_cond3_319, i8* %_pot_address_in_parent_stack_312, i8* %_new_gep_84
  %_address_in_parent_stack_bt_321. = bitcast i8* %_address_in_parent_stack_bt_321..v to i32*
  %_new_load_322 = load i32, i32* %_address_in_parent_stack_bt_321., align 4
  %101 = zext i32 %_new_load_322 to i64, !mcsema_real_eip !98
  store i64 %101, i64* %XAX, align 8, !mcsema_real_eip !98
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -12
  %102 = ptrtoint i8* %_new_gep_87 to i64
  %_offset_above_rbp_326 = sub i64 %102, %_local_end_to_int_
  %_pot_address_in_parent_stack_327 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_326
  %_cond1_328 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_329 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_330 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_331 = or i1 %_cond2_1_329, %_cond2_2_330
  %_cond4_332 = icmp ule i8* %_pot_address_in_parent_stack_327, %_parent_stack_end_ptr_
  %_cond1_n_cond2_333 = and i1 %_cond1_328, %_cond2_331
  %_cond1_n_cond2_cond3_334 = and i1 %_cond1_n_cond2_333, %_cond4_332
  %.v5 = select i1 %_cond1_n_cond2_cond3_334, i8* %_pot_address_in_parent_stack_327, i8* %_new_gep_87
  %103 = bitcast i8* %.v5 to i32*
  %_new_load_337 = load i32, i32* %103, align 4
  %104 = zext i32 %_new_load_337 to i64, !mcsema_real_eip !99
  store i64 %104, i64* %XCX, align 8, !mcsema_real_eip !99
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -16
  %105 = ptrtoint i8* %_new_gep_90 to i64
  %_offset_above_rbp_341 = sub i64 %105, %_local_end_to_int_
  %_pot_address_in_parent_stack_342 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_341
  %_cond1_343 = icmp ugt i8* %_new_gep_90, %_local_stack_end_ptr_
  %_cond2_1_344 = icmp ugt i8* %_new_gep_90, %_parent_stack_end_ptr_
  %_cond2_2_345 = icmp ult i8* %_new_gep_90, %_parent_stack_start_ptr_
  %_cond2_346 = or i1 %_cond2_1_344, %_cond2_2_345
  %_cond4_347 = icmp ule i8* %_pot_address_in_parent_stack_342, %_parent_stack_end_ptr_
  %_cond1_n_cond2_348 = and i1 %_cond1_343, %_cond2_346
  %_cond1_n_cond2_cond3_349 = and i1 %_cond1_n_cond2_348, %_cond4_347
  %_address_in_parent_stack_bt_351..v = select i1 %_cond1_n_cond2_cond3_349, i8* %_pot_address_in_parent_stack_342, i8* %_new_gep_90
  %_address_in_parent_stack_bt_351. = bitcast i8* %_address_in_parent_stack_bt_351..v to i32*
  %_new_load_352 = load i32, i32* %_address_in_parent_stack_bt_351., align 4
  %106 = add i32 %_new_load_337, %_new_load_352, !mcsema_real_eip !100
  %107 = xor i32 %106, %_new_load_352, !mcsema_real_eip !100
  %108 = xor i32 %107, %_new_load_337, !mcsema_real_eip !100
  %109 = and i32 %108, 16, !mcsema_real_eip !100
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !100
  store i1 %110, i1* %AF, align 1, !mcsema_real_eip !100
  %111 = icmp slt i32 %106, 0
  store i1 %111, i1* %SF, align 1, !mcsema_real_eip !100
  %112 = icmp eq i32 %106, 0, !mcsema_real_eip !100
  store i1 %112, i1* %ZF, align 1, !mcsema_real_eip !100
  %113 = xor i32 %_new_load_352, -2147483648, !mcsema_real_eip !100
  %114 = xor i32 %113, %_new_load_337, !mcsema_real_eip !100
  %115 = and i32 %107, %114, !mcsema_real_eip !100
  %116 = icmp slt i32 %115, 0
  store i1 %116, i1* %OF, align 1, !mcsema_real_eip !100
  %117 = trunc i32 %106 to i8, !mcsema_real_eip !100
  %118 = call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !100
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  store i1 %120, i1* %PF, align 1, !mcsema_real_eip !100
  %121 = icmp ult i32 %106, %_new_load_352, !mcsema_real_eip !100
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !100
  %122 = zext i32 %106 to i64, !mcsema_real_eip !100
  store i64 %122, i64* %XCX, align 8, !mcsema_real_eip !100
  %_new_gep_93 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -20
  %123 = ptrtoint i8* %_new_gep_93 to i64
  %_offset_above_rbp_356 = sub i64 %123, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_new_gep_93, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_new_gep_93, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_new_gep_93, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond1_n_cond2_363, %_cond4_362
  %.v6 = select i1 %_cond1_n_cond2_cond3_364, i8* %_pot_address_in_parent_stack_357, i8* %_new_gep_93
  %124 = bitcast i8* %.v6 to i32*
  %_new_load_367 = load i32, i32* %124, align 4
  %125 = add i32 %106, %_new_load_367, !mcsema_real_eip !101
  %126 = xor i32 %125, %_new_load_367, !mcsema_real_eip !101
  %127 = xor i32 %126, %106, !mcsema_real_eip !101
  %128 = and i32 %127, 16, !mcsema_real_eip !101
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !101
  store i1 %129, i1* %AF, align 1, !mcsema_real_eip !101
  %130 = icmp slt i32 %125, 0
  store i1 %130, i1* %SF, align 1, !mcsema_real_eip !101
  %131 = icmp eq i32 %125, 0, !mcsema_real_eip !101
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !101
  %132 = xor i32 %_new_load_367, -2147483648, !mcsema_real_eip !101
  %133 = xor i32 %132, %106, !mcsema_real_eip !101
  %134 = and i32 %126, %133, !mcsema_real_eip !101
  %135 = icmp slt i32 %134, 0
  store i1 %135, i1* %OF, align 1, !mcsema_real_eip !101
  %136 = trunc i32 %125 to i8, !mcsema_real_eip !101
  %137 = call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !101
  %138 = and i8 %137, 1
  %139 = icmp eq i8 %138, 0
  store i1 %139, i1* %PF, align 1, !mcsema_real_eip !101
  %140 = icmp ult i32 %125, %_new_load_367, !mcsema_real_eip !101
  store i1 %140, i1* %CF, align 1, !mcsema_real_eip !101
  %141 = zext i32 %125 to i64, !mcsema_real_eip !101
  store i64 %141, i64* %XCX, align 8, !mcsema_real_eip !101
  %_new_gep_96 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -24
  %142 = ptrtoint i8* %_new_gep_96 to i64
  %_offset_above_rbp_371 = sub i64 %142, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_new_gep_96, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_new_gep_96, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_new_gep_96, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  %_address_in_parent_stack_bt_381..v = select i1 %_cond1_n_cond2_cond3_379, i8* %_pot_address_in_parent_stack_372, i8* %_new_gep_96
  %_address_in_parent_stack_bt_381. = bitcast i8* %_address_in_parent_stack_bt_381..v to i32*
  %_new_load_382 = load i32, i32* %_address_in_parent_stack_bt_381., align 4
  %143 = add i32 %125, %_new_load_382, !mcsema_real_eip !102
  %144 = xor i32 %143, %_new_load_382, !mcsema_real_eip !102
  %145 = xor i32 %144, %125, !mcsema_real_eip !102
  %146 = and i32 %145, 16, !mcsema_real_eip !102
  %147 = icmp ne i32 %146, 0, !mcsema_real_eip !102
  store i1 %147, i1* %AF, align 1, !mcsema_real_eip !102
  %148 = icmp slt i32 %143, 0
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !102
  %149 = icmp eq i32 %143, 0, !mcsema_real_eip !102
  store i1 %149, i1* %ZF, align 1, !mcsema_real_eip !102
  %150 = xor i32 %_new_load_382, -2147483648, !mcsema_real_eip !102
  %151 = xor i32 %150, %125, !mcsema_real_eip !102
  %152 = and i32 %144, %151, !mcsema_real_eip !102
  %153 = icmp slt i32 %152, 0
  store i1 %153, i1* %OF, align 1, !mcsema_real_eip !102
  %154 = trunc i32 %143 to i8, !mcsema_real_eip !102
  %155 = call i8 @llvm.ctpop.i8(i8 %154), !mcsema_real_eip !102
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  store i1 %157, i1* %PF, align 1, !mcsema_real_eip !102
  %158 = icmp ult i32 %143, %_new_load_382, !mcsema_real_eip !102
  store i1 %158, i1* %CF, align 1, !mcsema_real_eip !102
  %159 = zext i32 %143 to i64, !mcsema_real_eip !102
  store i64 %159, i64* %XCX, align 8, !mcsema_real_eip !102
  %_new_gep_99 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -28
  %160 = ptrtoint i8* %_new_gep_99 to i64
  %_offset_above_rbp_386 = sub i64 %160, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_new_gep_99, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_new_gep_99, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_new_gep_99, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond1_n_cond2_393, %_cond4_392
  %.v7 = select i1 %_cond1_n_cond2_cond3_394, i8* %_pot_address_in_parent_stack_387, i8* %_new_gep_99
  %161 = bitcast i8* %.v7 to i32*
  %_new_load_397 = load i32, i32* %161, align 4
  %162 = add i32 %143, %_new_load_397, !mcsema_real_eip !103
  %163 = xor i32 %162, %_new_load_397, !mcsema_real_eip !103
  %164 = xor i32 %163, %143, !mcsema_real_eip !103
  %165 = and i32 %164, 16, !mcsema_real_eip !103
  %166 = icmp ne i32 %165, 0, !mcsema_real_eip !103
  store i1 %166, i1* %AF, align 1, !mcsema_real_eip !103
  %167 = icmp slt i32 %162, 0
  store i1 %167, i1* %SF, align 1, !mcsema_real_eip !103
  %168 = icmp eq i32 %162, 0, !mcsema_real_eip !103
  store i1 %168, i1* %ZF, align 1, !mcsema_real_eip !103
  %169 = xor i32 %_new_load_397, -2147483648, !mcsema_real_eip !103
  %170 = xor i32 %169, %143, !mcsema_real_eip !103
  %171 = and i32 %163, %170, !mcsema_real_eip !103
  %172 = icmp slt i32 %171, 0
  store i1 %172, i1* %OF, align 1, !mcsema_real_eip !103
  %173 = trunc i32 %162 to i8, !mcsema_real_eip !103
  %174 = call i8 @llvm.ctpop.i8(i8 %173), !mcsema_real_eip !103
  %175 = and i8 %174, 1
  %176 = icmp eq i8 %175, 0
  store i1 %176, i1* %PF, align 1, !mcsema_real_eip !103
  %177 = icmp ult i32 %162, %_new_load_397, !mcsema_real_eip !103
  store i1 %177, i1* %CF, align 1, !mcsema_real_eip !103
  %178 = zext i32 %162 to i64, !mcsema_real_eip !103
  store i64 %178, i64* %XCX, align 8, !mcsema_real_eip !103
  %_new_gep_102 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -32
  %179 = ptrtoint i8* %_new_gep_102 to i64
  %_offset_above_rbp_401 = sub i64 %179, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_new_gep_102, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_new_gep_102, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_new_gep_102, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  %_address_in_parent_stack_bt_411..v = select i1 %_cond1_n_cond2_cond3_409, i8* %_pot_address_in_parent_stack_402, i8* %_new_gep_102
  %_address_in_parent_stack_bt_411. = bitcast i8* %_address_in_parent_stack_bt_411..v to i32*
  %_new_load_412 = load i32, i32* %_address_in_parent_stack_bt_411., align 4
  %180 = add i32 %162, %_new_load_412, !mcsema_real_eip !104
  %181 = xor i32 %180, %_new_load_412, !mcsema_real_eip !104
  %182 = xor i32 %181, %162, !mcsema_real_eip !104
  %183 = and i32 %182, 16, !mcsema_real_eip !104
  %184 = icmp ne i32 %183, 0, !mcsema_real_eip !104
  store i1 %184, i1* %AF, align 1, !mcsema_real_eip !104
  %185 = icmp eq i32 %180, 0, !mcsema_real_eip !104
  store i1 %185, i1* %ZF, align 1, !mcsema_real_eip !104
  %186 = trunc i32 %180 to i8, !mcsema_real_eip !104
  %187 = call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !104
  %188 = and i8 %187, 1
  %189 = icmp eq i8 %188, 0
  store i1 %189, i1* %PF, align 1, !mcsema_real_eip !104
  %190 = zext i32 %180 to i64, !mcsema_real_eip !104
  store i64 %190, i64* %XCX, align 8, !mcsema_real_eip !104
  %EAX_val.156 = load i32, i32* %EAX.134, align 4, !mcsema_real_eip !105
  %191 = sext i32 %EAX_val.156 to i64, !mcsema_real_eip !105
  %192 = sext i32 %180 to i64, !mcsema_real_eip !105
  %193 = mul nsw i64 %191, %192, !mcsema_real_eip !105
  %194 = trunc i64 %193 to i32, !mcsema_real_eip !105
  %sext = shl i64 %193, 32
  %195 = ashr exact i64 %sext, 32
  %196 = icmp ne i64 %195, %193, !mcsema_real_eip !105
  %197 = icmp slt i32 %194, 0, !mcsema_real_eip !105
  store i1 %197, i1* %SF, align 1, !mcsema_real_eip !105
  store i1 %196, i1* %OF, align 1, !mcsema_real_eip !105
  store i1 %196, i1* %CF, align 1, !mcsema_real_eip !105
  %198 = and i64 %193, 4294967295
  store i64 %198, i64* %XAX, align 8, !mcsema_real_eip !105
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.157 = load i64, i64* %XSP, align 8, !mcsema_real_eip !106
  %_ptr_to_int_413 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104 to i64
  %_offset_above_rbp_416 = sub i64 %_ptr_to_int_413, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  %.v8 = select i1 %_cond1_n_cond2_cond3_424, i8* %_pot_address_in_parent_stack_417, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104
  %199 = bitcast i8* %.v8 to i64*
  %_new_load_427 = load i64, i64* %199, align 8
  store i64 %_new_load_427, i64* %XBX, align 8, !mcsema_real_eip !106
  %_new_gep_106 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, i64 8
  %200 = add i64 %RSP_val.157, 8, !mcsema_real_eip !106
  store volatile i8* %_new_gep_106, i8** %_RSP_ptr_, align 8
  store i64 %200, i64* %XSP, align 8, !mcsema_real_eip !106
  %_ptr_to_int_428 = ptrtoint i8* %_new_gep_106 to i64
  %_offset_above_rbp_431 = sub i64 %_ptr_to_int_428, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  %_address_in_parent_stack_bt_441._allin_new_bt_108.v = select i1 %_cond1_n_cond2_cond3_439, i8* %_pot_address_in_parent_stack_432, i8* %_new_gep_106
  %_address_in_parent_stack_bt_441._allin_new_bt_108 = bitcast i8* %_address_in_parent_stack_bt_441._allin_new_bt_108.v to i64*
  %_new_load_442 = load i64, i64* %_address_in_parent_stack_bt_441._allin_new_bt_108, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_442 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_442, i64* %XBP, align 8, !mcsema_real_eip !107
  %_new_gep_109 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, i64 16
  %201 = add i64 %RSP_val.157, 16, !mcsema_real_eip !107
  store volatile i8* %_new_gep_109, i8** %_RSP_ptr_, align 8
  store i64 %201, i64* %XSP, align 8, !mcsema_real_eip !107
  %_new_gep_111 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, i64 24
  %202 = add i64 %RSP_val.157, 24, !mcsema_real_eip !108
  %_ptr_to_int_443 = ptrtoint i8* %_new_gep_109 to i64
  %_offset_above_rbp_446 = sub i64 %_ptr_to_int_443, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_new_gep_109, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_new_gep_109, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_new_gep_109, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond1_n_cond2_453, %_cond4_452
  %.v9 = select i1 %_cond1_n_cond2_cond3_454, i8* %_pot_address_in_parent_stack_447, i8* %_new_gep_109
  %203 = bitcast i8* %.v9 to i64*
  %_new_load_457 = load i64, i64* %203, align 8
  store i64 %_new_load_457, i64* %XIP, align 8, !mcsema_real_eip !108
  store volatile i8* %_new_gep_111, i8** %_RSP_ptr_, align 8
  store i64 %202, i64* %XSP, align 8, !mcsema_real_eip !108
  ret void, !mcsema_real_eip !108
}

attributes #0 = { noinline }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 160}
!3 = !{i64 161}
!4 = !{i64 164}
!5 = !{i64 168}
!6 = !{i64 173}
!7 = !{i64 175}
!8 = !{i64 182}
!9 = !{i64 185}
!10 = !{i64 189}
!11 = !{i64 192}
!12 = !{i64 197}
!13 = !{i64 202}
!14 = !{i64 204}
!15 = !{i64 208}
!16 = !{i64 213}
!17 = !{i64 217}
!18 = !{i64 224}
!19 = !{i64 228}
!20 = !{i64 234}
!21 = !{i64 237}
!22 = !{i64 240}
!23 = !{i64 243}
!24 = !{i64 247}
!25 = !{i64 251}
!26 = !{i64 254}
!27 = !{i64 257}
!28 = !{i64 260}
!29 = !{i64 263}
!30 = !{i64 268}
!31 = !{i64 275}
!32 = !{i64 279}
!33 = !{i64 285}
!34 = !{i64 288}
!35 = !{i64 291}
!36 = !{i64 295}
!37 = !{i64 299}
!38 = !{i64 302}
!39 = !{i64 305}
!40 = !{i64 308}
!41 = !{i64 311}
!42 = !{i64 316}
!43 = !{i64 321}
!44 = !{i64 348}
!45 = !{i64 353}
!46 = !{i64 357}
!47 = !{i64 361}
!48 = !{i64 368}
!49 = !{i64 373}
!50 = !{i64 381}
!51 = !{i64 386}
!52 = !{i64 389}
!53 = !{i64 394}
!54 = !{i64 404}
!55 = !{i64 407}
!56 = !{i64 410}
!57 = !{i64 412}
!58 = !{i64 417}
!59 = !{i64 420}
!60 = !{i64 423}
!61 = !{i64 425}
!62 = !{i64 429}
!63 = !{i64 430}
!64 = !{i64 0}
!65 = !{i64 1}
!66 = !{i64 4}
!67 = !{i64 5}
!68 = !{i64 9}
!69 = !{i64 13}
!70 = !{i64 17}
!71 = !{i64 20}
!72 = !{i64 23}
!73 = !{i64 26}
!74 = !{i64 29}
!75 = !{i64 32}
!76 = !{i64 36}
!77 = !{i64 40}
!78 = !{i64 43}
!79 = !{i64 47}
!80 = !{i64 51}
!81 = !{i64 55}
!82 = !{i64 62}
!83 = !{i64 72}
!84 = !{i64 69}
!85 = !{i64 75}
!86 = !{i64 81}
!87 = !{i64 85}
!88 = !{i64 89}
!89 = !{i64 92}
!90 = !{i64 96}
!91 = !{i64 100}
!92 = !{i64 103}
!93 = !{i64 106}
!94 = !{i64 109}
!95 = !{i64 112}
!96 = !{i64 115}
!97 = !{i64 118}
!98 = !{i64 123}
!99 = !{i64 126}
!100 = !{i64 129}
!101 = !{i64 132}
!102 = !{i64 135}
!103 = !{i64 138}
!104 = !{i64 141}
!105 = !{i64 144}
!106 = !{i64 147}
!107 = !{i64 148}
!108 = !{i64 149}
