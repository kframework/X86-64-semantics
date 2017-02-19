; ModuleID = 'Output/test_22.clang.trans.opt.bc'
source_filename = "Output/test_22.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl timespi;"
module asm "  .type timespi,@function"
module asm "timespi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size timespi,0b-timespi;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline norecurse nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_4 = alloca [40 x i8], align 16
  %_local_stack_end_ptr_ = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_4, i64 0, i64 40
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i64 0, i32 19, !mcsema_real_eip !2
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !2
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i64 0, i32 21, !mcsema_real_eip !2
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_4, i64 0, i64 32
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 16
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !4
  %4 = add i3 %3, -1
  store i3 %4, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !4
  %5 = zext i3 %4 to i64
  %6 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %5
  %7 = bitcast i8* %6 to i2*, !mcsema_real_eip !4
  %8 = load i2, i2* %7, align 1, !mcsema_real_eip !4
  %9 = icmp eq i2 %8, -1, !mcsema_real_eip !4
  br i1 %9, label %fpu_write, label %fpu_exception, !mcsema_real_eip !4

fpu_write:                                        ; preds = %fpu_exception, %entry
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !4
  store i2 0, i2* %7, align 1, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_4, i64 0, i64 16
  %10 = load i3, i3* %FPU_FLAG_TOP, align 1
  %11 = zext i3 %10 to i64
  %12 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %11
  %13 = bitcast i8* %12 to i2*
  %14 = load i2, i2* %13, align 1, !mcsema_real_eip !5
  %switch1 = icmp eq i2 %14, -1
  %.pre = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %11
  br i1 %switch1, label %fpu_read_continue, label %fpu_read_normal

fpu_exception:                                    ; preds = %entry
  store i1 true, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !4
  br label %fpu_write, !mcsema_real_eip !4

fpu_read_normal:                                  ; preds = %fpu_write
  %15 = load x86_fp80, x86_fp80* %.pre, align 16, !mcsema_real_eip !5
  br label %fpu_read_continue, !mcsema_real_eip !5

fpu_read_continue:                                ; preds = %fpu_write, %fpu_read_normal
  %16 = phi x86_fp80 [ %15, %fpu_read_normal ], [ 0xK00000000000000000000, %fpu_write ], !mcsema_real_eip !5
  store i1 false, i1* %FPU_FLAG_C1, align 1
  %17 = bitcast i8* %_new_gep_6 to x86_fp80*
  store x86_fp80 %16, x86_fp80* %17, align 16, !mcsema_real_eip !5
  store i2 -1, i2* %13, align 1, !mcsema_real_eip !5
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !6
  store i2 0, i2* %13, align 1, !mcsema_real_eip !6
  store x86_fp80 0xK4000C90FDAA22168C000, x86_fp80* %.pre, align 16, !mcsema_real_eip !6
  %18 = load i3, i3* %FPU_FLAG_TOP, align 1
  %19 = zext i3 %18 to i64
  %20 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %19
  %21 = bitcast i8* %20 to i2*
  %22 = load i2, i2* %21, align 1, !mcsema_real_eip !7
  %switch2 = icmp eq i2 %22, -1
  %.pre6 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %19
  br i1 %switch2, label %fpu_read_continue7, label %fpu_read_normal5

fpu_read_normal5:                                 ; preds = %fpu_read_continue
  %23 = load x86_fp80, x86_fp80* %.pre6, align 16, !mcsema_real_eip !7
  br label %fpu_read_continue7, !mcsema_real_eip !7

fpu_read_continue7:                               ; preds = %fpu_read_continue, %fpu_read_normal5
  %24 = phi x86_fp80 [ %23, %fpu_read_normal5 ], [ 0xK00000000000000000000, %fpu_read_continue ], !mcsema_real_eip !7
  store i1 false, i1* %FPU_FLAG_C1, align 1
  %25 = bitcast [40 x i8]* %_local_stack_start_ptr_4 to x86_fp80*
  store x86_fp80 %24, x86_fp80* %25, align 16, !mcsema_real_eip !7
  store i2 -1, i2* %21, align 1, !mcsema_real_eip !7
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !8
  store i2 0, i2* %21, align 1, !mcsema_real_eip !8
  store x86_fp80 %16, x86_fp80* %.pre6, align 16, !mcsema_real_eip !8
  %26 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !9
  %27 = add i3 %26, -1
  store i3 %27, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !9
  %28 = zext i3 %27 to i64
  %29 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %28
  %30 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %28
  %31 = bitcast i8* %30 to i2*, !mcsema_real_eip !9
  %32 = load i2, i2* %31, align 1, !mcsema_real_eip !9
  %33 = icmp eq i2 %32, -1, !mcsema_real_eip !9
  br i1 %33, label %fpu_write14, label %fpu_exception15, !mcsema_real_eip !9

