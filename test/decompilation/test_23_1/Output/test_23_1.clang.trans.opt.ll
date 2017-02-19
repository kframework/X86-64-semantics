; ModuleID = 'Output/test_23_1.clang.trans.opt.bc'
source_filename = "Output/test_23_1.clang.bc"
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

%0 = type <{ [184 x i8] }>
%1 = type <{ [13 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xe8 = internal constant %0 <{ [184 x i8] c"\85\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\93\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00w\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00i\00\00\00\00\00\00\00" }>, align 64
@data_0x1a0 = internal constant %1 <{ [13 x i8] c"ssssdddd\00%d\0A\00" }>, align 64

; Function Attrs: naked
declare void @__mcsema_detach_call_value() local_unnamed_addr #0

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_5 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_5, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_5, i64 0, i64 56
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_5, i64 0, i64 8
  %3 = add i64 %RSP_val.1, -56
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
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 48 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !4
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_5, i64 0, i64 52
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_5, i64 0, i64 48
  %14 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %14, align 4, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_5, i64 0, i64 44
  %15 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %15, align 4, !mcsema_real_eip !7
  store i64 7234017284060312435, i64* %XAX, align 8, !mcsema_real_eip !8
  %_new_gep_23 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_5, i64 0, i64 35
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 7234017284060312435, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !9
  %16 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*), align 8, !mcsema_real_eip !10
  %CL.9 = bitcast i64* %XCX to i8*, !mcsema_real_eip !10
  store i8 %16, i8* %CL.9, align 1, !mcsema_real_eip !10
  %_new_gep_26 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_5, i64 0, i64 43
  store i8 %16, i8* %_new_gep_26, align 1, !mcsema_real_eip !11
  %ECX.17 = bitcast i64* %XCX to i32*
  %EAX.32 = bitcast i64* %XAX to i32*
  br label %block_0x33, !mcsema_real_eip !12

block_0x33:                                       ; preds = %block_0xad, %entry
  %17 = phi i32 [ %.pre, %block_0xad ], [ 0, %entry ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2814 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2814.pre, %block_0xad ], [ %_new_gep_, %entry ]
  %18 = add i32 %17, -8
  %19 = xor i32 %18, %17, !mcsema_real_eip !12
  %20 = and i32 %19, 16, !mcsema_real_eip !12
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !12
  store i1 %21, i1* %AF, align 1, !mcsema_real_eip !12
  %22 = trunc i32 %18 to i8, !mcsema_real_eip !12
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !12
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  store i1 %25, i1* %PF, align 1, !mcsema_real_eip !12
  %26 = icmp eq i32 %18, 0, !mcsema_real_eip !12
  store i1 %26, i1* %ZF, align 1, !mcsema_real_eip !12
  %27 = icmp slt i32 %18, 0
  store i1 %27, i1* %SF, align 1, !mcsema_real_eip !12
  %28 = icmp ult i32 %17, 8, !mcsema_real_eip !12
  store i1 %28, i1* %CF, align 1, !mcsema_real_eip !12
  %29 = and i32 %19, %17, !mcsema_real_eip !12
  %30 = icmp slt i32 %29, 0
  store i1 %30, i1* %OF, align 1, !mcsema_real_eip !12
  %tmp = xor i1 %27, %30
  br i1 %tmp, label %block_0x3d, label %block_0xbb, !mcsema_real_eip !13

block_0x3d:                                       ; preds = %block_0x33
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2814, i64 -8
  %31 = bitcast i8* %_new_gep_29 to i32*
  %32 = load i32, i32* %31, align 4, !mcsema_real_eip !14
  %33 = sext i32 %32 to i64, !mcsema_real_eip !14
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !14
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2814, i64 -21
  %_new_gep_36 = getelementptr i8, i8* %_new_gep_35, i64 %33
  %34 = load i8, i8* %_new_gep_36, align 1, !mcsema_real_eip !15
  %35 = sext i8 %34 to i32
  %36 = add nsw i32 %35, -97, !mcsema_real_eip !16
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %XAX, align 8, !mcsema_real_eip !17
  %38 = add nsw i32 %35, -119
  %39 = xor i32 %38, %36, !mcsema_real_eip !18
  %40 = and i32 %39, 16
  %41 = icmp eq i32 %40, 0
  store i1 %41, i1* %AF, align 1, !mcsema_real_eip !18
  %42 = trunc i32 %38 to i8, !mcsema_real_eip !18
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !18
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  store i1 %45, i1* %PF, align 1, !mcsema_real_eip !18
  %46 = icmp eq i32 %38, 0, !mcsema_real_eip !18
  store i1 %46, i1* %ZF, align 1, !mcsema_real_eip !18
  %47 = icmp slt i8 %34, 119
  store i1 %47, i1* %SF, align 1, !mcsema_real_eip !18
  %48 = icmp ult i32 %36, 22, !mcsema_real_eip !18
  store i1 %48, i1* %CF, align 1, !mcsema_real_eip !18
  %49 = and i32 %39, %36, !mcsema_real_eip !18
  %50 = icmp slt i32 %49, 0
  store i1 %50, i1* %OF, align 1, !mcsema_real_eip !18
  %51 = zext i32 %38 to i64, !mcsema_real_eip !18
  store i64 %51, i64* %XCX, align 8, !mcsema_real_eip !18
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2814, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  store i64 %37, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !19
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4118 = load i8*, i8** %12, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4118, i64 -36
  %ECX_val.27 = load i32, i32* %ECX.17, align 4, !mcsema_real_eip !20
  %52 = bitcast i8* %_new_gep_42 to i32*
  store i32 %ECX_val.27, i32* %52, align 4, !mcsema_real_eip !20
  %53 = load i1, i1* %ZF, align 1, !mcsema_real_eip !21
  %54 = load i1, i1* %CF, align 1, !mcsema_real_eip !21
  %.demorgan = or i1 %53, %54
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7119 = load i8*, i8** %12, align 8
  br i1 %.demorgan, label %block_0x5b, label %block_0xa1, !mcsema_real_eip !21

block_0x5b:                                       ; preds = %block_0x3d
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7119, i64 -32
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %55 = load i64, i64* %_allin_new_bt_46, align 8, !mcsema_real_eip !22
  store i64 %55, i64* %XAX, align 8, !mcsema_real_eip !22
  %56 = shl i64 %55, 3
  %57 = add i64 %56, ptrtoint (%0* @data_0xe8 to i64), !mcsema_real_eip !23
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !23
  %59 = load i64, i64* %58, align 8, !mcsema_real_eip !23
  store i64 %59, i64* %XCX, align 8, !mcsema_real_eip !23
  switch i64 %59, label %168 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !24

block_0x69:                                       ; preds = %block_0x5b
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7119, i64 -12
  %60 = bitcast i8* %_new_gep_48 to i32*
  %61 = load i32, i32* %60, align 4, !mcsema_real_eip !25
  %62 = zext i32 %61 to i64, !mcsema_real_eip !25
  store i64 %62, i64* %XAX, align 8, !mcsema_real_eip !25
  %63 = add i32 %61, 1, !mcsema_real_eip !26
  %64 = xor i32 %63, %61, !mcsema_real_eip !26
  %65 = and i32 %64, 16, !mcsema_real_eip !26
  %66 = icmp ne i32 %65, 0, !mcsema_real_eip !26
  store i1 %66, i1* %AF, align 1, !mcsema_real_eip !26
  %67 = icmp slt i32 %63, 0
  store i1 %67, i1* %SF, align 1, !mcsema_real_eip !26
  %68 = icmp eq i32 %63, 0, !mcsema_real_eip !26
  store i1 %68, i1* %ZF, align 1, !mcsema_real_eip !26
  %69 = xor i32 %61, -2147483648, !mcsema_real_eip !26
  %70 = and i32 %64, %69, !mcsema_real_eip !26
  %71 = icmp slt i32 %70, 0
  store i1 %71, i1* %OF, align 1, !mcsema_real_eip !26
  %72 = trunc i32 %63 to i8, !mcsema_real_eip !26
  %73 = call i8 @llvm.ctpop.i8(i8 %72), !mcsema_real_eip !26
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  store i1 %75, i1* %PF, align 1, !mcsema_real_eip !26
  %76 = icmp eq i32 %61, -1
  store i1 %76, i1* %CF, align 1, !mcsema_real_eip !26
  br label %block_0xad, !mcsema_real_eip !27

block_0x77:                                       ; preds = %block_0x5b
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7119, i64 -12
  %77 = bitcast i8* %_new_gep_54 to i32*
  %78 = load i32, i32* %77, align 4, !mcsema_real_eip !28
  %79 = zext i32 %78 to i64, !mcsema_real_eip !28
  store i64 %79, i64* %XAX, align 8, !mcsema_real_eip !28
  %80 = add i32 %78, 2, !mcsema_real_eip !29
  %81 = xor i32 %80, %78, !mcsema_real_eip !29
  %82 = and i32 %81, 16, !mcsema_real_eip !29
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !29
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !29
  %84 = icmp slt i32 %80, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !29
  %85 = icmp eq i32 %80, 0, !mcsema_real_eip !29
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !29
  %86 = xor i32 %78, -2147483648, !mcsema_real_eip !29
  %87 = and i32 %81, %86, !mcsema_real_eip !29
  %88 = icmp slt i32 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !29
  %89 = trunc i32 %80 to i8, !mcsema_real_eip !29
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !29
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  store i1 %92, i1* %PF, align 1, !mcsema_real_eip !29
  %93 = icmp ugt i32 %78, -3
  store i1 %93, i1* %CF, align 1, !mcsema_real_eip !29
  br label %block_0xad, !mcsema_real_eip !30

block_0x85:                                       ; preds = %block_0x5b
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7119, i64 -12
  %94 = bitcast i8* %_new_gep_60 to i32*
  %95 = load i32, i32* %94, align 4, !mcsema_real_eip !31
  %96 = zext i32 %95 to i64, !mcsema_real_eip !31
  store i64 %96, i64* %XAX, align 8, !mcsema_real_eip !31
  %97 = add i32 %95, -2
  %98 = xor i32 %97, %95, !mcsema_real_eip !32
  %99 = and i32 %98, 16, !mcsema_real_eip !32
  %100 = icmp ne i32 %99, 0, !mcsema_real_eip !32
  store i1 %100, i1* %AF, align 1, !mcsema_real_eip !32
  %101 = trunc i32 %97 to i8, !mcsema_real_eip !32
  %102 = call i8 @llvm.ctpop.i8(i8 %101), !mcsema_real_eip !32
  %103 = and i8 %102, 1
  %104 = icmp eq i8 %103, 0
  store i1 %104, i1* %PF, align 1, !mcsema_real_eip !32
  %105 = icmp eq i32 %97, 0, !mcsema_real_eip !32
  store i1 %105, i1* %ZF, align 1, !mcsema_real_eip !32
  %106 = icmp slt i32 %97, 0
  store i1 %106, i1* %SF, align 1, !mcsema_real_eip !32
  %107 = icmp ult i32 %95, 2, !mcsema_real_eip !32
  store i1 %107, i1* %CF, align 1, !mcsema_real_eip !32
  %108 = and i32 %98, %95, !mcsema_real_eip !32
  %109 = icmp slt i32 %108, 0
  store i1 %109, i1* %OF, align 1, !mcsema_real_eip !32
  br label %block_0xad, !mcsema_real_eip !33

block_0x93:                                       ; preds = %block_0x5b
  %_new_gep_66 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7119, i64 -12
  %110 = bitcast i8* %_new_gep_66 to i32*
  %111 = load i32, i32* %110, align 4, !mcsema_real_eip !34
  %112 = zext i32 %111 to i64, !mcsema_real_eip !34
  store i64 %112, i64* %XAX, align 8, !mcsema_real_eip !34
  %113 = add i32 %111, -1
  %114 = xor i32 %113, %111, !mcsema_real_eip !35
  %115 = and i32 %114, 16, !mcsema_real_eip !35
  %116 = icmp ne i32 %115, 0, !mcsema_real_eip !35
  store i1 %116, i1* %AF, align 1, !mcsema_real_eip !35
  %117 = trunc i32 %113 to i8, !mcsema_real_eip !35
  %118 = call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !35
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  store i1 %120, i1* %PF, align 1, !mcsema_real_eip !35
  %121 = icmp eq i32 %113, 0, !mcsema_real_eip !35
  store i1 %121, i1* %ZF, align 1, !mcsema_real_eip !35
  %122 = icmp slt i32 %113, 0
  store i1 %122, i1* %SF, align 1, !mcsema_real_eip !35
  %123 = icmp eq i32 %111, 0
  store i1 %123, i1* %CF, align 1, !mcsema_real_eip !35
  %124 = and i32 %114, %111, !mcsema_real_eip !35
  %125 = icmp slt i32 %124, 0
  store i1 %125, i1* %OF, align 1, !mcsema_real_eip !35
  br label %block_0xad, !mcsema_real_eip !36

block_0xa1:                                       ; preds = %block_0x3d, %block_0x5b
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7119, i64 -4
  br label %block_0xd9, !mcsema_real_eip !37

block_0xad:                                       ; preds = %block_0x93, %block_0x85, %block_0x77, %block_0x69
  %.sink2 = phi i32 [ %113, %block_0x93 ], [ %97, %block_0x85 ], [ %80, %block_0x77 ], [ %63, %block_0x69 ]
  %.sink = phi i32* [ %110, %block_0x93 ], [ %94, %block_0x85 ], [ %77, %block_0x77 ], [ %60, %block_0x69 ]
  %126 = zext i32 %.sink2 to i64
  store i64 %126, i64* %XAX, align 8
  store i32 %.sink2, i32* %.sink, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7420 = load i8*, i8** %12, align 8
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7420, i64 -8
  %127 = bitcast i8* %_new_gep_75 to i32*
  %128 = load i32, i32* %127, align 4, !mcsema_real_eip !38
  %129 = add i32 %128, 1, !mcsema_real_eip !39
  %130 = xor i32 %129, %128, !mcsema_real_eip !39
  %131 = and i32 %130, 16, !mcsema_real_eip !39
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !39
  store i1 %132, i1* %AF, align 1, !mcsema_real_eip !39
  %133 = icmp slt i32 %129, 0
  store i1 %133, i1* %SF, align 1, !mcsema_real_eip !39
  %134 = icmp eq i32 %129, 0, !mcsema_real_eip !39
  store i1 %134, i1* %ZF, align 1, !mcsema_real_eip !39
  %135 = xor i32 %128, -2147483648, !mcsema_real_eip !39
  %136 = and i32 %130, %135, !mcsema_real_eip !39
  %137 = icmp slt i32 %136, 0
  store i1 %137, i1* %OF, align 1, !mcsema_real_eip !39
  %138 = trunc i32 %129 to i8, !mcsema_real_eip !39
  %139 = call i8 @llvm.ctpop.i8(i8 %138), !mcsema_real_eip !39
  %140 = and i8 %139, 1
  %141 = icmp eq i8 %140, 0
  store i1 %141, i1* %PF, align 1, !mcsema_real_eip !39
  %142 = icmp eq i32 %128, -1
  store i1 %142, i1* %CF, align 1, !mcsema_real_eip !39
  %143 = zext i32 %129 to i64, !mcsema_real_eip !39
  store i64 %143, i64* %XAX, align 8, !mcsema_real_eip !39
  store i32 %129, i32* %127, align 4, !mcsema_real_eip !40
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2814.pre = load i8*, i8** %12, align 8
  %_new_gep_29.phi.trans.insert = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2814.pre, i64 -8
  %.phi.trans.insert = bitcast i8* %_new_gep_29.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 4
  br label %block_0x33, !mcsema_real_eip !41

block_0xbb:                                       ; preds = %block_0x33
  store i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64* %XDI, align 8, !mcsema_real_eip !42
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2814, i64 -12
  %144 = bitcast i8* %_new_gep_81 to i32*
  %145 = load i32, i32* %144, align 4, !mcsema_real_eip !43
  %146 = zext i32 %145 to i64, !mcsema_real_eip !43
  store i64 %146, i64* %XSI, align 8, !mcsema_real_eip !43
  %AL.63 = bitcast i64* %XAX to i8*, !mcsema_real_eip !44
  store i8 0, i8* %AL.63, align 1, !mcsema_real_eip !44
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_83 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.66 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_84 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_83, i64 -8
  %147 = add i64 %RSP_val.66, -8
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_85, align 8, !mcsema_real_eip !45
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_, align 8
  store i64 %147, i64* %XSP, align 8, !mcsema_real_eip !45
  %148 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64 %146)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %148, i64* %XAX, align 8, !mcsema_real_eip !45
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8615 = load i8*, i8** %12, align 8
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8615, i64 -4
  %149 = bitcast i8* %_new_gep_87 to i32*
  store i32 1, i32* %149, align 4, !mcsema_real_eip !46
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8916 = load i8*, i8** %12, align 8
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8916, i64 -40
  %EAX_val.70 = load i32, i32* %EAX.32, align 4, !mcsema_real_eip !47
  br label %block_0xd9, !mcsema_real_eip !48

