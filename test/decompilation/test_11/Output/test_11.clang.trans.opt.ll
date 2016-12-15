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
  %RSI_val.32 = load i64, i64* %XSI, align 8, !mcsema_real_eip !21
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.34 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 -8
  %43 = add i64 %RSP_val.34, -8
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %43, i64* %XSP, align 8, !mcsema_real_eip !21
  %44 = call x86_64_sysvcc i64 @_memset(i64 %41, i64 %RSI_val.32, i64 %42)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_121 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_122 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_121, i64 8
  store i8* %_gep_fix_122, i8** %_RSP_ptr_, align 8
  store i64 %44, i64* %XAX, align 8, !mcsema_real_eip !21
  %CL.52 = bitcast i64* %XCX to i8*
  br label %block_0x54, !mcsema_real_eip !22

block_0xbe:                                       ; preds = %entry, %block_0xa9
  %_load_rbp_ptr_86.sink = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8614, %block_0xa9 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3411, %entry ]
  %.sink = phi i64 [ %89, %block_0xa9 ], [ 0, %entry ]
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_86.sink, i64 -8
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  store i64 %.sink, i64* %_allin_new_bt_97, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6117 = load i8*, i8** %12, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6117, i64 -8
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %45 = load i64, i64* %_allin_new_bt_63, align 8, !mcsema_real_eip !22
  store i64 %45, i64* %XAX, align 8, !mcsema_real_eip !22
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.36 = load i64, i64* %XSP, align 8, !mcsema_real_eip !23
  %_new_gep_65 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 48
  %46 = add i64 %RSP_val.36, 48, !mcsema_real_eip !23
  %_trans_p2i_66 = ptrtoint i8* %_new_gep_65 to i64
  %_trans_p2i_67 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64 to i64
  %_trans_xor_68 = xor i64 %_trans_p2i_66, %_trans_p2i_67
  %47 = and i64 %_trans_xor_68, 16
  %48 = icmp eq i64 %47, 0
  store i1 %48, i1* %AF, align 1, !mcsema_real_eip !23
  %49 = icmp slt i64 %46, 0
  store i1 %49, i1* %SF, align 1, !mcsema_real_eip !23
  %_trans_icmp_eq_70 = icmp eq i8* %_new_gep_65, null
  store i1 %_trans_icmp_eq_70, i1* %ZF, align 1, !mcsema_real_eip !23
  %50 = xor i64 %_trans_p2i_67, -9223372036854775808, !mcsema_real_eip !23
  %51 = and i64 %_trans_xor_68, %50, !mcsema_real_eip !23
  %52 = icmp slt i64 %51, 0
  store i1 %52, i1* %OF, align 1, !mcsema_real_eip !23
  %_trans_trunc_77 = trunc i64 %_trans_p2i_66 to i8
  %53 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_77), !mcsema_real_eip !23
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  store i1 %55, i1* %PF, align 1, !mcsema_real_eip !23
  %_trans_icmp_ne_79 = icmp ne i64 %_trans_p2i_66, %RSP_val.36
  store i1 %_trans_icmp_ne_79, i1* %CF, align 1, !mcsema_real_eip !23
  store volatile i8* %_new_gep_65, i8** %_RSP_ptr_, align 8
  store i64 %46, i64* %XSP, align 8, !mcsema_real_eip !23
  %_allin_new_bt_81 = bitcast i8* %_new_gep_65 to i64*
  %56 = load i64, i64* %_allin_new_bt_81, align 8, !mcsema_real_eip !24
  store volatile i64 %56, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %56, i64* %XBP, align 8, !mcsema_real_eip !24
  %_new_gep_82 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 56
  %57 = add i64 %RSP_val.36, 56, !mcsema_real_eip !24
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_, align 8
  store i64 %57, i64* %XSP, align 8, !mcsema_real_eip !24
  %_new_gep_84 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 64
  %58 = add i64 %RSP_val.36, 64, !mcsema_real_eip !25
  %_allin_new_bt_85 = bitcast i8* %_new_gep_82 to i64*
  %59 = load i64, i64* %_allin_new_bt_85, align 8, !mcsema_real_eip !25
  store i64 %59, i64* %XIP, align 8, !mcsema_real_eip !25
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_, align 8
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !25
  ret void, !mcsema_real_eip !25

block_0x54:                                       ; preds = %block_0x8c, %block_0x35
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8614 = load i8*, i8** %12, align 8
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8614, i64 -40
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %60 = load i64, i64* %_allin_new_bt_88, align 8, !mcsema_real_eip !26
  store i64 %60, i64* %XAX, align 8, !mcsema_real_eip !26
  %61 = inttoptr i64 %60 to i8*, !mcsema_real_eip !27
  %62 = load i8, i8* %61, align 1, !mcsema_real_eip !27
  %63 = sext i8 %62 to i64
  %64 = and i64 %63, 4294967295
  store i64 %64, i64* %XCX, align 8, !mcsema_real_eip !27
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !28
  %65 = call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !28
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  store i1 %67, i1* %PF, align 1, !mcsema_real_eip !28
  %68 = icmp eq i8 %62, 0
  store i1 %68, i1* %ZF, align 1, !mcsema_real_eip !28
  %69 = icmp slt i8 %62, 0
  store i1 %69, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !28
  br i1 %68, label %block_0xa9, label %block_0x64, !mcsema_real_eip !29

