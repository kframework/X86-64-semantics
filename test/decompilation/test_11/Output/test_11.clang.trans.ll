; ModuleID = 'Output/test_11.clang.trans.bc'
source_filename = "Output/test_11.clang.bc"
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
module asm "  .globl memset;"
module asm "  .globl _memset;"
module asm "  .type _memset,@function"
module asm "_memset:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memset@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memset,0b-_memset;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl doTrans;"
module asm "  .type doTrans,@function"
module asm "doTrans:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doTrans,0b-doTrans;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xc8 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\C8\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %14 = load i64, i64* %_allin_new_bt_18, !mcsema_real_eip !6
  store i64 %14, i64* %XDI, !mcsema_real_eip !6
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !7
  %_new_gep_20 = getelementptr i8, i8* %_load_rsp_ptr_19, i64 -8
  %15 = sub i64 %RSP_val.8, 8, !mcsema_real_eip !7
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, !mcsema_real_eip !7
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %15, i64* %XSP, !mcsema_real_eip !7
  %16 = call x86_64_sysvcc i64 @_strlen(i64 %14)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %16, i64* %XAX, !mcsema_real_eip !7
  %17 = add i64 1, %16, !mcsema_real_eip !8
  %18 = xor i64 %17, %16, !mcsema_real_eip !8
  %19 = xor i64 %18, 1, !mcsema_real_eip !8
  %20 = and i64 %19, 16, !mcsema_real_eip !8
  %21 = icmp ne i64 %20, 0, !mcsema_real_eip !8
  store i1 %21, i1* %AF, !mcsema_real_eip !8
  %22 = lshr i64 %17, 63, !mcsema_real_eip !8
  %23 = trunc i64 %22 to i1, !mcsema_real_eip !8
  store i1 %23, i1* %SF, !mcsema_real_eip !8
  %24 = icmp eq i64 %17, 0, !mcsema_real_eip !8
  store i1 %24, i1* %ZF, !mcsema_real_eip !8
  %25 = xor i64 %16, 1, !mcsema_real_eip !8
  %26 = xor i64 %25, -1, !mcsema_real_eip !8
  %27 = and i64 %26, %18, !mcsema_real_eip !8
  %28 = lshr i64 %27, 63, !mcsema_real_eip !8
  %29 = and i64 %28, 1, !mcsema_real_eip !8
  %30 = trunc i64 %29 to i1, !mcsema_real_eip !8
  store i1 %30, i1* %OF, !mcsema_real_eip !8
  %31 = trunc i64 %17 to i8, !mcsema_real_eip !8
  %32 = call i8 @llvm.ctpop.i8(i8 %31), !mcsema_real_eip !8
  %33 = trunc i8 %32 to i1, !mcsema_real_eip !8
  %34 = xor i1 %33, true, !mcsema_real_eip !8
  store i1 %34, i1* %PF, !mcsema_real_eip !8
  %35 = icmp ult i64 %17, %16, !mcsema_real_eip !8
  store i1 %35, i1* %CF, !mcsema_real_eip !8
  store i64 %17, i64* %XAX, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 %17, i64* %_allin_new_bt_24, !mcsema_real_eip !9
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %36 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !10
  store i64 %36, i64* %XDI, !mcsema_real_eip !10
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %37 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !11
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %37, i64* %XSP, !mcsema_real_eip !11
  %38 = call x86_64_sysvcc i64 @_malloc(i64 %36)
  %_rsp_fix_119 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_120 = getelementptr i8, i8* %_rsp_fix_119, i64 8
  store i8* %_gep_fix_120, i8** %_RSP_ptr_
  store i64 %38, i64* %XAX, !mcsema_real_eip !11
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -32
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %38, i64* %_allin_new_bt_33, !mcsema_real_eip !12
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -32
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %39 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !13
  store i1 false, i1* %AF, !mcsema_real_eip !13
  %40 = trunc i64 %39 to i8, !mcsema_real_eip !13
  %41 = call i8 @llvm.ctpop.i8(i8 %40), !mcsema_real_eip !13
  %42 = trunc i8 %41 to i1, !mcsema_real_eip !13
  %43 = xor i1 %42, true, !mcsema_real_eip !13
  store i1 %43, i1* %PF, !mcsema_real_eip !13
  %44 = icmp eq i64 %39, 0, !mcsema_real_eip !13
  store i1 %44, i1* %ZF, !mcsema_real_eip !13
  %45 = lshr i64 %39, 63, !mcsema_real_eip !13
  %46 = trunc i64 %45 to i1, !mcsema_real_eip !13
  store i1 %46, i1* %SF, !mcsema_real_eip !13
  store i1 false, i1* %CF, !mcsema_real_eip !13
  store i1 false, i1* %OF, !mcsema_real_eip !13
  br i1 %44, label %block_0xb6, label %block_0x35, !mcsema_real_eip !14

block_0x35:                                       ; preds = %block_0x0
  %ESI.18 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.19 = load i32, i32* %ESI.18, !mcsema_real_eip !15
  store i1 false, i1* %CF, !mcsema_real_eip !15
  store i1 false, i1* %OF, !mcsema_real_eip !15
  store i1 false, i1* %SF, !mcsema_real_eip !15
  store i1 true, i1* %ZF, !mcsema_real_eip !15
  store i1 true, i1* %PF, !mcsema_real_eip !15
  store i1 undef, i1* %AF, !mcsema_real_eip !15
  store i64 0, i64* %XSI, !mcsema_real_eip !15
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -16
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %47 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !16
  store i64 %47, i64* %XAX, !mcsema_real_eip !16
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -40
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 %47, i64* %_allin_new_bt_42, !mcsema_real_eip !17
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -32
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %48 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !18
  store i64 %48, i64* %XAX, !mcsema_real_eip !18
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -48
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 %48, i64* %_allin_new_bt_48, !mcsema_real_eip !19
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -32
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %49 = load i64, i64* %_allin_new_bt_51, !mcsema_real_eip !20
  store i64 %49, i64* %XDI, !mcsema_real_eip !20
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -24
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %50 = load i64, i64* %_allin_new_bt_54, !mcsema_real_eip !21
  store i64 %50, i64* %XDX, !mcsema_real_eip !21
  %RSI_val.31 = load i64, i64* %XSI, !mcsema_real_eip !22
  %_load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_55, i64 -8
  %51 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !22
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, !mcsema_real_eip !22
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %51, i64* %XSP, !mcsema_real_eip !22
  %52 = call x86_64_sysvcc i64 @_memset(i64 %49, i64 %RSI_val.31, i64 %50)
  %_rsp_fix_121 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_122 = getelementptr i8, i8* %_rsp_fix_121, i64 8
  store i8* %_gep_fix_122, i8** %_RSP_ptr_
  store i64 %52, i64* %XAX, !mcsema_real_eip !22
  br label %block_0x54, !mcsema_real_eip !23

block_0x54:                                       ; preds = %block_0x8c, %block_0x35
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -40
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %53 = load i64, i64* %_allin_new_bt_60, !mcsema_real_eip !23
  store i64 %53, i64* %XAX, !mcsema_real_eip !23
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !24
  %55 = inttoptr i64 %53 to i8*, !mcsema_real_eip !24
  %56 = load i8, i8* %55, !mcsema_real_eip !24
  %57 = sext i8 %56 to i32, !mcsema_real_eip !24
  %58 = zext i32 %57 to i64, !mcsema_real_eip !24
  store i64 %58, i64* %XCX, !mcsema_real_eip !24
  %ECX.36 = bitcast i64* %XCX to i32*, !mcsema_real_eip !25
  %ECX_val.37 = load i32, i32* %ECX.36, !mcsema_real_eip !25
  store i1 false, i1* %AF, !mcsema_real_eip !25
  %59 = trunc i32 %ECX_val.37 to i8, !mcsema_real_eip !25
  %60 = call i8 @llvm.ctpop.i8(i8 %59), !mcsema_real_eip !25
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !25
  %62 = xor i1 %61, true, !mcsema_real_eip !25
  store i1 %62, i1* %PF, !mcsema_real_eip !25
  %63 = icmp eq i32 %ECX_val.37, 0, !mcsema_real_eip !25
  store i1 %63, i1* %ZF, !mcsema_real_eip !25
  %64 = lshr i32 %ECX_val.37, 31, !mcsema_real_eip !25
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !25
  store i1 %65, i1* %SF, !mcsema_real_eip !25
  store i1 false, i1* %CF, !mcsema_real_eip !25
  store i1 false, i1* %OF, !mcsema_real_eip !25
  br i1 %63, label %block_0xa9, label %block_0x64, !mcsema_real_eip !26

