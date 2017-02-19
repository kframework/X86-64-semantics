; ModuleID = 'Output/test_14.clang.trans.bc'
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
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x3d = internal constant %0 <{ [4 x i8] c"foo\00" }>, align 64
@data_0x48 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\06\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"-\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
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
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !6
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !6
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
  store i64 ptrtoint (%0* @data_0x3d to i64), i64* %XAX, !mcsema_real_eip !9
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.10 = load i64, i64* %XDI, !mcsema_real_eip !10
  store i64 %RDI_val.10, i64* %_allin_new_bt_15, !mcsema_real_eip !10
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %RAX_val.12 = load i64, i64* %XAX, !mcsema_real_eip !11
  store i64 %RAX_val.12, i64* %_allin_new_bt_18, !mcsema_real_eip !11
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %14 = load i64, i64* %_allin_new_bt_21, !mcsema_real_eip !12
  store i64 %14, i64* %XDI, !mcsema_real_eip !12
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %15 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !13
  store i64 %15, i64* %XSI, !mcsema_real_eip !13
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %16 = sub i64 %RSP_val.17, 8, !mcsema_real_eip !14
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !14
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !14
  %17 = call x86_64_sysvcc i64 @_strcmp(i64 %14, i64 %15)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %17, i64* %XAX, !mcsema_real_eip !14
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_29 = getelementptr i8, i8* %_gep_fix_, i64 16
  %18 = add i64 16, %RSP_val.18, !mcsema_real_eip !15
  %_trans_p2i_30 = ptrtoint i8* %_new_gep_29 to i64
  %_trans_p2i_31 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_32 = xor i64 %_trans_p2i_30, %_trans_p2i_31
  %19 = xor i64 %_trans_xor_32, 16, !mcsema_real_eip !15
  %20 = and i64 %19, 16, !mcsema_real_eip !15
  %21 = icmp ne i64 %20, 0, !mcsema_real_eip !15
  store i1 %21, i1* %AF, !mcsema_real_eip !15
  %22 = lshr i64 %18, 63, !mcsema_real_eip !15
  %23 = trunc i64 %22 to i1, !mcsema_real_eip !15
  store i1 %23, i1* %SF, !mcsema_real_eip !15
  %_trans_icmp_eq_34 = icmp eq i64 %_trans_p2i_30, 0
  store i1 %_trans_icmp_eq_34, i1* %ZF, !mcsema_real_eip !15
  %_trans_xor_36 = xor i64 %_trans_p2i_31, 16
  %24 = xor i64 %_trans_xor_36, -1, !mcsema_real_eip !15
  %25 = and i64 %24, %_trans_xor_32, !mcsema_real_eip !15
  %26 = lshr i64 %25, 63, !mcsema_real_eip !15
  %27 = and i64 %26, 1, !mcsema_real_eip !15
  %28 = trunc i64 %27 to i1, !mcsema_real_eip !15
  store i1 %28, i1* %OF, !mcsema_real_eip !15
  %_trans_trunc_41 = trunc i64 %_trans_p2i_30 to i8
  %29 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_41), !mcsema_real_eip !15
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !15
  %31 = xor i1 %30, true, !mcsema_real_eip !15
  store i1 %31, i1* %PF, !mcsema_real_eip !15
  %_trans_icmp_ne_43 = icmp ne i64 %_trans_p2i_30, %RSP_val.18
  store i1 %_trans_icmp_ne_43, i1* %CF, !mcsema_real_eip !15
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %18, i64* %XSP, !mcsema_real_eip !15
  %_allin_new_bt_45 = bitcast i8* %_new_gep_29 to i64*
  %32 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !16
  %_new_int2ptr_ = inttoptr i64 %32 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %32, i64* %XBP, !mcsema_real_eip !16
  %_new_gep_46 = getelementptr i8, i8* %_new_gep_29, i64 8
  %33 = add i64 %18, 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_
  store i64 %33, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_48 = getelementptr i8, i8* %_new_gep_46, i64 8
  %34 = add i64 %33, 8, !mcsema_real_eip !17
  %_allin_new_bt_49 = bitcast i8* %_new_gep_46 to i64*
  %35 = load i64, i64* %_allin_new_bt_49, !mcsema_real_eip !17
  store i64 %35, i64* %XIP, !mcsema_real_eip !17
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_
  store i64 %34, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

