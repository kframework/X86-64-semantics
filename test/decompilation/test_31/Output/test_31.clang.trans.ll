; ModuleID = 'Output/test_31.clang.trans.bc'
source_filename = "Output/test_31.clang.bc"
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

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x99 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xa0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\5C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"9\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.3, 16, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 5, i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %15, !mcsema_real_eip !6
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !7
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.5, 8, !mcsema_real_eip !7
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !7
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !7
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_59)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, !mcsema_real_eip !8
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.7 = load i32, i32* %EAX.6, !mcsema_real_eip !9
  %17 = zext i32 %EAX_val.7 to i64, !mcsema_real_eip !9
  store i64 %17, i64* %XSI, !mcsema_real_eip !9
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !10
  store i8 0, i8* %AL.8, !mcsema_real_eip !10
  %RDX_val.11 = load i64, i64* %XDX, !mcsema_real_eip !11
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !11
  %R8_val.13 = load i64, i64* %R8, !mcsema_real_eip !11
  %R9_val.14 = load i64, i64* %R9, !mcsema_real_eip !11
  %_allin_new_bt_20 = bitcast i8* %_gep_fix_ to i64*
  %18 = load i64, i64* %_allin_new_bt_20, !mcsema_real_eip !11
  %_new_gep_21 = getelementptr i8, i8* %_gep_fix_, i64 8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %19 = load i64, i64* %_allin_new_bt_22, !mcsema_real_eip !11
  %_new_gep_23 = getelementptr i8, i8* %_new_gep_21, i64 8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %20 = load i64, i64* %_allin_new_bt_24, !mcsema_real_eip !11
  %_new_gep_25 = getelementptr i8, i8* %_new_gep_23, i64 8
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %21 = load i64, i64* %_allin_new_bt_26, !mcsema_real_eip !11
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %22 = load i64, i64* %_allin_new_bt_28, !mcsema_real_eip !11
  %_new_gep_29 = getelementptr i8, i8* %_new_gep_27, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %23 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !11
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_32 = getelementptr i8, i8* %_gep_fix_, i64 -8
  %24 = sub i64 %RSP_val.16, 8, !mcsema_real_eip !11
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, !mcsema_real_eip !11
  store volatile i8* %_new_gep_32, i8** %_RSP_ptr_
  store i64 %24, i64* %XSP, !mcsema_real_eip !11
  %25 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x99 to i64), i64 %17, i64 %RDX_val.11, i64 %RCX_val.12, i64 %R8_val.13, i64 %R9_val.14, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23)
  %_rsp_fix_61 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_62 = getelementptr i8, i8* %_rsp_fix_61, i64 8
  store i8* %_gep_fix_62, i8** %_RSP_ptr_
  store i64 %25, i64* %XAX, !mcsema_real_eip !11
  %ESI.17 = bitcast i64* %XSI to i32*, !mcsema_real_eip !12
  %ESI_val.18 = load i32, i32* %ESI.17, !mcsema_real_eip !12
  store i1 false, i1* %CF, !mcsema_real_eip !12
  store i1 false, i1* %OF, !mcsema_real_eip !12
  store i1 false, i1* %SF, !mcsema_real_eip !12
  store i1 true, i1* %ZF, !mcsema_real_eip !12
  store i1 true, i1* %PF, !mcsema_real_eip !12
  store i1 undef, i1* %AF, !mcsema_real_eip !12
  store i64 0, i64* %XSI, !mcsema_real_eip !12
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX_val.23 = load i32, i32* %EAX.6, !mcsema_real_eip !13
  %26 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !13
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.23, i32* %27, !mcsema_real_eip !13
  %ESI_val.25 = load i32, i32* %ESI.17, !mcsema_real_eip !14
  %28 = zext i32 %ESI_val.25 to i64, !mcsema_real_eip !14
  store i64 %28, i64* %XAX, !mcsema_real_eip !14
  %_load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_38 = getelementptr i8, i8* %_load_rsp_ptr_37, i64 16
  %29 = add i64 16, %RSP_val.26, !mcsema_real_eip !15
  %_trans_p2i_39 = ptrtoint i8* %_new_gep_38 to i64
  %_trans_p2i_40 = ptrtoint i8* %_load_rsp_ptr_37 to i64
  %_trans_xor_41 = xor i64 %_trans_p2i_39, %_trans_p2i_40
  %30 = xor i64 %_trans_xor_41, 16, !mcsema_real_eip !15
  %31 = and i64 %30, 16, !mcsema_real_eip !15
  %32 = icmp ne i64 %31, 0, !mcsema_real_eip !15
  store i1 %32, i1* %AF, !mcsema_real_eip !15
  %33 = lshr i64 %29, 63, !mcsema_real_eip !15
  %34 = trunc i64 %33 to i1, !mcsema_real_eip !15
  store i1 %34, i1* %SF, !mcsema_real_eip !15
  %_trans_icmp_eq_43 = icmp eq i64 %_trans_p2i_39, 0
  store i1 %_trans_icmp_eq_43, i1* %ZF, !mcsema_real_eip !15
  %_trans_xor_45 = xor i64 %_trans_p2i_40, 16
  %35 = xor i64 %_trans_xor_45, -1, !mcsema_real_eip !15
  %36 = and i64 %35, %_trans_xor_41, !mcsema_real_eip !15
  %37 = lshr i64 %36, 63, !mcsema_real_eip !15
  %38 = and i64 %37, 1, !mcsema_real_eip !15
  %39 = trunc i64 %38 to i1, !mcsema_real_eip !15
  store i1 %39, i1* %OF, !mcsema_real_eip !15
  %_trans_trunc_50 = trunc i64 %_trans_p2i_39 to i8
  %40 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_50), !mcsema_real_eip !15
  %41 = trunc i8 %40 to i1, !mcsema_real_eip !15
  %42 = xor i1 %41, true, !mcsema_real_eip !15
  store i1 %42, i1* %PF, !mcsema_real_eip !15
  %_trans_icmp_ne_52 = icmp ne i64 %_trans_p2i_39, %RSP_val.26
  store i1 %_trans_icmp_ne_52, i1* %CF, !mcsema_real_eip !15
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_
  store i64 %29, i64* %XSP, !mcsema_real_eip !15
  %_allin_new_bt_54 = bitcast i8* %_new_gep_38 to i64*
  %43 = load i64, i64* %_allin_new_bt_54, !mcsema_real_eip !16
  %_new_int2ptr_ = inttoptr i64 %43 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %43, i64* %XBP, !mcsema_real_eip !16
  %_new_gep_55 = getelementptr i8, i8* %_new_gep_38, i64 8
  %44 = add i64 %29, 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_55, i8** %_RSP_ptr_
  store i64 %44, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_57 = getelementptr i8, i8* %_new_gep_55, i64 8
  %45 = add i64 %44, 8, !mcsema_real_eip !17
  %_allin_new_bt_58 = bitcast i8* %_new_gep_55 to i64*
  %46 = load i64, i64* %_allin_new_bt_58, !mcsema_real_eip !17
  store i64 %46, i64* %XIP, !mcsema_real_eip !17
  store volatile i8* %_new_gep_57, i8** %_RSP_ptr_
  store i64 %45, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !18
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !18
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !18
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !18
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !18
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !18
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !18
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !18
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !18
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !18
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !18
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !18
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !18
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !18
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !18
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !18
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !18
  br label %block_0x0, !mcsema_real_eip !18

