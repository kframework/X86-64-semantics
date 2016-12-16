; ModuleID = 'Output/test_34.clang.trans.bc'
source_filename = "Output/test_34.clang.bc"
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
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x40 = internal global %0 <{ [4 x i8] c"\14\00\00\00" }>, align 64
@data_0x44 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x48 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"?\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  store i64 ptrtoint (%1* @data_0x44 to i64), i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %15, !mcsema_real_eip !6
  store i32 10, i32* bitcast (%0* @data_0x40 to i32*), !mcsema_real_eip !7
  store i64 10, i64* %XSI, !mcsema_real_eip !8
  %AL.5 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 0, i8* %AL.5, !mcsema_real_eip !9
  %RDI_val.6 = load i64, i64* %XDI, !mcsema_real_eip !10
  %RDX_val.8 = load i64, i64* %XDX, !mcsema_real_eip !10
  %RCX_val.9 = load i64, i64* %XCX, !mcsema_real_eip !10
  %R8_val.10 = load i64, i64* %R8, !mcsema_real_eip !10
  %R9_val.11 = load i64, i64* %R9, !mcsema_real_eip !10
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_17 = bitcast i8* %_load_rsp_ptr_16 to i64*
  %16 = load i64, i64* %_allin_new_bt_17, !mcsema_real_eip !10
  %_new_gep_18 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 8
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %17 = load i64, i64* %_allin_new_bt_19, !mcsema_real_eip !10
  %_new_gep_20 = getelementptr i8, i8* %_new_gep_18, i64 8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = load i64, i64* %_allin_new_bt_21, !mcsema_real_eip !10
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_20, i64 8
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %19 = load i64, i64* %_allin_new_bt_23, !mcsema_real_eip !10
  %_new_gep_24 = getelementptr i8, i8* %_new_gep_22, i64 8
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %20 = load i64, i64* %_allin_new_bt_25, !mcsema_real_eip !10
  %_new_gep_26 = getelementptr i8, i8* %_new_gep_24, i64 8
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %21 = load i64, i64* %_allin_new_bt_27, !mcsema_real_eip !10
  %_new_gep_28 = getelementptr i8, i8* %_new_gep_26, i64 8
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %22 = load i64, i64* %_allin_new_bt_29, !mcsema_real_eip !10
  %_new_gep_30 = getelementptr i8, i8* %_new_gep_28, i64 8
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %23 = load i64, i64* %_allin_new_bt_31, !mcsema_real_eip !10
  %_new_gep_32 = getelementptr i8, i8* %_new_gep_30, i64 8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %24 = load i64, i64* %_allin_new_bt_33, !mcsema_real_eip !10
  %_new_gep_34 = getelementptr i8, i8* %_new_gep_32, i64 8
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %25 = load i64, i64* %_allin_new_bt_35, !mcsema_real_eip !10
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !10
  %_new_gep_37 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %26 = sub i64 %RSP_val.13, 8, !mcsema_real_eip !10
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_38, !mcsema_real_eip !10
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_
  store i64 %26, i64* %XSP, !mcsema_real_eip !10
  %27 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.6, i64 10, i64 %RDX_val.8, i64 %RCX_val.9, i64 %R8_val.10, i64 %R9_val.11, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %27, i64* %XAX, !mcsema_real_eip !10
  %ESI.14 = bitcast i64* %XSI to i32*, !mcsema_real_eip !11
  %ESI_val.15 = load i32, i32* %ESI.14, !mcsema_real_eip !11
  store i1 false, i1* %CF, !mcsema_real_eip !11
  store i1 false, i1* %OF, !mcsema_real_eip !11
  store i1 false, i1* %SF, !mcsema_real_eip !11
  store i1 true, i1* %ZF, !mcsema_real_eip !11
  store i1 true, i1* %PF, !mcsema_real_eip !11
  store i1 undef, i1* %AF, !mcsema_real_eip !11
  store i64 0, i64* %XSI, !mcsema_real_eip !11
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -8
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !12
  %28 = ptrtoint i64* %_allin_new_bt_41 to i64, !mcsema_real_eip !12
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !12
  store i32 %EAX_val.20, i32* %29, !mcsema_real_eip !12
  %ESI_val.22 = load i32, i32* %ESI.14, !mcsema_real_eip !13
  %30 = zext i32 %ESI_val.22 to i64, !mcsema_real_eip !13
  store i64 %30, i64* %XAX, !mcsema_real_eip !13
  %_load_rsp_ptr_42 = load i8*, i8** %_RSP_ptr_
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_43 = getelementptr i8, i8* %_load_rsp_ptr_42, i64 16
  %31 = add i64 16, %RSP_val.23, !mcsema_real_eip !14
  %_trans_p2i_44 = ptrtoint i8* %_new_gep_43 to i64
  %_trans_p2i_45 = ptrtoint i8* %_load_rsp_ptr_42 to i64
  %_trans_xor_46 = xor i64 %_trans_p2i_44, %_trans_p2i_45
  %32 = xor i64 %_trans_xor_46, 16, !mcsema_real_eip !14
  %33 = and i64 %32, 16, !mcsema_real_eip !14
  %34 = icmp ne i64 %33, 0, !mcsema_real_eip !14
  store i1 %34, i1* %AF, !mcsema_real_eip !14
  %35 = lshr i64 %31, 63, !mcsema_real_eip !14
  %36 = trunc i64 %35 to i1, !mcsema_real_eip !14
  store i1 %36, i1* %SF, !mcsema_real_eip !14
  %_trans_icmp_eq_48 = icmp eq i64 %_trans_p2i_44, 0
  store i1 %_trans_icmp_eq_48, i1* %ZF, !mcsema_real_eip !14
  %_trans_xor_50 = xor i64 %_trans_p2i_45, 16
  %37 = xor i64 %_trans_xor_50, -1, !mcsema_real_eip !14
  %38 = and i64 %37, %_trans_xor_46, !mcsema_real_eip !14
  %39 = lshr i64 %38, 63, !mcsema_real_eip !14
  %40 = and i64 %39, 1, !mcsema_real_eip !14
  %41 = trunc i64 %40 to i1, !mcsema_real_eip !14
  store i1 %41, i1* %OF, !mcsema_real_eip !14
  %_trans_trunc_55 = trunc i64 %_trans_p2i_44 to i8
  %42 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_55), !mcsema_real_eip !14
  %43 = trunc i8 %42 to i1, !mcsema_real_eip !14
  %44 = xor i1 %43, true, !mcsema_real_eip !14
  store i1 %44, i1* %PF, !mcsema_real_eip !14
  %_trans_icmp_ne_57 = icmp ne i64 %_trans_p2i_44, %RSP_val.23
  store i1 %_trans_icmp_ne_57, i1* %CF, !mcsema_real_eip !14
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_
  store i64 %31, i64* %XSP, !mcsema_real_eip !14
  %_allin_new_bt_59 = bitcast i8* %_new_gep_43 to i64*
  %45 = load i64, i64* %_allin_new_bt_59, !mcsema_real_eip !15
  %_new_int2ptr_ = inttoptr i64 %45 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %45, i64* %XBP, !mcsema_real_eip !15
  %_new_gep_60 = getelementptr i8, i8* %_new_gep_43, i64 8
  %46 = add i64 %31, 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_60, i8** %_RSP_ptr_
  store i64 %46, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_62 = getelementptr i8, i8* %_new_gep_60, i64 8
  %47 = add i64 %46, 8, !mcsema_real_eip !16
  %_allin_new_bt_63 = bitcast i8* %_new_gep_60 to i64*
  %48 = load i64, i64* %_allin_new_bt_63, !mcsema_real_eip !16
  store i64 %48, i64* %XIP, !mcsema_real_eip !16
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_
  store i64 %47, i64* %XSP, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
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
  store i64 ptrtoint (%1* @data_0x44 to i64), i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %15, !mcsema_real_eip !6
  store i32 10, i32* bitcast (%0* @data_0x40 to i32*), !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 ptrtoint (%0* @data_0x40 to i64), %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* getelementptr inbounds (%0, %0* @data_0x40, i32 0, i32 0, i32 0), %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* getelementptr inbounds (%0, %0* @data_0x40, i32 0, i32 0, i32 0), %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* getelementptr inbounds (%0, %0* @data_0x40, i32 0, i32 0, i32 0), %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %16, label %17

