; ModuleID = 'Output/test_12.clang.trans.opt.bc'
source_filename = "Output/test_12.clang.bc"
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
module asm "  .globl open;"
module asm "  .globl _open;"
module asm "  .type _open,@function"
module asm "_open:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq open@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _open,0b-_open;"
module asm "  .cfi_endproc;"
module asm "  .globl close;"
module asm "  .globl _close;"
module asm "  .type _close,@function"
module asm "_close:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq close@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _close,0b-_close;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl foo;"
module asm "  .type foo,@function"
module asm "foo:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size foo,0b-foo;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_3 = alloca [48 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 40
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 8
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !4
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !5
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !5
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !5
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !5
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !5
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !5
  %5 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 24
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.9 = load i64, i64* %XDI, align 8
  store i64 %RDI_val.9, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !6
  %AL.11 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 0, i8* %AL.11, align 1, !mcsema_real_eip !7
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 0
  %6 = add i64 %RSP_val.1, -48
  %_allin_new_bt_21 = bitcast [48 x i8]* %_local_stack_start_ptr_3 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !8
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %6, i64* %XSP, align 8, !mcsema_real_eip !8
  %7 = call x86_64_sysvcc i64 @_open(i64 %RDI_val.9, i64 0)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %7, i64* %XAX, align 8, !mcsema_real_eip !8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_227 = load i8*, i8** %5, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_227, i64 -20
  %8 = trunc i64 %7 to i32
  %9 = bitcast i8* %_new_gep_23 to i32*
  store i32 %8, i32* %9, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_258 = load i8*, i8** %5, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_258, i64 -20
  %10 = bitcast i8* %_new_gep_26 to i32*
  %11 = load i32, i32* %10, align 4, !mcsema_real_eip !10
  %12 = add i32 %11, 1
  %13 = xor i32 %12, %11, !mcsema_real_eip !10
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  store i1 %15, i1* %AF, align 1, !mcsema_real_eip !10
  %16 = trunc i32 %12 to i8, !mcsema_real_eip !10
  %17 = call i8 @llvm.ctpop.i8(i8 %16), !mcsema_real_eip !10
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  store i1 %19, i1* %PF, align 1, !mcsema_real_eip !10
  %20 = icmp eq i32 %12, 0, !mcsema_real_eip !10
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !10
  %21 = icmp slt i32 %12, 0
  store i1 %21, i1* %SF, align 1, !mcsema_real_eip !10
  %22 = icmp ne i32 %11, -1
  store i1 %22, i1* %CF, align 1, !mcsema_real_eip !10
  %23 = xor i32 %11, -2147483648, !mcsema_real_eip !10
  %24 = and i32 %13, %23, !mcsema_real_eip !10
  %25 = icmp slt i32 %24, 0
  store i1 %25, i1* %OF, align 1, !mcsema_real_eip !10
  br i1 %20, label %block_0x3d, label %block_0x26, !mcsema_real_eip !11

block_0x26:                                       ; preds = %entry
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %26 = load i32, i32* %10, align 4, !mcsema_real_eip !12
  %27 = zext i32 %26 to i64, !mcsema_real_eip !12
  store i64 %27, i64* %XDI, align 8, !mcsema_real_eip !12
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !13
  %_new_gep_32 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 -8
  %28 = add i64 %RSP_val.22, -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_32, i8** %_RSP_ptr_, align 8
  store i64 %28, i64* %XSP, align 8, !mcsema_real_eip !13
  %29 = call x86_64_sysvcc i64 @_close(i64 %27)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_68 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_68, i64 8
  store i8* %_gep_fix_69, i8** %_RSP_ptr_, align 8
  store i64 %29, i64* %XAX, align 8, !mcsema_real_eip !13
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_349 = load i8*, i8** %5, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_349, i64 -4
  %30 = bitcast i8* %_new_gep_35 to i32*
  store i32 0, i32* %30, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3710 = load i8*, i8** %5, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3710, i64 -24
  %EAX_val.26 = load i32, i32* %EAX.16, align 4, !mcsema_real_eip !15
  br label %block_0x44, !mcsema_real_eip !16

block_0x3d:                                       ; preds = %entry
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_258, i64 -4
  br label %block_0x44, !mcsema_real_eip !12

