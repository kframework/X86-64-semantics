; ModuleID = 'Output/test_33.clang.trans.bc'
source_filename = "Output/test_33.clang.bc"
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
module asm "  .globl atoi;"
module asm "  .globl _atoi;"
module asm "  .type _atoi,@function"
module asm "_atoi:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq atoi@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _atoi,0b-_atoi;"
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
module asm "  .globl sub_80;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_80(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [15 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x100 = internal constant %0 <{ [15 x i8] c"Ack(3,%d): %d\0A\00" }>, align 64
@data_0x110 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"y\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\80\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_80(%RegState*) #1 {
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
  br label %block_0x80, !mcsema_real_eip !2

block_0x80:                                       ; preds = %entry
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
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !5
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %17, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !7
  store i64 %RSI_val.9, i64* %_allin_new_bt_21, !mcsema_real_eip !7
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  %20 = load i32, i32* %19, !mcsema_real_eip !8
  %21 = sub i32 %20, 2, !mcsema_real_eip !8
  %22 = xor i32 %21, %20, !mcsema_real_eip !8
  %23 = xor i32 %22, 2, !mcsema_real_eip !8
  %24 = and i32 %23, 16, !mcsema_real_eip !8
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !8
  store i1 %25, i1* %AF, !mcsema_real_eip !8
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !8
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !8
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !8
  %29 = xor i1 %28, true, !mcsema_real_eip !8
  store i1 %29, i1* %PF, !mcsema_real_eip !8
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !8
  store i1 %30, i1* %ZF, !mcsema_real_eip !8
  %31 = lshr i32 %21, 31, !mcsema_real_eip !8
  %32 = trunc i32 %31 to i1, !mcsema_real_eip !8
  store i1 %32, i1* %SF, !mcsema_real_eip !8
  %33 = icmp ult i32 %20, 2, !mcsema_real_eip !8
  store i1 %33, i1* %CF, !mcsema_real_eip !8
  %34 = xor i32 %20, 2, !mcsema_real_eip !8
  %35 = and i32 %34, %22, !mcsema_real_eip !8
  %36 = lshr i32 %35, 31, !mcsema_real_eip !8
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !8
  store i1 %37, i1* %OF, !mcsema_real_eip !8
  %38 = icmp eq i1 %30, false, !mcsema_real_eip !9
  br i1 %38, label %block_0xb5, label %block_0xa0, !mcsema_real_eip !9

block_0xa0:                                       ; preds = %block_0x80
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %39 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !10
  store i64 %39, i64* %XAX, !mcsema_real_eip !10
  %40 = add i64 %39, 8, !mcsema_real_eip !11
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !11
  %42 = load i64, i64* %41, !mcsema_real_eip !11
  store i64 %42, i64* %XDI, !mcsema_real_eip !11
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !12
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %43 = sub i64 %RSP_val.17, 8, !mcsema_real_eip !12
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !12
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %43, i64* %XSP, !mcsema_real_eip !12
  %44 = call x86_64_sysvcc i64 @_atoi(i64 %42)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %44, i64* %XAX, !mcsema_real_eip !12
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !13
  %45 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !13
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %46, !mcsema_real_eip !13
  br label %block_0xc2, !mcsema_real_eip !14

block_0xb5:                                       ; preds = %block_0x80
  store i64 8, i64* %XAX, !mcsema_real_eip !15
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !16
  %47 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !16
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.13, i32* %48, !mcsema_real_eip !16
  br label %block_0xc2, !mcsema_real_eip !17

block_0xc2:                                       ; preds = %block_0xb5, %block_0xa0
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %49 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !18
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !18
  %51 = load i32, i32* %50, !mcsema_real_eip !18
  %52 = zext i32 %51 to i64, !mcsema_real_eip !18
  store i64 %52, i64* %XAX, !mcsema_real_eip !18
  store i64 3, i64* %XDI, !mcsema_real_eip !19
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !20
  %53 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !20
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.24, i32* %54, !mcsema_real_eip !20
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -20
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !21
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !21
  %57 = load i32, i32* %56, !mcsema_real_eip !21
  %58 = zext i32 %57 to i64, !mcsema_real_eip !21
  store i64 %58, i64* %XSI, !mcsema_real_eip !21
  %59 = load i32, i32* %56, !mcsema_real_eip !22
  %60 = zext i32 %59 to i64, !mcsema_real_eip !22
  store i64 %60, i64* %XAX, !mcsema_real_eip !22
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -28
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !23
  %ESI_val.29 = load i32, i32* %ESI.28, !mcsema_real_eip !23
  %61 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !23
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !23
  store i32 %ESI_val.29, i32* %62, !mcsema_real_eip !23
  %EAX_val.31 = load i32, i32* %EAX.23, !mcsema_real_eip !24
  %63 = zext i32 %EAX_val.31 to i64, !mcsema_real_eip !24
  store i64 %63, i64* %XSI, !mcsema_real_eip !24
  %_load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_53 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 -8
  %64 = sub i64 %RSP_val.32, 8, !mcsema_real_eip !25
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_54, !mcsema_real_eip !25
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_
  store i64 %64, i64* %XSP, !mcsema_real_eip !25
  %_load_rbp_ptr_98 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_53, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_98)
  %_rsp_fix_100 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_101 = getelementptr i8, i8* %_rsp_fix_100, i64 8
  store i8* %_gep_fix_101, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %XDI, !mcsema_real_eip !26
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -28
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %65 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !27
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !27
  %67 = load i32, i32* %66, !mcsema_real_eip !27
  %68 = zext i32 %67 to i64, !mcsema_real_eip !27
  store i64 %68, i64* %XSI, !mcsema_real_eip !27
  %EAX_val.35 = load i32, i32* %EAX.23, !mcsema_real_eip !28
  %69 = zext i32 %EAX_val.35 to i64, !mcsema_real_eip !28
  store i64 %69, i64* %XDX, !mcsema_real_eip !28
  %AL.36 = bitcast i64* %XAX to i8*, !mcsema_real_eip !29
  store i8 0, i8* %AL.36, !mcsema_real_eip !29
  %RCX_val.40 = load i64, i64* %XCX, !mcsema_real_eip !30
  %R8_val.41 = load i64, i64* %R8, !mcsema_real_eip !30
  %R9_val.42 = load i64, i64* %R9, !mcsema_real_eip !30
  %_allin_new_bt_59 = bitcast i8* %_gep_fix_101 to i64*
  %70 = load i64, i64* %_allin_new_bt_59, !mcsema_real_eip !30
  %_new_gep_60 = getelementptr i8, i8* %_gep_fix_101, i64 8
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %71 = load i64, i64* %_allin_new_bt_61, !mcsema_real_eip !30
  %_new_gep_62 = getelementptr i8, i8* %_new_gep_60, i64 8
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %72 = load i64, i64* %_allin_new_bt_63, !mcsema_real_eip !30
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_62, i64 8
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %73 = load i64, i64* %_allin_new_bt_65, !mcsema_real_eip !30
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %74 = load i64, i64* %_allin_new_bt_67, !mcsema_real_eip !30
  %_new_gep_68 = getelementptr i8, i8* %_new_gep_66, i64 8
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %75 = load i64, i64* %_allin_new_bt_69, !mcsema_real_eip !30
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_71 = getelementptr i8, i8* %_gep_fix_101, i64 -8
  %76 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !30
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_72, !mcsema_real_eip !30
  store volatile i8* %_new_gep_71, i8** %_RSP_ptr_
  store i64 %76, i64* %XSP, !mcsema_real_eip !30
  %77 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %68, i64 %69, i64 %RCX_val.40, i64 %R8_val.41, i64 %R9_val.42, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75)
  %_rsp_fix_102 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_103 = getelementptr i8, i8* %_rsp_fix_102, i64 8
  store i8* %_gep_fix_103, i8** %_RSP_ptr_
  store i64 %77, i64* %XAX, !mcsema_real_eip !30
  %EDX.45 = bitcast i64* %XDX to i32*, !mcsema_real_eip !31
  %EDX_val.46 = load i32, i32* %EDX.45, !mcsema_real_eip !31
  store i1 false, i1* %CF, !mcsema_real_eip !31
  store i1 false, i1* %OF, !mcsema_real_eip !31
  store i1 false, i1* %SF, !mcsema_real_eip !31
  store i1 true, i1* %ZF, !mcsema_real_eip !31
  store i1 true, i1* %PF, !mcsema_real_eip !31
  store i1 undef, i1* %AF, !mcsema_real_eip !31
  store i64 0, i64* %XDX, !mcsema_real_eip !31
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -32
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %EAX_val.51 = load i32, i32* %EAX.23, !mcsema_real_eip !32
  %78 = ptrtoint i64* %_allin_new_bt_75 to i64, !mcsema_real_eip !32
  %79 = inttoptr i64 %78 to i32*, !mcsema_real_eip !32
  store i32 %EAX_val.51, i32* %79, !mcsema_real_eip !32
  %EDX_val.53 = load i32, i32* %EDX.45, !mcsema_real_eip !33
  %80 = zext i32 %EDX_val.53 to i64, !mcsema_real_eip !33
  store i64 %80, i64* %XAX, !mcsema_real_eip !33
  %_load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !34
  %_new_gep_77 = getelementptr i8, i8* %_load_rsp_ptr_76, i64 32
  %81 = add i64 32, %RSP_val.54, !mcsema_real_eip !34
  %_trans_p2i_78 = ptrtoint i8* %_new_gep_77 to i64
  %_trans_p2i_79 = ptrtoint i8* %_load_rsp_ptr_76 to i64
  %_trans_xor_80 = xor i64 %_trans_p2i_78, %_trans_p2i_79
  %82 = xor i64 %_trans_xor_80, 32, !mcsema_real_eip !34
  %83 = and i64 %82, 16, !mcsema_real_eip !34
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !34
  store i1 %84, i1* %AF, !mcsema_real_eip !34
  %85 = lshr i64 %81, 63, !mcsema_real_eip !34
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !34
  store i1 %86, i1* %SF, !mcsema_real_eip !34
  %_trans_icmp_eq_82 = icmp eq i64 %_trans_p2i_78, 0
  store i1 %_trans_icmp_eq_82, i1* %ZF, !mcsema_real_eip !34
  %_trans_xor_84 = xor i64 %_trans_p2i_79, 32
  %87 = xor i64 %_trans_xor_84, -1, !mcsema_real_eip !34
  %88 = and i64 %87, %_trans_xor_80, !mcsema_real_eip !34
  %89 = lshr i64 %88, 63, !mcsema_real_eip !34
  %90 = and i64 %89, 1, !mcsema_real_eip !34
  %91 = trunc i64 %90 to i1, !mcsema_real_eip !34
  store i1 %91, i1* %OF, !mcsema_real_eip !34
  %_trans_trunc_89 = trunc i64 %_trans_p2i_78 to i8
  %92 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_89), !mcsema_real_eip !34
  %93 = trunc i8 %92 to i1, !mcsema_real_eip !34
  %94 = xor i1 %93, true, !mcsema_real_eip !34
  store i1 %94, i1* %PF, !mcsema_real_eip !34
  %_trans_icmp_ne_91 = icmp ne i64 %_trans_p2i_78, %RSP_val.54
  store i1 %_trans_icmp_ne_91, i1* %CF, !mcsema_real_eip !34
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_
  store i64 %81, i64* %XSP, !mcsema_real_eip !34
  %_allin_new_bt_93 = bitcast i8* %_new_gep_77 to i64*
  %95 = load i64, i64* %_allin_new_bt_93, !mcsema_real_eip !35
  %_new_int2ptr_ = inttoptr i64 %95 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %95, i64* %XBP, !mcsema_real_eip !35
  %_new_gep_94 = getelementptr i8, i8* %_new_gep_77, i64 8
  %96 = add i64 %81, 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_94, i8** %_RSP_ptr_
  store i64 %96, i64* %XSP, !mcsema_real_eip !35
  %_new_gep_96 = getelementptr i8, i8* %_new_gep_94, i64 8
  %97 = add i64 %96, 8, !mcsema_real_eip !36
  %_allin_new_bt_97 = bitcast i8* %_new_gep_94 to i64*
  %98 = load i64, i64* %_allin_new_bt_97, !mcsema_real_eip !36
  store i64 %98, i64* %XIP, !mcsema_real_eip !36
  store volatile i8* %_new_gep_96, i8** %_RSP_ptr_
  store i64 %97, i64* %XSP, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !37
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !37
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !37
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !37
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !37
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !37
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !37
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !37
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !37
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !37
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !37
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !37
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !37
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !37
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !37
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !37
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !37
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !37
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !37
  br label %block_0x0, !mcsema_real_eip !37

