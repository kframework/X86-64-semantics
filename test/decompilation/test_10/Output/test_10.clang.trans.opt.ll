; ModuleID = 'Output/test_10.clang.trans.opt.bc'
source_filename = "Output/test_10.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl demo3;"
module asm "  .type demo3,@function"
module asm "demo3:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size demo3,0b-demo3;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_6 = alloca [41 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_6, i64 0, i64 41
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
  %_new_gep_ = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_6, i64 0, i64 33
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_6, i64 0, i64 25
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %RDI_val.4 = load i64, i64* %XDI, align 8
  store i64 %RDI_val.4, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_6, i64 0, i64 17
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %RSI_val.6 = load i64, i64* %XSI, align 8
  store i64 %RSI_val.6, i64* %_allin_new_bt_7, align 8, !mcsema_real_eip !5
  %3 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_12 = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_6, i64 0, i64 9
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  store i64 %RDI_val.4, i64* %_allin_new_bt_13, align 8, !mcsema_real_eip !6
  %_new_gep_18 = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_6, i64 0, i64 1
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  store i64 %RSI_val.6, i64* %_allin_new_bt_19, align 8, !mcsema_real_eip !7
  store i64 %RDI_val.4, i64* %XSI, align 8, !mcsema_real_eip !8
  %4 = inttoptr i64 %RDI_val.4 to i8*, !mcsema_real_eip !9
  %5 = load i8, i8* %4, align 1, !mcsema_real_eip !9
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 %5, i8* %AL.15, align 1, !mcsema_real_eip !9
  %CL.43 = bitcast i64* %XCX to i8*
  br label %block_0x25, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x54, %entry
  %_load_rbp_ptr_53.sink = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5314, %block_0x54 ], [ %_new_gep_, %entry ]
  %.sink3 = phi i8 [ %67, %block_0x54 ], [ %5, %entry ]
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_53.sink, i64 -33
  store i8 %.sink3, i8* %_new_gep_57, align 1
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2611 = load i8*, i8** %3, align 8
  %_new_gep_27 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2611, i64 -33
  %6 = load i8, i8* %_new_gep_27, align 1, !mcsema_real_eip !10
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %XAX, align 8, !mcsema_real_eip !10
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !11
  %9 = call i8 @llvm.ctpop.i8(i8 %6), !mcsema_real_eip !11
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  store i1 %11, i1* %PF, align 1, !mcsema_real_eip !11
  %12 = icmp eq i8 %6, 0
  store i1 %12, i1* %ZF, align 1, !mcsema_real_eip !11
  %13 = icmp slt i8 %6, 0
  store i1 %13, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !11
  br i1 %12, label %block_0x7a, label %block_0x32, !mcsema_real_eip !12

block_0x32:                                       ; preds = %block_0x25
  %14 = load i8, i8* %_new_gep_27, align 1, !mcsema_real_eip !13
  %15 = sext i8 %14 to i64
  %16 = and i64 %15, 4294967295
  store i64 %16, i64* %XAX, align 8, !mcsema_real_eip !13
  %17 = sext i8 %14 to i32
  %18 = add nsw i32 %17, -47
  %19 = xor i32 %18, %17, !mcsema_real_eip !14
  %20 = and i32 %19, 16, !mcsema_real_eip !14
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !14
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !14
  %22 = trunc i32 %18 to i8, !mcsema_real_eip !14
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !14
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !14
  %26 = icmp eq i32 %18, 0, !mcsema_real_eip !14
  store i1 %26, i1* %ZF, align 1, !mcsema_real_eip !14
  %27 = icmp slt i8 %14, 47
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !14
  %28 = icmp ult i8 %14, 47
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !14
  %29 = and i32 %19, %17, !mcsema_real_eip !14
  %30 = icmp slt i32 %29, 0
  store i1 %30, i1* %OF, align 1, !mcsema_real_eip !14
  br i1 %26, label %block_0x3f, label %block_0x4b, !mcsema_real_eip !15

block_0x3f:                                       ; preds = %block_0x32
  %_new_gep_33 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2611, i64 -32
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %31 = load i64, i64* %_allin_new_bt_34, align 8, !mcsema_real_eip !16
  store i64 %31, i64* %XAX, align 8, !mcsema_real_eip !16
  br label %block_0x54, !mcsema_real_eip !17

block_0x4b:                                       ; preds = %block_0x32
  %32 = load i8, i8* %_new_gep_27, align 1, !mcsema_real_eip !18
  store i8 %32, i8* %AL.15, align 1, !mcsema_real_eip !18
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2611, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %33 = load i64, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !19
  store i64 %33, i64* %XCX, align 8, !mcsema_real_eip !19
  br label %block_0x54, !mcsema_real_eip !20

