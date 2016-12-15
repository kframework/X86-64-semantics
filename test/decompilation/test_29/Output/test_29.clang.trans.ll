; ModuleID = 'Output/test_29.clang.trans.bc'
source_filename = "Output/test_29.clang.bc"
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

%0 = type <{ [16 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xee = internal constant %0 <{ [16 x i8] c"%d %d %d %d %d\0A\00" }>, align 64
@data_0x100 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\87\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"^\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_90(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  br label %block_0x90, !mcsema_real_eip !2

block_0x90:                                       ; preds = %entry
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
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -48
  %2 = sub i64 %RSP_val.3, 48, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 48, !mcsema_real_eip !4
  %4 = and i64 %3, 16, !mcsema_real_eip !4
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !4
  store i1 %5, i1* %AF, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !4
  %8 = xor i1 %7, true, !mcsema_real_eip !4
  store i1 %8, i1* %PF, !mcsema_real_eip !4
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !4
  %9 = lshr i64 %2, 63, !mcsema_real_eip !4
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !4
  store i1 %10, i1* %SF, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 48
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 48
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !5
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -36
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %17, !mcsema_real_eip !6
  br label %block_0xa6, !mcsema_real_eip !7

block_0xa6:                                       ; preds = %block_0xb0, %block_0x90
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -36
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !7
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !7
  %20 = load i32, i32* %19, !mcsema_real_eip !7
  %21 = sub i32 %20, 5, !mcsema_real_eip !7
  %22 = xor i32 %21, %20, !mcsema_real_eip !7
  %23 = xor i32 %22, 5, !mcsema_real_eip !7
  %24 = and i32 %23, 16, !mcsema_real_eip !7
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !7
  store i1 %25, i1* %AF, !mcsema_real_eip !7
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !7
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !7
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !7
  %29 = xor i1 %28, true, !mcsema_real_eip !7
  store i1 %29, i1* %PF, !mcsema_real_eip !7
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !7
  store i1 %30, i1* %ZF, !mcsema_real_eip !7
  %31 = lshr i32 %21, 31, !mcsema_real_eip !7
  %32 = trunc i32 %31 to i1, !mcsema_real_eip !7
  store i1 %32, i1* %SF, !mcsema_real_eip !7
  %33 = icmp ult i32 %20, 5, !mcsema_real_eip !7
  store i1 %33, i1* %CF, !mcsema_real_eip !7
  %34 = xor i32 %20, 5, !mcsema_real_eip !7
  %35 = and i32 %34, %22, !mcsema_real_eip !7
  %36 = lshr i32 %35, 31, !mcsema_real_eip !7
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !7
  store i1 %37, i1* %OF, !mcsema_real_eip !7
  %38 = icmp eq i1 %32, %37, !mcsema_real_eip !8
  br i1 %38, label %block_0xe6, label %block_0xb0, !mcsema_real_eip !8

block_0xb0:                                       ; preds = %block_0xa6
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !9
  store i64 %39, i64* %XSI, !mcsema_real_eip !9
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !10
  store i32 5, i32* %40, !mcsema_real_eip !10
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -28
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %41 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !11
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !11
  store i32 6, i32* %42, !mcsema_real_eip !11
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %43 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !12
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !12
  store i32 7, i32* %44, !mcsema_real_eip !12
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -20
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %45 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !13
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !13
  store i32 8, i32* %46, !mcsema_real_eip !13
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -36
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !14
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !14
  %49 = load i32, i32* %48, !mcsema_real_eip !14
  %50 = zext i32 %49 to i64, !mcsema_real_eip !14
  store i64 %50, i64* %XDI, !mcsema_real_eip !14
  %_load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_40, i64 -8
  %51 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !15
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_42, !mcsema_real_eip !15
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %51, i64* %XSP, !mcsema_real_eip !15
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_41, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_71)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -36
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %52 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !16
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !16
  %54 = load i32, i32* %53, !mcsema_real_eip !16
  %55 = zext i32 %54 to i64, !mcsema_real_eip !16
  store i64 %55, i64* %XAX, !mcsema_real_eip !16
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !17
  %56 = add i32 1, %EAX_val.23, !mcsema_real_eip !17
  %57 = xor i32 %56, %EAX_val.23, !mcsema_real_eip !17
  %58 = xor i32 %57, 1, !mcsema_real_eip !17
  %59 = and i32 %58, 16, !mcsema_real_eip !17
  %60 = icmp ne i32 %59, 0, !mcsema_real_eip !17
  store i1 %60, i1* %AF, !mcsema_real_eip !17
  %61 = lshr i32 %56, 31, !mcsema_real_eip !17
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !17
  store i1 %62, i1* %SF, !mcsema_real_eip !17
  %63 = icmp eq i32 %56, 0, !mcsema_real_eip !17
  store i1 %63, i1* %ZF, !mcsema_real_eip !17
  %64 = xor i32 %EAX_val.23, 1, !mcsema_real_eip !17
  %65 = xor i32 %64, -1, !mcsema_real_eip !17
  %66 = and i32 %65, %57, !mcsema_real_eip !17
  %67 = lshr i32 %66, 31, !mcsema_real_eip !17
  %68 = and i32 %67, 1, !mcsema_real_eip !17
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !17
  store i1 %69, i1* %OF, !mcsema_real_eip !17
  %70 = trunc i32 %56 to i8, !mcsema_real_eip !17
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !17
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !17
  %73 = xor i1 %72, true, !mcsema_real_eip !17
  store i1 %73, i1* %PF, !mcsema_real_eip !17
  %74 = icmp ult i32 %56, %EAX_val.23, !mcsema_real_eip !17
  store i1 %74, i1* %CF, !mcsema_real_eip !17
  %75 = zext i32 %56 to i64, !mcsema_real_eip !17
  store i64 %75, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.26 = load i32, i32* %EAX.22, !mcsema_real_eip !18
  store i32 %EAX_val.26, i32* %53, !mcsema_real_eip !18
  br label %block_0xa6, !mcsema_real_eip !19

block_0xe6:                                       ; preds = %block_0xa6
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.8 = load i32, i32* %EAX.7, !mcsema_real_eip !20
  store i1 false, i1* %CF, !mcsema_real_eip !20
  store i1 false, i1* %OF, !mcsema_real_eip !20
  store i1 false, i1* %SF, !mcsema_real_eip !20
  store i1 true, i1* %ZF, !mcsema_real_eip !20
  store i1 true, i1* %PF, !mcsema_real_eip !20
  store i1 undef, i1* %AF, !mcsema_real_eip !20
  store i64 0, i64* %XAX, !mcsema_real_eip !20
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 48
  %76 = add i64 48, %RSP_val.11, !mcsema_real_eip !21
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %77 = xor i64 %_trans_xor_53, 48, !mcsema_real_eip !21
  %78 = and i64 %77, 16, !mcsema_real_eip !21
  %79 = icmp ne i64 %78, 0, !mcsema_real_eip !21
  store i1 %79, i1* %AF, !mcsema_real_eip !21
  %80 = lshr i64 %76, 63, !mcsema_real_eip !21
  %81 = trunc i64 %80 to i1, !mcsema_real_eip !21
  store i1 %81, i1* %SF, !mcsema_real_eip !21
  %_trans_icmp_eq_55 = icmp eq i64 %_trans_p2i_51, 0
  store i1 %_trans_icmp_eq_55, i1* %ZF, !mcsema_real_eip !21
  %_trans_xor_57 = xor i64 %_trans_p2i_52, 48
  %82 = xor i64 %_trans_xor_57, -1, !mcsema_real_eip !21
  %83 = and i64 %82, %_trans_xor_53, !mcsema_real_eip !21
  %84 = lshr i64 %83, 63, !mcsema_real_eip !21
  %85 = and i64 %84, 1, !mcsema_real_eip !21
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !21
  store i1 %86, i1* %OF, !mcsema_real_eip !21
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %87 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !21
  %88 = trunc i8 %87 to i1, !mcsema_real_eip !21
  %89 = xor i1 %88, true, !mcsema_real_eip !21
  store i1 %89, i1* %PF, !mcsema_real_eip !21
  %_trans_icmp_ne_64 = icmp ne i64 %_trans_p2i_51, %RSP_val.11
  store i1 %_trans_icmp_ne_64, i1* %CF, !mcsema_real_eip !21
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %76, i64* %XSP, !mcsema_real_eip !21
  %_allin_new_bt_66 = bitcast i8* %_new_gep_50 to i64*
  %90 = load i64, i64* %_allin_new_bt_66, !mcsema_real_eip !22
  %_new_int2ptr_ = inttoptr i64 %90 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %90, i64* %XBP, !mcsema_real_eip !22
  %_new_gep_67 = getelementptr i8, i8* %_new_gep_50, i64 8
  %91 = add i64 %76, 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_
  store i64 %91, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_69 = getelementptr i8, i8* %_new_gep_67, i64 8
  %92 = add i64 %91, 8, !mcsema_real_eip !23
  %_allin_new_bt_70 = bitcast i8* %_new_gep_67 to i64*
  %93 = load i64, i64* %_allin_new_bt_70, !mcsema_real_eip !23
  store i64 %93, i64* %XIP, !mcsema_real_eip !23
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_
  store i64 %92, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !24
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !24
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !24
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !24
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !24
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !24
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !24
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !24
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !24
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !24
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !24
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !24
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !24
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !24
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !24
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !24
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !24
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !24
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !24
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !24
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !24
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !24
  br label %block_0x0, !mcsema_real_eip !24

block_0x0:                                        ; preds = %entry
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !24
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !24
  %1 = sub i64 %RSP_val.28, 8, !mcsema_real_eip !24
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !24
  store i64 %RBP_val.27, i64* %2, !mcsema_real_eip !24
  store i64 %1, i64* %XSP, !mcsema_real_eip !24
  store i64 %1, i64* %XBP, !mcsema_real_eip !25
  %3 = sub i64 %1, 32, !mcsema_real_eip !26
  %4 = xor i64 %3, %1, !mcsema_real_eip !26
  %5 = xor i64 %4, 32, !mcsema_real_eip !26
  %6 = and i64 %5, 16, !mcsema_real_eip !26
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !26
  store i1 %7, i1* %AF, !mcsema_real_eip !26
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !26
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !26
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !26
  %11 = xor i1 %10, true, !mcsema_real_eip !26
  store i1 %11, i1* %PF, !mcsema_real_eip !26
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !26
  store i1 %12, i1* %ZF, !mcsema_real_eip !26
  %13 = lshr i64 %3, 63, !mcsema_real_eip !26
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !26
  store i1 %14, i1* %SF, !mcsema_real_eip !26
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !26
  store i1 %15, i1* %CF, !mcsema_real_eip !26
  %16 = xor i64 %1, 32, !mcsema_real_eip !26
  %17 = and i64 %16, %4, !mcsema_real_eip !26
  %18 = lshr i64 %17, 63, !mcsema_real_eip !26
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !26
  store i1 %19, i1* %OF, !mcsema_real_eip !26
  store i64 %3, i64* %XSP, !mcsema_real_eip !26
  %20 = add i64 %1, -4, !mcsema_real_eip !27
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !27
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !27
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !27
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !27
  store i32 %EDI_val.33, i32* %22, !mcsema_real_eip !27
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !28
  %23 = add i64 %RBP_val.34, -16, !mcsema_real_eip !28
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !28
  %RSI_val.35 = load i64, i64* %XSI, !mcsema_real_eip !28
  store i64 %RSI_val.35, i64* %24, !mcsema_real_eip !28
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !29
  %25 = add i64 %RBP_val.36, -20, !mcsema_real_eip !29
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !29
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !29
  store i32 3, i32* %27, !mcsema_real_eip !29
  br label %block_0x16, !mcsema_real_eip !30

block_0x16:                                       ; preds = %block_0x22, %block_0x0
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !30
  %28 = add i64 %RBP_val.37, -20, !mcsema_real_eip !30
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !30
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !30
  %31 = load i32, i32* %30, !mcsema_real_eip !30
  %32 = zext i32 %31 to i64, !mcsema_real_eip !30
  store i64 %32, i64* %XAX, !mcsema_real_eip !30
  %33 = add i64 %RBP_val.37, -4, !mcsema_real_eip !31
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !31
  %EAX.39 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.40 = load i32, i32* %EAX.39, !mcsema_real_eip !31
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !31
  %36 = load i32, i32* %35, !mcsema_real_eip !31
  %37 = sub i32 %EAX_val.40, %36, !mcsema_real_eip !31
  %38 = xor i32 %37, %EAX_val.40, !mcsema_real_eip !31
  %39 = xor i32 %38, %36, !mcsema_real_eip !31
  %40 = and i32 %39, 16, !mcsema_real_eip !31
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !31
  store i1 %41, i1* %AF, !mcsema_real_eip !31
  %42 = trunc i32 %37 to i8, !mcsema_real_eip !31
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !31
  %44 = trunc i8 %43 to i1, !mcsema_real_eip !31
  %45 = xor i1 %44, true, !mcsema_real_eip !31
  store i1 %45, i1* %PF, !mcsema_real_eip !31
  %46 = icmp eq i32 %37, 0, !mcsema_real_eip !31
  store i1 %46, i1* %ZF, !mcsema_real_eip !31
  %47 = lshr i32 %37, 31, !mcsema_real_eip !31
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !31
  store i1 %48, i1* %SF, !mcsema_real_eip !31
  %49 = icmp ult i32 %EAX_val.40, %36, !mcsema_real_eip !31
  store i1 %49, i1* %CF, !mcsema_real_eip !31
  %50 = xor i32 %EAX_val.40, %36, !mcsema_real_eip !31
  %51 = and i32 %50, %38, !mcsema_real_eip !31
  %52 = lshr i32 %51, 31, !mcsema_real_eip !31
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !31
  store i1 %53, i1* %OF, !mcsema_real_eip !31
  %54 = or i1 %49, %46, !mcsema_real_eip !32
  br i1 %54, label %block_0x4d, label %block_0x22, !mcsema_real_eip !32

block_0x22:                                       ; preds = %block_0x16
  %55 = add i64 %RBP_val.37, -16, !mcsema_real_eip !33
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !33
  %57 = load i64, i64* %56, !mcsema_real_eip !33
  store i64 %57, i64* %XAX, !mcsema_real_eip !33
  %58 = load i32, i32* %30, !mcsema_real_eip !34
  %59 = zext i32 %58 to i64, !mcsema_real_eip !34
  store i64 %59, i64* %XCX, !mcsema_real_eip !34
  %ECX.67 = bitcast i64* %XCX to i32*, !mcsema_real_eip !35
  %ECX_val.68 = load i32, i32* %ECX.67, !mcsema_real_eip !35
  %60 = sub i32 %ECX_val.68, 1, !mcsema_real_eip !35
  %61 = xor i32 %60, %ECX_val.68, !mcsema_real_eip !35
  %62 = xor i32 %61, 1, !mcsema_real_eip !35
  %63 = and i32 %62, 16, !mcsema_real_eip !35
  %64 = icmp ne i32 %63, 0, !mcsema_real_eip !35
  store i1 %64, i1* %AF, !mcsema_real_eip !35
  %65 = trunc i32 %60 to i8, !mcsema_real_eip !35
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !35
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !35
  %68 = xor i1 %67, true, !mcsema_real_eip !35
  store i1 %68, i1* %PF, !mcsema_real_eip !35
  %69 = icmp eq i32 %60, 0, !mcsema_real_eip !35
  store i1 %69, i1* %ZF, !mcsema_real_eip !35
  %70 = lshr i32 %60, 31, !mcsema_real_eip !35
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !35
  store i1 %71, i1* %SF, !mcsema_real_eip !35
  %72 = icmp ult i32 %ECX_val.68, 1, !mcsema_real_eip !35
  store i1 %72, i1* %CF, !mcsema_real_eip !35
  %73 = xor i32 %ECX_val.68, 1, !mcsema_real_eip !35
  %74 = and i32 %73, %61, !mcsema_real_eip !35
  %75 = lshr i32 %74, 31, !mcsema_real_eip !35
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !35
  store i1 %76, i1* %OF, !mcsema_real_eip !35
  %77 = zext i32 %60 to i64, !mcsema_real_eip !35
  store i64 %77, i64* %XCX, !mcsema_real_eip !35
  %ECX_val.70 = load i32, i32* %ECX.67, !mcsema_real_eip !36
  %78 = zext i32 %ECX_val.70 to i64, !mcsema_real_eip !36
  store i64 %78, i64* %XCX, !mcsema_real_eip !36
  %ECX_val.72 = load i32, i32* %ECX.67, !mcsema_real_eip !37
  %79 = zext i32 %ECX_val.72 to i64, !mcsema_real_eip !37
  store i64 %79, i64* %XDX, !mcsema_real_eip !37
  %80 = mul i64 %79, 4, !mcsema_real_eip !38
  %81 = add i64 %57, %80, !mcsema_real_eip !38
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !38
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !38
  %84 = load i32, i32* %83, !mcsema_real_eip !38
  %85 = zext i32 %84 to i64, !mcsema_real_eip !38
  store i64 %85, i64* %XCX, !mcsema_real_eip !38
  %86 = load i64, i64* %56, !mcsema_real_eip !39
  store i64 %86, i64* %XAX, !mcsema_real_eip !39
  %87 = load i32, i32* %30, !mcsema_real_eip !40
  %88 = zext i32 %87 to i64, !mcsema_real_eip !40
  store i64 %88, i64* %XSI, !mcsema_real_eip !40
  %ESI.77 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.78 = load i32, i32* %ESI.77, !mcsema_real_eip !41
  %89 = zext i32 %ESI_val.78 to i64, !mcsema_real_eip !41
  store i64 %89, i64* %XDX, !mcsema_real_eip !41
  %90 = mul i64 %89, 4, !mcsema_real_eip !42
  %91 = add i64 %86, %90, !mcsema_real_eip !42
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !42
  %ECX_val.82 = load i32, i32* %ECX.67, !mcsema_real_eip !42
  %93 = inttoptr i64 %91 to i32*, !mcsema_real_eip !42
  store i32 %ECX_val.82, i32* %93, !mcsema_real_eip !42
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !43
  %94 = add i64 %RBP_val.83, -20, !mcsema_real_eip !43
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !43
  %96 = inttoptr i64 %94 to i32*, !mcsema_real_eip !43
  %97 = load i32, i32* %96, !mcsema_real_eip !43
  %98 = zext i32 %97 to i64, !mcsema_real_eip !43
  store i64 %98, i64* %XAX, !mcsema_real_eip !43
  %EAX_val.85 = load i32, i32* %EAX.39, !mcsema_real_eip !44
  %99 = add i32 -1, %EAX_val.85, !mcsema_real_eip !44
  %100 = xor i32 %99, %EAX_val.85, !mcsema_real_eip !44
  %101 = xor i32 %100, -1, !mcsema_real_eip !44
  %102 = and i32 %101, 16, !mcsema_real_eip !44
  %103 = icmp ne i32 %102, 0, !mcsema_real_eip !44
  store i1 %103, i1* %AF, !mcsema_real_eip !44
  %104 = lshr i32 %99, 31, !mcsema_real_eip !44
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !44
  store i1 %105, i1* %SF, !mcsema_real_eip !44
  %106 = icmp eq i32 %99, 0, !mcsema_real_eip !44
  store i1 %106, i1* %ZF, !mcsema_real_eip !44
  %107 = xor i32 %EAX_val.85, -1, !mcsema_real_eip !44
  %108 = and i32 %EAX_val.85, %100, !mcsema_real_eip !44
  %109 = lshr i32 %108, 31, !mcsema_real_eip !44
  %110 = and i32 %109, 1, !mcsema_real_eip !44
  %111 = trunc i32 %110 to i1, !mcsema_real_eip !44
  store i1 %111, i1* %OF, !mcsema_real_eip !44
  %112 = trunc i32 %99 to i8, !mcsema_real_eip !44
  %113 = call i8 @llvm.ctpop.i8(i8 %112), !mcsema_real_eip !44
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !44
  %115 = xor i1 %114, true, !mcsema_real_eip !44
  store i1 %115, i1* %PF, !mcsema_real_eip !44
  %116 = icmp ult i32 %99, %EAX_val.85, !mcsema_real_eip !44
  store i1 %116, i1* %CF, !mcsema_real_eip !44
  %117 = zext i32 %99 to i64, !mcsema_real_eip !44
  store i64 %117, i64* %XAX, !mcsema_real_eip !44
  %EAX_val.88 = load i32, i32* %EAX.39, !mcsema_real_eip !45
  store i32 %EAX_val.88, i32* %96, !mcsema_real_eip !45
  br label %block_0x16, !mcsema_real_eip !46

block_0x4d:                                       ; preds = %block_0x16
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, !mcsema_real_eip !47
  %118 = load i32, i32* %35, !mcsema_real_eip !48
  %119 = zext i32 %118 to i64, !mcsema_real_eip !48
  store i64 %119, i64* %XSI, !mcsema_real_eip !48
  %120 = add i64 %RBP_val.37, -16, !mcsema_real_eip !49
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !49
  %122 = load i64, i64* %121, !mcsema_real_eip !49
  store i64 %122, i64* %XAX, !mcsema_real_eip !49
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !50
  %124 = inttoptr i64 %122 to i32*, !mcsema_real_eip !50
  %125 = load i32, i32* %124, !mcsema_real_eip !50
  %126 = zext i32 %125 to i64, !mcsema_real_eip !50
  store i64 %126, i64* %XDX, !mcsema_real_eip !50
  %127 = load i64, i64* %121, !mcsema_real_eip !51
  store i64 %127, i64* %XAX, !mcsema_real_eip !51
  %128 = add i64 %127, 4, !mcsema_real_eip !52
  %129 = inttoptr i64 %128 to i64*, !mcsema_real_eip !52
  %130 = inttoptr i64 %128 to i32*, !mcsema_real_eip !52
  %131 = load i32, i32* %130, !mcsema_real_eip !52
  %132 = zext i32 %131 to i64, !mcsema_real_eip !52
  store i64 %132, i64* %XCX, !mcsema_real_eip !52
  %133 = load i64, i64* %121, !mcsema_real_eip !53
  store i64 %133, i64* %XAX, !mcsema_real_eip !53
  %134 = add i64 %133, 8, !mcsema_real_eip !54
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !54
  %136 = inttoptr i64 %134 to i32*, !mcsema_real_eip !54
  %137 = load i32, i32* %136, !mcsema_real_eip !54
  %138 = zext i32 %137 to i64, !mcsema_real_eip !54
  store i64 %138, i64* %R8, !mcsema_real_eip !54
  %139 = load i64, i64* %121, !mcsema_real_eip !55
  store i64 %139, i64* %XAX, !mcsema_real_eip !55
  %140 = add i64 %139, 12, !mcsema_real_eip !56
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !56
  %142 = inttoptr i64 %140 to i32*, !mcsema_real_eip !56
  %143 = load i32, i32* %142, !mcsema_real_eip !56
  %144 = zext i32 %143 to i64, !mcsema_real_eip !56
  store i64 %144, i64* %R9, !mcsema_real_eip !56
  %AL.50 = bitcast i64* %XAX to i8*, !mcsema_real_eip !57
  store i8 0, i8* %AL.50, !mcsema_real_eip !57
  %RSP_val.57 = load i64, i64* %XSP, !mcsema_real_eip !58
  %145 = inttoptr i64 %RSP_val.57 to i64*, !mcsema_real_eip !58
  %146 = load i64, i64* %145, !mcsema_real_eip !58
  %147 = add i64 %RSP_val.57, 8, !mcsema_real_eip !58
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !58
  %149 = load i64, i64* %148, !mcsema_real_eip !58
  %150 = add i64 %147, 8, !mcsema_real_eip !58
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !58
  %152 = load i64, i64* %151, !mcsema_real_eip !58
  %153 = add i64 %150, 8, !mcsema_real_eip !58
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !58
  %155 = load i64, i64* %154, !mcsema_real_eip !58
  %156 = add i64 %153, 8, !mcsema_real_eip !58
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !58
  %158 = load i64, i64* %157, !mcsema_real_eip !58
  %159 = add i64 %156, 8, !mcsema_real_eip !58
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !58
  %161 = load i64, i64* %160, !mcsema_real_eip !58
  %162 = sub i64 %RSP_val.57, 8, !mcsema_real_eip !58
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !58
  store i64 -2415393069852865332, i64* %163, !mcsema_real_eip !58
  store i64 %162, i64* %XSP, !mcsema_real_eip !58
  %164 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xee to i64), i64 %119, i64 %126, i64 %132, i64 %138, i64 %144, i64 %146, i64 %149, i64 %152, i64 %155, i64 %158, i64 %161), !mcsema_real_eip !58
  store i64 %164, i64* %XAX, !mcsema_real_eip !58
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !59
  %165 = add i64 %RBP_val.59, -24, !mcsema_real_eip !59
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !59
  %EAX_val.61 = load i32, i32* %EAX.39, !mcsema_real_eip !59
  %167 = inttoptr i64 %165 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.61, i32* %167, !mcsema_real_eip !59
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !60
  %168 = add i64 32, %RSP_val.62, !mcsema_real_eip !60
  %169 = xor i64 %168, %RSP_val.62, !mcsema_real_eip !60
  %170 = xor i64 %169, 32, !mcsema_real_eip !60
  %171 = and i64 %170, 16, !mcsema_real_eip !60
  %172 = icmp ne i64 %171, 0, !mcsema_real_eip !60
  store i1 %172, i1* %AF, !mcsema_real_eip !60
  %173 = lshr i64 %168, 63, !mcsema_real_eip !60
  %174 = trunc i64 %173 to i1, !mcsema_real_eip !60
  store i1 %174, i1* %SF, !mcsema_real_eip !60
  %175 = icmp eq i64 %168, 0, !mcsema_real_eip !60
  store i1 %175, i1* %ZF, !mcsema_real_eip !60
  %176 = xor i64 %RSP_val.62, 32, !mcsema_real_eip !60
  %177 = xor i64 %176, -1, !mcsema_real_eip !60
  %178 = and i64 %177, %169, !mcsema_real_eip !60
  %179 = lshr i64 %178, 63, !mcsema_real_eip !60
  %180 = and i64 %179, 1, !mcsema_real_eip !60
  %181 = trunc i64 %180 to i1, !mcsema_real_eip !60
  store i1 %181, i1* %OF, !mcsema_real_eip !60
  %182 = trunc i64 %168 to i8, !mcsema_real_eip !60
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !60
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !60
  %185 = xor i1 %184, true, !mcsema_real_eip !60
  store i1 %185, i1* %PF, !mcsema_real_eip !60
  %186 = icmp ult i64 %168, %RSP_val.62, !mcsema_real_eip !60
  store i1 %186, i1* %CF, !mcsema_real_eip !60
  store i64 %168, i64* %XSP, !mcsema_real_eip !60
  %187 = inttoptr i64 %168 to i64*, !mcsema_real_eip !61
  %188 = load i64, i64* %187, !mcsema_real_eip !61
  store i64 %188, i64* %XBP, !mcsema_real_eip !61
  %189 = add i64 %168, 8, !mcsema_real_eip !61
  store i64 %189, i64* %XSP, !mcsema_real_eip !61
  %190 = add i64 %189, 8, !mcsema_real_eip !62
  %191 = inttoptr i64 %189 to i64*, !mcsema_real_eip !62
  %192 = load i64, i64* %191, !mcsema_real_eip !62
  store i64 %192, i64* %XIP, !mcsema_real_eip !62
  store i64 %190, i64* %XSP, !mcsema_real_eip !62
  ret void, !mcsema_real_eip !62
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
define x86_64_sysvcc void @sub_90.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  br label %block_0x90, !mcsema_real_eip !2