block_0x0:                                        ; preds = %entry
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !37
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !37
  %1 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !37
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !37
  store i64 %RBP_val.57, i64* %2, !mcsema_real_eip !37
  store i64 %1, i64* %XSP, !mcsema_real_eip !37
  store i64 %1, i64* %XBP, !mcsema_real_eip !38
  %3 = sub i64 %1, 16, !mcsema_real_eip !39
  %4 = xor i64 %3, %1, !mcsema_real_eip !39
  %5 = xor i64 %4, 16, !mcsema_real_eip !39
  %6 = and i64 %5, 16, !mcsema_real_eip !39
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !39
  store i1 %7, i1* %AF, !mcsema_real_eip !39
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !39
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !39
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !39
  %11 = xor i1 %10, true, !mcsema_real_eip !39
  store i1 %11, i1* %PF, !mcsema_real_eip !39
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !39
  store i1 %12, i1* %ZF, !mcsema_real_eip !39
  %13 = lshr i64 %3, 63, !mcsema_real_eip !39
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !39
  store i1 %14, i1* %SF, !mcsema_real_eip !39
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !39
  store i1 %15, i1* %CF, !mcsema_real_eip !39
  %16 = xor i64 %1, 16, !mcsema_real_eip !39
  %17 = and i64 %16, %4, !mcsema_real_eip !39
  %18 = lshr i64 %17, 63, !mcsema_real_eip !39
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !39
  store i1 %19, i1* %OF, !mcsema_real_eip !39
  store i64 %3, i64* %XSP, !mcsema_real_eip !39
  %20 = add i64 %1, -8, !mcsema_real_eip !40
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !40
  %EDI.62 = bitcast i64* %XDI to i32*, !mcsema_real_eip !40
  %EDI_val.63 = load i32, i32* %EDI.62, !mcsema_real_eip !40
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !40
  store i32 %EDI_val.63, i32* %22, !mcsema_real_eip !40
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !41
  %23 = add i64 %RBP_val.64, -12, !mcsema_real_eip !41
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !41
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.66 = load i32, i32* %ESI.65, !mcsema_real_eip !41
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !41
  store i32 %ESI_val.66, i32* %25, !mcsema_real_eip !41
  %RBP_val.67 = load i64, i64* %XBP, !mcsema_real_eip !42
  %26 = add i64 %RBP_val.67, -8, !mcsema_real_eip !42
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !42
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !42
  %29 = load i32, i32* %28, !mcsema_real_eip !42
  store i1 false, i1* %AF, !mcsema_real_eip !42
  %30 = trunc i32 %29 to i8, !mcsema_real_eip !42
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !42
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !42
  %33 = xor i1 %32, true, !mcsema_real_eip !42
  store i1 %33, i1* %PF, !mcsema_real_eip !42
  %34 = icmp eq i32 %29, 0, !mcsema_real_eip !42
  store i1 %34, i1* %ZF, !mcsema_real_eip !42
  %35 = lshr i32 %29, 31, !mcsema_real_eip !42
  %36 = trunc i32 %35 to i1, !mcsema_real_eip !42
  store i1 %36, i1* %SF, !mcsema_real_eip !42
  store i1 false, i1* %CF, !mcsema_real_eip !42
  store i1 false, i1* %OF, !mcsema_real_eip !42
  %37 = icmp eq i1 %34, false, !mcsema_real_eip !43
  br i1 %37, label %block_0x26, label %block_0x18, !mcsema_real_eip !43

block_0x18:                                       ; preds = %block_0x0
  %38 = add i64 %RBP_val.67, -12, !mcsema_real_eip !44
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !44
  %40 = inttoptr i64 %38 to i32*, !mcsema_real_eip !44
  %41 = load i32, i32* %40, !mcsema_real_eip !44
  %42 = zext i32 %41 to i64, !mcsema_real_eip !44
  store i64 %42, i64* %XAX, !mcsema_real_eip !44
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !45
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !45
  %43 = add i32 1, %EAX_val.71, !mcsema_real_eip !45
  %44 = xor i32 %43, %EAX_val.71, !mcsema_real_eip !45
  %45 = xor i32 %44, 1, !mcsema_real_eip !45
  %46 = and i32 %45, 16, !mcsema_real_eip !45
  %47 = icmp ne i32 %46, 0, !mcsema_real_eip !45
  store i1 %47, i1* %AF, !mcsema_real_eip !45
  %48 = lshr i32 %43, 31, !mcsema_real_eip !45
  %49 = trunc i32 %48 to i1, !mcsema_real_eip !45
  store i1 %49, i1* %SF, !mcsema_real_eip !45
  %50 = icmp eq i32 %43, 0, !mcsema_real_eip !45
  store i1 %50, i1* %ZF, !mcsema_real_eip !45
  %51 = xor i32 %EAX_val.71, 1, !mcsema_real_eip !45
  %52 = xor i32 %51, -1, !mcsema_real_eip !45
  %53 = and i32 %52, %44, !mcsema_real_eip !45
  %54 = lshr i32 %53, 31, !mcsema_real_eip !45
  %55 = and i32 %54, 1, !mcsema_real_eip !45
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !45
  store i1 %56, i1* %OF, !mcsema_real_eip !45
  %57 = trunc i32 %43 to i8, !mcsema_real_eip !45
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !45
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !45
  %60 = xor i1 %59, true, !mcsema_real_eip !45
  store i1 %60, i1* %PF, !mcsema_real_eip !45
  %61 = icmp ult i32 %43, %EAX_val.71, !mcsema_real_eip !45
  store i1 %61, i1* %CF, !mcsema_real_eip !45
  %62 = zext i32 %43 to i64, !mcsema_real_eip !45
  store i64 %62, i64* %XAX, !mcsema_real_eip !45
  %63 = add i64 %RBP_val.67, -4, !mcsema_real_eip !46
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !46
  %EAX_val.74 = load i32, i32* %EAX.70, !mcsema_real_eip !46
  %65 = inttoptr i64 %63 to i32*, !mcsema_real_eip !46
  store i32 %EAX_val.74, i32* %65, !mcsema_real_eip !46
  br label %block_0x70, !mcsema_real_eip !47

block_0x26:                                       ; preds = %block_0x0
  %66 = add i64 %RBP_val.67, -12, !mcsema_real_eip !48
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !48
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !48
  %69 = load i32, i32* %68, !mcsema_real_eip !48
  store i1 false, i1* %AF, !mcsema_real_eip !48
  %70 = trunc i32 %69 to i8, !mcsema_real_eip !48
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !48
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !48
  %73 = xor i1 %72, true, !mcsema_real_eip !48
  store i1 %73, i1* %PF, !mcsema_real_eip !48
  %74 = icmp eq i32 %69, 0, !mcsema_real_eip !48
  store i1 %74, i1* %ZF, !mcsema_real_eip !48
  %75 = lshr i32 %69, 31, !mcsema_real_eip !48
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !48
  store i1 %76, i1* %SF, !mcsema_real_eip !48
  store i1 false, i1* %CF, !mcsema_real_eip !48
  store i1 false, i1* %OF, !mcsema_real_eip !48
  %77 = icmp eq i1 %74, false, !mcsema_real_eip !49
  br i1 %77, label %block_0x4a, label %block_0x30, !mcsema_real_eip !49

block_0x30:                                       ; preds = %block_0x26
  store i64 1, i64* %XSI, !mcsema_real_eip !50
  %78 = load i32, i32* %28, !mcsema_real_eip !51
  %79 = zext i32 %78 to i64, !mcsema_real_eip !51
  store i64 %79, i64* %XAX, !mcsema_real_eip !51
  %EAX.96 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.97 = load i32, i32* %EAX.96, !mcsema_real_eip !52
  %80 = sub i32 %EAX_val.97, 1, !mcsema_real_eip !52
  %81 = xor i32 %80, %EAX_val.97, !mcsema_real_eip !52
  %82 = xor i32 %81, 1, !mcsema_real_eip !52
  %83 = and i32 %82, 16, !mcsema_real_eip !52
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !52
  store i1 %84, i1* %AF, !mcsema_real_eip !52
  %85 = trunc i32 %80 to i8, !mcsema_real_eip !52
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !52
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !52
  %88 = xor i1 %87, true, !mcsema_real_eip !52
  store i1 %88, i1* %PF, !mcsema_real_eip !52
  %89 = icmp eq i32 %80, 0, !mcsema_real_eip !52
  store i1 %89, i1* %ZF, !mcsema_real_eip !52
  %90 = lshr i32 %80, 31, !mcsema_real_eip !52
  %91 = trunc i32 %90 to i1, !mcsema_real_eip !52
  store i1 %91, i1* %SF, !mcsema_real_eip !52
  %92 = icmp ult i32 %EAX_val.97, 1, !mcsema_real_eip !52
  store i1 %92, i1* %CF, !mcsema_real_eip !52
  %93 = xor i32 %EAX_val.97, 1, !mcsema_real_eip !52
  %94 = and i32 %93, %81, !mcsema_real_eip !52
  %95 = lshr i32 %94, 31, !mcsema_real_eip !52
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !52
  store i1 %96, i1* %OF, !mcsema_real_eip !52
  %97 = zext i32 %80 to i64, !mcsema_real_eip !52
  store i64 %97, i64* %XAX, !mcsema_real_eip !52
  %EAX_val.99 = load i32, i32* %EAX.96, !mcsema_real_eip !53
  %98 = zext i32 %EAX_val.99 to i64, !mcsema_real_eip !53
  store i64 %98, i64* %XDI, !mcsema_real_eip !53
  %RSP_val.100 = load i64, i64* %XSP, !mcsema_real_eip !54
  %99 = sub i64 %RSP_val.100, 8, !mcsema_real_eip !54
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !54
  store i64 -4981261766360305936, i64* %100, !mcsema_real_eip !54
  store i64 %99, i64* %XSP, !mcsema_real_eip !54
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !54
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !55
  %101 = add i64 %RBP_val.101, -4, !mcsema_real_eip !55
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !55
  %EAX_val.103 = load i32, i32* %EAX.96, !mcsema_real_eip !55
  %103 = inttoptr i64 %101 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.103, i32* %103, !mcsema_real_eip !55
  br label %block_0x70, !mcsema_real_eip !56

