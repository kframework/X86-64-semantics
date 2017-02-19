; ModuleID = 'Output/test_12.clang.trans.bc'
source_filename = "Output/test_12.clang.bc"
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
module asm "  .globl open;"
module asm "  .globl _open;"
module asm "  .type _open,@function"
module asm "_open:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq open@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _open,0b-_open;"
module asm "  .cfi_endproc;"
module asm "  .globl close;"
module asm "  .globl _close;"
module asm "  .type _close,@function"
module asm "_close:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq close@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _close,0b-_close;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl foo;"
module asm "  .type foo,@function"
module asm "foo:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size foo,0b-foo;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x50 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"M\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %ESI.4 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.5 = load i32, i32* %ESI.4, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  store i1 false, i1* %SF, !mcsema_real_eip !5
  store i1 true, i1* %ZF, !mcsema_real_eip !5
  store i1 true, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  store i64 0, i64* %XSI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.9 = load i64, i64* %XDI, !mcsema_real_eip !6
  store i64 %RDI_val.9, i64* %_allin_new_bt_15, !mcsema_real_eip !6
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %14 = load i64, i64* %_allin_new_bt_18, !mcsema_real_eip !7
  store i64 %14, i64* %XDI, !mcsema_real_eip !7
  %AL.11 = bitcast i64* %XAX to i8*, !mcsema_real_eip !8
  store i8 0, i8* %AL.11, !mcsema_real_eip !8
  %RSI_val.13 = load i64, i64* %XSI, !mcsema_real_eip !9
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !9
  %_new_gep_20 = getelementptr i8, i8* %_load_rsp_ptr_19, i64 -8
  %15 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !9
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, !mcsema_real_eip !9
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %15, i64* %XSP, !mcsema_real_eip !9
  %16 = call x86_64_sysvcc i64 @_open(i64 %14, i64 %RSI_val.13)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %16, i64* %XAX, !mcsema_real_eip !9
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -20
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !10
  %17 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !10
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.17, i32* %18, !mcsema_real_eip !10
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -20
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %19 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !11
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !11
  %21 = load i32, i32* %20, !mcsema_real_eip !11
  %22 = sub i32 %21, -1, !mcsema_real_eip !11
  %23 = xor i32 %22, %21, !mcsema_real_eip !11
  %24 = xor i32 %23, -1, !mcsema_real_eip !11
  %25 = and i32 %24, 16, !mcsema_real_eip !11
  %26 = icmp ne i32 %25, 0, !mcsema_real_eip !11
  store i1 %26, i1* %AF, !mcsema_real_eip !11
  %27 = trunc i32 %22 to i8, !mcsema_real_eip !11
  %28 = call i8 @llvm.ctpop.i8(i8 %27), !mcsema_real_eip !11
  %29 = trunc i8 %28 to i1, !mcsema_real_eip !11
  %30 = xor i1 %29, true, !mcsema_real_eip !11
  store i1 %30, i1* %PF, !mcsema_real_eip !11
  %31 = icmp eq i32 %22, 0, !mcsema_real_eip !11
  store i1 %31, i1* %ZF, !mcsema_real_eip !11
  %32 = lshr i32 %22, 31, !mcsema_real_eip !11
  %33 = trunc i32 %32 to i1, !mcsema_real_eip !11
  store i1 %33, i1* %SF, !mcsema_real_eip !11
  %34 = icmp ult i32 %21, -1, !mcsema_real_eip !11
  store i1 %34, i1* %CF, !mcsema_real_eip !11
  %35 = xor i32 %21, -1, !mcsema_real_eip !11
  %36 = and i32 %35, %23, !mcsema_real_eip !11
  %37 = lshr i32 %36, 31, !mcsema_real_eip !11
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !11
  store i1 %38, i1* %OF, !mcsema_real_eip !11
  br i1 %31, label %block_0x3d, label %block_0x26, !mcsema_real_eip !12

block_0x26:                                       ; preds = %block_0x0
  %39 = load i32, i32* %20, !mcsema_real_eip !13
  %40 = zext i32 %39 to i64, !mcsema_real_eip !13
  store i64 %40, i64* %XDI, !mcsema_real_eip !13
  %_load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_
  %RSP_val.21 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_32 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 -8
  %41 = sub i64 %RSP_val.21, 8, !mcsema_real_eip !14
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, !mcsema_real_eip !14
  store volatile i8* %_new_gep_32, i8** %_RSP_ptr_
  store i64 %41, i64* %XSP, !mcsema_real_eip !14
  %42 = call x86_64_sysvcc i64 @_close(i64 %40)
  %_rsp_fix_68 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_69 = getelementptr i8, i8* %_rsp_fix_68, i64 8
  store i8* %_gep_fix_69, i8** %_RSP_ptr_
  store i64 %42, i64* %XAX, !mcsema_real_eip !14
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -4
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %43 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !15
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !15
  store i32 0, i32* %44, !mcsema_real_eip !15
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %EAX_val.25 = load i32, i32* %EAX.16, !mcsema_real_eip !16
  %45 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !16
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.25, i32* %46, !mcsema_real_eip !16
  br label %block_0x44, !mcsema_real_eip !17

