; ModuleID = 'Output/test_21.clang.trans.opt.bc'
source_filename = "Output/test_21.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl shiftit;"
module asm "  .type shiftit,@function"
module asm "shiftit:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size shiftit,0b-shiftit;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
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
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, align 4
  %3 = bitcast i8* %_new_gep_3 to i32*
  store i32 %EDI_val.5, i32* %3, align 4, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %RSI_val.7 = load i64, i64* %XSI, align 8
  store i64 %RSI_val.7, i64* %_allin_new_bt_7, align 8, !mcsema_real_eip !5
  %4 = inttoptr i64 %RSI_val.7 to i64*
  %5 = load i64, i64* %4, align 8
  %_allin_new_bt_13 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  %6 = zext i32 %EDI_val.5 to i64
  store i64 %6, i64* %XDI, align 8, !mcsema_real_eip !6
  store i64 %6, i64* %XCX, align 8, !mcsema_real_eip !7
  %7 = and i32 %EDI_val.5, 255
  %CL_val.20.zext = zext i32 %7 to i64
  %8 = and i64 %CL_val.20.zext, 63, !mcsema_real_eip !8
  %9 = add nsw i64 %CL_val.20.zext, -1
  %10 = icmp ne i64 %8, 0, !mcsema_real_eip !8
  %11 = select i1 %10, i64 %9, i64 0, !mcsema_real_eip !8
  %12 = zext i1 %10 to i64
  %13 = lshr i64 %5, %11, !mcsema_real_eip !8
  %14 = and i64 %13, 1, !mcsema_real_eip !8
  %15 = icmp ne i64 %14, 0, !mcsema_real_eip !8
  %16 = load i1, i1* %CF, align 1, !mcsema_real_eip !8
  %17 = select i1 %10, i1 %15, i1 %16, !mcsema_real_eip !8
  %18 = lshr i64 %13, %12
  %19 = icmp eq i64 %8, 1, !mcsema_real_eip !8
  %20 = load i1, i1* %OF, align 1, !mcsema_real_eip !8
  %21 = icmp slt i64 %5, 0
  %22 = select i1 %19, i1 %21, i1 %20, !mcsema_real_eip !8
  store i1 %22, i1* %OF, align 1, !mcsema_real_eip !8
  store i1 %17, i1* %CF, align 1, !mcsema_real_eip !8
  %23 = load i1, i1* %ZF, align 1, !mcsema_real_eip !8
  %24 = icmp eq i64 %18, 0, !mcsema_real_eip !8
  %25 = select i1 %10, i1 %24, i1 %23, !mcsema_real_eip !8
  store i1 %25, i1* %ZF, align 1, !mcsema_real_eip !8
  %26 = load i1, i1* %SF, align 1, !mcsema_real_eip !8
  %27 = icmp slt i64 %18, 0, !mcsema_real_eip !8
  %28 = select i1 %10, i1 %27, i1 %26, !mcsema_real_eip !8
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !8
  %29 = load i1, i1* %PF, align 1, !mcsema_real_eip !8
  %30 = trunc i64 %18 to i8, !mcsema_real_eip !8
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !8
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %10, i1 %33, i1 %29, !mcsema_real_eip !8
  store i1 %34, i1* %PF, align 1, !mcsema_real_eip !8
  store i64 %18, i64* %_allin_new_bt_13, align 8, !mcsema_real_eip !9
  store i64 %18, i64* %XSI, align 8, !mcsema_real_eip !10
  store i64 %RSI_val.7, i64* %XAX, align 8, !mcsema_real_eip !11
  store i64 %18, i64* %4, align 8, !mcsema_real_eip !12
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.27 = load i64, i64* %XSP, align 8, !mcsema_real_eip !13
  %_allin_new_bt_30 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29 to i64*
  %35 = load i64, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !13
  store volatile i64 %35, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %35, i64* %XBP, align 8, !mcsema_real_eip !13
  %_new_gep_31 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29, i64 8
  %36 = add i64 %RSP_val.27, 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_31, i8** %_RSP_ptr_, align 8
  store i64 %36, i64* %XSP, align 8, !mcsema_real_eip !13
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29, i64 16
  %37 = add i64 %RSP_val.27, 16, !mcsema_real_eip !14
  %_allin_new_bt_34 = bitcast i8* %_new_gep_31 to i64*
  %38 = load i64, i64* %_allin_new_bt_34, align 8, !mcsema_real_eip !14
  store i64 %38, i64* %XIP, align 8, !mcsema_real_eip !14
  store volatile i8* %_new_gep_33, i8** %_RSP_ptr_, align 8
  store i64 %37, i64* %XSP, align 8, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
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
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, align 4, !mcsema_real_eip !4
  %2 = bitcast i8* %_new_gep_3 to i32*
  store i32 %EDI_val.5, i32* %2, align 4, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %RSI_val.7 = load i64, i64* %XSI, align 8, !mcsema_real_eip !5
  store i64 %RSI_val.7, i64* %_allin_new_bt_7, align 8, !mcsema_real_eip !5
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %3 = inttoptr i64 %RSI_val.7 to i64*, !mcsema_real_eip !15
  %_ptr_bt_37 = inttoptr i64 %RSI_val.7 to i8*
  %_offset_above_rbp_38 = sub i64 %RSI_val.7, %_local_end_to_int_
  %_pot_address_in_parent_stack_39 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_38
  %_cond1_40 = icmp ugt i8* %_ptr_bt_37, %_local_stack_end_ptr_
  %_cond2_1_41 = icmp ugt i8* %_ptr_bt_37, %_parent_stack_end_ptr_
  %_cond2_2_42 = icmp ult i8* %_ptr_bt_37, %_parent_stack_start_ptr_
  %_cond2_43 = or i1 %_cond2_1_41, %_cond2_2_42
  %_cond4_44 = icmp ule i8* %_pot_address_in_parent_stack_39, %_parent_stack_end_ptr_
  %_cond1_n_cond2_45 = and i1 %_cond1_40, %_cond2_43
  %_cond1_n_cond2_cond3_46 = and i1 %_cond4_44, %_cond1_n_cond2_45
  %_address_in_parent_stack_bt_48 = bitcast i8* %_pot_address_in_parent_stack_39 to i64*
  %_address_in_parent_stack_bt_48. = select i1 %_cond1_n_cond2_cond3_46, i64* %_address_in_parent_stack_bt_48, i64* %3
  %_new_load_49 = load i64, i64* %_address_in_parent_stack_bt_48., align 8
  %_allin_new_bt_13 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  %_new_gep_15 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %4 = bitcast i8* %_new_gep_15 to i32*
  %_new_load_64 = load i32, i32* %4, align 4
  %5 = zext i32 %_new_load_64 to i64
  store i64 %5, i64* %XDI, align 8, !mcsema_real_eip !6
  store i64 %5, i64* %XCX, align 8, !mcsema_real_eip !7
  %6 = and i32 %_new_load_64, 255
  %CL_val.20.zext = zext i32 %6 to i64
  %7 = and i64 %CL_val.20.zext, 63, !mcsema_real_eip !8
  %8 = add nsw i64 %CL_val.20.zext, -1
  %9 = icmp ne i64 %7, 0, !mcsema_real_eip !8
  %10 = select i1 %9, i64 %8, i64 0, !mcsema_real_eip !8
  %11 = zext i1 %9 to i64
  %12 = lshr i64 %_new_load_49, %10, !mcsema_real_eip !8
  %13 = and i64 %12, 1, !mcsema_real_eip !8
  %14 = icmp ne i64 %13, 0, !mcsema_real_eip !8
  %15 = load i1, i1* %CF, align 1, !mcsema_real_eip !8
  %16 = select i1 %9, i1 %14, i1 %15, !mcsema_real_eip !8
  %17 = lshr i64 %12, %11, !mcsema_real_eip !8
  %18 = icmp eq i64 %7, 1, !mcsema_real_eip !8
  %19 = load i1, i1* %OF, align 1, !mcsema_real_eip !8
  %20 = icmp slt i64 %_new_load_49, 0
  %21 = select i1 %18, i1 %20, i1 %19, !mcsema_real_eip !8
  store i1 %21, i1* %OF, align 1, !mcsema_real_eip !8
  store i1 %16, i1* %CF, align 1, !mcsema_real_eip !8
  %22 = load i1, i1* %ZF, align 1, !mcsema_real_eip !8
  %23 = icmp eq i64 %17, 0, !mcsema_real_eip !8
  %24 = select i1 %9, i1 %23, i1 %22, !mcsema_real_eip !8
  store i1 %24, i1* %ZF, align 1, !mcsema_real_eip !8
  %25 = load i1, i1* %SF, align 1, !mcsema_real_eip !8
  %26 = icmp slt i64 %17, 0, !mcsema_real_eip !8
  %27 = select i1 %9, i1 %26, i1 %25, !mcsema_real_eip !8
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !8
  %28 = load i1, i1* %PF, align 1, !mcsema_real_eip !8
  %29 = trunc i64 %17 to i8, !mcsema_real_eip !8
  %30 = call i8 @llvm.ctpop.i8(i8 %29), !mcsema_real_eip !8
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %9, i1 %32, i1 %28, !mcsema_real_eip !8
  store i1 %33, i1* %PF, align 1, !mcsema_real_eip !8
  store i64 %17, i64* %XSI, align 8, !mcsema_real_eip !8
  store i64 %17, i64* %_allin_new_bt_13, align 8, !mcsema_real_eip !9
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_24 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_23, i64 -24
  %_ptr_to_int_80 = ptrtoint i8* %_new_gep_24 to i64
  %_offset_above_rbp_83 = sub i64 %_ptr_to_int_80, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_new_gep_24, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_new_gep_24, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_new_gep_24, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  %.v3 = select i1 %_cond1_n_cond2_cond3_91, i8* %_pot_address_in_parent_stack_84, i8* %_new_gep_24
  %34 = bitcast i8* %.v3 to i64*
  %_new_load_94 = load i64, i64* %34, align 8
  store i64 %_new_load_94, i64* %XSI, align 8, !mcsema_real_eip !10
  %_new_gep_27 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_23, i64 -16
  %_ptr_to_int_95 = ptrtoint i8* %_new_gep_27 to i64
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_95, %_local_end_to_int_
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  %_address_in_parent_stack_bt_108._allin_new_bt_28.v = select i1 %_cond1_n_cond2_cond3_106, i8* %_pot_address_in_parent_stack_99, i8* %_new_gep_27
  %_address_in_parent_stack_bt_108._allin_new_bt_28 = bitcast i8* %_address_in_parent_stack_bt_108._allin_new_bt_28.v to i64*
  %_new_load_109 = load i64, i64* %_address_in_parent_stack_bt_108._allin_new_bt_28, align 8
  store i64 %_new_load_109, i64* %XAX, align 8, !mcsema_real_eip !11
  %35 = inttoptr i64 %_new_load_109 to i64*, !mcsema_real_eip !12
  store i64 %_new_load_94, i64* %35, align 8, !mcsema_real_eip !12
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.27 = load i64, i64* %XSP, align 8, !mcsema_real_eip !13
  %_ptr_to_int_110 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29 to i64
  %_offset_above_rbp_113 = sub i64 %_ptr_to_int_110, %_local_end_to_int_
  %_pot_address_in_parent_stack_114 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_113
  %_cond1_115 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29, %_local_stack_end_ptr_
  %_cond2_1_116 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29, %_parent_stack_end_ptr_
  %_cond2_2_117 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29, %_parent_stack_start_ptr_
  %_cond2_118 = or i1 %_cond2_1_116, %_cond2_2_117
  %_cond4_119 = icmp ule i8* %_pot_address_in_parent_stack_114, %_parent_stack_end_ptr_
  %_cond1_n_cond2_120 = and i1 %_cond1_115, %_cond2_118
  %_cond1_n_cond2_cond3_121 = and i1 %_cond1_n_cond2_120, %_cond4_119
  %.v4 = select i1 %_cond1_n_cond2_cond3_121, i8* %_pot_address_in_parent_stack_114, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29
  %36 = bitcast i8* %.v4 to i64*
  %_new_load_124 = load i64, i64* %36, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_124 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_124, i64* %XBP, align 8, !mcsema_real_eip !13
  %_new_gep_31 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29, i64 8
  %37 = add i64 %RSP_val.27, 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_31, i8** %_RSP_ptr_, align 8
  store i64 %37, i64* %XSP, align 8, !mcsema_real_eip !13
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_29, i64 16
  %38 = add i64 %RSP_val.27, 16, !mcsema_real_eip !14
  %_ptr_to_int_125 = ptrtoint i8* %_new_gep_31 to i64
  %_offset_above_rbp_128 = sub i64 %_ptr_to_int_125, %_local_end_to_int_
  %_pot_address_in_parent_stack_129 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_128
  %_cond1_130 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_131 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_132 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_133 = or i1 %_cond2_1_131, %_cond2_2_132
  %_cond4_134 = icmp ule i8* %_pot_address_in_parent_stack_129, %_parent_stack_end_ptr_
  %_cond1_n_cond2_135 = and i1 %_cond1_130, %_cond2_133
  %_cond1_n_cond2_cond3_136 = and i1 %_cond1_n_cond2_135, %_cond4_134
  %_address_in_parent_stack_bt_138._allin_new_bt_34.v = select i1 %_cond1_n_cond2_cond3_136, i8* %_pot_address_in_parent_stack_129, i8* %_new_gep_31
  %_address_in_parent_stack_bt_138._allin_new_bt_34 = bitcast i8* %_address_in_parent_stack_bt_138._allin_new_bt_34.v to i64*
  %_new_load_139 = load i64, i64* %_address_in_parent_stack_bt_138._allin_new_bt_34, align 8
  store i64 %_new_load_139, i64* %XIP, align 8, !mcsema_real_eip !14
  store volatile i8* %_new_gep_33, i8** %_RSP_ptr_, align 8
  store i64 %38, i64* %XSP, align 8, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
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
!6 = !{i64 29}
!7 = !{i64 31}
!8 = !{i64 33}
!9 = !{i64 36}
!10 = !{i64 40}
!11 = !{i64 44}
!12 = !{i64 48}
!13 = !{i64 51}
!14 = !{i64 52}
!15 = !{i64 15}