; <label>:16:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %17

; <label>:17:                                     ; preds = %block_0x0, %16
  %18 = phi i32* [ bitcast (%0* @data_0x40 to i32*), %block_0x0 ], [ %_address_in_parent_stack_bt_, %16 ]
  %_new_load_ = load i32, i32* %18
  %19 = zext i32 %_new_load_ to i64, !mcsema_real_eip !8
  store i64 %19, i64* %XSI, !mcsema_real_eip !8
  %AL.5 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 0, i8* %AL.5, !mcsema_real_eip !9
  %RDI_val.6 = load i64, i64* %XDI, !mcsema_real_eip !10
  %RDX_val.8 = load i64, i64* %XDX, !mcsema_real_eip !10
  %RCX_val.9 = load i64, i64* %XCX, !mcsema_real_eip !10
  %R8_val.10 = load i64, i64* %R8, !mcsema_real_eip !10
  %R9_val.11 = load i64, i64* %R9, !mcsema_real_eip !10
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_17 = bitcast i8* %_load_rsp_ptr_16 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_17 to i64
  %_offset_above_rbp_65 = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_66 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_65
  %_cond1_67 = icmp ugt i8* %_load_rsp_ptr_16, %_local_stack_end_ptr_
  %_cond2_1_68 = icmp ugt i8* %_load_rsp_ptr_16, %_parent_stack_end_ptr_
  %_cond2_2_69 = icmp ult i8* %_load_rsp_ptr_16, %_parent_stack_start_ptr_
  %_cond2_70 = or i1 %_cond2_1_68, %_cond2_2_69
  %_cond4_71 = icmp ule i8* %_pot_address_in_parent_stack_66, %_parent_stack_end_ptr_
  %_cond1_n_cond2_72 = and i1 %_cond1_67, %_cond2_70
  %_cond1_n_cond2_cond3_73 = and i1 %_cond1_n_cond2_72, %_cond4_71
  br i1 %_cond1_n_cond2_cond3_73, label %20, label %21