block_0x64:                                       ; preds = %block_0x54
  %70 = load i64, i64* %_allin_new_bt_88, align 8, !mcsema_real_eip !30
  store i64 %70, i64* %XAX, align 8, !mcsema_real_eip !30
  %71 = inttoptr i64 %70 to i8*, !mcsema_real_eip !31
  %72 = load i8, i8* %71, align 1, !mcsema_real_eip !31
  %73 = sext i8 %72 to i64
  %74 = and i64 %73, 4294967295
  store i64 %74, i64* %XCX, align 8, !mcsema_real_eip !31
  %75 = sext i8 %72 to i32
  %76 = add nsw i32 %75, -47
  %77 = xor i32 %76, %75, !mcsema_real_eip !32
  %78 = and i32 %77, 16, !mcsema_real_eip !32
  %79 = icmp ne i32 %78, 0, !mcsema_real_eip !32
  store i1 %79, i1* %AF, align 1, !mcsema_real_eip !32
  %80 = trunc i32 %76 to i8, !mcsema_real_eip !32
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !32
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  store i1 %83, i1* %PF, align 1, !mcsema_real_eip !32
  %84 = icmp eq i32 %76, 0, !mcsema_real_eip !32
  store i1 %84, i1* %ZF, align 1, !mcsema_real_eip !32
  %85 = icmp slt i8 %72, 47
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !32
  %86 = icmp ult i8 %72, 47
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !32
  %87 = and i32 %77, %75, !mcsema_real_eip !32
  %88 = icmp slt i32 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !32
  br i1 %84, label %block_0x8c, label %block_0x80, !mcsema_real_eip !33

block_0xa9:                                       ; preds = %block_0x54
  %_new_gep_93 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8614, i64 -32
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %89 = load i64, i64* %_allin_new_bt_94, align 8, !mcsema_real_eip !34
  store i64 %89, i64* %XAX, align 8, !mcsema_real_eip !34
  br label %block_0xbe, !mcsema_real_eip !35

block_0x80:                                       ; preds = %block_0x64
  %90 = load i64, i64* %_allin_new_bt_88, align 8, !mcsema_real_eip !36
  store i64 %90, i64* %XAX, align 8, !mcsema_real_eip !36
  %91 = inttoptr i64 %90 to i8*, !mcsema_real_eip !37
  %92 = load i8, i8* %91, align 1, !mcsema_real_eip !37
  store i8 %92, i8* %CL.52, align 1, !mcsema_real_eip !37
  br label %block_0x8c, !mcsema_real_eip !38

