; ModuleID = 'Output/test_32.clang.trans.bc'
source_filename = "Output/test_32.clang.bc"
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

%0 = type <{ [5 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [5 x i8] c"%ld\0A\00" }>, align 64
@data_0xd8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"Z\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"r\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  br i1 %38, label %block_0x95, label %block_0x80, !mcsema_real_eip !9

block_0x80:                                       ; preds = %block_0x60
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
  br label %block_0xa2, !mcsema_real_eip !14

block_0x95:                                       ; preds = %block_0x60
  store i64 20, i64* %XAX, !mcsema_real_eip !15
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !16
  %47 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !16
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.13, i32* %48, !mcsema_real_eip !16
  br label %block_0xa2, !mcsema_real_eip !17

block_0xa2:                                       ; preds = %block_0x95, %block_0x80
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %49 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !18
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !18
  %51 = load i32, i32* %50, !mcsema_real_eip !18
  %52 = zext i32 %51 to i64, !mcsema_real_eip !18
  store i64 %52, i64* %XAX, !mcsema_real_eip !18
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !19
  %53 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !19
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.24, i32* %54, !mcsema_real_eip !19
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -20
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !20
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !20
  %57 = load i32, i32* %56, !mcsema_real_eip !20
  %58 = sext i32 %57 to i64, !mcsema_real_eip !20
  store i64 %58, i64* %XDI, !mcsema_real_eip !20
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 -8
  %59 = sub i64 %RSP_val.26, 8, !mcsema_real_eip !21
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_48, !mcsema_real_eip !21
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %59, i64* %XSP, !mcsema_real_eip !21
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_47, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_89)
  %_rsp_fix_91 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_92 = getelementptr i8, i8* %_rsp_fix_91, i64 8
  store i8* %_gep_fix_92, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %XDI, !mcsema_real_eip !22
  %RAX_val.27 = load i64, i64* %XAX, !mcsema_real_eip !23
  store i64 %RAX_val.27, i64* %XSI, !mcsema_real_eip !23
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !24
  store i8 0, i8* %AL.28, !mcsema_real_eip !24
  %RDX_val.31 = load i64, i64* %XDX, !mcsema_real_eip !25
  %RCX_val.32 = load i64, i64* %XCX, !mcsema_real_eip !25
  %R8_val.33 = load i64, i64* %R8, !mcsema_real_eip !25
  %R9_val.34 = load i64, i64* %R9, !mcsema_real_eip !25
  %_allin_new_bt_50 = bitcast i8* %_gep_fix_92 to i64*
  %60 = load i64, i64* %_allin_new_bt_50, !mcsema_real_eip !25
  %_new_gep_51 = getelementptr i8, i8* %_gep_fix_92, i64 8
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %61 = load i64, i64* %_allin_new_bt_52, !mcsema_real_eip !25
  %_new_gep_53 = getelementptr i8, i8* %_new_gep_51, i64 8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %62 = load i64, i64* %_allin_new_bt_54, !mcsema_real_eip !25
  %_new_gep_55 = getelementptr i8, i8* %_new_gep_53, i64 8
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %63 = load i64, i64* %_allin_new_bt_56, !mcsema_real_eip !25
  %_new_gep_57 = getelementptr i8, i8* %_new_gep_55, i64 8
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %64 = load i64, i64* %_allin_new_bt_58, !mcsema_real_eip !25
  %_new_gep_59 = getelementptr i8, i8* %_new_gep_57, i64 8
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %65 = load i64, i64* %_allin_new_bt_60, !mcsema_real_eip !25
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_62 = getelementptr i8, i8* %_gep_fix_92, i64 -8
  %66 = sub i64 %RSP_val.36, 8, !mcsema_real_eip !25
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_63, !mcsema_real_eip !25
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_
  store i64 %66, i64* %XSP, !mcsema_real_eip !25
  %67 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %RAX_val.27, i64 %RDX_val.31, i64 %RCX_val.32, i64 %R8_val.33, i64 %R9_val.34, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  %_rsp_fix_93 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_94 = getelementptr i8, i8* %_rsp_fix_93, i64 8
  store i8* %_gep_fix_94, i8** %_RSP_ptr_
  store i64 %67, i64* %XAX, !mcsema_real_eip !25
  %ECX.37 = bitcast i64* %XCX to i32*, !mcsema_real_eip !26
  %ECX_val.38 = load i32, i32* %ECX.37, !mcsema_real_eip !26
  store i1 false, i1* %CF, !mcsema_real_eip !26
  store i1 false, i1* %OF, !mcsema_real_eip !26
  store i1 false, i1* %SF, !mcsema_real_eip !26
  store i1 true, i1* %ZF, !mcsema_real_eip !26
  store i1 true, i1* %PF, !mcsema_real_eip !26
  store i1 undef, i1* %AF, !mcsema_real_eip !26
  store i64 0, i64* %XCX, !mcsema_real_eip !26
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -28
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %EAX_val.43 = load i32, i32* %EAX.23, !mcsema_real_eip !27
  %68 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !27
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !27
  store i32 %EAX_val.43, i32* %69, !mcsema_real_eip !27
  %ECX_val.45 = load i32, i32* %ECX.37, !mcsema_real_eip !28
  %70 = zext i32 %ECX_val.45 to i64, !mcsema_real_eip !28
  store i64 %70, i64* %XAX, !mcsema_real_eip !28
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_68 = getelementptr i8, i8* %_load_rsp_ptr_67, i64 32
  %71 = add i64 32, %RSP_val.46, !mcsema_real_eip !29
  %_trans_p2i_69 = ptrtoint i8* %_new_gep_68 to i64
  %_trans_p2i_70 = ptrtoint i8* %_load_rsp_ptr_67 to i64
  %_trans_xor_71 = xor i64 %_trans_p2i_69, %_trans_p2i_70
  %72 = xor i64 %_trans_xor_71, 32, !mcsema_real_eip !29
  %73 = and i64 %72, 16, !mcsema_real_eip !29
  %74 = icmp ne i64 %73, 0, !mcsema_real_eip !29
  store i1 %74, i1* %AF, !mcsema_real_eip !29
  %75 = lshr i64 %71, 63, !mcsema_real_eip !29
  %76 = trunc i64 %75 to i1, !mcsema_real_eip !29
  store i1 %76, i1* %SF, !mcsema_real_eip !29
  %_trans_icmp_eq_73 = icmp eq i64 %_trans_p2i_69, 0
  store i1 %_trans_icmp_eq_73, i1* %ZF, !mcsema_real_eip !29
  %_trans_xor_75 = xor i64 %_trans_p2i_70, 32
  %77 = xor i64 %_trans_xor_75, -1, !mcsema_real_eip !29
  %78 = and i64 %77, %_trans_xor_71, !mcsema_real_eip !29
  %79 = lshr i64 %78, 63, !mcsema_real_eip !29
  %80 = and i64 %79, 1, !mcsema_real_eip !29
  %81 = trunc i64 %80 to i1, !mcsema_real_eip !29
  store i1 %81, i1* %OF, !mcsema_real_eip !29
  %_trans_trunc_80 = trunc i64 %_trans_p2i_69 to i8
  %82 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_80), !mcsema_real_eip !29
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !29
  %84 = xor i1 %83, true, !mcsema_real_eip !29
  store i1 %84, i1* %PF, !mcsema_real_eip !29
  %_trans_icmp_ne_82 = icmp ne i64 %_trans_p2i_69, %RSP_val.46
  store i1 %_trans_icmp_ne_82, i1* %CF, !mcsema_real_eip !29
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_
  store i64 %71, i64* %XSP, !mcsema_real_eip !29
  %_allin_new_bt_84 = bitcast i8* %_new_gep_68 to i64*
  %85 = load i64, i64* %_allin_new_bt_84, !mcsema_real_eip !30
  %_new_int2ptr_ = inttoptr i64 %85 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %85, i64* %XBP, !mcsema_real_eip !30
  %_new_gep_85 = getelementptr i8, i8* %_new_gep_68, i64 8
  %86 = add i64 %71, 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %86, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_87 = getelementptr i8, i8* %_new_gep_85, i64 8
  %87 = add i64 %86, 8, !mcsema_real_eip !31
  %_allin_new_bt_88 = bitcast i8* %_new_gep_85 to i64*
  %88 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !31
  store i64 %88, i64* %XIP, !mcsema_real_eip !31
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_
  store i64 %87, i64* %XSP, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !32
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !32
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !32
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !32
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !32
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !32
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !32
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !32
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !32
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !32
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !32
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !32
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !32
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !32
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !32
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !32
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !32
  br label %block_0x0, !mcsema_real_eip !32

