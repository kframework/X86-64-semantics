; ModuleID = 'Output/test_0_1.clang.trans.opt.bc'
source_filename = "Output/test_0_1.clang.bc"
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
module asm "  .globl printf;"
module asm "  .globl _printf;"
module asm "  .type _printf,@function"
module asm "_printf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq printf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _printf,0b-_printf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [6 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x2d = internal constant %0 <{ [6 x i8] c"test \00" }>, align 64

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
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
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
  store i64 ptrtoint (%0* @data_0x2d to i64), i64* %XDI, align 8, !mcsema_real_eip !5
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !6
  %AL.5 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 0, i8* %AL.5, align 1, !mcsema_real_eip !7
  %RSI_val.7 = load i64, i64* %XSI, align 8, !mcsema_real_eip !8
  %RDX_val.8 = load i64, i64* %XDX, align 8, !mcsema_real_eip !8
  %RCX_val.9 = load i64, i64* %XCX, align 8, !mcsema_real_eip !8
  %R8_val.10 = load i64, i64* %R8, align 8, !mcsema_real_eip !8
  %R9_val.11 = load i64, i64* %R9, align 8, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %14 = load i64, i64* %_allin_new_bt_19, align 8, !mcsema_real_eip !8
  %_new_gep_29 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %15 = add i64 %RSP_val.1, -32
  %_allin_new_bt_30 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !8
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %15, i64* %XSP, align 8, !mcsema_real_eip !8
  %16 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x2d to i64), i64 %RSI_val.7, i64 %RDX_val.8, i64 %RCX_val.9, i64 %R8_val.10, i64 %R9_val.11, i64 undef, i64 %14, i64 undef, i64 undef, i64 undef, i64 undef)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_314 = load i8*, i8** %12, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_314, i64 -8
  %17 = trunc i64 %16 to i32
  %18 = bitcast i8* %_new_gep_32 to i32*
  store i32 %17, i32* %18, align 4, !mcsema_real_eip !10
  %ECX_val.22 = load i32, i32* %ECX.14, align 4, !mcsema_real_eip !11
  %19 = zext i32 %ECX_val.22 to i64, !mcsema_real_eip !11
  store i64 %19, i64* %XAX, align 8, !mcsema_real_eip !11
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.23 = load i64, i64* %XSP, align 8, !mcsema_real_eip !12
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34, i64 16
  %20 = add i64 %RSP_val.23, 16, !mcsema_real_eip !12
  %_trans_p2i_36 = ptrtoint i8* %_new_gep_35 to i64
  %_trans_p2i_37 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34 to i64
  %_trans_xor_38 = xor i64 %_trans_p2i_36, %_trans_p2i_37
  %21 = and i64 %_trans_xor_38, 16
  %22 = icmp eq i64 %21, 0
  store i1 %22, i1* %AF, align 1, !mcsema_real_eip !12
  %23 = icmp slt i64 %20, 0
  store i1 %23, i1* %SF, align 1, !mcsema_real_eip !12
  %_trans_icmp_eq_40 = icmp eq i8* %_new_gep_35, null
  store i1 %_trans_icmp_eq_40, i1* %ZF, align 1, !mcsema_real_eip !12
  %24 = xor i64 %_trans_p2i_37, -9223372036854775808, !mcsema_real_eip !12
  %25 = and i64 %_trans_xor_38, %24, !mcsema_real_eip !12
  %26 = icmp slt i64 %25, 0
  store i1 %26, i1* %OF, align 1, !mcsema_real_eip !12
  %_trans_trunc_47 = trunc i64 %_trans_p2i_36 to i8
  %27 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_47), !mcsema_real_eip !12
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  store i1 %29, i1* %PF, align 1, !mcsema_real_eip !12
  %_trans_icmp_ne_49 = icmp ne i64 %_trans_p2i_36, %RSP_val.23
  store i1 %_trans_icmp_ne_49, i1* %CF, align 1, !mcsema_real_eip !12
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_, align 8
  store i64 %20, i64* %XSP, align 8, !mcsema_real_eip !12
  %_allin_new_bt_51 = bitcast i8* %_new_gep_35 to i64*
  %30 = load i64, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !13
  store volatile i64 %30, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %30, i64* %XBP, align 8, !mcsema_real_eip !13
  %_new_gep_52 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34, i64 24
  %31 = add i64 %RSP_val.23, 24, !mcsema_real_eip !13
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_, align 8
  store i64 %31, i64* %XSP, align 8, !mcsema_real_eip !13
  %_new_gep_54 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34, i64 32
  %32 = add i64 %RSP_val.23, 32, !mcsema_real_eip !14
  %_allin_new_bt_55 = bitcast i8* %_new_gep_52 to i64*
  %33 = load i64, i64* %_allin_new_bt_55, align 8, !mcsema_real_eip !14
  store i64 %33, i64* %XIP, align 8, !mcsema_real_eip !14
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_, align 8
  store i64 %32, i64* %XSP, align 8, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

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
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
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
  store i64 ptrtoint (%0* @data_0x2d to i64), i64* %XDI, align 8, !mcsema_real_eip !5
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !6
  %AL.5 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 0, i8* %AL.5, align 1, !mcsema_real_eip !7
  %RSI_val.7 = load i64, i64* %XSI, align 8, !mcsema_real_eip !8
  %RDX_val.8 = load i64, i64* %XDX, align 8, !mcsema_real_eip !8
  %RCX_val.9 = load i64, i64* %XCX, align 8, !mcsema_real_eip !8
  %R8_val.10 = load i64, i64* %R8, align 8, !mcsema_real_eip !8
  %R9_val.11 = load i64, i64* %R9, align 8, !mcsema_real_eip !8
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_new_gep_18 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %_address_in_parent_stack_bt_69._allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %_new_load_70 = load i64, i64* %_address_in_parent_stack_bt_69._allin_new_bt_19, align 8
  %_new_gep_20 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %12 = bitcast i8* %_new_gep_20 to i64*
  %_new_load_85 = load i64, i64* %12, align 8
  %_new_gep_22 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %_address_in_parent_stack_bt_99._allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %_new_load_100 = load i64, i64* %_address_in_parent_stack_bt_99._allin_new_bt_23, align 8
  %_new_gep_24 = getelementptr [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_106 = icmp ugt i8* %_new_gep_24, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_new_gep_24, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_new_gep_24, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  %.v3 = select i1 %_cond1_n_cond2_cond3_112, i8* %_pot_address_in_parent_stack_105, i8* %_new_gep_24
  %13 = bitcast i8* %.v3 to i64*
  %_new_load_115 = load i64, i64* %13, align 8
  %_new_gep_26 = getelementptr [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %_pot_address_in_parent_stack_120 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 16
  %_cond1_121 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_122 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_123 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_124 = or i1 %_cond2_1_122, %_cond2_2_123
  %_cond4_125 = icmp ule i8* %_pot_address_in_parent_stack_120, %_parent_stack_end_ptr_
  %_cond1_n_cond2_126 = and i1 %_cond1_121, %_cond2_124
  %_cond1_n_cond2_cond3_127 = and i1 %_cond1_n_cond2_126, %_cond4_125
  %_address_in_parent_stack_bt_129._allin_new_bt_27.v = select i1 %_cond1_n_cond2_cond3_127, i8* %_pot_address_in_parent_stack_120, i8* %_new_gep_26
  %_address_in_parent_stack_bt_129._allin_new_bt_27 = bitcast i8* %_address_in_parent_stack_bt_129._allin_new_bt_27.v to i64*
  %_new_load_130 = load i64, i64* %_address_in_parent_stack_bt_129._allin_new_bt_27, align 8
  %_new_gep_29 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %14 = add i64 %RSP_val.1, -32
  %_allin_new_bt_30 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !8
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !8
  %15 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x2d to i64), i64 %RSI_val.7, i64 %RDX_val.8, i64 %RCX_val.9, i64 %R8_val.10, i64 %R9_val.11, i64 undef, i64 %_new_load_70, i64 %_new_load_85, i64 %_new_load_100, i64 %_new_load_115, i64 %_new_load_130)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  store i64 0, i64* %XCX, align 8, !mcsema_real_eip !9
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -8
  %16 = trunc i64 %15 to i32
  %17 = bitcast i8* %_new_gep_32 to i32*
  store i32 %16, i32* %17, align 4, !mcsema_real_eip !10
  %ECX_val.22 = load i32, i32* %ECX.14, align 4, !mcsema_real_eip !11
  %18 = zext i32 %ECX_val.22 to i64, !mcsema_real_eip !11
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !11
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.23 = load i64, i64* %XSP, align 8, !mcsema_real_eip !12
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34, i64 16
  %19 = add i64 %RSP_val.23, 16, !mcsema_real_eip !12
  %_trans_p2i_36 = ptrtoint i8* %_new_gep_35 to i64
  %_trans_p2i_37 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34 to i64
  %_trans_xor_38 = xor i64 %_trans_p2i_36, %_trans_p2i_37
  %20 = and i64 %_trans_xor_38, 16
  %21 = icmp eq i64 %20, 0
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !12
  %22 = icmp slt i64 %19, 0
  store i1 %22, i1* %SF, align 1, !mcsema_real_eip !12
  %_trans_icmp_eq_40 = icmp eq i8* %_new_gep_35, null
  store i1 %_trans_icmp_eq_40, i1* %ZF, align 1, !mcsema_real_eip !12
  %23 = xor i64 %_trans_p2i_37, -9223372036854775808, !mcsema_real_eip !12
  %24 = and i64 %_trans_xor_38, %23, !mcsema_real_eip !12
  %25 = icmp slt i64 %24, 0
  store i1 %25, i1* %OF, align 1, !mcsema_real_eip !12
  %_trans_trunc_47 = trunc i64 %_trans_p2i_36 to i8
  %26 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_47), !mcsema_real_eip !12
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !12
  %_trans_icmp_ne_49 = icmp ne i64 %_trans_p2i_36, %RSP_val.23
  store i1 %_trans_icmp_ne_49, i1* %CF, align 1, !mcsema_real_eip !12
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_, align 8
  store i64 %19, i64* %XSP, align 8, !mcsema_real_eip !12
  %_offset_above_rbp_134 = sub i64 %_trans_p2i_36, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  %.v4 = select i1 %_cond1_n_cond2_cond3_142, i8* %_pot_address_in_parent_stack_135, i8* %_new_gep_35
  %29 = bitcast i8* %.v4 to i64*
  %_new_load_145 = load i64, i64* %29, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_145 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_145, i64* %XBP, align 8, !mcsema_real_eip !13
  %_new_gep_52 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34, i64 24
  %30 = add i64 %RSP_val.23, 24, !mcsema_real_eip !13
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_, align 8
  store i64 %30, i64* %XSP, align 8, !mcsema_real_eip !13
  %_new_gep_54 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34, i64 32
  %31 = add i64 %RSP_val.23, 32, !mcsema_real_eip !14
  %_ptr_to_int_146 = ptrtoint i8* %_new_gep_52 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_52, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_52, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_52, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_bt_159._allin_new_bt_55.v = select i1 %_cond1_n_cond2_cond3_157, i8* %_pot_address_in_parent_stack_150, i8* %_new_gep_52
  %_address_in_parent_stack_bt_159._allin_new_bt_55 = bitcast i8* %_address_in_parent_stack_bt_159._allin_new_bt_55.v to i64*
  %_new_load_160 = load i64, i64* %_address_in_parent_stack_bt_159._allin_new_bt_55, align 8
  store i64 %_new_load_160, i64* %XIP, align 8, !mcsema_real_eip !14
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_, align 8
  store i64 %31, i64* %XSP, align 8, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
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
!7 = !{i64 25}
!8 = !{i64 27}
!9 = !{i64 32}
!10 = !{i64 34}
!11 = !{i64 37}
!12 = !{i64 39}
!13 = !{i64 43}
!14 = !{i64 44}