block_0x8c:                                       ; preds = %block_0x64, %block_0x80
  %.sink1 = phi i8 [ %92, %block_0x80 ], [ 92, %block_0x64 ]
  %_new_gep_105 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8614, i64 -48
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %93 = load i64, i64* %_allin_new_bt_106, align 8
  store i64 %93, i64* %XAX, align 8
  %94 = inttoptr i64 %93 to i8*
  store i8 %.sink1, i8* %94, align 1
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10715 = load i8*, i8** %12, align 8
  %_new_gep_108 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10715, i64 -40
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %95 = load i64, i64* %_allin_new_bt_109, align 8, !mcsema_real_eip !39
  %96 = add i64 %95, 1, !mcsema_real_eip !40
  %97 = xor i64 %96, %95, !mcsema_real_eip !40
  %98 = and i64 %97, 16, !mcsema_real_eip !40
  %99 = icmp ne i64 %98, 0, !mcsema_real_eip !40
  store i1 %99, i1* %AF, align 1, !mcsema_real_eip !40
  %100 = icmp slt i64 %96, 0
  store i1 %100, i1* %SF, align 1, !mcsema_real_eip !40
  %101 = icmp eq i64 %96, 0, !mcsema_real_eip !40
  store i1 %101, i1* %ZF, align 1, !mcsema_real_eip !40
  %102 = xor i64 %95, -9223372036854775808, !mcsema_real_eip !40
  %103 = and i64 %97, %102, !mcsema_real_eip !40
  %104 = icmp slt i64 %103, 0
  store i1 %104, i1* %OF, align 1, !mcsema_real_eip !40
  %105 = trunc i64 %96 to i8, !mcsema_real_eip !40
  %106 = call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !40
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  store i1 %108, i1* %PF, align 1, !mcsema_real_eip !40
  %109 = icmp eq i64 %95, -1
  store i1 %109, i1* %CF, align 1, !mcsema_real_eip !40
  store i64 %96, i64* %XAX, align 8, !mcsema_real_eip !40
  store i64 %96, i64* %_allin_new_bt_109, align 8, !mcsema_real_eip !41
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11316 = load i8*, i8** %12, align 8
  %_new_gep_114 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11316, i64 -48
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %110 = load i64, i64* %_allin_new_bt_115, align 8, !mcsema_real_eip !42
  %111 = add i64 %110, 1, !mcsema_real_eip !43
  %112 = xor i64 %111, %110, !mcsema_real_eip !43
  %113 = and i64 %112, 16, !mcsema_real_eip !43
  %114 = icmp ne i64 %113, 0, !mcsema_real_eip !43
  store i1 %114, i1* %AF, align 1, !mcsema_real_eip !43
  %115 = icmp slt i64 %111, 0
  store i1 %115, i1* %SF, align 1, !mcsema_real_eip !43
  %116 = icmp eq i64 %111, 0, !mcsema_real_eip !43
  store i1 %116, i1* %ZF, align 1, !mcsema_real_eip !43
  %117 = xor i64 %110, -9223372036854775808, !mcsema_real_eip !43
  %118 = and i64 %112, %117, !mcsema_real_eip !43
  %119 = icmp slt i64 %118, 0
  store i1 %119, i1* %OF, align 1, !mcsema_real_eip !43
  %120 = trunc i64 %111 to i8, !mcsema_real_eip !43
  %121 = call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !43
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  store i1 %123, i1* %PF, align 1, !mcsema_real_eip !43
  %124 = icmp eq i64 %110, -1
  store i1 %124, i1* %CF, align 1, !mcsema_real_eip !43
  store i64 %111, i64* %XAX, align 8, !mcsema_real_eip !43
  store i64 %111, i64* %_allin_new_bt_115, align 8, !mcsema_real_eip !44
  br label %block_0x54, !mcsema_real_eip !45
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
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
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
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !5
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %11 = add i64 %RSP_val.1, -64
  %_allin_new_bt_21 = bitcast [64 x i8]* %_local_stack_start_ptr_1 to i64*
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
  %.v2 = select i1 %_cond1_n_cond2_cond3_149, i8* %_pot_address_in_parent_stack_142, i8* %_new_gep_35
  %29 = bitcast i8* %.v2 to i64*
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
  %.v3 = select i1 %_cond1_n_cond2_cond3_179, i8* %_pot_address_in_parent_stack_172, i8* %_new_gep_44
  %36 = bitcast i8* %.v3 to i64*
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
  %.v4 = select i1 %_cond1_n_cond2_cond3_209, i8* %_pot_address_in_parent_stack_202, i8* %_new_gep_53
  %37 = bitcast i8* %.v4 to i64*
  %_new_load_212 = load i64, i64* %37, align 8
  store i64 %_new_load_212, i64* %XDX, align 8, !mcsema_real_eip !20
  %RSI_val.32 = load i64, i64* %XSI, align 8, !mcsema_real_eip !21
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.34 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 -8
  %38 = add i64 %RSP_val.34, -8
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %38, i64* %XSP, align 8, !mcsema_real_eip !21
  %39 = call x86_64_sysvcc i64 @_memset(i64 %_new_load_197, i64 %RSI_val.32, i64 %_new_load_212)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_121 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_122 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_121, i64 8
  store i8* %_gep_fix_122, i8** %_RSP_ptr_, align 8
  store i64 %39, i64* %XAX, align 8, !mcsema_real_eip !21
  %CL.52 = bitcast i64* %XCX to i8*
  br label %block_0x54, !mcsema_real_eip !22

