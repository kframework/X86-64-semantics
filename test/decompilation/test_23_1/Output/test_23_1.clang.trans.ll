; ModuleID = 'Output/test_23_1.clang.trans.bc'
source_filename = "Output/test_23_1.clang.bc"
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

%0 = type <{ [184 x i8] }>
%1 = type <{ [13 x i8] }>
%2 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xe8 = internal constant %0 <{ [184 x i8] c"\85\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\93\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00w\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00\A1\00\00\00\00\00\00\00i\00\00\00\00\00\00\00" }>, align 64
@data_0x1a0 = internal constant %1 <{ [13 x i8] c"ssssdddd\00%d\0A\00" }>, align 64
@data_0x1b0 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\E2\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !5
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %17, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !7
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %19, !mcsema_real_eip !7
  store i64 7234017284060312435, i64* %XAX, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -21
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 7234017284060312435, i64* %_allin_new_bt_24, !mcsema_real_eip !9
  %20 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*), !mcsema_real_eip !10
  %CL.9 = bitcast i64* %XCX to i8*, !mcsema_real_eip !10
  store i8 %20, i8* %CL.9, !mcsema_real_eip !10
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -13
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %21 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !11
  %22 = inttoptr i64 %21 to i8*, !mcsema_real_eip !11
  store i8 %20, i8* %22, !mcsema_real_eip !11
  br label %block_0x33, !mcsema_real_eip !12

block_0x33:                                       ; preds = %block_0xad, %block_0x0
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %23 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !12
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !12
  %25 = load i32, i32* %24, !mcsema_real_eip !12
  %26 = sub i32 %25, 8, !mcsema_real_eip !12
  %27 = xor i32 %26, %25, !mcsema_real_eip !12
  %28 = xor i32 %27, 8, !mcsema_real_eip !12
  %29 = and i32 %28, 16, !mcsema_real_eip !12
  %30 = icmp ne i32 %29, 0, !mcsema_real_eip !12
  store i1 %30, i1* %AF, !mcsema_real_eip !12
  %31 = trunc i32 %26 to i8, !mcsema_real_eip !12
  %32 = call i8 @llvm.ctpop.i8(i8 %31), !mcsema_real_eip !12
  %33 = trunc i8 %32 to i1, !mcsema_real_eip !12
  %34 = xor i1 %33, true, !mcsema_real_eip !12
  store i1 %34, i1* %PF, !mcsema_real_eip !12
  %35 = icmp eq i32 %26, 0, !mcsema_real_eip !12
  store i1 %35, i1* %ZF, !mcsema_real_eip !12
  %36 = lshr i32 %26, 31, !mcsema_real_eip !12
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !12
  store i1 %37, i1* %SF, !mcsema_real_eip !12
  %38 = icmp ult i32 %25, 8, !mcsema_real_eip !12
  store i1 %38, i1* %CF, !mcsema_real_eip !12
  %39 = xor i32 %25, 8, !mcsema_real_eip !12
  %40 = and i32 %39, %27, !mcsema_real_eip !12
  %41 = lshr i32 %40, 31, !mcsema_real_eip !12
  %42 = trunc i32 %41 to i1, !mcsema_real_eip !12
  store i1 %42, i1* %OF, !mcsema_real_eip !12
  %43 = icmp eq i1 %37, %42, !mcsema_real_eip !13
  br i1 %43, label %block_0xbb, label %block_0x3d, !mcsema_real_eip !13

block_0x3d:                                       ; preds = %block_0x33
  %44 = load i32, i32* %24, !mcsema_real_eip !14
  %45 = sext i32 %44 to i64, !mcsema_real_eip !14
  store i64 %45, i64* %XAX, !mcsema_real_eip !14
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -21
  %_new_gep_36 = getelementptr i8, i8* %_new_gep_35, i64 %45
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %46 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !15
  %47 = inttoptr i64 %46 to i8*, !mcsema_real_eip !15
  %48 = load i8, i8* %47, !mcsema_real_eip !15
  %49 = sext i8 %48 to i32, !mcsema_real_eip !15
  %50 = zext i32 %49 to i64, !mcsema_real_eip !15
  store i64 %50, i64* %XCX, !mcsema_real_eip !15
  %ECX.26 = bitcast i64* %XCX to i32*, !mcsema_real_eip !16
  %ECX_val.27 = load i32, i32* %ECX.26, !mcsema_real_eip !16
  %51 = add i32 -97, %ECX_val.27, !mcsema_real_eip !16
  %52 = xor i32 %51, %ECX_val.27, !mcsema_real_eip !16
  %53 = xor i32 %52, -97, !mcsema_real_eip !16
  %54 = and i32 %53, 16, !mcsema_real_eip !16
  %55 = icmp ne i32 %54, 0, !mcsema_real_eip !16
  store i1 %55, i1* %AF, !mcsema_real_eip !16
  %56 = lshr i32 %51, 31, !mcsema_real_eip !16
  %57 = trunc i32 %56 to i1, !mcsema_real_eip !16
  store i1 %57, i1* %SF, !mcsema_real_eip !16
  %58 = icmp eq i32 %51, 0, !mcsema_real_eip !16
  store i1 %58, i1* %ZF, !mcsema_real_eip !16
  %59 = xor i32 %ECX_val.27, -97, !mcsema_real_eip !16
  %60 = xor i32 %59, -1, !mcsema_real_eip !16
  %61 = and i32 %60, %52, !mcsema_real_eip !16
  %62 = lshr i32 %61, 31, !mcsema_real_eip !16
  %63 = and i32 %62, 1, !mcsema_real_eip !16
  %64 = trunc i32 %63 to i1, !mcsema_real_eip !16
  store i1 %64, i1* %OF, !mcsema_real_eip !16
  %65 = trunc i32 %51 to i8, !mcsema_real_eip !16
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !16
  %67 = trunc i8 %66 to i1, !mcsema_real_eip !16
  %68 = xor i1 %67, true, !mcsema_real_eip !16
  store i1 %68, i1* %PF, !mcsema_real_eip !16
  %69 = icmp ult i32 %51, %ECX_val.27, !mcsema_real_eip !16
  store i1 %69, i1* %CF, !mcsema_real_eip !16
  %70 = zext i32 %51 to i64, !mcsema_real_eip !16
  store i64 %70, i64* %XCX, !mcsema_real_eip !16
  %ECX_val.29 = load i32, i32* %ECX.26, !mcsema_real_eip !17
  %71 = zext i32 %ECX_val.29 to i64, !mcsema_real_eip !17
  store i64 %71, i64* %XAX, !mcsema_real_eip !17
  %72 = sub i32 %ECX_val.29, 22, !mcsema_real_eip !18
  %73 = xor i32 %72, %ECX_val.29, !mcsema_real_eip !18
  %74 = xor i32 %73, 22, !mcsema_real_eip !18
  %75 = and i32 %74, 16, !mcsema_real_eip !18
  %76 = icmp ne i32 %75, 0, !mcsema_real_eip !18
  store i1 %76, i1* %AF, !mcsema_real_eip !18
  %77 = trunc i32 %72 to i8, !mcsema_real_eip !18
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !18
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !18
  %80 = xor i1 %79, true, !mcsema_real_eip !18
  store i1 %80, i1* %PF, !mcsema_real_eip !18
  %81 = icmp eq i32 %72, 0, !mcsema_real_eip !18
  store i1 %81, i1* %ZF, !mcsema_real_eip !18
  %82 = lshr i32 %72, 31, !mcsema_real_eip !18
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !18
  store i1 %83, i1* %SF, !mcsema_real_eip !18
  %84 = icmp ult i32 %ECX_val.29, 22, !mcsema_real_eip !18
  store i1 %84, i1* %CF, !mcsema_real_eip !18
  %85 = xor i32 %ECX_val.29, 22, !mcsema_real_eip !18
  %86 = and i32 %85, %73, !mcsema_real_eip !18
  %87 = lshr i32 %86, 31, !mcsema_real_eip !18
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !18
  store i1 %88, i1* %OF, !mcsema_real_eip !18
  %89 = zext i32 %72 to i64, !mcsema_real_eip !18
  store i64 %89, i64* %XCX, !mcsema_real_eip !18
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  store i64 %71, i64* %_allin_new_bt_40, !mcsema_real_eip !19
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -36
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %ECX_val.36 = load i32, i32* %ECX.26, !mcsema_real_eip !20
  %90 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !20
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !20
  store i32 %ECX_val.36, i32* %91, !mcsema_real_eip !20
  %92 = load i1, i1* %ZF, !mcsema_real_eip !21
  %93 = icmp eq i1 %92, false, !mcsema_real_eip !21
  %94 = load i1, i1* %CF, !mcsema_real_eip !21
  %95 = icmp eq i1 %94, false, !mcsema_real_eip !21
  %96 = and i1 %95, %93, !mcsema_real_eip !21
  br i1 %96, label %block_0xa1, label %block_0x5b, !mcsema_real_eip !21

