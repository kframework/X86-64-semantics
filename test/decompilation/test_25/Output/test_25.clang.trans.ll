; ModuleID = 'Output/test_25.clang.trans.bc'
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
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xa4 = internal constant %0 <{ [14 x i8] c"I am: %s\0A\00%d\0A\00" }>, align 64
@data_0xb8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\A4\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
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
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -20
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %19, !mcsema_real_eip !8
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %20 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !9
  store i64 %20, i64* %XSI, !mcsema_real_eip !9
  %21 = add i64 %20, 8, !mcsema_real_eip !10
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !10
  %23 = load i64, i64* %22, !mcsema_real_eip !10
  store i64 %23, i64* %XDI, !mcsema_real_eip !10
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %24 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !11
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %24, i64* %XSP, !mcsema_real_eip !11
  %25 = call x86_64_sysvcc i64 @_strlen(i64 %23)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %25, i64* %XAX, !mcsema_real_eip !11
  %EAX.15 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.16 = load i32, i32* %EAX.15, !mcsema_real_eip !12
  %26 = zext i32 %EAX_val.16 to i64, !mcsema_real_eip !12
  store i64 %26, i64* %XCX, !mcsema_real_eip !12
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %ECX.18 = bitcast i64* %XCX to i32*, !mcsema_real_eip !13
  %ECX_val.19 = load i32, i32* %ECX.18, !mcsema_real_eip !13
  %27 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !13
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !13
  store i32 %ECX_val.19, i32* %28, !mcsema_real_eip !13
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -28
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %29 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !14
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %30, !mcsema_real_eip !14
  br label %block_0x36, !mcsema_real_eip !15

block_0x36:                                       ; preds = %block_0x42, %block_0x0
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -28
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %31 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !15
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !15
  %33 = load i32, i32* %32, !mcsema_real_eip !15
  %34 = zext i32 %33 to i64, !mcsema_real_eip !15
  store i64 %34, i64* %XAX, !mcsema_real_eip !15
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX_val.24 = load i32, i32* %EAX.15, !mcsema_real_eip !16
  %35 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !16
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !16
  %37 = load i32, i32* %36, !mcsema_real_eip !16
  %38 = sub i32 %EAX_val.24, %37, !mcsema_real_eip !16
  %39 = xor i32 %38, %EAX_val.24, !mcsema_real_eip !16
  %40 = xor i32 %39, %37, !mcsema_real_eip !16
  %41 = and i32 %40, 16, !mcsema_real_eip !16
  %42 = icmp ne i32 %41, 0, !mcsema_real_eip !16
  store i1 %42, i1* %AF, !mcsema_real_eip !16
  %43 = trunc i32 %38 to i8, !mcsema_real_eip !16
  %44 = call i8 @llvm.ctpop.i8(i8 %43), !mcsema_real_eip !16
  %45 = trunc i8 %44 to i1, !mcsema_real_eip !16
  %46 = xor i1 %45, true, !mcsema_real_eip !16
  store i1 %46, i1* %PF, !mcsema_real_eip !16
  %47 = icmp eq i32 %38, 0, !mcsema_real_eip !16
  store i1 %47, i1* %ZF, !mcsema_real_eip !16
  %48 = lshr i32 %38, 31, !mcsema_real_eip !16
  %49 = trunc i32 %48 to i1, !mcsema_real_eip !16
  store i1 %49, i1* %SF, !mcsema_real_eip !16
  %50 = icmp ult i32 %EAX_val.24, %37, !mcsema_real_eip !16
  store i1 %50, i1* %CF, !mcsema_real_eip !16
  %51 = xor i32 %EAX_val.24, %37, !mcsema_real_eip !16
  %52 = and i32 %51, %39, !mcsema_real_eip !16
  %53 = lshr i32 %52, 31, !mcsema_real_eip !16
  %54 = trunc i32 %53 to i1, !mcsema_real_eip !16
  store i1 %54, i1* %OF, !mcsema_real_eip !16
  %55 = icmp eq i1 %49, %54, !mcsema_real_eip !17
  br i1 %55, label %block_0x82, label %block_0x42, !mcsema_real_eip !17

