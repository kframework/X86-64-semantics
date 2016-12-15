; ModuleID = 'Output/test_27.clang.trans.bc'
source_filename = "Output/test_27.clang.bc"
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
module asm "  .globl sub_100;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_100(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [5 x i8] }>
%1 = type <{ [32 x i8], i32, [28 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x212 = internal constant %0 <{ [5 x i8] c"%lu\0A\00" }>, align 64
@data_0x218 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [28 x i8] c"\FF\00\00\00\00A\0E\10\86\02C\0D\06I\83\05\8E\04\8F\03\1C\00\00\00<\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\12\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_100(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 144
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 144
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
  br label %block_0x100, !mcsema_real_eip !2

block_0x100:                                      ; preds = %entry
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -128
  %2 = sub i64 %RSP_val.3, 128, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 128, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 128
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 128
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 12, i64* %XAX, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !6
  %14 = zext i32 %EAX_val.5 to i64, !mcsema_real_eip !6
  store i64 %14, i64* %XDI, !mcsema_real_eip !6
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !7
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %16, !mcsema_real_eip !7
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %17 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !8
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %18, !mcsema_real_eip !8
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %19 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !9
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %20, !mcsema_real_eip !9
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %21 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !10
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !10
  store i32 10, i32* %22, !mcsema_real_eip !10
  %RDI_val.10 = load i64, i64* %XDI, !mcsema_real_eip !11
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %23 = sub i64 %RSP_val.11, 8, !mcsema_real_eip !11
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !11
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %23, i64* %XSP, !mcsema_real_eip !11
  %24 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.10)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %24, i64* %XAX, !mcsema_real_eip !11
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %25 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !12
  store i64 %25, i64* %XDI, !mcsema_real_eip !12
  store i64 1, i64* %R8, !mcsema_real_eip !13
  store i64 2, i64* %R9, !mcsema_real_eip !14
  store i64 3, i64* %XCX, !mcsema_real_eip !15
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %24, i64* %_allin_new_bt_33, !mcsema_real_eip !16
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %26 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !17
  store i64 %26, i64* %XAX, !mcsema_real_eip !17
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !18
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !18
  store i32 5, i32* %28, !mcsema_real_eip !18
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %29 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !19
  store i64 %29, i64* %XAX, !mcsema_real_eip !19
  %30 = add i64 %29, 4, !mcsema_real_eip !20
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !20
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !20
  store i32 5, i32* %32, !mcsema_real_eip !20
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %33 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !21
  store i64 %33, i64* %XAX, !mcsema_real_eip !21
  %34 = add i64 %33, 8, !mcsema_real_eip !22
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !22
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !22
  store i32 5, i32* %36, !mcsema_real_eip !22
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %37 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !23
  store i64 %37, i64* %XAX, !mcsema_real_eip !23
  %38 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !24
  store i64 %38, i64* %XDX, !mcsema_real_eip !24
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %39 = load i64, i64* %_allin_new_bt_51, !mcsema_real_eip !25
  store i64 %39, i64* %XSI, !mcsema_real_eip !25
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -48
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 %39, i64* %_allin_new_bt_54, !mcsema_real_eip !26
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -8
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %40 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !27
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !27
  %42 = load i32, i32* %41, !mcsema_real_eip !27
  %43 = zext i32 %42 to i64, !mcsema_real_eip !27
  store i64 %43, i64* %R10, !mcsema_real_eip !27
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -40
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %R10D.28 = bitcast i64* %R10 to i32*, !mcsema_real_eip !28
  %R10D_val.29 = load i32, i32* %R10D.28, !mcsema_real_eip !28
  %44 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !28
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !28
  store i32 %R10D_val.29, i32* %45, !mcsema_real_eip !28
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -48
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %46 = load i64, i64* %_allin_new_bt_63, !mcsema_real_eip !29
  store i64 %46, i64* %XSI, !mcsema_real_eip !29
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -40
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !30
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !30
  %49 = load i32, i32* %48, !mcsema_real_eip !30
  %50 = zext i32 %49 to i64, !mcsema_real_eip !30
  store i64 %50, i64* %R10, !mcsema_real_eip !30
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -64
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %RDI_val.33 = load i64, i64* %XDI, !mcsema_real_eip !31
  store i64 %RDI_val.33, i64* %_allin_new_bt_69, !mcsema_real_eip !31
  %RSI_val.34 = load i64, i64* %XSI, !mcsema_real_eip !32
  store i64 %RSI_val.34, i64* %XDI, !mcsema_real_eip !32
  %R10D_val.36 = load i32, i32* %R10D.28, !mcsema_real_eip !33
  %51 = zext i32 %R10D_val.36 to i64, !mcsema_real_eip !33
  store i64 %51, i64* %XSI, !mcsema_real_eip !33
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -64
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %52 = load i64, i64* %_allin_new_bt_72, !mcsema_real_eip !34
  store i64 %52, i64* %R11, !mcsema_real_eip !34
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -72
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %RDX_val.39 = load i64, i64* %XDX, !mcsema_real_eip !35
  store i64 %RDX_val.39, i64* %_allin_new_bt_75, !mcsema_real_eip !35
  %R11_val.40 = load i64, i64* %R11, !mcsema_real_eip !36
  store i64 %R11_val.40, i64* %XDX, !mcsema_real_eip !36
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -76
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %ECX.42 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %ECX_val.43 = load i32, i32* %ECX.42, !mcsema_real_eip !37
  %53 = ptrtoint i64* %_allin_new_bt_78 to i64, !mcsema_real_eip !37
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !37
  store i32 %ECX_val.43, i32* %54, !mcsema_real_eip !37
  %RAX_val.44 = load i64, i64* %XAX, !mcsema_real_eip !38
  store i64 %RAX_val.44, i64* %XCX, !mcsema_real_eip !38
  %_load_rsp_ptr_79 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_81 = bitcast i8* %_load_rsp_ptr_79 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_81 to i64, !mcsema_real_eip !39
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !39
  store i32 3, i32* %56, !mcsema_real_eip !39
  %R11_val.46 = load i64, i64* %R11, !mcsema_real_eip !40
  %57 = inttoptr i64 %R11_val.46 to i64*, !mcsema_real_eip !40
  %58 = load i64, i64* %57, !mcsema_real_eip !40
  store i64 %58, i64* %XAX, !mcsema_real_eip !40
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %_new_gep_83 = getelementptr i8, i8* %_load_rsp_ptr_82, i64 8
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  store i64 %58, i64* %_allin_new_bt_84, !mcsema_real_eip !41
  %R11_val.49 = load i64, i64* %R11, !mcsema_real_eip !42
  %59 = add i64 %R11_val.49, 8, !mcsema_real_eip !42
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !42
  %61 = inttoptr i64 %59 to i32*, !mcsema_real_eip !42
  %62 = load i32, i32* %61, !mcsema_real_eip !42
  %63 = zext i32 %62 to i64, !mcsema_real_eip !42
  store i64 %63, i64* %R10, !mcsema_real_eip !42
  %_load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_
  %_new_gep_86 = getelementptr i8, i8* %_load_rsp_ptr_85, i64 16
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %R10D_val.52 = load i32, i32* %R10D.28, !mcsema_real_eip !43
  %64 = ptrtoint i64* %_allin_new_bt_87 to i64, !mcsema_real_eip !43
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !43
  store i32 %R10D_val.52, i32* %65, !mcsema_real_eip !43
  %_load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_
  %_new_gep_89 = getelementptr i8, i8* %_load_rsp_ptr_88, i64 24
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %R11_val.54 = load i64, i64* %R11, !mcsema_real_eip !44
  store i64 %R11_val.54, i64* %_allin_new_bt_90, !mcsema_real_eip !44
  %_load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_91, i64 -72
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %66 = load i64, i64* %_allin_new_bt_93, !mcsema_real_eip !45
  store i64 %66, i64* %XAX, !mcsema_real_eip !45
  %_load_rsp_ptr_94 = load i8*, i8** %_RSP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rsp_ptr_94, i64 32
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  store i64 %66, i64* %_allin_new_bt_96, !mcsema_real_eip !46
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !47
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 -8
  %67 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !47
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, !mcsema_real_eip !47
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_
  store i64 %67, i64* %XSP, !mcsema_real_eip !47
  %_load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_161)
  %_rsp_fix_163 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_164 = getelementptr i8, i8* %_rsp_fix_163, i64 8
  store i8* %_gep_fix_164, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, !mcsema_real_eip !48
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -32
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %RAX_val.60 = load i64, i64* %XAX, !mcsema_real_eip !49
  store i64 %RAX_val.60, i64* %_allin_new_bt_102, !mcsema_real_eip !49
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -32
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %68 = load i64, i64* %_allin_new_bt_105, !mcsema_real_eip !50
  store i64 %68, i64* %XAX, !mcsema_real_eip !50
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !51
  %70 = inttoptr i64 %68 to i32*, !mcsema_real_eip !51
  %71 = load i32, i32* %70, !mcsema_real_eip !51
  %72 = zext i32 %71 to i64, !mcsema_real_eip !51
  store i64 %72, i64* %XSI, !mcsema_real_eip !51
  %73 = load i64, i64* %_allin_new_bt_105, !mcsema_real_eip !52
  store i64 %73, i64* %XAX, !mcsema_real_eip !52
  %74 = add i64 %73, 4, !mcsema_real_eip !53
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !53
  %76 = inttoptr i64 %74 to i32*, !mcsema_real_eip !53
  %77 = load i32, i32* %76, !mcsema_real_eip !53
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !53
  %ESI_val.66 = load i32, i32* %ESI.65, !mcsema_real_eip !53
  %78 = add i32 %ESI_val.66, %77, !mcsema_real_eip !53
  %79 = xor i32 %78, %77, !mcsema_real_eip !53
  %80 = xor i32 %79, %ESI_val.66, !mcsema_real_eip !53
  %81 = and i32 %80, 16, !mcsema_real_eip !53
  %82 = icmp ne i32 %81, 0, !mcsema_real_eip !53
  store i1 %82, i1* %AF, !mcsema_real_eip !53
  %83 = lshr i32 %78, 31, !mcsema_real_eip !53
  %84 = trunc i32 %83 to i1, !mcsema_real_eip !53
  store i1 %84, i1* %SF, !mcsema_real_eip !53
  %85 = icmp eq i32 %78, 0, !mcsema_real_eip !53
  store i1 %85, i1* %ZF, !mcsema_real_eip !53
  %86 = xor i32 %77, %ESI_val.66, !mcsema_real_eip !53
  %87 = xor i32 %86, -1, !mcsema_real_eip !53
  %88 = and i32 %87, %79, !mcsema_real_eip !53
  %89 = lshr i32 %88, 31, !mcsema_real_eip !53
  %90 = and i32 %89, 1, !mcsema_real_eip !53
  %91 = trunc i32 %90 to i1, !mcsema_real_eip !53
  store i1 %91, i1* %OF, !mcsema_real_eip !53
  %92 = trunc i32 %78 to i8, !mcsema_real_eip !53
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !53
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !53
  %95 = xor i1 %94, true, !mcsema_real_eip !53
  store i1 %95, i1* %PF, !mcsema_real_eip !53
  %96 = icmp ult i32 %78, %77, !mcsema_real_eip !53
  store i1 %96, i1* %CF, !mcsema_real_eip !53
  %97 = zext i32 %78 to i64, !mcsema_real_eip !53
  store i64 %97, i64* %XSI, !mcsema_real_eip !53
  %98 = load i64, i64* %_allin_new_bt_105, !mcsema_real_eip !54
  store i64 %98, i64* %XAX, !mcsema_real_eip !54
  %99 = add i64 %98, 8, !mcsema_real_eip !55
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !55
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !55
  %102 = load i32, i32* %101, !mcsema_real_eip !55
  %ESI_val.70 = load i32, i32* %ESI.65, !mcsema_real_eip !55
  %103 = add i32 %ESI_val.70, %102, !mcsema_real_eip !55
  %104 = xor i32 %103, %102, !mcsema_real_eip !55
  %105 = xor i32 %104, %ESI_val.70, !mcsema_real_eip !55
  %106 = and i32 %105, 16, !mcsema_real_eip !55
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !55
  store i1 %107, i1* %AF, !mcsema_real_eip !55
  %108 = lshr i32 %103, 31, !mcsema_real_eip !55
  %109 = trunc i32 %108 to i1, !mcsema_real_eip !55
  store i1 %109, i1* %SF, !mcsema_real_eip !55
  %110 = icmp eq i32 %103, 0, !mcsema_real_eip !55
  store i1 %110, i1* %ZF, !mcsema_real_eip !55
  %111 = xor i32 %102, %ESI_val.70, !mcsema_real_eip !55
  %112 = xor i32 %111, -1, !mcsema_real_eip !55
  %113 = and i32 %112, %104, !mcsema_real_eip !55
  %114 = lshr i32 %113, 31, !mcsema_real_eip !55
  %115 = and i32 %114, 1, !mcsema_real_eip !55
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !55
  store i1 %116, i1* %OF, !mcsema_real_eip !55
  %117 = trunc i32 %103 to i8, !mcsema_real_eip !55
  %118 = call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !55
  %119 = trunc i8 %118 to i1, !mcsema_real_eip !55
  %120 = xor i1 %119, true, !mcsema_real_eip !55
  store i1 %120, i1* %PF, !mcsema_real_eip !55
  %121 = icmp ult i32 %103, %102, !mcsema_real_eip !55
  store i1 %121, i1* %CF, !mcsema_real_eip !55
  %122 = zext i32 %103 to i64, !mcsema_real_eip !55
  store i64 %122, i64* %XSI, !mcsema_real_eip !55
  %_new_gep_113 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -52
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %ESI_val.73 = load i32, i32* %ESI.65, !mcsema_real_eip !56
  %123 = ptrtoint i64* %_allin_new_bt_114 to i64, !mcsema_real_eip !56
  %124 = inttoptr i64 %123 to i32*, !mcsema_real_eip !56
  store i32 %ESI_val.73, i32* %124, !mcsema_real_eip !56
  %_load_rbp_ptr_115 = load i8*, i8** %_RBP_ptr_
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_115, i64 -52
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %125 = ptrtoint i64* %_allin_new_bt_117 to i64, !mcsema_real_eip !57
  %126 = inttoptr i64 %125 to i32*, !mcsema_real_eip !57
  %127 = load i32, i32* %126, !mcsema_real_eip !57
  %128 = zext i32 %127 to i64, !mcsema_real_eip !57
  store i64 %128, i64* %XSI, !mcsema_real_eip !57
  %AL.75 = bitcast i64* %XAX to i8*, !mcsema_real_eip !58
  store i8 0, i8* %AL.75, !mcsema_real_eip !58
  %RDI_val.76 = load i64, i64* %XDI, !mcsema_real_eip !59
  %RDX_val.78 = load i64, i64* %XDX, !mcsema_real_eip !59
  %RCX_val.79 = load i64, i64* %XCX, !mcsema_real_eip !59
  %R8_val.80 = load i64, i64* %R8, !mcsema_real_eip !59
  %R9_val.81 = load i64, i64* %R9, !mcsema_real_eip !59
  %_load_rsp_ptr_118 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_119 = bitcast i8* %_load_rsp_ptr_118 to i64*
  %129 = load i64, i64* %_allin_new_bt_119, !mcsema_real_eip !59
  %_new_gep_120 = getelementptr i8, i8* %_load_rsp_ptr_118, i64 8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %130 = load i64, i64* %_allin_new_bt_121, !mcsema_real_eip !59
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_120, i64 8
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %131 = load i64, i64* %_allin_new_bt_123, !mcsema_real_eip !59
  %_new_gep_124 = getelementptr i8, i8* %_new_gep_122, i64 8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %132 = load i64, i64* %_allin_new_bt_125, !mcsema_real_eip !59
  %_new_gep_126 = getelementptr i8, i8* %_new_gep_124, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %133 = load i64, i64* %_allin_new_bt_127, !mcsema_real_eip !59
  %_new_gep_128 = getelementptr i8, i8* %_new_gep_126, i64 8
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %134 = load i64, i64* %_allin_new_bt_129, !mcsema_real_eip !59
  %RSP_val.83 = load i64, i64* %XSP, !mcsema_real_eip !59
  %_new_gep_131 = getelementptr i8, i8* %_load_rsp_ptr_118, i64 -8
  %135 = sub i64 %RSP_val.83, 8, !mcsema_real_eip !59
  %_allin_new_bt_132 = bitcast i8* %_new_gep_131 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_132, !mcsema_real_eip !59
  store volatile i8* %_new_gep_131, i8** %_RSP_ptr_
  store i64 %135, i64* %XSP, !mcsema_real_eip !59
  %136 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.76, i64 %128, i64 %RDX_val.78, i64 %RCX_val.79, i64 %R8_val.80, i64 %R9_val.81, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  %_rsp_fix_165 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_166 = getelementptr i8, i8* %_rsp_fix_165, i64 8
  store i8* %_gep_fix_166, i8** %_RSP_ptr_
  store i64 %136, i64* %XAX, !mcsema_real_eip !59
  %_load_rbp_ptr_133 = load i8*, i8** %_RBP_ptr_
  %_new_gep_134 = getelementptr i8, i8* %_load_rbp_ptr_133, i64 -52
  %_allin_new_bt_135 = bitcast i8* %_new_gep_134 to i64*
  %137 = ptrtoint i64* %_allin_new_bt_135 to i64, !mcsema_real_eip !60
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !60
  %139 = load i32, i32* %138, !mcsema_real_eip !60
  %140 = zext i32 %139 to i64, !mcsema_real_eip !60
  store i64 %140, i64* %XSI, !mcsema_real_eip !60
  %_new_gep_137 = getelementptr i8, i8* %_load_rbp_ptr_133, i64 -80
  %_allin_new_bt_138 = bitcast i8* %_new_gep_137 to i64*
  %EAX_val.87 = load i32, i32* %EAX.4, !mcsema_real_eip !61
  %141 = ptrtoint i64* %_allin_new_bt_138 to i64, !mcsema_real_eip !61
  %142 = inttoptr i64 %141 to i32*, !mcsema_real_eip !61
  store i32 %EAX_val.87, i32* %142, !mcsema_real_eip !61
  %ESI_val.89 = load i32, i32* %ESI.65, !mcsema_real_eip !62
  %143 = zext i32 %ESI_val.89 to i64, !mcsema_real_eip !62
  store i64 %143, i64* %XAX, !mcsema_real_eip !62
  %_load_rsp_ptr_139 = load i8*, i8** %_RSP_ptr_
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !63
  %_new_gep_140 = getelementptr i8, i8* %_load_rsp_ptr_139, i64 128
  %144 = add i64 128, %RSP_val.90, !mcsema_real_eip !63
  %_trans_p2i_141 = ptrtoint i8* %_new_gep_140 to i64
  %_trans_p2i_142 = ptrtoint i8* %_load_rsp_ptr_139 to i64
  %_trans_xor_143 = xor i64 %_trans_p2i_141, %_trans_p2i_142
  %145 = xor i64 %_trans_xor_143, 128, !mcsema_real_eip !63
  %146 = and i64 %145, 16, !mcsema_real_eip !63
  %147 = icmp ne i64 %146, 0, !mcsema_real_eip !63
  store i1 %147, i1* %AF, !mcsema_real_eip !63
  %148 = lshr i64 %144, 63, !mcsema_real_eip !63
  %149 = trunc i64 %148 to i1, !mcsema_real_eip !63
  store i1 %149, i1* %SF, !mcsema_real_eip !63
  %_trans_icmp_eq_145 = icmp eq i64 %_trans_p2i_141, 0
  store i1 %_trans_icmp_eq_145, i1* %ZF, !mcsema_real_eip !63
  %_trans_xor_147 = xor i64 %_trans_p2i_142, 128
  %150 = xor i64 %_trans_xor_147, -1, !mcsema_real_eip !63
  %151 = and i64 %150, %_trans_xor_143, !mcsema_real_eip !63
  %152 = lshr i64 %151, 63, !mcsema_real_eip !63
  %153 = and i64 %152, 1, !mcsema_real_eip !63
  %154 = trunc i64 %153 to i1, !mcsema_real_eip !63
  store i1 %154, i1* %OF, !mcsema_real_eip !63
  %_trans_trunc_152 = trunc i64 %_trans_p2i_141 to i8
  %155 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_152), !mcsema_real_eip !63
  %156 = trunc i8 %155 to i1, !mcsema_real_eip !63
  %157 = xor i1 %156, true, !mcsema_real_eip !63
  store i1 %157, i1* %PF, !mcsema_real_eip !63
  %_trans_icmp_ne_154 = icmp ne i64 %_trans_p2i_141, %RSP_val.90
  store i1 %_trans_icmp_ne_154, i1* %CF, !mcsema_real_eip !63
  store volatile i8* %_new_gep_140, i8** %_RSP_ptr_
  store i64 %144, i64* %XSP, !mcsema_real_eip !63
  %_allin_new_bt_156 = bitcast i8* %_new_gep_140 to i64*
  %158 = load i64, i64* %_allin_new_bt_156, !mcsema_real_eip !64
  %_new_int2ptr_ = inttoptr i64 %158 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %158, i64* %XBP, !mcsema_real_eip !64
  %_new_gep_157 = getelementptr i8, i8* %_new_gep_140, i64 8
  %159 = add i64 %144, 8, !mcsema_real_eip !64
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_
  store i64 %159, i64* %XSP, !mcsema_real_eip !64
  %_new_gep_159 = getelementptr i8, i8* %_new_gep_157, i64 8
  %160 = add i64 %159, 8, !mcsema_real_eip !65
  %_allin_new_bt_160 = bitcast i8* %_new_gep_157 to i64*
  %161 = load i64, i64* %_allin_new_bt_160, !mcsema_real_eip !65
  store i64 %161, i64* %XIP, !mcsema_real_eip !65
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_
  store i64 %160, i64* %XSP, !mcsema_real_eip !65
  ret void, !mcsema_real_eip !65
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !66
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !66
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !66
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !66
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !66
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !66
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !66
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !66
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !66
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !66
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !66
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !66
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !66
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !66
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !66
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !66
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !66
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !66
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !66
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !66
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !66
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !66
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !66
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !66
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !66
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !66
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !66
  br label %block_0x0, !mcsema_real_eip !66

