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
  %ECX.17 = bitcast i64* %XCX to i32*, !mcsema_real_eip !16
  %ECX_val.18 = load i32, i32* %ECX.17, !mcsema_real_eip !16
  %51 = add i32 -97, %ECX_val.18, !mcsema_real_eip !16
  %52 = xor i32 %51, %ECX_val.18, !mcsema_real_eip !16
  %53 = xor i32 %52, -97, !mcsema_real_eip !16
  %54 = and i32 %53, 16, !mcsema_real_eip !16
  %55 = icmp ne i32 %54, 0, !mcsema_real_eip !16
  store i1 %55, i1* %AF, !mcsema_real_eip !16
  %56 = lshr i32 %51, 31, !mcsema_real_eip !16
  %57 = trunc i32 %56 to i1, !mcsema_real_eip !16
  store i1 %57, i1* %SF, !mcsema_real_eip !16
  %58 = icmp eq i32 %51, 0, !mcsema_real_eip !16
  store i1 %58, i1* %ZF, !mcsema_real_eip !16
  %59 = xor i32 %ECX_val.18, -97, !mcsema_real_eip !16
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
  %69 = icmp ult i32 %51, %ECX_val.18, !mcsema_real_eip !16
  store i1 %69, i1* %CF, !mcsema_real_eip !16
  %70 = zext i32 %51 to i64, !mcsema_real_eip !16
  store i64 %70, i64* %XCX, !mcsema_real_eip !16
  %ECX_val.20 = load i32, i32* %ECX.17, !mcsema_real_eip !17
  %71 = zext i32 %ECX_val.20 to i64, !mcsema_real_eip !17
  store i64 %71, i64* %XAX, !mcsema_real_eip !17
  %72 = sub i32 %ECX_val.20, 22, !mcsema_real_eip !18
  %73 = xor i32 %72, %ECX_val.20, !mcsema_real_eip !18
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
  %84 = icmp ult i32 %ECX_val.20, 22, !mcsema_real_eip !18
  store i1 %84, i1* %CF, !mcsema_real_eip !18
  %85 = xor i32 %ECX_val.20, 22, !mcsema_real_eip !18
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
  %ECX_val.27 = load i32, i32* %ECX.17, !mcsema_real_eip !20
  %90 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !20
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !20
  store i32 %ECX_val.27, i32* %91, !mcsema_real_eip !20
  %92 = load i1, i1* %ZF, !mcsema_real_eip !21
  %93 = icmp eq i1 %92, false, !mcsema_real_eip !21
  %94 = load i1, i1* %CF, !mcsema_real_eip !21
  %95 = icmp eq i1 %94, false, !mcsema_real_eip !21
  %96 = and i1 %95, %93, !mcsema_real_eip !21
  br i1 %96, label %block_0xa1, label %block_0x5b, !mcsema_real_eip !21

block_0x5b:                                       ; preds = %block_0x3d
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -32
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %97 = load i64, i64* %_allin_new_bt_46, !mcsema_real_eip !22
  store i64 %97, i64* %XAX, !mcsema_real_eip !22
  %98 = mul i64 %97, 8, !mcsema_real_eip !23
  %99 = add i64 ptrtoint (%0* @data_0xe8 to i64), %98, !mcsema_real_eip !23
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !23
  %101 = load i64, i64* %100, !mcsema_real_eip !23
  store i64 %101, i64* %XCX, !mcsema_real_eip !23
  switch i64 %101, label %252 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !24

block_0x69:                                       ; preds = %block_0x5b
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -12
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %102 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !25
  %103 = inttoptr i64 %102 to i32*, !mcsema_real_eip !25
  %104 = load i32, i32* %103, !mcsema_real_eip !25
  %105 = zext i32 %104 to i64, !mcsema_real_eip !25
  store i64 %105, i64* %XAX, !mcsema_real_eip !25
  %EAX.32 = bitcast i64* %XAX to i32*, !mcsema_real_eip !26
  %EAX_val.33 = load i32, i32* %EAX.32, !mcsema_real_eip !26
  %106 = add i32 1, %EAX_val.33, !mcsema_real_eip !26
  %107 = xor i32 %106, %EAX_val.33, !mcsema_real_eip !26
  %108 = xor i32 %107, 1, !mcsema_real_eip !26
  %109 = and i32 %108, 16, !mcsema_real_eip !26
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !26
  store i1 %110, i1* %AF, !mcsema_real_eip !26
  %111 = lshr i32 %106, 31, !mcsema_real_eip !26
  %112 = trunc i32 %111 to i1, !mcsema_real_eip !26
  store i1 %112, i1* %SF, !mcsema_real_eip !26
  %113 = icmp eq i32 %106, 0, !mcsema_real_eip !26
  store i1 %113, i1* %ZF, !mcsema_real_eip !26
  %114 = xor i32 %EAX_val.33, 1, !mcsema_real_eip !26
  %115 = xor i32 %114, -1, !mcsema_real_eip !26
  %116 = and i32 %115, %107, !mcsema_real_eip !26
  %117 = lshr i32 %116, 31, !mcsema_real_eip !26
  %118 = and i32 %117, 1, !mcsema_real_eip !26
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !26
  store i1 %119, i1* %OF, !mcsema_real_eip !26
  %120 = trunc i32 %106 to i8, !mcsema_real_eip !26
  %121 = call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !26
  %122 = trunc i8 %121 to i1, !mcsema_real_eip !26
  %123 = xor i1 %122, true, !mcsema_real_eip !26
  store i1 %123, i1* %PF, !mcsema_real_eip !26
  %124 = icmp ult i32 %106, %EAX_val.33, !mcsema_real_eip !26
  store i1 %124, i1* %CF, !mcsema_real_eip !26
  %125 = zext i32 %106 to i64, !mcsema_real_eip !26
  store i64 %125, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.36 = load i32, i32* %EAX.32, !mcsema_real_eip !27
  store i32 %EAX_val.36, i32* %103, !mcsema_real_eip !27
  br label %block_0xad, !mcsema_real_eip !28

block_0x77:                                       ; preds = %block_0x5b
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -12
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %126 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !29
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !29
  %128 = load i32, i32* %127, !mcsema_real_eip !29
  %129 = zext i32 %128 to i64, !mcsema_real_eip !29
  store i64 %129, i64* %XAX, !mcsema_real_eip !29
  %EAX.38 = bitcast i64* %XAX to i32*, !mcsema_real_eip !30
  %EAX_val.39 = load i32, i32* %EAX.38, !mcsema_real_eip !30
  %130 = add i32 2, %EAX_val.39, !mcsema_real_eip !30
  %131 = xor i32 %130, %EAX_val.39, !mcsema_real_eip !30
  %132 = xor i32 %131, 2, !mcsema_real_eip !30
  %133 = and i32 %132, 16, !mcsema_real_eip !30
  %134 = icmp ne i32 %133, 0, !mcsema_real_eip !30
  store i1 %134, i1* %AF, !mcsema_real_eip !30
  %135 = lshr i32 %130, 31, !mcsema_real_eip !30
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !30
  store i1 %136, i1* %SF, !mcsema_real_eip !30
  %137 = icmp eq i32 %130, 0, !mcsema_real_eip !30
  store i1 %137, i1* %ZF, !mcsema_real_eip !30
  %138 = xor i32 %EAX_val.39, 2, !mcsema_real_eip !30
  %139 = xor i32 %138, -1, !mcsema_real_eip !30
  %140 = and i32 %139, %131, !mcsema_real_eip !30
  %141 = lshr i32 %140, 31, !mcsema_real_eip !30
  %142 = and i32 %141, 1, !mcsema_real_eip !30
  %143 = trunc i32 %142 to i1, !mcsema_real_eip !30
  store i1 %143, i1* %OF, !mcsema_real_eip !30
  %144 = trunc i32 %130 to i8, !mcsema_real_eip !30
  %145 = call i8 @llvm.ctpop.i8(i8 %144), !mcsema_real_eip !30
  %146 = trunc i8 %145 to i1, !mcsema_real_eip !30
  %147 = xor i1 %146, true, !mcsema_real_eip !30
  store i1 %147, i1* %PF, !mcsema_real_eip !30
  %148 = icmp ult i32 %130, %EAX_val.39, !mcsema_real_eip !30
  store i1 %148, i1* %CF, !mcsema_real_eip !30
  %149 = zext i32 %130 to i64, !mcsema_real_eip !30
  store i64 %149, i64* %XAX, !mcsema_real_eip !30
  %EAX_val.42 = load i32, i32* %EAX.38, !mcsema_real_eip !31
  store i32 %EAX_val.42, i32* %127, !mcsema_real_eip !31
  br label %block_0xad, !mcsema_real_eip !32