block_0x54:                                       ; preds = %block_0x4b, %block_0x3f
  %.sink2 = phi i64 [ %33, %block_0x4b ], [ %31, %block_0x3f ]
  %.sink = phi i8 [ %32, %block_0x4b ], [ 92, %block_0x3f ]
  %34 = inttoptr i64 %.sink2 to i8*
  store i8 %.sink, i8* %34, align 1
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4112 = load i8*, i8** %3, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4112, i64 -24
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %35 = load i64, i64* %_allin_new_bt_43, align 8, !mcsema_real_eip !20
  %36 = add i64 %35, 1, !mcsema_real_eip !21
  %37 = xor i64 %36, %35, !mcsema_real_eip !21
  %38 = and i64 %37, 16, !mcsema_real_eip !21
  %39 = icmp ne i64 %38, 0, !mcsema_real_eip !21
  store i1 %39, i1* %AF, align 1, !mcsema_real_eip !21
  %40 = icmp slt i64 %36, 0
  store i1 %40, i1* %SF, align 1, !mcsema_real_eip !21
  %41 = icmp eq i64 %36, 0, !mcsema_real_eip !21
  store i1 %41, i1* %ZF, align 1, !mcsema_real_eip !21
  %42 = xor i64 %35, -9223372036854775808, !mcsema_real_eip !21
  %43 = and i64 %37, %42, !mcsema_real_eip !21
  %44 = icmp slt i64 %43, 0
  store i1 %44, i1* %OF, align 1, !mcsema_real_eip !21
  %45 = trunc i64 %36 to i8, !mcsema_real_eip !21
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !21
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  store i1 %48, i1* %PF, align 1, !mcsema_real_eip !21
  %49 = icmp eq i64 %35, -1
  store i1 %49, i1* %CF, align 1, !mcsema_real_eip !21
  store i64 %36, i64* %XAX, align 8, !mcsema_real_eip !21
  store i64 %36, i64* %_allin_new_bt_43, align 8, !mcsema_real_eip !22
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4713 = load i8*, i8** %3, align 8
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4713, i64 -32
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %50 = load i64, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !23
  %51 = add i64 %50, 1, !mcsema_real_eip !24
  %52 = xor i64 %51, %50, !mcsema_real_eip !24
  %53 = and i64 %52, 16, !mcsema_real_eip !24
  %54 = icmp ne i64 %53, 0, !mcsema_real_eip !24
  store i1 %54, i1* %AF, align 1, !mcsema_real_eip !24
  %55 = icmp slt i64 %51, 0
  store i1 %55, i1* %SF, align 1, !mcsema_real_eip !24
  %56 = icmp eq i64 %51, 0, !mcsema_real_eip !24
  store i1 %56, i1* %ZF, align 1, !mcsema_real_eip !24
  %57 = xor i64 %50, -9223372036854775808, !mcsema_real_eip !24
  %58 = and i64 %52, %57, !mcsema_real_eip !24
  %59 = icmp slt i64 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !24
  %60 = trunc i64 %51 to i8, !mcsema_real_eip !24
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !24
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  store i1 %63, i1* %PF, align 1, !mcsema_real_eip !24
  %64 = icmp eq i64 %50, -1
  store i1 %64, i1* %CF, align 1, !mcsema_real_eip !24
  store i64 %51, i64* %XAX, align 8, !mcsema_real_eip !24
  store i64 %51, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5314 = load i8*, i8** %3, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5314, i64 -24
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %65 = load i64, i64* %_allin_new_bt_55, align 8, !mcsema_real_eip !26
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !26
  %66 = inttoptr i64 %65 to i8*, !mcsema_real_eip !27
  %67 = load i8, i8* %66, align 1, !mcsema_real_eip !27
  store i8 %67, i8* %CL.43, align 1, !mcsema_real_eip !27
  br label %block_0x25, !mcsema_real_eip !28

