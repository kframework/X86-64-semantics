; ModuleID = 'Output/test_13.clang.trans.opt.bc'
source_filename = "Output/test_13.clang.bc"
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
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
module asm "  .cfi_endproc;"
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl doWork;"
module asm "  .type doWork,@function"
module asm "doWork:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doWork,0b-doWork;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [48 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
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
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
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
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !4
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !4
  %5 = and i64 %_trans_xor_, %2, !mcsema_real_eip !4
  %6 = icmp slt i64 %5, 0
  store i1 %6, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %7 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.8 = load i32, i32* %ESI.7, align 4
  %8 = bitcast i8* %_new_gep_17 to i32*
  store i32 %ESI_val.8, i32* %8, align 4, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %9 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %9, align 8, !mcsema_real_eip !7
  %10 = sext i32 %ESI_val.8 to i64, !mcsema_real_eip !8
  %11 = shl nsw i64 %10, 3, !mcsema_real_eip !9
  %12 = icmp slt i32 %ESI_val.8, 0
  store i1 %12, i1* %CF, align 1, !mcsema_real_eip !9
  %13 = icmp eq i32 %ESI_val.8, 0
  store i1 %13, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !9
  %14 = trunc i64 %11 to i8, !mcsema_real_eip !9
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !9
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  store i1 %17, i1* %PF, align 1, !mcsema_real_eip !9
  store i64 %11, i64* %XDI, align 8, !mcsema_real_eip !9
  %_new_gep_26 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %18 = add i64 %RSP_val.1, -48
  %_allin_new_bt_27 = bitcast [48 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %18, i64* %XSP, align 8, !mcsema_real_eip !10
  %19 = call x86_64_sysvcc i64 @_malloc(i64 %11)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %19, i64* %XAX, align 8, !mcsema_real_eip !10
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_288 = load i8*, i8** %7, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_288, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 %19, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !11
  %EAX.18 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  br label %block_0x27, !mcsema_real_eip !13

block_0x27:                                       ; preds = %block_0x67, %entry
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319 = load i8*, i8** %7, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319, i64 -16
  %20 = bitcast i8* %_new_gep_32 to i32*
  %21 = load i32, i32* %20, align 4, !mcsema_real_eip !13
  %22 = zext i32 %21 to i64, !mcsema_real_eip !13
  store i64 %22, i64* %XAX, align 8, !mcsema_real_eip !13
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319, i64 -12
  %23 = bitcast i8* %_new_gep_35 to i32*
  %24 = load i32, i32* %23, align 4, !mcsema_real_eip !12
  %25 = sub i32 %21, %24, !mcsema_real_eip !12
  %26 = xor i32 %25, %21, !mcsema_real_eip !12
  %27 = xor i32 %26, %24, !mcsema_real_eip !12
  %28 = and i32 %27, 16, !mcsema_real_eip !12
  %29 = icmp ne i32 %28, 0, !mcsema_real_eip !12
  store i1 %29, i1* %AF, align 1, !mcsema_real_eip !12
  %30 = trunc i32 %25 to i8, !mcsema_real_eip !12
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !12
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  store i1 %33, i1* %PF, align 1, !mcsema_real_eip !12
  %34 = icmp eq i32 %25, 0, !mcsema_real_eip !12
  store i1 %34, i1* %ZF, align 1, !mcsema_real_eip !12
  %35 = icmp slt i32 %25, 0
  store i1 %35, i1* %SF, align 1, !mcsema_real_eip !12
  %36 = icmp ult i32 %21, %24, !mcsema_real_eip !12
  store i1 %36, i1* %CF, align 1, !mcsema_real_eip !12
  %37 = xor i32 %24, %21, !mcsema_real_eip !12
  %38 = and i32 %26, %37, !mcsema_real_eip !12
  %39 = icmp slt i32 %38, 0
  store i1 %39, i1* %OF, align 1, !mcsema_real_eip !12
  %tmp = xor i1 %35, %39
  br i1 %tmp, label %block_0x33, label %block_0x75, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x27
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319, i64 -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %40 = load i64, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !15
  store i64 %40, i64* %XAX, align 8, !mcsema_real_eip !15
  %41 = load i32, i32* %20, align 4, !mcsema_real_eip !16
  %42 = sext i32 %41 to i64, !mcsema_real_eip !16
  store i64 %42, i64* %XCX, align 8, !mcsema_real_eip !16
  %43 = shl nsw i64 %42, 3
  %44 = add i64 %43, %40, !mcsema_real_eip !17
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !17
  %46 = load i64, i64* %45, align 8, !mcsema_real_eip !17
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !17
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319, i64 -32
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %46, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !18
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4610 = load i8*, i8** %7, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4610, i64 -32
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %47 = load i64, i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !19
  store i64 %47, i64* %XDI, align 8, !mcsema_real_eip !19
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.32 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 -8
  %48 = add i64 %RSP_val.32, -8
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !20
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %48, i64* %XSP, align 8, !mcsema_real_eip !20
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9211 = load i8*, i8** %7, align 8
  call x86_64_sysvcc void @checkFn.3(%RegState* nonnull %0, i8* %_new_gep_50, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9211)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_95 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i64 8
  store i8* %_gep_fix_95, i8** %_RSP_ptr_, align 8
  %EAX_val.34 = load i32, i32* %EAX.18, align 4, !mcsema_real_eip !21
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !21
  %49 = trunc i32 %EAX_val.34 to i8, !mcsema_real_eip !21
  %50 = call i8 @llvm.ctpop.i8(i8 %49), !mcsema_real_eip !21
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  store i1 %52, i1* %PF, align 1, !mcsema_real_eip !21
  %53 = icmp eq i32 %EAX_val.34, 0, !mcsema_real_eip !21
  store i1 %53, i1* %ZF, align 1, !mcsema_real_eip !21
  %54 = icmp slt i32 %EAX_val.34, 0
  store i1 %54, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !21
  br i1 %53, label %block_0x55, label %block_0x67, !mcsema_real_eip !22

block_0x75:                                       ; preds = %block_0x27
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319, i64 -24
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %55 = load i64, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !23
  store i64 %55, i64* %XAX, align 8, !mcsema_real_eip !23
  %56 = add i64 %55, 1, !mcsema_real_eip !24
  %57 = inttoptr i64 %56 to i8*, !mcsema_real_eip !24
  store i8 2, i8* %57, align 1, !mcsema_real_eip !24
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 32
  %58 = add i64 %RSP_val.22, 32, !mcsema_real_eip !25
  %_trans_p2i_57 = ptrtoint i8* %_new_gep_56 to i64
  %_trans_p2i_58 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 to i64
  %_trans_xor_59 = xor i64 %_trans_p2i_57, %_trans_p2i_58
  %59 = and i64 %_trans_xor_59, 16, !mcsema_real_eip !25
  %60 = icmp ne i64 %59, 0, !mcsema_real_eip !25
  store i1 %60, i1* %AF, align 1, !mcsema_real_eip !25
  %61 = icmp slt i64 %58, 0
  store i1 %61, i1* %SF, align 1, !mcsema_real_eip !25
  %_trans_icmp_eq_61 = icmp eq i8* %_new_gep_56, null
  store i1 %_trans_icmp_eq_61, i1* %ZF, align 1, !mcsema_real_eip !25
  %62 = xor i64 %_trans_p2i_58, -9223372036854775808, !mcsema_real_eip !25
  %63 = and i64 %_trans_xor_59, %62, !mcsema_real_eip !25
  %64 = icmp slt i64 %63, 0
  store i1 %64, i1* %OF, align 1, !mcsema_real_eip !25
  %_trans_trunc_68 = trunc i64 %_trans_p2i_57 to i8
  %65 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_68), !mcsema_real_eip !25
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  store i1 %67, i1* %PF, align 1, !mcsema_real_eip !25
  %_trans_icmp_ne_70 = icmp ne i64 %_trans_p2i_57, %RSP_val.22
  store i1 %_trans_icmp_ne_70, i1* %CF, align 1, !mcsema_real_eip !25
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !25
  %_allin_new_bt_72 = bitcast i8* %_new_gep_56 to i64*
  %68 = load i64, i64* %_allin_new_bt_72, align 8, !mcsema_real_eip !26
  store volatile i64 %68, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %68, i64* %XBP, align 8, !mcsema_real_eip !26
  %_new_gep_73 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 40
  %69 = add i64 %RSP_val.22, 40, !mcsema_real_eip !26
  store volatile i8* %_new_gep_73, i8** %_RSP_ptr_, align 8
  store i64 %69, i64* %XSP, align 8, !mcsema_real_eip !26
  %_new_gep_75 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 48
  %70 = add i64 %RSP_val.22, 48, !mcsema_real_eip !27
  %_allin_new_bt_76 = bitcast i8* %_new_gep_73 to i64*
  %71 = load i64, i64* %_allin_new_bt_76, align 8, !mcsema_real_eip !27
  store i64 %71, i64* %XIP, align 8, !mcsema_real_eip !27
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_, align 8
  store i64 %70, i64* %XSP, align 8, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x55:                                       ; preds = %block_0x33
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7713 = load i8*, i8** %7, align 8
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7713, i64 -32
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %72 = load i64, i64* %_allin_new_bt_79, align 8, !mcsema_real_eip !28
  store i64 %72, i64* %XDI, align 8, !mcsema_real_eip !28
  %73 = load i64, i64* %_allin_new_bt_79, align 8, !mcsema_real_eip !29
  store i64 %73, i64* %XSI, align 8, !mcsema_real_eip !29
  %RSP_val.37 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  %74 = add i64 %RSP_val.37, -8
  %_allin_new_bt_85 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_85, align 8, !mcsema_real_eip !30
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i8** %_RSP_ptr_, align 8
  store i64 %74, i64* %XSP, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9614 = load i8*, i8** %7, align 8
  call x86_64_sysvcc void @doStuff.2(%RegState* nonnull %0, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9614)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_98 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_99 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_98, i64 8
  store i8* %_gep_fix_99, i8** %_RSP_ptr_, align 8
  br label %block_0x67, !mcsema_real_eip !31

