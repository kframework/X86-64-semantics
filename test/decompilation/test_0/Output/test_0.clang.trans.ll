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
  %_new_gep_43 = getelementptr i8, i8* %_new_gep_41, i64 8
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %36 = load i64, i64* %_allin_new_bt_44, !mcsema_real_eip !16
  %_new_gep_45 = getelementptr i8, i8* %_new_gep_43, i64 8
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %37 = load i64, i64* %_allin_new_bt_46, !mcsema_real_eip !16
  %_new_gep_47 = getelementptr i8, i8* %_new_gep_45, i64 8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %38 = load i64, i64* %_allin_new_bt_48, !mcsema_real_eip !16
  %_new_gep_49 = getelementptr i8, i8* %_new_gep_47, i64 8
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %39 = load i64, i64* %_allin_new_bt_50, !mcsema_real_eip !16
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_52 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 -8
  %40 = sub i64 %RSP_val.22, 8, !mcsema_real_eip !16
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_53, !mcsema_real_eip !16
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_
  store i64 %40, i64* %XSP, !mcsema_real_eip !16
  %41 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.15, i64 %29, i64 %RDX_val.17, i64 %RCX_val.18, i64 %R8_val.19, i64 %R9_val.20, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %41, i64* %XAX, !mcsema_real_eip !16
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -24
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %42 = load i64, i64* %_allin_new_bt_56, !mcsema_real_eip !17
  store i64 %42, i64* %XDI, !mcsema_real_eip !17
  %43 = add i64 %42, 4, !mcsema_real_eip !18
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !18
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !18
  %46 = load i32, i32* %45, !mcsema_real_eip !18
  %47 = zext i32 %46 to i64, !mcsema_real_eip !18
  store i64 %47, i64* %XSI, !mcsema_real_eip !18
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -28
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %EAX.26 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.27 = load i32, i32* %EAX.26, !mcsema_real_eip !19
  %48 = ptrtoint i64* %_allin_new_bt_59 to i64, !mcsema_real_eip !19
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.27, i32* %49, !mcsema_real_eip !19
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !20
  %ESI_val.29 = load i32, i32* %ESI.28, !mcsema_real_eip !20
  %50 = zext i32 %ESI_val.29 to i64, !mcsema_real_eip !20
  store i64 %50, i64* %XAX, !mcsema_real_eip !20
  %_load_rsp_ptr_60 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_61 = getelementptr i8, i8* %_load_rsp_ptr_60, i64 32
  %51 = add i64 32, %RSP_val.30, !mcsema_real_eip !21
  %_trans_p2i_62 = ptrtoint i8* %_new_gep_61 to i64
  %_trans_p2i_63 = ptrtoint i8* %_load_rsp_ptr_60 to i64
  %_trans_xor_64 = xor i64 %_trans_p2i_62, %_trans_p2i_63
  %52 = xor i64 %_trans_xor_64, 32, !mcsema_real_eip !21
  %53 = and i64 %52, 16, !mcsema_real_eip !21
  %54 = icmp ne i64 %53, 0, !mcsema_real_eip !21
  store i1 %54, i1* %AF, !mcsema_real_eip !21
  %55 = lshr i64 %51, 63, !mcsema_real_eip !21
  %56 = trunc i64 %55 to i1, !mcsema_real_eip !21
  store i1 %56, i1* %SF, !mcsema_real_eip !21
  %_trans_icmp_eq_66 = icmp eq i64 %_trans_p2i_62, 0
  store i1 %_trans_icmp_eq_66, i1* %ZF, !mcsema_real_eip !21
  %_trans_xor_68 = xor i64 %_trans_p2i_63, 32
  %57 = xor i64 %_trans_xor_68, -1, !mcsema_real_eip !21
  %58 = and i64 %57, %_trans_xor_64, !mcsema_real_eip !21
  %59 = lshr i64 %58, 63, !mcsema_real_eip !21
  %60 = and i64 %59, 1, !mcsema_real_eip !21
  %61 = trunc i64 %60 to i1, !mcsema_real_eip !21
  store i1 %61, i1* %OF, !mcsema_real_eip !21
  %_trans_trunc_73 = trunc i64 %_trans_p2i_62 to i8
  %62 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_73), !mcsema_real_eip !21
  %63 = trunc i8 %62 to i1, !mcsema_real_eip !21
  %64 = xor i1 %63, true, !mcsema_real_eip !21
  store i1 %64, i1* %PF, !mcsema_real_eip !21
  %_trans_icmp_ne_75 = icmp ne i64 %_trans_p2i_62, %RSP_val.30
  store i1 %_trans_icmp_ne_75, i1* %CF, !mcsema_real_eip !21
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_
  store i64 %51, i64* %XSP, !mcsema_real_eip !21
  %_allin_new_bt_77 = bitcast i8* %_new_gep_61 to i64*
  %65 = load i64, i64* %_allin_new_bt_77, !mcsema_real_eip !22
  %_new_int2ptr_ = inttoptr i64 %65 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %65, i64* %XBP, !mcsema_real_eip !22
  %_new_gep_78 = getelementptr i8, i8* %_new_gep_61, i64 8
  %66 = add i64 %51, 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_
  store i64 %66, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_80 = getelementptr i8, i8* %_new_gep_78, i64 8
  %67 = add i64 %66, 8, !mcsema_real_eip !23
  %_allin_new_bt_81 = bitcast i8* %_new_gep_78 to i64*
  %68 = load i64, i64* %_allin_new_bt_81, !mcsema_real_eip !23
  store i64 %68, i64* %XIP, !mcsema_real_eip !23
  store volatile i8* %_new_gep_80, i8** %_RSP_ptr_
  store i64 %67, i64* %XSP, !mcsema_real_eip !23
  ret void, !mcsema_real_eip !23
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

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
  %_ptr_to_int_82 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_85 = sub i64 %_ptr_to_int_82, %_local_end_to_int_
  %_pot_address_in_parent_stack_86 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_85
  %_cond1_87 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_88 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_89 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_90 = or i1 %_cond2_1_88, %_cond2_2_89
  %_cond4_91 = icmp ule i8* %_pot_address_in_parent_stack_86, %_parent_stack_end_ptr_
  %_cond1_n_cond2_92 = and i1 %_cond1_87, %_cond2_90
  %_cond1_n_cond2_cond3_93 = and i1 %_cond1_n_cond2_92, %_cond4_91
  br i1 %_cond1_n_cond2_cond3_93, label %22, label %23