fpu_write14:                                      ; preds = %fpu_exception15, %fpu_read_continue7
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !9
  store i2 0, i2* %31, align 1, !mcsema_real_eip !9
  store x86_fp80 %24, x86_fp80* %29, align 16, !mcsema_real_eip !9
  %34 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !10
  %35 = zext i3 %34 to i64
  %36 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %35
  %37 = bitcast i8* %36 to i2*, !mcsema_real_eip !10
  %38 = load i2, i2* %37, align 1, !mcsema_real_eip !10
  %switch3 = icmp eq i2 %38, -1
  br i1 %switch3, label %fpu_read_continue19, label %fpu_read_normal17

fpu_exception15:                                  ; preds = %fpu_read_continue7
  store i1 true, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !9
  br label %fpu_write14, !mcsema_real_eip !9

fpu_read_normal17:                                ; preds = %fpu_write14
  %39 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %35
  %40 = load x86_fp80, x86_fp80* %39, align 16, !mcsema_real_eip !10
  br label %fpu_read_continue19, !mcsema_real_eip !10

fpu_read_continue19:                              ; preds = %fpu_write14, %fpu_read_normal17
  %fpu_switch_phinode20 = phi x86_fp80 [ %40, %fpu_read_normal17 ], [ 0xK00000000000000000000, %fpu_write14 ], !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, align 1
  %41 = add i3 %34, 1, !mcsema_real_eip !10
  %42 = zext i3 %41 to i64
  %43 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %42
  %44 = bitcast i8* %43 to i2*, !mcsema_real_eip !10
  %45 = load i2, i2* %44, align 1, !mcsema_real_eip !10
  %switch = icmp eq i2 %45, -1
  %.pre8 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %42
  br i1 %switch, label %fpu_read_continue23, label %fpu_read_normal21

fpu_read_normal21:                                ; preds = %fpu_read_continue19
  %46 = load x86_fp80, x86_fp80* %.pre8, align 16, !mcsema_real_eip !10
  br label %fpu_read_continue23, !mcsema_real_eip !10

fpu_read_continue23:                              ; preds = %fpu_read_continue19, %fpu_read_normal21
  %fpu_switch_phinode24 = phi x86_fp80 [ %46, %fpu_read_normal21 ], [ 0xK00000000000000000000, %fpu_read_continue19 ], !mcsema_real_eip !10
  %47 = fmul x86_fp80 %fpu_switch_phinode20, %fpu_switch_phinode24, !mcsema_real_eip !10
  store i2 0, i2* %44, align 1, !mcsema_real_eip !10
  store x86_fp80 %47, x86_fp80* %.pre8, align 16, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !10
  %48 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !10
  %49 = zext i3 %48 to i64
  %50 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %49
  %51 = bitcast i8* %50 to i2*, !mcsema_real_eip !10
  store i2 -1, i2* %51, align 1, !mcsema_real_eip !10
  %52 = add i3 %48, 1, !mcsema_real_eip !10
  store i3 %52, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !10
  store volatile i64 undef, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_19 = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_4, i64 0, i64 40
  store volatile i8* %_new_gep_19, i8** %_RSP_ptr_, align 8
  %_new_gep_21 = getelementptr [40 x i8], [40 x i8]* %_local_stack_start_ptr_4, i64 0, i64 48
  %53 = add i64 %RSP_val.1, 8, !mcsema_real_eip !11
  store volatile i8* %_new_gep_21, i8** %_RSP_ptr_, align 8
  store i64 %53, i64* %XSP, align 8, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