block_0xd9:                                       ; preds = %block_0xbb, %block_0xa1
  %_allin_new_bt_91.sink.in = phi i8* [ %_new_gep_90, %block_0xbb ], [ %_new_gep_72, %block_0xa1 ]
  %EAX_val.70.sink = phi i32 [ %EAX_val.70, %block_0xbb ], [ 1, %block_0xa1 ]
  %150 = bitcast i8* %_allin_new_bt_91.sink.in to i32*
  store i32 %EAX_val.70.sink, i32* %150, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9217 = load i8*, i8** %12, align 8
  %_new_gep_93 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9217, i64 -4
  %151 = bitcast i8* %_new_gep_93 to i32*
  %152 = load i32, i32* %151, align 4, !mcsema_real_eip !48
  %153 = zext i32 %152 to i64, !mcsema_real_eip !48
  store i64 %153, i64* %XAX, align 8, !mcsema_real_eip !48
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_95 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.72 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %_new_gep_96 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_95, i64 48
  %154 = add i64 %RSP_val.72, 48, !mcsema_real_eip !49
  %_trans_p2i_97 = ptrtoint i8* %_new_gep_96 to i64
  %_trans_p2i_98 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_95 to i64
  %_trans_xor_99 = xor i64 %_trans_p2i_97, %_trans_p2i_98
  %155 = and i64 %_trans_xor_99, 16
  %156 = icmp eq i64 %155, 0
  store i1 %156, i1* %AF, align 1, !mcsema_real_eip !49
  %157 = icmp slt i64 %154, 0
  store i1 %157, i1* %SF, align 1, !mcsema_real_eip !49
  %_trans_icmp_eq_101 = icmp eq i8* %_new_gep_96, null
  store i1 %_trans_icmp_eq_101, i1* %ZF, align 1, !mcsema_real_eip !49
  %158 = xor i64 %_trans_p2i_98, -9223372036854775808, !mcsema_real_eip !49
  %159 = and i64 %_trans_xor_99, %158, !mcsema_real_eip !49
  %160 = icmp slt i64 %159, 0
  store i1 %160, i1* %OF, align 1, !mcsema_real_eip !49
  %_trans_trunc_108 = trunc i64 %_trans_p2i_97 to i8
  %161 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_108), !mcsema_real_eip !49
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !49
  %_trans_icmp_ne_110 = icmp ne i64 %RSP_val.72, %_trans_p2i_97
  store i1 %_trans_icmp_ne_110, i1* %CF, align 1, !mcsema_real_eip !49
  store volatile i8* %_new_gep_96, i8** %_RSP_ptr_, align 8
  store i64 %154, i64* %XSP, align 8, !mcsema_real_eip !49
  %_allin_new_bt_112 = bitcast i8* %_new_gep_96 to i64*
  %164 = load i64, i64* %_allin_new_bt_112, align 8, !mcsema_real_eip !50
  store volatile i64 %164, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %164, i64* %XBP, align 8, !mcsema_real_eip !50
  %_new_gep_113 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_95, i64 56
  %165 = add i64 %RSP_val.72, 56, !mcsema_real_eip !50
  store volatile i8* %_new_gep_113, i8** %_RSP_ptr_, align 8
  store i64 %165, i64* %XSP, align 8, !mcsema_real_eip !50
  %_new_gep_115 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_95, i64 64
  %166 = add i64 %RSP_val.72, 64, !mcsema_real_eip !51
  %_allin_new_bt_116 = bitcast i8* %_new_gep_113 to i64*
  %167 = load i64, i64* %_allin_new_bt_116, align 8, !mcsema_real_eip !51
  store i64 %167, i64* %XIP, align 8, !mcsema_real_eip !51
  store volatile i8* %_new_gep_115, i8** %_RSP_ptr_, align 8
  store i64 %166, i64* %XSP, align 8, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51