block_0x0:                                        ; preds = %entry
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !18
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !18
  %1 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !18
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !18
  store i64 %RBP_val.29, i64* %2, !mcsema_real_eip !18
  store i64 %1, i64* %XSP, !mcsema_real_eip !18
  store i64 %1, i64* %XBP, !mcsema_real_eip !19
  %3 = sub i64 %1, 16, !mcsema_real_eip !20
  %4 = xor i64 %3, %1, !mcsema_real_eip !20
  %5 = xor i64 %4, 16, !mcsema_real_eip !20
  %6 = and i64 %5, 16, !mcsema_real_eip !20
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !20
  store i1 %7, i1* %AF, !mcsema_real_eip !20
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !20
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !20
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !20
  %11 = xor i1 %10, true, !mcsema_real_eip !20
  store i1 %11, i1* %PF, !mcsema_real_eip !20
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !20
  store i1 %12, i1* %ZF, !mcsema_real_eip !20
  %13 = lshr i64 %3, 63, !mcsema_real_eip !20
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !20
  store i1 %14, i1* %SF, !mcsema_real_eip !20
  %15 = icmp ult i64 %1, 16, !mcsema_real_eip !20
  store i1 %15, i1* %CF, !mcsema_real_eip !20
  %16 = xor i64 %1, 16, !mcsema_real_eip !20
  %17 = and i64 %16, %4, !mcsema_real_eip !20
  %18 = lshr i64 %17, 63, !mcsema_real_eip !20
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !20
  store i1 %19, i1* %OF, !mcsema_real_eip !20
  store i64 %3, i64* %XSP, !mcsema_real_eip !20
  store i64 1, i64* %XAX, !mcsema_real_eip !21
  %20 = add i64 %1, -8, !mcsema_real_eip !22
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !22
  %EDI.34 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.35 = load i32, i32* %EDI.34, !mcsema_real_eip !22
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.35, i32* %22, !mcsema_real_eip !22
  %RBP_val.36 = load i64, i64* %XBP, !mcsema_real_eip !23
  %23 = add i64 %RBP_val.36, -8, !mcsema_real_eip !23
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !23
  %EAX.37 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.38 = load i32, i32* %EAX.37, !mcsema_real_eip !23
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !23
  %26 = load i32, i32* %25, !mcsema_real_eip !23
  %27 = sub i32 %EAX_val.38, %26, !mcsema_real_eip !23
  %28 = xor i32 %27, %EAX_val.38, !mcsema_real_eip !23
  %29 = xor i32 %28, %26, !mcsema_real_eip !23
  %30 = and i32 %29, 16, !mcsema_real_eip !23
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !23
  store i1 %31, i1* %AF, !mcsema_real_eip !23
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !23
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !23
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !23
  %35 = xor i1 %34, true, !mcsema_real_eip !23
  store i1 %35, i1* %PF, !mcsema_real_eip !23
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !23
  store i1 %36, i1* %ZF, !mcsema_real_eip !23
  %37 = lshr i32 %27, 31, !mcsema_real_eip !23
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !23
  store i1 %38, i1* %SF, !mcsema_real_eip !23
  %39 = icmp ult i32 %EAX_val.38, %26, !mcsema_real_eip !23
  store i1 %39, i1* %CF, !mcsema_real_eip !23
  %40 = xor i32 %EAX_val.38, %26, !mcsema_real_eip !23
  %41 = and i32 %40, %28, !mcsema_real_eip !23
  %42 = lshr i32 %41, 31, !mcsema_real_eip !23
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !23
  store i1 %43, i1* %OF, !mcsema_real_eip !23
  br i1 %36, label %block_0x24, label %block_0x19, !mcsema_real_eip !24

block_0x19:                                       ; preds = %block_0x0
  store i1 false, i1* %CF, !mcsema_real_eip !25
  store i1 false, i1* %OF, !mcsema_real_eip !25
  store i1 false, i1* %SF, !mcsema_real_eip !25
  store i1 true, i1* %ZF, !mcsema_real_eip !25
  store i1 true, i1* %PF, !mcsema_real_eip !25
  store i1 undef, i1* %AF, !mcsema_real_eip !25
  store i64 0, i64* %XAX, !mcsema_real_eip !25
  %EAX_val.46 = load i32, i32* %EAX.37, !mcsema_real_eip !26
  %44 = load i32, i32* %25, !mcsema_real_eip !26
  %45 = sub i32 %EAX_val.46, %44, !mcsema_real_eip !26
  %46 = xor i32 %45, %EAX_val.46, !mcsema_real_eip !26
  %47 = xor i32 %46, %44, !mcsema_real_eip !26
  %48 = and i32 %47, 16, !mcsema_real_eip !26
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !26
  store i1 %49, i1* %AF, !mcsema_real_eip !26
  %50 = trunc i32 %45 to i8, !mcsema_real_eip !26
  %51 = call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !26
  %52 = trunc i8 %51 to i1, !mcsema_real_eip !26
  %53 = xor i1 %52, true, !mcsema_real_eip !26
  store i1 %53, i1* %PF, !mcsema_real_eip !26
  %54 = icmp eq i32 %45, 0, !mcsema_real_eip !26
  store i1 %54, i1* %ZF, !mcsema_real_eip !26
  %55 = lshr i32 %45, 31, !mcsema_real_eip !26
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !26
  store i1 %56, i1* %SF, !mcsema_real_eip !26
  %57 = icmp ult i32 %EAX_val.46, %44, !mcsema_real_eip !26
  store i1 %57, i1* %CF, !mcsema_real_eip !26
  %58 = xor i32 %EAX_val.46, %44, !mcsema_real_eip !26
  %59 = and i32 %58, %46, !mcsema_real_eip !26
  %60 = lshr i32 %59, 31, !mcsema_real_eip !26
  %61 = trunc i32 %60 to i1, !mcsema_real_eip !26
  store i1 %61, i1* %OF, !mcsema_real_eip !26
  %62 = icmp eq i1 %54, false, !mcsema_real_eip !27
  br i1 %62, label %block_0x30, label %block_0x24, !mcsema_real_eip !27

block_0x24:                                       ; preds = %block_0x19, %block_0x0
  %63 = add i64 %RBP_val.36, -4, !mcsema_real_eip !28
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !28
  %65 = inttoptr i64 %63 to i32*, !mcsema_real_eip !28
  store i32 1, i32* %65, !mcsema_real_eip !28
  br label %block_0x53, !mcsema_real_eip !29

block_0x53:                                       ; preds = %block_0x30, %block_0x24
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !30
  %66 = add i64 %RBP_val.47, -4, !mcsema_real_eip !30
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !30
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !30
  %69 = load i32, i32* %68, !mcsema_real_eip !30
  %70 = zext i32 %69 to i64, !mcsema_real_eip !30
  store i64 %70, i64* %XAX, !mcsema_real_eip !30
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !31
  %71 = add i64 16, %RSP_val.48, !mcsema_real_eip !31
  %72 = xor i64 %71, %RSP_val.48, !mcsema_real_eip !31
  %73 = xor i64 %72, 16, !mcsema_real_eip !31
  %74 = and i64 %73, 16, !mcsema_real_eip !31
  %75 = icmp ne i64 %74, 0, !mcsema_real_eip !31
  store i1 %75, i1* %AF, !mcsema_real_eip !31
  %76 = lshr i64 %71, 63, !mcsema_real_eip !31
  %77 = trunc i64 %76 to i1, !mcsema_real_eip !31
  store i1 %77, i1* %SF, !mcsema_real_eip !31
  %78 = icmp eq i64 %71, 0, !mcsema_real_eip !31
  store i1 %78, i1* %ZF, !mcsema_real_eip !31
  %79 = xor i64 %RSP_val.48, 16, !mcsema_real_eip !31
  %80 = xor i64 %79, -1, !mcsema_real_eip !31
  %81 = and i64 %80, %72, !mcsema_real_eip !31
  %82 = lshr i64 %81, 63, !mcsema_real_eip !31
  %83 = and i64 %82, 1, !mcsema_real_eip !31
  %84 = trunc i64 %83 to i1, !mcsema_real_eip !31
  store i1 %84, i1* %OF, !mcsema_real_eip !31
  %85 = trunc i64 %71 to i8, !mcsema_real_eip !31
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !31
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !31
  %88 = xor i1 %87, true, !mcsema_real_eip !31
  store i1 %88, i1* %PF, !mcsema_real_eip !31
  %89 = icmp ult i64 %71, %RSP_val.48, !mcsema_real_eip !31
  store i1 %89, i1* %CF, !mcsema_real_eip !31
  store i64 %71, i64* %XSP, !mcsema_real_eip !31
  %90 = inttoptr i64 %71 to i64*, !mcsema_real_eip !32
  %91 = load i64, i64* %90, !mcsema_real_eip !32
  store i64 %91, i64* %XBP, !mcsema_real_eip !32
  %92 = add i64 %71, 8, !mcsema_real_eip !32
  store i64 %92, i64* %XSP, !mcsema_real_eip !32
  %93 = add i64 %92, 8, !mcsema_real_eip !33
  %94 = inttoptr i64 %92 to i64*, !mcsema_real_eip !33
  %95 = load i64, i64* %94, !mcsema_real_eip !33
  store i64 %95, i64* %XIP, !mcsema_real_eip !33
  store i64 %93, i64* %XSP, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33

