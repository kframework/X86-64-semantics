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
  %_local_stack_start_ptr_6 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 64
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
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 56
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 8
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
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 52
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 48
  %14 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %14, align 4, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 44
  %15 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %15, align 4, !mcsema_real_eip !7
  store i64 7234017284060312435, i64* %XAX, align 8, !mcsema_real_eip !8
  %_new_gep_23 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 35
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 7234017284060312435, i64* %_allin_new_bt_24, align 8, !mcsema_real_eip !9
  %16 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*), align 8, !mcsema_real_eip !10
  %CL.9 = bitcast i64* %XCX to i8*, !mcsema_real_eip !10
  store i8 %16, i8* %CL.9, align 1, !mcsema_real_eip !10
  %_new_gep_26 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 43
  store i8 %16, i8* %_new_gep_26, align 1, !mcsema_real_eip !11
  %ECX.26 = bitcast i64* %XCX to i32*
  %EAX.64 = bitcast i64* %XAX to i32*
  br label %block_0x33, !mcsema_real_eip !12

block_0x33:                                       ; preds = %block_0xad, %entry
  %17 = phi i32 [ %.pre, %block_0xad ], [ 0, %entry ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2815 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2815.pre, %block_0xad ], [ %_new_gep_, %entry ]
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
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2815, i64 -8
  %31 = bitcast i8* %_new_gep_29 to i32*
  %32 = load i32, i32* %31, align 4, !mcsema_real_eip !14
  %33 = sext i32 %32 to i64, !mcsema_real_eip !14
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !14
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2815, i64 -21
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
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2815, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  store i64 %37, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !19
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4119 = load i8*, i8** %12, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4119, i64 -36
  %ECX_val.36 = load i32, i32* %ECX.26, align 4, !mcsema_real_eip !20
  %52 = bitcast i8* %_new_gep_42 to i32*
  store i32 %ECX_val.36, i32* %52, align 4, !mcsema_real_eip !20
  %53 = load i1, i1* %ZF, align 1, !mcsema_real_eip !21
  %54 = load i1, i1* %CF, align 1, !mcsema_real_eip !21
  %.demorgan = or i1 %53, %54
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8121 = load i8*, i8** %12, align 8
  br i1 %.demorgan, label %block_0x5b, label %block_0xa1, !mcsema_real_eip !21

block_0xbb:                                       ; preds = %block_0x33
  store i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64* %XDI, align 8, !mcsema_real_eip !22
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2815, i64 -12
  %55 = bitcast i8* %_new_gep_45 to i32*
  %56 = load i32, i32* %55, align 4, !mcsema_real_eip !23
  %57 = zext i32 %56 to i64, !mcsema_real_eip !23
  store i64 %57, i64* %XSI, align 8, !mcsema_real_eip !23
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !24
  store i8 0, i8* %AL.15, align 1, !mcsema_real_eip !24
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_47 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.18 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %_new_gep_48 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_47, i64 -8
  %58 = add i64 %RSP_val.18, -8
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !25
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_, align 8
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !25
  %59 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64 %57)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %59, i64* %XAX, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5016 = load i8*, i8** %12, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5016, i64 -4
  %60 = bitcast i8* %_new_gep_51 to i32*
  store i32 1, i32* %60, align 4, !mcsema_real_eip !26
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5317 = load i8*, i8** %12, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5317, i64 -40
  %EAX_val.22 = load i32, i32* %EAX.64, align 4, !mcsema_real_eip !27
  br label %block_0xd9, !mcsema_real_eip !14

