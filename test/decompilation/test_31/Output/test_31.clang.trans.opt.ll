; ModuleID = 'Output/test_31.clang.trans.opt.bc'
source_filename = "Output/test_31.clang.bc"
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
module asm "  .globl sub_60;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_60(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x99 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) local_unnamed_addr #0 {
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
  store i64 5, i64* %XDI, align 8, !mcsema_real_eip !5
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !6
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %14 = add i64 %RSP_val.1, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !7
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !7
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, align 8, !mcsema_real_eip !8
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.7 = load i32, i32* %EAX.6, align 4, !mcsema_real_eip !9
  %15 = zext i32 %EAX_val.7 to i64, !mcsema_real_eip !9
  store i64 %15, i64* %XSI, align 8, !mcsema_real_eip !9
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !10
  store i8 0, i8* %AL.8, align 1, !mcsema_real_eip !10
  %RDX_val.11 = load i64, i64* %XDX, align 8, !mcsema_real_eip !11
  %RCX_val.12 = load i64, i64* %XCX, align 8, !mcsema_real_eip !11
  %R8_val.13 = load i64, i64* %R8, align 8, !mcsema_real_eip !11
  %R9_val.14 = load i64, i64* %R9, align 8, !mcsema_real_eip !11
  %_allin_new_bt_20 = bitcast i8* %_gep_fix_ to i64*
  %16 = load i64, i64* %_allin_new_bt_20, align 8, !mcsema_real_eip !11
  %_new_gep_21 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 16
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %17 = load i64, i64* %_allin_new_bt_22, align 8, !mcsema_real_eip !11
  %_new_gep_23 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = load i64, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !11
  %_new_gep_25 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %19 = load i64, i64* %_allin_new_bt_26, align 8, !mcsema_real_eip !11
  %_new_gep_27 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %20 = load i64, i64* %_allin_new_bt_28, align 8, !mcsema_real_eip !11
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 48
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %21 = load i64, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !11
  %RSP_val.16 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %22 = add i64 %RSP_val.16, -8
  %_allin_new_bt_33 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !11
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i8** %_RSP_ptr_, align 8
  store i64 %22, i64* %XSP, align 8, !mcsema_real_eip !11
  %23 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x99 to i64), i64 %15, i64 %RDX_val.11, i64 %RCX_val.12, i64 %R8_val.13, i64 %R9_val.14, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_61 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_61, i64 8
  store i8* %_gep_fix_62, i8** %_RSP_ptr_, align 8
  %ESI.17 = bitcast i64* %XSI to i32*, !mcsema_real_eip !12
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !12
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_345 = load i8*, i8** %12, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_345, i64 -8
  %24 = trunc i64 %23 to i32
  %25 = bitcast i8* %_new_gep_35 to i32*
  store i32 %24, i32* %25, align 4, !mcsema_real_eip !13
  %ESI_val.25 = load i32, i32* %ESI.17, align 4, !mcsema_real_eip !14
  %26 = zext i32 %ESI_val.25 to i64, !mcsema_real_eip !14
  store i64 %26, i64* %XAX, align 8, !mcsema_real_eip !14
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.26 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_38 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 16
  %27 = add i64 %RSP_val.26, 16, !mcsema_real_eip !15
  %_trans_p2i_39 = ptrtoint i8* %_new_gep_38 to i64
  %_trans_p2i_40 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 to i64
  %_trans_xor_41 = xor i64 %_trans_p2i_39, %_trans_p2i_40
  %28 = and i64 %_trans_xor_41, 16
  %29 = icmp eq i64 %28, 0
  store i1 %29, i1* %AF, align 1, !mcsema_real_eip !15
  %30 = icmp slt i64 %27, 0
  store i1 %30, i1* %SF, align 1, !mcsema_real_eip !15
  %_trans_icmp_eq_43 = icmp eq i8* %_new_gep_38, null
  store i1 %_trans_icmp_eq_43, i1* %ZF, align 1, !mcsema_real_eip !15
  %31 = xor i64 %_trans_p2i_40, -9223372036854775808, !mcsema_real_eip !15
  %32 = and i64 %_trans_xor_41, %31, !mcsema_real_eip !15
  %33 = icmp slt i64 %32, 0
  store i1 %33, i1* %OF, align 1, !mcsema_real_eip !15
  %_trans_trunc_50 = trunc i64 %_trans_p2i_39 to i8
  %34 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_50), !mcsema_real_eip !15
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  store i1 %36, i1* %PF, align 1, !mcsema_real_eip !15
  %_trans_icmp_ne_52 = icmp ne i64 %_trans_p2i_39, %RSP_val.26
  store i1 %_trans_icmp_ne_52, i1* %CF, align 1, !mcsema_real_eip !15
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_, align 8
  store i64 %27, i64* %XSP, align 8, !mcsema_real_eip !15
  %_allin_new_bt_54 = bitcast i8* %_new_gep_38 to i64*
  %37 = load i64, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !16
  store volatile i64 %37, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %37, i64* %XBP, align 8, !mcsema_real_eip !16
  %_new_gep_55 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 24
  %38 = add i64 %RSP_val.26, 24, !mcsema_real_eip !16
  store volatile i8* %_new_gep_55, i8** %_RSP_ptr_, align 8
  store i64 %38, i64* %XSP, align 8, !mcsema_real_eip !16
  %_new_gep_57 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 32
  %39 = add i64 %RSP_val.26, 32, !mcsema_real_eip !17
  %_allin_new_bt_58 = bitcast i8* %_new_gep_55 to i64*
  %40 = load i64, i64* %_allin_new_bt_58, align 8, !mcsema_real_eip !17
  store i64 %40, i64* %XIP, align 8, !mcsema_real_eip !17
  store volatile i8* %_new_gep_57, i8** %_RSP_ptr_, align 8
  store i64 %39, i64* %XSP, align 8, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !18
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !18
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !18
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !18
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !18
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !18
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !18
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !18
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !18
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !18
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !18
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !18
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !18
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !18
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !18
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !18
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !18
  %RBP_val.29 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !18
  %1 = add i64 %RSP_val.30, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !18
  store i64 %RBP_val.29, i64* %2, align 8, !mcsema_real_eip !18
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !19
  %3 = add i64 %RSP_val.30, -24
  %4 = xor i64 %3, %1, !mcsema_real_eip !20
  %5 = and i64 %4, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !20
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !20
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !20
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !20
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !20
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !20
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !20
  %13 = icmp ult i64 %1, 16, !mcsema_real_eip !20
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !20
  %14 = and i64 %4, %1, !mcsema_real_eip !20
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !20
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !20
  store i64 1, i64* %XAX, align 8, !mcsema_real_eip !21
  %16 = add i64 %RSP_val.30, -16, !mcsema_real_eip !22
  %EDI.34 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.35 = load i32, i32* %EDI.34, align 4, !mcsema_real_eip !22
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.35, i32* %17, align 4, !mcsema_real_eip !22
  %RBP_val.36 = load i64, i64* %XBP, align 8, !mcsema_real_eip !23
  %18 = add i64 %RBP_val.36, -8, !mcsema_real_eip !23
  %EAX.37 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.38 = load i32, i32* %EAX.37, align 4, !mcsema_real_eip !23
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !23
  %20 = load i32, i32* %19, align 4, !mcsema_real_eip !23
  %21 = sub i32 %EAX_val.38, %20, !mcsema_real_eip !23
  %22 = xor i32 %21, %EAX_val.38, !mcsema_real_eip !23
  %23 = xor i32 %22, %20, !mcsema_real_eip !23
  %24 = and i32 %23, 16, !mcsema_real_eip !23
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !23
  store i1 %25, i1* %AF, align 1, !mcsema_real_eip !23
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !23
  %27 = tail call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !23
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  store i1 %29, i1* %PF, align 1, !mcsema_real_eip !23
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !23
  store i1 %30, i1* %ZF, align 1, !mcsema_real_eip !23
  %31 = icmp slt i32 %21, 0
  store i1 %31, i1* %SF, align 1, !mcsema_real_eip !23
  %32 = icmp ult i32 %EAX_val.38, %20, !mcsema_real_eip !23
  store i1 %32, i1* %CF, align 1, !mcsema_real_eip !23
  %33 = xor i32 %20, %EAX_val.38, !mcsema_real_eip !23
  %34 = and i32 %22, %33, !mcsema_real_eip !23
  %35 = icmp slt i32 %34, 0
  store i1 %35, i1* %OF, align 1, !mcsema_real_eip !23
  br i1 %30, label %block_0x53, label %block_0x19, !mcsema_real_eip !24

