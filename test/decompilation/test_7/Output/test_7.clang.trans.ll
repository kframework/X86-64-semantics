; ModuleID = 'Output/test_7.clang.trans.bc'
source_filename = "Output/test_7.clang.bc"
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
module asm "  .globl sub_140;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_140(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x261 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x268 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"9\01\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"!\01\00\00\00A\0E\10\86\02C\0D\06J\83\04\8E\03\00\00\00\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_140(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 192
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 192
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
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
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !2
  br label %block_0x140, !mcsema_real_eip !2

block_0x140:                                      ; preds = %entry
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
  %R14_val.3 = load i64, i64* %R14, !mcsema_real_eip !4
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R14_val.3, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %RBX_val.5 = load i64, i64* %XBX, !mcsema_real_eip !5
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_3, i64 -8
  %3 = sub i64 %2, 8, !mcsema_real_eip !5
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %RBX_val.5, i64* %_allin_new_bt_7, !mcsema_real_eip !5
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_
  store i64 %3, i64* %XSP, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_6, i64 -160
  %4 = sub i64 %3, 160, !mcsema_real_eip !6
  %_trans_p2i_ = ptrtoint i8* %_new_gep_9 to i64
  %_trans_p2i_10 = ptrtoint i8* %_new_gep_6 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_10
  %5 = xor i64 %_trans_xor_, 160, !mcsema_real_eip !6
  %6 = and i64 %5, 16, !mcsema_real_eip !6
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !6
  store i1 %7, i1* %AF, !mcsema_real_eip !6
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %8 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !6
  %9 = trunc i8 %8 to i1, !mcsema_real_eip !6
  %10 = xor i1 %9, true, !mcsema_real_eip !6
  store i1 %10, i1* %PF, !mcsema_real_eip !6
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !6
  %11 = lshr i64 %4, 63, !mcsema_real_eip !6
  %12 = trunc i64 %11 to i1, !mcsema_real_eip !6
  store i1 %12, i1* %SF, !mcsema_real_eip !6
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_10, 160
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !6
  %_trans_xor_15 = xor i64 %_trans_p2i_10, 160
  %13 = and i64 %_trans_xor_15, %_trans_xor_, !mcsema_real_eip !6
  %14 = lshr i64 %13, 63, !mcsema_real_eip !6
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !6
  store i1 %15, i1* %OF, !mcsema_real_eip !6
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_
  store i64 %4, i64* %XSP, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -20
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %17, !mcsema_real_eip !7
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  store i32 1, i32* %19, !mcsema_real_eip !8
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -68
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !9
  store i32 0, i32* %21, !mcsema_real_eip !9
  br label %block_0x163, !mcsema_real_eip !10

block_0x163:                                      ; preds = %block_0x16d, %block_0x140
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -68
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %22 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !10
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !10
  %24 = load i32, i32* %23, !mcsema_real_eip !10
  %25 = sub i32 %24, 10, !mcsema_real_eip !10
  %26 = xor i32 %25, %24, !mcsema_real_eip !10
  %27 = xor i32 %26, 10, !mcsema_real_eip !10
  %28 = and i32 %27, 16, !mcsema_real_eip !10
  %29 = icmp ne i32 %28, 0, !mcsema_real_eip !10
  store i1 %29, i1* %AF, !mcsema_real_eip !10
  %30 = trunc i32 %25 to i8, !mcsema_real_eip !10
  %31 = call i8 @llvm.ctpop.i8(i8 %30), !mcsema_real_eip !10
  %32 = trunc i8 %31 to i1, !mcsema_real_eip !10
  %33 = xor i1 %32, true, !mcsema_real_eip !10
  store i1 %33, i1* %PF, !mcsema_real_eip !10
  %34 = icmp eq i32 %25, 0, !mcsema_real_eip !10
  store i1 %34, i1* %ZF, !mcsema_real_eip !10
  %35 = lshr i32 %25, 31, !mcsema_real_eip !10
  %36 = trunc i32 %35 to i1, !mcsema_real_eip !10
  store i1 %36, i1* %SF, !mcsema_real_eip !10
  %37 = icmp ult i32 %24, 10, !mcsema_real_eip !10
  store i1 %37, i1* %CF, !mcsema_real_eip !10
  %38 = xor i32 %24, 10, !mcsema_real_eip !10
  %39 = and i32 %38, %26, !mcsema_real_eip !10
  %40 = lshr i32 %39, 31, !mcsema_real_eip !10
  %41 = trunc i32 %40 to i1, !mcsema_real_eip !10
  store i1 %41, i1* %OF, !mcsema_real_eip !10
  %42 = icmp eq i1 %36, %41, !mcsema_real_eip !11
  br i1 %42, label %block_0x189, label %block_0x16d, !mcsema_real_eip !11

block_0x16d:                                      ; preds = %block_0x163
  %43 = load i32, i32* %23, !mcsema_real_eip !12
  %44 = zext i32 %43 to i64, !mcsema_real_eip !12
  store i64 %44, i64* %XAX, !mcsema_real_eip !12
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !13
  %45 = add i32 1, %EAX_val.24, !mcsema_real_eip !13
  %46 = xor i32 %45, %EAX_val.24, !mcsema_real_eip !13
  %47 = xor i32 %46, 1, !mcsema_real_eip !13
  %48 = and i32 %47, 16, !mcsema_real_eip !13
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !13
  store i1 %49, i1* %AF, !mcsema_real_eip !13
  %50 = lshr i32 %45, 31, !mcsema_real_eip !13
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !13
  store i1 %51, i1* %SF, !mcsema_real_eip !13
  %52 = icmp eq i32 %45, 0, !mcsema_real_eip !13
  store i1 %52, i1* %ZF, !mcsema_real_eip !13
  %53 = xor i32 %EAX_val.24, 1, !mcsema_real_eip !13
  %54 = xor i32 %53, -1, !mcsema_real_eip !13
  %55 = and i32 %54, %46, !mcsema_real_eip !13
  %56 = lshr i32 %55, 31, !mcsema_real_eip !13
  %57 = and i32 %56, 1, !mcsema_real_eip !13
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !13
  store i1 %58, i1* %OF, !mcsema_real_eip !13
  %59 = trunc i32 %45 to i8, !mcsema_real_eip !13
  %60 = call i8 @llvm.ctpop.i8(i8 %59), !mcsema_real_eip !13
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !13
  %62 = xor i1 %61, true, !mcsema_real_eip !13
  store i1 %62, i1* %PF, !mcsema_real_eip !13
  %63 = icmp ult i32 %45, %EAX_val.24, !mcsema_real_eip !13
  store i1 %63, i1* %CF, !mcsema_real_eip !13
  %64 = zext i32 %45 to i64, !mcsema_real_eip !13
  store i64 %64, i64* %XAX, !mcsema_real_eip !13
  %65 = load i32, i32* %23, !mcsema_real_eip !14
  %66 = sext i32 %65 to i64, !mcsema_real_eip !14
  store i64 %66, i64* %XCX, !mcsema_real_eip !14
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -64
  %67 = mul i64 %66, 4, !mcsema_real_eip !15
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_38, i64 %67
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %EAX_val.29 = load i32, i32* %EAX.23, !mcsema_real_eip !15
  %68 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !15
  %69 = inttoptr i64 %68 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.29, i32* %69, !mcsema_real_eip !15
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -68
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %70 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !16
  %71 = inttoptr i64 %70 to i32*, !mcsema_real_eip !16
  %72 = load i32, i32* %71, !mcsema_real_eip !16
  %73 = zext i32 %72 to i64, !mcsema_real_eip !16
  store i64 %73, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.32 = load i32, i32* %EAX.23, !mcsema_real_eip !17
  %74 = add i32 1, %EAX_val.32, !mcsema_real_eip !17
  %75 = xor i32 %74, %EAX_val.32, !mcsema_real_eip !17
  %76 = xor i32 %75, 1, !mcsema_real_eip !17
  %77 = and i32 %76, 16, !mcsema_real_eip !17
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !17
  store i1 %78, i1* %AF, !mcsema_real_eip !17
  %79 = lshr i32 %74, 31, !mcsema_real_eip !17
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !17
  store i1 %80, i1* %SF, !mcsema_real_eip !17
  %81 = icmp eq i32 %74, 0, !mcsema_real_eip !17
  store i1 %81, i1* %ZF, !mcsema_real_eip !17
  %82 = xor i32 %EAX_val.32, 1, !mcsema_real_eip !17
  %83 = xor i32 %82, -1, !mcsema_real_eip !17
  %84 = and i32 %83, %75, !mcsema_real_eip !17
  %85 = lshr i32 %84, 31, !mcsema_real_eip !17
  %86 = and i32 %85, 1, !mcsema_real_eip !17
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !17
  store i1 %87, i1* %OF, !mcsema_real_eip !17
  %88 = trunc i32 %74 to i8, !mcsema_real_eip !17
  %89 = call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !17
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !17
  %91 = xor i1 %90, true, !mcsema_real_eip !17
  store i1 %91, i1* %PF, !mcsema_real_eip !17
  %92 = icmp ult i32 %74, %EAX_val.32, !mcsema_real_eip !17
  store i1 %92, i1* %CF, !mcsema_real_eip !17
  %93 = zext i32 %74 to i64, !mcsema_real_eip !17
  store i64 %93, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.35 = load i32, i32* %EAX.23, !mcsema_real_eip !18
  store i32 %EAX_val.35, i32* %71, !mcsema_real_eip !18
  br label %block_0x163, !mcsema_real_eip !19

block_0x189:                                      ; preds = %block_0x163
  store i64 40, i64* %XAX, !mcsema_real_eip !20
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !21
  %94 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !21
  store i64 %94, i64* %XDI, !mcsema_real_eip !21
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %95 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !22
  store i64 %95, i64* %XCX, !mcsema_real_eip !22
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -80
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  store i64 %95, i64* %_allin_new_bt_52, !mcsema_real_eip !23
  %RDI_val.17 = load i64, i64* %XDI, !mcsema_real_eip !24
  %_load_rsp_ptr_53 = load i8*, i8** %_RSP_ptr_
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !24
  %_new_gep_54 = getelementptr i8, i8* %_load_rsp_ptr_53, i64 -8
  %96 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !24
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_55, !mcsema_real_eip !24
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_
  store i64 %96, i64* %XSP, !mcsema_real_eip !24
  %97 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.17)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %97, i64* %XAX, !mcsema_real_eip !24
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -88
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  store i64 %97, i64* %_allin_new_bt_58, !mcsema_real_eip !25
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -92
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %98 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !26
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !26
  store i32 0, i32* %99, !mcsema_real_eip !26
  br label %block_0x1a8, !mcsema_real_eip !12

block_0x1a8:                                      ; preds = %block_0x1b2, %block_0x189
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -92
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %100 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !27
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !27
  %102 = load i32, i32* %101, !mcsema_real_eip !27
  %103 = sub i32 %102, 10, !mcsema_real_eip !27
  %104 = xor i32 %103, %102, !mcsema_real_eip !27
  %105 = xor i32 %104, 10, !mcsema_real_eip !27
  %106 = and i32 %105, 16, !mcsema_real_eip !27
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !27
  store i1 %107, i1* %AF, !mcsema_real_eip !27
  %108 = trunc i32 %103 to i8, !mcsema_real_eip !27
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !27
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !27
  %111 = xor i1 %110, true, !mcsema_real_eip !27
  store i1 %111, i1* %PF, !mcsema_real_eip !27
  %112 = icmp eq i32 %103, 0, !mcsema_real_eip !27
  store i1 %112, i1* %ZF, !mcsema_real_eip !27
  %113 = lshr i32 %103, 31, !mcsema_real_eip !27
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !27
  store i1 %114, i1* %SF, !mcsema_real_eip !27
  %115 = icmp ult i32 %102, 10, !mcsema_real_eip !27
  store i1 %115, i1* %CF, !mcsema_real_eip !27
  %116 = xor i32 %102, 10, !mcsema_real_eip !27
  %117 = and i32 %116, %104, !mcsema_real_eip !27
  %118 = lshr i32 %117, 31, !mcsema_real_eip !27
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !27
  store i1 %119, i1* %OF, !mcsema_real_eip !27
  %120 = icmp eq i1 %114, %119, !mcsema_real_eip !28
  br i1 %120, label %block_0x1d1, label %block_0x1b2, !mcsema_real_eip !28

block_0x1b2:                                      ; preds = %block_0x1a8
  %121 = load i32, i32* %101, !mcsema_real_eip !29
  %122 = zext i32 %121 to i64, !mcsema_real_eip !29
  store i64 %122, i64* %XAX, !mcsema_real_eip !29
  %EAX_val.99 = load i32, i32* %EAX.12, !mcsema_real_eip !30
  %123 = add i32 1, %EAX_val.99, !mcsema_real_eip !30
  %124 = xor i32 %123, %EAX_val.99, !mcsema_real_eip !30
  %125 = xor i32 %124, 1, !mcsema_real_eip !30
  %126 = and i32 %125, 16, !mcsema_real_eip !30
  %127 = icmp ne i32 %126, 0, !mcsema_real_eip !30
  store i1 %127, i1* %AF, !mcsema_real_eip !30
  %128 = lshr i32 %123, 31, !mcsema_real_eip !30
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !30
  store i1 %129, i1* %SF, !mcsema_real_eip !30
  %130 = icmp eq i32 %123, 0, !mcsema_real_eip !30
  store i1 %130, i1* %ZF, !mcsema_real_eip !30
  %131 = xor i32 %EAX_val.99, 1, !mcsema_real_eip !30
  %132 = xor i32 %131, -1, !mcsema_real_eip !30
  %133 = and i32 %132, %124, !mcsema_real_eip !30
  %134 = lshr i32 %133, 31, !mcsema_real_eip !30
  %135 = and i32 %134, 1, !mcsema_real_eip !30
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !30
  store i1 %136, i1* %OF, !mcsema_real_eip !30
  %137 = trunc i32 %123 to i8, !mcsema_real_eip !30
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !30
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !30
  %140 = xor i1 %139, true, !mcsema_real_eip !30
  store i1 %140, i1* %PF, !mcsema_real_eip !30
  %141 = icmp ult i32 %123, %EAX_val.99, !mcsema_real_eip !30
  store i1 %141, i1* %CF, !mcsema_real_eip !30
  %142 = zext i32 %123 to i64, !mcsema_real_eip !30
  store i64 %142, i64* %XAX, !mcsema_real_eip !30
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -88
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %143 = load i64, i64* %_allin_new_bt_70, !mcsema_real_eip !31
  store i64 %143, i64* %XCX, !mcsema_real_eip !31
  %144 = load i32, i32* %101, !mcsema_real_eip !32
  %145 = sext i32 %144 to i64, !mcsema_real_eip !32
  store i64 %145, i64* %XDX, !mcsema_real_eip !32
  %146 = mul i64 %145, 4, !mcsema_real_eip !33
  %147 = add i64 %143, %146, !mcsema_real_eip !33
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !33
  %EAX_val.105 = load i32, i32* %EAX.12, !mcsema_real_eip !33
  %149 = inttoptr i64 %147 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.105, i32* %149, !mcsema_real_eip !33
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -92
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %150 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !34
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !34
  %152 = load i32, i32* %151, !mcsema_real_eip !34
  %153 = zext i32 %152 to i64, !mcsema_real_eip !34
  store i64 %153, i64* %XAX, !mcsema_real_eip !34
  %EAX_val.108 = load i32, i32* %EAX.12, !mcsema_real_eip !35
  %154 = add i32 1, %EAX_val.108, !mcsema_real_eip !35
  %155 = xor i32 %154, %EAX_val.108, !mcsema_real_eip !35
  %156 = xor i32 %155, 1, !mcsema_real_eip !35
  %157 = and i32 %156, 16, !mcsema_real_eip !35
  %158 = icmp ne i32 %157, 0, !mcsema_real_eip !35
  store i1 %158, i1* %AF, !mcsema_real_eip !35
  %159 = lshr i32 %154, 31, !mcsema_real_eip !35
  %160 = trunc i32 %159 to i1, !mcsema_real_eip !35
  store i1 %160, i1* %SF, !mcsema_real_eip !35
  %161 = icmp eq i32 %154, 0, !mcsema_real_eip !35
  store i1 %161, i1* %ZF, !mcsema_real_eip !35
  %162 = xor i32 %EAX_val.108, 1, !mcsema_real_eip !35
  %163 = xor i32 %162, -1, !mcsema_real_eip !35
  %164 = and i32 %163, %155, !mcsema_real_eip !35
  %165 = lshr i32 %164, 31, !mcsema_real_eip !35
  %166 = and i32 %165, 1, !mcsema_real_eip !35
  %167 = trunc i32 %166 to i1, !mcsema_real_eip !35
  store i1 %167, i1* %OF, !mcsema_real_eip !35
  %168 = trunc i32 %154 to i8, !mcsema_real_eip !35
  %169 = call i8 @llvm.ctpop.i8(i8 %168), !mcsema_real_eip !35
  %170 = trunc i8 %169 to i1, !mcsema_real_eip !35
  %171 = xor i1 %170, true, !mcsema_real_eip !35
  store i1 %171, i1* %PF, !mcsema_real_eip !35
  %172 = icmp ult i32 %154, %EAX_val.108, !mcsema_real_eip !35
  store i1 %172, i1* %CF, !mcsema_real_eip !35
  %173 = zext i32 %154 to i64, !mcsema_real_eip !35
  store i64 %173, i64* %XAX, !mcsema_real_eip !35
  %EAX_val.111 = load i32, i32* %EAX.12, !mcsema_real_eip !36
  store i32 %EAX_val.111, i32* %151, !mcsema_real_eip !36
  br label %block_0x1a8, !mcsema_real_eip !37

block_0x1d1:                                      ; preds = %block_0x1a8
  store i64 10, i64* %XAX, !mcsema_real_eip !38
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -64
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %174 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !39
  store i64 %174, i64* %XCX, !mcsema_real_eip !39
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -24
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %175 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !40
  %176 = inttoptr i64 %175 to i32*, !mcsema_real_eip !40
  %177 = load i32, i32* %176, !mcsema_real_eip !40
  %178 = zext i32 %177 to i64, !mcsema_real_eip !40
  store i64 %178, i64* %XDI, !mcsema_real_eip !40
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -80
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %179 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !41
  store i64 %179, i64* %XDX, !mcsema_real_eip !41
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -88
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %180 = load i64, i64* %_allin_new_bt_91, !mcsema_real_eip !42
  store i64 %180, i64* %XSI, !mcsema_real_eip !42
  %181 = load i32, i32* %176, !mcsema_real_eip !43
  %182 = zext i32 %181 to i64, !mcsema_real_eip !43
  store i64 %182, i64* %R8, !mcsema_real_eip !43
  %183 = load i64, i64* %_allin_new_bt_88, !mcsema_real_eip !44
  store i64 %183, i64* %R9, !mcsema_real_eip !44
  %184 = load i64, i64* %_allin_new_bt_91, !mcsema_real_eip !45
  store i64 %184, i64* %R10, !mcsema_real_eip !45
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -104
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  store i64 %180, i64* %_allin_new_bt_103, !mcsema_real_eip !46
  %RCX_val.46 = load i64, i64* %XCX, !mcsema_real_eip !47
  store i64 %RCX_val.46, i64* %XSI, !mcsema_real_eip !47
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -104
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %185 = load i64, i64* %_allin_new_bt_106, !mcsema_real_eip !48
  store i64 %185, i64* %R11, !mcsema_real_eip !48
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -112
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  store i64 %RCX_val.46, i64* %_allin_new_bt_109, !mcsema_real_eip !49
  %R11_val.50 = load i64, i64* %R11, !mcsema_real_eip !50
  store i64 %R11_val.50, i64* %XCX, !mcsema_real_eip !50
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -116
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %R8D.52 = bitcast i64* %R8 to i32*, !mcsema_real_eip !51
  %R8D_val.53 = load i32, i32* %R8D.52, !mcsema_real_eip !51
  %186 = ptrtoint i64* %_allin_new_bt_112 to i64, !mcsema_real_eip !51
  %187 = inttoptr i64 %186 to i32*, !mcsema_real_eip !51
  store i32 %R8D_val.53, i32* %187, !mcsema_real_eip !51
  %EAX_val.55 = load i32, i32* %EAX.12, !mcsema_real_eip !52
  %188 = zext i32 %EAX_val.55 to i64, !mcsema_real_eip !52
  store i64 %188, i64* %R8, !mcsema_real_eip !52
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -128
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %R9_val.57 = load i64, i64* %R9, !mcsema_real_eip !53
  store i64 %R9_val.57, i64* %_allin_new_bt_115, !mcsema_real_eip !53
  %EAX_val.59 = load i32, i32* %EAX.12, !mcsema_real_eip !54
  %189 = zext i32 %EAX_val.59 to i64, !mcsema_real_eip !54
  store i64 %189, i64* %R9, !mcsema_real_eip !54
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -116
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %190 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !55
  %191 = inttoptr i64 %190 to i32*, !mcsema_real_eip !55
  %192 = load i32, i32* %191, !mcsema_real_eip !55
  %193 = zext i32 %192 to i64, !mcsema_real_eip !55
  store i64 %193, i64* %XAX, !mcsema_real_eip !55
  %_load_rsp_ptr_119 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_121 = bitcast i8* %_load_rsp_ptr_119 to i64*
  %EAX_val.63 = load i32, i32* %EAX.12, !mcsema_real_eip !56
  %194 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !56
  %195 = inttoptr i64 %194 to i32*, !mcsema_real_eip !56
  store i32 %EAX_val.63, i32* %195, !mcsema_real_eip !56
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -112
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %196 = load i64, i64* %_allin_new_bt_124, !mcsema_real_eip !57
  store i64 %196, i64* %XBX, !mcsema_real_eip !57
  %_load_rsp_ptr_125 = load i8*, i8** %_RSP_ptr_
  %_new_gep_126 = getelementptr i8, i8* %_load_rsp_ptr_125, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  store i64 %196, i64* %_allin_new_bt_127, !mcsema_real_eip !58
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -128
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %197 = load i64, i64* %_allin_new_bt_130, !mcsema_real_eip !59
  store i64 %197, i64* %R14, !mcsema_real_eip !59
  %_load_rsp_ptr_131 = load i8*, i8** %_RSP_ptr_
  %_new_gep_132 = getelementptr i8, i8* %_load_rsp_ptr_131, i64 16
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 %197, i64* %_allin_new_bt_133, !mcsema_real_eip !60
  %_load_rsp_ptr_134 = load i8*, i8** %_RSP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rsp_ptr_134, i64 24
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %R10_val.71 = load i64, i64* %R10, !mcsema_real_eip !61
  store i64 %R10_val.71, i64* %_allin_new_bt_136, !mcsema_real_eip !61
  %_load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !62
  %_new_gep_138 = getelementptr i8, i8* %_load_rsp_ptr_137, i64 -8
  %198 = sub i64 %RSP_val.72, 8, !mcsema_real_eip !62
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_139, !mcsema_real_eip !62
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_
  store i64 %198, i64* %XSP, !mcsema_real_eip !62
  %_load_rbp_ptr_195 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_138, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_195)
  %_rsp_fix_197 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_198 = getelementptr i8, i8* %_rsp_fix_197, i64 8
  store i8* %_gep_fix_198, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x261 to i64), i64* %XDI, !mcsema_real_eip !63
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -96
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %EAX_val.75 = load i32, i32* %EAX.12, !mcsema_real_eip !64
  %199 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !64
  %200 = inttoptr i64 %199 to i32*, !mcsema_real_eip !64
  store i32 %EAX_val.75, i32* %200, !mcsema_real_eip !64
  %_load_rbp_ptr_143 = load i8*, i8** %_RBP_ptr_
  %_new_gep_144 = getelementptr i8, i8* %_load_rbp_ptr_143, i64 -96
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %201 = ptrtoint i64* %_allin_new_bt_145 to i64, !mcsema_real_eip !65
  %202 = inttoptr i64 %201 to i32*, !mcsema_real_eip !65
  %203 = load i32, i32* %202, !mcsema_real_eip !65
  %204 = zext i32 %203 to i64, !mcsema_real_eip !65
  store i64 %204, i64* %XSI, !mcsema_real_eip !65
  %AL.77 = bitcast i64* %XAX to i8*, !mcsema_real_eip !66
  store i8 0, i8* %AL.77, !mcsema_real_eip !66
  %RDI_val.78 = load i64, i64* %XDI, !mcsema_real_eip !67
  %RDX_val.80 = load i64, i64* %XDX, !mcsema_real_eip !67
  %RCX_val.81 = load i64, i64* %XCX, !mcsema_real_eip !67
  %R8_val.82 = load i64, i64* %R8, !mcsema_real_eip !67
  %R9_val.83 = load i64, i64* %R9, !mcsema_real_eip !67
  %_load_rsp_ptr_146 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_147 = bitcast i8* %_load_rsp_ptr_146 to i64*
  %205 = load i64, i64* %_allin_new_bt_147, !mcsema_real_eip !67
  %_new_gep_148 = getelementptr i8, i8* %_load_rsp_ptr_146, i64 8
  %_allin_new_bt_149 = bitcast i8* %_new_gep_148 to i64*
  %206 = load i64, i64* %_allin_new_bt_149, !mcsema_real_eip !67
  %_new_gep_150 = getelementptr i8, i8* %_new_gep_148, i64 8
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  %207 = load i64, i64* %_allin_new_bt_151, !mcsema_real_eip !67
  %_new_gep_152 = getelementptr i8, i8* %_new_gep_150, i64 8
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %208 = load i64, i64* %_allin_new_bt_153, !mcsema_real_eip !67
  %_new_gep_154 = getelementptr i8, i8* %_new_gep_152, i64 8
  %_allin_new_bt_155 = bitcast i8* %_new_gep_154 to i64*
  %209 = load i64, i64* %_allin_new_bt_155, !mcsema_real_eip !67
  %_new_gep_156 = getelementptr i8, i8* %_new_gep_154, i64 8
  %_allin_new_bt_157 = bitcast i8* %_new_gep_156 to i64*
  %210 = load i64, i64* %_allin_new_bt_157, !mcsema_real_eip !67
  %RSP_val.85 = load i64, i64* %XSP, !mcsema_real_eip !67
  %_new_gep_159 = getelementptr i8, i8* %_load_rsp_ptr_146, i64 -8
  %211 = sub i64 %RSP_val.85, 8, !mcsema_real_eip !67
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_160, !mcsema_real_eip !67
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_
  store i64 %211, i64* %XSP, !mcsema_real_eip !67
  %212 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.78, i64 %204, i64 %RDX_val.80, i64 %RCX_val.81, i64 %R8_val.82, i64 %R9_val.83, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210)
  %_rsp_fix_199 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_200 = getelementptr i8, i8* %_rsp_fix_199, i64 8
  store i8* %_gep_fix_200, i8** %_RSP_ptr_
  store i64 %212, i64* %XAX, !mcsema_real_eip !67
  %_load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_
  %_new_gep_162 = getelementptr i8, i8* %_load_rbp_ptr_161, i64 -96
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %213 = ptrtoint i64* %_allin_new_bt_163 to i64, !mcsema_real_eip !68
  %214 = inttoptr i64 %213 to i32*, !mcsema_real_eip !68
  %215 = load i32, i32* %214, !mcsema_real_eip !68
  %216 = zext i32 %215 to i64, !mcsema_real_eip !68
  store i64 %216, i64* %XSI, !mcsema_real_eip !68
  %_new_gep_165 = getelementptr i8, i8* %_load_rbp_ptr_161, i64 -132
  %_allin_new_bt_166 = bitcast i8* %_new_gep_165 to i64*
  %EAX_val.89 = load i32, i32* %EAX.12, !mcsema_real_eip !69
  %217 = ptrtoint i64* %_allin_new_bt_166 to i64, !mcsema_real_eip !69
  %218 = inttoptr i64 %217 to i32*, !mcsema_real_eip !69
  store i32 %EAX_val.89, i32* %218, !mcsema_real_eip !69
  %ESI.90 = bitcast i64* %XSI to i32*, !mcsema_real_eip !70
  %ESI_val.91 = load i32, i32* %ESI.90, !mcsema_real_eip !70
  %219 = zext i32 %ESI_val.91 to i64, !mcsema_real_eip !70
  store i64 %219, i64* %XAX, !mcsema_real_eip !70
  %_load_rsp_ptr_167 = load i8*, i8** %_RSP_ptr_
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !71
  %_new_gep_168 = getelementptr i8, i8* %_load_rsp_ptr_167, i64 160
  %220 = add i64 160, %RSP_val.92, !mcsema_real_eip !71
  %_trans_p2i_169 = ptrtoint i8* %_new_gep_168 to i64
  %_trans_p2i_170 = ptrtoint i8* %_load_rsp_ptr_167 to i64
  %_trans_xor_171 = xor i64 %_trans_p2i_169, %_trans_p2i_170
  %221 = xor i64 %_trans_xor_171, 160, !mcsema_real_eip !71
  %222 = and i64 %221, 16, !mcsema_real_eip !71
  %223 = icmp ne i64 %222, 0, !mcsema_real_eip !71
  store i1 %223, i1* %AF, !mcsema_real_eip !71
  %224 = lshr i64 %220, 63, !mcsema_real_eip !71
  %225 = trunc i64 %224 to i1, !mcsema_real_eip !71
  store i1 %225, i1* %SF, !mcsema_real_eip !71
  %_trans_icmp_eq_173 = icmp eq i64 %_trans_p2i_169, 0
  store i1 %_trans_icmp_eq_173, i1* %ZF, !mcsema_real_eip !71
  %_trans_xor_175 = xor i64 %_trans_p2i_170, 160
  %226 = xor i64 %_trans_xor_175, -1, !mcsema_real_eip !71
  %227 = and i64 %226, %_trans_xor_171, !mcsema_real_eip !71
  %228 = lshr i64 %227, 63, !mcsema_real_eip !71
  %229 = and i64 %228, 1, !mcsema_real_eip !71
  %230 = trunc i64 %229 to i1, !mcsema_real_eip !71
  store i1 %230, i1* %OF, !mcsema_real_eip !71
  %_trans_trunc_180 = trunc i64 %_trans_p2i_169 to i8
  %231 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_180), !mcsema_real_eip !71
  %232 = trunc i8 %231 to i1, !mcsema_real_eip !71
  %233 = xor i1 %232, true, !mcsema_real_eip !71
  store i1 %233, i1* %PF, !mcsema_real_eip !71
  %_trans_icmp_ne_182 = icmp ne i64 %_trans_p2i_169, %RSP_val.92
  store i1 %_trans_icmp_ne_182, i1* %CF, !mcsema_real_eip !71
  store volatile i8* %_new_gep_168, i8** %_RSP_ptr_
  store i64 %220, i64* %XSP, !mcsema_real_eip !71
  %_allin_new_bt_184 = bitcast i8* %_new_gep_168 to i64*
  %234 = load i64, i64* %_allin_new_bt_184, !mcsema_real_eip !72
  store i64 %234, i64* %XBX, !mcsema_real_eip !72
  %_new_gep_185 = getelementptr i8, i8* %_new_gep_168, i64 8
  %235 = add i64 %220, 8, !mcsema_real_eip !72
  store volatile i8* %_new_gep_185, i8** %_RSP_ptr_
  store i64 %235, i64* %XSP, !mcsema_real_eip !72
  %_allin_new_bt_187 = bitcast i8* %_new_gep_185 to i64*
  %236 = load i64, i64* %_allin_new_bt_187, !mcsema_real_eip !73
  store i64 %236, i64* %R14, !mcsema_real_eip !73
  %_new_gep_188 = getelementptr i8, i8* %_new_gep_185, i64 8
  %237 = add i64 %235, 8, !mcsema_real_eip !73
  store volatile i8* %_new_gep_188, i8** %_RSP_ptr_
  store i64 %237, i64* %XSP, !mcsema_real_eip !73
  %_allin_new_bt_190 = bitcast i8* %_new_gep_188 to i64*
  %238 = load i64, i64* %_allin_new_bt_190, !mcsema_real_eip !74
  %_new_int2ptr_ = inttoptr i64 %238 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %238, i64* %XBP, !mcsema_real_eip !74
  %_new_gep_191 = getelementptr i8, i8* %_new_gep_188, i64 8
  %239 = add i64 %237, 8, !mcsema_real_eip !74
  store volatile i8* %_new_gep_191, i8** %_RSP_ptr_
  store i64 %239, i64* %XSP, !mcsema_real_eip !74
  %_new_gep_193 = getelementptr i8, i8* %_new_gep_191, i64 8
  %240 = add i64 %239, 8, !mcsema_real_eip !75
  %_allin_new_bt_194 = bitcast i8* %_new_gep_191 to i64*
  %241 = load i64, i64* %_allin_new_bt_194, !mcsema_real_eip !75
  store i64 %241, i64* %XIP, !mcsema_real_eip !75
  store volatile i8* %_new_gep_193, i8** %_RSP_ptr_
  store i64 %240, i64* %XSP, !mcsema_real_eip !75
  ret void, !mcsema_real_eip !75
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !76
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !76
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !76
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !76
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !76
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !76
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !76
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !76
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !76
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !76
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !76
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !76
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !76
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !76
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !76
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !76
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !76
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !76
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !76
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !76
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !76
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !76
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !76
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !76
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !76
  br label %block_0x0, !mcsema_real_eip !76

