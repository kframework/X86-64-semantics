; ModuleID = 'Output/test_11.clang.trans.opt.bc'
source_filename = "Output/test_11.clang.bc"
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
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
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
module asm "  .globl memset;"
module asm "  .globl _memset;"
module asm "  .type _memset,@function"
module asm "_memset:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memset@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memset,0b-_memset;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl doTrans;"
module asm "  .type doTrans,@function"
module asm "doTrans:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doTrans,0b-doTrans;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_4 = alloca [64 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 56
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 8
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
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 40
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, align 8
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !5
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 0
  %13 = add i64 %RSP_val.1, -64
  %_allin_new_bt_21 = bitcast [64 x i8]* %_local_stack_start_ptr_4 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !6
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XSP, align 8, !mcsema_real_eip !6
  %14 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.5)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %15 = add i64 %14, 1, !mcsema_real_eip !7
  %16 = xor i64 %15, %14, !mcsema_real_eip !7
  %17 = and i64 %16, 16, !mcsema_real_eip !7
  %18 = icmp ne i64 %17, 0, !mcsema_real_eip !7
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !7
  %19 = icmp slt i64 %15, 0
  store i1 %19, i1* %SF, align 1, !mcsema_real_eip !7
  %20 = icmp eq i64 %15, 0, !mcsema_real_eip !7
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !7
  %21 = xor i64 %14, -9223372036854775808, !mcsema_real_eip !7
  %22 = and i64 %16, %21, !mcsema_real_eip !7
  %23 = icmp slt i64 %22, 0
  store i1 %23, i1* %OF, align 1, !mcsema_real_eip !7
  %24 = trunc i64 %15 to i8, !mcsema_real_eip !7
  %25 = call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !7
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !7
  %28 = icmp eq i64 %14, -1
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !7
  store i64 %15, i64* %XAX, align 8, !mcsema_real_eip !7
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_228 = load i8*, i8** %12, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_228, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 %15, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_259 = load i8*, i8** %12, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_259, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %29 = load i64, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !9
  store i64 %29, i64* %XDI, align 8, !mcsema_real_eip !9
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !10
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 -8
  %30 = add i64 %RSP_val.14, -8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %30, i64* %XSP, align 8, !mcsema_real_eip !10
  %31 = call x86_64_sysvcc i64 @_malloc(i64 %29)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_119 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_120 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_119, i64 8
  store i8* %_gep_fix_120, i8** %_RSP_ptr_, align 8
  store i64 %31, i64* %XAX, align 8, !mcsema_real_eip !10
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3110 = load i8*, i8** %12, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3110, i64 -32
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %31, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3411 = load i8*, i8** %12, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3411, i64 -32
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %32 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !12
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !12
  %33 = trunc i64 %32 to i8, !mcsema_real_eip !12
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !12
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  store i1 %36, i1* %PF, align 1, !mcsema_real_eip !12
  %37 = icmp eq i64 %32, 0, !mcsema_real_eip !12
  store i1 %37, i1* %ZF, align 1, !mcsema_real_eip !12
  %38 = icmp slt i64 %32, 0
  store i1 %38, i1* %SF, align 1, !mcsema_real_eip !12
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !12
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !12
  br i1 %37, label %block_0xbe, label %block_0x35, !mcsema_real_eip !13

block_0x35:                                       ; preds = %entry
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !14
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !14
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !14
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !14
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !14
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !14
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3411, i64 -16
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %39 = load i64, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !15
  store i64 %39, i64* %XAX, align 8, !mcsema_real_eip !15
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3411, i64 -40
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 %39, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4312 = load i8*, i8** %12, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4312, i64 -32
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %40 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !17
  store i64 %40, i64* %XAX, align 8, !mcsema_real_eip !17
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4312, i64 -48
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 %40, i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !18
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4913 = load i8*, i8** %12, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4913, i64 -32
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %41 = load i64, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !19
  store i64 %41, i64* %XDI, align 8, !mcsema_real_eip !19
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4913, i64 -24
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %42 = load i64, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !20
  store i64 %42, i64* %XDX, align 8, !mcsema_real_eip !20
  %RSI_val.31 = load i64, i64* %XSI, align 8, !mcsema_real_eip !21
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.33 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 -8
  %43 = add i64 %RSP_val.33, -8
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %43, i64* %XSP, align 8, !mcsema_real_eip !21
  %44 = call x86_64_sysvcc i64 @_memset(i64 %41, i64 %RSI_val.31, i64 %42)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_121 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_122 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_121, i64 8
  store i8* %_gep_fix_122, i8** %_RSP_ptr_, align 8
  store i64 %44, i64* %XAX, align 8, !mcsema_real_eip !21
  %CL.46 = bitcast i64* %XCX to i8*
  br label %block_0x54, !mcsema_real_eip !22

block_0x54:                                       ; preds = %block_0x8c, %block_0x35
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5814 = load i8*, i8** %12, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5814, i64 -40
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %45 = load i64, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !22
  store i64 %45, i64* %XAX, align 8, !mcsema_real_eip !22
  %46 = inttoptr i64 %45 to i8*, !mcsema_real_eip !23
  %47 = load i8, i8* %46, align 1, !mcsema_real_eip !23
  %48 = sext i8 %47 to i64
  %49 = and i64 %48, 4294967295
  store i64 %49, i64* %XCX, align 8, !mcsema_real_eip !23
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !24
  %50 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !24
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  store i1 %52, i1* %PF, align 1, !mcsema_real_eip !24
  %53 = icmp eq i8 %47, 0
  store i1 %53, i1* %ZF, align 1, !mcsema_real_eip !24
  %54 = icmp slt i8 %47, 0
  store i1 %54, i1* %SF, align 1, !mcsema_real_eip !24
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !24
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !24
  br i1 %53, label %block_0xa9, label %block_0x64, !mcsema_real_eip !25

