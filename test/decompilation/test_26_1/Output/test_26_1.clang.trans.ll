; ModuleID = 'Output/test_26_1.clang.trans.bc'
source_filename = "Output/test_26_1.clang.bc"
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
module asm "  .globl sub_90;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_90(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x176 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x180 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\84\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\E6\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_90(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 128
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 128
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
  br label %block_0x90, !mcsema_real_eip !2

block_0x90:                                       ; preds = %entry
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -112
  %2 = sub i64 %RSP_val.3, 112, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 112, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 112
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 112
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x176 to i64), i64* %XDI, !mcsema_real_eip !5
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
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -72
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
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_47 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  store volatile i64 %_new_ptr2int_47, i64* %XCX
  %37 = add i64 %_new_ptr2int_47, 8, !mcsema_real_eip !23
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !23
  %RAX_val.26 = load i64, i64* %XAX, !mcsema_real_eip !23
  store i64 %RAX_val.26, i64* %38, !mcsema_real_eip !23
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -16
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_50 to i64, !mcsema_real_eip !24
  store i64 %39, i64* %XAX, !mcsema_real_eip !24
  %RCX_val.28 = load i64, i64* %XCX, !mcsema_real_eip !25
  %40 = inttoptr i64 %RCX_val.28 to i64*, !mcsema_real_eip !25
  store i64 %39, i64* %40, !mcsema_real_eip !25
  store i64 1, i64* %XDX, !mcsema_real_eip !26
  store i64 2, i64* %XSI, !mcsema_real_eip !27
  store i64 3, i64* %R8, !mcsema_real_eip !28
  %EDX.30 = bitcast i64* %XDX to i32*, !mcsema_real_eip !29
  %EDX_val.31 = load i32, i32* %EDX.30, !mcsema_real_eip !29
  %41 = zext i32 %EDX_val.31 to i64, !mcsema_real_eip !29
  store i64 %41, i64* %XDI, !mcsema_real_eip !29
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -76
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %ESI.33 = bitcast i64* %XSI to i32*, !mcsema_real_eip !30
  %ESI_val.34 = load i32, i32* %ESI.33, !mcsema_real_eip !30
  %42 = ptrtoint i64* %_allin_new_bt_53 to i64, !mcsema_real_eip !30
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !30
  store i32 %ESI_val.34, i32* %43, !mcsema_real_eip !30
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -80
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %EDX_val.37 = load i32, i32* %EDX.30, !mcsema_real_eip !31
  %44 = ptrtoint i64* %_allin_new_bt_56 to i64, !mcsema_real_eip !31
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !31
  store i32 %EDX_val.37, i32* %45, !mcsema_real_eip !31
  %R8D.38 = bitcast i64* %R8 to i32*, !mcsema_real_eip !32
  %R8D_val.39 = load i32, i32* %R8D.38, !mcsema_real_eip !32
  %46 = zext i32 %R8D_val.39 to i64, !mcsema_real_eip !32
  store i64 %46, i64* %XDX, !mcsema_real_eip !32
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -80
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_59 to i64, !mcsema_real_eip !33
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !33
  %49 = load i32, i32* %48, !mcsema_real_eip !33
  %50 = zext i32 %49 to i64, !mcsema_real_eip !33
  store i64 %50, i64* %XCX, !mcsema_real_eip !33
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -76
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %51 = ptrtoint i64* %_allin_new_bt_62 to i64, !mcsema_real_eip !34
  %52 = inttoptr i64 %51 to i32*, !mcsema_real_eip !34
  %53 = load i32, i32* %52, !mcsema_real_eip !34
  %54 = zext i32 %53 to i64, !mcsema_real_eip !34
  store i64 %54, i64* %R9, !mcsema_real_eip !34
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -84
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_65 to i64, !mcsema_real_eip !35
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !35
  store i32 %R8D_val.39, i32* %56, !mcsema_real_eip !35
  %R9D.45 = bitcast i64* %R9 to i32*, !mcsema_real_eip !36
  %R9D_val.46 = load i32, i32* %R9D.45, !mcsema_real_eip !36
  %57 = zext i32 %R9D_val.46 to i64, !mcsema_real_eip !36
  store i64 %57, i64* %R8, !mcsema_real_eip !36
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -84
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %58 = ptrtoint i64* %_allin_new_bt_68 to i64, !mcsema_real_eip !37
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !37
  %60 = load i32, i32* %59, !mcsema_real_eip !37
  %61 = zext i32 %60 to i64, !mcsema_real_eip !37
  store i64 %61, i64* %R9, !mcsema_real_eip !37
  %_load_rsp_ptr_69 = load i8*, i8** %_RSP_ptr_
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !38
  %_new_gep_70 = getelementptr i8, i8* %_load_rsp_ptr_69, i64 -8
  %62 = sub i64 %RSP_val.48, 8, !mcsema_real_eip !38
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_71, !mcsema_real_eip !38
  store volatile i8* %_new_gep_70, i8** %_RSP_ptr_
  store i64 %62, i64* %XSP, !mcsema_real_eip !38
  %_load_rbp_ptr_151 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_70, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_151)
  %_rsp_fix_153 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_154 = getelementptr i8, i8* %_rsp_fix_153, i64 8
  store i8* %_gep_fix_154, i8** %_RSP_ptr_
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -48
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %EDX_val.51 = load i32, i32* %EDX.30, !mcsema_real_eip !39
  %63 = ptrtoint i64* %_allin_new_bt_74 to i64, !mcsema_real_eip !39
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !39
  store i32 %EDX_val.51, i32* %64, !mcsema_real_eip !39
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -56
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %RAX_val.53 = load i64, i64* %XAX, !mcsema_real_eip !40
  store i64 %RAX_val.53, i64* %_allin_new_bt_77, !mcsema_real_eip !40
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -56
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %65 = load i64, i64* %_allin_new_bt_80, !mcsema_real_eip !41
  store i64 %65, i64* %XAX, !mcsema_real_eip !41
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -40
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 %65, i64* %_allin_new_bt_83, !mcsema_real_eip !42
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -48
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %66 = ptrtoint i64* %_allin_new_bt_86 to i64, !mcsema_real_eip !43
  %67 = inttoptr i64 %66 to i32*, !mcsema_real_eip !43
  %68 = load i32, i32* %67, !mcsema_real_eip !43
  %69 = zext i32 %68 to i64, !mcsema_real_eip !43
  store i64 %69, i64* %XCX, !mcsema_real_eip !43
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -32
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %ECX.59 = bitcast i64* %XCX to i32*, !mcsema_real_eip !44
  %ECX_val.60 = load i32, i32* %ECX.59, !mcsema_real_eip !44
  %70 = ptrtoint i64* %_allin_new_bt_89 to i64, !mcsema_real_eip !44
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !44
  store i32 %ECX_val.60, i32* %71, !mcsema_real_eip !44
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -40
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %72 = ptrtoint i64* %_allin_new_bt_92 to i64, !mcsema_real_eip !45
  %73 = inttoptr i64 %72 to i32*, !mcsema_real_eip !45
  %74 = load i32, i32* %73, !mcsema_real_eip !45
  %75 = zext i32 %74 to i64, !mcsema_real_eip !45
  store i64 %75, i64* %XCX, !mcsema_real_eip !45
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -36
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %76 = ptrtoint i64* %_allin_new_bt_95 to i64, !mcsema_real_eip !46
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !46
  %78 = load i32, i32* %77, !mcsema_real_eip !46
  %ECX_val.64 = load i32, i32* %ECX.59, !mcsema_real_eip !46
  %79 = add i32 %ECX_val.64, %78, !mcsema_real_eip !46
  %80 = xor i32 %79, %78, !mcsema_real_eip !46
  %81 = xor i32 %80, %ECX_val.64, !mcsema_real_eip !46
  %82 = and i32 %81, 16, !mcsema_real_eip !46
  %83 = icmp ne i32 %82, 0, !mcsema_real_eip !46
  store i1 %83, i1* %AF, !mcsema_real_eip !46
  %84 = lshr i32 %79, 31, !mcsema_real_eip !46
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !46
  store i1 %85, i1* %SF, !mcsema_real_eip !46
  %86 = icmp eq i32 %79, 0, !mcsema_real_eip !46
  store i1 %86, i1* %ZF, !mcsema_real_eip !46
  %87 = xor i32 %78, %ECX_val.64, !mcsema_real_eip !46
  %88 = xor i32 %87, -1, !mcsema_real_eip !46
  %89 = and i32 %88, %80, !mcsema_real_eip !46
  %90 = lshr i32 %89, 31, !mcsema_real_eip !46
  %91 = and i32 %90, 1, !mcsema_real_eip !46
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !46
  store i1 %92, i1* %OF, !mcsema_real_eip !46
  %93 = trunc i32 %79 to i8, !mcsema_real_eip !46
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !46
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !46
  %96 = xor i1 %95, true, !mcsema_real_eip !46
  store i1 %96, i1* %PF, !mcsema_real_eip !46
  %97 = icmp ult i32 %79, %78, !mcsema_real_eip !46
  store i1 %97, i1* %CF, !mcsema_real_eip !46
  %98 = zext i32 %79 to i64, !mcsema_real_eip !46
  store i64 %98, i64* %XCX, !mcsema_real_eip !46
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -32
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %99 = ptrtoint i64* %_allin_new_bt_98 to i64, !mcsema_real_eip !47
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !47
  %101 = load i32, i32* %100, !mcsema_real_eip !47
  %ECX_val.67 = load i32, i32* %ECX.59, !mcsema_real_eip !47
  %102 = add i32 %ECX_val.67, %101, !mcsema_real_eip !47
  %103 = xor i32 %102, %101, !mcsema_real_eip !47
  %104 = xor i32 %103, %ECX_val.67, !mcsema_real_eip !47
  %105 = and i32 %104, 16, !mcsema_real_eip !47
  %106 = icmp ne i32 %105, 0, !mcsema_real_eip !47
  store i1 %106, i1* %AF, !mcsema_real_eip !47
  %107 = lshr i32 %102, 31, !mcsema_real_eip !47
  %108 = trunc i32 %107 to i1, !mcsema_real_eip !47
  store i1 %108, i1* %SF, !mcsema_real_eip !47
  %109 = icmp eq i32 %102, 0, !mcsema_real_eip !47
  store i1 %109, i1* %ZF, !mcsema_real_eip !47
  %110 = xor i32 %101, %ECX_val.67, !mcsema_real_eip !47
  %111 = xor i32 %110, -1, !mcsema_real_eip !47
  %112 = and i32 %111, %103, !mcsema_real_eip !47
  %113 = lshr i32 %112, 31, !mcsema_real_eip !47
  %114 = and i32 %113, 1, !mcsema_real_eip !47
  %115 = trunc i32 %114 to i1, !mcsema_real_eip !47
  store i1 %115, i1* %OF, !mcsema_real_eip !47
  %116 = trunc i32 %102 to i8, !mcsema_real_eip !47
  %117 = call i8 @llvm.ctpop.i8(i8 %116), !mcsema_real_eip !47
  %118 = trunc i8 %117 to i1, !mcsema_real_eip !47
  %119 = xor i1 %118, true, !mcsema_real_eip !47
  store i1 %119, i1* %PF, !mcsema_real_eip !47
  %120 = icmp ult i32 %102, %101, !mcsema_real_eip !47
  store i1 %120, i1* %CF, !mcsema_real_eip !47
  %121 = zext i32 %102 to i64, !mcsema_real_eip !47
  store i64 %121, i64* %XCX, !mcsema_real_eip !47
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -60
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %ECX_val.70 = load i32, i32* %ECX.59, !mcsema_real_eip !48
  %122 = ptrtoint i64* %_allin_new_bt_101 to i64, !mcsema_real_eip !48
  %123 = inttoptr i64 %122 to i32*, !mcsema_real_eip !48
  store i32 %ECX_val.70, i32* %123, !mcsema_real_eip !48
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -60
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %124 = ptrtoint i64* %_allin_new_bt_104 to i64, !mcsema_real_eip !49
  %125 = inttoptr i64 %124 to i32*, !mcsema_real_eip !49
  %126 = load i32, i32* %125, !mcsema_real_eip !49
  %127 = zext i32 %126 to i64, !mcsema_real_eip !49
  store i64 %127, i64* %XSI, !mcsema_real_eip !49
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -72
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %128 = load i64, i64* %_allin_new_bt_107, !mcsema_real_eip !50
  store i64 %128, i64* %XDI, !mcsema_real_eip !50
  %AL.73 = bitcast i64* %XAX to i8*, !mcsema_real_eip !51
  store i8 0, i8* %AL.73, !mcsema_real_eip !51
  %RDX_val.76 = load i64, i64* %XDX, !mcsema_real_eip !52
  %RCX_val.77 = load i64, i64* %XCX, !mcsema_real_eip !52
  %R8_val.78 = load i64, i64* %R8, !mcsema_real_eip !52
  %R9_val.79 = load i64, i64* %R9, !mcsema_real_eip !52
  %_load_rsp_ptr_108 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_109 = bitcast i8* %_load_rsp_ptr_108 to i64*
  %129 = load i64, i64* %_allin_new_bt_109, !mcsema_real_eip !52
  %_new_gep_110 = getelementptr i8, i8* %_load_rsp_ptr_108, i64 8
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %130 = load i64, i64* %_allin_new_bt_111, !mcsema_real_eip !52
  %_new_gep_112 = getelementptr i8, i8* %_new_gep_110, i64 8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %131 = load i64, i64* %_allin_new_bt_113, !mcsema_real_eip !52
  %_new_gep_114 = getelementptr i8, i8* %_new_gep_112, i64 8
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %132 = load i64, i64* %_allin_new_bt_115, !mcsema_real_eip !52
  %_new_gep_116 = getelementptr i8, i8* %_new_gep_114, i64 8
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %133 = load i64, i64* %_allin_new_bt_117, !mcsema_real_eip !52
  %_new_gep_118 = getelementptr i8, i8* %_new_gep_116, i64 8
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %134 = load i64, i64* %_allin_new_bt_119, !mcsema_real_eip !52
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !52
  %_new_gep_121 = getelementptr i8, i8* %_load_rsp_ptr_108, i64 -8
  %135 = sub i64 %RSP_val.81, 8, !mcsema_real_eip !52
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_122, !mcsema_real_eip !52
  store volatile i8* %_new_gep_121, i8** %_RSP_ptr_
  store i64 %135, i64* %XSP, !mcsema_real_eip !52
  %136 = call x86_64_sysvcc i64 @_printf(i64 %128, i64 %127, i64 %RDX_val.76, i64 %RCX_val.77, i64 %R8_val.78, i64 %R9_val.79, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  %_rsp_fix_155 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_156 = getelementptr i8, i8* %_rsp_fix_155, i64 8
  store i8* %_gep_fix_156, i8** %_RSP_ptr_
  store i64 %136, i64* %XAX, !mcsema_real_eip !52
  %_load_rbp_ptr_123 = load i8*, i8** %_RBP_ptr_
  %_new_gep_124 = getelementptr i8, i8* %_load_rbp_ptr_123, i64 -60
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %137 = ptrtoint i64* %_allin_new_bt_125 to i64, !mcsema_real_eip !53
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !53
  %139 = load i32, i32* %138, !mcsema_real_eip !53
  %140 = zext i32 %139 to i64, !mcsema_real_eip !53
  store i64 %140, i64* %XCX, !mcsema_real_eip !53
  %_new_gep_127 = getelementptr i8, i8* %_load_rbp_ptr_123, i64 -88
  %_allin_new_bt_128 = bitcast i8* %_new_gep_127 to i64*
  %EAX_val.85 = load i32, i32* %EAX.8, !mcsema_real_eip !54
  %141 = ptrtoint i64* %_allin_new_bt_128 to i64, !mcsema_real_eip !54
  %142 = inttoptr i64 %141 to i32*, !mcsema_real_eip !54
  store i32 %EAX_val.85, i32* %142, !mcsema_real_eip !54
  %ECX_val.87 = load i32, i32* %ECX.59, !mcsema_real_eip !55
  %143 = zext i32 %ECX_val.87 to i64, !mcsema_real_eip !55
  store i64 %143, i64* %XAX, !mcsema_real_eip !55
  %_load_rsp_ptr_129 = load i8*, i8** %_RSP_ptr_
  %RSP_val.88 = load i64, i64* %XSP, !mcsema_real_eip !56
  %_new_gep_130 = getelementptr i8, i8* %_load_rsp_ptr_129, i64 112
  %144 = add i64 112, %RSP_val.88, !mcsema_real_eip !56
  %_trans_p2i_131 = ptrtoint i8* %_new_gep_130 to i64
  %_trans_p2i_132 = ptrtoint i8* %_load_rsp_ptr_129 to i64
  %_trans_xor_133 = xor i64 %_trans_p2i_131, %_trans_p2i_132
  %145 = xor i64 %_trans_xor_133, 112, !mcsema_real_eip !56
  %146 = and i64 %145, 16, !mcsema_real_eip !56
  %147 = icmp ne i64 %146, 0, !mcsema_real_eip !56
  store i1 %147, i1* %AF, !mcsema_real_eip !56
  %148 = lshr i64 %144, 63, !mcsema_real_eip !56
  %149 = trunc i64 %148 to i1, !mcsema_real_eip !56
  store i1 %149, i1* %SF, !mcsema_real_eip !56
  %_trans_icmp_eq_135 = icmp eq i64 %_trans_p2i_131, 0
  store i1 %_trans_icmp_eq_135, i1* %ZF, !mcsema_real_eip !56
  %_trans_xor_137 = xor i64 %_trans_p2i_132, 112
  %150 = xor i64 %_trans_xor_137, -1, !mcsema_real_eip !56
  %151 = and i64 %150, %_trans_xor_133, !mcsema_real_eip !56
  %152 = lshr i64 %151, 63, !mcsema_real_eip !56
  %153 = and i64 %152, 1, !mcsema_real_eip !56
  %154 = trunc i64 %153 to i1, !mcsema_real_eip !56
  store i1 %154, i1* %OF, !mcsema_real_eip !56
  %_trans_trunc_142 = trunc i64 %_trans_p2i_131 to i8
  %155 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_142), !mcsema_real_eip !56
  %156 = trunc i8 %155 to i1, !mcsema_real_eip !56
  %157 = xor i1 %156, true, !mcsema_real_eip !56
  store i1 %157, i1* %PF, !mcsema_real_eip !56
  %_trans_icmp_ne_144 = icmp ne i64 %_trans_p2i_131, %RSP_val.88
  store i1 %_trans_icmp_ne_144, i1* %CF, !mcsema_real_eip !56
  store volatile i8* %_new_gep_130, i8** %_RSP_ptr_
  store i64 %144, i64* %XSP, !mcsema_real_eip !56
  %_allin_new_bt_146 = bitcast i8* %_new_gep_130 to i64*
  %158 = load i64, i64* %_allin_new_bt_146, !mcsema_real_eip !57
  %_new_int2ptr_ = inttoptr i64 %158 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %158, i64* %XBP, !mcsema_real_eip !57
  %_new_gep_147 = getelementptr i8, i8* %_new_gep_130, i64 8
  %159 = add i64 %144, 8, !mcsema_real_eip !57
  store volatile i8* %_new_gep_147, i8** %_RSP_ptr_
  store i64 %159, i64* %XSP, !mcsema_real_eip !57
  %_new_gep_149 = getelementptr i8, i8* %_new_gep_147, i64 8
  %160 = add i64 %159, 8, !mcsema_real_eip !58
  %_allin_new_bt_150 = bitcast i8* %_new_gep_147 to i64*
  %161 = load i64, i64* %_allin_new_bt_150, !mcsema_real_eip !58
  store i64 %161, i64* %XIP, !mcsema_real_eip !58
  store volatile i8* %_new_gep_149, i8** %_RSP_ptr_
  store i64 %160, i64* %XSP, !mcsema_real_eip !58
  ret void, !mcsema_real_eip !58
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !59
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !59
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !59
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !59
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !59
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !59
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !59
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !59
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !59
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !59
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !59
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !59
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !59
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !59
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !59
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !59
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !59
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !59
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !59
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !59
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !59
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !59
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !59
  br label %block_0x0, !mcsema_real_eip !59