block_0x7a:                                       ; preds = %block_0x25
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.47 = load i64, i64* %XSP, align 8, !mcsema_real_eip !29
  %_allin_new_bt_60 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59 to i64*
  %68 = load i64, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !29
  store volatile i64 %68, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %68, i64* %XBP, align 8, !mcsema_real_eip !29
  %_new_gep_61 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 8
  %69 = add i64 %RSP_val.47, 8, !mcsema_real_eip !29
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_, align 8
  store i64 %69, i64* %XSP, align 8, !mcsema_real_eip !29
  %_new_gep_63 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 16
  %70 = add i64 %RSP_val.47, 16, !mcsema_real_eip !30
  %_allin_new_bt_64 = bitcast i8* %_new_gep_61 to i64*
  %71 = load i64, i64* %_allin_new_bt_64, align 8, !mcsema_real_eip !30
  store i64 %71, i64* %XIP, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_, align 8
  store i64 %70, i64* %XSP, align 8, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_4 = alloca [41 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_4, i64 0, i64 41
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [41 x i8], [41 x i8]* %_local_stack_start_ptr_4, i64 0, i64 33
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
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
  store i64 %_new_load_94, i64* %XSI, align 8, !mcsema_real_eip !8
  %7 = inttoptr i64 %_new_load_94 to i8*, !mcsema_real_eip !9
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
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 %_new_load_107, i8* %AL.15, align 1, !mcsema_real_eip !9
  %CL.43 = bitcast i64* %XCX to i8*
  br label %block_0x25, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x54, %entry
  %_load_rbp_ptr_53.sink = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, %block_0x54 ], [ %_new_gep_, %entry ]
  %_new_load_234.sink = phi i8 [ %_new_load_234, %block_0x54 ], [ %_new_load_107, %entry ]
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
  store i64 %10, i64* %XAX, align 8, !mcsema_real_eip !10
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !11
  %11 = call i8 @llvm.ctpop.i8(i8 %_new_load_120), !mcsema_real_eip !11
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  store i1 %13, i1* %PF, align 1, !mcsema_real_eip !11
  %14 = icmp eq i8 %_new_load_120, 0
  store i1 %14, i1* %ZF, align 1, !mcsema_real_eip !11
  %15 = icmp slt i8 %_new_load_120, 0
  store i1 %15, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !11
  br i1 %14, label %block_0x7a, label %block_0x32, !mcsema_real_eip !12

block_0x32:                                       ; preds = %block_0x25
  %_new_load_133 = load i8, i8* %_pot_address_in_parent_stack_111., align 1
  %16 = sext i8 %_new_load_133 to i64
  %17 = and i64 %16, 4294967295
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !13
  %18 = sext i8 %_new_load_133 to i32
  %19 = add nsw i32 %18, -47
  %20 = xor i32 %19, %18, !mcsema_real_eip !14
  %21 = and i32 %20, 16, !mcsema_real_eip !14
  %22 = icmp ne i32 %21, 0, !mcsema_real_eip !14
  store i1 %22, i1* %AF, align 1, !mcsema_real_eip !14
  %23 = trunc i32 %19 to i8, !mcsema_real_eip !14
  %24 = call i8 @llvm.ctpop.i8(i8 %23), !mcsema_real_eip !14
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  store i1 %26, i1* %PF, align 1, !mcsema_real_eip !14
  %27 = icmp eq i32 %19, 0, !mcsema_real_eip !14
  store i1 %27, i1* %ZF, align 1, !mcsema_real_eip !14
  %28 = icmp slt i8 %_new_load_133, 47
  store i1 %28, i1* %SF, align 1, !mcsema_real_eip !14
  %29 = icmp ult i8 %_new_load_133, 47
  store i1 %29, i1* %CF, align 1, !mcsema_real_eip !14
  %30 = and i32 %20, %18, !mcsema_real_eip !14
  %31 = icmp slt i32 %30, 0
  store i1 %31, i1* %OF, align 1, !mcsema_real_eip !14
  br i1 %27, label %block_0x3f, label %block_0x4b, !mcsema_real_eip !15

block_0x3f:                                       ; preds = %block_0x32
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
  store i64 %_new_load_148, i64* %XAX, align 8, !mcsema_real_eip !16
  br label %block_0x54, !mcsema_real_eip !17

block_0x4b:                                       ; preds = %block_0x32
  %_new_load_161 = load i8, i8* %_pot_address_in_parent_stack_111., align 1
  store i8 %_new_load_161, i8* %AL.15, align 1, !mcsema_real_eip !18
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
  store i64 %_new_load_176, i64* %XCX, align 8, !mcsema_real_eip !19
  br label %block_0x54, !mcsema_real_eip !20