block_0x0:                                        ; preds = %entry
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !66
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !66
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !66
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !66
  store i64 %RBP_val.93, i64* %2, !mcsema_real_eip !66
  store i64 %1, i64* %XSP, !mcsema_real_eip !66
  store i64 %1, i64* %XBP, !mcsema_real_eip !67
  %R15_val.96 = load i64, i64* %R15, !mcsema_real_eip !68
  %3 = sub i64 %1, 8, !mcsema_real_eip !68
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !68
  store i64 %R15_val.96, i64* %4, !mcsema_real_eip !68
  store i64 %3, i64* %XSP, !mcsema_real_eip !68
  %R14_val.98 = load i64, i64* %R14, !mcsema_real_eip !69
  %5 = sub i64 %3, 8, !mcsema_real_eip !69
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !69
  store i64 %R14_val.98, i64* %6, !mcsema_real_eip !69
  store i64 %5, i64* %XSP, !mcsema_real_eip !69
  %RBX_val.100 = load i64, i64* %XBX, !mcsema_real_eip !70
  %7 = sub i64 %5, 8, !mcsema_real_eip !70
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !70
  store i64 %RBX_val.100, i64* %8, !mcsema_real_eip !70
  store i64 %7, i64* %XSP, !mcsema_real_eip !70
  %9 = sub i64 %7, 104, !mcsema_real_eip !71
  %10 = xor i64 %9, %7, !mcsema_real_eip !71
  %11 = xor i64 %10, 104, !mcsema_real_eip !71
  %12 = and i64 %11, 16, !mcsema_real_eip !71
  %13 = icmp ne i64 %12, 0, !mcsema_real_eip !71
  store i1 %13, i1* %AF, !mcsema_real_eip !71
  %14 = trunc i64 %9 to i8, !mcsema_real_eip !71
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !71
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !71
  %17 = xor i1 %16, true, !mcsema_real_eip !71
  store i1 %17, i1* %PF, !mcsema_real_eip !71
  %18 = icmp eq i64 %9, 0, !mcsema_real_eip !71
  store i1 %18, i1* %ZF, !mcsema_real_eip !71
  %19 = lshr i64 %9, 63, !mcsema_real_eip !71
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !71
  store i1 %20, i1* %SF, !mcsema_real_eip !71
  %21 = icmp ult i64 %7, 104, !mcsema_real_eip !71
  store i1 %21, i1* %CF, !mcsema_real_eip !71
  %22 = xor i64 %7, 104, !mcsema_real_eip !71
  %23 = and i64 %22, %10, !mcsema_real_eip !71
  %24 = lshr i64 %23, 63, !mcsema_real_eip !71
  %25 = trunc i64 %24 to i1, !mcsema_real_eip !71
  store i1 %25, i1* %OF, !mcsema_real_eip !71
  store i64 %9, i64* %XSP, !mcsema_real_eip !71
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !72
  %26 = add i64 %RBP_val.103, 48, !mcsema_real_eip !72
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !72
  %28 = load i64, i64* %27, !mcsema_real_eip !72
  store i64 %28, i64* %XAX, !mcsema_real_eip !72
  %29 = add i64 %RBP_val.103, 40, !mcsema_real_eip !73
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !73
  %31 = load i64, i64* %30, !mcsema_real_eip !73
  store i64 %31, i64* %R10, !mcsema_real_eip !73
  %32 = add i64 %RBP_val.103, 24, !mcsema_real_eip !74
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !74
  store i64 %32, i64* %R11, !mcsema_real_eip !74
  %34 = add i64 %RBP_val.103, 16, !mcsema_real_eip !75
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !75
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !75
  %37 = load i32, i32* %36, !mcsema_real_eip !75
  %38 = zext i32 %37 to i64, !mcsema_real_eip !75
  store i64 %38, i64* %XBX, !mcsema_real_eip !75
  store i64 12, i64* %R14, !mcsema_real_eip !76
  %R14D.107 = bitcast i64* %R14 to i32*, !mcsema_real_eip !77
  %R14D_val.108 = load i32, i32* %R14D.107, !mcsema_real_eip !77
  %39 = zext i32 %R14D_val.108 to i64, !mcsema_real_eip !77
  store i64 %39, i64* %R15, !mcsema_real_eip !77
  %40 = add i64 %RBP_val.103, -56, !mcsema_real_eip !78
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !78
  %RDI_val.110 = load i64, i64* %XDI, !mcsema_real_eip !78
  store i64 %RDI_val.110, i64* %41, !mcsema_real_eip !78
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !79
  %42 = add i64 %RBP_val.111, -48, !mcsema_real_eip !79
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !79
  %ESI.112 = bitcast i64* %XSI to i32*, !mcsema_real_eip !79
  %ESI_val.113 = load i32, i32* %ESI.112, !mcsema_real_eip !79
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !79
  store i32 %ESI_val.113, i32* %44, !mcsema_real_eip !79
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !80
  %45 = add i64 %RBP_val.114, -56, !mcsema_real_eip !80
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !80
  %47 = load i64, i64* %46, !mcsema_real_eip !80
  store i64 %47, i64* %XDI, !mcsema_real_eip !80
  %48 = add i64 %RBP_val.114, -40, !mcsema_real_eip !81
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !81
  store i64 %47, i64* %49, !mcsema_real_eip !81
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !82
  %50 = add i64 %RBP_val.117, -48, !mcsema_real_eip !82
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !82
  %52 = inttoptr i64 %50 to i32*, !mcsema_real_eip !82
  %53 = load i32, i32* %52, !mcsema_real_eip !82
  %54 = zext i32 %53 to i64, !mcsema_real_eip !82
  store i64 %54, i64* %XSI, !mcsema_real_eip !82
  %55 = add i64 %RBP_val.117, -32, !mcsema_real_eip !83
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !83
  %ESI_val.120 = load i32, i32* %ESI.112, !mcsema_real_eip !83
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !83
  store i32 %ESI_val.120, i32* %57, !mcsema_real_eip !83
  %RBP_val.121 = load i64, i64* %XBP, !mcsema_real_eip !84
  %58 = add i64 %RBP_val.121, -64, !mcsema_real_eip !84
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !84
  %RDX_val.122 = load i64, i64* %XDX, !mcsema_real_eip !84
  store i64 %RDX_val.122, i64* %59, !mcsema_real_eip !84
  %RBP_val.123 = load i64, i64* %XBP, !mcsema_real_eip !85
  %60 = add i64 %RBP_val.123, -72, !mcsema_real_eip !85
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !85
  %RCX_val.124 = load i64, i64* %XCX, !mcsema_real_eip !85
  store i64 %RCX_val.124, i64* %61, !mcsema_real_eip !85
  %RBP_val.125 = load i64, i64* %XBP, !mcsema_real_eip !86
  %62 = add i64 %RBP_val.125, -76, !mcsema_real_eip !86
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !86
  %R8D.126 = bitcast i64* %R8 to i32*, !mcsema_real_eip !86
  %R8D_val.127 = load i32, i32* %R8D.126, !mcsema_real_eip !86
  %64 = inttoptr i64 %62 to i32*, !mcsema_real_eip !86
  store i32 %R8D_val.127, i32* %64, !mcsema_real_eip !86
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !87
  %65 = add i64 %RBP_val.128, -80, !mcsema_real_eip !87
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !87
  %R9D.129 = bitcast i64* %R9 to i32*, !mcsema_real_eip !87
  %R9D_val.130 = load i32, i32* %R9D.129, !mcsema_real_eip !87
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !87
  store i32 %R9D_val.130, i32* %67, !mcsema_real_eip !87
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !88
  %68 = add i64 %RBP_val.131, -84, !mcsema_real_eip !88
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !88
  %EBX.132 = bitcast i64* %XBX to i32*, !mcsema_real_eip !88
  %EBX_val.133 = load i32, i32* %EBX.132, !mcsema_real_eip !88
  %70 = inttoptr i64 %68 to i32*, !mcsema_real_eip !88
  store i32 %EBX_val.133, i32* %70, !mcsema_real_eip !88
  %RBP_val.134 = load i64, i64* %XBP, !mcsema_real_eip !89
  %71 = add i64 %RBP_val.134, -96, !mcsema_real_eip !89
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !89
  %R10_val.135 = load i64, i64* %R10, !mcsema_real_eip !89
  store i64 %R10_val.135, i64* %72, !mcsema_real_eip !89
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !90
  %73 = add i64 %RBP_val.136, -104, !mcsema_real_eip !90
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !90
  %RAX_val.137 = load i64, i64* %XAX, !mcsema_real_eip !90
  store i64 %RAX_val.137, i64* %74, !mcsema_real_eip !90
  %R15_val.138 = load i64, i64* %R15, !mcsema_real_eip !91
  store i64 %R15_val.138, i64* %XDI, !mcsema_real_eip !91
  %RBP_val.139 = load i64, i64* %XBP, !mcsema_real_eip !92
  %75 = add i64 %RBP_val.139, -120, !mcsema_real_eip !92
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !92
  %R11_val.140 = load i64, i64* %R11, !mcsema_real_eip !92
  store i64 %R11_val.140, i64* %76, !mcsema_real_eip !92
  %RDI_val.141 = load i64, i64* %XDI, !mcsema_real_eip !93
  %RSP_val.142 = load i64, i64* %XSP, !mcsema_real_eip !93
  %77 = sub i64 %RSP_val.142, 8, !mcsema_real_eip !93
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !93
  store i64 -2415393069852865332, i64* %78, !mcsema_real_eip !93
  store i64 %77, i64* %XSP, !mcsema_real_eip !93
  %79 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.141), !mcsema_real_eip !93
  store i64 %79, i64* %XAX, !mcsema_real_eip !93
  %RBP_val.143 = load i64, i64* %XBP, !mcsema_real_eip !94
  %80 = add i64 %RBP_val.143, -112, !mcsema_real_eip !94
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !94
  store i64 %79, i64* %81, !mcsema_real_eip !94
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !95
  %82 = add i64 %RBP_val.145, -40, !mcsema_real_eip !95
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !95
  %84 = inttoptr i64 %82 to i32*, !mcsema_real_eip !95
  %85 = load i32, i32* %84, !mcsema_real_eip !95
  %86 = zext i32 %85 to i64, !mcsema_real_eip !95
  store i64 %86, i64* %XSI, !mcsema_real_eip !95
  %87 = add i64 %RBP_val.145, -64, !mcsema_real_eip !96
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !96
  %89 = load i64, i64* %88, !mcsema_real_eip !96
  store i64 %89, i64* %XAX, !mcsema_real_eip !96
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !97
  %91 = inttoptr i64 %89 to i32*, !mcsema_real_eip !97
  %92 = load i32, i32* %91, !mcsema_real_eip !97
  %ESI_val.149 = load i32, i32* %ESI.112, !mcsema_real_eip !97
  %93 = add i32 %ESI_val.149, %92, !mcsema_real_eip !97
  %94 = xor i32 %93, %92, !mcsema_real_eip !97
  %95 = xor i32 %94, %ESI_val.149, !mcsema_real_eip !97
  %96 = and i32 %95, 16, !mcsema_real_eip !97
  %97 = icmp ne i32 %96, 0, !mcsema_real_eip !97
  store i1 %97, i1* %AF, !mcsema_real_eip !97
  %98 = lshr i32 %93, 31, !mcsema_real_eip !97
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !97
  store i1 %99, i1* %SF, !mcsema_real_eip !97
  %100 = icmp eq i32 %93, 0, !mcsema_real_eip !97
  store i1 %100, i1* %ZF, !mcsema_real_eip !97
  %101 = xor i32 %92, %ESI_val.149, !mcsema_real_eip !97
  %102 = xor i32 %101, -1, !mcsema_real_eip !97
  %103 = and i32 %102, %94, !mcsema_real_eip !97
  %104 = lshr i32 %103, 31, !mcsema_real_eip !97
  %105 = and i32 %104, 1, !mcsema_real_eip !97
  %106 = trunc i32 %105 to i1, !mcsema_real_eip !97
  store i1 %106, i1* %OF, !mcsema_real_eip !97
  %107 = trunc i32 %93 to i8, !mcsema_real_eip !97
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !97
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !97
  %110 = xor i1 %109, true, !mcsema_real_eip !97
  store i1 %110, i1* %PF, !mcsema_real_eip !97
  %111 = icmp ult i32 %93, %92, !mcsema_real_eip !97
  store i1 %111, i1* %CF, !mcsema_real_eip !97
  %112 = zext i32 %93 to i64, !mcsema_real_eip !97
  store i64 %112, i64* %XSI, !mcsema_real_eip !97
  %113 = add i64 %RBP_val.145, -72, !mcsema_real_eip !98
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !98
  %115 = load i64, i64* %114, !mcsema_real_eip !98
  store i64 %115, i64* %XAX, !mcsema_real_eip !98
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !99
  %117 = inttoptr i64 %115 to i32*, !mcsema_real_eip !99
  %118 = load i32, i32* %117, !mcsema_real_eip !99
  %ESI_val.153 = load i32, i32* %ESI.112, !mcsema_real_eip !99
  %119 = add i32 %ESI_val.153, %118, !mcsema_real_eip !99
  %120 = xor i32 %119, %118, !mcsema_real_eip !99
  %121 = xor i32 %120, %ESI_val.153, !mcsema_real_eip !99
  %122 = and i32 %121, 16, !mcsema_real_eip !99
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !99
  store i1 %123, i1* %AF, !mcsema_real_eip !99
  %124 = lshr i32 %119, 31, !mcsema_real_eip !99
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !99
  store i1 %125, i1* %SF, !mcsema_real_eip !99
  %126 = icmp eq i32 %119, 0, !mcsema_real_eip !99
  store i1 %126, i1* %ZF, !mcsema_real_eip !99
  %127 = xor i32 %118, %ESI_val.153, !mcsema_real_eip !99
  %128 = xor i32 %127, -1, !mcsema_real_eip !99
  %129 = and i32 %128, %120, !mcsema_real_eip !99
  %130 = lshr i32 %129, 31, !mcsema_real_eip !99
  %131 = and i32 %130, 1, !mcsema_real_eip !99
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !99
  store i1 %132, i1* %OF, !mcsema_real_eip !99
  %133 = trunc i32 %119 to i8, !mcsema_real_eip !99
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !99
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !99
  %136 = xor i1 %135, true, !mcsema_real_eip !99
  store i1 %136, i1* %PF, !mcsema_real_eip !99
  %137 = icmp ult i32 %119, %118, !mcsema_real_eip !99
  store i1 %137, i1* %CF, !mcsema_real_eip !99
  %138 = zext i32 %119 to i64, !mcsema_real_eip !99
  store i64 %138, i64* %XSI, !mcsema_real_eip !99
  %139 = add i64 %RBP_val.145, -120, !mcsema_real_eip !100
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !100
  %141 = load i64, i64* %140, !mcsema_real_eip !100
  store i64 %141, i64* %XAX, !mcsema_real_eip !100
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !101
  %143 = inttoptr i64 %141 to i32*, !mcsema_real_eip !101
  %144 = load i32, i32* %143, !mcsema_real_eip !101
  %145 = zext i32 %144 to i64, !mcsema_real_eip !101
  store i64 %145, i64* %R8, !mcsema_real_eip !101
  %146 = add i64 %RBP_val.145, -96, !mcsema_real_eip !102
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !102
  %148 = load i64, i64* %147, !mcsema_real_eip !102
  store i64 %148, i64* %XCX, !mcsema_real_eip !102
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !103
  %150 = inttoptr i64 %148 to i32*, !mcsema_real_eip !103
  %151 = load i32, i32* %150, !mcsema_real_eip !103
  %R8D_val.159 = load i32, i32* %R8D.126, !mcsema_real_eip !103
  %152 = add i32 %R8D_val.159, %151, !mcsema_real_eip !103
  %153 = xor i32 %152, %151, !mcsema_real_eip !103
  %154 = xor i32 %153, %R8D_val.159, !mcsema_real_eip !103
  %155 = and i32 %154, 16, !mcsema_real_eip !103
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !103
  store i1 %156, i1* %AF, !mcsema_real_eip !103
  %157 = lshr i32 %152, 31, !mcsema_real_eip !103
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !103
  store i1 %158, i1* %SF, !mcsema_real_eip !103
  %159 = icmp eq i32 %152, 0, !mcsema_real_eip !103
  store i1 %159, i1* %ZF, !mcsema_real_eip !103
  %160 = xor i32 %151, %R8D_val.159, !mcsema_real_eip !103
  %161 = xor i32 %160, -1, !mcsema_real_eip !103
  %162 = and i32 %161, %153, !mcsema_real_eip !103
  %163 = lshr i32 %162, 31, !mcsema_real_eip !103
  %164 = and i32 %163, 1, !mcsema_real_eip !103
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !103
  store i1 %165, i1* %OF, !mcsema_real_eip !103
  %166 = trunc i32 %152 to i8, !mcsema_real_eip !103
  %167 = call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !103
  %168 = trunc i8 %167 to i1, !mcsema_real_eip !103
  %169 = xor i1 %168, true, !mcsema_real_eip !103
  store i1 %169, i1* %PF, !mcsema_real_eip !103
  %170 = icmp ult i32 %152, %151, !mcsema_real_eip !103
  store i1 %170, i1* %CF, !mcsema_real_eip !103
  %171 = zext i32 %152 to i64, !mcsema_real_eip !103
  store i64 %171, i64* %R8, !mcsema_real_eip !103
  %172 = add i64 %RBP_val.145, -104, !mcsema_real_eip !104
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !104
  %174 = load i64, i64* %173, !mcsema_real_eip !104
  store i64 %174, i64* %XCX, !mcsema_real_eip !104
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !105
  %176 = inttoptr i64 %174 to i32*, !mcsema_real_eip !105
  %177 = load i32, i32* %176, !mcsema_real_eip !105
  %R8D_val.163 = load i32, i32* %R8D.126, !mcsema_real_eip !105
  %178 = add i32 %R8D_val.163, %177, !mcsema_real_eip !105
  %179 = xor i32 %178, %177, !mcsema_real_eip !105
  %180 = xor i32 %179, %R8D_val.163, !mcsema_real_eip !105
  %181 = and i32 %180, 16, !mcsema_real_eip !105
  %182 = icmp ne i32 %181, 0, !mcsema_real_eip !105
  store i1 %182, i1* %AF, !mcsema_real_eip !105
  %183 = lshr i32 %178, 31, !mcsema_real_eip !105
  %184 = trunc i32 %183 to i1, !mcsema_real_eip !105
  store i1 %184, i1* %SF, !mcsema_real_eip !105
  %185 = icmp eq i32 %178, 0, !mcsema_real_eip !105
  store i1 %185, i1* %ZF, !mcsema_real_eip !105
  %186 = xor i32 %177, %R8D_val.163, !mcsema_real_eip !105
  %187 = xor i32 %186, -1, !mcsema_real_eip !105
  %188 = and i32 %187, %179, !mcsema_real_eip !105
  %189 = lshr i32 %188, 31, !mcsema_real_eip !105
  %190 = and i32 %189, 1, !mcsema_real_eip !105
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !105
  store i1 %191, i1* %OF, !mcsema_real_eip !105
  %192 = trunc i32 %178 to i8, !mcsema_real_eip !105
  %193 = call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !105
  %194 = trunc i8 %193 to i1, !mcsema_real_eip !105
  %195 = xor i1 %194, true, !mcsema_real_eip !105
  store i1 %195, i1* %PF, !mcsema_real_eip !105
  %196 = icmp ult i32 %178, %177, !mcsema_real_eip !105
  store i1 %196, i1* %CF, !mcsema_real_eip !105
  %197 = zext i32 %178 to i64, !mcsema_real_eip !105
  store i64 %197, i64* %R8, !mcsema_real_eip !105
  %ESI_val.165 = load i32, i32* %ESI.112, !mcsema_real_eip !106
  %R8D_val.167 = load i32, i32* %R8D.126, !mcsema_real_eip !106
  %198 = add i32 %R8D_val.167, %ESI_val.165, !mcsema_real_eip !106
  %199 = xor i32 %198, %ESI_val.165, !mcsema_real_eip !106
  %200 = xor i32 %199, %R8D_val.167, !mcsema_real_eip !106
  %201 = and i32 %200, 16, !mcsema_real_eip !106
  %202 = icmp ne i32 %201, 0, !mcsema_real_eip !106
  store i1 %202, i1* %AF, !mcsema_real_eip !106
  %203 = lshr i32 %198, 31, !mcsema_real_eip !106
  %204 = trunc i32 %203 to i1, !mcsema_real_eip !106
  store i1 %204, i1* %SF, !mcsema_real_eip !106
  %205 = icmp eq i32 %198, 0, !mcsema_real_eip !106
  store i1 %205, i1* %ZF, !mcsema_real_eip !106
  %206 = xor i32 %ESI_val.165, %R8D_val.167, !mcsema_real_eip !106
  %207 = xor i32 %206, -1, !mcsema_real_eip !106
  %208 = and i32 %207, %199, !mcsema_real_eip !106
  %209 = lshr i32 %208, 31, !mcsema_real_eip !106
  %210 = and i32 %209, 1, !mcsema_real_eip !106
  %211 = trunc i32 %210 to i1, !mcsema_real_eip !106
  store i1 %211, i1* %OF, !mcsema_real_eip !106
  %212 = trunc i32 %198 to i8, !mcsema_real_eip !106
  %213 = call i8 @llvm.ctpop.i8(i8 %212), !mcsema_real_eip !106
  %214 = trunc i8 %213 to i1, !mcsema_real_eip !106
  %215 = xor i1 %214, true, !mcsema_real_eip !106
  store i1 %215, i1* %PF, !mcsema_real_eip !106
  %216 = icmp ult i32 %198, %ESI_val.165, !mcsema_real_eip !106
  store i1 %216, i1* %CF, !mcsema_real_eip !106
  %217 = zext i32 %198 to i64, !mcsema_real_eip !106
  store i64 %217, i64* %XSI, !mcsema_real_eip !106
  %218 = add i64 %RBP_val.145, -112, !mcsema_real_eip !107
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !107
  %220 = load i64, i64* %219, !mcsema_real_eip !107
  store i64 %220, i64* %XCX, !mcsema_real_eip !107
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !108
  %ESI_val.171 = load i32, i32* %ESI.112, !mcsema_real_eip !108
  %222 = inttoptr i64 %220 to i32*, !mcsema_real_eip !108
  store i32 %ESI_val.171, i32* %222, !mcsema_real_eip !108
  %RBP_val.172 = load i64, i64* %XBP, !mcsema_real_eip !109
  %223 = add i64 %RBP_val.172, -36, !mcsema_real_eip !109
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !109
  %225 = inttoptr i64 %223 to i32*, !mcsema_real_eip !109
  %226 = load i32, i32* %225, !mcsema_real_eip !109
  %227 = zext i32 %226 to i64, !mcsema_real_eip !109
  store i64 %227, i64* %XSI, !mcsema_real_eip !109
  %228 = add i64 %RBP_val.172, -64, !mcsema_real_eip !110
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !110
  %230 = load i64, i64* %229, !mcsema_real_eip !110
  store i64 %230, i64* %XCX, !mcsema_real_eip !110
  %231 = add i64 %230, 4, !mcsema_real_eip !111
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !111
  %233 = inttoptr i64 %231 to i32*, !mcsema_real_eip !111
  %234 = load i32, i32* %233, !mcsema_real_eip !111
  %ESI_val.176 = load i32, i32* %ESI.112, !mcsema_real_eip !111
  %235 = add i32 %ESI_val.176, %234, !mcsema_real_eip !111
  %236 = xor i32 %235, %234, !mcsema_real_eip !111
  %237 = xor i32 %236, %ESI_val.176, !mcsema_real_eip !111
  %238 = and i32 %237, 16, !mcsema_real_eip !111
  %239 = icmp ne i32 %238, 0, !mcsema_real_eip !111
  store i1 %239, i1* %AF, !mcsema_real_eip !111
  %240 = lshr i32 %235, 31, !mcsema_real_eip !111
  %241 = trunc i32 %240 to i1, !mcsema_real_eip !111
  store i1 %241, i1* %SF, !mcsema_real_eip !111
  %242 = icmp eq i32 %235, 0, !mcsema_real_eip !111
  store i1 %242, i1* %ZF, !mcsema_real_eip !111
  %243 = xor i32 %234, %ESI_val.176, !mcsema_real_eip !111
  %244 = xor i32 %243, -1, !mcsema_real_eip !111
  %245 = and i32 %244, %236, !mcsema_real_eip !111
  %246 = lshr i32 %245, 31, !mcsema_real_eip !111
  %247 = and i32 %246, 1, !mcsema_real_eip !111
  %248 = trunc i32 %247 to i1, !mcsema_real_eip !111
  store i1 %248, i1* %OF, !mcsema_real_eip !111
  %249 = trunc i32 %235 to i8, !mcsema_real_eip !111
  %250 = call i8 @llvm.ctpop.i8(i8 %249), !mcsema_real_eip !111
  %251 = trunc i8 %250 to i1, !mcsema_real_eip !111
  %252 = xor i1 %251, true, !mcsema_real_eip !111
  store i1 %252, i1* %PF, !mcsema_real_eip !111
  %253 = icmp ult i32 %235, %234, !mcsema_real_eip !111
  store i1 %253, i1* %CF, !mcsema_real_eip !111
  %254 = zext i32 %235 to i64, !mcsema_real_eip !111
  store i64 %254, i64* %XSI, !mcsema_real_eip !111
  %255 = add i64 %RBP_val.172, -72, !mcsema_real_eip !112
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !112
  %257 = load i64, i64* %256, !mcsema_real_eip !112
  store i64 %257, i64* %XCX, !mcsema_real_eip !112
  %258 = add i64 %257, 4, !mcsema_real_eip !113
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !113
  %260 = inttoptr i64 %258 to i32*, !mcsema_real_eip !113
  %261 = load i32, i32* %260, !mcsema_real_eip !113
  %ESI_val.180 = load i32, i32* %ESI.112, !mcsema_real_eip !113
  %262 = add i32 %ESI_val.180, %261, !mcsema_real_eip !113
  %263 = xor i32 %262, %261, !mcsema_real_eip !113
  %264 = xor i32 %263, %ESI_val.180, !mcsema_real_eip !113
  %265 = and i32 %264, 16, !mcsema_real_eip !113
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !113
  store i1 %266, i1* %AF, !mcsema_real_eip !113
  %267 = lshr i32 %262, 31, !mcsema_real_eip !113
  %268 = trunc i32 %267 to i1, !mcsema_real_eip !113
  store i1 %268, i1* %SF, !mcsema_real_eip !113
  %269 = icmp eq i32 %262, 0, !mcsema_real_eip !113
  store i1 %269, i1* %ZF, !mcsema_real_eip !113
  %270 = xor i32 %261, %ESI_val.180, !mcsema_real_eip !113
  %271 = xor i32 %270, -1, !mcsema_real_eip !113
  %272 = and i32 %271, %263, !mcsema_real_eip !113
  %273 = lshr i32 %272, 31, !mcsema_real_eip !113
  %274 = and i32 %273, 1, !mcsema_real_eip !113
  %275 = trunc i32 %274 to i1, !mcsema_real_eip !113
  store i1 %275, i1* %OF, !mcsema_real_eip !113
  %276 = trunc i32 %262 to i8, !mcsema_real_eip !113
  %277 = call i8 @llvm.ctpop.i8(i8 %276), !mcsema_real_eip !113
  %278 = trunc i8 %277 to i1, !mcsema_real_eip !113
  %279 = xor i1 %278, true, !mcsema_real_eip !113
  store i1 %279, i1* %PF, !mcsema_real_eip !113
  %280 = icmp ult i32 %262, %261, !mcsema_real_eip !113
  store i1 %280, i1* %CF, !mcsema_real_eip !113
  %281 = zext i32 %262 to i64, !mcsema_real_eip !113
  store i64 %281, i64* %XSI, !mcsema_real_eip !113
  %RAX_val.181 = load i64, i64* %XAX, !mcsema_real_eip !114
  %282 = add i64 %RAX_val.181, 4, !mcsema_real_eip !114
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !114
  %284 = inttoptr i64 %282 to i32*, !mcsema_real_eip !114
  %285 = load i32, i32* %284, !mcsema_real_eip !114
  %286 = zext i32 %285 to i64, !mcsema_real_eip !114
  store i64 %286, i64* %R8, !mcsema_real_eip !114
  %287 = add i64 %RBP_val.172, -96, !mcsema_real_eip !115
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !115
  %289 = load i64, i64* %288, !mcsema_real_eip !115
  store i64 %289, i64* %XCX, !mcsema_real_eip !115
  %290 = add i64 %289, 4, !mcsema_real_eip !116
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !116
  %292 = inttoptr i64 %290 to i32*, !mcsema_real_eip !116
  %293 = load i32, i32* %292, !mcsema_real_eip !116
  %R8D_val.185 = load i32, i32* %R8D.126, !mcsema_real_eip !116
  %294 = add i32 %R8D_val.185, %293, !mcsema_real_eip !116
  %295 = xor i32 %294, %293, !mcsema_real_eip !116
  %296 = xor i32 %295, %R8D_val.185, !mcsema_real_eip !116
  %297 = and i32 %296, 16, !mcsema_real_eip !116
  %298 = icmp ne i32 %297, 0, !mcsema_real_eip !116
  store i1 %298, i1* %AF, !mcsema_real_eip !116
  %299 = lshr i32 %294, 31, !mcsema_real_eip !116
  %300 = trunc i32 %299 to i1, !mcsema_real_eip !116
  store i1 %300, i1* %SF, !mcsema_real_eip !116
  %301 = icmp eq i32 %294, 0, !mcsema_real_eip !116
  store i1 %301, i1* %ZF, !mcsema_real_eip !116
  %302 = xor i32 %293, %R8D_val.185, !mcsema_real_eip !116
  %303 = xor i32 %302, -1, !mcsema_real_eip !116
  %304 = and i32 %303, %295, !mcsema_real_eip !116
  %305 = lshr i32 %304, 31, !mcsema_real_eip !116
  %306 = and i32 %305, 1, !mcsema_real_eip !116
  %307 = trunc i32 %306 to i1, !mcsema_real_eip !116
  store i1 %307, i1* %OF, !mcsema_real_eip !116
  %308 = trunc i32 %294 to i8, !mcsema_real_eip !116
  %309 = call i8 @llvm.ctpop.i8(i8 %308), !mcsema_real_eip !116
  %310 = trunc i8 %309 to i1, !mcsema_real_eip !116
  %311 = xor i1 %310, true, !mcsema_real_eip !116
  store i1 %311, i1* %PF, !mcsema_real_eip !116
  %312 = icmp ult i32 %294, %293, !mcsema_real_eip !116
  store i1 %312, i1* %CF, !mcsema_real_eip !116
  %313 = zext i32 %294 to i64, !mcsema_real_eip !116
  store i64 %313, i64* %R8, !mcsema_real_eip !116
  %314 = add i64 %RBP_val.172, -104, !mcsema_real_eip !117
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !117
  %316 = load i64, i64* %315, !mcsema_real_eip !117
  store i64 %316, i64* %XCX, !mcsema_real_eip !117
  %317 = add i64 %316, 4, !mcsema_real_eip !118
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !118
  %319 = inttoptr i64 %317 to i32*, !mcsema_real_eip !118
  %320 = load i32, i32* %319, !mcsema_real_eip !118
  %R8D_val.189 = load i32, i32* %R8D.126, !mcsema_real_eip !118
  %321 = add i32 %R8D_val.189, %320, !mcsema_real_eip !118
  %322 = xor i32 %321, %320, !mcsema_real_eip !118
  %323 = xor i32 %322, %R8D_val.189, !mcsema_real_eip !118
  %324 = and i32 %323, 16, !mcsema_real_eip !118
  %325 = icmp ne i32 %324, 0, !mcsema_real_eip !118
  store i1 %325, i1* %AF, !mcsema_real_eip !118
  %326 = lshr i32 %321, 31, !mcsema_real_eip !118
  %327 = trunc i32 %326 to i1, !mcsema_real_eip !118
  store i1 %327, i1* %SF, !mcsema_real_eip !118
  %328 = icmp eq i32 %321, 0, !mcsema_real_eip !118
  store i1 %328, i1* %ZF, !mcsema_real_eip !118
  %329 = xor i32 %320, %R8D_val.189, !mcsema_real_eip !118
  %330 = xor i32 %329, -1, !mcsema_real_eip !118
  %331 = and i32 %330, %322, !mcsema_real_eip !118
  %332 = lshr i32 %331, 31, !mcsema_real_eip !118
  %333 = and i32 %332, 1, !mcsema_real_eip !118
  %334 = trunc i32 %333 to i1, !mcsema_real_eip !118
  store i1 %334, i1* %OF, !mcsema_real_eip !118
  %335 = trunc i32 %321 to i8, !mcsema_real_eip !118
  %336 = call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !118
  %337 = trunc i8 %336 to i1, !mcsema_real_eip !118
  %338 = xor i1 %337, true, !mcsema_real_eip !118
  store i1 %338, i1* %PF, !mcsema_real_eip !118
  %339 = icmp ult i32 %321, %320, !mcsema_real_eip !118
  store i1 %339, i1* %CF, !mcsema_real_eip !118
  %340 = zext i32 %321 to i64, !mcsema_real_eip !118
  store i64 %340, i64* %R8, !mcsema_real_eip !118
  %ESI_val.191 = load i32, i32* %ESI.112, !mcsema_real_eip !119
  %R8D_val.193 = load i32, i32* %R8D.126, !mcsema_real_eip !119
  %341 = add i32 %R8D_val.193, %ESI_val.191, !mcsema_real_eip !119
  %342 = xor i32 %341, %ESI_val.191, !mcsema_real_eip !119
  %343 = xor i32 %342, %R8D_val.193, !mcsema_real_eip !119
  %344 = and i32 %343, 16, !mcsema_real_eip !119
  %345 = icmp ne i32 %344, 0, !mcsema_real_eip !119
  store i1 %345, i1* %AF, !mcsema_real_eip !119
  %346 = lshr i32 %341, 31, !mcsema_real_eip !119
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !119
  store i1 %347, i1* %SF, !mcsema_real_eip !119
  %348 = icmp eq i32 %341, 0, !mcsema_real_eip !119
  store i1 %348, i1* %ZF, !mcsema_real_eip !119
  %349 = xor i32 %ESI_val.191, %R8D_val.193, !mcsema_real_eip !119
  %350 = xor i32 %349, -1, !mcsema_real_eip !119
  %351 = and i32 %350, %342, !mcsema_real_eip !119
  %352 = lshr i32 %351, 31, !mcsema_real_eip !119
  %353 = and i32 %352, 1, !mcsema_real_eip !119
  %354 = trunc i32 %353 to i1, !mcsema_real_eip !119
  store i1 %354, i1* %OF, !mcsema_real_eip !119
  %355 = trunc i32 %341 to i8, !mcsema_real_eip !119
  %356 = call i8 @llvm.ctpop.i8(i8 %355), !mcsema_real_eip !119
  %357 = trunc i8 %356 to i1, !mcsema_real_eip !119
  %358 = xor i1 %357, true, !mcsema_real_eip !119
  store i1 %358, i1* %PF, !mcsema_real_eip !119
  %359 = icmp ult i32 %341, %ESI_val.191, !mcsema_real_eip !119
  store i1 %359, i1* %CF, !mcsema_real_eip !119
  %360 = zext i32 %341 to i64, !mcsema_real_eip !119
  store i64 %360, i64* %XSI, !mcsema_real_eip !119
  %361 = add i64 %RBP_val.172, -112, !mcsema_real_eip !120
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !120
  %363 = load i64, i64* %362, !mcsema_real_eip !120
  store i64 %363, i64* %XCX, !mcsema_real_eip !120
  %364 = add i64 %363, 4, !mcsema_real_eip !121
  %365 = inttoptr i64 %364 to i64*, !mcsema_real_eip !121
  %ESI_val.197 = load i32, i32* %ESI.112, !mcsema_real_eip !121
  %366 = inttoptr i64 %364 to i32*, !mcsema_real_eip !121
  store i32 %ESI_val.197, i32* %366, !mcsema_real_eip !121
  %RBP_val.198 = load i64, i64* %XBP, !mcsema_real_eip !122
  %367 = add i64 %RBP_val.198, -32, !mcsema_real_eip !122
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !122
  %369 = inttoptr i64 %367 to i32*, !mcsema_real_eip !122
  %370 = load i32, i32* %369, !mcsema_real_eip !122
  %371 = zext i32 %370 to i64, !mcsema_real_eip !122
  store i64 %371, i64* %XSI, !mcsema_real_eip !122
  %372 = add i64 %RBP_val.198, -64, !mcsema_real_eip !123
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !123
  %374 = load i64, i64* %373, !mcsema_real_eip !123
  store i64 %374, i64* %XCX, !mcsema_real_eip !123
  %375 = add i64 %374, 8, !mcsema_real_eip !124
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !124
  %377 = inttoptr i64 %375 to i32*, !mcsema_real_eip !124
  %378 = load i32, i32* %377, !mcsema_real_eip !124
  %ESI_val.202 = load i32, i32* %ESI.112, !mcsema_real_eip !124
  %379 = add i32 %ESI_val.202, %378, !mcsema_real_eip !124
  %380 = xor i32 %379, %378, !mcsema_real_eip !124
  %381 = xor i32 %380, %ESI_val.202, !mcsema_real_eip !124
  %382 = and i32 %381, 16, !mcsema_real_eip !124
  %383 = icmp ne i32 %382, 0, !mcsema_real_eip !124
  store i1 %383, i1* %AF, !mcsema_real_eip !124
  %384 = lshr i32 %379, 31, !mcsema_real_eip !124
  %385 = trunc i32 %384 to i1, !mcsema_real_eip !124
  store i1 %385, i1* %SF, !mcsema_real_eip !124
  %386 = icmp eq i32 %379, 0, !mcsema_real_eip !124
  store i1 %386, i1* %ZF, !mcsema_real_eip !124
  %387 = xor i32 %378, %ESI_val.202, !mcsema_real_eip !124
  %388 = xor i32 %387, -1, !mcsema_real_eip !124
  %389 = and i32 %388, %380, !mcsema_real_eip !124
  %390 = lshr i32 %389, 31, !mcsema_real_eip !124
  %391 = and i32 %390, 1, !mcsema_real_eip !124
  %392 = trunc i32 %391 to i1, !mcsema_real_eip !124
  store i1 %392, i1* %OF, !mcsema_real_eip !124
  %393 = trunc i32 %379 to i8, !mcsema_real_eip !124
  %394 = call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !124
  %395 = trunc i8 %394 to i1, !mcsema_real_eip !124
  %396 = xor i1 %395, true, !mcsema_real_eip !124
  store i1 %396, i1* %PF, !mcsema_real_eip !124
  %397 = icmp ult i32 %379, %378, !mcsema_real_eip !124
  store i1 %397, i1* %CF, !mcsema_real_eip !124
  %398 = zext i32 %379 to i64, !mcsema_real_eip !124
  store i64 %398, i64* %XSI, !mcsema_real_eip !124
  %399 = add i64 %RBP_val.198, -72, !mcsema_real_eip !125
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !125
  %401 = load i64, i64* %400, !mcsema_real_eip !125
  store i64 %401, i64* %XCX, !mcsema_real_eip !125
  %402 = add i64 %401, 8, !mcsema_real_eip !126
  %403 = inttoptr i64 %402 to i64*, !mcsema_real_eip !126
  %404 = inttoptr i64 %402 to i32*, !mcsema_real_eip !126
  %405 = load i32, i32* %404, !mcsema_real_eip !126
  %ESI_val.206 = load i32, i32* %ESI.112, !mcsema_real_eip !126
  %406 = add i32 %ESI_val.206, %405, !mcsema_real_eip !126
  %407 = xor i32 %406, %405, !mcsema_real_eip !126
  %408 = xor i32 %407, %ESI_val.206, !mcsema_real_eip !126
  %409 = and i32 %408, 16, !mcsema_real_eip !126
  %410 = icmp ne i32 %409, 0, !mcsema_real_eip !126
  store i1 %410, i1* %AF, !mcsema_real_eip !126
  %411 = lshr i32 %406, 31, !mcsema_real_eip !126
  %412 = trunc i32 %411 to i1, !mcsema_real_eip !126
  store i1 %412, i1* %SF, !mcsema_real_eip !126
  %413 = icmp eq i32 %406, 0, !mcsema_real_eip !126
  store i1 %413, i1* %ZF, !mcsema_real_eip !126
  %414 = xor i32 %405, %ESI_val.206, !mcsema_real_eip !126
  %415 = xor i32 %414, -1, !mcsema_real_eip !126
  %416 = and i32 %415, %407, !mcsema_real_eip !126
  %417 = lshr i32 %416, 31, !mcsema_real_eip !126
  %418 = and i32 %417, 1, !mcsema_real_eip !126
  %419 = trunc i32 %418 to i1, !mcsema_real_eip !126
  store i1 %419, i1* %OF, !mcsema_real_eip !126
  %420 = trunc i32 %406 to i8, !mcsema_real_eip !126
  %421 = call i8 @llvm.ctpop.i8(i8 %420), !mcsema_real_eip !126
  %422 = trunc i8 %421 to i1, !mcsema_real_eip !126
  %423 = xor i1 %422, true, !mcsema_real_eip !126
  store i1 %423, i1* %PF, !mcsema_real_eip !126
  %424 = icmp ult i32 %406, %405, !mcsema_real_eip !126
  store i1 %424, i1* %CF, !mcsema_real_eip !126
  %425 = zext i32 %406 to i64, !mcsema_real_eip !126
  store i64 %425, i64* %XSI, !mcsema_real_eip !126
  %RAX_val.207 = load i64, i64* %XAX, !mcsema_real_eip !127
  %426 = add i64 %RAX_val.207, 8, !mcsema_real_eip !127
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !127
  %428 = inttoptr i64 %426 to i32*, !mcsema_real_eip !127
  %429 = load i32, i32* %428, !mcsema_real_eip !127
  %430 = zext i32 %429 to i64, !mcsema_real_eip !127
  store i64 %430, i64* %R8, !mcsema_real_eip !127
  %431 = add i64 %RBP_val.198, -96, !mcsema_real_eip !128
  %432 = inttoptr i64 %431 to i64*, !mcsema_real_eip !128
  %433 = load i64, i64* %432, !mcsema_real_eip !128
  store i64 %433, i64* %XCX, !mcsema_real_eip !128
  %434 = add i64 %433, 8, !mcsema_real_eip !129
  %435 = inttoptr i64 %434 to i64*, !mcsema_real_eip !129
  %436 = inttoptr i64 %434 to i32*, !mcsema_real_eip !129
  %437 = load i32, i32* %436, !mcsema_real_eip !129
  %R8D_val.211 = load i32, i32* %R8D.126, !mcsema_real_eip !129
  %438 = add i32 %R8D_val.211, %437, !mcsema_real_eip !129
  %439 = xor i32 %438, %437, !mcsema_real_eip !129
  %440 = xor i32 %439, %R8D_val.211, !mcsema_real_eip !129
  %441 = and i32 %440, 16, !mcsema_real_eip !129
  %442 = icmp ne i32 %441, 0, !mcsema_real_eip !129
  store i1 %442, i1* %AF, !mcsema_real_eip !129
  %443 = lshr i32 %438, 31, !mcsema_real_eip !129
  %444 = trunc i32 %443 to i1, !mcsema_real_eip !129
  store i1 %444, i1* %SF, !mcsema_real_eip !129
  %445 = icmp eq i32 %438, 0, !mcsema_real_eip !129
  store i1 %445, i1* %ZF, !mcsema_real_eip !129
  %446 = xor i32 %437, %R8D_val.211, !mcsema_real_eip !129
  %447 = xor i32 %446, -1, !mcsema_real_eip !129
  %448 = and i32 %447, %439, !mcsema_real_eip !129
  %449 = lshr i32 %448, 31, !mcsema_real_eip !129
  %450 = and i32 %449, 1, !mcsema_real_eip !129
  %451 = trunc i32 %450 to i1, !mcsema_real_eip !129
  store i1 %451, i1* %OF, !mcsema_real_eip !129
  %452 = trunc i32 %438 to i8, !mcsema_real_eip !129
  %453 = call i8 @llvm.ctpop.i8(i8 %452), !mcsema_real_eip !129
  %454 = trunc i8 %453 to i1, !mcsema_real_eip !129
  %455 = xor i1 %454, true, !mcsema_real_eip !129
  store i1 %455, i1* %PF, !mcsema_real_eip !129
  %456 = icmp ult i32 %438, %437, !mcsema_real_eip !129
  store i1 %456, i1* %CF, !mcsema_real_eip !129
  %457 = zext i32 %438 to i64, !mcsema_real_eip !129
  store i64 %457, i64* %R8, !mcsema_real_eip !129
  %458 = add i64 %RBP_val.198, -104, !mcsema_real_eip !130
  %459 = inttoptr i64 %458 to i64*, !mcsema_real_eip !130
  %460 = load i64, i64* %459, !mcsema_real_eip !130
  store i64 %460, i64* %XCX, !mcsema_real_eip !130
  %461 = add i64 %460, 8, !mcsema_real_eip !131
  %462 = inttoptr i64 %461 to i64*, !mcsema_real_eip !131
  %463 = inttoptr i64 %461 to i32*, !mcsema_real_eip !131
  %464 = load i32, i32* %463, !mcsema_real_eip !131
  %R8D_val.215 = load i32, i32* %R8D.126, !mcsema_real_eip !131
  %465 = add i32 %R8D_val.215, %464, !mcsema_real_eip !131
  %466 = xor i32 %465, %464, !mcsema_real_eip !131
  %467 = xor i32 %466, %R8D_val.215, !mcsema_real_eip !131
  %468 = and i32 %467, 16, !mcsema_real_eip !131
  %469 = icmp ne i32 %468, 0, !mcsema_real_eip !131
  store i1 %469, i1* %AF, !mcsema_real_eip !131
  %470 = lshr i32 %465, 31, !mcsema_real_eip !131
  %471 = trunc i32 %470 to i1, !mcsema_real_eip !131
  store i1 %471, i1* %SF, !mcsema_real_eip !131
  %472 = icmp eq i32 %465, 0, !mcsema_real_eip !131
  store i1 %472, i1* %ZF, !mcsema_real_eip !131
  %473 = xor i32 %464, %R8D_val.215, !mcsema_real_eip !131
  %474 = xor i32 %473, -1, !mcsema_real_eip !131
  %475 = and i32 %474, %466, !mcsema_real_eip !131
  %476 = lshr i32 %475, 31, !mcsema_real_eip !131
  %477 = and i32 %476, 1, !mcsema_real_eip !131
  %478 = trunc i32 %477 to i1, !mcsema_real_eip !131
  store i1 %478, i1* %OF, !mcsema_real_eip !131
  %479 = trunc i32 %465 to i8, !mcsema_real_eip !131
  %480 = call i8 @llvm.ctpop.i8(i8 %479), !mcsema_real_eip !131
  %481 = trunc i8 %480 to i1, !mcsema_real_eip !131
  %482 = xor i1 %481, true, !mcsema_real_eip !131
  store i1 %482, i1* %PF, !mcsema_real_eip !131
  %483 = icmp ult i32 %465, %464, !mcsema_real_eip !131
  store i1 %483, i1* %CF, !mcsema_real_eip !131
  %484 = zext i32 %465 to i64, !mcsema_real_eip !131
  store i64 %484, i64* %R8, !mcsema_real_eip !131
  %ESI_val.217 = load i32, i32* %ESI.112, !mcsema_real_eip !132
  %R8D_val.219 = load i32, i32* %R8D.126, !mcsema_real_eip !132
  %485 = add i32 %R8D_val.219, %ESI_val.217, !mcsema_real_eip !132
  %486 = xor i32 %485, %ESI_val.217, !mcsema_real_eip !132
  %487 = xor i32 %486, %R8D_val.219, !mcsema_real_eip !132
  %488 = and i32 %487, 16, !mcsema_real_eip !132
  %489 = icmp ne i32 %488, 0, !mcsema_real_eip !132
  store i1 %489, i1* %AF, !mcsema_real_eip !132
  %490 = lshr i32 %485, 31, !mcsema_real_eip !132
  %491 = trunc i32 %490 to i1, !mcsema_real_eip !132
  store i1 %491, i1* %SF, !mcsema_real_eip !132
  %492 = icmp eq i32 %485, 0, !mcsema_real_eip !132
  store i1 %492, i1* %ZF, !mcsema_real_eip !132
  %493 = xor i32 %ESI_val.217, %R8D_val.219, !mcsema_real_eip !132
  %494 = xor i32 %493, -1, !mcsema_real_eip !132
  %495 = and i32 %494, %486, !mcsema_real_eip !132
  %496 = lshr i32 %495, 31, !mcsema_real_eip !132
  %497 = and i32 %496, 1, !mcsema_real_eip !132
  %498 = trunc i32 %497 to i1, !mcsema_real_eip !132
  store i1 %498, i1* %OF, !mcsema_real_eip !132
  %499 = trunc i32 %485 to i8, !mcsema_real_eip !132
  %500 = call i8 @llvm.ctpop.i8(i8 %499), !mcsema_real_eip !132
  %501 = trunc i8 %500 to i1, !mcsema_real_eip !132
  %502 = xor i1 %501, true, !mcsema_real_eip !132
  store i1 %502, i1* %PF, !mcsema_real_eip !132
  %503 = icmp ult i32 %485, %ESI_val.217, !mcsema_real_eip !132
  store i1 %503, i1* %CF, !mcsema_real_eip !132
  %504 = zext i32 %485 to i64, !mcsema_real_eip !132
  store i64 %504, i64* %XSI, !mcsema_real_eip !132
  %505 = add i64 %RBP_val.198, -112, !mcsema_real_eip !133
  %506 = inttoptr i64 %505 to i64*, !mcsema_real_eip !133
  %507 = load i64, i64* %506, !mcsema_real_eip !133
  store i64 %507, i64* %XCX, !mcsema_real_eip !133
  %508 = add i64 %507, 8, !mcsema_real_eip !134
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !134
  %ESI_val.223 = load i32, i32* %ESI.112, !mcsema_real_eip !134
  %510 = inttoptr i64 %508 to i32*, !mcsema_real_eip !134
  store i32 %ESI_val.223, i32* %510, !mcsema_real_eip !134
  %RBP_val.224 = load i64, i64* %XBP, !mcsema_real_eip !135
  %511 = add i64 %RBP_val.224, -112, !mcsema_real_eip !135
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !135
  %513 = load i64, i64* %512, !mcsema_real_eip !135
  store i64 %513, i64* %XAX, !mcsema_real_eip !135
  %RSP_val.225 = load i64, i64* %XSP, !mcsema_real_eip !136
  %514 = add i64 104, %RSP_val.225, !mcsema_real_eip !136
  %515 = xor i64 %514, %RSP_val.225, !mcsema_real_eip !136
  %516 = xor i64 %515, 104, !mcsema_real_eip !136
  %517 = and i64 %516, 16, !mcsema_real_eip !136
  %518 = icmp ne i64 %517, 0, !mcsema_real_eip !136
  store i1 %518, i1* %AF, !mcsema_real_eip !136
  %519 = lshr i64 %514, 63, !mcsema_real_eip !136
  %520 = trunc i64 %519 to i1, !mcsema_real_eip !136
  store i1 %520, i1* %SF, !mcsema_real_eip !136
  %521 = icmp eq i64 %514, 0, !mcsema_real_eip !136
  store i1 %521, i1* %ZF, !mcsema_real_eip !136
  %522 = xor i64 %RSP_val.225, 104, !mcsema_real_eip !136
  %523 = xor i64 %522, -1, !mcsema_real_eip !136
  %524 = and i64 %523, %515, !mcsema_real_eip !136
  %525 = lshr i64 %524, 63, !mcsema_real_eip !136
  %526 = and i64 %525, 1, !mcsema_real_eip !136
  %527 = trunc i64 %526 to i1, !mcsema_real_eip !136
  store i1 %527, i1* %OF, !mcsema_real_eip !136
  %528 = trunc i64 %514 to i8, !mcsema_real_eip !136
  %529 = call i8 @llvm.ctpop.i8(i8 %528), !mcsema_real_eip !136
  %530 = trunc i8 %529 to i1, !mcsema_real_eip !136
  %531 = xor i1 %530, true, !mcsema_real_eip !136
  store i1 %531, i1* %PF, !mcsema_real_eip !136
  %532 = icmp ult i64 %514, %RSP_val.225, !mcsema_real_eip !136
  store i1 %532, i1* %CF, !mcsema_real_eip !136
  store i64 %514, i64* %XSP, !mcsema_real_eip !136
  %533 = inttoptr i64 %514 to i64*, !mcsema_real_eip !137
  %534 = load i64, i64* %533, !mcsema_real_eip !137
  store i64 %534, i64* %XBX, !mcsema_real_eip !137
  %535 = add i64 %514, 8, !mcsema_real_eip !137
  store i64 %535, i64* %XSP, !mcsema_real_eip !137
  %536 = inttoptr i64 %535 to i64*, !mcsema_real_eip !138
  %537 = load i64, i64* %536, !mcsema_real_eip !138
  store i64 %537, i64* %R14, !mcsema_real_eip !138
  %538 = add i64 %535, 8, !mcsema_real_eip !138
  store i64 %538, i64* %XSP, !mcsema_real_eip !138
  %539 = inttoptr i64 %538 to i64*, !mcsema_real_eip !139
  %540 = load i64, i64* %539, !mcsema_real_eip !139
  store i64 %540, i64* %R15, !mcsema_real_eip !139
  %541 = add i64 %538, 8, !mcsema_real_eip !139
  store i64 %541, i64* %XSP, !mcsema_real_eip !139
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !140
  %543 = load i64, i64* %542, !mcsema_real_eip !140
  store i64 %543, i64* %XBP, !mcsema_real_eip !140
  %544 = add i64 %541, 8, !mcsema_real_eip !140
  store i64 %544, i64* %XSP, !mcsema_real_eip !140
  %545 = add i64 %544, 8, !mcsema_real_eip !141
  %546 = inttoptr i64 %544 to i64*, !mcsema_real_eip !141
  %547 = load i64, i64* %546, !mcsema_real_eip !141
  store i64 %547, i64* %XIP, !mcsema_real_eip !141
  store i64 %545, i64* %XSP, !mcsema_real_eip !141
  ret void, !mcsema_real_eip !141
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
define x86_64_sysvcc void @sub_100.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 144
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 144
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
  br label %block_0x100, !mcsema_real_eip !2