block_0x30:                                       ; preds = %block_0x19
  %96 = load i32, i32* %25, !mcsema_real_eip !34
  %97 = zext i32 %96 to i64, !mcsema_real_eip !34
  store i64 %97, i64* %XAX, !mcsema_real_eip !34
  %EAX_val.53 = load i32, i32* %EAX.37, !mcsema_real_eip !35
  %98 = sub i32 %EAX_val.53, 1, !mcsema_real_eip !35
  %99 = xor i32 %98, %EAX_val.53, !mcsema_real_eip !35
  %100 = xor i32 %99, 1, !mcsema_real_eip !35
  %101 = and i32 %100, 16, !mcsema_real_eip !35
  %102 = icmp ne i32 %101, 0, !mcsema_real_eip !35
  store i1 %102, i1* %AF, !mcsema_real_eip !35
  %103 = trunc i32 %98 to i8, !mcsema_real_eip !35
  %104 = call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !35
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !35
  %106 = xor i1 %105, true, !mcsema_real_eip !35
  store i1 %106, i1* %PF, !mcsema_real_eip !35
  %107 = icmp eq i32 %98, 0, !mcsema_real_eip !35
  store i1 %107, i1* %ZF, !mcsema_real_eip !35
  %108 = lshr i32 %98, 31, !mcsema_real_eip !35
  %109 = trunc i32 %108 to i1, !mcsema_real_eip !35
  store i1 %109, i1* %SF, !mcsema_real_eip !35
  %110 = icmp ult i32 %EAX_val.53, 1, !mcsema_real_eip !35
  store i1 %110, i1* %CF, !mcsema_real_eip !35
  %111 = xor i32 %EAX_val.53, 1, !mcsema_real_eip !35
  %112 = and i32 %111, %99, !mcsema_real_eip !35
  %113 = lshr i32 %112, 31, !mcsema_real_eip !35
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !35
  store i1 %114, i1* %OF, !mcsema_real_eip !35
  %115 = zext i32 %98 to i64, !mcsema_real_eip !35
  store i64 %115, i64* %XAX, !mcsema_real_eip !35
  %EAX_val.55 = load i32, i32* %EAX.37, !mcsema_real_eip !36
  %116 = zext i32 %EAX_val.55 to i64, !mcsema_real_eip !36
  store i64 %116, i64* %XDI, !mcsema_real_eip !36
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !37
  %117 = sub i64 %RSP_val.56, 8, !mcsema_real_eip !37
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !37
  store i64 -4981261766360305936, i64* %118, !mcsema_real_eip !37
  store i64 %117, i64* %XSP, !mcsema_real_eip !37
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !37
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !38
  %119 = add i64 %RBP_val.57, -8, !mcsema_real_eip !38
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !38
  %121 = inttoptr i64 %119 to i32*, !mcsema_real_eip !38
  %122 = load i32, i32* %121, !mcsema_real_eip !38
  %123 = zext i32 %122 to i64, !mcsema_real_eip !38
  store i64 %123, i64* %XDI, !mcsema_real_eip !38
  %EDI_val.59 = load i32, i32* %EDI.34, !mcsema_real_eip !39
  %124 = sub i32 %EDI_val.59, 2, !mcsema_real_eip !39
  %125 = xor i32 %124, %EDI_val.59, !mcsema_real_eip !39
  %126 = xor i32 %125, 2, !mcsema_real_eip !39
  %127 = and i32 %126, 16, !mcsema_real_eip !39
  %128 = icmp ne i32 %127, 0, !mcsema_real_eip !39
  store i1 %128, i1* %AF, !mcsema_real_eip !39
  %129 = trunc i32 %124 to i8, !mcsema_real_eip !39
  %130 = call i8 @llvm.ctpop.i8(i8 %129), !mcsema_real_eip !39
  %131 = trunc i8 %130 to i1, !mcsema_real_eip !39
  %132 = xor i1 %131, true, !mcsema_real_eip !39
  store i1 %132, i1* %PF, !mcsema_real_eip !39
  %133 = icmp eq i32 %124, 0, !mcsema_real_eip !39
  store i1 %133, i1* %ZF, !mcsema_real_eip !39
  %134 = lshr i32 %124, 31, !mcsema_real_eip !39
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !39
  store i1 %135, i1* %SF, !mcsema_real_eip !39
  %136 = icmp ult i32 %EDI_val.59, 2, !mcsema_real_eip !39
  store i1 %136, i1* %CF, !mcsema_real_eip !39
  %137 = xor i32 %EDI_val.59, 2, !mcsema_real_eip !39
  %138 = and i32 %137, %125, !mcsema_real_eip !39
  %139 = lshr i32 %138, 31, !mcsema_real_eip !39
  %140 = trunc i32 %139 to i1, !mcsema_real_eip !39
  store i1 %140, i1* %OF, !mcsema_real_eip !39
  %141 = zext i32 %124 to i64, !mcsema_real_eip !39
  store i64 %141, i64* %XDI, !mcsema_real_eip !39
  %142 = add i64 %RBP_val.57, -12, !mcsema_real_eip !40
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !40
  %EAX_val.62 = load i32, i32* %EAX.37, !mcsema_real_eip !40
  %144 = inttoptr i64 %142 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.62, i32* %144, !mcsema_real_eip !40
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !41
  %145 = sub i64 %RSP_val.63, 8, !mcsema_real_eip !41
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !41
  store i64 -4981261766360305936, i64* %146, !mcsema_real_eip !41
  store i64 %145, i64* %XSP, !mcsema_real_eip !41
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !41
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !42
  %147 = add i64 %RBP_val.64, -12, !mcsema_real_eip !42
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !42
  %149 = inttoptr i64 %147 to i32*, !mcsema_real_eip !42
  %150 = load i32, i32* %149, !mcsema_real_eip !42
  %151 = zext i32 %150 to i64, !mcsema_real_eip !42
  store i64 %151, i64* %XDI, !mcsema_real_eip !42
  %EDI_val.66 = load i32, i32* %EDI.34, !mcsema_real_eip !43
  %EAX_val.68 = load i32, i32* %EAX.37, !mcsema_real_eip !43
  %152 = add i32 %EAX_val.68, %EDI_val.66, !mcsema_real_eip !43
  %153 = xor i32 %152, %EDI_val.66, !mcsema_real_eip !43
  %154 = xor i32 %153, %EAX_val.68, !mcsema_real_eip !43
  %155 = and i32 %154, 16, !mcsema_real_eip !43
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !43
  store i1 %156, i1* %AF, !mcsema_real_eip !43
  %157 = lshr i32 %152, 31, !mcsema_real_eip !43
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !43
  store i1 %158, i1* %SF, !mcsema_real_eip !43
  %159 = icmp eq i32 %152, 0, !mcsema_real_eip !43
  store i1 %159, i1* %ZF, !mcsema_real_eip !43
  %160 = xor i32 %EDI_val.66, %EAX_val.68, !mcsema_real_eip !43
  %161 = xor i32 %160, -1, !mcsema_real_eip !43
  %162 = and i32 %161, %153, !mcsema_real_eip !43
  %163 = lshr i32 %162, 31, !mcsema_real_eip !43
  %164 = and i32 %163, 1, !mcsema_real_eip !43
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !43
  store i1 %165, i1* %OF, !mcsema_real_eip !43
  %166 = trunc i32 %152 to i8, !mcsema_real_eip !43
  %167 = call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !43
  %168 = trunc i8 %167 to i1, !mcsema_real_eip !43
  %169 = xor i1 %168, true, !mcsema_real_eip !43
  store i1 %169, i1* %PF, !mcsema_real_eip !43
  %170 = icmp ult i32 %152, %EDI_val.66, !mcsema_real_eip !43
  store i1 %170, i1* %CF, !mcsema_real_eip !43
  %171 = zext i32 %152 to i64, !mcsema_real_eip !43
  store i64 %171, i64* %XDI, !mcsema_real_eip !43
  %172 = add i64 %RBP_val.64, -4, !mcsema_real_eip !44
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !44
  %EDI_val.71 = load i32, i32* %EDI.34, !mcsema_real_eip !44
  %174 = inttoptr i64 %172 to i32*, !mcsema_real_eip !44
  store i32 %EDI_val.71, i32* %174, !mcsema_real_eip !44
  br label %block_0x53
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
define x86_64_sysvcc void @sub_60.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 32
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.3, 16, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 5, i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %15, !mcsema_real_eip !6
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !7
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.5, 8, !mcsema_real_eip !7
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !7
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !7
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_59)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x99 to i64), i64* %XDI, !mcsema_real_eip !8
  %EAX.6 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.7 = load i32, i32* %EAX.6, !mcsema_real_eip !9
  %17 = zext i32 %EAX_val.7 to i64, !mcsema_real_eip !9
  store i64 %17, i64* %XSI, !mcsema_real_eip !9
  %AL.8 = bitcast i64* %XAX to i8*, !mcsema_real_eip !10
  store i8 0, i8* %AL.8, !mcsema_real_eip !10
  %RDX_val.11 = load i64, i64* %XDX, !mcsema_real_eip !11
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !11
  %R8_val.13 = load i64, i64* %R8, !mcsema_real_eip !11
  %R9_val.14 = load i64, i64* %R9, !mcsema_real_eip !11
  %_allin_new_bt_20 = bitcast i8* %_gep_fix_ to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_20 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_gep_fix_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_gep_fix_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_gep_fix_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %18, label %19

