; ModuleID = 'Output/test_2_1.clang.trans.bc'
source_filename = "Output/test_2_1.clang.bc"
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
module asm "  .globl sub_60;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_60(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xd8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"S\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"r\00\00\00\00A\0E\10\86\02C\0D\06E\83\03" }>, align 64

; Function Attrs: naked
declare void @__mcsema_attach_call() #0

; Function Attrs: naked
declare void @__mcsema_attach_ret() #0

; Function Attrs: naked
declare void @__mcsema_detach_call() #0

; Function Attrs: naked
declare void @__mcsema_detach_call_value() #0

; Function Attrs: naked
declare void @__mcsema_detach_ret() #0

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  br label %block_0x60, !mcsema_real_eip !2

block_0x60:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, !mcsema_real_eip !4
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.3, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_3, i64 -40
  %3 = sub i64 %2, 40, !mcsema_real_eip !5
  %_trans_p2i_ = ptrtoint i8* %_new_gep_6 to i64
  %_trans_p2i_7 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_7
  %4 = xor i64 %_trans_xor_, 40, !mcsema_real_eip !5
  %5 = and i64 %4, 16, !mcsema_real_eip !5
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !5
  store i1 %6, i1* %AF, !mcsema_real_eip !5
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %7 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !5
  %8 = trunc i8 %7 to i1, !mcsema_real_eip !5
  %9 = xor i1 %8, true, !mcsema_real_eip !5
  store i1 %9, i1* %PF, !mcsema_real_eip !5
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !5
  %10 = lshr i64 %3, 63, !mcsema_real_eip !5
  %11 = trunc i64 %10 to i1, !mcsema_real_eip !5
  store i1 %11, i1* %SF, !mcsema_real_eip !5
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_7, 40
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !5
  %_trans_xor_12 = xor i64 %_trans_p2i_7, 40
  %12 = and i64 %_trans_xor_12, %_trans_xor_, !mcsema_real_eip !5
  %13 = lshr i64 %12, 63, !mcsema_real_eip !5
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !5
  store i1 %14, i1* %OF, !mcsema_real_eip !5
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_
  store i64 %3, i64* %XSP, !mcsema_real_eip !5
  store i64 100, i64* %XAX, !mcsema_real_eip !6
  store i64 200, i64* %XCX, !mcsema_real_eip !7
  store i64 300, i64* %XDX, !mcsema_real_eip !8
  store i64 400, i64* %R8, !mcsema_real_eip !9
  store i64 500, i64* %R9, !mcsema_real_eip !10
  store i64 600, i64* %R10, !mcsema_real_eip !11
  store i64 10, i64* %R11, !mcsema_real_eip !12
  store i64 20, i64* %XBX, !mcsema_real_eip !13
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !14
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %16, !mcsema_real_eip !14
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !15
  %EDI_val.9 = load i32, i32* %EDI.8, !mcsema_real_eip !15
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !15
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !15
  store i32 %EDI_val.9, i32* %18, !mcsema_real_eip !15
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.11 = load i64, i64* %XSI, !mcsema_real_eip !16
  store i64 %RSI_val.11, i64* %_allin_new_bt_24, !mcsema_real_eip !16
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !17
  %19 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !17
  store i64 %19, i64* %XDI, !mcsema_real_eip !17
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !18
  %20 = zext i32 %ECX_val.15 to i64, !mcsema_real_eip !18
  store i64 %20, i64* %XSI, !mcsema_real_eip !18
  %R8D.16 = bitcast i64* %R8 to i32*, !mcsema_real_eip !19
  %R8D_val.17 = load i32, i32* %R8D.16, !mcsema_real_eip !19
  %21 = zext i32 %R8D_val.17 to i64, !mcsema_real_eip !19
  store i64 %21, i64* %XCX, !mcsema_real_eip !19
  %R9D.18 = bitcast i64* %R9 to i32*, !mcsema_real_eip !20
  %R9D_val.19 = load i32, i32* %R9D.18, !mcsema_real_eip !20
  %22 = zext i32 %R9D_val.19 to i64, !mcsema_real_eip !20
  store i64 %22, i64* %R8, !mcsema_real_eip !20
  %R10D.20 = bitcast i64* %R10 to i32*, !mcsema_real_eip !21
  %R10D_val.21 = load i32, i32* %R10D.20, !mcsema_real_eip !21
  %23 = zext i32 %R10D_val.21 to i64, !mcsema_real_eip !21
  store i64 %23, i64* %R9, !mcsema_real_eip !21
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_27 = bitcast i8* %_load_rsp_ptr_25 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !22
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !22
  store i32 10, i32* %25, !mcsema_real_eip !22
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !23
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !23
  store i32 20, i32* %27, !mcsema_real_eip !23
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -28
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !24
  %EBX_val.26 = load i32, i32* %EBX.25, !mcsema_real_eip !24
  %28 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !24
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !24
  store i32 %EBX_val.26, i32* %29, !mcsema_real_eip !24
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -32
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %R11D.28 = bitcast i64* %R11 to i32*, !mcsema_real_eip !25
  %R11D_val.29 = load i32, i32* %R11D.28, !mcsema_real_eip !25
  %30 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !25
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !25
  store i32 %R11D_val.29, i32* %31, !mcsema_real_eip !25
  %_load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_38 = getelementptr i8, i8* %_load_rsp_ptr_37, i64 -8
  %32 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !26
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_39, !mcsema_real_eip !26
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_
  store i64 %32, i64* %XSP, !mcsema_real_eip !26
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_38, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_65)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !27
  %_new_gep_41 = getelementptr i8, i8* %_gep_fix_, i64 40
  %33 = add i64 40, %RSP_val.31, !mcsema_real_eip !27
  %_trans_p2i_42 = ptrtoint i8* %_new_gep_41 to i64
  %_trans_p2i_43 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_44 = xor i64 %_trans_p2i_42, %_trans_p2i_43
  %34 = xor i64 %_trans_xor_44, 40, !mcsema_real_eip !27
  %35 = and i64 %34, 16, !mcsema_real_eip !27
  %36 = icmp ne i64 %35, 0, !mcsema_real_eip !27
  store i1 %36, i1* %AF, !mcsema_real_eip !27
  %37 = lshr i64 %33, 63, !mcsema_real_eip !27
  %38 = trunc i64 %37 to i1, !mcsema_real_eip !27
  store i1 %38, i1* %SF, !mcsema_real_eip !27
  %_trans_icmp_eq_46 = icmp eq i64 %_trans_p2i_42, 0
  store i1 %_trans_icmp_eq_46, i1* %ZF, !mcsema_real_eip !27
  %_trans_xor_48 = xor i64 %_trans_p2i_43, 40
  %39 = xor i64 %_trans_xor_48, -1, !mcsema_real_eip !27
  %40 = and i64 %39, %_trans_xor_44, !mcsema_real_eip !27
  %41 = lshr i64 %40, 63, !mcsema_real_eip !27
  %42 = and i64 %41, 1, !mcsema_real_eip !27
  %43 = trunc i64 %42 to i1, !mcsema_real_eip !27
  store i1 %43, i1* %OF, !mcsema_real_eip !27
  %_trans_trunc_53 = trunc i64 %_trans_p2i_42 to i8
  %44 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_53), !mcsema_real_eip !27
  %45 = trunc i8 %44 to i1, !mcsema_real_eip !27
  %46 = xor i1 %45, true, !mcsema_real_eip !27
  store i1 %46, i1* %PF, !mcsema_real_eip !27
  %_trans_icmp_ne_55 = icmp ne i64 %_trans_p2i_42, %RSP_val.31
  store i1 %_trans_icmp_ne_55, i1* %CF, !mcsema_real_eip !27
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %33, i64* %XSP, !mcsema_real_eip !27
  %_allin_new_bt_57 = bitcast i8* %_new_gep_41 to i64*
  %47 = load i64, i64* %_allin_new_bt_57, !mcsema_real_eip !28
  store i64 %47, i64* %XBX, !mcsema_real_eip !28
  %_new_gep_58 = getelementptr i8, i8* %_new_gep_41, i64 8
  %48 = add i64 %33, 8, !mcsema_real_eip !28
  store volatile i8* %_new_gep_58, i8** %_RSP_ptr_
  store i64 %48, i64* %XSP, !mcsema_real_eip !28
  %_allin_new_bt_60 = bitcast i8* %_new_gep_58 to i64*
  %49 = load i64, i64* %_allin_new_bt_60, !mcsema_real_eip !29
  %_new_int2ptr_ = inttoptr i64 %49 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %49, i64* %XBP, !mcsema_real_eip !29
  %_new_gep_61 = getelementptr i8, i8* %_new_gep_58, i64 8
  %50 = add i64 %48, 8, !mcsema_real_eip !29
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_
  store i64 %50, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_63 = getelementptr i8, i8* %_new_gep_61, i64 8
  %51 = add i64 %50, 8, !mcsema_real_eip !30
  %_allin_new_bt_64 = bitcast i8* %_new_gep_61 to i64*
  %52 = load i64, i64* %_allin_new_bt_64, !mcsema_real_eip !30
  store i64 %52, i64* %XIP, !mcsema_real_eip !30
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_
  store i64 %51, i64* %XSP, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !31
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !31
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !31
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !31
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !31
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !31
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !31
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !31
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !31
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !31
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !31
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !31
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !31
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !31
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !31
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !31
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !31
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !31
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !31
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !31
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !31
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !31
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !31
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !31
  br label %block_0x0, !mcsema_real_eip !31

