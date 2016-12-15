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
  %ESI.19 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.20 = load i32, i32* %ESI.19, !mcsema_real_eip !15
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
  %RSI_val.32 = load i64, i64* %XSI, !mcsema_real_eip !22
  %_load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_55, i64 -8
  %51 = sub i64 %RSP_val.34, 8, !mcsema_real_eip !22
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, !mcsema_real_eip !22
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %51, i64* %XSP, !mcsema_real_eip !22
  %52 = call x86_64_sysvcc i64 @_memset(i64 %49, i64 %RSI_val.32, i64 %50)
  %_rsp_fix_121 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_122 = getelementptr i8, i8* %_rsp_fix_121, i64 8
  store i8* %_gep_fix_122, i8** %_RSP_ptr_
  store i64 %52, i64* %XAX, !mcsema_real_eip !22
  br label %block_0x54, !mcsema_real_eip !23

block_0xb6:                                       ; preds = %block_0x0
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  store i64 0, i64* %_allin_new_bt_60, !mcsema_real_eip !24
  br label %block_0xbe, !mcsema_real_eip !15

block_0xbe:                                       ; preds = %block_0xa9, %block_0xb6
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -8
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %53 = load i64, i64* %_allin_new_bt_63, !mcsema_real_eip !23
  store i64 %53, i64* %XAX, !mcsema_real_eip !23
  %_load_rsp_ptr_64 = load i8*, i8** %_RSP_ptr_
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_65 = getelementptr i8, i8* %_load_rsp_ptr_64, i64 48
  %54 = add i64 48, %RSP_val.36, !mcsema_real_eip !25
  %_trans_p2i_66 = ptrtoint i8* %_new_gep_65 to i64
  %_trans_p2i_67 = ptrtoint i8* %_load_rsp_ptr_64 to i64
  %_trans_xor_68 = xor i64 %_trans_p2i_66, %_trans_p2i_67
  %55 = xor i64 %_trans_xor_68, 48, !mcsema_real_eip !25
  %56 = and i64 %55, 16, !mcsema_real_eip !25
  %57 = icmp ne i64 %56, 0, !mcsema_real_eip !25
  store i1 %57, i1* %AF, !mcsema_real_eip !25
  %58 = lshr i64 %54, 63, !mcsema_real_eip !25
  %59 = trunc i64 %58 to i1, !mcsema_real_eip !25
  store i1 %59, i1* %SF, !mcsema_real_eip !25
  %_trans_icmp_eq_70 = icmp eq i64 %_trans_p2i_66, 0
  store i1 %_trans_icmp_eq_70, i1* %ZF, !mcsema_real_eip !25
  %_trans_xor_72 = xor i64 %_trans_p2i_67, 48
  %60 = xor i64 %_trans_xor_72, -1, !mcsema_real_eip !25
  %61 = and i64 %60, %_trans_xor_68, !mcsema_real_eip !25
  %62 = lshr i64 %61, 63, !mcsema_real_eip !25
  %63 = and i64 %62, 1, !mcsema_real_eip !25
  %64 = trunc i64 %63 to i1, !mcsema_real_eip !25
  store i1 %64, i1* %OF, !mcsema_real_eip !25
  %_trans_trunc_77 = trunc i64 %_trans_p2i_66 to i8
  %65 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_77), !mcsema_real_eip !25
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !25
  %67 = xor i1 %66, true, !mcsema_real_eip !25
  store i1 %67, i1* %PF, !mcsema_real_eip !25
  %_trans_icmp_ne_79 = icmp ne i64 %_trans_p2i_66, %RSP_val.36
  store i1 %_trans_icmp_ne_79, i1* %CF, !mcsema_real_eip !25
  store volatile i8* %_new_gep_65, i8** %_RSP_ptr_
  store i64 %54, i64* %XSP, !mcsema_real_eip !25
  %_allin_new_bt_81 = bitcast i8* %_new_gep_65 to i64*
  %68 = load i64, i64* %_allin_new_bt_81, !mcsema_real_eip !26
  %_new_int2ptr_ = inttoptr i64 %68 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %68, i64* %XBP, !mcsema_real_eip !26
  %_new_gep_82 = getelementptr i8, i8* %_new_gep_65, i64 8
  %69 = add i64 %54, 8, !mcsema_real_eip !26
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_
  store i64 %69, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_84 = getelementptr i8, i8* %_new_gep_82, i64 8
  %70 = add i64 %69, 8, !mcsema_real_eip !27
  %_allin_new_bt_85 = bitcast i8* %_new_gep_82 to i64*
  %71 = load i64, i64* %_allin_new_bt_85, !mcsema_real_eip !27
  store i64 %71, i64* %XIP, !mcsema_real_eip !27
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_
  store i64 %70, i64* %XSP, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x54:                                       ; preds = %block_0x8c, %block_0x35
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -40
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %72 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !28
  store i64 %72, i64* %XAX, !mcsema_real_eip !28
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !29
  %74 = inttoptr i64 %72 to i8*, !mcsema_real_eip !29
  %75 = load i8, i8* %74, !mcsema_real_eip !29
  %76 = sext i8 %75 to i32, !mcsema_real_eip !29
  %77 = zext i32 %76 to i64, !mcsema_real_eip !29
  store i64 %77, i64* %XCX, !mcsema_real_eip !29
  %ECX.41 = bitcast i64* %XCX to i32*, !mcsema_real_eip !30
  %ECX_val.42 = load i32, i32* %ECX.41, !mcsema_real_eip !30
  store i1 false, i1* %AF, !mcsema_real_eip !30
  %78 = trunc i32 %ECX_val.42 to i8, !mcsema_real_eip !30
  %79 = call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !30
  %80 = trunc i8 %79 to i1, !mcsema_real_eip !30
  %81 = xor i1 %80, true, !mcsema_real_eip !30
  store i1 %81, i1* %PF, !mcsema_real_eip !30
  %82 = icmp eq i32 %ECX_val.42, 0, !mcsema_real_eip !30
  store i1 %82, i1* %ZF, !mcsema_real_eip !30
  %83 = lshr i32 %ECX_val.42, 31, !mcsema_real_eip !30
  %84 = trunc i32 %83 to i1, !mcsema_real_eip !30
  store i1 %84, i1* %SF, !mcsema_real_eip !30
  store i1 false, i1* %CF, !mcsema_real_eip !30
  store i1 false, i1* %OF, !mcsema_real_eip !30
  br i1 %82, label %block_0xa9, label %block_0x64, !mcsema_real_eip !31