; <label>:168:                                    ; preds = %block_0x5b
  store i64 %59, i64* %XIP, align 8, !mcsema_real_eip !24
  call void @__mcsema_detach_call_value()
  ret void, !mcsema_real_eip !24
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) local_unnamed_addr #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_4 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 56
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -56
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
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 48 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 52
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 48
  %12 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %12, align 4, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 44
  %13 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !7
  store i64 7234017284060312435, i64* %XAX, align 8, !mcsema_real_eip !8
  %_new_gep_23 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 35
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 7234017284060312435, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !9
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8), %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ult i8* %_local_stack_end_ptr_, inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*)
  %_cond2_1_ = icmp ult i8* %_parent_stack_end_ptr_, inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*)
  %_cond2_2_ = icmp ugt i8* %_parent_stack_start_ptr_, inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*)
  %_cond2_ = or i1 %_cond2_2_, %_cond2_1_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond2_, %_cond1_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %14 = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*)
  %_new_load_ = load i8, i8* %14, align 1
  %CL.9 = bitcast i64* %XCX to i8*, !mcsema_real_eip !10
  store i8 %_new_load_, i8* %CL.9, align 1, !mcsema_real_eip !10
  %_new_gep_26 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_4, i64 0, i64 43
  store i8 %_new_load_, i8* %_new_gep_26, align 1, !mcsema_real_eip !11
  %ECX.17 = bitcast i64* %XCX to i32*
  %EAX.32 = bitcast i64* %XAX to i32*
  br label %block_0x33, !mcsema_real_eip !12