block_0x85:                                       ; preds = %block_0x5b
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -12
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %150 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !33
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !33
  %152 = load i32, i32* %151, !mcsema_real_eip !33
  %153 = zext i32 %152 to i64, !mcsema_real_eip !33
  store i64 %153, i64* %XAX, !mcsema_real_eip !33
  %EAX.44 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.45 = load i32, i32* %EAX.44, !mcsema_real_eip !34
  %154 = sub i32 %EAX_val.45, 2, !mcsema_real_eip !34
  %155 = xor i32 %154, %EAX_val.45, !mcsema_real_eip !34
  %156 = xor i32 %155, 2, !mcsema_real_eip !34
  %157 = and i32 %156, 16, !mcsema_real_eip !34
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !34
  store i1 %158, i1* %AF, !mcsema_real_eip !34
  %159 = trunc i32 %154 to i8, !mcsema_real_eip !34
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !34
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !34
  %162 = xor i1 %161, true, !mcsema_real_eip !34
  store i1 %162, i1* %PF, !mcsema_real_eip !34
  %163 = icmp eq i32 %154, 0, !mcsema_real_eip !34
  store i1 %163, i1* %ZF, !mcsema_real_eip !34
  %164 = lshr i32 %154, 31, !mcsema_real_eip !34
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !34
  store i1 %165, i1* %SF, !mcsema_real_eip !34
  %166 = icmp ult i32 %EAX_val.45, 2, !mcsema_real_eip !34
  store i1 %166, i1* %CF, !mcsema_real_eip !34
  %167 = xor i32 %EAX_val.45, 2, !mcsema_real_eip !34
  %168 = and i32 %167, %155, !mcsema_real_eip !34
  %169 = lshr i32 %168, 31, !mcsema_real_eip !34
  %170 = trunc i32 %169 to i1, !mcsema_real_eip !34
  store i1 %170, i1* %OF, !mcsema_real_eip !34
  %171 = zext i32 %154 to i64, !mcsema_real_eip !34
  store i64 %171, i64* %XAX, !mcsema_real_eip !34
  %EAX_val.48 = load i32, i32* %EAX.44, !mcsema_real_eip !35
  store i32 %EAX_val.48, i32* %151, !mcsema_real_eip !35
  br label %block_0xad, !mcsema_real_eip !36

block_0x93:                                       ; preds = %block_0x5b
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -12
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %172 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !37
  %173 = inttoptr i64 %172 to i32*, !mcsema_real_eip !37
  %174 = load i32, i32* %173, !mcsema_real_eip !37
  %175 = zext i32 %174 to i64, !mcsema_real_eip !37
  store i64 %175, i64* %XAX, !mcsema_real_eip !37
  %EAX.50 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.51 = load i32, i32* %EAX.50, !mcsema_real_eip !38
  %176 = sub i32 %EAX_val.51, 1, !mcsema_real_eip !38
  %177 = xor i32 %176, %EAX_val.51, !mcsema_real_eip !38
  %178 = xor i32 %177, 1, !mcsema_real_eip !38
  %179 = and i32 %178, 16, !mcsema_real_eip !38
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !38
  store i1 %180, i1* %AF, !mcsema_real_eip !38
  %181 = trunc i32 %176 to i8, !mcsema_real_eip !38
  %182 = call i8 @llvm.ctpop.i8(i8 %181), !mcsema_real_eip !38
  %183 = trunc i8 %182 to i1, !mcsema_real_eip !38
  %184 = xor i1 %183, true, !mcsema_real_eip !38
  store i1 %184, i1* %PF, !mcsema_real_eip !38
  %185 = icmp eq i32 %176, 0, !mcsema_real_eip !38
  store i1 %185, i1* %ZF, !mcsema_real_eip !38
  %186 = lshr i32 %176, 31, !mcsema_real_eip !38
  %187 = trunc i32 %186 to i1, !mcsema_real_eip !38
  store i1 %187, i1* %SF, !mcsema_real_eip !38
  %188 = icmp ult i32 %EAX_val.51, 1, !mcsema_real_eip !38
  store i1 %188, i1* %CF, !mcsema_real_eip !38
  %189 = xor i32 %EAX_val.51, 1, !mcsema_real_eip !38
  %190 = and i32 %189, %177, !mcsema_real_eip !38
  %191 = lshr i32 %190, 31, !mcsema_real_eip !38
  %192 = trunc i32 %191 to i1, !mcsema_real_eip !38
  store i1 %192, i1* %OF, !mcsema_real_eip !38
  %193 = zext i32 %176 to i64, !mcsema_real_eip !38
  store i64 %193, i64* %XAX, !mcsema_real_eip !38
  %EAX_val.54 = load i32, i32* %EAX.50, !mcsema_real_eip !39
  store i32 %EAX_val.54, i32* %173, !mcsema_real_eip !39
  br label %block_0xad, !mcsema_real_eip !40

block_0xa1:                                       ; preds = %block_0x5b, %block_0x3d
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -4
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %194 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !41
  %195 = inttoptr i64 %194 to i32*, !mcsema_real_eip !41
  store i32 1, i32* %195, !mcsema_real_eip !41
  br label %block_0xd9, !mcsema_real_eip !42

block_0xad:                                       ; preds = %block_0x93, %block_0x85, %block_0x77, %block_0x69
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -8
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %196 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !43
  %197 = inttoptr i64 %196 to i32*, !mcsema_real_eip !43
  %198 = load i32, i32* %197, !mcsema_real_eip !43
  %199 = zext i32 %198 to i64, !mcsema_real_eip !43
  store i64 %199, i64* %XAX, !mcsema_real_eip !43
  %EAX.57 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.58 = load i32, i32* %EAX.57, !mcsema_real_eip !44
  %200 = add i32 1, %EAX_val.58, !mcsema_real_eip !44
  %201 = xor i32 %200, %EAX_val.58, !mcsema_real_eip !44
  %202 = xor i32 %201, 1, !mcsema_real_eip !44
  %203 = and i32 %202, 16, !mcsema_real_eip !44
  %204 = icmp ne i32 %203, 0, !mcsema_real_eip !44
  store i1 %204, i1* %AF, !mcsema_real_eip !44
  %205 = lshr i32 %200, 31, !mcsema_real_eip !44
  %206 = trunc i32 %205 to i1, !mcsema_real_eip !44
  store i1 %206, i1* %SF, !mcsema_real_eip !44
  %207 = icmp eq i32 %200, 0, !mcsema_real_eip !44
  store i1 %207, i1* %ZF, !mcsema_real_eip !44
  %208 = xor i32 %EAX_val.58, 1, !mcsema_real_eip !44
  %209 = xor i32 %208, -1, !mcsema_real_eip !44
  %210 = and i32 %209, %201, !mcsema_real_eip !44
  %211 = lshr i32 %210, 31, !mcsema_real_eip !44
  %212 = and i32 %211, 1, !mcsema_real_eip !44
  %213 = trunc i32 %212 to i1, !mcsema_real_eip !44
  store i1 %213, i1* %OF, !mcsema_real_eip !44
  %214 = trunc i32 %200 to i8, !mcsema_real_eip !44
  %215 = call i8 @llvm.ctpop.i8(i8 %214), !mcsema_real_eip !44
  %216 = trunc i8 %215 to i1, !mcsema_real_eip !44
  %217 = xor i1 %216, true, !mcsema_real_eip !44
  store i1 %217, i1* %PF, !mcsema_real_eip !44
  %218 = icmp ult i32 %200, %EAX_val.58, !mcsema_real_eip !44
  store i1 %218, i1* %CF, !mcsema_real_eip !44
  %219 = zext i32 %200 to i64, !mcsema_real_eip !44
  store i64 %219, i64* %XAX, !mcsema_real_eip !44
  %EAX_val.61 = load i32, i32* %EAX.57, !mcsema_real_eip !45
  store i32 %EAX_val.61, i32* %197, !mcsema_real_eip !45
  br label %block_0x33, !mcsema_real_eip !46