; <label>:22:                                     ; preds = %18
  %_address_in_parent_stack_bt_95 = bitcast i8* %_pot_address_in_parent_stack_86 to i64*
  br label %23

; <label>:23:                                     ; preds = %18, %22
  %24 = phi i64* [ %_allin_new_bt_27, %18 ], [ %_address_in_parent_stack_bt_95, %22 ]
  %_new_load_96 = load i64, i64* %24
  store i64 %_new_load_96, i64* %XAX, !mcsema_real_eip !11
  %25 = add i64 %_new_load_96, 4, !mcsema_real_eip !12
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !12
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !12
  store i32 2, i32* %27, !mcsema_real_eip !12
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_97 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_100 = sub i64 %_ptr_to_int_97, %_local_end_to_int_
  %_pot_address_in_parent_stack_101 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_100
  %_cond1_102 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_103 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_104 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_105 = or i1 %_cond2_1_103, %_cond2_2_104
  %_cond4_106 = icmp ule i8* %_pot_address_in_parent_stack_101, %_parent_stack_end_ptr_
  %_cond1_n_cond2_107 = and i1 %_cond1_102, %_cond2_105
  %_cond1_n_cond2_cond3_108 = and i1 %_cond1_n_cond2_107, %_cond4_106
  br i1 %_cond1_n_cond2_cond3_108, label %28, label %29

; <label>:28:                                     ; preds = %23
  %_address_in_parent_stack_bt_110 = bitcast i8* %_pot_address_in_parent_stack_101 to i64*
  br label %29

; <label>:29:                                     ; preds = %23, %28
  %30 = phi i64* [ %_allin_new_bt_30, %23 ], [ %_address_in_parent_stack_bt_110, %28 ]
  %_new_load_111 = load i64, i64* %30
  store i64 %_new_load_111, i64* %XAX, !mcsema_real_eip !13
  %31 = add i64 %_new_load_111, 4, !mcsema_real_eip !14
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !14
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !14
  %_ptr_bt_114 = bitcast i32* %33 to i8*
  %_offset_above_rbp_115 = sub i64 %31, %_local_end_to_int_
  %_pot_address_in_parent_stack_116 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_115
  %_cond1_117 = icmp ugt i8* %_ptr_bt_114, %_local_stack_end_ptr_
  %_cond2_1_118 = icmp ugt i8* %_ptr_bt_114, %_parent_stack_end_ptr_
  %_cond2_2_119 = icmp ult i8* %_ptr_bt_114, %_parent_stack_start_ptr_
  %_cond2_120 = or i1 %_cond2_1_118, %_cond2_2_119
  %_cond4_121 = icmp ule i8* %_pot_address_in_parent_stack_116, %_parent_stack_end_ptr_
  %_cond1_n_cond2_122 = and i1 %_cond1_117, %_cond2_120
  %_cond1_n_cond2_cond3_123 = and i1 %_cond1_n_cond2_122, %_cond4_121
  br i1 %_cond1_n_cond2_cond3_123, label %34, label %35