block_0x4a:                                       ; preds = %block_0x26
  %104 = load i32, i32* %28, !mcsema_real_eip !57
  %105 = zext i32 %104 to i64, !mcsema_real_eip !57
  store i64 %105, i64* %XAX, !mcsema_real_eip !57
  %EAX.76 = bitcast i64* %XAX to i32*, !mcsema_real_eip !58
  %EAX_val.77 = load i32, i32* %EAX.76, !mcsema_real_eip !58
  %106 = sub i32 %EAX_val.77, 1, !mcsema_real_eip !58
  %107 = xor i32 %106, %EAX_val.77, !mcsema_real_eip !58
  %108 = xor i32 %107, 1, !mcsema_real_eip !58
  %109 = and i32 %108, 16, !mcsema_real_eip !58
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !58
  store i1 %110, i1* %AF, !mcsema_real_eip !58
  %111 = trunc i32 %106 to i8, !mcsema_real_eip !58
  %112 = call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !58
  %113 = trunc i8 %112 to i1, !mcsema_real_eip !58
  %114 = xor i1 %113, true, !mcsema_real_eip !58
  store i1 %114, i1* %PF, !mcsema_real_eip !58
  %115 = icmp eq i32 %106, 0, !mcsema_real_eip !58
  store i1 %115, i1* %ZF, !mcsema_real_eip !58
  %116 = lshr i32 %106, 31, !mcsema_real_eip !58
  %117 = trunc i32 %116 to i1, !mcsema_real_eip !58
  store i1 %117, i1* %SF, !mcsema_real_eip !58
  %118 = icmp ult i32 %EAX_val.77, 1, !mcsema_real_eip !58
  store i1 %118, i1* %CF, !mcsema_real_eip !58
  %119 = xor i32 %EAX_val.77, 1, !mcsema_real_eip !58
  %120 = and i32 %119, %107, !mcsema_real_eip !58
  %121 = lshr i32 %120, 31, !mcsema_real_eip !58
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !58
  store i1 %122, i1* %OF, !mcsema_real_eip !58
  %123 = zext i32 %106 to i64, !mcsema_real_eip !58
  store i64 %123, i64* %XAX, !mcsema_real_eip !58
  %124 = load i32, i32* %28, !mcsema_real_eip !59
  %125 = zext i32 %124 to i64, !mcsema_real_eip !59
  store i64 %125, i64* %XDI, !mcsema_real_eip !59
  %126 = load i32, i32* %68, !mcsema_real_eip !60
  %127 = zext i32 %126 to i64, !mcsema_real_eip !60
  store i64 %127, i64* %XCX, !mcsema_real_eip !60
  %ECX.80 = bitcast i64* %XCX to i32*, !mcsema_real_eip !61
  %ECX_val.81 = load i32, i32* %ECX.80, !mcsema_real_eip !61
  %128 = sub i32 %ECX_val.81, 1, !mcsema_real_eip !61
  %129 = xor i32 %128, %ECX_val.81, !mcsema_real_eip !61
  %130 = xor i32 %129, 1, !mcsema_real_eip !61
  %131 = and i32 %130, 16, !mcsema_real_eip !61
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !61
  store i1 %132, i1* %AF, !mcsema_real_eip !61
  %133 = trunc i32 %128 to i8, !mcsema_real_eip !61
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !61
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !61
  %136 = xor i1 %135, true, !mcsema_real_eip !61
  store i1 %136, i1* %PF, !mcsema_real_eip !61
  %137 = icmp eq i32 %128, 0, !mcsema_real_eip !61
  store i1 %137, i1* %ZF, !mcsema_real_eip !61
  %138 = lshr i32 %128, 31, !mcsema_real_eip !61
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !61
  store i1 %139, i1* %SF, !mcsema_real_eip !61
  %140 = icmp ult i32 %ECX_val.81, 1, !mcsema_real_eip !61
  store i1 %140, i1* %CF, !mcsema_real_eip !61
  %141 = xor i32 %ECX_val.81, 1, !mcsema_real_eip !61
  %142 = and i32 %141, %129, !mcsema_real_eip !61
  %143 = lshr i32 %142, 31, !mcsema_real_eip !61
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !61
  store i1 %144, i1* %OF, !mcsema_real_eip !61
  %145 = zext i32 %128 to i64, !mcsema_real_eip !61
  store i64 %145, i64* %XCX, !mcsema_real_eip !61
  %ECX_val.83 = load i32, i32* %ECX.80, !mcsema_real_eip !62
  %146 = zext i32 %ECX_val.83 to i64, !mcsema_real_eip !62
  store i64 %146, i64* %XSI, !mcsema_real_eip !62
  %147 = add i64 %RBP_val.67, -16, !mcsema_real_eip !63
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !63
  %EAX_val.86 = load i32, i32* %EAX.76, !mcsema_real_eip !63
  %149 = inttoptr i64 %147 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.86, i32* %149, !mcsema_real_eip !63
  %RSP_val.87 = load i64, i64* %XSP, !mcsema_real_eip !64
  %150 = sub i64 %RSP_val.87, 8, !mcsema_real_eip !64
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !64
  store i64 -4981261766360305936, i64* %151, !mcsema_real_eip !64
  store i64 %150, i64* %XSP, !mcsema_real_eip !64
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !64
  %RBP_val.88 = load i64, i64* %XBP, !mcsema_real_eip !65
  %152 = add i64 %RBP_val.88, -16, !mcsema_real_eip !65
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !65
  %154 = inttoptr i64 %152 to i32*, !mcsema_real_eip !65
  %155 = load i32, i32* %154, !mcsema_real_eip !65
  %156 = zext i32 %155 to i64, !mcsema_real_eip !65
  store i64 %156, i64* %XDI, !mcsema_real_eip !65
  %EAX_val.90 = load i32, i32* %EAX.76, !mcsema_real_eip !66
  %157 = zext i32 %EAX_val.90 to i64, !mcsema_real_eip !66
  store i64 %157, i64* %XSI, !mcsema_real_eip !66
  %RSP_val.91 = load i64, i64* %XSP, !mcsema_real_eip !67
  %158 = sub i64 %RSP_val.91, 8, !mcsema_real_eip !67
  %159 = inttoptr i64 %158 to i64*, !mcsema_real_eip !67
  store i64 -4981261766360305936, i64* %159, !mcsema_real_eip !67
  store i64 %158, i64* %XSP, !mcsema_real_eip !67
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !67
  %RBP_val.92 = load i64, i64* %XBP, !mcsema_real_eip !68
  %160 = add i64 %RBP_val.92, -4, !mcsema_real_eip !68
  %161 = inttoptr i64 %160 to i64*, !mcsema_real_eip !68
  %EAX_val.94 = load i32, i32* %EAX.76, !mcsema_real_eip !68
  %162 = inttoptr i64 %160 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.94, i32* %162, !mcsema_real_eip !68
  br label %block_0x70, !mcsema_real_eip !50

block_0x70:                                       ; preds = %block_0x4a, %block_0x30, %block_0x18
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !69
  %163 = add i64 %RBP_val.104, -4, !mcsema_real_eip !69
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !69
  %165 = inttoptr i64 %163 to i32*, !mcsema_real_eip !69
  %166 = load i32, i32* %165, !mcsema_real_eip !69
  %167 = zext i32 %166 to i64, !mcsema_real_eip !69
  store i64 %167, i64* %XAX, !mcsema_real_eip !69
  %RSP_val.105 = load i64, i64* %XSP, !mcsema_real_eip !70
  %168 = add i64 16, %RSP_val.105, !mcsema_real_eip !70
  %169 = xor i64 %168, %RSP_val.105, !mcsema_real_eip !70
  %170 = xor i64 %169, 16, !mcsema_real_eip !70
  %171 = and i64 %170, 16, !mcsema_real_eip !70
  %172 = icmp ne i64 %171, 0, !mcsema_real_eip !70
  store i1 %172, i1* %AF, !mcsema_real_eip !70
  %173 = lshr i64 %168, 63, !mcsema_real_eip !70
  %174 = trunc i64 %173 to i1, !mcsema_real_eip !70
  store i1 %174, i1* %SF, !mcsema_real_eip !70
  %175 = icmp eq i64 %168, 0, !mcsema_real_eip !70
  store i1 %175, i1* %ZF, !mcsema_real_eip !70
  %176 = xor i64 %RSP_val.105, 16, !mcsema_real_eip !70
  %177 = xor i64 %176, -1, !mcsema_real_eip !70
  %178 = and i64 %177, %169, !mcsema_real_eip !70
  %179 = lshr i64 %178, 63, !mcsema_real_eip !70
  %180 = and i64 %179, 1, !mcsema_real_eip !70
  %181 = trunc i64 %180 to i1, !mcsema_real_eip !70
  store i1 %181, i1* %OF, !mcsema_real_eip !70
  %182 = trunc i64 %168 to i8, !mcsema_real_eip !70
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !70
  %184 = trunc i8 %183 to i1, !mcsema_real_eip !70
  %185 = xor i1 %184, true, !mcsema_real_eip !70
  store i1 %185, i1* %PF, !mcsema_real_eip !70
  %186 = icmp ult i64 %168, %RSP_val.105, !mcsema_real_eip !70
  store i1 %186, i1* %CF, !mcsema_real_eip !70
  store i64 %168, i64* %XSP, !mcsema_real_eip !70
  %187 = inttoptr i64 %168 to i64*, !mcsema_real_eip !71
  %188 = load i64, i64* %187, !mcsema_real_eip !71
  store i64 %188, i64* %XBP, !mcsema_real_eip !71
  %189 = add i64 %168, 8, !mcsema_real_eip !71
  store i64 %189, i64* %XSP, !mcsema_real_eip !71
  %190 = add i64 %189, 8, !mcsema_real_eip !72
  %191 = inttoptr i64 %189 to i64*, !mcsema_real_eip !72
  %192 = load i64, i64* %191, !mcsema_real_eip !72
  store i64 %192, i64* %XIP, !mcsema_real_eip !72
  store i64 %190, i64* %XSP, !mcsema_real_eip !72
  ret void, !mcsema_real_eip !72
}

