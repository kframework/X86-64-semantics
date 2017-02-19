; ModuleID = 'Output/test_14.clang.trans.opt.bc'
source_filename = "Output/test_14.clang.bc"
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
module asm "  .globl strcmp;"
module asm "  .globl _strcmp;"
module asm "  .type _strcmp,@function"
module asm "_strcmp:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strcmp@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strcmp,0b-_strcmp;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_10;"
module asm "  .globl checkFn;"
module asm "  .type checkFn,@function"
module asm "checkFn:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_10(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size checkFn,0b-checkFn;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x3d = internal constant %0 <{ [4 x i8] c"foo\00" }>, align 64

; Function Attrs: noinline norecurse nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = load i64, i64* %2, align 8, !mcsema_real_eip !4
  store i64 %3, i64* %XBP, align 8, !mcsema_real_eip !4
  store i64 %RSP_val.1, i64* %XSP, align 8, !mcsema_real_eip !4
  %4 = add i64 %RSP_val.1, 8, !mcsema_real_eip !5
  %5 = inttoptr i64 %RSP_val.1 to i64*, !mcsema_real_eip !5
  %6 = load i64, i64* %5, align 8, !mcsema_real_eip !5
  store i64 %6, i64* %XIP, align 8, !mcsema_real_eip !5
  store i64 %4, i64* %XSP, align 8, !mcsema_real_eip !5
  ret void, !mcsema_real_eip !5
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_10(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 16
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !6
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !6
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !6
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !6
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !6
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !6
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !6
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !6
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !6
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !6
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !6
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !6
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !6
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !6
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !6
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !6
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !6
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !6
  %RSP_val.6 = load i64, i64* %XSP, align 8, !mcsema_real_eip !6
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.6, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !7
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.6, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16
  %5 = icmp eq i64 %4, 0
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !8
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !8
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !8
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !8
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !8
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !8
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !8
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !8
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x3d to i64), i64* %XAX, align 8, !mcsema_real_eip !9
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.10 = load i64, i64* %XDI, align 8
  store i64 %RDI_val.10, i64* %_allin_new_bt_15, align 16, !mcsema_real_eip !10
  store i64 ptrtoint (%0* @data_0x3d to i64), i64* %XSI, align 8, !mcsema_real_eip !11
  %_new_gep_26 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.6, -32
  %13 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to <2 x i64>*
  store <2 x i64> <i64 -2415393069852865332, i64 ptrtoint (%0* @data_0x3d to i64)>, <2 x i64>* %13, align 16
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !12
  %14 = call x86_64_sysvcc i64 @_strcmp(i64 %RDI_val.10, i64 ptrtoint (%0* @data_0x3d to i64))
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XAX, align 8, !mcsema_real_eip !12
  %RSP_val.18 = load i64, i64* %XSP, align 8, !mcsema_real_eip !13
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %15 = add i64 %RSP_val.18, 16, !mcsema_real_eip !13
  %_trans_p2i_30 = ptrtoint i8* %_new_gep_29 to i64
  %_trans_p2i_31 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_32 = xor i64 %_trans_p2i_30, %_trans_p2i_31
  %16 = and i64 %_trans_xor_32, 16
  %17 = icmp eq i64 %16, 0
  store i1 %17, i1* %AF, align 1, !mcsema_real_eip !13
  %18 = icmp slt i64 %15, 0
  store i1 %18, i1* %SF, align 1, !mcsema_real_eip !13
  %_trans_icmp_eq_34 = icmp eq i8* %_new_gep_29, null
  store i1 %_trans_icmp_eq_34, i1* %ZF, align 1, !mcsema_real_eip !13
  %19 = xor i64 %_trans_p2i_31, -9223372036854775808, !mcsema_real_eip !13
  %20 = and i64 %19, %_trans_xor_32, !mcsema_real_eip !13
  %21 = icmp slt i64 %20, 0
  store i1 %21, i1* %OF, align 1, !mcsema_real_eip !13
  %_trans_trunc_41 = trunc i64 %_trans_p2i_30 to i8
  %22 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_41), !mcsema_real_eip !13
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  store i1 %24, i1* %PF, align 1, !mcsema_real_eip !13
  %_trans_icmp_ne_43 = icmp ne i64 %RSP_val.18, %_trans_p2i_30
  store i1 %_trans_icmp_ne_43, i1* %CF, align 1, !mcsema_real_eip !13
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %15, i64* %XSP, align 8, !mcsema_real_eip !13
  %_allin_new_bt_45 = bitcast i8* %_new_gep_29 to i64*
  %25 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !14
  store volatile i64 %25, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %25, i64* %XBP, align 8, !mcsema_real_eip !14
  %_new_gep_46 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %26 = add i64 %RSP_val.18, 24, !mcsema_real_eip !14
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_, align 8
  store i64 %26, i64* %XSP, align 8, !mcsema_real_eip !14
  %_new_gep_48 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %27 = add i64 %RSP_val.18, 32, !mcsema_real_eip !15
  %_allin_new_bt_49 = bitcast i8* %_new_gep_46 to i64*
  %28 = load i64, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !15
  store i64 %28, i64* %XIP, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_, align 8
  store i64 %27, i64* %XSP, align 8, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strcmp(i64, i64) local_unnamed_addr #3