; Function Attrs: noinline norecurse nounwind
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_4 = alloca [40 x i8], align 16
  %_local_stack_end_ptr_ = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_4, i64 0, i64 40
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %FPU_FLAG_TOP_full = getelementptr %RegState, %RegState* %0, i64 0, i32 19, !mcsema_real_eip !2
  %FPU_FLAG_TOP = bitcast i8* %FPU_FLAG_TOP_full to i3*, !mcsema_real_eip !2
  %FPU_FLAG_C1_full = getelementptr %RegState, %RegState* %0, i64 0, i32 21, !mcsema_real_eip !2
  %FPU_FLAG_C1 = bitcast i8* %FPU_FLAG_C1_full to i1*, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_4, i64 0, i64 32
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 16
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr [40 x i8], [40 x i8]* %_local_stack_start_ptr_4, i64 0, i64 48
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
  %2 = bitcast i8* %.v to x86_fp80*
  %_new_load_ = load x86_fp80, x86_fp80* %2, align 16
  %3 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !4
  %4 = add i3 %3, -1
  store i3 %4, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !4
  %5 = zext i3 %4 to i64
  %6 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %5
  %7 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %5
  %8 = bitcast i8* %7 to i2*, !mcsema_real_eip !4
  %_ptr_to_int_23 = ptrtoint i8* %7 to i64
  %_offset_above_rbp_26 = sub i64 %_ptr_to_int_23, %_local_end_to_int_
  %_pot_address_in_parent_stack_27 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_26
  %_cond1_28 = icmp ugt i8* %7, %_local_stack_end_ptr_
  %_cond2_1_29 = icmp ugt i8* %7, %_parent_stack_end_ptr_
  %_cond2_2_30 = icmp ult i8* %7, %_parent_stack_start_ptr_
  %_cond2_31 = or i1 %_cond2_1_29, %_cond2_2_30
  %_cond4_32 = icmp ule i8* %_pot_address_in_parent_stack_27, %_parent_stack_end_ptr_
  %_cond1_n_cond2_33 = and i1 %_cond1_28, %_cond2_31
  %_cond1_n_cond2_cond3_34 = and i1 %_cond1_n_cond2_33, %_cond4_32
  %_address_in_parent_stack_bt_36 = bitcast i8* %_pot_address_in_parent_stack_27 to i2*
  %_address_in_parent_stack_bt_36. = select i1 %_cond1_n_cond2_cond3_34, i2* %_address_in_parent_stack_bt_36, i2* %8
  %_new_load_37 = load i2, i2* %_address_in_parent_stack_bt_36., align 1
  %9 = icmp eq i2 %_new_load_37, -1, !mcsema_real_eip !4
  br i1 %9, label %fpu_write, label %fpu_exception, !mcsema_real_eip !4

fpu_write:                                        ; preds = %fpu_exception, %entry
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !4
  store i2 0, i2* %8, align 1, !mcsema_real_eip !4
  store x86_fp80 %_new_load_, x86_fp80* %6, align 16, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_4, i64 0, i64 16
  %10 = load i3, i3* %FPU_FLAG_TOP, align 1
  %11 = zext i3 %10 to i64
  %12 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %11
  %13 = bitcast i8* %12 to i2*
  %_ptr_to_int_38 = ptrtoint i8* %12 to i64
  %_offset_above_rbp_41 = sub i64 %_ptr_to_int_38, %_local_end_to_int_
  %_pot_address_in_parent_stack_42 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_41
  %_cond1_43 = icmp ugt i8* %12, %_local_stack_end_ptr_
  %_cond2_1_44 = icmp ugt i8* %12, %_parent_stack_end_ptr_
  %_cond2_2_45 = icmp ult i8* %12, %_parent_stack_start_ptr_
  %_cond2_46 = or i1 %_cond2_1_44, %_cond2_2_45
  %_cond4_47 = icmp ule i8* %_pot_address_in_parent_stack_42, %_parent_stack_end_ptr_
  %_cond1_n_cond2_48 = and i1 %_cond1_43, %_cond2_46
  %_cond1_n_cond2_cond3_49 = and i1 %_cond1_n_cond2_48, %_cond4_47
  %_address_in_parent_stack_bt_51 = bitcast i8* %_pot_address_in_parent_stack_42 to i2*
  %14 = select i1 %_cond1_n_cond2_cond3_49, i2* %_address_in_parent_stack_bt_51, i2* %13
  %_new_load_52 = load i2, i2* %14, align 1
  %switch = icmp eq i2 %_new_load_52, -1
  %.pre = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %11
  br i1 %switch, label %fpu_read_continue, label %fpu_read_normal