; <label>:18:                                     ; preds = %block_0x60
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %19

; <label>:19:                                     ; preds = %block_0x60, %18
  %20 = phi i64* [ %_allin_new_bt_20, %block_0x60 ], [ %_address_in_parent_stack_bt_, %18 ]
  %_new_load_ = load i64, i64* %20
  %_new_gep_21 = getelementptr i8, i8* %_gep_fix_, i64 8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %_ptr_to_int_63 = ptrtoint i64* %_allin_new_bt_22 to i64
  %_offset_above_rbp_66 = sub i64 %_ptr_to_int_63, %_local_end_to_int_
  %_pot_address_in_parent_stack_67 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_66
  %_cond1_68 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_69 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_70 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_71 = or i1 %_cond2_1_69, %_cond2_2_70
  %_cond4_72 = icmp ule i8* %_pot_address_in_parent_stack_67, %_parent_stack_end_ptr_
  %_cond1_n_cond2_73 = and i1 %_cond1_68, %_cond2_71
  %_cond1_n_cond2_cond3_74 = and i1 %_cond1_n_cond2_73, %_cond4_72
  br i1 %_cond1_n_cond2_cond3_74, label %21, label %22

; <label>:21:                                     ; preds = %19
  %_address_in_parent_stack_bt_76 = bitcast i8* %_pot_address_in_parent_stack_67 to i64*
  br label %22

; <label>:22:                                     ; preds = %19, %21
  %23 = phi i64* [ %_allin_new_bt_22, %19 ], [ %_address_in_parent_stack_bt_76, %21 ]
  %_new_load_77 = load i64, i64* %23
  %_new_gep_23 = getelementptr i8, i8* %_new_gep_21, i64 8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %_ptr_to_int_78 = ptrtoint i64* %_allin_new_bt_24 to i64
  %_offset_above_rbp_81 = sub i64 %_ptr_to_int_78, %_local_end_to_int_
  %_pot_address_in_parent_stack_82 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_81
  %_cond1_83 = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_84 = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_85 = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_86 = or i1 %_cond2_1_84, %_cond2_2_85
  %_cond4_87 = icmp ule i8* %_pot_address_in_parent_stack_82, %_parent_stack_end_ptr_
  %_cond1_n_cond2_88 = and i1 %_cond1_83, %_cond2_86
  %_cond1_n_cond2_cond3_89 = and i1 %_cond1_n_cond2_88, %_cond4_87
  br i1 %_cond1_n_cond2_cond3_89, label %24, label %25

; <label>:24:                                     ; preds = %22
  %_address_in_parent_stack_bt_91 = bitcast i8* %_pot_address_in_parent_stack_82 to i64*
  br label %25

; <label>:25:                                     ; preds = %22, %24
  %26 = phi i64* [ %_allin_new_bt_24, %22 ], [ %_address_in_parent_stack_bt_91, %24 ]
  %_new_load_92 = load i64, i64* %26
  %_new_gep_25 = getelementptr i8, i8* %_new_gep_23, i64 8
  %_allin_new_bt_26 = bitcast i8* %_new_gep_25 to i64*
  %_ptr_to_int_93 = ptrtoint i64* %_allin_new_bt_26 to i64
  %_offset_above_rbp_96 = sub i64 %_ptr_to_int_93, %_local_end_to_int_
  %_pot_address_in_parent_stack_97 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_96
  %_cond1_98 = icmp ugt i8* %_new_gep_25, %_local_stack_end_ptr_
  %_cond2_1_99 = icmp ugt i8* %_new_gep_25, %_parent_stack_end_ptr_
  %_cond2_2_100 = icmp ult i8* %_new_gep_25, %_parent_stack_start_ptr_
  %_cond2_101 = or i1 %_cond2_1_99, %_cond2_2_100
  %_cond4_102 = icmp ule i8* %_pot_address_in_parent_stack_97, %_parent_stack_end_ptr_
  %_cond1_n_cond2_103 = and i1 %_cond1_98, %_cond2_101
  %_cond1_n_cond2_cond3_104 = and i1 %_cond1_n_cond2_103, %_cond4_102
  br i1 %_cond1_n_cond2_cond3_104, label %27, label %28

; <label>:27:                                     ; preds = %25
  %_address_in_parent_stack_bt_106 = bitcast i8* %_pot_address_in_parent_stack_97 to i64*
  br label %28

; <label>:28:                                     ; preds = %25, %27
  %29 = phi i64* [ %_allin_new_bt_26, %25 ], [ %_address_in_parent_stack_bt_106, %27 ]
  %_new_load_107 = load i64, i64* %29
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %_ptr_to_int_108 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_111 = sub i64 %_ptr_to_int_108, %_local_end_to_int_
  %_pot_address_in_parent_stack_112 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_111
  %_cond1_113 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_114 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_115 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_116 = or i1 %_cond2_1_114, %_cond2_2_115
  %_cond4_117 = icmp ule i8* %_pot_address_in_parent_stack_112, %_parent_stack_end_ptr_
  %_cond1_n_cond2_118 = and i1 %_cond1_113, %_cond2_116
  %_cond1_n_cond2_cond3_119 = and i1 %_cond1_n_cond2_118, %_cond4_117
  br i1 %_cond1_n_cond2_cond3_119, label %30, label %31

; <label>:30:                                     ; preds = %28
  %_address_in_parent_stack_bt_121 = bitcast i8* %_pot_address_in_parent_stack_112 to i64*
  br label %31

; <label>:31:                                     ; preds = %28, %30
  %32 = phi i64* [ %_allin_new_bt_28, %28 ], [ %_address_in_parent_stack_bt_121, %30 ]
  %_new_load_122 = load i64, i64* %32
  %_new_gep_29 = getelementptr i8, i8* %_new_gep_27, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_123 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_126 = sub i64 %_ptr_to_int_123, %_local_end_to_int_
  %_pot_address_in_parent_stack_127 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_126
  %_cond1_128 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_129 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_130 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_131 = or i1 %_cond2_1_129, %_cond2_2_130
  %_cond4_132 = icmp ule i8* %_pot_address_in_parent_stack_127, %_parent_stack_end_ptr_
  %_cond1_n_cond2_133 = and i1 %_cond1_128, %_cond2_131
  %_cond1_n_cond2_cond3_134 = and i1 %_cond1_n_cond2_133, %_cond4_132
  br i1 %_cond1_n_cond2_cond3_134, label %33, label %34