; <label>:34:                                     ; preds = %29
  %_address_in_parent_stack_bt_125 = bitcast i8* %_pot_address_in_parent_stack_116 to i32*
  br label %35

; <label>:35:                                     ; preds = %29, %34
  %36 = phi i32* [ %33, %29 ], [ %_address_in_parent_stack_bt_125, %34 ]
  %_new_load_126 = load i32, i32* %36
  %37 = zext i32 %_new_load_126 to i64, !mcsema_real_eip !14
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
  %_ptr_to_int_127 = ptrtoint i64* %_allin_new_bt_32 to i64
  %_offset_above_rbp_130 = sub i64 %_ptr_to_int_127, %_local_end_to_int_
  %_pot_address_in_parent_stack_131 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_130
  %_cond1_132 = icmp ugt i8* %_load_rsp_ptr_31, %_local_stack_end_ptr_
  %_cond2_1_133 = icmp ugt i8* %_load_rsp_ptr_31, %_parent_stack_end_ptr_
  %_cond2_2_134 = icmp ult i8* %_load_rsp_ptr_31, %_parent_stack_start_ptr_
  %_cond2_135 = or i1 %_cond2_1_133, %_cond2_2_134
  %_cond4_136 = icmp ule i8* %_pot_address_in_parent_stack_131, %_parent_stack_end_ptr_
  %_cond1_n_cond2_137 = and i1 %_cond1_132, %_cond2_135
  %_cond1_n_cond2_cond3_138 = and i1 %_cond1_n_cond2_137, %_cond4_136
  br i1 %_cond1_n_cond2_cond3_138, label %38, label %39

; <label>:38:                                     ; preds = %35
  %_address_in_parent_stack_bt_140 = bitcast i8* %_pot_address_in_parent_stack_131 to i64*
  br label %39

; <label>:39:                                     ; preds = %35, %38
  %40 = phi i64* [ %_allin_new_bt_32, %35 ], [ %_address_in_parent_stack_bt_140, %38 ]
  %_new_load_141 = load i64, i64* %40
  %_new_gep_33 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_142 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_145 = sub i64 %_ptr_to_int_142, %_local_end_to_int_
  %_pot_address_in_parent_stack_146 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_145
  %_cond1_147 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_148 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_149 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_150 = or i1 %_cond2_1_148, %_cond2_2_149
  %_cond4_151 = icmp ule i8* %_pot_address_in_parent_stack_146, %_parent_stack_end_ptr_
  %_cond1_n_cond2_152 = and i1 %_cond1_147, %_cond2_150
  %_cond1_n_cond2_cond3_153 = and i1 %_cond1_n_cond2_152, %_cond4_151
  br i1 %_cond1_n_cond2_cond3_153, label %41, label %42

; <label>:41:                                     ; preds = %39
  %_address_in_parent_stack_bt_155 = bitcast i8* %_pot_address_in_parent_stack_146 to i64*
  br label %42

; <label>:42:                                     ; preds = %39, %41
  %43 = phi i64* [ %_allin_new_bt_34, %39 ], [ %_address_in_parent_stack_bt_155, %41 ]
  %_new_load_156 = load i64, i64* %43
  %_new_gep_35 = getelementptr i8, i8* %_new_gep_33, i64 8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_157 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_160 = sub i64 %_ptr_to_int_157, %_local_end_to_int_
  %_pot_address_in_parent_stack_161 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_160
  %_cond1_162 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_163 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_164 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_165 = or i1 %_cond2_1_163, %_cond2_2_164
  %_cond4_166 = icmp ule i8* %_pot_address_in_parent_stack_161, %_parent_stack_end_ptr_
  %_cond1_n_cond2_167 = and i1 %_cond1_162, %_cond2_165
  %_cond1_n_cond2_cond3_168 = and i1 %_cond1_n_cond2_167, %_cond4_166
  br i1 %_cond1_n_cond2_cond3_168, label %44, label %45