block_0x64:                                       ; preds = %block_0x54
  %55 = load i64, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !26
  store i64 %55, i64* %XAX, align 8, !mcsema_real_eip !26
  %56 = inttoptr i64 %55 to i8*, !mcsema_real_eip !27
  %57 = load i8, i8* %56, align 1, !mcsema_real_eip !27
  %58 = sext i8 %57 to i64
  %59 = and i64 %58, 4294967295
  store i64 %59, i64* %XCX, align 8, !mcsema_real_eip !27
  %60 = sext i8 %57 to i32
  %61 = add nsw i32 %60, -47
  %62 = xor i32 %61, %60, !mcsema_real_eip !28
  %63 = and i32 %62, 16, !mcsema_real_eip !28
  %64 = icmp ne i32 %63, 0, !mcsema_real_eip !28
  store i1 %64, i1* %AF, align 1, !mcsema_real_eip !28
  %65 = trunc i32 %61 to i8, !mcsema_real_eip !28
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !28
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  store i1 %68, i1* %PF, align 1, !mcsema_real_eip !28
  %69 = icmp eq i32 %61, 0, !mcsema_real_eip !28
  store i1 %69, i1* %ZF, align 1, !mcsema_real_eip !28
  %70 = icmp slt i8 %57, 47
  store i1 %70, i1* %SF, align 1, !mcsema_real_eip !28
  %71 = icmp ult i8 %57, 47
  store i1 %71, i1* %CF, align 1, !mcsema_real_eip !28
  %72 = and i32 %62, %60, !mcsema_real_eip !28
  %73 = icmp slt i32 %72, 0
  store i1 %73, i1* %OF, align 1, !mcsema_real_eip !28
  br i1 %69, label %block_0x8c, label %block_0x80, !mcsema_real_eip !29

block_0x80:                                       ; preds = %block_0x64
  %74 = load i64, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !30
  store i64 %74, i64* %XAX, align 8, !mcsema_real_eip !30
  %75 = inttoptr i64 %74 to i8*, !mcsema_real_eip !31
  %76 = load i8, i8* %75, align 1, !mcsema_real_eip !31
  store i8 %76, i8* %CL.46, align 1, !mcsema_real_eip !31
  br label %block_0x8c, !mcsema_real_eip !32

block_0x8c:                                       ; preds = %block_0x64, %block_0x80
  %.sink = phi i8 [ %76, %block_0x80 ], [ 92, %block_0x64 ]
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5814, i64 -48
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %77 = load i64, i64* %_allin_new_bt_72, align 8
  store i64 %77, i64* %XAX, align 8
  %78 = inttoptr i64 %77 to i8*
  store i8 %.sink, i8* %78, align 1
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7315 = load i8*, i8** %12, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7315, i64 -40
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %79 = load i64, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !32
  %80 = add i64 %79, 1, !mcsema_real_eip !33
  %81 = xor i64 %80, %79, !mcsema_real_eip !33
  %82 = and i64 %81, 16, !mcsema_real_eip !33
  %83 = icmp ne i64 %82, 0, !mcsema_real_eip !33
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !33
  %84 = icmp slt i64 %80, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !33
  %85 = icmp eq i64 %80, 0, !mcsema_real_eip !33
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !33
  %86 = xor i64 %79, -9223372036854775808, !mcsema_real_eip !33
  %87 = and i64 %81, %86, !mcsema_real_eip !33
  %88 = icmp slt i64 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !33
  %89 = trunc i64 %80 to i8, !mcsema_real_eip !33
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !33
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  store i1 %92, i1* %PF, align 1, !mcsema_real_eip !33
  %93 = icmp eq i64 %79, -1
  store i1 %93, i1* %CF, align 1, !mcsema_real_eip !33
  store i64 %80, i64* %XAX, align 8, !mcsema_real_eip !33
  store i64 %80, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !34
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7916 = load i8*, i8** %12, align 8
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7916, i64 -48
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %94 = load i64, i64* %_allin_new_bt_81, align 8, !mcsema_real_eip !35
  %95 = add i64 %94, 1, !mcsema_real_eip !36
  %96 = xor i64 %95, %94, !mcsema_real_eip !36
  %97 = and i64 %96, 16, !mcsema_real_eip !36
  %98 = icmp ne i64 %97, 0, !mcsema_real_eip !36
  store i1 %98, i1* %AF, align 1, !mcsema_real_eip !36
  %99 = icmp slt i64 %95, 0
  store i1 %99, i1* %SF, align 1, !mcsema_real_eip !36
  %100 = icmp eq i64 %95, 0, !mcsema_real_eip !36
  store i1 %100, i1* %ZF, align 1, !mcsema_real_eip !36
  %101 = xor i64 %94, -9223372036854775808, !mcsema_real_eip !36
  %102 = and i64 %96, %101, !mcsema_real_eip !36
  %103 = icmp slt i64 %102, 0
  store i1 %103, i1* %OF, align 1, !mcsema_real_eip !36
  %104 = trunc i64 %95 to i8, !mcsema_real_eip !36
  %105 = call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !36
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !36
  %108 = icmp eq i64 %94, -1
  store i1 %108, i1* %CF, align 1, !mcsema_real_eip !36
  store i64 %95, i64* %XAX, align 8, !mcsema_real_eip !36
  store i64 %95, i64* %_allin_new_bt_81, align 8, !mcsema_real_eip !37
  br label %block_0x54, !mcsema_real_eip !38

block_0xa9:                                       ; preds = %block_0x54
  %_new_gep_86 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5814, i64 -32
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %109 = load i64, i64* %_allin_new_bt_87, align 8, !mcsema_real_eip !39
  store i64 %109, i64* %XAX, align 8, !mcsema_real_eip !39
  br label %block_0xbe, !mcsema_real_eip !40