block_0x0:                                        ; preds = %entry
  %RBP_val.91 = load i64, i64* %XBP, !mcsema_real_eip !59
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !59
  %1 = sub i64 %RSP_val.92, 8, !mcsema_real_eip !59
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !59
  store i64 %RBP_val.91, i64* %2, !mcsema_real_eip !59
  store i64 %1, i64* %XSP, !mcsema_real_eip !59
  store i64 %1, i64* %XBP, !mcsema_real_eip !60
  %3 = add i64 %1, 24, !mcsema_real_eip !61
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !61
  %5 = load i64, i64* %4, !mcsema_real_eip !61
  store i64 %5, i64* %XAX, !mcsema_real_eip !61
  %6 = add i64 %1, 16, !mcsema_real_eip !62
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !62
  %8 = load i64, i64* %7, !mcsema_real_eip !62
  store i64 %8, i64* %R10, !mcsema_real_eip !62
  %9 = add i64 %1, -20, !mcsema_real_eip !63
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !63
  %EDI.97 = bitcast i64* %XDI to i32*, !mcsema_real_eip !63
  %EDI_val.98 = load i32, i32* %EDI.97, !mcsema_real_eip !63
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !63
  store i32 %EDI_val.98, i32* %11, !mcsema_real_eip !63
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !64
  %12 = add i64 %RBP_val.99, -24, !mcsema_real_eip !64
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !64
  %ESI.100 = bitcast i64* %XSI to i32*, !mcsema_real_eip !64
  %ESI_val.101 = load i32, i32* %ESI.100, !mcsema_real_eip !64
  %14 = inttoptr i64 %12 to i32*, !mcsema_real_eip !64
  store i32 %ESI_val.101, i32* %14, !mcsema_real_eip !64
  %RBP_val.102 = load i64, i64* %XBP, !mcsema_real_eip !65
  %15 = add i64 %RBP_val.102, -28, !mcsema_real_eip !65
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !65
  %EDX.103 = bitcast i64* %XDX to i32*, !mcsema_real_eip !65
  %EDX_val.104 = load i32, i32* %EDX.103, !mcsema_real_eip !65
  %17 = inttoptr i64 %15 to i32*, !mcsema_real_eip !65
  store i32 %EDX_val.104, i32* %17, !mcsema_real_eip !65
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !66
  %18 = add i64 %RBP_val.105, -32, !mcsema_real_eip !66
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !66
  %ECX.106 = bitcast i64* %XCX to i32*, !mcsema_real_eip !66
  %ECX_val.107 = load i32, i32* %ECX.106, !mcsema_real_eip !66
  %20 = inttoptr i64 %18 to i32*, !mcsema_real_eip !66
  store i32 %ECX_val.107, i32* %20, !mcsema_real_eip !66
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !67
  %21 = add i64 %RBP_val.108, -36, !mcsema_real_eip !67
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !67
  %R8D.109 = bitcast i64* %R8 to i32*, !mcsema_real_eip !67
  %R8D_val.110 = load i32, i32* %R8D.109, !mcsema_real_eip !67
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !67
  store i32 %R8D_val.110, i32* %23, !mcsema_real_eip !67
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !68
  %24 = add i64 %RBP_val.111, -40, !mcsema_real_eip !68
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !68
  %R9D.112 = bitcast i64* %R9 to i32*, !mcsema_real_eip !68
  %R9D_val.113 = load i32, i32* %R9D.112, !mcsema_real_eip !68
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !68
  store i32 %R9D_val.113, i32* %26, !mcsema_real_eip !68
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !69
  %27 = add i64 %RBP_val.114, -48, !mcsema_real_eip !69
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !69
  %R10_val.115 = load i64, i64* %R10, !mcsema_real_eip !69
  store i64 %R10_val.115, i64* %28, !mcsema_real_eip !69
  %RBP_val.116 = load i64, i64* %XBP, !mcsema_real_eip !70
  %29 = add i64 %RBP_val.116, -56, !mcsema_real_eip !70
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !70
  %RAX_val.117 = load i64, i64* %XAX, !mcsema_real_eip !70
  store i64 %RAX_val.117, i64* %30, !mcsema_real_eip !70
  %RBP_val.118 = load i64, i64* %XBP, !mcsema_real_eip !71
  %31 = add i64 %RBP_val.118, -48, !mcsema_real_eip !71
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !71
  %33 = load i64, i64* %32, !mcsema_real_eip !71
  store i64 %33, i64* %XAX, !mcsema_real_eip !71
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !72
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !72
  %36 = load i32, i32* %35, !mcsema_real_eip !72
  %37 = zext i32 %36 to i64, !mcsema_real_eip !72
  store i64 %37, i64* %XCX, !mcsema_real_eip !72
  %38 = add i64 %RBP_val.118, -56, !mcsema_real_eip !73
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !73
  %40 = load i64, i64* %39, !mcsema_real_eip !73
  store i64 %40, i64* %XAX, !mcsema_real_eip !73
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !74
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !74
  %43 = load i32, i32* %42, !mcsema_real_eip !74
  %44 = zext i32 %43 to i64, !mcsema_real_eip !74
  store i64 %44, i64* %XDX, !mcsema_real_eip !74
  %ECX_val.123 = load i32, i32* %ECX.106, !mcsema_real_eip !75
  %EDX_val.125 = load i32, i32* %EDX.103, !mcsema_real_eip !75
  %45 = add i32 %EDX_val.125, %ECX_val.123, !mcsema_real_eip !75
  %46 = xor i32 %45, %ECX_val.123, !mcsema_real_eip !75
  %47 = xor i32 %46, %EDX_val.125, !mcsema_real_eip !75
  %48 = and i32 %47, 16, !mcsema_real_eip !75
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !75
  store i1 %49, i1* %AF, !mcsema_real_eip !75
  %50 = lshr i32 %45, 31, !mcsema_real_eip !75
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !75
  store i1 %51, i1* %SF, !mcsema_real_eip !75
  %52 = icmp eq i32 %45, 0, !mcsema_real_eip !75
  store i1 %52, i1* %ZF, !mcsema_real_eip !75
  %53 = xor i32 %ECX_val.123, %EDX_val.125, !mcsema_real_eip !75
  %54 = xor i32 %53, -1, !mcsema_real_eip !75
  %55 = and i32 %54, %46, !mcsema_real_eip !75
  %56 = lshr i32 %55, 31, !mcsema_real_eip !75
  %57 = and i32 %56, 1, !mcsema_real_eip !75
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !75
  store i1 %58, i1* %OF, !mcsema_real_eip !75
  %59 = trunc i32 %45 to i8, !mcsema_real_eip !75
  %60 = call i8 @llvm.ctpop.i8(i8 %59), !mcsema_real_eip !75
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !75
  %62 = xor i1 %61, true, !mcsema_real_eip !75
  store i1 %62, i1* %PF, !mcsema_real_eip !75
  %63 = icmp ult i32 %45, %ECX_val.123, !mcsema_real_eip !75
  store i1 %63, i1* %CF, !mcsema_real_eip !75
  %64 = zext i32 %45 to i64, !mcsema_real_eip !75
  store i64 %64, i64* %XCX, !mcsema_real_eip !75
  %65 = add i64 %RBP_val.118, -72, !mcsema_real_eip !76
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !76
  %ECX_val.128 = load i32, i32* %ECX.106, !mcsema_real_eip !76
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !76
  store i32 %ECX_val.128, i32* %67, !mcsema_real_eip !76
  %RBP_val.129 = load i64, i64* %XBP, !mcsema_real_eip !77
  %68 = add i64 %RBP_val.129, -48, !mcsema_real_eip !77
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !77
  %70 = load i64, i64* %69, !mcsema_real_eip !77
  store i64 %70, i64* %XAX, !mcsema_real_eip !77
  %71 = add i64 %70, 4, !mcsema_real_eip !78
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !78
  %73 = inttoptr i64 %71 to i32*, !mcsema_real_eip !78
  %74 = load i32, i32* %73, !mcsema_real_eip !78
  %75 = zext i32 %74 to i64, !mcsema_real_eip !78
  store i64 %75, i64* %XCX, !mcsema_real_eip !78
  %76 = add i64 %RBP_val.129, -56, !mcsema_real_eip !79
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !79
  %78 = load i64, i64* %77, !mcsema_real_eip !79
  store i64 %78, i64* %XAX, !mcsema_real_eip !79
  %79 = add i64 %78, 4, !mcsema_real_eip !80
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !80
  %81 = inttoptr i64 %79 to i32*, !mcsema_real_eip !80
  %82 = load i32, i32* %81, !mcsema_real_eip !80
  %83 = zext i32 %82 to i64, !mcsema_real_eip !80
  store i64 %83, i64* %XDX, !mcsema_real_eip !80
  %ECX_val.134 = load i32, i32* %ECX.106, !mcsema_real_eip !81
  %EDX_val.136 = load i32, i32* %EDX.103, !mcsema_real_eip !81
  %84 = add i32 %EDX_val.136, %ECX_val.134, !mcsema_real_eip !81
  %85 = xor i32 %84, %ECX_val.134, !mcsema_real_eip !81
  %86 = xor i32 %85, %EDX_val.136, !mcsema_real_eip !81
  %87 = and i32 %86, 16, !mcsema_real_eip !81
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !81
  store i1 %88, i1* %AF, !mcsema_real_eip !81
  %89 = lshr i32 %84, 31, !mcsema_real_eip !81
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !81
  store i1 %90, i1* %SF, !mcsema_real_eip !81
  %91 = icmp eq i32 %84, 0, !mcsema_real_eip !81
  store i1 %91, i1* %ZF, !mcsema_real_eip !81
  %92 = xor i32 %ECX_val.134, %EDX_val.136, !mcsema_real_eip !81
  %93 = xor i32 %92, -1, !mcsema_real_eip !81
  %94 = and i32 %93, %85, !mcsema_real_eip !81
  %95 = lshr i32 %94, 31, !mcsema_real_eip !81
  %96 = and i32 %95, 1, !mcsema_real_eip !81
  %97 = trunc i32 %96 to i1, !mcsema_real_eip !81
  store i1 %97, i1* %OF, !mcsema_real_eip !81
  %98 = trunc i32 %84 to i8, !mcsema_real_eip !81
  %99 = call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !81
  %100 = trunc i8 %99 to i1, !mcsema_real_eip !81
  %101 = xor i1 %100, true, !mcsema_real_eip !81
  store i1 %101, i1* %PF, !mcsema_real_eip !81
  %102 = icmp ult i32 %84, %ECX_val.134, !mcsema_real_eip !81
  store i1 %102, i1* %CF, !mcsema_real_eip !81
  %103 = zext i32 %84 to i64, !mcsema_real_eip !81
  store i64 %103, i64* %XCX, !mcsema_real_eip !81
  %104 = add i64 %RBP_val.129, -68, !mcsema_real_eip !82
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !82
  %ECX_val.139 = load i32, i32* %ECX.106, !mcsema_real_eip !82
  %106 = inttoptr i64 %104 to i32*, !mcsema_real_eip !82
  store i32 %ECX_val.139, i32* %106, !mcsema_real_eip !82
  %RBP_val.140 = load i64, i64* %XBP, !mcsema_real_eip !83
  %107 = add i64 %RBP_val.140, -48, !mcsema_real_eip !83
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !83
  %109 = load i64, i64* %108, !mcsema_real_eip !83
  store i64 %109, i64* %XAX, !mcsema_real_eip !83
  %110 = add i64 %109, 8, !mcsema_real_eip !84
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !84
  %112 = inttoptr i64 %110 to i32*, !mcsema_real_eip !84
  %113 = load i32, i32* %112, !mcsema_real_eip !84
  %114 = zext i32 %113 to i64, !mcsema_real_eip !84
  store i64 %114, i64* %XCX, !mcsema_real_eip !84
  %115 = add i64 %RBP_val.140, -56, !mcsema_real_eip !85
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !85
  %117 = load i64, i64* %116, !mcsema_real_eip !85
  store i64 %117, i64* %XAX, !mcsema_real_eip !85
  %118 = add i64 %117, 8, !mcsema_real_eip !86
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !86
  %120 = inttoptr i64 %118 to i32*, !mcsema_real_eip !86
  %121 = load i32, i32* %120, !mcsema_real_eip !86
  %122 = zext i32 %121 to i64, !mcsema_real_eip !86
  store i64 %122, i64* %XDX, !mcsema_real_eip !86
  %ECX_val.145 = load i32, i32* %ECX.106, !mcsema_real_eip !87
  %EDX_val.147 = load i32, i32* %EDX.103, !mcsema_real_eip !87
  %123 = add i32 %EDX_val.147, %ECX_val.145, !mcsema_real_eip !87
  %124 = xor i32 %123, %ECX_val.145, !mcsema_real_eip !87
  %125 = xor i32 %124, %EDX_val.147, !mcsema_real_eip !87
  %126 = and i32 %125, 16, !mcsema_real_eip !87
  %127 = icmp ne i32 %126, 0, !mcsema_real_eip !87
  store i1 %127, i1* %AF, !mcsema_real_eip !87
  %128 = lshr i32 %123, 31, !mcsema_real_eip !87
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !87
  store i1 %129, i1* %SF, !mcsema_real_eip !87
  %130 = icmp eq i32 %123, 0, !mcsema_real_eip !87
  store i1 %130, i1* %ZF, !mcsema_real_eip !87
  %131 = xor i32 %ECX_val.145, %EDX_val.147, !mcsema_real_eip !87
  %132 = xor i32 %131, -1, !mcsema_real_eip !87
  %133 = and i32 %132, %124, !mcsema_real_eip !87
  %134 = lshr i32 %133, 31, !mcsema_real_eip !87
  %135 = and i32 %134, 1, !mcsema_real_eip !87
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !87
  store i1 %136, i1* %OF, !mcsema_real_eip !87
  %137 = trunc i32 %123 to i8, !mcsema_real_eip !87
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !87
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !87
  %140 = xor i1 %139, true, !mcsema_real_eip !87
  store i1 %140, i1* %PF, !mcsema_real_eip !87
  %141 = icmp ult i32 %123, %ECX_val.145, !mcsema_real_eip !87
  store i1 %141, i1* %CF, !mcsema_real_eip !87
  %142 = zext i32 %123 to i64, !mcsema_real_eip !87
  store i64 %142, i64* %XCX, !mcsema_real_eip !87
  %143 = add i64 %RBP_val.140, -64, !mcsema_real_eip !88
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !88
  %ECX_val.150 = load i32, i32* %ECX.106, !mcsema_real_eip !88
  %145 = inttoptr i64 %143 to i32*, !mcsema_real_eip !88
  store i32 %ECX_val.150, i32* %145, !mcsema_real_eip !88
  %RBP_val.151 = load i64, i64* %XBP, !mcsema_real_eip !89
  %146 = add i64 %RBP_val.151, -64, !mcsema_real_eip !89
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !89
  %148 = inttoptr i64 %146 to i32*, !mcsema_real_eip !89
  %149 = load i32, i32* %148, !mcsema_real_eip !89
  %150 = zext i32 %149 to i64, !mcsema_real_eip !89
  store i64 %150, i64* %XCX, !mcsema_real_eip !89
  %151 = add i64 %RBP_val.151, -8, !mcsema_real_eip !90
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !90
  %ECX_val.154 = load i32, i32* %ECX.106, !mcsema_real_eip !90
  %153 = inttoptr i64 %151 to i32*, !mcsema_real_eip !90
  store i32 %ECX_val.154, i32* %153, !mcsema_real_eip !90
  %RBP_val.155 = load i64, i64* %XBP, !mcsema_real_eip !91
  %154 = add i64 %RBP_val.155, -72, !mcsema_real_eip !91
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !91
  %156 = load i64, i64* %155, !mcsema_real_eip !91
  store i64 %156, i64* %XAX, !mcsema_real_eip !91
  %157 = add i64 %RBP_val.155, -16, !mcsema_real_eip !92
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !92
  store i64 %156, i64* %158, !mcsema_real_eip !92
  %RBP_val.158 = load i64, i64* %XBP, !mcsema_real_eip !93
  %159 = add i64 %RBP_val.158, -8, !mcsema_real_eip !93
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !93
  %161 = inttoptr i64 %159 to i32*, !mcsema_real_eip !93
  %162 = load i32, i32* %161, !mcsema_real_eip !93
  %163 = zext i32 %162 to i64, !mcsema_real_eip !93
  store i64 %163, i64* %XCX, !mcsema_real_eip !93
  %164 = add i64 %RBP_val.158, -80, !mcsema_real_eip !94
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !94
  %ECX_val.161 = load i32, i32* %ECX.106, !mcsema_real_eip !94
  %166 = inttoptr i64 %164 to i32*, !mcsema_real_eip !94
  store i32 %ECX_val.161, i32* %166, !mcsema_real_eip !94
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !95
  %167 = add i64 %RBP_val.162, -16, !mcsema_real_eip !95
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !95
  %169 = load i64, i64* %168, !mcsema_real_eip !95
  store i64 %169, i64* %XAX, !mcsema_real_eip !95
  %170 = add i64 %RBP_val.162, -88, !mcsema_real_eip !96
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !96
  store i64 %169, i64* %171, !mcsema_real_eip !96
  %RBP_val.165 = load i64, i64* %XBP, !mcsema_real_eip !97
  %172 = add i64 %RBP_val.165, -88, !mcsema_real_eip !97
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !97
  %174 = load i64, i64* %173, !mcsema_real_eip !97
  store i64 %174, i64* %XAX, !mcsema_real_eip !97
  %175 = add i64 %RBP_val.165, -80, !mcsema_real_eip !98
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !98
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !98
  %178 = load i32, i32* %177, !mcsema_real_eip !98
  %179 = zext i32 %178 to i64, !mcsema_real_eip !98
  store i64 %179, i64* %XDX, !mcsema_real_eip !98
  %RSP_val.167 = load i64, i64* %XSP, !mcsema_real_eip !99
  %180 = inttoptr i64 %RSP_val.167 to i64*, !mcsema_real_eip !99
  %181 = load i64, i64* %180, !mcsema_real_eip !99
  store i64 %181, i64* %XBP, !mcsema_real_eip !99
  %182 = add i64 %RSP_val.167, 8, !mcsema_real_eip !99
  store i64 %182, i64* %XSP, !mcsema_real_eip !99
  %183 = add i64 %182, 8, !mcsema_real_eip !100
  %184 = inttoptr i64 %182 to i64*, !mcsema_real_eip !100
  %185 = load i64, i64* %184, !mcsema_real_eip !100
  store i64 %185, i64* %XIP, !mcsema_real_eip !100
  store i64 %183, i64* %XSP, !mcsema_real_eip !100
  ret void, !mcsema_real_eip !100
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
define x86_64_sysvcc void @sub_90.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 128
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 128
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
  br label %block_0x90, !mcsema_real_eip !2

