; ModuleID = 'Output/test_0.clang.trans.bc'
source_filename = "Output/test_0.clang.bc"
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

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x56 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x60 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"V\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x56 to i64), i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  store i64 %14, i64* %XAX, !mcsema_real_eip !6
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !7
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %16, !mcsema_real_eip !7
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -24
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RAX_val.7 = load i64, i64* %XAX, !mcsema_real_eip !8
  store i64 %RAX_val.7, i64* %_allin_new_bt_21, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %17 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !9
  store i64 %17, i64* %XAX, !mcsema_real_eip !9
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !10
  %19 = inttoptr i64 %17 to i32*, !mcsema_real_eip !10
  store i32 1, i32* %19, !mcsema_real_eip !10
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %20 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !11
  store i64 %20, i64* %XAX, !mcsema_real_eip !11
  %21 = add i64 %20, 4, !mcsema_real_eip !12
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !12
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !12
  store i32 2, i32* %23, !mcsema_real_eip !12
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %24 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !13
  store i64 %24, i64* %XAX, !mcsema_real_eip !13
  %25 = add i64 %24, 4, !mcsema_real_eip !14
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !14
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !14
  %28 = load i32, i32* %27, !mcsema_real_eip !14
  %29 = zext i32 %28 to i64, !mcsema_real_eip !14
  store i64 %29, i64* %XSI, !mcsema_real_eip !14
  %AL.14 = bitcast i64* %XAX to i8*, !mcsema_real_eip !15
  store i8 0, i8* %AL.14, !mcsema_real_eip !15
  %RDI_val.15 = load i64, i64* %XDI, !mcsema_real_eip !16
  %RDX_val.17 = load i64, i64* %XDX, !mcsema_real_eip !16
  %RCX_val.18 = load i64, i64* %XCX, !mcsema_real_eip !16
  %R8_val.19 = load i64, i64* %R8, !mcsema_real_eip !16
  %R9_val.20 = load i64, i64* %R9, !mcsema_real_eip !16
  %_load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_32 = bitcast i8* %_load_rsp_ptr_31 to i64*
  %30 = load i64, i64* %_allin_new_bt_32, !mcsema_real_eip !16
  %_new_gep_33 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %31 = load i64, i64* %_allin_new_bt_34, !mcsema_real_eip !16
  %_new_gep_35 = getelementptr i8, i8* %_new_gep_33, i64 8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %32 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !16
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_35, i64 8
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %33 = load i64, i64* %_allin_new_bt_38, !mcsema_real_eip !16
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_37, i64 8
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %34 = load i64, i64* %_allin_new_bt_40, !mcsema_real_eip !16
  %_new_gep_41 = getelementptr i8, i8* %_new_gep_39, i64 8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %35 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !16
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_44 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 -8
  %36 = sub i64 %RSP_val.22, 8, !mcsema_real_eip !16
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_45, !mcsema_real_eip !16
  store volatile i8* %_new_gep_44, i8** %_RSP_ptr_
  store i64 %36, i64* %XSP, !mcsema_real_eip !16
  %37 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.15, i64 %29, i64 %RDX_val.17, i64 %RCX_val.18, i64 %R8_val.19, i64 %R9_val.20, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %37, i64* %XAX, !mcsema_real_eip !16
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -24
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %38 = load i64, i64* %_allin_new_bt_48, !mcsema_real_eip !17
  store i64 %38, i64* %XDI, !mcsema_real_eip !17
  %39 = add i64 %38, 4, !mcsema_real_eip !18
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !18
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !18
  %42 = load i32, i32* %41, !mcsema_real_eip !18
  %43 = zext i32 %42 to i64, !mcsema_real_eip !18
  store i64 %43, i64* %XSI, !mcsema_real_eip !18
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -28
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %EAX.26 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.27 = load i32, i32* %EAX.26, !mcsema_real_eip !19
  %44 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !19
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.27, i32* %45, !mcsema_real_eip !19
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !20
  %ESI_val.29 = load i32, i32* %ESI.28, !mcsema_real_eip !20
  %46 = zext i32 %ESI_val.29 to i64, !mcsema_real_eip !20
  store i64 %46, i64* %XAX, !mcsema_real_eip !20
  %_load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_53 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 32
  %47 = add i64 32, %RSP_val.30, !mcsema_real_eip !21
  %_trans_p2i_54 = ptrtoint i8* %_new_gep_53 to i64
  %_trans_p2i_55 = ptrtoint i8* %_load_rsp_ptr_52 to i64
  %_trans_xor_56 = xor i64 %_trans_p2i_54, %_trans_p2i_55
  %48 = xor i64 %_trans_xor_56, 32, !mcsema_real_eip !21
  %49 = and i64 %48, 16, !mcsema_real_eip !21
  %50 = icmp ne i64 %49, 0, !mcsema_real_eip !21
  store i1 %50, i1* %AF, !mcsema_real_eip !21
  %51 = lshr i64 %47, 63, !mcsema_real_eip !21
  %52 = trunc i64 %51 to i1, !mcsema_real_eip !21
  store i1 %52, i1* %SF, !mcsema_real_eip !21
  %_trans_icmp_eq_58 = icmp eq i64 %_trans_p2i_54, 0
  store i1 %_trans_icmp_eq_58, i1* %ZF, !mcsema_real_eip !21
  %_trans_xor_60 = xor i64 %_trans_p2i_55, 32
  %53 = xor i64 %_trans_xor_60, -1, !mcsema_real_eip !21
  %54 = and i64 %53, %_trans_xor_56, !mcsema_real_eip !21
  %55 = lshr i64 %54, 63, !mcsema_real_eip !21
  %56 = and i64 %55, 1, !mcsema_real_eip !21
  %57 = trunc i64 %56 to i1, !mcsema_real_eip !21
  store i1 %57, i1* %OF, !mcsema_real_eip !21
  %_trans_trunc_65 = trunc i64 %_trans_p2i_54 to i8
  %58 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_65), !mcsema_real_eip !21
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !21
  %60 = xor i1 %59, true, !mcsema_real_eip !21
  store i1 %60, i1* %PF, !mcsema_real_eip !21
  %_trans_icmp_ne_67 = icmp ne i64 %_trans_p2i_54, %RSP_val.30
  store i1 %_trans_icmp_ne_67, i1* %CF, !mcsema_real_eip !21
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_
  store i64 %47, i64* %XSP, !mcsema_real_eip !21
  %_allin_new_bt_69 = bitcast i8* %_new_gep_53 to i64*
  %61 = load i64, i64* %_allin_new_bt_69, !mcsema_real_eip !22
  %_new_int2ptr_ = inttoptr i64 %61 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %61, i64* %XBP, !mcsema_real_eip !22
  %_new_gep_70 = getelementptr i8, i8* %_new_gep_53, i64 8
  %62 = add i64 %47, 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_70, i8** %_RSP_ptr_
  store i64 %62, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_72 = getelementptr i8, i8* %_new_gep_70, i64 8
  %63 = add i64 %62, 8, !mcsema_real_eip !23
  %_allin_new_bt_73 = bitcast i8* %_new_gep_70 to i64*
  %64 = load i64, i64* %_allin_new_bt_73, !mcsema_real_eip !23
  store i64 %64, i64* %XIP, !mcsema_real_eip !23
  store volatile i8* %_new_gep_72, i8** %_RSP_ptr_
  store i64 %63, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
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
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x56 to i64), i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  store i64 %14, i64* %XAX, !mcsema_real_eip !6
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !7
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %16, !mcsema_real_eip !7
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -24
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RAX_val.7 = load i64, i64* %XAX, !mcsema_real_eip !8
  store i64 %RAX_val.7, i64* %_allin_new_bt_21, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_24 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %17, label %18