block_0x64:                                       ; preds = %block_0x54
  %85 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !32
  store i64 %85, i64* %XAX, !mcsema_real_eip !32
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !33
  %87 = inttoptr i64 %85 to i8*, !mcsema_real_eip !33
  %88 = load i8, i8* %87, !mcsema_real_eip !33
  %89 = sext i8 %88 to i32, !mcsema_real_eip !33
  %90 = zext i32 %89 to i64, !mcsema_real_eip !33
  store i64 %90, i64* %XCX, !mcsema_real_eip !33
  %ECX_val.49 = load i32, i32* %ECX.41, !mcsema_real_eip !34
  %91 = sub i32 %ECX_val.49, 47, !mcsema_real_eip !34
  %92 = xor i32 %91, %ECX_val.49, !mcsema_real_eip !34
  %93 = xor i32 %92, 47, !mcsema_real_eip !34
  %94 = and i32 %93, 16, !mcsema_real_eip !34
  %95 = icmp ne i32 %94, 0, !mcsema_real_eip !34
  store i1 %95, i1* %AF, !mcsema_real_eip !34
  %96 = trunc i32 %91 to i8, !mcsema_real_eip !34
  %97 = call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !34
  %98 = trunc i8 %97 to i1, !mcsema_real_eip !34
  %99 = xor i1 %98, true, !mcsema_real_eip !34
  store i1 %99, i1* %PF, !mcsema_real_eip !34
  %100 = icmp eq i32 %91, 0, !mcsema_real_eip !34
  store i1 %100, i1* %ZF, !mcsema_real_eip !34
  %101 = lshr i32 %91, 31, !mcsema_real_eip !34
  %102 = trunc i32 %101 to i1, !mcsema_real_eip !34
  store i1 %102, i1* %SF, !mcsema_real_eip !34
  %103 = icmp ult i32 %ECX_val.49, 47, !mcsema_real_eip !34
  store i1 %103, i1* %CF, !mcsema_real_eip !34
  %104 = xor i32 %ECX_val.49, 47, !mcsema_real_eip !34
  %105 = and i32 %104, %92, !mcsema_real_eip !34
  %106 = lshr i32 %105, 31, !mcsema_real_eip !34
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !34
  store i1 %107, i1* %OF, !mcsema_real_eip !34
  %108 = icmp eq i1 %100, false, !mcsema_real_eip !35
  br i1 %108, label %block_0x80, label %block_0x74, !mcsema_real_eip !35

block_0xa9:                                       ; preds = %block_0x54
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -32
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %109 = load i64, i64* %_allin_new_bt_94, !mcsema_real_eip !36
  store i64 %109, i64* %XAX, !mcsema_real_eip !36
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -8
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  store i64 %109, i64* %_allin_new_bt_97, !mcsema_real_eip !37
  br label %block_0xbe, !mcsema_real_eip !38

block_0x74:                                       ; preds = %block_0x64
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -48
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %110 = load i64, i64* %_allin_new_bt_100, !mcsema_real_eip !39
  store i64 %110, i64* %XAX, !mcsema_real_eip !39
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !40
  %112 = inttoptr i64 %110 to i8*, !mcsema_real_eip !40
  store i8 92, i8* %112, !mcsema_real_eip !40
  br label %block_0x8c, !mcsema_real_eip !41

block_0x80:                                       ; preds = %block_0x64
  %113 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !42
  store i64 %113, i64* %XAX, !mcsema_real_eip !42
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !43
  %115 = inttoptr i64 %113 to i8*, !mcsema_real_eip !43
  %116 = load i8, i8* %115, !mcsema_real_eip !43
  %CL.52 = bitcast i64* %XCX to i8*, !mcsema_real_eip !43
  store i8 %116, i8* %CL.52, !mcsema_real_eip !43
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -48
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %117 = load i64, i64* %_allin_new_bt_106, !mcsema_real_eip !44
  store i64 %117, i64* %XAX, !mcsema_real_eip !44
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !45
  %119 = inttoptr i64 %117 to i8*, !mcsema_real_eip !45
  store i8 %116, i8* %119, !mcsema_real_eip !45
  br label %block_0x8c, !mcsema_real_eip !39