block_0xbb:                                       ; preds = %block_0x33
  store i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64* %XDI, !mcsema_real_eip !22
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -12
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %97 = ptrtoint i64* %_allin_new_bt_46 to i64, !mcsema_real_eip !23
  %98 = inttoptr i64 %97 to i32*, !mcsema_real_eip !23
  %99 = load i32, i32* %98, !mcsema_real_eip !23
  %100 = zext i32 %99 to i64, !mcsema_real_eip !23
  store i64 %100, i64* %XSI, !mcsema_real_eip !23
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !24
  store i8 0, i8* %AL.15, !mcsema_real_eip !24
  %_load_rsp_ptr_47 = load i8*, i8** %_RSP_ptr_
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_48 = getelementptr i8, i8* %_load_rsp_ptr_47, i64 -8
  %101 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !25
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_49, !mcsema_real_eip !25
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_
  store i64 %101, i64* %XSP, !mcsema_real_eip !25
  %102 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64 %100)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %102, i64* %XAX, !mcsema_real_eip !25
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -4
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %103 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !26
  %104 = inttoptr i64 %103 to i32*, !mcsema_real_eip !26
  store i32 1, i32* %104, !mcsema_real_eip !26
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -40
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %EAX.21 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.22 = load i32, i32* %EAX.21, !mcsema_real_eip !27
  %105 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !27
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !27
  store i32 %EAX_val.22, i32* %106, !mcsema_real_eip !27
  br label %block_0xd9, !mcsema_real_eip !14

block_0xd9:                                       ; preds = %block_0xa1, %block_0xbb
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -4
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %107 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !28
  %108 = inttoptr i64 %107 to i32*, !mcsema_real_eip !28
  %109 = load i32, i32* %108, !mcsema_real_eip !28
  %110 = zext i32 %109 to i64, !mcsema_real_eip !28
  store i64 %110, i64* %XAX, !mcsema_real_eip !28
  %_load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_60 = getelementptr i8, i8* %_load_rsp_ptr_59, i64 48
  %111 = add i64 48, %RSP_val.38, !mcsema_real_eip !29
  %_trans_p2i_61 = ptrtoint i8* %_new_gep_60 to i64
  %_trans_p2i_62 = ptrtoint i8* %_load_rsp_ptr_59 to i64
  %_trans_xor_63 = xor i64 %_trans_p2i_61, %_trans_p2i_62
  %112 = xor i64 %_trans_xor_63, 48, !mcsema_real_eip !29
  %113 = and i64 %112, 16, !mcsema_real_eip !29
  %114 = icmp ne i64 %113, 0, !mcsema_real_eip !29
  store i1 %114, i1* %AF, !mcsema_real_eip !29
  %115 = lshr i64 %111, 63, !mcsema_real_eip !29
  %116 = trunc i64 %115 to i1, !mcsema_real_eip !29
  store i1 %116, i1* %SF, !mcsema_real_eip !29
  %_trans_icmp_eq_65 = icmp eq i64 %_trans_p2i_61, 0
  store i1 %_trans_icmp_eq_65, i1* %ZF, !mcsema_real_eip !29
  %_trans_xor_67 = xor i64 %_trans_p2i_62, 48
  %117 = xor i64 %_trans_xor_67, -1, !mcsema_real_eip !29
  %118 = and i64 %117, %_trans_xor_63, !mcsema_real_eip !29
  %119 = lshr i64 %118, 63, !mcsema_real_eip !29
  %120 = and i64 %119, 1, !mcsema_real_eip !29
  %121 = trunc i64 %120 to i1, !mcsema_real_eip !29
  store i1 %121, i1* %OF, !mcsema_real_eip !29
  %_trans_trunc_72 = trunc i64 %_trans_p2i_61 to i8
  %122 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_72), !mcsema_real_eip !29
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !29
  %124 = xor i1 %123, true, !mcsema_real_eip !29
  store i1 %124, i1* %PF, !mcsema_real_eip !29
  %_trans_icmp_ne_74 = icmp ne i64 %_trans_p2i_61, %RSP_val.38
  store i1 %_trans_icmp_ne_74, i1* %CF, !mcsema_real_eip !29
  store volatile i8* %_new_gep_60, i8** %_RSP_ptr_
  store i64 %111, i64* %XSP, !mcsema_real_eip !29
  %_allin_new_bt_76 = bitcast i8* %_new_gep_60 to i64*
  %125 = load i64, i64* %_allin_new_bt_76, !mcsema_real_eip !30
  %_new_int2ptr_ = inttoptr i64 %125 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %125, i64* %XBP, !mcsema_real_eip !30
  %_new_gep_77 = getelementptr i8, i8* %_new_gep_60, i64 8
  %126 = add i64 %111, 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_
  store i64 %126, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_79 = getelementptr i8, i8* %_new_gep_77, i64 8
  %127 = add i64 %126, 8, !mcsema_real_eip !31
  %_allin_new_bt_80 = bitcast i8* %_new_gep_77 to i64*
  %128 = load i64, i64* %_allin_new_bt_80, !mcsema_real_eip !31
  store i64 %128, i64* %XIP, !mcsema_real_eip !31
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_
  store i64 %127, i64* %XSP, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x5b:                                       ; preds = %block_0x3d
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -32
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %129 = load i64, i64* %_allin_new_bt_83, !mcsema_real_eip !32
  store i64 %129, i64* %XAX, !mcsema_real_eip !32
  %130 = mul i64 %129, 8, !mcsema_real_eip !33
  %131 = add i64 ptrtoint (%0* @data_0xe8 to i64), %130, !mcsema_real_eip !33
  %132 = inttoptr i64 %131 to i64*, !mcsema_real_eip !33
  %133 = load i64, i64* %132, !mcsema_real_eip !33
  store i64 %133, i64* %XCX, !mcsema_real_eip !33
  switch i64 %133, label %228 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !34

block_0xa1:                                       ; preds = %block_0x5b, %block_0x3d
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -4
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %134 = ptrtoint i64* %_allin_new_bt_86 to i64, !mcsema_real_eip !35
  %135 = inttoptr i64 %134 to i32*, !mcsema_real_eip !35
  store i32 1, i32* %135, !mcsema_real_eip !35
  br label %block_0xd9, !mcsema_real_eip !36

block_0x69:                                       ; preds = %block_0x5b
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -12
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %136 = ptrtoint i64* %_allin_new_bt_89 to i64, !mcsema_real_eip !37
  %137 = inttoptr i64 %136 to i32*, !mcsema_real_eip !37
  %138 = load i32, i32* %137, !mcsema_real_eip !37
  %139 = zext i32 %138 to i64, !mcsema_real_eip !37
  store i64 %139, i64* %XAX, !mcsema_real_eip !37
  %EAX.64 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.65 = load i32, i32* %EAX.64, !mcsema_real_eip !38
  %140 = add i32 1, %EAX_val.65, !mcsema_real_eip !38
  %141 = xor i32 %140, %EAX_val.65, !mcsema_real_eip !38
  %142 = xor i32 %141, 1, !mcsema_real_eip !38
  %143 = and i32 %142, 16, !mcsema_real_eip !38
  %144 = icmp ne i32 %143, 0, !mcsema_real_eip !38
  store i1 %144, i1* %AF, !mcsema_real_eip !38
  %145 = lshr i32 %140, 31, !mcsema_real_eip !38
  %146 = trunc i32 %145 to i1, !mcsema_real_eip !38
  store i1 %146, i1* %SF, !mcsema_real_eip !38
  %147 = icmp eq i32 %140, 0, !mcsema_real_eip !38
  store i1 %147, i1* %ZF, !mcsema_real_eip !38
  %148 = xor i32 %EAX_val.65, 1, !mcsema_real_eip !38
  %149 = xor i32 %148, -1, !mcsema_real_eip !38
  %150 = and i32 %149, %141, !mcsema_real_eip !38
  %151 = lshr i32 %150, 31, !mcsema_real_eip !38
  %152 = and i32 %151, 1, !mcsema_real_eip !38
  %153 = trunc i32 %152 to i1, !mcsema_real_eip !38
  store i1 %153, i1* %OF, !mcsema_real_eip !38
  %154 = trunc i32 %140 to i8, !mcsema_real_eip !38
  %155 = call i8 @llvm.ctpop.i8(i8 %154), !mcsema_real_eip !38
  %156 = trunc i8 %155 to i1, !mcsema_real_eip !38
  %157 = xor i1 %156, true, !mcsema_real_eip !38
  store i1 %157, i1* %PF, !mcsema_real_eip !38
  %158 = icmp ult i32 %140, %EAX_val.65, !mcsema_real_eip !38
  store i1 %158, i1* %CF, !mcsema_real_eip !38
  %159 = zext i32 %140 to i64, !mcsema_real_eip !38
  store i64 %159, i64* %XAX, !mcsema_real_eip !38
  %EAX_val.68 = load i32, i32* %EAX.64, !mcsema_real_eip !39
  store i32 %EAX_val.68, i32* %137, !mcsema_real_eip !39
  br label %block_0xad, !mcsema_real_eip !40