block_0x0:                                        ; preds = %entry
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !32
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !32
  %1 = sub i64 %RSP_val.50, 8, !mcsema_real_eip !32
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !32
  store i64 %RBP_val.49, i64* %2, !mcsema_real_eip !32
  store i64 %1, i64* %XSP, !mcsema_real_eip !32
  store i64 %1, i64* %XBP, !mcsema_real_eip !33
  %3 = sub i64 %1, 32, !mcsema_real_eip !34
  %4 = xor i64 %3, %1, !mcsema_real_eip !34
  %5 = xor i64 %4, 32, !mcsema_real_eip !34
  %6 = and i64 %5, 16, !mcsema_real_eip !34
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !34
  store i1 %7, i1* %AF, !mcsema_real_eip !34
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !34
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !34
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !34
  %11 = xor i1 %10, true, !mcsema_real_eip !34
  store i1 %11, i1* %PF, !mcsema_real_eip !34
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !34
  store i1 %12, i1* %ZF, !mcsema_real_eip !34
  %13 = lshr i64 %3, 63, !mcsema_real_eip !34
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !34
  store i1 %14, i1* %SF, !mcsema_real_eip !34
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !34
  store i1 %15, i1* %CF, !mcsema_real_eip !34
  %16 = xor i64 %1, 32, !mcsema_real_eip !34
  %17 = and i64 %16, %4, !mcsema_real_eip !34
  %18 = lshr i64 %17, 63, !mcsema_real_eip !34
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !34
  store i1 %19, i1* %OF, !mcsema_real_eip !34
  store i64 %3, i64* %XSP, !mcsema_real_eip !34
  %20 = add i64 %1, -16, !mcsema_real_eip !35
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !35
  %RDI_val.54 = load i64, i64* %XDI, !mcsema_real_eip !35
  store i64 %RDI_val.54, i64* %21, !mcsema_real_eip !35
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !36
  %22 = add i64 %RBP_val.55, -16, !mcsema_real_eip !36
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !36
  %24 = load i64, i64* %23, !mcsema_real_eip !36
  %25 = sub i64 %24, 2, !mcsema_real_eip !36
  %26 = xor i64 %25, %24, !mcsema_real_eip !36
  %27 = xor i64 %26, 2, !mcsema_real_eip !36
  %28 = and i64 %27, 16, !mcsema_real_eip !36
  %29 = icmp ne i64 %28, 0, !mcsema_real_eip !36
  store i1 %29, i1* %AF, !mcsema_real_eip !36
  %30 = trunc i64 %25 to i8, !mcsema_real_eip !36
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !36
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !36
  %33 = xor i1 %32, true, !mcsema_real_eip !36
  store i1 %33, i1* %PF, !mcsema_real_eip !36
  %34 = icmp eq i64 %25, 0, !mcsema_real_eip !36
  store i1 %34, i1* %ZF, !mcsema_real_eip !36
  %35 = lshr i64 %25, 63, !mcsema_real_eip !36
  %36 = trunc i64 %35 to i1, !mcsema_real_eip !36
  store i1 %36, i1* %SF, !mcsema_real_eip !36
  %37 = icmp ult i64 %24, 2, !mcsema_real_eip !36
  store i1 %37, i1* %CF, !mcsema_real_eip !36
  %38 = xor i64 %24, 2, !mcsema_real_eip !36
  %39 = and i64 %38, %26, !mcsema_real_eip !36
  %40 = lshr i64 %39, 63, !mcsema_real_eip !36
  %41 = trunc i64 %40 to i1, !mcsema_real_eip !36
  store i1 %41, i1* %OF, !mcsema_real_eip !36
  %42 = icmp eq i1 %37, false, !mcsema_real_eip !37
  br i1 %42, label %block_0x24, label %block_0x17, !mcsema_real_eip !37

block_0x17:                                       ; preds = %block_0x0
  %43 = add i64 %RBP_val.55, -8, !mcsema_real_eip !38
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !38
  store i64 1, i64* %44, !mcsema_real_eip !38
  br label %block_0x50, !mcsema_real_eip !39

block_0x24:                                       ; preds = %block_0x0
  %45 = load i64, i64* %23, !mcsema_real_eip !40
  store i64 %45, i64* %XAX, !mcsema_real_eip !40
  %46 = sub i64 %45, 2, !mcsema_real_eip !41
  %47 = xor i64 %46, %45, !mcsema_real_eip !41
  %48 = xor i64 %47, 2, !mcsema_real_eip !41
  %49 = and i64 %48, 16, !mcsema_real_eip !41
  %50 = icmp ne i64 %49, 0, !mcsema_real_eip !41
  store i1 %50, i1* %AF, !mcsema_real_eip !41
  %51 = trunc i64 %46 to i8, !mcsema_real_eip !41
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !41
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !41
  %54 = xor i1 %53, true, !mcsema_real_eip !41
  store i1 %54, i1* %PF, !mcsema_real_eip !41
  %55 = icmp eq i64 %46, 0, !mcsema_real_eip !41
  store i1 %55, i1* %ZF, !mcsema_real_eip !41
  %56 = lshr i64 %46, 63, !mcsema_real_eip !41
  %57 = trunc i64 %56 to i1, !mcsema_real_eip !41
  store i1 %57, i1* %SF, !mcsema_real_eip !41
  %58 = icmp ult i64 %45, 2, !mcsema_real_eip !41
  store i1 %58, i1* %CF, !mcsema_real_eip !41
  %59 = xor i64 %45, 2, !mcsema_real_eip !41
  %60 = and i64 %59, %47, !mcsema_real_eip !41
  %61 = lshr i64 %60, 63, !mcsema_real_eip !41
  %62 = trunc i64 %61 to i1, !mcsema_real_eip !41
  store i1 %62, i1* %OF, !mcsema_real_eip !41
  store i64 %46, i64* %XAX, !mcsema_real_eip !41
  store i64 %46, i64* %XDI, !mcsema_real_eip !42
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !43
  %63 = sub i64 %RSP_val.59, 8, !mcsema_real_eip !43
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !43
  store i64 -4981261766360305936, i64* %64, !mcsema_real_eip !43
  store i64 %63, i64* %XSP, !mcsema_real_eip !43
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !43
  %RBP_val.60 = load i64, i64* %XBP, !mcsema_real_eip !44
  %65 = add i64 %RBP_val.60, -16, !mcsema_real_eip !44
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !44
  %67 = load i64, i64* %66, !mcsema_real_eip !44
  store i64 %67, i64* %XDI, !mcsema_real_eip !44
  %68 = sub i64 %67, 1, !mcsema_real_eip !45
  %69 = xor i64 %68, %67, !mcsema_real_eip !45
  %70 = xor i64 %69, 1, !mcsema_real_eip !45
  %71 = and i64 %70, 16, !mcsema_real_eip !45
  %72 = icmp ne i64 %71, 0, !mcsema_real_eip !45
  store i1 %72, i1* %AF, !mcsema_real_eip !45
  %73 = trunc i64 %68 to i8, !mcsema_real_eip !45
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !45
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !45
  %76 = xor i1 %75, true, !mcsema_real_eip !45
  store i1 %76, i1* %PF, !mcsema_real_eip !45
  %77 = icmp eq i64 %68, 0, !mcsema_real_eip !45
  store i1 %77, i1* %ZF, !mcsema_real_eip !45
  %78 = lshr i64 %68, 63, !mcsema_real_eip !45
  %79 = trunc i64 %78 to i1, !mcsema_real_eip !45
  store i1 %79, i1* %SF, !mcsema_real_eip !45
  %80 = icmp ult i64 %67, 1, !mcsema_real_eip !45
  store i1 %80, i1* %CF, !mcsema_real_eip !45
  %81 = xor i64 %67, 1, !mcsema_real_eip !45
  %82 = and i64 %81, %69, !mcsema_real_eip !45
  %83 = lshr i64 %82, 63, !mcsema_real_eip !45
  %84 = trunc i64 %83 to i1, !mcsema_real_eip !45
  store i1 %84, i1* %OF, !mcsema_real_eip !45
  store i64 %68, i64* %XDI, !mcsema_real_eip !45
  %85 = add i64 %RBP_val.60, -24, !mcsema_real_eip !46
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !46
  %RAX_val.63 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.63, i64* %86, !mcsema_real_eip !46
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !47
  %87 = sub i64 %RSP_val.64, 8, !mcsema_real_eip !47
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !47
  store i64 -4981261766360305936, i64* %88, !mcsema_real_eip !47
  store i64 %87, i64* %XSP, !mcsema_real_eip !47
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !47
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !48
  %89 = add i64 %RBP_val.65, -24, !mcsema_real_eip !48
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !48
  %91 = load i64, i64* %90, !mcsema_real_eip !48
  store i64 %91, i64* %XDI, !mcsema_real_eip !48
  %RAX_val.67 = load i64, i64* %XAX, !mcsema_real_eip !49
  %92 = add i64 %RAX_val.67, %91, !mcsema_real_eip !49
  %93 = xor i64 %92, %91, !mcsema_real_eip !49
  %94 = xor i64 %93, %RAX_val.67, !mcsema_real_eip !49
  %95 = and i64 %94, 16, !mcsema_real_eip !49
  %96 = icmp ne i64 %95, 0, !mcsema_real_eip !49
  store i1 %96, i1* %AF, !mcsema_real_eip !49
  %97 = lshr i64 %92, 63, !mcsema_real_eip !49
  %98 = trunc i64 %97 to i1, !mcsema_real_eip !49
  store i1 %98, i1* %SF, !mcsema_real_eip !49
  %99 = icmp eq i64 %92, 0, !mcsema_real_eip !49
  store i1 %99, i1* %ZF, !mcsema_real_eip !49
  %100 = xor i64 %91, %RAX_val.67, !mcsema_real_eip !49
  %101 = xor i64 %100, -1, !mcsema_real_eip !49
  %102 = and i64 %101, %93, !mcsema_real_eip !49
  %103 = lshr i64 %102, 63, !mcsema_real_eip !49
  %104 = and i64 %103, 1, !mcsema_real_eip !49
  %105 = trunc i64 %104 to i1, !mcsema_real_eip !49
  store i1 %105, i1* %OF, !mcsema_real_eip !49
  %106 = trunc i64 %92 to i8, !mcsema_real_eip !49
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !49
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !49
  %109 = xor i1 %108, true, !mcsema_real_eip !49
  store i1 %109, i1* %PF, !mcsema_real_eip !49
  %110 = icmp ult i64 %92, %91, !mcsema_real_eip !49
  store i1 %110, i1* %CF, !mcsema_real_eip !49
  store i64 %92, i64* %XDI, !mcsema_real_eip !49
  %111 = add i64 %RBP_val.65, -8, !mcsema_real_eip !50
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !50
  store i64 %92, i64* %112, !mcsema_real_eip !50
  br label %block_0x50, !mcsema_real_eip !38