block_0x8c:                                       ; preds = %block_0x80, %block_0x74
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -40
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %120 = load i64, i64* %_allin_new_bt_109, !mcsema_real_eip !46
  store i64 %120, i64* %XAX, !mcsema_real_eip !46
  %121 = add i64 1, %120, !mcsema_real_eip !47
  %122 = xor i64 %121, %120, !mcsema_real_eip !47
  %123 = xor i64 %122, 1, !mcsema_real_eip !47
  %124 = and i64 %123, 16, !mcsema_real_eip !47
  %125 = icmp ne i64 %124, 0, !mcsema_real_eip !47
  store i1 %125, i1* %AF, !mcsema_real_eip !47
  %126 = lshr i64 %121, 63, !mcsema_real_eip !47
  %127 = trunc i64 %126 to i1, !mcsema_real_eip !47
  store i1 %127, i1* %SF, !mcsema_real_eip !47
  %128 = icmp eq i64 %121, 0, !mcsema_real_eip !47
  store i1 %128, i1* %ZF, !mcsema_real_eip !47
  %129 = xor i64 %120, 1, !mcsema_real_eip !47
  %130 = xor i64 %129, -1, !mcsema_real_eip !47
  %131 = and i64 %130, %122, !mcsema_real_eip !47
  %132 = lshr i64 %131, 63, !mcsema_real_eip !47
  %133 = and i64 %132, 1, !mcsema_real_eip !47
  %134 = trunc i64 %133 to i1, !mcsema_real_eip !47
  store i1 %134, i1* %OF, !mcsema_real_eip !47
  %135 = trunc i64 %121 to i8, !mcsema_real_eip !47
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !47
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !47
  %138 = xor i1 %137, true, !mcsema_real_eip !47
  store i1 %138, i1* %PF, !mcsema_real_eip !47
  %139 = icmp ult i64 %121, %120, !mcsema_real_eip !47
  store i1 %139, i1* %CF, !mcsema_real_eip !47
  store i64 %121, i64* %XAX, !mcsema_real_eip !47
  store i64 %121, i64* %_allin_new_bt_109, !mcsema_real_eip !48
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -48
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %140 = load i64, i64* %_allin_new_bt_115, !mcsema_real_eip !49
  store i64 %140, i64* %XAX, !mcsema_real_eip !49
  %141 = add i64 1, %140, !mcsema_real_eip !50
  %142 = xor i64 %141, %140, !mcsema_real_eip !50
  %143 = xor i64 %142, 1, !mcsema_real_eip !50
  %144 = and i64 %143, 16, !mcsema_real_eip !50
  %145 = icmp ne i64 %144, 0, !mcsema_real_eip !50
  store i1 %145, i1* %AF, !mcsema_real_eip !50
  %146 = lshr i64 %141, 63, !mcsema_real_eip !50
  %147 = trunc i64 %146 to i1, !mcsema_real_eip !50
  store i1 %147, i1* %SF, !mcsema_real_eip !50
  %148 = icmp eq i64 %141, 0, !mcsema_real_eip !50
  store i1 %148, i1* %ZF, !mcsema_real_eip !50
  %149 = xor i64 %140, 1, !mcsema_real_eip !50
  %150 = xor i64 %149, -1, !mcsema_real_eip !50
  %151 = and i64 %150, %142, !mcsema_real_eip !50
  %152 = lshr i64 %151, 63, !mcsema_real_eip !50
  %153 = and i64 %152, 1, !mcsema_real_eip !50
  %154 = trunc i64 %153 to i1, !mcsema_real_eip !50
  store i1 %154, i1* %OF, !mcsema_real_eip !50
  %155 = trunc i64 %141 to i8, !mcsema_real_eip !50
  %156 = call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !50
  %157 = trunc i8 %156 to i1, !mcsema_real_eip !50
  %158 = xor i1 %157, true, !mcsema_real_eip !50
  store i1 %158, i1* %PF, !mcsema_real_eip !50
  %159 = icmp ult i64 %141, %140, !mcsema_real_eip !50
  store i1 %159, i1* %CF, !mcsema_real_eip !50
  store i64 %141, i64* %XAX, !mcsema_real_eip !50
  store i64 %141, i64* %_allin_new_bt_115, !mcsema_real_eip !51
  br label %block_0x54, !mcsema_real_eip !52
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
  %ESI.19 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.20 = load i32, i32* %ESI.19, !mcsema_real_eip !15
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
  %RSI_val.32 = load i64, i64* %XSI, !mcsema_real_eip !22
  %_load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_
  %RSP_val.34 = load i64, i64* %XSP, !mcsema_real_eip !22
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_55, i64 -8
  %65 = sub i64 %RSP_val.34, 8, !mcsema_real_eip !22
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_57, !mcsema_real_eip !22
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %65, i64* %XSP, !mcsema_real_eip !22
  %66 = call x86_64_sysvcc i64 @_memset(i64 %_new_load_197, i64 %RSI_val.32, i64 %_new_load_212)
  %_rsp_fix_121 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_122 = getelementptr i8, i8* %_rsp_fix_121, i64 8
  store i8* %_gep_fix_122, i8** %_RSP_ptr_
  store i64 %66, i64* %XAX, !mcsema_real_eip !22
  br label %block_0x54, !mcsema_real_eip !23

block_0xb6:                                       ; preds = %44
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  store i64 0, i64* %_allin_new_bt_60, !mcsema_real_eip !24
  br label %block_0xbe, !mcsema_real_eip !15

block_0xbe:                                       ; preds = %138, %block_0xb6
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -8
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %_ptr_to_int_213 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_216 = sub i64 %_ptr_to_int_213, %_local_end_to_int_
  %_pot_address_in_parent_stack_217 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_216
  %_cond1_218 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_219 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_220 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_221 = or i1 %_cond2_1_219, %_cond2_2_220
  %_cond4_222 = icmp ule i8* %_pot_address_in_parent_stack_217, %_parent_stack_end_ptr_
  %_cond1_n_cond2_223 = and i1 %_cond1_218, %_cond2_221
  %_cond1_n_cond2_cond3_224 = and i1 %_cond1_n_cond2_223, %_cond4_222
  br i1 %_cond1_n_cond2_cond3_224, label %67, label %68

; <label>:67:                                     ; preds = %block_0xbe
  %_address_in_parent_stack_bt_226 = bitcast i8* %_pot_address_in_parent_stack_217 to i64*
  br label %68