block_0x3d:                                       ; preds = %block_0x0
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -4
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !18
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !18
  store i32 -1, i32* %48, !mcsema_real_eip !18
  br label %block_0x44, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x3d, %block_0x26
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -4
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %49 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !19
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !19
  %51 = load i32, i32* %50, !mcsema_real_eip !19
  %52 = zext i32 %51 to i64, !mcsema_real_eip !19
  store i64 %52, i64* %XAX, !mcsema_real_eip !19
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !20
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 32
  %53 = add i64 32, %RSP_val.28, !mcsema_real_eip !20
  %_trans_p2i_48 = ptrtoint i8* %_new_gep_47 to i64
  %_trans_p2i_49 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  %_trans_xor_50 = xor i64 %_trans_p2i_48, %_trans_p2i_49
  %54 = xor i64 %_trans_xor_50, 32, !mcsema_real_eip !20
  %55 = and i64 %54, 16, !mcsema_real_eip !20
  %56 = icmp ne i64 %55, 0, !mcsema_real_eip !20
  store i1 %56, i1* %AF, !mcsema_real_eip !20
  %57 = lshr i64 %53, 63, !mcsema_real_eip !20
  %58 = trunc i64 %57 to i1, !mcsema_real_eip !20
  store i1 %58, i1* %SF, !mcsema_real_eip !20
  %_trans_icmp_eq_52 = icmp eq i64 %_trans_p2i_48, 0
  store i1 %_trans_icmp_eq_52, i1* %ZF, !mcsema_real_eip !20
  %_trans_xor_54 = xor i64 %_trans_p2i_49, 32
  %59 = xor i64 %_trans_xor_54, -1, !mcsema_real_eip !20
  %60 = and i64 %59, %_trans_xor_50, !mcsema_real_eip !20
  %61 = lshr i64 %60, 63, !mcsema_real_eip !20
  %62 = and i64 %61, 1, !mcsema_real_eip !20
  %63 = trunc i64 %62 to i1, !mcsema_real_eip !20
  store i1 %63, i1* %OF, !mcsema_real_eip !20
  %_trans_trunc_59 = trunc i64 %_trans_p2i_48 to i8
  %64 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_59), !mcsema_real_eip !20
  %65 = trunc i8 %64 to i1, !mcsema_real_eip !20
  %66 = xor i1 %65, true, !mcsema_real_eip !20
  store i1 %66, i1* %PF, !mcsema_real_eip !20
  %_trans_icmp_ne_61 = icmp ne i64 %_trans_p2i_48, %RSP_val.28
  store i1 %_trans_icmp_ne_61, i1* %CF, !mcsema_real_eip !20
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %53, i64* %XSP, !mcsema_real_eip !20
  %_allin_new_bt_63 = bitcast i8* %_new_gep_47 to i64*
  %67 = load i64, i64* %_allin_new_bt_63, !mcsema_real_eip !21
  %_new_int2ptr_ = inttoptr i64 %67 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %67, i64* %XBP, !mcsema_real_eip !21
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_47, i64 8
  %68 = add i64 %53, 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_
  store i64 %68, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %69 = add i64 %68, 8, !mcsema_real_eip !22
  %_allin_new_bt_67 = bitcast i8* %_new_gep_64 to i64*
  %70 = load i64, i64* %_allin_new_bt_67, !mcsema_real_eip !22
  store i64 %70, i64* %XIP, !mcsema_real_eip !22
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_
  store i64 %69, i64* %XSP, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

declare x86_64_sysvcc i64 @close(i64 inreg)