; <label>:44:                                     ; preds = %42
  %_address_in_parent_stack_bt_170 = bitcast i8* %_pot_address_in_parent_stack_161 to i64*
  br label %45

; <label>:45:                                     ; preds = %42, %44
  %46 = phi i64* [ %_allin_new_bt_36, %42 ], [ %_address_in_parent_stack_bt_170, %44 ]
  %_new_load_171 = load i64, i64* %46
  %_new_gep_37 = getelementptr i8, i8* %_new_gep_35, i64 8
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  %_ptr_to_int_172 = ptrtoint i64* %_allin_new_bt_38 to i64
  %_offset_above_rbp_175 = sub i64 %_ptr_to_int_172, %_local_end_to_int_
  %_pot_address_in_parent_stack_176 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_175
  %_cond1_177 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_178 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_179 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_180 = or i1 %_cond2_1_178, %_cond2_2_179
  %_cond4_181 = icmp ule i8* %_pot_address_in_parent_stack_176, %_parent_stack_end_ptr_
  %_cond1_n_cond2_182 = and i1 %_cond1_177, %_cond2_180
  %_cond1_n_cond2_cond3_183 = and i1 %_cond1_n_cond2_182, %_cond4_181
  br i1 %_cond1_n_cond2_cond3_183, label %47, label %48

; <label>:47:                                     ; preds = %45
  %_address_in_parent_stack_bt_185 = bitcast i8* %_pot_address_in_parent_stack_176 to i64*
  br label %48

; <label>:48:                                     ; preds = %45, %47
  %49 = phi i64* [ %_allin_new_bt_38, %45 ], [ %_address_in_parent_stack_bt_185, %47 ]
  %_new_load_186 = load i64, i64* %49
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_37, i64 8
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_187 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_190 = sub i64 %_ptr_to_int_187, %_local_end_to_int_
  %_pot_address_in_parent_stack_191 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_190
  %_cond1_192 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_193 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_194 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_195 = or i1 %_cond2_1_193, %_cond2_2_194
  %_cond4_196 = icmp ule i8* %_pot_address_in_parent_stack_191, %_parent_stack_end_ptr_
  %_cond1_n_cond2_197 = and i1 %_cond1_192, %_cond2_195
  %_cond1_n_cond2_cond3_198 = and i1 %_cond1_n_cond2_197, %_cond4_196
  br i1 %_cond1_n_cond2_cond3_198, label %50, label %51

; <label>:50:                                     ; preds = %48
  %_address_in_parent_stack_bt_200 = bitcast i8* %_pot_address_in_parent_stack_191 to i64*
  br label %51

; <label>:51:                                     ; preds = %48, %50
  %52 = phi i64* [ %_allin_new_bt_40, %48 ], [ %_address_in_parent_stack_bt_200, %50 ]
  %_new_load_201 = load i64, i64* %52
  %_new_gep_41 = getelementptr i8, i8* %_new_gep_39, i64 8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_202 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_205 = sub i64 %_ptr_to_int_202, %_local_end_to_int_
  %_pot_address_in_parent_stack_206 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_cond1_207 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_208 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_209 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_210 = or i1 %_cond2_1_208, %_cond2_2_209
  %_cond4_211 = icmp ule i8* %_pot_address_in_parent_stack_206, %_parent_stack_end_ptr_
  %_cond1_n_cond2_212 = and i1 %_cond1_207, %_cond2_210
  %_cond1_n_cond2_cond3_213 = and i1 %_cond1_n_cond2_212, %_cond4_211
  br i1 %_cond1_n_cond2_cond3_213, label %53, label %54

; <label>:53:                                     ; preds = %51
  %_address_in_parent_stack_bt_215 = bitcast i8* %_pot_address_in_parent_stack_206 to i64*
  br label %54