; <label>:33:                                     ; preds = %31
  %_address_in_parent_stack_bt_136 = bitcast i8* %_pot_address_in_parent_stack_127 to i64*
  br label %34

; <label>:34:                                     ; preds = %31, %33
  %35 = phi i64* [ %_allin_new_bt_30, %31 ], [ %_address_in_parent_stack_bt_136, %33 ]
  %_new_load_137 = load i64, i64* %35
  %RSP_val.16 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_32 = getelementptr i8, i8* %_gep_fix_, i64 -8
  %36 = sub i64 %RSP_val.16, 8, !mcsema_real_eip !11
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_33, !mcsema_real_eip !11
  store volatile i8* %_new_gep_32, i8** %_RSP_ptr_
  store i64 %36, i64* %XSP, !mcsema_real_eip !11
  %37 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%0* @data_0x99 to i64), i64 %17, i64 %RDX_val.11, i64 %RCX_val.12, i64 %R8_val.13, i64 %R9_val.14, i64 %_new_load_, i64 %_new_load_77, i64 %_new_load_92, i64 %_new_load_107, i64 %_new_load_122, i64 %_new_load_137)
  %_rsp_fix_61 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_62 = getelementptr i8, i8* %_rsp_fix_61, i64 8
  store i8* %_gep_fix_62, i8** %_RSP_ptr_
  store i64 %37, i64* %XAX, !mcsema_real_eip !11
  %ESI.17 = bitcast i64* %XSI to i32*, !mcsema_real_eip !12
  %ESI_val.18 = load i32, i32* %ESI.17, !mcsema_real_eip !12
  store i1 false, i1* %CF, !mcsema_real_eip !12
  store i1 false, i1* %OF, !mcsema_real_eip !12
  store i1 false, i1* %SF, !mcsema_real_eip !12
  store i1 true, i1* %ZF, !mcsema_real_eip !12
  store i1 true, i1* %PF, !mcsema_real_eip !12
  store i1 undef, i1* %AF, !mcsema_real_eip !12
  store i64 0, i64* %XSI, !mcsema_real_eip !12
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX_val.23 = load i32, i32* %EAX.6, !mcsema_real_eip !13
  %38 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !13
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.23, i32* %39, !mcsema_real_eip !13
  %ESI_val.25 = load i32, i32* %ESI.17, !mcsema_real_eip !14
  %40 = zext i32 %ESI_val.25 to i64, !mcsema_real_eip !14
  store i64 %40, i64* %XAX, !mcsema_real_eip !14
  %_load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_
  %RSP_val.26 = load i64, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_38 = getelementptr i8, i8* %_load_rsp_ptr_37, i64 16
  %41 = add i64 16, %RSP_val.26, !mcsema_real_eip !15
  %_trans_p2i_39 = ptrtoint i8* %_new_gep_38 to i64
  %_trans_p2i_40 = ptrtoint i8* %_load_rsp_ptr_37 to i64
  %_trans_xor_41 = xor i64 %_trans_p2i_39, %_trans_p2i_40
  %42 = xor i64 %_trans_xor_41, 16, !mcsema_real_eip !15
  %43 = and i64 %42, 16, !mcsema_real_eip !15
  %44 = icmp ne i64 %43, 0, !mcsema_real_eip !15
  store i1 %44, i1* %AF, !mcsema_real_eip !15
  %45 = lshr i64 %41, 63, !mcsema_real_eip !15
  %46 = trunc i64 %45 to i1, !mcsema_real_eip !15
  store i1 %46, i1* %SF, !mcsema_real_eip !15
  %_trans_icmp_eq_43 = icmp eq i64 %_trans_p2i_39, 0
  store i1 %_trans_icmp_eq_43, i1* %ZF, !mcsema_real_eip !15
  %_trans_xor_45 = xor i64 %_trans_p2i_40, 16
  %47 = xor i64 %_trans_xor_45, -1, !mcsema_real_eip !15
  %48 = and i64 %47, %_trans_xor_41, !mcsema_real_eip !15
  %49 = lshr i64 %48, 63, !mcsema_real_eip !15
  %50 = and i64 %49, 1, !mcsema_real_eip !15
  %51 = trunc i64 %50 to i1, !mcsema_real_eip !15
  store i1 %51, i1* %OF, !mcsema_real_eip !15
  %_trans_trunc_50 = trunc i64 %_trans_p2i_39 to i8
  %52 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_50), !mcsema_real_eip !15
  %53 = trunc i8 %52 to i1, !mcsema_real_eip !15
  %54 = xor i1 %53, true, !mcsema_real_eip !15
  store i1 %54, i1* %PF, !mcsema_real_eip !15
  %_trans_icmp_ne_52 = icmp ne i64 %_trans_p2i_39, %RSP_val.26
  store i1 %_trans_icmp_ne_52, i1* %CF, !mcsema_real_eip !15
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_
  store i64 %41, i64* %XSP, !mcsema_real_eip !15
  %_allin_new_bt_54 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_138 = ptrtoint i64* %_allin_new_bt_54 to i64
  %_offset_above_rbp_141 = sub i64 %_ptr_to_int_138, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  br i1 %_cond1_n_cond2_cond3_149, label %55, label %56

; <label>:55:                                     ; preds = %34
  %_address_in_parent_stack_bt_151 = bitcast i8* %_pot_address_in_parent_stack_142 to i64*
  br label %56

; <label>:56:                                     ; preds = %34, %55
  %57 = phi i64* [ %_allin_new_bt_54, %34 ], [ %_address_in_parent_stack_bt_151, %55 ]
  %_new_load_152 = load i64, i64* %57
  %_new_int2ptr_ = inttoptr i64 %_new_load_152 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_152, i64* %XBP, !mcsema_real_eip !16
  %_new_gep_55 = getelementptr i8, i8* %_new_gep_38, i64 8
  %58 = add i64 %41, 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_55, i8** %_RSP_ptr_
  store i64 %58, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_57 = getelementptr i8, i8* %_new_gep_55, i64 8
  %59 = add i64 %58, 8, !mcsema_real_eip !17
  %_allin_new_bt_58 = bitcast i8* %_new_gep_55 to i64*
  %_ptr_to_int_153 = ptrtoint i64* %_allin_new_bt_58 to i64
  %_offset_above_rbp_156 = sub i64 %_ptr_to_int_153, %_local_end_to_int_
  %_pot_address_in_parent_stack_157 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_156
  %_cond1_158 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_159 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_160 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_161 = or i1 %_cond2_1_159, %_cond2_2_160
  %_cond4_162 = icmp ule i8* %_pot_address_in_parent_stack_157, %_parent_stack_end_ptr_
  %_cond1_n_cond2_163 = and i1 %_cond1_158, %_cond2_161
  %_cond1_n_cond2_cond3_164 = and i1 %_cond1_n_cond2_163, %_cond4_162
  br i1 %_cond1_n_cond2_cond3_164, label %60, label %61

; <label>:60:                                     ; preds = %56
  %_address_in_parent_stack_bt_166 = bitcast i8* %_pot_address_in_parent_stack_157 to i64*
  br label %61

; <label>:61:                                     ; preds = %56, %60
  %62 = phi i64* [ %_allin_new_bt_58, %56 ], [ %_address_in_parent_stack_bt_166, %60 ]
  %_new_load_167 = load i64, i64* %62
  store i64 %_new_load_167, i64* %XIP, !mcsema_real_eip !17
  store volatile i8* %_new_gep_57, i8** %_RSP_ptr_
  store i64 %59, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
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
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !18
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !18
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !18
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !18
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !18
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !18
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !18
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !18
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !18
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !18
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !18
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !18
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !18
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !18
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !18
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !18
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !18
  br label %block_0x0, !mcsema_real_eip !18