block_0x64:                                       ; preds = %block_0x54
  %66 = load i64, i64* %_allin_new_bt_60, !mcsema_real_eip !27
  store i64 %66, i64* %XAX, !mcsema_real_eip !27
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !28
  %68 = inttoptr i64 %66 to i8*, !mcsema_real_eip !28
  %69 = load i8, i8* %68, !mcsema_real_eip !28
  %70 = sext i8 %69 to i32, !mcsema_real_eip !28
  %71 = zext i32 %70 to i64, !mcsema_real_eip !28
  store i64 %71, i64* %XCX, !mcsema_real_eip !28
  %ECX_val.41 = load i32, i32* %ECX.36, !mcsema_real_eip !29
  %72 = sub i32 %ECX_val.41, 47, !mcsema_real_eip !29
  %73 = xor i32 %72, %ECX_val.41, !mcsema_real_eip !29
  %74 = xor i32 %73, 47, !mcsema_real_eip !29
  %75 = and i32 %74, 16, !mcsema_real_eip !29
  %76 = icmp ne i32 %75, 0, !mcsema_real_eip !29
  store i1 %76, i1* %AF, !mcsema_real_eip !29
  %77 = trunc i32 %72 to i8, !mcsema_real_eip !29
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !29
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !29
  %80 = xor i1 %79, true, !mcsema_real_eip !29
  store i1 %80, i1* %PF, !mcsema_real_eip !29
  %81 = icmp eq i32 %72, 0, !mcsema_real_eip !29
  store i1 %81, i1* %ZF, !mcsema_real_eip !29
  %82 = lshr i32 %72, 31, !mcsema_real_eip !29
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !29
  store i1 %83, i1* %SF, !mcsema_real_eip !29
  %84 = icmp ult i32 %ECX_val.41, 47, !mcsema_real_eip !29
  store i1 %84, i1* %CF, !mcsema_real_eip !29
  %85 = xor i32 %ECX_val.41, 47, !mcsema_real_eip !29
  %86 = and i32 %85, %73, !mcsema_real_eip !29
  %87 = lshr i32 %86, 31, !mcsema_real_eip !29
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !29
  store i1 %88, i1* %OF, !mcsema_real_eip !29
  %89 = icmp eq i1 %81, false, !mcsema_real_eip !30
  br i1 %89, label %block_0x80, label %block_0x74, !mcsema_real_eip !30

block_0x74:                                       ; preds = %block_0x64
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -48
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %90 = load i64, i64* %_allin_new_bt_66, !mcsema_real_eip !31
  store i64 %90, i64* %XAX, !mcsema_real_eip !31
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !32
  %92 = inttoptr i64 %90 to i8*, !mcsema_real_eip !32
  store i8 92, i8* %92, !mcsema_real_eip !32
  br label %block_0x8c, !mcsema_real_eip !33

block_0x80:                                       ; preds = %block_0x64
  %93 = load i64, i64* %_allin_new_bt_60, !mcsema_real_eip !34
  store i64 %93, i64* %XAX, !mcsema_real_eip !34
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !35
  %95 = inttoptr i64 %93 to i8*, !mcsema_real_eip !35
  %96 = load i8, i8* %95, !mcsema_real_eip !35
  %CL.46 = bitcast i64* %XCX to i8*, !mcsema_real_eip !35
  store i8 %96, i8* %CL.46, !mcsema_real_eip !35
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -48
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %97 = load i64, i64* %_allin_new_bt_72, !mcsema_real_eip !36
  store i64 %97, i64* %XAX, !mcsema_real_eip !36
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !37
  %99 = inttoptr i64 %97 to i8*, !mcsema_real_eip !37
  store i8 %96, i8* %99, !mcsema_real_eip !37
  br label %block_0x8c, !mcsema_real_eip !38

block_0x8c:                                       ; preds = %block_0x80, %block_0x74
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -40
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %100 = load i64, i64* %_allin_new_bt_75, !mcsema_real_eip !38
  store i64 %100, i64* %XAX, !mcsema_real_eip !38
  %101 = add i64 1, %100, !mcsema_real_eip !39
  %102 = xor i64 %101, %100, !mcsema_real_eip !39
  %103 = xor i64 %102, 1, !mcsema_real_eip !39
  %104 = and i64 %103, 16, !mcsema_real_eip !39
  %105 = icmp ne i64 %104, 0, !mcsema_real_eip !39
  store i1 %105, i1* %AF, !mcsema_real_eip !39
  %106 = lshr i64 %101, 63, !mcsema_real_eip !39
  %107 = trunc i64 %106 to i1, !mcsema_real_eip !39
  store i1 %107, i1* %SF, !mcsema_real_eip !39
  %108 = icmp eq i64 %101, 0, !mcsema_real_eip !39
  store i1 %108, i1* %ZF, !mcsema_real_eip !39
  %109 = xor i64 %100, 1, !mcsema_real_eip !39
  %110 = xor i64 %109, -1, !mcsema_real_eip !39
  %111 = and i64 %110, %102, !mcsema_real_eip !39
  %112 = lshr i64 %111, 63, !mcsema_real_eip !39
  %113 = and i64 %112, 1, !mcsema_real_eip !39
  %114 = trunc i64 %113 to i1, !mcsema_real_eip !39
  store i1 %114, i1* %OF, !mcsema_real_eip !39
  %115 = trunc i64 %101 to i8, !mcsema_real_eip !39
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !39
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !39
  %118 = xor i1 %117, true, !mcsema_real_eip !39
  store i1 %118, i1* %PF, !mcsema_real_eip !39
  %119 = icmp ult i64 %101, %100, !mcsema_real_eip !39
  store i1 %119, i1* %CF, !mcsema_real_eip !39
  store i64 %101, i64* %XAX, !mcsema_real_eip !39
  store i64 %101, i64* %_allin_new_bt_75, !mcsema_real_eip !40
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -48
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %120 = load i64, i64* %_allin_new_bt_81, !mcsema_real_eip !41
  store i64 %120, i64* %XAX, !mcsema_real_eip !41
  %121 = add i64 1, %120, !mcsema_real_eip !42
  %122 = xor i64 %121, %120, !mcsema_real_eip !42
  %123 = xor i64 %122, 1, !mcsema_real_eip !42
  %124 = and i64 %123, 16, !mcsema_real_eip !42
  %125 = icmp ne i64 %124, 0, !mcsema_real_eip !42
  store i1 %125, i1* %AF, !mcsema_real_eip !42
  %126 = lshr i64 %121, 63, !mcsema_real_eip !42
  %127 = trunc i64 %126 to i1, !mcsema_real_eip !42
  store i1 %127, i1* %SF, !mcsema_real_eip !42
  %128 = icmp eq i64 %121, 0, !mcsema_real_eip !42
  store i1 %128, i1* %ZF, !mcsema_real_eip !42
  %129 = xor i64 %120, 1, !mcsema_real_eip !42
  %130 = xor i64 %129, -1, !mcsema_real_eip !42
  %131 = and i64 %130, %122, !mcsema_real_eip !42
  %132 = lshr i64 %131, 63, !mcsema_real_eip !42
  %133 = and i64 %132, 1, !mcsema_real_eip !42
  %134 = trunc i64 %133 to i1, !mcsema_real_eip !42
  store i1 %134, i1* %OF, !mcsema_real_eip !42
  %135 = trunc i64 %121 to i8, !mcsema_real_eip !42
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !42
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !42
  %138 = xor i1 %137, true, !mcsema_real_eip !42
  store i1 %138, i1* %PF, !mcsema_real_eip !42
  %139 = icmp ult i64 %121, %120, !mcsema_real_eip !42
  store i1 %139, i1* %CF, !mcsema_real_eip !42
  store i64 %121, i64* %XAX, !mcsema_real_eip !42
  store i64 %121, i64* %_allin_new_bt_81, !mcsema_real_eip !43
  br label %block_0x54, !mcsema_real_eip !44

