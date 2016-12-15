; ModuleID = 'Output/test_6.clang.trans.bc'
source_filename = "Output/test_6.clang.bc"
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
module asm "  .globl sub_a0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_a0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x1af = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x1b8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\96\00\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\0F\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_a0(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 112
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 112
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
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  br label %block_0xa0, !mcsema_real_eip !2

block_0xa0:                                       ; preds = %entry
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -96
  %2 = sub i64 %RSP_val.3, 96, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 96, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 96
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 96
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 40, i64* %XAX, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !6
  %14 = zext i32 %EAX_val.5 to i64, !mcsema_real_eip !6
  store i64 %14, i64* %XCX, !mcsema_real_eip !6
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !7
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %16, !mcsema_real_eip !7
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.9 = load i32, i32* %EDI.8, !mcsema_real_eip !8
  %17 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !8
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.9, i32* %18, !mcsema_real_eip !8
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.11 = load i64, i64* %XSI, !mcsema_real_eip !9
  store i64 %RSI_val.11, i64* %_allin_new_bt_21, !mcsema_real_eip !9
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !10
  store i64 %RCX_val.12, i64* %XDI, !mcsema_real_eip !10
  %_load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_22, i64 -8
  %19 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, !mcsema_real_eip !11
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %19, i64* %XSP, !mcsema_real_eip !11
  %20 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.12)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %20, i64* %XAX, !mcsema_real_eip !11
  store i64 40, i64* %XDX, !mcsema_real_eip !12
  %EDX.15 = bitcast i64* %XDX to i32*, !mcsema_real_eip !13
  %EDX_val.16 = load i32, i32* %EDX.15, !mcsema_real_eip !13
  %21 = zext i32 %EDX_val.16 to i64, !mcsema_real_eip !13
  store i64 %21, i64* %XDI, !mcsema_real_eip !13
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 %20, i64* %_allin_new_bt_27, !mcsema_real_eip !14
  %RDI_val.19 = load i64, i64* %XDI, !mcsema_real_eip !15
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %22 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !15
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !15
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %22, i64* %XSP, !mcsema_real_eip !15
  %23 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.19)
  %_rsp_fix_149 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_150 = getelementptr i8, i8* %_rsp_fix_149, i64 8
  store i8* %_gep_fix_150, i8** %_RSP_ptr_
  store i64 %23, i64* %XAX, !mcsema_real_eip !15
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -32
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %23, i64* %_allin_new_bt_33, !mcsema_real_eip !16
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -36
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !17
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !17
  store i32 0, i32* %25, !mcsema_real_eip !17
  br label %block_0xe0, !mcsema_real_eip !18

block_0xe0:                                       ; preds = %block_0xea, %block_0xa0
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -36
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !18
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !18
  %28 = load i32, i32* %27, !mcsema_real_eip !18
  %29 = sub i32 %28, 10, !mcsema_real_eip !18
  %30 = xor i32 %29, %28, !mcsema_real_eip !18
  %31 = xor i32 %30, 10, !mcsema_real_eip !18
  %32 = and i32 %31, 16, !mcsema_real_eip !18
  %33 = icmp ne i32 %32, 0, !mcsema_real_eip !18
  store i1 %33, i1* %AF, !mcsema_real_eip !18
  %34 = trunc i32 %29 to i8, !mcsema_real_eip !18
  %35 = call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !18
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !18
  %37 = xor i1 %36, true, !mcsema_real_eip !18
  store i1 %37, i1* %PF, !mcsema_real_eip !18
  %38 = icmp eq i32 %29, 0, !mcsema_real_eip !18
  store i1 %38, i1* %ZF, !mcsema_real_eip !18
  %39 = lshr i32 %29, 31, !mcsema_real_eip !18
  %40 = trunc i32 %39 to i1, !mcsema_real_eip !18
  store i1 %40, i1* %SF, !mcsema_real_eip !18
  %41 = icmp ult i32 %28, 10, !mcsema_real_eip !18
  store i1 %41, i1* %CF, !mcsema_real_eip !18
  %42 = xor i32 %28, 10, !mcsema_real_eip !18
  %43 = and i32 %42, %30, !mcsema_real_eip !18
  %44 = lshr i32 %43, 31, !mcsema_real_eip !18
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !18
  store i1 %45, i1* %OF, !mcsema_real_eip !18
  %46 = icmp eq i1 %40, %45, !mcsema_real_eip !19
  br i1 %46, label %block_0x10c, label %block_0xea, !mcsema_real_eip !19

block_0xea:                                       ; preds = %block_0xe0
  %47 = load i32, i32* %27, !mcsema_real_eip !20
  %48 = zext i32 %47 to i64, !mcsema_real_eip !20
  store i64 %48, i64* %XAX, !mcsema_real_eip !20
  %EAX_val.28 = load i32, i32* %EAX.4, !mcsema_real_eip !21
  %49 = add i32 10, %EAX_val.28, !mcsema_real_eip !21
  %50 = xor i32 %49, %EAX_val.28, !mcsema_real_eip !21
  %51 = xor i32 %50, 10, !mcsema_real_eip !21
  %52 = and i32 %51, 16, !mcsema_real_eip !21
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !21
  store i1 %53, i1* %AF, !mcsema_real_eip !21
  %54 = lshr i32 %49, 31, !mcsema_real_eip !21
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !21
  store i1 %55, i1* %SF, !mcsema_real_eip !21
  %56 = icmp eq i32 %49, 0, !mcsema_real_eip !21
  store i1 %56, i1* %ZF, !mcsema_real_eip !21
  %57 = xor i32 %EAX_val.28, 10, !mcsema_real_eip !21
  %58 = xor i32 %57, -1, !mcsema_real_eip !21
  %59 = and i32 %58, %50, !mcsema_real_eip !21
  %60 = lshr i32 %59, 31, !mcsema_real_eip !21
  %61 = and i32 %60, 1, !mcsema_real_eip !21
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !21
  store i1 %62, i1* %OF, !mcsema_real_eip !21
  %63 = trunc i32 %49 to i8, !mcsema_real_eip !21
  %64 = call i8 @llvm.ctpop.i8(i8 %63), !mcsema_real_eip !21
  %65 = trunc i8 %64 to i1, !mcsema_real_eip !21
  %66 = xor i1 %65, true, !mcsema_real_eip !21
  store i1 %66, i1* %PF, !mcsema_real_eip !21
  %67 = icmp ult i32 %49, %EAX_val.28, !mcsema_real_eip !21
  store i1 %67, i1* %CF, !mcsema_real_eip !21
  %68 = zext i32 %49 to i64, !mcsema_real_eip !21
  store i64 %68, i64* %XAX, !mcsema_real_eip !21
  %EAX_val.30 = load i32, i32* %EAX.4, !mcsema_real_eip !22
  %69 = add i32 1, %EAX_val.30, !mcsema_real_eip !22
  %70 = xor i32 %69, %EAX_val.30, !mcsema_real_eip !22
  %71 = xor i32 %70, 1, !mcsema_real_eip !22
  %72 = and i32 %71, 16, !mcsema_real_eip !22
  %73 = icmp ne i32 %72, 0, !mcsema_real_eip !22
  store i1 %73, i1* %AF, !mcsema_real_eip !22
  %74 = lshr i32 %69, 31, !mcsema_real_eip !22
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !22
  store i1 %75, i1* %SF, !mcsema_real_eip !22
  %76 = icmp eq i32 %69, 0, !mcsema_real_eip !22
  store i1 %76, i1* %ZF, !mcsema_real_eip !22
  %77 = xor i32 %EAX_val.30, 1, !mcsema_real_eip !22
  %78 = xor i32 %77, -1, !mcsema_real_eip !22
  %79 = and i32 %78, %70, !mcsema_real_eip !22
  %80 = lshr i32 %79, 31, !mcsema_real_eip !22
  %81 = and i32 %80, 1, !mcsema_real_eip !22
  %82 = trunc i32 %81 to i1, !mcsema_real_eip !22
  store i1 %82, i1* %OF, !mcsema_real_eip !22
  %83 = trunc i32 %69 to i8, !mcsema_real_eip !22
  %84 = call i8 @llvm.ctpop.i8(i8 %83), !mcsema_real_eip !22
  %85 = trunc i8 %84 to i1, !mcsema_real_eip !22
  %86 = xor i1 %85, true, !mcsema_real_eip !22
  store i1 %86, i1* %PF, !mcsema_real_eip !22
  %87 = icmp ult i32 %69, %EAX_val.30, !mcsema_real_eip !22
  store i1 %87, i1* %CF, !mcsema_real_eip !22
  %88 = zext i32 %69 to i64, !mcsema_real_eip !22
  store i64 %88, i64* %XAX, !mcsema_real_eip !22
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %89 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !23
  store i64 %89, i64* %XCX, !mcsema_real_eip !23
  %90 = load i32, i32* %27, !mcsema_real_eip !24
  %91 = sext i32 %90 to i64, !mcsema_real_eip !24
  store i64 %91, i64* %XDX, !mcsema_real_eip !24
  %92 = mul i64 %91, 4, !mcsema_real_eip !25
  %93 = add i64 %89, %92, !mcsema_real_eip !25
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !25
  %EAX_val.36 = load i32, i32* %EAX.4, !mcsema_real_eip !25
  %95 = inttoptr i64 %93 to i32*, !mcsema_real_eip !25
  store i32 %EAX_val.36, i32* %95, !mcsema_real_eip !25
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -36
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %96 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !26
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !26
  %98 = load i32, i32* %97, !mcsema_real_eip !26
  %99 = zext i32 %98 to i64, !mcsema_real_eip !26
  store i64 %99, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.39 = load i32, i32* %EAX.4, !mcsema_real_eip !27
  %100 = add i32 1, %EAX_val.39, !mcsema_real_eip !27
  %101 = xor i32 %100, %EAX_val.39, !mcsema_real_eip !27
  %102 = xor i32 %101, 1, !mcsema_real_eip !27
  %103 = and i32 %102, 16, !mcsema_real_eip !27
  %104 = icmp ne i32 %103, 0, !mcsema_real_eip !27
  store i1 %104, i1* %AF, !mcsema_real_eip !27
  %105 = lshr i32 %100, 31, !mcsema_real_eip !27
  %106 = trunc i32 %105 to i1, !mcsema_real_eip !27
  store i1 %106, i1* %SF, !mcsema_real_eip !27
  %107 = icmp eq i32 %100, 0, !mcsema_real_eip !27
  store i1 %107, i1* %ZF, !mcsema_real_eip !27
  %108 = xor i32 %EAX_val.39, 1, !mcsema_real_eip !27
  %109 = xor i32 %108, -1, !mcsema_real_eip !27
  %110 = and i32 %109, %101, !mcsema_real_eip !27
  %111 = lshr i32 %110, 31, !mcsema_real_eip !27
  %112 = and i32 %111, 1, !mcsema_real_eip !27
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !27
  store i1 %113, i1* %OF, !mcsema_real_eip !27
  %114 = trunc i32 %100 to i8, !mcsema_real_eip !27
  %115 = call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !27
  %116 = trunc i8 %115 to i1, !mcsema_real_eip !27
  %117 = xor i1 %116, true, !mcsema_real_eip !27
  store i1 %117, i1* %PF, !mcsema_real_eip !27
  %118 = icmp ult i32 %100, %EAX_val.39, !mcsema_real_eip !27
  store i1 %118, i1* %CF, !mcsema_real_eip !27
  %119 = zext i32 %100 to i64, !mcsema_real_eip !27
  store i64 %119, i64* %XAX, !mcsema_real_eip !27
  %EAX_val.42 = load i32, i32* %EAX.4, !mcsema_real_eip !28
  store i32 %EAX_val.42, i32* %97, !mcsema_real_eip !28
  br label %block_0xe0, !mcsema_real_eip !29

block_0x10c:                                      ; preds = %block_0xe0
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -40
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %120 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !30
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !30
  store i32 0, i32* %121, !mcsema_real_eip !30
  br label %block_0x113, !mcsema_real_eip !20

block_0x113:                                      ; preds = %block_0x11d, %block_0x10c
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -40
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %122 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !31
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !31
  %124 = load i32, i32* %123, !mcsema_real_eip !31
  %125 = sub i32 %124, 10, !mcsema_real_eip !31
  %126 = xor i32 %125, %124, !mcsema_real_eip !31
  %127 = xor i32 %126, 10, !mcsema_real_eip !31
  %128 = and i32 %127, 16, !mcsema_real_eip !31
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !31
  store i1 %129, i1* %AF, !mcsema_real_eip !31
  %130 = trunc i32 %125 to i8, !mcsema_real_eip !31
  %131 = call i8 @llvm.ctpop.i8(i8 %130), !mcsema_real_eip !31
  %132 = trunc i8 %131 to i1, !mcsema_real_eip !31
  %133 = xor i1 %132, true, !mcsema_real_eip !31
  store i1 %133, i1* %PF, !mcsema_real_eip !31
  %134 = icmp eq i32 %125, 0, !mcsema_real_eip !31
  store i1 %134, i1* %ZF, !mcsema_real_eip !31
  %135 = lshr i32 %125, 31, !mcsema_real_eip !31
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !31
  store i1 %136, i1* %SF, !mcsema_real_eip !31
  %137 = icmp ult i32 %124, 10, !mcsema_real_eip !31
  store i1 %137, i1* %CF, !mcsema_real_eip !31
  %138 = xor i32 %124, 10, !mcsema_real_eip !31
  %139 = and i32 %138, %126, !mcsema_real_eip !31
  %140 = lshr i32 %139, 31, !mcsema_real_eip !31
  %141 = trunc i32 %140 to i1, !mcsema_real_eip !31
  store i1 %141, i1* %OF, !mcsema_real_eip !31
  %142 = icmp eq i1 %136, %141, !mcsema_real_eip !32
  br i1 %142, label %block_0x13c, label %block_0x11d, !mcsema_real_eip !32

block_0x11d:                                      ; preds = %block_0x113
  %143 = load i32, i32* %123, !mcsema_real_eip !33
  %144 = zext i32 %143 to i64, !mcsema_real_eip !33
  store i64 %144, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.80 = load i32, i32* %EAX.4, !mcsema_real_eip !34
  %145 = add i32 1, %EAX_val.80, !mcsema_real_eip !34
  %146 = xor i32 %145, %EAX_val.80, !mcsema_real_eip !34
  %147 = xor i32 %146, 1, !mcsema_real_eip !34
  %148 = and i32 %147, 16, !mcsema_real_eip !34
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !34
  store i1 %149, i1* %AF, !mcsema_real_eip !34
  %150 = lshr i32 %145, 31, !mcsema_real_eip !34
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !34
  store i1 %151, i1* %SF, !mcsema_real_eip !34
  %152 = icmp eq i32 %145, 0, !mcsema_real_eip !34
  store i1 %152, i1* %ZF, !mcsema_real_eip !34
  %153 = xor i32 %EAX_val.80, 1, !mcsema_real_eip !34
  %154 = xor i32 %153, -1, !mcsema_real_eip !34
  %155 = and i32 %154, %146, !mcsema_real_eip !34
  %156 = lshr i32 %155, 31, !mcsema_real_eip !34
  %157 = and i32 %156, 1, !mcsema_real_eip !34
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !34
  store i1 %158, i1* %OF, !mcsema_real_eip !34
  %159 = trunc i32 %145 to i8, !mcsema_real_eip !34
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !34
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !34
  %162 = xor i1 %161, true, !mcsema_real_eip !34
  store i1 %162, i1* %PF, !mcsema_real_eip !34
  %163 = icmp ult i32 %145, %EAX_val.80, !mcsema_real_eip !34
  store i1 %163, i1* %CF, !mcsema_real_eip !34
  %164 = zext i32 %145 to i64, !mcsema_real_eip !34
  store i64 %164, i64* %XAX, !mcsema_real_eip !34
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -32
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %165 = load i64, i64* %_allin_new_bt_66, !mcsema_real_eip !35
  store i64 %165, i64* %XCX, !mcsema_real_eip !35
  %166 = load i32, i32* %123, !mcsema_real_eip !36
  %167 = sext i32 %166 to i64, !mcsema_real_eip !36
  store i64 %167, i64* %XDX, !mcsema_real_eip !36
  %168 = mul i64 %167, 4, !mcsema_real_eip !37
  %169 = add i64 %165, %168, !mcsema_real_eip !37
  %170 = inttoptr i64 %169 to i64*, !mcsema_real_eip !37
  %EAX_val.86 = load i32, i32* %EAX.4, !mcsema_real_eip !37
  %171 = inttoptr i64 %169 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.86, i32* %171, !mcsema_real_eip !37
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -40
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %172 = ptrtoint i64* %_allin_new_bt_72 to i64, !mcsema_real_eip !38
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !38
  %174 = load i32, i32* %173, !mcsema_real_eip !38
  %175 = zext i32 %174 to i64, !mcsema_real_eip !38
  store i64 %175, i64* %XAX, !mcsema_real_eip !38
  %EAX_val.89 = load i32, i32* %EAX.4, !mcsema_real_eip !39
  %176 = add i32 1, %EAX_val.89, !mcsema_real_eip !39
  %177 = xor i32 %176, %EAX_val.89, !mcsema_real_eip !39
  %178 = xor i32 %177, 1, !mcsema_real_eip !39
  %179 = and i32 %178, 16, !mcsema_real_eip !39
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !39
  store i1 %180, i1* %AF, !mcsema_real_eip !39
  %181 = lshr i32 %176, 31, !mcsema_real_eip !39
  %182 = trunc i32 %181 to i1, !mcsema_real_eip !39
  store i1 %182, i1* %SF, !mcsema_real_eip !39
  %183 = icmp eq i32 %176, 0, !mcsema_real_eip !39
  store i1 %183, i1* %ZF, !mcsema_real_eip !39
  %184 = xor i32 %EAX_val.89, 1, !mcsema_real_eip !39
  %185 = xor i32 %184, -1, !mcsema_real_eip !39
  %186 = and i32 %185, %177, !mcsema_real_eip !39
  %187 = lshr i32 %186, 31, !mcsema_real_eip !39
  %188 = and i32 %187, 1, !mcsema_real_eip !39
  %189 = trunc i32 %188 to i1, !mcsema_real_eip !39
  store i1 %189, i1* %OF, !mcsema_real_eip !39
  %190 = trunc i32 %176 to i8, !mcsema_real_eip !39
  %191 = call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !39
  %192 = trunc i8 %191 to i1, !mcsema_real_eip !39
  %193 = xor i1 %192, true, !mcsema_real_eip !39
  store i1 %193, i1* %PF, !mcsema_real_eip !39
  %194 = icmp ult i32 %176, %EAX_val.89, !mcsema_real_eip !39
  store i1 %194, i1* %CF, !mcsema_real_eip !39
  %195 = zext i32 %176 to i64, !mcsema_real_eip !39
  store i64 %195, i64* %XAX, !mcsema_real_eip !39
  %EAX_val.92 = load i32, i32* %EAX.4, !mcsema_real_eip !40
  store i32 %EAX_val.92, i32* %173, !mcsema_real_eip !40
  br label %block_0x113, !mcsema_real_eip !41