declare x86_64_sysvcc i64 @atoi(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_atoi(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_80.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
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
  br label %block_0x80, !mcsema_real_eip !2

block_0x80:                                       ; preds = %entry
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
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !5
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EDI.6 = bitcast i64* %XDI to i32*, !mcsema_real_eip !6
  %EDI_val.7 = load i32, i32* %EDI.6, !mcsema_real_eip !6
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 %EDI_val.7, i32* %17, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !7
  store i64 %RSI_val.9, i64* %_allin_new_bt_21, !mcsema_real_eip !7
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
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

; <label>:20:                                     ; preds = %block_0x80
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x80, %20
  %22 = phi i32* [ %19, %block_0x80 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  %23 = sub i32 %_new_load_, 2, !mcsema_real_eip !8
  %24 = xor i32 %23, %_new_load_, !mcsema_real_eip !8
  %25 = xor i32 %24, 2, !mcsema_real_eip !8
  %26 = and i32 %25, 16, !mcsema_real_eip !8
  %27 = icmp ne i32 %26, 0, !mcsema_real_eip !8
  store i1 %27, i1* %AF, !mcsema_real_eip !8
  %28 = trunc i32 %23 to i8, !mcsema_real_eip !8
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !8
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !8
  %31 = xor i1 %30, true, !mcsema_real_eip !8
  store i1 %31, i1* %PF, !mcsema_real_eip !8
  %32 = icmp eq i32 %23, 0, !mcsema_real_eip !8
  store i1 %32, i1* %ZF, !mcsema_real_eip !8
  %33 = lshr i32 %23, 31, !mcsema_real_eip !8
  %34 = trunc i32 %33 to i1, !mcsema_real_eip !8
  store i1 %34, i1* %SF, !mcsema_real_eip !8
  %35 = icmp ult i32 %_new_load_, 2, !mcsema_real_eip !8
  store i1 %35, i1* %CF, !mcsema_real_eip !8
  %36 = xor i32 %_new_load_, 2, !mcsema_real_eip !8
  %37 = and i32 %36, %24, !mcsema_real_eip !8
  %38 = lshr i32 %37, 31, !mcsema_real_eip !8
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !8
  store i1 %39, i1* %OF, !mcsema_real_eip !8
  %40 = icmp eq i1 %32, false, !mcsema_real_eip !9
  br i1 %40, label %block_0xb5, label %block_0xa0, !mcsema_real_eip !9

block_0xa0:                                       ; preds = %21
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_104 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_107 = sub i64 %_ptr_to_int_104, %_local_end_to_int_
  %_pot_address_in_parent_stack_108 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_107
  %_cond1_109 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_110 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_111 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_112 = or i1 %_cond2_1_110, %_cond2_2_111
  %_cond4_113 = icmp ule i8* %_pot_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond1_n_cond2_114 = and i1 %_cond1_109, %_cond2_112
  %_cond1_n_cond2_cond3_115 = and i1 %_cond1_n_cond2_114, %_cond4_113
  br i1 %_cond1_n_cond2_cond3_115, label %41, label %42

; <label>:41:                                     ; preds = %block_0xa0
  %_address_in_parent_stack_bt_117 = bitcast i8* %_pot_address_in_parent_stack_108 to i64*
  br label %42

; <label>:42:                                     ; preds = %block_0xa0, %41
  %43 = phi i64* [ %_allin_new_bt_27, %block_0xa0 ], [ %_address_in_parent_stack_bt_117, %41 ]
  %_new_load_118 = load i64, i64* %43
  store i64 %_new_load_118, i64* %XAX, !mcsema_real_eip !10
  %44 = add i64 %_new_load_118, 8, !mcsema_real_eip !11
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !11
  %_ptr_bt_121 = bitcast i64* %45 to i8*
  %_offset_above_rbp_122 = sub i64 %44, %_local_end_to_int_
  %_pot_address_in_parent_stack_123 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_122
  %_cond1_124 = icmp ugt i8* %_ptr_bt_121, %_local_stack_end_ptr_
  %_cond2_1_125 = icmp ugt i8* %_ptr_bt_121, %_parent_stack_end_ptr_
  %_cond2_2_126 = icmp ult i8* %_ptr_bt_121, %_parent_stack_start_ptr_
  %_cond2_127 = or i1 %_cond2_1_125, %_cond2_2_126
  %_cond4_128 = icmp ule i8* %_pot_address_in_parent_stack_123, %_parent_stack_end_ptr_
  %_cond1_n_cond2_129 = and i1 %_cond1_124, %_cond2_127
  %_cond1_n_cond2_cond3_130 = and i1 %_cond1_n_cond2_129, %_cond4_128
  br i1 %_cond1_n_cond2_cond3_130, label %46, label %47

; <label>:46:                                     ; preds = %42
  %_address_in_parent_stack_bt_132 = bitcast i8* %_pot_address_in_parent_stack_123 to i64*
  br label %47

; <label>:47:                                     ; preds = %42, %46
  %48 = phi i64* [ %45, %42 ], [ %_address_in_parent_stack_bt_132, %46 ]
  %_new_load_133 = load i64, i64* %48
  store i64 %_new_load_133, i64* %XDI, !mcsema_real_eip !11
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !12
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %49 = sub i64 %RSP_val.17, 8, !mcsema_real_eip !12
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !12
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %49, i64* %XSP, !mcsema_real_eip !12
  %50 = call x86_64_sysvcc i64 @_atoi(i64 %_new_load_133)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %50, i64* %XAX, !mcsema_real_eip !12
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !13
  %51 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !13
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.20, i32* %52, !mcsema_real_eip !13
  br label %block_0xc2, !mcsema_real_eip !14

block_0xb5:                                       ; preds = %21
  store i64 8, i64* %XAX, !mcsema_real_eip !15
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !16
  %53 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !16
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.13, i32* %54, !mcsema_real_eip !16
  br label %block_0xc2, !mcsema_real_eip !17

block_0xc2:                                       ; preds = %block_0xb5, %47
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !18
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !18
  %_ptr_bt_136 = bitcast i32* %56 to i8*
  %_offset_above_rbp_137 = sub i64 %55, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_ptr_bt_136, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_ptr_bt_136, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_ptr_bt_136, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  br i1 %_cond1_n_cond2_cond3_145, label %57, label %58

; <label>:57:                                     ; preds = %block_0xc2
  %_address_in_parent_stack_bt_147 = bitcast i8* %_pot_address_in_parent_stack_138 to i32*
  br label %58

; <label>:58:                                     ; preds = %block_0xc2, %57
  %59 = phi i32* [ %56, %block_0xc2 ], [ %_address_in_parent_stack_bt_147, %57 ]
  %_new_load_148 = load i32, i32* %59
  %60 = zext i32 %_new_load_148 to i64, !mcsema_real_eip !18
  store i64 %60, i64* %XAX, !mcsema_real_eip !18
  store i64 3, i64* %XDI, !mcsema_real_eip !19
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !20
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !20
  %61 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !20
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !20
  store i32 %EAX_val.24, i32* %62, !mcsema_real_eip !20
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -20
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %63 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !21
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !21
  %_ptr_bt_151 = bitcast i32* %64 to i8*
  %_offset_above_rbp_152 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_ptr_bt_151, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_ptr_bt_151, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_ptr_bt_151, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  br i1 %_cond1_n_cond2_cond3_160, label %65, label %66

; <label>:65:                                     ; preds = %58
  %_address_in_parent_stack_bt_162 = bitcast i8* %_pot_address_in_parent_stack_153 to i32*
  br label %66

; <label>:66:                                     ; preds = %58, %65
  %67 = phi i32* [ %64, %58 ], [ %_address_in_parent_stack_bt_162, %65 ]
  %_new_load_163 = load i32, i32* %67
  %68 = zext i32 %_new_load_163 to i64, !mcsema_real_eip !21
  store i64 %68, i64* %XSI, !mcsema_real_eip !21
  br i1 %_cond1_n_cond2_cond3_160, label %69, label %70

; <label>:69:                                     ; preds = %66
  %_address_in_parent_stack_bt_177 = bitcast i8* %_pot_address_in_parent_stack_153 to i32*
  br label %70

; <label>:70:                                     ; preds = %66, %69
  %71 = phi i32* [ %64, %66 ], [ %_address_in_parent_stack_bt_177, %69 ]
  %_new_load_178 = load i32, i32* %71
  %72 = zext i32 %_new_load_178 to i64, !mcsema_real_eip !22
  store i64 %72, i64* %XAX, !mcsema_real_eip !22
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -28
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %ESI.28 = bitcast i64* %XSI to i32*, !mcsema_real_eip !23
  %ESI_val.29 = load i32, i32* %ESI.28, !mcsema_real_eip !23
  %73 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !23
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !23
  store i32 %ESI_val.29, i32* %74, !mcsema_real_eip !23
  %EAX_val.31 = load i32, i32* %EAX.23, !mcsema_real_eip !24
  %75 = zext i32 %EAX_val.31 to i64, !mcsema_real_eip !24
  store i64 %75, i64* %XSI, !mcsema_real_eip !24
  %_load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_53 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 -8
  %76 = sub i64 %RSP_val.32, 8, !mcsema_real_eip !25
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_54, !mcsema_real_eip !25
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_
  store i64 %76, i64* %XSP, !mcsema_real_eip !25
  %_load_rbp_ptr_98 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_53, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_98)
  %_rsp_fix_100 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_101 = getelementptr i8, i8* %_rsp_fix_100, i64 8
  store i8* %_gep_fix_101, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x100 to i64), i64* %XDI, !mcsema_real_eip !26
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -28
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %77 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !27
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !27
  %_ptr_bt_181 = bitcast i32* %78 to i8*
  %_offset_above_rbp_182 = sub i64 %77, %_local_end_to_int_
  %_pot_address_in_parent_stack_183 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_182
  %_cond1_184 = icmp ugt i8* %_ptr_bt_181, %_local_stack_end_ptr_
  %_cond2_1_185 = icmp ugt i8* %_ptr_bt_181, %_parent_stack_end_ptr_
  %_cond2_2_186 = icmp ult i8* %_ptr_bt_181, %_parent_stack_start_ptr_
  %_cond2_187 = or i1 %_cond2_1_185, %_cond2_2_186
  %_cond4_188 = icmp ule i8* %_pot_address_in_parent_stack_183, %_parent_stack_end_ptr_
  %_cond1_n_cond2_189 = and i1 %_cond1_184, %_cond2_187
  %_cond1_n_cond2_cond3_190 = and i1 %_cond1_n_cond2_189, %_cond4_188
  br i1 %_cond1_n_cond2_cond3_190, label %79, label %80

; <label>:79:                                     ; preds = %70
  %_address_in_parent_stack_bt_192 = bitcast i8* %_pot_address_in_parent_stack_183 to i32*
  br label %80

; <label>:80:                                     ; preds = %70, %79
  %81 = phi i32* [ %78, %70 ], [ %_address_in_parent_stack_bt_192, %79 ]
  %_new_load_193 = load i32, i32* %81
  %82 = zext i32 %_new_load_193 to i64, !mcsema_real_eip !27
  store i64 %82, i64* %XSI, !mcsema_real_eip !27
  %EAX_val.35 = load i32, i32* %EAX.23, !mcsema_real_eip !28
  %83 = zext i32 %EAX_val.35 to i64, !mcsema_real_eip !28
  store i64 %83, i64* %XDX, !mcsema_real_eip !28
  %AL.36 = bitcast i64* %XAX to i8*, !mcsema_real_eip !29
  store i8 0, i8* %AL.36, !mcsema_real_eip !29
  %RCX_val.40 = load i64, i64* %XCX, !mcsema_real_eip !30
  %R8_val.41 = load i64, i64* %R8, !mcsema_real_eip !30
  %R9_val.42 = load i64, i64* %R9, !mcsema_real_eip !30
  %_allin_new_bt_59 = bitcast i8* %_gep_fix_101 to i64*
  %_ptr_to_int_194 = ptrtoint i64* %_allin_new_bt_59 to i64
  %_offset_above_rbp_197 = sub i64 %_ptr_to_int_194, %_local_end_to_int_
  %_pot_address_in_parent_stack_198 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_197
  %_cond1_199 = icmp ugt i8* %_gep_fix_101, %_local_stack_end_ptr_
  %_cond2_1_200 = icmp ugt i8* %_gep_fix_101, %_parent_stack_end_ptr_
  %_cond2_2_201 = icmp ult i8* %_gep_fix_101, %_parent_stack_start_ptr_
  %_cond2_202 = or i1 %_cond2_1_200, %_cond2_2_201
  %_cond4_203 = icmp ule i8* %_pot_address_in_parent_stack_198, %_parent_stack_end_ptr_
  %_cond1_n_cond2_204 = and i1 %_cond1_199, %_cond2_202
  %_cond1_n_cond2_cond3_205 = and i1 %_cond1_n_cond2_204, %_cond4_203
  br i1 %_cond1_n_cond2_cond3_205, label %84, label %85

; <label>:84:                                     ; preds = %80
  %_address_in_parent_stack_bt_207 = bitcast i8* %_pot_address_in_parent_stack_198 to i64*
  br label %85

; <label>:85:                                     ; preds = %80, %84
  %86 = phi i64* [ %_allin_new_bt_59, %80 ], [ %_address_in_parent_stack_bt_207, %84 ]
  %_new_load_208 = load i64, i64* %86
  %_new_gep_60 = getelementptr i8, i8* %_gep_fix_101, i64 8
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_209 = ptrtoint i64* %_allin_new_bt_61 to i64
  %_offset_above_rbp_212 = sub i64 %_ptr_to_int_209, %_local_end_to_int_
  %_pot_address_in_parent_stack_213 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_212
  %_cond1_214 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_215 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_216 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_217 = or i1 %_cond2_1_215, %_cond2_2_216
  %_cond4_218 = icmp ule i8* %_pot_address_in_parent_stack_213, %_parent_stack_end_ptr_
  %_cond1_n_cond2_219 = and i1 %_cond1_214, %_cond2_217
  %_cond1_n_cond2_cond3_220 = and i1 %_cond1_n_cond2_219, %_cond4_218
  br i1 %_cond1_n_cond2_cond3_220, label %87, label %88

; <label>:87:                                     ; preds = %85
  %_address_in_parent_stack_bt_222 = bitcast i8* %_pot_address_in_parent_stack_213 to i64*
  br label %88

; <label>:88:                                     ; preds = %85, %87
  %89 = phi i64* [ %_allin_new_bt_61, %85 ], [ %_address_in_parent_stack_bt_222, %87 ]
  %_new_load_223 = load i64, i64* %89
  %_new_gep_62 = getelementptr i8, i8* %_new_gep_60, i64 8
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %_ptr_to_int_224 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_227 = sub i64 %_ptr_to_int_224, %_local_end_to_int_
  %_pot_address_in_parent_stack_228 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_227
  %_cond1_229 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_230 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_231 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_232 = or i1 %_cond2_1_230, %_cond2_2_231
  %_cond4_233 = icmp ule i8* %_pot_address_in_parent_stack_228, %_parent_stack_end_ptr_
  %_cond1_n_cond2_234 = and i1 %_cond1_229, %_cond2_232
  %_cond1_n_cond2_cond3_235 = and i1 %_cond1_n_cond2_234, %_cond4_233
  br i1 %_cond1_n_cond2_cond3_235, label %90, label %91

; <label>:90:                                     ; preds = %88
  %_address_in_parent_stack_bt_237 = bitcast i8* %_pot_address_in_parent_stack_228 to i64*
  br label %91

; <label>:91:                                     ; preds = %88, %90
  %92 = phi i64* [ %_allin_new_bt_63, %88 ], [ %_address_in_parent_stack_bt_237, %90 ]
  %_new_load_238 = load i64, i64* %92
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_62, i64 8
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %_ptr_to_int_239 = ptrtoint i64* %_allin_new_bt_65 to i64
  %_offset_above_rbp_242 = sub i64 %_ptr_to_int_239, %_local_end_to_int_
  %_pot_address_in_parent_stack_243 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_242
  %_cond1_244 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_245 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_246 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_247 = or i1 %_cond2_1_245, %_cond2_2_246
  %_cond4_248 = icmp ule i8* %_pot_address_in_parent_stack_243, %_parent_stack_end_ptr_
  %_cond1_n_cond2_249 = and i1 %_cond1_244, %_cond2_247
  %_cond1_n_cond2_cond3_250 = and i1 %_cond1_n_cond2_249, %_cond4_248
  br i1 %_cond1_n_cond2_cond3_250, label %93, label %94

; <label>:93:                                     ; preds = %91
  %_address_in_parent_stack_bt_252 = bitcast i8* %_pot_address_in_parent_stack_243 to i64*
  br label %94

; <label>:94:                                     ; preds = %91, %93
  %95 = phi i64* [ %_allin_new_bt_65, %91 ], [ %_address_in_parent_stack_bt_252, %93 ]
  %_new_load_253 = load i64, i64* %95
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %_ptr_to_int_254 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_257 = sub i64 %_ptr_to_int_254, %_local_end_to_int_
  %_pot_address_in_parent_stack_258 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_257
  %_cond1_259 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_260 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_261 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_262 = or i1 %_cond2_1_260, %_cond2_2_261
  %_cond4_263 = icmp ule i8* %_pot_address_in_parent_stack_258, %_parent_stack_end_ptr_
  %_cond1_n_cond2_264 = and i1 %_cond1_259, %_cond2_262
  %_cond1_n_cond2_cond3_265 = and i1 %_cond1_n_cond2_264, %_cond4_263
  br i1 %_cond1_n_cond2_cond3_265, label %96, label %97

; <label>:96:                                     ; preds = %94
  %_address_in_parent_stack_bt_267 = bitcast i8* %_pot_address_in_parent_stack_258 to i64*
  br label %97

; <label>:97:                                     ; preds = %94, %96
  %98 = phi i64* [ %_allin_new_bt_67, %94 ], [ %_address_in_parent_stack_bt_267, %96 ]
  %_new_load_268 = load i64, i64* %98
  %_new_gep_68 = getelementptr i8, i8* %_new_gep_66, i64 8
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %_ptr_to_int_269 = ptrtoint i64* %_allin_new_bt_69 to i64
  %_offset_above_rbp_272 = sub i64 %_ptr_to_int_269, %_local_end_to_int_
  %_pot_address_in_parent_stack_273 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_272
  %_cond1_274 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_275 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_276 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_277 = or i1 %_cond2_1_275, %_cond2_2_276
  %_cond4_278 = icmp ule i8* %_pot_address_in_parent_stack_273, %_parent_stack_end_ptr_
  %_cond1_n_cond2_279 = and i1 %_cond1_274, %_cond2_277
  %_cond1_n_cond2_cond3_280 = and i1 %_cond1_n_cond2_279, %_cond4_278
  br i1 %_cond1_n_cond2_cond3_280, label %99, label %100

; <label>:99:                                     ; preds = %97
  %_address_in_parent_stack_bt_282 = bitcast i8* %_pot_address_in_parent_stack_273 to i64*
  br label %100

; <label>:100:                                    ; preds = %97, %99
  %101 = phi i64* [ %_allin_new_bt_69, %97 ], [ %_address_in_parent_stack_bt_282, %99 ]
  %_new_load_283 = load i64, i64* %101
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_71 = getelementptr i8, i8* %_gep_fix_101, i64 -8
  %102 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !30
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_72, !mcsema_real_eip !30
  store volatile i8* %_new_gep_71, i8** %_RSP_ptr_
  store i64 %102, i64* %XSP, !mcsema_real_eip !30
  %103 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x100 to i64), i64 %82, i64 %83, i64 %RCX_val.40, i64 %R8_val.41, i64 %R9_val.42, i64 %_new_load_208, i64 %_new_load_223, i64 %_new_load_238, i64 %_new_load_253, i64 %_new_load_268, i64 %_new_load_283)
  %_rsp_fix_102 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_103 = getelementptr i8, i8* %_rsp_fix_102, i64 8
  store i8* %_gep_fix_103, i8** %_RSP_ptr_
  store i64 %103, i64* %XAX, !mcsema_real_eip !30
  %EDX.45 = bitcast i64* %XDX to i32*, !mcsema_real_eip !31
  %EDX_val.46 = load i32, i32* %EDX.45, !mcsema_real_eip !31
  store i1 false, i1* %CF, !mcsema_real_eip !31
  store i1 false, i1* %OF, !mcsema_real_eip !31
  store i1 false, i1* %SF, !mcsema_real_eip !31
  store i1 true, i1* %ZF, !mcsema_real_eip !31
  store i1 true, i1* %PF, !mcsema_real_eip !31
  store i1 undef, i1* %AF, !mcsema_real_eip !31
  store i64 0, i64* %XDX, !mcsema_real_eip !31
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -32
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %EAX_val.51 = load i32, i32* %EAX.23, !mcsema_real_eip !32
  %104 = ptrtoint i64* %_allin_new_bt_75 to i64, !mcsema_real_eip !32
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !32
  store i32 %EAX_val.51, i32* %105, !mcsema_real_eip !32
  %EDX_val.53 = load i32, i32* %EDX.45, !mcsema_real_eip !33
  %106 = zext i32 %EDX_val.53 to i64, !mcsema_real_eip !33
  store i64 %106, i64* %XAX, !mcsema_real_eip !33
  %_load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !34
  %_new_gep_77 = getelementptr i8, i8* %_load_rsp_ptr_76, i64 32
  %107 = add i64 32, %RSP_val.54, !mcsema_real_eip !34
  %_trans_p2i_78 = ptrtoint i8* %_new_gep_77 to i64
  %_trans_p2i_79 = ptrtoint i8* %_load_rsp_ptr_76 to i64
  %_trans_xor_80 = xor i64 %_trans_p2i_78, %_trans_p2i_79
  %108 = xor i64 %_trans_xor_80, 32, !mcsema_real_eip !34
  %109 = and i64 %108, 16, !mcsema_real_eip !34
  %110 = icmp ne i64 %109, 0, !mcsema_real_eip !34
  store i1 %110, i1* %AF, !mcsema_real_eip !34
  %111 = lshr i64 %107, 63, !mcsema_real_eip !34
  %112 = trunc i64 %111 to i1, !mcsema_real_eip !34
  store i1 %112, i1* %SF, !mcsema_real_eip !34
  %_trans_icmp_eq_82 = icmp eq i64 %_trans_p2i_78, 0
  store i1 %_trans_icmp_eq_82, i1* %ZF, !mcsema_real_eip !34
  %_trans_xor_84 = xor i64 %_trans_p2i_79, 32
  %113 = xor i64 %_trans_xor_84, -1, !mcsema_real_eip !34
  %114 = and i64 %113, %_trans_xor_80, !mcsema_real_eip !34
  %115 = lshr i64 %114, 63, !mcsema_real_eip !34
  %116 = and i64 %115, 1, !mcsema_real_eip !34
  %117 = trunc i64 %116 to i1, !mcsema_real_eip !34
  store i1 %117, i1* %OF, !mcsema_real_eip !34
  %_trans_trunc_89 = trunc i64 %_trans_p2i_78 to i8
  %118 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_89), !mcsema_real_eip !34
  %119 = trunc i8 %118 to i1, !mcsema_real_eip !34
  %120 = xor i1 %119, true, !mcsema_real_eip !34
  store i1 %120, i1* %PF, !mcsema_real_eip !34
  %_trans_icmp_ne_91 = icmp ne i64 %_trans_p2i_78, %RSP_val.54
  store i1 %_trans_icmp_ne_91, i1* %CF, !mcsema_real_eip !34
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_
  store i64 %107, i64* %XSP, !mcsema_real_eip !34
  %_allin_new_bt_93 = bitcast i8* %_new_gep_77 to i64*
  %_ptr_to_int_284 = ptrtoint i64* %_allin_new_bt_93 to i64
  %_offset_above_rbp_287 = sub i64 %_ptr_to_int_284, %_local_end_to_int_
  %_pot_address_in_parent_stack_288 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_287
  %_cond1_289 = icmp ugt i8* %_new_gep_77, %_local_stack_end_ptr_
  %_cond2_1_290 = icmp ugt i8* %_new_gep_77, %_parent_stack_end_ptr_
  %_cond2_2_291 = icmp ult i8* %_new_gep_77, %_parent_stack_start_ptr_
  %_cond2_292 = or i1 %_cond2_1_290, %_cond2_2_291
  %_cond4_293 = icmp ule i8* %_pot_address_in_parent_stack_288, %_parent_stack_end_ptr_
  %_cond1_n_cond2_294 = and i1 %_cond1_289, %_cond2_292
  %_cond1_n_cond2_cond3_295 = and i1 %_cond1_n_cond2_294, %_cond4_293
  br i1 %_cond1_n_cond2_cond3_295, label %121, label %122