block_0xbe:                                       ; preds = %entry, %block_0xa9
  %_load_rbp_ptr_86.sink = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86, %block_0xa9 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, %entry ]
  %_new_load_328.sink = phi i64 [ %_new_load_328, %block_0xa9 ], [ 0, %entry ]
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_86.sink, i64 -8
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  store i64 %_new_load_328.sink, i64* %_allin_new_bt_97, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -8
  %_ptr_to_int_213 = ptrtoint i8* %_new_gep_62 to i64
  %_offset_above_rbp_216 = sub i64 %_ptr_to_int_213, %_local_end_to_int_
  %_pot_address_in_parent_stack_217 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_cond1_218 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_219 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_220 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_221 = or i1 %_cond2_1_219, %_cond2_2_220
  %_cond4_222 = icmp ule i8* %_pot_address_in_parent_stack_217, %_parent_stack_end_ptr_
  %_cond1_n_cond2_223 = and i1 %_cond1_218, %_cond2_221
  %_cond1_n_cond2_cond3_224 = and i1 %_cond1_n_cond2_223, %_cond4_222
  %_address_in_parent_stack_bt_226._allin_new_bt_63.v = select i1 %_cond1_n_cond2_cond3_224, i8* %_pot_address_in_parent_stack_217, i8* %_new_gep_62
  %_address_in_parent_stack_bt_226._allin_new_bt_63 = bitcast i8* %_address_in_parent_stack_bt_226._allin_new_bt_63.v to i64*
  %_new_load_227 = load i64, i64* %_address_in_parent_stack_bt_226._allin_new_bt_63, align 8
  store i64 %_new_load_227, i64* %XAX, align 8, !mcsema_real_eip !22
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.36 = load i64, i64* %XSP, align 8, !mcsema_real_eip !23
  %_new_gep_65 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 48
  %40 = add i64 %RSP_val.36, 48, !mcsema_real_eip !23
  %_trans_p2i_66 = ptrtoint i8* %_new_gep_65 to i64
  %_trans_p2i_67 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64 to i64
  %_trans_xor_68 = xor i64 %_trans_p2i_66, %_trans_p2i_67
  %41 = and i64 %_trans_xor_68, 16
  %42 = icmp eq i64 %41, 0
  store i1 %42, i1* %AF, align 1, !mcsema_real_eip !23
  %43 = icmp slt i64 %40, 0
  store i1 %43, i1* %SF, align 1, !mcsema_real_eip !23
  %_trans_icmp_eq_70 = icmp eq i8* %_new_gep_65, null
  store i1 %_trans_icmp_eq_70, i1* %ZF, align 1, !mcsema_real_eip !23
  %44 = xor i64 %_trans_p2i_67, -9223372036854775808, !mcsema_real_eip !23
  %45 = and i64 %_trans_xor_68, %44, !mcsema_real_eip !23
  %46 = icmp slt i64 %45, 0
  store i1 %46, i1* %OF, align 1, !mcsema_real_eip !23
  %_trans_trunc_77 = trunc i64 %_trans_p2i_66 to i8
  %47 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_77), !mcsema_real_eip !23
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  store i1 %49, i1* %PF, align 1, !mcsema_real_eip !23
  %_trans_icmp_ne_79 = icmp ne i64 %_trans_p2i_66, %RSP_val.36
  store i1 %_trans_icmp_ne_79, i1* %CF, align 1, !mcsema_real_eip !23
  store volatile i8* %_new_gep_65, i8** %_RSP_ptr_, align 8
  store i64 %40, i64* %XSP, align 8, !mcsema_real_eip !23
  %_offset_above_rbp_231 = sub i64 %_trans_p2i_66, %_local_end_to_int_
  %_pot_address_in_parent_stack_232 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_231
  %_cond1_233 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_234 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_235 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_236 = or i1 %_cond2_1_234, %_cond2_2_235
  %_cond4_237 = icmp ule i8* %_pot_address_in_parent_stack_232, %_parent_stack_end_ptr_
  %_cond1_n_cond2_238 = and i1 %_cond1_233, %_cond2_236
  %_cond1_n_cond2_cond3_239 = and i1 %_cond1_n_cond2_238, %_cond4_237
  %.v5 = select i1 %_cond1_n_cond2_cond3_239, i8* %_pot_address_in_parent_stack_232, i8* %_new_gep_65
  %50 = bitcast i8* %.v5 to i64*
  %_new_load_242 = load i64, i64* %50, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_242 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_242, i64* %XBP, align 8, !mcsema_real_eip !24
  %_new_gep_82 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 56
  %51 = add i64 %RSP_val.36, 56, !mcsema_real_eip !24
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_, align 8
  store i64 %51, i64* %XSP, align 8, !mcsema_real_eip !24
  %_new_gep_84 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_64, i64 64
  %52 = add i64 %RSP_val.36, 64, !mcsema_real_eip !25
  %_ptr_to_int_243 = ptrtoint i8* %_new_gep_82 to i64
  %_offset_above_rbp_246 = sub i64 %_ptr_to_int_243, %_local_end_to_int_
  %_pot_address_in_parent_stack_247 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_246
  %_cond1_248 = icmp ugt i8* %_new_gep_82, %_local_stack_end_ptr_
  %_cond2_1_249 = icmp ugt i8* %_new_gep_82, %_parent_stack_end_ptr_
  %_cond2_2_250 = icmp ult i8* %_new_gep_82, %_parent_stack_start_ptr_
  %_cond2_251 = or i1 %_cond2_1_249, %_cond2_2_250
  %_cond4_252 = icmp ule i8* %_pot_address_in_parent_stack_247, %_parent_stack_end_ptr_
  %_cond1_n_cond2_253 = and i1 %_cond1_248, %_cond2_251
  %_cond1_n_cond2_cond3_254 = and i1 %_cond1_n_cond2_253, %_cond4_252
  %_address_in_parent_stack_bt_256._allin_new_bt_85.v = select i1 %_cond1_n_cond2_cond3_254, i8* %_pot_address_in_parent_stack_247, i8* %_new_gep_82
  %_address_in_parent_stack_bt_256._allin_new_bt_85 = bitcast i8* %_address_in_parent_stack_bt_256._allin_new_bt_85.v to i64*
  %_new_load_257 = load i64, i64* %_address_in_parent_stack_bt_256._allin_new_bt_85, align 8
  store i64 %_new_load_257, i64* %XIP, align 8, !mcsema_real_eip !25
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_, align 8
  store i64 %52, i64* %XSP, align 8, !mcsema_real_eip !25
  ret void, !mcsema_real_eip !25