block_0x0:                                        ; preds = %entry
  %RBP_val.112 = load i64, i64* %XBP, !mcsema_real_eip !76
  %RSP_val.113 = load i64, i64* %XSP, !mcsema_real_eip !76
  %1 = sub i64 %RSP_val.113, 8, !mcsema_real_eip !76
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !76
  store i64 %RBP_val.112, i64* %2, !mcsema_real_eip !76
  store i64 %1, i64* %XSP, !mcsema_real_eip !76
  store i64 %1, i64* %XBP, !mcsema_real_eip !77
  %RBX_val.115 = load i64, i64* %XBX, !mcsema_real_eip !78
  %3 = sub i64 %1, 8, !mcsema_real_eip !78
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !78
  store i64 %RBX_val.115, i64* %4, !mcsema_real_eip !78
  store i64 %3, i64* %XSP, !mcsema_real_eip !78
  %RBP_val.117 = load i64, i64* %XBP, !mcsema_real_eip !79
  %5 = add i64 %RBP_val.117, 40, !mcsema_real_eip !79
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !79
  %7 = load i64, i64* %6, !mcsema_real_eip !79
  store i64 %7, i64* %XAX, !mcsema_real_eip !79
  %8 = add i64 %RBP_val.117, 32, !mcsema_real_eip !80
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !80
  %10 = load i64, i64* %9, !mcsema_real_eip !80
  store i64 %10, i64* %R10, !mcsema_real_eip !80
  %11 = add i64 %RBP_val.117, 24, !mcsema_real_eip !81
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !81
  %13 = load i64, i64* %12, !mcsema_real_eip !81
  store i64 %13, i64* %R11, !mcsema_real_eip !81
  %14 = add i64 %RBP_val.117, 16, !mcsema_real_eip !82
  %15 = inttoptr i64 %14 to i64*, !mcsema_real_eip !82
  %16 = inttoptr i64 %14 to i32*, !mcsema_real_eip !82
  %17 = load i32, i32* %16, !mcsema_real_eip !82
  %18 = zext i32 %17 to i64, !mcsema_real_eip !82
  store i64 %18, i64* %XBX, !mcsema_real_eip !82
  %19 = add i64 %RBP_val.117, -12, !mcsema_real_eip !83
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !83
  %EDI.122 = bitcast i64* %XDI to i32*, !mcsema_real_eip !83
  %EDI_val.123 = load i32, i32* %EDI.122, !mcsema_real_eip !83
  %21 = inttoptr i64 %19 to i32*, !mcsema_real_eip !83
  store i32 %EDI_val.123, i32* %21, !mcsema_real_eip !83
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !84
  %22 = add i64 %RBP_val.124, -24, !mcsema_real_eip !84
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !84
  %RSI_val.125 = load i64, i64* %XSI, !mcsema_real_eip !84
  store i64 %RSI_val.125, i64* %23, !mcsema_real_eip !84
  %RBP_val.126 = load i64, i64* %XBP, !mcsema_real_eip !85
  %24 = add i64 %RBP_val.126, -32, !mcsema_real_eip !85
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !85
  %RDX_val.127 = load i64, i64* %XDX, !mcsema_real_eip !85
  store i64 %RDX_val.127, i64* %25, !mcsema_real_eip !85
  %RBP_val.128 = load i64, i64* %XBP, !mcsema_real_eip !86
  %26 = add i64 %RBP_val.128, -40, !mcsema_real_eip !86
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !86
  %RCX_val.129 = load i64, i64* %XCX, !mcsema_real_eip !86
  store i64 %RCX_val.129, i64* %27, !mcsema_real_eip !86
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !87
  %28 = add i64 %RBP_val.130, -44, !mcsema_real_eip !87
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !87
  %R8D.131 = bitcast i64* %R8 to i32*, !mcsema_real_eip !87
  %R8D_val.132 = load i32, i32* %R8D.131, !mcsema_real_eip !87
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !87
  store i32 %R8D_val.132, i32* %30, !mcsema_real_eip !87
  %RBP_val.133 = load i64, i64* %XBP, !mcsema_real_eip !88
  %31 = add i64 %RBP_val.133, -48, !mcsema_real_eip !88
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !88
  %R9D.134 = bitcast i64* %R9 to i32*, !mcsema_real_eip !88
  %R9D_val.135 = load i32, i32* %R9D.134, !mcsema_real_eip !88
  %33 = inttoptr i64 %31 to i32*, !mcsema_real_eip !88
  store i32 %R9D_val.135, i32* %33, !mcsema_real_eip !88
  %RBP_val.136 = load i64, i64* %XBP, !mcsema_real_eip !89
  %34 = add i64 %RBP_val.136, -52, !mcsema_real_eip !89
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !89
  %EBX.137 = bitcast i64* %XBX to i32*, !mcsema_real_eip !89
  %EBX_val.138 = load i32, i32* %EBX.137, !mcsema_real_eip !89
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !89
  store i32 %EBX_val.138, i32* %36, !mcsema_real_eip !89
  %RBP_val.139 = load i64, i64* %XBP, !mcsema_real_eip !90
  %37 = add i64 %RBP_val.139, -64, !mcsema_real_eip !90
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !90
  %R11_val.140 = load i64, i64* %R11, !mcsema_real_eip !90
  store i64 %R11_val.140, i64* %38, !mcsema_real_eip !90
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !91
  %39 = add i64 %RBP_val.141, -72, !mcsema_real_eip !91
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !91
  %R10_val.142 = load i64, i64* %R10, !mcsema_real_eip !91
  store i64 %R10_val.142, i64* %40, !mcsema_real_eip !91
  %RBP_val.143 = load i64, i64* %XBP, !mcsema_real_eip !92
  %41 = add i64 %RBP_val.143, -80, !mcsema_real_eip !92
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !92
  %RAX_val.144 = load i64, i64* %XAX, !mcsema_real_eip !92
  store i64 %RAX_val.144, i64* %42, !mcsema_real_eip !92
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !93
  %43 = add i64 %RBP_val.145, -84, !mcsema_real_eip !93
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !93
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !93
  store i32 0, i32* %45, !mcsema_real_eip !93
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !94
  %46 = add i64 %RBP_val.146, -12, !mcsema_real_eip !94
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !94
  %48 = inttoptr i64 %46 to i32*, !mcsema_real_eip !94
  %49 = load i32, i32* %48, !mcsema_real_eip !94
  %50 = zext i32 %49 to i64, !mcsema_real_eip !94
  store i64 %50, i64* %XDI, !mcsema_real_eip !94
  %51 = add i64 %RBP_val.146, -84, !mcsema_real_eip !95
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !95
  %53 = inttoptr i64 %51 to i32*, !mcsema_real_eip !95
  %54 = load i32, i32* %53, !mcsema_real_eip !95
  %EDI_val.149 = load i32, i32* %EDI.122, !mcsema_real_eip !95
  %55 = add i32 %EDI_val.149, %54, !mcsema_real_eip !95
  %56 = xor i32 %55, %54, !mcsema_real_eip !95
  %57 = xor i32 %56, %EDI_val.149, !mcsema_real_eip !95
  %58 = and i32 %57, 16, !mcsema_real_eip !95
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !95
  store i1 %59, i1* %AF, !mcsema_real_eip !95
  %60 = lshr i32 %55, 31, !mcsema_real_eip !95
  %61 = trunc i32 %60 to i1, !mcsema_real_eip !95
  store i1 %61, i1* %SF, !mcsema_real_eip !95
  %62 = icmp eq i32 %55, 0, !mcsema_real_eip !95
  store i1 %62, i1* %ZF, !mcsema_real_eip !95
  %63 = xor i32 %54, %EDI_val.149, !mcsema_real_eip !95
  %64 = xor i32 %63, -1, !mcsema_real_eip !95
  %65 = and i32 %64, %56, !mcsema_real_eip !95
  %66 = lshr i32 %65, 31, !mcsema_real_eip !95
  %67 = and i32 %66, 1, !mcsema_real_eip !95
  %68 = trunc i32 %67 to i1, !mcsema_real_eip !95
  store i1 %68, i1* %OF, !mcsema_real_eip !95
  %69 = trunc i32 %55 to i8, !mcsema_real_eip !95
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !95
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !95
  %72 = xor i1 %71, true, !mcsema_real_eip !95
  store i1 %72, i1* %PF, !mcsema_real_eip !95
  %73 = icmp ult i32 %55, %54, !mcsema_real_eip !95
  store i1 %73, i1* %CF, !mcsema_real_eip !95
  %74 = zext i32 %55 to i64, !mcsema_real_eip !95
  store i64 %74, i64* %XDI, !mcsema_real_eip !95
  %EDI_val.152 = load i32, i32* %EDI.122, !mcsema_real_eip !96
  store i32 %EDI_val.152, i32* %53, !mcsema_real_eip !96
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !97
  %75 = add i64 %RBP_val.153, -88, !mcsema_real_eip !97
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !97
  %77 = inttoptr i64 %75 to i32*, !mcsema_real_eip !97
  store i32 0, i32* %77, !mcsema_real_eip !97
  br label %block_0x51, !mcsema_real_eip !98

block_0x51:                                       ; preds = %block_0x5d, %block_0x0
  %RBP_val.154 = load i64, i64* %XBP, !mcsema_real_eip !98
  %78 = add i64 %RBP_val.154, -88, !mcsema_real_eip !98
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !98
  %80 = inttoptr i64 %78 to i32*, !mcsema_real_eip !98
  %81 = load i32, i32* %80, !mcsema_real_eip !98
  %82 = zext i32 %81 to i64, !mcsema_real_eip !98
  store i64 %82, i64* %XAX, !mcsema_real_eip !98
  %83 = add i64 %RBP_val.154, -44, !mcsema_real_eip !99
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !99
  %EAX.156 = bitcast i64* %XAX to i32*, !mcsema_real_eip !99
  %EAX_val.157 = load i32, i32* %EAX.156, !mcsema_real_eip !99
  %85 = inttoptr i64 %83 to i32*, !mcsema_real_eip !99
  %86 = load i32, i32* %85, !mcsema_real_eip !99
  %87 = sub i32 %EAX_val.157, %86, !mcsema_real_eip !99
  %88 = xor i32 %87, %EAX_val.157, !mcsema_real_eip !99
  %89 = xor i32 %88, %86, !mcsema_real_eip !99
  %90 = and i32 %89, 16, !mcsema_real_eip !99
  %91 = icmp ne i32 %90, 0, !mcsema_real_eip !99
  store i1 %91, i1* %AF, !mcsema_real_eip !99
  %92 = trunc i32 %87 to i8, !mcsema_real_eip !99
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !99
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !99
  %95 = xor i1 %94, true, !mcsema_real_eip !99
  store i1 %95, i1* %PF, !mcsema_real_eip !99
  %96 = icmp eq i32 %87, 0, !mcsema_real_eip !99
  store i1 %96, i1* %ZF, !mcsema_real_eip !99
  %97 = lshr i32 %87, 31, !mcsema_real_eip !99
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !99
  store i1 %98, i1* %SF, !mcsema_real_eip !99
  %99 = icmp ult i32 %EAX_val.157, %86, !mcsema_real_eip !99
  store i1 %99, i1* %CF, !mcsema_real_eip !99
  %100 = xor i32 %EAX_val.157, %86, !mcsema_real_eip !99
  %101 = and i32 %100, %88, !mcsema_real_eip !99
  %102 = lshr i32 %101, 31, !mcsema_real_eip !99
  %103 = trunc i32 %102 to i1, !mcsema_real_eip !99
  store i1 %103, i1* %OF, !mcsema_real_eip !99
  %104 = icmp eq i1 %98, %103, !mcsema_real_eip !100
  br i1 %104, label %block_0x7c, label %block_0x5d, !mcsema_real_eip !100

block_0x5d:                                       ; preds = %block_0x51
  %105 = add i64 %RBP_val.154, -24, !mcsema_real_eip !101
  %106 = inttoptr i64 %105 to i64*, !mcsema_real_eip !101
  %107 = load i64, i64* %106, !mcsema_real_eip !101
  store i64 %107, i64* %XAX, !mcsema_real_eip !101
  %108 = load i32, i32* %80, !mcsema_real_eip !102
  %109 = sext i32 %108 to i64, !mcsema_real_eip !102
  store i64 %109, i64* %XCX, !mcsema_real_eip !102
  %110 = mul i64 %109, 4, !mcsema_real_eip !103
  %111 = add i64 %107, %110, !mcsema_real_eip !103
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !103
  %113 = inttoptr i64 %111 to i32*, !mcsema_real_eip !103
  %114 = load i32, i32* %113, !mcsema_real_eip !103
  %115 = zext i32 %114 to i64, !mcsema_real_eip !103
  store i64 %115, i64* %XDX, !mcsema_real_eip !103
  %116 = add i64 %RBP_val.154, -84, !mcsema_real_eip !104
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !104
  %118 = inttoptr i64 %116 to i32*, !mcsema_real_eip !104
  %119 = load i32, i32* %118, !mcsema_real_eip !104
  %EDX.172 = bitcast i64* %XDX to i32*, !mcsema_real_eip !104
  %EDX_val.173 = load i32, i32* %EDX.172, !mcsema_real_eip !104
  %120 = add i32 %EDX_val.173, %119, !mcsema_real_eip !104
  %121 = xor i32 %120, %119, !mcsema_real_eip !104
  %122 = xor i32 %121, %EDX_val.173, !mcsema_real_eip !104
  %123 = and i32 %122, 16, !mcsema_real_eip !104
  %124 = icmp ne i32 %123, 0, !mcsema_real_eip !104
  store i1 %124, i1* %AF, !mcsema_real_eip !104
  %125 = lshr i32 %120, 31, !mcsema_real_eip !104
  %126 = trunc i32 %125 to i1, !mcsema_real_eip !104
  store i1 %126, i1* %SF, !mcsema_real_eip !104
  %127 = icmp eq i32 %120, 0, !mcsema_real_eip !104
  store i1 %127, i1* %ZF, !mcsema_real_eip !104
  %128 = xor i32 %119, %EDX_val.173, !mcsema_real_eip !104
  %129 = xor i32 %128, -1, !mcsema_real_eip !104
  %130 = and i32 %129, %121, !mcsema_real_eip !104
  %131 = lshr i32 %130, 31, !mcsema_real_eip !104
  %132 = and i32 %131, 1, !mcsema_real_eip !104
  %133 = trunc i32 %132 to i1, !mcsema_real_eip !104
  store i1 %133, i1* %OF, !mcsema_real_eip !104
  %134 = trunc i32 %120 to i8, !mcsema_real_eip !104
  %135 = call i8 @llvm.ctpop.i8(i8 %134), !mcsema_real_eip !104
  %136 = trunc i8 %135 to i1, !mcsema_real_eip !104
  %137 = xor i1 %136, true, !mcsema_real_eip !104
  store i1 %137, i1* %PF, !mcsema_real_eip !104
  %138 = icmp ult i32 %120, %119, !mcsema_real_eip !104
  store i1 %138, i1* %CF, !mcsema_real_eip !104
  %139 = zext i32 %120 to i64, !mcsema_real_eip !104
  store i64 %139, i64* %XDX, !mcsema_real_eip !104
  %EDX_val.176 = load i32, i32* %EDX.172, !mcsema_real_eip !105
  store i32 %EDX_val.176, i32* %118, !mcsema_real_eip !105
  %RBP_val.177 = load i64, i64* %XBP, !mcsema_real_eip !106
  %140 = add i64 %RBP_val.177, -88, !mcsema_real_eip !106
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !106
  %142 = inttoptr i64 %140 to i32*, !mcsema_real_eip !106
  %143 = load i32, i32* %142, !mcsema_real_eip !106
  %144 = zext i32 %143 to i64, !mcsema_real_eip !106
  store i64 %144, i64* %XAX, !mcsema_real_eip !106
  %EAX_val.179 = load i32, i32* %EAX.156, !mcsema_real_eip !107
  %145 = add i32 1, %EAX_val.179, !mcsema_real_eip !107
  %146 = xor i32 %145, %EAX_val.179, !mcsema_real_eip !107
  %147 = xor i32 %146, 1, !mcsema_real_eip !107
  %148 = and i32 %147, 16, !mcsema_real_eip !107
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !107
  store i1 %149, i1* %AF, !mcsema_real_eip !107
  %150 = lshr i32 %145, 31, !mcsema_real_eip !107
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !107
  store i1 %151, i1* %SF, !mcsema_real_eip !107
  %152 = icmp eq i32 %145, 0, !mcsema_real_eip !107
  store i1 %152, i1* %ZF, !mcsema_real_eip !107
  %153 = xor i32 %EAX_val.179, 1, !mcsema_real_eip !107
  %154 = xor i32 %153, -1, !mcsema_real_eip !107
  %155 = and i32 %154, %146, !mcsema_real_eip !107
  %156 = lshr i32 %155, 31, !mcsema_real_eip !107
  %157 = and i32 %156, 1, !mcsema_real_eip !107
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !107
  store i1 %158, i1* %OF, !mcsema_real_eip !107
  %159 = trunc i32 %145 to i8, !mcsema_real_eip !107
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !107
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !107
  %162 = xor i1 %161, true, !mcsema_real_eip !107
  store i1 %162, i1* %PF, !mcsema_real_eip !107
  %163 = icmp ult i32 %145, %EAX_val.179, !mcsema_real_eip !107
  store i1 %163, i1* %CF, !mcsema_real_eip !107
  %164 = zext i32 %145 to i64, !mcsema_real_eip !107
  store i64 %164, i64* %XAX, !mcsema_real_eip !107
  %EAX_val.182 = load i32, i32* %EAX.156, !mcsema_real_eip !108
  store i32 %EAX_val.182, i32* %142, !mcsema_real_eip !108
  br label %block_0x51, !mcsema_real_eip !109

block_0x7c:                                       ; preds = %block_0x51
  %165 = add i64 %RBP_val.154, -32, !mcsema_real_eip !110
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !110
  %167 = load i64, i64* %166, !mcsema_real_eip !110
  store i64 %167, i64* %XAX, !mcsema_real_eip !110
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !111
  %169 = inttoptr i64 %167 to i32*, !mcsema_real_eip !111
  %170 = load i32, i32* %169, !mcsema_real_eip !111
  %171 = zext i32 %170 to i64, !mcsema_real_eip !111
  store i64 %171, i64* %XCX, !mcsema_real_eip !111
  %172 = add i64 %RBP_val.154, -84, !mcsema_real_eip !112
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !112
  %174 = inttoptr i64 %172 to i32*, !mcsema_real_eip !112
  %175 = load i32, i32* %174, !mcsema_real_eip !112
  %ECX.161 = bitcast i64* %XCX to i32*, !mcsema_real_eip !112
  %ECX_val.162 = load i32, i32* %ECX.161, !mcsema_real_eip !112
  %176 = add i32 %ECX_val.162, %175, !mcsema_real_eip !112
  %177 = xor i32 %176, %175, !mcsema_real_eip !112
  %178 = xor i32 %177, %ECX_val.162, !mcsema_real_eip !112
  %179 = and i32 %178, 16, !mcsema_real_eip !112
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !112
  store i1 %180, i1* %AF, !mcsema_real_eip !112
  %181 = lshr i32 %176, 31, !mcsema_real_eip !112
  %182 = trunc i32 %181 to i1, !mcsema_real_eip !112
  store i1 %182, i1* %SF, !mcsema_real_eip !112
  %183 = icmp eq i32 %176, 0, !mcsema_real_eip !112
  store i1 %183, i1* %ZF, !mcsema_real_eip !112
  %184 = xor i32 %175, %ECX_val.162, !mcsema_real_eip !112
  %185 = xor i32 %184, -1, !mcsema_real_eip !112
  %186 = and i32 %185, %177, !mcsema_real_eip !112
  %187 = lshr i32 %186, 31, !mcsema_real_eip !112
  %188 = and i32 %187, 1, !mcsema_real_eip !112
  %189 = trunc i32 %188 to i1, !mcsema_real_eip !112
  store i1 %189, i1* %OF, !mcsema_real_eip !112
  %190 = trunc i32 %176 to i8, !mcsema_real_eip !112
  %191 = call i8 @llvm.ctpop.i8(i8 %190), !mcsema_real_eip !112
  %192 = trunc i8 %191 to i1, !mcsema_real_eip !112
  %193 = xor i1 %192, true, !mcsema_real_eip !112
  store i1 %193, i1* %PF, !mcsema_real_eip !112
  %194 = icmp ult i32 %176, %175, !mcsema_real_eip !112
  store i1 %194, i1* %CF, !mcsema_real_eip !112
  %195 = zext i32 %176 to i64, !mcsema_real_eip !112
  store i64 %195, i64* %XCX, !mcsema_real_eip !112
  %ECX_val.165 = load i32, i32* %ECX.161, !mcsema_real_eip !113
  store i32 %ECX_val.165, i32* %174, !mcsema_real_eip !113
  %RBP_val.166 = load i64, i64* %XBP, !mcsema_real_eip !114
  %196 = add i64 %RBP_val.166, -92, !mcsema_real_eip !114
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !114
  %198 = inttoptr i64 %196 to i32*, !mcsema_real_eip !114
  store i32 0, i32* %198, !mcsema_real_eip !114
  br label %block_0x8f, !mcsema_real_eip !101

block_0x8f:                                       ; preds = %block_0x9b, %block_0x7c
  %RBP_val.183 = load i64, i64* %XBP, !mcsema_real_eip !115
  %199 = add i64 %RBP_val.183, -92, !mcsema_real_eip !115
  %200 = inttoptr i64 %199 to i64*, !mcsema_real_eip !115
  %201 = inttoptr i64 %199 to i32*, !mcsema_real_eip !115
  %202 = load i32, i32* %201, !mcsema_real_eip !115
  %203 = zext i32 %202 to i64, !mcsema_real_eip !115
  store i64 %203, i64* %XAX, !mcsema_real_eip !115
  %204 = add i64 %RBP_val.183, -48, !mcsema_real_eip !116
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !116
  %EAX_val.186 = load i32, i32* %EAX.156, !mcsema_real_eip !116
  %206 = inttoptr i64 %204 to i32*, !mcsema_real_eip !116
  %207 = load i32, i32* %206, !mcsema_real_eip !116
  %208 = sub i32 %EAX_val.186, %207, !mcsema_real_eip !116
  %209 = xor i32 %208, %EAX_val.186, !mcsema_real_eip !116
  %210 = xor i32 %209, %207, !mcsema_real_eip !116
  %211 = and i32 %210, 16, !mcsema_real_eip !116
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !116
  store i1 %212, i1* %AF, !mcsema_real_eip !116
  %213 = trunc i32 %208 to i8, !mcsema_real_eip !116
  %214 = call i8 @llvm.ctpop.i8(i8 %213), !mcsema_real_eip !116
  %215 = trunc i8 %214 to i1, !mcsema_real_eip !116
  %216 = xor i1 %215, true, !mcsema_real_eip !116
  store i1 %216, i1* %PF, !mcsema_real_eip !116
  %217 = icmp eq i32 %208, 0, !mcsema_real_eip !116
  store i1 %217, i1* %ZF, !mcsema_real_eip !116
  %218 = lshr i32 %208, 31, !mcsema_real_eip !116
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !116
  store i1 %219, i1* %SF, !mcsema_real_eip !116
  %220 = icmp ult i32 %EAX_val.186, %207, !mcsema_real_eip !116
  store i1 %220, i1* %CF, !mcsema_real_eip !116
  %221 = xor i32 %EAX_val.186, %207, !mcsema_real_eip !116
  %222 = and i32 %221, %209, !mcsema_real_eip !116
  %223 = lshr i32 %222, 31, !mcsema_real_eip !116
  %224 = trunc i32 %223 to i1, !mcsema_real_eip !116
  store i1 %224, i1* %OF, !mcsema_real_eip !116
  %225 = icmp eq i1 %219, %224, !mcsema_real_eip !117
  br i1 %225, label %block_0xba, label %block_0x9b, !mcsema_real_eip !117

block_0x9b:                                       ; preds = %block_0x8f
  %226 = add i64 %RBP_val.183, -40, !mcsema_real_eip !118
  %227 = inttoptr i64 %226 to i64*, !mcsema_real_eip !118
  %228 = load i64, i64* %227, !mcsema_real_eip !118
  store i64 %228, i64* %XAX, !mcsema_real_eip !118
  %229 = load i32, i32* %201, !mcsema_real_eip !119
  %230 = sext i32 %229 to i64, !mcsema_real_eip !119
  store i64 %230, i64* %XCX, !mcsema_real_eip !119
  %231 = mul i64 %230, 4, !mcsema_real_eip !120
  %232 = add i64 %228, %231, !mcsema_real_eip !120
  %233 = inttoptr i64 %232 to i64*, !mcsema_real_eip !120
  %234 = inttoptr i64 %232 to i32*, !mcsema_real_eip !120
  %235 = load i32, i32* %234, !mcsema_real_eip !120
  %236 = zext i32 %235 to i64, !mcsema_real_eip !120
  store i64 %236, i64* %XDX, !mcsema_real_eip !120
  %237 = add i64 %RBP_val.183, -84, !mcsema_real_eip !121
  %238 = inttoptr i64 %237 to i64*, !mcsema_real_eip !121
  %239 = inttoptr i64 %237 to i32*, !mcsema_real_eip !121
  %240 = load i32, i32* %239, !mcsema_real_eip !121
  %EDX.200 = bitcast i64* %XDX to i32*, !mcsema_real_eip !121
  %EDX_val.201 = load i32, i32* %EDX.200, !mcsema_real_eip !121
  %241 = add i32 %EDX_val.201, %240, !mcsema_real_eip !121
  %242 = xor i32 %241, %240, !mcsema_real_eip !121
  %243 = xor i32 %242, %EDX_val.201, !mcsema_real_eip !121
  %244 = and i32 %243, 16, !mcsema_real_eip !121
  %245 = icmp ne i32 %244, 0, !mcsema_real_eip !121
  store i1 %245, i1* %AF, !mcsema_real_eip !121
  %246 = lshr i32 %241, 31, !mcsema_real_eip !121
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !121
  store i1 %247, i1* %SF, !mcsema_real_eip !121
  %248 = icmp eq i32 %241, 0, !mcsema_real_eip !121
  store i1 %248, i1* %ZF, !mcsema_real_eip !121
  %249 = xor i32 %240, %EDX_val.201, !mcsema_real_eip !121
  %250 = xor i32 %249, -1, !mcsema_real_eip !121
  %251 = and i32 %250, %242, !mcsema_real_eip !121
  %252 = lshr i32 %251, 31, !mcsema_real_eip !121
  %253 = and i32 %252, 1, !mcsema_real_eip !121
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !121
  store i1 %254, i1* %OF, !mcsema_real_eip !121
  %255 = trunc i32 %241 to i8, !mcsema_real_eip !121
  %256 = call i8 @llvm.ctpop.i8(i8 %255), !mcsema_real_eip !121
  %257 = trunc i8 %256 to i1, !mcsema_real_eip !121
  %258 = xor i1 %257, true, !mcsema_real_eip !121
  store i1 %258, i1* %PF, !mcsema_real_eip !121
  %259 = icmp ult i32 %241, %240, !mcsema_real_eip !121
  store i1 %259, i1* %CF, !mcsema_real_eip !121
  %260 = zext i32 %241 to i64, !mcsema_real_eip !121
  store i64 %260, i64* %XDX, !mcsema_real_eip !121
  %EDX_val.204 = load i32, i32* %EDX.200, !mcsema_real_eip !122
  store i32 %EDX_val.204, i32* %239, !mcsema_real_eip !122
  %RBP_val.205 = load i64, i64* %XBP, !mcsema_real_eip !123
  %261 = add i64 %RBP_val.205, -92, !mcsema_real_eip !123
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !123
  %263 = inttoptr i64 %261 to i32*, !mcsema_real_eip !123
  %264 = load i32, i32* %263, !mcsema_real_eip !123
  %265 = zext i32 %264 to i64, !mcsema_real_eip !123
  store i64 %265, i64* %XAX, !mcsema_real_eip !123
  %EAX_val.207 = load i32, i32* %EAX.156, !mcsema_real_eip !124
  %266 = add i32 1, %EAX_val.207, !mcsema_real_eip !124
  %267 = xor i32 %266, %EAX_val.207, !mcsema_real_eip !124
  %268 = xor i32 %267, 1, !mcsema_real_eip !124
  %269 = and i32 %268, 16, !mcsema_real_eip !124
  %270 = icmp ne i32 %269, 0, !mcsema_real_eip !124
  store i1 %270, i1* %AF, !mcsema_real_eip !124
  %271 = lshr i32 %266, 31, !mcsema_real_eip !124
  %272 = trunc i32 %271 to i1, !mcsema_real_eip !124
  store i1 %272, i1* %SF, !mcsema_real_eip !124
  %273 = icmp eq i32 %266, 0, !mcsema_real_eip !124
  store i1 %273, i1* %ZF, !mcsema_real_eip !124
  %274 = xor i32 %EAX_val.207, 1, !mcsema_real_eip !124
  %275 = xor i32 %274, -1, !mcsema_real_eip !124
  %276 = and i32 %275, %267, !mcsema_real_eip !124
  %277 = lshr i32 %276, 31, !mcsema_real_eip !124
  %278 = and i32 %277, 1, !mcsema_real_eip !124
  %279 = trunc i32 %278 to i1, !mcsema_real_eip !124
  store i1 %279, i1* %OF, !mcsema_real_eip !124
  %280 = trunc i32 %266 to i8, !mcsema_real_eip !124
  %281 = call i8 @llvm.ctpop.i8(i8 %280), !mcsema_real_eip !124
  %282 = trunc i8 %281 to i1, !mcsema_real_eip !124
  %283 = xor i1 %282, true, !mcsema_real_eip !124
  store i1 %283, i1* %PF, !mcsema_real_eip !124
  %284 = icmp ult i32 %266, %EAX_val.207, !mcsema_real_eip !124
  store i1 %284, i1* %CF, !mcsema_real_eip !124
  %285 = zext i32 %266 to i64, !mcsema_real_eip !124
  store i64 %285, i64* %XAX, !mcsema_real_eip !124
  %EAX_val.210 = load i32, i32* %EAX.156, !mcsema_real_eip !125
  store i32 %EAX_val.210, i32* %263, !mcsema_real_eip !125
  br label %block_0x8f, !mcsema_real_eip !126

block_0xba:                                       ; preds = %block_0x8f
  %286 = add i64 %RBP_val.183, -52, !mcsema_real_eip !127
  %287 = inttoptr i64 %286 to i64*, !mcsema_real_eip !127
  %288 = inttoptr i64 %286 to i32*, !mcsema_real_eip !127
  %289 = load i32, i32* %288, !mcsema_real_eip !127
  %290 = zext i32 %289 to i64, !mcsema_real_eip !127
  store i64 %290, i64* %XAX, !mcsema_real_eip !127
  %291 = add i64 %RBP_val.183, -84, !mcsema_real_eip !128
  %292 = inttoptr i64 %291 to i64*, !mcsema_real_eip !128
  %293 = inttoptr i64 %291 to i32*, !mcsema_real_eip !128
  %294 = load i32, i32* %293, !mcsema_real_eip !128
  %EAX_val.190 = load i32, i32* %EAX.156, !mcsema_real_eip !128
  %295 = add i32 %EAX_val.190, %294, !mcsema_real_eip !128
  %296 = xor i32 %295, %294, !mcsema_real_eip !128
  %297 = xor i32 %296, %EAX_val.190, !mcsema_real_eip !128
  %298 = and i32 %297, 16, !mcsema_real_eip !128
  %299 = icmp ne i32 %298, 0, !mcsema_real_eip !128
  store i1 %299, i1* %AF, !mcsema_real_eip !128
  %300 = lshr i32 %295, 31, !mcsema_real_eip !128
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !128
  store i1 %301, i1* %SF, !mcsema_real_eip !128
  %302 = icmp eq i32 %295, 0, !mcsema_real_eip !128
  store i1 %302, i1* %ZF, !mcsema_real_eip !128
  %303 = xor i32 %294, %EAX_val.190, !mcsema_real_eip !128
  %304 = xor i32 %303, -1, !mcsema_real_eip !128
  %305 = and i32 %304, %296, !mcsema_real_eip !128
  %306 = lshr i32 %305, 31, !mcsema_real_eip !128
  %307 = and i32 %306, 1, !mcsema_real_eip !128
  %308 = trunc i32 %307 to i1, !mcsema_real_eip !128
  store i1 %308, i1* %OF, !mcsema_real_eip !128
  %309 = trunc i32 %295 to i8, !mcsema_real_eip !128
  %310 = call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !128
  %311 = trunc i8 %310 to i1, !mcsema_real_eip !128
  %312 = xor i1 %311, true, !mcsema_real_eip !128
  store i1 %312, i1* %PF, !mcsema_real_eip !128
  %313 = icmp ult i32 %295, %294, !mcsema_real_eip !128
  store i1 %313, i1* %CF, !mcsema_real_eip !128
  %314 = zext i32 %295 to i64, !mcsema_real_eip !128
  store i64 %314, i64* %XAX, !mcsema_real_eip !128
  %EAX_val.193 = load i32, i32* %EAX.156, !mcsema_real_eip !129
  store i32 %EAX_val.193, i32* %293, !mcsema_real_eip !129
  %RBP_val.194 = load i64, i64* %XBP, !mcsema_real_eip !130
  %315 = add i64 %RBP_val.194, -96, !mcsema_real_eip !130
  %316 = inttoptr i64 %315 to i64*, !mcsema_real_eip !130
  %317 = inttoptr i64 %315 to i32*, !mcsema_real_eip !130
  store i32 0, i32* %317, !mcsema_real_eip !130
  br label %block_0xca, !mcsema_real_eip !118

block_0xca:                                       ; preds = %block_0xd6, %block_0xba
  %RBP_val.211 = load i64, i64* %XBP, !mcsema_real_eip !131
  %318 = add i64 %RBP_val.211, -96, !mcsema_real_eip !131
  %319 = inttoptr i64 %318 to i64*, !mcsema_real_eip !131
  %320 = inttoptr i64 %318 to i32*, !mcsema_real_eip !131
  %321 = load i32, i32* %320, !mcsema_real_eip !131
  %322 = zext i32 %321 to i64, !mcsema_real_eip !131
  store i64 %322, i64* %XAX, !mcsema_real_eip !131
  %323 = add i64 %RBP_val.211, -44, !mcsema_real_eip !132
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !132
  %EAX_val.214 = load i32, i32* %EAX.156, !mcsema_real_eip !132
  %325 = inttoptr i64 %323 to i32*, !mcsema_real_eip !132
  %326 = load i32, i32* %325, !mcsema_real_eip !132
  %327 = sub i32 %EAX_val.214, %326, !mcsema_real_eip !132
  %328 = xor i32 %327, %EAX_val.214, !mcsema_real_eip !132
  %329 = xor i32 %328, %326, !mcsema_real_eip !132
  %330 = and i32 %329, 16, !mcsema_real_eip !132
  %331 = icmp ne i32 %330, 0, !mcsema_real_eip !132
  store i1 %331, i1* %AF, !mcsema_real_eip !132
  %332 = trunc i32 %327 to i8, !mcsema_real_eip !132
  %333 = call i8 @llvm.ctpop.i8(i8 %332), !mcsema_real_eip !132
  %334 = trunc i8 %333 to i1, !mcsema_real_eip !132
  %335 = xor i1 %334, true, !mcsema_real_eip !132
  store i1 %335, i1* %PF, !mcsema_real_eip !132
  %336 = icmp eq i32 %327, 0, !mcsema_real_eip !132
  store i1 %336, i1* %ZF, !mcsema_real_eip !132
  %337 = lshr i32 %327, 31, !mcsema_real_eip !132
  %338 = trunc i32 %337 to i1, !mcsema_real_eip !132
  store i1 %338, i1* %SF, !mcsema_real_eip !132
  %339 = icmp ult i32 %EAX_val.214, %326, !mcsema_real_eip !132
  store i1 %339, i1* %CF, !mcsema_real_eip !132
  %340 = xor i32 %EAX_val.214, %326, !mcsema_real_eip !132
  %341 = and i32 %340, %328, !mcsema_real_eip !132
  %342 = lshr i32 %341, 31, !mcsema_real_eip !132
  %343 = trunc i32 %342 to i1, !mcsema_real_eip !132
  store i1 %343, i1* %OF, !mcsema_real_eip !132
  %344 = icmp eq i1 %338, %343, !mcsema_real_eip !133
  br i1 %344, label %block_0xf5, label %block_0xd6, !mcsema_real_eip !133