block_0x100:                                      ; preds = %entry
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -128
  %2 = sub i64 %RSP_val.3, 128, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 128, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 128
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 128
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  store i64 12, i64* %XAX, !mcsema_real_eip !5
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !6
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !6
  %14 = zext i32 %EAX_val.5 to i64, !mcsema_real_eip !6
  store i64 %14, i64* %XDI, !mcsema_real_eip !6
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !7
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %16, !mcsema_real_eip !7
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %17 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !8
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %18, !mcsema_real_eip !8
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %19 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !9
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %20, !mcsema_real_eip !9
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %21 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !10
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !10
  store i32 10, i32* %22, !mcsema_real_eip !10
  %RDI_val.10 = load i64, i64* %XDI, !mcsema_real_eip !11
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !11
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %23 = sub i64 %RSP_val.11, 8, !mcsema_real_eip !11
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !11
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %23, i64* %XSP, !mcsema_real_eip !11
  %24 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.10)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %24, i64* %XAX, !mcsema_real_eip !11
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %25 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !12
  store i64 %25, i64* %XDI, !mcsema_real_eip !12
  store i64 1, i64* %R8, !mcsema_real_eip !13
  store i64 2, i64* %R9, !mcsema_real_eip !14
  store i64 3, i64* %XCX, !mcsema_real_eip !15
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %24, i64* %_allin_new_bt_33, !mcsema_real_eip !16
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
  br i1 %_cond1_n_cond2_cond3_, label %26, label %27

; <label>:26:                                     ; preds = %block_0x100
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %27

; <label>:27:                                     ; preds = %block_0x100, %26
  %28 = phi i64* [ %_allin_new_bt_36, %block_0x100 ], [ %_address_in_parent_stack_bt_, %26 ]
  %_new_load_ = load i64, i64* %28
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !17
  %29 = inttoptr i64 %_new_load_ to i64*, !mcsema_real_eip !18
  %30 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !18
  store i32 5, i32* %30, !mcsema_real_eip !18
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_167 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_170 = sub i64 %_ptr_to_int_167, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  br i1 %_cond1_n_cond2_cond3_178, label %31, label %32

; <label>:31:                                     ; preds = %27
  %_address_in_parent_stack_bt_180 = bitcast i8* %_pot_address_in_parent_stack_171 to i64*
  br label %32

; <label>:32:                                     ; preds = %27, %31
  %33 = phi i64* [ %_allin_new_bt_39, %27 ], [ %_address_in_parent_stack_bt_180, %31 ]
  %_new_load_181 = load i64, i64* %33
  store i64 %_new_load_181, i64* %XAX, !mcsema_real_eip !19
  %34 = add i64 %_new_load_181, 4, !mcsema_real_eip !20
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !20
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !20
  store i32 5, i32* %36, !mcsema_real_eip !20
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_182 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_185 = sub i64 %_ptr_to_int_182, %_local_end_to_int_
  %_pot_address_in_parent_stack_186 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_185
  %_cond1_187 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_188 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_189 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_190 = or i1 %_cond2_1_188, %_cond2_2_189
  %_cond4_191 = icmp ule i8* %_pot_address_in_parent_stack_186, %_parent_stack_end_ptr_
  %_cond1_n_cond2_192 = and i1 %_cond1_187, %_cond2_190
  %_cond1_n_cond2_cond3_193 = and i1 %_cond1_n_cond2_192, %_cond4_191
  br i1 %_cond1_n_cond2_cond3_193, label %37, label %38

; <label>:37:                                     ; preds = %32
  %_address_in_parent_stack_bt_195 = bitcast i8* %_pot_address_in_parent_stack_186 to i64*
  br label %38

; <label>:38:                                     ; preds = %32, %37
  %39 = phi i64* [ %_allin_new_bt_42, %32 ], [ %_address_in_parent_stack_bt_195, %37 ]
  %_new_load_196 = load i64, i64* %39
  store i64 %_new_load_196, i64* %XAX, !mcsema_real_eip !21
  %40 = add i64 %_new_load_196, 8, !mcsema_real_eip !22
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !22
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !22
  store i32 5, i32* %42, !mcsema_real_eip !22
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_197 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_200 = sub i64 %_ptr_to_int_197, %_local_end_to_int_
  %_pot_address_in_parent_stack_201 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_200
  %_cond1_202 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_203 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_204 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_205 = or i1 %_cond2_1_203, %_cond2_2_204
  %_cond4_206 = icmp ule i8* %_pot_address_in_parent_stack_201, %_parent_stack_end_ptr_
  %_cond1_n_cond2_207 = and i1 %_cond1_202, %_cond2_205
  %_cond1_n_cond2_cond3_208 = and i1 %_cond1_n_cond2_207, %_cond4_206
  br i1 %_cond1_n_cond2_cond3_208, label %43, label %44

; <label>:43:                                     ; preds = %38
  %_address_in_parent_stack_bt_210 = bitcast i8* %_pot_address_in_parent_stack_201 to i64*
  br label %44

; <label>:44:                                     ; preds = %38, %43
  %45 = phi i64* [ %_allin_new_bt_45, %38 ], [ %_address_in_parent_stack_bt_210, %43 ]
  %_new_load_211 = load i64, i64* %45
  store i64 %_new_load_211, i64* %XAX, !mcsema_real_eip !23
  br i1 %_cond1_n_cond2_cond3_208, label %46, label %47

; <label>:46:                                     ; preds = %44
  %_address_in_parent_stack_bt_225 = bitcast i8* %_pot_address_in_parent_stack_201 to i64*
  br label %47

; <label>:47:                                     ; preds = %44, %46
  %48 = phi i64* [ %_allin_new_bt_45, %44 ], [ %_address_in_parent_stack_bt_225, %46 ]
  %_new_load_226 = load i64, i64* %48
  store i64 %_new_load_226, i64* %XDX, !mcsema_real_eip !24
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %_ptr_to_int_227 = ptrtoint i64* %_allin_new_bt_51 to i64
  %_offset_above_rbp_230 = sub i64 %_ptr_to_int_227, %_local_end_to_int_
  %_pot_address_in_parent_stack_231 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_230
  %_cond1_232 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_233 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_234 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_235 = or i1 %_cond2_1_233, %_cond2_2_234
  %_cond4_236 = icmp ule i8* %_pot_address_in_parent_stack_231, %_parent_stack_end_ptr_
  %_cond1_n_cond2_237 = and i1 %_cond1_232, %_cond2_235
  %_cond1_n_cond2_cond3_238 = and i1 %_cond1_n_cond2_237, %_cond4_236
  br i1 %_cond1_n_cond2_cond3_238, label %49, label %50

; <label>:49:                                     ; preds = %47
  %_address_in_parent_stack_bt_240 = bitcast i8* %_pot_address_in_parent_stack_231 to i64*
  br label %50

; <label>:50:                                     ; preds = %47, %49
  %51 = phi i64* [ %_allin_new_bt_51, %47 ], [ %_address_in_parent_stack_bt_240, %49 ]
  %_new_load_241 = load i64, i64* %51
  store i64 %_new_load_241, i64* %XSI, !mcsema_real_eip !25
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -48
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 %_new_load_241, i64* %_allin_new_bt_54, !mcsema_real_eip !26
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -8
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %52 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !27
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !27
  %_ptr_bt_244 = bitcast i32* %53 to i8*
  %_offset_above_rbp_245 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_246 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_245
  %_cond1_247 = icmp ugt i8* %_ptr_bt_244, %_local_stack_end_ptr_
  %_cond2_1_248 = icmp ugt i8* %_ptr_bt_244, %_parent_stack_end_ptr_
  %_cond2_2_249 = icmp ult i8* %_ptr_bt_244, %_parent_stack_start_ptr_
  %_cond2_250 = or i1 %_cond2_1_248, %_cond2_2_249
  %_cond4_251 = icmp ule i8* %_pot_address_in_parent_stack_246, %_parent_stack_end_ptr_
  %_cond1_n_cond2_252 = and i1 %_cond1_247, %_cond2_250
  %_cond1_n_cond2_cond3_253 = and i1 %_cond1_n_cond2_252, %_cond4_251
  br i1 %_cond1_n_cond2_cond3_253, label %54, label %55

; <label>:54:                                     ; preds = %50
  %_address_in_parent_stack_bt_255 = bitcast i8* %_pot_address_in_parent_stack_246 to i32*
  br label %55

; <label>:55:                                     ; preds = %50, %54
  %56 = phi i32* [ %53, %50 ], [ %_address_in_parent_stack_bt_255, %54 ]
  %_new_load_256 = load i32, i32* %56
  %57 = zext i32 %_new_load_256 to i64, !mcsema_real_eip !27
  store i64 %57, i64* %R10, !mcsema_real_eip !27
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -40
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %R10D.28 = bitcast i64* %R10 to i32*, !mcsema_real_eip !28
  %R10D_val.29 = load i32, i32* %R10D.28, !mcsema_real_eip !28
  %58 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !28
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !28
  store i32 %R10D_val.29, i32* %59, !mcsema_real_eip !28
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -48
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %_ptr_to_int_257 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_260 = sub i64 %_ptr_to_int_257, %_local_end_to_int_
  %_pot_address_in_parent_stack_261 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_260
  %_cond1_262 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_263 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_264 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_265 = or i1 %_cond2_1_263, %_cond2_2_264
  %_cond4_266 = icmp ule i8* %_pot_address_in_parent_stack_261, %_parent_stack_end_ptr_
  %_cond1_n_cond2_267 = and i1 %_cond1_262, %_cond2_265
  %_cond1_n_cond2_cond3_268 = and i1 %_cond1_n_cond2_267, %_cond4_266
  br i1 %_cond1_n_cond2_cond3_268, label %60, label %61

; <label>:60:                                     ; preds = %55
  %_address_in_parent_stack_bt_270 = bitcast i8* %_pot_address_in_parent_stack_261 to i64*
  br label %61

; <label>:61:                                     ; preds = %55, %60
  %62 = phi i64* [ %_allin_new_bt_63, %55 ], [ %_address_in_parent_stack_bt_270, %60 ]
  %_new_load_271 = load i64, i64* %62
  store i64 %_new_load_271, i64* %XSI, !mcsema_real_eip !29
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -40
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %63 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !30
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !30
  %_ptr_bt_274 = bitcast i32* %64 to i8*
  %_offset_above_rbp_275 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_276 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_275
  %_cond1_277 = icmp ugt i8* %_ptr_bt_274, %_local_stack_end_ptr_
  %_cond2_1_278 = icmp ugt i8* %_ptr_bt_274, %_parent_stack_end_ptr_
  %_cond2_2_279 = icmp ult i8* %_ptr_bt_274, %_parent_stack_start_ptr_
  %_cond2_280 = or i1 %_cond2_1_278, %_cond2_2_279
  %_cond4_281 = icmp ule i8* %_pot_address_in_parent_stack_276, %_parent_stack_end_ptr_
  %_cond1_n_cond2_282 = and i1 %_cond1_277, %_cond2_280
  %_cond1_n_cond2_cond3_283 = and i1 %_cond1_n_cond2_282, %_cond4_281
  br i1 %_cond1_n_cond2_cond3_283, label %65, label %66

; <label>:65:                                     ; preds = %61
  %_address_in_parent_stack_bt_285 = bitcast i8* %_pot_address_in_parent_stack_276 to i32*
  br label %66

; <label>:66:                                     ; preds = %61, %65
  %67 = phi i32* [ %64, %61 ], [ %_address_in_parent_stack_bt_285, %65 ]
  %_new_load_286 = load i32, i32* %67
  %68 = zext i32 %_new_load_286 to i64, !mcsema_real_eip !30
  store i64 %68, i64* %R10, !mcsema_real_eip !30
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -64
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %RDI_val.33 = load i64, i64* %XDI, !mcsema_real_eip !31
  store i64 %RDI_val.33, i64* %_allin_new_bt_69, !mcsema_real_eip !31
  %RSI_val.34 = load i64, i64* %XSI, !mcsema_real_eip !32
  store i64 %RSI_val.34, i64* %XDI, !mcsema_real_eip !32
  %R10D_val.36 = load i32, i32* %R10D.28, !mcsema_real_eip !33
  %69 = zext i32 %R10D_val.36 to i64, !mcsema_real_eip !33
  store i64 %69, i64* %XSI, !mcsema_real_eip !33
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -64
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %_ptr_to_int_287 = ptrtoint i64* %_allin_new_bt_72 to i64
  %_offset_above_rbp_290 = sub i64 %_ptr_to_int_287, %_local_end_to_int_
  %_pot_address_in_parent_stack_291 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_290
  %_cond1_292 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_293 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_294 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_295 = or i1 %_cond2_1_293, %_cond2_2_294
  %_cond4_296 = icmp ule i8* %_pot_address_in_parent_stack_291, %_parent_stack_end_ptr_
  %_cond1_n_cond2_297 = and i1 %_cond1_292, %_cond2_295
  %_cond1_n_cond2_cond3_298 = and i1 %_cond1_n_cond2_297, %_cond4_296
  br i1 %_cond1_n_cond2_cond3_298, label %70, label %71

; <label>:70:                                     ; preds = %66
  %_address_in_parent_stack_bt_300 = bitcast i8* %_pot_address_in_parent_stack_291 to i64*
  br label %71

