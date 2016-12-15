; ModuleID = 'Output/test_16.clang.trans.opt.bc'
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

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline norecurse nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [20 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [20 x i8], [20 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [20 x i8], [20 x i8]* %_local_stack_start_ptr_1, i64 0, i64 12
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [20 x i8], [20 x i8]* %_local_stack_start_ptr_1, i64 0, i64 4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %RDI_val.4 = load i64, i64* %XDI, align 8, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !4
  %3 = bitcast [20 x i8]* %_local_stack_start_ptr_1 to i32*
  store i32 10, i32* %3, align 4, !mcsema_real_eip !5
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !6
  store volatile i64 undef, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_13 = getelementptr inbounds [20 x i8], [20 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  store volatile i8* %_new_gep_13, i8** %_RSP_ptr_, align 8
  %_new_gep_15 = getelementptr [20 x i8], [20 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  %4 = add i64 %RSP_val.1, 8, !mcsema_real_eip !7
  store volatile i8* %_new_gep_15, i8** %_RSP_ptr_, align 8
  store i64 %4, i64* %XSP, align 8, !mcsema_real_eip !7
  ret void, !mcsema_real_eip !7
}

; Function Attrs: noinline norecurse nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [20 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [20 x i8], [20 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [20 x i8], [20 x i8]* %_local_stack_start_ptr_1, i64 0, i64 12
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  %_new_gep_3 = getelementptr inbounds [20 x i8], [20 x i8]* %_local_stack_start_ptr_1, i64 0, i64 4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %RDI_val.4 = load i64, i64* %XDI, align 8, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !4
  %1 = bitcast [20 x i8]* %_local_stack_start_ptr_1 to i32*
  store i32 10, i32* %1, align 4, !mcsema_real_eip !5
  store i64 10, i64* %XAX, align 8, !mcsema_real_eip !6
  store volatile i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_ptr2int_, i64* %XBP, align 8, !mcsema_real_eip !8
  %_new_gep_13 = getelementptr inbounds [20 x i8], [20 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  store volatile i8* %_new_gep_13, i8** %_RSP_ptr_, align 8
  %_new_gep_15 = getelementptr [20 x i8], [20 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  %2 = add i64 %RSP_val.1, 8, !mcsema_real_eip !7
  %3 = bitcast i8* %_new_gep_13 to i64*
  %_new_load_46 = load i64, i64* %3, align 8
  store i64 %_new_load_46, i64* %XIP, align 8, !mcsema_real_eip !7
  store volatile i8* %_new_gep_15, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !7
  ret void, !mcsema_real_eip !7
}

attributes #0 = { noinline norecurse nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 15}
!7 = !{i64 19}
!8 = !{i64 18}