block_0x67:                                       ; preds = %block_0x33, %block_0x55
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8612 = load i8*, i8** %7, align 8
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8612, i64 -16
  %75 = bitcast i8* %_new_gep_87 to i32*
  %76 = load i32, i32* %75, align 4, !mcsema_real_eip !31
  %77 = add i32 %76, 1, !mcsema_real_eip !32
  %78 = xor i32 %77, %76, !mcsema_real_eip !32
  %79 = and i32 %78, 16, !mcsema_real_eip !32
  %80 = icmp ne i32 %79, 0, !mcsema_real_eip !32
  store i1 %80, i1* %AF, align 1, !mcsema_real_eip !32
  %81 = icmp slt i32 %77, 0
  store i1 %81, i1* %SF, align 1, !mcsema_real_eip !32
  %82 = icmp eq i32 %77, 0, !mcsema_real_eip !32
  store i1 %82, i1* %ZF, align 1, !mcsema_real_eip !32
  %83 = xor i32 %76, -2147483648, !mcsema_real_eip !32
  %84 = and i32 %78, %83, !mcsema_real_eip !32
  %85 = icmp slt i32 %84, 0
  store i1 %85, i1* %OF, align 1, !mcsema_real_eip !32
  %86 = trunc i32 %77 to i8, !mcsema_real_eip !32
  %87 = call i8 @llvm.ctpop.i8(i8 %86), !mcsema_real_eip !32
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  store i1 %89, i1* %PF, align 1, !mcsema_real_eip !32
  %90 = icmp eq i32 %76, -1
  store i1 %90, i1* %CF, align 1, !mcsema_real_eip !32
  %91 = zext i32 %77 to i64, !mcsema_real_eip !32
  store i64 %91, i64* %XAX, align 8, !mcsema_real_eip !32
  store i32 %77, i32* %75, align 4, !mcsema_real_eip !33
  br label %block_0x27, !mcsema_real_eip !34
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [48 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
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
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
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
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %2 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %3 = icmp ne i64 %2, 0, !mcsema_real_eip !4
  store i1 %3, i1* %AF, align 1, !mcsema_real_eip !4
  %4 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %5 = icmp slt i64 %4, 0
  store i1 %5, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.8 = load i32, i32* %ESI.7, align 4, !mcsema_real_eip !6
  %6 = bitcast i8* %_new_gep_17 to i32*
  store i32 %ESI_val.8, i32* %6, align 4, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %7 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %7, align 8, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %8 = sext i32 %ESI_val.8 to i64, !mcsema_real_eip !8
  %9 = shl nsw i64 %8, 3, !mcsema_real_eip !9
  %10 = icmp slt i32 %ESI_val.8, 0
  store i1 %10, i1* %CF, align 1, !mcsema_real_eip !9
  %11 = icmp eq i32 %ESI_val.8, 0
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %10, i1* %SF, align 1, !mcsema_real_eip !9
  %12 = trunc i64 %9 to i8, !mcsema_real_eip !9
  %13 = call i8 @llvm.ctpop.i8(i8 %12), !mcsema_real_eip !9
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  store i1 %15, i1* %PF, align 1, !mcsema_real_eip !9
  store i64 %9, i64* %XDI, align 8, !mcsema_real_eip !9
  %_new_gep_26 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %16 = add i64 %RSP_val.1, -48
  %_allin_new_bt_27 = bitcast [48 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %16, i64* %XSP, align 8, !mcsema_real_eip !10
  %17 = call x86_64_sysvcc i64 @_malloc(i64 %9)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !10
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 %17, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !11
  %EAX.18 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  br label %block_0x27, !mcsema_real_eip !13

block_0x27:                                       ; preds = %block_0x67, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -16
  %18 = ptrtoint i8* %_new_gep_32 to i64
  %_offset_above_rbp_103 = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_104 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_103
  %_cond1_105 = icmp ugt i8* %_new_gep_32, %_local_stack_end_ptr_
  %_cond2_1_106 = icmp ugt i8* %_new_gep_32, %_parent_stack_end_ptr_
  %_cond2_2_107 = icmp ult i8* %_new_gep_32, %_parent_stack_start_ptr_
  %_cond2_108 = or i1 %_cond2_1_106, %_cond2_2_107
  %_cond4_109 = icmp ule i8* %_pot_address_in_parent_stack_104, %_parent_stack_end_ptr_
  %_cond1_n_cond2_110 = and i1 %_cond1_105, %_cond2_108
  %_cond1_n_cond2_cond3_111 = and i1 %_cond1_n_cond2_110, %_cond4_109
  %_address_in_parent_stack_bt_113..v = select i1 %_cond1_n_cond2_cond3_111, i8* %_pot_address_in_parent_stack_104, i8* %_new_gep_32
  %_address_in_parent_stack_bt_113. = bitcast i8* %_address_in_parent_stack_bt_113..v to i32*
  %_new_load_114 = load i32, i32* %_address_in_parent_stack_bt_113., align 4
  %19 = zext i32 %_new_load_114 to i64, !mcsema_real_eip !13
  store i64 %19, i64* %XAX, align 8, !mcsema_real_eip !13
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -12
  %20 = ptrtoint i8* %_new_gep_35 to i64
  %_offset_above_rbp_118 = sub i64 %20, %_local_end_to_int_
  %_pot_address_in_parent_stack_119 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_118
  %_cond1_120 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_121 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_122 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_123 = or i1 %_cond2_1_121, %_cond2_2_122
  %_cond4_124 = icmp ule i8* %_pot_address_in_parent_stack_119, %_parent_stack_end_ptr_
  %_cond1_n_cond2_125 = and i1 %_cond1_120, %_cond2_123
  %_cond1_n_cond2_cond3_126 = and i1 %_cond1_n_cond2_125, %_cond4_124
  %.v2 = select i1 %_cond1_n_cond2_cond3_126, i8* %_pot_address_in_parent_stack_119, i8* %_new_gep_35
  %21 = bitcast i8* %.v2 to i32*
  %_new_load_129 = load i32, i32* %21, align 4
  %22 = sub i32 %_new_load_114, %_new_load_129, !mcsema_real_eip !12
  %23 = xor i32 %22, %_new_load_114, !mcsema_real_eip !12
  %24 = xor i32 %23, %_new_load_129, !mcsema_real_eip !12
  %25 = and i32 %24, 16, !mcsema_real_eip !12
  %26 = icmp ne i32 %25, 0, !mcsema_real_eip !12
  store i1 %26, i1* %AF, align 1, !mcsema_real_eip !12
  %27 = trunc i32 %22 to i8, !mcsema_real_eip !12
  %28 = call i8 @llvm.ctpop.i8(i8 %27), !mcsema_real_eip !12
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  store i1 %30, i1* %PF, align 1, !mcsema_real_eip !12
  %31 = icmp eq i32 %22, 0, !mcsema_real_eip !12
  store i1 %31, i1* %ZF, align 1, !mcsema_real_eip !12
  %32 = icmp slt i32 %22, 0
  store i1 %32, i1* %SF, align 1, !mcsema_real_eip !12
  %33 = icmp ult i32 %_new_load_114, %_new_load_129, !mcsema_real_eip !12
  store i1 %33, i1* %CF, align 1, !mcsema_real_eip !12
  %34 = xor i32 %_new_load_129, %_new_load_114, !mcsema_real_eip !12
  %35 = and i32 %23, %34, !mcsema_real_eip !12
  %36 = icmp slt i32 %35, 0
  store i1 %36, i1* %OF, align 1, !mcsema_real_eip !12
  %tmp = xor i1 %32, %36
  br i1 %tmp, label %block_0x33, label %block_0x75, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x27
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -8
  %_ptr_to_int_130 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_133 = sub i64 %_ptr_to_int_130, %_local_end_to_int_
  %_pot_address_in_parent_stack_134 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_133
  %_cond1_135 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_136 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_137 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_138 = or i1 %_cond2_1_136, %_cond2_2_137
  %_cond4_139 = icmp ule i8* %_pot_address_in_parent_stack_134, %_parent_stack_end_ptr_
  %_cond1_n_cond2_140 = and i1 %_cond1_135, %_cond2_138
  %_cond1_n_cond2_cond3_141 = and i1 %_cond1_n_cond2_140, %_cond4_139
  %_address_in_parent_stack_bt_143._allin_new_bt_39.v = select i1 %_cond1_n_cond2_cond3_141, i8* %_pot_address_in_parent_stack_134, i8* %_new_gep_38
  %_address_in_parent_stack_bt_143._allin_new_bt_39 = bitcast i8* %_address_in_parent_stack_bt_143._allin_new_bt_39.v to i64*
  %_new_load_144 = load i64, i64* %_address_in_parent_stack_bt_143._allin_new_bt_39, align 8
  store i64 %_new_load_144, i64* %XAX, align 8, !mcsema_real_eip !15
  %_new_load_159 = load i32, i32* %_address_in_parent_stack_bt_113., align 4
  %37 = sext i32 %_new_load_159 to i64, !mcsema_real_eip !16
  store i64 %37, i64* %XCX, align 8, !mcsema_real_eip !16
  %38 = shl nsw i64 %37, 3
  %39 = add i64 %38, %_new_load_144, !mcsema_real_eip !17
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !17
  %_ptr_bt_162 = inttoptr i64 %39 to i8*
  %_offset_above_rbp_163 = sub i64 %39, %_local_end_to_int_
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_ptr_bt_162, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_ptr_bt_162, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_ptr_bt_162, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond4_169, %_cond1_n_cond2_170
  %_address_in_parent_stack_bt_173 = bitcast i8* %_pot_address_in_parent_stack_164 to i64*
  %_address_in_parent_stack_bt_173. = select i1 %_cond1_n_cond2_cond3_171, i64* %_address_in_parent_stack_bt_173, i64* %40
  %_new_load_174 = load i64, i64* %_address_in_parent_stack_bt_173., align 8
  store i64 %_new_load_174, i64* %XAX, align 8, !mcsema_real_eip !17
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -32
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %_new_load_174, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !18
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -32
  %_ptr_to_int_175 = ptrtoint i8* %_new_gep_47 to i64
  %_offset_above_rbp_178 = sub i64 %_ptr_to_int_175, %_local_end_to_int_
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  %.v3 = select i1 %_cond1_n_cond2_cond3_186, i8* %_pot_address_in_parent_stack_179, i8* %_new_gep_47
  %41 = bitcast i8* %.v3 to i64*
  %_new_load_189 = load i64, i64* %41, align 8
  store i64 %_new_load_189, i64* %XDI, align 8, !mcsema_real_eip !19
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.32 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 -8
  %42 = add i64 %RSP_val.32, -8
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !20
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %42, i64* %XSP, align 8, !mcsema_real_eip !20
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @checkFn.3(%RegState* nonnull %0, i8* %_new_gep_50, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_95 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i64 8
  store i8* %_gep_fix_95, i8** %_RSP_ptr_, align 8
  %EAX_val.34 = load i32, i32* %EAX.18, align 4, !mcsema_real_eip !21
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !21
  %43 = trunc i32 %EAX_val.34 to i8, !mcsema_real_eip !21
  %44 = call i8 @llvm.ctpop.i8(i8 %43), !mcsema_real_eip !21
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  store i1 %46, i1* %PF, align 1, !mcsema_real_eip !21
  %47 = icmp eq i32 %EAX_val.34, 0, !mcsema_real_eip !21
  store i1 %47, i1* %ZF, align 1, !mcsema_real_eip !21
  %48 = icmp slt i32 %EAX_val.34, 0
  store i1 %48, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !21
  br i1 %47, label %block_0x55, label %block_0x67, !mcsema_real_eip !22

block_0x75:                                       ; preds = %block_0x27
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -24
  %_ptr_to_int_190 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_193 = sub i64 %_ptr_to_int_190, %_local_end_to_int_
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  %_address_in_parent_stack_bt_203._allin_new_bt_54.v = select i1 %_cond1_n_cond2_cond3_201, i8* %_pot_address_in_parent_stack_194, i8* %_new_gep_53
  %_address_in_parent_stack_bt_203._allin_new_bt_54 = bitcast i8* %_address_in_parent_stack_bt_203._allin_new_bt_54.v to i64*
  %_new_load_204 = load i64, i64* %_address_in_parent_stack_bt_203._allin_new_bt_54, align 8
  store i64 %_new_load_204, i64* %XAX, align 8, !mcsema_real_eip !23
  %49 = add i64 %_new_load_204, 1, !mcsema_real_eip !24
  %50 = inttoptr i64 %49 to i8*, !mcsema_real_eip !24
  store i8 2, i8* %50, align 1, !mcsema_real_eip !24
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 32
  %51 = add i64 %RSP_val.22, 32, !mcsema_real_eip !25
  %_trans_p2i_57 = ptrtoint i8* %_new_gep_56 to i64
  %_trans_p2i_58 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 to i64
  %_trans_xor_59 = xor i64 %_trans_p2i_57, %_trans_p2i_58
  %52 = and i64 %_trans_xor_59, 16, !mcsema_real_eip !25
  %53 = icmp ne i64 %52, 0, !mcsema_real_eip !25
  store i1 %53, i1* %AF, align 1, !mcsema_real_eip !25
  %54 = icmp slt i64 %51, 0
  store i1 %54, i1* %SF, align 1, !mcsema_real_eip !25
  %_trans_icmp_eq_61 = icmp eq i8* %_new_gep_56, null
  store i1 %_trans_icmp_eq_61, i1* %ZF, align 1, !mcsema_real_eip !25
  %55 = xor i64 %_trans_p2i_58, -9223372036854775808, !mcsema_real_eip !25
  %56 = and i64 %_trans_xor_59, %55, !mcsema_real_eip !25
  %57 = icmp slt i64 %56, 0
  store i1 %57, i1* %OF, align 1, !mcsema_real_eip !25
  %_trans_trunc_68 = trunc i64 %_trans_p2i_57 to i8
  %58 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_68), !mcsema_real_eip !25
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  store i1 %60, i1* %PF, align 1, !mcsema_real_eip !25
  %_trans_icmp_ne_70 = icmp ne i64 %_trans_p2i_57, %RSP_val.22
  store i1 %_trans_icmp_ne_70, i1* %CF, align 1, !mcsema_real_eip !25
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %51, i64* %XSP, align 8, !mcsema_real_eip !25
  %_offset_above_rbp_208 = sub i64 %_trans_p2i_57, %_local_end_to_int_
  %_pot_address_in_parent_stack_209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_208
  %_cond1_210 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_211 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_212 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_213 = or i1 %_cond2_1_211, %_cond2_2_212
  %_cond4_214 = icmp ule i8* %_pot_address_in_parent_stack_209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_215 = and i1 %_cond1_210, %_cond2_213
  %_cond1_n_cond2_cond3_216 = and i1 %_cond1_n_cond2_215, %_cond4_214
  %.v5 = select i1 %_cond1_n_cond2_cond3_216, i8* %_pot_address_in_parent_stack_209, i8* %_new_gep_56
  %61 = bitcast i8* %.v5 to i64*
  %_new_load_219 = load i64, i64* %61, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_219 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_219, i64* %XBP, align 8, !mcsema_real_eip !26
  %_new_gep_73 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 40
  %62 = add i64 %RSP_val.22, 40, !mcsema_real_eip !26
  store volatile i8* %_new_gep_73, i8** %_RSP_ptr_, align 8
  store i64 %62, i64* %XSP, align 8, !mcsema_real_eip !26
  %_new_gep_75 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 48
  %63 = add i64 %RSP_val.22, 48, !mcsema_real_eip !27
  %_ptr_to_int_220 = ptrtoint i8* %_new_gep_73 to i64
  %_offset_above_rbp_223 = sub i64 %_ptr_to_int_220, %_local_end_to_int_
  %_pot_address_in_parent_stack_224 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_223
  %_cond1_225 = icmp ugt i8* %_new_gep_73, %_local_stack_end_ptr_
  %_cond2_1_226 = icmp ugt i8* %_new_gep_73, %_parent_stack_end_ptr_
  %_cond2_2_227 = icmp ult i8* %_new_gep_73, %_parent_stack_start_ptr_
  %_cond2_228 = or i1 %_cond2_1_226, %_cond2_2_227
  %_cond4_229 = icmp ule i8* %_pot_address_in_parent_stack_224, %_parent_stack_end_ptr_
  %_cond1_n_cond2_230 = and i1 %_cond1_225, %_cond2_228
  %_cond1_n_cond2_cond3_231 = and i1 %_cond1_n_cond2_230, %_cond4_229
  %_address_in_parent_stack_bt_233._allin_new_bt_76.v = select i1 %_cond1_n_cond2_cond3_231, i8* %_pot_address_in_parent_stack_224, i8* %_new_gep_73
  %_address_in_parent_stack_bt_233._allin_new_bt_76 = bitcast i8* %_address_in_parent_stack_bt_233._allin_new_bt_76.v to i64*
  %_new_load_234 = load i64, i64* %_address_in_parent_stack_bt_233._allin_new_bt_76, align 8
  store i64 %_new_load_234, i64* %XIP, align 8, !mcsema_real_eip !27
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_, align 8
  store i64 %63, i64* %XSP, align 8, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x55:                                       ; preds = %block_0x33
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77, i64 -32
  %_ptr_to_int_235 = ptrtoint i8* %_new_gep_78 to i64
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %_local_end_to_int_
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  %_address_in_parent_stack_bt_248._allin_new_bt_79.v = select i1 %_cond1_n_cond2_cond3_246, i8* %_pot_address_in_parent_stack_239, i8* %_new_gep_78
  %_address_in_parent_stack_bt_248._allin_new_bt_79 = bitcast i8* %_address_in_parent_stack_bt_248._allin_new_bt_79.v to i64*
  %_new_load_249 = load i64, i64* %_address_in_parent_stack_bt_248._allin_new_bt_79, align 8
  store i64 %_new_load_249, i64* %XDI, align 8, !mcsema_real_eip !28
  %_new_load_264 = load i64, i64* %_address_in_parent_stack_bt_248._allin_new_bt_79, align 8
  store i64 %_new_load_264, i64* %XSI, align 8, !mcsema_real_eip !29
  %RSP_val.37 = load i64, i64* %XSP, align 8, !mcsema_real_eip !30
  %64 = add i64 %RSP_val.37, -8
  %_allin_new_bt_85 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_85, align 8, !mcsema_real_eip !30
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i8** %_RSP_ptr_, align 8
  store i64 %64, i64* %XSP, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @doStuff.2(%RegState* nonnull %0, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_96)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_98 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_99 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_98, i64 8
  store i8* %_gep_fix_99, i8** %_RSP_ptr_, align 8
  br label %block_0x67, !mcsema_real_eip !31

block_0x67:                                       ; preds = %block_0x33, %block_0x55
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86, i64 -16
  %65 = ptrtoint i8* %_new_gep_87 to i64
  %66 = bitcast i8* %_new_gep_87 to i32*
  %_offset_above_rbp_268 = sub i64 %65, %_local_end_to_int_
  %_pot_address_in_parent_stack_269 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_268
  %_cond1_270 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_271 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_272 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_273 = or i1 %_cond2_1_271, %_cond2_2_272
  %_cond4_274 = icmp ule i8* %_pot_address_in_parent_stack_269, %_parent_stack_end_ptr_
  %_cond1_n_cond2_275 = and i1 %_cond1_270, %_cond2_273
  %_cond1_n_cond2_cond3_276 = and i1 %_cond1_n_cond2_275, %_cond4_274
  %_address_in_parent_stack_bt_278 = bitcast i8* %_pot_address_in_parent_stack_269 to i32*
  %_address_in_parent_stack_bt_278. = select i1 %_cond1_n_cond2_cond3_276, i32* %_address_in_parent_stack_bt_278, i32* %66
  %_new_load_279 = load i32, i32* %_address_in_parent_stack_bt_278., align 4
  %67 = add i32 %_new_load_279, 1, !mcsema_real_eip !32
  %68 = xor i32 %67, %_new_load_279, !mcsema_real_eip !32
  %69 = and i32 %68, 16, !mcsema_real_eip !32
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !32
  store i1 %70, i1* %AF, align 1, !mcsema_real_eip !32
  %71 = icmp slt i32 %67, 0
  store i1 %71, i1* %SF, align 1, !mcsema_real_eip !32
  %72 = icmp eq i32 %67, 0, !mcsema_real_eip !32
  store i1 %72, i1* %ZF, align 1, !mcsema_real_eip !32
  %73 = xor i32 %_new_load_279, -2147483648, !mcsema_real_eip !32
  %74 = and i32 %68, %73, !mcsema_real_eip !32
  %75 = icmp slt i32 %74, 0
  store i1 %75, i1* %OF, align 1, !mcsema_real_eip !32
  %76 = trunc i32 %67 to i8, !mcsema_real_eip !32
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !32
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  store i1 %79, i1* %PF, align 1, !mcsema_real_eip !32
  %80 = icmp eq i32 %_new_load_279, -1
  store i1 %80, i1* %CF, align 1, !mcsema_real_eip !32
  %81 = zext i32 %67 to i64, !mcsema_real_eip !32
  store i64 %81, i64* %XAX, align 8, !mcsema_real_eip !32
  store i32 %67, i32* %66, align 4, !mcsema_real_eip !33
  br label %block_0x27, !mcsema_real_eip !34
}

; Function Attrs: noinline nounwind
define internal x86_64_sysvcc void @doStuff.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) unnamed_addr #3 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_4 = alloca [41 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_4, i64 0, i64 41
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !35
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !35
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !35
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !35
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !35
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !35
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !35
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !35
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !35
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !35
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !35
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !35
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !35
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !35
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !35
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !35
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !35
  %RSP_val.45 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %_new_gep_ = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_4, i64 0, i64 33
  %1 = add i64 %RSP_val.45, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !36
  %_new_gep_6 = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_4, i64 0, i64 17
  %2 = bitcast i64* %XSI to <2 x i64>*
  %3 = load <2 x i64>, <2 x i64>* %2, align 8
  %4 = bitcast i8* %_new_gep_6 to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %4, align 8
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_new_gep_12 = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_4, i64 0, i64 9
  %_new_gep_18 = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_4, i64 0, i64 1
  %5 = bitcast i8* %_new_gep_18 to <2 x i64>*
  store <2 x i64> %3, <2 x i64>* %5, align 8
  %6 = bitcast i8* %_new_gep_12 to i64*
  %_new_load_94 = load i64, i64* %6, align 8
  store i64 %_new_load_94, i64* %XSI, align 8, !mcsema_real_eip !37
  %7 = inttoptr i64 %_new_load_94 to i8*, !mcsema_real_eip !38
  %_offset_above_rbp_97 = sub i64 %_new_load_94, %_local_end_to_int_
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %7, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %7, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %7, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond4_103, %_cond1_n_cond2_104
  %_pot_address_in_parent_stack_98. = select i1 %_cond1_n_cond2_cond3_105, i8* %_pot_address_in_parent_stack_98, i8* %7
  %_new_load_107 = load i8, i8* %_pot_address_in_parent_stack_98., align 1
  %AL.59 = bitcast i64* %XAX to i8*, !mcsema_real_eip !38
  store i8 %_new_load_107, i8* %AL.59, align 1, !mcsema_real_eip !38
  %CL.89 = bitcast i64* %XCX to i8*
  br label %block_0x125, !mcsema_real_eip !39