; <label>:71:                                     ; preds = %66, %70
  %72 = phi i64* [ %_allin_new_bt_72, %66 ], [ %_address_in_parent_stack_bt_300, %70 ]
  %_new_load_301 = load i64, i64* %72
  store i64 %_new_load_301, i64* %R11, !mcsema_real_eip !34
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -72
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %RDX_val.39 = load i64, i64* %XDX, !mcsema_real_eip !35
  store i64 %RDX_val.39, i64* %_allin_new_bt_75, !mcsema_real_eip !35
  %R11_val.40 = load i64, i64* %R11, !mcsema_real_eip !36
  store i64 %R11_val.40, i64* %XDX, !mcsema_real_eip !36
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -76
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %ECX.42 = bitcast i64* %XCX to i32*, !mcsema_real_eip !37
  %ECX_val.43 = load i32, i32* %ECX.42, !mcsema_real_eip !37
  %73 = ptrtoint i64* %_allin_new_bt_78 to i64, !mcsema_real_eip !37
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !37
  store i32 %ECX_val.43, i32* %74, !mcsema_real_eip !37
  %RAX_val.44 = load i64, i64* %XAX, !mcsema_real_eip !38
  store i64 %RAX_val.44, i64* %XCX, !mcsema_real_eip !38
  %_load_rsp_ptr_79 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_81 = bitcast i8* %_load_rsp_ptr_79 to i64*
  %75 = ptrtoint i64* %_allin_new_bt_81 to i64, !mcsema_real_eip !39
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !39
  store i32 3, i32* %76, !mcsema_real_eip !39
  %R11_val.46 = load i64, i64* %R11, !mcsema_real_eip !40
  %77 = inttoptr i64 %R11_val.46 to i64*, !mcsema_real_eip !40
  %_ptr_bt_304 = bitcast i64* %77 to i8*
  %_offset_above_rbp_305 = sub i64 %R11_val.46, %_local_end_to_int_
  %_pot_address_in_parent_stack_306 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_305
  %_cond1_307 = icmp ugt i8* %_ptr_bt_304, %_local_stack_end_ptr_
  %_cond2_1_308 = icmp ugt i8* %_ptr_bt_304, %_parent_stack_end_ptr_
  %_cond2_2_309 = icmp ult i8* %_ptr_bt_304, %_parent_stack_start_ptr_
  %_cond2_310 = or i1 %_cond2_1_308, %_cond2_2_309
  %_cond4_311 = icmp ule i8* %_pot_address_in_parent_stack_306, %_parent_stack_end_ptr_
  %_cond1_n_cond2_312 = and i1 %_cond1_307, %_cond2_310
  %_cond1_n_cond2_cond3_313 = and i1 %_cond1_n_cond2_312, %_cond4_311
  br i1 %_cond1_n_cond2_cond3_313, label %78, label %79

; <label>:78:                                     ; preds = %71
  %_address_in_parent_stack_bt_315 = bitcast i8* %_pot_address_in_parent_stack_306 to i64*
  br label %79

; <label>:79:                                     ; preds = %71, %78
  %80 = phi i64* [ %77, %71 ], [ %_address_in_parent_stack_bt_315, %78 ]
  %_new_load_316 = load i64, i64* %80
  store i64 %_new_load_316, i64* %XAX, !mcsema_real_eip !40
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %_new_gep_83 = getelementptr i8, i8* %_load_rsp_ptr_82, i64 8
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  store i64 %_new_load_316, i64* %_allin_new_bt_84, !mcsema_real_eip !41
  %R11_val.49 = load i64, i64* %R11, !mcsema_real_eip !42
  %81 = add i64 %R11_val.49, 8, !mcsema_real_eip !42
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !42
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !42
  %_ptr_bt_319 = bitcast i32* %83 to i8*
  %_offset_above_rbp_320 = sub i64 %81, %_local_end_to_int_
  %_pot_address_in_parent_stack_321 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_320
  %_cond1_322 = icmp ugt i8* %_ptr_bt_319, %_local_stack_end_ptr_
  %_cond2_1_323 = icmp ugt i8* %_ptr_bt_319, %_parent_stack_end_ptr_
  %_cond2_2_324 = icmp ult i8* %_ptr_bt_319, %_parent_stack_start_ptr_
  %_cond2_325 = or i1 %_cond2_1_323, %_cond2_2_324
  %_cond4_326 = icmp ule i8* %_pot_address_in_parent_stack_321, %_parent_stack_end_ptr_
  %_cond1_n_cond2_327 = and i1 %_cond1_322, %_cond2_325
  %_cond1_n_cond2_cond3_328 = and i1 %_cond1_n_cond2_327, %_cond4_326
  br i1 %_cond1_n_cond2_cond3_328, label %84, label %85

; <label>:84:                                     ; preds = %79
  %_address_in_parent_stack_bt_330 = bitcast i8* %_pot_address_in_parent_stack_321 to i32*
  br label %85

; <label>:85:                                     ; preds = %79, %84
  %86 = phi i32* [ %83, %79 ], [ %_address_in_parent_stack_bt_330, %84 ]
  %_new_load_331 = load i32, i32* %86
  %87 = zext i32 %_new_load_331 to i64, !mcsema_real_eip !42
  store i64 %87, i64* %R10, !mcsema_real_eip !42
  %_load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_
  %_new_gep_86 = getelementptr i8, i8* %_load_rsp_ptr_85, i64 16
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %R10D_val.52 = load i32, i32* %R10D.28, !mcsema_real_eip !43
  %88 = ptrtoint i64* %_allin_new_bt_87 to i64, !mcsema_real_eip !43
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !43
  store i32 %R10D_val.52, i32* %89, !mcsema_real_eip !43
  %_load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_
  %_new_gep_89 = getelementptr i8, i8* %_load_rsp_ptr_88, i64 24
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %R11_val.54 = load i64, i64* %R11, !mcsema_real_eip !44
  store i64 %R11_val.54, i64* %_allin_new_bt_90, !mcsema_real_eip !44
  %_load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_91, i64 -72
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %_ptr_to_int_332 = ptrtoint i64* %_allin_new_bt_93 to i64
  %_offset_above_rbp_335 = sub i64 %_ptr_to_int_332, %_local_end_to_int_
  %_pot_address_in_parent_stack_336 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_335
  %_cond1_337 = icmp ugt i8* %_new_gep_92, %_local_stack_end_ptr_
  %_cond2_1_338 = icmp ugt i8* %_new_gep_92, %_parent_stack_end_ptr_
  %_cond2_2_339 = icmp ult i8* %_new_gep_92, %_parent_stack_start_ptr_
  %_cond2_340 = or i1 %_cond2_1_338, %_cond2_2_339
  %_cond4_341 = icmp ule i8* %_pot_address_in_parent_stack_336, %_parent_stack_end_ptr_
  %_cond1_n_cond2_342 = and i1 %_cond1_337, %_cond2_340
  %_cond1_n_cond2_cond3_343 = and i1 %_cond1_n_cond2_342, %_cond4_341
  br i1 %_cond1_n_cond2_cond3_343, label %90, label %91

; <label>:90:                                     ; preds = %85
  %_address_in_parent_stack_bt_345 = bitcast i8* %_pot_address_in_parent_stack_336 to i64*
  br label %91

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i64* [ %_allin_new_bt_93, %85 ], [ %_address_in_parent_stack_bt_345, %90 ]
  %_new_load_346 = load i64, i64* %92
  store i64 %_new_load_346, i64* %XAX, !mcsema_real_eip !45
  %_load_rsp_ptr_94 = load i8*, i8** %_RSP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rsp_ptr_94, i64 32
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  store i64 %_new_load_346, i64* %_allin_new_bt_96, !mcsema_real_eip !46
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %RSP_val.58 = load i64, i64* %XSP, !mcsema_real_eip !47
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 -8
  %93 = sub i64 %RSP_val.58, 8, !mcsema_real_eip !47
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, !mcsema_real_eip !47
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_
  store i64 %93, i64* %XSP, !mcsema_real_eip !47
  %_load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_161)
  %_rsp_fix_163 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_164 = getelementptr i8, i8* %_rsp_fix_163, i64 8
  store i8* %_gep_fix_164, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, !mcsema_real_eip !48
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -32
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %RAX_val.60 = load i64, i64* %XAX, !mcsema_real_eip !49
  store i64 %RAX_val.60, i64* %_allin_new_bt_102, !mcsema_real_eip !49
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -32
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %_ptr_to_int_347 = ptrtoint i64* %_allin_new_bt_105 to i64
  %_offset_above_rbp_350 = sub i64 %_ptr_to_int_347, %_local_end_to_int_
  %_pot_address_in_parent_stack_351 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_350
  %_cond1_352 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_353 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_354 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_355 = or i1 %_cond2_1_353, %_cond2_2_354
  %_cond4_356 = icmp ule i8* %_pot_address_in_parent_stack_351, %_parent_stack_end_ptr_
  %_cond1_n_cond2_357 = and i1 %_cond1_352, %_cond2_355
  %_cond1_n_cond2_cond3_358 = and i1 %_cond1_n_cond2_357, %_cond4_356
  br i1 %_cond1_n_cond2_cond3_358, label %94, label %95

; <label>:94:                                     ; preds = %91
  %_address_in_parent_stack_bt_360 = bitcast i8* %_pot_address_in_parent_stack_351 to i64*
  br label %95

; <label>:95:                                     ; preds = %91, %94
  %96 = phi i64* [ %_allin_new_bt_105, %91 ], [ %_address_in_parent_stack_bt_360, %94 ]
  %_new_load_361 = load i64, i64* %96
  store i64 %_new_load_361, i64* %XAX, !mcsema_real_eip !50
  %97 = inttoptr i64 %_new_load_361 to i64*, !mcsema_real_eip !51
  %98 = inttoptr i64 %_new_load_361 to i32*, !mcsema_real_eip !51
  %_ptr_bt_364 = bitcast i32* %98 to i8*
  %_offset_above_rbp_365 = sub i64 %_new_load_361, %_local_end_to_int_
  %_pot_address_in_parent_stack_366 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_365
  %_cond1_367 = icmp ugt i8* %_ptr_bt_364, %_local_stack_end_ptr_
  %_cond2_1_368 = icmp ugt i8* %_ptr_bt_364, %_parent_stack_end_ptr_
  %_cond2_2_369 = icmp ult i8* %_ptr_bt_364, %_parent_stack_start_ptr_
  %_cond2_370 = or i1 %_cond2_1_368, %_cond2_2_369
  %_cond4_371 = icmp ule i8* %_pot_address_in_parent_stack_366, %_parent_stack_end_ptr_
  %_cond1_n_cond2_372 = and i1 %_cond1_367, %_cond2_370
  %_cond1_n_cond2_cond3_373 = and i1 %_cond1_n_cond2_372, %_cond4_371
  br i1 %_cond1_n_cond2_cond3_373, label %99, label %100

; <label>:99:                                     ; preds = %95
  %_address_in_parent_stack_bt_375 = bitcast i8* %_pot_address_in_parent_stack_366 to i32*
  br label %100

; <label>:100:                                    ; preds = %95, %99
  %101 = phi i32* [ %98, %95 ], [ %_address_in_parent_stack_bt_375, %99 ]
  %_new_load_376 = load i32, i32* %101
  %102 = zext i32 %_new_load_376 to i64, !mcsema_real_eip !51
  store i64 %102, i64* %XSI, !mcsema_real_eip !51
  br i1 %_cond1_n_cond2_cond3_358, label %103, label %104

; <label>:103:                                    ; preds = %100
  %_address_in_parent_stack_bt_390 = bitcast i8* %_pot_address_in_parent_stack_351 to i64*
  br label %104

; <label>:104:                                    ; preds = %100, %103
  %105 = phi i64* [ %_allin_new_bt_105, %100 ], [ %_address_in_parent_stack_bt_390, %103 ]
  %_new_load_391 = load i64, i64* %105
  store i64 %_new_load_391, i64* %XAX, !mcsema_real_eip !52
  %106 = add i64 %_new_load_391, 4, !mcsema_real_eip !53
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !53
  %108 = inttoptr i64 %106 to i32*, !mcsema_real_eip !53
  %_ptr_bt_394 = bitcast i32* %108 to i8*
  %_offset_above_rbp_395 = sub i64 %106, %_local_end_to_int_
  %_pot_address_in_parent_stack_396 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_395
  %_cond1_397 = icmp ugt i8* %_ptr_bt_394, %_local_stack_end_ptr_
  %_cond2_1_398 = icmp ugt i8* %_ptr_bt_394, %_parent_stack_end_ptr_
  %_cond2_2_399 = icmp ult i8* %_ptr_bt_394, %_parent_stack_start_ptr_
  %_cond2_400 = or i1 %_cond2_1_398, %_cond2_2_399
  %_cond4_401 = icmp ule i8* %_pot_address_in_parent_stack_396, %_parent_stack_end_ptr_
  %_cond1_n_cond2_402 = and i1 %_cond1_397, %_cond2_400
  %_cond1_n_cond2_cond3_403 = and i1 %_cond1_n_cond2_402, %_cond4_401
  br i1 %_cond1_n_cond2_cond3_403, label %109, label %110

; <label>:109:                                    ; preds = %104
  %_address_in_parent_stack_bt_405 = bitcast i8* %_pot_address_in_parent_stack_396 to i32*
  br label %110

; <label>:110:                                    ; preds = %104, %109
  %111 = phi i32* [ %108, %104 ], [ %_address_in_parent_stack_bt_405, %109 ]
  %_new_load_406 = load i32, i32* %111
  %ESI.65 = bitcast i64* %XSI to i32*, !mcsema_real_eip !53
  %ESI_val.66 = load i32, i32* %ESI.65, !mcsema_real_eip !53
  %112 = add i32 %ESI_val.66, %_new_load_406, !mcsema_real_eip !53
  %113 = xor i32 %112, %_new_load_406, !mcsema_real_eip !53
  %114 = xor i32 %113, %ESI_val.66, !mcsema_real_eip !53
  %115 = and i32 %114, 16, !mcsema_real_eip !53
  %116 = icmp ne i32 %115, 0, !mcsema_real_eip !53
  store i1 %116, i1* %AF, !mcsema_real_eip !53
  %117 = lshr i32 %112, 31, !mcsema_real_eip !53
  %118 = trunc i32 %117 to i1, !mcsema_real_eip !53
  store i1 %118, i1* %SF, !mcsema_real_eip !53
  %119 = icmp eq i32 %112, 0, !mcsema_real_eip !53
  store i1 %119, i1* %ZF, !mcsema_real_eip !53
  %120 = xor i32 %_new_load_406, %ESI_val.66, !mcsema_real_eip !53
  %121 = xor i32 %120, -1, !mcsema_real_eip !53
  %122 = and i32 %121, %113, !mcsema_real_eip !53
  %123 = lshr i32 %122, 31, !mcsema_real_eip !53
  %124 = and i32 %123, 1, !mcsema_real_eip !53
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !53
  store i1 %125, i1* %OF, !mcsema_real_eip !53
  %126 = trunc i32 %112 to i8, !mcsema_real_eip !53
  %127 = call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !53
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !53
  %129 = xor i1 %128, true, !mcsema_real_eip !53
  store i1 %129, i1* %PF, !mcsema_real_eip !53
  %130 = icmp ult i32 %112, %_new_load_406, !mcsema_real_eip !53
  store i1 %130, i1* %CF, !mcsema_real_eip !53
  %131 = zext i32 %112 to i64, !mcsema_real_eip !53
  store i64 %131, i64* %XSI, !mcsema_real_eip !53
  br i1 %_cond1_n_cond2_cond3_358, label %132, label %133

; <label>:132:                                    ; preds = %110
  %_address_in_parent_stack_bt_420 = bitcast i8* %_pot_address_in_parent_stack_351 to i64*
  br label %133

; <label>:133:                                    ; preds = %110, %132
  %134 = phi i64* [ %_allin_new_bt_105, %110 ], [ %_address_in_parent_stack_bt_420, %132 ]
  %_new_load_421 = load i64, i64* %134
  store i64 %_new_load_421, i64* %XAX, !mcsema_real_eip !54
  %135 = add i64 %_new_load_421, 8, !mcsema_real_eip !55
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !55
  %137 = inttoptr i64 %135 to i32*, !mcsema_real_eip !55
  %_ptr_bt_424 = bitcast i32* %137 to i8*
  %_offset_above_rbp_425 = sub i64 %135, %_local_end_to_int_
  %_pot_address_in_parent_stack_426 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_425
  %_cond1_427 = icmp ugt i8* %_ptr_bt_424, %_local_stack_end_ptr_
  %_cond2_1_428 = icmp ugt i8* %_ptr_bt_424, %_parent_stack_end_ptr_
  %_cond2_2_429 = icmp ult i8* %_ptr_bt_424, %_parent_stack_start_ptr_
  %_cond2_430 = or i1 %_cond2_1_428, %_cond2_2_429
  %_cond4_431 = icmp ule i8* %_pot_address_in_parent_stack_426, %_parent_stack_end_ptr_
  %_cond1_n_cond2_432 = and i1 %_cond1_427, %_cond2_430
  %_cond1_n_cond2_cond3_433 = and i1 %_cond1_n_cond2_432, %_cond4_431
  br i1 %_cond1_n_cond2_cond3_433, label %138, label %139

; <label>:138:                                    ; preds = %133
  %_address_in_parent_stack_bt_435 = bitcast i8* %_pot_address_in_parent_stack_426 to i32*
  br label %139

; <label>:139:                                    ; preds = %133, %138
  %140 = phi i32* [ %137, %133 ], [ %_address_in_parent_stack_bt_435, %138 ]
  %_new_load_436 = load i32, i32* %140
  %ESI_val.70 = load i32, i32* %ESI.65, !mcsema_real_eip !55
  %141 = add i32 %ESI_val.70, %_new_load_436, !mcsema_real_eip !55
  %142 = xor i32 %141, %_new_load_436, !mcsema_real_eip !55
  %143 = xor i32 %142, %ESI_val.70, !mcsema_real_eip !55
  %144 = and i32 %143, 16, !mcsema_real_eip !55
  %145 = icmp ne i32 %144, 0, !mcsema_real_eip !55
  store i1 %145, i1* %AF, !mcsema_real_eip !55
  %146 = lshr i32 %141, 31, !mcsema_real_eip !55
  %147 = trunc i32 %146 to i1, !mcsema_real_eip !55
  store i1 %147, i1* %SF, !mcsema_real_eip !55
  %148 = icmp eq i32 %141, 0, !mcsema_real_eip !55
  store i1 %148, i1* %ZF, !mcsema_real_eip !55
  %149 = xor i32 %_new_load_436, %ESI_val.70, !mcsema_real_eip !55
  %150 = xor i32 %149, -1, !mcsema_real_eip !55
  %151 = and i32 %150, %142, !mcsema_real_eip !55
  %152 = lshr i32 %151, 31, !mcsema_real_eip !55
  %153 = and i32 %152, 1, !mcsema_real_eip !55
  %154 = trunc i32 %153 to i1, !mcsema_real_eip !55
  store i1 %154, i1* %OF, !mcsema_real_eip !55
  %155 = trunc i32 %141 to i8, !mcsema_real_eip !55
  %156 = call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !55
  %157 = trunc i8 %156 to i1, !mcsema_real_eip !55
  %158 = xor i1 %157, true, !mcsema_real_eip !55
  store i1 %158, i1* %PF, !mcsema_real_eip !55
  %159 = icmp ult i32 %141, %_new_load_436, !mcsema_real_eip !55
  store i1 %159, i1* %CF, !mcsema_real_eip !55
  %160 = zext i32 %141 to i64, !mcsema_real_eip !55
  store i64 %160, i64* %XSI, !mcsema_real_eip !55
  %_new_gep_113 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -52
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %ESI_val.73 = load i32, i32* %ESI.65, !mcsema_real_eip !56
  %161 = ptrtoint i64* %_allin_new_bt_114 to i64, !mcsema_real_eip !56
  %162 = inttoptr i64 %161 to i32*, !mcsema_real_eip !56
  store i32 %ESI_val.73, i32* %162, !mcsema_real_eip !56
  %_load_rbp_ptr_115 = load i8*, i8** %_RBP_ptr_
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_115, i64 -52
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %163 = ptrtoint i64* %_allin_new_bt_117 to i64, !mcsema_real_eip !57
  %164 = inttoptr i64 %163 to i32*, !mcsema_real_eip !57
  %_ptr_bt_439 = bitcast i32* %164 to i8*
  %_offset_above_rbp_440 = sub i64 %163, %_local_end_to_int_
  %_pot_address_in_parent_stack_441 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_440
  %_cond1_442 = icmp ugt i8* %_ptr_bt_439, %_local_stack_end_ptr_
  %_cond2_1_443 = icmp ugt i8* %_ptr_bt_439, %_parent_stack_end_ptr_
  %_cond2_2_444 = icmp ult i8* %_ptr_bt_439, %_parent_stack_start_ptr_
  %_cond2_445 = or i1 %_cond2_1_443, %_cond2_2_444
  %_cond4_446 = icmp ule i8* %_pot_address_in_parent_stack_441, %_parent_stack_end_ptr_
  %_cond1_n_cond2_447 = and i1 %_cond1_442, %_cond2_445
  %_cond1_n_cond2_cond3_448 = and i1 %_cond1_n_cond2_447, %_cond4_446
  br i1 %_cond1_n_cond2_cond3_448, label %165, label %166

; <label>:165:                                    ; preds = %139
  %_address_in_parent_stack_bt_450 = bitcast i8* %_pot_address_in_parent_stack_441 to i32*
  br label %166

; <label>:166:                                    ; preds = %139, %165
  %167 = phi i32* [ %164, %139 ], [ %_address_in_parent_stack_bt_450, %165 ]
  %_new_load_451 = load i32, i32* %167
  %168 = zext i32 %_new_load_451 to i64, !mcsema_real_eip !57
  store i64 %168, i64* %XSI, !mcsema_real_eip !57
  %AL.75 = bitcast i64* %XAX to i8*, !mcsema_real_eip !58
  store i8 0, i8* %AL.75, !mcsema_real_eip !58
  %RDI_val.76 = load i64, i64* %XDI, !mcsema_real_eip !59
  %RDX_val.78 = load i64, i64* %XDX, !mcsema_real_eip !59
  %RCX_val.79 = load i64, i64* %XCX, !mcsema_real_eip !59
  %R8_val.80 = load i64, i64* %R8, !mcsema_real_eip !59
  %R9_val.81 = load i64, i64* %R9, !mcsema_real_eip !59
  %_load_rsp_ptr_118 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_119 = bitcast i8* %_load_rsp_ptr_118 to i64*
  %_ptr_to_int_452 = ptrtoint i64* %_allin_new_bt_119 to i64
  %_offset_above_rbp_455 = sub i64 %_ptr_to_int_452, %_local_end_to_int_
  %_pot_address_in_parent_stack_456 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_455
  %_cond1_457 = icmp ugt i8* %_load_rsp_ptr_118, %_local_stack_end_ptr_
  %_cond2_1_458 = icmp ugt i8* %_load_rsp_ptr_118, %_parent_stack_end_ptr_
  %_cond2_2_459 = icmp ult i8* %_load_rsp_ptr_118, %_parent_stack_start_ptr_
  %_cond2_460 = or i1 %_cond2_1_458, %_cond2_2_459
  %_cond4_461 = icmp ule i8* %_pot_address_in_parent_stack_456, %_parent_stack_end_ptr_
  %_cond1_n_cond2_462 = and i1 %_cond1_457, %_cond2_460
  %_cond1_n_cond2_cond3_463 = and i1 %_cond1_n_cond2_462, %_cond4_461
  br i1 %_cond1_n_cond2_cond3_463, label %169, label %170

; <label>:169:                                    ; preds = %166
  %_address_in_parent_stack_bt_465 = bitcast i8* %_pot_address_in_parent_stack_456 to i64*
  br label %170

; <label>:170:                                    ; preds = %166, %169
  %171 = phi i64* [ %_allin_new_bt_119, %166 ], [ %_address_in_parent_stack_bt_465, %169 ]
  %_new_load_466 = load i64, i64* %171
  %_new_gep_120 = getelementptr i8, i8* %_load_rsp_ptr_118, i64 8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %_ptr_to_int_467 = ptrtoint i64* %_allin_new_bt_121 to i64
  %_offset_above_rbp_470 = sub i64 %_ptr_to_int_467, %_local_end_to_int_
  %_pot_address_in_parent_stack_471 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_470
  %_cond1_472 = icmp ugt i8* %_new_gep_120, %_local_stack_end_ptr_
  %_cond2_1_473 = icmp ugt i8* %_new_gep_120, %_parent_stack_end_ptr_
  %_cond2_2_474 = icmp ult i8* %_new_gep_120, %_parent_stack_start_ptr_
  %_cond2_475 = or i1 %_cond2_1_473, %_cond2_2_474
  %_cond4_476 = icmp ule i8* %_pot_address_in_parent_stack_471, %_parent_stack_end_ptr_
  %_cond1_n_cond2_477 = and i1 %_cond1_472, %_cond2_475
  %_cond1_n_cond2_cond3_478 = and i1 %_cond1_n_cond2_477, %_cond4_476
  br i1 %_cond1_n_cond2_cond3_478, label %172, label %173

; <label>:172:                                    ; preds = %170
  %_address_in_parent_stack_bt_480 = bitcast i8* %_pot_address_in_parent_stack_471 to i64*
  br label %173

; <label>:173:                                    ; preds = %170, %172
  %174 = phi i64* [ %_allin_new_bt_121, %170 ], [ %_address_in_parent_stack_bt_480, %172 ]
  %_new_load_481 = load i64, i64* %174
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_120, i64 8
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %_ptr_to_int_482 = ptrtoint i64* %_allin_new_bt_123 to i64
  %_offset_above_rbp_485 = sub i64 %_ptr_to_int_482, %_local_end_to_int_
  %_pot_address_in_parent_stack_486 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_485
  %_cond1_487 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_488 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_489 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_490 = or i1 %_cond2_1_488, %_cond2_2_489
  %_cond4_491 = icmp ule i8* %_pot_address_in_parent_stack_486, %_parent_stack_end_ptr_
  %_cond1_n_cond2_492 = and i1 %_cond1_487, %_cond2_490
  %_cond1_n_cond2_cond3_493 = and i1 %_cond1_n_cond2_492, %_cond4_491
  br i1 %_cond1_n_cond2_cond3_493, label %175, label %176

; <label>:175:                                    ; preds = %173
  %_address_in_parent_stack_bt_495 = bitcast i8* %_pot_address_in_parent_stack_486 to i64*
  br label %176

; <label>:176:                                    ; preds = %173, %175
  %177 = phi i64* [ %_allin_new_bt_123, %173 ], [ %_address_in_parent_stack_bt_495, %175 ]
  %_new_load_496 = load i64, i64* %177
  %_new_gep_124 = getelementptr i8, i8* %_new_gep_122, i64 8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %_ptr_to_int_497 = ptrtoint i64* %_allin_new_bt_125 to i64
  %_offset_above_rbp_500 = sub i64 %_ptr_to_int_497, %_local_end_to_int_
  %_pot_address_in_parent_stack_501 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_500
  %_cond1_502 = icmp ugt i8* %_new_gep_124, %_local_stack_end_ptr_
  %_cond2_1_503 = icmp ugt i8* %_new_gep_124, %_parent_stack_end_ptr_
  %_cond2_2_504 = icmp ult i8* %_new_gep_124, %_parent_stack_start_ptr_
  %_cond2_505 = or i1 %_cond2_1_503, %_cond2_2_504
  %_cond4_506 = icmp ule i8* %_pot_address_in_parent_stack_501, %_parent_stack_end_ptr_
  %_cond1_n_cond2_507 = and i1 %_cond1_502, %_cond2_505
  %_cond1_n_cond2_cond3_508 = and i1 %_cond1_n_cond2_507, %_cond4_506
  br i1 %_cond1_n_cond2_cond3_508, label %178, label %179

; <label>:178:                                    ; preds = %176
  %_address_in_parent_stack_bt_510 = bitcast i8* %_pot_address_in_parent_stack_501 to i64*
  br label %179

; <label>:179:                                    ; preds = %176, %178
  %180 = phi i64* [ %_allin_new_bt_125, %176 ], [ %_address_in_parent_stack_bt_510, %178 ]
  %_new_load_511 = load i64, i64* %180
  %_new_gep_126 = getelementptr i8, i8* %_new_gep_124, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %_ptr_to_int_512 = ptrtoint i64* %_allin_new_bt_127 to i64
  %_offset_above_rbp_515 = sub i64 %_ptr_to_int_512, %_local_end_to_int_
  %_pot_address_in_parent_stack_516 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_515
  %_cond1_517 = icmp ugt i8* %_new_gep_126, %_local_stack_end_ptr_
  %_cond2_1_518 = icmp ugt i8* %_new_gep_126, %_parent_stack_end_ptr_
  %_cond2_2_519 = icmp ult i8* %_new_gep_126, %_parent_stack_start_ptr_
  %_cond2_520 = or i1 %_cond2_1_518, %_cond2_2_519
  %_cond4_521 = icmp ule i8* %_pot_address_in_parent_stack_516, %_parent_stack_end_ptr_
  %_cond1_n_cond2_522 = and i1 %_cond1_517, %_cond2_520
  %_cond1_n_cond2_cond3_523 = and i1 %_cond1_n_cond2_522, %_cond4_521
  br i1 %_cond1_n_cond2_cond3_523, label %181, label %182

; <label>:181:                                    ; preds = %179
  %_address_in_parent_stack_bt_525 = bitcast i8* %_pot_address_in_parent_stack_516 to i64*
  br label %182

; <label>:182:                                    ; preds = %179, %181
  %183 = phi i64* [ %_allin_new_bt_127, %179 ], [ %_address_in_parent_stack_bt_525, %181 ]
  %_new_load_526 = load i64, i64* %183
  %_new_gep_128 = getelementptr i8, i8* %_new_gep_126, i64 8
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %_ptr_to_int_527 = ptrtoint i64* %_allin_new_bt_129 to i64
  %_offset_above_rbp_530 = sub i64 %_ptr_to_int_527, %_local_end_to_int_
  %_pot_address_in_parent_stack_531 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_530
  %_cond1_532 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_533 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_534 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_535 = or i1 %_cond2_1_533, %_cond2_2_534
  %_cond4_536 = icmp ule i8* %_pot_address_in_parent_stack_531, %_parent_stack_end_ptr_
  %_cond1_n_cond2_537 = and i1 %_cond1_532, %_cond2_535
  %_cond1_n_cond2_cond3_538 = and i1 %_cond1_n_cond2_537, %_cond4_536
  br i1 %_cond1_n_cond2_cond3_538, label %184, label %185