block_0x33:                                       ; preds = %block_0xad, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28.pre, %block_0xad ], [ %_new_gep_, %entry ]
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -8
  %15 = ptrtoint i8* %_new_gep_29 to i64
  %_offset_above_rbp_120 = sub i64 %15, %_local_end_to_int_
  %_pot_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_120
  %_cond1_122 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_123 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_124 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_125 = or i1 %_cond2_1_123, %_cond2_2_124
  %_cond4_126 = icmp ule i8* %_pot_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond1_n_cond2_127 = and i1 %_cond1_122, %_cond2_125
  %_cond1_n_cond2_cond3_128 = and i1 %_cond1_n_cond2_127, %_cond4_126
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_128, i8* %_pot_address_in_parent_stack_121, i8* %_new_gep_29
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_130 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %16 = add i32 %_new_load_130, -8
  %17 = xor i32 %16, %_new_load_130, !mcsema_real_eip !12
  %18 = and i32 %17, 16, !mcsema_real_eip !12
  %19 = icmp ne i32 %18, 0, !mcsema_real_eip !12
  store i1 %19, i1* %AF, align 1, !mcsema_real_eip !12
  %20 = trunc i32 %16 to i8, !mcsema_real_eip !12
  %21 = call i8 @llvm.ctpop.i8(i8 %20), !mcsema_real_eip !12
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  store i1 %23, i1* %PF, align 1, !mcsema_real_eip !12
  %24 = icmp eq i32 %16, 0, !mcsema_real_eip !12
  store i1 %24, i1* %ZF, align 1, !mcsema_real_eip !12
  %25 = icmp slt i32 %16, 0
  store i1 %25, i1* %SF, align 1, !mcsema_real_eip !12
  %26 = icmp ult i32 %_new_load_130, 8, !mcsema_real_eip !12
  store i1 %26, i1* %CF, align 1, !mcsema_real_eip !12
  %27 = and i32 %17, %_new_load_130, !mcsema_real_eip !12
  %28 = icmp slt i32 %27, 0
  store i1 %28, i1* %OF, align 1, !mcsema_real_eip !12
  %tmp = xor i1 %25, %28
  br i1 %tmp, label %block_0x3d, label %block_0xbb, !mcsema_real_eip !13

block_0x3d:                                       ; preds = %block_0x33
  %_new_load_145 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %29 = sext i32 %_new_load_145 to i64, !mcsema_real_eip !14
  store i64 %29, i64* %XAX, align 8, !mcsema_real_eip !14
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -21
  %_new_gep_36 = getelementptr i8, i8* %_new_gep_35, i64 %29
  %30 = ptrtoint i8* %_new_gep_36 to i64
  %_offset_above_rbp_148 = sub i64 %30, %_local_end_to_int_
  %_pot_address_in_parent_stack_149 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_148
  %_cond1_150 = icmp ugt i8* %_new_gep_36, %_local_stack_end_ptr_
  %_cond2_1_151 = icmp ugt i8* %_new_gep_36, %_parent_stack_end_ptr_
  %_cond2_2_152 = icmp ult i8* %_new_gep_36, %_parent_stack_start_ptr_
  %_cond2_153 = or i1 %_cond2_1_151, %_cond2_2_152
  %_cond4_154 = icmp ule i8* %_pot_address_in_parent_stack_149, %_parent_stack_end_ptr_
  %_cond1_n_cond2_155 = and i1 %_cond1_150, %_cond2_153
  %_cond1_n_cond2_cond3_156 = and i1 %_cond1_n_cond2_155, %_cond4_154
  %31 = select i1 %_cond1_n_cond2_cond3_156, i8* %_pot_address_in_parent_stack_149, i8* %_new_gep_36
  %_new_load_158 = load i8, i8* %31, align 1
  %32 = sext i8 %_new_load_158 to i32
  %33 = add nsw i32 %32, -97, !mcsema_real_eip !16
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %XAX, align 8, !mcsema_real_eip !17
  %35 = add nsw i32 %32, -119
  %36 = xor i32 %35, %33, !mcsema_real_eip !18
  %37 = and i32 %36, 16
  %38 = icmp eq i32 %37, 0
  store i1 %38, i1* %AF, align 1, !mcsema_real_eip !18
  %39 = trunc i32 %35 to i8, !mcsema_real_eip !18
  %40 = call i8 @llvm.ctpop.i8(i8 %39), !mcsema_real_eip !18
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  store i1 %42, i1* %PF, align 1, !mcsema_real_eip !18
  %43 = icmp eq i32 %35, 0, !mcsema_real_eip !18
  store i1 %43, i1* %ZF, align 1, !mcsema_real_eip !18
  %44 = icmp slt i8 %_new_load_158, 119
  store i1 %44, i1* %SF, align 1, !mcsema_real_eip !18
  %45 = icmp ult i32 %33, 22, !mcsema_real_eip !18
  store i1 %45, i1* %CF, align 1, !mcsema_real_eip !18
  %46 = and i32 %36, %33, !mcsema_real_eip !18
  %47 = icmp slt i32 %46, 0
  store i1 %47, i1* %OF, align 1, !mcsema_real_eip !18
  %48 = zext i32 %35 to i64, !mcsema_real_eip !18
  store i64 %48, i64* %XCX, align 8, !mcsema_real_eip !18
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  store i64 %34, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !19
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -36
  %ECX_val.27 = load i32, i32* %ECX.17, align 4, !mcsema_real_eip !20
  %49 = bitcast i8* %_new_gep_42 to i32*
  store i32 %ECX_val.27, i32* %49, align 4, !mcsema_real_eip !20
  %50 = load i1, i1* %ZF, align 1, !mcsema_real_eip !21
  %51 = load i1, i1* %CF, align 1, !mcsema_real_eip !21
  %.demorgan = or i1 %50, %51
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_, align 8
  br i1 %.demorgan, label %block_0x5b, label %block_0xa1, !mcsema_real_eip !21