block_0x13c:                                      ; preds = %block_0x113
  store i64 100, i64* %XDI, !mcsema_real_eip !42
  store i64 200, i64* %XSI, !mcsema_real_eip !43
  store i64 300, i64* %XDX, !mcsema_real_eip !44
  store i64 400, i64* %XCX, !mcsema_real_eip !45
  store i64 500, i64* %R8, !mcsema_real_eip !46
  store i64 600, i64* %R9, !mcsema_real_eip !47
  store i64 10, i64* %XAX, !mcsema_real_eip !48
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -24
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %196 = load i64, i64* %_allin_new_bt_78, !mcsema_real_eip !49
  store i64 %196, i64* %R10, !mcsema_real_eip !49
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -32
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %197 = load i64, i64* %_allin_new_bt_81, !mcsema_real_eip !50
  store i64 %197, i64* %R11, !mcsema_real_eip !50
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_84 = bitcast i8* %_load_rsp_ptr_82 to i64*
  %198 = ptrtoint i64* %_allin_new_bt_84 to i64, !mcsema_real_eip !51
  %199 = inttoptr i64 %198 to i32*, !mcsema_real_eip !51
  store i32 10, i32* %199, !mcsema_real_eip !51
  %_load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_
  %_new_gep_86 = getelementptr i8, i8* %_load_rsp_ptr_85, i64 8
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %R10_val.48 = load i64, i64* %R10, !mcsema_real_eip !52
  store i64 %R10_val.48, i64* %_allin_new_bt_87, !mcsema_real_eip !52
  %_load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_
  %_new_gep_89 = getelementptr i8, i8* %_load_rsp_ptr_88, i64 16
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %200 = ptrtoint i64* %_allin_new_bt_90 to i64, !mcsema_real_eip !53
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !53
  store i32 10, i32* %201, !mcsema_real_eip !53
  %_load_rsp_ptr_91 = load i8*, i8** %_RSP_ptr_
  %_new_gep_92 = getelementptr i8, i8* %_load_rsp_ptr_91, i64 24
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %R11_val.51 = load i64, i64* %R11, !mcsema_real_eip !54
  store i64 %R11_val.51, i64* %_allin_new_bt_93, !mcsema_real_eip !54
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -48
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %EAX_val.54 = load i32, i32* %EAX.4, !mcsema_real_eip !55
  %202 = ptrtoint i64* %_allin_new_bt_96 to i64, !mcsema_real_eip !55
  %203 = inttoptr i64 %202 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.54, i32* %203, !mcsema_real_eip !55
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !56
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 -8
  %204 = sub i64 %RSP_val.55, 8, !mcsema_real_eip !56
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, !mcsema_real_eip !56
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_
  store i64 %204, i64* %XSP, !mcsema_real_eip !56
  %_load_rbp_ptr_151 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_151)
  %_rsp_fix_153 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_154 = getelementptr i8, i8* %_rsp_fix_153, i64 8
  store i8* %_gep_fix_154, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x1af to i64), i64* %XDI, !mcsema_real_eip !57
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -44
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %EAX_val.58 = load i32, i32* %EAX.4, !mcsema_real_eip !58
  %205 = ptrtoint i64* %_allin_new_bt_102 to i64, !mcsema_real_eip !58
  %206 = inttoptr i64 %205 to i32*, !mcsema_real_eip !58
  store i32 %EAX_val.58, i32* %206, !mcsema_real_eip !58
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -44
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %207 = ptrtoint i64* %_allin_new_bt_105 to i64, !mcsema_real_eip !59
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !59
  %209 = load i32, i32* %208, !mcsema_real_eip !59
  %210 = zext i32 %209 to i64, !mcsema_real_eip !59
  store i64 %210, i64* %XSI, !mcsema_real_eip !59
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !60
  store i8 0, i8* %AL.60, !mcsema_real_eip !60
  %RDI_val.61 = load i64, i64* %XDI, !mcsema_real_eip !61
  %RDX_val.63 = load i64, i64* %XDX, !mcsema_real_eip !61
  %RCX_val.64 = load i64, i64* %XCX, !mcsema_real_eip !61
  %R8_val.65 = load i64, i64* %R8, !mcsema_real_eip !61
  %R9_val.66 = load i64, i64* %R9, !mcsema_real_eip !61
  %_load_rsp_ptr_106 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_107 = bitcast i8* %_load_rsp_ptr_106 to i64*
  %211 = load i64, i64* %_allin_new_bt_107, !mcsema_real_eip !61
  %_new_gep_108 = getelementptr i8, i8* %_load_rsp_ptr_106, i64 8
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %212 = load i64, i64* %_allin_new_bt_109, !mcsema_real_eip !61
  %_new_gep_110 = getelementptr i8, i8* %_new_gep_108, i64 8
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %213 = load i64, i64* %_allin_new_bt_111, !mcsema_real_eip !61
  %_new_gep_112 = getelementptr i8, i8* %_new_gep_110, i64 8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %214 = load i64, i64* %_allin_new_bt_113, !mcsema_real_eip !61
  %_new_gep_114 = getelementptr i8, i8* %_new_gep_112, i64 8
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %215 = load i64, i64* %_allin_new_bt_115, !mcsema_real_eip !61
  %_new_gep_116 = getelementptr i8, i8* %_new_gep_114, i64 8
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %216 = load i64, i64* %_allin_new_bt_117, !mcsema_real_eip !61
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !61
  %_new_gep_119 = getelementptr i8, i8* %_load_rsp_ptr_106, i64 -8
  %217 = sub i64 %RSP_val.68, 8, !mcsema_real_eip !61
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_120, !mcsema_real_eip !61
  store volatile i8* %_new_gep_119, i8** %_RSP_ptr_
  store i64 %217, i64* %XSP, !mcsema_real_eip !61
  %218 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.61, i64 %210, i64 %RDX_val.63, i64 %RCX_val.64, i64 %R8_val.65, i64 %R9_val.66, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216)
  %_rsp_fix_155 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_156 = getelementptr i8, i8* %_rsp_fix_155, i64 8
  store i8* %_gep_fix_156, i8** %_RSP_ptr_
  store i64 %218, i64* %XAX, !mcsema_real_eip !61
  %_load_rbp_ptr_121 = load i8*, i8** %_RBP_ptr_
  %_new_gep_122 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -44
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %219 = ptrtoint i64* %_allin_new_bt_123 to i64, !mcsema_real_eip !62
  %220 = inttoptr i64 %219 to i32*, !mcsema_real_eip !62
  %221 = load i32, i32* %220, !mcsema_real_eip !62
  %222 = zext i32 %221 to i64, !mcsema_real_eip !62
  store i64 %222, i64* %XCX, !mcsema_real_eip !62
  %_new_gep_125 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -52
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  %EAX_val.72 = load i32, i32* %EAX.4, !mcsema_real_eip !63
  %223 = ptrtoint i64* %_allin_new_bt_126 to i64, !mcsema_real_eip !63
  %224 = inttoptr i64 %223 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.72, i32* %224, !mcsema_real_eip !63
  %ECX.73 = bitcast i64* %XCX to i32*, !mcsema_real_eip !64
  %ECX_val.74 = load i32, i32* %ECX.73, !mcsema_real_eip !64
  %225 = zext i32 %ECX_val.74 to i64, !mcsema_real_eip !64
  store i64 %225, i64* %XAX, !mcsema_real_eip !64
  %_load_rsp_ptr_127 = load i8*, i8** %_RSP_ptr_
  %RSP_val.75 = load i64, i64* %XSP, !mcsema_real_eip !65
  %_new_gep_128 = getelementptr i8, i8* %_load_rsp_ptr_127, i64 96
  %226 = add i64 96, %RSP_val.75, !mcsema_real_eip !65
  %_trans_p2i_129 = ptrtoint i8* %_new_gep_128 to i64
  %_trans_p2i_130 = ptrtoint i8* %_load_rsp_ptr_127 to i64
  %_trans_xor_131 = xor i64 %_trans_p2i_129, %_trans_p2i_130
  %227 = xor i64 %_trans_xor_131, 96, !mcsema_real_eip !65
  %228 = and i64 %227, 16, !mcsema_real_eip !65
  %229 = icmp ne i64 %228, 0, !mcsema_real_eip !65
  store i1 %229, i1* %AF, !mcsema_real_eip !65
  %230 = lshr i64 %226, 63, !mcsema_real_eip !65
  %231 = trunc i64 %230 to i1, !mcsema_real_eip !65
  store i1 %231, i1* %SF, !mcsema_real_eip !65
  %_trans_icmp_eq_133 = icmp eq i64 %_trans_p2i_129, 0
  store i1 %_trans_icmp_eq_133, i1* %ZF, !mcsema_real_eip !65
  %_trans_xor_135 = xor i64 %_trans_p2i_130, 96
  %232 = xor i64 %_trans_xor_135, -1, !mcsema_real_eip !65
  %233 = and i64 %232, %_trans_xor_131, !mcsema_real_eip !65
  %234 = lshr i64 %233, 63, !mcsema_real_eip !65
  %235 = and i64 %234, 1, !mcsema_real_eip !65
  %236 = trunc i64 %235 to i1, !mcsema_real_eip !65
  store i1 %236, i1* %OF, !mcsema_real_eip !65
  %_trans_trunc_140 = trunc i64 %_trans_p2i_129 to i8
  %237 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_140), !mcsema_real_eip !65
  %238 = trunc i8 %237 to i1, !mcsema_real_eip !65
  %239 = xor i1 %238, true, !mcsema_real_eip !65
  store i1 %239, i1* %PF, !mcsema_real_eip !65
  %_trans_icmp_ne_142 = icmp ne i64 %_trans_p2i_129, %RSP_val.75
  store i1 %_trans_icmp_ne_142, i1* %CF, !mcsema_real_eip !65
  store volatile i8* %_new_gep_128, i8** %_RSP_ptr_
  store i64 %226, i64* %XSP, !mcsema_real_eip !65
  %_allin_new_bt_144 = bitcast i8* %_new_gep_128 to i64*
  %240 = load i64, i64* %_allin_new_bt_144, !mcsema_real_eip !66
  %_new_int2ptr_ = inttoptr i64 %240 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %240, i64* %XBP, !mcsema_real_eip !66
  %_new_gep_145 = getelementptr i8, i8* %_new_gep_128, i64 8
  %241 = add i64 %226, 8, !mcsema_real_eip !66
  store volatile i8* %_new_gep_145, i8** %_RSP_ptr_
  store i64 %241, i64* %XSP, !mcsema_real_eip !66
  %_new_gep_147 = getelementptr i8, i8* %_new_gep_145, i64 8
  %242 = add i64 %241, 8, !mcsema_real_eip !67
  %_allin_new_bt_148 = bitcast i8* %_new_gep_145 to i64*
  %243 = load i64, i64* %_allin_new_bt_148, !mcsema_real_eip !67
  store i64 %243, i64* %XIP, !mcsema_real_eip !67
  store volatile i8* %_new_gep_147, i8** %_RSP_ptr_
  store i64 %242, i64* %XSP, !mcsema_real_eip !67
  ret void, !mcsema_real_eip !67
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !68
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !68
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !68
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !68
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !68
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !68
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !68
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !68
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !68
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !68
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !68
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !68
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !68
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !68
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !68
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !68
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !68
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !68
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !68
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !68
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !68
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !68
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !68
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !68
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !68
  br label %block_0x0, !mcsema_real_eip !68

block_0x0:                                        ; preds = %entry
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !68
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !68
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !68
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !68
  store i64 %RBP_val.93, i64* %2, !mcsema_real_eip !68
  store i64 %1, i64* %XSP, !mcsema_real_eip !68
  store i64 %1, i64* %XBP, !mcsema_real_eip !69
  %RBX_val.96 = load i64, i64* %XBX, !mcsema_real_eip !70
  %3 = sub i64 %1, 8, !mcsema_real_eip !70
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !70
  store i64 %RBX_val.96, i64* %4, !mcsema_real_eip !70
  store i64 %3, i64* %XSP, !mcsema_real_eip !70
  %RBP_val.98 = load i64, i64* %XBP, !mcsema_real_eip !71
  %5 = add i64 %RBP_val.98, 40, !mcsema_real_eip !71
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !71
  %7 = load i64, i64* %6, !mcsema_real_eip !71
  store i64 %7, i64* %XAX, !mcsema_real_eip !71
  %8 = add i64 %RBP_val.98, 32, !mcsema_real_eip !72
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !72
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !72
  %11 = load i32, i32* %10, !mcsema_real_eip !72
  %12 = zext i32 %11 to i64, !mcsema_real_eip !72
  store i64 %12, i64* %R10, !mcsema_real_eip !72
  %13 = add i64 %RBP_val.98, 24, !mcsema_real_eip !73
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !73
  %15 = load i64, i64* %14, !mcsema_real_eip !73
  store i64 %15, i64* %R11, !mcsema_real_eip !73
  %16 = add i64 %RBP_val.98, 16, !mcsema_real_eip !74
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !74
  %18 = inttoptr i64 %16 to i32*, !mcsema_real_eip !74
  %19 = load i32, i32* %18, !mcsema_real_eip !74
  %20 = zext i32 %19 to i64, !mcsema_real_eip !74
  store i64 %20, i64* %XBX, !mcsema_real_eip !74
  %21 = add i64 %RBP_val.98, -12, !mcsema_real_eip !75
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !75
  %EDI.103 = bitcast i64* %XDI to i32*, !mcsema_real_eip !75
  %EDI_val.104 = load i32, i32* %EDI.103, !mcsema_real_eip !75
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !75
  store i32 %EDI_val.104, i32* %23, !mcsema_real_eip !75
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !76
  %24 = add i64 %RBP_val.105, -16, !mcsema_real_eip !76
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !76
  %ESI.106 = bitcast i64* %XSI to i32*, !mcsema_real_eip !76
  %ESI_val.107 = load i32, i32* %ESI.106, !mcsema_real_eip !76
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !76
  store i32 %ESI_val.107, i32* %26, !mcsema_real_eip !76
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !77
  %27 = add i64 %RBP_val.108, -20, !mcsema_real_eip !77
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !77
  %EDX.109 = bitcast i64* %XDX to i32*, !mcsema_real_eip !77
  %EDX_val.110 = load i32, i32* %EDX.109, !mcsema_real_eip !77
  %29 = inttoptr i64 %27 to i32*, !mcsema_real_eip !77
  store i32 %EDX_val.110, i32* %29, !mcsema_real_eip !77
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !78
  %30 = add i64 %RBP_val.111, -24, !mcsema_real_eip !78
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !78
  %ECX.112 = bitcast i64* %XCX to i32*, !mcsema_real_eip !78
  %ECX_val.113 = load i32, i32* %ECX.112, !mcsema_real_eip !78
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !78
  store i32 %ECX_val.113, i32* %32, !mcsema_real_eip !78
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !79
  %33 = add i64 %RBP_val.114, -28, !mcsema_real_eip !79
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !79
  %R8D.115 = bitcast i64* %R8 to i32*, !mcsema_real_eip !79
  %R8D_val.116 = load i32, i32* %R8D.115, !mcsema_real_eip !79
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !79
  store i32 %R8D_val.116, i32* %35, !mcsema_real_eip !79
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !80
  %36 = add i64 %RBP_val.117, -32, !mcsema_real_eip !80
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !80
  %R9D.118 = bitcast i64* %R9 to i32*, !mcsema_real_eip !80
  %R9D_val.119 = load i32, i32* %R9D.118, !mcsema_real_eip !80
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !80
  store i32 %R9D_val.119, i32* %38, !mcsema_real_eip !80
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !81
  %39 = add i64 %RBP_val.120, -36, !mcsema_real_eip !81
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !81
  %EBX.121 = bitcast i64* %XBX to i32*, !mcsema_real_eip !81
  %EBX_val.122 = load i32, i32* %EBX.121, !mcsema_real_eip !81
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !81
  store i32 %EBX_val.122, i32* %41, !mcsema_real_eip !81
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !82
  %42 = add i64 %RBP_val.123, -48, !mcsema_real_eip !82
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !82
  %R11_val.124 = load i64, i64* %R11, !mcsema_real_eip !82
  store i64 %R11_val.124, i64* %43, !mcsema_real_eip !82
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !83
  %44 = add i64 %RBP_val.125, -52, !mcsema_real_eip !83
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !83
  %R10D.126 = bitcast i64* %R10 to i32*, !mcsema_real_eip !83
  %R10D_val.127 = load i32, i32* %R10D.126, !mcsema_real_eip !83
  %46 = inttoptr i64 %44 to i32*, !mcsema_real_eip !83
  store i32 %R10D_val.127, i32* %46, !mcsema_real_eip !83
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !84
  %47 = add i64 %RBP_val.128, -64, !mcsema_real_eip !84
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !84
  %RAX_val.129 = load i64, i64* %XAX, !mcsema_real_eip !84
  store i64 %RAX_val.129, i64* %48, !mcsema_real_eip !84
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !85
  %49 = add i64 %RBP_val.130, -68, !mcsema_real_eip !85
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !85
  %51 = inttoptr i64 %49 to i32*, !mcsema_real_eip !85
  store i32 0, i32* %51, !mcsema_real_eip !85
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !86
  %52 = add i64 %RBP_val.131, -72, !mcsema_real_eip !86
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !86
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !86
  store i32 0, i32* %54, !mcsema_real_eip !86
  br label %block_0x45, !mcsema_real_eip !87

block_0x45:                                       ; preds = %block_0x51, %block_0x0
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !87
  %55 = add i64 %RBP_val.132, -72, !mcsema_real_eip !87
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !87
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !87
  %58 = load i32, i32* %57, !mcsema_real_eip !87
  %59 = zext i32 %58 to i64, !mcsema_real_eip !87
  store i64 %59, i64* %XAX, !mcsema_real_eip !87
  %60 = add i64 %RBP_val.132, -36, !mcsema_real_eip !88
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !88
  %EAX.134 = bitcast i64* %XAX to i32*, !mcsema_real_eip !88
  %EAX_val.135 = load i32, i32* %EAX.134, !mcsema_real_eip !88
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !88
  %63 = load i32, i32* %62, !mcsema_real_eip !88
  %64 = sub i32 %EAX_val.135, %63, !mcsema_real_eip !88
  %65 = xor i32 %64, %EAX_val.135, !mcsema_real_eip !88
  %66 = xor i32 %65, %63, !mcsema_real_eip !88
  %67 = and i32 %66, 16, !mcsema_real_eip !88
  %68 = icmp ne i32 %67, 0, !mcsema_real_eip !88
  store i1 %68, i1* %AF, !mcsema_real_eip !88
  %69 = trunc i32 %64 to i8, !mcsema_real_eip !88
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !88
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !88
  %72 = xor i1 %71, true, !mcsema_real_eip !88
  store i1 %72, i1* %PF, !mcsema_real_eip !88
  %73 = icmp eq i32 %64, 0, !mcsema_real_eip !88
  store i1 %73, i1* %ZF, !mcsema_real_eip !88
  %74 = lshr i32 %64, 31, !mcsema_real_eip !88
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !88
  store i1 %75, i1* %SF, !mcsema_real_eip !88
  %76 = icmp ult i32 %EAX_val.135, %63, !mcsema_real_eip !88
  store i1 %76, i1* %CF, !mcsema_real_eip !88
  %77 = xor i32 %EAX_val.135, %63, !mcsema_real_eip !88
  %78 = and i32 %77, %65, !mcsema_real_eip !88
  %79 = lshr i32 %78, 31, !mcsema_real_eip !88
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !88
  store i1 %80, i1* %OF, !mcsema_real_eip !88
  %81 = icmp eq i1 %75, %80, !mcsema_real_eip !89
  br i1 %81, label %block_0x7b, label %block_0x51, !mcsema_real_eip !89

