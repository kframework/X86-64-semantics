; ModuleID = 'Output/test_25.clang.trans.opt.bc'
source_filename = "Output/test_25.clang.bc"
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

%0 = type <{ [14 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xa4 = internal constant %0 <{ [14 x i8] c"I am: %s\0A\00%d\0A\00" }>, align 64

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
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
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
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
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %13 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, align 4, !mcsema_real_eip !6
  %14 = bitcast i8* %_new_gep_17 to i32*
  store i32 %EDI_val.7, i32* %14, align 8, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.9 = load i64, i64* %XSI, align 8
  store i64 %RSI_val.9, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !7
  %_new_gep_23 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %15 = bitcast i8* %_new_gep_23 to i32*
  store i32 0, i32* %15, align 4, !mcsema_real_eip !8
  %16 = add i64 %RSI_val.9, 8, !mcsema_real_eip !9
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !9
  %18 = load i64, i64* %17, align 8, !mcsema_real_eip !9
  store i64 %18, i64* %XDI, align 8, !mcsema_real_eip !9
  %_new_gep_29 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %19 = add i64 %RSP_val.1, -64
  %_allin_new_bt_30 = bitcast [64 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %19, i64* %XSP, align 8, !mcsema_real_eip !10
  %20 = call x86_64_sysvcc i64 @_strlen(i64 %18)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %20, i64* %XAX, align 8, !mcsema_real_eip !10
  %EAX.15 = bitcast i64* %XAX to i32*, !mcsema_real_eip !11
  %21 = trunc i64 %20 to i32
  %22 = and i64 %20, 4294967295
  store i64 %22, i64* %XCX, align 8, !mcsema_real_eip !11
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_318 = load i8*, i8** %12, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_318, i64 -24
  %23 = bitcast i8* %_new_gep_32 to i32*
  store i32 %21, i32* %23, align 4, !mcsema_real_eip !12
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_349 = load i8*, i8** %12, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_349, i64 -28
  %24 = bitcast i8* %_new_gep_35 to i32*
  store i32 0, i32* %24, align 4, !mcsema_real_eip !13
  %AL.41 = bitcast i64* %XAX to i8*
  br label %block_0x36, !mcsema_real_eip !14

block_0x36:                                       ; preds = %block_0x42, %entry
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3710 = load i8*, i8** %12, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3710, i64 -28
  %25 = bitcast i8* %_new_gep_38 to i32*
  %26 = load i32, i32* %25, align 4, !mcsema_real_eip !14
  %27 = zext i32 %26 to i64, !mcsema_real_eip !14
  store i64 %27, i64* %XAX, align 8, !mcsema_real_eip !14
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3710, i64 -24
  %28 = bitcast i8* %_new_gep_41 to i32*
  %29 = load i32, i32* %28, align 4, !mcsema_real_eip !15
  %30 = sub i32 %26, %29, !mcsema_real_eip !15
  %31 = xor i32 %30, %26, !mcsema_real_eip !15
  %32 = xor i32 %31, %29, !mcsema_real_eip !15
  %33 = and i32 %32, 16, !mcsema_real_eip !15
  %34 = icmp ne i32 %33, 0, !mcsema_real_eip !15
  store i1 %34, i1* %AF, align 1, !mcsema_real_eip !15
  %35 = trunc i32 %30 to i8, !mcsema_real_eip !15
  %36 = call i8 @llvm.ctpop.i8(i8 %35), !mcsema_real_eip !15
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  store i1 %38, i1* %PF, align 1, !mcsema_real_eip !15
  %39 = icmp eq i32 %30, 0, !mcsema_real_eip !15
  store i1 %39, i1* %ZF, align 1, !mcsema_real_eip !15
  %40 = icmp slt i32 %30, 0
  store i1 %40, i1* %SF, align 1, !mcsema_real_eip !15
  %41 = icmp ult i32 %26, %29, !mcsema_real_eip !15
  store i1 %41, i1* %CF, align 1, !mcsema_real_eip !15
  %42 = xor i32 %29, %26, !mcsema_real_eip !15
  %43 = and i32 %31, %42, !mcsema_real_eip !15
  %44 = icmp slt i32 %43, 0
  store i1 %44, i1* %OF, align 1, !mcsema_real_eip !15
  %tmp = xor i1 %40, %44
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.44 = load i64, i64* %XSP, align 8
  %45 = add i64 %RSP_val.44, -8
  br i1 %tmp, label %block_0x42, label %block_0x82, !mcsema_real_eip !16

block_0x42:                                       ; preds = %block_0x36
  store i64 ptrtoint (%0* @data_0xa4 to i64), i64* %XDI, align 8, !mcsema_real_eip !17
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_3710, i64 -16
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %46 = load i64, i64* %_allin_new_bt_45, align 8, !mcsema_real_eip !18
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !18
  %47 = add i64 %46, 8, !mcsema_real_eip !19
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !19
  %49 = load i64, i64* %48, align 8, !mcsema_real_eip !19
  store i64 %49, i64* %XSI, align 8, !mcsema_real_eip !19
  store i8 0, i8* %AL.41, align 1, !mcsema_real_eip !20
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 -8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_, align 8
  store i64 %45, i64* %XSP, align 8, !mcsema_real_eip !21
  %50 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xa4 to i64), i64 %49)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_104 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_105 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_104, i64 8
  store i8* %_gep_fix_105, i8** %_RSP_ptr_, align 8
  store i64 %50, i64* %XAX, align 8, !mcsema_real_eip !21
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4912 = load i8*, i8** %12, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4912, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %51 = load i64, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !22
  store i64 %51, i64* %XSI, align 8, !mcsema_real_eip !22
  %52 = add i64 %51, 8, !mcsema_real_eip !23
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !23
  %54 = load i64, i64* %53, align 8, !mcsema_real_eip !23
  store i64 %54, i64* %XSI, align 8, !mcsema_real_eip !23
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4912, i64 -28
  %55 = bitcast i8* %_new_gep_53 to i32*
  %56 = load i32, i32* %55, align 4, !mcsema_real_eip !24
  %57 = sext i32 %56 to i64, !mcsema_real_eip !24
  store i64 %57, i64* %XDI, align 8, !mcsema_real_eip !24
  %58 = add i64 %57, %54, !mcsema_real_eip !25
  %59 = inttoptr i64 %58 to i8*, !mcsema_real_eip !25
  %60 = load i8, i8* %59, align 1, !mcsema_real_eip !25
  %61 = sext i8 %60 to i64
  %62 = and i64 %61, 4294967295
  store i64 %62, i64* %XCX, align 8, !mcsema_real_eip !25
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4912, i64 -20
  %63 = bitcast i8* %_new_gep_56 to i32*
  %64 = load i32, i32* %63, align 4, !mcsema_real_eip !26
  %65 = sext i8 %60 to i32
  %66 = add i32 %65, %64, !mcsema_real_eip !26
  %67 = xor i32 %66, %64, !mcsema_real_eip !26
  %68 = xor i32 %67, %65, !mcsema_real_eip !26
  %69 = and i32 %68, 16, !mcsema_real_eip !26
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !26
  store i1 %70, i1* %AF, align 1, !mcsema_real_eip !26
  %71 = icmp slt i32 %66, 0
  store i1 %71, i1* %SF, align 1, !mcsema_real_eip !26
  %72 = icmp eq i32 %66, 0, !mcsema_real_eip !26
  store i1 %72, i1* %ZF, align 1, !mcsema_real_eip !26
  %73 = xor i32 %64, -2147483648, !mcsema_real_eip !26
  %74 = xor i32 %73, %65, !mcsema_real_eip !26
  %75 = and i32 %67, %74, !mcsema_real_eip !26
  %76 = icmp slt i32 %75, 0
  store i1 %76, i1* %OF, align 1, !mcsema_real_eip !26
  %77 = trunc i32 %66 to i8, !mcsema_real_eip !26
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !26
  %79 = and i8 %78, 1
  %80 = icmp eq i8 %79, 0
  store i1 %80, i1* %PF, align 1, !mcsema_real_eip !26
  %81 = icmp ult i32 %66, %64, !mcsema_real_eip !26
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !26
  %82 = zext i32 %66 to i64, !mcsema_real_eip !26
  store i64 %82, i64* %XCX, align 8, !mcsema_real_eip !26
  store i32 %66, i32* %63, align 4, !mcsema_real_eip !27
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6113 = load i8*, i8** %12, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6113, i64 -32
  %EAX_val.58 = load i32, i32* %EAX.15, align 4, !mcsema_real_eip !28
  %83 = bitcast i8* %_new_gep_62 to i32*
  store i32 %EAX_val.58, i32* %83, align 4, !mcsema_real_eip !28
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6414 = load i8*, i8** %12, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6414, i64 -28
  %84 = bitcast i8* %_new_gep_65 to i32*
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !29
  %86 = add i32 %85, 1, !mcsema_real_eip !30
  %87 = xor i32 %86, %85, !mcsema_real_eip !30
  %88 = and i32 %87, 16, !mcsema_real_eip !30
  %89 = icmp ne i32 %88, 0, !mcsema_real_eip !30
  store i1 %89, i1* %AF, align 1, !mcsema_real_eip !30
  %90 = icmp slt i32 %86, 0
  store i1 %90, i1* %SF, align 1, !mcsema_real_eip !30
  %91 = icmp eq i32 %86, 0, !mcsema_real_eip !30
  store i1 %91, i1* %ZF, align 1, !mcsema_real_eip !30
  %92 = xor i32 %85, -2147483648, !mcsema_real_eip !30
  %93 = and i32 %87, %92, !mcsema_real_eip !30
  %94 = icmp slt i32 %93, 0
  store i1 %94, i1* %OF, align 1, !mcsema_real_eip !30
  %95 = trunc i32 %86 to i8, !mcsema_real_eip !30
  %96 = call i8 @llvm.ctpop.i8(i8 %95), !mcsema_real_eip !30
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  store i1 %98, i1* %PF, align 1, !mcsema_real_eip !30
  %99 = icmp eq i32 %85, -1
  store i1 %99, i1* %CF, align 1, !mcsema_real_eip !30
  %100 = zext i32 %86 to i64, !mcsema_real_eip !30
  store i64 %100, i64* %XAX, align 8, !mcsema_real_eip !30
  store i32 %86, i32* %84, align 4, !mcsema_real_eip !31
  br label %block_0x36, !mcsema_real_eip !32

block_0x82:                                       ; preds = %block_0x36
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  store i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64* %XDI, align 8, !mcsema_real_eip !33
  %101 = load i32, i32* %28, align 4, !mcsema_real_eip !34
  %102 = zext i32 %101 to i64, !mcsema_real_eip !34
  store i64 %102, i64* %XSI, align 8, !mcsema_real_eip !34
  store i8 0, i8* %AL.41, align 1, !mcsema_real_eip !35
  %_new_gep_74 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 -8
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !36
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_, align 8
  store i64 %45, i64* %XSP, align 8, !mcsema_real_eip !36
  %103 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64 %102)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_106 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_107 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_106, i64 8
  store i8* %_gep_fix_107, i8** %_RSP_ptr_, align 8
  store i64 %103, i64* %XAX, align 8, !mcsema_real_eip !36
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7611 = load i8*, i8** %12, align 8
  %_new_gep_77 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7611, i64 -24
  %104 = bitcast i8* %_new_gep_77 to i32*
  %105 = load i32, i32* %104, align 4, !mcsema_real_eip !37
  %106 = zext i32 %105 to i64, !mcsema_real_eip !37
  store i64 %106, i64* %XSI, align 8, !mcsema_real_eip !37
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7611, i64 -36
  %107 = trunc i64 %103 to i32
  %108 = bitcast i8* %_new_gep_80 to i32*
  store i32 %107, i32* %108, align 4, !mcsema_real_eip !38
  %ESI.34 = bitcast i64* %XSI to i32*, !mcsema_real_eip !39
  %ESI_val.35 = load i32, i32* %ESI.34, align 4, !mcsema_real_eip !39
  %109 = zext i32 %ESI_val.35 to i64, !mcsema_real_eip !39
  store i64 %109, i64* %XAX, align 8, !mcsema_real_eip !39
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.36 = load i64, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_83 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82, i64 48
  %110 = add i64 %RSP_val.36, 48, !mcsema_real_eip !40
  %_trans_p2i_84 = ptrtoint i8* %_new_gep_83 to i64
  %_trans_p2i_85 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82 to i64
  %_trans_xor_86 = xor i64 %_trans_p2i_84, %_trans_p2i_85
  %111 = and i64 %_trans_xor_86, 16
  %112 = icmp eq i64 %111, 0
  store i1 %112, i1* %AF, align 1, !mcsema_real_eip !40
  %113 = icmp slt i64 %110, 0
  store i1 %113, i1* %SF, align 1, !mcsema_real_eip !40
  %_trans_icmp_eq_88 = icmp eq i8* %_new_gep_83, null
  store i1 %_trans_icmp_eq_88, i1* %ZF, align 1, !mcsema_real_eip !40
  %114 = xor i64 %_trans_p2i_85, -9223372036854775808, !mcsema_real_eip !40
  %115 = and i64 %_trans_xor_86, %114, !mcsema_real_eip !40
  %116 = icmp slt i64 %115, 0
  store i1 %116, i1* %OF, align 1, !mcsema_real_eip !40
  %_trans_trunc_95 = trunc i64 %_trans_p2i_84 to i8
  %117 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_95), !mcsema_real_eip !40
  %118 = and i8 %117, 1
  %119 = icmp eq i8 %118, 0
  store i1 %119, i1* %PF, align 1, !mcsema_real_eip !40
  %_trans_icmp_ne_97 = icmp ne i64 %_trans_p2i_84, %RSP_val.36
  store i1 %_trans_icmp_ne_97, i1* %CF, align 1, !mcsema_real_eip !40
  store volatile i8* %_new_gep_83, i8** %_RSP_ptr_, align 8
  store i64 %110, i64* %XSP, align 8, !mcsema_real_eip !40
  %_allin_new_bt_99 = bitcast i8* %_new_gep_83 to i64*
  %120 = load i64, i64* %_allin_new_bt_99, align 8, !mcsema_real_eip !41
  store volatile i64 %120, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %120, i64* %XBP, align 8, !mcsema_real_eip !41
  %_new_gep_100 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82, i64 56
  %121 = add i64 %RSP_val.36, 56, !mcsema_real_eip !41
  store volatile i8* %_new_gep_100, i8** %_RSP_ptr_, align 8
  store i64 %121, i64* %XSP, align 8, !mcsema_real_eip !41
  %_new_gep_102 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82, i64 64
  %122 = add i64 %RSP_val.36, 64, !mcsema_real_eip !42
  %_allin_new_bt_103 = bitcast i8* %_new_gep_100 to i64*
  %123 = load i64, i64* %_allin_new_bt_103, align 8, !mcsema_real_eip !42
  store i64 %123, i64* %XIP, align 8, !mcsema_real_eip !42
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_, align 8
  store i64 %122, i64* %XSP, align 8, !mcsema_real_eip !42
  ret void, !mcsema_real_eip !42
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [64 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
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
  %_new_gep_ = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
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
  %_new_gep_14 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %11 = bitcast i8* %_new_gep_14 to i32*
  store i32 0, i32* %11, align 4, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, align 4, !mcsema_real_eip !6
  %12 = bitcast i8* %_new_gep_17 to i32*
  store i32 %EDI_val.7, i32* %12, align 8, !mcsema_real_eip !6
  %_new_gep_20 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.9 = load i64, i64* %XSI, align 8, !mcsema_real_eip !7
  store i64 %RSI_val.9, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !7
  %_new_gep_23 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 36
  %13 = bitcast i8* %_new_gep_23 to i32*
  store i32 0, i32* %13, align 4, !mcsema_real_eip !8
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %14 = add i64 %RSI_val.9, 8, !mcsema_real_eip !9
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !9
  %_ptr_bt_110 = inttoptr i64 %14 to i8*
  %_offset_above_rbp_111 = sub i64 %14, %_local_end_to_int_
  %_pot_address_in_parent_stack_112 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_111
  %_cond1_113 = icmp ugt i8* %_ptr_bt_110, %_local_stack_end_ptr_
  %_cond2_1_114 = icmp ugt i8* %_ptr_bt_110, %_parent_stack_end_ptr_
  %_cond2_2_115 = icmp ult i8* %_ptr_bt_110, %_parent_stack_start_ptr_
  %_cond2_116 = or i1 %_cond2_1_114, %_cond2_2_115
  %_cond4_117 = icmp ule i8* %_pot_address_in_parent_stack_112, %_parent_stack_end_ptr_
  %_cond1_n_cond2_118 = and i1 %_cond1_113, %_cond2_116
  %_cond1_n_cond2_cond3_119 = and i1 %_cond4_117, %_cond1_n_cond2_118
  %_address_in_parent_stack_bt_121 = bitcast i8* %_pot_address_in_parent_stack_112 to i64*
  %_address_in_parent_stack_bt_121. = select i1 %_cond1_n_cond2_cond3_119, i64* %_address_in_parent_stack_bt_121, i64* %15
  %_new_load_122 = load i64, i64* %_address_in_parent_stack_bt_121., align 8
  store i64 %_new_load_122, i64* %XDI, align 8, !mcsema_real_eip !9
  %_new_gep_29 = getelementptr inbounds [64 x i8], [64 x i8]* %_local_stack_start_ptr_1, i64 0, i64 0
  %16 = add i64 %RSP_val.1, -64
  %_allin_new_bt_30 = bitcast [64 x i8]* %_local_stack_start_ptr_1 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, align 8, !mcsema_real_eip !10
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_, align 8
  store i64 %16, i64* %XSP, align 8, !mcsema_real_eip !10
  %17 = call x86_64_sysvcc i64 @_strlen(i64 %_new_load_122)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %17, i64* %XAX, align 8, !mcsema_real_eip !10
  %EAX.15 = bitcast i64* %XAX to i32*, !mcsema_real_eip !11
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %XCX, align 8, !mcsema_real_eip !11
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_32 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_31, i64 -24
  %20 = bitcast i8* %_new_gep_32 to i32*
  store i32 %18, i32* %20, align 4, !mcsema_real_eip !12
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_34, i64 -28
  %21 = bitcast i8* %_new_gep_35 to i32*
  store i32 0, i32* %21, align 4, !mcsema_real_eip !13
  %AL.41 = bitcast i64* %XAX to i8*
  br label %block_0x36, !mcsema_real_eip !14

block_0x36:                                       ; preds = %block_0x42, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_38 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -28
  %22 = ptrtoint i8* %_new_gep_38 to i64
  %_offset_above_rbp_126 = sub i64 %22, %_local_end_to_int_
  %_pot_address_in_parent_stack_127 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_126
  %_cond1_128 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_129 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_130 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_131 = or i1 %_cond2_1_129, %_cond2_2_130
  %_cond4_132 = icmp ule i8* %_pot_address_in_parent_stack_127, %_parent_stack_end_ptr_
  %_cond1_n_cond2_133 = and i1 %_cond1_128, %_cond2_131
  %_cond1_n_cond2_cond3_134 = and i1 %_cond1_n_cond2_133, %_cond4_132
  %_address_in_parent_stack_bt_136..v = select i1 %_cond1_n_cond2_cond3_134, i8* %_pot_address_in_parent_stack_127, i8* %_new_gep_38
  %_address_in_parent_stack_bt_136. = bitcast i8* %_address_in_parent_stack_bt_136..v to i32*
  %_new_load_137 = load i32, i32* %_address_in_parent_stack_bt_136., align 4
  %23 = zext i32 %_new_load_137 to i64, !mcsema_real_eip !14
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !14
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -24
  %24 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_141 = sub i64 %24, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  %.v2 = select i1 %_cond1_n_cond2_cond3_149, i8* %_pot_address_in_parent_stack_142, i8* %_new_gep_41
  %25 = bitcast i8* %.v2 to i32*
  %_new_load_152 = load i32, i32* %25, align 4
  %26 = sub i32 %_new_load_137, %_new_load_152, !mcsema_real_eip !15
  %27 = xor i32 %26, %_new_load_137, !mcsema_real_eip !15
  %28 = xor i32 %27, %_new_load_152, !mcsema_real_eip !15
  %29 = and i32 %28, 16, !mcsema_real_eip !15
  %30 = icmp ne i32 %29, 0, !mcsema_real_eip !15
  store i1 %30, i1* %AF, align 1, !mcsema_real_eip !15
  %31 = trunc i32 %26 to i8, !mcsema_real_eip !15
  %32 = call i8 @llvm.ctpop.i8(i8 %31), !mcsema_real_eip !15
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  store i1 %34, i1* %PF, align 1, !mcsema_real_eip !15
  %35 = icmp eq i32 %26, 0, !mcsema_real_eip !15
  store i1 %35, i1* %ZF, align 1, !mcsema_real_eip !15
  %36 = icmp slt i32 %26, 0
  store i1 %36, i1* %SF, align 1, !mcsema_real_eip !15
  %37 = icmp ult i32 %_new_load_137, %_new_load_152, !mcsema_real_eip !15
  store i1 %37, i1* %CF, align 1, !mcsema_real_eip !15
  %38 = xor i32 %_new_load_152, %_new_load_137, !mcsema_real_eip !15
  %39 = and i32 %27, %38, !mcsema_real_eip !15
  %40 = icmp slt i32 %39, 0
  store i1 %40, i1* %OF, align 1, !mcsema_real_eip !15
  %tmp = xor i1 %36, %40
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.44 = load i64, i64* %XSP, align 8
  %41 = add i64 %RSP_val.44, -8
  br i1 %tmp, label %block_0x42, label %block_0x82, !mcsema_real_eip !16

block_0x42:                                       ; preds = %block_0x36
  store i64 ptrtoint (%0* @data_0xa4 to i64), i64* %XDI, align 8, !mcsema_real_eip !17
  %_new_gep_44 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_37, i64 -16
  %_ptr_to_int_153 = ptrtoint i8* %_new_gep_44 to i64
  %_offset_above_rbp_156 = sub i64 %_ptr_to_int_153, %_local_end_to_int_
  %_pot_address_in_parent_stack_157 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_156
  %_cond1_158 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_159 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_160 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_161 = or i1 %_cond2_1_159, %_cond2_2_160
  %_cond4_162 = icmp ule i8* %_pot_address_in_parent_stack_157, %_parent_stack_end_ptr_
  %_cond1_n_cond2_163 = and i1 %_cond1_158, %_cond2_161
  %_cond1_n_cond2_cond3_164 = and i1 %_cond1_n_cond2_163, %_cond4_162
  %_address_in_parent_stack_bt_166._allin_new_bt_45.v = select i1 %_cond1_n_cond2_cond3_164, i8* %_pot_address_in_parent_stack_157, i8* %_new_gep_44
  %_address_in_parent_stack_bt_166._allin_new_bt_45 = bitcast i8* %_address_in_parent_stack_bt_166._allin_new_bt_45.v to i64*
  %_new_load_167 = load i64, i64* %_address_in_parent_stack_bt_166._allin_new_bt_45, align 8
  store i64 %_new_load_167, i64* %XAX, align 8, !mcsema_real_eip !18
  %42 = add i64 %_new_load_167, 8, !mcsema_real_eip !19
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !19
  %_ptr_bt_170 = inttoptr i64 %42 to i8*
  %_offset_above_rbp_171 = sub i64 %42, %_local_end_to_int_
  %_pot_address_in_parent_stack_172 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_171
  %_cond1_173 = icmp ugt i8* %_ptr_bt_170, %_local_stack_end_ptr_
  %_cond2_1_174 = icmp ugt i8* %_ptr_bt_170, %_parent_stack_end_ptr_
  %_cond2_2_175 = icmp ult i8* %_ptr_bt_170, %_parent_stack_start_ptr_
  %_cond2_176 = or i1 %_cond2_1_174, %_cond2_2_175
  %_cond4_177 = icmp ule i8* %_pot_address_in_parent_stack_172, %_parent_stack_end_ptr_
  %_cond1_n_cond2_178 = and i1 %_cond1_173, %_cond2_176
  %_cond1_n_cond2_cond3_179 = and i1 %_cond4_177, %_cond1_n_cond2_178
  %_address_in_parent_stack_bt_181 = bitcast i8* %_pot_address_in_parent_stack_172 to i64*
  %44 = select i1 %_cond1_n_cond2_cond3_179, i64* %_address_in_parent_stack_bt_181, i64* %43
  %_new_load_182 = load i64, i64* %44, align 8
  store i64 %_new_load_182, i64* %XSI, align 8, !mcsema_real_eip !19
  store i8 0, i8* %AL.41, align 1, !mcsema_real_eip !20
  %_new_gep_47 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 -8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_, align 8
  store i64 %41, i64* %XSP, align 8, !mcsema_real_eip !21
  %45 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xa4 to i64), i64 %_new_load_182)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_104 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_105 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_104, i64 8
  store i8* %_gep_fix_105, i8** %_RSP_ptr_, align 8
  store i64 %45, i64* %XAX, align 8, !mcsema_real_eip !21
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49, i64 -16
  %_ptr_to_int_183 = ptrtoint i8* %_new_gep_50 to i64
  %_offset_above_rbp_186 = sub i64 %_ptr_to_int_183, %_local_end_to_int_
  %_pot_address_in_parent_stack_187 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_186
  %_cond1_188 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_189 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_190 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_191 = or i1 %_cond2_1_189, %_cond2_2_190
  %_cond4_192 = icmp ule i8* %_pot_address_in_parent_stack_187, %_parent_stack_end_ptr_
  %_cond1_n_cond2_193 = and i1 %_cond1_188, %_cond2_191
  %_cond1_n_cond2_cond3_194 = and i1 %_cond1_n_cond2_193, %_cond4_192
  %_address_in_parent_stack_bt_196._allin_new_bt_51.v = select i1 %_cond1_n_cond2_cond3_194, i8* %_pot_address_in_parent_stack_187, i8* %_new_gep_50
  %_address_in_parent_stack_bt_196._allin_new_bt_51 = bitcast i8* %_address_in_parent_stack_bt_196._allin_new_bt_51.v to i64*
  %_new_load_197 = load i64, i64* %_address_in_parent_stack_bt_196._allin_new_bt_51, align 8
  store i64 %_new_load_197, i64* %XSI, align 8, !mcsema_real_eip !22
  %46 = add i64 %_new_load_197, 8, !mcsema_real_eip !23
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !23
  %_ptr_bt_200 = inttoptr i64 %46 to i8*
  %_offset_above_rbp_201 = sub i64 %46, %_local_end_to_int_
  %_pot_address_in_parent_stack_202 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_201
  %_cond1_203 = icmp ugt i8* %_ptr_bt_200, %_local_stack_end_ptr_
  %_cond2_1_204 = icmp ugt i8* %_ptr_bt_200, %_parent_stack_end_ptr_
  %_cond2_2_205 = icmp ult i8* %_ptr_bt_200, %_parent_stack_start_ptr_
  %_cond2_206 = or i1 %_cond2_1_204, %_cond2_2_205
  %_cond4_207 = icmp ule i8* %_pot_address_in_parent_stack_202, %_parent_stack_end_ptr_
  %_cond1_n_cond2_208 = and i1 %_cond1_203, %_cond2_206
  %_cond1_n_cond2_cond3_209 = and i1 %_cond4_207, %_cond1_n_cond2_208
  %_address_in_parent_stack_bt_211 = bitcast i8* %_pot_address_in_parent_stack_202 to i64*
  %48 = select i1 %_cond1_n_cond2_cond3_209, i64* %_address_in_parent_stack_bt_211, i64* %47
  %_new_load_212 = load i64, i64* %48, align 8
  store i64 %_new_load_212, i64* %XSI, align 8, !mcsema_real_eip !23
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49, i64 -28
  %49 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_216 = sub i64 %49, %_local_end_to_int_
  %_pot_address_in_parent_stack_217 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_cond1_218 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_219 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_220 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_221 = or i1 %_cond2_1_219, %_cond2_2_220
  %_cond4_222 = icmp ule i8* %_pot_address_in_parent_stack_217, %_parent_stack_end_ptr_
  %_cond1_n_cond2_223 = and i1 %_cond1_218, %_cond2_221
  %_cond1_n_cond2_cond3_224 = and i1 %_cond1_n_cond2_223, %_cond4_222
  %_address_in_parent_stack_bt_226..v = select i1 %_cond1_n_cond2_cond3_224, i8* %_pot_address_in_parent_stack_217, i8* %_new_gep_53
  %_address_in_parent_stack_bt_226. = bitcast i8* %_address_in_parent_stack_bt_226..v to i32*
  %_new_load_227 = load i32, i32* %_address_in_parent_stack_bt_226., align 4
  %50 = sext i32 %_new_load_227 to i64, !mcsema_real_eip !24
  store i64 %50, i64* %XDI, align 8, !mcsema_real_eip !24
  %51 = add i64 %50, %_new_load_212, !mcsema_real_eip !25
  %52 = inttoptr i64 %51 to i8*, !mcsema_real_eip !25
  %_offset_above_rbp_230 = sub i64 %51, %_local_end_to_int_
  %_pot_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_cond1_232 = icmp ugt i8* %52, %_local_stack_end_ptr_
  %_cond2_1_233 = icmp ugt i8* %52, %_parent_stack_end_ptr_
  %_cond2_2_234 = icmp ult i8* %52, %_parent_stack_start_ptr_
  %_cond2_235 = or i1 %_cond2_1_233, %_cond2_2_234
  %_cond4_236 = icmp ule i8* %_pot_address_in_parent_stack_231, %_parent_stack_end_ptr_
  %_cond1_n_cond2_237 = and i1 %_cond1_232, %_cond2_235
  %_cond1_n_cond2_cond3_238 = and i1 %_cond4_236, %_cond1_n_cond2_237
  %53 = select i1 %_cond1_n_cond2_cond3_238, i8* %_pot_address_in_parent_stack_231, i8* %52
  %_new_load_240 = load i8, i8* %53, align 1
  %54 = sext i8 %_new_load_240 to i64
  %55 = and i64 %54, 4294967295
  store i64 %55, i64* %XCX, align 8, !mcsema_real_eip !25
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49, i64 -20
  %56 = ptrtoint i8* %_new_gep_56 to i64
  %57 = bitcast i8* %_new_gep_56 to i32*
  %_offset_above_rbp_244 = sub i64 %56, %_local_end_to_int_
  %_pot_address_in_parent_stack_245 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_244
  %_cond1_246 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_247 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_248 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_249 = or i1 %_cond2_1_247, %_cond2_2_248
  %_cond4_250 = icmp ule i8* %_pot_address_in_parent_stack_245, %_parent_stack_end_ptr_
  %_cond1_n_cond2_251 = and i1 %_cond1_246, %_cond2_249
  %_cond1_n_cond2_cond3_252 = and i1 %_cond1_n_cond2_251, %_cond4_250
  %_address_in_parent_stack_bt_254 = bitcast i8* %_pot_address_in_parent_stack_245 to i32*
  %_address_in_parent_stack_bt_254. = select i1 %_cond1_n_cond2_cond3_252, i32* %_address_in_parent_stack_bt_254, i32* %57
  %_new_load_255 = load i32, i32* %_address_in_parent_stack_bt_254., align 4
  %58 = sext i8 %_new_load_240 to i32
  %59 = add i32 %58, %_new_load_255, !mcsema_real_eip !26
  %60 = xor i32 %59, %_new_load_255, !mcsema_real_eip !26
  %61 = xor i32 %60, %58, !mcsema_real_eip !26
  %62 = and i32 %61, 16, !mcsema_real_eip !26
  %63 = icmp ne i32 %62, 0, !mcsema_real_eip !26
  store i1 %63, i1* %AF, align 1, !mcsema_real_eip !26
  %64 = icmp slt i32 %59, 0
  store i1 %64, i1* %SF, align 1, !mcsema_real_eip !26
  %65 = icmp eq i32 %59, 0, !mcsema_real_eip !26
  store i1 %65, i1* %ZF, align 1, !mcsema_real_eip !26
  %66 = xor i32 %_new_load_255, -2147483648, !mcsema_real_eip !26
  %67 = xor i32 %66, %58, !mcsema_real_eip !26
  %68 = and i32 %60, %67, !mcsema_real_eip !26
  %69 = icmp slt i32 %68, 0
  store i1 %69, i1* %OF, align 1, !mcsema_real_eip !26
  %70 = trunc i32 %59 to i8, !mcsema_real_eip !26
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !26
  %72 = and i8 %71, 1
  %73 = icmp eq i8 %72, 0
  store i1 %73, i1* %PF, align 1, !mcsema_real_eip !26
  %74 = icmp ult i32 %59, %_new_load_255, !mcsema_real_eip !26
  store i1 %74, i1* %CF, align 1, !mcsema_real_eip !26
  %75 = zext i32 %59 to i64, !mcsema_real_eip !26
  store i64 %75, i64* %XCX, align 8, !mcsema_real_eip !26
  store i32 %59, i32* %57, align 4, !mcsema_real_eip !27
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -32
  %EAX_val.58 = load i32, i32* %EAX.15, align 4, !mcsema_real_eip !28
  %76 = bitcast i8* %_new_gep_62 to i32*
  store i32 %EAX_val.58, i32* %76, align 4, !mcsema_real_eip !28
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64, i64 -28
  %77 = ptrtoint i8* %_new_gep_65 to i64
  %78 = bitcast i8* %_new_gep_65 to i32*
  %_offset_above_rbp_259 = sub i64 %77, %_local_end_to_int_
  %_pot_address_in_parent_stack_260 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_259
  %_cond1_261 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_262 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_263 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_264 = or i1 %_cond2_1_262, %_cond2_2_263
  %_cond4_265 = icmp ule i8* %_pot_address_in_parent_stack_260, %_parent_stack_end_ptr_
  %_cond1_n_cond2_266 = and i1 %_cond1_261, %_cond2_264
  %_cond1_n_cond2_cond3_267 = and i1 %_cond1_n_cond2_266, %_cond4_265
  %_address_in_parent_stack_bt_269 = bitcast i8* %_pot_address_in_parent_stack_260 to i32*
  %79 = select i1 %_cond1_n_cond2_cond3_267, i32* %_address_in_parent_stack_bt_269, i32* %78
  %_new_load_270 = load i32, i32* %79, align 4
  %80 = add i32 %_new_load_270, 1, !mcsema_real_eip !30
  %81 = xor i32 %80, %_new_load_270, !mcsema_real_eip !30
  %82 = and i32 %81, 16, !mcsema_real_eip !30
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !30
  store i1 %83, i1* %AF, align 1, !mcsema_real_eip !30
  %84 = icmp slt i32 %80, 0
  store i1 %84, i1* %SF, align 1, !mcsema_real_eip !30
  %85 = icmp eq i32 %80, 0, !mcsema_real_eip !30
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !30
  %86 = xor i32 %_new_load_270, -2147483648, !mcsema_real_eip !30
  %87 = and i32 %81, %86, !mcsema_real_eip !30
  %88 = icmp slt i32 %87, 0
  store i1 %88, i1* %OF, align 1, !mcsema_real_eip !30
  %89 = trunc i32 %80 to i8, !mcsema_real_eip !30
  %90 = call i8 @llvm.ctpop.i8(i8 %89), !mcsema_real_eip !30
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  store i1 %92, i1* %PF, align 1, !mcsema_real_eip !30
  %93 = icmp eq i32 %_new_load_270, -1
  store i1 %93, i1* %CF, align 1, !mcsema_real_eip !30
  %94 = zext i32 %80 to i64, !mcsema_real_eip !30
  store i64 %94, i64* %XAX, align 8, !mcsema_real_eip !30
  store i32 %80, i32* %78, align 4, !mcsema_real_eip !31
  br label %block_0x36, !mcsema_real_eip !32

