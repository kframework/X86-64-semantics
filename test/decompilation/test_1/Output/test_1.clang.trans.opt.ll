; ModuleID = 'Output/test_1.clang.trans.opt.bc'
source_filename = "Output/test_1.clang.bc"
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
module asm "  .globl sub_70;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_70(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb3 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70(%RegState* nocapture) local_unnamed_addr #0 {
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
  store i64 10, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 20, i64* %XSI, align 8, !mcsema_real_eip !6
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !7
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %14 = add i64 %RSP_val.1, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !8
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !8
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, align 8, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195 = load i8*, i8** %12, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_195, i64 -8
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.8 = load i32, i32* %EAX.7, align 4, !mcsema_real_eip !10
  %15 = bitcast i8* %_new_gep_20 to i32*
  store i32 %EAX_val.8, i32* %15, align 4, !mcsema_real_eip !10
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_226 = load i8*, i8** %12, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_226, i64 -8
  %16 = bitcast i8* %_new_gep_23 to i32*
  %17 = load i32, i32* %16, align 4, !mcsema_real_eip !11
  %18 = zext i32 %17 to i64, !mcsema_real_eip !11
  store i64 %18, i64* %XSI, align 8, !mcsema_real_eip !11
  %AL.10 = bitcast i64* %XAX to i8*, !mcsema_real_eip !12
  store i8 0, i8* %AL.10, align 1, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, align 8, !mcsema_real_eip !13
  %RDX_val.13 = load i64, i64* %XDX, align 8, !mcsema_real_eip !13
  %RCX_val.14 = load i64, i64* %XCX, align 8, !mcsema_real_eip !13
  %R8_val.15 = load i64, i64* %R8, align 8, !mcsema_real_eip !13
  %R9_val.16 = load i64, i64* %R9, align 8, !mcsema_real_eip !13
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_, align 8
  %_allin_new_bt_26 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 to i64*
  %19 = load i64, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !13
  %_new_gep_27 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %20 = load i64, i64* %_allin_new_bt_28, align 8, !mcsema_real_eip !13
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %21 = load i64, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !13
  %_new_gep_31 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 24
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %22 = load i64, i64* %_allin_new_bt_32, align 8, !mcsema_real_eip !13
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 32
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %23 = load i64, i64* %_allin_new_bt_34, align 8, !mcsema_real_eip !13
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 40
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %24 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !13
  %RSP_val.18 = load i64, i64* %XSP, align 8, !mcsema_real_eip !13
  %_new_gep_38 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 -8
  %25 = add i64 %RSP_val.18, -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XSP, align 8, !mcsema_real_eip !13
  %26 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.11, i64 %18, i64 %RDX_val.13, i64 %RCX_val.14, i64 %R8_val.15, i64 %R9_val.16, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_70 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_71 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_70, i64 8
  store i8* %_gep_fix_71, i8** %_RSP_ptr_, align 8
  store i64 %26, i64* %XAX, align 8, !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_407 = load i8*, i8** %12, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_407, i64 -8
  %27 = bitcast i8* %_new_gep_41 to i32*
  %28 = load i32, i32* %27, align 4, !mcsema_real_eip !14
  %29 = zext i32 %28 to i64, !mcsema_real_eip !14
  store i64 %29, i64* %XSI, align 8, !mcsema_real_eip !14
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_407, i64 -12
  %30 = trunc i64 %26 to i32
  %31 = bitcast i8* %_new_gep_44 to i32*
  store i32 %30, i32* %31, align 4, !mcsema_real_eip !15
  %ESI.23 = bitcast i64* %XSI to i32*, !mcsema_real_eip !16
  %ESI_val.24 = load i32, i32* %ESI.23, align 4, !mcsema_real_eip !16
  %32 = zext i32 %ESI_val.24 to i64, !mcsema_real_eip !16
  store i64 %32, i64* %XAX, align 8, !mcsema_real_eip !16
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.25 = load i64, i64* %XSP, align 8, !mcsema_real_eip !17
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 16
  %33 = add i64 %RSP_val.25, 16, !mcsema_real_eip !17
  %_trans_p2i_48 = ptrtoint i8* %_new_gep_47 to i64
  %_trans_p2i_49 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 to i64
  %_trans_xor_50 = xor i64 %_trans_p2i_48, %_trans_p2i_49
  %34 = and i64 %_trans_xor_50, 16
  %35 = icmp eq i64 %34, 0
  store i1 %35, i1* %AF, align 1, !mcsema_real_eip !17
  %36 = icmp slt i64 %33, 0
  store i1 %36, i1* %SF, align 1, !mcsema_real_eip !17
  %_trans_icmp_eq_52 = icmp eq i8* %_new_gep_47, null
  store i1 %_trans_icmp_eq_52, i1* %ZF, align 1, !mcsema_real_eip !17
  %37 = xor i64 %_trans_p2i_49, -9223372036854775808, !mcsema_real_eip !17
  %38 = and i64 %_trans_xor_50, %37, !mcsema_real_eip !17
  %39 = icmp slt i64 %38, 0
  store i1 %39, i1* %OF, align 1, !mcsema_real_eip !17
  %_trans_trunc_59 = trunc i64 %_trans_p2i_48 to i8
  %40 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_59), !mcsema_real_eip !17
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  store i1 %42, i1* %PF, align 1, !mcsema_real_eip !17
  %_trans_icmp_ne_61 = icmp ne i64 %_trans_p2i_48, %RSP_val.25
  store i1 %_trans_icmp_ne_61, i1* %CF, align 1, !mcsema_real_eip !17
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_, align 8
  store i64 %33, i64* %XSP, align 8, !mcsema_real_eip !17
  %_allin_new_bt_63 = bitcast i8* %_new_gep_47 to i64*
  %43 = load i64, i64* %_allin_new_bt_63, align 8, !mcsema_real_eip !18
  store volatile i64 %43, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %43, i64* %XBP, align 8, !mcsema_real_eip !18
  %_new_gep_64 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 24
  %44 = add i64 %RSP_val.25, 24, !mcsema_real_eip !18
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_, align 8
  store i64 %44, i64* %XSP, align 8, !mcsema_real_eip !18
  %_new_gep_66 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 32
  %45 = add i64 %RSP_val.25, 32, !mcsema_real_eip !19
  %_allin_new_bt_67 = bitcast i8* %_new_gep_64 to i64*
  %46 = load i64, i64* %_allin_new_bt_67, align 8, !mcsema_real_eip !19
  store i64 %46, i64* %XIP, align 8, !mcsema_real_eip !19
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_, align 8
  store i64 %45, i64* %XSP, align 8, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !20
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !20
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !20
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !20
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !20
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !20
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !20
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !20
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !20
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !20
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !20
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !20
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !20
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !20
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !20
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !20
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !20
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !20
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !20
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !20
  %RBP_val.28 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %RSP_val.29 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %1 = add i64 %RSP_val.29, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !20
  store i64 %RBP_val.28, i64* %2, align 8, !mcsema_real_eip !20
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !20
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !21
  %3 = add i64 %RSP_val.29, -12, !mcsema_real_eip !22
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.33 = load i32, i32* %EDI.32, align 4, !mcsema_real_eip !22
  %4 = inttoptr i64 %3 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.33, i32* %4, align 4, !mcsema_real_eip !22
  %RBP_val.34 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %5 = add i64 %RBP_val.34, -8, !mcsema_real_eip !23
  %ESI.35 = bitcast i64* %XSI to i32*, !mcsema_real_eip !23
  %ESI_val.36 = load i32, i32* %ESI.35, align 4, !mcsema_real_eip !23
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !23
  store i32 %ESI_val.36, i32* %6, align 4, !mcsema_real_eip !23
  %RBP_val.37 = load i64, i64* %XBP, align 8, !mcsema_real_eip !24
  %7 = add i64 %RBP_val.37, -4, !mcsema_real_eip !24
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !24
  %9 = load i32, i32* %8, align 4, !mcsema_real_eip !24
  %10 = zext i32 %9 to i64, !mcsema_real_eip !24
  store i64 %10, i64* %XSI, align 8, !mcsema_real_eip !24
  %11 = add i64 %RBP_val.37, -8, !mcsema_real_eip !25
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !25
  %13 = load i32, i32* %12, align 4, !mcsema_real_eip !25
  %14 = add i32 %9, %13, !mcsema_real_eip !25
  %15 = xor i32 %14, %13, !mcsema_real_eip !25
  %16 = xor i32 %15, %9, !mcsema_real_eip !25
  %17 = and i32 %16, 16, !mcsema_real_eip !25
  %18 = icmp ne i32 %17, 0, !mcsema_real_eip !25
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !25
  %19 = icmp slt i32 %14, 0
  store i1 %19, i1* %SF, align 1, !mcsema_real_eip !25
  %20 = icmp eq i32 %14, 0, !mcsema_real_eip !25
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !25
  %21 = xor i32 %13, -2147483648, !mcsema_real_eip !25
  %22 = xor i32 %21, %9, !mcsema_real_eip !25
  %23 = and i32 %15, %22, !mcsema_real_eip !25
  %24 = icmp slt i32 %23, 0
  store i1 %24, i1* %OF, align 1, !mcsema_real_eip !25
  %25 = trunc i32 %14 to i8, !mcsema_real_eip !25
  %26 = tail call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !25
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !25
  %29 = icmp ult i32 %14, %13, !mcsema_real_eip !25
  store i1 %29, i1* %CF, align 1, !mcsema_real_eip !25
  %30 = zext i32 %14 to i64, !mcsema_real_eip !25
  store i64 %30, i64* %XSI, align 8, !mcsema_real_eip !25
  %31 = add i64 %RBP_val.37, -12, !mcsema_real_eip !26
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !26
  store i32 %14, i32* %32, align 4, !mcsema_real_eip !26
  %RBP_val.441 = load i64, i64* %XBP, align 8, !mcsema_real_eip !27
  %33 = add i64 %RBP_val.441, -4, !mcsema_real_eip !27
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !27
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !27
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !27
  %36 = trunc i32 %35 to i8, !mcsema_real_eip !27
  %37 = tail call i8 @llvm.ctpop.i8(i8 %36), !mcsema_real_eip !27
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  store i1 %39, i1* %PF, align 1, !mcsema_real_eip !27
  %40 = icmp eq i32 %35, 0, !mcsema_real_eip !27
  store i1 %40, i1* %ZF, align 1, !mcsema_real_eip !27
  %41 = icmp slt i32 %35, 0
  store i1 %41, i1* %SF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !27
  br i1 %41, label %block_0x5e, label %block_0x1d.lr.ph, !mcsema_real_eip !28