block_0x77:                                       ; preds = %block_0x5b
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -12
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %160 = ptrtoint i64* %_allin_new_bt_95 to i64, !mcsema_real_eip !41
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !41
  %162 = load i32, i32* %161, !mcsema_real_eip !41
  %163 = zext i32 %162 to i64, !mcsema_real_eip !41
  store i64 %163, i64* %XAX, !mcsema_real_eip !41
  %EAX.58 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.59 = load i32, i32* %EAX.58, !mcsema_real_eip !42
  %164 = add i32 2, %EAX_val.59, !mcsema_real_eip !42
  %165 = xor i32 %164, %EAX_val.59, !mcsema_real_eip !42
  %166 = xor i32 %165, 2, !mcsema_real_eip !42
  %167 = and i32 %166, 16, !mcsema_real_eip !42
  %168 = icmp ne i32 %167, 0, !mcsema_real_eip !42
  store i1 %168, i1* %AF, !mcsema_real_eip !42
  %169 = lshr i32 %164, 31, !mcsema_real_eip !42
  %170 = trunc i32 %169 to i1, !mcsema_real_eip !42
  store i1 %170, i1* %SF, !mcsema_real_eip !42
  %171 = icmp eq i32 %164, 0, !mcsema_real_eip !42
  store i1 %171, i1* %ZF, !mcsema_real_eip !42
  %172 = xor i32 %EAX_val.59, 2, !mcsema_real_eip !42
  %173 = xor i32 %172, -1, !mcsema_real_eip !42
  %174 = and i32 %173, %165, !mcsema_real_eip !42
  %175 = lshr i32 %174, 31, !mcsema_real_eip !42
  %176 = and i32 %175, 1, !mcsema_real_eip !42
  %177 = trunc i32 %176 to i1, !mcsema_real_eip !42
  store i1 %177, i1* %OF, !mcsema_real_eip !42
  %178 = trunc i32 %164 to i8, !mcsema_real_eip !42
  %179 = call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !42
  %180 = trunc i8 %179 to i1, !mcsema_real_eip !42
  %181 = xor i1 %180, true, !mcsema_real_eip !42
  store i1 %181, i1* %PF, !mcsema_real_eip !42
  %182 = icmp ult i32 %164, %EAX_val.59, !mcsema_real_eip !42
  store i1 %182, i1* %CF, !mcsema_real_eip !42
  %183 = zext i32 %164 to i64, !mcsema_real_eip !42
  store i64 %183, i64* %XAX, !mcsema_real_eip !42
  %EAX_val.62 = load i32, i32* %EAX.58, !mcsema_real_eip !43
  store i32 %EAX_val.62, i32* %161, !mcsema_real_eip !43
  br label %block_0xad, !mcsema_real_eip !44

block_0x85:                                       ; preds = %block_0x5b
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -12
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %184 = ptrtoint i64* %_allin_new_bt_101 to i64, !mcsema_real_eip !45
  %185 = inttoptr i64 %184 to i32*, !mcsema_real_eip !45
  %186 = load i32, i32* %185, !mcsema_real_eip !45
  %187 = zext i32 %186 to i64, !mcsema_real_eip !45
  store i64 %187, i64* %XAX, !mcsema_real_eip !45
  %EAX.52 = bitcast i64* %XAX to i32*, !mcsema_real_eip !46
  %EAX_val.53 = load i32, i32* %EAX.52, !mcsema_real_eip !46
  %188 = sub i32 %EAX_val.53, 2, !mcsema_real_eip !46
  %189 = xor i32 %188, %EAX_val.53, !mcsema_real_eip !46
  %190 = xor i32 %189, 2, !mcsema_real_eip !46
  %191 = and i32 %190, 16, !mcsema_real_eip !46
  %192 = icmp ne i32 %191, 0, !mcsema_real_eip !46
  store i1 %192, i1* %AF, !mcsema_real_eip !46
  %193 = trunc i32 %188 to i8, !mcsema_real_eip !46
  %194 = call i8 @llvm.ctpop.i8(i8 %193), !mcsema_real_eip !46
  %195 = trunc i8 %194 to i1, !mcsema_real_eip !46
  %196 = xor i1 %195, true, !mcsema_real_eip !46
  store i1 %196, i1* %PF, !mcsema_real_eip !46
  %197 = icmp eq i32 %188, 0, !mcsema_real_eip !46
  store i1 %197, i1* %ZF, !mcsema_real_eip !46
  %198 = lshr i32 %188, 31, !mcsema_real_eip !46
  %199 = trunc i32 %198 to i1, !mcsema_real_eip !46
  store i1 %199, i1* %SF, !mcsema_real_eip !46
  %200 = icmp ult i32 %EAX_val.53, 2, !mcsema_real_eip !46
  store i1 %200, i1* %CF, !mcsema_real_eip !46
  %201 = xor i32 %EAX_val.53, 2, !mcsema_real_eip !46
  %202 = and i32 %201, %189, !mcsema_real_eip !46
  %203 = lshr i32 %202, 31, !mcsema_real_eip !46
  %204 = trunc i32 %203 to i1, !mcsema_real_eip !46
  store i1 %204, i1* %OF, !mcsema_real_eip !46
  %205 = zext i32 %188 to i64, !mcsema_real_eip !46
  store i64 %205, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.56 = load i32, i32* %EAX.52, !mcsema_real_eip !47
  store i32 %EAX_val.56, i32* %185, !mcsema_real_eip !47
  br label %block_0xad, !mcsema_real_eip !48

block_0x93:                                       ; preds = %block_0x5b
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -12
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %206 = ptrtoint i64* %_allin_new_bt_107 to i64, !mcsema_real_eip !49
  %207 = inttoptr i64 %206 to i32*, !mcsema_real_eip !49
  %208 = load i32, i32* %207, !mcsema_real_eip !49
  %209 = zext i32 %208 to i64, !mcsema_real_eip !49
  store i64 %209, i64* %XAX, !mcsema_real_eip !49
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !50
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !50
  %210 = sub i32 %EAX_val.47, 1, !mcsema_real_eip !50
  %211 = xor i32 %210, %EAX_val.47, !mcsema_real_eip !50
  %212 = xor i32 %211, 1, !mcsema_real_eip !50
  %213 = and i32 %212, 16, !mcsema_real_eip !50
  %214 = icmp ne i32 %213, 0, !mcsema_real_eip !50
  store i1 %214, i1* %AF, !mcsema_real_eip !50
  %215 = trunc i32 %210 to i8, !mcsema_real_eip !50
  %216 = call i8 @llvm.ctpop.i8(i8 %215), !mcsema_real_eip !50
  %217 = trunc i8 %216 to i1, !mcsema_real_eip !50
  %218 = xor i1 %217, true, !mcsema_real_eip !50
  store i1 %218, i1* %PF, !mcsema_real_eip !50
  %219 = icmp eq i32 %210, 0, !mcsema_real_eip !50
  store i1 %219, i1* %ZF, !mcsema_real_eip !50
  %220 = lshr i32 %210, 31, !mcsema_real_eip !50
  %221 = trunc i32 %220 to i1, !mcsema_real_eip !50
  store i1 %221, i1* %SF, !mcsema_real_eip !50
  %222 = icmp ult i32 %EAX_val.47, 1, !mcsema_real_eip !50
  store i1 %222, i1* %CF, !mcsema_real_eip !50
  %223 = xor i32 %EAX_val.47, 1, !mcsema_real_eip !50
  %224 = and i32 %223, %211, !mcsema_real_eip !50
  %225 = lshr i32 %224, 31, !mcsema_real_eip !50
  %226 = trunc i32 %225 to i1, !mcsema_real_eip !50
  store i1 %226, i1* %OF, !mcsema_real_eip !50
  %227 = zext i32 %210 to i64, !mcsema_real_eip !50
  store i64 %227, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.50 = load i32, i32* %EAX.46, !mcsema_real_eip !51
  store i32 %EAX_val.50, i32* %207, !mcsema_real_eip !51
  br label %block_0xad, !mcsema_real_eip !52

; <label>:228:                                    ; preds = %block_0x5b
  store i64 %133, i64* %XIP, !mcsema_real_eip !34
  call void @__mcsema_detach_call_value()
  %_rsp_fix_117 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_118 = getelementptr i8, i8* %_rsp_fix_117, i64 8
  store i8* %_gep_fix_118, i8** %_RSP_ptr_
  ret void, !mcsema_real_eip !34

block_0xad:                                       ; preds = %block_0x93, %block_0x85, %block_0x77, %block_0x69
  %_load_rbp_ptr_111 = load i8*, i8** %_RBP_ptr_
  %_new_gep_112 = getelementptr i8, i8* %_load_rbp_ptr_111, i64 -8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %229 = ptrtoint i64* %_allin_new_bt_113 to i64, !mcsema_real_eip !53
  %230 = inttoptr i64 %229 to i32*, !mcsema_real_eip !53
  %231 = load i32, i32* %230, !mcsema_real_eip !53
  %232 = zext i32 %231 to i64, !mcsema_real_eip !53
  store i64 %232, i64* %XAX, !mcsema_real_eip !53
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !54
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !54
  %233 = add i32 1, %EAX_val.71, !mcsema_real_eip !54
  %234 = xor i32 %233, %EAX_val.71, !mcsema_real_eip !54
  %235 = xor i32 %234, 1, !mcsema_real_eip !54
  %236 = and i32 %235, 16, !mcsema_real_eip !54
  %237 = icmp ne i32 %236, 0, !mcsema_real_eip !54
  store i1 %237, i1* %AF, !mcsema_real_eip !54
  %238 = lshr i32 %233, 31, !mcsema_real_eip !54
  %239 = trunc i32 %238 to i1, !mcsema_real_eip !54
  store i1 %239, i1* %SF, !mcsema_real_eip !54
  %240 = icmp eq i32 %233, 0, !mcsema_real_eip !54
  store i1 %240, i1* %ZF, !mcsema_real_eip !54
  %241 = xor i32 %EAX_val.71, 1, !mcsema_real_eip !54
  %242 = xor i32 %241, -1, !mcsema_real_eip !54
  %243 = and i32 %242, %234, !mcsema_real_eip !54
  %244 = lshr i32 %243, 31, !mcsema_real_eip !54
  %245 = and i32 %244, 1, !mcsema_real_eip !54
  %246 = trunc i32 %245 to i1, !mcsema_real_eip !54
  store i1 %246, i1* %OF, !mcsema_real_eip !54
  %247 = trunc i32 %233 to i8, !mcsema_real_eip !54
  %248 = call i8 @llvm.ctpop.i8(i8 %247), !mcsema_real_eip !54
  %249 = trunc i8 %248 to i1, !mcsema_real_eip !54
  %250 = xor i1 %249, true, !mcsema_real_eip !54
  store i1 %250, i1* %PF, !mcsema_real_eip !54
  %251 = icmp ult i32 %233, %EAX_val.71, !mcsema_real_eip !54
  store i1 %251, i1* %CF, !mcsema_real_eip !54
  %252 = zext i32 %233 to i64, !mcsema_real_eip !54
  store i64 %252, i64* %XAX, !mcsema_real_eip !54
  %EAX_val.74 = load i32, i32* %EAX.70, !mcsema_real_eip !55
  store i32 %EAX_val.74, i32* %230, !mcsema_real_eip !55
  br label %block_0x33, !mcsema_real_eip !56
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

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
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !5
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !5
  store i32 0, i32* %15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %17, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !7
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %19, !mcsema_real_eip !7
  store i64 7234017284060312435, i64* %XAX, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -21
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 7234017284060312435, i64* %_allin_new_bt_24, !mcsema_real_eip !9
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8), %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*), %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*), %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*), %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0x0
  br label %21