block_0x125:                                      ; preds = %block_0x154, %entry
  %_load_rbp_ptr_59.sink = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59, %block_0x154 ], [ %_new_gep_, %entry ]
  %_new_load_264.sink = phi i8 [ %_new_load_264, %block_0x154 ], [ %_new_load_107, %entry ]
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_59.sink, i64 -33
  store i8 %_new_load_264.sink, i8* %_new_gep_63, align 1
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_27 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26, i64 -33
  %8 = ptrtoint i8* %_new_gep_27 to i64
  %_offset_above_rbp_110 = sub i64 %8, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  %_pot_address_in_parent_stack_111. = select i1 %_cond1_n_cond2_cond3_118, i8* %_pot_address_in_parent_stack_111, i8* %_new_gep_27
  %_new_load_120 = load i8, i8* %_pot_address_in_parent_stack_111., align 1
  %9 = sext i8 %_new_load_120 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %XAX, align 8, !mcsema_real_eip !39
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !40
  %11 = call i8 @llvm.ctpop.i8(i8 %_new_load_120), !mcsema_real_eip !40
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  store i1 %13, i1* %PF, align 1, !mcsema_real_eip !40
  %14 = icmp eq i8 %_new_load_120, 0
  store i1 %14, i1* %ZF, align 1, !mcsema_real_eip !40
  %15 = icmp slt i8 %_new_load_120, 0
  store i1 %15, i1* %SF, align 1, !mcsema_real_eip !40
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !40
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !40
  br i1 %14, label %block_0x17a, label %block_0x132, !mcsema_real_eip !41