fpu_exception:                                    ; preds = %entry
  store i1 true, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !4
  br label %fpu_write, !mcsema_real_eip !4

fpu_read_normal:                                  ; preds = %fpu_write
  %_ptr_to_int_53 = ptrtoint x86_fp80* %.pre to i64
  %_ptr_bt_55 = bitcast x86_fp80* %.pre to i8*
  %_offset_above_rbp_56 = sub i64 %_ptr_to_int_53, %_local_end_to_int_
  %_pot_address_in_parent_stack_57 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_56
  %_cond1_58 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_55
  %_cond2_1_59 = icmp ugt i8* %_ptr_bt_55, %_parent_stack_end_ptr_
  %_cond2_2_60 = icmp ult i8* %_ptr_bt_55, %_parent_stack_start_ptr_
  %_cond2_61 = or i1 %_cond2_1_59, %_cond2_2_60
  %_cond4_62 = icmp ule i8* %_pot_address_in_parent_stack_57, %_parent_stack_end_ptr_
  %_cond1_n_cond2_63 = and i1 %_cond1_58, %_cond2_61
  %_cond1_n_cond2_cond3_64 = and i1 %_cond1_n_cond2_63, %_cond4_62
  %_address_in_parent_stack_bt_66 = bitcast i8* %_pot_address_in_parent_stack_57 to x86_fp80*
  %_address_in_parent_stack_bt_66. = select i1 %_cond1_n_cond2_cond3_64, x86_fp80* %_address_in_parent_stack_bt_66, x86_fp80* %.pre
  %_new_load_67 = load x86_fp80, x86_fp80* %_address_in_parent_stack_bt_66., align 16
  br label %fpu_read_continue, !mcsema_real_eip !5

fpu_read_continue:                                ; preds = %fpu_write, %fpu_read_normal
  %_new_load_127 = phi x86_fp80 [ %_new_load_67, %fpu_read_normal ], [ 0xK00000000000000000000, %fpu_write ], !mcsema_real_eip !5
  store i1 false, i1* %FPU_FLAG_C1, align 1
  %15 = bitcast i8* %_new_gep_6 to x86_fp80*
  store x86_fp80 %_new_load_127, x86_fp80* %15, align 16, !mcsema_real_eip !5
  store i2 -1, i2* %13, align 1, !mcsema_real_eip !5
  %_new_load_82 = load i2, i2* %14, align 1
  %16 = icmp eq i2 %_new_load_82, -1, !mcsema_real_eip !6
  br i1 %16, label %fpu_write1, label %fpu_exception2, !mcsema_real_eip !6

fpu_write1:                                       ; preds = %fpu_exception2, %fpu_read_continue
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !6
  store i2 0, i2* %13, align 1, !mcsema_real_eip !6
  store x86_fp80 0xK4000C90FDAA22168C000, x86_fp80* %.pre, align 16, !mcsema_real_eip !6
  %17 = load i3, i3* %FPU_FLAG_TOP, align 1
  %18 = zext i3 %17 to i64
  %19 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %18
  %20 = bitcast i8* %19 to i2*
  %_ptr_to_int_83 = ptrtoint i8* %19 to i64
  %_offset_above_rbp_86 = sub i64 %_ptr_to_int_83, %_local_end_to_int_
  %_pot_address_in_parent_stack_87 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_86
  %_cond1_88 = icmp ugt i8* %19, %_local_stack_end_ptr_
  %_cond2_1_89 = icmp ugt i8* %19, %_parent_stack_end_ptr_
  %_cond2_2_90 = icmp ult i8* %19, %_parent_stack_start_ptr_
  %_cond2_91 = or i1 %_cond2_1_89, %_cond2_2_90
  %_cond4_92 = icmp ule i8* %_pot_address_in_parent_stack_87, %_parent_stack_end_ptr_
  %_cond1_n_cond2_93 = and i1 %_cond1_88, %_cond2_91
  %_cond1_n_cond2_cond3_94 = and i1 %_cond1_n_cond2_93, %_cond4_92
  %_address_in_parent_stack_bt_96 = bitcast i8* %_pot_address_in_parent_stack_87 to i2*
  %21 = select i1 %_cond1_n_cond2_cond3_94, i2* %_address_in_parent_stack_bt_96, i2* %20
  %_new_load_97 = load i2, i2* %21, align 1
  %switch1 = icmp eq i2 %_new_load_97, -1
  %.pre7 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %18
  br i1 %switch1, label %fpu_read_continue7, label %fpu_read_normal5