block_0xbb:                                       ; preds = %block_0x33
  store i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64* %XDI, !mcsema_real_eip !47
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -12
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %220 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !48
  %221 = inttoptr i64 %220 to i32*, !mcsema_real_eip !48
  %222 = load i32, i32* %221, !mcsema_real_eip !48
  %223 = zext i32 %222 to i64, !mcsema_real_eip !48
  store i64 %223, i64* %XSI, !mcsema_real_eip !48
  %AL.63 = bitcast i64* %XAX to i8*, !mcsema_real_eip !49
  store i8 0, i8* %AL.63, !mcsema_real_eip !49
  %_load_rsp_ptr_83 = load i8*, i8** %_RSP_ptr_
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !50
  %_new_gep_84 = getelementptr i8, i8* %_load_rsp_ptr_83, i64 -8
  %224 = sub i64 %RSP_val.66, 8, !mcsema_real_eip !50
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_85, !mcsema_real_eip !50
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_
  store i64 %224, i64* %XSP, !mcsema_real_eip !50
  %225 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64 %223)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %225, i64* %XAX, !mcsema_real_eip !50
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -4
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %226 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !51
  %227 = inttoptr i64 %226 to i32*, !mcsema_real_eip !51
  store i32 1, i32* %227, !mcsema_real_eip !51
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -40
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %EAX.69 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.70 = load i32, i32* %EAX.69, !mcsema_real_eip !52
  %228 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !52
  %229 = inttoptr i64 %228 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.70, i32* %229, !mcsema_real_eip !52
  br label %block_0xd9, !mcsema_real_eip !53

block_0xd9:                                       ; preds = %block_0xbb, %block_0xa1
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -4
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %230 = ptrtoint i64* %_allin_new_bt_94 to i64, !mcsema_real_eip !53
  %231 = inttoptr i64 %230 to i32*, !mcsema_real_eip !53
  %232 = load i32, i32* %231, !mcsema_real_eip !53
  %233 = zext i32 %232 to i64, !mcsema_real_eip !53
  store i64 %233, i64* %XAX, !mcsema_real_eip !53
  %_load_rsp_ptr_95 = load i8*, i8** %_RSP_ptr_
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !54
  %_new_gep_96 = getelementptr i8, i8* %_load_rsp_ptr_95, i64 48
  %234 = add i64 48, %RSP_val.72, !mcsema_real_eip !54
  %_trans_p2i_97 = ptrtoint i8* %_new_gep_96 to i64
  %_trans_p2i_98 = ptrtoint i8* %_load_rsp_ptr_95 to i64
  %_trans_xor_99 = xor i64 %_trans_p2i_97, %_trans_p2i_98
  %235 = xor i64 %_trans_xor_99, 48, !mcsema_real_eip !54
  %236 = and i64 %235, 16, !mcsema_real_eip !54
  %237 = icmp ne i64 %236, 0, !mcsema_real_eip !54
  store i1 %237, i1* %AF, !mcsema_real_eip !54
  %238 = lshr i64 %234, 63, !mcsema_real_eip !54
  %239 = trunc i64 %238 to i1, !mcsema_real_eip !54
  store i1 %239, i1* %SF, !mcsema_real_eip !54
  %_trans_icmp_eq_101 = icmp eq i64 %_trans_p2i_97, 0
  store i1 %_trans_icmp_eq_101, i1* %ZF, !mcsema_real_eip !54
  %_trans_xor_103 = xor i64 %_trans_p2i_98, 48
  %240 = xor i64 %_trans_xor_103, -1, !mcsema_real_eip !54
  %241 = and i64 %240, %_trans_xor_99, !mcsema_real_eip !54
  %242 = lshr i64 %241, 63, !mcsema_real_eip !54
  %243 = and i64 %242, 1, !mcsema_real_eip !54
  %244 = trunc i64 %243 to i1, !mcsema_real_eip !54
  store i1 %244, i1* %OF, !mcsema_real_eip !54
  %_trans_trunc_108 = trunc i64 %_trans_p2i_97 to i8
  %245 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_108), !mcsema_real_eip !54
  %246 = trunc i8 %245 to i1, !mcsema_real_eip !54
  %247 = xor i1 %246, true, !mcsema_real_eip !54
  store i1 %247, i1* %PF, !mcsema_real_eip !54
  %_trans_icmp_ne_110 = icmp ne i64 %_trans_p2i_97, %RSP_val.72
  store i1 %_trans_icmp_ne_110, i1* %CF, !mcsema_real_eip !54
  store volatile i8* %_new_gep_96, i8** %_RSP_ptr_
  store i64 %234, i64* %XSP, !mcsema_real_eip !54
  %_allin_new_bt_112 = bitcast i8* %_new_gep_96 to i64*
  %248 = load i64, i64* %_allin_new_bt_112, !mcsema_real_eip !55
  %_new_int2ptr_ = inttoptr i64 %248 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %248, i64* %XBP, !mcsema_real_eip !55
  %_new_gep_113 = getelementptr i8, i8* %_new_gep_96, i64 8
  %249 = add i64 %234, 8, !mcsema_real_eip !55
  store volatile i8* %_new_gep_113, i8** %_RSP_ptr_
  store i64 %249, i64* %XSP, !mcsema_real_eip !55
  %_new_gep_115 = getelementptr i8, i8* %_new_gep_113, i64 8
  %250 = add i64 %249, 8, !mcsema_real_eip !56
  %_allin_new_bt_116 = bitcast i8* %_new_gep_113 to i64*
  %251 = load i64, i64* %_allin_new_bt_116, !mcsema_real_eip !56
  store i64 %251, i64* %XIP, !mcsema_real_eip !56
  store volatile i8* %_new_gep_115, i8** %_RSP_ptr_
  store i64 %250, i64* %XSP, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56

; <label>:252:                                    ; preds = %block_0x5b
  store i64 %101, i64* %XIP, !mcsema_real_eip !24
  call void @__mcsema_detach_call_value()
  %_rsp_fix_117 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_118 = getelementptr i8, i8* %_rsp_fix_117, i64 8
  store i8* %_gep_fix_118, i8** %_RSP_ptr_
  ret void, !mcsema_real_eip !24
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