block_0x1d.lr.ph:                                 ; preds = %entry
  %ECX.52 = bitcast i64* %XCX to i32*, !mcsema_real_eip !29
  br label %block_0x1d

block_0x1d:                                       ; preds = %block_0x1d.lr.ph, %block_0x50
  %42 = phi i32* [ %34, %block_0x1d.lr.ph ], [ %131, %block_0x50 ]
  %RBP_val.442 = phi i64 [ %RBP_val.441, %block_0x1d.lr.ph ], [ %RBP_val.44, %block_0x50 ]
  store i64 2, i64* %XAX, align 8, !mcsema_real_eip !30
  %43 = load i32, i32* %42, align 4, !mcsema_real_eip !31
  %44 = zext i32 %43 to i64, !mcsema_real_eip !31
  store i64 %44, i64* %XCX, align 8, !mcsema_real_eip !31
  %45 = add i64 %RBP_val.442, -20, !mcsema_real_eip !32
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !32
  store i32 2, i32* %46, align 4, !mcsema_real_eip !32
  %ECX_val.53 = load i32, i32* %ECX.52, align 4, !mcsema_real_eip !29
  %47 = zext i32 %ECX_val.53 to i64, !mcsema_real_eip !29
  store i64 %47, i64* %XAX, align 8, !mcsema_real_eip !29
  %EAX_val.55.lobit = ashr i32 %ECX_val.53, 31
  %48 = zext i32 %EAX_val.55.lobit to i64
  store i64 %48, i64* %XDX, align 8, !mcsema_real_eip !33
  %RBP_val.56 = load i64, i64* %XBP, align 8, !mcsema_real_eip !34
  %49 = add i64 %RBP_val.56, -20, !mcsema_real_eip !34
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !34
  %51 = load i32, i32* %50, align 4, !mcsema_real_eip !34
  %52 = zext i32 %51 to i64, !mcsema_real_eip !34
  store i64 %52, i64* %XCX, align 8, !mcsema_real_eip !34
  %53 = shl nuw i64 %48, 32, !mcsema_real_eip !35
  %54 = sext i32 %ECX_val.53 to i64, !mcsema_real_eip !35
  %55 = or i64 %53, %54, !mcsema_real_eip !35
  %56 = sext i32 %51 to i64, !mcsema_real_eip !35
  %57 = sdiv i64 %55, %56, !mcsema_real_eip !35
  %58 = srem i64 %55, %56, !mcsema_real_eip !35
  %59 = and i64 %58, 4294967295
  store i64 %59, i64* %XDX, align 8, !mcsema_real_eip !35
  %60 = and i64 %57, 4294967295
  store i64 %60, i64* %XAX, align 8, !mcsema_real_eip !35
  %61 = trunc i64 %58 to i32
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !36
  %62 = trunc i64 %58 to i8
  %63 = tail call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !36
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  store i1 %65, i1* %PF, align 1, !mcsema_real_eip !36
  %66 = icmp eq i32 %61, 0, !mcsema_real_eip !36
  store i1 %66, i1* %ZF, align 1, !mcsema_real_eip !36
  %67 = icmp slt i32 %61, 0
  store i1 %67, i1* %SF, align 1, !mcsema_real_eip !36
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !36
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !36
  %68 = add i64 %RBP_val.56, -12
  %69 = inttoptr i64 %68 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %XAX, align 8
  br i1 %66, label %block_0x39, label %block_0x47, !mcsema_real_eip !37