block_0x0:                                        ; preds = %entry
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !31
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !31
  %1 = sub i64 %RSP_val.36, 8, !mcsema_real_eip !31
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !31
  store i64 %RBP_val.35, i64* %2, !mcsema_real_eip !31
  store i64 %1, i64* %XSP, !mcsema_real_eip !31
  store i64 %1, i64* %XBP, !mcsema_real_eip !32
  %3 = sub i64 %1, 48, !mcsema_real_eip !33
  %4 = xor i64 %3, %1, !mcsema_real_eip !33
  %5 = xor i64 %4, 48, !mcsema_real_eip !33
  %6 = and i64 %5, 16, !mcsema_real_eip !33
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !33
  store i1 %7, i1* %AF, !mcsema_real_eip !33
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !33
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !33
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !33
  %11 = xor i1 %10, true, !mcsema_real_eip !33
  store i1 %11, i1* %PF, !mcsema_real_eip !33
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !33
  store i1 %12, i1* %ZF, !mcsema_real_eip !33
  %13 = lshr i64 %3, 63, !mcsema_real_eip !33
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !33
  store i1 %14, i1* %SF, !mcsema_real_eip !33
  %15 = icmp ult i64 %1, 48, !mcsema_real_eip !33
  store i1 %15, i1* %CF, !mcsema_real_eip !33
  %16 = xor i64 %1, 48, !mcsema_real_eip !33
  %17 = and i64 %16, %4, !mcsema_real_eip !33
  %18 = lshr i64 %17, 63, !mcsema_real_eip !33
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !33
  store i1 %19, i1* %OF, !mcsema_real_eip !33
  store i64 %3, i64* %XSP, !mcsema_real_eip !33
  %20 = add i64 %1, 24, !mcsema_real_eip !34
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !34
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !34
  %23 = load i32, i32* %22, !mcsema_real_eip !34
  %24 = zext i32 %23 to i64, !mcsema_real_eip !34
  store i64 %24, i64* %XAX, !mcsema_real_eip !34
  %25 = add i64 %1, 16, !mcsema_real_eip !35
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !35
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !35
  %28 = load i32, i32* %27, !mcsema_real_eip !35
  %29 = zext i32 %28 to i64, !mcsema_real_eip !35
  store i64 %29, i64* %R10, !mcsema_real_eip !35
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %R11, !mcsema_real_eip !36
  %30 = add i64 %1, -4, !mcsema_real_eip !37
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !37
  %EDI.42 = bitcast i64* %XDI to i32*, !mcsema_real_eip !37
  %EDI_val.43 = load i32, i32* %EDI.42, !mcsema_real_eip !37
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !37
  store i32 %EDI_val.43, i32* %32, !mcsema_real_eip !37
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !38
  %33 = add i64 %RBP_val.44, -8, !mcsema_real_eip !38
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !38
  %ESI.45 = bitcast i64* %XSI to i32*, !mcsema_real_eip !38
  %ESI_val.46 = load i32, i32* %ESI.45, !mcsema_real_eip !38
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !38
  store i32 %ESI_val.46, i32* %35, !mcsema_real_eip !38
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !39
  %36 = add i64 %RBP_val.47, -12, !mcsema_real_eip !39
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !39
  %EDX.48 = bitcast i64* %XDX to i32*, !mcsema_real_eip !39
  %EDX_val.49 = load i32, i32* %EDX.48, !mcsema_real_eip !39
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !39
  store i32 %EDX_val.49, i32* %38, !mcsema_real_eip !39
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !40
  %39 = add i64 %RBP_val.50, -16, !mcsema_real_eip !40
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !40
  %ECX.51 = bitcast i64* %XCX to i32*, !mcsema_real_eip !40
  %ECX_val.52 = load i32, i32* %ECX.51, !mcsema_real_eip !40
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !40
  store i32 %ECX_val.52, i32* %41, !mcsema_real_eip !40
  %RBP_val.53 = load i64, i64* %XBP, !mcsema_real_eip !41
  %42 = add i64 %RBP_val.53, -20, !mcsema_real_eip !41
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !41
  %R8D.54 = bitcast i64* %R8 to i32*, !mcsema_real_eip !41
  %R8D_val.55 = load i32, i32* %R8D.54, !mcsema_real_eip !41
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !41
  store i32 %R8D_val.55, i32* %44, !mcsema_real_eip !41
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !42
  %45 = add i64 %RBP_val.56, -24, !mcsema_real_eip !42
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !42
  %R9D.57 = bitcast i64* %R9 to i32*, !mcsema_real_eip !42
  %R9D_val.58 = load i32, i32* %R9D.57, !mcsema_real_eip !42
  %47 = inttoptr i64 %45 to i32*, !mcsema_real_eip !42
  store i32 %R9D_val.58, i32* %47, !mcsema_real_eip !42
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !43
  %48 = add i64 %RBP_val.59, -28, !mcsema_real_eip !43
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !43
  %R10D.60 = bitcast i64* %R10 to i32*, !mcsema_real_eip !43
  %R10D_val.61 = load i32, i32* %R10D.60, !mcsema_real_eip !43
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !43
  store i32 %R10D_val.61, i32* %50, !mcsema_real_eip !43
  %RBP_val.62 = load i64, i64* %XBP, !mcsema_real_eip !44
  %51 = add i64 %RBP_val.62, -32, !mcsema_real_eip !44
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !44
  %EAX.63 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.64 = load i32, i32* %EAX.63, !mcsema_real_eip !44
  %53 = inttoptr i64 %51 to i32*, !mcsema_real_eip !44
  store i32 %EAX_val.64, i32* %53, !mcsema_real_eip !44
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !45
  %54 = add i64 %RBP_val.65, -28, !mcsema_real_eip !45
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !45
  %56 = inttoptr i64 %54 to i32*, !mcsema_real_eip !45
  %57 = load i32, i32* %56, !mcsema_real_eip !45
  %58 = zext i32 %57 to i64, !mcsema_real_eip !45
  store i64 %58, i64* %XAX, !mcsema_real_eip !45
  %59 = add i64 %RBP_val.65, -32, !mcsema_real_eip !46
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !46
  %61 = inttoptr i64 %59 to i32*, !mcsema_real_eip !46
  %62 = load i32, i32* %61, !mcsema_real_eip !46
  %EAX_val.68 = load i32, i32* %EAX.63, !mcsema_real_eip !46
  %63 = add i32 %EAX_val.68, %62, !mcsema_real_eip !46
  %64 = xor i32 %63, %62, !mcsema_real_eip !46
  %65 = xor i32 %64, %EAX_val.68, !mcsema_real_eip !46
  %66 = and i32 %65, 16, !mcsema_real_eip !46
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !46
  store i1 %67, i1* %AF, !mcsema_real_eip !46
  %68 = lshr i32 %63, 31, !mcsema_real_eip !46
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !46
  store i1 %69, i1* %SF, !mcsema_real_eip !46
  %70 = icmp eq i32 %63, 0, !mcsema_real_eip !46
  store i1 %70, i1* %ZF, !mcsema_real_eip !46
  %71 = xor i32 %62, %EAX_val.68, !mcsema_real_eip !46
  %72 = xor i32 %71, -1, !mcsema_real_eip !46
  %73 = and i32 %72, %64, !mcsema_real_eip !46
  %74 = lshr i32 %73, 31, !mcsema_real_eip !46
  %75 = and i32 %74, 1, !mcsema_real_eip !46
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !46
  store i1 %76, i1* %OF, !mcsema_real_eip !46
  %77 = trunc i32 %63 to i8, !mcsema_real_eip !46
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !46
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !46
  %80 = xor i1 %79, true, !mcsema_real_eip !46
  store i1 %80, i1* %PF, !mcsema_real_eip !46
  %81 = icmp ult i32 %63, %62, !mcsema_real_eip !46
  store i1 %81, i1* %CF, !mcsema_real_eip !46
  %82 = zext i32 %63 to i64, !mcsema_real_eip !46
  store i64 %82, i64* %XAX, !mcsema_real_eip !46
  %R11_val.69 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %R11_val.69, i64* %XDI, !mcsema_real_eip !47
  %EAX_val.71 = load i32, i32* %EAX.63, !mcsema_real_eip !48
  %83 = zext i32 %EAX_val.71 to i64, !mcsema_real_eip !48
  store i64 %83, i64* %XSI, !mcsema_real_eip !48
  %AL.72 = bitcast i64* %XAX to i8*, !mcsema_real_eip !49
  store i8 0, i8* %AL.72, !mcsema_real_eip !49
  %RDX_val.75 = load i64, i64* %XDX, !mcsema_real_eip !50
  %RCX_val.76 = load i64, i64* %XCX, !mcsema_real_eip !50
  %R8_val.77 = load i64, i64* %R8, !mcsema_real_eip !50
  %R9_val.78 = load i64, i64* %R9, !mcsema_real_eip !50
  %RSP_val.79 = load i64, i64* %XSP, !mcsema_real_eip !50
  %84 = inttoptr i64 %RSP_val.79 to i64*, !mcsema_real_eip !50
  %85 = load i64, i64* %84, !mcsema_real_eip !50
  %86 = add i64 %RSP_val.79, 8, !mcsema_real_eip !50
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !50
  %88 = load i64, i64* %87, !mcsema_real_eip !50
  %89 = add i64 %86, 8, !mcsema_real_eip !50
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !50
  %91 = load i64, i64* %90, !mcsema_real_eip !50
  %92 = add i64 %89, 8, !mcsema_real_eip !50
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !50
  %94 = load i64, i64* %93, !mcsema_real_eip !50
  %95 = add i64 %92, 8, !mcsema_real_eip !50
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !50
  %97 = load i64, i64* %96, !mcsema_real_eip !50
  %98 = add i64 %95, 8, !mcsema_real_eip !50
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !50
  %100 = load i64, i64* %99, !mcsema_real_eip !50
  %101 = sub i64 %RSP_val.79, 8, !mcsema_real_eip !50
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !50
  store i64 -2415393069852865332, i64* %102, !mcsema_real_eip !50
  store i64 %101, i64* %XSP, !mcsema_real_eip !50
  %103 = call x86_64_sysvcc i64 @_printf(i64 %R11_val.69, i64 %83, i64 %RDX_val.75, i64 %RCX_val.76, i64 %R8_val.77, i64 %R9_val.78, i64 %85, i64 %88, i64 %91, i64 %94, i64 %97, i64 %100), !mcsema_real_eip !50
  store i64 %103, i64* %XAX, !mcsema_real_eip !50
  %ECX_val.82 = load i32, i32* %ECX.51, !mcsema_real_eip !51
  store i1 false, i1* %CF, !mcsema_real_eip !51
  store i1 false, i1* %OF, !mcsema_real_eip !51
  store i1 false, i1* %SF, !mcsema_real_eip !51
  store i1 true, i1* %ZF, !mcsema_real_eip !51
  store i1 true, i1* %PF, !mcsema_real_eip !51
  store i1 undef, i1* %AF, !mcsema_real_eip !51
  store i64 0, i64* %XCX, !mcsema_real_eip !51
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !52
  %104 = add i64 %RBP_val.85, -36, !mcsema_real_eip !52
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !52
  %EAX_val.87 = load i32, i32* %EAX.63, !mcsema_real_eip !52
  %106 = inttoptr i64 %104 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.87, i32* %106, !mcsema_real_eip !52
  %ECX_val.89 = load i32, i32* %ECX.51, !mcsema_real_eip !53
  %107 = zext i32 %ECX_val.89 to i64, !mcsema_real_eip !53
  store i64 %107, i64* %XAX, !mcsema_real_eip !53
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !54
  %108 = add i64 48, %RSP_val.90, !mcsema_real_eip !54
  %109 = xor i64 %108, %RSP_val.90, !mcsema_real_eip !54
  %110 = xor i64 %109, 48, !mcsema_real_eip !54
  %111 = and i64 %110, 16, !mcsema_real_eip !54
  %112 = icmp ne i64 %111, 0, !mcsema_real_eip !54
  store i1 %112, i1* %AF, !mcsema_real_eip !54
  %113 = lshr i64 %108, 63, !mcsema_real_eip !54
  %114 = trunc i64 %113 to i1, !mcsema_real_eip !54
  store i1 %114, i1* %SF, !mcsema_real_eip !54
  %115 = icmp eq i64 %108, 0, !mcsema_real_eip !54
  store i1 %115, i1* %ZF, !mcsema_real_eip !54
  %116 = xor i64 %RSP_val.90, 48, !mcsema_real_eip !54
  %117 = xor i64 %116, -1, !mcsema_real_eip !54
  %118 = and i64 %117, %109, !mcsema_real_eip !54
  %119 = lshr i64 %118, 63, !mcsema_real_eip !54
  %120 = and i64 %119, 1, !mcsema_real_eip !54
  %121 = trunc i64 %120 to i1, !mcsema_real_eip !54
  store i1 %121, i1* %OF, !mcsema_real_eip !54
  %122 = trunc i64 %108 to i8, !mcsema_real_eip !54
  %123 = call i8 @llvm.ctpop.i8(i8 %122), !mcsema_real_eip !54
  %124 = trunc i8 %123 to i1, !mcsema_real_eip !54
  %125 = xor i1 %124, true, !mcsema_real_eip !54
  store i1 %125, i1* %PF, !mcsema_real_eip !54
  %126 = icmp ult i64 %108, %RSP_val.90, !mcsema_real_eip !54
  store i1 %126, i1* %CF, !mcsema_real_eip !54
  store i64 %108, i64* %XSP, !mcsema_real_eip !54
  %127 = inttoptr i64 %108 to i64*, !mcsema_real_eip !55
  %128 = load i64, i64* %127, !mcsema_real_eip !55
  store i64 %128, i64* %XBP, !mcsema_real_eip !55
  %129 = add i64 %108, 8, !mcsema_real_eip !55
  store i64 %129, i64* %XSP, !mcsema_real_eip !55
  %130 = add i64 %129, 8, !mcsema_real_eip !56
  %131 = inttoptr i64 %129 to i64*, !mcsema_real_eip !56
  %132 = load i64, i64* %131, !mcsema_real_eip !56
  store i64 %132, i64* %XIP, !mcsema_real_eip !56
  store i64 %130, i64* %XSP, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  br label %block_0x60, !mcsema_real_eip !2