block_0xd9:                                       ; preds = %block_0xa1, %block_0xbb
  %_allin_new_bt_86.sink.in = phi i8* [ %_new_gep_85, %block_0xa1 ], [ %_new_gep_54, %block_0xbb ]
  %.sink = phi i32 [ 1, %block_0xa1 ], [ %EAX_val.22, %block_0xbb ]
  %61 = bitcast i8* %_allin_new_bt_86.sink.in to i32*
  store i32 %.sink, i32* %61, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5618 = load i8*, i8** %12, align 8
  %_new_gep_57 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5618, i64 -4
  %62 = bitcast i8* %_new_gep_57 to i32*
  %63 = load i32, i32* %62, align 4, !mcsema_real_eip !28
  %64 = zext i32 %63 to i64, !mcsema_real_eip !28
  store i64 %64, i64* %XAX, align 8, !mcsema_real_eip !28
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.38 = load i64, i64* %XSP, align 8, !mcsema_real_eip !29
  %_new_gep_60 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 48
  %65 = add i64 %RSP_val.38, 48, !mcsema_real_eip !29
  %_trans_p2i_61 = ptrtoint i8* %_new_gep_60 to i64
  %_trans_p2i_62 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59 to i64
  %_trans_xor_63 = xor i64 %_trans_p2i_61, %_trans_p2i_62
  %66 = and i64 %_trans_xor_63, 16
  %67 = icmp eq i64 %66, 0
  store i1 %67, i1* %AF, align 1, !mcsema_real_eip !29
  %68 = icmp slt i64 %65, 0
  store i1 %68, i1* %SF, align 1, !mcsema_real_eip !29
  %_trans_icmp_eq_65 = icmp eq i8* %_new_gep_60, null
  store i1 %_trans_icmp_eq_65, i1* %ZF, align 1, !mcsema_real_eip !29
  %69 = xor i64 %_trans_p2i_62, -9223372036854775808, !mcsema_real_eip !29
  %70 = and i64 %_trans_xor_63, %69, !mcsema_real_eip !29
  %71 = icmp slt i64 %70, 0
  store i1 %71, i1* %OF, align 1, !mcsema_real_eip !29
  %_trans_trunc_72 = trunc i64 %_trans_p2i_61 to i8
  %72 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_72), !mcsema_real_eip !29
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  store i1 %74, i1* %PF, align 1, !mcsema_real_eip !29
  %_trans_icmp_ne_74 = icmp ne i64 %_trans_p2i_61, %RSP_val.38
  store i1 %_trans_icmp_ne_74, i1* %CF, align 1, !mcsema_real_eip !29
  store volatile i8* %_new_gep_60, i8** %_RSP_ptr_, align 8
  store i64 %65, i64* %XSP, align 8, !mcsema_real_eip !29
  %_allin_new_bt_76 = bitcast i8* %_new_gep_60 to i64*
  %75 = load i64, i64* %_allin_new_bt_76, align 8, !mcsema_real_eip !30
  store volatile i64 %75, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %75, i64* %XBP, align 8, !mcsema_real_eip !30
  %_new_gep_77 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 56
  %76 = add i64 %RSP_val.38, 56, !mcsema_real_eip !30
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_, align 8
  store i64 %76, i64* %XSP, align 8, !mcsema_real_eip !30
  %_new_gep_79 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 64
  %77 = add i64 %RSP_val.38, 64, !mcsema_real_eip !31
  %_allin_new_bt_80 = bitcast i8* %_new_gep_77 to i64*
  %78 = load i64, i64* %_allin_new_bt_80, align 8, !mcsema_real_eip !31
  store i64 %78, i64* %XIP, align 8, !mcsema_real_eip !31
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_, align 8
  store i64 %77, i64* %XSP, align 8, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x5b:                                       ; preds = %block_0x3d
  %_new_gep_82 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8121, i64 -32
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %79 = load i64, i64* %_allin_new_bt_83, align 8, !mcsema_real_eip !32
  store i64 %79, i64* %XAX, align 8, !mcsema_real_eip !32
  %80 = shl i64 %79, 3
  %81 = add i64 %80, ptrtoint (%0* @data_0xe8 to i64), !mcsema_real_eip !33
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !33
  %83 = load i64, i64* %82, align 8, !mcsema_real_eip !33
  store i64 %83, i64* %XCX, align 8, !mcsema_real_eip !33
  switch i64 %83, label %150 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !34

block_0xa1:                                       ; preds = %block_0x5b, %block_0x3d
  %_new_gep_85 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8121, i64 -4
  br label %block_0xd9, !mcsema_real_eip !35

block_0x69:                                       ; preds = %block_0x5b
  %_new_gep_88 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8121, i64 -12
  %84 = bitcast i8* %_new_gep_88 to i32*
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !36
  %86 = zext i32 %85 to i64, !mcsema_real_eip !36
  store i64 %86, i64* %XAX, align 8, !mcsema_real_eip !36
  %87 = add i32 %85, 1, !mcsema_real_eip !37
  %88 = xor i32 %87, %85, !mcsema_real_eip !37
  %89 = and i32 %88, 16, !mcsema_real_eip !37
  %90 = icmp ne i32 %89, 0, !mcsema_real_eip !37
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !37
  %91 = icmp slt i32 %87, 0
  store i1 %91, i1* %SF, align 1, !mcsema_real_eip !37
  %92 = icmp eq i32 %87, 0, !mcsema_real_eip !37
  store i1 %92, i1* %ZF, align 1, !mcsema_real_eip !37
  %93 = xor i32 %85, -2147483648, !mcsema_real_eip !37
  %94 = and i32 %88, %93, !mcsema_real_eip !37
  %95 = icmp slt i32 %94, 0
  store i1 %95, i1* %OF, align 1, !mcsema_real_eip !37
  %96 = trunc i32 %87 to i8, !mcsema_real_eip !37
  %97 = call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !37
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  store i1 %99, i1* %PF, align 1, !mcsema_real_eip !37
  %100 = icmp eq i32 %85, -1
  store i1 %100, i1* %CF, align 1, !mcsema_real_eip !37
  br label %block_0xad, !mcsema_real_eip !38

block_0x77:                                       ; preds = %block_0x5b
  %_new_gep_94 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8121, i64 -12
  %101 = bitcast i8* %_new_gep_94 to i32*
  %102 = load i32, i32* %101, align 4, !mcsema_real_eip !39
  %103 = zext i32 %102 to i64, !mcsema_real_eip !39
  store i64 %103, i64* %XAX, align 8, !mcsema_real_eip !39
  %104 = add i32 %102, 2, !mcsema_real_eip !40
  %105 = xor i32 %104, %102, !mcsema_real_eip !40
  %106 = and i32 %105, 16, !mcsema_real_eip !40
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !40
  store i1 %107, i1* %AF, align 1, !mcsema_real_eip !40
  %108 = icmp slt i32 %104, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !40
  %109 = icmp eq i32 %104, 0, !mcsema_real_eip !40
  store i1 %109, i1* %ZF, align 1, !mcsema_real_eip !40
  %110 = xor i32 %102, -2147483648, !mcsema_real_eip !40
  %111 = and i32 %105, %110, !mcsema_real_eip !40
  %112 = icmp slt i32 %111, 0
  store i1 %112, i1* %OF, align 1, !mcsema_real_eip !40
  %113 = trunc i32 %104 to i8, !mcsema_real_eip !40
  %114 = call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !40
  %115 = and i8 %114, 1
  %116 = icmp eq i8 %115, 0
  store i1 %116, i1* %PF, align 1, !mcsema_real_eip !40
  %117 = icmp ugt i32 %102, -3
  store i1 %117, i1* %CF, align 1, !mcsema_real_eip !40
  br label %block_0xad, !mcsema_real_eip !41

