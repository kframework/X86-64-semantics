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
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_44 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 -8
  %30 = add i64 %RSP_val.22, -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_44, i8** %_RSP_ptr_, align 8
  store i64 %30, i64* %XSP, align 8, !mcsema_real_eip !15
  %31 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.15, i64 %23, i64 %RDX_val.17, i64 %RCX_val.18, i64 %R8_val.19, i64 %R9_val.20, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %31, i64* %XAX, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_468 = load i8*, i8** %12, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_468, i64 -24
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %32 = load i64, i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !16
  store i64 %32, i64* %XDI, align 8, !mcsema_real_eip !16
  %33 = add i64 %32, 4, !mcsema_real_eip !17
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !17
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !17
  %36 = zext i32 %35 to i64, !mcsema_real_eip !17
  store i64 %36, i64* %XSI, align 8, !mcsema_real_eip !17
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_468, i64 -28
  %37 = trunc i64 %31 to i32
  %38 = bitcast i8* %_new_gep_50 to i32*
  store i32 %37, i32* %38, align 4, !mcsema_real_eip !18
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !19
  %ESI_val.29 = load i32, i32* %ESI.28, align 4, !mcsema_real_eip !19
  %39 = zext i32 %ESI_val.29 to i64, !mcsema_real_eip !19
  store i64 %39, i64* %XAX, align 8, !mcsema_real_eip !19
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %_new_gep_53 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52, i64 32
  %40 = add i64 %RSP_val.30, 32, !mcsema_real_eip !20
  %_trans_p2i_54 = ptrtoint i8* %_new_gep_53 to i64
  %_trans_p2i_55 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52 to i64
  %_trans_xor_56 = xor i64 %_trans_p2i_54, %_trans_p2i_55
  %41 = and i64 %_trans_xor_56, 16, !mcsema_real_eip !20
  %42 = icmp ne i64 %41, 0, !mcsema_real_eip !20
  store i1 %42, i1* %AF, align 1, !mcsema_real_eip !20
  %43 = icmp slt i64 %40, 0
  store i1 %43, i1* %SF, align 1, !mcsema_real_eip !20
  %_trans_icmp_eq_58 = icmp eq i8* %_new_gep_53, null
  store i1 %_trans_icmp_eq_58, i1* %ZF, align 1, !mcsema_real_eip !20
  %44 = xor i64 %_trans_p2i_55, -9223372036854775808, !mcsema_real_eip !20
  %45 = and i64 %_trans_xor_56, %44, !mcsema_real_eip !20
  %46 = icmp slt i64 %45, 0
  store i1 %46, i1* %OF, align 1, !mcsema_real_eip !20
  %_trans_trunc_65 = trunc i64 %_trans_p2i_54 to i8
  %47 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_65), !mcsema_real_eip !20
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  store i1 %49, i1* %PF, align 1, !mcsema_real_eip !20
  %_trans_icmp_ne_67 = icmp ne i64 %_trans_p2i_54, %RSP_val.30
  store i1 %_trans_icmp_ne_67, i1* %CF, align 1, !mcsema_real_eip !20
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_, align 8
  store i64 %40, i64* %XSP, align 8, !mcsema_real_eip !20
  %_allin_new_bt_69 = bitcast i8* %_new_gep_53 to i64*
  %50 = load i64, i64* %_allin_new_bt_69, align 8, !mcsema_real_eip !21
  store volatile i64 %50, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %50, i64* %XBP, align 8, !mcsema_real_eip !21
  %_new_gep_70 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52, i64 40
  %51 = add i64 %RSP_val.30, 40, !mcsema_real_eip !21
  store volatile i8* %_new_gep_70, i8** %_RSP_ptr_, align 8
  store i64 %51, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_72 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52, i64 48
  %52 = add i64 %RSP_val.30, 48, !mcsema_real_eip !22
  %_allin_new_bt_73 = bitcast i8* %_new_gep_70 to i64*
  %53 = load i64, i64* %_allin_new_bt_73, align 8, !mcsema_real_eip !22
  store i64 %53, i64* %XIP, align 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_72, i8** %_RSP_ptr_, align 8
  store i64 %52, i64* %XSP, align 8, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
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
  %_ptr_to_int_74 = ptrtoint i8* %_new_gep_26 to i64
  %_offset_above_rbp_77 = sub i64 %_ptr_to_int_74, %_local_end_to_int_
  %_pot_address_in_parent_stack_78 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_77
  %_cond1_79 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_80 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_81 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_82 = or i1 %_cond2_1_80, %_cond2_2_81
  %_cond4_83 = icmp ule i8* %_pot_address_in_parent_stack_78, %_parent_stack_end_ptr_
  %_cond1_n_cond2_84 = and i1 %_cond1_79, %_cond2_82
  %_cond1_n_cond2_cond3_85 = and i1 %_cond1_n_cond2_84, %_cond4_83
  %_address_in_parent_stack_bt_87._allin_new_bt_27.v = select i1 %_cond1_n_cond2_cond3_85, i8* %_pot_address_in_parent_stack_78, i8* %_new_gep_26
  %_address_in_parent_stack_bt_87._allin_new_bt_27 = bitcast i8* %_address_in_parent_stack_bt_87._allin_new_bt_27.v to i64*
  %_new_load_88 = load i64, i64* %_address_in_parent_stack_bt_87._allin_new_bt_27, align 8
  store i64 %_new_load_88, i64* %XAX, align 8, !mcsema_real_eip !10
  %14 = add i64 %_new_load_88, 4, !mcsema_real_eip !11
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !11
  store i32 2, i32* %15, align 4, !mcsema_real_eip !11
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -24
  %_ptr_to_int_89 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_92 = sub i64 %_ptr_to_int_89, %_local_end_to_int_
  %_pot_address_in_parent_stack_93 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_92
  %_cond1_94 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_95 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_96 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_97 = or i1 %_cond2_1_95, %_cond2_2_96
  %_cond4_98 = icmp ule i8* %_pot_address_in_parent_stack_93, %_parent_stack_end_ptr_
  %_cond1_n_cond2_99 = and i1 %_cond1_94, %_cond2_97
  %_cond1_n_cond2_cond3_100 = and i1 %_cond1_n_cond2_99, %_cond4_98
  %.v2 = select i1 %_cond1_n_cond2_cond3_100, i8* %_pot_address_in_parent_stack_93, i8* %_new_gep_29
  %16 = bitcast i8* %.v2 to i64*
  %_new_load_103 = load i64, i64* %16, align 8
  store i64 %_new_load_103, i64* %XAX, align 8, !mcsema_real_eip !12
  %17 = add i64 %_new_load_103, 4, !mcsema_real_eip !13
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !13
  %_ptr_bt_106 = inttoptr i64 %17 to i8*
  %_offset_above_rbp_107 = sub i64 %17, %_local_end_to_int_
  %_pot_address_in_parent_stack_108 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_107
  %_cond1_109 = icmp ugt i8* %_ptr_bt_106, %_local_stack_end_ptr_
  %_cond2_1_110 = icmp ugt i8* %_ptr_bt_106, %_parent_stack_end_ptr_
  %_cond2_2_111 = icmp ult i8* %_ptr_bt_106, %_parent_stack_start_ptr_
  %_cond2_112 = or i1 %_cond2_1_110, %_cond2_2_111
  %_cond4_113 = icmp ule i8* %_pot_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond1_n_cond2_114 = and i1 %_cond1_109, %_cond2_112
  %_cond1_n_cond2_cond3_115 = and i1 %_cond4_113, %_cond1_n_cond2_114
  %_address_in_parent_stack_bt_117 = bitcast i8* %_pot_address_in_parent_stack_108 to i32*
  %_address_in_parent_stack_bt_117. = select i1 %_cond1_n_cond2_cond3_115, i32* %_address_in_parent_stack_bt_117, i32* %18
  %_new_load_118 = load i32, i32* %_address_in_parent_stack_bt_117., align 4
  %19 = zext i32 %_new_load_118 to i64, !mcsema_real_eip !13
  store i64 %19, i64* %XSI, align 8, !mcsema_real_eip !13
  %AL.14 = bitcast i64* %XAX to i8*, !mcsema_real_eip !14
  store i8 0, i8* %AL.14, align 1, !mcsema_real_eip !14
  %RDI_val.15 = load i64, i64* %XDI, align 8, !mcsema_real_eip !15
  %RDX_val.17 = load i64, i64* %XDX, align 8, !mcsema_real_eip !15
  %RCX_val.18 = load i64, i64* %XCX, align 8, !mcsema_real_eip !15
  %R8_val.19 = load i64, i64* %R8, align 8, !mcsema_real_eip !15
  %R9_val.20 = load i64, i64* %R9, align 8, !mcsema_real_eip !15
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_119 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31 to i64
  %_offset_above_rbp_122 = sub i64 %_ptr_to_int_119, %_local_end_to_int_
  %_pot_address_in_parent_stack_123 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_122
  %_cond1_124 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, %_local_stack_end_ptr_
  %_cond2_1_125 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, %_parent_stack_end_ptr_
  %_cond2_2_126 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, %_parent_stack_start_ptr_
  %_cond2_127 = or i1 %_cond2_1_125, %_cond2_2_126
  %_cond4_128 = icmp ule i8* %_pot_address_in_parent_stack_123, %_parent_stack_end_ptr_
  %_cond1_n_cond2_129 = and i1 %_cond1_124, %_cond2_127
  %_cond1_n_cond2_cond3_130 = and i1 %_cond1_n_cond2_129, %_cond4_128
  %.v3 = select i1 %_cond1_n_cond2_cond3_130, i8* %_pot_address_in_parent_stack_123, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31
  %20 = bitcast i8* %.v3 to i64*
  %_new_load_133 = load i64, i64* %20, align 8
  %_new_gep_33 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 8
  %_ptr_to_int_134 = ptrtoint i8* %_new_gep_33 to i64
  %_offset_above_rbp_137 = sub i64 %_ptr_to_int_134, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  %_address_in_parent_stack_bt_147._allin_new_bt_34.v = select i1 %_cond1_n_cond2_cond3_145, i8* %_pot_address_in_parent_stack_138, i8* %_new_gep_33
  %_address_in_parent_stack_bt_147._allin_new_bt_34 = bitcast i8* %_address_in_parent_stack_bt_147._allin_new_bt_34.v to i64*
  %_new_load_148 = load i64, i64* %_address_in_parent_stack_bt_147._allin_new_bt_34, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 16
  %_ptr_to_int_149 = ptrtoint i8* %_new_gep_35 to i64
  %_offset_above_rbp_152 = sub i64 %_ptr_to_int_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  %.v4 = select i1 %_cond1_n_cond2_cond3_160, i8* %_pot_address_in_parent_stack_153, i8* %_new_gep_35
  %21 = bitcast i8* %.v4 to i64*
  %_new_load_163 = load i64, i64* %21, align 8
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 24
  %_ptr_to_int_164 = ptrtoint i8* %_new_gep_37 to i64
  %_offset_above_rbp_167 = sub i64 %_ptr_to_int_164, %_local_end_to_int_
  %_pot_address_in_parent_stack_168 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_167
  %_cond1_169 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_170 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_171 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_172 = or i1 %_cond2_1_170, %_cond2_2_171
  %_cond4_173 = icmp ule i8* %_pot_address_in_parent_stack_168, %_parent_stack_end_ptr_
  %_cond1_n_cond2_174 = and i1 %_cond1_169, %_cond2_172
  %_cond1_n_cond2_cond3_175 = and i1 %_cond1_n_cond2_174, %_cond4_173
  %_address_in_parent_stack_bt_177._allin_new_bt_38.v = select i1 %_cond1_n_cond2_cond3_175, i8* %_pot_address_in_parent_stack_168, i8* %_new_gep_37
  %_address_in_parent_stack_bt_177._allin_new_bt_38 = bitcast i8* %_address_in_parent_stack_bt_177._allin_new_bt_38.v to i64*
  %_new_load_178 = load i64, i64* %_address_in_parent_stack_bt_177._allin_new_bt_38, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 32
  %_ptr_to_int_179 = ptrtoint i8* %_new_gep_39 to i64
  %_offset_above_rbp_182 = sub i64 %_ptr_to_int_179, %_local_end_to_int_
  %_pot_address_in_parent_stack_183 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_182
  %_cond1_184 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_185 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_186 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_187 = or i1 %_cond2_1_185, %_cond2_2_186
  %_cond4_188 = icmp ule i8* %_pot_address_in_parent_stack_183, %_parent_stack_end_ptr_
  %_cond1_n_cond2_189 = and i1 %_cond1_184, %_cond2_187
  %_cond1_n_cond2_cond3_190 = and i1 %_cond1_n_cond2_189, %_cond4_188
  %.v5 = select i1 %_cond1_n_cond2_cond3_190, i8* %_pot_address_in_parent_stack_183, i8* %_new_gep_39
  %22 = bitcast i8* %.v5 to i64*
  %_new_load_193 = load i64, i64* %22, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 40
  %_ptr_to_int_194 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_197 = sub i64 %_ptr_to_int_194, %_local_end_to_int_
  %_pot_address_in_parent_stack_198 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_197
  %_cond1_199 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_200 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_201 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_202 = or i1 %_cond2_1_200, %_cond2_2_201
  %_cond4_203 = icmp ule i8* %_pot_address_in_parent_stack_198, %_parent_stack_end_ptr_
  %_cond1_n_cond2_204 = and i1 %_cond1_199, %_cond2_202
  %_cond1_n_cond2_cond3_205 = and i1 %_cond1_n_cond2_204, %_cond4_203
  %_address_in_parent_stack_bt_207._allin_new_bt_42.v = select i1 %_cond1_n_cond2_cond3_205, i8* %_pot_address_in_parent_stack_198, i8* %_new_gep_41
  %_address_in_parent_stack_bt_207._allin_new_bt_42 = bitcast i8* %_address_in_parent_stack_bt_207._allin_new_bt_42.v to i64*
  %_new_load_208 = load i64, i64* %_address_in_parent_stack_bt_207._allin_new_bt_42, align 8
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_44 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 -8
  %23 = add i64 %RSP_val.22, -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_44, i8** %_RSP_ptr_, align 8
  store i64 %23, i64* %XSP, align 8, !mcsema_real_eip !15
  %24 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.15, i64 %19, i64 %RDX_val.17, i64 %RCX_val.18, i64 %R8_val.19, i64 %R9_val.20, i64 %_new_load_133, i64 %_new_load_148, i64 %_new_load_163, i64 %_new_load_178, i64 %_new_load_193, i64 %_new_load_208)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XAX, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -24
  %_ptr_to_int_209 = ptrtoint i8* %_new_gep_47 to i64
  %_offset_above_rbp_212 = sub i64 %_ptr_to_int_209, %_local_end_to_int_
  %_pot_address_in_parent_stack_213 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_212
  %_cond1_214 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_215 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_216 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_217 = or i1 %_cond2_1_215, %_cond2_2_216
  %_cond4_218 = icmp ule i8* %_pot_address_in_parent_stack_213, %_parent_stack_end_ptr_
  %_cond1_n_cond2_219 = and i1 %_cond1_214, %_cond2_217
  %_cond1_n_cond2_cond3_220 = and i1 %_cond1_n_cond2_219, %_cond4_218
  %.v6 = select i1 %_cond1_n_cond2_cond3_220, i8* %_pot_address_in_parent_stack_213, i8* %_new_gep_47
  %25 = bitcast i8* %.v6 to i64*
  %_new_load_223 = load i64, i64* %25, align 8
  store i64 %_new_load_223, i64* %XDI, align 8, !mcsema_real_eip !16
  %26 = add i64 %_new_load_223, 4, !mcsema_real_eip !17
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !17
  %_ptr_bt_226 = inttoptr i64 %26 to i8*
  %_offset_above_rbp_227 = sub i64 %26, %_local_end_to_int_
  %_pot_address_in_parent_stack_228 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_227
  %_cond1_229 = icmp ugt i8* %_ptr_bt_226, %_local_stack_end_ptr_
  %_cond2_1_230 = icmp ugt i8* %_ptr_bt_226, %_parent_stack_end_ptr_
  %_cond2_2_231 = icmp ult i8* %_ptr_bt_226, %_parent_stack_start_ptr_
  %_cond2_232 = or i1 %_cond2_1_230, %_cond2_2_231
  %_cond4_233 = icmp ule i8* %_pot_address_in_parent_stack_228, %_parent_stack_end_ptr_
  %_cond1_n_cond2_234 = and i1 %_cond1_229, %_cond2_232
  %_cond1_n_cond2_cond3_235 = and i1 %_cond4_233, %_cond1_n_cond2_234
  %_address_in_parent_stack_bt_237 = bitcast i8* %_pot_address_in_parent_stack_228 to i32*
  %_address_in_parent_stack_bt_237. = select i1 %_cond1_n_cond2_cond3_235, i32* %_address_in_parent_stack_bt_237, i32* %27
  %_new_load_238 = load i32, i32* %_address_in_parent_stack_bt_237., align 4
  %28 = zext i32 %_new_load_238 to i64, !mcsema_real_eip !17
  store i64 %28, i64* %XSI, align 8, !mcsema_real_eip !17
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -28
  %29 = trunc i64 %24 to i32
  %30 = bitcast i8* %_new_gep_50 to i32*
  store i32 %29, i32* %30, align 4, !mcsema_real_eip !18
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !19
  %ESI_val.29 = load i32, i32* %ESI.28, align 4, !mcsema_real_eip !19
  %31 = zext i32 %ESI_val.29 to i64, !mcsema_real_eip !19
  store i64 %31, i64* %XAX, align 8, !mcsema_real_eip !19
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %_new_gep_53 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52, i64 32
  %32 = add i64 %RSP_val.30, 32, !mcsema_real_eip !20
  %_trans_p2i_54 = ptrtoint i8* %_new_gep_53 to i64
  %_trans_p2i_55 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52 to i64
  %_trans_xor_56 = xor i64 %_trans_p2i_54, %_trans_p2i_55
  %33 = and i64 %_trans_xor_56, 16, !mcsema_real_eip !20
  %34 = icmp ne i64 %33, 0, !mcsema_real_eip !20
  store i1 %34, i1* %AF, align 1, !mcsema_real_eip !20
  %35 = icmp slt i64 %32, 0
  store i1 %35, i1* %SF, align 1, !mcsema_real_eip !20
  %_trans_icmp_eq_58 = icmp eq i8* %_new_gep_53, null
  store i1 %_trans_icmp_eq_58, i1* %ZF, align 1, !mcsema_real_eip !20
  %36 = xor i64 %_trans_p2i_55, -9223372036854775808, !mcsema_real_eip !20
  %37 = and i64 %_trans_xor_56, %36, !mcsema_real_eip !20
  %38 = icmp slt i64 %37, 0
  store i1 %38, i1* %OF, align 1, !mcsema_real_eip !20
  %_trans_trunc_65 = trunc i64 %_trans_p2i_54 to i8
  %39 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_65), !mcsema_real_eip !20
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  store i1 %41, i1* %PF, align 1, !mcsema_real_eip !20
  %_trans_icmp_ne_67 = icmp ne i64 %_trans_p2i_54, %RSP_val.30
  store i1 %_trans_icmp_ne_67, i1* %CF, align 1, !mcsema_real_eip !20
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_, align 8
  store i64 %32, i64* %XSP, align 8, !mcsema_real_eip !20
  %_offset_above_rbp_242 = sub i64 %_trans_p2i_54, %_local_end_to_int_
  %_pot_address_in_parent_stack_243 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_242
  %_cond1_244 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_245 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_246 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_247 = or i1 %_cond2_1_245, %_cond2_2_246
  %_cond4_248 = icmp ule i8* %_pot_address_in_parent_stack_243, %_parent_stack_end_ptr_
  %_cond1_n_cond2_249 = and i1 %_cond1_244, %_cond2_247
  %_cond1_n_cond2_cond3_250 = and i1 %_cond1_n_cond2_249, %_cond4_248
  %.v7 = select i1 %_cond1_n_cond2_cond3_250, i8* %_pot_address_in_parent_stack_243, i8* %_new_gep_53
  %42 = bitcast i8* %.v7 to i64*
  %_new_load_253 = load i64, i64* %42, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_253 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_253, i64* %XBP, align 8, !mcsema_real_eip !21
  %_new_gep_70 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52, i64 40
  %43 = add i64 %RSP_val.30, 40, !mcsema_real_eip !21
  store volatile i8* %_new_gep_70, i8** %_RSP_ptr_, align 8
  store i64 %43, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_72 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_52, i64 48
  %44 = add i64 %RSP_val.30, 48, !mcsema_real_eip !22
  %_ptr_to_int_254 = ptrtoint i8* %_new_gep_70 to i64
  %_offset_above_rbp_257 = sub i64 %_ptr_to_int_254, %_local_end_to_int_
  %_pot_address_in_parent_stack_258 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_257
  %_cond1_259 = icmp ugt i8* %_new_gep_70, %_local_stack_end_ptr_
  %_cond2_1_260 = icmp ugt i8* %_new_gep_70, %_parent_stack_end_ptr_
  %_cond2_2_261 = icmp ult i8* %_new_gep_70, %_parent_stack_start_ptr_
  %_cond2_262 = or i1 %_cond2_1_260, %_cond2_2_261
  %_cond4_263 = icmp ule i8* %_pot_address_in_parent_stack_258, %_parent_stack_end_ptr_
  %_cond1_n_cond2_264 = and i1 %_cond1_259, %_cond2_262
  %_cond1_n_cond2_cond3_265 = and i1 %_cond1_n_cond2_264, %_cond4_263
  %_address_in_parent_stack_bt_267._allin_new_bt_73.v = select i1 %_cond1_n_cond2_cond3_265, i8* %_pot_address_in_parent_stack_258, i8* %_new_gep_70
  %_address_in_parent_stack_bt_267._allin_new_bt_73 = bitcast i8* %_address_in_parent_stack_bt_267._allin_new_bt_73.v to i64*
  %_new_load_268 = load i64, i64* %_address_in_parent_stack_bt_267._allin_new_bt_73, align 8
  store i64 %_new_load_268, i64* %XIP, align 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_72, i8** %_RSP_ptr_, align 8
  store i64 %44, i64* %XSP, align 8, !mcsema_real_eip !22
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