declare x86_64_sysvcc i64 @strcmp(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strcmp(i64, i64) #2

; Function Attrs: naked noinline
declare void @checkFn() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
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
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !6
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !6
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
  store i64 ptrtoint (%0* @data_0x3d to i64), i64* %XAX, !mcsema_real_eip !9
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.10 = load i64, i64* %XDI, !mcsema_real_eip !10
  store i64 %RDI_val.10, i64* %_allin_new_bt_15, !mcsema_real_eip !10
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %RAX_val.12 = load i64, i64* %XAX, !mcsema_real_eip !11
  store i64 %RAX_val.12, i64* %_allin_new_bt_18, !mcsema_real_eip !11
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_21 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %14, label %15

; <label>:14:                                     ; preds = %block_0x10
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %15

; <label>:15:                                     ; preds = %block_0x10, %14
  %16 = phi i64* [ %_allin_new_bt_21, %block_0x10 ], [ %_address_in_parent_stack_bt_, %14 ]
  %_new_load_ = load i64, i64* %16
  store i64 %_new_load_, i64* %XDI, !mcsema_real_eip !12
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %_ptr_to_int_50 = ptrtoint i64* %_allin_new_bt_24 to i64
  %_offset_above_rbp_53 = sub i64 %_ptr_to_int_50, %_local_end_to_int_
  %_pot_address_in_parent_stack_54 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_53
  %_cond1_55 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_56 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_57 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_58 = or i1 %_cond2_1_56, %_cond2_2_57
  %_cond4_59 = icmp ule i8* %_pot_address_in_parent_stack_54, %_parent_stack_end_ptr_
  %_cond1_n_cond2_60 = and i1 %_cond1_55, %_cond2_58
  %_cond1_n_cond2_cond3_61 = and i1 %_cond1_n_cond2_60, %_cond4_59
  br i1 %_cond1_n_cond2_cond3_61, label %17, label %18

; <label>:17:                                     ; preds = %15
  %_address_in_parent_stack_bt_63 = bitcast i8* %_pot_address_in_parent_stack_54 to i64*
  br label %18

; <label>:18:                                     ; preds = %15, %17
  %19 = phi i64* [ %_allin_new_bt_24, %15 ], [ %_address_in_parent_stack_bt_63, %17 ]
  %_new_load_64 = load i64, i64* %19
  store i64 %_new_load_64, i64* %XSI, !mcsema_real_eip !13
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %20 = sub i64 %RSP_val.17, 8, !mcsema_real_eip !14
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !14
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %20, i64* %XSP, !mcsema_real_eip !14
  %21 = call x86_64_sysvcc i64 @_strcmp(i64 %_new_load_, i64 %_new_load_64)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %21, i64* %XAX, !mcsema_real_eip !14
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_29 = getelementptr i8, i8* %_gep_fix_, i64 16
  %22 = add i64 16, %RSP_val.18, !mcsema_real_eip !15
  %_trans_p2i_30 = ptrtoint i8* %_new_gep_29 to i64
  %_trans_p2i_31 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_32 = xor i64 %_trans_p2i_30, %_trans_p2i_31
  %23 = xor i64 %_trans_xor_32, 16, !mcsema_real_eip !15
  %24 = and i64 %23, 16, !mcsema_real_eip !15
  %25 = icmp ne i64 %24, 0, !mcsema_real_eip !15
  store i1 %25, i1* %AF, !mcsema_real_eip !15
  %26 = lshr i64 %22, 63, !mcsema_real_eip !15
  %27 = trunc i64 %26 to i1, !mcsema_real_eip !15
  store i1 %27, i1* %SF, !mcsema_real_eip !15
  %_trans_icmp_eq_34 = icmp eq i64 %_trans_p2i_30, 0
  store i1 %_trans_icmp_eq_34, i1* %ZF, !mcsema_real_eip !15
  %_trans_xor_36 = xor i64 %_trans_p2i_31, 16
  %28 = xor i64 %_trans_xor_36, -1, !mcsema_real_eip !15
  %29 = and i64 %28, %_trans_xor_32, !mcsema_real_eip !15
  %30 = lshr i64 %29, 63, !mcsema_real_eip !15
  %31 = and i64 %30, 1, !mcsema_real_eip !15
  %32 = trunc i64 %31 to i1, !mcsema_real_eip !15
  store i1 %32, i1* %OF, !mcsema_real_eip !15
  %_trans_trunc_41 = trunc i64 %_trans_p2i_30 to i8
  %33 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_41), !mcsema_real_eip !15
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !15
  %35 = xor i1 %34, true, !mcsema_real_eip !15
  store i1 %35, i1* %PF, !mcsema_real_eip !15
  %_trans_icmp_ne_43 = icmp ne i64 %_trans_p2i_30, %RSP_val.18
  store i1 %_trans_icmp_ne_43, i1* %CF, !mcsema_real_eip !15
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %22, i64* %XSP, !mcsema_real_eip !15
  %_allin_new_bt_45 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_65 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_68 = sub i64 %_ptr_to_int_65, %_local_end_to_int_
  %_pot_address_in_parent_stack_69 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_68
  %_cond1_70 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_71 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_72 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_73 = or i1 %_cond2_1_71, %_cond2_2_72
  %_cond4_74 = icmp ule i8* %_pot_address_in_parent_stack_69, %_parent_stack_end_ptr_
  %_cond1_n_cond2_75 = and i1 %_cond1_70, %_cond2_73
  %_cond1_n_cond2_cond3_76 = and i1 %_cond1_n_cond2_75, %_cond4_74
  br i1 %_cond1_n_cond2_cond3_76, label %36, label %37