fpu_exception2:                                   ; preds = %fpu_read_continue
  store i1 true, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !6
  br label %fpu_write1, !mcsema_real_eip !6

fpu_read_normal5:                                 ; preds = %fpu_write1
  %_ptr_to_int_98 = ptrtoint x86_fp80* %.pre7 to i64
  %_ptr_bt_100 = bitcast x86_fp80* %.pre7 to i8*
  %_offset_above_rbp_101 = sub i64 %_ptr_to_int_98, %_local_end_to_int_
  %_pot_address_in_parent_stack_102 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_101
  %_cond1_103 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_100
  %_cond2_1_104 = icmp ugt i8* %_ptr_bt_100, %_parent_stack_end_ptr_
  %_cond2_2_105 = icmp ult i8* %_ptr_bt_100, %_parent_stack_start_ptr_
  %_cond2_106 = or i1 %_cond2_1_104, %_cond2_2_105
  %_cond4_107 = icmp ule i8* %_pot_address_in_parent_stack_102, %_parent_stack_end_ptr_
  %_cond1_n_cond2_108 = and i1 %_cond1_103, %_cond2_106
  %_cond1_n_cond2_cond3_109 = and i1 %_cond1_n_cond2_108, %_cond4_107
  %_address_in_parent_stack_bt_111 = bitcast i8* %_pot_address_in_parent_stack_102 to x86_fp80*
  %_address_in_parent_stack_bt_111. = select i1 %_cond1_n_cond2_cond3_109, x86_fp80* %_address_in_parent_stack_bt_111, x86_fp80* %.pre7
  %_new_load_112 = load x86_fp80, x86_fp80* %_address_in_parent_stack_bt_111., align 16
  br label %fpu_read_continue7, !mcsema_real_eip !7

fpu_read_continue7:                               ; preds = %fpu_write1, %fpu_read_normal5
  %_new_load_157 = phi x86_fp80 [ %_new_load_112, %fpu_read_normal5 ], [ 0xK00000000000000000000, %fpu_write1 ], !mcsema_real_eip !7
  store i1 false, i1* %FPU_FLAG_C1, align 1
  %22 = bitcast [40 x i8]* %_local_stack_start_ptr_4 to x86_fp80*
  store x86_fp80 %_new_load_157, x86_fp80* %22, align 16, !mcsema_real_eip !7
  store i2 -1, i2* %20, align 1, !mcsema_real_eip !7
  %_new_load_142 = load i2, i2* %21, align 1
  %23 = icmp eq i2 %_new_load_142, -1, !mcsema_real_eip !8
  br i1 %23, label %fpu_write10, label %fpu_exception11, !mcsema_real_eip !8

fpu_write10:                                      ; preds = %fpu_exception11, %fpu_read_continue7
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !8
  store i2 0, i2* %20, align 1, !mcsema_real_eip !8
  store x86_fp80 %_new_load_127, x86_fp80* %.pre7, align 16, !mcsema_real_eip !8
  %24 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !9
  %25 = add i3 %24, -1
  store i3 %25, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !9
  %26 = zext i3 %25 to i64
  %27 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %26
  %28 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %26
  %29 = bitcast i8* %28 to i2*, !mcsema_real_eip !9
  %_ptr_to_int_158 = ptrtoint i8* %28 to i64
  %_offset_above_rbp_161 = sub i64 %_ptr_to_int_158, %_local_end_to_int_
  %_pot_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_cond1_163 = icmp ugt i8* %28, %_local_stack_end_ptr_
  %_cond2_1_164 = icmp ugt i8* %28, %_parent_stack_end_ptr_
  %_cond2_2_165 = icmp ult i8* %28, %_parent_stack_start_ptr_
  %_cond2_166 = or i1 %_cond2_1_164, %_cond2_2_165
  %_cond4_167 = icmp ule i8* %_pot_address_in_parent_stack_162, %_parent_stack_end_ptr_
  %_cond1_n_cond2_168 = and i1 %_cond1_163, %_cond2_166
  %_cond1_n_cond2_cond3_169 = and i1 %_cond1_n_cond2_168, %_cond4_167
  %_address_in_parent_stack_bt_171 = bitcast i8* %_pot_address_in_parent_stack_162 to i2*
  %_address_in_parent_stack_bt_171. = select i1 %_cond1_n_cond2_cond3_169, i2* %_address_in_parent_stack_bt_171, i2* %29
  %_new_load_172 = load i2, i2* %_address_in_parent_stack_bt_171., align 1
  %30 = icmp eq i2 %_new_load_172, -1, !mcsema_real_eip !9
  br i1 %30, label %fpu_write14, label %fpu_exception15, !mcsema_real_eip !9