block_0x60:                                       ; preds = %entry
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, !mcsema_real_eip !4
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.3, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_3, i64 -40
  %3 = sub i64 %2, 40, !mcsema_real_eip !5
  %_trans_p2i_ = ptrtoint i8* %_new_gep_6 to i64
  %_trans_p2i_7 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_7
  %4 = xor i64 %_trans_xor_, 40, !mcsema_real_eip !5
  %5 = and i64 %4, 16, !mcsema_real_eip !5
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !5
  store i1 %6, i1* %AF, !mcsema_real_eip !5
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %7 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !5
  %8 = trunc i8 %7 to i1, !mcsema_real_eip !5
  %9 = xor i1 %8, true, !mcsema_real_eip !5
  store i1 %9, i1* %PF, !mcsema_real_eip !5
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !5
  %10 = lshr i64 %3, 63, !mcsema_real_eip !5
  %11 = trunc i64 %10 to i1, !mcsema_real_eip !5
  store i1 %11, i1* %SF, !mcsema_real_eip !5
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_7, 40
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !5
  %_trans_xor_12 = xor i64 %_trans_p2i_7, 40
  %12 = and i64 %_trans_xor_12, %_trans_xor_, !mcsema_real_eip !5
  %13 = lshr i64 %12, 63, !mcsema_real_eip !5
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !5
  store i1 %14, i1* %OF, !mcsema_real_eip !5
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_
  store i64 %3, i64* %XSP, !mcsema_real_eip !5
  store i64 100, i64* %XAX, !mcsema_real_eip !6
  store i64 200, i64* %XCX, !mcsema_real_eip !7
  store i64 300, i64* %XDX, !mcsema_real_eip !8
  store i64 400, i64* %R8, !mcsema_real_eip !9
  store i64 500, i64* %R9, !mcsema_real_eip !10
  store i64 600, i64* %R10, !mcsema_real_eip !11
  store i64 10, i64* %R11, !mcsema_real_eip !12
  store i64 20, i64* %XBX, !mcsema_real_eip !13
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !14
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %16, !mcsema_real_eip !14
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !15
  %EDI_val.9 = load i32, i32* %EDI.8, !mcsema_real_eip !15
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !15
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !15
  store i32 %EDI_val.9, i32* %18, !mcsema_real_eip !15
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.11 = load i64, i64* %XSI, !mcsema_real_eip !16
  store i64 %RSI_val.11, i64* %_allin_new_bt_24, !mcsema_real_eip !16
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !17
  %19 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !17
  store i64 %19, i64* %XDI, !mcsema_real_eip !17
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !18
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !18
  %20 = zext i32 %ECX_val.15 to i64, !mcsema_real_eip !18
  store i64 %20, i64* %XSI, !mcsema_real_eip !18
  %R8D.16 = bitcast i64* %R8 to i32*, !mcsema_real_eip !19
  %R8D_val.17 = load i32, i32* %R8D.16, !mcsema_real_eip !19
  %21 = zext i32 %R8D_val.17 to i64, !mcsema_real_eip !19
  store i64 %21, i64* %XCX, !mcsema_real_eip !19
  %R9D.18 = bitcast i64* %R9 to i32*, !mcsema_real_eip !20
  %R9D_val.19 = load i32, i32* %R9D.18, !mcsema_real_eip !20
  %22 = zext i32 %R9D_val.19 to i64, !mcsema_real_eip !20
  store i64 %22, i64* %R8, !mcsema_real_eip !20
  %R10D.20 = bitcast i64* %R10 to i32*, !mcsema_real_eip !21
  %R10D_val.21 = load i32, i32* %R10D.20, !mcsema_real_eip !21
  %23 = zext i32 %R10D_val.21 to i64, !mcsema_real_eip !21
  store i64 %23, i64* %R9, !mcsema_real_eip !21
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_27 = bitcast i8* %_load_rsp_ptr_25 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !22
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !22
  store i32 10, i32* %25, !mcsema_real_eip !22
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !23
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !23
  store i32 20, i32* %27, !mcsema_real_eip !23
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -28
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EBX.25 = bitcast i64* %XBX to i32*, !mcsema_real_eip !24
  %EBX_val.26 = load i32, i32* %EBX.25, !mcsema_real_eip !24
  %28 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !24
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !24
  store i32 %EBX_val.26, i32* %29, !mcsema_real_eip !24
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -32
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %R11D.28 = bitcast i64* %R11 to i32*, !mcsema_real_eip !25
  %R11D_val.29 = load i32, i32* %R11D.28, !mcsema_real_eip !25
  %30 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !25
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !25
  store i32 %R11D_val.29, i32* %31, !mcsema_real_eip !25
  %_load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_38 = getelementptr i8, i8* %_load_rsp_ptr_37, i64 -8
  %32 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !26
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_39, !mcsema_real_eip !26
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_
  store i64 %32, i64* %XSP, !mcsema_real_eip !26
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_38, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_65)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !27
  %_new_gep_41 = getelementptr i8, i8* %_gep_fix_, i64 40
  %33 = add i64 40, %RSP_val.31, !mcsema_real_eip !27
  %_trans_p2i_42 = ptrtoint i8* %_new_gep_41 to i64
  %_trans_p2i_43 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_44 = xor i64 %_trans_p2i_42, %_trans_p2i_43
  %34 = xor i64 %_trans_xor_44, 40, !mcsema_real_eip !27
  %35 = and i64 %34, 16, !mcsema_real_eip !27
  %36 = icmp ne i64 %35, 0, !mcsema_real_eip !27
  store i1 %36, i1* %AF, !mcsema_real_eip !27
  %37 = lshr i64 %33, 63, !mcsema_real_eip !27
  %38 = trunc i64 %37 to i1, !mcsema_real_eip !27
  store i1 %38, i1* %SF, !mcsema_real_eip !27
  %_trans_icmp_eq_46 = icmp eq i64 %_trans_p2i_42, 0
  store i1 %_trans_icmp_eq_46, i1* %ZF, !mcsema_real_eip !27
  %_trans_xor_48 = xor i64 %_trans_p2i_43, 40
  %39 = xor i64 %_trans_xor_48, -1, !mcsema_real_eip !27
  %40 = and i64 %39, %_trans_xor_44, !mcsema_real_eip !27
  %41 = lshr i64 %40, 63, !mcsema_real_eip !27
  %42 = and i64 %41, 1, !mcsema_real_eip !27
  %43 = trunc i64 %42 to i1, !mcsema_real_eip !27
  store i1 %43, i1* %OF, !mcsema_real_eip !27
  %_trans_trunc_53 = trunc i64 %_trans_p2i_42 to i8
  %44 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_53), !mcsema_real_eip !27
  %45 = trunc i8 %44 to i1, !mcsema_real_eip !27
  %46 = xor i1 %45, true, !mcsema_real_eip !27
  store i1 %46, i1* %PF, !mcsema_real_eip !27
  %_trans_icmp_ne_55 = icmp ne i64 %_trans_p2i_42, %RSP_val.31
  store i1 %_trans_icmp_ne_55, i1* %CF, !mcsema_real_eip !27
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %33, i64* %XSP, !mcsema_real_eip !27
  %_allin_new_bt_57 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_57 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %47, label %48