; <label>:36:                                     ; preds = %18
  %_address_in_parent_stack_bt_78 = bitcast i8* %_pot_address_in_parent_stack_69 to i64*
  br label %37

; <label>:37:                                     ; preds = %18, %36
  %38 = phi i64* [ %_allin_new_bt_45, %18 ], [ %_address_in_parent_stack_bt_78, %36 ]
  %_new_load_79 = load i64, i64* %38
  %_new_int2ptr_ = inttoptr i64 %_new_load_79 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_79, i64* %XBP, !mcsema_real_eip !16
  %_new_gep_46 = getelementptr i8, i8* %_new_gep_29, i64 8
  %39 = add i64 %22, 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_
  store i64 %39, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_48 = getelementptr i8, i8* %_new_gep_46, i64 8
  %40 = add i64 %39, 8, !mcsema_real_eip !17
  %_allin_new_bt_49 = bitcast i8* %_new_gep_46 to i64*
  %_ptr_to_int_80 = ptrtoint i64* %_allin_new_bt_49 to i64
  %_offset_above_rbp_83 = sub i64 %_ptr_to_int_80, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_new_gep_46, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_new_gep_46, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_new_gep_46, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  br i1 %_cond1_n_cond2_cond3_91, label %41, label %42

; <label>:41:                                     ; preds = %37
  %_address_in_parent_stack_bt_93 = bitcast i8* %_pot_address_in_parent_stack_84 to i64*
  br label %42

; <label>:42:                                     ; preds = %37, %41
  %43 = phi i64* [ %_allin_new_bt_49, %37 ], [ %_address_in_parent_stack_bt_93, %41 ]
  %_new_load_94 = load i64, i64* %43
  store i64 %_new_load_94, i64* %XIP, !mcsema_real_eip !17
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_
  store i64 %40, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

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
!11 = !{i64 38}
!12 = !{i64 42}
!13 = !{i64 46}
!14 = !{i64 50}
!15 = !{i64 55}
!16 = !{i64 59}
!17 = !{i64 60}