block_0x19:                                       ; preds = %entry
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !25
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !25
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !25
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !25
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !25
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !25
  %36 = load i32, i32* %19, align 4, !mcsema_real_eip !26
  %37 = sub i32 0, %36, !mcsema_real_eip !26
  %38 = xor i32 %36, %37, !mcsema_real_eip !26
  %39 = and i32 %38, 16, !mcsema_real_eip !26
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !26
  store i1 %40, i1* %AF, align 1, !mcsema_real_eip !26
  %41 = trunc i32 %37 to i8, !mcsema_real_eip !26
  %42 = tail call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !26
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !26
  %45 = icmp eq i32 %36, 0
  store i1 %45, i1* %ZF, align 1, !mcsema_real_eip !26
  %46 = icmp slt i32 %37, 0
  store i1 %46, i1* %SF, align 1, !mcsema_real_eip !26
  %47 = icmp ne i32 %36, 0
  store i1 %47, i1* %CF, align 1, !mcsema_real_eip !26
  %48 = and i32 %36, %37, !mcsema_real_eip !26
  %49 = icmp slt i32 %48, 0
  store i1 %49, i1* %OF, align 1, !mcsema_real_eip !26
  br i1 %45, label %block_0x53, label %block_0x30, !mcsema_real_eip !27