block_0x33:                                       ; preds = %219, %21
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
  %ECX.17 = bitcast i64* %XCX to i32*, !mcsema_real_eip !16
  %ECX_val.18 = load i32, i32* %ECX.17, !mcsema_real_eip !16
  %59 = add i32 -97, %ECX_val.18, !mcsema_real_eip !16
  %60 = xor i32 %59, %ECX_val.18, !mcsema_real_eip !16
  %61 = xor i32 %60, -97, !mcsema_real_eip !16
  %62 = and i32 %61, 16, !mcsema_real_eip !16
  %63 = icmp ne i32 %62, 0, !mcsema_real_eip !16
  store i1 %63, i1* %AF, !mcsema_real_eip !16
  %64 = lshr i32 %59, 31, !mcsema_real_eip !16
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !16
  store i1 %65, i1* %SF, !mcsema_real_eip !16
  %66 = icmp eq i32 %59, 0, !mcsema_real_eip !16
  store i1 %66, i1* %ZF, !mcsema_real_eip !16
  %67 = xor i32 %ECX_val.18, -97, !mcsema_real_eip !16
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
  %77 = icmp ult i32 %59, %ECX_val.18, !mcsema_real_eip !16
  store i1 %77, i1* %CF, !mcsema_real_eip !16
  %78 = zext i32 %59 to i64, !mcsema_real_eip !16
  store i64 %78, i64* %XCX, !mcsema_real_eip !16
  %ECX_val.20 = load i32, i32* %ECX.17, !mcsema_real_eip !17
  %79 = zext i32 %ECX_val.20 to i64, !mcsema_real_eip !17
  store i64 %79, i64* %XAX, !mcsema_real_eip !17
  %80 = sub i32 %ECX_val.20, 22, !mcsema_real_eip !18
  %81 = xor i32 %80, %ECX_val.20, !mcsema_real_eip !18
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
  %92 = icmp ult i32 %ECX_val.20, 22, !mcsema_real_eip !18
  store i1 %92, i1* %CF, !mcsema_real_eip !18
  %93 = xor i32 %ECX_val.20, 22, !mcsema_real_eip !18
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
  %ECX_val.27 = load i32, i32* %ECX.17, !mcsema_real_eip !20
  %98 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !20
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !20
  store i32 %ECX_val.27, i32* %99, !mcsema_real_eip !20
  %100 = load i1, i1* %ZF, !mcsema_real_eip !21
  %101 = icmp eq i1 %100, false, !mcsema_real_eip !21
  %102 = load i1, i1* %CF, !mcsema_real_eip !21
  %103 = icmp eq i1 %102, false, !mcsema_real_eip !21
  %104 = and i1 %103, %101, !mcsema_real_eip !21
  br i1 %104, label %block_0xa1, label %block_0x5b, !mcsema_real_eip !21

block_0x5b:                                       ; preds = %55
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -32
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %_ptr_to_int_159 = ptrtoint i64* %_allin_new_bt_46 to i64
  %_offset_above_rbp_162 = sub i64 %_ptr_to_int_159, %_local_end_to_int_
  %_pot_address_in_parent_stack_163 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_162
  %_cond1_164 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_165 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_166 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_167 = or i1 %_cond2_1_165, %_cond2_2_166
  %_cond4_168 = icmp ule i8* %_pot_address_in_parent_stack_163, %_parent_stack_end_ptr_
  %_cond1_n_cond2_169 = and i1 %_cond1_164, %_cond2_167
  %_cond1_n_cond2_cond3_170 = and i1 %_cond1_n_cond2_169, %_cond4_168
  br i1 %_cond1_n_cond2_cond3_170, label %105, label %106

; <label>:105:                                    ; preds = %block_0x5b
  %_address_in_parent_stack_bt_172 = bitcast i8* %_pot_address_in_parent_stack_163 to i64*
  br label %106

; <label>:106:                                    ; preds = %block_0x5b, %105
  %107 = phi i64* [ %_allin_new_bt_46, %block_0x5b ], [ %_address_in_parent_stack_bt_172, %105 ]
  %_new_load_173 = load i64, i64* %107
  store i64 %_new_load_173, i64* %XAX, !mcsema_real_eip !22
  %108 = mul i64 %_new_load_173, 8, !mcsema_real_eip !23
  %109 = add i64 ptrtoint (%0* @data_0xe8 to i64), %108, !mcsema_real_eip !23
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !23
  %_ptr_bt_176 = bitcast i64* %110 to i8*
  %_offset_above_rbp_177 = sub i64 %109, %_local_end_to_int_
  %_pot_address_in_parent_stack_178 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_177
  %_cond1_179 = icmp ugt i8* %_ptr_bt_176, %_local_stack_end_ptr_
  %_cond2_1_180 = icmp ugt i8* %_ptr_bt_176, %_parent_stack_end_ptr_
  %_cond2_2_181 = icmp ult i8* %_ptr_bt_176, %_parent_stack_start_ptr_
  %_cond2_182 = or i1 %_cond2_1_180, %_cond2_2_181
  %_cond4_183 = icmp ule i8* %_pot_address_in_parent_stack_178, %_parent_stack_end_ptr_
  %_cond1_n_cond2_184 = and i1 %_cond1_179, %_cond2_182
  %_cond1_n_cond2_cond3_185 = and i1 %_cond1_n_cond2_184, %_cond4_183
  br i1 %_cond1_n_cond2_cond3_185, label %111, label %112

; <label>:111:                                    ; preds = %106
  %_address_in_parent_stack_bt_187 = bitcast i8* %_pot_address_in_parent_stack_178 to i64*
  br label %112

; <label>:112:                                    ; preds = %106, %111
  %113 = phi i64* [ %110, %106 ], [ %_address_in_parent_stack_bt_187, %111 ]
  %_new_load_188 = load i64, i64* %113
  store i64 %_new_load_188, i64* %XCX, !mcsema_real_eip !23
  switch i64 %_new_load_188, label %282 [
    i64 105, label %block_0x69
    i64 119, label %block_0x77
    i64 147, label %block_0x93
    i64 161, label %block_0xa1
    i64 133, label %block_0x85
  ], !mcsema_real_eip !24

block_0x69:                                       ; preds = %112
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -12
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %114 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !25
  %115 = inttoptr i64 %114 to i32*, !mcsema_real_eip !25
  %_ptr_bt_191 = bitcast i32* %115 to i8*
  %_offset_above_rbp_192 = sub i64 %114, %_local_end_to_int_
  %_pot_address_in_parent_stack_193 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_192
  %_cond1_194 = icmp ugt i8* %_ptr_bt_191, %_local_stack_end_ptr_
  %_cond2_1_195 = icmp ugt i8* %_ptr_bt_191, %_parent_stack_end_ptr_
  %_cond2_2_196 = icmp ult i8* %_ptr_bt_191, %_parent_stack_start_ptr_
  %_cond2_197 = or i1 %_cond2_1_195, %_cond2_2_196
  %_cond4_198 = icmp ule i8* %_pot_address_in_parent_stack_193, %_parent_stack_end_ptr_
  %_cond1_n_cond2_199 = and i1 %_cond1_194, %_cond2_197
  %_cond1_n_cond2_cond3_200 = and i1 %_cond1_n_cond2_199, %_cond4_198
  br i1 %_cond1_n_cond2_cond3_200, label %116, label %117

; <label>:116:                                    ; preds = %block_0x69
  %_address_in_parent_stack_bt_202 = bitcast i8* %_pot_address_in_parent_stack_193 to i32*
  br label %117