; <label>:184:                                    ; preds = %182
  %_address_in_parent_stack_bt_540 = bitcast i8* %_pot_address_in_parent_stack_531 to i64*
  br label %185

; <label>:185:                                    ; preds = %182, %184
  %186 = phi i64* [ %_allin_new_bt_129, %182 ], [ %_address_in_parent_stack_bt_540, %184 ]
  %_new_load_541 = load i64, i64* %186
  %RSP_val.83 = load i64, i64* %XSP, !mcsema_real_eip !59
  %_new_gep_131 = getelementptr i8, i8* %_load_rsp_ptr_118, i64 -8
  %187 = sub i64 %RSP_val.83, 8, !mcsema_real_eip !59
  %_allin_new_bt_132 = bitcast i8* %_new_gep_131 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_132, !mcsema_real_eip !59
  store volatile i8* %_new_gep_131, i8** %_RSP_ptr_
  store i64 %187, i64* %XSP, !mcsema_real_eip !59
  %188 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.76, i64 %168, i64 %RDX_val.78, i64 %RCX_val.79, i64 %R8_val.80, i64 %R9_val.81, i64 %_new_load_466, i64 %_new_load_481, i64 %_new_load_496, i64 %_new_load_511, i64 %_new_load_526, i64 %_new_load_541)
  %_rsp_fix_165 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_166 = getelementptr i8, i8* %_rsp_fix_165, i64 8
  store i8* %_gep_fix_166, i8** %_RSP_ptr_
  store i64 %188, i64* %XAX, !mcsema_real_eip !59
  %_load_rbp_ptr_133 = load i8*, i8** %_RBP_ptr_
  %_new_gep_134 = getelementptr i8, i8* %_load_rbp_ptr_133, i64 -52
  %_allin_new_bt_135 = bitcast i8* %_new_gep_134 to i64*
  %189 = ptrtoint i64* %_allin_new_bt_135 to i64, !mcsema_real_eip !60
  %190 = inttoptr i64 %189 to i32*, !mcsema_real_eip !60
  %_ptr_bt_544 = bitcast i32* %190 to i8*
  %_offset_above_rbp_545 = sub i64 %189, %_local_end_to_int_
  %_pot_address_in_parent_stack_546 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_545
  %_cond1_547 = icmp ugt i8* %_ptr_bt_544, %_local_stack_end_ptr_
  %_cond2_1_548 = icmp ugt i8* %_ptr_bt_544, %_parent_stack_end_ptr_
  %_cond2_2_549 = icmp ult i8* %_ptr_bt_544, %_parent_stack_start_ptr_
  %_cond2_550 = or i1 %_cond2_1_548, %_cond2_2_549
  %_cond4_551 = icmp ule i8* %_pot_address_in_parent_stack_546, %_parent_stack_end_ptr_
  %_cond1_n_cond2_552 = and i1 %_cond1_547, %_cond2_550
  %_cond1_n_cond2_cond3_553 = and i1 %_cond1_n_cond2_552, %_cond4_551
  br i1 %_cond1_n_cond2_cond3_553, label %191, label %192

; <label>:191:                                    ; preds = %185
  %_address_in_parent_stack_bt_555 = bitcast i8* %_pot_address_in_parent_stack_546 to i32*
  br label %192

; <label>:192:                                    ; preds = %185, %191
  %193 = phi i32* [ %190, %185 ], [ %_address_in_parent_stack_bt_555, %191 ]
  %_new_load_556 = load i32, i32* %193
  %194 = zext i32 %_new_load_556 to i64, !mcsema_real_eip !60
  store i64 %194, i64* %XSI, !mcsema_real_eip !60
  %_new_gep_137 = getelementptr i8, i8* %_load_rbp_ptr_133, i64 -80
  %_allin_new_bt_138 = bitcast i8* %_new_gep_137 to i64*
  %EAX_val.87 = load i32, i32* %EAX.4, !mcsema_real_eip !61
  %195 = ptrtoint i64* %_allin_new_bt_138 to i64, !mcsema_real_eip !61
  %196 = inttoptr i64 %195 to i32*, !mcsema_real_eip !61
  store i32 %EAX_val.87, i32* %196, !mcsema_real_eip !61
  %ESI_val.89 = load i32, i32* %ESI.65, !mcsema_real_eip !62
  %197 = zext i32 %ESI_val.89 to i64, !mcsema_real_eip !62
  store i64 %197, i64* %XAX, !mcsema_real_eip !62
  %_load_rsp_ptr_139 = load i8*, i8** %_RSP_ptr_
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !63
  %_new_gep_140 = getelementptr i8, i8* %_load_rsp_ptr_139, i64 128
  %198 = add i64 128, %RSP_val.90, !mcsema_real_eip !63
  %_trans_p2i_141 = ptrtoint i8* %_new_gep_140 to i64
  %_trans_p2i_142 = ptrtoint i8* %_load_rsp_ptr_139 to i64
  %_trans_xor_143 = xor i64 %_trans_p2i_141, %_trans_p2i_142
  %199 = xor i64 %_trans_xor_143, 128, !mcsema_real_eip !63
  %200 = and i64 %199, 16, !mcsema_real_eip !63
  %201 = icmp ne i64 %200, 0, !mcsema_real_eip !63
  store i1 %201, i1* %AF, !mcsema_real_eip !63
  %202 = lshr i64 %198, 63, !mcsema_real_eip !63
  %203 = trunc i64 %202 to i1, !mcsema_real_eip !63
  store i1 %203, i1* %SF, !mcsema_real_eip !63
  %_trans_icmp_eq_145 = icmp eq i64 %_trans_p2i_141, 0
  store i1 %_trans_icmp_eq_145, i1* %ZF, !mcsema_real_eip !63
  %_trans_xor_147 = xor i64 %_trans_p2i_142, 128
  %204 = xor i64 %_trans_xor_147, -1, !mcsema_real_eip !63
  %205 = and i64 %204, %_trans_xor_143, !mcsema_real_eip !63
  %206 = lshr i64 %205, 63, !mcsema_real_eip !63
  %207 = and i64 %206, 1, !mcsema_real_eip !63
  %208 = trunc i64 %207 to i1, !mcsema_real_eip !63
  store i1 %208, i1* %OF, !mcsema_real_eip !63
  %_trans_trunc_152 = trunc i64 %_trans_p2i_141 to i8
  %209 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_152), !mcsema_real_eip !63
  %210 = trunc i8 %209 to i1, !mcsema_real_eip !63
  %211 = xor i1 %210, true, !mcsema_real_eip !63
  store i1 %211, i1* %PF, !mcsema_real_eip !63
  %_trans_icmp_ne_154 = icmp ne i64 %_trans_p2i_141, %RSP_val.90
  store i1 %_trans_icmp_ne_154, i1* %CF, !mcsema_real_eip !63
  store volatile i8* %_new_gep_140, i8** %_RSP_ptr_
  store i64 %198, i64* %XSP, !mcsema_real_eip !63
  %_allin_new_bt_156 = bitcast i8* %_new_gep_140 to i64*
  %_ptr_to_int_557 = ptrtoint i64* %_allin_new_bt_156 to i64
  %_offset_above_rbp_560 = sub i64 %_ptr_to_int_557, %_local_end_to_int_
  %_pot_address_in_parent_stack_561 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_560
  %_cond1_562 = icmp ugt i8* %_new_gep_140, %_local_stack_end_ptr_
  %_cond2_1_563 = icmp ugt i8* %_new_gep_140, %_parent_stack_end_ptr_
  %_cond2_2_564 = icmp ult i8* %_new_gep_140, %_parent_stack_start_ptr_
  %_cond2_565 = or i1 %_cond2_1_563, %_cond2_2_564
  %_cond4_566 = icmp ule i8* %_pot_address_in_parent_stack_561, %_parent_stack_end_ptr_
  %_cond1_n_cond2_567 = and i1 %_cond1_562, %_cond2_565
  %_cond1_n_cond2_cond3_568 = and i1 %_cond1_n_cond2_567, %_cond4_566
  br i1 %_cond1_n_cond2_cond3_568, label %212, label %213

; <label>:212:                                    ; preds = %192
  %_address_in_parent_stack_bt_570 = bitcast i8* %_pot_address_in_parent_stack_561 to i64*
  br label %213

; <label>:213:                                    ; preds = %192, %212
  %214 = phi i64* [ %_allin_new_bt_156, %192 ], [ %_address_in_parent_stack_bt_570, %212 ]
  %_new_load_571 = load i64, i64* %214
  %_new_int2ptr_ = inttoptr i64 %_new_load_571 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_571, i64* %XBP, !mcsema_real_eip !64
  %_new_gep_157 = getelementptr i8, i8* %_new_gep_140, i64 8
  %215 = add i64 %198, 8, !mcsema_real_eip !64
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_
  store i64 %215, i64* %XSP, !mcsema_real_eip !64
  %_new_gep_159 = getelementptr i8, i8* %_new_gep_157, i64 8
  %216 = add i64 %215, 8, !mcsema_real_eip !65
  %_allin_new_bt_160 = bitcast i8* %_new_gep_157 to i64*
  %_ptr_to_int_572 = ptrtoint i64* %_allin_new_bt_160 to i64
  %_offset_above_rbp_575 = sub i64 %_ptr_to_int_572, %_local_end_to_int_
  %_pot_address_in_parent_stack_576 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_575
  %_cond1_577 = icmp ugt i8* %_new_gep_157, %_local_stack_end_ptr_
  %_cond2_1_578 = icmp ugt i8* %_new_gep_157, %_parent_stack_end_ptr_
  %_cond2_2_579 = icmp ult i8* %_new_gep_157, %_parent_stack_start_ptr_
  %_cond2_580 = or i1 %_cond2_1_578, %_cond2_2_579
  %_cond4_581 = icmp ule i8* %_pot_address_in_parent_stack_576, %_parent_stack_end_ptr_
  %_cond1_n_cond2_582 = and i1 %_cond1_577, %_cond2_580
  %_cond1_n_cond2_cond3_583 = and i1 %_cond1_n_cond2_582, %_cond4_581
  br i1 %_cond1_n_cond2_cond3_583, label %217, label %218

; <label>:217:                                    ; preds = %213
  %_address_in_parent_stack_bt_585 = bitcast i8* %_pot_address_in_parent_stack_576 to i64*
  br label %218

; <label>:218:                                    ; preds = %213, %217
  %219 = phi i64* [ %_allin_new_bt_160, %213 ], [ %_address_in_parent_stack_bt_585, %217 ]
  %_new_load_586 = load i64, i64* %219
  store i64 %_new_load_586, i64* %XIP, !mcsema_real_eip !65
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_
  store i64 %216, i64* %XSP, !mcsema_real_eip !65
  ret void, !mcsema_real_eip !65
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
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !66
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !66
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !66
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !66
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !66
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !66
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !66
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !66
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !66
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !66
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !66
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !66
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !66
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !66
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !66
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !66
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !66
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !66
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !66
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !66
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !66
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !66
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !66
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !66
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !66
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !66
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !66
  br label %block_0x0, !mcsema_real_eip !66

block_0x0:                                        ; preds = %entry
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !66
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !66
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !66
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !67
  %R15_val.96 = load i64, i64* %R15, !mcsema_real_eip !68
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !68
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.97, 8, !mcsema_real_eip !68
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R15_val.96, i64* %_allin_new_bt_4, !mcsema_real_eip !68
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !68
  %R14_val.98 = load i64, i64* %R14, !mcsema_real_eip !69
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_3, i64 -8
  %3 = sub i64 %2, 8, !mcsema_real_eip !69
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %R14_val.98, i64* %_allin_new_bt_7, !mcsema_real_eip !69
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_
  store i64 %3, i64* %XSP, !mcsema_real_eip !69
  %RBX_val.100 = load i64, i64* %XBX, !mcsema_real_eip !70
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_6, i64 -8
  %4 = sub i64 %3, 8, !mcsema_real_eip !70
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  store i64 %RBX_val.100, i64* %_allin_new_bt_10, !mcsema_real_eip !70
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_
  store i64 %4, i64* %XSP, !mcsema_real_eip !70
  %_new_gep_12 = getelementptr i8, i8* %_new_gep_9, i64 -104
  %5 = sub i64 %4, 104, !mcsema_real_eip !71
  %_trans_p2i_ = ptrtoint i8* %_new_gep_12 to i64
  %_trans_p2i_13 = ptrtoint i8* %_new_gep_9 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_13
  %6 = xor i64 %_trans_xor_, 104, !mcsema_real_eip !71
  %7 = and i64 %6, 16, !mcsema_real_eip !71
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !71
  store i1 %8, i1* %AF, !mcsema_real_eip !71
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %9 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !71
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !71
  %11 = xor i1 %10, true, !mcsema_real_eip !71
  store i1 %11, i1* %PF, !mcsema_real_eip !71
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !71
  %12 = lshr i64 %5, 63, !mcsema_real_eip !71
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !71
  store i1 %13, i1* %SF, !mcsema_real_eip !71
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_13, 104
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !71
  %_trans_xor_18 = xor i64 %_trans_p2i_13, 104
  %14 = and i64 %_trans_xor_18, %_trans_xor_, !mcsema_real_eip !71
  %15 = lshr i64 %14, 63, !mcsema_real_eip !71
  %16 = trunc i64 %15 to i1, !mcsema_real_eip !71
  store i1 %16, i1* %OF, !mcsema_real_eip !71
  store volatile i8* %_new_gep_12, i8** %_RSP_ptr_
  store i64 %5, i64* %XSP, !mcsema_real_eip !71
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 48
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_24 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %17, label %18

; <label>:17:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %18

; <label>:18:                                     ; preds = %block_0x0, %17
  %19 = phi i64* [ %_allin_new_bt_24, %block_0x0 ], [ %_address_in_parent_stack_bt_, %17 ]
  %_new_load_ = load i64, i64* %19
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !72
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 40
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_173 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_176 = sub i64 %_ptr_to_int_173, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  br i1 %_cond1_n_cond2_cond3_184, label %20, label %21

; <label>:20:                                     ; preds = %18
  %_address_in_parent_stack_bt_186 = bitcast i8* %_pot_address_in_parent_stack_177 to i64*
  br label %21

; <label>:21:                                     ; preds = %18, %20
  %22 = phi i64* [ %_allin_new_bt_27, %18 ], [ %_address_in_parent_stack_bt_186, %20 ]
  %_new_load_187 = load i64, i64* %22
  store i64 %_new_load_187, i64* %R10, !mcsema_real_eip !73
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %23 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !74
  store i64 %23, i64* %R11, !mcsema_real_eip !74
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 16
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !75
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !75
  %_ptr_bt_190 = bitcast i32* %25 to i8*
  %_offset_above_rbp_191 = sub i64 %24, %_local_end_to_int_
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_191
  %_cond1_193 = icmp ugt i8* %_ptr_bt_190, %_local_stack_end_ptr_
  %_cond2_1_194 = icmp ugt i8* %_ptr_bt_190, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_ptr_bt_190, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  br i1 %_cond1_n_cond2_cond3_199, label %26, label %27

; <label>:26:                                     ; preds = %21
  %_address_in_parent_stack_bt_201 = bitcast i8* %_pot_address_in_parent_stack_192 to i32*
  br label %27

; <label>:27:                                     ; preds = %21, %26
  %28 = phi i32* [ %25, %21 ], [ %_address_in_parent_stack_bt_201, %26 ]
  %_new_load_202 = load i32, i32* %28
  %29 = zext i32 %_new_load_202 to i64, !mcsema_real_eip !75
  store i64 %29, i64* %XBX, !mcsema_real_eip !75
  store i64 12, i64* %R14, !mcsema_real_eip !76
  %R14D.107 = bitcast i64* %R14 to i32*, !mcsema_real_eip !77
  %R14D_val.108 = load i32, i32* %R14D.107, !mcsema_real_eip !77
  %30 = zext i32 %R14D_val.108 to i64, !mcsema_real_eip !77
  store i64 %30, i64* %R15, !mcsema_real_eip !77
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -56
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %RDI_val.110 = load i64, i64* %XDI, !mcsema_real_eip !78
  store i64 %RDI_val.110, i64* %_allin_new_bt_36, !mcsema_real_eip !78
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -48
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %ESI.112 = bitcast i64* %XSI to i32*, !mcsema_real_eip !79
  %ESI_val.113 = load i32, i32* %ESI.112, !mcsema_real_eip !79
  %31 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !79
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !79
  store i32 %ESI_val.113, i32* %32, !mcsema_real_eip !79
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -56
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_203 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_206 = sub i64 %_ptr_to_int_203, %_local_end_to_int_
  %_pot_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_cond1_208 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_209 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_210 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_211 = or i1 %_cond2_1_209, %_cond2_2_210
  %_cond4_212 = icmp ule i8* %_pot_address_in_parent_stack_207, %_parent_stack_end_ptr_
  %_cond1_n_cond2_213 = and i1 %_cond1_208, %_cond2_211
  %_cond1_n_cond2_cond3_214 = and i1 %_cond1_n_cond2_213, %_cond4_212
  br i1 %_cond1_n_cond2_cond3_214, label %33, label %34

; <label>:33:                                     ; preds = %27
  %_address_in_parent_stack_bt_216 = bitcast i8* %_pot_address_in_parent_stack_207 to i64*
  br label %34

; <label>:34:                                     ; preds = %27, %33
  %35 = phi i64* [ %_allin_new_bt_42, %27 ], [ %_address_in_parent_stack_bt_216, %33 ]
  %_new_load_217 = load i64, i64* %35
  store i64 %_new_load_217, i64* %XDI, !mcsema_real_eip !80
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -40
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %_new_load_217, i64* %_allin_new_bt_45, !mcsema_real_eip !81
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -48
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %36 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !82
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !82
  %_ptr_bt_220 = bitcast i32* %37 to i8*
  %_offset_above_rbp_221 = sub i64 %36, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_ptr_bt_220, %_local_stack_end_ptr_
  %_cond2_1_224 = icmp ugt i8* %_ptr_bt_220, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_ptr_bt_220, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  br i1 %_cond1_n_cond2_cond3_229, label %38, label %39

; <label>:38:                                     ; preds = %34
  %_address_in_parent_stack_bt_231 = bitcast i8* %_pot_address_in_parent_stack_222 to i32*
  br label %39

; <label>:39:                                     ; preds = %34, %38
  %40 = phi i32* [ %37, %34 ], [ %_address_in_parent_stack_bt_231, %38 ]
  %_new_load_232 = load i32, i32* %40
  %41 = zext i32 %_new_load_232 to i64, !mcsema_real_eip !82
  store i64 %41, i64* %XSI, !mcsema_real_eip !82
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -32
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %ESI_val.120 = load i32, i32* %ESI.112, !mcsema_real_eip !83
  %42 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !83
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !83
  store i32 %ESI_val.120, i32* %43, !mcsema_real_eip !83
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -64
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %RDX_val.122 = load i64, i64* %XDX, !mcsema_real_eip !84
  store i64 %RDX_val.122, i64* %_allin_new_bt_54, !mcsema_real_eip !84
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -72
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %RCX_val.124 = load i64, i64* %XCX, !mcsema_real_eip !85
  store i64 %RCX_val.124, i64* %_allin_new_bt_57, !mcsema_real_eip !85
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -76
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %R8D.126 = bitcast i64* %R8 to i32*, !mcsema_real_eip !86
  %R8D_val.127 = load i32, i32* %R8D.126, !mcsema_real_eip !86
  %44 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !86
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !86
  store i32 %R8D_val.127, i32* %45, !mcsema_real_eip !86
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -80
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %R9D.129 = bitcast i64* %R9 to i32*, !mcsema_real_eip !87
  %R9D_val.130 = load i32, i32* %R9D.129, !mcsema_real_eip !87
  %46 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !87
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !87
  store i32 %R9D_val.130, i32* %47, !mcsema_real_eip !87
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -84
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %EBX.132 = bitcast i64* %XBX to i32*, !mcsema_real_eip !88
  %EBX_val.133 = load i32, i32* %EBX.132, !mcsema_real_eip !88
  %48 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !88
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !88
  store i32 %EBX_val.133, i32* %49, !mcsema_real_eip !88
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -96
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %R10_val.135 = load i64, i64* %R10, !mcsema_real_eip !89
  store i64 %R10_val.135, i64* %_allin_new_bt_69, !mcsema_real_eip !89
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -104
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %RAX_val.137 = load i64, i64* %XAX, !mcsema_real_eip !90
  store i64 %RAX_val.137, i64* %_allin_new_bt_72, !mcsema_real_eip !90
  %R15_val.138 = load i64, i64* %R15, !mcsema_real_eip !91
  store i64 %R15_val.138, i64* %XDI, !mcsema_real_eip !91
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -120
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %R11_val.140 = load i64, i64* %R11, !mcsema_real_eip !92
  store i64 %R11_val.140, i64* %_allin_new_bt_75, !mcsema_real_eip !92
  %RDI_val.141 = load i64, i64* %XDI, !mcsema_real_eip !93
  %_load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_
  %RSP_val.142 = load i64, i64* %XSP, !mcsema_real_eip !93
  %_new_gep_77 = getelementptr i8, i8* %_load_rsp_ptr_76, i64 -8
  %50 = sub i64 %RSP_val.142, 8, !mcsema_real_eip !93
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_78, !mcsema_real_eip !93
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_
  store i64 %50, i64* %XSP, !mcsema_real_eip !93
  %51 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.141)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %51, i64* %XAX, !mcsema_real_eip !93
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -112
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  store i64 %51, i64* %_allin_new_bt_81, !mcsema_real_eip !94
  %_load_rbp_ptr_82 = load i8*, i8** %_RBP_ptr_
  %_new_gep_83 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -40
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %52 = ptrtoint i64* %_allin_new_bt_84 to i64, !mcsema_real_eip !95
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !95
  %_ptr_bt_235 = bitcast i32* %53 to i8*
  %_offset_above_rbp_236 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_ptr_bt_235, %_local_stack_end_ptr_
  %_cond2_1_239 = icmp ugt i8* %_ptr_bt_235, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_ptr_bt_235, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  br i1 %_cond1_n_cond2_cond3_244, label %54, label %55

; <label>:54:                                     ; preds = %39
  %_address_in_parent_stack_bt_246 = bitcast i8* %_pot_address_in_parent_stack_237 to i32*
  br label %55

; <label>:55:                                     ; preds = %39, %54
  %56 = phi i32* [ %53, %39 ], [ %_address_in_parent_stack_bt_246, %54 ]
  %_new_load_247 = load i32, i32* %56
  %57 = zext i32 %_new_load_247 to i64, !mcsema_real_eip !95
  store i64 %57, i64* %XSI, !mcsema_real_eip !95
  %_new_gep_86 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -64
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %_ptr_to_int_248 = ptrtoint i64* %_allin_new_bt_87 to i64
  %_offset_above_rbp_251 = sub i64 %_ptr_to_int_248, %_local_end_to_int_
  %_pot_address_in_parent_stack_252 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_251
  %_cond1_253 = icmp ugt i8* %_new_gep_86, %_local_stack_end_ptr_
  %_cond2_1_254 = icmp ugt i8* %_new_gep_86, %_parent_stack_end_ptr_
  %_cond2_2_255 = icmp ult i8* %_new_gep_86, %_parent_stack_start_ptr_
  %_cond2_256 = or i1 %_cond2_1_254, %_cond2_2_255
  %_cond4_257 = icmp ule i8* %_pot_address_in_parent_stack_252, %_parent_stack_end_ptr_
  %_cond1_n_cond2_258 = and i1 %_cond1_253, %_cond2_256
  %_cond1_n_cond2_cond3_259 = and i1 %_cond1_n_cond2_258, %_cond4_257
  br i1 %_cond1_n_cond2_cond3_259, label %58, label %59

; <label>:58:                                     ; preds = %55
  %_address_in_parent_stack_bt_261 = bitcast i8* %_pot_address_in_parent_stack_252 to i64*
  br label %59

; <label>:59:                                     ; preds = %55, %58
  %60 = phi i64* [ %_allin_new_bt_87, %55 ], [ %_address_in_parent_stack_bt_261, %58 ]
  %_new_load_262 = load i64, i64* %60
  store i64 %_new_load_262, i64* %XAX, !mcsema_real_eip !96
  %61 = inttoptr i64 %_new_load_262 to i64*, !mcsema_real_eip !97
  %62 = inttoptr i64 %_new_load_262 to i32*, !mcsema_real_eip !97
  %_ptr_bt_265 = bitcast i32* %62 to i8*
  %_offset_above_rbp_266 = sub i64 %_new_load_262, %_local_end_to_int_
  %_pot_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_266
  %_cond1_268 = icmp ugt i8* %_ptr_bt_265, %_local_stack_end_ptr_
  %_cond2_1_269 = icmp ugt i8* %_ptr_bt_265, %_parent_stack_end_ptr_
  %_cond2_2_270 = icmp ult i8* %_ptr_bt_265, %_parent_stack_start_ptr_
  %_cond2_271 = or i1 %_cond2_1_269, %_cond2_2_270
  %_cond4_272 = icmp ule i8* %_pot_address_in_parent_stack_267, %_parent_stack_end_ptr_
  %_cond1_n_cond2_273 = and i1 %_cond1_268, %_cond2_271
  %_cond1_n_cond2_cond3_274 = and i1 %_cond1_n_cond2_273, %_cond4_272
  br i1 %_cond1_n_cond2_cond3_274, label %63, label %64

; <label>:63:                                     ; preds = %59
  %_address_in_parent_stack_bt_276 = bitcast i8* %_pot_address_in_parent_stack_267 to i32*
  br label %64

; <label>:64:                                     ; preds = %59, %63
  %65 = phi i32* [ %62, %59 ], [ %_address_in_parent_stack_bt_276, %63 ]
  %_new_load_277 = load i32, i32* %65
  %ESI_val.149 = load i32, i32* %ESI.112, !mcsema_real_eip !97
  %66 = add i32 %ESI_val.149, %_new_load_277, !mcsema_real_eip !97
  %67 = xor i32 %66, %_new_load_277, !mcsema_real_eip !97
  %68 = xor i32 %67, %ESI_val.149, !mcsema_real_eip !97
  %69 = and i32 %68, 16, !mcsema_real_eip !97
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !97
  store i1 %70, i1* %AF, !mcsema_real_eip !97
  %71 = lshr i32 %66, 31, !mcsema_real_eip !97
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !97
  store i1 %72, i1* %SF, !mcsema_real_eip !97
  %73 = icmp eq i32 %66, 0, !mcsema_real_eip !97
  store i1 %73, i1* %ZF, !mcsema_real_eip !97
  %74 = xor i32 %_new_load_277, %ESI_val.149, !mcsema_real_eip !97
  %75 = xor i32 %74, -1, !mcsema_real_eip !97
  %76 = and i32 %75, %67, !mcsema_real_eip !97
  %77 = lshr i32 %76, 31, !mcsema_real_eip !97
  %78 = and i32 %77, 1, !mcsema_real_eip !97
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !97
  store i1 %79, i1* %OF, !mcsema_real_eip !97
  %80 = trunc i32 %66 to i8, !mcsema_real_eip !97
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !97
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !97
  %83 = xor i1 %82, true, !mcsema_real_eip !97
  store i1 %83, i1* %PF, !mcsema_real_eip !97
  %84 = icmp ult i32 %66, %_new_load_277, !mcsema_real_eip !97
  store i1 %84, i1* %CF, !mcsema_real_eip !97
  %85 = zext i32 %66 to i64, !mcsema_real_eip !97
  store i64 %85, i64* %XSI, !mcsema_real_eip !97
  %_new_gep_89 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -72
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %_ptr_to_int_278 = ptrtoint i64* %_allin_new_bt_90 to i64
  %_offset_above_rbp_281 = sub i64 %_ptr_to_int_278, %_local_end_to_int_
  %_pot_address_in_parent_stack_282 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_281
  %_cond1_283 = icmp ugt i8* %_new_gep_89, %_local_stack_end_ptr_
  %_cond2_1_284 = icmp ugt i8* %_new_gep_89, %_parent_stack_end_ptr_
  %_cond2_2_285 = icmp ult i8* %_new_gep_89, %_parent_stack_start_ptr_
  %_cond2_286 = or i1 %_cond2_1_284, %_cond2_2_285
  %_cond4_287 = icmp ule i8* %_pot_address_in_parent_stack_282, %_parent_stack_end_ptr_
  %_cond1_n_cond2_288 = and i1 %_cond1_283, %_cond2_286
  %_cond1_n_cond2_cond3_289 = and i1 %_cond1_n_cond2_288, %_cond4_287
  br i1 %_cond1_n_cond2_cond3_289, label %86, label %87

; <label>:86:                                     ; preds = %64
  %_address_in_parent_stack_bt_291 = bitcast i8* %_pot_address_in_parent_stack_282 to i64*
  br label %87

; <label>:87:                                     ; preds = %64, %86
  %88 = phi i64* [ %_allin_new_bt_90, %64 ], [ %_address_in_parent_stack_bt_291, %86 ]
  %_new_load_292 = load i64, i64* %88
  store i64 %_new_load_292, i64* %XAX, !mcsema_real_eip !98
  %89 = inttoptr i64 %_new_load_292 to i64*, !mcsema_real_eip !99
  %90 = inttoptr i64 %_new_load_292 to i32*, !mcsema_real_eip !99
  %_ptr_bt_295 = bitcast i32* %90 to i8*
  %_offset_above_rbp_296 = sub i64 %_new_load_292, %_local_end_to_int_
  %_pot_address_in_parent_stack_297 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_296
  %_cond1_298 = icmp ugt i8* %_ptr_bt_295, %_local_stack_end_ptr_
  %_cond2_1_299 = icmp ugt i8* %_ptr_bt_295, %_parent_stack_end_ptr_
  %_cond2_2_300 = icmp ult i8* %_ptr_bt_295, %_parent_stack_start_ptr_
  %_cond2_301 = or i1 %_cond2_1_299, %_cond2_2_300
  %_cond4_302 = icmp ule i8* %_pot_address_in_parent_stack_297, %_parent_stack_end_ptr_
  %_cond1_n_cond2_303 = and i1 %_cond1_298, %_cond2_301
  %_cond1_n_cond2_cond3_304 = and i1 %_cond1_n_cond2_303, %_cond4_302
  br i1 %_cond1_n_cond2_cond3_304, label %91, label %92