; <label>:20:                                     ; preds = %17
  %_address_in_parent_stack_bt_75 = bitcast i8* %_pot_address_in_parent_stack_66 to i64*
  br label %21

; <label>:21:                                     ; preds = %17, %20
  %22 = phi i64* [ %_allin_new_bt_17, %17 ], [ %_address_in_parent_stack_bt_75, %20 ]
  %_new_load_76 = load i64, i64* %22
  %_new_gep_18 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 8
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %_ptr_to_int_77 = ptrtoint i64* %_allin_new_bt_19 to i64
  %_offset_above_rbp_80 = sub i64 %_ptr_to_int_77, %_local_end_to_int_
  %_pot_address_in_parent_stack_81 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_80
  %_cond1_82 = icmp ugt i8* %_new_gep_18, %_local_stack_end_ptr_
  %_cond2_1_83 = icmp ugt i8* %_new_gep_18, %_parent_stack_end_ptr_
  %_cond2_2_84 = icmp ult i8* %_new_gep_18, %_parent_stack_start_ptr_
  %_cond2_85 = or i1 %_cond2_1_83, %_cond2_2_84
  %_cond4_86 = icmp ule i8* %_pot_address_in_parent_stack_81, %_parent_stack_end_ptr_
  %_cond1_n_cond2_87 = and i1 %_cond1_82, %_cond2_85
  %_cond1_n_cond2_cond3_88 = and i1 %_cond1_n_cond2_87, %_cond4_86
  br i1 %_cond1_n_cond2_cond3_88, label %23, label %24

; <label>:23:                                     ; preds = %21
  %_address_in_parent_stack_bt_90 = bitcast i8* %_pot_address_in_parent_stack_81 to i64*
  br label %24

; <label>:24:                                     ; preds = %21, %23
  %25 = phi i64* [ %_allin_new_bt_19, %21 ], [ %_address_in_parent_stack_bt_90, %23 ]
  %_new_load_91 = load i64, i64* %25
  %_new_gep_20 = getelementptr i8, i8* %_new_gep_18, i64 8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %_ptr_to_int_92 = ptrtoint i64* %_allin_new_bt_21 to i64
  %_offset_above_rbp_95 = sub i64 %_ptr_to_int_92, %_local_end_to_int_
  %_pot_address_in_parent_stack_96 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_95
  %_cond1_97 = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_98 = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_99 = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_100 = or i1 %_cond2_1_98, %_cond2_2_99
  %_cond4_101 = icmp ule i8* %_pot_address_in_parent_stack_96, %_parent_stack_end_ptr_
  %_cond1_n_cond2_102 = and i1 %_cond1_97, %_cond2_100
  %_cond1_n_cond2_cond3_103 = and i1 %_cond1_n_cond2_102, %_cond4_101
  br i1 %_cond1_n_cond2_cond3_103, label %26, label %27