block_0x82:                                       ; preds = %block_0x36
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  store i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64* %XDI, align 8, !mcsema_real_eip !33
  %_new_load_285 = load i32, i32* %25, align 4
  %95 = zext i32 %_new_load_285 to i64, !mcsema_real_eip !34
  store i64 %95, i64* %XSI, align 8, !mcsema_real_eip !34
  store i8 0, i8* %AL.41, align 1, !mcsema_real_eip !35
  %_new_gep_74 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_46, i64 -8
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !36
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_, align 8
  store i64 %41, i64* %XSP, align 8, !mcsema_real_eip !36
  %96 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64 %95)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_106 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_107 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_106, i64 8
  store i8* %_gep_fix_107, i8** %_RSP_ptr_, align 8
  store i64 %96, i64* %XAX, align 8, !mcsema_real_eip !36
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_77 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_76, i64 -24
  %97 = ptrtoint i8* %_new_gep_77 to i64
  %_offset_above_rbp_289 = sub i64 %97, %_local_end_to_int_
  %_pot_address_in_parent_stack_290 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_289
  %_cond1_291 = icmp ugt i8* %_new_gep_77, %_local_stack_end_ptr_
  %_cond2_1_292 = icmp ugt i8* %_new_gep_77, %_parent_stack_end_ptr_
  %_cond2_2_293 = icmp ult i8* %_new_gep_77, %_parent_stack_start_ptr_
  %_cond2_294 = or i1 %_cond2_1_292, %_cond2_2_293
  %_cond4_295 = icmp ule i8* %_pot_address_in_parent_stack_290, %_parent_stack_end_ptr_
  %_cond1_n_cond2_296 = and i1 %_cond1_291, %_cond2_294
  %_cond1_n_cond2_cond3_297 = and i1 %_cond1_n_cond2_296, %_cond4_295
  %.v3 = select i1 %_cond1_n_cond2_cond3_297, i8* %_pot_address_in_parent_stack_290, i8* %_new_gep_77
  %98 = bitcast i8* %.v3 to i32*
  %_new_load_300 = load i32, i32* %98, align 4
  %99 = zext i32 %_new_load_300 to i64, !mcsema_real_eip !37
  store i64 %99, i64* %XSI, align 8, !mcsema_real_eip !37
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_76, i64 -36
  %100 = trunc i64 %96 to i32
  %101 = bitcast i8* %_new_gep_80 to i32*
  store i32 %100, i32* %101, align 4, !mcsema_real_eip !38
  %ESI.34 = bitcast i64* %XSI to i32*, !mcsema_real_eip !39
  %ESI_val.35 = load i32, i32* %ESI.34, align 4, !mcsema_real_eip !39
  %102 = zext i32 %ESI_val.35 to i64, !mcsema_real_eip !39
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !39
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.36 = load i64, i64* %XSP, align 8, !mcsema_real_eip !40
  %_new_gep_83 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82, i64 48
  %103 = add i64 %RSP_val.36, 48, !mcsema_real_eip !40
  %_trans_p2i_84 = ptrtoint i8* %_new_gep_83 to i64
  %_trans_p2i_85 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82 to i64
  %_trans_xor_86 = xor i64 %_trans_p2i_84, %_trans_p2i_85
  %104 = and i64 %_trans_xor_86, 16
  %105 = icmp eq i64 %104, 0
  store i1 %105, i1* %AF, align 1, !mcsema_real_eip !40
  %106 = icmp slt i64 %103, 0
  store i1 %106, i1* %SF, align 1, !mcsema_real_eip !40
  %_trans_icmp_eq_88 = icmp eq i8* %_new_gep_83, null
  store i1 %_trans_icmp_eq_88, i1* %ZF, align 1, !mcsema_real_eip !40
  %107 = xor i64 %_trans_p2i_85, -9223372036854775808, !mcsema_real_eip !40
  %108 = and i64 %_trans_xor_86, %107, !mcsema_real_eip !40
  %109 = icmp slt i64 %108, 0
  store i1 %109, i1* %OF, align 1, !mcsema_real_eip !40
  %_trans_trunc_95 = trunc i64 %_trans_p2i_84 to i8
  %110 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_95), !mcsema_real_eip !40
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  store i1 %112, i1* %PF, align 1, !mcsema_real_eip !40
  %_trans_icmp_ne_97 = icmp ne i64 %_trans_p2i_84, %RSP_val.36
  store i1 %_trans_icmp_ne_97, i1* %CF, align 1, !mcsema_real_eip !40
  store volatile i8* %_new_gep_83, i8** %_RSP_ptr_, align 8
  store i64 %103, i64* %XSP, align 8, !mcsema_real_eip !40
  %_offset_above_rbp_304 = sub i64 %_trans_p2i_84, %_local_end_to_int_
  %_pot_address_in_parent_stack_305 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_304
  %_cond1_306 = icmp ugt i8* %_new_gep_83, %_local_stack_end_ptr_
  %_cond2_1_307 = icmp ugt i8* %_new_gep_83, %_parent_stack_end_ptr_
  %_cond2_2_308 = icmp ult i8* %_new_gep_83, %_parent_stack_start_ptr_
  %_cond2_309 = or i1 %_cond2_1_307, %_cond2_2_308
  %_cond4_310 = icmp ule i8* %_pot_address_in_parent_stack_305, %_parent_stack_end_ptr_
  %_cond1_n_cond2_311 = and i1 %_cond1_306, %_cond2_309
  %_cond1_n_cond2_cond3_312 = and i1 %_cond1_n_cond2_311, %_cond4_310
  %_address_in_parent_stack_bt_314._allin_new_bt_99.v = select i1 %_cond1_n_cond2_cond3_312, i8* %_pot_address_in_parent_stack_305, i8* %_new_gep_83
  %_address_in_parent_stack_bt_314._allin_new_bt_99 = bitcast i8* %_address_in_parent_stack_bt_314._allin_new_bt_99.v to i64*
  %_new_load_315 = load i64, i64* %_address_in_parent_stack_bt_314._allin_new_bt_99, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_315 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_315, i64* %XBP, align 8, !mcsema_real_eip !41
  %_new_gep_100 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82, i64 56
  %113 = add i64 %RSP_val.36, 56, !mcsema_real_eip !41
  store volatile i8* %_new_gep_100, i8** %_RSP_ptr_, align 8
  store i64 %113, i64* %XSP, align 8, !mcsema_real_eip !41
  %_new_gep_102 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_82, i64 64
  %114 = add i64 %RSP_val.36, 64, !mcsema_real_eip !42
  %_ptr_to_int_316 = ptrtoint i8* %_new_gep_100 to i64
  %_offset_above_rbp_319 = sub i64 %_ptr_to_int_316, %_local_end_to_int_
  %_pot_address_in_parent_stack_320 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_319
  %_cond1_321 = icmp ugt i8* %_new_gep_100, %_local_stack_end_ptr_
  %_cond2_1_322 = icmp ugt i8* %_new_gep_100, %_parent_stack_end_ptr_
  %_cond2_2_323 = icmp ult i8* %_new_gep_100, %_parent_stack_start_ptr_
  %_cond2_324 = or i1 %_cond2_1_322, %_cond2_2_323
  %_cond4_325 = icmp ule i8* %_pot_address_in_parent_stack_320, %_parent_stack_end_ptr_
  %_cond1_n_cond2_326 = and i1 %_cond1_321, %_cond2_324
  %_cond1_n_cond2_cond3_327 = and i1 %_cond1_n_cond2_326, %_cond4_325
  %.v4 = select i1 %_cond1_n_cond2_cond3_327, i8* %_pot_address_in_parent_stack_320, i8* %_new_gep_100
  %115 = bitcast i8* %.v4 to i64*
  %_new_load_330 = load i64, i64* %115, align 8
  store i64 %_new_load_330, i64* %XIP, align 8, !mcsema_real_eip !42
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_, align 8
  store i64 %114, i64* %XSP, align 8, !mcsema_real_eip !42
  ret void, !mcsema_real_eip !42
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
!6 = !{i64 15}
!7 = !{i64 18}
!8 = !{i64 22}
!9 = !{i64 33}
!10 = !{i64 37}
!11 = !{i64 42}
!12 = !{i64 44}
!13 = !{i64 47}
!14 = !{i64 54}
!15 = !{i64 57}
!16 = !{i64 60}
!17 = !{i64 66}
!18 = !{i64 76}
!19 = !{i64 80}
!20 = !{i64 84}
!21 = !{i64 86}
!22 = !{i64 91}
!23 = !{i64 95}
!24 = !{i64 99}
!25 = !{i64 103}
!26 = !{i64 107}
!27 = !{i64 110}
!28 = !{i64 113}
!29 = !{i64 116}
!30 = !{i64 119}
!31 = !{i64 122}
!32 = !{i64 125}
!33 = !{i64 130}
!34 = !{i64 140}
!35 = !{i64 143}
!36 = !{i64 145}
!37 = !{i64 150}
!38 = !{i64 153}
!39 = !{i64 156}
!40 = !{i64 158}
!41 = !{i64 162}
!42 = !{i64 163}
