; ModuleID = 'Output/test_26.clang.trans.bc'
source_filename = "Output/test_26.clang.bc"
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
module asm "  .globl sub_120;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_120(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x221 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x228 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\16\01\00\00\00A\0E\10\86\02C\0D\06A\83\03\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\01\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_120(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 160
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 160
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
  br label %block_0x120, !mcsema_real_eip !2

block_0x120:                                      ; preds = %entry
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -144
  %2 = sub i64 %RSP_val.3, 144, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 144, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 144
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 144
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x221 to i64), i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %15, !mcsema_real_eip !6
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 10, i32* %17, !mcsema_real_eip !7
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %19, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %21, !mcsema_real_eip !9
  store i64 24, i64* %XAX, !mcsema_real_eip !10
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !11
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !11
  %22 = zext i32 %EAX_val.9 to i64, !mcsema_real_eip !11
  store i64 %22, i64* %XCX, !mcsema_real_eip !11
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -88
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %RDI_val.11 = load i64, i64* %XDI, !mcsema_real_eip !12
  store i64 %RDI_val.11, i64* %_allin_new_bt_27, !mcsema_real_eip !12
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !13
  store i64 %RCX_val.12, i64* %XDI, !mcsema_real_eip !13
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %23 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !14
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !14
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %23, i64* %XSP, !mcsema_real_eip !14
  %24 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.12)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %24, i64* %XAX, !mcsema_real_eip !14
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %24, i64* %_allin_new_bt_33, !mcsema_real_eip !15
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %25 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !16
  store i64 %25, i64* %XAX, !mcsema_real_eip !16
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !17
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !17
  store i32 5, i32* %27, !mcsema_real_eip !17
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %28 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !18
  store i64 %28, i64* %XAX, !mcsema_real_eip !18
  %29 = add i64 %28, 4, !mcsema_real_eip !19
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !19
  %31 = inttoptr i64 %29 to i32*, !mcsema_real_eip !19
  store i32 5, i32* %31, !mcsema_real_eip !19
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %32 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !20
  store i64 %32, i64* %XAX, !mcsema_real_eip !20
  %33 = add i64 %32, 8, !mcsema_real_eip !21
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !21
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !21
  store i32 5, i32* %35, !mcsema_real_eip !21
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %36 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !22
  store i64 %36, i64* %XAX, !mcsema_real_eip !22
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %37 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !23
  %38 = inttoptr i64 %37 to i32*, !mcsema_real_eip !23
  %39 = load i32, i32* %38, !mcsema_real_eip !23
  %40 = zext i32 %39 to i64, !mcsema_real_eip !23
  store i64 %40, i64* %XDX, !mcsema_real_eip !23
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -48
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %EDX.26 = bitcast i64* %XDX to i32*, !mcsema_real_eip !24
  %EDX_val.27 = load i32, i32* %EDX.26, !mcsema_real_eip !24
  %41 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !24
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !24
  store i32 %EDX_val.27, i32* %42, !mcsema_real_eip !24
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -16
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %43 = load i64, i64* %_allin_new_bt_54, !mcsema_real_eip !25
  store i64 %43, i64* %XCX, !mcsema_real_eip !25
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -56
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 %43, i64* %_allin_new_bt_57, !mcsema_real_eip !26
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -56
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %44 = load i64, i64* %_allin_new_bt_60, !mcsema_real_eip !27
  store i64 %44, i64* %XDI, !mcsema_real_eip !27
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -48
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %45 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !28
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !28
  %47 = load i32, i32* %46, !mcsema_real_eip !28
  %48 = zext i32 %47 to i64, !mcsema_real_eip !28
  store i64 %48, i64* %XSI, !mcsema_real_eip !28
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -8
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %49 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !29
  %50 = inttoptr i64 %49 to i32*, !mcsema_real_eip !29
  %51 = load i32, i32* %50, !mcsema_real_eip !29
  %52 = zext i32 %51 to i64, !mcsema_real_eip !29
  store i64 %52, i64* %XDX, !mcsema_real_eip !29
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_68 = ptrtoint i8* %_load_rsp_ptr_67 to i64
  store volatile i64 %_new_ptr2int_68, i64* %XCX
  %53 = add i64 %_new_ptr2int_68, 16, !mcsema_real_eip !30
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !30
  %EDX_val.37 = load i32, i32* %EDX.26, !mcsema_real_eip !30
  %55 = inttoptr i64 %53 to i32*, !mcsema_real_eip !30
  store i32 %EDX_val.37, i32* %55, !mcsema_real_eip !30
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_69, i64 -16
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %56 = load i64, i64* %_allin_new_bt_71, !mcsema_real_eip !31
  store i64 %56, i64* %R8, !mcsema_real_eip !31
  %RCX_val.39 = load i64, i64* %XCX, !mcsema_real_eip !32
  %57 = add i64 %RCX_val.39, 8, !mcsema_real_eip !32
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !32
  store i64 %56, i64* %58, !mcsema_real_eip !32
  %RCX_val.41 = load i64, i64* %XCX, !mcsema_real_eip !33
  %59 = add i64 %RCX_val.41, 32, !mcsema_real_eip !33
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !33
  %RAX_val.42 = load i64, i64* %XAX, !mcsema_real_eip !33
  store i64 %RAX_val.42, i64* %60, !mcsema_real_eip !33
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -16
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %61 = ptrtoint i64* %_allin_new_bt_74 to i64, !mcsema_real_eip !34
  store i64 %61, i64* %R8, !mcsema_real_eip !34
  %RCX_val.44 = load i64, i64* %XCX, !mcsema_real_eip !35
  %62 = add i64 %RCX_val.44, 24, !mcsema_real_eip !35
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !35
  store i64 %61, i64* %63, !mcsema_real_eip !35
  %RCX_val.46 = load i64, i64* %XCX, !mcsema_real_eip !36
  %64 = inttoptr i64 %RCX_val.46 to i64*, !mcsema_real_eip !36
  %65 = inttoptr i64 %RCX_val.46 to i32*, !mcsema_real_eip !36
  store i32 3, i32* %65, !mcsema_real_eip !36
  store i64 1, i64* %XDX, !mcsema_real_eip !37
  store i64 2, i64* %R9, !mcsema_real_eip !38
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -92
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %EDX_val.49 = load i32, i32* %EDX.26, !mcsema_real_eip !39
  %66 = ptrtoint i64* %_allin_new_bt_77 to i64, !mcsema_real_eip !39
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !39
  store i32 %EDX_val.49, i32* %67, !mcsema_real_eip !39
  %R8_val.50 = load i64, i64* %R8, !mcsema_real_eip !40
  store i64 %R8_val.50, i64* %XDX, !mcsema_real_eip !40
  %RAX_val.51 = load i64, i64* %XAX, !mcsema_real_eip !41
  store i64 %RAX_val.51, i64* %XCX, !mcsema_real_eip !41
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -92
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %68 = ptrtoint i64* %_allin_new_bt_80 to i64, !mcsema_real_eip !42
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !42
  %70 = load i32, i32* %69, !mcsema_real_eip !42
  %71 = zext i32 %70 to i64, !mcsema_real_eip !42
  store i64 %71, i64* %R8, !mcsema_real_eip !42
  %_load_rsp_ptr_81 = load i8*, i8** %_RSP_ptr_
  %RSP_val.53 = load i64, i64* %XSP, !mcsema_real_eip !43
  %_new_gep_82 = getelementptr i8, i8* %_load_rsp_ptr_81, i64 -8
  %72 = sub i64 %RSP_val.53, 8, !mcsema_real_eip !43
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_83, !mcsema_real_eip !43
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_
  store i64 %72, i64* %XSP, !mcsema_real_eip !43
  %_load_rbp_ptr_163 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_82, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_163)
  %_rsp_fix_165 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_166 = getelementptr i8, i8* %_rsp_fix_165, i64 8
  store i8* %_gep_fix_166, i8** %_RSP_ptr_
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -64
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %EDX_val.56 = load i32, i32* %EDX.26, !mcsema_real_eip !44
  %73 = ptrtoint i64* %_allin_new_bt_86 to i64, !mcsema_real_eip !44
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !44
  store i32 %EDX_val.56, i32* %74, !mcsema_real_eip !44
  %_load_rbp_ptr_87 = load i8*, i8** %_RBP_ptr_
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_87, i64 -72
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %RAX_val.58 = load i64, i64* %XAX, !mcsema_real_eip !45
  store i64 %RAX_val.58, i64* %_allin_new_bt_89, !mcsema_real_eip !45
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -72
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %75 = load i64, i64* %_allin_new_bt_92, !mcsema_real_eip !46
  store i64 %75, i64* %XAX, !mcsema_real_eip !46
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -40
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  store i64 %75, i64* %_allin_new_bt_95, !mcsema_real_eip !47
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -64
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %76 = ptrtoint i64* %_allin_new_bt_98 to i64, !mcsema_real_eip !48
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !48
  %78 = load i32, i32* %77, !mcsema_real_eip !48
  %79 = zext i32 %78 to i64, !mcsema_real_eip !48
  store i64 %79, i64* %XDX, !mcsema_real_eip !48
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -32
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %EDX_val.65 = load i32, i32* %EDX.26, !mcsema_real_eip !49
  %80 = ptrtoint i64* %_allin_new_bt_101 to i64, !mcsema_real_eip !49
  %81 = inttoptr i64 %80 to i32*, !mcsema_real_eip !49
  store i32 %EDX_val.65, i32* %81, !mcsema_real_eip !49
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -40
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %82 = ptrtoint i64* %_allin_new_bt_104 to i64, !mcsema_real_eip !50
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !50
  %84 = load i32, i32* %83, !mcsema_real_eip !50
  %85 = zext i32 %84 to i64, !mcsema_real_eip !50
  store i64 %85, i64* %XDX, !mcsema_real_eip !50
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -36
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %86 = ptrtoint i64* %_allin_new_bt_107 to i64, !mcsema_real_eip !51
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !51
  %88 = load i32, i32* %87, !mcsema_real_eip !51
  %EDX_val.69 = load i32, i32* %EDX.26, !mcsema_real_eip !51
  %89 = add i32 %EDX_val.69, %88, !mcsema_real_eip !51
  %90 = xor i32 %89, %88, !mcsema_real_eip !51
  %91 = xor i32 %90, %EDX_val.69, !mcsema_real_eip !51
  %92 = and i32 %91, 16, !mcsema_real_eip !51
  %93 = icmp ne i32 %92, 0, !mcsema_real_eip !51
  store i1 %93, i1* %AF, !mcsema_real_eip !51
  %94 = lshr i32 %89, 31, !mcsema_real_eip !51
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !51
  store i1 %95, i1* %SF, !mcsema_real_eip !51
  %96 = icmp eq i32 %89, 0, !mcsema_real_eip !51
  store i1 %96, i1* %ZF, !mcsema_real_eip !51
  %97 = xor i32 %88, %EDX_val.69, !mcsema_real_eip !51
  %98 = xor i32 %97, -1, !mcsema_real_eip !51
  %99 = and i32 %98, %90, !mcsema_real_eip !51
  %100 = lshr i32 %99, 31, !mcsema_real_eip !51
  %101 = and i32 %100, 1, !mcsema_real_eip !51
  %102 = trunc i32 %101 to i1, !mcsema_real_eip !51
  store i1 %102, i1* %OF, !mcsema_real_eip !51
  %103 = trunc i32 %89 to i8, !mcsema_real_eip !51
  %104 = call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !51
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !51
  %106 = xor i1 %105, true, !mcsema_real_eip !51
  store i1 %106, i1* %PF, !mcsema_real_eip !51
  %107 = icmp ult i32 %89, %88, !mcsema_real_eip !51
  store i1 %107, i1* %CF, !mcsema_real_eip !51
  %108 = zext i32 %89 to i64, !mcsema_real_eip !51
  store i64 %108, i64* %XDX, !mcsema_real_eip !51
  %_new_gep_109 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -32
  %_allin_new_bt_110 = bitcast i8* %_new_gep_109 to i64*
  %109 = ptrtoint i64* %_allin_new_bt_110 to i64, !mcsema_real_eip !52
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !52
  %111 = load i32, i32* %110, !mcsema_real_eip !52
  %EDX_val.72 = load i32, i32* %EDX.26, !mcsema_real_eip !52
  %112 = add i32 %EDX_val.72, %111, !mcsema_real_eip !52
  %113 = xor i32 %112, %111, !mcsema_real_eip !52
  %114 = xor i32 %113, %EDX_val.72, !mcsema_real_eip !52
  %115 = and i32 %114, 16, !mcsema_real_eip !52
  %116 = icmp ne i32 %115, 0, !mcsema_real_eip !52
  store i1 %116, i1* %AF, !mcsema_real_eip !52
  %117 = lshr i32 %112, 31, !mcsema_real_eip !52
  %118 = trunc i32 %117 to i1, !mcsema_real_eip !52
  store i1 %118, i1* %SF, !mcsema_real_eip !52
  %119 = icmp eq i32 %112, 0, !mcsema_real_eip !52
  store i1 %119, i1* %ZF, !mcsema_real_eip !52
  %120 = xor i32 %111, %EDX_val.72, !mcsema_real_eip !52
  %121 = xor i32 %120, -1, !mcsema_real_eip !52
  %122 = and i32 %121, %113, !mcsema_real_eip !52
  %123 = lshr i32 %122, 31, !mcsema_real_eip !52
  %124 = and i32 %123, 1, !mcsema_real_eip !52
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !52
  store i1 %125, i1* %OF, !mcsema_real_eip !52
  %126 = trunc i32 %112 to i8, !mcsema_real_eip !52
  %127 = call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !52
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !52
  %129 = xor i1 %128, true, !mcsema_real_eip !52
  store i1 %129, i1* %PF, !mcsema_real_eip !52
  %130 = icmp ult i32 %112, %111, !mcsema_real_eip !52
  store i1 %130, i1* %CF, !mcsema_real_eip !52
  %131 = zext i32 %112 to i64, !mcsema_real_eip !52
  store i64 %131, i64* %XDX, !mcsema_real_eip !52
  %_new_gep_112 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -76
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %EDX_val.75 = load i32, i32* %EDX.26, !mcsema_real_eip !53
  %132 = ptrtoint i64* %_allin_new_bt_113 to i64, !mcsema_real_eip !53
  %133 = inttoptr i64 %132 to i32*, !mcsema_real_eip !53
  store i32 %EDX_val.75, i32* %133, !mcsema_real_eip !53
  %_load_rbp_ptr_114 = load i8*, i8** %_RBP_ptr_
  %_new_gep_115 = getelementptr i8, i8* %_load_rbp_ptr_114, i64 -76
  %_allin_new_bt_116 = bitcast i8* %_new_gep_115 to i64*
  %134 = ptrtoint i64* %_allin_new_bt_116 to i64, !mcsema_real_eip !54
  %135 = inttoptr i64 %134 to i32*, !mcsema_real_eip !54
  %136 = load i32, i32* %135, !mcsema_real_eip !54
  %137 = zext i32 %136 to i64, !mcsema_real_eip !54
  store i64 %137, i64* %XSI, !mcsema_real_eip !54
  %_new_gep_118 = getelementptr i8, i8* %_load_rbp_ptr_114, i64 -88
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %138 = load i64, i64* %_allin_new_bt_119, !mcsema_real_eip !55
  store i64 %138, i64* %XDI, !mcsema_real_eip !55
  %AL.78 = bitcast i64* %XAX to i8*, !mcsema_real_eip !56
  store i8 0, i8* %AL.78, !mcsema_real_eip !56
  %RDX_val.81 = load i64, i64* %XDX, !mcsema_real_eip !57
  %RCX_val.82 = load i64, i64* %XCX, !mcsema_real_eip !57
  %R8_val.83 = load i64, i64* %R8, !mcsema_real_eip !57
  %R9_val.84 = load i64, i64* %R9, !mcsema_real_eip !57
  %_load_rsp_ptr_120 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_121 = bitcast i8* %_load_rsp_ptr_120 to i64*
  %139 = load i64, i64* %_allin_new_bt_121, !mcsema_real_eip !57
  %_new_gep_122 = getelementptr i8, i8* %_load_rsp_ptr_120, i64 8
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %140 = load i64, i64* %_allin_new_bt_123, !mcsema_real_eip !57
  %_new_gep_124 = getelementptr i8, i8* %_new_gep_122, i64 8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %141 = load i64, i64* %_allin_new_bt_125, !mcsema_real_eip !57
  %_new_gep_126 = getelementptr i8, i8* %_new_gep_124, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %142 = load i64, i64* %_allin_new_bt_127, !mcsema_real_eip !57
  %_new_gep_128 = getelementptr i8, i8* %_new_gep_126, i64 8
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %143 = load i64, i64* %_allin_new_bt_129, !mcsema_real_eip !57
  %_new_gep_130 = getelementptr i8, i8* %_new_gep_128, i64 8
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %144 = load i64, i64* %_allin_new_bt_131, !mcsema_real_eip !57
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !57
  %_new_gep_133 = getelementptr i8, i8* %_load_rsp_ptr_120, i64 -8
  %145 = sub i64 %RSP_val.86, 8, !mcsema_real_eip !57
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_134, !mcsema_real_eip !57
  store volatile i8* %_new_gep_133, i8** %_RSP_ptr_
  store i64 %145, i64* %XSP, !mcsema_real_eip !57
  %146 = call x86_64_sysvcc i64 @_printf(i64 %138, i64 %137, i64 %RDX_val.81, i64 %RCX_val.82, i64 %R8_val.83, i64 %R9_val.84, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144)
  %_rsp_fix_167 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_168 = getelementptr i8, i8* %_rsp_fix_167, i64 8
  store i8* %_gep_fix_168, i8** %_RSP_ptr_
  store i64 %146, i64* %XAX, !mcsema_real_eip !57
  %_load_rbp_ptr_135 = load i8*, i8** %_RBP_ptr_
  %_new_gep_136 = getelementptr i8, i8* %_load_rbp_ptr_135, i64 -76
  %_allin_new_bt_137 = bitcast i8* %_new_gep_136 to i64*
  %147 = ptrtoint i64* %_allin_new_bt_137 to i64, !mcsema_real_eip !58
  %148 = inttoptr i64 %147 to i32*, !mcsema_real_eip !58
  %149 = load i32, i32* %148, !mcsema_real_eip !58
  %150 = zext i32 %149 to i64, !mcsema_real_eip !58
  store i64 %150, i64* %XDX, !mcsema_real_eip !58
  %_new_gep_139 = getelementptr i8, i8* %_load_rbp_ptr_135, i64 -96
  %_allin_new_bt_140 = bitcast i8* %_new_gep_139 to i64*
  %EAX_val.90 = load i32, i32* %EAX.8, !mcsema_real_eip !59
  %151 = ptrtoint i64* %_allin_new_bt_140 to i64, !mcsema_real_eip !59
  %152 = inttoptr i64 %151 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.90, i32* %152, !mcsema_real_eip !59
  %EDX_val.92 = load i32, i32* %EDX.26, !mcsema_real_eip !60
  %153 = zext i32 %EDX_val.92 to i64, !mcsema_real_eip !60
  store i64 %153, i64* %XAX, !mcsema_real_eip !60
  %_load_rsp_ptr_141 = load i8*, i8** %_RSP_ptr_
  %RSP_val.93 = load i64, i64* %XSP, !mcsema_real_eip !61
  %_new_gep_142 = getelementptr i8, i8* %_load_rsp_ptr_141, i64 144
  %154 = add i64 144, %RSP_val.93, !mcsema_real_eip !61
  %_trans_p2i_143 = ptrtoint i8* %_new_gep_142 to i64
  %_trans_p2i_144 = ptrtoint i8* %_load_rsp_ptr_141 to i64
  %_trans_xor_145 = xor i64 %_trans_p2i_143, %_trans_p2i_144
  %155 = xor i64 %_trans_xor_145, 144, !mcsema_real_eip !61
  %156 = and i64 %155, 16, !mcsema_real_eip !61
  %157 = icmp ne i64 %156, 0, !mcsema_real_eip !61
  store i1 %157, i1* %AF, !mcsema_real_eip !61
  %158 = lshr i64 %154, 63, !mcsema_real_eip !61
  %159 = trunc i64 %158 to i1, !mcsema_real_eip !61
  store i1 %159, i1* %SF, !mcsema_real_eip !61
  %_trans_icmp_eq_147 = icmp eq i64 %_trans_p2i_143, 0
  store i1 %_trans_icmp_eq_147, i1* %ZF, !mcsema_real_eip !61
  %_trans_xor_149 = xor i64 %_trans_p2i_144, 144
  %160 = xor i64 %_trans_xor_149, -1, !mcsema_real_eip !61
  %161 = and i64 %160, %_trans_xor_145, !mcsema_real_eip !61
  %162 = lshr i64 %161, 63, !mcsema_real_eip !61
  %163 = and i64 %162, 1, !mcsema_real_eip !61
  %164 = trunc i64 %163 to i1, !mcsema_real_eip !61
  store i1 %164, i1* %OF, !mcsema_real_eip !61
  %_trans_trunc_154 = trunc i64 %_trans_p2i_143 to i8
  %165 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_154), !mcsema_real_eip !61
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !61
  %167 = xor i1 %166, true, !mcsema_real_eip !61
  store i1 %167, i1* %PF, !mcsema_real_eip !61
  %_trans_icmp_ne_156 = icmp ne i64 %_trans_p2i_143, %RSP_val.93
  store i1 %_trans_icmp_ne_156, i1* %CF, !mcsema_real_eip !61
  store volatile i8* %_new_gep_142, i8** %_RSP_ptr_
  store i64 %154, i64* %XSP, !mcsema_real_eip !61
  %_allin_new_bt_158 = bitcast i8* %_new_gep_142 to i64*
  %168 = load i64, i64* %_allin_new_bt_158, !mcsema_real_eip !62
  %_new_int2ptr_ = inttoptr i64 %168 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %168, i64* %XBP, !mcsema_real_eip !62
  %_new_gep_159 = getelementptr i8, i8* %_new_gep_142, i64 8
  %169 = add i64 %154, 8, !mcsema_real_eip !62
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_
  store i64 %169, i64* %XSP, !mcsema_real_eip !62
  %_new_gep_161 = getelementptr i8, i8* %_new_gep_159, i64 8
  %170 = add i64 %169, 8, !mcsema_real_eip !63
  %_allin_new_bt_162 = bitcast i8* %_new_gep_159 to i64*
  %171 = load i64, i64* %_allin_new_bt_162, !mcsema_real_eip !63
  store i64 %171, i64* %XIP, !mcsema_real_eip !63
  store volatile i8* %_new_gep_161, i8** %_RSP_ptr_
  store i64 %170, i64* %XSP, !mcsema_real_eip !63
  ret void, !mcsema_real_eip !63
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !64
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !64
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !64
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !64
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !64
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !64
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !64
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !64
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !64
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !64
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !64
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !64
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !64
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !64
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !64
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !64
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !64
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !64
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !64
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !64
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !64
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !64
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !64
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !64
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !64
  br label %block_0x0, !mcsema_real_eip !64