; <label>:47:                                     ; preds = %block_0x60
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %48

; <label>:48:                                     ; preds = %block_0x60, %47
  %49 = phi i64* [ %_allin_new_bt_57, %block_0x60 ], [ %_address_in_parent_stack_bt_, %47 ]
  %_new_load_ = load i64, i64* %49
  store i64 %_new_load_, i64* %XBX, !mcsema_real_eip !28
  %_new_gep_58 = getelementptr i8, i8* %_new_gep_41, i64 8
  %50 = add i64 %33, 8, !mcsema_real_eip !28
  store volatile i8* %_new_gep_58, i8** %_RSP_ptr_
  store i64 %50, i64* %XSP, !mcsema_real_eip !28
  %_allin_new_bt_60 = bitcast i8* %_new_gep_58 to i64*
  %_ptr_to_int_67 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_70 = sub i64 %_ptr_to_int_67, %_local_end_to_int_
  %_pot_address_in_parent_stack_71 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_70
  %_cond1_72 = icmp ugt i8* %_new_gep_58, %_local_stack_end_ptr_
  %_cond2_1_73 = icmp ugt i8* %_new_gep_58, %_parent_stack_end_ptr_
  %_cond2_2_74 = icmp ult i8* %_new_gep_58, %_parent_stack_start_ptr_
  %_cond2_75 = or i1 %_cond2_1_73, %_cond2_2_74
  %_cond4_76 = icmp ule i8* %_pot_address_in_parent_stack_71, %_parent_stack_end_ptr_
  %_cond1_n_cond2_77 = and i1 %_cond1_72, %_cond2_75
  %_cond1_n_cond2_cond3_78 = and i1 %_cond1_n_cond2_77, %_cond4_76
  br i1 %_cond1_n_cond2_cond3_78, label %51, label %52