block_0x90:                                       ; preds = %entry
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
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -48
  %2 = sub i64 %RSP_val.3, 48, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 48, !mcsema_real_eip !4
  %4 = and i64 %3, 16, !mcsema_real_eip !4
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !4
  store i1 %5, i1* %AF, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !4
  %8 = xor i1 %7, true, !mcsema_real_eip !4
  store i1 %8, i1* %PF, !mcsema_real_eip !4
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !4
  %9 = lshr i64 %2, 63, !mcsema_real_eip !4
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !4
  store i1 %10, i1* %SF, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 48
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 48
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !5
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -36
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %17, !mcsema_real_eip !6
  br label %block_0xa6, !mcsema_real_eip !7

block_0xa6:                                       ; preds = %59, %block_0x90
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -36
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !7
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %19 to i8*
  %_offset_above_rbp_ = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0xa6
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0xa6, %20
  %22 = phi i32* [ %19, %block_0xa6 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  %23 = sub i32 %_new_load_, 5, !mcsema_real_eip !7
  %24 = xor i32 %23, %_new_load_, !mcsema_real_eip !7
  %25 = xor i32 %24, 5, !mcsema_real_eip !7
  %26 = and i32 %25, 16, !mcsema_real_eip !7
  %27 = icmp ne i32 %26, 0, !mcsema_real_eip !7
  store i1 %27, i1* %AF, !mcsema_real_eip !7
  %28 = trunc i32 %23 to i8, !mcsema_real_eip !7
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !7
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !7
  %31 = xor i1 %30, true, !mcsema_real_eip !7
  store i1 %31, i1* %PF, !mcsema_real_eip !7
  %32 = icmp eq i32 %23, 0, !mcsema_real_eip !7
  store i1 %32, i1* %ZF, !mcsema_real_eip !7
  %33 = lshr i32 %23, 31, !mcsema_real_eip !7
  %34 = trunc i32 %33 to i1, !mcsema_real_eip !7
  store i1 %34, i1* %SF, !mcsema_real_eip !7
  %35 = icmp ult i32 %_new_load_, 5, !mcsema_real_eip !7
  store i1 %35, i1* %CF, !mcsema_real_eip !7
  %36 = xor i32 %_new_load_, 5, !mcsema_real_eip !7
  %37 = and i32 %36, %24, !mcsema_real_eip !7
  %38 = lshr i32 %37, 31, !mcsema_real_eip !7
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !7
  store i1 %39, i1* %OF, !mcsema_real_eip !7
  %40 = icmp eq i1 %34, %39, !mcsema_real_eip !8
  br i1 %40, label %block_0xe6, label %block_0xb0, !mcsema_real_eip !8

block_0xb0:                                       ; preds = %21
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -32
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %41 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !9
  store i64 %41, i64* %XSI, !mcsema_real_eip !9
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !10
  store i32 5, i32* %42, !mcsema_real_eip !10
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -28
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %43 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !11
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !11
  store i32 6, i32* %44, !mcsema_real_eip !11
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %45 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !12
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !12
  store i32 7, i32* %46, !mcsema_real_eip !12
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -20
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !13
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !13
  store i32 8, i32* %48, !mcsema_real_eip !13
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -36
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %49 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !14
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !14
  %_ptr_bt_75 = bitcast i32* %50 to i8*
  %_offset_above_rbp_76 = sub i64 %49, %_local_end_to_int_
  %_pot_address_in_parent_stack_77 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_76
  %_cond1_78 = icmp ugt i8* %_ptr_bt_75, %_local_stack_end_ptr_
  %_cond2_1_79 = icmp ugt i8* %_ptr_bt_75, %_parent_stack_end_ptr_
  %_cond2_2_80 = icmp ult i8* %_ptr_bt_75, %_parent_stack_start_ptr_
  %_cond2_81 = or i1 %_cond2_1_79, %_cond2_2_80
  %_cond4_82 = icmp ule i8* %_pot_address_in_parent_stack_77, %_parent_stack_end_ptr_
  %_cond1_n_cond2_83 = and i1 %_cond1_78, %_cond2_81
  %_cond1_n_cond2_cond3_84 = and i1 %_cond1_n_cond2_83, %_cond4_82
  br i1 %_cond1_n_cond2_cond3_84, label %51, label %52

; <label>:51:                                     ; preds = %block_0xb0
  %_address_in_parent_stack_bt_86 = bitcast i8* %_pot_address_in_parent_stack_77 to i32*
  br label %52

; <label>:52:                                     ; preds = %block_0xb0, %51
  %53 = phi i32* [ %50, %block_0xb0 ], [ %_address_in_parent_stack_bt_86, %51 ]
  %_new_load_87 = load i32, i32* %53
  %54 = zext i32 %_new_load_87 to i64, !mcsema_real_eip !14
  store i64 %54, i64* %XDI, !mcsema_real_eip !14
  %_load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_40, i64 -8
  %55 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !15
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_42, !mcsema_real_eip !15
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %55, i64* %XSP, !mcsema_real_eip !15
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_41, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_71)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -36
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %56 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !16
  %57 = inttoptr i64 %56 to i32*, !mcsema_real_eip !16
  %_ptr_bt_90 = bitcast i32* %57 to i8*
  %_offset_above_rbp_91 = sub i64 %56, %_local_end_to_int_
  %_pot_address_in_parent_stack_92 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_91
  %_cond1_93 = icmp ugt i8* %_ptr_bt_90, %_local_stack_end_ptr_
  %_cond2_1_94 = icmp ugt i8* %_ptr_bt_90, %_parent_stack_end_ptr_
  %_cond2_2_95 = icmp ult i8* %_ptr_bt_90, %_parent_stack_start_ptr_
  %_cond2_96 = or i1 %_cond2_1_94, %_cond2_2_95
  %_cond4_97 = icmp ule i8* %_pot_address_in_parent_stack_92, %_parent_stack_end_ptr_
  %_cond1_n_cond2_98 = and i1 %_cond1_93, %_cond2_96
  %_cond1_n_cond2_cond3_99 = and i1 %_cond1_n_cond2_98, %_cond4_97
  br i1 %_cond1_n_cond2_cond3_99, label %58, label %59

