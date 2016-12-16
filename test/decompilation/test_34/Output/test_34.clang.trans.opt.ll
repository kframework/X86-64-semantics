; ModuleID = 'Output/test_34.clang.trans.opt.bc'
source_filename = "Output/test_34.clang.bc"
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
%1 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x40 = internal global %0 <{ [4 x i8] c"\14\00\00\00" }>, align 64
@data_0x44 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64

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
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  store i64 ptrtoint (%1* @data_0x44 to i64), i64* %XDI, align 8, !mcsema_real_eip !5
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !6
  store i32 10, i32* bitcast (%0* @data_0x40 to i32*), align 64, !mcsema_real_eip !7
  store i64 10, i64* %XSI, align 8, !mcsema_real_eip !8
  %AL.5 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 0, i8* %AL.5, align 1, !mcsema_real_eip !9
  %RDI_val.6 = load i64, i64* %XDI, align 8, !mcsema_real_eip !10
  %RDX_val.8 = load i64, i64* %XDX, align 8, !mcsema_real_eip !10
  %RCX_val.9 = load i64, i64* %XCX, align 8, !mcsema_real_eip !10
  %R8_val.10 = load i64, i64* %R8, align 8, !mcsema_real_eip !10
  %R9_val.11 = load i64, i64* %R9, align 8, !mcsema_real_eip !10
  %_new_gep_18 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %14 = load i64, i64* %_allin_new_bt_19, align 8, !mcsema_real_eip !10
  %RSP_val.13 = load i64, i64* %XSP, align 8, !mcsema_real_eip !10
  %_new_gep_37 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %15 = add i64 %RSP_val.13, -8
  %_allin_new_bt_38 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_38, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_, align 8
  store i64 %15, i64* %XSP, align 8, !mcsema_real_eip !10
  %16 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.6, i64 10, i64 %RDX_val.8, i64 %RCX_val.9, i64 %R8_val.10, i64 %R9_val.11, i64 undef, i64 %14, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %ESI.14 = bitcast i64* %XSI to i32*, !mcsema_real_eip !11
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_394 = load i8*, i8** %12, align 8
  %_new_gep_40 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_394, i64 -8
  %17 = trunc i64 %16 to i32
  %18 = bitcast i8* %_new_gep_40 to i32*
  store i32 %17, i32* %18, align 4, !mcsema_real_eip !12
  %ESI_val.22 = load i32, i32* %ESI.14, align 4, !mcsema_real_eip !13
  %19 = zext i32 %ESI_val.22 to i64, !mcsema_real_eip !13
  store i64 %19, i64* %XAX, align 8, !mcsema_real_eip !13
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_42 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.23 = load i64, i64* %XSP, align 8, !mcsema_real_eip !14
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_42, i64 16
  %20 = add i64 %RSP_val.23, 16, !mcsema_real_eip !14
  %_trans_p2i_44 = ptrtoint i8* %_new_gep_43 to i64
  %_trans_p2i_45 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_42 to i64
  %_trans_xor_46 = xor i64 %_trans_p2i_44, %_trans_p2i_45
  %21 = and i64 %_trans_xor_46, 16
  %22 = icmp eq i64 %21, 0
  store i1 %22, i1* %AF, align 1, !mcsema_real_eip !14
  %23 = icmp slt i64 %20, 0
  store i1 %23, i1* %SF, align 1, !mcsema_real_eip !14
  %_trans_icmp_eq_48 = icmp eq i8* %_new_gep_43, null
  store i1 %_trans_icmp_eq_48, i1* %ZF, align 1, !mcsema_real_eip !14
  %24 = xor i64 %_trans_p2i_45, -9223372036854775808, !mcsema_real_eip !14
  %25 = and i64 %_trans_xor_46, %24, !mcsema_real_eip !14
  %26 = icmp slt i64 %25, 0
  store i1 %26, i1* %OF, align 1, !mcsema_real_eip !14
  %_trans_trunc_55 = trunc i64 %_trans_p2i_44 to i8
  %27 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_55), !mcsema_real_eip !14
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  store i1 %29, i1* %PF, align 1, !mcsema_real_eip !14
  %_trans_icmp_ne_57 = icmp ne i64 %_trans_p2i_44, %RSP_val.23
  store i1 %_trans_icmp_ne_57, i1* %CF, align 1, !mcsema_real_eip !14
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_, align 8
  store i64 %20, i64* %XSP, align 8, !mcsema_real_eip !14
  %_allin_new_bt_59 = bitcast i8* %_new_gep_43 to i64*
  %30 = load i64, i64* %_allin_new_bt_59, align 8, !mcsema_real_eip !15
  store volatile i64 %30, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %30, i64* %XBP, align 8, !mcsema_real_eip !15
  %_new_gep_60 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_42, i64 24
  %31 = add i64 %RSP_val.23, 24, !mcsema_real_eip !15
  store volatile i8* %_new_gep_60, i8** %_RSP_ptr_, align 8
  store i64 %31, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_42, i64 32
  %32 = add i64 %RSP_val.23, 32, !mcsema_real_eip !16
  %_allin_new_bt_63 = bitcast i8* %_new_gep_60 to i64*
  %33 = load i64, i64* %_allin_new_bt_63, align 8, !mcsema_real_eip !16
  store i64 %33, i64* %XIP, align 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_, align 8
  store i64 %32, i64* %XSP, align 8, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
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
  store i64 ptrtoint (%1* @data_0x44 to i64), i64* %XDI, align 8, !mcsema_real_eip !5
  %_new_gep_14 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !6
  store i32 10, i32* bitcast (%0* @data_0x40 to i32*), align 64, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 ptrtoint (%0* @data_0x40 to i64), %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ult i8* %_local_stack_end_ptr_, getelementptr inbounds (%0, %0* @data_0x40, i64 0, i32 0, i64 0)
  %_cond2_1_ = icmp ult i8* %_parent_stack_end_ptr_, getelementptr inbounds (%0, %0* @data_0x40, i64 0, i32 0, i64 0)
  %_cond2_2_ = icmp ugt i8* %_parent_stack_start_ptr_, getelementptr inbounds (%0, %0* @data_0x40, i64 0, i32 0, i64 0)
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  %12 = select i1 %_cond1_n_cond2_cond3_, i32* %_address_in_parent_stack_bt_, i32* bitcast (%0* @data_0x40 to i32*)
  %_new_load_ = load i32, i32* %12, align 4
  %13 = zext i32 %_new_load_ to i64, !mcsema_real_eip !8
  store i64 %13, i64* %XSI, align 8, !mcsema_real_eip !8
  %AL.5 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 0, i8* %AL.5, align 1, !mcsema_real_eip !9
  %RDI_val.6 = load i64, i64* %XDI, align 8, !mcsema_real_eip !10
  %RDX_val.8 = load i64, i64* %XDX, align 8, !mcsema_real_eip !10
  %RCX_val.9 = load i64, i64* %XCX, align 8, !mcsema_real_eip !10
  %R8_val.10 = load i64, i64* %R8, align 8, !mcsema_real_eip !10
  %R9_val.11 = load i64, i64* %R9, align 8, !mcsema_real_eip !10
  %_new_gep_18 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %14 = bitcast i8* %_new_gep_18 to i64*
  %_new_load_91 = load i64, i64* %14, align 8
  %_new_gep_20 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %_address_in_parent_stack_bt_105._allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %_new_load_106 = load i64, i64* %_address_in_parent_stack_bt_105._allin_new_bt_21, align 8
  %_new_gep_22 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %15 = bitcast i8* %_new_gep_22 to i64*
  %_new_load_121 = load i64, i64* %15, align 8
  %_new_gep_24 = getelementptr [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %_pot_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_127 = icmp ugt i8* %_new_gep_24, %_local_stack_end_ptr_
  %_cond2_1_128 = icmp ugt i8* %_new_gep_24, %_parent_stack_end_ptr_
  %_cond2_2_129 = icmp ult i8* %_new_gep_24, %_parent_stack_start_ptr_
  %_cond2_130 = or i1 %_cond2_1_128, %_cond2_2_129
  %_cond4_131 = icmp ule i8* %_pot_address_in_parent_stack_126, %_parent_stack_end_ptr_
  %_cond1_n_cond2_132 = and i1 %_cond1_127, %_cond2_130
  %_cond1_n_cond2_cond3_133 = and i1 %_cond1_n_cond2_132, %_cond4_131
  %_address_in_parent_stack_bt_135._allin_new_bt_25.v = select i1 %_cond1_n_cond2_cond3_133, i8* %_pot_address_in_parent_stack_126, i8* %_new_gep_24
  %_address_in_parent_stack_bt_135._allin_new_bt_25 = bitcast i8* %_address_in_parent_stack_bt_135._allin_new_bt_25.v to i64*
  %_new_load_136 = load i64, i64* %_address_in_parent_stack_bt_135._allin_new_bt_25, align 8
  %_new_gep_26 = getelementptr [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %_pot_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 16
  %_cond1_142 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_143 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_144 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_145 = or i1 %_cond2_1_143, %_cond2_2_144
  %_cond4_146 = icmp ule i8* %_pot_address_in_parent_stack_141, %_parent_stack_end_ptr_
  %_cond1_n_cond2_147 = and i1 %_cond1_142, %_cond2_145
  %_cond1_n_cond2_cond3_148 = and i1 %_cond1_n_cond2_147, %_cond4_146
  %.v3 = select i1 %_cond1_n_cond2_cond3_148, i8* %_pot_address_in_parent_stack_141, i8* %_new_gep_26
  %16 = bitcast i8* %.v3 to i64*
  %_new_load_151 = load i64, i64* %16, align 8
  %_new_gep_28 = getelementptr [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 24
  %_cond1_157 = icmp ugt i8* %_new_gep_28, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_new_gep_28, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_new_gep_28, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  %_address_in_parent_stack_bt_165._allin_new_bt_29.v = select i1 %_cond1_n_cond2_cond3_163, i8* %_pot_address_in_parent_stack_156, i8* %_new_gep_28
  %_address_in_parent_stack_bt_165._allin_new_bt_29 = bitcast i8* %_address_in_parent_stack_bt_165._allin_new_bt_29.v to i64*
  %_new_load_166 = load i64, i64* %_address_in_parent_stack_bt_165._allin_new_bt_29, align 8
  %_new_gep_30 = getelementptr [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 32
  %_cond1_172 = icmp ugt i8* %_new_gep_30, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_30, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_30, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  %.v4 = select i1 %_cond1_n_cond2_cond3_178, i8* %_pot_address_in_parent_stack_171, i8* %_new_gep_30
  %17 = bitcast i8* %.v4 to i64*
  %_new_load_181 = load i64, i64* %17, align 8
  %_new_gep_32 = getelementptr [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 72
  %_pot_address_in_parent_stack_186 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 40
  %_cond1_187 = icmp ugt i8* %_new_gep_32, %_local_stack_end_ptr_
  %_cond2_1_188 = icmp ugt i8* %_new_gep_32, %_parent_stack_end_ptr_
  %_cond2_2_189 = icmp ult i8* %_new_gep_32, %_parent_stack_start_ptr_
  %_cond2_190 = or i1 %_cond2_1_188, %_cond2_2_189
  %_cond4_191 = icmp ule i8* %_pot_address_in_parent_stack_186, %_parent_stack_end_ptr_
  %_cond1_n_cond2_192 = and i1 %_cond1_187, %_cond2_190
  %_cond1_n_cond2_cond3_193 = and i1 %_cond1_n_cond2_192, %_cond4_191
  %_address_in_parent_stack_bt_195._allin_new_bt_33.v = select i1 %_cond1_n_cond2_cond3_193, i8* %_pot_address_in_parent_stack_186, i8* %_new_gep_32
  %_address_in_parent_stack_bt_195._allin_new_bt_33 = bitcast i8* %_address_in_parent_stack_bt_195._allin_new_bt_33.v to i64*
  %_new_load_196 = load i64, i64* %_address_in_parent_stack_bt_195._allin_new_bt_33, align 8
  %_new_gep_34 = getelementptr [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 80
  %_pot_address_in_parent_stack_201 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 48
  %_cond1_202 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_203 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_204 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_205 = or i1 %_cond2_1_203, %_cond2_2_204
  %_cond4_206 = icmp ule i8* %_pot_address_in_parent_stack_201, %_parent_stack_end_ptr_
  %_cond1_n_cond2_207 = and i1 %_cond1_202, %_cond2_205
  %_cond1_n_cond2_cond3_208 = and i1 %_cond1_n_cond2_207, %_cond4_206
  %.v5 = select i1 %_cond1_n_cond2_cond3_208, i8* %_pot_address_in_parent_stack_201, i8* %_new_gep_34
  %18 = bitcast i8* %.v5 to i64*
  %_new_load_211 = load i64, i64* %18, align 8
  %RSP_val.13 = load i64, i64* %XSP, align 8, !mcsema_real_eip !10
  %_new_gep_37 = getelementptr inbounds [32 x i8], [32 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %19 = add i64 %RSP_val.13, -8
  %_allin_new_bt_38 = bitcast [32 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_38, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_, align 8
  store i64 %19, i64* %XSP, align 8, !mcsema_real_eip !10
  %20 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.6, i64 %13, i64 %RDX_val.8, i64 %RCX_val.9, i64 %R8_val.10, i64 %R9_val.11, i64 undef, i64 %_new_load_91, i64 %_new_load_106, i64 %_new_load_121, i64 %_new_load_136, i64 %_new_load_151, i64 %_new_load_166, i64 %_new_load_181, i64 %_new_load_196, i64 %_new_load_211)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  %ESI.14 = bitcast i64* %XSI to i32*, !mcsema_real_eip !11
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !11
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_40 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_39, i64 -8
  %21 = trunc i64 %20 to i32
  %22 = bitcast i8* %_new_gep_40 to i32*
  store i32 %21, i32* %22, align 4, !mcsema_real_eip !12
  %ESI_val.22 = load i32, i32* %ESI.14, align 4, !mcsema_real_eip !13
  %23 = zext i32 %ESI_val.22 to i64, !mcsema_real_eip !13
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !13
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_42 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.23 = load i64, i64* %XSP, align 8, !mcsema_real_eip !14
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_42, i64 16
  %24 = add i64 %RSP_val.23, 16, !mcsema_real_eip !14
  %_trans_p2i_44 = ptrtoint i8* %_new_gep_43 to i64
  %_trans_p2i_45 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_42 to i64
  %_trans_xor_46 = xor i64 %_trans_p2i_44, %_trans_p2i_45
  %25 = and i64 %_trans_xor_46, 16
  %26 = icmp eq i64 %25, 0
  store i1 %26, i1* %AF, align 1, !mcsema_real_eip !14
  %27 = icmp slt i64 %24, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !14
  %_trans_icmp_eq_48 = icmp eq i8* %_new_gep_43, null
  store i1 %_trans_icmp_eq_48, i1* %ZF, align 1, !mcsema_real_eip !14
  %28 = xor i64 %_trans_p2i_45, -9223372036854775808, !mcsema_real_eip !14
  %29 = and i64 %_trans_xor_46, %28, !mcsema_real_eip !14
  %30 = icmp slt i64 %29, 0
  store i1 %30, i1* %OF, align 1, !mcsema_real_eip !14
  %_trans_trunc_55 = trunc i64 %_trans_p2i_44 to i8
  %31 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_55), !mcsema_real_eip !14
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  store i1 %33, i1* %PF, align 1, !mcsema_real_eip !14
  %_trans_icmp_ne_57 = icmp ne i64 %_trans_p2i_44, %RSP_val.23
  store i1 %_trans_icmp_ne_57, i1* %CF, align 1, !mcsema_real_eip !14
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XSP, align 8, !mcsema_real_eip !14
  %_offset_above_rbp_215 = sub i64 %_trans_p2i_44, %_local_end_to_int_
  %_pot_address_in_parent_stack_216 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_215
  %_cond1_217 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_218 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_219 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_220 = or i1 %_cond2_1_218, %_cond2_2_219
  %_cond4_221 = icmp ule i8* %_pot_address_in_parent_stack_216, %_parent_stack_end_ptr_
  %_cond1_n_cond2_222 = and i1 %_cond1_217, %_cond2_220
  %_cond1_n_cond2_cond3_223 = and i1 %_cond1_n_cond2_222, %_cond4_221
  %_address_in_parent_stack_bt_225._allin_new_bt_59.v = select i1 %_cond1_n_cond2_cond3_223, i8* %_pot_address_in_parent_stack_216, i8* %_new_gep_43
  %_address_in_parent_stack_bt_225._allin_new_bt_59 = bitcast i8* %_address_in_parent_stack_bt_225._allin_new_bt_59.v to i64*
  %_new_load_226 = load i64, i64* %_address_in_parent_stack_bt_225._allin_new_bt_59, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_226 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_226, i64* %XBP, align 8, !mcsema_real_eip !15
  %_new_gep_60 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_42, i64 24
  %34 = add i64 %RSP_val.23, 24, !mcsema_real_eip !15
  store volatile i8* %_new_gep_60, i8** %_RSP_ptr_, align 8
  store i64 %34, i64* %XSP, align 8, !mcsema_real_eip !15
  %_new_gep_62 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_42, i64 32
  %35 = add i64 %RSP_val.23, 32, !mcsema_real_eip !16
  %_ptr_to_int_227 = ptrtoint i8* %_new_gep_60 to i64
  %_offset_above_rbp_230 = sub i64 %_ptr_to_int_227, %_local_end_to_int_
  %_pot_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_cond1_232 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_233 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_234 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_235 = or i1 %_cond2_1_233, %_cond2_2_234
  %_cond4_236 = icmp ule i8* %_pot_address_in_parent_stack_231, %_parent_stack_end_ptr_
  %_cond1_n_cond2_237 = and i1 %_cond1_232, %_cond2_235
  %_cond1_n_cond2_cond3_238 = and i1 %_cond1_n_cond2_237, %_cond4_236
  %.v6 = select i1 %_cond1_n_cond2_cond3_238, i8* %_pot_address_in_parent_stack_231, i8* %_new_gep_60
  %36 = bitcast i8* %.v6 to i64*
  %_new_load_241 = load i64, i64* %36, align 8
  store i64 %_new_load_241, i64* %XIP, align 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_, align 8
  store i64 %35, i64* %XSP, align 8, !mcsema_real_eip !16
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
!7 = !{i64 25}
!8 = !{i64 36}
!9 = !{i64 43}
!10 = !{i64 45}
!11 = !{i64 50}
!12 = !{i64 52}
!13 = !{i64 55}
!14 = !{i64 57}
!15 = !{i64 61}
!16 = !{i64 62}