; <label>:26:                                     ; preds = %24
  %_address_in_parent_stack_bt_105 = bitcast i8* %_pot_address_in_parent_stack_96 to i64*
  br label %27

; <label>:27:                                     ; preds = %24, %26
  %28 = phi i64* [ %_allin_new_bt_21, %24 ], [ %_address_in_parent_stack_bt_105, %26 ]
  %_new_load_106 = load i64, i64* %28
  %_new_gep_22 = getelementptr i8, i8* %_new_gep_20, i64 8
  %_allin_new_bt_23 = bitcast i8* %_new_gep_22 to i64*
  %_ptr_to_int_107 = ptrtoint i64* %_allin_new_bt_23 to i64
  %_offset_above_rbp_110 = sub i64 %_ptr_to_int_107, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %_new_gep_22, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %_new_gep_22, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %_new_gep_22, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  br i1 %_cond1_n_cond2_cond3_118, label %29, label %30

; <label>:29:                                     ; preds = %27
  %_address_in_parent_stack_bt_120 = bitcast i8* %_pot_address_in_parent_stack_111 to i64*
  br label %30

; <label>:30:                                     ; preds = %27, %29
  %31 = phi i64* [ %_allin_new_bt_23, %27 ], [ %_address_in_parent_stack_bt_120, %29 ]
  %_new_load_121 = load i64, i64* %31
  %_new_gep_24 = getelementptr i8, i8* %_new_gep_22, i64 8
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %_ptr_to_int_122 = ptrtoint i64* %_allin_new_bt_25 to i64
  %_offset_above_rbp_125 = sub i64 %_ptr_to_int_122, %_local_end_to_int_
  %_pot_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_125
  %_cond1_127 = icmp ugt i8* %_new_gep_24, %_local_stack_end_ptr_
  %_cond2_1_128 = icmp ugt i8* %_new_gep_24, %_parent_stack_end_ptr_
  %_cond2_2_129 = icmp ult i8* %_new_gep_24, %_parent_stack_start_ptr_
  %_cond2_130 = or i1 %_cond2_1_128, %_cond2_2_129
  %_cond4_131 = icmp ule i8* %_pot_address_in_parent_stack_126, %_parent_stack_end_ptr_
  %_cond1_n_cond2_132 = and i1 %_cond1_127, %_cond2_130
  %_cond1_n_cond2_cond3_133 = and i1 %_cond1_n_cond2_132, %_cond4_131
  br i1 %_cond1_n_cond2_cond3_133, label %32, label %33

; <label>:32:                                     ; preds = %30
  %_address_in_parent_stack_bt_135 = bitcast i8* %_pot_address_in_parent_stack_126 to i64*
  br label %33

; <label>:33:                                     ; preds = %30, %32
  %34 = phi i64* [ %_allin_new_bt_25, %30 ], [ %_address_in_parent_stack_bt_135, %32 ]
  %_new_load_136 = load i64, i64* %34
  %_new_gep_26 = getelementptr i8, i8* %_new_gep_24, i64 8
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_137 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_140 = sub i64 %_ptr_to_int_137, %_local_end_to_int_
  %_pot_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_140
  %_cond1_142 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_143 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_144 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_145 = or i1 %_cond2_1_143, %_cond2_2_144
  %_cond4_146 = icmp ule i8* %_pot_address_in_parent_stack_141, %_parent_stack_end_ptr_
  %_cond1_n_cond2_147 = and i1 %_cond1_142, %_cond2_145
  %_cond1_n_cond2_cond3_148 = and i1 %_cond1_n_cond2_147, %_cond4_146
  br i1 %_cond1_n_cond2_cond3_148, label %35, label %36

; <label>:35:                                     ; preds = %33
  %_address_in_parent_stack_bt_150 = bitcast i8* %_pot_address_in_parent_stack_141 to i64*
  br label %36