fpu_exception11:                                  ; preds = %fpu_read_continue7
  store i1 true, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !8
  br label %fpu_write10, !mcsema_real_eip !8

fpu_write14:                                      ; preds = %fpu_exception15, %fpu_write10
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !9
  store i2 0, i2* %29, align 1, !mcsema_real_eip !9
  store x86_fp80 %_new_load_157, x86_fp80* %27, align 16, !mcsema_real_eip !9
  %31 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !10
  %32 = zext i3 %31 to i64
  %33 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %32
  %_ptr_to_int_173 = ptrtoint i8* %33 to i64
  %_offset_above_rbp_176 = sub i64 %_ptr_to_int_173, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %33, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %33, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %33, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  %.v5 = select i1 %_cond1_n_cond2_cond3_184, i8* %_pot_address_in_parent_stack_177, i8* %33
  %34 = bitcast i8* %.v5 to i2*
  %_new_load_187 = load i2, i2* %34, align 1
  %switch2 = icmp eq i2 %_new_load_187, -1
  br i1 %switch2, label %fpu_read_continue19, label %fpu_read_normal17

fpu_exception15:                                  ; preds = %fpu_write10
  store i1 true, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !9
  br label %fpu_write14, !mcsema_real_eip !9

fpu_read_normal17:                                ; preds = %fpu_write14
  %35 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %32
  %_ptr_to_int_188 = ptrtoint x86_fp80* %35 to i64
  %_ptr_bt_190 = bitcast x86_fp80* %35 to i8*
  %_offset_above_rbp_191 = sub i64 %_ptr_to_int_188, %_local_end_to_int_
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_191
  %_cond1_193 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_190
  %_cond2_1_194 = icmp ugt i8* %_ptr_bt_190, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_ptr_bt_190, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  %_address_in_parent_stack_bt_201 = bitcast i8* %_pot_address_in_parent_stack_192 to x86_fp80*
  %_address_in_parent_stack_bt_201. = select i1 %_cond1_n_cond2_cond3_199, x86_fp80* %_address_in_parent_stack_bt_201, x86_fp80* %35
  %_new_load_202 = load x86_fp80, x86_fp80* %_address_in_parent_stack_bt_201., align 16
  br label %fpu_read_continue19, !mcsema_real_eip !10

fpu_read_continue19:                              ; preds = %fpu_write14, %fpu_read_normal17
  %fpu_switch_phinode20 = phi x86_fp80 [ %_new_load_202, %fpu_read_normal17 ], [ 0xK00000000000000000000, %fpu_write14 ], !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, align 1
  %36 = add i3 %31, 1, !mcsema_real_eip !10
  %37 = zext i3 %36 to i64
  %38 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %37
  %39 = bitcast i8* %38 to i2*, !mcsema_real_eip !10
  %_ptr_to_int_203 = ptrtoint i8* %38 to i64
  %_offset_above_rbp_206 = sub i64 %_ptr_to_int_203, %_local_end_to_int_
  %_pot_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_cond1_208 = icmp ugt i8* %38, %_local_stack_end_ptr_
  %_cond2_1_209 = icmp ugt i8* %38, %_parent_stack_end_ptr_
  %_cond2_2_210 = icmp ult i8* %38, %_parent_stack_start_ptr_
  %_cond2_211 = or i1 %_cond2_1_209, %_cond2_2_210
  %_cond4_212 = icmp ule i8* %_pot_address_in_parent_stack_207, %_parent_stack_end_ptr_
  %_cond1_n_cond2_213 = and i1 %_cond1_208, %_cond2_211
  %_cond1_n_cond2_cond3_214 = and i1 %_cond1_n_cond2_213, %_cond4_212
  %_address_in_parent_stack_bt_216 = bitcast i8* %_pot_address_in_parent_stack_207 to i2*
  %_address_in_parent_stack_bt_216. = select i1 %_cond1_n_cond2_cond3_214, i2* %_address_in_parent_stack_bt_216, i2* %39
  %_new_load_217 = load i2, i2* %_address_in_parent_stack_bt_216., align 1
  %switch3 = icmp eq i2 %_new_load_217, -1
  %.pre9 = getelementptr %RegState, %RegState* %0, i64 0, i32 16, i64 %37
  br i1 %switch3, label %fpu_read_continue23, label %fpu_read_normal21