block_0xd6:                                       ; preds = %block_0xca
  %345 = add i64 %RBP_val.211, -64, !mcsema_real_eip !134
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !134
  %347 = load i64, i64* %346, !mcsema_real_eip !134
  store i64 %347, i64* %XAX, !mcsema_real_eip !134
  %348 = load i32, i32* %320, !mcsema_real_eip !135
  %349 = sext i32 %348 to i64, !mcsema_real_eip !135
  store i64 %349, i64* %XCX, !mcsema_real_eip !135
  %350 = mul i64 %349, 4, !mcsema_real_eip !136
  %351 = add i64 %347, %350, !mcsema_real_eip !136
  %352 = inttoptr i64 %351 to i64*, !mcsema_real_eip !136
  %353 = inttoptr i64 %351 to i32*, !mcsema_real_eip !136
  %354 = load i32, i32* %353, !mcsema_real_eip !136
  %355 = zext i32 %354 to i64, !mcsema_real_eip !136
  store i64 %355, i64* %XDX, !mcsema_real_eip !136
  %356 = add i64 %RBP_val.211, -84, !mcsema_real_eip !137
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !137
  %358 = inttoptr i64 %356 to i32*, !mcsema_real_eip !137
  %359 = load i32, i32* %358, !mcsema_real_eip !137
  %EDX.229 = bitcast i64* %XDX to i32*, !mcsema_real_eip !137
  %EDX_val.230 = load i32, i32* %EDX.229, !mcsema_real_eip !137
  %360 = add i32 %EDX_val.230, %359, !mcsema_real_eip !137
  %361 = xor i32 %360, %359, !mcsema_real_eip !137
  %362 = xor i32 %361, %EDX_val.230, !mcsema_real_eip !137
  %363 = and i32 %362, 16, !mcsema_real_eip !137
  %364 = icmp ne i32 %363, 0, !mcsema_real_eip !137
  store i1 %364, i1* %AF, !mcsema_real_eip !137
  %365 = lshr i32 %360, 31, !mcsema_real_eip !137
  %366 = trunc i32 %365 to i1, !mcsema_real_eip !137
  store i1 %366, i1* %SF, !mcsema_real_eip !137
  %367 = icmp eq i32 %360, 0, !mcsema_real_eip !137
  store i1 %367, i1* %ZF, !mcsema_real_eip !137
  %368 = xor i32 %359, %EDX_val.230, !mcsema_real_eip !137
  %369 = xor i32 %368, -1, !mcsema_real_eip !137
  %370 = and i32 %369, %361, !mcsema_real_eip !137
  %371 = lshr i32 %370, 31, !mcsema_real_eip !137
  %372 = and i32 %371, 1, !mcsema_real_eip !137
  %373 = trunc i32 %372 to i1, !mcsema_real_eip !137
  store i1 %373, i1* %OF, !mcsema_real_eip !137
  %374 = trunc i32 %360 to i8, !mcsema_real_eip !137
  %375 = call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !137
  %376 = trunc i8 %375 to i1, !mcsema_real_eip !137
  %377 = xor i1 %376, true, !mcsema_real_eip !137
  store i1 %377, i1* %PF, !mcsema_real_eip !137
  %378 = icmp ult i32 %360, %359, !mcsema_real_eip !137
  store i1 %378, i1* %CF, !mcsema_real_eip !137
  %379 = zext i32 %360 to i64, !mcsema_real_eip !137
  store i64 %379, i64* %XDX, !mcsema_real_eip !137
  %EDX_val.233 = load i32, i32* %EDX.229, !mcsema_real_eip !138
  store i32 %EDX_val.233, i32* %358, !mcsema_real_eip !138
  %RBP_val.234 = load i64, i64* %XBP, !mcsema_real_eip !139
  %380 = add i64 %RBP_val.234, -96, !mcsema_real_eip !139
  %381 = inttoptr i64 %380 to i64*, !mcsema_real_eip !139
  %382 = inttoptr i64 %380 to i32*, !mcsema_real_eip !139
  %383 = load i32, i32* %382, !mcsema_real_eip !139
  %384 = zext i32 %383 to i64, !mcsema_real_eip !139
  store i64 %384, i64* %XAX, !mcsema_real_eip !139
  %EAX_val.236 = load i32, i32* %EAX.156, !mcsema_real_eip !140
  %385 = add i32 1, %EAX_val.236, !mcsema_real_eip !140
  %386 = xor i32 %385, %EAX_val.236, !mcsema_real_eip !140
  %387 = xor i32 %386, 1, !mcsema_real_eip !140
  %388 = and i32 %387, 16, !mcsema_real_eip !140
  %389 = icmp ne i32 %388, 0, !mcsema_real_eip !140
  store i1 %389, i1* %AF, !mcsema_real_eip !140
  %390 = lshr i32 %385, 31, !mcsema_real_eip !140
  %391 = trunc i32 %390 to i1, !mcsema_real_eip !140
  store i1 %391, i1* %SF, !mcsema_real_eip !140
  %392 = icmp eq i32 %385, 0, !mcsema_real_eip !140
  store i1 %392, i1* %ZF, !mcsema_real_eip !140
  %393 = xor i32 %EAX_val.236, 1, !mcsema_real_eip !140
  %394 = xor i32 %393, -1, !mcsema_real_eip !140
  %395 = and i32 %394, %386, !mcsema_real_eip !140
  %396 = lshr i32 %395, 31, !mcsema_real_eip !140
  %397 = and i32 %396, 1, !mcsema_real_eip !140
  %398 = trunc i32 %397 to i1, !mcsema_real_eip !140
  store i1 %398, i1* %OF, !mcsema_real_eip !140
  %399 = trunc i32 %385 to i8, !mcsema_real_eip !140
  %400 = call i8 @llvm.ctpop.i8(i8 %399), !mcsema_real_eip !140
  %401 = trunc i8 %400 to i1, !mcsema_real_eip !140
  %402 = xor i1 %401, true, !mcsema_real_eip !140
  store i1 %402, i1* %PF, !mcsema_real_eip !140
  %403 = icmp ult i32 %385, %EAX_val.236, !mcsema_real_eip !140
  store i1 %403, i1* %CF, !mcsema_real_eip !140
  %404 = zext i32 %385 to i64, !mcsema_real_eip !140
  store i64 %404, i64* %XAX, !mcsema_real_eip !140
  %EAX_val.239 = load i32, i32* %EAX.156, !mcsema_real_eip !141
  store i32 %EAX_val.239, i32* %382, !mcsema_real_eip !141
  br label %block_0xca, !mcsema_real_eip !142

block_0xf5:                                       ; preds = %block_0xca
  %405 = add i64 %RBP_val.211, -72, !mcsema_real_eip !143
  %406 = inttoptr i64 %405 to i64*, !mcsema_real_eip !143
  %407 = load i64, i64* %406, !mcsema_real_eip !143
  store i64 %407, i64* %XAX, !mcsema_real_eip !143
  %408 = inttoptr i64 %407 to i64*, !mcsema_real_eip !144
  %409 = inttoptr i64 %407 to i32*, !mcsema_real_eip !144
  %410 = load i32, i32* %409, !mcsema_real_eip !144
  %411 = zext i32 %410 to i64, !mcsema_real_eip !144
  store i64 %411, i64* %XCX, !mcsema_real_eip !144
  %412 = add i64 %RBP_val.211, -84, !mcsema_real_eip !145
  %413 = inttoptr i64 %412 to i64*, !mcsema_real_eip !145
  %414 = inttoptr i64 %412 to i32*, !mcsema_real_eip !145
  %415 = load i32, i32* %414, !mcsema_real_eip !145
  %ECX_val.219 = load i32, i32* %ECX.161, !mcsema_real_eip !145
  %416 = add i32 %ECX_val.219, %415, !mcsema_real_eip !145
  %417 = xor i32 %416, %415, !mcsema_real_eip !145
  %418 = xor i32 %417, %ECX_val.219, !mcsema_real_eip !145
  %419 = and i32 %418, 16, !mcsema_real_eip !145
  %420 = icmp ne i32 %419, 0, !mcsema_real_eip !145
  store i1 %420, i1* %AF, !mcsema_real_eip !145
  %421 = lshr i32 %416, 31, !mcsema_real_eip !145
  %422 = trunc i32 %421 to i1, !mcsema_real_eip !145
  store i1 %422, i1* %SF, !mcsema_real_eip !145
  %423 = icmp eq i32 %416, 0, !mcsema_real_eip !145
  store i1 %423, i1* %ZF, !mcsema_real_eip !145
  %424 = xor i32 %415, %ECX_val.219, !mcsema_real_eip !145
  %425 = xor i32 %424, -1, !mcsema_real_eip !145
  %426 = and i32 %425, %417, !mcsema_real_eip !145
  %427 = lshr i32 %426, 31, !mcsema_real_eip !145
  %428 = and i32 %427, 1, !mcsema_real_eip !145
  %429 = trunc i32 %428 to i1, !mcsema_real_eip !145
  store i1 %429, i1* %OF, !mcsema_real_eip !145
  %430 = trunc i32 %416 to i8, !mcsema_real_eip !145
  %431 = call i8 @llvm.ctpop.i8(i8 %430), !mcsema_real_eip !145
  %432 = trunc i8 %431 to i1, !mcsema_real_eip !145
  %433 = xor i1 %432, true, !mcsema_real_eip !145
  store i1 %433, i1* %PF, !mcsema_real_eip !145
  %434 = icmp ult i32 %416, %415, !mcsema_real_eip !145
  store i1 %434, i1* %CF, !mcsema_real_eip !145
  %435 = zext i32 %416 to i64, !mcsema_real_eip !145
  store i64 %435, i64* %XCX, !mcsema_real_eip !145
  %ECX_val.222 = load i32, i32* %ECX.161, !mcsema_real_eip !146
  store i32 %ECX_val.222, i32* %414, !mcsema_real_eip !146
  %RBP_val.223 = load i64, i64* %XBP, !mcsema_real_eip !147
  %436 = add i64 %RBP_val.223, -100, !mcsema_real_eip !147
  %437 = inttoptr i64 %436 to i64*, !mcsema_real_eip !147
  %438 = inttoptr i64 %436 to i32*, !mcsema_real_eip !147
  store i32 0, i32* %438, !mcsema_real_eip !147
  br label %block_0x108, !mcsema_real_eip !134

block_0x108:                                      ; preds = %block_0x114, %block_0xf5
  %RBP_val.240 = load i64, i64* %XBP, !mcsema_real_eip !148
  %439 = add i64 %RBP_val.240, -100, !mcsema_real_eip !148
  %440 = inttoptr i64 %439 to i64*, !mcsema_real_eip !148
  %441 = inttoptr i64 %439 to i32*, !mcsema_real_eip !148
  %442 = load i32, i32* %441, !mcsema_real_eip !148
  %443 = zext i32 %442 to i64, !mcsema_real_eip !148
  store i64 %443, i64* %XAX, !mcsema_real_eip !148
  %444 = add i64 %RBP_val.240, -48, !mcsema_real_eip !149
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !149
  %EAX_val.243 = load i32, i32* %EAX.156, !mcsema_real_eip !149
  %446 = inttoptr i64 %444 to i32*, !mcsema_real_eip !149
  %447 = load i32, i32* %446, !mcsema_real_eip !149
  %448 = sub i32 %EAX_val.243, %447, !mcsema_real_eip !149
  %449 = xor i32 %448, %EAX_val.243, !mcsema_real_eip !149
  %450 = xor i32 %449, %447, !mcsema_real_eip !149
  %451 = and i32 %450, 16, !mcsema_real_eip !149
  %452 = icmp ne i32 %451, 0, !mcsema_real_eip !149
  store i1 %452, i1* %AF, !mcsema_real_eip !149
  %453 = trunc i32 %448 to i8, !mcsema_real_eip !149
  %454 = call i8 @llvm.ctpop.i8(i8 %453), !mcsema_real_eip !149
  %455 = trunc i8 %454 to i1, !mcsema_real_eip !149
  %456 = xor i1 %455, true, !mcsema_real_eip !149
  store i1 %456, i1* %PF, !mcsema_real_eip !149
  %457 = icmp eq i32 %448, 0, !mcsema_real_eip !149
  store i1 %457, i1* %ZF, !mcsema_real_eip !149
  %458 = lshr i32 %448, 31, !mcsema_real_eip !149
  %459 = trunc i32 %458 to i1, !mcsema_real_eip !149
  store i1 %459, i1* %SF, !mcsema_real_eip !149
  %460 = icmp ult i32 %EAX_val.243, %447, !mcsema_real_eip !149
  store i1 %460, i1* %CF, !mcsema_real_eip !149
  %461 = xor i32 %EAX_val.243, %447, !mcsema_real_eip !149
  %462 = and i32 %461, %449, !mcsema_real_eip !149
  %463 = lshr i32 %462, 31, !mcsema_real_eip !149
  %464 = trunc i32 %463 to i1, !mcsema_real_eip !149
  store i1 %464, i1* %OF, !mcsema_real_eip !149
  %465 = icmp eq i1 %459, %464, !mcsema_real_eip !150
  br i1 %465, label %block_0x133, label %block_0x114, !mcsema_real_eip !150

block_0x114:                                      ; preds = %block_0x108
  %466 = add i64 %RBP_val.240, -80, !mcsema_real_eip !151
  %467 = inttoptr i64 %466 to i64*, !mcsema_real_eip !151
  %468 = load i64, i64* %467, !mcsema_real_eip !151
  store i64 %468, i64* %XAX, !mcsema_real_eip !151
  %469 = load i32, i32* %441, !mcsema_real_eip !152
  %470 = sext i32 %469 to i64, !mcsema_real_eip !152
  store i64 %470, i64* %XCX, !mcsema_real_eip !152
  %471 = mul i64 %470, 4, !mcsema_real_eip !153
  %472 = add i64 %468, %471, !mcsema_real_eip !153
  %473 = inttoptr i64 %472 to i64*, !mcsema_real_eip !153
  %474 = inttoptr i64 %472 to i32*, !mcsema_real_eip !153
  %475 = load i32, i32* %474, !mcsema_real_eip !153
  %476 = zext i32 %475 to i64, !mcsema_real_eip !153
  store i64 %476, i64* %XDX, !mcsema_real_eip !153
  %477 = add i64 %RBP_val.240, -84, !mcsema_real_eip !154
  %478 = inttoptr i64 %477 to i64*, !mcsema_real_eip !154
  %479 = inttoptr i64 %477 to i32*, !mcsema_real_eip !154
  %480 = load i32, i32* %479, !mcsema_real_eip !154
  %EDX.253 = bitcast i64* %XDX to i32*, !mcsema_real_eip !154
  %EDX_val.254 = load i32, i32* %EDX.253, !mcsema_real_eip !154
  %481 = add i32 %EDX_val.254, %480, !mcsema_real_eip !154
  %482 = xor i32 %481, %480, !mcsema_real_eip !154
  %483 = xor i32 %482, %EDX_val.254, !mcsema_real_eip !154
  %484 = and i32 %483, 16, !mcsema_real_eip !154
  %485 = icmp ne i32 %484, 0, !mcsema_real_eip !154
  store i1 %485, i1* %AF, !mcsema_real_eip !154
  %486 = lshr i32 %481, 31, !mcsema_real_eip !154
  %487 = trunc i32 %486 to i1, !mcsema_real_eip !154
  store i1 %487, i1* %SF, !mcsema_real_eip !154
  %488 = icmp eq i32 %481, 0, !mcsema_real_eip !154
  store i1 %488, i1* %ZF, !mcsema_real_eip !154
  %489 = xor i32 %480, %EDX_val.254, !mcsema_real_eip !154
  %490 = xor i32 %489, -1, !mcsema_real_eip !154
  %491 = and i32 %490, %482, !mcsema_real_eip !154
  %492 = lshr i32 %491, 31, !mcsema_real_eip !154
  %493 = and i32 %492, 1, !mcsema_real_eip !154
  %494 = trunc i32 %493 to i1, !mcsema_real_eip !154
  store i1 %494, i1* %OF, !mcsema_real_eip !154
  %495 = trunc i32 %481 to i8, !mcsema_real_eip !154
  %496 = call i8 @llvm.ctpop.i8(i8 %495), !mcsema_real_eip !154
  %497 = trunc i8 %496 to i1, !mcsema_real_eip !154
  %498 = xor i1 %497, true, !mcsema_real_eip !154
  store i1 %498, i1* %PF, !mcsema_real_eip !154
  %499 = icmp ult i32 %481, %480, !mcsema_real_eip !154
  store i1 %499, i1* %CF, !mcsema_real_eip !154
  %500 = zext i32 %481 to i64, !mcsema_real_eip !154
  store i64 %500, i64* %XDX, !mcsema_real_eip !154
  %EDX_val.257 = load i32, i32* %EDX.253, !mcsema_real_eip !155
  store i32 %EDX_val.257, i32* %479, !mcsema_real_eip !155
  %RBP_val.258 = load i64, i64* %XBP, !mcsema_real_eip !156
  %501 = add i64 %RBP_val.258, -100, !mcsema_real_eip !156
  %502 = inttoptr i64 %501 to i64*, !mcsema_real_eip !156
  %503 = inttoptr i64 %501 to i32*, !mcsema_real_eip !156
  %504 = load i32, i32* %503, !mcsema_real_eip !156
  %505 = zext i32 %504 to i64, !mcsema_real_eip !156
  store i64 %505, i64* %XAX, !mcsema_real_eip !156
  %EAX_val.260 = load i32, i32* %EAX.156, !mcsema_real_eip !157
  %506 = add i32 1, %EAX_val.260, !mcsema_real_eip !157
  %507 = xor i32 %506, %EAX_val.260, !mcsema_real_eip !157
  %508 = xor i32 %507, 1, !mcsema_real_eip !157
  %509 = and i32 %508, 16, !mcsema_real_eip !157
  %510 = icmp ne i32 %509, 0, !mcsema_real_eip !157
  store i1 %510, i1* %AF, !mcsema_real_eip !157
  %511 = lshr i32 %506, 31, !mcsema_real_eip !157
  %512 = trunc i32 %511 to i1, !mcsema_real_eip !157
  store i1 %512, i1* %SF, !mcsema_real_eip !157
  %513 = icmp eq i32 %506, 0, !mcsema_real_eip !157
  store i1 %513, i1* %ZF, !mcsema_real_eip !157
  %514 = xor i32 %EAX_val.260, 1, !mcsema_real_eip !157
  %515 = xor i32 %514, -1, !mcsema_real_eip !157
  %516 = and i32 %515, %507, !mcsema_real_eip !157
  %517 = lshr i32 %516, 31, !mcsema_real_eip !157
  %518 = and i32 %517, 1, !mcsema_real_eip !157
  %519 = trunc i32 %518 to i1, !mcsema_real_eip !157
  store i1 %519, i1* %OF, !mcsema_real_eip !157
  %520 = trunc i32 %506 to i8, !mcsema_real_eip !157
  %521 = call i8 @llvm.ctpop.i8(i8 %520), !mcsema_real_eip !157
  %522 = trunc i8 %521 to i1, !mcsema_real_eip !157
  %523 = xor i1 %522, true, !mcsema_real_eip !157
  store i1 %523, i1* %PF, !mcsema_real_eip !157
  %524 = icmp ult i32 %506, %EAX_val.260, !mcsema_real_eip !157
  store i1 %524, i1* %CF, !mcsema_real_eip !157
  %525 = zext i32 %506 to i64, !mcsema_real_eip !157
  store i64 %525, i64* %XAX, !mcsema_real_eip !157
  %EAX_val.263 = load i32, i32* %EAX.156, !mcsema_real_eip !158
  store i32 %EAX_val.263, i32* %503, !mcsema_real_eip !158
  br label %block_0x108, !mcsema_real_eip !159

block_0x133:                                      ; preds = %block_0x108
  %526 = add i64 %RBP_val.240, -84, !mcsema_real_eip !160
  %527 = inttoptr i64 %526 to i64*, !mcsema_real_eip !160
  %528 = inttoptr i64 %526 to i32*, !mcsema_real_eip !160
  %529 = load i32, i32* %528, !mcsema_real_eip !160
  %530 = zext i32 %529 to i64, !mcsema_real_eip !160
  store i64 %530, i64* %XAX, !mcsema_real_eip !160
  %RSP_val.245 = load i64, i64* %XSP, !mcsema_real_eip !161
  %531 = inttoptr i64 %RSP_val.245 to i64*, !mcsema_real_eip !161
  %532 = load i64, i64* %531, !mcsema_real_eip !161
  store i64 %532, i64* %XBX, !mcsema_real_eip !161
  %533 = add i64 %RSP_val.245, 8, !mcsema_real_eip !161
  store i64 %533, i64* %XSP, !mcsema_real_eip !161
  %534 = inttoptr i64 %533 to i64*, !mcsema_real_eip !162
  %535 = load i64, i64* %534, !mcsema_real_eip !162
  store i64 %535, i64* %XBP, !mcsema_real_eip !162
  %536 = add i64 %533, 8, !mcsema_real_eip !162
  store i64 %536, i64* %XSP, !mcsema_real_eip !162
  %537 = add i64 %536, 8, !mcsema_real_eip !163
  %538 = inttoptr i64 %536 to i64*, !mcsema_real_eip !163
  %539 = load i64, i64* %538, !mcsema_real_eip !163
  store i64 %539, i64* %XIP, !mcsema_real_eip !163
  store i64 %537, i64* %XSP, !mcsema_real_eip !163
  ret void, !mcsema_real_eip !163
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
define x86_64_sysvcc void @sub_140.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 192
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 192
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
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
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !2
  br label %block_0x140, !mcsema_real_eip !2

block_0x140:                                      ; preds = %entry
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
  %R14_val.3 = load i64, i64* %R14, !mcsema_real_eip !4
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R14_val.3, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %RBX_val.5 = load i64, i64* %XBX, !mcsema_real_eip !5
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_3, i64 -8
  %3 = sub i64 %2, 8, !mcsema_real_eip !5
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %RBX_val.5, i64* %_allin_new_bt_7, !mcsema_real_eip !5
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_
  store i64 %3, i64* %XSP, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_6, i64 -160
  %4 = sub i64 %3, 160, !mcsema_real_eip !6
  %_trans_p2i_ = ptrtoint i8* %_new_gep_9 to i64
  %_trans_p2i_10 = ptrtoint i8* %_new_gep_6 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_10
  %5 = xor i64 %_trans_xor_, 160, !mcsema_real_eip !6
  %6 = and i64 %5, 16, !mcsema_real_eip !6
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !6
  store i1 %7, i1* %AF, !mcsema_real_eip !6
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %8 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !6
  %9 = trunc i8 %8 to i1, !mcsema_real_eip !6
  %10 = xor i1 %9, true, !mcsema_real_eip !6
  store i1 %10, i1* %PF, !mcsema_real_eip !6
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !6
  %11 = lshr i64 %4, 63, !mcsema_real_eip !6
  %12 = trunc i64 %11 to i1, !mcsema_real_eip !6
  store i1 %12, i1* %SF, !mcsema_real_eip !6
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_10, 160
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !6
  %_trans_xor_15 = xor i64 %_trans_p2i_10, 160
  %13 = and i64 %_trans_xor_15, %_trans_xor_, !mcsema_real_eip !6
  %14 = lshr i64 %13, 63, !mcsema_real_eip !6
  %15 = trunc i64 %14 to i1, !mcsema_real_eip !6
  store i1 %15, i1* %OF, !mcsema_real_eip !6
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_
  store i64 %4, i64* %XSP, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -20
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %17, !mcsema_real_eip !7
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  store i32 1, i32* %19, !mcsema_real_eip !8
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -68
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !9
  store i32 0, i32* %21, !mcsema_real_eip !9
  br label %block_0x163, !mcsema_real_eip !10

block_0x163:                                      ; preds = %79, %block_0x140
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -68
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %22 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !10
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !10
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %23 to i8*
  %_offset_above_rbp_ = sub i64 %22, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %24, label %25

; <label>:24:                                     ; preds = %block_0x163
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %25

; <label>:25:                                     ; preds = %block_0x163, %24
  %26 = phi i32* [ %23, %block_0x163 ], [ %_address_in_parent_stack_bt_, %24 ]
  %_new_load_ = load i32, i32* %26
  %27 = sub i32 %_new_load_, 10, !mcsema_real_eip !10
  %28 = xor i32 %27, %_new_load_, !mcsema_real_eip !10
  %29 = xor i32 %28, 10, !mcsema_real_eip !10
  %30 = and i32 %29, 16, !mcsema_real_eip !10
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !10
  store i1 %31, i1* %AF, !mcsema_real_eip !10
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !10
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !10
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !10
  %35 = xor i1 %34, true, !mcsema_real_eip !10
  store i1 %35, i1* %PF, !mcsema_real_eip !10
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !10
  store i1 %36, i1* %ZF, !mcsema_real_eip !10
  %37 = lshr i32 %27, 31, !mcsema_real_eip !10
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !10
  store i1 %38, i1* %SF, !mcsema_real_eip !10
  %39 = icmp ult i32 %_new_load_, 10, !mcsema_real_eip !10
  store i1 %39, i1* %CF, !mcsema_real_eip !10
  %40 = xor i32 %_new_load_, 10, !mcsema_real_eip !10
  %41 = and i32 %40, %28, !mcsema_real_eip !10
  %42 = lshr i32 %41, 31, !mcsema_real_eip !10
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !10
  store i1 %43, i1* %OF, !mcsema_real_eip !10
  %44 = icmp eq i1 %38, %43, !mcsema_real_eip !11
  br i1 %44, label %block_0x189, label %block_0x16d, !mcsema_real_eip !11

block_0x16d:                                      ; preds = %25
  br i1 %_cond1_n_cond2_cond3_, label %45, label %46

; <label>:45:                                     ; preds = %block_0x16d
  %_address_in_parent_stack_bt_214 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %46

; <label>:46:                                     ; preds = %block_0x16d, %45
  %47 = phi i32* [ %23, %block_0x16d ], [ %_address_in_parent_stack_bt_214, %45 ]
  %_new_load_215 = load i32, i32* %47
  %48 = zext i32 %_new_load_215 to i64, !mcsema_real_eip !12
  store i64 %48, i64* %XAX, !mcsema_real_eip !12
  %EAX.23 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.24 = load i32, i32* %EAX.23, !mcsema_real_eip !13
  %49 = add i32 1, %EAX_val.24, !mcsema_real_eip !13
  %50 = xor i32 %49, %EAX_val.24, !mcsema_real_eip !13
  %51 = xor i32 %50, 1, !mcsema_real_eip !13
  %52 = and i32 %51, 16, !mcsema_real_eip !13
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !13
  store i1 %53, i1* %AF, !mcsema_real_eip !13
  %54 = lshr i32 %49, 31, !mcsema_real_eip !13
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !13
  store i1 %55, i1* %SF, !mcsema_real_eip !13
  %56 = icmp eq i32 %49, 0, !mcsema_real_eip !13
  store i1 %56, i1* %ZF, !mcsema_real_eip !13
  %57 = xor i32 %EAX_val.24, 1, !mcsema_real_eip !13
  %58 = xor i32 %57, -1, !mcsema_real_eip !13
  %59 = and i32 %58, %50, !mcsema_real_eip !13
  %60 = lshr i32 %59, 31, !mcsema_real_eip !13
  %61 = and i32 %60, 1, !mcsema_real_eip !13
  %62 = trunc i32 %61 to i1, !mcsema_real_eip !13
  store i1 %62, i1* %OF, !mcsema_real_eip !13
  %63 = trunc i32 %49 to i8, !mcsema_real_eip !13
  %64 = call i8 @llvm.ctpop.i8(i8 %63), !mcsema_real_eip !13
  %65 = trunc i8 %64 to i1, !mcsema_real_eip !13
  %66 = xor i1 %65, true, !mcsema_real_eip !13
  store i1 %66, i1* %PF, !mcsema_real_eip !13
  %67 = icmp ult i32 %49, %EAX_val.24, !mcsema_real_eip !13
  store i1 %67, i1* %CF, !mcsema_real_eip !13
  %68 = zext i32 %49 to i64, !mcsema_real_eip !13
  store i64 %68, i64* %XAX, !mcsema_real_eip !13
  br i1 %_cond1_n_cond2_cond3_, label %69, label %70

; <label>:69:                                     ; preds = %46
  %_address_in_parent_stack_bt_229 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %70

; <label>:70:                                     ; preds = %46, %69
  %71 = phi i32* [ %23, %46 ], [ %_address_in_parent_stack_bt_229, %69 ]
  %_new_load_230 = load i32, i32* %71
  %72 = sext i32 %_new_load_230 to i64, !mcsema_real_eip !14
  store i64 %72, i64* %XCX, !mcsema_real_eip !14
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -64
  %73 = mul i64 %72, 4, !mcsema_real_eip !15
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_38, i64 %73
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %EAX_val.29 = load i32, i32* %EAX.23, !mcsema_real_eip !15
  %74 = ptrtoint i64* %_allin_new_bt_40 to i64, !mcsema_real_eip !15
  %75 = inttoptr i64 %74 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.29, i32* %75, !mcsema_real_eip !15
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -68
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %76 = ptrtoint i64* %_allin_new_bt_43 to i64, !mcsema_real_eip !16
  %77 = inttoptr i64 %76 to i32*, !mcsema_real_eip !16
  %_ptr_bt_233 = bitcast i32* %77 to i8*
  %_offset_above_rbp_234 = sub i64 %76, %_local_end_to_int_
  %_pot_address_in_parent_stack_235 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_234
  %_cond1_236 = icmp ugt i8* %_ptr_bt_233, %_local_stack_end_ptr_
  %_cond2_1_237 = icmp ugt i8* %_ptr_bt_233, %_parent_stack_end_ptr_
  %_cond2_2_238 = icmp ult i8* %_ptr_bt_233, %_parent_stack_start_ptr_
  %_cond2_239 = or i1 %_cond2_1_237, %_cond2_2_238
  %_cond4_240 = icmp ule i8* %_pot_address_in_parent_stack_235, %_parent_stack_end_ptr_
  %_cond1_n_cond2_241 = and i1 %_cond1_236, %_cond2_239
  %_cond1_n_cond2_cond3_242 = and i1 %_cond1_n_cond2_241, %_cond4_240
  br i1 %_cond1_n_cond2_cond3_242, label %78, label %79

; <label>:78:                                     ; preds = %70
  %_address_in_parent_stack_bt_244 = bitcast i8* %_pot_address_in_parent_stack_235 to i32*
  br label %79

; <label>:79:                                     ; preds = %70, %78
  %80 = phi i32* [ %77, %70 ], [ %_address_in_parent_stack_bt_244, %78 ]
  %_new_load_245 = load i32, i32* %80
  %81 = zext i32 %_new_load_245 to i64, !mcsema_real_eip !16
  store i64 %81, i64* %XAX, !mcsema_real_eip !16
  %EAX_val.32 = load i32, i32* %EAX.23, !mcsema_real_eip !17
  %82 = add i32 1, %EAX_val.32, !mcsema_real_eip !17
  %83 = xor i32 %82, %EAX_val.32, !mcsema_real_eip !17
  %84 = xor i32 %83, 1, !mcsema_real_eip !17
  %85 = and i32 %84, 16, !mcsema_real_eip !17
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !17
  store i1 %86, i1* %AF, !mcsema_real_eip !17
  %87 = lshr i32 %82, 31, !mcsema_real_eip !17
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !17
  store i1 %88, i1* %SF, !mcsema_real_eip !17
  %89 = icmp eq i32 %82, 0, !mcsema_real_eip !17
  store i1 %89, i1* %ZF, !mcsema_real_eip !17
  %90 = xor i32 %EAX_val.32, 1, !mcsema_real_eip !17
  %91 = xor i32 %90, -1, !mcsema_real_eip !17
  %92 = and i32 %91, %83, !mcsema_real_eip !17
  %93 = lshr i32 %92, 31, !mcsema_real_eip !17
  %94 = and i32 %93, 1, !mcsema_real_eip !17
  %95 = trunc i32 %94 to i1, !mcsema_real_eip !17
  store i1 %95, i1* %OF, !mcsema_real_eip !17
  %96 = trunc i32 %82 to i8, !mcsema_real_eip !17
  %97 = call i8 @llvm.ctpop.i8(i8 %96), !mcsema_real_eip !17
  %98 = trunc i8 %97 to i1, !mcsema_real_eip !17
  %99 = xor i1 %98, true, !mcsema_real_eip !17
  store i1 %99, i1* %PF, !mcsema_real_eip !17
  %100 = icmp ult i32 %82, %EAX_val.32, !mcsema_real_eip !17
  store i1 %100, i1* %CF, !mcsema_real_eip !17
  %101 = zext i32 %82 to i64, !mcsema_real_eip !17
  store i64 %101, i64* %XAX, !mcsema_real_eip !17
  %EAX_val.35 = load i32, i32* %EAX.23, !mcsema_real_eip !18
  store i32 %EAX_val.35, i32* %77, !mcsema_real_eip !18
  br label %block_0x163, !mcsema_real_eip !19

block_0x189:                                      ; preds = %25
  store i64 40, i64* %XAX, !mcsema_real_eip !20
  %EAX.12 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  %EAX_val.13 = load i32, i32* %EAX.12, !mcsema_real_eip !21
  %102 = zext i32 %EAX_val.13 to i64, !mcsema_real_eip !21
  store i64 %102, i64* %XDI, !mcsema_real_eip !21
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %103 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !22
  store i64 %103, i64* %XCX, !mcsema_real_eip !22
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -80
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  store i64 %103, i64* %_allin_new_bt_52, !mcsema_real_eip !23
  %RDI_val.17 = load i64, i64* %XDI, !mcsema_real_eip !24
  %_load_rsp_ptr_53 = load i8*, i8** %_RSP_ptr_
  %RSP_val.18 = load i64, i64* %XSP, !mcsema_real_eip !24
  %_new_gep_54 = getelementptr i8, i8* %_load_rsp_ptr_53, i64 -8
  %104 = sub i64 %RSP_val.18, 8, !mcsema_real_eip !24
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_55, !mcsema_real_eip !24
  store volatile i8* %_new_gep_54, i8** %_RSP_ptr_
  store i64 %104, i64* %XSP, !mcsema_real_eip !24
  %105 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.17)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %105, i64* %XAX, !mcsema_real_eip !24
  %_load_rbp_ptr_56 = load i8*, i8** %_RBP_ptr_
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_56, i64 -88
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  store i64 %105, i64* %_allin_new_bt_58, !mcsema_real_eip !25
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -92
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %106 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !26
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !26
  store i32 0, i32* %107, !mcsema_real_eip !26
  br label %block_0x1a8, !mcsema_real_eip !12