; <label>:51:                                     ; preds = %48
  %_address_in_parent_stack_bt_80 = bitcast i8* %_pot_address_in_parent_stack_71 to i64*
  br label %52

; <label>:52:                                     ; preds = %48, %51
  %53 = phi i64* [ %_allin_new_bt_60, %48 ], [ %_address_in_parent_stack_bt_80, %51 ]
  %_new_load_81 = load i64, i64* %53
  %_new_int2ptr_ = inttoptr i64 %_new_load_81 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_81, i64* %XBP, !mcsema_real_eip !29
  %_new_gep_61 = getelementptr i8, i8* %_new_gep_58, i64 8
  %54 = add i64 %50, 8, !mcsema_real_eip !29
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_
  store i64 %54, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_63 = getelementptr i8, i8* %_new_gep_61, i64 8
  %55 = add i64 %54, 8, !mcsema_real_eip !30
  %_allin_new_bt_64 = bitcast i8* %_new_gep_61 to i64*
  %_ptr_to_int_82 = ptrtoint i64* %_allin_new_bt_64 to i64
  %_offset_above_rbp_85 = sub i64 %_ptr_to_int_82, %_local_end_to_int_
  %_pot_address_in_parent_stack_86 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_85
  %_cond1_87 = icmp ugt i8* %_new_gep_61, %_local_stack_end_ptr_
  %_cond2_1_88 = icmp ugt i8* %_new_gep_61, %_parent_stack_end_ptr_
  %_cond2_2_89 = icmp ult i8* %_new_gep_61, %_parent_stack_start_ptr_
  %_cond2_90 = or i1 %_cond2_1_88, %_cond2_2_89
  %_cond4_91 = icmp ule i8* %_pot_address_in_parent_stack_86, %_parent_stack_end_ptr_
  %_cond1_n_cond2_92 = and i1 %_cond1_87, %_cond2_90
  %_cond1_n_cond2_cond3_93 = and i1 %_cond1_n_cond2_92, %_cond4_91
  br i1 %_cond1_n_cond2_cond3_93, label %56, label %57

; <label>:56:                                     ; preds = %52
  %_address_in_parent_stack_bt_95 = bitcast i8* %_pot_address_in_parent_stack_86 to i64*
  br label %57

; <label>:57:                                     ; preds = %52, %56
  %58 = phi i64* [ %_allin_new_bt_64, %52 ], [ %_address_in_parent_stack_bt_95, %56 ]
  %_new_load_96 = load i64, i64* %58
  store i64 %_new_load_96, i64* %XIP, !mcsema_real_eip !30
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_
  store i64 %55, i64* %XSP, !mcsema_real_eip !30
  ret void, !mcsema_real_eip !30
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !31
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !31
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !31
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !31
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !31
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !31
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !31
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !31
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !31
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !31
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !31
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !31
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !31
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !31
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !31
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !31
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !31
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !31
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !31
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !31
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !31
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !31
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !31
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !31
  br label %block_0x0, !mcsema_real_eip !31

block_0x0:                                        ; preds = %entry
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !31
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.36, 8, !mcsema_real_eip !31
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !31
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !32
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !33
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -48
  %2 = sub i64 %RSP_val.38, 48, !mcsema_real_eip !33
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 48, !mcsema_real_eip !33
  %4 = and i64 %3, 16, !mcsema_real_eip !33
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !33
  store i1 %5, i1* %AF, !mcsema_real_eip !33
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !33
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !33
  %8 = xor i1 %7, true, !mcsema_real_eip !33
  store i1 %8, i1* %PF, !mcsema_real_eip !33
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !33
  %9 = lshr i64 %2, 63, !mcsema_real_eip !33
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !33
  store i1 %10, i1* %SF, !mcsema_real_eip !33
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 48
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !33
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 48
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !33
  %12 = lshr i64 %11, 63, !mcsema_real_eip !33
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !33
  store i1 %13, i1* %OF, !mcsema_real_eip !33
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !33
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 24
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !34
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !34
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %15 to i8*
  %_offset_above_rbp_ = sub i64 %14, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %16, label %17

; <label>:16:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %17

; <label>:17:                                     ; preds = %block_0x0, %16
  %18 = phi i32* [ %15, %block_0x0 ], [ %_address_in_parent_stack_bt_, %16 ]
  %_new_load_ = load i32, i32* %18
  %19 = zext i32 %_new_load_ to i64, !mcsema_real_eip !34
  store i64 %19, i64* %XAX, !mcsema_real_eip !34
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !35
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !35
  %_ptr_bt_91 = bitcast i32* %21 to i8*
  %_offset_above_rbp_92 = sub i64 %20, %_local_end_to_int_
  %_pot_address_in_parent_stack_93 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_92
  %_cond1_94 = icmp ugt i8* %_ptr_bt_91, %_local_stack_end_ptr_
  %_cond2_1_95 = icmp ugt i8* %_ptr_bt_91, %_parent_stack_end_ptr_
  %_cond2_2_96 = icmp ult i8* %_ptr_bt_91, %_parent_stack_start_ptr_
  %_cond2_97 = or i1 %_cond2_1_95, %_cond2_2_96
  %_cond4_98 = icmp ule i8* %_pot_address_in_parent_stack_93, %_parent_stack_end_ptr_
  %_cond1_n_cond2_99 = and i1 %_cond1_94, %_cond2_97
  %_cond1_n_cond2_cond3_100 = and i1 %_cond1_n_cond2_99, %_cond4_98
  br i1 %_cond1_n_cond2_cond3_100, label %22, label %23

; <label>:22:                                     ; preds = %17
  %_address_in_parent_stack_bt_102 = bitcast i8* %_pot_address_in_parent_stack_93 to i32*
  br label %23

