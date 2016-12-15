; ModuleID = 'Output/test_19.clang.trans.bc'
source_filename = "Output/test_19.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_1;"
module asm "  .globl start;"
module asm "  .type start,@function"
module asm "start:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_1(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size start,0b-start;"
module asm "  .cfi_endproc;"

%0 = type <{ [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x2c = internal global %0 zeroinitializer, align 64

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
define x86_64_sysvcc void @sub_1(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 8
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 8
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !2
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !2
  br label %block_0x1, !mcsema_real_eip !2

block_0x1:                                        ; preds = %entry
  store i32 35, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 7) to i32*), !mcsema_real_eip !2
  store i32 27, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 17) to i32*), !mcsema_real_eip !3
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 23) to i32*), !mcsema_real_eip !4
  %EAX.0 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  %EAX_val.1 = load i32, i32* %EAX.0, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  store i1 false, i1* %SF, !mcsema_real_eip !5
  store i1 true, i1* %ZF, !mcsema_real_eip !5
  store i1 true, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  store i64 35, i64* %XAX, !mcsema_real_eip !6
  %1 = load i1, i1* %DF, !mcsema_real_eip !7
  %2 = zext i1 %1 to i64, !mcsema_real_eip !7
  %3 = shl i64 %2, 10, !mcsema_real_eip !7
  %4 = or i64 582, %3, !mcsema_real_eip !7
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !7
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %5 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !7
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 %4, i64* %_allin_new_bt_, !mcsema_real_eip !7
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %5, i64* %XSP, !mcsema_real_eip !7
  %6 = load i64, i64* %_allin_new_bt_, !mcsema_real_eip !8
  store i64 %6, i64* %XAX, !mcsema_real_eip !8
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 8
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %RSP_val.4, i64* %XSP, !mcsema_real_eip !8
  %_new_gep_5 = getelementptr i8, i8* %_new_gep_3, i64 8
  %7 = add i64 %RSP_val.4, 8, !mcsema_real_eip !9
  %_allin_new_bt_6 = bitcast i8* %_new_gep_3 to i64*
  %8 = load i64, i64* %_allin_new_bt_6, !mcsema_real_eip !9
  store i64 %8, i64* %XIP, !mcsema_real_eip !9
  store volatile i8* %_new_gep_5, i8** %_RSP_ptr_
  store i64 %7, i64* %XSP, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare void @start() #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_1.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 8
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 8
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %DF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 15, !mcsema_real_eip !2
  %DF = bitcast i8* %DF_full to i1*, !mcsema_real_eip !2
  br label %block_0x1, !mcsema_real_eip !2

block_0x1:                                        ; preds = %entry
  store i32 35, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 7) to i32*), !mcsema_real_eip !2
  store i32 27, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 17) to i32*), !mcsema_real_eip !3
  store i32 0, i32* inttoptr (i64 add (i64 ptrtoint (%0* @data_0x2c to i64), i64 23) to i32*), !mcsema_real_eip !4
  %EAX.0 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  %EAX_val.1 = load i32, i32* %EAX.0, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  store i1 false, i1* %SF, !mcsema_real_eip !5
  store i1 true, i1* %ZF, !mcsema_real_eip !5
  store i1 true, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  store i64 35, i64* %XAX, !mcsema_real_eip !6
  %1 = load i1, i1* %DF, !mcsema_real_eip !7
  %2 = zext i1 %1 to i64, !mcsema_real_eip !7
  %3 = shl i64 %2, 10, !mcsema_real_eip !7
  %4 = or i64 582, %3, !mcsema_real_eip !7
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !7
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %5 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !7
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store i64 %4, i64* %_allin_new_bt_, !mcsema_real_eip !7
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %5, i64* %XSP, !mcsema_real_eip !7
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_ to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %6, label %7

; <label>:6:                                      ; preds = %block_0x1
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %7

; <label>:7:                                      ; preds = %block_0x1, %6
  %8 = phi i64* [ %_allin_new_bt_, %block_0x1 ], [ %_address_in_parent_stack_bt_, %6 ]
  %_new_load_ = load i64, i64* %8
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !8
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 8
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %RSP_val.4, i64* %XSP, !mcsema_real_eip !8
  %_new_gep_5 = getelementptr i8, i8* %_new_gep_3, i64 8
  %9 = add i64 %RSP_val.4, 8, !mcsema_real_eip !9
  %_allin_new_bt_6 = bitcast i8* %_new_gep_3 to i64*
  %_ptr_to_int_7 = ptrtoint i64* %_allin_new_bt_6 to i64
  %_offset_above_rbp_10 = sub i64 %_ptr_to_int_7, %_local_end_to_int_
  %_pot_address_in_parent_stack_11 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_10
  %_cond1_12 = icmp ugt i8* %_new_gep_3, %_local_stack_end_ptr_
  %_cond2_1_13 = icmp ugt i8* %_new_gep_3, %_parent_stack_end_ptr_
  %_cond2_2_14 = icmp ult i8* %_new_gep_3, %_parent_stack_start_ptr_
  %_cond2_15 = or i1 %_cond2_1_13, %_cond2_2_14
  %_cond4_16 = icmp ule i8* %_pot_address_in_parent_stack_11, %_parent_stack_end_ptr_
  %_cond1_n_cond2_17 = and i1 %_cond1_12, %_cond2_15
  %_cond1_n_cond2_cond3_18 = and i1 %_cond1_n_cond2_17, %_cond4_16
  br i1 %_cond1_n_cond2_cond3_18, label %10, label %11

; <label>:10:                                     ; preds = %7
  %_address_in_parent_stack_bt_20 = bitcast i8* %_pot_address_in_parent_stack_11 to i64*
  br label %11

; <label>:11:                                     ; preds = %7, %10
  %12 = phi i64* [ %_allin_new_bt_6, %7 ], [ %_address_in_parent_stack_bt_20, %10 ]
  %_new_load_21 = load i64, i64* %12
  store i64 %_new_load_21, i64* %XIP, !mcsema_real_eip !9
  store volatile i8* %_new_gep_5, i8** %_RSP_ptr_
  store i64 %9, i64* %XSP, !mcsema_real_eip !9
  ret void, !mcsema_real_eip !9
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 1}
!3 = !{i64 7}
!4 = !{i64 31}
!5 = !{i64 37}
!6 = !{i64 39}
!7 = !{i64 41}
!8 = !{i64 42}
!9 = !{i64 43}