; <label>:36:                                     ; preds = %33, %35
  %37 = phi i64* [ %_allin_new_bt_27, %33 ], [ %_address_in_parent_stack_bt_150, %35 ]
  %_new_load_151 = load i64, i64* %37
  %_new_gep_28 = getelementptr i8, i8* %_new_gep_26, i64 8
  %_allin_new_bt_29 = bitcast i8* %_new_gep_28 to i64*
  %_ptr_to_int_152 = ptrtoint i64* %_allin_new_bt_29 to i64
  %_offset_above_rbp_155 = sub i64 %_ptr_to_int_152, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %_new_gep_28, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_new_gep_28, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_new_gep_28, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  br i1 %_cond1_n_cond2_cond3_163, label %38, label %39

; <label>:38:                                     ; preds = %36
  %_address_in_parent_stack_bt_165 = bitcast i8* %_pot_address_in_parent_stack_156 to i64*
  br label %39

; <label>:39:                                     ; preds = %36, %38
  %40 = phi i64* [ %_allin_new_bt_29, %36 ], [ %_address_in_parent_stack_bt_165, %38 ]
  %_new_load_166 = load i64, i64* %40
  %_new_gep_30 = getelementptr i8, i8* %_new_gep_28, i64 8
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %_ptr_to_int_167 = ptrtoint i64* %_allin_new_bt_31 to i64
  %_offset_above_rbp_170 = sub i64 %_ptr_to_int_167, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_new_gep_30, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_30, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_30, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  br i1 %_cond1_n_cond2_cond3_178, label %41, label %42

; <label>:41:                                     ; preds = %39
  %_address_in_parent_stack_bt_180 = bitcast i8* %_pot_address_in_parent_stack_171 to i64*
  br label %42

; <label>:42:                                     ; preds = %39, %41
  %43 = phi i64* [ %_allin_new_bt_31, %39 ], [ %_address_in_parent_stack_bt_180, %41 ]
  %_new_load_181 = load i64, i64* %43
  %_new_gep_32 = getelementptr i8, i8* %_new_gep_30, i64 8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %_ptr_to_int_182 = ptrtoint i64* %_allin_new_bt_33 to i64
  %_offset_above_rbp_185 = sub i64 %_ptr_to_int_182, %_local_end_to_int_
  %_pot_address_in_parent_stack_186 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_185
  %_cond1_187 = icmp ugt i8* %_new_gep_32, %_local_stack_end_ptr_
  %_cond2_1_188 = icmp ugt i8* %_new_gep_32, %_parent_stack_end_ptr_
  %_cond2_2_189 = icmp ult i8* %_new_gep_32, %_parent_stack_start_ptr_
  %_cond2_190 = or i1 %_cond2_1_188, %_cond2_2_189
  %_cond4_191 = icmp ule i8* %_pot_address_in_parent_stack_186, %_parent_stack_end_ptr_
  %_cond1_n_cond2_192 = and i1 %_cond1_187, %_cond2_190
  %_cond1_n_cond2_cond3_193 = and i1 %_cond1_n_cond2_192, %_cond4_191
  br i1 %_cond1_n_cond2_cond3_193, label %44, label %45

; <label>:44:                                     ; preds = %42
  %_address_in_parent_stack_bt_195 = bitcast i8* %_pot_address_in_parent_stack_186 to i64*
  br label %45

; <label>:45:                                     ; preds = %42, %44
  %46 = phi i64* [ %_allin_new_bt_33, %42 ], [ %_address_in_parent_stack_bt_195, %44 ]
  %_new_load_196 = load i64, i64* %46
  %_new_gep_34 = getelementptr i8, i8* %_new_gep_32, i64 8
  %_allin_new_bt_35 = bitcast i8* %_new_gep_34 to i64*
  %_ptr_to_int_197 = ptrtoint i64* %_allin_new_bt_35 to i64
  %_offset_above_rbp_200 = sub i64 %_ptr_to_int_197, %_local_end_to_int_
  %_pot_address_in_parent_stack_201 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_200
  %_cond1_202 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_203 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_204 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_205 = or i1 %_cond2_1_203, %_cond2_2_204
  %_cond4_206 = icmp ule i8* %_pot_address_in_parent_stack_201, %_parent_stack_end_ptr_
  %_cond1_n_cond2_207 = and i1 %_cond1_202, %_cond2_205
  %_cond1_n_cond2_cond3_208 = and i1 %_cond1_n_cond2_207, %_cond4_206
  br i1 %_cond1_n_cond2_cond3_208, label %47, label %48