block_0x54:                                       ; preds = %block_0x8c, %block_0x35
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86, i64 -40
  %_ptr_to_int_258 = ptrtoint i8* %_new_gep_87 to i64
  %_offset_above_rbp_261 = sub i64 %_ptr_to_int_258, %_local_end_to_int_
  %_pot_address_in_parent_stack_262 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_261
  %_cond1_263 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_264 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_265 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_266 = or i1 %_cond2_1_264, %_cond2_2_265
  %_cond4_267 = icmp ule i8* %_pot_address_in_parent_stack_262, %_parent_stack_end_ptr_
  %_cond1_n_cond2_268 = and i1 %_cond1_263, %_cond2_266
  %_cond1_n_cond2_cond3_269 = and i1 %_cond1_n_cond2_268, %_cond4_267
  %_address_in_parent_stack_bt_271._allin_new_bt_88.v = select i1 %_cond1_n_cond2_cond3_269, i8* %_pot_address_in_parent_stack_262, i8* %_new_gep_87
  %_address_in_parent_stack_bt_271._allin_new_bt_88 = bitcast i8* %_address_in_parent_stack_bt_271._allin_new_bt_88.v to i64*
  %_new_load_272 = load i64, i64* %_address_in_parent_stack_bt_271._allin_new_bt_88, align 8
  store i64 %_new_load_272, i64* %XAX, align 8, !mcsema_real_eip !26
  %53 = inttoptr i64 %_new_load_272 to i8*, !mcsema_real_eip !27
  %_offset_above_rbp_275 = sub i64 %_new_load_272, %_local_end_to_int_
  %_pot_address_in_parent_stack_276 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_275
  %_cond1_277 = icmp ugt i8* %53, %_local_stack_end_ptr_
  %_cond2_1_278 = icmp ugt i8* %53, %_parent_stack_end_ptr_
  %_cond2_2_279 = icmp ult i8* %53, %_parent_stack_start_ptr_
  %_cond2_280 = or i1 %_cond2_1_278, %_cond2_2_279
  %_cond4_281 = icmp ule i8* %_pot_address_in_parent_stack_276, %_parent_stack_end_ptr_
  %_cond1_n_cond2_282 = and i1 %_cond1_277, %_cond2_280
  %_cond1_n_cond2_cond3_283 = and i1 %_cond4_281, %_cond1_n_cond2_282
  %54 = select i1 %_cond1_n_cond2_cond3_283, i8* %_pot_address_in_parent_stack_276, i8* %53
  %_new_load_285 = load i8, i8* %54, align 1
  %55 = sext i8 %_new_load_285 to i64
  %56 = and i64 %55, 4294967295
  store i64 %56, i64* %XCX, align 8, !mcsema_real_eip !27
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !28
  %57 = call i8 @llvm.ctpop.i8(i8 %_new_load_285), !mcsema_real_eip !28
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  store i1 %59, i1* %PF, align 1, !mcsema_real_eip !28
  %60 = icmp eq i8 %_new_load_285, 0
  store i1 %60, i1* %ZF, align 1, !mcsema_real_eip !28
  %61 = icmp slt i8 %_new_load_285, 0
  store i1 %61, i1* %SF, align 1, !mcsema_real_eip !28
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !28
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !28
  br i1 %60, label %block_0xa9, label %block_0x64, !mcsema_real_eip !29