; <label>:117:                                    ; preds = %block_0x69, %116
  %118 = phi i32* [ %115, %block_0x69 ], [ %_address_in_parent_stack_bt_202, %116 ]
  %_new_load_203 = load i32, i32* %118
  %119 = zext i32 %_new_load_203 to i64, !mcsema_real_eip !25
  store i64 %119, i64* %XAX, !mcsema_real_eip !25
  %EAX.32 = bitcast i64* %XAX to i32*, !mcsema_real_eip !26
  %EAX_val.33 = load i32, i32* %EAX.32, !mcsema_real_eip !26
  %120 = add i32 1, %EAX_val.33, !mcsema_real_eip !26
  %121 = xor i32 %120, %EAX_val.33, !mcsema_real_eip !26
  %122 = xor i32 %121, 1, !mcsema_real_eip !26
  %123 = and i32 %122, 16, !mcsema_real_eip !26
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !26
  store i1 %124, i1* %AF, !mcsema_real_eip !26
  %125 = lshr i32 %120, 31, !mcsema_real_eip !26
  %126 = trunc i32 %125 to i1, !mcsema_real_eip !26
  store i1 %126, i1* %SF, !mcsema_real_eip !26
  %127 = icmp eq i32 %120, 0, !mcsema_real_eip !26
  store i1 %127, i1* %ZF, !mcsema_real_eip !26
  %128 = xor i32 %EAX_val.33, 1, !mcsema_real_eip !26
  %129 = xor i32 %128, -1, !mcsema_real_eip !26
  %130 = and i32 %129, %121, !mcsema_real_eip !26
  %131 = lshr i32 %130, 31, !mcsema_real_eip !26
  %132 = and i32 %131, 1, !mcsema_real_eip !26
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !26
  store i1 %133, i1* %OF, !mcsema_real_eip !26
  %134 = trunc i32 %120 to i8, !mcsema_real_eip !26
  %135 = call i8 @llvm.ctpop.i8(i8 %134), !mcsema_real_eip !26
  %136 = trunc i8 %135 to i1, !mcsema_real_eip !26
  %137 = xor i1 %136, true, !mcsema_real_eip !26
  store i1 %137, i1* %PF, !mcsema_real_eip !26
  %138 = icmp ult i32 %120, %EAX_val.33, !mcsema_real_eip !26
  store i1 %138, i1* %CF, !mcsema_real_eip !26
  %139 = zext i32 %120 to i64, !mcsema_real_eip !26
  store i64 %139, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.36 = load i32, i32* %EAX.32, !mcsema_real_eip !27
  store i32 %EAX_val.36, i32* %115, !mcsema_real_eip !27
  br label %block_0xad, !mcsema_real_eip !28

block_0x77:                                       ; preds = %112
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -12
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %140 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !29
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !29
  %_ptr_bt_206 = bitcast i32* %141 to i8*
  %_offset_above_rbp_207 = sub i64 %140, %_local_end_to_int_
  %_pot_address_in_parent_stack_208 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_207
  %_cond1_209 = icmp ugt i8* %_ptr_bt_206, %_local_stack_end_ptr_
  %_cond2_1_210 = icmp ugt i8* %_ptr_bt_206, %_parent_stack_end_ptr_
  %_cond2_2_211 = icmp ult i8* %_ptr_bt_206, %_parent_stack_start_ptr_
  %_cond2_212 = or i1 %_cond2_1_210, %_cond2_2_211
  %_cond4_213 = icmp ule i8* %_pot_address_in_parent_stack_208, %_parent_stack_end_ptr_
  %_cond1_n_cond2_214 = and i1 %_cond1_209, %_cond2_212
  %_cond1_n_cond2_cond3_215 = and i1 %_cond1_n_cond2_214, %_cond4_213
  br i1 %_cond1_n_cond2_cond3_215, label %142, label %143

; <label>:142:                                    ; preds = %block_0x77
  %_address_in_parent_stack_bt_217 = bitcast i8* %_pot_address_in_parent_stack_208 to i32*
  br label %143

; <label>:143:                                    ; preds = %block_0x77, %142
  %144 = phi i32* [ %141, %block_0x77 ], [ %_address_in_parent_stack_bt_217, %142 ]
  %_new_load_218 = load i32, i32* %144
  %145 = zext i32 %_new_load_218 to i64, !mcsema_real_eip !29
  store i64 %145, i64* %XAX, !mcsema_real_eip !29
  %EAX.38 = bitcast i64* %XAX to i32*, !mcsema_real_eip !30
  %EAX_val.39 = load i32, i32* %EAX.38, !mcsema_real_eip !30
  %146 = add i32 2, %EAX_val.39, !mcsema_real_eip !30
  %147 = xor i32 %146, %EAX_val.39, !mcsema_real_eip !30
  %148 = xor i32 %147, 2, !mcsema_real_eip !30
  %149 = and i32 %148, 16, !mcsema_real_eip !30
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !30
  store i1 %150, i1* %AF, !mcsema_real_eip !30
  %151 = lshr i32 %146, 31, !mcsema_real_eip !30
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !30
  store i1 %152, i1* %SF, !mcsema_real_eip !30
  %153 = icmp eq i32 %146, 0, !mcsema_real_eip !30
  store i1 %153, i1* %ZF, !mcsema_real_eip !30
  %154 = xor i32 %EAX_val.39, 2, !mcsema_real_eip !30
  %155 = xor i32 %154, -1, !mcsema_real_eip !30
  %156 = and i32 %155, %147, !mcsema_real_eip !30
  %157 = lshr i32 %156, 31, !mcsema_real_eip !30
  %158 = and i32 %157, 1, !mcsema_real_eip !30
  %159 = trunc i32 %158 to i1, !mcsema_real_eip !30
  store i1 %159, i1* %OF, !mcsema_real_eip !30
  %160 = trunc i32 %146 to i8, !mcsema_real_eip !30
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !30
  %162 = trunc i8 %161 to i1, !mcsema_real_eip !30
  %163 = xor i1 %162, true, !mcsema_real_eip !30
  store i1 %163, i1* %PF, !mcsema_real_eip !30
  %164 = icmp ult i32 %146, %EAX_val.39, !mcsema_real_eip !30
  store i1 %164, i1* %CF, !mcsema_real_eip !30
  %165 = zext i32 %146 to i64, !mcsema_real_eip !30
  store i64 %165, i64* %XAX, !mcsema_real_eip !30
  %EAX_val.42 = load i32, i32* %EAX.38, !mcsema_real_eip !31
  store i32 %EAX_val.42, i32* %141, !mcsema_real_eip !31
  br label %block_0xad, !mcsema_real_eip !32

block_0x85:                                       ; preds = %112
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -12
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %166 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !33
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !33
  %_ptr_bt_221 = bitcast i32* %167 to i8*
  %_offset_above_rbp_222 = sub i64 %166, %_local_end_to_int_
  %_pot_address_in_parent_stack_223 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_222
  %_cond1_224 = icmp ugt i8* %_ptr_bt_221, %_local_stack_end_ptr_
  %_cond2_1_225 = icmp ugt i8* %_ptr_bt_221, %_parent_stack_end_ptr_
  %_cond2_2_226 = icmp ult i8* %_ptr_bt_221, %_parent_stack_start_ptr_
  %_cond2_227 = or i1 %_cond2_1_225, %_cond2_2_226
  %_cond4_228 = icmp ule i8* %_pot_address_in_parent_stack_223, %_parent_stack_end_ptr_
  %_cond1_n_cond2_229 = and i1 %_cond1_224, %_cond2_227
  %_cond1_n_cond2_cond3_230 = and i1 %_cond1_n_cond2_229, %_cond4_228
  br i1 %_cond1_n_cond2_cond3_230, label %168, label %169

; <label>:168:                                    ; preds = %block_0x85
  %_address_in_parent_stack_bt_232 = bitcast i8* %_pot_address_in_parent_stack_223 to i32*
  br label %169