block_0x0:                                        ; preds = %entry
  %RBP_val.96 = load i64, i64* %XBP, !mcsema_real_eip !64
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !64
  %1 = sub i64 %RSP_val.97, 8, !mcsema_real_eip !64
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !64
  store i64 %RBP_val.96, i64* %2, !mcsema_real_eip !64
  store i64 %1, i64* %XSP, !mcsema_real_eip !64
  store i64 %1, i64* %XBP, !mcsema_real_eip !65
  %RBX_val.99 = load i64, i64* %XBX, !mcsema_real_eip !66
  %3 = sub i64 %1, 8, !mcsema_real_eip !66
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !66
  store i64 %RBX_val.99, i64* %4, !mcsema_real_eip !66
  store i64 %3, i64* %XSP, !mcsema_real_eip !66
  %RBP_val.101 = load i64, i64* %XBP, !mcsema_real_eip !67
  %5 = add i64 %RBP_val.101, 48, !mcsema_real_eip !67
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !67
  %7 = load i64, i64* %6, !mcsema_real_eip !67
  store i64 %7, i64* %XAX, !mcsema_real_eip !67
  %8 = add i64 %RBP_val.101, 40, !mcsema_real_eip !68
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !68
  %10 = load i64, i64* %9, !mcsema_real_eip !68
  store i64 %10, i64* %R10, !mcsema_real_eip !68
  %11 = add i64 %RBP_val.101, 24, !mcsema_real_eip !69
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !69
  store i64 %11, i64* %R11, !mcsema_real_eip !69
  %13 = add i64 %RBP_val.101, 16, !mcsema_real_eip !70
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !70
  %15 = inttoptr i64 %13 to i32*, !mcsema_real_eip !70
  %16 = load i32, i32* %15, !mcsema_real_eip !70
  %17 = zext i32 %16 to i64, !mcsema_real_eip !70
  store i64 %17, i64* %XBX, !mcsema_real_eip !70
  %18 = add i64 %RBP_val.101, -56, !mcsema_real_eip !71
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !71
  %RDI_val.106 = load i64, i64* %XDI, !mcsema_real_eip !71
  store i64 %RDI_val.106, i64* %19, !mcsema_real_eip !71
  %RBP_val.107 = load i64, i64* %XBP, !mcsema_real_eip !72
  %20 = add i64 %RBP_val.107, -48, !mcsema_real_eip !72
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !72
  %ESI.108 = bitcast i64* %XSI to i32*, !mcsema_real_eip !72
  %ESI_val.109 = load i32, i32* %ESI.108, !mcsema_real_eip !72
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !72
  store i32 %ESI_val.109, i32* %22, !mcsema_real_eip !72
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !73
  %23 = add i64 %RBP_val.110, -48, !mcsema_real_eip !73
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !73
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !73
  %26 = load i32, i32* %25, !mcsema_real_eip !73
  %27 = zext i32 %26 to i64, !mcsema_real_eip !73
  store i64 %27, i64* %XSI, !mcsema_real_eip !73
  %28 = add i64 %RBP_val.110, -32, !mcsema_real_eip !74
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !74
  %ESI_val.113 = load i32, i32* %ESI.108, !mcsema_real_eip !74
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !74
  store i32 %ESI_val.113, i32* %30, !mcsema_real_eip !74
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !75
  %31 = add i64 %RBP_val.114, -56, !mcsema_real_eip !75
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !75
  %33 = load i64, i64* %32, !mcsema_real_eip !75
  store i64 %33, i64* %XDI, !mcsema_real_eip !75
  %34 = add i64 %RBP_val.114, -40, !mcsema_real_eip !76
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !76
  store i64 %33, i64* %35, !mcsema_real_eip !76
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !77
  %36 = add i64 %RBP_val.117, -64, !mcsema_real_eip !77
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !77
  %RDX_val.118 = load i64, i64* %XDX, !mcsema_real_eip !77
  store i64 %RDX_val.118, i64* %37, !mcsema_real_eip !77
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !78
  %38 = add i64 %RBP_val.119, -72, !mcsema_real_eip !78
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !78
  %RCX_val.120 = load i64, i64* %XCX, !mcsema_real_eip !78
  store i64 %RCX_val.120, i64* %39, !mcsema_real_eip !78
  %RBP_val.121 = load i64, i64* %XBP, !mcsema_real_eip !79
  %40 = add i64 %RBP_val.121, -76, !mcsema_real_eip !79
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !79
  %R8D.122 = bitcast i64* %R8 to i32*, !mcsema_real_eip !79
  %R8D_val.123 = load i32, i32* %R8D.122, !mcsema_real_eip !79
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !79
  store i32 %R8D_val.123, i32* %42, !mcsema_real_eip !79
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !80
  %43 = add i64 %RBP_val.124, -80, !mcsema_real_eip !80
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !80
  %R9D.125 = bitcast i64* %R9 to i32*, !mcsema_real_eip !80
  %R9D_val.126 = load i32, i32* %R9D.125, !mcsema_real_eip !80
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !80
  store i32 %R9D_val.126, i32* %45, !mcsema_real_eip !80
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !81
  %46 = add i64 %RBP_val.127, -84, !mcsema_real_eip !81
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !81
  %EBX.128 = bitcast i64* %XBX to i32*, !mcsema_real_eip !81
  %EBX_val.129 = load i32, i32* %EBX.128, !mcsema_real_eip !81
  %48 = inttoptr i64 %46 to i32*, !mcsema_real_eip !81
  store i32 %EBX_val.129, i32* %48, !mcsema_real_eip !81
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !82
  %49 = add i64 %RBP_val.130, -96, !mcsema_real_eip !82
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !82
  %R10_val.131 = load i64, i64* %R10, !mcsema_real_eip !82
  store i64 %R10_val.131, i64* %50, !mcsema_real_eip !82
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !83
  %51 = add i64 %RBP_val.132, -104, !mcsema_real_eip !83
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !83
  %RAX_val.133 = load i64, i64* %XAX, !mcsema_real_eip !83
  store i64 %RAX_val.133, i64* %52, !mcsema_real_eip !83
  %RBP_val.134 = load i64, i64* %XBP, !mcsema_real_eip !84
  %53 = add i64 %RBP_val.134, -40, !mcsema_real_eip !84
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !84
  %55 = inttoptr i64 %53 to i32*, !mcsema_real_eip !84
  %56 = load i32, i32* %55, !mcsema_real_eip !84
  %57 = zext i32 %56 to i64, !mcsema_real_eip !84
  store i64 %57, i64* %XSI, !mcsema_real_eip !84
  %58 = add i64 %RBP_val.134, -64, !mcsema_real_eip !85
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !85
  %60 = load i64, i64* %59, !mcsema_real_eip !85
  store i64 %60, i64* %XAX, !mcsema_real_eip !85
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !86
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !86
  %63 = load i32, i32* %62, !mcsema_real_eip !86
  %64 = zext i32 %63 to i64, !mcsema_real_eip !86
  store i64 %64, i64* %R8, !mcsema_real_eip !86
  %ESI_val.138 = load i32, i32* %ESI.108, !mcsema_real_eip !87
  %R8D_val.140 = load i32, i32* %R8D.122, !mcsema_real_eip !87
  %65 = add i32 %R8D_val.140, %ESI_val.138, !mcsema_real_eip !87
  %66 = xor i32 %65, %ESI_val.138, !mcsema_real_eip !87
  %67 = xor i32 %66, %R8D_val.140, !mcsema_real_eip !87
  %68 = and i32 %67, 16, !mcsema_real_eip !87
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !87
  store i1 %69, i1* %AF, !mcsema_real_eip !87
  %70 = lshr i32 %65, 31, !mcsema_real_eip !87
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !87
  store i1 %71, i1* %SF, !mcsema_real_eip !87
  %72 = icmp eq i32 %65, 0, !mcsema_real_eip !87
  store i1 %72, i1* %ZF, !mcsema_real_eip !87
  %73 = xor i32 %ESI_val.138, %R8D_val.140, !mcsema_real_eip !87
  %74 = xor i32 %73, -1, !mcsema_real_eip !87
  %75 = and i32 %74, %66, !mcsema_real_eip !87
  %76 = lshr i32 %75, 31, !mcsema_real_eip !87
  %77 = and i32 %76, 1, !mcsema_real_eip !87
  %78 = trunc i32 %77 to i1, !mcsema_real_eip !87
  store i1 %78, i1* %OF, !mcsema_real_eip !87
  %79 = trunc i32 %65 to i8, !mcsema_real_eip !87
  %80 = call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !87
  %81 = trunc i8 %80 to i1, !mcsema_real_eip !87
  %82 = xor i1 %81, true, !mcsema_real_eip !87
  store i1 %82, i1* %PF, !mcsema_real_eip !87
  %83 = icmp ult i32 %65, %ESI_val.138, !mcsema_real_eip !87
  store i1 %83, i1* %CF, !mcsema_real_eip !87
  %84 = zext i32 %65 to i64, !mcsema_real_eip !87
  store i64 %84, i64* %XSI, !mcsema_real_eip !87
  %85 = add i64 %RBP_val.134, -72, !mcsema_real_eip !88
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !88
  %87 = load i64, i64* %86, !mcsema_real_eip !88
  store i64 %87, i64* %XAX, !mcsema_real_eip !88
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !89
  %89 = inttoptr i64 %87 to i32*, !mcsema_real_eip !89
  %90 = load i32, i32* %89, !mcsema_real_eip !89
  %91 = zext i32 %90 to i64, !mcsema_real_eip !89
  store i64 %91, i64* %R8, !mcsema_real_eip !89
  %ESI_val.144 = load i32, i32* %ESI.108, !mcsema_real_eip !90
  %R8D_val.146 = load i32, i32* %R8D.122, !mcsema_real_eip !90
  %92 = add i32 %R8D_val.146, %ESI_val.144, !mcsema_real_eip !90
  %93 = xor i32 %92, %ESI_val.144, !mcsema_real_eip !90
  %94 = xor i32 %93, %R8D_val.146, !mcsema_real_eip !90
  %95 = and i32 %94, 16, !mcsema_real_eip !90
  %96 = icmp ne i32 %95, 0, !mcsema_real_eip !90
  store i1 %96, i1* %AF, !mcsema_real_eip !90
  %97 = lshr i32 %92, 31, !mcsema_real_eip !90
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !90
  store i1 %98, i1* %SF, !mcsema_real_eip !90
  %99 = icmp eq i32 %92, 0, !mcsema_real_eip !90
  store i1 %99, i1* %ZF, !mcsema_real_eip !90
  %100 = xor i32 %ESI_val.144, %R8D_val.146, !mcsema_real_eip !90
  %101 = xor i32 %100, -1, !mcsema_real_eip !90
  %102 = and i32 %101, %93, !mcsema_real_eip !90
  %103 = lshr i32 %102, 31, !mcsema_real_eip !90
  %104 = and i32 %103, 1, !mcsema_real_eip !90
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !90
  store i1 %105, i1* %OF, !mcsema_real_eip !90
  %106 = trunc i32 %92 to i8, !mcsema_real_eip !90
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !90
  %108 = trunc i8 %107 to i1, !mcsema_real_eip !90
  %109 = xor i1 %108, true, !mcsema_real_eip !90
  store i1 %109, i1* %PF, !mcsema_real_eip !90
  %110 = icmp ult i32 %92, %ESI_val.144, !mcsema_real_eip !90
  store i1 %110, i1* %CF, !mcsema_real_eip !90
  %111 = zext i32 %92 to i64, !mcsema_real_eip !90
  store i64 %111, i64* %XSI, !mcsema_real_eip !90
  %R11_val.147 = load i64, i64* %R11, !mcsema_real_eip !91
  %112 = inttoptr i64 %R11_val.147 to i64*, !mcsema_real_eip !91
  %113 = inttoptr i64 %R11_val.147 to i32*, !mcsema_real_eip !91
  %114 = load i32, i32* %113, !mcsema_real_eip !91
  %115 = zext i32 %114 to i64, !mcsema_real_eip !91
  store i64 %115, i64* %R8, !mcsema_real_eip !91
  %116 = add i64 %RBP_val.134, -96, !mcsema_real_eip !92
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !92
  %118 = load i64, i64* %117, !mcsema_real_eip !92
  store i64 %118, i64* %XAX, !mcsema_real_eip !92
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !93
  %120 = inttoptr i64 %118 to i32*, !mcsema_real_eip !93
  %121 = load i32, i32* %120, !mcsema_real_eip !93
  %122 = zext i32 %121 to i64, !mcsema_real_eip !93
  store i64 %122, i64* %R9, !mcsema_real_eip !93
  %R8D_val.151 = load i32, i32* %R8D.122, !mcsema_real_eip !94
  %R9D_val.153 = load i32, i32* %R9D.125, !mcsema_real_eip !94
  %123 = add i32 %R9D_val.153, %R8D_val.151, !mcsema_real_eip !94
  %124 = xor i32 %123, %R8D_val.151, !mcsema_real_eip !94
  %125 = xor i32 %124, %R9D_val.153, !mcsema_real_eip !94
  %126 = and i32 %125, 16, !mcsema_real_eip !94
  %127 = icmp ne i32 %126, 0, !mcsema_real_eip !94
  store i1 %127, i1* %AF, !mcsema_real_eip !94
  %128 = lshr i32 %123, 31, !mcsema_real_eip !94
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !94
  store i1 %129, i1* %SF, !mcsema_real_eip !94
  %130 = icmp eq i32 %123, 0, !mcsema_real_eip !94
  store i1 %130, i1* %ZF, !mcsema_real_eip !94
  %131 = xor i32 %R8D_val.151, %R9D_val.153, !mcsema_real_eip !94
  %132 = xor i32 %131, -1, !mcsema_real_eip !94
  %133 = and i32 %132, %124, !mcsema_real_eip !94
  %134 = lshr i32 %133, 31, !mcsema_real_eip !94
  %135 = and i32 %134, 1, !mcsema_real_eip !94
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !94
  store i1 %136, i1* %OF, !mcsema_real_eip !94
  %137 = trunc i32 %123 to i8, !mcsema_real_eip !94
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !94
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !94
  %140 = xor i1 %139, true, !mcsema_real_eip !94
  store i1 %140, i1* %PF, !mcsema_real_eip !94
  %141 = icmp ult i32 %123, %R8D_val.151, !mcsema_real_eip !94
  store i1 %141, i1* %CF, !mcsema_real_eip !94
  %142 = zext i32 %123 to i64, !mcsema_real_eip !94
  store i64 %142, i64* %R8, !mcsema_real_eip !94
  %143 = add i64 %RBP_val.134, -104, !mcsema_real_eip !95
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !95
  %145 = load i64, i64* %144, !mcsema_real_eip !95
  store i64 %145, i64* %XAX, !mcsema_real_eip !95
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !96
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !96
  %148 = load i32, i32* %147, !mcsema_real_eip !96
  %149 = zext i32 %148 to i64, !mcsema_real_eip !96
  store i64 %149, i64* %R9, !mcsema_real_eip !96
  %R8D_val.157 = load i32, i32* %R8D.122, !mcsema_real_eip !97
  %R9D_val.159 = load i32, i32* %R9D.125, !mcsema_real_eip !97
  %150 = add i32 %R9D_val.159, %R8D_val.157, !mcsema_real_eip !97
  %151 = xor i32 %150, %R8D_val.157, !mcsema_real_eip !97
  %152 = xor i32 %151, %R9D_val.159, !mcsema_real_eip !97
  %153 = and i32 %152, 16, !mcsema_real_eip !97
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !97
  store i1 %154, i1* %AF, !mcsema_real_eip !97
  %155 = lshr i32 %150, 31, !mcsema_real_eip !97
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !97
  store i1 %156, i1* %SF, !mcsema_real_eip !97
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !97
  store i1 %157, i1* %ZF, !mcsema_real_eip !97
  %158 = xor i32 %R8D_val.157, %R9D_val.159, !mcsema_real_eip !97
  %159 = xor i32 %158, -1, !mcsema_real_eip !97
  %160 = and i32 %159, %151, !mcsema_real_eip !97
  %161 = lshr i32 %160, 31, !mcsema_real_eip !97
  %162 = and i32 %161, 1, !mcsema_real_eip !97
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !97
  store i1 %163, i1* %OF, !mcsema_real_eip !97
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !97
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !97
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !97
  %167 = xor i1 %166, true, !mcsema_real_eip !97
  store i1 %167, i1* %PF, !mcsema_real_eip !97
  %168 = icmp ult i32 %150, %R8D_val.157, !mcsema_real_eip !97
  store i1 %168, i1* %CF, !mcsema_real_eip !97
  %169 = zext i32 %150 to i64, !mcsema_real_eip !97
  store i64 %169, i64* %R8, !mcsema_real_eip !97
  %ESI_val.161 = load i32, i32* %ESI.108, !mcsema_real_eip !98
  %R8D_val.163 = load i32, i32* %R8D.122, !mcsema_real_eip !98
  %170 = add i32 %R8D_val.163, %ESI_val.161, !mcsema_real_eip !98
  %171 = xor i32 %170, %ESI_val.161, !mcsema_real_eip !98
  %172 = xor i32 %171, %R8D_val.163, !mcsema_real_eip !98
  %173 = and i32 %172, 16, !mcsema_real_eip !98
  %174 = icmp ne i32 %173, 0, !mcsema_real_eip !98
  store i1 %174, i1* %AF, !mcsema_real_eip !98
  %175 = lshr i32 %170, 31, !mcsema_real_eip !98
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !98
  store i1 %176, i1* %SF, !mcsema_real_eip !98
  %177 = icmp eq i32 %170, 0, !mcsema_real_eip !98
  store i1 %177, i1* %ZF, !mcsema_real_eip !98
  %178 = xor i32 %ESI_val.161, %R8D_val.163, !mcsema_real_eip !98
  %179 = xor i32 %178, -1, !mcsema_real_eip !98
  %180 = and i32 %179, %171, !mcsema_real_eip !98
  %181 = lshr i32 %180, 31, !mcsema_real_eip !98
  %182 = and i32 %181, 1, !mcsema_real_eip !98
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !98
  store i1 %183, i1* %OF, !mcsema_real_eip !98
  %184 = trunc i32 %170 to i8, !mcsema_real_eip !98
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !98
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !98
  %187 = xor i1 %186, true, !mcsema_real_eip !98
  store i1 %187, i1* %PF, !mcsema_real_eip !98
  %188 = icmp ult i32 %170, %ESI_val.161, !mcsema_real_eip !98
  store i1 %188, i1* %CF, !mcsema_real_eip !98
  %189 = zext i32 %170 to i64, !mcsema_real_eip !98
  store i64 %189, i64* %XSI, !mcsema_real_eip !98
  %190 = add i64 %RBP_val.134, -120, !mcsema_real_eip !99
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !99
  %ESI_val.166 = load i32, i32* %ESI.108, !mcsema_real_eip !99
  %192 = inttoptr i64 %190 to i32*, !mcsema_real_eip !99
  store i32 %ESI_val.166, i32* %192, !mcsema_real_eip !99
  %RBP_val.167 = load i64, i64* %XBP, !mcsema_real_eip !100
  %193 = add i64 %RBP_val.167, -36, !mcsema_real_eip !100
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !100
  %195 = inttoptr i64 %193 to i32*, !mcsema_real_eip !100
  %196 = load i32, i32* %195, !mcsema_real_eip !100
  %197 = zext i32 %196 to i64, !mcsema_real_eip !100
  store i64 %197, i64* %XSI, !mcsema_real_eip !100
  %198 = add i64 %RBP_val.167, -64, !mcsema_real_eip !101
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !101
  %200 = load i64, i64* %199, !mcsema_real_eip !101
  store i64 %200, i64* %XAX, !mcsema_real_eip !101
  %201 = add i64 %200, 4, !mcsema_real_eip !102
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !102
  %203 = inttoptr i64 %201 to i32*, !mcsema_real_eip !102
  %204 = load i32, i32* %203, !mcsema_real_eip !102
  %205 = zext i32 %204 to i64, !mcsema_real_eip !102
  store i64 %205, i64* %R8, !mcsema_real_eip !102
  %ESI_val.171 = load i32, i32* %ESI.108, !mcsema_real_eip !103
  %R8D_val.173 = load i32, i32* %R8D.122, !mcsema_real_eip !103
  %206 = add i32 %R8D_val.173, %ESI_val.171, !mcsema_real_eip !103
  %207 = xor i32 %206, %ESI_val.171, !mcsema_real_eip !103
  %208 = xor i32 %207, %R8D_val.173, !mcsema_real_eip !103
  %209 = and i32 %208, 16, !mcsema_real_eip !103
  %210 = icmp ne i32 %209, 0, !mcsema_real_eip !103
  store i1 %210, i1* %AF, !mcsema_real_eip !103
  %211 = lshr i32 %206, 31, !mcsema_real_eip !103
  %212 = trunc i32 %211 to i1, !mcsema_real_eip !103
  store i1 %212, i1* %SF, !mcsema_real_eip !103
  %213 = icmp eq i32 %206, 0, !mcsema_real_eip !103
  store i1 %213, i1* %ZF, !mcsema_real_eip !103
  %214 = xor i32 %ESI_val.171, %R8D_val.173, !mcsema_real_eip !103
  %215 = xor i32 %214, -1, !mcsema_real_eip !103
  %216 = and i32 %215, %207, !mcsema_real_eip !103
  %217 = lshr i32 %216, 31, !mcsema_real_eip !103
  %218 = and i32 %217, 1, !mcsema_real_eip !103
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !103
  store i1 %219, i1* %OF, !mcsema_real_eip !103
  %220 = trunc i32 %206 to i8, !mcsema_real_eip !103
  %221 = call i8 @llvm.ctpop.i8(i8 %220), !mcsema_real_eip !103
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !103
  %223 = xor i1 %222, true, !mcsema_real_eip !103
  store i1 %223, i1* %PF, !mcsema_real_eip !103
  %224 = icmp ult i32 %206, %ESI_val.171, !mcsema_real_eip !103
  store i1 %224, i1* %CF, !mcsema_real_eip !103
  %225 = zext i32 %206 to i64, !mcsema_real_eip !103
  store i64 %225, i64* %XSI, !mcsema_real_eip !103
  %226 = add i64 %RBP_val.167, -72, !mcsema_real_eip !104
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !104
  %228 = load i64, i64* %227, !mcsema_real_eip !104
  store i64 %228, i64* %XAX, !mcsema_real_eip !104
  %229 = add i64 %228, 4, !mcsema_real_eip !105
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !105
  %231 = inttoptr i64 %229 to i32*, !mcsema_real_eip !105
  %232 = load i32, i32* %231, !mcsema_real_eip !105
  %233 = zext i32 %232 to i64, !mcsema_real_eip !105
  store i64 %233, i64* %R8, !mcsema_real_eip !105
  %ESI_val.177 = load i32, i32* %ESI.108, !mcsema_real_eip !106
  %R8D_val.179 = load i32, i32* %R8D.122, !mcsema_real_eip !106
  %234 = add i32 %R8D_val.179, %ESI_val.177, !mcsema_real_eip !106
  %235 = xor i32 %234, %ESI_val.177, !mcsema_real_eip !106
  %236 = xor i32 %235, %R8D_val.179, !mcsema_real_eip !106
  %237 = and i32 %236, 16, !mcsema_real_eip !106
  %238 = icmp ne i32 %237, 0, !mcsema_real_eip !106
  store i1 %238, i1* %AF, !mcsema_real_eip !106
  %239 = lshr i32 %234, 31, !mcsema_real_eip !106
  %240 = trunc i32 %239 to i1, !mcsema_real_eip !106
  store i1 %240, i1* %SF, !mcsema_real_eip !106
  %241 = icmp eq i32 %234, 0, !mcsema_real_eip !106
  store i1 %241, i1* %ZF, !mcsema_real_eip !106
  %242 = xor i32 %ESI_val.177, %R8D_val.179, !mcsema_real_eip !106
  %243 = xor i32 %242, -1, !mcsema_real_eip !106
  %244 = and i32 %243, %235, !mcsema_real_eip !106
  %245 = lshr i32 %244, 31, !mcsema_real_eip !106
  %246 = and i32 %245, 1, !mcsema_real_eip !106
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !106
  store i1 %247, i1* %OF, !mcsema_real_eip !106
  %248 = trunc i32 %234 to i8, !mcsema_real_eip !106
  %249 = call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !106
  %250 = trunc i8 %249 to i1, !mcsema_real_eip !106
  %251 = xor i1 %250, true, !mcsema_real_eip !106
  store i1 %251, i1* %PF, !mcsema_real_eip !106
  %252 = icmp ult i32 %234, %ESI_val.177, !mcsema_real_eip !106
  store i1 %252, i1* %CF, !mcsema_real_eip !106
  %253 = zext i32 %234 to i64, !mcsema_real_eip !106
  store i64 %253, i64* %XSI, !mcsema_real_eip !106
  %R11_val.180 = load i64, i64* %R11, !mcsema_real_eip !107
  %254 = add i64 %R11_val.180, 4, !mcsema_real_eip !107
  %255 = inttoptr i64 %254 to i64*, !mcsema_real_eip !107
  %256 = inttoptr i64 %254 to i32*, !mcsema_real_eip !107
  %257 = load i32, i32* %256, !mcsema_real_eip !107
  %258 = zext i32 %257 to i64, !mcsema_real_eip !107
  store i64 %258, i64* %R8, !mcsema_real_eip !107
  %259 = add i64 %RBP_val.167, -96, !mcsema_real_eip !108
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !108
  %261 = load i64, i64* %260, !mcsema_real_eip !108
  store i64 %261, i64* %XAX, !mcsema_real_eip !108
  %262 = add i64 %261, 4, !mcsema_real_eip !109
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !109
  %264 = inttoptr i64 %262 to i32*, !mcsema_real_eip !109
  %265 = load i32, i32* %264, !mcsema_real_eip !109
  %266 = zext i32 %265 to i64, !mcsema_real_eip !109
  store i64 %266, i64* %R9, !mcsema_real_eip !109
  %R8D_val.184 = load i32, i32* %R8D.122, !mcsema_real_eip !110
  %R9D_val.186 = load i32, i32* %R9D.125, !mcsema_real_eip !110
  %267 = add i32 %R9D_val.186, %R8D_val.184, !mcsema_real_eip !110
  %268 = xor i32 %267, %R8D_val.184, !mcsema_real_eip !110
  %269 = xor i32 %268, %R9D_val.186, !mcsema_real_eip !110
  %270 = and i32 %269, 16, !mcsema_real_eip !110
  %271 = icmp ne i32 %270, 0, !mcsema_real_eip !110
  store i1 %271, i1* %AF, !mcsema_real_eip !110
  %272 = lshr i32 %267, 31, !mcsema_real_eip !110
  %273 = trunc i32 %272 to i1, !mcsema_real_eip !110
  store i1 %273, i1* %SF, !mcsema_real_eip !110
  %274 = icmp eq i32 %267, 0, !mcsema_real_eip !110
  store i1 %274, i1* %ZF, !mcsema_real_eip !110
  %275 = xor i32 %R8D_val.184, %R9D_val.186, !mcsema_real_eip !110
  %276 = xor i32 %275, -1, !mcsema_real_eip !110
  %277 = and i32 %276, %268, !mcsema_real_eip !110
  %278 = lshr i32 %277, 31, !mcsema_real_eip !110
  %279 = and i32 %278, 1, !mcsema_real_eip !110
  %280 = trunc i32 %279 to i1, !mcsema_real_eip !110
  store i1 %280, i1* %OF, !mcsema_real_eip !110
  %281 = trunc i32 %267 to i8, !mcsema_real_eip !110
  %282 = call i8 @llvm.ctpop.i8(i8 %281), !mcsema_real_eip !110
  %283 = trunc i8 %282 to i1, !mcsema_real_eip !110
  %284 = xor i1 %283, true, !mcsema_real_eip !110
  store i1 %284, i1* %PF, !mcsema_real_eip !110
  %285 = icmp ult i32 %267, %R8D_val.184, !mcsema_real_eip !110
  store i1 %285, i1* %CF, !mcsema_real_eip !110
  %286 = zext i32 %267 to i64, !mcsema_real_eip !110
  store i64 %286, i64* %R8, !mcsema_real_eip !110
  %287 = add i64 %RBP_val.167, -104, !mcsema_real_eip !111
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !111
  %289 = load i64, i64* %288, !mcsema_real_eip !111
  store i64 %289, i64* %XAX, !mcsema_real_eip !111
  %290 = add i64 %289, 4, !mcsema_real_eip !112
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !112
  %292 = inttoptr i64 %290 to i32*, !mcsema_real_eip !112
  %293 = load i32, i32* %292, !mcsema_real_eip !112
  %294 = zext i32 %293 to i64, !mcsema_real_eip !112
  store i64 %294, i64* %R9, !mcsema_real_eip !112
  %R8D_val.190 = load i32, i32* %R8D.122, !mcsema_real_eip !113
  %R9D_val.192 = load i32, i32* %R9D.125, !mcsema_real_eip !113
  %295 = add i32 %R9D_val.192, %R8D_val.190, !mcsema_real_eip !113
  %296 = xor i32 %295, %R8D_val.190, !mcsema_real_eip !113
  %297 = xor i32 %296, %R9D_val.192, !mcsema_real_eip !113
  %298 = and i32 %297, 16, !mcsema_real_eip !113
  %299 = icmp ne i32 %298, 0, !mcsema_real_eip !113
  store i1 %299, i1* %AF, !mcsema_real_eip !113
  %300 = lshr i32 %295, 31, !mcsema_real_eip !113
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !113
  store i1 %301, i1* %SF, !mcsema_real_eip !113
  %302 = icmp eq i32 %295, 0, !mcsema_real_eip !113
  store i1 %302, i1* %ZF, !mcsema_real_eip !113
  %303 = xor i32 %R8D_val.190, %R9D_val.192, !mcsema_real_eip !113
  %304 = xor i32 %303, -1, !mcsema_real_eip !113
  %305 = and i32 %304, %296, !mcsema_real_eip !113
  %306 = lshr i32 %305, 31, !mcsema_real_eip !113
  %307 = and i32 %306, 1, !mcsema_real_eip !113
  %308 = trunc i32 %307 to i1, !mcsema_real_eip !113
  store i1 %308, i1* %OF, !mcsema_real_eip !113
  %309 = trunc i32 %295 to i8, !mcsema_real_eip !113
  %310 = call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !113
  %311 = trunc i8 %310 to i1, !mcsema_real_eip !113
  %312 = xor i1 %311, true, !mcsema_real_eip !113
  store i1 %312, i1* %PF, !mcsema_real_eip !113
  %313 = icmp ult i32 %295, %R8D_val.190, !mcsema_real_eip !113
  store i1 %313, i1* %CF, !mcsema_real_eip !113
  %314 = zext i32 %295 to i64, !mcsema_real_eip !113
  store i64 %314, i64* %R8, !mcsema_real_eip !113
  %ESI_val.194 = load i32, i32* %ESI.108, !mcsema_real_eip !114
  %R8D_val.196 = load i32, i32* %R8D.122, !mcsema_real_eip !114
  %315 = add i32 %R8D_val.196, %ESI_val.194, !mcsema_real_eip !114
  %316 = xor i32 %315, %ESI_val.194, !mcsema_real_eip !114
  %317 = xor i32 %316, %R8D_val.196, !mcsema_real_eip !114
  %318 = and i32 %317, 16, !mcsema_real_eip !114
  %319 = icmp ne i32 %318, 0, !mcsema_real_eip !114
  store i1 %319, i1* %AF, !mcsema_real_eip !114
  %320 = lshr i32 %315, 31, !mcsema_real_eip !114
  %321 = trunc i32 %320 to i1, !mcsema_real_eip !114
  store i1 %321, i1* %SF, !mcsema_real_eip !114
  %322 = icmp eq i32 %315, 0, !mcsema_real_eip !114
  store i1 %322, i1* %ZF, !mcsema_real_eip !114
  %323 = xor i32 %ESI_val.194, %R8D_val.196, !mcsema_real_eip !114
  %324 = xor i32 %323, -1, !mcsema_real_eip !114
  %325 = and i32 %324, %316, !mcsema_real_eip !114
  %326 = lshr i32 %325, 31, !mcsema_real_eip !114
  %327 = and i32 %326, 1, !mcsema_real_eip !114
  %328 = trunc i32 %327 to i1, !mcsema_real_eip !114
  store i1 %328, i1* %OF, !mcsema_real_eip !114
  %329 = trunc i32 %315 to i8, !mcsema_real_eip !114
  %330 = call i8 @llvm.ctpop.i8(i8 %329), !mcsema_real_eip !114
  %331 = trunc i8 %330 to i1, !mcsema_real_eip !114
  %332 = xor i1 %331, true, !mcsema_real_eip !114
  store i1 %332, i1* %PF, !mcsema_real_eip !114
  %333 = icmp ult i32 %315, %ESI_val.194, !mcsema_real_eip !114
  store i1 %333, i1* %CF, !mcsema_real_eip !114
  %334 = zext i32 %315 to i64, !mcsema_real_eip !114
  store i64 %334, i64* %XSI, !mcsema_real_eip !114
  %335 = add i64 %RBP_val.167, -116, !mcsema_real_eip !115
  %336 = inttoptr i64 %335 to i64*, !mcsema_real_eip !115
  %ESI_val.199 = load i32, i32* %ESI.108, !mcsema_real_eip !115
  %337 = inttoptr i64 %335 to i32*, !mcsema_real_eip !115
  store i32 %ESI_val.199, i32* %337, !mcsema_real_eip !115
  %RBP_val.200 = load i64, i64* %XBP, !mcsema_real_eip !116
  %338 = add i64 %RBP_val.200, -32, !mcsema_real_eip !116
  %339 = inttoptr i64 %338 to i64*, !mcsema_real_eip !116
  %340 = inttoptr i64 %338 to i32*, !mcsema_real_eip !116
  %341 = load i32, i32* %340, !mcsema_real_eip !116
  %342 = zext i32 %341 to i64, !mcsema_real_eip !116
  store i64 %342, i64* %XSI, !mcsema_real_eip !116
  %343 = add i64 %RBP_val.200, -64, !mcsema_real_eip !117
  %344 = inttoptr i64 %343 to i64*, !mcsema_real_eip !117
  %345 = load i64, i64* %344, !mcsema_real_eip !117
  store i64 %345, i64* %XAX, !mcsema_real_eip !117
  %346 = add i64 %345, 8, !mcsema_real_eip !118
  %347 = inttoptr i64 %346 to i64*, !mcsema_real_eip !118
  %348 = inttoptr i64 %346 to i32*, !mcsema_real_eip !118
  %349 = load i32, i32* %348, !mcsema_real_eip !118
  %350 = zext i32 %349 to i64, !mcsema_real_eip !118
  store i64 %350, i64* %R8, !mcsema_real_eip !118
  %ESI_val.204 = load i32, i32* %ESI.108, !mcsema_real_eip !119
  %R8D_val.206 = load i32, i32* %R8D.122, !mcsema_real_eip !119
  %351 = add i32 %R8D_val.206, %ESI_val.204, !mcsema_real_eip !119
  %352 = xor i32 %351, %ESI_val.204, !mcsema_real_eip !119
  %353 = xor i32 %352, %R8D_val.206, !mcsema_real_eip !119
  %354 = and i32 %353, 16, !mcsema_real_eip !119
  %355 = icmp ne i32 %354, 0, !mcsema_real_eip !119
  store i1 %355, i1* %AF, !mcsema_real_eip !119
  %356 = lshr i32 %351, 31, !mcsema_real_eip !119
  %357 = trunc i32 %356 to i1, !mcsema_real_eip !119
  store i1 %357, i1* %SF, !mcsema_real_eip !119
  %358 = icmp eq i32 %351, 0, !mcsema_real_eip !119
  store i1 %358, i1* %ZF, !mcsema_real_eip !119
  %359 = xor i32 %ESI_val.204, %R8D_val.206, !mcsema_real_eip !119
  %360 = xor i32 %359, -1, !mcsema_real_eip !119
  %361 = and i32 %360, %352, !mcsema_real_eip !119
  %362 = lshr i32 %361, 31, !mcsema_real_eip !119
  %363 = and i32 %362, 1, !mcsema_real_eip !119
  %364 = trunc i32 %363 to i1, !mcsema_real_eip !119
  store i1 %364, i1* %OF, !mcsema_real_eip !119
  %365 = trunc i32 %351 to i8, !mcsema_real_eip !119
  %366 = call i8 @llvm.ctpop.i8(i8 %365), !mcsema_real_eip !119
  %367 = trunc i8 %366 to i1, !mcsema_real_eip !119
  %368 = xor i1 %367, true, !mcsema_real_eip !119
  store i1 %368, i1* %PF, !mcsema_real_eip !119
  %369 = icmp ult i32 %351, %ESI_val.204, !mcsema_real_eip !119
  store i1 %369, i1* %CF, !mcsema_real_eip !119
  %370 = zext i32 %351 to i64, !mcsema_real_eip !119
  store i64 %370, i64* %XSI, !mcsema_real_eip !119
  %371 = add i64 %RBP_val.200, -72, !mcsema_real_eip !120
  %372 = inttoptr i64 %371 to i64*, !mcsema_real_eip !120
  %373 = load i64, i64* %372, !mcsema_real_eip !120
  store i64 %373, i64* %XAX, !mcsema_real_eip !120
  %374 = add i64 %373, 8, !mcsema_real_eip !121
  %375 = inttoptr i64 %374 to i64*, !mcsema_real_eip !121
  %376 = inttoptr i64 %374 to i32*, !mcsema_real_eip !121
  %377 = load i32, i32* %376, !mcsema_real_eip !121
  %378 = zext i32 %377 to i64, !mcsema_real_eip !121
  store i64 %378, i64* %R8, !mcsema_real_eip !121
  %ESI_val.210 = load i32, i32* %ESI.108, !mcsema_real_eip !122
  %R8D_val.212 = load i32, i32* %R8D.122, !mcsema_real_eip !122
  %379 = add i32 %R8D_val.212, %ESI_val.210, !mcsema_real_eip !122
  %380 = xor i32 %379, %ESI_val.210, !mcsema_real_eip !122
  %381 = xor i32 %380, %R8D_val.212, !mcsema_real_eip !122
  %382 = and i32 %381, 16, !mcsema_real_eip !122
  %383 = icmp ne i32 %382, 0, !mcsema_real_eip !122
  store i1 %383, i1* %AF, !mcsema_real_eip !122
  %384 = lshr i32 %379, 31, !mcsema_real_eip !122
  %385 = trunc i32 %384 to i1, !mcsema_real_eip !122
  store i1 %385, i1* %SF, !mcsema_real_eip !122
  %386 = icmp eq i32 %379, 0, !mcsema_real_eip !122
  store i1 %386, i1* %ZF, !mcsema_real_eip !122
  %387 = xor i32 %ESI_val.210, %R8D_val.212, !mcsema_real_eip !122
  %388 = xor i32 %387, -1, !mcsema_real_eip !122
  %389 = and i32 %388, %380, !mcsema_real_eip !122
  %390 = lshr i32 %389, 31, !mcsema_real_eip !122
  %391 = and i32 %390, 1, !mcsema_real_eip !122
  %392 = trunc i32 %391 to i1, !mcsema_real_eip !122
  store i1 %392, i1* %OF, !mcsema_real_eip !122
  %393 = trunc i32 %379 to i8, !mcsema_real_eip !122
  %394 = call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !122
  %395 = trunc i8 %394 to i1, !mcsema_real_eip !122
  %396 = xor i1 %395, true, !mcsema_real_eip !122
  store i1 %396, i1* %PF, !mcsema_real_eip !122
  %397 = icmp ult i32 %379, %ESI_val.210, !mcsema_real_eip !122
  store i1 %397, i1* %CF, !mcsema_real_eip !122
  %398 = zext i32 %379 to i64, !mcsema_real_eip !122
  store i64 %398, i64* %XSI, !mcsema_real_eip !122
  %R11_val.213 = load i64, i64* %R11, !mcsema_real_eip !123
  %399 = add i64 %R11_val.213, 8, !mcsema_real_eip !123
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !123
  %401 = inttoptr i64 %399 to i32*, !mcsema_real_eip !123
  %402 = load i32, i32* %401, !mcsema_real_eip !123
  %403 = zext i32 %402 to i64, !mcsema_real_eip !123
  store i64 %403, i64* %R8, !mcsema_real_eip !123
  %404 = add i64 %RBP_val.200, -96, !mcsema_real_eip !124
  %405 = inttoptr i64 %404 to i64*, !mcsema_real_eip !124
  %406 = load i64, i64* %405, !mcsema_real_eip !124
  store i64 %406, i64* %XAX, !mcsema_real_eip !124
  %407 = add i64 %406, 8, !mcsema_real_eip !125
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !125
  %409 = inttoptr i64 %407 to i32*, !mcsema_real_eip !125
  %410 = load i32, i32* %409, !mcsema_real_eip !125
  %411 = zext i32 %410 to i64, !mcsema_real_eip !125
  store i64 %411, i64* %R9, !mcsema_real_eip !125
  %R8D_val.217 = load i32, i32* %R8D.122, !mcsema_real_eip !126
  %R9D_val.219 = load i32, i32* %R9D.125, !mcsema_real_eip !126
  %412 = add i32 %R9D_val.219, %R8D_val.217, !mcsema_real_eip !126
  %413 = xor i32 %412, %R8D_val.217, !mcsema_real_eip !126
  %414 = xor i32 %413, %R9D_val.219, !mcsema_real_eip !126
  %415 = and i32 %414, 16, !mcsema_real_eip !126
  %416 = icmp ne i32 %415, 0, !mcsema_real_eip !126
  store i1 %416, i1* %AF, !mcsema_real_eip !126
  %417 = lshr i32 %412, 31, !mcsema_real_eip !126
  %418 = trunc i32 %417 to i1, !mcsema_real_eip !126
  store i1 %418, i1* %SF, !mcsema_real_eip !126
  %419 = icmp eq i32 %412, 0, !mcsema_real_eip !126
  store i1 %419, i1* %ZF, !mcsema_real_eip !126
  %420 = xor i32 %R8D_val.217, %R9D_val.219, !mcsema_real_eip !126
  %421 = xor i32 %420, -1, !mcsema_real_eip !126
  %422 = and i32 %421, %413, !mcsema_real_eip !126
  %423 = lshr i32 %422, 31, !mcsema_real_eip !126
  %424 = and i32 %423, 1, !mcsema_real_eip !126
  %425 = trunc i32 %424 to i1, !mcsema_real_eip !126
  store i1 %425, i1* %OF, !mcsema_real_eip !126
  %426 = trunc i32 %412 to i8, !mcsema_real_eip !126
  %427 = call i8 @llvm.ctpop.i8(i8 %426), !mcsema_real_eip !126
  %428 = trunc i8 %427 to i1, !mcsema_real_eip !126
  %429 = xor i1 %428, true, !mcsema_real_eip !126
  store i1 %429, i1* %PF, !mcsema_real_eip !126
  %430 = icmp ult i32 %412, %R8D_val.217, !mcsema_real_eip !126
  store i1 %430, i1* %CF, !mcsema_real_eip !126
  %431 = zext i32 %412 to i64, !mcsema_real_eip !126
  store i64 %431, i64* %R8, !mcsema_real_eip !126
  %432 = add i64 %RBP_val.200, -104, !mcsema_real_eip !127
  %433 = inttoptr i64 %432 to i64*, !mcsema_real_eip !127
  %434 = load i64, i64* %433, !mcsema_real_eip !127
  store i64 %434, i64* %XAX, !mcsema_real_eip !127
  %435 = add i64 %434, 8, !mcsema_real_eip !128
  %436 = inttoptr i64 %435 to i64*, !mcsema_real_eip !128
  %437 = inttoptr i64 %435 to i32*, !mcsema_real_eip !128
  %438 = load i32, i32* %437, !mcsema_real_eip !128
  %439 = zext i32 %438 to i64, !mcsema_real_eip !128
  store i64 %439, i64* %R9, !mcsema_real_eip !128
  %R8D_val.223 = load i32, i32* %R8D.122, !mcsema_real_eip !129
  %R9D_val.225 = load i32, i32* %R9D.125, !mcsema_real_eip !129
  %440 = add i32 %R9D_val.225, %R8D_val.223, !mcsema_real_eip !129
  %441 = xor i32 %440, %R8D_val.223, !mcsema_real_eip !129
  %442 = xor i32 %441, %R9D_val.225, !mcsema_real_eip !129
  %443 = and i32 %442, 16, !mcsema_real_eip !129
  %444 = icmp ne i32 %443, 0, !mcsema_real_eip !129
  store i1 %444, i1* %AF, !mcsema_real_eip !129
  %445 = lshr i32 %440, 31, !mcsema_real_eip !129
  %446 = trunc i32 %445 to i1, !mcsema_real_eip !129
  store i1 %446, i1* %SF, !mcsema_real_eip !129
  %447 = icmp eq i32 %440, 0, !mcsema_real_eip !129
  store i1 %447, i1* %ZF, !mcsema_real_eip !129
  %448 = xor i32 %R8D_val.223, %R9D_val.225, !mcsema_real_eip !129
  %449 = xor i32 %448, -1, !mcsema_real_eip !129
  %450 = and i32 %449, %441, !mcsema_real_eip !129
  %451 = lshr i32 %450, 31, !mcsema_real_eip !129
  %452 = and i32 %451, 1, !mcsema_real_eip !129
  %453 = trunc i32 %452 to i1, !mcsema_real_eip !129
  store i1 %453, i1* %OF, !mcsema_real_eip !129
  %454 = trunc i32 %440 to i8, !mcsema_real_eip !129
  %455 = call i8 @llvm.ctpop.i8(i8 %454), !mcsema_real_eip !129
  %456 = trunc i8 %455 to i1, !mcsema_real_eip !129
  %457 = xor i1 %456, true, !mcsema_real_eip !129
  store i1 %457, i1* %PF, !mcsema_real_eip !129
  %458 = icmp ult i32 %440, %R8D_val.223, !mcsema_real_eip !129
  store i1 %458, i1* %CF, !mcsema_real_eip !129
  %459 = zext i32 %440 to i64, !mcsema_real_eip !129
  store i64 %459, i64* %R8, !mcsema_real_eip !129
  %ESI_val.227 = load i32, i32* %ESI.108, !mcsema_real_eip !130
  %R8D_val.229 = load i32, i32* %R8D.122, !mcsema_real_eip !130
  %460 = add i32 %R8D_val.229, %ESI_val.227, !mcsema_real_eip !130
  %461 = xor i32 %460, %ESI_val.227, !mcsema_real_eip !130
  %462 = xor i32 %461, %R8D_val.229, !mcsema_real_eip !130
  %463 = and i32 %462, 16, !mcsema_real_eip !130
  %464 = icmp ne i32 %463, 0, !mcsema_real_eip !130
  store i1 %464, i1* %AF, !mcsema_real_eip !130
  %465 = lshr i32 %460, 31, !mcsema_real_eip !130
  %466 = trunc i32 %465 to i1, !mcsema_real_eip !130
  store i1 %466, i1* %SF, !mcsema_real_eip !130
  %467 = icmp eq i32 %460, 0, !mcsema_real_eip !130
  store i1 %467, i1* %ZF, !mcsema_real_eip !130
  %468 = xor i32 %ESI_val.227, %R8D_val.229, !mcsema_real_eip !130
  %469 = xor i32 %468, -1, !mcsema_real_eip !130
  %470 = and i32 %469, %461, !mcsema_real_eip !130
  %471 = lshr i32 %470, 31, !mcsema_real_eip !130
  %472 = and i32 %471, 1, !mcsema_real_eip !130
  %473 = trunc i32 %472 to i1, !mcsema_real_eip !130
  store i1 %473, i1* %OF, !mcsema_real_eip !130
  %474 = trunc i32 %460 to i8, !mcsema_real_eip !130
  %475 = call i8 @llvm.ctpop.i8(i8 %474), !mcsema_real_eip !130
  %476 = trunc i8 %475 to i1, !mcsema_real_eip !130
  %477 = xor i1 %476, true, !mcsema_real_eip !130
  store i1 %477, i1* %PF, !mcsema_real_eip !130
  %478 = icmp ult i32 %460, %ESI_val.227, !mcsema_real_eip !130
  store i1 %478, i1* %CF, !mcsema_real_eip !130
  %479 = zext i32 %460 to i64, !mcsema_real_eip !130
  store i64 %479, i64* %XSI, !mcsema_real_eip !130
  %480 = add i64 %RBP_val.200, -112, !mcsema_real_eip !131
  %481 = inttoptr i64 %480 to i64*, !mcsema_real_eip !131
  %ESI_val.232 = load i32, i32* %ESI.108, !mcsema_real_eip !131
  %482 = inttoptr i64 %480 to i32*, !mcsema_real_eip !131
  store i32 %ESI_val.232, i32* %482, !mcsema_real_eip !131
  %RBP_val.233 = load i64, i64* %XBP, !mcsema_real_eip !132
  %483 = add i64 %RBP_val.233, -112, !mcsema_real_eip !132
  %484 = inttoptr i64 %483 to i64*, !mcsema_real_eip !132
  %485 = inttoptr i64 %483 to i32*, !mcsema_real_eip !132
  %486 = load i32, i32* %485, !mcsema_real_eip !132
  %487 = zext i32 %486 to i64, !mcsema_real_eip !132
  store i64 %487, i64* %XSI, !mcsema_real_eip !132
  %488 = add i64 %RBP_val.233, -16, !mcsema_real_eip !133
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !133
  %ESI_val.236 = load i32, i32* %ESI.108, !mcsema_real_eip !133
  %490 = inttoptr i64 %488 to i32*, !mcsema_real_eip !133
  store i32 %ESI_val.236, i32* %490, !mcsema_real_eip !133
  %RBP_val.237 = load i64, i64* %XBP, !mcsema_real_eip !134
  %491 = add i64 %RBP_val.237, -120, !mcsema_real_eip !134
  %492 = inttoptr i64 %491 to i64*, !mcsema_real_eip !134
  %493 = load i64, i64* %492, !mcsema_real_eip !134
  store i64 %493, i64* %XAX, !mcsema_real_eip !134
  %494 = add i64 %RBP_val.237, -24, !mcsema_real_eip !135
  %495 = inttoptr i64 %494 to i64*, !mcsema_real_eip !135
  store i64 %493, i64* %495, !mcsema_real_eip !135
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !136
  %496 = add i64 %RBP_val.240, -16, !mcsema_real_eip !136
  %497 = inttoptr i64 %496 to i64*, !mcsema_real_eip !136
  %498 = inttoptr i64 %496 to i32*, !mcsema_real_eip !136
  %499 = load i32, i32* %498, !mcsema_real_eip !136
  %500 = zext i32 %499 to i64, !mcsema_real_eip !136
  store i64 %500, i64* %XSI, !mcsema_real_eip !136
  %501 = add i64 %RBP_val.240, -128, !mcsema_real_eip !137
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !137
  %ESI_val.243 = load i32, i32* %ESI.108, !mcsema_real_eip !137
  %503 = inttoptr i64 %501 to i32*, !mcsema_real_eip !137
  store i32 %ESI_val.243, i32* %503, !mcsema_real_eip !137
  %RBP_val.244 = load i64, i64* %XBP, !mcsema_real_eip !138
  %504 = add i64 %RBP_val.244, -24, !mcsema_real_eip !138
  %505 = inttoptr i64 %504 to i64*, !mcsema_real_eip !138
  %506 = load i64, i64* %505, !mcsema_real_eip !138
  store i64 %506, i64* %XAX, !mcsema_real_eip !138
  %507 = add i64 %RBP_val.244, -136, !mcsema_real_eip !139
  %508 = inttoptr i64 %507 to i64*, !mcsema_real_eip !139
  store i64 %506, i64* %508, !mcsema_real_eip !139
  %RBP_val.247 = load i64, i64* %XBP, !mcsema_real_eip !140
  %509 = add i64 %RBP_val.247, -136, !mcsema_real_eip !140
  %510 = inttoptr i64 %509 to i64*, !mcsema_real_eip !140
  %511 = load i64, i64* %510, !mcsema_real_eip !140
  store i64 %511, i64* %XAX, !mcsema_real_eip !140
  %512 = add i64 %RBP_val.247, -128, !mcsema_real_eip !141
  %513 = inttoptr i64 %512 to i64*, !mcsema_real_eip !141
  %514 = inttoptr i64 %512 to i32*, !mcsema_real_eip !141
  %515 = load i32, i32* %514, !mcsema_real_eip !141
  %516 = zext i32 %515 to i64, !mcsema_real_eip !141
  store i64 %516, i64* %XDX, !mcsema_real_eip !141
  %RSP_val.249 = load i64, i64* %XSP, !mcsema_real_eip !142
  %517 = inttoptr i64 %RSP_val.249 to i64*, !mcsema_real_eip !142
  %518 = load i64, i64* %517, !mcsema_real_eip !142
  store i64 %518, i64* %XBX, !mcsema_real_eip !142
  %519 = add i64 %RSP_val.249, 8, !mcsema_real_eip !142
  store i64 %519, i64* %XSP, !mcsema_real_eip !142
  %520 = inttoptr i64 %519 to i64*, !mcsema_real_eip !143
  %521 = load i64, i64* %520, !mcsema_real_eip !143
  store i64 %521, i64* %XBP, !mcsema_real_eip !143
  %522 = add i64 %519, 8, !mcsema_real_eip !143
  store i64 %522, i64* %XSP, !mcsema_real_eip !143
  %523 = add i64 %522, 8, !mcsema_real_eip !144
  %524 = inttoptr i64 %522 to i64*, !mcsema_real_eip !144
  %525 = load i64, i64* %524, !mcsema_real_eip !144
  store i64 %525, i64* %XIP, !mcsema_real_eip !144
  store i64 %523, i64* %XSP, !mcsema_real_eip !144
  ret void, !mcsema_real_eip !144
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
define x86_64_sysvcc void @sub_120.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 160
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 160
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
  br label %block_0x120, !mcsema_real_eip !2