block_0x64:                                       ; preds = %block_0x54
  %_new_load_300 = load i64, i64* %_address_in_parent_stack_bt_271._allin_new_bt_88, align 8
  store i64 %_new_load_300, i64* %XAX, align 8, !mcsema_real_eip !30
  %62 = inttoptr i64 %_new_load_300 to i8*, !mcsema_real_eip !31
  %_offset_above_rbp_303 = sub i64 %_new_load_300, %_local_end_to_int_
  %_pot_address_in_parent_stack_304 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_303
  %_cond1_305 = icmp ugt i8* %62, %_local_stack_end_ptr_
  %_cond2_1_306 = icmp ugt i8* %62, %_parent_stack_end_ptr_
  %_cond2_2_307 = icmp ult i8* %62, %_parent_stack_start_ptr_
  %_cond2_308 = or i1 %_cond2_1_306, %_cond2_2_307
  %_cond4_309 = icmp ule i8* %_pot_address_in_parent_stack_304, %_parent_stack_end_ptr_
  %_cond1_n_cond2_310 = and i1 %_cond1_305, %_cond2_308
  %_cond1_n_cond2_cond3_311 = and i1 %_cond4_309, %_cond1_n_cond2_310
  %63 = select i1 %_cond1_n_cond2_cond3_311, i8* %_pot_address_in_parent_stack_304, i8* %62
  %_new_load_313 = load i8, i8* %63, align 1
  %64 = sext i8 %_new_load_313 to i64
  %65 = and i64 %64, 4294967295
  store i64 %65, i64* %XCX, align 8, !mcsema_real_eip !31
  %66 = sext i8 %_new_load_313 to i32
  %67 = add nsw i32 %66, -47
  %68 = xor i32 %67, %66, !mcsema_real_eip !32
  %69 = and i32 %68, 16, !mcsema_real_eip !32
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !32
  store i1 %70, i1* %AF, align 1, !mcsema_real_eip !32
  %71 = trunc i32 %67 to i8, !mcsema_real_eip !32
  %72 = call i8 @llvm.ctpop.i8(i8 %71), !mcsema_real_eip !32
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  store i1 %74, i1* %PF, align 1, !mcsema_real_eip !32
  %75 = icmp eq i32 %67, 0, !mcsema_real_eip !32
  store i1 %75, i1* %ZF, align 1, !mcsema_real_eip !32
  %76 = icmp slt i8 %_new_load_313, 47
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !32
  %77 = icmp ult i8 %_new_load_313, 47
  store i1 %77, i1* %CF, align 1, !mcsema_real_eip !32
  %78 = and i32 %68, %66, !mcsema_real_eip !32
  %79 = icmp slt i32 %78, 0
  store i1 %79, i1* %OF, align 1, !mcsema_real_eip !32
  br i1 %75, label %block_0x74, label %block_0x80, !mcsema_real_eip !33

block_0xa9:                                       ; preds = %block_0x54
  %_new_gep_93 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86, i64 -32
  %_ptr_to_int_314 = ptrtoint i8* %_new_gep_93 to i64
  %_offset_above_rbp_317 = sub i64 %_ptr_to_int_314, %_local_end_to_int_
  %_pot_address_in_parent_stack_318 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_317
  %_cond1_319 = icmp ugt i8* %_new_gep_93, %_local_stack_end_ptr_
  %_cond2_1_320 = icmp ugt i8* %_new_gep_93, %_parent_stack_end_ptr_
  %_cond2_2_321 = icmp ult i8* %_new_gep_93, %_parent_stack_start_ptr_
  %_cond2_322 = or i1 %_cond2_1_320, %_cond2_2_321
  %_cond4_323 = icmp ule i8* %_pot_address_in_parent_stack_318, %_parent_stack_end_ptr_
  %_cond1_n_cond2_324 = and i1 %_cond1_319, %_cond2_322
  %_cond1_n_cond2_cond3_325 = and i1 %_cond1_n_cond2_324, %_cond4_323
  %_address_in_parent_stack_bt_327._allin_new_bt_94.v = select i1 %_cond1_n_cond2_cond3_325, i8* %_pot_address_in_parent_stack_318, i8* %_new_gep_93
  %_address_in_parent_stack_bt_327._allin_new_bt_94 = bitcast i8* %_address_in_parent_stack_bt_327._allin_new_bt_94.v to i64*
  %_new_load_328 = load i64, i64* %_address_in_parent_stack_bt_327._allin_new_bt_94, align 8
  store i64 %_new_load_328, i64* %XAX, align 8, !mcsema_real_eip !34
  br label %block_0xbe, !mcsema_real_eip !35

block_0x74:                                       ; preds = %block_0x64
  %_new_gep_99 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86, i64 -48
  %_ptr_to_int_329 = ptrtoint i8* %_new_gep_99 to i64
  %_offset_above_rbp_332 = sub i64 %_ptr_to_int_329, %_local_end_to_int_
  %_pot_address_in_parent_stack_333 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_332
  %_cond1_334 = icmp ugt i8* %_new_gep_99, %_local_stack_end_ptr_
  %_cond2_1_335 = icmp ugt i8* %_new_gep_99, %_parent_stack_end_ptr_
  %_cond2_2_336 = icmp ult i8* %_new_gep_99, %_parent_stack_start_ptr_
  %_cond2_337 = or i1 %_cond2_1_335, %_cond2_2_336
  %_cond4_338 = icmp ule i8* %_pot_address_in_parent_stack_333, %_parent_stack_end_ptr_
  %_cond1_n_cond2_339 = and i1 %_cond1_334, %_cond2_337
  %_cond1_n_cond2_cond3_340 = and i1 %_cond1_n_cond2_339, %_cond4_338
  %_address_in_parent_stack_bt_342._allin_new_bt_100.v = select i1 %_cond1_n_cond2_cond3_340, i8* %_pot_address_in_parent_stack_333, i8* %_new_gep_99
  br label %block_0x8c, !mcsema_real_eip !46