block_0x5e.loopexit:                              ; preds = %block_0x50
  br label %block_0x5e

block_0x5e:                                       ; preds = %block_0x5e.loopexit, %entry
  %RBP_val.44.lcssa = phi i64 [ %RBP_val.441, %entry ], [ %RBP_val.44, %block_0x5e.loopexit ]
  %72 = add i64 %RBP_val.44.lcssa, -16, !mcsema_real_eip !38
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !38
  %74 = load i32, i32* %73, align 4, !mcsema_real_eip !38
  %75 = zext i32 %74 to i64, !mcsema_real_eip !38
  store i64 %75, i64* %XAX, align 8, !mcsema_real_eip !38
  %RSP_val.46 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %76 = inttoptr i64 %RSP_val.46 to i64*, !mcsema_real_eip !39
  %77 = load i64, i64* %76, align 8, !mcsema_real_eip !39
  store i64 %77, i64* %XBP, align 8, !mcsema_real_eip !39
  %78 = add i64 %RSP_val.46, 8, !mcsema_real_eip !39
  store i64 %78, i64* %XSP, align 8, !mcsema_real_eip !39
  %79 = add i64 %RSP_val.46, 16, !mcsema_real_eip !40
  %80 = inttoptr i64 %78 to i64*, !mcsema_real_eip !40
  %81 = load i64, i64* %80, align 8, !mcsema_real_eip !40
  store i64 %81, i64* %XIP, align 8, !mcsema_real_eip !40
  store i64 %79, i64* %XSP, align 8, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40

block_0x39:                                       ; preds = %block_0x1d
  %82 = add i32 %70, 10, !mcsema_real_eip !41
  %83 = xor i32 %82, %70, !mcsema_real_eip !41
  %84 = and i32 %83, 16, !mcsema_real_eip !41
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !41
  store i1 %85, i1* %AF, align 1, !mcsema_real_eip !41
  %86 = icmp slt i32 %82, 0
  store i1 %86, i1* %SF, align 1, !mcsema_real_eip !41
  %87 = icmp eq i32 %82, 0, !mcsema_real_eip !41
  store i1 %87, i1* %ZF, align 1, !mcsema_real_eip !41
  %88 = xor i32 %70, -2147483648, !mcsema_real_eip !41
  %89 = and i32 %83, %88, !mcsema_real_eip !41
  %90 = icmp slt i32 %89, 0
  store i1 %90, i1* %OF, align 1, !mcsema_real_eip !41
  %91 = trunc i32 %82 to i8, !mcsema_real_eip !41
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !41
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !41
  %95 = icmp ugt i32 %70, -11
  store i1 %95, i1* %CF, align 1, !mcsema_real_eip !41
  %96 = zext i32 %82 to i64, !mcsema_real_eip !41
  store i64 %96, i64* %XAX, align 8, !mcsema_real_eip !41
  %97 = add i64 %RBP_val.56, -16, !mcsema_real_eip !42
  %98 = inttoptr i64 %97 to i32*, !mcsema_real_eip !42
  store i32 %82, i32* %98, align 4, !mcsema_real_eip !42
  br label %block_0x50, !mcsema_real_eip !43