; <label>:54:                                     ; preds = %51, %53
  %55 = phi i64* [ %_allin_new_bt_42, %51 ], [ %_address_in_parent_stack_bt_215, %53 ]
  %_new_load_216 = load i64, i64* %55
  %_new_gep_43 = getelementptr i8, i8* %_new_gep_41, i64 8
  %_allin_new_bt_44 = bitcast i8* %_new_gep_43 to i64*
  %_ptr_to_int_217 = ptrtoint i64* %_allin_new_bt_44 to i64
  %_offset_above_rbp_220 = sub i64 %_ptr_to_int_217, %_local_end_to_int_
  %_pot_address_in_parent_stack_221 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_cond1_222 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_223 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_224 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_225 = or i1 %_cond2_1_223, %_cond2_2_224
  %_cond4_226 = icmp ule i8* %_pot_address_in_parent_stack_221, %_parent_stack_end_ptr_
  %_cond1_n_cond2_227 = and i1 %_cond1_222, %_cond2_225
  %_cond1_n_cond2_cond3_228 = and i1 %_cond1_n_cond2_227, %_cond4_226
  br i1 %_cond1_n_cond2_cond3_228, label %56, label %57

; <label>:56:                                     ; preds = %54
  %_address_in_parent_stack_bt_230 = bitcast i8* %_pot_address_in_parent_stack_221 to i64*
  br label %57

; <label>:57:                                     ; preds = %54, %56
  %58 = phi i64* [ %_allin_new_bt_44, %54 ], [ %_address_in_parent_stack_bt_230, %56 ]
  %_new_load_231 = load i64, i64* %58
  %_new_gep_45 = getelementptr i8, i8* %_new_gep_43, i64 8
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %_ptr_to_int_232 = ptrtoint i64* %_allin_new_bt_46 to i64
  %_offset_above_rbp_235 = sub i64 %_ptr_to_int_232, %_local_end_to_int_
  %_pot_address_in_parent_stack_236 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_235
  %_cond1_237 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_238 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_239 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_240 = or i1 %_cond2_1_238, %_cond2_2_239
  %_cond4_241 = icmp ule i8* %_pot_address_in_parent_stack_236, %_parent_stack_end_ptr_
  %_cond1_n_cond2_242 = and i1 %_cond1_237, %_cond2_240
  %_cond1_n_cond2_cond3_243 = and i1 %_cond1_n_cond2_242, %_cond4_241
  br i1 %_cond1_n_cond2_cond3_243, label %59, label %60

; <label>:59:                                     ; preds = %57
  %_address_in_parent_stack_bt_245 = bitcast i8* %_pot_address_in_parent_stack_236 to i64*
  br label %60

; <label>:60:                                     ; preds = %57, %59
  %61 = phi i64* [ %_allin_new_bt_46, %57 ], [ %_address_in_parent_stack_bt_245, %59 ]
  %_new_load_246 = load i64, i64* %61
  %_new_gep_47 = getelementptr i8, i8* %_new_gep_45, i64 8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %_ptr_to_int_247 = ptrtoint i64* %_allin_new_bt_48 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %_local_end_to_int_
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  br i1 %_cond1_n_cond2_cond3_258, label %62, label %63

; <label>:62:                                     ; preds = %60
  %_address_in_parent_stack_bt_260 = bitcast i8* %_pot_address_in_parent_stack_251 to i64*
  br label %63

; <label>:63:                                     ; preds = %60, %62
  %64 = phi i64* [ %_allin_new_bt_48, %60 ], [ %_address_in_parent_stack_bt_260, %62 ]
  %_new_load_261 = load i64, i64* %64
  %_new_gep_49 = getelementptr i8, i8* %_new_gep_47, i64 8
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %_ptr_to_int_262 = ptrtoint i64* %_allin_new_bt_50 to i64
  %_offset_above_rbp_265 = sub i64 %_ptr_to_int_262, %_local_end_to_int_
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %_new_gep_49, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %_new_gep_49, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %_new_gep_49, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond1_n_cond2_272, %_cond4_271
  br i1 %_cond1_n_cond2_cond3_273, label %65, label %66

; <label>:65:                                     ; preds = %63
  %_address_in_parent_stack_bt_275 = bitcast i8* %_pot_address_in_parent_stack_266 to i64*
  br label %66