block_0x90:                                       ; preds = %entry
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -112
  %2 = sub i64 %RSP_val.3, 112, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 112, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 112
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 112
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x176 to i64), i64* %XDI, !mcsema_real_eip !5
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
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -72
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

; <label>:25:                                     ; preds = %block_0x90
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %26

; <label>:26:                                     ; preds = %block_0x90, %25
  %27 = phi i64* [ %_allin_new_bt_36, %block_0x90 ], [ %_address_in_parent_stack_bt_, %25 ]
  %_new_load_ = load i64, i64* %27
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !16
  %28 = inttoptr i64 %_new_load_ to i64*, !mcsema_real_eip !17
  %29 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !17
  store i32 5, i32* %29, !mcsema_real_eip !17
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_157 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_160 = sub i64 %_ptr_to_int_157, %_local_end_to_int_
  %_pot_address_in_parent_stack_161 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_160
  %_cond1_162 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_163 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_164 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_165 = or i1 %_cond2_1_163, %_cond2_2_164
  %_cond4_166 = icmp ule i8* %_pot_address_in_parent_stack_161, %_parent_stack_end_ptr_
  %_cond1_n_cond2_167 = and i1 %_cond1_162, %_cond2_165
  %_cond1_n_cond2_cond3_168 = and i1 %_cond1_n_cond2_167, %_cond4_166
  br i1 %_cond1_n_cond2_cond3_168, label %30, label %31

; <label>:30:                                     ; preds = %26
  %_address_in_parent_stack_bt_170 = bitcast i8* %_pot_address_in_parent_stack_161 to i64*
  br label %31

; <label>:31:                                     ; preds = %26, %30
  %32 = phi i64* [ %_allin_new_bt_39, %26 ], [ %_address_in_parent_stack_bt_170, %30 ]
  %_new_load_171 = load i64, i64* %32
  store i64 %_new_load_171, i64* %XAX, !mcsema_real_eip !18
  %33 = add i64 %_new_load_171, 4, !mcsema_real_eip !19
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !19
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !19
  store i32 5, i32* %35, !mcsema_real_eip !19
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_172 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_175 = sub i64 %_ptr_to_int_172, %_local_end_to_int_
  %_pot_address_in_parent_stack_176 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_175
  %_cond1_177 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_178 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_179 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_180 = or i1 %_cond2_1_178, %_cond2_2_179
  %_cond4_181 = icmp ule i8* %_pot_address_in_parent_stack_176, %_parent_stack_end_ptr_
  %_cond1_n_cond2_182 = and i1 %_cond1_177, %_cond2_180
  %_cond1_n_cond2_cond3_183 = and i1 %_cond1_n_cond2_182, %_cond4_181
  br i1 %_cond1_n_cond2_cond3_183, label %36, label %37

; <label>:36:                                     ; preds = %31
  %_address_in_parent_stack_bt_185 = bitcast i8* %_pot_address_in_parent_stack_176 to i64*
  br label %37

; <label>:37:                                     ; preds = %31, %36
  %38 = phi i64* [ %_allin_new_bt_42, %31 ], [ %_address_in_parent_stack_bt_185, %36 ]
  %_new_load_186 = load i64, i64* %38
  store i64 %_new_load_186, i64* %XAX, !mcsema_real_eip !20
  %39 = add i64 %_new_load_186, 8, !mcsema_real_eip !21
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !21
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !21
  store i32 5, i32* %41, !mcsema_real_eip !21
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_187 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_190 = sub i64 %_ptr_to_int_187, %_local_end_to_int_
  %_pot_address_in_parent_stack_191 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_190
  %_cond1_192 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_193 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_194 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_195 = or i1 %_cond2_1_193, %_cond2_2_194
  %_cond4_196 = icmp ule i8* %_pot_address_in_parent_stack_191, %_parent_stack_end_ptr_
  %_cond1_n_cond2_197 = and i1 %_cond1_192, %_cond2_195
  %_cond1_n_cond2_cond3_198 = and i1 %_cond1_n_cond2_197, %_cond4_196
  br i1 %_cond1_n_cond2_cond3_198, label %42, label %43

; <label>:42:                                     ; preds = %37
  %_address_in_parent_stack_bt_200 = bitcast i8* %_pot_address_in_parent_stack_191 to i64*
  br label %43

; <label>:43:                                     ; preds = %37, %42
  %44 = phi i64* [ %_allin_new_bt_45, %37 ], [ %_address_in_parent_stack_bt_200, %42 ]
  %_new_load_201 = load i64, i64* %44
  store i64 %_new_load_201, i64* %XAX, !mcsema_real_eip !22
  %_load_rsp_ptr_46 = load i8*, i8** %_RSP_ptr_
  %_new_ptr2int_47 = ptrtoint i8* %_load_rsp_ptr_46 to i64
  store volatile i64 %_new_ptr2int_47, i64* %XCX
  %45 = add i64 %_new_ptr2int_47, 8, !mcsema_real_eip !23
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !23
  %RAX_val.26 = load i64, i64* %XAX, !mcsema_real_eip !23
  store i64 %RAX_val.26, i64* %46, !mcsema_real_eip !23
  %_load_rbp_ptr_48 = load i8*, i8** %_RBP_ptr_
  %_new_gep_49 = getelementptr i8, i8* %_load_rbp_ptr_48, i64 -16
  %_allin_new_bt_50 = bitcast i8* %_new_gep_49 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_50 to i64, !mcsema_real_eip !24
  store i64 %47, i64* %XAX, !mcsema_real_eip !24
  %RCX_val.28 = load i64, i64* %XCX, !mcsema_real_eip !25
  %48 = inttoptr i64 %RCX_val.28 to i64*, !mcsema_real_eip !25
  store i64 %47, i64* %48, !mcsema_real_eip !25
  store i64 1, i64* %XDX, !mcsema_real_eip !26
  store i64 2, i64* %XSI, !mcsema_real_eip !27
  store i64 3, i64* %R8, !mcsema_real_eip !28
  %EDX.30 = bitcast i64* %XDX to i32*, !mcsema_real_eip !29
  %EDX_val.31 = load i32, i32* %EDX.30, !mcsema_real_eip !29
  %49 = zext i32 %EDX_val.31 to i64, !mcsema_real_eip !29
  store i64 %49, i64* %XDI, !mcsema_real_eip !29
  %_load_rbp_ptr_51 = load i8*, i8** %_RBP_ptr_
  %_new_gep_52 = getelementptr i8, i8* %_load_rbp_ptr_51, i64 -76
  %_allin_new_bt_53 = bitcast i8* %_new_gep_52 to i64*
  %ESI.33 = bitcast i64* %XSI to i32*, !mcsema_real_eip !30
  %ESI_val.34 = load i32, i32* %ESI.33, !mcsema_real_eip !30
  %50 = ptrtoint i64* %_allin_new_bt_53 to i64, !mcsema_real_eip !30
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !30
  store i32 %ESI_val.34, i32* %51, !mcsema_real_eip !30
  %_load_rbp_ptr_54 = load i8*, i8** %_RBP_ptr_
  %_new_gep_55 = getelementptr i8, i8* %_load_rbp_ptr_54, i64 -80
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %EDX_val.37 = load i32, i32* %EDX.30, !mcsema_real_eip !31
  %52 = ptrtoint i64* %_allin_new_bt_56 to i64, !mcsema_real_eip !31
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !31
  store i32 %EDX_val.37, i32* %53, !mcsema_real_eip !31
  %R8D.38 = bitcast i64* %R8 to i32*, !mcsema_real_eip !32
  %R8D_val.39 = load i32, i32* %R8D.38, !mcsema_real_eip !32
  %54 = zext i32 %R8D_val.39 to i64, !mcsema_real_eip !32
  store i64 %54, i64* %XDX, !mcsema_real_eip !32
  %_load_rbp_ptr_57 = load i8*, i8** %_RBP_ptr_
  %_new_gep_58 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -80
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_59 to i64, !mcsema_real_eip !33
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !33
  %_ptr_bt_204 = bitcast i32* %56 to i8*
  %_offset_above_rbp_205 = sub i64 %55, %_local_end_to_int_
  %_pot_address_in_parent_stack_206 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_cond1_207 = icmp ugt i8* %_ptr_bt_204, %_local_stack_end_ptr_
  %_cond2_1_208 = icmp ugt i8* %_ptr_bt_204, %_parent_stack_end_ptr_
  %_cond2_2_209 = icmp ult i8* %_ptr_bt_204, %_parent_stack_start_ptr_
  %_cond2_210 = or i1 %_cond2_1_208, %_cond2_2_209
  %_cond4_211 = icmp ule i8* %_pot_address_in_parent_stack_206, %_parent_stack_end_ptr_
  %_cond1_n_cond2_212 = and i1 %_cond1_207, %_cond2_210
  %_cond1_n_cond2_cond3_213 = and i1 %_cond1_n_cond2_212, %_cond4_211
  br i1 %_cond1_n_cond2_cond3_213, label %57, label %58

; <label>:57:                                     ; preds = %43
  %_address_in_parent_stack_bt_215 = bitcast i8* %_pot_address_in_parent_stack_206 to i32*
  br label %58