; <label>:58:                                     ; preds = %52
  %_address_in_parent_stack_bt_101 = bitcast i8* %_pot_address_in_parent_stack_92 to i32*
  br label %59

; <label>:59:                                     ; preds = %52, %58
  %60 = phi i32* [ %57, %52 ], [ %_address_in_parent_stack_bt_101, %58 ]
  %_new_load_102 = load i32, i32* %60
  %61 = zext i32 %_new_load_102 to i64, !mcsema_real_eip !16
  store i64 %61, i64* %XAX, !mcsema_real_eip !16
  %EAX.22 = bitcast i64* %XAX to i32*, !mcsema_real_eip !17
  %EAX_val.23 = load i32, i32* %EAX.22, !mcsema_real_eip !17
  %62 = add i32 1, %EAX_val.23, !mcsema_real_eip !17
  %63 = xor i32 %62, %EAX_val.23, !mcsema_real_eip !17
  %64 = xor i32 %63, 1, !mcsema_real_eip !17
  %65 = and i32 %64, 16, !mcsema_real_eip !17
  %66 = icmp ne i32 %65, 0, !mcsema_real_eip !17
  store i1 %66, i1* %AF, !mcsema_real_eip !17
  %67 = lshr i32 %62, 31, !mcsema_real_eip !17
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !17
  store i1 %68, i1* %SF, !mcsema_real_eip !17
  %69 = icmp eq i32 %62, 0, !mcsema_real_eip !17
  store i1 %69, i1* %ZF, !mcsema_real_eip !17
  %70 = xor i32 %EAX_val.23, 1, !mcsema_real_eip !17
  %71 = xor i32 %70, -1, !mcsema_real_eip !17
  %72 = and i32 %71, %63, !mcsema_real_eip !17
  %73 = lshr i32 %72, 31, !mcsema_real_eip !17
  %74 = and i32 %73, 1, !mcsema_real_eip !17
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !17
  store i1 %75, i1* %OF, !mcsema_real_eip !17
  %76 = trunc i32 %62 to i8, !mcsema_real_eip !17
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !17
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !17
  %79 = xor i1 %78, true, !mcsema_real_eip !17
  store i1 %79, i1* %PF, !mcsema_real_eip !17
  %80 = icmp ult i32 %62, %EAX_val.23, !mcsema_real_eip !17
  store i1 %80, i1* %CF, !mcsema_real_eip !17
  %81 = zext i32 %62 to i64, !mcsema_real_eip !17
  store i64 %81, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.26 = load i32, i32* %EAX.22, !mcsema_real_eip !18
  store i32 %EAX_val.26, i32* %57, !mcsema_real_eip !18
  br label %block_0xa6, !mcsema_real_eip !19

