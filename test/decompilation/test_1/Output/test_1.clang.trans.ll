; ModuleID = 'Output/test_1.clang.trans.bc'
source_filename = "Output/test_1.clang.bc"
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
module asm "  .globl sub_70;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_70(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb3 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xb8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"c\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_70(%RegState*) #1 {
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
  br label %block_0x70, !mcsema_real_eip !2

block_0x70:                                       ; preds = %entry
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
  store i64 10, i64* %XDI, !mcsema_real_eip !5
  store i64 20, i64* %XSI, !mcsema_real_eip !6
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !7
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %15, !mcsema_real_eip !7
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !8
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.5, 8, !mcsema_real_eip !8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !8
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !8
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_68)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, !mcsema_real_eip !9
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.8 = load i32, i32* %EAX.7, !mcsema_real_eip !10
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !10
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.8, i32* %18, !mcsema_real_eip !10
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %19 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !11
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !11
  %21 = load i32, i32* %20, !mcsema_real_eip !11
  %22 = zext i32 %21 to i64, !mcsema_real_eip !11
  store i64 %22, i64* %XSI, !mcsema_real_eip !11
  %AL.10 = bitcast i64* %XAX to i8*, !mcsema_real_eip !12
  store i8 0, i8* %AL.10, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, !mcsema_real_eip !13
  %RDX_val.13 = load i64, i64* %XDX, !mcsema_real_eip !13
  %RCX_val.14 = load i64, i64* %XCX, !mcsema_real_eip !13
  %R8_val.15 = load i64, i64* %R8, !mcsema_real_eip !13
  %R9_val.16 = load i64, i64* %R9, !mcsema_real_eip !13
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_26 = bitcast i8* %_load_rsp_ptr_25 to i64*
  %23 = load i64, i64* %_allin_new_bt_26, !mcsema_real_eip !13
  %_new_gep_27 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %24 = load i64, i64* %_allin_new_bt_28, !mcsema_real_eip !13
  %_new_gep_29 = getelementptr i8, i8* %_new_gep_27, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %25 = load i64, i64* %_allin_new_bt_30, !mcsema_real_eip !13
  %_new_gep_31 = getelementptr i8, i8* %_new_gep_29, i64 8
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %26 = load i64, i64* %_allin_new_bt_32, !mcsema_real_eip !13
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %27 = load i64, i64* %_allin_new_bt_34, !mcsema_real_eip !13
  %_new_gep_35 = getelementptr i8, i8* %_new_gep_33, i64 8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %28 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !13
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !13
  %_new_gep_38 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %29 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !13
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_39, !mcsema_real_eip !13
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_
  store i64 %29, i64* %XSP, !mcsema_real_eip !13
  %30 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.11, i64 %22, i64 %RDX_val.13, i64 %RCX_val.14, i64 %R8_val.15, i64 %R9_val.16, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28)
  %_rsp_fix_70 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_71 = getelementptr i8, i8* %_rsp_fix_70, i64 8
  store i8* %_gep_fix_71, i8** %_RSP_ptr_
  store i64 %30, i64* %XAX, !mcsema_real_eip !13
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %31 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !14
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !14
  %33 = load i32, i32* %32, !mcsema_real_eip !14
  %34 = zext i32 %33 to i64, !mcsema_real_eip !14
  store i64 %34, i64* %XSI, !mcsema_real_eip !14
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -12
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %EAX_val.22 = load i32, i32* %EAX.7, !mcsema_real_eip !15
  %35 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !15
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.22, i32* %36, !mcsema_real_eip !15
  %ESI.23 = bitcast i64* %XSI to i32*, !mcsema_real_eip !16
  %ESI_val.24 = load i32, i32* %ESI.23, !mcsema_real_eip !16
  %37 = zext i32 %ESI_val.24 to i64, !mcsema_real_eip !16
  store i64 %37, i64* %XAX, !mcsema_real_eip !16
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !17
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 16
  %38 = add i64 16, %RSP_val.25, !mcsema_real_eip !17
  %_trans_p2i_48 = ptrtoint i8* %_new_gep_47 to i64
  %_trans_p2i_49 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  %_trans_xor_50 = xor i64 %_trans_p2i_48, %_trans_p2i_49
  %39 = xor i64 %_trans_xor_50, 16, !mcsema_real_eip !17
  %40 = and i64 %39, 16, !mcsema_real_eip !17
  %41 = icmp ne i64 %40, 0, !mcsema_real_eip !17
  store i1 %41, i1* %AF, !mcsema_real_eip !17
  %42 = lshr i64 %38, 63, !mcsema_real_eip !17
  %43 = trunc i64 %42 to i1, !mcsema_real_eip !17
  store i1 %43, i1* %SF, !mcsema_real_eip !17
  %_trans_icmp_eq_52 = icmp eq i64 %_trans_p2i_48, 0
  store i1 %_trans_icmp_eq_52, i1* %ZF, !mcsema_real_eip !17
  %_trans_xor_54 = xor i64 %_trans_p2i_49, 16
  %44 = xor i64 %_trans_xor_54, -1, !mcsema_real_eip !17
  %45 = and i64 %44, %_trans_xor_50, !mcsema_real_eip !17
  %46 = lshr i64 %45, 63, !mcsema_real_eip !17
  %47 = and i64 %46, 1, !mcsema_real_eip !17
  %48 = trunc i64 %47 to i1, !mcsema_real_eip !17
  store i1 %48, i1* %OF, !mcsema_real_eip !17
  %_trans_trunc_59 = trunc i64 %_trans_p2i_48 to i8
  %49 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_59), !mcsema_real_eip !17
  %50 = trunc i8 %49 to i1, !mcsema_real_eip !17
  %51 = xor i1 %50, true, !mcsema_real_eip !17
  store i1 %51, i1* %PF, !mcsema_real_eip !17
  %_trans_icmp_ne_61 = icmp ne i64 %_trans_p2i_48, %RSP_val.25
  store i1 %_trans_icmp_ne_61, i1* %CF, !mcsema_real_eip !17
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %38, i64* %XSP, !mcsema_real_eip !17
  %_allin_new_bt_63 = bitcast i8* %_new_gep_47 to i64*
  %52 = load i64, i64* %_allin_new_bt_63, !mcsema_real_eip !18
  %_new_int2ptr_ = inttoptr i64 %52 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %52, i64* %XBP, !mcsema_real_eip !18
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_47, i64 8
  %53 = add i64 %38, 8, !mcsema_real_eip !18
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_
  store i64 %53, i64* %XSP, !mcsema_real_eip !18
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %54 = add i64 %53, 8, !mcsema_real_eip !19
  %_allin_new_bt_67 = bitcast i8* %_new_gep_64 to i64*
  %55 = load i64, i64* %_allin_new_bt_67, !mcsema_real_eip !19
  store i64 %55, i64* %XIP, !mcsema_real_eip !19
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_
  store i64 %54, i64* %XSP, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !20
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !20
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !20
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !20
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !20
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !20
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !20
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !20
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !20
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !20
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !20
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !20
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !20
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !20
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !20
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !20
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !20
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !20
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !20
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !20
  br label %block_0x0, !mcsema_real_eip !20

block_0x0:                                        ; preds = %entry
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !20
  %RSP_val.29 = load i64, i64* %XSP, !mcsema_real_eip !20
  %1 = sub i64 %RSP_val.29, 8, !mcsema_real_eip !20
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !20
  store i64 %RBP_val.28, i64* %2, !mcsema_real_eip !20
  store i64 %1, i64* %XSP, !mcsema_real_eip !20
  store i64 %1, i64* %XBP, !mcsema_real_eip !21
  %3 = add i64 %1, -4, !mcsema_real_eip !22
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !22
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !22
  %5 = inttoptr i64 %3 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.33, i32* %5, !mcsema_real_eip !22
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !23
  %6 = add i64 %RBP_val.34, -8, !mcsema_real_eip !23
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !23
  %ESI.35 = bitcast i64* %XSI to i32*, !mcsema_real_eip !23
  %ESI_val.36 = load i32, i32* %ESI.35, !mcsema_real_eip !23
  %8 = inttoptr i64 %6 to i32*, !mcsema_real_eip !23
  store i32 %ESI_val.36, i32* %8, !mcsema_real_eip !23
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !24
  %9 = add i64 %RBP_val.37, -4, !mcsema_real_eip !24
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !24
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !24
  %12 = load i32, i32* %11, !mcsema_real_eip !24
  %13 = zext i32 %12 to i64, !mcsema_real_eip !24
  store i64 %13, i64* %XSI, !mcsema_real_eip !24
  %14 = add i64 %RBP_val.37, -8, !mcsema_real_eip !25
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !25
  %16 = inttoptr i64 %14 to i32*, !mcsema_real_eip !25
  %17 = load i32, i32* %16, !mcsema_real_eip !25
  %ESI_val.40 = load i32, i32* %ESI.35, !mcsema_real_eip !25
  %18 = add i32 %ESI_val.40, %17, !mcsema_real_eip !25
  %19 = xor i32 %18, %17, !mcsema_real_eip !25
  %20 = xor i32 %19, %ESI_val.40, !mcsema_real_eip !25
  %21 = and i32 %20, 16, !mcsema_real_eip !25
  %22 = icmp ne i32 %21, 0, !mcsema_real_eip !25
  store i1 %22, i1* %AF, !mcsema_real_eip !25
  %23 = lshr i32 %18, 31, !mcsema_real_eip !25
  %24 = trunc i32 %23 to i1, !mcsema_real_eip !25
  store i1 %24, i1* %SF, !mcsema_real_eip !25
  %25 = icmp eq i32 %18, 0, !mcsema_real_eip !25
  store i1 %25, i1* %ZF, !mcsema_real_eip !25
  %26 = xor i32 %17, %ESI_val.40, !mcsema_real_eip !25
  %27 = xor i32 %26, -1, !mcsema_real_eip !25
  %28 = and i32 %27, %19, !mcsema_real_eip !25
  %29 = lshr i32 %28, 31, !mcsema_real_eip !25
  %30 = and i32 %29, 1, !mcsema_real_eip !25
  %31 = trunc i32 %30 to i1, !mcsema_real_eip !25
  store i1 %31, i1* %OF, !mcsema_real_eip !25
  %32 = trunc i32 %18 to i8, !mcsema_real_eip !25
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !25
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !25
  %35 = xor i1 %34, true, !mcsema_real_eip !25
  store i1 %35, i1* %PF, !mcsema_real_eip !25
  %36 = icmp ult i32 %18, %17, !mcsema_real_eip !25
  store i1 %36, i1* %CF, !mcsema_real_eip !25
  %37 = zext i32 %18 to i64, !mcsema_real_eip !25
  store i64 %37, i64* %XSI, !mcsema_real_eip !25
  %38 = add i64 %RBP_val.37, -12, !mcsema_real_eip !26
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !26
  %ESI_val.43 = load i32, i32* %ESI.35, !mcsema_real_eip !26
  %40 = inttoptr i64 %38 to i32*, !mcsema_real_eip !26
  store i32 %ESI_val.43, i32* %40, !mcsema_real_eip !26
  br label %block_0x13, !mcsema_real_eip !27

