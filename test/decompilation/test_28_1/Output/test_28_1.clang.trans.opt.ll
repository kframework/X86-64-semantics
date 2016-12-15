; ModuleID = 'Output/test_28_1.clang.trans.opt.bc'
source_filename = "Output/test_28_1.clang.bc"
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
module asm "  .globl sub_30;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_30(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [13 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x51 = internal constant %0 <{ [13 x i8] c"Hello World!\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
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
  store i64 2, i64* %XDI, align 8, !mcsema_real_eip !5
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %12 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %12, align 4, !mcsema_real_eip !6
  %_new_gep_17 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %13 = add i64 %RSP_val.1, -32
  %_allin_new_bt_18 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, align 8, !mcsema_real_eip !7
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XSP, align 8, !mcsema_real_eip !7
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* nonnull %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_new_gep_)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !8
  %RSP_val.10 = load i64, i64* %XSP, align 8, !mcsema_real_eip !9
  %_new_gep_20 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %14 = add i64 %RSP_val.10, 16, !mcsema_real_eip !9
  %_trans_p2i_21 = ptrtoint i8* %_new_gep_20 to i64
  %_trans_p2i_22 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_23 = xor i64 %_trans_p2i_21, %_trans_p2i_22
  %15 = and i64 %_trans_xor_23, 16
  %16 = icmp eq i64 %15, 0
  store i1 %16, i1* %AF, align 1, !mcsema_real_eip !9
  %17 = icmp slt i64 %14, 0
  store i1 %17, i1* %SF, align 1, !mcsema_real_eip !9
  %_trans_icmp_eq_25 = icmp eq i8* %_new_gep_20, null
  store i1 %_trans_icmp_eq_25, i1* %ZF, align 1, !mcsema_real_eip !9
  %18 = xor i64 %_trans_p2i_22, -9223372036854775808, !mcsema_real_eip !9
  %19 = and i64 %18, %_trans_xor_23, !mcsema_real_eip !9
  %20 = icmp slt i64 %19, 0
  store i1 %20, i1* %OF, align 1, !mcsema_real_eip !9
  %_trans_trunc_32 = trunc i64 %_trans_p2i_21 to i8
  %21 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_32), !mcsema_real_eip !9
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  store i1 %23, i1* %PF, align 1, !mcsema_real_eip !9
  %_trans_icmp_ne_34 = icmp ne i64 %_trans_p2i_21, %RSP_val.10
  store i1 %_trans_icmp_ne_34, i1* %CF, align 1, !mcsema_real_eip !9
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !9
  %_allin_new_bt_36 = bitcast i8* %_new_gep_20 to i64*
  %24 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !10
  store volatile i64 %24, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %24, i64* %XBP, align 8, !mcsema_real_eip !10
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %25 = add i64 %RSP_val.10, 24, !mcsema_real_eip !10
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XSP, align 8, !mcsema_real_eip !10
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %26 = add i64 %RSP_val.10, 32, !mcsema_real_eip !11
  %_allin_new_bt_40 = bitcast i8* %_new_gep_37 to i64*
  %27 = load i64, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !11
  store i64 %27, i64* %XIP, align 8, !mcsema_real_eip !11
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_, align 8
  store i64 %26, i64* %XSP, align 8, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !12
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !12
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !12
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !12
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !12
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !12
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !12
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !12
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !12
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !12
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !12
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !12
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !12
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !12
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !12
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !12
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !12
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !12
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !12
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !12
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !12
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !12
  %RBP_val.13 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !12
  %1 = add i64 %RSP_val.14, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !12
  store i64 %RBP_val.13, i64* %2, align 8, !mcsema_real_eip !12
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !13
  %3 = add i64 %RSP_val.14, -24
  %4 = xor i64 %3, %1, !mcsema_real_eip !14
  %5 = and i64 %4, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !14
  %7 = trunc i64 %3 to i8, !mcsema_real_eip !14
  %8 = tail call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !14
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !14
  %11 = icmp eq i64 %3, 0, !mcsema_real_eip !14
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !14
  %12 = icmp slt i64 %3, 0
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !14
  %13 = icmp ult i64 %1, 16, !mcsema_real_eip !14
  store i1 %13, i1* %CF, align 1, !mcsema_real_eip !14
  %14 = and i64 %4, %1, !mcsema_real_eip !14
  %15 = icmp slt i64 %14, 0
  store i1 %15, i1* %OF, align 1, !mcsema_real_eip !14
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !14
  store i64 ptrtoint (%0* @data_0x51 to i64), i64* %XAX, align 8, !mcsema_real_eip !15
  %16 = add i64 %RSP_val.14, -12, !mcsema_real_eip !16
  %EDI.18 = bitcast i64* %XDI to i32*, !mcsema_real_eip !16
  %EDI_val.19 = load i32, i32* %EDI.18, align 4, !mcsema_real_eip !16
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !16
  store i32 %EDI_val.19, i32* %17, align 4, !mcsema_real_eip !16
  %RAX_val.20 = load i64, i64* %XAX, align 8, !mcsema_real_eip !17
  store i64 %RAX_val.20, i64* %XDI, align 8, !mcsema_real_eip !17
  %AL.21 = bitcast i64* %XAX to i8*, !mcsema_real_eip !18
  store i8 0, i8* %AL.21, align 1, !mcsema_real_eip !18
  %RSI_val.23 = load i64, i64* %XSI, align 8, !mcsema_real_eip !19
  %RDX_val.24 = load i64, i64* %XDX, align 8, !mcsema_real_eip !19
  %RCX_val.25 = load i64, i64* %XCX, align 8, !mcsema_real_eip !19
  %R8_val.26 = load i64, i64* %R8, align 8, !mcsema_real_eip !19
  %R9_val.27 = load i64, i64* %R9, align 8, !mcsema_real_eip !19
  %RSP_val.28 = load i64, i64* %XSP, align 8, !mcsema_real_eip !19
  %18 = inttoptr i64 %RSP_val.28 to i64*, !mcsema_real_eip !19
  %19 = load i64, i64* %18, align 8, !mcsema_real_eip !19
  %20 = add i64 %RSP_val.28, 8, !mcsema_real_eip !19
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !19
  %22 = load i64, i64* %21, align 8, !mcsema_real_eip !19
  %23 = add i64 %RSP_val.28, 16, !mcsema_real_eip !19
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !19
  %25 = load i64, i64* %24, align 8, !mcsema_real_eip !19
  %26 = add i64 %RSP_val.28, 24, !mcsema_real_eip !19
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !19
  %28 = load i64, i64* %27, align 8, !mcsema_real_eip !19
  %29 = add i64 %RSP_val.28, 32, !mcsema_real_eip !19
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !19
  %31 = load i64, i64* %30, align 8, !mcsema_real_eip !19
  %32 = add i64 %RSP_val.28, 40, !mcsema_real_eip !19
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !19
  %34 = load i64, i64* %33, align 8, !mcsema_real_eip !19
  %35 = add i64 %RSP_val.28, -8
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !19
  store i64 -2415393069852865332, i64* %36, align 8, !mcsema_real_eip !19
  store i64 %35, i64* %XSP, align 8, !mcsema_real_eip !19
  %37 = tail call x86_64_sysvcc i64 @_printf(i64 %RAX_val.20, i64 %RSI_val.23, i64 %RDX_val.24, i64 %RCX_val.25, i64 %R8_val.26, i64 %R9_val.27, i64 %19, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34), !mcsema_real_eip !19
  store i64 %37, i64* %XAX, align 8, !mcsema_real_eip !19
  %RBP_val.30 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %38 = add i64 %RBP_val.30, -8, !mcsema_real_eip !20
  %39 = trunc i64 %37 to i32
  %40 = inttoptr i64 %38 to i32*, !mcsema_real_eip !20
  store i32 %39, i32* %40, align 4, !mcsema_real_eip !20
  %RSP_val.33 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %41 = add i64 %RSP_val.33, 16, !mcsema_real_eip !21
  %42 = xor i64 %41, %RSP_val.33, !mcsema_real_eip !21
  %43 = and i64 %42, 16
  %44 = icmp eq i64 %43, 0
  store i1 %44, i1* %AF, align 1, !mcsema_real_eip !21
  %45 = icmp slt i64 %41, 0
  store i1 %45, i1* %SF, align 1, !mcsema_real_eip !21
  %46 = icmp eq i64 %41, 0, !mcsema_real_eip !21
  store i1 %46, i1* %ZF, align 1, !mcsema_real_eip !21
  %47 = xor i64 %RSP_val.33, -9223372036854775808, !mcsema_real_eip !21
  %48 = and i64 %42, %47, !mcsema_real_eip !21
  %49 = icmp slt i64 %48, 0
  store i1 %49, i1* %OF, align 1, !mcsema_real_eip !21
  %50 = trunc i64 %41 to i8, !mcsema_real_eip !21
  %51 = tail call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !21
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  store i1 %53, i1* %PF, align 1, !mcsema_real_eip !21
  %54 = icmp ugt i64 %RSP_val.33, -17
  store i1 %54, i1* %CF, align 1, !mcsema_real_eip !21
  store i64 %41, i64* %XSP, align 8, !mcsema_real_eip !21
  %55 = inttoptr i64 %41 to i64*, !mcsema_real_eip !22
  %56 = load i64, i64* %55, align 8, !mcsema_real_eip !22
  store i64 %56, i64* %XBP, align 8, !mcsema_real_eip !22
  %57 = add i64 %RSP_val.33, 24, !mcsema_real_eip !22
  store i64 %57, i64* %XSP, align 8, !mcsema_real_eip !22
  %58 = add i64 %RSP_val.33, 32, !mcsema_real_eip !23
  %59 = inttoptr i64 %57 to i64*, !mcsema_real_eip !23
  %60 = load i64, i64* %59, align 8, !mcsema_real_eip !23
  store i64 %60, i64* %XIP, align 8, !mcsema_real_eip !23
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
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
  store i64 2, i64* %XDI, align 8, !mcsema_real_eip !5
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
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !8
  %RSP_val.10 = load i64, i64* %XSP, align 8, !mcsema_real_eip !9
  %_new_gep_20 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 24
  %13 = add i64 %RSP_val.10, 16, !mcsema_real_eip !9
  %_trans_p2i_21 = ptrtoint i8* %_new_gep_20 to i64
  %_trans_p2i_22 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_23 = xor i64 %_trans_p2i_21, %_trans_p2i_22
  %14 = and i64 %_trans_xor_23, 16
  %15 = icmp eq i64 %14, 0
  store i1 %15, i1* %AF, align 1, !mcsema_real_eip !9
  %16 = icmp slt i64 %13, 0
  store i1 %16, i1* %SF, align 1, !mcsema_real_eip !9
  %_trans_icmp_eq_25 = icmp eq i8* %_new_gep_20, null
  store i1 %_trans_icmp_eq_25, i1* %ZF, align 1, !mcsema_real_eip !9
  %17 = xor i64 %_trans_p2i_22, -9223372036854775808, !mcsema_real_eip !9
  %18 = and i64 %17, %_trans_xor_23, !mcsema_real_eip !9
  %19 = icmp slt i64 %18, 0
  store i1 %19, i1* %OF, align 1, !mcsema_real_eip !9
  %_trans_trunc_32 = trunc i64 %_trans_p2i_21 to i8
  %20 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_32), !mcsema_real_eip !9
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  store i1 %22, i1* %PF, align 1, !mcsema_real_eip !9
  %_trans_icmp_ne_34 = icmp ne i64 %_trans_p2i_21, %RSP_val.10
  store i1 %_trans_icmp_ne_34, i1* %CF, align 1, !mcsema_real_eip !9
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XSP, align 8, !mcsema_real_eip !9
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_trans_p2i_21, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_20
  %23 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %23, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_ to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_, i64* %XBP, align 8, !mcsema_real_eip !10
  %_new_gep_37 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 32
  %24 = add i64 %RSP_val.10, 24, !mcsema_real_eip !10
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XSP, align 8, !mcsema_real_eip !10
  %_new_gep_39 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 40
  %25 = add i64 %RSP_val.10, 32, !mcsema_real_eip !11
  %_ptr_to_int_43 = ptrtoint i8* %_new_gep_37 to i64
  %_offset_above_rbp_46 = sub i64 %_ptr_to_int_43, %_local_end_to_int_
  %_pot_address_in_parent_stack_47 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_46
  %_cond1_48 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_49 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_50 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_51 = or i1 %_cond2_1_49, %_cond2_2_50
  %_cond4_52 = icmp ule i8* %_pot_address_in_parent_stack_47, %_parent_stack_end_ptr_
  %_cond1_n_cond2_53 = and i1 %_cond1_48, %_cond2_51
  %_cond1_n_cond2_cond3_54 = and i1 %_cond1_n_cond2_53, %_cond4_52
  %_address_in_parent_stack_bt_56._allin_new_bt_40.v = select i1 %_cond1_n_cond2_cond3_54, i8* %_pot_address_in_parent_stack_47, i8* %_new_gep_37
  %_address_in_parent_stack_bt_56._allin_new_bt_40 = bitcast i8* %_address_in_parent_stack_bt_56._allin_new_bt_40.v to i64*
  %_new_load_57 = load i64, i64* %_address_in_parent_stack_bt_56._allin_new_bt_40, align 8
  store i64 %_new_load_57, i64* %XIP, align 8, !mcsema_real_eip !11
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XSP, align 8, !mcsema_real_eip !11
  ret void, !mcsema_real_eip !11
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [32 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !12
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !12
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !12
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !12
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !12
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !12
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !12
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !12
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !12
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !12
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !12
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !12
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !12
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !12
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !12
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !12
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !12
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !12
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !12
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !12
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !12
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !12
  %RSP_val.14 = load i64, i64* %XSP, align 8, !mcsema_real_eip !12
  %_new_gep_ = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %1 = add i64 %RSP_val.14, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !13
  %_new_gep_3 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.14, -24
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !14
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !14
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !14
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !14
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !14
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 16 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !14
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !14
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !14
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !14
  store i64 ptrtoint (%0* @data_0x51 to i64), i64* %XAX, align 8, !mcsema_real_eip !15
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %EDI.18 = bitcast i64* %XDI to i32*, !mcsema_real_eip !16
  %EDI_val.19 = load i32, i32* %EDI.18, align 4, !mcsema_real_eip !16
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 %EDI_val.19, i32* %11, align 4, !mcsema_real_eip !16
  store i64 ptrtoint (%0* @data_0x51 to i64), i64* %XDI, align 8, !mcsema_real_eip !17
  %AL.21 = bitcast i64* %XAX to i8*, !mcsema_real_eip !18
  store i8 0, i8* %AL.21, align 1, !mcsema_real_eip !18
  %RSI_val.23 = load i64, i64* %XSI, align 8, !mcsema_real_eip !19
  %RDX_val.24 = load i64, i64* %XDX, align 8, !mcsema_real_eip !19
  %RCX_val.25 = load i64, i64* %XCX, align 8, !mcsema_real_eip !19
  %R8_val.26 = load i64, i64* %R8, align 8, !mcsema_real_eip !19
  %R9_val.27 = load i64, i64* %R9, align 8, !mcsema_real_eip !19
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
  %14 = add i64 %RSP_val.14, -32
  %_allin_new_bt_30 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !19
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !19
  %15 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x51 to i64), i64 %RSI_val.23, i64 %RDX_val.24, i64 %RCX_val.25, i64 %R8_val.26, i64 %R9_val.27, i64 undef, i64 %_new_load_70, i64 %_new_load_85, i64 %_new_load_100, i64 %_new_load_115, i64 %_new_load_130)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %15, i64* %XAX, align 8, !mcsema_real_eip !19
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -8
  %16 = trunc i64 %15 to i32
  %17 = bitcast i8* %_new_gep_32 to i32*
  store i32 %16, i32* %17, align 4, !mcsema_real_eip !20
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.33 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_35 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34, i64 16
  %18 = add i64 %RSP_val.33, 16, !mcsema_real_eip !21
  %_trans_p2i_36 = ptrtoint i8* %_new_gep_35 to i64
  %_trans_p2i_37 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34 to i64
  %_trans_xor_38 = xor i64 %_trans_p2i_36, %_trans_p2i_37
  %19 = and i64 %_trans_xor_38, 16
  %20 = icmp eq i64 %19, 0
  store i1 %20, i1* %AF, align 1, !mcsema_real_eip !21
  %21 = icmp slt i64 %18, 0
  store i1 %21, i1* %SF, align 1, !mcsema_real_eip !21
  %_trans_icmp_eq_40 = icmp eq i8* %_new_gep_35, null
  store i1 %_trans_icmp_eq_40, i1* %ZF, align 1, !mcsema_real_eip !21
  %22 = xor i64 %_trans_p2i_37, -9223372036854775808, !mcsema_real_eip !21
  %23 = and i64 %_trans_xor_38, %22, !mcsema_real_eip !21
  %24 = icmp slt i64 %23, 0
  store i1 %24, i1* %OF, align 1, !mcsema_real_eip !21
  %_trans_trunc_47 = trunc i64 %_trans_p2i_36 to i8
  %25 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_47), !mcsema_real_eip !21
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !21
  %_trans_icmp_ne_49 = icmp ne i64 %_trans_p2i_36, %RSP_val.33
  store i1 %_trans_icmp_ne_49, i1* %CF, align 1, !mcsema_real_eip !21
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_, align 8
  store i64 %18, i64* %XSP, align 8, !mcsema_real_eip !21
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
  %28 = bitcast i8* %.v4 to i64*
  %_new_load_145 = load i64, i64* %28, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_145 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_145, i64* %XBP, align 8, !mcsema_real_eip !22
  %_new_gep_52 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34, i64 24
  %29 = add i64 %RSP_val.33, 24, !mcsema_real_eip !22
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_, align 8
  store i64 %29, i64* %XSP, align 8, !mcsema_real_eip !22
  %_new_gep_54 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_34, i64 32
  %30 = add i64 %RSP_val.33, 32, !mcsema_real_eip !23
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
  store i64 %_new_load_160, i64* %XIP, align 8, !mcsema_real_eip !23
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_, align 8
  store i64 %30, i64* %XSP, align 8, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 48}
!3 = !{i64 49}
!4 = !{i64 52}
!5 = !{i64 56}
!6 = !{i64 61}
!7 = !{i64 68}
!8 = !{i64 73}
!9 = !{i64 75}
!10 = !{i64 79}
!11 = !{i64 80}
!12 = !{i64 0}
!13 = !{i64 1}
!14 = !{i64 4}
!15 = !{i64 8}
!16 = !{i64 18}
!17 = !{i64 21}
!18 = !{i64 24}
!19 = !{i64 26}
!20 = !{i64 31}
!21 = !{i64 34}
!22 = !{i64 38}
!23 = !{i64 39}