block_0x120:                                      ; preds = %entry
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -144
  %2 = sub i64 %RSP_val.3, 144, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 144, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 144
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 144
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x221 to i64), i64* %XDI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %15, !mcsema_real_eip !6
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 10, i32* %17, !mcsema_real_eip !7
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %19, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %21, !mcsema_real_eip !9
  store i64 24, i64* %XAX, !mcsema_real_eip !10
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !11
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !11
  %22 = zext i32 %EAX_val.9 to i64, !mcsema_real_eip !11
  store i64 %22, i64* %XCX, !mcsema_real_eip !11
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -88
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %RDI_val.11 = load i64, i64* %XDI, !mcsema_real_eip !12
  store i64 %RDI_val.11, i64* %_allin_new_bt_27, !mcsema_real_eip !12
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !13
  store i64 %RCX_val.12, i64* %XDI, !mcsema_real_eip !13
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 -8
  %23 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !14
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_30, !mcsema_real_eip !14
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %23, i64* %XSP, !mcsema_real_eip !14
  %24 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.12)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %24, i64* %XAX, !mcsema_real_eip !14
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %24, i64* %_allin_new_bt_33, !mcsema_real_eip !15
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_36 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %25, label %26

; <label>:25:                                     ; preds = %block_0x120
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %26

; <label>:26:                                     ; preds = %block_0x120, %25
  %27 = phi i64* [ %_allin_new_bt_36, %block_0x120 ], [ %_address_in_parent_stack_bt_, %25 ]
  %_new_load_ = load i64, i64* %27
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !16
  %28 = inttoptr i64 %_new_load_ to i64*, !mcsema_real_eip !17
  %29 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !17
  store i32 5, i32* %29, !mcsema_real_eip !17
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_169 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_172 = sub i64 %_ptr_to_int_169, %_local_end_to_int_
  %_pot_address_in_parent_stack_173 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_172
  %_cond1_174 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_175 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_176 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_177 = or i1 %_cond2_1_175, %_cond2_2_176
  %_cond4_178 = icmp ule i8* %_pot_address_in_parent_stack_173, %_parent_stack_end_ptr_
  %_cond1_n_cond2_179 = and i1 %_cond1_174, %_cond2_177
  %_cond1_n_cond2_cond3_180 = and i1 %_cond1_n_cond2_179, %_cond4_178
  br i1 %_cond1_n_cond2_cond3_180, label %30, label %31

; <label>:30:                                     ; preds = %26
  %_address_in_parent_stack_bt_182 = bitcast i8* %_pot_address_in_parent_stack_173 to i64*
  br label %31

; <label>:31:                                     ; preds = %26, %30
  %32 = phi i64* [ %_allin_new_bt_39, %26 ], [ %_address_in_parent_stack_bt_182, %30 ]
  %_new_load_183 = load i64, i64* %32
  store i64 %_new_load_183, i64* %XAX, !mcsema_real_eip !18
  %33 = add i64 %_new_load_183, 4, !mcsema_real_eip !19
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !19
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !19
  store i32 5, i32* %35, !mcsema_real_eip !19
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_184 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_187 = sub i64 %_ptr_to_int_184, %_local_end_to_int_
  %_pot_address_in_parent_stack_188 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_187
  %_cond1_189 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_190 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_191 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_192 = or i1 %_cond2_1_190, %_cond2_2_191
  %_cond4_193 = icmp ule i8* %_pot_address_in_parent_stack_188, %_parent_stack_end_ptr_
  %_cond1_n_cond2_194 = and i1 %_cond1_189, %_cond2_192
  %_cond1_n_cond2_cond3_195 = and i1 %_cond1_n_cond2_194, %_cond4_193
  br i1 %_cond1_n_cond2_cond3_195, label %36, label %37

; <label>:36:                                     ; preds = %31
  %_address_in_parent_stack_bt_197 = bitcast i8* %_pot_address_in_parent_stack_188 to i64*
  br label %37

; <label>:37:                                     ; preds = %31, %36
  %38 = phi i64* [ %_allin_new_bt_42, %31 ], [ %_address_in_parent_stack_bt_197, %36 ]
  %_new_load_198 = load i64, i64* %38
  store i64 %_new_load_198, i64* %XAX, !mcsema_real_eip !20
  %39 = add i64 %_new_load_198, 8, !mcsema_real_eip !21
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !21
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !21
  store i32 5, i32* %41, !mcsema_real_eip !21
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_199 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_202 = sub i64 %_ptr_to_int_199, %_local_end_to_int_
  %_pot_address_in_parent_stack_203 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_202
  %_cond1_204 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_205 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_206 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_207 = or i1 %_cond2_1_205, %_cond2_2_206
  %_cond4_208 = icmp ule i8* %_pot_address_in_parent_stack_203, %_parent_stack_end_ptr_
  %_cond1_n_cond2_209 = and i1 %_cond1_204, %_cond2_207
  %_cond1_n_cond2_cond3_210 = and i1 %_cond1_n_cond2_209, %_cond4_208
  br i1 %_cond1_n_cond2_cond3_210, label %42, label %43

; <label>:42:                                     ; preds = %37
  %_address_in_parent_stack_bt_212 = bitcast i8* %_pot_address_in_parent_stack_203 to i64*
  br label %43

; <label>:43:                                     ; preds = %37, %42
  %44 = phi i64* [ %_allin_new_bt_45, %37 ], [ %_address_in_parent_stack_bt_212, %42 ]
  %_new_load_213 = load i64, i64* %44
  store i64 %_new_load_213, i64* %XAX, !mcsema_real_eip !22
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -8
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %45 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !23
  %46 = inttoptr i64 %45 to i32*, !mcsema_real_eip !23
  %_ptr_bt_216 = bitcast i32* %46 to i8*
  %_offset_above_rbp_217 = sub i64 %45, %_local_end_to_int_
  %_pot_address_in_parent_stack_218 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_217
  %_cond1_219 = icmp ugt i8* %_ptr_bt_216, %_local_stack_end_ptr_
  %_cond2_1_220 = icmp ugt i8* %_ptr_bt_216, %_parent_stack_end_ptr_
  %_cond2_2_221 = icmp ult i8* %_ptr_bt_216, %_parent_stack_start_ptr_
  %_cond2_222 = or i1 %_cond2_1_220, %_cond2_2_221
  %_cond4_223 = icmp ule i8* %_pot_address_in_parent_stack_218, %_parent_stack_end_ptr_
  %_cond1_n_cond2_224 = and i1 %_cond1_219, %_cond2_222
  %_cond1_n_cond2_cond3_225 = and i1 %_cond1_n_cond2_224, %_cond4_223
  br i1 %_cond1_n_cond2_cond3_225, label %47, label %48

; <label>:47:                                     ; preds = %43
  %_address_in_parent_stack_bt_227 = bitcast i8* %_pot_address_in_parent_stack_218 to i32*
  br label %48

; <label>:48:                                     ; preds = %43, %47
  %49 = phi i32* [ %46, %43 ], [ %_address_in_parent_stack_bt_227, %47 ]
  %_new_load_228 = load i32, i32* %49
  %50 = zext i32 %_new_load_228 to i64, !mcsema_real_eip !23
  store i64 %50, i64* %XDX, !mcsema_real_eip !23
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -48
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %EDX.26 = bitcast i64* %XDX to i32*, !mcsema_real_eip !24
  %EDX_val.27 = load i32, i32* %EDX.26, !mcsema_real_eip !24
  %51 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !24
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !24
  store i32 %EDX_val.27, i32* %52, !mcsema_real_eip !24
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -16
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %_ptr_to_int_229 = ptrtoint i64* %_allin_new_bt_54 to i64
  %_offset_above_rbp_232 = sub i64 %_ptr_to_int_229, %_local_end_to_int_
  %_pot_address_in_parent_stack_233 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_232
  %_cond1_234 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_235 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_236 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_237 = or i1 %_cond2_1_235, %_cond2_2_236
  %_cond4_238 = icmp ule i8* %_pot_address_in_parent_stack_233, %_parent_stack_end_ptr_
  %_cond1_n_cond2_239 = and i1 %_cond1_234, %_cond2_237
  %_cond1_n_cond2_cond3_240 = and i1 %_cond1_n_cond2_239, %_cond4_238
  br i1 %_cond1_n_cond2_cond3_240, label %53, label %54

; <label>:53:                                     ; preds = %48
  %_address_in_parent_stack_bt_242 = bitcast i8* %_pot_address_in_parent_stack_233 to i64*
  br label %54

; <label>:54:                                     ; preds = %48, %53
  %55 = phi i64* [ %_allin_new_bt_54, %48 ], [ %_address_in_parent_stack_bt_242, %53 ]
  %_new_load_243 = load i64, i64* %55
  store i64 %_new_load_243, i64* %XCX, !mcsema_real_eip !25
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -56
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  store i64 %_new_load_243, i64* %_allin_new_bt_57, !mcsema_real_eip !26
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -56
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %_ptr_to_int_244 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_247 = sub i64 %_ptr_to_int_244, %_local_end_to_int_
  %_pot_address_in_parent_stack_248 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_247
  %_cond1_249 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_250 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_251 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_252 = or i1 %_cond2_1_250, %_cond2_2_251
  %_cond4_253 = icmp ule i8* %_pot_address_in_parent_stack_248, %_parent_stack_end_ptr_
  %_cond1_n_cond2_254 = and i1 %_cond1_249, %_cond2_252
  %_cond1_n_cond2_cond3_255 = and i1 %_cond1_n_cond2_254, %_cond4_253
  br i1 %_cond1_n_cond2_cond3_255, label %56, label %57

; <label>:56:                                     ; preds = %54
  %_address_in_parent_stack_bt_257 = bitcast i8* %_pot_address_in_parent_stack_248 to i64*
  br label %57

; <label>:57:                                     ; preds = %54, %56
  %58 = phi i64* [ %_allin_new_bt_60, %54 ], [ %_address_in_parent_stack_bt_257, %56 ]
  %_new_load_258 = load i64, i64* %58
  store i64 %_new_load_258, i64* %XDI, !mcsema_real_eip !27
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -48
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %59 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !28
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !28
  %_ptr_bt_261 = bitcast i32* %60 to i8*
  %_offset_above_rbp_262 = sub i64 %59, %_local_end_to_int_
  %_pot_address_in_parent_stack_263 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_262
  %_cond1_264 = icmp ugt i8* %_ptr_bt_261, %_local_stack_end_ptr_
  %_cond2_1_265 = icmp ugt i8* %_ptr_bt_261, %_parent_stack_end_ptr_
  %_cond2_2_266 = icmp ult i8* %_ptr_bt_261, %_parent_stack_start_ptr_
  %_cond2_267 = or i1 %_cond2_1_265, %_cond2_2_266
  %_cond4_268 = icmp ule i8* %_pot_address_in_parent_stack_263, %_parent_stack_end_ptr_
  %_cond1_n_cond2_269 = and i1 %_cond1_264, %_cond2_267
  %_cond1_n_cond2_cond3_270 = and i1 %_cond1_n_cond2_269, %_cond4_268
  br i1 %_cond1_n_cond2_cond3_270, label %61, label %62

; <label>:61:                                     ; preds = %57
  %_address_in_parent_stack_bt_272 = bitcast i8* %_pot_address_in_parent_stack_263 to i32*
  br label %62

; <label>:62:                                     ; preds = %57, %61
  %63 = phi i32* [ %60, %57 ], [ %_address_in_parent_stack_bt_272, %61 ]
  %_new_load_273 = load i32, i32* %63
  %64 = zext i32 %_new_load_273 to i64, !mcsema_real_eip !28
  store i64 %64, i64* %XSI, !mcsema_real_eip !28
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -8
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %65 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !29
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !29
  %_ptr_bt_276 = bitcast i32* %66 to i8*
  %_offset_above_rbp_277 = sub i64 %65, %_local_end_to_int_
  %_pot_address_in_parent_stack_278 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_277
  %_cond1_279 = icmp ugt i8* %_ptr_bt_276, %_local_stack_end_ptr_
  %_cond2_1_280 = icmp ugt i8* %_ptr_bt_276, %_parent_stack_end_ptr_
  %_cond2_2_281 = icmp ult i8* %_ptr_bt_276, %_parent_stack_start_ptr_
  %_cond2_282 = or i1 %_cond2_1_280, %_cond2_2_281
  %_cond4_283 = icmp ule i8* %_pot_address_in_parent_stack_278, %_parent_stack_end_ptr_
  %_cond1_n_cond2_284 = and i1 %_cond1_279, %_cond2_282
  %_cond1_n_cond2_cond3_285 = and i1 %_cond1_n_cond2_284, %_cond4_283
  br i1 %_cond1_n_cond2_cond3_285, label %67, label %68

; <label>:67:                                     ; preds = %62
  %_address_in_parent_stack_bt_287 = bitcast i8* %_pot_address_in_parent_stack_278 to i32*
  br label %68

; <label>:68:                                     ; preds = %62, %67
  %69 = phi i32* [ %66, %62 ], [ %_address_in_parent_stack_bt_287, %67 ]
  %_new_load_288 = load i32, i32* %69
  %70 = zext i32 %_new_load_288 to i64, !mcsema_real_eip !29
  store i64 %70, i64* %XDX, !mcsema_real_eip !29
  %_load_rsp_ptr_67 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_68 = ptrtoint i8* %_load_rsp_ptr_67 to i64
  store volatile i64 %_new_ptr2int_68, i64* %XCX
  %71 = add i64 %_new_ptr2int_68, 16, !mcsema_real_eip !30
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !30
  %EDX_val.37 = load i32, i32* %EDX.26, !mcsema_real_eip !30
  %73 = inttoptr i64 %71 to i32*, !mcsema_real_eip !30
  store i32 %EDX_val.37, i32* %73, !mcsema_real_eip !30
  %_load_rbp_ptr_69 = load i8*, i8** %_RBP_ptr_
  %_new_gep_70 = getelementptr i8, i8* %_load_rbp_ptr_69, i64 -16
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %_ptr_to_int_289 = ptrtoint i64* %_allin_new_bt_71 to i64
  %_offset_above_rbp_292 = sub i64 %_ptr_to_int_289, %_local_end_to_int_
  %_pot_address_in_parent_stack_293 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_292
  %_cond1_294 = icmp ugt i8* %_new_gep_70, %_local_stack_end_ptr_
  %_cond2_1_295 = icmp ugt i8* %_new_gep_70, %_parent_stack_end_ptr_
  %_cond2_2_296 = icmp ult i8* %_new_gep_70, %_parent_stack_start_ptr_
  %_cond2_297 = or i1 %_cond2_1_295, %_cond2_2_296
  %_cond4_298 = icmp ule i8* %_pot_address_in_parent_stack_293, %_parent_stack_end_ptr_
  %_cond1_n_cond2_299 = and i1 %_cond1_294, %_cond2_297
  %_cond1_n_cond2_cond3_300 = and i1 %_cond1_n_cond2_299, %_cond4_298
  br i1 %_cond1_n_cond2_cond3_300, label %74, label %75