block_0x50:                                       ; preds = %block_0x24, %block_0x17
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !51
  %113 = add i64 %RBP_val.71, -8, !mcsema_real_eip !51
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !51
  %115 = load i64, i64* %114, !mcsema_real_eip !51
  store i64 %115, i64* %XAX, !mcsema_real_eip !51
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !52
  %116 = add i64 32, %RSP_val.72, !mcsema_real_eip !52
  %117 = xor i64 %116, %RSP_val.72, !mcsema_real_eip !52
  %118 = xor i64 %117, 32, !mcsema_real_eip !52
  %119 = and i64 %118, 16, !mcsema_real_eip !52
  %120 = icmp ne i64 %119, 0, !mcsema_real_eip !52
  store i1 %120, i1* %AF, !mcsema_real_eip !52
  %121 = lshr i64 %116, 63, !mcsema_real_eip !52
  %122 = trunc i64 %121 to i1, !mcsema_real_eip !52
  store i1 %122, i1* %SF, !mcsema_real_eip !52
  %123 = icmp eq i64 %116, 0, !mcsema_real_eip !52
  store i1 %123, i1* %ZF, !mcsema_real_eip !52
  %124 = xor i64 %RSP_val.72, 32, !mcsema_real_eip !52
  %125 = xor i64 %124, -1, !mcsema_real_eip !52
  %126 = and i64 %125, %117, !mcsema_real_eip !52
  %127 = lshr i64 %126, 63, !mcsema_real_eip !52
  %128 = and i64 %127, 1, !mcsema_real_eip !52
  %129 = trunc i64 %128 to i1, !mcsema_real_eip !52
  store i1 %129, i1* %OF, !mcsema_real_eip !52
  %130 = trunc i64 %116 to i8, !mcsema_real_eip !52
  %131 = call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !52
  %132 = trunc i8 %131 to i1, !mcsema_real_eip !52
  %133 = xor i1 %132, true, !mcsema_real_eip !52
  store i1 %133, i1* %PF, !mcsema_real_eip !52
  %134 = icmp ult i64 %116, %RSP_val.72, !mcsema_real_eip !52
  store i1 %134, i1* %CF, !mcsema_real_eip !52
  store i64 %116, i64* %XSP, !mcsema_real_eip !52
  %135 = inttoptr i64 %116 to i64*, !mcsema_real_eip !53
  %136 = load i64, i64* %135, !mcsema_real_eip !53
  store i64 %136, i64* %XBP, !mcsema_real_eip !53
  %137 = add i64 %116, 8, !mcsema_real_eip !53
  store i64 %137, i64* %XSP, !mcsema_real_eip !53
  %138 = add i64 %137, 8, !mcsema_real_eip !54
  %139 = inttoptr i64 %137 to i64*, !mcsema_real_eip !54
  %140 = load i64, i64* %139, !mcsema_real_eip !54
  store i64 %140, i64* %XIP, !mcsema_real_eip !54
  store i64 %138, i64* %XSP, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54
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
define x86_64_sysvcc void @sub_60.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
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

; <label>:20:                                     ; preds = %block_0x60
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x60, %20
  %22 = phi i32* [ %19, %block_0x60 ], [ %_address_in_parent_stack_bt_, %20 ]
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
  br i1 %40, label %block_0x95, label %block_0x80, !mcsema_real_eip !9

block_0x80:                                       ; preds = %21
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_95 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_95, %_local_end_to_int_
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  br i1 %_cond1_n_cond2_cond3_106, label %41, label %42

; <label>:41:                                     ; preds = %block_0x80
  %_address_in_parent_stack_bt_108 = bitcast i8* %_pot_address_in_parent_stack_99 to i64*
  br label %42

; <label>:42:                                     ; preds = %block_0x80, %41
  %43 = phi i64* [ %_allin_new_bt_27, %block_0x80 ], [ %_address_in_parent_stack_bt_108, %41 ]
  %_new_load_109 = load i64, i64* %43
  store i64 %_new_load_109, i64* %XAX, !mcsema_real_eip !10
  %44 = add i64 %_new_load_109, 8, !mcsema_real_eip !11
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !11
  %_ptr_bt_112 = bitcast i64* %45 to i8*
  %_offset_above_rbp_113 = sub i64 %44, %_local_end_to_int_
  %_pot_address_in_parent_stack_114 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_113
  %_cond1_115 = icmp ugt i8* %_ptr_bt_112, %_local_stack_end_ptr_
  %_cond2_1_116 = icmp ugt i8* %_ptr_bt_112, %_parent_stack_end_ptr_
  %_cond2_2_117 = icmp ult i8* %_ptr_bt_112, %_parent_stack_start_ptr_
  %_cond2_118 = or i1 %_cond2_1_116, %_cond2_2_117
  %_cond4_119 = icmp ule i8* %_pot_address_in_parent_stack_114, %_parent_stack_end_ptr_
  %_cond1_n_cond2_120 = and i1 %_cond1_115, %_cond2_118
  %_cond1_n_cond2_cond3_121 = and i1 %_cond1_n_cond2_120, %_cond4_119
  br i1 %_cond1_n_cond2_cond3_121, label %46, label %47