fpu_read_normal21:                                ; preds = %fpu_read_continue19
  %_ptr_to_int_218 = ptrtoint x86_fp80* %.pre9 to i64
  %_ptr_bt_220 = bitcast x86_fp80* %.pre9 to i8*
  %_offset_above_rbp_221 = sub i64 %_ptr_to_int_218, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_220
  %_cond2_1_224 = icmp ugt i8* %_ptr_bt_220, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_ptr_bt_220, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  %_address_in_parent_stack_bt_231 = bitcast i8* %_pot_address_in_parent_stack_222 to x86_fp80*
  %_address_in_parent_stack_bt_231. = select i1 %_cond1_n_cond2_cond3_229, x86_fp80* %_address_in_parent_stack_bt_231, x86_fp80* %.pre9
  %_new_load_232 = load x86_fp80, x86_fp80* %_address_in_parent_stack_bt_231., align 16
  br label %fpu_read_continue23, !mcsema_real_eip !10

fpu_read_continue23:                              ; preds = %fpu_read_continue19, %fpu_read_normal21
  %fpu_switch_phinode24 = phi x86_fp80 [ %_new_load_232, %fpu_read_normal21 ], [ 0xK00000000000000000000, %fpu_read_continue19 ], !mcsema_real_eip !10
  %40 = fmul x86_fp80 %fpu_switch_phinode20, %fpu_switch_phinode24, !mcsema_real_eip !10
  store i2 0, i2* %39, align 1, !mcsema_real_eip !10
  store x86_fp80 %40, x86_fp80* %.pre9, align 16, !mcsema_real_eip !10
  store i1 false, i1* %FPU_FLAG_C1, align 1, !mcsema_real_eip !10
  %41 = load i3, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !10
  %42 = zext i3 %41 to i64
  %43 = getelementptr %RegState, %RegState* %0, i64 0, i32 40, i64 %42
  %44 = bitcast i8* %43 to i2*, !mcsema_real_eip !10
  store i2 -1, i2* %44, align 1, !mcsema_real_eip !10
  %45 = add i3 %41, 1, !mcsema_real_eip !10
  store i3 %45, i3* %FPU_FLAG_TOP, align 1, !mcsema_real_eip !10
  store volatile i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_ptr2int_, i64* %XBP, align 8, !mcsema_real_eip !12
  %_new_gep_19 = getelementptr inbounds [40 x i8], [40 x i8]* %_local_stack_start_ptr_4, i64 0, i64 40
  store volatile i8* %_new_gep_19, i8** %_RSP_ptr_, align 8
  %_new_gep_21 = getelementptr [40 x i8], [40 x i8]* %_local_stack_start_ptr_4, i64 0, i64 48
  %46 = add i64 %RSP_val.1, 8, !mcsema_real_eip !11
  %_address_in_parent_stack_bt_276._allin_new_bt_22 = bitcast i8* %_new_gep_19 to i64*
  %_new_load_277 = load i64, i64* %_address_in_parent_stack_bt_276._allin_new_bt_22, align 8
  store i64 %_new_load_277, i64* %XIP, align 8, !mcsema_real_eip !11
  store volatile i8* %_new_gep_21, i8** %_RSP_ptr_, align 8
  store i64 %46, i64* %XSP, align 8, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

attributes #0 = { noinline norecurse nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 7}
!6 = !{i64 10}
!7 = !{i64 16}
!8 = !{i64 19}
!9 = !{i64 22}
!10 = !{i64 25}
!11 = !{i64 28}
!12 = !{i64 27}
