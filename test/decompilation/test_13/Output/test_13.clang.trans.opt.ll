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
  %RSP_val.95 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %1 = add i64 %RSP_val.95, -8
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
  %RDI_val.99 = load i64, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 %RDI_val.99, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  %ESI.101 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.102 = load i32, i32* %ESI.101, align 4
  %8 = bitcast i8* %_new_gep_17 to i32*
  store i32 %ESI_val.102, i32* %8, align 4, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %9 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %9, align 8, !mcsema_real_eip !7
  %10 = sext i32 %ESI_val.102 to i64, !mcsema_real_eip !8
  %11 = shl nsw i64 %10, 3, !mcsema_real_eip !9
  %12 = icmp slt i32 %ESI_val.102, 0
  store i1 %12, i1* %CF, align 1, !mcsema_real_eip !9
  %13 = icmp eq i32 %ESI_val.102, 0
  store i1 %13, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %12, i1* %SF, align 1, !mcsema_real_eip !9
  %14 = trunc i64 %11 to i8, !mcsema_real_eip !9
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !9
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  store i1 %17, i1* %PF, align 1, !mcsema_real_eip !9
  store i64 %11, i64* %XDI, align 8, !mcsema_real_eip !9
  %_new_gep_26 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %18 = add i64 %RSP_val.95, -48
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
  %EAX.112 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
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
  %RSP_val.121 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 -8
  %48 = add i64 %RSP_val.121, -8
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !20
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %48, i64* %XSP, align 8, !mcsema_real_eip !20
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9211 = load i8*, i8** %7, align 8
  call x86_64_sysvcc void @sub_90.1(%RegState* nonnull %0, i8* %_new_gep_50, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9211)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_95 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i64 8
  store i8* %_gep_fix_95, i8** %_RSP_ptr_, align 8
  %EAX_val.123 = load i32, i32* %EAX.112, align 4, !mcsema_real_eip !21
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !21
  %49 = trunc i32 %EAX_val.123 to i8, !mcsema_real_eip !21
  %50 = call i8 @llvm.ctpop.i8(i8 %49), !mcsema_real_eip !21
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  store i1 %52, i1* %PF, align 1, !mcsema_real_eip !21
  %53 = icmp eq i32 %EAX_val.123, 0, !mcsema_real_eip !21
  store i1 %53, i1* %ZF, align 1, !mcsema_real_eip !21
  %54 = icmp slt i32 %EAX_val.123, 0
  store i1 %54, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !21
  br i1 %53, label %block_0x55, label %block_0x67, !mcsema_real_eip !22

block_0x55:                                       ; preds = %block_0x33
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5213 = load i8*, i8** %7, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5213, i64 -32
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %55 = load i64, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !23
  store i64 %55, i64* %XDI, align 8, !mcsema_real_eip !23
  %56 = load i64, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !24
  store i64 %56, i64* %XSI, align 8, !mcsema_real_eip !24
  %RSP_val.126 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %57 = add i64 %RSP_val.126, -8
  %_allin_new_bt_60 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !25
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i8** %_RSP_ptr_, align 8
  store i64 %57, i64* %XSP, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9614 = load i8*, i8** %7, align 8
  call x86_64_sysvcc void @sub_100.2(%RegState* nonnull %0, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9614)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_98 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_99 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_98, i64 8
  store i8* %_gep_fix_99, i8** %_RSP_ptr_, align 8
  br label %block_0x67, !mcsema_real_eip !26

block_0x67:                                       ; preds = %block_0x33, %block_0x55
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6112 = load i8*, i8** %7, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6112, i64 -16
  %58 = bitcast i8* %_new_gep_62 to i32*
  %59 = load i32, i32* %58, align 4, !mcsema_real_eip !27
  %60 = add i32 %59, 1, !mcsema_real_eip !28
  %61 = xor i32 %60, %59, !mcsema_real_eip !28
  %62 = and i32 %61, 16, !mcsema_real_eip !28
  %63 = icmp ne i32 %62, 0, !mcsema_real_eip !28
  store i1 %63, i1* %AF, align 1, !mcsema_real_eip !28
  %64 = icmp slt i32 %60, 0
  store i1 %64, i1* %SF, align 1, !mcsema_real_eip !28
  %65 = icmp eq i32 %60, 0, !mcsema_real_eip !28
  store i1 %65, i1* %ZF, align 1, !mcsema_real_eip !28
  %66 = xor i32 %59, -2147483648, !mcsema_real_eip !28
  %67 = and i32 %61, %66, !mcsema_real_eip !28
  %68 = icmp slt i32 %67, 0
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !28
  %69 = trunc i32 %60 to i8, !mcsema_real_eip !28
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !28
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  store i1 %72, i1* %PF, align 1, !mcsema_real_eip !28
  %73 = icmp eq i32 %59, -1
  store i1 %73, i1* %CF, align 1, !mcsema_real_eip !28
  %74 = zext i32 %60 to i64, !mcsema_real_eip !28
  store i64 %74, i64* %XAX, align 8, !mcsema_real_eip !28
  store i32 %60, i32* %58, align 4, !mcsema_real_eip !29
  br label %block_0x27, !mcsema_real_eip !30

