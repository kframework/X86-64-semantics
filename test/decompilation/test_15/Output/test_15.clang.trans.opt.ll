; ModuleID = 'Output/test_15.clang.trans.opt.bc'
source_filename = "Output/test_15.clang.bc"
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
module asm "  .globl doOp;"
module asm "  .type doOp,@function"
module asm "doOp:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doOp,0b-doOp;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x28 = internal global %0 <{ [4 x i8] c"\01\00\00\00" }>, align 64

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [16 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 4
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, align 4
  %3 = bitcast i8* %_new_gep_3 to i32*
  store i32 %EDI_val.5, i32* %3, align 4, !mcsema_real_eip !4
  %4 = load i32, i32* bitcast (%0* @data_0x28 to i32*), align 64, !mcsema_real_eip !5
  %5 = zext i32 %4 to i64
  %6 = bitcast [16 x i8]* %_local_stack_start_ptr_1 to i32*
  store i32 %4, i32* %6, align 4, !mcsema_real_eip !6
  %7 = zext i32 %EDI_val.5 to i64, !mcsema_real_eip !7
  store i64 %7, i64* %XDI, align 8, !mcsema_real_eip !7
  %8 = load i32, i32* bitcast (%0* @data_0x28 to i32*), align 64, !mcsema_real_eip !8
  %9 = add i32 %EDI_val.5, %8, !mcsema_real_eip !8
  %10 = xor i32 %9, %8, !mcsema_real_eip !8
  %11 = xor i32 %10, %EDI_val.5, !mcsema_real_eip !8
  %12 = and i32 %11, 16, !mcsema_real_eip !8
  %13 = icmp ne i32 %12, 0, !mcsema_real_eip !8
  store i1 %13, i1* %AF, align 1, !mcsema_real_eip !8
  %14 = icmp slt i32 %9, 0
  store i1 %14, i1* %SF, align 1, !mcsema_real_eip !8
  %15 = icmp eq i32 %9, 0, !mcsema_real_eip !8
  store i1 %15, i1* %ZF, align 1, !mcsema_real_eip !8
  %16 = xor i32 %8, -2147483648, !mcsema_real_eip !8
  %17 = xor i32 %16, %EDI_val.5, !mcsema_real_eip !8
  %18 = and i32 %10, %17, !mcsema_real_eip !8
  %19 = icmp slt i32 %18, 0
  store i1 %19, i1* %OF, align 1, !mcsema_real_eip !8
  %20 = trunc i32 %9 to i8, !mcsema_real_eip !8
  %21 = call i8 @llvm.ctpop.i8(i8 %20), !mcsema_real_eip !8
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  store i1 %23, i1* %PF, align 1, !mcsema_real_eip !8
  %24 = icmp ult i32 %9, %8, !mcsema_real_eip !8
  store i1 %24, i1* %CF, align 1, !mcsema_real_eip !8
  %25 = zext i32 %9 to i64, !mcsema_real_eip !8
  store i64 %25, i64* %XDI, align 8, !mcsema_real_eip !8
  store i32 %9, i32* bitcast (%0* @data_0x28 to i32*), align 64, !mcsema_real_eip !9
  store i64 %5, i64* %XAX, align 8, !mcsema_real_eip !10
  %RSP_val.15 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  store volatile i64 undef, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_16 = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  store volatile i8* %_new_gep_16, i8** %_RSP_ptr_, align 8
  %_new_gep_18 = getelementptr [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %26 = add i64 %RSP_val.15, 16, !mcsema_real_eip !12
  store volatile i8* %_new_gep_18, i8** %_RSP_ptr_, align 8
  store i64 %26, i64* %XSP, align 8, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [16 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 4
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, align 4, !mcsema_real_eip !4
  %2 = bitcast i8* %_new_gep_3 to i32*
  store i32 %EDI_val.5, i32* %2, align 4, !mcsema_real_eip !4
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 ptrtoint (%0* @data_0x28 to i64), %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%0, %0* @data_0x28, i64 0, i32 0, i64 0)
  %_cond2_1_ = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%0, %0* @data_0x28, i64 0, i32 0, i64 0)
  %_cond2_2_ = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%0, %0* @data_0x28, i64 0, i32 0, i64 0)
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  %3 = select i1 %_cond1_n_cond2_cond3_, i32* %_address_in_parent_stack_bt_, i32* bitcast (%0* @data_0x28 to i32*)
  %_new_load_ = load i32, i32* %3, align 4
  %4 = bitcast [16 x i8]* %_local_stack_start_ptr_1 to i32*
  store i32 %_new_load_, i32* %4, align 4, !mcsema_real_eip !6
  %_new_gep_9 = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 4
  %_address_in_parent_stack_bt_31. = bitcast i8* %_new_gep_9 to i32*
  %_new_load_32 = load i32, i32* %_address_in_parent_stack_bt_31., align 4
  %5 = zext i32 %_new_load_32 to i64, !mcsema_real_eip !7
  store i64 %5, i64* %XDI, align 8, !mcsema_real_eip !7
  %_new_load_45 = load i32, i32* %3, align 4
  %6 = add i32 %_new_load_32, %_new_load_45, !mcsema_real_eip !8
  %7 = xor i32 %6, %_new_load_45, !mcsema_real_eip !8
  %8 = xor i32 %7, %_new_load_32, !mcsema_real_eip !8
  %9 = and i32 %8, 16, !mcsema_real_eip !8
  %10 = icmp ne i32 %9, 0, !mcsema_real_eip !8
  store i1 %10, i1* %AF, align 1, !mcsema_real_eip !8
  %11 = icmp slt i32 %6, 0
  store i1 %11, i1* %SF, align 1, !mcsema_real_eip !8
  %12 = icmp eq i32 %6, 0, !mcsema_real_eip !8
  store i1 %12, i1* %ZF, align 1, !mcsema_real_eip !8
  %13 = xor i32 %_new_load_45, -2147483648, !mcsema_real_eip !8
  %14 = xor i32 %13, %_new_load_32, !mcsema_real_eip !8
  %15 = and i32 %7, %14, !mcsema_real_eip !8
  %16 = icmp slt i32 %15, 0
  store i1 %16, i1* %OF, align 1, !mcsema_real_eip !8
  %17 = trunc i32 %6 to i8, !mcsema_real_eip !8
  %18 = call i8 @llvm.ctpop.i8(i8 %17), !mcsema_real_eip !8
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  store i1 %20, i1* %PF, align 1, !mcsema_real_eip !8
  %21 = icmp ult i32 %6, %_new_load_45, !mcsema_real_eip !8
  store i1 %21, i1* %CF, align 1, !mcsema_real_eip !8
  %22 = zext i32 %6 to i64, !mcsema_real_eip !8
  store i64 %22, i64* %XDI, align 8, !mcsema_real_eip !8
  store i32 %6, i32* bitcast (%0* @data_0x28 to i32*), align 64, !mcsema_real_eip !9
  %_address_in_parent_stack_bt_59. = bitcast [16 x i8]* %_local_stack_start_ptr_1 to i32*
  %_new_load_60 = load i32, i32* %_address_in_parent_stack_bt_59., align 4
  %23 = zext i32 %_new_load_60 to i64, !mcsema_real_eip !10
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !10
  %RSP_val.15 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  store volatile i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_ptr2int_, i64* %XBP, align 8, !mcsema_real_eip !11
  %_new_gep_16 = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  store volatile i8* %_new_gep_16, i8** %_RSP_ptr_, align 8
  %_new_gep_18 = getelementptr [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %24 = add i64 %RSP_val.15, 16, !mcsema_real_eip !12
  %_address_in_parent_stack_bt_89._allin_new_bt_19 = bitcast i8* %_new_gep_16 to i64*
  %_new_load_90 = load i64, i64* %_address_in_parent_stack_bt_89._allin_new_bt_19, align 8
  store i64 %_new_load_90, i64* %XIP, align 8, !mcsema_real_eip !12
  store volatile i8* %_new_gep_18, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XSP, align 8, !mcsema_real_eip !12
  ret void, !mcsema_real_eip !12
}

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 7}
!6 = !{i64 14}
!7 = !{i64 17}
!8 = !{i64 20}
!9 = !{i64 27}
!10 = !{i64 34}
!11 = !{i64 37}
!12 = !{i64 38}
