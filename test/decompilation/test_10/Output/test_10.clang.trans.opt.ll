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
  %CL.45 = bitcast i64* %XCX to i8*
  br label %block_0x25, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x54, %entry
  %_load_rbp_ptr_59.sink = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5914, %block_0x54 ], [ %_new_gep_, %entry ]
  %.sink3 = phi i8 [ %71, %block_0x54 ], [ %5, %entry ]
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_59.sink, i64 -33
  store i8 %.sink3, i8* %_new_gep_63, align 1
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

block_0x7a:                                       ; preds = %block_0x25
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !16
  %_allin_new_bt_33 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32 to i64*
  %31 = load i64, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !16
  store volatile i64 %31, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %31, i64* %XBP, align 8, !mcsema_real_eip !16
  %_new_gep_34 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 8
  %32 = add i64 %RSP_val.22, 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_, align 8
  store i64 %32, i64* %XSP, align 8, !mcsema_real_eip !16
  %_new_gep_36 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 16
  %33 = add i64 %RSP_val.22, 16, !mcsema_real_eip !17
  %_allin_new_bt_37 = bitcast i8* %_new_gep_34 to i64*
  %34 = load i64, i64* %_allin_new_bt_37, align 8, !mcsema_real_eip !17
  store i64 %34, i64* %XIP, align 8, !mcsema_real_eip !17
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_, align 8
  store i64 %33, i64* %XSP, align 8, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17

block_0x3f:                                       ; preds = %block_0x32
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2611, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %35 = load i64, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !18
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !18
  br label %block_0x54, !mcsema_real_eip !19

block_0x4b:                                       ; preds = %block_0x32
  %36 = load i8, i8* %_new_gep_27, align 1, !mcsema_real_eip !20
  store i8 %36, i8* %AL.15, align 1, !mcsema_real_eip !20
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2611, i64 -32
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %37 = load i64, i64* %_allin_new_bt_46, align 8, !mcsema_real_eip !21
  store i64 %37, i64* %XCX, align 8, !mcsema_real_eip !21
  br label %block_0x54, !mcsema_real_eip !18