; <label>:47:                                     ; preds = %45
  %_address_in_parent_stack_bt_210 = bitcast i8* %_pot_address_in_parent_stack_201 to i64*
  br label %48

; <label>:48:                                     ; preds = %45, %47
  %49 = phi i64* [ %_allin_new_bt_35, %45 ], [ %_address_in_parent_stack_bt_210, %47 ]
  %_new_load_211 = load i64, i64* %49
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !10
  %_new_gep_37 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %50 = sub i64 %RSP_val.13, 8, !mcsema_real_eip !10
  %_allin_new_bt_38 = bitcast i8* %_new_gep_37 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_38, !mcsema_real_eip !10
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_
  store i64 %50, i64* %XSP, !mcsema_real_eip !10
  %51 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.6, i64 %19, i64 %RDX_val.8, i64 %RCX_val.9, i64 %R8_val.10, i64 %R9_val.11, i64 %_new_load_76, i64 %_new_load_91, i64 %_new_load_106, i64 %_new_load_121, i64 %_new_load_136, i64 %_new_load_151, i64 %_new_load_166, i64 %_new_load_181, i64 %_new_load_196, i64 %_new_load_211)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %51, i64* %XAX, !mcsema_real_eip !10
  %ESI.14 = bitcast i64* %XSI to i32*, !mcsema_real_eip !11
  %ESI_val.15 = load i32, i32* %ESI.14, !mcsema_real_eip !11
  store i1 false, i1* %CF, !mcsema_real_eip !11
  store i1 false, i1* %OF, !mcsema_real_eip !11
  store i1 false, i1* %SF, !mcsema_real_eip !11
  store i1 true, i1* %ZF, !mcsema_real_eip !11
  store i1 true, i1* %PF, !mcsema_real_eip !11
  store i1 undef, i1* %AF, !mcsema_real_eip !11
  store i64 0, i64* %XSI, !mcsema_real_eip !11
  %_load_rbp_ptr_39 = load i8*, i8** %_RBP_ptr_
  %_new_gep_40 = getelementptr i8, i8* %_load_rbp_ptr_39, i64 -8
  %_allin_new_bt_41 = bitcast i8* %_new_gep_40 to i64*
  %EAX.19 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.20 = load i32, i32* %EAX.19, !mcsema_real_eip !12
  %52 = ptrtoint i64* %_allin_new_bt_41 to i64, !mcsema_real_eip !12
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !12
  store i32 %EAX_val.20, i32* %53, !mcsema_real_eip !12
  %ESI_val.22 = load i32, i32* %ESI.14, !mcsema_real_eip !13
  %54 = zext i32 %ESI_val.22 to i64, !mcsema_real_eip !13
  store i64 %54, i64* %XAX, !mcsema_real_eip !13
  %_load_rsp_ptr_42 = load i8*, i8** %_RSP_ptr_
  %RSP_val.23 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_43 = getelementptr i8, i8* %_load_rsp_ptr_42, i64 16
  %55 = add i64 16, %RSP_val.23, !mcsema_real_eip !14
  %_trans_p2i_44 = ptrtoint i8* %_new_gep_43 to i64
  %_trans_p2i_45 = ptrtoint i8* %_load_rsp_ptr_42 to i64
  %_trans_xor_46 = xor i64 %_trans_p2i_44, %_trans_p2i_45
  %56 = xor i64 %_trans_xor_46, 16, !mcsema_real_eip !14
  %57 = and i64 %56, 16, !mcsema_real_eip !14
  %58 = icmp ne i64 %57, 0, !mcsema_real_eip !14
  store i1 %58, i1* %AF, !mcsema_real_eip !14
  %59 = lshr i64 %55, 63, !mcsema_real_eip !14
  %60 = trunc i64 %59 to i1, !mcsema_real_eip !14
  store i1 %60, i1* %SF, !mcsema_real_eip !14
  %_trans_icmp_eq_48 = icmp eq i64 %_trans_p2i_44, 0
  store i1 %_trans_icmp_eq_48, i1* %ZF, !mcsema_real_eip !14
  %_trans_xor_50 = xor i64 %_trans_p2i_45, 16
  %61 = xor i64 %_trans_xor_50, -1, !mcsema_real_eip !14
  %62 = and i64 %61, %_trans_xor_46, !mcsema_real_eip !14
  %63 = lshr i64 %62, 63, !mcsema_real_eip !14
  %64 = and i64 %63, 1, !mcsema_real_eip !14
  %65 = trunc i64 %64 to i1, !mcsema_real_eip !14
  store i1 %65, i1* %OF, !mcsema_real_eip !14
  %_trans_trunc_55 = trunc i64 %_trans_p2i_44 to i8
  %66 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_55), !mcsema_real_eip !14
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !14
  %68 = xor i1 %67, true, !mcsema_real_eip !14
  store i1 %68, i1* %PF, !mcsema_real_eip !14
  %_trans_icmp_ne_57 = icmp ne i64 %_trans_p2i_44, %RSP_val.23
  store i1 %_trans_icmp_ne_57, i1* %CF, !mcsema_real_eip !14
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_
  store i64 %55, i64* %XSP, !mcsema_real_eip !14
  %_allin_new_bt_59 = bitcast i8* %_new_gep_43 to i64*
  %_ptr_to_int_212 = ptrtoint i64* %_allin_new_bt_59 to i64
  %_offset_above_rbp_215 = sub i64 %_ptr_to_int_212, %_local_end_to_int_
  %_pot_address_in_parent_stack_216 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_215
  %_cond1_217 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_218 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_219 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_220 = or i1 %_cond2_1_218, %_cond2_2_219
  %_cond4_221 = icmp ule i8* %_pot_address_in_parent_stack_216, %_parent_stack_end_ptr_
  %_cond1_n_cond2_222 = and i1 %_cond1_217, %_cond2_220
  %_cond1_n_cond2_cond3_223 = and i1 %_cond1_n_cond2_222, %_cond4_221
  br i1 %_cond1_n_cond2_cond3_223, label %69, label %70