block_0x47:                                       ; preds = %block_0x1d
  %99 = add i32 %70, -10
  %100 = xor i32 %99, %70, !mcsema_real_eip !44
  %101 = and i32 %100, 16, !mcsema_real_eip !44
  %102 = icmp ne i32 %101, 0, !mcsema_real_eip !44
  store i1 %102, i1* %AF, align 1, !mcsema_real_eip !44
  %103 = trunc i32 %99 to i8, !mcsema_real_eip !44
  %104 = tail call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !44
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !44
  %107 = icmp eq i32 %99, 0, !mcsema_real_eip !44
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !44
  %108 = icmp slt i32 %99, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !44
  %109 = icmp ult i32 %70, 10, !mcsema_real_eip !44
  store i1 %109, i1* %CF, align 1, !mcsema_real_eip !44
  %110 = and i32 %100, %70, !mcsema_real_eip !44
  %111 = icmp slt i32 %110, 0
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !44
  %112 = zext i32 %99 to i64, !mcsema_real_eip !44
  store i64 %112, i64* %XAX, align 8, !mcsema_real_eip !44
  store i32 %99, i32* %69, align 4, !mcsema_real_eip !45
  br label %block_0x50, !mcsema_real_eip !46

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %RBP_val.77 = load i64, i64* %XBP, align 8, !mcsema_real_eip !47
  %113 = add i64 %RBP_val.77, -4, !mcsema_real_eip !47
  %114 = inttoptr i64 %113 to i32*, !mcsema_real_eip !47
  %115 = load i32, i32* %114, align 4, !mcsema_real_eip !47
  %116 = add i32 %115, -1, !mcsema_real_eip !48
  %117 = xor i32 %116, %115, !mcsema_real_eip !48
  %118 = and i32 %117, 16
  %119 = icmp eq i32 %118, 0
  store i1 %119, i1* %AF, align 1, !mcsema_real_eip !48
  %120 = icmp slt i32 %116, 0
  store i1 %120, i1* %SF, align 1, !mcsema_real_eip !48
  %121 = icmp eq i32 %116, 0, !mcsema_real_eip !48
  store i1 %121, i1* %ZF, align 1, !mcsema_real_eip !48
  %122 = and i32 %117, %115, !mcsema_real_eip !48
  %123 = icmp slt i32 %122, 0
  store i1 %123, i1* %OF, align 1, !mcsema_real_eip !48
  %124 = trunc i32 %116 to i8, !mcsema_real_eip !48
  %125 = tail call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !48
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  store i1 %127, i1* %PF, align 1, !mcsema_real_eip !48
  %128 = icmp ne i32 %115, 0
  store i1 %128, i1* %CF, align 1, !mcsema_real_eip !48
  %129 = zext i32 %116 to i64, !mcsema_real_eip !48
  store i64 %129, i64* %XAX, align 8, !mcsema_real_eip !48
  store i32 %116, i32* %114, align 4, !mcsema_real_eip !49
  %RBP_val.44 = load i64, i64* %XBP, align 8, !mcsema_real_eip !27
  %130 = add i64 %RBP_val.44, -4, !mcsema_real_eip !27
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !27
  %132 = load i32, i32* %131, align 4, !mcsema_real_eip !27
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !27
  %133 = trunc i32 %132 to i8, !mcsema_real_eip !27
  %134 = tail call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !27
  %135 = and i8 %134, 1
  %136 = icmp eq i8 %135, 0
  store i1 %136, i1* %PF, align 1, !mcsema_real_eip !27
  %137 = icmp eq i32 %132, 0, !mcsema_real_eip !27
  store i1 %137, i1* %ZF, align 1, !mcsema_real_eip !27
  %138 = icmp slt i32 %132, 0
  store i1 %138, i1* %SF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !27
  br i1 %138, label %block_0x5e.loopexit, label %block_0x1d, !mcsema_real_eip !28
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_70.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
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
  store i64 10, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 20, i64* %XSI, align 8, !mcsema_real_eip !6
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !7
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.1, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !8
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !8
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, align 8, !mcsema_real_eip !9
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_20 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_19, i64 -8
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.8 = load i32, i32* %EAX.7, align 4, !mcsema_real_eip !10
  %13 = bitcast i8* %_new_gep_20 to i32*
  store i32 %EAX_val.8, i32* %13, align 4, !mcsema_real_eip !10
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -8
  %14 = ptrtoint i8* %_new_gep_23 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %14, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_23
  %15 = bitcast i8* %.v to i32*
  %_new_load_ = load i32, i32* %15, align 4
  %16 = zext i32 %_new_load_ to i64, !mcsema_real_eip !11
  store i64 %16, i64* %XSI, align 8, !mcsema_real_eip !11
  %AL.10 = bitcast i64* %XAX to i8*, !mcsema_real_eip !12
  store i8 0, i8* %AL.10, align 1, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, align 8, !mcsema_real_eip !13
  %RDX_val.13 = load i64, i64* %XDX, align 8, !mcsema_real_eip !13
  %RCX_val.14 = load i64, i64* %XCX, align 8, !mcsema_real_eip !13
  %R8_val.15 = load i64, i64* %R8, align 8, !mcsema_real_eip !13
  %R9_val.16 = load i64, i64* %R9, align 8, !mcsema_real_eip !13
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_72 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25 to i64
  %_offset_above_rbp_75 = sub i64 %_ptr_to_int_72, %_local_end_to_int_
  %_pot_address_in_parent_stack_76 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_75
  %_cond1_77 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, %_local_stack_end_ptr_
  %_cond2_1_78 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, %_parent_stack_end_ptr_
  %_cond2_2_79 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, %_parent_stack_start_ptr_
  %_cond2_80 = or i1 %_cond2_1_78, %_cond2_2_79
  %_cond4_81 = icmp ule i8* %_pot_address_in_parent_stack_76, %_parent_stack_end_ptr_
  %_cond1_n_cond2_82 = and i1 %_cond1_77, %_cond2_80
  %_cond1_n_cond2_cond3_83 = and i1 %_cond1_n_cond2_82, %_cond4_81
  %_address_in_parent_stack_bt_85._allin_new_bt_26.v = select i1 %_cond1_n_cond2_cond3_83, i8* %_pot_address_in_parent_stack_76, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25
  %_address_in_parent_stack_bt_85._allin_new_bt_26 = bitcast i8* %_address_in_parent_stack_bt_85._allin_new_bt_26.v to i64*
  %_new_load_86 = load i64, i64* %_address_in_parent_stack_bt_85._allin_new_bt_26, align 8
  %_new_gep_27 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 8
  %_ptr_to_int_87 = ptrtoint i8* %_new_gep_27 to i64
  %_offset_above_rbp_90 = sub i64 %_ptr_to_int_87, %_local_end_to_int_
  %_pot_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_90
  %_cond1_92 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_93 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_94 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_95 = or i1 %_cond2_1_93, %_cond2_2_94
  %_cond4_96 = icmp ule i8* %_pot_address_in_parent_stack_91, %_parent_stack_end_ptr_
  %_cond1_n_cond2_97 = and i1 %_cond1_92, %_cond2_95
  %_cond1_n_cond2_cond3_98 = and i1 %_cond1_n_cond2_97, %_cond4_96
  %.v2 = select i1 %_cond1_n_cond2_cond3_98, i8* %_pot_address_in_parent_stack_91, i8* %_new_gep_27
  %17 = bitcast i8* %.v2 to i64*
  %_new_load_101 = load i64, i64* %17, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 16
  %_ptr_to_int_102 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_105 = sub i64 %_ptr_to_int_102, %_local_end_to_int_
  %_pot_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_105
  %_cond1_107 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_108 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_109 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_110 = or i1 %_cond2_1_108, %_cond2_2_109
  %_cond4_111 = icmp ule i8* %_pot_address_in_parent_stack_106, %_parent_stack_end_ptr_
  %_cond1_n_cond2_112 = and i1 %_cond1_107, %_cond2_110
  %_cond1_n_cond2_cond3_113 = and i1 %_cond1_n_cond2_112, %_cond4_111
  %_address_in_parent_stack_bt_115._allin_new_bt_30.v = select i1 %_cond1_n_cond2_cond3_113, i8* %_pot_address_in_parent_stack_106, i8* %_new_gep_29
  %_address_in_parent_stack_bt_115._allin_new_bt_30 = bitcast i8* %_address_in_parent_stack_bt_115._allin_new_bt_30.v to i64*
  %_new_load_116 = load i64, i64* %_address_in_parent_stack_bt_115._allin_new_bt_30, align 8
  %_new_gep_31 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 24
  %_ptr_to_int_117 = ptrtoint i8* %_new_gep_31 to i64
  %_offset_above_rbp_120 = sub i64 %_ptr_to_int_117, %_local_end_to_int_
  %_pot_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_120
  %_cond1_122 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_123 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_124 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_125 = or i1 %_cond2_1_123, %_cond2_2_124
  %_cond4_126 = icmp ule i8* %_pot_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond1_n_cond2_127 = and i1 %_cond1_122, %_cond2_125
  %_cond1_n_cond2_cond3_128 = and i1 %_cond1_n_cond2_127, %_cond4_126
  %.v3 = select i1 %_cond1_n_cond2_cond3_128, i8* %_pot_address_in_parent_stack_121, i8* %_new_gep_31
  %18 = bitcast i8* %.v3 to i64*
  %_new_load_131 = load i64, i64* %18, align 8
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 32
  %_ptr_to_int_132 = ptrtoint i8* %_new_gep_33 to i64
  %_offset_above_rbp_135 = sub i64 %_ptr_to_int_132, %_local_end_to_int_
  %_pot_address_in_parent_stack_136 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_135
  %_cond1_137 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_138 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_139 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_140 = or i1 %_cond2_1_138, %_cond2_2_139
  %_cond4_141 = icmp ule i8* %_pot_address_in_parent_stack_136, %_parent_stack_end_ptr_
  %_cond1_n_cond2_142 = and i1 %_cond1_137, %_cond2_140
  %_cond1_n_cond2_cond3_143 = and i1 %_cond1_n_cond2_142, %_cond4_141
  %_address_in_parent_stack_bt_145._allin_new_bt_34.v = select i1 %_cond1_n_cond2_cond3_143, i8* %_pot_address_in_parent_stack_136, i8* %_new_gep_33
  %_address_in_parent_stack_bt_145._allin_new_bt_34 = bitcast i8* %_address_in_parent_stack_bt_145._allin_new_bt_34.v to i64*
  %_new_load_146 = load i64, i64* %_address_in_parent_stack_bt_145._allin_new_bt_34, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 40
  %_ptr_to_int_147 = ptrtoint i8* %_new_gep_35 to i64
  %_offset_above_rbp_150 = sub i64 %_ptr_to_int_147, %_local_end_to_int_
  %_pot_address_in_parent_stack_151 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_150
  %_cond1_152 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_153 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_154 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_155 = or i1 %_cond2_1_153, %_cond2_2_154
  %_cond4_156 = icmp ule i8* %_pot_address_in_parent_stack_151, %_parent_stack_end_ptr_
  %_cond1_n_cond2_157 = and i1 %_cond1_152, %_cond2_155
  %_cond1_n_cond2_cond3_158 = and i1 %_cond1_n_cond2_157, %_cond4_156
  %.v4 = select i1 %_cond1_n_cond2_cond3_158, i8* %_pot_address_in_parent_stack_151, i8* %_new_gep_35
  %19 = bitcast i8* %.v4 to i64*
  %_new_load_161 = load i64, i64* %19, align 8
  %RSP_val.18 = load i64, i64* %XSP, align 8, !mcsema_real_eip !13
  %_new_gep_38 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_25, i64 -8
  %20 = add i64 %RSP_val.18, -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_, align 8
  store i64 %20, i64* %XSP, align 8, !mcsema_real_eip !13
  %21 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.11, i64 %16, i64 %RDX_val.13, i64 %RCX_val.14, i64 %R8_val.15, i64 %R9_val.16, i64 %_new_load_86, i64 %_new_load_101, i64 %_new_load_116, i64 %_new_load_131, i64 %_new_load_146, i64 %_new_load_161)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_70 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_71 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_70, i64 8
  store i8* %_gep_fix_71, i8** %_RSP_ptr_, align 8
  store i64 %21, i64* %XAX, align 8, !mcsema_real_eip !13
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -8
  %22 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_165 = sub i64 %22, %_local_end_to_int_
  %_pot_address_in_parent_stack_166 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_165
  %_cond1_167 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_168 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_169 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_170 = or i1 %_cond2_1_168, %_cond2_2_169
  %_cond4_171 = icmp ule i8* %_pot_address_in_parent_stack_166, %_parent_stack_end_ptr_
  %_cond1_n_cond2_172 = and i1 %_cond1_167, %_cond2_170
  %_cond1_n_cond2_cond3_173 = and i1 %_cond1_n_cond2_172, %_cond4_171
  %_address_in_parent_stack_bt_175..v = select i1 %_cond1_n_cond2_cond3_173, i8* %_pot_address_in_parent_stack_166, i8* %_new_gep_41
  %_address_in_parent_stack_bt_175. = bitcast i8* %_address_in_parent_stack_bt_175..v to i32*
  %_new_load_176 = load i32, i32* %_address_in_parent_stack_bt_175., align 4
  %23 = zext i32 %_new_load_176 to i64, !mcsema_real_eip !14
  store i64 %23, i64* %XSI, align 8, !mcsema_real_eip !14
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -12
  %24 = trunc i64 %21 to i32
  %25 = bitcast i8* %_new_gep_44 to i32*
  store i32 %24, i32* %25, align 4, !mcsema_real_eip !15
  %ESI.23 = bitcast i64* %XSI to i32*, !mcsema_real_eip !16
  %ESI_val.24 = load i32, i32* %ESI.23, align 4, !mcsema_real_eip !16
  %26 = zext i32 %ESI_val.24 to i64, !mcsema_real_eip !16
  store i64 %26, i64* %XAX, align 8, !mcsema_real_eip !16
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.25 = load i64, i64* %XSP, align 8, !mcsema_real_eip !17
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 16
  %27 = add i64 %RSP_val.25, 16, !mcsema_real_eip !17
  %_trans_p2i_48 = ptrtoint i8* %_new_gep_47 to i64
  %_trans_p2i_49 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 to i64
  %_trans_xor_50 = xor i64 %_trans_p2i_48, %_trans_p2i_49
  %28 = and i64 %_trans_xor_50, 16
  %29 = icmp eq i64 %28, 0
  store i1 %29, i1* %AF, align 1, !mcsema_real_eip !17
  %30 = icmp slt i64 %27, 0
  store i1 %30, i1* %SF, align 1, !mcsema_real_eip !17
  %_trans_icmp_eq_52 = icmp eq i8* %_new_gep_47, null
  store i1 %_trans_icmp_eq_52, i1* %ZF, align 1, !mcsema_real_eip !17
  %31 = xor i64 %_trans_p2i_49, -9223372036854775808, !mcsema_real_eip !17
  %32 = and i64 %_trans_xor_50, %31, !mcsema_real_eip !17
  %33 = icmp slt i64 %32, 0
  store i1 %33, i1* %OF, align 1, !mcsema_real_eip !17
  %_trans_trunc_59 = trunc i64 %_trans_p2i_48 to i8
  %34 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_59), !mcsema_real_eip !17
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  store i1 %36, i1* %PF, align 1, !mcsema_real_eip !17
  %_trans_icmp_ne_61 = icmp ne i64 %_trans_p2i_48, %RSP_val.25
  store i1 %_trans_icmp_ne_61, i1* %CF, align 1, !mcsema_real_eip !17
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_, align 8
  store i64 %27, i64* %XSP, align 8, !mcsema_real_eip !17
  %_offset_above_rbp_180 = sub i64 %_trans_p2i_48, %_local_end_to_int_
  %_pot_address_in_parent_stack_181 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_180
  %_cond1_182 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_183 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_184 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_185 = or i1 %_cond2_1_183, %_cond2_2_184
  %_cond4_186 = icmp ule i8* %_pot_address_in_parent_stack_181, %_parent_stack_end_ptr_
  %_cond1_n_cond2_187 = and i1 %_cond1_182, %_cond2_185
  %_cond1_n_cond2_cond3_188 = and i1 %_cond1_n_cond2_187, %_cond4_186
  %.v5 = select i1 %_cond1_n_cond2_cond3_188, i8* %_pot_address_in_parent_stack_181, i8* %_new_gep_47
  %37 = bitcast i8* %.v5 to i64*
  %_new_load_191 = load i64, i64* %37, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_191 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_191, i64* %XBP, align 8, !mcsema_real_eip !18
  %_new_gep_64 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 24
  %38 = add i64 %RSP_val.25, 24, !mcsema_real_eip !18
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_, align 8
  store i64 %38, i64* %XSP, align 8, !mcsema_real_eip !18
  %_new_gep_66 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 32
  %39 = add i64 %RSP_val.25, 32, !mcsema_real_eip !19
  %_ptr_to_int_192 = ptrtoint i8* %_new_gep_64 to i64
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  %_address_in_parent_stack_bt_205._allin_new_bt_67.v = select i1 %_cond1_n_cond2_cond3_203, i8* %_pot_address_in_parent_stack_196, i8* %_new_gep_64
  %_address_in_parent_stack_bt_205._allin_new_bt_67 = bitcast i8* %_address_in_parent_stack_bt_205._allin_new_bt_67.v to i64*
  %_new_load_206 = load i64, i64* %_address_in_parent_stack_bt_205._allin_new_bt_67, align 8
  store i64 %_new_load_206, i64* %XIP, align 8, !mcsema_real_eip !19
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_, align 8
  store i64 %39, i64* %XSP, align 8, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [28 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !20
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !20
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !20
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !20
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !20
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !20
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !20
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !20
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !20
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !20
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !20
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !20
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !20
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !20
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !20
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !20
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !20
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !20
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !20
  %RSP_val.29 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %_new_gep_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %1 = add i64 %RSP_val.29, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !20
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !21
  %_new_gep_3 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.33 = load i32, i32* %EDI.32, align 4, !mcsema_real_eip !22
  %2 = bitcast i8* %_new_gep_3 to i32*
  store i32 %EDI_val.33, i32* %2, align 4, !mcsema_real_eip !22
  %_new_gep_6 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 12
  %ESI.35 = bitcast i64* %XSI to i32*, !mcsema_real_eip !23
  %ESI_val.36 = load i32, i32* %ESI.35, align 4, !mcsema_real_eip !23
  %3 = bitcast i8* %_new_gep_6 to i32*
  store i32 %ESI_val.36, i32* %3, align 4, !mcsema_real_eip !23
  %_new_gep_9 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %4 = bitcast i8* %_new_gep_9 to i32*
  %_new_load_ = load i32, i32* %4, align 4
  %5 = add i32 %_new_load_, %ESI_val.36, !mcsema_real_eip !25
  %6 = xor i32 %5, %ESI_val.36, !mcsema_real_eip !25
  %7 = xor i32 %6, %_new_load_, !mcsema_real_eip !25
  %8 = and i32 %7, 16, !mcsema_real_eip !25
  %9 = icmp ne i32 %8, 0, !mcsema_real_eip !25
  store i1 %9, i1* %AF, align 1, !mcsema_real_eip !25
  %10 = icmp slt i32 %5, 0
  store i1 %10, i1* %SF, align 1, !mcsema_real_eip !25
  %11 = icmp eq i32 %5, 0, !mcsema_real_eip !25
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !25
  %12 = xor i32 %ESI_val.36, -2147483648, !mcsema_real_eip !25
  %13 = xor i32 %12, %_new_load_, !mcsema_real_eip !25
  %14 = and i32 %6, %13, !mcsema_real_eip !25
  %15 = icmp slt i32 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !25
  %16 = trunc i32 %5 to i8, !mcsema_real_eip !25
  %17 = call i8 @llvm.ctpop.i8(i8 %16), !mcsema_real_eip !25
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  store i1 %19, i1* %PF, align 1, !mcsema_real_eip !25
  %20 = icmp ult i32 %5, %ESI_val.36, !mcsema_real_eip !25
  store i1 %20, i1* %CF, align 1, !mcsema_real_eip !25
  %21 = zext i32 %5 to i64, !mcsema_real_eip !25
  store i64 %21, i64* %XSI, align 8, !mcsema_real_eip !25
  %_new_gep_15 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %22 = bitcast i8* %_new_gep_15 to i32*
  store i32 %5, i32* %22, align 4, !mcsema_real_eip !26
  %ECX.52 = bitcast i64* %XCX to i32*
  br label %block_0x13, !mcsema_real_eip !27

block_0x13:                                       ; preds = %block_0x50, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17.pre, %block_0x50 ], [ %_new_gep_, %entry ]
  %_new_gep_18 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17, i64 -4
  %23 = ptrtoint i8* %_new_gep_18 to i64
  %_offset_above_rbp_74 = sub i64 %23, %_local_end_to_int_
  %_pot_address_in_parent_stack_75 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_74
  %_cond1_76 = icmp ugt i8* %_new_gep_18, %_local_stack_end_ptr_
  %_cond2_1_77 = icmp ugt i8* %_new_gep_18, %_parent_stack_end_ptr_
  %_cond2_2_78 = icmp ult i8* %_new_gep_18, %_parent_stack_start_ptr_
  %_cond2_79 = or i1 %_cond2_1_77, %_cond2_2_78
  %_cond4_80 = icmp ule i8* %_pot_address_in_parent_stack_75, %_parent_stack_end_ptr_
  %_cond1_n_cond2_81 = and i1 %_cond1_76, %_cond2_79
  %_cond1_n_cond2_cond3_82 = and i1 %_cond1_n_cond2_81, %_cond4_80
  %_address_in_parent_stack_bt_84..v = select i1 %_cond1_n_cond2_cond3_82, i8* %_pot_address_in_parent_stack_75, i8* %_new_gep_18
  %_address_in_parent_stack_bt_84. = bitcast i8* %_address_in_parent_stack_bt_84..v to i32*
  %_new_load_85 = load i32, i32* %_address_in_parent_stack_bt_84., align 4
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !27
  %24 = trunc i32 %_new_load_85 to i8, !mcsema_real_eip !27
  %25 = call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !27
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !27
  %28 = icmp eq i32 %_new_load_85, 0, !mcsema_real_eip !27
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !27
  %29 = icmp slt i32 %_new_load_85, 0
  store i1 %29, i1* %SF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !27
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !27
  br i1 %29, label %block_0x5e, label %block_0x1d, !mcsema_real_eip !28