block_0x51:                                       ; preds = %block_0x45
  %82 = add i64 %RBP_val.132, -48, !mcsema_real_eip !90
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !90
  %84 = load i64, i64* %83, !mcsema_real_eip !90
  store i64 %84, i64* %XAX, !mcsema_real_eip !90
  %85 = load i32, i32* %57, !mcsema_real_eip !91
  %86 = sext i32 %85 to i64, !mcsema_real_eip !91
  store i64 %86, i64* %XCX, !mcsema_real_eip !91
  %87 = mul i64 %86, 4, !mcsema_real_eip !92
  %88 = add i64 %84, %87, !mcsema_real_eip !92
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !92
  %90 = inttoptr i64 %88 to i32*, !mcsema_real_eip !92
  %91 = load i32, i32* %90, !mcsema_real_eip !92
  %92 = zext i32 %91 to i64, !mcsema_real_eip !92
  store i64 %92, i64* %XDX, !mcsema_real_eip !92
  %93 = add i64 %RBP_val.132, -64, !mcsema_real_eip !93
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !93
  %95 = load i64, i64* %94, !mcsema_real_eip !93
  store i64 %95, i64* %XAX, !mcsema_real_eip !93
  %96 = load i32, i32* %57, !mcsema_real_eip !94
  %97 = sext i32 %96 to i64, !mcsema_real_eip !94
  store i64 %97, i64* %XCX, !mcsema_real_eip !94
  %98 = mul i64 %97, 4, !mcsema_real_eip !95
  %99 = add i64 %95, %98, !mcsema_real_eip !95
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !95
  %EDX_val.169 = load i32, i32* %EDX.109, !mcsema_real_eip !95
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !95
  %102 = load i32, i32* %101, !mcsema_real_eip !95
  %103 = sub i32 %EDX_val.169, %102, !mcsema_real_eip !95
  %104 = xor i32 %103, %EDX_val.169, !mcsema_real_eip !95
  %105 = xor i32 %104, %102, !mcsema_real_eip !95
  %106 = and i32 %105, 16, !mcsema_real_eip !95
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !95
  store i1 %107, i1* %AF, !mcsema_real_eip !95
  %108 = trunc i32 %103 to i8, !mcsema_real_eip !95
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !95
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !95
  %111 = xor i1 %110, true, !mcsema_real_eip !95
  store i1 %111, i1* %PF, !mcsema_real_eip !95
  %112 = icmp eq i32 %103, 0, !mcsema_real_eip !95
  store i1 %112, i1* %ZF, !mcsema_real_eip !95
  %113 = lshr i32 %103, 31, !mcsema_real_eip !95
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !95
  store i1 %114, i1* %SF, !mcsema_real_eip !95
  %115 = icmp ult i32 %EDX_val.169, %102, !mcsema_real_eip !95
  store i1 %115, i1* %CF, !mcsema_real_eip !95
  %116 = xor i32 %EDX_val.169, %102, !mcsema_real_eip !95
  %117 = and i32 %116, %104, !mcsema_real_eip !95
  %118 = lshr i32 %117, 31, !mcsema_real_eip !95
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !95
  store i1 %119, i1* %OF, !mcsema_real_eip !95
  %120 = zext i32 %103 to i64, !mcsema_real_eip !95
  store i64 %120, i64* %XDX, !mcsema_real_eip !95
  %121 = add i64 %RBP_val.132, -68, !mcsema_real_eip !96
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !96
  %123 = inttoptr i64 %121 to i32*, !mcsema_real_eip !96
  %124 = load i32, i32* %123, !mcsema_real_eip !96
  %EDX_val.172 = load i32, i32* %EDX.109, !mcsema_real_eip !96
  %125 = add i32 %EDX_val.172, %124, !mcsema_real_eip !96
  %126 = xor i32 %125, %124, !mcsema_real_eip !96
  %127 = xor i32 %126, %EDX_val.172, !mcsema_real_eip !96
  %128 = and i32 %127, 16, !mcsema_real_eip !96
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !96
  store i1 %129, i1* %AF, !mcsema_real_eip !96
  %130 = lshr i32 %125, 31, !mcsema_real_eip !96
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !96
  store i1 %131, i1* %SF, !mcsema_real_eip !96
  %132 = icmp eq i32 %125, 0, !mcsema_real_eip !96
  store i1 %132, i1* %ZF, !mcsema_real_eip !96
  %133 = xor i32 %124, %EDX_val.172, !mcsema_real_eip !96
  %134 = xor i32 %133, -1, !mcsema_real_eip !96
  %135 = and i32 %134, %126, !mcsema_real_eip !96
  %136 = lshr i32 %135, 31, !mcsema_real_eip !96
  %137 = and i32 %136, 1, !mcsema_real_eip !96
  %138 = trunc i32 %137 to i1, !mcsema_real_eip !96
  store i1 %138, i1* %OF, !mcsema_real_eip !96
  %139 = trunc i32 %125 to i8, !mcsema_real_eip !96
  %140 = call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !96
  %141 = trunc i8 %140 to i1, !mcsema_real_eip !96
  %142 = xor i1 %141, true, !mcsema_real_eip !96
  store i1 %142, i1* %PF, !mcsema_real_eip !96
  %143 = icmp ult i32 %125, %124, !mcsema_real_eip !96
  store i1 %143, i1* %CF, !mcsema_real_eip !96
  %144 = zext i32 %125 to i64, !mcsema_real_eip !96
  store i64 %144, i64* %XDX, !mcsema_real_eip !96
  %EDX_val.175 = load i32, i32* %EDX.109, !mcsema_real_eip !97
  store i32 %EDX_val.175, i32* %123, !mcsema_real_eip !97
  %RBP_val.176 = load i64, i64* %XBP, !mcsema_real_eip !98
  %145 = add i64 %RBP_val.176, -72, !mcsema_real_eip !98
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !98
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !98
  %148 = load i32, i32* %147, !mcsema_real_eip !98
  %149 = zext i32 %148 to i64, !mcsema_real_eip !98
  store i64 %149, i64* %XAX, !mcsema_real_eip !98
  %EAX_val.178 = load i32, i32* %EAX.134, !mcsema_real_eip !99
  %150 = add i32 1, %EAX_val.178, !mcsema_real_eip !99
  %151 = xor i32 %150, %EAX_val.178, !mcsema_real_eip !99
  %152 = xor i32 %151, 1, !mcsema_real_eip !99
  %153 = and i32 %152, 16, !mcsema_real_eip !99
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !99
  store i1 %154, i1* %AF, !mcsema_real_eip !99
  %155 = lshr i32 %150, 31, !mcsema_real_eip !99
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !99
  store i1 %156, i1* %SF, !mcsema_real_eip !99
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !99
  store i1 %157, i1* %ZF, !mcsema_real_eip !99
  %158 = xor i32 %EAX_val.178, 1, !mcsema_real_eip !99
  %159 = xor i32 %158, -1, !mcsema_real_eip !99
  %160 = and i32 %159, %151, !mcsema_real_eip !99
  %161 = lshr i32 %160, 31, !mcsema_real_eip !99
  %162 = and i32 %161, 1, !mcsema_real_eip !99
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !99
  store i1 %163, i1* %OF, !mcsema_real_eip !99
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !99
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !99
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !99
  %167 = xor i1 %166, true, !mcsema_real_eip !99
  store i1 %167, i1* %PF, !mcsema_real_eip !99
  %168 = icmp ult i32 %150, %EAX_val.178, !mcsema_real_eip !99
  store i1 %168, i1* %CF, !mcsema_real_eip !99
  %169 = zext i32 %150 to i64, !mcsema_real_eip !99
  store i64 %169, i64* %XAX, !mcsema_real_eip !99
  %EAX_val.181 = load i32, i32* %EAX.134, !mcsema_real_eip !100
  store i32 %EAX_val.181, i32* %147, !mcsema_real_eip !100
  br label %block_0x45, !mcsema_real_eip !101

block_0x7b:                                       ; preds = %block_0x45
  %170 = add i64 %RBP_val.132, -68, !mcsema_real_eip !102
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !102
  %172 = inttoptr i64 %170 to i32*, !mcsema_real_eip !102
  %173 = load i32, i32* %172, !mcsema_real_eip !102
  %174 = zext i32 %173 to i64, !mcsema_real_eip !102
  store i64 %174, i64* %XAX, !mcsema_real_eip !102
  %175 = add i64 %RBP_val.132, -12, !mcsema_real_eip !103
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !103
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !103
  %178 = load i32, i32* %177, !mcsema_real_eip !103
  %179 = zext i32 %178 to i64, !mcsema_real_eip !103
  store i64 %179, i64* %XCX, !mcsema_real_eip !103
  %180 = add i64 %RBP_val.132, -16, !mcsema_real_eip !104
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !104
  %182 = inttoptr i64 %180 to i32*, !mcsema_real_eip !104
  %183 = load i32, i32* %182, !mcsema_real_eip !104
  %ECX_val.140 = load i32, i32* %ECX.112, !mcsema_real_eip !104
  %184 = add i32 %ECX_val.140, %183, !mcsema_real_eip !104
  %185 = xor i32 %184, %183, !mcsema_real_eip !104
  %186 = xor i32 %185, %ECX_val.140, !mcsema_real_eip !104
  %187 = and i32 %186, 16, !mcsema_real_eip !104
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !104
  store i1 %188, i1* %AF, !mcsema_real_eip !104
  %189 = lshr i32 %184, 31, !mcsema_real_eip !104
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !104
  store i1 %190, i1* %SF, !mcsema_real_eip !104
  %191 = icmp eq i32 %184, 0, !mcsema_real_eip !104
  store i1 %191, i1* %ZF, !mcsema_real_eip !104
  %192 = xor i32 %183, %ECX_val.140, !mcsema_real_eip !104
  %193 = xor i32 %192, -1, !mcsema_real_eip !104
  %194 = and i32 %193, %185, !mcsema_real_eip !104
  %195 = lshr i32 %194, 31, !mcsema_real_eip !104
  %196 = and i32 %195, 1, !mcsema_real_eip !104
  %197 = trunc i32 %196 to i1, !mcsema_real_eip !104
  store i1 %197, i1* %OF, !mcsema_real_eip !104
  %198 = trunc i32 %184 to i8, !mcsema_real_eip !104
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !104
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !104
  %201 = xor i1 %200, true, !mcsema_real_eip !104
  store i1 %201, i1* %PF, !mcsema_real_eip !104
  %202 = icmp ult i32 %184, %183, !mcsema_real_eip !104
  store i1 %202, i1* %CF, !mcsema_real_eip !104
  %203 = zext i32 %184 to i64, !mcsema_real_eip !104
  store i64 %203, i64* %XCX, !mcsema_real_eip !104
  %204 = add i64 %RBP_val.132, -20, !mcsema_real_eip !105
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !105
  %206 = inttoptr i64 %204 to i32*, !mcsema_real_eip !105
  %207 = load i32, i32* %206, !mcsema_real_eip !105
  %ECX_val.143 = load i32, i32* %ECX.112, !mcsema_real_eip !105
  %208 = add i32 %ECX_val.143, %207, !mcsema_real_eip !105
  %209 = xor i32 %208, %207, !mcsema_real_eip !105
  %210 = xor i32 %209, %ECX_val.143, !mcsema_real_eip !105
  %211 = and i32 %210, 16, !mcsema_real_eip !105
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !105
  store i1 %212, i1* %AF, !mcsema_real_eip !105
  %213 = lshr i32 %208, 31, !mcsema_real_eip !105
  %214 = trunc i32 %213 to i1, !mcsema_real_eip !105
  store i1 %214, i1* %SF, !mcsema_real_eip !105
  %215 = icmp eq i32 %208, 0, !mcsema_real_eip !105
  store i1 %215, i1* %ZF, !mcsema_real_eip !105
  %216 = xor i32 %207, %ECX_val.143, !mcsema_real_eip !105
  %217 = xor i32 %216, -1, !mcsema_real_eip !105
  %218 = and i32 %217, %209, !mcsema_real_eip !105
  %219 = lshr i32 %218, 31, !mcsema_real_eip !105
  %220 = and i32 %219, 1, !mcsema_real_eip !105
  %221 = trunc i32 %220 to i1, !mcsema_real_eip !105
  store i1 %221, i1* %OF, !mcsema_real_eip !105
  %222 = trunc i32 %208 to i8, !mcsema_real_eip !105
  %223 = call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !105
  %224 = trunc i8 %223 to i1, !mcsema_real_eip !105
  %225 = xor i1 %224, true, !mcsema_real_eip !105
  store i1 %225, i1* %PF, !mcsema_real_eip !105
  %226 = icmp ult i32 %208, %207, !mcsema_real_eip !105
  store i1 %226, i1* %CF, !mcsema_real_eip !105
  %227 = zext i32 %208 to i64, !mcsema_real_eip !105
  store i64 %227, i64* %XCX, !mcsema_real_eip !105
  %228 = add i64 %RBP_val.132, -24, !mcsema_real_eip !106
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !106
  %230 = inttoptr i64 %228 to i32*, !mcsema_real_eip !106
  %231 = load i32, i32* %230, !mcsema_real_eip !106
  %ECX_val.146 = load i32, i32* %ECX.112, !mcsema_real_eip !106
  %232 = add i32 %ECX_val.146, %231, !mcsema_real_eip !106
  %233 = xor i32 %232, %231, !mcsema_real_eip !106
  %234 = xor i32 %233, %ECX_val.146, !mcsema_real_eip !106
  %235 = and i32 %234, 16, !mcsema_real_eip !106
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !106
  store i1 %236, i1* %AF, !mcsema_real_eip !106
  %237 = lshr i32 %232, 31, !mcsema_real_eip !106
  %238 = trunc i32 %237 to i1, !mcsema_real_eip !106
  store i1 %238, i1* %SF, !mcsema_real_eip !106
  %239 = icmp eq i32 %232, 0, !mcsema_real_eip !106
  store i1 %239, i1* %ZF, !mcsema_real_eip !106
  %240 = xor i32 %231, %ECX_val.146, !mcsema_real_eip !106
  %241 = xor i32 %240, -1, !mcsema_real_eip !106
  %242 = and i32 %241, %233, !mcsema_real_eip !106
  %243 = lshr i32 %242, 31, !mcsema_real_eip !106
  %244 = and i32 %243, 1, !mcsema_real_eip !106
  %245 = trunc i32 %244 to i1, !mcsema_real_eip !106
  store i1 %245, i1* %OF, !mcsema_real_eip !106
  %246 = trunc i32 %232 to i8, !mcsema_real_eip !106
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !106
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !106
  %249 = xor i1 %248, true, !mcsema_real_eip !106
  store i1 %249, i1* %PF, !mcsema_real_eip !106
  %250 = icmp ult i32 %232, %231, !mcsema_real_eip !106
  store i1 %250, i1* %CF, !mcsema_real_eip !106
  %251 = zext i32 %232 to i64, !mcsema_real_eip !106
  store i64 %251, i64* %XCX, !mcsema_real_eip !106
  %252 = add i64 %RBP_val.132, -28, !mcsema_real_eip !107
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !107
  %254 = inttoptr i64 %252 to i32*, !mcsema_real_eip !107
  %255 = load i32, i32* %254, !mcsema_real_eip !107
  %ECX_val.149 = load i32, i32* %ECX.112, !mcsema_real_eip !107
  %256 = add i32 %ECX_val.149, %255, !mcsema_real_eip !107
  %257 = xor i32 %256, %255, !mcsema_real_eip !107
  %258 = xor i32 %257, %ECX_val.149, !mcsema_real_eip !107
  %259 = and i32 %258, 16, !mcsema_real_eip !107
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !107
  store i1 %260, i1* %AF, !mcsema_real_eip !107
  %261 = lshr i32 %256, 31, !mcsema_real_eip !107
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !107
  store i1 %262, i1* %SF, !mcsema_real_eip !107
  %263 = icmp eq i32 %256, 0, !mcsema_real_eip !107
  store i1 %263, i1* %ZF, !mcsema_real_eip !107
  %264 = xor i32 %255, %ECX_val.149, !mcsema_real_eip !107
  %265 = xor i32 %264, -1, !mcsema_real_eip !107
  %266 = and i32 %265, %257, !mcsema_real_eip !107
  %267 = lshr i32 %266, 31, !mcsema_real_eip !107
  %268 = and i32 %267, 1, !mcsema_real_eip !107
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !107
  store i1 %269, i1* %OF, !mcsema_real_eip !107
  %270 = trunc i32 %256 to i8, !mcsema_real_eip !107
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !107
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !107
  %273 = xor i1 %272, true, !mcsema_real_eip !107
  store i1 %273, i1* %PF, !mcsema_real_eip !107
  %274 = icmp ult i32 %256, %255, !mcsema_real_eip !107
  store i1 %274, i1* %CF, !mcsema_real_eip !107
  %275 = zext i32 %256 to i64, !mcsema_real_eip !107
  store i64 %275, i64* %XCX, !mcsema_real_eip !107
  %276 = add i64 %RBP_val.132, -32, !mcsema_real_eip !108
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !108
  %278 = inttoptr i64 %276 to i32*, !mcsema_real_eip !108
  %279 = load i32, i32* %278, !mcsema_real_eip !108
  %ECX_val.152 = load i32, i32* %ECX.112, !mcsema_real_eip !108
  %280 = add i32 %ECX_val.152, %279, !mcsema_real_eip !108
  %281 = xor i32 %280, %279, !mcsema_real_eip !108
  %282 = xor i32 %281, %ECX_val.152, !mcsema_real_eip !108
  %283 = and i32 %282, 16, !mcsema_real_eip !108
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !108
  store i1 %284, i1* %AF, !mcsema_real_eip !108
  %285 = lshr i32 %280, 31, !mcsema_real_eip !108
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !108
  store i1 %286, i1* %SF, !mcsema_real_eip !108
  %287 = icmp eq i32 %280, 0, !mcsema_real_eip !108
  store i1 %287, i1* %ZF, !mcsema_real_eip !108
  %288 = xor i32 %279, %ECX_val.152, !mcsema_real_eip !108
  %289 = xor i32 %288, -1, !mcsema_real_eip !108
  %290 = and i32 %289, %281, !mcsema_real_eip !108
  %291 = lshr i32 %290, 31, !mcsema_real_eip !108
  %292 = and i32 %291, 1, !mcsema_real_eip !108
  %293 = trunc i32 %292 to i1, !mcsema_real_eip !108
  store i1 %293, i1* %OF, !mcsema_real_eip !108
  %294 = trunc i32 %280 to i8, !mcsema_real_eip !108
  %295 = call i8 @llvm.ctpop.i8(i8 %294), !mcsema_real_eip !108
  %296 = trunc i8 %295 to i1, !mcsema_real_eip !108
  %297 = xor i1 %296, true, !mcsema_real_eip !108
  store i1 %297, i1* %PF, !mcsema_real_eip !108
  %298 = icmp ult i32 %280, %279, !mcsema_real_eip !108
  store i1 %298, i1* %CF, !mcsema_real_eip !108
  %299 = zext i32 %280 to i64, !mcsema_real_eip !108
  store i64 %299, i64* %XCX, !mcsema_real_eip !108
  %ECX_val.154 = load i32, i32* %ECX.112, !mcsema_real_eip !109
  %EAX_val.156 = load i32, i32* %EAX.134, !mcsema_real_eip !109
  %300 = sext i32 %EAX_val.156 to i64, !mcsema_real_eip !109
  %301 = sext i32 %ECX_val.154 to i64, !mcsema_real_eip !109
  %302 = mul i64 %300, %301, !mcsema_real_eip !109
  %303 = trunc i64 %302 to i32, !mcsema_real_eip !109
  %304 = sext i32 %303 to i64, !mcsema_real_eip !109
  %305 = icmp ne i64 %304, %302, !mcsema_real_eip !109
  %306 = icmp slt i32 %303, 0, !mcsema_real_eip !109
  store i1 %306, i1* %SF, !mcsema_real_eip !109
  store i1 %305, i1* %OF, !mcsema_real_eip !109
  store i1 %305, i1* %CF, !mcsema_real_eip !109
  %307 = zext i32 %303 to i64, !mcsema_real_eip !109
  store i64 %307, i64* %XAX, !mcsema_real_eip !109
  %RSP_val.157 = load i64, i64* %XSP, !mcsema_real_eip !110
  %308 = inttoptr i64 %RSP_val.157 to i64*, !mcsema_real_eip !110
  %309 = load i64, i64* %308, !mcsema_real_eip !110
  store i64 %309, i64* %XBX, !mcsema_real_eip !110
  %310 = add i64 %RSP_val.157, 8, !mcsema_real_eip !110
  store i64 %310, i64* %XSP, !mcsema_real_eip !110
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !111
  %312 = load i64, i64* %311, !mcsema_real_eip !111
  store i64 %312, i64* %XBP, !mcsema_real_eip !111
  %313 = add i64 %310, 8, !mcsema_real_eip !111
  store i64 %313, i64* %XSP, !mcsema_real_eip !111
  %314 = add i64 %313, 8, !mcsema_real_eip !112
  %315 = inttoptr i64 %313 to i64*, !mcsema_real_eip !112
  %316 = load i64, i64* %315, !mcsema_real_eip !112
  store i64 %316, i64* %XIP, !mcsema_real_eip !112
  store i64 %314, i64* %XSP, !mcsema_real_eip !112
  ret void, !mcsema_real_eip !112
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 112
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 112
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
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  br label %block_0xa0, !mcsema_real_eip !2

block_0xa0:                                       ; preds = %entry
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -96
  %2 = sub i64 %RSP_val.3, 96, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 96, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 96
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 96
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 40, i64* %XAX, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !6
  %14 = zext i32 %EAX_val.5 to i64, !mcsema_real_eip !6
  store i64 %14, i64* %XCX, !mcsema_real_eip !6
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !7
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %16, !mcsema_real_eip !7
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EDI.8 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.9 = load i32, i32* %EDI.8, !mcsema_real_eip !8
  %17 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !8
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.9, i32* %18, !mcsema_real_eip !8
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %RSI_val.11 = load i64, i64* %XSI, !mcsema_real_eip !9
  store i64 %RSI_val.11, i64* %_allin_new_bt_21, !mcsema_real_eip !9
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !10
  store i64 %RCX_val.12, i64* %XDI, !mcsema_real_eip !10
  %_load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_22, i64 -8
  %19 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, !mcsema_real_eip !11
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %19, i64* %XSP, !mcsema_real_eip !11
  %20 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.12)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %20, i64* %XAX, !mcsema_real_eip !11
  store i64 40, i64* %XDX, !mcsema_real_eip !12
  %EDX.15 = bitcast i64* %XDX to i32*, !mcsema_real_eip !13
  %EDX_val.16 = load i32, i32* %EDX.15, !mcsema_real_eip !13
  %21 = zext i32 %EDX_val.16 to i64, !mcsema_real_eip !13
  store i64 %21, i64* %XDI, !mcsema_real_eip !13
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 %20, i64* %_allin_new_bt_27, !mcsema_real_eip !14
  %RDI_val.19 = load i64, i64* %XDI, !mcsema_real_eip !15
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.20 = load i64, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %22 = sub i64 %RSP_val.20, 8, !mcsema_real_eip !15
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !15
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %22, i64* %XSP, !mcsema_real_eip !15
  %23 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.19)
  %_rsp_fix_149 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_150 = getelementptr i8, i8* %_rsp_fix_149, i64 8
  store i8* %_gep_fix_150, i8** %_RSP_ptr_
  store i64 %23, i64* %XAX, !mcsema_real_eip !15
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -32
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %23, i64* %_allin_new_bt_33, !mcsema_real_eip !16
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -36
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !17
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !17
  store i32 0, i32* %25, !mcsema_real_eip !17
  br label %block_0xe0, !mcsema_real_eip !18

block_0xe0:                                       ; preds = %107, %block_0xa0
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -36
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !18
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !18
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %27 to i8*
  %_offset_above_rbp_ = sub i64 %26, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %28, label %29

; <label>:28:                                     ; preds = %block_0xe0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %29