block_0x1a8:                                      ; preds = %169, %block_0x189
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -92
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %108 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !27
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !27
  %_ptr_bt_248 = bitcast i32* %109 to i8*
  %_offset_above_rbp_249 = sub i64 %108, %_local_end_to_int_
  %_pot_address_in_parent_stack_250 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_249
  %_cond1_251 = icmp ugt i8* %_ptr_bt_248, %_local_stack_end_ptr_
  %_cond2_1_252 = icmp ugt i8* %_ptr_bt_248, %_parent_stack_end_ptr_
  %_cond2_2_253 = icmp ult i8* %_ptr_bt_248, %_parent_stack_start_ptr_
  %_cond2_254 = or i1 %_cond2_1_252, %_cond2_2_253
  %_cond4_255 = icmp ule i8* %_pot_address_in_parent_stack_250, %_parent_stack_end_ptr_
  %_cond1_n_cond2_256 = and i1 %_cond1_251, %_cond2_254
  %_cond1_n_cond2_cond3_257 = and i1 %_cond1_n_cond2_256, %_cond4_255
  br i1 %_cond1_n_cond2_cond3_257, label %110, label %111

; <label>:110:                                    ; preds = %block_0x1a8
  %_address_in_parent_stack_bt_259 = bitcast i8* %_pot_address_in_parent_stack_250 to i32*
  br label %111

; <label>:111:                                    ; preds = %block_0x1a8, %110
  %112 = phi i32* [ %109, %block_0x1a8 ], [ %_address_in_parent_stack_bt_259, %110 ]
  %_new_load_260 = load i32, i32* %112
  %113 = sub i32 %_new_load_260, 10, !mcsema_real_eip !27
  %114 = xor i32 %113, %_new_load_260, !mcsema_real_eip !27
  %115 = xor i32 %114, 10, !mcsema_real_eip !27
  %116 = and i32 %115, 16, !mcsema_real_eip !27
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !27
  store i1 %117, i1* %AF, !mcsema_real_eip !27
  %118 = trunc i32 %113 to i8, !mcsema_real_eip !27
  %119 = call i8 @llvm.ctpop.i8(i8 %118), !mcsema_real_eip !27
  %120 = trunc i8 %119 to i1, !mcsema_real_eip !27
  %121 = xor i1 %120, true, !mcsema_real_eip !27
  store i1 %121, i1* %PF, !mcsema_real_eip !27
  %122 = icmp eq i32 %113, 0, !mcsema_real_eip !27
  store i1 %122, i1* %ZF, !mcsema_real_eip !27
  %123 = lshr i32 %113, 31, !mcsema_real_eip !27
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !27
  store i1 %124, i1* %SF, !mcsema_real_eip !27
  %125 = icmp ult i32 %_new_load_260, 10, !mcsema_real_eip !27
  store i1 %125, i1* %CF, !mcsema_real_eip !27
  %126 = xor i32 %_new_load_260, 10, !mcsema_real_eip !27
  %127 = and i32 %126, %114, !mcsema_real_eip !27
  %128 = lshr i32 %127, 31, !mcsema_real_eip !27
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !27
  store i1 %129, i1* %OF, !mcsema_real_eip !27
  %130 = icmp eq i1 %124, %129, !mcsema_real_eip !28
  br i1 %130, label %block_0x1d1, label %block_0x1b2, !mcsema_real_eip !28

block_0x1b2:                                      ; preds = %111
  br i1 %_cond1_n_cond2_cond3_257, label %131, label %132

; <label>:131:                                    ; preds = %block_0x1b2
  %_address_in_parent_stack_bt_274 = bitcast i8* %_pot_address_in_parent_stack_250 to i32*
  br label %132

; <label>:132:                                    ; preds = %block_0x1b2, %131
  %133 = phi i32* [ %109, %block_0x1b2 ], [ %_address_in_parent_stack_bt_274, %131 ]
  %_new_load_275 = load i32, i32* %133
  %134 = zext i32 %_new_load_275 to i64, !mcsema_real_eip !29
  store i64 %134, i64* %XAX, !mcsema_real_eip !29
  %EAX_val.99 = load i32, i32* %EAX.12, !mcsema_real_eip !30
  %135 = add i32 1, %EAX_val.99, !mcsema_real_eip !30
  %136 = xor i32 %135, %EAX_val.99, !mcsema_real_eip !30
  %137 = xor i32 %136, 1, !mcsema_real_eip !30
  %138 = and i32 %137, 16, !mcsema_real_eip !30
  %139 = icmp ne i32 %138, 0, !mcsema_real_eip !30
  store i1 %139, i1* %AF, !mcsema_real_eip !30
  %140 = lshr i32 %135, 31, !mcsema_real_eip !30
  %141 = trunc i32 %140 to i1, !mcsema_real_eip !30
  store i1 %141, i1* %SF, !mcsema_real_eip !30
  %142 = icmp eq i32 %135, 0, !mcsema_real_eip !30
  store i1 %142, i1* %ZF, !mcsema_real_eip !30
  %143 = xor i32 %EAX_val.99, 1, !mcsema_real_eip !30
  %144 = xor i32 %143, -1, !mcsema_real_eip !30
  %145 = and i32 %144, %136, !mcsema_real_eip !30
  %146 = lshr i32 %145, 31, !mcsema_real_eip !30
  %147 = and i32 %146, 1, !mcsema_real_eip !30
  %148 = trunc i32 %147 to i1, !mcsema_real_eip !30
  store i1 %148, i1* %OF, !mcsema_real_eip !30
  %149 = trunc i32 %135 to i8, !mcsema_real_eip !30
  %150 = call i8 @llvm.ctpop.i8(i8 %149), !mcsema_real_eip !30
  %151 = trunc i8 %150 to i1, !mcsema_real_eip !30
  %152 = xor i1 %151, true, !mcsema_real_eip !30
  store i1 %152, i1* %PF, !mcsema_real_eip !30
  %153 = icmp ult i32 %135, %EAX_val.99, !mcsema_real_eip !30
  store i1 %153, i1* %CF, !mcsema_real_eip !30
  %154 = zext i32 %135 to i64, !mcsema_real_eip !30
  store i64 %154, i64* %XAX, !mcsema_real_eip !30
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -88
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %_ptr_to_int_276 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_offset_above_rbp_279 = sub i64 %_ptr_to_int_276, %_local_end_to_int_
  %_pot_address_in_parent_stack_280 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_279
  %_cond1_281 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_282 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_283 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_284 = or i1 %_cond2_1_282, %_cond2_2_283
  %_cond4_285 = icmp ule i8* %_pot_address_in_parent_stack_280, %_parent_stack_end_ptr_
  %_cond1_n_cond2_286 = and i1 %_cond1_281, %_cond2_284
  %_cond1_n_cond2_cond3_287 = and i1 %_cond1_n_cond2_286, %_cond4_285
  br i1 %_cond1_n_cond2_cond3_287, label %155, label %156

; <label>:155:                                    ; preds = %132
  %_address_in_parent_stack_bt_289 = bitcast i8* %_pot_address_in_parent_stack_280 to i64*
  br label %156

; <label>:156:                                    ; preds = %132, %155
  %157 = phi i64* [ %_allin_new_bt_70, %132 ], [ %_address_in_parent_stack_bt_289, %155 ]
  %_new_load_290 = load i64, i64* %157
  store i64 %_new_load_290, i64* %XCX, !mcsema_real_eip !31
  br i1 %_cond1_n_cond2_cond3_257, label %158, label %159

; <label>:158:                                    ; preds = %156
  %_address_in_parent_stack_bt_304 = bitcast i8* %_pot_address_in_parent_stack_250 to i32*
  br label %159

; <label>:159:                                    ; preds = %156, %158
  %160 = phi i32* [ %109, %156 ], [ %_address_in_parent_stack_bt_304, %158 ]
  %_new_load_305 = load i32, i32* %160
  %161 = sext i32 %_new_load_305 to i64, !mcsema_real_eip !32
  store i64 %161, i64* %XDX, !mcsema_real_eip !32
  %162 = mul i64 %161, 4, !mcsema_real_eip !33
  %163 = add i64 %_new_load_290, %162, !mcsema_real_eip !33
  %164 = inttoptr i64 %163 to i64*, !mcsema_real_eip !33
  %EAX_val.105 = load i32, i32* %EAX.12, !mcsema_real_eip !33
  %165 = inttoptr i64 %163 to i32*, !mcsema_real_eip !33
  store i32 %EAX_val.105, i32* %165, !mcsema_real_eip !33
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -92
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %166 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !34
  %167 = inttoptr i64 %166 to i32*, !mcsema_real_eip !34
  %_ptr_bt_308 = bitcast i32* %167 to i8*
  %_offset_above_rbp_309 = sub i64 %166, %_local_end_to_int_
  %_pot_address_in_parent_stack_310 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_309
  %_cond1_311 = icmp ugt i8* %_ptr_bt_308, %_local_stack_end_ptr_
  %_cond2_1_312 = icmp ugt i8* %_ptr_bt_308, %_parent_stack_end_ptr_
  %_cond2_2_313 = icmp ult i8* %_ptr_bt_308, %_parent_stack_start_ptr_
  %_cond2_314 = or i1 %_cond2_1_312, %_cond2_2_313
  %_cond4_315 = icmp ule i8* %_pot_address_in_parent_stack_310, %_parent_stack_end_ptr_
  %_cond1_n_cond2_316 = and i1 %_cond1_311, %_cond2_314
  %_cond1_n_cond2_cond3_317 = and i1 %_cond1_n_cond2_316, %_cond4_315
  br i1 %_cond1_n_cond2_cond3_317, label %168, label %169

; <label>:168:                                    ; preds = %159
  %_address_in_parent_stack_bt_319 = bitcast i8* %_pot_address_in_parent_stack_310 to i32*
  br label %169

; <label>:169:                                    ; preds = %159, %168
  %170 = phi i32* [ %167, %159 ], [ %_address_in_parent_stack_bt_319, %168 ]
  %_new_load_320 = load i32, i32* %170
  %171 = zext i32 %_new_load_320 to i64, !mcsema_real_eip !34
  store i64 %171, i64* %XAX, !mcsema_real_eip !34
  %EAX_val.108 = load i32, i32* %EAX.12, !mcsema_real_eip !35
  %172 = add i32 1, %EAX_val.108, !mcsema_real_eip !35
  %173 = xor i32 %172, %EAX_val.108, !mcsema_real_eip !35
  %174 = xor i32 %173, 1, !mcsema_real_eip !35
  %175 = and i32 %174, 16, !mcsema_real_eip !35
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !35
  store i1 %176, i1* %AF, !mcsema_real_eip !35
  %177 = lshr i32 %172, 31, !mcsema_real_eip !35
  %178 = trunc i32 %177 to i1, !mcsema_real_eip !35
  store i1 %178, i1* %SF, !mcsema_real_eip !35
  %179 = icmp eq i32 %172, 0, !mcsema_real_eip !35
  store i1 %179, i1* %ZF, !mcsema_real_eip !35
  %180 = xor i32 %EAX_val.108, 1, !mcsema_real_eip !35
  %181 = xor i32 %180, -1, !mcsema_real_eip !35
  %182 = and i32 %181, %173, !mcsema_real_eip !35
  %183 = lshr i32 %182, 31, !mcsema_real_eip !35
  %184 = and i32 %183, 1, !mcsema_real_eip !35
  %185 = trunc i32 %184 to i1, !mcsema_real_eip !35
  store i1 %185, i1* %OF, !mcsema_real_eip !35
  %186 = trunc i32 %172 to i8, !mcsema_real_eip !35
  %187 = call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !35
  %188 = trunc i8 %187 to i1, !mcsema_real_eip !35
  %189 = xor i1 %188, true, !mcsema_real_eip !35
  store i1 %189, i1* %PF, !mcsema_real_eip !35
  %190 = icmp ult i32 %172, %EAX_val.108, !mcsema_real_eip !35
  store i1 %190, i1* %CF, !mcsema_real_eip !35
  %191 = zext i32 %172 to i64, !mcsema_real_eip !35
  store i64 %191, i64* %XAX, !mcsema_real_eip !35
  %EAX_val.111 = load i32, i32* %EAX.12, !mcsema_real_eip !36
  store i32 %EAX_val.111, i32* %167, !mcsema_real_eip !36
  br label %block_0x1a8, !mcsema_real_eip !37

block_0x1d1:                                      ; preds = %111
  store i64 10, i64* %XAX, !mcsema_real_eip !38
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -64
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %192 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !39
  store i64 %192, i64* %XCX, !mcsema_real_eip !39
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -24
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %193 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !40
  %194 = inttoptr i64 %193 to i32*, !mcsema_real_eip !40
  %_ptr_bt_323 = bitcast i32* %194 to i8*
  %_offset_above_rbp_324 = sub i64 %193, %_local_end_to_int_
  %_pot_address_in_parent_stack_325 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_324
  %_cond1_326 = icmp ugt i8* %_ptr_bt_323, %_local_stack_end_ptr_
  %_cond2_1_327 = icmp ugt i8* %_ptr_bt_323, %_parent_stack_end_ptr_
  %_cond2_2_328 = icmp ult i8* %_ptr_bt_323, %_parent_stack_start_ptr_
  %_cond2_329 = or i1 %_cond2_1_327, %_cond2_2_328
  %_cond4_330 = icmp ule i8* %_pot_address_in_parent_stack_325, %_parent_stack_end_ptr_
  %_cond1_n_cond2_331 = and i1 %_cond1_326, %_cond2_329
  %_cond1_n_cond2_cond3_332 = and i1 %_cond1_n_cond2_331, %_cond4_330
  br i1 %_cond1_n_cond2_cond3_332, label %195, label %196

; <label>:195:                                    ; preds = %block_0x1d1
  %_address_in_parent_stack_bt_334 = bitcast i8* %_pot_address_in_parent_stack_325 to i32*
  br label %196

; <label>:196:                                    ; preds = %block_0x1d1, %195
  %197 = phi i32* [ %194, %block_0x1d1 ], [ %_address_in_parent_stack_bt_334, %195 ]
  %_new_load_335 = load i32, i32* %197
  %198 = zext i32 %_new_load_335 to i64, !mcsema_real_eip !40
  store i64 %198, i64* %XDI, !mcsema_real_eip !40
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -80
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %_ptr_to_int_336 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_339 = sub i64 %_ptr_to_int_336, %_local_end_to_int_
  %_pot_address_in_parent_stack_340 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_339
  %_cond1_341 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_342 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_343 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_344 = or i1 %_cond2_1_342, %_cond2_2_343
  %_cond4_345 = icmp ule i8* %_pot_address_in_parent_stack_340, %_parent_stack_end_ptr_
  %_cond1_n_cond2_346 = and i1 %_cond1_341, %_cond2_344
  %_cond1_n_cond2_cond3_347 = and i1 %_cond1_n_cond2_346, %_cond4_345
  br i1 %_cond1_n_cond2_cond3_347, label %199, label %200

; <label>:199:                                    ; preds = %196
  %_address_in_parent_stack_bt_349 = bitcast i8* %_pot_address_in_parent_stack_340 to i64*
  br label %200

; <label>:200:                                    ; preds = %196, %199
  %201 = phi i64* [ %_allin_new_bt_88, %196 ], [ %_address_in_parent_stack_bt_349, %199 ]
  %_new_load_350 = load i64, i64* %201
  store i64 %_new_load_350, i64* %XDX, !mcsema_real_eip !41
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -88
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %_ptr_to_int_351 = ptrtoint i64* %_allin_new_bt_91 to i64
  %_offset_above_rbp_354 = sub i64 %_ptr_to_int_351, %_local_end_to_int_
  %_pot_address_in_parent_stack_355 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_354
  %_cond1_356 = icmp ugt i8* %_new_gep_90, %_local_stack_end_ptr_
  %_cond2_1_357 = icmp ugt i8* %_new_gep_90, %_parent_stack_end_ptr_
  %_cond2_2_358 = icmp ult i8* %_new_gep_90, %_parent_stack_start_ptr_
  %_cond2_359 = or i1 %_cond2_1_357, %_cond2_2_358
  %_cond4_360 = icmp ule i8* %_pot_address_in_parent_stack_355, %_parent_stack_end_ptr_
  %_cond1_n_cond2_361 = and i1 %_cond1_356, %_cond2_359
  %_cond1_n_cond2_cond3_362 = and i1 %_cond1_n_cond2_361, %_cond4_360
  br i1 %_cond1_n_cond2_cond3_362, label %202, label %203

; <label>:202:                                    ; preds = %200
  %_address_in_parent_stack_bt_364 = bitcast i8* %_pot_address_in_parent_stack_355 to i64*
  br label %203

; <label>:203:                                    ; preds = %200, %202
  %204 = phi i64* [ %_allin_new_bt_91, %200 ], [ %_address_in_parent_stack_bt_364, %202 ]
  %_new_load_365 = load i64, i64* %204
  store i64 %_new_load_365, i64* %XSI, !mcsema_real_eip !42
  br i1 %_cond1_n_cond2_cond3_332, label %205, label %206

; <label>:205:                                    ; preds = %203
  %_address_in_parent_stack_bt_379 = bitcast i8* %_pot_address_in_parent_stack_325 to i32*
  br label %206

; <label>:206:                                    ; preds = %203, %205
  %207 = phi i32* [ %194, %203 ], [ %_address_in_parent_stack_bt_379, %205 ]
  %_new_load_380 = load i32, i32* %207
  %208 = zext i32 %_new_load_380 to i64, !mcsema_real_eip !43
  store i64 %208, i64* %R8, !mcsema_real_eip !43
  br i1 %_cond1_n_cond2_cond3_347, label %209, label %210

; <label>:209:                                    ; preds = %206
  %_address_in_parent_stack_bt_394 = bitcast i8* %_pot_address_in_parent_stack_340 to i64*
  br label %210

; <label>:210:                                    ; preds = %206, %209
  %211 = phi i64* [ %_allin_new_bt_88, %206 ], [ %_address_in_parent_stack_bt_394, %209 ]
  %_new_load_395 = load i64, i64* %211
  store i64 %_new_load_395, i64* %R9, !mcsema_real_eip !44
  br i1 %_cond1_n_cond2_cond3_362, label %212, label %213

; <label>:212:                                    ; preds = %210
  %_address_in_parent_stack_bt_409 = bitcast i8* %_pot_address_in_parent_stack_355 to i64*
  br label %213

; <label>:213:                                    ; preds = %210, %212
  %214 = phi i64* [ %_allin_new_bt_91, %210 ], [ %_address_in_parent_stack_bt_409, %212 ]
  %_new_load_410 = load i64, i64* %214
  store i64 %_new_load_410, i64* %R10, !mcsema_real_eip !45
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -104
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  store i64 %_new_load_365, i64* %_allin_new_bt_103, !mcsema_real_eip !46
  %RCX_val.46 = load i64, i64* %XCX, !mcsema_real_eip !47
  store i64 %RCX_val.46, i64* %XSI, !mcsema_real_eip !47
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -104
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %_ptr_to_int_411 = ptrtoint i64* %_allin_new_bt_106 to i64
  %_offset_above_rbp_414 = sub i64 %_ptr_to_int_411, %_local_end_to_int_
  %_pot_address_in_parent_stack_415 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_414
  %_cond1_416 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_417 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_418 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_419 = or i1 %_cond2_1_417, %_cond2_2_418
  %_cond4_420 = icmp ule i8* %_pot_address_in_parent_stack_415, %_parent_stack_end_ptr_
  %_cond1_n_cond2_421 = and i1 %_cond1_416, %_cond2_419
  %_cond1_n_cond2_cond3_422 = and i1 %_cond1_n_cond2_421, %_cond4_420
  br i1 %_cond1_n_cond2_cond3_422, label %215, label %216

; <label>:215:                                    ; preds = %213
  %_address_in_parent_stack_bt_424 = bitcast i8* %_pot_address_in_parent_stack_415 to i64*
  br label %216

; <label>:216:                                    ; preds = %213, %215
  %217 = phi i64* [ %_allin_new_bt_106, %213 ], [ %_address_in_parent_stack_bt_424, %215 ]
  %_new_load_425 = load i64, i64* %217
  store i64 %_new_load_425, i64* %R11, !mcsema_real_eip !48
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -112
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  store i64 %RCX_val.46, i64* %_allin_new_bt_109, !mcsema_real_eip !49
  %R11_val.50 = load i64, i64* %R11, !mcsema_real_eip !50
  store i64 %R11_val.50, i64* %XCX, !mcsema_real_eip !50
  %_load_rbp_ptr_110 = load i8*, i8** %_RBP_ptr_
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_110, i64 -116
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %R8D.52 = bitcast i64* %R8 to i32*, !mcsema_real_eip !51
  %R8D_val.53 = load i32, i32* %R8D.52, !mcsema_real_eip !51
  %218 = ptrtoint i64* %_allin_new_bt_112 to i64, !mcsema_real_eip !51
  %219 = inttoptr i64 %218 to i32*, !mcsema_real_eip !51
  store i32 %R8D_val.53, i32* %219, !mcsema_real_eip !51
  %EAX_val.55 = load i32, i32* %EAX.12, !mcsema_real_eip !52
  %220 = zext i32 %EAX_val.55 to i64, !mcsema_real_eip !52
  store i64 %220, i64* %R8, !mcsema_real_eip !52
  %_load_rbp_ptr_113 = load i8*, i8** %_RBP_ptr_
  %_new_gep_114 = getelementptr i8, i8* %_load_rbp_ptr_113, i64 -128
  %_allin_new_bt_115 = bitcast i8* %_new_gep_114 to i64*
  %R9_val.57 = load i64, i64* %R9, !mcsema_real_eip !53
  store i64 %R9_val.57, i64* %_allin_new_bt_115, !mcsema_real_eip !53
  %EAX_val.59 = load i32, i32* %EAX.12, !mcsema_real_eip !54
  %221 = zext i32 %EAX_val.59 to i64, !mcsema_real_eip !54
  store i64 %221, i64* %R9, !mcsema_real_eip !54
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -116
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %222 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !55
  %223 = inttoptr i64 %222 to i32*, !mcsema_real_eip !55
  %_ptr_bt_428 = bitcast i32* %223 to i8*
  %_offset_above_rbp_429 = sub i64 %222, %_local_end_to_int_
  %_pot_address_in_parent_stack_430 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_429
  %_cond1_431 = icmp ugt i8* %_ptr_bt_428, %_local_stack_end_ptr_
  %_cond2_1_432 = icmp ugt i8* %_ptr_bt_428, %_parent_stack_end_ptr_
  %_cond2_2_433 = icmp ult i8* %_ptr_bt_428, %_parent_stack_start_ptr_
  %_cond2_434 = or i1 %_cond2_1_432, %_cond2_2_433
  %_cond4_435 = icmp ule i8* %_pot_address_in_parent_stack_430, %_parent_stack_end_ptr_
  %_cond1_n_cond2_436 = and i1 %_cond1_431, %_cond2_434
  %_cond1_n_cond2_cond3_437 = and i1 %_cond1_n_cond2_436, %_cond4_435
  br i1 %_cond1_n_cond2_cond3_437, label %224, label %225

; <label>:224:                                    ; preds = %216
  %_address_in_parent_stack_bt_439 = bitcast i8* %_pot_address_in_parent_stack_430 to i32*
  br label %225

; <label>:225:                                    ; preds = %216, %224
  %226 = phi i32* [ %223, %216 ], [ %_address_in_parent_stack_bt_439, %224 ]
  %_new_load_440 = load i32, i32* %226
  %227 = zext i32 %_new_load_440 to i64, !mcsema_real_eip !55
  store i64 %227, i64* %XAX, !mcsema_real_eip !55
  %_load_rsp_ptr_119 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_121 = bitcast i8* %_load_rsp_ptr_119 to i64*
  %EAX_val.63 = load i32, i32* %EAX.12, !mcsema_real_eip !56
  %228 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !56
  %229 = inttoptr i64 %228 to i32*, !mcsema_real_eip !56
  store i32 %EAX_val.63, i32* %229, !mcsema_real_eip !56
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -112
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %_ptr_to_int_441 = ptrtoint i64* %_allin_new_bt_124 to i64
  %_offset_above_rbp_444 = sub i64 %_ptr_to_int_441, %_local_end_to_int_
  %_pot_address_in_parent_stack_445 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_444
  %_cond1_446 = icmp ugt i8* %_new_gep_123, %_local_stack_end_ptr_
  %_cond2_1_447 = icmp ugt i8* %_new_gep_123, %_parent_stack_end_ptr_
  %_cond2_2_448 = icmp ult i8* %_new_gep_123, %_parent_stack_start_ptr_
  %_cond2_449 = or i1 %_cond2_1_447, %_cond2_2_448
  %_cond4_450 = icmp ule i8* %_pot_address_in_parent_stack_445, %_parent_stack_end_ptr_
  %_cond1_n_cond2_451 = and i1 %_cond1_446, %_cond2_449
  %_cond1_n_cond2_cond3_452 = and i1 %_cond1_n_cond2_451, %_cond4_450
  br i1 %_cond1_n_cond2_cond3_452, label %230, label %231

; <label>:230:                                    ; preds = %225
  %_address_in_parent_stack_bt_454 = bitcast i8* %_pot_address_in_parent_stack_445 to i64*
  br label %231

; <label>:231:                                    ; preds = %225, %230
  %232 = phi i64* [ %_allin_new_bt_124, %225 ], [ %_address_in_parent_stack_bt_454, %230 ]
  %_new_load_455 = load i64, i64* %232
  store i64 %_new_load_455, i64* %XBX, !mcsema_real_eip !57
  %_load_rsp_ptr_125 = load i8*, i8** %_RSP_ptr_
  %_new_gep_126 = getelementptr i8, i8* %_load_rsp_ptr_125, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  store i64 %_new_load_455, i64* %_allin_new_bt_127, !mcsema_real_eip !58
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -128
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %_ptr_to_int_456 = ptrtoint i64* %_allin_new_bt_130 to i64
  %_offset_above_rbp_459 = sub i64 %_ptr_to_int_456, %_local_end_to_int_
  %_pot_address_in_parent_stack_460 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_459
  %_cond1_461 = icmp ugt i8* %_new_gep_129, %_local_stack_end_ptr_
  %_cond2_1_462 = icmp ugt i8* %_new_gep_129, %_parent_stack_end_ptr_
  %_cond2_2_463 = icmp ult i8* %_new_gep_129, %_parent_stack_start_ptr_
  %_cond2_464 = or i1 %_cond2_1_462, %_cond2_2_463
  %_cond4_465 = icmp ule i8* %_pot_address_in_parent_stack_460, %_parent_stack_end_ptr_
  %_cond1_n_cond2_466 = and i1 %_cond1_461, %_cond2_464
  %_cond1_n_cond2_cond3_467 = and i1 %_cond1_n_cond2_466, %_cond4_465
  br i1 %_cond1_n_cond2_cond3_467, label %233, label %234

; <label>:233:                                    ; preds = %231
  %_address_in_parent_stack_bt_469 = bitcast i8* %_pot_address_in_parent_stack_460 to i64*
  br label %234

; <label>:234:                                    ; preds = %231, %233
  %235 = phi i64* [ %_allin_new_bt_130, %231 ], [ %_address_in_parent_stack_bt_469, %233 ]
  %_new_load_470 = load i64, i64* %235
  store i64 %_new_load_470, i64* %R14, !mcsema_real_eip !59
  %_load_rsp_ptr_131 = load i8*, i8** %_RSP_ptr_
  %_new_gep_132 = getelementptr i8, i8* %_load_rsp_ptr_131, i64 16
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  store i64 %_new_load_470, i64* %_allin_new_bt_133, !mcsema_real_eip !60
  %_load_rsp_ptr_134 = load i8*, i8** %_RSP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rsp_ptr_134, i64 24
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %R10_val.71 = load i64, i64* %R10, !mcsema_real_eip !61
  store i64 %R10_val.71, i64* %_allin_new_bt_136, !mcsema_real_eip !61
  %_load_rsp_ptr_137 = load i8*, i8** %_RSP_ptr_
  %RSP_val.72 = load i64, i64* %XSP, !mcsema_real_eip !62
  %_new_gep_138 = getelementptr i8, i8* %_load_rsp_ptr_137, i64 -8
  %236 = sub i64 %RSP_val.72, 8, !mcsema_real_eip !62
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_139, !mcsema_real_eip !62
  store volatile i8* %_new_gep_138, i8** %_RSP_ptr_
  store i64 %236, i64* %XSP, !mcsema_real_eip !62
  %_load_rbp_ptr_195 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_138, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_195)
  %_rsp_fix_197 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_198 = getelementptr i8, i8* %_rsp_fix_197, i64 8
  store i8* %_gep_fix_198, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x261 to i64), i64* %XDI, !mcsema_real_eip !63
  %_load_rbp_ptr_140 = load i8*, i8** %_RBP_ptr_
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_140, i64 -96
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %EAX_val.75 = load i32, i32* %EAX.12, !mcsema_real_eip !64
  %237 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !64
  %238 = inttoptr i64 %237 to i32*, !mcsema_real_eip !64
  store i32 %EAX_val.75, i32* %238, !mcsema_real_eip !64
  %_load_rbp_ptr_143 = load i8*, i8** %_RBP_ptr_
  %_new_gep_144 = getelementptr i8, i8* %_load_rbp_ptr_143, i64 -96
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %239 = ptrtoint i64* %_allin_new_bt_145 to i64, !mcsema_real_eip !65
  %240 = inttoptr i64 %239 to i32*, !mcsema_real_eip !65
  %_ptr_bt_473 = bitcast i32* %240 to i8*
  %_offset_above_rbp_474 = sub i64 %239, %_local_end_to_int_
  %_pot_address_in_parent_stack_475 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_474
  %_cond1_476 = icmp ugt i8* %_ptr_bt_473, %_local_stack_end_ptr_
  %_cond2_1_477 = icmp ugt i8* %_ptr_bt_473, %_parent_stack_end_ptr_
  %_cond2_2_478 = icmp ult i8* %_ptr_bt_473, %_parent_stack_start_ptr_
  %_cond2_479 = or i1 %_cond2_1_477, %_cond2_2_478
  %_cond4_480 = icmp ule i8* %_pot_address_in_parent_stack_475, %_parent_stack_end_ptr_
  %_cond1_n_cond2_481 = and i1 %_cond1_476, %_cond2_479
  %_cond1_n_cond2_cond3_482 = and i1 %_cond1_n_cond2_481, %_cond4_480
  br i1 %_cond1_n_cond2_cond3_482, label %241, label %242

; <label>:241:                                    ; preds = %234
  %_address_in_parent_stack_bt_484 = bitcast i8* %_pot_address_in_parent_stack_475 to i32*
  br label %242

; <label>:242:                                    ; preds = %234, %241
  %243 = phi i32* [ %240, %234 ], [ %_address_in_parent_stack_bt_484, %241 ]
  %_new_load_485 = load i32, i32* %243
  %244 = zext i32 %_new_load_485 to i64, !mcsema_real_eip !65
  store i64 %244, i64* %XSI, !mcsema_real_eip !65
  %AL.77 = bitcast i64* %XAX to i8*, !mcsema_real_eip !66
  store i8 0, i8* %AL.77, !mcsema_real_eip !66
  %RDI_val.78 = load i64, i64* %XDI, !mcsema_real_eip !67
  %RDX_val.80 = load i64, i64* %XDX, !mcsema_real_eip !67
  %RCX_val.81 = load i64, i64* %XCX, !mcsema_real_eip !67
  %R8_val.82 = load i64, i64* %R8, !mcsema_real_eip !67
  %R9_val.83 = load i64, i64* %R9, !mcsema_real_eip !67
  %_load_rsp_ptr_146 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_147 = bitcast i8* %_load_rsp_ptr_146 to i64*
  %_ptr_to_int_486 = ptrtoint i64* %_allin_new_bt_147 to i64
  %_offset_above_rbp_489 = sub i64 %_ptr_to_int_486, %_local_end_to_int_
  %_pot_address_in_parent_stack_490 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_489
  %_cond1_491 = icmp ugt i8* %_load_rsp_ptr_146, %_local_stack_end_ptr_
  %_cond2_1_492 = icmp ugt i8* %_load_rsp_ptr_146, %_parent_stack_end_ptr_
  %_cond2_2_493 = icmp ult i8* %_load_rsp_ptr_146, %_parent_stack_start_ptr_
  %_cond2_494 = or i1 %_cond2_1_492, %_cond2_2_493
  %_cond4_495 = icmp ule i8* %_pot_address_in_parent_stack_490, %_parent_stack_end_ptr_
  %_cond1_n_cond2_496 = and i1 %_cond1_491, %_cond2_494
  %_cond1_n_cond2_cond3_497 = and i1 %_cond1_n_cond2_496, %_cond4_495
  br i1 %_cond1_n_cond2_cond3_497, label %245, label %246

; <label>:245:                                    ; preds = %242
  %_address_in_parent_stack_bt_499 = bitcast i8* %_pot_address_in_parent_stack_490 to i64*
  br label %246

; <label>:246:                                    ; preds = %242, %245
  %247 = phi i64* [ %_allin_new_bt_147, %242 ], [ %_address_in_parent_stack_bt_499, %245 ]
  %_new_load_500 = load i64, i64* %247
  %_new_gep_148 = getelementptr i8, i8* %_load_rsp_ptr_146, i64 8
  %_allin_new_bt_149 = bitcast i8* %_new_gep_148 to i64*
  %_ptr_to_int_501 = ptrtoint i64* %_allin_new_bt_149 to i64
  %_offset_above_rbp_504 = sub i64 %_ptr_to_int_501, %_local_end_to_int_
  %_pot_address_in_parent_stack_505 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_504
  %_cond1_506 = icmp ugt i8* %_new_gep_148, %_local_stack_end_ptr_
  %_cond2_1_507 = icmp ugt i8* %_new_gep_148, %_parent_stack_end_ptr_
  %_cond2_2_508 = icmp ult i8* %_new_gep_148, %_parent_stack_start_ptr_
  %_cond2_509 = or i1 %_cond2_1_507, %_cond2_2_508
  %_cond4_510 = icmp ule i8* %_pot_address_in_parent_stack_505, %_parent_stack_end_ptr_
  %_cond1_n_cond2_511 = and i1 %_cond1_506, %_cond2_509
  %_cond1_n_cond2_cond3_512 = and i1 %_cond1_n_cond2_511, %_cond4_510
  br i1 %_cond1_n_cond2_cond3_512, label %248, label %249