block_0x1d:                                       ; preds = %block_0x13
  store i64 2, i64* %XAX, align 8, !mcsema_real_eip !30
  %_new_load_100 = load i32, i32* %_address_in_parent_stack_bt_84., align 4
  %30 = zext i32 %_new_load_100 to i64, !mcsema_real_eip !31
  store i64 %30, i64* %XCX, align 8, !mcsema_real_eip !31
  %_new_gep_24 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17, i64 -20
  %31 = bitcast i8* %_new_gep_24 to i32*
  store i32 2, i32* %31, align 4, !mcsema_real_eip !32
  %ECX_val.53 = load i32, i32* %ECX.52, align 4, !mcsema_real_eip !29
  %32 = zext i32 %ECX_val.53 to i64, !mcsema_real_eip !29
  store i64 %32, i64* %XAX, align 8, !mcsema_real_eip !29
  %EAX_val.55.lobit = ashr i32 %ECX_val.53, 31
  %33 = zext i32 %EAX_val.55.lobit to i64
  store i64 %33, i64* %XDX, align 8, !mcsema_real_eip !33
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_27 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26, i64 -20
  %34 = ptrtoint i8* %_new_gep_27 to i64
  %_offset_above_rbp_104 = sub i64 %34, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  %.v2 = select i1 %_cond1_n_cond2_cond3_112, i8* %_pot_address_in_parent_stack_105, i8* %_new_gep_27
  %35 = bitcast i8* %.v2 to i32*
  %_new_load_115 = load i32, i32* %35, align 4
  %36 = zext i32 %_new_load_115 to i64, !mcsema_real_eip !34
  store i64 %36, i64* %XCX, align 8, !mcsema_real_eip !34
  %37 = shl nuw i64 %33, 32, !mcsema_real_eip !35
  %38 = sext i32 %ECX_val.53 to i64, !mcsema_real_eip !35
  %39 = or i64 %37, %38, !mcsema_real_eip !35
  %40 = sext i32 %_new_load_115 to i64, !mcsema_real_eip !35
  %41 = sdiv i64 %39, %40, !mcsema_real_eip !35
  %42 = srem i64 %39, %40, !mcsema_real_eip !35
  %43 = and i64 %42, 4294967295
  store i64 %43, i64* %XDX, align 8, !mcsema_real_eip !35
  %44 = and i64 %41, 4294967295
  store i64 %44, i64* %XAX, align 8, !mcsema_real_eip !35
  %45 = trunc i64 %42 to i32
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !36
  %46 = trunc i64 %42 to i8
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !36
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  store i1 %49, i1* %PF, align 1, !mcsema_real_eip !36
  %50 = icmp eq i32 %45, 0, !mcsema_real_eip !36
  store i1 %50, i1* %ZF, align 1, !mcsema_real_eip !36
  %51 = icmp slt i32 %45, 0
  store i1 %51, i1* %SF, align 1, !mcsema_real_eip !36
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !36
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !36
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26, i64 -12
  %52 = ptrtoint i8* %_new_gep_45 to i64
  %53 = bitcast i8* %_new_gep_45 to i32*
  %_offset_above_rbp_179 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  %_address_in_parent_stack_bt_189 = bitcast i8* %_pot_address_in_parent_stack_180 to i32*
  %_address_in_parent_stack_bt_189. = select i1 %_cond1_n_cond2_cond3_187, i32* %_address_in_parent_stack_bt_189, i32* %53
  %_new_load_190 = load i32, i32* %_address_in_parent_stack_bt_189., align 4
  %54 = zext i32 %_new_load_190 to i64
  store i64 %54, i64* %XAX, align 8
  br i1 %50, label %block_0x39, label %block_0x47, !mcsema_real_eip !37