block_0x54:                                       ; preds = %block_0x4b, %block_0x3f
  %.sink2 = phi i64 [ %37, %block_0x4b ], [ %35, %block_0x3f ]
  %.sink = phi i8 [ %36, %block_0x4b ], [ 92, %block_0x3f ]
  %38 = inttoptr i64 %.sink2 to i8*
  store i8 %.sink, i8* %38, align 1
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4712 = load i8*, i8** %3, align 8
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4712, i64 -24
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %39 = load i64, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !22
  %40 = add i64 %39, 1, !mcsema_real_eip !23
  %41 = xor i64 %40, %39, !mcsema_real_eip !23
  %42 = and i64 %41, 16, !mcsema_real_eip !23
  %43 = icmp ne i64 %42, 0, !mcsema_real_eip !23
  store i1 %43, i1* %AF, align 1, !mcsema_real_eip !23
  %44 = icmp slt i64 %40, 0
  store i1 %44, i1* %SF, align 1, !mcsema_real_eip !23
  %45 = icmp eq i64 %40, 0, !mcsema_real_eip !23
  store i1 %45, i1* %ZF, align 1, !mcsema_real_eip !23
  %46 = xor i64 %39, -9223372036854775808, !mcsema_real_eip !23
  %47 = and i64 %41, %46, !mcsema_real_eip !23
  %48 = icmp slt i64 %47, 0
  store i1 %48, i1* %OF, align 1, !mcsema_real_eip !23
  %49 = trunc i64 %40 to i8, !mcsema_real_eip !23
  %50 = call i8 @llvm.ctpop.i8(i8 %49), !mcsema_real_eip !23
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  store i1 %52, i1* %PF, align 1, !mcsema_real_eip !23
  %53 = icmp eq i64 %39, -1
  store i1 %53, i1* %CF, align 1, !mcsema_real_eip !23
  store i64 %40, i64* %XAX, align 8, !mcsema_real_eip !23
  store i64 %40, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !24
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5313 = load i8*, i8** %3, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5313, i64 -32
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %54 = load i64, i64* %_allin_new_bt_55, align 8, !mcsema_real_eip !25
  %55 = add i64 %54, 1, !mcsema_real_eip !26
  %56 = xor i64 %55, %54, !mcsema_real_eip !26
  %57 = and i64 %56, 16, !mcsema_real_eip !26
  %58 = icmp ne i64 %57, 0, !mcsema_real_eip !26
  store i1 %58, i1* %AF, align 1, !mcsema_real_eip !26
  %59 = icmp slt i64 %55, 0
  store i1 %59, i1* %SF, align 1, !mcsema_real_eip !26
  %60 = icmp eq i64 %55, 0, !mcsema_real_eip !26
  store i1 %60, i1* %ZF, align 1, !mcsema_real_eip !26
  %61 = xor i64 %54, -9223372036854775808, !mcsema_real_eip !26
  %62 = and i64 %56, %61, !mcsema_real_eip !26
  %63 = icmp slt i64 %62, 0
  store i1 %63, i1* %OF, align 1, !mcsema_real_eip !26
  %64 = trunc i64 %55 to i8, !mcsema_real_eip !26
  %65 = call i8 @llvm.ctpop.i8(i8 %64), !mcsema_real_eip !26
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  store i1 %67, i1* %PF, align 1, !mcsema_real_eip !26
  %68 = icmp eq i64 %54, -1
  store i1 %68, i1* %CF, align 1, !mcsema_real_eip !26
  store i64 %55, i64* %XAX, align 8, !mcsema_real_eip !26
  store i64 %55, i64* %_allin_new_bt_55, align 8, !mcsema_real_eip !27
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5914 = load i8*, i8** %3, align 8
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5914, i64 -24
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %69 = load i64, i64* %_allin_new_bt_61, align 8, !mcsema_real_eip !28
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !28
  %70 = inttoptr i64 %69 to i8*, !mcsema_real_eip !29
  %71 = load i8, i8* %70, align 1, !mcsema_real_eip !29
  store i8 %71, i8* %CL.45, align 1, !mcsema_real_eip !29
  br label %block_0x25, !mcsema_real_eip !30
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
  %_cond1_99 = icmp ugt i8* %7, %_local_stack_end_ptr_
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
  %CL.45 = bitcast i64* %XCX to i8*
  br label %block_0x25, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x54, %entry
  %_load_rbp_ptr_59.sink = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59, %block_0x54 ], [ %_new_gep_, %entry ]
  %_new_load_264.sink = phi i8 [ %_new_load_264, %block_0x54 ], [ %_new_load_107, %entry ]
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

block_0x7a:                                       ; preds = %block_0x25
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.22 = load i64, i64* %XSP, align 8, !mcsema_real_eip !16
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
  store i64 %_new_load_148, i64* %XBP, align 8, !mcsema_real_eip !16
  %_new_gep_34 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 8
  %32 = add i64 %RSP_val.22, 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_, align 8
  store i64 %32, i64* %XSP, align 8, !mcsema_real_eip !16
  %_new_gep_36 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 16
  %33 = add i64 %RSP_val.22, 16, !mcsema_real_eip !17
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
  store i64 %_new_load_163, i64* %XIP, align 8, !mcsema_real_eip !17
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_, align 8
  store i64 %33, i64* %XSP, align 8, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17

block_0x3f:                                       ; preds = %block_0x32
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
  store i64 %_new_load_178, i64* %XAX, align 8, !mcsema_real_eip !18
  br label %block_0x54, !mcsema_real_eip !19

block_0x4b:                                       ; preds = %block_0x32
  %_new_load_191 = load i8, i8* %_pot_address_in_parent_stack_111., align 1
  store i8 %_new_load_191, i8* %AL.15, align 1, !mcsema_real_eip !20
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
  store i64 %_new_load_206, i64* %XCX, align 8, !mcsema_real_eip !21
  br label %block_0x54, !mcsema_real_eip !18