block_0x0:                                        ; preds = %entry
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !18
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !18
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !18
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !19
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !20
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -16
  %2 = sub i64 %RSP_val.32, 16, !mcsema_real_eip !20
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 16, !mcsema_real_eip !20
  %4 = and i64 %3, 16, !mcsema_real_eip !20
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !20
  store i1 %5, i1* %AF, !mcsema_real_eip !20
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !20
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !20
  %8 = xor i1 %7, true, !mcsema_real_eip !20
  store i1 %8, i1* %PF, !mcsema_real_eip !20
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !20
  %9 = lshr i64 %2, 63, !mcsema_real_eip !20
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !20
  store i1 %10, i1* %SF, !mcsema_real_eip !20
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 16
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !20
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 16
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !20
  %12 = lshr i64 %11, 63, !mcsema_real_eip !20
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !20
  store i1 %13, i1* %OF, !mcsema_real_eip !20
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !20
  store i64 1, i64* %XAX, !mcsema_real_eip !21
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %EDI.34 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.35 = load i32, i32* %EDI.34, !mcsema_real_eip !22
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !22
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.35, i32* %15, !mcsema_real_eip !22
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %EAX.37 = bitcast i64* %XAX to i32*, !mcsema_real_eip !23
  %EAX_val.38 = load i32, i32* %EAX.37, !mcsema_real_eip !23
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !23
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !23
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %17 to i8*
  %_offset_above_rbp_ = sub i64 %16, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %18, label %19

; <label>:18:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %19

; <label>:19:                                     ; preds = %block_0x0, %18
  %20 = phi i32* [ %17, %block_0x0 ], [ %_address_in_parent_stack_bt_, %18 ]
  %_new_load_ = load i32, i32* %20
  %21 = sub i32 %EAX_val.38, %_new_load_, !mcsema_real_eip !23
  %22 = xor i32 %21, %EAX_val.38, !mcsema_real_eip !23
  %23 = xor i32 %22, %_new_load_, !mcsema_real_eip !23
  %24 = and i32 %23, 16, !mcsema_real_eip !23
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !23
  store i1 %25, i1* %AF, !mcsema_real_eip !23
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !23
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !23
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !23
  %29 = xor i1 %28, true, !mcsema_real_eip !23
  store i1 %29, i1* %PF, !mcsema_real_eip !23
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !23
  store i1 %30, i1* %ZF, !mcsema_real_eip !23
  %31 = lshr i32 %21, 31, !mcsema_real_eip !23
  %32 = trunc i32 %31 to i1, !mcsema_real_eip !23
  store i1 %32, i1* %SF, !mcsema_real_eip !23
  %33 = icmp ult i32 %EAX_val.38, %_new_load_, !mcsema_real_eip !23
  store i1 %33, i1* %CF, !mcsema_real_eip !23
  %34 = xor i32 %EAX_val.38, %_new_load_, !mcsema_real_eip !23
  %35 = and i32 %34, %22, !mcsema_real_eip !23
  %36 = lshr i32 %35, 31, !mcsema_real_eip !23
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !23
  store i1 %37, i1* %OF, !mcsema_real_eip !23
  br i1 %30, label %block_0x24, label %block_0x19, !mcsema_real_eip !24

block_0x19:                                       ; preds = %19
  store i1 false, i1* %CF, !mcsema_real_eip !25
  store i1 false, i1* %OF, !mcsema_real_eip !25
  store i1 false, i1* %SF, !mcsema_real_eip !25
  store i1 true, i1* %ZF, !mcsema_real_eip !25
  store i1 true, i1* %PF, !mcsema_real_eip !25
  store i1 undef, i1* %AF, !mcsema_real_eip !25
  store i64 0, i64* %XAX, !mcsema_real_eip !25
  %EAX_val.46 = load i32, i32* %EAX.37, !mcsema_real_eip !26
  br i1 %_cond1_n_cond2_cond3_, label %38, label %39

; <label>:38:                                     ; preds = %block_0x19
  %_address_in_parent_stack_bt_90 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %39

; <label>:39:                                     ; preds = %block_0x19, %38
  %40 = phi i32* [ %17, %block_0x19 ], [ %_address_in_parent_stack_bt_90, %38 ]
  %_new_load_91 = load i32, i32* %40
  %41 = sub i32 %EAX_val.46, %_new_load_91, !mcsema_real_eip !26
  %42 = xor i32 %41, %EAX_val.46, !mcsema_real_eip !26
  %43 = xor i32 %42, %_new_load_91, !mcsema_real_eip !26
  %44 = and i32 %43, 16, !mcsema_real_eip !26
  %45 = icmp ne i32 %44, 0, !mcsema_real_eip !26
  store i1 %45, i1* %AF, !mcsema_real_eip !26
  %46 = trunc i32 %41 to i8, !mcsema_real_eip !26
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !26
  %48 = trunc i8 %47 to i1, !mcsema_real_eip !26
  %49 = xor i1 %48, true, !mcsema_real_eip !26
  store i1 %49, i1* %PF, !mcsema_real_eip !26
  %50 = icmp eq i32 %41, 0, !mcsema_real_eip !26
  store i1 %50, i1* %ZF, !mcsema_real_eip !26
  %51 = lshr i32 %41, 31, !mcsema_real_eip !26
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !26
  store i1 %52, i1* %SF, !mcsema_real_eip !26
  %53 = icmp ult i32 %EAX_val.46, %_new_load_91, !mcsema_real_eip !26
  store i1 %53, i1* %CF, !mcsema_real_eip !26
  %54 = xor i32 %EAX_val.46, %_new_load_91, !mcsema_real_eip !26
  %55 = and i32 %54, %42, !mcsema_real_eip !26
  %56 = lshr i32 %55, 31, !mcsema_real_eip !26
  %57 = trunc i32 %56 to i1, !mcsema_real_eip !26
  store i1 %57, i1* %OF, !mcsema_real_eip !26
  %58 = icmp eq i1 %50, false, !mcsema_real_eip !27
  br i1 %58, label %block_0x30, label %block_0x24, !mcsema_real_eip !27

block_0x24:                                       ; preds = %39, %19
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -4
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %59 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !28
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !28
  store i32 1, i32* %60, !mcsema_real_eip !28
  br label %block_0x53, !mcsema_real_eip !29

block_0x53:                                       ; preds = %143, %block_0x24
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -4
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %61 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !30
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !30
  %_ptr_bt_94 = bitcast i32* %62 to i8*
  %_offset_above_rbp_95 = sub i64 %61, %_local_end_to_int_
  %_pot_address_in_parent_stack_96 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_95
  %_cond1_97 = icmp ugt i8* %_ptr_bt_94, %_local_stack_end_ptr_
  %_cond2_1_98 = icmp ugt i8* %_ptr_bt_94, %_parent_stack_end_ptr_
  %_cond2_2_99 = icmp ult i8* %_ptr_bt_94, %_parent_stack_start_ptr_
  %_cond2_100 = or i1 %_cond2_1_98, %_cond2_2_99
  %_cond4_101 = icmp ule i8* %_pot_address_in_parent_stack_96, %_parent_stack_end_ptr_
  %_cond1_n_cond2_102 = and i1 %_cond1_97, %_cond2_100
  %_cond1_n_cond2_cond3_103 = and i1 %_cond1_n_cond2_102, %_cond4_101
  br i1 %_cond1_n_cond2_cond3_103, label %63, label %64

; <label>:63:                                     ; preds = %block_0x53
  %_address_in_parent_stack_bt_105 = bitcast i8* %_pot_address_in_parent_stack_96 to i32*
  br label %64