block_0x5e:                                       ; preds = %block_0x13
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !20
  %_new_gep_30 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17, i64 -16
  %55 = ptrtoint i8* %_new_gep_30 to i64
  %_offset_above_rbp_119 = sub i64 %55, %_local_end_to_int_
  %_pot_address_in_parent_stack_120 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_119
  %_cond1_121 = icmp ugt i8* %_new_gep_30, %_local_stack_end_ptr_
  %_cond2_1_122 = icmp ugt i8* %_new_gep_30, %_parent_stack_end_ptr_
  %_cond2_2_123 = icmp ult i8* %_new_gep_30, %_parent_stack_start_ptr_
  %_cond2_124 = or i1 %_cond2_1_122, %_cond2_2_123
  %_cond4_125 = icmp ule i8* %_pot_address_in_parent_stack_120, %_parent_stack_end_ptr_
  %_cond1_n_cond2_126 = and i1 %_cond1_121, %_cond2_124
  %_cond1_n_cond2_cond3_127 = and i1 %_cond1_n_cond2_126, %_cond4_125
  %_address_in_parent_stack_bt_129..v = select i1 %_cond1_n_cond2_cond3_127, i8* %_pot_address_in_parent_stack_120, i8* %_new_gep_30
  %_address_in_parent_stack_bt_129. = bitcast i8* %_address_in_parent_stack_bt_129..v to i32*
  %_new_load_130 = load i32, i32* %_address_in_parent_stack_bt_129., align 4
  %56 = zext i32 %_new_load_130 to i64, !mcsema_real_eip !38
  store i64 %56, i64* %XAX, align 8, !mcsema_real_eip !38
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.46 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %_ptr_to_int_131 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32 to i64
  %_offset_above_rbp_134 = sub i64 %_ptr_to_int_131, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  %.v3 = select i1 %_cond1_n_cond2_cond3_142, i8* %_pot_address_in_parent_stack_135, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32
  %57 = bitcast i8* %.v3 to i64*
  %_new_load_145 = load i64, i64* %57, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_145 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_145, i64* %XBP, align 8, !mcsema_real_eip !39
  %_new_gep_34 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 8
  %58 = add i64 %RSP_val.46, 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_, align 8
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !39
  %_new_gep_36 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 16
  %59 = add i64 %RSP_val.46, 16, !mcsema_real_eip !40
  %_ptr_to_int_146 = ptrtoint i8* %_new_gep_34 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  %_address_in_parent_stack_bt_159._allin_new_bt_37.v = select i1 %_cond1_n_cond2_cond3_157, i8* %_pot_address_in_parent_stack_150, i8* %_new_gep_34
  %_address_in_parent_stack_bt_159._allin_new_bt_37 = bitcast i8* %_address_in_parent_stack_bt_159._allin_new_bt_37.v to i64*
  %_new_load_160 = load i64, i64* %_address_in_parent_stack_bt_159._allin_new_bt_37, align 8
  store i64 %_new_load_160, i64* %XIP, align 8, !mcsema_real_eip !40
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_, align 8
  store i64 %59, i64* %XSP, align 8, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40