; <label>:23:                                     ; preds = %17, %22
  %24 = phi i32* [ %21, %17 ], [ %_address_in_parent_stack_bt_102, %22 ]
  %_new_load_103 = load i32, i32* %24
  %25 = zext i32 %_new_load_103 to i64, !mcsema_real_eip !35
  store i64 %25, i64* %R10, !mcsema_real_eip !35
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %R11, !mcsema_real_eip !36
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EDI.42 = bitcast i64* %XDI to i32*, !mcsema_real_eip !37
  %EDI_val.43 = load i32, i32* %EDI.42, !mcsema_real_eip !37
  %26 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !37
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !37
  store i32 %EDI_val.43, i32* %27, !mcsema_real_eip !37
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %ESI.45 = bitcast i64* %XSI to i32*, !mcsema_real_eip !38
  %ESI_val.46 = load i32, i32* %ESI.45, !mcsema_real_eip !38
  %28 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !38
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !38
  store i32 %ESI_val.46, i32* %29, !mcsema_real_eip !38
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -12
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %EDX.48 = bitcast i64* %XDX to i32*, !mcsema_real_eip !39
  %EDX_val.49 = load i32, i32* %EDX.48, !mcsema_real_eip !39
  %30 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !39
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !39
  store i32 %EDX_val.49, i32* %31, !mcsema_real_eip !39
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %ECX.51 = bitcast i64* %XCX to i32*, !mcsema_real_eip !40
  %ECX_val.52 = load i32, i32* %ECX.51, !mcsema_real_eip !40
  %32 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !40
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !40
  store i32 %ECX_val.52, i32* %33, !mcsema_real_eip !40
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -20
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %R8D.54 = bitcast i64* %R8 to i32*, !mcsema_real_eip !41
  %R8D_val.55 = load i32, i32* %R8D.54, !mcsema_real_eip !41
  %34 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !41
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !41
  store i32 %R8D_val.55, i32* %35, !mcsema_real_eip !41
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %R9D.57 = bitcast i64* %R9 to i32*, !mcsema_real_eip !42
  %R9D_val.58 = load i32, i32* %R9D.57, !mcsema_real_eip !42
  %36 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !42
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !42
  store i32 %R9D_val.58, i32* %37, !mcsema_real_eip !42
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -28
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %R10D.60 = bitcast i64* %R10 to i32*, !mcsema_real_eip !43
  %R10D_val.61 = load i32, i32* %R10D.60, !mcsema_real_eip !43
  %38 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !43
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !43
  store i32 %R10D_val.61, i32* %39, !mcsema_real_eip !43
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -32
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX.63 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.64 = load i32, i32* %EAX.63, !mcsema_real_eip !44
  %40 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !44
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !44
  store i32 %EAX_val.64, i32* %41, !mcsema_real_eip !44
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -28
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %42 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !45
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !45
  %_ptr_bt_106 = bitcast i32* %43 to i8*
  %_offset_above_rbp_107 = sub i64 %42, %_local_end_to_int_
  %_pot_address_in_parent_stack_108 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_107
  %_cond1_109 = icmp ugt i8* %_ptr_bt_106, %_local_stack_end_ptr_
  %_cond2_1_110 = icmp ugt i8* %_ptr_bt_106, %_parent_stack_end_ptr_
  %_cond2_2_111 = icmp ult i8* %_ptr_bt_106, %_parent_stack_start_ptr_
  %_cond2_112 = or i1 %_cond2_1_110, %_cond2_2_111
  %_cond4_113 = icmp ule i8* %_pot_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond1_n_cond2_114 = and i1 %_cond1_109, %_cond2_112
  %_cond1_n_cond2_cond3_115 = and i1 %_cond1_n_cond2_114, %_cond4_113
  br i1 %_cond1_n_cond2_cond3_115, label %44, label %45

; <label>:44:                                     ; preds = %23
  %_address_in_parent_stack_bt_117 = bitcast i8* %_pot_address_in_parent_stack_108 to i32*
  br label %45

; <label>:45:                                     ; preds = %23, %44
  %46 = phi i32* [ %43, %23 ], [ %_address_in_parent_stack_bt_117, %44 ]
  %_new_load_118 = load i32, i32* %46
  %47 = zext i32 %_new_load_118 to i64, !mcsema_real_eip !45
  store i64 %47, i64* %XAX, !mcsema_real_eip !45
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -32
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %48 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !46
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !46
  %_ptr_bt_121 = bitcast i32* %49 to i8*
  %_offset_above_rbp_122 = sub i64 %48, %_local_end_to_int_
  %_pot_address_in_parent_stack_123 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_122
  %_cond1_124 = icmp ugt i8* %_ptr_bt_121, %_local_stack_end_ptr_
  %_cond2_1_125 = icmp ugt i8* %_ptr_bt_121, %_parent_stack_end_ptr_
  %_cond2_2_126 = icmp ult i8* %_ptr_bt_121, %_parent_stack_start_ptr_
  %_cond2_127 = or i1 %_cond2_1_125, %_cond2_2_126
  %_cond4_128 = icmp ule i8* %_pot_address_in_parent_stack_123, %_parent_stack_end_ptr_
  %_cond1_n_cond2_129 = and i1 %_cond1_124, %_cond2_127
  %_cond1_n_cond2_cond3_130 = and i1 %_cond1_n_cond2_129, %_cond4_128
  br i1 %_cond1_n_cond2_cond3_130, label %50, label %51

; <label>:50:                                     ; preds = %45
  %_address_in_parent_stack_bt_132 = bitcast i8* %_pot_address_in_parent_stack_123 to i32*
  br label %51

; <label>:51:                                     ; preds = %45, %50
  %52 = phi i32* [ %49, %45 ], [ %_address_in_parent_stack_bt_132, %50 ]
  %_new_load_133 = load i32, i32* %52
  %EAX_val.68 = load i32, i32* %EAX.63, !mcsema_real_eip !46
  %53 = add i32 %EAX_val.68, %_new_load_133, !mcsema_real_eip !46
  %54 = xor i32 %53, %_new_load_133, !mcsema_real_eip !46
  %55 = xor i32 %54, %EAX_val.68, !mcsema_real_eip !46
  %56 = and i32 %55, 16, !mcsema_real_eip !46
  %57 = icmp ne i32 %56, 0, !mcsema_real_eip !46
  store i1 %57, i1* %AF, !mcsema_real_eip !46
  %58 = lshr i32 %53, 31, !mcsema_real_eip !46
  %59 = trunc i32 %58 to i1, !mcsema_real_eip !46
  store i1 %59, i1* %SF, !mcsema_real_eip !46
  %60 = icmp eq i32 %53, 0, !mcsema_real_eip !46
  store i1 %60, i1* %ZF, !mcsema_real_eip !46
  %61 = xor i32 %_new_load_133, %EAX_val.68, !mcsema_real_eip !46
  %62 = xor i32 %61, -1, !mcsema_real_eip !46
  %63 = and i32 %62, %54, !mcsema_real_eip !46
  %64 = lshr i32 %63, 31, !mcsema_real_eip !46
  %65 = and i32 %64, 1, !mcsema_real_eip !46
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !46
  store i1 %66, i1* %OF, !mcsema_real_eip !46
  %67 = trunc i32 %53 to i8, !mcsema_real_eip !46
  %68 = call i8 @llvm.ctpop.i8(i8 %67), !mcsema_real_eip !46
  %69 = trunc i8 %68 to i1, !mcsema_real_eip !46
  %70 = xor i1 %69, true, !mcsema_real_eip !46
  store i1 %70, i1* %PF, !mcsema_real_eip !46
  %71 = icmp ult i32 %53, %_new_load_133, !mcsema_real_eip !46
  store i1 %71, i1* %CF, !mcsema_real_eip !46
  %72 = zext i32 %53 to i64, !mcsema_real_eip !46
  store i64 %72, i64* %XAX, !mcsema_real_eip !46
  %R11_val.69 = load i64, i64* %R11, !mcsema_real_eip !47
  store i64 %R11_val.69, i64* %XDI, !mcsema_real_eip !47
  %EAX_val.71 = load i32, i32* %EAX.63, !mcsema_real_eip !48
  %73 = zext i32 %EAX_val.71 to i64, !mcsema_real_eip !48
  store i64 %73, i64* %XSI, !mcsema_real_eip !48
  %AL.72 = bitcast i64* %XAX to i8*, !mcsema_real_eip !49
  store i8 0, i8* %AL.72, !mcsema_real_eip !49
  %RDX_val.75 = load i64, i64* %XDX, !mcsema_real_eip !50
  %RCX_val.76 = load i64, i64* %XCX, !mcsema_real_eip !50
  %R8_val.77 = load i64, i64* %R8, !mcsema_real_eip !50
  %R9_val.78 = load i64, i64* %R9, !mcsema_real_eip !50
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_50 = bitcast i8* %_load_rsp_ptr_49 to i64*
  %_ptr_to_int_134 = ptrtoint i64* %_allin_new_bt_50 to i64
  %_offset_above_rbp_137 = sub i64 %_ptr_to_int_134, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_load_rsp_ptr_49, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_load_rsp_ptr_49, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_load_rsp_ptr_49, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  br i1 %_cond1_n_cond2_cond3_145, label %74, label %75