; <label>:21:                                     ; preds = %block_0x0, %20
  %22 = phi i8* [ inttoptr (i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 8) to i8*), %block_0x0 ], [ %_pot_address_in_parent_stack_, %20 ]
  %_new_load_ = load i8, i8* %22
  %CL.9 = bitcast i64* %XCX to i8*, !mcsema_real_eip !10
  store i8 %_new_load_, i8* %CL.9, !mcsema_real_eip !10
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -13
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %23 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !11
  %24 = inttoptr i64 %23 to i8*, !mcsema_real_eip !11
  store i8 %_new_load_, i8* %24, !mcsema_real_eip !11
  br label %block_0x33, !mcsema_real_eip !12

block_0x33:                                       ; preds = %260, %21
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %25 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !12
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !12
  %_ptr_bt_ = bitcast i32* %26 to i8*
  %_offset_above_rbp_120 = sub i64 %25, %_local_end_to_int_
  %_pot_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_120
  %_cond1_122 = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_123 = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_124 = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_125 = or i1 %_cond2_1_123, %_cond2_2_124
  %_cond4_126 = icmp ule i8* %_pot_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond1_n_cond2_127 = and i1 %_cond1_122, %_cond2_125
  %_cond1_n_cond2_cond3_128 = and i1 %_cond1_n_cond2_127, %_cond4_126
  br i1 %_cond1_n_cond2_cond3_128, label %27, label %28

; <label>:27:                                     ; preds = %block_0x33
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_121 to i32*
  br label %28

; <label>:28:                                     ; preds = %block_0x33, %27
  %29 = phi i32* [ %26, %block_0x33 ], [ %_address_in_parent_stack_bt_, %27 ]
  %_new_load_130 = load i32, i32* %29
  %30 = sub i32 %_new_load_130, 8, !mcsema_real_eip !12
  %31 = xor i32 %30, %_new_load_130, !mcsema_real_eip !12
  %32 = xor i32 %31, 8, !mcsema_real_eip !12
  %33 = and i32 %32, 16, !mcsema_real_eip !12
  %34 = icmp ne i32 %33, 0, !mcsema_real_eip !12
  store i1 %34, i1* %AF, !mcsema_real_eip !12
  %35 = trunc i32 %30 to i8, !mcsema_real_eip !12
  %36 = call i8 @llvm.ctpop.i8(i8 %35), !mcsema_real_eip !12
  %37 = trunc i8 %36 to i1, !mcsema_real_eip !12
  %38 = xor i1 %37, true, !mcsema_real_eip !12
  store i1 %38, i1* %PF, !mcsema_real_eip !12
  %39 = icmp eq i32 %30, 0, !mcsema_real_eip !12
  store i1 %39, i1* %ZF, !mcsema_real_eip !12
  %40 = lshr i32 %30, 31, !mcsema_real_eip !12
  %41 = trunc i32 %40 to i1, !mcsema_real_eip !12
  store i1 %41, i1* %SF, !mcsema_real_eip !12
  %42 = icmp ult i32 %_new_load_130, 8, !mcsema_real_eip !12
  store i1 %42, i1* %CF, !mcsema_real_eip !12
  %43 = xor i32 %_new_load_130, 8, !mcsema_real_eip !12
  %44 = and i32 %43, %31, !mcsema_real_eip !12
  %45 = lshr i32 %44, 31, !mcsema_real_eip !12
  %46 = trunc i32 %45 to i1, !mcsema_real_eip !12
  store i1 %46, i1* %OF, !mcsema_real_eip !12
  %47 = icmp eq i1 %41, %46, !mcsema_real_eip !13
  br i1 %47, label %block_0xbb, label %block_0x3d, !mcsema_real_eip !13

block_0x3d:                                       ; preds = %28
  br i1 %_cond1_n_cond2_cond3_128, label %48, label %49

; <label>:48:                                     ; preds = %block_0x3d
  %_address_in_parent_stack_bt_144 = bitcast i8* %_pot_address_in_parent_stack_121 to i32*
  br label %49

; <label>:49:                                     ; preds = %block_0x3d, %48
  %50 = phi i32* [ %26, %block_0x3d ], [ %_address_in_parent_stack_bt_144, %48 ]
  %_new_load_145 = load i32, i32* %50
  %51 = sext i32 %_new_load_145 to i64, !mcsema_real_eip !14
  store i64 %51, i64* %XAX, !mcsema_real_eip !14
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -21
  %_new_gep_36 = getelementptr i8, i8* %_new_gep_35, i64 %51
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %52 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !15
  %53 = inttoptr i64 %52 to i8*, !mcsema_real_eip !15
  %_offset_above_rbp_148 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_149 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_148
  %_cond1_150 = icmp ugt i8* %53, %_local_stack_end_ptr_
  %_cond2_1_151 = icmp ugt i8* %53, %_parent_stack_end_ptr_
  %_cond2_2_152 = icmp ult i8* %53, %_parent_stack_start_ptr_
  %_cond2_153 = or i1 %_cond2_1_151, %_cond2_2_152
  %_cond4_154 = icmp ule i8* %_pot_address_in_parent_stack_149, %_parent_stack_end_ptr_
  %_cond1_n_cond2_155 = and i1 %_cond1_150, %_cond2_153
  %_cond1_n_cond2_cond3_156 = and i1 %_cond1_n_cond2_155, %_cond4_154
  br i1 %_cond1_n_cond2_cond3_156, label %54, label %55

; <label>:54:                                     ; preds = %49
  br label %55

; <label>:55:                                     ; preds = %49, %54
  %56 = phi i8* [ %53, %49 ], [ %_pot_address_in_parent_stack_149, %54 ]
  %_new_load_158 = load i8, i8* %56
  %57 = sext i8 %_new_load_158 to i32, !mcsema_real_eip !15
  %58 = zext i32 %57 to i64, !mcsema_real_eip !15
  store i64 %58, i64* %XCX, !mcsema_real_eip !15
  %ECX.26 = bitcast i64* %XCX to i32*, !mcsema_real_eip !16
  %ECX_val.27 = load i32, i32* %ECX.26, !mcsema_real_eip !16
  %59 = add i32 -97, %ECX_val.27, !mcsema_real_eip !16
  %60 = xor i32 %59, %ECX_val.27, !mcsema_real_eip !16
  %61 = xor i32 %60, -97, !mcsema_real_eip !16
  %62 = and i32 %61, 16, !mcsema_real_eip !16
  %63 = icmp ne i32 %62, 0, !mcsema_real_eip !16
  store i1 %63, i1* %AF, !mcsema_real_eip !16
  %64 = lshr i32 %59, 31, !mcsema_real_eip !16
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !16
  store i1 %65, i1* %SF, !mcsema_real_eip !16
  %66 = icmp eq i32 %59, 0, !mcsema_real_eip !16
  store i1 %66, i1* %ZF, !mcsema_real_eip !16
  %67 = xor i32 %ECX_val.27, -97, !mcsema_real_eip !16
  %68 = xor i32 %67, -1, !mcsema_real_eip !16
  %69 = and i32 %68, %60, !mcsema_real_eip !16
  %70 = lshr i32 %69, 31, !mcsema_real_eip !16
  %71 = and i32 %70, 1, !mcsema_real_eip !16
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !16
  store i1 %72, i1* %OF, !mcsema_real_eip !16
  %73 = trunc i32 %59 to i8, !mcsema_real_eip !16
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !16
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !16
  %76 = xor i1 %75, true, !mcsema_real_eip !16
  store i1 %76, i1* %PF, !mcsema_real_eip !16
  %77 = icmp ult i32 %59, %ECX_val.27, !mcsema_real_eip !16
  store i1 %77, i1* %CF, !mcsema_real_eip !16
  %78 = zext i32 %59 to i64, !mcsema_real_eip !16
  store i64 %78, i64* %XCX, !mcsema_real_eip !16
  %ECX_val.29 = load i32, i32* %ECX.26, !mcsema_real_eip !17
  %79 = zext i32 %ECX_val.29 to i64, !mcsema_real_eip !17
  store i64 %79, i64* %XAX, !mcsema_real_eip !17
  %80 = sub i32 %ECX_val.29, 22, !mcsema_real_eip !18
  %81 = xor i32 %80, %ECX_val.29, !mcsema_real_eip !18
  %82 = xor i32 %81, 22, !mcsema_real_eip !18
  %83 = and i32 %82, 16, !mcsema_real_eip !18
  %84 = icmp ne i32 %83, 0, !mcsema_real_eip !18
  store i1 %84, i1* %AF, !mcsema_real_eip !18
  %85 = trunc i32 %80 to i8, !mcsema_real_eip !18
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !18
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !18
  %88 = xor i1 %87, true, !mcsema_real_eip !18
  store i1 %88, i1* %PF, !mcsema_real_eip !18
  %89 = icmp eq i32 %80, 0, !mcsema_real_eip !18
  store i1 %89, i1* %ZF, !mcsema_real_eip !18
  %90 = lshr i32 %80, 31, !mcsema_real_eip !18
  %91 = trunc i32 %90 to i1, !mcsema_real_eip !18
  store i1 %91, i1* %SF, !mcsema_real_eip !18
  %92 = icmp ult i32 %ECX_val.29, 22, !mcsema_real_eip !18
  store i1 %92, i1* %CF, !mcsema_real_eip !18
  %93 = xor i32 %ECX_val.29, 22, !mcsema_real_eip !18
  %94 = and i32 %93, %81, !mcsema_real_eip !18
  %95 = lshr i32 %94, 31, !mcsema_real_eip !18
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !18
  store i1 %96, i1* %OF, !mcsema_real_eip !18
  %97 = zext i32 %80 to i64, !mcsema_real_eip !18
  store i64 %97, i64* %XCX, !mcsema_real_eip !18
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  store i64 %79, i64* %_allin_new_bt_40, !mcsema_real_eip !19
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -36
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %ECX_val.36 = load i32, i32* %ECX.26, !mcsema_real_eip !20
  %98 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !20
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !20
  store i32 %ECX_val.36, i32* %99, !mcsema_real_eip !20
  %100 = load i1, i1* %ZF, !mcsema_real_eip !21
  %101 = icmp eq i1 %100, false, !mcsema_real_eip !21
  %102 = load i1, i1* %CF, !mcsema_real_eip !21
  %103 = icmp eq i1 %102, false, !mcsema_real_eip !21
  %104 = and i1 %103, %101, !mcsema_real_eip !21
  br i1 %104, label %block_0xa1, label %block_0x5b, !mcsema_real_eip !21