block_0x85:                                       ; preds = %block_0x5b
  %_new_gep_100 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8121, i64 -12
  %118 = bitcast i8* %_new_gep_100 to i32*
  %119 = load i32, i32* %118, align 4, !mcsema_real_eip !42
  %120 = zext i32 %119 to i64, !mcsema_real_eip !42
  store i64 %120, i64* %XAX, align 8, !mcsema_real_eip !42
  %121 = add i32 %119, -2
  %122 = xor i32 %121, %119, !mcsema_real_eip !43
  %123 = and i32 %122, 16, !mcsema_real_eip !43
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !43
  store i1 %124, i1* %AF, align 1, !mcsema_real_eip !43
  %125 = trunc i32 %121 to i8, !mcsema_real_eip !43
  %126 = call i8 @llvm.ctpop.i8(i8 %125), !mcsema_real_eip !43
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  store i1 %128, i1* %PF, align 1, !mcsema_real_eip !43
  %129 = icmp eq i32 %121, 0, !mcsema_real_eip !43
  store i1 %129, i1* %ZF, align 1, !mcsema_real_eip !43
  %130 = icmp slt i32 %121, 0
  store i1 %130, i1* %SF, align 1, !mcsema_real_eip !43
  %131 = icmp ult i32 %119, 2, !mcsema_real_eip !43
  store i1 %131, i1* %CF, align 1, !mcsema_real_eip !43
  %132 = and i32 %122, %119, !mcsema_real_eip !43
  %133 = icmp slt i32 %132, 0
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !43
  br label %block_0xad, !mcsema_real_eip !44

block_0x93:                                       ; preds = %block_0x5b
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8121, i64 -12
  %134 = bitcast i8* %_new_gep_106 to i32*
  %135 = load i32, i32* %134, align 4, !mcsema_real_eip !45
  %136 = zext i32 %135 to i64, !mcsema_real_eip !45
  store i64 %136, i64* %XAX, align 8, !mcsema_real_eip !45
  %137 = add i32 %135, -1
  %138 = xor i32 %137, %135, !mcsema_real_eip !46
  %139 = and i32 %138, 16, !mcsema_real_eip !46
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !46
  store i1 %140, i1* %AF, align 1, !mcsema_real_eip !46
  %141 = trunc i32 %137 to i8, !mcsema_real_eip !46
  %142 = call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !46
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  store i1 %144, i1* %PF, align 1, !mcsema_real_eip !46
  %145 = icmp eq i32 %137, 0, !mcsema_real_eip !46
  store i1 %145, i1* %ZF, align 1, !mcsema_real_eip !46
  %146 = icmp slt i32 %137, 0
  store i1 %146, i1* %SF, align 1, !mcsema_real_eip !46
  %147 = icmp eq i32 %135, 0
  store i1 %147, i1* %CF, align 1, !mcsema_real_eip !46
  %148 = and i32 %138, %135, !mcsema_real_eip !46
  %149 = icmp slt i32 %148, 0
  store i1 %149, i1* %OF, align 1, !mcsema_real_eip !46
  br label %block_0xad, !mcsema_real_eip !47

; <label>:150:                                    ; preds = %block_0x5b
  store i64 %83, i64* %XIP, align 8, !mcsema_real_eip !34
  call void @__mcsema_detach_call_value()
  ret void, !mcsema_real_eip !34