; <label>:169:                                    ; preds = %block_0x85, %168
  %170 = phi i32* [ %167, %block_0x85 ], [ %_address_in_parent_stack_bt_232, %168 ]
  %_new_load_233 = load i32, i32* %170
  %171 = zext i32 %_new_load_233 to i64, !mcsema_real_eip !33
  store i64 %171, i64* %XAX, !mcsema_real_eip !33
  %EAX.44 = bitcast i64* %XAX to i32*, !mcsema_real_eip !34
  %EAX_val.45 = load i32, i32* %EAX.44, !mcsema_real_eip !34
  %172 = sub i32 %EAX_val.45, 2, !mcsema_real_eip !34
  %173 = xor i32 %172, %EAX_val.45, !mcsema_real_eip !34
  %174 = xor i32 %173, 2, !mcsema_real_eip !34
  %175 = and i32 %174, 16, !mcsema_real_eip !34
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !34
  store i1 %176, i1* %AF, !mcsema_real_eip !34
  %177 = trunc i32 %172 to i8, !mcsema_real_eip !34
  %178 = call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !34
  %179 = trunc i8 %178 to i1, !mcsema_real_eip !34
  %180 = xor i1 %179, true, !mcsema_real_eip !34
  store i1 %180, i1* %PF, !mcsema_real_eip !34
  %181 = icmp eq i32 %172, 0, !mcsema_real_eip !34
  store i1 %181, i1* %ZF, !mcsema_real_eip !34
  %182 = lshr i32 %172, 31, !mcsema_real_eip !34
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !34
  store i1 %183, i1* %SF, !mcsema_real_eip !34
  %184 = icmp ult i32 %EAX_val.45, 2, !mcsema_real_eip !34
  store i1 %184, i1* %CF, !mcsema_real_eip !34
  %185 = xor i32 %EAX_val.45, 2, !mcsema_real_eip !34
  %186 = and i32 %185, %173, !mcsema_real_eip !34
  %187 = lshr i32 %186, 31, !mcsema_real_eip !34
  %188 = trunc i32 %187 to i1, !mcsema_real_eip !34
  store i1 %188, i1* %OF, !mcsema_real_eip !34
  %189 = zext i32 %172 to i64, !mcsema_real_eip !34
  store i64 %189, i64* %XAX, !mcsema_real_eip !34
  %EAX_val.48 = load i32, i32* %EAX.44, !mcsema_real_eip !35
  store i32 %EAX_val.48, i32* %167, !mcsema_real_eip !35
  br label %block_0xad, !mcsema_real_eip !36

block_0x93:                                       ; preds = %112
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -12
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %190 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !37
  %191 = inttoptr i64 %190 to i32*, !mcsema_real_eip !37
  %_ptr_bt_236 = bitcast i32* %191 to i8*
  %_offset_above_rbp_237 = sub i64 %190, %_local_end_to_int_
  %_pot_address_in_parent_stack_238 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_237
  %_cond1_239 = icmp ugt i8* %_ptr_bt_236, %_local_stack_end_ptr_
  %_cond2_1_240 = icmp ugt i8* %_ptr_bt_236, %_parent_stack_end_ptr_
  %_cond2_2_241 = icmp ult i8* %_ptr_bt_236, %_parent_stack_start_ptr_
  %_cond2_242 = or i1 %_cond2_1_240, %_cond2_2_241
  %_cond4_243 = icmp ule i8* %_pot_address_in_parent_stack_238, %_parent_stack_end_ptr_
  %_cond1_n_cond2_244 = and i1 %_cond1_239, %_cond2_242
  %_cond1_n_cond2_cond3_245 = and i1 %_cond1_n_cond2_244, %_cond4_243
  br i1 %_cond1_n_cond2_cond3_245, label %192, label %193

; <label>:192:                                    ; preds = %block_0x93
  %_address_in_parent_stack_bt_247 = bitcast i8* %_pot_address_in_parent_stack_238 to i32*
  br label %193

; <label>:193:                                    ; preds = %block_0x93, %192
  %194 = phi i32* [ %191, %block_0x93 ], [ %_address_in_parent_stack_bt_247, %192 ]
  %_new_load_248 = load i32, i32* %194
  %195 = zext i32 %_new_load_248 to i64, !mcsema_real_eip !37
  store i64 %195, i64* %XAX, !mcsema_real_eip !37
  %EAX.50 = bitcast i64* %XAX to i32*, !mcsema_real_eip !38
  %EAX_val.51 = load i32, i32* %EAX.50, !mcsema_real_eip !38
  %196 = sub i32 %EAX_val.51, 1, !mcsema_real_eip !38
  %197 = xor i32 %196, %EAX_val.51, !mcsema_real_eip !38
  %198 = xor i32 %197, 1, !mcsema_real_eip !38
  %199 = and i32 %198, 16, !mcsema_real_eip !38
  %200 = icmp ne i32 %199, 0, !mcsema_real_eip !38
  store i1 %200, i1* %AF, !mcsema_real_eip !38
  %201 = trunc i32 %196 to i8, !mcsema_real_eip !38
  %202 = call i8 @llvm.ctpop.i8(i8 %201), !mcsema_real_eip !38
  %203 = trunc i8 %202 to i1, !mcsema_real_eip !38
  %204 = xor i1 %203, true, !mcsema_real_eip !38
  store i1 %204, i1* %PF, !mcsema_real_eip !38
  %205 = icmp eq i32 %196, 0, !mcsema_real_eip !38
  store i1 %205, i1* %ZF, !mcsema_real_eip !38
  %206 = lshr i32 %196, 31, !mcsema_real_eip !38
  %207 = trunc i32 %206 to i1, !mcsema_real_eip !38
  store i1 %207, i1* %SF, !mcsema_real_eip !38
  %208 = icmp ult i32 %EAX_val.51, 1, !mcsema_real_eip !38
  store i1 %208, i1* %CF, !mcsema_real_eip !38
  %209 = xor i32 %EAX_val.51, 1, !mcsema_real_eip !38
  %210 = and i32 %209, %197, !mcsema_real_eip !38
  %211 = lshr i32 %210, 31, !mcsema_real_eip !38
  %212 = trunc i32 %211 to i1, !mcsema_real_eip !38
  store i1 %212, i1* %OF, !mcsema_real_eip !38
  %213 = zext i32 %196 to i64, !mcsema_real_eip !38
  store i64 %213, i64* %XAX, !mcsema_real_eip !38
  %EAX_val.54 = load i32, i32* %EAX.50, !mcsema_real_eip !39
  store i32 %EAX_val.54, i32* %191, !mcsema_real_eip !39
  br label %block_0xad, !mcsema_real_eip !40

block_0xa1:                                       ; preds = %112, %55
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -4
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %214 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !41
  %215 = inttoptr i64 %214 to i32*, !mcsema_real_eip !41
  store i32 1, i32* %215, !mcsema_real_eip !41
  br label %block_0xd9, !mcsema_real_eip !42

block_0xad:                                       ; preds = %193, %169, %143, %117
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -8
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %216 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !43
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !43
  %_ptr_bt_251 = bitcast i32* %217 to i8*
  %_offset_above_rbp_252 = sub i64 %216, %_local_end_to_int_
  %_pot_address_in_parent_stack_253 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_252
  %_cond1_254 = icmp ugt i8* %_ptr_bt_251, %_local_stack_end_ptr_
  %_cond2_1_255 = icmp ugt i8* %_ptr_bt_251, %_parent_stack_end_ptr_
  %_cond2_2_256 = icmp ult i8* %_ptr_bt_251, %_parent_stack_start_ptr_
  %_cond2_257 = or i1 %_cond2_1_255, %_cond2_2_256
  %_cond4_258 = icmp ule i8* %_pot_address_in_parent_stack_253, %_parent_stack_end_ptr_
  %_cond1_n_cond2_259 = and i1 %_cond1_254, %_cond2_257
  %_cond1_n_cond2_cond3_260 = and i1 %_cond1_n_cond2_259, %_cond4_258
  br i1 %_cond1_n_cond2_cond3_260, label %218, label %219

; <label>:218:                                    ; preds = %block_0xad
  %_address_in_parent_stack_bt_262 = bitcast i8* %_pot_address_in_parent_stack_253 to i32*
  br label %219