; <label>:17:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %18

; <label>:18:                                     ; preds = %block_0x0, %17
  %19 = phi i64* [ %_allin_new_bt_24, %block_0x0 ], [ %_address_in_parent_stack_bt_, %17 ]
  %_new_load_ = load i64, i64* %19
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !9
  %20 = inttoptr i64 %_new_load_ to i64*, !mcsema_real_eip !10
  %21 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !10
  store i32 1, i32* %21, !mcsema_real_eip !10
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_74 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_77 = sub i64 %_ptr_to_int_74, %_local_end_to_int_
  %_pot_address_in_parent_stack_78 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_77
  %_cond1_79 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_80 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_81 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_82 = or i1 %_cond2_1_80, %_cond2_2_81
  %_cond4_83 = icmp ule i8* %_pot_address_in_parent_stack_78, %_parent_stack_end_ptr_
  %_cond1_n_cond2_84 = and i1 %_cond1_79, %_cond2_82
  %_cond1_n_cond2_cond3_85 = and i1 %_cond1_n_cond2_84, %_cond4_83
  br i1 %_cond1_n_cond2_cond3_85, label %22, label %23

; <label>:22:                                     ; preds = %18
  %_address_in_parent_stack_bt_87 = bitcast i8* %_pot_address_in_parent_stack_78 to i64*
  br label %23