block_0x13:                                       ; preds = %block_0x50, %block_0x0
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !27
  %41 = add i64 %RBP_val.44, -4, !mcsema_real_eip !27
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !27
  %43 = inttoptr i64 %41 to i32*, !mcsema_real_eip !27
  %44 = load i32, i32* %43, !mcsema_real_eip !27
  store i1 false, i1* %AF, !mcsema_real_eip !27
  %45 = trunc i32 %44 to i8, !mcsema_real_eip !27
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !27
  %47 = trunc i8 %46 to i1, !mcsema_real_eip !27
  %48 = xor i1 %47, true, !mcsema_real_eip !27
  store i1 %48, i1* %PF, !mcsema_real_eip !27
  %49 = icmp eq i32 %44, 0, !mcsema_real_eip !27
  store i1 %49, i1* %ZF, !mcsema_real_eip !27
  %50 = lshr i32 %44, 31, !mcsema_real_eip !27
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !27
  store i1 %51, i1* %SF, !mcsema_real_eip !27
  store i1 false, i1* %CF, !mcsema_real_eip !27
  store i1 false, i1* %OF, !mcsema_real_eip !27
  %52 = icmp eq i1 %51, false, !mcsema_real_eip !28
  %53 = icmp eq i1 %52, false, !mcsema_real_eip !28
  br i1 %53, label %block_0x5e, label %block_0x1d, !mcsema_real_eip !28

block_0x1d:                                       ; preds = %block_0x13
  store i64 2, i64* %XAX, !mcsema_real_eip !29
  %54 = load i32, i32* %43, !mcsema_real_eip !30
  %55 = zext i32 %54 to i64, !mcsema_real_eip !30
  store i64 %55, i64* %XCX, !mcsema_real_eip !30
  %56 = add i64 %RBP_val.44, -20, !mcsema_real_eip !31
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !31
  %EAX.50 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.51 = load i32, i32* %EAX.50, !mcsema_real_eip !31
  %58 = inttoptr i64 %56 to i32*, !mcsema_real_eip !31
  store i32 %EAX_val.51, i32* %58, !mcsema_real_eip !31
  %ECX.52 = bitcast i64* %XCX to i32*, !mcsema_real_eip !32
  %ECX_val.53 = load i32, i32* %ECX.52, !mcsema_real_eip !32
  %59 = zext i32 %ECX_val.53 to i64, !mcsema_real_eip !32
  store i64 %59, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.55 = load i32, i32* %EAX.50, !mcsema_real_eip !33
  %60 = and i32 %EAX_val.55, -2147483648, !mcsema_real_eip !33
  %61 = icmp eq i32 %60, 0, !mcsema_real_eip !33
  %62 = select i1 %61, i32 0, i32 -1, !mcsema_real_eip !33
  %63 = zext i32 %62 to i64, !mcsema_real_eip !33
  store i64 %63, i64* %XDX, !mcsema_real_eip !33
  %RBP_val.56 = load i64, i64* %XBP, !mcsema_real_eip !34
  %64 = add i64 %RBP_val.56, -20, !mcsema_real_eip !34
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !34
  %66 = inttoptr i64 %64 to i32*, !mcsema_real_eip !34
  %67 = load i32, i32* %66, !mcsema_real_eip !34
  %68 = zext i32 %67 to i64, !mcsema_real_eip !34
  store i64 %68, i64* %XCX, !mcsema_real_eip !34
  %ECX_val.58 = load i32, i32* %ECX.52, !mcsema_real_eip !35
  %EDX.61 = bitcast i64* %XDX to i32*, !mcsema_real_eip !35
  %EDX_val.62 = load i32, i32* %EDX.61, !mcsema_real_eip !35
  %69 = zext i32 %EDX_val.62 to i64, !mcsema_real_eip !35
  %70 = shl i64 %69, 32, !mcsema_real_eip !35
  %71 = sext i32 %EAX_val.55 to i64, !mcsema_real_eip !35
  %72 = or i64 %70, %71, !mcsema_real_eip !35
  %73 = sext i32 %ECX_val.58 to i64, !mcsema_real_eip !35
  %74 = sdiv i64 %72, %73, !mcsema_real_eip !35
  %75 = srem i64 %72, %73, !mcsema_real_eip !35
  %76 = trunc i64 %75 to i32, !mcsema_real_eip !35
  %77 = trunc i64 %74 to i32, !mcsema_real_eip !35
  %78 = zext i32 %76 to i64, !mcsema_real_eip !35
  store i64 %78, i64* %XDX, !mcsema_real_eip !35
  %79 = zext i32 %77 to i64, !mcsema_real_eip !35
  store i64 %79, i64* %XAX, !mcsema_real_eip !35
  %EDX_val.64 = load i32, i32* %EDX.61, !mcsema_real_eip !36
  store i1 false, i1* %AF, !mcsema_real_eip !36
  %80 = trunc i32 %EDX_val.64 to i8, !mcsema_real_eip !36
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !36
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !36
  %83 = xor i1 %82, true, !mcsema_real_eip !36
  store i1 %83, i1* %PF, !mcsema_real_eip !36
  %84 = icmp eq i32 %EDX_val.64, 0, !mcsema_real_eip !36
  store i1 %84, i1* %ZF, !mcsema_real_eip !36
  %85 = lshr i32 %EDX_val.64, 31, !mcsema_real_eip !36
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !36
  store i1 %86, i1* %SF, !mcsema_real_eip !36
  store i1 false, i1* %CF, !mcsema_real_eip !36
  store i1 false, i1* %OF, !mcsema_real_eip !36
  %87 = icmp eq i1 %84, false, !mcsema_real_eip !37
  br i1 %87, label %block_0x47, label %block_0x39, !mcsema_real_eip !37

block_0x5e:                                       ; preds = %block_0x13
  %88 = add i64 %RBP_val.44, -16, !mcsema_real_eip !38
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !38
  %90 = inttoptr i64 %88 to i32*, !mcsema_real_eip !38
  %91 = load i32, i32* %90, !mcsema_real_eip !38
  %92 = zext i32 %91 to i64, !mcsema_real_eip !38
  store i64 %92, i64* %XAX, !mcsema_real_eip !38
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !39
  %93 = inttoptr i64 %RSP_val.46 to i64*, !mcsema_real_eip !39
  %94 = load i64, i64* %93, !mcsema_real_eip !39
  store i64 %94, i64* %XBP, !mcsema_real_eip !39
  %95 = add i64 %RSP_val.46, 8, !mcsema_real_eip !39
  store i64 %95, i64* %XSP, !mcsema_real_eip !39
  %96 = add i64 %95, 8, !mcsema_real_eip !40
  %97 = inttoptr i64 %95 to i64*, !mcsema_real_eip !40
  %98 = load i64, i64* %97, !mcsema_real_eip !40
  store i64 %98, i64* %XIP, !mcsema_real_eip !40
  store i64 %96, i64* %XSP, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40