; <label>:74:                                     ; preds = %51
  %_address_in_parent_stack_bt_147 = bitcast i8* %_pot_address_in_parent_stack_138 to i64*
  br label %75

; <label>:75:                                     ; preds = %51, %74
  %76 = phi i64* [ %_allin_new_bt_50, %51 ], [ %_address_in_parent_stack_bt_147, %74 ]
  %_new_load_148 = load i64, i64* %76
  %_new_gep_51 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 8
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %_ptr_to_int_149 = ptrtoint i64* %_allin_new_bt_52 to i64
  %_offset_above_rbp_152 = sub i64 %_ptr_to_int_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  br i1 %_cond1_n_cond2_cond3_160, label %77, label %78

; <label>:77:                                     ; preds = %75
  %_address_in_parent_stack_bt_162 = bitcast i8* %_pot_address_in_parent_stack_153 to i64*
  br label %78

; <label>:78:                                     ; preds = %75, %77
  %79 = phi i64* [ %_allin_new_bt_52, %75 ], [ %_address_in_parent_stack_bt_162, %77 ]
  %_new_load_163 = load i64, i64* %79
  %_new_gep_53 = getelementptr i8, i8* %_new_gep_51, i64 8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %_ptr_to_int_164 = ptrtoint i64* %_allin_new_bt_54 to i64
  %_offset_above_rbp_167 = sub i64 %_ptr_to_int_164, %_local_end_to_int_
  %_pot_address_in_parent_stack_168 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_167
  %_cond1_169 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_170 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_171 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_172 = or i1 %_cond2_1_170, %_cond2_2_171
  %_cond4_173 = icmp ule i8* %_pot_address_in_parent_stack_168, %_parent_stack_end_ptr_
  %_cond1_n_cond2_174 = and i1 %_cond1_169, %_cond2_172
  %_cond1_n_cond2_cond3_175 = and i1 %_cond1_n_cond2_174, %_cond4_173
  br i1 %_cond1_n_cond2_cond3_175, label %80, label %81

; <label>:80:                                     ; preds = %78
  %_address_in_parent_stack_bt_177 = bitcast i8* %_pot_address_in_parent_stack_168 to i64*
  br label %81

; <label>:81:                                     ; preds = %78, %80
  %82 = phi i64* [ %_allin_new_bt_54, %78 ], [ %_address_in_parent_stack_bt_177, %80 ]
  %_new_load_178 = load i64, i64* %82
  %_new_gep_55 = getelementptr i8, i8* %_new_gep_53, i64 8
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %_ptr_to_int_179 = ptrtoint i64* %_allin_new_bt_56 to i64
  %_offset_above_rbp_182 = sub i64 %_ptr_to_int_179, %_local_end_to_int_
  %_pot_address_in_parent_stack_183 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_182
  %_cond1_184 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_185 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_186 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_187 = or i1 %_cond2_1_185, %_cond2_2_186
  %_cond4_188 = icmp ule i8* %_pot_address_in_parent_stack_183, %_parent_stack_end_ptr_
  %_cond1_n_cond2_189 = and i1 %_cond1_184, %_cond2_187
  %_cond1_n_cond2_cond3_190 = and i1 %_cond1_n_cond2_189, %_cond4_188
  br i1 %_cond1_n_cond2_cond3_190, label %83, label %84

; <label>:83:                                     ; preds = %81
  %_address_in_parent_stack_bt_192 = bitcast i8* %_pot_address_in_parent_stack_183 to i64*
  br label %84

; <label>:84:                                     ; preds = %81, %83
  %85 = phi i64* [ %_allin_new_bt_56, %81 ], [ %_address_in_parent_stack_bt_192, %83 ]
  %_new_load_193 = load i64, i64* %85
  %_new_gep_57 = getelementptr i8, i8* %_new_gep_55, i64 8
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %_ptr_to_int_194 = ptrtoint i64* %_allin_new_bt_58 to i64
  %_offset_above_rbp_197 = sub i64 %_ptr_to_int_194, %_local_end_to_int_
  %_pot_address_in_parent_stack_198 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_197
  %_cond1_199 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_200 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_201 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_202 = or i1 %_cond2_1_200, %_cond2_2_201
  %_cond4_203 = icmp ule i8* %_pot_address_in_parent_stack_198, %_parent_stack_end_ptr_
  %_cond1_n_cond2_204 = and i1 %_cond1_199, %_cond2_202
  %_cond1_n_cond2_cond3_205 = and i1 %_cond1_n_cond2_204, %_cond4_203
  br i1 %_cond1_n_cond2_cond3_205, label %86, label %87

; <label>:86:                                     ; preds = %84
  %_address_in_parent_stack_bt_207 = bitcast i8* %_pot_address_in_parent_stack_198 to i64*
  br label %87

; <label>:87:                                     ; preds = %84, %86
  %88 = phi i64* [ %_allin_new_bt_58, %84 ], [ %_address_in_parent_stack_bt_207, %86 ]
  %_new_load_208 = load i64, i64* %88
  %_new_gep_59 = getelementptr i8, i8* %_new_gep_57, i64 8
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %_ptr_to_int_209 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_212 = sub i64 %_ptr_to_int_209, %_local_end_to_int_
  %_pot_address_in_parent_stack_213 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_212
  %_cond1_214 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_215 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_216 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_217 = or i1 %_cond2_1_215, %_cond2_2_216
  %_cond4_218 = icmp ule i8* %_pot_address_in_parent_stack_213, %_parent_stack_end_ptr_
  %_cond1_n_cond2_219 = and i1 %_cond1_214, %_cond2_217
  %_cond1_n_cond2_cond3_220 = and i1 %_cond1_n_cond2_219, %_cond4_218
  br i1 %_cond1_n_cond2_cond3_220, label %89, label %90

; <label>:89:                                     ; preds = %87
  %_address_in_parent_stack_bt_222 = bitcast i8* %_pot_address_in_parent_stack_213 to i64*
  br label %90