; <label>:23:                                     ; preds = %18, %22
  %24 = phi i64* [ %_allin_new_bt_27, %18 ], [ %_address_in_parent_stack_bt_87, %22 ]
  %_new_load_88 = load i64, i64* %24
  store i64 %_new_load_88, i64* %XAX, !mcsema_real_eip !11
  %25 = add i64 %_new_load_88, 4, !mcsema_real_eip !12
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !12
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !12
  store i32 2, i32* %27, !mcsema_real_eip !12
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_89 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_92 = sub i64 %_ptr_to_int_89, %_local_end_to_int_
  %_pot_address_in_parent_stack_93 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_92
  %_cond1_94 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_95 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_96 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_97 = or i1 %_cond2_1_95, %_cond2_2_96
  %_cond4_98 = icmp ule i8* %_pot_address_in_parent_stack_93, %_parent_stack_end_ptr_
  %_cond1_n_cond2_99 = and i1 %_cond1_94, %_cond2_97
  %_cond1_n_cond2_cond3_100 = and i1 %_cond1_n_cond2_99, %_cond4_98
  br i1 %_cond1_n_cond2_cond3_100, label %28, label %29

; <label>:28:                                     ; preds = %23
  %_address_in_parent_stack_bt_102 = bitcast i8* %_pot_address_in_parent_stack_93 to i64*
  br label %29

; <label>:29:                                     ; preds = %23, %28
  %30 = phi i64* [ %_allin_new_bt_30, %23 ], [ %_address_in_parent_stack_bt_102, %28 ]
  %_new_load_103 = load i64, i64* %30
  store i64 %_new_load_103, i64* %XAX, !mcsema_real_eip !13
  %31 = add i64 %_new_load_103, 4, !mcsema_real_eip !14
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !14
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !14
  %_ptr_bt_106 = bitcast i32* %33 to i8*
  %_offset_above_rbp_107 = sub i64 %31, %_local_end_to_int_
  %_pot_address_in_parent_stack_108 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_107
  %_cond1_109 = icmp ugt i8* %_ptr_bt_106, %_local_stack_end_ptr_
  %_cond2_1_110 = icmp ugt i8* %_ptr_bt_106, %_parent_stack_end_ptr_
  %_cond2_2_111 = icmp ult i8* %_ptr_bt_106, %_parent_stack_start_ptr_
  %_cond2_112 = or i1 %_cond2_1_110, %_cond2_2_111
  %_cond4_113 = icmp ule i8* %_pot_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond1_n_cond2_114 = and i1 %_cond1_109, %_cond2_112
  %_cond1_n_cond2_cond3_115 = and i1 %_cond1_n_cond2_114, %_cond4_113
  br i1 %_cond1_n_cond2_cond3_115, label %34, label %35