block_0x42:                                       ; preds = %block_0x36
  store i64 ptrtoint (%0* @data_0xa4 to i64), i64* %XDI, !mcsema_real_eip !18
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -16
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %56 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !19
  store i64 %56, i64* %XAX, !mcsema_real_eip !19
  %57 = add i64 %56, 8, !mcsema_real_eip !20
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !20
  %59 = load i64, i64* %58, !mcsema_real_eip !20
  store i64 %59, i64* %XSI, !mcsema_real_eip !20
  %AL.27 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.27, !mcsema_real_eip !21
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 -8
  %60 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !22
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_48, !mcsema_real_eip !22
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %60, i64* %XSP, !mcsema_real_eip !22
  %61 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xa4 to i64), i64 %59)
  %_rsp_fix_104 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_105 = getelementptr i8, i8* %_rsp_fix_104, i64 8
  store i8* %_gep_fix_105, i8** %_RSP_ptr_
  store i64 %61, i64* %XAX, !mcsema_real_eip !22
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %62 = load i64, i64* %_allin_new_bt_51, !mcsema_real_eip !23
  store i64 %62, i64* %XSI, !mcsema_real_eip !23
  %63 = add i64 %62, 8, !mcsema_real_eip !24
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !24
  %65 = load i64, i64* %64, !mcsema_real_eip !24
  store i64 %65, i64* %XSI, !mcsema_real_eip !24
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -28
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %66 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !25
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !25
  %68 = load i32, i32* %67, !mcsema_real_eip !25
  %69 = sext i32 %68 to i64, !mcsema_real_eip !25
  store i64 %69, i64* %XDI, !mcsema_real_eip !25
  %70 = add i64 %65, %69, !mcsema_real_eip !26
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !26
  %72 = inttoptr i64 %70 to i8*, !mcsema_real_eip !26
  %73 = load i8, i8* %72, !mcsema_real_eip !26
  %74 = sext i8 %73 to i32, !mcsema_real_eip !26
  %75 = zext i32 %74 to i64, !mcsema_real_eip !26
  store i64 %75, i64* %XCX, !mcsema_real_eip !26
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -20
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %76 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !27
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !27
  %78 = load i32, i32* %77, !mcsema_real_eip !27
  %ECX_val.38 = load i32, i32* %ECX.18, !mcsema_real_eip !27
  %79 = add i32 %ECX_val.38, %78, !mcsema_real_eip !27
  %80 = xor i32 %79, %78, !mcsema_real_eip !27
  %81 = xor i32 %80, %ECX_val.38, !mcsema_real_eip !27
  %82 = and i32 %81, 16, !mcsema_real_eip !27
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !27
  store i1 %83, i1* %AF, !mcsema_real_eip !27
  %84 = lshr i32 %79, 31, !mcsema_real_eip !27
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !27
  store i1 %85, i1* %SF, !mcsema_real_eip !27
  %86 = icmp eq i32 %79, 0, !mcsema_real_eip !27
  store i1 %86, i1* %ZF, !mcsema_real_eip !27
  %87 = xor i32 %78, %ECX_val.38, !mcsema_real_eip !27
  %88 = xor i32 %87, -1, !mcsema_real_eip !27
  %89 = and i32 %88, %80, !mcsema_real_eip !27
  %90 = lshr i32 %89, 31, !mcsema_real_eip !27
  %91 = and i32 %90, 1, !mcsema_real_eip !27
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !27
  store i1 %92, i1* %OF, !mcsema_real_eip !27
  %93 = trunc i32 %79 to i8, !mcsema_real_eip !27
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !27
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !27
  %96 = xor i1 %95, true, !mcsema_real_eip !27
  store i1 %96, i1* %PF, !mcsema_real_eip !27
  %97 = icmp ult i32 %79, %78, !mcsema_real_eip !27
  store i1 %97, i1* %CF, !mcsema_real_eip !27
  %98 = zext i32 %79 to i64, !mcsema_real_eip !27
  store i64 %98, i64* %XCX, !mcsema_real_eip !27
  %ECX_val.41 = load i32, i32* %ECX.18, !mcsema_real_eip !28
  store i32 %ECX_val.41, i32* %77, !mcsema_real_eip !28
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -32
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %EAX_val.44 = load i32, i32* %EAX.15, !mcsema_real_eip !29
  %99 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !29
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !29
  store i32 %EAX_val.44, i32* %100, !mcsema_real_eip !29
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -28
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %101 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !30
  %102 = inttoptr i64 %101 to i32*, !mcsema_real_eip !30
  %103 = load i32, i32* %102, !mcsema_real_eip !30
  %104 = zext i32 %103 to i64, !mcsema_real_eip !30
  store i64 %104, i64* %XAX, !mcsema_real_eip !30
  %EAX_val.47 = load i32, i32* %EAX.15, !mcsema_real_eip !31
  %105 = add i32 1, %EAX_val.47, !mcsema_real_eip !31
  %106 = xor i32 %105, %EAX_val.47, !mcsema_real_eip !31
  %107 = xor i32 %106, 1, !mcsema_real_eip !31
  %108 = and i32 %107, 16, !mcsema_real_eip !31
  %109 = icmp ne i32 %108, 0, !mcsema_real_eip !31
  store i1 %109, i1* %AF, !mcsema_real_eip !31
  %110 = lshr i32 %105, 31, !mcsema_real_eip !31
  %111 = trunc i32 %110 to i1, !mcsema_real_eip !31
  store i1 %111, i1* %SF, !mcsema_real_eip !31
  %112 = icmp eq i32 %105, 0, !mcsema_real_eip !31
  store i1 %112, i1* %ZF, !mcsema_real_eip !31
  %113 = xor i32 %EAX_val.47, 1, !mcsema_real_eip !31
  %114 = xor i32 %113, -1, !mcsema_real_eip !31
  %115 = and i32 %114, %106, !mcsema_real_eip !31
  %116 = lshr i32 %115, 31, !mcsema_real_eip !31
  %117 = and i32 %116, 1, !mcsema_real_eip !31
  %118 = trunc i32 %117 to i1, !mcsema_real_eip !31
  store i1 %118, i1* %OF, !mcsema_real_eip !31
  %119 = trunc i32 %105 to i8, !mcsema_real_eip !31
  %120 = call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !31
  %121 = trunc i8 %120 to i1, !mcsema_real_eip !31
  %122 = xor i1 %121, true, !mcsema_real_eip !31
  store i1 %122, i1* %PF, !mcsema_real_eip !31
  %123 = icmp ult i32 %105, %EAX_val.47, !mcsema_real_eip !31
  store i1 %123, i1* %CF, !mcsema_real_eip !31
  %124 = zext i32 %105 to i64, !mcsema_real_eip !31
  store i64 %124, i64* %XAX, !mcsema_real_eip !31
  %EAX_val.50 = load i32, i32* %EAX.15, !mcsema_real_eip !32
  store i32 %EAX_val.50, i32* %102, !mcsema_real_eip !32
  br label %block_0x36, !mcsema_real_eip !33