block_0x80:                                       ; preds = %block_0x64
  %_new_load_358 = load i64, i64* %_address_in_parent_stack_bt_271._allin_new_bt_88, align 8
  store i64 %_new_load_358, i64* %XAX, align 8, !mcsema_real_eip !36
  %80 = inttoptr i64 %_new_load_358 to i8*, !mcsema_real_eip !37
  %_offset_above_rbp_361 = sub i64 %_new_load_358, %_local_end_to_int_
  %_pot_address_in_parent_stack_362 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_361
  %_cond1_363 = icmp ugt i8* %80, %_local_stack_end_ptr_
  %_cond2_1_364 = icmp ugt i8* %80, %_parent_stack_end_ptr_
  %_cond2_2_365 = icmp ult i8* %80, %_parent_stack_start_ptr_
  %_cond2_366 = or i1 %_cond2_1_364, %_cond2_2_365
  %_cond4_367 = icmp ule i8* %_pot_address_in_parent_stack_362, %_parent_stack_end_ptr_
  %_cond1_n_cond2_368 = and i1 %_cond1_363, %_cond2_366
  %_cond1_n_cond2_cond3_369 = and i1 %_cond4_367, %_cond1_n_cond2_368
  %81 = select i1 %_cond1_n_cond2_cond3_369, i8* %_pot_address_in_parent_stack_362, i8* %80
  %_new_load_371 = load i8, i8* %81, align 1
  store i8 %_new_load_371, i8* %CL.52, align 1, !mcsema_real_eip !37
  %_new_gep_105 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86, i64 -48
  %_ptr_to_int_372 = ptrtoint i8* %_new_gep_105 to i64
  %_offset_above_rbp_375 = sub i64 %_ptr_to_int_372, %_local_end_to_int_
  %_pot_address_in_parent_stack_376 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_375
  %_cond1_377 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_378 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_379 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_380 = or i1 %_cond2_1_378, %_cond2_2_379
  %_cond4_381 = icmp ule i8* %_pot_address_in_parent_stack_376, %_parent_stack_end_ptr_
  %_cond1_n_cond2_382 = and i1 %_cond1_377, %_cond2_380
  %_cond1_n_cond2_cond3_383 = and i1 %_cond1_n_cond2_382, %_cond4_381
  %_address_in_parent_stack_bt_385._allin_new_bt_106.v = select i1 %_cond1_n_cond2_cond3_383, i8* %_pot_address_in_parent_stack_376, i8* %_new_gep_105
  br label %block_0x8c, !mcsema_real_eip !38