; <label>:34:                                     ; preds = %29
  %_address_in_parent_stack_bt_117 = bitcast i8* %_pot_address_in_parent_stack_108 to i32*
  br label %35

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i32* [ %33, %29 ], [ %_address_in_parent_stack_bt_117, %34 ]
  %_new_load_118 = load i32, i32* %36
  %37 = zext i32 %_new_load_118 to i64, !mcsema_real_eip !14
  store i64 %37, i64* %XSI, !mcsema_real_eip !14
  %AL.14 = bitcast i64* %XAX to i8*, !mcsema_real_eip !15
  store i8 0, i8* %AL.14, !mcsema_real_eip !15
  %RDI_val.15 = load i64, i64* %XDI, !mcsema_real_eip !16
  %RDX_val.17 = load i64, i64* %XDX, !mcsema_real_eip !16
  %RCX_val.18 = load i64, i64* %XCX, !mcsema_real_eip !16
  %R8_val.19 = load i64, i64* %R8, !mcsema_real_eip !16
  %R9_val.20 = load i64, i64* %R9, !mcsema_real_eip !16
  %_load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_32 = bitcast i8* %_load_rsp_ptr_31 to i64*
  %_ptr_to_int_119 = ptrtoint i64* %_allin_new_bt_32 to i64
  %_offset_above_rbp_122 = sub i64 %_ptr_to_int_119, %_local_end_to_int_
  %_pot_address_in_parent_stack_123 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_122
  %_cond1_124 = icmp ugt i8* %_load_rsp_ptr_31, %_local_stack_end_ptr_
  %_cond2_1_125 = icmp ugt i8* %_load_rsp_ptr_31, %_parent_stack_end_ptr_
  %_cond2_2_126 = icmp ult i8* %_load_rsp_ptr_31, %_parent_stack_start_ptr_
  %_cond2_127 = or i1 %_cond2_1_125, %_cond2_2_126
  %_cond4_128 = icmp ule i8* %_pot_address_in_parent_stack_123, %_parent_stack_end_ptr_
  %_cond1_n_cond2_129 = and i1 %_cond1_124, %_cond2_127
  %_cond1_n_cond2_cond3_130 = and i1 %_cond1_n_cond2_129, %_cond4_128
  br i1 %_cond1_n_cond2_cond3_130, label %38, label %39

; <label>:38:                                     ; preds = %35
  %_address_in_parent_stack_bt_132 = bitcast i8* %_pot_address_in_parent_stack_123 to i64*
  br label %39

; <label>:39:                                     ; preds = %35, %38
  %40 = phi i64* [ %_allin_new_bt_32, %35 ], [ %_address_in_parent_stack_bt_132, %38 ]
  %_new_load_133 = load i64, i64* %40
  %_new_gep_33 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_134 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_137 = sub i64 %_ptr_to_int_134, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  br i1 %_cond1_n_cond2_cond3_145, label %41, label %42

; <label>:41:                                     ; preds = %39
  %_address_in_parent_stack_bt_147 = bitcast i8* %_pot_address_in_parent_stack_138 to i64*
  br label %42

; <label>:42:                                     ; preds = %39, %41
  %43 = phi i64* [ %_allin_new_bt_34, %39 ], [ %_address_in_parent_stack_bt_147, %41 ]
  %_new_load_148 = load i64, i64* %43
  %_new_gep_35 = getelementptr i8, i8* %_new_gep_33, i64 8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_149 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_152 = sub i64 %_ptr_to_int_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  br i1 %_cond1_n_cond2_cond3_160, label %44, label %45

; <label>:44:                                     ; preds = %42
  %_address_in_parent_stack_bt_162 = bitcast i8* %_pot_address_in_parent_stack_153 to i64*
  br label %45

; <label>:45:                                     ; preds = %42, %44
  %46 = phi i64* [ %_allin_new_bt_36, %42 ], [ %_address_in_parent_stack_bt_162, %44 ]
  %_new_load_163 = load i64, i64* %46
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_35, i64 8
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %_ptr_to_int_164 = ptrtoint i64* %_allin_new_bt_38 to i64
  %_offset_above_rbp_167 = sub i64 %_ptr_to_int_164, %_local_end_to_int_
  %_pot_address_in_parent_stack_168 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_167
  %_cond1_169 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_170 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_171 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_172 = or i1 %_cond2_1_170, %_cond2_2_171
  %_cond4_173 = icmp ule i8* %_pot_address_in_parent_stack_168, %_parent_stack_end_ptr_
  %_cond1_n_cond2_174 = and i1 %_cond1_169, %_cond2_172
  %_cond1_n_cond2_cond3_175 = and i1 %_cond1_n_cond2_174, %_cond4_173
  br i1 %_cond1_n_cond2_cond3_175, label %47, label %48

; <label>:47:                                     ; preds = %45
  %_address_in_parent_stack_bt_177 = bitcast i8* %_pot_address_in_parent_stack_168 to i64*
  br label %48