; <label>:66:                                     ; preds = %63, %65
  %67 = phi i64* [ %_allin_new_bt_50, %63 ], [ %_address_in_parent_stack_bt_275, %65 ]
  %_new_load_276 = load i64, i64* %67
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_52 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 -8
  %68 = sub i64 %RSP_val.22, 8, !mcsema_real_eip !16
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_53, !mcsema_real_eip !16
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_
  store i64 %68, i64* %XSP, !mcsema_real_eip !16
  %69 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.15, i64 %37, i64 %RDX_val.17, i64 %RCX_val.18, i64 %R8_val.19, i64 %R9_val.20, i64 %_new_load_141, i64 %_new_load_156, i64 %_new_load_171, i64 %_new_load_186, i64 %_new_load_201, i64 %_new_load_216, i64 %_new_load_231, i64 %_new_load_246, i64 %_new_load_261, i64 %_new_load_276)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %69, i64* %XAX, !mcsema_real_eip !16
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -24
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %_ptr_to_int_277 = ptrtoint i64* %_allin_new_bt_56 to i64
  %_offset_above_rbp_280 = sub i64 %_ptr_to_int_277, %_local_end_to_int_
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  br i1 %_cond1_n_cond2_cond3_288, label %70, label %71

; <label>:70:                                     ; preds = %66
  %_address_in_parent_stack_bt_290 = bitcast i8* %_pot_address_in_parent_stack_281 to i64*
  br label %71

; <label>:71:                                     ; preds = %66, %70
  %72 = phi i64* [ %_allin_new_bt_56, %66 ], [ %_address_in_parent_stack_bt_290, %70 ]
  %_new_load_291 = load i64, i64* %72
  store i64 %_new_load_291, i64* %XDI, !mcsema_real_eip !17
  %73 = add i64 %_new_load_291, 4, !mcsema_real_eip !18
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !18
  %75 = inttoptr i64 %73 to i32*, !mcsema_real_eip !18
  %_ptr_bt_294 = bitcast i32* %75 to i8*
  %_offset_above_rbp_295 = sub i64 %73, %_local_end_to_int_
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_ptr_bt_294, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_ptr_bt_294, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_ptr_bt_294, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  br i1 %_cond1_n_cond2_cond3_303, label %76, label %77

; <label>:76:                                     ; preds = %71
  %_address_in_parent_stack_bt_305 = bitcast i8* %_pot_address_in_parent_stack_296 to i32*
  br label %77

; <label>:77:                                     ; preds = %71, %76
  %78 = phi i32* [ %75, %71 ], [ %_address_in_parent_stack_bt_305, %76 ]
  %_new_load_306 = load i32, i32* %78
  %79 = zext i32 %_new_load_306 to i64, !mcsema_real_eip !18
  store i64 %79, i64* %XSI, !mcsema_real_eip !18
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -28
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %EAX.26 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.27 = load i32, i32* %EAX.26, !mcsema_real_eip !19
  %80 = ptrtoint i64* %_allin_new_bt_59 to i64, !mcsema_real_eip !19
  %81 = inttoptr i64 %80 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.27, i32* %81, !mcsema_real_eip !19
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !20
  %ESI_val.29 = load i32, i32* %ESI.28, !mcsema_real_eip !20
  %82 = zext i32 %ESI_val.29 to i64, !mcsema_real_eip !20
  store i64 %82, i64* %XAX, !mcsema_real_eip !20
  %_load_rsp_ptr_60 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_61 = getelementptr i8, i8* %_load_rsp_ptr_60, i64 32
  %83 = add i64 32, %RSP_val.30, !mcsema_real_eip !21
  %_trans_p2i_62 = ptrtoint i8* %_new_gep_61 to i64
  %_trans_p2i_63 = ptrtoint i8* %_load_rsp_ptr_60 to i64
  %_trans_xor_64 = xor i64 %_trans_p2i_62, %_trans_p2i_63
  %84 = xor i64 %_trans_xor_64, 32, !mcsema_real_eip !21
  %85 = and i64 %84, 16, !mcsema_real_eip !21
  %86 = icmp ne i64 %85, 0, !mcsema_real_eip !21
  store i1 %86, i1* %AF, !mcsema_real_eip !21
  %87 = lshr i64 %83, 63, !mcsema_real_eip !21
  %88 = trunc i64 %87 to i1, !mcsema_real_eip !21
  store i1 %88, i1* %SF, !mcsema_real_eip !21
  %_trans_icmp_eq_66 = icmp eq i64 %_trans_p2i_62, 0
  store i1 %_trans_icmp_eq_66, i1* %ZF, !mcsema_real_eip !21
  %_trans_xor_68 = xor i64 %_trans_p2i_63, 32
  %89 = xor i64 %_trans_xor_68, -1, !mcsema_real_eip !21
  %90 = and i64 %89, %_trans_xor_64, !mcsema_real_eip !21
  %91 = lshr i64 %90, 63, !mcsema_real_eip !21
  %92 = and i64 %91, 1, !mcsema_real_eip !21
  %93 = trunc i64 %92 to i1, !mcsema_real_eip !21
  store i1 %93, i1* %OF, !mcsema_real_eip !21
  %_trans_trunc_73 = trunc i64 %_trans_p2i_62 to i8
  %94 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_73), !mcsema_real_eip !21
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !21
  %96 = xor i1 %95, true, !mcsema_real_eip !21
  store i1 %96, i1* %PF, !mcsema_real_eip !21
  %_trans_icmp_ne_75 = icmp ne i64 %_trans_p2i_62, %RSP_val.30
  store i1 %_trans_icmp_ne_75, i1* %CF, !mcsema_real_eip !21
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_
  store i64 %83, i64* %XSP, !mcsema_real_eip !21
  %_allin_new_bt_77 = bitcast i8* %_new_gep_61 to i64*
  %_ptr_to_int_307 = ptrtoint i64* %_allin_new_bt_77 to i64
  %_offset_above_rbp_310 = sub i64 %_ptr_to_int_307, %_local_end_to_int_
  %_pot_address_in_parent_stack_311 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_310
  %_cond1_312 = icmp ugt i8* %_new_gep_61, %_local_stack_end_ptr_
  %_cond2_1_313 = icmp ugt i8* %_new_gep_61, %_parent_stack_end_ptr_
  %_cond2_2_314 = icmp ult i8* %_new_gep_61, %_parent_stack_start_ptr_
  %_cond2_315 = or i1 %_cond2_1_313, %_cond2_2_314
  %_cond4_316 = icmp ule i8* %_pot_address_in_parent_stack_311, %_parent_stack_end_ptr_
  %_cond1_n_cond2_317 = and i1 %_cond1_312, %_cond2_315
  %_cond1_n_cond2_cond3_318 = and i1 %_cond1_n_cond2_317, %_cond4_316
  br i1 %_cond1_n_cond2_cond3_318, label %97, label %98