block_0x5b:                                       ; preds = %block_0x3d
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -32
  %_ptr_to_int_159 = ptrtoint i8* %_new_gep_45 to i64
  %_offset_above_rbp_162 = sub i64 %_ptr_to_int_159, %_local_end_to_int_
  %_pot_address_in_parent_stack_163 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_162
  %_cond1_164 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_165 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_166 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_167 = or i1 %_cond2_1_165, %_cond2_2_166
  %_cond4_168 = icmp ule i8* %_pot_address_in_parent_stack_163, %_parent_stack_end_ptr_
  %_cond1_n_cond2_169 = and i1 %_cond1_164, %_cond2_167
  %_cond1_n_cond2_cond3_170 = and i1 %_cond1_n_cond2_169, %_cond4_168
  %_address_in_parent_stack_bt_172._allin_new_bt_46.v = select i1 %_cond1_n_cond2_cond3_170, i8* %_pot_address_in_parent_stack_163, i8* %_new_gep_45
  %_address_in_parent_stack_bt_172._allin_new_bt_46 = bitcast i8* %_address_in_parent_stack_bt_172._allin_new_bt_46.v to i64*
  %_new_load_173 = load i64, i64* %_address_in_parent_stack_bt_172._allin_new_bt_46, align 8
  store i64 %_new_load_173, i64* %XAX, align 8, !mcsema_real_eip !22
  %52 = shl i64 %_new_load_173, 3
  %53 = add i64 %52, ptrtoint (%0* @data_0xe8 to i64), !mcsema_real_eip !23
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !23
  %_ptr_bt_176 = inttoptr i64 %53 to i8*
  %_offset_above_rbp_177 = sub i64 %53, %_local_end_to_int_
  %_pot_address_in_parent_stack_178 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_177
  %_cond1_179 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_176
  %_cond2_1_180 = icmp ugt i8* %_ptr_bt_176, %_parent_stack_end_ptr_
  %_cond2_2_181 = icmp ult i8* %_ptr_bt_176, %_parent_stack_start_ptr_
  %_cond2_182 = or i1 %_cond2_1_180, %_cond2_2_181
  %_cond4_183 = icmp ule i8* %_pot_address_in_parent_stack_178, %_parent_stack_end_ptr_
  %_cond1_n_cond2_184 = and i1 %_cond1_179, %_cond2_182
  %_cond1_n_cond2_cond3_185 = and i1 %_cond4_183, %_cond1_n_cond2_184
  %_address_in_parent_stack_bt_187 = bitcast i8* %_pot_address_in_parent_stack_178 to i64*
  %55 = select i1 %_cond1_n_cond2_cond3_185, i64* %_address_in_parent_stack_bt_187, i64* %54
  %_new_load_188 = load i64, i64* %55, align 8
  store i64 %_new_load_188, i64* %XCX, align 8, !mcsema_real_eip !23
  switch i64 %_new_load_188, label %161 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !24

block_0x69:                                       ; preds = %block_0x5b
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -12
  %56 = ptrtoint i8* %_new_gep_48 to i64
  %57 = bitcast i8* %_new_gep_48 to i32*
  %_offset_above_rbp_192 = sub i64 %56, %_local_end_to_int_
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %_new_gep_48, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %_new_gep_48, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %_new_gep_48, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  %_address_in_parent_stack_bt_202 = bitcast i8* %_pot_address_in_parent_stack_193 to i32*
  %_address_in_parent_stack_bt_202. = select i1 %_cond1_n_cond2_cond3_200, i32* %_address_in_parent_stack_bt_202, i32* %57
  %_new_load_203 = load i32, i32* %_address_in_parent_stack_bt_202., align 4
  %58 = zext i32 %_new_load_203 to i64, !mcsema_real_eip !25
  store i64 %58, i64* %XAX, align 8, !mcsema_real_eip !25
  %59 = add i32 %_new_load_203, 1, !mcsema_real_eip !26
  %60 = xor i32 %59, %_new_load_203, !mcsema_real_eip !26
  %61 = and i32 %60, 16, !mcsema_real_eip !26
  %62 = icmp ne i32 %61, 0, !mcsema_real_eip !26
  store i1 %62, i1* %AF, align 1, !mcsema_real_eip !26
  %63 = icmp slt i32 %59, 0
  store i1 %63, i1* %SF, align 1, !mcsema_real_eip !26
  %64 = icmp eq i32 %59, 0, !mcsema_real_eip !26
  store i1 %64, i1* %ZF, align 1, !mcsema_real_eip !26
  %65 = xor i32 %_new_load_203, -2147483648, !mcsema_real_eip !26
  %66 = and i32 %60, %65, !mcsema_real_eip !26
  %67 = icmp slt i32 %66, 0
  store i1 %67, i1* %OF, align 1, !mcsema_real_eip !26
  %68 = trunc i32 %59 to i8, !mcsema_real_eip !26
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !26
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  store i1 %71, i1* %PF, align 1, !mcsema_real_eip !26
  %72 = icmp eq i32 %_new_load_203, -1
  store i1 %72, i1* %CF, align 1, !mcsema_real_eip !26
  br label %block_0xad, !mcsema_real_eip !27

block_0x77:                                       ; preds = %block_0x5b
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -12
  %73 = ptrtoint i8* %_new_gep_54 to i64
  %74 = bitcast i8* %_new_gep_54 to i32*
  %_offset_above_rbp_207 = sub i64 %73, %_local_end_to_int_
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  %_address_in_parent_stack_bt_217 = bitcast i8* %_pot_address_in_parent_stack_208 to i32*
  %_address_in_parent_stack_bt_217. = select i1 %_cond1_n_cond2_cond3_215, i32* %_address_in_parent_stack_bt_217, i32* %74
  %_new_load_218 = load i32, i32* %_address_in_parent_stack_bt_217., align 4
  %75 = zext i32 %_new_load_218 to i64, !mcsema_real_eip !28
  store i64 %75, i64* %XAX, align 8, !mcsema_real_eip !28
  %76 = add i32 %_new_load_218, 2, !mcsema_real_eip !29
  %77 = xor i32 %76, %_new_load_218, !mcsema_real_eip !29
  %78 = and i32 %77, 16, !mcsema_real_eip !29
  %79 = icmp ne i32 %78, 0, !mcsema_real_eip !29
  store i1 %79, i1* %AF, align 1, !mcsema_real_eip !29
  %80 = icmp slt i32 %76, 0
  store i1 %80, i1* %SF, align 1, !mcsema_real_eip !29
  %81 = icmp eq i32 %76, 0, !mcsema_real_eip !29
  store i1 %81, i1* %ZF, align 1, !mcsema_real_eip !29
  %82 = xor i32 %_new_load_218, -2147483648, !mcsema_real_eip !29
  %83 = and i32 %77, %82, !mcsema_real_eip !29
  %84 = icmp slt i32 %83, 0
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !29
  %85 = trunc i32 %76 to i8, !mcsema_real_eip !29
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !29
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !29
  %89 = icmp ugt i32 %_new_load_218, -3
  store i1 %89, i1* %CF, align 1, !mcsema_real_eip !29
  br label %block_0xad, !mcsema_real_eip !30