; <label>:248:                                    ; preds = %246
  %_address_in_parent_stack_bt_514 = bitcast i8* %_pot_address_in_parent_stack_505 to i64*
  br label %249

; <label>:249:                                    ; preds = %246, %248
  %250 = phi i64* [ %_allin_new_bt_149, %246 ], [ %_address_in_parent_stack_bt_514, %248 ]
  %_new_load_515 = load i64, i64* %250
  %_new_gep_150 = getelementptr i8, i8* %_new_gep_148, i64 8
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  %_ptr_to_int_516 = ptrtoint i64* %_allin_new_bt_151 to i64
  %_offset_above_rbp_519 = sub i64 %_ptr_to_int_516, %_local_end_to_int_
  %_pot_address_in_parent_stack_520 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_519
  %_cond1_521 = icmp ugt i8* %_new_gep_150, %_local_stack_end_ptr_
  %_cond2_1_522 = icmp ugt i8* %_new_gep_150, %_parent_stack_end_ptr_
  %_cond2_2_523 = icmp ult i8* %_new_gep_150, %_parent_stack_start_ptr_
  %_cond2_524 = or i1 %_cond2_1_522, %_cond2_2_523
  %_cond4_525 = icmp ule i8* %_pot_address_in_parent_stack_520, %_parent_stack_end_ptr_
  %_cond1_n_cond2_526 = and i1 %_cond1_521, %_cond2_524
  %_cond1_n_cond2_cond3_527 = and i1 %_cond1_n_cond2_526, %_cond4_525
  br i1 %_cond1_n_cond2_cond3_527, label %251, label %252

; <label>:251:                                    ; preds = %249
  %_address_in_parent_stack_bt_529 = bitcast i8* %_pot_address_in_parent_stack_520 to i64*
  br label %252

; <label>:252:                                    ; preds = %249, %251
  %253 = phi i64* [ %_allin_new_bt_151, %249 ], [ %_address_in_parent_stack_bt_529, %251 ]
  %_new_load_530 = load i64, i64* %253
  %_new_gep_152 = getelementptr i8, i8* %_new_gep_150, i64 8
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %_ptr_to_int_531 = ptrtoint i64* %_allin_new_bt_153 to i64
  %_offset_above_rbp_534 = sub i64 %_ptr_to_int_531, %_local_end_to_int_
  %_pot_address_in_parent_stack_535 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_534
  %_cond1_536 = icmp ugt i8* %_new_gep_152, %_local_stack_end_ptr_
  %_cond2_1_537 = icmp ugt i8* %_new_gep_152, %_parent_stack_end_ptr_
  %_cond2_2_538 = icmp ult i8* %_new_gep_152, %_parent_stack_start_ptr_
  %_cond2_539 = or i1 %_cond2_1_537, %_cond2_2_538
  %_cond4_540 = icmp ule i8* %_pot_address_in_parent_stack_535, %_parent_stack_end_ptr_
  %_cond1_n_cond2_541 = and i1 %_cond1_536, %_cond2_539
  %_cond1_n_cond2_cond3_542 = and i1 %_cond1_n_cond2_541, %_cond4_540
  br i1 %_cond1_n_cond2_cond3_542, label %254, label %255

; <label>:254:                                    ; preds = %252
  %_address_in_parent_stack_bt_544 = bitcast i8* %_pot_address_in_parent_stack_535 to i64*
  br label %255

; <label>:255:                                    ; preds = %252, %254
  %256 = phi i64* [ %_allin_new_bt_153, %252 ], [ %_address_in_parent_stack_bt_544, %254 ]
  %_new_load_545 = load i64, i64* %256
  %_new_gep_154 = getelementptr i8, i8* %_new_gep_152, i64 8
  %_allin_new_bt_155 = bitcast i8* %_new_gep_154 to i64*
  %_ptr_to_int_546 = ptrtoint i64* %_allin_new_bt_155 to i64
  %_offset_above_rbp_549 = sub i64 %_ptr_to_int_546, %_local_end_to_int_
  %_pot_address_in_parent_stack_550 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_549
  %_cond1_551 = icmp ugt i8* %_new_gep_154, %_local_stack_end_ptr_
  %_cond2_1_552 = icmp ugt i8* %_new_gep_154, %_parent_stack_end_ptr_
  %_cond2_2_553 = icmp ult i8* %_new_gep_154, %_parent_stack_start_ptr_
  %_cond2_554 = or i1 %_cond2_1_552, %_cond2_2_553
  %_cond4_555 = icmp ule i8* %_pot_address_in_parent_stack_550, %_parent_stack_end_ptr_
  %_cond1_n_cond2_556 = and i1 %_cond1_551, %_cond2_554
  %_cond1_n_cond2_cond3_557 = and i1 %_cond1_n_cond2_556, %_cond4_555
  br i1 %_cond1_n_cond2_cond3_557, label %257, label %258

; <label>:257:                                    ; preds = %255
  %_address_in_parent_stack_bt_559 = bitcast i8* %_pot_address_in_parent_stack_550 to i64*
  br label %258

; <label>:258:                                    ; preds = %255, %257
  %259 = phi i64* [ %_allin_new_bt_155, %255 ], [ %_address_in_parent_stack_bt_559, %257 ]
  %_new_load_560 = load i64, i64* %259
  %_new_gep_156 = getelementptr i8, i8* %_new_gep_154, i64 8
  %_allin_new_bt_157 = bitcast i8* %_new_gep_156 to i64*
  %_ptr_to_int_561 = ptrtoint i64* %_allin_new_bt_157 to i64
  %_offset_above_rbp_564 = sub i64 %_ptr_to_int_561, %_local_end_to_int_
  %_pot_address_in_parent_stack_565 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_564
  %_cond1_566 = icmp ugt i8* %_new_gep_156, %_local_stack_end_ptr_
  %_cond2_1_567 = icmp ugt i8* %_new_gep_156, %_parent_stack_end_ptr_
  %_cond2_2_568 = icmp ult i8* %_new_gep_156, %_parent_stack_start_ptr_
  %_cond2_569 = or i1 %_cond2_1_567, %_cond2_2_568
  %_cond4_570 = icmp ule i8* %_pot_address_in_parent_stack_565, %_parent_stack_end_ptr_
  %_cond1_n_cond2_571 = and i1 %_cond1_566, %_cond2_569
  %_cond1_n_cond2_cond3_572 = and i1 %_cond1_n_cond2_571, %_cond4_570
  br i1 %_cond1_n_cond2_cond3_572, label %260, label %261

; <label>:260:                                    ; preds = %258
  %_address_in_parent_stack_bt_574 = bitcast i8* %_pot_address_in_parent_stack_565 to i64*
  br label %261

; <label>:261:                                    ; preds = %258, %260
  %262 = phi i64* [ %_allin_new_bt_157, %258 ], [ %_address_in_parent_stack_bt_574, %260 ]
  %_new_load_575 = load i64, i64* %262
  %RSP_val.85 = load i64, i64* %XSP, !mcsema_real_eip !67
  %_new_gep_159 = getelementptr i8, i8* %_load_rsp_ptr_146, i64 -8
  %263 = sub i64 %RSP_val.85, 8, !mcsema_real_eip !67
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_160, !mcsema_real_eip !67
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_
  store i64 %263, i64* %XSP, !mcsema_real_eip !67
  %264 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.78, i64 %244, i64 %RDX_val.80, i64 %RCX_val.81, i64 %R8_val.82, i64 %R9_val.83, i64 %_new_load_500, i64 %_new_load_515, i64 %_new_load_530, i64 %_new_load_545, i64 %_new_load_560, i64 %_new_load_575)
  %_rsp_fix_199 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_200 = getelementptr i8, i8* %_rsp_fix_199, i64 8
  store i8* %_gep_fix_200, i8** %_RSP_ptr_
  store i64 %264, i64* %XAX, !mcsema_real_eip !67
  %_load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_
  %_new_gep_162 = getelementptr i8, i8* %_load_rbp_ptr_161, i64 -96
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %265 = ptrtoint i64* %_allin_new_bt_163 to i64, !mcsema_real_eip !68
  %266 = inttoptr i64 %265 to i32*, !mcsema_real_eip !68
  %_ptr_bt_578 = bitcast i32* %266 to i8*
  %_offset_above_rbp_579 = sub i64 %265, %_local_end_to_int_
  %_pot_address_in_parent_stack_580 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_579
  %_cond1_581 = icmp ugt i8* %_ptr_bt_578, %_local_stack_end_ptr_
  %_cond2_1_582 = icmp ugt i8* %_ptr_bt_578, %_parent_stack_end_ptr_
  %_cond2_2_583 = icmp ult i8* %_ptr_bt_578, %_parent_stack_start_ptr_
  %_cond2_584 = or i1 %_cond2_1_582, %_cond2_2_583
  %_cond4_585 = icmp ule i8* %_pot_address_in_parent_stack_580, %_parent_stack_end_ptr_
  %_cond1_n_cond2_586 = and i1 %_cond1_581, %_cond2_584
  %_cond1_n_cond2_cond3_587 = and i1 %_cond1_n_cond2_586, %_cond4_585
  br i1 %_cond1_n_cond2_cond3_587, label %267, label %268

; <label>:267:                                    ; preds = %261
  %_address_in_parent_stack_bt_589 = bitcast i8* %_pot_address_in_parent_stack_580 to i32*
  br label %268

; <label>:268:                                    ; preds = %261, %267
  %269 = phi i32* [ %266, %261 ], [ %_address_in_parent_stack_bt_589, %267 ]
  %_new_load_590 = load i32, i32* %269
  %270 = zext i32 %_new_load_590 to i64, !mcsema_real_eip !68
  store i64 %270, i64* %XSI, !mcsema_real_eip !68
  %_new_gep_165 = getelementptr i8, i8* %_load_rbp_ptr_161, i64 -132
  %_allin_new_bt_166 = bitcast i8* %_new_gep_165 to i64*
  %EAX_val.89 = load i32, i32* %EAX.12, !mcsema_real_eip !69
  %271 = ptrtoint i64* %_allin_new_bt_166 to i64, !mcsema_real_eip !69
  %272 = inttoptr i64 %271 to i32*, !mcsema_real_eip !69
  store i32 %EAX_val.89, i32* %272, !mcsema_real_eip !69
  %ESI.90 = bitcast i64* %XSI to i32*, !mcsema_real_eip !70
  %ESI_val.91 = load i32, i32* %ESI.90, !mcsema_real_eip !70
  %273 = zext i32 %ESI_val.91 to i64, !mcsema_real_eip !70
  store i64 %273, i64* %XAX, !mcsema_real_eip !70
  %_load_rsp_ptr_167 = load i8*, i8** %_RSP_ptr_
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !71
  %_new_gep_168 = getelementptr i8, i8* %_load_rsp_ptr_167, i64 160
  %274 = add i64 160, %RSP_val.92, !mcsema_real_eip !71
  %_trans_p2i_169 = ptrtoint i8* %_new_gep_168 to i64
  %_trans_p2i_170 = ptrtoint i8* %_load_rsp_ptr_167 to i64
  %_trans_xor_171 = xor i64 %_trans_p2i_169, %_trans_p2i_170
  %275 = xor i64 %_trans_xor_171, 160, !mcsema_real_eip !71
  %276 = and i64 %275, 16, !mcsema_real_eip !71
  %277 = icmp ne i64 %276, 0, !mcsema_real_eip !71
  store i1 %277, i1* %AF, !mcsema_real_eip !71
  %278 = lshr i64 %274, 63, !mcsema_real_eip !71
  %279 = trunc i64 %278 to i1, !mcsema_real_eip !71
  store i1 %279, i1* %SF, !mcsema_real_eip !71
  %_trans_icmp_eq_173 = icmp eq i64 %_trans_p2i_169, 0
  store i1 %_trans_icmp_eq_173, i1* %ZF, !mcsema_real_eip !71
  %_trans_xor_175 = xor i64 %_trans_p2i_170, 160
  %280 = xor i64 %_trans_xor_175, -1, !mcsema_real_eip !71
  %281 = and i64 %280, %_trans_xor_171, !mcsema_real_eip !71
  %282 = lshr i64 %281, 63, !mcsema_real_eip !71
  %283 = and i64 %282, 1, !mcsema_real_eip !71
  %284 = trunc i64 %283 to i1, !mcsema_real_eip !71
  store i1 %284, i1* %OF, !mcsema_real_eip !71
  %_trans_trunc_180 = trunc i64 %_trans_p2i_169 to i8
  %285 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_180), !mcsema_real_eip !71
  %286 = trunc i8 %285 to i1, !mcsema_real_eip !71
  %287 = xor i1 %286, true, !mcsema_real_eip !71
  store i1 %287, i1* %PF, !mcsema_real_eip !71
  %_trans_icmp_ne_182 = icmp ne i64 %_trans_p2i_169, %RSP_val.92
  store i1 %_trans_icmp_ne_182, i1* %CF, !mcsema_real_eip !71
  store volatile i8* %_new_gep_168, i8** %_RSP_ptr_
  store i64 %274, i64* %XSP, !mcsema_real_eip !71
  %_allin_new_bt_184 = bitcast i8* %_new_gep_168 to i64*
  %_ptr_to_int_591 = ptrtoint i64* %_allin_new_bt_184 to i64
  %_offset_above_rbp_594 = sub i64 %_ptr_to_int_591, %_local_end_to_int_
  %_pot_address_in_parent_stack_595 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_594
  %_cond1_596 = icmp ugt i8* %_new_gep_168, %_local_stack_end_ptr_
  %_cond2_1_597 = icmp ugt i8* %_new_gep_168, %_parent_stack_end_ptr_
  %_cond2_2_598 = icmp ult i8* %_new_gep_168, %_parent_stack_start_ptr_
  %_cond2_599 = or i1 %_cond2_1_597, %_cond2_2_598
  %_cond4_600 = icmp ule i8* %_pot_address_in_parent_stack_595, %_parent_stack_end_ptr_
  %_cond1_n_cond2_601 = and i1 %_cond1_596, %_cond2_599
  %_cond1_n_cond2_cond3_602 = and i1 %_cond1_n_cond2_601, %_cond4_600
  br i1 %_cond1_n_cond2_cond3_602, label %288, label %289

; <label>:288:                                    ; preds = %268
  %_address_in_parent_stack_bt_604 = bitcast i8* %_pot_address_in_parent_stack_595 to i64*
  br label %289

; <label>:289:                                    ; preds = %268, %288
  %290 = phi i64* [ %_allin_new_bt_184, %268 ], [ %_address_in_parent_stack_bt_604, %288 ]
  %_new_load_605 = load i64, i64* %290
  store i64 %_new_load_605, i64* %XBX, !mcsema_real_eip !72
  %_new_gep_185 = getelementptr i8, i8* %_new_gep_168, i64 8
  %291 = add i64 %274, 8, !mcsema_real_eip !72
  store volatile i8* %_new_gep_185, i8** %_RSP_ptr_
  store i64 %291, i64* %XSP, !mcsema_real_eip !72
  %_allin_new_bt_187 = bitcast i8* %_new_gep_185 to i64*
  %_ptr_to_int_606 = ptrtoint i64* %_allin_new_bt_187 to i64
  %_offset_above_rbp_609 = sub i64 %_ptr_to_int_606, %_local_end_to_int_
  %_pot_address_in_parent_stack_610 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_609
  %_cond1_611 = icmp ugt i8* %_new_gep_185, %_local_stack_end_ptr_
  %_cond2_1_612 = icmp ugt i8* %_new_gep_185, %_parent_stack_end_ptr_
  %_cond2_2_613 = icmp ult i8* %_new_gep_185, %_parent_stack_start_ptr_
  %_cond2_614 = or i1 %_cond2_1_612, %_cond2_2_613
  %_cond4_615 = icmp ule i8* %_pot_address_in_parent_stack_610, %_parent_stack_end_ptr_
  %_cond1_n_cond2_616 = and i1 %_cond1_611, %_cond2_614
  %_cond1_n_cond2_cond3_617 = and i1 %_cond1_n_cond2_616, %_cond4_615
  br i1 %_cond1_n_cond2_cond3_617, label %292, label %293

; <label>:292:                                    ; preds = %289
  %_address_in_parent_stack_bt_619 = bitcast i8* %_pot_address_in_parent_stack_610 to i64*
  br label %293

; <label>:293:                                    ; preds = %289, %292
  %294 = phi i64* [ %_allin_new_bt_187, %289 ], [ %_address_in_parent_stack_bt_619, %292 ]
  %_new_load_620 = load i64, i64* %294
  store i64 %_new_load_620, i64* %R14, !mcsema_real_eip !73
  %_new_gep_188 = getelementptr i8, i8* %_new_gep_185, i64 8
  %295 = add i64 %291, 8, !mcsema_real_eip !73
  store volatile i8* %_new_gep_188, i8** %_RSP_ptr_
  store i64 %295, i64* %XSP, !mcsema_real_eip !73
  %_allin_new_bt_190 = bitcast i8* %_new_gep_188 to i64*
  %_ptr_to_int_621 = ptrtoint i64* %_allin_new_bt_190 to i64
  %_offset_above_rbp_624 = sub i64 %_ptr_to_int_621, %_local_end_to_int_
  %_pot_address_in_parent_stack_625 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_624
  %_cond1_626 = icmp ugt i8* %_new_gep_188, %_local_stack_end_ptr_
  %_cond2_1_627 = icmp ugt i8* %_new_gep_188, %_parent_stack_end_ptr_
  %_cond2_2_628 = icmp ult i8* %_new_gep_188, %_parent_stack_start_ptr_
  %_cond2_629 = or i1 %_cond2_1_627, %_cond2_2_628
  %_cond4_630 = icmp ule i8* %_pot_address_in_parent_stack_625, %_parent_stack_end_ptr_
  %_cond1_n_cond2_631 = and i1 %_cond1_626, %_cond2_629
  %_cond1_n_cond2_cond3_632 = and i1 %_cond1_n_cond2_631, %_cond4_630
  br i1 %_cond1_n_cond2_cond3_632, label %296, label %297

; <label>:296:                                    ; preds = %293
  %_address_in_parent_stack_bt_634 = bitcast i8* %_pot_address_in_parent_stack_625 to i64*
  br label %297

; <label>:297:                                    ; preds = %293, %296
  %298 = phi i64* [ %_allin_new_bt_190, %293 ], [ %_address_in_parent_stack_bt_634, %296 ]
  %_new_load_635 = load i64, i64* %298
  %_new_int2ptr_ = inttoptr i64 %_new_load_635 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_635, i64* %XBP, !mcsema_real_eip !74
  %_new_gep_191 = getelementptr i8, i8* %_new_gep_188, i64 8
  %299 = add i64 %295, 8, !mcsema_real_eip !74
  store volatile i8* %_new_gep_191, i8** %_RSP_ptr_
  store i64 %299, i64* %XSP, !mcsema_real_eip !74
  %_new_gep_193 = getelementptr i8, i8* %_new_gep_191, i64 8
  %300 = add i64 %299, 8, !mcsema_real_eip !75
  %_allin_new_bt_194 = bitcast i8* %_new_gep_191 to i64*
  %_ptr_to_int_636 = ptrtoint i64* %_allin_new_bt_194 to i64
  %_offset_above_rbp_639 = sub i64 %_ptr_to_int_636, %_local_end_to_int_
  %_pot_address_in_parent_stack_640 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_639
  %_cond1_641 = icmp ugt i8* %_new_gep_191, %_local_stack_end_ptr_
  %_cond2_1_642 = icmp ugt i8* %_new_gep_191, %_parent_stack_end_ptr_
  %_cond2_2_643 = icmp ult i8* %_new_gep_191, %_parent_stack_start_ptr_
  %_cond2_644 = or i1 %_cond2_1_642, %_cond2_2_643
  %_cond4_645 = icmp ule i8* %_pot_address_in_parent_stack_640, %_parent_stack_end_ptr_
  %_cond1_n_cond2_646 = and i1 %_cond1_641, %_cond2_644
  %_cond1_n_cond2_cond3_647 = and i1 %_cond1_n_cond2_646, %_cond4_645
  br i1 %_cond1_n_cond2_cond3_647, label %301, label %302

; <label>:301:                                    ; preds = %297
  %_address_in_parent_stack_bt_649 = bitcast i8* %_pot_address_in_parent_stack_640 to i64*
  br label %302

; <label>:302:                                    ; preds = %297, %301
  %303 = phi i64* [ %_allin_new_bt_194, %297 ], [ %_address_in_parent_stack_bt_649, %301 ]
  %_new_load_650 = load i64, i64* %303
  store i64 %_new_load_650, i64* %XIP, !mcsema_real_eip !75
  store volatile i8* %_new_gep_193, i8** %_RSP_ptr_
  store i64 %300, i64* %XSP, !mcsema_real_eip !75
  ret void, !mcsema_real_eip !75
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 108
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 108
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !76
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !76
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !76
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !76
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !76
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !76
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !76
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !76
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !76
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !76
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !76
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !76
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !76
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !76
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !76
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !76
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !76
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !76
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !76
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !76
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !76
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !76
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !76
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !76
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !76
  br label %block_0x0, !mcsema_real_eip !76

block_0x0:                                        ; preds = %entry
  %RSP_val.113 = load i64, i64* %XSP, !mcsema_real_eip !76
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.113, 8, !mcsema_real_eip !76
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !76
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !77
  %RBX_val.115 = load i64, i64* %XBX, !mcsema_real_eip !78
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.116 = load i64, i64* %XSP, !mcsema_real_eip !78
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.116, 8, !mcsema_real_eip !78
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.115, i64* %_allin_new_bt_4, !mcsema_real_eip !78
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !78
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 40
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
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !79
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 32
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %_ptr_to_int_206 = ptrtoint i64* %_allin_new_bt_10 to i64
  %_offset_above_rbp_209 = sub i64 %_ptr_to_int_206, %_local_end_to_int_
  %_pot_address_in_parent_stack_210 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_209
  %_cond1_211 = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_212 = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_213 = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_214 = or i1 %_cond2_1_212, %_cond2_2_213
  %_cond4_215 = icmp ule i8* %_pot_address_in_parent_stack_210, %_parent_stack_end_ptr_
  %_cond1_n_cond2_216 = and i1 %_cond1_211, %_cond2_214
  %_cond1_n_cond2_cond3_217 = and i1 %_cond1_n_cond2_216, %_cond4_215
  br i1 %_cond1_n_cond2_cond3_217, label %6, label %7

; <label>:6:                                      ; preds = %4
  %_address_in_parent_stack_bt_219 = bitcast i8* %_pot_address_in_parent_stack_210 to i64*
  br label %7

; <label>:7:                                      ; preds = %4, %6
  %8 = phi i64* [ %_allin_new_bt_10, %4 ], [ %_address_in_parent_stack_bt_219, %6 ]
  %_new_load_220 = load i64, i64* %8
  store i64 %_new_load_220, i64* %R10, !mcsema_real_eip !80
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %_ptr_to_int_221 = ptrtoint i64* %_allin_new_bt_13 to i64
  %_offset_above_rbp_224 = sub i64 %_ptr_to_int_221, %_local_end_to_int_
  %_pot_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_224
  %_cond1_226 = icmp ugt i8* %_new_gep_12, %_local_stack_end_ptr_
  %_cond2_1_227 = icmp ugt i8* %_new_gep_12, %_parent_stack_end_ptr_
  %_cond2_2_228 = icmp ult i8* %_new_gep_12, %_parent_stack_start_ptr_
  %_cond2_229 = or i1 %_cond2_1_227, %_cond2_2_228
  %_cond4_230 = icmp ule i8* %_pot_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond1_n_cond2_231 = and i1 %_cond1_226, %_cond2_229
  %_cond1_n_cond2_cond3_232 = and i1 %_cond1_n_cond2_231, %_cond4_230
  br i1 %_cond1_n_cond2_cond3_232, label %9, label %10

; <label>:9:                                      ; preds = %7
  %_address_in_parent_stack_bt_234 = bitcast i8* %_pot_address_in_parent_stack_225 to i64*
  br label %10

; <label>:10:                                     ; preds = %7, %9
  %11 = phi i64* [ %_allin_new_bt_13, %7 ], [ %_address_in_parent_stack_bt_234, %9 ]
  %_new_load_235 = load i64, i64* %11
  store i64 %_new_load_235, i64* %R11, !mcsema_real_eip !81
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 16
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %12 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !82
  %13 = inttoptr i64 %12 to i32*, !mcsema_real_eip !82
  %_ptr_bt_238 = bitcast i32* %13 to i8*
  %_offset_above_rbp_239 = sub i64 %12, %_local_end_to_int_
  %_pot_address_in_parent_stack_240 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_239
  %_cond1_241 = icmp ugt i8* %_ptr_bt_238, %_local_stack_end_ptr_
  %_cond2_1_242 = icmp ugt i8* %_ptr_bt_238, %_parent_stack_end_ptr_
  %_cond2_2_243 = icmp ult i8* %_ptr_bt_238, %_parent_stack_start_ptr_
  %_cond2_244 = or i1 %_cond2_1_242, %_cond2_2_243
  %_cond4_245 = icmp ule i8* %_pot_address_in_parent_stack_240, %_parent_stack_end_ptr_
  %_cond1_n_cond2_246 = and i1 %_cond1_241, %_cond2_244
  %_cond1_n_cond2_cond3_247 = and i1 %_cond1_n_cond2_246, %_cond4_245
  br i1 %_cond1_n_cond2_cond3_247, label %14, label %15

; <label>:14:                                     ; preds = %10
  %_address_in_parent_stack_bt_249 = bitcast i8* %_pot_address_in_parent_stack_240 to i32*
  br label %15

; <label>:15:                                     ; preds = %10, %14
  %16 = phi i32* [ %13, %10 ], [ %_address_in_parent_stack_bt_249, %14 ]
  %_new_load_250 = load i32, i32* %16
  %17 = zext i32 %_new_load_250 to i64, !mcsema_real_eip !82
  store i64 %17, i64* %XBX, !mcsema_real_eip !82
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -12
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %EDI.122 = bitcast i64* %XDI to i32*, !mcsema_real_eip !83
  %EDI_val.123 = load i32, i32* %EDI.122, !mcsema_real_eip !83
  %18 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !83
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !83
  store i32 %EDI_val.123, i32* %19, !mcsema_real_eip !83
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -24
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %RSI_val.125 = load i64, i64* %XSI, !mcsema_real_eip !84
  store i64 %RSI_val.125, i64* %_allin_new_bt_22, !mcsema_real_eip !84
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -32
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %RDX_val.127 = load i64, i64* %XDX, !mcsema_real_eip !85
  store i64 %RDX_val.127, i64* %_allin_new_bt_25, !mcsema_real_eip !85
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -40
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %RCX_val.129 = load i64, i64* %XCX, !mcsema_real_eip !86
  store i64 %RCX_val.129, i64* %_allin_new_bt_28, !mcsema_real_eip !86
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -44
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %R8D.131 = bitcast i64* %R8 to i32*, !mcsema_real_eip !87
  %R8D_val.132 = load i32, i32* %R8D.131, !mcsema_real_eip !87
  %20 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !87
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !87
  store i32 %R8D_val.132, i32* %21, !mcsema_real_eip !87
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -48
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %R9D.134 = bitcast i64* %R9 to i32*, !mcsema_real_eip !88
  %R9D_val.135 = load i32, i32* %R9D.134, !mcsema_real_eip !88
  %22 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !88
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !88
  store i32 %R9D_val.135, i32* %23, !mcsema_real_eip !88
  %_load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_35, i64 -52
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %EBX.137 = bitcast i64* %XBX to i32*, !mcsema_real_eip !89
  %EBX_val.138 = load i32, i32* %EBX.137, !mcsema_real_eip !89
  %24 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !89
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !89
  store i32 %EBX_val.138, i32* %25, !mcsema_real_eip !89
  %_load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_38, i64 -64
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %R11_val.140 = load i64, i64* %R11, !mcsema_real_eip !90
  store i64 %R11_val.140, i64* %_allin_new_bt_40, !mcsema_real_eip !90
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -72
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %R10_val.142 = load i64, i64* %R10, !mcsema_real_eip !91
  store i64 %R10_val.142, i64* %_allin_new_bt_43, !mcsema_real_eip !91
  %_load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_44, i64 -80
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %RAX_val.144 = load i64, i64* %XAX, !mcsema_real_eip !92
  store i64 %RAX_val.144, i64* %_allin_new_bt_46, !mcsema_real_eip !92
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -84
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_49 to i64, !mcsema_real_eip !93
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !93
  store i32 0, i32* %27, !mcsema_real_eip !93
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -12
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %28 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !94
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !94
  %_ptr_bt_253 = bitcast i32* %29 to i8*
  %_offset_above_rbp_254 = sub i64 %28, %_local_end_to_int_
  %_pot_address_in_parent_stack_255 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_254
  %_cond1_256 = icmp ugt i8* %_ptr_bt_253, %_local_stack_end_ptr_
  %_cond2_1_257 = icmp ugt i8* %_ptr_bt_253, %_parent_stack_end_ptr_
  %_cond2_2_258 = icmp ult i8* %_ptr_bt_253, %_parent_stack_start_ptr_
  %_cond2_259 = or i1 %_cond2_1_257, %_cond2_2_258
  %_cond4_260 = icmp ule i8* %_pot_address_in_parent_stack_255, %_parent_stack_end_ptr_
  %_cond1_n_cond2_261 = and i1 %_cond1_256, %_cond2_259
  %_cond1_n_cond2_cond3_262 = and i1 %_cond1_n_cond2_261, %_cond4_260
  br i1 %_cond1_n_cond2_cond3_262, label %30, label %31

; <label>:30:                                     ; preds = %15
  %_address_in_parent_stack_bt_264 = bitcast i8* %_pot_address_in_parent_stack_255 to i32*
  br label %31

; <label>:31:                                     ; preds = %15, %30
  %32 = phi i32* [ %29, %15 ], [ %_address_in_parent_stack_bt_264, %30 ]
  %_new_load_265 = load i32, i32* %32
  %33 = zext i32 %_new_load_265 to i64, !mcsema_real_eip !94
  store i64 %33, i64* %XDI, !mcsema_real_eip !94
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -84
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %34 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !95
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !95
  %_ptr_bt_268 = bitcast i32* %35 to i8*
  %_offset_above_rbp_269 = sub i64 %34, %_local_end_to_int_
  %_pot_address_in_parent_stack_270 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_269
  %_cond1_271 = icmp ugt i8* %_ptr_bt_268, %_local_stack_end_ptr_
  %_cond2_1_272 = icmp ugt i8* %_ptr_bt_268, %_parent_stack_end_ptr_
  %_cond2_2_273 = icmp ult i8* %_ptr_bt_268, %_parent_stack_start_ptr_
  %_cond2_274 = or i1 %_cond2_1_272, %_cond2_2_273
  %_cond4_275 = icmp ule i8* %_pot_address_in_parent_stack_270, %_parent_stack_end_ptr_
  %_cond1_n_cond2_276 = and i1 %_cond1_271, %_cond2_274
  %_cond1_n_cond2_cond3_277 = and i1 %_cond1_n_cond2_276, %_cond4_275
  br i1 %_cond1_n_cond2_cond3_277, label %36, label %37

; <label>:36:                                     ; preds = %31
  %_address_in_parent_stack_bt_279 = bitcast i8* %_pot_address_in_parent_stack_270 to i32*
  br label %37

; <label>:37:                                     ; preds = %31, %36
  %38 = phi i32* [ %35, %31 ], [ %_address_in_parent_stack_bt_279, %36 ]
  %_new_load_280 = load i32, i32* %38
  %EDI_val.149 = load i32, i32* %EDI.122, !mcsema_real_eip !95
  %39 = add i32 %EDI_val.149, %_new_load_280, !mcsema_real_eip !95
  %40 = xor i32 %39, %_new_load_280, !mcsema_real_eip !95
  %41 = xor i32 %40, %EDI_val.149, !mcsema_real_eip !95
  %42 = and i32 %41, 16, !mcsema_real_eip !95
  %43 = icmp ne i32 %42, 0, !mcsema_real_eip !95
  store i1 %43, i1* %AF, !mcsema_real_eip !95
  %44 = lshr i32 %39, 31, !mcsema_real_eip !95
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !95
  store i1 %45, i1* %SF, !mcsema_real_eip !95
  %46 = icmp eq i32 %39, 0, !mcsema_real_eip !95
  store i1 %46, i1* %ZF, !mcsema_real_eip !95
  %47 = xor i32 %_new_load_280, %EDI_val.149, !mcsema_real_eip !95
  %48 = xor i32 %47, -1, !mcsema_real_eip !95
  %49 = and i32 %48, %40, !mcsema_real_eip !95
  %50 = lshr i32 %49, 31, !mcsema_real_eip !95
  %51 = and i32 %50, 1, !mcsema_real_eip !95
  %52 = trunc i32 %51 to i1, !mcsema_real_eip !95
  store i1 %52, i1* %OF, !mcsema_real_eip !95
  %53 = trunc i32 %39 to i8, !mcsema_real_eip !95
  %54 = call i8 @llvm.ctpop.i8(i8 %53), !mcsema_real_eip !95
  %55 = trunc i8 %54 to i1, !mcsema_real_eip !95
  %56 = xor i1 %55, true, !mcsema_real_eip !95
  store i1 %56, i1* %PF, !mcsema_real_eip !95
  %57 = icmp ult i32 %39, %_new_load_280, !mcsema_real_eip !95
  store i1 %57, i1* %CF, !mcsema_real_eip !95
  %58 = zext i32 %39 to i64, !mcsema_real_eip !95
  store i64 %58, i64* %XDI, !mcsema_real_eip !95
  %EDI_val.152 = load i32, i32* %EDI.122, !mcsema_real_eip !96
  store i32 %EDI_val.152, i32* %35, !mcsema_real_eip !96
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -88
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %59 = ptrtoint i64* %_allin_new_bt_61 to i64, !mcsema_real_eip !97
  %60 = inttoptr i64 %59 to i32*, !mcsema_real_eip !97
  store i32 0, i32* %60, !mcsema_real_eip !97
  br label %block_0x51, !mcsema_real_eip !98