declare x86_64_sysvcc i64 @open(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_open(i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_close(i64) #2

; Function Attrs: naked noinline
declare void @foo() #2

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
  %ESI.4 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.5 = load i32, i32* %ESI.4, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  store i1 false, i1* %SF, !mcsema_real_eip !5
  store i1 true, i1* %ZF, !mcsema_real_eip !5
  store i1 true, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  store i64 0, i64* %XSI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.9 = load i64, i64* %XDI, !mcsema_real_eip !6
  store i64 %RDI_val.9, i64* %_allin_new_bt_15, !mcsema_real_eip !6
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
  store i64 %_new_load_, i64* %XDI, !mcsema_real_eip !7
  %AL.11 = bitcast i64* %XAX to i8*, !mcsema_real_eip !8
  store i8 0, i8* %AL.11, !mcsema_real_eip !8
  %RSI_val.13 = load i64, i64* %XSI, !mcsema_real_eip !9
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !9
  %_new_gep_20 = getelementptr i8, i8* %_load_rsp_ptr_19, i64 -8
  %17 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !9
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, !mcsema_real_eip !9
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %17, i64* %XSP, !mcsema_real_eip !9
  %18 = call x86_64_sysvcc i64 @_open(i64 %_new_load_, i64 %RSI_val.13)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %18, i64* %XAX, !mcsema_real_eip !9
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -20
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %EAX.16 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.17 = load i32, i32* %EAX.16, !mcsema_real_eip !10
  %19 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !10
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.17, i32* %20, !mcsema_real_eip !10
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -20
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %21 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !11
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !11
  %_ptr_bt_72 = bitcast i32* %22 to i8*
  %_offset_above_rbp_73 = sub i64 %21, %_local_end_to_int_
  %_pot_address_in_parent_stack_74 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_73
  %_cond1_75 = icmp ugt i8* %_ptr_bt_72, %_local_stack_end_ptr_
  %_cond2_1_76 = icmp ugt i8* %_ptr_bt_72, %_parent_stack_end_ptr_
  %_cond2_2_77 = icmp ult i8* %_ptr_bt_72, %_parent_stack_start_ptr_
  %_cond2_78 = or i1 %_cond2_1_76, %_cond2_2_77
  %_cond4_79 = icmp ule i8* %_pot_address_in_parent_stack_74, %_parent_stack_end_ptr_
  %_cond1_n_cond2_80 = and i1 %_cond1_75, %_cond2_78
  %_cond1_n_cond2_cond3_81 = and i1 %_cond1_n_cond2_80, %_cond4_79
  br i1 %_cond1_n_cond2_cond3_81, label %23, label %24

; <label>:23:                                     ; preds = %15
  %_address_in_parent_stack_bt_83 = bitcast i8* %_pot_address_in_parent_stack_74 to i32*
  br label %24

; <label>:24:                                     ; preds = %15, %23
  %25 = phi i32* [ %22, %15 ], [ %_address_in_parent_stack_bt_83, %23 ]
  %_new_load_84 = load i32, i32* %25
  %26 = sub i32 %_new_load_84, -1, !mcsema_real_eip !11
  %27 = xor i32 %26, %_new_load_84, !mcsema_real_eip !11
  %28 = xor i32 %27, -1, !mcsema_real_eip !11
  %29 = and i32 %28, 16, !mcsema_real_eip !11
  %30 = icmp ne i32 %29, 0, !mcsema_real_eip !11
  store i1 %30, i1* %AF, !mcsema_real_eip !11
  %31 = trunc i32 %26 to i8, !mcsema_real_eip !11
  %32 = call i8 @llvm.ctpop.i8(i8 %31), !mcsema_real_eip !11
  %33 = trunc i8 %32 to i1, !mcsema_real_eip !11
  %34 = xor i1 %33, true, !mcsema_real_eip !11
  store i1 %34, i1* %PF, !mcsema_real_eip !11
  %35 = icmp eq i32 %26, 0, !mcsema_real_eip !11
  store i1 %35, i1* %ZF, !mcsema_real_eip !11
  %36 = lshr i32 %26, 31, !mcsema_real_eip !11
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !11
  store i1 %37, i1* %SF, !mcsema_real_eip !11
  %38 = icmp ult i32 %_new_load_84, -1, !mcsema_real_eip !11
  store i1 %38, i1* %CF, !mcsema_real_eip !11
  %39 = xor i32 %_new_load_84, -1, !mcsema_real_eip !11
  %40 = and i32 %39, %27, !mcsema_real_eip !11
  %41 = lshr i32 %40, 31, !mcsema_real_eip !11
  %42 = trunc i32 %41 to i1, !mcsema_real_eip !11
  store i1 %42, i1* %OF, !mcsema_real_eip !11
  br i1 %35, label %block_0x3d, label %block_0x26, !mcsema_real_eip !12

block_0x26:                                       ; preds = %24
  br i1 %_cond1_n_cond2_cond3_81, label %43, label %44

; <label>:43:                                     ; preds = %block_0x26
  %_address_in_parent_stack_bt_98 = bitcast i8* %_pot_address_in_parent_stack_74 to i32*
  br label %44

; <label>:44:                                     ; preds = %block_0x26, %43
  %45 = phi i32* [ %22, %block_0x26 ], [ %_address_in_parent_stack_bt_98, %43 ]
  %_new_load_99 = load i32, i32* %45
  %46 = zext i32 %_new_load_99 to i64, !mcsema_real_eip !13
  store i64 %46, i64* %XDI, !mcsema_real_eip !13
  %_load_rsp_ptr_31 = load i8*, i8** %_RSP_ptr_
  %RSP_val.21 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_32 = getelementptr i8, i8* %_load_rsp_ptr_31, i64 -8
  %47 = sub i64 %RSP_val.21, 8, !mcsema_real_eip !14
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, !mcsema_real_eip !14
  store volatile i8* %_new_gep_32, i8** %_RSP_ptr_
  store i64 %47, i64* %XSP, !mcsema_real_eip !14
  %48 = call x86_64_sysvcc i64 @_close(i64 %46)
  %_rsp_fix_68 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_69 = getelementptr i8, i8* %_rsp_fix_68, i64 8
  store i8* %_gep_fix_69, i8** %_RSP_ptr_
  store i64 %48, i64* %XAX, !mcsema_real_eip !14
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -4
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %49 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !15
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !15
  store i32 0, i32* %50, !mcsema_real_eip !15
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %EAX_val.25 = load i32, i32* %EAX.16, !mcsema_real_eip !16
  %51 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !16
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !16
  store i32 %EAX_val.25, i32* %52, !mcsema_real_eip !16
  br label %block_0x44, !mcsema_real_eip !17

block_0x3d:                                       ; preds = %24
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -4
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %53 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !18
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !18
  store i32 -1, i32* %54, !mcsema_real_eip !18
  br label %block_0x44, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x3d, %44
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -4
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !19
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !19
  %_ptr_bt_102 = bitcast i32* %56 to i8*
  %_offset_above_rbp_103 = sub i64 %55, %_local_end_to_int_
  %_pot_address_in_parent_stack_104 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_103
  %_cond1_105 = icmp ugt i8* %_ptr_bt_102, %_local_stack_end_ptr_
  %_cond2_1_106 = icmp ugt i8* %_ptr_bt_102, %_parent_stack_end_ptr_
  %_cond2_2_107 = icmp ult i8* %_ptr_bt_102, %_parent_stack_start_ptr_
  %_cond2_108 = or i1 %_cond2_1_106, %_cond2_2_107
  %_cond4_109 = icmp ule i8* %_pot_address_in_parent_stack_104, %_parent_stack_end_ptr_
  %_cond1_n_cond2_110 = and i1 %_cond1_105, %_cond2_108
  %_cond1_n_cond2_cond3_111 = and i1 %_cond1_n_cond2_110, %_cond4_109
  br i1 %_cond1_n_cond2_cond3_111, label %57, label %58

; <label>:57:                                     ; preds = %block_0x44
  %_address_in_parent_stack_bt_113 = bitcast i8* %_pot_address_in_parent_stack_104 to i32*
  br label %58

; <label>:58:                                     ; preds = %block_0x44, %57
  %59 = phi i32* [ %56, %block_0x44 ], [ %_address_in_parent_stack_bt_113, %57 ]
  %_new_load_114 = load i32, i32* %59
  %60 = zext i32 %_new_load_114 to i64, !mcsema_real_eip !19
  store i64 %60, i64* %XAX, !mcsema_real_eip !19
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.28 = load i64, i64* %XSP, !mcsema_real_eip !20
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 32
  %61 = add i64 32, %RSP_val.28, !mcsema_real_eip !20
  %_trans_p2i_48 = ptrtoint i8* %_new_gep_47 to i64
  %_trans_p2i_49 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  %_trans_xor_50 = xor i64 %_trans_p2i_48, %_trans_p2i_49
  %62 = xor i64 %_trans_xor_50, 32, !mcsema_real_eip !20
  %63 = and i64 %62, 16, !mcsema_real_eip !20
  %64 = icmp ne i64 %63, 0, !mcsema_real_eip !20
  store i1 %64, i1* %AF, !mcsema_real_eip !20
  %65 = lshr i64 %61, 63, !mcsema_real_eip !20
  %66 = trunc i64 %65 to i1, !mcsema_real_eip !20
  store i1 %66, i1* %SF, !mcsema_real_eip !20
  %_trans_icmp_eq_52 = icmp eq i64 %_trans_p2i_48, 0
  store i1 %_trans_icmp_eq_52, i1* %ZF, !mcsema_real_eip !20
  %_trans_xor_54 = xor i64 %_trans_p2i_49, 32
  %67 = xor i64 %_trans_xor_54, -1, !mcsema_real_eip !20
  %68 = and i64 %67, %_trans_xor_50, !mcsema_real_eip !20
  %69 = lshr i64 %68, 63, !mcsema_real_eip !20
  %70 = and i64 %69, 1, !mcsema_real_eip !20
  %71 = trunc i64 %70 to i1, !mcsema_real_eip !20
  store i1 %71, i1* %OF, !mcsema_real_eip !20
  %_trans_trunc_59 = trunc i64 %_trans_p2i_48 to i8
  %72 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_59), !mcsema_real_eip !20
  %73 = trunc i8 %72 to i1, !mcsema_real_eip !20
  %74 = xor i1 %73, true, !mcsema_real_eip !20
  store i1 %74, i1* %PF, !mcsema_real_eip !20
  %_trans_icmp_ne_61 = icmp ne i64 %_trans_p2i_48, %RSP_val.28
  store i1 %_trans_icmp_ne_61, i1* %CF, !mcsema_real_eip !20
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %61, i64* %XSP, !mcsema_real_eip !20
  %_allin_new_bt_63 = bitcast i8* %_new_gep_47 to i64*
  %_ptr_to_int_115 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_118 = sub i64 %_ptr_to_int_115, %_local_end_to_int_
  %_pot_address_in_parent_stack_119 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_118
  %_cond1_120 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_121 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_122 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_123 = or i1 %_cond2_1_121, %_cond2_2_122
  %_cond4_124 = icmp ule i8* %_pot_address_in_parent_stack_119, %_parent_stack_end_ptr_
  %_cond1_n_cond2_125 = and i1 %_cond1_120, %_cond2_123
  %_cond1_n_cond2_cond3_126 = and i1 %_cond1_n_cond2_125, %_cond4_124
  br i1 %_cond1_n_cond2_cond3_126, label %75, label %76

; <label>:75:                                     ; preds = %58
  %_address_in_parent_stack_bt_128 = bitcast i8* %_pot_address_in_parent_stack_119 to i64*
  br label %76

; <label>:76:                                     ; preds = %58, %75
  %77 = phi i64* [ %_allin_new_bt_63, %58 ], [ %_address_in_parent_stack_bt_128, %75 ]
  %_new_load_129 = load i64, i64* %77
  %_new_int2ptr_ = inttoptr i64 %_new_load_129 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_129, i64* %XBP, !mcsema_real_eip !21
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_47, i64 8
  %78 = add i64 %61, 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_
  store i64 %78, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %79 = add i64 %78, 8, !mcsema_real_eip !22
  %_allin_new_bt_67 = bitcast i8* %_new_gep_64 to i64*
  %_ptr_to_int_130 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_133 = sub i64 %_ptr_to_int_130, %_local_end_to_int_
  %_pot_address_in_parent_stack_134 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_133
  %_cond1_135 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_136 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_137 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_138 = or i1 %_cond2_1_136, %_cond2_2_137
  %_cond4_139 = icmp ule i8* %_pot_address_in_parent_stack_134, %_parent_stack_end_ptr_
  %_cond1_n_cond2_140 = and i1 %_cond1_135, %_cond2_138
  %_cond1_n_cond2_cond3_141 = and i1 %_cond1_n_cond2_140, %_cond4_139
  br i1 %_cond1_n_cond2_cond3_141, label %80, label %81

; <label>:80:                                     ; preds = %76
  %_address_in_parent_stack_bt_143 = bitcast i8* %_pot_address_in_parent_stack_134 to i64*
  br label %81

; <label>:81:                                     ; preds = %76, %80
  %82 = phi i64* [ %_allin_new_bt_67, %76 ], [ %_address_in_parent_stack_bt_143, %80 ]
  %_new_load_144 = load i64, i64* %82
  store i64 %_new_load_144, i64* %XIP, !mcsema_real_eip !22
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_
  store i64 %79, i64* %XSP, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
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
!6 = !{i64 10}
!7 = !{i64 14}
!8 = !{i64 18}
!9 = !{i64 20}
!10 = !{i64 25}
!11 = !{i64 28}
!12 = !{i64 32}
!13 = !{i64 38}
!14 = !{i64 41}
!15 = !{i64 46}
!16 = !{i64 53}
!17 = !{i64 56}
!18 = !{i64 61}
!19 = !{i64 68}
!20 = !{i64 71}
!21 = !{i64 75}
!22 = !{i64 76}