block_0x85:                                       ; preds = %block_0x5b
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -12
  %90 = ptrtoint i8* %_new_gep_60 to i64
  %91 = bitcast i8* %_new_gep_60 to i32*
  %_offset_above_rbp_222 = sub i64 %90, %_local_end_to_int_
  %_pot_address_in_parent_stack_223 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_222
  %_cond1_224 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_225 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_226 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_227 = or i1 %_cond2_1_225, %_cond2_2_226
  %_cond4_228 = icmp ule i8* %_pot_address_in_parent_stack_223, %_parent_stack_end_ptr_
  %_cond1_n_cond2_229 = and i1 %_cond1_224, %_cond2_227
  %_cond1_n_cond2_cond3_230 = and i1 %_cond1_n_cond2_229, %_cond4_228
  %_address_in_parent_stack_bt_232 = bitcast i8* %_pot_address_in_parent_stack_223 to i32*
  %_address_in_parent_stack_bt_232. = select i1 %_cond1_n_cond2_cond3_230, i32* %_address_in_parent_stack_bt_232, i32* %91
  %_new_load_233 = load i32, i32* %_address_in_parent_stack_bt_232., align 4
  %92 = zext i32 %_new_load_233 to i64, !mcsema_real_eip !31
  store i64 %92, i64* %XAX, align 8, !mcsema_real_eip !31
  %93 = add i32 %_new_load_233, -2
  %94 = xor i32 %93, %_new_load_233, !mcsema_real_eip !32
  %95 = and i32 %94, 16, !mcsema_real_eip !32
  %96 = icmp ne i32 %95, 0, !mcsema_real_eip !32
  store i1 %96, i1* %AF, align 1, !mcsema_real_eip !32
  %97 = trunc i32 %93 to i8, !mcsema_real_eip !32
  %98 = call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !32
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  store i1 %100, i1* %PF, align 1, !mcsema_real_eip !32
  %101 = icmp eq i32 %93, 0, !mcsema_real_eip !32
  store i1 %101, i1* %ZF, align 1, !mcsema_real_eip !32
  %102 = icmp slt i32 %93, 0
  store i1 %102, i1* %SF, align 1, !mcsema_real_eip !32
  %103 = icmp ult i32 %_new_load_233, 2, !mcsema_real_eip !32
  store i1 %103, i1* %CF, align 1, !mcsema_real_eip !32
  %104 = and i32 %94, %_new_load_233, !mcsema_real_eip !32
  %105 = icmp slt i32 %104, 0
  store i1 %105, i1* %OF, align 1, !mcsema_real_eip !32
  br label %block_0xad, !mcsema_real_eip !33

block_0x93:                                       ; preds = %block_0x5b
  %_new_gep_66 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -12
  %106 = ptrtoint i8* %_new_gep_66 to i64
  %107 = bitcast i8* %_new_gep_66 to i32*
  %_offset_above_rbp_237 = sub i64 %106, %_local_end_to_int_
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond1_n_cond2_244, %_cond4_243
  %_address_in_parent_stack_bt_247 = bitcast i8* %_pot_address_in_parent_stack_238 to i32*
  %_address_in_parent_stack_bt_247. = select i1 %_cond1_n_cond2_cond3_245, i32* %_address_in_parent_stack_bt_247, i32* %107
  %_new_load_248 = load i32, i32* %_address_in_parent_stack_bt_247., align 4
  %108 = zext i32 %_new_load_248 to i64, !mcsema_real_eip !34
  store i64 %108, i64* %XAX, align 8, !mcsema_real_eip !34
  %109 = add i32 %_new_load_248, -1
  %110 = xor i32 %109, %_new_load_248, !mcsema_real_eip !35
  %111 = and i32 %110, 16, !mcsema_real_eip !35
  %112 = icmp ne i32 %111, 0, !mcsema_real_eip !35
  store i1 %112, i1* %AF, align 1, !mcsema_real_eip !35
  %113 = trunc i32 %109 to i8, !mcsema_real_eip !35
  %114 = call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !35
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  store i1 %116, i1* %PF, align 1, !mcsema_real_eip !35
  %117 = icmp eq i32 %109, 0, !mcsema_real_eip !35
  store i1 %117, i1* %ZF, align 1, !mcsema_real_eip !35
  %118 = icmp slt i32 %109, 0
  store i1 %118, i1* %SF, align 1, !mcsema_real_eip !35
  %119 = icmp eq i32 %_new_load_248, 0
  store i1 %119, i1* %CF, align 1, !mcsema_real_eip !35
  %120 = and i32 %110, %_new_load_248, !mcsema_real_eip !35
  %121 = icmp slt i32 %120, 0
  store i1 %121, i1* %OF, align 1, !mcsema_real_eip !35
  br label %block_0xad, !mcsema_real_eip !36

block_0xa1:                                       ; preds = %block_0x3d, %block_0x5b
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -4
  br label %block_0xd9, !mcsema_real_eip !37