; <label>:64:                                     ; preds = %block_0x53, %63
  %65 = phi i32* [ %62, %block_0x53 ], [ %_address_in_parent_stack_bt_105, %63 ]
  %_new_load_106 = load i32, i32* %65
  %66 = zext i32 %_new_load_106 to i64, !mcsema_real_eip !30
  store i64 %66, i64* %XAX, !mcsema_real_eip !30
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !31
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 16
  %67 = add i64 16, %RSP_val.48, !mcsema_real_eip !31
  %_trans_p2i_30 = ptrtoint i8* %_new_gep_29 to i64
  %_trans_p2i_31 = ptrtoint i8* %_load_rsp_ptr_28 to i64
  %_trans_xor_32 = xor i64 %_trans_p2i_30, %_trans_p2i_31
  %68 = xor i64 %_trans_xor_32, 16, !mcsema_real_eip !31
  %69 = and i64 %68, 16, !mcsema_real_eip !31
  %70 = icmp ne i64 %69, 0, !mcsema_real_eip !31
  store i1 %70, i1* %AF, !mcsema_real_eip !31
  %71 = lshr i64 %67, 63, !mcsema_real_eip !31
  %72 = trunc i64 %71 to i1, !mcsema_real_eip !31
  store i1 %72, i1* %SF, !mcsema_real_eip !31
  %_trans_icmp_eq_34 = icmp eq i64 %_trans_p2i_30, 0
  store i1 %_trans_icmp_eq_34, i1* %ZF, !mcsema_real_eip !31
  %_trans_xor_36 = xor i64 %_trans_p2i_31, 16
  %73 = xor i64 %_trans_xor_36, -1, !mcsema_real_eip !31
  %74 = and i64 %73, %_trans_xor_32, !mcsema_real_eip !31
  %75 = lshr i64 %74, 63, !mcsema_real_eip !31
  %76 = and i64 %75, 1, !mcsema_real_eip !31
  %77 = trunc i64 %76 to i1, !mcsema_real_eip !31
  store i1 %77, i1* %OF, !mcsema_real_eip !31
  %_trans_trunc_41 = trunc i64 %_trans_p2i_30 to i8
  %78 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_41), !mcsema_real_eip !31
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !31
  %80 = xor i1 %79, true, !mcsema_real_eip !31
  store i1 %80, i1* %PF, !mcsema_real_eip !31
  %_trans_icmp_ne_43 = icmp ne i64 %_trans_p2i_30, %RSP_val.48
  store i1 %_trans_icmp_ne_43, i1* %CF, !mcsema_real_eip !31
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %67, i64* %XSP, !mcsema_real_eip !31
  %_allin_new_bt_45 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_107 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_110 = sub i64 %_ptr_to_int_107, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  br i1 %_cond1_n_cond2_cond3_118, label %81, label %82

; <label>:81:                                     ; preds = %64
  %_address_in_parent_stack_bt_120 = bitcast i8* %_pot_address_in_parent_stack_111 to i64*
  br label %82

; <label>:82:                                     ; preds = %64, %81
  %83 = phi i64* [ %_allin_new_bt_45, %64 ], [ %_address_in_parent_stack_bt_120, %81 ]
  %_new_load_121 = load i64, i64* %83
  %_new_int2ptr_ = inttoptr i64 %_new_load_121 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_121, i64* %XBP, !mcsema_real_eip !32
  %_new_gep_46 = getelementptr i8, i8* %_new_gep_29, i64 8
  %84 = add i64 %67, 8, !mcsema_real_eip !32
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_
  store i64 %84, i64* %XSP, !mcsema_real_eip !32
  %_new_gep_48 = getelementptr i8, i8* %_new_gep_46, i64 8
  %85 = add i64 %84, 8, !mcsema_real_eip !33
  %_allin_new_bt_49 = bitcast i8* %_new_gep_46 to i64*
  %_ptr_to_int_122 = ptrtoint i64* %_allin_new_bt_49 to i64
  %_offset_above_rbp_125 = sub i64 %_ptr_to_int_122, %_local_end_to_int_
  %_pot_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_125
  %_cond1_127 = icmp ugt i8* %_new_gep_46, %_local_stack_end_ptr_
  %_cond2_1_128 = icmp ugt i8* %_new_gep_46, %_parent_stack_end_ptr_
  %_cond2_2_129 = icmp ult i8* %_new_gep_46, %_parent_stack_start_ptr_
  %_cond2_130 = or i1 %_cond2_1_128, %_cond2_2_129
  %_cond4_131 = icmp ule i8* %_pot_address_in_parent_stack_126, %_parent_stack_end_ptr_
  %_cond1_n_cond2_132 = and i1 %_cond1_127, %_cond2_130
  %_cond1_n_cond2_cond3_133 = and i1 %_cond1_n_cond2_132, %_cond4_131
  br i1 %_cond1_n_cond2_cond3_133, label %86, label %87

; <label>:86:                                     ; preds = %82
  %_address_in_parent_stack_bt_135 = bitcast i8* %_pot_address_in_parent_stack_126 to i64*
  br label %87

; <label>:87:                                     ; preds = %82, %86
  %88 = phi i64* [ %_allin_new_bt_49, %82 ], [ %_address_in_parent_stack_bt_135, %86 ]
  %_new_load_136 = load i64, i64* %88
  store i64 %_new_load_136, i64* %XIP, !mcsema_real_eip !33
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_
  store i64 %85, i64* %XSP, !mcsema_real_eip !33
  ret void, !mcsema_real_eip !33

block_0x30:                                       ; preds = %39
  br i1 %_cond1_n_cond2_cond3_, label %89, label %90

; <label>:89:                                     ; preds = %block_0x30
  %_address_in_parent_stack_bt_150 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %90

; <label>:90:                                     ; preds = %block_0x30, %89
  %91 = phi i32* [ %17, %block_0x30 ], [ %_address_in_parent_stack_bt_150, %89 ]
  %_new_load_151 = load i32, i32* %91
  %92 = zext i32 %_new_load_151 to i64, !mcsema_real_eip !34
  store i64 %92, i64* %XAX, !mcsema_real_eip !34
  %EAX_val.53 = load i32, i32* %EAX.37, !mcsema_real_eip !35
  %93 = sub i32 %EAX_val.53, 1, !mcsema_real_eip !35
  %94 = xor i32 %93, %EAX_val.53, !mcsema_real_eip !35
  %95 = xor i32 %94, 1, !mcsema_real_eip !35
  %96 = and i32 %95, 16, !mcsema_real_eip !35
  %97 = icmp ne i32 %96, 0, !mcsema_real_eip !35
  store i1 %97, i1* %AF, !mcsema_real_eip !35
  %98 = trunc i32 %93 to i8, !mcsema_real_eip !35
  %99 = call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !35
  %100 = trunc i8 %99 to i1, !mcsema_real_eip !35
  %101 = xor i1 %100, true, !mcsema_real_eip !35
  store i1 %101, i1* %PF, !mcsema_real_eip !35
  %102 = icmp eq i32 %93, 0, !mcsema_real_eip !35
  store i1 %102, i1* %ZF, !mcsema_real_eip !35
  %103 = lshr i32 %93, 31, !mcsema_real_eip !35
  %104 = trunc i32 %103 to i1, !mcsema_real_eip !35
  store i1 %104, i1* %SF, !mcsema_real_eip !35
  %105 = icmp ult i32 %EAX_val.53, 1, !mcsema_real_eip !35
  store i1 %105, i1* %CF, !mcsema_real_eip !35
  %106 = xor i32 %EAX_val.53, 1, !mcsema_real_eip !35
  %107 = and i32 %106, %94, !mcsema_real_eip !35
  %108 = lshr i32 %107, 31, !mcsema_real_eip !35
  %109 = trunc i32 %108 to i1, !mcsema_real_eip !35
  store i1 %109, i1* %OF, !mcsema_real_eip !35
  %110 = zext i32 %93 to i64, !mcsema_real_eip !35
  store i64 %110, i64* %XAX, !mcsema_real_eip !35
  %EAX_val.55 = load i32, i32* %EAX.37, !mcsema_real_eip !36
  %111 = zext i32 %EAX_val.55 to i64, !mcsema_real_eip !36
  store i64 %111, i64* %XDI, !mcsema_real_eip !36
  %_load_rsp_ptr_53 = load i8*, i8** %_RSP_ptr_
  %RSP_val.56 = load i64, i64* %XSP, !mcsema_real_eip !37
  %_new_gep_54 = getelementptr i8, i8* %_load_rsp_ptr_53, i64 -8
  %112 = sub i64 %RSP_val.56, 8, !mcsema_real_eip !37
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_55, !mcsema_real_eip !37
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_
  store i64 %112, i64* %XSP, !mcsema_real_eip !37
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_54, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_71)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -8
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %113 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !38
  %114 = inttoptr i64 %113 to i32*, !mcsema_real_eip !38
  %_ptr_bt_154 = bitcast i32* %114 to i8*
  %_offset_above_rbp_155 = sub i64 %113, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %_ptr_bt_154, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_ptr_bt_154, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_ptr_bt_154, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  br i1 %_cond1_n_cond2_cond3_163, label %115, label %116