; <label>:29:                                     ; preds = %block_0xe0, %28
  %30 = phi i32* [ %27, %block_0xe0 ], [ %_address_in_parent_stack_bt_, %28 ]
  %_new_load_ = load i32, i32* %30
  %31 = sub i32 %_new_load_, 10, !mcsema_real_eip !18
  %32 = xor i32 %31, %_new_load_, !mcsema_real_eip !18
  %33 = xor i32 %32, 10, !mcsema_real_eip !18
  %34 = and i32 %33, 16, !mcsema_real_eip !18
  %35 = icmp ne i32 %34, 0, !mcsema_real_eip !18
  store i1 %35, i1* %AF, !mcsema_real_eip !18
  %36 = trunc i32 %31 to i8, !mcsema_real_eip !18
  %37 = call i8 @llvm.ctpop.i8(i8 %36), !mcsema_real_eip !18
  %38 = trunc i8 %37 to i1, !mcsema_real_eip !18
  %39 = xor i1 %38, true, !mcsema_real_eip !18
  store i1 %39, i1* %PF, !mcsema_real_eip !18
  %40 = icmp eq i32 %31, 0, !mcsema_real_eip !18
  store i1 %40, i1* %ZF, !mcsema_real_eip !18
  %41 = lshr i32 %31, 31, !mcsema_real_eip !18
  %42 = trunc i32 %41 to i1, !mcsema_real_eip !18
  store i1 %42, i1* %SF, !mcsema_real_eip !18
  %43 = icmp ult i32 %_new_load_, 10, !mcsema_real_eip !18
  store i1 %43, i1* %CF, !mcsema_real_eip !18
  %44 = xor i32 %_new_load_, 10, !mcsema_real_eip !18
  %45 = and i32 %44, %32, !mcsema_real_eip !18
  %46 = lshr i32 %45, 31, !mcsema_real_eip !18
  %47 = trunc i32 %46 to i1, !mcsema_real_eip !18
  store i1 %47, i1* %OF, !mcsema_real_eip !18
  %48 = icmp eq i1 %42, %47, !mcsema_real_eip !19
  br i1 %48, label %block_0x10c, label %block_0xea, !mcsema_real_eip !19

block_0xea:                                       ; preds = %29
  br i1 %_cond1_n_cond2_cond3_, label %49, label %50

; <label>:49:                                     ; preds = %block_0xea
  %_address_in_parent_stack_bt_170 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %50

; <label>:50:                                     ; preds = %block_0xea, %49
  %51 = phi i32* [ %27, %block_0xea ], [ %_address_in_parent_stack_bt_170, %49 ]
  %_new_load_171 = load i32, i32* %51
  %52 = zext i32 %_new_load_171 to i64, !mcsema_real_eip !20
  store i64 %52, i64* %XAX, !mcsema_real_eip !20
  %EAX_val.28 = load i32, i32* %EAX.4, !mcsema_real_eip !21
  %53 = add i32 10, %EAX_val.28, !mcsema_real_eip !21
  %54 = xor i32 %53, %EAX_val.28, !mcsema_real_eip !21
  %55 = xor i32 %54, 10, !mcsema_real_eip !21
  %56 = and i32 %55, 16, !mcsema_real_eip !21
  %57 = icmp ne i32 %56, 0, !mcsema_real_eip !21
  store i1 %57, i1* %AF, !mcsema_real_eip !21
  %58 = lshr i32 %53, 31, !mcsema_real_eip !21
  %59 = trunc i32 %58 to i1, !mcsema_real_eip !21
  store i1 %59, i1* %SF, !mcsema_real_eip !21
  %60 = icmp eq i32 %53, 0, !mcsema_real_eip !21
  store i1 %60, i1* %ZF, !mcsema_real_eip !21
  %61 = xor i32 %EAX_val.28, 10, !mcsema_real_eip !21
  %62 = xor i32 %61, -1, !mcsema_real_eip !21
  %63 = and i32 %62, %54, !mcsema_real_eip !21
  %64 = lshr i32 %63, 31, !mcsema_real_eip !21
  %65 = and i32 %64, 1, !mcsema_real_eip !21
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !21
  store i1 %66, i1* %OF, !mcsema_real_eip !21
  %67 = trunc i32 %53 to i8, !mcsema_real_eip !21
  %68 = call i8 @llvm.ctpop.i8(i8 %67), !mcsema_real_eip !21
  %69 = trunc i8 %68 to i1, !mcsema_real_eip !21
  %70 = xor i1 %69, true, !mcsema_real_eip !21
  store i1 %70, i1* %PF, !mcsema_real_eip !21
  %71 = icmp ult i32 %53, %EAX_val.28, !mcsema_real_eip !21
  store i1 %71, i1* %CF, !mcsema_real_eip !21
  %72 = zext i32 %53 to i64, !mcsema_real_eip !21
  store i64 %72, i64* %XAX, !mcsema_real_eip !21
  %EAX_val.30 = load i32, i32* %EAX.4, !mcsema_real_eip !22
  %73 = add i32 1, %EAX_val.30, !mcsema_real_eip !22
  %74 = xor i32 %73, %EAX_val.30, !mcsema_real_eip !22
  %75 = xor i32 %74, 1, !mcsema_real_eip !22
  %76 = and i32 %75, 16, !mcsema_real_eip !22
  %77 = icmp ne i32 %76, 0, !mcsema_real_eip !22
  store i1 %77, i1* %AF, !mcsema_real_eip !22
  %78 = lshr i32 %73, 31, !mcsema_real_eip !22
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !22
  store i1 %79, i1* %SF, !mcsema_real_eip !22
  %80 = icmp eq i32 %73, 0, !mcsema_real_eip !22
  store i1 %80, i1* %ZF, !mcsema_real_eip !22
  %81 = xor i32 %EAX_val.30, 1, !mcsema_real_eip !22
  %82 = xor i32 %81, -1, !mcsema_real_eip !22
  %83 = and i32 %82, %74, !mcsema_real_eip !22
  %84 = lshr i32 %83, 31, !mcsema_real_eip !22
  %85 = and i32 %84, 1, !mcsema_real_eip !22
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !22
  store i1 %86, i1* %OF, !mcsema_real_eip !22
  %87 = trunc i32 %73 to i8, !mcsema_real_eip !22
  %88 = call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !22
  %89 = trunc i8 %88 to i1, !mcsema_real_eip !22
  %90 = xor i1 %89, true, !mcsema_real_eip !22
  store i1 %90, i1* %PF, !mcsema_real_eip !22
  %91 = icmp ult i32 %73, %EAX_val.30, !mcsema_real_eip !22
  store i1 %91, i1* %CF, !mcsema_real_eip !22
  %92 = zext i32 %73 to i64, !mcsema_real_eip !22
  store i64 %92, i64* %XAX, !mcsema_real_eip !22
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_172 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_175 = sub i64 %_ptr_to_int_172, %_local_end_to_int_
  %_pot_address_in_parent_stack_176 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_175
  %_cond1_177 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_178 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_179 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_180 = or i1 %_cond2_1_178, %_cond2_2_179
  %_cond4_181 = icmp ule i8* %_pot_address_in_parent_stack_176, %_parent_stack_end_ptr_
  %_cond1_n_cond2_182 = and i1 %_cond1_177, %_cond2_180
  %_cond1_n_cond2_cond3_183 = and i1 %_cond1_n_cond2_182, %_cond4_181
  br i1 %_cond1_n_cond2_cond3_183, label %93, label %94

; <label>:93:                                     ; preds = %50
  %_address_in_parent_stack_bt_185 = bitcast i8* %_pot_address_in_parent_stack_176 to i64*
  br label %94

; <label>:94:                                     ; preds = %50, %93
  %95 = phi i64* [ %_allin_new_bt_45, %50 ], [ %_address_in_parent_stack_bt_185, %93 ]
  %_new_load_186 = load i64, i64* %95
  store i64 %_new_load_186, i64* %XCX, !mcsema_real_eip !23
  br i1 %_cond1_n_cond2_cond3_, label %96, label %97

; <label>:96:                                     ; preds = %94
  %_address_in_parent_stack_bt_200 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %97

; <label>:97:                                     ; preds = %94, %96
  %98 = phi i32* [ %27, %94 ], [ %_address_in_parent_stack_bt_200, %96 ]
  %_new_load_201 = load i32, i32* %98
  %99 = sext i32 %_new_load_201 to i64, !mcsema_real_eip !24
  store i64 %99, i64* %XDX, !mcsema_real_eip !24
  %100 = mul i64 %99, 4, !mcsema_real_eip !25
  %101 = add i64 %_new_load_186, %100, !mcsema_real_eip !25
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !25
  %EAX_val.36 = load i32, i32* %EAX.4, !mcsema_real_eip !25
  %103 = inttoptr i64 %101 to i32*, !mcsema_real_eip !25
  store i32 %EAX_val.36, i32* %103, !mcsema_real_eip !25
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -36
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %104 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !26
  %105 = inttoptr i64 %104 to i32*, !mcsema_real_eip !26
  %_ptr_bt_204 = bitcast i32* %105 to i8*
  %_offset_above_rbp_205 = sub i64 %104, %_local_end_to_int_
  %_pot_address_in_parent_stack_206 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_cond1_207 = icmp ugt i8* %_ptr_bt_204, %_local_stack_end_ptr_
  %_cond2_1_208 = icmp ugt i8* %_ptr_bt_204, %_parent_stack_end_ptr_
  %_cond2_2_209 = icmp ult i8* %_ptr_bt_204, %_parent_stack_start_ptr_
  %_cond2_210 = or i1 %_cond2_1_208, %_cond2_2_209
  %_cond4_211 = icmp ule i8* %_pot_address_in_parent_stack_206, %_parent_stack_end_ptr_
  %_cond1_n_cond2_212 = and i1 %_cond1_207, %_cond2_210
  %_cond1_n_cond2_cond3_213 = and i1 %_cond1_n_cond2_212, %_cond4_211
  br i1 %_cond1_n_cond2_cond3_213, label %106, label %107

; <label>:106:                                    ; preds = %97
  %_address_in_parent_stack_bt_215 = bitcast i8* %_pot_address_in_parent_stack_206 to i32*
  br label %107

; <label>:107:                                    ; preds = %97, %106
  %108 = phi i32* [ %105, %97 ], [ %_address_in_parent_stack_bt_215, %106 ]
  %_new_load_216 = load i32, i32* %108
  %109 = zext i32 %_new_load_216 to i64, !mcsema_real_eip !26
  store i64 %109, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.39 = load i32, i32* %EAX.4, !mcsema_real_eip !27
  %110 = add i32 1, %EAX_val.39, !mcsema_real_eip !27
  %111 = xor i32 %110, %EAX_val.39, !mcsema_real_eip !27
  %112 = xor i32 %111, 1, !mcsema_real_eip !27
  %113 = and i32 %112, 16, !mcsema_real_eip !27
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !27
  store i1 %114, i1* %AF, !mcsema_real_eip !27
  %115 = lshr i32 %110, 31, !mcsema_real_eip !27
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !27
  store i1 %116, i1* %SF, !mcsema_real_eip !27
  %117 = icmp eq i32 %110, 0, !mcsema_real_eip !27
  store i1 %117, i1* %ZF, !mcsema_real_eip !27
  %118 = xor i32 %EAX_val.39, 1, !mcsema_real_eip !27
  %119 = xor i32 %118, -1, !mcsema_real_eip !27
  %120 = and i32 %119, %111, !mcsema_real_eip !27
  %121 = lshr i32 %120, 31, !mcsema_real_eip !27
  %122 = and i32 %121, 1, !mcsema_real_eip !27
  %123 = trunc i32 %122 to i1, !mcsema_real_eip !27
  store i1 %123, i1* %OF, !mcsema_real_eip !27
  %124 = trunc i32 %110 to i8, !mcsema_real_eip !27
  %125 = call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !27
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !27
  %127 = xor i1 %126, true, !mcsema_real_eip !27
  store i1 %127, i1* %PF, !mcsema_real_eip !27
  %128 = icmp ult i32 %110, %EAX_val.39, !mcsema_real_eip !27
  store i1 %128, i1* %CF, !mcsema_real_eip !27
  %129 = zext i32 %110 to i64, !mcsema_real_eip !27
  store i64 %129, i64* %XAX, !mcsema_real_eip !27
  %EAX_val.42 = load i32, i32* %EAX.4, !mcsema_real_eip !28
  store i32 %EAX_val.42, i32* %105, !mcsema_real_eip !28
  br label %block_0xe0, !mcsema_real_eip !29

block_0x10c:                                      ; preds = %29
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -40
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %130 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !30
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !30
  store i32 0, i32* %131, !mcsema_real_eip !30
  br label %block_0x113, !mcsema_real_eip !20

block_0x113:                                      ; preds = %193, %block_0x10c
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -40
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %132 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !31
  %133 = inttoptr i64 %132 to i32*, !mcsema_real_eip !31
  %_ptr_bt_219 = bitcast i32* %133 to i8*
  %_offset_above_rbp_220 = sub i64 %132, %_local_end_to_int_
  %_pot_address_in_parent_stack_221 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_cond1_222 = icmp ugt i8* %_ptr_bt_219, %_local_stack_end_ptr_
  %_cond2_1_223 = icmp ugt i8* %_ptr_bt_219, %_parent_stack_end_ptr_
  %_cond2_2_224 = icmp ult i8* %_ptr_bt_219, %_parent_stack_start_ptr_
  %_cond2_225 = or i1 %_cond2_1_223, %_cond2_2_224
  %_cond4_226 = icmp ule i8* %_pot_address_in_parent_stack_221, %_parent_stack_end_ptr_
  %_cond1_n_cond2_227 = and i1 %_cond1_222, %_cond2_225
  %_cond1_n_cond2_cond3_228 = and i1 %_cond1_n_cond2_227, %_cond4_226
  br i1 %_cond1_n_cond2_cond3_228, label %134, label %135

; <label>:134:                                    ; preds = %block_0x113
  %_address_in_parent_stack_bt_230 = bitcast i8* %_pot_address_in_parent_stack_221 to i32*
  br label %135

; <label>:135:                                    ; preds = %block_0x113, %134
  %136 = phi i32* [ %133, %block_0x113 ], [ %_address_in_parent_stack_bt_230, %134 ]
  %_new_load_231 = load i32, i32* %136
  %137 = sub i32 %_new_load_231, 10, !mcsema_real_eip !31
  %138 = xor i32 %137, %_new_load_231, !mcsema_real_eip !31
  %139 = xor i32 %138, 10, !mcsema_real_eip !31
  %140 = and i32 %139, 16, !mcsema_real_eip !31
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !31
  store i1 %141, i1* %AF, !mcsema_real_eip !31
  %142 = trunc i32 %137 to i8, !mcsema_real_eip !31
  %143 = call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !31
  %144 = trunc i8 %143 to i1, !mcsema_real_eip !31
  %145 = xor i1 %144, true, !mcsema_real_eip !31
  store i1 %145, i1* %PF, !mcsema_real_eip !31
  %146 = icmp eq i32 %137, 0, !mcsema_real_eip !31
  store i1 %146, i1* %ZF, !mcsema_real_eip !31
  %147 = lshr i32 %137, 31, !mcsema_real_eip !31
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !31
  store i1 %148, i1* %SF, !mcsema_real_eip !31
  %149 = icmp ult i32 %_new_load_231, 10, !mcsema_real_eip !31
  store i1 %149, i1* %CF, !mcsema_real_eip !31
  %150 = xor i32 %_new_load_231, 10, !mcsema_real_eip !31
  %151 = and i32 %150, %138, !mcsema_real_eip !31
  %152 = lshr i32 %151, 31, !mcsema_real_eip !31
  %153 = trunc i32 %152 to i1, !mcsema_real_eip !31
  store i1 %153, i1* %OF, !mcsema_real_eip !31
  %154 = icmp eq i1 %148, %153, !mcsema_real_eip !32
  br i1 %154, label %block_0x13c, label %block_0x11d, !mcsema_real_eip !32

block_0x11d:                                      ; preds = %135
  br i1 %_cond1_n_cond2_cond3_228, label %155, label %156

; <label>:155:                                    ; preds = %block_0x11d
  %_address_in_parent_stack_bt_245 = bitcast i8* %_pot_address_in_parent_stack_221 to i32*
  br label %156

; <label>:156:                                    ; preds = %block_0x11d, %155
  %157 = phi i32* [ %133, %block_0x11d ], [ %_address_in_parent_stack_bt_245, %155 ]
  %_new_load_246 = load i32, i32* %157
  %158 = zext i32 %_new_load_246 to i64, !mcsema_real_eip !33
  store i64 %158, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.80 = load i32, i32* %EAX.4, !mcsema_real_eip !34
  %159 = add i32 1, %EAX_val.80, !mcsema_real_eip !34
  %160 = xor i32 %159, %EAX_val.80, !mcsema_real_eip !34
  %161 = xor i32 %160, 1, !mcsema_real_eip !34
  %162 = and i32 %161, 16, !mcsema_real_eip !34
  %163 = icmp ne i32 %162, 0, !mcsema_real_eip !34
  store i1 %163, i1* %AF, !mcsema_real_eip !34
  %164 = lshr i32 %159, 31, !mcsema_real_eip !34
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !34
  store i1 %165, i1* %SF, !mcsema_real_eip !34
  %166 = icmp eq i32 %159, 0, !mcsema_real_eip !34
  store i1 %166, i1* %ZF, !mcsema_real_eip !34
  %167 = xor i32 %EAX_val.80, 1, !mcsema_real_eip !34
  %168 = xor i32 %167, -1, !mcsema_real_eip !34
  %169 = and i32 %168, %160, !mcsema_real_eip !34
  %170 = lshr i32 %169, 31, !mcsema_real_eip !34
  %171 = and i32 %170, 1, !mcsema_real_eip !34
  %172 = trunc i32 %171 to i1, !mcsema_real_eip !34
  store i1 %172, i1* %OF, !mcsema_real_eip !34
  %173 = trunc i32 %159 to i8, !mcsema_real_eip !34
  %174 = call i8 @llvm.ctpop.i8(i8 %173), !mcsema_real_eip !34
  %175 = trunc i8 %174 to i1, !mcsema_real_eip !34
  %176 = xor i1 %175, true, !mcsema_real_eip !34
  store i1 %176, i1* %PF, !mcsema_real_eip !34
  %177 = icmp ult i32 %159, %EAX_val.80, !mcsema_real_eip !34
  store i1 %177, i1* %CF, !mcsema_real_eip !34
  %178 = zext i32 %159 to i64, !mcsema_real_eip !34
  store i64 %178, i64* %XAX, !mcsema_real_eip !34
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -32
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %_ptr_to_int_247 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %_local_end_to_int_
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  br i1 %_cond1_n_cond2_cond3_258, label %179, label %180

; <label>:179:                                    ; preds = %156
  %_address_in_parent_stack_bt_260 = bitcast i8* %_pot_address_in_parent_stack_251 to i64*
  br label %180

; <label>:180:                                    ; preds = %156, %179
  %181 = phi i64* [ %_allin_new_bt_66, %156 ], [ %_address_in_parent_stack_bt_260, %179 ]
  %_new_load_261 = load i64, i64* %181
  store i64 %_new_load_261, i64* %XCX, !mcsema_real_eip !35
  br i1 %_cond1_n_cond2_cond3_228, label %182, label %183

; <label>:182:                                    ; preds = %180
  %_address_in_parent_stack_bt_275 = bitcast i8* %_pot_address_in_parent_stack_221 to i32*
  br label %183

; <label>:183:                                    ; preds = %180, %182
  %184 = phi i32* [ %133, %180 ], [ %_address_in_parent_stack_bt_275, %182 ]
  %_new_load_276 = load i32, i32* %184
  %185 = sext i32 %_new_load_276 to i64, !mcsema_real_eip !36
  store i64 %185, i64* %XDX, !mcsema_real_eip !36
  %186 = mul i64 %185, 4, !mcsema_real_eip !37
  %187 = add i64 %_new_load_261, %186, !mcsema_real_eip !37
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !37
  %EAX_val.86 = load i32, i32* %EAX.4, !mcsema_real_eip !37
  %189 = inttoptr i64 %187 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.86, i32* %189, !mcsema_real_eip !37
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -40
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %190 = ptrtoint i64* %_allin_new_bt_72 to i64, !mcsema_real_eip !38
  %191 = inttoptr i64 %190 to i32*, !mcsema_real_eip !38
  %_ptr_bt_279 = bitcast i32* %191 to i8*
  %_offset_above_rbp_280 = sub i64 %190, %_local_end_to_int_
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_ptr_bt_279, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_ptr_bt_279, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_ptr_bt_279, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  br i1 %_cond1_n_cond2_cond3_288, label %192, label %193

; <label>:192:                                    ; preds = %183
  %_address_in_parent_stack_bt_290 = bitcast i8* %_pot_address_in_parent_stack_281 to i32*
  br label %193