; <label>:219:                                    ; preds = %block_0xad, %218
  %220 = phi i32* [ %217, %block_0xad ], [ %_address_in_parent_stack_bt_262, %218 ]
  %_new_load_263 = load i32, i32* %220
  %221 = zext i32 %_new_load_263 to i64, !mcsema_real_eip !43
  store i64 %221, i64* %XAX, !mcsema_real_eip !43
  %EAX.57 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.58 = load i32, i32* %EAX.57, !mcsema_real_eip !44
  %222 = add i32 1, %EAX_val.58, !mcsema_real_eip !44
  %223 = xor i32 %222, %EAX_val.58, !mcsema_real_eip !44
  %224 = xor i32 %223, 1, !mcsema_real_eip !44
  %225 = and i32 %224, 16, !mcsema_real_eip !44
  %226 = icmp ne i32 %225, 0, !mcsema_real_eip !44
  store i1 %226, i1* %AF, !mcsema_real_eip !44
  %227 = lshr i32 %222, 31, !mcsema_real_eip !44
  %228 = trunc i32 %227 to i1, !mcsema_real_eip !44
  store i1 %228, i1* %SF, !mcsema_real_eip !44
  %229 = icmp eq i32 %222, 0, !mcsema_real_eip !44
  store i1 %229, i1* %ZF, !mcsema_real_eip !44
  %230 = xor i32 %EAX_val.58, 1, !mcsema_real_eip !44
  %231 = xor i32 %230, -1, !mcsema_real_eip !44
  %232 = and i32 %231, %223, !mcsema_real_eip !44
  %233 = lshr i32 %232, 31, !mcsema_real_eip !44
  %234 = and i32 %233, 1, !mcsema_real_eip !44
  %235 = trunc i32 %234 to i1, !mcsema_real_eip !44
  store i1 %235, i1* %OF, !mcsema_real_eip !44
  %236 = trunc i32 %222 to i8, !mcsema_real_eip !44
  %237 = call i8 @llvm.ctpop.i8(i8 %236), !mcsema_real_eip !44
  %238 = trunc i8 %237 to i1, !mcsema_real_eip !44
  %239 = xor i1 %238, true, !mcsema_real_eip !44
  store i1 %239, i1* %PF, !mcsema_real_eip !44
  %240 = icmp ult i32 %222, %EAX_val.58, !mcsema_real_eip !44
  store i1 %240, i1* %CF, !mcsema_real_eip !44
  %241 = zext i32 %222 to i64, !mcsema_real_eip !44
  store i64 %241, i64* %XAX, !mcsema_real_eip !44
  %EAX_val.61 = load i32, i32* %EAX.57, !mcsema_real_eip !45
  store i32 %EAX_val.61, i32* %217, !mcsema_real_eip !45
  br label %block_0x33, !mcsema_real_eip !46

block_0xbb:                                       ; preds = %28
  store i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64* %XDI, !mcsema_real_eip !47
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -12
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %242 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !48
  %243 = inttoptr i64 %242 to i32*, !mcsema_real_eip !48
  %_ptr_bt_266 = bitcast i32* %243 to i8*
  %_offset_above_rbp_267 = sub i64 %242, %_local_end_to_int_
  %_pot_address_in_parent_stack_268 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_267
  %_cond1_269 = icmp ugt i8* %_ptr_bt_266, %_local_stack_end_ptr_
  %_cond2_1_270 = icmp ugt i8* %_ptr_bt_266, %_parent_stack_end_ptr_
  %_cond2_2_271 = icmp ult i8* %_ptr_bt_266, %_parent_stack_start_ptr_
  %_cond2_272 = or i1 %_cond2_1_270, %_cond2_2_271
  %_cond4_273 = icmp ule i8* %_pot_address_in_parent_stack_268, %_parent_stack_end_ptr_
  %_cond1_n_cond2_274 = and i1 %_cond1_269, %_cond2_272
  %_cond1_n_cond2_cond3_275 = and i1 %_cond1_n_cond2_274, %_cond4_273
  br i1 %_cond1_n_cond2_cond3_275, label %244, label %245

; <label>:244:                                    ; preds = %block_0xbb
  %_address_in_parent_stack_bt_277 = bitcast i8* %_pot_address_in_parent_stack_268 to i32*
  br label %245

; <label>:245:                                    ; preds = %block_0xbb, %244
  %246 = phi i32* [ %243, %block_0xbb ], [ %_address_in_parent_stack_bt_277, %244 ]
  %_new_load_278 = load i32, i32* %246
  %247 = zext i32 %_new_load_278 to i64, !mcsema_real_eip !48
  store i64 %247, i64* %XSI, !mcsema_real_eip !48
  %AL.63 = bitcast i64* %XAX to i8*, !mcsema_real_eip !49
  store i8 0, i8* %AL.63, !mcsema_real_eip !49
  %_load_rsp_ptr_83 = load i8*, i8** %_RSP_ptr_
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !50
  %_new_gep_84 = getelementptr i8, i8* %_load_rsp_ptr_83, i64 -8
  %248 = sub i64 %RSP_val.66, 8, !mcsema_real_eip !50
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_85, !mcsema_real_eip !50
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_
  store i64 %248, i64* %XSP, !mcsema_real_eip !50
  %249 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%1* @data_0x1a0 to i64), i64 9), i64 %247)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %249, i64* %XAX, !mcsema_real_eip !50
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -4
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %250 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !51
  %251 = inttoptr i64 %250 to i32*, !mcsema_real_eip !51
  store i32 1, i32* %251, !mcsema_real_eip !51
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -40
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %EAX.69 = bitcast i64* %XAX to i32*, !mcsema_real_eip !52
  %EAX_val.70 = load i32, i32* %EAX.69, !mcsema_real_eip !52
  %252 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !52
  %253 = inttoptr i64 %252 to i32*, !mcsema_real_eip !52
  store i32 %EAX_val.70, i32* %253, !mcsema_real_eip !52
  br label %block_0xd9, !mcsema_real_eip !53

block_0xd9:                                       ; preds = %245, %block_0xa1
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_92, i64 -4
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %254 = ptrtoint i64* %_allin_new_bt_94 to i64, !mcsema_real_eip !53
  %255 = inttoptr i64 %254 to i32*, !mcsema_real_eip !53
  %_ptr_bt_281 = bitcast i32* %255 to i8*
  %_offset_above_rbp_282 = sub i64 %254, %_local_end_to_int_
  %_pot_address_in_parent_stack_283 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_282
  %_cond1_284 = icmp ugt i8* %_ptr_bt_281, %_local_stack_end_ptr_
  %_cond2_1_285 = icmp ugt i8* %_ptr_bt_281, %_parent_stack_end_ptr_
  %_cond2_2_286 = icmp ult i8* %_ptr_bt_281, %_parent_stack_start_ptr_
  %_cond2_287 = or i1 %_cond2_1_285, %_cond2_2_286
  %_cond4_288 = icmp ule i8* %_pot_address_in_parent_stack_283, %_parent_stack_end_ptr_
  %_cond1_n_cond2_289 = and i1 %_cond1_284, %_cond2_287
  %_cond1_n_cond2_cond3_290 = and i1 %_cond1_n_cond2_289, %_cond4_288
  br i1 %_cond1_n_cond2_cond3_290, label %256, label %257

; <label>:256:                                    ; preds = %block_0xd9
  %_address_in_parent_stack_bt_292 = bitcast i8* %_pot_address_in_parent_stack_283 to i32*
  br label %257