; <label>:46:                                     ; preds = %42
  %_address_in_parent_stack_bt_123 = bitcast i8* %_pot_address_in_parent_stack_114 to i64*
  br label %47

; <label>:47:                                     ; preds = %42, %46
  %48 = phi i64* [ %45, %42 ], [ %_address_in_parent_stack_bt_123, %46 ]
  %_new_load_124 = load i64, i64* %48
  store i64 %_new_load_124, i64* %XDI, !mcsema_real_eip !11
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.17 = load i64, i64* %XSP, !mcsema_real_eip !12
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %49 = sub i64 %RSP_val.17, 8, !mcsema_real_eip !12
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !12
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %49, i64* %XSP, !mcsema_real_eip !12
  %50 = call x86_64_sysvcc i64 @_atoi(i64 %_new_load_124)
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
  br label %block_0xa2, !mcsema_real_eip !14

block_0x95:                                       ; preds = %21
  store i64 20, i64* %XAX, !mcsema_real_eip !15
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !16
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !16
  %53 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !16
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.13, i32* %54, !mcsema_real_eip !16
  br label %block_0xa2, !mcsema_real_eip !17

block_0xa2:                                       ; preds = %block_0x95, %47
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !18
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !18
  %_ptr_bt_127 = bitcast i32* %56 to i8*
  %_offset_above_rbp_128 = sub i64 %55, %_local_end_to_int_
  %_pot_address_in_parent_stack_129 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_128
  %_cond1_130 = icmp ugt i8* %_ptr_bt_127, %_local_stack_end_ptr_
  %_cond2_1_131 = icmp ugt i8* %_ptr_bt_127, %_parent_stack_end_ptr_
  %_cond2_2_132 = icmp ult i8* %_ptr_bt_127, %_parent_stack_start_ptr_
  %_cond2_133 = or i1 %_cond2_1_131, %_cond2_2_132
  %_cond4_134 = icmp ule i8* %_pot_address_in_parent_stack_129, %_parent_stack_end_ptr_
  %_cond1_n_cond2_135 = and i1 %_cond1_130, %_cond2_133
  %_cond1_n_cond2_cond3_136 = and i1 %_cond1_n_cond2_135, %_cond4_134
  br i1 %_cond1_n_cond2_cond3_136, label %57, label %58

; <label>:57:                                     ; preds = %block_0xa2
  %_address_in_parent_stack_bt_138 = bitcast i8* %_pot_address_in_parent_stack_129 to i32*
  br label %58

; <label>:58:                                     ; preds = %block_0xa2, %57
  %59 = phi i32* [ %56, %block_0xa2 ], [ %_address_in_parent_stack_bt_138, %57 ]
  %_new_load_139 = load i32, i32* %59
  %60 = zext i32 %_new_load_139 to i64, !mcsema_real_eip !18
  store i64 %60, i64* %XAX, !mcsema_real_eip !18
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -20
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !19
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !19
  %61 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !19
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !19
  store i32 %EAX_val.24, i32* %62, !mcsema_real_eip !19
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -20
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %63 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !20
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !20
  %_ptr_bt_142 = bitcast i32* %64 to i8*
  %_offset_above_rbp_143 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_144 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_143
  %_cond1_145 = icmp ugt i8* %_ptr_bt_142, %_local_stack_end_ptr_
  %_cond2_1_146 = icmp ugt i8* %_ptr_bt_142, %_parent_stack_end_ptr_
  %_cond2_2_147 = icmp ult i8* %_ptr_bt_142, %_parent_stack_start_ptr_
  %_cond2_148 = or i1 %_cond2_1_146, %_cond2_2_147
  %_cond4_149 = icmp ule i8* %_pot_address_in_parent_stack_144, %_parent_stack_end_ptr_
  %_cond1_n_cond2_150 = and i1 %_cond1_145, %_cond2_148
  %_cond1_n_cond2_cond3_151 = and i1 %_cond1_n_cond2_150, %_cond4_149
  br i1 %_cond1_n_cond2_cond3_151, label %65, label %66

; <label>:65:                                     ; preds = %58
  %_address_in_parent_stack_bt_153 = bitcast i8* %_pot_address_in_parent_stack_144 to i32*
  br label %66

; <label>:66:                                     ; preds = %58, %65
  %67 = phi i32* [ %64, %58 ], [ %_address_in_parent_stack_bt_153, %65 ]
  %_new_load_154 = load i32, i32* %67
  %68 = sext i32 %_new_load_154 to i64, !mcsema_real_eip !20
  store i64 %68, i64* %XDI, !mcsema_real_eip !20
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 -8
  %69 = sub i64 %RSP_val.26, 8, !mcsema_real_eip !21
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_48, !mcsema_real_eip !21
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %69, i64* %XSP, !mcsema_real_eip !21
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_47, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_89)
  %_rsp_fix_91 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_92 = getelementptr i8, i8* %_rsp_fix_91, i64 8
  store i8* %_gep_fix_92, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %XDI, !mcsema_real_eip !22
  %RAX_val.27 = load i64, i64* %XAX, !mcsema_real_eip !23
  store i64 %RAX_val.27, i64* %XSI, !mcsema_real_eip !23
  %AL.28 = bitcast i64* %XAX to i8*, !mcsema_real_eip !24
  store i8 0, i8* %AL.28, !mcsema_real_eip !24
  %RDX_val.31 = load i64, i64* %XDX, !mcsema_real_eip !25
  %RCX_val.32 = load i64, i64* %XCX, !mcsema_real_eip !25
  %R8_val.33 = load i64, i64* %R8, !mcsema_real_eip !25
  %R9_val.34 = load i64, i64* %R9, !mcsema_real_eip !25
  %_allin_new_bt_50 = bitcast i8* %_gep_fix_92 to i64*
  %_ptr_to_int_155 = ptrtoint i64* %_allin_new_bt_50 to i64
  %_offset_above_rbp_158 = sub i64 %_ptr_to_int_155, %_local_end_to_int_
  %_pot_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_158
  %_cond1_160 = icmp ugt i8* %_gep_fix_92, %_local_stack_end_ptr_
  %_cond2_1_161 = icmp ugt i8* %_gep_fix_92, %_parent_stack_end_ptr_
  %_cond2_2_162 = icmp ult i8* %_gep_fix_92, %_parent_stack_start_ptr_
  %_cond2_163 = or i1 %_cond2_1_161, %_cond2_2_162
  %_cond4_164 = icmp ule i8* %_pot_address_in_parent_stack_159, %_parent_stack_end_ptr_
  %_cond1_n_cond2_165 = and i1 %_cond1_160, %_cond2_163
  %_cond1_n_cond2_cond3_166 = and i1 %_cond1_n_cond2_165, %_cond4_164
  br i1 %_cond1_n_cond2_cond3_166, label %70, label %71

; <label>:70:                                     ; preds = %66
  %_address_in_parent_stack_bt_168 = bitcast i8* %_pot_address_in_parent_stack_159 to i64*
  br label %71

; <label>:71:                                     ; preds = %66, %70
  %72 = phi i64* [ %_allin_new_bt_50, %66 ], [ %_address_in_parent_stack_bt_168, %70 ]
  %_new_load_169 = load i64, i64* %72
  %_new_gep_51 = getelementptr i8, i8* %_gep_fix_92, i64 8
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %_ptr_to_int_170 = ptrtoint i64* %_allin_new_bt_52 to i64
  %_offset_above_rbp_173 = sub i64 %_ptr_to_int_170, %_local_end_to_int_
  %_pot_address_in_parent_stack_174 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_173
  %_cond1_175 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_176 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_177 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_178 = or i1 %_cond2_1_176, %_cond2_2_177
  %_cond4_179 = icmp ule i8* %_pot_address_in_parent_stack_174, %_parent_stack_end_ptr_
  %_cond1_n_cond2_180 = and i1 %_cond1_175, %_cond2_178
  %_cond1_n_cond2_cond3_181 = and i1 %_cond1_n_cond2_180, %_cond4_179
  br i1 %_cond1_n_cond2_cond3_181, label %73, label %74