block_0x132:                                      ; preds = %block_0x125
  %_new_load_133 = load i8, i8* %_pot_address_in_parent_stack_111., align 1
  %16 = sext i8 %_new_load_133 to i64
  %17 = and i64 %16, 4294967295
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !42
  %18 = sext i8 %_new_load_133 to i32
  %19 = add nsw i32 %18, -47
  %20 = xor i32 %19, %18, !mcsema_real_eip !43
  %21 = and i32 %20, 16, !mcsema_real_eip !43
  %22 = icmp ne i32 %21, 0, !mcsema_real_eip !43
  store i1 %22, i1* %AF, align 1, !mcsema_real_eip !43
  %23 = trunc i32 %19 to i8, !mcsema_real_eip !43
  %24 = call i8 @llvm.ctpop.i8(i8 %23), !mcsema_real_eip !43
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  store i1 %26, i1* %PF, align 1, !mcsema_real_eip !43
  %27 = icmp eq i32 %19, 0, !mcsema_real_eip !43
  store i1 %27, i1* %ZF, align 1, !mcsema_real_eip !43
  %28 = icmp slt i8 %_new_load_133, 47
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !43
  %29 = icmp ult i8 %_new_load_133, 47
  store i1 %29, i1* %CF, align 1, !mcsema_real_eip !43
  %30 = and i32 %20, %18, !mcsema_real_eip !43
  %31 = icmp slt i32 %30, 0
  store i1 %31, i1* %OF, align 1, !mcsema_real_eip !43
  br i1 %27, label %block_0x13f, label %block_0x14b, !mcsema_real_eip !44