; <label>:74:                                     ; preds = %68
  %_address_in_parent_stack_bt_302 = bitcast i8* %_pot_address_in_parent_stack_293 to i64*
  br label %75

; <label>:75:                                     ; preds = %68, %74
  %76 = phi i64* [ %_allin_new_bt_71, %68 ], [ %_address_in_parent_stack_bt_302, %74 ]
  %_new_load_303 = load i64, i64* %76
  store i64 %_new_load_303, i64* %R8, !mcsema_real_eip !31
  %RCX_val.39 = load i64, i64* %XCX, !mcsema_real_eip !32
  %77 = add i64 %RCX_val.39, 8, !mcsema_real_eip !32
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !32
  store i64 %_new_load_303, i64* %78, !mcsema_real_eip !32
  %RCX_val.41 = load i64, i64* %XCX, !mcsema_real_eip !33
  %79 = add i64 %RCX_val.41, 32, !mcsema_real_eip !33
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !33
  %RAX_val.42 = load i64, i64* %XAX, !mcsema_real_eip !33
  store i64 %RAX_val.42, i64* %80, !mcsema_real_eip !33
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -16
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %81 = ptrtoint i64* %_allin_new_bt_74 to i64, !mcsema_real_eip !34
  store i64 %81, i64* %R8, !mcsema_real_eip !34
  %RCX_val.44 = load i64, i64* %XCX, !mcsema_real_eip !35
  %82 = add i64 %RCX_val.44, 24, !mcsema_real_eip !35
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !35
  store i64 %81, i64* %83, !mcsema_real_eip !35
  %RCX_val.46 = load i64, i64* %XCX, !mcsema_real_eip !36
  %84 = inttoptr i64 %RCX_val.46 to i64*, !mcsema_real_eip !36
  %85 = inttoptr i64 %RCX_val.46 to i32*, !mcsema_real_eip !36
  store i32 3, i32* %85, !mcsema_real_eip !36
  store i64 1, i64* %XDX, !mcsema_real_eip !37
  store i64 2, i64* %R9, !mcsema_real_eip !38
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -92
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %EDX_val.49 = load i32, i32* %EDX.26, !mcsema_real_eip !39
  %86 = ptrtoint i64* %_allin_new_bt_77 to i64, !mcsema_real_eip !39
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !39
  store i32 %EDX_val.49, i32* %87, !mcsema_real_eip !39
  %R8_val.50 = load i64, i64* %R8, !mcsema_real_eip !40
  store i64 %R8_val.50, i64* %XDX, !mcsema_real_eip !40
  %RAX_val.51 = load i64, i64* %XAX, !mcsema_real_eip !41
  store i64 %RAX_val.51, i64* %XCX, !mcsema_real_eip !41
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -92
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %88 = ptrtoint i64* %_allin_new_bt_80 to i64, !mcsema_real_eip !42
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !42
  %_ptr_bt_306 = bitcast i32* %89 to i8*
  %_offset_above_rbp_307 = sub i64 %88, %_local_end_to_int_
  %_pot_address_in_parent_stack_308 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_307
  %_cond1_309 = icmp ugt i8* %_ptr_bt_306, %_local_stack_end_ptr_
  %_cond2_1_310 = icmp ugt i8* %_ptr_bt_306, %_parent_stack_end_ptr_
  %_cond2_2_311 = icmp ult i8* %_ptr_bt_306, %_parent_stack_start_ptr_
  %_cond2_312 = or i1 %_cond2_1_310, %_cond2_2_311
  %_cond4_313 = icmp ule i8* %_pot_address_in_parent_stack_308, %_parent_stack_end_ptr_
  %_cond1_n_cond2_314 = and i1 %_cond1_309, %_cond2_312
  %_cond1_n_cond2_cond3_315 = and i1 %_cond1_n_cond2_314, %_cond4_313
  br i1 %_cond1_n_cond2_cond3_315, label %90, label %91

; <label>:90:                                     ; preds = %75
  %_address_in_parent_stack_bt_317 = bitcast i8* %_pot_address_in_parent_stack_308 to i32*
  br label %91

; <label>:91:                                     ; preds = %75, %90
  %92 = phi i32* [ %89, %75 ], [ %_address_in_parent_stack_bt_317, %90 ]
  %_new_load_318 = load i32, i32* %92
  %93 = zext i32 %_new_load_318 to i64, !mcsema_real_eip !42
  store i64 %93, i64* %R8, !mcsema_real_eip !42
  %_load_rsp_ptr_81 = load i8*, i8** %_RSP_ptr_
  %RSP_val.53 = load i64, i64* %XSP, !mcsema_real_eip !43
  %_new_gep_82 = getelementptr i8, i8* %_load_rsp_ptr_81, i64 -8
  %94 = sub i64 %RSP_val.53, 8, !mcsema_real_eip !43
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_83, !mcsema_real_eip !43
  store volatile i8* %_new_gep_82, i8** %_RSP_ptr_
  store i64 %94, i64* %XSP, !mcsema_real_eip !43
  %_load_rbp_ptr_163 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_82, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_163)
  %_rsp_fix_165 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_166 = getelementptr i8, i8* %_rsp_fix_165, i64 8
  store i8* %_gep_fix_166, i8** %_RSP_ptr_
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -64
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %EDX_val.56 = load i32, i32* %EDX.26, !mcsema_real_eip !44
  %95 = ptrtoint i64* %_allin_new_bt_86 to i64, !mcsema_real_eip !44
  %96 = inttoptr i64 %95 to i32*, !mcsema_real_eip !44
  store i32 %EDX_val.56, i32* %96, !mcsema_real_eip !44
  %_load_rbp_ptr_87 = load i8*, i8** %_RBP_ptr_
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_87, i64 -72
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %RAX_val.58 = load i64, i64* %XAX, !mcsema_real_eip !45
  store i64 %RAX_val.58, i64* %_allin_new_bt_89, !mcsema_real_eip !45
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -72
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %_ptr_to_int_319 = ptrtoint i64* %_allin_new_bt_92 to i64
  %_offset_above_rbp_322 = sub i64 %_ptr_to_int_319, %_local_end_to_int_
  %_pot_address_in_parent_stack_323 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_322
  %_cond1_324 = icmp ugt i8* %_new_gep_91, %_local_stack_end_ptr_
  %_cond2_1_325 = icmp ugt i8* %_new_gep_91, %_parent_stack_end_ptr_
  %_cond2_2_326 = icmp ult i8* %_new_gep_91, %_parent_stack_start_ptr_
  %_cond2_327 = or i1 %_cond2_1_325, %_cond2_2_326
  %_cond4_328 = icmp ule i8* %_pot_address_in_parent_stack_323, %_parent_stack_end_ptr_
  %_cond1_n_cond2_329 = and i1 %_cond1_324, %_cond2_327
  %_cond1_n_cond2_cond3_330 = and i1 %_cond1_n_cond2_329, %_cond4_328
  br i1 %_cond1_n_cond2_cond3_330, label %97, label %98

; <label>:97:                                     ; preds = %91
  %_address_in_parent_stack_bt_332 = bitcast i8* %_pot_address_in_parent_stack_323 to i64*
  br label %98

; <label>:98:                                     ; preds = %91, %97
  %99 = phi i64* [ %_allin_new_bt_92, %91 ], [ %_address_in_parent_stack_bt_332, %97 ]
  %_new_load_333 = load i64, i64* %99
  store i64 %_new_load_333, i64* %XAX, !mcsema_real_eip !46
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -40
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  store i64 %_new_load_333, i64* %_allin_new_bt_95, !mcsema_real_eip !47
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -64
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %100 = ptrtoint i64* %_allin_new_bt_98 to i64, !mcsema_real_eip !48
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !48
  %_ptr_bt_336 = bitcast i32* %101 to i8*
  %_offset_above_rbp_337 = sub i64 %100, %_local_end_to_int_
  %_pot_address_in_parent_stack_338 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_337
  %_cond1_339 = icmp ugt i8* %_ptr_bt_336, %_local_stack_end_ptr_
  %_cond2_1_340 = icmp ugt i8* %_ptr_bt_336, %_parent_stack_end_ptr_
  %_cond2_2_341 = icmp ult i8* %_ptr_bt_336, %_parent_stack_start_ptr_
  %_cond2_342 = or i1 %_cond2_1_340, %_cond2_2_341
  %_cond4_343 = icmp ule i8* %_pot_address_in_parent_stack_338, %_parent_stack_end_ptr_
  %_cond1_n_cond2_344 = and i1 %_cond1_339, %_cond2_342
  %_cond1_n_cond2_cond3_345 = and i1 %_cond1_n_cond2_344, %_cond4_343
  br i1 %_cond1_n_cond2_cond3_345, label %102, label %103

; <label>:102:                                    ; preds = %98
  %_address_in_parent_stack_bt_347 = bitcast i8* %_pot_address_in_parent_stack_338 to i32*
  br label %103

; <label>:103:                                    ; preds = %98, %102
  %104 = phi i32* [ %101, %98 ], [ %_address_in_parent_stack_bt_347, %102 ]
  %_new_load_348 = load i32, i32* %104
  %105 = zext i32 %_new_load_348 to i64, !mcsema_real_eip !48
  store i64 %105, i64* %XDX, !mcsema_real_eip !48
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_96, i64 -32
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %EDX_val.65 = load i32, i32* %EDX.26, !mcsema_real_eip !49
  %106 = ptrtoint i64* %_allin_new_bt_101 to i64, !mcsema_real_eip !49
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !49
  store i32 %EDX_val.65, i32* %107, !mcsema_real_eip !49
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -40
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %108 = ptrtoint i64* %_allin_new_bt_104 to i64, !mcsema_real_eip !50
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !50
  %_ptr_bt_351 = bitcast i32* %109 to i8*
  %_offset_above_rbp_352 = sub i64 %108, %_local_end_to_int_
  %_pot_address_in_parent_stack_353 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_352
  %_cond1_354 = icmp ugt i8* %_ptr_bt_351, %_local_stack_end_ptr_
  %_cond2_1_355 = icmp ugt i8* %_ptr_bt_351, %_parent_stack_end_ptr_
  %_cond2_2_356 = icmp ult i8* %_ptr_bt_351, %_parent_stack_start_ptr_
  %_cond2_357 = or i1 %_cond2_1_355, %_cond2_2_356
  %_cond4_358 = icmp ule i8* %_pot_address_in_parent_stack_353, %_parent_stack_end_ptr_
  %_cond1_n_cond2_359 = and i1 %_cond1_354, %_cond2_357
  %_cond1_n_cond2_cond3_360 = and i1 %_cond1_n_cond2_359, %_cond4_358
  br i1 %_cond1_n_cond2_cond3_360, label %110, label %111

; <label>:110:                                    ; preds = %103
  %_address_in_parent_stack_bt_362 = bitcast i8* %_pot_address_in_parent_stack_353 to i32*
  br label %111

; <label>:111:                                    ; preds = %103, %110
  %112 = phi i32* [ %109, %103 ], [ %_address_in_parent_stack_bt_362, %110 ]
  %_new_load_363 = load i32, i32* %112
  %113 = zext i32 %_new_load_363 to i64, !mcsema_real_eip !50
  store i64 %113, i64* %XDX, !mcsema_real_eip !50
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -36
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %114 = ptrtoint i64* %_allin_new_bt_107 to i64, !mcsema_real_eip !51
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !51
  %_ptr_bt_366 = bitcast i32* %115 to i8*
  %_offset_above_rbp_367 = sub i64 %114, %_local_end_to_int_
  %_pot_address_in_parent_stack_368 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_367
  %_cond1_369 = icmp ugt i8* %_ptr_bt_366, %_local_stack_end_ptr_
  %_cond2_1_370 = icmp ugt i8* %_ptr_bt_366, %_parent_stack_end_ptr_
  %_cond2_2_371 = icmp ult i8* %_ptr_bt_366, %_parent_stack_start_ptr_
  %_cond2_372 = or i1 %_cond2_1_370, %_cond2_2_371
  %_cond4_373 = icmp ule i8* %_pot_address_in_parent_stack_368, %_parent_stack_end_ptr_
  %_cond1_n_cond2_374 = and i1 %_cond1_369, %_cond2_372
  %_cond1_n_cond2_cond3_375 = and i1 %_cond1_n_cond2_374, %_cond4_373
  br i1 %_cond1_n_cond2_cond3_375, label %116, label %117

; <label>:116:                                    ; preds = %111
  %_address_in_parent_stack_bt_377 = bitcast i8* %_pot_address_in_parent_stack_368 to i32*
  br label %117

; <label>:117:                                    ; preds = %111, %116
  %118 = phi i32* [ %115, %111 ], [ %_address_in_parent_stack_bt_377, %116 ]
  %_new_load_378 = load i32, i32* %118
  %EDX_val.69 = load i32, i32* %EDX.26, !mcsema_real_eip !51
  %119 = add i32 %EDX_val.69, %_new_load_378, !mcsema_real_eip !51
  %120 = xor i32 %119, %_new_load_378, !mcsema_real_eip !51
  %121 = xor i32 %120, %EDX_val.69, !mcsema_real_eip !51
  %122 = and i32 %121, 16, !mcsema_real_eip !51
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !51
  store i1 %123, i1* %AF, !mcsema_real_eip !51
  %124 = lshr i32 %119, 31, !mcsema_real_eip !51
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !51
  store i1 %125, i1* %SF, !mcsema_real_eip !51
  %126 = icmp eq i32 %119, 0, !mcsema_real_eip !51
  store i1 %126, i1* %ZF, !mcsema_real_eip !51
  %127 = xor i32 %_new_load_378, %EDX_val.69, !mcsema_real_eip !51
  %128 = xor i32 %127, -1, !mcsema_real_eip !51
  %129 = and i32 %128, %120, !mcsema_real_eip !51
  %130 = lshr i32 %129, 31, !mcsema_real_eip !51
  %131 = and i32 %130, 1, !mcsema_real_eip !51
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !51
  store i1 %132, i1* %OF, !mcsema_real_eip !51
  %133 = trunc i32 %119 to i8, !mcsema_real_eip !51
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !51
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !51
  %136 = xor i1 %135, true, !mcsema_real_eip !51
  store i1 %136, i1* %PF, !mcsema_real_eip !51
  %137 = icmp ult i32 %119, %_new_load_378, !mcsema_real_eip !51
  store i1 %137, i1* %CF, !mcsema_real_eip !51
  %138 = zext i32 %119 to i64, !mcsema_real_eip !51
  store i64 %138, i64* %XDX, !mcsema_real_eip !51
  %_new_gep_109 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -32
  %_allin_new_bt_110 = bitcast i8* %_new_gep_109 to i64*
  %139 = ptrtoint i64* %_allin_new_bt_110 to i64, !mcsema_real_eip !52
  %140 = inttoptr i64 %139 to i32*, !mcsema_real_eip !52
  %_ptr_bt_381 = bitcast i32* %140 to i8*
  %_offset_above_rbp_382 = sub i64 %139, %_local_end_to_int_
  %_pot_address_in_parent_stack_383 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_382
  %_cond1_384 = icmp ugt i8* %_ptr_bt_381, %_local_stack_end_ptr_
  %_cond2_1_385 = icmp ugt i8* %_ptr_bt_381, %_parent_stack_end_ptr_
  %_cond2_2_386 = icmp ult i8* %_ptr_bt_381, %_parent_stack_start_ptr_
  %_cond2_387 = or i1 %_cond2_1_385, %_cond2_2_386
  %_cond4_388 = icmp ule i8* %_pot_address_in_parent_stack_383, %_parent_stack_end_ptr_
  %_cond1_n_cond2_389 = and i1 %_cond1_384, %_cond2_387
  %_cond1_n_cond2_cond3_390 = and i1 %_cond1_n_cond2_389, %_cond4_388
  br i1 %_cond1_n_cond2_cond3_390, label %141, label %142

; <label>:141:                                    ; preds = %117
  %_address_in_parent_stack_bt_392 = bitcast i8* %_pot_address_in_parent_stack_383 to i32*
  br label %142

; <label>:142:                                    ; preds = %117, %141
  %143 = phi i32* [ %140, %117 ], [ %_address_in_parent_stack_bt_392, %141 ]
  %_new_load_393 = load i32, i32* %143
  %EDX_val.72 = load i32, i32* %EDX.26, !mcsema_real_eip !52
  %144 = add i32 %EDX_val.72, %_new_load_393, !mcsema_real_eip !52
  %145 = xor i32 %144, %_new_load_393, !mcsema_real_eip !52
  %146 = xor i32 %145, %EDX_val.72, !mcsema_real_eip !52
  %147 = and i32 %146, 16, !mcsema_real_eip !52
  %148 = icmp ne i32 %147, 0, !mcsema_real_eip !52
  store i1 %148, i1* %AF, !mcsema_real_eip !52
  %149 = lshr i32 %144, 31, !mcsema_real_eip !52
  %150 = trunc i32 %149 to i1, !mcsema_real_eip !52
  store i1 %150, i1* %SF, !mcsema_real_eip !52
  %151 = icmp eq i32 %144, 0, !mcsema_real_eip !52
  store i1 %151, i1* %ZF, !mcsema_real_eip !52
  %152 = xor i32 %_new_load_393, %EDX_val.72, !mcsema_real_eip !52
  %153 = xor i32 %152, -1, !mcsema_real_eip !52
  %154 = and i32 %153, %145, !mcsema_real_eip !52
  %155 = lshr i32 %154, 31, !mcsema_real_eip !52
  %156 = and i32 %155, 1, !mcsema_real_eip !52
  %157 = trunc i32 %156 to i1, !mcsema_real_eip !52
  store i1 %157, i1* %OF, !mcsema_real_eip !52
  %158 = trunc i32 %144 to i8, !mcsema_real_eip !52
  %159 = call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !52
  %160 = trunc i8 %159 to i1, !mcsema_real_eip !52
  %161 = xor i1 %160, true, !mcsema_real_eip !52
  store i1 %161, i1* %PF, !mcsema_real_eip !52
  %162 = icmp ult i32 %144, %_new_load_393, !mcsema_real_eip !52
  store i1 %162, i1* %CF, !mcsema_real_eip !52
  %163 = zext i32 %144 to i64, !mcsema_real_eip !52
  store i64 %163, i64* %XDX, !mcsema_real_eip !52
  %_new_gep_112 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -76
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %EDX_val.75 = load i32, i32* %EDX.26, !mcsema_real_eip !53
  %164 = ptrtoint i64* %_allin_new_bt_113 to i64, !mcsema_real_eip !53
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !53
  store i32 %EDX_val.75, i32* %165, !mcsema_real_eip !53
  %_load_rbp_ptr_114 = load i8*, i8** %_RBP_ptr_
  %_new_gep_115 = getelementptr i8, i8* %_load_rbp_ptr_114, i64 -76
  %_allin_new_bt_116 = bitcast i8* %_new_gep_115 to i64*
  %166 = ptrtoint i64* %_allin_new_bt_116 to i64, !mcsema_real_eip !54
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !54
  %_ptr_bt_396 = bitcast i32* %167 to i8*
  %_offset_above_rbp_397 = sub i64 %166, %_local_end_to_int_
  %_pot_address_in_parent_stack_398 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_397
  %_cond1_399 = icmp ugt i8* %_ptr_bt_396, %_local_stack_end_ptr_
  %_cond2_1_400 = icmp ugt i8* %_ptr_bt_396, %_parent_stack_end_ptr_
  %_cond2_2_401 = icmp ult i8* %_ptr_bt_396, %_parent_stack_start_ptr_
  %_cond2_402 = or i1 %_cond2_1_400, %_cond2_2_401
  %_cond4_403 = icmp ule i8* %_pot_address_in_parent_stack_398, %_parent_stack_end_ptr_
  %_cond1_n_cond2_404 = and i1 %_cond1_399, %_cond2_402
  %_cond1_n_cond2_cond3_405 = and i1 %_cond1_n_cond2_404, %_cond4_403
  br i1 %_cond1_n_cond2_cond3_405, label %168, label %169

; <label>:168:                                    ; preds = %142
  %_address_in_parent_stack_bt_407 = bitcast i8* %_pot_address_in_parent_stack_398 to i32*
  br label %169

; <label>:169:                                    ; preds = %142, %168
  %170 = phi i32* [ %167, %142 ], [ %_address_in_parent_stack_bt_407, %168 ]
  %_new_load_408 = load i32, i32* %170
  %171 = zext i32 %_new_load_408 to i64, !mcsema_real_eip !54
  store i64 %171, i64* %XSI, !mcsema_real_eip !54
  %_new_gep_118 = getelementptr i8, i8* %_load_rbp_ptr_114, i64 -88
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %_ptr_to_int_409 = ptrtoint i64* %_allin_new_bt_119 to i64
  %_offset_above_rbp_412 = sub i64 %_ptr_to_int_409, %_local_end_to_int_
  %_pot_address_in_parent_stack_413 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_412
  %_cond1_414 = icmp ugt i8* %_new_gep_118, %_local_stack_end_ptr_
  %_cond2_1_415 = icmp ugt i8* %_new_gep_118, %_parent_stack_end_ptr_
  %_cond2_2_416 = icmp ult i8* %_new_gep_118, %_parent_stack_start_ptr_
  %_cond2_417 = or i1 %_cond2_1_415, %_cond2_2_416
  %_cond4_418 = icmp ule i8* %_pot_address_in_parent_stack_413, %_parent_stack_end_ptr_
  %_cond1_n_cond2_419 = and i1 %_cond1_414, %_cond2_417
  %_cond1_n_cond2_cond3_420 = and i1 %_cond1_n_cond2_419, %_cond4_418
  br i1 %_cond1_n_cond2_cond3_420, label %172, label %173

; <label>:172:                                    ; preds = %169
  %_address_in_parent_stack_bt_422 = bitcast i8* %_pot_address_in_parent_stack_413 to i64*
  br label %173

; <label>:173:                                    ; preds = %169, %172
  %174 = phi i64* [ %_allin_new_bt_119, %169 ], [ %_address_in_parent_stack_bt_422, %172 ]
  %_new_load_423 = load i64, i64* %174
  store i64 %_new_load_423, i64* %XDI, !mcsema_real_eip !55
  %AL.78 = bitcast i64* %XAX to i8*, !mcsema_real_eip !56
  store i8 0, i8* %AL.78, !mcsema_real_eip !56
  %RDX_val.81 = load i64, i64* %XDX, !mcsema_real_eip !57
  %RCX_val.82 = load i64, i64* %XCX, !mcsema_real_eip !57
  %R8_val.83 = load i64, i64* %R8, !mcsema_real_eip !57
  %R9_val.84 = load i64, i64* %R9, !mcsema_real_eip !57
  %_load_rsp_ptr_120 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_121 = bitcast i8* %_load_rsp_ptr_120 to i64*
  %_ptr_to_int_424 = ptrtoint i64* %_allin_new_bt_121 to i64
  %_offset_above_rbp_427 = sub i64 %_ptr_to_int_424, %_local_end_to_int_
  %_pot_address_in_parent_stack_428 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_427
  %_cond1_429 = icmp ugt i8* %_load_rsp_ptr_120, %_local_stack_end_ptr_
  %_cond2_1_430 = icmp ugt i8* %_load_rsp_ptr_120, %_parent_stack_end_ptr_
  %_cond2_2_431 = icmp ult i8* %_load_rsp_ptr_120, %_parent_stack_start_ptr_
  %_cond2_432 = or i1 %_cond2_1_430, %_cond2_2_431
  %_cond4_433 = icmp ule i8* %_pot_address_in_parent_stack_428, %_parent_stack_end_ptr_
  %_cond1_n_cond2_434 = and i1 %_cond1_429, %_cond2_432
  %_cond1_n_cond2_cond3_435 = and i1 %_cond1_n_cond2_434, %_cond4_433
  br i1 %_cond1_n_cond2_cond3_435, label %175, label %176

; <label>:175:                                    ; preds = %173
  %_address_in_parent_stack_bt_437 = bitcast i8* %_pot_address_in_parent_stack_428 to i64*
  br label %176

; <label>:176:                                    ; preds = %173, %175
  %177 = phi i64* [ %_allin_new_bt_121, %173 ], [ %_address_in_parent_stack_bt_437, %175 ]
  %_new_load_438 = load i64, i64* %177
  %_new_gep_122 = getelementptr i8, i8* %_load_rsp_ptr_120, i64 8
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %_ptr_to_int_439 = ptrtoint i64* %_allin_new_bt_123 to i64
  %_offset_above_rbp_442 = sub i64 %_ptr_to_int_439, %_local_end_to_int_
  %_pot_address_in_parent_stack_443 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_442
  %_cond1_444 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_445 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_446 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_447 = or i1 %_cond2_1_445, %_cond2_2_446
  %_cond4_448 = icmp ule i8* %_pot_address_in_parent_stack_443, %_parent_stack_end_ptr_
  %_cond1_n_cond2_449 = and i1 %_cond1_444, %_cond2_447
  %_cond1_n_cond2_cond3_450 = and i1 %_cond1_n_cond2_449, %_cond4_448
  br i1 %_cond1_n_cond2_cond3_450, label %178, label %179

; <label>:178:                                    ; preds = %176
  %_address_in_parent_stack_bt_452 = bitcast i8* %_pot_address_in_parent_stack_443 to i64*
  br label %179

; <label>:179:                                    ; preds = %176, %178
  %180 = phi i64* [ %_allin_new_bt_123, %176 ], [ %_address_in_parent_stack_bt_452, %178 ]
  %_new_load_453 = load i64, i64* %180
  %_new_gep_124 = getelementptr i8, i8* %_new_gep_122, i64 8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %_ptr_to_int_454 = ptrtoint i64* %_allin_new_bt_125 to i64
  %_offset_above_rbp_457 = sub i64 %_ptr_to_int_454, %_local_end_to_int_
  %_pot_address_in_parent_stack_458 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_457
  %_cond1_459 = icmp ugt i8* %_new_gep_124, %_local_stack_end_ptr_
  %_cond2_1_460 = icmp ugt i8* %_new_gep_124, %_parent_stack_end_ptr_
  %_cond2_2_461 = icmp ult i8* %_new_gep_124, %_parent_stack_start_ptr_
  %_cond2_462 = or i1 %_cond2_1_460, %_cond2_2_461
  %_cond4_463 = icmp ule i8* %_pot_address_in_parent_stack_458, %_parent_stack_end_ptr_
  %_cond1_n_cond2_464 = and i1 %_cond1_459, %_cond2_462
  %_cond1_n_cond2_cond3_465 = and i1 %_cond1_n_cond2_464, %_cond4_463
  br i1 %_cond1_n_cond2_cond3_465, label %181, label %182

; <label>:181:                                    ; preds = %179
  %_address_in_parent_stack_bt_467 = bitcast i8* %_pot_address_in_parent_stack_458 to i64*
  br label %182

; <label>:182:                                    ; preds = %179, %181
  %183 = phi i64* [ %_allin_new_bt_125, %179 ], [ %_address_in_parent_stack_bt_467, %181 ]
  %_new_load_468 = load i64, i64* %183
  %_new_gep_126 = getelementptr i8, i8* %_new_gep_124, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %_ptr_to_int_469 = ptrtoint i64* %_allin_new_bt_127 to i64
  %_offset_above_rbp_472 = sub i64 %_ptr_to_int_469, %_local_end_to_int_
  %_pot_address_in_parent_stack_473 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_472
  %_cond1_474 = icmp ugt i8* %_new_gep_126, %_local_stack_end_ptr_
  %_cond2_1_475 = icmp ugt i8* %_new_gep_126, %_parent_stack_end_ptr_
  %_cond2_2_476 = icmp ult i8* %_new_gep_126, %_parent_stack_start_ptr_
  %_cond2_477 = or i1 %_cond2_1_475, %_cond2_2_476
  %_cond4_478 = icmp ule i8* %_pot_address_in_parent_stack_473, %_parent_stack_end_ptr_
  %_cond1_n_cond2_479 = and i1 %_cond1_474, %_cond2_477
  %_cond1_n_cond2_cond3_480 = and i1 %_cond1_n_cond2_479, %_cond4_478
  br i1 %_cond1_n_cond2_cond3_480, label %184, label %185

; <label>:184:                                    ; preds = %182
  %_address_in_parent_stack_bt_482 = bitcast i8* %_pot_address_in_parent_stack_473 to i64*
  br label %185

; <label>:185:                                    ; preds = %182, %184
  %186 = phi i64* [ %_allin_new_bt_127, %182 ], [ %_address_in_parent_stack_bt_482, %184 ]
  %_new_load_483 = load i64, i64* %186
  %_new_gep_128 = getelementptr i8, i8* %_new_gep_126, i64 8
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %_ptr_to_int_484 = ptrtoint i64* %_allin_new_bt_129 to i64
  %_offset_above_rbp_487 = sub i64 %_ptr_to_int_484, %_local_end_to_int_
  %_pot_address_in_parent_stack_488 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_487
  %_cond1_489 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_490 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_491 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_492 = or i1 %_cond2_1_490, %_cond2_2_491
  %_cond4_493 = icmp ule i8* %_pot_address_in_parent_stack_488, %_parent_stack_end_ptr_
  %_cond1_n_cond2_494 = and i1 %_cond1_489, %_cond2_492
  %_cond1_n_cond2_cond3_495 = and i1 %_cond1_n_cond2_494, %_cond4_493
  br i1 %_cond1_n_cond2_cond3_495, label %187, label %188

; <label>:187:                                    ; preds = %185
  %_address_in_parent_stack_bt_497 = bitcast i8* %_pot_address_in_parent_stack_488 to i64*
  br label %188

; <label>:188:                                    ; preds = %185, %187
  %189 = phi i64* [ %_allin_new_bt_129, %185 ], [ %_address_in_parent_stack_bt_497, %187 ]
  %_new_load_498 = load i64, i64* %189
  %_new_gep_130 = getelementptr i8, i8* %_new_gep_128, i64 8
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %_ptr_to_int_499 = ptrtoint i64* %_allin_new_bt_131 to i64
  %_offset_above_rbp_502 = sub i64 %_ptr_to_int_499, %_local_end_to_int_
  %_pot_address_in_parent_stack_503 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_502
  %_cond1_504 = icmp ugt i8* %_new_gep_130, %_local_stack_end_ptr_
  %_cond2_1_505 = icmp ugt i8* %_new_gep_130, %_parent_stack_end_ptr_
  %_cond2_2_506 = icmp ult i8* %_new_gep_130, %_parent_stack_start_ptr_
  %_cond2_507 = or i1 %_cond2_1_505, %_cond2_2_506
  %_cond4_508 = icmp ule i8* %_pot_address_in_parent_stack_503, %_parent_stack_end_ptr_
  %_cond1_n_cond2_509 = and i1 %_cond1_504, %_cond2_507
  %_cond1_n_cond2_cond3_510 = and i1 %_cond1_n_cond2_509, %_cond4_508
  br i1 %_cond1_n_cond2_cond3_510, label %190, label %191