block_0xa9:                                       ; preds = %block_0x54
  %_new_gep_86 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -32
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %140 = load i64, i64* %_allin_new_bt_87, !mcsema_real_eip !45
  store i64 %140, i64* %XAX, !mcsema_real_eip !45
  %_new_gep_89 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -8
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  store i64 %140, i64* %_allin_new_bt_90, !mcsema_real_eip !46
  br label %block_0xbe, !mcsema_real_eip !47

block_0xb6:                                       ; preds = %block_0x0
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  store i64 0, i64* %_allin_new_bt_93, !mcsema_real_eip !48
  br label %block_0xbe, !mcsema_real_eip !49

block_0xbe:                                       ; preds = %block_0xb6, %block_0xa9
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -8
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %141 = load i64, i64* %_allin_new_bt_96, !mcsema_real_eip !49
  store i64 %141, i64* %XAX, !mcsema_real_eip !49
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !50
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 48
  %142 = add i64 48, %RSP_val.64, !mcsema_real_eip !50
  %_trans_p2i_99 = ptrtoint i8* %_new_gep_98 to i64
  %_trans_p2i_100 = ptrtoint i8* %_load_rsp_ptr_97 to i64
  %_trans_xor_101 = xor i64 %_trans_p2i_99, %_trans_p2i_100
  %143 = xor i64 %_trans_xor_101, 48, !mcsema_real_eip !50
  %144 = and i64 %143, 16, !mcsema_real_eip !50
  %145 = icmp ne i64 %144, 0, !mcsema_real_eip !50
  store i1 %145, i1* %AF, !mcsema_real_eip !50
  %146 = lshr i64 %142, 63, !mcsema_real_eip !50
  %147 = trunc i64 %146 to i1, !mcsema_real_eip !50
  store i1 %147, i1* %SF, !mcsema_real_eip !50
  %_trans_icmp_eq_103 = icmp eq i64 %_trans_p2i_99, 0
  store i1 %_trans_icmp_eq_103, i1* %ZF, !mcsema_real_eip !50
  %_trans_xor_105 = xor i64 %_trans_p2i_100, 48
  %148 = xor i64 %_trans_xor_105, -1, !mcsema_real_eip !50
  %149 = and i64 %148, %_trans_xor_101, !mcsema_real_eip !50
  %150 = lshr i64 %149, 63, !mcsema_real_eip !50
  %151 = and i64 %150, 1, !mcsema_real_eip !50
  %152 = trunc i64 %151 to i1, !mcsema_real_eip !50
  store i1 %152, i1* %OF, !mcsema_real_eip !50
  %_trans_trunc_110 = trunc i64 %_trans_p2i_99 to i8
  %153 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_110), !mcsema_real_eip !50
  %154 = trunc i8 %153 to i1, !mcsema_real_eip !50
  %155 = xor i1 %154, true, !mcsema_real_eip !50
  store i1 %155, i1* %PF, !mcsema_real_eip !50
  %_trans_icmp_ne_112 = icmp ne i64 %_trans_p2i_99, %RSP_val.64
  store i1 %_trans_icmp_ne_112, i1* %CF, !mcsema_real_eip !50
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_
  store i64 %142, i64* %XSP, !mcsema_real_eip !50
  %_allin_new_bt_114 = bitcast i8* %_new_gep_98 to i64*
  %156 = load i64, i64* %_allin_new_bt_114, !mcsema_real_eip !51
  %_new_int2ptr_ = inttoptr i64 %156 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %156, i64* %XBP, !mcsema_real_eip !51
  %_new_gep_115 = getelementptr i8, i8* %_new_gep_98, i64 8
  %157 = add i64 %142, 8, !mcsema_real_eip !51
  store volatile i8* %_new_gep_115, i8** %_RSP_ptr_
  store i64 %157, i64* %XSP, !mcsema_real_eip !51
  %_new_gep_117 = getelementptr i8, i8* %_new_gep_115, i64 8
  %158 = add i64 %157, 8, !mcsema_real_eip !52
  %_allin_new_bt_118 = bitcast i8* %_new_gep_115 to i64*
  %159 = load i64, i64* %_allin_new_bt_118, !mcsema_real_eip !52
  store i64 %159, i64* %XIP, !mcsema_real_eip !52
  store volatile i8* %_new_gep_117, i8** %_RSP_ptr_
  store i64 %158, i64* %XSP, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @memset(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memset(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @doTrans() #2

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
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, !mcsema_real_eip !5
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
  store i64 %_new_load_, i64* %XDI, !mcsema_real_eip !6
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !7
  %_new_gep_20 = getelementptr i8, i8* %_load_rsp_ptr_19, i64 -8
  %17 = sub i64 %RSP_val.8, 8, !mcsema_real_eip !7
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, !mcsema_real_eip !7
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %17, i64* %XSP, !mcsema_real_eip !7
  %18 = call x86_64_sysvcc i64 @_strlen(i64 %_new_load_)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %18, i64* %XAX, !mcsema_real_eip !7
  %19 = add i64 1, %18, !mcsema_real_eip !8
  %20 = xor i64 %19, %18, !mcsema_real_eip !8
  %21 = xor i64 %20, 1, !mcsema_real_eip !8
  %22 = and i64 %21, 16, !mcsema_real_eip !8
  %23 = icmp ne i64 %22, 0, !mcsema_real_eip !8
  store i1 %23, i1* %AF, !mcsema_real_eip !8
  %24 = lshr i64 %19, 63, !mcsema_real_eip !8
  %25 = trunc i64 %24 to i1, !mcsema_real_eip !8
  store i1 %25, i1* %SF, !mcsema_real_eip !8
  %26 = icmp eq i64 %19, 0, !mcsema_real_eip !8
  store i1 %26, i1* %ZF, !mcsema_real_eip !8
  %27 = xor i64 %18, 1, !mcsema_real_eip !8
  %28 = xor i64 %27, -1, !mcsema_real_eip !8
  %29 = and i64 %28, %20, !mcsema_real_eip !8
  %30 = lshr i64 %29, 63, !mcsema_real_eip !8
  %31 = and i64 %30, 1, !mcsema_real_eip !8
  %32 = trunc i64 %31 to i1, !mcsema_real_eip !8
  store i1 %32, i1* %OF, !mcsema_real_eip !8
  %33 = trunc i64 %19 to i8, !mcsema_real_eip !8
  %34 = call i8 @llvm.ctpop.i8(i8 %33), !mcsema_real_eip !8
  %35 = trunc i8 %34 to i1, !mcsema_real_eip !8
  %36 = xor i1 %35, true, !mcsema_real_eip !8
  store i1 %36, i1* %PF, !mcsema_real_eip !8
  %37 = icmp ult i64 %19, %18, !mcsema_real_eip !8
  store i1 %37, i1* %CF, !mcsema_real_eip !8
  store i64 %19, i64* %XAX, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 %19, i64* %_allin_new_bt_24, !mcsema_real_eip !9
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -24
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_123 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_126 = sub i64 %_ptr_to_int_123, %_local_end_to_int_
  %_pot_address_in_parent_stack_127 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_126
  %_cond1_128 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_129 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_130 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_131 = or i1 %_cond2_1_129, %_cond2_2_130
  %_cond4_132 = icmp ule i8* %_pot_address_in_parent_stack_127, %_parent_stack_end_ptr_
  %_cond1_n_cond2_133 = and i1 %_cond1_128, %_cond2_131
  %_cond1_n_cond2_cond3_134 = and i1 %_cond1_n_cond2_133, %_cond4_132
  br i1 %_cond1_n_cond2_cond3_134, label %38, label %39

; <label>:38:                                     ; preds = %15
  %_address_in_parent_stack_bt_136 = bitcast i8* %_pot_address_in_parent_stack_127 to i64*
  br label %39

; <label>:39:                                     ; preds = %15, %38
  %40 = phi i64* [ %_allin_new_bt_27, %15 ], [ %_address_in_parent_stack_bt_136, %38 ]
  %_new_load_137 = load i64, i64* %40
  store i64 %_new_load_137, i64* %XDI, !mcsema_real_eip !10
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %41 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !11
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !11
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %41, i64* %XSP, !mcsema_real_eip !11
  %42 = call x86_64_sysvcc i64 @_malloc(i64 %_new_load_137)
  %_rsp_fix_119 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_120 = getelementptr i8, i8* %_rsp_fix_119, i64 8
  store i8* %_gep_fix_120, i8** %_RSP_ptr_
  store i64 %42, i64* %XAX, !mcsema_real_eip !11
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -32
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %42, i64* %_allin_new_bt_33, !mcsema_real_eip !12
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -32
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_138 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_141 = sub i64 %_ptr_to_int_138, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  br i1 %_cond1_n_cond2_cond3_149, label %43, label %44

; <label>:43:                                     ; preds = %39
  %_address_in_parent_stack_bt_151 = bitcast i8* %_pot_address_in_parent_stack_142 to i64*
  br label %44

; <label>:44:                                     ; preds = %39, %43
  %45 = phi i64* [ %_allin_new_bt_36, %39 ], [ %_address_in_parent_stack_bt_151, %43 ]
  %_new_load_152 = load i64, i64* %45
  store i1 false, i1* %AF, !mcsema_real_eip !13
  %46 = trunc i64 %_new_load_152 to i8, !mcsema_real_eip !13
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !13
  %48 = trunc i8 %47 to i1, !mcsema_real_eip !13
  %49 = xor i1 %48, true, !mcsema_real_eip !13
  store i1 %49, i1* %PF, !mcsema_real_eip !13
  %50 = icmp eq i64 %_new_load_152, 0, !mcsema_real_eip !13
  store i1 %50, i1* %ZF, !mcsema_real_eip !13
  %51 = lshr i64 %_new_load_152, 63, !mcsema_real_eip !13
  %52 = trunc i64 %51 to i1, !mcsema_real_eip !13
  store i1 %52, i1* %SF, !mcsema_real_eip !13
  store i1 false, i1* %CF, !mcsema_real_eip !13
  store i1 false, i1* %OF, !mcsema_real_eip !13
  br i1 %50, label %block_0xb6, label %block_0x35, !mcsema_real_eip !14

block_0x35:                                       ; preds = %44
  %ESI.18 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.19 = load i32, i32* %ESI.18, !mcsema_real_eip !15
  store i1 false, i1* %CF, !mcsema_real_eip !15
  store i1 false, i1* %OF, !mcsema_real_eip !15
  store i1 false, i1* %SF, !mcsema_real_eip !15
  store i1 true, i1* %ZF, !mcsema_real_eip !15
  store i1 true, i1* %PF, !mcsema_real_eip !15
  store i1 undef, i1* %AF, !mcsema_real_eip !15
  store i64 0, i64* %XSI, !mcsema_real_eip !15
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -16
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_153 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_156 = sub i64 %_ptr_to_int_153, %_local_end_to_int_
  %_pot_address_in_parent_stack_157 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_156
  %_cond1_158 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_159 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_160 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_161 = or i1 %_cond2_1_159, %_cond2_2_160
  %_cond4_162 = icmp ule i8* %_pot_address_in_parent_stack_157, %_parent_stack_end_ptr_
  %_cond1_n_cond2_163 = and i1 %_cond1_158, %_cond2_161
  %_cond1_n_cond2_cond3_164 = and i1 %_cond1_n_cond2_163, %_cond4_162
  br i1 %_cond1_n_cond2_cond3_164, label %53, label %54

; <label>:53:                                     ; preds = %block_0x35
  %_address_in_parent_stack_bt_166 = bitcast i8* %_pot_address_in_parent_stack_157 to i64*
  br label %54

; <label>:54:                                     ; preds = %block_0x35, %53
  %55 = phi i64* [ %_allin_new_bt_39, %block_0x35 ], [ %_address_in_parent_stack_bt_166, %53 ]
  %_new_load_167 = load i64, i64* %55
  store i64 %_new_load_167, i64* %XAX, !mcsema_real_eip !16
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -40
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 %_new_load_167, i64* %_allin_new_bt_42, !mcsema_real_eip !17
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -32
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_168 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_171 = sub i64 %_ptr_to_int_168, %_local_end_to_int_
  %_pot_address_in_parent_stack_172 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_171
  %_cond1_173 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_174 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_175 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_176 = or i1 %_cond2_1_174, %_cond2_2_175
  %_cond4_177 = icmp ule i8* %_pot_address_in_parent_stack_172, %_parent_stack_end_ptr_
  %_cond1_n_cond2_178 = and i1 %_cond1_173, %_cond2_176
  %_cond1_n_cond2_cond3_179 = and i1 %_cond1_n_cond2_178, %_cond4_177
  br i1 %_cond1_n_cond2_cond3_179, label %56, label %57

; <label>:56:                                     ; preds = %54
  %_address_in_parent_stack_bt_181 = bitcast i8* %_pot_address_in_parent_stack_172 to i64*
  br label %57

; <label>:57:                                     ; preds = %54, %56
  %58 = phi i64* [ %_allin_new_bt_45, %54 ], [ %_address_in_parent_stack_bt_181, %56 ]
  %_new_load_182 = load i64, i64* %58
  store i64 %_new_load_182, i64* %XAX, !mcsema_real_eip !18
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -48
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 %_new_load_182, i64* %_allin_new_bt_48, !mcsema_real_eip !19
  %_load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -32
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
  br i1 %_cond1_n_cond2_cond3_194, label %59, label %60

; <label>:59:                                     ; preds = %57
  %_address_in_parent_stack_bt_196 = bitcast i8* %_pot_address_in_parent_stack_187 to i64*
  br label %60

; <label>:60:                                     ; preds = %57, %59
  %61 = phi i64* [ %_allin_new_bt_51, %57 ], [ %_address_in_parent_stack_bt_196, %59 ]
  %_new_load_197 = load i64, i64* %61
  store i64 %_new_load_197, i64* %XDI, !mcsema_real_eip !20
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_49, i64 -24
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %_ptr_to_int_198 = ptrtoint i64* %_allin_new_bt_54 to i64
  %_offset_above_rbp_201 = sub i64 %_ptr_to_int_198, %_local_end_to_int_
  %_pot_address_in_parent_stack_202 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_201
  %_cond1_203 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_204 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_205 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_206 = or i1 %_cond2_1_204, %_cond2_2_205
  %_cond4_207 = icmp ule i8* %_pot_address_in_parent_stack_202, %_parent_stack_end_ptr_
  %_cond1_n_cond2_208 = and i1 %_cond1_203, %_cond2_206
  %_cond1_n_cond2_cond3_209 = and i1 %_cond1_n_cond2_208, %_cond4_207
  br i1 %_cond1_n_cond2_cond3_209, label %62, label %63

; <label>:62:                                     ; preds = %60
  %_address_in_parent_stack_bt_211 = bitcast i8* %_pot_address_in_parent_stack_202 to i64*
  br label %63

; <label>:63:                                     ; preds = %60, %62
  %64 = phi i64* [ %_allin_new_bt_54, %60 ], [ %_address_in_parent_stack_bt_211, %62 ]
  %_new_load_212 = load i64, i64* %64
  store i64 %_new_load_212, i64* %XDX, !mcsema_real_eip !21
  %RSI_val.31 = load i64, i64* %XSI, !mcsema_real_eip !22
  %_load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_55, i64 -8
  %65 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !22
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, !mcsema_real_eip !22
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %65, i64* %XSP, !mcsema_real_eip !22
  %66 = call x86_64_sysvcc i64 @_memset(i64 %_new_load_197, i64 %RSI_val.31, i64 %_new_load_212)
  %_rsp_fix_121 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_122 = getelementptr i8, i8* %_rsp_fix_121, i64 8
  store i8* %_gep_fix_122, i8** %_RSP_ptr_
  store i64 %66, i64* %XAX, !mcsema_real_eip !22
  br label %block_0x54, !mcsema_real_eip !23

block_0x54:                                       ; preds = %153, %63
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -40
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %_ptr_to_int_213 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_216 = sub i64 %_ptr_to_int_213, %_local_end_to_int_
  %_pot_address_in_parent_stack_217 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_cond1_218 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_219 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_220 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_221 = or i1 %_cond2_1_219, %_cond2_2_220
  %_cond4_222 = icmp ule i8* %_pot_address_in_parent_stack_217, %_parent_stack_end_ptr_
  %_cond1_n_cond2_223 = and i1 %_cond1_218, %_cond2_221
  %_cond1_n_cond2_cond3_224 = and i1 %_cond1_n_cond2_223, %_cond4_222
  br i1 %_cond1_n_cond2_cond3_224, label %67, label %68

; <label>:67:                                     ; preds = %block_0x54
  %_address_in_parent_stack_bt_226 = bitcast i8* %_pot_address_in_parent_stack_217 to i64*
  br label %68

; <label>:68:                                     ; preds = %block_0x54, %67
  %69 = phi i64* [ %_allin_new_bt_60, %block_0x54 ], [ %_address_in_parent_stack_bt_226, %67 ]
  %_new_load_227 = load i64, i64* %69
  store i64 %_new_load_227, i64* %XAX, !mcsema_real_eip !23
  %70 = inttoptr i64 %_new_load_227 to i64*, !mcsema_real_eip !24
  %71 = inttoptr i64 %_new_load_227 to i8*, !mcsema_real_eip !24
  %_offset_above_rbp_230 = sub i64 %_new_load_227, %_local_end_to_int_
  %_pot_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_cond1_232 = icmp ugt i8* %71, %_local_stack_end_ptr_
  %_cond2_1_233 = icmp ugt i8* %71, %_parent_stack_end_ptr_
  %_cond2_2_234 = icmp ult i8* %71, %_parent_stack_start_ptr_
  %_cond2_235 = or i1 %_cond2_1_233, %_cond2_2_234
  %_cond4_236 = icmp ule i8* %_pot_address_in_parent_stack_231, %_parent_stack_end_ptr_
  %_cond1_n_cond2_237 = and i1 %_cond1_232, %_cond2_235
  %_cond1_n_cond2_cond3_238 = and i1 %_cond1_n_cond2_237, %_cond4_236
  br i1 %_cond1_n_cond2_cond3_238, label %72, label %73

; <label>:72:                                     ; preds = %68
  br label %73

; <label>:73:                                     ; preds = %68, %72
  %74 = phi i8* [ %71, %68 ], [ %_pot_address_in_parent_stack_231, %72 ]
  %_new_load_240 = load i8, i8* %74
  %75 = sext i8 %_new_load_240 to i32, !mcsema_real_eip !24
  %76 = zext i32 %75 to i64, !mcsema_real_eip !24
  store i64 %76, i64* %XCX, !mcsema_real_eip !24
  %ECX.36 = bitcast i64* %XCX to i32*, !mcsema_real_eip !25
  %ECX_val.37 = load i32, i32* %ECX.36, !mcsema_real_eip !25
  store i1 false, i1* %AF, !mcsema_real_eip !25
  %77 = trunc i32 %ECX_val.37 to i8, !mcsema_real_eip !25
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !25
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !25
  %80 = xor i1 %79, true, !mcsema_real_eip !25
  store i1 %80, i1* %PF, !mcsema_real_eip !25
  %81 = icmp eq i32 %ECX_val.37, 0, !mcsema_real_eip !25
  store i1 %81, i1* %ZF, !mcsema_real_eip !25
  %82 = lshr i32 %ECX_val.37, 31, !mcsema_real_eip !25
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !25
  store i1 %83, i1* %SF, !mcsema_real_eip !25
  store i1 false, i1* %CF, !mcsema_real_eip !25
  store i1 false, i1* %OF, !mcsema_real_eip !25
  br i1 %81, label %block_0xa9, label %block_0x64, !mcsema_real_eip !26

block_0x64:                                       ; preds = %73
  br i1 %_cond1_n_cond2_cond3_224, label %84, label %85

; <label>:84:                                     ; preds = %block_0x64
  %_address_in_parent_stack_bt_254 = bitcast i8* %_pot_address_in_parent_stack_217 to i64*
  br label %85

; <label>:85:                                     ; preds = %block_0x64, %84
  %86 = phi i64* [ %_allin_new_bt_60, %block_0x64 ], [ %_address_in_parent_stack_bt_254, %84 ]
  %_new_load_255 = load i64, i64* %86
  store i64 %_new_load_255, i64* %XAX, !mcsema_real_eip !27
  %87 = inttoptr i64 %_new_load_255 to i64*, !mcsema_real_eip !28
  %88 = inttoptr i64 %_new_load_255 to i8*, !mcsema_real_eip !28
  %_offset_above_rbp_258 = sub i64 %_new_load_255, %_local_end_to_int_
  %_pot_address_in_parent_stack_259 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_258
  %_cond1_260 = icmp ugt i8* %88, %_local_stack_end_ptr_
  %_cond2_1_261 = icmp ugt i8* %88, %_parent_stack_end_ptr_
  %_cond2_2_262 = icmp ult i8* %88, %_parent_stack_start_ptr_
  %_cond2_263 = or i1 %_cond2_1_261, %_cond2_2_262
  %_cond4_264 = icmp ule i8* %_pot_address_in_parent_stack_259, %_parent_stack_end_ptr_
  %_cond1_n_cond2_265 = and i1 %_cond1_260, %_cond2_263
  %_cond1_n_cond2_cond3_266 = and i1 %_cond1_n_cond2_265, %_cond4_264
  br i1 %_cond1_n_cond2_cond3_266, label %89, label %90

; <label>:89:                                     ; preds = %85
  br label %90

; <label>:90:                                     ; preds = %85, %89
  %91 = phi i8* [ %88, %85 ], [ %_pot_address_in_parent_stack_259, %89 ]
  %_new_load_268 = load i8, i8* %91
  %92 = sext i8 %_new_load_268 to i32, !mcsema_real_eip !28
  %93 = zext i32 %92 to i64, !mcsema_real_eip !28
  store i64 %93, i64* %XCX, !mcsema_real_eip !28
  %ECX_val.41 = load i32, i32* %ECX.36, !mcsema_real_eip !29
  %94 = sub i32 %ECX_val.41, 47, !mcsema_real_eip !29
  %95 = xor i32 %94, %ECX_val.41, !mcsema_real_eip !29
  %96 = xor i32 %95, 47, !mcsema_real_eip !29
  %97 = and i32 %96, 16, !mcsema_real_eip !29
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !29
  store i1 %98, i1* %AF, !mcsema_real_eip !29
  %99 = trunc i32 %94 to i8, !mcsema_real_eip !29
  %100 = call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !29
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !29
  %102 = xor i1 %101, true, !mcsema_real_eip !29
  store i1 %102, i1* %PF, !mcsema_real_eip !29
  %103 = icmp eq i32 %94, 0, !mcsema_real_eip !29
  store i1 %103, i1* %ZF, !mcsema_real_eip !29
  %104 = lshr i32 %94, 31, !mcsema_real_eip !29
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !29
  store i1 %105, i1* %SF, !mcsema_real_eip !29
  %106 = icmp ult i32 %ECX_val.41, 47, !mcsema_real_eip !29
  store i1 %106, i1* %CF, !mcsema_real_eip !29
  %107 = xor i32 %ECX_val.41, 47, !mcsema_real_eip !29
  %108 = and i32 %107, %95, !mcsema_real_eip !29
  %109 = lshr i32 %108, 31, !mcsema_real_eip !29
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !29
  store i1 %110, i1* %OF, !mcsema_real_eip !29
  %111 = icmp eq i1 %103, false, !mcsema_real_eip !30
  br i1 %111, label %block_0x80, label %block_0x74, !mcsema_real_eip !30

block_0x74:                                       ; preds = %90
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -48
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %_ptr_to_int_269 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_272 = sub i64 %_ptr_to_int_269, %_local_end_to_int_
  %_pot_address_in_parent_stack_273 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_272
  %_cond1_274 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_275 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_276 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_277 = or i1 %_cond2_1_275, %_cond2_2_276
  %_cond4_278 = icmp ule i8* %_pot_address_in_parent_stack_273, %_parent_stack_end_ptr_
  %_cond1_n_cond2_279 = and i1 %_cond1_274, %_cond2_277
  %_cond1_n_cond2_cond3_280 = and i1 %_cond1_n_cond2_279, %_cond4_278
  br i1 %_cond1_n_cond2_cond3_280, label %112, label %113

; <label>:112:                                    ; preds = %block_0x74
  %_address_in_parent_stack_bt_282 = bitcast i8* %_pot_address_in_parent_stack_273 to i64*
  br label %113

; <label>:113:                                    ; preds = %block_0x74, %112
  %114 = phi i64* [ %_allin_new_bt_66, %block_0x74 ], [ %_address_in_parent_stack_bt_282, %112 ]
  %_new_load_283 = load i64, i64* %114
  store i64 %_new_load_283, i64* %XAX, !mcsema_real_eip !31
  %115 = inttoptr i64 %_new_load_283 to i64*, !mcsema_real_eip !32
  %116 = inttoptr i64 %_new_load_283 to i8*, !mcsema_real_eip !32
  store i8 92, i8* %116, !mcsema_real_eip !32
  br label %block_0x8c, !mcsema_real_eip !33

block_0x80:                                       ; preds = %90
  br i1 %_cond1_n_cond2_cond3_224, label %117, label %118

; <label>:117:                                    ; preds = %block_0x80
  %_address_in_parent_stack_bt_297 = bitcast i8* %_pot_address_in_parent_stack_217 to i64*
  br label %118

; <label>:118:                                    ; preds = %block_0x80, %117
  %119 = phi i64* [ %_allin_new_bt_60, %block_0x80 ], [ %_address_in_parent_stack_bt_297, %117 ]
  %_new_load_298 = load i64, i64* %119
  store i64 %_new_load_298, i64* %XAX, !mcsema_real_eip !34
  %120 = inttoptr i64 %_new_load_298 to i64*, !mcsema_real_eip !35
  %121 = inttoptr i64 %_new_load_298 to i8*, !mcsema_real_eip !35
  %_offset_above_rbp_301 = sub i64 %_new_load_298, %_local_end_to_int_
  %_pot_address_in_parent_stack_302 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_301
  %_cond1_303 = icmp ugt i8* %121, %_local_stack_end_ptr_
  %_cond2_1_304 = icmp ugt i8* %121, %_parent_stack_end_ptr_
  %_cond2_2_305 = icmp ult i8* %121, %_parent_stack_start_ptr_
  %_cond2_306 = or i1 %_cond2_1_304, %_cond2_2_305
  %_cond4_307 = icmp ule i8* %_pot_address_in_parent_stack_302, %_parent_stack_end_ptr_
  %_cond1_n_cond2_308 = and i1 %_cond1_303, %_cond2_306
  %_cond1_n_cond2_cond3_309 = and i1 %_cond1_n_cond2_308, %_cond4_307
  br i1 %_cond1_n_cond2_cond3_309, label %122, label %123

; <label>:122:                                    ; preds = %118
  br label %123

; <label>:123:                                    ; preds = %118, %122
  %124 = phi i8* [ %121, %118 ], [ %_pot_address_in_parent_stack_302, %122 ]
  %_new_load_311 = load i8, i8* %124
  %CL.46 = bitcast i64* %XCX to i8*, !mcsema_real_eip !35
  store i8 %_new_load_311, i8* %CL.46, !mcsema_real_eip !35
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -48
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %_ptr_to_int_312 = ptrtoint i64* %_allin_new_bt_72 to i64
  %_offset_above_rbp_315 = sub i64 %_ptr_to_int_312, %_local_end_to_int_
  %_pot_address_in_parent_stack_316 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_315
  %_cond1_317 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_318 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_319 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_320 = or i1 %_cond2_1_318, %_cond2_2_319
  %_cond4_321 = icmp ule i8* %_pot_address_in_parent_stack_316, %_parent_stack_end_ptr_
  %_cond1_n_cond2_322 = and i1 %_cond1_317, %_cond2_320
  %_cond1_n_cond2_cond3_323 = and i1 %_cond1_n_cond2_322, %_cond4_321
  br i1 %_cond1_n_cond2_cond3_323, label %125, label %126

; <label>:125:                                    ; preds = %123
  %_address_in_parent_stack_bt_325 = bitcast i8* %_pot_address_in_parent_stack_316 to i64*
  br label %126

; <label>:126:                                    ; preds = %123, %125
  %127 = phi i64* [ %_allin_new_bt_72, %123 ], [ %_address_in_parent_stack_bt_325, %125 ]
  %_new_load_326 = load i64, i64* %127
  store i64 %_new_load_326, i64* %XAX, !mcsema_real_eip !36
  %128 = inttoptr i64 %_new_load_326 to i64*, !mcsema_real_eip !37
  %129 = inttoptr i64 %_new_load_326 to i8*, !mcsema_real_eip !37
  store i8 %_new_load_311, i8* %129, !mcsema_real_eip !37
  br label %block_0x8c, !mcsema_real_eip !38

block_0x8c:                                       ; preds = %126, %113
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -40
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %_ptr_to_int_327 = ptrtoint i64* %_allin_new_bt_75 to i64
  %_offset_above_rbp_330 = sub i64 %_ptr_to_int_327, %_local_end_to_int_
  %_pot_address_in_parent_stack_331 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_330
  %_cond1_332 = icmp ugt i8* %_new_gep_74, %_local_stack_end_ptr_
  %_cond2_1_333 = icmp ugt i8* %_new_gep_74, %_parent_stack_end_ptr_
  %_cond2_2_334 = icmp ult i8* %_new_gep_74, %_parent_stack_start_ptr_
  %_cond2_335 = or i1 %_cond2_1_333, %_cond2_2_334
  %_cond4_336 = icmp ule i8* %_pot_address_in_parent_stack_331, %_parent_stack_end_ptr_
  %_cond1_n_cond2_337 = and i1 %_cond1_332, %_cond2_335
  %_cond1_n_cond2_cond3_338 = and i1 %_cond1_n_cond2_337, %_cond4_336
  br i1 %_cond1_n_cond2_cond3_338, label %130, label %131

; <label>:130:                                    ; preds = %block_0x8c
  %_address_in_parent_stack_bt_340 = bitcast i8* %_pot_address_in_parent_stack_331 to i64*
  br label %131

; <label>:131:                                    ; preds = %block_0x8c, %130
  %132 = phi i64* [ %_allin_new_bt_75, %block_0x8c ], [ %_address_in_parent_stack_bt_340, %130 ]
  %_new_load_341 = load i64, i64* %132
  store i64 %_new_load_341, i64* %XAX, !mcsema_real_eip !38
  %133 = add i64 1, %_new_load_341, !mcsema_real_eip !39
  %134 = xor i64 %133, %_new_load_341, !mcsema_real_eip !39
  %135 = xor i64 %134, 1, !mcsema_real_eip !39
  %136 = and i64 %135, 16, !mcsema_real_eip !39
  %137 = icmp ne i64 %136, 0, !mcsema_real_eip !39
  store i1 %137, i1* %AF, !mcsema_real_eip !39
  %138 = lshr i64 %133, 63, !mcsema_real_eip !39
  %139 = trunc i64 %138 to i1, !mcsema_real_eip !39
  store i1 %139, i1* %SF, !mcsema_real_eip !39
  %140 = icmp eq i64 %133, 0, !mcsema_real_eip !39
  store i1 %140, i1* %ZF, !mcsema_real_eip !39
  %141 = xor i64 %_new_load_341, 1, !mcsema_real_eip !39
  %142 = xor i64 %141, -1, !mcsema_real_eip !39
  %143 = and i64 %142, %134, !mcsema_real_eip !39
  %144 = lshr i64 %143, 63, !mcsema_real_eip !39
  %145 = and i64 %144, 1, !mcsema_real_eip !39
  %146 = trunc i64 %145 to i1, !mcsema_real_eip !39
  store i1 %146, i1* %OF, !mcsema_real_eip !39
  %147 = trunc i64 %133 to i8, !mcsema_real_eip !39
  %148 = call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !39
  %149 = trunc i8 %148 to i1, !mcsema_real_eip !39
  %150 = xor i1 %149, true, !mcsema_real_eip !39
  store i1 %150, i1* %PF, !mcsema_real_eip !39
  %151 = icmp ult i64 %133, %_new_load_341, !mcsema_real_eip !39
  store i1 %151, i1* %CF, !mcsema_real_eip !39
  store i64 %133, i64* %XAX, !mcsema_real_eip !39
  store i64 %133, i64* %_allin_new_bt_75, !mcsema_real_eip !40
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -48
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %_ptr_to_int_342 = ptrtoint i64* %_allin_new_bt_81 to i64
  %_offset_above_rbp_345 = sub i64 %_ptr_to_int_342, %_local_end_to_int_
  %_pot_address_in_parent_stack_346 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_345
  %_cond1_347 = icmp ugt i8* %_new_gep_80, %_local_stack_end_ptr_
  %_cond2_1_348 = icmp ugt i8* %_new_gep_80, %_parent_stack_end_ptr_
  %_cond2_2_349 = icmp ult i8* %_new_gep_80, %_parent_stack_start_ptr_
  %_cond2_350 = or i1 %_cond2_1_348, %_cond2_2_349
  %_cond4_351 = icmp ule i8* %_pot_address_in_parent_stack_346, %_parent_stack_end_ptr_
  %_cond1_n_cond2_352 = and i1 %_cond1_347, %_cond2_350
  %_cond1_n_cond2_cond3_353 = and i1 %_cond1_n_cond2_352, %_cond4_351
  br i1 %_cond1_n_cond2_cond3_353, label %152, label %153

; <label>:152:                                    ; preds = %131
  %_address_in_parent_stack_bt_355 = bitcast i8* %_pot_address_in_parent_stack_346 to i64*
  br label %153

; <label>:153:                                    ; preds = %131, %152
  %154 = phi i64* [ %_allin_new_bt_81, %131 ], [ %_address_in_parent_stack_bt_355, %152 ]
  %_new_load_356 = load i64, i64* %154
  store i64 %_new_load_356, i64* %XAX, !mcsema_real_eip !41
  %155 = add i64 1, %_new_load_356, !mcsema_real_eip !42
  %156 = xor i64 %155, %_new_load_356, !mcsema_real_eip !42
  %157 = xor i64 %156, 1, !mcsema_real_eip !42
  %158 = and i64 %157, 16, !mcsema_real_eip !42
  %159 = icmp ne i64 %158, 0, !mcsema_real_eip !42
  store i1 %159, i1* %AF, !mcsema_real_eip !42
  %160 = lshr i64 %155, 63, !mcsema_real_eip !42
  %161 = trunc i64 %160 to i1, !mcsema_real_eip !42
  store i1 %161, i1* %SF, !mcsema_real_eip !42
  %162 = icmp eq i64 %155, 0, !mcsema_real_eip !42
  store i1 %162, i1* %ZF, !mcsema_real_eip !42
  %163 = xor i64 %_new_load_356, 1, !mcsema_real_eip !42
  %164 = xor i64 %163, -1, !mcsema_real_eip !42
  %165 = and i64 %164, %156, !mcsema_real_eip !42
  %166 = lshr i64 %165, 63, !mcsema_real_eip !42
  %167 = and i64 %166, 1, !mcsema_real_eip !42
  %168 = trunc i64 %167 to i1, !mcsema_real_eip !42
  store i1 %168, i1* %OF, !mcsema_real_eip !42
  %169 = trunc i64 %155 to i8, !mcsema_real_eip !42
  %170 = call i8 @llvm.ctpop.i8(i8 %169), !mcsema_real_eip !42
  %171 = trunc i8 %170 to i1, !mcsema_real_eip !42
  %172 = xor i1 %171, true, !mcsema_real_eip !42
  store i1 %172, i1* %PF, !mcsema_real_eip !42
  %173 = icmp ult i64 %155, %_new_load_356, !mcsema_real_eip !42
  store i1 %173, i1* %CF, !mcsema_real_eip !42
  store i64 %155, i64* %XAX, !mcsema_real_eip !42
  store i64 %155, i64* %_allin_new_bt_81, !mcsema_real_eip !43
  br label %block_0x54, !mcsema_real_eip !44

block_0xa9:                                       ; preds = %73
  %_new_gep_86 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -32
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %_ptr_to_int_357 = ptrtoint i64* %_allin_new_bt_87 to i64
  %_offset_above_rbp_360 = sub i64 %_ptr_to_int_357, %_local_end_to_int_
  %_pot_address_in_parent_stack_361 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_360
  %_cond1_362 = icmp ugt i8* %_new_gep_86, %_local_stack_end_ptr_
  %_cond2_1_363 = icmp ugt i8* %_new_gep_86, %_parent_stack_end_ptr_
  %_cond2_2_364 = icmp ult i8* %_new_gep_86, %_parent_stack_start_ptr_
  %_cond2_365 = or i1 %_cond2_1_363, %_cond2_2_364
  %_cond4_366 = icmp ule i8* %_pot_address_in_parent_stack_361, %_parent_stack_end_ptr_
  %_cond1_n_cond2_367 = and i1 %_cond1_362, %_cond2_365
  %_cond1_n_cond2_cond3_368 = and i1 %_cond1_n_cond2_367, %_cond4_366
  br i1 %_cond1_n_cond2_cond3_368, label %174, label %175

; <label>:174:                                    ; preds = %block_0xa9
  %_address_in_parent_stack_bt_370 = bitcast i8* %_pot_address_in_parent_stack_361 to i64*
  br label %175

; <label>:175:                                    ; preds = %block_0xa9, %174
  %176 = phi i64* [ %_allin_new_bt_87, %block_0xa9 ], [ %_address_in_parent_stack_bt_370, %174 ]
  %_new_load_371 = load i64, i64* %176
  store i64 %_new_load_371, i64* %XAX, !mcsema_real_eip !45
  %_new_gep_89 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -8
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  store i64 %_new_load_371, i64* %_allin_new_bt_90, !mcsema_real_eip !46
  br label %block_0xbe, !mcsema_real_eip !47

block_0xb6:                                       ; preds = %44
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  store i64 0, i64* %_allin_new_bt_93, !mcsema_real_eip !48
  br label %block_0xbe, !mcsema_real_eip !49

block_0xbe:                                       ; preds = %block_0xb6, %175
  %_load_rbp_ptr_94 = load i8*, i8** %_RBP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_94, i64 -8
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %_ptr_to_int_372 = ptrtoint i64* %_allin_new_bt_96 to i64
  %_offset_above_rbp_375 = sub i64 %_ptr_to_int_372, %_local_end_to_int_
  %_pot_address_in_parent_stack_376 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_375
  %_cond1_377 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_378 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_379 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_380 = or i1 %_cond2_1_378, %_cond2_2_379
  %_cond4_381 = icmp ule i8* %_pot_address_in_parent_stack_376, %_parent_stack_end_ptr_
  %_cond1_n_cond2_382 = and i1 %_cond1_377, %_cond2_380
  %_cond1_n_cond2_cond3_383 = and i1 %_cond1_n_cond2_382, %_cond4_381
  br i1 %_cond1_n_cond2_cond3_383, label %177, label %178

; <label>:177:                                    ; preds = %block_0xbe
  %_address_in_parent_stack_bt_385 = bitcast i8* %_pot_address_in_parent_stack_376 to i64*
  br label %178

; <label>:178:                                    ; preds = %block_0xbe, %177
  %179 = phi i64* [ %_allin_new_bt_96, %block_0xbe ], [ %_address_in_parent_stack_bt_385, %177 ]
  %_new_load_386 = load i64, i64* %179
  store i64 %_new_load_386, i64* %XAX, !mcsema_real_eip !49
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %RSP_val.64 = load i64, i64* %XSP, !mcsema_real_eip !50
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 48
  %180 = add i64 48, %RSP_val.64, !mcsema_real_eip !50
  %_trans_p2i_99 = ptrtoint i8* %_new_gep_98 to i64
  %_trans_p2i_100 = ptrtoint i8* %_load_rsp_ptr_97 to i64
  %_trans_xor_101 = xor i64 %_trans_p2i_99, %_trans_p2i_100
  %181 = xor i64 %_trans_xor_101, 48, !mcsema_real_eip !50
  %182 = and i64 %181, 16, !mcsema_real_eip !50
  %183 = icmp ne i64 %182, 0, !mcsema_real_eip !50
  store i1 %183, i1* %AF, !mcsema_real_eip !50
  %184 = lshr i64 %180, 63, !mcsema_real_eip !50
  %185 = trunc i64 %184 to i1, !mcsema_real_eip !50
  store i1 %185, i1* %SF, !mcsema_real_eip !50
  %_trans_icmp_eq_103 = icmp eq i64 %_trans_p2i_99, 0
  store i1 %_trans_icmp_eq_103, i1* %ZF, !mcsema_real_eip !50
  %_trans_xor_105 = xor i64 %_trans_p2i_100, 48
  %186 = xor i64 %_trans_xor_105, -1, !mcsema_real_eip !50
  %187 = and i64 %186, %_trans_xor_101, !mcsema_real_eip !50
  %188 = lshr i64 %187, 63, !mcsema_real_eip !50
  %189 = and i64 %188, 1, !mcsema_real_eip !50
  %190 = trunc i64 %189 to i1, !mcsema_real_eip !50
  store i1 %190, i1* %OF, !mcsema_real_eip !50
  %_trans_trunc_110 = trunc i64 %_trans_p2i_99 to i8
  %191 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_110), !mcsema_real_eip !50
  %192 = trunc i8 %191 to i1, !mcsema_real_eip !50
  %193 = xor i1 %192, true, !mcsema_real_eip !50
  store i1 %193, i1* %PF, !mcsema_real_eip !50
  %_trans_icmp_ne_112 = icmp ne i64 %_trans_p2i_99, %RSP_val.64
  store i1 %_trans_icmp_ne_112, i1* %CF, !mcsema_real_eip !50
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_
  store i64 %180, i64* %XSP, !mcsema_real_eip !50
  %_allin_new_bt_114 = bitcast i8* %_new_gep_98 to i64*
  %_ptr_to_int_387 = ptrtoint i64* %_allin_new_bt_114 to i64
  %_offset_above_rbp_390 = sub i64 %_ptr_to_int_387, %_local_end_to_int_
  %_pot_address_in_parent_stack_391 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_cond1_392 = icmp ugt i8* %_new_gep_98, %_local_stack_end_ptr_
  %_cond2_1_393 = icmp ugt i8* %_new_gep_98, %_parent_stack_end_ptr_
  %_cond2_2_394 = icmp ult i8* %_new_gep_98, %_parent_stack_start_ptr_
  %_cond2_395 = or i1 %_cond2_1_393, %_cond2_2_394
  %_cond4_396 = icmp ule i8* %_pot_address_in_parent_stack_391, %_parent_stack_end_ptr_
  %_cond1_n_cond2_397 = and i1 %_cond1_392, %_cond2_395
  %_cond1_n_cond2_cond3_398 = and i1 %_cond1_n_cond2_397, %_cond4_396
  br i1 %_cond1_n_cond2_cond3_398, label %194, label %195

; <label>:194:                                    ; preds = %178
  %_address_in_parent_stack_bt_400 = bitcast i8* %_pot_address_in_parent_stack_391 to i64*
  br label %195

; <label>:195:                                    ; preds = %178, %194
  %196 = phi i64* [ %_allin_new_bt_114, %178 ], [ %_address_in_parent_stack_bt_400, %194 ]
  %_new_load_401 = load i64, i64* %196
  %_new_int2ptr_ = inttoptr i64 %_new_load_401 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_401, i64* %XBP, !mcsema_real_eip !51
  %_new_gep_115 = getelementptr i8, i8* %_new_gep_98, i64 8
  %197 = add i64 %180, 8, !mcsema_real_eip !51
  store volatile i8* %_new_gep_115, i8** %_RSP_ptr_
  store i64 %197, i64* %XSP, !mcsema_real_eip !51
  %_new_gep_117 = getelementptr i8, i8* %_new_gep_115, i64 8
  %198 = add i64 %197, 8, !mcsema_real_eip !52
  %_allin_new_bt_118 = bitcast i8* %_new_gep_115 to i64*
  %_ptr_to_int_402 = ptrtoint i64* %_allin_new_bt_118 to i64
  %_offset_above_rbp_405 = sub i64 %_ptr_to_int_402, %_local_end_to_int_
  %_pot_address_in_parent_stack_406 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_cond1_407 = icmp ugt i8* %_new_gep_115, %_local_stack_end_ptr_
  %_cond2_1_408 = icmp ugt i8* %_new_gep_115, %_parent_stack_end_ptr_
  %_cond2_2_409 = icmp ult i8* %_new_gep_115, %_parent_stack_start_ptr_
  %_cond2_410 = or i1 %_cond2_1_408, %_cond2_2_409
  %_cond4_411 = icmp ule i8* %_pot_address_in_parent_stack_406, %_parent_stack_end_ptr_
  %_cond1_n_cond2_412 = and i1 %_cond1_407, %_cond2_410
  %_cond1_n_cond2_cond3_413 = and i1 %_cond1_n_cond2_412, %_cond4_411
  br i1 %_cond1_n_cond2_cond3_413, label %199, label %200

; <label>:199:                                    ; preds = %195
  %_address_in_parent_stack_bt_415 = bitcast i8* %_pot_address_in_parent_stack_406 to i64*
  br label %200

; <label>:200:                                    ; preds = %195, %199
  %201 = phi i64* [ %_allin_new_bt_118, %195 ], [ %_address_in_parent_stack_bt_415, %199 ]
  %_new_load_416 = load i64, i64* %201
  store i64 %_new_load_416, i64* %XIP, !mcsema_real_eip !52
  store volatile i8* %_new_gep_117, i8** %_RSP_ptr_
  store i64 %198, i64* %XSP, !mcsema_real_eip !52
  ret void, !mcsema_real_eip !52
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
!6 = !{i64 12}
!7 = !{i64 16}
!8 = !{i64 21}
!9 = !{i64 25}
!10 = !{i64 29}
!11 = !{i64 33}
!12 = !{i64 38}
!13 = !{i64 42}
!14 = !{i64 47}
!15 = !{i64 53}
!16 = !{i64 55}
!17 = !{i64 59}
!18 = !{i64 63}
!19 = !{i64 67}
!20 = !{i64 71}
!21 = !{i64 75}
!22 = !{i64 79}
!23 = !{i64 84}
!24 = !{i64 88}
!25 = !{i64 91}
!26 = !{i64 94}
!27 = !{i64 100}
!28 = !{i64 104}
!29 = !{i64 107}
!30 = !{i64 110}
!31 = !{i64 116}
!32 = !{i64 120}
!33 = !{i64 123}
!34 = !{i64 128}
!35 = !{i64 132}
!36 = !{i64 134}
!37 = !{i64 138}
!38 = !{i64 140}
!39 = !{i64 144}
!40 = !{i64 148}
!41 = !{i64 152}
!42 = !{i64 156}
!43 = !{i64 160}
!44 = !{i64 164}
!45 = !{i64 169}
!46 = !{i64 173}
!47 = !{i64 177}
!48 = !{i64 182}
!49 = !{i64 190}
!50 = !{i64 194}
!51 = !{i64 198}
!52 = !{i64 199}
