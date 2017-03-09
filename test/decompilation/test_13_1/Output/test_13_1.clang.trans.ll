; ModuleID = 'Output/test_13_1.clang.trans.bc'
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

%0 = type <{ [80 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x30 = internal constant %0 <{ [80 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00\00\00\00\00\06\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00\00\00\00\00\1D\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

; Function Attrs: naked
declare void @__mcsema_attach_call() #0

; Function Attrs: naked
declare void @__mcsema_attach_ret() #0

; Function Attrs: naked
declare void @__mcsema_detach_call() #0

; Function Attrs: naked
declare void @__mcsema_detach_call_value() #0

; Function Attrs: naked
declare void @__mcsema_detach_ret() #0

; Function Attrs: noinline
define internal x86_64_sysvcc void @checkFn(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = load i64, i64* %2, !mcsema_real_eip !4
  store i64 %3, i64* %XBP, !mcsema_real_eip !4
  store i64 %RSP_val.1, i64* %XSP, !mcsema_real_eip !4
  %4 = add i64 %RSP_val.1, 8, !mcsema_real_eip !5
  %5 = inttoptr i64 %RSP_val.1 to i64*, !mcsema_real_eip !5
  %6 = load i64, i64* %5, !mcsema_real_eip !5
  store i64 %6, i64* %XIP, !mcsema_real_eip !5
  store i64 %4, i64* %XSP, !mcsema_real_eip !5
  ret void, !mcsema_real_eip !5
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_10(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !6
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !6
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !6
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !6
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !6
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !6
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !6
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !6
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !6
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !6
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !6
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !6
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !6
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !6
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !6
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !6
  br label %block_0x10, !mcsema_real_eip !6

block_0x10:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.6 = load i64, i64* %XSP, !mcsema_real_eip !6
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.6, 8, !mcsema_real_eip !6
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !6
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !7
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !8
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.8, 16, !mcsema_real_eip !8
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !8
  %4 = and i64 %3, 16, !mcsema_real_eip !8
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !8
  store i1 %5, i1* %AF, !mcsema_real_eip !8
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !8
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !8
  %8 = xor i1 %7, true, !mcsema_real_eip !8
  store i1 %8, i1* %PF, !mcsema_real_eip !8
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !8
  %9 = lshr i64 %2, 63, !mcsema_real_eip !8
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !8
  store i1 %10, i1* %SF, !mcsema_real_eip !8
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !8
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !8
  %12 = lshr i64 %11, 63, !mcsema_real_eip !8
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !8
  store i1 %13, i1* %OF, !mcsema_real_eip !8
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !8
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !9
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !9
  store i32 2, i32* %15, !mcsema_real_eip !9
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.10 = load i64, i64* %XSP, !mcsema_real_eip !10
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.10, 8, !mcsema_real_eip !10
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !10
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !10
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @checkFn.1(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_44)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -4
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !11
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !11
  %19 = load i32, i32* %18, !mcsema_real_eip !11
  %20 = zext i32 %19 to i64, !mcsema_real_eip !11
  store i64 %20, i64* %XAX, !mcsema_real_eip !11
  %RSP_val.12 = load i64, i64* %XSP, !mcsema_real_eip !12
  %_new_gep_23 = getelementptr i8, i8* %_gep_fix_, i64 16
  %21 = add i64 16, %RSP_val.12, !mcsema_real_eip !12
  %_trans_p2i_24 = ptrtoint i8* %_new_gep_23 to i64
  %_trans_p2i_25 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_26 = xor i64 %_trans_p2i_24, %_trans_p2i_25
  %22 = xor i64 %_trans_xor_26, 16, !mcsema_real_eip !12
  %23 = and i64 %22, 16, !mcsema_real_eip !12
  %24 = icmp ne i64 %23, 0, !mcsema_real_eip !12
  store i1 %24, i1* %AF, !mcsema_real_eip !12
  %25 = lshr i64 %21, 63, !mcsema_real_eip !12
  %26 = trunc i64 %25 to i1, !mcsema_real_eip !12
  store i1 %26, i1* %SF, !mcsema_real_eip !12
  %_trans_icmp_eq_28 = icmp eq i64 %_trans_p2i_24, 0
  store i1 %_trans_icmp_eq_28, i1* %ZF, !mcsema_real_eip !12
  %_trans_xor_30 = xor i64 %_trans_p2i_25, 16
  %27 = xor i64 %_trans_xor_30, -1, !mcsema_real_eip !12
  %28 = and i64 %27, %_trans_xor_26, !mcsema_real_eip !12
  %29 = lshr i64 %28, 63, !mcsema_real_eip !12
  %30 = and i64 %29, 1, !mcsema_real_eip !12
  %31 = trunc i64 %30 to i1, !mcsema_real_eip !12
  store i1 %31, i1* %OF, !mcsema_real_eip !12
  %_trans_trunc_35 = trunc i64 %_trans_p2i_24 to i8
  %32 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_35), !mcsema_real_eip !12
  %33 = trunc i8 %32 to i1, !mcsema_real_eip !12
  %34 = xor i1 %33, true, !mcsema_real_eip !12
  store i1 %34, i1* %PF, !mcsema_real_eip !12
  %_trans_icmp_ne_37 = icmp ne i64 %_trans_p2i_24, %RSP_val.12
  store i1 %_trans_icmp_ne_37, i1* %CF, !mcsema_real_eip !12
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %21, i64* %XSP, !mcsema_real_eip !12
  %_allin_new_bt_39 = bitcast i8* %_new_gep_23 to i64*
  %35 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !13
  %_new_int2ptr_ = inttoptr i64 %35 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %35, i64* %XBP, !mcsema_real_eip !13
  %_new_gep_40 = getelementptr i8, i8* %_new_gep_23, i64 8
  %36 = add i64 %21, 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_40, i8** %_RSP_ptr_
  store i64 %36, i64* %XSP, !mcsema_real_eip !13
  %_new_gep_42 = getelementptr i8, i8* %_new_gep_40, i64 8
  %37 = add i64 %36, 8, !mcsema_real_eip !14
  %_allin_new_bt_43 = bitcast i8* %_new_gep_40 to i64*
  %38 = load i64, i64* %_allin_new_bt_43, !mcsema_real_eip !14
  store i64 %38, i64* %XIP, !mcsema_real_eip !14
  store volatile i8* %_new_gep_42, i8** %_RSP_ptr_
  store i64 %37, i64* %XSP, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @doWork() #3

; Function Attrs: noinline
define internal x86_64_sysvcc void @checkFn.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 8
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 8
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_allin_new_bt_3 = bitcast i8* %_load_rsp_ptr_2 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_3 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_load_rsp_ptr_2, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_load_rsp_ptr_2, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_load_rsp_ptr_2, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %2, label %3

; <label>:2:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %3

; <label>:3:                                      ; preds = %block_0x0, %2
  %4 = phi i64* [ %_allin_new_bt_3, %block_0x0 ], [ %_address_in_parent_stack_bt_, %2 ]
  %_new_load_ = load i64, i64* %4
  %_new_int2ptr_ = inttoptr i64 %_new_load_ to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_, i64* %XBP, !mcsema_real_eip !4
  %_new_gep_4 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 8
  %5 = add i64 %RSP_val.3, 8, !mcsema_real_eip !4
  store volatile i8* %_new_gep_4, i8** %_RSP_ptr_
  store i64 %5, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_4, i64 8
  %6 = add i64 %5, 8, !mcsema_real_eip !5
  %_allin_new_bt_7 = bitcast i8* %_new_gep_4 to i64*
  %_ptr_to_int_8 = ptrtoint i64* %_allin_new_bt_7 to i64
  %_offset_above_rbp_11 = sub i64 %_ptr_to_int_8, %_local_end_to_int_
  %_pot_address_in_parent_stack_12 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_11
  %_cond1_13 = icmp ugt i8* %_new_gep_4, %_local_stack_end_ptr_
  %_cond2_1_14 = icmp ugt i8* %_new_gep_4, %_parent_stack_end_ptr_
  %_cond2_2_15 = icmp ult i8* %_new_gep_4, %_parent_stack_start_ptr_
  %_cond2_16 = or i1 %_cond2_1_14, %_cond2_2_15
  %_cond4_17 = icmp ule i8* %_pot_address_in_parent_stack_12, %_parent_stack_end_ptr_
  %_cond1_n_cond2_18 = and i1 %_cond1_13, %_cond2_16
  %_cond1_n_cond2_cond3_19 = and i1 %_cond1_n_cond2_18, %_cond4_17
  br i1 %_cond1_n_cond2_cond3_19, label %7, label %8

; <label>:7:                                      ; preds = %3
  %_address_in_parent_stack_bt_21 = bitcast i8* %_pot_address_in_parent_stack_12 to i64*
  br label %8

; <label>:8:                                      ; preds = %3, %7
  %9 = phi i64* [ %_allin_new_bt_7, %3 ], [ %_address_in_parent_stack_bt_21, %7 ]
  %_new_load_22 = load i64, i64* %9
  store i64 %_new_load_22, i64* %XIP, !mcsema_real_eip !5
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_
  store i64 %6, i64* %XSP, !mcsema_real_eip !5
  ret void, !mcsema_real_eip !5
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_10.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !6
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !6
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !6
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !6
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !6
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !6
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !6
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !6
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !6
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !6
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !6
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !6
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !6
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !6
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !6
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !6
  br label %block_0x10, !mcsema_real_eip !6

block_0x10:                                       ; preds = %entry
  %RSP_val.6 = load i64, i64* %XSP, !mcsema_real_eip !6
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.6, 8, !mcsema_real_eip !6
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !6
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !7
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !8
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.8, 16, !mcsema_real_eip !8
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !8
  %4 = and i64 %3, 16, !mcsema_real_eip !8
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !8
  store i1 %5, i1* %AF, !mcsema_real_eip !8
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !8
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !8
  %8 = xor i1 %7, true, !mcsema_real_eip !8
  store i1 %8, i1* %PF, !mcsema_real_eip !8
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !8
  %9 = lshr i64 %2, 63, !mcsema_real_eip !8
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !8
  store i1 %10, i1* %SF, !mcsema_real_eip !8
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !8
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !8
  %12 = lshr i64 %11, 63, !mcsema_real_eip !8
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !8
  store i1 %13, i1* %OF, !mcsema_real_eip !8
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !8
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !9
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !9
  store i32 2, i32* %15, !mcsema_real_eip !9
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.10 = load i64, i64* %XSP, !mcsema_real_eip !10
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.10, 8, !mcsema_real_eip !10
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !10
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !10
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @checkFn.1(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_44)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -4
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !11
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !11
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %18 to i8*
  %_offset_above_rbp_ = sub i64 %17, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %19, label %20

; <label>:19:                                     ; preds = %block_0x10
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %20

; <label>:20:                                     ; preds = %block_0x10, %19
  %21 = phi i32* [ %18, %block_0x10 ], [ %_address_in_parent_stack_bt_, %19 ]
  %_new_load_ = load i32, i32* %21
  %22 = zext i32 %_new_load_ to i64, !mcsema_real_eip !11
  store i64 %22, i64* %XAX, !mcsema_real_eip !11
  %RSP_val.12 = load i64, i64* %XSP, !mcsema_real_eip !12
  %_new_gep_23 = getelementptr i8, i8* %_gep_fix_, i64 16
  %23 = add i64 16, %RSP_val.12, !mcsema_real_eip !12
  %_trans_p2i_24 = ptrtoint i8* %_new_gep_23 to i64
  %_trans_p2i_25 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_26 = xor i64 %_trans_p2i_24, %_trans_p2i_25
  %24 = xor i64 %_trans_xor_26, 16, !mcsema_real_eip !12
  %25 = and i64 %24, 16, !mcsema_real_eip !12
  %26 = icmp ne i64 %25, 0, !mcsema_real_eip !12
  store i1 %26, i1* %AF, !mcsema_real_eip !12
  %27 = lshr i64 %23, 63, !mcsema_real_eip !12
  %28 = trunc i64 %27 to i1, !mcsema_real_eip !12
  store i1 %28, i1* %SF, !mcsema_real_eip !12
  %_trans_icmp_eq_28 = icmp eq i64 %_trans_p2i_24, 0
  store i1 %_trans_icmp_eq_28, i1* %ZF, !mcsema_real_eip !12
  %_trans_xor_30 = xor i64 %_trans_p2i_25, 16
  %29 = xor i64 %_trans_xor_30, -1, !mcsema_real_eip !12
  %30 = and i64 %29, %_trans_xor_26, !mcsema_real_eip !12
  %31 = lshr i64 %30, 63, !mcsema_real_eip !12
  %32 = and i64 %31, 1, !mcsema_real_eip !12
  %33 = trunc i64 %32 to i1, !mcsema_real_eip !12
  store i1 %33, i1* %OF, !mcsema_real_eip !12
  %_trans_trunc_35 = trunc i64 %_trans_p2i_24 to i8
  %34 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_35), !mcsema_real_eip !12
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !12
  %36 = xor i1 %35, true, !mcsema_real_eip !12
  store i1 %36, i1* %PF, !mcsema_real_eip !12
  %_trans_icmp_ne_37 = icmp ne i64 %_trans_p2i_24, %RSP_val.12
  store i1 %_trans_icmp_ne_37, i1* %CF, !mcsema_real_eip !12
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %23, i64* %XSP, !mcsema_real_eip !12
  %_allin_new_bt_39 = bitcast i8* %_new_gep_23 to i64*
  %_ptr_to_int_46 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_49 = sub i64 %_ptr_to_int_46, %_local_end_to_int_
  %_pot_address_in_parent_stack_50 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_49
  %_cond1_51 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_52 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_53 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_54 = or i1 %_cond2_1_52, %_cond2_2_53
  %_cond4_55 = icmp ule i8* %_pot_address_in_parent_stack_50, %_parent_stack_end_ptr_
  %_cond1_n_cond2_56 = and i1 %_cond1_51, %_cond2_54
  %_cond1_n_cond2_cond3_57 = and i1 %_cond1_n_cond2_56, %_cond4_55
  br i1 %_cond1_n_cond2_cond3_57, label %37, label %38

; <label>:37:                                     ; preds = %20
  %_address_in_parent_stack_bt_59 = bitcast i8* %_pot_address_in_parent_stack_50 to i64*
  br label %38

; <label>:38:                                     ; preds = %20, %37
  %39 = phi i64* [ %_allin_new_bt_39, %20 ], [ %_address_in_parent_stack_bt_59, %37 ]
  %_new_load_60 = load i64, i64* %39
  %_new_int2ptr_ = inttoptr i64 %_new_load_60 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_60, i64* %XBP, !mcsema_real_eip !13
  %_new_gep_40 = getelementptr i8, i8* %_new_gep_23, i64 8
  %40 = add i64 %23, 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_40, i8** %_RSP_ptr_
  store i64 %40, i64* %XSP, !mcsema_real_eip !13
  %_new_gep_42 = getelementptr i8, i8* %_new_gep_40, i64 8
  %41 = add i64 %40, 8, !mcsema_real_eip !14
  %_allin_new_bt_43 = bitcast i8* %_new_gep_40 to i64*
  %_ptr_to_int_61 = ptrtoint i64* %_allin_new_bt_43 to i64
  %_offset_above_rbp_64 = sub i64 %_ptr_to_int_61, %_local_end_to_int_
  %_pot_address_in_parent_stack_65 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_64
  %_cond1_66 = icmp ugt i8* %_new_gep_40, %_local_stack_end_ptr_
  %_cond2_1_67 = icmp ugt i8* %_new_gep_40, %_parent_stack_end_ptr_
  %_cond2_2_68 = icmp ult i8* %_new_gep_40, %_parent_stack_start_ptr_
  %_cond2_69 = or i1 %_cond2_1_67, %_cond2_2_68
  %_cond4_70 = icmp ule i8* %_pot_address_in_parent_stack_65, %_parent_stack_end_ptr_
  %_cond1_n_cond2_71 = and i1 %_cond1_66, %_cond2_69
  %_cond1_n_cond2_cond3_72 = and i1 %_cond1_n_cond2_71, %_cond4_70
  br i1 %_cond1_n_cond2_cond3_72, label %42, label %43

; <label>:42:                                     ; preds = %38
  %_address_in_parent_stack_bt_74 = bitcast i8* %_pot_address_in_parent_stack_65 to i64*
  br label %43

; <label>:43:                                     ; preds = %38, %42
  %44 = phi i64* [ %_allin_new_bt_43, %38 ], [ %_address_in_parent_stack_bt_74, %42 ]
  %_new_load_75 = load i64, i64* %44
  store i64 %_new_load_75, i64* %XIP, !mcsema_real_eip !14
  store volatile i8* %_new_gep_42, i8** %_RSP_ptr_
  store i64 %41, i64* %XSP, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
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
!5 = !{i64 5}
!6 = !{i64 16}
!7 = !{i64 17}
!8 = !{i64 20}
!9 = !{i64 24}
!10 = !{i64 31}
!11 = !{i64 36}
!12 = !{i64 39}
!13 = !{i64 43}
!14 = !{i64 44}