; <label>:190:                                    ; preds = %188
  %_address_in_parent_stack_bt_512 = bitcast i8* %_pot_address_in_parent_stack_503 to i64*
  br label %191

; <label>:191:                                    ; preds = %188, %190
  %192 = phi i64* [ %_allin_new_bt_131, %188 ], [ %_address_in_parent_stack_bt_512, %190 ]
  %_new_load_513 = load i64, i64* %192
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !57
  %_new_gep_133 = getelementptr i8, i8* %_load_rsp_ptr_120, i64 -8
  %193 = sub i64 %RSP_val.86, 8, !mcsema_real_eip !57
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_134, !mcsema_real_eip !57
  store volatile i8* %_new_gep_133, i8** %_RSP_ptr_
  store i64 %193, i64* %XSP, !mcsema_real_eip !57
  %194 = call x86_64_sysvcc i64 @_printf(i64 %_new_load_423, i64 %171, i64 %RDX_val.81, i64 %RCX_val.82, i64 %R8_val.83, i64 %R9_val.84, i64 %_new_load_438, i64 %_new_load_453, i64 %_new_load_468, i64 %_new_load_483, i64 %_new_load_498, i64 %_new_load_513)
  %_rsp_fix_167 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_168 = getelementptr i8, i8* %_rsp_fix_167, i64 8
  store i8* %_gep_fix_168, i8** %_RSP_ptr_
  store i64 %194, i64* %XAX, !mcsema_real_eip !57
  %_load_rbp_ptr_135 = load i8*, i8** %_RBP_ptr_
  %_new_gep_136 = getelementptr i8, i8* %_load_rbp_ptr_135, i64 -76
  %_allin_new_bt_137 = bitcast i8* %_new_gep_136 to i64*
  %195 = ptrtoint i64* %_allin_new_bt_137 to i64, !mcsema_real_eip !58
  %196 = inttoptr i64 %195 to i32*, !mcsema_real_eip !58
  %_ptr_bt_516 = bitcast i32* %196 to i8*
  %_offset_above_rbp_517 = sub i64 %195, %_local_end_to_int_
  %_pot_address_in_parent_stack_518 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_517
  %_cond1_519 = icmp ugt i8* %_ptr_bt_516, %_local_stack_end_ptr_
  %_cond2_1_520 = icmp ugt i8* %_ptr_bt_516, %_parent_stack_end_ptr_
  %_cond2_2_521 = icmp ult i8* %_ptr_bt_516, %_parent_stack_start_ptr_
  %_cond2_522 = or i1 %_cond2_1_520, %_cond2_2_521
  %_cond4_523 = icmp ule i8* %_pot_address_in_parent_stack_518, %_parent_stack_end_ptr_
  %_cond1_n_cond2_524 = and i1 %_cond1_519, %_cond2_522
  %_cond1_n_cond2_cond3_525 = and i1 %_cond1_n_cond2_524, %_cond4_523
  br i1 %_cond1_n_cond2_cond3_525, label %197, label %198

; <label>:197:                                    ; preds = %191
  %_address_in_parent_stack_bt_527 = bitcast i8* %_pot_address_in_parent_stack_518 to i32*
  br label %198

; <label>:198:                                    ; preds = %191, %197
  %199 = phi i32* [ %196, %191 ], [ %_address_in_parent_stack_bt_527, %197 ]
  %_new_load_528 = load i32, i32* %199
  %200 = zext i32 %_new_load_528 to i64, !mcsema_real_eip !58
  store i64 %200, i64* %XDX, !mcsema_real_eip !58
  %_new_gep_139 = getelementptr i8, i8* %_load_rbp_ptr_135, i64 -96
  %_allin_new_bt_140 = bitcast i8* %_new_gep_139 to i64*
  %EAX_val.90 = load i32, i32* %EAX.8, !mcsema_real_eip !59
  %201 = ptrtoint i64* %_allin_new_bt_140 to i64, !mcsema_real_eip !59
  %202 = inttoptr i64 %201 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.90, i32* %202, !mcsema_real_eip !59
  %EDX_val.92 = load i32, i32* %EDX.26, !mcsema_real_eip !60
  %203 = zext i32 %EDX_val.92 to i64, !mcsema_real_eip !60
  store i64 %203, i64* %XAX, !mcsema_real_eip !60
  %_load_rsp_ptr_141 = load i8*, i8** %_RSP_ptr_
  %RSP_val.93 = load i64, i64* %XSP, !mcsema_real_eip !61
  %_new_gep_142 = getelementptr i8, i8* %_load_rsp_ptr_141, i64 144
  %204 = add i64 144, %RSP_val.93, !mcsema_real_eip !61
  %_trans_p2i_143 = ptrtoint i8* %_new_gep_142 to i64
  %_trans_p2i_144 = ptrtoint i8* %_load_rsp_ptr_141 to i64
  %_trans_xor_145 = xor i64 %_trans_p2i_143, %_trans_p2i_144
  %205 = xor i64 %_trans_xor_145, 144, !mcsema_real_eip !61
  %206 = and i64 %205, 16, !mcsema_real_eip !61
  %207 = icmp ne i64 %206, 0, !mcsema_real_eip !61
  store i1 %207, i1* %AF, !mcsema_real_eip !61
  %208 = lshr i64 %204, 63, !mcsema_real_eip !61
  %209 = trunc i64 %208 to i1, !mcsema_real_eip !61
  store i1 %209, i1* %SF, !mcsema_real_eip !61
  %_trans_icmp_eq_147 = icmp eq i64 %_trans_p2i_143, 0
  store i1 %_trans_icmp_eq_147, i1* %ZF, !mcsema_real_eip !61
  %_trans_xor_149 = xor i64 %_trans_p2i_144, 144
  %210 = xor i64 %_trans_xor_149, -1, !mcsema_real_eip !61
  %211 = and i64 %210, %_trans_xor_145, !mcsema_real_eip !61
  %212 = lshr i64 %211, 63, !mcsema_real_eip !61
  %213 = and i64 %212, 1, !mcsema_real_eip !61
  %214 = trunc i64 %213 to i1, !mcsema_real_eip !61
  store i1 %214, i1* %OF, !mcsema_real_eip !61
  %_trans_trunc_154 = trunc i64 %_trans_p2i_143 to i8
  %215 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_154), !mcsema_real_eip !61
  %216 = trunc i8 %215 to i1, !mcsema_real_eip !61
  %217 = xor i1 %216, true, !mcsema_real_eip !61
  store i1 %217, i1* %PF, !mcsema_real_eip !61
  %_trans_icmp_ne_156 = icmp ne i64 %_trans_p2i_143, %RSP_val.93
  store i1 %_trans_icmp_ne_156, i1* %CF, !mcsema_real_eip !61
  store volatile i8* %_new_gep_142, i8** %_RSP_ptr_
  store i64 %204, i64* %XSP, !mcsema_real_eip !61
  %_allin_new_bt_158 = bitcast i8* %_new_gep_142 to i64*
  %_ptr_to_int_529 = ptrtoint i64* %_allin_new_bt_158 to i64
  %_offset_above_rbp_532 = sub i64 %_ptr_to_int_529, %_local_end_to_int_
  %_pot_address_in_parent_stack_533 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_532
  %_cond1_534 = icmp ugt i8* %_new_gep_142, %_local_stack_end_ptr_
  %_cond2_1_535 = icmp ugt i8* %_new_gep_142, %_parent_stack_end_ptr_
  %_cond2_2_536 = icmp ult i8* %_new_gep_142, %_parent_stack_start_ptr_
  %_cond2_537 = or i1 %_cond2_1_535, %_cond2_2_536
  %_cond4_538 = icmp ule i8* %_pot_address_in_parent_stack_533, %_parent_stack_end_ptr_
  %_cond1_n_cond2_539 = and i1 %_cond1_534, %_cond2_537
  %_cond1_n_cond2_cond3_540 = and i1 %_cond1_n_cond2_539, %_cond4_538
  br i1 %_cond1_n_cond2_cond3_540, label %218, label %219

; <label>:218:                                    ; preds = %198
  %_address_in_parent_stack_bt_542 = bitcast i8* %_pot_address_in_parent_stack_533 to i64*
  br label %219

; <label>:219:                                    ; preds = %198, %218
  %220 = phi i64* [ %_allin_new_bt_158, %198 ], [ %_address_in_parent_stack_bt_542, %218 ]
  %_new_load_543 = load i64, i64* %220
  %_new_int2ptr_ = inttoptr i64 %_new_load_543 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_543, i64* %XBP, !mcsema_real_eip !62
  %_new_gep_159 = getelementptr i8, i8* %_new_gep_142, i64 8
  %221 = add i64 %204, 8, !mcsema_real_eip !62
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_
  store i64 %221, i64* %XSP, !mcsema_real_eip !62
  %_new_gep_161 = getelementptr i8, i8* %_new_gep_159, i64 8
  %222 = add i64 %221, 8, !mcsema_real_eip !63
  %_allin_new_bt_162 = bitcast i8* %_new_gep_159 to i64*
  %_ptr_to_int_544 = ptrtoint i64* %_allin_new_bt_162 to i64
  %_offset_above_rbp_547 = sub i64 %_ptr_to_int_544, %_local_end_to_int_
  %_pot_address_in_parent_stack_548 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_547
  %_cond1_549 = icmp ugt i8* %_new_gep_159, %_local_stack_end_ptr_
  %_cond2_1_550 = icmp ugt i8* %_new_gep_159, %_parent_stack_end_ptr_
  %_cond2_2_551 = icmp ult i8* %_new_gep_159, %_parent_stack_start_ptr_
  %_cond2_552 = or i1 %_cond2_1_550, %_cond2_2_551
  %_cond4_553 = icmp ule i8* %_pot_address_in_parent_stack_548, %_parent_stack_end_ptr_
  %_cond1_n_cond2_554 = and i1 %_cond1_549, %_cond2_552
  %_cond1_n_cond2_cond3_555 = and i1 %_cond1_n_cond2_554, %_cond4_553
  br i1 %_cond1_n_cond2_cond3_555, label %223, label %224

; <label>:223:                                    ; preds = %219
  %_address_in_parent_stack_bt_557 = bitcast i8* %_pot_address_in_parent_stack_548 to i64*
  br label %224

; <label>:224:                                    ; preds = %219, %223
  %225 = phi i64* [ %_allin_new_bt_162, %219 ], [ %_address_in_parent_stack_bt_557, %223 ]
  %_new_load_558 = load i64, i64* %225
  store i64 %_new_load_558, i64* %XIP, !mcsema_real_eip !63
  store volatile i8* %_new_gep_161, i8** %_RSP_ptr_
  store i64 %222, i64* %XSP, !mcsema_real_eip !63
  ret void, !mcsema_real_eip !63
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 144
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 144
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !64
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !64
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !64
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !64
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !64
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !64
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !64
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !64
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !64
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !64
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !64
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !64
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !64
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !64
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !64
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !64
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !64
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !64
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !64
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !64
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !64
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !64
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !64
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !64
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !64
  br label %block_0x0, !mcsema_real_eip !64

block_0x0:                                        ; preds = %entry
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !64
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.97, 8, !mcsema_real_eip !64
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !64
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !65
  %RBX_val.99 = load i64, i64* %XBX, !mcsema_real_eip !66
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.100 = load i64, i64* %XSP, !mcsema_real_eip !66
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.100, 8, !mcsema_real_eip !66
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.99, i64* %_allin_new_bt_4, !mcsema_real_eip !66
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !66
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 48
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
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !67
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 40
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %_ptr_to_int_149 = ptrtoint i64* %_allin_new_bt_10 to i64
  %_offset_above_rbp_152 = sub i64 %_ptr_to_int_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  br i1 %_cond1_n_cond2_cond3_160, label %6, label %7

; <label>:6:                                      ; preds = %4
  %_address_in_parent_stack_bt_162 = bitcast i8* %_pot_address_in_parent_stack_153 to i64*
  br label %7

; <label>:7:                                      ; preds = %4, %6
  %8 = phi i64* [ %_allin_new_bt_10, %4 ], [ %_address_in_parent_stack_bt_162, %6 ]
  %_new_load_163 = load i64, i64* %8
  store i64 %_new_load_163, i64* %R10, !mcsema_real_eip !68
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %9 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !69
  store i64 %9, i64* %R11, !mcsema_real_eip !69
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 16
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %10 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !70
  %11 = inttoptr i64 %10 to i32*, !mcsema_real_eip !70
  %_ptr_bt_166 = bitcast i32* %11 to i8*
  %_offset_above_rbp_167 = sub i64 %10, %_local_end_to_int_
  %_pot_address_in_parent_stack_168 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_167
  %_cond1_169 = icmp ugt i8* %_ptr_bt_166, %_local_stack_end_ptr_
  %_cond2_1_170 = icmp ugt i8* %_ptr_bt_166, %_parent_stack_end_ptr_
  %_cond2_2_171 = icmp ult i8* %_ptr_bt_166, %_parent_stack_start_ptr_
  %_cond2_172 = or i1 %_cond2_1_170, %_cond2_2_171
  %_cond4_173 = icmp ule i8* %_pot_address_in_parent_stack_168, %_parent_stack_end_ptr_
  %_cond1_n_cond2_174 = and i1 %_cond1_169, %_cond2_172
  %_cond1_n_cond2_cond3_175 = and i1 %_cond1_n_cond2_174, %_cond4_173
  br i1 %_cond1_n_cond2_cond3_175, label %12, label %13

; <label>:12:                                     ; preds = %7
  %_address_in_parent_stack_bt_177 = bitcast i8* %_pot_address_in_parent_stack_168 to i32*
  br label %13

; <label>:13:                                     ; preds = %7, %12
  %14 = phi i32* [ %11, %7 ], [ %_address_in_parent_stack_bt_177, %12 ]
  %_new_load_178 = load i32, i32* %14
  %15 = zext i32 %_new_load_178 to i64, !mcsema_real_eip !70
  store i64 %15, i64* %XBX, !mcsema_real_eip !70
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -56
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %RDI_val.106 = load i64, i64* %XDI, !mcsema_real_eip !71
  store i64 %RDI_val.106, i64* %_allin_new_bt_19, !mcsema_real_eip !71
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -48
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %ESI.108 = bitcast i64* %XSI to i32*, !mcsema_real_eip !72
  %ESI_val.109 = load i32, i32* %ESI.108, !mcsema_real_eip !72
  %16 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !72
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !72
  store i32 %ESI_val.109, i32* %17, !mcsema_real_eip !72
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -48
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !73
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !73
  %_ptr_bt_181 = bitcast i32* %19 to i8*
  %_offset_above_rbp_182 = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_183 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_182
  %_cond1_184 = icmp ugt i8* %_ptr_bt_181, %_local_stack_end_ptr_
  %_cond2_1_185 = icmp ugt i8* %_ptr_bt_181, %_parent_stack_end_ptr_
  %_cond2_2_186 = icmp ult i8* %_ptr_bt_181, %_parent_stack_start_ptr_
  %_cond2_187 = or i1 %_cond2_1_185, %_cond2_2_186
  %_cond4_188 = icmp ule i8* %_pot_address_in_parent_stack_183, %_parent_stack_end_ptr_
  %_cond1_n_cond2_189 = and i1 %_cond1_184, %_cond2_187
  %_cond1_n_cond2_cond3_190 = and i1 %_cond1_n_cond2_189, %_cond4_188
  br i1 %_cond1_n_cond2_cond3_190, label %20, label %21

; <label>:20:                                     ; preds = %13
  %_address_in_parent_stack_bt_192 = bitcast i8* %_pot_address_in_parent_stack_183 to i32*
  br label %21

; <label>:21:                                     ; preds = %13, %20
  %22 = phi i32* [ %19, %13 ], [ %_address_in_parent_stack_bt_192, %20 ]
  %_new_load_193 = load i32, i32* %22
  %23 = zext i32 %_new_load_193 to i64, !mcsema_real_eip !73
  store i64 %23, i64* %XSI, !mcsema_real_eip !73
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -32
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %ESI_val.113 = load i32, i32* %ESI.108, !mcsema_real_eip !74
  %24 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !74
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !74
  store i32 %ESI_val.113, i32* %25, !mcsema_real_eip !74
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -56
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %_ptr_to_int_194 = ptrtoint i64* %_allin_new_bt_31 to i64
  %_offset_above_rbp_197 = sub i64 %_ptr_to_int_194, %_local_end_to_int_
  %_pot_address_in_parent_stack_198 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_197
  %_cond1_199 = icmp ugt i8* %_new_gep_30, %_local_stack_end_ptr_
  %_cond2_1_200 = icmp ugt i8* %_new_gep_30, %_parent_stack_end_ptr_
  %_cond2_2_201 = icmp ult i8* %_new_gep_30, %_parent_stack_start_ptr_
  %_cond2_202 = or i1 %_cond2_1_200, %_cond2_2_201
  %_cond4_203 = icmp ule i8* %_pot_address_in_parent_stack_198, %_parent_stack_end_ptr_
  %_cond1_n_cond2_204 = and i1 %_cond1_199, %_cond2_202
  %_cond1_n_cond2_cond3_205 = and i1 %_cond1_n_cond2_204, %_cond4_203
  br i1 %_cond1_n_cond2_cond3_205, label %26, label %27

; <label>:26:                                     ; preds = %21
  %_address_in_parent_stack_bt_207 = bitcast i8* %_pot_address_in_parent_stack_198 to i64*
  br label %27

; <label>:27:                                     ; preds = %21, %26
  %28 = phi i64* [ %_allin_new_bt_31, %21 ], [ %_address_in_parent_stack_bt_207, %26 ]
  %_new_load_208 = load i64, i64* %28
  store i64 %_new_load_208, i64* %XDI, !mcsema_real_eip !75
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -40
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  store i64 %_new_load_208, i64* %_allin_new_bt_34, !mcsema_real_eip !76
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -64
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %RDX_val.118 = load i64, i64* %XDX, !mcsema_real_eip !77
  store i64 %RDX_val.118, i64* %_allin_new_bt_37, !mcsema_real_eip !77
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -72
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %RCX_val.120 = load i64, i64* %XCX, !mcsema_real_eip !78
  store i64 %RCX_val.120, i64* %_allin_new_bt_40, !mcsema_real_eip !78
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -76
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %R8D.122 = bitcast i64* %R8 to i32*, !mcsema_real_eip !79
  %R8D_val.123 = load i32, i32* %R8D.122, !mcsema_real_eip !79
  %29 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !79
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !79
  store i32 %R8D_val.123, i32* %30, !mcsema_real_eip !79
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -80
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %R9D.125 = bitcast i64* %R9 to i32*, !mcsema_real_eip !80
  %R9D_val.126 = load i32, i32* %R9D.125, !mcsema_real_eip !80
  %31 = ptrtoint i64* %_allin_new_bt_46 to i64, !mcsema_real_eip !80
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !80
  store i32 %R9D_val.126, i32* %32, !mcsema_real_eip !80
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -84
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %EBX.128 = bitcast i64* %XBX to i32*, !mcsema_real_eip !81
  %EBX_val.129 = load i32, i32* %EBX.128, !mcsema_real_eip !81
  %33 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !81
  %34 = inttoptr i64 %33 to i32*, !mcsema_real_eip !81
  store i32 %EBX_val.129, i32* %34, !mcsema_real_eip !81
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -96
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %R10_val.131 = load i64, i64* %R10, !mcsema_real_eip !82
  store i64 %R10_val.131, i64* %_allin_new_bt_52, !mcsema_real_eip !82
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -104
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %RAX_val.133 = load i64, i64* %XAX, !mcsema_real_eip !83
  store i64 %RAX_val.133, i64* %_allin_new_bt_55, !mcsema_real_eip !83
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -40
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %35 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !84
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !84
  %_ptr_bt_211 = bitcast i32* %36 to i8*
  %_offset_above_rbp_212 = sub i64 %35, %_local_end_to_int_
  %_pot_address_in_parent_stack_213 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_212
  %_cond1_214 = icmp ugt i8* %_ptr_bt_211, %_local_stack_end_ptr_
  %_cond2_1_215 = icmp ugt i8* %_ptr_bt_211, %_parent_stack_end_ptr_
  %_cond2_2_216 = icmp ult i8* %_ptr_bt_211, %_parent_stack_start_ptr_
  %_cond2_217 = or i1 %_cond2_1_215, %_cond2_2_216
  %_cond4_218 = icmp ule i8* %_pot_address_in_parent_stack_213, %_parent_stack_end_ptr_
  %_cond1_n_cond2_219 = and i1 %_cond1_214, %_cond2_217
  %_cond1_n_cond2_cond3_220 = and i1 %_cond1_n_cond2_219, %_cond4_218
  br i1 %_cond1_n_cond2_cond3_220, label %37, label %38

; <label>:37:                                     ; preds = %27
  %_address_in_parent_stack_bt_222 = bitcast i8* %_pot_address_in_parent_stack_213 to i32*
  br label %38

; <label>:38:                                     ; preds = %27, %37
  %39 = phi i32* [ %36, %27 ], [ %_address_in_parent_stack_bt_222, %37 ]
  %_new_load_223 = load i32, i32* %39
  %40 = zext i32 %_new_load_223 to i64, !mcsema_real_eip !84
  store i64 %40, i64* %XSI, !mcsema_real_eip !84
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -64
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_224 = ptrtoint i64* %_allin_new_bt_61 to i64
  %_offset_above_rbp_227 = sub i64 %_ptr_to_int_224, %_local_end_to_int_
  %_pot_address_in_parent_stack_228 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_227
  %_cond1_229 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_230 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_231 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_232 = or i1 %_cond2_1_230, %_cond2_2_231
  %_cond4_233 = icmp ule i8* %_pot_address_in_parent_stack_228, %_parent_stack_end_ptr_
  %_cond1_n_cond2_234 = and i1 %_cond1_229, %_cond2_232
  %_cond1_n_cond2_cond3_235 = and i1 %_cond1_n_cond2_234, %_cond4_233
  br i1 %_cond1_n_cond2_cond3_235, label %41, label %42

; <label>:41:                                     ; preds = %38
  %_address_in_parent_stack_bt_237 = bitcast i8* %_pot_address_in_parent_stack_228 to i64*
  br label %42

; <label>:42:                                     ; preds = %38, %41
  %43 = phi i64* [ %_allin_new_bt_61, %38 ], [ %_address_in_parent_stack_bt_237, %41 ]
  %_new_load_238 = load i64, i64* %43
  store i64 %_new_load_238, i64* %XAX, !mcsema_real_eip !85
  %44 = inttoptr i64 %_new_load_238 to i64*, !mcsema_real_eip !86
  %45 = inttoptr i64 %_new_load_238 to i32*, !mcsema_real_eip !86
  %_ptr_bt_241 = bitcast i32* %45 to i8*
  %_offset_above_rbp_242 = sub i64 %_new_load_238, %_local_end_to_int_
  %_pot_address_in_parent_stack_243 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_242
  %_cond1_244 = icmp ugt i8* %_ptr_bt_241, %_local_stack_end_ptr_
  %_cond2_1_245 = icmp ugt i8* %_ptr_bt_241, %_parent_stack_end_ptr_
  %_cond2_2_246 = icmp ult i8* %_ptr_bt_241, %_parent_stack_start_ptr_
  %_cond2_247 = or i1 %_cond2_1_245, %_cond2_2_246
  %_cond4_248 = icmp ule i8* %_pot_address_in_parent_stack_243, %_parent_stack_end_ptr_
  %_cond1_n_cond2_249 = and i1 %_cond1_244, %_cond2_247
  %_cond1_n_cond2_cond3_250 = and i1 %_cond1_n_cond2_249, %_cond4_248
  br i1 %_cond1_n_cond2_cond3_250, label %46, label %47

; <label>:46:                                     ; preds = %42
  %_address_in_parent_stack_bt_252 = bitcast i8* %_pot_address_in_parent_stack_243 to i32*
  br label %47

; <label>:47:                                     ; preds = %42, %46
  %48 = phi i32* [ %45, %42 ], [ %_address_in_parent_stack_bt_252, %46 ]
  %_new_load_253 = load i32, i32* %48
  %49 = zext i32 %_new_load_253 to i64, !mcsema_real_eip !86
  store i64 %49, i64* %R8, !mcsema_real_eip !86
  %ESI_val.138 = load i32, i32* %ESI.108, !mcsema_real_eip !87
  %R8D_val.140 = load i32, i32* %R8D.122, !mcsema_real_eip !87
  %50 = add i32 %R8D_val.140, %ESI_val.138, !mcsema_real_eip !87
  %51 = xor i32 %50, %ESI_val.138, !mcsema_real_eip !87
  %52 = xor i32 %51, %R8D_val.140, !mcsema_real_eip !87
  %53 = and i32 %52, 16, !mcsema_real_eip !87
  %54 = icmp ne i32 %53, 0, !mcsema_real_eip !87
  store i1 %54, i1* %AF, !mcsema_real_eip !87
  %55 = lshr i32 %50, 31, !mcsema_real_eip !87
  %56 = trunc i32 %55 to i1, !mcsema_real_eip !87
  store i1 %56, i1* %SF, !mcsema_real_eip !87
  %57 = icmp eq i32 %50, 0, !mcsema_real_eip !87
  store i1 %57, i1* %ZF, !mcsema_real_eip !87
  %58 = xor i32 %ESI_val.138, %R8D_val.140, !mcsema_real_eip !87
  %59 = xor i32 %58, -1, !mcsema_real_eip !87
  %60 = and i32 %59, %51, !mcsema_real_eip !87
  %61 = lshr i32 %60, 31, !mcsema_real_eip !87
  %62 = and i32 %61, 1, !mcsema_real_eip !87
  %63 = trunc i32 %62 to i1, !mcsema_real_eip !87
  store i1 %63, i1* %OF, !mcsema_real_eip !87
  %64 = trunc i32 %50 to i8, !mcsema_real_eip !87
  %65 = call i8 @llvm.ctpop.i8(i8 %64), !mcsema_real_eip !87
  %66 = trunc i8 %65 to i1, !mcsema_real_eip !87
  %67 = xor i1 %66, true, !mcsema_real_eip !87
  store i1 %67, i1* %PF, !mcsema_real_eip !87
  %68 = icmp ult i32 %50, %ESI_val.138, !mcsema_real_eip !87
  store i1 %68, i1* %CF, !mcsema_real_eip !87
  %69 = zext i32 %50 to i64, !mcsema_real_eip !87
  store i64 %69, i64* %XSI, !mcsema_real_eip !87
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -72
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %_ptr_to_int_254 = ptrtoint i64* %_allin_new_bt_64 to i64
  %_offset_above_rbp_257 = sub i64 %_ptr_to_int_254, %_local_end_to_int_
  %_pot_address_in_parent_stack_258 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_257
  %_cond1_259 = icmp ugt i8* %_new_gep_63, %_local_stack_end_ptr_
  %_cond2_1_260 = icmp ugt i8* %_new_gep_63, %_parent_stack_end_ptr_
  %_cond2_2_261 = icmp ult i8* %_new_gep_63, %_parent_stack_start_ptr_
  %_cond2_262 = or i1 %_cond2_1_260, %_cond2_2_261
  %_cond4_263 = icmp ule i8* %_pot_address_in_parent_stack_258, %_parent_stack_end_ptr_
  %_cond1_n_cond2_264 = and i1 %_cond1_259, %_cond2_262
  %_cond1_n_cond2_cond3_265 = and i1 %_cond1_n_cond2_264, %_cond4_263
  br i1 %_cond1_n_cond2_cond3_265, label %70, label %71

; <label>:70:                                     ; preds = %47
  %_address_in_parent_stack_bt_267 = bitcast i8* %_pot_address_in_parent_stack_258 to i64*
  br label %71

; <label>:71:                                     ; preds = %47, %70
  %72 = phi i64* [ %_allin_new_bt_64, %47 ], [ %_address_in_parent_stack_bt_267, %70 ]
  %_new_load_268 = load i64, i64* %72
  store i64 %_new_load_268, i64* %XAX, !mcsema_real_eip !88
  %73 = inttoptr i64 %_new_load_268 to i64*, !mcsema_real_eip !89
  %74 = inttoptr i64 %_new_load_268 to i32*, !mcsema_real_eip !89
  %_ptr_bt_271 = bitcast i32* %74 to i8*
  %_offset_above_rbp_272 = sub i64 %_new_load_268, %_local_end_to_int_
  %_pot_address_in_parent_stack_273 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_272
  %_cond1_274 = icmp ugt i8* %_ptr_bt_271, %_local_stack_end_ptr_
  %_cond2_1_275 = icmp ugt i8* %_ptr_bt_271, %_parent_stack_end_ptr_
  %_cond2_2_276 = icmp ult i8* %_ptr_bt_271, %_parent_stack_start_ptr_
  %_cond2_277 = or i1 %_cond2_1_275, %_cond2_2_276
  %_cond4_278 = icmp ule i8* %_pot_address_in_parent_stack_273, %_parent_stack_end_ptr_
  %_cond1_n_cond2_279 = and i1 %_cond1_274, %_cond2_277
  %_cond1_n_cond2_cond3_280 = and i1 %_cond1_n_cond2_279, %_cond4_278
  br i1 %_cond1_n_cond2_cond3_280, label %75, label %76

; <label>:75:                                     ; preds = %71
  %_address_in_parent_stack_bt_282 = bitcast i8* %_pot_address_in_parent_stack_273 to i32*
  br label %76