; <label>:91:                                     ; preds = %87
  %_address_in_parent_stack_bt_306 = bitcast i8* %_pot_address_in_parent_stack_297 to i32*
  br label %92

; <label>:92:                                     ; preds = %87, %91
  %93 = phi i32* [ %90, %87 ], [ %_address_in_parent_stack_bt_306, %91 ]
  %_new_load_307 = load i32, i32* %93
  %ESI_val.153 = load i32, i32* %ESI.112, !mcsema_real_eip !99
  %94 = add i32 %ESI_val.153, %_new_load_307, !mcsema_real_eip !99
  %95 = xor i32 %94, %_new_load_307, !mcsema_real_eip !99
  %96 = xor i32 %95, %ESI_val.153, !mcsema_real_eip !99
  %97 = and i32 %96, 16, !mcsema_real_eip !99
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !99
  store i1 %98, i1* %AF, !mcsema_real_eip !99
  %99 = lshr i32 %94, 31, !mcsema_real_eip !99
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !99
  store i1 %100, i1* %SF, !mcsema_real_eip !99
  %101 = icmp eq i32 %94, 0, !mcsema_real_eip !99
  store i1 %101, i1* %ZF, !mcsema_real_eip !99
  %102 = xor i32 %_new_load_307, %ESI_val.153, !mcsema_real_eip !99
  %103 = xor i32 %102, -1, !mcsema_real_eip !99
  %104 = and i32 %103, %95, !mcsema_real_eip !99
  %105 = lshr i32 %104, 31, !mcsema_real_eip !99
  %106 = and i32 %105, 1, !mcsema_real_eip !99
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !99
  store i1 %107, i1* %OF, !mcsema_real_eip !99
  %108 = trunc i32 %94 to i8, !mcsema_real_eip !99
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !99
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !99
  %111 = xor i1 %110, true, !mcsema_real_eip !99
  store i1 %111, i1* %PF, !mcsema_real_eip !99
  %112 = icmp ult i32 %94, %_new_load_307, !mcsema_real_eip !99
  store i1 %112, i1* %CF, !mcsema_real_eip !99
  %113 = zext i32 %94 to i64, !mcsema_real_eip !99
  store i64 %113, i64* %XSI, !mcsema_real_eip !99
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -120
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %_ptr_to_int_308 = ptrtoint i64* %_allin_new_bt_93 to i64
  %_offset_above_rbp_311 = sub i64 %_ptr_to_int_308, %_local_end_to_int_
  %_pot_address_in_parent_stack_312 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_311
  %_cond1_313 = icmp ugt i8* %_new_gep_92, %_local_stack_end_ptr_
  %_cond2_1_314 = icmp ugt i8* %_new_gep_92, %_parent_stack_end_ptr_
  %_cond2_2_315 = icmp ult i8* %_new_gep_92, %_parent_stack_start_ptr_
  %_cond2_316 = or i1 %_cond2_1_314, %_cond2_2_315
  %_cond4_317 = icmp ule i8* %_pot_address_in_parent_stack_312, %_parent_stack_end_ptr_
  %_cond1_n_cond2_318 = and i1 %_cond1_313, %_cond2_316
  %_cond1_n_cond2_cond3_319 = and i1 %_cond1_n_cond2_318, %_cond4_317
  br i1 %_cond1_n_cond2_cond3_319, label %114, label %115

; <label>:114:                                    ; preds = %92
  %_address_in_parent_stack_bt_321 = bitcast i8* %_pot_address_in_parent_stack_312 to i64*
  br label %115

; <label>:115:                                    ; preds = %92, %114
  %116 = phi i64* [ %_allin_new_bt_93, %92 ], [ %_address_in_parent_stack_bt_321, %114 ]
  %_new_load_322 = load i64, i64* %116
  store i64 %_new_load_322, i64* %XAX, !mcsema_real_eip !100
  %117 = inttoptr i64 %_new_load_322 to i64*, !mcsema_real_eip !101
  %118 = inttoptr i64 %_new_load_322 to i32*, !mcsema_real_eip !101
  %_ptr_bt_325 = bitcast i32* %118 to i8*
  %_offset_above_rbp_326 = sub i64 %_new_load_322, %_local_end_to_int_
  %_pot_address_in_parent_stack_327 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_326
  %_cond1_328 = icmp ugt i8* %_ptr_bt_325, %_local_stack_end_ptr_
  %_cond2_1_329 = icmp ugt i8* %_ptr_bt_325, %_parent_stack_end_ptr_
  %_cond2_2_330 = icmp ult i8* %_ptr_bt_325, %_parent_stack_start_ptr_
  %_cond2_331 = or i1 %_cond2_1_329, %_cond2_2_330
  %_cond4_332 = icmp ule i8* %_pot_address_in_parent_stack_327, %_parent_stack_end_ptr_
  %_cond1_n_cond2_333 = and i1 %_cond1_328, %_cond2_331
  %_cond1_n_cond2_cond3_334 = and i1 %_cond1_n_cond2_333, %_cond4_332
  br i1 %_cond1_n_cond2_cond3_334, label %119, label %120

; <label>:119:                                    ; preds = %115
  %_address_in_parent_stack_bt_336 = bitcast i8* %_pot_address_in_parent_stack_327 to i32*
  br label %120

; <label>:120:                                    ; preds = %115, %119
  %121 = phi i32* [ %118, %115 ], [ %_address_in_parent_stack_bt_336, %119 ]
  %_new_load_337 = load i32, i32* %121
  %122 = zext i32 %_new_load_337 to i64, !mcsema_real_eip !101
  store i64 %122, i64* %R8, !mcsema_real_eip !101
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -96
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %_ptr_to_int_338 = ptrtoint i64* %_allin_new_bt_96 to i64
  %_offset_above_rbp_341 = sub i64 %_ptr_to_int_338, %_local_end_to_int_
  %_pot_address_in_parent_stack_342 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_341
  %_cond1_343 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_344 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_345 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_346 = or i1 %_cond2_1_344, %_cond2_2_345
  %_cond4_347 = icmp ule i8* %_pot_address_in_parent_stack_342, %_parent_stack_end_ptr_
  %_cond1_n_cond2_348 = and i1 %_cond1_343, %_cond2_346
  %_cond1_n_cond2_cond3_349 = and i1 %_cond1_n_cond2_348, %_cond4_347
  br i1 %_cond1_n_cond2_cond3_349, label %123, label %124

; <label>:123:                                    ; preds = %120
  %_address_in_parent_stack_bt_351 = bitcast i8* %_pot_address_in_parent_stack_342 to i64*
  br label %124

; <label>:124:                                    ; preds = %120, %123
  %125 = phi i64* [ %_allin_new_bt_96, %120 ], [ %_address_in_parent_stack_bt_351, %123 ]
  %_new_load_352 = load i64, i64* %125
  store i64 %_new_load_352, i64* %XCX, !mcsema_real_eip !102
  %126 = inttoptr i64 %_new_load_352 to i64*, !mcsema_real_eip !103
  %127 = inttoptr i64 %_new_load_352 to i32*, !mcsema_real_eip !103
  %_ptr_bt_355 = bitcast i32* %127 to i8*
  %_offset_above_rbp_356 = sub i64 %_new_load_352, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_ptr_bt_355, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_ptr_bt_355, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_ptr_bt_355, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond1_n_cond2_363, %_cond4_362
  br i1 %_cond1_n_cond2_cond3_364, label %128, label %129

; <label>:128:                                    ; preds = %124
  %_address_in_parent_stack_bt_366 = bitcast i8* %_pot_address_in_parent_stack_357 to i32*
  br label %129

; <label>:129:                                    ; preds = %124, %128
  %130 = phi i32* [ %127, %124 ], [ %_address_in_parent_stack_bt_366, %128 ]
  %_new_load_367 = load i32, i32* %130
  %R8D_val.159 = load i32, i32* %R8D.126, !mcsema_real_eip !103
  %131 = add i32 %R8D_val.159, %_new_load_367, !mcsema_real_eip !103
  %132 = xor i32 %131, %_new_load_367, !mcsema_real_eip !103
  %133 = xor i32 %132, %R8D_val.159, !mcsema_real_eip !103
  %134 = and i32 %133, 16, !mcsema_real_eip !103
  %135 = icmp ne i32 %134, 0, !mcsema_real_eip !103
  store i1 %135, i1* %AF, !mcsema_real_eip !103
  %136 = lshr i32 %131, 31, !mcsema_real_eip !103
  %137 = trunc i32 %136 to i1, !mcsema_real_eip !103
  store i1 %137, i1* %SF, !mcsema_real_eip !103
  %138 = icmp eq i32 %131, 0, !mcsema_real_eip !103
  store i1 %138, i1* %ZF, !mcsema_real_eip !103
  %139 = xor i32 %_new_load_367, %R8D_val.159, !mcsema_real_eip !103
  %140 = xor i32 %139, -1, !mcsema_real_eip !103
  %141 = and i32 %140, %132, !mcsema_real_eip !103
  %142 = lshr i32 %141, 31, !mcsema_real_eip !103
  %143 = and i32 %142, 1, !mcsema_real_eip !103
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !103
  store i1 %144, i1* %OF, !mcsema_real_eip !103
  %145 = trunc i32 %131 to i8, !mcsema_real_eip !103
  %146 = call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !103
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !103
  %148 = xor i1 %147, true, !mcsema_real_eip !103
  store i1 %148, i1* %PF, !mcsema_real_eip !103
  %149 = icmp ult i32 %131, %_new_load_367, !mcsema_real_eip !103
  store i1 %149, i1* %CF, !mcsema_real_eip !103
  %150 = zext i32 %131 to i64, !mcsema_real_eip !103
  store i64 %150, i64* %R8, !mcsema_real_eip !103
  %_new_gep_98 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -104
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  %_ptr_to_int_368 = ptrtoint i64* %_allin_new_bt_99 to i64
  %_offset_above_rbp_371 = sub i64 %_ptr_to_int_368, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_new_gep_98, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_new_gep_98, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_new_gep_98, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  br i1 %_cond1_n_cond2_cond3_379, label %151, label %152

; <label>:151:                                    ; preds = %129
  %_address_in_parent_stack_bt_381 = bitcast i8* %_pot_address_in_parent_stack_372 to i64*
  br label %152

; <label>:152:                                    ; preds = %129, %151
  %153 = phi i64* [ %_allin_new_bt_99, %129 ], [ %_address_in_parent_stack_bt_381, %151 ]
  %_new_load_382 = load i64, i64* %153
  store i64 %_new_load_382, i64* %XCX, !mcsema_real_eip !104
  %154 = inttoptr i64 %_new_load_382 to i64*, !mcsema_real_eip !105
  %155 = inttoptr i64 %_new_load_382 to i32*, !mcsema_real_eip !105
  %_ptr_bt_385 = bitcast i32* %155 to i8*
  %_offset_above_rbp_386 = sub i64 %_new_load_382, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_ptr_bt_385, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_ptr_bt_385, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_ptr_bt_385, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond1_n_cond2_393, %_cond4_392
  br i1 %_cond1_n_cond2_cond3_394, label %156, label %157

; <label>:156:                                    ; preds = %152
  %_address_in_parent_stack_bt_396 = bitcast i8* %_pot_address_in_parent_stack_387 to i32*
  br label %157

; <label>:157:                                    ; preds = %152, %156
  %158 = phi i32* [ %155, %152 ], [ %_address_in_parent_stack_bt_396, %156 ]
  %_new_load_397 = load i32, i32* %158
  %R8D_val.163 = load i32, i32* %R8D.126, !mcsema_real_eip !105
  %159 = add i32 %R8D_val.163, %_new_load_397, !mcsema_real_eip !105
  %160 = xor i32 %159, %_new_load_397, !mcsema_real_eip !105
  %161 = xor i32 %160, %R8D_val.163, !mcsema_real_eip !105
  %162 = and i32 %161, 16, !mcsema_real_eip !105
  %163 = icmp ne i32 %162, 0, !mcsema_real_eip !105
  store i1 %163, i1* %AF, !mcsema_real_eip !105
  %164 = lshr i32 %159, 31, !mcsema_real_eip !105
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !105
  store i1 %165, i1* %SF, !mcsema_real_eip !105
  %166 = icmp eq i32 %159, 0, !mcsema_real_eip !105
  store i1 %166, i1* %ZF, !mcsema_real_eip !105
  %167 = xor i32 %_new_load_397, %R8D_val.163, !mcsema_real_eip !105
  %168 = xor i32 %167, -1, !mcsema_real_eip !105
  %169 = and i32 %168, %160, !mcsema_real_eip !105
  %170 = lshr i32 %169, 31, !mcsema_real_eip !105
  %171 = and i32 %170, 1, !mcsema_real_eip !105
  %172 = trunc i32 %171 to i1, !mcsema_real_eip !105
  store i1 %172, i1* %OF, !mcsema_real_eip !105
  %173 = trunc i32 %159 to i8, !mcsema_real_eip !105
  %174 = call i8 @llvm.ctpop.i8(i8 %173), !mcsema_real_eip !105
  %175 = trunc i8 %174 to i1, !mcsema_real_eip !105
  %176 = xor i1 %175, true, !mcsema_real_eip !105
  store i1 %176, i1* %PF, !mcsema_real_eip !105
  %177 = icmp ult i32 %159, %_new_load_397, !mcsema_real_eip !105
  store i1 %177, i1* %CF, !mcsema_real_eip !105
  %178 = zext i32 %159 to i64, !mcsema_real_eip !105
  store i64 %178, i64* %R8, !mcsema_real_eip !105
  %ESI_val.165 = load i32, i32* %ESI.112, !mcsema_real_eip !106
  %R8D_val.167 = load i32, i32* %R8D.126, !mcsema_real_eip !106
  %179 = add i32 %R8D_val.167, %ESI_val.165, !mcsema_real_eip !106
  %180 = xor i32 %179, %ESI_val.165, !mcsema_real_eip !106
  %181 = xor i32 %180, %R8D_val.167, !mcsema_real_eip !106
  %182 = and i32 %181, 16, !mcsema_real_eip !106
  %183 = icmp ne i32 %182, 0, !mcsema_real_eip !106
  store i1 %183, i1* %AF, !mcsema_real_eip !106
  %184 = lshr i32 %179, 31, !mcsema_real_eip !106
  %185 = trunc i32 %184 to i1, !mcsema_real_eip !106
  store i1 %185, i1* %SF, !mcsema_real_eip !106
  %186 = icmp eq i32 %179, 0, !mcsema_real_eip !106
  store i1 %186, i1* %ZF, !mcsema_real_eip !106
  %187 = xor i32 %ESI_val.165, %R8D_val.167, !mcsema_real_eip !106
  %188 = xor i32 %187, -1, !mcsema_real_eip !106
  %189 = and i32 %188, %180, !mcsema_real_eip !106
  %190 = lshr i32 %189, 31, !mcsema_real_eip !106
  %191 = and i32 %190, 1, !mcsema_real_eip !106
  %192 = trunc i32 %191 to i1, !mcsema_real_eip !106
  store i1 %192, i1* %OF, !mcsema_real_eip !106
  %193 = trunc i32 %179 to i8, !mcsema_real_eip !106
  %194 = call i8 @llvm.ctpop.i8(i8 %193), !mcsema_real_eip !106
  %195 = trunc i8 %194 to i1, !mcsema_real_eip !106
  %196 = xor i1 %195, true, !mcsema_real_eip !106
  store i1 %196, i1* %PF, !mcsema_real_eip !106
  %197 = icmp ult i32 %179, %ESI_val.165, !mcsema_real_eip !106
  store i1 %197, i1* %CF, !mcsema_real_eip !106
  %198 = zext i32 %179 to i64, !mcsema_real_eip !106
  store i64 %198, i64* %XSI, !mcsema_real_eip !106
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -112
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %_ptr_to_int_398 = ptrtoint i64* %_allin_new_bt_102 to i64
  %_offset_above_rbp_401 = sub i64 %_ptr_to_int_398, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_new_gep_101, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_new_gep_101, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_new_gep_101, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  br i1 %_cond1_n_cond2_cond3_409, label %199, label %200

; <label>:199:                                    ; preds = %157
  %_address_in_parent_stack_bt_411 = bitcast i8* %_pot_address_in_parent_stack_402 to i64*
  br label %200

; <label>:200:                                    ; preds = %157, %199
  %201 = phi i64* [ %_allin_new_bt_102, %157 ], [ %_address_in_parent_stack_bt_411, %199 ]
  %_new_load_412 = load i64, i64* %201
  store i64 %_new_load_412, i64* %XCX, !mcsema_real_eip !107
  %202 = inttoptr i64 %_new_load_412 to i64*, !mcsema_real_eip !108
  %ESI_val.171 = load i32, i32* %ESI.112, !mcsema_real_eip !108
  %203 = inttoptr i64 %_new_load_412 to i32*, !mcsema_real_eip !108
  store i32 %ESI_val.171, i32* %203, !mcsema_real_eip !108
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -36
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %204 = ptrtoint i64* %_allin_new_bt_105 to i64, !mcsema_real_eip !109
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !109
  %_ptr_bt_415 = bitcast i32* %205 to i8*
  %_offset_above_rbp_416 = sub i64 %204, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_ptr_bt_415, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_ptr_bt_415, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_ptr_bt_415, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  br i1 %_cond1_n_cond2_cond3_424, label %206, label %207

; <label>:206:                                    ; preds = %200
  %_address_in_parent_stack_bt_426 = bitcast i8* %_pot_address_in_parent_stack_417 to i32*
  br label %207

; <label>:207:                                    ; preds = %200, %206
  %208 = phi i32* [ %205, %200 ], [ %_address_in_parent_stack_bt_426, %206 ]
  %_new_load_427 = load i32, i32* %208
  %209 = zext i32 %_new_load_427 to i64, !mcsema_real_eip !109
  store i64 %209, i64* %XSI, !mcsema_real_eip !109
  %_new_gep_107 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -64
  %_allin_new_bt_108 = bitcast i8* %_new_gep_107 to i64*
  %_ptr_to_int_428 = ptrtoint i64* %_allin_new_bt_108 to i64
  %_offset_above_rbp_431 = sub i64 %_ptr_to_int_428, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_new_gep_107, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_new_gep_107, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_new_gep_107, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  br i1 %_cond1_n_cond2_cond3_439, label %210, label %211

; <label>:210:                                    ; preds = %207
  %_address_in_parent_stack_bt_441 = bitcast i8* %_pot_address_in_parent_stack_432 to i64*
  br label %211

; <label>:211:                                    ; preds = %207, %210
  %212 = phi i64* [ %_allin_new_bt_108, %207 ], [ %_address_in_parent_stack_bt_441, %210 ]
  %_new_load_442 = load i64, i64* %212
  store i64 %_new_load_442, i64* %XCX, !mcsema_real_eip !110
  %213 = add i64 %_new_load_442, 4, !mcsema_real_eip !111
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !111
  %215 = inttoptr i64 %213 to i32*, !mcsema_real_eip !111
  %_ptr_bt_445 = bitcast i32* %215 to i8*
  %_offset_above_rbp_446 = sub i64 %213, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_ptr_bt_445, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_ptr_bt_445, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_ptr_bt_445, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond1_n_cond2_453, %_cond4_452
  br i1 %_cond1_n_cond2_cond3_454, label %216, label %217

; <label>:216:                                    ; preds = %211
  %_address_in_parent_stack_bt_456 = bitcast i8* %_pot_address_in_parent_stack_447 to i32*
  br label %217

; <label>:217:                                    ; preds = %211, %216
  %218 = phi i32* [ %215, %211 ], [ %_address_in_parent_stack_bt_456, %216 ]
  %_new_load_457 = load i32, i32* %218
  %ESI_val.176 = load i32, i32* %ESI.112, !mcsema_real_eip !111
  %219 = add i32 %ESI_val.176, %_new_load_457, !mcsema_real_eip !111
  %220 = xor i32 %219, %_new_load_457, !mcsema_real_eip !111
  %221 = xor i32 %220, %ESI_val.176, !mcsema_real_eip !111
  %222 = and i32 %221, 16, !mcsema_real_eip !111
  %223 = icmp ne i32 %222, 0, !mcsema_real_eip !111
  store i1 %223, i1* %AF, !mcsema_real_eip !111
  %224 = lshr i32 %219, 31, !mcsema_real_eip !111
  %225 = trunc i32 %224 to i1, !mcsema_real_eip !111
  store i1 %225, i1* %SF, !mcsema_real_eip !111
  %226 = icmp eq i32 %219, 0, !mcsema_real_eip !111
  store i1 %226, i1* %ZF, !mcsema_real_eip !111
  %227 = xor i32 %_new_load_457, %ESI_val.176, !mcsema_real_eip !111
  %228 = xor i32 %227, -1, !mcsema_real_eip !111
  %229 = and i32 %228, %220, !mcsema_real_eip !111
  %230 = lshr i32 %229, 31, !mcsema_real_eip !111
  %231 = and i32 %230, 1, !mcsema_real_eip !111
  %232 = trunc i32 %231 to i1, !mcsema_real_eip !111
  store i1 %232, i1* %OF, !mcsema_real_eip !111
  %233 = trunc i32 %219 to i8, !mcsema_real_eip !111
  %234 = call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !111
  %235 = trunc i8 %234 to i1, !mcsema_real_eip !111
  %236 = xor i1 %235, true, !mcsema_real_eip !111
  store i1 %236, i1* %PF, !mcsema_real_eip !111
  %237 = icmp ult i32 %219, %_new_load_457, !mcsema_real_eip !111
  store i1 %237, i1* %CF, !mcsema_real_eip !111
  %238 = zext i32 %219 to i64, !mcsema_real_eip !111
  store i64 %238, i64* %XSI, !mcsema_real_eip !111
  %_new_gep_110 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -72
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %_ptr_to_int_458 = ptrtoint i64* %_allin_new_bt_111 to i64
  %_offset_above_rbp_461 = sub i64 %_ptr_to_int_458, %_local_end_to_int_
  %_pot_address_in_parent_stack_462 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_461
  %_cond1_463 = icmp ugt i8* %_new_gep_110, %_local_stack_end_ptr_
  %_cond2_1_464 = icmp ugt i8* %_new_gep_110, %_parent_stack_end_ptr_
  %_cond2_2_465 = icmp ult i8* %_new_gep_110, %_parent_stack_start_ptr_
  %_cond2_466 = or i1 %_cond2_1_464, %_cond2_2_465
  %_cond4_467 = icmp ule i8* %_pot_address_in_parent_stack_462, %_parent_stack_end_ptr_
  %_cond1_n_cond2_468 = and i1 %_cond1_463, %_cond2_466
  %_cond1_n_cond2_cond3_469 = and i1 %_cond1_n_cond2_468, %_cond4_467
  br i1 %_cond1_n_cond2_cond3_469, label %239, label %240

; <label>:239:                                    ; preds = %217
  %_address_in_parent_stack_bt_471 = bitcast i8* %_pot_address_in_parent_stack_462 to i64*
  br label %240

; <label>:240:                                    ; preds = %217, %239
  %241 = phi i64* [ %_allin_new_bt_111, %217 ], [ %_address_in_parent_stack_bt_471, %239 ]
  %_new_load_472 = load i64, i64* %241
  store i64 %_new_load_472, i64* %XCX, !mcsema_real_eip !112
  %242 = add i64 %_new_load_472, 4, !mcsema_real_eip !113
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !113
  %244 = inttoptr i64 %242 to i32*, !mcsema_real_eip !113
  %_ptr_bt_475 = bitcast i32* %244 to i8*
  %_offset_above_rbp_476 = sub i64 %242, %_local_end_to_int_
  %_pot_address_in_parent_stack_477 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_476
  %_cond1_478 = icmp ugt i8* %_ptr_bt_475, %_local_stack_end_ptr_
  %_cond2_1_479 = icmp ugt i8* %_ptr_bt_475, %_parent_stack_end_ptr_
  %_cond2_2_480 = icmp ult i8* %_ptr_bt_475, %_parent_stack_start_ptr_
  %_cond2_481 = or i1 %_cond2_1_479, %_cond2_2_480
  %_cond4_482 = icmp ule i8* %_pot_address_in_parent_stack_477, %_parent_stack_end_ptr_
  %_cond1_n_cond2_483 = and i1 %_cond1_478, %_cond2_481
  %_cond1_n_cond2_cond3_484 = and i1 %_cond1_n_cond2_483, %_cond4_482
  br i1 %_cond1_n_cond2_cond3_484, label %245, label %246

; <label>:245:                                    ; preds = %240
  %_address_in_parent_stack_bt_486 = bitcast i8* %_pot_address_in_parent_stack_477 to i32*
  br label %246

; <label>:246:                                    ; preds = %240, %245
  %247 = phi i32* [ %244, %240 ], [ %_address_in_parent_stack_bt_486, %245 ]
  %_new_load_487 = load i32, i32* %247
  %ESI_val.180 = load i32, i32* %ESI.112, !mcsema_real_eip !113
  %248 = add i32 %ESI_val.180, %_new_load_487, !mcsema_real_eip !113
  %249 = xor i32 %248, %_new_load_487, !mcsema_real_eip !113
  %250 = xor i32 %249, %ESI_val.180, !mcsema_real_eip !113
  %251 = and i32 %250, 16, !mcsema_real_eip !113
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !113
  store i1 %252, i1* %AF, !mcsema_real_eip !113
  %253 = lshr i32 %248, 31, !mcsema_real_eip !113
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !113
  store i1 %254, i1* %SF, !mcsema_real_eip !113
  %255 = icmp eq i32 %248, 0, !mcsema_real_eip !113
  store i1 %255, i1* %ZF, !mcsema_real_eip !113
  %256 = xor i32 %_new_load_487, %ESI_val.180, !mcsema_real_eip !113
  %257 = xor i32 %256, -1, !mcsema_real_eip !113
  %258 = and i32 %257, %249, !mcsema_real_eip !113
  %259 = lshr i32 %258, 31, !mcsema_real_eip !113
  %260 = and i32 %259, 1, !mcsema_real_eip !113
  %261 = trunc i32 %260 to i1, !mcsema_real_eip !113
  store i1 %261, i1* %OF, !mcsema_real_eip !113
  %262 = trunc i32 %248 to i8, !mcsema_real_eip !113
  %263 = call i8 @llvm.ctpop.i8(i8 %262), !mcsema_real_eip !113
  %264 = trunc i8 %263 to i1, !mcsema_real_eip !113
  %265 = xor i1 %264, true, !mcsema_real_eip !113
  store i1 %265, i1* %PF, !mcsema_real_eip !113
  %266 = icmp ult i32 %248, %_new_load_487, !mcsema_real_eip !113
  store i1 %266, i1* %CF, !mcsema_real_eip !113
  %267 = zext i32 %248 to i64, !mcsema_real_eip !113
  store i64 %267, i64* %XSI, !mcsema_real_eip !113
  %RAX_val.181 = load i64, i64* %XAX, !mcsema_real_eip !114
  %268 = add i64 %RAX_val.181, 4, !mcsema_real_eip !114
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !114
  %270 = inttoptr i64 %268 to i32*, !mcsema_real_eip !114
  %_ptr_bt_490 = bitcast i32* %270 to i8*
  %_offset_above_rbp_491 = sub i64 %268, %_local_end_to_int_
  %_pot_address_in_parent_stack_492 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_491
  %_cond1_493 = icmp ugt i8* %_ptr_bt_490, %_local_stack_end_ptr_
  %_cond2_1_494 = icmp ugt i8* %_ptr_bt_490, %_parent_stack_end_ptr_
  %_cond2_2_495 = icmp ult i8* %_ptr_bt_490, %_parent_stack_start_ptr_
  %_cond2_496 = or i1 %_cond2_1_494, %_cond2_2_495
  %_cond4_497 = icmp ule i8* %_pot_address_in_parent_stack_492, %_parent_stack_end_ptr_
  %_cond1_n_cond2_498 = and i1 %_cond1_493, %_cond2_496
  %_cond1_n_cond2_cond3_499 = and i1 %_cond1_n_cond2_498, %_cond4_497
  br i1 %_cond1_n_cond2_cond3_499, label %271, label %272

; <label>:271:                                    ; preds = %246
  %_address_in_parent_stack_bt_501 = bitcast i8* %_pot_address_in_parent_stack_492 to i32*
  br label %272

; <label>:272:                                    ; preds = %246, %271
  %273 = phi i32* [ %270, %246 ], [ %_address_in_parent_stack_bt_501, %271 ]
  %_new_load_502 = load i32, i32* %273
  %274 = zext i32 %_new_load_502 to i64, !mcsema_real_eip !114
  store i64 %274, i64* %R8, !mcsema_real_eip !114
  %_new_gep_113 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -96
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %_ptr_to_int_503 = ptrtoint i64* %_allin_new_bt_114 to i64
  %_offset_above_rbp_506 = sub i64 %_ptr_to_int_503, %_local_end_to_int_
  %_pot_address_in_parent_stack_507 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_506
  %_cond1_508 = icmp ugt i8* %_new_gep_113, %_local_stack_end_ptr_
  %_cond2_1_509 = icmp ugt i8* %_new_gep_113, %_parent_stack_end_ptr_
  %_cond2_2_510 = icmp ult i8* %_new_gep_113, %_parent_stack_start_ptr_
  %_cond2_511 = or i1 %_cond2_1_509, %_cond2_2_510
  %_cond4_512 = icmp ule i8* %_pot_address_in_parent_stack_507, %_parent_stack_end_ptr_
  %_cond1_n_cond2_513 = and i1 %_cond1_508, %_cond2_511
  %_cond1_n_cond2_cond3_514 = and i1 %_cond1_n_cond2_513, %_cond4_512
  br i1 %_cond1_n_cond2_cond3_514, label %275, label %276

; <label>:275:                                    ; preds = %272
  %_address_in_parent_stack_bt_516 = bitcast i8* %_pot_address_in_parent_stack_507 to i64*
  br label %276