; <label>:121:                                    ; preds = %100
  %_address_in_parent_stack_bt_297 = bitcast i8* %_pot_address_in_parent_stack_288 to i64*
  br label %122

; <label>:122:                                    ; preds = %100, %121
  %123 = phi i64* [ %_allin_new_bt_93, %100 ], [ %_address_in_parent_stack_bt_297, %121 ]
  %_new_load_298 = load i64, i64* %123
  %_new_int2ptr_ = inttoptr i64 %_new_load_298 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_298, i64* %XBP, !mcsema_real_eip !35
  %_new_gep_94 = getelementptr i8, i8* %_new_gep_77, i64 8
  %124 = add i64 %107, 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_94, i8** %_RSP_ptr_
  store i64 %124, i64* %XSP, !mcsema_real_eip !35
  %_new_gep_96 = getelementptr i8, i8* %_new_gep_94, i64 8
  %125 = add i64 %124, 8, !mcsema_real_eip !36
  %_allin_new_bt_97 = bitcast i8* %_new_gep_94 to i64*
  %_ptr_to_int_299 = ptrtoint i64* %_allin_new_bt_97 to i64
  %_offset_above_rbp_302 = sub i64 %_ptr_to_int_299, %_local_end_to_int_
  %_pot_address_in_parent_stack_303 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_302
  %_cond1_304 = icmp ugt i8* %_new_gep_94, %_local_stack_end_ptr_
  %_cond2_1_305 = icmp ugt i8* %_new_gep_94, %_parent_stack_end_ptr_
  %_cond2_2_306 = icmp ult i8* %_new_gep_94, %_parent_stack_start_ptr_
  %_cond2_307 = or i1 %_cond2_1_305, %_cond2_2_306
  %_cond4_308 = icmp ule i8* %_pot_address_in_parent_stack_303, %_parent_stack_end_ptr_
  %_cond1_n_cond2_309 = and i1 %_cond1_304, %_cond2_307
  %_cond1_n_cond2_cond3_310 = and i1 %_cond1_n_cond2_309, %_cond4_308
  br i1 %_cond1_n_cond2_cond3_310, label %126, label %127