; Function Attrs: noinline norecurse nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* nocapture readnone %_parent_stack_start_ptr_, i8* nocapture readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca i64, align 8
  %_local_stack_end_ptr_ = getelementptr inbounds i64, i64* %_local_stack_start_ptr_1, i64 1
  %1 = bitcast i64* %_local_stack_end_ptr_ to i8*
  %2 = bitcast i8** %_RSP_ptr_ to i64**
  store i64* %_local_stack_end_ptr_, i64** %2, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = bitcast i64* %_local_stack_start_ptr_1 to i8*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_local_stack_start_ptr_1, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store volatile i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_ptr2int_, i64* %XBP, align 8, !mcsema_real_eip !4
  store volatile i8* %1, i8** %_RSP_ptr_, align 8
  %_new_gep_63 = getelementptr i64, i64* %_local_stack_start_ptr_1, i64 2
  %_new_gep_6 = bitcast i64* %_new_gep_63 to i8*
  %3 = add i64 %RSP_val.1, 8, !mcsema_real_eip !5
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !5
  ret void, !mcsema_real_eip !5
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_10.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 16
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !6
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !6
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !6
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !6
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !6
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !6
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !6
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !6
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !6
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !6
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !6
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !6
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !6
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !6
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !6
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !6
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !6
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !6
  %RSP_val.6 = load i64, i64* %XSP, align 8, !mcsema_real_eip !6
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.6, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !7
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.6, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !8
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !8
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !8
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !8
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !8
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !8
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !8
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !8
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x3d to i64), i64* %XAX, align 8, !mcsema_real_eip !9
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.10 = load i64, i64* %XDI, align 8, !mcsema_real_eip !10
  store i64 %RDI_val.10, i64* %_allin_new_bt_15, align 16, !mcsema_real_eip !10
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 ptrtoint (%0* @data_0x3d to i64), i64* %XSI, align 8, !mcsema_real_eip !11
  %_new_gep_26 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %11 = add i64 %RSP_val.6, -32
  %12 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to <2 x i64>*
  store <2 x i64> <i64 -2415393069852865332, i64 ptrtoint (%0* @data_0x3d to i64)>, <2 x i64>* %12, align 16
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %11, i64* %XSP, align 8, !mcsema_real_eip !12
  %13 = call x86_64_sysvcc i64 @_strcmp(i64 %RDI_val.10, i64 ptrtoint (%0* @data_0x3d to i64))
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XAX, align 8, !mcsema_real_eip !12
  %RSP_val.18 = load i64, i64* %XSP, align 8, !mcsema_real_eip !13
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %14 = add i64 %RSP_val.18, 16, !mcsema_real_eip !13
  %_trans_p2i_30 = ptrtoint i8* %_new_gep_29 to i64
  %_trans_p2i_31 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_32 = xor i64 %_trans_p2i_30, %_trans_p2i_31
  %15 = and i64 %_trans_xor_32, 16
  %16 = icmp eq i64 %15, 0
  store i1 %16, i1* %AF, align 1, !mcsema_real_eip !13
  %17 = icmp slt i64 %14, 0
  store i1 %17, i1* %SF, align 1, !mcsema_real_eip !13
  %_trans_icmp_eq_34 = icmp eq i8* %_new_gep_29, null
  store i1 %_trans_icmp_eq_34, i1* %ZF, align 1, !mcsema_real_eip !13
  %18 = xor i64 %_trans_p2i_31, -9223372036854775808, !mcsema_real_eip !13
  %19 = and i64 %18, %_trans_xor_32, !mcsema_real_eip !13
  %20 = icmp slt i64 %19, 0
  store i1 %20, i1* %OF, align 1, !mcsema_real_eip !13
  %_trans_trunc_41 = trunc i64 %_trans_p2i_30 to i8
  %21 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_41), !mcsema_real_eip !13
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  store i1 %23, i1* %PF, align 1, !mcsema_real_eip !13
  %_trans_icmp_ne_43 = icmp ne i64 %RSP_val.18, %_trans_p2i_30
  store i1 %_trans_icmp_ne_43, i1* %CF, align 1, !mcsema_real_eip !13
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !13
  %_offset_above_rbp_68 = sub i64 %_trans_p2i_30, %_local_end_to_int_
  %_pot_address_in_parent_stack_69 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_68
  %_cond1_70 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_71 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_72 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_73 = or i1 %_cond2_1_71, %_cond2_2_72
  %_cond4_74 = icmp ule i8* %_pot_address_in_parent_stack_69, %_parent_stack_end_ptr_
  %_cond1_n_cond2_75 = and i1 %_cond1_70, %_cond2_73
  %_cond1_n_cond2_cond3_76 = and i1 %_cond1_n_cond2_75, %_cond4_74
  %.v2 = select i1 %_cond1_n_cond2_cond3_76, i8* %_pot_address_in_parent_stack_69, i8* %_new_gep_29
  %24 = bitcast i8* %.v2 to i64*
  %_new_load_79 = load i64, i64* %24, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_79 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_79, i64* %XBP, align 8, !mcsema_real_eip !14
  %_new_gep_46 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %25 = add i64 %RSP_val.18, 24, !mcsema_real_eip !14
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XSP, align 8, !mcsema_real_eip !14
  %_new_gep_48 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %26 = add i64 %RSP_val.18, 32, !mcsema_real_eip !15
  %_ptr_to_int_80 = ptrtoint i8* %_new_gep_46 to i64
  %_offset_above_rbp_83 = sub i64 %_ptr_to_int_80, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_new_gep_46, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_new_gep_46, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_new_gep_46, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  %_address_in_parent_stack_bt_93._allin_new_bt_49.v = select i1 %_cond1_n_cond2_cond3_91, i8* %_pot_address_in_parent_stack_84, i8* %_new_gep_46
  %_address_in_parent_stack_bt_93._allin_new_bt_49 = bitcast i8* %_address_in_parent_stack_bt_93._allin_new_bt_49.v to i64*
  %_new_load_94 = load i64, i64* %_address_in_parent_stack_bt_93._allin_new_bt_49, align 8
  store i64 %_new_load_94, i64* %XIP, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_, align 8
  store i64 %26, i64* %XSP, align 8, !mcsema_real_eip !15
  ret void, !mcsema_real_eip !15
}

attributes #0 = { noinline norecurse nounwind }
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
!6 = !{i64 16}
!7 = !{i64 17}
!8 = !{i64 20}
!9 = !{i64 24}
!10 = !{i64 34}
!11 = !{i64 46}
!12 = !{i64 50}
!13 = !{i64 55}
!14 = !{i64 59}
!15 = !{i64 60}