block_0x54:                                       ; preds = %block_0x4b, %block_0x3f
  %_new_load_176.sink = phi i64 [ %_new_load_176, %block_0x4b ], [ %_new_load_148, %block_0x3f ]
  %_new_load_161.sink = phi i8 [ %_new_load_161, %block_0x4b ], [ 92, %block_0x3f ]
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
  %34 = add i64 %_new_load_191, 1, !mcsema_real_eip !21
  %35 = xor i64 %34, %_new_load_191, !mcsema_real_eip !21
  %36 = and i64 %35, 16, !mcsema_real_eip !21
  %37 = icmp ne i64 %36, 0, !mcsema_real_eip !21
  store i1 %37, i1* %AF, align 1, !mcsema_real_eip !21
  %38 = icmp slt i64 %34, 0
  store i1 %38, i1* %SF, align 1, !mcsema_real_eip !21
  %39 = icmp eq i64 %34, 0, !mcsema_real_eip !21
  store i1 %39, i1* %ZF, align 1, !mcsema_real_eip !21
  %40 = xor i64 %_new_load_191, -9223372036854775808, !mcsema_real_eip !21
  %41 = and i64 %35, %40, !mcsema_real_eip !21
  %42 = icmp slt i64 %41, 0
  store i1 %42, i1* %OF, align 1, !mcsema_real_eip !21
  %43 = trunc i64 %34 to i8, !mcsema_real_eip !21
  %44 = call i8 @llvm.ctpop.i8(i8 %43), !mcsema_real_eip !21
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  store i1 %46, i1* %PF, align 1, !mcsema_real_eip !21
  %47 = icmp eq i64 %_new_load_191, -1
  store i1 %47, i1* %CF, align 1, !mcsema_real_eip !21
  store i64 %34, i64* %XAX, align 8, !mcsema_real_eip !21
  store i64 %34, i64* %_allin_new_bt_43, align 8, !mcsema_real_eip !22
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
  %49 = add i64 %_new_load_206, 1, !mcsema_real_eip !24
  %50 = xor i64 %49, %_new_load_206, !mcsema_real_eip !24
  %51 = and i64 %50, 16, !mcsema_real_eip !24
  %52 = icmp ne i64 %51, 0, !mcsema_real_eip !24
  store i1 %52, i1* %AF, align 1, !mcsema_real_eip !24
  %53 = icmp slt i64 %49, 0
  store i1 %53, i1* %SF, align 1, !mcsema_real_eip !24
  %54 = icmp eq i64 %49, 0, !mcsema_real_eip !24
  store i1 %54, i1* %ZF, align 1, !mcsema_real_eip !24
  %55 = xor i64 %_new_load_206, -9223372036854775808, !mcsema_real_eip !24
  %56 = and i64 %50, %55, !mcsema_real_eip !24
  %57 = icmp slt i64 %56, 0
  store i1 %57, i1* %OF, align 1, !mcsema_real_eip !24
  %58 = trunc i64 %49 to i8, !mcsema_real_eip !24
  %59 = call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !24
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !24
  %62 = icmp eq i64 %_new_load_206, -1
  store i1 %62, i1* %CF, align 1, !mcsema_real_eip !24
  store i64 %49, i64* %XAX, align 8, !mcsema_real_eip !24
  store i64 %49, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !25
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
  store i64 %_new_load_221, i64* %XAX, align 8, !mcsema_real_eip !26
  %63 = inttoptr i64 %_new_load_221 to i8*, !mcsema_real_eip !27
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
  store i8 %_new_load_234, i8* %CL.43, align 1, !mcsema_real_eip !27
  br label %block_0x25, !mcsema_real_eip !28

block_0x7a:                                       ; preds = %block_0x25
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.47 = load i64, i64* %XSP, align 8, !mcsema_real_eip !29
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
  store i64 %_new_load_249, i64* %XBP, align 8, !mcsema_real_eip !29
  %_new_gep_61 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 8
  %65 = add i64 %RSP_val.47, 8, !mcsema_real_eip !29
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_, align 8
  store i64 %65, i64* %XSP, align 8, !mcsema_real_eip !29
  %_new_gep_63 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 16
  %66 = add i64 %RSP_val.47, 16, !mcsema_real_eip !30
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
  store i64 %_new_load_264, i64* %XIP, align 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_, align 8
  store i64 %66, i64* %XSP, align 8, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 16}
!7 = !{i64 24}
!8 = !{i64 28}
!9 = !{i64 32}
!10 = !{i64 37}
!11 = !{i64 41}
!12 = !{i64 44}
!13 = !{i64 50}
!14 = !{i64 54}
!15 = !{i64 57}
!16 = !{i64 63}
!17 = !{i64 70}
!18 = !{i64 75}
!19 = !{i64 78}
!20 = !{i64 84}
!21 = !{i64 88}
!22 = !{i64 92}
!23 = !{i64 96}
!24 = !{i64 100}
!25 = !{i64 104}
!26 = !{i64 108}
!27 = !{i64 112}
!28 = !{i64 117}
!29 = !{i64 122}
!30 = !{i64 123}