block_0xbb:                                       ; preds = %28
  store i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64* %XDI, !mcsema_real_eip !22
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -12
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %105 = ptrtoint i64* %_allin_new_bt_46 to i64, !mcsema_real_eip !23
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !23
  %_ptr_bt_161 = bitcast i32* %106 to i8*
  %_offset_above_rbp_162 = sub i64 %105, %_local_end_to_int_
  %_pot_address_in_parent_stack_163 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_162
  %_cond1_164 = icmp ugt i8* %_ptr_bt_161, %_local_stack_end_ptr_
  %_cond2_1_165 = icmp ugt i8* %_ptr_bt_161, %_parent_stack_end_ptr_
  %_cond2_2_166 = icmp ult i8* %_ptr_bt_161, %_parent_stack_start_ptr_
  %_cond2_167 = or i1 %_cond2_1_165, %_cond2_2_166
  %_cond4_168 = icmp ule i8* %_pot_address_in_parent_stack_163, %_parent_stack_end_ptr_
  %_cond1_n_cond2_169 = and i1 %_cond1_164, %_cond2_167
  %_cond1_n_cond2_cond3_170 = and i1 %_cond1_n_cond2_169, %_cond4_168
  br i1 %_cond1_n_cond2_cond3_170, label %107, label %108

; <label>:107:                                    ; preds = %block_0xbb
  %_address_in_parent_stack_bt_172 = bitcast i8* %_pot_address_in_parent_stack_163 to i32*
  br label %108

; <label>:108:                                    ; preds = %block_0xbb, %107
  %109 = phi i32* [ %106, %block_0xbb ], [ %_address_in_parent_stack_bt_172, %107 ]
  %_new_load_173 = load i32, i32* %109
  %110 = zext i32 %_new_load_173 to i64, !mcsema_real_eip !23
  store i64 %110, i64* %XSI, !mcsema_real_eip !23
  %AL.15 = bitcast i64* %XAX to i8*, !mcsema_real_eip !24
  store i8 0, i8* %AL.15, !mcsema_real_eip !24
  %_load_rsp_ptr_47 = load i8*, i8** %_RSP_ptr_
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_48 = getelementptr i8, i8* %_load_rsp_ptr_47, i64 -8
  %111 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !25
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_49, !mcsema_real_eip !25
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_
  store i64 %111, i64* %XSP, !mcsema_real_eip !25
  %112 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64 %110)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %112, i64* %XAX, !mcsema_real_eip !25
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -4
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %113 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !26
  %114 = inttoptr i64 %113 to i32*, !mcsema_real_eip !26
  store i32 1, i32* %114, !mcsema_real_eip !26
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -40
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %EAX.21 = bitcast i64* %XAX to i32*, !mcsema_real_eip !27
  %EAX_val.22 = load i32, i32* %EAX.21, !mcsema_real_eip !27
  %115 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !27
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !27
  store i32 %EAX_val.22, i32* %116, !mcsema_real_eip !27
  br label %block_0xd9, !mcsema_real_eip !14

block_0xd9:                                       ; preds = %block_0xa1, %108
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -4
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %117 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !28
  %118 = inttoptr i64 %117 to i32*, !mcsema_real_eip !28
  %_ptr_bt_176 = bitcast i32* %118 to i8*
  %_offset_above_rbp_177 = sub i64 %117, %_local_end_to_int_
  %_pot_address_in_parent_stack_178 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_177
  %_cond1_179 = icmp ugt i8* %_ptr_bt_176, %_local_stack_end_ptr_
  %_cond2_1_180 = icmp ugt i8* %_ptr_bt_176, %_parent_stack_end_ptr_
  %_cond2_2_181 = icmp ult i8* %_ptr_bt_176, %_parent_stack_start_ptr_
  %_cond2_182 = or i1 %_cond2_1_180, %_cond2_2_181
  %_cond4_183 = icmp ule i8* %_pot_address_in_parent_stack_178, %_parent_stack_end_ptr_
  %_cond1_n_cond2_184 = and i1 %_cond1_179, %_cond2_182
  %_cond1_n_cond2_cond3_185 = and i1 %_cond1_n_cond2_184, %_cond4_183
  br i1 %_cond1_n_cond2_cond3_185, label %119, label %120

; <label>:119:                                    ; preds = %block_0xd9
  %_address_in_parent_stack_bt_187 = bitcast i8* %_pot_address_in_parent_stack_178 to i32*
  br label %120

; <label>:120:                                    ; preds = %block_0xd9, %119
  %121 = phi i32* [ %118, %block_0xd9 ], [ %_address_in_parent_stack_bt_187, %119 ]
  %_new_load_188 = load i32, i32* %121
  %122 = zext i32 %_new_load_188 to i64, !mcsema_real_eip !28
  store i64 %122, i64* %XAX, !mcsema_real_eip !28
  %_load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_60 = getelementptr i8, i8* %_load_rsp_ptr_59, i64 48
  %123 = add i64 48, %RSP_val.38, !mcsema_real_eip !29
  %_trans_p2i_61 = ptrtoint i8* %_new_gep_60 to i64
  %_trans_p2i_62 = ptrtoint i8* %_load_rsp_ptr_59 to i64
  %_trans_xor_63 = xor i64 %_trans_p2i_61, %_trans_p2i_62
  %124 = xor i64 %_trans_xor_63, 48, !mcsema_real_eip !29
  %125 = and i64 %124, 16, !mcsema_real_eip !29
  %126 = icmp ne i64 %125, 0, !mcsema_real_eip !29
  store i1 %126, i1* %AF, !mcsema_real_eip !29
  %127 = lshr i64 %123, 63, !mcsema_real_eip !29
  %128 = trunc i64 %127 to i1, !mcsema_real_eip !29
  store i1 %128, i1* %SF, !mcsema_real_eip !29
  %_trans_icmp_eq_65 = icmp eq i64 %_trans_p2i_61, 0
  store i1 %_trans_icmp_eq_65, i1* %ZF, !mcsema_real_eip !29
  %_trans_xor_67 = xor i64 %_trans_p2i_62, 48
  %129 = xor i64 %_trans_xor_67, -1, !mcsema_real_eip !29
  %130 = and i64 %129, %_trans_xor_63, !mcsema_real_eip !29
  %131 = lshr i64 %130, 63, !mcsema_real_eip !29
  %132 = and i64 %131, 1, !mcsema_real_eip !29
  %133 = trunc i64 %132 to i1, !mcsema_real_eip !29
  store i1 %133, i1* %OF, !mcsema_real_eip !29
  %_trans_trunc_72 = trunc i64 %_trans_p2i_61 to i8
  %134 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_72), !mcsema_real_eip !29
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !29
  %136 = xor i1 %135, true, !mcsema_real_eip !29
  store i1 %136, i1* %PF, !mcsema_real_eip !29
  %_trans_icmp_ne_74 = icmp ne i64 %_trans_p2i_61, %RSP_val.38
  store i1 %_trans_icmp_ne_74, i1* %CF, !mcsema_real_eip !29
  store volatile i8* %_new_gep_60, i8** %_RSP_ptr_
  store i64 %123, i64* %XSP, !mcsema_real_eip !29
  %_allin_new_bt_76 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_189 = ptrtoint i64* %_allin_new_bt_76 to i64
  %_offset_above_rbp_192 = sub i64 %_ptr_to_int_189, %_local_end_to_int_
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  br i1 %_cond1_n_cond2_cond3_200, label %137, label %138

; <label>:137:                                    ; preds = %120
  %_address_in_parent_stack_bt_202 = bitcast i8* %_pot_address_in_parent_stack_193 to i64*
  br label %138