; <label>:276:                                    ; preds = %272, %275
  %277 = phi i64* [ %_allin_new_bt_114, %272 ], [ %_address_in_parent_stack_bt_516, %275 ]
  %_new_load_517 = load i64, i64* %277
  store i64 %_new_load_517, i64* %XCX, !mcsema_real_eip !115
  %278 = add i64 %_new_load_517, 4, !mcsema_real_eip !116
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !116
  %280 = inttoptr i64 %278 to i32*, !mcsema_real_eip !116
  %_ptr_bt_520 = bitcast i32* %280 to i8*
  %_offset_above_rbp_521 = sub i64 %278, %_local_end_to_int_
  %_pot_address_in_parent_stack_522 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_521
  %_cond1_523 = icmp ugt i8* %_ptr_bt_520, %_local_stack_end_ptr_
  %_cond2_1_524 = icmp ugt i8* %_ptr_bt_520, %_parent_stack_end_ptr_
  %_cond2_2_525 = icmp ult i8* %_ptr_bt_520, %_parent_stack_start_ptr_
  %_cond2_526 = or i1 %_cond2_1_524, %_cond2_2_525
  %_cond4_527 = icmp ule i8* %_pot_address_in_parent_stack_522, %_parent_stack_end_ptr_
  %_cond1_n_cond2_528 = and i1 %_cond1_523, %_cond2_526
  %_cond1_n_cond2_cond3_529 = and i1 %_cond1_n_cond2_528, %_cond4_527
  br i1 %_cond1_n_cond2_cond3_529, label %281, label %282

; <label>:281:                                    ; preds = %276
  %_address_in_parent_stack_bt_531 = bitcast i8* %_pot_address_in_parent_stack_522 to i32*
  br label %282

; <label>:282:                                    ; preds = %276, %281
  %283 = phi i32* [ %280, %276 ], [ %_address_in_parent_stack_bt_531, %281 ]
  %_new_load_532 = load i32, i32* %283
  %R8D_val.185 = load i32, i32* %R8D.126, !mcsema_real_eip !116
  %284 = add i32 %R8D_val.185, %_new_load_532, !mcsema_real_eip !116
  %285 = xor i32 %284, %_new_load_532, !mcsema_real_eip !116
  %286 = xor i32 %285, %R8D_val.185, !mcsema_real_eip !116
  %287 = and i32 %286, 16, !mcsema_real_eip !116
  %288 = icmp ne i32 %287, 0, !mcsema_real_eip !116
  store i1 %288, i1* %AF, !mcsema_real_eip !116
  %289 = lshr i32 %284, 31, !mcsema_real_eip !116
  %290 = trunc i32 %289 to i1, !mcsema_real_eip !116
  store i1 %290, i1* %SF, !mcsema_real_eip !116
  %291 = icmp eq i32 %284, 0, !mcsema_real_eip !116
  store i1 %291, i1* %ZF, !mcsema_real_eip !116
  %292 = xor i32 %_new_load_532, %R8D_val.185, !mcsema_real_eip !116
  %293 = xor i32 %292, -1, !mcsema_real_eip !116
  %294 = and i32 %293, %285, !mcsema_real_eip !116
  %295 = lshr i32 %294, 31, !mcsema_real_eip !116
  %296 = and i32 %295, 1, !mcsema_real_eip !116
  %297 = trunc i32 %296 to i1, !mcsema_real_eip !116
  store i1 %297, i1* %OF, !mcsema_real_eip !116
  %298 = trunc i32 %284 to i8, !mcsema_real_eip !116
  %299 = call i8 @llvm.ctpop.i8(i8 %298), !mcsema_real_eip !116
  %300 = trunc i8 %299 to i1, !mcsema_real_eip !116
  %301 = xor i1 %300, true, !mcsema_real_eip !116
  store i1 %301, i1* %PF, !mcsema_real_eip !116
  %302 = icmp ult i32 %284, %_new_load_532, !mcsema_real_eip !116
  store i1 %302, i1* %CF, !mcsema_real_eip !116
  %303 = zext i32 %284 to i64, !mcsema_real_eip !116
  store i64 %303, i64* %R8, !mcsema_real_eip !116
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -104
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %_ptr_to_int_533 = ptrtoint i64* %_allin_new_bt_117 to i64
  %_offset_above_rbp_536 = sub i64 %_ptr_to_int_533, %_local_end_to_int_
  %_pot_address_in_parent_stack_537 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_536
  %_cond1_538 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_539 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_540 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_541 = or i1 %_cond2_1_539, %_cond2_2_540
  %_cond4_542 = icmp ule i8* %_pot_address_in_parent_stack_537, %_parent_stack_end_ptr_
  %_cond1_n_cond2_543 = and i1 %_cond1_538, %_cond2_541
  %_cond1_n_cond2_cond3_544 = and i1 %_cond1_n_cond2_543, %_cond4_542
  br i1 %_cond1_n_cond2_cond3_544, label %304, label %305

; <label>:304:                                    ; preds = %282
  %_address_in_parent_stack_bt_546 = bitcast i8* %_pot_address_in_parent_stack_537 to i64*
  br label %305

; <label>:305:                                    ; preds = %282, %304
  %306 = phi i64* [ %_allin_new_bt_117, %282 ], [ %_address_in_parent_stack_bt_546, %304 ]
  %_new_load_547 = load i64, i64* %306
  store i64 %_new_load_547, i64* %XCX, !mcsema_real_eip !117
  %307 = add i64 %_new_load_547, 4, !mcsema_real_eip !118
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !118
  %309 = inttoptr i64 %307 to i32*, !mcsema_real_eip !118
  %_ptr_bt_550 = bitcast i32* %309 to i8*
  %_offset_above_rbp_551 = sub i64 %307, %_local_end_to_int_
  %_pot_address_in_parent_stack_552 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_551
  %_cond1_553 = icmp ugt i8* %_ptr_bt_550, %_local_stack_end_ptr_
  %_cond2_1_554 = icmp ugt i8* %_ptr_bt_550, %_parent_stack_end_ptr_
  %_cond2_2_555 = icmp ult i8* %_ptr_bt_550, %_parent_stack_start_ptr_
  %_cond2_556 = or i1 %_cond2_1_554, %_cond2_2_555
  %_cond4_557 = icmp ule i8* %_pot_address_in_parent_stack_552, %_parent_stack_end_ptr_
  %_cond1_n_cond2_558 = and i1 %_cond1_553, %_cond2_556
  %_cond1_n_cond2_cond3_559 = and i1 %_cond1_n_cond2_558, %_cond4_557
  br i1 %_cond1_n_cond2_cond3_559, label %310, label %311

; <label>:310:                                    ; preds = %305
  %_address_in_parent_stack_bt_561 = bitcast i8* %_pot_address_in_parent_stack_552 to i32*
  br label %311

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i32* [ %309, %305 ], [ %_address_in_parent_stack_bt_561, %310 ]
  %_new_load_562 = load i32, i32* %312
  %R8D_val.189 = load i32, i32* %R8D.126, !mcsema_real_eip !118
  %313 = add i32 %R8D_val.189, %_new_load_562, !mcsema_real_eip !118
  %314 = xor i32 %313, %_new_load_562, !mcsema_real_eip !118
  %315 = xor i32 %314, %R8D_val.189, !mcsema_real_eip !118
  %316 = and i32 %315, 16, !mcsema_real_eip !118
  %317 = icmp ne i32 %316, 0, !mcsema_real_eip !118
  store i1 %317, i1* %AF, !mcsema_real_eip !118
  %318 = lshr i32 %313, 31, !mcsema_real_eip !118
  %319 = trunc i32 %318 to i1, !mcsema_real_eip !118
  store i1 %319, i1* %SF, !mcsema_real_eip !118
  %320 = icmp eq i32 %313, 0, !mcsema_real_eip !118
  store i1 %320, i1* %ZF, !mcsema_real_eip !118
  %321 = xor i32 %_new_load_562, %R8D_val.189, !mcsema_real_eip !118
  %322 = xor i32 %321, -1, !mcsema_real_eip !118
  %323 = and i32 %322, %314, !mcsema_real_eip !118
  %324 = lshr i32 %323, 31, !mcsema_real_eip !118
  %325 = and i32 %324, 1, !mcsema_real_eip !118
  %326 = trunc i32 %325 to i1, !mcsema_real_eip !118
  store i1 %326, i1* %OF, !mcsema_real_eip !118
  %327 = trunc i32 %313 to i8, !mcsema_real_eip !118
  %328 = call i8 @llvm.ctpop.i8(i8 %327), !mcsema_real_eip !118
  %329 = trunc i8 %328 to i1, !mcsema_real_eip !118
  %330 = xor i1 %329, true, !mcsema_real_eip !118
  store i1 %330, i1* %PF, !mcsema_real_eip !118
  %331 = icmp ult i32 %313, %_new_load_562, !mcsema_real_eip !118
  store i1 %331, i1* %CF, !mcsema_real_eip !118
  %332 = zext i32 %313 to i64, !mcsema_real_eip !118
  store i64 %332, i64* %R8, !mcsema_real_eip !118
  %ESI_val.191 = load i32, i32* %ESI.112, !mcsema_real_eip !119
  %R8D_val.193 = load i32, i32* %R8D.126, !mcsema_real_eip !119
  %333 = add i32 %R8D_val.193, %ESI_val.191, !mcsema_real_eip !119
  %334 = xor i32 %333, %ESI_val.191, !mcsema_real_eip !119
  %335 = xor i32 %334, %R8D_val.193, !mcsema_real_eip !119
  %336 = and i32 %335, 16, !mcsema_real_eip !119
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !119
  store i1 %337, i1* %AF, !mcsema_real_eip !119
  %338 = lshr i32 %333, 31, !mcsema_real_eip !119
  %339 = trunc i32 %338 to i1, !mcsema_real_eip !119
  store i1 %339, i1* %SF, !mcsema_real_eip !119
  %340 = icmp eq i32 %333, 0, !mcsema_real_eip !119
  store i1 %340, i1* %ZF, !mcsema_real_eip !119
  %341 = xor i32 %ESI_val.191, %R8D_val.193, !mcsema_real_eip !119
  %342 = xor i32 %341, -1, !mcsema_real_eip !119
  %343 = and i32 %342, %334, !mcsema_real_eip !119
  %344 = lshr i32 %343, 31, !mcsema_real_eip !119
  %345 = and i32 %344, 1, !mcsema_real_eip !119
  %346 = trunc i32 %345 to i1, !mcsema_real_eip !119
  store i1 %346, i1* %OF, !mcsema_real_eip !119
  %347 = trunc i32 %333 to i8, !mcsema_real_eip !119
  %348 = call i8 @llvm.ctpop.i8(i8 %347), !mcsema_real_eip !119
  %349 = trunc i8 %348 to i1, !mcsema_real_eip !119
  %350 = xor i1 %349, true, !mcsema_real_eip !119
  store i1 %350, i1* %PF, !mcsema_real_eip !119
  %351 = icmp ult i32 %333, %ESI_val.191, !mcsema_real_eip !119
  store i1 %351, i1* %CF, !mcsema_real_eip !119
  %352 = zext i32 %333 to i64, !mcsema_real_eip !119
  store i64 %352, i64* %XSI, !mcsema_real_eip !119
  %_new_gep_119 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -112
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  %_ptr_to_int_563 = ptrtoint i64* %_allin_new_bt_120 to i64
  %_offset_above_rbp_566 = sub i64 %_ptr_to_int_563, %_local_end_to_int_
  %_pot_address_in_parent_stack_567 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_566
  %_cond1_568 = icmp ugt i8* %_new_gep_119, %_local_stack_end_ptr_
  %_cond2_1_569 = icmp ugt i8* %_new_gep_119, %_parent_stack_end_ptr_
  %_cond2_2_570 = icmp ult i8* %_new_gep_119, %_parent_stack_start_ptr_
  %_cond2_571 = or i1 %_cond2_1_569, %_cond2_2_570
  %_cond4_572 = icmp ule i8* %_pot_address_in_parent_stack_567, %_parent_stack_end_ptr_
  %_cond1_n_cond2_573 = and i1 %_cond1_568, %_cond2_571
  %_cond1_n_cond2_cond3_574 = and i1 %_cond1_n_cond2_573, %_cond4_572
  br i1 %_cond1_n_cond2_cond3_574, label %353, label %354

; <label>:353:                                    ; preds = %311
  %_address_in_parent_stack_bt_576 = bitcast i8* %_pot_address_in_parent_stack_567 to i64*
  br label %354

; <label>:354:                                    ; preds = %311, %353
  %355 = phi i64* [ %_allin_new_bt_120, %311 ], [ %_address_in_parent_stack_bt_576, %353 ]
  %_new_load_577 = load i64, i64* %355
  store i64 %_new_load_577, i64* %XCX, !mcsema_real_eip !120
  %356 = add i64 %_new_load_577, 4, !mcsema_real_eip !121
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !121
  %ESI_val.197 = load i32, i32* %ESI.112, !mcsema_real_eip !121
  %358 = inttoptr i64 %356 to i32*, !mcsema_real_eip !121
  store i32 %ESI_val.197, i32* %358, !mcsema_real_eip !121
  %_load_rbp_ptr_121 = load i8*, i8** %_RBP_ptr_
  %_new_gep_122 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -32
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %359 = ptrtoint i64* %_allin_new_bt_123 to i64, !mcsema_real_eip !122
  %360 = inttoptr i64 %359 to i32*, !mcsema_real_eip !122
  %_ptr_bt_580 = bitcast i32* %360 to i8*
  %_offset_above_rbp_581 = sub i64 %359, %_local_end_to_int_
  %_pot_address_in_parent_stack_582 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_581
  %_cond1_583 = icmp ugt i8* %_ptr_bt_580, %_local_stack_end_ptr_
  %_cond2_1_584 = icmp ugt i8* %_ptr_bt_580, %_parent_stack_end_ptr_
  %_cond2_2_585 = icmp ult i8* %_ptr_bt_580, %_parent_stack_start_ptr_
  %_cond2_586 = or i1 %_cond2_1_584, %_cond2_2_585
  %_cond4_587 = icmp ule i8* %_pot_address_in_parent_stack_582, %_parent_stack_end_ptr_
  %_cond1_n_cond2_588 = and i1 %_cond1_583, %_cond2_586
  %_cond1_n_cond2_cond3_589 = and i1 %_cond1_n_cond2_588, %_cond4_587
  br i1 %_cond1_n_cond2_cond3_589, label %361, label %362

; <label>:361:                                    ; preds = %354
  %_address_in_parent_stack_bt_591 = bitcast i8* %_pot_address_in_parent_stack_582 to i32*
  br label %362

; <label>:362:                                    ; preds = %354, %361
  %363 = phi i32* [ %360, %354 ], [ %_address_in_parent_stack_bt_591, %361 ]
  %_new_load_592 = load i32, i32* %363
  %364 = zext i32 %_new_load_592 to i64, !mcsema_real_eip !122
  store i64 %364, i64* %XSI, !mcsema_real_eip !122
  %_new_gep_125 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -64
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  %_ptr_to_int_593 = ptrtoint i64* %_allin_new_bt_126 to i64
  %_offset_above_rbp_596 = sub i64 %_ptr_to_int_593, %_local_end_to_int_
  %_pot_address_in_parent_stack_597 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_596
  %_cond1_598 = icmp ugt i8* %_new_gep_125, %_local_stack_end_ptr_
  %_cond2_1_599 = icmp ugt i8* %_new_gep_125, %_parent_stack_end_ptr_
  %_cond2_2_600 = icmp ult i8* %_new_gep_125, %_parent_stack_start_ptr_
  %_cond2_601 = or i1 %_cond2_1_599, %_cond2_2_600
  %_cond4_602 = icmp ule i8* %_pot_address_in_parent_stack_597, %_parent_stack_end_ptr_
  %_cond1_n_cond2_603 = and i1 %_cond1_598, %_cond2_601
  %_cond1_n_cond2_cond3_604 = and i1 %_cond1_n_cond2_603, %_cond4_602
  br i1 %_cond1_n_cond2_cond3_604, label %365, label %366

; <label>:365:                                    ; preds = %362
  %_address_in_parent_stack_bt_606 = bitcast i8* %_pot_address_in_parent_stack_597 to i64*
  br label %366

; <label>:366:                                    ; preds = %362, %365
  %367 = phi i64* [ %_allin_new_bt_126, %362 ], [ %_address_in_parent_stack_bt_606, %365 ]
  %_new_load_607 = load i64, i64* %367
  store i64 %_new_load_607, i64* %XCX, !mcsema_real_eip !123
  %368 = add i64 %_new_load_607, 8, !mcsema_real_eip !124
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !124
  %370 = inttoptr i64 %368 to i32*, !mcsema_real_eip !124
  %_ptr_bt_610 = bitcast i32* %370 to i8*
  %_offset_above_rbp_611 = sub i64 %368, %_local_end_to_int_
  %_pot_address_in_parent_stack_612 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_611
  %_cond1_613 = icmp ugt i8* %_ptr_bt_610, %_local_stack_end_ptr_
  %_cond2_1_614 = icmp ugt i8* %_ptr_bt_610, %_parent_stack_end_ptr_
  %_cond2_2_615 = icmp ult i8* %_ptr_bt_610, %_parent_stack_start_ptr_
  %_cond2_616 = or i1 %_cond2_1_614, %_cond2_2_615
  %_cond4_617 = icmp ule i8* %_pot_address_in_parent_stack_612, %_parent_stack_end_ptr_
  %_cond1_n_cond2_618 = and i1 %_cond1_613, %_cond2_616
  %_cond1_n_cond2_cond3_619 = and i1 %_cond1_n_cond2_618, %_cond4_617
  br i1 %_cond1_n_cond2_cond3_619, label %371, label %372

; <label>:371:                                    ; preds = %366
  %_address_in_parent_stack_bt_621 = bitcast i8* %_pot_address_in_parent_stack_612 to i32*
  br label %372

; <label>:372:                                    ; preds = %366, %371
  %373 = phi i32* [ %370, %366 ], [ %_address_in_parent_stack_bt_621, %371 ]
  %_new_load_622 = load i32, i32* %373
  %ESI_val.202 = load i32, i32* %ESI.112, !mcsema_real_eip !124
  %374 = add i32 %ESI_val.202, %_new_load_622, !mcsema_real_eip !124
  %375 = xor i32 %374, %_new_load_622, !mcsema_real_eip !124
  %376 = xor i32 %375, %ESI_val.202, !mcsema_real_eip !124
  %377 = and i32 %376, 16, !mcsema_real_eip !124
  %378 = icmp ne i32 %377, 0, !mcsema_real_eip !124
  store i1 %378, i1* %AF, !mcsema_real_eip !124
  %379 = lshr i32 %374, 31, !mcsema_real_eip !124
  %380 = trunc i32 %379 to i1, !mcsema_real_eip !124
  store i1 %380, i1* %SF, !mcsema_real_eip !124
  %381 = icmp eq i32 %374, 0, !mcsema_real_eip !124
  store i1 %381, i1* %ZF, !mcsema_real_eip !124
  %382 = xor i32 %_new_load_622, %ESI_val.202, !mcsema_real_eip !124
  %383 = xor i32 %382, -1, !mcsema_real_eip !124
  %384 = and i32 %383, %375, !mcsema_real_eip !124
  %385 = lshr i32 %384, 31, !mcsema_real_eip !124
  %386 = and i32 %385, 1, !mcsema_real_eip !124
  %387 = trunc i32 %386 to i1, !mcsema_real_eip !124
  store i1 %387, i1* %OF, !mcsema_real_eip !124
  %388 = trunc i32 %374 to i8, !mcsema_real_eip !124
  %389 = call i8 @llvm.ctpop.i8(i8 %388), !mcsema_real_eip !124
  %390 = trunc i8 %389 to i1, !mcsema_real_eip !124
  %391 = xor i1 %390, true, !mcsema_real_eip !124
  store i1 %391, i1* %PF, !mcsema_real_eip !124
  %392 = icmp ult i32 %374, %_new_load_622, !mcsema_real_eip !124
  store i1 %392, i1* %CF, !mcsema_real_eip !124
  %393 = zext i32 %374 to i64, !mcsema_real_eip !124
  store i64 %393, i64* %XSI, !mcsema_real_eip !124
  %_new_gep_128 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -72
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %_ptr_to_int_623 = ptrtoint i64* %_allin_new_bt_129 to i64
  %_offset_above_rbp_626 = sub i64 %_ptr_to_int_623, %_local_end_to_int_
  %_pot_address_in_parent_stack_627 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_626
  %_cond1_628 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_629 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_630 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_631 = or i1 %_cond2_1_629, %_cond2_2_630
  %_cond4_632 = icmp ule i8* %_pot_address_in_parent_stack_627, %_parent_stack_end_ptr_
  %_cond1_n_cond2_633 = and i1 %_cond1_628, %_cond2_631
  %_cond1_n_cond2_cond3_634 = and i1 %_cond1_n_cond2_633, %_cond4_632
  br i1 %_cond1_n_cond2_cond3_634, label %394, label %395

; <label>:394:                                    ; preds = %372
  %_address_in_parent_stack_bt_636 = bitcast i8* %_pot_address_in_parent_stack_627 to i64*
  br label %395

; <label>:395:                                    ; preds = %372, %394
  %396 = phi i64* [ %_allin_new_bt_129, %372 ], [ %_address_in_parent_stack_bt_636, %394 ]
  %_new_load_637 = load i64, i64* %396
  store i64 %_new_load_637, i64* %XCX, !mcsema_real_eip !125
  %397 = add i64 %_new_load_637, 8, !mcsema_real_eip !126
  %398 = inttoptr i64 %397 to i64*, !mcsema_real_eip !126
  %399 = inttoptr i64 %397 to i32*, !mcsema_real_eip !126
  %_ptr_bt_640 = bitcast i32* %399 to i8*
  %_offset_above_rbp_641 = sub i64 %397, %_local_end_to_int_
  %_pot_address_in_parent_stack_642 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_641
  %_cond1_643 = icmp ugt i8* %_ptr_bt_640, %_local_stack_end_ptr_
  %_cond2_1_644 = icmp ugt i8* %_ptr_bt_640, %_parent_stack_end_ptr_
  %_cond2_2_645 = icmp ult i8* %_ptr_bt_640, %_parent_stack_start_ptr_
  %_cond2_646 = or i1 %_cond2_1_644, %_cond2_2_645
  %_cond4_647 = icmp ule i8* %_pot_address_in_parent_stack_642, %_parent_stack_end_ptr_
  %_cond1_n_cond2_648 = and i1 %_cond1_643, %_cond2_646
  %_cond1_n_cond2_cond3_649 = and i1 %_cond1_n_cond2_648, %_cond4_647
  br i1 %_cond1_n_cond2_cond3_649, label %400, label %401

; <label>:400:                                    ; preds = %395
  %_address_in_parent_stack_bt_651 = bitcast i8* %_pot_address_in_parent_stack_642 to i32*
  br label %401

; <label>:401:                                    ; preds = %395, %400
  %402 = phi i32* [ %399, %395 ], [ %_address_in_parent_stack_bt_651, %400 ]
  %_new_load_652 = load i32, i32* %402
  %ESI_val.206 = load i32, i32* %ESI.112, !mcsema_real_eip !126
  %403 = add i32 %ESI_val.206, %_new_load_652, !mcsema_real_eip !126
  %404 = xor i32 %403, %_new_load_652, !mcsema_real_eip !126
  %405 = xor i32 %404, %ESI_val.206, !mcsema_real_eip !126
  %406 = and i32 %405, 16, !mcsema_real_eip !126
  %407 = icmp ne i32 %406, 0, !mcsema_real_eip !126
  store i1 %407, i1* %AF, !mcsema_real_eip !126
  %408 = lshr i32 %403, 31, !mcsema_real_eip !126
  %409 = trunc i32 %408 to i1, !mcsema_real_eip !126
  store i1 %409, i1* %SF, !mcsema_real_eip !126
  %410 = icmp eq i32 %403, 0, !mcsema_real_eip !126
  store i1 %410, i1* %ZF, !mcsema_real_eip !126
  %411 = xor i32 %_new_load_652, %ESI_val.206, !mcsema_real_eip !126
  %412 = xor i32 %411, -1, !mcsema_real_eip !126
  %413 = and i32 %412, %404, !mcsema_real_eip !126
  %414 = lshr i32 %413, 31, !mcsema_real_eip !126
  %415 = and i32 %414, 1, !mcsema_real_eip !126
  %416 = trunc i32 %415 to i1, !mcsema_real_eip !126
  store i1 %416, i1* %OF, !mcsema_real_eip !126
  %417 = trunc i32 %403 to i8, !mcsema_real_eip !126
  %418 = call i8 @llvm.ctpop.i8(i8 %417), !mcsema_real_eip !126
  %419 = trunc i8 %418 to i1, !mcsema_real_eip !126
  %420 = xor i1 %419, true, !mcsema_real_eip !126
  store i1 %420, i1* %PF, !mcsema_real_eip !126
  %421 = icmp ult i32 %403, %_new_load_652, !mcsema_real_eip !126
  store i1 %421, i1* %CF, !mcsema_real_eip !126
  %422 = zext i32 %403 to i64, !mcsema_real_eip !126
  store i64 %422, i64* %XSI, !mcsema_real_eip !126
  %RAX_val.207 = load i64, i64* %XAX, !mcsema_real_eip !127
  %423 = add i64 %RAX_val.207, 8, !mcsema_real_eip !127
  %424 = inttoptr i64 %423 to i64*, !mcsema_real_eip !127
  %425 = inttoptr i64 %423 to i32*, !mcsema_real_eip !127
  %_ptr_bt_655 = bitcast i32* %425 to i8*
  %_offset_above_rbp_656 = sub i64 %423, %_local_end_to_int_
  %_pot_address_in_parent_stack_657 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_656
  %_cond1_658 = icmp ugt i8* %_ptr_bt_655, %_local_stack_end_ptr_
  %_cond2_1_659 = icmp ugt i8* %_ptr_bt_655, %_parent_stack_end_ptr_
  %_cond2_2_660 = icmp ult i8* %_ptr_bt_655, %_parent_stack_start_ptr_
  %_cond2_661 = or i1 %_cond2_1_659, %_cond2_2_660
  %_cond4_662 = icmp ule i8* %_pot_address_in_parent_stack_657, %_parent_stack_end_ptr_
  %_cond1_n_cond2_663 = and i1 %_cond1_658, %_cond2_661
  %_cond1_n_cond2_cond3_664 = and i1 %_cond1_n_cond2_663, %_cond4_662
  br i1 %_cond1_n_cond2_cond3_664, label %426, label %427

; <label>:426:                                    ; preds = %401
  %_address_in_parent_stack_bt_666 = bitcast i8* %_pot_address_in_parent_stack_657 to i32*
  br label %427

; <label>:427:                                    ; preds = %401, %426
  %428 = phi i32* [ %425, %401 ], [ %_address_in_parent_stack_bt_666, %426 ]
  %_new_load_667 = load i32, i32* %428
  %429 = zext i32 %_new_load_667 to i64, !mcsema_real_eip !127
  store i64 %429, i64* %R8, !mcsema_real_eip !127
  %_new_gep_131 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -96
  %_allin_new_bt_132 = bitcast i8* %_new_gep_131 to i64*
  %_ptr_to_int_668 = ptrtoint i64* %_allin_new_bt_132 to i64
  %_offset_above_rbp_671 = sub i64 %_ptr_to_int_668, %_local_end_to_int_
  %_pot_address_in_parent_stack_672 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_671
  %_cond1_673 = icmp ugt i8* %_new_gep_131, %_local_stack_end_ptr_
  %_cond2_1_674 = icmp ugt i8* %_new_gep_131, %_parent_stack_end_ptr_
  %_cond2_2_675 = icmp ult i8* %_new_gep_131, %_parent_stack_start_ptr_
  %_cond2_676 = or i1 %_cond2_1_674, %_cond2_2_675
  %_cond4_677 = icmp ule i8* %_pot_address_in_parent_stack_672, %_parent_stack_end_ptr_
  %_cond1_n_cond2_678 = and i1 %_cond1_673, %_cond2_676
  %_cond1_n_cond2_cond3_679 = and i1 %_cond1_n_cond2_678, %_cond4_677
  br i1 %_cond1_n_cond2_cond3_679, label %430, label %431

; <label>:430:                                    ; preds = %427
  %_address_in_parent_stack_bt_681 = bitcast i8* %_pot_address_in_parent_stack_672 to i64*
  br label %431

; <label>:431:                                    ; preds = %427, %430
  %432 = phi i64* [ %_allin_new_bt_132, %427 ], [ %_address_in_parent_stack_bt_681, %430 ]
  %_new_load_682 = load i64, i64* %432
  store i64 %_new_load_682, i64* %XCX, !mcsema_real_eip !128
  %433 = add i64 %_new_load_682, 8, !mcsema_real_eip !129
  %434 = inttoptr i64 %433 to i64*, !mcsema_real_eip !129
  %435 = inttoptr i64 %433 to i32*, !mcsema_real_eip !129
  %_ptr_bt_685 = bitcast i32* %435 to i8*
  %_offset_above_rbp_686 = sub i64 %433, %_local_end_to_int_
  %_pot_address_in_parent_stack_687 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_686
  %_cond1_688 = icmp ugt i8* %_ptr_bt_685, %_local_stack_end_ptr_
  %_cond2_1_689 = icmp ugt i8* %_ptr_bt_685, %_parent_stack_end_ptr_
  %_cond2_2_690 = icmp ult i8* %_ptr_bt_685, %_parent_stack_start_ptr_
  %_cond2_691 = or i1 %_cond2_1_689, %_cond2_2_690
  %_cond4_692 = icmp ule i8* %_pot_address_in_parent_stack_687, %_parent_stack_end_ptr_
  %_cond1_n_cond2_693 = and i1 %_cond1_688, %_cond2_691
  %_cond1_n_cond2_cond3_694 = and i1 %_cond1_n_cond2_693, %_cond4_692
  br i1 %_cond1_n_cond2_cond3_694, label %436, label %437

; <label>:436:                                    ; preds = %431
  %_address_in_parent_stack_bt_696 = bitcast i8* %_pot_address_in_parent_stack_687 to i32*
  br label %437