; <label>:58:                                     ; preds = %43, %57
  %59 = phi i32* [ %56, %43 ], [ %_address_in_parent_stack_bt_215, %57 ]
  %_new_load_216 = load i32, i32* %59
  %60 = zext i32 %_new_load_216 to i64, !mcsema_real_eip !33
  store i64 %60, i64* %XCX, !mcsema_real_eip !33
  %_new_gep_61 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -76
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %61 = ptrtoint i64* %_allin_new_bt_62 to i64, !mcsema_real_eip !34
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !34
  %_ptr_bt_219 = bitcast i32* %62 to i8*
  %_offset_above_rbp_220 = sub i64 %61, %_local_end_to_int_
  %_pot_address_in_parent_stack_221 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_cond1_222 = icmp ugt i8* %_ptr_bt_219, %_local_stack_end_ptr_
  %_cond2_1_223 = icmp ugt i8* %_ptr_bt_219, %_parent_stack_end_ptr_
  %_cond2_2_224 = icmp ult i8* %_ptr_bt_219, %_parent_stack_start_ptr_
  %_cond2_225 = or i1 %_cond2_1_223, %_cond2_2_224
  %_cond4_226 = icmp ule i8* %_pot_address_in_parent_stack_221, %_parent_stack_end_ptr_
  %_cond1_n_cond2_227 = and i1 %_cond1_222, %_cond2_225
  %_cond1_n_cond2_cond3_228 = and i1 %_cond1_n_cond2_227, %_cond4_226
  br i1 %_cond1_n_cond2_cond3_228, label %63, label %64

; <label>:63:                                     ; preds = %58
  %_address_in_parent_stack_bt_230 = bitcast i8* %_pot_address_in_parent_stack_221 to i32*
  br label %64

; <label>:64:                                     ; preds = %58, %63
  %65 = phi i32* [ %62, %58 ], [ %_address_in_parent_stack_bt_230, %63 ]
  %_new_load_231 = load i32, i32* %65
  %66 = zext i32 %_new_load_231 to i64, !mcsema_real_eip !34
  store i64 %66, i64* %R9, !mcsema_real_eip !34
  %_new_gep_64 = getelementptr i8, i8* %_load_rbp_ptr_57, i64 -84
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %67 = ptrtoint i64* %_allin_new_bt_65 to i64, !mcsema_real_eip !35
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !35
  store i32 %R8D_val.39, i32* %68, !mcsema_real_eip !35
  %R9D.45 = bitcast i64* %R9 to i32*, !mcsema_real_eip !36
  %R9D_val.46 = load i32, i32* %R9D.45, !mcsema_real_eip !36
  %69 = zext i32 %R9D_val.46 to i64, !mcsema_real_eip !36
  store i64 %69, i64* %R8, !mcsema_real_eip !36
  %_load_rbp_ptr_66 = load i8*, i8** %_RBP_ptr_
  %_new_gep_67 = getelementptr i8, i8* %_load_rbp_ptr_66, i64 -84
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %70 = ptrtoint i64* %_allin_new_bt_68 to i64, !mcsema_real_eip !37
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !37
  %_ptr_bt_234 = bitcast i32* %71 to i8*
  %_offset_above_rbp_235 = sub i64 %70, %_local_end_to_int_
  %_pot_address_in_parent_stack_236 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_235
  %_cond1_237 = icmp ugt i8* %_ptr_bt_234, %_local_stack_end_ptr_
  %_cond2_1_238 = icmp ugt i8* %_ptr_bt_234, %_parent_stack_end_ptr_
  %_cond2_2_239 = icmp ult i8* %_ptr_bt_234, %_parent_stack_start_ptr_
  %_cond2_240 = or i1 %_cond2_1_238, %_cond2_2_239
  %_cond4_241 = icmp ule i8* %_pot_address_in_parent_stack_236, %_parent_stack_end_ptr_
  %_cond1_n_cond2_242 = and i1 %_cond1_237, %_cond2_240
  %_cond1_n_cond2_cond3_243 = and i1 %_cond1_n_cond2_242, %_cond4_241
  br i1 %_cond1_n_cond2_cond3_243, label %72, label %73

; <label>:72:                                     ; preds = %64
  %_address_in_parent_stack_bt_245 = bitcast i8* %_pot_address_in_parent_stack_236 to i32*
  br label %73

; <label>:73:                                     ; preds = %64, %72
  %74 = phi i32* [ %71, %64 ], [ %_address_in_parent_stack_bt_245, %72 ]
  %_new_load_246 = load i32, i32* %74
  %75 = zext i32 %_new_load_246 to i64, !mcsema_real_eip !37
  store i64 %75, i64* %R9, !mcsema_real_eip !37
  %_load_rsp_ptr_69 = load i8*, i8** %_RSP_ptr_
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !38
  %_new_gep_70 = getelementptr i8, i8* %_load_rsp_ptr_69, i64 -8
  %76 = sub i64 %RSP_val.48, 8, !mcsema_real_eip !38
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_71, !mcsema_real_eip !38
  store volatile i8* %_new_gep_70, i8** %_RSP_ptr_
  store i64 %76, i64* %XSP, !mcsema_real_eip !38
  %_load_rbp_ptr_151 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_70, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_151)
  %_rsp_fix_153 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_154 = getelementptr i8, i8* %_rsp_fix_153, i64 8
  store i8* %_gep_fix_154, i8** %_RSP_ptr_
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -48
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %EDX_val.51 = load i32, i32* %EDX.30, !mcsema_real_eip !39
  %77 = ptrtoint i64* %_allin_new_bt_74 to i64, !mcsema_real_eip !39
  %78 = inttoptr i64 %77 to i32*, !mcsema_real_eip !39
  store i32 %EDX_val.51, i32* %78, !mcsema_real_eip !39
  %_load_rbp_ptr_75 = load i8*, i8** %_RBP_ptr_
  %_new_gep_76 = getelementptr i8, i8* %_load_rbp_ptr_75, i64 -56
  %_allin_new_bt_77 = bitcast i8* %_new_gep_76 to i64*
  %RAX_val.53 = load i64, i64* %XAX, !mcsema_real_eip !40
  store i64 %RAX_val.53, i64* %_allin_new_bt_77, !mcsema_real_eip !40
  %_load_rbp_ptr_78 = load i8*, i8** %_RBP_ptr_
  %_new_gep_79 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -56
  %_allin_new_bt_80 = bitcast i8* %_new_gep_79 to i64*
  %_ptr_to_int_247 = ptrtoint i64* %_allin_new_bt_80 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %_local_end_to_int_
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_79, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_79, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_79, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  br i1 %_cond1_n_cond2_cond3_258, label %79, label %80

; <label>:79:                                     ; preds = %73
  %_address_in_parent_stack_bt_260 = bitcast i8* %_pot_address_in_parent_stack_251 to i64*
  br label %80

; <label>:80:                                     ; preds = %73, %79
  %81 = phi i64* [ %_allin_new_bt_80, %73 ], [ %_address_in_parent_stack_bt_260, %79 ]
  %_new_load_261 = load i64, i64* %81
  store i64 %_new_load_261, i64* %XAX, !mcsema_real_eip !41
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_78, i64 -40
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  store i64 %_new_load_261, i64* %_allin_new_bt_83, !mcsema_real_eip !42
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -48
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %82 = ptrtoint i64* %_allin_new_bt_86 to i64, !mcsema_real_eip !43
  %83 = inttoptr i64 %82 to i32*, !mcsema_real_eip !43
  %_ptr_bt_264 = bitcast i32* %83 to i8*
  %_offset_above_rbp_265 = sub i64 %82, %_local_end_to_int_
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %_ptr_bt_264, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %_ptr_bt_264, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %_ptr_bt_264, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond1_n_cond2_272, %_cond4_271
  br i1 %_cond1_n_cond2_cond3_273, label %84, label %85

; <label>:84:                                     ; preds = %80
  %_address_in_parent_stack_bt_275 = bitcast i8* %_pot_address_in_parent_stack_266 to i32*
  br label %85

; <label>:85:                                     ; preds = %80, %84
  %86 = phi i32* [ %83, %80 ], [ %_address_in_parent_stack_bt_275, %84 ]
  %_new_load_276 = load i32, i32* %86
  %87 = zext i32 %_new_load_276 to i64, !mcsema_real_eip !43
  store i64 %87, i64* %XCX, !mcsema_real_eip !43
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -32
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %ECX.59 = bitcast i64* %XCX to i32*, !mcsema_real_eip !44
  %ECX_val.60 = load i32, i32* %ECX.59, !mcsema_real_eip !44
  %88 = ptrtoint i64* %_allin_new_bt_89 to i64, !mcsema_real_eip !44
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !44
  store i32 %ECX_val.60, i32* %89, !mcsema_real_eip !44
  %_load_rbp_ptr_90 = load i8*, i8** %_RBP_ptr_
  %_new_gep_91 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -40
  %_allin_new_bt_92 = bitcast i8* %_new_gep_91 to i64*
  %90 = ptrtoint i64* %_allin_new_bt_92 to i64, !mcsema_real_eip !45
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !45
  %_ptr_bt_279 = bitcast i32* %91 to i8*
  %_offset_above_rbp_280 = sub i64 %90, %_local_end_to_int_
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_ptr_bt_279, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_ptr_bt_279, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_ptr_bt_279, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  br i1 %_cond1_n_cond2_cond3_288, label %92, label %93

; <label>:92:                                     ; preds = %85
  %_address_in_parent_stack_bt_290 = bitcast i8* %_pot_address_in_parent_stack_281 to i32*
  br label %93

; <label>:93:                                     ; preds = %85, %92
  %94 = phi i32* [ %91, %85 ], [ %_address_in_parent_stack_bt_290, %92 ]
  %_new_load_291 = load i32, i32* %94
  %95 = zext i32 %_new_load_291 to i64, !mcsema_real_eip !45
  store i64 %95, i64* %XCX, !mcsema_real_eip !45
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -36
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %96 = ptrtoint i64* %_allin_new_bt_95 to i64, !mcsema_real_eip !46
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !46
  %_ptr_bt_294 = bitcast i32* %97 to i8*
  %_offset_above_rbp_295 = sub i64 %96, %_local_end_to_int_
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_ptr_bt_294, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_ptr_bt_294, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_ptr_bt_294, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  br i1 %_cond1_n_cond2_cond3_303, label %98, label %99

; <label>:98:                                     ; preds = %93
  %_address_in_parent_stack_bt_305 = bitcast i8* %_pot_address_in_parent_stack_296 to i32*
  br label %99

; <label>:99:                                     ; preds = %93, %98
  %100 = phi i32* [ %97, %93 ], [ %_address_in_parent_stack_bt_305, %98 ]
  %_new_load_306 = load i32, i32* %100
  %ECX_val.64 = load i32, i32* %ECX.59, !mcsema_real_eip !46
  %101 = add i32 %ECX_val.64, %_new_load_306, !mcsema_real_eip !46
  %102 = xor i32 %101, %_new_load_306, !mcsema_real_eip !46
  %103 = xor i32 %102, %ECX_val.64, !mcsema_real_eip !46
  %104 = and i32 %103, 16, !mcsema_real_eip !46
  %105 = icmp ne i32 %104, 0, !mcsema_real_eip !46
  store i1 %105, i1* %AF, !mcsema_real_eip !46
  %106 = lshr i32 %101, 31, !mcsema_real_eip !46
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !46
  store i1 %107, i1* %SF, !mcsema_real_eip !46
  %108 = icmp eq i32 %101, 0, !mcsema_real_eip !46
  store i1 %108, i1* %ZF, !mcsema_real_eip !46
  %109 = xor i32 %_new_load_306, %ECX_val.64, !mcsema_real_eip !46
  %110 = xor i32 %109, -1, !mcsema_real_eip !46
  %111 = and i32 %110, %102, !mcsema_real_eip !46
  %112 = lshr i32 %111, 31, !mcsema_real_eip !46
  %113 = and i32 %112, 1, !mcsema_real_eip !46
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !46
  store i1 %114, i1* %OF, !mcsema_real_eip !46
  %115 = trunc i32 %101 to i8, !mcsema_real_eip !46
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !46
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !46
  %118 = xor i1 %117, true, !mcsema_real_eip !46
  store i1 %118, i1* %PF, !mcsema_real_eip !46
  %119 = icmp ult i32 %101, %_new_load_306, !mcsema_real_eip !46
  store i1 %119, i1* %CF, !mcsema_real_eip !46
  %120 = zext i32 %101 to i64, !mcsema_real_eip !46
  store i64 %120, i64* %XCX, !mcsema_real_eip !46
  %_new_gep_97 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -32
  %_allin_new_bt_98 = bitcast i8* %_new_gep_97 to i64*
  %121 = ptrtoint i64* %_allin_new_bt_98 to i64, !mcsema_real_eip !47
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !47
  %_ptr_bt_309 = bitcast i32* %122 to i8*
  %_offset_above_rbp_310 = sub i64 %121, %_local_end_to_int_
  %_pot_address_in_parent_stack_311 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_310
  %_cond1_312 = icmp ugt i8* %_ptr_bt_309, %_local_stack_end_ptr_
  %_cond2_1_313 = icmp ugt i8* %_ptr_bt_309, %_parent_stack_end_ptr_
  %_cond2_2_314 = icmp ult i8* %_ptr_bt_309, %_parent_stack_start_ptr_
  %_cond2_315 = or i1 %_cond2_1_313, %_cond2_2_314
  %_cond4_316 = icmp ule i8* %_pot_address_in_parent_stack_311, %_parent_stack_end_ptr_
  %_cond1_n_cond2_317 = and i1 %_cond1_312, %_cond2_315
  %_cond1_n_cond2_cond3_318 = and i1 %_cond1_n_cond2_317, %_cond4_316
  br i1 %_cond1_n_cond2_cond3_318, label %123, label %124

; <label>:123:                                    ; preds = %99
  %_address_in_parent_stack_bt_320 = bitcast i8* %_pot_address_in_parent_stack_311 to i32*
  br label %124

; <label>:124:                                    ; preds = %99, %123
  %125 = phi i32* [ %122, %99 ], [ %_address_in_parent_stack_bt_320, %123 ]
  %_new_load_321 = load i32, i32* %125
  %ECX_val.67 = load i32, i32* %ECX.59, !mcsema_real_eip !47
  %126 = add i32 %ECX_val.67, %_new_load_321, !mcsema_real_eip !47
  %127 = xor i32 %126, %_new_load_321, !mcsema_real_eip !47
  %128 = xor i32 %127, %ECX_val.67, !mcsema_real_eip !47
  %129 = and i32 %128, 16, !mcsema_real_eip !47
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !47
  store i1 %130, i1* %AF, !mcsema_real_eip !47
  %131 = lshr i32 %126, 31, !mcsema_real_eip !47
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !47
  store i1 %132, i1* %SF, !mcsema_real_eip !47
  %133 = icmp eq i32 %126, 0, !mcsema_real_eip !47
  store i1 %133, i1* %ZF, !mcsema_real_eip !47
  %134 = xor i32 %_new_load_321, %ECX_val.67, !mcsema_real_eip !47
  %135 = xor i32 %134, -1, !mcsema_real_eip !47
  %136 = and i32 %135, %127, !mcsema_real_eip !47
  %137 = lshr i32 %136, 31, !mcsema_real_eip !47
  %138 = and i32 %137, 1, !mcsema_real_eip !47
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !47
  store i1 %139, i1* %OF, !mcsema_real_eip !47
  %140 = trunc i32 %126 to i8, !mcsema_real_eip !47
  %141 = call i8 @llvm.ctpop.i8(i8 %140), !mcsema_real_eip !47
  %142 = trunc i8 %141 to i1, !mcsema_real_eip !47
  %143 = xor i1 %142, true, !mcsema_real_eip !47
  store i1 %143, i1* %PF, !mcsema_real_eip !47
  %144 = icmp ult i32 %126, %_new_load_321, !mcsema_real_eip !47
  store i1 %144, i1* %CF, !mcsema_real_eip !47
  %145 = zext i32 %126 to i64, !mcsema_real_eip !47
  store i64 %145, i64* %XCX, !mcsema_real_eip !47
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_90, i64 -60
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %ECX_val.70 = load i32, i32* %ECX.59, !mcsema_real_eip !48
  %146 = ptrtoint i64* %_allin_new_bt_101 to i64, !mcsema_real_eip !48
  %147 = inttoptr i64 %146 to i32*, !mcsema_real_eip !48
  store i32 %ECX_val.70, i32* %147, !mcsema_real_eip !48
  %_load_rbp_ptr_102 = load i8*, i8** %_RBP_ptr_
  %_new_gep_103 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -60
  %_allin_new_bt_104 = bitcast i8* %_new_gep_103 to i64*
  %148 = ptrtoint i64* %_allin_new_bt_104 to i64, !mcsema_real_eip !49
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !49
  %_ptr_bt_324 = bitcast i32* %149 to i8*
  %_offset_above_rbp_325 = sub i64 %148, %_local_end_to_int_
  %_pot_address_in_parent_stack_326 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_325
  %_cond1_327 = icmp ugt i8* %_ptr_bt_324, %_local_stack_end_ptr_
  %_cond2_1_328 = icmp ugt i8* %_ptr_bt_324, %_parent_stack_end_ptr_
  %_cond2_2_329 = icmp ult i8* %_ptr_bt_324, %_parent_stack_start_ptr_
  %_cond2_330 = or i1 %_cond2_1_328, %_cond2_2_329
  %_cond4_331 = icmp ule i8* %_pot_address_in_parent_stack_326, %_parent_stack_end_ptr_
  %_cond1_n_cond2_332 = and i1 %_cond1_327, %_cond2_330
  %_cond1_n_cond2_cond3_333 = and i1 %_cond1_n_cond2_332, %_cond4_331
  br i1 %_cond1_n_cond2_cond3_333, label %150, label %151