block_0xad:                                       ; preds = %block_0x93, %block_0x85, %block_0x77, %block_0x69
  %.sink5 = phi i32 [ %137, %block_0x93 ], [ %121, %block_0x85 ], [ %104, %block_0x77 ], [ %87, %block_0x69 ]
  %.sink3 = phi i32* [ %134, %block_0x93 ], [ %118, %block_0x85 ], [ %101, %block_0x77 ], [ %84, %block_0x69 ]
  %151 = zext i32 %.sink5 to i64
  store i64 %151, i64* %XAX, align 8
  store i32 %.sink5, i32* %.sink3, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11122 = load i8*, i8** %12, align 8
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11122, i64 -8
  %152 = bitcast i8* %_new_gep_112 to i32*
  %153 = load i32, i32* %152, align 4, !mcsema_real_eip !48
  %154 = add i32 %153, 1, !mcsema_real_eip !49
  %155 = xor i32 %154, %153, !mcsema_real_eip !49
  %156 = and i32 %155, 16, !mcsema_real_eip !49
  %157 = icmp ne i32 %156, 0, !mcsema_real_eip !49
  store i1 %157, i1* %AF, align 1, !mcsema_real_eip !49
  %158 = icmp slt i32 %154, 0
  store i1 %158, i1* %SF, align 1, !mcsema_real_eip !49
  %159 = icmp eq i32 %154, 0, !mcsema_real_eip !49
  store i1 %159, i1* %ZF, align 1, !mcsema_real_eip !49
  %160 = xor i32 %153, -2147483648, !mcsema_real_eip !49
  %161 = and i32 %155, %160, !mcsema_real_eip !49
  %162 = icmp slt i32 %161, 0
  store i1 %162, i1* %OF, align 1, !mcsema_real_eip !49
  %163 = trunc i32 %154 to i8, !mcsema_real_eip !49
  %164 = call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !49
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  store i1 %166, i1* %PF, align 1, !mcsema_real_eip !49
  %167 = icmp eq i32 %153, -1
  store i1 %167, i1* %CF, align 1, !mcsema_real_eip !49
  %168 = zext i32 %154 to i64, !mcsema_real_eip !49
  store i64 %168, i64* %XAX, align 8, !mcsema_real_eip !49
  store i32 %154, i32* %152, align 4, !mcsema_real_eip !50
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2815.pre = load i8*, i8** %12, align 8
  %_new_gep_29.phi.trans.insert = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2815.pre, i64 -8
  %.phi.trans.insert = bitcast i8* %_new_gep_29.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 4
  br label %block_0x33, !mcsema_real_eip !51
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
  %_local_stack_start_ptr_6 = alloca [64 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 64
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
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 56
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 8
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
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 52
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 48
  %12 = bitcast i8* %_new_gep_17 to i32*
  store i32 0, i32* %12, align 4, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 44
  %13 = bitcast i8* %_new_gep_20 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !7
  store i64 7234017284060312435, i64* %XAX, align 8, !mcsema_real_eip !8
  %_new_gep_23 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 35
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
  %_new_gep_26 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_6, i64 0, i64 43
  store i8 %_new_load_, i8* %_new_gep_26, align 1, !mcsema_real_eip !11
  %ECX.26 = bitcast i64* %XCX to i32*
  %EAX.64 = bitcast i64* %XAX to i32*
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
  %ECX_val.36 = load i32, i32* %ECX.26, align 4, !mcsema_real_eip !20
  %49 = bitcast i8* %_new_gep_42 to i32*
  store i32 %ECX_val.36, i32* %49, align 4, !mcsema_real_eip !20
  %50 = load i1, i1* %ZF, align 1, !mcsema_real_eip !21
  %51 = load i1, i1* %CF, align 1, !mcsema_real_eip !21
  %.demorgan = or i1 %50, %51
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_, align 8
  br i1 %.demorgan, label %block_0x5b, label %block_0xa1, !mcsema_real_eip !21

block_0xbb:                                       ; preds = %block_0x33
  store i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64* %XDI, align 8, !mcsema_real_eip !22
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -12
  %52 = ptrtoint i8* %_new_gep_45 to i64
  %_offset_above_rbp_162 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_163 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_162
  %_cond1_164 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_165 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_166 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_167 = or i1 %_cond2_1_165, %_cond2_2_166
  %_cond4_168 = icmp ule i8* %_pot_address_in_parent_stack_163, %_parent_stack_end_ptr_
  %_cond1_n_cond2_169 = and i1 %_cond1_164, %_cond2_167
  %_cond1_n_cond2_cond3_170 = and i1 %_cond1_n_cond2_169, %_cond4_168
  %_address_in_parent_stack_bt_172..v = select i1 %_cond1_n_cond2_cond3_170, i8* %_pot_address_in_parent_stack_163, i8* %_new_gep_45
  %_address_in_parent_stack_bt_172. = bitcast i8* %_address_in_parent_stack_bt_172..v to i32*
  %_new_load_173 = load i32, i32* %_address_in_parent_stack_bt_172., align 4
  %53 = zext i32 %_new_load_173 to i64, !mcsema_real_eip !23
  store i64 %53, i64* %XSI, align 8, !mcsema_real_eip !23
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !24
  store i8 0, i8* %AL.15, align 1, !mcsema_real_eip !24
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_47 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.18 = load i64, i64* %XSP, align 8, !mcsema_real_eip !25
  %_new_gep_48 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_47, i64 -8
  %54 = add i64 %RSP_val.18, -8
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_49, align 8, !mcsema_real_eip !25
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_, align 8
  store i64 %54, i64* %XSP, align 8, !mcsema_real_eip !25
  %55 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64 %53)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %55, i64* %XAX, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -4
  %56 = bitcast i8* %_new_gep_51 to i32*
  store i32 1, i32* %56, align 4, !mcsema_real_eip !26
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -40
  %EAX_val.22 = load i32, i32* %EAX.64, align 4, !mcsema_real_eip !27
  br label %block_0xd9, !mcsema_real_eip !14