; <label>:48:                                     ; preds = %45, %47
  %49 = phi i64* [ %_allin_new_bt_38, %45 ], [ %_address_in_parent_stack_bt_177, %47 ]
  %_new_load_178 = load i64, i64* %49
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_37, i64 8
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_179 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_182 = sub i64 %_ptr_to_int_179, %_local_end_to_int_
  %_pot_address_in_parent_stack_183 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_182
  %_cond1_184 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_185 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_186 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_187 = or i1 %_cond2_1_185, %_cond2_2_186
  %_cond4_188 = icmp ule i8* %_pot_address_in_parent_stack_183, %_parent_stack_end_ptr_
  %_cond1_n_cond2_189 = and i1 %_cond1_184, %_cond2_187
  %_cond1_n_cond2_cond3_190 = and i1 %_cond1_n_cond2_189, %_cond4_188
  br i1 %_cond1_n_cond2_cond3_190, label %50, label %51

; <label>:50:                                     ; preds = %48
  %_address_in_parent_stack_bt_192 = bitcast i8* %_pot_address_in_parent_stack_183 to i64*
  br label %51

; <label>:51:                                     ; preds = %48, %50
  %52 = phi i64* [ %_allin_new_bt_40, %48 ], [ %_address_in_parent_stack_bt_192, %50 ]
  %_new_load_193 = load i64, i64* %52
  %_new_gep_41 = getelementptr i8, i8* %_new_gep_39, i64 8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_194 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_197 = sub i64 %_ptr_to_int_194, %_local_end_to_int_
  %_pot_address_in_parent_stack_198 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_197
  %_cond1_199 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_200 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_201 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_202 = or i1 %_cond2_1_200, %_cond2_2_201
  %_cond4_203 = icmp ule i8* %_pot_address_in_parent_stack_198, %_parent_stack_end_ptr_
  %_cond1_n_cond2_204 = and i1 %_cond1_199, %_cond2_202
  %_cond1_n_cond2_cond3_205 = and i1 %_cond1_n_cond2_204, %_cond4_203
  br i1 %_cond1_n_cond2_cond3_205, label %53, label %54

; <label>:53:                                     ; preds = %51
  %_address_in_parent_stack_bt_207 = bitcast i8* %_pot_address_in_parent_stack_198 to i64*
  br label %54

; <label>:54:                                     ; preds = %51, %53
  %55 = phi i64* [ %_allin_new_bt_42, %51 ], [ %_address_in_parent_stack_bt_207, %53 ]
  %_new_load_208 = load i64, i64* %55
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_44 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 -8
  %56 = sub i64 %RSP_val.22, 8, !mcsema_real_eip !16
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_45, !mcsema_real_eip !16
  store volatile i8* %_new_gep_44, i8** %_RSP_ptr_
  store i64 %56, i64* %XSP, !mcsema_real_eip !16
  %57 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.15, i64 %37, i64 %RDX_val.17, i64 %RCX_val.18, i64 %R8_val.19, i64 %R9_val.20, i64 %_new_load_133, i64 %_new_load_148, i64 %_new_load_163, i64 %_new_load_178, i64 %_new_load_193, i64 %_new_load_208)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %57, i64* %XAX, !mcsema_real_eip !16
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -24
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %_ptr_to_int_209 = ptrtoint i64* %_allin_new_bt_48 to i64
  %_offset_above_rbp_212 = sub i64 %_ptr_to_int_209, %_local_end_to_int_
  %_pot_address_in_parent_stack_213 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_212
  %_cond1_214 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_215 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_216 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_217 = or i1 %_cond2_1_215, %_cond2_2_216
  %_cond4_218 = icmp ule i8* %_pot_address_in_parent_stack_213, %_parent_stack_end_ptr_
  %_cond1_n_cond2_219 = and i1 %_cond1_214, %_cond2_217
  %_cond1_n_cond2_cond3_220 = and i1 %_cond1_n_cond2_219, %_cond4_218
  br i1 %_cond1_n_cond2_cond3_220, label %58, label %59

; <label>:58:                                     ; preds = %54
  %_address_in_parent_stack_bt_222 = bitcast i8* %_pot_address_in_parent_stack_213 to i64*
  br label %59

