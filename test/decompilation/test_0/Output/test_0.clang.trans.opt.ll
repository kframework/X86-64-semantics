; ModuleID = 'Output/test_0.clang.trans.opt.bc'
source_filename = "Output/test_0.clang.bc"
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

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x56 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [48 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
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
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.1, -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !4
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 32 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !4
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x56 to i64), i64* %XDI, align 8, !mcsema_real_eip !5
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %13 = ptrtoint i8* %_new_gep_14 to i64
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %14 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %14, align 4, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 %13, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !7
  store i64 %13, i64* %XAX, align 8, !mcsema_real_eip !8
  %15 = bitcast i8* %_new_gep_14 to i32*
  store i32 1, i32* %15, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_256 = load i8*, i8** %12, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_256, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %16 = load i64, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !10
  store i64 %16, i64* %XAX, align 8, !mcsema_real_eip !10
  %17 = add i64 %16, 4, !mcsema_real_eip !11
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !11
  store i32 2, i32* %18, align 4, !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_287 = load i8*, i8** %12, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_287, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %19 = load i64, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !12
  store i64 %19, i64* %XAX, align 8, !mcsema_real_eip !12
  %20 = add i64 %19, 4, !mcsema_real_eip !13
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !13
  %22 = load i32, i32* %21, align 4, !mcsema_real_eip !13
  %23 = zext i32 %22 to i64, !mcsema_real_eip !13
  store i64 %23, i64* %XSI, align 8, !mcsema_real_eip !13
  %AL.14 = bitcast i64* %XAX to i8*, !mcsema_real_eip !14
  store i8 0, i8* %AL.14, align 1, !mcsema_real_eip !14
  %RDI_val.15 = load i64, i64* %XDI, align 8, !mcsema_real_eip !15
  %RDX_val.17 = load i64, i64* %XDX, align 8, !mcsema_real_eip !15
  %RCX_val.18 = load i64, i64* %XCX, align 8, !mcsema_real_eip !15
  %R8_val.19 = load i64, i64* %R8, align 8, !mcsema_real_eip !15
  %R9_val.20 = load i64, i64* %R9, align 8, !mcsema_real_eip !15
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_, align 8
  %_allin_new_bt_32 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31 to i64*
  %24 = load i64, i64* %_allin_new_bt_32, align 8, !mcsema_real_eip !15
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %25 = load i64, i64* %_allin_new_bt_34, align 8, !mcsema_real_eip !15
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 16
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %26 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !15
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 24
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %27 = load i64, i64* %_allin_new_bt_38, align 8, !mcsema_real_eip !15
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %28 = load i64, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !15
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 40
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %29 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !15
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 48
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %30 = load i64, i64* %_allin_new_bt_44, align 8, !mcsema_real_eip !15
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 56
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %31 = load i64, i64* %_allin_new_bt_46, align 8, !mcsema_real_eip !15
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 64
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %32 = load i64, i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !15
  %_new_gep_49 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 72
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %33 = load i64, i64* %_allin_new_bt_50, align 8, !mcsema_real_eip !15
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_52 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 -8
  %34 = add i64 %RSP_val.22, -8
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_53, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !15
  %35 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.15, i64 %23, i64 %RDX_val.17, i64 %RCX_val.18, i64 %R8_val.19, i64 %R9_val.20, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_548 = load i8*, i8** %12, align 8
  %_new_gep_55 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_548, i64 -24
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %36 = load i64, i64* %_allin_new_bt_56, align 8, !mcsema_real_eip !16
  store i64 %36, i64* %XDI, align 8, !mcsema_real_eip !16
  %37 = add i64 %36, 4, !mcsema_real_eip !17
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !17
  %39 = load i32, i32* %38, align 4, !mcsema_real_eip !17
  %40 = zext i32 %39 to i64, !mcsema_real_eip !17
  store i64 %40, i64* %XSI, align 8, !mcsema_real_eip !17
  %_new_gep_58 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_548, i64 -28
  %41 = trunc i64 %35 to i32
  %42 = bitcast i8* %_new_gep_58 to i32*
  store i32 %41, i32* %42, align 4, !mcsema_real_eip !18
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !19
  %ESI_val.29 = load i32, i32* %ESI.28, align 4, !mcsema_real_eip !19
  %43 = zext i32 %ESI_val.29 to i64, !mcsema_real_eip !19
  store i64 %43, i64* %XAX, align 8, !mcsema_real_eip !19
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_60 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %_new_gep_61 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_60, i64 32
  %44 = add i64 %RSP_val.30, 32, !mcsema_real_eip !20
  %_trans_p2i_62 = ptrtoint i8* %_new_gep_61 to i64
  %_trans_p2i_63 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_60 to i64
  %_trans_xor_64 = xor i64 %_trans_p2i_62, %_trans_p2i_63
  %45 = and i64 %_trans_xor_64, 16, !mcsema_real_eip !20
  %46 = icmp ne i64 %45, 0, !mcsema_real_eip !20
  store i1 %46, i1* %AF, align 1, !mcsema_real_eip !20
  %47 = icmp slt i64 %44, 0
  store i1 %47, i1* %SF, align 1, !mcsema_real_eip !20
  %_trans_icmp_eq_66 = icmp eq i8* %_new_gep_61, null
  store i1 %_trans_icmp_eq_66, i1* %ZF, align 1, !mcsema_real_eip !20
  %48 = xor i64 %_trans_p2i_63, -9223372036854775808, !mcsema_real_eip !20
  %49 = and i64 %_trans_xor_64, %48, !mcsema_real_eip !20
  %50 = icmp slt i64 %49, 0
  store i1 %50, i1* %OF, align 1, !mcsema_real_eip !20
  %_trans_trunc_73 = trunc i64 %_trans_p2i_62 to i8
  %51 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_73), !mcsema_real_eip !20
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  store i1 %53, i1* %PF, align 1, !mcsema_real_eip !20
  %_trans_icmp_ne_75 = icmp ne i64 %RSP_val.30, %_trans_p2i_62
  store i1 %_trans_icmp_ne_75, i1* %CF, align 1, !mcsema_real_eip !20
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_, align 8
  store i64 %44, i64* %XSP, align 8, !mcsema_real_eip !20
  %_allin_new_bt_77 = bitcast i8* %_new_gep_61 to i64*
  %54 = load i64, i64* %_allin_new_bt_77, align 8, !mcsema_real_eip !21
  store volatile i64 %54, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %54, i64* %XBP, align 8, !mcsema_real_eip !21
  %_new_gep_78 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_60, i64 40
  %55 = add i64 %RSP_val.30, 40, !mcsema_real_eip !21
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_, align 8
  store i64 %55, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_80 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_60, i64 48
  %56 = add i64 %RSP_val.30, 48, !mcsema_real_eip !22
  %_allin_new_bt_81 = bitcast i8* %_new_gep_78 to i64*
  %57 = load i64, i64* %_allin_new_bt_81, align 8, !mcsema_real_eip !22
  store i64 %57, i64* %XIP, align 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_80, i8** %_RSP_ptr_, align 8
  store i64 %56, i64* %XSP, align 8, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [48 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
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
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !4
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 32 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x56 to i64), i64* %XDI, align 8, !mcsema_real_eip !5
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %11 = ptrtoint i8* %_new_gep_14 to i64
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %12 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %12, align 4, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 %11, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %11, i64* %XAX, align 8, !mcsema_real_eip !8
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 1, i32* %13, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -24
  %_ptr_to_int_82 = ptrtoint i8* %_new_gep_26 to i64
  %_offset_above_rbp_85 = sub i64 %_ptr_to_int_82, %_local_end_to_int_
  %_pot_address_in_parent_stack_86 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_85
  %_cond1_87 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_88 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_89 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_90 = or i1 %_cond2_1_88, %_cond2_2_89
  %_cond4_91 = icmp ule i8* %_pot_address_in_parent_stack_86, %_parent_stack_end_ptr_
  %_cond1_n_cond2_92 = and i1 %_cond1_87, %_cond2_90
  %_cond1_n_cond2_cond3_93 = and i1 %_cond1_n_cond2_92, %_cond4_91
  %_address_in_parent_stack_bt_95._allin_new_bt_27.v = select i1 %_cond1_n_cond2_cond3_93, i8* %_pot_address_in_parent_stack_86, i8* %_new_gep_26
  %_address_in_parent_stack_bt_95._allin_new_bt_27 = bitcast i8* %_address_in_parent_stack_bt_95._allin_new_bt_27.v to i64*
  %_new_load_96 = load i64, i64* %_address_in_parent_stack_bt_95._allin_new_bt_27, align 8
  store i64 %_new_load_96, i64* %XAX, align 8, !mcsema_real_eip !10
  %14 = add i64 %_new_load_96, 4, !mcsema_real_eip !11
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !11
  store i32 2, i32* %15, align 4, !mcsema_real_eip !11
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -24
  %_ptr_to_int_97 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_100 = sub i64 %_ptr_to_int_97, %_local_end_to_int_
  %_pot_address_in_parent_stack_101 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_100
  %_cond1_102 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_103 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_104 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_105 = or i1 %_cond2_1_103, %_cond2_2_104
  %_cond4_106 = icmp ule i8* %_pot_address_in_parent_stack_101, %_parent_stack_end_ptr_
  %_cond1_n_cond2_107 = and i1 %_cond1_102, %_cond2_105
  %_cond1_n_cond2_cond3_108 = and i1 %_cond1_n_cond2_107, %_cond4_106
  %.v2 = select i1 %_cond1_n_cond2_cond3_108, i8* %_pot_address_in_parent_stack_101, i8* %_new_gep_29
  %16 = bitcast i8* %.v2 to i64*
  %_new_load_111 = load i64, i64* %16, align 8
  store i64 %_new_load_111, i64* %XAX, align 8, !mcsema_real_eip !12
  %17 = add i64 %_new_load_111, 4, !mcsema_real_eip !13
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !13
  %_ptr_bt_114 = inttoptr i64 %17 to i8*
  %_offset_above_rbp_115 = sub i64 %17, %_local_end_to_int_
  %_pot_address_in_parent_stack_116 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_115
  %_cond1_117 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_114
  %_cond2_1_118 = icmp ugt i8* %_ptr_bt_114, %_parent_stack_end_ptr_
  %_cond2_2_119 = icmp ult i8* %_ptr_bt_114, %_parent_stack_start_ptr_
  %_cond2_120 = or i1 %_cond2_1_118, %_cond2_2_119
  %_cond4_121 = icmp ule i8* %_pot_address_in_parent_stack_116, %_parent_stack_end_ptr_
  %_cond1_n_cond2_122 = and i1 %_cond1_117, %_cond2_120
  %_cond1_n_cond2_cond3_123 = and i1 %_cond4_121, %_cond1_n_cond2_122
  %_address_in_parent_stack_bt_125 = bitcast i8* %_pot_address_in_parent_stack_116 to i32*
  %_address_in_parent_stack_bt_125. = select i1 %_cond1_n_cond2_cond3_123, i32* %_address_in_parent_stack_bt_125, i32* %18
  %_new_load_126 = load i32, i32* %_address_in_parent_stack_bt_125., align 4
  %19 = zext i32 %_new_load_126 to i64, !mcsema_real_eip !13
  store i64 %19, i64* %XSI, align 8, !mcsema_real_eip !13
  %AL.14 = bitcast i64* %XAX to i8*, !mcsema_real_eip !14
  store i8 0, i8* %AL.14, align 1, !mcsema_real_eip !14
  %RDI_val.15 = load i64, i64* %XDI, align 8, !mcsema_real_eip !15
  %RDX_val.17 = load i64, i64* %XDX, align 8, !mcsema_real_eip !15
  %RCX_val.18 = load i64, i64* %XCX, align 8, !mcsema_real_eip !15
  %R8_val.19 = load i64, i64* %R8, align 8, !mcsema_real_eip !15
  %R9_val.20 = load i64, i64* %R9, align 8, !mcsema_real_eip !15
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_127 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31 to i64
  %_offset_above_rbp_130 = sub i64 %_ptr_to_int_127, %_local_end_to_int_
  %_pot_address_in_parent_stack_131 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_130
  %_cond1_132 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, %_local_stack_end_ptr_
  %_cond2_1_133 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, %_parent_stack_end_ptr_
  %_cond2_2_134 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, %_parent_stack_start_ptr_
  %_cond2_135 = or i1 %_cond2_1_133, %_cond2_2_134
  %_cond4_136 = icmp ule i8* %_pot_address_in_parent_stack_131, %_parent_stack_end_ptr_
  %_cond1_n_cond2_137 = and i1 %_cond1_132, %_cond2_135
  %_cond1_n_cond2_cond3_138 = and i1 %_cond1_n_cond2_137, %_cond4_136
  %.v3 = select i1 %_cond1_n_cond2_cond3_138, i8* %_pot_address_in_parent_stack_131, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31
  %20 = bitcast i8* %.v3 to i64*
  %_new_load_141 = load i64, i64* %20, align 8
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 8
  %_ptr_to_int_142 = ptrtoint i8* %_new_gep_33 to i64
  %_offset_above_rbp_145 = sub i64 %_ptr_to_int_142, %_local_end_to_int_
  %_pot_address_in_parent_stack_146 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_145
  %_cond1_147 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_148 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_149 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_150 = or i1 %_cond2_1_148, %_cond2_2_149
  %_cond4_151 = icmp ule i8* %_pot_address_in_parent_stack_146, %_parent_stack_end_ptr_
  %_cond1_n_cond2_152 = and i1 %_cond1_147, %_cond2_150
  %_cond1_n_cond2_cond3_153 = and i1 %_cond1_n_cond2_152, %_cond4_151
  %_address_in_parent_stack_bt_155._allin_new_bt_34.v = select i1 %_cond1_n_cond2_cond3_153, i8* %_pot_address_in_parent_stack_146, i8* %_new_gep_33
  %_address_in_parent_stack_bt_155._allin_new_bt_34 = bitcast i8* %_address_in_parent_stack_bt_155._allin_new_bt_34.v to i64*
  %_new_load_156 = load i64, i64* %_address_in_parent_stack_bt_155._allin_new_bt_34, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 16
  %_ptr_to_int_157 = ptrtoint i8* %_new_gep_35 to i64
  %_offset_above_rbp_160 = sub i64 %_ptr_to_int_157, %_local_end_to_int_
  %_pot_address_in_parent_stack_161 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_160
  %_cond1_162 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_163 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_164 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_165 = or i1 %_cond2_1_163, %_cond2_2_164
  %_cond4_166 = icmp ule i8* %_pot_address_in_parent_stack_161, %_parent_stack_end_ptr_
  %_cond1_n_cond2_167 = and i1 %_cond1_162, %_cond2_165
  %_cond1_n_cond2_cond3_168 = and i1 %_cond1_n_cond2_167, %_cond4_166
  %.v4 = select i1 %_cond1_n_cond2_cond3_168, i8* %_pot_address_in_parent_stack_161, i8* %_new_gep_35
  %21 = bitcast i8* %.v4 to i64*
  %_new_load_171 = load i64, i64* %21, align 8
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 24
  %_ptr_to_int_172 = ptrtoint i8* %_new_gep_37 to i64
  %_offset_above_rbp_175 = sub i64 %_ptr_to_int_172, %_local_end_to_int_
  %_pot_address_in_parent_stack_176 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_175
  %_cond1_177 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_178 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_179 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_180 = or i1 %_cond2_1_178, %_cond2_2_179
  %_cond4_181 = icmp ule i8* %_pot_address_in_parent_stack_176, %_parent_stack_end_ptr_
  %_cond1_n_cond2_182 = and i1 %_cond1_177, %_cond2_180
  %_cond1_n_cond2_cond3_183 = and i1 %_cond1_n_cond2_182, %_cond4_181
  %_address_in_parent_stack_bt_185._allin_new_bt_38.v = select i1 %_cond1_n_cond2_cond3_183, i8* %_pot_address_in_parent_stack_176, i8* %_new_gep_37
  %_address_in_parent_stack_bt_185._allin_new_bt_38 = bitcast i8* %_address_in_parent_stack_bt_185._allin_new_bt_38.v to i64*
  %_new_load_186 = load i64, i64* %_address_in_parent_stack_bt_185._allin_new_bt_38, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 32
  %_ptr_to_int_187 = ptrtoint i8* %_new_gep_39 to i64
  %_offset_above_rbp_190 = sub i64 %_ptr_to_int_187, %_local_end_to_int_
  %_pot_address_in_parent_stack_191 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_190
  %_cond1_192 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_193 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_194 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_195 = or i1 %_cond2_1_193, %_cond2_2_194
  %_cond4_196 = icmp ule i8* %_pot_address_in_parent_stack_191, %_parent_stack_end_ptr_
  %_cond1_n_cond2_197 = and i1 %_cond1_192, %_cond2_195
  %_cond1_n_cond2_cond3_198 = and i1 %_cond1_n_cond2_197, %_cond4_196
  %.v5 = select i1 %_cond1_n_cond2_cond3_198, i8* %_pot_address_in_parent_stack_191, i8* %_new_gep_39
  %22 = bitcast i8* %.v5 to i64*
  %_new_load_201 = load i64, i64* %22, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 40
  %_ptr_to_int_202 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_205 = sub i64 %_ptr_to_int_202, %_local_end_to_int_
  %_pot_address_in_parent_stack_206 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_cond1_207 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_208 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_209 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_210 = or i1 %_cond2_1_208, %_cond2_2_209
  %_cond4_211 = icmp ule i8* %_pot_address_in_parent_stack_206, %_parent_stack_end_ptr_
  %_cond1_n_cond2_212 = and i1 %_cond1_207, %_cond2_210
  %_cond1_n_cond2_cond3_213 = and i1 %_cond1_n_cond2_212, %_cond4_211
  %_address_in_parent_stack_bt_215._allin_new_bt_42.v = select i1 %_cond1_n_cond2_cond3_213, i8* %_pot_address_in_parent_stack_206, i8* %_new_gep_41
  %_address_in_parent_stack_bt_215._allin_new_bt_42 = bitcast i8* %_address_in_parent_stack_bt_215._allin_new_bt_42.v to i64*
  %_new_load_216 = load i64, i64* %_address_in_parent_stack_bt_215._allin_new_bt_42, align 8
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 48
  %_ptr_to_int_217 = ptrtoint i8* %_new_gep_43 to i64
  %_offset_above_rbp_220 = sub i64 %_ptr_to_int_217, %_local_end_to_int_
  %_pot_address_in_parent_stack_221 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_cond1_222 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_223 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_224 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_225 = or i1 %_cond2_1_223, %_cond2_2_224
  %_cond4_226 = icmp ule i8* %_pot_address_in_parent_stack_221, %_parent_stack_end_ptr_
  %_cond1_n_cond2_227 = and i1 %_cond1_222, %_cond2_225
  %_cond1_n_cond2_cond3_228 = and i1 %_cond1_n_cond2_227, %_cond4_226
  %.v6 = select i1 %_cond1_n_cond2_cond3_228, i8* %_pot_address_in_parent_stack_221, i8* %_new_gep_43
  %23 = bitcast i8* %.v6 to i64*
  %_new_load_231 = load i64, i64* %23, align 8
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 56
  %_ptr_to_int_232 = ptrtoint i8* %_new_gep_45 to i64
  %_offset_above_rbp_235 = sub i64 %_ptr_to_int_232, %_local_end_to_int_
  %_pot_address_in_parent_stack_236 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_235
  %_cond1_237 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_238 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_239 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_240 = or i1 %_cond2_1_238, %_cond2_2_239
  %_cond4_241 = icmp ule i8* %_pot_address_in_parent_stack_236, %_parent_stack_end_ptr_
  %_cond1_n_cond2_242 = and i1 %_cond1_237, %_cond2_240
  %_cond1_n_cond2_cond3_243 = and i1 %_cond1_n_cond2_242, %_cond4_241
  %_address_in_parent_stack_bt_245._allin_new_bt_46.v = select i1 %_cond1_n_cond2_cond3_243, i8* %_pot_address_in_parent_stack_236, i8* %_new_gep_45
  %_address_in_parent_stack_bt_245._allin_new_bt_46 = bitcast i8* %_address_in_parent_stack_bt_245._allin_new_bt_46.v to i64*
  %_new_load_246 = load i64, i64* %_address_in_parent_stack_bt_245._allin_new_bt_46, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 64
  %_ptr_to_int_247 = ptrtoint i8* %_new_gep_47 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %_local_end_to_int_
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  %.v7 = select i1 %_cond1_n_cond2_cond3_258, i8* %_pot_address_in_parent_stack_251, i8* %_new_gep_47
  %24 = bitcast i8* %.v7 to i64*
  %_new_load_261 = load i64, i64* %24, align 8
  %_new_gep_49 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 72
  %_ptr_to_int_262 = ptrtoint i8* %_new_gep_49 to i64
  %_offset_above_rbp_265 = sub i64 %_ptr_to_int_262, %_local_end_to_int_
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %_new_gep_49, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %_new_gep_49, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %_new_gep_49, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond1_n_cond2_272, %_cond4_271
  %_address_in_parent_stack_bt_275._allin_new_bt_50.v = select i1 %_cond1_n_cond2_cond3_273, i8* %_pot_address_in_parent_stack_266, i8* %_new_gep_49
  %_address_in_parent_stack_bt_275._allin_new_bt_50 = bitcast i8* %_address_in_parent_stack_bt_275._allin_new_bt_50.v to i64*
  %_new_load_276 = load i64, i64* %_address_in_parent_stack_bt_275._allin_new_bt_50, align 8
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_52 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 -8
  %25 = add i64 %RSP_val.22, -8
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_53, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XSP, align 8, !mcsema_real_eip !15
  %26 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.15, i64 %19, i64 %RDX_val.17, i64 %RCX_val.18, i64 %R8_val.19, i64 %R9_val.20, i64 %_new_load_141, i64 %_new_load_156, i64 %_new_load_171, i64 %_new_load_186, i64 %_new_load_201, i64 %_new_load_216, i64 %_new_load_231, i64 %_new_load_246, i64 %_new_load_261, i64 %_new_load_276)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %26, i64* %XAX, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_55 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_54, i64 -24
  %_ptr_to_int_277 = ptrtoint i8* %_new_gep_55 to i64
  %_offset_above_rbp_280 = sub i64 %_ptr_to_int_277, %_local_end_to_int_
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  %.v8 = select i1 %_cond1_n_cond2_cond3_288, i8* %_pot_address_in_parent_stack_281, i8* %_new_gep_55
  %27 = bitcast i8* %.v8 to i64*
  %_new_load_291 = load i64, i64* %27, align 8
  store i64 %_new_load_291, i64* %XDI, align 8, !mcsema_real_eip !16
  %28 = add i64 %_new_load_291, 4, !mcsema_real_eip !17
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !17
  %_ptr_bt_294 = inttoptr i64 %28 to i8*
  %_offset_above_rbp_295 = sub i64 %28, %_local_end_to_int_
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_294
  %_cond2_1_298 = icmp ugt i8* %_ptr_bt_294, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_ptr_bt_294, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond4_301, %_cond1_n_cond2_302
  %_address_in_parent_stack_bt_305 = bitcast i8* %_pot_address_in_parent_stack_296 to i32*
  %_address_in_parent_stack_bt_305. = select i1 %_cond1_n_cond2_cond3_303, i32* %_address_in_parent_stack_bt_305, i32* %29
  %_new_load_306 = load i32, i32* %_address_in_parent_stack_bt_305., align 4
  %30 = zext i32 %_new_load_306 to i64, !mcsema_real_eip !17
  store i64 %30, i64* %XSI, align 8, !mcsema_real_eip !17
  %_new_gep_58 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_54, i64 -28
  %31 = trunc i64 %26 to i32
  %32 = bitcast i8* %_new_gep_58 to i32*
  store i32 %31, i32* %32, align 4, !mcsema_real_eip !18
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !19
  %ESI_val.29 = load i32, i32* %ESI.28, align 4, !mcsema_real_eip !19
  %33 = zext i32 %ESI_val.29 to i64, !mcsema_real_eip !19
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !19
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_60 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %_new_gep_61 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_60, i64 32
  %34 = add i64 %RSP_val.30, 32, !mcsema_real_eip !20
  %_trans_p2i_62 = ptrtoint i8* %_new_gep_61 to i64
  %_trans_p2i_63 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_60 to i64
  %_trans_xor_64 = xor i64 %_trans_p2i_62, %_trans_p2i_63
  %35 = and i64 %_trans_xor_64, 16, !mcsema_real_eip !20
  %36 = icmp ne i64 %35, 0, !mcsema_real_eip !20
  store i1 %36, i1* %AF, align 1, !mcsema_real_eip !20
  %37 = icmp slt i64 %34, 0
  store i1 %37, i1* %SF, align 1, !mcsema_real_eip !20
  %_trans_icmp_eq_66 = icmp eq i8* %_new_gep_61, null
  store i1 %_trans_icmp_eq_66, i1* %ZF, align 1, !mcsema_real_eip !20
  %38 = xor i64 %_trans_p2i_63, -9223372036854775808, !mcsema_real_eip !20
  %39 = and i64 %_trans_xor_64, %38, !mcsema_real_eip !20
  %40 = icmp slt i64 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !20
  %_trans_trunc_73 = trunc i64 %_trans_p2i_62 to i8
  %41 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_73), !mcsema_real_eip !20
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  store i1 %43, i1* %PF, align 1, !mcsema_real_eip !20
  %_trans_icmp_ne_75 = icmp ne i64 %RSP_val.30, %_trans_p2i_62
  store i1 %_trans_icmp_ne_75, i1* %CF, align 1, !mcsema_real_eip !20
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !20
  %_offset_above_rbp_310 = sub i64 %_trans_p2i_62, %_local_end_to_int_
  %_pot_address_in_parent_stack_311 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_310
  %_cond1_312 = icmp ugt i8* %_new_gep_61, %_local_stack_end_ptr_
  %_cond2_1_313 = icmp ugt i8* %_new_gep_61, %_parent_stack_end_ptr_
  %_cond2_2_314 = icmp ult i8* %_new_gep_61, %_parent_stack_start_ptr_
  %_cond2_315 = or i1 %_cond2_1_313, %_cond2_2_314
  %_cond4_316 = icmp ule i8* %_pot_address_in_parent_stack_311, %_parent_stack_end_ptr_
  %_cond1_n_cond2_317 = and i1 %_cond1_312, %_cond2_315
  %_cond1_n_cond2_cond3_318 = and i1 %_cond1_n_cond2_317, %_cond4_316
  %.v9 = select i1 %_cond1_n_cond2_cond3_318, i8* %_pot_address_in_parent_stack_311, i8* %_new_gep_61
  %44 = bitcast i8* %.v9 to i64*
  %_new_load_321 = load i64, i64* %44, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_321 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_321, i64* %XBP, align 8, !mcsema_real_eip !21
  %_new_gep_78 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_60, i64 40
  %45 = add i64 %RSP_val.30, 40, !mcsema_real_eip !21
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_, align 8
  store i64 %45, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_80 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_60, i64 48
  %46 = add i64 %RSP_val.30, 48, !mcsema_real_eip !22
  %_ptr_to_int_322 = ptrtoint i8* %_new_gep_78 to i64
  %_offset_above_rbp_325 = sub i64 %_ptr_to_int_322, %_local_end_to_int_
  %_pot_address_in_parent_stack_326 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_325
  %_cond1_327 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_328 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_329 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_330 = or i1 %_cond2_1_328, %_cond2_2_329
  %_cond4_331 = icmp ule i8* %_pot_address_in_parent_stack_326, %_parent_stack_end_ptr_
  %_cond1_n_cond2_332 = and i1 %_cond1_327, %_cond2_330
  %_cond1_n_cond2_cond3_333 = and i1 %_cond1_n_cond2_332, %_cond4_331
  %_address_in_parent_stack_bt_335._allin_new_bt_81.v = select i1 %_cond1_n_cond2_cond3_333, i8* %_pot_address_in_parent_stack_326, i8* %_new_gep_78
  %_address_in_parent_stack_bt_335._allin_new_bt_81 = bitcast i8* %_address_in_parent_stack_bt_335._allin_new_bt_81.v to i64*
  %_new_load_336 = load i64, i64* %_address_in_parent_stack_bt_335._allin_new_bt_81, align 8
  store i64 %_new_load_336, i64* %XIP, align 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_80, i8** %_RSP_ptr_, align 8
  store i64 %46, i64* %XSP, align 8, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
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
!6 = !{i64 22}
!7 = !{i64 29}
!8 = !{i64 33}
!9 = !{i64 37}
!10 = !{i64 43}
!11 = !{i64 47}
!12 = !{i64 54}
!13 = !{i64 58}
!14 = !{i64 61}
!15 = !{i64 63}
!16 = !{i64 68}
!17 = !{i64 72}
!18 = !{i64 75}
!19 = !{i64 78}
!20 = !{i64 80}
!21 = !{i64 84}
!22 = !{i64 85}
