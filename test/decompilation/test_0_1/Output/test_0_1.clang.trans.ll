; ModuleID = 'Output/test_0_1.clang.trans.bc'
source_filename = "Output/test_0_1.clang.bc"
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

%0 = type <{ [6 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x2d = internal constant %0 <{ [6 x i8] c"test \00" }>, align 64
@data_0x38 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"-\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  store i64 ptrtoint (%0* @data_0x2d to i64), i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %15, !mcsema_real_eip !6
  %AL.5 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 0, i8* %AL.5, !mcsema_real_eip !7
  %RDI_val.6 = load i64, i64* %XDI, !mcsema_real_eip !8
  %RSI_val.7 = load i64, i64* %XSI, !mcsema_real_eip !8
  %RDX_val.8 = load i64, i64* %XDX, !mcsema_real_eip !8
  %RCX_val.9 = load i64, i64* %XCX, !mcsema_real_eip !8
  %R8_val.10 = load i64, i64* %R8, !mcsema_real_eip !8
  %R9_val.11 = load i64, i64* %R9, !mcsema_real_eip !8
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_17 = bitcast i8* %_load_rsp_ptr_16 to i64*
  %16 = load i64, i64* %_allin_new_bt_17, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 8
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %17 = load i64, i64* %_allin_new_bt_19, !mcsema_real_eip !8
  %_new_gep_20 = getelementptr i8, i8* %_new_gep_18, i64 8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = load i64, i64* %_allin_new_bt_21, !mcsema_real_eip !8
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_20, i64 8
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %19 = load i64, i64* %_allin_new_bt_23, !mcsema_real_eip !8
  %_new_gep_24 = getelementptr i8, i8* %_new_gep_22, i64 8
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %20 = load i64, i64* %_allin_new_bt_25, !mcsema_real_eip !8
  %_new_gep_26 = getelementptr i8, i8* %_new_gep_24, i64 8
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %21 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !8
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !8
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %22 = sub i64 %RSP_val.13, 8, !mcsema_real_eip !8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !8
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %22, i64* %XSP, !mcsema_real_eip !8
  %23 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.6, i64 %RSI_val.7, i64 %RDX_val.8, i64 %RCX_val.9, i64 %R8_val.10, i64 %R9_val.11, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %23, i64* %XAX, !mcsema_real_eip !8
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !9
  store i1 false, i1* %CF, !mcsema_real_eip !9
  store i1 false, i1* %OF, !mcsema_real_eip !9
  store i1 false, i1* %SF, !mcsema_real_eip !9
  store i1 true, i1* %ZF, !mcsema_real_eip !9
  store i1 true, i1* %PF, !mcsema_real_eip !9
  store i1 undef, i1* %AF, !mcsema_real_eip !9
  store i64 0, i64* %XCX, !mcsema_real_eip !9
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !10
  %24 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !10
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.20, i32* %25, !mcsema_real_eip !10
  %ECX_val.22 = load i32, i32* %ECX.14, !mcsema_real_eip !11
  %26 = zext i32 %ECX_val.22 to i64, !mcsema_real_eip !11
  store i64 %26, i64* %XAX, !mcsema_real_eip !11
  %_load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !12
  %_new_gep_35 = getelementptr i8, i8* %_load_rsp_ptr_34, i64 16
  %27 = add i64 16, %RSP_val.23, !mcsema_real_eip !12
  %_trans_p2i_36 = ptrtoint i8* %_new_gep_35 to i64
  %_trans_p2i_37 = ptrtoint i8* %_load_rsp_ptr_34 to i64
  %_trans_xor_38 = xor i64 %_trans_p2i_36, %_trans_p2i_37
  %28 = xor i64 %_trans_xor_38, 16, !mcsema_real_eip !12
  %29 = and i64 %28, 16, !mcsema_real_eip !12
  %30 = icmp ne i64 %29, 0, !mcsema_real_eip !12
  store i1 %30, i1* %AF, !mcsema_real_eip !12
  %31 = lshr i64 %27, 63, !mcsema_real_eip !12
  %32 = trunc i64 %31 to i1, !mcsema_real_eip !12
  store i1 %32, i1* %SF, !mcsema_real_eip !12
  %_trans_icmp_eq_40 = icmp eq i64 %_trans_p2i_36, 0
  store i1 %_trans_icmp_eq_40, i1* %ZF, !mcsema_real_eip !12
  %_trans_xor_42 = xor i64 %_trans_p2i_37, 16
  %33 = xor i64 %_trans_xor_42, -1, !mcsema_real_eip !12
  %34 = and i64 %33, %_trans_xor_38, !mcsema_real_eip !12
  %35 = lshr i64 %34, 63, !mcsema_real_eip !12
  %36 = and i64 %35, 1, !mcsema_real_eip !12
  %37 = trunc i64 %36 to i1, !mcsema_real_eip !12
  store i1 %37, i1* %OF, !mcsema_real_eip !12
  %_trans_trunc_47 = trunc i64 %_trans_p2i_36 to i8
  %38 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_47), !mcsema_real_eip !12
  %39 = trunc i8 %38 to i1, !mcsema_real_eip !12
  %40 = xor i1 %39, true, !mcsema_real_eip !12
  store i1 %40, i1* %PF, !mcsema_real_eip !12
  %_trans_icmp_ne_49 = icmp ne i64 %_trans_p2i_36, %RSP_val.23
  store i1 %_trans_icmp_ne_49, i1* %CF, !mcsema_real_eip !12
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_
  store i64 %27, i64* %XSP, !mcsema_real_eip !12
  %_allin_new_bt_51 = bitcast i8* %_new_gep_35 to i64*
  %41 = load i64, i64* %_allin_new_bt_51, !mcsema_real_eip !13
  %_new_int2ptr_ = inttoptr i64 %41 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %41, i64* %XBP, !mcsema_real_eip !13
  %_new_gep_52 = getelementptr i8, i8* %_new_gep_35, i64 8
  %42 = add i64 %27, 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_
  store i64 %42, i64* %XSP, !mcsema_real_eip !13
  %_new_gep_54 = getelementptr i8, i8* %_new_gep_52, i64 8
  %43 = add i64 %42, 8, !mcsema_real_eip !14
  %_allin_new_bt_55 = bitcast i8* %_new_gep_52 to i64*
  %44 = load i64, i64* %_allin_new_bt_55, !mcsema_real_eip !14
  store i64 %44, i64* %XIP, !mcsema_real_eip !14
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_
  store i64 %43, i64* %XSP, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
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
  store i64 ptrtoint (%0* @data_0x2d to i64), i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %15, !mcsema_real_eip !6
  %AL.5 = bitcast i64* %XAX to i8*, !mcsema_real_eip !7
  store i8 0, i8* %AL.5, !mcsema_real_eip !7
  %RDI_val.6 = load i64, i64* %XDI, !mcsema_real_eip !8
  %RSI_val.7 = load i64, i64* %XSI, !mcsema_real_eip !8
  %RDX_val.8 = load i64, i64* %XDX, !mcsema_real_eip !8
  %RCX_val.9 = load i64, i64* %XCX, !mcsema_real_eip !8
  %R8_val.10 = load i64, i64* %R8, !mcsema_real_eip !8
  %R9_val.11 = load i64, i64* %R9, !mcsema_real_eip !8
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_17 = bitcast i8* %_load_rsp_ptr_16 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_17 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_load_rsp_ptr_16, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_load_rsp_ptr_16, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_load_rsp_ptr_16, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %16, label %17

; <label>:16:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %17

; <label>:17:                                     ; preds = %block_0x0, %16
  %18 = phi i64* [ %_allin_new_bt_17, %block_0x0 ], [ %_address_in_parent_stack_bt_, %16 ]
  %_new_load_ = load i64, i64* %18
  %_new_gep_18 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 8
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %_ptr_to_int_56 = ptrtoint i64* %_allin_new_bt_19 to i64
  %_offset_above_rbp_59 = sub i64 %_ptr_to_int_56, %_local_end_to_int_
  %_pot_address_in_parent_stack_60 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_59
  %_cond1_61 = icmp ugt i8* %_new_gep_18, %_local_stack_end_ptr_
  %_cond2_1_62 = icmp ugt i8* %_new_gep_18, %_parent_stack_end_ptr_
  %_cond2_2_63 = icmp ult i8* %_new_gep_18, %_parent_stack_start_ptr_
  %_cond2_64 = or i1 %_cond2_1_62, %_cond2_2_63
  %_cond4_65 = icmp ule i8* %_pot_address_in_parent_stack_60, %_parent_stack_end_ptr_
  %_cond1_n_cond2_66 = and i1 %_cond1_61, %_cond2_64
  %_cond1_n_cond2_cond3_67 = and i1 %_cond1_n_cond2_66, %_cond4_65
  br i1 %_cond1_n_cond2_cond3_67, label %19, label %20

; <label>:19:                                     ; preds = %17
  %_address_in_parent_stack_bt_69 = bitcast i8* %_pot_address_in_parent_stack_60 to i64*
  br label %20

; <label>:20:                                     ; preds = %17, %19
  %21 = phi i64* [ %_allin_new_bt_19, %17 ], [ %_address_in_parent_stack_bt_69, %19 ]
  %_new_load_70 = load i64, i64* %21
  %_new_gep_20 = getelementptr i8, i8* %_new_gep_18, i64 8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %_ptr_to_int_71 = ptrtoint i64* %_allin_new_bt_21 to i64
  %_offset_above_rbp_74 = sub i64 %_ptr_to_int_71, %_local_end_to_int_
  %_pot_address_in_parent_stack_75 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_74
  %_cond1_76 = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_77 = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_78 = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_79 = or i1 %_cond2_1_77, %_cond2_2_78
  %_cond4_80 = icmp ule i8* %_pot_address_in_parent_stack_75, %_parent_stack_end_ptr_
  %_cond1_n_cond2_81 = and i1 %_cond1_76, %_cond2_79
  %_cond1_n_cond2_cond3_82 = and i1 %_cond1_n_cond2_81, %_cond4_80
  br i1 %_cond1_n_cond2_cond3_82, label %22, label %23

; <label>:22:                                     ; preds = %20
  %_address_in_parent_stack_bt_84 = bitcast i8* %_pot_address_in_parent_stack_75 to i64*
  br label %23

; <label>:23:                                     ; preds = %20, %22
  %24 = phi i64* [ %_allin_new_bt_21, %20 ], [ %_address_in_parent_stack_bt_84, %22 ]
  %_new_load_85 = load i64, i64* %24
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_20, i64 8
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %_ptr_to_int_86 = ptrtoint i64* %_allin_new_bt_23 to i64
  %_offset_above_rbp_89 = sub i64 %_ptr_to_int_86, %_local_end_to_int_
  %_pot_address_in_parent_stack_90 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_89
  %_cond1_91 = icmp ugt i8* %_new_gep_22, %_local_stack_end_ptr_
  %_cond2_1_92 = icmp ugt i8* %_new_gep_22, %_parent_stack_end_ptr_
  %_cond2_2_93 = icmp ult i8* %_new_gep_22, %_parent_stack_start_ptr_
  %_cond2_94 = or i1 %_cond2_1_92, %_cond2_2_93
  %_cond4_95 = icmp ule i8* %_pot_address_in_parent_stack_90, %_parent_stack_end_ptr_
  %_cond1_n_cond2_96 = and i1 %_cond1_91, %_cond2_94
  %_cond1_n_cond2_cond3_97 = and i1 %_cond1_n_cond2_96, %_cond4_95
  br i1 %_cond1_n_cond2_cond3_97, label %25, label %26

; <label>:25:                                     ; preds = %23
  %_address_in_parent_stack_bt_99 = bitcast i8* %_pot_address_in_parent_stack_90 to i64*
  br label %26

; <label>:26:                                     ; preds = %23, %25
  %27 = phi i64* [ %_allin_new_bt_23, %23 ], [ %_address_in_parent_stack_bt_99, %25 ]
  %_new_load_100 = load i64, i64* %27
  %_new_gep_24 = getelementptr i8, i8* %_new_gep_22, i64 8
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %_ptr_to_int_101 = ptrtoint i64* %_allin_new_bt_25 to i64
  %_offset_above_rbp_104 = sub i64 %_ptr_to_int_101, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_new_gep_24, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_new_gep_24, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_new_gep_24, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  br i1 %_cond1_n_cond2_cond3_112, label %28, label %29

; <label>:28:                                     ; preds = %26
  %_address_in_parent_stack_bt_114 = bitcast i8* %_pot_address_in_parent_stack_105 to i64*
  br label %29

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i64* [ %_allin_new_bt_25, %26 ], [ %_address_in_parent_stack_bt_114, %28 ]
  %_new_load_115 = load i64, i64* %30
  %_new_gep_26 = getelementptr i8, i8* %_new_gep_24, i64 8
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_116 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_119 = sub i64 %_ptr_to_int_116, %_local_end_to_int_
  %_pot_address_in_parent_stack_120 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_119
  %_cond1_121 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_122 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_123 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_124 = or i1 %_cond2_1_122, %_cond2_2_123
  %_cond4_125 = icmp ule i8* %_pot_address_in_parent_stack_120, %_parent_stack_end_ptr_
  %_cond1_n_cond2_126 = and i1 %_cond1_121, %_cond2_124
  %_cond1_n_cond2_cond3_127 = and i1 %_cond1_n_cond2_126, %_cond4_125
  br i1 %_cond1_n_cond2_cond3_127, label %31, label %32

; <label>:31:                                     ; preds = %29
  %_address_in_parent_stack_bt_129 = bitcast i8* %_pot_address_in_parent_stack_120 to i64*
  br label %32

; <label>:32:                                     ; preds = %29, %31
  %33 = phi i64* [ %_allin_new_bt_27, %29 ], [ %_address_in_parent_stack_bt_129, %31 ]
  %_new_load_130 = load i64, i64* %33
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !8
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %34 = sub i64 %RSP_val.13, 8, !mcsema_real_eip !8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !8
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %34, i64* %XSP, !mcsema_real_eip !8
  %35 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.6, i64 %RSI_val.7, i64 %RDX_val.8, i64 %RCX_val.9, i64 %R8_val.10, i64 %R9_val.11, i64 %_new_load_, i64 %_new_load_70, i64 %_new_load_85, i64 %_new_load_100, i64 %_new_load_115, i64 %_new_load_130)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %35, i64* %XAX, !mcsema_real_eip !8
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !9
  store i1 false, i1* %CF, !mcsema_real_eip !9
  store i1 false, i1* %OF, !mcsema_real_eip !9
  store i1 false, i1* %SF, !mcsema_real_eip !9
  store i1 true, i1* %ZF, !mcsema_real_eip !9
  store i1 true, i1* %PF, !mcsema_real_eip !9
  store i1 undef, i1* %AF, !mcsema_real_eip !9
  store i64 0, i64* %XCX, !mcsema_real_eip !9
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !10
  %36 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !10
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.20, i32* %37, !mcsema_real_eip !10
  %ECX_val.22 = load i32, i32* %ECX.14, !mcsema_real_eip !11
  %38 = zext i32 %ECX_val.22 to i64, !mcsema_real_eip !11
  store i64 %38, i64* %XAX, !mcsema_real_eip !11
  %_load_rsp_ptr_34 = load i8*, i8** %_RSP_ptr_
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !12
  %_new_gep_35 = getelementptr i8, i8* %_load_rsp_ptr_34, i64 16
  %39 = add i64 16, %RSP_val.23, !mcsema_real_eip !12
  %_trans_p2i_36 = ptrtoint i8* %_new_gep_35 to i64
  %_trans_p2i_37 = ptrtoint i8* %_load_rsp_ptr_34 to i64
  %_trans_xor_38 = xor i64 %_trans_p2i_36, %_trans_p2i_37
  %40 = xor i64 %_trans_xor_38, 16, !mcsema_real_eip !12
  %41 = and i64 %40, 16, !mcsema_real_eip !12
  %42 = icmp ne i64 %41, 0, !mcsema_real_eip !12
  store i1 %42, i1* %AF, !mcsema_real_eip !12
  %43 = lshr i64 %39, 63, !mcsema_real_eip !12
  %44 = trunc i64 %43 to i1, !mcsema_real_eip !12
  store i1 %44, i1* %SF, !mcsema_real_eip !12
  %_trans_icmp_eq_40 = icmp eq i64 %_trans_p2i_36, 0
  store i1 %_trans_icmp_eq_40, i1* %ZF, !mcsema_real_eip !12
  %_trans_xor_42 = xor i64 %_trans_p2i_37, 16
  %45 = xor i64 %_trans_xor_42, -1, !mcsema_real_eip !12
  %46 = and i64 %45, %_trans_xor_38, !mcsema_real_eip !12
  %47 = lshr i64 %46, 63, !mcsema_real_eip !12
  %48 = and i64 %47, 1, !mcsema_real_eip !12
  %49 = trunc i64 %48 to i1, !mcsema_real_eip !12
  store i1 %49, i1* %OF, !mcsema_real_eip !12
  %_trans_trunc_47 = trunc i64 %_trans_p2i_36 to i8
  %50 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_47), !mcsema_real_eip !12
  %51 = trunc i8 %50 to i1, !mcsema_real_eip !12
  %52 = xor i1 %51, true, !mcsema_real_eip !12
  store i1 %52, i1* %PF, !mcsema_real_eip !12
  %_trans_icmp_ne_49 = icmp ne i64 %_trans_p2i_36, %RSP_val.23
  store i1 %_trans_icmp_ne_49, i1* %CF, !mcsema_real_eip !12
  store volatile i8* %_new_gep_35, i8** %_RSP_ptr_
  store i64 %39, i64* %XSP, !mcsema_real_eip !12
  %_allin_new_bt_51 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_131 = ptrtoint i64* %_allin_new_bt_51 to i64
  %_offset_above_rbp_134 = sub i64 %_ptr_to_int_131, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  br i1 %_cond1_n_cond2_cond3_142, label %53, label %54