; <label>:73:                                     ; preds = %71
  %_address_in_parent_stack_bt_183 = bitcast i8* %_pot_address_in_parent_stack_174 to i64*
  br label %74

; <label>:74:                                     ; preds = %71, %73
  %75 = phi i64* [ %_allin_new_bt_52, %71 ], [ %_address_in_parent_stack_bt_183, %73 ]
  %_new_load_184 = load i64, i64* %75
  %_new_gep_53 = getelementptr i8, i8* %_new_gep_51, i64 8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %_ptr_to_int_185 = ptrtoint i64* %_allin_new_bt_54 to i64
  %_offset_above_rbp_188 = sub i64 %_ptr_to_int_185, %_local_end_to_int_
  %_pot_address_in_parent_stack_189 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_188
  %_cond1_190 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_191 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_192 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_193 = or i1 %_cond2_1_191, %_cond2_2_192
  %_cond4_194 = icmp ule i8* %_pot_address_in_parent_stack_189, %_parent_stack_end_ptr_
  %_cond1_n_cond2_195 = and i1 %_cond1_190, %_cond2_193
  %_cond1_n_cond2_cond3_196 = and i1 %_cond1_n_cond2_195, %_cond4_194
  br i1 %_cond1_n_cond2_cond3_196, label %76, label %77

; <label>:76:                                     ; preds = %74
  %_address_in_parent_stack_bt_198 = bitcast i8* %_pot_address_in_parent_stack_189 to i64*
  br label %77

; <label>:77:                                     ; preds = %74, %76
  %78 = phi i64* [ %_allin_new_bt_54, %74 ], [ %_address_in_parent_stack_bt_198, %76 ]
  %_new_load_199 = load i64, i64* %78
  %_new_gep_55 = getelementptr i8, i8* %_new_gep_53, i64 8
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %_ptr_to_int_200 = ptrtoint i64* %_allin_new_bt_56 to i64
  %_offset_above_rbp_203 = sub i64 %_ptr_to_int_200, %_local_end_to_int_
  %_pot_address_in_parent_stack_204 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_203
  %_cond1_205 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_206 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_207 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_208 = or i1 %_cond2_1_206, %_cond2_2_207
  %_cond4_209 = icmp ule i8* %_pot_address_in_parent_stack_204, %_parent_stack_end_ptr_
  %_cond1_n_cond2_210 = and i1 %_cond1_205, %_cond2_208
  %_cond1_n_cond2_cond3_211 = and i1 %_cond1_n_cond2_210, %_cond4_209
  br i1 %_cond1_n_cond2_cond3_211, label %79, label %80

; <label>:79:                                     ; preds = %77
  %_address_in_parent_stack_bt_213 = bitcast i8* %_pot_address_in_parent_stack_204 to i64*
  br label %80

; <label>:80:                                     ; preds = %77, %79
  %81 = phi i64* [ %_allin_new_bt_56, %77 ], [ %_address_in_parent_stack_bt_213, %79 ]
  %_new_load_214 = load i64, i64* %81
  %_new_gep_57 = getelementptr i8, i8* %_new_gep_55, i64 8
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %_ptr_to_int_215 = ptrtoint i64* %_allin_new_bt_58 to i64
  %_offset_above_rbp_218 = sub i64 %_ptr_to_int_215, %_local_end_to_int_
  %_pot_address_in_parent_stack_219 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_218
  %_cond1_220 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_221 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_222 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_223 = or i1 %_cond2_1_221, %_cond2_2_222
  %_cond4_224 = icmp ule i8* %_pot_address_in_parent_stack_219, %_parent_stack_end_ptr_
  %_cond1_n_cond2_225 = and i1 %_cond1_220, %_cond2_223
  %_cond1_n_cond2_cond3_226 = and i1 %_cond1_n_cond2_225, %_cond4_224
  br i1 %_cond1_n_cond2_cond3_226, label %82, label %83

; <label>:82:                                     ; preds = %80
  %_address_in_parent_stack_bt_228 = bitcast i8* %_pot_address_in_parent_stack_219 to i64*
  br label %83

; <label>:83:                                     ; preds = %80, %82
  %84 = phi i64* [ %_allin_new_bt_58, %80 ], [ %_address_in_parent_stack_bt_228, %82 ]
  %_new_load_229 = load i64, i64* %84
  %_new_gep_59 = getelementptr i8, i8* %_new_gep_57, i64 8
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %_ptr_to_int_230 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_233 = sub i64 %_ptr_to_int_230, %_local_end_to_int_
  %_pot_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_233
  %_cond1_235 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_236 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_237 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_238 = or i1 %_cond2_1_236, %_cond2_2_237
  %_cond4_239 = icmp ule i8* %_pot_address_in_parent_stack_234, %_parent_stack_end_ptr_
  %_cond1_n_cond2_240 = and i1 %_cond1_235, %_cond2_238
  %_cond1_n_cond2_cond3_241 = and i1 %_cond1_n_cond2_240, %_cond4_239
  br i1 %_cond1_n_cond2_cond3_241, label %85, label %86

; <label>:85:                                     ; preds = %83
  %_address_in_parent_stack_bt_243 = bitcast i8* %_pot_address_in_parent_stack_234 to i64*
  br label %86

; <label>:86:                                     ; preds = %83, %85
  %87 = phi i64* [ %_allin_new_bt_60, %83 ], [ %_address_in_parent_stack_bt_243, %85 ]
  %_new_load_244 = load i64, i64* %87
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_62 = getelementptr i8, i8* %_gep_fix_92, i64 -8
  %88 = sub i64 %RSP_val.36, 8, !mcsema_real_eip !25
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_63, !mcsema_real_eip !25
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_
  store i64 %88, i64* %XSP, !mcsema_real_eip !25
  %89 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xd2 to i64), i64 %RAX_val.27, i64 %RDX_val.31, i64 %RCX_val.32, i64 %R8_val.33, i64 %R9_val.34, i64 %_new_load_169, i64 %_new_load_184, i64 %_new_load_199, i64 %_new_load_214, i64 %_new_load_229, i64 %_new_load_244)
  %_rsp_fix_93 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_94 = getelementptr i8, i8* %_rsp_fix_93, i64 8
  store i8* %_gep_fix_94, i8** %_RSP_ptr_
  store i64 %89, i64* %XAX, !mcsema_real_eip !25
  %ECX.37 = bitcast i64* %XCX to i32*, !mcsema_real_eip !26
  %ECX_val.38 = load i32, i32* %ECX.37, !mcsema_real_eip !26
  store i1 false, i1* %CF, !mcsema_real_eip !26
  store i1 false, i1* %OF, !mcsema_real_eip !26
  store i1 false, i1* %SF, !mcsema_real_eip !26
  store i1 true, i1* %ZF, !mcsema_real_eip !26
  store i1 true, i1* %PF, !mcsema_real_eip !26
  store i1 undef, i1* %AF, !mcsema_real_eip !26
  store i64 0, i64* %XCX, !mcsema_real_eip !26
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -28
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %EAX_val.43 = load i32, i32* %EAX.23, !mcsema_real_eip !27
  %90 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !27
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !27
  store i32 %EAX_val.43, i32* %91, !mcsema_real_eip !27
  %ECX_val.45 = load i32, i32* %ECX.37, !mcsema_real_eip !28
  %92 = zext i32 %ECX_val.45 to i64, !mcsema_real_eip !28
  store i64 %92, i64* %XAX, !mcsema_real_eip !28
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_68 = getelementptr i8, i8* %_load_rsp_ptr_67, i64 32
  %93 = add i64 32, %RSP_val.46, !mcsema_real_eip !29
  %_trans_p2i_69 = ptrtoint i8* %_new_gep_68 to i64
  %_trans_p2i_70 = ptrtoint i8* %_load_rsp_ptr_67 to i64
  %_trans_xor_71 = xor i64 %_trans_p2i_69, %_trans_p2i_70
  %94 = xor i64 %_trans_xor_71, 32, !mcsema_real_eip !29
  %95 = and i64 %94, 16, !mcsema_real_eip !29
  %96 = icmp ne i64 %95, 0, !mcsema_real_eip !29
  store i1 %96, i1* %AF, !mcsema_real_eip !29
  %97 = lshr i64 %93, 63, !mcsema_real_eip !29
  %98 = trunc i64 %97 to i1, !mcsema_real_eip !29
  store i1 %98, i1* %SF, !mcsema_real_eip !29
  %_trans_icmp_eq_73 = icmp eq i64 %_trans_p2i_69, 0
  store i1 %_trans_icmp_eq_73, i1* %ZF, !mcsema_real_eip !29
  %_trans_xor_75 = xor i64 %_trans_p2i_70, 32
  %99 = xor i64 %_trans_xor_75, -1, !mcsema_real_eip !29
  %100 = and i64 %99, %_trans_xor_71, !mcsema_real_eip !29
  %101 = lshr i64 %100, 63, !mcsema_real_eip !29
  %102 = and i64 %101, 1, !mcsema_real_eip !29
  %103 = trunc i64 %102 to i1, !mcsema_real_eip !29
  store i1 %103, i1* %OF, !mcsema_real_eip !29
  %_trans_trunc_80 = trunc i64 %_trans_p2i_69 to i8
  %104 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_80), !mcsema_real_eip !29
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !29
  %106 = xor i1 %105, true, !mcsema_real_eip !29
  store i1 %106, i1* %PF, !mcsema_real_eip !29
  %_trans_icmp_ne_82 = icmp ne i64 %_trans_p2i_69, %RSP_val.46
  store i1 %_trans_icmp_ne_82, i1* %CF, !mcsema_real_eip !29
  store volatile i8* %_new_gep_68, i8** %_RSP_ptr_
  store i64 %93, i64* %XSP, !mcsema_real_eip !29
  %_allin_new_bt_84 = bitcast i8* %_new_gep_68 to i64*
  %_ptr_to_int_245 = ptrtoint i64* %_allin_new_bt_84 to i64
  %_offset_above_rbp_248 = sub i64 %_ptr_to_int_245, %_local_end_to_int_
  %_pot_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_248
  %_cond1_250 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_251 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_252 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_253 = or i1 %_cond2_1_251, %_cond2_2_252
  %_cond4_254 = icmp ule i8* %_pot_address_in_parent_stack_249, %_parent_stack_end_ptr_
  %_cond1_n_cond2_255 = and i1 %_cond1_250, %_cond2_253
  %_cond1_n_cond2_cond3_256 = and i1 %_cond1_n_cond2_255, %_cond4_254
  br i1 %_cond1_n_cond2_cond3_256, label %107, label %108