block_0x82:                                       ; preds = %block_0x36
  store i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64* %XDI, !mcsema_real_eip !34
  %125 = load i32, i32* %36, !mcsema_real_eip !35
  %126 = zext i32 %125 to i64, !mcsema_real_eip !35
  store i64 %126, i64* %XSI, !mcsema_real_eip !35
  %AL.52 = bitcast i64* %XAX to i8*, !mcsema_real_eip !36
  store i8 0, i8* %AL.52, !mcsema_real_eip !36
  %_load_rsp_ptr_73 = load i8*, i8** %_RSP_ptr_
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !37
  %_new_gep_74 = getelementptr i8, i8* %_load_rsp_ptr_73, i64 -8
  %127 = sub i64 %RSP_val.55, 8, !mcsema_real_eip !37
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_75, !mcsema_real_eip !37
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_
  store i64 %127, i64* %XSP, !mcsema_real_eip !37
  %128 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64 %126)
  %_rsp_fix_106 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_107 = getelementptr i8, i8* %_rsp_fix_106, i64 8
  store i8* %_gep_fix_107, i8** %_RSP_ptr_
  store i64 %128, i64* %XAX, !mcsema_real_eip !37
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -24
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %129 = ptrtoint i64* %_allin_new_bt_78 to i64, !mcsema_real_eip !38
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !38
  %131 = load i32, i32* %130, !mcsema_real_eip !38
  %132 = zext i32 %131 to i64, !mcsema_real_eip !38
  store i64 %132, i64* %XSI, !mcsema_real_eip !38
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -36
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %EAX_val.59 = load i32, i32* %EAX.15, !mcsema_real_eip !39
  %133 = ptrtoint i64* %_allin_new_bt_81 to i64, !mcsema_real_eip !39
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !39
  store i32 %EAX_val.59, i32* %134, !mcsema_real_eip !39
  %ESI.60 = bitcast i64* %XSI to i32*, !mcsema_real_eip !40
  %ESI_val.61 = load i32, i32* %ESI.60, !mcsema_real_eip !40
  %135 = zext i32 %ESI_val.61 to i64, !mcsema_real_eip !40
  store i64 %135, i64* %XAX, !mcsema_real_eip !40
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !41
  %_new_gep_83 = getelementptr i8, i8* %_load_rsp_ptr_82, i64 48
  %136 = add i64 48, %RSP_val.62, !mcsema_real_eip !41
  %_trans_p2i_84 = ptrtoint i8* %_new_gep_83 to i64
  %_trans_p2i_85 = ptrtoint i8* %_load_rsp_ptr_82 to i64
  %_trans_xor_86 = xor i64 %_trans_p2i_84, %_trans_p2i_85
  %137 = xor i64 %_trans_xor_86, 48, !mcsema_real_eip !41
  %138 = and i64 %137, 16, !mcsema_real_eip !41
  %139 = icmp ne i64 %138, 0, !mcsema_real_eip !41
  store i1 %139, i1* %AF, !mcsema_real_eip !41
  %140 = lshr i64 %136, 63, !mcsema_real_eip !41
  %141 = trunc i64 %140 to i1, !mcsema_real_eip !41
  store i1 %141, i1* %SF, !mcsema_real_eip !41
  %_trans_icmp_eq_88 = icmp eq i64 %_trans_p2i_84, 0
  store i1 %_trans_icmp_eq_88, i1* %ZF, !mcsema_real_eip !41
  %_trans_xor_90 = xor i64 %_trans_p2i_85, 48
  %142 = xor i64 %_trans_xor_90, -1, !mcsema_real_eip !41
  %143 = and i64 %142, %_trans_xor_86, !mcsema_real_eip !41
  %144 = lshr i64 %143, 63, !mcsema_real_eip !41
  %145 = and i64 %144, 1, !mcsema_real_eip !41
  %146 = trunc i64 %145 to i1, !mcsema_real_eip !41
  store i1 %146, i1* %OF, !mcsema_real_eip !41
  %_trans_trunc_95 = trunc i64 %_trans_p2i_84 to i8
  %147 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_95), !mcsema_real_eip !41
  %148 = trunc i8 %147 to i1, !mcsema_real_eip !41
  %149 = xor i1 %148, true, !mcsema_real_eip !41
  store i1 %149, i1* %PF, !mcsema_real_eip !41
  %_trans_icmp_ne_97 = icmp ne i64 %_trans_p2i_84, %RSP_val.62
  store i1 %_trans_icmp_ne_97, i1* %CF, !mcsema_real_eip !41
  store volatile i8* %_new_gep_83, i8** %_RSP_ptr_
  store i64 %136, i64* %XSP, !mcsema_real_eip !41
  %_allin_new_bt_99 = bitcast i8* %_new_gep_83 to i64*
  %150 = load i64, i64* %_allin_new_bt_99, !mcsema_real_eip !42
  %_new_int2ptr_ = inttoptr i64 %150 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %150, i64* %XBP, !mcsema_real_eip !42
  %_new_gep_100 = getelementptr i8, i8* %_new_gep_83, i64 8
  %151 = add i64 %136, 8, !mcsema_real_eip !42
  store volatile i8* %_new_gep_100, i8** %_RSP_ptr_
  store i64 %151, i64* %XSP, !mcsema_real_eip !42
  %_new_gep_102 = getelementptr i8, i8* %_new_gep_100, i64 8
  %152 = add i64 %151, 8, !mcsema_real_eip !43
  %_allin_new_bt_103 = bitcast i8* %_new_gep_100 to i64*
  %153 = load i64, i64* %_allin_new_bt_103, !mcsema_real_eip !43
  store i64 %153, i64* %XIP, !mcsema_real_eip !43
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_
  store i64 %152, i64* %XSP, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
}

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
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
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -20
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  store i32 0, i32* %19, !mcsema_real_eip !8
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_27 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %21

