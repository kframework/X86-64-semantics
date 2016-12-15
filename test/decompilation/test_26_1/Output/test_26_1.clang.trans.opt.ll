; ModuleID = 'Output/test_26_1.clang.trans.opt.bc'
source_filename = "Output/test_26_1.clang.bc"
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
module asm "  .globl sub_90;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_90(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x176 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90(%RegState*) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [128 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 128
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
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
  %_new_gep_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %2 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  %3 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %3, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %3, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %2, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %4 = add i64 %RSP_val.1, -120
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %3
  %5 = and i64 %_trans_xor_, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %7 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  store i1 %9, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %10 = icmp slt i64 %4, 0
  store i1 %10, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 112 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %11 = and i64 %_trans_xor_, %3, !mcsema_real_eip !4
  %12 = icmp slt i64 %11, 0
  store i1 %12, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i64 %_trans_p2i_, i64* %_RSP_ptr_.sroa.0, align 8
  %13 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_17 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %14 = bitcast i8* %_new_gep_17 to <4 x i32>*
  store <4 x i32> <i32 10, i32 10, i32 10, i32 0>, <4 x i32>* %14, align 8
  store i64 24, i64* %XAX, align 8, !mcsema_real_eip !5
  store i64 24, i64* %XCX, align 8, !mcsema_real_eip !6
  %_new_gep_26 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 ptrtoint (%0* @data_0x176 to i64), i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !7
  store i64 24, i64* %XDI, align 8, !mcsema_real_eip !8
  %15 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %16 = add i64 %RSP_val.1, -128
  %_allin_new_bt_30 = bitcast [128 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !9
  %17 = ptrtoint [128 x i8]* %_local_stack_start_ptr_1 to i64
  store volatile i64 %17, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %16, i64* %XSP, align 8, !mcsema_real_eip !9
  %18 = call x86_64_sysvcc i64 @_malloc(i64 24)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_11 = load i8*, i8** %15, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_11, i64 8
  %19 = ptrtoint i8* %_gep_fix_ to i64
  store i64 %19, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !9
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3112 = load i8*, i8** %13, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3112, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %18, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !10
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3413 = load i8*, i8** %13, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3413, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %20 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !11
  store i64 %20, i64* %XAX, align 8, !mcsema_real_eip !11
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !12
  store i32 5, i32* %21, align 4, !mcsema_real_eip !12
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3714 = load i8*, i8** %13, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3714, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %22 = load i64, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !13
  store i64 %22, i64* %XAX, align 8, !mcsema_real_eip !13
  %23 = add i64 %22, 4, !mcsema_real_eip !14
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !14
  store i32 5, i32* %24, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4015 = load i8*, i8** %13, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4015, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %25 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !15
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !15
  %26 = add i64 %25, 8, !mcsema_real_eip !16
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !16
  store i32 5, i32* %27, align 4, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4316 = load i8*, i8** %13, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4316, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %28 = load i64, i64* %_allin_new_bt_45, align 8
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !17
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463, i64* %XCX, align 8
  %29 = add i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463, 8, !mcsema_real_eip !18
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !18
  store i64 %28, i64* %30, align 8, !mcsema_real_eip !18
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4817 = load i8*, i8** %13, align 8
  %_new_gep_49 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4817, i64 -16
  %31 = ptrtoint i8* %_new_gep_49 to i64
  store i64 %31, i64* %XAX, align 8, !mcsema_real_eip !19
  %32 = bitcast i64* %XCX to i64**
  %RCX_val.284 = load i64*, i64** %32, align 8
  store i64 %31, i64* %RCX_val.284, align 8, !mcsema_real_eip !20
  %33 = bitcast i64* %XDX to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %33, align 8
  store i64 3, i64* %R8, align 8, !mcsema_real_eip !21
  %EDX.30 = bitcast i64* %XDX to i32*, !mcsema_real_eip !22
  store i64 1, i64* %XDI, align 8, !mcsema_real_eip !22
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5118 = load i8*, i8** %13, align 8
  %_new_gep_52 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5118, i64 -76
  %34 = bitcast i8* %_new_gep_52 to i32*
  store i32 2, i32* %34, align 4, !mcsema_real_eip !23
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5419 = load i8*, i8** %13, align 8
  %_new_gep_55 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5419, i64 -80
  %EDX_val.37 = load i32, i32* %EDX.30, align 4, !mcsema_real_eip !24
  %35 = bitcast i8* %_new_gep_55 to i32*
  store i32 %EDX_val.37, i32* %35, align 4, !mcsema_real_eip !24
  %R8D.38 = bitcast i64* %R8 to i32*, !mcsema_real_eip !25
  %R8D_val.39 = load i32, i32* %R8D.38, align 4, !mcsema_real_eip !25
  %36 = zext i32 %R8D_val.39 to i64, !mcsema_real_eip !25
  store i64 %36, i64* %XDX, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5720 = load i8*, i8** %13, align 8
  %_new_gep_58 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5720, i64 -80
  %37 = bitcast i8* %_new_gep_58 to i32*
  %38 = load i32, i32* %37, align 4, !mcsema_real_eip !26
  %39 = zext i32 %38 to i64, !mcsema_real_eip !26
  store i64 %39, i64* %XCX, align 8, !mcsema_real_eip !26
  %_new_gep_61 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5720, i64 -76
  %40 = bitcast i8* %_new_gep_61 to i32*
  %41 = load i32, i32* %40, align 4, !mcsema_real_eip !27
  %42 = zext i32 %41 to i64, !mcsema_real_eip !27
  store i64 %42, i64* %R9, align 8, !mcsema_real_eip !27
  %_new_gep_64 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5720, i64 -84
  %43 = bitcast i8* %_new_gep_64 to i32*
  store i32 %R8D_val.39, i32* %43, align 4, !mcsema_real_eip !28
  %R9D.45 = bitcast i64* %R9 to i32*, !mcsema_real_eip !29
  %R9D_val.46 = load i32, i32* %R9D.45, align 4, !mcsema_real_eip !29
  %44 = zext i32 %R9D_val.46 to i64, !mcsema_real_eip !29
  store i64 %44, i64* %R8, align 8, !mcsema_real_eip !29
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6621 = load i8*, i8** %13, align 8
  %_new_gep_67 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6621, i64 -84
  %45 = bitcast i8* %_new_gep_67 to i32*
  %46 = load i32, i32* %45, align 4, !mcsema_real_eip !30
  %47 = zext i32 %46 to i64, !mcsema_real_eip !30
  store i64 %47, i64* %R9, align 8, !mcsema_real_eip !30
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6922 = load i8*, i8** %15, align 8
  %RSP_val.48 = load i64, i64* %XSP, align 8, !mcsema_real_eip !31
  %_new_gep_70 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6922, i64 -8
  %48 = add i64 %RSP_val.48, -8
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_71, align 8, !mcsema_real_eip !31
  %49 = ptrtoint i8* %_new_gep_70 to i64
  store volatile i64 %49, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %48, i64* %XSP, align 8, !mcsema_real_eip !31
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15123 = load i8*, i8** %13, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_70, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15123)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_15324 = load i8*, i8** %15, align 8
  %_gep_fix_154 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_15324, i64 8
  %50 = ptrtoint i8* %_gep_fix_154 to i64
  store i64 %50, i64* %_RSP_ptr_.sroa.0, align 8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7225 = load i8*, i8** %13, align 8
  %_new_gep_73 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7225, i64 -48
  %EDX_val.51 = load i32, i32* %EDX.30, align 4, !mcsema_real_eip !32
  %51 = bitcast i8* %_new_gep_73 to i32*
  store i32 %EDX_val.51, i32* %51, align 4, !mcsema_real_eip !32
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7526 = load i8*, i8** %13, align 8
  %_new_gep_76 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7526, i64 -56
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %RAX_val.53 = load i64, i64* %XAX, align 8, !mcsema_real_eip !33
  store i64 %RAX_val.53, i64* %_allin_new_bt_77, align 8, !mcsema_real_eip !33
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7827 = load i8*, i8** %13, align 8
  %_new_gep_79 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7827, i64 -56
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %52 = load i64, i64* %_allin_new_bt_80, align 8, !mcsema_real_eip !34
  store i64 %52, i64* %XAX, align 8, !mcsema_real_eip !34
  %_new_gep_82 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7827, i64 -40
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 %52, i64* %_allin_new_bt_83, align 8, !mcsema_real_eip !35
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8428 = load i8*, i8** %13, align 8
  %_new_gep_85 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8428, i64 -48
  %53 = bitcast i8* %_new_gep_85 to i32*
  %54 = load i32, i32* %53, align 4, !mcsema_real_eip !36
  %55 = zext i32 %54 to i64, !mcsema_real_eip !36
  store i64 %55, i64* %XCX, align 8, !mcsema_real_eip !36
  %_new_gep_88 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8428, i64 -32
  %ECX.59 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %56 = bitcast i8* %_new_gep_88 to i32*
  store i32 %54, i32* %56, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9029 = load i8*, i8** %13, align 8
  %_new_gep_91 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9029, i64 -40
  %57 = bitcast i8* %_new_gep_91 to i32*
  %58 = load i32, i32* %57, align 4, !mcsema_real_eip !38
  %59 = zext i32 %58 to i64, !mcsema_real_eip !38
  store i64 %59, i64* %XCX, align 8, !mcsema_real_eip !38
  %_new_gep_94 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9029, i64 -36
  %60 = bitcast i8* %_new_gep_94 to i32*
  %61 = load i32, i32* %60, align 4, !mcsema_real_eip !39
  %62 = add i32 %58, %61, !mcsema_real_eip !39
  %63 = xor i32 %62, %61, !mcsema_real_eip !39
  %64 = xor i32 %63, %58, !mcsema_real_eip !39
  %65 = and i32 %64, 16, !mcsema_real_eip !39
  %66 = icmp ne i32 %65, 0, !mcsema_real_eip !39
  store i1 %66, i1* %AF, align 1, !mcsema_real_eip !39
  %67 = icmp slt i32 %62, 0
  store i1 %67, i1* %SF, align 1, !mcsema_real_eip !39
  %68 = icmp eq i32 %62, 0, !mcsema_real_eip !39
  store i1 %68, i1* %ZF, align 1, !mcsema_real_eip !39
  %69 = xor i32 %61, -2147483648, !mcsema_real_eip !39
  %70 = xor i32 %69, %58, !mcsema_real_eip !39
  %71 = and i32 %63, %70, !mcsema_real_eip !39
  %72 = icmp slt i32 %71, 0
  store i1 %72, i1* %OF, align 1, !mcsema_real_eip !39
  %73 = trunc i32 %62 to i8, !mcsema_real_eip !39
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !39
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  store i1 %76, i1* %PF, align 1, !mcsema_real_eip !39
  %77 = icmp ult i32 %62, %61, !mcsema_real_eip !39
  store i1 %77, i1* %CF, align 1, !mcsema_real_eip !39
  %78 = zext i32 %62 to i64, !mcsema_real_eip !39
  store i64 %78, i64* %XCX, align 8, !mcsema_real_eip !39
  %_new_gep_97 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9029, i64 -32
  %79 = bitcast i8* %_new_gep_97 to i32*
  %80 = load i32, i32* %79, align 4, !mcsema_real_eip !40
  %81 = add i32 %62, %80, !mcsema_real_eip !40
  %82 = xor i32 %81, %80, !mcsema_real_eip !40
  %83 = xor i32 %82, %62, !mcsema_real_eip !40
  %84 = and i32 %83, 16, !mcsema_real_eip !40
  %85 = icmp ne i32 %84, 0, !mcsema_real_eip !40
  store i1 %85, i1* %AF, align 1, !mcsema_real_eip !40
  %86 = icmp slt i32 %81, 0
  store i1 %86, i1* %SF, align 1, !mcsema_real_eip !40
  %87 = icmp eq i32 %81, 0, !mcsema_real_eip !40
  store i1 %87, i1* %ZF, align 1, !mcsema_real_eip !40
  %88 = xor i32 %80, -2147483648, !mcsema_real_eip !40
  %89 = xor i32 %88, %62, !mcsema_real_eip !40
  %90 = and i32 %82, %89, !mcsema_real_eip !40
  %91 = icmp slt i32 %90, 0
  store i1 %91, i1* %OF, align 1, !mcsema_real_eip !40
  %92 = trunc i32 %81 to i8, !mcsema_real_eip !40
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !40
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !40
  %96 = icmp ult i32 %81, %80, !mcsema_real_eip !40
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !40
  %97 = zext i32 %81 to i64, !mcsema_real_eip !40
  store i64 %97, i64* %XCX, align 8, !mcsema_real_eip !40
  %_new_gep_100 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9029, i64 -60
  %98 = bitcast i8* %_new_gep_100 to i32*
  store i32 %81, i32* %98, align 4, !mcsema_real_eip !41
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10230 = load i8*, i8** %13, align 8
  %_new_gep_103 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10230, i64 -60
  %99 = bitcast i8* %_new_gep_103 to i32*
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !42
  %101 = zext i32 %100 to i64, !mcsema_real_eip !42
  store i64 %101, i64* %XSI, align 8, !mcsema_real_eip !42
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10230, i64 -72
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %102 = load i64, i64* %_allin_new_bt_107, align 8, !mcsema_real_eip !43
  store i64 %102, i64* %XDI, align 8, !mcsema_real_eip !43
  %AL.73 = bitcast i64* %XAX to i8*, !mcsema_real_eip !44
  store i8 0, i8* %AL.73, align 1, !mcsema_real_eip !44
  %RDX_val.76 = load i64, i64* %XDX, align 8, !mcsema_real_eip !45
  %RCX_val.77 = load i64, i64* %XCX, align 8, !mcsema_real_eip !45
  %R8_val.78 = load i64, i64* %R8, align 8, !mcsema_real_eip !45
  %R9_val.79 = load i64, i64* %R9, align 8, !mcsema_real_eip !45
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831 = load i8*, i8** %15, align 8
  %_allin_new_bt_109 = bitcast i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831 to i64*
  %103 = load i64, i64* %_allin_new_bt_109, align 8, !mcsema_real_eip !45
  %_new_gep_110 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 8
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %104 = load i64, i64* %_allin_new_bt_111, align 8, !mcsema_real_eip !45
  %_new_gep_112 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 16
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %105 = load i64, i64* %_allin_new_bt_113, align 8, !mcsema_real_eip !45
  %_new_gep_114 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 24
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %106 = load i64, i64* %_allin_new_bt_115, align 8, !mcsema_real_eip !45
  %_new_gep_116 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 32
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %107 = load i64, i64* %_allin_new_bt_117, align 8, !mcsema_real_eip !45
  %_new_gep_118 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 40
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %108 = load i64, i64* %_allin_new_bt_119, align 8, !mcsema_real_eip !45
  %RSP_val.81 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_121 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_10831, i64 -8
  %109 = add i64 %RSP_val.81, -8
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_122, align 8, !mcsema_real_eip !45
  %110 = ptrtoint i8* %_new_gep_121 to i64
  store volatile i64 %110, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %109, i64* %XSP, align 8, !mcsema_real_eip !45
  %111 = call x86_64_sysvcc i64 @_printf(i64 %102, i64 %101, i64 %RDX_val.76, i64 %RCX_val.77, i64 %R8_val.78, i64 %R9_val.79, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_15532 = load i8*, i8** %15, align 8
  %_gep_fix_156 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_15532, i64 8
  %112 = ptrtoint i8* %_gep_fix_156 to i64
  store i64 %112, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %111, i64* %XAX, align 8, !mcsema_real_eip !45
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12333 = load i8*, i8** %13, align 8
  %_new_gep_124 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12333, i64 -60
  %113 = bitcast i8* %_new_gep_124 to i32*
  %114 = load i32, i32* %113, align 4, !mcsema_real_eip !46
  %115 = zext i32 %114 to i64, !mcsema_real_eip !46
  store i64 %115, i64* %XCX, align 8, !mcsema_real_eip !46
  %_new_gep_127 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12333, i64 -88
  %116 = trunc i64 %111 to i32
  %117 = bitcast i8* %_new_gep_127 to i32*
  store i32 %116, i32* %117, align 4, !mcsema_real_eip !47
  %ECX_val.87 = load i32, i32* %ECX.59, align 4, !mcsema_real_eip !48
  %118 = zext i32 %ECX_val.87 to i64, !mcsema_real_eip !48
  store i64 %118, i64* %XAX, align 8, !mcsema_real_eip !48
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_129 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %119 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_129 to i8*
  %RSP_val.88 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %_new_gep_130 = getelementptr i8, i8* %119, i64 112
  %120 = add i64 %RSP_val.88, 112, !mcsema_real_eip !49
  %_trans_p2i_131 = ptrtoint i8* %_new_gep_130 to i64
  %_trans_xor_133 = xor i64 %_trans_p2i_131, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_129
  %121 = and i64 %_trans_xor_133, 16
  %122 = icmp eq i64 %121, 0
  store i1 %122, i1* %AF, align 1, !mcsema_real_eip !49
  %123 = icmp slt i64 %120, 0
  store i1 %123, i1* %SF, align 1, !mcsema_real_eip !49
  %_trans_icmp_eq_135 = icmp eq i8* %_new_gep_130, null
  store i1 %_trans_icmp_eq_135, i1* %ZF, align 1, !mcsema_real_eip !49
  %124 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_129, -9223372036854775808, !mcsema_real_eip !49
  %125 = and i64 %_trans_xor_133, %124, !mcsema_real_eip !49
  %126 = icmp slt i64 %125, 0
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !49
  %_trans_trunc_142 = trunc i64 %_trans_p2i_131 to i8
  %127 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_142), !mcsema_real_eip !49
  %128 = and i8 %127, 1
  %129 = icmp eq i8 %128, 0
  store i1 %129, i1* %PF, align 1, !mcsema_real_eip !49
  %_trans_icmp_ne_144 = icmp ne i64 %_trans_p2i_131, %RSP_val.88
  store i1 %_trans_icmp_ne_144, i1* %CF, align 1, !mcsema_real_eip !49
  store volatile i64 %_trans_p2i_131, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %120, i64* %XSP, align 8, !mcsema_real_eip !49
  %_allin_new_bt_146 = bitcast i8* %_new_gep_130 to i64*
  %130 = load i64, i64* %_allin_new_bt_146, align 8, !mcsema_real_eip !50
  store volatile i64 %130, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %130, i64* %XBP, align 8, !mcsema_real_eip !50
  %_new_gep_147 = getelementptr i8, i8* %119, i64 120
  %131 = add i64 %RSP_val.88, 120, !mcsema_real_eip !50
  %132 = ptrtoint i8* %_new_gep_147 to i64
  store volatile i64 %132, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %131, i64* %XSP, align 8, !mcsema_real_eip !50
  %_new_gep_149 = getelementptr i8, i8* %119, i64 128
  %133 = add i64 %RSP_val.88, 128, !mcsema_real_eip !51
  %_allin_new_bt_150 = bitcast i8* %_new_gep_147 to i64*
  %134 = load i64, i64* %_allin_new_bt_150, align 8, !mcsema_real_eip !51
  store i64 %134, i64* %XIP, align 8, !mcsema_real_eip !51
  %135 = ptrtoint i8* %_new_gep_149 to i64
  store volatile i64 %135, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %133, i64* %XSP, align 8, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !52
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !52
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !52
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !52
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !52
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !52
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !52
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !52
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !52
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !52
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !52
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !52
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !52
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !52
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !52
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !52
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !52
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !52
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !52
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !52
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !52
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !52
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !52
  %RBP_val.91 = load i64, i64* %XBP, align 8, !mcsema_real_eip !52
  %RSP_val.92 = load i64, i64* %XSP, align 8, !mcsema_real_eip !52
  %1 = add i64 %RSP_val.92, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !52
  store i64 %RBP_val.91, i64* %2, align 8, !mcsema_real_eip !52
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !52
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !53
  %3 = add i64 %RSP_val.92, 16, !mcsema_real_eip !54
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !54
  %5 = load i64, i64* %4, align 8, !mcsema_real_eip !54
  store i64 %5, i64* %XAX, align 8, !mcsema_real_eip !54
  %6 = add i64 %RSP_val.92, 8, !mcsema_real_eip !55
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !55
  %8 = load i64, i64* %7, align 8, !mcsema_real_eip !55
  store i64 %8, i64* %R10, align 8, !mcsema_real_eip !55
  %9 = add i64 %RSP_val.92, -28, !mcsema_real_eip !56
  %EDI.97 = bitcast i64* %XDI to i32*, !mcsema_real_eip !56
  %EDI_val.98 = load i32, i32* %EDI.97, align 4, !mcsema_real_eip !56
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !56
  store i32 %EDI_val.98, i32* %10, align 4, !mcsema_real_eip !56
  %RBP_val.99 = load i64, i64* %XBP, align 8, !mcsema_real_eip !57
  %11 = add i64 %RBP_val.99, -24, !mcsema_real_eip !57
  %ESI.100 = bitcast i64* %XSI to i32*, !mcsema_real_eip !57
  %ESI_val.101 = load i32, i32* %ESI.100, align 4, !mcsema_real_eip !57
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !57
  store i32 %ESI_val.101, i32* %12, align 4, !mcsema_real_eip !57
  %RBP_val.102 = load i64, i64* %XBP, align 8, !mcsema_real_eip !58
  %13 = add i64 %RBP_val.102, -28, !mcsema_real_eip !58
  %EDX.103 = bitcast i64* %XDX to i32*, !mcsema_real_eip !58
  %EDX_val.104 = load i32, i32* %EDX.103, align 4, !mcsema_real_eip !58
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !58
  store i32 %EDX_val.104, i32* %14, align 4, !mcsema_real_eip !58
  %RBP_val.105 = load i64, i64* %XBP, align 8, !mcsema_real_eip !59
  %15 = add i64 %RBP_val.105, -32, !mcsema_real_eip !59
  %ECX.106 = bitcast i64* %XCX to i32*, !mcsema_real_eip !59
  %ECX_val.107 = load i32, i32* %ECX.106, align 4, !mcsema_real_eip !59
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !59
  store i32 %ECX_val.107, i32* %16, align 4, !mcsema_real_eip !59
  %RBP_val.108 = load i64, i64* %XBP, align 8, !mcsema_real_eip !60
  %17 = add i64 %RBP_val.108, -36, !mcsema_real_eip !60
  %R8D.109 = bitcast i64* %R8 to i32*, !mcsema_real_eip !60
  %R8D_val.110 = load i32, i32* %R8D.109, align 4, !mcsema_real_eip !60
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !60
  store i32 %R8D_val.110, i32* %18, align 4, !mcsema_real_eip !60
  %RBP_val.111 = load i64, i64* %XBP, align 8, !mcsema_real_eip !61
  %19 = add i64 %RBP_val.111, -40, !mcsema_real_eip !61
  %R9D.112 = bitcast i64* %R9 to i32*, !mcsema_real_eip !61
  %R9D_val.113 = load i32, i32* %R9D.112, align 4, !mcsema_real_eip !61
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !61
  store i32 %R9D_val.113, i32* %20, align 4, !mcsema_real_eip !61
  %RBP_val.114 = load i64, i64* %XBP, align 8, !mcsema_real_eip !62
  %21 = add i64 %RBP_val.114, -48, !mcsema_real_eip !62
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !62
  %R10_val.115 = load i64, i64* %R10, align 8, !mcsema_real_eip !62
  store i64 %R10_val.115, i64* %22, align 8, !mcsema_real_eip !62
  %RBP_val.116 = load i64, i64* %XBP, align 8, !mcsema_real_eip !63
  %23 = add i64 %RBP_val.116, -56, !mcsema_real_eip !63
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !63
  %RAX_val.117 = load i64, i64* %XAX, align 8, !mcsema_real_eip !63
  store i64 %RAX_val.117, i64* %24, align 8, !mcsema_real_eip !63
  %RBP_val.118 = load i64, i64* %XBP, align 8, !mcsema_real_eip !64
  %25 = add i64 %RBP_val.118, -48, !mcsema_real_eip !64
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !64
  %27 = load i64, i64* %26, align 8, !mcsema_real_eip !64
  store i64 %27, i64* %XAX, align 8, !mcsema_real_eip !64
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !65
  %29 = load i32, i32* %28, align 4, !mcsema_real_eip !65
  %30 = zext i32 %29 to i64, !mcsema_real_eip !65
  store i64 %30, i64* %XCX, align 8, !mcsema_real_eip !65
  %31 = add i64 %RBP_val.118, -56, !mcsema_real_eip !66
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !66
  %33 = load i64, i64* %32, align 8, !mcsema_real_eip !66
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !66
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !67
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !67
  %36 = zext i32 %35 to i64, !mcsema_real_eip !67
  store i64 %36, i64* %XDX, align 8, !mcsema_real_eip !67
  %37 = add i32 %35, %29, !mcsema_real_eip !68
  %38 = xor i32 %37, %29, !mcsema_real_eip !68
  %39 = xor i32 %38, %35, !mcsema_real_eip !68
  %40 = and i32 %39, 16, !mcsema_real_eip !68
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !68
  store i1 %41, i1* %AF, align 1, !mcsema_real_eip !68
  %42 = icmp slt i32 %37, 0
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !68
  %43 = icmp eq i32 %37, 0, !mcsema_real_eip !68
  store i1 %43, i1* %ZF, align 1, !mcsema_real_eip !68
  %44 = xor i32 %29, -2147483648, !mcsema_real_eip !68
  %45 = xor i32 %44, %35, !mcsema_real_eip !68
  %46 = and i32 %38, %45, !mcsema_real_eip !68
  %47 = icmp slt i32 %46, 0
  store i1 %47, i1* %OF, align 1, !mcsema_real_eip !68
  %48 = trunc i32 %37 to i8, !mcsema_real_eip !68
  %49 = tail call i8 @llvm.ctpop.i8(i8 %48), !mcsema_real_eip !68
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  store i1 %51, i1* %PF, align 1, !mcsema_real_eip !68
  %52 = icmp ult i32 %37, %29, !mcsema_real_eip !68
  store i1 %52, i1* %CF, align 1, !mcsema_real_eip !68
  %53 = zext i32 %37 to i64, !mcsema_real_eip !68
  store i64 %53, i64* %XCX, align 8, !mcsema_real_eip !68
  %54 = add i64 %RBP_val.118, -72, !mcsema_real_eip !69
  %55 = inttoptr i64 %54 to i32*, !mcsema_real_eip !69
  store i32 %37, i32* %55, align 4, !mcsema_real_eip !69
  %RBP_val.129 = load i64, i64* %XBP, align 8, !mcsema_real_eip !70
  %56 = add i64 %RBP_val.129, -48, !mcsema_real_eip !70
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !70
  %58 = load i64, i64* %57, align 8, !mcsema_real_eip !70
  store i64 %58, i64* %XAX, align 8, !mcsema_real_eip !70
  %59 = add i64 %58, 4, !mcsema_real_eip !71
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !71
  %61 = load i32, i32* %60, align 4, !mcsema_real_eip !71
  %62 = zext i32 %61 to i64, !mcsema_real_eip !71
  store i64 %62, i64* %XCX, align 8, !mcsema_real_eip !71
  %63 = add i64 %RBP_val.129, -56, !mcsema_real_eip !72
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !72
  %65 = load i64, i64* %64, align 8, !mcsema_real_eip !72
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !72
  %66 = add i64 %65, 4, !mcsema_real_eip !73
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !73
  %68 = load i32, i32* %67, align 4, !mcsema_real_eip !73
  %69 = zext i32 %68 to i64, !mcsema_real_eip !73
  store i64 %69, i64* %XDX, align 8, !mcsema_real_eip !73
  %70 = add i32 %68, %61, !mcsema_real_eip !74
  %71 = xor i32 %70, %61, !mcsema_real_eip !74
  %72 = xor i32 %71, %68, !mcsema_real_eip !74
  %73 = and i32 %72, 16, !mcsema_real_eip !74
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !74
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !74
  %75 = icmp slt i32 %70, 0
  store i1 %75, i1* %SF, align 1, !mcsema_real_eip !74
  %76 = icmp eq i32 %70, 0, !mcsema_real_eip !74
  store i1 %76, i1* %ZF, align 1, !mcsema_real_eip !74
  %77 = xor i32 %61, -2147483648, !mcsema_real_eip !74
  %78 = xor i32 %77, %68, !mcsema_real_eip !74
  %79 = and i32 %71, %78, !mcsema_real_eip !74
  %80 = icmp slt i32 %79, 0
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !74
  %81 = trunc i32 %70 to i8, !mcsema_real_eip !74
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !74
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !74
  %85 = icmp ult i32 %70, %61, !mcsema_real_eip !74
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !74
  %86 = zext i32 %70 to i64, !mcsema_real_eip !74
  store i64 %86, i64* %XCX, align 8, !mcsema_real_eip !74
  %87 = add i64 %RBP_val.129, -68, !mcsema_real_eip !75
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !75
  store i32 %70, i32* %88, align 4, !mcsema_real_eip !75
  %RBP_val.140 = load i64, i64* %XBP, align 8, !mcsema_real_eip !76
  %89 = add i64 %RBP_val.140, -48, !mcsema_real_eip !76
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !76
  %91 = load i64, i64* %90, align 8, !mcsema_real_eip !76
  store i64 %91, i64* %XAX, align 8, !mcsema_real_eip !76
  %92 = add i64 %91, 8, !mcsema_real_eip !77
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !77
  %94 = load i32, i32* %93, align 4, !mcsema_real_eip !77
  %95 = zext i32 %94 to i64, !mcsema_real_eip !77
  store i64 %95, i64* %XCX, align 8, !mcsema_real_eip !77
  %96 = add i64 %RBP_val.140, -56, !mcsema_real_eip !78
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !78
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !78
  store i64 %98, i64* %XAX, align 8, !mcsema_real_eip !78
  %99 = add i64 %98, 8, !mcsema_real_eip !79
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !79
  %101 = load i32, i32* %100, align 4, !mcsema_real_eip !79
  %102 = zext i32 %101 to i64, !mcsema_real_eip !79
  store i64 %102, i64* %XDX, align 8, !mcsema_real_eip !79
  %103 = add i32 %101, %94, !mcsema_real_eip !80
  %104 = xor i32 %103, %94, !mcsema_real_eip !80
  %105 = xor i32 %104, %101, !mcsema_real_eip !80
  %106 = and i32 %105, 16, !mcsema_real_eip !80
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !80
  store i1 %107, i1* %AF, align 1, !mcsema_real_eip !80
  %108 = icmp slt i32 %103, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !80
  %109 = icmp eq i32 %103, 0, !mcsema_real_eip !80
  store i1 %109, i1* %ZF, align 1, !mcsema_real_eip !80
  %110 = xor i32 %94, -2147483648, !mcsema_real_eip !80
  %111 = xor i32 %110, %101, !mcsema_real_eip !80
  %112 = and i32 %104, %111, !mcsema_real_eip !80
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF, align 1, !mcsema_real_eip !80
  %114 = trunc i32 %103 to i8, !mcsema_real_eip !80
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !80
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !80
  %118 = icmp ult i32 %103, %94, !mcsema_real_eip !80
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !80
  %119 = zext i32 %103 to i64, !mcsema_real_eip !80
  store i64 %119, i64* %XCX, align 8, !mcsema_real_eip !80
  %120 = add i64 %RBP_val.140, -64, !mcsema_real_eip !81
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !81
  store i32 %103, i32* %121, align 4, !mcsema_real_eip !81
  %RBP_val.151 = load i64, i64* %XBP, align 8, !mcsema_real_eip !82
  %122 = add i64 %RBP_val.151, -64, !mcsema_real_eip !82
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !82
  %124 = load i32, i32* %123, align 4, !mcsema_real_eip !82
  %125 = zext i32 %124 to i64, !mcsema_real_eip !82
  store i64 %125, i64* %XCX, align 8, !mcsema_real_eip !82
  %126 = add i64 %RBP_val.151, -8, !mcsema_real_eip !83
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !83
  store i32 %124, i32* %127, align 4, !mcsema_real_eip !83
  %RBP_val.155 = load i64, i64* %XBP, align 8, !mcsema_real_eip !84
  %128 = add i64 %RBP_val.155, -72, !mcsema_real_eip !84
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !84
  %130 = load i64, i64* %129, align 8, !mcsema_real_eip !84
  store i64 %130, i64* %XAX, align 8, !mcsema_real_eip !84
  %131 = add i64 %RBP_val.155, -16, !mcsema_real_eip !85
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !85
  store i64 %130, i64* %132, align 8, !mcsema_real_eip !85
  %RBP_val.158 = load i64, i64* %XBP, align 8, !mcsema_real_eip !86
  %133 = add i64 %RBP_val.158, -8, !mcsema_real_eip !86
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !86
  %135 = load i32, i32* %134, align 4, !mcsema_real_eip !86
  %136 = zext i32 %135 to i64, !mcsema_real_eip !86
  store i64 %136, i64* %XCX, align 8, !mcsema_real_eip !86
  %137 = add i64 %RBP_val.158, -80, !mcsema_real_eip !87
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !87
  store i32 %135, i32* %138, align 4, !mcsema_real_eip !87
  %RBP_val.162 = load i64, i64* %XBP, align 8, !mcsema_real_eip !88
  %139 = add i64 %RBP_val.162, -16, !mcsema_real_eip !88
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !88
  %141 = load i64, i64* %140, align 8, !mcsema_real_eip !88
  store i64 %141, i64* %XAX, align 8, !mcsema_real_eip !88
  %142 = add i64 %RBP_val.162, -88, !mcsema_real_eip !89
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !89
  store i64 %141, i64* %143, align 8, !mcsema_real_eip !89
  %RBP_val.165 = load i64, i64* %XBP, align 8, !mcsema_real_eip !90
  %144 = add i64 %RBP_val.165, -88, !mcsema_real_eip !90
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !90
  %146 = load i64, i64* %145, align 8, !mcsema_real_eip !90
  store i64 %146, i64* %XAX, align 8, !mcsema_real_eip !90
  %147 = add i64 %RBP_val.165, -80, !mcsema_real_eip !91
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !91
  %149 = load i32, i32* %148, align 4, !mcsema_real_eip !91
  %150 = zext i32 %149 to i64, !mcsema_real_eip !91
  store i64 %150, i64* %XDX, align 8, !mcsema_real_eip !91
  %RSP_val.167 = load i64, i64* %XSP, align 8, !mcsema_real_eip !92
  %151 = inttoptr i64 %RSP_val.167 to i64*, !mcsema_real_eip !92
  %152 = load i64, i64* %151, align 8, !mcsema_real_eip !92
  store i64 %152, i64* %XBP, align 8, !mcsema_real_eip !92
  %153 = add i64 %RSP_val.167, 8, !mcsema_real_eip !92
  store i64 %153, i64* %XSP, align 8, !mcsema_real_eip !92
  %154 = add i64 %RSP_val.167, 16, !mcsema_real_eip !93
  %155 = inttoptr i64 %153 to i64*, !mcsema_real_eip !93
  %156 = load i64, i64* %155, align 8, !mcsema_real_eip !93
  store i64 %156, i64* %XIP, align 8, !mcsema_real_eip !93
  store i64 %154, i64* %XSP, align 8, !mcsema_real_eip !93
  ret void, !mcsema_real_eip !93
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline
define x86_64_sysvcc void @sub_90.1(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_.sroa.0 = alloca i64, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [128 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 128
  %1 = ptrtoint i8* %_local_stack_end_ptr_ to i64
  store i64 %1, i64* %_RSP_ptr_.sroa.0, align 8
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
  %_new_gep_ = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %2 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  %3 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %3, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %2, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %4 = add i64 %RSP_val.1, -120
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %3
  %5 = and i64 %_trans_xor_, 16
  %6 = icmp eq i64 %5, 0
  store i1 %6, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %7 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  store i1 %9, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %10 = icmp slt i64 %4, 0
  store i1 %10, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 112 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %11 = and i64 %_trans_xor_, %3, !mcsema_real_eip !4
  %12 = icmp slt i64 %11, 0
  store i1 %12, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i64 %_trans_p2i_, i64* %_RSP_ptr_.sroa.0, align 8
  %_new_gep_17 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %13 = bitcast i8* %_new_gep_17 to <4 x i32>*
  store <4 x i32> <i32 10, i32 10, i32 10, i32 0>, <4 x i32>* %13, align 8
  store i64 24, i64* %XAX, align 8, !mcsema_real_eip !5
  store i64 24, i64* %XCX, align 8, !mcsema_real_eip !6
  %_new_gep_26 = getelementptr inbounds [128 x i8], [128 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 ptrtoint (%0* @data_0x176 to i64), i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !7
  store i64 24, i64* %XDI, align 8, !mcsema_real_eip !8
  %14 = bitcast i64* %_RSP_ptr_.sroa.0 to i8**
  %15 = add i64 %RSP_val.1, -128
  %_allin_new_bt_30 = bitcast [128 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !9
  %16 = ptrtoint [128 x i8]* %_local_stack_start_ptr_1 to i64
  store volatile i64 %16, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %15, i64* %XSP, align 8, !mcsema_real_eip !9
  %17 = call x86_64_sysvcc i64 @_malloc(i64 24)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_16 = load i8*, i8** %14, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_16, i64 8
  %18 = ptrtoint i8* %_gep_fix_ to i64
  store i64 %18, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !9
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %17, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !10
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -24
  %_ptr_to_int_ = ptrtoint i8* %_new_gep_35 to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %1
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_35
  %19 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %19, align 8
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !11
  %20 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !12
  store i32 5, i32* %20, align 4, !mcsema_real_eip !12
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -24
  %_ptr_to_int_157 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_160 = sub i64 %_ptr_to_int_157, %1
  %_pot_address_in_parent_stack_161 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_160
  %_cond1_162 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_163 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_164 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_165 = or i1 %_cond2_1_163, %_cond2_2_164
  %_cond4_166 = icmp ule i8* %_pot_address_in_parent_stack_161, %_parent_stack_end_ptr_
  %_cond1_n_cond2_167 = and i1 %_cond1_162, %_cond2_165
  %_cond1_n_cond2_cond3_168 = and i1 %_cond1_n_cond2_167, %_cond4_166
  %_address_in_parent_stack_bt_170._allin_new_bt_39.v = select i1 %_cond1_n_cond2_cond3_168, i8* %_pot_address_in_parent_stack_161, i8* %_new_gep_38
  %_address_in_parent_stack_bt_170._allin_new_bt_39 = bitcast i8* %_address_in_parent_stack_bt_170._allin_new_bt_39.v to i64*
  %_new_load_171 = load i64, i64* %_address_in_parent_stack_bt_170._allin_new_bt_39, align 8
  store i64 %_new_load_171, i64* %XAX, align 8, !mcsema_real_eip !13
  %21 = add i64 %_new_load_171, 4, !mcsema_real_eip !14
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !14
  store i32 5, i32* %22, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -24
  %_ptr_to_int_172 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_175 = sub i64 %_ptr_to_int_172, %1
  %_pot_address_in_parent_stack_176 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_175
  %_cond1_177 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_178 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_179 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_180 = or i1 %_cond2_1_178, %_cond2_2_179
  %_cond4_181 = icmp ule i8* %_pot_address_in_parent_stack_176, %_parent_stack_end_ptr_
  %_cond1_n_cond2_182 = and i1 %_cond1_177, %_cond2_180
  %_cond1_n_cond2_cond3_183 = and i1 %_cond1_n_cond2_182, %_cond4_181
  %.v2 = select i1 %_cond1_n_cond2_cond3_183, i8* %_pot_address_in_parent_stack_176, i8* %_new_gep_41
  %23 = bitcast i8* %.v2 to i64*
  %_new_load_186 = load i64, i64* %23, align 8
  store i64 %_new_load_186, i64* %XAX, align 8, !mcsema_real_eip !15
  %24 = add i64 %_new_load_186, 8, !mcsema_real_eip !16
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !16
  store i32 5, i32* %25, align 4, !mcsema_real_eip !16
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -24
  %_ptr_to_int_187 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_190 = sub i64 %_ptr_to_int_187, %1
  %_pot_address_in_parent_stack_191 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_190
  %_cond1_192 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_193 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_194 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_195 = or i1 %_cond2_1_193, %_cond2_2_194
  %_cond4_196 = icmp ule i8* %_pot_address_in_parent_stack_191, %_parent_stack_end_ptr_
  %_cond1_n_cond2_197 = and i1 %_cond1_192, %_cond2_195
  %_cond1_n_cond2_cond3_198 = and i1 %_cond1_n_cond2_197, %_cond4_196
  %_address_in_parent_stack_bt_200._allin_new_bt_45.v = select i1 %_cond1_n_cond2_cond3_198, i8* %_pot_address_in_parent_stack_191, i8* %_new_gep_44
  %_address_in_parent_stack_bt_200._allin_new_bt_45 = bitcast i8* %_address_in_parent_stack_bt_200._allin_new_bt_45.v to i64*
  %_new_load_201 = load i64, i64* %_address_in_parent_stack_bt_200._allin_new_bt_45, align 8
  store i64 %_new_load_201, i64* %XAX, align 8, !mcsema_real_eip !17
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  store volatile i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463, i64* %XCX, align 8
  %26 = add i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_463, 8, !mcsema_real_eip !18
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !18
  store i64 %_new_load_201, i64* %27, align 8, !mcsema_real_eip !18
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_49 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_48, i64 -16
  %28 = ptrtoint i8* %_new_gep_49 to i64
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !19
  %29 = bitcast i64* %XCX to i64**
  %RCX_val.284 = load i64*, i64** %29, align 8
  store i64 %28, i64* %RCX_val.284, align 8, !mcsema_real_eip !20
  %30 = bitcast i64* %XDX to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %30, align 8
  store i64 3, i64* %R8, align 8, !mcsema_real_eip !21
  %EDX.30 = bitcast i64* %XDX to i32*, !mcsema_real_eip !22
  store i64 1, i64* %XDI, align 8, !mcsema_real_eip !22
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_52 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_51, i64 -76
  %31 = bitcast i8* %_new_gep_52 to i32*
  store i32 2, i32* %31, align 4, !mcsema_real_eip !23
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_55 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_54, i64 -80
  %EDX_val.37 = load i32, i32* %EDX.30, align 4, !mcsema_real_eip !24
  %32 = bitcast i8* %_new_gep_55 to i32*
  store i32 %EDX_val.37, i32* %32, align 4, !mcsema_real_eip !24
  %R8D.38 = bitcast i64* %R8 to i32*, !mcsema_real_eip !25
  %R8D_val.39 = load i32, i32* %R8D.38, align 4, !mcsema_real_eip !25
  %33 = zext i32 %R8D_val.39 to i64, !mcsema_real_eip !25
  store i64 %33, i64* %XDX, align 8, !mcsema_real_eip !25
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_58 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_57, i64 -80
  %34 = ptrtoint i8* %_new_gep_58 to i64
  %_offset_above_rbp_205 = sub i64 %34, %1
  %_pot_address_in_parent_stack_206 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_cond1_207 = icmp ugt i8* %_new_gep_58, %_local_stack_end_ptr_
  %_cond2_1_208 = icmp ugt i8* %_new_gep_58, %_parent_stack_end_ptr_
  %_cond2_2_209 = icmp ult i8* %_new_gep_58, %_parent_stack_start_ptr_
  %_cond2_210 = or i1 %_cond2_1_208, %_cond2_2_209
  %_cond4_211 = icmp ule i8* %_pot_address_in_parent_stack_206, %_parent_stack_end_ptr_
  %_cond1_n_cond2_212 = and i1 %_cond1_207, %_cond2_210
  %_cond1_n_cond2_cond3_213 = and i1 %_cond1_n_cond2_212, %_cond4_211
  %.v5 = select i1 %_cond1_n_cond2_cond3_213, i8* %_pot_address_in_parent_stack_206, i8* %_new_gep_58
  %35 = bitcast i8* %.v5 to i32*
  %_new_load_216 = load i32, i32* %35, align 4
  %36 = zext i32 %_new_load_216 to i64, !mcsema_real_eip !26
  store i64 %36, i64* %XCX, align 8, !mcsema_real_eip !26
  %_new_gep_61 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_57, i64 -76
  %37 = ptrtoint i8* %_new_gep_61 to i64
  %_offset_above_rbp_220 = sub i64 %37, %1
  %_pot_address_in_parent_stack_221 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_cond1_222 = icmp ugt i8* %_new_gep_61, %_local_stack_end_ptr_
  %_cond2_1_223 = icmp ugt i8* %_new_gep_61, %_parent_stack_end_ptr_
  %_cond2_2_224 = icmp ult i8* %_new_gep_61, %_parent_stack_start_ptr_
  %_cond2_225 = or i1 %_cond2_1_223, %_cond2_2_224
  %_cond4_226 = icmp ule i8* %_pot_address_in_parent_stack_221, %_parent_stack_end_ptr_
  %_cond1_n_cond2_227 = and i1 %_cond1_222, %_cond2_225
  %_cond1_n_cond2_cond3_228 = and i1 %_cond1_n_cond2_227, %_cond4_226
  %_address_in_parent_stack_bt_230..v = select i1 %_cond1_n_cond2_cond3_228, i8* %_pot_address_in_parent_stack_221, i8* %_new_gep_61
  %_address_in_parent_stack_bt_230. = bitcast i8* %_address_in_parent_stack_bt_230..v to i32*
  %_new_load_231 = load i32, i32* %_address_in_parent_stack_bt_230., align 4
  %38 = zext i32 %_new_load_231 to i64, !mcsema_real_eip !27
  store i64 %38, i64* %R9, align 8, !mcsema_real_eip !27
  %_new_gep_64 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_57, i64 -84
  %39 = bitcast i8* %_new_gep_64 to i32*
  store i32 %R8D_val.39, i32* %39, align 4, !mcsema_real_eip !28
  %R9D.45 = bitcast i64* %R9 to i32*, !mcsema_real_eip !29
  %R9D_val.46 = load i32, i32* %R9D.45, align 4, !mcsema_real_eip !29
  %40 = zext i32 %R9D_val.46 to i64, !mcsema_real_eip !29
  store i64 %40, i64* %R8, align 8, !mcsema_real_eip !29
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_67 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_66, i64 -84
  %41 = ptrtoint i8* %_new_gep_67 to i64
  %_offset_above_rbp_235 = sub i64 %41, %1
  %_pot_address_in_parent_stack_236 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_235
  %_cond1_237 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_238 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_239 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_240 = or i1 %_cond2_1_238, %_cond2_2_239
  %_cond4_241 = icmp ule i8* %_pot_address_in_parent_stack_236, %_parent_stack_end_ptr_
  %_cond1_n_cond2_242 = and i1 %_cond1_237, %_cond2_240
  %_cond1_n_cond2_cond3_243 = and i1 %_cond1_n_cond2_242, %_cond4_241
  %.v6 = select i1 %_cond1_n_cond2_cond3_243, i8* %_pot_address_in_parent_stack_236, i8* %_new_gep_67
  %42 = bitcast i8* %.v6 to i32*
  %_new_load_246 = load i32, i32* %42, align 4
  %43 = zext i32 %_new_load_246 to i64, !mcsema_real_eip !30
  store i64 %43, i64* %R9, align 8, !mcsema_real_eip !30
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6917 = load i8*, i8** %14, align 8
  %RSP_val.48 = load i64, i64* %XSP, align 8, !mcsema_real_eip !31
  %_new_gep_70 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_6917, i64 -8
  %44 = add i64 %RSP_val.48, -8
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_71, align 8, !mcsema_real_eip !31
  %45 = ptrtoint i8* %_new_gep_70 to i64
  store volatile i64 %45, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %44, i64* %XSP, align 8, !mcsema_real_eip !31
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_151 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_70, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_151)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_15318 = load i8*, i8** %14, align 8
  %_gep_fix_154 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_15318, i64 8
  %46 = ptrtoint i8* %_gep_fix_154 to i64
  store i64 %46, i64* %_RSP_ptr_.sroa.0, align 8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_73 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_72, i64 -48
  %EDX_val.51 = load i32, i32* %EDX.30, align 4, !mcsema_real_eip !32
  %47 = bitcast i8* %_new_gep_73 to i32*
  store i32 %EDX_val.51, i32* %47, align 4, !mcsema_real_eip !32
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_76 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_75, i64 -56
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %RAX_val.53 = load i64, i64* %XAX, align 8, !mcsema_real_eip !33
  store i64 %RAX_val.53, i64* %_allin_new_bt_77, align 8, !mcsema_real_eip !33
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_79 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_78, i64 -56
  %_ptr_to_int_247 = ptrtoint i8* %_new_gep_79 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %1
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_79, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_79, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_79, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  %_address_in_parent_stack_bt_260._allin_new_bt_80.v = select i1 %_cond1_n_cond2_cond3_258, i8* %_pot_address_in_parent_stack_251, i8* %_new_gep_79
  %_address_in_parent_stack_bt_260._allin_new_bt_80 = bitcast i8* %_address_in_parent_stack_bt_260._allin_new_bt_80.v to i64*
  %_new_load_261 = load i64, i64* %_address_in_parent_stack_bt_260._allin_new_bt_80, align 8
  store i64 %_new_load_261, i64* %XAX, align 8, !mcsema_real_eip !34
  %_new_gep_82 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_78, i64 -40
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 %_new_load_261, i64* %_allin_new_bt_83, align 8, !mcsema_real_eip !35
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_85 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_84, i64 -48
  %48 = ptrtoint i8* %_new_gep_85 to i64
  %_offset_above_rbp_265 = sub i64 %48, %1
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond1_n_cond2_272, %_cond4_271
  %.v7 = select i1 %_cond1_n_cond2_cond3_273, i8* %_pot_address_in_parent_stack_266, i8* %_new_gep_85
  %49 = bitcast i8* %.v7 to i32*
  %_new_load_276 = load i32, i32* %49, align 4
  %50 = zext i32 %_new_load_276 to i64, !mcsema_real_eip !36
  store i64 %50, i64* %XCX, align 8, !mcsema_real_eip !36
  %_new_gep_88 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_84, i64 -32
  %ECX.59 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %51 = bitcast i8* %_new_gep_88 to i32*
  store i32 %_new_load_276, i32* %51, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_91 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90, i64 -40
  %52 = ptrtoint i8* %_new_gep_91 to i64
  %_offset_above_rbp_280 = sub i64 %52, %1
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_new_gep_91, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_new_gep_91, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_new_gep_91, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  %_address_in_parent_stack_bt_290..v = select i1 %_cond1_n_cond2_cond3_288, i8* %_pot_address_in_parent_stack_281, i8* %_new_gep_91
  %_address_in_parent_stack_bt_290. = bitcast i8* %_address_in_parent_stack_bt_290..v to i32*
  %_new_load_291 = load i32, i32* %_address_in_parent_stack_bt_290., align 4
  %53 = zext i32 %_new_load_291 to i64, !mcsema_real_eip !38
  store i64 %53, i64* %XCX, align 8, !mcsema_real_eip !38
  %_new_gep_94 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90, i64 -36
  %54 = ptrtoint i8* %_new_gep_94 to i64
  %_offset_above_rbp_295 = sub i64 %54, %1
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_new_gep_94, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_new_gep_94, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_new_gep_94, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  %.v8 = select i1 %_cond1_n_cond2_cond3_303, i8* %_pot_address_in_parent_stack_296, i8* %_new_gep_94
  %55 = bitcast i8* %.v8 to i32*
  %_new_load_306 = load i32, i32* %55, align 4
  %56 = add i32 %_new_load_291, %_new_load_306, !mcsema_real_eip !39
  %57 = xor i32 %56, %_new_load_306, !mcsema_real_eip !39
  %58 = xor i32 %57, %_new_load_291, !mcsema_real_eip !39
  %59 = and i32 %58, 16, !mcsema_real_eip !39
  %60 = icmp ne i32 %59, 0, !mcsema_real_eip !39
  store i1 %60, i1* %AF, align 1, !mcsema_real_eip !39
  %61 = icmp slt i32 %56, 0
  store i1 %61, i1* %SF, align 1, !mcsema_real_eip !39
  %62 = icmp eq i32 %56, 0, !mcsema_real_eip !39
  store i1 %62, i1* %ZF, align 1, !mcsema_real_eip !39
  %63 = xor i32 %_new_load_306, -2147483648, !mcsema_real_eip !39
  %64 = xor i32 %63, %_new_load_291, !mcsema_real_eip !39
  %65 = and i32 %57, %64, !mcsema_real_eip !39
  %66 = icmp slt i32 %65, 0
  store i1 %66, i1* %OF, align 1, !mcsema_real_eip !39
  %67 = trunc i32 %56 to i8, !mcsema_real_eip !39
  %68 = call i8 @llvm.ctpop.i8(i8 %67), !mcsema_real_eip !39
  %69 = and i8 %68, 1
  %70 = icmp eq i8 %69, 0
  store i1 %70, i1* %PF, align 1, !mcsema_real_eip !39
  %71 = icmp ult i32 %56, %_new_load_306, !mcsema_real_eip !39
  store i1 %71, i1* %CF, align 1, !mcsema_real_eip !39
  %72 = zext i32 %56 to i64, !mcsema_real_eip !39
  store i64 %72, i64* %XCX, align 8, !mcsema_real_eip !39
  %_new_gep_97 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90, i64 -32
  %73 = ptrtoint i8* %_new_gep_97 to i64
  %_offset_above_rbp_310 = sub i64 %73, %1
  %_pot_address_in_parent_stack_311 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_310
  %_cond1_312 = icmp ugt i8* %_new_gep_97, %_local_stack_end_ptr_
  %_cond2_1_313 = icmp ugt i8* %_new_gep_97, %_parent_stack_end_ptr_
  %_cond2_2_314 = icmp ult i8* %_new_gep_97, %_parent_stack_start_ptr_
  %_cond2_315 = or i1 %_cond2_1_313, %_cond2_2_314
  %_cond4_316 = icmp ule i8* %_pot_address_in_parent_stack_311, %_parent_stack_end_ptr_
  %_cond1_n_cond2_317 = and i1 %_cond1_312, %_cond2_315
  %_cond1_n_cond2_cond3_318 = and i1 %_cond1_n_cond2_317, %_cond4_316
  %_address_in_parent_stack_bt_320..v = select i1 %_cond1_n_cond2_cond3_318, i8* %_pot_address_in_parent_stack_311, i8* %_new_gep_97
  %_address_in_parent_stack_bt_320. = bitcast i8* %_address_in_parent_stack_bt_320..v to i32*
  %_new_load_321 = load i32, i32* %_address_in_parent_stack_bt_320., align 4
  %74 = add i32 %56, %_new_load_321, !mcsema_real_eip !40
  %75 = xor i32 %74, %_new_load_321, !mcsema_real_eip !40
  %76 = xor i32 %75, %56, !mcsema_real_eip !40
  %77 = and i32 %76, 16, !mcsema_real_eip !40
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !40
  store i1 %78, i1* %AF, align 1, !mcsema_real_eip !40
  %79 = icmp slt i32 %74, 0
  store i1 %79, i1* %SF, align 1, !mcsema_real_eip !40
  %80 = icmp eq i32 %74, 0, !mcsema_real_eip !40
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !40
  %81 = xor i32 %_new_load_321, -2147483648, !mcsema_real_eip !40
  %82 = xor i32 %81, %56, !mcsema_real_eip !40
  %83 = and i32 %75, %82, !mcsema_real_eip !40
  %84 = icmp slt i32 %83, 0
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !40
  %85 = trunc i32 %74 to i8, !mcsema_real_eip !40
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !40
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !40
  %89 = icmp ult i32 %74, %_new_load_321, !mcsema_real_eip !40
  store i1 %89, i1* %CF, align 1, !mcsema_real_eip !40
  %90 = zext i32 %74 to i64, !mcsema_real_eip !40
  store i64 %90, i64* %XCX, align 8, !mcsema_real_eip !40
  %_new_gep_100 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_90, i64 -60
  %91 = bitcast i8* %_new_gep_100 to i32*
  store i32 %74, i32* %91, align 4, !mcsema_real_eip !41
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_103 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_102, i64 -60
  %92 = ptrtoint i8* %_new_gep_103 to i64
  %_offset_above_rbp_325 = sub i64 %92, %1
  %_pot_address_in_parent_stack_326 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_325
  %_cond1_327 = icmp ugt i8* %_new_gep_103, %_local_stack_end_ptr_
  %_cond2_1_328 = icmp ugt i8* %_new_gep_103, %_parent_stack_end_ptr_
  %_cond2_2_329 = icmp ult i8* %_new_gep_103, %_parent_stack_start_ptr_
  %_cond2_330 = or i1 %_cond2_1_328, %_cond2_2_329
  %_cond4_331 = icmp ule i8* %_pot_address_in_parent_stack_326, %_parent_stack_end_ptr_
  %_cond1_n_cond2_332 = and i1 %_cond1_327, %_cond2_330
  %_cond1_n_cond2_cond3_333 = and i1 %_cond1_n_cond2_332, %_cond4_331
  %.v9 = select i1 %_cond1_n_cond2_cond3_333, i8* %_pot_address_in_parent_stack_326, i8* %_new_gep_103
  %93 = bitcast i8* %.v9 to i32*
  %_new_load_336 = load i32, i32* %93, align 4
  %94 = zext i32 %_new_load_336 to i64, !mcsema_real_eip !42
  store i64 %94, i64* %XSI, align 8, !mcsema_real_eip !42
  %_new_gep_106 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_102, i64 -72
  %_ptr_to_int_337 = ptrtoint i8* %_new_gep_106 to i64
  %_offset_above_rbp_340 = sub i64 %_ptr_to_int_337, %1
  %_pot_address_in_parent_stack_341 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_340
  %_cond1_342 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_343 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_344 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_345 = or i1 %_cond2_1_343, %_cond2_2_344
  %_cond4_346 = icmp ule i8* %_pot_address_in_parent_stack_341, %_parent_stack_end_ptr_
  %_cond1_n_cond2_347 = and i1 %_cond1_342, %_cond2_345
  %_cond1_n_cond2_cond3_348 = and i1 %_cond1_n_cond2_347, %_cond4_346
  %_address_in_parent_stack_bt_350._allin_new_bt_107.v = select i1 %_cond1_n_cond2_cond3_348, i8* %_pot_address_in_parent_stack_341, i8* %_new_gep_106
  %_address_in_parent_stack_bt_350._allin_new_bt_107 = bitcast i8* %_address_in_parent_stack_bt_350._allin_new_bt_107.v to i64*
  %_new_load_351 = load i64, i64* %_address_in_parent_stack_bt_350._allin_new_bt_107, align 8
  store i64 %_new_load_351, i64* %XDI, align 8, !mcsema_real_eip !43
  %AL.73 = bitcast i64* %XAX to i8*, !mcsema_real_eip !44
  store i8 0, i8* %AL.73, align 1, !mcsema_real_eip !44
  %RDX_val.76 = load i64, i64* %XDX, align 8, !mcsema_real_eip !45
  %RCX_val.77 = load i64, i64* %XCX, align 8, !mcsema_real_eip !45
  %R8_val.78 = load i64, i64* %R8, align 8, !mcsema_real_eip !45
  %R9_val.79 = load i64, i64* %R9, align 8, !mcsema_real_eip !45
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_108 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %95 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_108 to i8*
  %_offset_above_rbp_355 = sub i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_108, %1
  %_pot_address_in_parent_stack_356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_355
  %_cond1_357 = icmp ugt i8* %95, %_local_stack_end_ptr_
  %_cond2_1_358 = icmp ugt i8* %95, %_parent_stack_end_ptr_
  %_cond2_2_359 = icmp ult i8* %95, %_parent_stack_start_ptr_
  %_cond2_360 = or i1 %_cond2_1_358, %_cond2_2_359
  %_cond4_361 = icmp ule i8* %_pot_address_in_parent_stack_356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_362 = and i1 %_cond1_357, %_cond2_360
  %_cond1_n_cond2_cond3_363 = and i1 %_cond4_361, %_cond1_n_cond2_362
  %.v10 = select i1 %_cond1_n_cond2_cond3_363, i8* %_pot_address_in_parent_stack_356, i8* %95
  %96 = bitcast i8* %.v10 to i64*
  %_new_load_366 = load i64, i64* %96, align 8
  %_new_gep_110 = getelementptr i8, i8* %95, i64 8
  %_ptr_to_int_367 = ptrtoint i8* %_new_gep_110 to i64
  %_offset_above_rbp_370 = sub i64 %_ptr_to_int_367, %1
  %_pot_address_in_parent_stack_371 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_370
  %_cond1_372 = icmp ugt i8* %_new_gep_110, %_local_stack_end_ptr_
  %_cond2_1_373 = icmp ugt i8* %_new_gep_110, %_parent_stack_end_ptr_
  %_cond2_2_374 = icmp ult i8* %_new_gep_110, %_parent_stack_start_ptr_
  %_cond2_375 = or i1 %_cond2_1_373, %_cond2_2_374
  %_cond4_376 = icmp ule i8* %_pot_address_in_parent_stack_371, %_parent_stack_end_ptr_
  %_cond1_n_cond2_377 = and i1 %_cond1_372, %_cond2_375
  %_cond1_n_cond2_cond3_378 = and i1 %_cond1_n_cond2_377, %_cond4_376
  %_address_in_parent_stack_bt_380._allin_new_bt_111.v = select i1 %_cond1_n_cond2_cond3_378, i8* %_pot_address_in_parent_stack_371, i8* %_new_gep_110
  %_address_in_parent_stack_bt_380._allin_new_bt_111 = bitcast i8* %_address_in_parent_stack_bt_380._allin_new_bt_111.v to i64*
  %_new_load_381 = load i64, i64* %_address_in_parent_stack_bt_380._allin_new_bt_111, align 8
  %_new_gep_112 = getelementptr i8, i8* %95, i64 16
  %_ptr_to_int_382 = ptrtoint i8* %_new_gep_112 to i64
  %_offset_above_rbp_385 = sub i64 %_ptr_to_int_382, %1
  %_pot_address_in_parent_stack_386 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_385
  %_cond1_387 = icmp ugt i8* %_new_gep_112, %_local_stack_end_ptr_
  %_cond2_1_388 = icmp ugt i8* %_new_gep_112, %_parent_stack_end_ptr_
  %_cond2_2_389 = icmp ult i8* %_new_gep_112, %_parent_stack_start_ptr_
  %_cond2_390 = or i1 %_cond2_1_388, %_cond2_2_389
  %_cond4_391 = icmp ule i8* %_pot_address_in_parent_stack_386, %_parent_stack_end_ptr_
  %_cond1_n_cond2_392 = and i1 %_cond1_387, %_cond2_390
  %_cond1_n_cond2_cond3_393 = and i1 %_cond1_n_cond2_392, %_cond4_391
  %.v11 = select i1 %_cond1_n_cond2_cond3_393, i8* %_pot_address_in_parent_stack_386, i8* %_new_gep_112
  %97 = bitcast i8* %.v11 to i64*
  %_new_load_396 = load i64, i64* %97, align 8
  %_new_gep_114 = getelementptr i8, i8* %95, i64 24
  %_ptr_to_int_397 = ptrtoint i8* %_new_gep_114 to i64
  %_offset_above_rbp_400 = sub i64 %_ptr_to_int_397, %1
  %_pot_address_in_parent_stack_401 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_400
  %_cond1_402 = icmp ugt i8* %_new_gep_114, %_local_stack_end_ptr_
  %_cond2_1_403 = icmp ugt i8* %_new_gep_114, %_parent_stack_end_ptr_
  %_cond2_2_404 = icmp ult i8* %_new_gep_114, %_parent_stack_start_ptr_
  %_cond2_405 = or i1 %_cond2_1_403, %_cond2_2_404
  %_cond4_406 = icmp ule i8* %_pot_address_in_parent_stack_401, %_parent_stack_end_ptr_
  %_cond1_n_cond2_407 = and i1 %_cond1_402, %_cond2_405
  %_cond1_n_cond2_cond3_408 = and i1 %_cond1_n_cond2_407, %_cond4_406
  %_address_in_parent_stack_bt_410._allin_new_bt_115.v = select i1 %_cond1_n_cond2_cond3_408, i8* %_pot_address_in_parent_stack_401, i8* %_new_gep_114
  %_address_in_parent_stack_bt_410._allin_new_bt_115 = bitcast i8* %_address_in_parent_stack_bt_410._allin_new_bt_115.v to i64*
  %_new_load_411 = load i64, i64* %_address_in_parent_stack_bt_410._allin_new_bt_115, align 8
  %_new_gep_116 = getelementptr i8, i8* %95, i64 32
  %_ptr_to_int_412 = ptrtoint i8* %_new_gep_116 to i64
  %_offset_above_rbp_415 = sub i64 %_ptr_to_int_412, %1
  %_pot_address_in_parent_stack_416 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_415
  %_cond1_417 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_418 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_419 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_420 = or i1 %_cond2_1_418, %_cond2_2_419
  %_cond4_421 = icmp ule i8* %_pot_address_in_parent_stack_416, %_parent_stack_end_ptr_
  %_cond1_n_cond2_422 = and i1 %_cond1_417, %_cond2_420
  %_cond1_n_cond2_cond3_423 = and i1 %_cond1_n_cond2_422, %_cond4_421
  %.v12 = select i1 %_cond1_n_cond2_cond3_423, i8* %_pot_address_in_parent_stack_416, i8* %_new_gep_116
  %98 = bitcast i8* %.v12 to i64*
  %_new_load_426 = load i64, i64* %98, align 8
  %_new_gep_118 = getelementptr i8, i8* %95, i64 40
  %_ptr_to_int_427 = ptrtoint i8* %_new_gep_118 to i64
  %_offset_above_rbp_430 = sub i64 %_ptr_to_int_427, %1
  %_pot_address_in_parent_stack_431 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_430
  %_cond1_432 = icmp ugt i8* %_new_gep_118, %_local_stack_end_ptr_
  %_cond2_1_433 = icmp ugt i8* %_new_gep_118, %_parent_stack_end_ptr_
  %_cond2_2_434 = icmp ult i8* %_new_gep_118, %_parent_stack_start_ptr_
  %_cond2_435 = or i1 %_cond2_1_433, %_cond2_2_434
  %_cond4_436 = icmp ule i8* %_pot_address_in_parent_stack_431, %_parent_stack_end_ptr_
  %_cond1_n_cond2_437 = and i1 %_cond1_432, %_cond2_435
  %_cond1_n_cond2_cond3_438 = and i1 %_cond1_n_cond2_437, %_cond4_436
  %_address_in_parent_stack_bt_440._allin_new_bt_119.v = select i1 %_cond1_n_cond2_cond3_438, i8* %_pot_address_in_parent_stack_431, i8* %_new_gep_118
  %_address_in_parent_stack_bt_440._allin_new_bt_119 = bitcast i8* %_address_in_parent_stack_bt_440._allin_new_bt_119.v to i64*
  %_new_load_441 = load i64, i64* %_address_in_parent_stack_bt_440._allin_new_bt_119, align 8
  %RSP_val.81 = load i64, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_121 = getelementptr i8, i8* %95, i64 -8
  %99 = add i64 %RSP_val.81, -8
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_122, align 8, !mcsema_real_eip !45
  %100 = ptrtoint i8* %_new_gep_121 to i64
  store volatile i64 %100, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %99, i64* %XSP, align 8, !mcsema_real_eip !45
  %101 = call x86_64_sysvcc i64 @_printf(i64 %_new_load_351, i64 %94, i64 %RDX_val.76, i64 %RCX_val.77, i64 %R8_val.78, i64 %R9_val.79, i64 %_new_load_366, i64 %_new_load_381, i64 %_new_load_396, i64 %_new_load_411, i64 %_new_load_426, i64 %_new_load_441)
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_15519 = load i8*, i8** %14, align 8
  %_gep_fix_156 = getelementptr i8, i8* %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._rsp_fix_15519, i64 8
  %102 = ptrtoint i8* %_gep_fix_156 to i64
  store i64 %102, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %101, i64* %XAX, align 8, !mcsema_real_eip !45
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_123 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_124 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_123, i64 -60
  %103 = ptrtoint i8* %_new_gep_124 to i64
  %_offset_above_rbp_445 = sub i64 %103, %1
  %_pot_address_in_parent_stack_446 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_445
  %_cond1_447 = icmp ugt i8* %_new_gep_124, %_local_stack_end_ptr_
  %_cond2_1_448 = icmp ugt i8* %_new_gep_124, %_parent_stack_end_ptr_
  %_cond2_2_449 = icmp ult i8* %_new_gep_124, %_parent_stack_start_ptr_
  %_cond2_450 = or i1 %_cond2_1_448, %_cond2_2_449
  %_cond4_451 = icmp ule i8* %_pot_address_in_parent_stack_446, %_parent_stack_end_ptr_
  %_cond1_n_cond2_452 = and i1 %_cond1_447, %_cond2_450
  %_cond1_n_cond2_cond3_453 = and i1 %_cond1_n_cond2_452, %_cond4_451
  %.v13 = select i1 %_cond1_n_cond2_cond3_453, i8* %_pot_address_in_parent_stack_446, i8* %_new_gep_124
  %104 = bitcast i8* %.v13 to i32*
  %_new_load_456 = load i32, i32* %104, align 4
  %105 = zext i32 %_new_load_456 to i64, !mcsema_real_eip !46
  store i64 %105, i64* %XCX, align 8, !mcsema_real_eip !46
  %_new_gep_127 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_123, i64 -88
  %106 = trunc i64 %101 to i32
  %107 = bitcast i8* %_new_gep_127 to i32*
  store i32 %106, i32* %107, align 4, !mcsema_real_eip !47
  %ECX_val.87 = load i32, i32* %ECX.59, align 4, !mcsema_real_eip !48
  %108 = zext i32 %ECX_val.87 to i64, !mcsema_real_eip !48
  store i64 %108, i64* %XAX, align 8, !mcsema_real_eip !48
  %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_129 = load i64, i64* %_RSP_ptr_.sroa.0, align 8
  %109 = inttoptr i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_129 to i8*
  %RSP_val.88 = load i64, i64* %XSP, align 8, !mcsema_real_eip !49
  %_new_gep_130 = getelementptr i8, i8* %109, i64 112
  %110 = add i64 %RSP_val.88, 112, !mcsema_real_eip !49
  %_trans_p2i_131 = ptrtoint i8* %_new_gep_130 to i64
  %_trans_xor_133 = xor i64 %_trans_p2i_131, %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_129
  %111 = and i64 %_trans_xor_133, 16
  %112 = icmp eq i64 %111, 0
  store i1 %112, i1* %AF, align 1, !mcsema_real_eip !49
  %113 = icmp slt i64 %110, 0
  store i1 %113, i1* %SF, align 1, !mcsema_real_eip !49
  %_trans_icmp_eq_135 = icmp eq i8* %_new_gep_130, null
  store i1 %_trans_icmp_eq_135, i1* %ZF, align 1, !mcsema_real_eip !49
  %114 = xor i64 %_RSP_ptr_.sroa.0.0._RSP_ptr_.sroa.0.0._RSP_ptr_.0._load_rsp_ptr_129, -9223372036854775808, !mcsema_real_eip !49
  %115 = and i64 %_trans_xor_133, %114, !mcsema_real_eip !49
  %116 = icmp slt i64 %115, 0
  store i1 %116, i1* %OF, align 1, !mcsema_real_eip !49
  %_trans_trunc_142 = trunc i64 %_trans_p2i_131 to i8
  %117 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_142), !mcsema_real_eip !49
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  store i1 %119, i1* %PF, align 1, !mcsema_real_eip !49
  %_trans_icmp_ne_144 = icmp ne i64 %_trans_p2i_131, %RSP_val.88
  store i1 %_trans_icmp_ne_144, i1* %CF, align 1, !mcsema_real_eip !49
  store volatile i64 %_trans_p2i_131, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %110, i64* %XSP, align 8, !mcsema_real_eip !49
  %_offset_above_rbp_460 = sub i64 %_trans_p2i_131, %1
  %_pot_address_in_parent_stack_461 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_460
  %_cond1_462 = icmp ugt i8* %_new_gep_130, %_local_stack_end_ptr_
  %_cond2_1_463 = icmp ugt i8* %_new_gep_130, %_parent_stack_end_ptr_
  %_cond2_2_464 = icmp ult i8* %_new_gep_130, %_parent_stack_start_ptr_
  %_cond2_465 = or i1 %_cond2_1_463, %_cond2_2_464
  %_cond4_466 = icmp ule i8* %_pot_address_in_parent_stack_461, %_parent_stack_end_ptr_
  %_cond1_n_cond2_467 = and i1 %_cond1_462, %_cond2_465
  %_cond1_n_cond2_cond3_468 = and i1 %_cond1_n_cond2_467, %_cond4_466
  %_address_in_parent_stack_bt_470._allin_new_bt_146.v = select i1 %_cond1_n_cond2_cond3_468, i8* %_pot_address_in_parent_stack_461, i8* %_new_gep_130
  %_address_in_parent_stack_bt_470._allin_new_bt_146 = bitcast i8* %_address_in_parent_stack_bt_470._allin_new_bt_146.v to i64*
  %_new_load_471 = load i64, i64* %_address_in_parent_stack_bt_470._allin_new_bt_146, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_471 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_471, i64* %XBP, align 8, !mcsema_real_eip !50
  %_new_gep_147 = getelementptr i8, i8* %109, i64 120
  %120 = add i64 %RSP_val.88, 120, !mcsema_real_eip !50
  %121 = ptrtoint i8* %_new_gep_147 to i64
  store volatile i64 %121, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %120, i64* %XSP, align 8, !mcsema_real_eip !50
  %_new_gep_149 = getelementptr i8, i8* %109, i64 128
  %122 = add i64 %RSP_val.88, 128, !mcsema_real_eip !51
  %_offset_above_rbp_475 = sub i64 %121, %1
  %_pot_address_in_parent_stack_476 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_475
  %_cond1_477 = icmp ugt i8* %_new_gep_147, %_local_stack_end_ptr_
  %_cond2_1_478 = icmp ugt i8* %_new_gep_147, %_parent_stack_end_ptr_
  %_cond2_2_479 = icmp ult i8* %_new_gep_147, %_parent_stack_start_ptr_
  %_cond2_480 = or i1 %_cond2_1_478, %_cond2_2_479
  %_cond4_481 = icmp ule i8* %_pot_address_in_parent_stack_476, %_parent_stack_end_ptr_
  %_cond1_n_cond2_482 = and i1 %_cond1_477, %_cond2_480
  %_cond1_n_cond2_cond3_483 = and i1 %_cond1_n_cond2_482, %_cond4_481
  %.v14 = select i1 %_cond1_n_cond2_cond3_483, i8* %_pot_address_in_parent_stack_476, i8* %_new_gep_147
  %123 = bitcast i8* %.v14 to i64*
  %_new_load_486 = load i64, i64* %123, align 8
  store i64 %_new_load_486, i64* %XIP, align 8, !mcsema_real_eip !51
  %124 = ptrtoint i8* %_new_gep_149 to i64
  store volatile i64 %124, i64* %_RSP_ptr_.sroa.0, align 8
  store i64 %122, i64* %XSP, align 8, !mcsema_real_eip !51
  ret void, !mcsema_real_eip !51
}

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.2(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [96 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !52
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !52
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !52
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !52
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !52
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !52
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !52
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !52
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !52
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !52
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !52
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !52
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !52
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !52
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !52
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !52
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !52
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !52
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !52
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !52
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !52
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !52
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !52
  %RSP_val.92 = load i64, i64* %XSP, align 8, !mcsema_real_eip !52
  %_new_gep_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %1 = add i64 %RSP_val.92, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !52
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !53
  %_new_gep_3 = getelementptr [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 112
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 16
  %_cond1_ = icmp ugt i8* %_new_gep_3, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_3, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_3, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond4_, %_cond1_n_cond2_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_3
  %2 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %2, align 8
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !54
  %_new_gep_6 = getelementptr [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_100 = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond4_104, %_cond1_n_cond2_105
  %_address_in_parent_stack_bt_108._allin_new_bt_7.v = select i1 %_cond1_n_cond2_cond3_106, i8* %_pot_address_in_parent_stack_99, i8* %_new_gep_6
  %_address_in_parent_stack_bt_108._allin_new_bt_7 = bitcast i8* %_address_in_parent_stack_bt_108._allin_new_bt_7.v to i64*
  %_new_load_109 = load i64, i64* %_address_in_parent_stack_bt_108._allin_new_bt_7, align 8
  store i64 %_new_load_109, i64* %R10, align 8, !mcsema_real_eip !55
  %_new_gep_9 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 68
  %EDI.97 = bitcast i64* %XDI to i32*, !mcsema_real_eip !56
  %EDI_val.98 = load i32, i32* %EDI.97, align 4, !mcsema_real_eip !56
  %3 = bitcast i8* %_new_gep_9 to i32*
  store i32 %EDI_val.98, i32* %3, align 4, !mcsema_real_eip !56
  %_new_gep_12 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  %ESI.100 = bitcast i64* %XSI to i32*, !mcsema_real_eip !57
  %ESI_val.101 = load i32, i32* %ESI.100, align 4, !mcsema_real_eip !57
  %4 = bitcast i8* %_new_gep_12 to i32*
  store i32 %ESI_val.101, i32* %4, align 4, !mcsema_real_eip !57
  %_new_gep_15 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 60
  %EDX.103 = bitcast i64* %XDX to i32*, !mcsema_real_eip !58
  %EDX_val.104 = load i32, i32* %EDX.103, align 4, !mcsema_real_eip !58
  %5 = bitcast i8* %_new_gep_15 to i32*
  store i32 %EDX_val.104, i32* %5, align 4, !mcsema_real_eip !58
  %_new_gep_18 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %ECX.106 = bitcast i64* %XCX to i32*, !mcsema_real_eip !59
  %ECX_val.107 = load i32, i32* %ECX.106, align 4, !mcsema_real_eip !59
  %6 = bitcast i8* %_new_gep_18 to i32*
  store i32 %ECX_val.107, i32* %6, align 4, !mcsema_real_eip !59
  %_new_gep_21 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %R8D.109 = bitcast i64* %R8 to i32*, !mcsema_real_eip !60
  %R8D_val.110 = load i32, i32* %R8D.109, align 4, !mcsema_real_eip !60
  %7 = bitcast i8* %_new_gep_21 to i32*
  store i32 %R8D_val.110, i32* %7, align 4, !mcsema_real_eip !60
  %_new_gep_24 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %R9D.112 = bitcast i64* %R9 to i32*, !mcsema_real_eip !61
  %R9D_val.113 = load i32, i32* %R9D.112, align 4, !mcsema_real_eip !61
  %8 = bitcast i8* %_new_gep_24 to i32*
  store i32 %R9D_val.113, i32* %8, align 4, !mcsema_real_eip !61
  %_new_gep_27 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  store i64 %_new_load_109, i64* %_allin_new_bt_28, align 8, !mcsema_real_eip !62
  %_new_gep_30 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 32
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  store i64 %_new_load_, i64* %_allin_new_bt_31, align 8, !mcsema_real_eip !63
  store i64 %_new_load_109, i64* %XAX, align 8, !mcsema_real_eip !64
  %9 = inttoptr i64 %_new_load_109 to i32*, !mcsema_real_eip !65
  %_ptr_bt_127 = inttoptr i64 %_new_load_109 to i8*
  %_offset_above_rbp_128 = sub i64 %_new_load_109, %_local_end_to_int_
  %_pot_address_in_parent_stack_129 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_128
  %_cond1_130 = icmp ugt i8* %_ptr_bt_127, %_local_stack_end_ptr_
  %_cond2_1_131 = icmp ugt i8* %_ptr_bt_127, %_parent_stack_end_ptr_
  %_cond2_2_132 = icmp ult i8* %_ptr_bt_127, %_parent_stack_start_ptr_
  %_cond2_133 = or i1 %_cond2_1_131, %_cond2_2_132
  %_cond4_134 = icmp ule i8* %_pot_address_in_parent_stack_129, %_parent_stack_end_ptr_
  %_cond1_n_cond2_135 = and i1 %_cond1_130, %_cond2_133
  %_cond1_n_cond2_cond3_136 = and i1 %_cond4_134, %_cond1_n_cond2_135
  %_address_in_parent_stack_bt_138 = bitcast i8* %_pot_address_in_parent_stack_129 to i32*
  %_address_in_parent_stack_bt_138. = select i1 %_cond1_n_cond2_cond3_136, i32* %_address_in_parent_stack_bt_138, i32* %9
  %_new_load_139 = load i32, i32* %_address_in_parent_stack_bt_138., align 4
  %10 = zext i32 %_new_load_139 to i64, !mcsema_real_eip !65
  store i64 %10, i64* %XCX, align 8, !mcsema_real_eip !65
  %11 = bitcast i8* %_new_gep_30 to i64*
  %_new_load_154 = load i64, i64* %11, align 8
  store i64 %_new_load_154, i64* %XAX, align 8, !mcsema_real_eip !66
  %12 = inttoptr i64 %_new_load_154 to i32*, !mcsema_real_eip !67
  %_ptr_bt_157 = inttoptr i64 %_new_load_154 to i8*
  %_offset_above_rbp_158 = sub i64 %_new_load_154, %_local_end_to_int_
  %_pot_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_158
  %_cond1_160 = icmp ugt i8* %_ptr_bt_157, %_local_stack_end_ptr_
  %_cond2_1_161 = icmp ugt i8* %_ptr_bt_157, %_parent_stack_end_ptr_
  %_cond2_2_162 = icmp ult i8* %_ptr_bt_157, %_parent_stack_start_ptr_
  %_cond2_163 = or i1 %_cond2_1_161, %_cond2_2_162
  %_cond4_164 = icmp ule i8* %_pot_address_in_parent_stack_159, %_parent_stack_end_ptr_
  %_cond1_n_cond2_165 = and i1 %_cond1_160, %_cond2_163
  %_cond1_n_cond2_cond3_166 = and i1 %_cond4_164, %_cond1_n_cond2_165
  %_address_in_parent_stack_bt_168 = bitcast i8* %_pot_address_in_parent_stack_159 to i32*
  %_address_in_parent_stack_bt_168. = select i1 %_cond1_n_cond2_cond3_166, i32* %_address_in_parent_stack_bt_168, i32* %12
  %_new_load_169 = load i32, i32* %_address_in_parent_stack_bt_168., align 4
  %13 = zext i32 %_new_load_169 to i64, !mcsema_real_eip !67
  store i64 %13, i64* %XDX, align 8, !mcsema_real_eip !67
  %14 = add i32 %_new_load_169, %_new_load_139, !mcsema_real_eip !68
  %15 = xor i32 %14, %_new_load_139, !mcsema_real_eip !68
  %16 = xor i32 %15, %_new_load_169, !mcsema_real_eip !68
  %17 = and i32 %16, 16, !mcsema_real_eip !68
  %18 = icmp ne i32 %17, 0, !mcsema_real_eip !68
  store i1 %18, i1* %AF, align 1, !mcsema_real_eip !68
  %19 = icmp slt i32 %14, 0
  store i1 %19, i1* %SF, align 1, !mcsema_real_eip !68
  %20 = icmp eq i32 %14, 0, !mcsema_real_eip !68
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !68
  %21 = xor i32 %_new_load_139, -2147483648, !mcsema_real_eip !68
  %22 = xor i32 %21, %_new_load_169, !mcsema_real_eip !68
  %23 = and i32 %15, %22, !mcsema_real_eip !68
  %24 = icmp slt i32 %23, 0
  store i1 %24, i1* %OF, align 1, !mcsema_real_eip !68
  %25 = trunc i32 %14 to i8, !mcsema_real_eip !68
  %26 = call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !68
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  store i1 %28, i1* %PF, align 1, !mcsema_real_eip !68
  %29 = icmp ult i32 %14, %_new_load_139, !mcsema_real_eip !68
  store i1 %29, i1* %CF, align 1, !mcsema_real_eip !68
  %30 = zext i32 %14 to i64, !mcsema_real_eip !68
  store i64 %30, i64* %XCX, align 8, !mcsema_real_eip !68
  %_new_gep_39 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  %31 = bitcast i8* %_new_gep_39 to i32*
  store i32 %14, i32* %31, align 4, !mcsema_real_eip !69
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -48
  %_ptr_to_int_170 = ptrtoint i8* %_new_gep_42 to i64
  %_offset_above_rbp_173 = sub i64 %_ptr_to_int_170, %_local_end_to_int_
  %_pot_address_in_parent_stack_174 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_173
  %_cond1_175 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_176 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_177 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_178 = or i1 %_cond2_1_176, %_cond2_2_177
  %_cond4_179 = icmp ule i8* %_pot_address_in_parent_stack_174, %_parent_stack_end_ptr_
  %_cond1_n_cond2_180 = and i1 %_cond1_175, %_cond2_178
  %_cond1_n_cond2_cond3_181 = and i1 %_cond1_n_cond2_180, %_cond4_179
  %.v4 = select i1 %_cond1_n_cond2_cond3_181, i8* %_pot_address_in_parent_stack_174, i8* %_new_gep_42
  %32 = bitcast i8* %.v4 to i64*
  %_new_load_184 = load i64, i64* %32, align 8
  store i64 %_new_load_184, i64* %XAX, align 8, !mcsema_real_eip !70
  %33 = add i64 %_new_load_184, 4, !mcsema_real_eip !71
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !71
  %_ptr_bt_187 = inttoptr i64 %33 to i8*
  %_offset_above_rbp_188 = sub i64 %33, %_local_end_to_int_
  %_pot_address_in_parent_stack_189 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_188
  %_cond1_190 = icmp ugt i8* %_ptr_bt_187, %_local_stack_end_ptr_
  %_cond2_1_191 = icmp ugt i8* %_ptr_bt_187, %_parent_stack_end_ptr_
  %_cond2_2_192 = icmp ult i8* %_ptr_bt_187, %_parent_stack_start_ptr_
  %_cond2_193 = or i1 %_cond2_1_191, %_cond2_2_192
  %_cond4_194 = icmp ule i8* %_pot_address_in_parent_stack_189, %_parent_stack_end_ptr_
  %_cond1_n_cond2_195 = and i1 %_cond1_190, %_cond2_193
  %_cond1_n_cond2_cond3_196 = and i1 %_cond4_194, %_cond1_n_cond2_195
  %_address_in_parent_stack_bt_198 = bitcast i8* %_pot_address_in_parent_stack_189 to i32*
  %_address_in_parent_stack_bt_198. = select i1 %_cond1_n_cond2_cond3_196, i32* %_address_in_parent_stack_bt_198, i32* %34
  %_new_load_199 = load i32, i32* %_address_in_parent_stack_bt_198., align 4
  %35 = zext i32 %_new_load_199 to i64, !mcsema_real_eip !71
  store i64 %35, i64* %XCX, align 8, !mcsema_real_eip !71
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -56
  %_ptr_to_int_200 = ptrtoint i8* %_new_gep_45 to i64
  %_offset_above_rbp_203 = sub i64 %_ptr_to_int_200, %_local_end_to_int_
  %_pot_address_in_parent_stack_204 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_203
  %_cond1_205 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_206 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_207 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_208 = or i1 %_cond2_1_206, %_cond2_2_207
  %_cond4_209 = icmp ule i8* %_pot_address_in_parent_stack_204, %_parent_stack_end_ptr_
  %_cond1_n_cond2_210 = and i1 %_cond1_205, %_cond2_208
  %_cond1_n_cond2_cond3_211 = and i1 %_cond1_n_cond2_210, %_cond4_209
  %.v5 = select i1 %_cond1_n_cond2_cond3_211, i8* %_pot_address_in_parent_stack_204, i8* %_new_gep_45
  %36 = bitcast i8* %.v5 to i64*
  %_new_load_214 = load i64, i64* %36, align 8
  store i64 %_new_load_214, i64* %XAX, align 8, !mcsema_real_eip !72
  %37 = add i64 %_new_load_214, 4, !mcsema_real_eip !73
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !73
  %_ptr_bt_217 = inttoptr i64 %37 to i8*
  %_offset_above_rbp_218 = sub i64 %37, %_local_end_to_int_
  %_pot_address_in_parent_stack_219 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_218
  %_cond1_220 = icmp ugt i8* %_ptr_bt_217, %_local_stack_end_ptr_
  %_cond2_1_221 = icmp ugt i8* %_ptr_bt_217, %_parent_stack_end_ptr_
  %_cond2_2_222 = icmp ult i8* %_ptr_bt_217, %_parent_stack_start_ptr_
  %_cond2_223 = or i1 %_cond2_1_221, %_cond2_2_222
  %_cond4_224 = icmp ule i8* %_pot_address_in_parent_stack_219, %_parent_stack_end_ptr_
  %_cond1_n_cond2_225 = and i1 %_cond1_220, %_cond2_223
  %_cond1_n_cond2_cond3_226 = and i1 %_cond4_224, %_cond1_n_cond2_225
  %_address_in_parent_stack_bt_228 = bitcast i8* %_pot_address_in_parent_stack_219 to i32*
  %_address_in_parent_stack_bt_228. = select i1 %_cond1_n_cond2_cond3_226, i32* %_address_in_parent_stack_bt_228, i32* %38
  %_new_load_229 = load i32, i32* %_address_in_parent_stack_bt_228., align 4
  %39 = zext i32 %_new_load_229 to i64, !mcsema_real_eip !73
  store i64 %39, i64* %XDX, align 8, !mcsema_real_eip !73
  %40 = add i32 %_new_load_229, %_new_load_199, !mcsema_real_eip !74
  %41 = xor i32 %40, %_new_load_199, !mcsema_real_eip !74
  %42 = xor i32 %41, %_new_load_229, !mcsema_real_eip !74
  %43 = and i32 %42, 16, !mcsema_real_eip !74
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !74
  store i1 %44, i1* %AF, align 1, !mcsema_real_eip !74
  %45 = icmp slt i32 %40, 0
  store i1 %45, i1* %SF, align 1, !mcsema_real_eip !74
  %46 = icmp eq i32 %40, 0, !mcsema_real_eip !74
  store i1 %46, i1* %ZF, align 1, !mcsema_real_eip !74
  %47 = xor i32 %_new_load_199, -2147483648, !mcsema_real_eip !74
  %48 = xor i32 %47, %_new_load_229, !mcsema_real_eip !74
  %49 = and i32 %41, %48, !mcsema_real_eip !74
  %50 = icmp slt i32 %49, 0
  store i1 %50, i1* %OF, align 1, !mcsema_real_eip !74
  %51 = trunc i32 %40 to i8, !mcsema_real_eip !74
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !74
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  store i1 %54, i1* %PF, align 1, !mcsema_real_eip !74
  %55 = icmp ult i32 %40, %_new_load_199, !mcsema_real_eip !74
  store i1 %55, i1* %CF, align 1, !mcsema_real_eip !74
  %56 = zext i32 %40 to i64, !mcsema_real_eip !74
  store i64 %56, i64* %XCX, align 8, !mcsema_real_eip !74
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -68
  %57 = bitcast i8* %_new_gep_48 to i32*
  store i32 %40, i32* %57, align 4, !mcsema_real_eip !75
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -48
  %_ptr_to_int_230 = ptrtoint i8* %_new_gep_51 to i64
  %_offset_above_rbp_233 = sub i64 %_ptr_to_int_230, %_local_end_to_int_
  %_pot_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_233
  %_cond1_235 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_236 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_237 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_238 = or i1 %_cond2_1_236, %_cond2_2_237
  %_cond4_239 = icmp ule i8* %_pot_address_in_parent_stack_234, %_parent_stack_end_ptr_
  %_cond1_n_cond2_240 = and i1 %_cond1_235, %_cond2_238
  %_cond1_n_cond2_cond3_241 = and i1 %_cond1_n_cond2_240, %_cond4_239
  %.v6 = select i1 %_cond1_n_cond2_cond3_241, i8* %_pot_address_in_parent_stack_234, i8* %_new_gep_51
  %58 = bitcast i8* %.v6 to i64*
  %_new_load_244 = load i64, i64* %58, align 8
  store i64 %_new_load_244, i64* %XAX, align 8, !mcsema_real_eip !76
  %59 = add i64 %_new_load_244, 8, !mcsema_real_eip !77
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !77
  %_ptr_bt_247 = inttoptr i64 %59 to i8*
  %_offset_above_rbp_248 = sub i64 %59, %_local_end_to_int_
  %_pot_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_248
  %_cond1_250 = icmp ugt i8* %_ptr_bt_247, %_local_stack_end_ptr_
  %_cond2_1_251 = icmp ugt i8* %_ptr_bt_247, %_parent_stack_end_ptr_
  %_cond2_2_252 = icmp ult i8* %_ptr_bt_247, %_parent_stack_start_ptr_
  %_cond2_253 = or i1 %_cond2_1_251, %_cond2_2_252
  %_cond4_254 = icmp ule i8* %_pot_address_in_parent_stack_249, %_parent_stack_end_ptr_
  %_cond1_n_cond2_255 = and i1 %_cond1_250, %_cond2_253
  %_cond1_n_cond2_cond3_256 = and i1 %_cond4_254, %_cond1_n_cond2_255
  %_address_in_parent_stack_bt_258 = bitcast i8* %_pot_address_in_parent_stack_249 to i32*
  %_address_in_parent_stack_bt_258. = select i1 %_cond1_n_cond2_cond3_256, i32* %_address_in_parent_stack_bt_258, i32* %60
  %_new_load_259 = load i32, i32* %_address_in_parent_stack_bt_258., align 4
  %61 = zext i32 %_new_load_259 to i64, !mcsema_real_eip !77
  store i64 %61, i64* %XCX, align 8, !mcsema_real_eip !77
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -56
  %_ptr_to_int_260 = ptrtoint i8* %_new_gep_54 to i64
  %_offset_above_rbp_263 = sub i64 %_ptr_to_int_260, %_local_end_to_int_
  %_pot_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_263
  %_cond1_265 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_266 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_267 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_268 = or i1 %_cond2_1_266, %_cond2_2_267
  %_cond4_269 = icmp ule i8* %_pot_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond1_n_cond2_270 = and i1 %_cond1_265, %_cond2_268
  %_cond1_n_cond2_cond3_271 = and i1 %_cond1_n_cond2_270, %_cond4_269
  %.v7 = select i1 %_cond1_n_cond2_cond3_271, i8* %_pot_address_in_parent_stack_264, i8* %_new_gep_54
  %62 = bitcast i8* %.v7 to i64*
  %_new_load_274 = load i64, i64* %62, align 8
  store i64 %_new_load_274, i64* %XAX, align 8, !mcsema_real_eip !78
  %63 = add i64 %_new_load_274, 8, !mcsema_real_eip !79
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !79
  %_ptr_bt_277 = inttoptr i64 %63 to i8*
  %_offset_above_rbp_278 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_279 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_278
  %_cond1_280 = icmp ugt i8* %_ptr_bt_277, %_local_stack_end_ptr_
  %_cond2_1_281 = icmp ugt i8* %_ptr_bt_277, %_parent_stack_end_ptr_
  %_cond2_2_282 = icmp ult i8* %_ptr_bt_277, %_parent_stack_start_ptr_
  %_cond2_283 = or i1 %_cond2_1_281, %_cond2_2_282
  %_cond4_284 = icmp ule i8* %_pot_address_in_parent_stack_279, %_parent_stack_end_ptr_
  %_cond1_n_cond2_285 = and i1 %_cond1_280, %_cond2_283
  %_cond1_n_cond2_cond3_286 = and i1 %_cond4_284, %_cond1_n_cond2_285
  %_address_in_parent_stack_bt_288 = bitcast i8* %_pot_address_in_parent_stack_279 to i32*
  %_address_in_parent_stack_bt_288. = select i1 %_cond1_n_cond2_cond3_286, i32* %_address_in_parent_stack_bt_288, i32* %64
  %_new_load_289 = load i32, i32* %_address_in_parent_stack_bt_288., align 4
  %65 = zext i32 %_new_load_289 to i64, !mcsema_real_eip !79
  store i64 %65, i64* %XDX, align 8, !mcsema_real_eip !79
  %66 = add i32 %_new_load_289, %_new_load_259, !mcsema_real_eip !80
  %67 = xor i32 %66, %_new_load_259, !mcsema_real_eip !80
  %68 = xor i32 %67, %_new_load_289, !mcsema_real_eip !80
  %69 = and i32 %68, 16, !mcsema_real_eip !80
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !80
  store i1 %70, i1* %AF, align 1, !mcsema_real_eip !80
  %71 = icmp slt i32 %66, 0
  store i1 %71, i1* %SF, align 1, !mcsema_real_eip !80
  %72 = icmp eq i32 %66, 0, !mcsema_real_eip !80
  store i1 %72, i1* %ZF, align 1, !mcsema_real_eip !80
  %73 = xor i32 %_new_load_259, -2147483648, !mcsema_real_eip !80
  %74 = xor i32 %73, %_new_load_289, !mcsema_real_eip !80
  %75 = and i32 %67, %74, !mcsema_real_eip !80
  %76 = icmp slt i32 %75, 0
  store i1 %76, i1* %OF, align 1, !mcsema_real_eip !80
  %77 = trunc i32 %66 to i8, !mcsema_real_eip !80
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !80
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  store i1 %80, i1* %PF, align 1, !mcsema_real_eip !80
  %81 = icmp ult i32 %66, %_new_load_259, !mcsema_real_eip !80
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !80
  %82 = zext i32 %66 to i64, !mcsema_real_eip !80
  store i64 %82, i64* %XCX, align 8, !mcsema_real_eip !80
  %_new_gep_57 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -64
  %83 = bitcast i8* %_new_gep_57 to i32*
  store i32 %66, i32* %83, align 4, !mcsema_real_eip !81
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59, i64 -64
  %84 = ptrtoint i8* %_new_gep_60 to i64
  %_offset_above_rbp_293 = sub i64 %84, %_local_end_to_int_
  %_pot_address_in_parent_stack_294 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_293
  %_cond1_295 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_296 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_297 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_298 = or i1 %_cond2_1_296, %_cond2_2_297
  %_cond4_299 = icmp ule i8* %_pot_address_in_parent_stack_294, %_parent_stack_end_ptr_
  %_cond1_n_cond2_300 = and i1 %_cond1_295, %_cond2_298
  %_cond1_n_cond2_cond3_301 = and i1 %_cond1_n_cond2_300, %_cond4_299
  %.v8 = select i1 %_cond1_n_cond2_cond3_301, i8* %_pot_address_in_parent_stack_294, i8* %_new_gep_60
  %85 = bitcast i8* %.v8 to i32*
  %_new_load_304 = load i32, i32* %85, align 4
  %86 = zext i32 %_new_load_304 to i64, !mcsema_real_eip !82
  store i64 %86, i64* %XCX, align 8, !mcsema_real_eip !82
  %_new_gep_63 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_59, i64 -8
  %87 = bitcast i8* %_new_gep_63 to i32*
  store i32 %_new_load_304, i32* %87, align 4, !mcsema_real_eip !83
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_66 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65, i64 -72
  %_ptr_to_int_305 = ptrtoint i8* %_new_gep_66 to i64
  %_offset_above_rbp_308 = sub i64 %_ptr_to_int_305, %_local_end_to_int_
  %_pot_address_in_parent_stack_309 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_308
  %_cond1_310 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_311 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_312 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_313 = or i1 %_cond2_1_311, %_cond2_2_312
  %_cond4_314 = icmp ule i8* %_pot_address_in_parent_stack_309, %_parent_stack_end_ptr_
  %_cond1_n_cond2_315 = and i1 %_cond1_310, %_cond2_313
  %_cond1_n_cond2_cond3_316 = and i1 %_cond1_n_cond2_315, %_cond4_314
  %_address_in_parent_stack_bt_318._allin_new_bt_67.v = select i1 %_cond1_n_cond2_cond3_316, i8* %_pot_address_in_parent_stack_309, i8* %_new_gep_66
  %_address_in_parent_stack_bt_318._allin_new_bt_67 = bitcast i8* %_address_in_parent_stack_bt_318._allin_new_bt_67.v to i64*
  %_new_load_319 = load i64, i64* %_address_in_parent_stack_bt_318._allin_new_bt_67, align 8
  store i64 %_new_load_319, i64* %XAX, align 8, !mcsema_real_eip !84
  %_new_gep_69 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_65, i64 -16
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %_new_load_319, i64* %_allin_new_bt_70, align 8, !mcsema_real_eip !85
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -8
  %88 = ptrtoint i8* %_new_gep_72 to i64
  %_offset_above_rbp_323 = sub i64 %88, %_local_end_to_int_
  %_pot_address_in_parent_stack_324 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_323
  %_cond1_325 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond2_1_326 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_2_327 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_328 = or i1 %_cond2_1_326, %_cond2_2_327
  %_cond4_329 = icmp ule i8* %_pot_address_in_parent_stack_324, %_parent_stack_end_ptr_
  %_cond1_n_cond2_330 = and i1 %_cond1_325, %_cond2_328
  %_cond1_n_cond2_cond3_331 = and i1 %_cond1_n_cond2_330, %_cond4_329
  %.v9 = select i1 %_cond1_n_cond2_cond3_331, i8* %_pot_address_in_parent_stack_324, i8* %_new_gep_72
  %89 = bitcast i8* %.v9 to i32*
  %_new_load_334 = load i32, i32* %89, align 4
  %90 = zext i32 %_new_load_334 to i64, !mcsema_real_eip !86
  store i64 %90, i64* %XCX, align 8, !mcsema_real_eip !86
  %_new_gep_75 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_71, i64 -80
  %91 = bitcast i8* %_new_gep_75 to i32*
  store i32 %_new_load_334, i32* %91, align 4, !mcsema_real_eip !87
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77, i64 -16
  %_ptr_to_int_335 = ptrtoint i8* %_new_gep_78 to i64
  %_offset_above_rbp_338 = sub i64 %_ptr_to_int_335, %_local_end_to_int_
  %_pot_address_in_parent_stack_339 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_338
  %_cond1_340 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_341 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_342 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_343 = or i1 %_cond2_1_341, %_cond2_2_342
  %_cond4_344 = icmp ule i8* %_pot_address_in_parent_stack_339, %_parent_stack_end_ptr_
  %_cond1_n_cond2_345 = and i1 %_cond1_340, %_cond2_343
  %_cond1_n_cond2_cond3_346 = and i1 %_cond1_n_cond2_345, %_cond4_344
  %_address_in_parent_stack_bt_348._allin_new_bt_79.v = select i1 %_cond1_n_cond2_cond3_346, i8* %_pot_address_in_parent_stack_339, i8* %_new_gep_78
  %_address_in_parent_stack_bt_348._allin_new_bt_79 = bitcast i8* %_address_in_parent_stack_bt_348._allin_new_bt_79.v to i64*
  %_new_load_349 = load i64, i64* %_address_in_parent_stack_bt_348._allin_new_bt_79, align 8
  store i64 %_new_load_349, i64* %XAX, align 8, !mcsema_real_eip !88
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77, i64 -88
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  store i64 %_new_load_349, i64* %_allin_new_bt_82, align 8, !mcsema_real_eip !89
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_84 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_83, i64 -88
  %_ptr_to_int_350 = ptrtoint i8* %_new_gep_84 to i64
  %_offset_above_rbp_353 = sub i64 %_ptr_to_int_350, %_local_end_to_int_
  %_pot_address_in_parent_stack_354 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_353
  %_cond1_355 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_356 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_357 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_358 = or i1 %_cond2_1_356, %_cond2_2_357
  %_cond4_359 = icmp ule i8* %_pot_address_in_parent_stack_354, %_parent_stack_end_ptr_
  %_cond1_n_cond2_360 = and i1 %_cond1_355, %_cond2_358
  %_cond1_n_cond2_cond3_361 = and i1 %_cond1_n_cond2_360, %_cond4_359
  %.v10 = select i1 %_cond1_n_cond2_cond3_361, i8* %_pot_address_in_parent_stack_354, i8* %_new_gep_84
  %92 = bitcast i8* %.v10 to i64*
  %_new_load_364 = load i64, i64* %92, align 8
  store i64 %_new_load_364, i64* %XAX, align 8, !mcsema_real_eip !90
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_83, i64 -80
  %93 = ptrtoint i8* %_new_gep_87 to i64
  %_offset_above_rbp_368 = sub i64 %93, %_local_end_to_int_
  %_pot_address_in_parent_stack_369 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_368
  %_cond1_370 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_371 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_372 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_373 = or i1 %_cond2_1_371, %_cond2_2_372
  %_cond4_374 = icmp ule i8* %_pot_address_in_parent_stack_369, %_parent_stack_end_ptr_
  %_cond1_n_cond2_375 = and i1 %_cond1_370, %_cond2_373
  %_cond1_n_cond2_cond3_376 = and i1 %_cond1_n_cond2_375, %_cond4_374
  %_address_in_parent_stack_bt_378..v = select i1 %_cond1_n_cond2_cond3_376, i8* %_pot_address_in_parent_stack_369, i8* %_new_gep_87
  %_address_in_parent_stack_bt_378. = bitcast i8* %_address_in_parent_stack_bt_378..v to i32*
  %_new_load_379 = load i32, i32* %_address_in_parent_stack_bt_378., align 4
  %94 = zext i32 %_new_load_379 to i64, !mcsema_real_eip !91
  store i64 %94, i64* %XDX, align 8, !mcsema_real_eip !91
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.167 = load i64, i64* %XSP, align 8, !mcsema_real_eip !92
  %_ptr_to_int_380 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89 to i64
  %_offset_above_rbp_383 = sub i64 %_ptr_to_int_380, %_local_end_to_int_
  %_pot_address_in_parent_stack_384 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_383
  %_cond1_385 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89, %_local_stack_end_ptr_
  %_cond2_1_386 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89, %_parent_stack_end_ptr_
  %_cond2_2_387 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89, %_parent_stack_start_ptr_
  %_cond2_388 = or i1 %_cond2_1_386, %_cond2_2_387
  %_cond4_389 = icmp ule i8* %_pot_address_in_parent_stack_384, %_parent_stack_end_ptr_
  %_cond1_n_cond2_390 = and i1 %_cond1_385, %_cond2_388
  %_cond1_n_cond2_cond3_391 = and i1 %_cond1_n_cond2_390, %_cond4_389
  %.v11 = select i1 %_cond1_n_cond2_cond3_391, i8* %_pot_address_in_parent_stack_384, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89
  %95 = bitcast i8* %.v11 to i64*
  %_new_load_394 = load i64, i64* %95, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_394 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_394, i64* %XBP, align 8, !mcsema_real_eip !92
  %_new_gep_91 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89, i64 8
  %96 = add i64 %RSP_val.167, 8, !mcsema_real_eip !92
  store volatile i8* %_new_gep_91, i8** %_RSP_ptr_, align 8
  store i64 %96, i64* %XSP, align 8, !mcsema_real_eip !92
  %_new_gep_93 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_89, i64 16
  %97 = add i64 %RSP_val.167, 16, !mcsema_real_eip !93
  %_ptr_to_int_395 = ptrtoint i8* %_new_gep_91 to i64
  %_offset_above_rbp_398 = sub i64 %_ptr_to_int_395, %_local_end_to_int_
  %_pot_address_in_parent_stack_399 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_398
  %_cond1_400 = icmp ugt i8* %_new_gep_91, %_local_stack_end_ptr_
  %_cond2_1_401 = icmp ugt i8* %_new_gep_91, %_parent_stack_end_ptr_
  %_cond2_2_402 = icmp ult i8* %_new_gep_91, %_parent_stack_start_ptr_
  %_cond2_403 = or i1 %_cond2_1_401, %_cond2_2_402
  %_cond4_404 = icmp ule i8* %_pot_address_in_parent_stack_399, %_parent_stack_end_ptr_
  %_cond1_n_cond2_405 = and i1 %_cond1_400, %_cond2_403
  %_cond1_n_cond2_cond3_406 = and i1 %_cond1_n_cond2_405, %_cond4_404
  %_address_in_parent_stack_bt_408._allin_new_bt_94.v = select i1 %_cond1_n_cond2_cond3_406, i8* %_pot_address_in_parent_stack_399, i8* %_new_gep_91
  %_address_in_parent_stack_bt_408._allin_new_bt_94 = bitcast i8* %_address_in_parent_stack_bt_408._allin_new_bt_94.v to i64*
  %_new_load_409 = load i64, i64* %_address_in_parent_stack_bt_408._allin_new_bt_94, align 8
  store i64 %_new_load_409, i64* %XIP, align 8, !mcsema_real_eip !93
  store volatile i8* %_new_gep_93, i8** %_RSP_ptr_, align 8
  store i64 %97, i64* %XSP, align 8, !mcsema_real_eip !93
  ret void, !mcsema_real_eip !93
}

attributes #0 = { noinline }
attributes #1 = { noinline nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 144}
!3 = !{i64 145}
!4 = !{i64 148}
!5 = !{i64 190}
!6 = !{i64 195}
!7 = !{i64 197}
!8 = !{i64 201}
!9 = !{i64 204}
!10 = !{i64 209}
!11 = !{i64 213}
!12 = !{i64 217}
!13 = !{i64 223}
!14 = !{i64 227}
!15 = !{i64 234}
!16 = !{i64 238}
!17 = !{i64 245}
!18 = !{i64 252}
!19 = !{i64 256}
!20 = !{i64 260}
!21 = !{i64 273}
!22 = !{i64 279}
!23 = !{i64 281}
!24 = !{i64 284}
!25 = !{i64 287}
!26 = !{i64 290}
!27 = !{i64 293}
!28 = !{i64 297}
!29 = !{i64 301}
!30 = !{i64 304}
!31 = !{i64 308}
!32 = !{i64 313}
!33 = !{i64 316}
!34 = !{i64 320}
!35 = !{i64 324}
!36 = !{i64 328}
!37 = !{i64 331}
!38 = !{i64 334}
!39 = !{i64 337}
!40 = !{i64 340}
!41 = !{i64 343}
!42 = !{i64 346}
!43 = !{i64 349}
!44 = !{i64 353}
!45 = !{i64 355}
!46 = !{i64 360}
!47 = !{i64 363}
!48 = !{i64 366}
!49 = !{i64 368}
!50 = !{i64 372}
!51 = !{i64 373}
!52 = !{i64 0}
!53 = !{i64 1}
!54 = !{i64 4}
!55 = !{i64 8}
!56 = !{i64 12}
!57 = !{i64 15}
!58 = !{i64 18}
!59 = !{i64 21}
!60 = !{i64 24}
!61 = !{i64 28}
!62 = !{i64 32}
!63 = !{i64 36}
!64 = !{i64 40}
!65 = !{i64 44}
!66 = !{i64 46}
!67 = !{i64 50}
!68 = !{i64 52}
!69 = !{i64 54}
!70 = !{i64 57}
!71 = !{i64 61}
!72 = !{i64 64}
!73 = !{i64 68}
!74 = !{i64 71}
!75 = !{i64 73}
!76 = !{i64 76}
!77 = !{i64 80}
!78 = !{i64 83}
!79 = !{i64 87}
!80 = !{i64 90}
!81 = !{i64 92}
!82 = !{i64 95}
!83 = !{i64 98}
!84 = !{i64 101}
!85 = !{i64 105}
!86 = !{i64 109}
!87 = !{i64 112}
!88 = !{i64 115}
!89 = !{i64 119}
!90 = !{i64 123}
!91 = !{i64 127}
!92 = !{i64 130}
!93 = !{i64 131}