block_0xd9:                                       ; preds = %block_0xa1, %block_0xbb
  %_allin_new_bt_86.sink.in = phi i8* [ %_new_gep_85, %block_0xa1 ], [ %_new_gep_54, %block_0xbb ]
  %.sink = phi i32 [ 1, %block_0xa1 ], [ %EAX_val.22, %block_0xbb ]
  %57 = bitcast i8* %_allin_new_bt_86.sink.in to i32*
  store i32 %.sink, i32* %57, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_57 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_56, i64 -4
  %58 = ptrtoint i8* %_new_gep_57 to i64
  %_offset_above_rbp_177 = sub i64 %58, %_local_end_to_int_
  %_pot_address_in_parent_stack_178 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_177
  %_cond1_179 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_180 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_181 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_182 = or i1 %_cond2_1_180, %_cond2_2_181
  %_cond4_183 = icmp ule i8* %_pot_address_in_parent_stack_178, %_parent_stack_end_ptr_
  %_cond1_n_cond2_184 = and i1 %_cond1_179, %_cond2_182
  %_cond1_n_cond2_cond3_185 = and i1 %_cond1_n_cond2_184, %_cond4_183
  %_address_in_parent_stack_bt_187..v = select i1 %_cond1_n_cond2_cond3_185, i8* %_pot_address_in_parent_stack_178, i8* %_new_gep_57
  %_address_in_parent_stack_bt_187. = bitcast i8* %_address_in_parent_stack_bt_187..v to i32*
  %_new_load_188 = load i32, i32* %_address_in_parent_stack_bt_187., align 4
  %59 = zext i32 %_new_load_188 to i64, !mcsema_real_eip !28
  store i64 %59, i64* %XAX, align 8, !mcsema_real_eip !28
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.38 = load i64, i64* %XSP, align 8, !mcsema_real_eip !29
  %_new_gep_60 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 48
  %60 = add i64 %RSP_val.38, 48, !mcsema_real_eip !29
  %_trans_p2i_61 = ptrtoint i8* %_new_gep_60 to i64
  %_trans_p2i_62 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59 to i64
  %_trans_xor_63 = xor i64 %_trans_p2i_61, %_trans_p2i_62
  %61 = and i64 %_trans_xor_63, 16
  %62 = icmp eq i64 %61, 0
  store i1 %62, i1* %AF, align 1, !mcsema_real_eip !29
  %63 = icmp slt i64 %60, 0
  store i1 %63, i1* %SF, align 1, !mcsema_real_eip !29
  %_trans_icmp_eq_65 = icmp eq i8* %_new_gep_60, null
  store i1 %_trans_icmp_eq_65, i1* %ZF, align 1, !mcsema_real_eip !29
  %64 = xor i64 %_trans_p2i_62, -9223372036854775808, !mcsema_real_eip !29
  %65 = and i64 %_trans_xor_63, %64, !mcsema_real_eip !29
  %66 = icmp slt i64 %65, 0
  store i1 %66, i1* %OF, align 1, !mcsema_real_eip !29
  %_trans_trunc_72 = trunc i64 %_trans_p2i_61 to i8
  %67 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_72), !mcsema_real_eip !29
  %68 = and i8 %67, 1
  %69 = icmp eq i8 %68, 0
  store i1 %69, i1* %PF, align 1, !mcsema_real_eip !29
  %_trans_icmp_ne_74 = icmp ne i64 %_trans_p2i_61, %RSP_val.38
  store i1 %_trans_icmp_ne_74, i1* %CF, align 1, !mcsema_real_eip !29
  store volatile i8* %_new_gep_60, i8** %_RSP_ptr_, align 8
  store i64 %60, i64* %XSP, align 8, !mcsema_real_eip !29
  %_offset_above_rbp_192 = sub i64 %_trans_p2i_61, %_local_end_to_int_
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  %.v = select i1 %_cond1_n_cond2_cond3_200, i8* %_pot_address_in_parent_stack_193, i8* %_new_gep_60
  %70 = bitcast i8* %.v to i64*
  %_new_load_203 = load i64, i64* %70, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_203 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_203, i64* %XBP, align 8, !mcsema_real_eip !30
  %_new_gep_77 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 56
  %71 = add i64 %RSP_val.38, 56, !mcsema_real_eip !30
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_, align 8
  store i64 %71, i64* %XSP, align 8, !mcsema_real_eip !30
  %_new_gep_79 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_59, i64 64
  %72 = add i64 %RSP_val.38, 64, !mcsema_real_eip !31
  %_ptr_to_int_204 = ptrtoint i8* %_new_gep_77 to i64
  %_offset_above_rbp_207 = sub i64 %_ptr_to_int_204, %_local_end_to_int_
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_new_gep_77, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_new_gep_77, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_new_gep_77, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  %_address_in_parent_stack_bt_217._allin_new_bt_80.v = select i1 %_cond1_n_cond2_cond3_215, i8* %_pot_address_in_parent_stack_208, i8* %_new_gep_77
  %_address_in_parent_stack_bt_217._allin_new_bt_80 = bitcast i8* %_address_in_parent_stack_bt_217._allin_new_bt_80.v to i64*
  %_new_load_218 = load i64, i64* %_address_in_parent_stack_bt_217._allin_new_bt_80, align 8
  store i64 %_new_load_218, i64* %XIP, align 8, !mcsema_real_eip !31
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_, align 8
  store i64 %72, i64* %XSP, align 8, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x5b:                                       ; preds = %block_0x3d
  %_new_gep_82 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_81, i64 -32
  %_ptr_to_int_219 = ptrtoint i8* %_new_gep_82 to i64
  %_offset_above_rbp_222 = sub i64 %_ptr_to_int_219, %_local_end_to_int_
  %_pot_address_in_parent_stack_223 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_222
  %_cond1_224 = icmp ugt i8* %_new_gep_82, %_local_stack_end_ptr_
  %_cond2_1_225 = icmp ugt i8* %_new_gep_82, %_parent_stack_end_ptr_
  %_cond2_2_226 = icmp ult i8* %_new_gep_82, %_parent_stack_start_ptr_
  %_cond2_227 = or i1 %_cond2_1_225, %_cond2_2_226
  %_cond4_228 = icmp ule i8* %_pot_address_in_parent_stack_223, %_parent_stack_end_ptr_
  %_cond1_n_cond2_229 = and i1 %_cond1_224, %_cond2_227
  %_cond1_n_cond2_cond3_230 = and i1 %_cond1_n_cond2_229, %_cond4_228
  %_address_in_parent_stack_bt_232._allin_new_bt_83.v = select i1 %_cond1_n_cond2_cond3_230, i8* %_pot_address_in_parent_stack_223, i8* %_new_gep_82
  %_address_in_parent_stack_bt_232._allin_new_bt_83 = bitcast i8* %_address_in_parent_stack_bt_232._allin_new_bt_83.v to i64*
  %_new_load_233 = load i64, i64* %_address_in_parent_stack_bt_232._allin_new_bt_83, align 8
  store i64 %_new_load_233, i64* %XAX, align 8, !mcsema_real_eip !32
  %73 = shl i64 %_new_load_233, 3
  %74 = add i64 %73, ptrtoint (%0* @data_0xe8 to i64), !mcsema_real_eip !33
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !33
  %_ptr_bt_236 = inttoptr i64 %74 to i8*
  %_offset_above_rbp_237 = sub i64 %74, %_local_end_to_int_
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* %_ptr_bt_236, %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* %_ptr_bt_236, %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* %_ptr_bt_236, %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond4_243, %_cond1_n_cond2_244
  %_address_in_parent_stack_bt_247 = bitcast i8* %_pot_address_in_parent_stack_238 to i64*
  %76 = select i1 %_cond1_n_cond2_cond3_245, i64* %_address_in_parent_stack_bt_247, i64* %75
  %_new_load_248 = load i64, i64* %76, align 8
  store i64 %_new_load_248, i64* %XCX, align 8, !mcsema_real_eip !33
  switch i64 %_new_load_248, label %143 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !34