block_0x39:                                       ; preds = %block_0x1d
  %60 = add i32 %_new_load_190, 10, !mcsema_real_eip !41
  %61 = xor i32 %60, %_new_load_190, !mcsema_real_eip !41
  %62 = and i32 %61, 16, !mcsema_real_eip !41
  %63 = icmp ne i32 %62, 0, !mcsema_real_eip !41
  store i1 %63, i1* %AF, align 1, !mcsema_real_eip !41
  %64 = icmp slt i32 %60, 0
  store i1 %64, i1* %SF, align 1, !mcsema_real_eip !41
  %65 = icmp eq i32 %60, 0, !mcsema_real_eip !41
  store i1 %65, i1* %ZF, align 1, !mcsema_real_eip !41
  %66 = xor i32 %_new_load_190, -2147483648, !mcsema_real_eip !41
  %67 = and i32 %61, %66, !mcsema_real_eip !41
  %68 = icmp slt i32 %67, 0
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !41
  %69 = trunc i32 %60 to i8, !mcsema_real_eip !41
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !41
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  store i1 %72, i1* %PF, align 1, !mcsema_real_eip !41
  %73 = icmp ugt i32 %_new_load_190, -11
  store i1 %73, i1* %CF, align 1, !mcsema_real_eip !41
  %74 = zext i32 %60 to i64, !mcsema_real_eip !41
  store i64 %74, i64* %XAX, align 8, !mcsema_real_eip !41
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26, i64 -16
  %75 = bitcast i8* %_new_gep_42 to i32*
  store i32 %60, i32* %75, align 4, !mcsema_real_eip !42
  br label %block_0x50, !mcsema_real_eip !43