block_0x8c:                                       ; preds = %block_0x80, %block_0x74
  %_address_in_parent_stack_bt_385._allin_new_bt_106.v.sink = phi i8* [ %_address_in_parent_stack_bt_385._allin_new_bt_106.v, %block_0x80 ], [ %_address_in_parent_stack_bt_342._allin_new_bt_100.v, %block_0x74 ]
  %_new_load_371.sink = phi i8 [ %_new_load_371, %block_0x80 ], [ 92, %block_0x74 ]
  %_address_in_parent_stack_bt_385._allin_new_bt_106 = bitcast i8* %_address_in_parent_stack_bt_385._allin_new_bt_106.v.sink to i64*
  %_new_load_386 = load i64, i64* %_address_in_parent_stack_bt_385._allin_new_bt_106, align 8
  store i64 %_new_load_386, i64* %XAX, align 8
  %82 = inttoptr i64 %_new_load_386 to i8*
  store i8 %_new_load_371.sink, i8* %82, align 1
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_108 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_107, i64 -40
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %_ptr_to_int_387 = ptrtoint i8* %_new_gep_108 to i64
  %_offset_above_rbp_390 = sub i64 %_ptr_to_int_387, %_local_end_to_int_
  %_pot_address_in_parent_stack_391 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_cond1_392 = icmp ugt i8* %_new_gep_108, %_local_stack_end_ptr_
  %_cond2_1_393 = icmp ugt i8* %_new_gep_108, %_parent_stack_end_ptr_
  %_cond2_2_394 = icmp ult i8* %_new_gep_108, %_parent_stack_start_ptr_
  %_cond2_395 = or i1 %_cond2_1_393, %_cond2_2_394
  %_cond4_396 = icmp ule i8* %_pot_address_in_parent_stack_391, %_parent_stack_end_ptr_
  %_cond1_n_cond2_397 = and i1 %_cond1_392, %_cond2_395
  %_cond1_n_cond2_cond3_398 = and i1 %_cond1_n_cond2_397, %_cond4_396
  %_address_in_parent_stack_bt_400 = bitcast i8* %_pot_address_in_parent_stack_391 to i64*
  %_address_in_parent_stack_bt_400._allin_new_bt_109 = select i1 %_cond1_n_cond2_cond3_398, i64* %_address_in_parent_stack_bt_400, i64* %_allin_new_bt_109
  %_new_load_401 = load i64, i64* %_address_in_parent_stack_bt_400._allin_new_bt_109, align 8
  %83 = add i64 %_new_load_401, 1, !mcsema_real_eip !40
  %84 = xor i64 %83, %_new_load_401, !mcsema_real_eip !40
  %85 = and i64 %84, 16, !mcsema_real_eip !40
  %86 = icmp ne i64 %85, 0, !mcsema_real_eip !40
  store i1 %86, i1* %AF, align 1, !mcsema_real_eip !40
  %87 = icmp slt i64 %83, 0
  store i1 %87, i1* %SF, align 1, !mcsema_real_eip !40
  %88 = icmp eq i64 %83, 0, !mcsema_real_eip !40
  store i1 %88, i1* %ZF, align 1, !mcsema_real_eip !40
  %89 = xor i64 %_new_load_401, -9223372036854775808, !mcsema_real_eip !40
  %90 = and i64 %84, %89, !mcsema_real_eip !40
  %91 = icmp slt i64 %90, 0
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !40
  %92 = trunc i64 %83 to i8, !mcsema_real_eip !40
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !40
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !40
  %96 = icmp eq i64 %_new_load_401, -1
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !40
  store i64 %83, i64* %XAX, align 8, !mcsema_real_eip !40
  store i64 %83, i64* %_allin_new_bt_109, align 8, !mcsema_real_eip !41
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_114 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_113, i64 -48
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %_ptr_to_int_402 = ptrtoint i8* %_new_gep_114 to i64
  %_offset_above_rbp_405 = sub i64 %_ptr_to_int_402, %_local_end_to_int_
  %_pot_address_in_parent_stack_406 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_cond1_407 = icmp ugt i8* %_new_gep_114, %_local_stack_end_ptr_
  %_cond2_1_408 = icmp ugt i8* %_new_gep_114, %_parent_stack_end_ptr_
  %_cond2_2_409 = icmp ult i8* %_new_gep_114, %_parent_stack_start_ptr_
  %_cond2_410 = or i1 %_cond2_1_408, %_cond2_2_409
  %_cond4_411 = icmp ule i8* %_pot_address_in_parent_stack_406, %_parent_stack_end_ptr_
  %_cond1_n_cond2_412 = and i1 %_cond1_407, %_cond2_410
  %_cond1_n_cond2_cond3_413 = and i1 %_cond1_n_cond2_412, %_cond4_411
  %_address_in_parent_stack_bt_415 = bitcast i8* %_pot_address_in_parent_stack_406 to i64*
  %97 = select i1 %_cond1_n_cond2_cond3_413, i64* %_address_in_parent_stack_bt_415, i64* %_allin_new_bt_115
  %_new_load_416 = load i64, i64* %97, align 8
  %98 = add i64 %_new_load_416, 1, !mcsema_real_eip !43
  %99 = xor i64 %98, %_new_load_416, !mcsema_real_eip !43
  %100 = and i64 %99, 16, !mcsema_real_eip !43
  %101 = icmp ne i64 %100, 0, !mcsema_real_eip !43
  store i1 %101, i1* %AF, align 1, !mcsema_real_eip !43
  %102 = icmp slt i64 %98, 0
  store i1 %102, i1* %SF, align 1, !mcsema_real_eip !43
  %103 = icmp eq i64 %98, 0, !mcsema_real_eip !43
  store i1 %103, i1* %ZF, align 1, !mcsema_real_eip !43
  %104 = xor i64 %_new_load_416, -9223372036854775808, !mcsema_real_eip !43
  %105 = and i64 %99, %104, !mcsema_real_eip !43
  %106 = icmp slt i64 %105, 0
  store i1 %106, i1* %OF, align 1, !mcsema_real_eip !43
  %107 = trunc i64 %98 to i8, !mcsema_real_eip !43
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !43
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  store i1 %110, i1* %PF, align 1, !mcsema_real_eip !43
  %111 = icmp eq i64 %_new_load_416, -1
  store i1 %111, i1* %CF, align 1, !mcsema_real_eip !43
  store i64 %98, i64* %XAX, align 8, !mcsema_real_eip !43
  store i64 %98, i64* %_allin_new_bt_115, align 8, !mcsema_real_eip !44
  br label %block_0x54, !mcsema_real_eip !45
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
!22 = !{i64 190}
!23 = !{i64 194}
!24 = !{i64 198}
!25 = !{i64 199}
!26 = !{i64 84}
!27 = !{i64 88}
!28 = !{i64 91}
!29 = !{i64 94}
!30 = !{i64 100}
!31 = !{i64 104}
!32 = !{i64 107}
!33 = !{i64 110}
!34 = !{i64 169}
!35 = !{i64 177}
!36 = !{i64 128}
!37 = !{i64 132}
!38 = !{i64 116}
!39 = !{i64 140}
!40 = !{i64 144}
!41 = !{i64 148}
!42 = !{i64 152}
!43 = !{i64 156}
!44 = !{i64 160}
!45 = !{i64 164}
!46 = !{i64 123}