; <label>:107:                                    ; preds = %86
  %_address_in_parent_stack_bt_258 = bitcast i8* %_pot_address_in_parent_stack_249 to i64*
  br label %108

; <label>:108:                                    ; preds = %86, %107
  %109 = phi i64* [ %_allin_new_bt_84, %86 ], [ %_address_in_parent_stack_bt_258, %107 ]
  %_new_load_259 = load i64, i64* %109
  %_new_int2ptr_ = inttoptr i64 %_new_load_259 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_259, i64* %XBP, !mcsema_real_eip !30
  %_new_gep_85 = getelementptr i8, i8* %_new_gep_68, i64 8
  %110 = add i64 %93, 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_85, i8** %_RSP_ptr_
  store i64 %110, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_87 = getelementptr i8, i8* %_new_gep_85, i64 8
  %111 = add i64 %110, 8, !mcsema_real_eip !31
  %_allin_new_bt_88 = bitcast i8* %_new_gep_85 to i64*
  %_ptr_to_int_260 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_263 = sub i64 %_ptr_to_int_260, %_local_end_to_int_
  %_pot_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_263
  %_cond1_265 = icmp ugt i8* %_new_gep_85, %_local_stack_end_ptr_
  %_cond2_1_266 = icmp ugt i8* %_new_gep_85, %_parent_stack_end_ptr_
  %_cond2_2_267 = icmp ult i8* %_new_gep_85, %_parent_stack_start_ptr_
  %_cond2_268 = or i1 %_cond2_1_266, %_cond2_2_267
  %_cond4_269 = icmp ule i8* %_pot_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond1_n_cond2_270 = and i1 %_cond1_265, %_cond2_268
  %_cond1_n_cond2_cond3_271 = and i1 %_cond1_n_cond2_270, %_cond4_269
  br i1 %_cond1_n_cond2_cond3_271, label %112, label %113

; <label>:112:                                    ; preds = %108
  %_address_in_parent_stack_bt_273 = bitcast i8* %_pot_address_in_parent_stack_264 to i64*
  br label %113

; <label>:113:                                    ; preds = %108, %112
  %114 = phi i64* [ %_allin_new_bt_88, %108 ], [ %_address_in_parent_stack_bt_273, %112 ]
  %_new_load_274 = load i64, i64* %114
  store i64 %_new_load_274, i64* %XIP, !mcsema_real_eip !31
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_
  store i64 %111, i64* %XSP, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
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
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !32
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !32
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !32
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !32
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !32
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !32
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !32
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !32
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !32
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !32
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !32
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !32
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !32
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !32
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !32
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !32
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !32
  br label %block_0x0, !mcsema_real_eip !32

block_0x0:                                        ; preds = %entry
  %RSP_val.50 = load i64, i64* %XSP, !mcsema_real_eip !32
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.50, 8, !mcsema_real_eip !32
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !32
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !33
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.52 = load i64, i64* %XSP, !mcsema_real_eip !34
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.52, 32, !mcsema_real_eip !34
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !34
  %4 = and i64 %3, 16, !mcsema_real_eip !34
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !34
  store i1 %5, i1* %AF, !mcsema_real_eip !34
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !34
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !34
  %8 = xor i1 %7, true, !mcsema_real_eip !34
  store i1 %8, i1* %PF, !mcsema_real_eip !34
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !34
  %9 = lshr i64 %2, 63, !mcsema_real_eip !34
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !34
  store i1 %10, i1* %SF, !mcsema_real_eip !34
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !34
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !34
  %12 = lshr i64 %11, 63, !mcsema_real_eip !34
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !34
  store i1 %13, i1* %OF, !mcsema_real_eip !34
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !34
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.54 = load i64, i64* %XDI, !mcsema_real_eip !35
  store i64 %RDI_val.54, i64* %_allin_new_bt_15, !mcsema_real_eip !35
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_18 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_17, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_17, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_17, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %14, label %15

; <label>:14:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %15

; <label>:15:                                     ; preds = %block_0x0, %14
  %16 = phi i64* [ %_allin_new_bt_18, %block_0x0 ], [ %_address_in_parent_stack_bt_, %14 ]
  %_new_load_ = load i64, i64* %16
  %17 = sub i64 %_new_load_, 2, !mcsema_real_eip !36
  %18 = xor i64 %17, %_new_load_, !mcsema_real_eip !36
  %19 = xor i64 %18, 2, !mcsema_real_eip !36
  %20 = and i64 %19, 16, !mcsema_real_eip !36
  %21 = icmp ne i64 %20, 0, !mcsema_real_eip !36
  store i1 %21, i1* %AF, !mcsema_real_eip !36
  %22 = trunc i64 %17 to i8, !mcsema_real_eip !36
  %23 = call i8 @llvm.ctpop.i8(i8 %22), !mcsema_real_eip !36
  %24 = trunc i8 %23 to i1, !mcsema_real_eip !36
  %25 = xor i1 %24, true, !mcsema_real_eip !36
  store i1 %25, i1* %PF, !mcsema_real_eip !36
  %26 = icmp eq i64 %17, 0, !mcsema_real_eip !36
  store i1 %26, i1* %ZF, !mcsema_real_eip !36
  %27 = lshr i64 %17, 63, !mcsema_real_eip !36
  %28 = trunc i64 %27 to i1, !mcsema_real_eip !36
  store i1 %28, i1* %SF, !mcsema_real_eip !36
  %29 = icmp ult i64 %_new_load_, 2, !mcsema_real_eip !36
  store i1 %29, i1* %CF, !mcsema_real_eip !36
  %30 = xor i64 %_new_load_, 2, !mcsema_real_eip !36
  %31 = and i64 %30, %18, !mcsema_real_eip !36
  %32 = lshr i64 %31, 63, !mcsema_real_eip !36
  %33 = trunc i64 %32 to i1, !mcsema_real_eip !36
  store i1 %33, i1* %OF, !mcsema_real_eip !36
  %34 = icmp eq i1 %29, false, !mcsema_real_eip !37
  br i1 %34, label %block_0x24, label %block_0x17, !mcsema_real_eip !37