block_0xa1:                                       ; preds = %block_0x5b, %block_0x3d
  %_new_gep_85 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_81, i64 -4
  br label %block_0xd9, !mcsema_real_eip !35

block_0x69:                                       ; preds = %block_0x5b
  %_new_gep_88 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_81, i64 -12
  %77 = ptrtoint i8* %_new_gep_88 to i64
  %78 = bitcast i8* %_new_gep_88 to i32*
  %_offset_above_rbp_252 = sub i64 %77, %_local_end_to_int_
  %_pot_address_in_parent_stack_253 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_252
  %_cond1_254 = icmp ugt i8* %_new_gep_88, %_local_stack_end_ptr_
  %_cond2_1_255 = icmp ugt i8* %_new_gep_88, %_parent_stack_end_ptr_
  %_cond2_2_256 = icmp ult i8* %_new_gep_88, %_parent_stack_start_ptr_
  %_cond2_257 = or i1 %_cond2_1_255, %_cond2_2_256
  %_cond4_258 = icmp ule i8* %_pot_address_in_parent_stack_253, %_parent_stack_end_ptr_
  %_cond1_n_cond2_259 = and i1 %_cond1_254, %_cond2_257
  %_cond1_n_cond2_cond3_260 = and i1 %_cond1_n_cond2_259, %_cond4_258
  %_address_in_parent_stack_bt_262 = bitcast i8* %_pot_address_in_parent_stack_253 to i32*
  %_address_in_parent_stack_bt_262. = select i1 %_cond1_n_cond2_cond3_260, i32* %_address_in_parent_stack_bt_262, i32* %78
  %_new_load_263 = load i32, i32* %_address_in_parent_stack_bt_262., align 4
  %79 = zext i32 %_new_load_263 to i64, !mcsema_real_eip !36
  store i64 %79, i64* %XAX, align 8, !mcsema_real_eip !36
  %80 = add i32 %_new_load_263, 1, !mcsema_real_eip !37
  %81 = xor i32 %80, %_new_load_263, !mcsema_real_eip !37
  %82 = and i32 %81, 16, !mcsema_real_eip !37
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !37
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !37
  %84 = icmp slt i32 %80, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !37
  %85 = icmp eq i32 %80, 0, !mcsema_real_eip !37
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !37
  %86 = xor i32 %_new_load_263, -2147483648, !mcsema_real_eip !37
  %87 = and i32 %81, %86, !mcsema_real_eip !37
  %88 = icmp slt i32 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !37
  %89 = trunc i32 %80 to i8, !mcsema_real_eip !37
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !37
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  store i1 %92, i1* %PF, align 1, !mcsema_real_eip !37
  %93 = icmp eq i32 %_new_load_263, -1
  store i1 %93, i1* %CF, align 1, !mcsema_real_eip !37
  br label %block_0xad, !mcsema_real_eip !38

block_0x77:                                       ; preds = %block_0x5b
  %_new_gep_94 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_81, i64 -12
  %94 = ptrtoint i8* %_new_gep_94 to i64
  %95 = bitcast i8* %_new_gep_94 to i32*
  %_offset_above_rbp_267 = sub i64 %94, %_local_end_to_int_
  %_pot_address_in_parent_stack_268 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_267
  %_cond1_269 = icmp ugt i8* %_new_gep_94, %_local_stack_end_ptr_
  %_cond2_1_270 = icmp ugt i8* %_new_gep_94, %_parent_stack_end_ptr_
  %_cond2_2_271 = icmp ult i8* %_new_gep_94, %_parent_stack_start_ptr_
  %_cond2_272 = or i1 %_cond2_1_270, %_cond2_2_271
  %_cond4_273 = icmp ule i8* %_pot_address_in_parent_stack_268, %_parent_stack_end_ptr_
  %_cond1_n_cond2_274 = and i1 %_cond1_269, %_cond2_272
  %_cond1_n_cond2_cond3_275 = and i1 %_cond1_n_cond2_274, %_cond4_273
  %_address_in_parent_stack_bt_277 = bitcast i8* %_pot_address_in_parent_stack_268 to i32*
  %_address_in_parent_stack_bt_277. = select i1 %_cond1_n_cond2_cond3_275, i32* %_address_in_parent_stack_bt_277, i32* %95
  %_new_load_278 = load i32, i32* %_address_in_parent_stack_bt_277., align 4
  %96 = zext i32 %_new_load_278 to i64, !mcsema_real_eip !39
  store i64 %96, i64* %XAX, align 8, !mcsema_real_eip !39
  %97 = add i32 %_new_load_278, 2, !mcsema_real_eip !40
  %98 = xor i32 %97, %_new_load_278, !mcsema_real_eip !40
  %99 = and i32 %98, 16, !mcsema_real_eip !40
  %100 = icmp ne i32 %99, 0, !mcsema_real_eip !40
  store i1 %100, i1* %AF, align 1, !mcsema_real_eip !40
  %101 = icmp slt i32 %97, 0
  store i1 %101, i1* %SF, align 1, !mcsema_real_eip !40
  %102 = icmp eq i32 %97, 0, !mcsema_real_eip !40
  store i1 %102, i1* %ZF, align 1, !mcsema_real_eip !40
  %103 = xor i32 %_new_load_278, -2147483648, !mcsema_real_eip !40
  %104 = and i32 %98, %103, !mcsema_real_eip !40
  %105 = icmp slt i32 %104, 0
  store i1 %105, i1* %OF, align 1, !mcsema_real_eip !40
  %106 = trunc i32 %97 to i8, !mcsema_real_eip !40
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !40
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  store i1 %109, i1* %PF, align 1, !mcsema_real_eip !40
  %110 = icmp ugt i32 %_new_load_278, -3
  store i1 %110, i1* %CF, align 1, !mcsema_real_eip !40
  br label %block_0xad, !mcsema_real_eip !41