block_0x75:                                       ; preds = %block_0x27
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_319, i64 -24
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %75 = load i64, i64* %_allin_new_bt_69, align 8, !mcsema_real_eip !31
  store i64 %75, i64* %XAX, align 8, !mcsema_real_eip !31
  %76 = add i64 %75, 1, !mcsema_real_eip !32
  %77 = inttoptr i64 %76 to i8*, !mcsema_real_eip !32
  store i8 2, i8* %77, align 1, !mcsema_real_eip !32
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_70 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.135 = load i64, i64* %XSP, align 8, !mcsema_real_eip !33
  %_new_gep_71 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_70, i64 32
  %78 = add i64 %RSP_val.135, 32, !mcsema_real_eip !33
  %_trans_p2i_72 = ptrtoint i8* %_new_gep_71 to i64
  %_trans_p2i_73 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_70 to i64
  %_trans_xor_74 = xor i64 %_trans_p2i_72, %_trans_p2i_73
  %79 = and i64 %_trans_xor_74, 16, !mcsema_real_eip !33
  %80 = icmp ne i64 %79, 0, !mcsema_real_eip !33
  store i1 %80, i1* %AF, align 1, !mcsema_real_eip !33
  %81 = icmp slt i64 %78, 0
  store i1 %81, i1* %SF, align 1, !mcsema_real_eip !33
  %_trans_icmp_eq_76 = icmp eq i8* %_new_gep_71, null
  store i1 %_trans_icmp_eq_76, i1* %ZF, align 1, !mcsema_real_eip !33
  %82 = xor i64 %_trans_p2i_73, -9223372036854775808, !mcsema_real_eip !33
  %83 = and i64 %_trans_xor_74, %82, !mcsema_real_eip !33
  %84 = icmp slt i64 %83, 0
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !33
  %_trans_trunc_83 = trunc i64 %_trans_p2i_72 to i8
  %85 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_83), !mcsema_real_eip !33
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  store i1 %87, i1* %PF, align 1, !mcsema_real_eip !33
  %_trans_icmp_ne_85 = icmp ne i64 %RSP_val.135, %_trans_p2i_72
  store i1 %_trans_icmp_ne_85, i1* %CF, align 1, !mcsema_real_eip !33
  store volatile i8* %_new_gep_71, i8** %_RSP_ptr_, align 8
  store i64 %78, i64* %XSP, align 8, !mcsema_real_eip !33
  %_allin_new_bt_87 = bitcast i8* %_new_gep_71 to i64*
  %88 = load i64, i64* %_allin_new_bt_87, align 8, !mcsema_real_eip !34
  store volatile i64 %88, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %88, i64* %XBP, align 8, !mcsema_real_eip !34
  %_new_gep_88 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_70, i64 40
  %89 = add i64 %RSP_val.135, 40, !mcsema_real_eip !34
  store volatile i8* %_new_gep_88, i8** %_RSP_ptr_, align 8
  store i64 %89, i64* %XSP, align 8, !mcsema_real_eip !34
  %_new_gep_90 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_70, i64 48
  %90 = add i64 %RSP_val.135, 48, !mcsema_real_eip !35
  %_allin_new_bt_91 = bitcast i8* %_new_gep_88 to i64*
  %91 = load i64, i64* %_allin_new_bt_91, align 8, !mcsema_real_eip !35
  store i64 %91, i64* %XIP, align 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_90, i8** %_RSP_ptr_, align 8
  store i64 %90, i64* %XSP, align 8, !mcsema_real_eip !35
  ret void, !mcsema_real_eip !35
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #2