block_0x39:                                       ; preds = %block_0x1d
  %99 = add i64 %RBP_val.56, -12, !mcsema_real_eip !41
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !41
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !41
  %102 = load i32, i32* %101, !mcsema_real_eip !41
  %103 = zext i32 %102 to i64, !mcsema_real_eip !41
  store i64 %103, i64* %XAX, !mcsema_real_eip !41
  %EAX_val.73 = load i32, i32* %EAX.50, !mcsema_real_eip !42
  %104 = add i32 10, %EAX_val.73, !mcsema_real_eip !42
  %105 = xor i32 %104, %EAX_val.73, !mcsema_real_eip !42
  %106 = xor i32 %105, 10, !mcsema_real_eip !42
  %107 = and i32 %106, 16, !mcsema_real_eip !42
  %108 = icmp ne i32 %107, 0, !mcsema_real_eip !42
  store i1 %108, i1* %AF, !mcsema_real_eip !42
  %109 = lshr i32 %104, 31, !mcsema_real_eip !42
  %110 = trunc i32 %109 to i1, !mcsema_real_eip !42
  store i1 %110, i1* %SF, !mcsema_real_eip !42
  %111 = icmp eq i32 %104, 0, !mcsema_real_eip !42
  store i1 %111, i1* %ZF, !mcsema_real_eip !42
  %112 = xor i32 %EAX_val.73, 10, !mcsema_real_eip !42
  %113 = xor i32 %112, -1, !mcsema_real_eip !42
  %114 = and i32 %113, %105, !mcsema_real_eip !42
  %115 = lshr i32 %114, 31, !mcsema_real_eip !42
  %116 = and i32 %115, 1, !mcsema_real_eip !42
  %117 = trunc i32 %116 to i1, !mcsema_real_eip !42
  store i1 %117, i1* %OF, !mcsema_real_eip !42
  %118 = trunc i32 %104 to i8, !mcsema_real_eip !42
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !42
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !42
  %121 = xor i1 %120, true, !mcsema_real_eip !42
  store i1 %121, i1* %PF, !mcsema_real_eip !42
  %122 = icmp ult i32 %104, %EAX_val.73, !mcsema_real_eip !42
  store i1 %122, i1* %CF, !mcsema_real_eip !42
  %123 = zext i32 %104 to i64, !mcsema_real_eip !42
  store i64 %123, i64* %XAX, !mcsema_real_eip !42
  %124 = add i64 %RBP_val.56, -16, !mcsema_real_eip !43
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !43
  %EAX_val.76 = load i32, i32* %EAX.50, !mcsema_real_eip !43
  %126 = inttoptr i64 %124 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.76, i32* %126, !mcsema_real_eip !43
  br label %block_0x50, !mcsema_real_eip !44

block_0x47:                                       ; preds = %block_0x1d
  %127 = add i64 %RBP_val.56, -12, !mcsema_real_eip !45
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !45
  %129 = inttoptr i64 %127 to i32*, !mcsema_real_eip !45
  %130 = load i32, i32* %129, !mcsema_real_eip !45
  %131 = zext i32 %130 to i64, !mcsema_real_eip !45
  store i64 %131, i64* %XAX, !mcsema_real_eip !45
  %EAX_val.67 = load i32, i32* %EAX.50, !mcsema_real_eip !46
  %132 = sub i32 %EAX_val.67, 10, !mcsema_real_eip !46
  %133 = xor i32 %132, %EAX_val.67, !mcsema_real_eip !46
  %134 = xor i32 %133, 10, !mcsema_real_eip !46
  %135 = and i32 %134, 16, !mcsema_real_eip !46
  %136 = icmp ne i32 %135, 0, !mcsema_real_eip !46
  store i1 %136, i1* %AF, !mcsema_real_eip !46
  %137 = trunc i32 %132 to i8, !mcsema_real_eip !46
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !46
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !46
  %140 = xor i1 %139, true, !mcsema_real_eip !46
  store i1 %140, i1* %PF, !mcsema_real_eip !46
  %141 = icmp eq i32 %132, 0, !mcsema_real_eip !46
  store i1 %141, i1* %ZF, !mcsema_real_eip !46
  %142 = lshr i32 %132, 31, !mcsema_real_eip !46
  %143 = trunc i32 %142 to i1, !mcsema_real_eip !46
  store i1 %143, i1* %SF, !mcsema_real_eip !46
  %144 = icmp ult i32 %EAX_val.67, 10, !mcsema_real_eip !46
  store i1 %144, i1* %CF, !mcsema_real_eip !46
  %145 = xor i32 %EAX_val.67, 10, !mcsema_real_eip !46
  %146 = and i32 %145, %133, !mcsema_real_eip !46
  %147 = lshr i32 %146, 31, !mcsema_real_eip !46
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !46
  store i1 %148, i1* %OF, !mcsema_real_eip !46
  %149 = zext i32 %132 to i64, !mcsema_real_eip !46
  store i64 %149, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.70 = load i32, i32* %EAX.50, !mcsema_real_eip !47
  store i32 %EAX_val.70, i32* %129, !mcsema_real_eip !47
  br label %block_0x50, !mcsema_real_eip !41

block_0x50:                                       ; preds = %block_0x47, %block_0x39
  %RBP_val.77 = load i64, i64* %XBP, !mcsema_real_eip !48
  %150 = add i64 %RBP_val.77, -4, !mcsema_real_eip !48
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !48
  %152 = inttoptr i64 %150 to i32*, !mcsema_real_eip !48
  %153 = load i32, i32* %152, !mcsema_real_eip !48
  %154 = zext i32 %153 to i64, !mcsema_real_eip !48
  store i64 %154, i64* %XAX, !mcsema_real_eip !48
  %EAX_val.79 = load i32, i32* %EAX.50, !mcsema_real_eip !49
  %155 = add i32 -1, %EAX_val.79, !mcsema_real_eip !49
  %156 = xor i32 %155, %EAX_val.79, !mcsema_real_eip !49
  %157 = xor i32 %156, -1, !mcsema_real_eip !49
  %158 = and i32 %157, 16, !mcsema_real_eip !49
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !49
  store i1 %159, i1* %AF, !mcsema_real_eip !49
  %160 = lshr i32 %155, 31, !mcsema_real_eip !49
  %161 = trunc i32 %160 to i1, !mcsema_real_eip !49
  store i1 %161, i1* %SF, !mcsema_real_eip !49
  %162 = icmp eq i32 %155, 0, !mcsema_real_eip !49
  store i1 %162, i1* %ZF, !mcsema_real_eip !49
  %163 = xor i32 %EAX_val.79, -1, !mcsema_real_eip !49
  %164 = and i32 %EAX_val.79, %156, !mcsema_real_eip !49
  %165 = lshr i32 %164, 31, !mcsema_real_eip !49
  %166 = and i32 %165, 1, !mcsema_real_eip !49
  %167 = trunc i32 %166 to i1, !mcsema_real_eip !49
  store i1 %167, i1* %OF, !mcsema_real_eip !49
  %168 = trunc i32 %155 to i8, !mcsema_real_eip !49
  %169 = call i8 @llvm.ctpop.i8(i8 %168), !mcsema_real_eip !49
  %170 = trunc i8 %169 to i1, !mcsema_real_eip !49
  %171 = xor i1 %170, true, !mcsema_real_eip !49
  store i1 %171, i1* %PF, !mcsema_real_eip !49
  %172 = icmp ult i32 %155, %EAX_val.79, !mcsema_real_eip !49
  store i1 %172, i1* %CF, !mcsema_real_eip !49
  %173 = zext i32 %155 to i64, !mcsema_real_eip !49
  store i64 %173, i64* %XAX, !mcsema_real_eip !49
  %EAX_val.82 = load i32, i32* %EAX.50, !mcsema_real_eip !50
  store i32 %EAX_val.82, i32* %152, !mcsema_real_eip !50
  br label %block_0x13, !mcsema_real_eip !51
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
define x86_64_sysvcc void @sub_70.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
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
  br label %block_0x70, !mcsema_real_eip !2

block_0x70:                                       ; preds = %entry
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
  store i64 10, i64* %XDI, !mcsema_real_eip !5
  store i64 20, i64* %XSI, !mcsema_real_eip !6
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !7
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %15, !mcsema_real_eip !7
  %_load_rsp_ptr_16 = load i8*, i8** %_RSP_ptr_
  %RSP_val.5 = load i64, i64* %XSP, !mcsema_real_eip !8
  %_new_gep_17 = getelementptr i8, i8* %_load_rsp_ptr_16, i64 -8
  %16 = sub i64 %RSP_val.5, 8, !mcsema_real_eip !8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_18, !mcsema_real_eip !8
  store volatile i8* %_new_gep_17, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !8
  %_load_rbp_ptr_68 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_17, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_68)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xb3 to i64), i64* %XDI, !mcsema_real_eip !9
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EAX.7 = bitcast i64* %XAX to i32*, !mcsema_real_eip !10
  %EAX_val.8 = load i32, i32* %EAX.7, !mcsema_real_eip !10
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !10
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !10
  store i32 %EAX_val.8, i32* %18, !mcsema_real_eip !10
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %19 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !11
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !11
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %20 to i8*
  %_offset_above_rbp_ = sub i64 %19, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %21, label %22

; <label>:21:                                     ; preds = %block_0x70
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %22