; <label>:69:                                     ; preds = %48
  %_address_in_parent_stack_bt_225 = bitcast i8* %_pot_address_in_parent_stack_216 to i64*
  br label %70

; <label>:70:                                     ; preds = %48, %69
  %71 = phi i64* [ %_allin_new_bt_59, %48 ], [ %_address_in_parent_stack_bt_225, %69 ]
  %_new_load_226 = load i64, i64* %71
  %_new_int2ptr_ = inttoptr i64 %_new_load_226 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_226, i64* %XBP, !mcsema_real_eip !15
  %_new_gep_60 = getelementptr i8, i8* %_new_gep_43, i64 8
  %72 = add i64 %55, 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_60, i8** %_RSP_ptr_
  store i64 %72, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_62 = getelementptr i8, i8* %_new_gep_60, i64 8
  %73 = add i64 %72, 8, !mcsema_real_eip !16
  %_allin_new_bt_63 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_227 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_230 = sub i64 %_ptr_to_int_227, %_local_end_to_int_
  %_pot_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_cond1_232 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_233 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_234 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_235 = or i1 %_cond2_1_233, %_cond2_2_234
  %_cond4_236 = icmp ule i8* %_pot_address_in_parent_stack_231, %_parent_stack_end_ptr_
  %_cond1_n_cond2_237 = and i1 %_cond1_232, %_cond2_235
  %_cond1_n_cond2_cond3_238 = and i1 %_cond1_n_cond2_237, %_cond4_236
  br i1 %_cond1_n_cond2_cond3_238, label %74, label %75

; <label>:74:                                     ; preds = %70
  %_address_in_parent_stack_bt_240 = bitcast i8* %_pot_address_in_parent_stack_231 to i64*
  br label %75

; <label>:75:                                     ; preds = %70, %74
  %76 = phi i64* [ %_allin_new_bt_63, %70 ], [ %_address_in_parent_stack_bt_240, %74 ]
  %_new_load_241 = load i64, i64* %76
  store i64 %_new_load_241, i64* %XIP, !mcsema_real_eip !16
  store volatile i8* %_new_gep_62, i8** %_RSP_ptr_
  store i64 %73, i64* %XSP, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
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
!8 = !{i64 36}
!9 = !{i64 43}
!10 = !{i64 45}
!11 = !{i64 50}
!12 = !{i64 52}
!13 = !{i64 55}
!14 = !{i64 57}
!15 = !{i64 61}
!16 = !{i64 62}