block_0x17a:                                      ; preds = %block_0x125
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !35
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.66 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %_ptr_to_int_134 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32 to i64
  %_offset_above_rbp_137 = sub i64 %_ptr_to_int_134, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  %_address_in_parent_stack_bt_147._allin_new_bt_33.v = select i1 %_cond1_n_cond2_cond3_145, i8* %_pot_address_in_parent_stack_138, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32
  %_address_in_parent_stack_bt_147._allin_new_bt_33 = bitcast i8* %_address_in_parent_stack_bt_147._allin_new_bt_33.v to i64*
  %_new_load_148 = load i64, i64* %_address_in_parent_stack_bt_147._allin_new_bt_33, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_148 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_148, i64* %XBP, align 8, !mcsema_real_eip !45
  %_new_gep_34 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 8
  %32 = add i64 %RSP_val.66, 8, !mcsema_real_eip !45
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_, align 8
  store i64 %32, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_36 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 16
  %33 = add i64 %RSP_val.66, 16, !mcsema_real_eip !46
  %_ptr_to_int_149 = ptrtoint i8* %_new_gep_34 to i64
  %_offset_above_rbp_152 = sub i64 %_ptr_to_int_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  %.v7 = select i1 %_cond1_n_cond2_cond3_160, i8* %_pot_address_in_parent_stack_153, i8* %_new_gep_34
  %34 = bitcast i8* %.v7 to i64*
  %_new_load_163 = load i64, i64* %34, align 8
  store i64 %_new_load_163, i64* %XIP, align 8, !mcsema_real_eip !46
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_, align 8
  store i64 %33, i64* %XSP, align 8, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46

block_0x13f:                                      ; preds = %block_0x132
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26, i64 -32
  %_ptr_to_int_164 = ptrtoint i8* %_new_gep_39 to i64
  %_offset_above_rbp_167 = sub i64 %_ptr_to_int_164, %_local_end_to_int_
  %_pot_address_in_parent_stack_168 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_167
  %_cond1_169 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_170 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_171 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_172 = or i1 %_cond2_1_170, %_cond2_2_171
  %_cond4_173 = icmp ule i8* %_pot_address_in_parent_stack_168, %_parent_stack_end_ptr_
  %_cond1_n_cond2_174 = and i1 %_cond1_169, %_cond2_172
  %_cond1_n_cond2_cond3_175 = and i1 %_cond1_n_cond2_174, %_cond4_173
  %_address_in_parent_stack_bt_177._allin_new_bt_40.v = select i1 %_cond1_n_cond2_cond3_175, i8* %_pot_address_in_parent_stack_168, i8* %_new_gep_39
  %_address_in_parent_stack_bt_177._allin_new_bt_40 = bitcast i8* %_address_in_parent_stack_bt_177._allin_new_bt_40.v to i64*
  %_new_load_178 = load i64, i64* %_address_in_parent_stack_bt_177._allin_new_bt_40, align 8
  store i64 %_new_load_178, i64* %XAX, align 8, !mcsema_real_eip !47
  br label %block_0x154, !mcsema_real_eip !48

block_0x14b:                                      ; preds = %block_0x132
  %_new_load_191 = load i8, i8* %_pot_address_in_parent_stack_111., align 1
  store i8 %_new_load_191, i8* %AL.59, align 1, !mcsema_real_eip !49
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26, i64 -32
  %_ptr_to_int_192 = ptrtoint i8* %_new_gep_45 to i64
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  %.v6 = select i1 %_cond1_n_cond2_cond3_203, i8* %_pot_address_in_parent_stack_196, i8* %_new_gep_45
  %35 = bitcast i8* %.v6 to i64*
  %_new_load_206 = load i64, i64* %35, align 8
  store i64 %_new_load_206, i64* %XCX, align 8, !mcsema_real_eip !50
  br label %block_0x154, !mcsema_real_eip !47