; <label>:76:                                     ; preds = %71, %75
  %77 = phi i32* [ %74, %71 ], [ %_address_in_parent_stack_bt_282, %75 ]
  %_new_load_283 = load i32, i32* %77
  %78 = zext i32 %_new_load_283 to i64, !mcsema_real_eip !89
  store i64 %78, i64* %R8, !mcsema_real_eip !89
  %ESI_val.144 = load i32, i32* %ESI.108, !mcsema_real_eip !90
  %R8D_val.146 = load i32, i32* %R8D.122, !mcsema_real_eip !90
  %79 = add i32 %R8D_val.146, %ESI_val.144, !mcsema_real_eip !90
  %80 = xor i32 %79, %ESI_val.144, !mcsema_real_eip !90
  %81 = xor i32 %80, %R8D_val.146, !mcsema_real_eip !90
  %82 = and i32 %81, 16, !mcsema_real_eip !90
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !90
  store i1 %83, i1* %AF, !mcsema_real_eip !90
  %84 = lshr i32 %79, 31, !mcsema_real_eip !90
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !90
  store i1 %85, i1* %SF, !mcsema_real_eip !90
  %86 = icmp eq i32 %79, 0, !mcsema_real_eip !90
  store i1 %86, i1* %ZF, !mcsema_real_eip !90
  %87 = xor i32 %ESI_val.144, %R8D_val.146, !mcsema_real_eip !90
  %88 = xor i32 %87, -1, !mcsema_real_eip !90
  %89 = and i32 %88, %80, !mcsema_real_eip !90
  %90 = lshr i32 %89, 31, !mcsema_real_eip !90
  %91 = and i32 %90, 1, !mcsema_real_eip !90
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !90
  store i1 %92, i1* %OF, !mcsema_real_eip !90
  %93 = trunc i32 %79 to i8, !mcsema_real_eip !90
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !90
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !90
  %96 = xor i1 %95, true, !mcsema_real_eip !90
  store i1 %96, i1* %PF, !mcsema_real_eip !90
  %97 = icmp ult i32 %79, %ESI_val.144, !mcsema_real_eip !90
  store i1 %97, i1* %CF, !mcsema_real_eip !90
  %98 = zext i32 %79 to i64, !mcsema_real_eip !90
  store i64 %98, i64* %XSI, !mcsema_real_eip !90
  %R11_val.147 = load i64, i64* %R11, !mcsema_real_eip !91
  %99 = inttoptr i64 %R11_val.147 to i64*, !mcsema_real_eip !91
  %100 = inttoptr i64 %R11_val.147 to i32*, !mcsema_real_eip !91
  %_ptr_bt_286 = bitcast i32* %100 to i8*
  %_offset_above_rbp_287 = sub i64 %R11_val.147, %_local_end_to_int_
  %_pot_address_in_parent_stack_288 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_287
  %_cond1_289 = icmp ugt i8* %_ptr_bt_286, %_local_stack_end_ptr_
  %_cond2_1_290 = icmp ugt i8* %_ptr_bt_286, %_parent_stack_end_ptr_
  %_cond2_2_291 = icmp ult i8* %_ptr_bt_286, %_parent_stack_start_ptr_
  %_cond2_292 = or i1 %_cond2_1_290, %_cond2_2_291
  %_cond4_293 = icmp ule i8* %_pot_address_in_parent_stack_288, %_parent_stack_end_ptr_
  %_cond1_n_cond2_294 = and i1 %_cond1_289, %_cond2_292
  %_cond1_n_cond2_cond3_295 = and i1 %_cond1_n_cond2_294, %_cond4_293
  br i1 %_cond1_n_cond2_cond3_295, label %101, label %102

; <label>:101:                                    ; preds = %76
  %_address_in_parent_stack_bt_297 = bitcast i8* %_pot_address_in_parent_stack_288 to i32*
  br label %102

; <label>:102:                                    ; preds = %76, %101
  %103 = phi i32* [ %100, %76 ], [ %_address_in_parent_stack_bt_297, %101 ]
  %_new_load_298 = load i32, i32* %103
  %104 = zext i32 %_new_load_298 to i64, !mcsema_real_eip !91
  store i64 %104, i64* %R8, !mcsema_real_eip !91
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -96
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %_ptr_to_int_299 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_302 = sub i64 %_ptr_to_int_299, %_local_end_to_int_
  %_pot_address_in_parent_stack_303 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_302
  %_cond1_304 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_305 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_306 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_307 = or i1 %_cond2_1_305, %_cond2_2_306
  %_cond4_308 = icmp ule i8* %_pot_address_in_parent_stack_303, %_parent_stack_end_ptr_
  %_cond1_n_cond2_309 = and i1 %_cond1_304, %_cond2_307
  %_cond1_n_cond2_cond3_310 = and i1 %_cond1_n_cond2_309, %_cond4_308
  br i1 %_cond1_n_cond2_cond3_310, label %105, label %106

; <label>:105:                                    ; preds = %102
  %_address_in_parent_stack_bt_312 = bitcast i8* %_pot_address_in_parent_stack_303 to i64*
  br label %106

; <label>:106:                                    ; preds = %102, %105
  %107 = phi i64* [ %_allin_new_bt_67, %102 ], [ %_address_in_parent_stack_bt_312, %105 ]
  %_new_load_313 = load i64, i64* %107
  store i64 %_new_load_313, i64* %XAX, !mcsema_real_eip !92
  %108 = inttoptr i64 %_new_load_313 to i64*, !mcsema_real_eip !93
  %109 = inttoptr i64 %_new_load_313 to i32*, !mcsema_real_eip !93
  %_ptr_bt_316 = bitcast i32* %109 to i8*
  %_offset_above_rbp_317 = sub i64 %_new_load_313, %_local_end_to_int_
  %_pot_address_in_parent_stack_318 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_317
  %_cond1_319 = icmp ugt i8* %_ptr_bt_316, %_local_stack_end_ptr_
  %_cond2_1_320 = icmp ugt i8* %_ptr_bt_316, %_parent_stack_end_ptr_
  %_cond2_2_321 = icmp ult i8* %_ptr_bt_316, %_parent_stack_start_ptr_
  %_cond2_322 = or i1 %_cond2_1_320, %_cond2_2_321
  %_cond4_323 = icmp ule i8* %_pot_address_in_parent_stack_318, %_parent_stack_end_ptr_
  %_cond1_n_cond2_324 = and i1 %_cond1_319, %_cond2_322
  %_cond1_n_cond2_cond3_325 = and i1 %_cond1_n_cond2_324, %_cond4_323
  br i1 %_cond1_n_cond2_cond3_325, label %110, label %111

; <label>:110:                                    ; preds = %106
  %_address_in_parent_stack_bt_327 = bitcast i8* %_pot_address_in_parent_stack_318 to i32*
  br label %111

; <label>:111:                                    ; preds = %106, %110
  %112 = phi i32* [ %109, %106 ], [ %_address_in_parent_stack_bt_327, %110 ]
  %_new_load_328 = load i32, i32* %112
  %113 = zext i32 %_new_load_328 to i64, !mcsema_real_eip !93
  store i64 %113, i64* %R9, !mcsema_real_eip !93
  %R8D_val.151 = load i32, i32* %R8D.122, !mcsema_real_eip !94
  %R9D_val.153 = load i32, i32* %R9D.125, !mcsema_real_eip !94
  %114 = add i32 %R9D_val.153, %R8D_val.151, !mcsema_real_eip !94
  %115 = xor i32 %114, %R8D_val.151, !mcsema_real_eip !94
  %116 = xor i32 %115, %R9D_val.153, !mcsema_real_eip !94
  %117 = and i32 %116, 16, !mcsema_real_eip !94
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !94
  store i1 %118, i1* %AF, !mcsema_real_eip !94
  %119 = lshr i32 %114, 31, !mcsema_real_eip !94
  %120 = trunc i32 %119 to i1, !mcsema_real_eip !94
  store i1 %120, i1* %SF, !mcsema_real_eip !94
  %121 = icmp eq i32 %114, 0, !mcsema_real_eip !94
  store i1 %121, i1* %ZF, !mcsema_real_eip !94
  %122 = xor i32 %R8D_val.151, %R9D_val.153, !mcsema_real_eip !94
  %123 = xor i32 %122, -1, !mcsema_real_eip !94
  %124 = and i32 %123, %115, !mcsema_real_eip !94
  %125 = lshr i32 %124, 31, !mcsema_real_eip !94
  %126 = and i32 %125, 1, !mcsema_real_eip !94
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !94
  store i1 %127, i1* %OF, !mcsema_real_eip !94
  %128 = trunc i32 %114 to i8, !mcsema_real_eip !94
  %129 = call i8 @llvm.ctpop.i8(i8 %128), !mcsema_real_eip !94
  %130 = trunc i8 %129 to i1, !mcsema_real_eip !94
  %131 = xor i1 %130, true, !mcsema_real_eip !94
  store i1 %131, i1* %PF, !mcsema_real_eip !94
  %132 = icmp ult i32 %114, %R8D_val.151, !mcsema_real_eip !94
  store i1 %132, i1* %CF, !mcsema_real_eip !94
  %133 = zext i32 %114 to i64, !mcsema_real_eip !94
  store i64 %133, i64* %R8, !mcsema_real_eip !94
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -104
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %_ptr_to_int_329 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_offset_above_rbp_332 = sub i64 %_ptr_to_int_329, %_local_end_to_int_
  %_pot_address_in_parent_stack_333 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_332
  %_cond1_334 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_335 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_336 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_337 = or i1 %_cond2_1_335, %_cond2_2_336
  %_cond4_338 = icmp ule i8* %_pot_address_in_parent_stack_333, %_parent_stack_end_ptr_
  %_cond1_n_cond2_339 = and i1 %_cond1_334, %_cond2_337
  %_cond1_n_cond2_cond3_340 = and i1 %_cond1_n_cond2_339, %_cond4_338
  br i1 %_cond1_n_cond2_cond3_340, label %134, label %135

; <label>:134:                                    ; preds = %111
  %_address_in_parent_stack_bt_342 = bitcast i8* %_pot_address_in_parent_stack_333 to i64*
  br label %135

; <label>:135:                                    ; preds = %111, %134
  %136 = phi i64* [ %_allin_new_bt_70, %111 ], [ %_address_in_parent_stack_bt_342, %134 ]
  %_new_load_343 = load i64, i64* %136
  store i64 %_new_load_343, i64* %XAX, !mcsema_real_eip !95
  %137 = inttoptr i64 %_new_load_343 to i64*, !mcsema_real_eip !96
  %138 = inttoptr i64 %_new_load_343 to i32*, !mcsema_real_eip !96
  %_ptr_bt_346 = bitcast i32* %138 to i8*
  %_offset_above_rbp_347 = sub i64 %_new_load_343, %_local_end_to_int_
  %_pot_address_in_parent_stack_348 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_347
  %_cond1_349 = icmp ugt i8* %_ptr_bt_346, %_local_stack_end_ptr_
  %_cond2_1_350 = icmp ugt i8* %_ptr_bt_346, %_parent_stack_end_ptr_
  %_cond2_2_351 = icmp ult i8* %_ptr_bt_346, %_parent_stack_start_ptr_
  %_cond2_352 = or i1 %_cond2_1_350, %_cond2_2_351
  %_cond4_353 = icmp ule i8* %_pot_address_in_parent_stack_348, %_parent_stack_end_ptr_
  %_cond1_n_cond2_354 = and i1 %_cond1_349, %_cond2_352
  %_cond1_n_cond2_cond3_355 = and i1 %_cond1_n_cond2_354, %_cond4_353
  br i1 %_cond1_n_cond2_cond3_355, label %139, label %140

; <label>:139:                                    ; preds = %135
  %_address_in_parent_stack_bt_357 = bitcast i8* %_pot_address_in_parent_stack_348 to i32*
  br label %140

; <label>:140:                                    ; preds = %135, %139
  %141 = phi i32* [ %138, %135 ], [ %_address_in_parent_stack_bt_357, %139 ]
  %_new_load_358 = load i32, i32* %141
  %142 = zext i32 %_new_load_358 to i64, !mcsema_real_eip !96
  store i64 %142, i64* %R9, !mcsema_real_eip !96
  %R8D_val.157 = load i32, i32* %R8D.122, !mcsema_real_eip !97
  %R9D_val.159 = load i32, i32* %R9D.125, !mcsema_real_eip !97
  %143 = add i32 %R9D_val.159, %R8D_val.157, !mcsema_real_eip !97
  %144 = xor i32 %143, %R8D_val.157, !mcsema_real_eip !97
  %145 = xor i32 %144, %R9D_val.159, !mcsema_real_eip !97
  %146 = and i32 %145, 16, !mcsema_real_eip !97
  %147 = icmp ne i32 %146, 0, !mcsema_real_eip !97
  store i1 %147, i1* %AF, !mcsema_real_eip !97
  %148 = lshr i32 %143, 31, !mcsema_real_eip !97
  %149 = trunc i32 %148 to i1, !mcsema_real_eip !97
  store i1 %149, i1* %SF, !mcsema_real_eip !97
  %150 = icmp eq i32 %143, 0, !mcsema_real_eip !97
  store i1 %150, i1* %ZF, !mcsema_real_eip !97
  %151 = xor i32 %R8D_val.157, %R9D_val.159, !mcsema_real_eip !97
  %152 = xor i32 %151, -1, !mcsema_real_eip !97
  %153 = and i32 %152, %144, !mcsema_real_eip !97
  %154 = lshr i32 %153, 31, !mcsema_real_eip !97
  %155 = and i32 %154, 1, !mcsema_real_eip !97
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !97
  store i1 %156, i1* %OF, !mcsema_real_eip !97
  %157 = trunc i32 %143 to i8, !mcsema_real_eip !97
  %158 = call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !97
  %159 = trunc i8 %158 to i1, !mcsema_real_eip !97
  %160 = xor i1 %159, true, !mcsema_real_eip !97
  store i1 %160, i1* %PF, !mcsema_real_eip !97
  %161 = icmp ult i32 %143, %R8D_val.157, !mcsema_real_eip !97
  store i1 %161, i1* %CF, !mcsema_real_eip !97
  %162 = zext i32 %143 to i64, !mcsema_real_eip !97
  store i64 %162, i64* %R8, !mcsema_real_eip !97
  %ESI_val.161 = load i32, i32* %ESI.108, !mcsema_real_eip !98
  %R8D_val.163 = load i32, i32* %R8D.122, !mcsema_real_eip !98
  %163 = add i32 %R8D_val.163, %ESI_val.161, !mcsema_real_eip !98
  %164 = xor i32 %163, %ESI_val.161, !mcsema_real_eip !98
  %165 = xor i32 %164, %R8D_val.163, !mcsema_real_eip !98
  %166 = and i32 %165, 16, !mcsema_real_eip !98
  %167 = icmp ne i32 %166, 0, !mcsema_real_eip !98
  store i1 %167, i1* %AF, !mcsema_real_eip !98
  %168 = lshr i32 %163, 31, !mcsema_real_eip !98
  %169 = trunc i32 %168 to i1, !mcsema_real_eip !98
  store i1 %169, i1* %SF, !mcsema_real_eip !98
  %170 = icmp eq i32 %163, 0, !mcsema_real_eip !98
  store i1 %170, i1* %ZF, !mcsema_real_eip !98
  %171 = xor i32 %ESI_val.161, %R8D_val.163, !mcsema_real_eip !98
  %172 = xor i32 %171, -1, !mcsema_real_eip !98
  %173 = and i32 %172, %164, !mcsema_real_eip !98
  %174 = lshr i32 %173, 31, !mcsema_real_eip !98
  %175 = and i32 %174, 1, !mcsema_real_eip !98
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !98
  store i1 %176, i1* %OF, !mcsema_real_eip !98
  %177 = trunc i32 %163 to i8, !mcsema_real_eip !98
  %178 = call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !98
  %179 = trunc i8 %178 to i1, !mcsema_real_eip !98
  %180 = xor i1 %179, true, !mcsema_real_eip !98
  store i1 %180, i1* %PF, !mcsema_real_eip !98
  %181 = icmp ult i32 %163, %ESI_val.161, !mcsema_real_eip !98
  store i1 %181, i1* %CF, !mcsema_real_eip !98
  %182 = zext i32 %163 to i64, !mcsema_real_eip !98
  store i64 %182, i64* %XSI, !mcsema_real_eip !98
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -120
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %ESI_val.166 = load i32, i32* %ESI.108, !mcsema_real_eip !99
  %183 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !99
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !99
  store i32 %ESI_val.166, i32* %184, !mcsema_real_eip !99
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -36
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %185 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !100
  %186 = inttoptr i64 %185 to i32*, !mcsema_real_eip !100
  %_ptr_bt_361 = bitcast i32* %186 to i8*
  %_offset_above_rbp_362 = sub i64 %185, %_local_end_to_int_
  %_pot_address_in_parent_stack_363 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_362
  %_cond1_364 = icmp ugt i8* %_ptr_bt_361, %_local_stack_end_ptr_
  %_cond2_1_365 = icmp ugt i8* %_ptr_bt_361, %_parent_stack_end_ptr_
  %_cond2_2_366 = icmp ult i8* %_ptr_bt_361, %_parent_stack_start_ptr_
  %_cond2_367 = or i1 %_cond2_1_365, %_cond2_2_366
  %_cond4_368 = icmp ule i8* %_pot_address_in_parent_stack_363, %_parent_stack_end_ptr_
  %_cond1_n_cond2_369 = and i1 %_cond1_364, %_cond2_367
  %_cond1_n_cond2_cond3_370 = and i1 %_cond1_n_cond2_369, %_cond4_368
  br i1 %_cond1_n_cond2_cond3_370, label %187, label %188

; <label>:187:                                    ; preds = %140
  %_address_in_parent_stack_bt_372 = bitcast i8* %_pot_address_in_parent_stack_363 to i32*
  br label %188

; <label>:188:                                    ; preds = %140, %187
  %189 = phi i32* [ %186, %140 ], [ %_address_in_parent_stack_bt_372, %187 ]
  %_new_load_373 = load i32, i32* %189
  %190 = zext i32 %_new_load_373 to i64, !mcsema_real_eip !100
  store i64 %190, i64* %XSI, !mcsema_real_eip !100
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -64
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %_ptr_to_int_374 = ptrtoint i64* %_allin_new_bt_79 to i64
  %_offset_above_rbp_377 = sub i64 %_ptr_to_int_374, %_local_end_to_int_
  %_pot_address_in_parent_stack_378 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_377
  %_cond1_379 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_380 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_381 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_382 = or i1 %_cond2_1_380, %_cond2_2_381
  %_cond4_383 = icmp ule i8* %_pot_address_in_parent_stack_378, %_parent_stack_end_ptr_
  %_cond1_n_cond2_384 = and i1 %_cond1_379, %_cond2_382
  %_cond1_n_cond2_cond3_385 = and i1 %_cond1_n_cond2_384, %_cond4_383
  br i1 %_cond1_n_cond2_cond3_385, label %191, label %192

; <label>:191:                                    ; preds = %188
  %_address_in_parent_stack_bt_387 = bitcast i8* %_pot_address_in_parent_stack_378 to i64*
  br label %192

; <label>:192:                                    ; preds = %188, %191
  %193 = phi i64* [ %_allin_new_bt_79, %188 ], [ %_address_in_parent_stack_bt_387, %191 ]
  %_new_load_388 = load i64, i64* %193
  store i64 %_new_load_388, i64* %XAX, !mcsema_real_eip !101
  %194 = add i64 %_new_load_388, 4, !mcsema_real_eip !102
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !102
  %196 = inttoptr i64 %194 to i32*, !mcsema_real_eip !102
  %_ptr_bt_391 = bitcast i32* %196 to i8*
  %_offset_above_rbp_392 = sub i64 %194, %_local_end_to_int_
  %_pot_address_in_parent_stack_393 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_392
  %_cond1_394 = icmp ugt i8* %_ptr_bt_391, %_local_stack_end_ptr_
  %_cond2_1_395 = icmp ugt i8* %_ptr_bt_391, %_parent_stack_end_ptr_
  %_cond2_2_396 = icmp ult i8* %_ptr_bt_391, %_parent_stack_start_ptr_
  %_cond2_397 = or i1 %_cond2_1_395, %_cond2_2_396
  %_cond4_398 = icmp ule i8* %_pot_address_in_parent_stack_393, %_parent_stack_end_ptr_
  %_cond1_n_cond2_399 = and i1 %_cond1_394, %_cond2_397
  %_cond1_n_cond2_cond3_400 = and i1 %_cond1_n_cond2_399, %_cond4_398
  br i1 %_cond1_n_cond2_cond3_400, label %197, label %198

; <label>:197:                                    ; preds = %192
  %_address_in_parent_stack_bt_402 = bitcast i8* %_pot_address_in_parent_stack_393 to i32*
  br label %198

; <label>:198:                                    ; preds = %192, %197
  %199 = phi i32* [ %196, %192 ], [ %_address_in_parent_stack_bt_402, %197 ]
  %_new_load_403 = load i32, i32* %199
  %200 = zext i32 %_new_load_403 to i64, !mcsema_real_eip !102
  store i64 %200, i64* %R8, !mcsema_real_eip !102
  %ESI_val.171 = load i32, i32* %ESI.108, !mcsema_real_eip !103
  %R8D_val.173 = load i32, i32* %R8D.122, !mcsema_real_eip !103
  %201 = add i32 %R8D_val.173, %ESI_val.171, !mcsema_real_eip !103
  %202 = xor i32 %201, %ESI_val.171, !mcsema_real_eip !103
  %203 = xor i32 %202, %R8D_val.173, !mcsema_real_eip !103
  %204 = and i32 %203, 16, !mcsema_real_eip !103
  %205 = icmp ne i32 %204, 0, !mcsema_real_eip !103
  store i1 %205, i1* %AF, !mcsema_real_eip !103
  %206 = lshr i32 %201, 31, !mcsema_real_eip !103
  %207 = trunc i32 %206 to i1, !mcsema_real_eip !103
  store i1 %207, i1* %SF, !mcsema_real_eip !103
  %208 = icmp eq i32 %201, 0, !mcsema_real_eip !103
  store i1 %208, i1* %ZF, !mcsema_real_eip !103
  %209 = xor i32 %ESI_val.171, %R8D_val.173, !mcsema_real_eip !103
  %210 = xor i32 %209, -1, !mcsema_real_eip !103
  %211 = and i32 %210, %202, !mcsema_real_eip !103
  %212 = lshr i32 %211, 31, !mcsema_real_eip !103
  %213 = and i32 %212, 1, !mcsema_real_eip !103
  %214 = trunc i32 %213 to i1, !mcsema_real_eip !103
  store i1 %214, i1* %OF, !mcsema_real_eip !103
  %215 = trunc i32 %201 to i8, !mcsema_real_eip !103
  %216 = call i8 @llvm.ctpop.i8(i8 %215), !mcsema_real_eip !103
  %217 = trunc i8 %216 to i1, !mcsema_real_eip !103
  %218 = xor i1 %217, true, !mcsema_real_eip !103
  store i1 %218, i1* %PF, !mcsema_real_eip !103
  %219 = icmp ult i32 %201, %ESI_val.171, !mcsema_real_eip !103
  store i1 %219, i1* %CF, !mcsema_real_eip !103
  %220 = zext i32 %201 to i64, !mcsema_real_eip !103
  store i64 %220, i64* %XSI, !mcsema_real_eip !103
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -72
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %_ptr_to_int_404 = ptrtoint i64* %_allin_new_bt_82 to i64
  %_offset_above_rbp_407 = sub i64 %_ptr_to_int_404, %_local_end_to_int_
  %_pot_address_in_parent_stack_408 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_407
  %_cond1_409 = icmp ugt i8* %_new_gep_81, %_local_stack_end_ptr_
  %_cond2_1_410 = icmp ugt i8* %_new_gep_81, %_parent_stack_end_ptr_
  %_cond2_2_411 = icmp ult i8* %_new_gep_81, %_parent_stack_start_ptr_
  %_cond2_412 = or i1 %_cond2_1_410, %_cond2_2_411
  %_cond4_413 = icmp ule i8* %_pot_address_in_parent_stack_408, %_parent_stack_end_ptr_
  %_cond1_n_cond2_414 = and i1 %_cond1_409, %_cond2_412
  %_cond1_n_cond2_cond3_415 = and i1 %_cond1_n_cond2_414, %_cond4_413
  br i1 %_cond1_n_cond2_cond3_415, label %221, label %222

; <label>:221:                                    ; preds = %198
  %_address_in_parent_stack_bt_417 = bitcast i8* %_pot_address_in_parent_stack_408 to i64*
  br label %222

; <label>:222:                                    ; preds = %198, %221
  %223 = phi i64* [ %_allin_new_bt_82, %198 ], [ %_address_in_parent_stack_bt_417, %221 ]
  %_new_load_418 = load i64, i64* %223
  store i64 %_new_load_418, i64* %XAX, !mcsema_real_eip !104
  %224 = add i64 %_new_load_418, 4, !mcsema_real_eip !105
  %225 = inttoptr i64 %224 to i64*, !mcsema_real_eip !105
  %226 = inttoptr i64 %224 to i32*, !mcsema_real_eip !105
  %_ptr_bt_421 = bitcast i32* %226 to i8*
  %_offset_above_rbp_422 = sub i64 %224, %_local_end_to_int_
  %_pot_address_in_parent_stack_423 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_422
  %_cond1_424 = icmp ugt i8* %_ptr_bt_421, %_local_stack_end_ptr_
  %_cond2_1_425 = icmp ugt i8* %_ptr_bt_421, %_parent_stack_end_ptr_
  %_cond2_2_426 = icmp ult i8* %_ptr_bt_421, %_parent_stack_start_ptr_
  %_cond2_427 = or i1 %_cond2_1_425, %_cond2_2_426
  %_cond4_428 = icmp ule i8* %_pot_address_in_parent_stack_423, %_parent_stack_end_ptr_
  %_cond1_n_cond2_429 = and i1 %_cond1_424, %_cond2_427
  %_cond1_n_cond2_cond3_430 = and i1 %_cond1_n_cond2_429, %_cond4_428
  br i1 %_cond1_n_cond2_cond3_430, label %227, label %228

; <label>:227:                                    ; preds = %222
  %_address_in_parent_stack_bt_432 = bitcast i8* %_pot_address_in_parent_stack_423 to i32*
  br label %228

; <label>:228:                                    ; preds = %222, %227
  %229 = phi i32* [ %226, %222 ], [ %_address_in_parent_stack_bt_432, %227 ]
  %_new_load_433 = load i32, i32* %229
  %230 = zext i32 %_new_load_433 to i64, !mcsema_real_eip !105
  store i64 %230, i64* %R8, !mcsema_real_eip !105
  %ESI_val.177 = load i32, i32* %ESI.108, !mcsema_real_eip !106
  %R8D_val.179 = load i32, i32* %R8D.122, !mcsema_real_eip !106
  %231 = add i32 %R8D_val.179, %ESI_val.177, !mcsema_real_eip !106
  %232 = xor i32 %231, %ESI_val.177, !mcsema_real_eip !106
  %233 = xor i32 %232, %R8D_val.179, !mcsema_real_eip !106
  %234 = and i32 %233, 16, !mcsema_real_eip !106
  %235 = icmp ne i32 %234, 0, !mcsema_real_eip !106
  store i1 %235, i1* %AF, !mcsema_real_eip !106
  %236 = lshr i32 %231, 31, !mcsema_real_eip !106
  %237 = trunc i32 %236 to i1, !mcsema_real_eip !106
  store i1 %237, i1* %SF, !mcsema_real_eip !106
  %238 = icmp eq i32 %231, 0, !mcsema_real_eip !106
  store i1 %238, i1* %ZF, !mcsema_real_eip !106
  %239 = xor i32 %ESI_val.177, %R8D_val.179, !mcsema_real_eip !106
  %240 = xor i32 %239, -1, !mcsema_real_eip !106
  %241 = and i32 %240, %232, !mcsema_real_eip !106
  %242 = lshr i32 %241, 31, !mcsema_real_eip !106
  %243 = and i32 %242, 1, !mcsema_real_eip !106
  %244 = trunc i32 %243 to i1, !mcsema_real_eip !106
  store i1 %244, i1* %OF, !mcsema_real_eip !106
  %245 = trunc i32 %231 to i8, !mcsema_real_eip !106
  %246 = call i8 @llvm.ctpop.i8(i8 %245), !mcsema_real_eip !106
  %247 = trunc i8 %246 to i1, !mcsema_real_eip !106
  %248 = xor i1 %247, true, !mcsema_real_eip !106
  store i1 %248, i1* %PF, !mcsema_real_eip !106
  %249 = icmp ult i32 %231, %ESI_val.177, !mcsema_real_eip !106
  store i1 %249, i1* %CF, !mcsema_real_eip !106
  %250 = zext i32 %231 to i64, !mcsema_real_eip !106
  store i64 %250, i64* %XSI, !mcsema_real_eip !106
  %R11_val.180 = load i64, i64* %R11, !mcsema_real_eip !107
  %251 = add i64 %R11_val.180, 4, !mcsema_real_eip !107
  %252 = inttoptr i64 %251 to i64*, !mcsema_real_eip !107
  %253 = inttoptr i64 %251 to i32*, !mcsema_real_eip !107
  %_ptr_bt_436 = bitcast i32* %253 to i8*
  %_offset_above_rbp_437 = sub i64 %251, %_local_end_to_int_
  %_pot_address_in_parent_stack_438 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_437
  %_cond1_439 = icmp ugt i8* %_ptr_bt_436, %_local_stack_end_ptr_
  %_cond2_1_440 = icmp ugt i8* %_ptr_bt_436, %_parent_stack_end_ptr_
  %_cond2_2_441 = icmp ult i8* %_ptr_bt_436, %_parent_stack_start_ptr_
  %_cond2_442 = or i1 %_cond2_1_440, %_cond2_2_441
  %_cond4_443 = icmp ule i8* %_pot_address_in_parent_stack_438, %_parent_stack_end_ptr_
  %_cond1_n_cond2_444 = and i1 %_cond1_439, %_cond2_442
  %_cond1_n_cond2_cond3_445 = and i1 %_cond1_n_cond2_444, %_cond4_443
  br i1 %_cond1_n_cond2_cond3_445, label %254, label %255

; <label>:254:                                    ; preds = %228
  %_address_in_parent_stack_bt_447 = bitcast i8* %_pot_address_in_parent_stack_438 to i32*
  br label %255

; <label>:255:                                    ; preds = %228, %254
  %256 = phi i32* [ %253, %228 ], [ %_address_in_parent_stack_bt_447, %254 ]
  %_new_load_448 = load i32, i32* %256
  %257 = zext i32 %_new_load_448 to i64, !mcsema_real_eip !107
  store i64 %257, i64* %R8, !mcsema_real_eip !107
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -96
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %_ptr_to_int_449 = ptrtoint i64* %_allin_new_bt_85 to i64
  %_offset_above_rbp_452 = sub i64 %_ptr_to_int_449, %_local_end_to_int_
  %_pot_address_in_parent_stack_453 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_452
  %_cond1_454 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_455 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_456 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_457 = or i1 %_cond2_1_455, %_cond2_2_456
  %_cond4_458 = icmp ule i8* %_pot_address_in_parent_stack_453, %_parent_stack_end_ptr_
  %_cond1_n_cond2_459 = and i1 %_cond1_454, %_cond2_457
  %_cond1_n_cond2_cond3_460 = and i1 %_cond1_n_cond2_459, %_cond4_458
  br i1 %_cond1_n_cond2_cond3_460, label %258, label %259

; <label>:258:                                    ; preds = %255
  %_address_in_parent_stack_bt_462 = bitcast i8* %_pot_address_in_parent_stack_453 to i64*
  br label %259