; <label>:193:                                    ; preds = %183, %192
  %194 = phi i32* [ %191, %183 ], [ %_address_in_parent_stack_bt_290, %192 ]
  %_new_load_291 = load i32, i32* %194
  %195 = zext i32 %_new_load_291 to i64, !mcsema_real_eip !38
  store i64 %195, i64* %XAX, !mcsema_real_eip !38
  %EAX_val.89 = load i32, i32* %EAX.4, !mcsema_real_eip !39
  %196 = add i32 1, %EAX_val.89, !mcsema_real_eip !39
  %197 = xor i32 %196, %EAX_val.89, !mcsema_real_eip !39
  %198 = xor i32 %197, 1, !mcsema_real_eip !39
  %199 = and i32 %198, 16, !mcsema_real_eip !39
  %200 = icmp ne i32 %199, 0, !mcsema_real_eip !39
  store i1 %200, i1* %AF, !mcsema_real_eip !39
  %201 = lshr i32 %196, 31, !mcsema_real_eip !39
  %202 = trunc i32 %201 to i1, !mcsema_real_eip !39
  store i1 %202, i1* %SF, !mcsema_real_eip !39
  %203 = icmp eq i32 %196, 0, !mcsema_real_eip !39
  store i1 %203, i1* %ZF, !mcsema_real_eip !39
  %204 = xor i32 %EAX_val.89, 1, !mcsema_real_eip !39
  %205 = xor i32 %204, -1, !mcsema_real_eip !39
  %206 = and i32 %205, %197, !mcsema_real_eip !39
  %207 = lshr i32 %206, 31, !mcsema_real_eip !39
  %208 = and i32 %207, 1, !mcsema_real_eip !39
  %209 = trunc i32 %208 to i1, !mcsema_real_eip !39
  store i1 %209, i1* %OF, !mcsema_real_eip !39
  %210 = trunc i32 %196 to i8, !mcsema_real_eip !39
  %211 = call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !39
  %212 = trunc i8 %211 to i1, !mcsema_real_eip !39
  %213 = xor i1 %212, true, !mcsema_real_eip !39
  store i1 %213, i1* %PF, !mcsema_real_eip !39
  %214 = icmp ult i32 %196, %EAX_val.89, !mcsema_real_eip !39
  store i1 %214, i1* %CF, !mcsema_real_eip !39
  %215 = zext i32 %196 to i64, !mcsema_real_eip !39
  store i64 %215, i64* %XAX, !mcsema_real_eip !39
  %EAX_val.92 = load i32, i32* %EAX.4, !mcsema_real_eip !40
  store i32 %EAX_val.92, i32* %191, !mcsema_real_eip !40
  br label %block_0x113, !mcsema_real_eip !41

block_0x13c:                                      ; preds = %135
  store i64 100, i64* %XDI, !mcsema_real_eip !42
  store i64 200, i64* %XSI, !mcsema_real_eip !43
  store i64 300, i64* %XDX, !mcsema_real_eip !44
  store i64 400, i64* %XCX, !mcsema_real_eip !45
  store i64 500, i64* %R8, !mcsema_real_eip !46
  store i64 600, i64* %R9, !mcsema_real_eip !47
  store i64 10, i64* %XAX, !mcsema_real_eip !48
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -24
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %_ptr_to_int_292 = ptrtoint i64* %_allin_new_bt_78 to i64
  %_offset_above_rbp_295 = sub i64 %_ptr_to_int_292, %_local_end_to_int_
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_new_gep_77, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_new_gep_77, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_new_gep_77, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  br i1 %_cond1_n_cond2_cond3_303, label %216, label %217

; <label>:216:                                    ; preds = %block_0x13c
  %_address_in_parent_stack_bt_305 = bitcast i8* %_pot_address_in_parent_stack_296 to i64*
  br label %217

; <label>:217:                                    ; preds = %block_0x13c, %216
  %218 = phi i64* [ %_allin_new_bt_78, %block_0x13c ], [ %_address_in_parent_stack_bt_305, %216 ]
  %_new_load_306 = load i64, i64* %218
  store i64 %_new_load_306, i64* %R10, !mcsema_real_eip !49
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -32
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %_ptr_to_int_307 = ptrtoint i64* %_allin_new_bt_81 to i64
  %_offset_above_rbp_310 = sub i64 %_ptr_to_int_307, %_local_end_to_int_
  %_pot_address_in_parent_stack_311 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_310
  %_cond1_312 = icmp ugt i8* %_new_gep_80, %_local_stack_end_ptr_
  %_cond2_1_313 = icmp ugt i8* %_new_gep_80, %_parent_stack_end_ptr_
  %_cond2_2_314 = icmp ult i8* %_new_gep_80, %_parent_stack_start_ptr_
  %_cond2_315 = or i1 %_cond2_1_313, %_cond2_2_314
  %_cond4_316 = icmp ule i8* %_pot_address_in_parent_stack_311, %_parent_stack_end_ptr_
  %_cond1_n_cond2_317 = and i1 %_cond1_312, %_cond2_315
  %_cond1_n_cond2_cond3_318 = and i1 %_cond1_n_cond2_317, %_cond4_316
  br i1 %_cond1_n_cond2_cond3_318, label %219, label %220

; <label>:219:                                    ; preds = %217
  %_address_in_parent_stack_bt_320 = bitcast i8* %_pot_address_in_parent_stack_311 to i64*
  br label %220

; <label>:220:                                    ; preds = %217, %219
  %221 = phi i64* [ %_allin_new_bt_81, %217 ], [ %_address_in_parent_stack_bt_320, %219 ]
  %_new_load_321 = load i64, i64* %221
  store i64 %_new_load_321, i64* %R11, !mcsema_real_eip !50
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_84 = bitcast i8* %_load_rsp_ptr_82 to i64*
  %222 = ptrtoint i64* %_allin_new_bt_84 to i64, !mcsema_real_eip !51
  %223 = inttoptr i64 %222 to i32*, !mcsema_real_eip !51
  store i32 10, i32* %223, !mcsema_real_eip !51
  %_load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_
  %_new_gep_86 = getelementptr i8, i8* %_load_rsp_ptr_85, i64 8
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %R10_val.48 = load i64, i64* %R10, !mcsema_real_eip !52
  store i64 %R10_val.48, i64* %_allin_new_bt_87, !mcsema_real_eip !52
  %_load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_
  %_new_gep_89 = getelementptr i8, i8* %_load_rsp_ptr_88, i64 16
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %224 = ptrtoint i64* %_allin_new_bt_90 to i64, !mcsema_real_eip !53
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !53
  store i32 10, i32* %225, !mcsema_real_eip !53
  %_load_rsp_ptr_91 = load i8*, i8** %_RSP_ptr_
  %_new_gep_92 = getelementptr i8, i8* %_load_rsp_ptr_91, i64 24
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %R11_val.51 = load i64, i64* %R11, !mcsema_real_eip !54
  store i64 %R11_val.51, i64* %_allin_new_bt_93, !mcsema_real_eip !54
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -48
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %EAX_val.54 = load i32, i32* %EAX.4, !mcsema_real_eip !55
  %226 = ptrtoint i64* %_allin_new_bt_96 to i64, !mcsema_real_eip !55
  %227 = inttoptr i64 %226 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.54, i32* %227, !mcsema_real_eip !55
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !56
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 -8
  %228 = sub i64 %RSP_val.55, 8, !mcsema_real_eip !56
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, !mcsema_real_eip !56
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_
  store i64 %228, i64* %XSP, !mcsema_real_eip !56
  %_load_rbp_ptr_151 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_151)
  %_rsp_fix_153 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_154 = getelementptr i8, i8* %_rsp_fix_153, i64 8
  store i8* %_gep_fix_154, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x1af to i64), i64* %XDI, !mcsema_real_eip !57
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -44
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %EAX_val.58 = load i32, i32* %EAX.4, !mcsema_real_eip !58
  %229 = ptrtoint i64* %_allin_new_bt_102 to i64, !mcsema_real_eip !58
  %230 = inttoptr i64 %229 to i32*, !mcsema_real_eip !58
  store i32 %EAX_val.58, i32* %230, !mcsema_real_eip !58
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -44
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %231 = ptrtoint i64* %_allin_new_bt_105 to i64, !mcsema_real_eip !59
  %232 = inttoptr i64 %231 to i32*, !mcsema_real_eip !59
  %_ptr_bt_324 = bitcast i32* %232 to i8*
  %_offset_above_rbp_325 = sub i64 %231, %_local_end_to_int_
  %_pot_address_in_parent_stack_326 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_325
  %_cond1_327 = icmp ugt i8* %_ptr_bt_324, %_local_stack_end_ptr_
  %_cond2_1_328 = icmp ugt i8* %_ptr_bt_324, %_parent_stack_end_ptr_
  %_cond2_2_329 = icmp ult i8* %_ptr_bt_324, %_parent_stack_start_ptr_
  %_cond2_330 = or i1 %_cond2_1_328, %_cond2_2_329
  %_cond4_331 = icmp ule i8* %_pot_address_in_parent_stack_326, %_parent_stack_end_ptr_
  %_cond1_n_cond2_332 = and i1 %_cond1_327, %_cond2_330
  %_cond1_n_cond2_cond3_333 = and i1 %_cond1_n_cond2_332, %_cond4_331
  br i1 %_cond1_n_cond2_cond3_333, label %233, label %234

; <label>:233:                                    ; preds = %220
  %_address_in_parent_stack_bt_335 = bitcast i8* %_pot_address_in_parent_stack_326 to i32*
  br label %234

; <label>:234:                                    ; preds = %220, %233
  %235 = phi i32* [ %232, %220 ], [ %_address_in_parent_stack_bt_335, %233 ]
  %_new_load_336 = load i32, i32* %235
  %236 = zext i32 %_new_load_336 to i64, !mcsema_real_eip !59
  store i64 %236, i64* %XSI, !mcsema_real_eip !59
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !60
  store i8 0, i8* %AL.60, !mcsema_real_eip !60
  %RDI_val.61 = load i64, i64* %XDI, !mcsema_real_eip !61
  %RDX_val.63 = load i64, i64* %XDX, !mcsema_real_eip !61
  %RCX_val.64 = load i64, i64* %XCX, !mcsema_real_eip !61
  %R8_val.65 = load i64, i64* %R8, !mcsema_real_eip !61
  %R9_val.66 = load i64, i64* %R9, !mcsema_real_eip !61
  %_load_rsp_ptr_106 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_107 = bitcast i8* %_load_rsp_ptr_106 to i64*
  %_ptr_to_int_337 = ptrtoint i64* %_allin_new_bt_107 to i64
  %_offset_above_rbp_340 = sub i64 %_ptr_to_int_337, %_local_end_to_int_
  %_pot_address_in_parent_stack_341 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_340
  %_cond1_342 = icmp ugt i8* %_load_rsp_ptr_106, %_local_stack_end_ptr_
  %_cond2_1_343 = icmp ugt i8* %_load_rsp_ptr_106, %_parent_stack_end_ptr_
  %_cond2_2_344 = icmp ult i8* %_load_rsp_ptr_106, %_parent_stack_start_ptr_
  %_cond2_345 = or i1 %_cond2_1_343, %_cond2_2_344
  %_cond4_346 = icmp ule i8* %_pot_address_in_parent_stack_341, %_parent_stack_end_ptr_
  %_cond1_n_cond2_347 = and i1 %_cond1_342, %_cond2_345
  %_cond1_n_cond2_cond3_348 = and i1 %_cond1_n_cond2_347, %_cond4_346
  br i1 %_cond1_n_cond2_cond3_348, label %237, label %238

; <label>:237:                                    ; preds = %234
  %_address_in_parent_stack_bt_350 = bitcast i8* %_pot_address_in_parent_stack_341 to i64*
  br label %238

; <label>:238:                                    ; preds = %234, %237
  %239 = phi i64* [ %_allin_new_bt_107, %234 ], [ %_address_in_parent_stack_bt_350, %237 ]
  %_new_load_351 = load i64, i64* %239
  %_new_gep_108 = getelementptr i8, i8* %_load_rsp_ptr_106, i64 8
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %_ptr_to_int_352 = ptrtoint i64* %_allin_new_bt_109 to i64
  %_offset_above_rbp_355 = sub i64 %_ptr_to_int_352, %_local_end_to_int_
  %_pot_address_in_parent_stack_356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_355
  %_cond1_357 = icmp ugt i8* %_new_gep_108, %_local_stack_end_ptr_
  %_cond2_1_358 = icmp ugt i8* %_new_gep_108, %_parent_stack_end_ptr_
  %_cond2_2_359 = icmp ult i8* %_new_gep_108, %_parent_stack_start_ptr_
  %_cond2_360 = or i1 %_cond2_1_358, %_cond2_2_359
  %_cond4_361 = icmp ule i8* %_pot_address_in_parent_stack_356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_362 = and i1 %_cond1_357, %_cond2_360
  %_cond1_n_cond2_cond3_363 = and i1 %_cond1_n_cond2_362, %_cond4_361
  br i1 %_cond1_n_cond2_cond3_363, label %240, label %241

; <label>:240:                                    ; preds = %238
  %_address_in_parent_stack_bt_365 = bitcast i8* %_pot_address_in_parent_stack_356 to i64*
  br label %241

; <label>:241:                                    ; preds = %238, %240
  %242 = phi i64* [ %_allin_new_bt_109, %238 ], [ %_address_in_parent_stack_bt_365, %240 ]
  %_new_load_366 = load i64, i64* %242
  %_new_gep_110 = getelementptr i8, i8* %_new_gep_108, i64 8
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %_ptr_to_int_367 = ptrtoint i64* %_allin_new_bt_111 to i64
  %_offset_above_rbp_370 = sub i64 %_ptr_to_int_367, %_local_end_to_int_
  %_pot_address_in_parent_stack_371 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_370
  %_cond1_372 = icmp ugt i8* %_new_gep_110, %_local_stack_end_ptr_
  %_cond2_1_373 = icmp ugt i8* %_new_gep_110, %_parent_stack_end_ptr_
  %_cond2_2_374 = icmp ult i8* %_new_gep_110, %_parent_stack_start_ptr_
  %_cond2_375 = or i1 %_cond2_1_373, %_cond2_2_374
  %_cond4_376 = icmp ule i8* %_pot_address_in_parent_stack_371, %_parent_stack_end_ptr_
  %_cond1_n_cond2_377 = and i1 %_cond1_372, %_cond2_375
  %_cond1_n_cond2_cond3_378 = and i1 %_cond1_n_cond2_377, %_cond4_376
  br i1 %_cond1_n_cond2_cond3_378, label %243, label %244

; <label>:243:                                    ; preds = %241
  %_address_in_parent_stack_bt_380 = bitcast i8* %_pot_address_in_parent_stack_371 to i64*
  br label %244

; <label>:244:                                    ; preds = %241, %243
  %245 = phi i64* [ %_allin_new_bt_111, %241 ], [ %_address_in_parent_stack_bt_380, %243 ]
  %_new_load_381 = load i64, i64* %245
  %_new_gep_112 = getelementptr i8, i8* %_new_gep_110, i64 8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %_ptr_to_int_382 = ptrtoint i64* %_allin_new_bt_113 to i64
  %_offset_above_rbp_385 = sub i64 %_ptr_to_int_382, %_local_end_to_int_
  %_pot_address_in_parent_stack_386 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_385
  %_cond1_387 = icmp ugt i8* %_new_gep_112, %_local_stack_end_ptr_
  %_cond2_1_388 = icmp ugt i8* %_new_gep_112, %_parent_stack_end_ptr_
  %_cond2_2_389 = icmp ult i8* %_new_gep_112, %_parent_stack_start_ptr_
  %_cond2_390 = or i1 %_cond2_1_388, %_cond2_2_389
  %_cond4_391 = icmp ule i8* %_pot_address_in_parent_stack_386, %_parent_stack_end_ptr_
  %_cond1_n_cond2_392 = and i1 %_cond1_387, %_cond2_390
  %_cond1_n_cond2_cond3_393 = and i1 %_cond1_n_cond2_392, %_cond4_391
  br i1 %_cond1_n_cond2_cond3_393, label %246, label %247

; <label>:246:                                    ; preds = %244
  %_address_in_parent_stack_bt_395 = bitcast i8* %_pot_address_in_parent_stack_386 to i64*
  br label %247

; <label>:247:                                    ; preds = %244, %246
  %248 = phi i64* [ %_allin_new_bt_113, %244 ], [ %_address_in_parent_stack_bt_395, %246 ]
  %_new_load_396 = load i64, i64* %248
  %_new_gep_114 = getelementptr i8, i8* %_new_gep_112, i64 8
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %_ptr_to_int_397 = ptrtoint i64* %_allin_new_bt_115 to i64
  %_offset_above_rbp_400 = sub i64 %_ptr_to_int_397, %_local_end_to_int_
  %_pot_address_in_parent_stack_401 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_400
  %_cond1_402 = icmp ugt i8* %_new_gep_114, %_local_stack_end_ptr_
  %_cond2_1_403 = icmp ugt i8* %_new_gep_114, %_parent_stack_end_ptr_
  %_cond2_2_404 = icmp ult i8* %_new_gep_114, %_parent_stack_start_ptr_
  %_cond2_405 = or i1 %_cond2_1_403, %_cond2_2_404
  %_cond4_406 = icmp ule i8* %_pot_address_in_parent_stack_401, %_parent_stack_end_ptr_
  %_cond1_n_cond2_407 = and i1 %_cond1_402, %_cond2_405
  %_cond1_n_cond2_cond3_408 = and i1 %_cond1_n_cond2_407, %_cond4_406
  br i1 %_cond1_n_cond2_cond3_408, label %249, label %250

; <label>:249:                                    ; preds = %247
  %_address_in_parent_stack_bt_410 = bitcast i8* %_pot_address_in_parent_stack_401 to i64*
  br label %250

; <label>:250:                                    ; preds = %247, %249
  %251 = phi i64* [ %_allin_new_bt_115, %247 ], [ %_address_in_parent_stack_bt_410, %249 ]
  %_new_load_411 = load i64, i64* %251
  %_new_gep_116 = getelementptr i8, i8* %_new_gep_114, i64 8
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %_ptr_to_int_412 = ptrtoint i64* %_allin_new_bt_117 to i64
  %_offset_above_rbp_415 = sub i64 %_ptr_to_int_412, %_local_end_to_int_
  %_pot_address_in_parent_stack_416 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_415
  %_cond1_417 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_418 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_419 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_420 = or i1 %_cond2_1_418, %_cond2_2_419
  %_cond4_421 = icmp ule i8* %_pot_address_in_parent_stack_416, %_parent_stack_end_ptr_
  %_cond1_n_cond2_422 = and i1 %_cond1_417, %_cond2_420
  %_cond1_n_cond2_cond3_423 = and i1 %_cond1_n_cond2_422, %_cond4_421
  br i1 %_cond1_n_cond2_cond3_423, label %252, label %253

; <label>:252:                                    ; preds = %250
  %_address_in_parent_stack_bt_425 = bitcast i8* %_pot_address_in_parent_stack_416 to i64*
  br label %253

; <label>:253:                                    ; preds = %250, %252
  %254 = phi i64* [ %_allin_new_bt_117, %250 ], [ %_address_in_parent_stack_bt_425, %252 ]
  %_new_load_426 = load i64, i64* %254
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !61
  %_new_gep_119 = getelementptr i8, i8* %_load_rsp_ptr_106, i64 -8
  %255 = sub i64 %RSP_val.68, 8, !mcsema_real_eip !61
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_120, !mcsema_real_eip !61
  store volatile i8* %_new_gep_119, i8** %_RSP_ptr_
  store i64 %255, i64* %XSP, !mcsema_real_eip !61
  %256 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.61, i64 %236, i64 %RDX_val.63, i64 %RCX_val.64, i64 %R8_val.65, i64 %R9_val.66, i64 %_new_load_351, i64 %_new_load_366, i64 %_new_load_381, i64 %_new_load_396, i64 %_new_load_411, i64 %_new_load_426)
  %_rsp_fix_155 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_156 = getelementptr i8, i8* %_rsp_fix_155, i64 8
  store i8* %_gep_fix_156, i8** %_RSP_ptr_
  store i64 %256, i64* %XAX, !mcsema_real_eip !61
  %_load_rbp_ptr_121 = load i8*, i8** %_RBP_ptr_
  %_new_gep_122 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -44
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %257 = ptrtoint i64* %_allin_new_bt_123 to i64, !mcsema_real_eip !62
  %258 = inttoptr i64 %257 to i32*, !mcsema_real_eip !62
  %_ptr_bt_429 = bitcast i32* %258 to i8*
  %_offset_above_rbp_430 = sub i64 %257, %_local_end_to_int_
  %_pot_address_in_parent_stack_431 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_430
  %_cond1_432 = icmp ugt i8* %_ptr_bt_429, %_local_stack_end_ptr_
  %_cond2_1_433 = icmp ugt i8* %_ptr_bt_429, %_parent_stack_end_ptr_
  %_cond2_2_434 = icmp ult i8* %_ptr_bt_429, %_parent_stack_start_ptr_
  %_cond2_435 = or i1 %_cond2_1_433, %_cond2_2_434
  %_cond4_436 = icmp ule i8* %_pot_address_in_parent_stack_431, %_parent_stack_end_ptr_
  %_cond1_n_cond2_437 = and i1 %_cond1_432, %_cond2_435
  %_cond1_n_cond2_cond3_438 = and i1 %_cond1_n_cond2_437, %_cond4_436
  br i1 %_cond1_n_cond2_cond3_438, label %259, label %260