; <label>:21:                                     ; preds = %block_0x0, %20
  %22 = phi i64* [ %_allin_new_bt_27, %block_0x0 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i64, i64* %22
  store i64 %_new_load_, i64* %XSI, !mcsema_real_eip !9
  %23 = add i64 %_new_load_, 8, !mcsema_real_eip !10
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !10
  %_ptr_bt_110 = bitcast i64* %24 to i8*
  %_offset_above_rbp_111 = sub i64 %23, %_local_end_to_int_
  %_pot_address_in_parent_stack_112 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_111
  %_cond1_113 = icmp ugt i8* %_ptr_bt_110, %_local_stack_end_ptr_
  %_cond2_1_114 = icmp ugt i8* %_ptr_bt_110, %_parent_stack_end_ptr_
  %_cond2_2_115 = icmp ult i8* %_ptr_bt_110, %_parent_stack_start_ptr_
  %_cond2_116 = or i1 %_cond2_1_114, %_cond2_2_115
  %_cond4_117 = icmp ule i8* %_pot_address_in_parent_stack_112, %_parent_stack_end_ptr_
  %_cond1_n_cond2_118 = and i1 %_cond1_113, %_cond2_116
  %_cond1_n_cond2_cond3_119 = and i1 %_cond1_n_cond2_118, %_cond4_117
  br i1 %_cond1_n_cond2_cond3_119, label %25, label %26

; <label>:25:                                     ; preds = %21
  %_address_in_parent_stack_bt_121 = bitcast i8* %_pot_address_in_parent_stack_112 to i64*
  br label %26

; <label>:26:                                     ; preds = %21, %25
  %27 = phi i64* [ %24, %21 ], [ %_address_in_parent_stack_bt_121, %25 ]
  %_new_load_122 = load i64, i64* %27
  store i64 %_new_load_122, i64* %XDI, !mcsema_real_eip !10
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %28 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !11
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %28, i64* %XSP, !mcsema_real_eip !11
  %29 = call x86_64_sysvcc i64 @_strlen(i64 %_new_load_122)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %29, i64* %XAX, !mcsema_real_eip !11
  %EAX.15 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.16 = load i32, i32* %EAX.15, !mcsema_real_eip !12
  %30 = zext i32 %EAX_val.16 to i64, !mcsema_real_eip !12
  store i64 %30, i64* %XCX, !mcsema_real_eip !12
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %ECX.18 = bitcast i64* %XCX to i32*, !mcsema_real_eip !13
  %ECX_val.19 = load i32, i32* %ECX.18, !mcsema_real_eip !13
  %31 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !13
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !13
  store i32 %ECX_val.19, i32* %32, !mcsema_real_eip !13
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -28
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %33 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !14
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !14
  store i32 0, i32* %34, !mcsema_real_eip !14
  br label %block_0x36, !mcsema_real_eip !15

block_0x36:                                       ; preds = %126, %26
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -28
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %35 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !15
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !15
  %_ptr_bt_125 = bitcast i32* %36 to i8*
  %_offset_above_rbp_126 = sub i64 %35, %_local_end_to_int_
  %_pot_address_in_parent_stack_127 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_126
  %_cond1_128 = icmp ugt i8* %_ptr_bt_125, %_local_stack_end_ptr_
  %_cond2_1_129 = icmp ugt i8* %_ptr_bt_125, %_parent_stack_end_ptr_
  %_cond2_2_130 = icmp ult i8* %_ptr_bt_125, %_parent_stack_start_ptr_
  %_cond2_131 = or i1 %_cond2_1_129, %_cond2_2_130
  %_cond4_132 = icmp ule i8* %_pot_address_in_parent_stack_127, %_parent_stack_end_ptr_
  %_cond1_n_cond2_133 = and i1 %_cond1_128, %_cond2_131
  %_cond1_n_cond2_cond3_134 = and i1 %_cond1_n_cond2_133, %_cond4_132
  br i1 %_cond1_n_cond2_cond3_134, label %37, label %38

; <label>:37:                                     ; preds = %block_0x36
  %_address_in_parent_stack_bt_136 = bitcast i8* %_pot_address_in_parent_stack_127 to i32*
  br label %38

; <label>:38:                                     ; preds = %block_0x36, %37
  %39 = phi i32* [ %36, %block_0x36 ], [ %_address_in_parent_stack_bt_136, %37 ]
  %_new_load_137 = load i32, i32* %39
  %40 = zext i32 %_new_load_137 to i64, !mcsema_real_eip !15
  store i64 %40, i64* %XAX, !mcsema_real_eip !15
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX_val.24 = load i32, i32* %EAX.15, !mcsema_real_eip !16
  %41 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !16
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !16
  %_ptr_bt_140 = bitcast i32* %42 to i8*
  %_offset_above_rbp_141 = sub i64 %41, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_ptr_bt_140, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_ptr_bt_140, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_ptr_bt_140, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  br i1 %_cond1_n_cond2_cond3_149, label %43, label %44

; <label>:43:                                     ; preds = %38
  %_address_in_parent_stack_bt_151 = bitcast i8* %_pot_address_in_parent_stack_142 to i32*
  br label %44

; <label>:44:                                     ; preds = %38, %43
  %45 = phi i32* [ %42, %38 ], [ %_address_in_parent_stack_bt_151, %43 ]
  %_new_load_152 = load i32, i32* %45
  %46 = sub i32 %EAX_val.24, %_new_load_152, !mcsema_real_eip !16
  %47 = xor i32 %46, %EAX_val.24, !mcsema_real_eip !16
  %48 = xor i32 %47, %_new_load_152, !mcsema_real_eip !16
  %49 = and i32 %48, 16, !mcsema_real_eip !16
  %50 = icmp ne i32 %49, 0, !mcsema_real_eip !16
  store i1 %50, i1* %AF, !mcsema_real_eip !16
  %51 = trunc i32 %46 to i8, !mcsema_real_eip !16
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !16
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !16
  %54 = xor i1 %53, true, !mcsema_real_eip !16
  store i1 %54, i1* %PF, !mcsema_real_eip !16
  %55 = icmp eq i32 %46, 0, !mcsema_real_eip !16
  store i1 %55, i1* %ZF, !mcsema_real_eip !16
  %56 = lshr i32 %46, 31, !mcsema_real_eip !16
  %57 = trunc i32 %56 to i1, !mcsema_real_eip !16
  store i1 %57, i1* %SF, !mcsema_real_eip !16
  %58 = icmp ult i32 %EAX_val.24, %_new_load_152, !mcsema_real_eip !16
  store i1 %58, i1* %CF, !mcsema_real_eip !16
  %59 = xor i32 %EAX_val.24, %_new_load_152, !mcsema_real_eip !16
  %60 = and i32 %59, %47, !mcsema_real_eip !16
  %61 = lshr i32 %60, 31, !mcsema_real_eip !16
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !16
  store i1 %62, i1* %OF, !mcsema_real_eip !16
  %63 = icmp eq i1 %57, %62, !mcsema_real_eip !17
  br i1 %63, label %block_0x82, label %block_0x42, !mcsema_real_eip !17

block_0x42:                                       ; preds = %44
  store i64 ptrtoint (%0* @data_0xa4 to i64), i64* %XDI, !mcsema_real_eip !18
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -16
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_153 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_156 = sub i64 %_ptr_to_int_153, %_local_end_to_int_
  %_pot_address_in_parent_stack_157 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_156
  %_cond1_158 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_159 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_160 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_161 = or i1 %_cond2_1_159, %_cond2_2_160
  %_cond4_162 = icmp ule i8* %_pot_address_in_parent_stack_157, %_parent_stack_end_ptr_
  %_cond1_n_cond2_163 = and i1 %_cond1_158, %_cond2_161
  %_cond1_n_cond2_cond3_164 = and i1 %_cond1_n_cond2_163, %_cond4_162
  br i1 %_cond1_n_cond2_cond3_164, label %64, label %65

; <label>:64:                                     ; preds = %block_0x42
  %_address_in_parent_stack_bt_166 = bitcast i8* %_pot_address_in_parent_stack_157 to i64*
  br label %65

; <label>:65:                                     ; preds = %block_0x42, %64
  %66 = phi i64* [ %_allin_new_bt_45, %block_0x42 ], [ %_address_in_parent_stack_bt_166, %64 ]
  %_new_load_167 = load i64, i64* %66
  store i64 %_new_load_167, i64* %XAX, !mcsema_real_eip !19
  %67 = add i64 %_new_load_167, 8, !mcsema_real_eip !20
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !20
  %_ptr_bt_170 = bitcast i64* %68 to i8*
  %_offset_above_rbp_171 = sub i64 %67, %_local_end_to_int_
  %_pot_address_in_parent_stack_172 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_171
  %_cond1_173 = icmp ugt i8* %_ptr_bt_170, %_local_stack_end_ptr_
  %_cond2_1_174 = icmp ugt i8* %_ptr_bt_170, %_parent_stack_end_ptr_
  %_cond2_2_175 = icmp ult i8* %_ptr_bt_170, %_parent_stack_start_ptr_
  %_cond2_176 = or i1 %_cond2_1_174, %_cond2_2_175
  %_cond4_177 = icmp ule i8* %_pot_address_in_parent_stack_172, %_parent_stack_end_ptr_
  %_cond1_n_cond2_178 = and i1 %_cond1_173, %_cond2_176
  %_cond1_n_cond2_cond3_179 = and i1 %_cond1_n_cond2_178, %_cond4_177
  br i1 %_cond1_n_cond2_cond3_179, label %69, label %70

; <label>:69:                                     ; preds = %65
  %_address_in_parent_stack_bt_181 = bitcast i8* %_pot_address_in_parent_stack_172 to i64*
  br label %70

; <label>:70:                                     ; preds = %65, %69
  %71 = phi i64* [ %68, %65 ], [ %_address_in_parent_stack_bt_181, %69 ]
  %_new_load_182 = load i64, i64* %71
  store i64 %_new_load_182, i64* %XSI, !mcsema_real_eip !20
  %AL.27 = bitcast i64* %XAX to i8*, !mcsema_real_eip !21
  store i8 0, i8* %AL.27, !mcsema_real_eip !21
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 -8
  %72 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !22
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_48, !mcsema_real_eip !22
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %72, i64* %XSP, !mcsema_real_eip !22
  %73 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0xa4 to i64), i64 %_new_load_182)
  %_rsp_fix_104 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_105 = getelementptr i8, i8* %_rsp_fix_104, i64 8
  store i8* %_gep_fix_105, i8** %_RSP_ptr_
  store i64 %73, i64* %XAX, !mcsema_real_eip !22
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %_ptr_to_int_183 = ptrtoint i64* %_allin_new_bt_51 to i64
  %_offset_above_rbp_186 = sub i64 %_ptr_to_int_183, %_local_end_to_int_
  %_pot_address_in_parent_stack_187 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_186
  %_cond1_188 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_189 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_190 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_191 = or i1 %_cond2_1_189, %_cond2_2_190
  %_cond4_192 = icmp ule i8* %_pot_address_in_parent_stack_187, %_parent_stack_end_ptr_
  %_cond1_n_cond2_193 = and i1 %_cond1_188, %_cond2_191
  %_cond1_n_cond2_cond3_194 = and i1 %_cond1_n_cond2_193, %_cond4_192
  br i1 %_cond1_n_cond2_cond3_194, label %74, label %75