block_0xad:                                       ; preds = %block_0x93, %block_0x85, %block_0x77, %block_0x69
  %.sink3 = phi i32 [ %109, %block_0x93 ], [ %93, %block_0x85 ], [ %76, %block_0x77 ], [ %59, %block_0x69 ]
  %.sink = phi i32* [ %107, %block_0x93 ], [ %91, %block_0x85 ], [ %74, %block_0x77 ], [ %57, %block_0x69 ]
  %122 = zext i32 %.sink3 to i64
  store i64 %122, i64* %XAX, align 8
  store i32 %.sink3, i32* %.sink, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_74, i64 -8
  %123 = ptrtoint i8* %_new_gep_75 to i64
  %124 = bitcast i8* %_new_gep_75 to i32*
  %_offset_above_rbp_252 = sub i64 %123, %_local_end_to_int_
  %_pot_address_in_parent_stack_253 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_252
  %_cond1_254 = icmp ugt i8* %_new_gep_75, %_local_stack_end_ptr_
  %_cond2_1_255 = icmp ugt i8* %_new_gep_75, %_parent_stack_end_ptr_
  %_cond2_2_256 = icmp ult i8* %_new_gep_75, %_parent_stack_start_ptr_
  %_cond2_257 = or i1 %_cond2_1_255, %_cond2_2_256
  %_cond4_258 = icmp ule i8* %_pot_address_in_parent_stack_253, %_parent_stack_end_ptr_
  %_cond1_n_cond2_259 = and i1 %_cond1_254, %_cond2_257
  %_cond1_n_cond2_cond3_260 = and i1 %_cond1_n_cond2_259, %_cond4_258
  %_address_in_parent_stack_bt_262 = bitcast i8* %_pot_address_in_parent_stack_253 to i32*
  %_address_in_parent_stack_bt_262. = select i1 %_cond1_n_cond2_cond3_260, i32* %_address_in_parent_stack_bt_262, i32* %124
  %_new_load_263 = load i32, i32* %_address_in_parent_stack_bt_262., align 4
  %125 = add i32 %_new_load_263, 1, !mcsema_real_eip !39
  %126 = xor i32 %125, %_new_load_263, !mcsema_real_eip !39
  %127 = and i32 %126, 16, !mcsema_real_eip !39
  %128 = icmp ne i32 %127, 0, !mcsema_real_eip !39
  store i1 %128, i1* %AF, align 1, !mcsema_real_eip !39
  %129 = icmp slt i32 %125, 0
  store i1 %129, i1* %SF, align 1, !mcsema_real_eip !39
  %130 = icmp eq i32 %125, 0, !mcsema_real_eip !39
  store i1 %130, i1* %ZF, align 1, !mcsema_real_eip !39
  %131 = xor i32 %_new_load_263, -2147483648, !mcsema_real_eip !39
  %132 = and i32 %126, %131, !mcsema_real_eip !39
  %133 = icmp slt i32 %132, 0
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !39
  %134 = trunc i32 %125 to i8, !mcsema_real_eip !39
  %135 = call i8 @llvm.ctpop.i8(i8 %134), !mcsema_real_eip !39
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  store i1 %137, i1* %PF, align 1, !mcsema_real_eip !39
  %138 = icmp eq i32 %_new_load_263, -1
  store i1 %138, i1* %CF, align 1, !mcsema_real_eip !39
  %139 = zext i32 %125 to i64, !mcsema_real_eip !39
  store i64 %139, i64* %XAX, align 8, !mcsema_real_eip !39
  store i32 %125, i32* %124, align 4, !mcsema_real_eip !40
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x33, !mcsema_real_eip !41

block_0xbb:                                       ; preds = %block_0x33
  store i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64* %XDI, align 8, !mcsema_real_eip !42
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -12
  %140 = ptrtoint i8* %_new_gep_81 to i64
  %_offset_above_rbp_267 = sub i64 %140, %_local_end_to_int_
  %_pot_address_in_parent_stack_268 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_267
  %_cond1_269 = icmp ugt i8* %_new_gep_81, %_local_stack_end_ptr_
  %_cond2_1_270 = icmp ugt i8* %_new_gep_81, %_parent_stack_end_ptr_
  %_cond2_2_271 = icmp ult i8* %_new_gep_81, %_parent_stack_start_ptr_
  %_cond2_272 = or i1 %_cond2_1_270, %_cond2_2_271
  %_cond4_273 = icmp ule i8* %_pot_address_in_parent_stack_268, %_parent_stack_end_ptr_
  %_cond1_n_cond2_274 = and i1 %_cond1_269, %_cond2_272
  %_cond1_n_cond2_cond3_275 = and i1 %_cond1_n_cond2_274, %_cond4_273
  %_address_in_parent_stack_bt_277..v = select i1 %_cond1_n_cond2_cond3_275, i8* %_pot_address_in_parent_stack_268, i8* %_new_gep_81
  %_address_in_parent_stack_bt_277. = bitcast i8* %_address_in_parent_stack_bt_277..v to i32*
  %_new_load_278 = load i32, i32* %_address_in_parent_stack_bt_277., align 4
  %141 = zext i32 %_new_load_278 to i64, !mcsema_real_eip !43
  store i64 %141, i64* %XSI, align 8, !mcsema_real_eip !43
  %AL.63 = bitcast i64* %XAX to i8*, !mcsema_real_eip !44
  store i8 0, i8* %AL.63, align 1, !mcsema_real_eip !44
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_83 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.66 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_84 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_83, i64 -8
  %142 = add i64 %RSP_val.66, -8
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_85, align 8, !mcsema_real_eip !45
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_, align 8
  store i64 %142, i64* %XSP, align 8, !mcsema_real_eip !45
  %143 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64 %141)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %143, i64* %XAX, align 8, !mcsema_real_eip !45
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86, i64 -4
  %144 = bitcast i8* %_new_gep_87 to i32*
  store i32 1, i32* %144, align 4, !mcsema_real_eip !46
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_89, i64 -40
  %EAX_val.70 = load i32, i32* %EAX.32, align 4, !mcsema_real_eip !47
  br label %block_0xd9, !mcsema_real_eip !48