; <label>:150:                                    ; preds = %124
  %_address_in_parent_stack_bt_335 = bitcast i8* %_pot_address_in_parent_stack_326 to i32*
  br label %151

; <label>:151:                                    ; preds = %124, %150
  %152 = phi i32* [ %149, %124 ], [ %_address_in_parent_stack_bt_335, %150 ]
  %_new_load_336 = load i32, i32* %152
  %153 = zext i32 %_new_load_336 to i64, !mcsema_real_eip !49
  store i64 %153, i64* %XSI, !mcsema_real_eip !49
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_102, i64 -72
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %_ptr_to_int_337 = ptrtoint i64* %_allin_new_bt_107 to i64
  %_offset_above_rbp_340 = sub i64 %_ptr_to_int_337, %_local_end_to_int_
  %_pot_address_in_parent_stack_341 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_340
  %_cond1_342 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_343 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_344 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_345 = or i1 %_cond2_1_343, %_cond2_2_344
  %_cond4_346 = icmp ule i8* %_pot_address_in_parent_stack_341, %_parent_stack_end_ptr_
  %_cond1_n_cond2_347 = and i1 %_cond1_342, %_cond2_345
  %_cond1_n_cond2_cond3_348 = and i1 %_cond1_n_cond2_347, %_cond4_346
  br i1 %_cond1_n_cond2_cond3_348, label %154, label %155

; <label>:154:                                    ; preds = %151
  %_address_in_parent_stack_bt_350 = bitcast i8* %_pot_address_in_parent_stack_341 to i64*
  br label %155

; <label>:155:                                    ; preds = %151, %154
  %156 = phi i64* [ %_allin_new_bt_107, %151 ], [ %_address_in_parent_stack_bt_350, %154 ]
  %_new_load_351 = load i64, i64* %156
  store i64 %_new_load_351, i64* %XDI, !mcsema_real_eip !50
  %AL.73 = bitcast i64* %XAX to i8*, !mcsema_real_eip !51
  store i8 0, i8* %AL.73, !mcsema_real_eip !51
  %RDX_val.76 = load i64, i64* %XDX, !mcsema_real_eip !52
  %RCX_val.77 = load i64, i64* %XCX, !mcsema_real_eip !52
  %R8_val.78 = load i64, i64* %R8, !mcsema_real_eip !52
  %R9_val.79 = load i64, i64* %R9, !mcsema_real_eip !52
  %_load_rsp_ptr_108 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_109 = bitcast i8* %_load_rsp_ptr_108 to i64*
  %_ptr_to_int_352 = ptrtoint i64* %_allin_new_bt_109 to i64
  %_offset_above_rbp_355 = sub i64 %_ptr_to_int_352, %_local_end_to_int_
  %_pot_address_in_parent_stack_356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_355
  %_cond1_357 = icmp ugt i8* %_load_rsp_ptr_108, %_local_stack_end_ptr_
  %_cond2_1_358 = icmp ugt i8* %_load_rsp_ptr_108, %_parent_stack_end_ptr_
  %_cond2_2_359 = icmp ult i8* %_load_rsp_ptr_108, %_parent_stack_start_ptr_
  %_cond2_360 = or i1 %_cond2_1_358, %_cond2_2_359
  %_cond4_361 = icmp ule i8* %_pot_address_in_parent_stack_356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_362 = and i1 %_cond1_357, %_cond2_360
  %_cond1_n_cond2_cond3_363 = and i1 %_cond1_n_cond2_362, %_cond4_361
  br i1 %_cond1_n_cond2_cond3_363, label %157, label %158

; <label>:157:                                    ; preds = %155
  %_address_in_parent_stack_bt_365 = bitcast i8* %_pot_address_in_parent_stack_356 to i64*
  br label %158

; <label>:158:                                    ; preds = %155, %157
  %159 = phi i64* [ %_allin_new_bt_109, %155 ], [ %_address_in_parent_stack_bt_365, %157 ]
  %_new_load_366 = load i64, i64* %159
  %_new_gep_110 = getelementptr i8, i8* %_load_rsp_ptr_108, i64 8
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
  br i1 %_cond1_n_cond2_cond3_378, label %160, label %161

; <label>:160:                                    ; preds = %158
  %_address_in_parent_stack_bt_380 = bitcast i8* %_pot_address_in_parent_stack_371 to i64*
  br label %161

; <label>:161:                                    ; preds = %158, %160
  %162 = phi i64* [ %_allin_new_bt_111, %158 ], [ %_address_in_parent_stack_bt_380, %160 ]
  %_new_load_381 = load i64, i64* %162
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
  br i1 %_cond1_n_cond2_cond3_393, label %163, label %164

; <label>:163:                                    ; preds = %161
  %_address_in_parent_stack_bt_395 = bitcast i8* %_pot_address_in_parent_stack_386 to i64*
  br label %164

; <label>:164:                                    ; preds = %161, %163
  %165 = phi i64* [ %_allin_new_bt_113, %161 ], [ %_address_in_parent_stack_bt_395, %163 ]
  %_new_load_396 = load i64, i64* %165
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
  br i1 %_cond1_n_cond2_cond3_408, label %166, label %167

; <label>:166:                                    ; preds = %164
  %_address_in_parent_stack_bt_410 = bitcast i8* %_pot_address_in_parent_stack_401 to i64*
  br label %167

; <label>:167:                                    ; preds = %164, %166
  %168 = phi i64* [ %_allin_new_bt_115, %164 ], [ %_address_in_parent_stack_bt_410, %166 ]
  %_new_load_411 = load i64, i64* %168
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
  br i1 %_cond1_n_cond2_cond3_423, label %169, label %170

; <label>:169:                                    ; preds = %167
  %_address_in_parent_stack_bt_425 = bitcast i8* %_pot_address_in_parent_stack_416 to i64*
  br label %170

; <label>:170:                                    ; preds = %167, %169
  %171 = phi i64* [ %_allin_new_bt_117, %167 ], [ %_address_in_parent_stack_bt_425, %169 ]
  %_new_load_426 = load i64, i64* %171
  %_new_gep_118 = getelementptr i8, i8* %_new_gep_116, i64 8
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  %_ptr_to_int_427 = ptrtoint i64* %_allin_new_bt_119 to i64
  %_offset_above_rbp_430 = sub i64 %_ptr_to_int_427, %_local_end_to_int_
  %_pot_address_in_parent_stack_431 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_430
  %_cond1_432 = icmp ugt i8* %_new_gep_118, %_local_stack_end_ptr_
  %_cond2_1_433 = icmp ugt i8* %_new_gep_118, %_parent_stack_end_ptr_
  %_cond2_2_434 = icmp ult i8* %_new_gep_118, %_parent_stack_start_ptr_
  %_cond2_435 = or i1 %_cond2_1_433, %_cond2_2_434
  %_cond4_436 = icmp ule i8* %_pot_address_in_parent_stack_431, %_parent_stack_end_ptr_
  %_cond1_n_cond2_437 = and i1 %_cond1_432, %_cond2_435
  %_cond1_n_cond2_cond3_438 = and i1 %_cond1_n_cond2_437, %_cond4_436
  br i1 %_cond1_n_cond2_cond3_438, label %172, label %173

; <label>:172:                                    ; preds = %170
  %_address_in_parent_stack_bt_440 = bitcast i8* %_pot_address_in_parent_stack_431 to i64*
  br label %173

; <label>:173:                                    ; preds = %170, %172
  %174 = phi i64* [ %_allin_new_bt_119, %170 ], [ %_address_in_parent_stack_bt_440, %172 ]
  %_new_load_441 = load i64, i64* %174
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !52
  %_new_gep_121 = getelementptr i8, i8* %_load_rsp_ptr_108, i64 -8
  %175 = sub i64 %RSP_val.81, 8, !mcsema_real_eip !52
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_122, !mcsema_real_eip !52
  store volatile i8* %_new_gep_121, i8** %_RSP_ptr_
  store i64 %175, i64* %XSP, !mcsema_real_eip !52
  %176 = call x86_64_sysvcc i64 @_printf(i64 %_new_load_351, i64 %153, i64 %RDX_val.76, i64 %RCX_val.77, i64 %R8_val.78, i64 %R9_val.79, i64 %_new_load_366, i64 %_new_load_381, i64 %_new_load_396, i64 %_new_load_411, i64 %_new_load_426, i64 %_new_load_441)
  %_rsp_fix_155 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_156 = getelementptr i8, i8* %_rsp_fix_155, i64 8
  store i8* %_gep_fix_156, i8** %_RSP_ptr_
  store i64 %176, i64* %XAX, !mcsema_real_eip !52
  %_load_rbp_ptr_123 = load i8*, i8** %_RBP_ptr_
  %_new_gep_124 = getelementptr i8, i8* %_load_rbp_ptr_123, i64 -60
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %177 = ptrtoint i64* %_allin_new_bt_125 to i64, !mcsema_real_eip !53
  %178 = inttoptr i64 %177 to i32*, !mcsema_real_eip !53
  %_ptr_bt_444 = bitcast i32* %178 to i8*
  %_offset_above_rbp_445 = sub i64 %177, %_local_end_to_int_
  %_pot_address_in_parent_stack_446 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_445
  %_cond1_447 = icmp ugt i8* %_ptr_bt_444, %_local_stack_end_ptr_
  %_cond2_1_448 = icmp ugt i8* %_ptr_bt_444, %_parent_stack_end_ptr_
  %_cond2_2_449 = icmp ult i8* %_ptr_bt_444, %_parent_stack_start_ptr_
  %_cond2_450 = or i1 %_cond2_1_448, %_cond2_2_449
  %_cond4_451 = icmp ule i8* %_pot_address_in_parent_stack_446, %_parent_stack_end_ptr_
  %_cond1_n_cond2_452 = and i1 %_cond1_447, %_cond2_450
  %_cond1_n_cond2_cond3_453 = and i1 %_cond1_n_cond2_452, %_cond4_451
  br i1 %_cond1_n_cond2_cond3_453, label %179, label %180

; <label>:179:                                    ; preds = %173
  %_address_in_parent_stack_bt_455 = bitcast i8* %_pot_address_in_parent_stack_446 to i32*
  br label %180

; <label>:180:                                    ; preds = %173, %179
  %181 = phi i32* [ %178, %173 ], [ %_address_in_parent_stack_bt_455, %179 ]
  %_new_load_456 = load i32, i32* %181
  %182 = zext i32 %_new_load_456 to i64, !mcsema_real_eip !53
  store i64 %182, i64* %XCX, !mcsema_real_eip !53
  %_new_gep_127 = getelementptr i8, i8* %_load_rbp_ptr_123, i64 -88
  %_allin_new_bt_128 = bitcast i8* %_new_gep_127 to i64*
  %EAX_val.85 = load i32, i32* %EAX.8, !mcsema_real_eip !54
  %183 = ptrtoint i64* %_allin_new_bt_128 to i64, !mcsema_real_eip !54
  %184 = inttoptr i64 %183 to i32*, !mcsema_real_eip !54
  store i32 %EAX_val.85, i32* %184, !mcsema_real_eip !54
  %ECX_val.87 = load i32, i32* %ECX.59, !mcsema_real_eip !55
  %185 = zext i32 %ECX_val.87 to i64, !mcsema_real_eip !55
  store i64 %185, i64* %XAX, !mcsema_real_eip !55
  %_load_rsp_ptr_129 = load i8*, i8** %_RSP_ptr_
  %RSP_val.88 = load i64, i64* %XSP, !mcsema_real_eip !56
  %_new_gep_130 = getelementptr i8, i8* %_load_rsp_ptr_129, i64 112
  %186 = add i64 112, %RSP_val.88, !mcsema_real_eip !56
  %_trans_p2i_131 = ptrtoint i8* %_new_gep_130 to i64
  %_trans_p2i_132 = ptrtoint i8* %_load_rsp_ptr_129 to i64
  %_trans_xor_133 = xor i64 %_trans_p2i_131, %_trans_p2i_132
  %187 = xor i64 %_trans_xor_133, 112, !mcsema_real_eip !56
  %188 = and i64 %187, 16, !mcsema_real_eip !56
  %189 = icmp ne i64 %188, 0, !mcsema_real_eip !56
  store i1 %189, i1* %AF, !mcsema_real_eip !56
  %190 = lshr i64 %186, 63, !mcsema_real_eip !56
  %191 = trunc i64 %190 to i1, !mcsema_real_eip !56
  store i1 %191, i1* %SF, !mcsema_real_eip !56
  %_trans_icmp_eq_135 = icmp eq i64 %_trans_p2i_131, 0
  store i1 %_trans_icmp_eq_135, i1* %ZF, !mcsema_real_eip !56
  %_trans_xor_137 = xor i64 %_trans_p2i_132, 112
  %192 = xor i64 %_trans_xor_137, -1, !mcsema_real_eip !56
  %193 = and i64 %192, %_trans_xor_133, !mcsema_real_eip !56
  %194 = lshr i64 %193, 63, !mcsema_real_eip !56
  %195 = and i64 %194, 1, !mcsema_real_eip !56
  %196 = trunc i64 %195 to i1, !mcsema_real_eip !56
  store i1 %196, i1* %OF, !mcsema_real_eip !56
  %_trans_trunc_142 = trunc i64 %_trans_p2i_131 to i8
  %197 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_142), !mcsema_real_eip !56
  %198 = trunc i8 %197 to i1, !mcsema_real_eip !56
  %199 = xor i1 %198, true, !mcsema_real_eip !56
  store i1 %199, i1* %PF, !mcsema_real_eip !56
  %_trans_icmp_ne_144 = icmp ne i64 %_trans_p2i_131, %RSP_val.88
  store i1 %_trans_icmp_ne_144, i1* %CF, !mcsema_real_eip !56
  store volatile i8* %_new_gep_130, i8** %_RSP_ptr_
  store i64 %186, i64* %XSP, !mcsema_real_eip !56
  %_allin_new_bt_146 = bitcast i8* %_new_gep_130 to i64*
  %_ptr_to_int_457 = ptrtoint i64* %_allin_new_bt_146 to i64
  %_offset_above_rbp_460 = sub i64 %_ptr_to_int_457, %_local_end_to_int_
  %_pot_address_in_parent_stack_461 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_460
  %_cond1_462 = icmp ugt i8* %_new_gep_130, %_local_stack_end_ptr_
  %_cond2_1_463 = icmp ugt i8* %_new_gep_130, %_parent_stack_end_ptr_
  %_cond2_2_464 = icmp ult i8* %_new_gep_130, %_parent_stack_start_ptr_
  %_cond2_465 = or i1 %_cond2_1_463, %_cond2_2_464
  %_cond4_466 = icmp ule i8* %_pot_address_in_parent_stack_461, %_parent_stack_end_ptr_
  %_cond1_n_cond2_467 = and i1 %_cond1_462, %_cond2_465
  %_cond1_n_cond2_cond3_468 = and i1 %_cond1_n_cond2_467, %_cond4_466
  br i1 %_cond1_n_cond2_cond3_468, label %200, label %201