; <label>:138:                                    ; preds = %120, %137
  %139 = phi i64* [ %_allin_new_bt_76, %120 ], [ %_address_in_parent_stack_bt_202, %137 ]
  %_new_load_203 = load i64, i64* %139
  %_new_int2ptr_ = inttoptr i64 %_new_load_203 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_203, i64* %XBP, !mcsema_real_eip !30
  %_new_gep_77 = getelementptr i8, i8* %_new_gep_60, i64 8
  %140 = add i64 %123, 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_
  store i64 %140, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_79 = getelementptr i8, i8* %_new_gep_77, i64 8
  %141 = add i64 %140, 8, !mcsema_real_eip !31
  %_allin_new_bt_80 = bitcast i8* %_new_gep_77 to i64*
  %_ptr_to_int_204 = ptrtoint i64* %_allin_new_bt_80 to i64
  %_offset_above_rbp_207 = sub i64 %_ptr_to_int_204, %_local_end_to_int_
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_new_gep_77, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_new_gep_77, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_new_gep_77, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  br i1 %_cond1_n_cond2_cond3_215, label %142, label %143

; <label>:142:                                    ; preds = %138
  %_address_in_parent_stack_bt_217 = bitcast i8* %_pot_address_in_parent_stack_208 to i64*
  br label %143

; <label>:143:                                    ; preds = %138, %142
  %144 = phi i64* [ %_allin_new_bt_80, %138 ], [ %_address_in_parent_stack_bt_217, %142 ]
  %_new_load_218 = load i64, i64* %144
  store i64 %_new_load_218, i64* %XIP, !mcsema_real_eip !31
  store volatile i8* %_new_gep_79, i8** %_RSP_ptr_
  store i64 %141, i64* %XSP, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31

block_0x5b:                                       ; preds = %55
  %_load_rbp_ptr_81 = load i8*, i8** %_RBP_ptr_
  %_new_gep_82 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -32
  %_allin_new_bt_83 = bitcast i8* %_new_gep_82 to i64*
  %_ptr_to_int_219 = ptrtoint i64* %_allin_new_bt_83 to i64
  %_offset_above_rbp_222 = sub i64 %_ptr_to_int_219, %_local_end_to_int_
  %_pot_address_in_parent_stack_223 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_222
  %_cond1_224 = icmp ugt i8* %_new_gep_82, %_local_stack_end_ptr_
  %_cond2_1_225 = icmp ugt i8* %_new_gep_82, %_parent_stack_end_ptr_
  %_cond2_2_226 = icmp ult i8* %_new_gep_82, %_parent_stack_start_ptr_
  %_cond2_227 = or i1 %_cond2_1_225, %_cond2_2_226
  %_cond4_228 = icmp ule i8* %_pot_address_in_parent_stack_223, %_parent_stack_end_ptr_
  %_cond1_n_cond2_229 = and i1 %_cond1_224, %_cond2_227
  %_cond1_n_cond2_cond3_230 = and i1 %_cond1_n_cond2_229, %_cond4_228
  br i1 %_cond1_n_cond2_cond3_230, label %145, label %146

; <label>:145:                                    ; preds = %block_0x5b
  %_address_in_parent_stack_bt_232 = bitcast i8* %_pot_address_in_parent_stack_223 to i64*
  br label %146

; <label>:146:                                    ; preds = %block_0x5b, %145
  %147 = phi i64* [ %_allin_new_bt_83, %block_0x5b ], [ %_address_in_parent_stack_bt_232, %145 ]
  %_new_load_233 = load i64, i64* %147
  store i64 %_new_load_233, i64* %XAX, !mcsema_real_eip !32
  %148 = mul i64 %_new_load_233, 8, !mcsema_real_eip !33
  %149 = add i64 ptrtoint (%0* @data_0xe8 to i64), %148, !mcsema_real_eip !33
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !33
  %_ptr_bt_236 = bitcast i64* %150 to i8*
  %_offset_above_rbp_237 = sub i64 %149, %_local_end_to_int_
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* %_ptr_bt_236, %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* %_ptr_bt_236, %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* %_ptr_bt_236, %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond1_n_cond2_244, %_cond4_243
  br i1 %_cond1_n_cond2_cond3_245, label %151, label %152

; <label>:151:                                    ; preds = %146
  %_address_in_parent_stack_bt_247 = bitcast i8* %_pot_address_in_parent_stack_238 to i64*
  br label %152

; <label>:152:                                    ; preds = %146, %151
  %153 = phi i64* [ %150, %146 ], [ %_address_in_parent_stack_bt_247, %151 ]
  %_new_load_248 = load i64, i64* %153
  store i64 %_new_load_248, i64* %XCX, !mcsema_real_eip !33
  switch i64 %_new_load_248, label %256 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !34

block_0xa1:                                       ; preds = %152, %55
  %_load_rbp_ptr_84 = load i8*, i8** %_RBP_ptr_
  %_new_gep_85 = getelementptr i8, i8* %_load_rbp_ptr_84, i64 -4
  %_allin_new_bt_86 = bitcast i8* %_new_gep_85 to i64*
  %154 = ptrtoint i64* %_allin_new_bt_86 to i64, !mcsema_real_eip !35
  %155 = inttoptr i64 %154 to i32*, !mcsema_real_eip !35
  store i32 1, i32* %155, !mcsema_real_eip !35
  br label %block_0xd9, !mcsema_real_eip !36

block_0x69:                                       ; preds = %152
  %_new_gep_88 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -12
  %_allin_new_bt_89 = bitcast i8* %_new_gep_88 to i64*
  %156 = ptrtoint i64* %_allin_new_bt_89 to i64, !mcsema_real_eip !37
  %157 = inttoptr i64 %156 to i32*, !mcsema_real_eip !37
  %_ptr_bt_251 = bitcast i32* %157 to i8*
  %_offset_above_rbp_252 = sub i64 %156, %_local_end_to_int_
  %_pot_address_in_parent_stack_253 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_252
  %_cond1_254 = icmp ugt i8* %_ptr_bt_251, %_local_stack_end_ptr_
  %_cond2_1_255 = icmp ugt i8* %_ptr_bt_251, %_parent_stack_end_ptr_
  %_cond2_2_256 = icmp ult i8* %_ptr_bt_251, %_parent_stack_start_ptr_
  %_cond2_257 = or i1 %_cond2_1_255, %_cond2_2_256
  %_cond4_258 = icmp ule i8* %_pot_address_in_parent_stack_253, %_parent_stack_end_ptr_
  %_cond1_n_cond2_259 = and i1 %_cond1_254, %_cond2_257
  %_cond1_n_cond2_cond3_260 = and i1 %_cond1_n_cond2_259, %_cond4_258
  br i1 %_cond1_n_cond2_cond3_260, label %158, label %159

; <label>:158:                                    ; preds = %block_0x69
  %_address_in_parent_stack_bt_262 = bitcast i8* %_pot_address_in_parent_stack_253 to i32*
  br label %159

; <label>:159:                                    ; preds = %block_0x69, %158
  %160 = phi i32* [ %157, %block_0x69 ], [ %_address_in_parent_stack_bt_262, %158 ]
  %_new_load_263 = load i32, i32* %160
  %161 = zext i32 %_new_load_263 to i64, !mcsema_real_eip !37
  store i64 %161, i64* %XAX, !mcsema_real_eip !37
  %EAX.64 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.65 = load i32, i32* %EAX.64, !mcsema_real_eip !38
  %162 = add i32 1, %EAX_val.65, !mcsema_real_eip !38
  %163 = xor i32 %162, %EAX_val.65, !mcsema_real_eip !38
  %164 = xor i32 %163, 1, !mcsema_real_eip !38
  %165 = and i32 %164, 16, !mcsema_real_eip !38
  %166 = icmp ne i32 %165, 0, !mcsema_real_eip !38
  store i1 %166, i1* %AF, !mcsema_real_eip !38
  %167 = lshr i32 %162, 31, !mcsema_real_eip !38
  %168 = trunc i32 %167 to i1, !mcsema_real_eip !38
  store i1 %168, i1* %SF, !mcsema_real_eip !38
  %169 = icmp eq i32 %162, 0, !mcsema_real_eip !38
  store i1 %169, i1* %ZF, !mcsema_real_eip !38
  %170 = xor i32 %EAX_val.65, 1, !mcsema_real_eip !38
  %171 = xor i32 %170, -1, !mcsema_real_eip !38
  %172 = and i32 %171, %163, !mcsema_real_eip !38
  %173 = lshr i32 %172, 31, !mcsema_real_eip !38
  %174 = and i32 %173, 1, !mcsema_real_eip !38
  %175 = trunc i32 %174 to i1, !mcsema_real_eip !38
  store i1 %175, i1* %OF, !mcsema_real_eip !38
  %176 = trunc i32 %162 to i8, !mcsema_real_eip !38
  %177 = call i8 @llvm.ctpop.i8(i8 %176), !mcsema_real_eip !38
  %178 = trunc i8 %177 to i1, !mcsema_real_eip !38
  %179 = xor i1 %178, true, !mcsema_real_eip !38
  store i1 %179, i1* %PF, !mcsema_real_eip !38
  %180 = icmp ult i32 %162, %EAX_val.65, !mcsema_real_eip !38
  store i1 %180, i1* %CF, !mcsema_real_eip !38
  %181 = zext i32 %162 to i64, !mcsema_real_eip !38
  store i64 %181, i64* %XAX, !mcsema_real_eip !38
  %EAX_val.68 = load i32, i32* %EAX.64, !mcsema_real_eip !39
  store i32 %EAX_val.68, i32* %157, !mcsema_real_eip !39
  br label %block_0xad, !mcsema_real_eip !40

