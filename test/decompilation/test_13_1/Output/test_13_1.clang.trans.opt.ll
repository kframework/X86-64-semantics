; ModuleID = 'Output/test_13_1.clang.trans.opt.bc'
source_filename = "Output/test_13_1.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_10;"
module asm "  .globl doWork;"
module asm "  .type doWork,@function"
module asm "doWork:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_10(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doWork,0b-doWork;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_10(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %RSP_val.6 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.6, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.6, -24
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
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !4
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 2, i32* %13, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %14 = add i64 %RSP_val.6, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !6
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !6
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195 = load i8*, i8** %12, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195, i64 -4
  %15 = bitcast i8* %_new_gep_20 to i32*
  %16 = load i32, i32* %15, align 4, !mcsema_real_eip !7
  %17 = zext i32 %16 to i64, !mcsema_real_eip !7
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !7
  %RSP_val.12 = load i64, i64* %XSP, align 8, !mcsema_real_eip !8
  %_new_gep_23 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %18 = add i64 %RSP_val.12, 16, !mcsema_real_eip !8
  %_trans_p2i_24 = ptrtoint i8* %_new_gep_23 to i64
  %_trans_p2i_25 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_26 = xor i64 %_trans_p2i_24, %_trans_p2i_25
  %19 = and i64 %_trans_xor_26, 16
  %20 = icmp eq i64 %19, 0
  store i1 %20, i1* %AF, align 1, !mcsema_real_eip !8
  %21 = icmp slt i64 %18, 0
  store i1 %21, i1* %SF, align 1, !mcsema_real_eip !8
  %_trans_icmp_eq_28 = icmp eq i8* %_new_gep_23, null
  store i1 %_trans_icmp_eq_28, i1* %ZF, align 1, !mcsema_real_eip !8
  %22 = xor i64 %_trans_p2i_25, -9223372036854775808, !mcsema_real_eip !8
  %23 = and i64 %22, %_trans_xor_26, !mcsema_real_eip !8
  %24 = icmp slt i64 %23, 0
  store i1 %24, i1* %OF, align 1, !mcsema_real_eip !8
  %_trans_trunc_35 = trunc i64 %_trans_p2i_24 to i8
  %25 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_35), !mcsema_real_eip !8
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !8
  %_trans_icmp_ne_37 = icmp ne i64 %RSP_val.12, %_trans_p2i_24
  store i1 %_trans_icmp_ne_37, i1* %CF, align 1, !mcsema_real_eip !8
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_, align 8
  store i64 %18, i64* %XSP, align 8, !mcsema_real_eip !8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_23 to i64*
  %28 = load i64, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !9
  store volatile i64 %28, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %28, i64* %XBP, align 8, !mcsema_real_eip !9
  %_new_gep_40 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %29 = add i64 %RSP_val.12, 24, !mcsema_real_eip !9
  store volatile i8* %_new_gep_40, i8** %_RSP_ptr_, align 8
  store i64 %29, i64* %XSP, align 8, !mcsema_real_eip !9
  %_new_gep_42 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %30 = add i64 %RSP_val.12, 32, !mcsema_real_eip !10
  %_allin_new_bt_43 = bitcast i8* %_new_gep_40 to i64*
  %31 = load i64, i64* %_allin_new_bt_43, align 8, !mcsema_real_eip !10
  store i64 %31, i64* %XIP, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_42, i8** %_RSP_ptr_, align 8
  store i64 %30, i64* %XSP, align 8, !mcsema_real_eip !10
  ret void, !mcsema_real_eip !10
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noinline norecurse nounwind
define internal x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* %_parent_stack_rbp_ptr_) unnamed_addr #2 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca i64, align 8
  %_local_stack_end_ptr_ = getelementptr inbounds i64, i64* %_local_stack_start_ptr_1, i64 1
  %1 = bitcast i64* %_local_stack_end_ptr_ to i8*
  %2 = bitcast i8** %_RSP_ptr_ to i64**
  store i64* %_local_stack_end_ptr_, i64** %2, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !11
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !11
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %_new_gep_ = bitcast i64* %_local_stack_start_ptr_1 to i8*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_local_stack_start_ptr_1, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store volatile i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_ptr2int_, i64* %XBP, align 8, !mcsema_real_eip !12
  store volatile i8* %1, i8** %_RSP_ptr_, align 8
  %_new_gep_63 = getelementptr i64, i64* %_local_stack_start_ptr_1, i64 2
  %_new_gep_6 = bitcast i64* %_new_gep_63 to i8*
  %3 = add i64 %RSP_val.1, 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !13
  ret void, !mcsema_real_eip !13
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_10.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %RSP_val.6 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.6, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.6, -24
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
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 2, i32* %11, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.6, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !6
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !6
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -4
  %13 = ptrtoint i8* %_new_gep_20 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %13, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_20
  %14 = bitcast i8* %.v to i32*
  %_new_load_ = load i32, i32* %14, align 4
  %15 = zext i32 %_new_load_ to i64, !mcsema_real_eip !7
  store i64 %15, i64* %XAX, align 8, !mcsema_real_eip !7
  %RSP_val.12 = load i64, i64* %XSP, align 8, !mcsema_real_eip !8
  %_new_gep_23 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %16 = add i64 %RSP_val.12, 16, !mcsema_real_eip !8
  %_trans_p2i_24 = ptrtoint i8* %_new_gep_23 to i64
  %_trans_p2i_25 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_26 = xor i64 %_trans_p2i_24, %_trans_p2i_25
  %17 = and i64 %_trans_xor_26, 16
  %18 = icmp eq i64 %17, 0
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !8
  %19 = icmp slt i64 %16, 0
  store i1 %19, i1* %SF, align 1, !mcsema_real_eip !8
  %_trans_icmp_eq_28 = icmp eq i8* %_new_gep_23, null
  store i1 %_trans_icmp_eq_28, i1* %ZF, align 1, !mcsema_real_eip !8
  %20 = xor i64 %_trans_p2i_25, -9223372036854775808, !mcsema_real_eip !8
  %21 = and i64 %20, %_trans_xor_26, !mcsema_real_eip !8
  %22 = icmp slt i64 %21, 0
  store i1 %22, i1* %OF, align 1, !mcsema_real_eip !8
  %_trans_trunc_35 = trunc i64 %_trans_p2i_24 to i8
  %23 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_35), !mcsema_real_eip !8
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !8
  %_trans_icmp_ne_37 = icmp ne i64 %RSP_val.12, %_trans_p2i_24
  store i1 %_trans_icmp_ne_37, i1* %CF, align 1, !mcsema_real_eip !8
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_, align 8
  store i64 %16, i64* %XSP, align 8, !mcsema_real_eip !8
  %_offset_above_rbp_49 = sub i64 %_trans_p2i_24, %_local_end_to_int_
  %_pot_address_in_parent_stack_50 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_49
  %_cond1_51 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_52 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_53 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_54 = or i1 %_cond2_1_52, %_cond2_2_53
  %_cond4_55 = icmp ule i8* %_pot_address_in_parent_stack_50, %_parent_stack_end_ptr_
  %_cond1_n_cond2_56 = and i1 %_cond1_51, %_cond2_54
  %_cond1_n_cond2_cond3_57 = and i1 %_cond1_n_cond2_56, %_cond4_55
  %_address_in_parent_stack_bt_59._allin_new_bt_39.v = select i1 %_cond1_n_cond2_cond3_57, i8* %_pot_address_in_parent_stack_50, i8* %_new_gep_23
  %_address_in_parent_stack_bt_59._allin_new_bt_39 = bitcast i8* %_address_in_parent_stack_bt_59._allin_new_bt_39.v to i64*
  %_new_load_60 = load i64, i64* %_address_in_parent_stack_bt_59._allin_new_bt_39, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_60 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_60, i64* %XBP, align 8, !mcsema_real_eip !9
  %_new_gep_40 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %26 = add i64 %RSP_val.12, 24, !mcsema_real_eip !9
  store volatile i8* %_new_gep_40, i8** %_RSP_ptr_, align 8
  store i64 %26, i64* %XSP, align 8, !mcsema_real_eip !9
  %_new_gep_42 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %27 = add i64 %RSP_val.12, 32, !mcsema_real_eip !10
  %_ptr_to_int_61 = ptrtoint i8* %_new_gep_40 to i64
  %_offset_above_rbp_64 = sub i64 %_ptr_to_int_61, %_local_end_to_int_
  %_pot_address_in_parent_stack_65 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_64
  %_cond1_66 = icmp ugt i8* %_new_gep_40, %_local_stack_end_ptr_
  %_cond2_1_67 = icmp ugt i8* %_new_gep_40, %_parent_stack_end_ptr_
  %_cond2_2_68 = icmp ult i8* %_new_gep_40, %_parent_stack_start_ptr_
  %_cond2_69 = or i1 %_cond2_1_67, %_cond2_2_68
  %_cond4_70 = icmp ule i8* %_pot_address_in_parent_stack_65, %_parent_stack_end_ptr_
  %_cond1_n_cond2_71 = and i1 %_cond1_66, %_cond2_69
  %_cond1_n_cond2_cond3_72 = and i1 %_cond1_n_cond2_71, %_cond4_70
  %.v2 = select i1 %_cond1_n_cond2_cond3_72, i8* %_pot_address_in_parent_stack_65, i8* %_new_gep_40
  %28 = bitcast i8* %.v2 to i64*
  %_new_load_75 = load i64, i64* %28, align 8
  store i64 %_new_load_75, i64* %XIP, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_42, i8** %_RSP_ptr_, align 8
  store i64 %27, i64* %XSP, align 8, !mcsema_real_eip !10
  ret void, !mcsema_real_eip !10
}

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noinline norecurse nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 16}
!3 = !{i64 17}
!4 = !{i64 20}
!5 = !{i64 24}
!6 = !{i64 31}
!7 = !{i64 36}
!8 = !{i64 39}
!9 = !{i64 43}
!10 = !{i64 44}
!11 = !{i64 0}
!12 = !{i64 4}
!13 = !{i64 5}