; <label>:200:                                    ; preds = %180
  %_address_in_parent_stack_bt_470 = bitcast i8* %_pot_address_in_parent_stack_461 to i64*
  br label %201

; <label>:201:                                    ; preds = %180, %200
  %202 = phi i64* [ %_allin_new_bt_146, %180 ], [ %_address_in_parent_stack_bt_470, %200 ]
  %_new_load_471 = load i64, i64* %202
  %_new_int2ptr_ = inttoptr i64 %_new_load_471 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_471, i64* %XBP, !mcsema_real_eip !57
  %_new_gep_147 = getelementptr i8, i8* %_new_gep_130, i64 8
  %203 = add i64 %186, 8, !mcsema_real_eip !57
  store volatile i8* %_new_gep_147, i8** %_RSP_ptr_
  store i64 %203, i64* %XSP, !mcsema_real_eip !57
  %_new_gep_149 = getelementptr i8, i8* %_new_gep_147, i64 8
  %204 = add i64 %203, 8, !mcsema_real_eip !58
  %_allin_new_bt_150 = bitcast i8* %_new_gep_147 to i64*
  %_ptr_to_int_472 = ptrtoint i64* %_allin_new_bt_150 to i64
  %_offset_above_rbp_475 = sub i64 %_ptr_to_int_472, %_local_end_to_int_
  %_pot_address_in_parent_stack_476 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_475
  %_cond1_477 = icmp ugt i8* %_new_gep_147, %_local_stack_end_ptr_
  %_cond2_1_478 = icmp ugt i8* %_new_gep_147, %_parent_stack_end_ptr_
  %_cond2_2_479 = icmp ult i8* %_new_gep_147, %_parent_stack_start_ptr_
  %_cond2_480 = or i1 %_cond2_1_478, %_cond2_2_479
  %_cond4_481 = icmp ule i8* %_pot_address_in_parent_stack_476, %_parent_stack_end_ptr_
  %_cond1_n_cond2_482 = and i1 %_cond1_477, %_cond2_480
  %_cond1_n_cond2_cond3_483 = and i1 %_cond1_n_cond2_482, %_cond4_481
  br i1 %_cond1_n_cond2_cond3_483, label %205, label %206

; <label>:205:                                    ; preds = %201
  %_address_in_parent_stack_bt_485 = bitcast i8* %_pot_address_in_parent_stack_476 to i64*
  br label %206

; <label>:206:                                    ; preds = %201, %205
  %207 = phi i64* [ %_allin_new_bt_150, %201 ], [ %_address_in_parent_stack_bt_485, %205 ]
  %_new_load_486 = load i64, i64* %207
  store i64 %_new_load_486, i64* %XIP, !mcsema_real_eip !58
  store volatile i8* %_new_gep_149, i8** %_RSP_ptr_
  store i64 %204, i64* %XSP, !mcsema_real_eip !58
  ret void, !mcsema_real_eip !58
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !59
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !59
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !59
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !59
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !59
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !59
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !59
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !59
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !59
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !59
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !59
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !59
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !59
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !59
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !59
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !59
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !59
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !59
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !59
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !59
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !59
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !59
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !59
  br label %block_0x0, !mcsema_real_eip !59

block_0x0:                                        ; preds = %entry
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !59
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.92, 8, !mcsema_real_eip !59
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !59
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !60
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 24
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_4 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_3, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_3, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_3, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %2, label %3

; <label>:2:                                      ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %3

; <label>:3:                                      ; preds = %block_0x0, %2
  %4 = phi i64* [ %_allin_new_bt_4, %block_0x0 ], [ %_address_in_parent_stack_bt_, %2 ]
  %_new_load_ = load i64, i64* %4
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !61
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_, i64 16
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %_ptr_to_int_95 = ptrtoint i64* %_allin_new_bt_7 to i64
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_95, %_local_end_to_int_
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  br i1 %_cond1_n_cond2_cond3_106, label %5, label %6

; <label>:5:                                      ; preds = %3
  %_address_in_parent_stack_bt_108 = bitcast i8* %_pot_address_in_parent_stack_99 to i64*
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = phi i64* [ %_allin_new_bt_7, %3 ], [ %_address_in_parent_stack_bt_108, %5 ]
  %_new_load_109 = load i64, i64* %7
  store i64 %_new_load_109, i64* %R10, !mcsema_real_eip !62
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_, i64 -20
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %EDI.97 = bitcast i64* %XDI to i32*, !mcsema_real_eip !63
  %EDI_val.98 = load i32, i32* %EDI.97, !mcsema_real_eip !63
  %8 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !63
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !63
  store i32 %EDI_val.98, i32* %9, !mcsema_real_eip !63
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %ESI.100 = bitcast i64* %XSI to i32*, !mcsema_real_eip !64
  %ESI_val.101 = load i32, i32* %ESI.100, !mcsema_real_eip !64
  %10 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !64
  %11 = inttoptr i64 %10 to i32*, !mcsema_real_eip !64
  store i32 %ESI_val.101, i32* %11, !mcsema_real_eip !64
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -28
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %EDX.103 = bitcast i64* %XDX to i32*, !mcsema_real_eip !65
  %EDX_val.104 = load i32, i32* %EDX.103, !mcsema_real_eip !65
  %12 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !65
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !65
  store i32 %EDX_val.104, i32* %13, !mcsema_real_eip !65
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -32
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %ECX.106 = bitcast i64* %XCX to i32*, !mcsema_real_eip !66
  %ECX_val.107 = load i32, i32* %ECX.106, !mcsema_real_eip !66
  %14 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !66
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !66
  store i32 %ECX_val.107, i32* %15, !mcsema_real_eip !66
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -36
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %R8D.109 = bitcast i64* %R8 to i32*, !mcsema_real_eip !67
  %R8D_val.110 = load i32, i32* %R8D.109, !mcsema_real_eip !67
  %16 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !67
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !67
  store i32 %R8D_val.110, i32* %17, !mcsema_real_eip !67
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -40
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %R9D.112 = bitcast i64* %R9 to i32*, !mcsema_real_eip !68
  %R9D_val.113 = load i32, i32* %R9D.112, !mcsema_real_eip !68
  %18 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !68
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !68
  store i32 %R9D_val.113, i32* %19, !mcsema_real_eip !68
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -48
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %R10_val.115 = load i64, i64* %R10, !mcsema_real_eip !69
  store i64 %R10_val.115, i64* %_allin_new_bt_28, !mcsema_real_eip !69
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -56
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %RAX_val.117 = load i64, i64* %XAX, !mcsema_real_eip !70
  store i64 %RAX_val.117, i64* %_allin_new_bt_31, !mcsema_real_eip !70
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -48
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_110 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_113 = sub i64 %_ptr_to_int_110, %_local_end_to_int_
  %_pot_address_in_parent_stack_114 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_113
  %_cond1_115 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_116 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_117 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_118 = or i1 %_cond2_1_116, %_cond2_2_117
  %_cond4_119 = icmp ule i8* %_pot_address_in_parent_stack_114, %_parent_stack_end_ptr_
  %_cond1_n_cond2_120 = and i1 %_cond1_115, %_cond2_118
  %_cond1_n_cond2_cond3_121 = and i1 %_cond1_n_cond2_120, %_cond4_119
  br i1 %_cond1_n_cond2_cond3_121, label %20, label %21

; <label>:20:                                     ; preds = %6
  %_address_in_parent_stack_bt_123 = bitcast i8* %_pot_address_in_parent_stack_114 to i64*
  br label %21

; <label>:21:                                     ; preds = %6, %20
  %22 = phi i64* [ %_allin_new_bt_34, %6 ], [ %_address_in_parent_stack_bt_123, %20 ]
  %_new_load_124 = load i64, i64* %22
  store i64 %_new_load_124, i64* %XAX, !mcsema_real_eip !71
  %23 = inttoptr i64 %_new_load_124 to i64*, !mcsema_real_eip !72
  %24 = inttoptr i64 %_new_load_124 to i32*, !mcsema_real_eip !72
  %_ptr_bt_127 = bitcast i32* %24 to i8*
  %_offset_above_rbp_128 = sub i64 %_new_load_124, %_local_end_to_int_
  %_pot_address_in_parent_stack_129 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_128
  %_cond1_130 = icmp ugt i8* %_ptr_bt_127, %_local_stack_end_ptr_
  %_cond2_1_131 = icmp ugt i8* %_ptr_bt_127, %_parent_stack_end_ptr_
  %_cond2_2_132 = icmp ult i8* %_ptr_bt_127, %_parent_stack_start_ptr_
  %_cond2_133 = or i1 %_cond2_1_131, %_cond2_2_132
  %_cond4_134 = icmp ule i8* %_pot_address_in_parent_stack_129, %_parent_stack_end_ptr_
  %_cond1_n_cond2_135 = and i1 %_cond1_130, %_cond2_133
  %_cond1_n_cond2_cond3_136 = and i1 %_cond1_n_cond2_135, %_cond4_134
  br i1 %_cond1_n_cond2_cond3_136, label %25, label %26

; <label>:25:                                     ; preds = %21
  %_address_in_parent_stack_bt_138 = bitcast i8* %_pot_address_in_parent_stack_129 to i32*
  br label %26

; <label>:26:                                     ; preds = %21, %25
  %27 = phi i32* [ %24, %21 ], [ %_address_in_parent_stack_bt_138, %25 ]
  %_new_load_139 = load i32, i32* %27
  %28 = zext i32 %_new_load_139 to i64, !mcsema_real_eip !72
  store i64 %28, i64* %XCX, !mcsema_real_eip !72
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -56
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %_ptr_to_int_140 = ptrtoint i64* %_allin_new_bt_37 to i64
  %_offset_above_rbp_143 = sub i64 %_ptr_to_int_140, %_local_end_to_int_
  %_pot_address_in_parent_stack_144 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_143
  %_cond1_145 = icmp ugt i8* %_new_gep_36, %_local_stack_end_ptr_
  %_cond2_1_146 = icmp ugt i8* %_new_gep_36, %_parent_stack_end_ptr_
  %_cond2_2_147 = icmp ult i8* %_new_gep_36, %_parent_stack_start_ptr_
  %_cond2_148 = or i1 %_cond2_1_146, %_cond2_2_147
  %_cond4_149 = icmp ule i8* %_pot_address_in_parent_stack_144, %_parent_stack_end_ptr_
  %_cond1_n_cond2_150 = and i1 %_cond1_145, %_cond2_148
  %_cond1_n_cond2_cond3_151 = and i1 %_cond1_n_cond2_150, %_cond4_149
  br i1 %_cond1_n_cond2_cond3_151, label %29, label %30

; <label>:29:                                     ; preds = %26
  %_address_in_parent_stack_bt_153 = bitcast i8* %_pot_address_in_parent_stack_144 to i64*
  br label %30

; <label>:30:                                     ; preds = %26, %29
  %31 = phi i64* [ %_allin_new_bt_37, %26 ], [ %_address_in_parent_stack_bt_153, %29 ]
  %_new_load_154 = load i64, i64* %31
  store i64 %_new_load_154, i64* %XAX, !mcsema_real_eip !73
  %32 = inttoptr i64 %_new_load_154 to i64*, !mcsema_real_eip !74
  %33 = inttoptr i64 %_new_load_154 to i32*, !mcsema_real_eip !74
  %_ptr_bt_157 = bitcast i32* %33 to i8*
  %_offset_above_rbp_158 = sub i64 %_new_load_154, %_local_end_to_int_
  %_pot_address_in_parent_stack_159 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_158
  %_cond1_160 = icmp ugt i8* %_ptr_bt_157, %_local_stack_end_ptr_
  %_cond2_1_161 = icmp ugt i8* %_ptr_bt_157, %_parent_stack_end_ptr_
  %_cond2_2_162 = icmp ult i8* %_ptr_bt_157, %_parent_stack_start_ptr_
  %_cond2_163 = or i1 %_cond2_1_161, %_cond2_2_162
  %_cond4_164 = icmp ule i8* %_pot_address_in_parent_stack_159, %_parent_stack_end_ptr_
  %_cond1_n_cond2_165 = and i1 %_cond1_160, %_cond2_163
  %_cond1_n_cond2_cond3_166 = and i1 %_cond1_n_cond2_165, %_cond4_164
  br i1 %_cond1_n_cond2_cond3_166, label %34, label %35

; <label>:34:                                     ; preds = %30
  %_address_in_parent_stack_bt_168 = bitcast i8* %_pot_address_in_parent_stack_159 to i32*
  br label %35

; <label>:35:                                     ; preds = %30, %34
  %36 = phi i32* [ %33, %30 ], [ %_address_in_parent_stack_bt_168, %34 ]
  %_new_load_169 = load i32, i32* %36
  %37 = zext i32 %_new_load_169 to i64, !mcsema_real_eip !74
  store i64 %37, i64* %XDX, !mcsema_real_eip !74
  %ECX_val.123 = load i32, i32* %ECX.106, !mcsema_real_eip !75
  %EDX_val.125 = load i32, i32* %EDX.103, !mcsema_real_eip !75
  %38 = add i32 %EDX_val.125, %ECX_val.123, !mcsema_real_eip !75
  %39 = xor i32 %38, %ECX_val.123, !mcsema_real_eip !75
  %40 = xor i32 %39, %EDX_val.125, !mcsema_real_eip !75
  %41 = and i32 %40, 16, !mcsema_real_eip !75
  %42 = icmp ne i32 %41, 0, !mcsema_real_eip !75
  store i1 %42, i1* %AF, !mcsema_real_eip !75
  %43 = lshr i32 %38, 31, !mcsema_real_eip !75
  %44 = trunc i32 %43 to i1, !mcsema_real_eip !75
  store i1 %44, i1* %SF, !mcsema_real_eip !75
  %45 = icmp eq i32 %38, 0, !mcsema_real_eip !75
  store i1 %45, i1* %ZF, !mcsema_real_eip !75
  %46 = xor i32 %ECX_val.123, %EDX_val.125, !mcsema_real_eip !75
  %47 = xor i32 %46, -1, !mcsema_real_eip !75
  %48 = and i32 %47, %39, !mcsema_real_eip !75
  %49 = lshr i32 %48, 31, !mcsema_real_eip !75
  %50 = and i32 %49, 1, !mcsema_real_eip !75
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !75
  store i1 %51, i1* %OF, !mcsema_real_eip !75
  %52 = trunc i32 %38 to i8, !mcsema_real_eip !75
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !75
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !75
  %55 = xor i1 %54, true, !mcsema_real_eip !75
  store i1 %55, i1* %PF, !mcsema_real_eip !75
  %56 = icmp ult i32 %38, %ECX_val.123, !mcsema_real_eip !75
  store i1 %56, i1* %CF, !mcsema_real_eip !75
  %57 = zext i32 %38 to i64, !mcsema_real_eip !75
  store i64 %57, i64* %XCX, !mcsema_real_eip !75
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -72
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %ECX_val.128 = load i32, i32* %ECX.106, !mcsema_real_eip !76
  %58 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !76
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !76
  store i32 %ECX_val.128, i32* %59, !mcsema_real_eip !76
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -48
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %_ptr_to_int_170 = ptrtoint i64* %_allin_new_bt_43 to i64
  %_offset_above_rbp_173 = sub i64 %_ptr_to_int_170, %_local_end_to_int_
  %_pot_address_in_parent_stack_174 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_173
  %_cond1_175 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_176 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_177 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_178 = or i1 %_cond2_1_176, %_cond2_2_177
  %_cond4_179 = icmp ule i8* %_pot_address_in_parent_stack_174, %_parent_stack_end_ptr_
  %_cond1_n_cond2_180 = and i1 %_cond1_175, %_cond2_178
  %_cond1_n_cond2_cond3_181 = and i1 %_cond1_n_cond2_180, %_cond4_179
  br i1 %_cond1_n_cond2_cond3_181, label %60, label %61