; <label>:53:                                     ; preds = %32
  %_address_in_parent_stack_bt_144 = bitcast i8* %_pot_address_in_parent_stack_135 to i64*
  br label %54

; <label>:54:                                     ; preds = %32, %53
  %55 = phi i64* [ %_allin_new_bt_51, %32 ], [ %_address_in_parent_stack_bt_144, %53 ]
  %_new_load_145 = load i64, i64* %55
  %_new_int2ptr_ = inttoptr i64 %_new_load_145 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_145, i64* %XBP, !mcsema_real_eip !13
  %_new_gep_52 = getelementptr i8, i8* %_new_gep_35, i64 8
  %56 = add i64 %39, 8, !mcsema_real_eip !13
  store volatile i8* %_new_gep_52, i8** %_RSP_ptr_
  store i64 %56, i64* %XSP, !mcsema_real_eip !13
  %_new_gep_54 = getelementptr i8, i8* %_new_gep_52, i64 8
  %57 = add i64 %56, 8, !mcsema_real_eip !14
  %_allin_new_bt_55 = bitcast i8* %_new_gep_52 to i64*
  %_ptr_to_int_146 = ptrtoint i64* %_allin_new_bt_55 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_52, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_52, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_52, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  br i1 %_cond1_n_cond2_cond3_157, label %58, label %59

; <label>:58:                                     ; preds = %54
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i64*
  br label %59

; <label>:59:                                     ; preds = %54, %58
  %60 = phi i64* [ %_allin_new_bt_55, %54 ], [ %_address_in_parent_stack_bt_159, %58 ]
  %_new_load_160 = load i64, i64* %60
  store i64 %_new_load_160, i64* %XIP, !mcsema_real_eip !14
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_
  store i64 %57, i64* %XSP, !mcsema_real_eip !14
  ret void, !mcsema_real_eip !14
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
!7 = !{i64 25}
!8 = !{i64 27}
!9 = !{i64 32}
!10 = !{i64 34}
!11 = !{i64 37}
!12 = !{i64 39}
!13 = !{i64 43}
!14 = !{i64 44}