; <label>:22:                                     ; preds = %block_0x70, %21
  %23 = phi i32* [ %20, %block_0x70 ], [ %_address_in_parent_stack_bt_, %21 ]
  %_new_load_ = load i32, i32* %23
  %24 = zext i32 %_new_load_ to i64, !mcsema_real_eip !11
  store i64 %24, i64* %XSI, !mcsema_real_eip !11
  %AL.10 = bitcast i64* %XAX to i8*, !mcsema_real_eip !12
  store i8 0, i8* %AL.10, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, !mcsema_real_eip !13
  %RDX_val.13 = load i64, i64* %XDX, !mcsema_real_eip !13
  %RCX_val.14 = load i64, i64* %XCX, !mcsema_real_eip !13
  %R8_val.15 = load i64, i64* %R8, !mcsema_real_eip !13
  %R9_val.16 = load i64, i64* %R9, !mcsema_real_eip !13
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_26 = bitcast i8* %_load_rsp_ptr_25 to i64*
  %_ptr_to_int_72 = ptrtoint i64* %_allin_new_bt_26 to i64
  %_offset_above_rbp_75 = sub i64 %_ptr_to_int_72, %_local_end_to_int_
  %_pot_address_in_parent_stack_76 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_75
  %_cond1_77 = icmp ugt i8* %_load_rsp_ptr_25, %_local_stack_end_ptr_
  %_cond2_1_78 = icmp ugt i8* %_load_rsp_ptr_25, %_parent_stack_end_ptr_
  %_cond2_2_79 = icmp ult i8* %_load_rsp_ptr_25, %_parent_stack_start_ptr_
  %_cond2_80 = or i1 %_cond2_1_78, %_cond2_2_79
  %_cond4_81 = icmp ule i8* %_pot_address_in_parent_stack_76, %_parent_stack_end_ptr_
  %_cond1_n_cond2_82 = and i1 %_cond1_77, %_cond2_80
  %_cond1_n_cond2_cond3_83 = and i1 %_cond1_n_cond2_82, %_cond4_81
  br i1 %_cond1_n_cond2_cond3_83, label %25, label %26

; <label>:25:                                     ; preds = %22
  %_address_in_parent_stack_bt_85 = bitcast i8* %_pot_address_in_parent_stack_76 to i64*
  br label %26

; <label>:26:                                     ; preds = %22, %25
  %27 = phi i64* [ %_allin_new_bt_26, %22 ], [ %_address_in_parent_stack_bt_85, %25 ]
  %_new_load_86 = load i64, i64* %27
  %_new_gep_27 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 8
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %_ptr_to_int_87 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_90 = sub i64 %_ptr_to_int_87, %_local_end_to_int_
  %_pot_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_90
  %_cond1_92 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_93 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_94 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_95 = or i1 %_cond2_1_93, %_cond2_2_94
  %_cond4_96 = icmp ule i8* %_pot_address_in_parent_stack_91, %_parent_stack_end_ptr_
  %_cond1_n_cond2_97 = and i1 %_cond1_92, %_cond2_95
  %_cond1_n_cond2_cond3_98 = and i1 %_cond1_n_cond2_97, %_cond4_96
  br i1 %_cond1_n_cond2_cond3_98, label %28, label %29

; <label>:28:                                     ; preds = %26
  %_address_in_parent_stack_bt_100 = bitcast i8* %_pot_address_in_parent_stack_91 to i64*
  br label %29

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i64* [ %_allin_new_bt_28, %26 ], [ %_address_in_parent_stack_bt_100, %28 ]
  %_new_load_101 = load i64, i64* %30
  %_new_gep_29 = getelementptr i8, i8* %_new_gep_27, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_102 = ptrtoint i64* %_allin_new_bt_30 to i64
  %_offset_above_rbp_105 = sub i64 %_ptr_to_int_102, %_local_end_to_int_
  %_pot_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_105
  %_cond1_107 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_108 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_109 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_110 = or i1 %_cond2_1_108, %_cond2_2_109
  %_cond4_111 = icmp ule i8* %_pot_address_in_parent_stack_106, %_parent_stack_end_ptr_
  %_cond1_n_cond2_112 = and i1 %_cond1_107, %_cond2_110
  %_cond1_n_cond2_cond3_113 = and i1 %_cond1_n_cond2_112, %_cond4_111
  br i1 %_cond1_n_cond2_cond3_113, label %31, label %32

; <label>:31:                                     ; preds = %29
  %_address_in_parent_stack_bt_115 = bitcast i8* %_pot_address_in_parent_stack_106 to i64*
  br label %32

; <label>:32:                                     ; preds = %29, %31
  %33 = phi i64* [ %_allin_new_bt_30, %29 ], [ %_address_in_parent_stack_bt_115, %31 ]
  %_new_load_116 = load i64, i64* %33
  %_new_gep_31 = getelementptr i8, i8* %_new_gep_29, i64 8
  %_allin_new_bt_32 = bitcast i8* %_new_gep_31 to i64*
  %_ptr_to_int_117 = ptrtoint i64* %_allin_new_bt_32 to i64
  %_offset_above_rbp_120 = sub i64 %_ptr_to_int_117, %_local_end_to_int_
  %_pot_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_120
  %_cond1_122 = icmp ugt i8* %_new_gep_31, %_local_stack_end_ptr_
  %_cond2_1_123 = icmp ugt i8* %_new_gep_31, %_parent_stack_end_ptr_
  %_cond2_2_124 = icmp ult i8* %_new_gep_31, %_parent_stack_start_ptr_
  %_cond2_125 = or i1 %_cond2_1_123, %_cond2_2_124
  %_cond4_126 = icmp ule i8* %_pot_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond1_n_cond2_127 = and i1 %_cond1_122, %_cond2_125
  %_cond1_n_cond2_cond3_128 = and i1 %_cond1_n_cond2_127, %_cond4_126
  br i1 %_cond1_n_cond2_cond3_128, label %34, label %35

; <label>:34:                                     ; preds = %32
  %_address_in_parent_stack_bt_130 = bitcast i8* %_pot_address_in_parent_stack_121 to i64*
  br label %35

; <label>:35:                                     ; preds = %32, %34
  %36 = phi i64* [ %_allin_new_bt_32, %32 ], [ %_address_in_parent_stack_bt_130, %34 ]
  %_new_load_131 = load i64, i64* %36
  %_new_gep_33 = getelementptr i8, i8* %_new_gep_31, i64 8
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_132 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_135 = sub i64 %_ptr_to_int_132, %_local_end_to_int_
  %_pot_address_in_parent_stack_136 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_135
  %_cond1_137 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_138 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_139 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_140 = or i1 %_cond2_1_138, %_cond2_2_139
  %_cond4_141 = icmp ule i8* %_pot_address_in_parent_stack_136, %_parent_stack_end_ptr_
  %_cond1_n_cond2_142 = and i1 %_cond1_137, %_cond2_140
  %_cond1_n_cond2_cond3_143 = and i1 %_cond1_n_cond2_142, %_cond4_141
  br i1 %_cond1_n_cond2_cond3_143, label %37, label %38

; <label>:37:                                     ; preds = %35
  %_address_in_parent_stack_bt_145 = bitcast i8* %_pot_address_in_parent_stack_136 to i64*
  br label %38

; <label>:38:                                     ; preds = %35, %37
  %39 = phi i64* [ %_allin_new_bt_34, %35 ], [ %_address_in_parent_stack_bt_145, %37 ]
  %_new_load_146 = load i64, i64* %39
  %_new_gep_35 = getelementptr i8, i8* %_new_gep_33, i64 8
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_147 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_150 = sub i64 %_ptr_to_int_147, %_local_end_to_int_
  %_pot_address_in_parent_stack_151 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_150
  %_cond1_152 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_153 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_154 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_155 = or i1 %_cond2_1_153, %_cond2_2_154
  %_cond4_156 = icmp ule i8* %_pot_address_in_parent_stack_151, %_parent_stack_end_ptr_
  %_cond1_n_cond2_157 = and i1 %_cond1_152, %_cond2_155
  %_cond1_n_cond2_cond3_158 = and i1 %_cond1_n_cond2_157, %_cond4_156
  br i1 %_cond1_n_cond2_cond3_158, label %40, label %41

; <label>:40:                                     ; preds = %38
  %_address_in_parent_stack_bt_160 = bitcast i8* %_pot_address_in_parent_stack_151 to i64*
  br label %41

; <label>:41:                                     ; preds = %38, %40
  %42 = phi i64* [ %_allin_new_bt_36, %38 ], [ %_address_in_parent_stack_bt_160, %40 ]
  %_new_load_161 = load i64, i64* %42
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !13
  %_new_gep_38 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %43 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !13
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_39, !mcsema_real_eip !13
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_
  store i64 %43, i64* %XSP, !mcsema_real_eip !13
  %44 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.11, i64 %24, i64 %RDX_val.13, i64 %RCX_val.14, i64 %R8_val.15, i64 %R9_val.16, i64 %_new_load_86, i64 %_new_load_101, i64 %_new_load_116, i64 %_new_load_131, i64 %_new_load_146, i64 %_new_load_161)
  %_rsp_fix_70 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_71 = getelementptr i8, i8* %_rsp_fix_70, i64 8
  store i8* %_gep_fix_71, i8** %_RSP_ptr_
  store i64 %44, i64* %XAX, !mcsema_real_eip !13
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -8
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %45 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !14
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !14
  %_ptr_bt_164 = bitcast i32* %46 to i8*
  %_offset_above_rbp_165 = sub i64 %45, %_local_end_to_int_
  %_pot_address_in_parent_stack_166 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_165
  %_cond1_167 = icmp ugt i8* %_ptr_bt_164, %_local_stack_end_ptr_
  %_cond2_1_168 = icmp ugt i8* %_ptr_bt_164, %_parent_stack_end_ptr_
  %_cond2_2_169 = icmp ult i8* %_ptr_bt_164, %_parent_stack_start_ptr_
  %_cond2_170 = or i1 %_cond2_1_168, %_cond2_2_169
  %_cond4_171 = icmp ule i8* %_pot_address_in_parent_stack_166, %_parent_stack_end_ptr_
  %_cond1_n_cond2_172 = and i1 %_cond1_167, %_cond2_170
  %_cond1_n_cond2_cond3_173 = and i1 %_cond1_n_cond2_172, %_cond4_171
  br i1 %_cond1_n_cond2_cond3_173, label %47, label %48