; Function Attrs: noinline
define internal x86_64_sysvcc void @sub_90.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [48 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !36
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !36
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !36
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !36
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !36
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !36
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !36
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !36
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !36
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !36
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !36
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !36
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !36
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !36
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !36
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !36
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !36
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !36
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !36
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !36
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !37
  %_new_gep_3 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -40
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !38
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !38
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !38
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !38
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !38
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !38
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !38
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 32 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !38
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !38
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !38
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %_new_gep_14 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !39
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !39
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  %11 = bitcast i8* %_new_gep_17 to i32*
  store i32 1, i32* %11, align 4, !mcsema_real_eip !40
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_new_gep_23 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.1, -48
  %_allin_new_bt_24 = bitcast [48 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !41
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !41
  %13 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.5)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XAX, align 8, !mcsema_real_eip !41
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %XCX, align 8, !mcsema_real_eip !42
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -16
  %16 = bitcast i8* %_new_gep_26 to i32*
  store i32 %14, i32* %16, align 4, !mcsema_real_eip !43
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
  %19 = xor i32 %18, %_new_load_94, !mcsema_real_eip !44
  %20 = and i32 %19, 16, !mcsema_real_eip !44
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !44
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !44
  %22 = trunc i32 %18 to i8, !mcsema_real_eip !44
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !44
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !44
  %26 = icmp eq i32 %18, 0, !mcsema_real_eip !44
  store i1 %26, i1* %ZF, align 1, !mcsema_real_eip !44
  %27 = icmp slt i32 %18, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !44
  %28 = icmp eq i32 %_new_load_94, 0
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !44
  %29 = and i32 %19, %_new_load_94, !mcsema_real_eip !44
  %30 = icmp slt i32 %29, 0
  store i1 %30, i1* %OF, align 1, !mcsema_real_eip !44
  %31 = xor i1 %27, %30
  %32 = or i1 %26, %31, !mcsema_real_eip !45
  br i1 %32, label %block_0xf3, label %block_0xbb, !mcsema_real_eip !45

block_0xbb:                                       ; preds = %entry
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !36
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
  store i64 %_new_load_109, i64* %XAX, align 8, !mcsema_real_eip !46
  %33 = inttoptr i64 %_new_load_109 to i8*, !mcsema_real_eip !47
  %_offset_above_rbp_112 = sub i64 %_new_load_109, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ult i8* %_local_stack_end_ptr_, %33
  %_cond2_1_115 = icmp ugt i8* %33, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %33, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond4_118, %_cond1_n_cond2_119
  %34 = select i1 %_cond1_n_cond2_cond3_120, i8* %_pot_address_in_parent_stack_113, i8* %33
  %_new_load_122 = load i8, i8* %34, align 1
  %CL.18 = bitcast i64* %XCX to i8*, !mcsema_real_eip !47
  store i8 %_new_load_122, i8* %CL.18, align 1, !mcsema_real_eip !47
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -17
  store i8 %_new_load_122, i8* %_new_gep_35, align 1, !mcsema_real_eip !48
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
  store i64 %_new_load_137, i64* %XAX, align 8, !mcsema_real_eip !49
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
  %38 = xor i32 %37, %_new_load_152, !mcsema_real_eip !50
  %39 = and i32 %38, 16, !mcsema_real_eip !50
  %40 = icmp ne i32 %39, 0, !mcsema_real_eip !50
  store i1 %40, i1* %AF, align 1, !mcsema_real_eip !50
  %41 = trunc i32 %37 to i8, !mcsema_real_eip !50
  %42 = call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !50
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !50
  %45 = icmp eq i32 %37, 0, !mcsema_real_eip !50
  store i1 %45, i1* %ZF, align 1, !mcsema_real_eip !50
  %46 = icmp slt i32 %37, 0
  store i1 %46, i1* %SF, align 1, !mcsema_real_eip !50
  %47 = icmp eq i32 %_new_load_152, 0
  store i1 %47, i1* %CF, align 1, !mcsema_real_eip !50
  %48 = and i32 %38, %_new_load_152, !mcsema_real_eip !50
  %49 = icmp slt i32 %48, 0
  store i1 %49, i1* %OF, align 1, !mcsema_real_eip !50
  %50 = zext i32 %37 to i64, !mcsema_real_eip !50
  store i64 %50, i64* %XDX, align 8, !mcsema_real_eip !50
  %51 = sext i32 %37 to i64, !mcsema_real_eip !51
  store i64 %51, i64* %XSI, align 8, !mcsema_real_eip !51
  %52 = add i64 %_new_load_137, %51, !mcsema_real_eip !52
  %53 = inttoptr i64 %52 to i8*, !mcsema_real_eip !52
  %_offset_above_rbp_155 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ult i8* %_local_stack_end_ptr_, %53
  %_cond2_1_158 = icmp ugt i8* %53, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %53, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond4_161, %_cond1_n_cond2_162
  %_pot_address_in_parent_stack_156. = select i1 %_cond1_n_cond2_cond3_163, i8* %_pot_address_in_parent_stack_156, i8* %53
  %_new_load_165 = load i8, i8* %_pot_address_in_parent_stack_156., align 1
  store i8 %_new_load_165, i8* %CL.18, align 1, !mcsema_real_eip !52
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -18
  store i8 %_new_load_165, i8* %_new_gep_44, align 1, !mcsema_real_eip !53
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
  store i64 %57, i64* %XDX, align 8, !mcsema_real_eip !54
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
  store i64 %60, i64* %XDI, align 8, !mcsema_real_eip !55
  %61 = sext i8 %_new_load_178 to i32
  %62 = sext i8 %_new_load_191 to i32
  %63 = sub nsw i32 %61, %62, !mcsema_real_eip !56
  %64 = xor i32 %63, %61, !mcsema_real_eip !56
  %65 = xor i32 %64, %62, !mcsema_real_eip !56
  %66 = and i32 %65, 16, !mcsema_real_eip !56
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !56
  store i1 %67, i1* %AF, align 1, !mcsema_real_eip !56
  %68 = trunc i32 %63 to i8, !mcsema_real_eip !56
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !56
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  store i1 %71, i1* %PF, align 1, !mcsema_real_eip !56
  %72 = icmp eq i32 %63, 0, !mcsema_real_eip !56
  store i1 %72, i1* %ZF, align 1, !mcsema_real_eip !56
  %73 = icmp slt i32 %63, 0
  store i1 %73, i1* %SF, align 1, !mcsema_real_eip !56
  %74 = icmp ult i8 %_new_load_178, %_new_load_191
  store i1 %74, i1* %CF, align 1, !mcsema_real_eip !56
  %75 = xor i8 %_new_load_191, %_new_load_178
  %76 = sext i8 %75 to i32
  %77 = and i32 %64, %76, !mcsema_real_eip !56
  %78 = icmp slt i32 %77, 0
  store i1 %78, i1* %OF, align 1, !mcsema_real_eip !56
  br i1 %72, label %block_0xe7, label %block_0xf3, !mcsema_real_eip !57

block_0xe7:                                       ; preds = %block_0xbb
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -12
  %79 = bitcast i8* %_new_gep_53 to i32*
  store i32 0, i32* %79, align 4, !mcsema_real_eip !58
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0xf3, !mcsema_real_eip !59

block_0xf3:                                       ; preds = %block_0xbb, %block_0xe7, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, %block_0xbb ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55.pre, %block_0xe7 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, %entry ]
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -12
  %80 = ptrtoint i8* %_new_gep_56 to i64
  %_offset_above_rbp_195 = sub i64 %80, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  %_address_in_parent_stack_bt_205..v = select i1 %_cond1_n_cond2_cond3_203, i8* %_pot_address_in_parent_stack_196, i8* %_new_gep_56
  %_address_in_parent_stack_bt_205. = bitcast i8* %_address_in_parent_stack_bt_205..v to i32*
  %_new_load_206 = load i32, i32* %_address_in_parent_stack_bt_205., align 4
  %81 = zext i32 %_new_load_206 to i64, !mcsema_real_eip !60
  store i64 %81, i64* %XAX, align 8, !mcsema_real_eip !60
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.42 = load i64, i64* %XSP, align 8, !mcsema_real_eip !61
  %_new_gep_59 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58, i64 32
  %82 = add i64 %RSP_val.42, 32, !mcsema_real_eip !61
  %_trans_p2i_60 = ptrtoint i8* %_new_gep_59 to i64
  %_trans_p2i_61 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58 to i64
  %_trans_xor_62 = xor i64 %_trans_p2i_60, %_trans_p2i_61
  %83 = and i64 %_trans_xor_62, 16, !mcsema_real_eip !61
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !61
  store i1 %84, i1* %AF, align 1, !mcsema_real_eip !61
  %85 = icmp slt i64 %82, 0
  store i1 %85, i1* %SF, align 1, !mcsema_real_eip !61
  %_trans_icmp_eq_64 = icmp eq i8* %_new_gep_59, null
  store i1 %_trans_icmp_eq_64, i1* %ZF, align 1, !mcsema_real_eip !61
  %86 = xor i64 %_trans_p2i_61, -9223372036854775808, !mcsema_real_eip !61
  %87 = and i64 %_trans_xor_62, %86, !mcsema_real_eip !61
  %88 = icmp slt i64 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !61
  %_trans_trunc_71 = trunc i64 %_trans_p2i_60 to i8
  %89 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_71), !mcsema_real_eip !61
  %90 = and i8 %89, 1
  %91 = icmp eq i8 %90, 0
  store i1 %91, i1* %PF, align 1, !mcsema_real_eip !61
  %_trans_icmp_ne_73 = icmp ne i64 %RSP_val.42, %_trans_p2i_60
  store i1 %_trans_icmp_ne_73, i1* %CF, align 1, !mcsema_real_eip !61
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_, align 8
  store i64 %82, i64* %XSP, align 8, !mcsema_real_eip !61
  %_offset_above_rbp_210 = sub i64 %_trans_p2i_60, %_local_end_to_int_
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  %.v4 = select i1 %_cond1_n_cond2_cond3_218, i8* %_pot_address_in_parent_stack_211, i8* %_new_gep_59
  %92 = bitcast i8* %.v4 to i64*
  %_new_load_221 = load i64, i64* %92, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_221 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_221, i64* %XBP, align 8, !mcsema_real_eip !62
  %_new_gep_76 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58, i64 40
  %93 = add i64 %RSP_val.42, 40, !mcsema_real_eip !62
  store volatile i8* %_new_gep_76, i8** %_RSP_ptr_, align 8
  store i64 %93, i64* %XSP, align 8, !mcsema_real_eip !62
  %_new_gep_78 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_58, i64 48
  %94 = add i64 %RSP_val.42, 48, !mcsema_real_eip !63
  %_ptr_to_int_222 = ptrtoint i8* %_new_gep_76 to i64
  %_offset_above_rbp_225 = sub i64 %_ptr_to_int_222, %_local_end_to_int_
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_new_gep_76, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_new_gep_76, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_new_gep_76, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  %_address_in_parent_stack_bt_235._allin_new_bt_79.v = select i1 %_cond1_n_cond2_cond3_233, i8* %_pot_address_in_parent_stack_226, i8* %_new_gep_76
  %_address_in_parent_stack_bt_235._allin_new_bt_79 = bitcast i8* %_address_in_parent_stack_bt_235._allin_new_bt_79.v to i64*
  %_new_load_236 = load i64, i64* %_address_in_parent_stack_bt_235._allin_new_bt_79, align 8
  store i64 %_new_load_236, i64* %XIP, align 8, !mcsema_real_eip !63
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_, align 8
  store i64 %94, i64* %XSP, align 8, !mcsema_real_eip !63
  ret void, !mcsema_real_eip !63
}