; <label>:68:                                     ; preds = %block_0xbe, %67
  %69 = phi i64* [ %_allin_new_bt_63, %block_0xbe ], [ %_address_in_parent_stack_bt_226, %67 ]
  %_new_load_227 = load i64, i64* %69
  store i64 %_new_load_227, i64* %XAX, !mcsema_real_eip !23
  %_load_rsp_ptr_64 = load i8*, i8** %_RSP_ptr_
  %RSP_val.36 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_65 = getelementptr i8, i8* %_load_rsp_ptr_64, i64 48
  %70 = add i64 48, %RSP_val.36, !mcsema_real_eip !25
  %_trans_p2i_66 = ptrtoint i8* %_new_gep_65 to i64
  %_trans_p2i_67 = ptrtoint i8* %_load_rsp_ptr_64 to i64
  %_trans_xor_68 = xor i64 %_trans_p2i_66, %_trans_p2i_67
  %71 = xor i64 %_trans_xor_68, 48, !mcsema_real_eip !25
  %72 = and i64 %71, 16, !mcsema_real_eip !25
  %73 = icmp ne i64 %72, 0, !mcsema_real_eip !25
  store i1 %73, i1* %AF, !mcsema_real_eip !25
  %74 = lshr i64 %70, 63, !mcsema_real_eip !25
  %75 = trunc i64 %74 to i1, !mcsema_real_eip !25
  store i1 %75, i1* %SF, !mcsema_real_eip !25
  %_trans_icmp_eq_70 = icmp eq i64 %_trans_p2i_66, 0
  store i1 %_trans_icmp_eq_70, i1* %ZF, !mcsema_real_eip !25
  %_trans_xor_72 = xor i64 %_trans_p2i_67, 48
  %76 = xor i64 %_trans_xor_72, -1, !mcsema_real_eip !25
  %77 = and i64 %76, %_trans_xor_68, !mcsema_real_eip !25
  %78 = lshr i64 %77, 63, !mcsema_real_eip !25
  %79 = and i64 %78, 1, !mcsema_real_eip !25
  %80 = trunc i64 %79 to i1, !mcsema_real_eip !25
  store i1 %80, i1* %OF, !mcsema_real_eip !25
  %_trans_trunc_77 = trunc i64 %_trans_p2i_66 to i8
  %81 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_77), !mcsema_real_eip !25
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !25
  %83 = xor i1 %82, true, !mcsema_real_eip !25
  store i1 %83, i1* %PF, !mcsema_real_eip !25
  %_trans_icmp_ne_79 = icmp ne i64 %_trans_p2i_66, %RSP_val.36
  store i1 %_trans_icmp_ne_79, i1* %CF, !mcsema_real_eip !25
  store volatile i8* %_new_gep_65, i8** %_RSP_ptr_
  store i64 %70, i64* %XSP, !mcsema_real_eip !25
  %_allin_new_bt_81 = bitcast i8* %_new_gep_65 to i64*
  %_ptr_to_int_228 = ptrtoint i64* %_allin_new_bt_81 to i64
  %_offset_above_rbp_231 = sub i64 %_ptr_to_int_228, %_local_end_to_int_
  %_pot_address_in_parent_stack_232 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_231
  %_cond1_233 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_234 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_235 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_236 = or i1 %_cond2_1_234, %_cond2_2_235
  %_cond4_237 = icmp ule i8* %_pot_address_in_parent_stack_232, %_parent_stack_end_ptr_
  %_cond1_n_cond2_238 = and i1 %_cond1_233, %_cond2_236
  %_cond1_n_cond2_cond3_239 = and i1 %_cond1_n_cond2_238, %_cond4_237
  br i1 %_cond1_n_cond2_cond3_239, label %84, label %85

; <label>:84:                                     ; preds = %68
  %_address_in_parent_stack_bt_241 = bitcast i8* %_pot_address_in_parent_stack_232 to i64*
  br label %85

; <label>:85:                                     ; preds = %68, %84
  %86 = phi i64* [ %_allin_new_bt_81, %68 ], [ %_address_in_parent_stack_bt_241, %84 ]
  %_new_load_242 = load i64, i64* %86
  %_new_int2ptr_ = inttoptr i64 %_new_load_242 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_242, i64* %XBP, !mcsema_real_eip !26
  %_new_gep_82 = getelementptr i8, i8* %_new_gep_65, i64 8
  %87 = add i64 %70, 8, !mcsema_real_eip !26
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_
  store i64 %87, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_84 = getelementptr i8, i8* %_new_gep_82, i64 8
  %88 = add i64 %87, 8, !mcsema_real_eip !27
  %_allin_new_bt_85 = bitcast i8* %_new_gep_82 to i64*
  %_ptr_to_int_243 = ptrtoint i64* %_allin_new_bt_85 to i64
  %_offset_above_rbp_246 = sub i64 %_ptr_to_int_243, %_local_end_to_int_
  %_pot_address_in_parent_stack_247 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_246
  %_cond1_248 = icmp ugt i8* %_new_gep_82, %_local_stack_end_ptr_
  %_cond2_1_249 = icmp ugt i8* %_new_gep_82, %_parent_stack_end_ptr_
  %_cond2_2_250 = icmp ult i8* %_new_gep_82, %_parent_stack_start_ptr_
  %_cond2_251 = or i1 %_cond2_1_249, %_cond2_2_250
  %_cond4_252 = icmp ule i8* %_pot_address_in_parent_stack_247, %_parent_stack_end_ptr_
  %_cond1_n_cond2_253 = and i1 %_cond1_248, %_cond2_251
  %_cond1_n_cond2_cond3_254 = and i1 %_cond1_n_cond2_253, %_cond4_252
  br i1 %_cond1_n_cond2_cond3_254, label %89, label %90

; <label>:89:                                     ; preds = %85
  %_address_in_parent_stack_bt_256 = bitcast i8* %_pot_address_in_parent_stack_247 to i64*
  br label %90

; <label>:90:                                     ; preds = %85, %89
  %91 = phi i64* [ %_allin_new_bt_85, %85 ], [ %_address_in_parent_stack_bt_256, %89 ]
  %_new_load_257 = load i64, i64* %91
  store i64 %_new_load_257, i64* %XIP, !mcsema_real_eip !27
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_
  store i64 %88, i64* %XSP, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x54:                                       ; preds = %181, %63
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -40
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %_ptr_to_int_258 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_261 = sub i64 %_ptr_to_int_258, %_local_end_to_int_
  %_pot_address_in_parent_stack_262 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_261
  %_cond1_263 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_264 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_265 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_266 = or i1 %_cond2_1_264, %_cond2_2_265
  %_cond4_267 = icmp ule i8* %_pot_address_in_parent_stack_262, %_parent_stack_end_ptr_
  %_cond1_n_cond2_268 = and i1 %_cond1_263, %_cond2_266
  %_cond1_n_cond2_cond3_269 = and i1 %_cond1_n_cond2_268, %_cond4_267
  br i1 %_cond1_n_cond2_cond3_269, label %92, label %93