; <label>:47:                                     ; preds = %41
  %_address_in_parent_stack_bt_175 = bitcast i8* %_pot_address_in_parent_stack_166 to i32*
  br label %48

; <label>:48:                                     ; preds = %41, %47
  %49 = phi i32* [ %46, %41 ], [ %_address_in_parent_stack_bt_175, %47 ]
  %_new_load_176 = load i32, i32* %49
  %50 = zext i32 %_new_load_176 to i64, !mcsema_real_eip !14
  store i64 %50, i64* %XSI, !mcsema_real_eip !14
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -12
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %EAX_val.22 = load i32, i32* %EAX.7, !mcsema_real_eip !15
  %51 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !15
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.22, i32* %52, !mcsema_real_eip !15
  %ESI.23 = bitcast i64* %XSI to i32*, !mcsema_real_eip !16
  %ESI_val.24 = load i32, i32* %ESI.23, !mcsema_real_eip !16
  %53 = zext i32 %ESI_val.24 to i64, !mcsema_real_eip !16
  store i64 %53, i64* %XAX, !mcsema_real_eip !16
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %RSP_val.25 = load i64, i64* %XSP, !mcsema_real_eip !17
  %_new_gep_47 = getelementptr i8, i8* %_load_rsp_ptr_46, i64 16
  %54 = add i64 16, %RSP_val.25, !mcsema_real_eip !17
  %_trans_p2i_48 = ptrtoint i8* %_new_gep_47 to i64
  %_trans_p2i_49 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  %_trans_xor_50 = xor i64 %_trans_p2i_48, %_trans_p2i_49
  %55 = xor i64 %_trans_xor_50, 16, !mcsema_real_eip !17
  %56 = and i64 %55, 16, !mcsema_real_eip !17
  %57 = icmp ne i64 %56, 0, !mcsema_real_eip !17
  store i1 %57, i1* %AF, !mcsema_real_eip !17
  %58 = lshr i64 %54, 63, !mcsema_real_eip !17
  %59 = trunc i64 %58 to i1, !mcsema_real_eip !17
  store i1 %59, i1* %SF, !mcsema_real_eip !17
  %_trans_icmp_eq_52 = icmp eq i64 %_trans_p2i_48, 0
  store i1 %_trans_icmp_eq_52, i1* %ZF, !mcsema_real_eip !17
  %_trans_xor_54 = xor i64 %_trans_p2i_49, 16
  %60 = xor i64 %_trans_xor_54, -1, !mcsema_real_eip !17
  %61 = and i64 %60, %_trans_xor_50, !mcsema_real_eip !17
  %62 = lshr i64 %61, 63, !mcsema_real_eip !17
  %63 = and i64 %62, 1, !mcsema_real_eip !17
  %64 = trunc i64 %63 to i1, !mcsema_real_eip !17
  store i1 %64, i1* %OF, !mcsema_real_eip !17
  %_trans_trunc_59 = trunc i64 %_trans_p2i_48 to i8
  %65 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_59), !mcsema_real_eip !17
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !17
  %67 = xor i1 %66, true, !mcsema_real_eip !17
  store i1 %67, i1* %PF, !mcsema_real_eip !17
  %_trans_icmp_ne_61 = icmp ne i64 %_trans_p2i_48, %RSP_val.25
  store i1 %_trans_icmp_ne_61, i1* %CF, !mcsema_real_eip !17
  store volatile i8* %_new_gep_47, i8** %_RSP_ptr_
  store i64 %54, i64* %XSP, !mcsema_real_eip !17
  %_allin_new_bt_63 = bitcast i8* %_new_gep_47 to i64*
  %_ptr_to_int_177 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_180 = sub i64 %_ptr_to_int_177, %_local_end_to_int_
  %_pot_address_in_parent_stack_181 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_180
  %_cond1_182 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_183 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_184 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_185 = or i1 %_cond2_1_183, %_cond2_2_184
  %_cond4_186 = icmp ule i8* %_pot_address_in_parent_stack_181, %_parent_stack_end_ptr_
  %_cond1_n_cond2_187 = and i1 %_cond1_182, %_cond2_185
  %_cond1_n_cond2_cond3_188 = and i1 %_cond1_n_cond2_187, %_cond4_186
  br i1 %_cond1_n_cond2_cond3_188, label %68, label %69

; <label>:68:                                     ; preds = %48
  %_address_in_parent_stack_bt_190 = bitcast i8* %_pot_address_in_parent_stack_181 to i64*
  br label %69

; <label>:69:                                     ; preds = %48, %68
  %70 = phi i64* [ %_allin_new_bt_63, %48 ], [ %_address_in_parent_stack_bt_190, %68 ]
  %_new_load_191 = load i64, i64* %70
  %_new_int2ptr_ = inttoptr i64 %_new_load_191 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_191, i64* %XBP, !mcsema_real_eip !18
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_47, i64 8
  %71 = add i64 %54, 8, !mcsema_real_eip !18
  store volatile i8* %_new_gep_64, i8** %_RSP_ptr_
  store i64 %71, i64* %XSP, !mcsema_real_eip !18
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %72 = add i64 %71, 8, !mcsema_real_eip !19
  %_allin_new_bt_67 = bitcast i8* %_new_gep_64 to i64*
  %_ptr_to_int_192 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  br i1 %_cond1_n_cond2_cond3_203, label %73, label %74

; <label>:73:                                     ; preds = %69
  %_address_in_parent_stack_bt_205 = bitcast i8* %_pot_address_in_parent_stack_196 to i64*
  br label %74

; <label>:74:                                     ; preds = %69, %73
  %75 = phi i64* [ %_allin_new_bt_67, %69 ], [ %_address_in_parent_stack_bt_205, %73 ]
  %_new_load_206 = load i64, i64* %75
  store i64 %_new_load_206, i64* %XIP, !mcsema_real_eip !19
  store volatile i8* %_new_gep_66, i8** %_RSP_ptr_
  store i64 %72, i64* %XSP, !mcsema_real_eip !19
  ret void, !mcsema_real_eip !19
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 28
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 28
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !20
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !20
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !20
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !20
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !20
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !20
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !20
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !20
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !20
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !20
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !20
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !20
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !20
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !20
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !20
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !20
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !20
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !20
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !20
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !20
  br label %block_0x0, !mcsema_real_eip !20

block_0x0:                                        ; preds = %entry
  %RSP_val.29 = load i64, i64* %XSP, !mcsema_real_eip !20
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.29, 8, !mcsema_real_eip !20
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !20
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !21
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 -4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %EDI.32 = bitcast i64* %XDI to i32*, !mcsema_real_eip !22
  %EDI_val.33 = load i32, i32* %EDI.32, !mcsema_real_eip !22
  %2 = ptrtoint i64* %_allin_new_bt_4 to i64, !mcsema_real_eip !22
  %3 = inttoptr i64 %2 to i32*, !mcsema_real_eip !22
  store i32 %EDI_val.33, i32* %3, !mcsema_real_eip !22
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -8
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %ESI.35 = bitcast i64* %XSI to i32*, !mcsema_real_eip !23
  %ESI_val.36 = load i32, i32* %ESI.35, !mcsema_real_eip !23
  %4 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !23
  %5 = inttoptr i64 %4 to i32*, !mcsema_real_eip !23
  store i32 %ESI_val.36, i32* %5, !mcsema_real_eip !23
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -4
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %6 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !24
  %7 = inttoptr i64 %6 to i32*, !mcsema_real_eip !24
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %7 to i8*
  %_offset_above_rbp_ = sub i64 %6, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %8, label %9

; <label>:8:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %9

; <label>:9:                                      ; preds = %block_0x0, %8
  %10 = phi i32* [ %7, %block_0x0 ], [ %_address_in_parent_stack_bt_, %8 ]
  %_new_load_ = load i32, i32* %10
  %11 = zext i32 %_new_load_ to i64, !mcsema_real_eip !24
  store i64 %11, i64* %XSI, !mcsema_real_eip !24
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %12 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !25
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !25
  %_ptr_bt_58 = bitcast i32* %13 to i8*
  %_offset_above_rbp_59 = sub i64 %12, %_local_end_to_int_
  %_pot_address_in_parent_stack_60 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_59
  %_cond1_61 = icmp ugt i8* %_ptr_bt_58, %_local_stack_end_ptr_
  %_cond2_1_62 = icmp ugt i8* %_ptr_bt_58, %_parent_stack_end_ptr_
  %_cond2_2_63 = icmp ult i8* %_ptr_bt_58, %_parent_stack_start_ptr_
  %_cond2_64 = or i1 %_cond2_1_62, %_cond2_2_63
  %_cond4_65 = icmp ule i8* %_pot_address_in_parent_stack_60, %_parent_stack_end_ptr_
  %_cond1_n_cond2_66 = and i1 %_cond1_61, %_cond2_64
  %_cond1_n_cond2_cond3_67 = and i1 %_cond1_n_cond2_66, %_cond4_65
  br i1 %_cond1_n_cond2_cond3_67, label %14, label %15

; <label>:14:                                     ; preds = %9
  %_address_in_parent_stack_bt_69 = bitcast i8* %_pot_address_in_parent_stack_60 to i32*
  br label %15