; <label>:90:                                     ; preds = %87, %89
  %91 = phi i64* [ %_allin_new_bt_60, %87 ], [ %_address_in_parent_stack_bt_222, %89 ]
  %_new_load_223 = load i64, i64* %91
  %RSP_val.80 = load i64, i64* %XSP, !mcsema_real_eip !50
  %_new_gep_62 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %92 = sub i64 %RSP_val.80, 8, !mcsema_real_eip !50
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_63, !mcsema_real_eip !50
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_
  store i64 %92, i64* %XSP, !mcsema_real_eip !50
  %93 = call x86_64_sysvcc i64 @_printf(i64 %R11_val.69, i64 %73, i64 %RDX_val.75, i64 %RCX_val.76, i64 %R8_val.77, i64 %R9_val.78, i64 %_new_load_148, i64 %_new_load_163, i64 %_new_load_178, i64 %_new_load_193, i64 %_new_load_208, i64 %_new_load_223)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %93, i64* %XAX, !mcsema_real_eip !50
  %ECX_val.82 = load i32, i32* %ECX.51, !mcsema_real_eip !51
  store i1 false, i1* %CF, !mcsema_real_eip !51
  store i1 false, i1* %OF, !mcsema_real_eip !51
  store i1 false, i1* %SF, !mcsema_real_eip !51
  store i1 true, i1* %ZF, !mcsema_real_eip !51
  store i1 true, i1* %PF, !mcsema_real_eip !51
  store i1 undef, i1* %AF, !mcsema_real_eip !51
  store i64 0, i64* %XCX, !mcsema_real_eip !51
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -36
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %EAX_val.87 = load i32, i32* %EAX.63, !mcsema_real_eip !52
  %94 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !52
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.87, i32* %95, !mcsema_real_eip !52
  %ECX_val.89 = load i32, i32* %ECX.51, !mcsema_real_eip !53
  %96 = zext i32 %ECX_val.89 to i64, !mcsema_real_eip !53
  store i64 %96, i64* %XAX, !mcsema_real_eip !53
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !54
  %_new_gep_68 = getelementptr i8, i8* %_load_rsp_ptr_67, i64 48
  %97 = add i64 48, %RSP_val.90, !mcsema_real_eip !54
  %_trans_p2i_69 = ptrtoint i8* %_new_gep_68 to i64
  %_trans_p2i_70 = ptrtoint i8* %_load_rsp_ptr_67 to i64
  %_trans_xor_71 = xor i64 %_trans_p2i_69, %_trans_p2i_70
  %98 = xor i64 %_trans_xor_71, 48, !mcsema_real_eip !54
  %99 = and i64 %98, 16, !mcsema_real_eip !54
  %100 = icmp ne i64 %99, 0, !mcsema_real_eip !54
  store i1 %100, i1* %AF, !mcsema_real_eip !54
  %101 = lshr i64 %97, 63, !mcsema_real_eip !54
  %102 = trunc i64 %101 to i1, !mcsema_real_eip !54
  store i1 %102, i1* %SF, !mcsema_real_eip !54
  %_trans_icmp_eq_73 = icmp eq i64 %_trans_p2i_69, 0
  store i1 %_trans_icmp_eq_73, i1* %ZF, !mcsema_real_eip !54
  %_trans_xor_75 = xor i64 %_trans_p2i_70, 48
  %103 = xor i64 %_trans_xor_75, -1, !mcsema_real_eip !54
  %104 = and i64 %103, %_trans_xor_71, !mcsema_real_eip !54
  %105 = lshr i64 %104, 63, !mcsema_real_eip !54
  %106 = and i64 %105, 1, !mcsema_real_eip !54
  %107 = trunc i64 %106 to i1, !mcsema_real_eip !54
  store i1 %107, i1* %OF, !mcsema_real_eip !54
  %_trans_trunc_80 = trunc i64 %_trans_p2i_69 to i8
  %108 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_80), !mcsema_real_eip !54
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !54
  %110 = xor i1 %109, true, !mcsema_real_eip !54
  store i1 %110, i1* %PF, !mcsema_real_eip !54
  %_trans_icmp_ne_82 = icmp ne i64 %_trans_p2i_69, %RSP_val.90
  store i1 %_trans_icmp_ne_82, i1* %CF, !mcsema_real_eip !54
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_
  store i64 %97, i64* %XSP, !mcsema_real_eip !54
  %_allin_new_bt_84 = bitcast i8* %_new_gep_68 to i64*
  %_ptr_to_int_224 = ptrtoint i64* %_allin_new_bt_84 to i64
  %_offset_above_rbp_227 = sub i64 %_ptr_to_int_224, %_local_end_to_int_
  %_pot_address_in_parent_stack_228 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_227
  %_cond1_229 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_230 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_231 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_232 = or i1 %_cond2_1_230, %_cond2_2_231
  %_cond4_233 = icmp ule i8* %_pot_address_in_parent_stack_228, %_parent_stack_end_ptr_
  %_cond1_n_cond2_234 = and i1 %_cond1_229, %_cond2_232
  %_cond1_n_cond2_cond3_235 = and i1 %_cond1_n_cond2_234, %_cond4_233
  br i1 %_cond1_n_cond2_cond3_235, label %111, label %112

; <label>:111:                                    ; preds = %90
  %_address_in_parent_stack_bt_237 = bitcast i8* %_pot_address_in_parent_stack_228 to i64*
  br label %112

; <label>:112:                                    ; preds = %90, %111
  %113 = phi i64* [ %_allin_new_bt_84, %90 ], [ %_address_in_parent_stack_bt_237, %111 ]
  %_new_load_238 = load i64, i64* %113
  %_new_int2ptr_ = inttoptr i64 %_new_load_238 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_238, i64* %XBP, !mcsema_real_eip !55
  %_new_gep_85 = getelementptr i8, i8* %_new_gep_68, i64 8
  %114 = add i64 %97, 8, !mcsema_real_eip !55
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %114, i64* %XSP, !mcsema_real_eip !55
  %_new_gep_87 = getelementptr i8, i8* %_new_gep_85, i64 8
  %115 = add i64 %114, 8, !mcsema_real_eip !56
  %_allin_new_bt_88 = bitcast i8* %_new_gep_85 to i64*
  %_ptr_to_int_239 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_242 = sub i64 %_ptr_to_int_239, %_local_end_to_int_
  %_pot_address_in_parent_stack_243 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_242
  %_cond1_244 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_245 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_246 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_247 = or i1 %_cond2_1_245, %_cond2_2_246
  %_cond4_248 = icmp ule i8* %_pot_address_in_parent_stack_243, %_parent_stack_end_ptr_
  %_cond1_n_cond2_249 = and i1 %_cond1_244, %_cond2_247
  %_cond1_n_cond2_cond3_250 = and i1 %_cond1_n_cond2_249, %_cond4_248
  br i1 %_cond1_n_cond2_cond3_250, label %116, label %117

; <label>:116:                                    ; preds = %112
  %_address_in_parent_stack_bt_252 = bitcast i8* %_pot_address_in_parent_stack_243 to i64*
  br label %117

; <label>:117:                                    ; preds = %112, %116
  %118 = phi i64* [ %_allin_new_bt_88, %112 ], [ %_address_in_parent_stack_bt_252, %116 ]
  %_new_load_253 = load i64, i64* %118
  store i64 %_new_load_253, i64* %XIP, !mcsema_real_eip !56
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_
  store i64 %115, i64* %XSP, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 96}
!3 = !{i64 97}
!4 = !{i64 100}
!5 = !{i64 101}
!6 = !{i64 105}
!7 = !{i64 110}
!8 = !{i64 115}
!9 = !{i64 120}
!10 = !{i64 126}
!11 = !{i64 132}
!12 = !{i64 138}
!13 = !{i64 144}
!14 = !{i64 149}
!15 = !{i64 156}
!16 = !{i64 159}
!17 = !{i64 163}
!18 = !{i64 165}
!19 = !{i64 167}
!20 = !{i64 170}
!21 = !{i64 173}
!22 = !{i64 176}
!23 = !{i64 183}
!24 = !{i64 191}
!25 = !{i64 194}
!26 = !{i64 198}
!27 = !{i64 203}
!28 = !{i64 207}
!29 = !{i64 208}
!30 = !{i64 209}
!31 = !{i64 0}
!32 = !{i64 1}
!33 = !{i64 4}
!34 = !{i64 8}
!35 = !{i64 11}
!36 = !{i64 15}
!37 = !{i64 25}
!38 = !{i64 28}
!39 = !{i64 31}
!40 = !{i64 34}
!41 = !{i64 37}
!42 = !{i64 41}
!43 = !{i64 45}
!44 = !{i64 49}
!45 = !{i64 52}
!46 = !{i64 55}
!47 = !{i64 58}
!48 = !{i64 61}
!49 = !{i64 63}
!50 = !{i64 65}
!51 = !{i64 70}
!52 = !{i64 72}
!53 = !{i64 75}
!54 = !{i64 77}
!55 = !{i64 81}
!56 = !{i64 82}