; <label>:437:                                    ; preds = %431, %436
  %438 = phi i32* [ %435, %431 ], [ %_address_in_parent_stack_bt_696, %436 ]
  %_new_load_697 = load i32, i32* %438
  %R8D_val.211 = load i32, i32* %R8D.126, !mcsema_real_eip !129
  %439 = add i32 %R8D_val.211, %_new_load_697, !mcsema_real_eip !129
  %440 = xor i32 %439, %_new_load_697, !mcsema_real_eip !129
  %441 = xor i32 %440, %R8D_val.211, !mcsema_real_eip !129
  %442 = and i32 %441, 16, !mcsema_real_eip !129
  %443 = icmp ne i32 %442, 0, !mcsema_real_eip !129
  store i1 %443, i1* %AF, !mcsema_real_eip !129
  %444 = lshr i32 %439, 31, !mcsema_real_eip !129
  %445 = trunc i32 %444 to i1, !mcsema_real_eip !129
  store i1 %445, i1* %SF, !mcsema_real_eip !129
  %446 = icmp eq i32 %439, 0, !mcsema_real_eip !129
  store i1 %446, i1* %ZF, !mcsema_real_eip !129
  %447 = xor i32 %_new_load_697, %R8D_val.211, !mcsema_real_eip !129
  %448 = xor i32 %447, -1, !mcsema_real_eip !129
  %449 = and i32 %448, %440, !mcsema_real_eip !129
  %450 = lshr i32 %449, 31, !mcsema_real_eip !129
  %451 = and i32 %450, 1, !mcsema_real_eip !129
  %452 = trunc i32 %451 to i1, !mcsema_real_eip !129
  store i1 %452, i1* %OF, !mcsema_real_eip !129
  %453 = trunc i32 %439 to i8, !mcsema_real_eip !129
  %454 = call i8 @llvm.ctpop.i8(i8 %453), !mcsema_real_eip !129
  %455 = trunc i8 %454 to i1, !mcsema_real_eip !129
  %456 = xor i1 %455, true, !mcsema_real_eip !129
  store i1 %456, i1* %PF, !mcsema_real_eip !129
  %457 = icmp ult i32 %439, %_new_load_697, !mcsema_real_eip !129
  store i1 %457, i1* %CF, !mcsema_real_eip !129
  %458 = zext i32 %439 to i64, !mcsema_real_eip !129
  store i64 %458, i64* %R8, !mcsema_real_eip !129
  %_new_gep_134 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -104
  %_allin_new_bt_135 = bitcast i8* %_new_gep_134 to i64*
  %_ptr_to_int_698 = ptrtoint i64* %_allin_new_bt_135 to i64
  %_offset_above_rbp_701 = sub i64 %_ptr_to_int_698, %_local_end_to_int_
  %_pot_address_in_parent_stack_702 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_701
  %_cond1_703 = icmp ugt i8* %_new_gep_134, %_local_stack_end_ptr_
  %_cond2_1_704 = icmp ugt i8* %_new_gep_134, %_parent_stack_end_ptr_
  %_cond2_2_705 = icmp ult i8* %_new_gep_134, %_parent_stack_start_ptr_
  %_cond2_706 = or i1 %_cond2_1_704, %_cond2_2_705
  %_cond4_707 = icmp ule i8* %_pot_address_in_parent_stack_702, %_parent_stack_end_ptr_
  %_cond1_n_cond2_708 = and i1 %_cond1_703, %_cond2_706
  %_cond1_n_cond2_cond3_709 = and i1 %_cond1_n_cond2_708, %_cond4_707
  br i1 %_cond1_n_cond2_cond3_709, label %459, label %460

; <label>:459:                                    ; preds = %437
  %_address_in_parent_stack_bt_711 = bitcast i8* %_pot_address_in_parent_stack_702 to i64*
  br label %460

; <label>:460:                                    ; preds = %437, %459
  %461 = phi i64* [ %_allin_new_bt_135, %437 ], [ %_address_in_parent_stack_bt_711, %459 ]
  %_new_load_712 = load i64, i64* %461
  store i64 %_new_load_712, i64* %XCX, !mcsema_real_eip !130
  %462 = add i64 %_new_load_712, 8, !mcsema_real_eip !131
  %463 = inttoptr i64 %462 to i64*, !mcsema_real_eip !131
  %464 = inttoptr i64 %462 to i32*, !mcsema_real_eip !131
  %_ptr_bt_715 = bitcast i32* %464 to i8*
  %_offset_above_rbp_716 = sub i64 %462, %_local_end_to_int_
  %_pot_address_in_parent_stack_717 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_716
  %_cond1_718 = icmp ugt i8* %_ptr_bt_715, %_local_stack_end_ptr_
  %_cond2_1_719 = icmp ugt i8* %_ptr_bt_715, %_parent_stack_end_ptr_
  %_cond2_2_720 = icmp ult i8* %_ptr_bt_715, %_parent_stack_start_ptr_
  %_cond2_721 = or i1 %_cond2_1_719, %_cond2_2_720
  %_cond4_722 = icmp ule i8* %_pot_address_in_parent_stack_717, %_parent_stack_end_ptr_
  %_cond1_n_cond2_723 = and i1 %_cond1_718, %_cond2_721
  %_cond1_n_cond2_cond3_724 = and i1 %_cond1_n_cond2_723, %_cond4_722
  br i1 %_cond1_n_cond2_cond3_724, label %465, label %466

; <label>:465:                                    ; preds = %460
  %_address_in_parent_stack_bt_726 = bitcast i8* %_pot_address_in_parent_stack_717 to i32*
  br label %466

; <label>:466:                                    ; preds = %460, %465
  %467 = phi i32* [ %464, %460 ], [ %_address_in_parent_stack_bt_726, %465 ]
  %_new_load_727 = load i32, i32* %467
  %R8D_val.215 = load i32, i32* %R8D.126, !mcsema_real_eip !131
  %468 = add i32 %R8D_val.215, %_new_load_727, !mcsema_real_eip !131
  %469 = xor i32 %468, %_new_load_727, !mcsema_real_eip !131
  %470 = xor i32 %469, %R8D_val.215, !mcsema_real_eip !131
  %471 = and i32 %470, 16, !mcsema_real_eip !131
  %472 = icmp ne i32 %471, 0, !mcsema_real_eip !131
  store i1 %472, i1* %AF, !mcsema_real_eip !131
  %473 = lshr i32 %468, 31, !mcsema_real_eip !131
  %474 = trunc i32 %473 to i1, !mcsema_real_eip !131
  store i1 %474, i1* %SF, !mcsema_real_eip !131
  %475 = icmp eq i32 %468, 0, !mcsema_real_eip !131
  store i1 %475, i1* %ZF, !mcsema_real_eip !131
  %476 = xor i32 %_new_load_727, %R8D_val.215, !mcsema_real_eip !131
  %477 = xor i32 %476, -1, !mcsema_real_eip !131
  %478 = and i32 %477, %469, !mcsema_real_eip !131
  %479 = lshr i32 %478, 31, !mcsema_real_eip !131
  %480 = and i32 %479, 1, !mcsema_real_eip !131
  %481 = trunc i32 %480 to i1, !mcsema_real_eip !131
  store i1 %481, i1* %OF, !mcsema_real_eip !131
  %482 = trunc i32 %468 to i8, !mcsema_real_eip !131
  %483 = call i8 @llvm.ctpop.i8(i8 %482), !mcsema_real_eip !131
  %484 = trunc i8 %483 to i1, !mcsema_real_eip !131
  %485 = xor i1 %484, true, !mcsema_real_eip !131
  store i1 %485, i1* %PF, !mcsema_real_eip !131
  %486 = icmp ult i32 %468, %_new_load_727, !mcsema_real_eip !131
  store i1 %486, i1* %CF, !mcsema_real_eip !131
  %487 = zext i32 %468 to i64, !mcsema_real_eip !131
  store i64 %487, i64* %R8, !mcsema_real_eip !131
  %ESI_val.217 = load i32, i32* %ESI.112, !mcsema_real_eip !132
  %R8D_val.219 = load i32, i32* %R8D.126, !mcsema_real_eip !132
  %488 = add i32 %R8D_val.219, %ESI_val.217, !mcsema_real_eip !132
  %489 = xor i32 %488, %ESI_val.217, !mcsema_real_eip !132
  %490 = xor i32 %489, %R8D_val.219, !mcsema_real_eip !132
  %491 = and i32 %490, 16, !mcsema_real_eip !132
  %492 = icmp ne i32 %491, 0, !mcsema_real_eip !132
  store i1 %492, i1* %AF, !mcsema_real_eip !132
  %493 = lshr i32 %488, 31, !mcsema_real_eip !132
  %494 = trunc i32 %493 to i1, !mcsema_real_eip !132
  store i1 %494, i1* %SF, !mcsema_real_eip !132
  %495 = icmp eq i32 %488, 0, !mcsema_real_eip !132
  store i1 %495, i1* %ZF, !mcsema_real_eip !132
  %496 = xor i32 %ESI_val.217, %R8D_val.219, !mcsema_real_eip !132
  %497 = xor i32 %496, -1, !mcsema_real_eip !132
  %498 = and i32 %497, %489, !mcsema_real_eip !132
  %499 = lshr i32 %498, 31, !mcsema_real_eip !132
  %500 = and i32 %499, 1, !mcsema_real_eip !132
  %501 = trunc i32 %500 to i1, !mcsema_real_eip !132
  store i1 %501, i1* %OF, !mcsema_real_eip !132
  %502 = trunc i32 %488 to i8, !mcsema_real_eip !132
  %503 = call i8 @llvm.ctpop.i8(i8 %502), !mcsema_real_eip !132
  %504 = trunc i8 %503 to i1, !mcsema_real_eip !132
  %505 = xor i1 %504, true, !mcsema_real_eip !132
  store i1 %505, i1* %PF, !mcsema_real_eip !132
  %506 = icmp ult i32 %488, %ESI_val.217, !mcsema_real_eip !132
  store i1 %506, i1* %CF, !mcsema_real_eip !132
  %507 = zext i32 %488 to i64, !mcsema_real_eip !132
  store i64 %507, i64* %XSI, !mcsema_real_eip !132
  %_new_gep_137 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -112
  %_allin_new_bt_138 = bitcast i8* %_new_gep_137 to i64*
  %_ptr_to_int_728 = ptrtoint i64* %_allin_new_bt_138 to i64
  %_offset_above_rbp_731 = sub i64 %_ptr_to_int_728, %_local_end_to_int_
  %_pot_address_in_parent_stack_732 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_731
  %_cond1_733 = icmp ugt i8* %_new_gep_137, %_local_stack_end_ptr_
  %_cond2_1_734 = icmp ugt i8* %_new_gep_137, %_parent_stack_end_ptr_
  %_cond2_2_735 = icmp ult i8* %_new_gep_137, %_parent_stack_start_ptr_
  %_cond2_736 = or i1 %_cond2_1_734, %_cond2_2_735
  %_cond4_737 = icmp ule i8* %_pot_address_in_parent_stack_732, %_parent_stack_end_ptr_
  %_cond1_n_cond2_738 = and i1 %_cond1_733, %_cond2_736
  %_cond1_n_cond2_cond3_739 = and i1 %_cond1_n_cond2_738, %_cond4_737
  br i1 %_cond1_n_cond2_cond3_739, label %508, label %509

; <label>:508:                                    ; preds = %466
  %_address_in_parent_stack_bt_741 = bitcast i8* %_pot_address_in_parent_stack_732 to i64*
  br label %509

; <label>:509:                                    ; preds = %466, %508
  %510 = phi i64* [ %_allin_new_bt_138, %466 ], [ %_address_in_parent_stack_bt_741, %508 ]
  %_new_load_742 = load i64, i64* %510
  store i64 %_new_load_742, i64* %XCX, !mcsema_real_eip !133
  %511 = add i64 %_new_load_742, 8, !mcsema_real_eip !134
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !134
  %ESI_val.223 = load i32, i32* %ESI.112, !mcsema_real_eip !134
  %513 = inttoptr i64 %511 to i32*, !mcsema_real_eip !134
  store i32 %ESI_val.223, i32* %513, !mcsema_real_eip !134
  %_load_rbp_ptr_139 = load i8*, i8** %_RBP_ptr_
  %_new_gep_140 = getelementptr i8, i8* %_load_rbp_ptr_139, i64 -112
  %_allin_new_bt_141 = bitcast i8* %_new_gep_140 to i64*
  %_ptr_to_int_743 = ptrtoint i64* %_allin_new_bt_141 to i64
  %_offset_above_rbp_746 = sub i64 %_ptr_to_int_743, %_local_end_to_int_
  %_pot_address_in_parent_stack_747 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_746
  %_cond1_748 = icmp ugt i8* %_new_gep_140, %_local_stack_end_ptr_
  %_cond2_1_749 = icmp ugt i8* %_new_gep_140, %_parent_stack_end_ptr_
  %_cond2_2_750 = icmp ult i8* %_new_gep_140, %_parent_stack_start_ptr_
  %_cond2_751 = or i1 %_cond2_1_749, %_cond2_2_750
  %_cond4_752 = icmp ule i8* %_pot_address_in_parent_stack_747, %_parent_stack_end_ptr_
  %_cond1_n_cond2_753 = and i1 %_cond1_748, %_cond2_751
  %_cond1_n_cond2_cond3_754 = and i1 %_cond1_n_cond2_753, %_cond4_752
  br i1 %_cond1_n_cond2_cond3_754, label %514, label %515

; <label>:514:                                    ; preds = %509
  %_address_in_parent_stack_bt_756 = bitcast i8* %_pot_address_in_parent_stack_747 to i64*
  br label %515

; <label>:515:                                    ; preds = %509, %514
  %516 = phi i64* [ %_allin_new_bt_141, %509 ], [ %_address_in_parent_stack_bt_756, %514 ]
  %_new_load_757 = load i64, i64* %516
  store i64 %_new_load_757, i64* %XAX, !mcsema_real_eip !135
  %_load_rsp_ptr_142 = load i8*, i8** %_RSP_ptr_
  %RSP_val.225 = load i64, i64* %XSP, !mcsema_real_eip !136
  %_new_gep_143 = getelementptr i8, i8* %_load_rsp_ptr_142, i64 104
  %517 = add i64 104, %RSP_val.225, !mcsema_real_eip !136
  %_trans_p2i_144 = ptrtoint i8* %_new_gep_143 to i64
  %_trans_p2i_145 = ptrtoint i8* %_load_rsp_ptr_142 to i64
  %_trans_xor_146 = xor i64 %_trans_p2i_144, %_trans_p2i_145
  %518 = xor i64 %_trans_xor_146, 104, !mcsema_real_eip !136
  %519 = and i64 %518, 16, !mcsema_real_eip !136
  %520 = icmp ne i64 %519, 0, !mcsema_real_eip !136
  store i1 %520, i1* %AF, !mcsema_real_eip !136
  %521 = lshr i64 %517, 63, !mcsema_real_eip !136
  %522 = trunc i64 %521 to i1, !mcsema_real_eip !136
  store i1 %522, i1* %SF, !mcsema_real_eip !136
  %_trans_icmp_eq_148 = icmp eq i64 %_trans_p2i_144, 0
  store i1 %_trans_icmp_eq_148, i1* %ZF, !mcsema_real_eip !136
  %_trans_xor_150 = xor i64 %_trans_p2i_145, 104
  %523 = xor i64 %_trans_xor_150, -1, !mcsema_real_eip !136
  %524 = and i64 %523, %_trans_xor_146, !mcsema_real_eip !136
  %525 = lshr i64 %524, 63, !mcsema_real_eip !136
  %526 = and i64 %525, 1, !mcsema_real_eip !136
  %527 = trunc i64 %526 to i1, !mcsema_real_eip !136
  store i1 %527, i1* %OF, !mcsema_real_eip !136
  %_trans_trunc_155 = trunc i64 %_trans_p2i_144 to i8
  %528 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_155), !mcsema_real_eip !136
  %529 = trunc i8 %528 to i1, !mcsema_real_eip !136
  %530 = xor i1 %529, true, !mcsema_real_eip !136
  store i1 %530, i1* %PF, !mcsema_real_eip !136
  %_trans_icmp_ne_157 = icmp ne i64 %_trans_p2i_144, %RSP_val.225
  store i1 %_trans_icmp_ne_157, i1* %CF, !mcsema_real_eip !136
  store volatile i8* %_new_gep_143, i8** %_RSP_ptr_
  store i64 %517, i64* %XSP, !mcsema_real_eip !136
  %_allin_new_bt_159 = bitcast i8* %_new_gep_143 to i64*
  %_ptr_to_int_758 = ptrtoint i64* %_allin_new_bt_159 to i64
  %_offset_above_rbp_761 = sub i64 %_ptr_to_int_758, %_local_end_to_int_
  %_pot_address_in_parent_stack_762 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_761
  %_cond1_763 = icmp ugt i8* %_new_gep_143, %_local_stack_end_ptr_
  %_cond2_1_764 = icmp ugt i8* %_new_gep_143, %_parent_stack_end_ptr_
  %_cond2_2_765 = icmp ult i8* %_new_gep_143, %_parent_stack_start_ptr_
  %_cond2_766 = or i1 %_cond2_1_764, %_cond2_2_765
  %_cond4_767 = icmp ule i8* %_pot_address_in_parent_stack_762, %_parent_stack_end_ptr_
  %_cond1_n_cond2_768 = and i1 %_cond1_763, %_cond2_766
  %_cond1_n_cond2_cond3_769 = and i1 %_cond1_n_cond2_768, %_cond4_767
  br i1 %_cond1_n_cond2_cond3_769, label %531, label %532

; <label>:531:                                    ; preds = %515
  %_address_in_parent_stack_bt_771 = bitcast i8* %_pot_address_in_parent_stack_762 to i64*
  br label %532

; <label>:532:                                    ; preds = %515, %531
  %533 = phi i64* [ %_allin_new_bt_159, %515 ], [ %_address_in_parent_stack_bt_771, %531 ]
  %_new_load_772 = load i64, i64* %533
  store i64 %_new_load_772, i64* %XBX, !mcsema_real_eip !137
  %_new_gep_160 = getelementptr i8, i8* %_new_gep_143, i64 8
  %534 = add i64 %517, 8, !mcsema_real_eip !137
  store volatile i8* %_new_gep_160, i8** %_RSP_ptr_
  store i64 %534, i64* %XSP, !mcsema_real_eip !137
  %_allin_new_bt_162 = bitcast i8* %_new_gep_160 to i64*
  %_ptr_to_int_773 = ptrtoint i64* %_allin_new_bt_162 to i64
  %_offset_above_rbp_776 = sub i64 %_ptr_to_int_773, %_local_end_to_int_
  %_pot_address_in_parent_stack_777 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_776
  %_cond1_778 = icmp ugt i8* %_new_gep_160, %_local_stack_end_ptr_
  %_cond2_1_779 = icmp ugt i8* %_new_gep_160, %_parent_stack_end_ptr_
  %_cond2_2_780 = icmp ult i8* %_new_gep_160, %_parent_stack_start_ptr_
  %_cond2_781 = or i1 %_cond2_1_779, %_cond2_2_780
  %_cond4_782 = icmp ule i8* %_pot_address_in_parent_stack_777, %_parent_stack_end_ptr_
  %_cond1_n_cond2_783 = and i1 %_cond1_778, %_cond2_781
  %_cond1_n_cond2_cond3_784 = and i1 %_cond1_n_cond2_783, %_cond4_782
  br i1 %_cond1_n_cond2_cond3_784, label %535, label %536

; <label>:535:                                    ; preds = %532
  %_address_in_parent_stack_bt_786 = bitcast i8* %_pot_address_in_parent_stack_777 to i64*
  br label %536

; <label>:536:                                    ; preds = %532, %535
  %537 = phi i64* [ %_allin_new_bt_162, %532 ], [ %_address_in_parent_stack_bt_786, %535 ]
  %_new_load_787 = load i64, i64* %537
  store i64 %_new_load_787, i64* %R14, !mcsema_real_eip !138
  %_new_gep_163 = getelementptr i8, i8* %_new_gep_160, i64 8
  %538 = add i64 %534, 8, !mcsema_real_eip !138
  store volatile i8* %_new_gep_163, i8** %_RSP_ptr_
  store i64 %538, i64* %XSP, !mcsema_real_eip !138
  %_allin_new_bt_165 = bitcast i8* %_new_gep_163 to i64*
  %_ptr_to_int_788 = ptrtoint i64* %_allin_new_bt_165 to i64
  %_offset_above_rbp_791 = sub i64 %_ptr_to_int_788, %_local_end_to_int_
  %_pot_address_in_parent_stack_792 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_791
  %_cond1_793 = icmp ugt i8* %_new_gep_163, %_local_stack_end_ptr_
  %_cond2_1_794 = icmp ugt i8* %_new_gep_163, %_parent_stack_end_ptr_
  %_cond2_2_795 = icmp ult i8* %_new_gep_163, %_parent_stack_start_ptr_
  %_cond2_796 = or i1 %_cond2_1_794, %_cond2_2_795
  %_cond4_797 = icmp ule i8* %_pot_address_in_parent_stack_792, %_parent_stack_end_ptr_
  %_cond1_n_cond2_798 = and i1 %_cond1_793, %_cond2_796
  %_cond1_n_cond2_cond3_799 = and i1 %_cond1_n_cond2_798, %_cond4_797
  br i1 %_cond1_n_cond2_cond3_799, label %539, label %540

; <label>:539:                                    ; preds = %536
  %_address_in_parent_stack_bt_801 = bitcast i8* %_pot_address_in_parent_stack_792 to i64*
  br label %540

; <label>:540:                                    ; preds = %536, %539
  %541 = phi i64* [ %_allin_new_bt_165, %536 ], [ %_address_in_parent_stack_bt_801, %539 ]
  %_new_load_802 = load i64, i64* %541
  store i64 %_new_load_802, i64* %R15, !mcsema_real_eip !139
  %_new_gep_166 = getelementptr i8, i8* %_new_gep_163, i64 8
  %542 = add i64 %538, 8, !mcsema_real_eip !139
  store volatile i8* %_new_gep_166, i8** %_RSP_ptr_
  store i64 %542, i64* %XSP, !mcsema_real_eip !139
  %_allin_new_bt_168 = bitcast i8* %_new_gep_166 to i64*
  %_ptr_to_int_803 = ptrtoint i64* %_allin_new_bt_168 to i64
  %_offset_above_rbp_806 = sub i64 %_ptr_to_int_803, %_local_end_to_int_
  %_pot_address_in_parent_stack_807 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_806
  %_cond1_808 = icmp ugt i8* %_new_gep_166, %_local_stack_end_ptr_
  %_cond2_1_809 = icmp ugt i8* %_new_gep_166, %_parent_stack_end_ptr_
  %_cond2_2_810 = icmp ult i8* %_new_gep_166, %_parent_stack_start_ptr_
  %_cond2_811 = or i1 %_cond2_1_809, %_cond2_2_810
  %_cond4_812 = icmp ule i8* %_pot_address_in_parent_stack_807, %_parent_stack_end_ptr_
  %_cond1_n_cond2_813 = and i1 %_cond1_808, %_cond2_811
  %_cond1_n_cond2_cond3_814 = and i1 %_cond1_n_cond2_813, %_cond4_812
  br i1 %_cond1_n_cond2_cond3_814, label %543, label %544

; <label>:543:                                    ; preds = %540
  %_address_in_parent_stack_bt_816 = bitcast i8* %_pot_address_in_parent_stack_807 to i64*
  br label %544

; <label>:544:                                    ; preds = %540, %543
  %545 = phi i64* [ %_allin_new_bt_168, %540 ], [ %_address_in_parent_stack_bt_816, %543 ]
  %_new_load_817 = load i64, i64* %545
  %_new_int2ptr_ = inttoptr i64 %_new_load_817 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_817, i64* %XBP, !mcsema_real_eip !140
  %_new_gep_169 = getelementptr i8, i8* %_new_gep_166, i64 8
  %546 = add i64 %542, 8, !mcsema_real_eip !140
  store volatile i8* %_new_gep_169, i8** %_RSP_ptr_
  store i64 %546, i64* %XSP, !mcsema_real_eip !140
  %_new_gep_171 = getelementptr i8, i8* %_new_gep_169, i64 8
  %547 = add i64 %546, 8, !mcsema_real_eip !141
  %_allin_new_bt_172 = bitcast i8* %_new_gep_169 to i64*
  %_ptr_to_int_818 = ptrtoint i64* %_allin_new_bt_172 to i64
  %_offset_above_rbp_821 = sub i64 %_ptr_to_int_818, %_local_end_to_int_
  %_pot_address_in_parent_stack_822 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_821
  %_cond1_823 = icmp ugt i8* %_new_gep_169, %_local_stack_end_ptr_
  %_cond2_1_824 = icmp ugt i8* %_new_gep_169, %_parent_stack_end_ptr_
  %_cond2_2_825 = icmp ult i8* %_new_gep_169, %_parent_stack_start_ptr_
  %_cond2_826 = or i1 %_cond2_1_824, %_cond2_2_825
  %_cond4_827 = icmp ule i8* %_pot_address_in_parent_stack_822, %_parent_stack_end_ptr_
  %_cond1_n_cond2_828 = and i1 %_cond1_823, %_cond2_826
  %_cond1_n_cond2_cond3_829 = and i1 %_cond1_n_cond2_828, %_cond4_827
  br i1 %_cond1_n_cond2_cond3_829, label %548, label %549

; <label>:548:                                    ; preds = %544
  %_address_in_parent_stack_bt_831 = bitcast i8* %_pot_address_in_parent_stack_822 to i64*
  br label %549

; <label>:549:                                    ; preds = %544, %548
  %550 = phi i64* [ %_allin_new_bt_172, %544 ], [ %_address_in_parent_stack_bt_831, %548 ]
  %_new_load_832 = load i64, i64* %550
  store i64 %_new_load_832, i64* %XIP, !mcsema_real_eip !141
  store volatile i8* %_new_gep_171, i8** %_RSP_ptr_
  store i64 %547, i64* %XSP, !mcsema_real_eip !141
  ret void, !mcsema_real_eip !141
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 256}
!3 = !{i64 257}
!4 = !{i64 260}
!5 = !{i64 267}
!6 = !{i64 272}
!7 = !{i64 274}
!8 = !{i64 281}
!9 = !{i64 288}
!10 = !{i64 295}
!11 = !{i64 302}
!12 = !{i64 307}
!13 = !{i64 311}
!14 = !{i64 317}
!15 = !{i64 323}
!16 = !{i64 328}
!17 = !{i64 332}
!18 = !{i64 336}
!19 = !{i64 342}
!20 = !{i64 346}
!21 = !{i64 353}
!22 = !{i64 357}
!23 = !{i64 364}
!24 = !{i64 368}
!25 = !{i64 372}
!26 = !{i64 376}
!27 = !{i64 380}
!28 = !{i64 384}
!29 = !{i64 388}
!30 = !{i64 392}
!31 = !{i64 396}
!32 = !{i64 400}
!33 = !{i64 403}
!34 = !{i64 406}
!35 = !{i64 410}
!36 = !{i64 414}
!37 = !{i64 417}
!38 = !{i64 420}
!39 = !{i64 423}
!40 = !{i64 430}
!41 = !{i64 433}
!42 = !{i64 438}
!43 = !{i64 442}
!44 = !{i64 447}
!45 = !{i64 452}
!46 = !{i64 456}
!47 = !{i64 461}
!48 = !{i64 466}
!49 = !{i64 476}
!50 = !{i64 480}
!51 = !{i64 484}
!52 = !{i64 486}
!53 = !{i64 490}
!54 = !{i64 493}
!55 = !{i64 497}
!56 = !{i64 500}
!57 = !{i64 503}
!58 = !{i64 506}
!59 = !{i64 508}
!60 = !{i64 513}
!61 = !{i64 516}
!62 = !{i64 519}
!63 = !{i64 521}
!64 = !{i64 528}
!65 = !{i64 529}
!66 = !{i64 0}
!67 = !{i64 1}
!68 = !{i64 4}
!69 = !{i64 6}
!70 = !{i64 8}
!71 = !{i64 9}
!72 = !{i64 13}
!73 = !{i64 17}
!74 = !{i64 21}
!75 = !{i64 25}
!76 = !{i64 28}
!77 = !{i64 34}
!78 = !{i64 37}
!79 = !{i64 41}
!80 = !{i64 44}
!81 = !{i64 48}
!82 = !{i64 52}
!83 = !{i64 55}
!84 = !{i64 58}
!85 = !{i64 62}
!86 = !{i64 66}
!87 = !{i64 70}
!88 = !{i64 74}
!89 = !{i64 77}
!90 = !{i64 81}
!91 = !{i64 85}
!92 = !{i64 88}
!93 = !{i64 92}
!94 = !{i64 97}
!95 = !{i64 101}
!96 = !{i64 104}
!97 = !{i64 108}
!98 = !{i64 110}
!99 = !{i64 114}
!100 = !{i64 116}
!101 = !{i64 120}
!102 = !{i64 123}
!103 = !{i64 127}
!104 = !{i64 130}
!105 = !{i64 134}
!106 = !{i64 137}
!107 = !{i64 140}
!108 = !{i64 144}
!109 = !{i64 146}
!110 = !{i64 149}
!111 = !{i64 153}
!112 = !{i64 156}
!113 = !{i64 160}
!114 = !{i64 163}
!115 = !{i64 167}
!116 = !{i64 171}
!117 = !{i64 175}
!118 = !{i64 179}
!119 = !{i64 183}
!120 = !{i64 186}
!121 = !{i64 190}
!122 = !{i64 193}
!123 = !{i64 196}
!124 = !{i64 200}
!125 = !{i64 203}
!126 = !{i64 207}
!127 = !{i64 210}
!128 = !{i64 214}
!129 = !{i64 218}
!130 = !{i64 222}
!131 = !{i64 226}
!132 = !{i64 230}
!133 = !{i64 233}
!134 = !{i64 237}
!135 = !{i64 240}
!136 = !{i64 244}
!137 = !{i64 248}
!138 = !{i64 249}
!139 = !{i64 251}
!140 = !{i64 253}
!141 = !{i64 254}