; <label>:126:                                    ; preds = %122
  %_address_in_parent_stack_bt_312 = bitcast i8* %_pot_address_in_parent_stack_303 to i64*
  br label %127

; <label>:127:                                    ; preds = %122, %126
  %128 = phi i64* [ %_allin_new_bt_97, %122 ], [ %_address_in_parent_stack_bt_312, %126 ]
  %_new_load_313 = load i64, i64* %128
  store i64 %_new_load_313, i64* %XIP, !mcsema_real_eip !36
  store volatile i8* %_new_gep_96, i8** %_RSP_ptr_
  store i64 %125, i64* %XSP, !mcsema_real_eip !36
  ret void, !mcsema_real_eip !36
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !37
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !37
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !37
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !37
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !37
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !37
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !37
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !37
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !37
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !37
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !37
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !37
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !37
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !37
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !37
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !37
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !37
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !37
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !37
  br label %block_0x0, !mcsema_real_eip !37

block_0x0:                                        ; preds = %entry
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !37
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !37
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !37
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !38
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.60 = load i64, i64* %XSP, !mcsema_real_eip !39
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.60, 16, !mcsema_real_eip !39
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !39
  %4 = and i64 %3, 16, !mcsema_real_eip !39
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !39
  store i1 %5, i1* %AF, !mcsema_real_eip !39
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !39
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !39
  %8 = xor i1 %7, true, !mcsema_real_eip !39
  store i1 %8, i1* %PF, !mcsema_real_eip !39
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !39
  %9 = lshr i64 %2, 63, !mcsema_real_eip !39
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !39
  store i1 %10, i1* %SF, !mcsema_real_eip !39
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !39
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !39
  %12 = lshr i64 %11, 63, !mcsema_real_eip !39
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !39
  store i1 %13, i1* %OF, !mcsema_real_eip !39
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !39
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %EDI.62 = bitcast i64* %XDI to i32*, !mcsema_real_eip !40
  %EDI_val.63 = load i32, i32* %EDI.62, !mcsema_real_eip !40
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !40
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !40
  store i32 %EDI_val.63, i32* %15, !mcsema_real_eip !40
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !41
  %ESI_val.66 = load i32, i32* %ESI.65, !mcsema_real_eip !41
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !41
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !41
  store i32 %ESI_val.66, i32* %17, !mcsema_real_eip !41
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !42
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !42
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