block_0x85:                                       ; preds = %block_0x5b
  %_new_gep_100 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_81, i64 -12
  %111 = ptrtoint i8* %_new_gep_100 to i64
  %112 = bitcast i8* %_new_gep_100 to i32*
  %_offset_above_rbp_282 = sub i64 %111, %_local_end_to_int_
  %_pot_address_in_parent_stack_283 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_282
  %_cond1_284 = icmp ugt i8* %_new_gep_100, %_local_stack_end_ptr_
  %_cond2_1_285 = icmp ugt i8* %_new_gep_100, %_parent_stack_end_ptr_
  %_cond2_2_286 = icmp ult i8* %_new_gep_100, %_parent_stack_start_ptr_
  %_cond2_287 = or i1 %_cond2_1_285, %_cond2_2_286
  %_cond4_288 = icmp ule i8* %_pot_address_in_parent_stack_283, %_parent_stack_end_ptr_
  %_cond1_n_cond2_289 = and i1 %_cond1_284, %_cond2_287
  %_cond1_n_cond2_cond3_290 = and i1 %_cond1_n_cond2_289, %_cond4_288
  %_address_in_parent_stack_bt_292 = bitcast i8* %_pot_address_in_parent_stack_283 to i32*
  %_address_in_parent_stack_bt_292. = select i1 %_cond1_n_cond2_cond3_290, i32* %_address_in_parent_stack_bt_292, i32* %112
  %_new_load_293 = load i32, i32* %_address_in_parent_stack_bt_292., align 4
  %113 = zext i32 %_new_load_293 to i64, !mcsema_real_eip !42
  store i64 %113, i64* %XAX, align 8, !mcsema_real_eip !42
  %114 = add i32 %_new_load_293, -2
  %115 = xor i32 %114, %_new_load_293, !mcsema_real_eip !43
  %116 = and i32 %115, 16, !mcsema_real_eip !43
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !43
  store i1 %117, i1* %AF, align 1, !mcsema_real_eip !43
  %118 = trunc i32 %114 to i8, !mcsema_real_eip !43
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !43
  %120 = and i8 %119, 1
  %121 = icmp eq i8 %120, 0
  store i1 %121, i1* %PF, align 1, !mcsema_real_eip !43
  %122 = icmp eq i32 %114, 0, !mcsema_real_eip !43
  store i1 %122, i1* %ZF, align 1, !mcsema_real_eip !43
  %123 = icmp slt i32 %114, 0
  store i1 %123, i1* %SF, align 1, !mcsema_real_eip !43
  %124 = icmp ult i32 %_new_load_293, 2, !mcsema_real_eip !43
  store i1 %124, i1* %CF, align 1, !mcsema_real_eip !43
  %125 = and i32 %115, %_new_load_293, !mcsema_real_eip !43
  %126 = icmp slt i32 %125, 0
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !43
  br label %block_0xad, !mcsema_real_eip !44

block_0x93:                                       ; preds = %block_0x5b
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_81, i64 -12
  %127 = ptrtoint i8* %_new_gep_106 to i64
  %128 = bitcast i8* %_new_gep_106 to i32*
  %_offset_above_rbp_297 = sub i64 %127, %_local_end_to_int_
  %_pot_address_in_parent_stack_298 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_297
  %_cond1_299 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_300 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_301 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_302 = or i1 %_cond2_1_300, %_cond2_2_301
  %_cond4_303 = icmp ule i8* %_pot_address_in_parent_stack_298, %_parent_stack_end_ptr_
  %_cond1_n_cond2_304 = and i1 %_cond1_299, %_cond2_302
  %_cond1_n_cond2_cond3_305 = and i1 %_cond1_n_cond2_304, %_cond4_303
  %_address_in_parent_stack_bt_307 = bitcast i8* %_pot_address_in_parent_stack_298 to i32*
  %_address_in_parent_stack_bt_307. = select i1 %_cond1_n_cond2_cond3_305, i32* %_address_in_parent_stack_bt_307, i32* %128
  %_new_load_308 = load i32, i32* %_address_in_parent_stack_bt_307., align 4
  %129 = zext i32 %_new_load_308 to i64, !mcsema_real_eip !45
  store i64 %129, i64* %XAX, align 8, !mcsema_real_eip !45
  %130 = add i32 %_new_load_308, -1
  %131 = xor i32 %130, %_new_load_308, !mcsema_real_eip !46
  %132 = and i32 %131, 16, !mcsema_real_eip !46
  %133 = icmp ne i32 %132, 0, !mcsema_real_eip !46
  store i1 %133, i1* %AF, align 1, !mcsema_real_eip !46
  %134 = trunc i32 %130 to i8, !mcsema_real_eip !46
  %135 = call i8 @llvm.ctpop.i8(i8 %134), !mcsema_real_eip !46
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  store i1 %137, i1* %PF, align 1, !mcsema_real_eip !46
  %138 = icmp eq i32 %130, 0, !mcsema_real_eip !46
  store i1 %138, i1* %ZF, align 1, !mcsema_real_eip !46
  %139 = icmp slt i32 %130, 0
  store i1 %139, i1* %SF, align 1, !mcsema_real_eip !46
  %140 = icmp eq i32 %_new_load_308, 0
  store i1 %140, i1* %CF, align 1, !mcsema_real_eip !46
  %141 = and i32 %131, %_new_load_308, !mcsema_real_eip !46
  %142 = icmp slt i32 %141, 0
  store i1 %142, i1* %OF, align 1, !mcsema_real_eip !46
  br label %block_0xad, !mcsema_real_eip !47