block_0x54:                                       ; preds = %block_0x4b, %block_0x3f
  %_new_load_206.sink = phi i64 [ %_new_load_206, %block_0x4b ], [ %_new_load_178, %block_0x3f ]
  %_new_load_191.sink = phi i8 [ %_new_load_191, %block_0x4b ], [ 92, %block_0x3f ]
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
  %37 = add i64 %_new_load_221, 1, !mcsema_real_eip !23
  %38 = xor i64 %37, %_new_load_221, !mcsema_real_eip !23
  %39 = and i64 %38, 16, !mcsema_real_eip !23
  %40 = icmp ne i64 %39, 0, !mcsema_real_eip !23
  store i1 %40, i1* %AF, align 1, !mcsema_real_eip !23
  %41 = icmp slt i64 %37, 0
  store i1 %41, i1* %SF, align 1, !mcsema_real_eip !23
  %42 = icmp eq i64 %37, 0, !mcsema_real_eip !23
  store i1 %42, i1* %ZF, align 1, !mcsema_real_eip !23
  %43 = xor i64 %_new_load_221, -9223372036854775808, !mcsema_real_eip !23
  %44 = and i64 %38, %43, !mcsema_real_eip !23
  %45 = icmp slt i64 %44, 0
  store i1 %45, i1* %OF, align 1, !mcsema_real_eip !23
  %46 = trunc i64 %37 to i8, !mcsema_real_eip !23
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !23
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  store i1 %49, i1* %PF, align 1, !mcsema_real_eip !23
  %50 = icmp eq i64 %_new_load_221, -1
  store i1 %50, i1* %CF, align 1, !mcsema_real_eip !23
  store i64 %37, i64* %XAX, align 8, !mcsema_real_eip !23
  store i64 %37, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !24
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
  %52 = add i64 %_new_load_236, 1, !mcsema_real_eip !26
  %53 = xor i64 %52, %_new_load_236, !mcsema_real_eip !26
  %54 = and i64 %53, 16, !mcsema_real_eip !26
  %55 = icmp ne i64 %54, 0, !mcsema_real_eip !26
  store i1 %55, i1* %AF, align 1, !mcsema_real_eip !26
  %56 = icmp slt i64 %52, 0
  store i1 %56, i1* %SF, align 1, !mcsema_real_eip !26
  %57 = icmp eq i64 %52, 0, !mcsema_real_eip !26
  store i1 %57, i1* %ZF, align 1, !mcsema_real_eip !26
  %58 = xor i64 %_new_load_236, -9223372036854775808, !mcsema_real_eip !26
  %59 = and i64 %53, %58, !mcsema_real_eip !26
  %60 = icmp slt i64 %59, 0
  store i1 %60, i1* %OF, align 1, !mcsema_real_eip !26
  %61 = trunc i64 %52 to i8, !mcsema_real_eip !26
  %62 = call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !26
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  store i1 %64, i1* %PF, align 1, !mcsema_real_eip !26
  %65 = icmp eq i64 %_new_load_236, -1
  store i1 %65, i1* %CF, align 1, !mcsema_real_eip !26
  store i64 %52, i64* %XAX, align 8, !mcsema_real_eip !26
  store i64 %52, i64* %_allin_new_bt_55, align 8, !mcsema_real_eip !27
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
  store i64 %_new_load_251, i64* %XAX, align 8, !mcsema_real_eip !28
  %66 = inttoptr i64 %_new_load_251 to i8*, !mcsema_real_eip !29
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
  store i8 %_new_load_264, i8* %CL.45, align 1, !mcsema_real_eip !29
  br label %block_0x25, !mcsema_real_eip !30
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
!16 = !{i64 122}
!17 = !{i64 123}
!18 = !{i64 63}
!19 = !{i64 70}
!20 = !{i64 75}
!21 = !{i64 78}
!22 = !{i64 84}
!23 = !{i64 88}
!24 = !{i64 92}
!25 = !{i64 96}
!26 = !{i64 100}
!27 = !{i64 104}
!28 = !{i64 108}
!29 = !{i64 112}
!30 = !{i64 117}