; <label>:20:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x0, %20
  %22 = phi i32* [ %19, %block_0x0 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  store i1 false, i1* %AF, !mcsema_real_eip !42
  %23 = trunc i32 %_new_load_ to i8, !mcsema_real_eip !42
  %24 = call i8 @llvm.ctpop.i8(i8 %23), !mcsema_real_eip !42
  %25 = trunc i8 %24 to i1, !mcsema_real_eip !42
  %26 = xor i1 %25, true, !mcsema_real_eip !42
  store i1 %26, i1* %PF, !mcsema_real_eip !42
  %27 = icmp eq i32 %_new_load_, 0, !mcsema_real_eip !42
  store i1 %27, i1* %ZF, !mcsema_real_eip !42
  %28 = lshr i32 %_new_load_, 31, !mcsema_real_eip !42
  %29 = trunc i32 %28 to i1, !mcsema_real_eip !42
  store i1 %29, i1* %SF, !mcsema_real_eip !42
  store i1 false, i1* %CF, !mcsema_real_eip !42
  store i1 false, i1* %OF, !mcsema_real_eip !42
  %30 = icmp eq i1 %27, false, !mcsema_real_eip !43
  br i1 %30, label %block_0x26, label %block_0x18, !mcsema_real_eip !43

block_0x18:                                       ; preds = %21
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %31 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !44
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !44
  %_ptr_bt_101 = bitcast i32* %32 to i8*
  %_offset_above_rbp_102 = sub i64 %31, %_local_end_to_int_
  %_pot_address_in_parent_stack_103 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_102
  %_cond1_104 = icmp ugt i8* %_ptr_bt_101, %_local_stack_end_ptr_
  %_cond2_1_105 = icmp ugt i8* %_ptr_bt_101, %_parent_stack_end_ptr_
  %_cond2_2_106 = icmp ult i8* %_ptr_bt_101, %_parent_stack_start_ptr_
  %_cond2_107 = or i1 %_cond2_1_105, %_cond2_2_106
  %_cond4_108 = icmp ule i8* %_pot_address_in_parent_stack_103, %_parent_stack_end_ptr_
  %_cond1_n_cond2_109 = and i1 %_cond1_104, %_cond2_107
  %_cond1_n_cond2_cond3_110 = and i1 %_cond1_n_cond2_109, %_cond4_108
  br i1 %_cond1_n_cond2_cond3_110, label %33, label %34

; <label>:33:                                     ; preds = %block_0x18
  %_address_in_parent_stack_bt_112 = bitcast i8* %_pot_address_in_parent_stack_103 to i32*
  br label %34

; <label>:34:                                     ; preds = %block_0x18, %33
  %35 = phi i32* [ %32, %block_0x18 ], [ %_address_in_parent_stack_bt_112, %33 ]
  %_new_load_113 = load i32, i32* %35
  %36 = zext i32 %_new_load_113 to i64, !mcsema_real_eip !44
  store i64 %36, i64* %XAX, !mcsema_real_eip !44
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !45
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !45
  %37 = add i32 1, %EAX_val.71, !mcsema_real_eip !45
  %38 = xor i32 %37, %EAX_val.71, !mcsema_real_eip !45
  %39 = xor i32 %38, 1, !mcsema_real_eip !45
  %40 = and i32 %39, 16, !mcsema_real_eip !45
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !45
  store i1 %41, i1* %AF, !mcsema_real_eip !45
  %42 = lshr i32 %37, 31, !mcsema_real_eip !45
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !45
  store i1 %43, i1* %SF, !mcsema_real_eip !45
  %44 = icmp eq i32 %37, 0, !mcsema_real_eip !45
  store i1 %44, i1* %ZF, !mcsema_real_eip !45
  %45 = xor i32 %EAX_val.71, 1, !mcsema_real_eip !45
  %46 = xor i32 %45, -1, !mcsema_real_eip !45
  %47 = and i32 %46, %38, !mcsema_real_eip !45
  %48 = lshr i32 %47, 31, !mcsema_real_eip !45
  %49 = and i32 %48, 1, !mcsema_real_eip !45
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !45
  store i1 %50, i1* %OF, !mcsema_real_eip !45
  %51 = trunc i32 %37 to i8, !mcsema_real_eip !45
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !45
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !45
  %54 = xor i1 %53, true, !mcsema_real_eip !45
  store i1 %54, i1* %PF, !mcsema_real_eip !45
  %55 = icmp ult i32 %37, %EAX_val.71, !mcsema_real_eip !45
  store i1 %55, i1* %CF, !mcsema_real_eip !45
  %56 = zext i32 %37 to i64, !mcsema_real_eip !45
  store i64 %56, i64* %XAX, !mcsema_real_eip !45
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -4
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %EAX_val.74 = load i32, i32* %EAX.70, !mcsema_real_eip !46
  %57 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !46
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !46
  store i32 %EAX_val.74, i32* %58, !mcsema_real_eip !46
  br label %block_0x70, !mcsema_real_eip !47

block_0x26:                                       ; preds = %21
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %59 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !48
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !48
  %_ptr_bt_116 = bitcast i32* %60 to i8*
  %_offset_above_rbp_117 = sub i64 %59, %_local_end_to_int_
  %_pot_address_in_parent_stack_118 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_117
  %_cond1_119 = icmp ugt i8* %_ptr_bt_116, %_local_stack_end_ptr_
  %_cond2_1_120 = icmp ugt i8* %_ptr_bt_116, %_parent_stack_end_ptr_
  %_cond2_2_121 = icmp ult i8* %_ptr_bt_116, %_parent_stack_start_ptr_
  %_cond2_122 = or i1 %_cond2_1_120, %_cond2_2_121
  %_cond4_123 = icmp ule i8* %_pot_address_in_parent_stack_118, %_parent_stack_end_ptr_
  %_cond1_n_cond2_124 = and i1 %_cond1_119, %_cond2_122
  %_cond1_n_cond2_cond3_125 = and i1 %_cond1_n_cond2_124, %_cond4_123
  br i1 %_cond1_n_cond2_cond3_125, label %61, label %62

; <label>:61:                                     ; preds = %block_0x26
  %_address_in_parent_stack_bt_127 = bitcast i8* %_pot_address_in_parent_stack_118 to i32*
  br label %62

; <label>:62:                                     ; preds = %block_0x26, %61
  %63 = phi i32* [ %60, %block_0x26 ], [ %_address_in_parent_stack_bt_127, %61 ]
  %_new_load_128 = load i32, i32* %63
  store i1 false, i1* %AF, !mcsema_real_eip !48
  %64 = trunc i32 %_new_load_128 to i8, !mcsema_real_eip !48
  %65 = call i8 @llvm.ctpop.i8(i8 %64), !mcsema_real_eip !48
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !48
  %67 = xor i1 %66, true, !mcsema_real_eip !48
  store i1 %67, i1* %PF, !mcsema_real_eip !48
  %68 = icmp eq i32 %_new_load_128, 0, !mcsema_real_eip !48
  store i1 %68, i1* %ZF, !mcsema_real_eip !48
  %69 = lshr i32 %_new_load_128, 31, !mcsema_real_eip !48
  %70 = trunc i32 %69 to i1, !mcsema_real_eip !48
  store i1 %70, i1* %SF, !mcsema_real_eip !48
  store i1 false, i1* %CF, !mcsema_real_eip !48
  store i1 false, i1* %OF, !mcsema_real_eip !48
  %71 = icmp eq i1 %68, false, !mcsema_real_eip !49
  br i1 %71, label %block_0x4a, label %block_0x30, !mcsema_real_eip !49

block_0x30:                                       ; preds = %62
  store i64 1, i64* %XSI, !mcsema_real_eip !50
  br i1 %_cond1_n_cond2_cond3_, label %72, label %73

; <label>:72:                                     ; preds = %block_0x30
  %_address_in_parent_stack_bt_142 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %73

; <label>:73:                                     ; preds = %block_0x30, %72
  %74 = phi i32* [ %19, %block_0x30 ], [ %_address_in_parent_stack_bt_142, %72 ]
  %_new_load_143 = load i32, i32* %74
  %75 = zext i32 %_new_load_143 to i64, !mcsema_real_eip !51
  store i64 %75, i64* %XAX, !mcsema_real_eip !51
  %EAX.96 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.97 = load i32, i32* %EAX.96, !mcsema_real_eip !52
  %76 = sub i32 %EAX_val.97, 1, !mcsema_real_eip !52
  %77 = xor i32 %76, %EAX_val.97, !mcsema_real_eip !52
  %78 = xor i32 %77, 1, !mcsema_real_eip !52
  %79 = and i32 %78, 16, !mcsema_real_eip !52
  %80 = icmp ne i32 %79, 0, !mcsema_real_eip !52
  store i1 %80, i1* %AF, !mcsema_real_eip !52
  %81 = trunc i32 %76 to i8, !mcsema_real_eip !52
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !52
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !52
  %84 = xor i1 %83, true, !mcsema_real_eip !52
  store i1 %84, i1* %PF, !mcsema_real_eip !52
  %85 = icmp eq i32 %76, 0, !mcsema_real_eip !52
  store i1 %85, i1* %ZF, !mcsema_real_eip !52
  %86 = lshr i32 %76, 31, !mcsema_real_eip !52
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !52
  store i1 %87, i1* %SF, !mcsema_real_eip !52
  %88 = icmp ult i32 %EAX_val.97, 1, !mcsema_real_eip !52
  store i1 %88, i1* %CF, !mcsema_real_eip !52
  %89 = xor i32 %EAX_val.97, 1, !mcsema_real_eip !52
  %90 = and i32 %89, %77, !mcsema_real_eip !52
  %91 = lshr i32 %90, 31, !mcsema_real_eip !52
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !52
  store i1 %92, i1* %OF, !mcsema_real_eip !52
  %93 = zext i32 %76 to i64, !mcsema_real_eip !52
  store i64 %93, i64* %XAX, !mcsema_real_eip !52
  %EAX_val.99 = load i32, i32* %EAX.96, !mcsema_real_eip !53
  %94 = zext i32 %EAX_val.99 to i64, !mcsema_real_eip !53
  store i64 %94, i64* %XDI, !mcsema_real_eip !53
  %_load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_
  %RSP_val.100 = load i64, i64* %XSP, !mcsema_real_eip !54
  %_new_gep_35 = getelementptr i8, i8* %_load_rsp_ptr_34, i64 -8
  %95 = sub i64 %RSP_val.100, 8, !mcsema_real_eip !54
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_36, !mcsema_real_eip !54
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_
  store i64 %95, i64* %XSP, !mcsema_real_eip !54
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_35, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_89)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -4
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %EAX_val.103 = load i32, i32* %EAX.96, !mcsema_real_eip !55
  %96 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !55
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.103, i32* %97, !mcsema_real_eip !55
  br label %block_0x70, !mcsema_real_eip !56

block_0x4a:                                       ; preds = %62
  br i1 %_cond1_n_cond2_cond3_, label %98, label %99

; <label>:98:                                     ; preds = %block_0x4a
  %_address_in_parent_stack_bt_157 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %99

; <label>:99:                                     ; preds = %block_0x4a, %98
  %100 = phi i32* [ %19, %block_0x4a ], [ %_address_in_parent_stack_bt_157, %98 ]
  %_new_load_158 = load i32, i32* %100
  %101 = zext i32 %_new_load_158 to i64, !mcsema_real_eip !57
  store i64 %101, i64* %XAX, !mcsema_real_eip !57
  %EAX.76 = bitcast i64* %XAX to i32*, !mcsema_real_eip !58
  %EAX_val.77 = load i32, i32* %EAX.76, !mcsema_real_eip !58
  %102 = sub i32 %EAX_val.77, 1, !mcsema_real_eip !58
  %103 = xor i32 %102, %EAX_val.77, !mcsema_real_eip !58
  %104 = xor i32 %103, 1, !mcsema_real_eip !58
  %105 = and i32 %104, 16, !mcsema_real_eip !58
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !58
  store i1 %106, i1* %AF, !mcsema_real_eip !58
  %107 = trunc i32 %102 to i8, !mcsema_real_eip !58
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !58
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !58
  %110 = xor i1 %109, true, !mcsema_real_eip !58
  store i1 %110, i1* %PF, !mcsema_real_eip !58
  %111 = icmp eq i32 %102, 0, !mcsema_real_eip !58
  store i1 %111, i1* %ZF, !mcsema_real_eip !58
  %112 = lshr i32 %102, 31, !mcsema_real_eip !58
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !58
  store i1 %113, i1* %SF, !mcsema_real_eip !58
  %114 = icmp ult i32 %EAX_val.77, 1, !mcsema_real_eip !58
  store i1 %114, i1* %CF, !mcsema_real_eip !58
  %115 = xor i32 %EAX_val.77, 1, !mcsema_real_eip !58
  %116 = and i32 %115, %103, !mcsema_real_eip !58
  %117 = lshr i32 %116, 31, !mcsema_real_eip !58
  %118 = trunc i32 %117 to i1, !mcsema_real_eip !58
  store i1 %118, i1* %OF, !mcsema_real_eip !58
  %119 = zext i32 %102 to i64, !mcsema_real_eip !58
  store i64 %119, i64* %XAX, !mcsema_real_eip !58
  br i1 %_cond1_n_cond2_cond3_, label %120, label %121

; <label>:120:                                    ; preds = %99
  %_address_in_parent_stack_bt_172 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %121

; <label>:121:                                    ; preds = %99, %120
  %122 = phi i32* [ %19, %99 ], [ %_address_in_parent_stack_bt_172, %120 ]
  %_new_load_173 = load i32, i32* %122
  %123 = zext i32 %_new_load_173 to i64, !mcsema_real_eip !59
  store i64 %123, i64* %XDI, !mcsema_real_eip !59
  br i1 %_cond1_n_cond2_cond3_125, label %124, label %125

; <label>:124:                                    ; preds = %121
  %_address_in_parent_stack_bt_187 = bitcast i8* %_pot_address_in_parent_stack_118 to i32*
  br label %125

; <label>:125:                                    ; preds = %121, %124
  %126 = phi i32* [ %60, %121 ], [ %_address_in_parent_stack_bt_187, %124 ]
  %_new_load_188 = load i32, i32* %126
  %127 = zext i32 %_new_load_188 to i64, !mcsema_real_eip !60
  store i64 %127, i64* %XCX, !mcsema_real_eip !60
  %ECX.80 = bitcast i64* %XCX to i32*, !mcsema_real_eip !61
  %ECX_val.81 = load i32, i32* %ECX.80, !mcsema_real_eip !61
  %128 = sub i32 %ECX_val.81, 1, !mcsema_real_eip !61
  %129 = xor i32 %128, %ECX_val.81, !mcsema_real_eip !61
  %130 = xor i32 %129, 1, !mcsema_real_eip !61
  %131 = and i32 %130, 16, !mcsema_real_eip !61
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !61
  store i1 %132, i1* %AF, !mcsema_real_eip !61
  %133 = trunc i32 %128 to i8, !mcsema_real_eip !61
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !61
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !61
  %136 = xor i1 %135, true, !mcsema_real_eip !61
  store i1 %136, i1* %PF, !mcsema_real_eip !61
  %137 = icmp eq i32 %128, 0, !mcsema_real_eip !61
  store i1 %137, i1* %ZF, !mcsema_real_eip !61
  %138 = lshr i32 %128, 31, !mcsema_real_eip !61
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !61
  store i1 %139, i1* %SF, !mcsema_real_eip !61
  %140 = icmp ult i32 %ECX_val.81, 1, !mcsema_real_eip !61
  store i1 %140, i1* %CF, !mcsema_real_eip !61
  %141 = xor i32 %ECX_val.81, 1, !mcsema_real_eip !61
  %142 = and i32 %141, %129, !mcsema_real_eip !61
  %143 = lshr i32 %142, 31, !mcsema_real_eip !61
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !61
  store i1 %144, i1* %OF, !mcsema_real_eip !61
  %145 = zext i32 %128 to i64, !mcsema_real_eip !61
  store i64 %145, i64* %XCX, !mcsema_real_eip !61
  %ECX_val.83 = load i32, i32* %ECX.80, !mcsema_real_eip !62
  %146 = zext i32 %ECX_val.83 to i64, !mcsema_real_eip !62
  store i64 %146, i64* %XSI, !mcsema_real_eip !62
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %EAX_val.86 = load i32, i32* %EAX.76, !mcsema_real_eip !63
  %147 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !63
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.86, i32* %148, !mcsema_real_eip !63
  %_load_rsp_ptr_52 = load i8*, i8** %_RSP_ptr_
  %RSP_val.87 = load i64, i64* %XSP, !mcsema_real_eip !64
  %_new_gep_53 = getelementptr i8, i8* %_load_rsp_ptr_52, i64 -8
  %149 = sub i64 %RSP_val.87, 8, !mcsema_real_eip !64
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_54, !mcsema_real_eip !64
  store volatile i8* %_new_gep_53, i8** %_RSP_ptr_
  store i64 %149, i64* %XSP, !mcsema_real_eip !64
  %_load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_53, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_91)
  %_rsp_fix_93 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_94 = getelementptr i8, i8* %_rsp_fix_93, i64 8
  store i8* %_gep_fix_94, i8** %_RSP_ptr_
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -16
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %150 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !65
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !65
  %_ptr_bt_191 = bitcast i32* %151 to i8*
  %_offset_above_rbp_192 = sub i64 %150, %_local_end_to_int_
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %_ptr_bt_191, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %_ptr_bt_191, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %_ptr_bt_191, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  br i1 %_cond1_n_cond2_cond3_200, label %152, label %153