; Function Attrs: noinline nounwind
define internal x86_64_sysvcc void @sub_100.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) unnamed_addr #3 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_4 = alloca [41 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_4, i64 0, i64 41
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !64
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !64
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !64
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !64
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !64
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !64
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !64
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !64
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !64
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !64
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !64
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !64
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !64
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !64
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !64
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !64
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !64
  %RSP_val.46 = load i64, i64* %XSP, align 8, !mcsema_real_eip !64
  %_new_gep_ = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_4, i64 0, i64 33
  %1 = add i64 %RSP_val.46, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !64
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !65
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
  store i64 %_new_load_94, i64* %XSI, align 8, !mcsema_real_eip !66
  %7 = inttoptr i64 %_new_load_94 to i8*, !mcsema_real_eip !67
  %_offset_above_rbp_97 = sub i64 %_new_load_94, %_local_end_to_int_
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ult i8* %_local_stack_end_ptr_, %7
  %_cond2_1_100 = icmp ugt i8* %7, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %7, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond4_103, %_cond1_n_cond2_104
  %_pot_address_in_parent_stack_98. = select i1 %_cond1_n_cond2_cond3_105, i8* %_pot_address_in_parent_stack_98, i8* %7
  %_new_load_107 = load i8, i8* %_pot_address_in_parent_stack_98., align 1
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !67
  store i8 %_new_load_107, i8* %AL.60, align 1, !mcsema_real_eip !67
  %CL.88 = bitcast i64* %XCX to i8*
  br label %block_0x125, !mcsema_real_eip !68

block_0x125:                                      ; preds = %block_0x154, %entry
  %_load_rbp_ptr_53.sink = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, %block_0x154 ], [ %_new_gep_, %entry ]
  %_new_load_234.sink = phi i8 [ %_new_load_234, %block_0x154 ], [ %_new_load_107, %entry ]
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_53.sink, i64 -33
  store i8 %_new_load_234.sink, i8* %_new_gep_57, align 1
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
  store i64 %10, i64* %XAX, align 8, !mcsema_real_eip !68
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !69
  %11 = call i8 @llvm.ctpop.i8(i8 %_new_load_120), !mcsema_real_eip !69
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  store i1 %13, i1* %PF, align 1, !mcsema_real_eip !69
  %14 = icmp eq i8 %_new_load_120, 0
  store i1 %14, i1* %ZF, align 1, !mcsema_real_eip !69
  %15 = icmp slt i8 %_new_load_120, 0
  store i1 %15, i1* %SF, align 1, !mcsema_real_eip !69
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !69
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !69
  br i1 %14, label %block_0x17a, label %block_0x132, !mcsema_real_eip !70

block_0x132:                                      ; preds = %block_0x125
  %_new_load_133 = load i8, i8* %_pot_address_in_parent_stack_111., align 1
  %16 = sext i8 %_new_load_133 to i64
  %17 = and i64 %16, 4294967295
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !71
  %18 = sext i8 %_new_load_133 to i32
  %19 = add nsw i32 %18, -47
  %20 = xor i32 %19, %18, !mcsema_real_eip !72
  %21 = and i32 %20, 16, !mcsema_real_eip !72
  %22 = icmp ne i32 %21, 0, !mcsema_real_eip !72
  store i1 %22, i1* %AF, align 1, !mcsema_real_eip !72
  %23 = trunc i32 %19 to i8, !mcsema_real_eip !72
  %24 = call i8 @llvm.ctpop.i8(i8 %23), !mcsema_real_eip !72
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  store i1 %26, i1* %PF, align 1, !mcsema_real_eip !72
  %27 = icmp eq i32 %19, 0, !mcsema_real_eip !72
  store i1 %27, i1* %ZF, align 1, !mcsema_real_eip !72
  %28 = icmp slt i8 %_new_load_133, 47
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !72
  %29 = icmp ult i8 %_new_load_133, 47
  store i1 %29, i1* %CF, align 1, !mcsema_real_eip !72
  %30 = and i32 %20, %18, !mcsema_real_eip !72
  %31 = icmp slt i32 %30, 0
  store i1 %31, i1* %OF, align 1, !mcsema_real_eip !72
  br i1 %27, label %block_0x13f, label %block_0x14b, !mcsema_real_eip !73

block_0x13f:                                      ; preds = %block_0x132
  %_new_gep_33 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26, i64 -32
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
  store i64 %_new_load_148, i64* %XAX, align 8, !mcsema_real_eip !74
  br label %block_0x154, !mcsema_real_eip !75

