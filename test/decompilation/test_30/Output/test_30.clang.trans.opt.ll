; ModuleID = 'Output/test_30.clang.trans.opt.bc'
source_filename = "Output/test_30.clang.bc"
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
module asm "  .globl fprintf;"
module asm "  .globl _fprintf;"
module asm "  .type _fprintf,@function"
module asm "_fprintf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq fprintf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _fprintf,0b-_fprintf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl print_it;"
module asm "  .type print_it,@function"
module asm "print_it:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size print_it,0b-print_it;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@stderr = external global [8 x i8]
@data_0x36 = internal constant %0 <{ [4 x i8] c"%s\0A\00" }>, align 64

; Function Attrs: noinline
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
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.1, -24
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
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x36 to i64), i64* %XSI, align 8, !mcsema_real_eip !5
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, align 8
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !6
  %13 = load i64, i64* bitcast ([8 x i8]* @stderr to i64*), align 8, !mcsema_real_eip !7
  store i64 %13, i64* %XDI, align 8, !mcsema_real_eip !7
  store i64 %RDI_val.5, i64* %XDX, align 8, !mcsema_real_eip !8
  %AL.7 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 0, i8* %AL.7, align 1, !mcsema_real_eip !9
  %_new_gep_20 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %14 = add i64 %RSP_val.1, -32
  %_allin_new_bt_21 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !10
  %15 = call x86_64_sysvcc i64 @_fprintf(i64 %13, i64 ptrtoint (%0* @data_0x36 to i64), i64 %RDI_val.5)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_225 = load i8*, i8** %12, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_225, i64 -12
  %16 = trunc i64 %15 to i32
  %17 = bitcast i8* %_new_gep_23 to i32*
  store i32 %16, i32* %17, align 4, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.12, align 4, !mcsema_real_eip !13
  %18 = zext i32 %ECX_val.20 to i64, !mcsema_real_eip !13
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !13
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.21 = load i64, i64* %XSP, align 8, !mcsema_real_eip !14
  %_new_gep_26 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 16
  %19 = add i64 %RSP_val.21, 16, !mcsema_real_eip !14
  %_trans_p2i_27 = ptrtoint i8* %_new_gep_26 to i64
  %_trans_p2i_28 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 to i64
  %_trans_xor_29 = xor i64 %_trans_p2i_27, %_trans_p2i_28
  %20 = and i64 %_trans_xor_29, 16
  %21 = icmp eq i64 %20, 0
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !14
  %22 = icmp slt i64 %19, 0
  store i1 %22, i1* %SF, align 1, !mcsema_real_eip !14
  %_trans_icmp_eq_31 = icmp eq i8* %_new_gep_26, null
  store i1 %_trans_icmp_eq_31, i1* %ZF, align 1, !mcsema_real_eip !14
  %23 = xor i64 %_trans_p2i_28, -9223372036854775808, !mcsema_real_eip !14
  %24 = and i64 %_trans_xor_29, %23, !mcsema_real_eip !14
  %25 = icmp slt i64 %24, 0
  store i1 %25, i1* %OF, align 1, !mcsema_real_eip !14
  %_trans_trunc_38 = trunc i64 %_trans_p2i_27 to i8
  %26 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_38), !mcsema_real_eip !14
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !14
  %_trans_icmp_ne_40 = icmp ne i64 %RSP_val.21, %_trans_p2i_27
  store i1 %_trans_icmp_ne_40, i1* %CF, align 1, !mcsema_real_eip !14
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %19, i64* %XSP, align 8, !mcsema_real_eip !14
  %_allin_new_bt_42 = bitcast i8* %_new_gep_26 to i64*
  %29 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !15
  store volatile i64 %29, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %29, i64* %XBP, align 8, !mcsema_real_eip !15
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 24
  %30 = add i64 %RSP_val.21, 24, !mcsema_real_eip !15
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_, align 8
  store i64 %30, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 32
  %31 = add i64 %RSP_val.21, 32, !mcsema_real_eip !16
  %_allin_new_bt_46 = bitcast i8* %_new_gep_43 to i64*
  %32 = load i64, i64* %_allin_new_bt_46, align 8, !mcsema_real_eip !16
  store i64 %32, i64* %XIP, align 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_45, i8** %_RSP_ptr_, align 8
  store i64 %31, i64* %XSP, align 8, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_fprintf(i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
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
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -24
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
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x36 to i64), i64* %XSI, align 8, !mcsema_real_eip !5
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !6
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 ptrtoint ([8 x i8]* @stderr to i64), %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds ([8 x i8], [8 x i8]* @stderr, i64 0, i64 0)
  %_cond2_1_ = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds ([8 x i8], [8 x i8]* @stderr, i64 0, i64 0)
  %_cond2_2_ = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds ([8 x i8], [8 x i8]* @stderr, i64 0, i64 0)
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  %11 = select i1 %_cond1_n_cond2_cond3_, i64* %_address_in_parent_stack_bt_, i64* bitcast ([8 x i8]* @stderr to i64*)
  %_new_load_ = load i64, i64* %11, align 8
  store i64 %_new_load_, i64* %XDI, align 8, !mcsema_real_eip !7
  %_address_in_parent_stack_bt_58._allin_new_bt_18 = bitcast i8* %_new_gep_14 to i64*
  %_new_load_59 = load i64, i64* %_address_in_parent_stack_bt_58._allin_new_bt_18, align 8
  store i64 %_new_load_59, i64* %XDX, align 8, !mcsema_real_eip !8
  %AL.7 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 0, i8* %AL.7, align 1, !mcsema_real_eip !9
  %_new_gep_20 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.1, -32
  %_allin_new_bt_21 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !10
  %13 = call x86_64_sysvcc i64 @_fprintf(i64 %_new_load_, i64 ptrtoint (%0* @data_0x36 to i64), i64 %_new_load_59)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !11
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -12
  %14 = trunc i64 %13 to i32
  %15 = bitcast i8* %_new_gep_23 to i32*
  store i32 %14, i32* %15, align 4, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.12, align 4, !mcsema_real_eip !13
  %16 = zext i32 %ECX_val.20 to i64, !mcsema_real_eip !13
  store i64 %16, i64* %XAX, align 8, !mcsema_real_eip !13
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.21 = load i64, i64* %XSP, align 8, !mcsema_real_eip !14
  %_new_gep_26 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 16
  %17 = add i64 %RSP_val.21, 16, !mcsema_real_eip !14
  %_trans_p2i_27 = ptrtoint i8* %_new_gep_26 to i64
  %_trans_p2i_28 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 to i64
  %_trans_xor_29 = xor i64 %_trans_p2i_27, %_trans_p2i_28
  %18 = and i64 %_trans_xor_29, 16
  %19 = icmp eq i64 %18, 0
  store i1 %19, i1* %AF, align 1, !mcsema_real_eip !14
  %20 = icmp slt i64 %17, 0
  store i1 %20, i1* %SF, align 1, !mcsema_real_eip !14
  %_trans_icmp_eq_31 = icmp eq i8* %_new_gep_26, null
  store i1 %_trans_icmp_eq_31, i1* %ZF, align 1, !mcsema_real_eip !14
  %21 = xor i64 %_trans_p2i_28, -9223372036854775808, !mcsema_real_eip !14
  %22 = and i64 %_trans_xor_29, %21, !mcsema_real_eip !14
  %23 = icmp slt i64 %22, 0
  store i1 %23, i1* %OF, align 1, !mcsema_real_eip !14
  %_trans_trunc_38 = trunc i64 %_trans_p2i_27 to i8
  %24 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_38), !mcsema_real_eip !14
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  store i1 %26, i1* %PF, align 1, !mcsema_real_eip !14
  %_trans_icmp_ne_40 = icmp ne i64 %RSP_val.21, %_trans_p2i_27
  store i1 %_trans_icmp_ne_40, i1* %CF, align 1, !mcsema_real_eip !14
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %17, i64* %XSP, align 8, !mcsema_real_eip !14
  %_offset_above_rbp_63 = sub i64 %_trans_p2i_27, %_local_end_to_int_
  %_pot_address_in_parent_stack_64 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_63
  %_cond1_65 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_66 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_67 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_68 = or i1 %_cond2_1_66, %_cond2_2_67
  %_cond4_69 = icmp ule i8* %_pot_address_in_parent_stack_64, %_parent_stack_end_ptr_
  %_cond1_n_cond2_70 = and i1 %_cond1_65, %_cond2_68
  %_cond1_n_cond2_cond3_71 = and i1 %_cond1_n_cond2_70, %_cond4_69
  %.v = select i1 %_cond1_n_cond2_cond3_71, i8* %_pot_address_in_parent_stack_64, i8* %_new_gep_26
  %27 = bitcast i8* %.v to i64*
  %_new_load_74 = load i64, i64* %27, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_74 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_74, i64* %XBP, align 8, !mcsema_real_eip !15
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 24
  %28 = add i64 %RSP_val.21, 24, !mcsema_real_eip !15
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_, align 8
  store i64 %28, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 32
  %29 = add i64 %RSP_val.21, 32, !mcsema_real_eip !16
  %_ptr_to_int_75 = ptrtoint i8* %_new_gep_43 to i64
  %_offset_above_rbp_78 = sub i64 %_ptr_to_int_75, %_local_end_to_int_
  %_pot_address_in_parent_stack_79 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_78
  %_cond1_80 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_81 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_82 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_83 = or i1 %_cond2_1_81, %_cond2_2_82
  %_cond4_84 = icmp ule i8* %_pot_address_in_parent_stack_79, %_parent_stack_end_ptr_
  %_cond1_n_cond2_85 = and i1 %_cond1_80, %_cond2_83
  %_cond1_n_cond2_cond3_86 = and i1 %_cond1_n_cond2_85, %_cond4_84
  %_address_in_parent_stack_bt_88._allin_new_bt_46.v = select i1 %_cond1_n_cond2_cond3_86, i8* %_pot_address_in_parent_stack_79, i8* %_new_gep_43
  %_address_in_parent_stack_bt_88._allin_new_bt_46 = bitcast i8* %_address_in_parent_stack_bt_88._allin_new_bt_46.v to i64*
  %_new_load_89 = load i64, i64* %_address_in_parent_stack_bt_88._allin_new_bt_46, align 8
  store i64 %_new_load_89, i64* %XIP, align 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_45, i8** %_RSP_ptr_, align 8
  store i64 %29, i64* %XSP, align 8, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
}

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 30}
!9 = !{i64 34}
!10 = !{i64 36}
!11 = !{i64 41}
!12 = !{i64 43}
!13 = !{i64 46}
!14 = !{i64 48}
!15 = !{i64 52}
!16 = !{i64 53}