block_0x77:                                       ; preds = %152
  %_new_gep_94 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -12
  %_allin_new_bt_95 = bitcast i8* %_new_gep_94 to i64*
  %182 = ptrtoint i64* %_allin_new_bt_95 to i64, !mcsema_real_eip !41
  %183 = inttoptr i64 %182 to i32*, !mcsema_real_eip !41
  %_ptr_bt_266 = bitcast i32* %183 to i8*
  %_offset_above_rbp_267 = sub i64 %182, %_local_end_to_int_
  %_pot_address_in_parent_stack_268 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_267
  %_cond1_269 = icmp ugt i8* %_ptr_bt_266, %_local_stack_end_ptr_
  %_cond2_1_270 = icmp ugt i8* %_ptr_bt_266, %_parent_stack_end_ptr_
  %_cond2_2_271 = icmp ult i8* %_ptr_bt_266, %_parent_stack_start_ptr_
  %_cond2_272 = or i1 %_cond2_1_270, %_cond2_2_271
  %_cond4_273 = icmp ule i8* %_pot_address_in_parent_stack_268, %_parent_stack_end_ptr_
  %_cond1_n_cond2_274 = and i1 %_cond1_269, %_cond2_272
  %_cond1_n_cond2_cond3_275 = and i1 %_cond1_n_cond2_274, %_cond4_273
  br i1 %_cond1_n_cond2_cond3_275, label %184, label %185

; <label>:184:                                    ; preds = %block_0x77
  %_address_in_parent_stack_bt_277 = bitcast i8* %_pot_address_in_parent_stack_268 to i32*
  br label %185

; <label>:185:                                    ; preds = %block_0x77, %184
  %186 = phi i32* [ %183, %block_0x77 ], [ %_address_in_parent_stack_bt_277, %184 ]
  %_new_load_278 = load i32, i32* %186
  %187 = zext i32 %_new_load_278 to i64, !mcsema_real_eip !41
  store i64 %187, i64* %XAX, !mcsema_real_eip !41
  %EAX.58 = bitcast i64* %XAX to i32*, !mcsema_real_eip !42
  %EAX_val.59 = load i32, i32* %EAX.58, !mcsema_real_eip !42
  %188 = add i32 2, %EAX_val.59, !mcsema_real_eip !42
  %189 = xor i32 %188, %EAX_val.59, !mcsema_real_eip !42
  %190 = xor i32 %189, 2, !mcsema_real_eip !42
  %191 = and i32 %190, 16, !mcsema_real_eip !42
  %192 = icmp ne i32 %191, 0, !mcsema_real_eip !42
  store i1 %192, i1* %AF, !mcsema_real_eip !42
  %193 = lshr i32 %188, 31, !mcsema_real_eip !42
  %194 = trunc i32 %193 to i1, !mcsema_real_eip !42
  store i1 %194, i1* %SF, !mcsema_real_eip !42
  %195 = icmp eq i32 %188, 0, !mcsema_real_eip !42
  store i1 %195, i1* %ZF, !mcsema_real_eip !42
  %196 = xor i32 %EAX_val.59, 2, !mcsema_real_eip !42
  %197 = xor i32 %196, -1, !mcsema_real_eip !42
  %198 = and i32 %197, %189, !mcsema_real_eip !42
  %199 = lshr i32 %198, 31, !mcsema_real_eip !42
  %200 = and i32 %199, 1, !mcsema_real_eip !42
  %201 = trunc i32 %200 to i1, !mcsema_real_eip !42
  store i1 %201, i1* %OF, !mcsema_real_eip !42
  %202 = trunc i32 %188 to i8, !mcsema_real_eip !42
  %203 = call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !42
  %204 = trunc i8 %203 to i1, !mcsema_real_eip !42
  %205 = xor i1 %204, true, !mcsema_real_eip !42
  store i1 %205, i1* %PF, !mcsema_real_eip !42
  %206 = icmp ult i32 %188, %EAX_val.59, !mcsema_real_eip !42
  store i1 %206, i1* %CF, !mcsema_real_eip !42
  %207 = zext i32 %188 to i64, !mcsema_real_eip !42
  store i64 %207, i64* %XAX, !mcsema_real_eip !42
  %EAX_val.62 = load i32, i32* %EAX.58, !mcsema_real_eip !43
  store i32 %EAX_val.62, i32* %183, !mcsema_real_eip !43
  br label %block_0xad, !mcsema_real_eip !44

block_0x85:                                       ; preds = %152
  %_new_gep_100 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -12
  %_allin_new_bt_101 = bitcast i8* %_new_gep_100 to i64*
  %208 = ptrtoint i64* %_allin_new_bt_101 to i64, !mcsema_real_eip !45
  %209 = inttoptr i64 %208 to i32*, !mcsema_real_eip !45
  %_ptr_bt_281 = bitcast i32* %209 to i8*
  %_offset_above_rbp_282 = sub i64 %208, %_local_end_to_int_
  %_pot_address_in_parent_stack_283 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_282
  %_cond1_284 = icmp ugt i8* %_ptr_bt_281, %_local_stack_end_ptr_
  %_cond2_1_285 = icmp ugt i8* %_ptr_bt_281, %_parent_stack_end_ptr_
  %_cond2_2_286 = icmp ult i8* %_ptr_bt_281, %_parent_stack_start_ptr_
  %_cond2_287 = or i1 %_cond2_1_285, %_cond2_2_286
  %_cond4_288 = icmp ule i8* %_pot_address_in_parent_stack_283, %_parent_stack_end_ptr_
  %_cond1_n_cond2_289 = and i1 %_cond1_284, %_cond2_287
  %_cond1_n_cond2_cond3_290 = and i1 %_cond1_n_cond2_289, %_cond4_288
  br i1 %_cond1_n_cond2_cond3_290, label %210, label %211

; <label>:210:                                    ; preds = %block_0x85
  %_address_in_parent_stack_bt_292 = bitcast i8* %_pot_address_in_parent_stack_283 to i32*
  br label %211

; <label>:211:                                    ; preds = %block_0x85, %210
  %212 = phi i32* [ %209, %block_0x85 ], [ %_address_in_parent_stack_bt_292, %210 ]
  %_new_load_293 = load i32, i32* %212
  %213 = zext i32 %_new_load_293 to i64, !mcsema_real_eip !45
  store i64 %213, i64* %XAX, !mcsema_real_eip !45
  %EAX.52 = bitcast i64* %XAX to i32*, !mcsema_real_eip !46
  %EAX_val.53 = load i32, i32* %EAX.52, !mcsema_real_eip !46
  %214 = sub i32 %EAX_val.53, 2, !mcsema_real_eip !46
  %215 = xor i32 %214, %EAX_val.53, !mcsema_real_eip !46
  %216 = xor i32 %215, 2, !mcsema_real_eip !46
  %217 = and i32 %216, 16, !mcsema_real_eip !46
  %218 = icmp ne i32 %217, 0, !mcsema_real_eip !46
  store i1 %218, i1* %AF, !mcsema_real_eip !46
  %219 = trunc i32 %214 to i8, !mcsema_real_eip !46
  %220 = call i8 @llvm.ctpop.i8(i8 %219), !mcsema_real_eip !46
  %221 = trunc i8 %220 to i1, !mcsema_real_eip !46
  %222 = xor i1 %221, true, !mcsema_real_eip !46
  store i1 %222, i1* %PF, !mcsema_real_eip !46
  %223 = icmp eq i32 %214, 0, !mcsema_real_eip !46
  store i1 %223, i1* %ZF, !mcsema_real_eip !46
  %224 = lshr i32 %214, 31, !mcsema_real_eip !46
  %225 = trunc i32 %224 to i1, !mcsema_real_eip !46
  store i1 %225, i1* %SF, !mcsema_real_eip !46
  %226 = icmp ult i32 %EAX_val.53, 2, !mcsema_real_eip !46
  store i1 %226, i1* %CF, !mcsema_real_eip !46
  %227 = xor i32 %EAX_val.53, 2, !mcsema_real_eip !46
  %228 = and i32 %227, %215, !mcsema_real_eip !46
  %229 = lshr i32 %228, 31, !mcsema_real_eip !46
  %230 = trunc i32 %229 to i1, !mcsema_real_eip !46
  store i1 %230, i1* %OF, !mcsema_real_eip !46
  %231 = zext i32 %214 to i64, !mcsema_real_eip !46
  store i64 %231, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.56 = load i32, i32* %EAX.52, !mcsema_real_eip !47
  store i32 %EAX_val.56, i32* %209, !mcsema_real_eip !47
  br label %block_0xad, !mcsema_real_eip !48

block_0x93:                                       ; preds = %152
  %_new_gep_106 = getelementptr i8, i8* %_load_rbp_ptr_81, i64 -12
  %_allin_new_bt_107 = bitcast i8* %_new_gep_106 to i64*
  %232 = ptrtoint i64* %_allin_new_bt_107 to i64, !mcsema_real_eip !49
  %233 = inttoptr i64 %232 to i32*, !mcsema_real_eip !49
  %_ptr_bt_296 = bitcast i32* %233 to i8*
  %_offset_above_rbp_297 = sub i64 %232, %_local_end_to_int_
  %_pot_address_in_parent_stack_298 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_297
  %_cond1_299 = icmp ugt i8* %_ptr_bt_296, %_local_stack_end_ptr_
  %_cond2_1_300 = icmp ugt i8* %_ptr_bt_296, %_parent_stack_end_ptr_
  %_cond2_2_301 = icmp ult i8* %_ptr_bt_296, %_parent_stack_start_ptr_
  %_cond2_302 = or i1 %_cond2_1_300, %_cond2_2_301
  %_cond4_303 = icmp ule i8* %_pot_address_in_parent_stack_298, %_parent_stack_end_ptr_
  %_cond1_n_cond2_304 = and i1 %_cond1_299, %_cond2_302
  %_cond1_n_cond2_cond3_305 = and i1 %_cond1_n_cond2_304, %_cond4_303
  br i1 %_cond1_n_cond2_cond3_305, label %234, label %235