block_0x51:                                       ; preds = %133, %37
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -88
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %61 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !98
  %62 = inttoptr i64 %61 to i32*, !mcsema_real_eip !98
  %_ptr_bt_283 = bitcast i32* %62 to i8*
  %_offset_above_rbp_284 = sub i64 %61, %_local_end_to_int_
  %_pot_address_in_parent_stack_285 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_284
  %_cond1_286 = icmp ugt i8* %_ptr_bt_283, %_local_stack_end_ptr_
  %_cond2_1_287 = icmp ugt i8* %_ptr_bt_283, %_parent_stack_end_ptr_
  %_cond2_2_288 = icmp ult i8* %_ptr_bt_283, %_parent_stack_start_ptr_
  %_cond2_289 = or i1 %_cond2_1_287, %_cond2_2_288
  %_cond4_290 = icmp ule i8* %_pot_address_in_parent_stack_285, %_parent_stack_end_ptr_
  %_cond1_n_cond2_291 = and i1 %_cond1_286, %_cond2_289
  %_cond1_n_cond2_cond3_292 = and i1 %_cond1_n_cond2_291, %_cond4_290
  br i1 %_cond1_n_cond2_cond3_292, label %63, label %64

; <label>:63:                                     ; preds = %block_0x51
  %_address_in_parent_stack_bt_294 = bitcast i8* %_pot_address_in_parent_stack_285 to i32*
  br label %64

; <label>:64:                                     ; preds = %block_0x51, %63
  %65 = phi i32* [ %62, %block_0x51 ], [ %_address_in_parent_stack_bt_294, %63 ]
  %_new_load_295 = load i32, i32* %65
  %66 = zext i32 %_new_load_295 to i64, !mcsema_real_eip !98
  store i64 %66, i64* %XAX, !mcsema_real_eip !98
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -44
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %EAX.156 = bitcast i64* %XAX to i32*, !mcsema_real_eip !99
  %EAX_val.157 = load i32, i32* %EAX.156, !mcsema_real_eip !99
  %67 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !99
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !99
  %_ptr_bt_298 = bitcast i32* %68 to i8*
  %_offset_above_rbp_299 = sub i64 %67, %_local_end_to_int_
  %_pot_address_in_parent_stack_300 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_299
  %_cond1_301 = icmp ugt i8* %_ptr_bt_298, %_local_stack_end_ptr_
  %_cond2_1_302 = icmp ugt i8* %_ptr_bt_298, %_parent_stack_end_ptr_
  %_cond2_2_303 = icmp ult i8* %_ptr_bt_298, %_parent_stack_start_ptr_
  %_cond2_304 = or i1 %_cond2_1_302, %_cond2_2_303
  %_cond4_305 = icmp ule i8* %_pot_address_in_parent_stack_300, %_parent_stack_end_ptr_
  %_cond1_n_cond2_306 = and i1 %_cond1_301, %_cond2_304
  %_cond1_n_cond2_cond3_307 = and i1 %_cond1_n_cond2_306, %_cond4_305
  br i1 %_cond1_n_cond2_cond3_307, label %69, label %70

; <label>:69:                                     ; preds = %64
  %_address_in_parent_stack_bt_309 = bitcast i8* %_pot_address_in_parent_stack_300 to i32*
  br label %70

; <label>:70:                                     ; preds = %64, %69
  %71 = phi i32* [ %68, %64 ], [ %_address_in_parent_stack_bt_309, %69 ]
  %_new_load_310 = load i32, i32* %71
  %72 = sub i32 %EAX_val.157, %_new_load_310, !mcsema_real_eip !99
  %73 = xor i32 %72, %EAX_val.157, !mcsema_real_eip !99
  %74 = xor i32 %73, %_new_load_310, !mcsema_real_eip !99
  %75 = and i32 %74, 16, !mcsema_real_eip !99
  %76 = icmp ne i32 %75, 0, !mcsema_real_eip !99
  store i1 %76, i1* %AF, !mcsema_real_eip !99
  %77 = trunc i32 %72 to i8, !mcsema_real_eip !99
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !99
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !99
  %80 = xor i1 %79, true, !mcsema_real_eip !99
  store i1 %80, i1* %PF, !mcsema_real_eip !99
  %81 = icmp eq i32 %72, 0, !mcsema_real_eip !99
  store i1 %81, i1* %ZF, !mcsema_real_eip !99
  %82 = lshr i32 %72, 31, !mcsema_real_eip !99
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !99
  store i1 %83, i1* %SF, !mcsema_real_eip !99
  %84 = icmp ult i32 %EAX_val.157, %_new_load_310, !mcsema_real_eip !99
  store i1 %84, i1* %CF, !mcsema_real_eip !99
  %85 = xor i32 %EAX_val.157, %_new_load_310, !mcsema_real_eip !99
  %86 = and i32 %85, %73, !mcsema_real_eip !99
  %87 = lshr i32 %86, 31, !mcsema_real_eip !99
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !99
  store i1 %88, i1* %OF, !mcsema_real_eip !99
  %89 = icmp eq i1 %83, %88, !mcsema_real_eip !100
  br i1 %89, label %block_0x7c, label %block_0x5d, !mcsema_real_eip !100

block_0x5d:                                       ; preds = %70
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -24
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  %_ptr_to_int_311 = ptrtoint i64* %_allin_new_bt_70 to i64
  %_offset_above_rbp_314 = sub i64 %_ptr_to_int_311, %_local_end_to_int_
  %_pot_address_in_parent_stack_315 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_314
  %_cond1_316 = icmp ugt i8* %_new_gep_69, %_local_stack_end_ptr_
  %_cond2_1_317 = icmp ugt i8* %_new_gep_69, %_parent_stack_end_ptr_
  %_cond2_2_318 = icmp ult i8* %_new_gep_69, %_parent_stack_start_ptr_
  %_cond2_319 = or i1 %_cond2_1_317, %_cond2_2_318
  %_cond4_320 = icmp ule i8* %_pot_address_in_parent_stack_315, %_parent_stack_end_ptr_
  %_cond1_n_cond2_321 = and i1 %_cond1_316, %_cond2_319
  %_cond1_n_cond2_cond3_322 = and i1 %_cond1_n_cond2_321, %_cond4_320
  br i1 %_cond1_n_cond2_cond3_322, label %90, label %91

; <label>:90:                                     ; preds = %block_0x5d
  %_address_in_parent_stack_bt_324 = bitcast i8* %_pot_address_in_parent_stack_315 to i64*
  br label %91

; <label>:91:                                     ; preds = %block_0x5d, %90
  %92 = phi i64* [ %_allin_new_bt_70, %block_0x5d ], [ %_address_in_parent_stack_bt_324, %90 ]
  %_new_load_325 = load i64, i64* %92
  store i64 %_new_load_325, i64* %XAX, !mcsema_real_eip !101
  br i1 %_cond1_n_cond2_cond3_292, label %93, label %94

; <label>:93:                                     ; preds = %91
  %_address_in_parent_stack_bt_339 = bitcast i8* %_pot_address_in_parent_stack_285 to i32*
  br label %94

; <label>:94:                                     ; preds = %91, %93
  %95 = phi i32* [ %62, %91 ], [ %_address_in_parent_stack_bt_339, %93 ]
  %_new_load_340 = load i32, i32* %95
  %96 = sext i32 %_new_load_340 to i64, !mcsema_real_eip !102
  store i64 %96, i64* %XCX, !mcsema_real_eip !102
  %97 = mul i64 %96, 4, !mcsema_real_eip !103
  %98 = add i64 %_new_load_325, %97, !mcsema_real_eip !103
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !103
  %100 = inttoptr i64 %98 to i32*, !mcsema_real_eip !103
  %_ptr_bt_343 = bitcast i32* %100 to i8*
  %_offset_above_rbp_344 = sub i64 %98, %_local_end_to_int_
  %_pot_address_in_parent_stack_345 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_344
  %_cond1_346 = icmp ugt i8* %_ptr_bt_343, %_local_stack_end_ptr_
  %_cond2_1_347 = icmp ugt i8* %_ptr_bt_343, %_parent_stack_end_ptr_
  %_cond2_2_348 = icmp ult i8* %_ptr_bt_343, %_parent_stack_start_ptr_
  %_cond2_349 = or i1 %_cond2_1_347, %_cond2_2_348
  %_cond4_350 = icmp ule i8* %_pot_address_in_parent_stack_345, %_parent_stack_end_ptr_
  %_cond1_n_cond2_351 = and i1 %_cond1_346, %_cond2_349
  %_cond1_n_cond2_cond3_352 = and i1 %_cond1_n_cond2_351, %_cond4_350
  br i1 %_cond1_n_cond2_cond3_352, label %101, label %102

; <label>:101:                                    ; preds = %94
  %_address_in_parent_stack_bt_354 = bitcast i8* %_pot_address_in_parent_stack_345 to i32*
  br label %102

; <label>:102:                                    ; preds = %94, %101
  %103 = phi i32* [ %100, %94 ], [ %_address_in_parent_stack_bt_354, %101 ]
  %_new_load_355 = load i32, i32* %103
  %104 = zext i32 %_new_load_355 to i64, !mcsema_real_eip !103
  store i64 %104, i64* %XDX, !mcsema_real_eip !103
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -84
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %105 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !104
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !104
  %_ptr_bt_358 = bitcast i32* %106 to i8*
  %_offset_above_rbp_359 = sub i64 %105, %_local_end_to_int_
  %_pot_address_in_parent_stack_360 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_359
  %_cond1_361 = icmp ugt i8* %_ptr_bt_358, %_local_stack_end_ptr_
  %_cond2_1_362 = icmp ugt i8* %_ptr_bt_358, %_parent_stack_end_ptr_
  %_cond2_2_363 = icmp ult i8* %_ptr_bt_358, %_parent_stack_start_ptr_
  %_cond2_364 = or i1 %_cond2_1_362, %_cond2_2_363
  %_cond4_365 = icmp ule i8* %_pot_address_in_parent_stack_360, %_parent_stack_end_ptr_
  %_cond1_n_cond2_366 = and i1 %_cond1_361, %_cond2_364
  %_cond1_n_cond2_cond3_367 = and i1 %_cond1_n_cond2_366, %_cond4_365
  br i1 %_cond1_n_cond2_cond3_367, label %107, label %108

; <label>:107:                                    ; preds = %102
  %_address_in_parent_stack_bt_369 = bitcast i8* %_pot_address_in_parent_stack_360 to i32*
  br label %108

; <label>:108:                                    ; preds = %102, %107
  %109 = phi i32* [ %106, %102 ], [ %_address_in_parent_stack_bt_369, %107 ]
  %_new_load_370 = load i32, i32* %109
  %EDX.172 = bitcast i64* %XDX to i32*, !mcsema_real_eip !104
  %EDX_val.173 = load i32, i32* %EDX.172, !mcsema_real_eip !104
  %110 = add i32 %EDX_val.173, %_new_load_370, !mcsema_real_eip !104
  %111 = xor i32 %110, %_new_load_370, !mcsema_real_eip !104
  %112 = xor i32 %111, %EDX_val.173, !mcsema_real_eip !104
  %113 = and i32 %112, 16, !mcsema_real_eip !104
  %114 = icmp ne i32 %113, 0, !mcsema_real_eip !104
  store i1 %114, i1* %AF, !mcsema_real_eip !104
  %115 = lshr i32 %110, 31, !mcsema_real_eip !104
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !104
  store i1 %116, i1* %SF, !mcsema_real_eip !104
  %117 = icmp eq i32 %110, 0, !mcsema_real_eip !104
  store i1 %117, i1* %ZF, !mcsema_real_eip !104
  %118 = xor i32 %_new_load_370, %EDX_val.173, !mcsema_real_eip !104
  %119 = xor i32 %118, -1, !mcsema_real_eip !104
  %120 = and i32 %119, %111, !mcsema_real_eip !104
  %121 = lshr i32 %120, 31, !mcsema_real_eip !104
  %122 = and i32 %121, 1, !mcsema_real_eip !104
  %123 = trunc i32 %122 to i1, !mcsema_real_eip !104
  store i1 %123, i1* %OF, !mcsema_real_eip !104
  %124 = trunc i32 %110 to i8, !mcsema_real_eip !104
  %125 = call i8 @llvm.ctpop.i8(i8 %124), !mcsema_real_eip !104
  %126 = trunc i8 %125 to i1, !mcsema_real_eip !104
  %127 = xor i1 %126, true, !mcsema_real_eip !104
  store i1 %127, i1* %PF, !mcsema_real_eip !104
  %128 = icmp ult i32 %110, %_new_load_370, !mcsema_real_eip !104
  store i1 %128, i1* %CF, !mcsema_real_eip !104
  %129 = zext i32 %110 to i64, !mcsema_real_eip !104
  store i64 %129, i64* %XDX, !mcsema_real_eip !104
  %EDX_val.176 = load i32, i32* %EDX.172, !mcsema_real_eip !105
  store i32 %EDX_val.176, i32* %106, !mcsema_real_eip !105
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -88
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %130 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !106
  %131 = inttoptr i64 %130 to i32*, !mcsema_real_eip !106
  %_ptr_bt_373 = bitcast i32* %131 to i8*
  %_offset_above_rbp_374 = sub i64 %130, %_local_end_to_int_
  %_pot_address_in_parent_stack_375 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_374
  %_cond1_376 = icmp ugt i8* %_ptr_bt_373, %_local_stack_end_ptr_
  %_cond2_1_377 = icmp ugt i8* %_ptr_bt_373, %_parent_stack_end_ptr_
  %_cond2_2_378 = icmp ult i8* %_ptr_bt_373, %_parent_stack_start_ptr_
  %_cond2_379 = or i1 %_cond2_1_377, %_cond2_2_378
  %_cond4_380 = icmp ule i8* %_pot_address_in_parent_stack_375, %_parent_stack_end_ptr_
  %_cond1_n_cond2_381 = and i1 %_cond1_376, %_cond2_379
  %_cond1_n_cond2_cond3_382 = and i1 %_cond1_n_cond2_381, %_cond4_380
  br i1 %_cond1_n_cond2_cond3_382, label %132, label %133

; <label>:132:                                    ; preds = %108
  %_address_in_parent_stack_bt_384 = bitcast i8* %_pot_address_in_parent_stack_375 to i32*
  br label %133

; <label>:133:                                    ; preds = %108, %132
  %134 = phi i32* [ %131, %108 ], [ %_address_in_parent_stack_bt_384, %132 ]
  %_new_load_385 = load i32, i32* %134
  %135 = zext i32 %_new_load_385 to i64, !mcsema_real_eip !106
  store i64 %135, i64* %XAX, !mcsema_real_eip !106
  %EAX_val.179 = load i32, i32* %EAX.156, !mcsema_real_eip !107
  %136 = add i32 1, %EAX_val.179, !mcsema_real_eip !107
  %137 = xor i32 %136, %EAX_val.179, !mcsema_real_eip !107
  %138 = xor i32 %137, 1, !mcsema_real_eip !107
  %139 = and i32 %138, 16, !mcsema_real_eip !107
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !107
  store i1 %140, i1* %AF, !mcsema_real_eip !107
  %141 = lshr i32 %136, 31, !mcsema_real_eip !107
  %142 = trunc i32 %141 to i1, !mcsema_real_eip !107
  store i1 %142, i1* %SF, !mcsema_real_eip !107
  %143 = icmp eq i32 %136, 0, !mcsema_real_eip !107
  store i1 %143, i1* %ZF, !mcsema_real_eip !107
  %144 = xor i32 %EAX_val.179, 1, !mcsema_real_eip !107
  %145 = xor i32 %144, -1, !mcsema_real_eip !107
  %146 = and i32 %145, %137, !mcsema_real_eip !107
  %147 = lshr i32 %146, 31, !mcsema_real_eip !107
  %148 = and i32 %147, 1, !mcsema_real_eip !107
  %149 = trunc i32 %148 to i1, !mcsema_real_eip !107
  store i1 %149, i1* %OF, !mcsema_real_eip !107
  %150 = trunc i32 %136 to i8, !mcsema_real_eip !107
  %151 = call i8 @llvm.ctpop.i8(i8 %150), !mcsema_real_eip !107
  %152 = trunc i8 %151 to i1, !mcsema_real_eip !107
  %153 = xor i1 %152, true, !mcsema_real_eip !107
  store i1 %153, i1* %PF, !mcsema_real_eip !107
  %154 = icmp ult i32 %136, %EAX_val.179, !mcsema_real_eip !107
  store i1 %154, i1* %CF, !mcsema_real_eip !107
  %155 = zext i32 %136 to i64, !mcsema_real_eip !107
  store i64 %155, i64* %XAX, !mcsema_real_eip !107
  %EAX_val.182 = load i32, i32* %EAX.156, !mcsema_real_eip !108
  store i32 %EAX_val.182, i32* %131, !mcsema_real_eip !108
  br label %block_0x51, !mcsema_real_eip !109

block_0x7c:                                       ; preds = %70
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -32
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %_ptr_to_int_386 = ptrtoint i64* %_allin_new_bt_88 to i64
  %_offset_above_rbp_389 = sub i64 %_ptr_to_int_386, %_local_end_to_int_
  %_pot_address_in_parent_stack_390 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_389
  %_cond1_391 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_392 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_393 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_394 = or i1 %_cond2_1_392, %_cond2_2_393
  %_cond4_395 = icmp ule i8* %_pot_address_in_parent_stack_390, %_parent_stack_end_ptr_
  %_cond1_n_cond2_396 = and i1 %_cond1_391, %_cond2_394
  %_cond1_n_cond2_cond3_397 = and i1 %_cond1_n_cond2_396, %_cond4_395
  br i1 %_cond1_n_cond2_cond3_397, label %156, label %157

; <label>:156:                                    ; preds = %block_0x7c
  %_address_in_parent_stack_bt_399 = bitcast i8* %_pot_address_in_parent_stack_390 to i64*
  br label %157

; <label>:157:                                    ; preds = %block_0x7c, %156
  %158 = phi i64* [ %_allin_new_bt_88, %block_0x7c ], [ %_address_in_parent_stack_bt_399, %156 ]
  %_new_load_400 = load i64, i64* %158
  store i64 %_new_load_400, i64* %XAX, !mcsema_real_eip !110
  %159 = inttoptr i64 %_new_load_400 to i64*, !mcsema_real_eip !111
  %160 = inttoptr i64 %_new_load_400 to i32*, !mcsema_real_eip !111
  %_ptr_bt_403 = bitcast i32* %160 to i8*
  %_offset_above_rbp_404 = sub i64 %_new_load_400, %_local_end_to_int_
  %_pot_address_in_parent_stack_405 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_404
  %_cond1_406 = icmp ugt i8* %_ptr_bt_403, %_local_stack_end_ptr_
  %_cond2_1_407 = icmp ugt i8* %_ptr_bt_403, %_parent_stack_end_ptr_
  %_cond2_2_408 = icmp ult i8* %_ptr_bt_403, %_parent_stack_start_ptr_
  %_cond2_409 = or i1 %_cond2_1_407, %_cond2_2_408
  %_cond4_410 = icmp ule i8* %_pot_address_in_parent_stack_405, %_parent_stack_end_ptr_
  %_cond1_n_cond2_411 = and i1 %_cond1_406, %_cond2_409
  %_cond1_n_cond2_cond3_412 = and i1 %_cond1_n_cond2_411, %_cond4_410
  br i1 %_cond1_n_cond2_cond3_412, label %161, label %162

; <label>:161:                                    ; preds = %157
  %_address_in_parent_stack_bt_414 = bitcast i8* %_pot_address_in_parent_stack_405 to i32*
  br label %162

; <label>:162:                                    ; preds = %157, %161
  %163 = phi i32* [ %160, %157 ], [ %_address_in_parent_stack_bt_414, %161 ]
  %_new_load_415 = load i32, i32* %163
  %164 = zext i32 %_new_load_415 to i64, !mcsema_real_eip !111
  store i64 %164, i64* %XCX, !mcsema_real_eip !111
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -84
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %165 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !112
  %166 = inttoptr i64 %165 to i32*, !mcsema_real_eip !112
  %_ptr_bt_418 = bitcast i32* %166 to i8*
  %_offset_above_rbp_419 = sub i64 %165, %_local_end_to_int_
  %_pot_address_in_parent_stack_420 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_419
  %_cond1_421 = icmp ugt i8* %_ptr_bt_418, %_local_stack_end_ptr_
  %_cond2_1_422 = icmp ugt i8* %_ptr_bt_418, %_parent_stack_end_ptr_
  %_cond2_2_423 = icmp ult i8* %_ptr_bt_418, %_parent_stack_start_ptr_
  %_cond2_424 = or i1 %_cond2_1_422, %_cond2_2_423
  %_cond4_425 = icmp ule i8* %_pot_address_in_parent_stack_420, %_parent_stack_end_ptr_
  %_cond1_n_cond2_426 = and i1 %_cond1_421, %_cond2_424
  %_cond1_n_cond2_cond3_427 = and i1 %_cond1_n_cond2_426, %_cond4_425
  br i1 %_cond1_n_cond2_cond3_427, label %167, label %168

; <label>:167:                                    ; preds = %162
  %_address_in_parent_stack_bt_429 = bitcast i8* %_pot_address_in_parent_stack_420 to i32*
  br label %168

; <label>:168:                                    ; preds = %162, %167
  %169 = phi i32* [ %166, %162 ], [ %_address_in_parent_stack_bt_429, %167 ]
  %_new_load_430 = load i32, i32* %169
  %ECX.161 = bitcast i64* %XCX to i32*, !mcsema_real_eip !112
  %ECX_val.162 = load i32, i32* %ECX.161, !mcsema_real_eip !112
  %170 = add i32 %ECX_val.162, %_new_load_430, !mcsema_real_eip !112
  %171 = xor i32 %170, %_new_load_430, !mcsema_real_eip !112
  %172 = xor i32 %171, %ECX_val.162, !mcsema_real_eip !112
  %173 = and i32 %172, 16, !mcsema_real_eip !112
  %174 = icmp ne i32 %173, 0, !mcsema_real_eip !112
  store i1 %174, i1* %AF, !mcsema_real_eip !112
  %175 = lshr i32 %170, 31, !mcsema_real_eip !112
  %176 = trunc i32 %175 to i1, !mcsema_real_eip !112
  store i1 %176, i1* %SF, !mcsema_real_eip !112
  %177 = icmp eq i32 %170, 0, !mcsema_real_eip !112
  store i1 %177, i1* %ZF, !mcsema_real_eip !112
  %178 = xor i32 %_new_load_430, %ECX_val.162, !mcsema_real_eip !112
  %179 = xor i32 %178, -1, !mcsema_real_eip !112
  %180 = and i32 %179, %171, !mcsema_real_eip !112
  %181 = lshr i32 %180, 31, !mcsema_real_eip !112
  %182 = and i32 %181, 1, !mcsema_real_eip !112
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !112
  store i1 %183, i1* %OF, !mcsema_real_eip !112
  %184 = trunc i32 %170 to i8, !mcsema_real_eip !112
  %185 = call i8 @llvm.ctpop.i8(i8 %184), !mcsema_real_eip !112
  %186 = trunc i8 %185 to i1, !mcsema_real_eip !112
  %187 = xor i1 %186, true, !mcsema_real_eip !112
  store i1 %187, i1* %PF, !mcsema_real_eip !112
  %188 = icmp ult i32 %170, %_new_load_430, !mcsema_real_eip !112
  store i1 %188, i1* %CF, !mcsema_real_eip !112
  %189 = zext i32 %170 to i64, !mcsema_real_eip !112
  store i64 %189, i64* %XCX, !mcsema_real_eip !112
  %ECX_val.165 = load i32, i32* %ECX.161, !mcsema_real_eip !113
  store i32 %ECX_val.165, i32* %166, !mcsema_real_eip !113
  %_load_rbp_ptr_95 = load i8*, i8** %_RBP_ptr_
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_95, i64 -92
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %190 = ptrtoint i64* %_allin_new_bt_97 to i64, !mcsema_real_eip !114
  %191 = inttoptr i64 %190 to i32*, !mcsema_real_eip !114
  store i32 0, i32* %191, !mcsema_real_eip !114
  br label %block_0x8f, !mcsema_real_eip !101

block_0x8f:                                       ; preds = %264, %168
  %_load_rbp_ptr_98 = load i8*, i8** %_RBP_ptr_
  %_new_gep_99 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -92
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  %192 = ptrtoint i64* %_allin_new_bt_100 to i64, !mcsema_real_eip !115
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !115
  %_ptr_bt_433 = bitcast i32* %193 to i8*
  %_offset_above_rbp_434 = sub i64 %192, %_local_end_to_int_
  %_pot_address_in_parent_stack_435 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_434
  %_cond1_436 = icmp ugt i8* %_ptr_bt_433, %_local_stack_end_ptr_
  %_cond2_1_437 = icmp ugt i8* %_ptr_bt_433, %_parent_stack_end_ptr_
  %_cond2_2_438 = icmp ult i8* %_ptr_bt_433, %_parent_stack_start_ptr_
  %_cond2_439 = or i1 %_cond2_1_437, %_cond2_2_438
  %_cond4_440 = icmp ule i8* %_pot_address_in_parent_stack_435, %_parent_stack_end_ptr_
  %_cond1_n_cond2_441 = and i1 %_cond1_436, %_cond2_439
  %_cond1_n_cond2_cond3_442 = and i1 %_cond1_n_cond2_441, %_cond4_440
  br i1 %_cond1_n_cond2_cond3_442, label %194, label %195

; <label>:194:                                    ; preds = %block_0x8f
  %_address_in_parent_stack_bt_444 = bitcast i8* %_pot_address_in_parent_stack_435 to i32*
  br label %195

; <label>:195:                                    ; preds = %block_0x8f, %194
  %196 = phi i32* [ %193, %block_0x8f ], [ %_address_in_parent_stack_bt_444, %194 ]
  %_new_load_445 = load i32, i32* %196
  %197 = zext i32 %_new_load_445 to i64, !mcsema_real_eip !115
  store i64 %197, i64* %XAX, !mcsema_real_eip !115
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -48
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %EAX_val.186 = load i32, i32* %EAX.156, !mcsema_real_eip !116
  %198 = ptrtoint i64* %_allin_new_bt_103 to i64, !mcsema_real_eip !116
  %199 = inttoptr i64 %198 to i32*, !mcsema_real_eip !116
  %_ptr_bt_448 = bitcast i32* %199 to i8*
  %_offset_above_rbp_449 = sub i64 %198, %_local_end_to_int_
  %_pot_address_in_parent_stack_450 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_449
  %_cond1_451 = icmp ugt i8* %_ptr_bt_448, %_local_stack_end_ptr_
  %_cond2_1_452 = icmp ugt i8* %_ptr_bt_448, %_parent_stack_end_ptr_
  %_cond2_2_453 = icmp ult i8* %_ptr_bt_448, %_parent_stack_start_ptr_
  %_cond2_454 = or i1 %_cond2_1_452, %_cond2_2_453
  %_cond4_455 = icmp ule i8* %_pot_address_in_parent_stack_450, %_parent_stack_end_ptr_
  %_cond1_n_cond2_456 = and i1 %_cond1_451, %_cond2_454
  %_cond1_n_cond2_cond3_457 = and i1 %_cond1_n_cond2_456, %_cond4_455
  br i1 %_cond1_n_cond2_cond3_457, label %200, label %201

; <label>:200:                                    ; preds = %195
  %_address_in_parent_stack_bt_459 = bitcast i8* %_pot_address_in_parent_stack_450 to i32*
  br label %201

; <label>:201:                                    ; preds = %195, %200
  %202 = phi i32* [ %199, %195 ], [ %_address_in_parent_stack_bt_459, %200 ]
  %_new_load_460 = load i32, i32* %202
  %203 = sub i32 %EAX_val.186, %_new_load_460, !mcsema_real_eip !116
  %204 = xor i32 %203, %EAX_val.186, !mcsema_real_eip !116
  %205 = xor i32 %204, %_new_load_460, !mcsema_real_eip !116
  %206 = and i32 %205, 16, !mcsema_real_eip !116
  %207 = icmp ne i32 %206, 0, !mcsema_real_eip !116
  store i1 %207, i1* %AF, !mcsema_real_eip !116
  %208 = trunc i32 %203 to i8, !mcsema_real_eip !116
  %209 = call i8 @llvm.ctpop.i8(i8 %208), !mcsema_real_eip !116
  %210 = trunc i8 %209 to i1, !mcsema_real_eip !116
  %211 = xor i1 %210, true, !mcsema_real_eip !116
  store i1 %211, i1* %PF, !mcsema_real_eip !116
  %212 = icmp eq i32 %203, 0, !mcsema_real_eip !116
  store i1 %212, i1* %ZF, !mcsema_real_eip !116
  %213 = lshr i32 %203, 31, !mcsema_real_eip !116
  %214 = trunc i32 %213 to i1, !mcsema_real_eip !116
  store i1 %214, i1* %SF, !mcsema_real_eip !116
  %215 = icmp ult i32 %EAX_val.186, %_new_load_460, !mcsema_real_eip !116
  store i1 %215, i1* %CF, !mcsema_real_eip !116
  %216 = xor i32 %EAX_val.186, %_new_load_460, !mcsema_real_eip !116
  %217 = and i32 %216, %204, !mcsema_real_eip !116
  %218 = lshr i32 %217, 31, !mcsema_real_eip !116
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !116
  store i1 %219, i1* %OF, !mcsema_real_eip !116
  %220 = icmp eq i1 %214, %219, !mcsema_real_eip !117
  br i1 %220, label %block_0xba, label %block_0x9b, !mcsema_real_eip !117

block_0x9b:                                       ; preds = %201
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -40
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %_ptr_to_int_461 = ptrtoint i64* %_allin_new_bt_106 to i64
  %_offset_above_rbp_464 = sub i64 %_ptr_to_int_461, %_local_end_to_int_
  %_pot_address_in_parent_stack_465 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_464
  %_cond1_466 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_467 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_468 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_469 = or i1 %_cond2_1_467, %_cond2_2_468
  %_cond4_470 = icmp ule i8* %_pot_address_in_parent_stack_465, %_parent_stack_end_ptr_
  %_cond1_n_cond2_471 = and i1 %_cond1_466, %_cond2_469
  %_cond1_n_cond2_cond3_472 = and i1 %_cond1_n_cond2_471, %_cond4_470
  br i1 %_cond1_n_cond2_cond3_472, label %221, label %222

; <label>:221:                                    ; preds = %block_0x9b
  %_address_in_parent_stack_bt_474 = bitcast i8* %_pot_address_in_parent_stack_465 to i64*
  br label %222

; <label>:222:                                    ; preds = %block_0x9b, %221
  %223 = phi i64* [ %_allin_new_bt_106, %block_0x9b ], [ %_address_in_parent_stack_bt_474, %221 ]
  %_new_load_475 = load i64, i64* %223
  store i64 %_new_load_475, i64* %XAX, !mcsema_real_eip !118
  br i1 %_cond1_n_cond2_cond3_442, label %224, label %225

; <label>:224:                                    ; preds = %222
  %_address_in_parent_stack_bt_489 = bitcast i8* %_pot_address_in_parent_stack_435 to i32*
  br label %225

; <label>:225:                                    ; preds = %222, %224
  %226 = phi i32* [ %193, %222 ], [ %_address_in_parent_stack_bt_489, %224 ]
  %_new_load_490 = load i32, i32* %226
  %227 = sext i32 %_new_load_490 to i64, !mcsema_real_eip !119
  store i64 %227, i64* %XCX, !mcsema_real_eip !119
  %228 = mul i64 %227, 4, !mcsema_real_eip !120
  %229 = add i64 %_new_load_475, %228, !mcsema_real_eip !120
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !120
  %231 = inttoptr i64 %229 to i32*, !mcsema_real_eip !120
  %_ptr_bt_493 = bitcast i32* %231 to i8*
  %_offset_above_rbp_494 = sub i64 %229, %_local_end_to_int_
  %_pot_address_in_parent_stack_495 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_494
  %_cond1_496 = icmp ugt i8* %_ptr_bt_493, %_local_stack_end_ptr_
  %_cond2_1_497 = icmp ugt i8* %_ptr_bt_493, %_parent_stack_end_ptr_
  %_cond2_2_498 = icmp ult i8* %_ptr_bt_493, %_parent_stack_start_ptr_
  %_cond2_499 = or i1 %_cond2_1_497, %_cond2_2_498
  %_cond4_500 = icmp ule i8* %_pot_address_in_parent_stack_495, %_parent_stack_end_ptr_
  %_cond1_n_cond2_501 = and i1 %_cond1_496, %_cond2_499
  %_cond1_n_cond2_cond3_502 = and i1 %_cond1_n_cond2_501, %_cond4_500
  br i1 %_cond1_n_cond2_cond3_502, label %232, label %233

; <label>:232:                                    ; preds = %225
  %_address_in_parent_stack_bt_504 = bitcast i8* %_pot_address_in_parent_stack_495 to i32*
  br label %233

; <label>:233:                                    ; preds = %225, %232
  %234 = phi i32* [ %231, %225 ], [ %_address_in_parent_stack_bt_504, %232 ]
  %_new_load_505 = load i32, i32* %234
  %235 = zext i32 %_new_load_505 to i64, !mcsema_real_eip !120
  store i64 %235, i64* %XDX, !mcsema_real_eip !120
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -84
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %236 = ptrtoint i64* %_allin_new_bt_112 to i64, !mcsema_real_eip !121
  %237 = inttoptr i64 %236 to i32*, !mcsema_real_eip !121
  %_ptr_bt_508 = bitcast i32* %237 to i8*
  %_offset_above_rbp_509 = sub i64 %236, %_local_end_to_int_
  %_pot_address_in_parent_stack_510 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_509
  %_cond1_511 = icmp ugt i8* %_ptr_bt_508, %_local_stack_end_ptr_
  %_cond2_1_512 = icmp ugt i8* %_ptr_bt_508, %_parent_stack_end_ptr_
  %_cond2_2_513 = icmp ult i8* %_ptr_bt_508, %_parent_stack_start_ptr_
  %_cond2_514 = or i1 %_cond2_1_512, %_cond2_2_513
  %_cond4_515 = icmp ule i8* %_pot_address_in_parent_stack_510, %_parent_stack_end_ptr_
  %_cond1_n_cond2_516 = and i1 %_cond1_511, %_cond2_514
  %_cond1_n_cond2_cond3_517 = and i1 %_cond1_n_cond2_516, %_cond4_515
  br i1 %_cond1_n_cond2_cond3_517, label %238, label %239

; <label>:238:                                    ; preds = %233
  %_address_in_parent_stack_bt_519 = bitcast i8* %_pot_address_in_parent_stack_510 to i32*
  br label %239