block_0xe6:                                       ; preds = %21
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.8 = load i32, i32* %EAX.7, !mcsema_real_eip !20
  store i1 false, i1* %CF, !mcsema_real_eip !20
  store i1 false, i1* %OF, !mcsema_real_eip !20
  store i1 false, i1* %SF, !mcsema_real_eip !20
  store i1 true, i1* %ZF, !mcsema_real_eip !20
  store i1 true, i1* %PF, !mcsema_real_eip !20
  store i1 undef, i1* %AF, !mcsema_real_eip !20
  store i64 0, i64* %XAX, !mcsema_real_eip !20
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 48
  %82 = add i64 48, %RSP_val.11, !mcsema_real_eip !21
  %_trans_p2i_51 = ptrtoint i8* %_new_gep_50 to i64
  %_trans_p2i_52 = ptrtoint i8* %_load_rsp_ptr_49 to i64
  %_trans_xor_53 = xor i64 %_trans_p2i_51, %_trans_p2i_52
  %83 = xor i64 %_trans_xor_53, 48, !mcsema_real_eip !21
  %84 = and i64 %83, 16, !mcsema_real_eip !21
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !21
  store i1 %85, i1* %AF, !mcsema_real_eip !21
  %86 = lshr i64 %82, 63, !mcsema_real_eip !21
  %87 = trunc i64 %86 to i1, !mcsema_real_eip !21
  store i1 %87, i1* %SF, !mcsema_real_eip !21
  %_trans_icmp_eq_55 = icmp eq i64 %_trans_p2i_51, 0
  store i1 %_trans_icmp_eq_55, i1* %ZF, !mcsema_real_eip !21
  %_trans_xor_57 = xor i64 %_trans_p2i_52, 48
  %88 = xor i64 %_trans_xor_57, -1, !mcsema_real_eip !21
  %89 = and i64 %88, %_trans_xor_53, !mcsema_real_eip !21
  %90 = lshr i64 %89, 63, !mcsema_real_eip !21
  %91 = and i64 %90, 1, !mcsema_real_eip !21
  %92 = trunc i64 %91 to i1, !mcsema_real_eip !21
  store i1 %92, i1* %OF, !mcsema_real_eip !21
  %_trans_trunc_62 = trunc i64 %_trans_p2i_51 to i8
  %93 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_62), !mcsema_real_eip !21
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !21
  %95 = xor i1 %94, true, !mcsema_real_eip !21
  store i1 %95, i1* %PF, !mcsema_real_eip !21
  %_trans_icmp_ne_64 = icmp ne i64 %_trans_p2i_51, %RSP_val.11
  store i1 %_trans_icmp_ne_64, i1* %CF, !mcsema_real_eip !21
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %82, i64* %XSP, !mcsema_real_eip !21
  %_allin_new_bt_66 = bitcast i8* %_new_gep_50 to i64*
  %_ptr_to_int_103 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_106 = sub i64 %_ptr_to_int_103, %_local_end_to_int_
  %_pot_address_in_parent_stack_107 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_106
  %_cond1_108 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_109 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_110 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_111 = or i1 %_cond2_1_109, %_cond2_2_110
  %_cond4_112 = icmp ule i8* %_pot_address_in_parent_stack_107, %_parent_stack_end_ptr_
  %_cond1_n_cond2_113 = and i1 %_cond1_108, %_cond2_111
  %_cond1_n_cond2_cond3_114 = and i1 %_cond1_n_cond2_113, %_cond4_112
  br i1 %_cond1_n_cond2_cond3_114, label %96, label %97

; <label>:96:                                     ; preds = %block_0xe6
  %_address_in_parent_stack_bt_116 = bitcast i8* %_pot_address_in_parent_stack_107 to i64*
  br label %97

; <label>:97:                                     ; preds = %block_0xe6, %96
  %98 = phi i64* [ %_allin_new_bt_66, %block_0xe6 ], [ %_address_in_parent_stack_bt_116, %96 ]
  %_new_load_117 = load i64, i64* %98
  %_new_int2ptr_ = inttoptr i64 %_new_load_117 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_117, i64* %XBP, !mcsema_real_eip !22
  %_new_gep_67 = getelementptr i8, i8* %_new_gep_50, i64 8
  %99 = add i64 %82, 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_67, i8** %_RSP_ptr_
  store i64 %99, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_69 = getelementptr i8, i8* %_new_gep_67, i64 8
  %100 = add i64 %99, 8, !mcsema_real_eip !23
  %_allin_new_bt_70 = bitcast i8* %_new_gep_67 to i64*
  %_ptr_to_int_118 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_offset_above_rbp_121 = sub i64 %_ptr_to_int_118, %_local_end_to_int_
  %_pot_address_in_parent_stack_122 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_121
  %_cond1_123 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_124 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_125 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_126 = or i1 %_cond2_1_124, %_cond2_2_125
  %_cond4_127 = icmp ule i8* %_pot_address_in_parent_stack_122, %_parent_stack_end_ptr_
  %_cond1_n_cond2_128 = and i1 %_cond1_123, %_cond2_126
  %_cond1_n_cond2_cond3_129 = and i1 %_cond1_n_cond2_128, %_cond4_127
  br i1 %_cond1_n_cond2_cond3_129, label %101, label %102

; <label>:101:                                    ; preds = %97
  %_address_in_parent_stack_bt_131 = bitcast i8* %_pot_address_in_parent_stack_122 to i64*
  br label %102

; <label>:102:                                    ; preds = %97, %101
  %103 = phi i64* [ %_allin_new_bt_70, %97 ], [ %_address_in_parent_stack_bt_131, %101 ]
  %_new_load_132 = load i64, i64* %103
  store i64 %_new_load_132, i64* %XIP, !mcsema_real_eip !23
  store volatile i8* %_new_gep_69, i8** %_RSP_ptr_
  store i64 %100, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !24
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !24
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !24
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !24
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !24
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !24
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !24
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !24
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !24
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !24
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !24
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !24
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !24
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !24
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !24
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !24
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !24
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !24
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !24
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !24
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !24
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !24
  br label %block_0x0, !mcsema_real_eip !24