; <label>:259:                                    ; preds = %253
  %_address_in_parent_stack_bt_440 = bitcast i8* %_pot_address_in_parent_stack_431 to i32*
  br label %260

; <label>:260:                                    ; preds = %253, %259
  %261 = phi i32* [ %258, %253 ], [ %_address_in_parent_stack_bt_440, %259 ]
  %_new_load_441 = load i32, i32* %261
  %262 = zext i32 %_new_load_441 to i64, !mcsema_real_eip !62
  store i64 %262, i64* %XCX, !mcsema_real_eip !62
  %_new_gep_125 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -52
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  %EAX_val.72 = load i32, i32* %EAX.4, !mcsema_real_eip !63
  %263 = ptrtoint i64* %_allin_new_bt_126 to i64, !mcsema_real_eip !63
  %264 = inttoptr i64 %263 to i32*, !mcsema_real_eip !63
  store i32 %EAX_val.72, i32* %264, !mcsema_real_eip !63
  %ECX.73 = bitcast i64* %XCX to i32*, !mcsema_real_eip !64
  %ECX_val.74 = load i32, i32* %ECX.73, !mcsema_real_eip !64
  %265 = zext i32 %ECX_val.74 to i64, !mcsema_real_eip !64
  store i64 %265, i64* %XAX, !mcsema_real_eip !64
  %_load_rsp_ptr_127 = load i8*, i8** %_RSP_ptr_
  %RSP_val.75 = load i64, i64* %XSP, !mcsema_real_eip !65
  %_new_gep_128 = getelementptr i8, i8* %_load_rsp_ptr_127, i64 96
  %266 = add i64 96, %RSP_val.75, !mcsema_real_eip !65
  %_trans_p2i_129 = ptrtoint i8* %_new_gep_128 to i64
  %_trans_p2i_130 = ptrtoint i8* %_load_rsp_ptr_127 to i64
  %_trans_xor_131 = xor i64 %_trans_p2i_129, %_trans_p2i_130
  %267 = xor i64 %_trans_xor_131, 96, !mcsema_real_eip !65
  %268 = and i64 %267, 16, !mcsema_real_eip !65
  %269 = icmp ne i64 %268, 0, !mcsema_real_eip !65
  store i1 %269, i1* %AF, !mcsema_real_eip !65
  %270 = lshr i64 %266, 63, !mcsema_real_eip !65
  %271 = trunc i64 %270 to i1, !mcsema_real_eip !65
  store i1 %271, i1* %SF, !mcsema_real_eip !65
  %_trans_icmp_eq_133 = icmp eq i64 %_trans_p2i_129, 0
  store i1 %_trans_icmp_eq_133, i1* %ZF, !mcsema_real_eip !65
  %_trans_xor_135 = xor i64 %_trans_p2i_130, 96
  %272 = xor i64 %_trans_xor_135, -1, !mcsema_real_eip !65
  %273 = and i64 %272, %_trans_xor_131, !mcsema_real_eip !65
  %274 = lshr i64 %273, 63, !mcsema_real_eip !65
  %275 = and i64 %274, 1, !mcsema_real_eip !65
  %276 = trunc i64 %275 to i1, !mcsema_real_eip !65
  store i1 %276, i1* %OF, !mcsema_real_eip !65
  %_trans_trunc_140 = trunc i64 %_trans_p2i_129 to i8
  %277 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_140), !mcsema_real_eip !65
  %278 = trunc i8 %277 to i1, !mcsema_real_eip !65
  %279 = xor i1 %278, true, !mcsema_real_eip !65
  store i1 %279, i1* %PF, !mcsema_real_eip !65
  %_trans_icmp_ne_142 = icmp ne i64 %_trans_p2i_129, %RSP_val.75
  store i1 %_trans_icmp_ne_142, i1* %CF, !mcsema_real_eip !65
  store volatile i8* %_new_gep_128, i8** %_RSP_ptr_
  store i64 %266, i64* %XSP, !mcsema_real_eip !65
  %_allin_new_bt_144 = bitcast i8* %_new_gep_128 to i64*
  %_ptr_to_int_442 = ptrtoint i64* %_allin_new_bt_144 to i64
  %_offset_above_rbp_445 = sub i64 %_ptr_to_int_442, %_local_end_to_int_
  %_pot_address_in_parent_stack_446 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_445
  %_cond1_447 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_448 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_449 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_450 = or i1 %_cond2_1_448, %_cond2_2_449
  %_cond4_451 = icmp ule i8* %_pot_address_in_parent_stack_446, %_parent_stack_end_ptr_
  %_cond1_n_cond2_452 = and i1 %_cond1_447, %_cond2_450
  %_cond1_n_cond2_cond3_453 = and i1 %_cond1_n_cond2_452, %_cond4_451
  br i1 %_cond1_n_cond2_cond3_453, label %280, label %281

; <label>:280:                                    ; preds = %260
  %_address_in_parent_stack_bt_455 = bitcast i8* %_pot_address_in_parent_stack_446 to i64*
  br label %281

; <label>:281:                                    ; preds = %260, %280
  %282 = phi i64* [ %_allin_new_bt_144, %260 ], [ %_address_in_parent_stack_bt_455, %280 ]
  %_new_load_456 = load i64, i64* %282
  %_new_int2ptr_ = inttoptr i64 %_new_load_456 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_456, i64* %XBP, !mcsema_real_eip !66
  %_new_gep_145 = getelementptr i8, i8* %_new_gep_128, i64 8
  %283 = add i64 %266, 8, !mcsema_real_eip !66
  store volatile i8* %_new_gep_145, i8** %_RSP_ptr_
  store i64 %283, i64* %XSP, !mcsema_real_eip !66
  %_new_gep_147 = getelementptr i8, i8* %_new_gep_145, i64 8
  %284 = add i64 %283, 8, !mcsema_real_eip !67
  %_allin_new_bt_148 = bitcast i8* %_new_gep_145 to i64*
  %_ptr_to_int_457 = ptrtoint i64* %_allin_new_bt_148 to i64
  %_offset_above_rbp_460 = sub i64 %_ptr_to_int_457, %_local_end_to_int_
  %_pot_address_in_parent_stack_461 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_460
  %_cond1_462 = icmp ugt i8* %_new_gep_145, %_local_stack_end_ptr_
  %_cond2_1_463 = icmp ugt i8* %_new_gep_145, %_parent_stack_end_ptr_
  %_cond2_2_464 = icmp ult i8* %_new_gep_145, %_parent_stack_start_ptr_
  %_cond2_465 = or i1 %_cond2_1_463, %_cond2_2_464
  %_cond4_466 = icmp ule i8* %_pot_address_in_parent_stack_461, %_parent_stack_end_ptr_
  %_cond1_n_cond2_467 = and i1 %_cond1_462, %_cond2_465
  %_cond1_n_cond2_cond3_468 = and i1 %_cond1_n_cond2_467, %_cond4_466
  br i1 %_cond1_n_cond2_cond3_468, label %285, label %286

; <label>:285:                                    ; preds = %281
  %_address_in_parent_stack_bt_470 = bitcast i8* %_pot_address_in_parent_stack_461 to i64*
  br label %286

; <label>:286:                                    ; preds = %281, %285
  %287 = phi i64* [ %_allin_new_bt_148, %281 ], [ %_address_in_parent_stack_bt_470, %285 ]
  %_new_load_471 = load i64, i64* %287
  store i64 %_new_load_471, i64* %XIP, !mcsema_real_eip !67
  store volatile i8* %_new_gep_147, i8** %_RSP_ptr_
  store i64 %284, i64* %XSP, !mcsema_real_eip !67
  ret void, !mcsema_real_eip !67
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 80
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 80
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !68
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !68
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !68
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !68
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !68
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !68
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !68
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !68
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !68
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !68
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !68
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !68
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !68
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !68
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !68
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !68
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !68
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !68
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !68
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !68
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !68
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !68
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !68
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !68
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !68
  br label %block_0x0, !mcsema_real_eip !68

block_0x0:                                        ; preds = %entry
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !68
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !68
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !68
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !69
  %RBX_val.96 = load i64, i64* %XBX, !mcsema_real_eip !70
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !70
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.97, 8, !mcsema_real_eip !70
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.96, i64* %_allin_new_bt_4, !mcsema_real_eip !70
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !70
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 40
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_7 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %3, label %4

; <label>:3:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %4

; <label>:4:                                      ; preds = %block_0x0, %3
  %5 = phi i64* [ %_allin_new_bt_7, %block_0x0 ], [ %_address_in_parent_stack_bt_, %3 ]
  %_new_load_ = load i64, i64* %5
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !71
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 32
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %6 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !72
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !72
  %_ptr_bt_115 = bitcast i32* %7 to i8*
  %_offset_above_rbp_116 = sub i64 %6, %_local_end_to_int_
  %_pot_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_116
  %_cond1_118 = icmp ugt i8* %_ptr_bt_115, %_local_stack_end_ptr_
  %_cond2_1_119 = icmp ugt i8* %_ptr_bt_115, %_parent_stack_end_ptr_
  %_cond2_2_120 = icmp ult i8* %_ptr_bt_115, %_parent_stack_start_ptr_
  %_cond2_121 = or i1 %_cond2_1_119, %_cond2_2_120
  %_cond4_122 = icmp ule i8* %_pot_address_in_parent_stack_117, %_parent_stack_end_ptr_
  %_cond1_n_cond2_123 = and i1 %_cond1_118, %_cond2_121
  %_cond1_n_cond2_cond3_124 = and i1 %_cond1_n_cond2_123, %_cond4_122
  br i1 %_cond1_n_cond2_cond3_124, label %8, label %9

; <label>:8:                                      ; preds = %4
  %_address_in_parent_stack_bt_126 = bitcast i8* %_pot_address_in_parent_stack_117 to i32*
  br label %9

; <label>:9:                                      ; preds = %4, %8
  %10 = phi i32* [ %7, %4 ], [ %_address_in_parent_stack_bt_126, %8 ]
  %_new_load_127 = load i32, i32* %10
  %11 = zext i32 %_new_load_127 to i64, !mcsema_real_eip !72
  store i64 %11, i64* %R10, !mcsema_real_eip !72
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %_ptr_to_int_128 = ptrtoint i64* %_allin_new_bt_13 to i64
  %_offset_above_rbp_131 = sub i64 %_ptr_to_int_128, %_local_end_to_int_
  %_pot_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_131
  %_cond1_133 = icmp ugt i8* %_new_gep_12, %_local_stack_end_ptr_
  %_cond2_1_134 = icmp ugt i8* %_new_gep_12, %_parent_stack_end_ptr_
  %_cond2_2_135 = icmp ult i8* %_new_gep_12, %_parent_stack_start_ptr_
  %_cond2_136 = or i1 %_cond2_1_134, %_cond2_2_135
  %_cond4_137 = icmp ule i8* %_pot_address_in_parent_stack_132, %_parent_stack_end_ptr_
  %_cond1_n_cond2_138 = and i1 %_cond1_133, %_cond2_136
  %_cond1_n_cond2_cond3_139 = and i1 %_cond1_n_cond2_138, %_cond4_137
  br i1 %_cond1_n_cond2_cond3_139, label %12, label %13

; <label>:12:                                     ; preds = %9
  %_address_in_parent_stack_bt_141 = bitcast i8* %_pot_address_in_parent_stack_132 to i64*
  br label %13

; <label>:13:                                     ; preds = %9, %12
  %14 = phi i64* [ %_allin_new_bt_13, %9 ], [ %_address_in_parent_stack_bt_141, %12 ]
  %_new_load_142 = load i64, i64* %14
  store i64 %_new_load_142, i64* %R11, !mcsema_real_eip !73
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 16
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !74
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !74
  %_ptr_bt_145 = bitcast i32* %16 to i8*
  %_offset_above_rbp_146 = sub i64 %15, %_local_end_to_int_
  %_pot_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_146
  %_cond1_148 = icmp ugt i8* %_ptr_bt_145, %_local_stack_end_ptr_
  %_cond2_1_149 = icmp ugt i8* %_ptr_bt_145, %_parent_stack_end_ptr_
  %_cond2_2_150 = icmp ult i8* %_ptr_bt_145, %_parent_stack_start_ptr_
  %_cond2_151 = or i1 %_cond2_1_149, %_cond2_2_150
  %_cond4_152 = icmp ule i8* %_pot_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond1_n_cond2_153 = and i1 %_cond1_148, %_cond2_151
  %_cond1_n_cond2_cond3_154 = and i1 %_cond1_n_cond2_153, %_cond4_152
  br i1 %_cond1_n_cond2_cond3_154, label %17, label %18

; <label>:17:                                     ; preds = %13
  %_address_in_parent_stack_bt_156 = bitcast i8* %_pot_address_in_parent_stack_147 to i32*
  br label %18

; <label>:18:                                     ; preds = %13, %17
  %19 = phi i32* [ %16, %13 ], [ %_address_in_parent_stack_bt_156, %17 ]
  %_new_load_157 = load i32, i32* %19
  %20 = zext i32 %_new_load_157 to i64, !mcsema_real_eip !74
  store i64 %20, i64* %XBX, !mcsema_real_eip !74
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -12
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %EDI.103 = bitcast i64* %XDI to i32*, !mcsema_real_eip !75
  %EDI_val.104 = load i32, i32* %EDI.103, !mcsema_real_eip !75
  %21 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !75
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !75
  store i32 %EDI_val.104, i32* %22, !mcsema_real_eip !75
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -16
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %ESI.106 = bitcast i64* %XSI to i32*, !mcsema_real_eip !76
  %ESI_val.107 = load i32, i32* %ESI.106, !mcsema_real_eip !76
  %23 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !76
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !76
  store i32 %ESI_val.107, i32* %24, !mcsema_real_eip !76
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -20
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %EDX.109 = bitcast i64* %XDX to i32*, !mcsema_real_eip !77
  %EDX_val.110 = load i32, i32* %EDX.109, !mcsema_real_eip !77
  %25 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !77
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !77
  store i32 %EDX_val.110, i32* %26, !mcsema_real_eip !77
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -24
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %ECX.112 = bitcast i64* %XCX to i32*, !mcsema_real_eip !78
  %ECX_val.113 = load i32, i32* %ECX.112, !mcsema_real_eip !78
  %27 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !78
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !78
  store i32 %ECX_val.113, i32* %28, !mcsema_real_eip !78
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -28
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %R8D.115 = bitcast i64* %R8 to i32*, !mcsema_real_eip !79
  %R8D_val.116 = load i32, i32* %R8D.115, !mcsema_real_eip !79
  %29 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !79
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !79
  store i32 %R8D_val.116, i32* %30, !mcsema_real_eip !79
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -32
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %R9D.118 = bitcast i64* %R9 to i32*, !mcsema_real_eip !80
  %R9D_val.119 = load i32, i32* %R9D.118, !mcsema_real_eip !80
  %31 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !80
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !80
  store i32 %R9D_val.119, i32* %32, !mcsema_real_eip !80
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -36
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %EBX.121 = bitcast i64* %XBX to i32*, !mcsema_real_eip !81
  %EBX_val.122 = load i32, i32* %EBX.121, !mcsema_real_eip !81
  %33 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !81
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !81
  store i32 %EBX_val.122, i32* %34, !mcsema_real_eip !81
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -48
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %R11_val.124 = load i64, i64* %R11, !mcsema_real_eip !82
  store i64 %R11_val.124, i64* %_allin_new_bt_40, !mcsema_real_eip !82
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -52
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %R10D.126 = bitcast i64* %R10 to i32*, !mcsema_real_eip !83
  %R10D_val.127 = load i32, i32* %R10D.126, !mcsema_real_eip !83
  %35 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !83
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !83
  store i32 %R10D_val.127, i32* %36, !mcsema_real_eip !83
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -64
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %RAX_val.129 = load i64, i64* %XAX, !mcsema_real_eip !84
  store i64 %RAX_val.129, i64* %_allin_new_bt_46, !mcsema_real_eip !84
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -68
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %37 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !85
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !85
  store i32 0, i32* %38, !mcsema_real_eip !85
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -72
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !86
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !86
  store i32 0, i32* %40, !mcsema_real_eip !86
  br label %block_0x45, !mcsema_real_eip !87

block_0x45:                                       ; preds = %145, %18
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -72
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %41 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !87
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !87
  %_ptr_bt_160 = bitcast i32* %42 to i8*
  %_offset_above_rbp_161 = sub i64 %41, %_local_end_to_int_
  %_pot_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_cond1_163 = icmp ugt i8* %_ptr_bt_160, %_local_stack_end_ptr_
  %_cond2_1_164 = icmp ugt i8* %_ptr_bt_160, %_parent_stack_end_ptr_
  %_cond2_2_165 = icmp ult i8* %_ptr_bt_160, %_parent_stack_start_ptr_
  %_cond2_166 = or i1 %_cond2_1_164, %_cond2_2_165
  %_cond4_167 = icmp ule i8* %_pot_address_in_parent_stack_162, %_parent_stack_end_ptr_
  %_cond1_n_cond2_168 = and i1 %_cond1_163, %_cond2_166
  %_cond1_n_cond2_cond3_169 = and i1 %_cond1_n_cond2_168, %_cond4_167
  br i1 %_cond1_n_cond2_cond3_169, label %43, label %44

; <label>:43:                                     ; preds = %block_0x45
  %_address_in_parent_stack_bt_171 = bitcast i8* %_pot_address_in_parent_stack_162 to i32*
  br label %44

; <label>:44:                                     ; preds = %block_0x45, %43
  %45 = phi i32* [ %42, %block_0x45 ], [ %_address_in_parent_stack_bt_171, %43 ]
  %_new_load_172 = load i32, i32* %45
  %46 = zext i32 %_new_load_172 to i64, !mcsema_real_eip !87
  store i64 %46, i64* %XAX, !mcsema_real_eip !87
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -36
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %EAX.134 = bitcast i64* %XAX to i32*, !mcsema_real_eip !88
  %EAX_val.135 = load i32, i32* %EAX.134, !mcsema_real_eip !88
  %47 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !88
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !88
  %_ptr_bt_175 = bitcast i32* %48 to i8*
  %_offset_above_rbp_176 = sub i64 %47, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_ptr_bt_175, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_ptr_bt_175, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_ptr_bt_175, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  br i1 %_cond1_n_cond2_cond3_184, label %49, label %50

; <label>:49:                                     ; preds = %44
  %_address_in_parent_stack_bt_186 = bitcast i8* %_pot_address_in_parent_stack_177 to i32*
  br label %50

; <label>:50:                                     ; preds = %44, %49
  %51 = phi i32* [ %48, %44 ], [ %_address_in_parent_stack_bt_186, %49 ]
  %_new_load_187 = load i32, i32* %51
  %52 = sub i32 %EAX_val.135, %_new_load_187, !mcsema_real_eip !88
  %53 = xor i32 %52, %EAX_val.135, !mcsema_real_eip !88
  %54 = xor i32 %53, %_new_load_187, !mcsema_real_eip !88
  %55 = and i32 %54, 16, !mcsema_real_eip !88
  %56 = icmp ne i32 %55, 0, !mcsema_real_eip !88
  store i1 %56, i1* %AF, !mcsema_real_eip !88
  %57 = trunc i32 %52 to i8, !mcsema_real_eip !88
  %58 = call i8 @llvm.ctpop.i8(i8 %57), !mcsema_real_eip !88
  %59 = trunc i8 %58 to i1, !mcsema_real_eip !88
  %60 = xor i1 %59, true, !mcsema_real_eip !88
  store i1 %60, i1* %PF, !mcsema_real_eip !88
  %61 = icmp eq i32 %52, 0, !mcsema_real_eip !88
  store i1 %61, i1* %ZF, !mcsema_real_eip !88
  %62 = lshr i32 %52, 31, !mcsema_real_eip !88
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !88
  store i1 %63, i1* %SF, !mcsema_real_eip !88
  %64 = icmp ult i32 %EAX_val.135, %_new_load_187, !mcsema_real_eip !88
  store i1 %64, i1* %CF, !mcsema_real_eip !88
  %65 = xor i32 %EAX_val.135, %_new_load_187, !mcsema_real_eip !88
  %66 = and i32 %65, %53, !mcsema_real_eip !88
  %67 = lshr i32 %66, 31, !mcsema_real_eip !88
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !88
  store i1 %68, i1* %OF, !mcsema_real_eip !88
  %69 = icmp eq i1 %63, %68, !mcsema_real_eip !89
  br i1 %69, label %block_0x7b, label %block_0x51, !mcsema_real_eip !89

block_0x51:                                       ; preds = %50
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -48
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_188 = ptrtoint i64* %_allin_new_bt_61 to i64
  %_offset_above_rbp_191 = sub i64 %_ptr_to_int_188, %_local_end_to_int_
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_191
  %_cond1_193 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_194 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  br i1 %_cond1_n_cond2_cond3_199, label %70, label %71