; <label>:59:                                     ; preds = %54, %58
  %60 = phi i64* [ %_allin_new_bt_48, %54 ], [ %_address_in_parent_stack_bt_222, %58 ]
  %_new_load_223 = load i64, i64* %60
  store i64 %_new_load_223, i64* %XDI, !mcsema_real_eip !17
  %61 = add i64 %_new_load_223, 4, !mcsema_real_eip !18
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !18
  %63 = inttoptr i64 %61 to i32*, !mcsema_real_eip !18
  %_ptr_bt_226 = bitcast i32* %63 to i8*
  %_offset_above_rbp_227 = sub i64 %61, %_local_end_to_int_
  %_pot_address_in_parent_stack_228 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_227
  %_cond1_229 = icmp ugt i8* %_ptr_bt_226, %_local_stack_end_ptr_
  %_cond2_1_230 = icmp ugt i8* %_ptr_bt_226, %_parent_stack_end_ptr_
  %_cond2_2_231 = icmp ult i8* %_ptr_bt_226, %_parent_stack_start_ptr_
  %_cond2_232 = or i1 %_cond2_1_230, %_cond2_2_231
  %_cond4_233 = icmp ule i8* %_pot_address_in_parent_stack_228, %_parent_stack_end_ptr_
  %_cond1_n_cond2_234 = and i1 %_cond1_229, %_cond2_232
  %_cond1_n_cond2_cond3_235 = and i1 %_cond1_n_cond2_234, %_cond4_233
  br i1 %_cond1_n_cond2_cond3_235, label %64, label %65

; <label>:64:                                     ; preds = %59
  %_address_in_parent_stack_bt_237 = bitcast i8* %_pot_address_in_parent_stack_228 to i32*
  br label %65

; <label>:65:                                     ; preds = %59, %64
  %66 = phi i32* [ %63, %59 ], [ %_address_in_parent_stack_bt_237, %64 ]
  %_new_load_238 = load i32, i32* %66
  %67 = zext i32 %_new_load_238 to i64, !mcsema_real_eip !18
  store i64 %67, i64* %XSI, !mcsema_real_eip !18
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -28
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %EAX.26 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.27 = load i32, i32* %EAX.26, !mcsema_real_eip !19
  %68 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !19
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.27, i32* %69, !mcsema_real_eip !19
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !20
  %ESI_val.29 = load i32, i32* %ESI.28, !mcsema_real_eip !20
  %70 = zext i32 %ESI_val.29 to i64, !mcsema_real_eip !20
  store i64 %70, i64* %XAX, !mcsema_real_eip !20
  %_load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_53 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 32
  %71 = add i64 32, %RSP_val.30, !mcsema_real_eip !21
  %_trans_p2i_54 = ptrtoint i8* %_new_gep_53 to i64
  %_trans_p2i_55 = ptrtoint i8* %_load_rsp_ptr_52 to i64
  %_trans_xor_56 = xor i64 %_trans_p2i_54, %_trans_p2i_55
  %72 = xor i64 %_trans_xor_56, 32, !mcsema_real_eip !21
  %73 = and i64 %72, 16, !mcsema_real_eip !21
  %74 = icmp ne i64 %73, 0, !mcsema_real_eip !21
  store i1 %74, i1* %AF, !mcsema_real_eip !21
  %75 = lshr i64 %71, 63, !mcsema_real_eip !21
  %76 = trunc i64 %75 to i1, !mcsema_real_eip !21
  store i1 %76, i1* %SF, !mcsema_real_eip !21
  %_trans_icmp_eq_58 = icmp eq i64 %_trans_p2i_54, 0
  store i1 %_trans_icmp_eq_58, i1* %ZF, !mcsema_real_eip !21
  %_trans_xor_60 = xor i64 %_trans_p2i_55, 32
  %77 = xor i64 %_trans_xor_60, -1, !mcsema_real_eip !21
  %78 = and i64 %77, %_trans_xor_56, !mcsema_real_eip !21
  %79 = lshr i64 %78, 63, !mcsema_real_eip !21
  %80 = and i64 %79, 1, !mcsema_real_eip !21
  %81 = trunc i64 %80 to i1, !mcsema_real_eip !21
  store i1 %81, i1* %OF, !mcsema_real_eip !21
  %_trans_trunc_65 = trunc i64 %_trans_p2i_54 to i8
  %82 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_65), !mcsema_real_eip !21
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !21
  %84 = xor i1 %83, true, !mcsema_real_eip !21
  store i1 %84, i1* %PF, !mcsema_real_eip !21
  %_trans_icmp_ne_67 = icmp ne i64 %_trans_p2i_54, %RSP_val.30
  store i1 %_trans_icmp_ne_67, i1* %CF, !mcsema_real_eip !21
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_
  store i64 %71, i64* %XSP, !mcsema_real_eip !21
  %_allin_new_bt_69 = bitcast i8* %_new_gep_53 to i64*
  %_ptr_to_int_239 = ptrtoint i64* %_allin_new_bt_69 to i64
  %_offset_above_rbp_242 = sub i64 %_ptr_to_int_239, %_local_end_to_int_
  %_pot_address_in_parent_stack_243 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_242
  %_cond1_244 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_245 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_246 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_247 = or i1 %_cond2_1_245, %_cond2_2_246
  %_cond4_248 = icmp ule i8* %_pot_address_in_parent_stack_243, %_parent_stack_end_ptr_
  %_cond1_n_cond2_249 = and i1 %_cond1_244, %_cond2_247
  %_cond1_n_cond2_cond3_250 = and i1 %_cond1_n_cond2_249, %_cond4_248
  br i1 %_cond1_n_cond2_cond3_250, label %85, label %86