; <label>:152:                                    ; preds = %125
  %_address_in_parent_stack_bt_202 = bitcast i8* %_pot_address_in_parent_stack_193 to i32*
  br label %153

; <label>:153:                                    ; preds = %125, %152
  %154 = phi i32* [ %151, %125 ], [ %_address_in_parent_stack_bt_202, %152 ]
  %_new_load_203 = load i32, i32* %154
  %155 = zext i32 %_new_load_203 to i64, !mcsema_real_eip !65
  store i64 %155, i64* %XDI, !mcsema_real_eip !65
  %EAX_val.90 = load i32, i32* %EAX.76, !mcsema_real_eip !66
  %156 = zext i32 %EAX_val.90 to i64, !mcsema_real_eip !66
  store i64 %156, i64* %XSI, !mcsema_real_eip !66
  %RSP_val.91 = load i64, i64* %XSP, !mcsema_real_eip !67
  %_new_gep_59 = getelementptr i8, i8* %_gep_fix_94, i64 -8
  %157 = sub i64 %RSP_val.91, 8, !mcsema_real_eip !67
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_60, !mcsema_real_eip !67
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_
  store i64 %157, i64* %XSP, !mcsema_real_eip !67
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_59, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_95)
  %_rsp_fix_97 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_98 = getelementptr i8, i8* %_rsp_fix_97, i64 8
  store i8* %_gep_fix_98, i8** %_RSP_ptr_
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -4
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %EAX_val.94 = load i32, i32* %EAX.76, !mcsema_real_eip !68
  %158 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !68
  %159 = inttoptr i64 %158 to i32*, !mcsema_real_eip !68
  store i32 %EAX_val.94, i32* %159, !mcsema_real_eip !68
  br label %block_0x70, !mcsema_real_eip !50

block_0x70:                                       ; preds = %153, %73, %34
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -4
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %160 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !69
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !69
  %_ptr_bt_206 = bitcast i32* %161 to i8*
  %_offset_above_rbp_207 = sub i64 %160, %_local_end_to_int_
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_ptr_bt_206, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_ptr_bt_206, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_ptr_bt_206, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  br i1 %_cond1_n_cond2_cond3_215, label %162, label %163

; <label>:162:                                    ; preds = %block_0x70
  %_address_in_parent_stack_bt_217 = bitcast i8* %_pot_address_in_parent_stack_208 to i32*
  br label %163

; <label>:163:                                    ; preds = %block_0x70, %162
  %164 = phi i32* [ %161, %block_0x70 ], [ %_address_in_parent_stack_bt_217, %162 ]
  %_new_load_218 = load i32, i32* %164
  %165 = zext i32 %_new_load_218 to i64, !mcsema_real_eip !69
  store i64 %165, i64* %XAX, !mcsema_real_eip !69
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %RSP_val.105 = load i64, i64* %XSP, !mcsema_real_eip !70
  %_new_gep_68 = getelementptr i8, i8* %_load_rsp_ptr_67, i64 16
  %166 = add i64 16, %RSP_val.105, !mcsema_real_eip !70
  %_trans_p2i_69 = ptrtoint i8* %_new_gep_68 to i64
  %_trans_p2i_70 = ptrtoint i8* %_load_rsp_ptr_67 to i64
  %_trans_xor_71 = xor i64 %_trans_p2i_69, %_trans_p2i_70
  %167 = xor i64 %_trans_xor_71, 16, !mcsema_real_eip !70
  %168 = and i64 %167, 16, !mcsema_real_eip !70
  %169 = icmp ne i64 %168, 0, !mcsema_real_eip !70
  store i1 %169, i1* %AF, !mcsema_real_eip !70
  %170 = lshr i64 %166, 63, !mcsema_real_eip !70
  %171 = trunc i64 %170 to i1, !mcsema_real_eip !70
  store i1 %171, i1* %SF, !mcsema_real_eip !70
  %_trans_icmp_eq_73 = icmp eq i64 %_trans_p2i_69, 0
  store i1 %_trans_icmp_eq_73, i1* %ZF, !mcsema_real_eip !70
  %_trans_xor_75 = xor i64 %_trans_p2i_70, 16
  %172 = xor i64 %_trans_xor_75, -1, !mcsema_real_eip !70
  %173 = and i64 %172, %_trans_xor_71, !mcsema_real_eip !70
  %174 = lshr i64 %173, 63, !mcsema_real_eip !70
  %175 = and i64 %174, 1, !mcsema_real_eip !70
  %176 = trunc i64 %175 to i1, !mcsema_real_eip !70
  store i1 %176, i1* %OF, !mcsema_real_eip !70
  %_trans_trunc_80 = trunc i64 %_trans_p2i_69 to i8
  %177 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_80), !mcsema_real_eip !70
  %178 = trunc i8 %177 to i1, !mcsema_real_eip !70
  %179 = xor i1 %178, true, !mcsema_real_eip !70
  store i1 %179, i1* %PF, !mcsema_real_eip !70
  %_trans_icmp_ne_82 = icmp ne i64 %_trans_p2i_69, %RSP_val.105
  store i1 %_trans_icmp_ne_82, i1* %CF, !mcsema_real_eip !70
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_
  store i64 %166, i64* %XSP, !mcsema_real_eip !70
  %_allin_new_bt_84 = bitcast i8* %_new_gep_68 to i64*
  %_ptr_to_int_219 = ptrtoint i64* %_allin_new_bt_84 to i64
  %_offset_above_rbp_222 = sub i64 %_ptr_to_int_219, %_local_end_to_int_
  %_pot_address_in_parent_stack_223 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_222
  %_cond1_224 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_225 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_226 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_227 = or i1 %_cond2_1_225, %_cond2_2_226
  %_cond4_228 = icmp ule i8* %_pot_address_in_parent_stack_223, %_parent_stack_end_ptr_
  %_cond1_n_cond2_229 = and i1 %_cond1_224, %_cond2_227
  %_cond1_n_cond2_cond3_230 = and i1 %_cond1_n_cond2_229, %_cond4_228
  br i1 %_cond1_n_cond2_cond3_230, label %180, label %181

; <label>:180:                                    ; preds = %163
  %_address_in_parent_stack_bt_232 = bitcast i8* %_pot_address_in_parent_stack_223 to i64*
  br label %181

; <label>:181:                                    ; preds = %163, %180
  %182 = phi i64* [ %_allin_new_bt_84, %163 ], [ %_address_in_parent_stack_bt_232, %180 ]
  %_new_load_233 = load i64, i64* %182
  %_new_int2ptr_ = inttoptr i64 %_new_load_233 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_233, i64* %XBP, !mcsema_real_eip !71
  %_new_gep_85 = getelementptr i8, i8* %_new_gep_68, i64 8
  %183 = add i64 %166, 8, !mcsema_real_eip !71
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %183, i64* %XSP, !mcsema_real_eip !71
  %_new_gep_87 = getelementptr i8, i8* %_new_gep_85, i64 8
  %184 = add i64 %183, 8, !mcsema_real_eip !72
  %_allin_new_bt_88 = bitcast i8* %_new_gep_85 to i64*
  %_ptr_to_int_234 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_237 = sub i64 %_ptr_to_int_234, %_local_end_to_int_
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond1_n_cond2_244, %_cond4_243
  br i1 %_cond1_n_cond2_cond3_245, label %185, label %186

; <label>:185:                                    ; preds = %181
  %_address_in_parent_stack_bt_247 = bitcast i8* %_pot_address_in_parent_stack_238 to i64*
  br label %186

; <label>:186:                                    ; preds = %181, %185
  %187 = phi i64* [ %_allin_new_bt_88, %181 ], [ %_address_in_parent_stack_bt_247, %185 ]
  %_new_load_248 = load i64, i64* %187
  store i64 %_new_load_248, i64* %XIP, !mcsema_real_eip !72
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_
  store i64 %184, i64* %XSP, !mcsema_real_eip !72
  ret void, !mcsema_real_eip !72
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 128}
!3 = !{i64 129}
!4 = !{i64 132}
!5 = !{i64 136}
!6 = !{i64 143}
!7 = !{i64 146}
!8 = !{i64 150}
!9 = !{i64 154}
!10 = !{i64 160}
!11 = !{i64 164}
!12 = !{i64 168}
!13 = !{i64 173}
!14 = !{i64 176}
!15 = !{i64 181}
!16 = !{i64 186}
!17 = !{i64 189}
!18 = !{i64 194}
!19 = !{i64 197}
!20 = !{i64 202}
!21 = !{i64 205}
!22 = !{i64 208}
!23 = !{i64 211}
!24 = !{i64 214}
!25 = !{i64 216}
!26 = !{i64 221}
!27 = !{i64 231}
!28 = !{i64 234}
!29 = !{i64 236}
!30 = !{i64 238}
!31 = !{i64 243}
!32 = !{i64 245}
!33 = !{i64 248}
!34 = !{i64 250}
!35 = !{i64 254}
!36 = !{i64 255}
!37 = !{i64 0}
!38 = !{i64 1}
!39 = !{i64 4}
!40 = !{i64 8}
!41 = !{i64 11}
!42 = !{i64 14}
!43 = !{i64 18}
!44 = !{i64 24}
!45 = !{i64 27}
!46 = !{i64 30}
!47 = !{i64 33}
!48 = !{i64 38}
!49 = !{i64 42}
!50 = !{i64 48}
!51 = !{i64 53}
!52 = !{i64 56}
!53 = !{i64 59}
!54 = !{i64 61}
!55 = !{i64 66}
!56 = !{i64 69}
!57 = !{i64 74}
!58 = !{i64 77}
!59 = !{i64 80}
!60 = !{i64 83}
!61 = !{i64 86}
!62 = !{i64 89}
!63 = !{i64 91}
!64 = !{i64 94}
!65 = !{i64 99}
!66 = !{i64 102}
!67 = !{i64 104}
!68 = !{i64 109}
!69 = !{i64 112}
!70 = !{i64 115}
!71 = !{i64 119}
!72 = !{i64 120}