; <label>:239:                                    ; preds = %233, %238
  %240 = phi i32* [ %237, %233 ], [ %_address_in_parent_stack_bt_519, %238 ]
  %_new_load_520 = load i32, i32* %240
  %EDX.200 = bitcast i64* %XDX to i32*, !mcsema_real_eip !121
  %EDX_val.201 = load i32, i32* %EDX.200, !mcsema_real_eip !121
  %241 = add i32 %EDX_val.201, %_new_load_520, !mcsema_real_eip !121
  %242 = xor i32 %241, %_new_load_520, !mcsema_real_eip !121
  %243 = xor i32 %242, %EDX_val.201, !mcsema_real_eip !121
  %244 = and i32 %243, 16, !mcsema_real_eip !121
  %245 = icmp ne i32 %244, 0, !mcsema_real_eip !121
  store i1 %245, i1* %AF, !mcsema_real_eip !121
  %246 = lshr i32 %241, 31, !mcsema_real_eip !121
  %247 = trunc i32 %246 to i1, !mcsema_real_eip !121
  store i1 %247, i1* %SF, !mcsema_real_eip !121
  %248 = icmp eq i32 %241, 0, !mcsema_real_eip !121
  store i1 %248, i1* %ZF, !mcsema_real_eip !121
  %249 = xor i32 %_new_load_520, %EDX_val.201, !mcsema_real_eip !121
  %250 = xor i32 %249, -1, !mcsema_real_eip !121
  %251 = and i32 %250, %242, !mcsema_real_eip !121
  %252 = lshr i32 %251, 31, !mcsema_real_eip !121
  %253 = and i32 %252, 1, !mcsema_real_eip !121
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !121
  store i1 %254, i1* %OF, !mcsema_real_eip !121
  %255 = trunc i32 %241 to i8, !mcsema_real_eip !121
  %256 = call i8 @llvm.ctpop.i8(i8 %255), !mcsema_real_eip !121
  %257 = trunc i8 %256 to i1, !mcsema_real_eip !121
  %258 = xor i1 %257, true, !mcsema_real_eip !121
  store i1 %258, i1* %PF, !mcsema_real_eip !121
  %259 = icmp ult i32 %241, %_new_load_520, !mcsema_real_eip !121
  store i1 %259, i1* %CF, !mcsema_real_eip !121
  %260 = zext i32 %241 to i64, !mcsema_real_eip !121
  store i64 %260, i64* %XDX, !mcsema_real_eip !121
  %EDX_val.204 = load i32, i32* %EDX.200, !mcsema_real_eip !122
  store i32 %EDX_val.204, i32* %237, !mcsema_real_eip !122
  %_load_rbp_ptr_116 = load i8*, i8** %_RBP_ptr_
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_116, i64 -92
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %261 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !123
  %262 = inttoptr i64 %261 to i32*, !mcsema_real_eip !123
  %_ptr_bt_523 = bitcast i32* %262 to i8*
  %_offset_above_rbp_524 = sub i64 %261, %_local_end_to_int_
  %_pot_address_in_parent_stack_525 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_524
  %_cond1_526 = icmp ugt i8* %_ptr_bt_523, %_local_stack_end_ptr_
  %_cond2_1_527 = icmp ugt i8* %_ptr_bt_523, %_parent_stack_end_ptr_
  %_cond2_2_528 = icmp ult i8* %_ptr_bt_523, %_parent_stack_start_ptr_
  %_cond2_529 = or i1 %_cond2_1_527, %_cond2_2_528
  %_cond4_530 = icmp ule i8* %_pot_address_in_parent_stack_525, %_parent_stack_end_ptr_
  %_cond1_n_cond2_531 = and i1 %_cond1_526, %_cond2_529
  %_cond1_n_cond2_cond3_532 = and i1 %_cond1_n_cond2_531, %_cond4_530
  br i1 %_cond1_n_cond2_cond3_532, label %263, label %264

; <label>:263:                                    ; preds = %239
  %_address_in_parent_stack_bt_534 = bitcast i8* %_pot_address_in_parent_stack_525 to i32*
  br label %264

; <label>:264:                                    ; preds = %239, %263
  %265 = phi i32* [ %262, %239 ], [ %_address_in_parent_stack_bt_534, %263 ]
  %_new_load_535 = load i32, i32* %265
  %266 = zext i32 %_new_load_535 to i64, !mcsema_real_eip !123
  store i64 %266, i64* %XAX, !mcsema_real_eip !123
  %EAX_val.207 = load i32, i32* %EAX.156, !mcsema_real_eip !124
  %267 = add i32 1, %EAX_val.207, !mcsema_real_eip !124
  %268 = xor i32 %267, %EAX_val.207, !mcsema_real_eip !124
  %269 = xor i32 %268, 1, !mcsema_real_eip !124
  %270 = and i32 %269, 16, !mcsema_real_eip !124
  %271 = icmp ne i32 %270, 0, !mcsema_real_eip !124
  store i1 %271, i1* %AF, !mcsema_real_eip !124
  %272 = lshr i32 %267, 31, !mcsema_real_eip !124
  %273 = trunc i32 %272 to i1, !mcsema_real_eip !124
  store i1 %273, i1* %SF, !mcsema_real_eip !124
  %274 = icmp eq i32 %267, 0, !mcsema_real_eip !124
  store i1 %274, i1* %ZF, !mcsema_real_eip !124
  %275 = xor i32 %EAX_val.207, 1, !mcsema_real_eip !124
  %276 = xor i32 %275, -1, !mcsema_real_eip !124
  %277 = and i32 %276, %268, !mcsema_real_eip !124
  %278 = lshr i32 %277, 31, !mcsema_real_eip !124
  %279 = and i32 %278, 1, !mcsema_real_eip !124
  %280 = trunc i32 %279 to i1, !mcsema_real_eip !124
  store i1 %280, i1* %OF, !mcsema_real_eip !124
  %281 = trunc i32 %267 to i8, !mcsema_real_eip !124
  %282 = call i8 @llvm.ctpop.i8(i8 %281), !mcsema_real_eip !124
  %283 = trunc i8 %282 to i1, !mcsema_real_eip !124
  %284 = xor i1 %283, true, !mcsema_real_eip !124
  store i1 %284, i1* %PF, !mcsema_real_eip !124
  %285 = icmp ult i32 %267, %EAX_val.207, !mcsema_real_eip !124
  store i1 %285, i1* %CF, !mcsema_real_eip !124
  %286 = zext i32 %267 to i64, !mcsema_real_eip !124
  store i64 %286, i64* %XAX, !mcsema_real_eip !124
  %EAX_val.210 = load i32, i32* %EAX.156, !mcsema_real_eip !125
  store i32 %EAX_val.210, i32* %262, !mcsema_real_eip !125
  br label %block_0x8f, !mcsema_real_eip !126

block_0xba:                                       ; preds = %201
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -52
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %287 = ptrtoint i64* %_allin_new_bt_124 to i64, !mcsema_real_eip !127
  %288 = inttoptr i64 %287 to i32*, !mcsema_real_eip !127
  %_ptr_bt_538 = bitcast i32* %288 to i8*
  %_offset_above_rbp_539 = sub i64 %287, %_local_end_to_int_
  %_pot_address_in_parent_stack_540 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_539
  %_cond1_541 = icmp ugt i8* %_ptr_bt_538, %_local_stack_end_ptr_
  %_cond2_1_542 = icmp ugt i8* %_ptr_bt_538, %_parent_stack_end_ptr_
  %_cond2_2_543 = icmp ult i8* %_ptr_bt_538, %_parent_stack_start_ptr_
  %_cond2_544 = or i1 %_cond2_1_542, %_cond2_2_543
  %_cond4_545 = icmp ule i8* %_pot_address_in_parent_stack_540, %_parent_stack_end_ptr_
  %_cond1_n_cond2_546 = and i1 %_cond1_541, %_cond2_544
  %_cond1_n_cond2_cond3_547 = and i1 %_cond1_n_cond2_546, %_cond4_545
  br i1 %_cond1_n_cond2_cond3_547, label %289, label %290

; <label>:289:                                    ; preds = %block_0xba
  %_address_in_parent_stack_bt_549 = bitcast i8* %_pot_address_in_parent_stack_540 to i32*
  br label %290

; <label>:290:                                    ; preds = %block_0xba, %289
  %291 = phi i32* [ %288, %block_0xba ], [ %_address_in_parent_stack_bt_549, %289 ]
  %_new_load_550 = load i32, i32* %291
  %292 = zext i32 %_new_load_550 to i64, !mcsema_real_eip !127
  store i64 %292, i64* %XAX, !mcsema_real_eip !127
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_98, i64 -84
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %293 = ptrtoint i64* %_allin_new_bt_127 to i64, !mcsema_real_eip !128
  %294 = inttoptr i64 %293 to i32*, !mcsema_real_eip !128
  %_ptr_bt_553 = bitcast i32* %294 to i8*
  %_offset_above_rbp_554 = sub i64 %293, %_local_end_to_int_
  %_pot_address_in_parent_stack_555 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_554
  %_cond1_556 = icmp ugt i8* %_ptr_bt_553, %_local_stack_end_ptr_
  %_cond2_1_557 = icmp ugt i8* %_ptr_bt_553, %_parent_stack_end_ptr_
  %_cond2_2_558 = icmp ult i8* %_ptr_bt_553, %_parent_stack_start_ptr_
  %_cond2_559 = or i1 %_cond2_1_557, %_cond2_2_558
  %_cond4_560 = icmp ule i8* %_pot_address_in_parent_stack_555, %_parent_stack_end_ptr_
  %_cond1_n_cond2_561 = and i1 %_cond1_556, %_cond2_559
  %_cond1_n_cond2_cond3_562 = and i1 %_cond1_n_cond2_561, %_cond4_560
  br i1 %_cond1_n_cond2_cond3_562, label %295, label %296

; <label>:295:                                    ; preds = %290
  %_address_in_parent_stack_bt_564 = bitcast i8* %_pot_address_in_parent_stack_555 to i32*
  br label %296

; <label>:296:                                    ; preds = %290, %295
  %297 = phi i32* [ %294, %290 ], [ %_address_in_parent_stack_bt_564, %295 ]
  %_new_load_565 = load i32, i32* %297
  %EAX_val.190 = load i32, i32* %EAX.156, !mcsema_real_eip !128
  %298 = add i32 %EAX_val.190, %_new_load_565, !mcsema_real_eip !128
  %299 = xor i32 %298, %_new_load_565, !mcsema_real_eip !128
  %300 = xor i32 %299, %EAX_val.190, !mcsema_real_eip !128
  %301 = and i32 %300, 16, !mcsema_real_eip !128
  %302 = icmp ne i32 %301, 0, !mcsema_real_eip !128
  store i1 %302, i1* %AF, !mcsema_real_eip !128
  %303 = lshr i32 %298, 31, !mcsema_real_eip !128
  %304 = trunc i32 %303 to i1, !mcsema_real_eip !128
  store i1 %304, i1* %SF, !mcsema_real_eip !128
  %305 = icmp eq i32 %298, 0, !mcsema_real_eip !128
  store i1 %305, i1* %ZF, !mcsema_real_eip !128
  %306 = xor i32 %_new_load_565, %EAX_val.190, !mcsema_real_eip !128
  %307 = xor i32 %306, -1, !mcsema_real_eip !128
  %308 = and i32 %307, %299, !mcsema_real_eip !128
  %309 = lshr i32 %308, 31, !mcsema_real_eip !128
  %310 = and i32 %309, 1, !mcsema_real_eip !128
  %311 = trunc i32 %310 to i1, !mcsema_real_eip !128
  store i1 %311, i1* %OF, !mcsema_real_eip !128
  %312 = trunc i32 %298 to i8, !mcsema_real_eip !128
  %313 = call i8 @llvm.ctpop.i8(i8 %312), !mcsema_real_eip !128
  %314 = trunc i8 %313 to i1, !mcsema_real_eip !128
  %315 = xor i1 %314, true, !mcsema_real_eip !128
  store i1 %315, i1* %PF, !mcsema_real_eip !128
  %316 = icmp ult i32 %298, %_new_load_565, !mcsema_real_eip !128
  store i1 %316, i1* %CF, !mcsema_real_eip !128
  %317 = zext i32 %298 to i64, !mcsema_real_eip !128
  store i64 %317, i64* %XAX, !mcsema_real_eip !128
  %EAX_val.193 = load i32, i32* %EAX.156, !mcsema_real_eip !129
  store i32 %EAX_val.193, i32* %294, !mcsema_real_eip !129
  %_load_rbp_ptr_131 = load i8*, i8** %_RBP_ptr_
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_131, i64 -96
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %318 = ptrtoint i64* %_allin_new_bt_133 to i64, !mcsema_real_eip !130
  %319 = inttoptr i64 %318 to i32*, !mcsema_real_eip !130
  store i32 0, i32* %319, !mcsema_real_eip !130
  br label %block_0xca, !mcsema_real_eip !118

block_0xca:                                       ; preds = %392, %296
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -96
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %320 = ptrtoint i64* %_allin_new_bt_136 to i64, !mcsema_real_eip !131
  %321 = inttoptr i64 %320 to i32*, !mcsema_real_eip !131
  %_ptr_bt_568 = bitcast i32* %321 to i8*
  %_offset_above_rbp_569 = sub i64 %320, %_local_end_to_int_
  %_pot_address_in_parent_stack_570 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_569
  %_cond1_571 = icmp ugt i8* %_ptr_bt_568, %_local_stack_end_ptr_
  %_cond2_1_572 = icmp ugt i8* %_ptr_bt_568, %_parent_stack_end_ptr_
  %_cond2_2_573 = icmp ult i8* %_ptr_bt_568, %_parent_stack_start_ptr_
  %_cond2_574 = or i1 %_cond2_1_572, %_cond2_2_573
  %_cond4_575 = icmp ule i8* %_pot_address_in_parent_stack_570, %_parent_stack_end_ptr_
  %_cond1_n_cond2_576 = and i1 %_cond1_571, %_cond2_574
  %_cond1_n_cond2_cond3_577 = and i1 %_cond1_n_cond2_576, %_cond4_575
  br i1 %_cond1_n_cond2_cond3_577, label %322, label %323

; <label>:322:                                    ; preds = %block_0xca
  %_address_in_parent_stack_bt_579 = bitcast i8* %_pot_address_in_parent_stack_570 to i32*
  br label %323

; <label>:323:                                    ; preds = %block_0xca, %322
  %324 = phi i32* [ %321, %block_0xca ], [ %_address_in_parent_stack_bt_579, %322 ]
  %_new_load_580 = load i32, i32* %324
  %325 = zext i32 %_new_load_580 to i64, !mcsema_real_eip !131
  store i64 %325, i64* %XAX, !mcsema_real_eip !131
  %_new_gep_138 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -44
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %EAX_val.214 = load i32, i32* %EAX.156, !mcsema_real_eip !132
  %326 = ptrtoint i64* %_allin_new_bt_139 to i64, !mcsema_real_eip !132
  %327 = inttoptr i64 %326 to i32*, !mcsema_real_eip !132
  %_ptr_bt_583 = bitcast i32* %327 to i8*
  %_offset_above_rbp_584 = sub i64 %326, %_local_end_to_int_
  %_pot_address_in_parent_stack_585 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_584
  %_cond1_586 = icmp ugt i8* %_ptr_bt_583, %_local_stack_end_ptr_
  %_cond2_1_587 = icmp ugt i8* %_ptr_bt_583, %_parent_stack_end_ptr_
  %_cond2_2_588 = icmp ult i8* %_ptr_bt_583, %_parent_stack_start_ptr_
  %_cond2_589 = or i1 %_cond2_1_587, %_cond2_2_588
  %_cond4_590 = icmp ule i8* %_pot_address_in_parent_stack_585, %_parent_stack_end_ptr_
  %_cond1_n_cond2_591 = and i1 %_cond1_586, %_cond2_589
  %_cond1_n_cond2_cond3_592 = and i1 %_cond1_n_cond2_591, %_cond4_590
  br i1 %_cond1_n_cond2_cond3_592, label %328, label %329

; <label>:328:                                    ; preds = %323
  %_address_in_parent_stack_bt_594 = bitcast i8* %_pot_address_in_parent_stack_585 to i32*
  br label %329

; <label>:329:                                    ; preds = %323, %328
  %330 = phi i32* [ %327, %323 ], [ %_address_in_parent_stack_bt_594, %328 ]
  %_new_load_595 = load i32, i32* %330
  %331 = sub i32 %EAX_val.214, %_new_load_595, !mcsema_real_eip !132
  %332 = xor i32 %331, %EAX_val.214, !mcsema_real_eip !132
  %333 = xor i32 %332, %_new_load_595, !mcsema_real_eip !132
  %334 = and i32 %333, 16, !mcsema_real_eip !132
  %335 = icmp ne i32 %334, 0, !mcsema_real_eip !132
  store i1 %335, i1* %AF, !mcsema_real_eip !132
  %336 = trunc i32 %331 to i8, !mcsema_real_eip !132
  %337 = call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !132
  %338 = trunc i8 %337 to i1, !mcsema_real_eip !132
  %339 = xor i1 %338, true, !mcsema_real_eip !132
  store i1 %339, i1* %PF, !mcsema_real_eip !132
  %340 = icmp eq i32 %331, 0, !mcsema_real_eip !132
  store i1 %340, i1* %ZF, !mcsema_real_eip !132
  %341 = lshr i32 %331, 31, !mcsema_real_eip !132
  %342 = trunc i32 %341 to i1, !mcsema_real_eip !132
  store i1 %342, i1* %SF, !mcsema_real_eip !132
  %343 = icmp ult i32 %EAX_val.214, %_new_load_595, !mcsema_real_eip !132
  store i1 %343, i1* %CF, !mcsema_real_eip !132
  %344 = xor i32 %EAX_val.214, %_new_load_595, !mcsema_real_eip !132
  %345 = and i32 %344, %332, !mcsema_real_eip !132
  %346 = lshr i32 %345, 31, !mcsema_real_eip !132
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !132
  store i1 %347, i1* %OF, !mcsema_real_eip !132
  %348 = icmp eq i1 %342, %347, !mcsema_real_eip !133
  br i1 %348, label %block_0xf5, label %block_0xd6, !mcsema_real_eip !133

block_0xd6:                                       ; preds = %329
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -64
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %_ptr_to_int_596 = ptrtoint i64* %_allin_new_bt_142 to i64
  %_offset_above_rbp_599 = sub i64 %_ptr_to_int_596, %_local_end_to_int_
  %_pot_address_in_parent_stack_600 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_599
  %_cond1_601 = icmp ugt i8* %_new_gep_141, %_local_stack_end_ptr_
  %_cond2_1_602 = icmp ugt i8* %_new_gep_141, %_parent_stack_end_ptr_
  %_cond2_2_603 = icmp ult i8* %_new_gep_141, %_parent_stack_start_ptr_
  %_cond2_604 = or i1 %_cond2_1_602, %_cond2_2_603
  %_cond4_605 = icmp ule i8* %_pot_address_in_parent_stack_600, %_parent_stack_end_ptr_
  %_cond1_n_cond2_606 = and i1 %_cond1_601, %_cond2_604
  %_cond1_n_cond2_cond3_607 = and i1 %_cond1_n_cond2_606, %_cond4_605
  br i1 %_cond1_n_cond2_cond3_607, label %349, label %350

; <label>:349:                                    ; preds = %block_0xd6
  %_address_in_parent_stack_bt_609 = bitcast i8* %_pot_address_in_parent_stack_600 to i64*
  br label %350

; <label>:350:                                    ; preds = %block_0xd6, %349
  %351 = phi i64* [ %_allin_new_bt_142, %block_0xd6 ], [ %_address_in_parent_stack_bt_609, %349 ]
  %_new_load_610 = load i64, i64* %351
  store i64 %_new_load_610, i64* %XAX, !mcsema_real_eip !134
  br i1 %_cond1_n_cond2_cond3_577, label %352, label %353

; <label>:352:                                    ; preds = %350
  %_address_in_parent_stack_bt_624 = bitcast i8* %_pot_address_in_parent_stack_570 to i32*
  br label %353

; <label>:353:                                    ; preds = %350, %352
  %354 = phi i32* [ %321, %350 ], [ %_address_in_parent_stack_bt_624, %352 ]
  %_new_load_625 = load i32, i32* %354
  %355 = sext i32 %_new_load_625 to i64, !mcsema_real_eip !135
  store i64 %355, i64* %XCX, !mcsema_real_eip !135
  %356 = mul i64 %355, 4, !mcsema_real_eip !136
  %357 = add i64 %_new_load_610, %356, !mcsema_real_eip !136
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !136
  %359 = inttoptr i64 %357 to i32*, !mcsema_real_eip !136
  %_ptr_bt_628 = bitcast i32* %359 to i8*
  %_offset_above_rbp_629 = sub i64 %357, %_local_end_to_int_
  %_pot_address_in_parent_stack_630 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_629
  %_cond1_631 = icmp ugt i8* %_ptr_bt_628, %_local_stack_end_ptr_
  %_cond2_1_632 = icmp ugt i8* %_ptr_bt_628, %_parent_stack_end_ptr_
  %_cond2_2_633 = icmp ult i8* %_ptr_bt_628, %_parent_stack_start_ptr_
  %_cond2_634 = or i1 %_cond2_1_632, %_cond2_2_633
  %_cond4_635 = icmp ule i8* %_pot_address_in_parent_stack_630, %_parent_stack_end_ptr_
  %_cond1_n_cond2_636 = and i1 %_cond1_631, %_cond2_634
  %_cond1_n_cond2_cond3_637 = and i1 %_cond1_n_cond2_636, %_cond4_635
  br i1 %_cond1_n_cond2_cond3_637, label %360, label %361

; <label>:360:                                    ; preds = %353
  %_address_in_parent_stack_bt_639 = bitcast i8* %_pot_address_in_parent_stack_630 to i32*
  br label %361

; <label>:361:                                    ; preds = %353, %360
  %362 = phi i32* [ %359, %353 ], [ %_address_in_parent_stack_bt_639, %360 ]
  %_new_load_640 = load i32, i32* %362
  %363 = zext i32 %_new_load_640 to i64, !mcsema_real_eip !136
  store i64 %363, i64* %XDX, !mcsema_real_eip !136
  %_new_gep_147 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -84
  %_allin_new_bt_148 = bitcast i8* %_new_gep_147 to i64*
  %364 = ptrtoint i64* %_allin_new_bt_148 to i64, !mcsema_real_eip !137
  %365 = inttoptr i64 %364 to i32*, !mcsema_real_eip !137
  %_ptr_bt_643 = bitcast i32* %365 to i8*
  %_offset_above_rbp_644 = sub i64 %364, %_local_end_to_int_
  %_pot_address_in_parent_stack_645 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_644
  %_cond1_646 = icmp ugt i8* %_ptr_bt_643, %_local_stack_end_ptr_
  %_cond2_1_647 = icmp ugt i8* %_ptr_bt_643, %_parent_stack_end_ptr_
  %_cond2_2_648 = icmp ult i8* %_ptr_bt_643, %_parent_stack_start_ptr_
  %_cond2_649 = or i1 %_cond2_1_647, %_cond2_2_648
  %_cond4_650 = icmp ule i8* %_pot_address_in_parent_stack_645, %_parent_stack_end_ptr_
  %_cond1_n_cond2_651 = and i1 %_cond1_646, %_cond2_649
  %_cond1_n_cond2_cond3_652 = and i1 %_cond1_n_cond2_651, %_cond4_650
  br i1 %_cond1_n_cond2_cond3_652, label %366, label %367

; <label>:366:                                    ; preds = %361
  %_address_in_parent_stack_bt_654 = bitcast i8* %_pot_address_in_parent_stack_645 to i32*
  br label %367

; <label>:367:                                    ; preds = %361, %366
  %368 = phi i32* [ %365, %361 ], [ %_address_in_parent_stack_bt_654, %366 ]
  %_new_load_655 = load i32, i32* %368
  %EDX.229 = bitcast i64* %XDX to i32*, !mcsema_real_eip !137
  %EDX_val.230 = load i32, i32* %EDX.229, !mcsema_real_eip !137
  %369 = add i32 %EDX_val.230, %_new_load_655, !mcsema_real_eip !137
  %370 = xor i32 %369, %_new_load_655, !mcsema_real_eip !137
  %371 = xor i32 %370, %EDX_val.230, !mcsema_real_eip !137
  %372 = and i32 %371, 16, !mcsema_real_eip !137
  %373 = icmp ne i32 %372, 0, !mcsema_real_eip !137
  store i1 %373, i1* %AF, !mcsema_real_eip !137
  %374 = lshr i32 %369, 31, !mcsema_real_eip !137
  %375 = trunc i32 %374 to i1, !mcsema_real_eip !137
  store i1 %375, i1* %SF, !mcsema_real_eip !137
  %376 = icmp eq i32 %369, 0, !mcsema_real_eip !137
  store i1 %376, i1* %ZF, !mcsema_real_eip !137
  %377 = xor i32 %_new_load_655, %EDX_val.230, !mcsema_real_eip !137
  %378 = xor i32 %377, -1, !mcsema_real_eip !137
  %379 = and i32 %378, %370, !mcsema_real_eip !137
  %380 = lshr i32 %379, 31, !mcsema_real_eip !137
  %381 = and i32 %380, 1, !mcsema_real_eip !137
  %382 = trunc i32 %381 to i1, !mcsema_real_eip !137
  store i1 %382, i1* %OF, !mcsema_real_eip !137
  %383 = trunc i32 %369 to i8, !mcsema_real_eip !137
  %384 = call i8 @llvm.ctpop.i8(i8 %383), !mcsema_real_eip !137
  %385 = trunc i8 %384 to i1, !mcsema_real_eip !137
  %386 = xor i1 %385, true, !mcsema_real_eip !137
  store i1 %386, i1* %PF, !mcsema_real_eip !137
  %387 = icmp ult i32 %369, %_new_load_655, !mcsema_real_eip !137
  store i1 %387, i1* %CF, !mcsema_real_eip !137
  %388 = zext i32 %369 to i64, !mcsema_real_eip !137
  store i64 %388, i64* %XDX, !mcsema_real_eip !137
  %EDX_val.233 = load i32, i32* %EDX.229, !mcsema_real_eip !138
  store i32 %EDX_val.233, i32* %365, !mcsema_real_eip !138
  %_load_rbp_ptr_152 = load i8*, i8** %_RBP_ptr_
  %_new_gep_153 = getelementptr i8, i8* %_load_rbp_ptr_152, i64 -96
  %_allin_new_bt_154 = bitcast i8* %_new_gep_153 to i64*
  %389 = ptrtoint i64* %_allin_new_bt_154 to i64, !mcsema_real_eip !139
  %390 = inttoptr i64 %389 to i32*, !mcsema_real_eip !139
  %_ptr_bt_658 = bitcast i32* %390 to i8*
  %_offset_above_rbp_659 = sub i64 %389, %_local_end_to_int_
  %_pot_address_in_parent_stack_660 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_659
  %_cond1_661 = icmp ugt i8* %_ptr_bt_658, %_local_stack_end_ptr_
  %_cond2_1_662 = icmp ugt i8* %_ptr_bt_658, %_parent_stack_end_ptr_
  %_cond2_2_663 = icmp ult i8* %_ptr_bt_658, %_parent_stack_start_ptr_
  %_cond2_664 = or i1 %_cond2_1_662, %_cond2_2_663
  %_cond4_665 = icmp ule i8* %_pot_address_in_parent_stack_660, %_parent_stack_end_ptr_
  %_cond1_n_cond2_666 = and i1 %_cond1_661, %_cond2_664
  %_cond1_n_cond2_cond3_667 = and i1 %_cond1_n_cond2_666, %_cond4_665
  br i1 %_cond1_n_cond2_cond3_667, label %391, label %392

; <label>:391:                                    ; preds = %367
  %_address_in_parent_stack_bt_669 = bitcast i8* %_pot_address_in_parent_stack_660 to i32*
  br label %392

; <label>:392:                                    ; preds = %367, %391
  %393 = phi i32* [ %390, %367 ], [ %_address_in_parent_stack_bt_669, %391 ]
  %_new_load_670 = load i32, i32* %393
  %394 = zext i32 %_new_load_670 to i64, !mcsema_real_eip !139
  store i64 %394, i64* %XAX, !mcsema_real_eip !139
  %EAX_val.236 = load i32, i32* %EAX.156, !mcsema_real_eip !140
  %395 = add i32 1, %EAX_val.236, !mcsema_real_eip !140
  %396 = xor i32 %395, %EAX_val.236, !mcsema_real_eip !140
  %397 = xor i32 %396, 1, !mcsema_real_eip !140
  %398 = and i32 %397, 16, !mcsema_real_eip !140
  %399 = icmp ne i32 %398, 0, !mcsema_real_eip !140
  store i1 %399, i1* %AF, !mcsema_real_eip !140
  %400 = lshr i32 %395, 31, !mcsema_real_eip !140
  %401 = trunc i32 %400 to i1, !mcsema_real_eip !140
  store i1 %401, i1* %SF, !mcsema_real_eip !140
  %402 = icmp eq i32 %395, 0, !mcsema_real_eip !140
  store i1 %402, i1* %ZF, !mcsema_real_eip !140
  %403 = xor i32 %EAX_val.236, 1, !mcsema_real_eip !140
  %404 = xor i32 %403, -1, !mcsema_real_eip !140
  %405 = and i32 %404, %396, !mcsema_real_eip !140
  %406 = lshr i32 %405, 31, !mcsema_real_eip !140
  %407 = and i32 %406, 1, !mcsema_real_eip !140
  %408 = trunc i32 %407 to i1, !mcsema_real_eip !140
  store i1 %408, i1* %OF, !mcsema_real_eip !140
  %409 = trunc i32 %395 to i8, !mcsema_real_eip !140
  %410 = call i8 @llvm.ctpop.i8(i8 %409), !mcsema_real_eip !140
  %411 = trunc i8 %410 to i1, !mcsema_real_eip !140
  %412 = xor i1 %411, true, !mcsema_real_eip !140
  store i1 %412, i1* %PF, !mcsema_real_eip !140
  %413 = icmp ult i32 %395, %EAX_val.236, !mcsema_real_eip !140
  store i1 %413, i1* %CF, !mcsema_real_eip !140
  %414 = zext i32 %395 to i64, !mcsema_real_eip !140
  store i64 %414, i64* %XAX, !mcsema_real_eip !140
  %EAX_val.239 = load i32, i32* %EAX.156, !mcsema_real_eip !141
  store i32 %EAX_val.239, i32* %390, !mcsema_real_eip !141
  br label %block_0xca, !mcsema_real_eip !142

block_0xf5:                                       ; preds = %329
  %_new_gep_159 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -72
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  %_ptr_to_int_671 = ptrtoint i64* %_allin_new_bt_160 to i64
  %_offset_above_rbp_674 = sub i64 %_ptr_to_int_671, %_local_end_to_int_
  %_pot_address_in_parent_stack_675 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_674
  %_cond1_676 = icmp ugt i8* %_new_gep_159, %_local_stack_end_ptr_
  %_cond2_1_677 = icmp ugt i8* %_new_gep_159, %_parent_stack_end_ptr_
  %_cond2_2_678 = icmp ult i8* %_new_gep_159, %_parent_stack_start_ptr_
  %_cond2_679 = or i1 %_cond2_1_677, %_cond2_2_678
  %_cond4_680 = icmp ule i8* %_pot_address_in_parent_stack_675, %_parent_stack_end_ptr_
  %_cond1_n_cond2_681 = and i1 %_cond1_676, %_cond2_679
  %_cond1_n_cond2_cond3_682 = and i1 %_cond1_n_cond2_681, %_cond4_680
  br i1 %_cond1_n_cond2_cond3_682, label %415, label %416

; <label>:415:                                    ; preds = %block_0xf5
  %_address_in_parent_stack_bt_684 = bitcast i8* %_pot_address_in_parent_stack_675 to i64*
  br label %416

; <label>:416:                                    ; preds = %block_0xf5, %415
  %417 = phi i64* [ %_allin_new_bt_160, %block_0xf5 ], [ %_address_in_parent_stack_bt_684, %415 ]
  %_new_load_685 = load i64, i64* %417
  store i64 %_new_load_685, i64* %XAX, !mcsema_real_eip !143
  %418 = inttoptr i64 %_new_load_685 to i64*, !mcsema_real_eip !144
  %419 = inttoptr i64 %_new_load_685 to i32*, !mcsema_real_eip !144
  %_ptr_bt_688 = bitcast i32* %419 to i8*
  %_offset_above_rbp_689 = sub i64 %_new_load_685, %_local_end_to_int_
  %_pot_address_in_parent_stack_690 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_689
  %_cond1_691 = icmp ugt i8* %_ptr_bt_688, %_local_stack_end_ptr_
  %_cond2_1_692 = icmp ugt i8* %_ptr_bt_688, %_parent_stack_end_ptr_
  %_cond2_2_693 = icmp ult i8* %_ptr_bt_688, %_parent_stack_start_ptr_
  %_cond2_694 = or i1 %_cond2_1_692, %_cond2_2_693
  %_cond4_695 = icmp ule i8* %_pot_address_in_parent_stack_690, %_parent_stack_end_ptr_
  %_cond1_n_cond2_696 = and i1 %_cond1_691, %_cond2_694
  %_cond1_n_cond2_cond3_697 = and i1 %_cond1_n_cond2_696, %_cond4_695
  br i1 %_cond1_n_cond2_cond3_697, label %420, label %421

; <label>:420:                                    ; preds = %416
  %_address_in_parent_stack_bt_699 = bitcast i8* %_pot_address_in_parent_stack_690 to i32*
  br label %421

; <label>:421:                                    ; preds = %416, %420
  %422 = phi i32* [ %419, %416 ], [ %_address_in_parent_stack_bt_699, %420 ]
  %_new_load_700 = load i32, i32* %422
  %423 = zext i32 %_new_load_700 to i64, !mcsema_real_eip !144
  store i64 %423, i64* %XCX, !mcsema_real_eip !144
  %_new_gep_162 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -84
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %424 = ptrtoint i64* %_allin_new_bt_163 to i64, !mcsema_real_eip !145
  %425 = inttoptr i64 %424 to i32*, !mcsema_real_eip !145
  %_ptr_bt_703 = bitcast i32* %425 to i8*
  %_offset_above_rbp_704 = sub i64 %424, %_local_end_to_int_
  %_pot_address_in_parent_stack_705 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_704
  %_cond1_706 = icmp ugt i8* %_ptr_bt_703, %_local_stack_end_ptr_
  %_cond2_1_707 = icmp ugt i8* %_ptr_bt_703, %_parent_stack_end_ptr_
  %_cond2_2_708 = icmp ult i8* %_ptr_bt_703, %_parent_stack_start_ptr_
  %_cond2_709 = or i1 %_cond2_1_707, %_cond2_2_708
  %_cond4_710 = icmp ule i8* %_pot_address_in_parent_stack_705, %_parent_stack_end_ptr_
  %_cond1_n_cond2_711 = and i1 %_cond1_706, %_cond2_709
  %_cond1_n_cond2_cond3_712 = and i1 %_cond1_n_cond2_711, %_cond4_710
  br i1 %_cond1_n_cond2_cond3_712, label %426, label %427