block_0x0:                                        ; preds = %entry
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !24
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.28, 8, !mcsema_real_eip !24
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !24
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !25
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.30, 32, !mcsema_real_eip !26
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !26
  %4 = and i64 %3, 16, !mcsema_real_eip !26
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !26
  store i1 %5, i1* %AF, !mcsema_real_eip !26
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !26
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !26
  %8 = xor i1 %7, true, !mcsema_real_eip !26
  store i1 %8, i1* %PF, !mcsema_real_eip !26
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !26
  %9 = lshr i64 %2, 63, !mcsema_real_eip !26
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !26
  store i1 %10, i1* %SF, !mcsema_real_eip !26
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !26
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !26
  %12 = lshr i64 %11, 63, !mcsema_real_eip !26
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !26
  store i1 %13, i1* %OF, !mcsema_real_eip !26
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !26
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !27
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !27
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !27
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !27
  store i32 %EDI_val.33, i32* %15, !mcsema_real_eip !27
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %RSI_val.35 = load i64, i64* %XSI, !mcsema_real_eip !28
  store i64 %RSI_val.35, i64* %_allin_new_bt_18, !mcsema_real_eip !28
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -20
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !29
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !29
  store i32 3, i32* %17, !mcsema_real_eip !29
  br label %block_0x16, !mcsema_real_eip !30