; <label>:15:                                     ; preds = %9, %14
  %16 = phi i32* [ %13, %9 ], [ %_address_in_parent_stack_bt_69, %14 ]
  %_new_load_70 = load i32, i32* %16
  %ESI_val.40 = load i32, i32* %ESI.35, !mcsema_real_eip !25
  %17 = add i32 %ESI_val.40, %_new_load_70, !mcsema_real_eip !25
  %18 = xor i32 %17, %_new_load_70, !mcsema_real_eip !25
  %19 = xor i32 %18, %ESI_val.40, !mcsema_real_eip !25
  %20 = and i32 %19, 16, !mcsema_real_eip !25
  %21 = icmp ne i32 %20, 0, !mcsema_real_eip !25
  store i1 %21, i1* %AF, !mcsema_real_eip !25
  %22 = lshr i32 %17, 31, !mcsema_real_eip !25
  %23 = trunc i32 %22 to i1, !mcsema_real_eip !25
  store i1 %23, i1* %SF, !mcsema_real_eip !25
  %24 = icmp eq i32 %17, 0, !mcsema_real_eip !25
  store i1 %24, i1* %ZF, !mcsema_real_eip !25
  %25 = xor i32 %_new_load_70, %ESI_val.40, !mcsema_real_eip !25
  %26 = xor i32 %25, -1, !mcsema_real_eip !25
  %27 = and i32 %26, %18, !mcsema_real_eip !25
  %28 = lshr i32 %27, 31, !mcsema_real_eip !25
  %29 = and i32 %28, 1, !mcsema_real_eip !25
  %30 = trunc i32 %29 to i1, !mcsema_real_eip !25
  store i1 %30, i1* %OF, !mcsema_real_eip !25
  %31 = trunc i32 %17 to i8, !mcsema_real_eip !25
  %32 = call i8 @llvm.ctpop.i8(i8 %31), !mcsema_real_eip !25
  %33 = trunc i8 %32 to i1, !mcsema_real_eip !25
  %34 = xor i1 %33, true, !mcsema_real_eip !25
  store i1 %34, i1* %PF, !mcsema_real_eip !25
  %35 = icmp ult i32 %17, %_new_load_70, !mcsema_real_eip !25
  store i1 %35, i1* %CF, !mcsema_real_eip !25
  %36 = zext i32 %17 to i64, !mcsema_real_eip !25
  store i64 %36, i64* %XSI, !mcsema_real_eip !25
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -12
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %ESI_val.43 = load i32, i32* %ESI.35, !mcsema_real_eip !26
  %37 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !26
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !26
  store i32 %ESI_val.43, i32* %38, !mcsema_real_eip !26
  br label %block_0x13, !mcsema_real_eip !27

block_0x13:                                       ; preds = %158, %15
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -4
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !27
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !27
  %_ptr_bt_73 = bitcast i32* %40 to i8*
  %_offset_above_rbp_74 = sub i64 %39, %_local_end_to_int_
  %_pot_address_in_parent_stack_75 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_74
  %_cond1_76 = icmp ugt i8* %_ptr_bt_73, %_local_stack_end_ptr_
  %_cond2_1_77 = icmp ugt i8* %_ptr_bt_73, %_parent_stack_end_ptr_
  %_cond2_2_78 = icmp ult i8* %_ptr_bt_73, %_parent_stack_start_ptr_
  %_cond2_79 = or i1 %_cond2_1_77, %_cond2_2_78
  %_cond4_80 = icmp ule i8* %_pot_address_in_parent_stack_75, %_parent_stack_end_ptr_
  %_cond1_n_cond2_81 = and i1 %_cond1_76, %_cond2_79
  %_cond1_n_cond2_cond3_82 = and i1 %_cond1_n_cond2_81, %_cond4_80
  br i1 %_cond1_n_cond2_cond3_82, label %41, label %42

; <label>:41:                                     ; preds = %block_0x13
  %_address_in_parent_stack_bt_84 = bitcast i8* %_pot_address_in_parent_stack_75 to i32*
  br label %42

; <label>:42:                                     ; preds = %block_0x13, %41
  %43 = phi i32* [ %40, %block_0x13 ], [ %_address_in_parent_stack_bt_84, %41 ]
  %_new_load_85 = load i32, i32* %43
  store i1 false, i1* %AF, !mcsema_real_eip !27
  %44 = trunc i32 %_new_load_85 to i8, !mcsema_real_eip !27
  %45 = call i8 @llvm.ctpop.i8(i8 %44), !mcsema_real_eip !27
  %46 = trunc i8 %45 to i1, !mcsema_real_eip !27
  %47 = xor i1 %46, true, !mcsema_real_eip !27
  store i1 %47, i1* %PF, !mcsema_real_eip !27
  %48 = icmp eq i32 %_new_load_85, 0, !mcsema_real_eip !27
  store i1 %48, i1* %ZF, !mcsema_real_eip !27
  %49 = lshr i32 %_new_load_85, 31, !mcsema_real_eip !27
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !27
  store i1 %50, i1* %SF, !mcsema_real_eip !27
  store i1 false, i1* %CF, !mcsema_real_eip !27
  store i1 false, i1* %OF, !mcsema_real_eip !27
  %51 = icmp eq i1 %50, false, !mcsema_real_eip !28
  %52 = icmp eq i1 %51, false, !mcsema_real_eip !28
  br i1 %52, label %block_0x5e, label %block_0x1d, !mcsema_real_eip !28

block_0x1d:                                       ; preds = %42
  store i64 2, i64* %XAX, !mcsema_real_eip !29
  br i1 %_cond1_n_cond2_cond3_82, label %53, label %54

; <label>:53:                                     ; preds = %block_0x1d
  %_address_in_parent_stack_bt_99 = bitcast i8* %_pot_address_in_parent_stack_75 to i32*
  br label %54

; <label>:54:                                     ; preds = %block_0x1d, %53
  %55 = phi i32* [ %40, %block_0x1d ], [ %_address_in_parent_stack_bt_99, %53 ]
  %_new_load_100 = load i32, i32* %55
  %56 = zext i32 %_new_load_100 to i64, !mcsema_real_eip !30
  store i64 %56, i64* %XCX, !mcsema_real_eip !30
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -20
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %EAX.50 = bitcast i64* %XAX to i32*, !mcsema_real_eip !31
  %EAX_val.51 = load i32, i32* %EAX.50, !mcsema_real_eip !31
  %57 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !31
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !31
  store i32 %EAX_val.51, i32* %58, !mcsema_real_eip !31
  %ECX.52 = bitcast i64* %XCX to i32*, !mcsema_real_eip !32
  %ECX_val.53 = load i32, i32* %ECX.52, !mcsema_real_eip !32
  %59 = zext i32 %ECX_val.53 to i64, !mcsema_real_eip !32
  store i64 %59, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.55 = load i32, i32* %EAX.50, !mcsema_real_eip !33
  %60 = and i32 %EAX_val.55, -2147483648, !mcsema_real_eip !33
  %61 = icmp eq i32 %60, 0, !mcsema_real_eip !33
  %62 = select i1 %61, i32 0, i32 -1, !mcsema_real_eip !33
  %63 = zext i32 %62 to i64, !mcsema_real_eip !33
  store i64 %63, i64* %XDX, !mcsema_real_eip !33
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -20
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %64 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !34
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !34
  %_ptr_bt_103 = bitcast i32* %65 to i8*
  %_offset_above_rbp_104 = sub i64 %64, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_ptr_bt_103, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_ptr_bt_103, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_ptr_bt_103, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  br i1 %_cond1_n_cond2_cond3_112, label %66, label %67

; <label>:66:                                     ; preds = %54
  %_address_in_parent_stack_bt_114 = bitcast i8* %_pot_address_in_parent_stack_105 to i32*
  br label %67

; <label>:67:                                     ; preds = %54, %66
  %68 = phi i32* [ %65, %54 ], [ %_address_in_parent_stack_bt_114, %66 ]
  %_new_load_115 = load i32, i32* %68
  %69 = zext i32 %_new_load_115 to i64, !mcsema_real_eip !34
  store i64 %69, i64* %XCX, !mcsema_real_eip !34
  %ECX_val.58 = load i32, i32* %ECX.52, !mcsema_real_eip !35
  %EDX.61 = bitcast i64* %XDX to i32*, !mcsema_real_eip !35
  %EDX_val.62 = load i32, i32* %EDX.61, !mcsema_real_eip !35
  %70 = zext i32 %EDX_val.62 to i64, !mcsema_real_eip !35
  %71 = shl i64 %70, 32, !mcsema_real_eip !35
  %72 = sext i32 %EAX_val.55 to i64, !mcsema_real_eip !35
  %73 = or i64 %71, %72, !mcsema_real_eip !35
  %74 = sext i32 %ECX_val.58 to i64, !mcsema_real_eip !35
  %75 = sdiv i64 %73, %74, !mcsema_real_eip !35
  %76 = srem i64 %73, %74, !mcsema_real_eip !35
  %77 = trunc i64 %76 to i32, !mcsema_real_eip !35
  %78 = trunc i64 %75 to i32, !mcsema_real_eip !35
  %79 = zext i32 %77 to i64, !mcsema_real_eip !35
  store i64 %79, i64* %XDX, !mcsema_real_eip !35
  %80 = zext i32 %78 to i64, !mcsema_real_eip !35
  store i64 %80, i64* %XAX, !mcsema_real_eip !35
  %EDX_val.64 = load i32, i32* %EDX.61, !mcsema_real_eip !36
  store i1 false, i1* %AF, !mcsema_real_eip !36
  %81 = trunc i32 %EDX_val.64 to i8, !mcsema_real_eip !36
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !36
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !36
  %84 = xor i1 %83, true, !mcsema_real_eip !36
  store i1 %84, i1* %PF, !mcsema_real_eip !36
  %85 = icmp eq i32 %EDX_val.64, 0, !mcsema_real_eip !36
  store i1 %85, i1* %ZF, !mcsema_real_eip !36
  %86 = lshr i32 %EDX_val.64, 31, !mcsema_real_eip !36
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !36
  store i1 %87, i1* %SF, !mcsema_real_eip !36
  store i1 false, i1* %CF, !mcsema_real_eip !36
  store i1 false, i1* %OF, !mcsema_real_eip !36
  %88 = icmp eq i1 %85, false, !mcsema_real_eip !37
  br i1 %88, label %block_0x47, label %block_0x39, !mcsema_real_eip !37