block_0x53:                                       ; preds = %entry, %block_0x19, %block_0x30
  %.sink1.in = phi i64 [ %RBP_val.64, %block_0x30 ], [ %RBP_val.36, %block_0x19 ], [ %RBP_val.36, %entry ]
  %EDI_val.71.sink = phi i32 [ %116, %block_0x30 ], [ 1, %block_0x19 ], [ 1, %entry ]
  %.sink1 = add i64 %.sink1.in, -4
  %50 = inttoptr i64 %.sink1 to i32*
  store i32 %EDI_val.71.sink, i32* %50, align 4
  %RBP_val.47 = load i64, i64* %XBP, align 8, !mcsema_real_eip !28
  %51 = add i64 %RBP_val.47, -4, !mcsema_real_eip !28
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !28
  %53 = load i32, i32* %52, align 4, !mcsema_real_eip !28
  %54 = zext i32 %53 to i64, !mcsema_real_eip !28
  store i64 %54, i64* %XAX, align 8, !mcsema_real_eip !28
  %RSP_val.48 = load i64, i64* %XSP, align 8, !mcsema_real_eip !29
  %55 = add i64 %RSP_val.48, 16, !mcsema_real_eip !29
  %56 = xor i64 %55, %RSP_val.48, !mcsema_real_eip !29
  %57 = and i64 %56, 16
  %58 = icmp eq i64 %57, 0
  store i1 %58, i1* %AF, align 1, !mcsema_real_eip !29
  %59 = icmp slt i64 %55, 0
  store i1 %59, i1* %SF, align 1, !mcsema_real_eip !29
  %60 = icmp eq i64 %55, 0, !mcsema_real_eip !29
  store i1 %60, i1* %ZF, align 1, !mcsema_real_eip !29
  %61 = xor i64 %RSP_val.48, -9223372036854775808, !mcsema_real_eip !29
  %62 = and i64 %56, %61, !mcsema_real_eip !29
  %63 = icmp slt i64 %62, 0
  store i1 %63, i1* %OF, align 1, !mcsema_real_eip !29
  %64 = trunc i64 %55 to i8, !mcsema_real_eip !29
  %65 = tail call i8 @llvm.ctpop.i8(i8 %64), !mcsema_real_eip !29
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  store i1 %67, i1* %PF, align 1, !mcsema_real_eip !29
  %68 = icmp ugt i64 %RSP_val.48, -17
  store i1 %68, i1* %CF, align 1, !mcsema_real_eip !29
  store i64 %55, i64* %XSP, align 8, !mcsema_real_eip !29
  %69 = inttoptr i64 %55 to i64*, !mcsema_real_eip !30
  %70 = load i64, i64* %69, align 8, !mcsema_real_eip !30
  store i64 %70, i64* %XBP, align 8, !mcsema_real_eip !30
  %71 = add i64 %RSP_val.48, 24, !mcsema_real_eip !30
  store i64 %71, i64* %XSP, align 8, !mcsema_real_eip !30
  %72 = add i64 %RSP_val.48, 32, !mcsema_real_eip !31
  %73 = inttoptr i64 %71 to i64*, !mcsema_real_eip !31
  %74 = load i64, i64* %73, align 8, !mcsema_real_eip !31
  store i64 %74, i64* %XIP, align 8, !mcsema_real_eip !31
  store i64 %72, i64* %XSP, align 8, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x30:                                       ; preds = %block_0x19
  %75 = load i32, i32* %19, align 4, !mcsema_real_eip !32
  %76 = add i32 %75, -1
  %77 = xor i32 %76, %75, !mcsema_real_eip !33
  %78 = and i32 %77, 16, !mcsema_real_eip !33
  %79 = icmp ne i32 %78, 0, !mcsema_real_eip !33
  store i1 %79, i1* %AF, align 1, !mcsema_real_eip !33
  %80 = trunc i32 %76 to i8, !mcsema_real_eip !33
  %81 = tail call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !33
  %82 = and i8 %81, 1
  %83 = icmp eq i8 %82, 0
  store i1 %83, i1* %PF, align 1, !mcsema_real_eip !33
  %84 = icmp eq i32 %76, 0, !mcsema_real_eip !33
  store i1 %84, i1* %ZF, align 1, !mcsema_real_eip !33
  %85 = icmp slt i32 %76, 0
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !33
  %86 = icmp eq i32 %75, 0
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !33
  %87 = and i32 %77, %75, !mcsema_real_eip !33
  %88 = icmp slt i32 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !33
  %89 = zext i32 %76 to i64
  store i64 %89, i64* %XAX, align 8, !mcsema_real_eip !33
  store i64 %89, i64* %XDI, align 8, !mcsema_real_eip !34
  %RSP_val.56 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %90 = add i64 %RSP_val.56, -8
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !35
  store i64 -4981261766360305936, i64* %91, align 8, !mcsema_real_eip !35
  store i64 %90, i64* %XSP, align 8, !mcsema_real_eip !35
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !35
  %RBP_val.57 = load i64, i64* %XBP, align 8, !mcsema_real_eip !36
  %92 = add i64 %RBP_val.57, -8, !mcsema_real_eip !36
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !36
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !36
  %95 = add i32 %94, -2
  %96 = xor i32 %95, %94, !mcsema_real_eip !37
  %97 = and i32 %96, 16, !mcsema_real_eip !37
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !37
  store i1 %98, i1* %AF, align 1, !mcsema_real_eip !37
  %99 = trunc i32 %95 to i8, !mcsema_real_eip !37
  %100 = tail call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !37
  %101 = and i8 %100, 1
  %102 = icmp eq i8 %101, 0
  store i1 %102, i1* %PF, align 1, !mcsema_real_eip !37
  %103 = icmp eq i32 %95, 0, !mcsema_real_eip !37
  store i1 %103, i1* %ZF, align 1, !mcsema_real_eip !37
  %104 = icmp slt i32 %95, 0
  store i1 %104, i1* %SF, align 1, !mcsema_real_eip !37
  %105 = icmp ult i32 %94, 2, !mcsema_real_eip !37
  store i1 %105, i1* %CF, align 1, !mcsema_real_eip !37
  %106 = and i32 %96, %94, !mcsema_real_eip !37
  %107 = icmp slt i32 %106, 0
  store i1 %107, i1* %OF, align 1, !mcsema_real_eip !37
  %108 = zext i32 %95 to i64, !mcsema_real_eip !37
  store i64 %108, i64* %XDI, align 8, !mcsema_real_eip !37
  %109 = add i64 %RBP_val.57, -12, !mcsema_real_eip !38
  %EAX_val.62 = load i32, i32* %EAX.37, align 4, !mcsema_real_eip !38
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.62, i32* %110, align 4, !mcsema_real_eip !38
  %RSP_val.63 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %111 = add i64 %RSP_val.63, -8
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !39
  store i64 -4981261766360305936, i64* %112, align 8, !mcsema_real_eip !39
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !39
  tail call x86_64_sysvcc void @sub_0(%RegState* nonnull %0), !mcsema_real_eip !39
  %RBP_val.64 = load i64, i64* %XBP, align 8, !mcsema_real_eip !40
  %113 = add i64 %RBP_val.64, -12, !mcsema_real_eip !40
  %114 = inttoptr i64 %113 to i32*, !mcsema_real_eip !40
  %115 = load i32, i32* %114, align 4, !mcsema_real_eip !40
  %EAX_val.68 = load i32, i32* %EAX.37, align 4, !mcsema_real_eip !41
  %116 = add i32 %EAX_val.68, %115, !mcsema_real_eip !41
  %117 = xor i32 %116, %115, !mcsema_real_eip !41
  %118 = xor i32 %117, %EAX_val.68, !mcsema_real_eip !41
  %119 = and i32 %118, 16, !mcsema_real_eip !41
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !41
  store i1 %120, i1* %AF, align 1, !mcsema_real_eip !41
  %121 = icmp slt i32 %116, 0
  store i1 %121, i1* %SF, align 1, !mcsema_real_eip !41
  %122 = icmp eq i32 %116, 0, !mcsema_real_eip !41
  store i1 %122, i1* %ZF, align 1, !mcsema_real_eip !41
  %123 = xor i32 %115, -2147483648, !mcsema_real_eip !41
  %124 = xor i32 %123, %EAX_val.68, !mcsema_real_eip !41
  %125 = and i32 %117, %124, !mcsema_real_eip !41
  %126 = icmp slt i32 %125, 0
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !41
  %127 = trunc i32 %116 to i8, !mcsema_real_eip !41
  %128 = tail call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !41
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  store i1 %130, i1* %PF, align 1, !mcsema_real_eip !41
  %131 = icmp ult i32 %116, %115, !mcsema_real_eip !41
  store i1 %131, i1* %CF, align 1, !mcsema_real_eip !41
  %132 = zext i32 %116 to i64, !mcsema_real_eip !41
  store i64 %132, i64* %XDI, align 8, !mcsema_real_eip !41
  br label %block_0x53
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60.1(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
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
  store i64 5, i64* %XDI, align 8, !mcsema_real_eip !5
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !6
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.1, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !7
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !7
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, align 8, !mcsema_real_eip !8
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.7 = load i32, i32* %EAX.6, align 4, !mcsema_real_eip !9
  %13 = zext i32 %EAX_val.7 to i64, !mcsema_real_eip !9
  store i64 %13, i64* %XSI, align 8, !mcsema_real_eip !9
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !10
  store i8 0, i8* %AL.8, align 1, !mcsema_real_eip !10
  %RDX_val.11 = load i64, i64* %XDX, align 8, !mcsema_real_eip !11
  %RCX_val.12 = load i64, i64* %XCX, align 8, !mcsema_real_eip !11
  %R8_val.13 = load i64, i64* %R8, align 8, !mcsema_real_eip !11
  %R9_val.14 = load i64, i64* %R9, align 8, !mcsema_real_eip !11
  %_ptr_to_int_ = ptrtoint i8* %_gep_fix_ to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_gep_fix_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_gep_fix_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_gep_fix_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_gep_fix_
  %14 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %14, align 8
  %_new_gep_21 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 16
  %_ptr_to_int_63 = ptrtoint i8* %_new_gep_21 to i64
  %_offset_above_rbp_66 = sub i64 %_ptr_to_int_63, %_local_end_to_int_
  %_pot_address_in_parent_stack_67 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_66
  %_cond1_68 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_69 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_70 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_71 = or i1 %_cond2_1_69, %_cond2_2_70
  %_cond4_72 = icmp ule i8* %_pot_address_in_parent_stack_67, %_parent_stack_end_ptr_
  %_cond1_n_cond2_73 = and i1 %_cond1_68, %_cond2_71
  %_cond1_n_cond2_cond3_74 = and i1 %_cond1_n_cond2_73, %_cond4_72
  %_address_in_parent_stack_bt_76._allin_new_bt_22.v = select i1 %_cond1_n_cond2_cond3_74, i8* %_pot_address_in_parent_stack_67, i8* %_new_gep_21
  %_address_in_parent_stack_bt_76._allin_new_bt_22 = bitcast i8* %_address_in_parent_stack_bt_76._allin_new_bt_22.v to i64*
  %_new_load_77 = load i64, i64* %_address_in_parent_stack_bt_76._allin_new_bt_22, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %_ptr_to_int_78 = ptrtoint i8* %_new_gep_23 to i64
  %_offset_above_rbp_81 = sub i64 %_ptr_to_int_78, %_local_end_to_int_
  %_pot_address_in_parent_stack_82 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_81
  %_cond1_83 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_84 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_85 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_86 = or i1 %_cond2_1_84, %_cond2_2_85
  %_cond4_87 = icmp ule i8* %_pot_address_in_parent_stack_82, %_parent_stack_end_ptr_
  %_cond1_n_cond2_88 = and i1 %_cond1_83, %_cond2_86
  %_cond1_n_cond2_cond3_89 = and i1 %_cond1_n_cond2_88, %_cond4_87
  %.v2 = select i1 %_cond1_n_cond2_cond3_89, i8* %_pot_address_in_parent_stack_82, i8* %_new_gep_23
  %15 = bitcast i8* %.v2 to i64*
  %_new_load_92 = load i64, i64* %15, align 8
  %_new_gep_25 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %_ptr_to_int_93 = ptrtoint i8* %_new_gep_25 to i64
  %_offset_above_rbp_96 = sub i64 %_ptr_to_int_93, %_local_end_to_int_
  %_pot_address_in_parent_stack_97 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_96
  %_cond1_98 = icmp ugt i8* %_new_gep_25, %_local_stack_end_ptr_
  %_cond2_1_99 = icmp ugt i8* %_new_gep_25, %_parent_stack_end_ptr_
  %_cond2_2_100 = icmp ult i8* %_new_gep_25, %_parent_stack_start_ptr_
  %_cond2_101 = or i1 %_cond2_1_99, %_cond2_2_100
  %_cond4_102 = icmp ule i8* %_pot_address_in_parent_stack_97, %_parent_stack_end_ptr_
  %_cond1_n_cond2_103 = and i1 %_cond1_98, %_cond2_101
  %_cond1_n_cond2_cond3_104 = and i1 %_cond1_n_cond2_103, %_cond4_102
  %_address_in_parent_stack_bt_106._allin_new_bt_26.v = select i1 %_cond1_n_cond2_cond3_104, i8* %_pot_address_in_parent_stack_97, i8* %_new_gep_25
  %_address_in_parent_stack_bt_106._allin_new_bt_26 = bitcast i8* %_address_in_parent_stack_bt_106._allin_new_bt_26.v to i64*
  %_new_load_107 = load i64, i64* %_address_in_parent_stack_bt_106._allin_new_bt_26, align 8
  %_new_gep_27 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %_ptr_to_int_108 = ptrtoint i8* %_new_gep_27 to i64
  %_offset_above_rbp_111 = sub i64 %_ptr_to_int_108, %_local_end_to_int_
  %_pot_address_in_parent_stack_112 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_111
  %_cond1_113 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_114 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_115 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_116 = or i1 %_cond2_1_114, %_cond2_2_115
  %_cond4_117 = icmp ule i8* %_pot_address_in_parent_stack_112, %_parent_stack_end_ptr_
  %_cond1_n_cond2_118 = and i1 %_cond1_113, %_cond2_116
  %_cond1_n_cond2_cond3_119 = and i1 %_cond1_n_cond2_118, %_cond4_117
  %.v3 = select i1 %_cond1_n_cond2_cond3_119, i8* %_pot_address_in_parent_stack_112, i8* %_new_gep_27
  %16 = bitcast i8* %.v3 to i64*
  %_new_load_122 = load i64, i64* %16, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 48
  %_ptr_to_int_123 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_126 = sub i64 %_ptr_to_int_123, %_local_end_to_int_
  %_pot_address_in_parent_stack_127 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_126
  %_cond1_128 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_129 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_130 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_131 = or i1 %_cond2_1_129, %_cond2_2_130
  %_cond4_132 = icmp ule i8* %_pot_address_in_parent_stack_127, %_parent_stack_end_ptr_
  %_cond1_n_cond2_133 = and i1 %_cond1_128, %_cond2_131
  %_cond1_n_cond2_cond3_134 = and i1 %_cond1_n_cond2_133, %_cond4_132
  %_address_in_parent_stack_bt_136._allin_new_bt_30.v = select i1 %_cond1_n_cond2_cond3_134, i8* %_pot_address_in_parent_stack_127, i8* %_new_gep_29
  %_address_in_parent_stack_bt_136._allin_new_bt_30 = bitcast i8* %_address_in_parent_stack_bt_136._allin_new_bt_30.v to i64*
  %_new_load_137 = load i64, i64* %_address_in_parent_stack_bt_136._allin_new_bt_30, align 8
  %RSP_val.16 = load i64, i64* %XSP, align 8, !mcsema_real_eip !11
  %17 = add i64 %RSP_val.16, -8
  %_allin_new_bt_33 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !11
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i8** %_RSP_ptr_, align 8
  store i64 %17, i64* %XSP, align 8, !mcsema_real_eip !11
  %18 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x99 to i64), i64 %13, i64 %RDX_val.11, i64 %RCX_val.12, i64 %R8_val.13, i64 %R9_val.14, i64 %_new_load_, i64 %_new_load_77, i64 %_new_load_92, i64 %_new_load_107, i64 %_new_load_122, i64 %_new_load_137)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_61 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_61, i64 8
  store i8* %_gep_fix_62, i8** %_RSP_ptr_, align 8
  %ESI.17 = bitcast i64* %XSI to i32*, !mcsema_real_eip !12
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !12
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -8
  %19 = trunc i64 %18 to i32
  %20 = bitcast i8* %_new_gep_35 to i32*
  store i32 %19, i32* %20, align 4, !mcsema_real_eip !13
  %ESI_val.25 = load i32, i32* %ESI.17, align 4, !mcsema_real_eip !14
  %21 = zext i32 %ESI_val.25 to i64, !mcsema_real_eip !14
  store i64 %21, i64* %XAX, align 8, !mcsema_real_eip !14
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.26 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_38 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 16
  %22 = add i64 %RSP_val.26, 16, !mcsema_real_eip !15
  %_trans_p2i_39 = ptrtoint i8* %_new_gep_38 to i64
  %_trans_p2i_40 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37 to i64
  %_trans_xor_41 = xor i64 %_trans_p2i_39, %_trans_p2i_40
  %23 = and i64 %_trans_xor_41, 16
  %24 = icmp eq i64 %23, 0
  store i1 %24, i1* %AF, align 1, !mcsema_real_eip !15
  %25 = icmp slt i64 %22, 0
  store i1 %25, i1* %SF, align 1, !mcsema_real_eip !15
  %_trans_icmp_eq_43 = icmp eq i8* %_new_gep_38, null
  store i1 %_trans_icmp_eq_43, i1* %ZF, align 1, !mcsema_real_eip !15
  %26 = xor i64 %_trans_p2i_40, -9223372036854775808, !mcsema_real_eip !15
  %27 = and i64 %_trans_xor_41, %26, !mcsema_real_eip !15
  %28 = icmp slt i64 %27, 0
  store i1 %28, i1* %OF, align 1, !mcsema_real_eip !15
  %_trans_trunc_50 = trunc i64 %_trans_p2i_39 to i8
  %29 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_50), !mcsema_real_eip !15
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  store i1 %31, i1* %PF, align 1, !mcsema_real_eip !15
  %_trans_icmp_ne_52 = icmp ne i64 %_trans_p2i_39, %RSP_val.26
  store i1 %_trans_icmp_ne_52, i1* %CF, align 1, !mcsema_real_eip !15
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_, align 8
  store i64 %22, i64* %XSP, align 8, !mcsema_real_eip !15
  %_offset_above_rbp_141 = sub i64 %_trans_p2i_39, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  %.v4 = select i1 %_cond1_n_cond2_cond3_149, i8* %_pot_address_in_parent_stack_142, i8* %_new_gep_38
  %32 = bitcast i8* %.v4 to i64*
  %_new_load_152 = load i64, i64* %32, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_152 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_152, i64* %XBP, align 8, !mcsema_real_eip !16
  %_new_gep_55 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 24
  %33 = add i64 %RSP_val.26, 24, !mcsema_real_eip !16
  store volatile i8* %_new_gep_55, i8** %_RSP_ptr_, align 8
  store i64 %33, i64* %XSP, align 8, !mcsema_real_eip !16
  %_new_gep_57 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_37, i64 32
  %34 = add i64 %RSP_val.26, 32, !mcsema_real_eip !17
  %_ptr_to_int_153 = ptrtoint i8* %_new_gep_55 to i64
  %_offset_above_rbp_156 = sub i64 %_ptr_to_int_153, %_local_end_to_int_
  %_pot_address_in_parent_stack_157 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_156
  %_cond1_158 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_159 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_160 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_161 = or i1 %_cond2_1_159, %_cond2_2_160
  %_cond4_162 = icmp ule i8* %_pot_address_in_parent_stack_157, %_parent_stack_end_ptr_
  %_cond1_n_cond2_163 = and i1 %_cond1_158, %_cond2_161
  %_cond1_n_cond2_cond3_164 = and i1 %_cond1_n_cond2_163, %_cond4_162
  %_address_in_parent_stack_bt_166._allin_new_bt_58.v = select i1 %_cond1_n_cond2_cond3_164, i8* %_pot_address_in_parent_stack_157, i8* %_new_gep_55
  %_address_in_parent_stack_bt_166._allin_new_bt_58 = bitcast i8* %_address_in_parent_stack_bt_166._allin_new_bt_58.v to i64*
  %_new_load_167 = load i64, i64* %_address_in_parent_stack_bt_166._allin_new_bt_58, align 8
  store i64 %_new_load_167, i64* %XIP, align 8, !mcsema_real_eip !17
  store volatile i8* %_new_gep_57, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.2(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_2 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !18
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !18
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !18
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !18
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !18
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !18
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !18
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !18
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !18
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !18
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !18
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !18
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !18
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !18
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !18
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !18
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !18
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !18
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 24
  %1 = add i64 %RSP_val.30, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !19
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 8
  %2 = add i64 %RSP_val.30, -24
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !20
  store i64 1, i64* %XAX, align 8, !mcsema_real_eip !21
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 16
  %EDI.34 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.35 = load i32, i32* %EDI.34, align 4, !mcsema_real_eip !22
  %3 = bitcast i8* %_new_gep_14 to i32*
  store i32 %EDI_val.35, i32* %3, align 8, !mcsema_real_eip !22
  %EAX.37 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %4 = bitcast i8* %_new_gep_14 to i32*
  %5 = sub i32 1, %EDI_val.35, !mcsema_real_eip !23
  %6 = xor i32 %5, %EDI_val.35, !mcsema_real_eip !23
  %7 = and i32 %6, 16, !mcsema_real_eip !23
  %8 = icmp ne i32 %7, 0, !mcsema_real_eip !23
  store i1 %8, i1* %AF, align 1, !mcsema_real_eip !23
  %9 = trunc i32 %5 to i8, !mcsema_real_eip !23
  %10 = call i8 @llvm.ctpop.i8(i8 %9), !mcsema_real_eip !23
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  store i1 %12, i1* %PF, align 1, !mcsema_real_eip !23
  %13 = icmp eq i32 %5, 0, !mcsema_real_eip !23
  store i1 %13, i1* %ZF, align 1, !mcsema_real_eip !23
  %14 = icmp slt i32 %5, 0
  store i1 %14, i1* %SF, align 1, !mcsema_real_eip !23
  %15 = icmp ugt i32 %EDI_val.35, 1, !mcsema_real_eip !23
  store i1 %15, i1* %CF, align 1, !mcsema_real_eip !23
  %16 = and i32 %5, %EDI_val.35, !mcsema_real_eip !23
  %17 = icmp slt i32 %16, 0
  store i1 %17, i1* %OF, align 1, !mcsema_real_eip !23
  br i1 %13, label %block_0x53, label %block_0x19, !mcsema_real_eip !24

block_0x19:                                       ; preds = %entry
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !25
  %_new_load_91 = load i32, i32* %4, align 8
  %18 = sub i32 0, %_new_load_91, !mcsema_real_eip !26
  %19 = xor i32 %_new_load_91, %18, !mcsema_real_eip !26
  %20 = and i32 %19, 16, !mcsema_real_eip !26
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !26
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !26
  %22 = trunc i32 %18 to i8, !mcsema_real_eip !26
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !26
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !26
  %26 = icmp eq i32 %_new_load_91, 0
  store i1 %26, i1* %ZF, align 1, !mcsema_real_eip !26
  %27 = icmp slt i32 %18, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !26
  %28 = icmp ne i32 %_new_load_91, 0
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !26
  %29 = and i32 %_new_load_91, %18, !mcsema_real_eip !26
  %30 = icmp slt i32 %29, 0
  store i1 %30, i1* %OF, align 1, !mcsema_real_eip !26
  br i1 %26, label %block_0x53, label %block_0x30, !mcsema_real_eip !27

block_0x53:                                       ; preds = %entry, %block_0x19, %block_0x30
  %_RBP_ptr_.0._load_rbp_ptr_65.pn = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65, %block_0x30 ], [ %_new_gep_, %block_0x19 ], [ %_new_gep_, %entry ]
  %EDI_val.71.sink = phi i32 [ %81, %block_0x30 ], [ 1, %block_0x19 ], [ 1, %entry ]
  %_allin_new_bt_70.sink.in = getelementptr i8, i8* %_RBP_ptr_.0._load_rbp_ptr_65.pn, i64 -4
  %31 = bitcast i8* %_allin_new_bt_70.sink.in to i32*
  store i32 %EDI_val.71.sink, i32* %31, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -4
  %32 = ptrtoint i8* %_new_gep_26 to i64
  %_offset_above_rbp_95 = sub i64 %32, %_local_end_to_int_
  %_pot_address_in_parent_stack_96 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_95
  %_cond1_97 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_98 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_99 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_100 = or i1 %_cond2_1_98, %_cond2_2_99
  %_cond4_101 = icmp ule i8* %_pot_address_in_parent_stack_96, %_parent_stack_end_ptr_
  %_cond1_n_cond2_102 = and i1 %_cond1_97, %_cond2_100
  %_cond1_n_cond2_cond3_103 = and i1 %_cond1_n_cond2_102, %_cond4_101
  %_address_in_parent_stack_bt_105..v = select i1 %_cond1_n_cond2_cond3_103, i8* %_pot_address_in_parent_stack_96, i8* %_new_gep_26
  %_address_in_parent_stack_bt_105. = bitcast i8* %_address_in_parent_stack_bt_105..v to i32*
  %_new_load_106 = load i32, i32* %_address_in_parent_stack_bt_105., align 4
  %33 = zext i32 %_new_load_106 to i64, !mcsema_real_eip !28
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !28
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.48 = load i64, i64* %XSP, align 8, !mcsema_real_eip !29
  %_new_gep_29 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 16
  %34 = add i64 %RSP_val.48, 16, !mcsema_real_eip !29
  %_trans_p2i_30 = ptrtoint i8* %_new_gep_29 to i64
  %_trans_p2i_31 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28 to i64
  %_trans_xor_32 = xor i64 %_trans_p2i_30, %_trans_p2i_31
  %35 = and i64 %_trans_xor_32, 16
  %36 = icmp eq i64 %35, 0
  store i1 %36, i1* %AF, align 1, !mcsema_real_eip !29
  %37 = icmp slt i64 %34, 0
  store i1 %37, i1* %SF, align 1, !mcsema_real_eip !29
  %_trans_icmp_eq_34 = icmp eq i8* %_new_gep_29, null
  store i1 %_trans_icmp_eq_34, i1* %ZF, align 1, !mcsema_real_eip !29
  %38 = xor i64 %_trans_p2i_31, -9223372036854775808, !mcsema_real_eip !29
  %39 = and i64 %_trans_xor_32, %38, !mcsema_real_eip !29
  %40 = icmp slt i64 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !29
  %_trans_trunc_41 = trunc i64 %_trans_p2i_30 to i8
  %41 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_41), !mcsema_real_eip !29
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  store i1 %43, i1* %PF, align 1, !mcsema_real_eip !29
  %_trans_icmp_ne_43 = icmp ne i64 %_trans_p2i_30, %RSP_val.48
  store i1 %_trans_icmp_ne_43, i1* %CF, align 1, !mcsema_real_eip !29
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !29
  %_offset_above_rbp_110 = sub i64 %_trans_p2i_30, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  %.v3 = select i1 %_cond1_n_cond2_cond3_118, i8* %_pot_address_in_parent_stack_111, i8* %_new_gep_29
  %44 = bitcast i8* %.v3 to i64*
  %_new_load_121 = load i64, i64* %44, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_121 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_121, i64* %XBP, align 8, !mcsema_real_eip !30
  %_new_gep_46 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 24
  %45 = add i64 %RSP_val.48, 24, !mcsema_real_eip !30
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_, align 8
  store i64 %45, i64* %XSP, align 8, !mcsema_real_eip !30
  %_new_gep_48 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_28, i64 32
  %46 = add i64 %RSP_val.48, 32, !mcsema_real_eip !31
  %_ptr_to_int_122 = ptrtoint i8* %_new_gep_46 to i64
  %_offset_above_rbp_125 = sub i64 %_ptr_to_int_122, %_local_end_to_int_
  %_pot_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_125
  %_cond1_127 = icmp ugt i8* %_new_gep_46, %_local_stack_end_ptr_
  %_cond2_1_128 = icmp ugt i8* %_new_gep_46, %_parent_stack_end_ptr_
  %_cond2_2_129 = icmp ult i8* %_new_gep_46, %_parent_stack_start_ptr_
  %_cond2_130 = or i1 %_cond2_1_128, %_cond2_2_129
  %_cond4_131 = icmp ule i8* %_pot_address_in_parent_stack_126, %_parent_stack_end_ptr_
  %_cond1_n_cond2_132 = and i1 %_cond1_127, %_cond2_130
  %_cond1_n_cond2_cond3_133 = and i1 %_cond1_n_cond2_132, %_cond4_131
  %_address_in_parent_stack_bt_135._allin_new_bt_49.v = select i1 %_cond1_n_cond2_cond3_133, i8* %_pot_address_in_parent_stack_126, i8* %_new_gep_46
  %_address_in_parent_stack_bt_135._allin_new_bt_49 = bitcast i8* %_address_in_parent_stack_bt_135._allin_new_bt_49.v to i64*
  %_new_load_136 = load i64, i64* %_address_in_parent_stack_bt_135._allin_new_bt_49, align 8
  store i64 %_new_load_136, i64* %XIP, align 8, !mcsema_real_eip !31
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_, align 8
  store i64 %46, i64* %XSP, align 8, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x30:                                       ; preds = %block_0x19
  %_new_load_151 = load i32, i32* %4, align 8
  %47 = add i32 %_new_load_151, -1
  %48 = xor i32 %47, %_new_load_151, !mcsema_real_eip !33
  %49 = and i32 %48, 16, !mcsema_real_eip !33
  %50 = icmp ne i32 %49, 0, !mcsema_real_eip !33
  store i1 %50, i1* %AF, align 1, !mcsema_real_eip !33
  %51 = trunc i32 %47 to i8, !mcsema_real_eip !33
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !33
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  store i1 %54, i1* %PF, align 1, !mcsema_real_eip !33
  %55 = icmp eq i32 %47, 0, !mcsema_real_eip !33
  store i1 %55, i1* %ZF, align 1, !mcsema_real_eip !33
  %56 = icmp slt i32 %47, 0
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !33
  %57 = icmp eq i32 %_new_load_151, 0
  store i1 %57, i1* %CF, align 1, !mcsema_real_eip !33
  %58 = and i32 %48, %_new_load_151, !mcsema_real_eip !33
  %59 = icmp slt i32 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !33
  %60 = zext i32 %47 to i64
  store i64 %60, i64* %XAX, align 8, !mcsema_real_eip !33
  store i64 %60, i64* %XDI, align 8, !mcsema_real_eip !34
  %_new_gep_54 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_2, i64 0, i64 0
  %61 = add i64 %RSP_val.30, -32
  %_allin_new_bt_55 = bitcast [32 x i8]* %_local_stack_start_ptr_2 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_55, align 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_, align 8
  store i64 %61, i64* %XSP, align 8, !mcsema_real_eip !35
  call x86_64_sysvcc void @sub_0.2(%RegState* nonnull %0, i8* nonnull %_new_gep_54, i8* nonnull %_local_stack_end_ptr_, i8* nonnull %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_57 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -8
  %62 = ptrtoint i8* %_new_gep_57 to i64
  %_offset_above_rbp_155 = sub i64 %62, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  %.v4 = select i1 %_cond1_n_cond2_cond3_163, i8* %_pot_address_in_parent_stack_156, i8* %_new_gep_57
  %63 = bitcast i8* %.v4 to i32*
  %_new_load_166 = load i32, i32* %63, align 4
  %64 = add i32 %_new_load_166, -2
  %65 = xor i32 %64, %_new_load_166, !mcsema_real_eip !37
  %66 = and i32 %65, 16, !mcsema_real_eip !37
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !37
  store i1 %67, i1* %AF, align 1, !mcsema_real_eip !37
  %68 = trunc i32 %64 to i8, !mcsema_real_eip !37
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !37
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  store i1 %71, i1* %PF, align 1, !mcsema_real_eip !37
  %72 = icmp eq i32 %64, 0, !mcsema_real_eip !37
  store i1 %72, i1* %ZF, align 1, !mcsema_real_eip !37
  %73 = icmp slt i32 %64, 0
  store i1 %73, i1* %SF, align 1, !mcsema_real_eip !37
  %74 = icmp ult i32 %_new_load_166, 2, !mcsema_real_eip !37
  store i1 %74, i1* %CF, align 1, !mcsema_real_eip !37
  %75 = and i32 %65, %_new_load_166, !mcsema_real_eip !37
  %76 = icmp slt i32 %75, 0
  store i1 %76, i1* %OF, align 1, !mcsema_real_eip !37
  %77 = zext i32 %64 to i64, !mcsema_real_eip !37
  store i64 %77, i64* %XDI, align 8, !mcsema_real_eip !37
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -12
  %EAX_val.62 = load i32, i32* %EAX.37, align 4, !mcsema_real_eip !38
  %78 = bitcast i8* %_new_gep_60 to i32*
  store i32 %EAX_val.62, i32* %78, align 4, !mcsema_real_eip !38
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_62 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.63 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %_new_gep_63 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_62, i64 -8
  %79 = add i64 %RSP_val.63, -8
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_64, align 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_, align 8
  store i64 %79, i64* %XSP, align 8, !mcsema_real_eip !39
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* nonnull %0, i8* %_new_gep_63, i8* nonnull %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_75 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_76 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_75, i64 8
  store i8* %_gep_fix_76, i8** %_RSP_ptr_, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_66 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65, i64 -12
  %80 = ptrtoint i8* %_new_gep_66 to i64
  %_offset_above_rbp_170 = sub i64 %80, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  %_address_in_parent_stack_bt_180..v = select i1 %_cond1_n_cond2_cond3_178, i8* %_pot_address_in_parent_stack_171, i8* %_new_gep_66
  %_address_in_parent_stack_bt_180. = bitcast i8* %_address_in_parent_stack_bt_180..v to i32*
  %_new_load_181 = load i32, i32* %_address_in_parent_stack_bt_180., align 4
  %EAX_val.68 = load i32, i32* %EAX.37, align 4, !mcsema_real_eip !41
  %81 = add i32 %EAX_val.68, %_new_load_181, !mcsema_real_eip !41
  %82 = xor i32 %81, %_new_load_181, !mcsema_real_eip !41
  %83 = xor i32 %82, %EAX_val.68, !mcsema_real_eip !41
  %84 = and i32 %83, 16, !mcsema_real_eip !41
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !41
  store i1 %85, i1* %AF, align 1, !mcsema_real_eip !41
  %86 = icmp slt i32 %81, 0
  store i1 %86, i1* %SF, align 1, !mcsema_real_eip !41
  %87 = icmp eq i32 %81, 0, !mcsema_real_eip !41
  store i1 %87, i1* %ZF, align 1, !mcsema_real_eip !41
  %88 = xor i32 %_new_load_181, -2147483648, !mcsema_real_eip !41
  %89 = xor i32 %88, %EAX_val.68, !mcsema_real_eip !41
  %90 = and i32 %82, %89, !mcsema_real_eip !41
  %91 = icmp slt i32 %90, 0
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !41
  %92 = trunc i32 %81 to i8, !mcsema_real_eip !41
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !41
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !41
  %96 = icmp ult i32 %81, %_new_load_181, !mcsema_real_eip !41
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !41
  %97 = zext i32 %81 to i64, !mcsema_real_eip !41
  store i64 %97, i64* %XDI, align 8, !mcsema_real_eip !41
  br label %block_0x53
}

attributes #0 = { noinline }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 96}
!3 = !{i64 97}
!4 = !{i64 100}
!5 = !{i64 104}
!6 = !{i64 109}
!7 = !{i64 116}
!8 = !{i64 121}
!9 = !{i64 131}
!10 = !{i64 133}
!11 = !{i64 135}
!12 = !{i64 140}
!13 = !{i64 142}
!14 = !{i64 145}
!15 = !{i64 147}
!16 = !{i64 151}
!17 = !{i64 152}
!18 = !{i64 0}
!19 = !{i64 1}
!20 = !{i64 4}
!21 = !{i64 8}
!22 = !{i64 13}
!23 = !{i64 16}
!24 = !{i64 19}
!25 = !{i64 25}
!26 = !{i64 27}
!27 = !{i64 30}
!28 = !{i64 83}
!29 = !{i64 86}
!30 = !{i64 90}
!31 = !{i64 91}
!32 = !{i64 48}
!33 = !{i64 51}
!34 = !{i64 54}
!35 = !{i64 56}
!36 = !{i64 61}
!37 = !{i64 64}
!38 = !{i64 67}
!39 = !{i64 70}
!40 = !{i64 75}
!41 = !{i64 78}