block_0x14b:                                      ; preds = %block_0x132
  %_new_load_161 = load i8, i8* %_pot_address_in_parent_stack_111., align 1
  store i8 %_new_load_161, i8* %AL.60, align 1, !mcsema_real_eip !76
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_26, i64 -32
  %_ptr_to_int_162 = ptrtoint i8* %_new_gep_39 to i64
  %_offset_above_rbp_165 = sub i64 %_ptr_to_int_162, %_local_end_to_int_
  %_pot_address_in_parent_stack_166 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_165
  %_cond1_167 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_168 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_169 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_170 = or i1 %_cond2_1_168, %_cond2_2_169
  %_cond4_171 = icmp ule i8* %_pot_address_in_parent_stack_166, %_parent_stack_end_ptr_
  %_cond1_n_cond2_172 = and i1 %_cond1_167, %_cond2_170
  %_cond1_n_cond2_cond3_173 = and i1 %_cond1_n_cond2_172, %_cond4_171
  %.v6 = select i1 %_cond1_n_cond2_cond3_173, i8* %_pot_address_in_parent_stack_166, i8* %_new_gep_39
  %32 = bitcast i8* %.v6 to i64*
  %_new_load_176 = load i64, i64* %32, align 8
  store i64 %_new_load_176, i64* %XCX, align 8, !mcsema_real_eip !77
  br label %block_0x154, !mcsema_real_eip !78

block_0x154:                                      ; preds = %block_0x14b, %block_0x13f
  %_new_load_176.sink = phi i64 [ %_new_load_176, %block_0x14b ], [ %_new_load_148, %block_0x13f ]
  %_new_load_161.sink = phi i8 [ %_new_load_161, %block_0x14b ], [ 92, %block_0x13f ]
  %33 = inttoptr i64 %_new_load_176.sink to i8*
  store i8 %_new_load_161.sink, i8* %33, align 1
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -24
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %_ptr_to_int_177 = ptrtoint i8* %_new_gep_42 to i64
  %_offset_above_rbp_180 = sub i64 %_ptr_to_int_177, %_local_end_to_int_
  %_pot_address_in_parent_stack_181 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_180
  %_cond1_182 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_183 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_184 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_185 = or i1 %_cond2_1_183, %_cond2_2_184
  %_cond4_186 = icmp ule i8* %_pot_address_in_parent_stack_181, %_parent_stack_end_ptr_
  %_cond1_n_cond2_187 = and i1 %_cond1_182, %_cond2_185
  %_cond1_n_cond2_cond3_188 = and i1 %_cond1_n_cond2_187, %_cond4_186
  %_address_in_parent_stack_bt_190 = bitcast i8* %_pot_address_in_parent_stack_181 to i64*
  %_address_in_parent_stack_bt_190._allin_new_bt_43 = select i1 %_cond1_n_cond2_cond3_188, i64* %_address_in_parent_stack_bt_190, i64* %_allin_new_bt_43
  %_new_load_191 = load i64, i64* %_address_in_parent_stack_bt_190._allin_new_bt_43, align 8
  %34 = add i64 %_new_load_191, 1, !mcsema_real_eip !79
  %35 = xor i64 %34, %_new_load_191, !mcsema_real_eip !79
  %36 = and i64 %35, 16, !mcsema_real_eip !79
  %37 = icmp ne i64 %36, 0, !mcsema_real_eip !79
  store i1 %37, i1* %AF, align 1, !mcsema_real_eip !79
  %38 = icmp slt i64 %34, 0
  store i1 %38, i1* %SF, align 1, !mcsema_real_eip !79
  %39 = icmp eq i64 %34, 0, !mcsema_real_eip !79
  store i1 %39, i1* %ZF, align 1, !mcsema_real_eip !79
  %40 = xor i64 %_new_load_191, -9223372036854775808, !mcsema_real_eip !79
  %41 = and i64 %35, %40, !mcsema_real_eip !79
  %42 = icmp slt i64 %41, 0
  store i1 %42, i1* %OF, align 1, !mcsema_real_eip !79
  %43 = trunc i64 %34 to i8, !mcsema_real_eip !79
  %44 = call i8 @llvm.ctpop.i8(i8 %43), !mcsema_real_eip !79
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  store i1 %46, i1* %PF, align 1, !mcsema_real_eip !79
  %47 = icmp eq i64 %_new_load_191, -1
  store i1 %47, i1* %CF, align 1, !mcsema_real_eip !79
  store i64 %34, i64* %XAX, align 8, !mcsema_real_eip !79
  store i64 %34, i64* %_allin_new_bt_43, align 8, !mcsema_real_eip !80
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47, i64 -32
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %_ptr_to_int_192 = ptrtoint i8* %_new_gep_48 to i64
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_new_gep_48, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_new_gep_48, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_new_gep_48, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  %_address_in_parent_stack_bt_205 = bitcast i8* %_pot_address_in_parent_stack_196 to i64*
  %48 = select i1 %_cond1_n_cond2_cond3_203, i64* %_address_in_parent_stack_bt_205, i64* %_allin_new_bt_49
  %_new_load_206 = load i64, i64* %48, align 8
  %49 = add i64 %_new_load_206, 1, !mcsema_real_eip !81
  %50 = xor i64 %49, %_new_load_206, !mcsema_real_eip !81
  %51 = and i64 %50, 16, !mcsema_real_eip !81
  %52 = icmp ne i64 %51, 0, !mcsema_real_eip !81
  store i1 %52, i1* %AF, align 1, !mcsema_real_eip !81
  %53 = icmp slt i64 %49, 0
  store i1 %53, i1* %SF, align 1, !mcsema_real_eip !81
  %54 = icmp eq i64 %49, 0, !mcsema_real_eip !81
  store i1 %54, i1* %ZF, align 1, !mcsema_real_eip !81
  %55 = xor i64 %_new_load_206, -9223372036854775808, !mcsema_real_eip !81
  %56 = and i64 %50, %55, !mcsema_real_eip !81
  %57 = icmp slt i64 %56, 0
  store i1 %57, i1* %OF, align 1, !mcsema_real_eip !81
  %58 = trunc i64 %49 to i8, !mcsema_real_eip !81
  %59 = call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !81
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !81
  %62 = icmp eq i64 %_new_load_206, -1
  store i1 %62, i1* %CF, align 1, !mcsema_real_eip !81
  store i64 %49, i64* %XAX, align 8, !mcsema_real_eip !81
  store i64 %49, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !82
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -24
  %_ptr_to_int_207 = ptrtoint i8* %_new_gep_54 to i64
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_207, %_local_end_to_int_
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  %_address_in_parent_stack_bt_220._allin_new_bt_55.v = select i1 %_cond1_n_cond2_cond3_218, i8* %_pot_address_in_parent_stack_211, i8* %_new_gep_54
  %_address_in_parent_stack_bt_220._allin_new_bt_55 = bitcast i8* %_address_in_parent_stack_bt_220._allin_new_bt_55.v to i64*
  %_new_load_221 = load i64, i64* %_address_in_parent_stack_bt_220._allin_new_bt_55, align 8
  store i64 %_new_load_221, i64* %XAX, align 8, !mcsema_real_eip !83
  %63 = inttoptr i64 %_new_load_221 to i8*, !mcsema_real_eip !84
  %_offset_above_rbp_224 = sub i64 %_new_load_221, %_local_end_to_int_
  %_pot_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_224
  %_cond1_226 = icmp ult i8* %_local_stack_end_ptr_, %63
  %_cond2_1_227 = icmp ugt i8* %63, %_parent_stack_end_ptr_
  %_cond2_2_228 = icmp ult i8* %63, %_parent_stack_start_ptr_
  %_cond2_229 = or i1 %_cond2_1_227, %_cond2_2_228
  %_cond4_230 = icmp ule i8* %_pot_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond1_n_cond2_231 = and i1 %_cond1_226, %_cond2_229
  %_cond1_n_cond2_cond3_232 = and i1 %_cond4_230, %_cond1_n_cond2_231
  %64 = select i1 %_cond1_n_cond2_cond3_232, i8* %_pot_address_in_parent_stack_225, i8* %63
  %_new_load_234 = load i8, i8* %64, align 1
  store i8 %_new_load_234, i8* %CL.88, align 1, !mcsema_real_eip !84
  br label %block_0x125, !mcsema_real_eip !85