; <label>:115:                                    ; preds = %90
  %_address_in_parent_stack_bt_165 = bitcast i8* %_pot_address_in_parent_stack_156 to i32*
  br label %116

; <label>:116:                                    ; preds = %90, %115
  %117 = phi i32* [ %114, %90 ], [ %_address_in_parent_stack_bt_165, %115 ]
  %_new_load_166 = load i32, i32* %117
  %118 = zext i32 %_new_load_166 to i64, !mcsema_real_eip !38
  store i64 %118, i64* %XDI, !mcsema_real_eip !38
  %EDI_val.59 = load i32, i32* %EDI.34, !mcsema_real_eip !39
  %119 = sub i32 %EDI_val.59, 2, !mcsema_real_eip !39
  %120 = xor i32 %119, %EDI_val.59, !mcsema_real_eip !39
  %121 = xor i32 %120, 2, !mcsema_real_eip !39
  %122 = and i32 %121, 16, !mcsema_real_eip !39
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !39
  store i1 %123, i1* %AF, !mcsema_real_eip !39
  %124 = trunc i32 %119 to i8, !mcsema_real_eip !39
  %125 = call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !39
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !39
  %127 = xor i1 %126, true, !mcsema_real_eip !39
  store i1 %127, i1* %PF, !mcsema_real_eip !39
  %128 = icmp eq i32 %119, 0, !mcsema_real_eip !39
  store i1 %128, i1* %ZF, !mcsema_real_eip !39
  %129 = lshr i32 %119, 31, !mcsema_real_eip !39
  %130 = trunc i32 %129 to i1, !mcsema_real_eip !39
  store i1 %130, i1* %SF, !mcsema_real_eip !39
  %131 = icmp ult i32 %EDI_val.59, 2, !mcsema_real_eip !39
  store i1 %131, i1* %CF, !mcsema_real_eip !39
  %132 = xor i32 %EDI_val.59, 2, !mcsema_real_eip !39
  %133 = and i32 %132, %120, !mcsema_real_eip !39
  %134 = lshr i32 %133, 31, !mcsema_real_eip !39
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !39
  store i1 %135, i1* %OF, !mcsema_real_eip !39
  %136 = zext i32 %119 to i64, !mcsema_real_eip !39
  store i64 %136, i64* %XDI, !mcsema_real_eip !39
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -12
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %EAX_val.62 = load i32, i32* %EAX.37, !mcsema_real_eip !40
  %137 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !40
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !40
  store i32 %EAX_val.62, i32* %138, !mcsema_real_eip !40
  %_load_rsp_ptr_62 = load i8*, i8** %_RSP_ptr_
  %RSP_val.63 = load i64, i64* %XSP, !mcsema_real_eip !41
  %_new_gep_63 = getelementptr i8, i8* %_load_rsp_ptr_62, i64 -8
  %139 = sub i64 %RSP_val.63, 8, !mcsema_real_eip !41
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_64, !mcsema_real_eip !41
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_
  store i64 %139, i64* %XSP, !mcsema_real_eip !41
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_63, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_73)
  %_rsp_fix_75 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_76 = getelementptr i8, i8* %_rsp_fix_75, i64 8
  store i8* %_gep_fix_76, i8** %_RSP_ptr_
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -12
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %140 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !42
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !42
  %_ptr_bt_169 = bitcast i32* %141 to i8*
  %_offset_above_rbp_170 = sub i64 %140, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_ptr_bt_169, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_ptr_bt_169, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_ptr_bt_169, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  br i1 %_cond1_n_cond2_cond3_178, label %142, label %143

; <label>:142:                                    ; preds = %116
  %_address_in_parent_stack_bt_180 = bitcast i8* %_pot_address_in_parent_stack_171 to i32*
  br label %143

; <label>:143:                                    ; preds = %116, %142
  %144 = phi i32* [ %141, %116 ], [ %_address_in_parent_stack_bt_180, %142 ]
  %_new_load_181 = load i32, i32* %144
  %145 = zext i32 %_new_load_181 to i64, !mcsema_real_eip !42
  store i64 %145, i64* %XDI, !mcsema_real_eip !42
  %EDI_val.66 = load i32, i32* %EDI.34, !mcsema_real_eip !43
  %EAX_val.68 = load i32, i32* %EAX.37, !mcsema_real_eip !43
  %146 = add i32 %EAX_val.68, %EDI_val.66, !mcsema_real_eip !43
  %147 = xor i32 %146, %EDI_val.66, !mcsema_real_eip !43
  %148 = xor i32 %147, %EAX_val.68, !mcsema_real_eip !43
  %149 = and i32 %148, 16, !mcsema_real_eip !43
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !43
  store i1 %150, i1* %AF, !mcsema_real_eip !43
  %151 = lshr i32 %146, 31, !mcsema_real_eip !43
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !43
  store i1 %152, i1* %SF, !mcsema_real_eip !43
  %153 = icmp eq i32 %146, 0, !mcsema_real_eip !43
  store i1 %153, i1* %ZF, !mcsema_real_eip !43
  %154 = xor i32 %EDI_val.66, %EAX_val.68, !mcsema_real_eip !43
  %155 = xor i32 %154, -1, !mcsema_real_eip !43
  %156 = and i32 %155, %147, !mcsema_real_eip !43
  %157 = lshr i32 %156, 31, !mcsema_real_eip !43
  %158 = and i32 %157, 1, !mcsema_real_eip !43
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !43
  store i1 %159, i1* %OF, !mcsema_real_eip !43
  %160 = trunc i32 %146 to i8, !mcsema_real_eip !43
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !43
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !43
  %163 = xor i1 %162, true, !mcsema_real_eip !43
  store i1 %163, i1* %PF, !mcsema_real_eip !43
  %164 = icmp ult i32 %146, %EDI_val.66, !mcsema_real_eip !43
  store i1 %164, i1* %CF, !mcsema_real_eip !43
  %165 = zext i32 %146 to i64, !mcsema_real_eip !43
  store i64 %165, i64* %XDI, !mcsema_real_eip !43
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -4
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %EDI_val.71 = load i32, i32* %EDI.34, !mcsema_real_eip !44
  %166 = ptrtoint i64* %_allin_new_bt_70 to i64, !mcsema_real_eip !44
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !44
  store i32 %EDI_val.71, i32* %167, !mcsema_real_eip !44
  br label %block_0x53
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
!6 = !{i64 109}
!7 = !{i64 116}
!8 = !{i64 121}
!9 = !{i64 131}
!10 = !{i64 133}
!11 = !{i64 135}
!12 = !{i64 140}
!13 = !{i64 142}
!14 = !{i64 145}
!15 = !{i64 147}
!16 = !{i64 151}
!17 = !{i64 152}
!18 = !{i64 0}
!19 = !{i64 1}
!20 = !{i64 4}
!21 = !{i64 8}
!22 = !{i64 13}
!23 = !{i64 16}
!24 = !{i64 19}
!25 = !{i64 25}
!26 = !{i64 27}
!27 = !{i64 30}
!28 = !{i64 36}
!29 = !{i64 43}
!30 = !{i64 83}
!31 = !{i64 86}
!32 = !{i64 90}
!33 = !{i64 91}
!34 = !{i64 48}
!35 = !{i64 51}
!36 = !{i64 54}
!37 = !{i64 56}
!38 = !{i64 61}
!39 = !{i64 64}
!40 = !{i64 67}
!41 = !{i64 70}
!42 = !{i64 75}
!43 = !{i64 78}
!44 = !{i64 80}