block_0x16:                                       ; preds = %97, %block_0x0
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -20
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !30
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !30
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %19 to i8*
  %_offset_above_rbp_ = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0x16
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x16, %20
  %22 = phi i32* [ %19, %block_0x16 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  %23 = zext i32 %_new_load_ to i64, !mcsema_real_eip !30
  store i64 %23, i64* %XAX, !mcsema_real_eip !30
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -4
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %EAX.39 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.40 = load i32, i32* %EAX.39, !mcsema_real_eip !31
  %24 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !31
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !31
  %_ptr_bt_103 = bitcast i32* %25 to i8*
  %_offset_above_rbp_104 = sub i64 %24, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_ptr_bt_103, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_ptr_bt_103, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_ptr_bt_103, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  br i1 %_cond1_n_cond2_cond3_112, label %26, label %27

; <label>:26:                                     ; preds = %21
  %_address_in_parent_stack_bt_114 = bitcast i8* %_pot_address_in_parent_stack_105 to i32*
  br label %27

; <label>:27:                                     ; preds = %21, %26
  %28 = phi i32* [ %25, %21 ], [ %_address_in_parent_stack_bt_114, %26 ]
  %_new_load_115 = load i32, i32* %28
  %29 = sub i32 %EAX_val.40, %_new_load_115, !mcsema_real_eip !31
  %30 = xor i32 %29, %EAX_val.40, !mcsema_real_eip !31
  %31 = xor i32 %30, %_new_load_115, !mcsema_real_eip !31
  %32 = and i32 %31, 16, !mcsema_real_eip !31
  %33 = icmp ne i32 %32, 0, !mcsema_real_eip !31
  store i1 %33, i1* %AF, !mcsema_real_eip !31
  %34 = trunc i32 %29 to i8, !mcsema_real_eip !31
  %35 = call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !31
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !31
  %37 = xor i1 %36, true, !mcsema_real_eip !31
  store i1 %37, i1* %PF, !mcsema_real_eip !31
  %38 = icmp eq i32 %29, 0, !mcsema_real_eip !31
  store i1 %38, i1* %ZF, !mcsema_real_eip !31
  %39 = lshr i32 %29, 31, !mcsema_real_eip !31
  %40 = trunc i32 %39 to i1, !mcsema_real_eip !31
  store i1 %40, i1* %SF, !mcsema_real_eip !31
  %41 = icmp ult i32 %EAX_val.40, %_new_load_115, !mcsema_real_eip !31
  store i1 %41, i1* %CF, !mcsema_real_eip !31
  %42 = xor i32 %EAX_val.40, %_new_load_115, !mcsema_real_eip !31
  %43 = and i32 %42, %30, !mcsema_real_eip !31
  %44 = lshr i32 %43, 31, !mcsema_real_eip !31
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !31
  store i1 %45, i1* %OF, !mcsema_real_eip !31
  %46 = or i1 %41, %38, !mcsema_real_eip !32
  br i1 %46, label %block_0x4d, label %block_0x22, !mcsema_real_eip !32

block_0x22:                                       ; preds = %27
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_116 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_119 = sub i64 %_ptr_to_int_116, %_local_end_to_int_
  %_pot_address_in_parent_stack_120 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_119
  %_cond1_121 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_122 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_123 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_124 = or i1 %_cond2_1_122, %_cond2_2_123
  %_cond4_125 = icmp ule i8* %_pot_address_in_parent_stack_120, %_parent_stack_end_ptr_
  %_cond1_n_cond2_126 = and i1 %_cond1_121, %_cond2_124
  %_cond1_n_cond2_cond3_127 = and i1 %_cond1_n_cond2_126, %_cond4_125
  br i1 %_cond1_n_cond2_cond3_127, label %47, label %48

; <label>:47:                                     ; preds = %block_0x22
  %_address_in_parent_stack_bt_129 = bitcast i8* %_pot_address_in_parent_stack_120 to i64*
  br label %48

; <label>:48:                                     ; preds = %block_0x22, %47
  %49 = phi i64* [ %_allin_new_bt_30, %block_0x22 ], [ %_address_in_parent_stack_bt_129, %47 ]
  %_new_load_130 = load i64, i64* %49
  store i64 %_new_load_130, i64* %XAX, !mcsema_real_eip !33
  br i1 %_cond1_n_cond2_cond3_, label %50, label %51

; <label>:50:                                     ; preds = %48
  %_address_in_parent_stack_bt_144 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %51

; <label>:51:                                     ; preds = %48, %50
  %52 = phi i32* [ %19, %48 ], [ %_address_in_parent_stack_bt_144, %50 ]
  %_new_load_145 = load i32, i32* %52
  %53 = zext i32 %_new_load_145 to i64, !mcsema_real_eip !34
  store i64 %53, i64* %XCX, !mcsema_real_eip !34
  %ECX.67 = bitcast i64* %XCX to i32*, !mcsema_real_eip !35
  %ECX_val.68 = load i32, i32* %ECX.67, !mcsema_real_eip !35
  %54 = sub i32 %ECX_val.68, 1, !mcsema_real_eip !35
  %55 = xor i32 %54, %ECX_val.68, !mcsema_real_eip !35
  %56 = xor i32 %55, 1, !mcsema_real_eip !35
  %57 = and i32 %56, 16, !mcsema_real_eip !35
  %58 = icmp ne i32 %57, 0, !mcsema_real_eip !35
  store i1 %58, i1* %AF, !mcsema_real_eip !35
  %59 = trunc i32 %54 to i8, !mcsema_real_eip !35
  %60 = call i8 @llvm.ctpop.i8(i8 %59), !mcsema_real_eip !35
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !35
  %62 = xor i1 %61, true, !mcsema_real_eip !35
  store i1 %62, i1* %PF, !mcsema_real_eip !35
  %63 = icmp eq i32 %54, 0, !mcsema_real_eip !35
  store i1 %63, i1* %ZF, !mcsema_real_eip !35
  %64 = lshr i32 %54, 31, !mcsema_real_eip !35
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !35
  store i1 %65, i1* %SF, !mcsema_real_eip !35
  %66 = icmp ult i32 %ECX_val.68, 1, !mcsema_real_eip !35
  store i1 %66, i1* %CF, !mcsema_real_eip !35
  %67 = xor i32 %ECX_val.68, 1, !mcsema_real_eip !35
  %68 = and i32 %67, %55, !mcsema_real_eip !35
  %69 = lshr i32 %68, 31, !mcsema_real_eip !35
  %70 = trunc i32 %69 to i1, !mcsema_real_eip !35
  store i1 %70, i1* %OF, !mcsema_real_eip !35
  %71 = zext i32 %54 to i64, !mcsema_real_eip !35
  store i64 %71, i64* %XCX, !mcsema_real_eip !35
  %ECX_val.70 = load i32, i32* %ECX.67, !mcsema_real_eip !36
  %72 = zext i32 %ECX_val.70 to i64, !mcsema_real_eip !36
  store i64 %72, i64* %XCX, !mcsema_real_eip !36
  %ECX_val.72 = load i32, i32* %ECX.67, !mcsema_real_eip !37
  %73 = zext i32 %ECX_val.72 to i64, !mcsema_real_eip !37
  store i64 %73, i64* %XDX, !mcsema_real_eip !37
  %74 = mul i64 %73, 4, !mcsema_real_eip !38
  %75 = add i64 %_new_load_130, %74, !mcsema_real_eip !38
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !38
  %77 = inttoptr i64 %75 to i32*, !mcsema_real_eip !38
  %_ptr_bt_148 = bitcast i32* %77 to i8*
  %_offset_above_rbp_149 = sub i64 %75, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_ptr_bt_148, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_ptr_bt_148, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_ptr_bt_148, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  br i1 %_cond1_n_cond2_cond3_157, label %78, label %79

; <label>:78:                                     ; preds = %51
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i32*
  br label %79

; <label>:79:                                     ; preds = %51, %78
  %80 = phi i32* [ %77, %51 ], [ %_address_in_parent_stack_bt_159, %78 ]
  %_new_load_160 = load i32, i32* %80
  %81 = zext i32 %_new_load_160 to i64, !mcsema_real_eip !38
  store i64 %81, i64* %XCX, !mcsema_real_eip !38
  br i1 %_cond1_n_cond2_cond3_127, label %82, label %83

; <label>:82:                                     ; preds = %79
  %_address_in_parent_stack_bt_174 = bitcast i8* %_pot_address_in_parent_stack_120 to i64*
  br label %83

; <label>:83:                                     ; preds = %79, %82
  %84 = phi i64* [ %_allin_new_bt_30, %79 ], [ %_address_in_parent_stack_bt_174, %82 ]
  %_new_load_175 = load i64, i64* %84
  store i64 %_new_load_175, i64* %XAX, !mcsema_real_eip !39
  br i1 %_cond1_n_cond2_cond3_, label %85, label %86

; <label>:85:                                     ; preds = %83
  %_address_in_parent_stack_bt_189 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %86

; <label>:86:                                     ; preds = %83, %85
  %87 = phi i32* [ %19, %83 ], [ %_address_in_parent_stack_bt_189, %85 ]
  %_new_load_190 = load i32, i32* %87
  %88 = zext i32 %_new_load_190 to i64, !mcsema_real_eip !40
  store i64 %88, i64* %XSI, !mcsema_real_eip !40
  %ESI.77 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.78 = load i32, i32* %ESI.77, !mcsema_real_eip !41
  %89 = zext i32 %ESI_val.78 to i64, !mcsema_real_eip !41
  store i64 %89, i64* %XDX, !mcsema_real_eip !41
  %90 = mul i64 %89, 4, !mcsema_real_eip !42
  %91 = add i64 %_new_load_175, %90, !mcsema_real_eip !42
  %92 = inttoptr i64 %91 to i64*, !mcsema_real_eip !42
  %ECX_val.82 = load i32, i32* %ECX.67, !mcsema_real_eip !42
  %93 = inttoptr i64 %91 to i32*, !mcsema_real_eip !42
  store i32 %ECX_val.82, i32* %93, !mcsema_real_eip !42
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %94 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !43
  %95 = inttoptr i64 %94 to i32*, !mcsema_real_eip !43
  %_ptr_bt_193 = bitcast i32* %95 to i8*
  %_offset_above_rbp_194 = sub i64 %94, %_local_end_to_int_
  %_pot_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i8* %_ptr_bt_193, %_local_stack_end_ptr_
  %_cond2_1_197 = icmp ugt i8* %_ptr_bt_193, %_parent_stack_end_ptr_
  %_cond2_2_198 = icmp ult i8* %_ptr_bt_193, %_parent_stack_start_ptr_
  %_cond2_199 = or i1 %_cond2_1_197, %_cond2_2_198
  %_cond4_200 = icmp ule i8* %_pot_address_in_parent_stack_195, %_parent_stack_end_ptr_
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  br i1 %_cond1_n_cond2_cond3_202, label %96, label %97

; <label>:96:                                     ; preds = %86
  %_address_in_parent_stack_bt_204 = bitcast i8* %_pot_address_in_parent_stack_195 to i32*
  br label %97

; <label>:97:                                     ; preds = %86, %96
  %98 = phi i32* [ %95, %86 ], [ %_address_in_parent_stack_bt_204, %96 ]
  %_new_load_205 = load i32, i32* %98
  %99 = zext i32 %_new_load_205 to i64, !mcsema_real_eip !43
  store i64 %99, i64* %XAX, !mcsema_real_eip !43
  %EAX_val.85 = load i32, i32* %EAX.39, !mcsema_real_eip !44
  %100 = add i32 -1, %EAX_val.85, !mcsema_real_eip !44
  %101 = xor i32 %100, %EAX_val.85, !mcsema_real_eip !44
  %102 = xor i32 %101, -1, !mcsema_real_eip !44
  %103 = and i32 %102, 16, !mcsema_real_eip !44
  %104 = icmp ne i32 %103, 0, !mcsema_real_eip !44
  store i1 %104, i1* %AF, !mcsema_real_eip !44
  %105 = lshr i32 %100, 31, !mcsema_real_eip !44
  %106 = trunc i32 %105 to i1, !mcsema_real_eip !44
  store i1 %106, i1* %SF, !mcsema_real_eip !44
  %107 = icmp eq i32 %100, 0, !mcsema_real_eip !44
  store i1 %107, i1* %ZF, !mcsema_real_eip !44
  %108 = xor i32 %EAX_val.85, -1, !mcsema_real_eip !44
  %109 = and i32 %EAX_val.85, %101, !mcsema_real_eip !44
  %110 = lshr i32 %109, 31, !mcsema_real_eip !44
  %111 = and i32 %110, 1, !mcsema_real_eip !44
  %112 = trunc i32 %111 to i1, !mcsema_real_eip !44
  store i1 %112, i1* %OF, !mcsema_real_eip !44
  %113 = trunc i32 %100 to i8, !mcsema_real_eip !44
  %114 = call i8 @llvm.ctpop.i8(i8 %113), !mcsema_real_eip !44
  %115 = trunc i8 %114 to i1, !mcsema_real_eip !44
  %116 = xor i1 %115, true, !mcsema_real_eip !44
  store i1 %116, i1* %PF, !mcsema_real_eip !44
  %117 = icmp ult i32 %100, %EAX_val.85, !mcsema_real_eip !44
  store i1 %117, i1* %CF, !mcsema_real_eip !44
  %118 = zext i32 %100 to i64, !mcsema_real_eip !44
  store i64 %118, i64* %XAX, !mcsema_real_eip !44
  %EAX_val.88 = load i32, i32* %EAX.39, !mcsema_real_eip !45
  store i32 %EAX_val.88, i32* %95, !mcsema_real_eip !45
  br label %block_0x16, !mcsema_real_eip !46

block_0x4d:                                       ; preds = %27
  store i64 ptrtoint (%0* @data_0xee to i64), i64* %XDI, !mcsema_real_eip !47
  br i1 %_cond1_n_cond2_cond3_112, label %119, label %120

; <label>:119:                                    ; preds = %block_0x4d
  %_address_in_parent_stack_bt_219 = bitcast i8* %_pot_address_in_parent_stack_105 to i32*
  br label %120

; <label>:120:                                    ; preds = %block_0x4d, %119
  %121 = phi i32* [ %25, %block_0x4d ], [ %_address_in_parent_stack_bt_219, %119 ]
  %_new_load_220 = load i32, i32* %121
  %122 = zext i32 %_new_load_220 to i64, !mcsema_real_eip !48
  store i64 %122, i64* %XSI, !mcsema_real_eip !48
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %_ptr_to_int_221 = ptrtoint i64* %_allin_new_bt_51 to i64
  %_offset_above_rbp_224 = sub i64 %_ptr_to_int_221, %_local_end_to_int_
  %_pot_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_224
  %_cond1_226 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_227 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_228 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_229 = or i1 %_cond2_1_227, %_cond2_2_228
  %_cond4_230 = icmp ule i8* %_pot_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond1_n_cond2_231 = and i1 %_cond1_226, %_cond2_229
  %_cond1_n_cond2_cond3_232 = and i1 %_cond1_n_cond2_231, %_cond4_230
  br i1 %_cond1_n_cond2_cond3_232, label %123, label %124

; <label>:123:                                    ; preds = %120
  %_address_in_parent_stack_bt_234 = bitcast i8* %_pot_address_in_parent_stack_225 to i64*
  br label %124

; <label>:124:                                    ; preds = %120, %123
  %125 = phi i64* [ %_allin_new_bt_51, %120 ], [ %_address_in_parent_stack_bt_234, %123 ]
  %_new_load_235 = load i64, i64* %125
  store i64 %_new_load_235, i64* %XAX, !mcsema_real_eip !49
  %126 = inttoptr i64 %_new_load_235 to i64*, !mcsema_real_eip !50
  %127 = inttoptr i64 %_new_load_235 to i32*, !mcsema_real_eip !50
  %_ptr_bt_238 = bitcast i32* %127 to i8*
  %_offset_above_rbp_239 = sub i64 %_new_load_235, %_local_end_to_int_
  %_pot_address_in_parent_stack_240 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_239
  %_cond1_241 = icmp ugt i8* %_ptr_bt_238, %_local_stack_end_ptr_
  %_cond2_1_242 = icmp ugt i8* %_ptr_bt_238, %_parent_stack_end_ptr_
  %_cond2_2_243 = icmp ult i8* %_ptr_bt_238, %_parent_stack_start_ptr_
  %_cond2_244 = or i1 %_cond2_1_242, %_cond2_2_243
  %_cond4_245 = icmp ule i8* %_pot_address_in_parent_stack_240, %_parent_stack_end_ptr_
  %_cond1_n_cond2_246 = and i1 %_cond1_241, %_cond2_244
  %_cond1_n_cond2_cond3_247 = and i1 %_cond1_n_cond2_246, %_cond4_245
  br i1 %_cond1_n_cond2_cond3_247, label %128, label %129

; <label>:128:                                    ; preds = %124
  %_address_in_parent_stack_bt_249 = bitcast i8* %_pot_address_in_parent_stack_240 to i32*
  br label %129

; <label>:129:                                    ; preds = %124, %128
  %130 = phi i32* [ %127, %124 ], [ %_address_in_parent_stack_bt_249, %128 ]
  %_new_load_250 = load i32, i32* %130
  %131 = zext i32 %_new_load_250 to i64, !mcsema_real_eip !50
  store i64 %131, i64* %XDX, !mcsema_real_eip !50
  br i1 %_cond1_n_cond2_cond3_232, label %132, label %133

; <label>:132:                                    ; preds = %129
  %_address_in_parent_stack_bt_264 = bitcast i8* %_pot_address_in_parent_stack_225 to i64*
  br label %133

; <label>:133:                                    ; preds = %129, %132
  %134 = phi i64* [ %_allin_new_bt_51, %129 ], [ %_address_in_parent_stack_bt_264, %132 ]
  %_new_load_265 = load i64, i64* %134
  store i64 %_new_load_265, i64* %XAX, !mcsema_real_eip !51
  %135 = add i64 %_new_load_265, 4, !mcsema_real_eip !52
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !52
  %137 = inttoptr i64 %135 to i32*, !mcsema_real_eip !52
  %_ptr_bt_268 = bitcast i32* %137 to i8*
  %_offset_above_rbp_269 = sub i64 %135, %_local_end_to_int_
  %_pot_address_in_parent_stack_270 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_269
  %_cond1_271 = icmp ugt i8* %_ptr_bt_268, %_local_stack_end_ptr_
  %_cond2_1_272 = icmp ugt i8* %_ptr_bt_268, %_parent_stack_end_ptr_
  %_cond2_2_273 = icmp ult i8* %_ptr_bt_268, %_parent_stack_start_ptr_
  %_cond2_274 = or i1 %_cond2_1_272, %_cond2_2_273
  %_cond4_275 = icmp ule i8* %_pot_address_in_parent_stack_270, %_parent_stack_end_ptr_
  %_cond1_n_cond2_276 = and i1 %_cond1_271, %_cond2_274
  %_cond1_n_cond2_cond3_277 = and i1 %_cond1_n_cond2_276, %_cond4_275
  br i1 %_cond1_n_cond2_cond3_277, label %138, label %139

; <label>:138:                                    ; preds = %133
  %_address_in_parent_stack_bt_279 = bitcast i8* %_pot_address_in_parent_stack_270 to i32*
  br label %139

; <label>:139:                                    ; preds = %133, %138
  %140 = phi i32* [ %137, %133 ], [ %_address_in_parent_stack_bt_279, %138 ]
  %_new_load_280 = load i32, i32* %140
  %141 = zext i32 %_new_load_280 to i64, !mcsema_real_eip !52
  store i64 %141, i64* %XCX, !mcsema_real_eip !52
  br i1 %_cond1_n_cond2_cond3_232, label %142, label %143

; <label>:142:                                    ; preds = %139
  %_address_in_parent_stack_bt_294 = bitcast i8* %_pot_address_in_parent_stack_225 to i64*
  br label %143

; <label>:143:                                    ; preds = %139, %142
  %144 = phi i64* [ %_allin_new_bt_51, %139 ], [ %_address_in_parent_stack_bt_294, %142 ]
  %_new_load_295 = load i64, i64* %144
  store i64 %_new_load_295, i64* %XAX, !mcsema_real_eip !53
  %145 = add i64 %_new_load_295, 8, !mcsema_real_eip !54
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !54
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !54
  %_ptr_bt_298 = bitcast i32* %147 to i8*
  %_offset_above_rbp_299 = sub i64 %145, %_local_end_to_int_
  %_pot_address_in_parent_stack_300 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_299
  %_cond1_301 = icmp ugt i8* %_ptr_bt_298, %_local_stack_end_ptr_
  %_cond2_1_302 = icmp ugt i8* %_ptr_bt_298, %_parent_stack_end_ptr_
  %_cond2_2_303 = icmp ult i8* %_ptr_bt_298, %_parent_stack_start_ptr_
  %_cond2_304 = or i1 %_cond2_1_302, %_cond2_2_303
  %_cond4_305 = icmp ule i8* %_pot_address_in_parent_stack_300, %_parent_stack_end_ptr_
  %_cond1_n_cond2_306 = and i1 %_cond1_301, %_cond2_304
  %_cond1_n_cond2_cond3_307 = and i1 %_cond1_n_cond2_306, %_cond4_305
  br i1 %_cond1_n_cond2_cond3_307, label %148, label %149

; <label>:148:                                    ; preds = %143
  %_address_in_parent_stack_bt_309 = bitcast i8* %_pot_address_in_parent_stack_300 to i32*
  br label %149

; <label>:149:                                    ; preds = %143, %148
  %150 = phi i32* [ %147, %143 ], [ %_address_in_parent_stack_bt_309, %148 ]
  %_new_load_310 = load i32, i32* %150
  %151 = zext i32 %_new_load_310 to i64, !mcsema_real_eip !54
  store i64 %151, i64* %R8, !mcsema_real_eip !54
  br i1 %_cond1_n_cond2_cond3_232, label %152, label %153

; <label>:152:                                    ; preds = %149
  %_address_in_parent_stack_bt_324 = bitcast i8* %_pot_address_in_parent_stack_225 to i64*
  br label %153

; <label>:153:                                    ; preds = %149, %152
  %154 = phi i64* [ %_allin_new_bt_51, %149 ], [ %_address_in_parent_stack_bt_324, %152 ]
  %_new_load_325 = load i64, i64* %154
  store i64 %_new_load_325, i64* %XAX, !mcsema_real_eip !55
  %155 = add i64 %_new_load_325, 12, !mcsema_real_eip !56
  %156 = inttoptr i64 %155 to i64*, !mcsema_real_eip !56
  %157 = inttoptr i64 %155 to i32*, !mcsema_real_eip !56
  %_ptr_bt_328 = bitcast i32* %157 to i8*
  %_offset_above_rbp_329 = sub i64 %155, %_local_end_to_int_
  %_pot_address_in_parent_stack_330 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_329
  %_cond1_331 = icmp ugt i8* %_ptr_bt_328, %_local_stack_end_ptr_
  %_cond2_1_332 = icmp ugt i8* %_ptr_bt_328, %_parent_stack_end_ptr_
  %_cond2_2_333 = icmp ult i8* %_ptr_bt_328, %_parent_stack_start_ptr_
  %_cond2_334 = or i1 %_cond2_1_332, %_cond2_2_333
  %_cond4_335 = icmp ule i8* %_pot_address_in_parent_stack_330, %_parent_stack_end_ptr_
  %_cond1_n_cond2_336 = and i1 %_cond1_331, %_cond2_334
  %_cond1_n_cond2_cond3_337 = and i1 %_cond1_n_cond2_336, %_cond4_335
  br i1 %_cond1_n_cond2_cond3_337, label %158, label %159

; <label>:158:                                    ; preds = %153
  %_address_in_parent_stack_bt_339 = bitcast i8* %_pot_address_in_parent_stack_330 to i32*
  br label %159

; <label>:159:                                    ; preds = %153, %158
  %160 = phi i32* [ %157, %153 ], [ %_address_in_parent_stack_bt_339, %158 ]
  %_new_load_340 = load i32, i32* %160
  %161 = zext i32 %_new_load_340 to i64, !mcsema_real_eip !56
  store i64 %161, i64* %R9, !mcsema_real_eip !56
  %AL.50 = bitcast i64* %XAX to i8*, !mcsema_real_eip !57
  store i8 0, i8* %AL.50, !mcsema_real_eip !57
  %_load_rsp_ptr_61 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_62 = bitcast i8* %_load_rsp_ptr_61 to i64*
  %_ptr_to_int_341 = ptrtoint i64* %_allin_new_bt_62 to i64
  %_offset_above_rbp_344 = sub i64 %_ptr_to_int_341, %_local_end_to_int_
  %_pot_address_in_parent_stack_345 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_344
  %_cond1_346 = icmp ugt i8* %_load_rsp_ptr_61, %_local_stack_end_ptr_
  %_cond2_1_347 = icmp ugt i8* %_load_rsp_ptr_61, %_parent_stack_end_ptr_
  %_cond2_2_348 = icmp ult i8* %_load_rsp_ptr_61, %_parent_stack_start_ptr_
  %_cond2_349 = or i1 %_cond2_1_347, %_cond2_2_348
  %_cond4_350 = icmp ule i8* %_pot_address_in_parent_stack_345, %_parent_stack_end_ptr_
  %_cond1_n_cond2_351 = and i1 %_cond1_346, %_cond2_349
  %_cond1_n_cond2_cond3_352 = and i1 %_cond1_n_cond2_351, %_cond4_350
  br i1 %_cond1_n_cond2_cond3_352, label %162, label %163

; <label>:162:                                    ; preds = %159
  %_address_in_parent_stack_bt_354 = bitcast i8* %_pot_address_in_parent_stack_345 to i64*
  br label %163

; <label>:163:                                    ; preds = %159, %162
  %164 = phi i64* [ %_allin_new_bt_62, %159 ], [ %_address_in_parent_stack_bt_354, %162 ]
  %_new_load_355 = load i64, i64* %164
  %_new_gep_63 = getelementptr i8, i8* %_load_rsp_ptr_61, i64 8
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %_ptr_to_int_356 = ptrtoint i64* %_allin_new_bt_64 to i64
  %_offset_above_rbp_359 = sub i64 %_ptr_to_int_356, %_local_end_to_int_
  %_pot_address_in_parent_stack_360 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_359
  %_cond1_361 = icmp ugt i8* %_new_gep_63, %_local_stack_end_ptr_
  %_cond2_1_362 = icmp ugt i8* %_new_gep_63, %_parent_stack_end_ptr_
  %_cond2_2_363 = icmp ult i8* %_new_gep_63, %_parent_stack_start_ptr_
  %_cond2_364 = or i1 %_cond2_1_362, %_cond2_2_363
  %_cond4_365 = icmp ule i8* %_pot_address_in_parent_stack_360, %_parent_stack_end_ptr_
  %_cond1_n_cond2_366 = and i1 %_cond1_361, %_cond2_364
  %_cond1_n_cond2_cond3_367 = and i1 %_cond1_n_cond2_366, %_cond4_365
  br i1 %_cond1_n_cond2_cond3_367, label %165, label %166

; <label>:165:                                    ; preds = %163
  %_address_in_parent_stack_bt_369 = bitcast i8* %_pot_address_in_parent_stack_360 to i64*
  br label %166

; <label>:166:                                    ; preds = %163, %165
  %167 = phi i64* [ %_allin_new_bt_64, %163 ], [ %_address_in_parent_stack_bt_369, %165 ]
  %_new_load_370 = load i64, i64* %167
  %_new_gep_65 = getelementptr i8, i8* %_new_gep_63, i64 8
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %_ptr_to_int_371 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_374 = sub i64 %_ptr_to_int_371, %_local_end_to_int_
  %_pot_address_in_parent_stack_375 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_374
  %_cond1_376 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_377 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_378 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_379 = or i1 %_cond2_1_377, %_cond2_2_378
  %_cond4_380 = icmp ule i8* %_pot_address_in_parent_stack_375, %_parent_stack_end_ptr_
  %_cond1_n_cond2_381 = and i1 %_cond1_376, %_cond2_379
  %_cond1_n_cond2_cond3_382 = and i1 %_cond1_n_cond2_381, %_cond4_380
  br i1 %_cond1_n_cond2_cond3_382, label %168, label %169

; <label>:168:                                    ; preds = %166
  %_address_in_parent_stack_bt_384 = bitcast i8* %_pot_address_in_parent_stack_375 to i64*
  br label %169

; <label>:169:                                    ; preds = %166, %168
  %170 = phi i64* [ %_allin_new_bt_66, %166 ], [ %_address_in_parent_stack_bt_384, %168 ]
  %_new_load_385 = load i64, i64* %170
  %_new_gep_67 = getelementptr i8, i8* %_new_gep_65, i64 8
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %_ptr_to_int_386 = ptrtoint i64* %_allin_new_bt_68 to i64
  %_offset_above_rbp_389 = sub i64 %_ptr_to_int_386, %_local_end_to_int_
  %_pot_address_in_parent_stack_390 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_389
  %_cond1_391 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_392 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_393 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_394 = or i1 %_cond2_1_392, %_cond2_2_393
  %_cond4_395 = icmp ule i8* %_pot_address_in_parent_stack_390, %_parent_stack_end_ptr_
  %_cond1_n_cond2_396 = and i1 %_cond1_391, %_cond2_394
  %_cond1_n_cond2_cond3_397 = and i1 %_cond1_n_cond2_396, %_cond4_395
  br i1 %_cond1_n_cond2_cond3_397, label %171, label %172

; <label>:171:                                    ; preds = %169
  %_address_in_parent_stack_bt_399 = bitcast i8* %_pot_address_in_parent_stack_390 to i64*
  br label %172

; <label>:172:                                    ; preds = %169, %171
  %173 = phi i64* [ %_allin_new_bt_68, %169 ], [ %_address_in_parent_stack_bt_399, %171 ]
  %_new_load_400 = load i64, i64* %173
  %_new_gep_69 = getelementptr i8, i8* %_new_gep_67, i64 8
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %_ptr_to_int_401 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_offset_above_rbp_404 = sub i64 %_ptr_to_int_401, %_local_end_to_int_
  %_pot_address_in_parent_stack_405 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_404
  %_cond1_406 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_407 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_408 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_409 = or i1 %_cond2_1_407, %_cond2_2_408
  %_cond4_410 = icmp ule i8* %_pot_address_in_parent_stack_405, %_parent_stack_end_ptr_
  %_cond1_n_cond2_411 = and i1 %_cond1_406, %_cond2_409
  %_cond1_n_cond2_cond3_412 = and i1 %_cond1_n_cond2_411, %_cond4_410
  br i1 %_cond1_n_cond2_cond3_412, label %174, label %175

; <label>:174:                                    ; preds = %172
  %_address_in_parent_stack_bt_414 = bitcast i8* %_pot_address_in_parent_stack_405 to i64*
  br label %175

; <label>:175:                                    ; preds = %172, %174
  %176 = phi i64* [ %_allin_new_bt_70, %172 ], [ %_address_in_parent_stack_bt_414, %174 ]
  %_new_load_415 = load i64, i64* %176
  %_new_gep_71 = getelementptr i8, i8* %_new_gep_69, i64 8
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %_ptr_to_int_416 = ptrtoint i64* %_allin_new_bt_72 to i64
  %_offset_above_rbp_419 = sub i64 %_ptr_to_int_416, %_local_end_to_int_
  %_pot_address_in_parent_stack_420 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_419
  %_cond1_421 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_422 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_423 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_424 = or i1 %_cond2_1_422, %_cond2_2_423
  %_cond4_425 = icmp ule i8* %_pot_address_in_parent_stack_420, %_parent_stack_end_ptr_
  %_cond1_n_cond2_426 = and i1 %_cond1_421, %_cond2_424
  %_cond1_n_cond2_cond3_427 = and i1 %_cond1_n_cond2_426, %_cond4_425
  br i1 %_cond1_n_cond2_cond3_427, label %177, label %178

; <label>:177:                                    ; preds = %175
  %_address_in_parent_stack_bt_429 = bitcast i8* %_pot_address_in_parent_stack_420 to i64*
  br label %178

; <label>:178:                                    ; preds = %175, %177
  %179 = phi i64* [ %_allin_new_bt_72, %175 ], [ %_address_in_parent_stack_bt_429, %177 ]
  %_new_load_430 = load i64, i64* %179
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !58
  %_new_gep_74 = getelementptr i8, i8* %_load_rsp_ptr_61, i64 -8
  %180 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !58
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_75, !mcsema_real_eip !58
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_
  store i64 %180, i64* %XSP, !mcsema_real_eip !58
  %181 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xee to i64), i64 %122, i64 %131, i64 %141, i64 %151, i64 %161, i64 %_new_load_355, i64 %_new_load_370, i64 %_new_load_385, i64 %_new_load_400, i64 %_new_load_415, i64 %_new_load_430)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %181, i64* %XAX, !mcsema_real_eip !58
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -24
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %EAX_val.61 = load i32, i32* %EAX.39, !mcsema_real_eip !59
  %182 = ptrtoint i64* %_allin_new_bt_78 to i64, !mcsema_real_eip !59
  %183 = inttoptr i64 %182 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.61, i32* %183, !mcsema_real_eip !59
  %_load_rsp_ptr_79 = load i8*, i8** %_RSP_ptr_
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !60
  %_new_gep_80 = getelementptr i8, i8* %_load_rsp_ptr_79, i64 32
  %184 = add i64 32, %RSP_val.62, !mcsema_real_eip !60
  %_trans_p2i_81 = ptrtoint i8* %_new_gep_80 to i64
  %_trans_p2i_82 = ptrtoint i8* %_load_rsp_ptr_79 to i64
  %_trans_xor_83 = xor i64 %_trans_p2i_81, %_trans_p2i_82
  %185 = xor i64 %_trans_xor_83, 32, !mcsema_real_eip !60
  %186 = and i64 %185, 16, !mcsema_real_eip !60
  %187 = icmp ne i64 %186, 0, !mcsema_real_eip !60
  store i1 %187, i1* %AF, !mcsema_real_eip !60
  %188 = lshr i64 %184, 63, !mcsema_real_eip !60
  %189 = trunc i64 %188 to i1, !mcsema_real_eip !60
  store i1 %189, i1* %SF, !mcsema_real_eip !60
  %_trans_icmp_eq_85 = icmp eq i64 %_trans_p2i_81, 0
  store i1 %_trans_icmp_eq_85, i1* %ZF, !mcsema_real_eip !60
  %_trans_xor_87 = xor i64 %_trans_p2i_82, 32
  %190 = xor i64 %_trans_xor_87, -1, !mcsema_real_eip !60
  %191 = and i64 %190, %_trans_xor_83, !mcsema_real_eip !60
  %192 = lshr i64 %191, 63, !mcsema_real_eip !60
  %193 = and i64 %192, 1, !mcsema_real_eip !60
  %194 = trunc i64 %193 to i1, !mcsema_real_eip !60
  store i1 %194, i1* %OF, !mcsema_real_eip !60
  %_trans_trunc_92 = trunc i64 %_trans_p2i_81 to i8
  %195 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_92), !mcsema_real_eip !60
  %196 = trunc i8 %195 to i1, !mcsema_real_eip !60
  %197 = xor i1 %196, true, !mcsema_real_eip !60
  store i1 %197, i1* %PF, !mcsema_real_eip !60
  %_trans_icmp_ne_94 = icmp ne i64 %_trans_p2i_81, %RSP_val.62
  store i1 %_trans_icmp_ne_94, i1* %CF, !mcsema_real_eip !60
  store volatile i8* %_new_gep_80, i8** %_RSP_ptr_
  store i64 %184, i64* %XSP, !mcsema_real_eip !60
  %_allin_new_bt_96 = bitcast i8* %_new_gep_80 to i64*
  %_ptr_to_int_431 = ptrtoint i64* %_allin_new_bt_96 to i64
  %_offset_above_rbp_434 = sub i64 %_ptr_to_int_431, %_local_end_to_int_
  %_pot_address_in_parent_stack_435 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_434
  %_cond1_436 = icmp ugt i8* %_new_gep_80, %_local_stack_end_ptr_
  %_cond2_1_437 = icmp ugt i8* %_new_gep_80, %_parent_stack_end_ptr_
  %_cond2_2_438 = icmp ult i8* %_new_gep_80, %_parent_stack_start_ptr_
  %_cond2_439 = or i1 %_cond2_1_437, %_cond2_2_438
  %_cond4_440 = icmp ule i8* %_pot_address_in_parent_stack_435, %_parent_stack_end_ptr_
  %_cond1_n_cond2_441 = and i1 %_cond1_436, %_cond2_439
  %_cond1_n_cond2_cond3_442 = and i1 %_cond1_n_cond2_441, %_cond4_440
  br i1 %_cond1_n_cond2_cond3_442, label %198, label %199