; <label>:74:                                     ; preds = %70
  %_address_in_parent_stack_bt_196 = bitcast i8* %_pot_address_in_parent_stack_187 to i64*
  br label %75

; <label>:75:                                     ; preds = %70, %74
  %76 = phi i64* [ %_allin_new_bt_51, %70 ], [ %_address_in_parent_stack_bt_196, %74 ]
  %_new_load_197 = load i64, i64* %76
  store i64 %_new_load_197, i64* %XSI, !mcsema_real_eip !23
  %77 = add i64 %_new_load_197, 8, !mcsema_real_eip !24
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !24
  %_ptr_bt_200 = bitcast i64* %78 to i8*
  %_offset_above_rbp_201 = sub i64 %77, %_local_end_to_int_
  %_pot_address_in_parent_stack_202 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_201
  %_cond1_203 = icmp ugt i8* %_ptr_bt_200, %_local_stack_end_ptr_
  %_cond2_1_204 = icmp ugt i8* %_ptr_bt_200, %_parent_stack_end_ptr_
  %_cond2_2_205 = icmp ult i8* %_ptr_bt_200, %_parent_stack_start_ptr_
  %_cond2_206 = or i1 %_cond2_1_204, %_cond2_2_205
  %_cond4_207 = icmp ule i8* %_pot_address_in_parent_stack_202, %_parent_stack_end_ptr_
  %_cond1_n_cond2_208 = and i1 %_cond1_203, %_cond2_206
  %_cond1_n_cond2_cond3_209 = and i1 %_cond1_n_cond2_208, %_cond4_207
  br i1 %_cond1_n_cond2_cond3_209, label %79, label %80

; <label>:79:                                     ; preds = %75
  %_address_in_parent_stack_bt_211 = bitcast i8* %_pot_address_in_parent_stack_202 to i64*
  br label %80

; <label>:80:                                     ; preds = %75, %79
  %81 = phi i64* [ %78, %75 ], [ %_address_in_parent_stack_bt_211, %79 ]
  %_new_load_212 = load i64, i64* %81
  store i64 %_new_load_212, i64* %XSI, !mcsema_real_eip !24
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -28
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %82 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !25
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !25
  %_ptr_bt_215 = bitcast i32* %83 to i8*
  %_offset_above_rbp_216 = sub i64 %82, %_local_end_to_int_
  %_pot_address_in_parent_stack_217 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_cond1_218 = icmp ugt i8* %_ptr_bt_215, %_local_stack_end_ptr_
  %_cond2_1_219 = icmp ugt i8* %_ptr_bt_215, %_parent_stack_end_ptr_
  %_cond2_2_220 = icmp ult i8* %_ptr_bt_215, %_parent_stack_start_ptr_
  %_cond2_221 = or i1 %_cond2_1_219, %_cond2_2_220
  %_cond4_222 = icmp ule i8* %_pot_address_in_parent_stack_217, %_parent_stack_end_ptr_
  %_cond1_n_cond2_223 = and i1 %_cond1_218, %_cond2_221
  %_cond1_n_cond2_cond3_224 = and i1 %_cond1_n_cond2_223, %_cond4_222
  br i1 %_cond1_n_cond2_cond3_224, label %84, label %85

; <label>:84:                                     ; preds = %80
  %_address_in_parent_stack_bt_226 = bitcast i8* %_pot_address_in_parent_stack_217 to i32*
  br label %85

; <label>:85:                                     ; preds = %80, %84
  %86 = phi i32* [ %83, %80 ], [ %_address_in_parent_stack_bt_226, %84 ]
  %_new_load_227 = load i32, i32* %86
  %87 = sext i32 %_new_load_227 to i64, !mcsema_real_eip !25
  store i64 %87, i64* %XDI, !mcsema_real_eip !25
  %88 = add i64 %_new_load_212, %87, !mcsema_real_eip !26
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !26
  %90 = inttoptr i64 %88 to i8*, !mcsema_real_eip !26
  %_offset_above_rbp_230 = sub i64 %88, %_local_end_to_int_
  %_pot_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_cond1_232 = icmp ugt i8* %90, %_local_stack_end_ptr_
  %_cond2_1_233 = icmp ugt i8* %90, %_parent_stack_end_ptr_
  %_cond2_2_234 = icmp ult i8* %90, %_parent_stack_start_ptr_
  %_cond2_235 = or i1 %_cond2_1_233, %_cond2_2_234
  %_cond4_236 = icmp ule i8* %_pot_address_in_parent_stack_231, %_parent_stack_end_ptr_
  %_cond1_n_cond2_237 = and i1 %_cond1_232, %_cond2_235
  %_cond1_n_cond2_cond3_238 = and i1 %_cond1_n_cond2_237, %_cond4_236
  br i1 %_cond1_n_cond2_cond3_238, label %91, label %92

; <label>:91:                                     ; preds = %85
  br label %92