block_0x17:                                       ; preds = %15
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 1, i64* %_allin_new_bt_21, !mcsema_real_eip !38
  br label %block_0x50, !mcsema_real_eip !39

block_0x24:                                       ; preds = %15
  br i1 %_cond1_n_cond2_cond3_, label %35, label %36

; <label>:35:                                     ; preds = %block_0x24
  %_address_in_parent_stack_bt_87 = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %36

; <label>:36:                                     ; preds = %block_0x24, %35
  %37 = phi i64* [ %_allin_new_bt_18, %block_0x24 ], [ %_address_in_parent_stack_bt_87, %35 ]
  %_new_load_88 = load i64, i64* %37
  store i64 %_new_load_88, i64* %XAX, !mcsema_real_eip !40
  %38 = sub i64 %_new_load_88, 2, !mcsema_real_eip !41
  %39 = xor i64 %38, %_new_load_88, !mcsema_real_eip !41
  %40 = xor i64 %39, 2, !mcsema_real_eip !41
  %41 = and i64 %40, 16, !mcsema_real_eip !41
  %42 = icmp ne i64 %41, 0, !mcsema_real_eip !41
  store i1 %42, i1* %AF, !mcsema_real_eip !41
  %43 = trunc i64 %38 to i8, !mcsema_real_eip !41
  %44 = call i8 @llvm.ctpop.i8(i8 %43), !mcsema_real_eip !41
  %45 = trunc i8 %44 to i1, !mcsema_real_eip !41
  %46 = xor i1 %45, true, !mcsema_real_eip !41
  store i1 %46, i1* %PF, !mcsema_real_eip !41
  %47 = icmp eq i64 %38, 0, !mcsema_real_eip !41
  store i1 %47, i1* %ZF, !mcsema_real_eip !41
  %48 = lshr i64 %38, 63, !mcsema_real_eip !41
  %49 = trunc i64 %48 to i1, !mcsema_real_eip !41
  store i1 %49, i1* %SF, !mcsema_real_eip !41
  %50 = icmp ult i64 %_new_load_88, 2, !mcsema_real_eip !41
  store i1 %50, i1* %CF, !mcsema_real_eip !41
  %51 = xor i64 %_new_load_88, 2, !mcsema_real_eip !41
  %52 = and i64 %51, %39, !mcsema_real_eip !41
  %53 = lshr i64 %52, 63, !mcsema_real_eip !41
  %54 = trunc i64 %53 to i1, !mcsema_real_eip !41
  store i1 %54, i1* %OF, !mcsema_real_eip !41
  store i64 %38, i64* %XAX, !mcsema_real_eip !41
  store i64 %38, i64* %XDI, !mcsema_real_eip !42
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !43
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %55 = sub i64 %RSP_val.59, 8, !mcsema_real_eip !43
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_27, !mcsema_real_eip !43
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %55, i64* %XSP, !mcsema_real_eip !43
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_26, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_68)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -16
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
  br i1 %_cond1_n_cond2_cond3_100, label %56, label %57

; <label>:56:                                     ; preds = %36
  %_address_in_parent_stack_bt_102 = bitcast i8* %_pot_address_in_parent_stack_93 to i64*
  br label %57

; <label>:57:                                     ; preds = %36, %56
  %58 = phi i64* [ %_allin_new_bt_30, %36 ], [ %_address_in_parent_stack_bt_102, %56 ]
  %_new_load_103 = load i64, i64* %58
  store i64 %_new_load_103, i64* %XDI, !mcsema_real_eip !44
  %59 = sub i64 %_new_load_103, 1, !mcsema_real_eip !45
  %60 = xor i64 %59, %_new_load_103, !mcsema_real_eip !45
  %61 = xor i64 %60, 1, !mcsema_real_eip !45
  %62 = and i64 %61, 16, !mcsema_real_eip !45
  %63 = icmp ne i64 %62, 0, !mcsema_real_eip !45
  store i1 %63, i1* %AF, !mcsema_real_eip !45
  %64 = trunc i64 %59 to i8, !mcsema_real_eip !45
  %65 = call i8 @llvm.ctpop.i8(i8 %64), !mcsema_real_eip !45
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !45
  %67 = xor i1 %66, true, !mcsema_real_eip !45
  store i1 %67, i1* %PF, !mcsema_real_eip !45
  %68 = icmp eq i64 %59, 0, !mcsema_real_eip !45
  store i1 %68, i1* %ZF, !mcsema_real_eip !45
  %69 = lshr i64 %59, 63, !mcsema_real_eip !45
  %70 = trunc i64 %69 to i1, !mcsema_real_eip !45
  store i1 %70, i1* %SF, !mcsema_real_eip !45
  %71 = icmp ult i64 %_new_load_103, 1, !mcsema_real_eip !45
  store i1 %71, i1* %CF, !mcsema_real_eip !45
  %72 = xor i64 %_new_load_103, 1, !mcsema_real_eip !45
  %73 = and i64 %72, %60, !mcsema_real_eip !45
  %74 = lshr i64 %73, 63, !mcsema_real_eip !45
  %75 = trunc i64 %74 to i1, !mcsema_real_eip !45
  store i1 %75, i1* %OF, !mcsema_real_eip !45
  store i64 %59, i64* %XDI, !mcsema_real_eip !45
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %RAX_val.63 = load i64, i64* %XAX, !mcsema_real_eip !46
  store i64 %RAX_val.63, i64* %_allin_new_bt_33, !mcsema_real_eip !46
  %_load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !47
  %_new_gep_35 = getelementptr i8, i8* %_load_rsp_ptr_34, i64 -8
  %76 = sub i64 %RSP_val.64, 8, !mcsema_real_eip !47
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_36, !mcsema_real_eip !47
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_
  store i64 %76, i64* %XSP, !mcsema_real_eip !47
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_35, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_70)
  %_rsp_fix_72 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_73 = getelementptr i8, i8* %_rsp_fix_72, i64 8
  store i8* %_gep_fix_73, i8** %_RSP_ptr_
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_104 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_107 = sub i64 %_ptr_to_int_104, %_local_end_to_int_
  %_pot_address_in_parent_stack_108 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_107
  %_cond1_109 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_110 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_111 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_112 = or i1 %_cond2_1_110, %_cond2_2_111
  %_cond4_113 = icmp ule i8* %_pot_address_in_parent_stack_108, %_parent_stack_end_ptr_
  %_cond1_n_cond2_114 = and i1 %_cond1_109, %_cond2_112
  %_cond1_n_cond2_cond3_115 = and i1 %_cond1_n_cond2_114, %_cond4_113
  br i1 %_cond1_n_cond2_cond3_115, label %77, label %78

; <label>:77:                                     ; preds = %57
  %_address_in_parent_stack_bt_117 = bitcast i8* %_pot_address_in_parent_stack_108 to i64*
  br label %78

