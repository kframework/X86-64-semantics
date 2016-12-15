; ModuleID = 'Output/test_27.clang.trans.opt.bc'
source_filename = "Output/test_27.clang.bc"
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
module asm "  .globl sub_100;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_100(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [5 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x212 = internal constant %0 <{ [5 x i8] c"%lu\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_100(%RegState*) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [144 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 144
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
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 136
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.1, -136
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !4
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 128 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !4
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 12, i64* %XAX, align 8, !mcsema_real_eip !5
  store i64 12, i64* %XDI, align 8, !mcsema_real_eip !6
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_17 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %13 = bitcast i8* %_new_gep_17 to <4 x i32>*
  store <4 x i32> <i32 10, i32 10, i32 10, i32 0>, <4 x i32>* %13, align 8
  %_new_gep_26 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %14 = add i64 %RSP_val.1, -144
  %_allin_new_bt_27 = bitcast [144 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !7
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XSP, align 8, !mcsema_real_eip !7
  %15 = call x86_64_sysvcc i64 @_malloc(i64 12)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %15, i64* %XAX, align 8, !mcsema_real_eip !7
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2811 = load i8*, i8** %12, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2811, i64 -16
  %16 = ptrtoint i8* %_new_gep_29 to i64
  store i64 %16, i64* %XDI, align 8, !mcsema_real_eip !8
  %17 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %17, align 8
  store i64 3, i64* %XCX, align 8, !mcsema_real_eip !9
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2811, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %15, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !10
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3412 = load i8*, i8** %12, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3412, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %18 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !11
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !11
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !12
  store i32 5, i32* %19, align 4, !mcsema_real_eip !12
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3713 = load i8*, i8** %12, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3713, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %20 = load i64, i64* %_allin_new_bt_39, align 8, !mcsema_real_eip !13
  store i64 %20, i64* %XAX, align 8, !mcsema_real_eip !13
  %21 = add i64 %20, 4, !mcsema_real_eip !14
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !14
  store i32 5, i32* %22, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4014 = load i8*, i8** %12, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4014, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %23 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !15
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !15
  %24 = add i64 %23, 8, !mcsema_real_eip !16
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !16
  store i32 5, i32* %25, align 4, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4315 = load i8*, i8** %12, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4315, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %26 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !17
  store i64 %26, i64* %XAX, align 8, !mcsema_real_eip !17
  %27 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !18
  store i64 %27, i64* %XDX, align 8, !mcsema_real_eip !18
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4315, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %28 = load i64, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !19
  store i64 %28, i64* %XSI, align 8, !mcsema_real_eip !19
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4315, i64 -48
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 %28, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !20
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5516 = load i8*, i8** %12, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5516, i64 -8
  %29 = bitcast i8* %_new_gep_56 to i32*
  %30 = load i32, i32* %29, align 4, !mcsema_real_eip !21
  %31 = zext i32 %30 to i64, !mcsema_real_eip !21
  store i64 %31, i64* %R10, align 8, !mcsema_real_eip !21
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5516, i64 -40
  %R10D.28 = bitcast i64* %R10 to i32*, !mcsema_real_eip !22
  %32 = bitcast i8* %_new_gep_59 to i32*
  store i32 %30, i32* %32, align 4, !mcsema_real_eip !22
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6117 = load i8*, i8** %12, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6117, i64 -48
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %33 = load i64, i64* %_allin_new_bt_63, align 8, !mcsema_real_eip !23
  store i64 %33, i64* %XSI, align 8, !mcsema_real_eip !23
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6117, i64 -40
  %34 = bitcast i8* %_new_gep_65 to i32*
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !24
  %36 = zext i32 %35 to i64, !mcsema_real_eip !24
  store i64 %36, i64* %R10, align 8, !mcsema_real_eip !24
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6117, i64 -64
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %RDI_val.33 = load i64, i64* %XDI, align 8, !mcsema_real_eip !25
  store i64 %RDI_val.33, i64* %_allin_new_bt_69, align 8, !mcsema_real_eip !25
  %RSI_val.34 = load i64, i64* %XSI, align 8, !mcsema_real_eip !26
  store i64 %RSI_val.34, i64* %XDI, align 8, !mcsema_real_eip !26
  %R10D_val.36 = load i32, i32* %R10D.28, align 4, !mcsema_real_eip !27
  %37 = zext i32 %R10D_val.36 to i64, !mcsema_real_eip !27
  store i64 %37, i64* %XSI, align 8, !mcsema_real_eip !27
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7018 = load i8*, i8** %12, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7018, i64 -64
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %38 = load i64, i64* %_allin_new_bt_72, align 8, !mcsema_real_eip !28
  store i64 %38, i64* %R11, align 8, !mcsema_real_eip !28
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7018, i64 -72
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %RDX_val.39 = load i64, i64* %XDX, align 8, !mcsema_real_eip !29
  store i64 %RDX_val.39, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !29
  %R11_val.40 = load i64, i64* %R11, align 8, !mcsema_real_eip !30
  store i64 %R11_val.40, i64* %XDX, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7619 = load i8*, i8** %12, align 8
  %_new_gep_77 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7619, i64 -76
  %ECX.42 = bitcast i64* %XCX to i32*, !mcsema_real_eip !31
  %ECX_val.43 = load i32, i32* %ECX.42, align 4, !mcsema_real_eip !31
  %39 = bitcast i8* %_new_gep_77 to i32*
  store i32 %ECX_val.43, i32* %39, align 4, !mcsema_real_eip !31
  %RAX_val.44 = load i64, i64* %XAX, align 8, !mcsema_real_eip !32
  store i64 %RAX_val.44, i64* %XCX, align 8, !mcsema_real_eip !32
  %40 = bitcast i8** %_RSP_ptr_ to i32**
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_7934520 = load i32*, i32** %40, align 8
  store i32 3, i32* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_7934520, align 4, !mcsema_real_eip !33
  %41 = bitcast i64* %R11 to i64**
  %R11_val.466 = load i64*, i64** %41, align 8
  %42 = load i64, i64* %R11_val.466, align 8, !mcsema_real_eip !34
  store i64 %42, i64* %XAX, align 8, !mcsema_real_eip !34
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_83 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82, i64 8
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  store i64 %42, i64* %_allin_new_bt_84, align 8, !mcsema_real_eip !35
  %R11_val.49 = load i64, i64* %R11, align 8, !mcsema_real_eip !36
  %43 = add i64 %R11_val.49, 8, !mcsema_real_eip !36
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !36
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !36
  %46 = zext i32 %45 to i64, !mcsema_real_eip !36
  store i64 %46, i64* %R10, align 8, !mcsema_real_eip !36
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_86 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85, i64 16
  %47 = bitcast i8* %_new_gep_86 to i32*
  store i32 %45, i32* %47, align 4, !mcsema_real_eip !37
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_89 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88, i64 24
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %R11_val.54 = load i64, i64* %R11, align 8, !mcsema_real_eip !38
  store i64 %R11_val.54, i64* %_allin_new_bt_90, align 8, !mcsema_real_eip !38
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9121 = load i8*, i8** %12, align 8
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9121, i64 -72
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %48 = load i64, i64* %_allin_new_bt_93, align 8, !mcsema_real_eip !39
  store i64 %48, i64* %XAX, align 8, !mcsema_real_eip !39
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_94 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_94, i64 32
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  store i64 %48, i64* %_allin_new_bt_96, align 8, !mcsema_real_eip !40
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.58 = load i64, i64* %XSP, align 8, !mcsema_real_eip !41
  %_new_gep_98 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 -8
  %49 = add i64 %RSP_val.58, -8
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, align 8, !mcsema_real_eip !41
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_, align 8
  store i64 %49, i64* %XSP, align 8, !mcsema_real_eip !41
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16122 = load i8*, i8** %12, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16122)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_163 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_164 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_163, i64 8
  store i8* %_gep_fix_164, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, align 8, !mcsema_real_eip !42
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10023 = load i8*, i8** %12, align 8
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10023, i64 -32
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %RAX_val.60 = load i64, i64* %XAX, align 8, !mcsema_real_eip !43
  store i64 %RAX_val.60, i64* %_allin_new_bt_102, align 8, !mcsema_real_eip !43
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10324 = load i8*, i8** %12, align 8
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10324, i64 -32
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %50 = load i64, i64* %_allin_new_bt_105, align 8, !mcsema_real_eip !44
  store i64 %50, i64* %XAX, align 8, !mcsema_real_eip !44
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !45
  %52 = load i32, i32* %51, align 4, !mcsema_real_eip !45
  %53 = zext i32 %52 to i64, !mcsema_real_eip !45
  store i64 %53, i64* %XSI, align 8, !mcsema_real_eip !45
  %54 = load i64, i64* %_allin_new_bt_105, align 8, !mcsema_real_eip !46
  store i64 %54, i64* %XAX, align 8, !mcsema_real_eip !46
  %55 = add i64 %54, 4, !mcsema_real_eip !47
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !47
  %57 = load i32, i32* %56, align 4, !mcsema_real_eip !47
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !47
  %58 = add i32 %52, %57, !mcsema_real_eip !47
  %59 = xor i32 %58, %57, !mcsema_real_eip !47
  %60 = xor i32 %59, %52, !mcsema_real_eip !47
  %61 = and i32 %60, 16, !mcsema_real_eip !47
  %62 = icmp ne i32 %61, 0, !mcsema_real_eip !47
  store i1 %62, i1* %AF, align 1, !mcsema_real_eip !47
  %63 = icmp slt i32 %58, 0
  store i1 %63, i1* %SF, align 1, !mcsema_real_eip !47
  %64 = icmp eq i32 %58, 0, !mcsema_real_eip !47
  store i1 %64, i1* %ZF, align 1, !mcsema_real_eip !47
  %65 = xor i32 %57, -2147483648, !mcsema_real_eip !47
  %66 = xor i32 %65, %52, !mcsema_real_eip !47
  %67 = and i32 %59, %66, !mcsema_real_eip !47
  %68 = icmp slt i32 %67, 0
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !47
  %69 = trunc i32 %58 to i8, !mcsema_real_eip !47
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !47
  %71 = and i8 %70, 1
  %72 = icmp eq i8 %71, 0
  store i1 %72, i1* %PF, align 1, !mcsema_real_eip !47
  %73 = icmp ult i32 %58, %57, !mcsema_real_eip !47
  store i1 %73, i1* %CF, align 1, !mcsema_real_eip !47
  %74 = zext i32 %58 to i64, !mcsema_real_eip !47
  store i64 %74, i64* %XSI, align 8, !mcsema_real_eip !47
  %75 = load i64, i64* %_allin_new_bt_105, align 8, !mcsema_real_eip !48
  store i64 %75, i64* %XAX, align 8, !mcsema_real_eip !48
  %76 = add i64 %75, 8, !mcsema_real_eip !49
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !49
  %78 = load i32, i32* %77, align 4, !mcsema_real_eip !49
  %79 = add i32 %58, %78, !mcsema_real_eip !49
  %80 = xor i32 %79, %78, !mcsema_real_eip !49
  %81 = xor i32 %80, %58, !mcsema_real_eip !49
  %82 = and i32 %81, 16, !mcsema_real_eip !49
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !49
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !49
  %84 = icmp slt i32 %79, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !49
  %85 = icmp eq i32 %79, 0, !mcsema_real_eip !49
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !49
  %86 = xor i32 %78, -2147483648, !mcsema_real_eip !49
  %87 = xor i32 %86, %58, !mcsema_real_eip !49
  %88 = and i32 %80, %87, !mcsema_real_eip !49
  %89 = icmp slt i32 %88, 0
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !49
  %90 = trunc i32 %79 to i8, !mcsema_real_eip !49
  %91 = call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !49
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !49
  %94 = icmp ult i32 %79, %78, !mcsema_real_eip !49
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !49
  %95 = zext i32 %79 to i64, !mcsema_real_eip !49
  store i64 %95, i64* %XSI, align 8, !mcsema_real_eip !49
  %_new_gep_113 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10324, i64 -52
  %96 = bitcast i8* %_new_gep_113 to i32*
  store i32 %79, i32* %96, align 4, !mcsema_real_eip !50
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11525 = load i8*, i8** %12, align 8
  %_new_gep_116 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11525, i64 -52
  %97 = bitcast i8* %_new_gep_116 to i32*
  %98 = load i32, i32* %97, align 4, !mcsema_real_eip !51
  %99 = zext i32 %98 to i64, !mcsema_real_eip !51
  store i64 %99, i64* %XSI, align 8, !mcsema_real_eip !51
  %AL.75 = bitcast i64* %XAX to i8*, !mcsema_real_eip !52
  store i8 0, i8* %AL.75, align 1, !mcsema_real_eip !52
  %RDI_val.76 = load i64, i64* %XDI, align 8, !mcsema_real_eip !53
  %RDX_val.78 = load i64, i64* %XDX, align 8, !mcsema_real_eip !53
  %RCX_val.79 = load i64, i64* %XCX, align 8, !mcsema_real_eip !53
  %R8_val.80 = load i64, i64* %R8, align 8, !mcsema_real_eip !53
  %R9_val.81 = load i64, i64* %R9, align 8, !mcsema_real_eip !53
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118 = load i8*, i8** %_RSP_ptr_, align 8
  %_allin_new_bt_119 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118 to i64*
  %100 = load i64, i64* %_allin_new_bt_119, align 8, !mcsema_real_eip !53
  %_new_gep_120 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %101 = load i64, i64* %_allin_new_bt_121, align 8, !mcsema_real_eip !53
  %_new_gep_122 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 16
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %102 = load i64, i64* %_allin_new_bt_123, align 8, !mcsema_real_eip !53
  %_new_gep_124 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 24
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %103 = load i64, i64* %_allin_new_bt_125, align 8, !mcsema_real_eip !53
  %_new_gep_126 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 32
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %104 = load i64, i64* %_allin_new_bt_127, align 8, !mcsema_real_eip !53
  %_new_gep_128 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 40
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %105 = load i64, i64* %_allin_new_bt_129, align 8, !mcsema_real_eip !53
  %RSP_val.83 = load i64, i64* %XSP, align 8, !mcsema_real_eip !53
  %_new_gep_131 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 -8
  %106 = add i64 %RSP_val.83, -8
  %_allin_new_bt_132 = bitcast i8* %_new_gep_131 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_132, align 8, !mcsema_real_eip !53
  store volatile i8* %_new_gep_131, i8** %_RSP_ptr_, align 8
  store i64 %106, i64* %XSP, align 8, !mcsema_real_eip !53
  %107 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.76, i64 %99, i64 %RDX_val.78, i64 %RCX_val.79, i64 %R8_val.80, i64 %R9_val.81, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104, i64 %105)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_165 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_166 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_165, i64 8
  store i8* %_gep_fix_166, i8** %_RSP_ptr_, align 8
  store i64 %107, i64* %XAX, align 8, !mcsema_real_eip !53
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13326 = load i8*, i8** %12, align 8
  %_new_gep_134 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13326, i64 -52
  %108 = bitcast i8* %_new_gep_134 to i32*
  %109 = load i32, i32* %108, align 4, !mcsema_real_eip !54
  %110 = zext i32 %109 to i64, !mcsema_real_eip !54
  store i64 %110, i64* %XSI, align 8, !mcsema_real_eip !54
  %_new_gep_137 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13326, i64 -80
  %111 = trunc i64 %107 to i32
  %112 = bitcast i8* %_new_gep_137 to i32*
  store i32 %111, i32* %112, align 4, !mcsema_real_eip !55
  %ESI_val.89 = load i32, i32* %ESI.65, align 4, !mcsema_real_eip !56
  %113 = zext i32 %ESI_val.89 to i64, !mcsema_real_eip !56
  store i64 %113, i64* %XAX, align 8, !mcsema_real_eip !56
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.90 = load i64, i64* %XSP, align 8, !mcsema_real_eip !57
  %_new_gep_140 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139, i64 128
  %114 = add i64 %RSP_val.90, 128, !mcsema_real_eip !57
  %_trans_p2i_141 = ptrtoint i8* %_new_gep_140 to i64
  %_trans_p2i_142 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139 to i64
  %_trans_xor_143 = xor i64 %_trans_p2i_141, %_trans_p2i_142
  %115 = and i64 %_trans_xor_143, 16, !mcsema_real_eip !57
  %116 = icmp ne i64 %115, 0, !mcsema_real_eip !57
  store i1 %116, i1* %AF, align 1, !mcsema_real_eip !57
  %117 = icmp slt i64 %114, 0
  store i1 %117, i1* %SF, align 1, !mcsema_real_eip !57
  %_trans_icmp_eq_145 = icmp eq i8* %_new_gep_140, null
  store i1 %_trans_icmp_eq_145, i1* %ZF, align 1, !mcsema_real_eip !57
  %118 = xor i64 %_trans_p2i_142, -9223372036854775808, !mcsema_real_eip !57
  %119 = and i64 %_trans_xor_143, %118, !mcsema_real_eip !57
  %120 = icmp slt i64 %119, 0
  store i1 %120, i1* %OF, align 1, !mcsema_real_eip !57
  %_trans_trunc_152 = trunc i64 %_trans_p2i_141 to i8
  %121 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_152), !mcsema_real_eip !57
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  store i1 %123, i1* %PF, align 1, !mcsema_real_eip !57
  %_trans_icmp_ne_154 = icmp ne i64 %_trans_p2i_141, %RSP_val.90
  store i1 %_trans_icmp_ne_154, i1* %CF, align 1, !mcsema_real_eip !57
  store volatile i8* %_new_gep_140, i8** %_RSP_ptr_, align 8
  store i64 %114, i64* %XSP, align 8, !mcsema_real_eip !57
  %_allin_new_bt_156 = bitcast i8* %_new_gep_140 to i64*
  %124 = load i64, i64* %_allin_new_bt_156, align 8, !mcsema_real_eip !58
  store volatile i64 %124, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %124, i64* %XBP, align 8, !mcsema_real_eip !58
  %_new_gep_157 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139, i64 136
  %125 = add i64 %RSP_val.90, 136, !mcsema_real_eip !58
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_, align 8
  store i64 %125, i64* %XSP, align 8, !mcsema_real_eip !58
  %_new_gep_159 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139, i64 144
  %126 = add i64 %RSP_val.90, 144, !mcsema_real_eip !59
  %_allin_new_bt_160 = bitcast i8* %_new_gep_157 to i64*
  %127 = load i64, i64* %_allin_new_bt_160, align 8, !mcsema_real_eip !59
  store i64 %127, i64* %XIP, align 8, !mcsema_real_eip !59
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_, align 8
  store i64 %126, i64* %XSP, align 8, !mcsema_real_eip !59
  ret void, !mcsema_real_eip !59
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !60
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !60
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !60
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !60
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !60
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !60
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !60
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !60
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !60
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !60
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !60
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !60
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !60
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !60
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !60
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !60
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !60
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !60
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !60
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !60
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !60
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !60
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !60
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !60
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !60
  %R14 = getelementptr %RegState, %RegState* %0, i64 0, i32 70, !mcsema_real_eip !60
  %R15 = getelementptr %RegState, %RegState* %0, i64 0, i32 71, !mcsema_real_eip !60
  %RBP_val.93 = load i64, i64* %XBP, align 8, !mcsema_real_eip !60
  %RSP_val.94 = load i64, i64* %XSP, align 8, !mcsema_real_eip !60
  %1 = add i64 %RSP_val.94, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !60
  store i64 %RBP_val.93, i64* %2, align 8, !mcsema_real_eip !60
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !61
  %R15_val.96 = load i64, i64* %R15, align 8, !mcsema_real_eip !62
  %3 = add i64 %RSP_val.94, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !62
  store i64 %R15_val.96, i64* %4, align 8, !mcsema_real_eip !62
  %R14_val.98 = load i64, i64* %R14, align 8, !mcsema_real_eip !63
  %5 = add i64 %RSP_val.94, -24
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !63
  store i64 %R14_val.98, i64* %6, align 8, !mcsema_real_eip !63
  %RBX_val.100 = load i64, i64* %XBX, align 8, !mcsema_real_eip !64
  %7 = add i64 %RSP_val.94, -32
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !64
  store i64 %RBX_val.100, i64* %8, align 8, !mcsema_real_eip !64
  %9 = add i64 %RSP_val.94, -136
  %10 = xor i64 %9, %7, !mcsema_real_eip !65
  %11 = and i64 %10, 16, !mcsema_real_eip !65
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !65
  store i1 %12, i1* %AF, align 1, !mcsema_real_eip !65
  %13 = trunc i64 %9 to i8, !mcsema_real_eip !65
  %14 = tail call i8 @llvm.ctpop.i8(i8 %13), !mcsema_real_eip !65
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  store i1 %16, i1* %PF, align 1, !mcsema_real_eip !65
  %17 = icmp eq i64 %9, 0, !mcsema_real_eip !65
  store i1 %17, i1* %ZF, align 1, !mcsema_real_eip !65
  %18 = icmp slt i64 %9, 0
  store i1 %18, i1* %SF, align 1, !mcsema_real_eip !65
  %19 = icmp ult i64 %7, 104, !mcsema_real_eip !65
  store i1 %19, i1* %CF, align 1, !mcsema_real_eip !65
  %20 = and i64 %10, %7, !mcsema_real_eip !65
  %21 = icmp slt i64 %20, 0
  store i1 %21, i1* %OF, align 1, !mcsema_real_eip !65
  store i64 %9, i64* %XSP, align 8, !mcsema_real_eip !65
  %RBP_val.103 = load i64, i64* %XBP, align 8, !mcsema_real_eip !66
  %22 = add i64 %RBP_val.103, 48, !mcsema_real_eip !66
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !66
  %24 = load i64, i64* %23, align 8, !mcsema_real_eip !66
  store i64 %24, i64* %XAX, align 8, !mcsema_real_eip !66
  %25 = add i64 %RBP_val.103, 40, !mcsema_real_eip !67
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !67
  %27 = load i64, i64* %26, align 8, !mcsema_real_eip !67
  store i64 %27, i64* %R10, align 8, !mcsema_real_eip !67
  %28 = add i64 %RBP_val.103, 24, !mcsema_real_eip !68
  store i64 %28, i64* %R11, align 8, !mcsema_real_eip !68
  %29 = add i64 %RBP_val.103, 16, !mcsema_real_eip !69
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !69
  %31 = load i32, i32* %30, align 4, !mcsema_real_eip !69
  %32 = zext i32 %31 to i64, !mcsema_real_eip !69
  store i64 %32, i64* %XBX, align 8, !mcsema_real_eip !69
  %33 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> <i64 12, i64 12>, <2 x i64>* %33, align 8
  %34 = add i64 %RBP_val.103, -56, !mcsema_real_eip !70
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !70
  %RDI_val.110 = load i64, i64* %XDI, align 8, !mcsema_real_eip !70
  store i64 %RDI_val.110, i64* %35, align 8, !mcsema_real_eip !70
  %RBP_val.111 = load i64, i64* %XBP, align 8, !mcsema_real_eip !71
  %36 = add i64 %RBP_val.111, -48, !mcsema_real_eip !71
  %ESI.112 = bitcast i64* %XSI to i32*, !mcsema_real_eip !71
  %ESI_val.113 = load i32, i32* %ESI.112, align 4, !mcsema_real_eip !71
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !71
  store i32 %ESI_val.113, i32* %37, align 4, !mcsema_real_eip !71
  %RBP_val.114 = load i64, i64* %XBP, align 8, !mcsema_real_eip !72
  %38 = add i64 %RBP_val.114, -56, !mcsema_real_eip !72
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !72
  %40 = load i64, i64* %39, align 8, !mcsema_real_eip !72
  store i64 %40, i64* %XDI, align 8, !mcsema_real_eip !72
  %41 = add i64 %RBP_val.114, -40, !mcsema_real_eip !73
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !73
  store i64 %40, i64* %42, align 8, !mcsema_real_eip !73
  %RBP_val.117 = load i64, i64* %XBP, align 8, !mcsema_real_eip !74
  %43 = add i64 %RBP_val.117, -48, !mcsema_real_eip !74
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !74
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !74
  %46 = zext i32 %45 to i64, !mcsema_real_eip !74
  store i64 %46, i64* %XSI, align 8, !mcsema_real_eip !74
  %47 = add i64 %RBP_val.117, -32, !mcsema_real_eip !75
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !75
  store i32 %45, i32* %48, align 4, !mcsema_real_eip !75
  %RBP_val.121 = load i64, i64* %XBP, align 8, !mcsema_real_eip !76
  %49 = add i64 %RBP_val.121, -64, !mcsema_real_eip !76
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !76
  %RDX_val.122 = load i64, i64* %XDX, align 8, !mcsema_real_eip !76
  store i64 %RDX_val.122, i64* %50, align 8, !mcsema_real_eip !76
  %RBP_val.123 = load i64, i64* %XBP, align 8, !mcsema_real_eip !77
  %51 = add i64 %RBP_val.123, -72, !mcsema_real_eip !77
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !77
  %RCX_val.124 = load i64, i64* %XCX, align 8, !mcsema_real_eip !77
  store i64 %RCX_val.124, i64* %52, align 8, !mcsema_real_eip !77
  %RBP_val.125 = load i64, i64* %XBP, align 8, !mcsema_real_eip !78
  %53 = add i64 %RBP_val.125, -76, !mcsema_real_eip !78
  %R8D.126 = bitcast i64* %R8 to i32*, !mcsema_real_eip !78
  %R8D_val.127 = load i32, i32* %R8D.126, align 4, !mcsema_real_eip !78
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !78
  store i32 %R8D_val.127, i32* %54, align 4, !mcsema_real_eip !78
  %RBP_val.128 = load i64, i64* %XBP, align 8, !mcsema_real_eip !79
  %55 = add i64 %RBP_val.128, -80, !mcsema_real_eip !79
  %R9D.129 = bitcast i64* %R9 to i32*, !mcsema_real_eip !79
  %R9D_val.130 = load i32, i32* %R9D.129, align 4, !mcsema_real_eip !79
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !79
  store i32 %R9D_val.130, i32* %56, align 4, !mcsema_real_eip !79
  %RBP_val.131 = load i64, i64* %XBP, align 8, !mcsema_real_eip !80
  %57 = add i64 %RBP_val.131, -84, !mcsema_real_eip !80
  %EBX.132 = bitcast i64* %XBX to i32*, !mcsema_real_eip !80
  %EBX_val.133 = load i32, i32* %EBX.132, align 4, !mcsema_real_eip !80
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !80
  store i32 %EBX_val.133, i32* %58, align 4, !mcsema_real_eip !80
  %RBP_val.134 = load i64, i64* %XBP, align 8, !mcsema_real_eip !81
  %59 = add i64 %RBP_val.134, -96, !mcsema_real_eip !81
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !81
  %R10_val.135 = load i64, i64* %R10, align 8, !mcsema_real_eip !81
  store i64 %R10_val.135, i64* %60, align 8, !mcsema_real_eip !81
  %RBP_val.136 = load i64, i64* %XBP, align 8, !mcsema_real_eip !82
  %61 = add i64 %RBP_val.136, -104, !mcsema_real_eip !82
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !82
  %RAX_val.137 = load i64, i64* %XAX, align 8, !mcsema_real_eip !82
  store i64 %RAX_val.137, i64* %62, align 8, !mcsema_real_eip !82
  %R15_val.138 = load i64, i64* %R15, align 8, !mcsema_real_eip !83
  store i64 %R15_val.138, i64* %XDI, align 8, !mcsema_real_eip !83
  %RBP_val.139 = load i64, i64* %XBP, align 8, !mcsema_real_eip !84
  %63 = add i64 %RBP_val.139, -120, !mcsema_real_eip !84
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !84
  %R11_val.140 = load i64, i64* %R11, align 8, !mcsema_real_eip !84
  store i64 %R11_val.140, i64* %64, align 8, !mcsema_real_eip !84
  %RDI_val.141 = load i64, i64* %XDI, align 8, !mcsema_real_eip !85
  %RSP_val.142 = load i64, i64* %XSP, align 8, !mcsema_real_eip !85
  %65 = add i64 %RSP_val.142, -8
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !85
  store i64 -2415393069852865332, i64* %66, align 8, !mcsema_real_eip !85
  store i64 %65, i64* %XSP, align 8, !mcsema_real_eip !85
  %67 = tail call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.141), !mcsema_real_eip !85
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !85
  %RBP_val.143 = load i64, i64* %XBP, align 8, !mcsema_real_eip !86
  %68 = add i64 %RBP_val.143, -112, !mcsema_real_eip !86
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !86
  store i64 %67, i64* %69, align 8, !mcsema_real_eip !86
  %RBP_val.145 = load i64, i64* %XBP, align 8, !mcsema_real_eip !87
  %70 = add i64 %RBP_val.145, -40, !mcsema_real_eip !87
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !87
  %72 = load i32, i32* %71, align 4, !mcsema_real_eip !87
  %73 = zext i32 %72 to i64, !mcsema_real_eip !87
  store i64 %73, i64* %XSI, align 8, !mcsema_real_eip !87
  %74 = add i64 %RBP_val.145, -64, !mcsema_real_eip !88
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !88
  %76 = load i64, i64* %75, align 8, !mcsema_real_eip !88
  store i64 %76, i64* %XAX, align 8, !mcsema_real_eip !88
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !89
  %78 = load i32, i32* %77, align 4, !mcsema_real_eip !89
  %79 = add i32 %72, %78, !mcsema_real_eip !89
  %80 = xor i32 %79, %78, !mcsema_real_eip !89
  %81 = xor i32 %80, %72, !mcsema_real_eip !89
  %82 = and i32 %81, 16, !mcsema_real_eip !89
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !89
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !89
  %84 = icmp slt i32 %79, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !89
  %85 = icmp eq i32 %79, 0, !mcsema_real_eip !89
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !89
  %86 = xor i32 %78, -2147483648, !mcsema_real_eip !89
  %87 = xor i32 %86, %72, !mcsema_real_eip !89
  %88 = and i32 %80, %87, !mcsema_real_eip !89
  %89 = icmp slt i32 %88, 0
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !89
  %90 = trunc i32 %79 to i8, !mcsema_real_eip !89
  %91 = tail call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !89
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !89
  %94 = icmp ult i32 %79, %78, !mcsema_real_eip !89
  store i1 %94, i1* %CF, align 1, !mcsema_real_eip !89
  %95 = zext i32 %79 to i64, !mcsema_real_eip !89
  store i64 %95, i64* %XSI, align 8, !mcsema_real_eip !89
  %96 = add i64 %RBP_val.145, -72, !mcsema_real_eip !90
  %97 = inttoptr i64 %96 to i64*, !mcsema_real_eip !90
  %98 = load i64, i64* %97, align 8, !mcsema_real_eip !90
  store i64 %98, i64* %XAX, align 8, !mcsema_real_eip !90
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !91
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !91
  %101 = add i32 %79, %100, !mcsema_real_eip !91
  %102 = xor i32 %101, %100, !mcsema_real_eip !91
  %103 = xor i32 %102, %79, !mcsema_real_eip !91
  %104 = and i32 %103, 16, !mcsema_real_eip !91
  %105 = icmp ne i32 %104, 0, !mcsema_real_eip !91
  store i1 %105, i1* %AF, align 1, !mcsema_real_eip !91
  %106 = icmp slt i32 %101, 0
  store i1 %106, i1* %SF, align 1, !mcsema_real_eip !91
  %107 = icmp eq i32 %101, 0, !mcsema_real_eip !91
  store i1 %107, i1* %ZF, align 1, !mcsema_real_eip !91
  %108 = xor i32 %100, -2147483648, !mcsema_real_eip !91
  %109 = xor i32 %108, %79, !mcsema_real_eip !91
  %110 = and i32 %102, %109, !mcsema_real_eip !91
  %111 = icmp slt i32 %110, 0
  store i1 %111, i1* %OF, align 1, !mcsema_real_eip !91
  %112 = trunc i32 %101 to i8, !mcsema_real_eip !91
  %113 = tail call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !91
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  store i1 %115, i1* %PF, align 1, !mcsema_real_eip !91
  %116 = icmp ult i32 %101, %100, !mcsema_real_eip !91
  store i1 %116, i1* %CF, align 1, !mcsema_real_eip !91
  %117 = zext i32 %101 to i64, !mcsema_real_eip !91
  store i64 %117, i64* %XSI, align 8, !mcsema_real_eip !91
  %118 = add i64 %RBP_val.145, -120, !mcsema_real_eip !92
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !92
  %120 = load i64, i64* %119, align 8, !mcsema_real_eip !92
  store i64 %120, i64* %XAX, align 8, !mcsema_real_eip !92
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !93
  %122 = load i32, i32* %121, align 4, !mcsema_real_eip !93
  %123 = zext i32 %122 to i64, !mcsema_real_eip !93
  store i64 %123, i64* %R8, align 8, !mcsema_real_eip !93
  %124 = add i64 %RBP_val.145, -96, !mcsema_real_eip !94
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !94
  %126 = load i64, i64* %125, align 8, !mcsema_real_eip !94
  store i64 %126, i64* %XCX, align 8, !mcsema_real_eip !94
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !95
  %128 = load i32, i32* %127, align 4, !mcsema_real_eip !95
  %129 = add i32 %122, %128, !mcsema_real_eip !95
  %130 = xor i32 %129, %128, !mcsema_real_eip !95
  %131 = xor i32 %130, %122, !mcsema_real_eip !95
  %132 = and i32 %131, 16, !mcsema_real_eip !95
  %133 = icmp ne i32 %132, 0, !mcsema_real_eip !95
  store i1 %133, i1* %AF, align 1, !mcsema_real_eip !95
  %134 = icmp slt i32 %129, 0
  store i1 %134, i1* %SF, align 1, !mcsema_real_eip !95
  %135 = icmp eq i32 %129, 0, !mcsema_real_eip !95
  store i1 %135, i1* %ZF, align 1, !mcsema_real_eip !95
  %136 = xor i32 %128, -2147483648, !mcsema_real_eip !95
  %137 = xor i32 %136, %122, !mcsema_real_eip !95
  %138 = and i32 %130, %137, !mcsema_real_eip !95
  %139 = icmp slt i32 %138, 0
  store i1 %139, i1* %OF, align 1, !mcsema_real_eip !95
  %140 = trunc i32 %129 to i8, !mcsema_real_eip !95
  %141 = tail call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !95
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  store i1 %143, i1* %PF, align 1, !mcsema_real_eip !95
  %144 = icmp ult i32 %129, %128, !mcsema_real_eip !95
  store i1 %144, i1* %CF, align 1, !mcsema_real_eip !95
  %145 = zext i32 %129 to i64, !mcsema_real_eip !95
  store i64 %145, i64* %R8, align 8, !mcsema_real_eip !95
  %146 = add i64 %RBP_val.145, -104, !mcsema_real_eip !96
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !96
  %148 = load i64, i64* %147, align 8, !mcsema_real_eip !96
  store i64 %148, i64* %XCX, align 8, !mcsema_real_eip !96
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !97
  %150 = load i32, i32* %149, align 4, !mcsema_real_eip !97
  %151 = add i32 %129, %150, !mcsema_real_eip !97
  %152 = zext i32 %151 to i64, !mcsema_real_eip !97
  store i64 %152, i64* %R8, align 8, !mcsema_real_eip !97
  %153 = add i32 %151, %101, !mcsema_real_eip !98
  %154 = xor i32 %153, %101, !mcsema_real_eip !98
  %155 = xor i32 %154, %151, !mcsema_real_eip !98
  %156 = and i32 %155, 16, !mcsema_real_eip !98
  %157 = icmp ne i32 %156, 0, !mcsema_real_eip !98
  store i1 %157, i1* %AF, align 1, !mcsema_real_eip !98
  %158 = icmp slt i32 %153, 0
  store i1 %158, i1* %SF, align 1, !mcsema_real_eip !98
  %159 = icmp eq i32 %153, 0, !mcsema_real_eip !98
  store i1 %159, i1* %ZF, align 1, !mcsema_real_eip !98
  %160 = xor i32 %101, -2147483648, !mcsema_real_eip !98
  %161 = xor i32 %160, %151, !mcsema_real_eip !98
  %162 = and i32 %154, %161, !mcsema_real_eip !98
  %163 = icmp slt i32 %162, 0
  store i1 %163, i1* %OF, align 1, !mcsema_real_eip !98
  %164 = trunc i32 %153 to i8, !mcsema_real_eip !98
  %165 = tail call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !98
  %166 = and i8 %165, 1
  %167 = icmp eq i8 %166, 0
  store i1 %167, i1* %PF, align 1, !mcsema_real_eip !98
  %168 = icmp ult i32 %153, %101, !mcsema_real_eip !98
  store i1 %168, i1* %CF, align 1, !mcsema_real_eip !98
  %169 = zext i32 %153 to i64, !mcsema_real_eip !98
  store i64 %169, i64* %XSI, align 8, !mcsema_real_eip !98
  %170 = add i64 %RBP_val.145, -112, !mcsema_real_eip !99
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !99
  %172 = load i64, i64* %171, align 8, !mcsema_real_eip !99
  store i64 %172, i64* %XCX, align 8, !mcsema_real_eip !99
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !100
  store i32 %153, i32* %173, align 4, !mcsema_real_eip !100
  %RBP_val.172 = load i64, i64* %XBP, align 8, !mcsema_real_eip !101
  %174 = add i64 %RBP_val.172, -36, !mcsema_real_eip !101
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !101
  %176 = load i32, i32* %175, align 4, !mcsema_real_eip !101
  %177 = zext i32 %176 to i64, !mcsema_real_eip !101
  store i64 %177, i64* %XSI, align 8, !mcsema_real_eip !101
  %178 = add i64 %RBP_val.172, -64, !mcsema_real_eip !102
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !102
  %180 = load i64, i64* %179, align 8, !mcsema_real_eip !102
  store i64 %180, i64* %XCX, align 8, !mcsema_real_eip !102
  %181 = add i64 %180, 4, !mcsema_real_eip !103
  %182 = inttoptr i64 %181 to i32*, !mcsema_real_eip !103
  %183 = load i32, i32* %182, align 4, !mcsema_real_eip !103
  %184 = add i32 %176, %183, !mcsema_real_eip !103
  %185 = xor i32 %184, %183, !mcsema_real_eip !103
  %186 = xor i32 %185, %176, !mcsema_real_eip !103
  %187 = and i32 %186, 16, !mcsema_real_eip !103
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !103
  store i1 %188, i1* %AF, align 1, !mcsema_real_eip !103
  %189 = icmp slt i32 %184, 0
  store i1 %189, i1* %SF, align 1, !mcsema_real_eip !103
  %190 = icmp eq i32 %184, 0, !mcsema_real_eip !103
  store i1 %190, i1* %ZF, align 1, !mcsema_real_eip !103
  %191 = xor i32 %183, -2147483648, !mcsema_real_eip !103
  %192 = xor i32 %191, %176, !mcsema_real_eip !103
  %193 = and i32 %185, %192, !mcsema_real_eip !103
  %194 = icmp slt i32 %193, 0
  store i1 %194, i1* %OF, align 1, !mcsema_real_eip !103
  %195 = trunc i32 %184 to i8, !mcsema_real_eip !103
  %196 = tail call i8 @llvm.ctpop.i8(i8 %195), !mcsema_real_eip !103
  %197 = and i8 %196, 1
  %198 = icmp eq i8 %197, 0
  store i1 %198, i1* %PF, align 1, !mcsema_real_eip !103
  %199 = icmp ult i32 %184, %183, !mcsema_real_eip !103
  store i1 %199, i1* %CF, align 1, !mcsema_real_eip !103
  %200 = zext i32 %184 to i64, !mcsema_real_eip !103
  store i64 %200, i64* %XSI, align 8, !mcsema_real_eip !103
  %201 = add i64 %RBP_val.172, -72, !mcsema_real_eip !104
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !104
  %203 = load i64, i64* %202, align 8, !mcsema_real_eip !104
  store i64 %203, i64* %XCX, align 8, !mcsema_real_eip !104
  %204 = add i64 %203, 4, !mcsema_real_eip !105
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !105
  %206 = load i32, i32* %205, align 4, !mcsema_real_eip !105
  %207 = add i32 %184, %206, !mcsema_real_eip !105
  %208 = xor i32 %207, %206, !mcsema_real_eip !105
  %209 = xor i32 %208, %184, !mcsema_real_eip !105
  %210 = and i32 %209, 16, !mcsema_real_eip !105
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !105
  store i1 %211, i1* %AF, align 1, !mcsema_real_eip !105
  %212 = icmp slt i32 %207, 0
  store i1 %212, i1* %SF, align 1, !mcsema_real_eip !105
  %213 = icmp eq i32 %207, 0, !mcsema_real_eip !105
  store i1 %213, i1* %ZF, align 1, !mcsema_real_eip !105
  %214 = xor i32 %206, -2147483648, !mcsema_real_eip !105
  %215 = xor i32 %214, %184, !mcsema_real_eip !105
  %216 = and i32 %208, %215, !mcsema_real_eip !105
  %217 = icmp slt i32 %216, 0
  store i1 %217, i1* %OF, align 1, !mcsema_real_eip !105
  %218 = trunc i32 %207 to i8, !mcsema_real_eip !105
  %219 = tail call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !105
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !105
  %222 = icmp ult i32 %207, %206, !mcsema_real_eip !105
  store i1 %222, i1* %CF, align 1, !mcsema_real_eip !105
  %223 = zext i32 %207 to i64, !mcsema_real_eip !105
  store i64 %223, i64* %XSI, align 8, !mcsema_real_eip !105
  %RAX_val.181 = load i64, i64* %XAX, align 8, !mcsema_real_eip !106
  %224 = add i64 %RAX_val.181, 4, !mcsema_real_eip !106
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !106
  %226 = load i32, i32* %225, align 4, !mcsema_real_eip !106
  %227 = zext i32 %226 to i64, !mcsema_real_eip !106
  store i64 %227, i64* %R8, align 8, !mcsema_real_eip !106
  %228 = add i64 %RBP_val.172, -96, !mcsema_real_eip !107
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !107
  %230 = load i64, i64* %229, align 8, !mcsema_real_eip !107
  store i64 %230, i64* %XCX, align 8, !mcsema_real_eip !107
  %231 = add i64 %230, 4, !mcsema_real_eip !108
  %232 = inttoptr i64 %231 to i32*, !mcsema_real_eip !108
  %233 = load i32, i32* %232, align 4, !mcsema_real_eip !108
  %234 = add i32 %226, %233, !mcsema_real_eip !108
  %235 = xor i32 %234, %233, !mcsema_real_eip !108
  %236 = xor i32 %235, %226, !mcsema_real_eip !108
  %237 = and i32 %236, 16, !mcsema_real_eip !108
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !108
  store i1 %238, i1* %AF, align 1, !mcsema_real_eip !108
  %239 = icmp slt i32 %234, 0
  store i1 %239, i1* %SF, align 1, !mcsema_real_eip !108
  %240 = icmp eq i32 %234, 0, !mcsema_real_eip !108
  store i1 %240, i1* %ZF, align 1, !mcsema_real_eip !108
  %241 = xor i32 %233, -2147483648, !mcsema_real_eip !108
  %242 = xor i32 %241, %226, !mcsema_real_eip !108
  %243 = and i32 %235, %242, !mcsema_real_eip !108
  %244 = icmp slt i32 %243, 0
  store i1 %244, i1* %OF, align 1, !mcsema_real_eip !108
  %245 = trunc i32 %234 to i8, !mcsema_real_eip !108
  %246 = tail call i8 @llvm.ctpop.i8(i8 %245), !mcsema_real_eip !108
  %247 = and i8 %246, 1
  %248 = icmp eq i8 %247, 0
  store i1 %248, i1* %PF, align 1, !mcsema_real_eip !108
  %249 = icmp ult i32 %234, %233, !mcsema_real_eip !108
  store i1 %249, i1* %CF, align 1, !mcsema_real_eip !108
  %250 = zext i32 %234 to i64, !mcsema_real_eip !108
  store i64 %250, i64* %R8, align 8, !mcsema_real_eip !108
  %251 = add i64 %RBP_val.172, -104, !mcsema_real_eip !109
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !109
  %253 = load i64, i64* %252, align 8, !mcsema_real_eip !109
  store i64 %253, i64* %XCX, align 8, !mcsema_real_eip !109
  %254 = add i64 %253, 4, !mcsema_real_eip !110
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !110
  %256 = load i32, i32* %255, align 4, !mcsema_real_eip !110
  %257 = add i32 %234, %256, !mcsema_real_eip !110
  %258 = zext i32 %257 to i64, !mcsema_real_eip !110
  store i64 %258, i64* %R8, align 8, !mcsema_real_eip !110
  %259 = add i32 %257, %207, !mcsema_real_eip !111
  %260 = xor i32 %259, %207, !mcsema_real_eip !111
  %261 = xor i32 %260, %257, !mcsema_real_eip !111
  %262 = and i32 %261, 16, !mcsema_real_eip !111
  %263 = icmp ne i32 %262, 0, !mcsema_real_eip !111
  store i1 %263, i1* %AF, align 1, !mcsema_real_eip !111
  %264 = icmp slt i32 %259, 0
  store i1 %264, i1* %SF, align 1, !mcsema_real_eip !111
  %265 = icmp eq i32 %259, 0, !mcsema_real_eip !111
  store i1 %265, i1* %ZF, align 1, !mcsema_real_eip !111
  %266 = xor i32 %207, -2147483648, !mcsema_real_eip !111
  %267 = xor i32 %266, %257, !mcsema_real_eip !111
  %268 = and i32 %260, %267, !mcsema_real_eip !111
  %269 = icmp slt i32 %268, 0
  store i1 %269, i1* %OF, align 1, !mcsema_real_eip !111
  %270 = trunc i32 %259 to i8, !mcsema_real_eip !111
  %271 = tail call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !111
  %272 = and i8 %271, 1
  %273 = icmp eq i8 %272, 0
  store i1 %273, i1* %PF, align 1, !mcsema_real_eip !111
  %274 = icmp ult i32 %259, %207, !mcsema_real_eip !111
  store i1 %274, i1* %CF, align 1, !mcsema_real_eip !111
  %275 = zext i32 %259 to i64, !mcsema_real_eip !111
  store i64 %275, i64* %XSI, align 8, !mcsema_real_eip !111
  %276 = add i64 %RBP_val.172, -112, !mcsema_real_eip !112
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !112
  %278 = load i64, i64* %277, align 8, !mcsema_real_eip !112
  store i64 %278, i64* %XCX, align 8, !mcsema_real_eip !112
  %279 = add i64 %278, 4, !mcsema_real_eip !113
  %280 = inttoptr i64 %279 to i32*, !mcsema_real_eip !113
  store i32 %259, i32* %280, align 4, !mcsema_real_eip !113
  %RBP_val.198 = load i64, i64* %XBP, align 8, !mcsema_real_eip !114
  %281 = add i64 %RBP_val.198, -32, !mcsema_real_eip !114
  %282 = inttoptr i64 %281 to i32*, !mcsema_real_eip !114
  %283 = load i32, i32* %282, align 4, !mcsema_real_eip !114
  %284 = zext i32 %283 to i64, !mcsema_real_eip !114
  store i64 %284, i64* %XSI, align 8, !mcsema_real_eip !114
  %285 = add i64 %RBP_val.198, -64, !mcsema_real_eip !115
  %286 = inttoptr i64 %285 to i64*, !mcsema_real_eip !115
  %287 = load i64, i64* %286, align 8, !mcsema_real_eip !115
  store i64 %287, i64* %XCX, align 8, !mcsema_real_eip !115
  %288 = add i64 %287, 8, !mcsema_real_eip !116
  %289 = inttoptr i64 %288 to i32*, !mcsema_real_eip !116
  %290 = load i32, i32* %289, align 4, !mcsema_real_eip !116
  %291 = add i32 %283, %290, !mcsema_real_eip !116
  %292 = xor i32 %291, %290, !mcsema_real_eip !116
  %293 = xor i32 %292, %283, !mcsema_real_eip !116
  %294 = and i32 %293, 16, !mcsema_real_eip !116
  %295 = icmp ne i32 %294, 0, !mcsema_real_eip !116
  store i1 %295, i1* %AF, align 1, !mcsema_real_eip !116
  %296 = icmp slt i32 %291, 0
  store i1 %296, i1* %SF, align 1, !mcsema_real_eip !116
  %297 = icmp eq i32 %291, 0, !mcsema_real_eip !116
  store i1 %297, i1* %ZF, align 1, !mcsema_real_eip !116
  %298 = xor i32 %290, -2147483648, !mcsema_real_eip !116
  %299 = xor i32 %298, %283, !mcsema_real_eip !116
  %300 = and i32 %292, %299, !mcsema_real_eip !116
  %301 = icmp slt i32 %300, 0
  store i1 %301, i1* %OF, align 1, !mcsema_real_eip !116
  %302 = trunc i32 %291 to i8, !mcsema_real_eip !116
  %303 = tail call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !116
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  store i1 %305, i1* %PF, align 1, !mcsema_real_eip !116
  %306 = icmp ult i32 %291, %290, !mcsema_real_eip !116
  store i1 %306, i1* %CF, align 1, !mcsema_real_eip !116
  %307 = zext i32 %291 to i64, !mcsema_real_eip !116
  store i64 %307, i64* %XSI, align 8, !mcsema_real_eip !116
  %308 = add i64 %RBP_val.198, -72, !mcsema_real_eip !117
  %309 = inttoptr i64 %308 to i64*, !mcsema_real_eip !117
  %310 = load i64, i64* %309, align 8, !mcsema_real_eip !117
  store i64 %310, i64* %XCX, align 8, !mcsema_real_eip !117
  %311 = add i64 %310, 8, !mcsema_real_eip !118
  %312 = inttoptr i64 %311 to i32*, !mcsema_real_eip !118
  %313 = load i32, i32* %312, align 4, !mcsema_real_eip !118
  %314 = add i32 %291, %313, !mcsema_real_eip !118
  %315 = xor i32 %314, %313, !mcsema_real_eip !118
  %316 = xor i32 %315, %291, !mcsema_real_eip !118
  %317 = and i32 %316, 16, !mcsema_real_eip !118
  %318 = icmp ne i32 %317, 0, !mcsema_real_eip !118
  store i1 %318, i1* %AF, align 1, !mcsema_real_eip !118
  %319 = icmp slt i32 %314, 0
  store i1 %319, i1* %SF, align 1, !mcsema_real_eip !118
  %320 = icmp eq i32 %314, 0, !mcsema_real_eip !118
  store i1 %320, i1* %ZF, align 1, !mcsema_real_eip !118
  %321 = xor i32 %313, -2147483648, !mcsema_real_eip !118
  %322 = xor i32 %321, %291, !mcsema_real_eip !118
  %323 = and i32 %315, %322, !mcsema_real_eip !118
  %324 = icmp slt i32 %323, 0
  store i1 %324, i1* %OF, align 1, !mcsema_real_eip !118
  %325 = trunc i32 %314 to i8, !mcsema_real_eip !118
  %326 = tail call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !118
  %327 = and i8 %326, 1
  %328 = icmp eq i8 %327, 0
  store i1 %328, i1* %PF, align 1, !mcsema_real_eip !118
  %329 = icmp ult i32 %314, %313, !mcsema_real_eip !118
  store i1 %329, i1* %CF, align 1, !mcsema_real_eip !118
  %330 = zext i32 %314 to i64, !mcsema_real_eip !118
  store i64 %330, i64* %XSI, align 8, !mcsema_real_eip !118
  %RAX_val.207 = load i64, i64* %XAX, align 8, !mcsema_real_eip !119
  %331 = add i64 %RAX_val.207, 8, !mcsema_real_eip !119
  %332 = inttoptr i64 %331 to i32*, !mcsema_real_eip !119
  %333 = load i32, i32* %332, align 4, !mcsema_real_eip !119
  %334 = zext i32 %333 to i64, !mcsema_real_eip !119
  store i64 %334, i64* %R8, align 8, !mcsema_real_eip !119
  %335 = add i64 %RBP_val.198, -96, !mcsema_real_eip !120
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !120
  %337 = load i64, i64* %336, align 8, !mcsema_real_eip !120
  store i64 %337, i64* %XCX, align 8, !mcsema_real_eip !120
  %338 = add i64 %337, 8, !mcsema_real_eip !121
  %339 = inttoptr i64 %338 to i32*, !mcsema_real_eip !121
  %340 = load i32, i32* %339, align 4, !mcsema_real_eip !121
  %341 = add i32 %333, %340, !mcsema_real_eip !121
  %342 = xor i32 %341, %340, !mcsema_real_eip !121
  %343 = xor i32 %342, %333, !mcsema_real_eip !121
  %344 = and i32 %343, 16, !mcsema_real_eip !121
  %345 = icmp ne i32 %344, 0, !mcsema_real_eip !121
  store i1 %345, i1* %AF, align 1, !mcsema_real_eip !121
  %346 = icmp slt i32 %341, 0
  store i1 %346, i1* %SF, align 1, !mcsema_real_eip !121
  %347 = icmp eq i32 %341, 0, !mcsema_real_eip !121
  store i1 %347, i1* %ZF, align 1, !mcsema_real_eip !121
  %348 = xor i32 %340, -2147483648, !mcsema_real_eip !121
  %349 = xor i32 %348, %333, !mcsema_real_eip !121
  %350 = and i32 %342, %349, !mcsema_real_eip !121
  %351 = icmp slt i32 %350, 0
  store i1 %351, i1* %OF, align 1, !mcsema_real_eip !121
  %352 = trunc i32 %341 to i8, !mcsema_real_eip !121
  %353 = tail call i8 @llvm.ctpop.i8(i8 %352), !mcsema_real_eip !121
  %354 = and i8 %353, 1
  %355 = icmp eq i8 %354, 0
  store i1 %355, i1* %PF, align 1, !mcsema_real_eip !121
  %356 = icmp ult i32 %341, %340, !mcsema_real_eip !121
  store i1 %356, i1* %CF, align 1, !mcsema_real_eip !121
  %357 = zext i32 %341 to i64, !mcsema_real_eip !121
  store i64 %357, i64* %R8, align 8, !mcsema_real_eip !121
  %358 = add i64 %RBP_val.198, -104, !mcsema_real_eip !122
  %359 = inttoptr i64 %358 to i64*, !mcsema_real_eip !122
  %360 = load i64, i64* %359, align 8, !mcsema_real_eip !122
  store i64 %360, i64* %XCX, align 8, !mcsema_real_eip !122
  %361 = add i64 %360, 8, !mcsema_real_eip !123
  %362 = inttoptr i64 %361 to i32*, !mcsema_real_eip !123
  %363 = load i32, i32* %362, align 4, !mcsema_real_eip !123
  %364 = add i32 %341, %363, !mcsema_real_eip !123
  %365 = zext i32 %364 to i64, !mcsema_real_eip !123
  store i64 %365, i64* %R8, align 8, !mcsema_real_eip !123
  %366 = add i32 %364, %314, !mcsema_real_eip !124
  %367 = xor i32 %366, %314, !mcsema_real_eip !124
  %368 = xor i32 %367, %364, !mcsema_real_eip !124
  %369 = and i32 %368, 16, !mcsema_real_eip !124
  %370 = icmp ne i32 %369, 0, !mcsema_real_eip !124
  store i1 %370, i1* %AF, align 1, !mcsema_real_eip !124
  %371 = icmp slt i32 %366, 0
  store i1 %371, i1* %SF, align 1, !mcsema_real_eip !124
  %372 = icmp eq i32 %366, 0, !mcsema_real_eip !124
  store i1 %372, i1* %ZF, align 1, !mcsema_real_eip !124
  %373 = xor i32 %314, -2147483648, !mcsema_real_eip !124
  %374 = xor i32 %373, %364, !mcsema_real_eip !124
  %375 = and i32 %367, %374, !mcsema_real_eip !124
  %376 = icmp slt i32 %375, 0
  store i1 %376, i1* %OF, align 1, !mcsema_real_eip !124
  %377 = trunc i32 %366 to i8, !mcsema_real_eip !124
  %378 = tail call i8 @llvm.ctpop.i8(i8 %377), !mcsema_real_eip !124
  %379 = and i8 %378, 1
  %380 = icmp eq i8 %379, 0
  store i1 %380, i1* %PF, align 1, !mcsema_real_eip !124
  %381 = icmp ult i32 %366, %314, !mcsema_real_eip !124
  store i1 %381, i1* %CF, align 1, !mcsema_real_eip !124
  %382 = zext i32 %366 to i64, !mcsema_real_eip !124
  store i64 %382, i64* %XSI, align 8, !mcsema_real_eip !124
  %383 = add i64 %RBP_val.198, -112, !mcsema_real_eip !125
  %384 = inttoptr i64 %383 to i64*, !mcsema_real_eip !125
  %385 = load i64, i64* %384, align 8, !mcsema_real_eip !125
  store i64 %385, i64* %XCX, align 8, !mcsema_real_eip !125
  %386 = add i64 %385, 8, !mcsema_real_eip !126
  %387 = inttoptr i64 %386 to i32*, !mcsema_real_eip !126
  store i32 %366, i32* %387, align 4, !mcsema_real_eip !126
  %RBP_val.224 = load i64, i64* %XBP, align 8, !mcsema_real_eip !127
  %388 = add i64 %RBP_val.224, -112, !mcsema_real_eip !127
  %389 = inttoptr i64 %388 to i64*, !mcsema_real_eip !127
  %390 = load i64, i64* %389, align 8, !mcsema_real_eip !127
  store i64 %390, i64* %XAX, align 8, !mcsema_real_eip !127
  %RSP_val.225 = load i64, i64* %XSP, align 8, !mcsema_real_eip !128
  %391 = add i64 %RSP_val.225, 104, !mcsema_real_eip !128
  %392 = xor i64 %391, %RSP_val.225, !mcsema_real_eip !128
  %393 = and i64 %392, 16, !mcsema_real_eip !128
  %394 = icmp ne i64 %393, 0, !mcsema_real_eip !128
  store i1 %394, i1* %AF, align 1, !mcsema_real_eip !128
  %395 = icmp slt i64 %391, 0
  store i1 %395, i1* %SF, align 1, !mcsema_real_eip !128
  %396 = icmp eq i64 %391, 0, !mcsema_real_eip !128
  store i1 %396, i1* %ZF, align 1, !mcsema_real_eip !128
  %397 = xor i64 %RSP_val.225, -9223372036854775808, !mcsema_real_eip !128
  %398 = and i64 %392, %397, !mcsema_real_eip !128
  %399 = icmp slt i64 %398, 0
  store i1 %399, i1* %OF, align 1, !mcsema_real_eip !128
  %400 = trunc i64 %391 to i8, !mcsema_real_eip !128
  %401 = tail call i8 @llvm.ctpop.i8(i8 %400), !mcsema_real_eip !128
  %402 = and i8 %401, 1
  %403 = icmp eq i8 %402, 0
  store i1 %403, i1* %PF, align 1, !mcsema_real_eip !128
  %404 = icmp ugt i64 %RSP_val.225, -105
  store i1 %404, i1* %CF, align 1, !mcsema_real_eip !128
  store i64 %391, i64* %XSP, align 8, !mcsema_real_eip !128
  %405 = inttoptr i64 %391 to i64*, !mcsema_real_eip !129
  %406 = load i64, i64* %405, align 8, !mcsema_real_eip !129
  store i64 %406, i64* %XBX, align 8, !mcsema_real_eip !129
  %407 = add i64 %RSP_val.225, 112, !mcsema_real_eip !129
  store i64 %407, i64* %XSP, align 8, !mcsema_real_eip !129
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !130
  %409 = load i64, i64* %408, align 8, !mcsema_real_eip !130
  store i64 %409, i64* %R14, align 8, !mcsema_real_eip !130
  %410 = add i64 %RSP_val.225, 120, !mcsema_real_eip !130
  store i64 %410, i64* %XSP, align 8, !mcsema_real_eip !130
  %411 = inttoptr i64 %410 to i64*, !mcsema_real_eip !131
  %412 = load i64, i64* %411, align 8, !mcsema_real_eip !131
  store i64 %412, i64* %R15, align 8, !mcsema_real_eip !131
  %413 = add i64 %RSP_val.225, 128, !mcsema_real_eip !131
  store i64 %413, i64* %XSP, align 8, !mcsema_real_eip !131
  %414 = inttoptr i64 %413 to i64*, !mcsema_real_eip !132
  %415 = load i64, i64* %414, align 8, !mcsema_real_eip !132
  store i64 %415, i64* %XBP, align 8, !mcsema_real_eip !132
  %416 = add i64 %RSP_val.225, 136, !mcsema_real_eip !132
  store i64 %416, i64* %XSP, align 8, !mcsema_real_eip !132
  %417 = add i64 %RSP_val.225, 144, !mcsema_real_eip !133
  %418 = inttoptr i64 %416 to i64*, !mcsema_real_eip !133
  %419 = load i64, i64* %418, align 8, !mcsema_real_eip !133
  store i64 %419, i64* %XIP, align 8, !mcsema_real_eip !133
  store i64 %417, i64* %XSP, align 8, !mcsema_real_eip !133
  ret void, !mcsema_real_eip !133
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_100.1(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [144 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 144
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
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 136
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -136
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !4
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !4
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 128 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 12, i64* %XAX, align 8, !mcsema_real_eip !5
  store i64 12, i64* %XDI, align 8, !mcsema_real_eip !6
  %_new_gep_17 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %11 = bitcast i8* %_new_gep_17 to <4 x i32>*
  store <4 x i32> <i32 10, i32 10, i32 10, i32 0>, <4 x i32>* %11, align 8
  %_new_gep_26 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %12 = add i64 %RSP_val.1, -144
  %_allin_new_bt_27 = bitcast [144 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, align 8, !mcsema_real_eip !7
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XSP, align 8, !mcsema_real_eip !7
  %13 = call x86_64_sysvcc i64 @_malloc(i64 12)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XAX, align 8, !mcsema_real_eip !7
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_29 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -16
  %14 = ptrtoint i8* %_new_gep_29 to i64
  store i64 %14, i64* %XDI, align 8, !mcsema_real_eip !8
  %15 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 1, i64 2>, <2 x i64>* %15, align 8
  store i64 3, i64* %XCX, align 8, !mcsema_real_eip !9
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_28, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %13, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !10
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -24
  %_ptr_to_int_ = ptrtoint i8* %_new_gep_35 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_35
  %16 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %16, align 8
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !11
  %17 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !12
  store i32 5, i32* %17, align 4, !mcsema_real_eip !12
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -24
  %_ptr_to_int_167 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_170 = sub i64 %_ptr_to_int_167, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  %_address_in_parent_stack_bt_180._allin_new_bt_39.v = select i1 %_cond1_n_cond2_cond3_178, i8* %_pot_address_in_parent_stack_171, i8* %_new_gep_38
  %_address_in_parent_stack_bt_180._allin_new_bt_39 = bitcast i8* %_address_in_parent_stack_bt_180._allin_new_bt_39.v to i64*
  %_new_load_181 = load i64, i64* %_address_in_parent_stack_bt_180._allin_new_bt_39, align 8
  store i64 %_new_load_181, i64* %XAX, align 8, !mcsema_real_eip !13
  %18 = add i64 %_new_load_181, 4, !mcsema_real_eip !14
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !14
  store i32 5, i32* %19, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -24
  %_ptr_to_int_182 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_185 = sub i64 %_ptr_to_int_182, %_local_end_to_int_
  %_pot_address_in_parent_stack_186 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_185
  %_cond1_187 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_188 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_189 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_190 = or i1 %_cond2_1_188, %_cond2_2_189
  %_cond4_191 = icmp ule i8* %_pot_address_in_parent_stack_186, %_parent_stack_end_ptr_
  %_cond1_n_cond2_192 = and i1 %_cond1_187, %_cond2_190
  %_cond1_n_cond2_cond3_193 = and i1 %_cond1_n_cond2_192, %_cond4_191
  %.v2 = select i1 %_cond1_n_cond2_cond3_193, i8* %_pot_address_in_parent_stack_186, i8* %_new_gep_41
  %20 = bitcast i8* %.v2 to i64*
  %_new_load_196 = load i64, i64* %20, align 8
  store i64 %_new_load_196, i64* %XAX, align 8, !mcsema_real_eip !15
  %21 = add i64 %_new_load_196, 8, !mcsema_real_eip !16
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !16
  store i32 5, i32* %22, align 4, !mcsema_real_eip !16
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -24
  %_ptr_to_int_197 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_200 = sub i64 %_ptr_to_int_197, %_local_end_to_int_
  %_pot_address_in_parent_stack_201 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_200
  %_cond1_202 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_203 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_204 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_205 = or i1 %_cond2_1_203, %_cond2_2_204
  %_cond4_206 = icmp ule i8* %_pot_address_in_parent_stack_201, %_parent_stack_end_ptr_
  %_cond1_n_cond2_207 = and i1 %_cond1_202, %_cond2_205
  %_cond1_n_cond2_cond3_208 = and i1 %_cond1_n_cond2_207, %_cond4_206
  %_address_in_parent_stack_bt_210._allin_new_bt_45.v = select i1 %_cond1_n_cond2_cond3_208, i8* %_pot_address_in_parent_stack_201, i8* %_new_gep_44
  %_address_in_parent_stack_bt_210._allin_new_bt_45 = bitcast i8* %_address_in_parent_stack_bt_210._allin_new_bt_45.v to i64*
  %_new_load_211 = load i64, i64* %_address_in_parent_stack_bt_210._allin_new_bt_45, align 8
  store i64 %_new_load_211, i64* %XAX, align 8, !mcsema_real_eip !17
  %_new_load_226 = load i64, i64* %_address_in_parent_stack_bt_210._allin_new_bt_45, align 8
  store i64 %_new_load_226, i64* %XDX, align 8, !mcsema_real_eip !18
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -16
  %_ptr_to_int_227 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_230 = sub i64 %_ptr_to_int_227, %_local_end_to_int_
  %_pot_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_cond1_232 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_233 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_234 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_235 = or i1 %_cond2_1_233, %_cond2_2_234
  %_cond4_236 = icmp ule i8* %_pot_address_in_parent_stack_231, %_parent_stack_end_ptr_
  %_cond1_n_cond2_237 = and i1 %_cond1_232, %_cond2_235
  %_cond1_n_cond2_cond3_238 = and i1 %_cond1_n_cond2_237, %_cond4_236
  %_address_in_parent_stack_bt_240._allin_new_bt_51.v = select i1 %_cond1_n_cond2_cond3_238, i8* %_pot_address_in_parent_stack_231, i8* %_new_gep_50
  %_address_in_parent_stack_bt_240._allin_new_bt_51 = bitcast i8* %_address_in_parent_stack_bt_240._allin_new_bt_51.v to i64*
  %_new_load_241 = load i64, i64* %_address_in_parent_stack_bt_240._allin_new_bt_51, align 8
  store i64 %_new_load_241, i64* %XSI, align 8, !mcsema_real_eip !19
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_43, i64 -48
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 %_new_load_241, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !20
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -8
  %23 = ptrtoint i8* %_new_gep_56 to i64
  %_offset_above_rbp_245 = sub i64 %23, %_local_end_to_int_
  %_pot_address_in_parent_stack_246 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_245
  %_cond1_247 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_248 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_249 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_250 = or i1 %_cond2_1_248, %_cond2_2_249
  %_cond4_251 = icmp ule i8* %_pot_address_in_parent_stack_246, %_parent_stack_end_ptr_
  %_cond1_n_cond2_252 = and i1 %_cond1_247, %_cond2_250
  %_cond1_n_cond2_cond3_253 = and i1 %_cond1_n_cond2_252, %_cond4_251
  %.v3 = select i1 %_cond1_n_cond2_cond3_253, i8* %_pot_address_in_parent_stack_246, i8* %_new_gep_56
  %24 = bitcast i8* %.v3 to i32*
  %_new_load_256 = load i32, i32* %24, align 4
  %25 = zext i32 %_new_load_256 to i64, !mcsema_real_eip !21
  store i64 %25, i64* %R10, align 8, !mcsema_real_eip !21
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -40
  %R10D.28 = bitcast i64* %R10 to i32*, !mcsema_real_eip !22
  %26 = bitcast i8* %_new_gep_59 to i32*
  store i32 %_new_load_256, i32* %26, align 4, !mcsema_real_eip !22
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -48
  %_ptr_to_int_257 = ptrtoint i8* %_new_gep_62 to i64
  %_offset_above_rbp_260 = sub i64 %_ptr_to_int_257, %_local_end_to_int_
  %_pot_address_in_parent_stack_261 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_260
  %_cond1_262 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_263 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_264 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_265 = or i1 %_cond2_1_263, %_cond2_2_264
  %_cond4_266 = icmp ule i8* %_pot_address_in_parent_stack_261, %_parent_stack_end_ptr_
  %_cond1_n_cond2_267 = and i1 %_cond1_262, %_cond2_265
  %_cond1_n_cond2_cond3_268 = and i1 %_cond1_n_cond2_267, %_cond4_266
  %_address_in_parent_stack_bt_270._allin_new_bt_63.v = select i1 %_cond1_n_cond2_cond3_268, i8* %_pot_address_in_parent_stack_261, i8* %_new_gep_62
  %_address_in_parent_stack_bt_270._allin_new_bt_63 = bitcast i8* %_address_in_parent_stack_bt_270._allin_new_bt_63.v to i64*
  %_new_load_271 = load i64, i64* %_address_in_parent_stack_bt_270._allin_new_bt_63, align 8
  store i64 %_new_load_271, i64* %XSI, align 8, !mcsema_real_eip !23
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -40
  %27 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_275 = sub i64 %27, %_local_end_to_int_
  %_pot_address_in_parent_stack_276 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_275
  %_cond1_277 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_278 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_279 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_280 = or i1 %_cond2_1_278, %_cond2_2_279
  %_cond4_281 = icmp ule i8* %_pot_address_in_parent_stack_276, %_parent_stack_end_ptr_
  %_cond1_n_cond2_282 = and i1 %_cond1_277, %_cond2_280
  %_cond1_n_cond2_cond3_283 = and i1 %_cond1_n_cond2_282, %_cond4_281
  %.v4 = select i1 %_cond1_n_cond2_cond3_283, i8* %_pot_address_in_parent_stack_276, i8* %_new_gep_65
  %28 = bitcast i8* %.v4 to i32*
  %_new_load_286 = load i32, i32* %28, align 4
  %29 = zext i32 %_new_load_286 to i64, !mcsema_real_eip !24
  store i64 %29, i64* %R10, align 8, !mcsema_real_eip !24
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -64
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %RDI_val.33 = load i64, i64* %XDI, align 8, !mcsema_real_eip !25
  store i64 %RDI_val.33, i64* %_allin_new_bt_69, align 8, !mcsema_real_eip !25
  %RSI_val.34 = load i64, i64* %XSI, align 8, !mcsema_real_eip !26
  store i64 %RSI_val.34, i64* %XDI, align 8, !mcsema_real_eip !26
  %R10D_val.36 = load i32, i32* %R10D.28, align 4, !mcsema_real_eip !27
  %30 = zext i32 %R10D_val.36 to i64, !mcsema_real_eip !27
  store i64 %30, i64* %XSI, align 8, !mcsema_real_eip !27
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70, i64 -64
  %_ptr_to_int_287 = ptrtoint i8* %_new_gep_71 to i64
  %_offset_above_rbp_290 = sub i64 %_ptr_to_int_287, %_local_end_to_int_
  %_pot_address_in_parent_stack_291 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_290
  %_cond1_292 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_293 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_294 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_295 = or i1 %_cond2_1_293, %_cond2_2_294
  %_cond4_296 = icmp ule i8* %_pot_address_in_parent_stack_291, %_parent_stack_end_ptr_
  %_cond1_n_cond2_297 = and i1 %_cond1_292, %_cond2_295
  %_cond1_n_cond2_cond3_298 = and i1 %_cond1_n_cond2_297, %_cond4_296
  %_address_in_parent_stack_bt_300._allin_new_bt_72.v = select i1 %_cond1_n_cond2_cond3_298, i8* %_pot_address_in_parent_stack_291, i8* %_new_gep_71
  %_address_in_parent_stack_bt_300._allin_new_bt_72 = bitcast i8* %_address_in_parent_stack_bt_300._allin_new_bt_72.v to i64*
  %_new_load_301 = load i64, i64* %_address_in_parent_stack_bt_300._allin_new_bt_72, align 8
  store i64 %_new_load_301, i64* %R11, align 8, !mcsema_real_eip !28
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70, i64 -72
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %RDX_val.39 = load i64, i64* %XDX, align 8, !mcsema_real_eip !29
  store i64 %RDX_val.39, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !29
  %R11_val.40 = load i64, i64* %R11, align 8, !mcsema_real_eip !30
  store i64 %R11_val.40, i64* %XDX, align 8, !mcsema_real_eip !30
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_77 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_76, i64 -76
  %ECX.42 = bitcast i64* %XCX to i32*, !mcsema_real_eip !31
  %ECX_val.43 = load i32, i32* %ECX.42, align 4, !mcsema_real_eip !31
  %31 = bitcast i8* %_new_gep_77 to i32*
  store i32 %ECX_val.43, i32* %31, align 4, !mcsema_real_eip !31
  %RAX_val.44 = load i64, i64* %XAX, align 8, !mcsema_real_eip !32
  store i64 %RAX_val.44, i64* %XCX, align 8, !mcsema_real_eip !32
  %32 = bitcast i8** %_RSP_ptr_ to i32**
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_7956714 = load i32*, i32** %32, align 8
  store i32 3, i32* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_7956714, align 4, !mcsema_real_eip !33
  %R11_val.46 = load i64, i64* %R11, align 8, !mcsema_real_eip !34
  %33 = inttoptr i64 %R11_val.46 to i64*, !mcsema_real_eip !34
  %_ptr_bt_304 = inttoptr i64 %R11_val.46 to i8*
  %_offset_above_rbp_305 = sub i64 %R11_val.46, %_local_end_to_int_
  %_pot_address_in_parent_stack_306 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_305
  %_cond1_307 = icmp ugt i8* %_ptr_bt_304, %_local_stack_end_ptr_
  %_cond2_1_308 = icmp ugt i8* %_ptr_bt_304, %_parent_stack_end_ptr_
  %_cond2_2_309 = icmp ult i8* %_ptr_bt_304, %_parent_stack_start_ptr_
  %_cond2_310 = or i1 %_cond2_1_308, %_cond2_2_309
  %_cond4_311 = icmp ule i8* %_pot_address_in_parent_stack_306, %_parent_stack_end_ptr_
  %_cond1_n_cond2_312 = and i1 %_cond1_307, %_cond2_310
  %_cond1_n_cond2_cond3_313 = and i1 %_cond4_311, %_cond1_n_cond2_312
  %_address_in_parent_stack_bt_315 = bitcast i8* %_pot_address_in_parent_stack_306 to i64*
  %34 = select i1 %_cond1_n_cond2_cond3_313, i64* %_address_in_parent_stack_bt_315, i64* %33
  %_new_load_316 = load i64, i64* %34, align 8
  store i64 %_new_load_316, i64* %XAX, align 8, !mcsema_real_eip !34
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_83 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82, i64 8
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  store i64 %_new_load_316, i64* %_allin_new_bt_84, align 8, !mcsema_real_eip !35
  %R11_val.49 = load i64, i64* %R11, align 8, !mcsema_real_eip !36
  %35 = add i64 %R11_val.49, 8, !mcsema_real_eip !36
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !36
  %_ptr_bt_319 = inttoptr i64 %35 to i8*
  %_offset_above_rbp_320 = sub i64 %35, %_local_end_to_int_
  %_pot_address_in_parent_stack_321 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_320
  %_cond1_322 = icmp ugt i8* %_ptr_bt_319, %_local_stack_end_ptr_
  %_cond2_1_323 = icmp ugt i8* %_ptr_bt_319, %_parent_stack_end_ptr_
  %_cond2_2_324 = icmp ult i8* %_ptr_bt_319, %_parent_stack_start_ptr_
  %_cond2_325 = or i1 %_cond2_1_323, %_cond2_2_324
  %_cond4_326 = icmp ule i8* %_pot_address_in_parent_stack_321, %_parent_stack_end_ptr_
  %_cond1_n_cond2_327 = and i1 %_cond1_322, %_cond2_325
  %_cond1_n_cond2_cond3_328 = and i1 %_cond4_326, %_cond1_n_cond2_327
  %_address_in_parent_stack_bt_330 = bitcast i8* %_pot_address_in_parent_stack_321 to i32*
  %_address_in_parent_stack_bt_330. = select i1 %_cond1_n_cond2_cond3_328, i32* %_address_in_parent_stack_bt_330, i32* %36
  %_new_load_331 = load i32, i32* %_address_in_parent_stack_bt_330., align 4
  %37 = zext i32 %_new_load_331 to i64, !mcsema_real_eip !36
  store i64 %37, i64* %R10, align 8, !mcsema_real_eip !36
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_86 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_85, i64 16
  %38 = bitcast i8* %_new_gep_86 to i32*
  store i32 %_new_load_331, i32* %38, align 4, !mcsema_real_eip !37
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_89 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_88, i64 24
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %R11_val.54 = load i64, i64* %R11, align 8, !mcsema_real_eip !38
  store i64 %R11_val.54, i64* %_allin_new_bt_90, align 8, !mcsema_real_eip !38
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_91, i64 -72
  %_ptr_to_int_332 = ptrtoint i8* %_new_gep_92 to i64
  %_offset_above_rbp_335 = sub i64 %_ptr_to_int_332, %_local_end_to_int_
  %_pot_address_in_parent_stack_336 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_335
  %_cond1_337 = icmp ugt i8* %_new_gep_92, %_local_stack_end_ptr_
  %_cond2_1_338 = icmp ugt i8* %_new_gep_92, %_parent_stack_end_ptr_
  %_cond2_2_339 = icmp ult i8* %_new_gep_92, %_parent_stack_start_ptr_
  %_cond2_340 = or i1 %_cond2_1_338, %_cond2_2_339
  %_cond4_341 = icmp ule i8* %_pot_address_in_parent_stack_336, %_parent_stack_end_ptr_
  %_cond1_n_cond2_342 = and i1 %_cond1_337, %_cond2_340
  %_cond1_n_cond2_cond3_343 = and i1 %_cond1_n_cond2_342, %_cond4_341
  %.v8 = select i1 %_cond1_n_cond2_cond3_343, i8* %_pot_address_in_parent_stack_336, i8* %_new_gep_92
  %39 = bitcast i8* %.v8 to i64*
  %_new_load_346 = load i64, i64* %39, align 8
  store i64 %_new_load_346, i64* %XAX, align 8, !mcsema_real_eip !39
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_94 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_95 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_94, i64 32
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  store i64 %_new_load_346, i64* %_allin_new_bt_96, align 8, !mcsema_real_eip !40
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.58 = load i64, i64* %XSP, align 8, !mcsema_real_eip !41
  %_new_gep_98 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_97, i64 -8
  %40 = add i64 %RSP_val.58, -8
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, align 8, !mcsema_real_eip !41
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_, align 8
  store i64 %40, i64* %XSP, align 8, !mcsema_real_eip !41
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_161)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_163 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_164 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_163, i64 8
  store i8* %_gep_fix_164, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, align 8, !mcsema_real_eip !42
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_100, i64 -32
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %RAX_val.60 = load i64, i64* %XAX, align 8, !mcsema_real_eip !43
  store i64 %RAX_val.60, i64* %_allin_new_bt_102, align 8, !mcsema_real_eip !43
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -32
  %_ptr_to_int_347 = ptrtoint i8* %_new_gep_104 to i64
  %_offset_above_rbp_350 = sub i64 %_ptr_to_int_347, %_local_end_to_int_
  %_pot_address_in_parent_stack_351 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_350
  %_cond1_352 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_353 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_354 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_355 = or i1 %_cond2_1_353, %_cond2_2_354
  %_cond4_356 = icmp ule i8* %_pot_address_in_parent_stack_351, %_parent_stack_end_ptr_
  %_cond1_n_cond2_357 = and i1 %_cond1_352, %_cond2_355
  %_cond1_n_cond2_cond3_358 = and i1 %_cond1_n_cond2_357, %_cond4_356
  %_address_in_parent_stack_bt_360._allin_new_bt_105.v = select i1 %_cond1_n_cond2_cond3_358, i8* %_pot_address_in_parent_stack_351, i8* %_new_gep_104
  %_address_in_parent_stack_bt_360._allin_new_bt_105 = bitcast i8* %_address_in_parent_stack_bt_360._allin_new_bt_105.v to i64*
  %_new_load_361 = load i64, i64* %_address_in_parent_stack_bt_360._allin_new_bt_105, align 8
  store i64 %_new_load_361, i64* %XAX, align 8, !mcsema_real_eip !44
  %41 = inttoptr i64 %_new_load_361 to i32*, !mcsema_real_eip !45
  %_ptr_bt_364 = inttoptr i64 %_new_load_361 to i8*
  %_offset_above_rbp_365 = sub i64 %_new_load_361, %_local_end_to_int_
  %_pot_address_in_parent_stack_366 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_365
  %_cond1_367 = icmp ugt i8* %_ptr_bt_364, %_local_stack_end_ptr_
  %_cond2_1_368 = icmp ugt i8* %_ptr_bt_364, %_parent_stack_end_ptr_
  %_cond2_2_369 = icmp ult i8* %_ptr_bt_364, %_parent_stack_start_ptr_
  %_cond2_370 = or i1 %_cond2_1_368, %_cond2_2_369
  %_cond4_371 = icmp ule i8* %_pot_address_in_parent_stack_366, %_parent_stack_end_ptr_
  %_cond1_n_cond2_372 = and i1 %_cond1_367, %_cond2_370
  %_cond1_n_cond2_cond3_373 = and i1 %_cond4_371, %_cond1_n_cond2_372
  %_address_in_parent_stack_bt_375 = bitcast i8* %_pot_address_in_parent_stack_366 to i32*
  %42 = select i1 %_cond1_n_cond2_cond3_373, i32* %_address_in_parent_stack_bt_375, i32* %41
  %_new_load_376 = load i32, i32* %42, align 4
  %43 = zext i32 %_new_load_376 to i64, !mcsema_real_eip !45
  store i64 %43, i64* %XSI, align 8, !mcsema_real_eip !45
  %_new_load_391 = load i64, i64* %_address_in_parent_stack_bt_360._allin_new_bt_105, align 8
  store i64 %_new_load_391, i64* %XAX, align 8, !mcsema_real_eip !46
  %44 = add i64 %_new_load_391, 4, !mcsema_real_eip !47
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !47
  %_ptr_bt_394 = inttoptr i64 %44 to i8*
  %_offset_above_rbp_395 = sub i64 %44, %_local_end_to_int_
  %_pot_address_in_parent_stack_396 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_395
  %_cond1_397 = icmp ugt i8* %_ptr_bt_394, %_local_stack_end_ptr_
  %_cond2_1_398 = icmp ugt i8* %_ptr_bt_394, %_parent_stack_end_ptr_
  %_cond2_2_399 = icmp ult i8* %_ptr_bt_394, %_parent_stack_start_ptr_
  %_cond2_400 = or i1 %_cond2_1_398, %_cond2_2_399
  %_cond4_401 = icmp ule i8* %_pot_address_in_parent_stack_396, %_parent_stack_end_ptr_
  %_cond1_n_cond2_402 = and i1 %_cond1_397, %_cond2_400
  %_cond1_n_cond2_cond3_403 = and i1 %_cond4_401, %_cond1_n_cond2_402
  %_address_in_parent_stack_bt_405 = bitcast i8* %_pot_address_in_parent_stack_396 to i32*
  %46 = select i1 %_cond1_n_cond2_cond3_403, i32* %_address_in_parent_stack_bt_405, i32* %45
  %_new_load_406 = load i32, i32* %46, align 4
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !47
  %47 = add i32 %_new_load_376, %_new_load_406, !mcsema_real_eip !47
  %48 = xor i32 %47, %_new_load_406, !mcsema_real_eip !47
  %49 = xor i32 %48, %_new_load_376, !mcsema_real_eip !47
  %50 = and i32 %49, 16, !mcsema_real_eip !47
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !47
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !47
  %52 = icmp slt i32 %47, 0
  store i1 %52, i1* %SF, align 1, !mcsema_real_eip !47
  %53 = icmp eq i32 %47, 0, !mcsema_real_eip !47
  store i1 %53, i1* %ZF, align 1, !mcsema_real_eip !47
  %54 = xor i32 %_new_load_406, -2147483648, !mcsema_real_eip !47
  %55 = xor i32 %54, %_new_load_376, !mcsema_real_eip !47
  %56 = and i32 %48, %55, !mcsema_real_eip !47
  %57 = icmp slt i32 %56, 0
  store i1 %57, i1* %OF, align 1, !mcsema_real_eip !47
  %58 = trunc i32 %47 to i8, !mcsema_real_eip !47
  %59 = call i8 @llvm.ctpop.i8(i8 %58), !mcsema_real_eip !47
  %60 = and i8 %59, 1
  %61 = icmp eq i8 %60, 0
  store i1 %61, i1* %PF, align 1, !mcsema_real_eip !47
  %62 = icmp ult i32 %47, %_new_load_406, !mcsema_real_eip !47
  store i1 %62, i1* %CF, align 1, !mcsema_real_eip !47
  %63 = zext i32 %47 to i64, !mcsema_real_eip !47
  store i64 %63, i64* %XSI, align 8, !mcsema_real_eip !47
  %_new_load_421 = load i64, i64* %_address_in_parent_stack_bt_360._allin_new_bt_105, align 8
  store i64 %_new_load_421, i64* %XAX, align 8, !mcsema_real_eip !48
  %64 = add i64 %_new_load_421, 8, !mcsema_real_eip !49
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !49
  %_ptr_bt_424 = inttoptr i64 %64 to i8*
  %_offset_above_rbp_425 = sub i64 %64, %_local_end_to_int_
  %_pot_address_in_parent_stack_426 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_425
  %_cond1_427 = icmp ugt i8* %_ptr_bt_424, %_local_stack_end_ptr_
  %_cond2_1_428 = icmp ugt i8* %_ptr_bt_424, %_parent_stack_end_ptr_
  %_cond2_2_429 = icmp ult i8* %_ptr_bt_424, %_parent_stack_start_ptr_
  %_cond2_430 = or i1 %_cond2_1_428, %_cond2_2_429
  %_cond4_431 = icmp ule i8* %_pot_address_in_parent_stack_426, %_parent_stack_end_ptr_
  %_cond1_n_cond2_432 = and i1 %_cond1_427, %_cond2_430
  %_cond1_n_cond2_cond3_433 = and i1 %_cond4_431, %_cond1_n_cond2_432
  %_address_in_parent_stack_bt_435 = bitcast i8* %_pot_address_in_parent_stack_426 to i32*
  %66 = select i1 %_cond1_n_cond2_cond3_433, i32* %_address_in_parent_stack_bt_435, i32* %65
  %_new_load_436 = load i32, i32* %66, align 4
  %67 = add i32 %47, %_new_load_436, !mcsema_real_eip !49
  %68 = xor i32 %67, %_new_load_436, !mcsema_real_eip !49
  %69 = xor i32 %68, %47, !mcsema_real_eip !49
  %70 = and i32 %69, 16, !mcsema_real_eip !49
  %71 = icmp ne i32 %70, 0, !mcsema_real_eip !49
  store i1 %71, i1* %AF, align 1, !mcsema_real_eip !49
  %72 = icmp slt i32 %67, 0
  store i1 %72, i1* %SF, align 1, !mcsema_real_eip !49
  %73 = icmp eq i32 %67, 0, !mcsema_real_eip !49
  store i1 %73, i1* %ZF, align 1, !mcsema_real_eip !49
  %74 = xor i32 %_new_load_436, -2147483648, !mcsema_real_eip !49
  %75 = xor i32 %74, %47, !mcsema_real_eip !49
  %76 = and i32 %68, %75, !mcsema_real_eip !49
  %77 = icmp slt i32 %76, 0
  store i1 %77, i1* %OF, align 1, !mcsema_real_eip !49
  %78 = trunc i32 %67 to i8, !mcsema_real_eip !49
  %79 = call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !49
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  store i1 %81, i1* %PF, align 1, !mcsema_real_eip !49
  %82 = icmp ult i32 %67, %_new_load_436, !mcsema_real_eip !49
  store i1 %82, i1* %CF, align 1, !mcsema_real_eip !49
  %83 = zext i32 %67 to i64, !mcsema_real_eip !49
  store i64 %83, i64* %XSI, align 8, !mcsema_real_eip !49
  %_new_gep_113 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -52
  %84 = bitcast i8* %_new_gep_113 to i32*
  store i32 %67, i32* %84, align 4, !mcsema_real_eip !50
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_115 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_116 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_115, i64 -52
  %85 = ptrtoint i8* %_new_gep_116 to i64
  %_offset_above_rbp_440 = sub i64 %85, %_local_end_to_int_
  %_pot_address_in_parent_stack_441 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_440
  %_cond1_442 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_443 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_444 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_445 = or i1 %_cond2_1_443, %_cond2_2_444
  %_cond4_446 = icmp ule i8* %_pot_address_in_parent_stack_441, %_parent_stack_end_ptr_
  %_cond1_n_cond2_447 = and i1 %_cond1_442, %_cond2_445
  %_cond1_n_cond2_cond3_448 = and i1 %_cond1_n_cond2_447, %_cond4_446
  %_address_in_parent_stack_bt_450..v = select i1 %_cond1_n_cond2_cond3_448, i8* %_pot_address_in_parent_stack_441, i8* %_new_gep_116
  %_address_in_parent_stack_bt_450. = bitcast i8* %_address_in_parent_stack_bt_450..v to i32*
  %_new_load_451 = load i32, i32* %_address_in_parent_stack_bt_450., align 4
  %86 = zext i32 %_new_load_451 to i64, !mcsema_real_eip !51
  store i64 %86, i64* %XSI, align 8, !mcsema_real_eip !51
  %AL.75 = bitcast i64* %XAX to i8*, !mcsema_real_eip !52
  store i8 0, i8* %AL.75, align 1, !mcsema_real_eip !52
  %RDI_val.76 = load i64, i64* %XDI, align 8, !mcsema_real_eip !53
  %RDX_val.78 = load i64, i64* %XDX, align 8, !mcsema_real_eip !53
  %RCX_val.79 = load i64, i64* %XCX, align 8, !mcsema_real_eip !53
  %R8_val.80 = load i64, i64* %R8, align 8, !mcsema_real_eip !53
  %R9_val.81 = load i64, i64* %R9, align 8, !mcsema_real_eip !53
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_452 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118 to i64
  %_offset_above_rbp_455 = sub i64 %_ptr_to_int_452, %_local_end_to_int_
  %_pot_address_in_parent_stack_456 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_455
  %_cond1_457 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, %_local_stack_end_ptr_
  %_cond2_1_458 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, %_parent_stack_end_ptr_
  %_cond2_2_459 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, %_parent_stack_start_ptr_
  %_cond2_460 = or i1 %_cond2_1_458, %_cond2_2_459
  %_cond4_461 = icmp ule i8* %_pot_address_in_parent_stack_456, %_parent_stack_end_ptr_
  %_cond1_n_cond2_462 = and i1 %_cond1_457, %_cond2_460
  %_cond1_n_cond2_cond3_463 = and i1 %_cond1_n_cond2_462, %_cond4_461
  %.v9 = select i1 %_cond1_n_cond2_cond3_463, i8* %_pot_address_in_parent_stack_456, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118
  %87 = bitcast i8* %.v9 to i64*
  %_new_load_466 = load i64, i64* %87, align 8
  %_new_gep_120 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 8
  %_ptr_to_int_467 = ptrtoint i8* %_new_gep_120 to i64
  %_offset_above_rbp_470 = sub i64 %_ptr_to_int_467, %_local_end_to_int_
  %_pot_address_in_parent_stack_471 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_470
  %_cond1_472 = icmp ugt i8* %_new_gep_120, %_local_stack_end_ptr_
  %_cond2_1_473 = icmp ugt i8* %_new_gep_120, %_parent_stack_end_ptr_
  %_cond2_2_474 = icmp ult i8* %_new_gep_120, %_parent_stack_start_ptr_
  %_cond2_475 = or i1 %_cond2_1_473, %_cond2_2_474
  %_cond4_476 = icmp ule i8* %_pot_address_in_parent_stack_471, %_parent_stack_end_ptr_
  %_cond1_n_cond2_477 = and i1 %_cond1_472, %_cond2_475
  %_cond1_n_cond2_cond3_478 = and i1 %_cond1_n_cond2_477, %_cond4_476
  %_address_in_parent_stack_bt_480._allin_new_bt_121.v = select i1 %_cond1_n_cond2_cond3_478, i8* %_pot_address_in_parent_stack_471, i8* %_new_gep_120
  %_address_in_parent_stack_bt_480._allin_new_bt_121 = bitcast i8* %_address_in_parent_stack_bt_480._allin_new_bt_121.v to i64*
  %_new_load_481 = load i64, i64* %_address_in_parent_stack_bt_480._allin_new_bt_121, align 8
  %_new_gep_122 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 16
  %_ptr_to_int_482 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_485 = sub i64 %_ptr_to_int_482, %_local_end_to_int_
  %_pot_address_in_parent_stack_486 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_485
  %_cond1_487 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_488 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_489 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_490 = or i1 %_cond2_1_488, %_cond2_2_489
  %_cond4_491 = icmp ule i8* %_pot_address_in_parent_stack_486, %_parent_stack_end_ptr_
  %_cond1_n_cond2_492 = and i1 %_cond1_487, %_cond2_490
  %_cond1_n_cond2_cond3_493 = and i1 %_cond1_n_cond2_492, %_cond4_491
  %.v10 = select i1 %_cond1_n_cond2_cond3_493, i8* %_pot_address_in_parent_stack_486, i8* %_new_gep_122
  %88 = bitcast i8* %.v10 to i64*
  %_new_load_496 = load i64, i64* %88, align 8
  %_new_gep_124 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 24
  %_ptr_to_int_497 = ptrtoint i8* %_new_gep_124 to i64
  %_offset_above_rbp_500 = sub i64 %_ptr_to_int_497, %_local_end_to_int_
  %_pot_address_in_parent_stack_501 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_500
  %_cond1_502 = icmp ugt i8* %_new_gep_124, %_local_stack_end_ptr_
  %_cond2_1_503 = icmp ugt i8* %_new_gep_124, %_parent_stack_end_ptr_
  %_cond2_2_504 = icmp ult i8* %_new_gep_124, %_parent_stack_start_ptr_
  %_cond2_505 = or i1 %_cond2_1_503, %_cond2_2_504
  %_cond4_506 = icmp ule i8* %_pot_address_in_parent_stack_501, %_parent_stack_end_ptr_
  %_cond1_n_cond2_507 = and i1 %_cond1_502, %_cond2_505
  %_cond1_n_cond2_cond3_508 = and i1 %_cond1_n_cond2_507, %_cond4_506
  %_address_in_parent_stack_bt_510._allin_new_bt_125.v = select i1 %_cond1_n_cond2_cond3_508, i8* %_pot_address_in_parent_stack_501, i8* %_new_gep_124
  %_address_in_parent_stack_bt_510._allin_new_bt_125 = bitcast i8* %_address_in_parent_stack_bt_510._allin_new_bt_125.v to i64*
  %_new_load_511 = load i64, i64* %_address_in_parent_stack_bt_510._allin_new_bt_125, align 8
  %_new_gep_126 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 32
  %_ptr_to_int_512 = ptrtoint i8* %_new_gep_126 to i64
  %_offset_above_rbp_515 = sub i64 %_ptr_to_int_512, %_local_end_to_int_
  %_pot_address_in_parent_stack_516 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_515
  %_cond1_517 = icmp ugt i8* %_new_gep_126, %_local_stack_end_ptr_
  %_cond2_1_518 = icmp ugt i8* %_new_gep_126, %_parent_stack_end_ptr_
  %_cond2_2_519 = icmp ult i8* %_new_gep_126, %_parent_stack_start_ptr_
  %_cond2_520 = or i1 %_cond2_1_518, %_cond2_2_519
  %_cond4_521 = icmp ule i8* %_pot_address_in_parent_stack_516, %_parent_stack_end_ptr_
  %_cond1_n_cond2_522 = and i1 %_cond1_517, %_cond2_520
  %_cond1_n_cond2_cond3_523 = and i1 %_cond1_n_cond2_522, %_cond4_521
  %.v11 = select i1 %_cond1_n_cond2_cond3_523, i8* %_pot_address_in_parent_stack_516, i8* %_new_gep_126
  %89 = bitcast i8* %.v11 to i64*
  %_new_load_526 = load i64, i64* %89, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 40
  %_ptr_to_int_527 = ptrtoint i8* %_new_gep_128 to i64
  %_offset_above_rbp_530 = sub i64 %_ptr_to_int_527, %_local_end_to_int_
  %_pot_address_in_parent_stack_531 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_530
  %_cond1_532 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_533 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_534 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_535 = or i1 %_cond2_1_533, %_cond2_2_534
  %_cond4_536 = icmp ule i8* %_pot_address_in_parent_stack_531, %_parent_stack_end_ptr_
  %_cond1_n_cond2_537 = and i1 %_cond1_532, %_cond2_535
  %_cond1_n_cond2_cond3_538 = and i1 %_cond1_n_cond2_537, %_cond4_536
  %_address_in_parent_stack_bt_540._allin_new_bt_129.v = select i1 %_cond1_n_cond2_cond3_538, i8* %_pot_address_in_parent_stack_531, i8* %_new_gep_128
  %_address_in_parent_stack_bt_540._allin_new_bt_129 = bitcast i8* %_address_in_parent_stack_bt_540._allin_new_bt_129.v to i64*
  %_new_load_541 = load i64, i64* %_address_in_parent_stack_bt_540._allin_new_bt_129, align 8
  %RSP_val.83 = load i64, i64* %XSP, align 8, !mcsema_real_eip !53
  %_new_gep_131 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 -8
  %90 = add i64 %RSP_val.83, -8
  %_allin_new_bt_132 = bitcast i8* %_new_gep_131 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_132, align 8, !mcsema_real_eip !53
  store volatile i8* %_new_gep_131, i8** %_RSP_ptr_, align 8
  store i64 %90, i64* %XSP, align 8, !mcsema_real_eip !53
  %91 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.76, i64 %86, i64 %RDX_val.78, i64 %RCX_val.79, i64 %R8_val.80, i64 %R9_val.81, i64 %_new_load_466, i64 %_new_load_481, i64 %_new_load_496, i64 %_new_load_511, i64 %_new_load_526, i64 %_new_load_541)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_165 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_166 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_165, i64 8
  store i8* %_gep_fix_166, i8** %_RSP_ptr_, align 8
  store i64 %91, i64* %XAX, align 8, !mcsema_real_eip !53
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_133 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_134 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_133, i64 -52
  %92 = ptrtoint i8* %_new_gep_134 to i64
  %_offset_above_rbp_545 = sub i64 %92, %_local_end_to_int_
  %_pot_address_in_parent_stack_546 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_545
  %_cond1_547 = icmp ugt i8* %_new_gep_134, %_local_stack_end_ptr_
  %_cond2_1_548 = icmp ugt i8* %_new_gep_134, %_parent_stack_end_ptr_
  %_cond2_2_549 = icmp ult i8* %_new_gep_134, %_parent_stack_start_ptr_
  %_cond2_550 = or i1 %_cond2_1_548, %_cond2_2_549
  %_cond4_551 = icmp ule i8* %_pot_address_in_parent_stack_546, %_parent_stack_end_ptr_
  %_cond1_n_cond2_552 = and i1 %_cond1_547, %_cond2_550
  %_cond1_n_cond2_cond3_553 = and i1 %_cond1_n_cond2_552, %_cond4_551
  %.v12 = select i1 %_cond1_n_cond2_cond3_553, i8* %_pot_address_in_parent_stack_546, i8* %_new_gep_134
  %93 = bitcast i8* %.v12 to i32*
  %_new_load_556 = load i32, i32* %93, align 4
  %94 = zext i32 %_new_load_556 to i64, !mcsema_real_eip !54
  store i64 %94, i64* %XSI, align 8, !mcsema_real_eip !54
  %_new_gep_137 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_133, i64 -80
  %95 = trunc i64 %91 to i32
  %96 = bitcast i8* %_new_gep_137 to i32*
  store i32 %95, i32* %96, align 4, !mcsema_real_eip !55
  %ESI_val.89 = load i32, i32* %ESI.65, align 4, !mcsema_real_eip !56
  %97 = zext i32 %ESI_val.89 to i64, !mcsema_real_eip !56
  store i64 %97, i64* %XAX, align 8, !mcsema_real_eip !56
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.90 = load i64, i64* %XSP, align 8, !mcsema_real_eip !57
  %_new_gep_140 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139, i64 128
  %98 = add i64 %RSP_val.90, 128, !mcsema_real_eip !57
  %_trans_p2i_141 = ptrtoint i8* %_new_gep_140 to i64
  %_trans_p2i_142 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139 to i64
  %_trans_xor_143 = xor i64 %_trans_p2i_141, %_trans_p2i_142
  %99 = and i64 %_trans_xor_143, 16, !mcsema_real_eip !57
  %100 = icmp ne i64 %99, 0, !mcsema_real_eip !57
  store i1 %100, i1* %AF, align 1, !mcsema_real_eip !57
  %101 = icmp slt i64 %98, 0
  store i1 %101, i1* %SF, align 1, !mcsema_real_eip !57
  %_trans_icmp_eq_145 = icmp eq i8* %_new_gep_140, null
  store i1 %_trans_icmp_eq_145, i1* %ZF, align 1, !mcsema_real_eip !57
  %102 = xor i64 %_trans_p2i_142, -9223372036854775808, !mcsema_real_eip !57
  %103 = and i64 %_trans_xor_143, %102, !mcsema_real_eip !57
  %104 = icmp slt i64 %103, 0
  store i1 %104, i1* %OF, align 1, !mcsema_real_eip !57
  %_trans_trunc_152 = trunc i64 %_trans_p2i_141 to i8
  %105 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_152), !mcsema_real_eip !57
  %106 = and i8 %105, 1
  %107 = icmp eq i8 %106, 0
  store i1 %107, i1* %PF, align 1, !mcsema_real_eip !57
  %_trans_icmp_ne_154 = icmp ne i64 %_trans_p2i_141, %RSP_val.90
  store i1 %_trans_icmp_ne_154, i1* %CF, align 1, !mcsema_real_eip !57
  store volatile i8* %_new_gep_140, i8** %_RSP_ptr_, align 8
  store i64 %98, i64* %XSP, align 8, !mcsema_real_eip !57
  %_offset_above_rbp_560 = sub i64 %_trans_p2i_141, %_local_end_to_int_
  %_pot_address_in_parent_stack_561 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_560
  %_cond1_562 = icmp ugt i8* %_new_gep_140, %_local_stack_end_ptr_
  %_cond2_1_563 = icmp ugt i8* %_new_gep_140, %_parent_stack_end_ptr_
  %_cond2_2_564 = icmp ult i8* %_new_gep_140, %_parent_stack_start_ptr_
  %_cond2_565 = or i1 %_cond2_1_563, %_cond2_2_564
  %_cond4_566 = icmp ule i8* %_pot_address_in_parent_stack_561, %_parent_stack_end_ptr_
  %_cond1_n_cond2_567 = and i1 %_cond1_562, %_cond2_565
  %_cond1_n_cond2_cond3_568 = and i1 %_cond1_n_cond2_567, %_cond4_566
  %_address_in_parent_stack_bt_570._allin_new_bt_156.v = select i1 %_cond1_n_cond2_cond3_568, i8* %_pot_address_in_parent_stack_561, i8* %_new_gep_140
  %_address_in_parent_stack_bt_570._allin_new_bt_156 = bitcast i8* %_address_in_parent_stack_bt_570._allin_new_bt_156.v to i64*
  %_new_load_571 = load i64, i64* %_address_in_parent_stack_bt_570._allin_new_bt_156, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_571 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_571, i64* %XBP, align 8, !mcsema_real_eip !58
  %_new_gep_157 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139, i64 136
  %108 = add i64 %RSP_val.90, 136, !mcsema_real_eip !58
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_, align 8
  store i64 %108, i64* %XSP, align 8, !mcsema_real_eip !58
  %_new_gep_159 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139, i64 144
  %109 = add i64 %RSP_val.90, 144, !mcsema_real_eip !59
  %_ptr_to_int_572 = ptrtoint i8* %_new_gep_157 to i64
  %_offset_above_rbp_575 = sub i64 %_ptr_to_int_572, %_local_end_to_int_
  %_pot_address_in_parent_stack_576 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_575
  %_cond1_577 = icmp ugt i8* %_new_gep_157, %_local_stack_end_ptr_
  %_cond2_1_578 = icmp ugt i8* %_new_gep_157, %_parent_stack_end_ptr_
  %_cond2_2_579 = icmp ult i8* %_new_gep_157, %_parent_stack_start_ptr_
  %_cond2_580 = or i1 %_cond2_1_578, %_cond2_2_579
  %_cond4_581 = icmp ule i8* %_pot_address_in_parent_stack_576, %_parent_stack_end_ptr_
  %_cond1_n_cond2_582 = and i1 %_cond1_577, %_cond2_580
  %_cond1_n_cond2_cond3_583 = and i1 %_cond1_n_cond2_582, %_cond4_581
  %.v13 = select i1 %_cond1_n_cond2_cond3_583, i8* %_pot_address_in_parent_stack_576, i8* %_new_gep_157
  %110 = bitcast i8* %.v13 to i64*
  %_new_load_586 = load i64, i64* %110, align 8
  store i64 %_new_load_586, i64* %XIP, align 8, !mcsema_real_eip !59
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_, align 8
  store i64 %109, i64* %XSP, align 8, !mcsema_real_eip !59
  ret void, !mcsema_real_eip !59
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [144 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 144
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !60
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !60
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !60
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !60
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !60
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !60
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !60
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !60
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !60
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !60
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !60
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !60
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !60
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !60
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !60
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !60
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !60
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !60
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !60
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !60
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !60
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !60
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !60
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !60
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !60
  %R14 = getelementptr %RegState, %RegState* %0, i64 0, i32 70, !mcsema_real_eip !60
  %R15 = getelementptr %RegState, %RegState* %0, i64 0, i32 71, !mcsema_real_eip !60
  %RSP_val.94 = load i64, i64* %XSP, align 8, !mcsema_real_eip !60
  %_new_gep_ = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 136
  %1 = add i64 %RSP_val.94, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !61
  %R15_val.96 = load i64, i64* %R15, align 8, !mcsema_real_eip !62
  %_new_gep_3 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 128
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R15_val.96, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !62
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %R14_val.98 = load i64, i64* %R14, align 8, !mcsema_real_eip !63
  %_new_gep_6 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %R14_val.98, i64* %_allin_new_bt_7, align 8, !mcsema_real_eip !63
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_, align 8
  %RBX_val.100 = load i64, i64* %XBX, align 8, !mcsema_real_eip !64
  %_new_gep_9 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 112
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  store i64 %RBX_val.100, i64* %_allin_new_bt_10, align 8, !mcsema_real_eip !64
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_, align 8
  %_new_gep_12 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.94, -136
  %_trans_p2i_ = ptrtoint i8* %_new_gep_12 to i64
  %_trans_p2i_13 = ptrtoint i8* %_new_gep_9 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_13
  %3 = and i64 %_trans_xor_, 16, !mcsema_real_eip !65
  %4 = icmp ne i64 %3, 0, !mcsema_real_eip !65
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !65
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !65
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !65
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !65
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !65
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_9, inttoptr (i64 104 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !65
  %9 = and i64 %_trans_xor_, %_trans_p2i_13, !mcsema_real_eip !65
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !65
  store volatile i8* %_new_gep_12, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !65
  %_new_gep_23 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 184
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 40
  %_cond1_ = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_23
  %11 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %11, align 8
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !66
  %_new_gep_26 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 176
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 32
  %_cond1_178 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  %_address_in_parent_stack_bt_186._allin_new_bt_27.v = select i1 %_cond1_n_cond2_cond3_184, i8* %_pot_address_in_parent_stack_177, i8* %_new_gep_26
  %_address_in_parent_stack_bt_186._allin_new_bt_27 = bitcast i8* %_address_in_parent_stack_bt_186._allin_new_bt_27.v to i64*
  %_new_load_187 = load i64, i64* %_address_in_parent_stack_bt_186._allin_new_bt_27, align 8
  store i64 %_new_load_187, i64* %R10, align 8, !mcsema_real_eip !67
  %_new_gep_29 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 160
  %12 = ptrtoint i8* %_new_gep_29 to i64
  store i64 %12, i64* %R11, align 8, !mcsema_real_eip !68
  %_new_gep_32 = getelementptr [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 152
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_193 = icmp ugt i8* %_new_gep_32, %_local_stack_end_ptr_
  %_cond2_1_194 = icmp ugt i8* %_new_gep_32, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_new_gep_32, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  %.v2 = select i1 %_cond1_n_cond2_cond3_199, i8* %_pot_address_in_parent_stack_192, i8* %_new_gep_32
  %13 = bitcast i8* %.v2 to i32*
  %_new_load_202 = load i32, i32* %13, align 4
  %14 = zext i32 %_new_load_202 to i64, !mcsema_real_eip !69
  store i64 %14, i64* %XBX, align 8, !mcsema_real_eip !69
  %15 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> <i64 12, i64 12>, <2 x i64>* %15, align 8
  %_new_gep_35 = getelementptr inbounds [144 x i8], [144 x i8]* %_local_stack_start_ptr_1, i64 0, i64 80
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %RDI_val.110 = load i64, i64* %XDI, align 8, !mcsema_real_eip !70
  store i64 %RDI_val.110, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !70
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -48
  %ESI.112 = bitcast i64* %XSI to i32*, !mcsema_real_eip !71
  %ESI_val.113 = load i32, i32* %ESI.112, align 4, !mcsema_real_eip !71
  %16 = bitcast i8* %_new_gep_38 to i32*
  store i32 %ESI_val.113, i32* %16, align 4, !mcsema_real_eip !71
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -56
  %_ptr_to_int_203 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_206 = sub i64 %_ptr_to_int_203, %_local_end_to_int_
  %_pot_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_cond1_208 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_209 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_210 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_211 = or i1 %_cond2_1_209, %_cond2_2_210
  %_cond4_212 = icmp ule i8* %_pot_address_in_parent_stack_207, %_parent_stack_end_ptr_
  %_cond1_n_cond2_213 = and i1 %_cond1_208, %_cond2_211
  %_cond1_n_cond2_cond3_214 = and i1 %_cond1_n_cond2_213, %_cond4_212
  %_address_in_parent_stack_bt_216._allin_new_bt_42.v = select i1 %_cond1_n_cond2_cond3_214, i8* %_pot_address_in_parent_stack_207, i8* %_new_gep_41
  %_address_in_parent_stack_bt_216._allin_new_bt_42 = bitcast i8* %_address_in_parent_stack_bt_216._allin_new_bt_42.v to i64*
  %_new_load_217 = load i64, i64* %_address_in_parent_stack_bt_216._allin_new_bt_42, align 8
  store i64 %_new_load_217, i64* %XDI, align 8, !mcsema_real_eip !72
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -40
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %_new_load_217, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !73
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -48
  %17 = ptrtoint i8* %_new_gep_47 to i64
  %_offset_above_rbp_221 = sub i64 %17, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_224 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  %.v3 = select i1 %_cond1_n_cond2_cond3_229, i8* %_pot_address_in_parent_stack_222, i8* %_new_gep_47
  %18 = bitcast i8* %.v3 to i32*
  %_new_load_232 = load i32, i32* %18, align 4
  %19 = zext i32 %_new_load_232 to i64, !mcsema_real_eip !74
  store i64 %19, i64* %XSI, align 8, !mcsema_real_eip !74
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_46, i64 -32
  %20 = bitcast i8* %_new_gep_50 to i32*
  store i32 %_new_load_232, i32* %20, align 4, !mcsema_real_eip !75
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52, i64 -64
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %RDX_val.122 = load i64, i64* %XDX, align 8, !mcsema_real_eip !76
  store i64 %RDX_val.122, i64* %_allin_new_bt_54, align 8, !mcsema_real_eip !76
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -72
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %RCX_val.124 = load i64, i64* %XCX, align 8, !mcsema_real_eip !77
  store i64 %RCX_val.124, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !77
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -76
  %R8D.126 = bitcast i64* %R8 to i32*, !mcsema_real_eip !78
  %R8D_val.127 = load i32, i32* %R8D.126, align 4, !mcsema_real_eip !78
  %21 = bitcast i8* %_new_gep_59 to i32*
  store i32 %R8D_val.127, i32* %21, align 4, !mcsema_real_eip !78
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -80
  %R9D.129 = bitcast i64* %R9 to i32*, !mcsema_real_eip !79
  %R9D_val.130 = load i32, i32* %R9D.129, align 4, !mcsema_real_eip !79
  %22 = bitcast i8* %_new_gep_62 to i32*
  store i32 %R9D_val.130, i32* %22, align 4, !mcsema_real_eip !79
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64, i64 -84
  %EBX.132 = bitcast i64* %XBX to i32*, !mcsema_real_eip !80
  %EBX_val.133 = load i32, i32* %EBX.132, align 4, !mcsema_real_eip !80
  %23 = bitcast i8* %_new_gep_65 to i32*
  store i32 %EBX_val.133, i32* %23, align 4, !mcsema_real_eip !80
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_67, i64 -96
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %R10_val.135 = load i64, i64* %R10, align 8, !mcsema_real_eip !81
  store i64 %R10_val.135, i64* %_allin_new_bt_69, align 8, !mcsema_real_eip !81
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70, i64 -104
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %RAX_val.137 = load i64, i64* %XAX, align 8, !mcsema_real_eip !82
  store i64 %RAX_val.137, i64* %_allin_new_bt_72, align 8, !mcsema_real_eip !82
  %R15_val.138 = load i64, i64* %R15, align 8, !mcsema_real_eip !83
  store i64 %R15_val.138, i64* %XDI, align 8, !mcsema_real_eip !83
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73, i64 -120
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %R11_val.140 = load i64, i64* %R11, align 8, !mcsema_real_eip !84
  store i64 %R11_val.140, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !84
  %RDI_val.141 = load i64, i64* %XDI, align 8, !mcsema_real_eip !85
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.142 = load i64, i64* %XSP, align 8, !mcsema_real_eip !85
  %_new_gep_77 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_76, i64 -8
  %24 = add i64 %RSP_val.142, -8
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_78, align 8, !mcsema_real_eip !85
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_, align 8
  store i64 %24, i64* %XSP, align 8, !mcsema_real_eip !85
  %25 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.141)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !85
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, i64 -112
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  store i64 %25, i64* %_allin_new_bt_81, align 8, !mcsema_real_eip !86
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_83 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -40
  %26 = ptrtoint i8* %_new_gep_83 to i64
  %_offset_above_rbp_236 = sub i64 %26, %_local_end_to_int_
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_new_gep_83, %_local_stack_end_ptr_
  %_cond2_1_239 = icmp ugt i8* %_new_gep_83, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_new_gep_83, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  %_address_in_parent_stack_bt_246..v = select i1 %_cond1_n_cond2_cond3_244, i8* %_pot_address_in_parent_stack_237, i8* %_new_gep_83
  %_address_in_parent_stack_bt_246. = bitcast i8* %_address_in_parent_stack_bt_246..v to i32*
  %_new_load_247 = load i32, i32* %_address_in_parent_stack_bt_246., align 4
  %27 = zext i32 %_new_load_247 to i64, !mcsema_real_eip !87
  store i64 %27, i64* %XSI, align 8, !mcsema_real_eip !87
  %_new_gep_86 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -64
  %_ptr_to_int_248 = ptrtoint i8* %_new_gep_86 to i64
  %_offset_above_rbp_251 = sub i64 %_ptr_to_int_248, %_local_end_to_int_
  %_pot_address_in_parent_stack_252 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_251
  %_cond1_253 = icmp ugt i8* %_new_gep_86, %_local_stack_end_ptr_
  %_cond2_1_254 = icmp ugt i8* %_new_gep_86, %_parent_stack_end_ptr_
  %_cond2_2_255 = icmp ult i8* %_new_gep_86, %_parent_stack_start_ptr_
  %_cond2_256 = or i1 %_cond2_1_254, %_cond2_2_255
  %_cond4_257 = icmp ule i8* %_pot_address_in_parent_stack_252, %_parent_stack_end_ptr_
  %_cond1_n_cond2_258 = and i1 %_cond1_253, %_cond2_256
  %_cond1_n_cond2_cond3_259 = and i1 %_cond1_n_cond2_258, %_cond4_257
  %.v4 = select i1 %_cond1_n_cond2_cond3_259, i8* %_pot_address_in_parent_stack_252, i8* %_new_gep_86
  %28 = bitcast i8* %.v4 to i64*
  %_new_load_262 = load i64, i64* %28, align 8
  store i64 %_new_load_262, i64* %XAX, align 8, !mcsema_real_eip !88
  %29 = inttoptr i64 %_new_load_262 to i32*, !mcsema_real_eip !89
  %_ptr_bt_265 = inttoptr i64 %_new_load_262 to i8*
  %_offset_above_rbp_266 = sub i64 %_new_load_262, %_local_end_to_int_
  %_pot_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_266
  %_cond1_268 = icmp ugt i8* %_ptr_bt_265, %_local_stack_end_ptr_
  %_cond2_1_269 = icmp ugt i8* %_ptr_bt_265, %_parent_stack_end_ptr_
  %_cond2_2_270 = icmp ult i8* %_ptr_bt_265, %_parent_stack_start_ptr_
  %_cond2_271 = or i1 %_cond2_1_269, %_cond2_2_270
  %_cond4_272 = icmp ule i8* %_pot_address_in_parent_stack_267, %_parent_stack_end_ptr_
  %_cond1_n_cond2_273 = and i1 %_cond1_268, %_cond2_271
  %_cond1_n_cond2_cond3_274 = and i1 %_cond4_272, %_cond1_n_cond2_273
  %_address_in_parent_stack_bt_276 = bitcast i8* %_pot_address_in_parent_stack_267 to i32*
  %_address_in_parent_stack_bt_276. = select i1 %_cond1_n_cond2_cond3_274, i32* %_address_in_parent_stack_bt_276, i32* %29
  %_new_load_277 = load i32, i32* %_address_in_parent_stack_bt_276., align 4
  %30 = add i32 %_new_load_247, %_new_load_277, !mcsema_real_eip !89
  %31 = xor i32 %30, %_new_load_277, !mcsema_real_eip !89
  %32 = xor i32 %31, %_new_load_247, !mcsema_real_eip !89
  %33 = and i32 %32, 16, !mcsema_real_eip !89
  %34 = icmp ne i32 %33, 0, !mcsema_real_eip !89
  store i1 %34, i1* %AF, align 1, !mcsema_real_eip !89
  %35 = icmp slt i32 %30, 0
  store i1 %35, i1* %SF, align 1, !mcsema_real_eip !89
  %36 = icmp eq i32 %30, 0, !mcsema_real_eip !89
  store i1 %36, i1* %ZF, align 1, !mcsema_real_eip !89
  %37 = xor i32 %_new_load_277, -2147483648, !mcsema_real_eip !89
  %38 = xor i32 %37, %_new_load_247, !mcsema_real_eip !89
  %39 = and i32 %31, %38, !mcsema_real_eip !89
  %40 = icmp slt i32 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !89
  %41 = trunc i32 %30 to i8, !mcsema_real_eip !89
  %42 = call i8 @llvm.ctpop.i8(i8 %41), !mcsema_real_eip !89
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  store i1 %44, i1* %PF, align 1, !mcsema_real_eip !89
  %45 = icmp ult i32 %30, %_new_load_277, !mcsema_real_eip !89
  store i1 %45, i1* %CF, align 1, !mcsema_real_eip !89
  %46 = zext i32 %30 to i64, !mcsema_real_eip !89
  store i64 %46, i64* %XSI, align 8, !mcsema_real_eip !89
  %_new_gep_89 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -72
  %_ptr_to_int_278 = ptrtoint i8* %_new_gep_89 to i64
  %_offset_above_rbp_281 = sub i64 %_ptr_to_int_278, %_local_end_to_int_
  %_pot_address_in_parent_stack_282 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_281
  %_cond1_283 = icmp ugt i8* %_new_gep_89, %_local_stack_end_ptr_
  %_cond2_1_284 = icmp ugt i8* %_new_gep_89, %_parent_stack_end_ptr_
  %_cond2_2_285 = icmp ult i8* %_new_gep_89, %_parent_stack_start_ptr_
  %_cond2_286 = or i1 %_cond2_1_284, %_cond2_2_285
  %_cond4_287 = icmp ule i8* %_pot_address_in_parent_stack_282, %_parent_stack_end_ptr_
  %_cond1_n_cond2_288 = and i1 %_cond1_283, %_cond2_286
  %_cond1_n_cond2_cond3_289 = and i1 %_cond1_n_cond2_288, %_cond4_287
  %.v5 = select i1 %_cond1_n_cond2_cond3_289, i8* %_pot_address_in_parent_stack_282, i8* %_new_gep_89
  %47 = bitcast i8* %.v5 to i64*
  %_new_load_292 = load i64, i64* %47, align 8
  store i64 %_new_load_292, i64* %XAX, align 8, !mcsema_real_eip !90
  %48 = inttoptr i64 %_new_load_292 to i32*, !mcsema_real_eip !91
  %_ptr_bt_295 = inttoptr i64 %_new_load_292 to i8*
  %_offset_above_rbp_296 = sub i64 %_new_load_292, %_local_end_to_int_
  %_pot_address_in_parent_stack_297 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_296
  %_cond1_298 = icmp ugt i8* %_ptr_bt_295, %_local_stack_end_ptr_
  %_cond2_1_299 = icmp ugt i8* %_ptr_bt_295, %_parent_stack_end_ptr_
  %_cond2_2_300 = icmp ult i8* %_ptr_bt_295, %_parent_stack_start_ptr_
  %_cond2_301 = or i1 %_cond2_1_299, %_cond2_2_300
  %_cond4_302 = icmp ule i8* %_pot_address_in_parent_stack_297, %_parent_stack_end_ptr_
  %_cond1_n_cond2_303 = and i1 %_cond1_298, %_cond2_301
  %_cond1_n_cond2_cond3_304 = and i1 %_cond4_302, %_cond1_n_cond2_303
  %_address_in_parent_stack_bt_306 = bitcast i8* %_pot_address_in_parent_stack_297 to i32*
  %_address_in_parent_stack_bt_306. = select i1 %_cond1_n_cond2_cond3_304, i32* %_address_in_parent_stack_bt_306, i32* %48
  %_new_load_307 = load i32, i32* %_address_in_parent_stack_bt_306., align 4
  %49 = add i32 %30, %_new_load_307, !mcsema_real_eip !91
  %50 = xor i32 %49, %_new_load_307, !mcsema_real_eip !91
  %51 = xor i32 %50, %30, !mcsema_real_eip !91
  %52 = and i32 %51, 16, !mcsema_real_eip !91
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !91
  store i1 %53, i1* %AF, align 1, !mcsema_real_eip !91
  %54 = icmp slt i32 %49, 0
  store i1 %54, i1* %SF, align 1, !mcsema_real_eip !91
  %55 = icmp eq i32 %49, 0, !mcsema_real_eip !91
  store i1 %55, i1* %ZF, align 1, !mcsema_real_eip !91
  %56 = xor i32 %_new_load_307, -2147483648, !mcsema_real_eip !91
  %57 = xor i32 %56, %30, !mcsema_real_eip !91
  %58 = and i32 %50, %57, !mcsema_real_eip !91
  %59 = icmp slt i32 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !91
  %60 = trunc i32 %49 to i8, !mcsema_real_eip !91
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !91
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  store i1 %63, i1* %PF, align 1, !mcsema_real_eip !91
  %64 = icmp ult i32 %49, %_new_load_307, !mcsema_real_eip !91
  store i1 %64, i1* %CF, align 1, !mcsema_real_eip !91
  %65 = zext i32 %49 to i64, !mcsema_real_eip !91
  store i64 %65, i64* %XSI, align 8, !mcsema_real_eip !91
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -120
  %_ptr_to_int_308 = ptrtoint i8* %_new_gep_92 to i64
  %_offset_above_rbp_311 = sub i64 %_ptr_to_int_308, %_local_end_to_int_
  %_pot_address_in_parent_stack_312 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_311
  %_cond1_313 = icmp ugt i8* %_new_gep_92, %_local_stack_end_ptr_
  %_cond2_1_314 = icmp ugt i8* %_new_gep_92, %_parent_stack_end_ptr_
  %_cond2_2_315 = icmp ult i8* %_new_gep_92, %_parent_stack_start_ptr_
  %_cond2_316 = or i1 %_cond2_1_314, %_cond2_2_315
  %_cond4_317 = icmp ule i8* %_pot_address_in_parent_stack_312, %_parent_stack_end_ptr_
  %_cond1_n_cond2_318 = and i1 %_cond1_313, %_cond2_316
  %_cond1_n_cond2_cond3_319 = and i1 %_cond1_n_cond2_318, %_cond4_317
  %.v6 = select i1 %_cond1_n_cond2_cond3_319, i8* %_pot_address_in_parent_stack_312, i8* %_new_gep_92
  %66 = bitcast i8* %.v6 to i64*
  %_new_load_322 = load i64, i64* %66, align 8
  store i64 %_new_load_322, i64* %XAX, align 8, !mcsema_real_eip !92
  %67 = inttoptr i64 %_new_load_322 to i32*, !mcsema_real_eip !93
  %_ptr_bt_325 = inttoptr i64 %_new_load_322 to i8*
  %_offset_above_rbp_326 = sub i64 %_new_load_322, %_local_end_to_int_
  %_pot_address_in_parent_stack_327 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_326
  %_cond1_328 = icmp ugt i8* %_ptr_bt_325, %_local_stack_end_ptr_
  %_cond2_1_329 = icmp ugt i8* %_ptr_bt_325, %_parent_stack_end_ptr_
  %_cond2_2_330 = icmp ult i8* %_ptr_bt_325, %_parent_stack_start_ptr_
  %_cond2_331 = or i1 %_cond2_1_329, %_cond2_2_330
  %_cond4_332 = icmp ule i8* %_pot_address_in_parent_stack_327, %_parent_stack_end_ptr_
  %_cond1_n_cond2_333 = and i1 %_cond1_328, %_cond2_331
  %_cond1_n_cond2_cond3_334 = and i1 %_cond4_332, %_cond1_n_cond2_333
  %_address_in_parent_stack_bt_336 = bitcast i8* %_pot_address_in_parent_stack_327 to i32*
  %_address_in_parent_stack_bt_336. = select i1 %_cond1_n_cond2_cond3_334, i32* %_address_in_parent_stack_bt_336, i32* %67
  %_new_load_337 = load i32, i32* %_address_in_parent_stack_bt_336., align 4
  %68 = zext i32 %_new_load_337 to i64, !mcsema_real_eip !93
  store i64 %68, i64* %R8, align 8, !mcsema_real_eip !93
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -96
  %_ptr_to_int_338 = ptrtoint i8* %_new_gep_95 to i64
  %_offset_above_rbp_341 = sub i64 %_ptr_to_int_338, %_local_end_to_int_
  %_pot_address_in_parent_stack_342 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_341
  %_cond1_343 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_344 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_345 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_346 = or i1 %_cond2_1_344, %_cond2_2_345
  %_cond4_347 = icmp ule i8* %_pot_address_in_parent_stack_342, %_parent_stack_end_ptr_
  %_cond1_n_cond2_348 = and i1 %_cond1_343, %_cond2_346
  %_cond1_n_cond2_cond3_349 = and i1 %_cond1_n_cond2_348, %_cond4_347
  %.v7 = select i1 %_cond1_n_cond2_cond3_349, i8* %_pot_address_in_parent_stack_342, i8* %_new_gep_95
  %69 = bitcast i8* %.v7 to i64*
  %_new_load_352 = load i64, i64* %69, align 8
  store i64 %_new_load_352, i64* %XCX, align 8, !mcsema_real_eip !94
  %70 = inttoptr i64 %_new_load_352 to i32*, !mcsema_real_eip !95
  %_ptr_bt_355 = inttoptr i64 %_new_load_352 to i8*
  %_offset_above_rbp_356 = sub i64 %_new_load_352, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_ptr_bt_355, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_ptr_bt_355, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_ptr_bt_355, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond4_362, %_cond1_n_cond2_363
  %_address_in_parent_stack_bt_366 = bitcast i8* %_pot_address_in_parent_stack_357 to i32*
  %_address_in_parent_stack_bt_366. = select i1 %_cond1_n_cond2_cond3_364, i32* %_address_in_parent_stack_bt_366, i32* %70
  %_new_load_367 = load i32, i32* %_address_in_parent_stack_bt_366., align 4
  %71 = add i32 %_new_load_337, %_new_load_367, !mcsema_real_eip !95
  %72 = xor i32 %71, %_new_load_367, !mcsema_real_eip !95
  %73 = xor i32 %72, %_new_load_337, !mcsema_real_eip !95
  %74 = and i32 %73, 16, !mcsema_real_eip !95
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !95
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !95
  %76 = icmp slt i32 %71, 0
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !95
  %77 = icmp eq i32 %71, 0, !mcsema_real_eip !95
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !95
  %78 = xor i32 %_new_load_367, -2147483648, !mcsema_real_eip !95
  %79 = xor i32 %78, %_new_load_337, !mcsema_real_eip !95
  %80 = and i32 %72, %79, !mcsema_real_eip !95
  %81 = icmp slt i32 %80, 0
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !95
  %82 = trunc i32 %71 to i8, !mcsema_real_eip !95
  %83 = call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !95
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !95
  %86 = icmp ult i32 %71, %_new_load_367, !mcsema_real_eip !95
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !95
  %87 = zext i32 %71 to i64, !mcsema_real_eip !95
  store i64 %87, i64* %R8, align 8, !mcsema_real_eip !95
  %_new_gep_98 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -104
  %_ptr_to_int_368 = ptrtoint i8* %_new_gep_98 to i64
  %_offset_above_rbp_371 = sub i64 %_ptr_to_int_368, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_new_gep_98, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_new_gep_98, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_new_gep_98, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  %.v8 = select i1 %_cond1_n_cond2_cond3_379, i8* %_pot_address_in_parent_stack_372, i8* %_new_gep_98
  %88 = bitcast i8* %.v8 to i64*
  %_new_load_382 = load i64, i64* %88, align 8
  store i64 %_new_load_382, i64* %XCX, align 8, !mcsema_real_eip !96
  %89 = inttoptr i64 %_new_load_382 to i32*, !mcsema_real_eip !97
  %_ptr_bt_385 = inttoptr i64 %_new_load_382 to i8*
  %_offset_above_rbp_386 = sub i64 %_new_load_382, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_ptr_bt_385, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_ptr_bt_385, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_ptr_bt_385, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond4_392, %_cond1_n_cond2_393
  %_address_in_parent_stack_bt_396 = bitcast i8* %_pot_address_in_parent_stack_387 to i32*
  %_address_in_parent_stack_bt_396. = select i1 %_cond1_n_cond2_cond3_394, i32* %_address_in_parent_stack_bt_396, i32* %89
  %_new_load_397 = load i32, i32* %_address_in_parent_stack_bt_396., align 4
  %90 = add i32 %71, %_new_load_397, !mcsema_real_eip !97
  %91 = zext i32 %90 to i64, !mcsema_real_eip !97
  store i64 %91, i64* %R8, align 8, !mcsema_real_eip !97
  %ESI_val.165 = load i32, i32* %ESI.112, align 4, !mcsema_real_eip !98
  %92 = add i32 %90, %ESI_val.165, !mcsema_real_eip !98
  %93 = xor i32 %92, %ESI_val.165, !mcsema_real_eip !98
  %94 = xor i32 %93, %90, !mcsema_real_eip !98
  %95 = and i32 %94, 16, !mcsema_real_eip !98
  %96 = icmp ne i32 %95, 0, !mcsema_real_eip !98
  store i1 %96, i1* %AF, align 1, !mcsema_real_eip !98
  %97 = icmp slt i32 %92, 0
  store i1 %97, i1* %SF, align 1, !mcsema_real_eip !98
  %98 = icmp eq i32 %92, 0, !mcsema_real_eip !98
  store i1 %98, i1* %ZF, align 1, !mcsema_real_eip !98
  %99 = xor i32 %ESI_val.165, -2147483648, !mcsema_real_eip !98
  %100 = xor i32 %99, %90, !mcsema_real_eip !98
  %101 = and i32 %93, %100, !mcsema_real_eip !98
  %102 = icmp slt i32 %101, 0
  store i1 %102, i1* %OF, align 1, !mcsema_real_eip !98
  %103 = trunc i32 %92 to i8, !mcsema_real_eip !98
  %104 = call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !98
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  store i1 %106, i1* %PF, align 1, !mcsema_real_eip !98
  %107 = icmp ult i32 %92, %ESI_val.165, !mcsema_real_eip !98
  store i1 %107, i1* %CF, align 1, !mcsema_real_eip !98
  %108 = zext i32 %92 to i64, !mcsema_real_eip !98
  store i64 %108, i64* %XSI, align 8, !mcsema_real_eip !98
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_82, i64 -112
  %_ptr_to_int_398 = ptrtoint i8* %_new_gep_101 to i64
  %_offset_above_rbp_401 = sub i64 %_ptr_to_int_398, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_new_gep_101, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_new_gep_101, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_new_gep_101, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  %.v9 = select i1 %_cond1_n_cond2_cond3_409, i8* %_pot_address_in_parent_stack_402, i8* %_new_gep_101
  %109 = bitcast i8* %.v9 to i64*
  %_new_load_412 = load i64, i64* %109, align 8
  store i64 %_new_load_412, i64* %XCX, align 8, !mcsema_real_eip !99
  %110 = inttoptr i64 %_new_load_412 to i32*, !mcsema_real_eip !100
  store i32 %92, i32* %110, align 4, !mcsema_real_eip !100
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -36
  %111 = ptrtoint i8* %_new_gep_104 to i64
  %_offset_above_rbp_416 = sub i64 %111, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  %_address_in_parent_stack_bt_426..v = select i1 %_cond1_n_cond2_cond3_424, i8* %_pot_address_in_parent_stack_417, i8* %_new_gep_104
  %_address_in_parent_stack_bt_426. = bitcast i8* %_address_in_parent_stack_bt_426..v to i32*
  %_new_load_427 = load i32, i32* %_address_in_parent_stack_bt_426., align 4
  %112 = zext i32 %_new_load_427 to i64, !mcsema_real_eip !101
  store i64 %112, i64* %XSI, align 8, !mcsema_real_eip !101
  %_new_gep_107 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -64
  %_ptr_to_int_428 = ptrtoint i8* %_new_gep_107 to i64
  %_offset_above_rbp_431 = sub i64 %_ptr_to_int_428, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_new_gep_107, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_new_gep_107, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_new_gep_107, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  %.v10 = select i1 %_cond1_n_cond2_cond3_439, i8* %_pot_address_in_parent_stack_432, i8* %_new_gep_107
  %113 = bitcast i8* %.v10 to i64*
  %_new_load_442 = load i64, i64* %113, align 8
  store i64 %_new_load_442, i64* %XCX, align 8, !mcsema_real_eip !102
  %114 = add i64 %_new_load_442, 4, !mcsema_real_eip !103
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !103
  %_ptr_bt_445 = inttoptr i64 %114 to i8*
  %_offset_above_rbp_446 = sub i64 %114, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_ptr_bt_445, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_ptr_bt_445, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_ptr_bt_445, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond4_452, %_cond1_n_cond2_453
  %_address_in_parent_stack_bt_456 = bitcast i8* %_pot_address_in_parent_stack_447 to i32*
  %_address_in_parent_stack_bt_456. = select i1 %_cond1_n_cond2_cond3_454, i32* %_address_in_parent_stack_bt_456, i32* %115
  %_new_load_457 = load i32, i32* %_address_in_parent_stack_bt_456., align 4
  %116 = add i32 %_new_load_427, %_new_load_457, !mcsema_real_eip !103
  %117 = xor i32 %116, %_new_load_457, !mcsema_real_eip !103
  %118 = xor i32 %117, %_new_load_427, !mcsema_real_eip !103
  %119 = and i32 %118, 16, !mcsema_real_eip !103
  %120 = icmp ne i32 %119, 0, !mcsema_real_eip !103
  store i1 %120, i1* %AF, align 1, !mcsema_real_eip !103
  %121 = icmp slt i32 %116, 0
  store i1 %121, i1* %SF, align 1, !mcsema_real_eip !103
  %122 = icmp eq i32 %116, 0, !mcsema_real_eip !103
  store i1 %122, i1* %ZF, align 1, !mcsema_real_eip !103
  %123 = xor i32 %_new_load_457, -2147483648, !mcsema_real_eip !103
  %124 = xor i32 %123, %_new_load_427, !mcsema_real_eip !103
  %125 = and i32 %117, %124, !mcsema_real_eip !103
  %126 = icmp slt i32 %125, 0
  store i1 %126, i1* %OF, align 1, !mcsema_real_eip !103
  %127 = trunc i32 %116 to i8, !mcsema_real_eip !103
  %128 = call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !103
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  store i1 %130, i1* %PF, align 1, !mcsema_real_eip !103
  %131 = icmp ult i32 %116, %_new_load_457, !mcsema_real_eip !103
  store i1 %131, i1* %CF, align 1, !mcsema_real_eip !103
  %132 = zext i32 %116 to i64, !mcsema_real_eip !103
  store i64 %132, i64* %XSI, align 8, !mcsema_real_eip !103
  %_new_gep_110 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -72
  %_ptr_to_int_458 = ptrtoint i8* %_new_gep_110 to i64
  %_offset_above_rbp_461 = sub i64 %_ptr_to_int_458, %_local_end_to_int_
  %_pot_address_in_parent_stack_462 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_461
  %_cond1_463 = icmp ugt i8* %_new_gep_110, %_local_stack_end_ptr_
  %_cond2_1_464 = icmp ugt i8* %_new_gep_110, %_parent_stack_end_ptr_
  %_cond2_2_465 = icmp ult i8* %_new_gep_110, %_parent_stack_start_ptr_
  %_cond2_466 = or i1 %_cond2_1_464, %_cond2_2_465
  %_cond4_467 = icmp ule i8* %_pot_address_in_parent_stack_462, %_parent_stack_end_ptr_
  %_cond1_n_cond2_468 = and i1 %_cond1_463, %_cond2_466
  %_cond1_n_cond2_cond3_469 = and i1 %_cond1_n_cond2_468, %_cond4_467
  %.v11 = select i1 %_cond1_n_cond2_cond3_469, i8* %_pot_address_in_parent_stack_462, i8* %_new_gep_110
  %133 = bitcast i8* %.v11 to i64*
  %_new_load_472 = load i64, i64* %133, align 8
  store i64 %_new_load_472, i64* %XCX, align 8, !mcsema_real_eip !104
  %134 = add i64 %_new_load_472, 4, !mcsema_real_eip !105
  %135 = inttoptr i64 %134 to i32*, !mcsema_real_eip !105
  %_ptr_bt_475 = inttoptr i64 %134 to i8*
  %_offset_above_rbp_476 = sub i64 %134, %_local_end_to_int_
  %_pot_address_in_parent_stack_477 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_476
  %_cond1_478 = icmp ugt i8* %_ptr_bt_475, %_local_stack_end_ptr_
  %_cond2_1_479 = icmp ugt i8* %_ptr_bt_475, %_parent_stack_end_ptr_
  %_cond2_2_480 = icmp ult i8* %_ptr_bt_475, %_parent_stack_start_ptr_
  %_cond2_481 = or i1 %_cond2_1_479, %_cond2_2_480
  %_cond4_482 = icmp ule i8* %_pot_address_in_parent_stack_477, %_parent_stack_end_ptr_
  %_cond1_n_cond2_483 = and i1 %_cond1_478, %_cond2_481
  %_cond1_n_cond2_cond3_484 = and i1 %_cond4_482, %_cond1_n_cond2_483
  %_address_in_parent_stack_bt_486 = bitcast i8* %_pot_address_in_parent_stack_477 to i32*
  %_address_in_parent_stack_bt_486. = select i1 %_cond1_n_cond2_cond3_484, i32* %_address_in_parent_stack_bt_486, i32* %135
  %_new_load_487 = load i32, i32* %_address_in_parent_stack_bt_486., align 4
  %136 = add i32 %116, %_new_load_487, !mcsema_real_eip !105
  %137 = xor i32 %136, %_new_load_487, !mcsema_real_eip !105
  %138 = xor i32 %137, %116, !mcsema_real_eip !105
  %139 = and i32 %138, 16, !mcsema_real_eip !105
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !105
  store i1 %140, i1* %AF, align 1, !mcsema_real_eip !105
  %141 = icmp slt i32 %136, 0
  store i1 %141, i1* %SF, align 1, !mcsema_real_eip !105
  %142 = icmp eq i32 %136, 0, !mcsema_real_eip !105
  store i1 %142, i1* %ZF, align 1, !mcsema_real_eip !105
  %143 = xor i32 %_new_load_487, -2147483648, !mcsema_real_eip !105
  %144 = xor i32 %143, %116, !mcsema_real_eip !105
  %145 = and i32 %137, %144, !mcsema_real_eip !105
  %146 = icmp slt i32 %145, 0
  store i1 %146, i1* %OF, align 1, !mcsema_real_eip !105
  %147 = trunc i32 %136 to i8, !mcsema_real_eip !105
  %148 = call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !105
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  store i1 %150, i1* %PF, align 1, !mcsema_real_eip !105
  %151 = icmp ult i32 %136, %_new_load_487, !mcsema_real_eip !105
  store i1 %151, i1* %CF, align 1, !mcsema_real_eip !105
  %152 = zext i32 %136 to i64, !mcsema_real_eip !105
  store i64 %152, i64* %XSI, align 8, !mcsema_real_eip !105
  %RAX_val.181 = load i64, i64* %XAX, align 8, !mcsema_real_eip !106
  %153 = add i64 %RAX_val.181, 4, !mcsema_real_eip !106
  %154 = inttoptr i64 %153 to i32*, !mcsema_real_eip !106
  %_ptr_bt_490 = inttoptr i64 %153 to i8*
  %_offset_above_rbp_491 = sub i64 %153, %_local_end_to_int_
  %_pot_address_in_parent_stack_492 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_491
  %_cond1_493 = icmp ugt i8* %_ptr_bt_490, %_local_stack_end_ptr_
  %_cond2_1_494 = icmp ugt i8* %_ptr_bt_490, %_parent_stack_end_ptr_
  %_cond2_2_495 = icmp ult i8* %_ptr_bt_490, %_parent_stack_start_ptr_
  %_cond2_496 = or i1 %_cond2_1_494, %_cond2_2_495
  %_cond4_497 = icmp ule i8* %_pot_address_in_parent_stack_492, %_parent_stack_end_ptr_
  %_cond1_n_cond2_498 = and i1 %_cond1_493, %_cond2_496
  %_cond1_n_cond2_cond3_499 = and i1 %_cond4_497, %_cond1_n_cond2_498
  %_address_in_parent_stack_bt_501 = bitcast i8* %_pot_address_in_parent_stack_492 to i32*
  %155 = select i1 %_cond1_n_cond2_cond3_499, i32* %_address_in_parent_stack_bt_501, i32* %154
  %_new_load_502 = load i32, i32* %155, align 4
  %156 = zext i32 %_new_load_502 to i64, !mcsema_real_eip !106
  store i64 %156, i64* %R8, align 8, !mcsema_real_eip !106
  %_new_gep_113 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -96
  %_ptr_to_int_503 = ptrtoint i8* %_new_gep_113 to i64
  %_offset_above_rbp_506 = sub i64 %_ptr_to_int_503, %_local_end_to_int_
  %_pot_address_in_parent_stack_507 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_506
  %_cond1_508 = icmp ugt i8* %_new_gep_113, %_local_stack_end_ptr_
  %_cond2_1_509 = icmp ugt i8* %_new_gep_113, %_parent_stack_end_ptr_
  %_cond2_2_510 = icmp ult i8* %_new_gep_113, %_parent_stack_start_ptr_
  %_cond2_511 = or i1 %_cond2_1_509, %_cond2_2_510
  %_cond4_512 = icmp ule i8* %_pot_address_in_parent_stack_507, %_parent_stack_end_ptr_
  %_cond1_n_cond2_513 = and i1 %_cond1_508, %_cond2_511
  %_cond1_n_cond2_cond3_514 = and i1 %_cond1_n_cond2_513, %_cond4_512
  %_address_in_parent_stack_bt_516._allin_new_bt_114.v = select i1 %_cond1_n_cond2_cond3_514, i8* %_pot_address_in_parent_stack_507, i8* %_new_gep_113
  %_address_in_parent_stack_bt_516._allin_new_bt_114 = bitcast i8* %_address_in_parent_stack_bt_516._allin_new_bt_114.v to i64*
  %_new_load_517 = load i64, i64* %_address_in_parent_stack_bt_516._allin_new_bt_114, align 8
  store i64 %_new_load_517, i64* %XCX, align 8, !mcsema_real_eip !107
  %157 = add i64 %_new_load_517, 4, !mcsema_real_eip !108
  %158 = inttoptr i64 %157 to i32*, !mcsema_real_eip !108
  %_ptr_bt_520 = inttoptr i64 %157 to i8*
  %_offset_above_rbp_521 = sub i64 %157, %_local_end_to_int_
  %_pot_address_in_parent_stack_522 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_521
  %_cond1_523 = icmp ugt i8* %_ptr_bt_520, %_local_stack_end_ptr_
  %_cond2_1_524 = icmp ugt i8* %_ptr_bt_520, %_parent_stack_end_ptr_
  %_cond2_2_525 = icmp ult i8* %_ptr_bt_520, %_parent_stack_start_ptr_
  %_cond2_526 = or i1 %_cond2_1_524, %_cond2_2_525
  %_cond4_527 = icmp ule i8* %_pot_address_in_parent_stack_522, %_parent_stack_end_ptr_
  %_cond1_n_cond2_528 = and i1 %_cond1_523, %_cond2_526
  %_cond1_n_cond2_cond3_529 = and i1 %_cond4_527, %_cond1_n_cond2_528
  %_address_in_parent_stack_bt_531 = bitcast i8* %_pot_address_in_parent_stack_522 to i32*
  %159 = select i1 %_cond1_n_cond2_cond3_529, i32* %_address_in_parent_stack_bt_531, i32* %158
  %_new_load_532 = load i32, i32* %159, align 4
  %160 = add i32 %_new_load_502, %_new_load_532, !mcsema_real_eip !108
  %161 = xor i32 %160, %_new_load_532, !mcsema_real_eip !108
  %162 = xor i32 %161, %_new_load_502, !mcsema_real_eip !108
  %163 = and i32 %162, 16, !mcsema_real_eip !108
  %164 = icmp ne i32 %163, 0, !mcsema_real_eip !108
  store i1 %164, i1* %AF, align 1, !mcsema_real_eip !108
  %165 = icmp slt i32 %160, 0
  store i1 %165, i1* %SF, align 1, !mcsema_real_eip !108
  %166 = icmp eq i32 %160, 0, !mcsema_real_eip !108
  store i1 %166, i1* %ZF, align 1, !mcsema_real_eip !108
  %167 = xor i32 %_new_load_532, -2147483648, !mcsema_real_eip !108
  %168 = xor i32 %167, %_new_load_502, !mcsema_real_eip !108
  %169 = and i32 %161, %168, !mcsema_real_eip !108
  %170 = icmp slt i32 %169, 0
  store i1 %170, i1* %OF, align 1, !mcsema_real_eip !108
  %171 = trunc i32 %160 to i8, !mcsema_real_eip !108
  %172 = call i8 @llvm.ctpop.i8(i8 %171), !mcsema_real_eip !108
  %173 = and i8 %172, 1
  %174 = icmp eq i8 %173, 0
  store i1 %174, i1* %PF, align 1, !mcsema_real_eip !108
  %175 = icmp ult i32 %160, %_new_load_532, !mcsema_real_eip !108
  store i1 %175, i1* %CF, align 1, !mcsema_real_eip !108
  %176 = zext i32 %160 to i64, !mcsema_real_eip !108
  store i64 %176, i64* %R8, align 8, !mcsema_real_eip !108
  %_new_gep_116 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -104
  %_ptr_to_int_533 = ptrtoint i8* %_new_gep_116 to i64
  %_offset_above_rbp_536 = sub i64 %_ptr_to_int_533, %_local_end_to_int_
  %_pot_address_in_parent_stack_537 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_536
  %_cond1_538 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_539 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_540 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_541 = or i1 %_cond2_1_539, %_cond2_2_540
  %_cond4_542 = icmp ule i8* %_pot_address_in_parent_stack_537, %_parent_stack_end_ptr_
  %_cond1_n_cond2_543 = and i1 %_cond1_538, %_cond2_541
  %_cond1_n_cond2_cond3_544 = and i1 %_cond1_n_cond2_543, %_cond4_542
  %_address_in_parent_stack_bt_546._allin_new_bt_117.v = select i1 %_cond1_n_cond2_cond3_544, i8* %_pot_address_in_parent_stack_537, i8* %_new_gep_116
  %_address_in_parent_stack_bt_546._allin_new_bt_117 = bitcast i8* %_address_in_parent_stack_bt_546._allin_new_bt_117.v to i64*
  %_new_load_547 = load i64, i64* %_address_in_parent_stack_bt_546._allin_new_bt_117, align 8
  store i64 %_new_load_547, i64* %XCX, align 8, !mcsema_real_eip !109
  %177 = add i64 %_new_load_547, 4, !mcsema_real_eip !110
  %178 = inttoptr i64 %177 to i32*, !mcsema_real_eip !110
  %_ptr_bt_550 = inttoptr i64 %177 to i8*
  %_offset_above_rbp_551 = sub i64 %177, %_local_end_to_int_
  %_pot_address_in_parent_stack_552 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_551
  %_cond1_553 = icmp ugt i8* %_ptr_bt_550, %_local_stack_end_ptr_
  %_cond2_1_554 = icmp ugt i8* %_ptr_bt_550, %_parent_stack_end_ptr_
  %_cond2_2_555 = icmp ult i8* %_ptr_bt_550, %_parent_stack_start_ptr_
  %_cond2_556 = or i1 %_cond2_1_554, %_cond2_2_555
  %_cond4_557 = icmp ule i8* %_pot_address_in_parent_stack_552, %_parent_stack_end_ptr_
  %_cond1_n_cond2_558 = and i1 %_cond1_553, %_cond2_556
  %_cond1_n_cond2_cond3_559 = and i1 %_cond4_557, %_cond1_n_cond2_558
  %_address_in_parent_stack_bt_561 = bitcast i8* %_pot_address_in_parent_stack_552 to i32*
  %179 = select i1 %_cond1_n_cond2_cond3_559, i32* %_address_in_parent_stack_bt_561, i32* %178
  %_new_load_562 = load i32, i32* %179, align 4
  %180 = add i32 %160, %_new_load_562, !mcsema_real_eip !110
  %181 = zext i32 %180 to i64, !mcsema_real_eip !110
  store i64 %181, i64* %R8, align 8, !mcsema_real_eip !110
  %ESI_val.191 = load i32, i32* %ESI.112, align 4, !mcsema_real_eip !111
  %182 = add i32 %180, %ESI_val.191, !mcsema_real_eip !111
  %183 = xor i32 %182, %ESI_val.191, !mcsema_real_eip !111
  %184 = xor i32 %183, %180, !mcsema_real_eip !111
  %185 = and i32 %184, 16, !mcsema_real_eip !111
  %186 = icmp ne i32 %185, 0, !mcsema_real_eip !111
  store i1 %186, i1* %AF, align 1, !mcsema_real_eip !111
  %187 = icmp slt i32 %182, 0
  store i1 %187, i1* %SF, align 1, !mcsema_real_eip !111
  %188 = icmp eq i32 %182, 0, !mcsema_real_eip !111
  store i1 %188, i1* %ZF, align 1, !mcsema_real_eip !111
  %189 = xor i32 %ESI_val.191, -2147483648, !mcsema_real_eip !111
  %190 = xor i32 %189, %180, !mcsema_real_eip !111
  %191 = and i32 %183, %190, !mcsema_real_eip !111
  %192 = icmp slt i32 %191, 0
  store i1 %192, i1* %OF, align 1, !mcsema_real_eip !111
  %193 = trunc i32 %182 to i8, !mcsema_real_eip !111
  %194 = call i8 @llvm.ctpop.i8(i8 %193), !mcsema_real_eip !111
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  store i1 %196, i1* %PF, align 1, !mcsema_real_eip !111
  %197 = icmp ult i32 %182, %ESI_val.191, !mcsema_real_eip !111
  store i1 %197, i1* %CF, align 1, !mcsema_real_eip !111
  %198 = zext i32 %182 to i64, !mcsema_real_eip !111
  store i64 %198, i64* %XSI, align 8, !mcsema_real_eip !111
  %_new_gep_119 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -112
  %_ptr_to_int_563 = ptrtoint i8* %_new_gep_119 to i64
  %_offset_above_rbp_566 = sub i64 %_ptr_to_int_563, %_local_end_to_int_
  %_pot_address_in_parent_stack_567 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_566
  %_cond1_568 = icmp ugt i8* %_new_gep_119, %_local_stack_end_ptr_
  %_cond2_1_569 = icmp ugt i8* %_new_gep_119, %_parent_stack_end_ptr_
  %_cond2_2_570 = icmp ult i8* %_new_gep_119, %_parent_stack_start_ptr_
  %_cond2_571 = or i1 %_cond2_1_569, %_cond2_2_570
  %_cond4_572 = icmp ule i8* %_pot_address_in_parent_stack_567, %_parent_stack_end_ptr_
  %_cond1_n_cond2_573 = and i1 %_cond1_568, %_cond2_571
  %_cond1_n_cond2_cond3_574 = and i1 %_cond1_n_cond2_573, %_cond4_572
  %_address_in_parent_stack_bt_576._allin_new_bt_120.v = select i1 %_cond1_n_cond2_cond3_574, i8* %_pot_address_in_parent_stack_567, i8* %_new_gep_119
  %_address_in_parent_stack_bt_576._allin_new_bt_120 = bitcast i8* %_address_in_parent_stack_bt_576._allin_new_bt_120.v to i64*
  %_new_load_577 = load i64, i64* %_address_in_parent_stack_bt_576._allin_new_bt_120, align 8
  store i64 %_new_load_577, i64* %XCX, align 8, !mcsema_real_eip !112
  %199 = add i64 %_new_load_577, 4, !mcsema_real_eip !113
  %200 = inttoptr i64 %199 to i32*, !mcsema_real_eip !113
  store i32 %182, i32* %200, align 4, !mcsema_real_eip !113
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_122 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -32
  %201 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_581 = sub i64 %201, %_local_end_to_int_
  %_pot_address_in_parent_stack_582 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_581
  %_cond1_583 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_584 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_585 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_586 = or i1 %_cond2_1_584, %_cond2_2_585
  %_cond4_587 = icmp ule i8* %_pot_address_in_parent_stack_582, %_parent_stack_end_ptr_
  %_cond1_n_cond2_588 = and i1 %_cond1_583, %_cond2_586
  %_cond1_n_cond2_cond3_589 = and i1 %_cond1_n_cond2_588, %_cond4_587
  %.v12 = select i1 %_cond1_n_cond2_cond3_589, i8* %_pot_address_in_parent_stack_582, i8* %_new_gep_122
  %202 = bitcast i8* %.v12 to i32*
  %_new_load_592 = load i32, i32* %202, align 4
  %203 = zext i32 %_new_load_592 to i64, !mcsema_real_eip !114
  store i64 %203, i64* %XSI, align 8, !mcsema_real_eip !114
  %_new_gep_125 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -64
  %_ptr_to_int_593 = ptrtoint i8* %_new_gep_125 to i64
  %_offset_above_rbp_596 = sub i64 %_ptr_to_int_593, %_local_end_to_int_
  %_pot_address_in_parent_stack_597 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_596
  %_cond1_598 = icmp ugt i8* %_new_gep_125, %_local_stack_end_ptr_
  %_cond2_1_599 = icmp ugt i8* %_new_gep_125, %_parent_stack_end_ptr_
  %_cond2_2_600 = icmp ult i8* %_new_gep_125, %_parent_stack_start_ptr_
  %_cond2_601 = or i1 %_cond2_1_599, %_cond2_2_600
  %_cond4_602 = icmp ule i8* %_pot_address_in_parent_stack_597, %_parent_stack_end_ptr_
  %_cond1_n_cond2_603 = and i1 %_cond1_598, %_cond2_601
  %_cond1_n_cond2_cond3_604 = and i1 %_cond1_n_cond2_603, %_cond4_602
  %_address_in_parent_stack_bt_606._allin_new_bt_126.v = select i1 %_cond1_n_cond2_cond3_604, i8* %_pot_address_in_parent_stack_597, i8* %_new_gep_125
  %_address_in_parent_stack_bt_606._allin_new_bt_126 = bitcast i8* %_address_in_parent_stack_bt_606._allin_new_bt_126.v to i64*
  %_new_load_607 = load i64, i64* %_address_in_parent_stack_bt_606._allin_new_bt_126, align 8
  store i64 %_new_load_607, i64* %XCX, align 8, !mcsema_real_eip !115
  %204 = add i64 %_new_load_607, 8, !mcsema_real_eip !116
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !116
  %_ptr_bt_610 = inttoptr i64 %204 to i8*
  %_offset_above_rbp_611 = sub i64 %204, %_local_end_to_int_
  %_pot_address_in_parent_stack_612 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_611
  %_cond1_613 = icmp ugt i8* %_ptr_bt_610, %_local_stack_end_ptr_
  %_cond2_1_614 = icmp ugt i8* %_ptr_bt_610, %_parent_stack_end_ptr_
  %_cond2_2_615 = icmp ult i8* %_ptr_bt_610, %_parent_stack_start_ptr_
  %_cond2_616 = or i1 %_cond2_1_614, %_cond2_2_615
  %_cond4_617 = icmp ule i8* %_pot_address_in_parent_stack_612, %_parent_stack_end_ptr_
  %_cond1_n_cond2_618 = and i1 %_cond1_613, %_cond2_616
  %_cond1_n_cond2_cond3_619 = and i1 %_cond4_617, %_cond1_n_cond2_618
  %_address_in_parent_stack_bt_621 = bitcast i8* %_pot_address_in_parent_stack_612 to i32*
  %206 = select i1 %_cond1_n_cond2_cond3_619, i32* %_address_in_parent_stack_bt_621, i32* %205
  %_new_load_622 = load i32, i32* %206, align 4
  %207 = add i32 %_new_load_592, %_new_load_622, !mcsema_real_eip !116
  %208 = xor i32 %207, %_new_load_622, !mcsema_real_eip !116
  %209 = xor i32 %208, %_new_load_592, !mcsema_real_eip !116
  %210 = and i32 %209, 16, !mcsema_real_eip !116
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !116
  store i1 %211, i1* %AF, align 1, !mcsema_real_eip !116
  %212 = icmp slt i32 %207, 0
  store i1 %212, i1* %SF, align 1, !mcsema_real_eip !116
  %213 = icmp eq i32 %207, 0, !mcsema_real_eip !116
  store i1 %213, i1* %ZF, align 1, !mcsema_real_eip !116
  %214 = xor i32 %_new_load_622, -2147483648, !mcsema_real_eip !116
  %215 = xor i32 %214, %_new_load_592, !mcsema_real_eip !116
  %216 = and i32 %208, %215, !mcsema_real_eip !116
  %217 = icmp slt i32 %216, 0
  store i1 %217, i1* %OF, align 1, !mcsema_real_eip !116
  %218 = trunc i32 %207 to i8, !mcsema_real_eip !116
  %219 = call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !116
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !116
  %222 = icmp ult i32 %207, %_new_load_622, !mcsema_real_eip !116
  store i1 %222, i1* %CF, align 1, !mcsema_real_eip !116
  %223 = zext i32 %207 to i64, !mcsema_real_eip !116
  store i64 %223, i64* %XSI, align 8, !mcsema_real_eip !116
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -72
  %_ptr_to_int_623 = ptrtoint i8* %_new_gep_128 to i64
  %_offset_above_rbp_626 = sub i64 %_ptr_to_int_623, %_local_end_to_int_
  %_pot_address_in_parent_stack_627 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_626
  %_cond1_628 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_629 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_630 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_631 = or i1 %_cond2_1_629, %_cond2_2_630
  %_cond4_632 = icmp ule i8* %_pot_address_in_parent_stack_627, %_parent_stack_end_ptr_
  %_cond1_n_cond2_633 = and i1 %_cond1_628, %_cond2_631
  %_cond1_n_cond2_cond3_634 = and i1 %_cond1_n_cond2_633, %_cond4_632
  %_address_in_parent_stack_bt_636._allin_new_bt_129.v = select i1 %_cond1_n_cond2_cond3_634, i8* %_pot_address_in_parent_stack_627, i8* %_new_gep_128
  %_address_in_parent_stack_bt_636._allin_new_bt_129 = bitcast i8* %_address_in_parent_stack_bt_636._allin_new_bt_129.v to i64*
  %_new_load_637 = load i64, i64* %_address_in_parent_stack_bt_636._allin_new_bt_129, align 8
  store i64 %_new_load_637, i64* %XCX, align 8, !mcsema_real_eip !117
  %224 = add i64 %_new_load_637, 8, !mcsema_real_eip !118
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !118
  %_ptr_bt_640 = inttoptr i64 %224 to i8*
  %_offset_above_rbp_641 = sub i64 %224, %_local_end_to_int_
  %_pot_address_in_parent_stack_642 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_641
  %_cond1_643 = icmp ugt i8* %_ptr_bt_640, %_local_stack_end_ptr_
  %_cond2_1_644 = icmp ugt i8* %_ptr_bt_640, %_parent_stack_end_ptr_
  %_cond2_2_645 = icmp ult i8* %_ptr_bt_640, %_parent_stack_start_ptr_
  %_cond2_646 = or i1 %_cond2_1_644, %_cond2_2_645
  %_cond4_647 = icmp ule i8* %_pot_address_in_parent_stack_642, %_parent_stack_end_ptr_
  %_cond1_n_cond2_648 = and i1 %_cond1_643, %_cond2_646
  %_cond1_n_cond2_cond3_649 = and i1 %_cond4_647, %_cond1_n_cond2_648
  %_address_in_parent_stack_bt_651 = bitcast i8* %_pot_address_in_parent_stack_642 to i32*
  %226 = select i1 %_cond1_n_cond2_cond3_649, i32* %_address_in_parent_stack_bt_651, i32* %225
  %_new_load_652 = load i32, i32* %226, align 4
  %227 = add i32 %207, %_new_load_652, !mcsema_real_eip !118
  %228 = xor i32 %227, %_new_load_652, !mcsema_real_eip !118
  %229 = xor i32 %228, %207, !mcsema_real_eip !118
  %230 = and i32 %229, 16, !mcsema_real_eip !118
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !118
  store i1 %231, i1* %AF, align 1, !mcsema_real_eip !118
  %232 = icmp slt i32 %227, 0
  store i1 %232, i1* %SF, align 1, !mcsema_real_eip !118
  %233 = icmp eq i32 %227, 0, !mcsema_real_eip !118
  store i1 %233, i1* %ZF, align 1, !mcsema_real_eip !118
  %234 = xor i32 %_new_load_652, -2147483648, !mcsema_real_eip !118
  %235 = xor i32 %234, %207, !mcsema_real_eip !118
  %236 = and i32 %228, %235, !mcsema_real_eip !118
  %237 = icmp slt i32 %236, 0
  store i1 %237, i1* %OF, align 1, !mcsema_real_eip !118
  %238 = trunc i32 %227 to i8, !mcsema_real_eip !118
  %239 = call i8 @llvm.ctpop.i8(i8 %238), !mcsema_real_eip !118
  %240 = and i8 %239, 1
  %241 = icmp eq i8 %240, 0
  store i1 %241, i1* %PF, align 1, !mcsema_real_eip !118
  %242 = icmp ult i32 %227, %_new_load_652, !mcsema_real_eip !118
  store i1 %242, i1* %CF, align 1, !mcsema_real_eip !118
  %243 = zext i32 %227 to i64, !mcsema_real_eip !118
  store i64 %243, i64* %XSI, align 8, !mcsema_real_eip !118
  %RAX_val.207 = load i64, i64* %XAX, align 8, !mcsema_real_eip !119
  %244 = add i64 %RAX_val.207, 8, !mcsema_real_eip !119
  %245 = inttoptr i64 %244 to i32*, !mcsema_real_eip !119
  %_ptr_bt_655 = inttoptr i64 %244 to i8*
  %_offset_above_rbp_656 = sub i64 %244, %_local_end_to_int_
  %_pot_address_in_parent_stack_657 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_656
  %_cond1_658 = icmp ugt i8* %_ptr_bt_655, %_local_stack_end_ptr_
  %_cond2_1_659 = icmp ugt i8* %_ptr_bt_655, %_parent_stack_end_ptr_
  %_cond2_2_660 = icmp ult i8* %_ptr_bt_655, %_parent_stack_start_ptr_
  %_cond2_661 = or i1 %_cond2_1_659, %_cond2_2_660
  %_cond4_662 = icmp ule i8* %_pot_address_in_parent_stack_657, %_parent_stack_end_ptr_
  %_cond1_n_cond2_663 = and i1 %_cond1_658, %_cond2_661
  %_cond1_n_cond2_cond3_664 = and i1 %_cond4_662, %_cond1_n_cond2_663
  %_address_in_parent_stack_bt_666 = bitcast i8* %_pot_address_in_parent_stack_657 to i32*
  %_address_in_parent_stack_bt_666. = select i1 %_cond1_n_cond2_cond3_664, i32* %_address_in_parent_stack_bt_666, i32* %245
  %_new_load_667 = load i32, i32* %_address_in_parent_stack_bt_666., align 4
  %246 = zext i32 %_new_load_667 to i64, !mcsema_real_eip !119
  store i64 %246, i64* %R8, align 8, !mcsema_real_eip !119
  %_new_gep_131 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -96
  %_ptr_to_int_668 = ptrtoint i8* %_new_gep_131 to i64
  %_offset_above_rbp_671 = sub i64 %_ptr_to_int_668, %_local_end_to_int_
  %_pot_address_in_parent_stack_672 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_671
  %_cond1_673 = icmp ugt i8* %_new_gep_131, %_local_stack_end_ptr_
  %_cond2_1_674 = icmp ugt i8* %_new_gep_131, %_parent_stack_end_ptr_
  %_cond2_2_675 = icmp ult i8* %_new_gep_131, %_parent_stack_start_ptr_
  %_cond2_676 = or i1 %_cond2_1_674, %_cond2_2_675
  %_cond4_677 = icmp ule i8* %_pot_address_in_parent_stack_672, %_parent_stack_end_ptr_
  %_cond1_n_cond2_678 = and i1 %_cond1_673, %_cond2_676
  %_cond1_n_cond2_cond3_679 = and i1 %_cond1_n_cond2_678, %_cond4_677
  %.v13 = select i1 %_cond1_n_cond2_cond3_679, i8* %_pot_address_in_parent_stack_672, i8* %_new_gep_131
  %247 = bitcast i8* %.v13 to i64*
  %_new_load_682 = load i64, i64* %247, align 8
  store i64 %_new_load_682, i64* %XCX, align 8, !mcsema_real_eip !120
  %248 = add i64 %_new_load_682, 8, !mcsema_real_eip !121
  %249 = inttoptr i64 %248 to i32*, !mcsema_real_eip !121
  %_ptr_bt_685 = inttoptr i64 %248 to i8*
  %_offset_above_rbp_686 = sub i64 %248, %_local_end_to_int_
  %_pot_address_in_parent_stack_687 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_686
  %_cond1_688 = icmp ugt i8* %_ptr_bt_685, %_local_stack_end_ptr_
  %_cond2_1_689 = icmp ugt i8* %_ptr_bt_685, %_parent_stack_end_ptr_
  %_cond2_2_690 = icmp ult i8* %_ptr_bt_685, %_parent_stack_start_ptr_
  %_cond2_691 = or i1 %_cond2_1_689, %_cond2_2_690
  %_cond4_692 = icmp ule i8* %_pot_address_in_parent_stack_687, %_parent_stack_end_ptr_
  %_cond1_n_cond2_693 = and i1 %_cond1_688, %_cond2_691
  %_cond1_n_cond2_cond3_694 = and i1 %_cond4_692, %_cond1_n_cond2_693
  %_address_in_parent_stack_bt_696 = bitcast i8* %_pot_address_in_parent_stack_687 to i32*
  %_address_in_parent_stack_bt_696. = select i1 %_cond1_n_cond2_cond3_694, i32* %_address_in_parent_stack_bt_696, i32* %249
  %_new_load_697 = load i32, i32* %_address_in_parent_stack_bt_696., align 4
  %250 = add i32 %_new_load_667, %_new_load_697, !mcsema_real_eip !121
  %251 = xor i32 %250, %_new_load_697, !mcsema_real_eip !121
  %252 = xor i32 %251, %_new_load_667, !mcsema_real_eip !121
  %253 = and i32 %252, 16, !mcsema_real_eip !121
  %254 = icmp ne i32 %253, 0, !mcsema_real_eip !121
  store i1 %254, i1* %AF, align 1, !mcsema_real_eip !121
  %255 = icmp slt i32 %250, 0
  store i1 %255, i1* %SF, align 1, !mcsema_real_eip !121
  %256 = icmp eq i32 %250, 0, !mcsema_real_eip !121
  store i1 %256, i1* %ZF, align 1, !mcsema_real_eip !121
  %257 = xor i32 %_new_load_697, -2147483648, !mcsema_real_eip !121
  %258 = xor i32 %257, %_new_load_667, !mcsema_real_eip !121
  %259 = and i32 %251, %258, !mcsema_real_eip !121
  %260 = icmp slt i32 %259, 0
  store i1 %260, i1* %OF, align 1, !mcsema_real_eip !121
  %261 = trunc i32 %250 to i8, !mcsema_real_eip !121
  %262 = call i8 @llvm.ctpop.i8(i8 %261), !mcsema_real_eip !121
  %263 = and i8 %262, 1
  %264 = icmp eq i8 %263, 0
  store i1 %264, i1* %PF, align 1, !mcsema_real_eip !121
  %265 = icmp ult i32 %250, %_new_load_697, !mcsema_real_eip !121
  store i1 %265, i1* %CF, align 1, !mcsema_real_eip !121
  %266 = zext i32 %250 to i64, !mcsema_real_eip !121
  store i64 %266, i64* %R8, align 8, !mcsema_real_eip !121
  %_new_gep_134 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -104
  %_ptr_to_int_698 = ptrtoint i8* %_new_gep_134 to i64
  %_offset_above_rbp_701 = sub i64 %_ptr_to_int_698, %_local_end_to_int_
  %_pot_address_in_parent_stack_702 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_701
  %_cond1_703 = icmp ugt i8* %_new_gep_134, %_local_stack_end_ptr_
  %_cond2_1_704 = icmp ugt i8* %_new_gep_134, %_parent_stack_end_ptr_
  %_cond2_2_705 = icmp ult i8* %_new_gep_134, %_parent_stack_start_ptr_
  %_cond2_706 = or i1 %_cond2_1_704, %_cond2_2_705
  %_cond4_707 = icmp ule i8* %_pot_address_in_parent_stack_702, %_parent_stack_end_ptr_
  %_cond1_n_cond2_708 = and i1 %_cond1_703, %_cond2_706
  %_cond1_n_cond2_cond3_709 = and i1 %_cond1_n_cond2_708, %_cond4_707
  %.v14 = select i1 %_cond1_n_cond2_cond3_709, i8* %_pot_address_in_parent_stack_702, i8* %_new_gep_134
  %267 = bitcast i8* %.v14 to i64*
  %_new_load_712 = load i64, i64* %267, align 8
  store i64 %_new_load_712, i64* %XCX, align 8, !mcsema_real_eip !122
  %268 = add i64 %_new_load_712, 8, !mcsema_real_eip !123
  %269 = inttoptr i64 %268 to i32*, !mcsema_real_eip !123
  %_ptr_bt_715 = inttoptr i64 %268 to i8*
  %_offset_above_rbp_716 = sub i64 %268, %_local_end_to_int_
  %_pot_address_in_parent_stack_717 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_716
  %_cond1_718 = icmp ugt i8* %_ptr_bt_715, %_local_stack_end_ptr_
  %_cond2_1_719 = icmp ugt i8* %_ptr_bt_715, %_parent_stack_end_ptr_
  %_cond2_2_720 = icmp ult i8* %_ptr_bt_715, %_parent_stack_start_ptr_
  %_cond2_721 = or i1 %_cond2_1_719, %_cond2_2_720
  %_cond4_722 = icmp ule i8* %_pot_address_in_parent_stack_717, %_parent_stack_end_ptr_
  %_cond1_n_cond2_723 = and i1 %_cond1_718, %_cond2_721
  %_cond1_n_cond2_cond3_724 = and i1 %_cond4_722, %_cond1_n_cond2_723
  %_address_in_parent_stack_bt_726 = bitcast i8* %_pot_address_in_parent_stack_717 to i32*
  %_address_in_parent_stack_bt_726. = select i1 %_cond1_n_cond2_cond3_724, i32* %_address_in_parent_stack_bt_726, i32* %269
  %_new_load_727 = load i32, i32* %_address_in_parent_stack_bt_726., align 4
  %270 = add i32 %250, %_new_load_727, !mcsema_real_eip !123
  %271 = zext i32 %270 to i64, !mcsema_real_eip !123
  store i64 %271, i64* %R8, align 8, !mcsema_real_eip !123
  %ESI_val.217 = load i32, i32* %ESI.112, align 4, !mcsema_real_eip !124
  %272 = add i32 %270, %ESI_val.217, !mcsema_real_eip !124
  %273 = xor i32 %272, %ESI_val.217, !mcsema_real_eip !124
  %274 = xor i32 %273, %270, !mcsema_real_eip !124
  %275 = and i32 %274, 16, !mcsema_real_eip !124
  %276 = icmp ne i32 %275, 0, !mcsema_real_eip !124
  store i1 %276, i1* %AF, align 1, !mcsema_real_eip !124
  %277 = icmp slt i32 %272, 0
  store i1 %277, i1* %SF, align 1, !mcsema_real_eip !124
  %278 = icmp eq i32 %272, 0, !mcsema_real_eip !124
  store i1 %278, i1* %ZF, align 1, !mcsema_real_eip !124
  %279 = xor i32 %ESI_val.217, -2147483648, !mcsema_real_eip !124
  %280 = xor i32 %279, %270, !mcsema_real_eip !124
  %281 = and i32 %273, %280, !mcsema_real_eip !124
  %282 = icmp slt i32 %281, 0
  store i1 %282, i1* %OF, align 1, !mcsema_real_eip !124
  %283 = trunc i32 %272 to i8, !mcsema_real_eip !124
  %284 = call i8 @llvm.ctpop.i8(i8 %283), !mcsema_real_eip !124
  %285 = and i8 %284, 1
  %286 = icmp eq i8 %285, 0
  store i1 %286, i1* %PF, align 1, !mcsema_real_eip !124
  %287 = icmp ult i32 %272, %ESI_val.217, !mcsema_real_eip !124
  store i1 %287, i1* %CF, align 1, !mcsema_real_eip !124
  %288 = zext i32 %272 to i64, !mcsema_real_eip !124
  store i64 %288, i64* %XSI, align 8, !mcsema_real_eip !124
  %_new_gep_137 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -112
  %_ptr_to_int_728 = ptrtoint i8* %_new_gep_137 to i64
  %_offset_above_rbp_731 = sub i64 %_ptr_to_int_728, %_local_end_to_int_
  %_pot_address_in_parent_stack_732 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_731
  %_cond1_733 = icmp ugt i8* %_new_gep_137, %_local_stack_end_ptr_
  %_cond2_1_734 = icmp ugt i8* %_new_gep_137, %_parent_stack_end_ptr_
  %_cond2_2_735 = icmp ult i8* %_new_gep_137, %_parent_stack_start_ptr_
  %_cond2_736 = or i1 %_cond2_1_734, %_cond2_2_735
  %_cond4_737 = icmp ule i8* %_pot_address_in_parent_stack_732, %_parent_stack_end_ptr_
  %_cond1_n_cond2_738 = and i1 %_cond1_733, %_cond2_736
  %_cond1_n_cond2_cond3_739 = and i1 %_cond1_n_cond2_738, %_cond4_737
  %.v15 = select i1 %_cond1_n_cond2_cond3_739, i8* %_pot_address_in_parent_stack_732, i8* %_new_gep_137
  %289 = bitcast i8* %.v15 to i64*
  %_new_load_742 = load i64, i64* %289, align 8
  store i64 %_new_load_742, i64* %XCX, align 8, !mcsema_real_eip !125
  %290 = add i64 %_new_load_742, 8, !mcsema_real_eip !126
  %291 = inttoptr i64 %290 to i32*, !mcsema_real_eip !126
  store i32 %272, i32* %291, align 4, !mcsema_real_eip !126
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_139 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_140 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_139, i64 -112
  %_ptr_to_int_743 = ptrtoint i8* %_new_gep_140 to i64
  %_offset_above_rbp_746 = sub i64 %_ptr_to_int_743, %_local_end_to_int_
  %_pot_address_in_parent_stack_747 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_746
  %_cond1_748 = icmp ugt i8* %_new_gep_140, %_local_stack_end_ptr_
  %_cond2_1_749 = icmp ugt i8* %_new_gep_140, %_parent_stack_end_ptr_
  %_cond2_2_750 = icmp ult i8* %_new_gep_140, %_parent_stack_start_ptr_
  %_cond2_751 = or i1 %_cond2_1_749, %_cond2_2_750
  %_cond4_752 = icmp ule i8* %_pot_address_in_parent_stack_747, %_parent_stack_end_ptr_
  %_cond1_n_cond2_753 = and i1 %_cond1_748, %_cond2_751
  %_cond1_n_cond2_cond3_754 = and i1 %_cond1_n_cond2_753, %_cond4_752
  %_address_in_parent_stack_bt_756._allin_new_bt_141.v = select i1 %_cond1_n_cond2_cond3_754, i8* %_pot_address_in_parent_stack_747, i8* %_new_gep_140
  %_address_in_parent_stack_bt_756._allin_new_bt_141 = bitcast i8* %_address_in_parent_stack_bt_756._allin_new_bt_141.v to i64*
  %_new_load_757 = load i64, i64* %_address_in_parent_stack_bt_756._allin_new_bt_141, align 8
  store i64 %_new_load_757, i64* %XAX, align 8, !mcsema_real_eip !127
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.225 = load i64, i64* %XSP, align 8, !mcsema_real_eip !128
  %_new_gep_143 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 104
  %292 = add i64 %RSP_val.225, 104, !mcsema_real_eip !128
  %_trans_p2i_144 = ptrtoint i8* %_new_gep_143 to i64
  %_trans_p2i_145 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142 to i64
  %_trans_xor_146 = xor i64 %_trans_p2i_144, %_trans_p2i_145
  %293 = and i64 %_trans_xor_146, 16, !mcsema_real_eip !128
  %294 = icmp ne i64 %293, 0, !mcsema_real_eip !128
  store i1 %294, i1* %AF, align 1, !mcsema_real_eip !128
  %295 = icmp slt i64 %292, 0
  store i1 %295, i1* %SF, align 1, !mcsema_real_eip !128
  %_trans_icmp_eq_148 = icmp eq i8* %_new_gep_143, null
  store i1 %_trans_icmp_eq_148, i1* %ZF, align 1, !mcsema_real_eip !128
  %296 = xor i64 %_trans_p2i_145, -9223372036854775808, !mcsema_real_eip !128
  %297 = and i64 %_trans_xor_146, %296, !mcsema_real_eip !128
  %298 = icmp slt i64 %297, 0
  store i1 %298, i1* %OF, align 1, !mcsema_real_eip !128
  %_trans_trunc_155 = trunc i64 %_trans_p2i_144 to i8
  %299 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_155), !mcsema_real_eip !128
  %300 = and i8 %299, 1
  %301 = icmp eq i8 %300, 0
  store i1 %301, i1* %PF, align 1, !mcsema_real_eip !128
  %_trans_icmp_ne_157 = icmp ne i64 %_trans_p2i_144, %RSP_val.225
  store i1 %_trans_icmp_ne_157, i1* %CF, align 1, !mcsema_real_eip !128
  store volatile i8* %_new_gep_143, i8** %_RSP_ptr_, align 8
  store i64 %292, i64* %XSP, align 8, !mcsema_real_eip !128
  %_offset_above_rbp_761 = sub i64 %_trans_p2i_144, %_local_end_to_int_
  %_pot_address_in_parent_stack_762 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_761
  %_cond1_763 = icmp ugt i8* %_new_gep_143, %_local_stack_end_ptr_
  %_cond2_1_764 = icmp ugt i8* %_new_gep_143, %_parent_stack_end_ptr_
  %_cond2_2_765 = icmp ult i8* %_new_gep_143, %_parent_stack_start_ptr_
  %_cond2_766 = or i1 %_cond2_1_764, %_cond2_2_765
  %_cond4_767 = icmp ule i8* %_pot_address_in_parent_stack_762, %_parent_stack_end_ptr_
  %_cond1_n_cond2_768 = and i1 %_cond1_763, %_cond2_766
  %_cond1_n_cond2_cond3_769 = and i1 %_cond1_n_cond2_768, %_cond4_767
  %.v16 = select i1 %_cond1_n_cond2_cond3_769, i8* %_pot_address_in_parent_stack_762, i8* %_new_gep_143
  %302 = bitcast i8* %.v16 to i64*
  %_new_load_772 = load i64, i64* %302, align 8
  store i64 %_new_load_772, i64* %XBX, align 8, !mcsema_real_eip !129
  %_new_gep_160 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 112
  %303 = add i64 %RSP_val.225, 112, !mcsema_real_eip !129
  store volatile i8* %_new_gep_160, i8** %_RSP_ptr_, align 8
  store i64 %303, i64* %XSP, align 8, !mcsema_real_eip !129
  %_ptr_to_int_773 = ptrtoint i8* %_new_gep_160 to i64
  %_offset_above_rbp_776 = sub i64 %_ptr_to_int_773, %_local_end_to_int_
  %_pot_address_in_parent_stack_777 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_776
  %_cond1_778 = icmp ugt i8* %_new_gep_160, %_local_stack_end_ptr_
  %_cond2_1_779 = icmp ugt i8* %_new_gep_160, %_parent_stack_end_ptr_
  %_cond2_2_780 = icmp ult i8* %_new_gep_160, %_parent_stack_start_ptr_
  %_cond2_781 = or i1 %_cond2_1_779, %_cond2_2_780
  %_cond4_782 = icmp ule i8* %_pot_address_in_parent_stack_777, %_parent_stack_end_ptr_
  %_cond1_n_cond2_783 = and i1 %_cond1_778, %_cond2_781
  %_cond1_n_cond2_cond3_784 = and i1 %_cond1_n_cond2_783, %_cond4_782
  %_address_in_parent_stack_bt_786._allin_new_bt_162.v = select i1 %_cond1_n_cond2_cond3_784, i8* %_pot_address_in_parent_stack_777, i8* %_new_gep_160
  %_address_in_parent_stack_bt_786._allin_new_bt_162 = bitcast i8* %_address_in_parent_stack_bt_786._allin_new_bt_162.v to i64*
  %_new_load_787 = load i64, i64* %_address_in_parent_stack_bt_786._allin_new_bt_162, align 8
  store i64 %_new_load_787, i64* %R14, align 8, !mcsema_real_eip !130
  %_new_gep_163 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 120
  %304 = add i64 %RSP_val.225, 120, !mcsema_real_eip !130
  store volatile i8* %_new_gep_163, i8** %_RSP_ptr_, align 8
  store i64 %304, i64* %XSP, align 8, !mcsema_real_eip !130
  %_ptr_to_int_788 = ptrtoint i8* %_new_gep_163 to i64
  %_offset_above_rbp_791 = sub i64 %_ptr_to_int_788, %_local_end_to_int_
  %_pot_address_in_parent_stack_792 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_791
  %_cond1_793 = icmp ugt i8* %_new_gep_163, %_local_stack_end_ptr_
  %_cond2_1_794 = icmp ugt i8* %_new_gep_163, %_parent_stack_end_ptr_
  %_cond2_2_795 = icmp ult i8* %_new_gep_163, %_parent_stack_start_ptr_
  %_cond2_796 = or i1 %_cond2_1_794, %_cond2_2_795
  %_cond4_797 = icmp ule i8* %_pot_address_in_parent_stack_792, %_parent_stack_end_ptr_
  %_cond1_n_cond2_798 = and i1 %_cond1_793, %_cond2_796
  %_cond1_n_cond2_cond3_799 = and i1 %_cond1_n_cond2_798, %_cond4_797
  %.v17 = select i1 %_cond1_n_cond2_cond3_799, i8* %_pot_address_in_parent_stack_792, i8* %_new_gep_163
  %305 = bitcast i8* %.v17 to i64*
  %_new_load_802 = load i64, i64* %305, align 8
  store i64 %_new_load_802, i64* %R15, align 8, !mcsema_real_eip !131
  %_new_gep_166 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 128
  %306 = add i64 %RSP_val.225, 128, !mcsema_real_eip !131
  store volatile i8* %_new_gep_166, i8** %_RSP_ptr_, align 8
  store i64 %306, i64* %XSP, align 8, !mcsema_real_eip !131
  %_ptr_to_int_803 = ptrtoint i8* %_new_gep_166 to i64
  %_offset_above_rbp_806 = sub i64 %_ptr_to_int_803, %_local_end_to_int_
  %_pot_address_in_parent_stack_807 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_806
  %_cond1_808 = icmp ugt i8* %_new_gep_166, %_local_stack_end_ptr_
  %_cond2_1_809 = icmp ugt i8* %_new_gep_166, %_parent_stack_end_ptr_
  %_cond2_2_810 = icmp ult i8* %_new_gep_166, %_parent_stack_start_ptr_
  %_cond2_811 = or i1 %_cond2_1_809, %_cond2_2_810
  %_cond4_812 = icmp ule i8* %_pot_address_in_parent_stack_807, %_parent_stack_end_ptr_
  %_cond1_n_cond2_813 = and i1 %_cond1_808, %_cond2_811
  %_cond1_n_cond2_cond3_814 = and i1 %_cond1_n_cond2_813, %_cond4_812
  %_address_in_parent_stack_bt_816._allin_new_bt_168.v = select i1 %_cond1_n_cond2_cond3_814, i8* %_pot_address_in_parent_stack_807, i8* %_new_gep_166
  %_address_in_parent_stack_bt_816._allin_new_bt_168 = bitcast i8* %_address_in_parent_stack_bt_816._allin_new_bt_168.v to i64*
  %_new_load_817 = load i64, i64* %_address_in_parent_stack_bt_816._allin_new_bt_168, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_817 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_817, i64* %XBP, align 8, !mcsema_real_eip !132
  %_new_gep_169 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 136
  %307 = add i64 %RSP_val.225, 136, !mcsema_real_eip !132
  store volatile i8* %_new_gep_169, i8** %_RSP_ptr_, align 8
  store i64 %307, i64* %XSP, align 8, !mcsema_real_eip !132
  %_new_gep_171 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_142, i64 144
  %308 = add i64 %RSP_val.225, 144, !mcsema_real_eip !133
  %_ptr_to_int_818 = ptrtoint i8* %_new_gep_169 to i64
  %_offset_above_rbp_821 = sub i64 %_ptr_to_int_818, %_local_end_to_int_
  %_pot_address_in_parent_stack_822 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_821
  %_cond1_823 = icmp ugt i8* %_new_gep_169, %_local_stack_end_ptr_
  %_cond2_1_824 = icmp ugt i8* %_new_gep_169, %_parent_stack_end_ptr_
  %_cond2_2_825 = icmp ult i8* %_new_gep_169, %_parent_stack_start_ptr_
  %_cond2_826 = or i1 %_cond2_1_824, %_cond2_2_825
  %_cond4_827 = icmp ule i8* %_pot_address_in_parent_stack_822, %_parent_stack_end_ptr_
  %_cond1_n_cond2_828 = and i1 %_cond1_823, %_cond2_826
  %_cond1_n_cond2_cond3_829 = and i1 %_cond1_n_cond2_828, %_cond4_827
  %.v18 = select i1 %_cond1_n_cond2_cond3_829, i8* %_pot_address_in_parent_stack_822, i8* %_new_gep_169
  %309 = bitcast i8* %.v18 to i64*
  %_new_load_832 = load i64, i64* %309, align 8
  store i64 %_new_load_832, i64* %XIP, align 8, !mcsema_real_eip !133
  store volatile i8* %_new_gep_171, i8** %_RSP_ptr_, align 8
  store i64 %308, i64* %XSP, align 8, !mcsema_real_eip !133
  ret void, !mcsema_real_eip !133
}

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 256}
!3 = !{i64 257}
!4 = !{i64 260}
!5 = !{i64 267}
!6 = !{i64 272}
!7 = !{i64 302}
!8 = !{i64 307}
!9 = !{i64 323}
!10 = !{i64 328}
!11 = !{i64 332}
!12 = !{i64 336}
!13 = !{i64 342}
!14 = !{i64 346}
!15 = !{i64 353}
!16 = !{i64 357}
!17 = !{i64 364}
!18 = !{i64 368}
!19 = !{i64 372}
!20 = !{i64 376}
!21 = !{i64 380}
!22 = !{i64 384}
!23 = !{i64 388}
!24 = !{i64 392}
!25 = !{i64 396}
!26 = !{i64 400}
!27 = !{i64 403}
!28 = !{i64 406}
!29 = !{i64 410}
!30 = !{i64 414}
!31 = !{i64 417}
!32 = !{i64 420}
!33 = !{i64 423}
!34 = !{i64 430}
!35 = !{i64 433}
!36 = !{i64 438}
!37 = !{i64 442}
!38 = !{i64 447}
!39 = !{i64 452}
!40 = !{i64 456}
!41 = !{i64 461}
!42 = !{i64 466}
!43 = !{i64 476}
!44 = !{i64 480}
!45 = !{i64 484}
!46 = !{i64 486}
!47 = !{i64 490}
!48 = !{i64 493}
!49 = !{i64 497}
!50 = !{i64 500}
!51 = !{i64 503}
!52 = !{i64 506}
!53 = !{i64 508}
!54 = !{i64 513}
!55 = !{i64 516}
!56 = !{i64 519}
!57 = !{i64 521}
!58 = !{i64 528}
!59 = !{i64 529}
!60 = !{i64 0}
!61 = !{i64 1}
!62 = !{i64 4}
!63 = !{i64 6}
!64 = !{i64 8}
!65 = !{i64 9}
!66 = !{i64 13}
!67 = !{i64 17}
!68 = !{i64 21}
!69 = !{i64 25}
!70 = !{i64 37}
!71 = !{i64 41}
!72 = !{i64 44}
!73 = !{i64 48}
!74 = !{i64 52}
!75 = !{i64 55}
!76 = !{i64 58}
!77 = !{i64 62}
!78 = !{i64 66}
!79 = !{i64 70}
!80 = !{i64 74}
!81 = !{i64 77}
!82 = !{i64 81}
!83 = !{i64 85}
!84 = !{i64 88}
!85 = !{i64 92}
!86 = !{i64 97}
!87 = !{i64 101}
!88 = !{i64 104}
!89 = !{i64 108}
!90 = !{i64 110}
!91 = !{i64 114}
!92 = !{i64 116}
!93 = !{i64 120}
!94 = !{i64 123}
!95 = !{i64 127}
!96 = !{i64 130}
!97 = !{i64 134}
!98 = !{i64 137}
!99 = !{i64 140}
!100 = !{i64 144}
!101 = !{i64 146}
!102 = !{i64 149}
!103 = !{i64 153}
!104 = !{i64 156}
!105 = !{i64 160}
!106 = !{i64 163}
!107 = !{i64 167}
!108 = !{i64 171}
!109 = !{i64 175}
!110 = !{i64 179}
!111 = !{i64 183}
!112 = !{i64 186}
!113 = !{i64 190}
!114 = !{i64 193}
!115 = !{i64 196}
!116 = !{i64 200}
!117 = !{i64 203}
!118 = !{i64 207}
!119 = !{i64 210}
!120 = !{i64 214}
!121 = !{i64 218}
!122 = !{i64 222}
!123 = !{i64 226}
!124 = !{i64 230}
!125 = !{i64 233}
!126 = !{i64 237}
!127 = !{i64 240}
!128 = !{i64 244}
!129 = !{i64 248}
!130 = !{i64 249}
!131 = !{i64 251}
!132 = !{i64 253}
!133 = !{i64 254}