; <label>:92:                                     ; preds = %85, %91
  %93 = phi i8* [ %90, %85 ], [ %_pot_address_in_parent_stack_231, %91 ]
  %_new_load_240 = load i8, i8* %93
  %94 = sext i8 %_new_load_240 to i32, !mcsema_real_eip !26
  %95 = zext i32 %94 to i64, !mcsema_real_eip !26
  store i64 %95, i64* %XCX, !mcsema_real_eip !26
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -20
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %96 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !27
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !27
  %_ptr_bt_243 = bitcast i32* %97 to i8*
  %_offset_above_rbp_244 = sub i64 %96, %_local_end_to_int_
  %_pot_address_in_parent_stack_245 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_244
  %_cond1_246 = icmp ugt i8* %_ptr_bt_243, %_local_stack_end_ptr_
  %_cond2_1_247 = icmp ugt i8* %_ptr_bt_243, %_parent_stack_end_ptr_
  %_cond2_2_248 = icmp ult i8* %_ptr_bt_243, %_parent_stack_start_ptr_
  %_cond2_249 = or i1 %_cond2_1_247, %_cond2_2_248
  %_cond4_250 = icmp ule i8* %_pot_address_in_parent_stack_245, %_parent_stack_end_ptr_
  %_cond1_n_cond2_251 = and i1 %_cond1_246, %_cond2_249
  %_cond1_n_cond2_cond3_252 = and i1 %_cond1_n_cond2_251, %_cond4_250
  br i1 %_cond1_n_cond2_cond3_252, label %98, label %99

; <label>:98:                                     ; preds = %92
  %_address_in_parent_stack_bt_254 = bitcast i8* %_pot_address_in_parent_stack_245 to i32*
  br label %99

; <label>:99:                                     ; preds = %92, %98
  %100 = phi i32* [ %97, %92 ], [ %_address_in_parent_stack_bt_254, %98 ]
  %_new_load_255 = load i32, i32* %100
  %ECX_val.38 = load i32, i32* %ECX.18, !mcsema_real_eip !27
  %101 = add i32 %ECX_val.38, %_new_load_255, !mcsema_real_eip !27
  %102 = xor i32 %101, %_new_load_255, !mcsema_real_eip !27
  %103 = xor i32 %102, %ECX_val.38, !mcsema_real_eip !27
  %104 = and i32 %103, 16, !mcsema_real_eip !27
  %105 = icmp ne i32 %104, 0, !mcsema_real_eip !27
  store i1 %105, i1* %AF, !mcsema_real_eip !27
  %106 = lshr i32 %101, 31, !mcsema_real_eip !27
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !27
  store i1 %107, i1* %SF, !mcsema_real_eip !27
  %108 = icmp eq i32 %101, 0, !mcsema_real_eip !27
  store i1 %108, i1* %ZF, !mcsema_real_eip !27
  %109 = xor i32 %_new_load_255, %ECX_val.38, !mcsema_real_eip !27
  %110 = xor i32 %109, -1, !mcsema_real_eip !27
  %111 = and i32 %110, %102, !mcsema_real_eip !27
  %112 = lshr i32 %111, 31, !mcsema_real_eip !27
  %113 = and i32 %112, 1, !mcsema_real_eip !27
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !27
  store i1 %114, i1* %OF, !mcsema_real_eip !27
  %115 = trunc i32 %101 to i8, !mcsema_real_eip !27
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !27
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !27
  %118 = xor i1 %117, true, !mcsema_real_eip !27
  store i1 %118, i1* %PF, !mcsema_real_eip !27
  %119 = icmp ult i32 %101, %_new_load_255, !mcsema_real_eip !27
  store i1 %119, i1* %CF, !mcsema_real_eip !27
  %120 = zext i32 %101 to i64, !mcsema_real_eip !27
  store i64 %120, i64* %XCX, !mcsema_real_eip !27
  %ECX_val.41 = load i32, i32* %ECX.18, !mcsema_real_eip !28
  store i32 %ECX_val.41, i32* %97, !mcsema_real_eip !28
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -32
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %EAX_val.44 = load i32, i32* %EAX.15, !mcsema_real_eip !29
  %121 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !29
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !29
  store i32 %EAX_val.44, i32* %122, !mcsema_real_eip !29
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -28
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %123 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !30
  %124 = inttoptr i64 %123 to i32*, !mcsema_real_eip !30
  %_ptr_bt_258 = bitcast i32* %124 to i8*
  %_offset_above_rbp_259 = sub i64 %123, %_local_end_to_int_
  %_pot_address_in_parent_stack_260 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_259
  %_cond1_261 = icmp ugt i8* %_ptr_bt_258, %_local_stack_end_ptr_
  %_cond2_1_262 = icmp ugt i8* %_ptr_bt_258, %_parent_stack_end_ptr_
  %_cond2_2_263 = icmp ult i8* %_ptr_bt_258, %_parent_stack_start_ptr_
  %_cond2_264 = or i1 %_cond2_1_262, %_cond2_2_263
  %_cond4_265 = icmp ule i8* %_pot_address_in_parent_stack_260, %_parent_stack_end_ptr_
  %_cond1_n_cond2_266 = and i1 %_cond1_261, %_cond2_264
  %_cond1_n_cond2_cond3_267 = and i1 %_cond1_n_cond2_266, %_cond4_265
  br i1 %_cond1_n_cond2_cond3_267, label %125, label %126

; <label>:125:                                    ; preds = %99
  %_address_in_parent_stack_bt_269 = bitcast i8* %_pot_address_in_parent_stack_260 to i32*
  br label %126