; <label>:78:                                     ; preds = %57, %77
  %79 = phi i64* [ %_allin_new_bt_39, %57 ], [ %_address_in_parent_stack_bt_117, %77 ]
  %_new_load_118 = load i64, i64* %79
  store i64 %_new_load_118, i64* %XDI, !mcsema_real_eip !48
  %RAX_val.67 = load i64, i64* %XAX, !mcsema_real_eip !49
  %80 = add i64 %RAX_val.67, %_new_load_118, !mcsema_real_eip !49
  %81 = xor i64 %80, %_new_load_118, !mcsema_real_eip !49
  %82 = xor i64 %81, %RAX_val.67, !mcsema_real_eip !49
  %83 = and i64 %82, 16, !mcsema_real_eip !49
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !49
  store i1 %84, i1* %AF, !mcsema_real_eip !49
  %85 = lshr i64 %80, 63, !mcsema_real_eip !49
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !49
  store i1 %86, i1* %SF, !mcsema_real_eip !49
  %87 = icmp eq i64 %80, 0, !mcsema_real_eip !49
  store i1 %87, i1* %ZF, !mcsema_real_eip !49
  %88 = xor i64 %_new_load_118, %RAX_val.67, !mcsema_real_eip !49
  %89 = xor i64 %88, -1, !mcsema_real_eip !49
  %90 = and i64 %89, %81, !mcsema_real_eip !49
  %91 = lshr i64 %90, 63, !mcsema_real_eip !49
  %92 = and i64 %91, 1, !mcsema_real_eip !49
  %93 = trunc i64 %92 to i1, !mcsema_real_eip !49
  store i1 %93, i1* %OF, !mcsema_real_eip !49
  %94 = trunc i64 %80 to i8, !mcsema_real_eip !49
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !49
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !49
  %97 = xor i1 %96, true, !mcsema_real_eip !49
  store i1 %97, i1* %PF, !mcsema_real_eip !49
  %98 = icmp ult i64 %80, %_new_load_118, !mcsema_real_eip !49
  store i1 %98, i1* %CF, !mcsema_real_eip !49
  store i64 %80, i64* %XDI, !mcsema_real_eip !49
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 %80, i64* %_allin_new_bt_42, !mcsema_real_eip !50
  br label %block_0x50, !mcsema_real_eip !38

block_0x50:                                       ; preds = %78, %block_0x17
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -8
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_119 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_122 = sub i64 %_ptr_to_int_119, %_local_end_to_int_
  %_pot_address_in_parent_stack_123 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_122
  %_cond1_124 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_125 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_126 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_127 = or i1 %_cond2_1_125, %_cond2_2_126
  %_cond4_128 = icmp ule i8* %_pot_address_in_parent_stack_123, %_parent_stack_end_ptr_
  %_cond1_n_cond2_129 = and i1 %_cond1_124, %_cond2_127
  %_cond1_n_cond2_cond3_130 = and i1 %_cond1_n_cond2_129, %_cond4_128
  br i1 %_cond1_n_cond2_cond3_130, label %99, label %100

; <label>:99:                                     ; preds = %block_0x50
  %_address_in_parent_stack_bt_132 = bitcast i8* %_pot_address_in_parent_stack_123 to i64*
  br label %100

; <label>:100:                                    ; preds = %block_0x50, %99
  %101 = phi i64* [ %_allin_new_bt_45, %block_0x50 ], [ %_address_in_parent_stack_bt_132, %99 ]
  %_new_load_133 = load i64, i64* %101
  store i64 %_new_load_133, i64* %XAX, !mcsema_real_eip !51
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !52
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 32
  %102 = add i64 32, %RSP_val.72, !mcsema_real_eip !52
  %_trans_p2i_48 = ptrtoint i8* %_new_gep_47 to i64
  %_trans_p2i_49 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  %_trans_xor_50 = xor i64 %_trans_p2i_48, %_trans_p2i_49
  %103 = xor i64 %_trans_xor_50, 32, !mcsema_real_eip !52
  %104 = and i64 %103, 16, !mcsema_real_eip !52
  %105 = icmp ne i64 %104, 0, !mcsema_real_eip !52
  store i1 %105, i1* %AF, !mcsema_real_eip !52
  %106 = lshr i64 %102, 63, !mcsema_real_eip !52
  %107 = trunc i64 %106 to i1, !mcsema_real_eip !52
  store i1 %107, i1* %SF, !mcsema_real_eip !52
  %_trans_icmp_eq_52 = icmp eq i64 %_trans_p2i_48, 0
  store i1 %_trans_icmp_eq_52, i1* %ZF, !mcsema_real_eip !52
  %_trans_xor_54 = xor i64 %_trans_p2i_49, 32
  %108 = xor i64 %_trans_xor_54, -1, !mcsema_real_eip !52
  %109 = and i64 %108, %_trans_xor_50, !mcsema_real_eip !52
  %110 = lshr i64 %109, 63, !mcsema_real_eip !52
  %111 = and i64 %110, 1, !mcsema_real_eip !52
  %112 = trunc i64 %111 to i1, !mcsema_real_eip !52
  store i1 %112, i1* %OF, !mcsema_real_eip !52
  %_trans_trunc_59 = trunc i64 %_trans_p2i_48 to i8
  %113 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_59), !mcsema_real_eip !52
  %114 = trunc i8 %113 to i1, !mcsema_real_eip !52
  %115 = xor i1 %114, true, !mcsema_real_eip !52
  store i1 %115, i1* %PF, !mcsema_real_eip !52
  %_trans_icmp_ne_61 = icmp ne i64 %_trans_p2i_48, %RSP_val.72
  store i1 %_trans_icmp_ne_61, i1* %CF, !mcsema_real_eip !52
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %102, i64* %XSP, !mcsema_real_eip !52
  %_allin_new_bt_63 = bitcast i8* %_new_gep_47 to i64*
  %_ptr_to_int_134 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_137 = sub i64 %_ptr_to_int_134, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  br i1 %_cond1_n_cond2_cond3_145, label %116, label %117

; <label>:116:                                    ; preds = %100
  %_address_in_parent_stack_bt_147 = bitcast i8* %_pot_address_in_parent_stack_138 to i64*
  br label %117

; <label>:117:                                    ; preds = %100, %116
  %118 = phi i64* [ %_allin_new_bt_63, %100 ], [ %_address_in_parent_stack_bt_147, %116 ]
  %_new_load_148 = load i64, i64* %118
  %_new_int2ptr_ = inttoptr i64 %_new_load_148 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_148, i64* %XBP, !mcsema_real_eip !53
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_47, i64 8
  %119 = add i64 %102, 8, !mcsema_real_eip !53
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_
  store i64 %119, i64* %XSP, !mcsema_real_eip !53
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %120 = add i64 %119, 8, !mcsema_real_eip !54
  %_allin_new_bt_67 = bitcast i8* %_new_gep_64 to i64*
  %_ptr_to_int_149 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_152 = sub i64 %_ptr_to_int_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  br i1 %_cond1_n_cond2_cond3_160, label %121, label %122

; <label>:121:                                    ; preds = %117
  %_address_in_parent_stack_bt_162 = bitcast i8* %_pot_address_in_parent_stack_153 to i64*
  br label %122

; <label>:122:                                    ; preds = %117, %121
  %123 = phi i64* [ %_allin_new_bt_67, %117 ], [ %_address_in_parent_stack_bt_162, %121 ]
  %_new_load_163 = load i64, i64* %123
  store i64 %_new_load_163, i64* %XIP, !mcsema_real_eip !54
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_
  store i64 %120, i64* %XSP, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54
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
!5 = !{i64 104}
!6 = !{i64 111}
!7 = !{i64 114}
!8 = !{i64 118}
!9 = !{i64 122}
!10 = !{i64 128}
!11 = !{i64 132}
!12 = !{i64 136}
!13 = !{i64 141}
!14 = !{i64 144}
!15 = !{i64 149}
!16 = !{i64 154}
!17 = !{i64 157}
!18 = !{i64 162}
!19 = !{i64 165}
!20 = !{i64 168}
!21 = !{i64 172}
!22 = !{i64 177}
!23 = !{i64 187}
!24 = !{i64 190}
!25 = !{i64 192}
!26 = !{i64 197}
!27 = !{i64 199}
!28 = !{i64 202}
!29 = !{i64 204}
!30 = !{i64 208}
!31 = !{i64 209}
!32 = !{i64 0}
!33 = !{i64 1}
!34 = !{i64 4}
!35 = !{i64 8}
!36 = !{i64 12}
!37 = !{i64 17}
!38 = !{i64 23}
!39 = !{i64 31}
!40 = !{i64 36}
!41 = !{i64 40}
!42 = !{i64 44}
!43 = !{i64 47}
!44 = !{i64 52}
!45 = !{i64 56}
!46 = !{i64 60}
!47 = !{i64 64}
!48 = !{i64 69}
!49 = !{i64 73}
!50 = !{i64 76}
!51 = !{i64 80}
!52 = !{i64 84}
!53 = !{i64 88}
!54 = !{i64 89}