block_0x17a:                                      ; preds = %block_0x125
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !64
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.92 = load i64, i64* %XSP, align 8, !mcsema_real_eip !86
  %_ptr_to_int_235 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59 to i64
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %_local_end_to_int_
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  %_address_in_parent_stack_bt_248._allin_new_bt_60.v = select i1 %_cond1_n_cond2_cond3_246, i8* %_pot_address_in_parent_stack_239, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59
  %_address_in_parent_stack_bt_248._allin_new_bt_60 = bitcast i8* %_address_in_parent_stack_bt_248._allin_new_bt_60.v to i64*
  %_new_load_249 = load i64, i64* %_address_in_parent_stack_bt_248._allin_new_bt_60, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_249 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_249, i64* %XBP, align 8, !mcsema_real_eip !86
  %_new_gep_61 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 8
  %65 = add i64 %RSP_val.92, 8, !mcsema_real_eip !86
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_, align 8
  store i64 %65, i64* %XSP, align 8, !mcsema_real_eip !86
  %_new_gep_63 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 16
  %66 = add i64 %RSP_val.92, 16, !mcsema_real_eip !87
  %_ptr_to_int_250 = ptrtoint i8* %_new_gep_61 to i64
  %_offset_above_rbp_253 = sub i64 %_ptr_to_int_250, %_local_end_to_int_
  %_pot_address_in_parent_stack_254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_253
  %_cond1_255 = icmp ugt i8* %_new_gep_61, %_local_stack_end_ptr_
  %_cond2_1_256 = icmp ugt i8* %_new_gep_61, %_parent_stack_end_ptr_
  %_cond2_2_257 = icmp ult i8* %_new_gep_61, %_parent_stack_start_ptr_
  %_cond2_258 = or i1 %_cond2_1_256, %_cond2_2_257
  %_cond4_259 = icmp ule i8* %_pot_address_in_parent_stack_254, %_parent_stack_end_ptr_
  %_cond1_n_cond2_260 = and i1 %_cond1_255, %_cond2_258
  %_cond1_n_cond2_cond3_261 = and i1 %_cond1_n_cond2_260, %_cond4_259
  %.v7 = select i1 %_cond1_n_cond2_cond3_261, i8* %_pot_address_in_parent_stack_254, i8* %_new_gep_61
  %67 = bitcast i8* %.v7 to i64*
  %_new_load_264 = load i64, i64* %67, align 8
  store i64 %_new_load_264, i64* %XIP, align 8, !mcsema_real_eip !87
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_, align 8
  store i64 %66, i64* %XSP, align 8, !mcsema_real_eip !87
  ret void, !mcsema_real_eip !87
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.3(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
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
  %RSP_val.95 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %1 = add i64 %RSP_val.95, -8
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
  %RDI_val.99 = load i64, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 %RDI_val.99, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  %ESI.101 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.102 = load i32, i32* %ESI.101, align 4, !mcsema_real_eip !6
  %6 = bitcast i8* %_new_gep_17 to i32*
  store i32 %ESI_val.102, i32* %6, align 4, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 24
  %7 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %7, align 8, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %8 = sext i32 %ESI_val.102 to i64, !mcsema_real_eip !8
  %9 = shl nsw i64 %8, 3, !mcsema_real_eip !9
  %10 = icmp slt i32 %ESI_val.102, 0
  store i1 %10, i1* %CF, align 1, !mcsema_real_eip !9
  %11 = icmp eq i32 %ESI_val.102, 0
  store i1 %11, i1* %ZF, align 1, !mcsema_real_eip !9
  store i1 %10, i1* %SF, align 1, !mcsema_real_eip !9
  %12 = trunc i64 %9 to i8, !mcsema_real_eip !9
  %13 = call i8 @llvm.ctpop.i8(i8 %12), !mcsema_real_eip !9
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  store i1 %15, i1* %PF, align 1, !mcsema_real_eip !9
  store i64 %9, i64* %XDI, align 8, !mcsema_real_eip !9
  %_new_gep_26 = getelementptr inbounds [48 x i8], [48 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %16 = add i64 %RSP_val.95, -48
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
  %EAX.112 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
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
  %_cond1_165 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_162
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
  %RSP_val.121 = load i64, i64* %XSP, align 8, !mcsema_real_eip !20
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 -8
  %42 = add i64 %RSP_val.121, -8
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !20
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %42, i64* %XSP, align 8, !mcsema_real_eip !20
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_90.1(%RegState* nonnull %0, i8* %_new_gep_50, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_95 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i64 8
  store i8* %_gep_fix_95, i8** %_RSP_ptr_, align 8
  %EAX_val.123 = load i32, i32* %EAX.112, align 4, !mcsema_real_eip !21
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !21
  %43 = trunc i32 %EAX_val.123 to i8, !mcsema_real_eip !21
  %44 = call i8 @llvm.ctpop.i8(i8 %43), !mcsema_real_eip !21
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  store i1 %46, i1* %PF, align 1, !mcsema_real_eip !21
  %47 = icmp eq i32 %EAX_val.123, 0, !mcsema_real_eip !21
  store i1 %47, i1* %ZF, align 1, !mcsema_real_eip !21
  %48 = icmp slt i32 %EAX_val.123, 0
  store i1 %48, i1* %SF, align 1, !mcsema_real_eip !21
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !21
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !21
  br i1 %47, label %block_0x55, label %block_0x67, !mcsema_real_eip !22

block_0x55:                                       ; preds = %block_0x33
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52, i64 -32
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
  store i64 %_new_load_204, i64* %XDI, align 8, !mcsema_real_eip !23
  %_new_load_219 = load i64, i64* %_address_in_parent_stack_bt_203._allin_new_bt_54, align 8
  store i64 %_new_load_219, i64* %XSI, align 8, !mcsema_real_eip !24
  %RSP_val.126 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %49 = add i64 %RSP_val.126, -8
  %_allin_new_bt_60 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !25
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i8** %_RSP_ptr_, align 8
  store i64 %49, i64* %XSP, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_100.2(%RegState* nonnull %0, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_94, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_96)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_98 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_99 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_98, i64 8
  store i8* %_gep_fix_99, i8** %_RSP_ptr_, align 8
  br label %block_0x67, !mcsema_real_eip !26

block_0x67:                                       ; preds = %block_0x33, %block_0x55
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -16
  %50 = ptrtoint i8* %_new_gep_62 to i64
  %51 = bitcast i8* %_new_gep_62 to i32*
  %_offset_above_rbp_223 = sub i64 %50, %_local_end_to_int_
  %_pot_address_in_parent_stack_224 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_223
  %_cond1_225 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_226 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_227 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_228 = or i1 %_cond2_1_226, %_cond2_2_227
  %_cond4_229 = icmp ule i8* %_pot_address_in_parent_stack_224, %_parent_stack_end_ptr_
  %_cond1_n_cond2_230 = and i1 %_cond1_225, %_cond2_228
  %_cond1_n_cond2_cond3_231 = and i1 %_cond1_n_cond2_230, %_cond4_229
  %_address_in_parent_stack_bt_233 = bitcast i8* %_pot_address_in_parent_stack_224 to i32*
  %_address_in_parent_stack_bt_233. = select i1 %_cond1_n_cond2_cond3_231, i32* %_address_in_parent_stack_bt_233, i32* %51
  %_new_load_234 = load i32, i32* %_address_in_parent_stack_bt_233., align 4
  %52 = add i32 %_new_load_234, 1, !mcsema_real_eip !28
  %53 = xor i32 %52, %_new_load_234, !mcsema_real_eip !28
  %54 = and i32 %53, 16, !mcsema_real_eip !28
  %55 = icmp ne i32 %54, 0, !mcsema_real_eip !28
  store i1 %55, i1* %AF, align 1, !mcsema_real_eip !28
  %56 = icmp slt i32 %52, 0
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !28
  %57 = icmp eq i32 %52, 0, !mcsema_real_eip !28
  store i1 %57, i1* %ZF, align 1, !mcsema_real_eip !28
  %58 = xor i32 %_new_load_234, -2147483648, !mcsema_real_eip !28
  %59 = and i32 %53, %58, !mcsema_real_eip !28
  %60 = icmp slt i32 %59, 0
  store i1 %60, i1* %OF, align 1, !mcsema_real_eip !28
  %61 = trunc i32 %52 to i8, !mcsema_real_eip !28
  %62 = call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !28
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  store i1 %64, i1* %PF, align 1, !mcsema_real_eip !28
  %65 = icmp eq i32 %_new_load_234, -1
  store i1 %65, i1* %CF, align 1, !mcsema_real_eip !28
  %66 = zext i32 %52 to i64, !mcsema_real_eip !28
  store i64 %66, i64* %XAX, align 8, !mcsema_real_eip !28
  store i32 %52, i32* %51, align 4, !mcsema_real_eip !29
  br label %block_0x27, !mcsema_real_eip !30

block_0x75:                                       ; preds = %block_0x27
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -24
  %_ptr_to_int_235 = ptrtoint i8* %_new_gep_68 to i64
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %_local_end_to_int_
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  %_address_in_parent_stack_bt_248._allin_new_bt_69.v = select i1 %_cond1_n_cond2_cond3_246, i8* %_pot_address_in_parent_stack_239, i8* %_new_gep_68
  %_address_in_parent_stack_bt_248._allin_new_bt_69 = bitcast i8* %_address_in_parent_stack_bt_248._allin_new_bt_69.v to i64*
  %_new_load_249 = load i64, i64* %_address_in_parent_stack_bt_248._allin_new_bt_69, align 8
  store i64 %_new_load_249, i64* %XAX, align 8, !mcsema_real_eip !31
  %67 = add i64 %_new_load_249, 1, !mcsema_real_eip !32
  %68 = inttoptr i64 %67 to i8*, !mcsema_real_eip !32
  store i8 2, i8* %68, align 1, !mcsema_real_eip !32
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_70 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.135 = load i64, i64* %XSP, align 8, !mcsema_real_eip !33
  %_new_gep_71 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_70, i64 32
  %69 = add i64 %RSP_val.135, 32, !mcsema_real_eip !33
  %_trans_p2i_72 = ptrtoint i8* %_new_gep_71 to i64
  %_trans_p2i_73 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_70 to i64
  %_trans_xor_74 = xor i64 %_trans_p2i_72, %_trans_p2i_73
  %70 = and i64 %_trans_xor_74, 16, !mcsema_real_eip !33
  %71 = icmp ne i64 %70, 0, !mcsema_real_eip !33
  store i1 %71, i1* %AF, align 1, !mcsema_real_eip !33
  %72 = icmp slt i64 %69, 0
  store i1 %72, i1* %SF, align 1, !mcsema_real_eip !33
  %_trans_icmp_eq_76 = icmp eq i8* %_new_gep_71, null
  store i1 %_trans_icmp_eq_76, i1* %ZF, align 1, !mcsema_real_eip !33
  %73 = xor i64 %_trans_p2i_73, -9223372036854775808, !mcsema_real_eip !33
  %74 = and i64 %_trans_xor_74, %73, !mcsema_real_eip !33
  %75 = icmp slt i64 %74, 0
  store i1 %75, i1* %OF, align 1, !mcsema_real_eip !33
  %_trans_trunc_83 = trunc i64 %_trans_p2i_72 to i8
  %76 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_83), !mcsema_real_eip !33
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !33
  %_trans_icmp_ne_85 = icmp ne i64 %RSP_val.135, %_trans_p2i_72
  store i1 %_trans_icmp_ne_85, i1* %CF, align 1, !mcsema_real_eip !33
  store volatile i8* %_new_gep_71, i8** %_RSP_ptr_, align 8
  store i64 %69, i64* %XSP, align 8, !mcsema_real_eip !33
  %_offset_above_rbp_253 = sub i64 %_trans_p2i_72, %_local_end_to_int_
  %_pot_address_in_parent_stack_254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_253
  %_cond1_255 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_256 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_257 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_258 = or i1 %_cond2_1_256, %_cond2_2_257
  %_cond4_259 = icmp ule i8* %_pot_address_in_parent_stack_254, %_parent_stack_end_ptr_
  %_cond1_n_cond2_260 = and i1 %_cond1_255, %_cond2_258
  %_cond1_n_cond2_cond3_261 = and i1 %_cond1_n_cond2_260, %_cond4_259
  %.v5 = select i1 %_cond1_n_cond2_cond3_261, i8* %_pot_address_in_parent_stack_254, i8* %_new_gep_71
  %79 = bitcast i8* %.v5 to i64*
  %_new_load_264 = load i64, i64* %79, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_264 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_264, i64* %XBP, align 8, !mcsema_real_eip !34
  %_new_gep_88 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_70, i64 40
  %80 = add i64 %RSP_val.135, 40, !mcsema_real_eip !34
  store volatile i8* %_new_gep_88, i8** %_RSP_ptr_, align 8
  store i64 %80, i64* %XSP, align 8, !mcsema_real_eip !34
  %_new_gep_90 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_70, i64 48
  %81 = add i64 %RSP_val.135, 48, !mcsema_real_eip !35
  %_ptr_to_int_265 = ptrtoint i8* %_new_gep_88 to i64
  %_offset_above_rbp_268 = sub i64 %_ptr_to_int_265, %_local_end_to_int_
  %_pot_address_in_parent_stack_269 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_268
  %_cond1_270 = icmp ugt i8* %_new_gep_88, %_local_stack_end_ptr_
  %_cond2_1_271 = icmp ugt i8* %_new_gep_88, %_parent_stack_end_ptr_
  %_cond2_2_272 = icmp ult i8* %_new_gep_88, %_parent_stack_start_ptr_
  %_cond2_273 = or i1 %_cond2_1_271, %_cond2_2_272
  %_cond4_274 = icmp ule i8* %_pot_address_in_parent_stack_269, %_parent_stack_end_ptr_
  %_cond1_n_cond2_275 = and i1 %_cond1_270, %_cond2_273
  %_cond1_n_cond2_cond3_276 = and i1 %_cond1_n_cond2_275, %_cond4_274
  %_address_in_parent_stack_bt_278._allin_new_bt_91.v = select i1 %_cond1_n_cond2_cond3_276, i8* %_pot_address_in_parent_stack_269, i8* %_new_gep_88
  %_address_in_parent_stack_bt_278._allin_new_bt_91 = bitcast i8* %_address_in_parent_stack_bt_278._allin_new_bt_91.v to i64*
  %_new_load_279 = load i64, i64* %_address_in_parent_stack_bt_278._allin_new_bt_91, align 8
  store i64 %_new_load_279, i64* %XIP, align 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_90, i8** %_RSP_ptr_, align 8
  store i64 %81, i64* %XSP, align 8, !mcsema_real_eip !35
  ret void, !mcsema_real_eip !35
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
!23 = !{i64 85}
!24 = !{i64 89}
!25 = !{i64 93}
!26 = !{i64 98}
!27 = !{i64 103}
!28 = !{i64 106}
!29 = !{i64 109}
!30 = !{i64 112}
!31 = !{i64 117}
!32 = !{i64 121}
!33 = !{i64 125}
!34 = !{i64 129}
!35 = !{i64 130}
!36 = !{i64 144}
!37 = !{i64 145}
!38 = !{i64 148}
!39 = !{i64 152}
!40 = !{i64 156}
!41 = !{i64 167}
!42 = !{i64 172}
!43 = !{i64 174}
!44 = !{i64 177}
!45 = !{i64 181}
!46 = !{i64 187}
!47 = !{i64 191}
!48 = !{i64 193}
!49 = !{i64 196}
!50 = !{i64 203}
!51 = !{i64 206}
!52 = !{i64 209}
!53 = !{i64 212}
!54 = !{i64 215}
!55 = !{i64 219}
!56 = !{i64 223}
!57 = !{i64 225}
!58 = !{i64 231}
!59 = !{i64 238}
!60 = !{i64 243}
!61 = !{i64 246}
!62 = !{i64 250}
!63 = !{i64 251}
!64 = !{i64 256}
!65 = !{i64 257}
!66 = !{i64 284}
!67 = !{i64 288}
!68 = !{i64 293}
!69 = !{i64 297}
!70 = !{i64 300}
!71 = !{i64 306}
!72 = !{i64 310}
!73 = !{i64 313}
!74 = !{i64 319}
!75 = !{i64 326}
!76 = !{i64 331}
!77 = !{i64 334}
!78 = !{i64 340}
!79 = !{i64 344}
!80 = !{i64 348}
!81 = !{i64 356}
!82 = !{i64 360}
!83 = !{i64 364}
!84 = !{i64 368}
!85 = !{i64 373}
!86 = !{i64 378}
!87 = !{i64 379}