block_0xbe:                                       ; preds = %entry, %block_0xa9
  %_load_rbp_ptr_34.sink = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5814, %block_0xa9 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3411, %entry ]
  %.sink3 = phi i64 [ %109, %block_0xa9 ], [ 0, %entry ]
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_34.sink, i64 -8
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  store i64 %.sink3, i64* %_allin_new_bt_93, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9417 = load i8*, i8** %12, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9417, i64 -8
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %110 = load i64, i64* %_allin_new_bt_96, align 8, !mcsema_real_eip !41
  store i64 %110, i64* %XAX, align 8, !mcsema_real_eip !41
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.64 = load i64, i64* %XSP, align 8, !mcsema_real_eip !42
  %_new_gep_98 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 48
  %111 = add i64 %RSP_val.64, 48, !mcsema_real_eip !42
  %_trans_p2i_99 = ptrtoint i8* %_new_gep_98 to i64
  %_trans_p2i_100 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97 to i64
  %_trans_xor_101 = xor i64 %_trans_p2i_99, %_trans_p2i_100
  %112 = and i64 %_trans_xor_101, 16
  %113 = icmp eq i64 %112, 0
  store i1 %113, i1* %AF, align 1, !mcsema_real_eip !42
  %114 = icmp slt i64 %111, 0
  store i1 %114, i1* %SF, align 1, !mcsema_real_eip !42
  %_trans_icmp_eq_103 = icmp eq i8* %_new_gep_98, null
  store i1 %_trans_icmp_eq_103, i1* %ZF, align 1, !mcsema_real_eip !42
  %115 = xor i64 %_trans_p2i_100, -9223372036854775808, !mcsema_real_eip !42
  %116 = and i64 %_trans_xor_101, %115, !mcsema_real_eip !42
  %117 = icmp slt i64 %116, 0
  store i1 %117, i1* %OF, align 1, !mcsema_real_eip !42
  %_trans_trunc_110 = trunc i64 %_trans_p2i_99 to i8
  %118 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_110), !mcsema_real_eip !42
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  store i1 %120, i1* %PF, align 1, !mcsema_real_eip !42
  %_trans_icmp_ne_112 = icmp ne i64 %RSP_val.64, %_trans_p2i_99
  store i1 %_trans_icmp_ne_112, i1* %CF, align 1, !mcsema_real_eip !42
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_, align 8
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !42
  %_allin_new_bt_114 = bitcast i8* %_new_gep_98 to i64*
  %121 = load i64, i64* %_allin_new_bt_114, align 8, !mcsema_real_eip !43
  store volatile i64 %121, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %121, i64* %XBP, align 8, !mcsema_real_eip !43
  %_new_gep_115 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 56
  %122 = add i64 %RSP_val.64, 56, !mcsema_real_eip !43
  store volatile i8* %_new_gep_115, i8** %_RSP_ptr_, align 8
  store i64 %122, i64* %XSP, align 8, !mcsema_real_eip !43
  %_new_gep_117 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 64
  %123 = add i64 %RSP_val.64, 64, !mcsema_real_eip !44
  %_allin_new_bt_118 = bitcast i8* %_new_gep_115 to i64*
  %124 = load i64, i64* %_allin_new_bt_118, align 8, !mcsema_real_eip !44
  store i64 %124, i64* %XIP, align 8, !mcsema_real_eip !44
  store volatile i8* %_new_gep_117, i8** %_RSP_ptr_, align 8
  store i64 %123, i64* %XSP, align 8, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memset(i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_2 = alloca [64 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_2, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_2, i64 0, i64 56
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
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
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_2, i64 0, i64 40
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !5
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_2, i64 0, i64 0
  %11 = add i64 %RSP_val.1, -64
  %_allin_new_bt_21 = bitcast [64 x i8]* %_local_stack_start_ptr_2 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !6
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %11, i64* %XSP, align 8, !mcsema_real_eip !6
  %12 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.5)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %13 = add i64 %12, 1, !mcsema_real_eip !7
  %14 = xor i64 %13, %12, !mcsema_real_eip !7
  %15 = and i64 %14, 16, !mcsema_real_eip !7
  %16 = icmp ne i64 %15, 0, !mcsema_real_eip !7
  store i1 %16, i1* %AF, align 1, !mcsema_real_eip !7
  %17 = icmp slt i64 %13, 0
  store i1 %17, i1* %SF, align 1, !mcsema_real_eip !7
  %18 = icmp eq i64 %13, 0, !mcsema_real_eip !7
  store i1 %18, i1* %ZF, align 1, !mcsema_real_eip !7
  %19 = xor i64 %12, -9223372036854775808, !mcsema_real_eip !7
  %20 = and i64 %14, %19, !mcsema_real_eip !7
  %21 = icmp slt i64 %20, 0
  store i1 %21, i1* %OF, align 1, !mcsema_real_eip !7
  %22 = trunc i64 %13 to i8, !mcsema_real_eip !7
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !7
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !7
  %26 = icmp eq i64 %12, -1
  store i1 %26, i1* %CF, align 1, !mcsema_real_eip !7
  store i64 %13, i64* %XAX, align 8, !mcsema_real_eip !7
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 %13, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -24
  %_ptr_to_int_123 = ptrtoint i8* %_new_gep_26 to i64
  %_offset_above_rbp_126 = sub i64 %_ptr_to_int_123, %_local_end_to_int_
  %_pot_address_in_parent_stack_127 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_126
  %_cond1_128 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_129 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_130 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_131 = or i1 %_cond2_1_129, %_cond2_2_130
  %_cond4_132 = icmp ule i8* %_pot_address_in_parent_stack_127, %_parent_stack_end_ptr_
  %_cond1_n_cond2_133 = and i1 %_cond1_128, %_cond2_131
  %_cond1_n_cond2_cond3_134 = and i1 %_cond1_n_cond2_133, %_cond4_132
  %_address_in_parent_stack_bt_136._allin_new_bt_27.v = select i1 %_cond1_n_cond2_cond3_134, i8* %_pot_address_in_parent_stack_127, i8* %_new_gep_26
  %_address_in_parent_stack_bt_136._allin_new_bt_27 = bitcast i8* %_address_in_parent_stack_bt_136._allin_new_bt_27.v to i64*
  %_new_load_137 = load i64, i64* %_address_in_parent_stack_bt_136._allin_new_bt_27, align 8
  store i64 %_new_load_137, i64* %XDI, align 8, !mcsema_real_eip !9
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !10
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 -8
  %27 = add i64 %RSP_val.14, -8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %27, i64* %XSP, align 8, !mcsema_real_eip !10
  %28 = call x86_64_sysvcc i64 @_malloc(i64 %_new_load_137)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_119 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_120 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_119, i64 8
  store i8* %_gep_fix_120, i8** %_RSP_ptr_, align 8
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !10
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -32
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %28, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !11
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -32
  %_ptr_to_int_138 = ptrtoint i8* %_new_gep_35 to i64
  %_offset_above_rbp_141 = sub i64 %_ptr_to_int_138, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  %.v3 = select i1 %_cond1_n_cond2_cond3_149, i8* %_pot_address_in_parent_stack_142, i8* %_new_gep_35
  %29 = bitcast i8* %.v3 to i64*
  %_new_load_152 = load i64, i64* %29, align 8
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !12
  %30 = trunc i64 %_new_load_152 to i8, !mcsema_real_eip !12
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !12
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  store i1 %33, i1* %PF, align 1, !mcsema_real_eip !12
  %34 = icmp eq i64 %_new_load_152, 0, !mcsema_real_eip !12
  store i1 %34, i1* %ZF, align 1, !mcsema_real_eip !12
  %35 = icmp slt i64 %_new_load_152, 0
  store i1 %35, i1* %SF, align 1, !mcsema_real_eip !12
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !12
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !12
  br i1 %34, label %block_0xbe, label %block_0x35, !mcsema_real_eip !13

block_0x35:                                       ; preds = %entry
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !14
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !14
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !14
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !14
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !14
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !14
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -16
  %_ptr_to_int_153 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_156 = sub i64 %_ptr_to_int_153, %_local_end_to_int_
  %_pot_address_in_parent_stack_157 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_156
  %_cond1_158 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_159 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_160 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_161 = or i1 %_cond2_1_159, %_cond2_2_160
  %_cond4_162 = icmp ule i8* %_pot_address_in_parent_stack_157, %_parent_stack_end_ptr_
  %_cond1_n_cond2_163 = and i1 %_cond1_158, %_cond2_161
  %_cond1_n_cond2_cond3_164 = and i1 %_cond1_n_cond2_163, %_cond4_162
  %_address_in_parent_stack_bt_166._allin_new_bt_39.v = select i1 %_cond1_n_cond2_cond3_164, i8* %_pot_address_in_parent_stack_157, i8* %_new_gep_38
  %_address_in_parent_stack_bt_166._allin_new_bt_39 = bitcast i8* %_address_in_parent_stack_bt_166._allin_new_bt_39.v to i64*
  %_new_load_167 = load i64, i64* %_address_in_parent_stack_bt_166._allin_new_bt_39, align 8
  store i64 %_new_load_167, i64* %XAX, align 8, !mcsema_real_eip !15
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -40
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 %_new_load_167, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -32
  %_ptr_to_int_168 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_171 = sub i64 %_ptr_to_int_168, %_local_end_to_int_
  %_pot_address_in_parent_stack_172 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_171
  %_cond1_173 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_174 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_175 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_176 = or i1 %_cond2_1_174, %_cond2_2_175
  %_cond4_177 = icmp ule i8* %_pot_address_in_parent_stack_172, %_parent_stack_end_ptr_
  %_cond1_n_cond2_178 = and i1 %_cond1_173, %_cond2_176
  %_cond1_n_cond2_cond3_179 = and i1 %_cond1_n_cond2_178, %_cond4_177
  %.v4 = select i1 %_cond1_n_cond2_cond3_179, i8* %_pot_address_in_parent_stack_172, i8* %_new_gep_44
  %36 = bitcast i8* %.v4 to i64*
  %_new_load_182 = load i64, i64* %36, align 8
  store i64 %_new_load_182, i64* %XAX, align 8, !mcsema_real_eip !17
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -48
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 %_new_load_182, i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !18
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49, i64 -32
  %_ptr_to_int_183 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_186 = sub i64 %_ptr_to_int_183, %_local_end_to_int_
  %_pot_address_in_parent_stack_187 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_186
  %_cond1_188 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_189 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_190 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_191 = or i1 %_cond2_1_189, %_cond2_2_190
  %_cond4_192 = icmp ule i8* %_pot_address_in_parent_stack_187, %_parent_stack_end_ptr_
  %_cond1_n_cond2_193 = and i1 %_cond1_188, %_cond2_191
  %_cond1_n_cond2_cond3_194 = and i1 %_cond1_n_cond2_193, %_cond4_192
  %_address_in_parent_stack_bt_196._allin_new_bt_51.v = select i1 %_cond1_n_cond2_cond3_194, i8* %_pot_address_in_parent_stack_187, i8* %_new_gep_50
  %_address_in_parent_stack_bt_196._allin_new_bt_51 = bitcast i8* %_address_in_parent_stack_bt_196._allin_new_bt_51.v to i64*
  %_new_load_197 = load i64, i64* %_address_in_parent_stack_bt_196._allin_new_bt_51, align 8
  store i64 %_new_load_197, i64* %XDI, align 8, !mcsema_real_eip !19
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49, i64 -24
  %_ptr_to_int_198 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_201 = sub i64 %_ptr_to_int_198, %_local_end_to_int_
  %_pot_address_in_parent_stack_202 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_201
  %_cond1_203 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_204 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_205 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_206 = or i1 %_cond2_1_204, %_cond2_2_205
  %_cond4_207 = icmp ule i8* %_pot_address_in_parent_stack_202, %_parent_stack_end_ptr_
  %_cond1_n_cond2_208 = and i1 %_cond1_203, %_cond2_206
  %_cond1_n_cond2_cond3_209 = and i1 %_cond1_n_cond2_208, %_cond4_207
  %.v5 = select i1 %_cond1_n_cond2_cond3_209, i8* %_pot_address_in_parent_stack_202, i8* %_new_gep_53
  %37 = bitcast i8* %.v5 to i64*
  %_new_load_212 = load i64, i64* %37, align 8
  store i64 %_new_load_212, i64* %XDX, align 8, !mcsema_real_eip !20
  %RSI_val.31 = load i64, i64* %XSI, align 8, !mcsema_real_eip !21
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.33 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 -8
  %38 = add i64 %RSP_val.33, -8
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %38, i64* %XSP, align 8, !mcsema_real_eip !21
  %39 = call x86_64_sysvcc i64 @_memset(i64 %_new_load_197, i64 %RSI_val.31, i64 %_new_load_212)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_121 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_122 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_121, i64 8
  store i8* %_gep_fix_122, i8** %_RSP_ptr_, align 8
  store i64 %39, i64* %XAX, align 8, !mcsema_real_eip !21
  %CL.46 = bitcast i64* %XCX to i8*
  br label %block_0x54, !mcsema_real_eip !22

block_0x54:                                       ; preds = %block_0x8c, %block_0x35
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -40
  %_ptr_to_int_213 = ptrtoint i8* %_new_gep_59 to i64
  %_offset_above_rbp_216 = sub i64 %_ptr_to_int_213, %_local_end_to_int_
  %_pot_address_in_parent_stack_217 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_cond1_218 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_219 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_220 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_221 = or i1 %_cond2_1_219, %_cond2_2_220
  %_cond4_222 = icmp ule i8* %_pot_address_in_parent_stack_217, %_parent_stack_end_ptr_
  %_cond1_n_cond2_223 = and i1 %_cond1_218, %_cond2_221
  %_cond1_n_cond2_cond3_224 = and i1 %_cond1_n_cond2_223, %_cond4_222
  %_address_in_parent_stack_bt_226._allin_new_bt_60.v = select i1 %_cond1_n_cond2_cond3_224, i8* %_pot_address_in_parent_stack_217, i8* %_new_gep_59
  %_address_in_parent_stack_bt_226._allin_new_bt_60 = bitcast i8* %_address_in_parent_stack_bt_226._allin_new_bt_60.v to i64*
  %_new_load_227 = load i64, i64* %_address_in_parent_stack_bt_226._allin_new_bt_60, align 8
  store i64 %_new_load_227, i64* %XAX, align 8, !mcsema_real_eip !22
  %40 = inttoptr i64 %_new_load_227 to i8*, !mcsema_real_eip !23
  %_offset_above_rbp_230 = sub i64 %_new_load_227, %_local_end_to_int_
  %_pot_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_cond1_232 = icmp ult i8* %_local_stack_end_ptr_, %40
  %_cond2_1_233 = icmp ugt i8* %40, %_parent_stack_end_ptr_
  %_cond2_2_234 = icmp ult i8* %40, %_parent_stack_start_ptr_
  %_cond2_235 = or i1 %_cond2_1_233, %_cond2_2_234
  %_cond4_236 = icmp ule i8* %_pot_address_in_parent_stack_231, %_parent_stack_end_ptr_
  %_cond1_n_cond2_237 = and i1 %_cond1_232, %_cond2_235
  %_cond1_n_cond2_cond3_238 = and i1 %_cond4_236, %_cond1_n_cond2_237
  %41 = select i1 %_cond1_n_cond2_cond3_238, i8* %_pot_address_in_parent_stack_231, i8* %40
  %_new_load_240 = load i8, i8* %41, align 1
  %42 = sext i8 %_new_load_240 to i64
  %43 = and i64 %42, 4294967295
  store i64 %43, i64* %XCX, align 8, !mcsema_real_eip !23
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !24
  %44 = call i8 @llvm.ctpop.i8(i8 %_new_load_240), !mcsema_real_eip !24
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  store i1 %46, i1* %PF, align 1, !mcsema_real_eip !24
  %47 = icmp eq i8 %_new_load_240, 0
  store i1 %47, i1* %ZF, align 1, !mcsema_real_eip !24
  %48 = icmp slt i8 %_new_load_240, 0
  store i1 %48, i1* %SF, align 1, !mcsema_real_eip !24
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !24
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !24
  br i1 %47, label %block_0xa9, label %block_0x64, !mcsema_real_eip !25

block_0x64:                                       ; preds = %block_0x54
  %_new_load_255 = load i64, i64* %_address_in_parent_stack_bt_226._allin_new_bt_60, align 8
  store i64 %_new_load_255, i64* %XAX, align 8, !mcsema_real_eip !26
  %49 = inttoptr i64 %_new_load_255 to i8*, !mcsema_real_eip !27
  %_offset_above_rbp_258 = sub i64 %_new_load_255, %_local_end_to_int_
  %_pot_address_in_parent_stack_259 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_258
  %_cond1_260 = icmp ult i8* %_local_stack_end_ptr_, %49
  %_cond2_1_261 = icmp ugt i8* %49, %_parent_stack_end_ptr_
  %_cond2_2_262 = icmp ult i8* %49, %_parent_stack_start_ptr_
  %_cond2_263 = or i1 %_cond2_1_261, %_cond2_2_262
  %_cond4_264 = icmp ule i8* %_pot_address_in_parent_stack_259, %_parent_stack_end_ptr_
  %_cond1_n_cond2_265 = and i1 %_cond1_260, %_cond2_263
  %_cond1_n_cond2_cond3_266 = and i1 %_cond4_264, %_cond1_n_cond2_265
  %50 = select i1 %_cond1_n_cond2_cond3_266, i8* %_pot_address_in_parent_stack_259, i8* %49
  %_new_load_268 = load i8, i8* %50, align 1
  %51 = sext i8 %_new_load_268 to i64
  %52 = and i64 %51, 4294967295
  store i64 %52, i64* %XCX, align 8, !mcsema_real_eip !27
  %53 = sext i8 %_new_load_268 to i32
  %54 = add nsw i32 %53, -47
  %55 = xor i32 %54, %53, !mcsema_real_eip !28
  %56 = and i32 %55, 16, !mcsema_real_eip !28
  %57 = icmp ne i32 %56, 0, !mcsema_real_eip !28
  store i1 %57, i1* %AF, align 1, !mcsema_real_eip !28
  %58 = trunc i32 %54 to i8, !mcsema_real_eip !28
  %59 = call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !28
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !28
  %62 = icmp eq i32 %54, 0, !mcsema_real_eip !28
  store i1 %62, i1* %ZF, align 1, !mcsema_real_eip !28
  %63 = icmp slt i8 %_new_load_268, 47
  store i1 %63, i1* %SF, align 1, !mcsema_real_eip !28
  %64 = icmp ult i8 %_new_load_268, 47
  store i1 %64, i1* %CF, align 1, !mcsema_real_eip !28
  %65 = and i32 %55, %53, !mcsema_real_eip !28
  %66 = icmp slt i32 %65, 0
  store i1 %66, i1* %OF, align 1, !mcsema_real_eip !28
  br i1 %62, label %block_0x74, label %block_0x80, !mcsema_real_eip !29

block_0x74:                                       ; preds = %block_0x64
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -48
  %_ptr_to_int_269 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_272 = sub i64 %_ptr_to_int_269, %_local_end_to_int_
  %_pot_address_in_parent_stack_273 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_272
  %_cond1_274 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_275 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_276 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_277 = or i1 %_cond2_1_275, %_cond2_2_276
  %_cond4_278 = icmp ule i8* %_pot_address_in_parent_stack_273, %_parent_stack_end_ptr_
  %_cond1_n_cond2_279 = and i1 %_cond1_274, %_cond2_277
  %_cond1_n_cond2_cond3_280 = and i1 %_cond1_n_cond2_279, %_cond4_278
  %_address_in_parent_stack_bt_282._allin_new_bt_66.v = select i1 %_cond1_n_cond2_cond3_280, i8* %_pot_address_in_parent_stack_273, i8* %_new_gep_65
  br label %block_0x8c, !mcsema_real_eip !45

block_0x80:                                       ; preds = %block_0x64
  %_new_load_298 = load i64, i64* %_address_in_parent_stack_bt_226._allin_new_bt_60, align 8
  store i64 %_new_load_298, i64* %XAX, align 8, !mcsema_real_eip !30
  %67 = inttoptr i64 %_new_load_298 to i8*, !mcsema_real_eip !31
  %_offset_above_rbp_301 = sub i64 %_new_load_298, %_local_end_to_int_
  %_pot_address_in_parent_stack_302 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_301
  %_cond1_303 = icmp ult i8* %_local_stack_end_ptr_, %67
  %_cond2_1_304 = icmp ugt i8* %67, %_parent_stack_end_ptr_
  %_cond2_2_305 = icmp ult i8* %67, %_parent_stack_start_ptr_
  %_cond2_306 = or i1 %_cond2_1_304, %_cond2_2_305
  %_cond4_307 = icmp ule i8* %_pot_address_in_parent_stack_302, %_parent_stack_end_ptr_
  %_cond1_n_cond2_308 = and i1 %_cond1_303, %_cond2_306
  %_cond1_n_cond2_cond3_309 = and i1 %_cond4_307, %_cond1_n_cond2_308
  %68 = select i1 %_cond1_n_cond2_cond3_309, i8* %_pot_address_in_parent_stack_302, i8* %67
  %_new_load_311 = load i8, i8* %68, align 1
  store i8 %_new_load_311, i8* %CL.46, align 1, !mcsema_real_eip !31
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -48
  %_ptr_to_int_312 = ptrtoint i8* %_new_gep_71 to i64
  %_offset_above_rbp_315 = sub i64 %_ptr_to_int_312, %_local_end_to_int_
  %_pot_address_in_parent_stack_316 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_315
  %_cond1_317 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_318 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_319 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_320 = or i1 %_cond2_1_318, %_cond2_2_319
  %_cond4_321 = icmp ule i8* %_pot_address_in_parent_stack_316, %_parent_stack_end_ptr_
  %_cond1_n_cond2_322 = and i1 %_cond1_317, %_cond2_320
  %_cond1_n_cond2_cond3_323 = and i1 %_cond1_n_cond2_322, %_cond4_321
  %_address_in_parent_stack_bt_325._allin_new_bt_72.v = select i1 %_cond1_n_cond2_cond3_323, i8* %_pot_address_in_parent_stack_316, i8* %_new_gep_71
  br label %block_0x8c, !mcsema_real_eip !32

block_0x8c:                                       ; preds = %block_0x80, %block_0x74
  %_address_in_parent_stack_bt_325._allin_new_bt_72.v.sink = phi i8* [ %_address_in_parent_stack_bt_325._allin_new_bt_72.v, %block_0x80 ], [ %_address_in_parent_stack_bt_282._allin_new_bt_66.v, %block_0x74 ]
  %_new_load_311.sink = phi i8 [ %_new_load_311, %block_0x80 ], [ 92, %block_0x74 ]
  %_address_in_parent_stack_bt_325._allin_new_bt_72 = bitcast i8* %_address_in_parent_stack_bt_325._allin_new_bt_72.v.sink to i64*
  %_new_load_326 = load i64, i64* %_address_in_parent_stack_bt_325._allin_new_bt_72, align 8
  store i64 %_new_load_326, i64* %XAX, align 8
  %69 = inttoptr i64 %_new_load_326 to i8*
  store i8 %_new_load_311.sink, i8* %69, align 1
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73, i64 -40
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %_ptr_to_int_327 = ptrtoint i8* %_new_gep_74 to i64
  %_offset_above_rbp_330 = sub i64 %_ptr_to_int_327, %_local_end_to_int_
  %_pot_address_in_parent_stack_331 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_330
  %_cond1_332 = icmp ugt i8* %_new_gep_74, %_local_stack_end_ptr_
  %_cond2_1_333 = icmp ugt i8* %_new_gep_74, %_parent_stack_end_ptr_
  %_cond2_2_334 = icmp ult i8* %_new_gep_74, %_parent_stack_start_ptr_
  %_cond2_335 = or i1 %_cond2_1_333, %_cond2_2_334
  %_cond4_336 = icmp ule i8* %_pot_address_in_parent_stack_331, %_parent_stack_end_ptr_
  %_cond1_n_cond2_337 = and i1 %_cond1_332, %_cond2_335
  %_cond1_n_cond2_cond3_338 = and i1 %_cond1_n_cond2_337, %_cond4_336
  %_address_in_parent_stack_bt_340 = bitcast i8* %_pot_address_in_parent_stack_331 to i64*
  %_address_in_parent_stack_bt_340._allin_new_bt_75 = select i1 %_cond1_n_cond2_cond3_338, i64* %_address_in_parent_stack_bt_340, i64* %_allin_new_bt_75
  %_new_load_341 = load i64, i64* %_address_in_parent_stack_bt_340._allin_new_bt_75, align 8
  %70 = add i64 %_new_load_341, 1, !mcsema_real_eip !33
  %71 = xor i64 %70, %_new_load_341, !mcsema_real_eip !33
  %72 = and i64 %71, 16, !mcsema_real_eip !33
  %73 = icmp ne i64 %72, 0, !mcsema_real_eip !33
  store i1 %73, i1* %AF, align 1, !mcsema_real_eip !33
  %74 = icmp slt i64 %70, 0
  store i1 %74, i1* %SF, align 1, !mcsema_real_eip !33
  %75 = icmp eq i64 %70, 0, !mcsema_real_eip !33
  store i1 %75, i1* %ZF, align 1, !mcsema_real_eip !33
  %76 = xor i64 %_new_load_341, -9223372036854775808, !mcsema_real_eip !33
  %77 = and i64 %71, %76, !mcsema_real_eip !33
  %78 = icmp slt i64 %77, 0
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !33
  %79 = trunc i64 %70 to i8, !mcsema_real_eip !33
  %80 = call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !33
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  store i1 %82, i1* %PF, align 1, !mcsema_real_eip !33
  %83 = icmp eq i64 %_new_load_341, -1
  store i1 %83, i1* %CF, align 1, !mcsema_real_eip !33
  store i64 %70, i64* %XAX, align 8, !mcsema_real_eip !33
  store i64 %70, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !34
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, i64 -48
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %_ptr_to_int_342 = ptrtoint i8* %_new_gep_80 to i64
  %_offset_above_rbp_345 = sub i64 %_ptr_to_int_342, %_local_end_to_int_
  %_pot_address_in_parent_stack_346 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_345
  %_cond1_347 = icmp ugt i8* %_new_gep_80, %_local_stack_end_ptr_
  %_cond2_1_348 = icmp ugt i8* %_new_gep_80, %_parent_stack_end_ptr_
  %_cond2_2_349 = icmp ult i8* %_new_gep_80, %_parent_stack_start_ptr_
  %_cond2_350 = or i1 %_cond2_1_348, %_cond2_2_349
  %_cond4_351 = icmp ule i8* %_pot_address_in_parent_stack_346, %_parent_stack_end_ptr_
  %_cond1_n_cond2_352 = and i1 %_cond1_347, %_cond2_350
  %_cond1_n_cond2_cond3_353 = and i1 %_cond1_n_cond2_352, %_cond4_351
  %_address_in_parent_stack_bt_355 = bitcast i8* %_pot_address_in_parent_stack_346 to i64*
  %84 = select i1 %_cond1_n_cond2_cond3_353, i64* %_address_in_parent_stack_bt_355, i64* %_allin_new_bt_81
  %_new_load_356 = load i64, i64* %84, align 8
  %85 = add i64 %_new_load_356, 1, !mcsema_real_eip !36
  %86 = xor i64 %85, %_new_load_356, !mcsema_real_eip !36
  %87 = and i64 %86, 16, !mcsema_real_eip !36
  %88 = icmp ne i64 %87, 0, !mcsema_real_eip !36
  store i1 %88, i1* %AF, align 1, !mcsema_real_eip !36
  %89 = icmp slt i64 %85, 0
  store i1 %89, i1* %SF, align 1, !mcsema_real_eip !36
  %90 = icmp eq i64 %85, 0, !mcsema_real_eip !36
  store i1 %90, i1* %ZF, align 1, !mcsema_real_eip !36
  %91 = xor i64 %_new_load_356, -9223372036854775808, !mcsema_real_eip !36
  %92 = and i64 %86, %91, !mcsema_real_eip !36
  %93 = icmp slt i64 %92, 0
  store i1 %93, i1* %OF, align 1, !mcsema_real_eip !36
  %94 = trunc i64 %85 to i8, !mcsema_real_eip !36
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !36
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  store i1 %97, i1* %PF, align 1, !mcsema_real_eip !36
  %98 = icmp eq i64 %_new_load_356, -1
  store i1 %98, i1* %CF, align 1, !mcsema_real_eip !36
  store i64 %85, i64* %XAX, align 8, !mcsema_real_eip !36
  store i64 %85, i64* %_allin_new_bt_81, align 8, !mcsema_real_eip !37
  br label %block_0x54, !mcsema_real_eip !38

block_0xa9:                                       ; preds = %block_0x54
  %_new_gep_86 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -32
  %_ptr_to_int_357 = ptrtoint i8* %_new_gep_86 to i64
  %_offset_above_rbp_360 = sub i64 %_ptr_to_int_357, %_local_end_to_int_
  %_pot_address_in_parent_stack_361 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_360
  %_cond1_362 = icmp ugt i8* %_new_gep_86, %_local_stack_end_ptr_
  %_cond2_1_363 = icmp ugt i8* %_new_gep_86, %_parent_stack_end_ptr_
  %_cond2_2_364 = icmp ult i8* %_new_gep_86, %_parent_stack_start_ptr_
  %_cond2_365 = or i1 %_cond2_1_363, %_cond2_2_364
  %_cond4_366 = icmp ule i8* %_pot_address_in_parent_stack_361, %_parent_stack_end_ptr_
  %_cond1_n_cond2_367 = and i1 %_cond1_362, %_cond2_365
  %_cond1_n_cond2_cond3_368 = and i1 %_cond1_n_cond2_367, %_cond4_366
  %_address_in_parent_stack_bt_370._allin_new_bt_87.v = select i1 %_cond1_n_cond2_cond3_368, i8* %_pot_address_in_parent_stack_361, i8* %_new_gep_86
  %_address_in_parent_stack_bt_370._allin_new_bt_87 = bitcast i8* %_address_in_parent_stack_bt_370._allin_new_bt_87.v to i64*
  %_new_load_371 = load i64, i64* %_address_in_parent_stack_bt_370._allin_new_bt_87, align 8
  store i64 %_new_load_371, i64* %XAX, align 8, !mcsema_real_eip !39
  br label %block_0xbe, !mcsema_real_eip !40

block_0xbe:                                       ; preds = %entry, %block_0xa9
  %_load_rbp_ptr_34.sink = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, %block_0xa9 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, %entry ]
  %.sink = phi i64 [ %_new_load_371, %block_0xa9 ], [ 0, %entry ]
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_34.sink, i64 -8
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  store i64 %.sink, i64* %_allin_new_bt_93, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_94, i64 -8
  %_ptr_to_int_372 = ptrtoint i8* %_new_gep_95 to i64
  %_offset_above_rbp_375 = sub i64 %_ptr_to_int_372, %_local_end_to_int_
  %_pot_address_in_parent_stack_376 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_375
  %_cond1_377 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_378 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_379 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_380 = or i1 %_cond2_1_378, %_cond2_2_379
  %_cond4_381 = icmp ule i8* %_pot_address_in_parent_stack_376, %_parent_stack_end_ptr_
  %_cond1_n_cond2_382 = and i1 %_cond1_377, %_cond2_380
  %_cond1_n_cond2_cond3_383 = and i1 %_cond1_n_cond2_382, %_cond4_381
  %_address_in_parent_stack_bt_385._allin_new_bt_96.v = select i1 %_cond1_n_cond2_cond3_383, i8* %_pot_address_in_parent_stack_376, i8* %_new_gep_95
  %_address_in_parent_stack_bt_385._allin_new_bt_96 = bitcast i8* %_address_in_parent_stack_bt_385._allin_new_bt_96.v to i64*
  %_new_load_386 = load i64, i64* %_address_in_parent_stack_bt_385._allin_new_bt_96, align 8
  store i64 %_new_load_386, i64* %XAX, align 8, !mcsema_real_eip !41
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.64 = load i64, i64* %XSP, align 8, !mcsema_real_eip !42
  %_new_gep_98 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 48
  %99 = add i64 %RSP_val.64, 48, !mcsema_real_eip !42
  %_trans_p2i_99 = ptrtoint i8* %_new_gep_98 to i64
  %_trans_p2i_100 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97 to i64
  %_trans_xor_101 = xor i64 %_trans_p2i_99, %_trans_p2i_100
  %100 = and i64 %_trans_xor_101, 16
  %101 = icmp eq i64 %100, 0
  store i1 %101, i1* %AF, align 1, !mcsema_real_eip !42
  %102 = icmp slt i64 %99, 0
  store i1 %102, i1* %SF, align 1, !mcsema_real_eip !42
  %_trans_icmp_eq_103 = icmp eq i8* %_new_gep_98, null
  store i1 %_trans_icmp_eq_103, i1* %ZF, align 1, !mcsema_real_eip !42
  %103 = xor i64 %_trans_p2i_100, -9223372036854775808, !mcsema_real_eip !42
  %104 = and i64 %_trans_xor_101, %103, !mcsema_real_eip !42
  %105 = icmp slt i64 %104, 0
  store i1 %105, i1* %OF, align 1, !mcsema_real_eip !42
  %_trans_trunc_110 = trunc i64 %_trans_p2i_99 to i8
  %106 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_110), !mcsema_real_eip !42
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  store i1 %108, i1* %PF, align 1, !mcsema_real_eip !42
  %_trans_icmp_ne_112 = icmp ne i64 %RSP_val.64, %_trans_p2i_99
  store i1 %_trans_icmp_ne_112, i1* %CF, align 1, !mcsema_real_eip !42
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_, align 8
  store i64 %99, i64* %XSP, align 8, !mcsema_real_eip !42
  %_offset_above_rbp_390 = sub i64 %_trans_p2i_99, %_local_end_to_int_
  %_pot_address_in_parent_stack_391 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_cond1_392 = icmp ugt i8* %_new_gep_98, %_local_stack_end_ptr_
  %_cond2_1_393 = icmp ugt i8* %_new_gep_98, %_parent_stack_end_ptr_
  %_cond2_2_394 = icmp ult i8* %_new_gep_98, %_parent_stack_start_ptr_
  %_cond2_395 = or i1 %_cond2_1_393, %_cond2_2_394
  %_cond4_396 = icmp ule i8* %_pot_address_in_parent_stack_391, %_parent_stack_end_ptr_
  %_cond1_n_cond2_397 = and i1 %_cond1_392, %_cond2_395
  %_cond1_n_cond2_cond3_398 = and i1 %_cond1_n_cond2_397, %_cond4_396
  %.v6 = select i1 %_cond1_n_cond2_cond3_398, i8* %_pot_address_in_parent_stack_391, i8* %_new_gep_98
  %109 = bitcast i8* %.v6 to i64*
  %_new_load_401 = load i64, i64* %109, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_401 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_401, i64* %XBP, align 8, !mcsema_real_eip !43
  %_new_gep_115 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 56
  %110 = add i64 %RSP_val.64, 56, !mcsema_real_eip !43
  store volatile i8* %_new_gep_115, i8** %_RSP_ptr_, align 8
  store i64 %110, i64* %XSP, align 8, !mcsema_real_eip !43
  %_new_gep_117 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 64
  %111 = add i64 %RSP_val.64, 64, !mcsema_real_eip !44
  %_ptr_to_int_402 = ptrtoint i8* %_new_gep_115 to i64
  %_offset_above_rbp_405 = sub i64 %_ptr_to_int_402, %_local_end_to_int_
  %_pot_address_in_parent_stack_406 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_cond1_407 = icmp ugt i8* %_new_gep_115, %_local_stack_end_ptr_
  %_cond2_1_408 = icmp ugt i8* %_new_gep_115, %_parent_stack_end_ptr_
  %_cond2_2_409 = icmp ult i8* %_new_gep_115, %_parent_stack_start_ptr_
  %_cond2_410 = or i1 %_cond2_1_408, %_cond2_2_409
  %_cond4_411 = icmp ule i8* %_pot_address_in_parent_stack_406, %_parent_stack_end_ptr_
  %_cond1_n_cond2_412 = and i1 %_cond1_407, %_cond2_410
  %_cond1_n_cond2_cond3_413 = and i1 %_cond1_n_cond2_412, %_cond4_411
  %_address_in_parent_stack_bt_415._allin_new_bt_118.v = select i1 %_cond1_n_cond2_cond3_413, i8* %_pot_address_in_parent_stack_406, i8* %_new_gep_115
  %_address_in_parent_stack_bt_415._allin_new_bt_118 = bitcast i8* %_address_in_parent_stack_bt_415._allin_new_bt_118.v to i64*
  %_new_load_416 = load i64, i64* %_address_in_parent_stack_bt_415._allin_new_bt_118, align 8
  store i64 %_new_load_416, i64* %XIP, align 8, !mcsema_real_eip !44
  store volatile i8* %_new_gep_117, i8** %_RSP_ptr_, align 8
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !44
  ret void, !mcsema_real_eip !44
}

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 16}
!7 = !{i64 21}
!8 = !{i64 25}
!9 = !{i64 29}
!10 = !{i64 33}
!11 = !{i64 38}
!12 = !{i64 42}
!13 = !{i64 47}
!14 = !{i64 53}
!15 = !{i64 55}
!16 = !{i64 59}
!17 = !{i64 63}
!18 = !{i64 67}
!19 = !{i64 71}
!20 = !{i64 75}
!21 = !{i64 79}
!22 = !{i64 84}
!23 = !{i64 88}
!24 = !{i64 91}
!25 = !{i64 94}
!26 = !{i64 100}
!27 = !{i64 104}
!28 = !{i64 107}
!29 = !{i64 110}
!30 = !{i64 128}
!31 = !{i64 132}
!32 = !{i64 140}
!33 = !{i64 144}
!34 = !{i64 148}
!35 = !{i64 152}
!36 = !{i64 156}
!37 = !{i64 160}
!38 = !{i64 164}
!39 = !{i64 169}
!40 = !{i64 177}
!41 = !{i64 190}
!42 = !{i64 194}
!43 = !{i64 198}
!44 = !{i64 199}
!45 = !{i64 123}