; <label>:92:                                     ; preds = %block_0x54
  %_address_in_parent_stack_bt_271 = bitcast i8* %_pot_address_in_parent_stack_262 to i64*
  br label %93

; <label>:93:                                     ; preds = %block_0x54, %92
  %94 = phi i64* [ %_allin_new_bt_88, %block_0x54 ], [ %_address_in_parent_stack_bt_271, %92 ]
  %_new_load_272 = load i64, i64* %94
  store i64 %_new_load_272, i64* %XAX, !mcsema_real_eip !28
  %95 = inttoptr i64 %_new_load_272 to i64*, !mcsema_real_eip !29
  %96 = inttoptr i64 %_new_load_272 to i8*, !mcsema_real_eip !29
  %_offset_above_rbp_275 = sub i64 %_new_load_272, %_local_end_to_int_
  %_pot_address_in_parent_stack_276 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_275
  %_cond1_277 = icmp ugt i8* %96, %_local_stack_end_ptr_
  %_cond2_1_278 = icmp ugt i8* %96, %_parent_stack_end_ptr_
  %_cond2_2_279 = icmp ult i8* %96, %_parent_stack_start_ptr_
  %_cond2_280 = or i1 %_cond2_1_278, %_cond2_2_279
  %_cond4_281 = icmp ule i8* %_pot_address_in_parent_stack_276, %_parent_stack_end_ptr_
  %_cond1_n_cond2_282 = and i1 %_cond1_277, %_cond2_280
  %_cond1_n_cond2_cond3_283 = and i1 %_cond1_n_cond2_282, %_cond4_281
  br i1 %_cond1_n_cond2_cond3_283, label %97, label %98

; <label>:97:                                     ; preds = %93
  br label %98

; <label>:98:                                     ; preds = %93, %97
  %99 = phi i8* [ %96, %93 ], [ %_pot_address_in_parent_stack_276, %97 ]
  %_new_load_285 = load i8, i8* %99
  %100 = sext i8 %_new_load_285 to i32, !mcsema_real_eip !29
  %101 = zext i32 %100 to i64, !mcsema_real_eip !29
  store i64 %101, i64* %XCX, !mcsema_real_eip !29
  %ECX.41 = bitcast i64* %XCX to i32*, !mcsema_real_eip !30
  %ECX_val.42 = load i32, i32* %ECX.41, !mcsema_real_eip !30
  store i1 false, i1* %AF, !mcsema_real_eip !30
  %102 = trunc i32 %ECX_val.42 to i8, !mcsema_real_eip !30
  %103 = call i8 @llvm.ctpop.i8(i8 %102), !mcsema_real_eip !30
  %104 = trunc i8 %103 to i1, !mcsema_real_eip !30
  %105 = xor i1 %104, true, !mcsema_real_eip !30
  store i1 %105, i1* %PF, !mcsema_real_eip !30
  %106 = icmp eq i32 %ECX_val.42, 0, !mcsema_real_eip !30
  store i1 %106, i1* %ZF, !mcsema_real_eip !30
  %107 = lshr i32 %ECX_val.42, 31, !mcsema_real_eip !30
  %108 = trunc i32 %107 to i1, !mcsema_real_eip !30
  store i1 %108, i1* %SF, !mcsema_real_eip !30
  store i1 false, i1* %CF, !mcsema_real_eip !30
  store i1 false, i1* %OF, !mcsema_real_eip !30
  br i1 %106, label %block_0xa9, label %block_0x64, !mcsema_real_eip !31

block_0x64:                                       ; preds = %98
  br i1 %_cond1_n_cond2_cond3_269, label %109, label %110

; <label>:109:                                    ; preds = %block_0x64
  %_address_in_parent_stack_bt_299 = bitcast i8* %_pot_address_in_parent_stack_262 to i64*
  br label %110

; <label>:110:                                    ; preds = %block_0x64, %109
  %111 = phi i64* [ %_allin_new_bt_88, %block_0x64 ], [ %_address_in_parent_stack_bt_299, %109 ]
  %_new_load_300 = load i64, i64* %111
  store i64 %_new_load_300, i64* %XAX, !mcsema_real_eip !32
  %112 = inttoptr i64 %_new_load_300 to i64*, !mcsema_real_eip !33
  %113 = inttoptr i64 %_new_load_300 to i8*, !mcsema_real_eip !33
  %_offset_above_rbp_303 = sub i64 %_new_load_300, %_local_end_to_int_
  %_pot_address_in_parent_stack_304 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_303
  %_cond1_305 = icmp ugt i8* %113, %_local_stack_end_ptr_
  %_cond2_1_306 = icmp ugt i8* %113, %_parent_stack_end_ptr_
  %_cond2_2_307 = icmp ult i8* %113, %_parent_stack_start_ptr_
  %_cond2_308 = or i1 %_cond2_1_306, %_cond2_2_307
  %_cond4_309 = icmp ule i8* %_pot_address_in_parent_stack_304, %_parent_stack_end_ptr_
  %_cond1_n_cond2_310 = and i1 %_cond1_305, %_cond2_308
  %_cond1_n_cond2_cond3_311 = and i1 %_cond1_n_cond2_310, %_cond4_309
  br i1 %_cond1_n_cond2_cond3_311, label %114, label %115

; <label>:114:                                    ; preds = %110
  br label %115