; <label>:259:                                    ; preds = %255, %258
  %260 = phi i64* [ %_allin_new_bt_85, %255 ], [ %_address_in_parent_stack_bt_462, %258 ]
  %_new_load_463 = load i64, i64* %260
  store i64 %_new_load_463, i64* %XAX, !mcsema_real_eip !108
  %261 = add i64 %_new_load_463, 4, !mcsema_real_eip !109
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !109
  %263 = inttoptr i64 %261 to i32*, !mcsema_real_eip !109
  %_ptr_bt_466 = bitcast i32* %263 to i8*
  %_offset_above_rbp_467 = sub i64 %261, %_local_end_to_int_
  %_pot_address_in_parent_stack_468 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_467
  %_cond1_469 = icmp ugt i8* %_ptr_bt_466, %_local_stack_end_ptr_
  %_cond2_1_470 = icmp ugt i8* %_ptr_bt_466, %_parent_stack_end_ptr_
  %_cond2_2_471 = icmp ult i8* %_ptr_bt_466, %_parent_stack_start_ptr_
  %_cond2_472 = or i1 %_cond2_1_470, %_cond2_2_471
  %_cond4_473 = icmp ule i8* %_pot_address_in_parent_stack_468, %_parent_stack_end_ptr_
  %_cond1_n_cond2_474 = and i1 %_cond1_469, %_cond2_472
  %_cond1_n_cond2_cond3_475 = and i1 %_cond1_n_cond2_474, %_cond4_473
  br i1 %_cond1_n_cond2_cond3_475, label %264, label %265

; <label>:264:                                    ; preds = %259
  %_address_in_parent_stack_bt_477 = bitcast i8* %_pot_address_in_parent_stack_468 to i32*
  br label %265

; <label>:265:                                    ; preds = %259, %264
  %266 = phi i32* [ %263, %259 ], [ %_address_in_parent_stack_bt_477, %264 ]
  %_new_load_478 = load i32, i32* %266
  %267 = zext i32 %_new_load_478 to i64, !mcsema_real_eip !109
  store i64 %267, i64* %R9, !mcsema_real_eip !109
  %R8D_val.184 = load i32, i32* %R8D.122, !mcsema_real_eip !110
  %R9D_val.186 = load i32, i32* %R9D.125, !mcsema_real_eip !110
  %268 = add i32 %R9D_val.186, %R8D_val.184, !mcsema_real_eip !110
  %269 = xor i32 %268, %R8D_val.184, !mcsema_real_eip !110
  %270 = xor i32 %269, %R9D_val.186, !mcsema_real_eip !110
  %271 = and i32 %270, 16, !mcsema_real_eip !110
  %272 = icmp ne i32 %271, 0, !mcsema_real_eip !110
  store i1 %272, i1* %AF, !mcsema_real_eip !110
  %273 = lshr i32 %268, 31, !mcsema_real_eip !110
  %274 = trunc i32 %273 to i1, !mcsema_real_eip !110
  store i1 %274, i1* %SF, !mcsema_real_eip !110
  %275 = icmp eq i32 %268, 0, !mcsema_real_eip !110
  store i1 %275, i1* %ZF, !mcsema_real_eip !110
  %276 = xor i32 %R8D_val.184, %R9D_val.186, !mcsema_real_eip !110
  %277 = xor i32 %276, -1, !mcsema_real_eip !110
  %278 = and i32 %277, %269, !mcsema_real_eip !110
  %279 = lshr i32 %278, 31, !mcsema_real_eip !110
  %280 = and i32 %279, 1, !mcsema_real_eip !110
  %281 = trunc i32 %280 to i1, !mcsema_real_eip !110
  store i1 %281, i1* %OF, !mcsema_real_eip !110
  %282 = trunc i32 %268 to i8, !mcsema_real_eip !110
  %283 = call i8 @llvm.ctpop.i8(i8 %282), !mcsema_real_eip !110
  %284 = trunc i8 %283 to i1, !mcsema_real_eip !110
  %285 = xor i1 %284, true, !mcsema_real_eip !110
  store i1 %285, i1* %PF, !mcsema_real_eip !110
  %286 = icmp ult i32 %268, %R8D_val.184, !mcsema_real_eip !110
  store i1 %286, i1* %CF, !mcsema_real_eip !110
  %287 = zext i32 %268 to i64, !mcsema_real_eip !110
  store i64 %287, i64* %R8, !mcsema_real_eip !110
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -104
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %_ptr_to_int_479 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_482 = sub i64 %_ptr_to_int_479, %_local_end_to_int_
  %_pot_address_in_parent_stack_483 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_482
  %_cond1_484 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_485 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_486 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_487 = or i1 %_cond2_1_485, %_cond2_2_486
  %_cond4_488 = icmp ule i8* %_pot_address_in_parent_stack_483, %_parent_stack_end_ptr_
  %_cond1_n_cond2_489 = and i1 %_cond1_484, %_cond2_487
  %_cond1_n_cond2_cond3_490 = and i1 %_cond1_n_cond2_489, %_cond4_488
  br i1 %_cond1_n_cond2_cond3_490, label %288, label %289

; <label>:288:                                    ; preds = %265
  %_address_in_parent_stack_bt_492 = bitcast i8* %_pot_address_in_parent_stack_483 to i64*
  br label %289

; <label>:289:                                    ; preds = %265, %288
  %290 = phi i64* [ %_allin_new_bt_88, %265 ], [ %_address_in_parent_stack_bt_492, %288 ]
  %_new_load_493 = load i64, i64* %290
  store i64 %_new_load_493, i64* %XAX, !mcsema_real_eip !111
  %291 = add i64 %_new_load_493, 4, !mcsema_real_eip !112
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !112
  %293 = inttoptr i64 %291 to i32*, !mcsema_real_eip !112
  %_ptr_bt_496 = bitcast i32* %293 to i8*
  %_offset_above_rbp_497 = sub i64 %291, %_local_end_to_int_
  %_pot_address_in_parent_stack_498 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_497
  %_cond1_499 = icmp ugt i8* %_ptr_bt_496, %_local_stack_end_ptr_
  %_cond2_1_500 = icmp ugt i8* %_ptr_bt_496, %_parent_stack_end_ptr_
  %_cond2_2_501 = icmp ult i8* %_ptr_bt_496, %_parent_stack_start_ptr_
  %_cond2_502 = or i1 %_cond2_1_500, %_cond2_2_501
  %_cond4_503 = icmp ule i8* %_pot_address_in_parent_stack_498, %_parent_stack_end_ptr_
  %_cond1_n_cond2_504 = and i1 %_cond1_499, %_cond2_502
  %_cond1_n_cond2_cond3_505 = and i1 %_cond1_n_cond2_504, %_cond4_503
  br i1 %_cond1_n_cond2_cond3_505, label %294, label %295

; <label>:294:                                    ; preds = %289
  %_address_in_parent_stack_bt_507 = bitcast i8* %_pot_address_in_parent_stack_498 to i32*
  br label %295

; <label>:295:                                    ; preds = %289, %294
  %296 = phi i32* [ %293, %289 ], [ %_address_in_parent_stack_bt_507, %294 ]
  %_new_load_508 = load i32, i32* %296
  %297 = zext i32 %_new_load_508 to i64, !mcsema_real_eip !112
  store i64 %297, i64* %R9, !mcsema_real_eip !112
  %R8D_val.190 = load i32, i32* %R8D.122, !mcsema_real_eip !113
  %R9D_val.192 = load i32, i32* %R9D.125, !mcsema_real_eip !113
  %298 = add i32 %R9D_val.192, %R8D_val.190, !mcsema_real_eip !113
  %299 = xor i32 %298, %R8D_val.190, !mcsema_real_eip !113
  %300 = xor i32 %299, %R9D_val.192, !mcsema_real_eip !113
  %301 = and i32 %300, 16, !mcsema_real_eip !113
  %302 = icmp ne i32 %301, 0, !mcsema_real_eip !113
  store i1 %302, i1* %AF, !mcsema_real_eip !113
  %303 = lshr i32 %298, 31, !mcsema_real_eip !113
  %304 = trunc i32 %303 to i1, !mcsema_real_eip !113
  store i1 %304, i1* %SF, !mcsema_real_eip !113
  %305 = icmp eq i32 %298, 0, !mcsema_real_eip !113
  store i1 %305, i1* %ZF, !mcsema_real_eip !113
  %306 = xor i32 %R8D_val.190, %R9D_val.192, !mcsema_real_eip !113
  %307 = xor i32 %306, -1, !mcsema_real_eip !113
  %308 = and i32 %307, %299, !mcsema_real_eip !113
  %309 = lshr i32 %308, 31, !mcsema_real_eip !113
  %310 = and i32 %309, 1, !mcsema_real_eip !113
  %311 = trunc i32 %310 to i1, !mcsema_real_eip !113
  store i1 %311, i1* %OF, !mcsema_real_eip !113
  %312 = trunc i32 %298 to i8, !mcsema_real_eip !113
  %313 = call i8 @llvm.ctpop.i8(i8 %312), !mcsema_real_eip !113
  %314 = trunc i8 %313 to i1, !mcsema_real_eip !113
  %315 = xor i1 %314, true, !mcsema_real_eip !113
  store i1 %315, i1* %PF, !mcsema_real_eip !113
  %316 = icmp ult i32 %298, %R8D_val.190, !mcsema_real_eip !113
  store i1 %316, i1* %CF, !mcsema_real_eip !113
  %317 = zext i32 %298 to i64, !mcsema_real_eip !113
  store i64 %317, i64* %R8, !mcsema_real_eip !113
  %ESI_val.194 = load i32, i32* %ESI.108, !mcsema_real_eip !114
  %R8D_val.196 = load i32, i32* %R8D.122, !mcsema_real_eip !114
  %318 = add i32 %R8D_val.196, %ESI_val.194, !mcsema_real_eip !114
  %319 = xor i32 %318, %ESI_val.194, !mcsema_real_eip !114
  %320 = xor i32 %319, %R8D_val.196, !mcsema_real_eip !114
  %321 = and i32 %320, 16, !mcsema_real_eip !114
  %322 = icmp ne i32 %321, 0, !mcsema_real_eip !114
  store i1 %322, i1* %AF, !mcsema_real_eip !114
  %323 = lshr i32 %318, 31, !mcsema_real_eip !114
  %324 = trunc i32 %323 to i1, !mcsema_real_eip !114
  store i1 %324, i1* %SF, !mcsema_real_eip !114
  %325 = icmp eq i32 %318, 0, !mcsema_real_eip !114
  store i1 %325, i1* %ZF, !mcsema_real_eip !114
  %326 = xor i32 %ESI_val.194, %R8D_val.196, !mcsema_real_eip !114
  %327 = xor i32 %326, -1, !mcsema_real_eip !114
  %328 = and i32 %327, %319, !mcsema_real_eip !114
  %329 = lshr i32 %328, 31, !mcsema_real_eip !114
  %330 = and i32 %329, 1, !mcsema_real_eip !114
  %331 = trunc i32 %330 to i1, !mcsema_real_eip !114
  store i1 %331, i1* %OF, !mcsema_real_eip !114
  %332 = trunc i32 %318 to i8, !mcsema_real_eip !114
  %333 = call i8 @llvm.ctpop.i8(i8 %332), !mcsema_real_eip !114
  %334 = trunc i8 %333 to i1, !mcsema_real_eip !114
  %335 = xor i1 %334, true, !mcsema_real_eip !114
  store i1 %335, i1* %PF, !mcsema_real_eip !114
  %336 = icmp ult i32 %318, %ESI_val.194, !mcsema_real_eip !114
  store i1 %336, i1* %CF, !mcsema_real_eip !114
  %337 = zext i32 %318 to i64, !mcsema_real_eip !114
  store i64 %337, i64* %XSI, !mcsema_real_eip !114
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -116
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %ESI_val.199 = load i32, i32* %ESI.108, !mcsema_real_eip !115
  %338 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !115
  %339 = inttoptr i64 %338 to i32*, !mcsema_real_eip !115
  store i32 %ESI_val.199, i32* %339, !mcsema_real_eip !115
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -32
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %340 = ptrtoint i64* %_allin_new_bt_94 to i64, !mcsema_real_eip !116
  %341 = inttoptr i64 %340 to i32*, !mcsema_real_eip !116
  %_ptr_bt_511 = bitcast i32* %341 to i8*
  %_offset_above_rbp_512 = sub i64 %340, %_local_end_to_int_
  %_pot_address_in_parent_stack_513 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_512
  %_cond1_514 = icmp ugt i8* %_ptr_bt_511, %_local_stack_end_ptr_
  %_cond2_1_515 = icmp ugt i8* %_ptr_bt_511, %_parent_stack_end_ptr_
  %_cond2_2_516 = icmp ult i8* %_ptr_bt_511, %_parent_stack_start_ptr_
  %_cond2_517 = or i1 %_cond2_1_515, %_cond2_2_516
  %_cond4_518 = icmp ule i8* %_pot_address_in_parent_stack_513, %_parent_stack_end_ptr_
  %_cond1_n_cond2_519 = and i1 %_cond1_514, %_cond2_517
  %_cond1_n_cond2_cond3_520 = and i1 %_cond1_n_cond2_519, %_cond4_518
  br i1 %_cond1_n_cond2_cond3_520, label %342, label %343

; <label>:342:                                    ; preds = %295
  %_address_in_parent_stack_bt_522 = bitcast i8* %_pot_address_in_parent_stack_513 to i32*
  br label %343

; <label>:343:                                    ; preds = %295, %342
  %344 = phi i32* [ %341, %295 ], [ %_address_in_parent_stack_bt_522, %342 ]
  %_new_load_523 = load i32, i32* %344
  %345 = zext i32 %_new_load_523 to i64, !mcsema_real_eip !116
  store i64 %345, i64* %XSI, !mcsema_real_eip !116
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -64
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %_ptr_to_int_524 = ptrtoint i64* %_allin_new_bt_97 to i64
  %_offset_above_rbp_527 = sub i64 %_ptr_to_int_524, %_local_end_to_int_
  %_pot_address_in_parent_stack_528 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_527
  %_cond1_529 = icmp ugt i8* %_new_gep_96, %_local_stack_end_ptr_
  %_cond2_1_530 = icmp ugt i8* %_new_gep_96, %_parent_stack_end_ptr_
  %_cond2_2_531 = icmp ult i8* %_new_gep_96, %_parent_stack_start_ptr_
  %_cond2_532 = or i1 %_cond2_1_530, %_cond2_2_531
  %_cond4_533 = icmp ule i8* %_pot_address_in_parent_stack_528, %_parent_stack_end_ptr_
  %_cond1_n_cond2_534 = and i1 %_cond1_529, %_cond2_532
  %_cond1_n_cond2_cond3_535 = and i1 %_cond1_n_cond2_534, %_cond4_533
  br i1 %_cond1_n_cond2_cond3_535, label %346, label %347

; <label>:346:                                    ; preds = %343
  %_address_in_parent_stack_bt_537 = bitcast i8* %_pot_address_in_parent_stack_528 to i64*
  br label %347

; <label>:347:                                    ; preds = %343, %346
  %348 = phi i64* [ %_allin_new_bt_97, %343 ], [ %_address_in_parent_stack_bt_537, %346 ]
  %_new_load_538 = load i64, i64* %348
  store i64 %_new_load_538, i64* %XAX, !mcsema_real_eip !117
  %349 = add i64 %_new_load_538, 8, !mcsema_real_eip !118
  %350 = inttoptr i64 %349 to i64*, !mcsema_real_eip !118
  %351 = inttoptr i64 %349 to i32*, !mcsema_real_eip !118
  %_ptr_bt_541 = bitcast i32* %351 to i8*
  %_offset_above_rbp_542 = sub i64 %349, %_local_end_to_int_
  %_pot_address_in_parent_stack_543 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_542
  %_cond1_544 = icmp ugt i8* %_ptr_bt_541, %_local_stack_end_ptr_
  %_cond2_1_545 = icmp ugt i8* %_ptr_bt_541, %_parent_stack_end_ptr_
  %_cond2_2_546 = icmp ult i8* %_ptr_bt_541, %_parent_stack_start_ptr_
  %_cond2_547 = or i1 %_cond2_1_545, %_cond2_2_546
  %_cond4_548 = icmp ule i8* %_pot_address_in_parent_stack_543, %_parent_stack_end_ptr_
  %_cond1_n_cond2_549 = and i1 %_cond1_544, %_cond2_547
  %_cond1_n_cond2_cond3_550 = and i1 %_cond1_n_cond2_549, %_cond4_548
  br i1 %_cond1_n_cond2_cond3_550, label %352, label %353

; <label>:352:                                    ; preds = %347
  %_address_in_parent_stack_bt_552 = bitcast i8* %_pot_address_in_parent_stack_543 to i32*
  br label %353

; <label>:353:                                    ; preds = %347, %352
  %354 = phi i32* [ %351, %347 ], [ %_address_in_parent_stack_bt_552, %352 ]
  %_new_load_553 = load i32, i32* %354
  %355 = zext i32 %_new_load_553 to i64, !mcsema_real_eip !118
  store i64 %355, i64* %R8, !mcsema_real_eip !118
  %ESI_val.204 = load i32, i32* %ESI.108, !mcsema_real_eip !119
  %R8D_val.206 = load i32, i32* %R8D.122, !mcsema_real_eip !119
  %356 = add i32 %R8D_val.206, %ESI_val.204, !mcsema_real_eip !119
  %357 = xor i32 %356, %ESI_val.204, !mcsema_real_eip !119
  %358 = xor i32 %357, %R8D_val.206, !mcsema_real_eip !119
  %359 = and i32 %358, 16, !mcsema_real_eip !119
  %360 = icmp ne i32 %359, 0, !mcsema_real_eip !119
  store i1 %360, i1* %AF, !mcsema_real_eip !119
  %361 = lshr i32 %356, 31, !mcsema_real_eip !119
  %362 = trunc i32 %361 to i1, !mcsema_real_eip !119
  store i1 %362, i1* %SF, !mcsema_real_eip !119
  %363 = icmp eq i32 %356, 0, !mcsema_real_eip !119
  store i1 %363, i1* %ZF, !mcsema_real_eip !119
  %364 = xor i32 %ESI_val.204, %R8D_val.206, !mcsema_real_eip !119
  %365 = xor i32 %364, -1, !mcsema_real_eip !119
  %366 = and i32 %365, %357, !mcsema_real_eip !119
  %367 = lshr i32 %366, 31, !mcsema_real_eip !119
  %368 = and i32 %367, 1, !mcsema_real_eip !119
  %369 = trunc i32 %368 to i1, !mcsema_real_eip !119
  store i1 %369, i1* %OF, !mcsema_real_eip !119
  %370 = trunc i32 %356 to i8, !mcsema_real_eip !119
  %371 = call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !119
  %372 = trunc i8 %371 to i1, !mcsema_real_eip !119
  %373 = xor i1 %372, true, !mcsema_real_eip !119
  store i1 %373, i1* %PF, !mcsema_real_eip !119
  %374 = icmp ult i32 %356, %ESI_val.204, !mcsema_real_eip !119
  store i1 %374, i1* %CF, !mcsema_real_eip !119
  %375 = zext i32 %356 to i64, !mcsema_real_eip !119
  store i64 %375, i64* %XSI, !mcsema_real_eip !119
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -72
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %_ptr_to_int_554 = ptrtoint i64* %_allin_new_bt_100 to i64
  %_offset_above_rbp_557 = sub i64 %_ptr_to_int_554, %_local_end_to_int_
  %_pot_address_in_parent_stack_558 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_557
  %_cond1_559 = icmp ugt i8* %_new_gep_99, %_local_stack_end_ptr_
  %_cond2_1_560 = icmp ugt i8* %_new_gep_99, %_parent_stack_end_ptr_
  %_cond2_2_561 = icmp ult i8* %_new_gep_99, %_parent_stack_start_ptr_
  %_cond2_562 = or i1 %_cond2_1_560, %_cond2_2_561
  %_cond4_563 = icmp ule i8* %_pot_address_in_parent_stack_558, %_parent_stack_end_ptr_
  %_cond1_n_cond2_564 = and i1 %_cond1_559, %_cond2_562
  %_cond1_n_cond2_cond3_565 = and i1 %_cond1_n_cond2_564, %_cond4_563
  br i1 %_cond1_n_cond2_cond3_565, label %376, label %377

; <label>:376:                                    ; preds = %353
  %_address_in_parent_stack_bt_567 = bitcast i8* %_pot_address_in_parent_stack_558 to i64*
  br label %377

; <label>:377:                                    ; preds = %353, %376
  %378 = phi i64* [ %_allin_new_bt_100, %353 ], [ %_address_in_parent_stack_bt_567, %376 ]
  %_new_load_568 = load i64, i64* %378
  store i64 %_new_load_568, i64* %XAX, !mcsema_real_eip !120
  %379 = add i64 %_new_load_568, 8, !mcsema_real_eip !121
  %380 = inttoptr i64 %379 to i64*, !mcsema_real_eip !121
  %381 = inttoptr i64 %379 to i32*, !mcsema_real_eip !121
  %_ptr_bt_571 = bitcast i32* %381 to i8*
  %_offset_above_rbp_572 = sub i64 %379, %_local_end_to_int_
  %_pot_address_in_parent_stack_573 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_572
  %_cond1_574 = icmp ugt i8* %_ptr_bt_571, %_local_stack_end_ptr_
  %_cond2_1_575 = icmp ugt i8* %_ptr_bt_571, %_parent_stack_end_ptr_
  %_cond2_2_576 = icmp ult i8* %_ptr_bt_571, %_parent_stack_start_ptr_
  %_cond2_577 = or i1 %_cond2_1_575, %_cond2_2_576
  %_cond4_578 = icmp ule i8* %_pot_address_in_parent_stack_573, %_parent_stack_end_ptr_
  %_cond1_n_cond2_579 = and i1 %_cond1_574, %_cond2_577
  %_cond1_n_cond2_cond3_580 = and i1 %_cond1_n_cond2_579, %_cond4_578
  br i1 %_cond1_n_cond2_cond3_580, label %382, label %383

; <label>:382:                                    ; preds = %377
  %_address_in_parent_stack_bt_582 = bitcast i8* %_pot_address_in_parent_stack_573 to i32*
  br label %383

; <label>:383:                                    ; preds = %377, %382
  %384 = phi i32* [ %381, %377 ], [ %_address_in_parent_stack_bt_582, %382 ]
  %_new_load_583 = load i32, i32* %384
  %385 = zext i32 %_new_load_583 to i64, !mcsema_real_eip !121
  store i64 %385, i64* %R8, !mcsema_real_eip !121
  %ESI_val.210 = load i32, i32* %ESI.108, !mcsema_real_eip !122
  %R8D_val.212 = load i32, i32* %R8D.122, !mcsema_real_eip !122
  %386 = add i32 %R8D_val.212, %ESI_val.210, !mcsema_real_eip !122
  %387 = xor i32 %386, %ESI_val.210, !mcsema_real_eip !122
  %388 = xor i32 %387, %R8D_val.212, !mcsema_real_eip !122
  %389 = and i32 %388, 16, !mcsema_real_eip !122
  %390 = icmp ne i32 %389, 0, !mcsema_real_eip !122
  store i1 %390, i1* %AF, !mcsema_real_eip !122
  %391 = lshr i32 %386, 31, !mcsema_real_eip !122
  %392 = trunc i32 %391 to i1, !mcsema_real_eip !122
  store i1 %392, i1* %SF, !mcsema_real_eip !122
  %393 = icmp eq i32 %386, 0, !mcsema_real_eip !122
  store i1 %393, i1* %ZF, !mcsema_real_eip !122
  %394 = xor i32 %ESI_val.210, %R8D_val.212, !mcsema_real_eip !122
  %395 = xor i32 %394, -1, !mcsema_real_eip !122
  %396 = and i32 %395, %387, !mcsema_real_eip !122
  %397 = lshr i32 %396, 31, !mcsema_real_eip !122
  %398 = and i32 %397, 1, !mcsema_real_eip !122
  %399 = trunc i32 %398 to i1, !mcsema_real_eip !122
  store i1 %399, i1* %OF, !mcsema_real_eip !122
  %400 = trunc i32 %386 to i8, !mcsema_real_eip !122
  %401 = call i8 @llvm.ctpop.i8(i8 %400), !mcsema_real_eip !122
  %402 = trunc i8 %401 to i1, !mcsema_real_eip !122
  %403 = xor i1 %402, true, !mcsema_real_eip !122
  store i1 %403, i1* %PF, !mcsema_real_eip !122
  %404 = icmp ult i32 %386, %ESI_val.210, !mcsema_real_eip !122
  store i1 %404, i1* %CF, !mcsema_real_eip !122
  %405 = zext i32 %386 to i64, !mcsema_real_eip !122
  store i64 %405, i64* %XSI, !mcsema_real_eip !122
  %R11_val.213 = load i64, i64* %R11, !mcsema_real_eip !123
  %406 = add i64 %R11_val.213, 8, !mcsema_real_eip !123
  %407 = inttoptr i64 %406 to i64*, !mcsema_real_eip !123
  %408 = inttoptr i64 %406 to i32*, !mcsema_real_eip !123
  %_ptr_bt_586 = bitcast i32* %408 to i8*
  %_offset_above_rbp_587 = sub i64 %406, %_local_end_to_int_
  %_pot_address_in_parent_stack_588 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_587
  %_cond1_589 = icmp ugt i8* %_ptr_bt_586, %_local_stack_end_ptr_
  %_cond2_1_590 = icmp ugt i8* %_ptr_bt_586, %_parent_stack_end_ptr_
  %_cond2_2_591 = icmp ult i8* %_ptr_bt_586, %_parent_stack_start_ptr_
  %_cond2_592 = or i1 %_cond2_1_590, %_cond2_2_591
  %_cond4_593 = icmp ule i8* %_pot_address_in_parent_stack_588, %_parent_stack_end_ptr_
  %_cond1_n_cond2_594 = and i1 %_cond1_589, %_cond2_592
  %_cond1_n_cond2_cond3_595 = and i1 %_cond1_n_cond2_594, %_cond4_593
  br i1 %_cond1_n_cond2_cond3_595, label %409, label %410

; <label>:409:                                    ; preds = %383
  %_address_in_parent_stack_bt_597 = bitcast i8* %_pot_address_in_parent_stack_588 to i32*
  br label %410

; <label>:410:                                    ; preds = %383, %409
  %411 = phi i32* [ %408, %383 ], [ %_address_in_parent_stack_bt_597, %409 ]
  %_new_load_598 = load i32, i32* %411
  %412 = zext i32 %_new_load_598 to i64, !mcsema_real_eip !123
  store i64 %412, i64* %R8, !mcsema_real_eip !123
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -96
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %_ptr_to_int_599 = ptrtoint i64* %_allin_new_bt_103 to i64
  %_offset_above_rbp_602 = sub i64 %_ptr_to_int_599, %_local_end_to_int_
  %_pot_address_in_parent_stack_603 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_602
  %_cond1_604 = icmp ugt i8* %_new_gep_102, %_local_stack_end_ptr_
  %_cond2_1_605 = icmp ugt i8* %_new_gep_102, %_parent_stack_end_ptr_
  %_cond2_2_606 = icmp ult i8* %_new_gep_102, %_parent_stack_start_ptr_
  %_cond2_607 = or i1 %_cond2_1_605, %_cond2_2_606
  %_cond4_608 = icmp ule i8* %_pot_address_in_parent_stack_603, %_parent_stack_end_ptr_
  %_cond1_n_cond2_609 = and i1 %_cond1_604, %_cond2_607
  %_cond1_n_cond2_cond3_610 = and i1 %_cond1_n_cond2_609, %_cond4_608
  br i1 %_cond1_n_cond2_cond3_610, label %413, label %414

; <label>:413:                                    ; preds = %410
  %_address_in_parent_stack_bt_612 = bitcast i8* %_pot_address_in_parent_stack_603 to i64*
  br label %414

; <label>:414:                                    ; preds = %410, %413
  %415 = phi i64* [ %_allin_new_bt_103, %410 ], [ %_address_in_parent_stack_bt_612, %413 ]
  %_new_load_613 = load i64, i64* %415
  store i64 %_new_load_613, i64* %XAX, !mcsema_real_eip !124
  %416 = add i64 %_new_load_613, 8, !mcsema_real_eip !125
  %417 = inttoptr i64 %416 to i64*, !mcsema_real_eip !125
  %418 = inttoptr i64 %416 to i32*, !mcsema_real_eip !125
  %_ptr_bt_616 = bitcast i32* %418 to i8*
  %_offset_above_rbp_617 = sub i64 %416, %_local_end_to_int_
  %_pot_address_in_parent_stack_618 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_617
  %_cond1_619 = icmp ugt i8* %_ptr_bt_616, %_local_stack_end_ptr_
  %_cond2_1_620 = icmp ugt i8* %_ptr_bt_616, %_parent_stack_end_ptr_
  %_cond2_2_621 = icmp ult i8* %_ptr_bt_616, %_parent_stack_start_ptr_
  %_cond2_622 = or i1 %_cond2_1_620, %_cond2_2_621
  %_cond4_623 = icmp ule i8* %_pot_address_in_parent_stack_618, %_parent_stack_end_ptr_
  %_cond1_n_cond2_624 = and i1 %_cond1_619, %_cond2_622
  %_cond1_n_cond2_cond3_625 = and i1 %_cond1_n_cond2_624, %_cond4_623
  br i1 %_cond1_n_cond2_cond3_625, label %419, label %420

; <label>:419:                                    ; preds = %414
  %_address_in_parent_stack_bt_627 = bitcast i8* %_pot_address_in_parent_stack_618 to i32*
  br label %420