block_0x5e:                                       ; preds = %42
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -16
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %89 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !38
  %90 = inttoptr i64 %89 to i32*, !mcsema_real_eip !38
  %_ptr_bt_118 = bitcast i32* %90 to i8*
  %_offset_above_rbp_119 = sub i64 %89, %_local_end_to_int_
  %_pot_address_in_parent_stack_120 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_119
  %_cond1_121 = icmp ugt i8* %_ptr_bt_118, %_local_stack_end_ptr_
  %_cond2_1_122 = icmp ugt i8* %_ptr_bt_118, %_parent_stack_end_ptr_
  %_cond2_2_123 = icmp ult i8* %_ptr_bt_118, %_parent_stack_start_ptr_
  %_cond2_124 = or i1 %_cond2_1_122, %_cond2_2_123
  %_cond4_125 = icmp ule i8* %_pot_address_in_parent_stack_120, %_parent_stack_end_ptr_
  %_cond1_n_cond2_126 = and i1 %_cond1_121, %_cond2_124
  %_cond1_n_cond2_cond3_127 = and i1 %_cond1_n_cond2_126, %_cond4_125
  br i1 %_cond1_n_cond2_cond3_127, label %91, label %92

; <label>:91:                                     ; preds = %block_0x5e
  %_address_in_parent_stack_bt_129 = bitcast i8* %_pot_address_in_parent_stack_120 to i32*
  br label %92

; <label>:92:                                     ; preds = %block_0x5e, %91
  %93 = phi i32* [ %90, %block_0x5e ], [ %_address_in_parent_stack_bt_129, %91 ]
  %_new_load_130 = load i32, i32* %93
  %94 = zext i32 %_new_load_130 to i64, !mcsema_real_eip !38
  store i64 %94, i64* %XAX, !mcsema_real_eip !38
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !39
  %_allin_new_bt_33 = bitcast i8* %_load_rsp_ptr_32 to i64*
  %_ptr_to_int_131 = ptrtoint i64* %_allin_new_bt_33 to i64
  %_offset_above_rbp_134 = sub i64 %_ptr_to_int_131, %_local_end_to_int_
  %_pot_address_in_parent_stack_135 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_134
  %_cond1_136 = icmp ugt i8* %_load_rsp_ptr_32, %_local_stack_end_ptr_
  %_cond2_1_137 = icmp ugt i8* %_load_rsp_ptr_32, %_parent_stack_end_ptr_
  %_cond2_2_138 = icmp ult i8* %_load_rsp_ptr_32, %_parent_stack_start_ptr_
  %_cond2_139 = or i1 %_cond2_1_137, %_cond2_2_138
  %_cond4_140 = icmp ule i8* %_pot_address_in_parent_stack_135, %_parent_stack_end_ptr_
  %_cond1_n_cond2_141 = and i1 %_cond1_136, %_cond2_139
  %_cond1_n_cond2_cond3_142 = and i1 %_cond1_n_cond2_141, %_cond4_140
  br i1 %_cond1_n_cond2_cond3_142, label %95, label %96

; <label>:95:                                     ; preds = %92
  %_address_in_parent_stack_bt_144 = bitcast i8* %_pot_address_in_parent_stack_135 to i64*
  br label %96

; <label>:96:                                     ; preds = %92, %95
  %97 = phi i64* [ %_allin_new_bt_33, %92 ], [ %_address_in_parent_stack_bt_144, %95 ]
  %_new_load_145 = load i64, i64* %97
  %_new_int2ptr_ = inttoptr i64 %_new_load_145 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_145, i64* %XBP, !mcsema_real_eip !39
  %_new_gep_34 = getelementptr i8, i8* %_load_rsp_ptr_32, i64 8
  %98 = add i64 %RSP_val.46, 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_
  store i64 %98, i64* %XSP, !mcsema_real_eip !39
  %_new_gep_36 = getelementptr i8, i8* %_new_gep_34, i64 8
  %99 = add i64 %98, 8, !mcsema_real_eip !40
  %_allin_new_bt_37 = bitcast i8* %_new_gep_34 to i64*
  %_ptr_to_int_146 = ptrtoint i64* %_allin_new_bt_37 to i64
  %_offset_above_rbp_149 = sub i64 %_ptr_to_int_146, %_local_end_to_int_
  %_pot_address_in_parent_stack_150 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_149
  %_cond1_151 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_152 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_153 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_154 = or i1 %_cond2_1_152, %_cond2_2_153
  %_cond4_155 = icmp ule i8* %_pot_address_in_parent_stack_150, %_parent_stack_end_ptr_
  %_cond1_n_cond2_156 = and i1 %_cond1_151, %_cond2_154
  %_cond1_n_cond2_cond3_157 = and i1 %_cond1_n_cond2_156, %_cond4_155
  br i1 %_cond1_n_cond2_cond3_157, label %100, label %101

; <label>:100:                                    ; preds = %96
  %_address_in_parent_stack_bt_159 = bitcast i8* %_pot_address_in_parent_stack_150 to i64*
  br label %101

; <label>:101:                                    ; preds = %96, %100
  %102 = phi i64* [ %_allin_new_bt_37, %96 ], [ %_address_in_parent_stack_bt_159, %100 ]
  %_new_load_160 = load i64, i64* %102
  store i64 %_new_load_160, i64* %XIP, !mcsema_real_eip !40
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_
  store i64 %99, i64* %XSP, !mcsema_real_eip !40
  ret void, !mcsema_real_eip !40

block_0x39:                                       ; preds = %67
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -12
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %103 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !41
  %104 = inttoptr i64 %103 to i32*, !mcsema_real_eip !41
  %_ptr_bt_163 = bitcast i32* %104 to i8*
  %_offset_above_rbp_164 = sub i64 %103, %_local_end_to_int_
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %_ptr_bt_163, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %_ptr_bt_163, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %_ptr_bt_163, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  br i1 %_cond1_n_cond2_cond3_172, label %105, label %106

; <label>:105:                                    ; preds = %block_0x39
  %_address_in_parent_stack_bt_174 = bitcast i8* %_pot_address_in_parent_stack_165 to i32*
  br label %106

; <label>:106:                                    ; preds = %block_0x39, %105
  %107 = phi i32* [ %104, %block_0x39 ], [ %_address_in_parent_stack_bt_174, %105 ]
  %_new_load_175 = load i32, i32* %107
  %108 = zext i32 %_new_load_175 to i64, !mcsema_real_eip !41
  store i64 %108, i64* %XAX, !mcsema_real_eip !41
  %EAX_val.73 = load i32, i32* %EAX.50, !mcsema_real_eip !42
  %109 = add i32 10, %EAX_val.73, !mcsema_real_eip !42
  %110 = xor i32 %109, %EAX_val.73, !mcsema_real_eip !42
  %111 = xor i32 %110, 10, !mcsema_real_eip !42
  %112 = and i32 %111, 16, !mcsema_real_eip !42
  %113 = icmp ne i32 %112, 0, !mcsema_real_eip !42
  store i1 %113, i1* %AF, !mcsema_real_eip !42
  %114 = lshr i32 %109, 31, !mcsema_real_eip !42
  %115 = trunc i32 %114 to i1, !mcsema_real_eip !42
  store i1 %115, i1* %SF, !mcsema_real_eip !42
  %116 = icmp eq i32 %109, 0, !mcsema_real_eip !42
  store i1 %116, i1* %ZF, !mcsema_real_eip !42
  %117 = xor i32 %EAX_val.73, 10, !mcsema_real_eip !42
  %118 = xor i32 %117, -1, !mcsema_real_eip !42
  %119 = and i32 %118, %110, !mcsema_real_eip !42
  %120 = lshr i32 %119, 31, !mcsema_real_eip !42
  %121 = and i32 %120, 1, !mcsema_real_eip !42
  %122 = trunc i32 %121 to i1, !mcsema_real_eip !42
  store i1 %122, i1* %OF, !mcsema_real_eip !42
  %123 = trunc i32 %109 to i8, !mcsema_real_eip !42
  %124 = call i8 @llvm.ctpop.i8(i8 %123), !mcsema_real_eip !42
  %125 = trunc i8 %124 to i1, !mcsema_real_eip !42
  %126 = xor i1 %125, true, !mcsema_real_eip !42
  store i1 %126, i1* %PF, !mcsema_real_eip !42
  %127 = icmp ult i32 %109, %EAX_val.73, !mcsema_real_eip !42
  store i1 %127, i1* %CF, !mcsema_real_eip !42
  %128 = zext i32 %109 to i64, !mcsema_real_eip !42
  store i64 %128, i64* %XAX, !mcsema_real_eip !42
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -16
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %EAX_val.76 = load i32, i32* %EAX.50, !mcsema_real_eip !43
  %129 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !43
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.76, i32* %130, !mcsema_real_eip !43
  br label %block_0x50, !mcsema_real_eip !44