; <label>:143:                                    ; preds = %block_0x5b
  store i64 %_new_load_248, i64* %XIP, align 8, !mcsema_real_eip !34
  call void @__mcsema_detach_call_value()
  ret void, !mcsema_real_eip !34

block_0xad:                                       ; preds = %block_0x93, %block_0x85, %block_0x77, %block_0x69
  %.sink5 = phi i32 [ %130, %block_0x93 ], [ %114, %block_0x85 ], [ %97, %block_0x77 ], [ %80, %block_0x69 ]
  %.sink3 = phi i32* [ %128, %block_0x93 ], [ %112, %block_0x85 ], [ %95, %block_0x77 ], [ %78, %block_0x69 ]
  %144 = zext i32 %.sink5 to i64
  store i64 %144, i64* %XAX, align 8
  store i32 %.sink5, i32* %.sink3, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_111 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_112 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_111, i64 -8
  %145 = ptrtoint i8* %_new_gep_112 to i64
  %146 = bitcast i8* %_new_gep_112 to i32*
  %_offset_above_rbp_312 = sub i64 %145, %_local_end_to_int_
  %_pot_address_in_parent_stack_313 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_312
  %_cond1_314 = icmp ugt i8* %_new_gep_112, %_local_stack_end_ptr_
  %_cond2_1_315 = icmp ugt i8* %_new_gep_112, %_parent_stack_end_ptr_
  %_cond2_2_316 = icmp ult i8* %_new_gep_112, %_parent_stack_start_ptr_
  %_cond2_317 = or i1 %_cond2_1_315, %_cond2_2_316
  %_cond4_318 = icmp ule i8* %_pot_address_in_parent_stack_313, %_parent_stack_end_ptr_
  %_cond1_n_cond2_319 = and i1 %_cond1_314, %_cond2_317
  %_cond1_n_cond2_cond3_320 = and i1 %_cond1_n_cond2_319, %_cond4_318
  %_address_in_parent_stack_bt_322 = bitcast i8* %_pot_address_in_parent_stack_313 to i32*
  %_address_in_parent_stack_bt_322. = select i1 %_cond1_n_cond2_cond3_320, i32* %_address_in_parent_stack_bt_322, i32* %146
  %_new_load_323 = load i32, i32* %_address_in_parent_stack_bt_322., align 4
  %147 = add i32 %_new_load_323, 1, !mcsema_real_eip !49
  %148 = xor i32 %147, %_new_load_323, !mcsema_real_eip !49
  %149 = and i32 %148, 16, !mcsema_real_eip !49
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !49
  store i1 %150, i1* %AF, align 1, !mcsema_real_eip !49
  %151 = icmp slt i32 %147, 0
  store i1 %151, i1* %SF, align 1, !mcsema_real_eip !49
  %152 = icmp eq i32 %147, 0, !mcsema_real_eip !49
  store i1 %152, i1* %ZF, align 1, !mcsema_real_eip !49
  %153 = xor i32 %_new_load_323, -2147483648, !mcsema_real_eip !49
  %154 = and i32 %148, %153, !mcsema_real_eip !49
  %155 = icmp slt i32 %154, 0
  store i1 %155, i1* %OF, align 1, !mcsema_real_eip !49
  %156 = trunc i32 %147 to i8, !mcsema_real_eip !49
  %157 = call i8 @llvm.ctpop.i8(i8 %156), !mcsema_real_eip !49
  %158 = and i8 %157, 1
  %159 = icmp eq i8 %158, 0
  store i1 %159, i1* %PF, align 1, !mcsema_real_eip !49
  %160 = icmp eq i32 %_new_load_323, -1
  store i1 %160, i1* %CF, align 1, !mcsema_real_eip !49
  %161 = zext i32 %147 to i64, !mcsema_real_eip !49
  store i64 %161, i64* %XAX, align 8, !mcsema_real_eip !49
  store i32 %147, i32* %146, align 4, !mcsema_real_eip !50
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x33, !mcsema_real_eip !51
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
!22 = !{i64 187}
!23 = !{i64 197}
!24 = !{i64 200}
!25 = !{i64 202}
!26 = !{i64 207}
!27 = !{i64 214}
!28 = !{i64 217}
!29 = !{i64 220}
!30 = !{i64 224}
!31 = !{i64 225}
!32 = !{i64 91}
!33 = !{i64 95}
!34 = !{i64 103}
!35 = !{i64 168}
!36 = !{i64 105}
!37 = !{i64 108}
!38 = !{i64 114}
!39 = !{i64 119}
!40 = !{i64 122}
!41 = !{i64 128}
!42 = !{i64 133}
!43 = !{i64 136}
!44 = !{i64 142}
!45 = !{i64 147}
!46 = !{i64 150}
!47 = !{i64 156}
!48 = !{i64 173}
!49 = !{i64 176}
!50 = !{i64 179}
!51 = !{i64 182}