; <label>:234:                                    ; preds = %block_0x93
  %_address_in_parent_stack_bt_307 = bitcast i8* %_pot_address_in_parent_stack_298 to i32*
  br label %235

; <label>:235:                                    ; preds = %block_0x93, %234
  %236 = phi i32* [ %233, %block_0x93 ], [ %_address_in_parent_stack_bt_307, %234 ]
  %_new_load_308 = load i32, i32* %236
  %237 = zext i32 %_new_load_308 to i64, !mcsema_real_eip !49
  store i64 %237, i64* %XAX, !mcsema_real_eip !49
  %EAX.46 = bitcast i64* %XAX to i32*, !mcsema_real_eip !50
  %EAX_val.47 = load i32, i32* %EAX.46, !mcsema_real_eip !50
  %238 = sub i32 %EAX_val.47, 1, !mcsema_real_eip !50
  %239 = xor i32 %238, %EAX_val.47, !mcsema_real_eip !50
  %240 = xor i32 %239, 1, !mcsema_real_eip !50
  %241 = and i32 %240, 16, !mcsema_real_eip !50
  %242 = icmp ne i32 %241, 0, !mcsema_real_eip !50
  store i1 %242, i1* %AF, !mcsema_real_eip !50
  %243 = trunc i32 %238 to i8, !mcsema_real_eip !50
  %244 = call i8 @llvm.ctpop.i8(i8 %243), !mcsema_real_eip !50
  %245 = trunc i8 %244 to i1, !mcsema_real_eip !50
  %246 = xor i1 %245, true, !mcsema_real_eip !50
  store i1 %246, i1* %PF, !mcsema_real_eip !50
  %247 = icmp eq i32 %238, 0, !mcsema_real_eip !50
  store i1 %247, i1* %ZF, !mcsema_real_eip !50
  %248 = lshr i32 %238, 31, !mcsema_real_eip !50
  %249 = trunc i32 %248 to i1, !mcsema_real_eip !50
  store i1 %249, i1* %SF, !mcsema_real_eip !50
  %250 = icmp ult i32 %EAX_val.47, 1, !mcsema_real_eip !50
  store i1 %250, i1* %CF, !mcsema_real_eip !50
  %251 = xor i32 %EAX_val.47, 1, !mcsema_real_eip !50
  %252 = and i32 %251, %239, !mcsema_real_eip !50
  %253 = lshr i32 %252, 31, !mcsema_real_eip !50
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !50
  store i1 %254, i1* %OF, !mcsema_real_eip !50
  %255 = zext i32 %238 to i64, !mcsema_real_eip !50
  store i64 %255, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.50 = load i32, i32* %EAX.46, !mcsema_real_eip !51
  store i32 %EAX_val.50, i32* %233, !mcsema_real_eip !51
  br label %block_0xad, !mcsema_real_eip !52

; <label>:256:                                    ; preds = %152
  store i64 %_new_load_248, i64* %XIP, !mcsema_real_eip !34
  call void @__mcsema_detach_call_value()
  %_rsp_fix_117 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_118 = getelementptr i8, i8* %_rsp_fix_117, i64 8
  store i8* %_gep_fix_118, i8** %_RSP_ptr_
  ret void, !mcsema_real_eip !34

block_0xad:                                       ; preds = %235, %211, %185, %159
  %_load_rbp_ptr_111 = load i8*, i8** %_RBP_ptr_
  %_new_gep_112 = getelementptr i8, i8* %_load_rbp_ptr_111, i64 -8
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  %257 = ptrtoint i64* %_allin_new_bt_113 to i64, !mcsema_real_eip !53
  %258 = inttoptr i64 %257 to i32*, !mcsema_real_eip !53
  %_ptr_bt_311 = bitcast i32* %258 to i8*
  %_offset_above_rbp_312 = sub i64 %257, %_local_end_to_int_
  %_pot_address_in_parent_stack_313 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_312
  %_cond1_314 = icmp ugt i8* %_ptr_bt_311, %_local_stack_end_ptr_
  %_cond2_1_315 = icmp ugt i8* %_ptr_bt_311, %_parent_stack_end_ptr_
  %_cond2_2_316 = icmp ult i8* %_ptr_bt_311, %_parent_stack_start_ptr_
  %_cond2_317 = or i1 %_cond2_1_315, %_cond2_2_316
  %_cond4_318 = icmp ule i8* %_pot_address_in_parent_stack_313, %_parent_stack_end_ptr_
  %_cond1_n_cond2_319 = and i1 %_cond1_314, %_cond2_317
  %_cond1_n_cond2_cond3_320 = and i1 %_cond1_n_cond2_319, %_cond4_318
  br i1 %_cond1_n_cond2_cond3_320, label %259, label %260

; <label>:259:                                    ; preds = %block_0xad
  %_address_in_parent_stack_bt_322 = bitcast i8* %_pot_address_in_parent_stack_313 to i32*
  br label %260

; <label>:260:                                    ; preds = %block_0xad, %259
  %261 = phi i32* [ %258, %block_0xad ], [ %_address_in_parent_stack_bt_322, %259 ]
  %_new_load_323 = load i32, i32* %261
  %262 = zext i32 %_new_load_323 to i64, !mcsema_real_eip !53
  store i64 %262, i64* %XAX, !mcsema_real_eip !53
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !54
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !54
  %263 = add i32 1, %EAX_val.71, !mcsema_real_eip !54
  %264 = xor i32 %263, %EAX_val.71, !mcsema_real_eip !54
  %265 = xor i32 %264, 1, !mcsema_real_eip !54
  %266 = and i32 %265, 16, !mcsema_real_eip !54
  %267 = icmp ne i32 %266, 0, !mcsema_real_eip !54
  store i1 %267, i1* %AF, !mcsema_real_eip !54
  %268 = lshr i32 %263, 31, !mcsema_real_eip !54
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !54
  store i1 %269, i1* %SF, !mcsema_real_eip !54
  %270 = icmp eq i32 %263, 0, !mcsema_real_eip !54
  store i1 %270, i1* %ZF, !mcsema_real_eip !54
  %271 = xor i32 %EAX_val.71, 1, !mcsema_real_eip !54
  %272 = xor i32 %271, -1, !mcsema_real_eip !54
  %273 = and i32 %272, %264, !mcsema_real_eip !54
  %274 = lshr i32 %273, 31, !mcsema_real_eip !54
  %275 = and i32 %274, 1, !mcsema_real_eip !54
  %276 = trunc i32 %275 to i1, !mcsema_real_eip !54
  store i1 %276, i1* %OF, !mcsema_real_eip !54
  %277 = trunc i32 %263 to i8, !mcsema_real_eip !54
  %278 = call i8 @llvm.ctpop.i8(i8 %277), !mcsema_real_eip !54
  %279 = trunc i8 %278 to i1, !mcsema_real_eip !54
  %280 = xor i1 %279, true, !mcsema_real_eip !54
  store i1 %280, i1* %PF, !mcsema_real_eip !54
  %281 = icmp ult i32 %263, %EAX_val.71, !mcsema_real_eip !54
  store i1 %281, i1* %CF, !mcsema_real_eip !54
  %282 = zext i32 %263 to i64, !mcsema_real_eip !54
  store i64 %282, i64* %XAX, !mcsema_real_eip !54
  %EAX_val.74 = load i32, i32* %EAX.70, !mcsema_real_eip !55
  store i32 %EAX_val.74, i32* %258, !mcsema_real_eip !55
  br label %block_0x33, !mcsema_real_eip !56
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
!6 = !{i64 15}
!7 = !{i64 22}
!8 = !{i64 29}
!9 = !{i64 37}
!10 = !{i64 41}
!11 = !{i64 48}
!12 = !{i64 51}
!13 = !{i64 55}
!14 = !{i64 61}
!15 = !{i64 65}
!16 = !{i64 70}
!17 = !{i64 73}
!18 = !{i64 75}
!19 = !{i64 78}
!20 = !{i64 82}
!21 = !{i64 85}
!22 = !{i64 187}
!23 = !{i64 197}
!24 = !{i64 200}
!25 = !{i64 202}
!26 = !{i64 207}
!27 = !{i64 214}
!28 = !{i64 217}
!29 = !{i64 220}
!30 = !{i64 224}
!31 = !{i64 225}
!32 = !{i64 91}
!33 = !{i64 95}
!34 = !{i64 103}
!35 = !{i64 161}
!36 = !{i64 168}
!37 = !{i64 105}
!38 = !{i64 108}
!39 = !{i64 111}
!40 = !{i64 114}
!41 = !{i64 119}
!42 = !{i64 122}
!43 = !{i64 125}
!44 = !{i64 128}
!45 = !{i64 133}
!46 = !{i64 136}
!47 = !{i64 139}
!48 = !{i64 142}
!49 = !{i64 147}
!50 = !{i64 150}
!51 = !{i64 153}
!52 = !{i64 156}
!53 = !{i64 173}
!54 = !{i64 176}
!55 = !{i64 179}
!56 = !{i64 182}