; <label>:198:                                    ; preds = %178
  %_address_in_parent_stack_bt_444 = bitcast i8* %_pot_address_in_parent_stack_435 to i64*
  br label %199

; <label>:199:                                    ; preds = %178, %198
  %200 = phi i64* [ %_allin_new_bt_96, %178 ], [ %_address_in_parent_stack_bt_444, %198 ]
  %_new_load_445 = load i64, i64* %200
  %_new_int2ptr_ = inttoptr i64 %_new_load_445 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_445, i64* %XBP, !mcsema_real_eip !61
  %_new_gep_97 = getelementptr i8, i8* %_new_gep_80, i64 8
  %201 = add i64 %184, 8, !mcsema_real_eip !61
  store volatile i8* %_new_gep_97, i8** %_RSP_ptr_
  store i64 %201, i64* %XSP, !mcsema_real_eip !61
  %_new_gep_99 = getelementptr i8, i8* %_new_gep_97, i64 8
  %202 = add i64 %201, 8, !mcsema_real_eip !62
  %_allin_new_bt_100 = bitcast i8* %_new_gep_97 to i64*
  %_ptr_to_int_446 = ptrtoint i64* %_allin_new_bt_100 to i64
  %_offset_above_rbp_449 = sub i64 %_ptr_to_int_446, %_local_end_to_int_
  %_pot_address_in_parent_stack_450 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_449
  %_cond1_451 = icmp ugt i8* %_new_gep_97, %_local_stack_end_ptr_
  %_cond2_1_452 = icmp ugt i8* %_new_gep_97, %_parent_stack_end_ptr_
  %_cond2_2_453 = icmp ult i8* %_new_gep_97, %_parent_stack_start_ptr_
  %_cond2_454 = or i1 %_cond2_1_452, %_cond2_2_453
  %_cond4_455 = icmp ule i8* %_pot_address_in_parent_stack_450, %_parent_stack_end_ptr_
  %_cond1_n_cond2_456 = and i1 %_cond1_451, %_cond2_454
  %_cond1_n_cond2_cond3_457 = and i1 %_cond1_n_cond2_456, %_cond4_455
  br i1 %_cond1_n_cond2_cond3_457, label %203, label %204