block_0x154:                                      ; preds = %block_0x14b, %block_0x13f
  %_new_load_206.sink = phi i64 [ %_new_load_206, %block_0x14b ], [ %_new_load_178, %block_0x13f ]
  %_new_load_191.sink = phi i8 [ %_new_load_191, %block_0x14b ], [ 92, %block_0x13f ]
  %36 = inttoptr i64 %_new_load_206.sink to i8*
  store i8 %_new_load_191.sink, i8* %36, align 1
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47, i64 -24
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %_ptr_to_int_207 = ptrtoint i8* %_new_gep_48 to i64
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_207, %_local_end_to_int_
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_48, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_48, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_48, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  %_address_in_parent_stack_bt_220 = bitcast i8* %_pot_address_in_parent_stack_211 to i64*
  %_address_in_parent_stack_bt_220._allin_new_bt_49 = select i1 %_cond1_n_cond2_cond3_218, i64* %_address_in_parent_stack_bt_220, i64* %_allin_new_bt_49
  %_new_load_221 = load i64, i64* %_address_in_parent_stack_bt_220._allin_new_bt_49, align 8
  %37 = add i64 %_new_load_221, 1, !mcsema_real_eip !51
  %38 = xor i64 %37, %_new_load_221, !mcsema_real_eip !51
  %39 = and i64 %38, 16, !mcsema_real_eip !51
  %40 = icmp ne i64 %39, 0, !mcsema_real_eip !51
  store i1 %40, i1* %AF, align 1, !mcsema_real_eip !51
  %41 = icmp slt i64 %37, 0
  store i1 %41, i1* %SF, align 1, !mcsema_real_eip !51
  %42 = icmp eq i64 %37, 0, !mcsema_real_eip !51
  store i1 %42, i1* %ZF, align 1, !mcsema_real_eip !51
  %43 = xor i64 %_new_load_221, -9223372036854775808, !mcsema_real_eip !51
  %44 = and i64 %38, %43, !mcsema_real_eip !51
  %45 = icmp slt i64 %44, 0
  store i1 %45, i1* %OF, align 1, !mcsema_real_eip !51
  %46 = trunc i64 %37 to i8, !mcsema_real_eip !51
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !51
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  store i1 %49, i1* %PF, align 1, !mcsema_real_eip !51
  %50 = icmp eq i64 %_new_load_221, -1
  store i1 %50, i1* %CF, align 1, !mcsema_real_eip !51
  store i64 %37, i64* %XAX, align 8, !mcsema_real_eip !51
  store i64 %37, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !52
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -32
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %_ptr_to_int_222 = ptrtoint i8* %_new_gep_54 to i64
  %_offset_above_rbp_225 = sub i64 %_ptr_to_int_222, %_local_end_to_int_
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  %_address_in_parent_stack_bt_235 = bitcast i8* %_pot_address_in_parent_stack_226 to i64*
  %51 = select i1 %_cond1_n_cond2_cond3_233, i64* %_address_in_parent_stack_bt_235, i64* %_allin_new_bt_55
  %_new_load_236 = load i64, i64* %51, align 8
  %52 = add i64 %_new_load_236, 1, !mcsema_real_eip !53
  %53 = xor i64 %52, %_new_load_236, !mcsema_real_eip !53
  %54 = and i64 %53, 16, !mcsema_real_eip !53
  %55 = icmp ne i64 %54, 0, !mcsema_real_eip !53
  store i1 %55, i1* %AF, align 1, !mcsema_real_eip !53
  %56 = icmp slt i64 %52, 0
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !53
  %57 = icmp eq i64 %52, 0, !mcsema_real_eip !53
  store i1 %57, i1* %ZF, align 1, !mcsema_real_eip !53
  %58 = xor i64 %_new_load_236, -9223372036854775808, !mcsema_real_eip !53
  %59 = and i64 %53, %58, !mcsema_real_eip !53
  %60 = icmp slt i64 %59, 0
  store i1 %60, i1* %OF, align 1, !mcsema_real_eip !53
  %61 = trunc i64 %52 to i8, !mcsema_real_eip !53
  %62 = call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !53
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  store i1 %64, i1* %PF, align 1, !mcsema_real_eip !53
  %65 = icmp eq i64 %_new_load_236, -1
  store i1 %65, i1* %CF, align 1, !mcsema_real_eip !53
  store i64 %52, i64* %XAX, align 8, !mcsema_real_eip !53
  store i64 %52, i64* %_allin_new_bt_55, align 8, !mcsema_real_eip !54
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59, i64 -24
  %_ptr_to_int_237 = ptrtoint i8* %_new_gep_60 to i64
  %_offset_above_rbp_240 = sub i64 %_ptr_to_int_237, %_local_end_to_int_
  %_pot_address_in_parent_stack_241 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_240
  %_cond1_242 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_243 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_244 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_245 = or i1 %_cond2_1_243, %_cond2_2_244
  %_cond4_246 = icmp ule i8* %_pot_address_in_parent_stack_241, %_parent_stack_end_ptr_
  %_cond1_n_cond2_247 = and i1 %_cond1_242, %_cond2_245
  %_cond1_n_cond2_cond3_248 = and i1 %_cond1_n_cond2_247, %_cond4_246
  %_address_in_parent_stack_bt_250._allin_new_bt_61.v = select i1 %_cond1_n_cond2_cond3_248, i8* %_pot_address_in_parent_stack_241, i8* %_new_gep_60
  %_address_in_parent_stack_bt_250._allin_new_bt_61 = bitcast i8* %_address_in_parent_stack_bt_250._allin_new_bt_61.v to i64*
  %_new_load_251 = load i64, i64* %_address_in_parent_stack_bt_250._allin_new_bt_61, align 8
  store i64 %_new_load_251, i64* %XAX, align 8, !mcsema_real_eip !55
  %66 = inttoptr i64 %_new_load_251 to i8*, !mcsema_real_eip !56
  %_offset_above_rbp_254 = sub i64 %_new_load_251, %_local_end_to_int_
  %_pot_address_in_parent_stack_255 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_254
  %_cond1_256 = icmp ugt i8* %66, %_local_stack_end_ptr_
  %_cond2_1_257 = icmp ugt i8* %66, %_parent_stack_end_ptr_
  %_cond2_2_258 = icmp ult i8* %66, %_parent_stack_start_ptr_
  %_cond2_259 = or i1 %_cond2_1_257, %_cond2_2_258
  %_cond4_260 = icmp ule i8* %_pot_address_in_parent_stack_255, %_parent_stack_end_ptr_
  %_cond1_n_cond2_261 = and i1 %_cond1_256, %_cond2_259
  %_cond1_n_cond2_cond3_262 = and i1 %_cond4_260, %_cond1_n_cond2_261
  %67 = select i1 %_cond1_n_cond2_cond3_262, i8* %_pot_address_in_parent_stack_255, i8* %66
  %_new_load_264 = load i8, i8* %67, align 1
  store i8 %_new_load_264, i8* %CL.89, align 1, !mcsema_real_eip !56
  br label %block_0x125, !mcsema_real_eip !57
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @checkFn.3(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [48 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !58
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !58
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !58
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !58
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !58
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !58
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !58
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !58
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !58
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !58
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !58
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !58
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !58
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !58
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !58
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !58
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !58
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !58
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !58
  %RSP_val.94 = load i64, i64* %XSP, align 8, !mcsema_real_eip !58
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %1 = add i64 %RSP_val.94, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !59
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.94, -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !60
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !60
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !60
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !60
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !60
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !60
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !60
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 32 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !60
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !60
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !60
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.98 = load i64, i64* %XDI, align 8, !mcsema_real_eip !61
  store i64 %RDI_val.98, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !61
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  %11 = bitcast i8* %_new_gep_17 to i32*
  store i32 1, i32* %11, align 4, !mcsema_real_eip !62
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_new_gep_23 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.94, -48
  %_allin_new_bt_24 = bitcast [48 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !63
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !63
  %13 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.98)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XAX, align 8, !mcsema_real_eip !63
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %XCX, align 8, !mcsema_real_eip !64
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -16
  %16 = bitcast i8* %_new_gep_26 to i32*
  store i32 %14, i32* %16, align 4, !mcsema_real_eip !65
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -16
  %17 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_83 = sub i64 %17, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  %_address_in_parent_stack_bt_93..v = select i1 %_cond1_n_cond2_cond3_91, i8* %_pot_address_in_parent_stack_84, i8* %_new_gep_29
  %_address_in_parent_stack_bt_93. = bitcast i8* %_address_in_parent_stack_bt_93..v to i32*
  %_new_load_94 = load i32, i32* %_address_in_parent_stack_bt_93., align 4
  %18 = add i32 %_new_load_94, -1
  %19 = xor i32 %18, %_new_load_94, !mcsema_real_eip !66
  %20 = and i32 %19, 16, !mcsema_real_eip !66
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !66
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !66
  %22 = trunc i32 %18 to i8, !mcsema_real_eip !66
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !66
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !66
  %26 = icmp eq i32 %18, 0, !mcsema_real_eip !66
  store i1 %26, i1* %ZF, align 1, !mcsema_real_eip !66
  %27 = icmp slt i32 %18, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !66
  %28 = icmp eq i32 %_new_load_94, 0
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !66
  %29 = and i32 %19, %_new_load_94, !mcsema_real_eip !66
  %30 = icmp slt i32 %29, 0
  store i1 %30, i1* %OF, align 1, !mcsema_real_eip !66
  %31 = xor i1 %27, %30
  %32 = or i1 %26, %31, !mcsema_real_eip !67
  br i1 %32, label %block_0xf3, label %block_0xbb, !mcsema_real_eip !67

block_0xbb:                                       ; preds = %entry
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !58
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -8
  %_ptr_to_int_95 = ptrtoint i8* %_new_gep_32 to i64
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_95, %_local_end_to_int_
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i8* %_new_gep_32, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_32, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_32, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  %_address_in_parent_stack_bt_108._allin_new_bt_33.v = select i1 %_cond1_n_cond2_cond3_106, i8* %_pot_address_in_parent_stack_99, i8* %_new_gep_32
  %_address_in_parent_stack_bt_108._allin_new_bt_33 = bitcast i8* %_address_in_parent_stack_bt_108._allin_new_bt_33.v to i64*
  %_new_load_109 = load i64, i64* %_address_in_parent_stack_bt_108._allin_new_bt_33, align 8
  store i64 %_new_load_109, i64* %XAX, align 8, !mcsema_real_eip !68
  %33 = inttoptr i64 %_new_load_109 to i8*, !mcsema_real_eip !69
  %_offset_above_rbp_112 = sub i64 %_new_load_109, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %33, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %33, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %33, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond4_118, %_cond1_n_cond2_119
  %34 = select i1 %_cond1_n_cond2_cond3_120, i8* %_pot_address_in_parent_stack_113, i8* %33
  %_new_load_122 = load i8, i8* %34, align 1
  %CL.115 = bitcast i64* %XCX to i8*, !mcsema_real_eip !69
  store i8 %_new_load_122, i8* %CL.115, align 1, !mcsema_real_eip !69
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -17
  store i8 %_new_load_122, i8* %_new_gep_35, align 1, !mcsema_real_eip !70
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -8
  %_ptr_to_int_123 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_126 = sub i64 %_ptr_to_int_123, %_local_end_to_int_
  %_pot_address_in_parent_stack_127 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_126
  %_cond1_128 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_129 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_130 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_131 = or i1 %_cond2_1_129, %_cond2_2_130
  %_cond4_132 = icmp ule i8* %_pot_address_in_parent_stack_127, %_parent_stack_end_ptr_
  %_cond1_n_cond2_133 = and i1 %_cond1_128, %_cond2_131
  %_cond1_n_cond2_cond3_134 = and i1 %_cond1_n_cond2_133, %_cond4_132
  %_address_in_parent_stack_bt_136._allin_new_bt_39.v = select i1 %_cond1_n_cond2_cond3_134, i8* %_pot_address_in_parent_stack_127, i8* %_new_gep_38
  %_address_in_parent_stack_bt_136._allin_new_bt_39 = bitcast i8* %_address_in_parent_stack_bt_136._allin_new_bt_39.v to i64*
  %_new_load_137 = load i64, i64* %_address_in_parent_stack_bt_136._allin_new_bt_39, align 8
  store i64 %_new_load_137, i64* %XAX, align 8, !mcsema_real_eip !71
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -16
  %35 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_141 = sub i64 %35, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  %.v3 = select i1 %_cond1_n_cond2_cond3_149, i8* %_pot_address_in_parent_stack_142, i8* %_new_gep_41
  %36 = bitcast i8* %.v3 to i32*
  %_new_load_152 = load i32, i32* %36, align 4
  %37 = add i32 %_new_load_152, -1
  %38 = xor i32 %37, %_new_load_152, !mcsema_real_eip !72
  %39 = and i32 %38, 16, !mcsema_real_eip !72
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !72
  store i1 %40, i1* %AF, align 1, !mcsema_real_eip !72
  %41 = trunc i32 %37 to i8, !mcsema_real_eip !72
  %42 = call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !72
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !72
  %45 = icmp eq i32 %37, 0, !mcsema_real_eip !72
  store i1 %45, i1* %ZF, align 1, !mcsema_real_eip !72
  %46 = icmp slt i32 %37, 0
  store i1 %46, i1* %SF, align 1, !mcsema_real_eip !72
  %47 = icmp eq i32 %_new_load_152, 0
  store i1 %47, i1* %CF, align 1, !mcsema_real_eip !72
  %48 = and i32 %38, %_new_load_152, !mcsema_real_eip !72
  %49 = icmp slt i32 %48, 0
  store i1 %49, i1* %OF, align 1, !mcsema_real_eip !72
  %50 = zext i32 %37 to i64, !mcsema_real_eip !72
  store i64 %50, i64* %XDX, align 8, !mcsema_real_eip !72
  %51 = sext i32 %37 to i64, !mcsema_real_eip !73
  store i64 %51, i64* %XSI, align 8, !mcsema_real_eip !73
  %52 = add i64 %51, %_new_load_137, !mcsema_real_eip !74
  %53 = inttoptr i64 %52 to i8*, !mcsema_real_eip !74
  %_offset_above_rbp_155 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %53, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %53, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %53, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond4_161, %_cond1_n_cond2_162
  %_pot_address_in_parent_stack_156. = select i1 %_cond1_n_cond2_cond3_163, i8* %_pot_address_in_parent_stack_156, i8* %53
  %_new_load_165 = load i8, i8* %_pot_address_in_parent_stack_156., align 1
  store i8 %_new_load_165, i8* %CL.115, align 1, !mcsema_real_eip !74
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -18
  store i8 %_new_load_165, i8* %_new_gep_44, align 1, !mcsema_real_eip !75
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -17
  %54 = ptrtoint i8* %_new_gep_47 to i64
  %_offset_above_rbp_168 = sub i64 %54, %_local_end_to_int_
  %_pot_address_in_parent_stack_169 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_168
  %_cond1_170 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_171 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_172 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_173 = or i1 %_cond2_1_171, %_cond2_2_172
  %_cond4_174 = icmp ule i8* %_pot_address_in_parent_stack_169, %_parent_stack_end_ptr_
  %_cond1_n_cond2_175 = and i1 %_cond1_170, %_cond2_173
  %_cond1_n_cond2_cond3_176 = and i1 %_cond1_n_cond2_175, %_cond4_174
  %55 = select i1 %_cond1_n_cond2_cond3_176, i8* %_pot_address_in_parent_stack_169, i8* %_new_gep_47
  %_new_load_178 = load i8, i8* %55, align 1
  %56 = sext i8 %_new_load_178 to i64
  %57 = and i64 %56, 4294967295
  store i64 %57, i64* %XDX, align 8, !mcsema_real_eip !76
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -18
  %58 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_181 = sub i64 %58, %_local_end_to_int_
  %_pot_address_in_parent_stack_182 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_181
  %_cond1_183 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_184 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_185 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_186 = or i1 %_cond2_1_184, %_cond2_2_185
  %_cond4_187 = icmp ule i8* %_pot_address_in_parent_stack_182, %_parent_stack_end_ptr_
  %_cond1_n_cond2_188 = and i1 %_cond1_183, %_cond2_186
  %_cond1_n_cond2_cond3_189 = and i1 %_cond1_n_cond2_188, %_cond4_187
  %_pot_address_in_parent_stack_182. = select i1 %_cond1_n_cond2_cond3_189, i8* %_pot_address_in_parent_stack_182, i8* %_new_gep_50
  %_new_load_191 = load i8, i8* %_pot_address_in_parent_stack_182., align 1
  %59 = sext i8 %_new_load_191 to i64
  %60 = and i64 %59, 4294967295
  store i64 %60, i64* %XDI, align 8, !mcsema_real_eip !77
  %61 = sext i8 %_new_load_178 to i32
  %62 = sext i8 %_new_load_191 to i32
  %63 = sub nsw i32 %61, %62, !mcsema_real_eip !78
  %64 = xor i32 %63, %61, !mcsema_real_eip !78
  %65 = xor i32 %64, %62, !mcsema_real_eip !78
  %66 = and i32 %65, 16, !mcsema_real_eip !78
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !78
  store i1 %67, i1* %AF, align 1, !mcsema_real_eip !78
  %68 = trunc i32 %63 to i8, !mcsema_real_eip !78
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !78
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  store i1 %71, i1* %PF, align 1, !mcsema_real_eip !78
  %72 = icmp eq i32 %63, 0, !mcsema_real_eip !78
  store i1 %72, i1* %ZF, align 1, !mcsema_real_eip !78
  %73 = icmp slt i32 %63, 0
  store i1 %73, i1* %SF, align 1, !mcsema_real_eip !78
  %74 = icmp ult i8 %_new_load_178, %_new_load_191
  store i1 %74, i1* %CF, align 1, !mcsema_real_eip !78
  %75 = xor i8 %_new_load_191, %_new_load_178
  %76 = sext i8 %75 to i32
  %77 = and i32 %64, %76, !mcsema_real_eip !78
  %78 = icmp slt i32 %77, 0
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !78
  br i1 %72, label %block_0xe7, label %block_0xf3, !mcsema_real_eip !79

block_0xf3:                                       ; preds = %block_0xbb, %block_0xe7, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, %block_0xbb ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52.pre, %block_0xe7 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, %entry ]
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52, i64 -12
  %79 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_195 = sub i64 %79, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  %_address_in_parent_stack_bt_205..v = select i1 %_cond1_n_cond2_cond3_203, i8* %_pot_address_in_parent_stack_196, i8* %_new_gep_53
  %_address_in_parent_stack_bt_205. = bitcast i8* %_address_in_parent_stack_bt_205..v to i32*
  %_new_load_206 = load i32, i32* %_address_in_parent_stack_bt_205., align 4
  %80 = zext i32 %_new_load_206 to i64, !mcsema_real_eip !80
  store i64 %80, i64* %XAX, align 8, !mcsema_real_eip !80
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.110 = load i64, i64* %XSP, align 8, !mcsema_real_eip !81
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 32
  %81 = add i64 %RSP_val.110, 32, !mcsema_real_eip !81
  %_trans_p2i_57 = ptrtoint i8* %_new_gep_56 to i64
  %_trans_p2i_58 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 to i64
  %_trans_xor_59 = xor i64 %_trans_p2i_57, %_trans_p2i_58
  %82 = and i64 %_trans_xor_59, 16, !mcsema_real_eip !81
  %83 = icmp ne i64 %82, 0, !mcsema_real_eip !81
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !81
  %84 = icmp slt i64 %81, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !81
  %_trans_icmp_eq_61 = icmp eq i8* %_new_gep_56, null
  store i1 %_trans_icmp_eq_61, i1* %ZF, align 1, !mcsema_real_eip !81
  %85 = xor i64 %_trans_p2i_58, -9223372036854775808, !mcsema_real_eip !81
  %86 = and i64 %_trans_xor_59, %85, !mcsema_real_eip !81
  %87 = icmp slt i64 %86, 0
  store i1 %87, i1* %OF, align 1, !mcsema_real_eip !81
  %_trans_trunc_68 = trunc i64 %_trans_p2i_57 to i8
  %88 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_68), !mcsema_real_eip !81
  %89 = and i8 %88, 1
  %90 = icmp eq i8 %89, 0
  store i1 %90, i1* %PF, align 1, !mcsema_real_eip !81
  %_trans_icmp_ne_70 = icmp ne i64 %_trans_p2i_57, %RSP_val.110
  store i1 %_trans_icmp_ne_70, i1* %CF, align 1, !mcsema_real_eip !81
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %81, i64* %XSP, align 8, !mcsema_real_eip !81
  %_offset_above_rbp_210 = sub i64 %_trans_p2i_57, %_local_end_to_int_
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  %.v4 = select i1 %_cond1_n_cond2_cond3_218, i8* %_pot_address_in_parent_stack_211, i8* %_new_gep_56
  %91 = bitcast i8* %.v4 to i64*
  %_new_load_221 = load i64, i64* %91, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_221 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_221, i64* %XBP, align 8, !mcsema_real_eip !82
  %_new_gep_73 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 40
  %92 = add i64 %RSP_val.110, 40, !mcsema_real_eip !82
  store volatile i8* %_new_gep_73, i8** %_RSP_ptr_, align 8
  store i64 %92, i64* %XSP, align 8, !mcsema_real_eip !82
  %_new_gep_75 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 48
  %93 = add i64 %RSP_val.110, 48, !mcsema_real_eip !83
  %_ptr_to_int_222 = ptrtoint i8* %_new_gep_73 to i64
  %_offset_above_rbp_225 = sub i64 %_ptr_to_int_222, %_local_end_to_int_
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_new_gep_73, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_new_gep_73, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_new_gep_73, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  %_address_in_parent_stack_bt_235._allin_new_bt_76.v = select i1 %_cond1_n_cond2_cond3_233, i8* %_pot_address_in_parent_stack_226, i8* %_new_gep_73
  %_address_in_parent_stack_bt_235._allin_new_bt_76 = bitcast i8* %_address_in_parent_stack_bt_235._allin_new_bt_76.v to i64*
  %_new_load_236 = load i64, i64* %_address_in_parent_stack_bt_235._allin_new_bt_76, align 8
  store i64 %_new_load_236, i64* %XIP, align 8, !mcsema_real_eip !83
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_, align 8
  store i64 %93, i64* %XSP, align 8, !mcsema_real_eip !83
  ret void, !mcsema_real_eip !83