; <label>:257:                                    ; preds = %block_0xd9, %256
  %258 = phi i32* [ %255, %block_0xd9 ], [ %_address_in_parent_stack_bt_292, %256 ]
  %_new_load_293 = load i32, i32* %258
  %259 = zext i32 %_new_load_293 to i64, !mcsema_real_eip !53
  store i64 %259, i64* %XAX, !mcsema_real_eip !53
  %_load_rsp_ptr_95 = load i8*, i8** %_RSP_ptr_
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !54
  %_new_gep_96 = getelementptr i8, i8* %_load_rsp_ptr_95, i64 48
  %260 = add i64 48, %RSP_val.72, !mcsema_real_eip !54
  %_trans_p2i_97 = ptrtoint i8* %_new_gep_96 to i64
  %_trans_p2i_98 = ptrtoint i8* %_load_rsp_ptr_95 to i64
  %_trans_xor_99 = xor i64 %_trans_p2i_97, %_trans_p2i_98
  %261 = xor i64 %_trans_xor_99, 48, !mcsema_real_eip !54
  %262 = and i64 %261, 16, !mcsema_real_eip !54
  %263 = icmp ne i64 %262, 0, !mcsema_real_eip !54
  store i1 %263, i1* %AF, !mcsema_real_eip !54
  %264 = lshr i64 %260, 63, !mcsema_real_eip !54
  %265 = trunc i64 %264 to i1, !mcsema_real_eip !54
  store i1 %265, i1* %SF, !mcsema_real_eip !54
  %_trans_icmp_eq_101 = icmp eq i64 %_trans_p2i_97, 0
  store i1 %_trans_icmp_eq_101, i1* %ZF, !mcsema_real_eip !54
  %_trans_xor_103 = xor i64 %_trans_p2i_98, 48
  %266 = xor i64 %_trans_xor_103, -1, !mcsema_real_eip !54
  %267 = and i64 %266, %_trans_xor_99, !mcsema_real_eip !54
  %268 = lshr i64 %267, 63, !mcsema_real_eip !54
  %269 = and i64 %268, 1, !mcsema_real_eip !54
  %270 = trunc i64 %269 to i1, !mcsema_real_eip !54
  store i1 %270, i1* %OF, !mcsema_real_eip !54
  %_trans_trunc_108 = trunc i64 %_trans_p2i_97 to i8
  %271 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_108), !mcsema_real_eip !54
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !54
  %273 = xor i1 %272, true, !mcsema_real_eip !54
  store i1 %273, i1* %PF, !mcsema_real_eip !54
  %_trans_icmp_ne_110 = icmp ne i64 %_trans_p2i_97, %RSP_val.72
  store i1 %_trans_icmp_ne_110, i1* %CF, !mcsema_real_eip !54
  store volatile i8* %_new_gep_96, i8** %_RSP_ptr_
  store i64 %260, i64* %XSP, !mcsema_real_eip !54
  %_allin_new_bt_112 = bitcast i8* %_new_gep_96 to i64*
  %_ptr_to_int_294 = ptrtoint i64* %_allin_new_bt_112 to i64
  %_offset_above_rbp_297 = sub i64 %_ptr_to_int_294, %_local_end_to_int_
  %_pot_address_in_parent_stack_298 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_297
  %_cond1_299 = icmp ugt i8* %_new_gep_96, %_local_stack_end_ptr_
  %_cond2_1_300 = icmp ugt i8* %_new_gep_96, %_parent_stack_end_ptr_
  %_cond2_2_301 = icmp ult i8* %_new_gep_96, %_parent_stack_start_ptr_
  %_cond2_302 = or i1 %_cond2_1_300, %_cond2_2_301
  %_cond4_303 = icmp ule i8* %_pot_address_in_parent_stack_298, %_parent_stack_end_ptr_
  %_cond1_n_cond2_304 = and i1 %_cond1_299, %_cond2_302
  %_cond1_n_cond2_cond3_305 = and i1 %_cond1_n_cond2_304, %_cond4_303
  br i1 %_cond1_n_cond2_cond3_305, label %274, label %275

; <label>:274:                                    ; preds = %257
  %_address_in_parent_stack_bt_307 = bitcast i8* %_pot_address_in_parent_stack_298 to i64*
  br label %275

; <label>:275:                                    ; preds = %257, %274
  %276 = phi i64* [ %_allin_new_bt_112, %257 ], [ %_address_in_parent_stack_bt_307, %274 ]
  %_new_load_308 = load i64, i64* %276
  %_new_int2ptr_ = inttoptr i64 %_new_load_308 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_308, i64* %XBP, !mcsema_real_eip !55
  %_new_gep_113 = getelementptr i8, i8* %_new_gep_96, i64 8
  %277 = add i64 %260, 8, !mcsema_real_eip !55
  store volatile i8* %_new_gep_113, i8** %_RSP_ptr_
  store i64 %277, i64* %XSP, !mcsema_real_eip !55
  %_new_gep_115 = getelementptr i8, i8* %_new_gep_113, i64 8
  %278 = add i64 %277, 8, !mcsema_real_eip !56
  %_allin_new_bt_116 = bitcast i8* %_new_gep_113 to i64*
  %_ptr_to_int_309 = ptrtoint i64* %_allin_new_bt_116 to i64
  %_offset_above_rbp_312 = sub i64 %_ptr_to_int_309, %_local_end_to_int_
  %_pot_address_in_parent_stack_313 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_312
  %_cond1_314 = icmp ugt i8* %_new_gep_113, %_local_stack_end_ptr_
  %_cond2_1_315 = icmp ugt i8* %_new_gep_113, %_parent_stack_end_ptr_
  %_cond2_2_316 = icmp ult i8* %_new_gep_113, %_parent_stack_start_ptr_
  %_cond2_317 = or i1 %_cond2_1_315, %_cond2_2_316
  %_cond4_318 = icmp ule i8* %_pot_address_in_parent_stack_313, %_parent_stack_end_ptr_
  %_cond1_n_cond2_319 = and i1 %_cond1_314, %_cond2_317
  %_cond1_n_cond2_cond3_320 = and i1 %_cond1_n_cond2_319, %_cond4_318
  br i1 %_cond1_n_cond2_cond3_320, label %279, label %280

; <label>:279:                                    ; preds = %275
  %_address_in_parent_stack_bt_322 = bitcast i8* %_pot_address_in_parent_stack_313 to i64*
  br label %280

; <label>:280:                                    ; preds = %275, %279
  %281 = phi i64* [ %_allin_new_bt_116, %275 ], [ %_address_in_parent_stack_bt_322, %279 ]
  %_new_load_323 = load i64, i64* %281
  store i64 %_new_load_323, i64* %XIP, !mcsema_real_eip !56
  store volatile i8* %_new_gep_115, i8** %_RSP_ptr_
  store i64 %278, i64* %XSP, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56

; <label>:282:                                    ; preds = %112
  store i64 %_new_load_188, i64* %XIP, !mcsema_real_eip !24
  call void @__mcsema_detach_call_value()
  %_rsp_fix_117 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_118 = getelementptr i8, i8* %_rsp_fix_117, i64 8
  store i8* %_gep_fix_118, i8** %_RSP_ptr_
  ret void, !mcsema_real_eip !24
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
!22 = !{i64 91}
!23 = !{i64 95}
!24 = !{i64 103}
!25 = !{i64 105}
!26 = !{i64 108}
!27 = !{i64 111}
!28 = !{i64 114}
!29 = !{i64 119}
!30 = !{i64 122}
!31 = !{i64 125}
!32 = !{i64 128}
!33 = !{i64 133}
!34 = !{i64 136}
!35 = !{i64 139}
!36 = !{i64 142}
!37 = !{i64 147}
!38 = !{i64 150}
!39 = !{i64 153}
!40 = !{i64 156}
!41 = !{i64 161}
!42 = !{i64 168}
!43 = !{i64 173}
!44 = !{i64 176}
!45 = !{i64 179}
!46 = !{i64 182}
!47 = !{i64 187}
!48 = !{i64 197}
!49 = !{i64 200}
!50 = !{i64 202}
!51 = !{i64 207}
!52 = !{i64 214}
!53 = !{i64 217}
!54 = !{i64 220}
!55 = !{i64 224}
!56 = !{i64 225}