; <label>:60:                                     ; preds = %35
  %_address_in_parent_stack_bt_183 = bitcast i8* %_pot_address_in_parent_stack_174 to i64*
  br label %61

; <label>:61:                                     ; preds = %35, %60
  %62 = phi i64* [ %_allin_new_bt_43, %35 ], [ %_address_in_parent_stack_bt_183, %60 ]
  %_new_load_184 = load i64, i64* %62
  store i64 %_new_load_184, i64* %XAX, !mcsema_real_eip !77
  %63 = add i64 %_new_load_184, 4, !mcsema_real_eip !78
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !78
  %65 = inttoptr i64 %63 to i32*, !mcsema_real_eip !78
  %_ptr_bt_187 = bitcast i32* %65 to i8*
  %_offset_above_rbp_188 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_189 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_188
  %_cond1_190 = icmp ugt i8* %_ptr_bt_187, %_local_stack_end_ptr_
  %_cond2_1_191 = icmp ugt i8* %_ptr_bt_187, %_parent_stack_end_ptr_
  %_cond2_2_192 = icmp ult i8* %_ptr_bt_187, %_parent_stack_start_ptr_
  %_cond2_193 = or i1 %_cond2_1_191, %_cond2_2_192
  %_cond4_194 = icmp ule i8* %_pot_address_in_parent_stack_189, %_parent_stack_end_ptr_
  %_cond1_n_cond2_195 = and i1 %_cond1_190, %_cond2_193
  %_cond1_n_cond2_cond3_196 = and i1 %_cond1_n_cond2_195, %_cond4_194
  br i1 %_cond1_n_cond2_cond3_196, label %66, label %67

; <label>:66:                                     ; preds = %61
  %_address_in_parent_stack_bt_198 = bitcast i8* %_pot_address_in_parent_stack_189 to i32*
  br label %67

; <label>:67:                                     ; preds = %61, %66
  %68 = phi i32* [ %65, %61 ], [ %_address_in_parent_stack_bt_198, %66 ]
  %_new_load_199 = load i32, i32* %68
  %69 = zext i32 %_new_load_199 to i64, !mcsema_real_eip !78
  store i64 %69, i64* %XCX, !mcsema_real_eip !78
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -56
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %_ptr_to_int_200 = ptrtoint i64* %_allin_new_bt_46 to i64
  %_offset_above_rbp_203 = sub i64 %_ptr_to_int_200, %_local_end_to_int_
  %_pot_address_in_parent_stack_204 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_203
  %_cond1_205 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_206 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_207 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_208 = or i1 %_cond2_1_206, %_cond2_2_207
  %_cond4_209 = icmp ule i8* %_pot_address_in_parent_stack_204, %_parent_stack_end_ptr_
  %_cond1_n_cond2_210 = and i1 %_cond1_205, %_cond2_208
  %_cond1_n_cond2_cond3_211 = and i1 %_cond1_n_cond2_210, %_cond4_209
  br i1 %_cond1_n_cond2_cond3_211, label %70, label %71

; <label>:70:                                     ; preds = %67
  %_address_in_parent_stack_bt_213 = bitcast i8* %_pot_address_in_parent_stack_204 to i64*
  br label %71

; <label>:71:                                     ; preds = %67, %70
  %72 = phi i64* [ %_allin_new_bt_46, %67 ], [ %_address_in_parent_stack_bt_213, %70 ]
  %_new_load_214 = load i64, i64* %72
  store i64 %_new_load_214, i64* %XAX, !mcsema_real_eip !79
  %73 = add i64 %_new_load_214, 4, !mcsema_real_eip !80
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !80
  %75 = inttoptr i64 %73 to i32*, !mcsema_real_eip !80
  %_ptr_bt_217 = bitcast i32* %75 to i8*
  %_offset_above_rbp_218 = sub i64 %73, %_local_end_to_int_
  %_pot_address_in_parent_stack_219 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_218
  %_cond1_220 = icmp ugt i8* %_ptr_bt_217, %_local_stack_end_ptr_
  %_cond2_1_221 = icmp ugt i8* %_ptr_bt_217, %_parent_stack_end_ptr_
  %_cond2_2_222 = icmp ult i8* %_ptr_bt_217, %_parent_stack_start_ptr_
  %_cond2_223 = or i1 %_cond2_1_221, %_cond2_2_222
  %_cond4_224 = icmp ule i8* %_pot_address_in_parent_stack_219, %_parent_stack_end_ptr_
  %_cond1_n_cond2_225 = and i1 %_cond1_220, %_cond2_223
  %_cond1_n_cond2_cond3_226 = and i1 %_cond1_n_cond2_225, %_cond4_224
  br i1 %_cond1_n_cond2_cond3_226, label %76, label %77

; <label>:76:                                     ; preds = %71
  %_address_in_parent_stack_bt_228 = bitcast i8* %_pot_address_in_parent_stack_219 to i32*
  br label %77

; <label>:77:                                     ; preds = %71, %76
  %78 = phi i32* [ %75, %71 ], [ %_address_in_parent_stack_bt_228, %76 ]
  %_new_load_229 = load i32, i32* %78
  %79 = zext i32 %_new_load_229 to i64, !mcsema_real_eip !80
  store i64 %79, i64* %XDX, !mcsema_real_eip !80
  %ECX_val.134 = load i32, i32* %ECX.106, !mcsema_real_eip !81
  %EDX_val.136 = load i32, i32* %EDX.103, !mcsema_real_eip !81
  %80 = add i32 %EDX_val.136, %ECX_val.134, !mcsema_real_eip !81
  %81 = xor i32 %80, %ECX_val.134, !mcsema_real_eip !81
  %82 = xor i32 %81, %EDX_val.136, !mcsema_real_eip !81
  %83 = and i32 %82, 16, !mcsema_real_eip !81
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !81
  store i1 %84, i1* %AF, !mcsema_real_eip !81
  %85 = lshr i32 %80, 31, !mcsema_real_eip !81
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !81
  store i1 %86, i1* %SF, !mcsema_real_eip !81
  %87 = icmp eq i32 %80, 0, !mcsema_real_eip !81
  store i1 %87, i1* %ZF, !mcsema_real_eip !81
  %88 = xor i32 %ECX_val.134, %EDX_val.136, !mcsema_real_eip !81
  %89 = xor i32 %88, -1, !mcsema_real_eip !81
  %90 = and i32 %89, %81, !mcsema_real_eip !81
  %91 = lshr i32 %90, 31, !mcsema_real_eip !81
  %92 = and i32 %91, 1, !mcsema_real_eip !81
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !81
  store i1 %93, i1* %OF, !mcsema_real_eip !81
  %94 = trunc i32 %80 to i8, !mcsema_real_eip !81
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !81
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !81
  %97 = xor i1 %96, true, !mcsema_real_eip !81
  store i1 %97, i1* %PF, !mcsema_real_eip !81
  %98 = icmp ult i32 %80, %ECX_val.134, !mcsema_real_eip !81
  store i1 %98, i1* %CF, !mcsema_real_eip !81
  %99 = zext i32 %80 to i64, !mcsema_real_eip !81
  store i64 %99, i64* %XCX, !mcsema_real_eip !81
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -68
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %ECX_val.139 = load i32, i32* %ECX.106, !mcsema_real_eip !82
  %100 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !82
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !82
  store i32 %ECX_val.139, i32* %101, !mcsema_real_eip !82
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -48
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %_ptr_to_int_230 = ptrtoint i64* %_allin_new_bt_52 to i64
  %_offset_above_rbp_233 = sub i64 %_ptr_to_int_230, %_local_end_to_int_
  %_pot_address_in_parent_stack_234 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_233
  %_cond1_235 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_236 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_237 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_238 = or i1 %_cond2_1_236, %_cond2_2_237
  %_cond4_239 = icmp ule i8* %_pot_address_in_parent_stack_234, %_parent_stack_end_ptr_
  %_cond1_n_cond2_240 = and i1 %_cond1_235, %_cond2_238
  %_cond1_n_cond2_cond3_241 = and i1 %_cond1_n_cond2_240, %_cond4_239
  br i1 %_cond1_n_cond2_cond3_241, label %102, label %103

; <label>:102:                                    ; preds = %77
  %_address_in_parent_stack_bt_243 = bitcast i8* %_pot_address_in_parent_stack_234 to i64*
  br label %103

; <label>:103:                                    ; preds = %77, %102
  %104 = phi i64* [ %_allin_new_bt_52, %77 ], [ %_address_in_parent_stack_bt_243, %102 ]
  %_new_load_244 = load i64, i64* %104
  store i64 %_new_load_244, i64* %XAX, !mcsema_real_eip !83
  %105 = add i64 %_new_load_244, 8, !mcsema_real_eip !84
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !84
  %107 = inttoptr i64 %105 to i32*, !mcsema_real_eip !84
  %_ptr_bt_247 = bitcast i32* %107 to i8*
  %_offset_above_rbp_248 = sub i64 %105, %_local_end_to_int_
  %_pot_address_in_parent_stack_249 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_248
  %_cond1_250 = icmp ugt i8* %_ptr_bt_247, %_local_stack_end_ptr_
  %_cond2_1_251 = icmp ugt i8* %_ptr_bt_247, %_parent_stack_end_ptr_
  %_cond2_2_252 = icmp ult i8* %_ptr_bt_247, %_parent_stack_start_ptr_
  %_cond2_253 = or i1 %_cond2_1_251, %_cond2_2_252
  %_cond4_254 = icmp ule i8* %_pot_address_in_parent_stack_249, %_parent_stack_end_ptr_
  %_cond1_n_cond2_255 = and i1 %_cond1_250, %_cond2_253
  %_cond1_n_cond2_cond3_256 = and i1 %_cond1_n_cond2_255, %_cond4_254
  br i1 %_cond1_n_cond2_cond3_256, label %108, label %109

; <label>:108:                                    ; preds = %103
  %_address_in_parent_stack_bt_258 = bitcast i8* %_pot_address_in_parent_stack_249 to i32*
  br label %109

; <label>:109:                                    ; preds = %103, %108
  %110 = phi i32* [ %107, %103 ], [ %_address_in_parent_stack_bt_258, %108 ]
  %_new_load_259 = load i32, i32* %110
  %111 = zext i32 %_new_load_259 to i64, !mcsema_real_eip !84
  store i64 %111, i64* %XCX, !mcsema_real_eip !84
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -56
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %_ptr_to_int_260 = ptrtoint i64* %_allin_new_bt_55 to i64
  %_offset_above_rbp_263 = sub i64 %_ptr_to_int_260, %_local_end_to_int_
  %_pot_address_in_parent_stack_264 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_263
  %_cond1_265 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_266 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_267 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_268 = or i1 %_cond2_1_266, %_cond2_2_267
  %_cond4_269 = icmp ule i8* %_pot_address_in_parent_stack_264, %_parent_stack_end_ptr_
  %_cond1_n_cond2_270 = and i1 %_cond1_265, %_cond2_268
  %_cond1_n_cond2_cond3_271 = and i1 %_cond1_n_cond2_270, %_cond4_269
  br i1 %_cond1_n_cond2_cond3_271, label %112, label %113

; <label>:112:                                    ; preds = %109
  %_address_in_parent_stack_bt_273 = bitcast i8* %_pot_address_in_parent_stack_264 to i64*
  br label %113

; <label>:113:                                    ; preds = %109, %112
  %114 = phi i64* [ %_allin_new_bt_55, %109 ], [ %_address_in_parent_stack_bt_273, %112 ]
  %_new_load_274 = load i64, i64* %114
  store i64 %_new_load_274, i64* %XAX, !mcsema_real_eip !85
  %115 = add i64 %_new_load_274, 8, !mcsema_real_eip !86
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !86
  %117 = inttoptr i64 %115 to i32*, !mcsema_real_eip !86
  %_ptr_bt_277 = bitcast i32* %117 to i8*
  %_offset_above_rbp_278 = sub i64 %115, %_local_end_to_int_
  %_pot_address_in_parent_stack_279 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_278
  %_cond1_280 = icmp ugt i8* %_ptr_bt_277, %_local_stack_end_ptr_
  %_cond2_1_281 = icmp ugt i8* %_ptr_bt_277, %_parent_stack_end_ptr_
  %_cond2_2_282 = icmp ult i8* %_ptr_bt_277, %_parent_stack_start_ptr_
  %_cond2_283 = or i1 %_cond2_1_281, %_cond2_2_282
  %_cond4_284 = icmp ule i8* %_pot_address_in_parent_stack_279, %_parent_stack_end_ptr_
  %_cond1_n_cond2_285 = and i1 %_cond1_280, %_cond2_283
  %_cond1_n_cond2_cond3_286 = and i1 %_cond1_n_cond2_285, %_cond4_284
  br i1 %_cond1_n_cond2_cond3_286, label %118, label %119

; <label>:118:                                    ; preds = %113
  %_address_in_parent_stack_bt_288 = bitcast i8* %_pot_address_in_parent_stack_279 to i32*
  br label %119

; <label>:119:                                    ; preds = %113, %118
  %120 = phi i32* [ %117, %113 ], [ %_address_in_parent_stack_bt_288, %118 ]
  %_new_load_289 = load i32, i32* %120
  %121 = zext i32 %_new_load_289 to i64, !mcsema_real_eip !86
  store i64 %121, i64* %XDX, !mcsema_real_eip !86
  %ECX_val.145 = load i32, i32* %ECX.106, !mcsema_real_eip !87
  %EDX_val.147 = load i32, i32* %EDX.103, !mcsema_real_eip !87
  %122 = add i32 %EDX_val.147, %ECX_val.145, !mcsema_real_eip !87
  %123 = xor i32 %122, %ECX_val.145, !mcsema_real_eip !87
  %124 = xor i32 %123, %EDX_val.147, !mcsema_real_eip !87
  %125 = and i32 %124, 16, !mcsema_real_eip !87
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !87
  store i1 %126, i1* %AF, !mcsema_real_eip !87
  %127 = lshr i32 %122, 31, !mcsema_real_eip !87
  %128 = trunc i32 %127 to i1, !mcsema_real_eip !87
  store i1 %128, i1* %SF, !mcsema_real_eip !87
  %129 = icmp eq i32 %122, 0, !mcsema_real_eip !87
  store i1 %129, i1* %ZF, !mcsema_real_eip !87
  %130 = xor i32 %ECX_val.145, %EDX_val.147, !mcsema_real_eip !87
  %131 = xor i32 %130, -1, !mcsema_real_eip !87
  %132 = and i32 %131, %123, !mcsema_real_eip !87
  %133 = lshr i32 %132, 31, !mcsema_real_eip !87
  %134 = and i32 %133, 1, !mcsema_real_eip !87
  %135 = trunc i32 %134 to i1, !mcsema_real_eip !87
  store i1 %135, i1* %OF, !mcsema_real_eip !87
  %136 = trunc i32 %122 to i8, !mcsema_real_eip !87
  %137 = call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !87
  %138 = trunc i8 %137 to i1, !mcsema_real_eip !87
  %139 = xor i1 %138, true, !mcsema_real_eip !87
  store i1 %139, i1* %PF, !mcsema_real_eip !87
  %140 = icmp ult i32 %122, %ECX_val.145, !mcsema_real_eip !87
  store i1 %140, i1* %CF, !mcsema_real_eip !87
  %141 = zext i32 %122 to i64, !mcsema_real_eip !87
  store i64 %141, i64* %XCX, !mcsema_real_eip !87
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -64
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %ECX_val.150 = load i32, i32* %ECX.106, !mcsema_real_eip !88
  %142 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !88
  %143 = inttoptr i64 %142 to i32*, !mcsema_real_eip !88
  store i32 %ECX_val.150, i32* %143, !mcsema_real_eip !88
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -64
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %144 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !89
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !89
  %_ptr_bt_292 = bitcast i32* %145 to i8*
  %_offset_above_rbp_293 = sub i64 %144, %_local_end_to_int_
  %_pot_address_in_parent_stack_294 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_293
  %_cond1_295 = icmp ugt i8* %_ptr_bt_292, %_local_stack_end_ptr_
  %_cond2_1_296 = icmp ugt i8* %_ptr_bt_292, %_parent_stack_end_ptr_
  %_cond2_2_297 = icmp ult i8* %_ptr_bt_292, %_parent_stack_start_ptr_
  %_cond2_298 = or i1 %_cond2_1_296, %_cond2_2_297
  %_cond4_299 = icmp ule i8* %_pot_address_in_parent_stack_294, %_parent_stack_end_ptr_
  %_cond1_n_cond2_300 = and i1 %_cond1_295, %_cond2_298
  %_cond1_n_cond2_cond3_301 = and i1 %_cond1_n_cond2_300, %_cond4_299
  br i1 %_cond1_n_cond2_cond3_301, label %146, label %147