block_0xe7:                                       ; preds = %block_0xbb
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -12
  %94 = bitcast i8* %_new_gep_78 to i32*
  store i32 0, i32* %94, align 4, !mcsema_real_eip !84
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0xf3
}

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }
attributes #3 = { noinline nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 12}
!7 = !{i64 15}
!8 = !{i64 22}
!9 = !{i64 26}
!10 = !{i64 30}
!11 = !{i64 35}
!12 = !{i64 42}
!13 = !{i64 39}
!14 = !{i64 45}
!15 = !{i64 51}
!16 = !{i64 55}
!17 = !{i64 59}
!18 = !{i64 63}
!19 = !{i64 67}
!20 = !{i64 71}
!21 = !{i64 76}
!22 = !{i64 79}
!23 = !{i64 117}
!24 = !{i64 121}
!25 = !{i64 125}
!26 = !{i64 129}
!27 = !{i64 130}
!28 = !{i64 85}
!29 = !{i64 89}
!30 = !{i64 93}
!31 = !{i64 103}
!32 = !{i64 106}
!33 = !{i64 109}
!34 = !{i64 112}
!35 = !{i64 256}
!36 = !{i64 257}
!37 = !{i64 284}
!38 = !{i64 288}
!39 = !{i64 293}
!40 = !{i64 297}
!41 = !{i64 300}
!42 = !{i64 306}
!43 = !{i64 310}
!44 = !{i64 313}
!45 = !{i64 378}
!46 = !{i64 379}
!47 = !{i64 319}
!48 = !{i64 326}
!49 = !{i64 331}
!50 = !{i64 334}
!51 = !{i64 344}
!52 = !{i64 348}
!53 = !{i64 356}
!54 = !{i64 360}
!55 = !{i64 364}
!56 = !{i64 368}
!57 = !{i64 373}
!58 = !{i64 144}
!59 = !{i64 145}
!60 = !{i64 148}
!61 = !{i64 152}
!62 = !{i64 156}
!63 = !{i64 167}
!64 = !{i64 172}
!65 = !{i64 174}
!66 = !{i64 177}
!67 = !{i64 181}
!68 = !{i64 187}
!69 = !{i64 191}
!70 = !{i64 193}
!71 = !{i64 196}
!72 = !{i64 203}
!73 = !{i64 206}
!74 = !{i64 209}
!75 = !{i64 212}
!76 = !{i64 215}
!77 = !{i64 219}
!78 = !{i64 223}
!79 = !{i64 225}
!80 = !{i64 243}
!81 = !{i64 246}
!82 = !{i64 250}
!83 = !{i64 251}
!84 = !{i64 231}
