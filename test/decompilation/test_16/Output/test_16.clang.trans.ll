; ModuleID = 'Output/test_16.clang.trans.bc'
source_filename = "Output/test_16.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl printit;"
module asm "  .type printit,@function"
module asm "printit:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size printit,0b-printit;"
module asm "  .cfi_endproc;"

%0 = type <{ [56 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x18 = internal constant %0 <{ [56 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00\00\00\00\00\14\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 20
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 20
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %RDI_val.4 = load i64, i64* %XDI, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -12
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %2 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !5
  %3 = inttoptr i64 %2 to i32*, !mcsema_real_eip !5
  store i32 10, i32* %3, !mcsema_real_eip !5
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -12
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %4 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !6
  %5 = inttoptr i64 %4 to i32*, !mcsema_real_eip !6
  %6 = load i32, i32* %5, !mcsema_real_eip !6
  %7 = zext i32 %6 to i64, !mcsema_real_eip !6
  store i64 %7, i64* %XAX, !mcsema_real_eip !6
  %_load_rsp_ptr_11 = load i8*, i8** %_RSP_ptr_
  %RSP_val.7 = load i64, i64* %XSP, !mcsema_real_eip !7
  %_allin_new_bt_12 = bitcast i8* %_load_rsp_ptr_11 to i64*
  %8 = load i64, i64* %_allin_new_bt_12, !mcsema_real_eip !7
  %_new_int2ptr_ = inttoptr i64 %8 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %8, i64* %XBP, !mcsema_real_eip !7
  %_new_gep_13 = getelementptr i8, i8* %_load_rsp_ptr_11, i64 8
  %9 = add i64 %RSP_val.7, 8, !mcsema_real_eip !7
  store volatile i8* %_new_gep_13, i8** %_RSP_ptr_
  store i64 %9, i64* %XSP, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr i8, i8* %_new_gep_13, i64 8
  %10 = add i64 %9, 8, !mcsema_real_eip !8
  %_allin_new_bt_16 = bitcast i8* %_new_gep_13 to i64*
  %11 = load i64, i64* %_allin_new_bt_16, !mcsema_real_eip !8
  store i64 %11, i64* %XIP, !mcsema_real_eip !8
  store volatile i8* %_new_gep_15, i8** %_RSP_ptr_
  store i64 %10, i64* %XSP, !mcsema_real_eip !8
  ret void, !mcsema_real_eip !8
}

; Function Attrs: naked noinline
declare void @printit() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 20
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 20
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
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
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %RDI_val.4 = load i64, i64* %XDI, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -12
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %2 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !5
  %3 = inttoptr i64 %2 to i32*, !mcsema_real_eip !5
  store i32 10, i32* %3, !mcsema_real_eip !5
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -12
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %4 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !6
  %5 = inttoptr i64 %4 to i32*, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %5 to i8*
  %_offset_above_rbp_ = sub i64 %4, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %6, label %7

; <label>:6:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %7

; <label>:7:                                      ; preds = %block_0x0, %6
  %8 = phi i32* [ %5, %block_0x0 ], [ %_address_in_parent_stack_bt_, %6 ]
  %_new_load_ = load i32, i32* %8
  %9 = zext i32 %_new_load_ to i64, !mcsema_real_eip !6
  store i64 %9, i64* %XAX, !mcsema_real_eip !6
  %_load_rsp_ptr_11 = load i8*, i8** %_RSP_ptr_
  %RSP_val.7 = load i64, i64* %XSP, !mcsema_real_eip !7
  %_allin_new_bt_12 = bitcast i8* %_load_rsp_ptr_11 to i64*
  %_ptr_to_int_17 = ptrtoint i64* %_allin_new_bt_12 to i64
  %_offset_above_rbp_20 = sub i64 %_ptr_to_int_17, %_local_end_to_int_
  %_pot_address_in_parent_stack_21 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_20
  %_cond1_22 = icmp ugt i8* %_load_rsp_ptr_11, %_local_stack_end_ptr_
  %_cond2_1_23 = icmp ugt i8* %_load_rsp_ptr_11, %_parent_stack_end_ptr_
  %_cond2_2_24 = icmp ult i8* %_load_rsp_ptr_11, %_parent_stack_start_ptr_
  %_cond2_25 = or i1 %_cond2_1_23, %_cond2_2_24
  %_cond4_26 = icmp ule i8* %_pot_address_in_parent_stack_21, %_parent_stack_end_ptr_
  %_cond1_n_cond2_27 = and i1 %_cond1_22, %_cond2_25
  %_cond1_n_cond2_cond3_28 = and i1 %_cond1_n_cond2_27, %_cond4_26
  br i1 %_cond1_n_cond2_cond3_28, label %10, label %11

; <label>:10:                                     ; preds = %7
  %_address_in_parent_stack_bt_30 = bitcast i8* %_pot_address_in_parent_stack_21 to i64*
  br label %11

; <label>:11:                                     ; preds = %7, %10
  %12 = phi i64* [ %_allin_new_bt_12, %7 ], [ %_address_in_parent_stack_bt_30, %10 ]
  %_new_load_31 = load i64, i64* %12
  %_new_int2ptr_ = inttoptr i64 %_new_load_31 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_31, i64* %XBP, !mcsema_real_eip !7
  %_new_gep_13 = getelementptr i8, i8* %_load_rsp_ptr_11, i64 8
  %13 = add i64 %RSP_val.7, 8, !mcsema_real_eip !7
  store volatile i8* %_new_gep_13, i8** %_RSP_ptr_
  store i64 %13, i64* %XSP, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr i8, i8* %_new_gep_13, i64 8
  %14 = add i64 %13, 8, !mcsema_real_eip !8
  %_allin_new_bt_16 = bitcast i8* %_new_gep_13 to i64*
  %_ptr_to_int_32 = ptrtoint i64* %_allin_new_bt_16 to i64
  %_offset_above_rbp_35 = sub i64 %_ptr_to_int_32, %_local_end_to_int_
  %_pot_address_in_parent_stack_36 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_35
  %_cond1_37 = icmp ugt i8* %_new_gep_13, %_local_stack_end_ptr_
  %_cond2_1_38 = icmp ugt i8* %_new_gep_13, %_parent_stack_end_ptr_
  %_cond2_2_39 = icmp ult i8* %_new_gep_13, %_parent_stack_start_ptr_
  %_cond2_40 = or i1 %_cond2_1_38, %_cond2_2_39
  %_cond4_41 = icmp ule i8* %_pot_address_in_parent_stack_36, %_parent_stack_end_ptr_
  %_cond1_n_cond2_42 = and i1 %_cond1_37, %_cond2_40
  %_cond1_n_cond2_cond3_43 = and i1 %_cond1_n_cond2_42, %_cond4_41
  br i1 %_cond1_n_cond2_cond3_43, label %15, label %16

; <label>:15:                                     ; preds = %11
  %_address_in_parent_stack_bt_45 = bitcast i8* %_pot_address_in_parent_stack_36 to i64*
  br label %16

; <label>:16:                                     ; preds = %11, %15
  %17 = phi i64* [ %_allin_new_bt_16, %11 ], [ %_address_in_parent_stack_bt_45, %15 ]
  %_new_load_46 = load i64, i64* %17
  store i64 %_new_load_46, i64* %XIP, !mcsema_real_eip !8
  store volatile i8* %_new_gep_15, i8** %_RSP_ptr_
  store i64 %14, i64* %XSP, !mcsema_real_eip !8
  ret void, !mcsema_real_eip !8
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 15}
!7 = !{i64 18}
!8 = !{i64 19}