; <label>:85:                                     ; preds = %65
  %_address_in_parent_stack_bt_252 = bitcast i8* %_pot_address_in_parent_stack_243 to i64*
  br label %86

; <label>:86:                                     ; preds = %65, %85
  %87 = phi i64* [ %_allin_new_bt_69, %65 ], [ %_address_in_parent_stack_bt_252, %85 ]
  %_new_load_253 = load i64, i64* %87
  %_new_int2ptr_ = inttoptr i64 %_new_load_253 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_253, i64* %XBP, !mcsema_real_eip !22
  %_new_gep_70 = getelementptr i8, i8* %_new_gep_53, i64 8
  %88 = add i64 %71, 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_70, i8** %_RSP_ptr_
  store i64 %88, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_72 = getelementptr i8, i8* %_new_gep_70, i64 8
  %89 = add i64 %88, 8, !mcsema_real_eip !23
  %_allin_new_bt_73 = bitcast i8* %_new_gep_70 to i64*
  %_ptr_to_int_254 = ptrtoint i64* %_allin_new_bt_73 to i64
  %_offset_above_rbp_257 = sub i64 %_ptr_to_int_254, %_local_end_to_int_
  %_pot_address_in_parent_stack_258 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_257
  %_cond1_259 = icmp ugt i8* %_new_gep_70, %_local_stack_end_ptr_
  %_cond2_1_260 = icmp ugt i8* %_new_gep_70, %_parent_stack_end_ptr_
  %_cond2_2_261 = icmp ult i8* %_new_gep_70, %_parent_stack_start_ptr_
  %_cond2_262 = or i1 %_cond2_1_260, %_cond2_2_261
  %_cond4_263 = icmp ule i8* %_pot_address_in_parent_stack_258, %_parent_stack_end_ptr_
  %_cond1_n_cond2_264 = and i1 %_cond1_259, %_cond2_262
  %_cond1_n_cond2_cond3_265 = and i1 %_cond1_n_cond2_264, %_cond4_263
  br i1 %_cond1_n_cond2_cond3_265, label %90, label %91

; <label>:90:                                     ; preds = %86
  %_address_in_parent_stack_bt_267 = bitcast i8* %_pot_address_in_parent_stack_258 to i64*
  br label %91

; <label>:91:                                     ; preds = %86, %90
  %92 = phi i64* [ %_allin_new_bt_73, %86 ], [ %_address_in_parent_stack_bt_267, %90 ]
  %_new_load_268 = load i64, i64* %92
  store i64 %_new_load_268, i64* %XIP, !mcsema_real_eip !23
  store volatile i8* %_new_gep_72, i8** %_RSP_ptr_
  store i64 %89, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 29}
!9 = !{i64 33}
!10 = !{i64 37}
!11 = !{i64 43}
!12 = !{i64 47}
!13 = !{i64 54}
!14 = !{i64 58}
!15 = !{i64 61}
!16 = !{i64 63}
!17 = !{i64 68}
!18 = !{i64 72}
!19 = !{i64 75}
!20 = !{i64 78}
!21 = !{i64 80}
!22 = !{i64 84}
!23 = !{i64 85}