block_0xd9:                                       ; preds = %block_0xbb, %block_0xa1
  %_allin_new_bt_91.sink.in = phi i8* [ %_new_gep_90, %block_0xbb ], [ %_new_gep_72, %block_0xa1 ]
  %EAX_val.70.sink = phi i32 [ %EAX_val.70, %block_0xbb ], [ 1, %block_0xa1 ]
  %145 = bitcast i8* %_allin_new_bt_91.sink.in to i32*
  store i32 %EAX_val.70.sink, i32* %145, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_93 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_92, i64 -4
  %146 = ptrtoint i8* %_new_gep_93 to i64
  %_offset_above_rbp_282 = sub i64 %146, %_local_end_to_int_
  %_pot_address_in_parent_stack_283 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_282
  %_cond1_284 = icmp ugt i8* %_new_gep_93, %_local_stack_end_ptr_
  %_cond2_1_285 = icmp ugt i8* %_new_gep_93, %_parent_stack_end_ptr_
  %_cond2_2_286 = icmp ult i8* %_new_gep_93, %_parent_stack_start_ptr_
  %_cond2_287 = or i1 %_cond2_1_285, %_cond2_2_286
  %_cond4_288 = icmp ule i8* %_pot_address_in_parent_stack_283, %_parent_stack_end_ptr_
  %_cond1_n_cond2_289 = and i1 %_cond1_284, %_cond2_287
  %_cond1_n_cond2_cond3_290 = and i1 %_cond1_n_cond2_289, %_cond4_288
  %_address_in_parent_stack_bt_292..v = select i1 %_cond1_n_cond2_cond3_290, i8* %_pot_address_in_parent_stack_283, i8* %_new_gep_93
  %_address_in_parent_stack_bt_292. = bitcast i8* %_address_in_parent_stack_bt_292..v to i32*
  %_new_load_293 = load i32, i32* %_address_in_parent_stack_bt_292., align 4
  %147 = zext i32 %_new_load_293 to i64, !mcsema_real_eip !48
  store i64 %147, i64* %XAX, align 8, !mcsema_real_eip !48
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_95 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.72 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %_new_gep_96 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_95, i64 48
  %148 = add i64 %RSP_val.72, 48, !mcsema_real_eip !49
  %_trans_p2i_97 = ptrtoint i8* %_new_gep_96 to i64
  %_trans_p2i_98 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_95 to i64
  %_trans_xor_99 = xor i64 %_trans_p2i_97, %_trans_p2i_98
  %149 = and i64 %_trans_xor_99, 16
  %150 = icmp eq i64 %149, 0
  store i1 %150, i1* %AF, align 1, !mcsema_real_eip !49
  %151 = icmp slt i64 %148, 0
  store i1 %151, i1* %SF, align 1, !mcsema_real_eip !49
  %_trans_icmp_eq_101 = icmp eq i8* %_new_gep_96, null
  store i1 %_trans_icmp_eq_101, i1* %ZF, align 1, !mcsema_real_eip !49
  %152 = xor i64 %_trans_p2i_98, -9223372036854775808, !mcsema_real_eip !49
  %153 = and i64 %_trans_xor_99, %152, !mcsema_real_eip !49
  %154 = icmp slt i64 %153, 0
  store i1 %154, i1* %OF, align 1, !mcsema_real_eip !49
  %_trans_trunc_108 = trunc i64 %_trans_p2i_97 to i8
  %155 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_108), !mcsema_real_eip !49
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  store i1 %157, i1* %PF, align 1, !mcsema_real_eip !49
  %_trans_icmp_ne_110 = icmp ne i64 %RSP_val.72, %_trans_p2i_97
  store i1 %_trans_icmp_ne_110, i1* %CF, align 1, !mcsema_real_eip !49
  store volatile i8* %_new_gep_96, i8** %_RSP_ptr_, align 8
  store i64 %148, i64* %XSP, align 8, !mcsema_real_eip !49
  %_offset_above_rbp_297 = sub i64 %_trans_p2i_97, %_local_end_to_int_
  %_pot_address_in_parent_stack_298 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_297
  %_cond1_299 = icmp ugt i8* %_new_gep_96, %_local_stack_end_ptr_
  %_cond2_1_300 = icmp ugt i8* %_new_gep_96, %_parent_stack_end_ptr_
  %_cond2_2_301 = icmp ult i8* %_new_gep_96, %_parent_stack_start_ptr_
  %_cond2_302 = or i1 %_cond2_1_300, %_cond2_2_301
  %_cond4_303 = icmp ule i8* %_pot_address_in_parent_stack_298, %_parent_stack_end_ptr_
  %_cond1_n_cond2_304 = and i1 %_cond1_299, %_cond2_302
  %_cond1_n_cond2_cond3_305 = and i1 %_cond1_n_cond2_304, %_cond4_303
  %.v = select i1 %_cond1_n_cond2_cond3_305, i8* %_pot_address_in_parent_stack_298, i8* %_new_gep_96
  %158 = bitcast i8* %.v to i64*
  %_new_load_308 = load i64, i64* %158, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_308 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_308, i64* %XBP, align 8, !mcsema_real_eip !50
  %_new_gep_113 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_95, i64 56
  %159 = add i64 %RSP_val.72, 56, !mcsema_real_eip !50
  store volatile i8* %_new_gep_113, i8** %_RSP_ptr_, align 8
  store i64 %159, i64* %XSP, align 8, !mcsema_real_eip !50
  %_new_gep_115 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_95, i64 64
  %160 = add i64 %RSP_val.72, 64, !mcsema_real_eip !51
  %_ptr_to_int_309 = ptrtoint i8* %_new_gep_113 to i64
  %_offset_above_rbp_312 = sub i64 %_ptr_to_int_309, %_local_end_to_int_
  %_pot_address_in_parent_stack_313 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_312
  %_cond1_314 = icmp ugt i8* %_new_gep_113, %_local_stack_end_ptr_
  %_cond2_1_315 = icmp ugt i8* %_new_gep_113, %_parent_stack_end_ptr_
  %_cond2_2_316 = icmp ult i8* %_new_gep_113, %_parent_stack_start_ptr_
  %_cond2_317 = or i1 %_cond2_1_315, %_cond2_2_316
  %_cond4_318 = icmp ule i8* %_pot_address_in_parent_stack_313, %_parent_stack_end_ptr_
  %_cond1_n_cond2_319 = and i1 %_cond1_314, %_cond2_317
  %_cond1_n_cond2_cond3_320 = and i1 %_cond1_n_cond2_319, %_cond4_318
  %_address_in_parent_stack_bt_322._allin_new_bt_116.v = select i1 %_cond1_n_cond2_cond3_320, i8* %_pot_address_in_parent_stack_313, i8* %_new_gep_113
  %_address_in_parent_stack_bt_322._allin_new_bt_116 = bitcast i8* %_address_in_parent_stack_bt_322._allin_new_bt_116.v to i64*
  %_new_load_323 = load i64, i64* %_address_in_parent_stack_bt_322._allin_new_bt_116, align 8
  store i64 %_new_load_323, i64* %XIP, align 8, !mcsema_real_eip !51
  store volatile i8* %_new_gep_115, i8** %_RSP_ptr_, align 8
  store i64 %160, i64* %XSP, align 8, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51

; <label>:161:                                    ; preds = %block_0x5b
  store i64 %_new_load_188, i64* %XIP, align 8, !mcsema_real_eip !24
  call void @__mcsema_detach_call_value()
  ret void, !mcsema_real_eip !24
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 15}
!7 = !{i64 22}
!8 = !{i64 29}
!9 = !{i64 37}
!10 = !{i64 41}
!11 = !{i64 48}
!12 = !{i64 51}
!13 = !{i64 55}
!14 = !{i64 61}
!15 = !{i64 65}
!16 = !{i64 70}
!17 = !{i64 73}
!18 = !{i64 75}
!19 = !{i64 78}
!20 = !{i64 82}
!21 = !{i64 85}
!22 = !{i64 91}
!23 = !{i64 95}
!24 = !{i64 103}
!25 = !{i64 105}
!26 = !{i64 108}
!27 = !{i64 114}
!28 = !{i64 119}
!29 = !{i64 122}
!30 = !{i64 128}
!31 = !{i64 133}
!32 = !{i64 136}
!33 = !{i64 142}
!34 = !{i64 147}
!35 = !{i64 150}
!36 = !{i64 156}
!37 = !{i64 168}
!38 = !{i64 173}
!39 = !{i64 176}
!40 = !{i64 179}
!41 = !{i64 182}
!42 = !{i64 187}
!43 = !{i64 197}
!44 = !{i64 200}
!45 = !{i64 202}
!46 = !{i64 207}
!47 = !{i64 214}
!48 = !{i64 217}
!49 = !{i64 220}
!50 = !{i64 224}
!51 = !{i64 225}