; <label>:115:                                    ; preds = %110, %114
  %116 = phi i8* [ %113, %110 ], [ %_pot_address_in_parent_stack_304, %114 ]
  %_new_load_313 = load i8, i8* %116
  %117 = sext i8 %_new_load_313 to i32, !mcsema_real_eip !33
  %118 = zext i32 %117 to i64, !mcsema_real_eip !33
  store i64 %118, i64* %XCX, !mcsema_real_eip !33
  %ECX_val.49 = load i32, i32* %ECX.41, !mcsema_real_eip !34
  %119 = sub i32 %ECX_val.49, 47, !mcsema_real_eip !34
  %120 = xor i32 %119, %ECX_val.49, !mcsema_real_eip !34
  %121 = xor i32 %120, 47, !mcsema_real_eip !34
  %122 = and i32 %121, 16, !mcsema_real_eip !34
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !34
  store i1 %123, i1* %AF, !mcsema_real_eip !34
  %124 = trunc i32 %119 to i8, !mcsema_real_eip !34
  %125 = call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !34
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !34
  %127 = xor i1 %126, true, !mcsema_real_eip !34
  store i1 %127, i1* %PF, !mcsema_real_eip !34
  %128 = icmp eq i32 %119, 0, !mcsema_real_eip !34
  store i1 %128, i1* %ZF, !mcsema_real_eip !34
  %129 = lshr i32 %119, 31, !mcsema_real_eip !34
  %130 = trunc i32 %129 to i1, !mcsema_real_eip !34
  store i1 %130, i1* %SF, !mcsema_real_eip !34
  %131 = icmp ult i32 %ECX_val.49, 47, !mcsema_real_eip !34
  store i1 %131, i1* %CF, !mcsema_real_eip !34
  %132 = xor i32 %ECX_val.49, 47, !mcsema_real_eip !34
  %133 = and i32 %132, %120, !mcsema_real_eip !34
  %134 = lshr i32 %133, 31, !mcsema_real_eip !34
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !34
  store i1 %135, i1* %OF, !mcsema_real_eip !34
  %136 = icmp eq i1 %128, false, !mcsema_real_eip !35
  br i1 %136, label %block_0x80, label %block_0x74, !mcsema_real_eip !35

block_0xa9:                                       ; preds = %98
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -32
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %_ptr_to_int_314 = ptrtoint i64* %_allin_new_bt_94 to i64
  %_offset_above_rbp_317 = sub i64 %_ptr_to_int_314, %_local_end_to_int_
  %_pot_address_in_parent_stack_318 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_317
  %_cond1_319 = icmp ugt i8* %_new_gep_93, %_local_stack_end_ptr_
  %_cond2_1_320 = icmp ugt i8* %_new_gep_93, %_parent_stack_end_ptr_
  %_cond2_2_321 = icmp ult i8* %_new_gep_93, %_parent_stack_start_ptr_
  %_cond2_322 = or i1 %_cond2_1_320, %_cond2_2_321
  %_cond4_323 = icmp ule i8* %_pot_address_in_parent_stack_318, %_parent_stack_end_ptr_
  %_cond1_n_cond2_324 = and i1 %_cond1_319, %_cond2_322
  %_cond1_n_cond2_cond3_325 = and i1 %_cond1_n_cond2_324, %_cond4_323
  br i1 %_cond1_n_cond2_cond3_325, label %137, label %138

; <label>:137:                                    ; preds = %block_0xa9
  %_address_in_parent_stack_bt_327 = bitcast i8* %_pot_address_in_parent_stack_318 to i64*
  br label %138

; <label>:138:                                    ; preds = %block_0xa9, %137
  %139 = phi i64* [ %_allin_new_bt_94, %block_0xa9 ], [ %_address_in_parent_stack_bt_327, %137 ]
  %_new_load_328 = load i64, i64* %139
  store i64 %_new_load_328, i64* %XAX, !mcsema_real_eip !36
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -8
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  store i64 %_new_load_328, i64* %_allin_new_bt_97, !mcsema_real_eip !37
  br label %block_0xbe, !mcsema_real_eip !38

block_0x74:                                       ; preds = %115
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -48
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %_ptr_to_int_329 = ptrtoint i64* %_allin_new_bt_100 to i64
  %_offset_above_rbp_332 = sub i64 %_ptr_to_int_329, %_local_end_to_int_
  %_pot_address_in_parent_stack_333 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_332
  %_cond1_334 = icmp ugt i8* %_new_gep_99, %_local_stack_end_ptr_
  %_cond2_1_335 = icmp ugt i8* %_new_gep_99, %_parent_stack_end_ptr_
  %_cond2_2_336 = icmp ult i8* %_new_gep_99, %_parent_stack_start_ptr_
  %_cond2_337 = or i1 %_cond2_1_335, %_cond2_2_336
  %_cond4_338 = icmp ule i8* %_pot_address_in_parent_stack_333, %_parent_stack_end_ptr_
  %_cond1_n_cond2_339 = and i1 %_cond1_334, %_cond2_337
  %_cond1_n_cond2_cond3_340 = and i1 %_cond1_n_cond2_339, %_cond4_338
  br i1 %_cond1_n_cond2_cond3_340, label %140, label %141

; <label>:140:                                    ; preds = %block_0x74
  %_address_in_parent_stack_bt_342 = bitcast i8* %_pot_address_in_parent_stack_333 to i64*
  br label %141

; <label>:141:                                    ; preds = %block_0x74, %140
  %142 = phi i64* [ %_allin_new_bt_100, %block_0x74 ], [ %_address_in_parent_stack_bt_342, %140 ]
  %_new_load_343 = load i64, i64* %142
  store i64 %_new_load_343, i64* %XAX, !mcsema_real_eip !39
  %143 = inttoptr i64 %_new_load_343 to i64*, !mcsema_real_eip !40
  %144 = inttoptr i64 %_new_load_343 to i8*, !mcsema_real_eip !40
  store i8 92, i8* %144, !mcsema_real_eip !40
  br label %block_0x8c, !mcsema_real_eip !41

block_0x80:                                       ; preds = %115
  br i1 %_cond1_n_cond2_cond3_269, label %145, label %146

; <label>:145:                                    ; preds = %block_0x80
  %_address_in_parent_stack_bt_357 = bitcast i8* %_pot_address_in_parent_stack_262 to i64*
  br label %146