; <label>:203:                                    ; preds = %199
  %_address_in_parent_stack_bt_459 = bitcast i8* %_pot_address_in_parent_stack_450 to i64*
  br label %204

; <label>:204:                                    ; preds = %199, %203
  %205 = phi i64* [ %_allin_new_bt_100, %199 ], [ %_address_in_parent_stack_bt_459, %203 ]
  %_new_load_460 = load i64, i64* %205
  store i64 %_new_load_460, i64* %XIP, !mcsema_real_eip !62
  store volatile i8* %_new_gep_99, i8** %_RSP_ptr_
  store i64 %202, i64* %XSP, !mcsema_real_eip !62
  ret void, !mcsema_real_eip !62
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 144}
!3 = !{i64 145}
!4 = !{i64 148}
!5 = !{i64 152}
!6 = !{i64 159}
!7 = !{i64 166}
!8 = !{i64 170}
!9 = !{i64 176}
!10 = !{i64 180}
!11 = !{i64 187}
!12 = !{i64 194}
!13 = !{i64 201}
!14 = !{i64 208}
!15 = !{i64 211}
!16 = !{i64 216}
!17 = !{i64 219}
!18 = !{i64 222}
!19 = !{i64 225}
!20 = !{i64 230}
!21 = !{i64 232}
!22 = !{i64 236}
!23 = !{i64 237}
!24 = !{i64 0}
!25 = !{i64 1}
!26 = !{i64 4}
!27 = !{i64 8}
!28 = !{i64 11}
!29 = !{i64 15}
!30 = !{i64 22}
!31 = !{i64 25}
!32 = !{i64 28}
!33 = !{i64 34}
!34 = !{i64 38}
!35 = !{i64 41}
!36 = !{i64 44}
!37 = !{i64 46}
!38 = !{i64 48}
!39 = !{i64 51}
!40 = !{i64 55}
!41 = !{i64 58}
!42 = !{i64 60}
!43 = !{i64 63}
!44 = !{i64 66}
!45 = !{i64 69}
!46 = !{i64 72}
!47 = !{i64 77}
!48 = !{i64 87}
!49 = !{i64 90}
!50 = !{i64 94}
!51 = !{i64 96}
!52 = !{i64 100}
!53 = !{i64 103}
!54 = !{i64 107}
!55 = !{i64 111}
!56 = !{i64 115}
!57 = !{i64 119}
!58 = !{i64 121}
!59 = !{i64 126}
!60 = !{i64 129}
!61 = !{i64 133}
!62 = !{i64 134}