; <label>:126:                                    ; preds = %99, %125
  %127 = phi i32* [ %124, %99 ], [ %_address_in_parent_stack_bt_269, %125 ]
  %_new_load_270 = load i32, i32* %127
  %128 = zext i32 %_new_load_270 to i64, !mcsema_real_eip !30
  store i64 %128, i64* %XAX, !mcsema_real_eip !30
  %EAX_val.47 = load i32, i32* %EAX.15, !mcsema_real_eip !31
  %129 = add i32 1, %EAX_val.47, !mcsema_real_eip !31
  %130 = xor i32 %129, %EAX_val.47, !mcsema_real_eip !31
  %131 = xor i32 %130, 1, !mcsema_real_eip !31
  %132 = and i32 %131, 16, !mcsema_real_eip !31
  %133 = icmp ne i32 %132, 0, !mcsema_real_eip !31
  store i1 %133, i1* %AF, !mcsema_real_eip !31
  %134 = lshr i32 %129, 31, !mcsema_real_eip !31
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !31
  store i1 %135, i1* %SF, !mcsema_real_eip !31
  %136 = icmp eq i32 %129, 0, !mcsema_real_eip !31
  store i1 %136, i1* %ZF, !mcsema_real_eip !31
  %137 = xor i32 %EAX_val.47, 1, !mcsema_real_eip !31
  %138 = xor i32 %137, -1, !mcsema_real_eip !31
  %139 = and i32 %138, %130, !mcsema_real_eip !31
  %140 = lshr i32 %139, 31, !mcsema_real_eip !31
  %141 = and i32 %140, 1, !mcsema_real_eip !31
  %142 = trunc i32 %141 to i1, !mcsema_real_eip !31
  store i1 %142, i1* %OF, !mcsema_real_eip !31
  %143 = trunc i32 %129 to i8, !mcsema_real_eip !31
  %144 = call i8 @llvm.ctpop.i8(i8 %143), !mcsema_real_eip !31
  %145 = trunc i8 %144 to i1, !mcsema_real_eip !31
  %146 = xor i1 %145, true, !mcsema_real_eip !31
  store i1 %146, i1* %PF, !mcsema_real_eip !31
  %147 = icmp ult i32 %129, %EAX_val.47, !mcsema_real_eip !31
  store i1 %147, i1* %CF, !mcsema_real_eip !31
  %148 = zext i32 %129 to i64, !mcsema_real_eip !31
  store i64 %148, i64* %XAX, !mcsema_real_eip !31
  %EAX_val.50 = load i32, i32* %EAX.15, !mcsema_real_eip !32
  store i32 %EAX_val.50, i32* %124, !mcsema_real_eip !32
  br label %block_0x36, !mcsema_real_eip !33

block_0x82:                                       ; preds = %44
  store i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64* %XDI, !mcsema_real_eip !34
  br i1 %_cond1_n_cond2_cond3_149, label %149, label %150

; <label>:149:                                    ; preds = %block_0x82
  %_address_in_parent_stack_bt_284 = bitcast i8* %_pot_address_in_parent_stack_142 to i32*
  br label %150

; <label>:150:                                    ; preds = %block_0x82, %149
  %151 = phi i32* [ %42, %block_0x82 ], [ %_address_in_parent_stack_bt_284, %149 ]
  %_new_load_285 = load i32, i32* %151
  %152 = zext i32 %_new_load_285 to i64, !mcsema_real_eip !35
  store i64 %152, i64* %XSI, !mcsema_real_eip !35
  %AL.52 = bitcast i64* %XAX to i8*, !mcsema_real_eip !36
  store i8 0, i8* %AL.52, !mcsema_real_eip !36
  %_load_rsp_ptr_73 = load i8*, i8** %_RSP_ptr_
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !37
  %_new_gep_74 = getelementptr i8, i8* %_load_rsp_ptr_73, i64 -8
  %153 = sub i64 %RSP_val.55, 8, !mcsema_real_eip !37
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_75, !mcsema_real_eip !37
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_
  store i64 %153, i64* %XSP, !mcsema_real_eip !37
  %154 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%0* @data_0xa4 to i64), i64 10), i64 %152)
  %_rsp_fix_106 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_107 = getelementptr i8, i8* %_rsp_fix_106, i64 8
  store i8* %_gep_fix_107, i8** %_RSP_ptr_
  store i64 %154, i64* %XAX, !mcsema_real_eip !37
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -24
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %155 = ptrtoint i64* %_allin_new_bt_78 to i64, !mcsema_real_eip !38
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !38
  %_ptr_bt_288 = bitcast i32* %156 to i8*
  %_offset_above_rbp_289 = sub i64 %155, %_local_end_to_int_
  %_pot_address_in_parent_stack_290 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_289
  %_cond1_291 = icmp ugt i8* %_ptr_bt_288, %_local_stack_end_ptr_
  %_cond2_1_292 = icmp ugt i8* %_ptr_bt_288, %_parent_stack_end_ptr_
  %_cond2_2_293 = icmp ult i8* %_ptr_bt_288, %_parent_stack_start_ptr_
  %_cond2_294 = or i1 %_cond2_1_292, %_cond2_2_293
  %_cond4_295 = icmp ule i8* %_pot_address_in_parent_stack_290, %_parent_stack_end_ptr_
  %_cond1_n_cond2_296 = and i1 %_cond1_291, %_cond2_294
  %_cond1_n_cond2_cond3_297 = and i1 %_cond1_n_cond2_296, %_cond4_295
  br i1 %_cond1_n_cond2_cond3_297, label %157, label %158

; <label>:157:                                    ; preds = %150
  %_address_in_parent_stack_bt_299 = bitcast i8* %_pot_address_in_parent_stack_290 to i32*
  br label %158