; <label>:70:                                     ; preds = %block_0x51
  %_address_in_parent_stack_bt_201 = bitcast i8* %_pot_address_in_parent_stack_192 to i64*
  br label %71

; <label>:71:                                     ; preds = %block_0x51, %70
  %72 = phi i64* [ %_allin_new_bt_61, %block_0x51 ], [ %_address_in_parent_stack_bt_201, %70 ]
  %_new_load_202 = load i64, i64* %72
  store i64 %_new_load_202, i64* %XAX, !mcsema_real_eip !90
  br i1 %_cond1_n_cond2_cond3_169, label %73, label %74

; <label>:73:                                     ; preds = %71
  %_address_in_parent_stack_bt_216 = bitcast i8* %_pot_address_in_parent_stack_162 to i32*
  br label %74

; <label>:74:                                     ; preds = %71, %73
  %75 = phi i32* [ %42, %71 ], [ %_address_in_parent_stack_bt_216, %73 ]
  %_new_load_217 = load i32, i32* %75
  %76 = sext i32 %_new_load_217 to i64, !mcsema_real_eip !91
  store i64 %76, i64* %XCX, !mcsema_real_eip !91
  %77 = mul i64 %76, 4, !mcsema_real_eip !92
  %78 = add i64 %_new_load_202, %77, !mcsema_real_eip !92
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !92
  %80 = inttoptr i64 %78 to i32*, !mcsema_real_eip !92
  %_ptr_bt_220 = bitcast i32* %80 to i8*
  %_offset_above_rbp_221 = sub i64 %78, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_ptr_bt_220, %_local_stack_end_ptr_
  %_cond2_1_224 = icmp ugt i8* %_ptr_bt_220, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_ptr_bt_220, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  br i1 %_cond1_n_cond2_cond3_229, label %81, label %82

; <label>:81:                                     ; preds = %74
  %_address_in_parent_stack_bt_231 = bitcast i8* %_pot_address_in_parent_stack_222 to i32*
  br label %82

; <label>:82:                                     ; preds = %74, %81
  %83 = phi i32* [ %80, %74 ], [ %_address_in_parent_stack_bt_231, %81 ]
  %_new_load_232 = load i32, i32* %83
  %84 = zext i32 %_new_load_232 to i64, !mcsema_real_eip !92
  store i64 %84, i64* %XDX, !mcsema_real_eip !92
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -64
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %_ptr_to_int_233 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_236 = sub i64 %_ptr_to_int_233, %_local_end_to_int_
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_239 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  br i1 %_cond1_n_cond2_cond3_244, label %85, label %86

; <label>:85:                                     ; preds = %82
  %_address_in_parent_stack_bt_246 = bitcast i8* %_pot_address_in_parent_stack_237 to i64*
  br label %86

; <label>:86:                                     ; preds = %82, %85
  %87 = phi i64* [ %_allin_new_bt_67, %82 ], [ %_address_in_parent_stack_bt_246, %85 ]
  %_new_load_247 = load i64, i64* %87
  store i64 %_new_load_247, i64* %XAX, !mcsema_real_eip !93
  br i1 %_cond1_n_cond2_cond3_169, label %88, label %89

; <label>:88:                                     ; preds = %86
  %_address_in_parent_stack_bt_261 = bitcast i8* %_pot_address_in_parent_stack_162 to i32*
  br label %89

; <label>:89:                                     ; preds = %86, %88
  %90 = phi i32* [ %42, %86 ], [ %_address_in_parent_stack_bt_261, %88 ]
  %_new_load_262 = load i32, i32* %90
  %91 = sext i32 %_new_load_262 to i64, !mcsema_real_eip !94
  store i64 %91, i64* %XCX, !mcsema_real_eip !94
  %92 = mul i64 %91, 4, !mcsema_real_eip !95
  %93 = add i64 %_new_load_247, %92, !mcsema_real_eip !95
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !95
  %EDX_val.169 = load i32, i32* %EDX.109, !mcsema_real_eip !95
  %95 = inttoptr i64 %93 to i32*, !mcsema_real_eip !95
  %_ptr_bt_265 = bitcast i32* %95 to i8*
  %_offset_above_rbp_266 = sub i64 %93, %_local_end_to_int_
  %_pot_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_266
  %_cond1_268 = icmp ugt i8* %_ptr_bt_265, %_local_stack_end_ptr_
  %_cond2_1_269 = icmp ugt i8* %_ptr_bt_265, %_parent_stack_end_ptr_
  %_cond2_2_270 = icmp ult i8* %_ptr_bt_265, %_parent_stack_start_ptr_
  %_cond2_271 = or i1 %_cond2_1_269, %_cond2_2_270
  %_cond4_272 = icmp ule i8* %_pot_address_in_parent_stack_267, %_parent_stack_end_ptr_
  %_cond1_n_cond2_273 = and i1 %_cond1_268, %_cond2_271
  %_cond1_n_cond2_cond3_274 = and i1 %_cond1_n_cond2_273, %_cond4_272
  br i1 %_cond1_n_cond2_cond3_274, label %96, label %97

; <label>:96:                                     ; preds = %89
  %_address_in_parent_stack_bt_276 = bitcast i8* %_pot_address_in_parent_stack_267 to i32*
  br label %97

; <label>:97:                                     ; preds = %89, %96
  %98 = phi i32* [ %95, %89 ], [ %_address_in_parent_stack_bt_276, %96 ]
  %_new_load_277 = load i32, i32* %98
  %99 = sub i32 %EDX_val.169, %_new_load_277, !mcsema_real_eip !95
  %100 = xor i32 %99, %EDX_val.169, !mcsema_real_eip !95
  %101 = xor i32 %100, %_new_load_277, !mcsema_real_eip !95
  %102 = and i32 %101, 16, !mcsema_real_eip !95
  %103 = icmp ne i32 %102, 0, !mcsema_real_eip !95
  store i1 %103, i1* %AF, !mcsema_real_eip !95
  %104 = trunc i32 %99 to i8, !mcsema_real_eip !95
  %105 = call i8 @llvm.ctpop.i8(i8 %104), !mcsema_real_eip !95
  %106 = trunc i8 %105 to i1, !mcsema_real_eip !95
  %107 = xor i1 %106, true, !mcsema_real_eip !95
  store i1 %107, i1* %PF, !mcsema_real_eip !95
  %108 = icmp eq i32 %99, 0, !mcsema_real_eip !95
  store i1 %108, i1* %ZF, !mcsema_real_eip !95
  %109 = lshr i32 %99, 31, !mcsema_real_eip !95
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !95
  store i1 %110, i1* %SF, !mcsema_real_eip !95
  %111 = icmp ult i32 %EDX_val.169, %_new_load_277, !mcsema_real_eip !95
  store i1 %111, i1* %CF, !mcsema_real_eip !95
  %112 = xor i32 %EDX_val.169, %_new_load_277, !mcsema_real_eip !95
  %113 = and i32 %112, %100, !mcsema_real_eip !95
  %114 = lshr i32 %113, 31, !mcsema_real_eip !95
  %115 = trunc i32 %114 to i1, !mcsema_real_eip !95
  store i1 %115, i1* %OF, !mcsema_real_eip !95
  %116 = zext i32 %99 to i64, !mcsema_real_eip !95
  store i64 %116, i64* %XDX, !mcsema_real_eip !95
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -68
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %117 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !96
  %118 = inttoptr i64 %117 to i32*, !mcsema_real_eip !96
  %_ptr_bt_280 = bitcast i32* %118 to i8*
  %_offset_above_rbp_281 = sub i64 %117, %_local_end_to_int_
  %_pot_address_in_parent_stack_282 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_281
  %_cond1_283 = icmp ugt i8* %_ptr_bt_280, %_local_stack_end_ptr_
  %_cond2_1_284 = icmp ugt i8* %_ptr_bt_280, %_parent_stack_end_ptr_
  %_cond2_2_285 = icmp ult i8* %_ptr_bt_280, %_parent_stack_start_ptr_
  %_cond2_286 = or i1 %_cond2_1_284, %_cond2_2_285
  %_cond4_287 = icmp ule i8* %_pot_address_in_parent_stack_282, %_parent_stack_end_ptr_
  %_cond1_n_cond2_288 = and i1 %_cond1_283, %_cond2_286
  %_cond1_n_cond2_cond3_289 = and i1 %_cond1_n_cond2_288, %_cond4_287
  br i1 %_cond1_n_cond2_cond3_289, label %119, label %120

; <label>:119:                                    ; preds = %97
  %_address_in_parent_stack_bt_291 = bitcast i8* %_pot_address_in_parent_stack_282 to i32*
  br label %120

; <label>:120:                                    ; preds = %97, %119
  %121 = phi i32* [ %118, %97 ], [ %_address_in_parent_stack_bt_291, %119 ]
  %_new_load_292 = load i32, i32* %121
  %EDX_val.172 = load i32, i32* %EDX.109, !mcsema_real_eip !96
  %122 = add i32 %EDX_val.172, %_new_load_292, !mcsema_real_eip !96
  %123 = xor i32 %122, %_new_load_292, !mcsema_real_eip !96
  %124 = xor i32 %123, %EDX_val.172, !mcsema_real_eip !96
  %125 = and i32 %124, 16, !mcsema_real_eip !96
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !96
  store i1 %126, i1* %AF, !mcsema_real_eip !96
  %127 = lshr i32 %122, 31, !mcsema_real_eip !96
  %128 = trunc i32 %127 to i1, !mcsema_real_eip !96
  store i1 %128, i1* %SF, !mcsema_real_eip !96
  %129 = icmp eq i32 %122, 0, !mcsema_real_eip !96
  store i1 %129, i1* %ZF, !mcsema_real_eip !96
  %130 = xor i32 %_new_load_292, %EDX_val.172, !mcsema_real_eip !96
  %131 = xor i32 %130, -1, !mcsema_real_eip !96
  %132 = and i32 %131, %123, !mcsema_real_eip !96
  %133 = lshr i32 %132, 31, !mcsema_real_eip !96
  %134 = and i32 %133, 1, !mcsema_real_eip !96
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !96
  store i1 %135, i1* %OF, !mcsema_real_eip !96
  %136 = trunc i32 %122 to i8, !mcsema_real_eip !96
  %137 = call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !96
  %138 = trunc i8 %137 to i1, !mcsema_real_eip !96
  %139 = xor i1 %138, true, !mcsema_real_eip !96
  store i1 %139, i1* %PF, !mcsema_real_eip !96
  %140 = icmp ult i32 %122, %_new_load_292, !mcsema_real_eip !96
  store i1 %140, i1* %CF, !mcsema_real_eip !96
  %141 = zext i32 %122 to i64, !mcsema_real_eip !96
  store i64 %141, i64* %XDX, !mcsema_real_eip !96
  %EDX_val.175 = load i32, i32* %EDX.109, !mcsema_real_eip !97
  store i32 %EDX_val.175, i32* %118, !mcsema_real_eip !97
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -72
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %142 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !98
  %143 = inttoptr i64 %142 to i32*, !mcsema_real_eip !98
  %_ptr_bt_295 = bitcast i32* %143 to i8*
  %_offset_above_rbp_296 = sub i64 %142, %_local_end_to_int_
  %_pot_address_in_parent_stack_297 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_296
  %_cond1_298 = icmp ugt i8* %_ptr_bt_295, %_local_stack_end_ptr_
  %_cond2_1_299 = icmp ugt i8* %_ptr_bt_295, %_parent_stack_end_ptr_
  %_cond2_2_300 = icmp ult i8* %_ptr_bt_295, %_parent_stack_start_ptr_
  %_cond2_301 = or i1 %_cond2_1_299, %_cond2_2_300
  %_cond4_302 = icmp ule i8* %_pot_address_in_parent_stack_297, %_parent_stack_end_ptr_
  %_cond1_n_cond2_303 = and i1 %_cond1_298, %_cond2_301
  %_cond1_n_cond2_cond3_304 = and i1 %_cond1_n_cond2_303, %_cond4_302
  br i1 %_cond1_n_cond2_cond3_304, label %144, label %145

; <label>:144:                                    ; preds = %120
  %_address_in_parent_stack_bt_306 = bitcast i8* %_pot_address_in_parent_stack_297 to i32*
  br label %145

; <label>:145:                                    ; preds = %120, %144
  %146 = phi i32* [ %143, %120 ], [ %_address_in_parent_stack_bt_306, %144 ]
  %_new_load_307 = load i32, i32* %146
  %147 = zext i32 %_new_load_307 to i64, !mcsema_real_eip !98
  store i64 %147, i64* %XAX, !mcsema_real_eip !98
  %EAX_val.178 = load i32, i32* %EAX.134, !mcsema_real_eip !99
  %148 = add i32 1, %EAX_val.178, !mcsema_real_eip !99
  %149 = xor i32 %148, %EAX_val.178, !mcsema_real_eip !99
  %150 = xor i32 %149, 1, !mcsema_real_eip !99
  %151 = and i32 %150, 16, !mcsema_real_eip !99
  %152 = icmp ne i32 %151, 0, !mcsema_real_eip !99
  store i1 %152, i1* %AF, !mcsema_real_eip !99
  %153 = lshr i32 %148, 31, !mcsema_real_eip !99
  %154 = trunc i32 %153 to i1, !mcsema_real_eip !99
  store i1 %154, i1* %SF, !mcsema_real_eip !99
  %155 = icmp eq i32 %148, 0, !mcsema_real_eip !99
  store i1 %155, i1* %ZF, !mcsema_real_eip !99
  %156 = xor i32 %EAX_val.178, 1, !mcsema_real_eip !99
  %157 = xor i32 %156, -1, !mcsema_real_eip !99
  %158 = and i32 %157, %149, !mcsema_real_eip !99
  %159 = lshr i32 %158, 31, !mcsema_real_eip !99
  %160 = and i32 %159, 1, !mcsema_real_eip !99
  %161 = trunc i32 %160 to i1, !mcsema_real_eip !99
  store i1 %161, i1* %OF, !mcsema_real_eip !99
  %162 = trunc i32 %148 to i8, !mcsema_real_eip !99
  %163 = call i8 @llvm.ctpop.i8(i8 %162), !mcsema_real_eip !99
  %164 = trunc i8 %163 to i1, !mcsema_real_eip !99
  %165 = xor i1 %164, true, !mcsema_real_eip !99
  store i1 %165, i1* %PF, !mcsema_real_eip !99
  %166 = icmp ult i32 %148, %EAX_val.178, !mcsema_real_eip !99
  store i1 %166, i1* %CF, !mcsema_real_eip !99
  %167 = zext i32 %148 to i64, !mcsema_real_eip !99
  store i64 %167, i64* %XAX, !mcsema_real_eip !99
  %EAX_val.181 = load i32, i32* %EAX.134, !mcsema_real_eip !100
  store i32 %EAX_val.181, i32* %143, !mcsema_real_eip !100
  br label %block_0x45, !mcsema_real_eip !101

block_0x7b:                                       ; preds = %50
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -68
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %168 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !102
  %169 = inttoptr i64 %168 to i32*, !mcsema_real_eip !102
  %_ptr_bt_310 = bitcast i32* %169 to i8*
  %_offset_above_rbp_311 = sub i64 %168, %_local_end_to_int_
  %_pot_address_in_parent_stack_312 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_311
  %_cond1_313 = icmp ugt i8* %_ptr_bt_310, %_local_stack_end_ptr_
  %_cond2_1_314 = icmp ugt i8* %_ptr_bt_310, %_parent_stack_end_ptr_
  %_cond2_2_315 = icmp ult i8* %_ptr_bt_310, %_parent_stack_start_ptr_
  %_cond2_316 = or i1 %_cond2_1_314, %_cond2_2_315
  %_cond4_317 = icmp ule i8* %_pot_address_in_parent_stack_312, %_parent_stack_end_ptr_
  %_cond1_n_cond2_318 = and i1 %_cond1_313, %_cond2_316
  %_cond1_n_cond2_cond3_319 = and i1 %_cond1_n_cond2_318, %_cond4_317
  br i1 %_cond1_n_cond2_cond3_319, label %170, label %171

; <label>:170:                                    ; preds = %block_0x7b
  %_address_in_parent_stack_bt_321 = bitcast i8* %_pot_address_in_parent_stack_312 to i32*
  br label %171

; <label>:171:                                    ; preds = %block_0x7b, %170
  %172 = phi i32* [ %169, %block_0x7b ], [ %_address_in_parent_stack_bt_321, %170 ]
  %_new_load_322 = load i32, i32* %172
  %173 = zext i32 %_new_load_322 to i64, !mcsema_real_eip !102
  store i64 %173, i64* %XAX, !mcsema_real_eip !102
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -12
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %174 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !103
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !103
  %_ptr_bt_325 = bitcast i32* %175 to i8*
  %_offset_above_rbp_326 = sub i64 %174, %_local_end_to_int_
  %_pot_address_in_parent_stack_327 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_326
  %_cond1_328 = icmp ugt i8* %_ptr_bt_325, %_local_stack_end_ptr_
  %_cond2_1_329 = icmp ugt i8* %_ptr_bt_325, %_parent_stack_end_ptr_
  %_cond2_2_330 = icmp ult i8* %_ptr_bt_325, %_parent_stack_start_ptr_
  %_cond2_331 = or i1 %_cond2_1_329, %_cond2_2_330
  %_cond4_332 = icmp ule i8* %_pot_address_in_parent_stack_327, %_parent_stack_end_ptr_
  %_cond1_n_cond2_333 = and i1 %_cond1_328, %_cond2_331
  %_cond1_n_cond2_cond3_334 = and i1 %_cond1_n_cond2_333, %_cond4_332
  br i1 %_cond1_n_cond2_cond3_334, label %176, label %177

; <label>:176:                                    ; preds = %171
  %_address_in_parent_stack_bt_336 = bitcast i8* %_pot_address_in_parent_stack_327 to i32*
  br label %177

; <label>:177:                                    ; preds = %171, %176
  %178 = phi i32* [ %175, %171 ], [ %_address_in_parent_stack_bt_336, %176 ]
  %_new_load_337 = load i32, i32* %178
  %179 = zext i32 %_new_load_337 to i64, !mcsema_real_eip !103
  store i64 %179, i64* %XCX, !mcsema_real_eip !103
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -16
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %180 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !104
  %181 = inttoptr i64 %180 to i32*, !mcsema_real_eip !104
  %_ptr_bt_340 = bitcast i32* %181 to i8*
  %_offset_above_rbp_341 = sub i64 %180, %_local_end_to_int_
  %_pot_address_in_parent_stack_342 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_341
  %_cond1_343 = icmp ugt i8* %_ptr_bt_340, %_local_stack_end_ptr_
  %_cond2_1_344 = icmp ugt i8* %_ptr_bt_340, %_parent_stack_end_ptr_
  %_cond2_2_345 = icmp ult i8* %_ptr_bt_340, %_parent_stack_start_ptr_
  %_cond2_346 = or i1 %_cond2_1_344, %_cond2_2_345
  %_cond4_347 = icmp ule i8* %_pot_address_in_parent_stack_342, %_parent_stack_end_ptr_
  %_cond1_n_cond2_348 = and i1 %_cond1_343, %_cond2_346
  %_cond1_n_cond2_cond3_349 = and i1 %_cond1_n_cond2_348, %_cond4_347
  br i1 %_cond1_n_cond2_cond3_349, label %182, label %183

; <label>:182:                                    ; preds = %177
  %_address_in_parent_stack_bt_351 = bitcast i8* %_pot_address_in_parent_stack_342 to i32*
  br label %183

; <label>:183:                                    ; preds = %177, %182
  %184 = phi i32* [ %181, %177 ], [ %_address_in_parent_stack_bt_351, %182 ]
  %_new_load_352 = load i32, i32* %184
  %ECX_val.140 = load i32, i32* %ECX.112, !mcsema_real_eip !104
  %185 = add i32 %ECX_val.140, %_new_load_352, !mcsema_real_eip !104
  %186 = xor i32 %185, %_new_load_352, !mcsema_real_eip !104
  %187 = xor i32 %186, %ECX_val.140, !mcsema_real_eip !104
  %188 = and i32 %187, 16, !mcsema_real_eip !104
  %189 = icmp ne i32 %188, 0, !mcsema_real_eip !104
  store i1 %189, i1* %AF, !mcsema_real_eip !104
  %190 = lshr i32 %185, 31, !mcsema_real_eip !104
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !104
  store i1 %191, i1* %SF, !mcsema_real_eip !104
  %192 = icmp eq i32 %185, 0, !mcsema_real_eip !104
  store i1 %192, i1* %ZF, !mcsema_real_eip !104
  %193 = xor i32 %_new_load_352, %ECX_val.140, !mcsema_real_eip !104
  %194 = xor i32 %193, -1, !mcsema_real_eip !104
  %195 = and i32 %194, %186, !mcsema_real_eip !104
  %196 = lshr i32 %195, 31, !mcsema_real_eip !104
  %197 = and i32 %196, 1, !mcsema_real_eip !104
  %198 = trunc i32 %197 to i1, !mcsema_real_eip !104
  store i1 %198, i1* %OF, !mcsema_real_eip !104
  %199 = trunc i32 %185 to i8, !mcsema_real_eip !104
  %200 = call i8 @llvm.ctpop.i8(i8 %199), !mcsema_real_eip !104
  %201 = trunc i8 %200 to i1, !mcsema_real_eip !104
  %202 = xor i1 %201, true, !mcsema_real_eip !104
  store i1 %202, i1* %PF, !mcsema_real_eip !104
  %203 = icmp ult i32 %185, %_new_load_352, !mcsema_real_eip !104
  store i1 %203, i1* %CF, !mcsema_real_eip !104
  %204 = zext i32 %185 to i64, !mcsema_real_eip !104
  store i64 %204, i64* %XCX, !mcsema_real_eip !104
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -20
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %205 = ptrtoint i64* %_allin_new_bt_94 to i64, !mcsema_real_eip !105
  %206 = inttoptr i64 %205 to i32*, !mcsema_real_eip !105
  %_ptr_bt_355 = bitcast i32* %206 to i8*
  %_offset_above_rbp_356 = sub i64 %205, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_ptr_bt_355, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_ptr_bt_355, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_ptr_bt_355, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond1_n_cond2_363, %_cond4_362
  br i1 %_cond1_n_cond2_cond3_364, label %207, label %208