; <label>:146:                                    ; preds = %119
  %_address_in_parent_stack_bt_303 = bitcast i8* %_pot_address_in_parent_stack_294 to i32*
  br label %147

; <label>:147:                                    ; preds = %119, %146
  %148 = phi i32* [ %145, %119 ], [ %_address_in_parent_stack_bt_303, %146 ]
  %_new_load_304 = load i32, i32* %148
  %149 = zext i32 %_new_load_304 to i64, !mcsema_real_eip !89
  store i64 %149, i64* %XCX, !mcsema_real_eip !89
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -8
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %ECX_val.154 = load i32, i32* %ECX.106, !mcsema_real_eip !90
  %150 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !90
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !90
  store i32 %ECX_val.154, i32* %151, !mcsema_real_eip !90
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -72
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %_ptr_to_int_305 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_308 = sub i64 %_ptr_to_int_305, %_local_end_to_int_
  %_pot_address_in_parent_stack_309 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_308
  %_cond1_310 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_311 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_312 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_313 = or i1 %_cond2_1_311, %_cond2_2_312
  %_cond4_314 = icmp ule i8* %_pot_address_in_parent_stack_309, %_parent_stack_end_ptr_
  %_cond1_n_cond2_315 = and i1 %_cond1_310, %_cond2_313
  %_cond1_n_cond2_cond3_316 = and i1 %_cond1_n_cond2_315, %_cond4_314
  br i1 %_cond1_n_cond2_cond3_316, label %152, label %153

; <label>:152:                                    ; preds = %147
  %_address_in_parent_stack_bt_318 = bitcast i8* %_pot_address_in_parent_stack_309 to i64*
  br label %153

; <label>:153:                                    ; preds = %147, %152
  %154 = phi i64* [ %_allin_new_bt_67, %147 ], [ %_address_in_parent_stack_bt_318, %152 ]
  %_new_load_319 = load i64, i64* %154
  store i64 %_new_load_319, i64* %XAX, !mcsema_real_eip !91
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -16
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %_new_load_319, i64* %_allin_new_bt_70, !mcsema_real_eip !92
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -8
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %155 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !93
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !93
  %_ptr_bt_322 = bitcast i32* %156 to i8*
  %_offset_above_rbp_323 = sub i64 %155, %_local_end_to_int_
  %_pot_address_in_parent_stack_324 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_323
  %_cond1_325 = icmp ugt i8* %_ptr_bt_322, %_local_stack_end_ptr_
  %_cond2_1_326 = icmp ugt i8* %_ptr_bt_322, %_parent_stack_end_ptr_
  %_cond2_2_327 = icmp ult i8* %_ptr_bt_322, %_parent_stack_start_ptr_
  %_cond2_328 = or i1 %_cond2_1_326, %_cond2_2_327
  %_cond4_329 = icmp ule i8* %_pot_address_in_parent_stack_324, %_parent_stack_end_ptr_
  %_cond1_n_cond2_330 = and i1 %_cond1_325, %_cond2_328
  %_cond1_n_cond2_cond3_331 = and i1 %_cond1_n_cond2_330, %_cond4_329
  br i1 %_cond1_n_cond2_cond3_331, label %157, label %158

; <label>:157:                                    ; preds = %153
  %_address_in_parent_stack_bt_333 = bitcast i8* %_pot_address_in_parent_stack_324 to i32*
  br label %158

; <label>:158:                                    ; preds = %153, %157
  %159 = phi i32* [ %156, %153 ], [ %_address_in_parent_stack_bt_333, %157 ]
  %_new_load_334 = load i32, i32* %159
  %160 = zext i32 %_new_load_334 to i64, !mcsema_real_eip !93
  store i64 %160, i64* %XCX, !mcsema_real_eip !93
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -80
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %ECX_val.161 = load i32, i32* %ECX.106, !mcsema_real_eip !94
  %161 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !94
  %162 = inttoptr i64 %161 to i32*, !mcsema_real_eip !94
  store i32 %ECX_val.161, i32* %162, !mcsema_real_eip !94
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -16
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %_ptr_to_int_335 = ptrtoint i64* %_allin_new_bt_79 to i64
  %_offset_above_rbp_338 = sub i64 %_ptr_to_int_335, %_local_end_to_int_
  %_pot_address_in_parent_stack_339 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_338
  %_cond1_340 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_341 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_342 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_343 = or i1 %_cond2_1_341, %_cond2_2_342
  %_cond4_344 = icmp ule i8* %_pot_address_in_parent_stack_339, %_parent_stack_end_ptr_
  %_cond1_n_cond2_345 = and i1 %_cond1_340, %_cond2_343
  %_cond1_n_cond2_cond3_346 = and i1 %_cond1_n_cond2_345, %_cond4_344
  br i1 %_cond1_n_cond2_cond3_346, label %163, label %164

; <label>:163:                                    ; preds = %158
  %_address_in_parent_stack_bt_348 = bitcast i8* %_pot_address_in_parent_stack_339 to i64*
  br label %164

; <label>:164:                                    ; preds = %158, %163
  %165 = phi i64* [ %_allin_new_bt_79, %158 ], [ %_address_in_parent_stack_bt_348, %163 ]
  %_new_load_349 = load i64, i64* %165
  store i64 %_new_load_349, i64* %XAX, !mcsema_real_eip !95
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -88
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  store i64 %_new_load_349, i64* %_allin_new_bt_82, !mcsema_real_eip !96
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -88
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %_ptr_to_int_350 = ptrtoint i64* %_allin_new_bt_85 to i64
  %_offset_above_rbp_353 = sub i64 %_ptr_to_int_350, %_local_end_to_int_
  %_pot_address_in_parent_stack_354 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_353
  %_cond1_355 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_356 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_357 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_358 = or i1 %_cond2_1_356, %_cond2_2_357
  %_cond4_359 = icmp ule i8* %_pot_address_in_parent_stack_354, %_parent_stack_end_ptr_
  %_cond1_n_cond2_360 = and i1 %_cond1_355, %_cond2_358
  %_cond1_n_cond2_cond3_361 = and i1 %_cond1_n_cond2_360, %_cond4_359
  br i1 %_cond1_n_cond2_cond3_361, label %166, label %167

; <label>:166:                                    ; preds = %164
  %_address_in_parent_stack_bt_363 = bitcast i8* %_pot_address_in_parent_stack_354 to i64*
  br label %167

; <label>:167:                                    ; preds = %164, %166
  %168 = phi i64* [ %_allin_new_bt_85, %164 ], [ %_address_in_parent_stack_bt_363, %166 ]
  %_new_load_364 = load i64, i64* %168
  store i64 %_new_load_364, i64* %XAX, !mcsema_real_eip !97
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -80
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %169 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !98
  %170 = inttoptr i64 %169 to i32*, !mcsema_real_eip !98
  %_ptr_bt_367 = bitcast i32* %170 to i8*
  %_offset_above_rbp_368 = sub i64 %169, %_local_end_to_int_
  %_pot_address_in_parent_stack_369 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_368
  %_cond1_370 = icmp ugt i8* %_ptr_bt_367, %_local_stack_end_ptr_
  %_cond2_1_371 = icmp ugt i8* %_ptr_bt_367, %_parent_stack_end_ptr_
  %_cond2_2_372 = icmp ult i8* %_ptr_bt_367, %_parent_stack_start_ptr_
  %_cond2_373 = or i1 %_cond2_1_371, %_cond2_2_372
  %_cond4_374 = icmp ule i8* %_pot_address_in_parent_stack_369, %_parent_stack_end_ptr_
  %_cond1_n_cond2_375 = and i1 %_cond1_370, %_cond2_373
  %_cond1_n_cond2_cond3_376 = and i1 %_cond1_n_cond2_375, %_cond4_374
  br i1 %_cond1_n_cond2_cond3_376, label %171, label %172

; <label>:171:                                    ; preds = %167
  %_address_in_parent_stack_bt_378 = bitcast i8* %_pot_address_in_parent_stack_369 to i32*
  br label %172

; <label>:172:                                    ; preds = %167, %171
  %173 = phi i32* [ %170, %167 ], [ %_address_in_parent_stack_bt_378, %171 ]
  %_new_load_379 = load i32, i32* %173
  %174 = zext i32 %_new_load_379 to i64, !mcsema_real_eip !98
  store i64 %174, i64* %XDX, !mcsema_real_eip !98
  %_load_rsp_ptr_89 = load i8*, i8** %_RSP_ptr_
  %RSP_val.167 = load i64, i64* %XSP, !mcsema_real_eip !99
  %_allin_new_bt_90 = bitcast i8* %_load_rsp_ptr_89 to i64*
  %_ptr_to_int_380 = ptrtoint i64* %_allin_new_bt_90 to i64
  %_offset_above_rbp_383 = sub i64 %_ptr_to_int_380, %_local_end_to_int_
  %_pot_address_in_parent_stack_384 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_383
  %_cond1_385 = icmp ugt i8* %_load_rsp_ptr_89, %_local_stack_end_ptr_
  %_cond2_1_386 = icmp ugt i8* %_load_rsp_ptr_89, %_parent_stack_end_ptr_
  %_cond2_2_387 = icmp ult i8* %_load_rsp_ptr_89, %_parent_stack_start_ptr_
  %_cond2_388 = or i1 %_cond2_1_386, %_cond2_2_387
  %_cond4_389 = icmp ule i8* %_pot_address_in_parent_stack_384, %_parent_stack_end_ptr_
  %_cond1_n_cond2_390 = and i1 %_cond1_385, %_cond2_388
  %_cond1_n_cond2_cond3_391 = and i1 %_cond1_n_cond2_390, %_cond4_389
  br i1 %_cond1_n_cond2_cond3_391, label %175, label %176

; <label>:175:                                    ; preds = %172
  %_address_in_parent_stack_bt_393 = bitcast i8* %_pot_address_in_parent_stack_384 to i64*
  br label %176

; <label>:176:                                    ; preds = %172, %175
  %177 = phi i64* [ %_allin_new_bt_90, %172 ], [ %_address_in_parent_stack_bt_393, %175 ]
  %_new_load_394 = load i64, i64* %177
  %_new_int2ptr_ = inttoptr i64 %_new_load_394 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_394, i64* %XBP, !mcsema_real_eip !99
  %_new_gep_91 = getelementptr i8, i8* %_load_rsp_ptr_89, i64 8
  %178 = add i64 %RSP_val.167, 8, !mcsema_real_eip !99
  store volatile i8* %_new_gep_91, i8** %_RSP_ptr_
  store i64 %178, i64* %XSP, !mcsema_real_eip !99
  %_new_gep_93 = getelementptr i8, i8* %_new_gep_91, i64 8
  %179 = add i64 %178, 8, !mcsema_real_eip !100
  %_allin_new_bt_94 = bitcast i8* %_new_gep_91 to i64*
  %_ptr_to_int_395 = ptrtoint i64* %_allin_new_bt_94 to i64
  %_offset_above_rbp_398 = sub i64 %_ptr_to_int_395, %_local_end_to_int_
  %_pot_address_in_parent_stack_399 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_398
  %_cond1_400 = icmp ugt i8* %_new_gep_91, %_local_stack_end_ptr_
  %_cond2_1_401 = icmp ugt i8* %_new_gep_91, %_parent_stack_end_ptr_
  %_cond2_2_402 = icmp ult i8* %_new_gep_91, %_parent_stack_start_ptr_
  %_cond2_403 = or i1 %_cond2_1_401, %_cond2_2_402
  %_cond4_404 = icmp ule i8* %_pot_address_in_parent_stack_399, %_parent_stack_end_ptr_
  %_cond1_n_cond2_405 = and i1 %_cond1_400, %_cond2_403
  %_cond1_n_cond2_cond3_406 = and i1 %_cond1_n_cond2_405, %_cond4_404
  br i1 %_cond1_n_cond2_cond3_406, label %180, label %181

; <label>:180:                                    ; preds = %176
  %_address_in_parent_stack_bt_408 = bitcast i8* %_pot_address_in_parent_stack_399 to i64*
  br label %181

; <label>:181:                                    ; preds = %176, %180
  %182 = phi i64* [ %_allin_new_bt_94, %176 ], [ %_address_in_parent_stack_bt_408, %180 ]
  %_new_load_409 = load i64, i64* %182
  store i64 %_new_load_409, i64* %XIP, !mcsema_real_eip !100
  store volatile i8* %_new_gep_93, i8** %_RSP_ptr_
  store i64 %179, i64* %XSP, !mcsema_real_eip !100
  ret void, !mcsema_real_eip !100
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 144}
!3 = !{i64 145}
!4 = !{i64 148}
!5 = !{i64 152}
!6 = !{i64 162}
!7 = !{i64 169}
!8 = !{i64 176}
!9 = !{i64 183}
!10 = !{i64 190}
!11 = !{i64 195}
!12 = !{i64 197}
!13 = !{i64 201}
!14 = !{i64 204}
!15 = !{i64 209}
!16 = !{i64 213}
!17 = !{i64 217}
!18 = !{i64 223}
!19 = !{i64 227}
!20 = !{i64 234}
!21 = !{i64 238}
!22 = !{i64 245}
!23 = !{i64 252}
!24 = !{i64 256}
!25 = !{i64 260}
!26 = !{i64 263}
!27 = !{i64 268}
!28 = !{i64 273}
!29 = !{i64 279}
!30 = !{i64 281}
!31 = !{i64 284}
!32 = !{i64 287}
!33 = !{i64 290}
!34 = !{i64 293}
!35 = !{i64 297}
!36 = !{i64 301}
!37 = !{i64 304}
!38 = !{i64 308}
!39 = !{i64 313}
!40 = !{i64 316}
!41 = !{i64 320}
!42 = !{i64 324}
!43 = !{i64 328}
!44 = !{i64 331}
!45 = !{i64 334}
!46 = !{i64 337}
!47 = !{i64 340}
!48 = !{i64 343}
!49 = !{i64 346}
!50 = !{i64 349}
!51 = !{i64 353}
!52 = !{i64 355}
!53 = !{i64 360}
!54 = !{i64 363}
!55 = !{i64 366}
!56 = !{i64 368}
!57 = !{i64 372}
!58 = !{i64 373}
!59 = !{i64 0}
!60 = !{i64 1}
!61 = !{i64 4}
!62 = !{i64 8}
!63 = !{i64 12}
!64 = !{i64 15}
!65 = !{i64 18}
!66 = !{i64 21}
!67 = !{i64 24}
!68 = !{i64 28}
!69 = !{i64 32}
!70 = !{i64 36}
!71 = !{i64 40}
!72 = !{i64 44}
!73 = !{i64 46}
!74 = !{i64 50}
!75 = !{i64 52}
!76 = !{i64 54}
!77 = !{i64 57}
!78 = !{i64 61}
!79 = !{i64 64}
!80 = !{i64 68}
!81 = !{i64 71}
!82 = !{i64 73}
!83 = !{i64 76}
!84 = !{i64 80}
!85 = !{i64 83}
!86 = !{i64 87}
!87 = !{i64 90}
!88 = !{i64 92}
!89 = !{i64 95}
!90 = !{i64 98}
!91 = !{i64 101}
!92 = !{i64 105}
!93 = !{i64 109}
!94 = !{i64 112}
!95 = !{i64 115}
!96 = !{i64 119}
!97 = !{i64 123}
!98 = !{i64 127}
!99 = !{i64 130}
!100 = !{i64 131}