block_0x44:                                       ; preds = %block_0x3d, %block_0x26
  %_allin_new_bt_42.sink.in = phi i8* [ %_new_gep_41, %block_0x3d ], [ %_new_gep_38, %block_0x26 ]
  %.sink = phi i32 [ -1, %block_0x3d ], [ %EAX_val.26, %block_0x26 ]
  %31 = bitcast i8* %_allin_new_bt_42.sink.in to i32*
  store i32 %.sink, i32* %31, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4311 = load i8*, i8** %5, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4311, i64 -4
  %32 = bitcast i8* %_new_gep_44 to i32*
  %33 = load i32, i32* %32, align 4, !mcsema_real_eip !17
  %34 = zext i32 %33 to i64, !mcsema_real_eip !17
  store i64 %34, i64* %XAX, align 8, !mcsema_real_eip !17
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.28 = load i64, i64* %XSP, align 8, !mcsema_real_eip !18
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 32
  %35 = add i64 %RSP_val.28, 32, !mcsema_real_eip !18
  %_trans_p2i_48 = ptrtoint i8* %_new_gep_47 to i64
  %_trans_p2i_49 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 to i64
  %_trans_xor_50 = xor i64 %_trans_p2i_48, %_trans_p2i_49
  %36 = and i64 %_trans_xor_50, 16, !mcsema_real_eip !18
  %37 = icmp ne i64 %36, 0, !mcsema_real_eip !18
  store i1 %37, i1* %AF, align 1, !mcsema_real_eip !18
  %38 = icmp slt i64 %35, 0
  store i1 %38, i1* %SF, align 1, !mcsema_real_eip !18
  %_trans_icmp_eq_52 = icmp eq i8* %_new_gep_47, null
  store i1 %_trans_icmp_eq_52, i1* %ZF, align 1, !mcsema_real_eip !18
  %39 = xor i64 %_trans_p2i_49, -9223372036854775808, !mcsema_real_eip !18
  %40 = and i64 %_trans_xor_50, %39, !mcsema_real_eip !18
  %41 = icmp slt i64 %40, 0
  store i1 %41, i1* %OF, align 1, !mcsema_real_eip !18
  %_trans_trunc_59 = trunc i64 %_trans_p2i_48 to i8
  %42 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_59), !mcsema_real_eip !18
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !18
  %_trans_icmp_ne_61 = icmp ne i64 %_trans_p2i_48, %RSP_val.28
  store i1 %_trans_icmp_ne_61, i1* %CF, align 1, !mcsema_real_eip !18
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_, align 8
  store i64 %35, i64* %XSP, align 8, !mcsema_real_eip !18
  %_allin_new_bt_63 = bitcast i8* %_new_gep_47 to i64*
  %45 = load i64, i64* %_allin_new_bt_63, align 8, !mcsema_real_eip !19
  store volatile i64 %45, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %45, i64* %XBP, align 8, !mcsema_real_eip !19
  %_new_gep_64 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 40
  %46 = add i64 %RSP_val.28, 40, !mcsema_real_eip !19
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_, align 8
  store i64 %46, i64* %XSP, align 8, !mcsema_real_eip !19
  %_new_gep_66 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 48
  %47 = add i64 %RSP_val.28, 48, !mcsema_real_eip !20
  %_allin_new_bt_67 = bitcast i8* %_new_gep_64 to i64*
  %48 = load i64, i64* %_allin_new_bt_67, align 8, !mcsema_real_eip !20
  store i64 %48, i64* %XIP, align 8, !mcsema_real_eip !20
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_, align 8
  store i64 %47, i64* %XSP, align 8, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_open(i64, i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_close(i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_3 = alloca [48 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 40
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 8
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %2 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %3 = icmp ne i64 %2, 0, !mcsema_real_eip !4
  store i1 %3, i1* %AF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !5
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !5
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !5
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !5
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !5
  store i64 0, i64* %XSI, align 8, !mcsema_real_eip !5
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 24
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.9 = load i64, i64* %XDI, align 8, !mcsema_real_eip !6
  store i64 %RDI_val.9, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %AL.11 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 0, i8* %AL.11, align 1, !mcsema_real_eip !7
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_3, i64 0, i64 0
  %4 = add i64 %RSP_val.1, -48
  %_allin_new_bt_21 = bitcast [48 x i8]* %_local_stack_start_ptr_3 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !8
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %4, i64* %XSP, align 8, !mcsema_real_eip !8
  %5 = call x86_64_sysvcc i64 @_open(i64 %RDI_val.9, i64 0)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %5, i64* %XAX, align 8, !mcsema_real_eip !8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -20
  %6 = trunc i64 %5 to i32
  %7 = bitcast i8* %_new_gep_23 to i32*
  store i32 %6, i32* %7, align 4, !mcsema_real_eip !9
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -20
  %8 = ptrtoint i8* %_new_gep_26 to i64
  %_offset_above_rbp_73 = sub i64 %8, %_local_end_to_int_
  %_pot_address_in_parent_stack_74 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_73
  %_cond1_75 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_76 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_77 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_78 = or i1 %_cond2_1_76, %_cond2_2_77
  %_cond4_79 = icmp ule i8* %_pot_address_in_parent_stack_74, %_parent_stack_end_ptr_
  %_cond1_n_cond2_80 = and i1 %_cond1_75, %_cond2_78
  %_cond1_n_cond2_cond3_81 = and i1 %_cond1_n_cond2_80, %_cond4_79
  %_address_in_parent_stack_bt_83..v = select i1 %_cond1_n_cond2_cond3_81, i8* %_pot_address_in_parent_stack_74, i8* %_new_gep_26
  %_address_in_parent_stack_bt_83. = bitcast i8* %_address_in_parent_stack_bt_83..v to i32*
  %_new_load_84 = load i32, i32* %_address_in_parent_stack_bt_83., align 4
  %9 = add i32 %_new_load_84, 1
  %10 = xor i32 %9, %_new_load_84, !mcsema_real_eip !10
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  store i1 %12, i1* %AF, align 1, !mcsema_real_eip !10
  %13 = trunc i32 %9 to i8, !mcsema_real_eip !10
  %14 = call i8 @llvm.ctpop.i8(i8 %13), !mcsema_real_eip !10
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  store i1 %16, i1* %PF, align 1, !mcsema_real_eip !10
  %17 = icmp eq i32 %9, 0, !mcsema_real_eip !10
  store i1 %17, i1* %ZF, align 1, !mcsema_real_eip !10
  %18 = icmp slt i32 %9, 0
  store i1 %18, i1* %SF, align 1, !mcsema_real_eip !10
  %19 = icmp ne i32 %_new_load_84, -1
  store i1 %19, i1* %CF, align 1, !mcsema_real_eip !10
  %20 = xor i32 %_new_load_84, -2147483648, !mcsema_real_eip !10
  %21 = and i32 %10, %20, !mcsema_real_eip !10
  %22 = icmp slt i32 %21, 0
  store i1 %22, i1* %OF, align 1, !mcsema_real_eip !10
  br i1 %17, label %block_0x3d, label %block_0x26, !mcsema_real_eip !11

block_0x26:                                       ; preds = %entry
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %_new_load_99 = load i32, i32* %_address_in_parent_stack_bt_83., align 4
  %23 = zext i32 %_new_load_99 to i64, !mcsema_real_eip !12
  store i64 %23, i64* %XDI, align 8, !mcsema_real_eip !12
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !13
  %_new_gep_32 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_31, i64 -8
  %24 = add i64 %RSP_val.22, -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_32, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XSP, align 8, !mcsema_real_eip !13
  %25 = call x86_64_sysvcc i64 @_close(i64 %23)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_68 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_69 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_68, i64 8
  store i8* %_gep_fix_69, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !13
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -4
  %26 = bitcast i8* %_new_gep_35 to i32*
  store i32 0, i32* %26, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -24
  %EAX_val.26 = load i32, i32* %EAX.16, align 4, !mcsema_real_eip !15
  br label %block_0x44, !mcsema_real_eip !16

block_0x3d:                                       ; preds = %entry
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -4
  br label %block_0x44, !mcsema_real_eip !12

block_0x44:                                       ; preds = %block_0x3d, %block_0x26
  %_allin_new_bt_42.sink.in = phi i8* [ %_new_gep_41, %block_0x3d ], [ %_new_gep_38, %block_0x26 ]
  %.sink = phi i32 [ -1, %block_0x3d ], [ %EAX_val.26, %block_0x26 ]
  %27 = bitcast i8* %_allin_new_bt_42.sink.in to i32*
  store i32 %.sink, i32* %27, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -4
  %28 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_103 = sub i64 %28, %_local_end_to_int_
  %_pot_address_in_parent_stack_104 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_103
  %_cond1_105 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_106 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_107 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_108 = or i1 %_cond2_1_106, %_cond2_2_107
  %_cond4_109 = icmp ule i8* %_pot_address_in_parent_stack_104, %_parent_stack_end_ptr_
  %_cond1_n_cond2_110 = and i1 %_cond1_105, %_cond2_108
  %_cond1_n_cond2_cond3_111 = and i1 %_cond1_n_cond2_110, %_cond4_109
  %_address_in_parent_stack_bt_113..v = select i1 %_cond1_n_cond2_cond3_111, i8* %_pot_address_in_parent_stack_104, i8* %_new_gep_44
  %_address_in_parent_stack_bt_113. = bitcast i8* %_address_in_parent_stack_bt_113..v to i32*
  %_new_load_114 = load i32, i32* %_address_in_parent_stack_bt_113., align 4
  %29 = zext i32 %_new_load_114 to i64, !mcsema_real_eip !17
  store i64 %29, i64* %XAX, align 8, !mcsema_real_eip !17
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.28 = load i64, i64* %XSP, align 8, !mcsema_real_eip !18
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 32
  %30 = add i64 %RSP_val.28, 32, !mcsema_real_eip !18
  %_trans_p2i_48 = ptrtoint i8* %_new_gep_47 to i64
  %_trans_p2i_49 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 to i64
  %_trans_xor_50 = xor i64 %_trans_p2i_48, %_trans_p2i_49
  %31 = and i64 %_trans_xor_50, 16, !mcsema_real_eip !18
  %32 = icmp ne i64 %31, 0, !mcsema_real_eip !18
  store i1 %32, i1* %AF, align 1, !mcsema_real_eip !18
  %33 = icmp slt i64 %30, 0
  store i1 %33, i1* %SF, align 1, !mcsema_real_eip !18
  %_trans_icmp_eq_52 = icmp eq i8* %_new_gep_47, null
  store i1 %_trans_icmp_eq_52, i1* %ZF, align 1, !mcsema_real_eip !18
  %34 = xor i64 %_trans_p2i_49, -9223372036854775808, !mcsema_real_eip !18
  %35 = and i64 %_trans_xor_50, %34, !mcsema_real_eip !18
  %36 = icmp slt i64 %35, 0
  store i1 %36, i1* %OF, align 1, !mcsema_real_eip !18
  %_trans_trunc_59 = trunc i64 %_trans_p2i_48 to i8
  %37 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_59), !mcsema_real_eip !18
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  store i1 %39, i1* %PF, align 1, !mcsema_real_eip !18
  %_trans_icmp_ne_61 = icmp ne i64 %_trans_p2i_48, %RSP_val.28
  store i1 %_trans_icmp_ne_61, i1* %CF, align 1, !mcsema_real_eip !18
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_, align 8
  store i64 %30, i64* %XSP, align 8, !mcsema_real_eip !18
  %_offset_above_rbp_118 = sub i64 %_trans_p2i_48, %_local_end_to_int_
  %_pot_address_in_parent_stack_119 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_118
  %_cond1_120 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_121 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_122 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_123 = or i1 %_cond2_1_121, %_cond2_2_122
  %_cond4_124 = icmp ule i8* %_pot_address_in_parent_stack_119, %_parent_stack_end_ptr_
  %_cond1_n_cond2_125 = and i1 %_cond1_120, %_cond2_123
  %_cond1_n_cond2_cond3_126 = and i1 %_cond1_n_cond2_125, %_cond4_124
  %.v4 = select i1 %_cond1_n_cond2_cond3_126, i8* %_pot_address_in_parent_stack_119, i8* %_new_gep_47
  %40 = bitcast i8* %.v4 to i64*
  %_new_load_129 = load i64, i64* %40, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_129 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_129, i64* %XBP, align 8, !mcsema_real_eip !19
  %_new_gep_64 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 40
  %41 = add i64 %RSP_val.28, 40, !mcsema_real_eip !19
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_, align 8
  store i64 %41, i64* %XSP, align 8, !mcsema_real_eip !19
  %_new_gep_66 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 48
  %42 = add i64 %RSP_val.28, 48, !mcsema_real_eip !20
  %_ptr_to_int_130 = ptrtoint i8* %_new_gep_64 to i64
  %_offset_above_rbp_133 = sub i64 %_ptr_to_int_130, %_local_end_to_int_
  %_pot_address_in_parent_stack_134 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_133
  %_cond1_135 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_136 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_137 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_138 = or i1 %_cond2_1_136, %_cond2_2_137
  %_cond4_139 = icmp ule i8* %_pot_address_in_parent_stack_134, %_parent_stack_end_ptr_
  %_cond1_n_cond2_140 = and i1 %_cond1_135, %_cond2_138
  %_cond1_n_cond2_cond3_141 = and i1 %_cond1_n_cond2_140, %_cond4_139
  %_address_in_parent_stack_bt_143._allin_new_bt_67.v = select i1 %_cond1_n_cond2_cond3_141, i8* %_pot_address_in_parent_stack_134, i8* %_new_gep_64
  %_address_in_parent_stack_bt_143._allin_new_bt_67 = bitcast i8* %_address_in_parent_stack_bt_143._allin_new_bt_67.v to i64*
  %_new_load_144 = load i64, i64* %_address_in_parent_stack_bt_143._allin_new_bt_67, align 8
  store i64 %_new_load_144, i64* %XIP, align 8, !mcsema_real_eip !20
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_, align 8
  store i64 %42, i64* %XSP, align 8, !mcsema_real_eip !20
  ret void, !mcsema_real_eip !20
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
!6 = !{i64 10}
!7 = !{i64 18}
!8 = !{i64 20}
!9 = !{i64 25}
!10 = !{i64 28}
!11 = !{i64 32}
!12 = !{i64 38}
!13 = !{i64 41}
!14 = !{i64 46}
!15 = !{i64 53}
!16 = !{i64 56}
!17 = !{i64 68}
!18 = !{i64 71}
!19 = !{i64 75}
!20 = !{i64 76}