; <label>:146:                                    ; preds = %block_0x80, %145
  %147 = phi i64* [ %_allin_new_bt_88, %block_0x80 ], [ %_address_in_parent_stack_bt_357, %145 ]
  %_new_load_358 = load i64, i64* %147
  store i64 %_new_load_358, i64* %XAX, !mcsema_real_eip !42
  %148 = inttoptr i64 %_new_load_358 to i64*, !mcsema_real_eip !43
  %149 = inttoptr i64 %_new_load_358 to i8*, !mcsema_real_eip !43
  %_offset_above_rbp_361 = sub i64 %_new_load_358, %_local_end_to_int_
  %_pot_address_in_parent_stack_362 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_361
  %_cond1_363 = icmp ugt i8* %149, %_local_stack_end_ptr_
  %_cond2_1_364 = icmp ugt i8* %149, %_parent_stack_end_ptr_
  %_cond2_2_365 = icmp ult i8* %149, %_parent_stack_start_ptr_
  %_cond2_366 = or i1 %_cond2_1_364, %_cond2_2_365
  %_cond4_367 = icmp ule i8* %_pot_address_in_parent_stack_362, %_parent_stack_end_ptr_
  %_cond1_n_cond2_368 = and i1 %_cond1_363, %_cond2_366
  %_cond1_n_cond2_cond3_369 = and i1 %_cond1_n_cond2_368, %_cond4_367
  br i1 %_cond1_n_cond2_cond3_369, label %150, label %151

; <label>:150:                                    ; preds = %146
  br label %151

; <label>:151:                                    ; preds = %146, %150
  %152 = phi i8* [ %149, %146 ], [ %_pot_address_in_parent_stack_362, %150 ]
  %_new_load_371 = load i8, i8* %152
  %CL.52 = bitcast i64* %XCX to i8*, !mcsema_real_eip !43
  store i8 %_new_load_371, i8* %CL.52, !mcsema_real_eip !43
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -48
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %_ptr_to_int_372 = ptrtoint i64* %_allin_new_bt_106 to i64
  %_offset_above_rbp_375 = sub i64 %_ptr_to_int_372, %_local_end_to_int_
  %_pot_address_in_parent_stack_376 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_375
  %_cond1_377 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_378 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_379 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_380 = or i1 %_cond2_1_378, %_cond2_2_379
  %_cond4_381 = icmp ule i8* %_pot_address_in_parent_stack_376, %_parent_stack_end_ptr_
  %_cond1_n_cond2_382 = and i1 %_cond1_377, %_cond2_380
  %_cond1_n_cond2_cond3_383 = and i1 %_cond1_n_cond2_382, %_cond4_381
  br i1 %_cond1_n_cond2_cond3_383, label %153, label %154

; <label>:153:                                    ; preds = %151
  %_address_in_parent_stack_bt_385 = bitcast i8* %_pot_address_in_parent_stack_376 to i64*
  br label %154

; <label>:154:                                    ; preds = %151, %153
  %155 = phi i64* [ %_allin_new_bt_106, %151 ], [ %_address_in_parent_stack_bt_385, %153 ]
  %_new_load_386 = load i64, i64* %155
  store i64 %_new_load_386, i64* %XAX, !mcsema_real_eip !44
  %156 = inttoptr i64 %_new_load_386 to i64*, !mcsema_real_eip !45
  %157 = inttoptr i64 %_new_load_386 to i8*, !mcsema_real_eip !45
  store i8 %_new_load_371, i8* %157, !mcsema_real_eip !45
  br label %block_0x8c, !mcsema_real_eip !39

block_0x8c:                                       ; preds = %154, %141
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_107, i64 -40
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %_ptr_to_int_387 = ptrtoint i64* %_allin_new_bt_109 to i64
  %_offset_above_rbp_390 = sub i64 %_ptr_to_int_387, %_local_end_to_int_
  %_pot_address_in_parent_stack_391 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_390
  %_cond1_392 = icmp ugt i8* %_new_gep_108, %_local_stack_end_ptr_
  %_cond2_1_393 = icmp ugt i8* %_new_gep_108, %_parent_stack_end_ptr_
  %_cond2_2_394 = icmp ult i8* %_new_gep_108, %_parent_stack_start_ptr_
  %_cond2_395 = or i1 %_cond2_1_393, %_cond2_2_394
  %_cond4_396 = icmp ule i8* %_pot_address_in_parent_stack_391, %_parent_stack_end_ptr_
  %_cond1_n_cond2_397 = and i1 %_cond1_392, %_cond2_395
  %_cond1_n_cond2_cond3_398 = and i1 %_cond1_n_cond2_397, %_cond4_396
  br i1 %_cond1_n_cond2_cond3_398, label %158, label %159

; <label>:158:                                    ; preds = %block_0x8c
  %_address_in_parent_stack_bt_400 = bitcast i8* %_pot_address_in_parent_stack_391 to i64*
  br label %159