; <label>:207:                                    ; preds = %183
  %_address_in_parent_stack_bt_366 = bitcast i8* %_pot_address_in_parent_stack_357 to i32*
  br label %208

; <label>:208:                                    ; preds = %183, %207
  %209 = phi i32* [ %206, %183 ], [ %_address_in_parent_stack_bt_366, %207 ]
  %_new_load_367 = load i32, i32* %209
  %ECX_val.143 = load i32, i32* %ECX.112, !mcsema_real_eip !105
  %210 = add i32 %ECX_val.143, %_new_load_367, !mcsema_real_eip !105
  %211 = xor i32 %210, %_new_load_367, !mcsema_real_eip !105
  %212 = xor i32 %211, %ECX_val.143, !mcsema_real_eip !105
  %213 = and i32 %212, 16, !mcsema_real_eip !105
  %214 = icmp ne i32 %213, 0, !mcsema_real_eip !105
  store i1 %214, i1* %AF, !mcsema_real_eip !105
  %215 = lshr i32 %210, 31, !mcsema_real_eip !105
  %216 = trunc i32 %215 to i1, !mcsema_real_eip !105
  store i1 %216, i1* %SF, !mcsema_real_eip !105
  %217 = icmp eq i32 %210, 0, !mcsema_real_eip !105
  store i1 %217, i1* %ZF, !mcsema_real_eip !105
  %218 = xor i32 %_new_load_367, %ECX_val.143, !mcsema_real_eip !105
  %219 = xor i32 %218, -1, !mcsema_real_eip !105
  %220 = and i32 %219, %211, !mcsema_real_eip !105
  %221 = lshr i32 %220, 31, !mcsema_real_eip !105
  %222 = and i32 %221, 1, !mcsema_real_eip !105
  %223 = trunc i32 %222 to i1, !mcsema_real_eip !105
  store i1 %223, i1* %OF, !mcsema_real_eip !105
  %224 = trunc i32 %210 to i8, !mcsema_real_eip !105
  %225 = call i8 @llvm.ctpop.i8(i8 %224), !mcsema_real_eip !105
  %226 = trunc i8 %225 to i1, !mcsema_real_eip !105
  %227 = xor i1 %226, true, !mcsema_real_eip !105
  store i1 %227, i1* %PF, !mcsema_real_eip !105
  %228 = icmp ult i32 %210, %_new_load_367, !mcsema_real_eip !105
  store i1 %228, i1* %CF, !mcsema_real_eip !105
  %229 = zext i32 %210 to i64, !mcsema_real_eip !105
  store i64 %229, i64* %XCX, !mcsema_real_eip !105
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -24
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %230 = ptrtoint i64* %_allin_new_bt_97 to i64, !mcsema_real_eip !106
  %231 = inttoptr i64 %230 to i32*, !mcsema_real_eip !106
  %_ptr_bt_370 = bitcast i32* %231 to i8*
  %_offset_above_rbp_371 = sub i64 %230, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_ptr_bt_370, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_ptr_bt_370, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_ptr_bt_370, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  br i1 %_cond1_n_cond2_cond3_379, label %232, label %233

; <label>:232:                                    ; preds = %208
  %_address_in_parent_stack_bt_381 = bitcast i8* %_pot_address_in_parent_stack_372 to i32*
  br label %233

; <label>:233:                                    ; preds = %208, %232
  %234 = phi i32* [ %231, %208 ], [ %_address_in_parent_stack_bt_381, %232 ]
  %_new_load_382 = load i32, i32* %234
  %ECX_val.146 = load i32, i32* %ECX.112, !mcsema_real_eip !106
  %235 = add i32 %ECX_val.146, %_new_load_382, !mcsema_real_eip !106
  %236 = xor i32 %235, %_new_load_382, !mcsema_real_eip !106
  %237 = xor i32 %236, %ECX_val.146, !mcsema_real_eip !106
  %238 = and i32 %237, 16, !mcsema_real_eip !106
  %239 = icmp ne i32 %238, 0, !mcsema_real_eip !106
  store i1 %239, i1* %AF, !mcsema_real_eip !106
  %240 = lshr i32 %235, 31, !mcsema_real_eip !106
  %241 = trunc i32 %240 to i1, !mcsema_real_eip !106
  store i1 %241, i1* %SF, !mcsema_real_eip !106
  %242 = icmp eq i32 %235, 0, !mcsema_real_eip !106
  store i1 %242, i1* %ZF, !mcsema_real_eip !106
  %243 = xor i32 %_new_load_382, %ECX_val.146, !mcsema_real_eip !106
  %244 = xor i32 %243, -1, !mcsema_real_eip !106
  %245 = and i32 %244, %236, !mcsema_real_eip !106
  %246 = lshr i32 %245, 31, !mcsema_real_eip !106
  %247 = and i32 %246, 1, !mcsema_real_eip !106
  %248 = trunc i32 %247 to i1, !mcsema_real_eip !106
  store i1 %248, i1* %OF, !mcsema_real_eip !106
  %249 = trunc i32 %235 to i8, !mcsema_real_eip !106
  %250 = call i8 @llvm.ctpop.i8(i8 %249), !mcsema_real_eip !106
  %251 = trunc i8 %250 to i1, !mcsema_real_eip !106
  %252 = xor i1 %251, true, !mcsema_real_eip !106
  store i1 %252, i1* %PF, !mcsema_real_eip !106
  %253 = icmp ult i32 %235, %_new_load_382, !mcsema_real_eip !106
  store i1 %253, i1* %CF, !mcsema_real_eip !106
  %254 = zext i32 %235 to i64, !mcsema_real_eip !106
  store i64 %254, i64* %XCX, !mcsema_real_eip !106
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -28
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %255 = ptrtoint i64* %_allin_new_bt_100 to i64, !mcsema_real_eip !107
  %256 = inttoptr i64 %255 to i32*, !mcsema_real_eip !107
  %_ptr_bt_385 = bitcast i32* %256 to i8*
  %_offset_above_rbp_386 = sub i64 %255, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_ptr_bt_385, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_ptr_bt_385, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_ptr_bt_385, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond1_n_cond2_393, %_cond4_392
  br i1 %_cond1_n_cond2_cond3_394, label %257, label %258

; <label>:257:                                    ; preds = %233
  %_address_in_parent_stack_bt_396 = bitcast i8* %_pot_address_in_parent_stack_387 to i32*
  br label %258

; <label>:258:                                    ; preds = %233, %257
  %259 = phi i32* [ %256, %233 ], [ %_address_in_parent_stack_bt_396, %257 ]
  %_new_load_397 = load i32, i32* %259
  %ECX_val.149 = load i32, i32* %ECX.112, !mcsema_real_eip !107
  %260 = add i32 %ECX_val.149, %_new_load_397, !mcsema_real_eip !107
  %261 = xor i32 %260, %_new_load_397, !mcsema_real_eip !107
  %262 = xor i32 %261, %ECX_val.149, !mcsema_real_eip !107
  %263 = and i32 %262, 16, !mcsema_real_eip !107
  %264 = icmp ne i32 %263, 0, !mcsema_real_eip !107
  store i1 %264, i1* %AF, !mcsema_real_eip !107
  %265 = lshr i32 %260, 31, !mcsema_real_eip !107
  %266 = trunc i32 %265 to i1, !mcsema_real_eip !107
  store i1 %266, i1* %SF, !mcsema_real_eip !107
  %267 = icmp eq i32 %260, 0, !mcsema_real_eip !107
  store i1 %267, i1* %ZF, !mcsema_real_eip !107
  %268 = xor i32 %_new_load_397, %ECX_val.149, !mcsema_real_eip !107
  %269 = xor i32 %268, -1, !mcsema_real_eip !107
  %270 = and i32 %269, %261, !mcsema_real_eip !107
  %271 = lshr i32 %270, 31, !mcsema_real_eip !107
  %272 = and i32 %271, 1, !mcsema_real_eip !107
  %273 = trunc i32 %272 to i1, !mcsema_real_eip !107
  store i1 %273, i1* %OF, !mcsema_real_eip !107
  %274 = trunc i32 %260 to i8, !mcsema_real_eip !107
  %275 = call i8 @llvm.ctpop.i8(i8 %274), !mcsema_real_eip !107
  %276 = trunc i8 %275 to i1, !mcsema_real_eip !107
  %277 = xor i1 %276, true, !mcsema_real_eip !107
  store i1 %277, i1* %PF, !mcsema_real_eip !107
  %278 = icmp ult i32 %260, %_new_load_397, !mcsema_real_eip !107
  store i1 %278, i1* %CF, !mcsema_real_eip !107
  %279 = zext i32 %260 to i64, !mcsema_real_eip !107
  store i64 %279, i64* %XCX, !mcsema_real_eip !107
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -32
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %280 = ptrtoint i64* %_allin_new_bt_103 to i64, !mcsema_real_eip !108
  %281 = inttoptr i64 %280 to i32*, !mcsema_real_eip !108
  %_ptr_bt_400 = bitcast i32* %281 to i8*
  %_offset_above_rbp_401 = sub i64 %280, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_ptr_bt_400, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_ptr_bt_400, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_ptr_bt_400, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  br i1 %_cond1_n_cond2_cond3_409, label %282, label %283

; <label>:282:                                    ; preds = %258
  %_address_in_parent_stack_bt_411 = bitcast i8* %_pot_address_in_parent_stack_402 to i32*
  br label %283

; <label>:283:                                    ; preds = %258, %282
  %284 = phi i32* [ %281, %258 ], [ %_address_in_parent_stack_bt_411, %282 ]
  %_new_load_412 = load i32, i32* %284
  %ECX_val.152 = load i32, i32* %ECX.112, !mcsema_real_eip !108
  %285 = add i32 %ECX_val.152, %_new_load_412, !mcsema_real_eip !108
  %286 = xor i32 %285, %_new_load_412, !mcsema_real_eip !108
  %287 = xor i32 %286, %ECX_val.152, !mcsema_real_eip !108
  %288 = and i32 %287, 16, !mcsema_real_eip !108
  %289 = icmp ne i32 %288, 0, !mcsema_real_eip !108
  store i1 %289, i1* %AF, !mcsema_real_eip !108
  %290 = lshr i32 %285, 31, !mcsema_real_eip !108
  %291 = trunc i32 %290 to i1, !mcsema_real_eip !108
  store i1 %291, i1* %SF, !mcsema_real_eip !108
  %292 = icmp eq i32 %285, 0, !mcsema_real_eip !108
  store i1 %292, i1* %ZF, !mcsema_real_eip !108
  %293 = xor i32 %_new_load_412, %ECX_val.152, !mcsema_real_eip !108
  %294 = xor i32 %293, -1, !mcsema_real_eip !108
  %295 = and i32 %294, %286, !mcsema_real_eip !108
  %296 = lshr i32 %295, 31, !mcsema_real_eip !108
  %297 = and i32 %296, 1, !mcsema_real_eip !108
  %298 = trunc i32 %297 to i1, !mcsema_real_eip !108
  store i1 %298, i1* %OF, !mcsema_real_eip !108
  %299 = trunc i32 %285 to i8, !mcsema_real_eip !108
  %300 = call i8 @llvm.ctpop.i8(i8 %299), !mcsema_real_eip !108
  %301 = trunc i8 %300 to i1, !mcsema_real_eip !108
  %302 = xor i1 %301, true, !mcsema_real_eip !108
  store i1 %302, i1* %PF, !mcsema_real_eip !108
  %303 = icmp ult i32 %285, %_new_load_412, !mcsema_real_eip !108
  store i1 %303, i1* %CF, !mcsema_real_eip !108
  %304 = zext i32 %285 to i64, !mcsema_real_eip !108
  store i64 %304, i64* %XCX, !mcsema_real_eip !108
  %ECX_val.154 = load i32, i32* %ECX.112, !mcsema_real_eip !109
  %EAX_val.156 = load i32, i32* %EAX.134, !mcsema_real_eip !109
  %305 = sext i32 %EAX_val.156 to i64, !mcsema_real_eip !109
  %306 = sext i32 %ECX_val.154 to i64, !mcsema_real_eip !109
  %307 = mul i64 %305, %306, !mcsema_real_eip !109
  %308 = trunc i64 %307 to i32, !mcsema_real_eip !109
  %309 = sext i32 %308 to i64, !mcsema_real_eip !109
  %310 = icmp ne i64 %309, %307, !mcsema_real_eip !109
  %311 = icmp slt i32 %308, 0, !mcsema_real_eip !109
  store i1 %311, i1* %SF, !mcsema_real_eip !109
  store i1 %310, i1* %OF, !mcsema_real_eip !109
  store i1 %310, i1* %CF, !mcsema_real_eip !109
  %312 = zext i32 %308 to i64, !mcsema_real_eip !109
  store i64 %312, i64* %XAX, !mcsema_real_eip !109
  %_load_rsp_ptr_104 = load i8*, i8** %_RSP_ptr_
  %RSP_val.157 = load i64, i64* %XSP, !mcsema_real_eip !110
  %_allin_new_bt_105 = bitcast i8* %_load_rsp_ptr_104 to i64*
  %_ptr_to_int_413 = ptrtoint i64* %_allin_new_bt_105 to i64
  %_offset_above_rbp_416 = sub i64 %_ptr_to_int_413, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_load_rsp_ptr_104, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_load_rsp_ptr_104, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_load_rsp_ptr_104, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  br i1 %_cond1_n_cond2_cond3_424, label %313, label %314

; <label>:313:                                    ; preds = %283
  %_address_in_parent_stack_bt_426 = bitcast i8* %_pot_address_in_parent_stack_417 to i64*
  br label %314

; <label>:314:                                    ; preds = %283, %313
  %315 = phi i64* [ %_allin_new_bt_105, %283 ], [ %_address_in_parent_stack_bt_426, %313 ]
  %_new_load_427 = load i64, i64* %315
  store i64 %_new_load_427, i64* %XBX, !mcsema_real_eip !110
  %_new_gep_106 = getelementptr i8, i8* %_load_rsp_ptr_104, i64 8
  %316 = add i64 %RSP_val.157, 8, !mcsema_real_eip !110
  store volatile i8* %_new_gep_106, i8** %_RSP_ptr_
  store i64 %316, i64* %XSP, !mcsema_real_eip !110
  %_allin_new_bt_108 = bitcast i8* %_new_gep_106 to i64*
  %_ptr_to_int_428 = ptrtoint i64* %_allin_new_bt_108 to i64
  %_offset_above_rbp_431 = sub i64 %_ptr_to_int_428, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  br i1 %_cond1_n_cond2_cond3_439, label %317, label %318

; <label>:317:                                    ; preds = %314
  %_address_in_parent_stack_bt_441 = bitcast i8* %_pot_address_in_parent_stack_432 to i64*
  br label %318

; <label>:318:                                    ; preds = %314, %317
  %319 = phi i64* [ %_allin_new_bt_108, %314 ], [ %_address_in_parent_stack_bt_441, %317 ]
  %_new_load_442 = load i64, i64* %319
  %_new_int2ptr_ = inttoptr i64 %_new_load_442 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_442, i64* %XBP, !mcsema_real_eip !111
  %_new_gep_109 = getelementptr i8, i8* %_new_gep_106, i64 8
  %320 = add i64 %316, 8, !mcsema_real_eip !111
  store volatile i8* %_new_gep_109, i8** %_RSP_ptr_
  store i64 %320, i64* %XSP, !mcsema_real_eip !111
  %_new_gep_111 = getelementptr i8, i8* %_new_gep_109, i64 8
  %321 = add i64 %320, 8, !mcsema_real_eip !112
  %_allin_new_bt_112 = bitcast i8* %_new_gep_109 to i64*
  %_ptr_to_int_443 = ptrtoint i64* %_allin_new_bt_112 to i64
  %_offset_above_rbp_446 = sub i64 %_ptr_to_int_443, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_new_gep_109, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_new_gep_109, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_new_gep_109, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond1_n_cond2_453, %_cond4_452
  br i1 %_cond1_n_cond2_cond3_454, label %322, label %323

; <label>:322:                                    ; preds = %318
  %_address_in_parent_stack_bt_456 = bitcast i8* %_pot_address_in_parent_stack_447 to i64*
  br label %323

; <label>:323:                                    ; preds = %318, %322
  %324 = phi i64* [ %_allin_new_bt_112, %318 ], [ %_address_in_parent_stack_bt_456, %322 ]
  %_new_load_457 = load i64, i64* %324
  store i64 %_new_load_457, i64* %XIP, !mcsema_real_eip !112
  store volatile i8* %_new_gep_111, i8** %_RSP_ptr_
  store i64 %321, i64* %XSP, !mcsema_real_eip !112
  ret void, !mcsema_real_eip !112
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 160}
!3 = !{i64 161}
!4 = !{i64 164}
!5 = !{i64 168}
!6 = !{i64 173}
!7 = !{i64 175}
!8 = !{i64 182}
!9 = !{i64 185}
!10 = !{i64 189}
!11 = !{i64 192}
!12 = !{i64 197}
!13 = !{i64 202}
!14 = !{i64 204}
!15 = !{i64 208}
!16 = !{i64 213}
!17 = !{i64 217}
!18 = !{i64 224}
!19 = !{i64 228}
!20 = !{i64 234}
!21 = !{i64 237}
!22 = !{i64 240}
!23 = !{i64 243}
!24 = !{i64 247}
!25 = !{i64 251}
!26 = !{i64 254}
!27 = !{i64 257}
!28 = !{i64 260}
!29 = !{i64 263}
!30 = !{i64 268}
!31 = !{i64 275}
!32 = !{i64 279}
!33 = !{i64 285}
!34 = !{i64 288}
!35 = !{i64 291}
!36 = !{i64 295}
!37 = !{i64 299}
!38 = !{i64 302}
!39 = !{i64 305}
!40 = !{i64 308}
!41 = !{i64 311}
!42 = !{i64 316}
!43 = !{i64 321}
!44 = !{i64 326}
!45 = !{i64 331}
!46 = !{i64 336}
!47 = !{i64 342}
!48 = !{i64 348}
!49 = !{i64 353}
!50 = !{i64 357}
!51 = !{i64 361}
!52 = !{i64 368}
!53 = !{i64 373}
!54 = !{i64 381}
!55 = !{i64 386}
!56 = !{i64 389}
!57 = !{i64 394}
!58 = !{i64 404}
!59 = !{i64 407}
!60 = !{i64 410}
!61 = !{i64 412}
!62 = !{i64 417}
!63 = !{i64 420}
!64 = !{i64 423}
!65 = !{i64 425}
!66 = !{i64 429}
!67 = !{i64 430}
!68 = !{i64 0}
!69 = !{i64 1}
!70 = !{i64 4}
!71 = !{i64 5}
!72 = !{i64 9}
!73 = !{i64 13}
!74 = !{i64 17}
!75 = !{i64 20}
!76 = !{i64 23}
!77 = !{i64 26}
!78 = !{i64 29}
!79 = !{i64 32}
!80 = !{i64 36}
!81 = !{i64 40}
!82 = !{i64 43}
!83 = !{i64 47}
!84 = !{i64 51}
!85 = !{i64 55}
!86 = !{i64 62}
!87 = !{i64 69}
!88 = !{i64 72}
!89 = !{i64 75}
!90 = !{i64 81}
!91 = !{i64 85}
!92 = !{i64 89}
!93 = !{i64 92}
!94 = !{i64 96}
!95 = !{i64 100}
!96 = !{i64 103}
!97 = !{i64 106}
!98 = !{i64 109}
!99 = !{i64 112}
!100 = !{i64 115}
!101 = !{i64 118}
!102 = !{i64 123}
!103 = !{i64 126}
!104 = !{i64 129}
!105 = !{i64 132}
!106 = !{i64 135}
!107 = !{i64 138}
!108 = !{i64 141}
!109 = !{i64 144}
!110 = !{i64 147}
!111 = !{i64 148}
!112 = !{i64 149}