; <label>:97:                                     ; preds = %77
  %_address_in_parent_stack_bt_320 = bitcast i8* %_pot_address_in_parent_stack_311 to i64*
  br label %98

; <label>:98:                                     ; preds = %77, %97
  %99 = phi i64* [ %_allin_new_bt_77, %77 ], [ %_address_in_parent_stack_bt_320, %97 ]
  %_new_load_321 = load i64, i64* %99
  %_new_int2ptr_ = inttoptr i64 %_new_load_321 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_321, i64* %XBP, !mcsema_real_eip !22
  %_new_gep_78 = getelementptr i8, i8* %_new_gep_61, i64 8
  %100 = add i64 %83, 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_
  store i64 %100, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_80 = getelementptr i8, i8* %_new_gep_78, i64 8
  %101 = add i64 %100, 8, !mcsema_real_eip !23
  %_allin_new_bt_81 = bitcast i8* %_new_gep_78 to i64*
  %_ptr_to_int_322 = ptrtoint i64* %_allin_new_bt_81 to i64
  %_offset_above_rbp_325 = sub i64 %_ptr_to_int_322, %_local_end_to_int_
  %_pot_address_in_parent_stack_326 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_325
  %_cond1_327 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_328 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_329 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_330 = or i1 %_cond2_1_328, %_cond2_2_329
  %_cond4_331 = icmp ule i8* %_pot_address_in_parent_stack_326, %_parent_stack_end_ptr_
  %_cond1_n_cond2_332 = and i1 %_cond1_327, %_cond2_330
  %_cond1_n_cond2_cond3_333 = and i1 %_cond1_n_cond2_332, %_cond4_331
  br i1 %_cond1_n_cond2_cond3_333, label %102, label %103

; <label>:102:                                    ; preds = %98
  %_address_in_parent_stack_bt_335 = bitcast i8* %_pot_address_in_parent_stack_326 to i64*
  br label %103

; <label>:103:                                    ; preds = %98, %102
  %104 = phi i64* [ %_allin_new_bt_81, %98 ], [ %_address_in_parent_stack_bt_335, %102 ]
  %_new_load_336 = load i64, i64* %104
  store i64 %_new_load_336, i64* %XIP, !mcsema_real_eip !23
  store volatile i8* %_new_gep_80, i8** %_RSP_ptr_
  store i64 %101, i64* %XSP, !mcsema_real_eip !23
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