; <label>:158:                                    ; preds = %150, %157
  %159 = phi i32* [ %156, %150 ], [ %_address_in_parent_stack_bt_299, %157 ]
  %_new_load_300 = load i32, i32* %159
  %160 = zext i32 %_new_load_300 to i64, !mcsema_real_eip !38
  store i64 %160, i64* %XSI, !mcsema_real_eip !38
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -36
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %EAX_val.59 = load i32, i32* %EAX.15, !mcsema_real_eip !39
  %161 = ptrtoint i64* %_allin_new_bt_81 to i64, !mcsema_real_eip !39
  %162 = inttoptr i64 %161 to i32*, !mcsema_real_eip !39
  store i32 %EAX_val.59, i32* %162, !mcsema_real_eip !39
  %ESI.60 = bitcast i64* %XSI to i32*, !mcsema_real_eip !40
  %ESI_val.61 = load i32, i32* %ESI.60, !mcsema_real_eip !40
  %163 = zext i32 %ESI_val.61 to i64, !mcsema_real_eip !40
  store i64 %163, i64* %XAX, !mcsema_real_eip !40
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !41
  %_new_gep_83 = getelementptr i8, i8* %_load_rsp_ptr_82, i64 48
  %164 = add i64 48, %RSP_val.62, !mcsema_real_eip !41
  %_trans_p2i_84 = ptrtoint i8* %_new_gep_83 to i64
  %_trans_p2i_85 = ptrtoint i8* %_load_rsp_ptr_82 to i64
  %_trans_xor_86 = xor i64 %_trans_p2i_84, %_trans_p2i_85
  %165 = xor i64 %_trans_xor_86, 48, !mcsema_real_eip !41
  %166 = and i64 %165, 16, !mcsema_real_eip !41
  %167 = icmp ne i64 %166, 0, !mcsema_real_eip !41
  store i1 %167, i1* %AF, !mcsema_real_eip !41
  %168 = lshr i64 %164, 63, !mcsema_real_eip !41
  %169 = trunc i64 %168 to i1, !mcsema_real_eip !41
  store i1 %169, i1* %SF, !mcsema_real_eip !41
  %_trans_icmp_eq_88 = icmp eq i64 %_trans_p2i_84, 0
  store i1 %_trans_icmp_eq_88, i1* %ZF, !mcsema_real_eip !41
  %_trans_xor_90 = xor i64 %_trans_p2i_85, 48
  %170 = xor i64 %_trans_xor_90, -1, !mcsema_real_eip !41
  %171 = and i64 %170, %_trans_xor_86, !mcsema_real_eip !41
  %172 = lshr i64 %171, 63, !mcsema_real_eip !41
  %173 = and i64 %172, 1, !mcsema_real_eip !41
  %174 = trunc i64 %173 to i1, !mcsema_real_eip !41
  store i1 %174, i1* %OF, !mcsema_real_eip !41
  %_trans_trunc_95 = trunc i64 %_trans_p2i_84 to i8
  %175 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_95), !mcsema_real_eip !41
  %176 = trunc i8 %175 to i1, !mcsema_real_eip !41
  %177 = xor i1 %176, true, !mcsema_real_eip !41
  store i1 %177, i1* %PF, !mcsema_real_eip !41
  %_trans_icmp_ne_97 = icmp ne i64 %_trans_p2i_84, %RSP_val.62
  store i1 %_trans_icmp_ne_97, i1* %CF, !mcsema_real_eip !41
  store volatile i8* %_new_gep_83, i8** %_RSP_ptr_
  store i64 %164, i64* %XSP, !mcsema_real_eip !41
  %_allin_new_bt_99 = bitcast i8* %_new_gep_83 to i64*
  %_ptr_to_int_301 = ptrtoint i64* %_allin_new_bt_99 to i64
  %_offset_above_rbp_304 = sub i64 %_ptr_to_int_301, %_local_end_to_int_
  %_pot_address_in_parent_stack_305 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_304
  %_cond1_306 = icmp ugt i8* %_new_gep_83, %_local_stack_end_ptr_
  %_cond2_1_307 = icmp ugt i8* %_new_gep_83, %_parent_stack_end_ptr_
  %_cond2_2_308 = icmp ult i8* %_new_gep_83, %_parent_stack_start_ptr_
  %_cond2_309 = or i1 %_cond2_1_307, %_cond2_2_308
  %_cond4_310 = icmp ule i8* %_pot_address_in_parent_stack_305, %_parent_stack_end_ptr_
  %_cond1_n_cond2_311 = and i1 %_cond1_306, %_cond2_309
  %_cond1_n_cond2_cond3_312 = and i1 %_cond1_n_cond2_311, %_cond4_310
  br i1 %_cond1_n_cond2_cond3_312, label %178, label %179

; <label>:178:                                    ; preds = %158
  %_address_in_parent_stack_bt_314 = bitcast i8* %_pot_address_in_parent_stack_305 to i64*
  br label %179

; <label>:179:                                    ; preds = %158, %178
  %180 = phi i64* [ %_allin_new_bt_99, %158 ], [ %_address_in_parent_stack_bt_314, %178 ]
  %_new_load_315 = load i64, i64* %180
  %_new_int2ptr_ = inttoptr i64 %_new_load_315 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_315, i64* %XBP, !mcsema_real_eip !42
  %_new_gep_100 = getelementptr i8, i8* %_new_gep_83, i64 8
  %181 = add i64 %164, 8, !mcsema_real_eip !42
  store volatile i8* %_new_gep_100, i8** %_RSP_ptr_
  store i64 %181, i64* %XSP, !mcsema_real_eip !42
  %_new_gep_102 = getelementptr i8, i8* %_new_gep_100, i64 8
  %182 = add i64 %181, 8, !mcsema_real_eip !43
  %_allin_new_bt_103 = bitcast i8* %_new_gep_100 to i64*
  %_ptr_to_int_316 = ptrtoint i64* %_allin_new_bt_103 to i64
  %_offset_above_rbp_319 = sub i64 %_ptr_to_int_316, %_local_end_to_int_
  %_pot_address_in_parent_stack_320 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_319
  %_cond1_321 = icmp ugt i8* %_new_gep_100, %_local_stack_end_ptr_
  %_cond2_1_322 = icmp ugt i8* %_new_gep_100, %_parent_stack_end_ptr_
  %_cond2_2_323 = icmp ult i8* %_new_gep_100, %_parent_stack_start_ptr_
  %_cond2_324 = or i1 %_cond2_1_322, %_cond2_2_323
  %_cond4_325 = icmp ule i8* %_pot_address_in_parent_stack_320, %_parent_stack_end_ptr_
  %_cond1_n_cond2_326 = and i1 %_cond1_321, %_cond2_324
  %_cond1_n_cond2_cond3_327 = and i1 %_cond1_n_cond2_326, %_cond4_325
  br i1 %_cond1_n_cond2_cond3_327, label %183, label %184

; <label>:183:                                    ; preds = %179
  %_address_in_parent_stack_bt_329 = bitcast i8* %_pot_address_in_parent_stack_320 to i64*
  br label %184

; <label>:184:                                    ; preds = %179, %183
  %185 = phi i64* [ %_allin_new_bt_103, %179 ], [ %_address_in_parent_stack_bt_329, %183 ]
  %_new_load_330 = load i64, i64* %185
  store i64 %_new_load_330, i64* %XIP, !mcsema_real_eip !43
  store volatile i8* %_new_gep_102, i8** %_RSP_ptr_
  store i64 %182, i64* %XSP, !mcsema_real_eip !43
  ret void, !mcsema_real_eip !43
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
!6 = !{i64 15}
!7 = !{i64 18}
!8 = !{i64 22}
!9 = !{i64 29}
!10 = !{i64 33}
!11 = !{i64 37}
!12 = !{i64 42}
!13 = !{i64 44}
!14 = !{i64 47}
!15 = !{i64 54}
!16 = !{i64 57}
!17 = !{i64 60}
!18 = !{i64 66}
!19 = !{i64 76}
!20 = !{i64 80}
!21 = !{i64 84}
!22 = !{i64 86}
!23 = !{i64 91}
!24 = !{i64 95}
!25 = !{i64 99}
!26 = !{i64 103}
!27 = !{i64 107}
!28 = !{i64 110}
!29 = !{i64 113}
!30 = !{i64 116}
!31 = !{i64 119}
!32 = !{i64 122}
!33 = !{i64 125}
!34 = !{i64 130}
!35 = !{i64 140}
!36 = !{i64 143}
!37 = !{i64 145}
!38 = !{i64 150}
!39 = !{i64 153}
!40 = !{i64 156}
!41 = !{i64 158}
!42 = !{i64 162}
!43 = !{i64 163}