block_0x47:                                       ; preds = %block_0x1d
  %76 = add i32 %_new_load_190, -10
  %77 = xor i32 %76, %_new_load_190, !mcsema_real_eip !44
  %78 = and i32 %77, 16, !mcsema_real_eip !44
  %79 = icmp ne i32 %78, 0, !mcsema_real_eip !44
  store i1 %79, i1* %AF, align 1, !mcsema_real_eip !44
  %80 = trunc i32 %76 to i8, !mcsema_real_eip !44
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !44
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  store i1 %83, i1* %PF, align 1, !mcsema_real_eip !44
  %84 = icmp eq i32 %76, 0, !mcsema_real_eip !44
  store i1 %84, i1* %ZF, align 1, !mcsema_real_eip !44
  %85 = icmp slt i32 %76, 0
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !44
  %86 = icmp ult i32 %_new_load_190, 10, !mcsema_real_eip !44
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !44
  %87 = and i32 %77, %_new_load_190, !mcsema_real_eip !44
  %88 = icmp slt i32 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !44
  %89 = zext i32 %76 to i64, !mcsema_real_eip !44
  store i64 %89, i64* %XAX, align 8, !mcsema_real_eip !44
  store i32 %76, i32* %53, align 4, !mcsema_real_eip !45
  br label %block_0x50, !mcsema_real_eip !46

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -4
  %90 = ptrtoint i8* %_new_gep_51 to i64
  %91 = bitcast i8* %_new_gep_51 to i32*
  %_offset_above_rbp_194 = sub i64 %90, %_local_end_to_int_
  %_pot_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_197 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_198 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_199 = or i1 %_cond2_1_197, %_cond2_2_198
  %_cond4_200 = icmp ule i8* %_pot_address_in_parent_stack_195, %_parent_stack_end_ptr_
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  %_address_in_parent_stack_bt_204 = bitcast i8* %_pot_address_in_parent_stack_195 to i32*
  %_address_in_parent_stack_bt_204. = select i1 %_cond1_n_cond2_cond3_202, i32* %_address_in_parent_stack_bt_204, i32* %91
  %_new_load_205 = load i32, i32* %_address_in_parent_stack_bt_204., align 4
  %92 = add i32 %_new_load_205, -1, !mcsema_real_eip !48
  %93 = xor i32 %92, %_new_load_205, !mcsema_real_eip !48
  %94 = and i32 %93, 16
  %95 = icmp eq i32 %94, 0
  store i1 %95, i1* %AF, align 1, !mcsema_real_eip !48
  %96 = icmp slt i32 %92, 0
  store i1 %96, i1* %SF, align 1, !mcsema_real_eip !48
  %97 = icmp eq i32 %92, 0, !mcsema_real_eip !48
  store i1 %97, i1* %ZF, align 1, !mcsema_real_eip !48
  %98 = and i32 %93, %_new_load_205, !mcsema_real_eip !48
  %99 = icmp slt i32 %98, 0
  store i1 %99, i1* %OF, align 1, !mcsema_real_eip !48
  %100 = trunc i32 %92 to i8, !mcsema_real_eip !48
  %101 = call i8 @llvm.ctpop.i8(i8 %100), !mcsema_real_eip !48
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  store i1 %103, i1* %PF, align 1, !mcsema_real_eip !48
  %104 = icmp ne i32 %_new_load_205, 0
  store i1 %104, i1* %CF, align 1, !mcsema_real_eip !48
  %105 = zext i32 %92 to i64, !mcsema_real_eip !48
  store i64 %105, i64* %XAX, align 8, !mcsema_real_eip !48
  store i32 %92, i32* %91, align 4, !mcsema_real_eip !49
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_17.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x13, !mcsema_real_eip !50
}

attributes #0 = { noinline }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 112}
!3 = !{i64 113}
!4 = !{i64 116}
!5 = !{i64 120}
!6 = !{i64 125}
!7 = !{i64 130}
!8 = !{i64 137}
!9 = !{i64 142}
!10 = !{i64 152}
!11 = !{i64 155}
!12 = !{i64 158}
!13 = !{i64 160}
!14 = !{i64 165}
!15 = !{i64 168}
!16 = !{i64 171}
!17 = !{i64 173}
!18 = !{i64 177}
!19 = !{i64 178}
!20 = !{i64 0}
!21 = !{i64 1}
!22 = !{i64 4}
!23 = !{i64 7}
!24 = !{i64 10}
!25 = !{i64 13}
!26 = !{i64 16}
!27 = !{i64 19}
!28 = !{i64 23}
!29 = !{i64 40}
!30 = !{i64 29}
!31 = !{i64 34}
!32 = !{i64 37}
!33 = !{i64 42}
!34 = !{i64 43}
!35 = !{i64 46}
!36 = !{i64 48}
!37 = !{i64 51}
!38 = !{i64 94}
!39 = !{i64 97}
!40 = !{i64 98}
!41 = !{i64 60}
!42 = !{i64 63}
!43 = !{i64 66}
!44 = !{i64 74}
!45 = !{i64 77}
!46 = !{i64 57}
!47 = !{i64 80}
!48 = !{i64 83}
!49 = !{i64 86}
!50 = !{i64 89}