block_0x47:                                       ; preds = %67
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -12
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %131 = ptrtoint i64* %_allin_new_bt_46 to i64, !mcsema_real_eip !45
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !45
  %_ptr_bt_178 = bitcast i32* %132 to i8*
  %_offset_above_rbp_179 = sub i64 %131, %_local_end_to_int_
  %_pot_address_in_parent_stack_180 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_179
  %_cond1_181 = icmp ugt i8* %_ptr_bt_178, %_local_stack_end_ptr_
  %_cond2_1_182 = icmp ugt i8* %_ptr_bt_178, %_parent_stack_end_ptr_
  %_cond2_2_183 = icmp ult i8* %_ptr_bt_178, %_parent_stack_start_ptr_
  %_cond2_184 = or i1 %_cond2_1_182, %_cond2_2_183
  %_cond4_185 = icmp ule i8* %_pot_address_in_parent_stack_180, %_parent_stack_end_ptr_
  %_cond1_n_cond2_186 = and i1 %_cond1_181, %_cond2_184
  %_cond1_n_cond2_cond3_187 = and i1 %_cond1_n_cond2_186, %_cond4_185
  br i1 %_cond1_n_cond2_cond3_187, label %133, label %134

; <label>:133:                                    ; preds = %block_0x47
  %_address_in_parent_stack_bt_189 = bitcast i8* %_pot_address_in_parent_stack_180 to i32*
  br label %134

; <label>:134:                                    ; preds = %block_0x47, %133
  %135 = phi i32* [ %132, %block_0x47 ], [ %_address_in_parent_stack_bt_189, %133 ]
  %_new_load_190 = load i32, i32* %135
  %136 = zext i32 %_new_load_190 to i64, !mcsema_real_eip !45
  store i64 %136, i64* %XAX, !mcsema_real_eip !45
  %EAX_val.67 = load i32, i32* %EAX.50, !mcsema_real_eip !46
  %137 = sub i32 %EAX_val.67, 10, !mcsema_real_eip !46
  %138 = xor i32 %137, %EAX_val.67, !mcsema_real_eip !46
  %139 = xor i32 %138, 10, !mcsema_real_eip !46
  %140 = and i32 %139, 16, !mcsema_real_eip !46
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !46
  store i1 %141, i1* %AF, !mcsema_real_eip !46
  %142 = trunc i32 %137 to i8, !mcsema_real_eip !46
  %143 = call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !46
  %144 = trunc i8 %143 to i1, !mcsema_real_eip !46
  %145 = xor i1 %144, true, !mcsema_real_eip !46
  store i1 %145, i1* %PF, !mcsema_real_eip !46
  %146 = icmp eq i32 %137, 0, !mcsema_real_eip !46
  store i1 %146, i1* %ZF, !mcsema_real_eip !46
  %147 = lshr i32 %137, 31, !mcsema_real_eip !46
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !46
  store i1 %148, i1* %SF, !mcsema_real_eip !46
  %149 = icmp ult i32 %EAX_val.67, 10, !mcsema_real_eip !46
  store i1 %149, i1* %CF, !mcsema_real_eip !46
  %150 = xor i32 %EAX_val.67, 10, !mcsema_real_eip !46
  %151 = and i32 %150, %138, !mcsema_real_eip !46
  %152 = lshr i32 %151, 31, !mcsema_real_eip !46
  %153 = trunc i32 %152 to i1, !mcsema_real_eip !46
  store i1 %153, i1* %OF, !mcsema_real_eip !46
  %154 = zext i32 %137 to i64, !mcsema_real_eip !46
  store i64 %154, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.70 = load i32, i32* %EAX.50, !mcsema_real_eip !47
  store i32 %EAX_val.70, i32* %132, !mcsema_real_eip !47
  br label %block_0x50, !mcsema_real_eip !41

block_0x50:                                       ; preds = %134, %106
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -4
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %155 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !48
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !48
  %_ptr_bt_193 = bitcast i32* %156 to i8*
  %_offset_above_rbp_194 = sub i64 %155, %_local_end_to_int_
  %_pot_address_in_parent_stack_195 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_194
  %_cond1_196 = icmp ugt i8* %_ptr_bt_193, %_local_stack_end_ptr_
  %_cond2_1_197 = icmp ugt i8* %_ptr_bt_193, %_parent_stack_end_ptr_
  %_cond2_2_198 = icmp ult i8* %_ptr_bt_193, %_parent_stack_start_ptr_
  %_cond2_199 = or i1 %_cond2_1_197, %_cond2_2_198
  %_cond4_200 = icmp ule i8* %_pot_address_in_parent_stack_195, %_parent_stack_end_ptr_
  %_cond1_n_cond2_201 = and i1 %_cond1_196, %_cond2_199
  %_cond1_n_cond2_cond3_202 = and i1 %_cond1_n_cond2_201, %_cond4_200
  br i1 %_cond1_n_cond2_cond3_202, label %157, label %158

; <label>:157:                                    ; preds = %block_0x50
  %_address_in_parent_stack_bt_204 = bitcast i8* %_pot_address_in_parent_stack_195 to i32*
  br label %158

; <label>:158:                                    ; preds = %block_0x50, %157
  %159 = phi i32* [ %156, %block_0x50 ], [ %_address_in_parent_stack_bt_204, %157 ]
  %_new_load_205 = load i32, i32* %159
  %160 = zext i32 %_new_load_205 to i64, !mcsema_real_eip !48
  store i64 %160, i64* %XAX, !mcsema_real_eip !48
  %EAX_val.79 = load i32, i32* %EAX.50, !mcsema_real_eip !49
  %161 = add i32 -1, %EAX_val.79, !mcsema_real_eip !49
  %162 = xor i32 %161, %EAX_val.79, !mcsema_real_eip !49
  %163 = xor i32 %162, -1, !mcsema_real_eip !49
  %164 = and i32 %163, 16, !mcsema_real_eip !49
  %165 = icmp ne i32 %164, 0, !mcsema_real_eip !49
  store i1 %165, i1* %AF, !mcsema_real_eip !49
  %166 = lshr i32 %161, 31, !mcsema_real_eip !49
  %167 = trunc i32 %166 to i1, !mcsema_real_eip !49
  store i1 %167, i1* %SF, !mcsema_real_eip !49
  %168 = icmp eq i32 %161, 0, !mcsema_real_eip !49
  store i1 %168, i1* %ZF, !mcsema_real_eip !49
  %169 = xor i32 %EAX_val.79, -1, !mcsema_real_eip !49
  %170 = and i32 %EAX_val.79, %162, !mcsema_real_eip !49
  %171 = lshr i32 %170, 31, !mcsema_real_eip !49
  %172 = and i32 %171, 1, !mcsema_real_eip !49
  %173 = trunc i32 %172 to i1, !mcsema_real_eip !49
  store i1 %173, i1* %OF, !mcsema_real_eip !49
  %174 = trunc i32 %161 to i8, !mcsema_real_eip !49
  %175 = call i8 @llvm.ctpop.i8(i8 %174), !mcsema_real_eip !49
  %176 = trunc i8 %175 to i1, !mcsema_real_eip !49
  %177 = xor i1 %176, true, !mcsema_real_eip !49
  store i1 %177, i1* %PF, !mcsema_real_eip !49
  %178 = icmp ult i32 %161, %EAX_val.79, !mcsema_real_eip !49
  store i1 %178, i1* %CF, !mcsema_real_eip !49
  %179 = zext i32 %161 to i64, !mcsema_real_eip !49
  store i64 %179, i64* %XAX, !mcsema_real_eip !49
  %EAX_val.82 = load i32, i32* %EAX.50, !mcsema_real_eip !50
  store i32 %EAX_val.82, i32* %156, !mcsema_real_eip !50
  br label %block_0x13, !mcsema_real_eip !51
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 112}
!3 = !{i64 113}
!4 = !{i64 116}
!5 = !{i64 120}
!6 = !{i64 125}
!7 = !{i64 130}
!8 = !{i64 137}
!9 = !{i64 142}
!10 = !{i64 152}
!11 = !{i64 155}
!12 = !{i64 158}
!13 = !{i64 160}
!14 = !{i64 165}
!15 = !{i64 168}
!16 = !{i64 171}
!17 = !{i64 173}
!18 = !{i64 177}
!19 = !{i64 178}
!20 = !{i64 0}
!21 = !{i64 1}
!22 = !{i64 4}
!23 = !{i64 7}
!24 = !{i64 10}
!25 = !{i64 13}
!26 = !{i64 16}
!27 = !{i64 19}
!28 = !{i64 23}
!29 = !{i64 29}
!30 = !{i64 34}
!31 = !{i64 37}
!32 = !{i64 40}
!33 = !{i64 42}
!34 = !{i64 43}
!35 = !{i64 46}
!36 = !{i64 48}
!37 = !{i64 51}
!38 = !{i64 94}
!39 = !{i64 97}
!40 = !{i64 98}
!41 = !{i64 57}
!42 = !{i64 60}
!43 = !{i64 63}
!44 = !{i64 66}
!45 = !{i64 71}
!46 = !{i64 74}
!47 = !{i64 77}
!48 = !{i64 80}
!49 = !{i64 83}
!50 = !{i64 86}
!51 = !{i64 89}