; <label>:159:                                    ; preds = %block_0x8c, %158
  %160 = phi i64* [ %_allin_new_bt_109, %block_0x8c ], [ %_address_in_parent_stack_bt_400, %158 ]
  %_new_load_401 = load i64, i64* %160
  store i64 %_new_load_401, i64* %XAX, !mcsema_real_eip !46
  %161 = add i64 1, %_new_load_401, !mcsema_real_eip !47
  %162 = xor i64 %161, %_new_load_401, !mcsema_real_eip !47
  %163 = xor i64 %162, 1, !mcsema_real_eip !47
  %164 = and i64 %163, 16, !mcsema_real_eip !47
  %165 = icmp ne i64 %164, 0, !mcsema_real_eip !47
  store i1 %165, i1* %AF, !mcsema_real_eip !47
  %166 = lshr i64 %161, 63, !mcsema_real_eip !47
  %167 = trunc i64 %166 to i1, !mcsema_real_eip !47
  store i1 %167, i1* %SF, !mcsema_real_eip !47
  %168 = icmp eq i64 %161, 0, !mcsema_real_eip !47
  store i1 %168, i1* %ZF, !mcsema_real_eip !47
  %169 = xor i64 %_new_load_401, 1, !mcsema_real_eip !47
  %170 = xor i64 %169, -1, !mcsema_real_eip !47
  %171 = and i64 %170, %162, !mcsema_real_eip !47
  %172 = lshr i64 %171, 63, !mcsema_real_eip !47
  %173 = and i64 %172, 1, !mcsema_real_eip !47
  %174 = trunc i64 %173 to i1, !mcsema_real_eip !47
  store i1 %174, i1* %OF, !mcsema_real_eip !47
  %175 = trunc i64 %161 to i8, !mcsema_real_eip !47
  %176 = call i8 @llvm.ctpop.i8(i8 %175), !mcsema_real_eip !47
  %177 = trunc i8 %176 to i1, !mcsema_real_eip !47
  %178 = xor i1 %177, true, !mcsema_real_eip !47
  store i1 %178, i1* %PF, !mcsema_real_eip !47
  %179 = icmp ult i64 %161, %_new_load_401, !mcsema_real_eip !47
  store i1 %179, i1* %CF, !mcsema_real_eip !47
  store i64 %161, i64* %XAX, !mcsema_real_eip !47
  store i64 %161, i64* %_allin_new_bt_109, !mcsema_real_eip !48
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -48
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %_ptr_to_int_402 = ptrtoint i64* %_allin_new_bt_115 to i64
  %_offset_above_rbp_405 = sub i64 %_ptr_to_int_402, %_local_end_to_int_
  %_pot_address_in_parent_stack_406 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_405
  %_cond1_407 = icmp ugt i8* %_new_gep_114, %_local_stack_end_ptr_
  %_cond2_1_408 = icmp ugt i8* %_new_gep_114, %_parent_stack_end_ptr_
  %_cond2_2_409 = icmp ult i8* %_new_gep_114, %_parent_stack_start_ptr_
  %_cond2_410 = or i1 %_cond2_1_408, %_cond2_2_409
  %_cond4_411 = icmp ule i8* %_pot_address_in_parent_stack_406, %_parent_stack_end_ptr_
  %_cond1_n_cond2_412 = and i1 %_cond1_407, %_cond2_410
  %_cond1_n_cond2_cond3_413 = and i1 %_cond1_n_cond2_412, %_cond4_411
  br i1 %_cond1_n_cond2_cond3_413, label %180, label %181

; <label>:180:                                    ; preds = %159
  %_address_in_parent_stack_bt_415 = bitcast i8* %_pot_address_in_parent_stack_406 to i64*
  br label %181

; <label>:181:                                    ; preds = %159, %180
  %182 = phi i64* [ %_allin_new_bt_115, %159 ], [ %_address_in_parent_stack_bt_415, %180 ]
  %_new_load_416 = load i64, i64* %182
  store i64 %_new_load_416, i64* %XAX, !mcsema_real_eip !49
  %183 = add i64 1, %_new_load_416, !mcsema_real_eip !50
  %184 = xor i64 %183, %_new_load_416, !mcsema_real_eip !50
  %185 = xor i64 %184, 1, !mcsema_real_eip !50
  %186 = and i64 %185, 16, !mcsema_real_eip !50
  %187 = icmp ne i64 %186, 0, !mcsema_real_eip !50
  store i1 %187, i1* %AF, !mcsema_real_eip !50
  %188 = lshr i64 %183, 63, !mcsema_real_eip !50
  %189 = trunc i64 %188 to i1, !mcsema_real_eip !50
  store i1 %189, i1* %SF, !mcsema_real_eip !50
  %190 = icmp eq i64 %183, 0, !mcsema_real_eip !50
  store i1 %190, i1* %ZF, !mcsema_real_eip !50
  %191 = xor i64 %_new_load_416, 1, !mcsema_real_eip !50
  %192 = xor i64 %191, -1, !mcsema_real_eip !50
  %193 = and i64 %192, %184, !mcsema_real_eip !50
  %194 = lshr i64 %193, 63, !mcsema_real_eip !50
  %195 = and i64 %194, 1, !mcsema_real_eip !50
  %196 = trunc i64 %195 to i1, !mcsema_real_eip !50
  store i1 %196, i1* %OF, !mcsema_real_eip !50
  %197 = trunc i64 %183 to i8, !mcsema_real_eip !50
  %198 = call i8 @llvm.ctpop.i8(i8 %197), !mcsema_real_eip !50
  %199 = trunc i8 %198 to i1, !mcsema_real_eip !50
  %200 = xor i1 %199, true, !mcsema_real_eip !50
  store i1 %200, i1* %PF, !mcsema_real_eip !50
  %201 = icmp ult i64 %183, %_new_load_416, !mcsema_real_eip !50
  store i1 %201, i1* %CF, !mcsema_real_eip !50
  store i64 %183, i64* %XAX, !mcsema_real_eip !50
  store i64 %183, i64* %_allin_new_bt_115, !mcsema_real_eip !51
  br label %block_0x54, !mcsema_real_eip !52
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
!23 = !{i64 190}
!24 = !{i64 182}
!25 = !{i64 194}
!26 = !{i64 198}
!27 = !{i64 199}
!28 = !{i64 84}
!29 = !{i64 88}
!30 = !{i64 91}
!31 = !{i64 94}
!32 = !{i64 100}
!33 = !{i64 104}
!34 = !{i64 107}
!35 = !{i64 110}
!36 = !{i64 169}
!37 = !{i64 173}
!38 = !{i64 177}
!39 = !{i64 116}
!40 = !{i64 120}
!41 = !{i64 123}
!42 = !{i64 128}
!43 = !{i64 132}
!44 = !{i64 134}
!45 = !{i64 138}
!46 = !{i64 140}
!47 = !{i64 144}
!48 = !{i64 148}
!49 = !{i64 152}
!50 = !{i64 156}
!51 = !{i64 160}
!52 = !{i64 164}