; <label>:420:                                    ; preds = %414, %419
  %421 = phi i32* [ %418, %414 ], [ %_address_in_parent_stack_bt_627, %419 ]
  %_new_load_628 = load i32, i32* %421
  %422 = zext i32 %_new_load_628 to i64, !mcsema_real_eip !125
  store i64 %422, i64* %R9, !mcsema_real_eip !125
  %R8D_val.217 = load i32, i32* %R8D.122, !mcsema_real_eip !126
  %R9D_val.219 = load i32, i32* %R9D.125, !mcsema_real_eip !126
  %423 = add i32 %R9D_val.219, %R8D_val.217, !mcsema_real_eip !126
  %424 = xor i32 %423, %R8D_val.217, !mcsema_real_eip !126
  %425 = xor i32 %424, %R9D_val.219, !mcsema_real_eip !126
  %426 = and i32 %425, 16, !mcsema_real_eip !126
  %427 = icmp ne i32 %426, 0, !mcsema_real_eip !126
  store i1 %427, i1* %AF, !mcsema_real_eip !126
  %428 = lshr i32 %423, 31, !mcsema_real_eip !126
  %429 = trunc i32 %428 to i1, !mcsema_real_eip !126
  store i1 %429, i1* %SF, !mcsema_real_eip !126
  %430 = icmp eq i32 %423, 0, !mcsema_real_eip !126
  store i1 %430, i1* %ZF, !mcsema_real_eip !126
  %431 = xor i32 %R8D_val.217, %R9D_val.219, !mcsema_real_eip !126
  %432 = xor i32 %431, -1, !mcsema_real_eip !126
  %433 = and i32 %432, %424, !mcsema_real_eip !126
  %434 = lshr i32 %433, 31, !mcsema_real_eip !126
  %435 = and i32 %434, 1, !mcsema_real_eip !126
  %436 = trunc i32 %435 to i1, !mcsema_real_eip !126
  store i1 %436, i1* %OF, !mcsema_real_eip !126
  %437 = trunc i32 %423 to i8, !mcsema_real_eip !126
  %438 = call i8 @llvm.ctpop.i8(i8 %437), !mcsema_real_eip !126
  %439 = trunc i8 %438 to i1, !mcsema_real_eip !126
  %440 = xor i1 %439, true, !mcsema_real_eip !126
  store i1 %440, i1* %PF, !mcsema_real_eip !126
  %441 = icmp ult i32 %423, %R8D_val.217, !mcsema_real_eip !126
  store i1 %441, i1* %CF, !mcsema_real_eip !126
  %442 = zext i32 %423 to i64, !mcsema_real_eip !126
  store i64 %442, i64* %R8, !mcsema_real_eip !126
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -104
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %_ptr_to_int_629 = ptrtoint i64* %_allin_new_bt_106 to i64
  %_offset_above_rbp_632 = sub i64 %_ptr_to_int_629, %_local_end_to_int_
  %_pot_address_in_parent_stack_633 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_632
  %_cond1_634 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_635 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_636 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_637 = or i1 %_cond2_1_635, %_cond2_2_636
  %_cond4_638 = icmp ule i8* %_pot_address_in_parent_stack_633, %_parent_stack_end_ptr_
  %_cond1_n_cond2_639 = and i1 %_cond1_634, %_cond2_637
  %_cond1_n_cond2_cond3_640 = and i1 %_cond1_n_cond2_639, %_cond4_638
  br i1 %_cond1_n_cond2_cond3_640, label %443, label %444

; <label>:443:                                    ; preds = %420
  %_address_in_parent_stack_bt_642 = bitcast i8* %_pot_address_in_parent_stack_633 to i64*
  br label %444

; <label>:444:                                    ; preds = %420, %443
  %445 = phi i64* [ %_allin_new_bt_106, %420 ], [ %_address_in_parent_stack_bt_642, %443 ]
  %_new_load_643 = load i64, i64* %445
  store i64 %_new_load_643, i64* %XAX, !mcsema_real_eip !127
  %446 = add i64 %_new_load_643, 8, !mcsema_real_eip !128
  %447 = inttoptr i64 %446 to i64*, !mcsema_real_eip !128
  %448 = inttoptr i64 %446 to i32*, !mcsema_real_eip !128
  %_ptr_bt_646 = bitcast i32* %448 to i8*
  %_offset_above_rbp_647 = sub i64 %446, %_local_end_to_int_
  %_pot_address_in_parent_stack_648 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_647
  %_cond1_649 = icmp ugt i8* %_ptr_bt_646, %_local_stack_end_ptr_
  %_cond2_1_650 = icmp ugt i8* %_ptr_bt_646, %_parent_stack_end_ptr_
  %_cond2_2_651 = icmp ult i8* %_ptr_bt_646, %_parent_stack_start_ptr_
  %_cond2_652 = or i1 %_cond2_1_650, %_cond2_2_651
  %_cond4_653 = icmp ule i8* %_pot_address_in_parent_stack_648, %_parent_stack_end_ptr_
  %_cond1_n_cond2_654 = and i1 %_cond1_649, %_cond2_652
  %_cond1_n_cond2_cond3_655 = and i1 %_cond1_n_cond2_654, %_cond4_653
  br i1 %_cond1_n_cond2_cond3_655, label %449, label %450

; <label>:449:                                    ; preds = %444
  %_address_in_parent_stack_bt_657 = bitcast i8* %_pot_address_in_parent_stack_648 to i32*
  br label %450

; <label>:450:                                    ; preds = %444, %449
  %451 = phi i32* [ %448, %444 ], [ %_address_in_parent_stack_bt_657, %449 ]
  %_new_load_658 = load i32, i32* %451
  %452 = zext i32 %_new_load_658 to i64, !mcsema_real_eip !128
  store i64 %452, i64* %R9, !mcsema_real_eip !128
  %R8D_val.223 = load i32, i32* %R8D.122, !mcsema_real_eip !129
  %R9D_val.225 = load i32, i32* %R9D.125, !mcsema_real_eip !129
  %453 = add i32 %R9D_val.225, %R8D_val.223, !mcsema_real_eip !129
  %454 = xor i32 %453, %R8D_val.223, !mcsema_real_eip !129
  %455 = xor i32 %454, %R9D_val.225, !mcsema_real_eip !129
  %456 = and i32 %455, 16, !mcsema_real_eip !129
  %457 = icmp ne i32 %456, 0, !mcsema_real_eip !129
  store i1 %457, i1* %AF, !mcsema_real_eip !129
  %458 = lshr i32 %453, 31, !mcsema_real_eip !129
  %459 = trunc i32 %458 to i1, !mcsema_real_eip !129
  store i1 %459, i1* %SF, !mcsema_real_eip !129
  %460 = icmp eq i32 %453, 0, !mcsema_real_eip !129
  store i1 %460, i1* %ZF, !mcsema_real_eip !129
  %461 = xor i32 %R8D_val.223, %R9D_val.225, !mcsema_real_eip !129
  %462 = xor i32 %461, -1, !mcsema_real_eip !129
  %463 = and i32 %462, %454, !mcsema_real_eip !129
  %464 = lshr i32 %463, 31, !mcsema_real_eip !129
  %465 = and i32 %464, 1, !mcsema_real_eip !129
  %466 = trunc i32 %465 to i1, !mcsema_real_eip !129
  store i1 %466, i1* %OF, !mcsema_real_eip !129
  %467 = trunc i32 %453 to i8, !mcsema_real_eip !129
  %468 = call i8 @llvm.ctpop.i8(i8 %467), !mcsema_real_eip !129
  %469 = trunc i8 %468 to i1, !mcsema_real_eip !129
  %470 = xor i1 %469, true, !mcsema_real_eip !129
  store i1 %470, i1* %PF, !mcsema_real_eip !129
  %471 = icmp ult i32 %453, %R8D_val.223, !mcsema_real_eip !129
  store i1 %471, i1* %CF, !mcsema_real_eip !129
  %472 = zext i32 %453 to i64, !mcsema_real_eip !129
  store i64 %472, i64* %R8, !mcsema_real_eip !129
  %ESI_val.227 = load i32, i32* %ESI.108, !mcsema_real_eip !130
  %R8D_val.229 = load i32, i32* %R8D.122, !mcsema_real_eip !130
  %473 = add i32 %R8D_val.229, %ESI_val.227, !mcsema_real_eip !130
  %474 = xor i32 %473, %ESI_val.227, !mcsema_real_eip !130
  %475 = xor i32 %474, %R8D_val.229, !mcsema_real_eip !130
  %476 = and i32 %475, 16, !mcsema_real_eip !130
  %477 = icmp ne i32 %476, 0, !mcsema_real_eip !130
  store i1 %477, i1* %AF, !mcsema_real_eip !130
  %478 = lshr i32 %473, 31, !mcsema_real_eip !130
  %479 = trunc i32 %478 to i1, !mcsema_real_eip !130
  store i1 %479, i1* %SF, !mcsema_real_eip !130
  %480 = icmp eq i32 %473, 0, !mcsema_real_eip !130
  store i1 %480, i1* %ZF, !mcsema_real_eip !130
  %481 = xor i32 %ESI_val.227, %R8D_val.229, !mcsema_real_eip !130
  %482 = xor i32 %481, -1, !mcsema_real_eip !130
  %483 = and i32 %482, %474, !mcsema_real_eip !130
  %484 = lshr i32 %483, 31, !mcsema_real_eip !130
  %485 = and i32 %484, 1, !mcsema_real_eip !130
  %486 = trunc i32 %485 to i1, !mcsema_real_eip !130
  store i1 %486, i1* %OF, !mcsema_real_eip !130
  %487 = trunc i32 %473 to i8, !mcsema_real_eip !130
  %488 = call i8 @llvm.ctpop.i8(i8 %487), !mcsema_real_eip !130
  %489 = trunc i8 %488 to i1, !mcsema_real_eip !130
  %490 = xor i1 %489, true, !mcsema_real_eip !130
  store i1 %490, i1* %PF, !mcsema_real_eip !130
  %491 = icmp ult i32 %473, %ESI_val.227, !mcsema_real_eip !130
  store i1 %491, i1* %CF, !mcsema_real_eip !130
  %492 = zext i32 %473 to i64, !mcsema_real_eip !130
  store i64 %492, i64* %XSI, !mcsema_real_eip !130
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -112
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %ESI_val.232 = load i32, i32* %ESI.108, !mcsema_real_eip !131
  %493 = ptrtoint i64* %_allin_new_bt_109 to i64, !mcsema_real_eip !131
  %494 = inttoptr i64 %493 to i32*, !mcsema_real_eip !131
  store i32 %ESI_val.232, i32* %494, !mcsema_real_eip !131
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -112
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %495 = ptrtoint i64* %_allin_new_bt_112 to i64, !mcsema_real_eip !132
  %496 = inttoptr i64 %495 to i32*, !mcsema_real_eip !132
  %_ptr_bt_661 = bitcast i32* %496 to i8*
  %_offset_above_rbp_662 = sub i64 %495, %_local_end_to_int_
  %_pot_address_in_parent_stack_663 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_662
  %_cond1_664 = icmp ugt i8* %_ptr_bt_661, %_local_stack_end_ptr_
  %_cond2_1_665 = icmp ugt i8* %_ptr_bt_661, %_parent_stack_end_ptr_
  %_cond2_2_666 = icmp ult i8* %_ptr_bt_661, %_parent_stack_start_ptr_
  %_cond2_667 = or i1 %_cond2_1_665, %_cond2_2_666
  %_cond4_668 = icmp ule i8* %_pot_address_in_parent_stack_663, %_parent_stack_end_ptr_
  %_cond1_n_cond2_669 = and i1 %_cond1_664, %_cond2_667
  %_cond1_n_cond2_cond3_670 = and i1 %_cond1_n_cond2_669, %_cond4_668
  br i1 %_cond1_n_cond2_cond3_670, label %497, label %498

; <label>:497:                                    ; preds = %450
  %_address_in_parent_stack_bt_672 = bitcast i8* %_pot_address_in_parent_stack_663 to i32*
  br label %498

; <label>:498:                                    ; preds = %450, %497
  %499 = phi i32* [ %496, %450 ], [ %_address_in_parent_stack_bt_672, %497 ]
  %_new_load_673 = load i32, i32* %499
  %500 = zext i32 %_new_load_673 to i64, !mcsema_real_eip !132
  store i64 %500, i64* %XSI, !mcsema_real_eip !132
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -16
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %ESI_val.236 = load i32, i32* %ESI.108, !mcsema_real_eip !133
  %501 = ptrtoint i64* %_allin_new_bt_115 to i64, !mcsema_real_eip !133
  %502 = inttoptr i64 %501 to i32*, !mcsema_real_eip !133
  store i32 %ESI_val.236, i32* %502, !mcsema_real_eip !133
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -120
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %_ptr_to_int_674 = ptrtoint i64* %_allin_new_bt_118 to i64
  %_offset_above_rbp_677 = sub i64 %_ptr_to_int_674, %_local_end_to_int_
  %_pot_address_in_parent_stack_678 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_677
  %_cond1_679 = icmp ugt i8* %_new_gep_117, %_local_stack_end_ptr_
  %_cond2_1_680 = icmp ugt i8* %_new_gep_117, %_parent_stack_end_ptr_
  %_cond2_2_681 = icmp ult i8* %_new_gep_117, %_parent_stack_start_ptr_
  %_cond2_682 = or i1 %_cond2_1_680, %_cond2_2_681
  %_cond4_683 = icmp ule i8* %_pot_address_in_parent_stack_678, %_parent_stack_end_ptr_
  %_cond1_n_cond2_684 = and i1 %_cond1_679, %_cond2_682
  %_cond1_n_cond2_cond3_685 = and i1 %_cond1_n_cond2_684, %_cond4_683
  br i1 %_cond1_n_cond2_cond3_685, label %503, label %504

; <label>:503:                                    ; preds = %498
  %_address_in_parent_stack_bt_687 = bitcast i8* %_pot_address_in_parent_stack_678 to i64*
  br label %504

; <label>:504:                                    ; preds = %498, %503
  %505 = phi i64* [ %_allin_new_bt_118, %498 ], [ %_address_in_parent_stack_bt_687, %503 ]
  %_new_load_688 = load i64, i64* %505
  store i64 %_new_load_688, i64* %XAX, !mcsema_real_eip !134
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -24
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  store i64 %_new_load_688, i64* %_allin_new_bt_121, !mcsema_real_eip !135
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -16
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %506 = ptrtoint i64* %_allin_new_bt_124 to i64, !mcsema_real_eip !136
  %507 = inttoptr i64 %506 to i32*, !mcsema_real_eip !136
  %_ptr_bt_691 = bitcast i32* %507 to i8*
  %_offset_above_rbp_692 = sub i64 %506, %_local_end_to_int_
  %_pot_address_in_parent_stack_693 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_692
  %_cond1_694 = icmp ugt i8* %_ptr_bt_691, %_local_stack_end_ptr_
  %_cond2_1_695 = icmp ugt i8* %_ptr_bt_691, %_parent_stack_end_ptr_
  %_cond2_2_696 = icmp ult i8* %_ptr_bt_691, %_parent_stack_start_ptr_
  %_cond2_697 = or i1 %_cond2_1_695, %_cond2_2_696
  %_cond4_698 = icmp ule i8* %_pot_address_in_parent_stack_693, %_parent_stack_end_ptr_
  %_cond1_n_cond2_699 = and i1 %_cond1_694, %_cond2_697
  %_cond1_n_cond2_cond3_700 = and i1 %_cond1_n_cond2_699, %_cond4_698
  br i1 %_cond1_n_cond2_cond3_700, label %508, label %509

; <label>:508:                                    ; preds = %504
  %_address_in_parent_stack_bt_702 = bitcast i8* %_pot_address_in_parent_stack_693 to i32*
  br label %509

; <label>:509:                                    ; preds = %504, %508
  %510 = phi i32* [ %507, %504 ], [ %_address_in_parent_stack_bt_702, %508 ]
  %_new_load_703 = load i32, i32* %510
  %511 = zext i32 %_new_load_703 to i64, !mcsema_real_eip !136
  store i64 %511, i64* %XSI, !mcsema_real_eip !136
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -128
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %ESI_val.243 = load i32, i32* %ESI.108, !mcsema_real_eip !137
  %512 = ptrtoint i64* %_allin_new_bt_127 to i64, !mcsema_real_eip !137
  %513 = inttoptr i64 %512 to i32*, !mcsema_real_eip !137
  store i32 %ESI_val.243, i32* %513, !mcsema_real_eip !137
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -24
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %_ptr_to_int_704 = ptrtoint i64* %_allin_new_bt_130 to i64
  %_offset_above_rbp_707 = sub i64 %_ptr_to_int_704, %_local_end_to_int_
  %_pot_address_in_parent_stack_708 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_707
  %_cond1_709 = icmp ugt i8* %_new_gep_129, %_local_stack_end_ptr_
  %_cond2_1_710 = icmp ugt i8* %_new_gep_129, %_parent_stack_end_ptr_
  %_cond2_2_711 = icmp ult i8* %_new_gep_129, %_parent_stack_start_ptr_
  %_cond2_712 = or i1 %_cond2_1_710, %_cond2_2_711
  %_cond4_713 = icmp ule i8* %_pot_address_in_parent_stack_708, %_parent_stack_end_ptr_
  %_cond1_n_cond2_714 = and i1 %_cond1_709, %_cond2_712
  %_cond1_n_cond2_cond3_715 = and i1 %_cond1_n_cond2_714, %_cond4_713
  br i1 %_cond1_n_cond2_cond3_715, label %514, label %515

; <label>:514:                                    ; preds = %509
  %_address_in_parent_stack_bt_717 = bitcast i8* %_pot_address_in_parent_stack_708 to i64*
  br label %515

; <label>:515:                                    ; preds = %509, %514
  %516 = phi i64* [ %_allin_new_bt_130, %509 ], [ %_address_in_parent_stack_bt_717, %514 ]
  %_new_load_718 = load i64, i64* %516
  store i64 %_new_load_718, i64* %XAX, !mcsema_real_eip !138
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -136
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 %_new_load_718, i64* %_allin_new_bt_133, !mcsema_real_eip !139
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -136
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %_ptr_to_int_719 = ptrtoint i64* %_allin_new_bt_136 to i64
  %_offset_above_rbp_722 = sub i64 %_ptr_to_int_719, %_local_end_to_int_
  %_pot_address_in_parent_stack_723 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_722
  %_cond1_724 = icmp ugt i8* %_new_gep_135, %_local_stack_end_ptr_
  %_cond2_1_725 = icmp ugt i8* %_new_gep_135, %_parent_stack_end_ptr_
  %_cond2_2_726 = icmp ult i8* %_new_gep_135, %_parent_stack_start_ptr_
  %_cond2_727 = or i1 %_cond2_1_725, %_cond2_2_726
  %_cond4_728 = icmp ule i8* %_pot_address_in_parent_stack_723, %_parent_stack_end_ptr_
  %_cond1_n_cond2_729 = and i1 %_cond1_724, %_cond2_727
  %_cond1_n_cond2_cond3_730 = and i1 %_cond1_n_cond2_729, %_cond4_728
  br i1 %_cond1_n_cond2_cond3_730, label %517, label %518

; <label>:517:                                    ; preds = %515
  %_address_in_parent_stack_bt_732 = bitcast i8* %_pot_address_in_parent_stack_723 to i64*
  br label %518

; <label>:518:                                    ; preds = %515, %517
  %519 = phi i64* [ %_allin_new_bt_136, %515 ], [ %_address_in_parent_stack_bt_732, %517 ]
  %_new_load_733 = load i64, i64* %519
  store i64 %_new_load_733, i64* %XAX, !mcsema_real_eip !140
  %_new_gep_138 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -128
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %520 = ptrtoint i64* %_allin_new_bt_139 to i64, !mcsema_real_eip !141
  %521 = inttoptr i64 %520 to i32*, !mcsema_real_eip !141
  %_ptr_bt_736 = bitcast i32* %521 to i8*
  %_offset_above_rbp_737 = sub i64 %520, %_local_end_to_int_
  %_pot_address_in_parent_stack_738 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_737
  %_cond1_739 = icmp ugt i8* %_ptr_bt_736, %_local_stack_end_ptr_
  %_cond2_1_740 = icmp ugt i8* %_ptr_bt_736, %_parent_stack_end_ptr_
  %_cond2_2_741 = icmp ult i8* %_ptr_bt_736, %_parent_stack_start_ptr_
  %_cond2_742 = or i1 %_cond2_1_740, %_cond2_2_741
  %_cond4_743 = icmp ule i8* %_pot_address_in_parent_stack_738, %_parent_stack_end_ptr_
  %_cond1_n_cond2_744 = and i1 %_cond1_739, %_cond2_742
  %_cond1_n_cond2_cond3_745 = and i1 %_cond1_n_cond2_744, %_cond4_743
  br i1 %_cond1_n_cond2_cond3_745, label %522, label %523

; <label>:522:                                    ; preds = %518
  %_address_in_parent_stack_bt_747 = bitcast i8* %_pot_address_in_parent_stack_738 to i32*
  br label %523

; <label>:523:                                    ; preds = %518, %522
  %524 = phi i32* [ %521, %518 ], [ %_address_in_parent_stack_bt_747, %522 ]
  %_new_load_748 = load i32, i32* %524
  %525 = zext i32 %_new_load_748 to i64, !mcsema_real_eip !141
  store i64 %525, i64* %XDX, !mcsema_real_eip !141
  %_load_rsp_ptr_140 = load i8*, i8** %_RSP_ptr_
  %RSP_val.249 = load i64, i64* %XSP, !mcsema_real_eip !142
  %_allin_new_bt_141 = bitcast i8* %_load_rsp_ptr_140 to i64*
  %_ptr_to_int_749 = ptrtoint i64* %_allin_new_bt_141 to i64
  %_offset_above_rbp_752 = sub i64 %_ptr_to_int_749, %_local_end_to_int_
  %_pot_address_in_parent_stack_753 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_752
  %_cond1_754 = icmp ugt i8* %_load_rsp_ptr_140, %_local_stack_end_ptr_
  %_cond2_1_755 = icmp ugt i8* %_load_rsp_ptr_140, %_parent_stack_end_ptr_
  %_cond2_2_756 = icmp ult i8* %_load_rsp_ptr_140, %_parent_stack_start_ptr_
  %_cond2_757 = or i1 %_cond2_1_755, %_cond2_2_756
  %_cond4_758 = icmp ule i8* %_pot_address_in_parent_stack_753, %_parent_stack_end_ptr_
  %_cond1_n_cond2_759 = and i1 %_cond1_754, %_cond2_757
  %_cond1_n_cond2_cond3_760 = and i1 %_cond1_n_cond2_759, %_cond4_758
  br i1 %_cond1_n_cond2_cond3_760, label %526, label %527

; <label>:526:                                    ; preds = %523
  %_address_in_parent_stack_bt_762 = bitcast i8* %_pot_address_in_parent_stack_753 to i64*
  br label %527

; <label>:527:                                    ; preds = %523, %526
  %528 = phi i64* [ %_allin_new_bt_141, %523 ], [ %_address_in_parent_stack_bt_762, %526 ]
  %_new_load_763 = load i64, i64* %528
  store i64 %_new_load_763, i64* %XBX, !mcsema_real_eip !142
  %_new_gep_142 = getelementptr i8, i8* %_load_rsp_ptr_140, i64 8
  %529 = add i64 %RSP_val.249, 8, !mcsema_real_eip !142
  store volatile i8* %_new_gep_142, i8** %_RSP_ptr_
  store i64 %529, i64* %XSP, !mcsema_real_eip !142
  %_allin_new_bt_144 = bitcast i8* %_new_gep_142 to i64*
  %_ptr_to_int_764 = ptrtoint i64* %_allin_new_bt_144 to i64
  %_offset_above_rbp_767 = sub i64 %_ptr_to_int_764, %_local_end_to_int_
  %_pot_address_in_parent_stack_768 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_767
  %_cond1_769 = icmp ugt i8* %_new_gep_142, %_local_stack_end_ptr_
  %_cond2_1_770 = icmp ugt i8* %_new_gep_142, %_parent_stack_end_ptr_
  %_cond2_2_771 = icmp ult i8* %_new_gep_142, %_parent_stack_start_ptr_
  %_cond2_772 = or i1 %_cond2_1_770, %_cond2_2_771
  %_cond4_773 = icmp ule i8* %_pot_address_in_parent_stack_768, %_parent_stack_end_ptr_
  %_cond1_n_cond2_774 = and i1 %_cond1_769, %_cond2_772
  %_cond1_n_cond2_cond3_775 = and i1 %_cond1_n_cond2_774, %_cond4_773
  br i1 %_cond1_n_cond2_cond3_775, label %530, label %531

; <label>:530:                                    ; preds = %527
  %_address_in_parent_stack_bt_777 = bitcast i8* %_pot_address_in_parent_stack_768 to i64*
  br label %531

; <label>:531:                                    ; preds = %527, %530
  %532 = phi i64* [ %_allin_new_bt_144, %527 ], [ %_address_in_parent_stack_bt_777, %530 ]
  %_new_load_778 = load i64, i64* %532
  %_new_int2ptr_ = inttoptr i64 %_new_load_778 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_778, i64* %XBP, !mcsema_real_eip !143
  %_new_gep_145 = getelementptr i8, i8* %_new_gep_142, i64 8
  %533 = add i64 %529, 8, !mcsema_real_eip !143
  store volatile i8* %_new_gep_145, i8** %_RSP_ptr_
  store i64 %533, i64* %XSP, !mcsema_real_eip !143
  %_new_gep_147 = getelementptr i8, i8* %_new_gep_145, i64 8
  %534 = add i64 %533, 8, !mcsema_real_eip !144
  %_allin_new_bt_148 = bitcast i8* %_new_gep_145 to i64*
  %_ptr_to_int_779 = ptrtoint i64* %_allin_new_bt_148 to i64
  %_offset_above_rbp_782 = sub i64 %_ptr_to_int_779, %_local_end_to_int_
  %_pot_address_in_parent_stack_783 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_782
  %_cond1_784 = icmp ugt i8* %_new_gep_145, %_local_stack_end_ptr_
  %_cond2_1_785 = icmp ugt i8* %_new_gep_145, %_parent_stack_end_ptr_
  %_cond2_2_786 = icmp ult i8* %_new_gep_145, %_parent_stack_start_ptr_
  %_cond2_787 = or i1 %_cond2_1_785, %_cond2_2_786
  %_cond4_788 = icmp ule i8* %_pot_address_in_parent_stack_783, %_parent_stack_end_ptr_
  %_cond1_n_cond2_789 = and i1 %_cond1_784, %_cond2_787
  %_cond1_n_cond2_cond3_790 = and i1 %_cond1_n_cond2_789, %_cond4_788
  br i1 %_cond1_n_cond2_cond3_790, label %535, label %536

; <label>:535:                                    ; preds = %531
  %_address_in_parent_stack_bt_792 = bitcast i8* %_pot_address_in_parent_stack_783 to i64*
  br label %536

; <label>:536:                                    ; preds = %531, %535
  %537 = phi i64* [ %_allin_new_bt_148, %531 ], [ %_address_in_parent_stack_bt_792, %535 ]
  %_new_load_793 = load i64, i64* %537
  store i64 %_new_load_793, i64* %XIP, !mcsema_real_eip !144
  store volatile i8* %_new_gep_147, i8** %_RSP_ptr_
  store i64 %534, i64* %XSP, !mcsema_real_eip !144
  ret void, !mcsema_real_eip !144
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 288}
!3 = !{i64 289}
!4 = !{i64 292}
!5 = !{i64 299}
!6 = !{i64 309}
!7 = !{i64 316}
!8 = !{i64 323}
!9 = !{i64 330}
!10 = !{i64 337}
!11 = !{i64 342}
!12 = !{i64 344}
!13 = !{i64 348}
!14 = !{i64 351}
!15 = !{i64 356}
!16 = !{i64 360}
!17 = !{i64 364}
!18 = !{i64 370}
!19 = !{i64 374}
!20 = !{i64 381}
!21 = !{i64 385}
!22 = !{i64 392}
!23 = !{i64 396}
!24 = !{i64 399}
!25 = !{i64 402}
!26 = !{i64 406}
!27 = !{i64 410}
!28 = !{i64 414}
!29 = !{i64 417}
!30 = !{i64 423}
!31 = !{i64 426}
!32 = !{i64 430}
!33 = !{i64 434}
!34 = !{i64 438}
!35 = !{i64 442}
!36 = !{i64 446}
!37 = !{i64 452}
!38 = !{i64 457}
!39 = !{i64 463}
!40 = !{i64 466}
!41 = !{i64 469}
!42 = !{i64 472}
!43 = !{i64 476}
!44 = !{i64 481}
!45 = !{i64 484}
!46 = !{i64 488}
!47 = !{i64 492}
!48 = !{i64 496}
!49 = !{i64 499}
!50 = !{i64 502}
!51 = !{i64 505}
!52 = !{i64 508}
!53 = !{i64 511}
!54 = !{i64 514}
!55 = !{i64 517}
!56 = !{i64 521}
!57 = !{i64 523}
!58 = !{i64 528}
!59 = !{i64 531}
!60 = !{i64 534}
!61 = !{i64 536}
!62 = !{i64 543}
!63 = !{i64 544}
!64 = !{i64 0}
!65 = !{i64 1}
!66 = !{i64 4}
!67 = !{i64 5}
!68 = !{i64 9}
!69 = !{i64 13}
!70 = !{i64 17}
!71 = !{i64 20}
!72 = !{i64 24}
!73 = !{i64 27}
!74 = !{i64 30}
!75 = !{i64 33}
!76 = !{i64 37}
!77 = !{i64 41}
!78 = !{i64 45}
!79 = !{i64 49}
!80 = !{i64 53}
!81 = !{i64 57}
!82 = !{i64 60}
!83 = !{i64 64}
!84 = !{i64 68}
!85 = !{i64 71}
!86 = !{i64 75}
!87 = !{i64 78}
!88 = !{i64 81}
!89 = !{i64 85}
!90 = !{i64 88}
!91 = !{i64 91}
!92 = !{i64 94}
!93 = !{i64 98}
!94 = !{i64 101}
!95 = !{i64 104}
!96 = !{i64 108}
!97 = !{i64 111}
!98 = !{i64 114}
!99 = !{i64 117}
!100 = !{i64 120}
!101 = !{i64 123}
!102 = !{i64 127}
!103 = !{i64 131}
!104 = !{i64 134}
!105 = !{i64 138}
!106 = !{i64 142}
!107 = !{i64 145}
!108 = !{i64 149}
!109 = !{i64 153}
!110 = !{i64 157}
!111 = !{i64 160}
!112 = !{i64 164}
!113 = !{i64 168}
!114 = !{i64 171}
!115 = !{i64 174}
!116 = !{i64 177}
!117 = !{i64 180}
!118 = !{i64 184}
!119 = !{i64 188}
!120 = !{i64 191}
!121 = !{i64 195}
!122 = !{i64 199}
!123 = !{i64 202}
!124 = !{i64 206}
!125 = !{i64 210}
!126 = !{i64 214}
!127 = !{i64 217}
!128 = !{i64 221}
!129 = !{i64 225}
!130 = !{i64 228}
!131 = !{i64 231}
!132 = !{i64 234}
!133 = !{i64 237}
!134 = !{i64 240}
!135 = !{i64 244}
!136 = !{i64 248}
!137 = !{i64 251}
!138 = !{i64 254}
!139 = !{i64 258}
!140 = !{i64 265}
!141 = !{i64 272}
!142 = !{i64 275}
!143 = !{i64 276}
!144 = !{i64 277}