; <label>:426:                                    ; preds = %421
  %_address_in_parent_stack_bt_714 = bitcast i8* %_pot_address_in_parent_stack_705 to i32*
  br label %427

; <label>:427:                                    ; preds = %421, %426
  %428 = phi i32* [ %425, %421 ], [ %_address_in_parent_stack_bt_714, %426 ]
  %_new_load_715 = load i32, i32* %428
  %ECX_val.219 = load i32, i32* %ECX.161, !mcsema_real_eip !145
  %429 = add i32 %ECX_val.219, %_new_load_715, !mcsema_real_eip !145
  %430 = xor i32 %429, %_new_load_715, !mcsema_real_eip !145
  %431 = xor i32 %430, %ECX_val.219, !mcsema_real_eip !145
  %432 = and i32 %431, 16, !mcsema_real_eip !145
  %433 = icmp ne i32 %432, 0, !mcsema_real_eip !145
  store i1 %433, i1* %AF, !mcsema_real_eip !145
  %434 = lshr i32 %429, 31, !mcsema_real_eip !145
  %435 = trunc i32 %434 to i1, !mcsema_real_eip !145
  store i1 %435, i1* %SF, !mcsema_real_eip !145
  %436 = icmp eq i32 %429, 0, !mcsema_real_eip !145
  store i1 %436, i1* %ZF, !mcsema_real_eip !145
  %437 = xor i32 %_new_load_715, %ECX_val.219, !mcsema_real_eip !145
  %438 = xor i32 %437, -1, !mcsema_real_eip !145
  %439 = and i32 %438, %430, !mcsema_real_eip !145
  %440 = lshr i32 %439, 31, !mcsema_real_eip !145
  %441 = and i32 %440, 1, !mcsema_real_eip !145
  %442 = trunc i32 %441 to i1, !mcsema_real_eip !145
  store i1 %442, i1* %OF, !mcsema_real_eip !145
  %443 = trunc i32 %429 to i8, !mcsema_real_eip !145
  %444 = call i8 @llvm.ctpop.i8(i8 %443), !mcsema_real_eip !145
  %445 = trunc i8 %444 to i1, !mcsema_real_eip !145
  %446 = xor i1 %445, true, !mcsema_real_eip !145
  store i1 %446, i1* %PF, !mcsema_real_eip !145
  %447 = icmp ult i32 %429, %_new_load_715, !mcsema_real_eip !145
  store i1 %447, i1* %CF, !mcsema_real_eip !145
  %448 = zext i32 %429 to i64, !mcsema_real_eip !145
  store i64 %448, i64* %XCX, !mcsema_real_eip !145
  %ECX_val.222 = load i32, i32* %ECX.161, !mcsema_real_eip !146
  store i32 %ECX_val.222, i32* %425, !mcsema_real_eip !146
  %_load_rbp_ptr_167 = load i8*, i8** %_RBP_ptr_
  %_new_gep_168 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -100
  %_allin_new_bt_169 = bitcast i8* %_new_gep_168 to i64*
  %449 = ptrtoint i64* %_allin_new_bt_169 to i64, !mcsema_real_eip !147
  %450 = inttoptr i64 %449 to i32*, !mcsema_real_eip !147
  store i32 0, i32* %450, !mcsema_real_eip !147
  br label %block_0x108, !mcsema_real_eip !134

block_0x108:                                      ; preds = %523, %427
  %_load_rbp_ptr_170 = load i8*, i8** %_RBP_ptr_
  %_new_gep_171 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -100
  %_allin_new_bt_172 = bitcast i8* %_new_gep_171 to i64*
  %451 = ptrtoint i64* %_allin_new_bt_172 to i64, !mcsema_real_eip !148
  %452 = inttoptr i64 %451 to i32*, !mcsema_real_eip !148
  %_ptr_bt_718 = bitcast i32* %452 to i8*
  %_offset_above_rbp_719 = sub i64 %451, %_local_end_to_int_
  %_pot_address_in_parent_stack_720 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_719
  %_cond1_721 = icmp ugt i8* %_ptr_bt_718, %_local_stack_end_ptr_
  %_cond2_1_722 = icmp ugt i8* %_ptr_bt_718, %_parent_stack_end_ptr_
  %_cond2_2_723 = icmp ult i8* %_ptr_bt_718, %_parent_stack_start_ptr_
  %_cond2_724 = or i1 %_cond2_1_722, %_cond2_2_723
  %_cond4_725 = icmp ule i8* %_pot_address_in_parent_stack_720, %_parent_stack_end_ptr_
  %_cond1_n_cond2_726 = and i1 %_cond1_721, %_cond2_724
  %_cond1_n_cond2_cond3_727 = and i1 %_cond1_n_cond2_726, %_cond4_725
  br i1 %_cond1_n_cond2_cond3_727, label %453, label %454

; <label>:453:                                    ; preds = %block_0x108
  %_address_in_parent_stack_bt_729 = bitcast i8* %_pot_address_in_parent_stack_720 to i32*
  br label %454

; <label>:454:                                    ; preds = %block_0x108, %453
  %455 = phi i32* [ %452, %block_0x108 ], [ %_address_in_parent_stack_bt_729, %453 ]
  %_new_load_730 = load i32, i32* %455
  %456 = zext i32 %_new_load_730 to i64, !mcsema_real_eip !148
  store i64 %456, i64* %XAX, !mcsema_real_eip !148
  %_new_gep_174 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -48
  %_allin_new_bt_175 = bitcast i8* %_new_gep_174 to i64*
  %EAX_val.243 = load i32, i32* %EAX.156, !mcsema_real_eip !149
  %457 = ptrtoint i64* %_allin_new_bt_175 to i64, !mcsema_real_eip !149
  %458 = inttoptr i64 %457 to i32*, !mcsema_real_eip !149
  %_ptr_bt_733 = bitcast i32* %458 to i8*
  %_offset_above_rbp_734 = sub i64 %457, %_local_end_to_int_
  %_pot_address_in_parent_stack_735 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_734
  %_cond1_736 = icmp ugt i8* %_ptr_bt_733, %_local_stack_end_ptr_
  %_cond2_1_737 = icmp ugt i8* %_ptr_bt_733, %_parent_stack_end_ptr_
  %_cond2_2_738 = icmp ult i8* %_ptr_bt_733, %_parent_stack_start_ptr_
  %_cond2_739 = or i1 %_cond2_1_737, %_cond2_2_738
  %_cond4_740 = icmp ule i8* %_pot_address_in_parent_stack_735, %_parent_stack_end_ptr_
  %_cond1_n_cond2_741 = and i1 %_cond1_736, %_cond2_739
  %_cond1_n_cond2_cond3_742 = and i1 %_cond1_n_cond2_741, %_cond4_740
  br i1 %_cond1_n_cond2_cond3_742, label %459, label %460

; <label>:459:                                    ; preds = %454
  %_address_in_parent_stack_bt_744 = bitcast i8* %_pot_address_in_parent_stack_735 to i32*
  br label %460

; <label>:460:                                    ; preds = %454, %459
  %461 = phi i32* [ %458, %454 ], [ %_address_in_parent_stack_bt_744, %459 ]
  %_new_load_745 = load i32, i32* %461
  %462 = sub i32 %EAX_val.243, %_new_load_745, !mcsema_real_eip !149
  %463 = xor i32 %462, %EAX_val.243, !mcsema_real_eip !149
  %464 = xor i32 %463, %_new_load_745, !mcsema_real_eip !149
  %465 = and i32 %464, 16, !mcsema_real_eip !149
  %466 = icmp ne i32 %465, 0, !mcsema_real_eip !149
  store i1 %466, i1* %AF, !mcsema_real_eip !149
  %467 = trunc i32 %462 to i8, !mcsema_real_eip !149
  %468 = call i8 @llvm.ctpop.i8(i8 %467), !mcsema_real_eip !149
  %469 = trunc i8 %468 to i1, !mcsema_real_eip !149
  %470 = xor i1 %469, true, !mcsema_real_eip !149
  store i1 %470, i1* %PF, !mcsema_real_eip !149
  %471 = icmp eq i32 %462, 0, !mcsema_real_eip !149
  store i1 %471, i1* %ZF, !mcsema_real_eip !149
  %472 = lshr i32 %462, 31, !mcsema_real_eip !149
  %473 = trunc i32 %472 to i1, !mcsema_real_eip !149
  store i1 %473, i1* %SF, !mcsema_real_eip !149
  %474 = icmp ult i32 %EAX_val.243, %_new_load_745, !mcsema_real_eip !149
  store i1 %474, i1* %CF, !mcsema_real_eip !149
  %475 = xor i32 %EAX_val.243, %_new_load_745, !mcsema_real_eip !149
  %476 = and i32 %475, %463, !mcsema_real_eip !149
  %477 = lshr i32 %476, 31, !mcsema_real_eip !149
  %478 = trunc i32 %477 to i1, !mcsema_real_eip !149
  store i1 %478, i1* %OF, !mcsema_real_eip !149
  %479 = icmp eq i1 %473, %478, !mcsema_real_eip !150
  br i1 %479, label %block_0x133, label %block_0x114, !mcsema_real_eip !150

block_0x114:                                      ; preds = %460
  %_new_gep_177 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -80
  %_allin_new_bt_178 = bitcast i8* %_new_gep_177 to i64*
  %_ptr_to_int_746 = ptrtoint i64* %_allin_new_bt_178 to i64
  %_offset_above_rbp_749 = sub i64 %_ptr_to_int_746, %_local_end_to_int_
  %_pot_address_in_parent_stack_750 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_749
  %_cond1_751 = icmp ugt i8* %_new_gep_177, %_local_stack_end_ptr_
  %_cond2_1_752 = icmp ugt i8* %_new_gep_177, %_parent_stack_end_ptr_
  %_cond2_2_753 = icmp ult i8* %_new_gep_177, %_parent_stack_start_ptr_
  %_cond2_754 = or i1 %_cond2_1_752, %_cond2_2_753
  %_cond4_755 = icmp ule i8* %_pot_address_in_parent_stack_750, %_parent_stack_end_ptr_
  %_cond1_n_cond2_756 = and i1 %_cond1_751, %_cond2_754
  %_cond1_n_cond2_cond3_757 = and i1 %_cond1_n_cond2_756, %_cond4_755
  br i1 %_cond1_n_cond2_cond3_757, label %480, label %481

; <label>:480:                                    ; preds = %block_0x114
  %_address_in_parent_stack_bt_759 = bitcast i8* %_pot_address_in_parent_stack_750 to i64*
  br label %481

; <label>:481:                                    ; preds = %block_0x114, %480
  %482 = phi i64* [ %_allin_new_bt_178, %block_0x114 ], [ %_address_in_parent_stack_bt_759, %480 ]
  %_new_load_760 = load i64, i64* %482
  store i64 %_new_load_760, i64* %XAX, !mcsema_real_eip !151
  br i1 %_cond1_n_cond2_cond3_727, label %483, label %484

; <label>:483:                                    ; preds = %481
  %_address_in_parent_stack_bt_774 = bitcast i8* %_pot_address_in_parent_stack_720 to i32*
  br label %484

; <label>:484:                                    ; preds = %481, %483
  %485 = phi i32* [ %452, %481 ], [ %_address_in_parent_stack_bt_774, %483 ]
  %_new_load_775 = load i32, i32* %485
  %486 = sext i32 %_new_load_775 to i64, !mcsema_real_eip !152
  store i64 %486, i64* %XCX, !mcsema_real_eip !152
  %487 = mul i64 %486, 4, !mcsema_real_eip !153
  %488 = add i64 %_new_load_760, %487, !mcsema_real_eip !153
  %489 = inttoptr i64 %488 to i64*, !mcsema_real_eip !153
  %490 = inttoptr i64 %488 to i32*, !mcsema_real_eip !153
  %_ptr_bt_778 = bitcast i32* %490 to i8*
  %_offset_above_rbp_779 = sub i64 %488, %_local_end_to_int_
  %_pot_address_in_parent_stack_780 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_779
  %_cond1_781 = icmp ugt i8* %_ptr_bt_778, %_local_stack_end_ptr_
  %_cond2_1_782 = icmp ugt i8* %_ptr_bt_778, %_parent_stack_end_ptr_
  %_cond2_2_783 = icmp ult i8* %_ptr_bt_778, %_parent_stack_start_ptr_
  %_cond2_784 = or i1 %_cond2_1_782, %_cond2_2_783
  %_cond4_785 = icmp ule i8* %_pot_address_in_parent_stack_780, %_parent_stack_end_ptr_
  %_cond1_n_cond2_786 = and i1 %_cond1_781, %_cond2_784
  %_cond1_n_cond2_cond3_787 = and i1 %_cond1_n_cond2_786, %_cond4_785
  br i1 %_cond1_n_cond2_cond3_787, label %491, label %492

; <label>:491:                                    ; preds = %484
  %_address_in_parent_stack_bt_789 = bitcast i8* %_pot_address_in_parent_stack_780 to i32*
  br label %492

; <label>:492:                                    ; preds = %484, %491
  %493 = phi i32* [ %490, %484 ], [ %_address_in_parent_stack_bt_789, %491 ]
  %_new_load_790 = load i32, i32* %493
  %494 = zext i32 %_new_load_790 to i64, !mcsema_real_eip !153
  store i64 %494, i64* %XDX, !mcsema_real_eip !153
  %_new_gep_183 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -84
  %_allin_new_bt_184 = bitcast i8* %_new_gep_183 to i64*
  %495 = ptrtoint i64* %_allin_new_bt_184 to i64, !mcsema_real_eip !154
  %496 = inttoptr i64 %495 to i32*, !mcsema_real_eip !154
  %_ptr_bt_793 = bitcast i32* %496 to i8*
  %_offset_above_rbp_794 = sub i64 %495, %_local_end_to_int_
  %_pot_address_in_parent_stack_795 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_794
  %_cond1_796 = icmp ugt i8* %_ptr_bt_793, %_local_stack_end_ptr_
  %_cond2_1_797 = icmp ugt i8* %_ptr_bt_793, %_parent_stack_end_ptr_
  %_cond2_2_798 = icmp ult i8* %_ptr_bt_793, %_parent_stack_start_ptr_
  %_cond2_799 = or i1 %_cond2_1_797, %_cond2_2_798
  %_cond4_800 = icmp ule i8* %_pot_address_in_parent_stack_795, %_parent_stack_end_ptr_
  %_cond1_n_cond2_801 = and i1 %_cond1_796, %_cond2_799
  %_cond1_n_cond2_cond3_802 = and i1 %_cond1_n_cond2_801, %_cond4_800
  br i1 %_cond1_n_cond2_cond3_802, label %497, label %498

; <label>:497:                                    ; preds = %492
  %_address_in_parent_stack_bt_804 = bitcast i8* %_pot_address_in_parent_stack_795 to i32*
  br label %498

; <label>:498:                                    ; preds = %492, %497
  %499 = phi i32* [ %496, %492 ], [ %_address_in_parent_stack_bt_804, %497 ]
  %_new_load_805 = load i32, i32* %499
  %EDX.253 = bitcast i64* %XDX to i32*, !mcsema_real_eip !154
  %EDX_val.254 = load i32, i32* %EDX.253, !mcsema_real_eip !154
  %500 = add i32 %EDX_val.254, %_new_load_805, !mcsema_real_eip !154
  %501 = xor i32 %500, %_new_load_805, !mcsema_real_eip !154
  %502 = xor i32 %501, %EDX_val.254, !mcsema_real_eip !154
  %503 = and i32 %502, 16, !mcsema_real_eip !154
  %504 = icmp ne i32 %503, 0, !mcsema_real_eip !154
  store i1 %504, i1* %AF, !mcsema_real_eip !154
  %505 = lshr i32 %500, 31, !mcsema_real_eip !154
  %506 = trunc i32 %505 to i1, !mcsema_real_eip !154
  store i1 %506, i1* %SF, !mcsema_real_eip !154
  %507 = icmp eq i32 %500, 0, !mcsema_real_eip !154
  store i1 %507, i1* %ZF, !mcsema_real_eip !154
  %508 = xor i32 %_new_load_805, %EDX_val.254, !mcsema_real_eip !154
  %509 = xor i32 %508, -1, !mcsema_real_eip !154
  %510 = and i32 %509, %501, !mcsema_real_eip !154
  %511 = lshr i32 %510, 31, !mcsema_real_eip !154
  %512 = and i32 %511, 1, !mcsema_real_eip !154
  %513 = trunc i32 %512 to i1, !mcsema_real_eip !154
  store i1 %513, i1* %OF, !mcsema_real_eip !154
  %514 = trunc i32 %500 to i8, !mcsema_real_eip !154
  %515 = call i8 @llvm.ctpop.i8(i8 %514), !mcsema_real_eip !154
  %516 = trunc i8 %515 to i1, !mcsema_real_eip !154
  %517 = xor i1 %516, true, !mcsema_real_eip !154
  store i1 %517, i1* %PF, !mcsema_real_eip !154
  %518 = icmp ult i32 %500, %_new_load_805, !mcsema_real_eip !154
  store i1 %518, i1* %CF, !mcsema_real_eip !154
  %519 = zext i32 %500 to i64, !mcsema_real_eip !154
  store i64 %519, i64* %XDX, !mcsema_real_eip !154
  %EDX_val.257 = load i32, i32* %EDX.253, !mcsema_real_eip !155
  store i32 %EDX_val.257, i32* %496, !mcsema_real_eip !155
  %_load_rbp_ptr_188 = load i8*, i8** %_RBP_ptr_
  %_new_gep_189 = getelementptr i8, i8* %_load_rbp_ptr_188, i64 -100
  %_allin_new_bt_190 = bitcast i8* %_new_gep_189 to i64*
  %520 = ptrtoint i64* %_allin_new_bt_190 to i64, !mcsema_real_eip !156
  %521 = inttoptr i64 %520 to i32*, !mcsema_real_eip !156
  %_ptr_bt_808 = bitcast i32* %521 to i8*
  %_offset_above_rbp_809 = sub i64 %520, %_local_end_to_int_
  %_pot_address_in_parent_stack_810 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_809
  %_cond1_811 = icmp ugt i8* %_ptr_bt_808, %_local_stack_end_ptr_
  %_cond2_1_812 = icmp ugt i8* %_ptr_bt_808, %_parent_stack_end_ptr_
  %_cond2_2_813 = icmp ult i8* %_ptr_bt_808, %_parent_stack_start_ptr_
  %_cond2_814 = or i1 %_cond2_1_812, %_cond2_2_813
  %_cond4_815 = icmp ule i8* %_pot_address_in_parent_stack_810, %_parent_stack_end_ptr_
  %_cond1_n_cond2_816 = and i1 %_cond1_811, %_cond2_814
  %_cond1_n_cond2_cond3_817 = and i1 %_cond1_n_cond2_816, %_cond4_815
  br i1 %_cond1_n_cond2_cond3_817, label %522, label %523

; <label>:522:                                    ; preds = %498
  %_address_in_parent_stack_bt_819 = bitcast i8* %_pot_address_in_parent_stack_810 to i32*
  br label %523

; <label>:523:                                    ; preds = %498, %522
  %524 = phi i32* [ %521, %498 ], [ %_address_in_parent_stack_bt_819, %522 ]
  %_new_load_820 = load i32, i32* %524
  %525 = zext i32 %_new_load_820 to i64, !mcsema_real_eip !156
  store i64 %525, i64* %XAX, !mcsema_real_eip !156
  %EAX_val.260 = load i32, i32* %EAX.156, !mcsema_real_eip !157
  %526 = add i32 1, %EAX_val.260, !mcsema_real_eip !157
  %527 = xor i32 %526, %EAX_val.260, !mcsema_real_eip !157
  %528 = xor i32 %527, 1, !mcsema_real_eip !157
  %529 = and i32 %528, 16, !mcsema_real_eip !157
  %530 = icmp ne i32 %529, 0, !mcsema_real_eip !157
  store i1 %530, i1* %AF, !mcsema_real_eip !157
  %531 = lshr i32 %526, 31, !mcsema_real_eip !157
  %532 = trunc i32 %531 to i1, !mcsema_real_eip !157
  store i1 %532, i1* %SF, !mcsema_real_eip !157
  %533 = icmp eq i32 %526, 0, !mcsema_real_eip !157
  store i1 %533, i1* %ZF, !mcsema_real_eip !157
  %534 = xor i32 %EAX_val.260, 1, !mcsema_real_eip !157
  %535 = xor i32 %534, -1, !mcsema_real_eip !157
  %536 = and i32 %535, %527, !mcsema_real_eip !157
  %537 = lshr i32 %536, 31, !mcsema_real_eip !157
  %538 = and i32 %537, 1, !mcsema_real_eip !157
  %539 = trunc i32 %538 to i1, !mcsema_real_eip !157
  store i1 %539, i1* %OF, !mcsema_real_eip !157
  %540 = trunc i32 %526 to i8, !mcsema_real_eip !157
  %541 = call i8 @llvm.ctpop.i8(i8 %540), !mcsema_real_eip !157
  %542 = trunc i8 %541 to i1, !mcsema_real_eip !157
  %543 = xor i1 %542, true, !mcsema_real_eip !157
  store i1 %543, i1* %PF, !mcsema_real_eip !157
  %544 = icmp ult i32 %526, %EAX_val.260, !mcsema_real_eip !157
  store i1 %544, i1* %CF, !mcsema_real_eip !157
  %545 = zext i32 %526 to i64, !mcsema_real_eip !157
  store i64 %545, i64* %XAX, !mcsema_real_eip !157
  %EAX_val.263 = load i32, i32* %EAX.156, !mcsema_real_eip !158
  store i32 %EAX_val.263, i32* %521, !mcsema_real_eip !158
  br label %block_0x108, !mcsema_real_eip !159

block_0x133:                                      ; preds = %460
  %_new_gep_195 = getelementptr i8, i8* %_load_rbp_ptr_170, i64 -84
  %_allin_new_bt_196 = bitcast i8* %_new_gep_195 to i64*
  %546 = ptrtoint i64* %_allin_new_bt_196 to i64, !mcsema_real_eip !160
  %547 = inttoptr i64 %546 to i32*, !mcsema_real_eip !160
  %_ptr_bt_823 = bitcast i32* %547 to i8*
  %_offset_above_rbp_824 = sub i64 %546, %_local_end_to_int_
  %_pot_address_in_parent_stack_825 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_824
  %_cond1_826 = icmp ugt i8* %_ptr_bt_823, %_local_stack_end_ptr_
  %_cond2_1_827 = icmp ugt i8* %_ptr_bt_823, %_parent_stack_end_ptr_
  %_cond2_2_828 = icmp ult i8* %_ptr_bt_823, %_parent_stack_start_ptr_
  %_cond2_829 = or i1 %_cond2_1_827, %_cond2_2_828
  %_cond4_830 = icmp ule i8* %_pot_address_in_parent_stack_825, %_parent_stack_end_ptr_
  %_cond1_n_cond2_831 = and i1 %_cond1_826, %_cond2_829
  %_cond1_n_cond2_cond3_832 = and i1 %_cond1_n_cond2_831, %_cond4_830
  br i1 %_cond1_n_cond2_cond3_832, label %548, label %549

; <label>:548:                                    ; preds = %block_0x133
  %_address_in_parent_stack_bt_834 = bitcast i8* %_pot_address_in_parent_stack_825 to i32*
  br label %549

; <label>:549:                                    ; preds = %block_0x133, %548
  %550 = phi i32* [ %547, %block_0x133 ], [ %_address_in_parent_stack_bt_834, %548 ]
  %_new_load_835 = load i32, i32* %550
  %551 = zext i32 %_new_load_835 to i64, !mcsema_real_eip !160
  store i64 %551, i64* %XAX, !mcsema_real_eip !160
  %_load_rsp_ptr_197 = load i8*, i8** %_RSP_ptr_
  %RSP_val.245 = load i64, i64* %XSP, !mcsema_real_eip !161
  %_allin_new_bt_198 = bitcast i8* %_load_rsp_ptr_197 to i64*
  %_ptr_to_int_836 = ptrtoint i64* %_allin_new_bt_198 to i64
  %_offset_above_rbp_839 = sub i64 %_ptr_to_int_836, %_local_end_to_int_
  %_pot_address_in_parent_stack_840 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_839
  %_cond1_841 = icmp ugt i8* %_load_rsp_ptr_197, %_local_stack_end_ptr_
  %_cond2_1_842 = icmp ugt i8* %_load_rsp_ptr_197, %_parent_stack_end_ptr_
  %_cond2_2_843 = icmp ult i8* %_load_rsp_ptr_197, %_parent_stack_start_ptr_
  %_cond2_844 = or i1 %_cond2_1_842, %_cond2_2_843
  %_cond4_845 = icmp ule i8* %_pot_address_in_parent_stack_840, %_parent_stack_end_ptr_
  %_cond1_n_cond2_846 = and i1 %_cond1_841, %_cond2_844
  %_cond1_n_cond2_cond3_847 = and i1 %_cond1_n_cond2_846, %_cond4_845
  br i1 %_cond1_n_cond2_cond3_847, label %552, label %553

; <label>:552:                                    ; preds = %549
  %_address_in_parent_stack_bt_849 = bitcast i8* %_pot_address_in_parent_stack_840 to i64*
  br label %553

; <label>:553:                                    ; preds = %549, %552
  %554 = phi i64* [ %_allin_new_bt_198, %549 ], [ %_address_in_parent_stack_bt_849, %552 ]
  %_new_load_850 = load i64, i64* %554
  store i64 %_new_load_850, i64* %XBX, !mcsema_real_eip !161
  %_new_gep_199 = getelementptr i8, i8* %_load_rsp_ptr_197, i64 8
  %555 = add i64 %RSP_val.245, 8, !mcsema_real_eip !161
  store volatile i8* %_new_gep_199, i8** %_RSP_ptr_
  store i64 %555, i64* %XSP, !mcsema_real_eip !161
  %_allin_new_bt_201 = bitcast i8* %_new_gep_199 to i64*
  %_ptr_to_int_851 = ptrtoint i64* %_allin_new_bt_201 to i64
  %_offset_above_rbp_854 = sub i64 %_ptr_to_int_851, %_local_end_to_int_
  %_pot_address_in_parent_stack_855 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_854
  %_cond1_856 = icmp ugt i8* %_new_gep_199, %_local_stack_end_ptr_
  %_cond2_1_857 = icmp ugt i8* %_new_gep_199, %_parent_stack_end_ptr_
  %_cond2_2_858 = icmp ult i8* %_new_gep_199, %_parent_stack_start_ptr_
  %_cond2_859 = or i1 %_cond2_1_857, %_cond2_2_858
  %_cond4_860 = icmp ule i8* %_pot_address_in_parent_stack_855, %_parent_stack_end_ptr_
  %_cond1_n_cond2_861 = and i1 %_cond1_856, %_cond2_859
  %_cond1_n_cond2_cond3_862 = and i1 %_cond1_n_cond2_861, %_cond4_860
  br i1 %_cond1_n_cond2_cond3_862, label %556, label %557

; <label>:556:                                    ; preds = %553
  %_address_in_parent_stack_bt_864 = bitcast i8* %_pot_address_in_parent_stack_855 to i64*
  br label %557

; <label>:557:                                    ; preds = %553, %556
  %558 = phi i64* [ %_allin_new_bt_201, %553 ], [ %_address_in_parent_stack_bt_864, %556 ]
  %_new_load_865 = load i64, i64* %558
  %_new_int2ptr_ = inttoptr i64 %_new_load_865 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_865, i64* %XBP, !mcsema_real_eip !162
  %_new_gep_202 = getelementptr i8, i8* %_new_gep_199, i64 8
  %559 = add i64 %555, 8, !mcsema_real_eip !162
  store volatile i8* %_new_gep_202, i8** %_RSP_ptr_
  store i64 %559, i64* %XSP, !mcsema_real_eip !162
  %_new_gep_204 = getelementptr i8, i8* %_new_gep_202, i64 8
  %560 = add i64 %559, 8, !mcsema_real_eip !163
  %_allin_new_bt_205 = bitcast i8* %_new_gep_202 to i64*
  %_ptr_to_int_866 = ptrtoint i64* %_allin_new_bt_205 to i64
  %_offset_above_rbp_869 = sub i64 %_ptr_to_int_866, %_local_end_to_int_
  %_pot_address_in_parent_stack_870 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_869
  %_cond1_871 = icmp ugt i8* %_new_gep_202, %_local_stack_end_ptr_
  %_cond2_1_872 = icmp ugt i8* %_new_gep_202, %_parent_stack_end_ptr_
  %_cond2_2_873 = icmp ult i8* %_new_gep_202, %_parent_stack_start_ptr_
  %_cond2_874 = or i1 %_cond2_1_872, %_cond2_2_873
  %_cond4_875 = icmp ule i8* %_pot_address_in_parent_stack_870, %_parent_stack_end_ptr_
  %_cond1_n_cond2_876 = and i1 %_cond1_871, %_cond2_874
  %_cond1_n_cond2_cond3_877 = and i1 %_cond1_n_cond2_876, %_cond4_875
  br i1 %_cond1_n_cond2_cond3_877, label %561, label %562

; <label>:561:                                    ; preds = %557
  %_address_in_parent_stack_bt_879 = bitcast i8* %_pot_address_in_parent_stack_870 to i64*
  br label %562

; <label>:562:                                    ; preds = %557, %561
  %563 = phi i64* [ %_allin_new_bt_205, %557 ], [ %_address_in_parent_stack_bt_879, %561 ]
  %_new_load_880 = load i64, i64* %563
  store i64 %_new_load_880, i64* %XIP, !mcsema_real_eip !163
  store volatile i8* %_new_gep_204, i8** %_RSP_ptr_
  store i64 %560, i64* %XSP, !mcsema_real_eip !163
  ret void, !mcsema_real_eip !163
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 320}
!3 = !{i64 321}
!4 = !{i64 324}
!5 = !{i64 326}
!6 = !{i64 327}
!7 = !{i64 334}
!8 = !{i64 341}
!9 = !{i64 348}
!10 = !{i64 355}
!11 = !{i64 359}
!12 = !{i64 365}
!13 = !{i64 368}
!14 = !{i64 371}
!15 = !{i64 375}
!16 = !{i64 379}
!17 = !{i64 382}
!18 = !{i64 385}
!19 = !{i64 388}
!20 = !{i64 393}
!21 = !{i64 398}
!22 = !{i64 400}
!23 = !{i64 404}
!24 = !{i64 408}
!25 = !{i64 413}
!26 = !{i64 417}
!27 = !{i64 424}
!28 = !{i64 428}
!29 = !{i64 434}
!30 = !{i64 437}
!31 = !{i64 440}
!32 = !{i64 444}
!33 = !{i64 448}
!34 = !{i64 451}
!35 = !{i64 454}
!36 = !{i64 457}
!37 = !{i64 460}
!38 = !{i64 465}
!39 = !{i64 470}
!40 = !{i64 474}
!41 = !{i64 477}
!42 = !{i64 481}
!43 = !{i64 485}
!44 = !{i64 489}
!45 = !{i64 493}
!46 = !{i64 497}
!47 = !{i64 501}
!48 = !{i64 504}
!49 = !{i64 508}
!50 = !{i64 512}
!51 = !{i64 515}
!52 = !{i64 519}
!53 = !{i64 522}
!54 = !{i64 526}
!55 = !{i64 529}
!56 = !{i64 532}
!57 = !{i64 535}
!58 = !{i64 539}
!59 = !{i64 544}
!60 = !{i64 548}
!61 = !{i64 553}
!62 = !{i64 558}
!63 = !{i64 563}
!64 = !{i64 573}
!65 = !{i64 576}
!66 = !{i64 579}
!67 = !{i64 581}
!68 = !{i64 586}
!69 = !{i64 589}
!70 = !{i64 595}
!71 = !{i64 597}
!72 = !{i64 604}
!73 = !{i64 605}
!74 = !{i64 607}
!75 = !{i64 608}
!76 = !{i64 0}
!77 = !{i64 1}
!78 = !{i64 4}
!79 = !{i64 5}
!80 = !{i64 9}
!81 = !{i64 13}
!82 = !{i64 17}
!83 = !{i64 20}
!84 = !{i64 23}
!85 = !{i64 27}
!86 = !{i64 31}
!87 = !{i64 35}
!88 = !{i64 39}
!89 = !{i64 43}
!90 = !{i64 46}
!91 = !{i64 50}
!92 = !{i64 54}
!93 = !{i64 58}
!94 = !{i64 65}
!95 = !{i64 68}
!96 = !{i64 71}
!97 = !{i64 74}
!98 = !{i64 81}
!99 = !{i64 84}
!100 = !{i64 87}
!101 = !{i64 93}
!102 = !{i64 97}
!103 = !{i64 101}
!104 = !{i64 104}
!105 = !{i64 107}
!106 = !{i64 110}
!107 = !{i64 113}
!108 = !{i64 116}
!109 = !{i64 119}
!110 = !{i64 124}
!111 = !{i64 128}
!112 = !{i64 130}
!113 = !{i64 133}
!114 = !{i64 136}
!115 = !{i64 143}
!116 = !{i64 146}
!117 = !{i64 149}
!118 = !{i64 155}
!119 = !{i64 159}
!120 = !{i64 163}
!121 = !{i64 166}
!122 = !{i64 169}
!123 = !{i64 172}
!124 = !{i64 175}
!125 = !{i64 178}
!126 = !{i64 181}
!127 = !{i64 186}
!128 = !{i64 189}
!129 = !{i64 192}
!130 = !{i64 195}
!131 = !{i64 202}
!132 = !{i64 205}
!133 = !{i64 208}
!134 = !{i64 214}
!135 = !{i64 218}
!136 = !{i64 222}
!137 = !{i64 225}
!138 = !{i64 228}
!139 = !{i64 231}
!140 = !{i64 234}
!141 = !{i64 237}
!142 = !{i64 240}
!143 = !{i64 245}
!144 = !{i64 249}
!145 = !{i64 251}
!146 = !{i64 254}
!147 = !{i64 257}
!148 = !{i64 264}
!149 = !{i64 267}
!150 = !{i64 270}
!151 = !{i64 276}
!152 = !{i64 280}
!153 = !{i64 284}
!154 = !{i64 287}
!155 = !{i64 290}
!156 = !{i64 293}
!157 = !{i64 296}
!158 = !{i64 299}
!159 = !{i64 302}
!160 = !{i64 307}
!161 = !{i64 310}
!162 = !{i64 311}
!163 = !{i64 312}
