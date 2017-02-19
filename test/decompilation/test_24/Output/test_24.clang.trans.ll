; ModuleID = 'Output/test_24.clang.trans.bc'
source_filename = "Output/test_24.clang.bc"
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
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
module asm "  .cfi_endproc;"
module asm "  .globl to_byte;"
module asm "  .globl _to_byte;"
module asm "  .type _to_byte,@function"
module asm "_to_byte:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq to_byte@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _to_byte,0b-_to_byte;"
module asm "  .cfi_endproc;"
module asm "  .globl read_bytes;"
module asm "  .globl _read_bytes;"
module asm "  .type _read_bytes,@function"
module asm "_read_bytes:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq read_bytes@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _read_bytes,0b-_read_bytes;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl keycomp;"
module asm "  .type keycomp,@function"
module asm "keycomp:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size keycomp,0b-keycomp;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x420 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c" \04\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -80
  %2 = sub i64 %RSP_val.3, 80, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 80, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 80
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 80
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %14 = load i64, i64* %_allin_new_bt_18, !mcsema_real_eip !6
  store i64 %14, i64* %XDI, !mcsema_real_eip !6
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !7
  %_new_gep_20 = getelementptr i8, i8* %_load_rsp_ptr_19, i64 -8
  %15 = sub i64 %RSP_val.8, 8, !mcsema_real_eip !7
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, !mcsema_real_eip !7
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %15, i64* %XSP, !mcsema_real_eip !7
  %16 = call x86_64_sysvcc i64 @_strlen(i64 %14)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %16, i64* %XAX, !mcsema_real_eip !7
  %EAX.9 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.10 = load i32, i32* %EAX.9, !mcsema_real_eip !8
  %17 = zext i32 %EAX_val.10 to i64, !mcsema_real_eip !8
  store i64 %17, i64* %XCX, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -32
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.13 = load i32, i32* %ECX.12, !mcsema_real_eip !9
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !9
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.13, i32* %19, !mcsema_real_eip !9
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -32
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !10
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !10
  %22 = load i32, i32* %21, !mcsema_real_eip !10
  %23 = sub i32 %22, 37, !mcsema_real_eip !10
  %24 = xor i32 %23, %22, !mcsema_real_eip !10
  %25 = xor i32 %24, 37, !mcsema_real_eip !10
  %26 = and i32 %25, 16, !mcsema_real_eip !10
  %27 = icmp ne i32 %26, 0, !mcsema_real_eip !10
  store i1 %27, i1* %AF, !mcsema_real_eip !10
  %28 = trunc i32 %23 to i8, !mcsema_real_eip !10
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !10
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !10
  %31 = xor i1 %30, true, !mcsema_real_eip !10
  store i1 %31, i1* %PF, !mcsema_real_eip !10
  %32 = icmp eq i32 %23, 0, !mcsema_real_eip !10
  store i1 %32, i1* %ZF, !mcsema_real_eip !10
  %33 = lshr i32 %23, 31, !mcsema_real_eip !10
  %34 = trunc i32 %33 to i1, !mcsema_real_eip !10
  store i1 %34, i1* %SF, !mcsema_real_eip !10
  %35 = icmp ult i32 %22, 37, !mcsema_real_eip !10
  store i1 %35, i1* %CF, !mcsema_real_eip !10
  %36 = xor i32 %22, 37, !mcsema_real_eip !10
  %37 = and i32 %36, %24, !mcsema_real_eip !10
  %38 = lshr i32 %37, 31, !mcsema_real_eip !10
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !10
  store i1 %39, i1* %OF, !mcsema_real_eip !10
  br i1 %32, label %block_0x2f, label %block_0x24, !mcsema_real_eip !11

block_0x24:                                       ; preds = %block_0x0
  %40 = load i32, i32* %21, !mcsema_real_eip !12
  %41 = zext i32 %40 to i64, !mcsema_real_eip !12
  store i64 %41, i64* %XAX, !mcsema_real_eip !12
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -4
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX_val.18 = load i32, i32* %EAX.9, !mcsema_real_eip !13
  %42 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !13
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.18, i32* %43, !mcsema_real_eip !13
  br label %block_0x417, !mcsema_real_eip !14

block_0x2f:                                       ; preds = %block_0x0
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -16
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %44 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !15
  store i64 %44, i64* %XAX, !mcsema_real_eip !15
  %45 = add i64 4, %44, !mcsema_real_eip !16
  %46 = xor i64 %45, %44, !mcsema_real_eip !16
  %47 = xor i64 %46, 4, !mcsema_real_eip !16
  %48 = and i64 %47, 16, !mcsema_real_eip !16
  %49 = icmp ne i64 %48, 0, !mcsema_real_eip !16
  store i1 %49, i1* %AF, !mcsema_real_eip !16
  %50 = lshr i64 %45, 63, !mcsema_real_eip !16
  %51 = trunc i64 %50 to i1, !mcsema_real_eip !16
  store i1 %51, i1* %SF, !mcsema_real_eip !16
  %52 = icmp eq i64 %45, 0, !mcsema_real_eip !16
  store i1 %52, i1* %ZF, !mcsema_real_eip !16
  %53 = xor i64 %44, 4, !mcsema_real_eip !16
  %54 = xor i64 %53, -1, !mcsema_real_eip !16
  %55 = and i64 %54, %46, !mcsema_real_eip !16
  %56 = lshr i64 %55, 63, !mcsema_real_eip !16
  %57 = and i64 %56, 1, !mcsema_real_eip !16
  %58 = trunc i64 %57 to i1, !mcsema_real_eip !16
  store i1 %58, i1* %OF, !mcsema_real_eip !16
  %59 = trunc i64 %45 to i8, !mcsema_real_eip !16
  %60 = call i8 @llvm.ctpop.i8(i8 %59), !mcsema_real_eip !16
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !16
  %62 = xor i1 %61, true, !mcsema_real_eip !16
  store i1 %62, i1* %PF, !mcsema_real_eip !16
  %63 = icmp ult i64 %45, %44, !mcsema_real_eip !16
  store i1 %63, i1* %CF, !mcsema_real_eip !16
  store i64 %45, i64* %XAX, !mcsema_real_eip !16
  store i64 %45, i64* %_allin_new_bt_36, !mcsema_real_eip !17
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -16
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %64 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !18
  store i64 %64, i64* %XAX, !mcsema_real_eip !18
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !19
  %66 = inttoptr i64 %64 to i8*, !mcsema_real_eip !19
  %67 = load i8, i8* %66, !mcsema_real_eip !19
  %68 = sext i8 %67 to i32, !mcsema_real_eip !19
  %69 = zext i32 %68 to i64, !mcsema_real_eip !19
  store i64 %69, i64* %XCX, !mcsema_real_eip !19
  %ECX_val.26 = load i32, i32* %ECX.12, !mcsema_real_eip !20
  %70 = sub i32 %ECX_val.26, 100, !mcsema_real_eip !20
  %71 = xor i32 %70, %ECX_val.26, !mcsema_real_eip !20
  %72 = xor i32 %71, 100, !mcsema_real_eip !20
  %73 = and i32 %72, 16, !mcsema_real_eip !20
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !20
  store i1 %74, i1* %AF, !mcsema_real_eip !20
  %75 = trunc i32 %70 to i8, !mcsema_real_eip !20
  %76 = call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !20
  %77 = trunc i8 %76 to i1, !mcsema_real_eip !20
  %78 = xor i1 %77, true, !mcsema_real_eip !20
  store i1 %78, i1* %PF, !mcsema_real_eip !20
  %79 = icmp eq i32 %70, 0, !mcsema_real_eip !20
  store i1 %79, i1* %ZF, !mcsema_real_eip !20
  %80 = lshr i32 %70, 31, !mcsema_real_eip !20
  %81 = trunc i32 %80 to i1, !mcsema_real_eip !20
  store i1 %81, i1* %SF, !mcsema_real_eip !20
  %82 = icmp ult i32 %ECX_val.26, 100, !mcsema_real_eip !20
  store i1 %82, i1* %CF, !mcsema_real_eip !20
  %83 = xor i32 %ECX_val.26, 100, !mcsema_real_eip !20
  %84 = and i32 %83, %71, !mcsema_real_eip !20
  %85 = lshr i32 %84, 31, !mcsema_real_eip !20
  %86 = trunc i32 %85 to i1, !mcsema_real_eip !20
  store i1 %86, i1* %OF, !mcsema_real_eip !20
  br i1 %79, label %block_0x57, label %block_0x4b, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %block_0x2f
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -4
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %87 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !22
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !22
  store i32 -2, i32* %88, !mcsema_real_eip !22
  br label %block_0x417, !mcsema_real_eip !23

block_0x57:                                       ; preds = %block_0x2f
  %89 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !24
  store i64 %89, i64* %XAX, !mcsema_real_eip !24
  %90 = add i64 %89, 1, !mcsema_real_eip !25
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !25
  %92 = inttoptr i64 %90 to i8*, !mcsema_real_eip !25
  %93 = load i8, i8* %92, !mcsema_real_eip !25
  %94 = zext i8 %93 to i32, !mcsema_real_eip !25
  %95 = zext i32 %94 to i64, !mcsema_real_eip !25
  store i64 %95, i64* %XDI, !mcsema_real_eip !25
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %96 = sub i64 %RSP_val.31, 8, !mcsema_real_eip !26
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_51, !mcsema_real_eip !26
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %96, i64* %XSP, !mcsema_real_eip !26
  %97 = call x86_64_sysvcc i64 @_to_byte(i64 %95)
  %_rsp_fix_416 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_417 = getelementptr i8, i8* %_rsp_fix_416, i64 8
  store i8* %_gep_fix_417, i8** %_RSP_ptr_
  store i64 %97, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.33 = load i32, i32* %EAX.9, !mcsema_real_eip !27
  %98 = sub i32 %EAX_val.33, 9, !mcsema_real_eip !27
  %99 = xor i32 %98, %EAX_val.33, !mcsema_real_eip !27
  %100 = xor i32 %99, 9, !mcsema_real_eip !27
  %101 = and i32 %100, 16, !mcsema_real_eip !27
  %102 = icmp ne i32 %101, 0, !mcsema_real_eip !27
  store i1 %102, i1* %AF, !mcsema_real_eip !27
  %103 = trunc i32 %98 to i8, !mcsema_real_eip !27
  %104 = call i8 @llvm.ctpop.i8(i8 %103), !mcsema_real_eip !27
  %105 = trunc i8 %104 to i1, !mcsema_real_eip !27
  %106 = xor i1 %105, true, !mcsema_real_eip !27
  store i1 %106, i1* %PF, !mcsema_real_eip !27
  %107 = icmp eq i32 %98, 0, !mcsema_real_eip !27
  store i1 %107, i1* %ZF, !mcsema_real_eip !27
  %108 = lshr i32 %98, 31, !mcsema_real_eip !27
  %109 = trunc i32 %108 to i1, !mcsema_real_eip !27
  store i1 %109, i1* %SF, !mcsema_real_eip !27
  %110 = icmp ult i32 %EAX_val.33, 9, !mcsema_real_eip !27
  store i1 %110, i1* %CF, !mcsema_real_eip !27
  %111 = xor i32 %EAX_val.33, 9, !mcsema_real_eip !27
  %112 = and i32 %111, %99, !mcsema_real_eip !27
  %113 = lshr i32 %112, 31, !mcsema_real_eip !27
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !27
  store i1 %114, i1* %OF, !mcsema_real_eip !27
  br i1 %107, label %block_0x79, label %block_0x6d, !mcsema_real_eip !28

block_0x6d:                                       ; preds = %block_0x57
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -4
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %115 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !29
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !29
  store i32 -3, i32* %116, !mcsema_real_eip !29
  br label %block_0x417, !mcsema_real_eip !30

block_0x79:                                       ; preds = %block_0x57
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -16
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %117 = load i64, i64* %_allin_new_bt_57, !mcsema_real_eip !31
  store i64 %117, i64* %XAX, !mcsema_real_eip !31
  %118 = add i64 %117, 2, !mcsema_real_eip !32
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !32
  %120 = inttoptr i64 %118 to i8*, !mcsema_real_eip !32
  %121 = load i8, i8* %120, !mcsema_real_eip !32
  %122 = zext i8 %121 to i32, !mcsema_real_eip !32
  %123 = zext i32 %122 to i64, !mcsema_real_eip !32
  store i64 %123, i64* %XDI, !mcsema_real_eip !32
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !33
  %_new_gep_59 = getelementptr i8, i8* %_gep_fix_417, i64 -8
  %124 = sub i64 %RSP_val.38, 8, !mcsema_real_eip !33
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_60, !mcsema_real_eip !33
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_
  store i64 %124, i64* %XSP, !mcsema_real_eip !33
  %125 = call x86_64_sysvcc i64 @_to_byte(i64 %123)
  %_rsp_fix_418 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_419 = getelementptr i8, i8* %_rsp_fix_418, i64 8
  store i8* %_gep_fix_419, i8** %_RSP_ptr_
  store i64 %125, i64* %XAX, !mcsema_real_eip !33
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -24
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %EAX_val.41 = load i32, i32* %EAX.9, !mcsema_real_eip !34
  %126 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !34
  %127 = inttoptr i64 %126 to i32*, !mcsema_real_eip !34
  store i32 %EAX_val.41, i32* %127, !mcsema_real_eip !34
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -24
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %128 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !35
  %129 = inttoptr i64 %128 to i32*, !mcsema_real_eip !35
  %130 = load i32, i32* %129, !mcsema_real_eip !35
  %131 = zext i32 %130 to i64, !mcsema_real_eip !35
  store i64 %131, i64* %XAX, !mcsema_real_eip !35
  %EAX_val.44 = load i32, i32* %EAX.9, !mcsema_real_eip !36
  %132 = and i32 %EAX_val.44, -2147483648, !mcsema_real_eip !36
  %133 = icmp ne i32 %132, 0, !mcsema_real_eip !36
  %134 = load i1, i1* %CF, !mcsema_real_eip !36
  %135 = shl i32 %EAX_val.44, 1, !mcsema_real_eip !36
  %136 = load i1, i1* %OF, !mcsema_real_eip !36
  %137 = and i32 %135, -2147483648, !mcsema_real_eip !36
  %138 = icmp ne i32 %137, 0, !mcsema_real_eip !36
  %139 = xor i1 %138, %133, !mcsema_real_eip !36
  store i1 %139, i1* %OF, !mcsema_real_eip !36
  store i1 %133, i1* %CF, !mcsema_real_eip !36
  %140 = load i1, i1* %ZF, !mcsema_real_eip !36
  %141 = icmp eq i32 %135, 0, !mcsema_real_eip !36
  store i1 %141, i1* %ZF, !mcsema_real_eip !36
  %142 = load i1, i1* %SF, !mcsema_real_eip !36
  %143 = icmp slt i32 %135, 0, !mcsema_real_eip !36
  store i1 %143, i1* %SF, !mcsema_real_eip !36
  %144 = load i1, i1* %PF, !mcsema_real_eip !36
  %145 = trunc i32 %135 to i8, !mcsema_real_eip !36
  %146 = call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !36
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !36
  %148 = xor i1 %147, true, !mcsema_real_eip !36
  store i1 %148, i1* %PF, !mcsema_real_eip !36
  %149 = zext i32 %135 to i64, !mcsema_real_eip !36
  store i64 %149, i64* %XAX, !mcsema_real_eip !36
  %EAX_val.46 = load i32, i32* %EAX.9, !mcsema_real_eip !37
  %150 = sub i32 %EAX_val.46, 26, !mcsema_real_eip !37
  %151 = xor i32 %150, %EAX_val.46, !mcsema_real_eip !37
  %152 = xor i32 %151, 26, !mcsema_real_eip !37
  %153 = and i32 %152, 16, !mcsema_real_eip !37
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !37
  store i1 %154, i1* %AF, !mcsema_real_eip !37
  %155 = trunc i32 %150 to i8, !mcsema_real_eip !37
  %156 = call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !37
  %157 = trunc i8 %156 to i1, !mcsema_real_eip !37
  %158 = xor i1 %157, true, !mcsema_real_eip !37
  store i1 %158, i1* %PF, !mcsema_real_eip !37
  %159 = icmp eq i32 %150, 0, !mcsema_real_eip !37
  store i1 %159, i1* %ZF, !mcsema_real_eip !37
  %160 = lshr i32 %150, 31, !mcsema_real_eip !37
  %161 = trunc i32 %160 to i1, !mcsema_real_eip !37
  store i1 %161, i1* %SF, !mcsema_real_eip !37
  %162 = icmp ult i32 %EAX_val.46, 26, !mcsema_real_eip !37
  store i1 %162, i1* %CF, !mcsema_real_eip !37
  %163 = xor i32 %EAX_val.46, 26, !mcsema_real_eip !37
  %164 = and i32 %163, %151, !mcsema_real_eip !37
  %165 = lshr i32 %164, 31, !mcsema_real_eip !37
  %166 = trunc i32 %165 to i1, !mcsema_real_eip !37
  store i1 %166, i1* %OF, !mcsema_real_eip !37
  br i1 %159, label %block_0xa4, label %block_0x98, !mcsema_real_eip !38

block_0x98:                                       ; preds = %block_0x79
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -4
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %167 = ptrtoint i64* %_allin_new_bt_69 to i64, !mcsema_real_eip !39
  %168 = inttoptr i64 %167 to i32*, !mcsema_real_eip !39
  store i32 -4, i32* %168, !mcsema_real_eip !39
  br label %block_0x417, !mcsema_real_eip !40

block_0xa4:                                       ; preds = %block_0x79
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -16
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %169 = load i64, i64* %_allin_new_bt_72, !mcsema_real_eip !41
  store i64 %169, i64* %XAX, !mcsema_real_eip !41
  %170 = add i64 %169, 3, !mcsema_real_eip !42
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !42
  %172 = inttoptr i64 %170 to i8*, !mcsema_real_eip !42
  %173 = load i8, i8* %172, !mcsema_real_eip !42
  %174 = zext i8 %173 to i32, !mcsema_real_eip !42
  %175 = zext i32 %174 to i64, !mcsema_real_eip !42
  store i64 %175, i64* %XDI, !mcsema_real_eip !42
  %_load_rsp_ptr_73 = load i8*, i8** %_RSP_ptr_
  %RSP_val.51 = load i64, i64* %XSP, !mcsema_real_eip !43
  %_new_gep_74 = getelementptr i8, i8* %_load_rsp_ptr_73, i64 -8
  %176 = sub i64 %RSP_val.51, 8, !mcsema_real_eip !43
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_75, !mcsema_real_eip !43
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_
  store i64 %176, i64* %XSP, !mcsema_real_eip !43
  %177 = call x86_64_sysvcc i64 @_to_byte(i64 %175)
  %_rsp_fix_420 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_421 = getelementptr i8, i8* %_rsp_fix_420, i64 8
  store i8* %_gep_fix_421, i8** %_RSP_ptr_
  store i64 %177, i64* %XAX, !mcsema_real_eip !43
  store i64 2, i64* %XDI, !mcsema_real_eip !44
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -28
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %EAX_val.54 = load i32, i32* %EAX.9, !mcsema_real_eip !45
  %178 = ptrtoint i64* %_allin_new_bt_78 to i64, !mcsema_real_eip !45
  %179 = inttoptr i64 %178 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.54, i32* %179, !mcsema_real_eip !45
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -28
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %180 = ptrtoint i64* %_allin_new_bt_81 to i64, !mcsema_real_eip !46
  %181 = inttoptr i64 %180 to i32*, !mcsema_real_eip !46
  %182 = load i32, i32* %181, !mcsema_real_eip !46
  %183 = zext i32 %182 to i64, !mcsema_real_eip !46
  store i64 %183, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.57 = load i32, i32* %EAX.9, !mcsema_real_eip !47
  %184 = add i32 1, %EAX_val.57, !mcsema_real_eip !47
  %185 = xor i32 %184, %EAX_val.57, !mcsema_real_eip !47
  %186 = xor i32 %185, 1, !mcsema_real_eip !47
  %187 = and i32 %186, 16, !mcsema_real_eip !47
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !47
  store i1 %188, i1* %AF, !mcsema_real_eip !47
  %189 = lshr i32 %184, 31, !mcsema_real_eip !47
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !47
  store i1 %190, i1* %SF, !mcsema_real_eip !47
  %191 = icmp eq i32 %184, 0, !mcsema_real_eip !47
  store i1 %191, i1* %ZF, !mcsema_real_eip !47
  %192 = xor i32 %EAX_val.57, 1, !mcsema_real_eip !47
  %193 = xor i32 %192, -1, !mcsema_real_eip !47
  %194 = and i32 %193, %185, !mcsema_real_eip !47
  %195 = lshr i32 %194, 31, !mcsema_real_eip !47
  %196 = and i32 %195, 1, !mcsema_real_eip !47
  %197 = trunc i32 %196 to i1, !mcsema_real_eip !47
  store i1 %197, i1* %OF, !mcsema_real_eip !47
  %198 = trunc i32 %184 to i8, !mcsema_real_eip !47
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !47
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !47
  %201 = xor i1 %200, true, !mcsema_real_eip !47
  store i1 %201, i1* %PF, !mcsema_real_eip !47
  %202 = icmp ult i32 %184, %EAX_val.57, !mcsema_real_eip !47
  store i1 %202, i1* %CF, !mcsema_real_eip !47
  %203 = zext i32 %184 to i64, !mcsema_real_eip !47
  store i64 %203, i64* %XAX, !mcsema_real_eip !47
  %EAX_val.59 = load i32, i32* %EAX.9, !mcsema_real_eip !48
  %204 = and i32 %EAX_val.59, -2147483648, !mcsema_real_eip !48
  %205 = icmp eq i32 %204, 0, !mcsema_real_eip !48
  %206 = select i1 %205, i32 0, i32 -1, !mcsema_real_eip !48
  %207 = zext i32 %206 to i64, !mcsema_real_eip !48
  store i64 %207, i64* %XDX, !mcsema_real_eip !48
  %EDI.60 = bitcast i64* %XDI to i32*, !mcsema_real_eip !49
  %EDI_val.61 = load i32, i32* %EDI.60, !mcsema_real_eip !49
  %EDX.64 = bitcast i64* %XDX to i32*, !mcsema_real_eip !49
  %EDX_val.65 = load i32, i32* %EDX.64, !mcsema_real_eip !49
  %208 = zext i32 %EDX_val.65 to i64, !mcsema_real_eip !49
  %209 = shl i64 %208, 32, !mcsema_real_eip !49
  %210 = sext i32 %EAX_val.59 to i64, !mcsema_real_eip !49
  %211 = or i64 %209, %210, !mcsema_real_eip !49
  %212 = sext i32 %EDI_val.61 to i64, !mcsema_real_eip !49
  %213 = sdiv i64 %211, %212, !mcsema_real_eip !49
  %214 = srem i64 %211, %212, !mcsema_real_eip !49
  %215 = trunc i64 %214 to i32, !mcsema_real_eip !49
  %216 = trunc i64 %213 to i32, !mcsema_real_eip !49
  %217 = zext i32 %215 to i64, !mcsema_real_eip !49
  store i64 %217, i64* %XDX, !mcsema_real_eip !49
  %218 = zext i32 %216 to i64, !mcsema_real_eip !49
  store i64 %218, i64* %XAX, !mcsema_real_eip !49
  %EAX_val.67 = load i32, i32* %EAX.9, !mcsema_real_eip !50
  %219 = sub i32 %EAX_val.67, 7, !mcsema_real_eip !50
  %220 = xor i32 %219, %EAX_val.67, !mcsema_real_eip !50
  %221 = xor i32 %220, 7, !mcsema_real_eip !50
  %222 = and i32 %221, 16, !mcsema_real_eip !50
  %223 = icmp ne i32 %222, 0, !mcsema_real_eip !50
  store i1 %223, i1* %AF, !mcsema_real_eip !50
  %224 = trunc i32 %219 to i8, !mcsema_real_eip !50
  %225 = call i8 @llvm.ctpop.i8(i8 %224), !mcsema_real_eip !50
  %226 = trunc i8 %225 to i1, !mcsema_real_eip !50
  %227 = xor i1 %226, true, !mcsema_real_eip !50
  store i1 %227, i1* %PF, !mcsema_real_eip !50
  %228 = icmp eq i32 %219, 0, !mcsema_real_eip !50
  store i1 %228, i1* %ZF, !mcsema_real_eip !50
  %229 = lshr i32 %219, 31, !mcsema_real_eip !50
  %230 = trunc i32 %229 to i1, !mcsema_real_eip !50
  store i1 %230, i1* %SF, !mcsema_real_eip !50
  %231 = icmp ult i32 %EAX_val.67, 7, !mcsema_real_eip !50
  store i1 %231, i1* %CF, !mcsema_real_eip !50
  %232 = xor i32 %EAX_val.67, 7, !mcsema_real_eip !50
  %233 = and i32 %232, %220, !mcsema_real_eip !50
  %234 = lshr i32 %233, 31, !mcsema_real_eip !50
  %235 = trunc i32 %234 to i1, !mcsema_real_eip !50
  store i1 %235, i1* %OF, !mcsema_real_eip !50
  br i1 %228, label %block_0xd7, label %block_0xcb, !mcsema_real_eip !51

block_0xcb:                                       ; preds = %block_0xa4
  %_new_gep_83 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -4
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %236 = ptrtoint i64* %_allin_new_bt_84 to i64, !mcsema_real_eip !52
  %237 = inttoptr i64 %236 to i32*, !mcsema_real_eip !52
  store i32 -5, i32* %237, !mcsema_real_eip !52
  br label %block_0x417, !mcsema_real_eip !53

block_0xd7:                                       ; preds = %block_0xa4
  %_new_gep_86 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -16
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %238 = load i64, i64* %_allin_new_bt_87, !mcsema_real_eip !54
  store i64 %238, i64* %XAX, !mcsema_real_eip !54
  %239 = add i64 %238, 4, !mcsema_real_eip !55
  %240 = inttoptr i64 %239 to i64*, !mcsema_real_eip !55
  %241 = inttoptr i64 %239 to i8*, !mcsema_real_eip !55
  %242 = load i8, i8* %241, !mcsema_real_eip !55
  %243 = sext i8 %242 to i32, !mcsema_real_eip !55
  %244 = zext i32 %243 to i64, !mcsema_real_eip !55
  store i64 %244, i64* %XCX, !mcsema_real_eip !55
  %ECX_val.72 = load i32, i32* %ECX.12, !mcsema_real_eip !56
  %245 = and i32 %ECX_val.72, 15, !mcsema_real_eip !56
  store i1 false, i1* %SF, !mcsema_real_eip !56
  %246 = icmp eq i32 %245, 0, !mcsema_real_eip !56
  store i1 %246, i1* %ZF, !mcsema_real_eip !56
  %247 = trunc i32 %245 to i8, !mcsema_real_eip !56
  %248 = call i8 @llvm.ctpop.i8(i8 %247), !mcsema_real_eip !56
  %249 = trunc i8 %248 to i1, !mcsema_real_eip !56
  %250 = xor i1 %249, true, !mcsema_real_eip !56
  store i1 %250, i1* %PF, !mcsema_real_eip !56
  store i1 false, i1* %OF, !mcsema_real_eip !56
  store i1 false, i1* %CF, !mcsema_real_eip !56
  store i1 undef, i1* %AF, !mcsema_real_eip !56
  %251 = zext i32 %245 to i64, !mcsema_real_eip !56
  store i64 %251, i64* %XCX, !mcsema_real_eip !56
  %ECX_val.74 = load i32, i32* %ECX.12, !mcsema_real_eip !57
  %252 = sub i32 %ECX_val.74, 1, !mcsema_real_eip !57
  %253 = xor i32 %252, %ECX_val.74, !mcsema_real_eip !57
  %254 = xor i32 %253, 1, !mcsema_real_eip !57
  %255 = and i32 %254, 16, !mcsema_real_eip !57
  %256 = icmp ne i32 %255, 0, !mcsema_real_eip !57
  store i1 %256, i1* %AF, !mcsema_real_eip !57
  %257 = trunc i32 %252 to i8, !mcsema_real_eip !57
  %258 = call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !57
  %259 = trunc i8 %258 to i1, !mcsema_real_eip !57
  %260 = xor i1 %259, true, !mcsema_real_eip !57
  store i1 %260, i1* %PF, !mcsema_real_eip !57
  %261 = icmp eq i32 %252, 0, !mcsema_real_eip !57
  store i1 %261, i1* %ZF, !mcsema_real_eip !57
  %262 = lshr i32 %252, 31, !mcsema_real_eip !57
  %263 = trunc i32 %262 to i1, !mcsema_real_eip !57
  store i1 %263, i1* %SF, !mcsema_real_eip !57
  %264 = icmp ult i32 %ECX_val.74, 1, !mcsema_real_eip !57
  store i1 %264, i1* %CF, !mcsema_real_eip !57
  %265 = xor i32 %ECX_val.74, 1, !mcsema_real_eip !57
  %266 = and i32 %265, %253, !mcsema_real_eip !57
  %267 = lshr i32 %266, 31, !mcsema_real_eip !57
  %268 = trunc i32 %267 to i1, !mcsema_real_eip !57
  store i1 %268, i1* %OF, !mcsema_real_eip !57
  %269 = icmp eq i1 %261, false, !mcsema_real_eip !58
  br i1 %269, label %block_0x10e, label %block_0xeb, !mcsema_real_eip !58

block_0xeb:                                       ; preds = %block_0xd7
  %270 = load i64, i64* %_allin_new_bt_87, !mcsema_real_eip !59
  store i64 %270, i64* %XAX, !mcsema_real_eip !59
  %271 = add i64 %270, 4, !mcsema_real_eip !60
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !60
  %273 = inttoptr i64 %271 to i8*, !mcsema_real_eip !60
  %274 = load i8, i8* %273, !mcsema_real_eip !60
  %275 = sext i8 %274 to i32, !mcsema_real_eip !60
  %276 = zext i32 %275 to i64, !mcsema_real_eip !60
  store i64 %276, i64* %XCX, !mcsema_real_eip !60
  %ECX_val.78 = load i32, i32* %ECX.12, !mcsema_real_eip !61
  %277 = and i32 %ECX_val.78, 240, !mcsema_real_eip !61
  store i1 false, i1* %SF, !mcsema_real_eip !61
  %278 = icmp eq i32 %277, 0, !mcsema_real_eip !61
  store i1 %278, i1* %ZF, !mcsema_real_eip !61
  %279 = trunc i32 %277 to i8, !mcsema_real_eip !61
  %280 = call i8 @llvm.ctpop.i8(i8 %279), !mcsema_real_eip !61
  %281 = trunc i8 %280 to i1, !mcsema_real_eip !61
  %282 = xor i1 %281, true, !mcsema_real_eip !61
  store i1 %282, i1* %PF, !mcsema_real_eip !61
  store i1 false, i1* %OF, !mcsema_real_eip !61
  store i1 false, i1* %CF, !mcsema_real_eip !61
  store i1 undef, i1* %AF, !mcsema_real_eip !61
  %283 = zext i32 %277 to i64, !mcsema_real_eip !61
  store i64 %283, i64* %XCX, !mcsema_real_eip !61
  %ECX_val.80 = load i32, i32* %ECX.12, !mcsema_real_eip !62
  %284 = sub i32 %ECX_val.80, 48, !mcsema_real_eip !62
  %285 = xor i32 %284, %ECX_val.80, !mcsema_real_eip !62
  %286 = xor i32 %285, 48, !mcsema_real_eip !62
  %287 = and i32 %286, 16, !mcsema_real_eip !62
  %288 = icmp ne i32 %287, 0, !mcsema_real_eip !62
  store i1 %288, i1* %AF, !mcsema_real_eip !62
  %289 = trunc i32 %284 to i8, !mcsema_real_eip !62
  %290 = call i8 @llvm.ctpop.i8(i8 %289), !mcsema_real_eip !62
  %291 = trunc i8 %290 to i1, !mcsema_real_eip !62
  %292 = xor i1 %291, true, !mcsema_real_eip !62
  store i1 %292, i1* %PF, !mcsema_real_eip !62
  %293 = icmp eq i32 %284, 0, !mcsema_real_eip !62
  store i1 %293, i1* %ZF, !mcsema_real_eip !62
  %294 = lshr i32 %284, 31, !mcsema_real_eip !62
  %295 = trunc i32 %294 to i1, !mcsema_real_eip !62
  store i1 %295, i1* %SF, !mcsema_real_eip !62
  %296 = icmp ult i32 %ECX_val.80, 48, !mcsema_real_eip !62
  store i1 %296, i1* %CF, !mcsema_real_eip !62
  %297 = xor i32 %ECX_val.80, 48, !mcsema_real_eip !62
  %298 = and i32 %297, %285, !mcsema_real_eip !62
  %299 = lshr i32 %298, 31, !mcsema_real_eip !62
  %300 = trunc i32 %299 to i1, !mcsema_real_eip !62
  store i1 %300, i1* %OF, !mcsema_real_eip !62
  %301 = icmp eq i1 %293, false, !mcsema_real_eip !63
  br i1 %301, label %block_0x10e, label %block_0x102, !mcsema_real_eip !63

block_0x102:                                      ; preds = %block_0xeb
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -20
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %302 = ptrtoint i64* %_allin_new_bt_93 to i64, !mcsema_real_eip !64
  %303 = inttoptr i64 %302 to i32*, !mcsema_real_eip !64
  store i32 -4, i32* %303, !mcsema_real_eip !64
  br label %block_0x11a, !mcsema_real_eip !65

block_0x10e:                                      ; preds = %block_0xeb, %block_0xd7
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -4
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %304 = ptrtoint i64* %_allin_new_bt_96 to i64, !mcsema_real_eip !66
  %305 = inttoptr i64 %304 to i32*, !mcsema_real_eip !66
  store i32 -6, i32* %305, !mcsema_real_eip !66
  br label %block_0x417, !mcsema_real_eip !67

block_0x11a:                                      ; preds = %block_0x102
  %_load_rbp_ptr_97 = load i8*, i8** %_RBP_ptr_
  %_new_gep_98 = getelementptr i8, i8* %_load_rbp_ptr_97, i64 -16
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  %306 = load i64, i64* %_allin_new_bt_99, !mcsema_real_eip !68
  store i64 %306, i64* %XAX, !mcsema_real_eip !68
  %307 = add i64 %306, 5, !mcsema_real_eip !69
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !69
  %309 = inttoptr i64 %307 to i8*, !mcsema_real_eip !69
  %310 = load i8, i8* %309, !mcsema_real_eip !69
  %311 = sext i8 %310 to i32, !mcsema_real_eip !69
  %312 = zext i32 %311 to i64, !mcsema_real_eip !69
  store i64 %312, i64* %XCX, !mcsema_real_eip !69
  %ECX_val.86 = load i32, i32* %ECX.12, !mcsema_real_eip !70
  %313 = and i32 %ECX_val.86, 15, !mcsema_real_eip !70
  store i1 false, i1* %SF, !mcsema_real_eip !70
  %314 = icmp eq i32 %313, 0, !mcsema_real_eip !70
  store i1 %314, i1* %ZF, !mcsema_real_eip !70
  %315 = trunc i32 %313 to i8, !mcsema_real_eip !70
  %316 = call i8 @llvm.ctpop.i8(i8 %315), !mcsema_real_eip !70
  %317 = trunc i8 %316 to i1, !mcsema_real_eip !70
  %318 = xor i1 %317, true, !mcsema_real_eip !70
  store i1 %318, i1* %PF, !mcsema_real_eip !70
  store i1 false, i1* %OF, !mcsema_real_eip !70
  store i1 false, i1* %CF, !mcsema_real_eip !70
  store i1 undef, i1* %AF, !mcsema_real_eip !70
  %319 = zext i32 %313 to i64, !mcsema_real_eip !70
  store i64 %319, i64* %XCX, !mcsema_real_eip !70
  %CL.87 = bitcast i64* %XCX to i8*, !mcsema_real_eip !71
  %CL_val.88 = load i8, i8* %CL.87, !mcsema_real_eip !71
  %DL.89 = bitcast i64* %XDX to i8*, !mcsema_real_eip !71
  store i8 %CL_val.88, i8* %DL.89, !mcsema_real_eip !71
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_97, i64 -33
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %320 = ptrtoint i64* %_allin_new_bt_102 to i64, !mcsema_real_eip !72
  %321 = inttoptr i64 %320 to i8*, !mcsema_real_eip !72
  store i8 %CL_val.88, i8* %321, !mcsema_real_eip !72
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -16
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %322 = load i64, i64* %_allin_new_bt_105, !mcsema_real_eip !73
  store i64 %322, i64* %XAX, !mcsema_real_eip !73
  %323 = add i64 %322, 5, !mcsema_real_eip !74
  %324 = inttoptr i64 %323 to i64*, !mcsema_real_eip !74
  %325 = inttoptr i64 %323 to i8*, !mcsema_real_eip !74
  %326 = load i8, i8* %325, !mcsema_real_eip !74
  %327 = sext i8 %326 to i32, !mcsema_real_eip !74
  %328 = zext i32 %327 to i64, !mcsema_real_eip !74
  store i64 %328, i64* %XCX, !mcsema_real_eip !74
  %ECX_val.96 = load i32, i32* %ECX.12, !mcsema_real_eip !75
  %329 = and i32 %ECX_val.96, 240, !mcsema_real_eip !75
  store i1 false, i1* %SF, !mcsema_real_eip !75
  %330 = icmp eq i32 %329, 0, !mcsema_real_eip !75
  store i1 %330, i1* %ZF, !mcsema_real_eip !75
  %331 = trunc i32 %329 to i8, !mcsema_real_eip !75
  %332 = call i8 @llvm.ctpop.i8(i8 %331), !mcsema_real_eip !75
  %333 = trunc i8 %332 to i1, !mcsema_real_eip !75
  %334 = xor i1 %333, true, !mcsema_real_eip !75
  store i1 %334, i1* %PF, !mcsema_real_eip !75
  store i1 false, i1* %OF, !mcsema_real_eip !75
  store i1 false, i1* %CF, !mcsema_real_eip !75
  store i1 undef, i1* %AF, !mcsema_real_eip !75
  %335 = zext i32 %329 to i64, !mcsema_real_eip !75
  store i64 %335, i64* %XCX, !mcsema_real_eip !75
  %CL_val.98 = load i8, i8* %CL.87, !mcsema_real_eip !76
  store i8 %CL_val.98, i8* %DL.89, !mcsema_real_eip !76
  %_new_gep_107 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -34
  %_allin_new_bt_108 = bitcast i8* %_new_gep_107 to i64*
  %336 = ptrtoint i64* %_allin_new_bt_108 to i64, !mcsema_real_eip !77
  %337 = inttoptr i64 %336 to i8*, !mcsema_real_eip !77
  store i8 %CL_val.98, i8* %337, !mcsema_real_eip !77
  %_load_rbp_ptr_109 = load i8*, i8** %_RBP_ptr_
  %_new_gep_110 = getelementptr i8, i8* %_load_rbp_ptr_109, i64 -33
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %338 = ptrtoint i64* %_allin_new_bt_111 to i64, !mcsema_real_eip !78
  %339 = inttoptr i64 %338 to i8*, !mcsema_real_eip !78
  %340 = load i8, i8* %339, !mcsema_real_eip !78
  %341 = zext i8 %340 to i32, !mcsema_real_eip !78
  %342 = zext i32 %341 to i64, !mcsema_real_eip !78
  store i64 %342, i64* %XCX, !mcsema_real_eip !78
  %ECX_val.105 = load i32, i32* %ECX.12, !mcsema_real_eip !79
  %343 = sub i32 %ECX_val.105, 3, !mcsema_real_eip !79
  %344 = xor i32 %343, %ECX_val.105, !mcsema_real_eip !79
  %345 = xor i32 %344, 3, !mcsema_real_eip !79
  %346 = and i32 %345, 16, !mcsema_real_eip !79
  %347 = icmp ne i32 %346, 0, !mcsema_real_eip !79
  store i1 %347, i1* %AF, !mcsema_real_eip !79
  %348 = trunc i32 %343 to i8, !mcsema_real_eip !79
  %349 = call i8 @llvm.ctpop.i8(i8 %348), !mcsema_real_eip !79
  %350 = trunc i8 %349 to i1, !mcsema_real_eip !79
  %351 = xor i1 %350, true, !mcsema_real_eip !79
  store i1 %351, i1* %PF, !mcsema_real_eip !79
  %352 = icmp eq i32 %343, 0, !mcsema_real_eip !79
  store i1 %352, i1* %ZF, !mcsema_real_eip !79
  %353 = lshr i32 %343, 31, !mcsema_real_eip !79
  %354 = trunc i32 %353 to i1, !mcsema_real_eip !79
  store i1 %354, i1* %SF, !mcsema_real_eip !79
  %355 = icmp ult i32 %ECX_val.105, 3, !mcsema_real_eip !79
  store i1 %355, i1* %CF, !mcsema_real_eip !79
  %356 = xor i32 %ECX_val.105, 3, !mcsema_real_eip !79
  %357 = and i32 %356, %344, !mcsema_real_eip !79
  %358 = lshr i32 %357, 31, !mcsema_real_eip !79
  %359 = trunc i32 %358 to i1, !mcsema_real_eip !79
  store i1 %359, i1* %OF, !mcsema_real_eip !79
  %360 = icmp eq i1 %352, false, !mcsema_real_eip !80
  br i1 %360, label %block_0x165, label %block_0x14a, !mcsema_real_eip !80

block_0x14a:                                      ; preds = %block_0x11a
  %_new_gep_113 = getelementptr i8, i8* %_load_rbp_ptr_109, i64 -34
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %361 = ptrtoint i64* %_allin_new_bt_114 to i64, !mcsema_real_eip !81
  %362 = inttoptr i64 %361 to i8*, !mcsema_real_eip !81
  %363 = load i8, i8* %362, !mcsema_real_eip !81
  %364 = zext i8 %363 to i32, !mcsema_real_eip !81
  %365 = zext i32 %364 to i64, !mcsema_real_eip !81
  store i64 %365, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.108 = load i32, i32* %EAX.9, !mcsema_real_eip !82
  %366 = sub i32 %EAX_val.108, 96, !mcsema_real_eip !82
  %367 = xor i32 %366, %EAX_val.108, !mcsema_real_eip !82
  %368 = xor i32 %367, 96, !mcsema_real_eip !82
  %369 = and i32 %368, 16, !mcsema_real_eip !82
  %370 = icmp ne i32 %369, 0, !mcsema_real_eip !82
  store i1 %370, i1* %AF, !mcsema_real_eip !82
  %371 = trunc i32 %366 to i8, !mcsema_real_eip !82
  %372 = call i8 @llvm.ctpop.i8(i8 %371), !mcsema_real_eip !82
  %373 = trunc i8 %372 to i1, !mcsema_real_eip !82
  %374 = xor i1 %373, true, !mcsema_real_eip !82
  store i1 %374, i1* %PF, !mcsema_real_eip !82
  %375 = icmp eq i32 %366, 0, !mcsema_real_eip !82
  store i1 %375, i1* %ZF, !mcsema_real_eip !82
  %376 = lshr i32 %366, 31, !mcsema_real_eip !82
  %377 = trunc i32 %376 to i1, !mcsema_real_eip !82
  store i1 %377, i1* %SF, !mcsema_real_eip !82
  %378 = icmp ult i32 %EAX_val.108, 96, !mcsema_real_eip !82
  store i1 %378, i1* %CF, !mcsema_real_eip !82
  %379 = xor i32 %EAX_val.108, 96, !mcsema_real_eip !82
  %380 = and i32 %379, %367, !mcsema_real_eip !82
  %381 = lshr i32 %380, 31, !mcsema_real_eip !82
  %382 = trunc i32 %381 to i1, !mcsema_real_eip !82
  store i1 %382, i1* %OF, !mcsema_real_eip !82
  %383 = icmp eq i1 %375, false, !mcsema_real_eip !83
  br i1 %383, label %block_0x165, label %block_0x157, !mcsema_real_eip !83

block_0x157:                                      ; preds = %block_0x14a
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_109, i64 -20
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %384 = ptrtoint i64* %_allin_new_bt_117 to i64, !mcsema_real_eip !84
  %385 = inttoptr i64 %384 to i32*, !mcsema_real_eip !84
  %386 = load i32, i32* %385, !mcsema_real_eip !84
  %387 = zext i32 %386 to i64, !mcsema_real_eip !84
  store i64 %387, i64* %XAX, !mcsema_real_eip !84
  %EAX_val.111 = load i32, i32* %EAX.9, !mcsema_real_eip !85
  %388 = add i32 4, %EAX_val.111, !mcsema_real_eip !85
  %389 = xor i32 %388, %EAX_val.111, !mcsema_real_eip !85
  %390 = xor i32 %389, 4, !mcsema_real_eip !85
  %391 = and i32 %390, 16, !mcsema_real_eip !85
  %392 = icmp ne i32 %391, 0, !mcsema_real_eip !85
  store i1 %392, i1* %AF, !mcsema_real_eip !85
  %393 = lshr i32 %388, 31, !mcsema_real_eip !85
  %394 = trunc i32 %393 to i1, !mcsema_real_eip !85
  store i1 %394, i1* %SF, !mcsema_real_eip !85
  %395 = icmp eq i32 %388, 0, !mcsema_real_eip !85
  store i1 %395, i1* %ZF, !mcsema_real_eip !85
  %396 = xor i32 %EAX_val.111, 4, !mcsema_real_eip !85
  %397 = xor i32 %396, -1, !mcsema_real_eip !85
  %398 = and i32 %397, %389, !mcsema_real_eip !85
  %399 = lshr i32 %398, 31, !mcsema_real_eip !85
  %400 = and i32 %399, 1, !mcsema_real_eip !85
  %401 = trunc i32 %400 to i1, !mcsema_real_eip !85
  store i1 %401, i1* %OF, !mcsema_real_eip !85
  %402 = trunc i32 %388 to i8, !mcsema_real_eip !85
  %403 = call i8 @llvm.ctpop.i8(i8 %402), !mcsema_real_eip !85
  %404 = trunc i8 %403 to i1, !mcsema_real_eip !85
  %405 = xor i1 %404, true, !mcsema_real_eip !85
  store i1 %405, i1* %PF, !mcsema_real_eip !85
  %406 = icmp ult i32 %388, %EAX_val.111, !mcsema_real_eip !85
  store i1 %406, i1* %CF, !mcsema_real_eip !85
  %407 = zext i32 %388 to i64, !mcsema_real_eip !85
  store i64 %407, i64* %XAX, !mcsema_real_eip !85
  %EAX_val.114 = load i32, i32* %EAX.9, !mcsema_real_eip !86
  store i32 %EAX_val.114, i32* %385, !mcsema_real_eip !86
  br label %block_0x16e, !mcsema_real_eip !87

block_0x165:                                      ; preds = %block_0x14a, %block_0x11a
  %_new_gep_122 = getelementptr i8, i8* %_load_rbp_ptr_109, i64 -20
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %408 = ptrtoint i64* %_allin_new_bt_123 to i64, !mcsema_real_eip !88
  %409 = inttoptr i64 %408 to i32*, !mcsema_real_eip !88
  %410 = load i32, i32* %409, !mcsema_real_eip !88
  %411 = zext i32 %410 to i64, !mcsema_real_eip !88
  store i64 %411, i64* %XAX, !mcsema_real_eip !88
  %EAX_val.117 = load i32, i32* %EAX.9, !mcsema_real_eip !89
  %412 = add i32 5, %EAX_val.117, !mcsema_real_eip !89
  %413 = xor i32 %412, %EAX_val.117, !mcsema_real_eip !89
  %414 = xor i32 %413, 5, !mcsema_real_eip !89
  %415 = and i32 %414, 16, !mcsema_real_eip !89
  %416 = icmp ne i32 %415, 0, !mcsema_real_eip !89
  store i1 %416, i1* %AF, !mcsema_real_eip !89
  %417 = lshr i32 %412, 31, !mcsema_real_eip !89
  %418 = trunc i32 %417 to i1, !mcsema_real_eip !89
  store i1 %418, i1* %SF, !mcsema_real_eip !89
  %419 = icmp eq i32 %412, 0, !mcsema_real_eip !89
  store i1 %419, i1* %ZF, !mcsema_real_eip !89
  %420 = xor i32 %EAX_val.117, 5, !mcsema_real_eip !89
  %421 = xor i32 %420, -1, !mcsema_real_eip !89
  %422 = and i32 %421, %413, !mcsema_real_eip !89
  %423 = lshr i32 %422, 31, !mcsema_real_eip !89
  %424 = and i32 %423, 1, !mcsema_real_eip !89
  %425 = trunc i32 %424 to i1, !mcsema_real_eip !89
  store i1 %425, i1* %OF, !mcsema_real_eip !89
  %426 = trunc i32 %412 to i8, !mcsema_real_eip !89
  %427 = call i8 @llvm.ctpop.i8(i8 %426), !mcsema_real_eip !89
  %428 = trunc i8 %427 to i1, !mcsema_real_eip !89
  %429 = xor i1 %428, true, !mcsema_real_eip !89
  store i1 %429, i1* %PF, !mcsema_real_eip !89
  %430 = icmp ult i32 %412, %EAX_val.117, !mcsema_real_eip !89
  store i1 %430, i1* %CF, !mcsema_real_eip !89
  %431 = zext i32 %412 to i64, !mcsema_real_eip !89
  store i64 %431, i64* %XAX, !mcsema_real_eip !89
  %EAX_val.120 = load i32, i32* %EAX.9, !mcsema_real_eip !90
  store i32 %EAX_val.120, i32* %409, !mcsema_real_eip !90
  br label %block_0x16e, !mcsema_real_eip !91

block_0x16e:                                      ; preds = %block_0x165, %block_0x157
  %_load_rbp_ptr_127 = load i8*, i8** %_RBP_ptr_
  %_new_gep_128 = getelementptr i8, i8* %_load_rbp_ptr_127, i64 -16
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %432 = load i64, i64* %_allin_new_bt_129, !mcsema_real_eip !91
  store i64 %432, i64* %XAX, !mcsema_real_eip !91
  %433 = add i64 %432, 6, !mcsema_real_eip !92
  %434 = inttoptr i64 %433 to i64*, !mcsema_real_eip !92
  %435 = inttoptr i64 %433 to i8*, !mcsema_real_eip !92
  %436 = load i8, i8* %435, !mcsema_real_eip !92
  %437 = zext i8 %436 to i32, !mcsema_real_eip !92
  %438 = zext i32 %437 to i64, !mcsema_real_eip !92
  store i64 %438, i64* %XDI, !mcsema_real_eip !92
  %_load_rsp_ptr_130 = load i8*, i8** %_RSP_ptr_
  %RSP_val.124 = load i64, i64* %XSP, !mcsema_real_eip !93
  %_new_gep_131 = getelementptr i8, i8* %_load_rsp_ptr_130, i64 -8
  %439 = sub i64 %RSP_val.124, 8, !mcsema_real_eip !93
  %_allin_new_bt_132 = bitcast i8* %_new_gep_131 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_132, !mcsema_real_eip !93
  store volatile i8* %_new_gep_131, i8** %_RSP_ptr_
  store i64 %439, i64* %XSP, !mcsema_real_eip !93
  %440 = call x86_64_sysvcc i64 @_to_byte(i64 %438)
  %_rsp_fix_422 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_423 = getelementptr i8, i8* %_rsp_fix_422, i64 8
  store i8* %_gep_fix_423, i8** %_RSP_ptr_
  store i64 %440, i64* %XAX, !mcsema_real_eip !93
  %AL.125 = bitcast i64* %XAX to i8*, !mcsema_real_eip !94
  %AL_val.126 = load i8, i8* %AL.125, !mcsema_real_eip !94
  store i8 %AL_val.126, i8* %CL.87, !mcsema_real_eip !94
  %_load_rbp_ptr_133 = load i8*, i8** %_RBP_ptr_
  %_new_gep_134 = getelementptr i8, i8* %_load_rbp_ptr_133, i64 -35
  %_allin_new_bt_135 = bitcast i8* %_new_gep_134 to i64*
  %441 = ptrtoint i64* %_allin_new_bt_135 to i64, !mcsema_real_eip !95
  %442 = inttoptr i64 %441 to i8*, !mcsema_real_eip !95
  store i8 %AL_val.126, i8* %442, !mcsema_real_eip !95
  %_load_rbp_ptr_136 = load i8*, i8** %_RBP_ptr_
  %_new_gep_137 = getelementptr i8, i8* %_load_rbp_ptr_136, i64 -16
  %_allin_new_bt_138 = bitcast i8* %_new_gep_137 to i64*
  %443 = load i64, i64* %_allin_new_bt_138, !mcsema_real_eip !96
  store i64 %443, i64* %XDX, !mcsema_real_eip !96
  %444 = add i64 %443, 7, !mcsema_real_eip !97
  %445 = inttoptr i64 %444 to i64*, !mcsema_real_eip !97
  %446 = inttoptr i64 %444 to i8*, !mcsema_real_eip !97
  %447 = load i8, i8* %446, !mcsema_real_eip !97
  %448 = zext i8 %447 to i32, !mcsema_real_eip !97
  %449 = zext i32 %448 to i64, !mcsema_real_eip !97
  store i64 %449, i64* %XDI, !mcsema_real_eip !97
  %_load_rsp_ptr_139 = load i8*, i8** %_RSP_ptr_
  %RSP_val.134 = load i64, i64* %XSP, !mcsema_real_eip !98
  %_new_gep_140 = getelementptr i8, i8* %_load_rsp_ptr_139, i64 -8
  %450 = sub i64 %RSP_val.134, 8, !mcsema_real_eip !98
  %_allin_new_bt_141 = bitcast i8* %_new_gep_140 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_141, !mcsema_real_eip !98
  store volatile i8* %_new_gep_140, i8** %_RSP_ptr_
  store i64 %450, i64* %XSP, !mcsema_real_eip !98
  %451 = call x86_64_sysvcc i64 @_to_byte(i64 %449)
  %_rsp_fix_424 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_425 = getelementptr i8, i8* %_rsp_fix_424, i64 8
  store i8* %_gep_fix_425, i8** %_RSP_ptr_
  store i64 %451, i64* %XAX, !mcsema_real_eip !98
  %_load_rbp_ptr_142 = load i8*, i8** %_RBP_ptr_
  %_new_gep_143 = getelementptr i8, i8* %_load_rbp_ptr_142, i64 -35
  %_allin_new_bt_144 = bitcast i8* %_new_gep_143 to i64*
  %452 = ptrtoint i64* %_allin_new_bt_144 to i64, !mcsema_real_eip !99
  %453 = inttoptr i64 %452 to i8*, !mcsema_real_eip !99
  %454 = load i8, i8* %453, !mcsema_real_eip !99
  %455 = zext i8 %454 to i32, !mcsema_real_eip !99
  %456 = zext i32 %455 to i64, !mcsema_real_eip !99
  store i64 %456, i64* %XDI, !mcsema_real_eip !99
  %EDI_val.137 = load i32, i32* %EDI.60, !mcsema_real_eip !100
  %EAX_val.139 = load i32, i32* %EAX.9, !mcsema_real_eip !100
  %457 = or i32 %EDI_val.137, %EAX_val.139, !mcsema_real_eip !100
  store i1 undef, i1* %AF, !mcsema_real_eip !100
  store i1 false, i1* %OF, !mcsema_real_eip !100
  store i1 false, i1* %CF, !mcsema_real_eip !100
  %458 = lshr i32 %457, 31, !mcsema_real_eip !100
  %459 = trunc i32 %458 to i1, !mcsema_real_eip !100
  store i1 %459, i1* %SF, !mcsema_real_eip !100
  %460 = icmp eq i32 %457, 0, !mcsema_real_eip !100
  store i1 %460, i1* %ZF, !mcsema_real_eip !100
  %461 = trunc i32 %457 to i8, !mcsema_real_eip !100
  %462 = call i8 @llvm.ctpop.i8(i8 %461), !mcsema_real_eip !100
  %463 = trunc i8 %462 to i1, !mcsema_real_eip !100
  %464 = xor i1 %463, true, !mcsema_real_eip !100
  store i1 %464, i1* %PF, !mcsema_real_eip !100
  %465 = zext i32 %457 to i64, !mcsema_real_eip !100
  store i64 %465, i64* %XDI, !mcsema_real_eip !100
  %DIL.140 = bitcast i64* %XDI to i8*, !mcsema_real_eip !101
  %DIL_val.141 = load i8, i8* %DIL.140, !mcsema_real_eip !101
  store i8 %DIL_val.141, i8* %CL.87, !mcsema_real_eip !101
  store i8 %DIL_val.141, i8* %453, !mcsema_real_eip !102
  %_load_rbp_ptr_148 = load i8*, i8** %_RBP_ptr_
  %_new_gep_149 = getelementptr i8, i8* %_load_rbp_ptr_148, i64 -35
  %_allin_new_bt_150 = bitcast i8* %_new_gep_149 to i64*
  %466 = ptrtoint i64* %_allin_new_bt_150 to i64, !mcsema_real_eip !103
  %467 = inttoptr i64 %466 to i8*, !mcsema_real_eip !103
  %468 = load i8, i8* %467, !mcsema_real_eip !103
  %469 = zext i8 %468 to i32, !mcsema_real_eip !103
  %470 = zext i32 %469 to i64, !mcsema_real_eip !103
  store i64 %470, i64* %XAX, !mcsema_real_eip !103
  %EAX_val.148 = load i32, i32* %EAX.9, !mcsema_real_eip !104
  %471 = xor i32 %EAX_val.148, -1, !mcsema_real_eip !104
  store i1 false, i1* %CF, !mcsema_real_eip !104
  store i1 false, i1* %OF, !mcsema_real_eip !104
  %472 = lshr i32 %471, 31, !mcsema_real_eip !104
  %473 = trunc i32 %472 to i1, !mcsema_real_eip !104
  store i1 %473, i1* %SF, !mcsema_real_eip !104
  %474 = icmp eq i32 %471, 0, !mcsema_real_eip !104
  store i1 %474, i1* %ZF, !mcsema_real_eip !104
  %475 = trunc i32 %471 to i8, !mcsema_real_eip !104
  %476 = call i8 @llvm.ctpop.i8(i8 %475), !mcsema_real_eip !104
  %477 = trunc i8 %476 to i1, !mcsema_real_eip !104
  %478 = xor i1 %477, true, !mcsema_real_eip !104
  store i1 %478, i1* %PF, !mcsema_real_eip !104
  store i1 undef, i1* %AF, !mcsema_real_eip !104
  %479 = zext i32 %471 to i64, !mcsema_real_eip !104
  store i64 %479, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.150 = load i32, i32* %EAX.9, !mcsema_real_eip !105
  %480 = sub i32 %EAX_val.150, 70, !mcsema_real_eip !105
  %481 = xor i32 %480, %EAX_val.150, !mcsema_real_eip !105
  %482 = xor i32 %481, 70, !mcsema_real_eip !105
  %483 = and i32 %482, 16, !mcsema_real_eip !105
  %484 = icmp ne i32 %483, 0, !mcsema_real_eip !105
  store i1 %484, i1* %AF, !mcsema_real_eip !105
  %485 = trunc i32 %480 to i8, !mcsema_real_eip !105
  %486 = call i8 @llvm.ctpop.i8(i8 %485), !mcsema_real_eip !105
  %487 = trunc i8 %486 to i1, !mcsema_real_eip !105
  %488 = xor i1 %487, true, !mcsema_real_eip !105
  store i1 %488, i1* %PF, !mcsema_real_eip !105
  %489 = icmp eq i32 %480, 0, !mcsema_real_eip !105
  store i1 %489, i1* %ZF, !mcsema_real_eip !105
  %490 = lshr i32 %480, 31, !mcsema_real_eip !105
  %491 = trunc i32 %490 to i1, !mcsema_real_eip !105
  store i1 %491, i1* %SF, !mcsema_real_eip !105
  %492 = icmp ult i32 %EAX_val.150, 70, !mcsema_real_eip !105
  store i1 %492, i1* %CF, !mcsema_real_eip !105
  %493 = xor i32 %EAX_val.150, 70, !mcsema_real_eip !105
  %494 = and i32 %493, %481, !mcsema_real_eip !105
  %495 = lshr i32 %494, 31, !mcsema_real_eip !105
  %496 = trunc i32 %495 to i1, !mcsema_real_eip !105
  store i1 %496, i1* %OF, !mcsema_real_eip !105
  %497 = icmp eq i1 %489, false, !mcsema_real_eip !106
  br i1 %497, label %block_0x1b7, label %block_0x1a9, !mcsema_real_eip !106

block_0x1a9:                                      ; preds = %block_0x16e
  %_new_gep_152 = getelementptr i8, i8* %_load_rbp_ptr_148, i64 -20
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %498 = ptrtoint i64* %_allin_new_bt_153 to i64, !mcsema_real_eip !107
  %499 = inttoptr i64 %498 to i32*, !mcsema_real_eip !107
  %500 = load i32, i32* %499, !mcsema_real_eip !107
  %501 = zext i32 %500 to i64, !mcsema_real_eip !107
  store i64 %501, i64* %XAX, !mcsema_real_eip !107
  %EAX_val.153 = load i32, i32* %EAX.9, !mcsema_real_eip !108
  %502 = sub i32 %EAX_val.153, 1, !mcsema_real_eip !108
  %503 = xor i32 %502, %EAX_val.153, !mcsema_real_eip !108
  %504 = xor i32 %503, 1, !mcsema_real_eip !108
  %505 = and i32 %504, 16, !mcsema_real_eip !108
  %506 = icmp ne i32 %505, 0, !mcsema_real_eip !108
  store i1 %506, i1* %AF, !mcsema_real_eip !108
  %507 = trunc i32 %502 to i8, !mcsema_real_eip !108
  %508 = call i8 @llvm.ctpop.i8(i8 %507), !mcsema_real_eip !108
  %509 = trunc i8 %508 to i1, !mcsema_real_eip !108
  %510 = xor i1 %509, true, !mcsema_real_eip !108
  store i1 %510, i1* %PF, !mcsema_real_eip !108
  %511 = icmp eq i32 %502, 0, !mcsema_real_eip !108
  store i1 %511, i1* %ZF, !mcsema_real_eip !108
  %512 = lshr i32 %502, 31, !mcsema_real_eip !108
  %513 = trunc i32 %512 to i1, !mcsema_real_eip !108
  store i1 %513, i1* %SF, !mcsema_real_eip !108
  %514 = icmp ult i32 %EAX_val.153, 1, !mcsema_real_eip !108
  store i1 %514, i1* %CF, !mcsema_real_eip !108
  %515 = xor i32 %EAX_val.153, 1, !mcsema_real_eip !108
  %516 = and i32 %515, %503, !mcsema_real_eip !108
  %517 = lshr i32 %516, 31, !mcsema_real_eip !108
  %518 = trunc i32 %517 to i1, !mcsema_real_eip !108
  store i1 %518, i1* %OF, !mcsema_real_eip !108
  %519 = zext i32 %502 to i64, !mcsema_real_eip !108
  store i64 %519, i64* %XAX, !mcsema_real_eip !108
  %EAX_val.156 = load i32, i32* %EAX.9, !mcsema_real_eip !109
  store i32 %EAX_val.156, i32* %499, !mcsema_real_eip !109
  br label %block_0x1c2, !mcsema_real_eip !110

block_0x1b7:                                      ; preds = %block_0x16e
  %_new_gep_158 = getelementptr i8, i8* %_load_rbp_ptr_148, i64 -20
  %_allin_new_bt_159 = bitcast i8* %_new_gep_158 to i64*
  %520 = ptrtoint i64* %_allin_new_bt_159 to i64, !mcsema_real_eip !111
  %521 = inttoptr i64 %520 to i32*, !mcsema_real_eip !111
  %522 = load i32, i32* %521, !mcsema_real_eip !111
  %523 = zext i32 %522 to i64, !mcsema_real_eip !111
  store i64 %523, i64* %XCX, !mcsema_real_eip !111
  %524 = load i32, i32* %521, !mcsema_real_eip !112
  %525 = zext i32 %524 to i64, !mcsema_real_eip !112
  store i64 %525, i64* %XAX, !mcsema_real_eip !112
  %EAX_val.160 = load i32, i32* %EAX.9, !mcsema_real_eip !113
  %CL_val.162 = load i8, i8* %CL.87, !mcsema_real_eip !113
  %CL_val.162.zext = zext i8 %CL_val.162 to i32, !mcsema_real_eip !113
  %526 = and i32 %CL_val.162.zext, 31, !mcsema_real_eip !113
  %527 = sub i32 %CL_val.162.zext, 1, !mcsema_real_eip !113
  %528 = icmp ne i32 %526, 0, !mcsema_real_eip !113
  %529 = select i1 %528, i32 %527, i32 0, !mcsema_real_eip !113
  %530 = select i1 %528, i32 1, i32 0, !mcsema_real_eip !113
  %531 = shl i32 %EAX_val.160, %529, !mcsema_real_eip !113
  %532 = and i32 %531, -2147483648, !mcsema_real_eip !113
  %533 = icmp ne i32 %532, 0, !mcsema_real_eip !113
  %534 = select i1 %528, i1 %533, i1 %492, !mcsema_real_eip !113
  %535 = shl i32 %531, %530, !mcsema_real_eip !113
  %536 = icmp eq i32 %526, 1, !mcsema_real_eip !113
  %537 = and i32 %535, -2147483648, !mcsema_real_eip !113
  %538 = icmp ne i32 %537, 0, !mcsema_real_eip !113
  %539 = xor i1 %538, %534, !mcsema_real_eip !113
  %540 = select i1 %536, i1 %539, i1 %496, !mcsema_real_eip !113
  store i1 %540, i1* %OF, !mcsema_real_eip !113
  store i1 %534, i1* %CF, !mcsema_real_eip !113
  %541 = icmp eq i32 %535, 0, !mcsema_real_eip !113
  %542 = select i1 %528, i1 %541, i1 %489, !mcsema_real_eip !113
  store i1 %542, i1* %ZF, !mcsema_real_eip !113
  %543 = icmp slt i32 %535, 0, !mcsema_real_eip !113
  %544 = select i1 %528, i1 %543, i1 %491, !mcsema_real_eip !113
  store i1 %544, i1* %SF, !mcsema_real_eip !113
  %545 = trunc i32 %535 to i8, !mcsema_real_eip !113
  %546 = call i8 @llvm.ctpop.i8(i8 %545), !mcsema_real_eip !113
  %547 = trunc i8 %546 to i1, !mcsema_real_eip !113
  %548 = xor i1 %547, true, !mcsema_real_eip !113
  %549 = select i1 %528, i1 %548, i1 %488, !mcsema_real_eip !113
  store i1 %549, i1* %PF, !mcsema_real_eip !113
  %550 = zext i32 %535 to i64, !mcsema_real_eip !113
  store i64 %550, i64* %XAX, !mcsema_real_eip !113
  %EAX_val.165 = load i32, i32* %EAX.9, !mcsema_real_eip !114
  store i32 %EAX_val.165, i32* %521, !mcsema_real_eip !114
  br label %block_0x1c2, !mcsema_real_eip !115

block_0x1c2:                                      ; preds = %block_0x1b7, %block_0x1a9
  %_load_rbp_ptr_166 = load i8*, i8** %_RBP_ptr_
  %_new_gep_167 = getelementptr i8, i8* %_load_rbp_ptr_166, i64 -20
  %_allin_new_bt_168 = bitcast i8* %_new_gep_167 to i64*
  %551 = ptrtoint i64* %_allin_new_bt_168 to i64, !mcsema_real_eip !115
  %552 = inttoptr i64 %551 to i32*, !mcsema_real_eip !115
  %553 = load i32, i32* %552, !mcsema_real_eip !115
  store i1 false, i1* %AF, !mcsema_real_eip !115
  %554 = trunc i32 %553 to i8, !mcsema_real_eip !115
  %555 = call i8 @llvm.ctpop.i8(i8 %554), !mcsema_real_eip !115
  %556 = trunc i8 %555 to i1, !mcsema_real_eip !115
  %557 = xor i1 %556, true, !mcsema_real_eip !115
  store i1 %557, i1* %PF, !mcsema_real_eip !115
  %558 = icmp eq i32 %553, 0, !mcsema_real_eip !115
  store i1 %558, i1* %ZF, !mcsema_real_eip !115
  %559 = lshr i32 %553, 31, !mcsema_real_eip !115
  %560 = trunc i32 %559 to i1, !mcsema_real_eip !115
  store i1 %560, i1* %SF, !mcsema_real_eip !115
  store i1 false, i1* %CF, !mcsema_real_eip !115
  store i1 false, i1* %OF, !mcsema_real_eip !115
  br i1 %558, label %block_0x1d8, label %block_0x1cc, !mcsema_real_eip !116

block_0x1cc:                                      ; preds = %block_0x1c2
  %_new_gep_170 = getelementptr i8, i8* %_load_rbp_ptr_166, i64 -4
  %_allin_new_bt_171 = bitcast i8* %_new_gep_170 to i64*
  %561 = ptrtoint i64* %_allin_new_bt_171 to i64, !mcsema_real_eip !117
  %562 = inttoptr i64 %561 to i32*, !mcsema_real_eip !117
  store i32 -7, i32* %562, !mcsema_real_eip !117
  br label %block_0x417, !mcsema_real_eip !118

block_0x1d8:                                      ; preds = %block_0x1c2
  %EDI_val.169 = load i32, i32* %EDI.60, !mcsema_real_eip !119
  store i1 false, i1* %CF, !mcsema_real_eip !119
  store i1 false, i1* %OF, !mcsema_real_eip !119
  store i1 false, i1* %SF, !mcsema_real_eip !119
  store i1 true, i1* %ZF, !mcsema_real_eip !119
  store i1 true, i1* %PF, !mcsema_real_eip !119
  store i1 undef, i1* %AF, !mcsema_real_eip !119
  store i64 0, i64* %XDI, !mcsema_real_eip !119
  store i64 4, i64* %XDX, !mcsema_real_eip !120
  %_new_gep_173 = getelementptr i8, i8* %_load_rbp_ptr_166, i64 -16
  %_allin_new_bt_174 = bitcast i8* %_new_gep_173 to i64*
  %563 = load i64, i64* %_allin_new_bt_174, !mcsema_real_eip !121
  store i64 %563, i64* %XAX, !mcsema_real_eip !121
  %564 = add i64 8, %563, !mcsema_real_eip !122
  %565 = xor i64 %564, %563, !mcsema_real_eip !122
  %566 = xor i64 %565, 8, !mcsema_real_eip !122
  %567 = and i64 %566, 16, !mcsema_real_eip !122
  %568 = icmp ne i64 %567, 0, !mcsema_real_eip !122
  store i1 %568, i1* %AF, !mcsema_real_eip !122
  %569 = lshr i64 %564, 63, !mcsema_real_eip !122
  %570 = trunc i64 %569 to i1, !mcsema_real_eip !122
  store i1 %570, i1* %SF, !mcsema_real_eip !122
  %571 = icmp eq i64 %564, 0, !mcsema_real_eip !122
  store i1 %571, i1* %ZF, !mcsema_real_eip !122
  %572 = xor i64 %563, 8, !mcsema_real_eip !122
  %573 = xor i64 %572, -1, !mcsema_real_eip !122
  %574 = and i64 %573, %565, !mcsema_real_eip !122
  %575 = lshr i64 %574, 63, !mcsema_real_eip !122
  %576 = and i64 %575, 1, !mcsema_real_eip !122
  %577 = trunc i64 %576 to i1, !mcsema_real_eip !122
  store i1 %577, i1* %OF, !mcsema_real_eip !122
  %578 = trunc i64 %564 to i8, !mcsema_real_eip !122
  %579 = call i8 @llvm.ctpop.i8(i8 %578), !mcsema_real_eip !122
  %580 = trunc i8 %579 to i1, !mcsema_real_eip !122
  %581 = xor i1 %580, true, !mcsema_real_eip !122
  store i1 %581, i1* %PF, !mcsema_real_eip !122
  %582 = icmp ult i64 %564, %563, !mcsema_real_eip !122
  store i1 %582, i1* %CF, !mcsema_real_eip !122
  store i64 %564, i64* %XAX, !mcsema_real_eip !122
  store i64 %564, i64* %XSI, !mcsema_real_eip !123
  %_load_rsp_ptr_175 = load i8*, i8** %_RSP_ptr_
  %RSP_val.178 = load i64, i64* %XSP, !mcsema_real_eip !124
  %_new_gep_176 = getelementptr i8, i8* %_load_rsp_ptr_175, i64 -8
  %583 = sub i64 %RSP_val.178, 8, !mcsema_real_eip !124
  %_allin_new_bt_177 = bitcast i8* %_new_gep_176 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_177, !mcsema_real_eip !124
  store volatile i8* %_new_gep_176, i8** %_RSP_ptr_
  store i64 %583, i64* %XSP, !mcsema_real_eip !124
  %584 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %564, i64 4)
  %_rsp_fix_426 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_427 = getelementptr i8, i8* %_rsp_fix_426, i64 8
  store i8* %_gep_fix_427, i8** %_RSP_ptr_
  store i64 %584, i64* %XAX, !mcsema_real_eip !124
  %AX.179 = bitcast i64* %XAX to i16*, !mcsema_real_eip !125
  %AX_val.180 = load i16, i16* %AX.179, !mcsema_real_eip !125
  %CX.181 = bitcast i64* %XCX to i16*, !mcsema_real_eip !125
  store i16 %AX_val.180, i16* %CX.181, !mcsema_real_eip !125
  %_load_rbp_ptr_178 = load i8*, i8** %_RBP_ptr_
  %_new_gep_179 = getelementptr i8, i8* %_load_rbp_ptr_178, i64 -38
  %_allin_new_bt_180 = bitcast i8* %_new_gep_179 to i64*
  %585 = ptrtoint i64* %_allin_new_bt_180 to i64, !mcsema_real_eip !126
  %586 = inttoptr i64 %585 to i16*, !mcsema_real_eip !126
  store i16 %AX_val.180, i16* %586, !mcsema_real_eip !126
  %_load_rbp_ptr_181 = load i8*, i8** %_RBP_ptr_
  %_new_gep_182 = getelementptr i8, i8* %_load_rbp_ptr_181, i64 -38
  %_allin_new_bt_183 = bitcast i8* %_new_gep_182 to i64*
  %587 = ptrtoint i64* %_allin_new_bt_183 to i64, !mcsema_real_eip !127
  %588 = inttoptr i64 %587 to i16*, !mcsema_real_eip !127
  %589 = load i16, i16* %588, !mcsema_real_eip !127
  %590 = zext i16 %589 to i32, !mcsema_real_eip !127
  %591 = zext i32 %590 to i64, !mcsema_real_eip !127
  store i64 %591, i64* %XAX, !mcsema_real_eip !127
  %EAX_val.187 = load i32, i32* %EAX.9, !mcsema_real_eip !128
  %592 = or i32 %EAX_val.187, 21845, !mcsema_real_eip !128
  store i1 undef, i1* %AF, !mcsema_real_eip !128
  store i1 false, i1* %OF, !mcsema_real_eip !128
  store i1 false, i1* %CF, !mcsema_real_eip !128
  %593 = lshr i32 %592, 31, !mcsema_real_eip !128
  %594 = trunc i32 %593 to i1, !mcsema_real_eip !128
  store i1 %594, i1* %SF, !mcsema_real_eip !128
  store i1 false, i1* %ZF, !mcsema_real_eip !128
  %595 = trunc i32 %592 to i8, !mcsema_real_eip !128
  %596 = call i8 @llvm.ctpop.i8(i8 %595), !mcsema_real_eip !128
  %597 = trunc i8 %596 to i1, !mcsema_real_eip !128
  %598 = xor i1 %597, true, !mcsema_real_eip !128
  store i1 %598, i1* %PF, !mcsema_real_eip !128
  %599 = zext i32 %592 to i64, !mcsema_real_eip !128
  store i64 %599, i64* %XAX, !mcsema_real_eip !128
  %EAX_val.189 = load i32, i32* %EAX.9, !mcsema_real_eip !129
  %600 = sub i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  %601 = xor i32 %600, %EAX_val.189, !mcsema_real_eip !129
  %602 = xor i32 %601, 56663, !mcsema_real_eip !129
  %603 = and i32 %602, 16, !mcsema_real_eip !129
  %604 = icmp ne i32 %603, 0, !mcsema_real_eip !129
  store i1 %604, i1* %AF, !mcsema_real_eip !129
  %605 = trunc i32 %600 to i8, !mcsema_real_eip !129
  %606 = call i8 @llvm.ctpop.i8(i8 %605), !mcsema_real_eip !129
  %607 = trunc i8 %606 to i1, !mcsema_real_eip !129
  %608 = xor i1 %607, true, !mcsema_real_eip !129
  store i1 %608, i1* %PF, !mcsema_real_eip !129
  %609 = icmp eq i32 %600, 0, !mcsema_real_eip !129
  store i1 %609, i1* %ZF, !mcsema_real_eip !129
  %610 = lshr i32 %600, 31, !mcsema_real_eip !129
  %611 = trunc i32 %610 to i1, !mcsema_real_eip !129
  store i1 %611, i1* %SF, !mcsema_real_eip !129
  %612 = icmp ult i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  store i1 %612, i1* %CF, !mcsema_real_eip !129
  %613 = xor i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  %614 = and i32 %613, %601, !mcsema_real_eip !129
  %615 = lshr i32 %614, 31, !mcsema_real_eip !129
  %616 = trunc i32 %615 to i1, !mcsema_real_eip !129
  store i1 %616, i1* %OF, !mcsema_real_eip !129
  %617 = icmp eq i1 %609, false, !mcsema_real_eip !130
  br i1 %617, label %block_0x22a, label %block_0x20a, !mcsema_real_eip !130

block_0x20a:                                      ; preds = %block_0x1d8
  %618 = load i16, i16* %588, !mcsema_real_eip !131
  %619 = zext i16 %618 to i32, !mcsema_real_eip !131
  %620 = zext i32 %619 to i64, !mcsema_real_eip !131
  store i64 %620, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.192 = load i32, i32* %EAX.9, !mcsema_real_eip !132
  %621 = or i32 %EAX_val.192, 43690, !mcsema_real_eip !132
  store i1 undef, i1* %AF, !mcsema_real_eip !132
  store i1 false, i1* %OF, !mcsema_real_eip !132
  store i1 false, i1* %CF, !mcsema_real_eip !132
  %622 = lshr i32 %621, 31, !mcsema_real_eip !132
  %623 = trunc i32 %622 to i1, !mcsema_real_eip !132
  store i1 %623, i1* %SF, !mcsema_real_eip !132
  store i1 false, i1* %ZF, !mcsema_real_eip !132
  %624 = trunc i32 %621 to i8, !mcsema_real_eip !132
  %625 = call i8 @llvm.ctpop.i8(i8 %624), !mcsema_real_eip !132
  %626 = trunc i8 %625 to i1, !mcsema_real_eip !132
  %627 = xor i1 %626, true, !mcsema_real_eip !132
  store i1 %627, i1* %PF, !mcsema_real_eip !132
  %628 = zext i32 %621 to i64, !mcsema_real_eip !132
  store i64 %628, i64* %XAX, !mcsema_real_eip !132
  %EAX_val.194 = load i32, i32* %EAX.9, !mcsema_real_eip !133
  %629 = sub i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  %630 = xor i32 %629, %EAX_val.194, !mcsema_real_eip !133
  %631 = xor i32 %630, 65211, !mcsema_real_eip !133
  %632 = and i32 %631, 16, !mcsema_real_eip !133
  %633 = icmp ne i32 %632, 0, !mcsema_real_eip !133
  store i1 %633, i1* %AF, !mcsema_real_eip !133
  %634 = trunc i32 %629 to i8, !mcsema_real_eip !133
  %635 = call i8 @llvm.ctpop.i8(i8 %634), !mcsema_real_eip !133
  %636 = trunc i8 %635 to i1, !mcsema_real_eip !133
  %637 = xor i1 %636, true, !mcsema_real_eip !133
  store i1 %637, i1* %PF, !mcsema_real_eip !133
  %638 = icmp eq i32 %629, 0, !mcsema_real_eip !133
  store i1 %638, i1* %ZF, !mcsema_real_eip !133
  %639 = lshr i32 %629, 31, !mcsema_real_eip !133
  %640 = trunc i32 %639 to i1, !mcsema_real_eip !133
  store i1 %640, i1* %SF, !mcsema_real_eip !133
  %641 = icmp ult i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  store i1 %641, i1* %CF, !mcsema_real_eip !133
  %642 = xor i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  %643 = and i32 %642, %630, !mcsema_real_eip !133
  %644 = lshr i32 %643, 31, !mcsema_real_eip !133
  %645 = trunc i32 %644 to i1, !mcsema_real_eip !133
  store i1 %645, i1* %OF, !mcsema_real_eip !133
  %646 = icmp eq i1 %638, false, !mcsema_real_eip !134
  br i1 %646, label %block_0x22a, label %block_0x21e, !mcsema_real_eip !134

block_0x21e:                                      ; preds = %block_0x20a
  %_new_gep_188 = getelementptr i8, i8* %_load_rbp_ptr_181, i64 -20
  %_allin_new_bt_189 = bitcast i8* %_new_gep_188 to i64*
  %647 = ptrtoint i64* %_allin_new_bt_189 to i64, !mcsema_real_eip !135
  %648 = inttoptr i64 %647 to i32*, !mcsema_real_eip !135
  store i32 43690, i32* %648, !mcsema_real_eip !135
  br label %block_0x231, !mcsema_real_eip !136

block_0x22a:                                      ; preds = %block_0x20a, %block_0x1d8
  %_new_gep_191 = getelementptr i8, i8* %_load_rbp_ptr_181, i64 -20
  %_allin_new_bt_192 = bitcast i8* %_new_gep_191 to i64*
  %649 = ptrtoint i64* %_allin_new_bt_192 to i64, !mcsema_real_eip !137
  %650 = inttoptr i64 %649 to i32*, !mcsema_real_eip !137
  store i32 48059, i32* %650, !mcsema_real_eip !137
  br label %block_0x231, !mcsema_real_eip !138

block_0x231:                                      ; preds = %block_0x22a, %block_0x21e
  %EDI_val.198 = load i32, i32* %EDI.60, !mcsema_real_eip !138
  store i1 false, i1* %CF, !mcsema_real_eip !138
  store i1 false, i1* %OF, !mcsema_real_eip !138
  store i1 false, i1* %SF, !mcsema_real_eip !138
  store i1 true, i1* %ZF, !mcsema_real_eip !138
  store i1 true, i1* %PF, !mcsema_real_eip !138
  store i1 undef, i1* %AF, !mcsema_real_eip !138
  store i64 0, i64* %XDI, !mcsema_real_eip !138
  store i64 8, i64* %XDX, !mcsema_real_eip !139
  %_load_rbp_ptr_193 = load i8*, i8** %_RBP_ptr_
  %_new_gep_194 = getelementptr i8, i8* %_load_rbp_ptr_193, i64 -16
  %_allin_new_bt_195 = bitcast i8* %_new_gep_194 to i64*
  %651 = load i64, i64* %_allin_new_bt_195, !mcsema_real_eip !140
  store i64 %651, i64* %XAX, !mcsema_real_eip !140
  %652 = add i64 12, %651, !mcsema_real_eip !141
  %653 = xor i64 %652, %651, !mcsema_real_eip !141
  %654 = xor i64 %653, 12, !mcsema_real_eip !141
  %655 = and i64 %654, 16, !mcsema_real_eip !141
  %656 = icmp ne i64 %655, 0, !mcsema_real_eip !141
  store i1 %656, i1* %AF, !mcsema_real_eip !141
  %657 = lshr i64 %652, 63, !mcsema_real_eip !141
  %658 = trunc i64 %657 to i1, !mcsema_real_eip !141
  store i1 %658, i1* %SF, !mcsema_real_eip !141
  %659 = icmp eq i64 %652, 0, !mcsema_real_eip !141
  store i1 %659, i1* %ZF, !mcsema_real_eip !141
  %660 = xor i64 %651, 12, !mcsema_real_eip !141
  %661 = xor i64 %660, -1, !mcsema_real_eip !141
  %662 = and i64 %661, %653, !mcsema_real_eip !141
  %663 = lshr i64 %662, 63, !mcsema_real_eip !141
  %664 = and i64 %663, 1, !mcsema_real_eip !141
  %665 = trunc i64 %664 to i1, !mcsema_real_eip !141
  store i1 %665, i1* %OF, !mcsema_real_eip !141
  %666 = trunc i64 %652 to i8, !mcsema_real_eip !141
  %667 = call i8 @llvm.ctpop.i8(i8 %666), !mcsema_real_eip !141
  %668 = trunc i8 %667 to i1, !mcsema_real_eip !141
  %669 = xor i1 %668, true, !mcsema_real_eip !141
  store i1 %669, i1* %PF, !mcsema_real_eip !141
  %670 = icmp ult i64 %652, %651, !mcsema_real_eip !141
  store i1 %670, i1* %CF, !mcsema_real_eip !141
  store i64 %652, i64* %XAX, !mcsema_real_eip !141
  store i64 %652, i64* %XSI, !mcsema_real_eip !142
  %_load_rsp_ptr_196 = load i8*, i8** %_RSP_ptr_
  %RSP_val.207 = load i64, i64* %XSP, !mcsema_real_eip !143
  %_new_gep_197 = getelementptr i8, i8* %_load_rsp_ptr_196, i64 -8
  %671 = sub i64 %RSP_val.207, 8, !mcsema_real_eip !143
  %_allin_new_bt_198 = bitcast i8* %_new_gep_197 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_198, !mcsema_real_eip !143
  store volatile i8* %_new_gep_197, i8** %_RSP_ptr_
  store i64 %671, i64* %XSP, !mcsema_real_eip !143
  %672 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %652, i64 8)
  %_rsp_fix_428 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_429 = getelementptr i8, i8* %_rsp_fix_428, i64 8
  store i8* %_gep_fix_429, i8** %_RSP_ptr_
  store i64 %672, i64* %XAX, !mcsema_real_eip !143
  %_load_rbp_ptr_199 = load i8*, i8** %_RBP_ptr_
  %_new_gep_200 = getelementptr i8, i8* %_load_rbp_ptr_199, i64 -44
  %_allin_new_bt_201 = bitcast i8* %_new_gep_200 to i64*
  %EAX_val.210 = load i32, i32* %EAX.9, !mcsema_real_eip !144
  %673 = ptrtoint i64* %_allin_new_bt_201 to i64, !mcsema_real_eip !144
  %674 = inttoptr i64 %673 to i32*, !mcsema_real_eip !144
  store i32 %EAX_val.210, i32* %674, !mcsema_real_eip !144
  %_load_rbp_ptr_202 = load i8*, i8** %_RBP_ptr_
  %_new_gep_203 = getelementptr i8, i8* %_load_rbp_ptr_202, i64 -44
  %_allin_new_bt_204 = bitcast i8* %_new_gep_203 to i64*
  %675 = ptrtoint i64* %_allin_new_bt_204 to i64, !mcsema_real_eip !145
  %676 = inttoptr i64 %675 to i32*, !mcsema_real_eip !145
  %677 = load i32, i32* %676, !mcsema_real_eip !145
  %678 = zext i32 %677 to i64, !mcsema_real_eip !145
  store i64 %678, i64* %XAX, !mcsema_real_eip !145
  %EAX_val.213 = load i32, i32* %EAX.9, !mcsema_real_eip !146
  %679 = xor i32 %EAX_val.213, -1534560611, !mcsema_real_eip !146
  store i1 false, i1* %CF, !mcsema_real_eip !146
  store i1 false, i1* %OF, !mcsema_real_eip !146
  %680 = lshr i32 %679, 31, !mcsema_real_eip !146
  %681 = trunc i32 %680 to i1, !mcsema_real_eip !146
  store i1 %681, i1* %SF, !mcsema_real_eip !146
  %682 = icmp eq i32 %679, 0, !mcsema_real_eip !146
  store i1 %682, i1* %ZF, !mcsema_real_eip !146
  %683 = trunc i32 %679 to i8, !mcsema_real_eip !146
  %684 = call i8 @llvm.ctpop.i8(i8 %683), !mcsema_real_eip !146
  %685 = trunc i8 %684 to i1, !mcsema_real_eip !146
  %686 = xor i1 %685, true, !mcsema_real_eip !146
  store i1 %686, i1* %PF, !mcsema_real_eip !146
  store i1 undef, i1* %AF, !mcsema_real_eip !146
  %687 = zext i32 %679 to i64, !mcsema_real_eip !146
  store i64 %687, i64* %XAX, !mcsema_real_eip !146
  %_new_gep_206 = getelementptr i8, i8* %_load_rbp_ptr_202, i64 -48
  %_allin_new_bt_207 = bitcast i8* %_new_gep_206 to i64*
  %EAX_val.216 = load i32, i32* %EAX.9, !mcsema_real_eip !147
  %688 = ptrtoint i64* %_allin_new_bt_207 to i64, !mcsema_real_eip !147
  %689 = inttoptr i64 %688 to i32*, !mcsema_real_eip !147
  store i32 %EAX_val.216, i32* %689, !mcsema_real_eip !147
  %_load_rbp_ptr_208 = load i8*, i8** %_RBP_ptr_
  %_new_gep_209 = getelementptr i8, i8* %_load_rbp_ptr_208, i64 -48
  %_allin_new_bt_210 = bitcast i8* %_new_gep_209 to i64*
  %690 = ptrtoint i64* %_allin_new_bt_210 to i64, !mcsema_real_eip !148
  %691 = inttoptr i64 %690 to i32*, !mcsema_real_eip !148
  %692 = load i32, i32* %691, !mcsema_real_eip !148
  %693 = zext i32 %692 to i64, !mcsema_real_eip !148
  store i64 %693, i64* %XAX, !mcsema_real_eip !148
  %EAX_val.219 = load i32, i32* %EAX.9, !mcsema_real_eip !149
  %694 = lshr i32 %EAX_val.219, 15, !mcsema_real_eip !149
  %695 = and i32 %694, 1, !mcsema_real_eip !149
  %696 = icmp ne i32 %695, 0, !mcsema_real_eip !149
  %697 = load i1, i1* %CF, !mcsema_real_eip !149
  %698 = lshr i32 %694, 1, !mcsema_real_eip !149
  %699 = load i1, i1* %OF, !mcsema_real_eip !149
  %700 = and i32 %EAX_val.219, -2147483648, !mcsema_real_eip !149
  %701 = icmp ne i32 %700, 0, !mcsema_real_eip !149
  store i1 %696, i1* %CF, !mcsema_real_eip !149
  %702 = load i1, i1* %ZF, !mcsema_real_eip !149
  %703 = icmp eq i32 %698, 0, !mcsema_real_eip !149
  store i1 %703, i1* %ZF, !mcsema_real_eip !149
  %704 = load i1, i1* %SF, !mcsema_real_eip !149
  store i1 false, i1* %SF, !mcsema_real_eip !149
  %705 = load i1, i1* %PF, !mcsema_real_eip !149
  %706 = trunc i32 %698 to i8, !mcsema_real_eip !149
  %707 = call i8 @llvm.ctpop.i8(i8 %706), !mcsema_real_eip !149
  %708 = trunc i8 %707 to i1, !mcsema_real_eip !149
  %709 = xor i1 %708, true, !mcsema_real_eip !149
  store i1 %709, i1* %PF, !mcsema_real_eip !149
  %710 = zext i32 %698 to i64, !mcsema_real_eip !149
  store i64 %710, i64* %XAX, !mcsema_real_eip !149
  %_new_gep_212 = getelementptr i8, i8* %_load_rbp_ptr_208, i64 -52
  %_allin_new_bt_213 = bitcast i8* %_new_gep_212 to i64*
  %EAX_val.222 = load i32, i32* %EAX.9, !mcsema_real_eip !150
  %711 = ptrtoint i64* %_allin_new_bt_213 to i64, !mcsema_real_eip !150
  %712 = inttoptr i64 %711 to i32*, !mcsema_real_eip !150
  store i32 %EAX_val.222, i32* %712, !mcsema_real_eip !150
  %_load_rbp_ptr_214 = load i8*, i8** %_RBP_ptr_
  %_new_gep_215 = getelementptr i8, i8* %_load_rbp_ptr_214, i64 -48
  %_allin_new_bt_216 = bitcast i8* %_new_gep_215 to i64*
  %713 = ptrtoint i64* %_allin_new_bt_216 to i64, !mcsema_real_eip !151
  %714 = inttoptr i64 %713 to i32*, !mcsema_real_eip !151
  %715 = load i32, i32* %714, !mcsema_real_eip !151
  %716 = zext i32 %715 to i64, !mcsema_real_eip !151
  store i64 %716, i64* %XAX, !mcsema_real_eip !151
  %EAX_val.225 = load i32, i32* %EAX.9, !mcsema_real_eip !152
  %717 = and i32 %EAX_val.225, 65535, !mcsema_real_eip !152
  store i1 false, i1* %SF, !mcsema_real_eip !152
  %718 = icmp eq i32 %717, 0, !mcsema_real_eip !152
  store i1 %718, i1* %ZF, !mcsema_real_eip !152
  %719 = trunc i32 %717 to i8, !mcsema_real_eip !152
  %720 = call i8 @llvm.ctpop.i8(i8 %719), !mcsema_real_eip !152
  %721 = trunc i8 %720 to i1, !mcsema_real_eip !152
  %722 = xor i1 %721, true, !mcsema_real_eip !152
  store i1 %722, i1* %PF, !mcsema_real_eip !152
  store i1 false, i1* %OF, !mcsema_real_eip !152
  store i1 false, i1* %CF, !mcsema_real_eip !152
  store i1 undef, i1* %AF, !mcsema_real_eip !152
  %723 = zext i32 %717 to i64, !mcsema_real_eip !152
  store i64 %723, i64* %XAX, !mcsema_real_eip !152
  %_new_gep_218 = getelementptr i8, i8* %_load_rbp_ptr_214, i64 -56
  %_allin_new_bt_219 = bitcast i8* %_new_gep_218 to i64*
  %EAX_val.228 = load i32, i32* %EAX.9, !mcsema_real_eip !153
  %724 = ptrtoint i64* %_allin_new_bt_219 to i64, !mcsema_real_eip !153
  %725 = inttoptr i64 %724 to i32*, !mcsema_real_eip !153
  store i32 %EAX_val.228, i32* %725, !mcsema_real_eip !153
  %_load_rbp_ptr_220 = load i8*, i8** %_RBP_ptr_
  %_new_gep_221 = getelementptr i8, i8* %_load_rbp_ptr_220, i64 -52
  %_allin_new_bt_222 = bitcast i8* %_new_gep_221 to i64*
  %726 = ptrtoint i64* %_allin_new_bt_222 to i64, !mcsema_real_eip !154
  %727 = inttoptr i64 %726 to i32*, !mcsema_real_eip !154
  %728 = load i32, i32* %727, !mcsema_real_eip !154
  %729 = sub i32 %728, 79, !mcsema_real_eip !154
  %730 = xor i32 %729, %728, !mcsema_real_eip !154
  %731 = xor i32 %730, 79, !mcsema_real_eip !154
  %732 = and i32 %731, 16, !mcsema_real_eip !154
  %733 = icmp ne i32 %732, 0, !mcsema_real_eip !154
  store i1 %733, i1* %AF, !mcsema_real_eip !154
  %734 = trunc i32 %729 to i8, !mcsema_real_eip !154
  %735 = call i8 @llvm.ctpop.i8(i8 %734), !mcsema_real_eip !154
  %736 = trunc i8 %735 to i1, !mcsema_real_eip !154
  %737 = xor i1 %736, true, !mcsema_real_eip !154
  store i1 %737, i1* %PF, !mcsema_real_eip !154
  %738 = icmp eq i32 %729, 0, !mcsema_real_eip !154
  store i1 %738, i1* %ZF, !mcsema_real_eip !154
  %739 = lshr i32 %729, 31, !mcsema_real_eip !154
  %740 = trunc i32 %739 to i1, !mcsema_real_eip !154
  store i1 %740, i1* %SF, !mcsema_real_eip !154
  %741 = icmp ult i32 %728, 79, !mcsema_real_eip !154
  store i1 %741, i1* %CF, !mcsema_real_eip !154
  %742 = xor i32 %728, 79, !mcsema_real_eip !154
  %743 = and i32 %742, %730, !mcsema_real_eip !154
  %744 = lshr i32 %743, 31, !mcsema_real_eip !154
  %745 = trunc i32 %744 to i1, !mcsema_real_eip !154
  store i1 %745, i1* %OF, !mcsema_real_eip !154
  %746 = icmp eq i1 %738, false, !mcsema_real_eip !155
  br i1 %746, label %block_0x28c, label %block_0x274, !mcsema_real_eip !155

block_0x274:                                      ; preds = %block_0x231
  %_new_gep_224 = getelementptr i8, i8* %_load_rbp_ptr_220, i64 -56
  %_allin_new_bt_225 = bitcast i8* %_new_gep_224 to i64*
  %747 = ptrtoint i64* %_allin_new_bt_225 to i64, !mcsema_real_eip !156
  %748 = inttoptr i64 %747 to i32*, !mcsema_real_eip !156
  %749 = load i32, i32* %748, !mcsema_real_eip !156
  %750 = zext i32 %749 to i64, !mcsema_real_eip !156
  store i64 %750, i64* %XAX, !mcsema_real_eip !156
  %_new_gep_227 = getelementptr i8, i8* %_load_rbp_ptr_220, i64 -20
  %_allin_new_bt_228 = bitcast i8* %_new_gep_227 to i64*
  %EAX_val.233 = load i32, i32* %EAX.9, !mcsema_real_eip !157
  %751 = ptrtoint i64* %_allin_new_bt_228 to i64, !mcsema_real_eip !157
  %752 = inttoptr i64 %751 to i32*, !mcsema_real_eip !157
  %753 = load i32, i32* %752, !mcsema_real_eip !157
  %754 = sub i32 %EAX_val.233, %753, !mcsema_real_eip !157
  %755 = xor i32 %754, %EAX_val.233, !mcsema_real_eip !157
  %756 = xor i32 %755, %753, !mcsema_real_eip !157
  %757 = and i32 %756, 16, !mcsema_real_eip !157
  %758 = icmp ne i32 %757, 0, !mcsema_real_eip !157
  store i1 %758, i1* %AF, !mcsema_real_eip !157
  %759 = trunc i32 %754 to i8, !mcsema_real_eip !157
  %760 = call i8 @llvm.ctpop.i8(i8 %759), !mcsema_real_eip !157
  %761 = trunc i8 %760 to i1, !mcsema_real_eip !157
  %762 = xor i1 %761, true, !mcsema_real_eip !157
  store i1 %762, i1* %PF, !mcsema_real_eip !157
  %763 = icmp eq i32 %754, 0, !mcsema_real_eip !157
  store i1 %763, i1* %ZF, !mcsema_real_eip !157
  %764 = lshr i32 %754, 31, !mcsema_real_eip !157
  %765 = trunc i32 %764 to i1, !mcsema_real_eip !157
  store i1 %765, i1* %SF, !mcsema_real_eip !157
  %766 = icmp ult i32 %EAX_val.233, %753, !mcsema_real_eip !157
  store i1 %766, i1* %CF, !mcsema_real_eip !157
  %767 = xor i32 %EAX_val.233, %753, !mcsema_real_eip !157
  %768 = and i32 %767, %755, !mcsema_real_eip !157
  %769 = lshr i32 %768, 31, !mcsema_real_eip !157
  %770 = trunc i32 %769 to i1, !mcsema_real_eip !157
  store i1 %770, i1* %OF, !mcsema_real_eip !157
  %771 = icmp eq i1 %763, false, !mcsema_real_eip !158
  br i1 %771, label %block_0x28c, label %block_0x280, !mcsema_real_eip !158

block_0x280:                                      ; preds = %block_0x274
  store i32 0, i32* %752, !mcsema_real_eip !159
  br label %block_0x293, !mcsema_real_eip !160

block_0x28c:                                      ; preds = %block_0x274, %block_0x231
  %_new_gep_233 = getelementptr i8, i8* %_load_rbp_ptr_220, i64 -20
  %_allin_new_bt_234 = bitcast i8* %_new_gep_233 to i64*
  %772 = ptrtoint i64* %_allin_new_bt_234 to i64, !mcsema_real_eip !161
  %773 = inttoptr i64 %772 to i32*, !mcsema_real_eip !161
  store i32 48351, i32* %773, !mcsema_real_eip !161
  br label %block_0x293, !mcsema_real_eip !162

block_0x293:                                      ; preds = %block_0x28c, %block_0x280
  store i64 8, i64* %XDX, !mcsema_real_eip !162
  %_load_rbp_ptr_235 = load i8*, i8** %_RBP_ptr_
  %_new_gep_236 = getelementptr i8, i8* %_load_rbp_ptr_235, i64 -20
  %_allin_new_bt_237 = bitcast i8* %_new_gep_236 to i64*
  %774 = ptrtoint i64* %_allin_new_bt_237 to i64, !mcsema_real_eip !163
  %775 = inttoptr i64 %774 to i32*, !mcsema_real_eip !163
  %776 = load i32, i32* %775, !mcsema_real_eip !163
  %777 = zext i32 %776 to i64, !mcsema_real_eip !163
  store i64 %777, i64* %XDI, !mcsema_real_eip !163
  %_new_gep_239 = getelementptr i8, i8* %_load_rbp_ptr_235, i64 -16
  %_allin_new_bt_240 = bitcast i8* %_new_gep_239 to i64*
  %778 = load i64, i64* %_allin_new_bt_240, !mcsema_real_eip !164
  store i64 %778, i64* %XAX, !mcsema_real_eip !164
  %779 = add i64 20, %778, !mcsema_real_eip !165
  %780 = xor i64 %779, %778, !mcsema_real_eip !165
  %781 = xor i64 %780, 20, !mcsema_real_eip !165
  %782 = and i64 %781, 16, !mcsema_real_eip !165
  %783 = icmp ne i64 %782, 0, !mcsema_real_eip !165
  store i1 %783, i1* %AF, !mcsema_real_eip !165
  %784 = lshr i64 %779, 63, !mcsema_real_eip !165
  %785 = trunc i64 %784 to i1, !mcsema_real_eip !165
  store i1 %785, i1* %SF, !mcsema_real_eip !165
  %786 = icmp eq i64 %779, 0, !mcsema_real_eip !165
  store i1 %786, i1* %ZF, !mcsema_real_eip !165
  %787 = xor i64 %778, 20, !mcsema_real_eip !165
  %788 = xor i64 %787, -1, !mcsema_real_eip !165
  %789 = and i64 %788, %780, !mcsema_real_eip !165
  %790 = lshr i64 %789, 63, !mcsema_real_eip !165
  %791 = and i64 %790, 1, !mcsema_real_eip !165
  %792 = trunc i64 %791 to i1, !mcsema_real_eip !165
  store i1 %792, i1* %OF, !mcsema_real_eip !165
  %793 = trunc i64 %779 to i8, !mcsema_real_eip !165
  %794 = call i8 @llvm.ctpop.i8(i8 %793), !mcsema_real_eip !165
  %795 = trunc i8 %794 to i1, !mcsema_real_eip !165
  %796 = xor i1 %795, true, !mcsema_real_eip !165
  store i1 %796, i1* %PF, !mcsema_real_eip !165
  %797 = icmp ult i64 %779, %778, !mcsema_real_eip !165
  store i1 %797, i1* %CF, !mcsema_real_eip !165
  store i64 %779, i64* %XAX, !mcsema_real_eip !165
  store i64 %779, i64* %XSI, !mcsema_real_eip !166
  %_load_rsp_ptr_241 = load i8*, i8** %_RSP_ptr_
  %RSP_val.243 = load i64, i64* %XSP, !mcsema_real_eip !167
  %_new_gep_242 = getelementptr i8, i8* %_load_rsp_ptr_241, i64 -8
  %798 = sub i64 %RSP_val.243, 8, !mcsema_real_eip !167
  %_allin_new_bt_243 = bitcast i8* %_new_gep_242 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_243, !mcsema_real_eip !167
  store volatile i8* %_new_gep_242, i8** %_RSP_ptr_
  store i64 %798, i64* %XSP, !mcsema_real_eip !167
  %799 = call x86_64_sysvcc i64 @_read_bytes(i64 %777, i64 %779, i64 8)
  %_rsp_fix_430 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_431 = getelementptr i8, i8* %_rsp_fix_430, i64 8
  store i8* %_gep_fix_431, i8** %_RSP_ptr_
  store i64 %799, i64* %XAX, !mcsema_real_eip !167
  %_load_rbp_ptr_244 = load i8*, i8** %_RBP_ptr_
  %_new_gep_245 = getelementptr i8, i8* %_load_rbp_ptr_244, i64 -60
  %_allin_new_bt_246 = bitcast i8* %_new_gep_245 to i64*
  %EAX_val.246 = load i32, i32* %EAX.9, !mcsema_real_eip !168
  %800 = ptrtoint i64* %_allin_new_bt_246 to i64, !mcsema_real_eip !168
  %801 = inttoptr i64 %800 to i32*, !mcsema_real_eip !168
  store i32 %EAX_val.246, i32* %801, !mcsema_real_eip !168
  %_load_rbp_ptr_247 = load i8*, i8** %_RBP_ptr_
  %_new_gep_248 = getelementptr i8, i8* %_load_rbp_ptr_247, i64 -60
  %_allin_new_bt_249 = bitcast i8* %_new_gep_248 to i64*
  %802 = ptrtoint i64* %_allin_new_bt_249 to i64, !mcsema_real_eip !169
  %803 = inttoptr i64 %802 to i32*, !mcsema_real_eip !169
  %804 = load i32, i32* %803, !mcsema_real_eip !169
  %805 = zext i32 %804 to i64, !mcsema_real_eip !169
  store i64 %805, i64* %XAX, !mcsema_real_eip !169
  %EAX_val.249 = load i32, i32* %EAX.9, !mcsema_real_eip !170
  %806 = sub i32 %EAX_val.249, 3, !mcsema_real_eip !170
  %807 = xor i32 %806, %EAX_val.249, !mcsema_real_eip !170
  %808 = xor i32 %807, 3, !mcsema_real_eip !170
  %809 = and i32 %808, 16, !mcsema_real_eip !170
  %810 = icmp ne i32 %809, 0, !mcsema_real_eip !170
  store i1 %810, i1* %AF, !mcsema_real_eip !170
  %811 = trunc i32 %806 to i8, !mcsema_real_eip !170
  %812 = call i8 @llvm.ctpop.i8(i8 %811), !mcsema_real_eip !170
  %813 = trunc i8 %812 to i1, !mcsema_real_eip !170
  %814 = xor i1 %813, true, !mcsema_real_eip !170
  store i1 %814, i1* %PF, !mcsema_real_eip !170
  %815 = icmp eq i32 %806, 0, !mcsema_real_eip !170
  store i1 %815, i1* %ZF, !mcsema_real_eip !170
  %816 = lshr i32 %806, 31, !mcsema_real_eip !170
  %817 = trunc i32 %816 to i1, !mcsema_real_eip !170
  store i1 %817, i1* %SF, !mcsema_real_eip !170
  %818 = icmp ult i32 %EAX_val.249, 3, !mcsema_real_eip !170
  store i1 %818, i1* %CF, !mcsema_real_eip !170
  %819 = xor i32 %EAX_val.249, 3, !mcsema_real_eip !170
  %820 = and i32 %819, %807, !mcsema_real_eip !170
  %821 = lshr i32 %820, 31, !mcsema_real_eip !170
  %822 = trunc i32 %821 to i1, !mcsema_real_eip !170
  store i1 %822, i1* %OF, !mcsema_real_eip !170
  %823 = zext i32 %806 to i64, !mcsema_real_eip !170
  store i64 %823, i64* %XAX, !mcsema_real_eip !170
  %EAX_val.252 = load i32, i32* %EAX.9, !mcsema_real_eip !171
  store i32 %EAX_val.252, i32* %803, !mcsema_real_eip !171
  %_load_rbp_ptr_253 = load i8*, i8** %_RBP_ptr_
  %_new_gep_254 = getelementptr i8, i8* %_load_rbp_ptr_253, i64 -60
  %_allin_new_bt_255 = bitcast i8* %_new_gep_254 to i64*
  %824 = ptrtoint i64* %_allin_new_bt_255 to i64, !mcsema_real_eip !172
  %825 = inttoptr i64 %824 to i32*, !mcsema_real_eip !172
  %826 = load i32, i32* %825, !mcsema_real_eip !172
  %827 = zext i32 %826 to i64, !mcsema_real_eip !172
  store i64 %827, i64* %XAX, !mcsema_real_eip !172
  %EAX_val.255 = load i32, i32* %EAX.9, !mcsema_real_eip !173
  %828 = and i32 %EAX_val.255, 7, !mcsema_real_eip !173
  store i1 false, i1* %SF, !mcsema_real_eip !173
  %829 = icmp eq i32 %828, 0, !mcsema_real_eip !173
  store i1 %829, i1* %ZF, !mcsema_real_eip !173
  %830 = trunc i32 %828 to i8, !mcsema_real_eip !173
  %831 = call i8 @llvm.ctpop.i8(i8 %830), !mcsema_real_eip !173
  %832 = trunc i8 %831 to i1, !mcsema_real_eip !173
  %833 = xor i1 %832, true, !mcsema_real_eip !173
  store i1 %833, i1* %PF, !mcsema_real_eip !173
  store i1 false, i1* %OF, !mcsema_real_eip !173
  store i1 false, i1* %CF, !mcsema_real_eip !173
  store i1 undef, i1* %AF, !mcsema_real_eip !173
  %834 = zext i32 %828 to i64, !mcsema_real_eip !173
  store i64 %834, i64* %XAX, !mcsema_real_eip !173
  %EAX_val.257 = load i32, i32* %EAX.9, !mcsema_real_eip !174
  store i1 false, i1* %AF, !mcsema_real_eip !174
  %835 = trunc i32 %EAX_val.257 to i8, !mcsema_real_eip !174
  %836 = call i8 @llvm.ctpop.i8(i8 %835), !mcsema_real_eip !174
  %837 = trunc i8 %836 to i1, !mcsema_real_eip !174
  %838 = xor i1 %837, true, !mcsema_real_eip !174
  store i1 %838, i1* %PF, !mcsema_real_eip !174
  %839 = icmp eq i32 %EAX_val.257, 0, !mcsema_real_eip !174
  store i1 %839, i1* %ZF, !mcsema_real_eip !174
  %840 = lshr i32 %EAX_val.257, 31, !mcsema_real_eip !174
  %841 = trunc i32 %840 to i1, !mcsema_real_eip !174
  store i1 %841, i1* %SF, !mcsema_real_eip !174
  store i1 false, i1* %CF, !mcsema_real_eip !174
  store i1 false, i1* %OF, !mcsema_real_eip !174
  br i1 %839, label %block_0x2d2, label %block_0x2c6, !mcsema_real_eip !175

block_0x2c6:                                      ; preds = %block_0x293
  %_new_gep_257 = getelementptr i8, i8* %_load_rbp_ptr_253, i64 -4
  %_allin_new_bt_258 = bitcast i8* %_new_gep_257 to i64*
  %842 = ptrtoint i64* %_allin_new_bt_258 to i64, !mcsema_real_eip !176
  %843 = inttoptr i64 %842 to i32*, !mcsema_real_eip !176
  store i32 -21, i32* %843, !mcsema_real_eip !176
  br label %block_0x417, !mcsema_real_eip !177

block_0x2d2:                                      ; preds = %block_0x293
  %844 = load i32, i32* %825, !mcsema_real_eip !178
  %845 = zext i32 %844 to i64, !mcsema_real_eip !178
  store i64 %845, i64* %XAX, !mcsema_real_eip !178
  %EAX_val.261 = load i32, i32* %EAX.9, !mcsema_real_eip !179
  %846 = sub i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  %847 = xor i32 %846, %EAX_val.261, !mcsema_real_eip !179
  %848 = xor i32 %847, -2147483648, !mcsema_real_eip !179
  %849 = and i32 %848, 16, !mcsema_real_eip !179
  %850 = icmp ne i32 %849, 0, !mcsema_real_eip !179
  store i1 %850, i1* %AF, !mcsema_real_eip !179
  %851 = trunc i32 %846 to i8, !mcsema_real_eip !179
  %852 = call i8 @llvm.ctpop.i8(i8 %851), !mcsema_real_eip !179
  %853 = trunc i8 %852 to i1, !mcsema_real_eip !179
  %854 = xor i1 %853, true, !mcsema_real_eip !179
  store i1 %854, i1* %PF, !mcsema_real_eip !179
  %855 = icmp eq i32 %846, 0, !mcsema_real_eip !179
  store i1 %855, i1* %ZF, !mcsema_real_eip !179
  %856 = lshr i32 %846, 31, !mcsema_real_eip !179
  %857 = trunc i32 %856 to i1, !mcsema_real_eip !179
  store i1 %857, i1* %SF, !mcsema_real_eip !179
  %858 = icmp ult i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  store i1 %858, i1* %CF, !mcsema_real_eip !179
  %859 = xor i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  %860 = and i32 %859, %847, !mcsema_real_eip !179
  %861 = lshr i32 %860, 31, !mcsema_real_eip !179
  %862 = trunc i32 %861 to i1, !mcsema_real_eip !179
  store i1 %862, i1* %OF, !mcsema_real_eip !179
  %863 = zext i32 %846 to i64, !mcsema_real_eip !179
  store i64 %863, i64* %XAX, !mcsema_real_eip !179
  %EAX_val.264 = load i32, i32* %EAX.9, !mcsema_real_eip !180
  store i32 %EAX_val.264, i32* %825, !mcsema_real_eip !180
  %_load_rbp_ptr_265 = load i8*, i8** %_RBP_ptr_
  %_new_gep_266 = getelementptr i8, i8* %_load_rbp_ptr_265, i64 -60
  %_allin_new_bt_267 = bitcast i8* %_new_gep_266 to i64*
  %864 = ptrtoint i64* %_allin_new_bt_267 to i64, !mcsema_real_eip !181
  %865 = inttoptr i64 %864 to i32*, !mcsema_real_eip !181
  %866 = load i32, i32* %865, !mcsema_real_eip !181
  %867 = sub i32 %866, 268435455, !mcsema_real_eip !181
  %868 = xor i32 %867, %866, !mcsema_real_eip !181
  %869 = xor i32 %868, 268435455, !mcsema_real_eip !181
  %870 = and i32 %869, 16, !mcsema_real_eip !181
  %871 = icmp ne i32 %870, 0, !mcsema_real_eip !181
  store i1 %871, i1* %AF, !mcsema_real_eip !181
  %872 = trunc i32 %867 to i8, !mcsema_real_eip !181
  %873 = call i8 @llvm.ctpop.i8(i8 %872), !mcsema_real_eip !181
  %874 = trunc i8 %873 to i1, !mcsema_real_eip !181
  %875 = xor i1 %874, true, !mcsema_real_eip !181
  store i1 %875, i1* %PF, !mcsema_real_eip !181
  %876 = icmp eq i32 %867, 0, !mcsema_real_eip !181
  store i1 %876, i1* %ZF, !mcsema_real_eip !181
  %877 = lshr i32 %867, 31, !mcsema_real_eip !181
  %878 = trunc i32 %877 to i1, !mcsema_real_eip !181
  store i1 %878, i1* %SF, !mcsema_real_eip !181
  %879 = icmp ult i32 %866, 268435455, !mcsema_real_eip !181
  store i1 %879, i1* %CF, !mcsema_real_eip !181
  %880 = xor i32 %866, 268435455, !mcsema_real_eip !181
  %881 = and i32 %880, %868, !mcsema_real_eip !181
  %882 = lshr i32 %881, 31, !mcsema_real_eip !181
  %883 = trunc i32 %882 to i1, !mcsema_real_eip !181
  store i1 %883, i1* %OF, !mcsema_real_eip !181
  %884 = or i1 %879, %876, !mcsema_real_eip !182
  br i1 %884, label %block_0x2f6, label %block_0x2ea, !mcsema_real_eip !182

block_0x2ea:                                      ; preds = %block_0x2d2
  %_new_gep_269 = getelementptr i8, i8* %_load_rbp_ptr_265, i64 -4
  %_allin_new_bt_270 = bitcast i8* %_new_gep_269 to i64*
  %885 = ptrtoint i64* %_allin_new_bt_270 to i64, !mcsema_real_eip !183
  %886 = inttoptr i64 %885 to i32*, !mcsema_real_eip !183
  store i32 -22, i32* %886, !mcsema_real_eip !183
  br label %block_0x417, !mcsema_real_eip !184

block_0x2f6:                                      ; preds = %block_0x2d2
  store i64 10000, i64* %XAX, !mcsema_real_eip !185
  %887 = load i32, i32* %865, !mcsema_real_eip !186
  %888 = zext i32 %887 to i64, !mcsema_real_eip !186
  store i64 %888, i64* %XCX, !mcsema_real_eip !186
  %ECX_val.269 = load i32, i32* %ECX.12, !mcsema_real_eip !187
  %889 = xor i32 %ECX_val.269, 13631488, !mcsema_real_eip !187
  store i1 false, i1* %CF, !mcsema_real_eip !187
  store i1 false, i1* %OF, !mcsema_real_eip !187
  %890 = lshr i32 %889, 31, !mcsema_real_eip !187
  %891 = trunc i32 %890 to i1, !mcsema_real_eip !187
  store i1 %891, i1* %SF, !mcsema_real_eip !187
  %892 = icmp eq i32 %889, 0, !mcsema_real_eip !187
  store i1 %892, i1* %ZF, !mcsema_real_eip !187
  %893 = trunc i32 %889 to i8, !mcsema_real_eip !187
  %894 = call i8 @llvm.ctpop.i8(i8 %893), !mcsema_real_eip !187
  %895 = trunc i8 %894 to i1, !mcsema_real_eip !187
  %896 = xor i1 %895, true, !mcsema_real_eip !187
  store i1 %896, i1* %PF, !mcsema_real_eip !187
  store i1 undef, i1* %AF, !mcsema_real_eip !187
  %897 = zext i32 %889 to i64, !mcsema_real_eip !187
  store i64 %897, i64* %XCX, !mcsema_real_eip !187
  %ECX_val.272 = load i32, i32* %ECX.12, !mcsema_real_eip !188
  store i32 %ECX_val.272, i32* %865, !mcsema_real_eip !188
  %_load_rbp_ptr_277 = load i8*, i8** %_RBP_ptr_
  %_new_gep_278 = getelementptr i8, i8* %_load_rbp_ptr_277, i64 -60
  %_allin_new_bt_279 = bitcast i8* %_new_gep_278 to i64*
  %898 = ptrtoint i64* %_allin_new_bt_279 to i64, !mcsema_real_eip !189
  %899 = inttoptr i64 %898 to i32*, !mcsema_real_eip !189
  %900 = load i32, i32* %899, !mcsema_real_eip !189
  %901 = zext i32 %900 to i64, !mcsema_real_eip !189
  store i64 %901, i64* %XCX, !mcsema_real_eip !189
  %ECX_val.275 = load i32, i32* %ECX.12, !mcsema_real_eip !190
  %902 = lshr i32 %ECX_val.275, 3, !mcsema_real_eip !190
  %903 = and i32 %902, 1, !mcsema_real_eip !190
  %904 = icmp ne i32 %903, 0, !mcsema_real_eip !190
  %905 = load i1, i1* %CF, !mcsema_real_eip !190
  %906 = lshr i32 %902, 1, !mcsema_real_eip !190
  %907 = load i1, i1* %OF, !mcsema_real_eip !190
  %908 = and i32 %ECX_val.275, -2147483648, !mcsema_real_eip !190
  %909 = icmp ne i32 %908, 0, !mcsema_real_eip !190
  store i1 %904, i1* %CF, !mcsema_real_eip !190
  %910 = load i1, i1* %ZF, !mcsema_real_eip !190
  %911 = icmp eq i32 %906, 0, !mcsema_real_eip !190
  store i1 %911, i1* %ZF, !mcsema_real_eip !190
  %912 = load i1, i1* %SF, !mcsema_real_eip !190
  store i1 false, i1* %SF, !mcsema_real_eip !190
  %913 = load i1, i1* %PF, !mcsema_real_eip !190
  %914 = trunc i32 %906 to i8, !mcsema_real_eip !190
  %915 = call i8 @llvm.ctpop.i8(i8 %914), !mcsema_real_eip !190
  %916 = trunc i8 %915 to i1, !mcsema_real_eip !190
  %917 = xor i1 %916, true, !mcsema_real_eip !190
  store i1 %917, i1* %PF, !mcsema_real_eip !190
  %918 = zext i32 %906 to i64, !mcsema_real_eip !190
  store i64 %918, i64* %XCX, !mcsema_real_eip !190
  %ECX_val.278 = load i32, i32* %ECX.12, !mcsema_real_eip !191
  store i32 %ECX_val.278, i32* %899, !mcsema_real_eip !191
  %_load_rbp_ptr_283 = load i8*, i8** %_RBP_ptr_
  %_new_gep_284 = getelementptr i8, i8* %_load_rbp_ptr_283, i64 -60
  %_allin_new_bt_285 = bitcast i8* %_new_gep_284 to i64*
  %919 = ptrtoint i64* %_allin_new_bt_285 to i64, !mcsema_real_eip !192
  %920 = inttoptr i64 %919 to i32*, !mcsema_real_eip !192
  %921 = load i32, i32* %920, !mcsema_real_eip !192
  %922 = zext i32 %921 to i64, !mcsema_real_eip !192
  store i64 %922, i64* %XCX, !mcsema_real_eip !192
  %ECX_val.281 = load i32, i32* %ECX.12, !mcsema_real_eip !193
  %923 = sub i32 %ECX_val.281, 226, !mcsema_real_eip !193
  %924 = xor i32 %923, %ECX_val.281, !mcsema_real_eip !193
  %925 = xor i32 %924, 226, !mcsema_real_eip !193
  %926 = and i32 %925, 16, !mcsema_real_eip !193
  %927 = icmp ne i32 %926, 0, !mcsema_real_eip !193
  store i1 %927, i1* %AF, !mcsema_real_eip !193
  %928 = trunc i32 %923 to i8, !mcsema_real_eip !193
  %929 = call i8 @llvm.ctpop.i8(i8 %928), !mcsema_real_eip !193
  %930 = trunc i8 %929 to i1, !mcsema_real_eip !193
  %931 = xor i1 %930, true, !mcsema_real_eip !193
  store i1 %931, i1* %PF, !mcsema_real_eip !193
  %932 = icmp eq i32 %923, 0, !mcsema_real_eip !193
  store i1 %932, i1* %ZF, !mcsema_real_eip !193
  %933 = lshr i32 %923, 31, !mcsema_real_eip !193
  %934 = trunc i32 %933 to i1, !mcsema_real_eip !193
  store i1 %934, i1* %SF, !mcsema_real_eip !193
  %935 = icmp ult i32 %ECX_val.281, 226, !mcsema_real_eip !193
  store i1 %935, i1* %CF, !mcsema_real_eip !193
  %936 = xor i32 %ECX_val.281, 226, !mcsema_real_eip !193
  %937 = and i32 %936, %924, !mcsema_real_eip !193
  %938 = lshr i32 %937, 31, !mcsema_real_eip !193
  %939 = trunc i32 %938 to i1, !mcsema_real_eip !193
  store i1 %939, i1* %OF, !mcsema_real_eip !193
  %940 = zext i32 %923 to i64, !mcsema_real_eip !193
  store i64 %940, i64* %XCX, !mcsema_real_eip !193
  %ECX_val.284 = load i32, i32* %ECX.12, !mcsema_real_eip !194
  store i32 %ECX_val.284, i32* %920, !mcsema_real_eip !194
  %_load_rbp_ptr_289 = load i8*, i8** %_RBP_ptr_
  %_new_gep_290 = getelementptr i8, i8* %_load_rbp_ptr_289, i64 -60
  %_allin_new_bt_291 = bitcast i8* %_new_gep_290 to i64*
  %941 = ptrtoint i64* %_allin_new_bt_291 to i64, !mcsema_real_eip !195
  %942 = inttoptr i64 %941 to i32*, !mcsema_real_eip !195
  %943 = load i32, i32* %942, !mcsema_real_eip !195
  %944 = zext i32 %943 to i64, !mcsema_real_eip !195
  store i64 %944, i64* %XCX, !mcsema_real_eip !195
  %_new_gep_293 = getelementptr i8, i8* %_load_rbp_ptr_289, i64 -68
  %_allin_new_bt_294 = bitcast i8* %_new_gep_293 to i64*
  %EAX_val.288 = load i32, i32* %EAX.9, !mcsema_real_eip !196
  %945 = ptrtoint i64* %_allin_new_bt_294 to i64, !mcsema_real_eip !196
  %946 = inttoptr i64 %945 to i32*, !mcsema_real_eip !196
  store i32 %EAX_val.288, i32* %946, !mcsema_real_eip !196
  %ECX_val.290 = load i32, i32* %ECX.12, !mcsema_real_eip !197
  %947 = zext i32 %ECX_val.290 to i64, !mcsema_real_eip !197
  store i64 %947, i64* %XAX, !mcsema_real_eip !197
  %EDX_val.292 = load i32, i32* %EDX.64, !mcsema_real_eip !198
  store i1 false, i1* %CF, !mcsema_real_eip !198
  store i1 false, i1* %OF, !mcsema_real_eip !198
  store i1 false, i1* %SF, !mcsema_real_eip !198
  store i1 true, i1* %ZF, !mcsema_real_eip !198
  store i1 true, i1* %PF, !mcsema_real_eip !198
  store i1 undef, i1* %AF, !mcsema_real_eip !198
  store i64 0, i64* %XDX, !mcsema_real_eip !198
  %_load_rbp_ptr_295 = load i8*, i8** %_RBP_ptr_
  %_new_gep_296 = getelementptr i8, i8* %_load_rbp_ptr_295, i64 -68
  %_allin_new_bt_297 = bitcast i8* %_new_gep_296 to i64*
  %948 = ptrtoint i64* %_allin_new_bt_297 to i64, !mcsema_real_eip !199
  %949 = inttoptr i64 %948 to i32*, !mcsema_real_eip !199
  %950 = load i32, i32* %949, !mcsema_real_eip !199
  %951 = zext i32 %950 to i64, !mcsema_real_eip !199
  store i64 %951, i64* %XCX, !mcsema_real_eip !199
  %ECX_val.297 = load i32, i32* %ECX.12, !mcsema_real_eip !200
  %EAX_val.299 = load i32, i32* %EAX.9, !mcsema_real_eip !200
  %EDX_val.301 = load i32, i32* %EDX.64, !mcsema_real_eip !200
  %952 = zext i32 %EDX_val.301 to i64, !mcsema_real_eip !200
  %953 = shl i64 %952, 32, !mcsema_real_eip !200
  %954 = sext i32 %EAX_val.299 to i64, !mcsema_real_eip !200
  %955 = or i64 %953, %954, !mcsema_real_eip !200
  %956 = zext i32 %ECX_val.297 to i64, !mcsema_real_eip !200
  %957 = udiv i64 %955, %956, !mcsema_real_eip !200
  %958 = urem i64 %955, %956, !mcsema_real_eip !200
  %959 = trunc i64 %958 to i32, !mcsema_real_eip !200
  %960 = trunc i64 %957 to i32, !mcsema_real_eip !200
  %961 = zext i32 %959 to i64, !mcsema_real_eip !200
  store i64 %961, i64* %XDX, !mcsema_real_eip !200
  %962 = zext i32 %960 to i64, !mcsema_real_eip !200
  store i64 %962, i64* %XAX, !mcsema_real_eip !200
  %_new_gep_299 = getelementptr i8, i8* %_load_rbp_ptr_295, i64 -60
  %_allin_new_bt_300 = bitcast i8* %_new_gep_299 to i64*
  %EAX_val.304 = load i32, i32* %EAX.9, !mcsema_real_eip !201
  %963 = ptrtoint i64* %_allin_new_bt_300 to i64, !mcsema_real_eip !201
  %964 = inttoptr i64 %963 to i32*, !mcsema_real_eip !201
  store i32 %EAX_val.304, i32* %964, !mcsema_real_eip !201
  %_load_rbp_ptr_301 = load i8*, i8** %_RBP_ptr_
  %_new_gep_302 = getelementptr i8, i8* %_load_rbp_ptr_301, i64 -60
  %_allin_new_bt_303 = bitcast i8* %_new_gep_302 to i64*
  %965 = ptrtoint i64* %_allin_new_bt_303 to i64, !mcsema_real_eip !202
  %966 = inttoptr i64 %965 to i32*, !mcsema_real_eip !202
  %967 = load i32, i32* %966, !mcsema_real_eip !202
  %968 = sub i32 %967, 3, !mcsema_real_eip !202
  %969 = xor i32 %968, %967, !mcsema_real_eip !202
  %970 = xor i32 %969, 3, !mcsema_real_eip !202
  %971 = and i32 %970, 16, !mcsema_real_eip !202
  %972 = icmp ne i32 %971, 0, !mcsema_real_eip !202
  store i1 %972, i1* %AF, !mcsema_real_eip !202
  %973 = trunc i32 %968 to i8, !mcsema_real_eip !202
  %974 = call i8 @llvm.ctpop.i8(i8 %973), !mcsema_real_eip !202
  %975 = trunc i8 %974 to i1, !mcsema_real_eip !202
  %976 = xor i1 %975, true, !mcsema_real_eip !202
  store i1 %976, i1* %PF, !mcsema_real_eip !202
  %977 = icmp eq i32 %968, 0, !mcsema_real_eip !202
  store i1 %977, i1* %ZF, !mcsema_real_eip !202
  %978 = lshr i32 %968, 31, !mcsema_real_eip !202
  %979 = trunc i32 %978 to i1, !mcsema_real_eip !202
  store i1 %979, i1* %SF, !mcsema_real_eip !202
  %980 = icmp ult i32 %967, 3, !mcsema_real_eip !202
  store i1 %980, i1* %CF, !mcsema_real_eip !202
  %981 = xor i32 %967, 3, !mcsema_real_eip !202
  %982 = and i32 %981, %969, !mcsema_real_eip !202
  %983 = lshr i32 %982, 31, !mcsema_real_eip !202
  %984 = trunc i32 %983 to i1, !mcsema_real_eip !202
  store i1 %984, i1* %OF, !mcsema_real_eip !202
  br i1 %977, label %block_0x343, label %block_0x338, !mcsema_real_eip !203

block_0x338:                                      ; preds = %block_0x2f6
  %985 = load i32, i32* %966, !mcsema_real_eip !204
  %986 = zext i32 %985 to i64, !mcsema_real_eip !204
  store i64 %986, i64* %XAX, !mcsema_real_eip !204
  %_new_gep_308 = getelementptr i8, i8* %_load_rbp_ptr_301, i64 -4
  %_allin_new_bt_309 = bitcast i8* %_new_gep_308 to i64*
  %EAX_val.309 = load i32, i32* %EAX.9, !mcsema_real_eip !205
  %987 = ptrtoint i64* %_allin_new_bt_309 to i64, !mcsema_real_eip !205
  %988 = inttoptr i64 %987 to i32*, !mcsema_real_eip !205
  store i32 %EAX_val.309, i32* %988, !mcsema_real_eip !205
  br label %block_0x417, !mcsema_real_eip !206

block_0x343:                                      ; preds = %block_0x2f6
  store i64 4, i64* %XDX, !mcsema_real_eip !207
  %_new_gep_311 = getelementptr i8, i8* %_load_rbp_ptr_301, i64 -20
  %_allin_new_bt_312 = bitcast i8* %_new_gep_311 to i64*
  %989 = ptrtoint i64* %_allin_new_bt_312 to i64, !mcsema_real_eip !208
  %990 = inttoptr i64 %989 to i32*, !mcsema_real_eip !208
  %991 = load i32, i32* %990, !mcsema_real_eip !208
  %992 = zext i32 %991 to i64, !mcsema_real_eip !208
  store i64 %992, i64* %XDI, !mcsema_real_eip !208
  %_new_gep_314 = getelementptr i8, i8* %_load_rbp_ptr_301, i64 -16
  %_allin_new_bt_315 = bitcast i8* %_new_gep_314 to i64*
  %993 = load i64, i64* %_allin_new_bt_315, !mcsema_real_eip !209
  store i64 %993, i64* %XAX, !mcsema_real_eip !209
  %994 = add i64 28, %993, !mcsema_real_eip !210
  %995 = xor i64 %994, %993, !mcsema_real_eip !210
  %996 = xor i64 %995, 28, !mcsema_real_eip !210
  %997 = and i64 %996, 16, !mcsema_real_eip !210
  %998 = icmp ne i64 %997, 0, !mcsema_real_eip !210
  store i1 %998, i1* %AF, !mcsema_real_eip !210
  %999 = lshr i64 %994, 63, !mcsema_real_eip !210
  %1000 = trunc i64 %999 to i1, !mcsema_real_eip !210
  store i1 %1000, i1* %SF, !mcsema_real_eip !210
  %1001 = icmp eq i64 %994, 0, !mcsema_real_eip !210
  store i1 %1001, i1* %ZF, !mcsema_real_eip !210
  %1002 = xor i64 %993, 28, !mcsema_real_eip !210
  %1003 = xor i64 %1002, -1, !mcsema_real_eip !210
  %1004 = and i64 %1003, %995, !mcsema_real_eip !210
  %1005 = lshr i64 %1004, 63, !mcsema_real_eip !210
  %1006 = and i64 %1005, 1, !mcsema_real_eip !210
  %1007 = trunc i64 %1006 to i1, !mcsema_real_eip !210
  store i1 %1007, i1* %OF, !mcsema_real_eip !210
  %1008 = trunc i64 %994 to i8, !mcsema_real_eip !210
  %1009 = call i8 @llvm.ctpop.i8(i8 %1008), !mcsema_real_eip !210
  %1010 = trunc i8 %1009 to i1, !mcsema_real_eip !210
  %1011 = xor i1 %1010, true, !mcsema_real_eip !210
  store i1 %1011, i1* %PF, !mcsema_real_eip !210
  %1012 = icmp ult i64 %994, %993, !mcsema_real_eip !210
  store i1 %1012, i1* %CF, !mcsema_real_eip !210
  store i64 %994, i64* %XAX, !mcsema_real_eip !210
  store i64 %994, i64* %XSI, !mcsema_real_eip !211
  %_load_rsp_ptr_316 = load i8*, i8** %_RSP_ptr_
  %RSP_val.317 = load i64, i64* %XSP, !mcsema_real_eip !212
  %_new_gep_317 = getelementptr i8, i8* %_load_rsp_ptr_316, i64 -8
  %1013 = sub i64 %RSP_val.317, 8, !mcsema_real_eip !212
  %_allin_new_bt_318 = bitcast i8* %_new_gep_317 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_318, !mcsema_real_eip !212
  store volatile i8* %_new_gep_317, i8** %_RSP_ptr_
  store i64 %1013, i64* %XSP, !mcsema_real_eip !212
  %1014 = call x86_64_sysvcc i64 @_read_bytes(i64 %992, i64 %994, i64 4)
  %_rsp_fix_432 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_433 = getelementptr i8, i8* %_rsp_fix_432, i64 8
  store i8* %_gep_fix_433, i8** %_RSP_ptr_
  store i64 %1014, i64* %XAX, !mcsema_real_eip !212
  %_load_rbp_ptr_319 = load i8*, i8** %_RBP_ptr_
  %_new_gep_320 = getelementptr i8, i8* %_load_rbp_ptr_319, i64 -64
  %_allin_new_bt_321 = bitcast i8* %_new_gep_320 to i64*
  %EAX_val.320 = load i32, i32* %EAX.9, !mcsema_real_eip !213
  %1015 = ptrtoint i64* %_allin_new_bt_321 to i64, !mcsema_real_eip !213
  %1016 = inttoptr i64 %1015 to i32*, !mcsema_real_eip !213
  store i32 %EAX_val.320, i32* %1016, !mcsema_real_eip !213
  %_load_rbp_ptr_322 = load i8*, i8** %_RBP_ptr_
  %_new_gep_323 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -16
  %_allin_new_bt_324 = bitcast i8* %_new_gep_323 to i64*
  %1017 = load i64, i64* %_allin_new_bt_324, !mcsema_real_eip !214
  store i64 %1017, i64* %XSI, !mcsema_real_eip !214
  %1018 = add i64 %1017, 28, !mcsema_real_eip !215
  %1019 = inttoptr i64 %1018 to i64*, !mcsema_real_eip !215
  %1020 = inttoptr i64 %1018 to i8*, !mcsema_real_eip !215
  %1021 = load i8, i8* %1020, !mcsema_real_eip !215
  %1022 = sext i8 %1021 to i32, !mcsema_real_eip !215
  %1023 = zext i32 %1022 to i64, !mcsema_real_eip !215
  store i64 %1023, i64* %XAX, !mcsema_real_eip !215
  %EAX_val.324 = load i32, i32* %EAX.9, !mcsema_real_eip !216
  %1024 = sub i32 %EAX_val.324, 100, !mcsema_real_eip !216
  %1025 = xor i32 %1024, %EAX_val.324, !mcsema_real_eip !216
  %1026 = xor i32 %1025, 100, !mcsema_real_eip !216
  %1027 = and i32 %1026, 16, !mcsema_real_eip !216
  %1028 = icmp ne i32 %1027, 0, !mcsema_real_eip !216
  store i1 %1028, i1* %AF, !mcsema_real_eip !216
  %1029 = trunc i32 %1024 to i8, !mcsema_real_eip !216
  %1030 = call i8 @llvm.ctpop.i8(i8 %1029), !mcsema_real_eip !216
  %1031 = trunc i8 %1030 to i1, !mcsema_real_eip !216
  %1032 = xor i1 %1031, true, !mcsema_real_eip !216
  store i1 %1032, i1* %PF, !mcsema_real_eip !216
  %1033 = icmp eq i32 %1024, 0, !mcsema_real_eip !216
  store i1 %1033, i1* %ZF, !mcsema_real_eip !216
  %1034 = lshr i32 %1024, 31, !mcsema_real_eip !216
  %1035 = trunc i32 %1034 to i1, !mcsema_real_eip !216
  store i1 %1035, i1* %SF, !mcsema_real_eip !216
  %1036 = icmp ult i32 %EAX_val.324, 100, !mcsema_real_eip !216
  store i1 %1036, i1* %CF, !mcsema_real_eip !216
  %1037 = xor i32 %EAX_val.324, 100, !mcsema_real_eip !216
  %1038 = and i32 %1037, %1025, !mcsema_real_eip !216
  %1039 = lshr i32 %1038, 31, !mcsema_real_eip !216
  %1040 = trunc i32 %1039 to i1, !mcsema_real_eip !216
  store i1 %1040, i1* %OF, !mcsema_real_eip !216
  %1041 = icmp eq i1 %1033, false, !mcsema_real_eip !217
  br i1 %1041, label %block_0x38e, label %block_0x36f, !mcsema_real_eip !217

block_0x36f:                                      ; preds = %block_0x343
  %1042 = load i64, i64* %_allin_new_bt_324, !mcsema_real_eip !218
  store i64 %1042, i64* %XAX, !mcsema_real_eip !218
  %1043 = add i64 %1042, 29, !mcsema_real_eip !219
  %1044 = inttoptr i64 %1043 to i64*, !mcsema_real_eip !219
  %1045 = inttoptr i64 %1043 to i8*, !mcsema_real_eip !219
  %1046 = load i8, i8* %1045, !mcsema_real_eip !219
  %1047 = sext i8 %1046 to i32, !mcsema_real_eip !219
  %1048 = zext i32 %1047 to i64, !mcsema_real_eip !219
  store i64 %1048, i64* %XCX, !mcsema_real_eip !219
  %ECX_val.328 = load i32, i32* %ECX.12, !mcsema_real_eip !220
  %1049 = sub i32 %ECX_val.328, 100, !mcsema_real_eip !220
  %1050 = xor i32 %1049, %ECX_val.328, !mcsema_real_eip !220
  %1051 = xor i32 %1050, 100, !mcsema_real_eip !220
  %1052 = and i32 %1051, 16, !mcsema_real_eip !220
  %1053 = icmp ne i32 %1052, 0, !mcsema_real_eip !220
  store i1 %1053, i1* %AF, !mcsema_real_eip !220
  %1054 = trunc i32 %1049 to i8, !mcsema_real_eip !220
  %1055 = call i8 @llvm.ctpop.i8(i8 %1054), !mcsema_real_eip !220
  %1056 = trunc i8 %1055 to i1, !mcsema_real_eip !220
  %1057 = xor i1 %1056, true, !mcsema_real_eip !220
  store i1 %1057, i1* %PF, !mcsema_real_eip !220
  %1058 = icmp eq i32 %1049, 0, !mcsema_real_eip !220
  store i1 %1058, i1* %ZF, !mcsema_real_eip !220
  %1059 = lshr i32 %1049, 31, !mcsema_real_eip !220
  %1060 = trunc i32 %1059 to i1, !mcsema_real_eip !220
  store i1 %1060, i1* %SF, !mcsema_real_eip !220
  %1061 = icmp ult i32 %ECX_val.328, 100, !mcsema_real_eip !220
  store i1 %1061, i1* %CF, !mcsema_real_eip !220
  %1062 = xor i32 %ECX_val.328, 100, !mcsema_real_eip !220
  %1063 = and i32 %1062, %1050, !mcsema_real_eip !220
  %1064 = lshr i32 %1063, 31, !mcsema_real_eip !220
  %1065 = trunc i32 %1064 to i1, !mcsema_real_eip !220
  store i1 %1065, i1* %OF, !mcsema_real_eip !220
  %1066 = icmp eq i1 %1058, false, !mcsema_real_eip !221
  br i1 %1066, label %block_0x38e, label %block_0x380, !mcsema_real_eip !221

block_0x380:                                      ; preds = %block_0x36f
  %_new_gep_329 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -64
  %_allin_new_bt_330 = bitcast i8* %_new_gep_329 to i64*
  %1067 = ptrtoint i64* %_allin_new_bt_330 to i64, !mcsema_real_eip !222
  %1068 = inttoptr i64 %1067 to i32*, !mcsema_real_eip !222
  %1069 = load i32, i32* %1068, !mcsema_real_eip !222
  %1070 = zext i32 %1069 to i64, !mcsema_real_eip !222
  store i64 %1070, i64* %XAX, !mcsema_real_eip !222
  %_new_gep_332 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -20
  %_allin_new_bt_333 = bitcast i8* %_new_gep_332 to i64*
  %1071 = ptrtoint i64* %_allin_new_bt_333 to i64, !mcsema_real_eip !223
  %1072 = inttoptr i64 %1071 to i32*, !mcsema_real_eip !223
  %1073 = load i32, i32* %1072, !mcsema_real_eip !223
  %EAX_val.332 = load i32, i32* %EAX.9, !mcsema_real_eip !223
  %1074 = xor i32 %1073, %EAX_val.332, !mcsema_real_eip !223
  store i1 false, i1* %CF, !mcsema_real_eip !223
  store i1 false, i1* %OF, !mcsema_real_eip !223
  %1075 = lshr i32 %1074, 31, !mcsema_real_eip !223
  %1076 = trunc i32 %1075 to i1, !mcsema_real_eip !223
  store i1 %1076, i1* %SF, !mcsema_real_eip !223
  %1077 = icmp eq i32 %1074, 0, !mcsema_real_eip !223
  store i1 %1077, i1* %ZF, !mcsema_real_eip !223
  %1078 = trunc i32 %1074 to i8, !mcsema_real_eip !223
  %1079 = call i8 @llvm.ctpop.i8(i8 %1078), !mcsema_real_eip !223
  %1080 = trunc i8 %1079 to i1, !mcsema_real_eip !223
  %1081 = xor i1 %1080, true, !mcsema_real_eip !223
  store i1 %1081, i1* %PF, !mcsema_real_eip !223
  store i1 undef, i1* %AF, !mcsema_real_eip !223
  %1082 = zext i32 %1074 to i64, !mcsema_real_eip !223
  store i64 %1082, i64* %XAX, !mcsema_real_eip !223
  %EAX_val.335 = load i32, i32* %EAX.9, !mcsema_real_eip !224
  store i32 %EAX_val.335, i32* %1072, !mcsema_real_eip !224
  br label %block_0x411, !mcsema_real_eip !225

block_0x38e:                                      ; preds = %block_0x36f, %block_0x343
  %1083 = load i64, i64* %_allin_new_bt_324, !mcsema_real_eip !226
  store i64 %1083, i64* %XAX, !mcsema_real_eip !226
  %1084 = add i64 %1083, 28, !mcsema_real_eip !227
  %1085 = inttoptr i64 %1084 to i64*, !mcsema_real_eip !227
  %1086 = inttoptr i64 %1084 to i8*, !mcsema_real_eip !227
  %1087 = load i8, i8* %1086, !mcsema_real_eip !227
  %1088 = sext i8 %1087 to i32, !mcsema_real_eip !227
  %1089 = zext i32 %1088 to i64, !mcsema_real_eip !227
  store i64 %1089, i64* %XCX, !mcsema_real_eip !227
  %1090 = load i64, i64* %_allin_new_bt_324, !mcsema_real_eip !228
  store i64 %1090, i64* %XAX, !mcsema_real_eip !228
  %1091 = add i64 %1090, 29, !mcsema_real_eip !229
  %1092 = inttoptr i64 %1091 to i64*, !mcsema_real_eip !229
  %1093 = inttoptr i64 %1091 to i8*, !mcsema_real_eip !229
  %1094 = load i8, i8* %1093, !mcsema_real_eip !229
  %1095 = sext i8 %1094 to i32, !mcsema_real_eip !229
  %1096 = zext i32 %1095 to i64, !mcsema_real_eip !229
  store i64 %1096, i64* %XDX, !mcsema_real_eip !229
  %ECX_val.341 = load i32, i32* %ECX.12, !mcsema_real_eip !230
  %EDX_val.343 = load i32, i32* %EDX.64, !mcsema_real_eip !230
  %1097 = sub i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  %1098 = xor i32 %1097, %ECX_val.341, !mcsema_real_eip !230
  %1099 = xor i32 %1098, %EDX_val.343, !mcsema_real_eip !230
  %1100 = and i32 %1099, 16, !mcsema_real_eip !230
  %1101 = icmp ne i32 %1100, 0, !mcsema_real_eip !230
  store i1 %1101, i1* %AF, !mcsema_real_eip !230
  %1102 = trunc i32 %1097 to i8, !mcsema_real_eip !230
  %1103 = call i8 @llvm.ctpop.i8(i8 %1102), !mcsema_real_eip !230
  %1104 = trunc i8 %1103 to i1, !mcsema_real_eip !230
  %1105 = xor i1 %1104, true, !mcsema_real_eip !230
  store i1 %1105, i1* %PF, !mcsema_real_eip !230
  %1106 = icmp eq i32 %1097, 0, !mcsema_real_eip !230
  store i1 %1106, i1* %ZF, !mcsema_real_eip !230
  %1107 = lshr i32 %1097, 31, !mcsema_real_eip !230
  %1108 = trunc i32 %1107 to i1, !mcsema_real_eip !230
  store i1 %1108, i1* %SF, !mcsema_real_eip !230
  %1109 = icmp ult i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  store i1 %1109, i1* %CF, !mcsema_real_eip !230
  %1110 = xor i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  %1111 = and i32 %1110, %1098, !mcsema_real_eip !230
  %1112 = lshr i32 %1111, 31, !mcsema_real_eip !230
  %1113 = trunc i32 %1112 to i1, !mcsema_real_eip !230
  store i1 %1113, i1* %OF, !mcsema_real_eip !230
  %1114 = icmp eq i1 %1106, false, !mcsema_real_eip !231
  br i1 %1114, label %block_0x406, label %block_0x3a6, !mcsema_real_eip !231

block_0x3a6:                                      ; preds = %block_0x38e
  store i64 15, i64* %XAX, !mcsema_real_eip !232
  %1115 = load i64, i64* %_allin_new_bt_324, !mcsema_real_eip !233
  store i64 %1115, i64* %XCX, !mcsema_real_eip !233
  %1116 = add i64 %1115, 31, !mcsema_real_eip !234
  %1117 = inttoptr i64 %1116 to i64*, !mcsema_real_eip !234
  %1118 = inttoptr i64 %1116 to i8*, !mcsema_real_eip !234
  %1119 = load i8, i8* %1118, !mcsema_real_eip !234
  %1120 = sext i8 %1119 to i32, !mcsema_real_eip !234
  %1121 = zext i32 %1120 to i64, !mcsema_real_eip !234
  store i64 %1121, i64* %XDX, !mcsema_real_eip !234
  %1122 = load i64, i64* %_allin_new_bt_324, !mcsema_real_eip !235
  store i64 %1122, i64* %XCX, !mcsema_real_eip !235
  %1123 = add i64 %1122, 30, !mcsema_real_eip !236
  %1124 = inttoptr i64 %1123 to i64*, !mcsema_real_eip !236
  %1125 = inttoptr i64 %1123 to i8*, !mcsema_real_eip !236
  %1126 = load i8, i8* %1125, !mcsema_real_eip !236
  %1127 = sext i8 %1126 to i32, !mcsema_real_eip !236
  %1128 = zext i32 %1127 to i64, !mcsema_real_eip !236
  store i64 %1128, i64* %XSI, !mcsema_real_eip !236
  %EDX_val.349 = load i32, i32* %EDX.64, !mcsema_real_eip !237
  %ESI.350 = bitcast i64* %XSI to i32*, !mcsema_real_eip !237
  %ESI_val.351 = load i32, i32* %ESI.350, !mcsema_real_eip !237
  %1129 = sub i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  %1130 = xor i32 %1129, %EDX_val.349, !mcsema_real_eip !237
  %1131 = xor i32 %1130, %ESI_val.351, !mcsema_real_eip !237
  %1132 = and i32 %1131, 16, !mcsema_real_eip !237
  %1133 = icmp ne i32 %1132, 0, !mcsema_real_eip !237
  store i1 %1133, i1* %AF, !mcsema_real_eip !237
  %1134 = trunc i32 %1129 to i8, !mcsema_real_eip !237
  %1135 = call i8 @llvm.ctpop.i8(i8 %1134), !mcsema_real_eip !237
  %1136 = trunc i8 %1135 to i1, !mcsema_real_eip !237
  %1137 = xor i1 %1136, true, !mcsema_real_eip !237
  store i1 %1137, i1* %PF, !mcsema_real_eip !237
  %1138 = icmp eq i32 %1129, 0, !mcsema_real_eip !237
  store i1 %1138, i1* %ZF, !mcsema_real_eip !237
  %1139 = lshr i32 %1129, 31, !mcsema_real_eip !237
  %1140 = trunc i32 %1139 to i1, !mcsema_real_eip !237
  store i1 %1140, i1* %SF, !mcsema_real_eip !237
  %1141 = icmp ult i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  store i1 %1141, i1* %CF, !mcsema_real_eip !237
  %1142 = xor i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  %1143 = and i32 %1142, %1130, !mcsema_real_eip !237
  %1144 = lshr i32 %1143, 31, !mcsema_real_eip !237
  %1145 = trunc i32 %1144 to i1, !mcsema_real_eip !237
  store i1 %1145, i1* %OF, !mcsema_real_eip !237
  %1146 = zext i32 %1129 to i64, !mcsema_real_eip !237
  store i64 %1146, i64* %XDX, !mcsema_real_eip !237
  %EAX_val.353 = load i32, i32* %EAX.9, !mcsema_real_eip !238
  %EDX_val.355 = load i32, i32* %EDX.64, !mcsema_real_eip !238
  %1147 = sub i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  %1148 = xor i32 %1147, %EAX_val.353, !mcsema_real_eip !238
  %1149 = xor i32 %1148, %EDX_val.355, !mcsema_real_eip !238
  %1150 = and i32 %1149, 16, !mcsema_real_eip !238
  %1151 = icmp ne i32 %1150, 0, !mcsema_real_eip !238
  store i1 %1151, i1* %AF, !mcsema_real_eip !238
  %1152 = trunc i32 %1147 to i8, !mcsema_real_eip !238
  %1153 = call i8 @llvm.ctpop.i8(i8 %1152), !mcsema_real_eip !238
  %1154 = trunc i8 %1153 to i1, !mcsema_real_eip !238
  %1155 = xor i1 %1154, true, !mcsema_real_eip !238
  store i1 %1155, i1* %PF, !mcsema_real_eip !238
  %1156 = icmp eq i32 %1147, 0, !mcsema_real_eip !238
  store i1 %1156, i1* %ZF, !mcsema_real_eip !238
  %1157 = lshr i32 %1147, 31, !mcsema_real_eip !238
  %1158 = trunc i32 %1157 to i1, !mcsema_real_eip !238
  store i1 %1158, i1* %SF, !mcsema_real_eip !238
  %1159 = icmp ult i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  store i1 %1159, i1* %CF, !mcsema_real_eip !238
  %1160 = xor i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  %1161 = and i32 %1160, %1148, !mcsema_real_eip !238
  %1162 = lshr i32 %1161, 31, !mcsema_real_eip !238
  %1163 = trunc i32 %1162 to i1, !mcsema_real_eip !238
  store i1 %1163, i1* %OF, !mcsema_real_eip !238
  %1164 = zext i32 %1147 to i64, !mcsema_real_eip !238
  store i64 %1164, i64* %XAX, !mcsema_real_eip !238
  %_new_gep_350 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -20
  %_allin_new_bt_351 = bitcast i8* %_new_gep_350 to i64*
  %1165 = ptrtoint i64* %_allin_new_bt_351 to i64, !mcsema_real_eip !239
  %1166 = inttoptr i64 %1165 to i32*, !mcsema_real_eip !239
  %1167 = load i32, i32* %1166, !mcsema_real_eip !239
  %EAX_val.358 = load i32, i32* %EAX.9, !mcsema_real_eip !239
  %1168 = add i32 %EAX_val.358, %1167, !mcsema_real_eip !239
  %1169 = xor i32 %1168, %1167, !mcsema_real_eip !239
  %1170 = xor i32 %1169, %EAX_val.358, !mcsema_real_eip !239
  %1171 = and i32 %1170, 16, !mcsema_real_eip !239
  %1172 = icmp ne i32 %1171, 0, !mcsema_real_eip !239
  store i1 %1172, i1* %AF, !mcsema_real_eip !239
  %1173 = lshr i32 %1168, 31, !mcsema_real_eip !239
  %1174 = trunc i32 %1173 to i1, !mcsema_real_eip !239
  store i1 %1174, i1* %SF, !mcsema_real_eip !239
  %1175 = icmp eq i32 %1168, 0, !mcsema_real_eip !239
  store i1 %1175, i1* %ZF, !mcsema_real_eip !239
  %1176 = xor i32 %1167, %EAX_val.358, !mcsema_real_eip !239
  %1177 = xor i32 %1176, -1, !mcsema_real_eip !239
  %1178 = and i32 %1177, %1169, !mcsema_real_eip !239
  %1179 = lshr i32 %1178, 31, !mcsema_real_eip !239
  %1180 = and i32 %1179, 1, !mcsema_real_eip !239
  %1181 = trunc i32 %1180 to i1, !mcsema_real_eip !239
  store i1 %1181, i1* %OF, !mcsema_real_eip !239
  %1182 = trunc i32 %1168 to i8, !mcsema_real_eip !239
  %1183 = call i8 @llvm.ctpop.i8(i8 %1182), !mcsema_real_eip !239
  %1184 = trunc i8 %1183 to i1, !mcsema_real_eip !239
  %1185 = xor i1 %1184, true, !mcsema_real_eip !239
  store i1 %1185, i1* %PF, !mcsema_real_eip !239
  %1186 = icmp ult i32 %1168, %1167, !mcsema_real_eip !239
  store i1 %1186, i1* %CF, !mcsema_real_eip !239
  %1187 = zext i32 %1168 to i64, !mcsema_real_eip !239
  store i64 %1187, i64* %XAX, !mcsema_real_eip !239
  %EAX_val.361 = load i32, i32* %EAX.9, !mcsema_real_eip !240
  store i32 %EAX_val.361, i32* %1166, !mcsema_real_eip !240
  %_load_rbp_ptr_355 = load i8*, i8** %_RBP_ptr_
  %_new_gep_356 = getelementptr i8, i8* %_load_rbp_ptr_355, i64 -16
  %_allin_new_bt_357 = bitcast i8* %_new_gep_356 to i64*
  %1188 = load i64, i64* %_allin_new_bt_357, !mcsema_real_eip !241
  store i64 %1188, i64* %XCX, !mcsema_real_eip !241
  %1189 = add i64 %1188, 28, !mcsema_real_eip !242
  %1190 = inttoptr i64 %1189 to i64*, !mcsema_real_eip !242
  %1191 = inttoptr i64 %1189 to i8*, !mcsema_real_eip !242
  %1192 = load i8, i8* %1191, !mcsema_real_eip !242
  %1193 = zext i8 %1192 to i32, !mcsema_real_eip !242
  %1194 = zext i32 %1193 to i64, !mcsema_real_eip !242
  store i64 %1194, i64* %XDI, !mcsema_real_eip !242
  %_load_rsp_ptr_358 = load i8*, i8** %_RSP_ptr_
  %RSP_val.365 = load i64, i64* %XSP, !mcsema_real_eip !243
  %_new_gep_359 = getelementptr i8, i8* %_load_rsp_ptr_358, i64 -8
  %1195 = sub i64 %RSP_val.365, 8, !mcsema_real_eip !243
  %_allin_new_bt_360 = bitcast i8* %_new_gep_359 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_360, !mcsema_real_eip !243
  store volatile i8* %_new_gep_359, i8** %_RSP_ptr_
  store i64 %1195, i64* %XSP, !mcsema_real_eip !243
  %1196 = call x86_64_sysvcc i64 @_to_byte(i64 %1194)
  %_rsp_fix_434 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_435 = getelementptr i8, i8* %_rsp_fix_434, i64 8
  store i8* %_gep_fix_435, i8** %_RSP_ptr_
  store i64 %1196, i64* %XAX, !mcsema_real_eip !243
  %_load_rbp_ptr_361 = load i8*, i8** %_RBP_ptr_
  %_new_gep_362 = getelementptr i8, i8* %_load_rbp_ptr_361, i64 -20
  %_allin_new_bt_363 = bitcast i8* %_new_gep_362 to i64*
  %1197 = ptrtoint i64* %_allin_new_bt_363 to i64, !mcsema_real_eip !244
  %1198 = inttoptr i64 %1197 to i32*, !mcsema_real_eip !244
  %1199 = load i32, i32* %1198, !mcsema_real_eip !244
  %1200 = zext i32 %1199 to i64, !mcsema_real_eip !244
  store i64 %1200, i64* %XDX, !mcsema_real_eip !244
  %EDX_val.368 = load i32, i32* %EDX.64, !mcsema_real_eip !245
  %EAX_val.370 = load i32, i32* %EAX.9, !mcsema_real_eip !245
  %1201 = sub i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  %1202 = xor i32 %1201, %EDX_val.368, !mcsema_real_eip !245
  %1203 = xor i32 %1202, %EAX_val.370, !mcsema_real_eip !245
  %1204 = and i32 %1203, 16, !mcsema_real_eip !245
  %1205 = icmp ne i32 %1204, 0, !mcsema_real_eip !245
  store i1 %1205, i1* %AF, !mcsema_real_eip !245
  %1206 = trunc i32 %1201 to i8, !mcsema_real_eip !245
  %1207 = call i8 @llvm.ctpop.i8(i8 %1206), !mcsema_real_eip !245
  %1208 = trunc i8 %1207 to i1, !mcsema_real_eip !245
  %1209 = xor i1 %1208, true, !mcsema_real_eip !245
  store i1 %1209, i1* %PF, !mcsema_real_eip !245
  %1210 = icmp eq i32 %1201, 0, !mcsema_real_eip !245
  store i1 %1210, i1* %ZF, !mcsema_real_eip !245
  %1211 = lshr i32 %1201, 31, !mcsema_real_eip !245
  %1212 = trunc i32 %1211 to i1, !mcsema_real_eip !245
  store i1 %1212, i1* %SF, !mcsema_real_eip !245
  %1213 = icmp ult i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  store i1 %1213, i1* %CF, !mcsema_real_eip !245
  %1214 = xor i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  %1215 = and i32 %1214, %1202, !mcsema_real_eip !245
  %1216 = lshr i32 %1215, 31, !mcsema_real_eip !245
  %1217 = trunc i32 %1216 to i1, !mcsema_real_eip !245
  store i1 %1217, i1* %OF, !mcsema_real_eip !245
  %1218 = zext i32 %1201 to i64, !mcsema_real_eip !245
  store i64 %1218, i64* %XDX, !mcsema_real_eip !245
  %EDX_val.373 = load i32, i32* %EDX.64, !mcsema_real_eip !246
  store i32 %EDX_val.373, i32* %1198, !mcsema_real_eip !246
  %_load_rbp_ptr_367 = load i8*, i8** %_RBP_ptr_
  %_new_gep_368 = getelementptr i8, i8* %_load_rbp_ptr_367, i64 -20
  %_allin_new_bt_369 = bitcast i8* %_new_gep_368 to i64*
  %1219 = ptrtoint i64* %_allin_new_bt_369 to i64, !mcsema_real_eip !247
  %1220 = inttoptr i64 %1219 to i32*, !mcsema_real_eip !247
  %1221 = load i32, i32* %1220, !mcsema_real_eip !247
  store i1 false, i1* %AF, !mcsema_real_eip !247
  %1222 = trunc i32 %1221 to i8, !mcsema_real_eip !247
  %1223 = call i8 @llvm.ctpop.i8(i8 %1222), !mcsema_real_eip !247
  %1224 = trunc i8 %1223 to i1, !mcsema_real_eip !247
  %1225 = xor i1 %1224, true, !mcsema_real_eip !247
  store i1 %1225, i1* %PF, !mcsema_real_eip !247
  %1226 = icmp eq i32 %1221, 0, !mcsema_real_eip !247
  store i1 %1226, i1* %ZF, !mcsema_real_eip !247
  %1227 = lshr i32 %1221, 31, !mcsema_real_eip !247
  %1228 = trunc i32 %1227 to i1, !mcsema_real_eip !247
  store i1 %1228, i1* %SF, !mcsema_real_eip !247
  store i1 false, i1* %CF, !mcsema_real_eip !247
  store i1 false, i1* %OF, !mcsema_real_eip !247
  %1229 = icmp eq i1 %1226, false, !mcsema_real_eip !248
  br i1 %1229, label %block_0x401, label %block_0x3e4, !mcsema_real_eip !248

block_0x3e4:                                      ; preds = %block_0x3a6
  %_new_gep_371 = getelementptr i8, i8* %_load_rbp_ptr_367, i64 -16
  %_allin_new_bt_372 = bitcast i8* %_new_gep_371 to i64*
  %1230 = load i64, i64* %_allin_new_bt_372, !mcsema_real_eip !249
  store i64 %1230, i64* %XAX, !mcsema_real_eip !249
  %1231 = add i64 %1230, 31, !mcsema_real_eip !250
  %1232 = inttoptr i64 %1231 to i64*, !mcsema_real_eip !250
  %1233 = inttoptr i64 %1231 to i8*, !mcsema_real_eip !250
  %1234 = load i8, i8* %1233, !mcsema_real_eip !250
  %1235 = zext i8 %1234 to i32, !mcsema_real_eip !250
  %1236 = zext i32 %1235 to i64, !mcsema_real_eip !250
  store i64 %1236, i64* %XDI, !mcsema_real_eip !250
  %_load_rsp_ptr_373 = load i8*, i8** %_RSP_ptr_
  %RSP_val.378 = load i64, i64* %XSP, !mcsema_real_eip !251
  %_new_gep_374 = getelementptr i8, i8* %_load_rsp_ptr_373, i64 -8
  %1237 = sub i64 %RSP_val.378, 8, !mcsema_real_eip !251
  %_allin_new_bt_375 = bitcast i8* %_new_gep_374 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_375, !mcsema_real_eip !251
  store volatile i8* %_new_gep_374, i8** %_RSP_ptr_
  store i64 %1237, i64* %XSP, !mcsema_real_eip !251
  %1238 = call x86_64_sysvcc i64 @_to_byte(i64 %1236)
  %_rsp_fix_436 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_437 = getelementptr i8, i8* %_rsp_fix_436, i64 8
  store i8* %_gep_fix_437, i8** %_RSP_ptr_
  store i64 %1238, i64* %XAX, !mcsema_real_eip !251
  %EAX_val.380 = load i32, i32* %EAX.9, !mcsema_real_eip !252
  %1239 = sub i32 %EAX_val.380, 4, !mcsema_real_eip !252
  %1240 = xor i32 %1239, %EAX_val.380, !mcsema_real_eip !252
  %1241 = xor i32 %1240, 4, !mcsema_real_eip !252
  %1242 = and i32 %1241, 16, !mcsema_real_eip !252
  %1243 = icmp ne i32 %1242, 0, !mcsema_real_eip !252
  store i1 %1243, i1* %AF, !mcsema_real_eip !252
  %1244 = trunc i32 %1239 to i8, !mcsema_real_eip !252
  %1245 = call i8 @llvm.ctpop.i8(i8 %1244), !mcsema_real_eip !252
  %1246 = trunc i8 %1245 to i1, !mcsema_real_eip !252
  %1247 = xor i1 %1246, true, !mcsema_real_eip !252
  store i1 %1247, i1* %PF, !mcsema_real_eip !252
  %1248 = icmp eq i32 %1239, 0, !mcsema_real_eip !252
  store i1 %1248, i1* %ZF, !mcsema_real_eip !252
  %1249 = lshr i32 %1239, 31, !mcsema_real_eip !252
  %1250 = trunc i32 %1249 to i1, !mcsema_real_eip !252
  store i1 %1250, i1* %SF, !mcsema_real_eip !252
  %1251 = icmp ult i32 %EAX_val.380, 4, !mcsema_real_eip !252
  store i1 %1251, i1* %CF, !mcsema_real_eip !252
  %1252 = xor i32 %EAX_val.380, 4, !mcsema_real_eip !252
  %1253 = and i32 %1252, %1240, !mcsema_real_eip !252
  %1254 = lshr i32 %1253, 31, !mcsema_real_eip !252
  %1255 = trunc i32 %1254 to i1, !mcsema_real_eip !252
  store i1 %1255, i1* %OF, !mcsema_real_eip !252
  br i1 %1248, label %block_0x401, label %block_0x3fa, !mcsema_real_eip !253

block_0x3fa:                                      ; preds = %block_0x3e4
  %_load_rbp_ptr_376 = load i8*, i8** %_RBP_ptr_
  %_new_gep_377 = getelementptr i8, i8* %_load_rbp_ptr_376, i64 -20
  %_allin_new_bt_378 = bitcast i8* %_new_gep_377 to i64*
  %1256 = ptrtoint i64* %_allin_new_bt_378 to i64, !mcsema_real_eip !254
  %1257 = inttoptr i64 %1256 to i32*, !mcsema_real_eip !254
  store i32 -32, i32* %1257, !mcsema_real_eip !254
  br label %block_0x401, !mcsema_real_eip !255

block_0x401:                                      ; preds = %block_0x3fa, %block_0x3e4, %block_0x3a6
  br label %block_0x40c, !mcsema_real_eip !255

block_0x406:                                      ; preds = %block_0x38e
  %_new_gep_380 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -64
  %_allin_new_bt_381 = bitcast i8* %_new_gep_380 to i64*
  %1258 = ptrtoint i64* %_allin_new_bt_381 to i64, !mcsema_real_eip !256
  %1259 = inttoptr i64 %1258 to i32*, !mcsema_real_eip !256
  %1260 = load i32, i32* %1259, !mcsema_real_eip !256
  %1261 = zext i32 %1260 to i64, !mcsema_real_eip !256
  store i64 %1261, i64* %XAX, !mcsema_real_eip !256
  %_new_gep_383 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -20
  %_allin_new_bt_384 = bitcast i8* %_new_gep_383 to i64*
  %EAX_val.385 = load i32, i32* %EAX.9, !mcsema_real_eip !257
  %1262 = ptrtoint i64* %_allin_new_bt_384 to i64, !mcsema_real_eip !257
  %1263 = inttoptr i64 %1262 to i32*, !mcsema_real_eip !257
  store i32 %EAX_val.385, i32* %1263, !mcsema_real_eip !257
  br label %block_0x40c, !mcsema_real_eip !258

block_0x40c:                                      ; preds = %block_0x406, %block_0x401
  br label %block_0x411, !mcsema_real_eip !258

block_0x411:                                      ; preds = %block_0x40c, %block_0x380
  %_load_rbp_ptr_385 = load i8*, i8** %_RBP_ptr_
  %_new_gep_386 = getelementptr i8, i8* %_load_rbp_ptr_385, i64 -20
  %_allin_new_bt_387 = bitcast i8* %_new_gep_386 to i64*
  %1264 = ptrtoint i64* %_allin_new_bt_387 to i64, !mcsema_real_eip !259
  %1265 = inttoptr i64 %1264 to i32*, !mcsema_real_eip !259
  %1266 = load i32, i32* %1265, !mcsema_real_eip !259
  %1267 = zext i32 %1266 to i64, !mcsema_real_eip !259
  store i64 %1267, i64* %XAX, !mcsema_real_eip !259
  %_new_gep_389 = getelementptr i8, i8* %_load_rbp_ptr_385, i64 -4
  %_allin_new_bt_390 = bitcast i8* %_new_gep_389 to i64*
  %EAX_val.389 = load i32, i32* %EAX.9, !mcsema_real_eip !260
  %1268 = ptrtoint i64* %_allin_new_bt_390 to i64, !mcsema_real_eip !260
  %1269 = inttoptr i64 %1268 to i32*, !mcsema_real_eip !260
  store i32 %EAX_val.389, i32* %1269, !mcsema_real_eip !260
  br label %block_0x417, !mcsema_real_eip !261

block_0x417:                                      ; preds = %block_0x411, %block_0x338, %block_0x2ea, %block_0x2c6, %block_0x1cc, %block_0x10e, %block_0xcb, %block_0x98, %block_0x6d, %block_0x4b, %block_0x24
  %_load_rbp_ptr_391 = load i8*, i8** %_RBP_ptr_
  %_new_gep_392 = getelementptr i8, i8* %_load_rbp_ptr_391, i64 -4
  %_allin_new_bt_393 = bitcast i8* %_new_gep_392 to i64*
  %1270 = ptrtoint i64* %_allin_new_bt_393 to i64, !mcsema_real_eip !261
  %1271 = inttoptr i64 %1270 to i32*, !mcsema_real_eip !261
  %1272 = load i32, i32* %1271, !mcsema_real_eip !261
  %1273 = zext i32 %1272 to i64, !mcsema_real_eip !261
  store i64 %1273, i64* %XAX, !mcsema_real_eip !261
  %_load_rsp_ptr_394 = load i8*, i8** %_RSP_ptr_
  %RSP_val.391 = load i64, i64* %XSP, !mcsema_real_eip !262
  %_new_gep_395 = getelementptr i8, i8* %_load_rsp_ptr_394, i64 80
  %1274 = add i64 80, %RSP_val.391, !mcsema_real_eip !262
  %_trans_p2i_396 = ptrtoint i8* %_new_gep_395 to i64
  %_trans_p2i_397 = ptrtoint i8* %_load_rsp_ptr_394 to i64
  %_trans_xor_398 = xor i64 %_trans_p2i_396, %_trans_p2i_397
  %1275 = xor i64 %_trans_xor_398, 80, !mcsema_real_eip !262
  %1276 = and i64 %1275, 16, !mcsema_real_eip !262
  %1277 = icmp ne i64 %1276, 0, !mcsema_real_eip !262
  store i1 %1277, i1* %AF, !mcsema_real_eip !262
  %1278 = lshr i64 %1274, 63, !mcsema_real_eip !262
  %1279 = trunc i64 %1278 to i1, !mcsema_real_eip !262
  store i1 %1279, i1* %SF, !mcsema_real_eip !262
  %_trans_icmp_eq_400 = icmp eq i64 %_trans_p2i_396, 0
  store i1 %_trans_icmp_eq_400, i1* %ZF, !mcsema_real_eip !262
  %_trans_xor_402 = xor i64 %_trans_p2i_397, 80
  %1280 = xor i64 %_trans_xor_402, -1, !mcsema_real_eip !262
  %1281 = and i64 %1280, %_trans_xor_398, !mcsema_real_eip !262
  %1282 = lshr i64 %1281, 63, !mcsema_real_eip !262
  %1283 = and i64 %1282, 1, !mcsema_real_eip !262
  %1284 = trunc i64 %1283 to i1, !mcsema_real_eip !262
  store i1 %1284, i1* %OF, !mcsema_real_eip !262
  %_trans_trunc_407 = trunc i64 %_trans_p2i_396 to i8
  %1285 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_407), !mcsema_real_eip !262
  %1286 = trunc i8 %1285 to i1, !mcsema_real_eip !262
  %1287 = xor i1 %1286, true, !mcsema_real_eip !262
  store i1 %1287, i1* %PF, !mcsema_real_eip !262
  %_trans_icmp_ne_409 = icmp ne i64 %_trans_p2i_396, %RSP_val.391
  store i1 %_trans_icmp_ne_409, i1* %CF, !mcsema_real_eip !262
  store volatile i8* %_new_gep_395, i8** %_RSP_ptr_
  store i64 %1274, i64* %XSP, !mcsema_real_eip !262
  %_allin_new_bt_411 = bitcast i8* %_new_gep_395 to i64*
  %1288 = load i64, i64* %_allin_new_bt_411, !mcsema_real_eip !263
  %_new_int2ptr_ = inttoptr i64 %1288 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %1288, i64* %XBP, !mcsema_real_eip !263
  %_new_gep_412 = getelementptr i8, i8* %_new_gep_395, i64 8
  %1289 = add i64 %1274, 8, !mcsema_real_eip !263
  store volatile i8* %_new_gep_412, i8** %_RSP_ptr_
  store i64 %1289, i64* %XSP, !mcsema_real_eip !263
  %_new_gep_414 = getelementptr i8, i8* %_new_gep_412, i64 8
  %1290 = add i64 %1289, 8, !mcsema_real_eip !264
  %_allin_new_bt_415 = bitcast i8* %_new_gep_412 to i64*
  %1291 = load i64, i64* %_allin_new_bt_415, !mcsema_real_eip !264
  store i64 %1291, i64* %XIP, !mcsema_real_eip !264
  store volatile i8* %_new_gep_414, i8** %_RSP_ptr_
  store i64 %1290, i64* %XSP, !mcsema_real_eip !264
  ret void, !mcsema_real_eip !264
}

declare x86_64_sysvcc i64 @read_bytes(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

declare x86_64_sysvcc i64 @to_byte(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_to_byte(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read_bytes(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @keycomp() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -80
  %2 = sub i64 %RSP_val.3, 80, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 80, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 80
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 80
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -16
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_18 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_17, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_17, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_17, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %14, label %15

; <label>:14:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %15

; <label>:15:                                     ; preds = %block_0x0, %14
  %16 = phi i64* [ %_allin_new_bt_18, %block_0x0 ], [ %_address_in_parent_stack_bt_, %14 ]
  %_new_load_ = load i64, i64* %16
  store i64 %_new_load_, i64* %XDI, !mcsema_real_eip !6
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %RSP_val.8 = load i64, i64* %XSP, !mcsema_real_eip !7
  %_new_gep_20 = getelementptr i8, i8* %_load_rsp_ptr_19, i64 -8
  %17 = sub i64 %RSP_val.8, 8, !mcsema_real_eip !7
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, !mcsema_real_eip !7
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %17, i64* %XSP, !mcsema_real_eip !7
  %18 = call x86_64_sysvcc i64 @_strlen(i64 %_new_load_)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %18, i64* %XAX, !mcsema_real_eip !7
  %EAX.9 = bitcast i64* %XAX to i32*, !mcsema_real_eip !8
  %EAX_val.10 = load i32, i32* %EAX.9, !mcsema_real_eip !8
  %19 = zext i32 %EAX_val.10 to i64, !mcsema_real_eip !8
  store i64 %19, i64* %XCX, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -32
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !9
  %ECX_val.13 = load i32, i32* %ECX.12, !mcsema_real_eip !9
  %20 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !9
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !9
  store i32 %ECX_val.13, i32* %21, !mcsema_real_eip !9
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -32
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %22 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !10
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !10
  %_ptr_bt_440 = bitcast i32* %23 to i8*
  %_offset_above_rbp_441 = sub i64 %22, %_local_end_to_int_
  %_pot_address_in_parent_stack_442 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_441
  %_cond1_443 = icmp ugt i8* %_ptr_bt_440, %_local_stack_end_ptr_
  %_cond2_1_444 = icmp ugt i8* %_ptr_bt_440, %_parent_stack_end_ptr_
  %_cond2_2_445 = icmp ult i8* %_ptr_bt_440, %_parent_stack_start_ptr_
  %_cond2_446 = or i1 %_cond2_1_444, %_cond2_2_445
  %_cond4_447 = icmp ule i8* %_pot_address_in_parent_stack_442, %_parent_stack_end_ptr_
  %_cond1_n_cond2_448 = and i1 %_cond1_443, %_cond2_446
  %_cond1_n_cond2_cond3_449 = and i1 %_cond1_n_cond2_448, %_cond4_447
  br i1 %_cond1_n_cond2_cond3_449, label %24, label %25

; <label>:24:                                     ; preds = %15
  %_address_in_parent_stack_bt_451 = bitcast i8* %_pot_address_in_parent_stack_442 to i32*
  br label %25

; <label>:25:                                     ; preds = %15, %24
  %26 = phi i32* [ %23, %15 ], [ %_address_in_parent_stack_bt_451, %24 ]
  %_new_load_452 = load i32, i32* %26
  %27 = sub i32 %_new_load_452, 37, !mcsema_real_eip !10
  %28 = xor i32 %27, %_new_load_452, !mcsema_real_eip !10
  %29 = xor i32 %28, 37, !mcsema_real_eip !10
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
  %39 = icmp ult i32 %_new_load_452, 37, !mcsema_real_eip !10
  store i1 %39, i1* %CF, !mcsema_real_eip !10
  %40 = xor i32 %_new_load_452, 37, !mcsema_real_eip !10
  %41 = and i32 %40, %28, !mcsema_real_eip !10
  %42 = lshr i32 %41, 31, !mcsema_real_eip !10
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !10
  store i1 %43, i1* %OF, !mcsema_real_eip !10
  br i1 %36, label %block_0x2f, label %block_0x24, !mcsema_real_eip !11

block_0x24:                                       ; preds = %25
  br i1 %_cond1_n_cond2_cond3_449, label %44, label %45

; <label>:44:                                     ; preds = %block_0x24
  %_address_in_parent_stack_bt_466 = bitcast i8* %_pot_address_in_parent_stack_442 to i32*
  br label %45

; <label>:45:                                     ; preds = %block_0x24, %44
  %46 = phi i32* [ %23, %block_0x24 ], [ %_address_in_parent_stack_bt_466, %44 ]
  %_new_load_467 = load i32, i32* %46
  %47 = zext i32 %_new_load_467 to i64, !mcsema_real_eip !12
  store i64 %47, i64* %XAX, !mcsema_real_eip !12
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -4
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EAX_val.18 = load i32, i32* %EAX.9, !mcsema_real_eip !13
  %48 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !13
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.18, i32* %49, !mcsema_real_eip !13
  br label %block_0x417, !mcsema_real_eip !14

block_0x2f:                                       ; preds = %25
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -16
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_468 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_471 = sub i64 %_ptr_to_int_468, %_local_end_to_int_
  %_pot_address_in_parent_stack_472 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_471
  %_cond1_473 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_474 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_475 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_476 = or i1 %_cond2_1_474, %_cond2_2_475
  %_cond4_477 = icmp ule i8* %_pot_address_in_parent_stack_472, %_parent_stack_end_ptr_
  %_cond1_n_cond2_478 = and i1 %_cond1_473, %_cond2_476
  %_cond1_n_cond2_cond3_479 = and i1 %_cond1_n_cond2_478, %_cond4_477
  br i1 %_cond1_n_cond2_cond3_479, label %50, label %51

; <label>:50:                                     ; preds = %block_0x2f
  %_address_in_parent_stack_bt_481 = bitcast i8* %_pot_address_in_parent_stack_472 to i64*
  br label %51

; <label>:51:                                     ; preds = %block_0x2f, %50
  %52 = phi i64* [ %_allin_new_bt_36, %block_0x2f ], [ %_address_in_parent_stack_bt_481, %50 ]
  %_new_load_482 = load i64, i64* %52
  store i64 %_new_load_482, i64* %XAX, !mcsema_real_eip !15
  %53 = add i64 4, %_new_load_482, !mcsema_real_eip !16
  %54 = xor i64 %53, %_new_load_482, !mcsema_real_eip !16
  %55 = xor i64 %54, 4, !mcsema_real_eip !16
  %56 = and i64 %55, 16, !mcsema_real_eip !16
  %57 = icmp ne i64 %56, 0, !mcsema_real_eip !16
  store i1 %57, i1* %AF, !mcsema_real_eip !16
  %58 = lshr i64 %53, 63, !mcsema_real_eip !16
  %59 = trunc i64 %58 to i1, !mcsema_real_eip !16
  store i1 %59, i1* %SF, !mcsema_real_eip !16
  %60 = icmp eq i64 %53, 0, !mcsema_real_eip !16
  store i1 %60, i1* %ZF, !mcsema_real_eip !16
  %61 = xor i64 %_new_load_482, 4, !mcsema_real_eip !16
  %62 = xor i64 %61, -1, !mcsema_real_eip !16
  %63 = and i64 %62, %54, !mcsema_real_eip !16
  %64 = lshr i64 %63, 63, !mcsema_real_eip !16
  %65 = and i64 %64, 1, !mcsema_real_eip !16
  %66 = trunc i64 %65 to i1, !mcsema_real_eip !16
  store i1 %66, i1* %OF, !mcsema_real_eip !16
  %67 = trunc i64 %53 to i8, !mcsema_real_eip !16
  %68 = call i8 @llvm.ctpop.i8(i8 %67), !mcsema_real_eip !16
  %69 = trunc i8 %68 to i1, !mcsema_real_eip !16
  %70 = xor i1 %69, true, !mcsema_real_eip !16
  store i1 %70, i1* %PF, !mcsema_real_eip !16
  %71 = icmp ult i64 %53, %_new_load_482, !mcsema_real_eip !16
  store i1 %71, i1* %CF, !mcsema_real_eip !16
  store i64 %53, i64* %XAX, !mcsema_real_eip !16
  store i64 %53, i64* %_allin_new_bt_36, !mcsema_real_eip !17
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -16
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_483 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_486 = sub i64 %_ptr_to_int_483, %_local_end_to_int_
  %_pot_address_in_parent_stack_487 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_486
  %_cond1_488 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_489 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_490 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_491 = or i1 %_cond2_1_489, %_cond2_2_490
  %_cond4_492 = icmp ule i8* %_pot_address_in_parent_stack_487, %_parent_stack_end_ptr_
  %_cond1_n_cond2_493 = and i1 %_cond1_488, %_cond2_491
  %_cond1_n_cond2_cond3_494 = and i1 %_cond1_n_cond2_493, %_cond4_492
  br i1 %_cond1_n_cond2_cond3_494, label %72, label %73

; <label>:72:                                     ; preds = %51
  %_address_in_parent_stack_bt_496 = bitcast i8* %_pot_address_in_parent_stack_487 to i64*
  br label %73

; <label>:73:                                     ; preds = %51, %72
  %74 = phi i64* [ %_allin_new_bt_42, %51 ], [ %_address_in_parent_stack_bt_496, %72 ]
  %_new_load_497 = load i64, i64* %74
  store i64 %_new_load_497, i64* %XAX, !mcsema_real_eip !18
  %75 = inttoptr i64 %_new_load_497 to i64*, !mcsema_real_eip !19
  %76 = inttoptr i64 %_new_load_497 to i8*, !mcsema_real_eip !19
  %_offset_above_rbp_500 = sub i64 %_new_load_497, %_local_end_to_int_
  %_pot_address_in_parent_stack_501 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_500
  %_cond1_502 = icmp ugt i8* %76, %_local_stack_end_ptr_
  %_cond2_1_503 = icmp ugt i8* %76, %_parent_stack_end_ptr_
  %_cond2_2_504 = icmp ult i8* %76, %_parent_stack_start_ptr_
  %_cond2_505 = or i1 %_cond2_1_503, %_cond2_2_504
  %_cond4_506 = icmp ule i8* %_pot_address_in_parent_stack_501, %_parent_stack_end_ptr_
  %_cond1_n_cond2_507 = and i1 %_cond1_502, %_cond2_505
  %_cond1_n_cond2_cond3_508 = and i1 %_cond1_n_cond2_507, %_cond4_506
  br i1 %_cond1_n_cond2_cond3_508, label %77, label %78

; <label>:77:                                     ; preds = %73
  br label %78

; <label>:78:                                     ; preds = %73, %77
  %79 = phi i8* [ %76, %73 ], [ %_pot_address_in_parent_stack_501, %77 ]
  %_new_load_510 = load i8, i8* %79
  %80 = sext i8 %_new_load_510 to i32, !mcsema_real_eip !19
  %81 = zext i32 %80 to i64, !mcsema_real_eip !19
  store i64 %81, i64* %XCX, !mcsema_real_eip !19
  %ECX_val.26 = load i32, i32* %ECX.12, !mcsema_real_eip !20
  %82 = sub i32 %ECX_val.26, 100, !mcsema_real_eip !20
  %83 = xor i32 %82, %ECX_val.26, !mcsema_real_eip !20
  %84 = xor i32 %83, 100, !mcsema_real_eip !20
  %85 = and i32 %84, 16, !mcsema_real_eip !20
  %86 = icmp ne i32 %85, 0, !mcsema_real_eip !20
  store i1 %86, i1* %AF, !mcsema_real_eip !20
  %87 = trunc i32 %82 to i8, !mcsema_real_eip !20
  %88 = call i8 @llvm.ctpop.i8(i8 %87), !mcsema_real_eip !20
  %89 = trunc i8 %88 to i1, !mcsema_real_eip !20
  %90 = xor i1 %89, true, !mcsema_real_eip !20
  store i1 %90, i1* %PF, !mcsema_real_eip !20
  %91 = icmp eq i32 %82, 0, !mcsema_real_eip !20
  store i1 %91, i1* %ZF, !mcsema_real_eip !20
  %92 = lshr i32 %82, 31, !mcsema_real_eip !20
  %93 = trunc i32 %92 to i1, !mcsema_real_eip !20
  store i1 %93, i1* %SF, !mcsema_real_eip !20
  %94 = icmp ult i32 %ECX_val.26, 100, !mcsema_real_eip !20
  store i1 %94, i1* %CF, !mcsema_real_eip !20
  %95 = xor i32 %ECX_val.26, 100, !mcsema_real_eip !20
  %96 = and i32 %95, %83, !mcsema_real_eip !20
  %97 = lshr i32 %96, 31, !mcsema_real_eip !20
  %98 = trunc i32 %97 to i1, !mcsema_real_eip !20
  store i1 %98, i1* %OF, !mcsema_real_eip !20
  br i1 %91, label %block_0x57, label %block_0x4b, !mcsema_real_eip !21

block_0x4b:                                       ; preds = %78
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -4
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %99 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !22
  %100 = inttoptr i64 %99 to i32*, !mcsema_real_eip !22
  store i32 -2, i32* %100, !mcsema_real_eip !22
  br label %block_0x417, !mcsema_real_eip !23

block_0x57:                                       ; preds = %78
  br i1 %_cond1_n_cond2_cond3_494, label %101, label %102

; <label>:101:                                    ; preds = %block_0x57
  %_address_in_parent_stack_bt_524 = bitcast i8* %_pot_address_in_parent_stack_487 to i64*
  br label %102

; <label>:102:                                    ; preds = %block_0x57, %101
  %103 = phi i64* [ %_allin_new_bt_42, %block_0x57 ], [ %_address_in_parent_stack_bt_524, %101 ]
  %_new_load_525 = load i64, i64* %103
  store i64 %_new_load_525, i64* %XAX, !mcsema_real_eip !24
  %104 = add i64 %_new_load_525, 1, !mcsema_real_eip !25
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !25
  %106 = inttoptr i64 %104 to i8*, !mcsema_real_eip !25
  %_offset_above_rbp_528 = sub i64 %104, %_local_end_to_int_
  %_pot_address_in_parent_stack_529 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_528
  %_cond1_530 = icmp ugt i8* %106, %_local_stack_end_ptr_
  %_cond2_1_531 = icmp ugt i8* %106, %_parent_stack_end_ptr_
  %_cond2_2_532 = icmp ult i8* %106, %_parent_stack_start_ptr_
  %_cond2_533 = or i1 %_cond2_1_531, %_cond2_2_532
  %_cond4_534 = icmp ule i8* %_pot_address_in_parent_stack_529, %_parent_stack_end_ptr_
  %_cond1_n_cond2_535 = and i1 %_cond1_530, %_cond2_533
  %_cond1_n_cond2_cond3_536 = and i1 %_cond1_n_cond2_535, %_cond4_534
  br i1 %_cond1_n_cond2_cond3_536, label %107, label %108

; <label>:107:                                    ; preds = %102
  br label %108

; <label>:108:                                    ; preds = %102, %107
  %109 = phi i8* [ %106, %102 ], [ %_pot_address_in_parent_stack_529, %107 ]
  %_new_load_538 = load i8, i8* %109
  %110 = zext i8 %_new_load_538 to i32, !mcsema_real_eip !25
  %111 = zext i32 %110 to i64, !mcsema_real_eip !25
  store i64 %111, i64* %XDI, !mcsema_real_eip !25
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.31 = load i64, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %112 = sub i64 %RSP_val.31, 8, !mcsema_real_eip !26
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_51, !mcsema_real_eip !26
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %112, i64* %XSP, !mcsema_real_eip !26
  %113 = call x86_64_sysvcc i64 @_to_byte(i64 %111)
  %_rsp_fix_416 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_417 = getelementptr i8, i8* %_rsp_fix_416, i64 8
  store i8* %_gep_fix_417, i8** %_RSP_ptr_
  store i64 %113, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.33 = load i32, i32* %EAX.9, !mcsema_real_eip !27
  %114 = sub i32 %EAX_val.33, 9, !mcsema_real_eip !27
  %115 = xor i32 %114, %EAX_val.33, !mcsema_real_eip !27
  %116 = xor i32 %115, 9, !mcsema_real_eip !27
  %117 = and i32 %116, 16, !mcsema_real_eip !27
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !27
  store i1 %118, i1* %AF, !mcsema_real_eip !27
  %119 = trunc i32 %114 to i8, !mcsema_real_eip !27
  %120 = call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !27
  %121 = trunc i8 %120 to i1, !mcsema_real_eip !27
  %122 = xor i1 %121, true, !mcsema_real_eip !27
  store i1 %122, i1* %PF, !mcsema_real_eip !27
  %123 = icmp eq i32 %114, 0, !mcsema_real_eip !27
  store i1 %123, i1* %ZF, !mcsema_real_eip !27
  %124 = lshr i32 %114, 31, !mcsema_real_eip !27
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !27
  store i1 %125, i1* %SF, !mcsema_real_eip !27
  %126 = icmp ult i32 %EAX_val.33, 9, !mcsema_real_eip !27
  store i1 %126, i1* %CF, !mcsema_real_eip !27
  %127 = xor i32 %EAX_val.33, 9, !mcsema_real_eip !27
  %128 = and i32 %127, %115, !mcsema_real_eip !27
  %129 = lshr i32 %128, 31, !mcsema_real_eip !27
  %130 = trunc i32 %129 to i1, !mcsema_real_eip !27
  store i1 %130, i1* %OF, !mcsema_real_eip !27
  br i1 %123, label %block_0x79, label %block_0x6d, !mcsema_real_eip !28

block_0x6d:                                       ; preds = %108
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -4
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %131 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !29
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !29
  store i32 -3, i32* %132, !mcsema_real_eip !29
  br label %block_0x417, !mcsema_real_eip !30

block_0x79:                                       ; preds = %108
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -16
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %_ptr_to_int_539 = ptrtoint i64* %_allin_new_bt_57 to i64
  %_offset_above_rbp_542 = sub i64 %_ptr_to_int_539, %_local_end_to_int_
  %_pot_address_in_parent_stack_543 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_542
  %_cond1_544 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_545 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_546 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_547 = or i1 %_cond2_1_545, %_cond2_2_546
  %_cond4_548 = icmp ule i8* %_pot_address_in_parent_stack_543, %_parent_stack_end_ptr_
  %_cond1_n_cond2_549 = and i1 %_cond1_544, %_cond2_547
  %_cond1_n_cond2_cond3_550 = and i1 %_cond1_n_cond2_549, %_cond4_548
  br i1 %_cond1_n_cond2_cond3_550, label %133, label %134

; <label>:133:                                    ; preds = %block_0x79
  %_address_in_parent_stack_bt_552 = bitcast i8* %_pot_address_in_parent_stack_543 to i64*
  br label %134

; <label>:134:                                    ; preds = %block_0x79, %133
  %135 = phi i64* [ %_allin_new_bt_57, %block_0x79 ], [ %_address_in_parent_stack_bt_552, %133 ]
  %_new_load_553 = load i64, i64* %135
  store i64 %_new_load_553, i64* %XAX, !mcsema_real_eip !31
  %136 = add i64 %_new_load_553, 2, !mcsema_real_eip !32
  %137 = inttoptr i64 %136 to i64*, !mcsema_real_eip !32
  %138 = inttoptr i64 %136 to i8*, !mcsema_real_eip !32
  %_offset_above_rbp_556 = sub i64 %136, %_local_end_to_int_
  %_pot_address_in_parent_stack_557 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_556
  %_cond1_558 = icmp ugt i8* %138, %_local_stack_end_ptr_
  %_cond2_1_559 = icmp ugt i8* %138, %_parent_stack_end_ptr_
  %_cond2_2_560 = icmp ult i8* %138, %_parent_stack_start_ptr_
  %_cond2_561 = or i1 %_cond2_1_559, %_cond2_2_560
  %_cond4_562 = icmp ule i8* %_pot_address_in_parent_stack_557, %_parent_stack_end_ptr_
  %_cond1_n_cond2_563 = and i1 %_cond1_558, %_cond2_561
  %_cond1_n_cond2_cond3_564 = and i1 %_cond1_n_cond2_563, %_cond4_562
  br i1 %_cond1_n_cond2_cond3_564, label %139, label %140

; <label>:139:                                    ; preds = %134
  br label %140

; <label>:140:                                    ; preds = %134, %139
  %141 = phi i8* [ %138, %134 ], [ %_pot_address_in_parent_stack_557, %139 ]
  %_new_load_566 = load i8, i8* %141
  %142 = zext i8 %_new_load_566 to i32, !mcsema_real_eip !32
  %143 = zext i32 %142 to i64, !mcsema_real_eip !32
  store i64 %143, i64* %XDI, !mcsema_real_eip !32
  %RSP_val.38 = load i64, i64* %XSP, !mcsema_real_eip !33
  %_new_gep_59 = getelementptr i8, i8* %_gep_fix_417, i64 -8
  %144 = sub i64 %RSP_val.38, 8, !mcsema_real_eip !33
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_60, !mcsema_real_eip !33
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_
  store i64 %144, i64* %XSP, !mcsema_real_eip !33
  %145 = call x86_64_sysvcc i64 @_to_byte(i64 %143)
  %_rsp_fix_418 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_419 = getelementptr i8, i8* %_rsp_fix_418, i64 8
  store i8* %_gep_fix_419, i8** %_RSP_ptr_
  store i64 %145, i64* %XAX, !mcsema_real_eip !33
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -24
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %EAX_val.41 = load i32, i32* %EAX.9, !mcsema_real_eip !34
  %146 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !34
  %147 = inttoptr i64 %146 to i32*, !mcsema_real_eip !34
  store i32 %EAX_val.41, i32* %147, !mcsema_real_eip !34
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -24
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %148 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !35
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !35
  %_ptr_bt_569 = bitcast i32* %149 to i8*
  %_offset_above_rbp_570 = sub i64 %148, %_local_end_to_int_
  %_pot_address_in_parent_stack_571 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_570
  %_cond1_572 = icmp ugt i8* %_ptr_bt_569, %_local_stack_end_ptr_
  %_cond2_1_573 = icmp ugt i8* %_ptr_bt_569, %_parent_stack_end_ptr_
  %_cond2_2_574 = icmp ult i8* %_ptr_bt_569, %_parent_stack_start_ptr_
  %_cond2_575 = or i1 %_cond2_1_573, %_cond2_2_574
  %_cond4_576 = icmp ule i8* %_pot_address_in_parent_stack_571, %_parent_stack_end_ptr_
  %_cond1_n_cond2_577 = and i1 %_cond1_572, %_cond2_575
  %_cond1_n_cond2_cond3_578 = and i1 %_cond1_n_cond2_577, %_cond4_576
  br i1 %_cond1_n_cond2_cond3_578, label %150, label %151

; <label>:150:                                    ; preds = %140
  %_address_in_parent_stack_bt_580 = bitcast i8* %_pot_address_in_parent_stack_571 to i32*
  br label %151

; <label>:151:                                    ; preds = %140, %150
  %152 = phi i32* [ %149, %140 ], [ %_address_in_parent_stack_bt_580, %150 ]
  %_new_load_581 = load i32, i32* %152
  %153 = zext i32 %_new_load_581 to i64, !mcsema_real_eip !35
  store i64 %153, i64* %XAX, !mcsema_real_eip !35
  %EAX_val.44 = load i32, i32* %EAX.9, !mcsema_real_eip !36
  %154 = and i32 %EAX_val.44, -2147483648, !mcsema_real_eip !36
  %155 = icmp ne i32 %154, 0, !mcsema_real_eip !36
  %156 = load i1, i1* %CF, !mcsema_real_eip !36
  %157 = shl i32 %EAX_val.44, 1, !mcsema_real_eip !36
  %158 = load i1, i1* %OF, !mcsema_real_eip !36
  %159 = and i32 %157, -2147483648, !mcsema_real_eip !36
  %160 = icmp ne i32 %159, 0, !mcsema_real_eip !36
  %161 = xor i1 %160, %155, !mcsema_real_eip !36
  store i1 %161, i1* %OF, !mcsema_real_eip !36
  store i1 %155, i1* %CF, !mcsema_real_eip !36
  %162 = load i1, i1* %ZF, !mcsema_real_eip !36
  %163 = icmp eq i32 %157, 0, !mcsema_real_eip !36
  store i1 %163, i1* %ZF, !mcsema_real_eip !36
  %164 = load i1, i1* %SF, !mcsema_real_eip !36
  %165 = icmp slt i32 %157, 0, !mcsema_real_eip !36
  store i1 %165, i1* %SF, !mcsema_real_eip !36
  %166 = load i1, i1* %PF, !mcsema_real_eip !36
  %167 = trunc i32 %157 to i8, !mcsema_real_eip !36
  %168 = call i8 @llvm.ctpop.i8(i8 %167), !mcsema_real_eip !36
  %169 = trunc i8 %168 to i1, !mcsema_real_eip !36
  %170 = xor i1 %169, true, !mcsema_real_eip !36
  store i1 %170, i1* %PF, !mcsema_real_eip !36
  %171 = zext i32 %157 to i64, !mcsema_real_eip !36
  store i64 %171, i64* %XAX, !mcsema_real_eip !36
  %EAX_val.46 = load i32, i32* %EAX.9, !mcsema_real_eip !37
  %172 = sub i32 %EAX_val.46, 26, !mcsema_real_eip !37
  %173 = xor i32 %172, %EAX_val.46, !mcsema_real_eip !37
  %174 = xor i32 %173, 26, !mcsema_real_eip !37
  %175 = and i32 %174, 16, !mcsema_real_eip !37
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !37
  store i1 %176, i1* %AF, !mcsema_real_eip !37
  %177 = trunc i32 %172 to i8, !mcsema_real_eip !37
  %178 = call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !37
  %179 = trunc i8 %178 to i1, !mcsema_real_eip !37
  %180 = xor i1 %179, true, !mcsema_real_eip !37
  store i1 %180, i1* %PF, !mcsema_real_eip !37
  %181 = icmp eq i32 %172, 0, !mcsema_real_eip !37
  store i1 %181, i1* %ZF, !mcsema_real_eip !37
  %182 = lshr i32 %172, 31, !mcsema_real_eip !37
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !37
  store i1 %183, i1* %SF, !mcsema_real_eip !37
  %184 = icmp ult i32 %EAX_val.46, 26, !mcsema_real_eip !37
  store i1 %184, i1* %CF, !mcsema_real_eip !37
  %185 = xor i32 %EAX_val.46, 26, !mcsema_real_eip !37
  %186 = and i32 %185, %173, !mcsema_real_eip !37
  %187 = lshr i32 %186, 31, !mcsema_real_eip !37
  %188 = trunc i32 %187 to i1, !mcsema_real_eip !37
  store i1 %188, i1* %OF, !mcsema_real_eip !37
  br i1 %181, label %block_0xa4, label %block_0x98, !mcsema_real_eip !38

block_0x98:                                       ; preds = %151
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -4
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %189 = ptrtoint i64* %_allin_new_bt_69 to i64, !mcsema_real_eip !39
  %190 = inttoptr i64 %189 to i32*, !mcsema_real_eip !39
  store i32 -4, i32* %190, !mcsema_real_eip !39
  br label %block_0x417, !mcsema_real_eip !40

block_0xa4:                                       ; preds = %151
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -16
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %_ptr_to_int_582 = ptrtoint i64* %_allin_new_bt_72 to i64
  %_offset_above_rbp_585 = sub i64 %_ptr_to_int_582, %_local_end_to_int_
  %_pot_address_in_parent_stack_586 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_585
  %_cond1_587 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_588 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_589 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_590 = or i1 %_cond2_1_588, %_cond2_2_589
  %_cond4_591 = icmp ule i8* %_pot_address_in_parent_stack_586, %_parent_stack_end_ptr_
  %_cond1_n_cond2_592 = and i1 %_cond1_587, %_cond2_590
  %_cond1_n_cond2_cond3_593 = and i1 %_cond1_n_cond2_592, %_cond4_591
  br i1 %_cond1_n_cond2_cond3_593, label %191, label %192

; <label>:191:                                    ; preds = %block_0xa4
  %_address_in_parent_stack_bt_595 = bitcast i8* %_pot_address_in_parent_stack_586 to i64*
  br label %192

; <label>:192:                                    ; preds = %block_0xa4, %191
  %193 = phi i64* [ %_allin_new_bt_72, %block_0xa4 ], [ %_address_in_parent_stack_bt_595, %191 ]
  %_new_load_596 = load i64, i64* %193
  store i64 %_new_load_596, i64* %XAX, !mcsema_real_eip !41
  %194 = add i64 %_new_load_596, 3, !mcsema_real_eip !42
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !42
  %196 = inttoptr i64 %194 to i8*, !mcsema_real_eip !42
  %_offset_above_rbp_599 = sub i64 %194, %_local_end_to_int_
  %_pot_address_in_parent_stack_600 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_599
  %_cond1_601 = icmp ugt i8* %196, %_local_stack_end_ptr_
  %_cond2_1_602 = icmp ugt i8* %196, %_parent_stack_end_ptr_
  %_cond2_2_603 = icmp ult i8* %196, %_parent_stack_start_ptr_
  %_cond2_604 = or i1 %_cond2_1_602, %_cond2_2_603
  %_cond4_605 = icmp ule i8* %_pot_address_in_parent_stack_600, %_parent_stack_end_ptr_
  %_cond1_n_cond2_606 = and i1 %_cond1_601, %_cond2_604
  %_cond1_n_cond2_cond3_607 = and i1 %_cond1_n_cond2_606, %_cond4_605
  br i1 %_cond1_n_cond2_cond3_607, label %197, label %198

; <label>:197:                                    ; preds = %192
  br label %198

; <label>:198:                                    ; preds = %192, %197
  %199 = phi i8* [ %196, %192 ], [ %_pot_address_in_parent_stack_600, %197 ]
  %_new_load_609 = load i8, i8* %199
  %200 = zext i8 %_new_load_609 to i32, !mcsema_real_eip !42
  %201 = zext i32 %200 to i64, !mcsema_real_eip !42
  store i64 %201, i64* %XDI, !mcsema_real_eip !42
  %_load_rsp_ptr_73 = load i8*, i8** %_RSP_ptr_
  %RSP_val.51 = load i64, i64* %XSP, !mcsema_real_eip !43
  %_new_gep_74 = getelementptr i8, i8* %_load_rsp_ptr_73, i64 -8
  %202 = sub i64 %RSP_val.51, 8, !mcsema_real_eip !43
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_75, !mcsema_real_eip !43
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_
  store i64 %202, i64* %XSP, !mcsema_real_eip !43
  %203 = call x86_64_sysvcc i64 @_to_byte(i64 %201)
  %_rsp_fix_420 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_421 = getelementptr i8, i8* %_rsp_fix_420, i64 8
  store i8* %_gep_fix_421, i8** %_RSP_ptr_
  store i64 %203, i64* %XAX, !mcsema_real_eip !43
  store i64 2, i64* %XDI, !mcsema_real_eip !44
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -28
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %EAX_val.54 = load i32, i32* %EAX.9, !mcsema_real_eip !45
  %204 = ptrtoint i64* %_allin_new_bt_78 to i64, !mcsema_real_eip !45
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !45
  store i32 %EAX_val.54, i32* %205, !mcsema_real_eip !45
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -28
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %206 = ptrtoint i64* %_allin_new_bt_81 to i64, !mcsema_real_eip !46
  %207 = inttoptr i64 %206 to i32*, !mcsema_real_eip !46
  %_ptr_bt_612 = bitcast i32* %207 to i8*
  %_offset_above_rbp_613 = sub i64 %206, %_local_end_to_int_
  %_pot_address_in_parent_stack_614 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_613
  %_cond1_615 = icmp ugt i8* %_ptr_bt_612, %_local_stack_end_ptr_
  %_cond2_1_616 = icmp ugt i8* %_ptr_bt_612, %_parent_stack_end_ptr_
  %_cond2_2_617 = icmp ult i8* %_ptr_bt_612, %_parent_stack_start_ptr_
  %_cond2_618 = or i1 %_cond2_1_616, %_cond2_2_617
  %_cond4_619 = icmp ule i8* %_pot_address_in_parent_stack_614, %_parent_stack_end_ptr_
  %_cond1_n_cond2_620 = and i1 %_cond1_615, %_cond2_618
  %_cond1_n_cond2_cond3_621 = and i1 %_cond1_n_cond2_620, %_cond4_619
  br i1 %_cond1_n_cond2_cond3_621, label %208, label %209

; <label>:208:                                    ; preds = %198
  %_address_in_parent_stack_bt_623 = bitcast i8* %_pot_address_in_parent_stack_614 to i32*
  br label %209

; <label>:209:                                    ; preds = %198, %208
  %210 = phi i32* [ %207, %198 ], [ %_address_in_parent_stack_bt_623, %208 ]
  %_new_load_624 = load i32, i32* %210
  %211 = zext i32 %_new_load_624 to i64, !mcsema_real_eip !46
  store i64 %211, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.57 = load i32, i32* %EAX.9, !mcsema_real_eip !47
  %212 = add i32 1, %EAX_val.57, !mcsema_real_eip !47
  %213 = xor i32 %212, %EAX_val.57, !mcsema_real_eip !47
  %214 = xor i32 %213, 1, !mcsema_real_eip !47
  %215 = and i32 %214, 16, !mcsema_real_eip !47
  %216 = icmp ne i32 %215, 0, !mcsema_real_eip !47
  store i1 %216, i1* %AF, !mcsema_real_eip !47
  %217 = lshr i32 %212, 31, !mcsema_real_eip !47
  %218 = trunc i32 %217 to i1, !mcsema_real_eip !47
  store i1 %218, i1* %SF, !mcsema_real_eip !47
  %219 = icmp eq i32 %212, 0, !mcsema_real_eip !47
  store i1 %219, i1* %ZF, !mcsema_real_eip !47
  %220 = xor i32 %EAX_val.57, 1, !mcsema_real_eip !47
  %221 = xor i32 %220, -1, !mcsema_real_eip !47
  %222 = and i32 %221, %213, !mcsema_real_eip !47
  %223 = lshr i32 %222, 31, !mcsema_real_eip !47
  %224 = and i32 %223, 1, !mcsema_real_eip !47
  %225 = trunc i32 %224 to i1, !mcsema_real_eip !47
  store i1 %225, i1* %OF, !mcsema_real_eip !47
  %226 = trunc i32 %212 to i8, !mcsema_real_eip !47
  %227 = call i8 @llvm.ctpop.i8(i8 %226), !mcsema_real_eip !47
  %228 = trunc i8 %227 to i1, !mcsema_real_eip !47
  %229 = xor i1 %228, true, !mcsema_real_eip !47
  store i1 %229, i1* %PF, !mcsema_real_eip !47
  %230 = icmp ult i32 %212, %EAX_val.57, !mcsema_real_eip !47
  store i1 %230, i1* %CF, !mcsema_real_eip !47
  %231 = zext i32 %212 to i64, !mcsema_real_eip !47
  store i64 %231, i64* %XAX, !mcsema_real_eip !47
  %EAX_val.59 = load i32, i32* %EAX.9, !mcsema_real_eip !48
  %232 = and i32 %EAX_val.59, -2147483648, !mcsema_real_eip !48
  %233 = icmp eq i32 %232, 0, !mcsema_real_eip !48
  %234 = select i1 %233, i32 0, i32 -1, !mcsema_real_eip !48
  %235 = zext i32 %234 to i64, !mcsema_real_eip !48
  store i64 %235, i64* %XDX, !mcsema_real_eip !48
  %EDI.60 = bitcast i64* %XDI to i32*, !mcsema_real_eip !49
  %EDI_val.61 = load i32, i32* %EDI.60, !mcsema_real_eip !49
  %EDX.64 = bitcast i64* %XDX to i32*, !mcsema_real_eip !49
  %EDX_val.65 = load i32, i32* %EDX.64, !mcsema_real_eip !49
  %236 = zext i32 %EDX_val.65 to i64, !mcsema_real_eip !49
  %237 = shl i64 %236, 32, !mcsema_real_eip !49
  %238 = sext i32 %EAX_val.59 to i64, !mcsema_real_eip !49
  %239 = or i64 %237, %238, !mcsema_real_eip !49
  %240 = sext i32 %EDI_val.61 to i64, !mcsema_real_eip !49
  %241 = sdiv i64 %239, %240, !mcsema_real_eip !49
  %242 = srem i64 %239, %240, !mcsema_real_eip !49
  %243 = trunc i64 %242 to i32, !mcsema_real_eip !49
  %244 = trunc i64 %241 to i32, !mcsema_real_eip !49
  %245 = zext i32 %243 to i64, !mcsema_real_eip !49
  store i64 %245, i64* %XDX, !mcsema_real_eip !49
  %246 = zext i32 %244 to i64, !mcsema_real_eip !49
  store i64 %246, i64* %XAX, !mcsema_real_eip !49
  %EAX_val.67 = load i32, i32* %EAX.9, !mcsema_real_eip !50
  %247 = sub i32 %EAX_val.67, 7, !mcsema_real_eip !50
  %248 = xor i32 %247, %EAX_val.67, !mcsema_real_eip !50
  %249 = xor i32 %248, 7, !mcsema_real_eip !50
  %250 = and i32 %249, 16, !mcsema_real_eip !50
  %251 = icmp ne i32 %250, 0, !mcsema_real_eip !50
  store i1 %251, i1* %AF, !mcsema_real_eip !50
  %252 = trunc i32 %247 to i8, !mcsema_real_eip !50
  %253 = call i8 @llvm.ctpop.i8(i8 %252), !mcsema_real_eip !50
  %254 = trunc i8 %253 to i1, !mcsema_real_eip !50
  %255 = xor i1 %254, true, !mcsema_real_eip !50
  store i1 %255, i1* %PF, !mcsema_real_eip !50
  %256 = icmp eq i32 %247, 0, !mcsema_real_eip !50
  store i1 %256, i1* %ZF, !mcsema_real_eip !50
  %257 = lshr i32 %247, 31, !mcsema_real_eip !50
  %258 = trunc i32 %257 to i1, !mcsema_real_eip !50
  store i1 %258, i1* %SF, !mcsema_real_eip !50
  %259 = icmp ult i32 %EAX_val.67, 7, !mcsema_real_eip !50
  store i1 %259, i1* %CF, !mcsema_real_eip !50
  %260 = xor i32 %EAX_val.67, 7, !mcsema_real_eip !50
  %261 = and i32 %260, %248, !mcsema_real_eip !50
  %262 = lshr i32 %261, 31, !mcsema_real_eip !50
  %263 = trunc i32 %262 to i1, !mcsema_real_eip !50
  store i1 %263, i1* %OF, !mcsema_real_eip !50
  br i1 %256, label %block_0xd7, label %block_0xcb, !mcsema_real_eip !51

block_0xcb:                                       ; preds = %209
  %_new_gep_83 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -4
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %264 = ptrtoint i64* %_allin_new_bt_84 to i64, !mcsema_real_eip !52
  %265 = inttoptr i64 %264 to i32*, !mcsema_real_eip !52
  store i32 -5, i32* %265, !mcsema_real_eip !52
  br label %block_0x417, !mcsema_real_eip !53

block_0xd7:                                       ; preds = %209
  %_new_gep_86 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -16
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %_ptr_to_int_625 = ptrtoint i64* %_allin_new_bt_87 to i64
  %_offset_above_rbp_628 = sub i64 %_ptr_to_int_625, %_local_end_to_int_
  %_pot_address_in_parent_stack_629 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_628
  %_cond1_630 = icmp ugt i8* %_new_gep_86, %_local_stack_end_ptr_
  %_cond2_1_631 = icmp ugt i8* %_new_gep_86, %_parent_stack_end_ptr_
  %_cond2_2_632 = icmp ult i8* %_new_gep_86, %_parent_stack_start_ptr_
  %_cond2_633 = or i1 %_cond2_1_631, %_cond2_2_632
  %_cond4_634 = icmp ule i8* %_pot_address_in_parent_stack_629, %_parent_stack_end_ptr_
  %_cond1_n_cond2_635 = and i1 %_cond1_630, %_cond2_633
  %_cond1_n_cond2_cond3_636 = and i1 %_cond1_n_cond2_635, %_cond4_634
  br i1 %_cond1_n_cond2_cond3_636, label %266, label %267

; <label>:266:                                    ; preds = %block_0xd7
  %_address_in_parent_stack_bt_638 = bitcast i8* %_pot_address_in_parent_stack_629 to i64*
  br label %267

; <label>:267:                                    ; preds = %block_0xd7, %266
  %268 = phi i64* [ %_allin_new_bt_87, %block_0xd7 ], [ %_address_in_parent_stack_bt_638, %266 ]
  %_new_load_639 = load i64, i64* %268
  store i64 %_new_load_639, i64* %XAX, !mcsema_real_eip !54
  %269 = add i64 %_new_load_639, 4, !mcsema_real_eip !55
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !55
  %271 = inttoptr i64 %269 to i8*, !mcsema_real_eip !55
  %_offset_above_rbp_642 = sub i64 %269, %_local_end_to_int_
  %_pot_address_in_parent_stack_643 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_642
  %_cond1_644 = icmp ugt i8* %271, %_local_stack_end_ptr_
  %_cond2_1_645 = icmp ugt i8* %271, %_parent_stack_end_ptr_
  %_cond2_2_646 = icmp ult i8* %271, %_parent_stack_start_ptr_
  %_cond2_647 = or i1 %_cond2_1_645, %_cond2_2_646
  %_cond4_648 = icmp ule i8* %_pot_address_in_parent_stack_643, %_parent_stack_end_ptr_
  %_cond1_n_cond2_649 = and i1 %_cond1_644, %_cond2_647
  %_cond1_n_cond2_cond3_650 = and i1 %_cond1_n_cond2_649, %_cond4_648
  br i1 %_cond1_n_cond2_cond3_650, label %272, label %273

; <label>:272:                                    ; preds = %267
  br label %273

; <label>:273:                                    ; preds = %267, %272
  %274 = phi i8* [ %271, %267 ], [ %_pot_address_in_parent_stack_643, %272 ]
  %_new_load_652 = load i8, i8* %274
  %275 = sext i8 %_new_load_652 to i32, !mcsema_real_eip !55
  %276 = zext i32 %275 to i64, !mcsema_real_eip !55
  store i64 %276, i64* %XCX, !mcsema_real_eip !55
  %ECX_val.72 = load i32, i32* %ECX.12, !mcsema_real_eip !56
  %277 = and i32 %ECX_val.72, 15, !mcsema_real_eip !56
  store i1 false, i1* %SF, !mcsema_real_eip !56
  %278 = icmp eq i32 %277, 0, !mcsema_real_eip !56
  store i1 %278, i1* %ZF, !mcsema_real_eip !56
  %279 = trunc i32 %277 to i8, !mcsema_real_eip !56
  %280 = call i8 @llvm.ctpop.i8(i8 %279), !mcsema_real_eip !56
  %281 = trunc i8 %280 to i1, !mcsema_real_eip !56
  %282 = xor i1 %281, true, !mcsema_real_eip !56
  store i1 %282, i1* %PF, !mcsema_real_eip !56
  store i1 false, i1* %OF, !mcsema_real_eip !56
  store i1 false, i1* %CF, !mcsema_real_eip !56
  store i1 undef, i1* %AF, !mcsema_real_eip !56
  %283 = zext i32 %277 to i64, !mcsema_real_eip !56
  store i64 %283, i64* %XCX, !mcsema_real_eip !56
  %ECX_val.74 = load i32, i32* %ECX.12, !mcsema_real_eip !57
  %284 = sub i32 %ECX_val.74, 1, !mcsema_real_eip !57
  %285 = xor i32 %284, %ECX_val.74, !mcsema_real_eip !57
  %286 = xor i32 %285, 1, !mcsema_real_eip !57
  %287 = and i32 %286, 16, !mcsema_real_eip !57
  %288 = icmp ne i32 %287, 0, !mcsema_real_eip !57
  store i1 %288, i1* %AF, !mcsema_real_eip !57
  %289 = trunc i32 %284 to i8, !mcsema_real_eip !57
  %290 = call i8 @llvm.ctpop.i8(i8 %289), !mcsema_real_eip !57
  %291 = trunc i8 %290 to i1, !mcsema_real_eip !57
  %292 = xor i1 %291, true, !mcsema_real_eip !57
  store i1 %292, i1* %PF, !mcsema_real_eip !57
  %293 = icmp eq i32 %284, 0, !mcsema_real_eip !57
  store i1 %293, i1* %ZF, !mcsema_real_eip !57
  %294 = lshr i32 %284, 31, !mcsema_real_eip !57
  %295 = trunc i32 %294 to i1, !mcsema_real_eip !57
  store i1 %295, i1* %SF, !mcsema_real_eip !57
  %296 = icmp ult i32 %ECX_val.74, 1, !mcsema_real_eip !57
  store i1 %296, i1* %CF, !mcsema_real_eip !57
  %297 = xor i32 %ECX_val.74, 1, !mcsema_real_eip !57
  %298 = and i32 %297, %285, !mcsema_real_eip !57
  %299 = lshr i32 %298, 31, !mcsema_real_eip !57
  %300 = trunc i32 %299 to i1, !mcsema_real_eip !57
  store i1 %300, i1* %OF, !mcsema_real_eip !57
  %301 = icmp eq i1 %293, false, !mcsema_real_eip !58
  br i1 %301, label %block_0x10e, label %block_0xeb, !mcsema_real_eip !58

block_0xeb:                                       ; preds = %273
  br i1 %_cond1_n_cond2_cond3_636, label %302, label %303

; <label>:302:                                    ; preds = %block_0xeb
  %_address_in_parent_stack_bt_666 = bitcast i8* %_pot_address_in_parent_stack_629 to i64*
  br label %303

; <label>:303:                                    ; preds = %block_0xeb, %302
  %304 = phi i64* [ %_allin_new_bt_87, %block_0xeb ], [ %_address_in_parent_stack_bt_666, %302 ]
  %_new_load_667 = load i64, i64* %304
  store i64 %_new_load_667, i64* %XAX, !mcsema_real_eip !59
  %305 = add i64 %_new_load_667, 4, !mcsema_real_eip !60
  %306 = inttoptr i64 %305 to i64*, !mcsema_real_eip !60
  %307 = inttoptr i64 %305 to i8*, !mcsema_real_eip !60
  %_offset_above_rbp_670 = sub i64 %305, %_local_end_to_int_
  %_pot_address_in_parent_stack_671 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_670
  %_cond1_672 = icmp ugt i8* %307, %_local_stack_end_ptr_
  %_cond2_1_673 = icmp ugt i8* %307, %_parent_stack_end_ptr_
  %_cond2_2_674 = icmp ult i8* %307, %_parent_stack_start_ptr_
  %_cond2_675 = or i1 %_cond2_1_673, %_cond2_2_674
  %_cond4_676 = icmp ule i8* %_pot_address_in_parent_stack_671, %_parent_stack_end_ptr_
  %_cond1_n_cond2_677 = and i1 %_cond1_672, %_cond2_675
  %_cond1_n_cond2_cond3_678 = and i1 %_cond1_n_cond2_677, %_cond4_676
  br i1 %_cond1_n_cond2_cond3_678, label %308, label %309

; <label>:308:                                    ; preds = %303
  br label %309

; <label>:309:                                    ; preds = %303, %308
  %310 = phi i8* [ %307, %303 ], [ %_pot_address_in_parent_stack_671, %308 ]
  %_new_load_680 = load i8, i8* %310
  %311 = sext i8 %_new_load_680 to i32, !mcsema_real_eip !60
  %312 = zext i32 %311 to i64, !mcsema_real_eip !60
  store i64 %312, i64* %XCX, !mcsema_real_eip !60
  %ECX_val.78 = load i32, i32* %ECX.12, !mcsema_real_eip !61
  %313 = and i32 %ECX_val.78, 240, !mcsema_real_eip !61
  store i1 false, i1* %SF, !mcsema_real_eip !61
  %314 = icmp eq i32 %313, 0, !mcsema_real_eip !61
  store i1 %314, i1* %ZF, !mcsema_real_eip !61
  %315 = trunc i32 %313 to i8, !mcsema_real_eip !61
  %316 = call i8 @llvm.ctpop.i8(i8 %315), !mcsema_real_eip !61
  %317 = trunc i8 %316 to i1, !mcsema_real_eip !61
  %318 = xor i1 %317, true, !mcsema_real_eip !61
  store i1 %318, i1* %PF, !mcsema_real_eip !61
  store i1 false, i1* %OF, !mcsema_real_eip !61
  store i1 false, i1* %CF, !mcsema_real_eip !61
  store i1 undef, i1* %AF, !mcsema_real_eip !61
  %319 = zext i32 %313 to i64, !mcsema_real_eip !61
  store i64 %319, i64* %XCX, !mcsema_real_eip !61
  %ECX_val.80 = load i32, i32* %ECX.12, !mcsema_real_eip !62
  %320 = sub i32 %ECX_val.80, 48, !mcsema_real_eip !62
  %321 = xor i32 %320, %ECX_val.80, !mcsema_real_eip !62
  %322 = xor i32 %321, 48, !mcsema_real_eip !62
  %323 = and i32 %322, 16, !mcsema_real_eip !62
  %324 = icmp ne i32 %323, 0, !mcsema_real_eip !62
  store i1 %324, i1* %AF, !mcsema_real_eip !62
  %325 = trunc i32 %320 to i8, !mcsema_real_eip !62
  %326 = call i8 @llvm.ctpop.i8(i8 %325), !mcsema_real_eip !62
  %327 = trunc i8 %326 to i1, !mcsema_real_eip !62
  %328 = xor i1 %327, true, !mcsema_real_eip !62
  store i1 %328, i1* %PF, !mcsema_real_eip !62
  %329 = icmp eq i32 %320, 0, !mcsema_real_eip !62
  store i1 %329, i1* %ZF, !mcsema_real_eip !62
  %330 = lshr i32 %320, 31, !mcsema_real_eip !62
  %331 = trunc i32 %330 to i1, !mcsema_real_eip !62
  store i1 %331, i1* %SF, !mcsema_real_eip !62
  %332 = icmp ult i32 %ECX_val.80, 48, !mcsema_real_eip !62
  store i1 %332, i1* %CF, !mcsema_real_eip !62
  %333 = xor i32 %ECX_val.80, 48, !mcsema_real_eip !62
  %334 = and i32 %333, %321, !mcsema_real_eip !62
  %335 = lshr i32 %334, 31, !mcsema_real_eip !62
  %336 = trunc i32 %335 to i1, !mcsema_real_eip !62
  store i1 %336, i1* %OF, !mcsema_real_eip !62
  %337 = icmp eq i1 %329, false, !mcsema_real_eip !63
  br i1 %337, label %block_0x10e, label %block_0x102, !mcsema_real_eip !63

block_0x102:                                      ; preds = %309
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -20
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %338 = ptrtoint i64* %_allin_new_bt_93 to i64, !mcsema_real_eip !64
  %339 = inttoptr i64 %338 to i32*, !mcsema_real_eip !64
  store i32 -4, i32* %339, !mcsema_real_eip !64
  br label %block_0x11a, !mcsema_real_eip !65

block_0x10e:                                      ; preds = %309, %273
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -4
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %340 = ptrtoint i64* %_allin_new_bt_96 to i64, !mcsema_real_eip !66
  %341 = inttoptr i64 %340 to i32*, !mcsema_real_eip !66
  store i32 -6, i32* %341, !mcsema_real_eip !66
  br label %block_0x417, !mcsema_real_eip !67

block_0x11a:                                      ; preds = %block_0x102
  %_load_rbp_ptr_97 = load i8*, i8** %_RBP_ptr_
  %_new_gep_98 = getelementptr i8, i8* %_load_rbp_ptr_97, i64 -16
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  %_ptr_to_int_681 = ptrtoint i64* %_allin_new_bt_99 to i64
  %_offset_above_rbp_684 = sub i64 %_ptr_to_int_681, %_local_end_to_int_
  %_pot_address_in_parent_stack_685 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_684
  %_cond1_686 = icmp ugt i8* %_new_gep_98, %_local_stack_end_ptr_
  %_cond2_1_687 = icmp ugt i8* %_new_gep_98, %_parent_stack_end_ptr_
  %_cond2_2_688 = icmp ult i8* %_new_gep_98, %_parent_stack_start_ptr_
  %_cond2_689 = or i1 %_cond2_1_687, %_cond2_2_688
  %_cond4_690 = icmp ule i8* %_pot_address_in_parent_stack_685, %_parent_stack_end_ptr_
  %_cond1_n_cond2_691 = and i1 %_cond1_686, %_cond2_689
  %_cond1_n_cond2_cond3_692 = and i1 %_cond1_n_cond2_691, %_cond4_690
  br i1 %_cond1_n_cond2_cond3_692, label %342, label %343

; <label>:342:                                    ; preds = %block_0x11a
  %_address_in_parent_stack_bt_694 = bitcast i8* %_pot_address_in_parent_stack_685 to i64*
  br label %343

; <label>:343:                                    ; preds = %block_0x11a, %342
  %344 = phi i64* [ %_allin_new_bt_99, %block_0x11a ], [ %_address_in_parent_stack_bt_694, %342 ]
  %_new_load_695 = load i64, i64* %344
  store i64 %_new_load_695, i64* %XAX, !mcsema_real_eip !68
  %345 = add i64 %_new_load_695, 5, !mcsema_real_eip !69
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !69
  %347 = inttoptr i64 %345 to i8*, !mcsema_real_eip !69
  %_offset_above_rbp_698 = sub i64 %345, %_local_end_to_int_
  %_pot_address_in_parent_stack_699 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_698
  %_cond1_700 = icmp ugt i8* %347, %_local_stack_end_ptr_
  %_cond2_1_701 = icmp ugt i8* %347, %_parent_stack_end_ptr_
  %_cond2_2_702 = icmp ult i8* %347, %_parent_stack_start_ptr_
  %_cond2_703 = or i1 %_cond2_1_701, %_cond2_2_702
  %_cond4_704 = icmp ule i8* %_pot_address_in_parent_stack_699, %_parent_stack_end_ptr_
  %_cond1_n_cond2_705 = and i1 %_cond1_700, %_cond2_703
  %_cond1_n_cond2_cond3_706 = and i1 %_cond1_n_cond2_705, %_cond4_704
  br i1 %_cond1_n_cond2_cond3_706, label %348, label %349

; <label>:348:                                    ; preds = %343
  br label %349

; <label>:349:                                    ; preds = %343, %348
  %350 = phi i8* [ %347, %343 ], [ %_pot_address_in_parent_stack_699, %348 ]
  %_new_load_708 = load i8, i8* %350
  %351 = sext i8 %_new_load_708 to i32, !mcsema_real_eip !69
  %352 = zext i32 %351 to i64, !mcsema_real_eip !69
  store i64 %352, i64* %XCX, !mcsema_real_eip !69
  %ECX_val.86 = load i32, i32* %ECX.12, !mcsema_real_eip !70
  %353 = and i32 %ECX_val.86, 15, !mcsema_real_eip !70
  store i1 false, i1* %SF, !mcsema_real_eip !70
  %354 = icmp eq i32 %353, 0, !mcsema_real_eip !70
  store i1 %354, i1* %ZF, !mcsema_real_eip !70
  %355 = trunc i32 %353 to i8, !mcsema_real_eip !70
  %356 = call i8 @llvm.ctpop.i8(i8 %355), !mcsema_real_eip !70
  %357 = trunc i8 %356 to i1, !mcsema_real_eip !70
  %358 = xor i1 %357, true, !mcsema_real_eip !70
  store i1 %358, i1* %PF, !mcsema_real_eip !70
  store i1 false, i1* %OF, !mcsema_real_eip !70
  store i1 false, i1* %CF, !mcsema_real_eip !70
  store i1 undef, i1* %AF, !mcsema_real_eip !70
  %359 = zext i32 %353 to i64, !mcsema_real_eip !70
  store i64 %359, i64* %XCX, !mcsema_real_eip !70
  %CL.87 = bitcast i64* %XCX to i8*, !mcsema_real_eip !71
  %CL_val.88 = load i8, i8* %CL.87, !mcsema_real_eip !71
  %DL.89 = bitcast i64* %XDX to i8*, !mcsema_real_eip !71
  store i8 %CL_val.88, i8* %DL.89, !mcsema_real_eip !71
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_97, i64 -33
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %360 = ptrtoint i64* %_allin_new_bt_102 to i64, !mcsema_real_eip !72
  %361 = inttoptr i64 %360 to i8*, !mcsema_real_eip !72
  store i8 %CL_val.88, i8* %361, !mcsema_real_eip !72
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -16
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %_ptr_to_int_709 = ptrtoint i64* %_allin_new_bt_105 to i64
  %_offset_above_rbp_712 = sub i64 %_ptr_to_int_709, %_local_end_to_int_
  %_pot_address_in_parent_stack_713 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_712
  %_cond1_714 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_715 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_716 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_717 = or i1 %_cond2_1_715, %_cond2_2_716
  %_cond4_718 = icmp ule i8* %_pot_address_in_parent_stack_713, %_parent_stack_end_ptr_
  %_cond1_n_cond2_719 = and i1 %_cond1_714, %_cond2_717
  %_cond1_n_cond2_cond3_720 = and i1 %_cond1_n_cond2_719, %_cond4_718
  br i1 %_cond1_n_cond2_cond3_720, label %362, label %363

; <label>:362:                                    ; preds = %349
  %_address_in_parent_stack_bt_722 = bitcast i8* %_pot_address_in_parent_stack_713 to i64*
  br label %363

; <label>:363:                                    ; preds = %349, %362
  %364 = phi i64* [ %_allin_new_bt_105, %349 ], [ %_address_in_parent_stack_bt_722, %362 ]
  %_new_load_723 = load i64, i64* %364
  store i64 %_new_load_723, i64* %XAX, !mcsema_real_eip !73
  %365 = add i64 %_new_load_723, 5, !mcsema_real_eip !74
  %366 = inttoptr i64 %365 to i64*, !mcsema_real_eip !74
  %367 = inttoptr i64 %365 to i8*, !mcsema_real_eip !74
  %_offset_above_rbp_726 = sub i64 %365, %_local_end_to_int_
  %_pot_address_in_parent_stack_727 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_726
  %_cond1_728 = icmp ugt i8* %367, %_local_stack_end_ptr_
  %_cond2_1_729 = icmp ugt i8* %367, %_parent_stack_end_ptr_
  %_cond2_2_730 = icmp ult i8* %367, %_parent_stack_start_ptr_
  %_cond2_731 = or i1 %_cond2_1_729, %_cond2_2_730
  %_cond4_732 = icmp ule i8* %_pot_address_in_parent_stack_727, %_parent_stack_end_ptr_
  %_cond1_n_cond2_733 = and i1 %_cond1_728, %_cond2_731
  %_cond1_n_cond2_cond3_734 = and i1 %_cond1_n_cond2_733, %_cond4_732
  br i1 %_cond1_n_cond2_cond3_734, label %368, label %369

; <label>:368:                                    ; preds = %363
  br label %369

; <label>:369:                                    ; preds = %363, %368
  %370 = phi i8* [ %367, %363 ], [ %_pot_address_in_parent_stack_727, %368 ]
  %_new_load_736 = load i8, i8* %370
  %371 = sext i8 %_new_load_736 to i32, !mcsema_real_eip !74
  %372 = zext i32 %371 to i64, !mcsema_real_eip !74
  store i64 %372, i64* %XCX, !mcsema_real_eip !74
  %ECX_val.96 = load i32, i32* %ECX.12, !mcsema_real_eip !75
  %373 = and i32 %ECX_val.96, 240, !mcsema_real_eip !75
  store i1 false, i1* %SF, !mcsema_real_eip !75
  %374 = icmp eq i32 %373, 0, !mcsema_real_eip !75
  store i1 %374, i1* %ZF, !mcsema_real_eip !75
  %375 = trunc i32 %373 to i8, !mcsema_real_eip !75
  %376 = call i8 @llvm.ctpop.i8(i8 %375), !mcsema_real_eip !75
  %377 = trunc i8 %376 to i1, !mcsema_real_eip !75
  %378 = xor i1 %377, true, !mcsema_real_eip !75
  store i1 %378, i1* %PF, !mcsema_real_eip !75
  store i1 false, i1* %OF, !mcsema_real_eip !75
  store i1 false, i1* %CF, !mcsema_real_eip !75
  store i1 undef, i1* %AF, !mcsema_real_eip !75
  %379 = zext i32 %373 to i64, !mcsema_real_eip !75
  store i64 %379, i64* %XCX, !mcsema_real_eip !75
  %CL_val.98 = load i8, i8* %CL.87, !mcsema_real_eip !76
  store i8 %CL_val.98, i8* %DL.89, !mcsema_real_eip !76
  %_new_gep_107 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -34
  %_allin_new_bt_108 = bitcast i8* %_new_gep_107 to i64*
  %380 = ptrtoint i64* %_allin_new_bt_108 to i64, !mcsema_real_eip !77
  %381 = inttoptr i64 %380 to i8*, !mcsema_real_eip !77
  store i8 %CL_val.98, i8* %381, !mcsema_real_eip !77
  %_load_rbp_ptr_109 = load i8*, i8** %_RBP_ptr_
  %_new_gep_110 = getelementptr i8, i8* %_load_rbp_ptr_109, i64 -33
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %382 = ptrtoint i64* %_allin_new_bt_111 to i64, !mcsema_real_eip !78
  %383 = inttoptr i64 %382 to i8*, !mcsema_real_eip !78
  %_offset_above_rbp_739 = sub i64 %382, %_local_end_to_int_
  %_pot_address_in_parent_stack_740 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_739
  %_cond1_741 = icmp ugt i8* %383, %_local_stack_end_ptr_
  %_cond2_1_742 = icmp ugt i8* %383, %_parent_stack_end_ptr_
  %_cond2_2_743 = icmp ult i8* %383, %_parent_stack_start_ptr_
  %_cond2_744 = or i1 %_cond2_1_742, %_cond2_2_743
  %_cond4_745 = icmp ule i8* %_pot_address_in_parent_stack_740, %_parent_stack_end_ptr_
  %_cond1_n_cond2_746 = and i1 %_cond1_741, %_cond2_744
  %_cond1_n_cond2_cond3_747 = and i1 %_cond1_n_cond2_746, %_cond4_745
  br i1 %_cond1_n_cond2_cond3_747, label %384, label %385

; <label>:384:                                    ; preds = %369
  br label %385

; <label>:385:                                    ; preds = %369, %384
  %386 = phi i8* [ %383, %369 ], [ %_pot_address_in_parent_stack_740, %384 ]
  %_new_load_749 = load i8, i8* %386
  %387 = zext i8 %_new_load_749 to i32, !mcsema_real_eip !78
  %388 = zext i32 %387 to i64, !mcsema_real_eip !78
  store i64 %388, i64* %XCX, !mcsema_real_eip !78
  %ECX_val.105 = load i32, i32* %ECX.12, !mcsema_real_eip !79
  %389 = sub i32 %ECX_val.105, 3, !mcsema_real_eip !79
  %390 = xor i32 %389, %ECX_val.105, !mcsema_real_eip !79
  %391 = xor i32 %390, 3, !mcsema_real_eip !79
  %392 = and i32 %391, 16, !mcsema_real_eip !79
  %393 = icmp ne i32 %392, 0, !mcsema_real_eip !79
  store i1 %393, i1* %AF, !mcsema_real_eip !79
  %394 = trunc i32 %389 to i8, !mcsema_real_eip !79
  %395 = call i8 @llvm.ctpop.i8(i8 %394), !mcsema_real_eip !79
  %396 = trunc i8 %395 to i1, !mcsema_real_eip !79
  %397 = xor i1 %396, true, !mcsema_real_eip !79
  store i1 %397, i1* %PF, !mcsema_real_eip !79
  %398 = icmp eq i32 %389, 0, !mcsema_real_eip !79
  store i1 %398, i1* %ZF, !mcsema_real_eip !79
  %399 = lshr i32 %389, 31, !mcsema_real_eip !79
  %400 = trunc i32 %399 to i1, !mcsema_real_eip !79
  store i1 %400, i1* %SF, !mcsema_real_eip !79
  %401 = icmp ult i32 %ECX_val.105, 3, !mcsema_real_eip !79
  store i1 %401, i1* %CF, !mcsema_real_eip !79
  %402 = xor i32 %ECX_val.105, 3, !mcsema_real_eip !79
  %403 = and i32 %402, %390, !mcsema_real_eip !79
  %404 = lshr i32 %403, 31, !mcsema_real_eip !79
  %405 = trunc i32 %404 to i1, !mcsema_real_eip !79
  store i1 %405, i1* %OF, !mcsema_real_eip !79
  %406 = icmp eq i1 %398, false, !mcsema_real_eip !80
  br i1 %406, label %block_0x165, label %block_0x14a, !mcsema_real_eip !80

block_0x14a:                                      ; preds = %385
  %_new_gep_113 = getelementptr i8, i8* %_load_rbp_ptr_109, i64 -34
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %407 = ptrtoint i64* %_allin_new_bt_114 to i64, !mcsema_real_eip !81
  %408 = inttoptr i64 %407 to i8*, !mcsema_real_eip !81
  %_offset_above_rbp_752 = sub i64 %407, %_local_end_to_int_
  %_pot_address_in_parent_stack_753 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_752
  %_cond1_754 = icmp ugt i8* %408, %_local_stack_end_ptr_
  %_cond2_1_755 = icmp ugt i8* %408, %_parent_stack_end_ptr_
  %_cond2_2_756 = icmp ult i8* %408, %_parent_stack_start_ptr_
  %_cond2_757 = or i1 %_cond2_1_755, %_cond2_2_756
  %_cond4_758 = icmp ule i8* %_pot_address_in_parent_stack_753, %_parent_stack_end_ptr_
  %_cond1_n_cond2_759 = and i1 %_cond1_754, %_cond2_757
  %_cond1_n_cond2_cond3_760 = and i1 %_cond1_n_cond2_759, %_cond4_758
  br i1 %_cond1_n_cond2_cond3_760, label %409, label %410

; <label>:409:                                    ; preds = %block_0x14a
  br label %410

; <label>:410:                                    ; preds = %block_0x14a, %409
  %411 = phi i8* [ %408, %block_0x14a ], [ %_pot_address_in_parent_stack_753, %409 ]
  %_new_load_762 = load i8, i8* %411
  %412 = zext i8 %_new_load_762 to i32, !mcsema_real_eip !81
  %413 = zext i32 %412 to i64, !mcsema_real_eip !81
  store i64 %413, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.108 = load i32, i32* %EAX.9, !mcsema_real_eip !82
  %414 = sub i32 %EAX_val.108, 96, !mcsema_real_eip !82
  %415 = xor i32 %414, %EAX_val.108, !mcsema_real_eip !82
  %416 = xor i32 %415, 96, !mcsema_real_eip !82
  %417 = and i32 %416, 16, !mcsema_real_eip !82
  %418 = icmp ne i32 %417, 0, !mcsema_real_eip !82
  store i1 %418, i1* %AF, !mcsema_real_eip !82
  %419 = trunc i32 %414 to i8, !mcsema_real_eip !82
  %420 = call i8 @llvm.ctpop.i8(i8 %419), !mcsema_real_eip !82
  %421 = trunc i8 %420 to i1, !mcsema_real_eip !82
  %422 = xor i1 %421, true, !mcsema_real_eip !82
  store i1 %422, i1* %PF, !mcsema_real_eip !82
  %423 = icmp eq i32 %414, 0, !mcsema_real_eip !82
  store i1 %423, i1* %ZF, !mcsema_real_eip !82
  %424 = lshr i32 %414, 31, !mcsema_real_eip !82
  %425 = trunc i32 %424 to i1, !mcsema_real_eip !82
  store i1 %425, i1* %SF, !mcsema_real_eip !82
  %426 = icmp ult i32 %EAX_val.108, 96, !mcsema_real_eip !82
  store i1 %426, i1* %CF, !mcsema_real_eip !82
  %427 = xor i32 %EAX_val.108, 96, !mcsema_real_eip !82
  %428 = and i32 %427, %415, !mcsema_real_eip !82
  %429 = lshr i32 %428, 31, !mcsema_real_eip !82
  %430 = trunc i32 %429 to i1, !mcsema_real_eip !82
  store i1 %430, i1* %OF, !mcsema_real_eip !82
  %431 = icmp eq i1 %423, false, !mcsema_real_eip !83
  br i1 %431, label %block_0x165, label %block_0x157, !mcsema_real_eip !83

block_0x157:                                      ; preds = %410
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_109, i64 -20
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %432 = ptrtoint i64* %_allin_new_bt_117 to i64, !mcsema_real_eip !84
  %433 = inttoptr i64 %432 to i32*, !mcsema_real_eip !84
  %_ptr_bt_765 = bitcast i32* %433 to i8*
  %_offset_above_rbp_766 = sub i64 %432, %_local_end_to_int_
  %_pot_address_in_parent_stack_767 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_766
  %_cond1_768 = icmp ugt i8* %_ptr_bt_765, %_local_stack_end_ptr_
  %_cond2_1_769 = icmp ugt i8* %_ptr_bt_765, %_parent_stack_end_ptr_
  %_cond2_2_770 = icmp ult i8* %_ptr_bt_765, %_parent_stack_start_ptr_
  %_cond2_771 = or i1 %_cond2_1_769, %_cond2_2_770
  %_cond4_772 = icmp ule i8* %_pot_address_in_parent_stack_767, %_parent_stack_end_ptr_
  %_cond1_n_cond2_773 = and i1 %_cond1_768, %_cond2_771
  %_cond1_n_cond2_cond3_774 = and i1 %_cond1_n_cond2_773, %_cond4_772
  br i1 %_cond1_n_cond2_cond3_774, label %434, label %435

; <label>:434:                                    ; preds = %block_0x157
  %_address_in_parent_stack_bt_776 = bitcast i8* %_pot_address_in_parent_stack_767 to i32*
  br label %435

; <label>:435:                                    ; preds = %block_0x157, %434
  %436 = phi i32* [ %433, %block_0x157 ], [ %_address_in_parent_stack_bt_776, %434 ]
  %_new_load_777 = load i32, i32* %436
  %437 = zext i32 %_new_load_777 to i64, !mcsema_real_eip !84
  store i64 %437, i64* %XAX, !mcsema_real_eip !84
  %EAX_val.111 = load i32, i32* %EAX.9, !mcsema_real_eip !85
  %438 = add i32 4, %EAX_val.111, !mcsema_real_eip !85
  %439 = xor i32 %438, %EAX_val.111, !mcsema_real_eip !85
  %440 = xor i32 %439, 4, !mcsema_real_eip !85
  %441 = and i32 %440, 16, !mcsema_real_eip !85
  %442 = icmp ne i32 %441, 0, !mcsema_real_eip !85
  store i1 %442, i1* %AF, !mcsema_real_eip !85
  %443 = lshr i32 %438, 31, !mcsema_real_eip !85
  %444 = trunc i32 %443 to i1, !mcsema_real_eip !85
  store i1 %444, i1* %SF, !mcsema_real_eip !85
  %445 = icmp eq i32 %438, 0, !mcsema_real_eip !85
  store i1 %445, i1* %ZF, !mcsema_real_eip !85
  %446 = xor i32 %EAX_val.111, 4, !mcsema_real_eip !85
  %447 = xor i32 %446, -1, !mcsema_real_eip !85
  %448 = and i32 %447, %439, !mcsema_real_eip !85
  %449 = lshr i32 %448, 31, !mcsema_real_eip !85
  %450 = and i32 %449, 1, !mcsema_real_eip !85
  %451 = trunc i32 %450 to i1, !mcsema_real_eip !85
  store i1 %451, i1* %OF, !mcsema_real_eip !85
  %452 = trunc i32 %438 to i8, !mcsema_real_eip !85
  %453 = call i8 @llvm.ctpop.i8(i8 %452), !mcsema_real_eip !85
  %454 = trunc i8 %453 to i1, !mcsema_real_eip !85
  %455 = xor i1 %454, true, !mcsema_real_eip !85
  store i1 %455, i1* %PF, !mcsema_real_eip !85
  %456 = icmp ult i32 %438, %EAX_val.111, !mcsema_real_eip !85
  store i1 %456, i1* %CF, !mcsema_real_eip !85
  %457 = zext i32 %438 to i64, !mcsema_real_eip !85
  store i64 %457, i64* %XAX, !mcsema_real_eip !85
  %EAX_val.114 = load i32, i32* %EAX.9, !mcsema_real_eip !86
  store i32 %EAX_val.114, i32* %433, !mcsema_real_eip !86
  br label %block_0x16e, !mcsema_real_eip !87

block_0x165:                                      ; preds = %410, %385
  %_new_gep_122 = getelementptr i8, i8* %_load_rbp_ptr_109, i64 -20
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %458 = ptrtoint i64* %_allin_new_bt_123 to i64, !mcsema_real_eip !88
  %459 = inttoptr i64 %458 to i32*, !mcsema_real_eip !88
  %_ptr_bt_780 = bitcast i32* %459 to i8*
  %_offset_above_rbp_781 = sub i64 %458, %_local_end_to_int_
  %_pot_address_in_parent_stack_782 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_781
  %_cond1_783 = icmp ugt i8* %_ptr_bt_780, %_local_stack_end_ptr_
  %_cond2_1_784 = icmp ugt i8* %_ptr_bt_780, %_parent_stack_end_ptr_
  %_cond2_2_785 = icmp ult i8* %_ptr_bt_780, %_parent_stack_start_ptr_
  %_cond2_786 = or i1 %_cond2_1_784, %_cond2_2_785
  %_cond4_787 = icmp ule i8* %_pot_address_in_parent_stack_782, %_parent_stack_end_ptr_
  %_cond1_n_cond2_788 = and i1 %_cond1_783, %_cond2_786
  %_cond1_n_cond2_cond3_789 = and i1 %_cond1_n_cond2_788, %_cond4_787
  br i1 %_cond1_n_cond2_cond3_789, label %460, label %461

; <label>:460:                                    ; preds = %block_0x165
  %_address_in_parent_stack_bt_791 = bitcast i8* %_pot_address_in_parent_stack_782 to i32*
  br label %461

; <label>:461:                                    ; preds = %block_0x165, %460
  %462 = phi i32* [ %459, %block_0x165 ], [ %_address_in_parent_stack_bt_791, %460 ]
  %_new_load_792 = load i32, i32* %462
  %463 = zext i32 %_new_load_792 to i64, !mcsema_real_eip !88
  store i64 %463, i64* %XAX, !mcsema_real_eip !88
  %EAX_val.117 = load i32, i32* %EAX.9, !mcsema_real_eip !89
  %464 = add i32 5, %EAX_val.117, !mcsema_real_eip !89
  %465 = xor i32 %464, %EAX_val.117, !mcsema_real_eip !89
  %466 = xor i32 %465, 5, !mcsema_real_eip !89
  %467 = and i32 %466, 16, !mcsema_real_eip !89
  %468 = icmp ne i32 %467, 0, !mcsema_real_eip !89
  store i1 %468, i1* %AF, !mcsema_real_eip !89
  %469 = lshr i32 %464, 31, !mcsema_real_eip !89
  %470 = trunc i32 %469 to i1, !mcsema_real_eip !89
  store i1 %470, i1* %SF, !mcsema_real_eip !89
  %471 = icmp eq i32 %464, 0, !mcsema_real_eip !89
  store i1 %471, i1* %ZF, !mcsema_real_eip !89
  %472 = xor i32 %EAX_val.117, 5, !mcsema_real_eip !89
  %473 = xor i32 %472, -1, !mcsema_real_eip !89
  %474 = and i32 %473, %465, !mcsema_real_eip !89
  %475 = lshr i32 %474, 31, !mcsema_real_eip !89
  %476 = and i32 %475, 1, !mcsema_real_eip !89
  %477 = trunc i32 %476 to i1, !mcsema_real_eip !89
  store i1 %477, i1* %OF, !mcsema_real_eip !89
  %478 = trunc i32 %464 to i8, !mcsema_real_eip !89
  %479 = call i8 @llvm.ctpop.i8(i8 %478), !mcsema_real_eip !89
  %480 = trunc i8 %479 to i1, !mcsema_real_eip !89
  %481 = xor i1 %480, true, !mcsema_real_eip !89
  store i1 %481, i1* %PF, !mcsema_real_eip !89
  %482 = icmp ult i32 %464, %EAX_val.117, !mcsema_real_eip !89
  store i1 %482, i1* %CF, !mcsema_real_eip !89
  %483 = zext i32 %464 to i64, !mcsema_real_eip !89
  store i64 %483, i64* %XAX, !mcsema_real_eip !89
  %EAX_val.120 = load i32, i32* %EAX.9, !mcsema_real_eip !90
  store i32 %EAX_val.120, i32* %459, !mcsema_real_eip !90
  br label %block_0x16e, !mcsema_real_eip !91

block_0x16e:                                      ; preds = %461, %435
  %_load_rbp_ptr_127 = load i8*, i8** %_RBP_ptr_
  %_new_gep_128 = getelementptr i8, i8* %_load_rbp_ptr_127, i64 -16
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %_ptr_to_int_793 = ptrtoint i64* %_allin_new_bt_129 to i64
  %_offset_above_rbp_796 = sub i64 %_ptr_to_int_793, %_local_end_to_int_
  %_pot_address_in_parent_stack_797 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_796
  %_cond1_798 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_799 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_800 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_801 = or i1 %_cond2_1_799, %_cond2_2_800
  %_cond4_802 = icmp ule i8* %_pot_address_in_parent_stack_797, %_parent_stack_end_ptr_
  %_cond1_n_cond2_803 = and i1 %_cond1_798, %_cond2_801
  %_cond1_n_cond2_cond3_804 = and i1 %_cond1_n_cond2_803, %_cond4_802
  br i1 %_cond1_n_cond2_cond3_804, label %484, label %485

; <label>:484:                                    ; preds = %block_0x16e
  %_address_in_parent_stack_bt_806 = bitcast i8* %_pot_address_in_parent_stack_797 to i64*
  br label %485

; <label>:485:                                    ; preds = %block_0x16e, %484
  %486 = phi i64* [ %_allin_new_bt_129, %block_0x16e ], [ %_address_in_parent_stack_bt_806, %484 ]
  %_new_load_807 = load i64, i64* %486
  store i64 %_new_load_807, i64* %XAX, !mcsema_real_eip !91
  %487 = add i64 %_new_load_807, 6, !mcsema_real_eip !92
  %488 = inttoptr i64 %487 to i64*, !mcsema_real_eip !92
  %489 = inttoptr i64 %487 to i8*, !mcsema_real_eip !92
  %_offset_above_rbp_810 = sub i64 %487, %_local_end_to_int_
  %_pot_address_in_parent_stack_811 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_810
  %_cond1_812 = icmp ugt i8* %489, %_local_stack_end_ptr_
  %_cond2_1_813 = icmp ugt i8* %489, %_parent_stack_end_ptr_
  %_cond2_2_814 = icmp ult i8* %489, %_parent_stack_start_ptr_
  %_cond2_815 = or i1 %_cond2_1_813, %_cond2_2_814
  %_cond4_816 = icmp ule i8* %_pot_address_in_parent_stack_811, %_parent_stack_end_ptr_
  %_cond1_n_cond2_817 = and i1 %_cond1_812, %_cond2_815
  %_cond1_n_cond2_cond3_818 = and i1 %_cond1_n_cond2_817, %_cond4_816
  br i1 %_cond1_n_cond2_cond3_818, label %490, label %491

; <label>:490:                                    ; preds = %485
  br label %491

; <label>:491:                                    ; preds = %485, %490
  %492 = phi i8* [ %489, %485 ], [ %_pot_address_in_parent_stack_811, %490 ]
  %_new_load_820 = load i8, i8* %492
  %493 = zext i8 %_new_load_820 to i32, !mcsema_real_eip !92
  %494 = zext i32 %493 to i64, !mcsema_real_eip !92
  store i64 %494, i64* %XDI, !mcsema_real_eip !92
  %_load_rsp_ptr_130 = load i8*, i8** %_RSP_ptr_
  %RSP_val.124 = load i64, i64* %XSP, !mcsema_real_eip !93
  %_new_gep_131 = getelementptr i8, i8* %_load_rsp_ptr_130, i64 -8
  %495 = sub i64 %RSP_val.124, 8, !mcsema_real_eip !93
  %_allin_new_bt_132 = bitcast i8* %_new_gep_131 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_132, !mcsema_real_eip !93
  store volatile i8* %_new_gep_131, i8** %_RSP_ptr_
  store i64 %495, i64* %XSP, !mcsema_real_eip !93
  %496 = call x86_64_sysvcc i64 @_to_byte(i64 %494)
  %_rsp_fix_422 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_423 = getelementptr i8, i8* %_rsp_fix_422, i64 8
  store i8* %_gep_fix_423, i8** %_RSP_ptr_
  store i64 %496, i64* %XAX, !mcsema_real_eip !93
  %AL.125 = bitcast i64* %XAX to i8*, !mcsema_real_eip !94
  %AL_val.126 = load i8, i8* %AL.125, !mcsema_real_eip !94
  store i8 %AL_val.126, i8* %CL.87, !mcsema_real_eip !94
  %_load_rbp_ptr_133 = load i8*, i8** %_RBP_ptr_
  %_new_gep_134 = getelementptr i8, i8* %_load_rbp_ptr_133, i64 -35
  %_allin_new_bt_135 = bitcast i8* %_new_gep_134 to i64*
  %497 = ptrtoint i64* %_allin_new_bt_135 to i64, !mcsema_real_eip !95
  %498 = inttoptr i64 %497 to i8*, !mcsema_real_eip !95
  store i8 %AL_val.126, i8* %498, !mcsema_real_eip !95
  %_load_rbp_ptr_136 = load i8*, i8** %_RBP_ptr_
  %_new_gep_137 = getelementptr i8, i8* %_load_rbp_ptr_136, i64 -16
  %_allin_new_bt_138 = bitcast i8* %_new_gep_137 to i64*
  %_ptr_to_int_821 = ptrtoint i64* %_allin_new_bt_138 to i64
  %_offset_above_rbp_824 = sub i64 %_ptr_to_int_821, %_local_end_to_int_
  %_pot_address_in_parent_stack_825 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_824
  %_cond1_826 = icmp ugt i8* %_new_gep_137, %_local_stack_end_ptr_
  %_cond2_1_827 = icmp ugt i8* %_new_gep_137, %_parent_stack_end_ptr_
  %_cond2_2_828 = icmp ult i8* %_new_gep_137, %_parent_stack_start_ptr_
  %_cond2_829 = or i1 %_cond2_1_827, %_cond2_2_828
  %_cond4_830 = icmp ule i8* %_pot_address_in_parent_stack_825, %_parent_stack_end_ptr_
  %_cond1_n_cond2_831 = and i1 %_cond1_826, %_cond2_829
  %_cond1_n_cond2_cond3_832 = and i1 %_cond1_n_cond2_831, %_cond4_830
  br i1 %_cond1_n_cond2_cond3_832, label %499, label %500

; <label>:499:                                    ; preds = %491
  %_address_in_parent_stack_bt_834 = bitcast i8* %_pot_address_in_parent_stack_825 to i64*
  br label %500

; <label>:500:                                    ; preds = %491, %499
  %501 = phi i64* [ %_allin_new_bt_138, %491 ], [ %_address_in_parent_stack_bt_834, %499 ]
  %_new_load_835 = load i64, i64* %501
  store i64 %_new_load_835, i64* %XDX, !mcsema_real_eip !96
  %502 = add i64 %_new_load_835, 7, !mcsema_real_eip !97
  %503 = inttoptr i64 %502 to i64*, !mcsema_real_eip !97
  %504 = inttoptr i64 %502 to i8*, !mcsema_real_eip !97
  %_offset_above_rbp_838 = sub i64 %502, %_local_end_to_int_
  %_pot_address_in_parent_stack_839 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_838
  %_cond1_840 = icmp ugt i8* %504, %_local_stack_end_ptr_
  %_cond2_1_841 = icmp ugt i8* %504, %_parent_stack_end_ptr_
  %_cond2_2_842 = icmp ult i8* %504, %_parent_stack_start_ptr_
  %_cond2_843 = or i1 %_cond2_1_841, %_cond2_2_842
  %_cond4_844 = icmp ule i8* %_pot_address_in_parent_stack_839, %_parent_stack_end_ptr_
  %_cond1_n_cond2_845 = and i1 %_cond1_840, %_cond2_843
  %_cond1_n_cond2_cond3_846 = and i1 %_cond1_n_cond2_845, %_cond4_844
  br i1 %_cond1_n_cond2_cond3_846, label %505, label %506

; <label>:505:                                    ; preds = %500
  br label %506

; <label>:506:                                    ; preds = %500, %505
  %507 = phi i8* [ %504, %500 ], [ %_pot_address_in_parent_stack_839, %505 ]
  %_new_load_848 = load i8, i8* %507
  %508 = zext i8 %_new_load_848 to i32, !mcsema_real_eip !97
  %509 = zext i32 %508 to i64, !mcsema_real_eip !97
  store i64 %509, i64* %XDI, !mcsema_real_eip !97
  %_load_rsp_ptr_139 = load i8*, i8** %_RSP_ptr_
  %RSP_val.134 = load i64, i64* %XSP, !mcsema_real_eip !98
  %_new_gep_140 = getelementptr i8, i8* %_load_rsp_ptr_139, i64 -8
  %510 = sub i64 %RSP_val.134, 8, !mcsema_real_eip !98
  %_allin_new_bt_141 = bitcast i8* %_new_gep_140 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_141, !mcsema_real_eip !98
  store volatile i8* %_new_gep_140, i8** %_RSP_ptr_
  store i64 %510, i64* %XSP, !mcsema_real_eip !98
  %511 = call x86_64_sysvcc i64 @_to_byte(i64 %509)
  %_rsp_fix_424 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_425 = getelementptr i8, i8* %_rsp_fix_424, i64 8
  store i8* %_gep_fix_425, i8** %_RSP_ptr_
  store i64 %511, i64* %XAX, !mcsema_real_eip !98
  %_load_rbp_ptr_142 = load i8*, i8** %_RBP_ptr_
  %_new_gep_143 = getelementptr i8, i8* %_load_rbp_ptr_142, i64 -35
  %_allin_new_bt_144 = bitcast i8* %_new_gep_143 to i64*
  %512 = ptrtoint i64* %_allin_new_bt_144 to i64, !mcsema_real_eip !99
  %513 = inttoptr i64 %512 to i8*, !mcsema_real_eip !99
  %_offset_above_rbp_851 = sub i64 %512, %_local_end_to_int_
  %_pot_address_in_parent_stack_852 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_851
  %_cond1_853 = icmp ugt i8* %513, %_local_stack_end_ptr_
  %_cond2_1_854 = icmp ugt i8* %513, %_parent_stack_end_ptr_
  %_cond2_2_855 = icmp ult i8* %513, %_parent_stack_start_ptr_
  %_cond2_856 = or i1 %_cond2_1_854, %_cond2_2_855
  %_cond4_857 = icmp ule i8* %_pot_address_in_parent_stack_852, %_parent_stack_end_ptr_
  %_cond1_n_cond2_858 = and i1 %_cond1_853, %_cond2_856
  %_cond1_n_cond2_cond3_859 = and i1 %_cond1_n_cond2_858, %_cond4_857
  br i1 %_cond1_n_cond2_cond3_859, label %514, label %515

; <label>:514:                                    ; preds = %506
  br label %515

; <label>:515:                                    ; preds = %506, %514
  %516 = phi i8* [ %513, %506 ], [ %_pot_address_in_parent_stack_852, %514 ]
  %_new_load_861 = load i8, i8* %516
  %517 = zext i8 %_new_load_861 to i32, !mcsema_real_eip !99
  %518 = zext i32 %517 to i64, !mcsema_real_eip !99
  store i64 %518, i64* %XDI, !mcsema_real_eip !99
  %EDI_val.137 = load i32, i32* %EDI.60, !mcsema_real_eip !100
  %EAX_val.139 = load i32, i32* %EAX.9, !mcsema_real_eip !100
  %519 = or i32 %EDI_val.137, %EAX_val.139, !mcsema_real_eip !100
  store i1 undef, i1* %AF, !mcsema_real_eip !100
  store i1 false, i1* %OF, !mcsema_real_eip !100
  store i1 false, i1* %CF, !mcsema_real_eip !100
  %520 = lshr i32 %519, 31, !mcsema_real_eip !100
  %521 = trunc i32 %520 to i1, !mcsema_real_eip !100
  store i1 %521, i1* %SF, !mcsema_real_eip !100
  %522 = icmp eq i32 %519, 0, !mcsema_real_eip !100
  store i1 %522, i1* %ZF, !mcsema_real_eip !100
  %523 = trunc i32 %519 to i8, !mcsema_real_eip !100
  %524 = call i8 @llvm.ctpop.i8(i8 %523), !mcsema_real_eip !100
  %525 = trunc i8 %524 to i1, !mcsema_real_eip !100
  %526 = xor i1 %525, true, !mcsema_real_eip !100
  store i1 %526, i1* %PF, !mcsema_real_eip !100
  %527 = zext i32 %519 to i64, !mcsema_real_eip !100
  store i64 %527, i64* %XDI, !mcsema_real_eip !100
  %DIL.140 = bitcast i64* %XDI to i8*, !mcsema_real_eip !101
  %DIL_val.141 = load i8, i8* %DIL.140, !mcsema_real_eip !101
  store i8 %DIL_val.141, i8* %CL.87, !mcsema_real_eip !101
  store i8 %DIL_val.141, i8* %513, !mcsema_real_eip !102
  %_load_rbp_ptr_148 = load i8*, i8** %_RBP_ptr_
  %_new_gep_149 = getelementptr i8, i8* %_load_rbp_ptr_148, i64 -35
  %_allin_new_bt_150 = bitcast i8* %_new_gep_149 to i64*
  %528 = ptrtoint i64* %_allin_new_bt_150 to i64, !mcsema_real_eip !103
  %529 = inttoptr i64 %528 to i8*, !mcsema_real_eip !103
  %_offset_above_rbp_864 = sub i64 %528, %_local_end_to_int_
  %_pot_address_in_parent_stack_865 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_864
  %_cond1_866 = icmp ugt i8* %529, %_local_stack_end_ptr_
  %_cond2_1_867 = icmp ugt i8* %529, %_parent_stack_end_ptr_
  %_cond2_2_868 = icmp ult i8* %529, %_parent_stack_start_ptr_
  %_cond2_869 = or i1 %_cond2_1_867, %_cond2_2_868
  %_cond4_870 = icmp ule i8* %_pot_address_in_parent_stack_865, %_parent_stack_end_ptr_
  %_cond1_n_cond2_871 = and i1 %_cond1_866, %_cond2_869
  %_cond1_n_cond2_cond3_872 = and i1 %_cond1_n_cond2_871, %_cond4_870
  br i1 %_cond1_n_cond2_cond3_872, label %530, label %531

; <label>:530:                                    ; preds = %515
  br label %531

; <label>:531:                                    ; preds = %515, %530
  %532 = phi i8* [ %529, %515 ], [ %_pot_address_in_parent_stack_865, %530 ]
  %_new_load_874 = load i8, i8* %532
  %533 = zext i8 %_new_load_874 to i32, !mcsema_real_eip !103
  %534 = zext i32 %533 to i64, !mcsema_real_eip !103
  store i64 %534, i64* %XAX, !mcsema_real_eip !103
  %EAX_val.148 = load i32, i32* %EAX.9, !mcsema_real_eip !104
  %535 = xor i32 %EAX_val.148, -1, !mcsema_real_eip !104
  store i1 false, i1* %CF, !mcsema_real_eip !104
  store i1 false, i1* %OF, !mcsema_real_eip !104
  %536 = lshr i32 %535, 31, !mcsema_real_eip !104
  %537 = trunc i32 %536 to i1, !mcsema_real_eip !104
  store i1 %537, i1* %SF, !mcsema_real_eip !104
  %538 = icmp eq i32 %535, 0, !mcsema_real_eip !104
  store i1 %538, i1* %ZF, !mcsema_real_eip !104
  %539 = trunc i32 %535 to i8, !mcsema_real_eip !104
  %540 = call i8 @llvm.ctpop.i8(i8 %539), !mcsema_real_eip !104
  %541 = trunc i8 %540 to i1, !mcsema_real_eip !104
  %542 = xor i1 %541, true, !mcsema_real_eip !104
  store i1 %542, i1* %PF, !mcsema_real_eip !104
  store i1 undef, i1* %AF, !mcsema_real_eip !104
  %543 = zext i32 %535 to i64, !mcsema_real_eip !104
  store i64 %543, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.150 = load i32, i32* %EAX.9, !mcsema_real_eip !105
  %544 = sub i32 %EAX_val.150, 70, !mcsema_real_eip !105
  %545 = xor i32 %544, %EAX_val.150, !mcsema_real_eip !105
  %546 = xor i32 %545, 70, !mcsema_real_eip !105
  %547 = and i32 %546, 16, !mcsema_real_eip !105
  %548 = icmp ne i32 %547, 0, !mcsema_real_eip !105
  store i1 %548, i1* %AF, !mcsema_real_eip !105
  %549 = trunc i32 %544 to i8, !mcsema_real_eip !105
  %550 = call i8 @llvm.ctpop.i8(i8 %549), !mcsema_real_eip !105
  %551 = trunc i8 %550 to i1, !mcsema_real_eip !105
  %552 = xor i1 %551, true, !mcsema_real_eip !105
  store i1 %552, i1* %PF, !mcsema_real_eip !105
  %553 = icmp eq i32 %544, 0, !mcsema_real_eip !105
  store i1 %553, i1* %ZF, !mcsema_real_eip !105
  %554 = lshr i32 %544, 31, !mcsema_real_eip !105
  %555 = trunc i32 %554 to i1, !mcsema_real_eip !105
  store i1 %555, i1* %SF, !mcsema_real_eip !105
  %556 = icmp ult i32 %EAX_val.150, 70, !mcsema_real_eip !105
  store i1 %556, i1* %CF, !mcsema_real_eip !105
  %557 = xor i32 %EAX_val.150, 70, !mcsema_real_eip !105
  %558 = and i32 %557, %545, !mcsema_real_eip !105
  %559 = lshr i32 %558, 31, !mcsema_real_eip !105
  %560 = trunc i32 %559 to i1, !mcsema_real_eip !105
  store i1 %560, i1* %OF, !mcsema_real_eip !105
  %561 = icmp eq i1 %553, false, !mcsema_real_eip !106
  br i1 %561, label %block_0x1b7, label %block_0x1a9, !mcsema_real_eip !106

block_0x1a9:                                      ; preds = %531
  %_new_gep_152 = getelementptr i8, i8* %_load_rbp_ptr_148, i64 -20
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %562 = ptrtoint i64* %_allin_new_bt_153 to i64, !mcsema_real_eip !107
  %563 = inttoptr i64 %562 to i32*, !mcsema_real_eip !107
  %_ptr_bt_877 = bitcast i32* %563 to i8*
  %_offset_above_rbp_878 = sub i64 %562, %_local_end_to_int_
  %_pot_address_in_parent_stack_879 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_878
  %_cond1_880 = icmp ugt i8* %_ptr_bt_877, %_local_stack_end_ptr_
  %_cond2_1_881 = icmp ugt i8* %_ptr_bt_877, %_parent_stack_end_ptr_
  %_cond2_2_882 = icmp ult i8* %_ptr_bt_877, %_parent_stack_start_ptr_
  %_cond2_883 = or i1 %_cond2_1_881, %_cond2_2_882
  %_cond4_884 = icmp ule i8* %_pot_address_in_parent_stack_879, %_parent_stack_end_ptr_
  %_cond1_n_cond2_885 = and i1 %_cond1_880, %_cond2_883
  %_cond1_n_cond2_cond3_886 = and i1 %_cond1_n_cond2_885, %_cond4_884
  br i1 %_cond1_n_cond2_cond3_886, label %564, label %565

; <label>:564:                                    ; preds = %block_0x1a9
  %_address_in_parent_stack_bt_888 = bitcast i8* %_pot_address_in_parent_stack_879 to i32*
  br label %565

; <label>:565:                                    ; preds = %block_0x1a9, %564
  %566 = phi i32* [ %563, %block_0x1a9 ], [ %_address_in_parent_stack_bt_888, %564 ]
  %_new_load_889 = load i32, i32* %566
  %567 = zext i32 %_new_load_889 to i64, !mcsema_real_eip !107
  store i64 %567, i64* %XAX, !mcsema_real_eip !107
  %EAX_val.153 = load i32, i32* %EAX.9, !mcsema_real_eip !108
  %568 = sub i32 %EAX_val.153, 1, !mcsema_real_eip !108
  %569 = xor i32 %568, %EAX_val.153, !mcsema_real_eip !108
  %570 = xor i32 %569, 1, !mcsema_real_eip !108
  %571 = and i32 %570, 16, !mcsema_real_eip !108
  %572 = icmp ne i32 %571, 0, !mcsema_real_eip !108
  store i1 %572, i1* %AF, !mcsema_real_eip !108
  %573 = trunc i32 %568 to i8, !mcsema_real_eip !108
  %574 = call i8 @llvm.ctpop.i8(i8 %573), !mcsema_real_eip !108
  %575 = trunc i8 %574 to i1, !mcsema_real_eip !108
  %576 = xor i1 %575, true, !mcsema_real_eip !108
  store i1 %576, i1* %PF, !mcsema_real_eip !108
  %577 = icmp eq i32 %568, 0, !mcsema_real_eip !108
  store i1 %577, i1* %ZF, !mcsema_real_eip !108
  %578 = lshr i32 %568, 31, !mcsema_real_eip !108
  %579 = trunc i32 %578 to i1, !mcsema_real_eip !108
  store i1 %579, i1* %SF, !mcsema_real_eip !108
  %580 = icmp ult i32 %EAX_val.153, 1, !mcsema_real_eip !108
  store i1 %580, i1* %CF, !mcsema_real_eip !108
  %581 = xor i32 %EAX_val.153, 1, !mcsema_real_eip !108
  %582 = and i32 %581, %569, !mcsema_real_eip !108
  %583 = lshr i32 %582, 31, !mcsema_real_eip !108
  %584 = trunc i32 %583 to i1, !mcsema_real_eip !108
  store i1 %584, i1* %OF, !mcsema_real_eip !108
  %585 = zext i32 %568 to i64, !mcsema_real_eip !108
  store i64 %585, i64* %XAX, !mcsema_real_eip !108
  %EAX_val.156 = load i32, i32* %EAX.9, !mcsema_real_eip !109
  store i32 %EAX_val.156, i32* %563, !mcsema_real_eip !109
  br label %block_0x1c2, !mcsema_real_eip !110

block_0x1b7:                                      ; preds = %531
  %_new_gep_158 = getelementptr i8, i8* %_load_rbp_ptr_148, i64 -20
  %_allin_new_bt_159 = bitcast i8* %_new_gep_158 to i64*
  %586 = ptrtoint i64* %_allin_new_bt_159 to i64, !mcsema_real_eip !111
  %587 = inttoptr i64 %586 to i32*, !mcsema_real_eip !111
  %_ptr_bt_892 = bitcast i32* %587 to i8*
  %_offset_above_rbp_893 = sub i64 %586, %_local_end_to_int_
  %_pot_address_in_parent_stack_894 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_893
  %_cond1_895 = icmp ugt i8* %_ptr_bt_892, %_local_stack_end_ptr_
  %_cond2_1_896 = icmp ugt i8* %_ptr_bt_892, %_parent_stack_end_ptr_
  %_cond2_2_897 = icmp ult i8* %_ptr_bt_892, %_parent_stack_start_ptr_
  %_cond2_898 = or i1 %_cond2_1_896, %_cond2_2_897
  %_cond4_899 = icmp ule i8* %_pot_address_in_parent_stack_894, %_parent_stack_end_ptr_
  %_cond1_n_cond2_900 = and i1 %_cond1_895, %_cond2_898
  %_cond1_n_cond2_cond3_901 = and i1 %_cond1_n_cond2_900, %_cond4_899
  br i1 %_cond1_n_cond2_cond3_901, label %588, label %589

; <label>:588:                                    ; preds = %block_0x1b7
  %_address_in_parent_stack_bt_903 = bitcast i8* %_pot_address_in_parent_stack_894 to i32*
  br label %589

; <label>:589:                                    ; preds = %block_0x1b7, %588
  %590 = phi i32* [ %587, %block_0x1b7 ], [ %_address_in_parent_stack_bt_903, %588 ]
  %_new_load_904 = load i32, i32* %590
  %591 = zext i32 %_new_load_904 to i64, !mcsema_real_eip !111
  store i64 %591, i64* %XCX, !mcsema_real_eip !111
  br i1 %_cond1_n_cond2_cond3_901, label %592, label %593

; <label>:592:                                    ; preds = %589
  %_address_in_parent_stack_bt_918 = bitcast i8* %_pot_address_in_parent_stack_894 to i32*
  br label %593

; <label>:593:                                    ; preds = %589, %592
  %594 = phi i32* [ %587, %589 ], [ %_address_in_parent_stack_bt_918, %592 ]
  %_new_load_919 = load i32, i32* %594
  %595 = zext i32 %_new_load_919 to i64, !mcsema_real_eip !112
  store i64 %595, i64* %XAX, !mcsema_real_eip !112
  %EAX_val.160 = load i32, i32* %EAX.9, !mcsema_real_eip !113
  %CL_val.162 = load i8, i8* %CL.87, !mcsema_real_eip !113
  %CL_val.162.zext = zext i8 %CL_val.162 to i32, !mcsema_real_eip !113
  %596 = and i32 %CL_val.162.zext, 31, !mcsema_real_eip !113
  %597 = sub i32 %CL_val.162.zext, 1, !mcsema_real_eip !113
  %598 = icmp ne i32 %596, 0, !mcsema_real_eip !113
  %599 = select i1 %598, i32 %597, i32 0, !mcsema_real_eip !113
  %600 = select i1 %598, i32 1, i32 0, !mcsema_real_eip !113
  %601 = shl i32 %EAX_val.160, %599, !mcsema_real_eip !113
  %602 = and i32 %601, -2147483648, !mcsema_real_eip !113
  %603 = icmp ne i32 %602, 0, !mcsema_real_eip !113
  %604 = select i1 %598, i1 %603, i1 %556, !mcsema_real_eip !113
  %605 = shl i32 %601, %600, !mcsema_real_eip !113
  %606 = icmp eq i32 %596, 1, !mcsema_real_eip !113
  %607 = and i32 %605, -2147483648, !mcsema_real_eip !113
  %608 = icmp ne i32 %607, 0, !mcsema_real_eip !113
  %609 = xor i1 %608, %604, !mcsema_real_eip !113
  %610 = select i1 %606, i1 %609, i1 %560, !mcsema_real_eip !113
  store i1 %610, i1* %OF, !mcsema_real_eip !113
  store i1 %604, i1* %CF, !mcsema_real_eip !113
  %611 = icmp eq i32 %605, 0, !mcsema_real_eip !113
  %612 = select i1 %598, i1 %611, i1 %553, !mcsema_real_eip !113
  store i1 %612, i1* %ZF, !mcsema_real_eip !113
  %613 = icmp slt i32 %605, 0, !mcsema_real_eip !113
  %614 = select i1 %598, i1 %613, i1 %555, !mcsema_real_eip !113
  store i1 %614, i1* %SF, !mcsema_real_eip !113
  %615 = trunc i32 %605 to i8, !mcsema_real_eip !113
  %616 = call i8 @llvm.ctpop.i8(i8 %615), !mcsema_real_eip !113
  %617 = trunc i8 %616 to i1, !mcsema_real_eip !113
  %618 = xor i1 %617, true, !mcsema_real_eip !113
  %619 = select i1 %598, i1 %618, i1 %552, !mcsema_real_eip !113
  store i1 %619, i1* %PF, !mcsema_real_eip !113
  %620 = zext i32 %605 to i64, !mcsema_real_eip !113
  store i64 %620, i64* %XAX, !mcsema_real_eip !113
  %EAX_val.165 = load i32, i32* %EAX.9, !mcsema_real_eip !114
  store i32 %EAX_val.165, i32* %587, !mcsema_real_eip !114
  br label %block_0x1c2, !mcsema_real_eip !115

block_0x1c2:                                      ; preds = %593, %565
  %_load_rbp_ptr_166 = load i8*, i8** %_RBP_ptr_
  %_new_gep_167 = getelementptr i8, i8* %_load_rbp_ptr_166, i64 -20
  %_allin_new_bt_168 = bitcast i8* %_new_gep_167 to i64*
  %621 = ptrtoint i64* %_allin_new_bt_168 to i64, !mcsema_real_eip !115
  %622 = inttoptr i64 %621 to i32*, !mcsema_real_eip !115
  %_ptr_bt_922 = bitcast i32* %622 to i8*
  %_offset_above_rbp_923 = sub i64 %621, %_local_end_to_int_
  %_pot_address_in_parent_stack_924 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_923
  %_cond1_925 = icmp ugt i8* %_ptr_bt_922, %_local_stack_end_ptr_
  %_cond2_1_926 = icmp ugt i8* %_ptr_bt_922, %_parent_stack_end_ptr_
  %_cond2_2_927 = icmp ult i8* %_ptr_bt_922, %_parent_stack_start_ptr_
  %_cond2_928 = or i1 %_cond2_1_926, %_cond2_2_927
  %_cond4_929 = icmp ule i8* %_pot_address_in_parent_stack_924, %_parent_stack_end_ptr_
  %_cond1_n_cond2_930 = and i1 %_cond1_925, %_cond2_928
  %_cond1_n_cond2_cond3_931 = and i1 %_cond1_n_cond2_930, %_cond4_929
  br i1 %_cond1_n_cond2_cond3_931, label %623, label %624

; <label>:623:                                    ; preds = %block_0x1c2
  %_address_in_parent_stack_bt_933 = bitcast i8* %_pot_address_in_parent_stack_924 to i32*
  br label %624

; <label>:624:                                    ; preds = %block_0x1c2, %623
  %625 = phi i32* [ %622, %block_0x1c2 ], [ %_address_in_parent_stack_bt_933, %623 ]
  %_new_load_934 = load i32, i32* %625
  store i1 false, i1* %AF, !mcsema_real_eip !115
  %626 = trunc i32 %_new_load_934 to i8, !mcsema_real_eip !115
  %627 = call i8 @llvm.ctpop.i8(i8 %626), !mcsema_real_eip !115
  %628 = trunc i8 %627 to i1, !mcsema_real_eip !115
  %629 = xor i1 %628, true, !mcsema_real_eip !115
  store i1 %629, i1* %PF, !mcsema_real_eip !115
  %630 = icmp eq i32 %_new_load_934, 0, !mcsema_real_eip !115
  store i1 %630, i1* %ZF, !mcsema_real_eip !115
  %631 = lshr i32 %_new_load_934, 31, !mcsema_real_eip !115
  %632 = trunc i32 %631 to i1, !mcsema_real_eip !115
  store i1 %632, i1* %SF, !mcsema_real_eip !115
  store i1 false, i1* %CF, !mcsema_real_eip !115
  store i1 false, i1* %OF, !mcsema_real_eip !115
  br i1 %630, label %block_0x1d8, label %block_0x1cc, !mcsema_real_eip !116

block_0x1cc:                                      ; preds = %624
  %_new_gep_170 = getelementptr i8, i8* %_load_rbp_ptr_166, i64 -4
  %_allin_new_bt_171 = bitcast i8* %_new_gep_170 to i64*
  %633 = ptrtoint i64* %_allin_new_bt_171 to i64, !mcsema_real_eip !117
  %634 = inttoptr i64 %633 to i32*, !mcsema_real_eip !117
  store i32 -7, i32* %634, !mcsema_real_eip !117
  br label %block_0x417, !mcsema_real_eip !118

block_0x1d8:                                      ; preds = %624
  %EDI_val.169 = load i32, i32* %EDI.60, !mcsema_real_eip !119
  store i1 false, i1* %CF, !mcsema_real_eip !119
  store i1 false, i1* %OF, !mcsema_real_eip !119
  store i1 false, i1* %SF, !mcsema_real_eip !119
  store i1 true, i1* %ZF, !mcsema_real_eip !119
  store i1 true, i1* %PF, !mcsema_real_eip !119
  store i1 undef, i1* %AF, !mcsema_real_eip !119
  store i64 0, i64* %XDI, !mcsema_real_eip !119
  store i64 4, i64* %XDX, !mcsema_real_eip !120
  %_new_gep_173 = getelementptr i8, i8* %_load_rbp_ptr_166, i64 -16
  %_allin_new_bt_174 = bitcast i8* %_new_gep_173 to i64*
  %_ptr_to_int_935 = ptrtoint i64* %_allin_new_bt_174 to i64
  %_offset_above_rbp_938 = sub i64 %_ptr_to_int_935, %_local_end_to_int_
  %_pot_address_in_parent_stack_939 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_938
  %_cond1_940 = icmp ugt i8* %_new_gep_173, %_local_stack_end_ptr_
  %_cond2_1_941 = icmp ugt i8* %_new_gep_173, %_parent_stack_end_ptr_
  %_cond2_2_942 = icmp ult i8* %_new_gep_173, %_parent_stack_start_ptr_
  %_cond2_943 = or i1 %_cond2_1_941, %_cond2_2_942
  %_cond4_944 = icmp ule i8* %_pot_address_in_parent_stack_939, %_parent_stack_end_ptr_
  %_cond1_n_cond2_945 = and i1 %_cond1_940, %_cond2_943
  %_cond1_n_cond2_cond3_946 = and i1 %_cond1_n_cond2_945, %_cond4_944
  br i1 %_cond1_n_cond2_cond3_946, label %635, label %636

; <label>:635:                                    ; preds = %block_0x1d8
  %_address_in_parent_stack_bt_948 = bitcast i8* %_pot_address_in_parent_stack_939 to i64*
  br label %636

; <label>:636:                                    ; preds = %block_0x1d8, %635
  %637 = phi i64* [ %_allin_new_bt_174, %block_0x1d8 ], [ %_address_in_parent_stack_bt_948, %635 ]
  %_new_load_949 = load i64, i64* %637
  store i64 %_new_load_949, i64* %XAX, !mcsema_real_eip !121
  %638 = add i64 8, %_new_load_949, !mcsema_real_eip !122
  %639 = xor i64 %638, %_new_load_949, !mcsema_real_eip !122
  %640 = xor i64 %639, 8, !mcsema_real_eip !122
  %641 = and i64 %640, 16, !mcsema_real_eip !122
  %642 = icmp ne i64 %641, 0, !mcsema_real_eip !122
  store i1 %642, i1* %AF, !mcsema_real_eip !122
  %643 = lshr i64 %638, 63, !mcsema_real_eip !122
  %644 = trunc i64 %643 to i1, !mcsema_real_eip !122
  store i1 %644, i1* %SF, !mcsema_real_eip !122
  %645 = icmp eq i64 %638, 0, !mcsema_real_eip !122
  store i1 %645, i1* %ZF, !mcsema_real_eip !122
  %646 = xor i64 %_new_load_949, 8, !mcsema_real_eip !122
  %647 = xor i64 %646, -1, !mcsema_real_eip !122
  %648 = and i64 %647, %639, !mcsema_real_eip !122
  %649 = lshr i64 %648, 63, !mcsema_real_eip !122
  %650 = and i64 %649, 1, !mcsema_real_eip !122
  %651 = trunc i64 %650 to i1, !mcsema_real_eip !122
  store i1 %651, i1* %OF, !mcsema_real_eip !122
  %652 = trunc i64 %638 to i8, !mcsema_real_eip !122
  %653 = call i8 @llvm.ctpop.i8(i8 %652), !mcsema_real_eip !122
  %654 = trunc i8 %653 to i1, !mcsema_real_eip !122
  %655 = xor i1 %654, true, !mcsema_real_eip !122
  store i1 %655, i1* %PF, !mcsema_real_eip !122
  %656 = icmp ult i64 %638, %_new_load_949, !mcsema_real_eip !122
  store i1 %656, i1* %CF, !mcsema_real_eip !122
  store i64 %638, i64* %XAX, !mcsema_real_eip !122
  store i64 %638, i64* %XSI, !mcsema_real_eip !123
  %_load_rsp_ptr_175 = load i8*, i8** %_RSP_ptr_
  %RSP_val.178 = load i64, i64* %XSP, !mcsema_real_eip !124
  %_new_gep_176 = getelementptr i8, i8* %_load_rsp_ptr_175, i64 -8
  %657 = sub i64 %RSP_val.178, 8, !mcsema_real_eip !124
  %_allin_new_bt_177 = bitcast i8* %_new_gep_176 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_177, !mcsema_real_eip !124
  store volatile i8* %_new_gep_176, i8** %_RSP_ptr_
  store i64 %657, i64* %XSP, !mcsema_real_eip !124
  %658 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %638, i64 4)
  %_rsp_fix_426 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_427 = getelementptr i8, i8* %_rsp_fix_426, i64 8
  store i8* %_gep_fix_427, i8** %_RSP_ptr_
  store i64 %658, i64* %XAX, !mcsema_real_eip !124
  %AX.179 = bitcast i64* %XAX to i16*, !mcsema_real_eip !125
  %AX_val.180 = load i16, i16* %AX.179, !mcsema_real_eip !125
  %CX.181 = bitcast i64* %XCX to i16*, !mcsema_real_eip !125
  store i16 %AX_val.180, i16* %CX.181, !mcsema_real_eip !125
  %_load_rbp_ptr_178 = load i8*, i8** %_RBP_ptr_
  %_new_gep_179 = getelementptr i8, i8* %_load_rbp_ptr_178, i64 -38
  %_allin_new_bt_180 = bitcast i8* %_new_gep_179 to i64*
  %659 = ptrtoint i64* %_allin_new_bt_180 to i64, !mcsema_real_eip !126
  %660 = inttoptr i64 %659 to i16*, !mcsema_real_eip !126
  store i16 %AX_val.180, i16* %660, !mcsema_real_eip !126
  %_load_rbp_ptr_181 = load i8*, i8** %_RBP_ptr_
  %_new_gep_182 = getelementptr i8, i8* %_load_rbp_ptr_181, i64 -38
  %_allin_new_bt_183 = bitcast i8* %_new_gep_182 to i64*
  %661 = ptrtoint i64* %_allin_new_bt_183 to i64, !mcsema_real_eip !127
  %662 = inttoptr i64 %661 to i16*, !mcsema_real_eip !127
  %_ptr_bt_952 = bitcast i16* %662 to i8*
  %_offset_above_rbp_953 = sub i64 %661, %_local_end_to_int_
  %_pot_address_in_parent_stack_954 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_953
  %_cond1_955 = icmp ugt i8* %_ptr_bt_952, %_local_stack_end_ptr_
  %_cond2_1_956 = icmp ugt i8* %_ptr_bt_952, %_parent_stack_end_ptr_
  %_cond2_2_957 = icmp ult i8* %_ptr_bt_952, %_parent_stack_start_ptr_
  %_cond2_958 = or i1 %_cond2_1_956, %_cond2_2_957
  %_cond4_959 = icmp ule i8* %_pot_address_in_parent_stack_954, %_parent_stack_end_ptr_
  %_cond1_n_cond2_960 = and i1 %_cond1_955, %_cond2_958
  %_cond1_n_cond2_cond3_961 = and i1 %_cond1_n_cond2_960, %_cond4_959
  br i1 %_cond1_n_cond2_cond3_961, label %663, label %664

; <label>:663:                                    ; preds = %636
  %_address_in_parent_stack_bt_963 = bitcast i8* %_pot_address_in_parent_stack_954 to i16*
  br label %664

; <label>:664:                                    ; preds = %636, %663
  %665 = phi i16* [ %662, %636 ], [ %_address_in_parent_stack_bt_963, %663 ]
  %_new_load_964 = load i16, i16* %665
  %666 = zext i16 %_new_load_964 to i32, !mcsema_real_eip !127
  %667 = zext i32 %666 to i64, !mcsema_real_eip !127
  store i64 %667, i64* %XAX, !mcsema_real_eip !127
  %EAX_val.187 = load i32, i32* %EAX.9, !mcsema_real_eip !128
  %668 = or i32 %EAX_val.187, 21845, !mcsema_real_eip !128
  store i1 undef, i1* %AF, !mcsema_real_eip !128
  store i1 false, i1* %OF, !mcsema_real_eip !128
  store i1 false, i1* %CF, !mcsema_real_eip !128
  %669 = lshr i32 %668, 31, !mcsema_real_eip !128
  %670 = trunc i32 %669 to i1, !mcsema_real_eip !128
  store i1 %670, i1* %SF, !mcsema_real_eip !128
  store i1 false, i1* %ZF, !mcsema_real_eip !128
  %671 = trunc i32 %668 to i8, !mcsema_real_eip !128
  %672 = call i8 @llvm.ctpop.i8(i8 %671), !mcsema_real_eip !128
  %673 = trunc i8 %672 to i1, !mcsema_real_eip !128
  %674 = xor i1 %673, true, !mcsema_real_eip !128
  store i1 %674, i1* %PF, !mcsema_real_eip !128
  %675 = zext i32 %668 to i64, !mcsema_real_eip !128
  store i64 %675, i64* %XAX, !mcsema_real_eip !128
  %EAX_val.189 = load i32, i32* %EAX.9, !mcsema_real_eip !129
  %676 = sub i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  %677 = xor i32 %676, %EAX_val.189, !mcsema_real_eip !129
  %678 = xor i32 %677, 56663, !mcsema_real_eip !129
  %679 = and i32 %678, 16, !mcsema_real_eip !129
  %680 = icmp ne i32 %679, 0, !mcsema_real_eip !129
  store i1 %680, i1* %AF, !mcsema_real_eip !129
  %681 = trunc i32 %676 to i8, !mcsema_real_eip !129
  %682 = call i8 @llvm.ctpop.i8(i8 %681), !mcsema_real_eip !129
  %683 = trunc i8 %682 to i1, !mcsema_real_eip !129
  %684 = xor i1 %683, true, !mcsema_real_eip !129
  store i1 %684, i1* %PF, !mcsema_real_eip !129
  %685 = icmp eq i32 %676, 0, !mcsema_real_eip !129
  store i1 %685, i1* %ZF, !mcsema_real_eip !129
  %686 = lshr i32 %676, 31, !mcsema_real_eip !129
  %687 = trunc i32 %686 to i1, !mcsema_real_eip !129
  store i1 %687, i1* %SF, !mcsema_real_eip !129
  %688 = icmp ult i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  store i1 %688, i1* %CF, !mcsema_real_eip !129
  %689 = xor i32 %EAX_val.189, 56663, !mcsema_real_eip !129
  %690 = and i32 %689, %677, !mcsema_real_eip !129
  %691 = lshr i32 %690, 31, !mcsema_real_eip !129
  %692 = trunc i32 %691 to i1, !mcsema_real_eip !129
  store i1 %692, i1* %OF, !mcsema_real_eip !129
  %693 = icmp eq i1 %685, false, !mcsema_real_eip !130
  br i1 %693, label %block_0x22a, label %block_0x20a, !mcsema_real_eip !130

block_0x20a:                                      ; preds = %664
  br i1 %_cond1_n_cond2_cond3_961, label %694, label %695

; <label>:694:                                    ; preds = %block_0x20a
  %_address_in_parent_stack_bt_978 = bitcast i8* %_pot_address_in_parent_stack_954 to i16*
  br label %695

; <label>:695:                                    ; preds = %block_0x20a, %694
  %696 = phi i16* [ %662, %block_0x20a ], [ %_address_in_parent_stack_bt_978, %694 ]
  %_new_load_979 = load i16, i16* %696
  %697 = zext i16 %_new_load_979 to i32, !mcsema_real_eip !131
  %698 = zext i32 %697 to i64, !mcsema_real_eip !131
  store i64 %698, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.192 = load i32, i32* %EAX.9, !mcsema_real_eip !132
  %699 = or i32 %EAX_val.192, 43690, !mcsema_real_eip !132
  store i1 undef, i1* %AF, !mcsema_real_eip !132
  store i1 false, i1* %OF, !mcsema_real_eip !132
  store i1 false, i1* %CF, !mcsema_real_eip !132
  %700 = lshr i32 %699, 31, !mcsema_real_eip !132
  %701 = trunc i32 %700 to i1, !mcsema_real_eip !132
  store i1 %701, i1* %SF, !mcsema_real_eip !132
  store i1 false, i1* %ZF, !mcsema_real_eip !132
  %702 = trunc i32 %699 to i8, !mcsema_real_eip !132
  %703 = call i8 @llvm.ctpop.i8(i8 %702), !mcsema_real_eip !132
  %704 = trunc i8 %703 to i1, !mcsema_real_eip !132
  %705 = xor i1 %704, true, !mcsema_real_eip !132
  store i1 %705, i1* %PF, !mcsema_real_eip !132
  %706 = zext i32 %699 to i64, !mcsema_real_eip !132
  store i64 %706, i64* %XAX, !mcsema_real_eip !132
  %EAX_val.194 = load i32, i32* %EAX.9, !mcsema_real_eip !133
  %707 = sub i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  %708 = xor i32 %707, %EAX_val.194, !mcsema_real_eip !133
  %709 = xor i32 %708, 65211, !mcsema_real_eip !133
  %710 = and i32 %709, 16, !mcsema_real_eip !133
  %711 = icmp ne i32 %710, 0, !mcsema_real_eip !133
  store i1 %711, i1* %AF, !mcsema_real_eip !133
  %712 = trunc i32 %707 to i8, !mcsema_real_eip !133
  %713 = call i8 @llvm.ctpop.i8(i8 %712), !mcsema_real_eip !133
  %714 = trunc i8 %713 to i1, !mcsema_real_eip !133
  %715 = xor i1 %714, true, !mcsema_real_eip !133
  store i1 %715, i1* %PF, !mcsema_real_eip !133
  %716 = icmp eq i32 %707, 0, !mcsema_real_eip !133
  store i1 %716, i1* %ZF, !mcsema_real_eip !133
  %717 = lshr i32 %707, 31, !mcsema_real_eip !133
  %718 = trunc i32 %717 to i1, !mcsema_real_eip !133
  store i1 %718, i1* %SF, !mcsema_real_eip !133
  %719 = icmp ult i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  store i1 %719, i1* %CF, !mcsema_real_eip !133
  %720 = xor i32 %EAX_val.194, 65211, !mcsema_real_eip !133
  %721 = and i32 %720, %708, !mcsema_real_eip !133
  %722 = lshr i32 %721, 31, !mcsema_real_eip !133
  %723 = trunc i32 %722 to i1, !mcsema_real_eip !133
  store i1 %723, i1* %OF, !mcsema_real_eip !133
  %724 = icmp eq i1 %716, false, !mcsema_real_eip !134
  br i1 %724, label %block_0x22a, label %block_0x21e, !mcsema_real_eip !134

block_0x21e:                                      ; preds = %695
  %_new_gep_188 = getelementptr i8, i8* %_load_rbp_ptr_181, i64 -20
  %_allin_new_bt_189 = bitcast i8* %_new_gep_188 to i64*
  %725 = ptrtoint i64* %_allin_new_bt_189 to i64, !mcsema_real_eip !135
  %726 = inttoptr i64 %725 to i32*, !mcsema_real_eip !135
  store i32 43690, i32* %726, !mcsema_real_eip !135
  br label %block_0x231, !mcsema_real_eip !136

block_0x22a:                                      ; preds = %695, %664
  %_new_gep_191 = getelementptr i8, i8* %_load_rbp_ptr_181, i64 -20
  %_allin_new_bt_192 = bitcast i8* %_new_gep_191 to i64*
  %727 = ptrtoint i64* %_allin_new_bt_192 to i64, !mcsema_real_eip !137
  %728 = inttoptr i64 %727 to i32*, !mcsema_real_eip !137
  store i32 48059, i32* %728, !mcsema_real_eip !137
  br label %block_0x231, !mcsema_real_eip !138

block_0x231:                                      ; preds = %block_0x22a, %block_0x21e
  %EDI_val.198 = load i32, i32* %EDI.60, !mcsema_real_eip !138
  store i1 false, i1* %CF, !mcsema_real_eip !138
  store i1 false, i1* %OF, !mcsema_real_eip !138
  store i1 false, i1* %SF, !mcsema_real_eip !138
  store i1 true, i1* %ZF, !mcsema_real_eip !138
  store i1 true, i1* %PF, !mcsema_real_eip !138
  store i1 undef, i1* %AF, !mcsema_real_eip !138
  store i64 0, i64* %XDI, !mcsema_real_eip !138
  store i64 8, i64* %XDX, !mcsema_real_eip !139
  %_load_rbp_ptr_193 = load i8*, i8** %_RBP_ptr_
  %_new_gep_194 = getelementptr i8, i8* %_load_rbp_ptr_193, i64 -16
  %_allin_new_bt_195 = bitcast i8* %_new_gep_194 to i64*
  %_ptr_to_int_980 = ptrtoint i64* %_allin_new_bt_195 to i64
  %_offset_above_rbp_983 = sub i64 %_ptr_to_int_980, %_local_end_to_int_
  %_pot_address_in_parent_stack_984 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_983
  %_cond1_985 = icmp ugt i8* %_new_gep_194, %_local_stack_end_ptr_
  %_cond2_1_986 = icmp ugt i8* %_new_gep_194, %_parent_stack_end_ptr_
  %_cond2_2_987 = icmp ult i8* %_new_gep_194, %_parent_stack_start_ptr_
  %_cond2_988 = or i1 %_cond2_1_986, %_cond2_2_987
  %_cond4_989 = icmp ule i8* %_pot_address_in_parent_stack_984, %_parent_stack_end_ptr_
  %_cond1_n_cond2_990 = and i1 %_cond1_985, %_cond2_988
  %_cond1_n_cond2_cond3_991 = and i1 %_cond1_n_cond2_990, %_cond4_989
  br i1 %_cond1_n_cond2_cond3_991, label %729, label %730

; <label>:729:                                    ; preds = %block_0x231
  %_address_in_parent_stack_bt_993 = bitcast i8* %_pot_address_in_parent_stack_984 to i64*
  br label %730

; <label>:730:                                    ; preds = %block_0x231, %729
  %731 = phi i64* [ %_allin_new_bt_195, %block_0x231 ], [ %_address_in_parent_stack_bt_993, %729 ]
  %_new_load_994 = load i64, i64* %731
  store i64 %_new_load_994, i64* %XAX, !mcsema_real_eip !140
  %732 = add i64 12, %_new_load_994, !mcsema_real_eip !141
  %733 = xor i64 %732, %_new_load_994, !mcsema_real_eip !141
  %734 = xor i64 %733, 12, !mcsema_real_eip !141
  %735 = and i64 %734, 16, !mcsema_real_eip !141
  %736 = icmp ne i64 %735, 0, !mcsema_real_eip !141
  store i1 %736, i1* %AF, !mcsema_real_eip !141
  %737 = lshr i64 %732, 63, !mcsema_real_eip !141
  %738 = trunc i64 %737 to i1, !mcsema_real_eip !141
  store i1 %738, i1* %SF, !mcsema_real_eip !141
  %739 = icmp eq i64 %732, 0, !mcsema_real_eip !141
  store i1 %739, i1* %ZF, !mcsema_real_eip !141
  %740 = xor i64 %_new_load_994, 12, !mcsema_real_eip !141
  %741 = xor i64 %740, -1, !mcsema_real_eip !141
  %742 = and i64 %741, %733, !mcsema_real_eip !141
  %743 = lshr i64 %742, 63, !mcsema_real_eip !141
  %744 = and i64 %743, 1, !mcsema_real_eip !141
  %745 = trunc i64 %744 to i1, !mcsema_real_eip !141
  store i1 %745, i1* %OF, !mcsema_real_eip !141
  %746 = trunc i64 %732 to i8, !mcsema_real_eip !141
  %747 = call i8 @llvm.ctpop.i8(i8 %746), !mcsema_real_eip !141
  %748 = trunc i8 %747 to i1, !mcsema_real_eip !141
  %749 = xor i1 %748, true, !mcsema_real_eip !141
  store i1 %749, i1* %PF, !mcsema_real_eip !141
  %750 = icmp ult i64 %732, %_new_load_994, !mcsema_real_eip !141
  store i1 %750, i1* %CF, !mcsema_real_eip !141
  store i64 %732, i64* %XAX, !mcsema_real_eip !141
  store i64 %732, i64* %XSI, !mcsema_real_eip !142
  %_load_rsp_ptr_196 = load i8*, i8** %_RSP_ptr_
  %RSP_val.207 = load i64, i64* %XSP, !mcsema_real_eip !143
  %_new_gep_197 = getelementptr i8, i8* %_load_rsp_ptr_196, i64 -8
  %751 = sub i64 %RSP_val.207, 8, !mcsema_real_eip !143
  %_allin_new_bt_198 = bitcast i8* %_new_gep_197 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_198, !mcsema_real_eip !143
  store volatile i8* %_new_gep_197, i8** %_RSP_ptr_
  store i64 %751, i64* %XSP, !mcsema_real_eip !143
  %752 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %732, i64 8)
  %_rsp_fix_428 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_429 = getelementptr i8, i8* %_rsp_fix_428, i64 8
  store i8* %_gep_fix_429, i8** %_RSP_ptr_
  store i64 %752, i64* %XAX, !mcsema_real_eip !143
  %_load_rbp_ptr_199 = load i8*, i8** %_RBP_ptr_
  %_new_gep_200 = getelementptr i8, i8* %_load_rbp_ptr_199, i64 -44
  %_allin_new_bt_201 = bitcast i8* %_new_gep_200 to i64*
  %EAX_val.210 = load i32, i32* %EAX.9, !mcsema_real_eip !144
  %753 = ptrtoint i64* %_allin_new_bt_201 to i64, !mcsema_real_eip !144
  %754 = inttoptr i64 %753 to i32*, !mcsema_real_eip !144
  store i32 %EAX_val.210, i32* %754, !mcsema_real_eip !144
  %_load_rbp_ptr_202 = load i8*, i8** %_RBP_ptr_
  %_new_gep_203 = getelementptr i8, i8* %_load_rbp_ptr_202, i64 -44
  %_allin_new_bt_204 = bitcast i8* %_new_gep_203 to i64*
  %755 = ptrtoint i64* %_allin_new_bt_204 to i64, !mcsema_real_eip !145
  %756 = inttoptr i64 %755 to i32*, !mcsema_real_eip !145
  %_ptr_bt_997 = bitcast i32* %756 to i8*
  %_offset_above_rbp_998 = sub i64 %755, %_local_end_to_int_
  %_pot_address_in_parent_stack_999 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_998
  %_cond1_1000 = icmp ugt i8* %_ptr_bt_997, %_local_stack_end_ptr_
  %_cond2_1_1001 = icmp ugt i8* %_ptr_bt_997, %_parent_stack_end_ptr_
  %_cond2_2_1002 = icmp ult i8* %_ptr_bt_997, %_parent_stack_start_ptr_
  %_cond2_1003 = or i1 %_cond2_1_1001, %_cond2_2_1002
  %_cond4_1004 = icmp ule i8* %_pot_address_in_parent_stack_999, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1005 = and i1 %_cond1_1000, %_cond2_1003
  %_cond1_n_cond2_cond3_1006 = and i1 %_cond1_n_cond2_1005, %_cond4_1004
  br i1 %_cond1_n_cond2_cond3_1006, label %757, label %758

; <label>:757:                                    ; preds = %730
  %_address_in_parent_stack_bt_1008 = bitcast i8* %_pot_address_in_parent_stack_999 to i32*
  br label %758

; <label>:758:                                    ; preds = %730, %757
  %759 = phi i32* [ %756, %730 ], [ %_address_in_parent_stack_bt_1008, %757 ]
  %_new_load_1009 = load i32, i32* %759
  %760 = zext i32 %_new_load_1009 to i64, !mcsema_real_eip !145
  store i64 %760, i64* %XAX, !mcsema_real_eip !145
  %EAX_val.213 = load i32, i32* %EAX.9, !mcsema_real_eip !146
  %761 = xor i32 %EAX_val.213, -1534560611, !mcsema_real_eip !146
  store i1 false, i1* %CF, !mcsema_real_eip !146
  store i1 false, i1* %OF, !mcsema_real_eip !146
  %762 = lshr i32 %761, 31, !mcsema_real_eip !146
  %763 = trunc i32 %762 to i1, !mcsema_real_eip !146
  store i1 %763, i1* %SF, !mcsema_real_eip !146
  %764 = icmp eq i32 %761, 0, !mcsema_real_eip !146
  store i1 %764, i1* %ZF, !mcsema_real_eip !146
  %765 = trunc i32 %761 to i8, !mcsema_real_eip !146
  %766 = call i8 @llvm.ctpop.i8(i8 %765), !mcsema_real_eip !146
  %767 = trunc i8 %766 to i1, !mcsema_real_eip !146
  %768 = xor i1 %767, true, !mcsema_real_eip !146
  store i1 %768, i1* %PF, !mcsema_real_eip !146
  store i1 undef, i1* %AF, !mcsema_real_eip !146
  %769 = zext i32 %761 to i64, !mcsema_real_eip !146
  store i64 %769, i64* %XAX, !mcsema_real_eip !146
  %_new_gep_206 = getelementptr i8, i8* %_load_rbp_ptr_202, i64 -48
  %_allin_new_bt_207 = bitcast i8* %_new_gep_206 to i64*
  %EAX_val.216 = load i32, i32* %EAX.9, !mcsema_real_eip !147
  %770 = ptrtoint i64* %_allin_new_bt_207 to i64, !mcsema_real_eip !147
  %771 = inttoptr i64 %770 to i32*, !mcsema_real_eip !147
  store i32 %EAX_val.216, i32* %771, !mcsema_real_eip !147
  %_load_rbp_ptr_208 = load i8*, i8** %_RBP_ptr_
  %_new_gep_209 = getelementptr i8, i8* %_load_rbp_ptr_208, i64 -48
  %_allin_new_bt_210 = bitcast i8* %_new_gep_209 to i64*
  %772 = ptrtoint i64* %_allin_new_bt_210 to i64, !mcsema_real_eip !148
  %773 = inttoptr i64 %772 to i32*, !mcsema_real_eip !148
  %_ptr_bt_1012 = bitcast i32* %773 to i8*
  %_offset_above_rbp_1013 = sub i64 %772, %_local_end_to_int_
  %_pot_address_in_parent_stack_1014 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1013
  %_cond1_1015 = icmp ugt i8* %_ptr_bt_1012, %_local_stack_end_ptr_
  %_cond2_1_1016 = icmp ugt i8* %_ptr_bt_1012, %_parent_stack_end_ptr_
  %_cond2_2_1017 = icmp ult i8* %_ptr_bt_1012, %_parent_stack_start_ptr_
  %_cond2_1018 = or i1 %_cond2_1_1016, %_cond2_2_1017
  %_cond4_1019 = icmp ule i8* %_pot_address_in_parent_stack_1014, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1020 = and i1 %_cond1_1015, %_cond2_1018
  %_cond1_n_cond2_cond3_1021 = and i1 %_cond1_n_cond2_1020, %_cond4_1019
  br i1 %_cond1_n_cond2_cond3_1021, label %774, label %775

; <label>:774:                                    ; preds = %758
  %_address_in_parent_stack_bt_1023 = bitcast i8* %_pot_address_in_parent_stack_1014 to i32*
  br label %775

; <label>:775:                                    ; preds = %758, %774
  %776 = phi i32* [ %773, %758 ], [ %_address_in_parent_stack_bt_1023, %774 ]
  %_new_load_1024 = load i32, i32* %776
  %777 = zext i32 %_new_load_1024 to i64, !mcsema_real_eip !148
  store i64 %777, i64* %XAX, !mcsema_real_eip !148
  %EAX_val.219 = load i32, i32* %EAX.9, !mcsema_real_eip !149
  %778 = lshr i32 %EAX_val.219, 15, !mcsema_real_eip !149
  %779 = and i32 %778, 1, !mcsema_real_eip !149
  %780 = icmp ne i32 %779, 0, !mcsema_real_eip !149
  %781 = load i1, i1* %CF, !mcsema_real_eip !149
  %782 = lshr i32 %778, 1, !mcsema_real_eip !149
  %783 = load i1, i1* %OF, !mcsema_real_eip !149
  %784 = and i32 %EAX_val.219, -2147483648, !mcsema_real_eip !149
  %785 = icmp ne i32 %784, 0, !mcsema_real_eip !149
  store i1 %780, i1* %CF, !mcsema_real_eip !149
  %786 = load i1, i1* %ZF, !mcsema_real_eip !149
  %787 = icmp eq i32 %782, 0, !mcsema_real_eip !149
  store i1 %787, i1* %ZF, !mcsema_real_eip !149
  %788 = load i1, i1* %SF, !mcsema_real_eip !149
  store i1 false, i1* %SF, !mcsema_real_eip !149
  %789 = load i1, i1* %PF, !mcsema_real_eip !149
  %790 = trunc i32 %782 to i8, !mcsema_real_eip !149
  %791 = call i8 @llvm.ctpop.i8(i8 %790), !mcsema_real_eip !149
  %792 = trunc i8 %791 to i1, !mcsema_real_eip !149
  %793 = xor i1 %792, true, !mcsema_real_eip !149
  store i1 %793, i1* %PF, !mcsema_real_eip !149
  %794 = zext i32 %782 to i64, !mcsema_real_eip !149
  store i64 %794, i64* %XAX, !mcsema_real_eip !149
  %_new_gep_212 = getelementptr i8, i8* %_load_rbp_ptr_208, i64 -52
  %_allin_new_bt_213 = bitcast i8* %_new_gep_212 to i64*
  %EAX_val.222 = load i32, i32* %EAX.9, !mcsema_real_eip !150
  %795 = ptrtoint i64* %_allin_new_bt_213 to i64, !mcsema_real_eip !150
  %796 = inttoptr i64 %795 to i32*, !mcsema_real_eip !150
  store i32 %EAX_val.222, i32* %796, !mcsema_real_eip !150
  %_load_rbp_ptr_214 = load i8*, i8** %_RBP_ptr_
  %_new_gep_215 = getelementptr i8, i8* %_load_rbp_ptr_214, i64 -48
  %_allin_new_bt_216 = bitcast i8* %_new_gep_215 to i64*
  %797 = ptrtoint i64* %_allin_new_bt_216 to i64, !mcsema_real_eip !151
  %798 = inttoptr i64 %797 to i32*, !mcsema_real_eip !151
  %_ptr_bt_1027 = bitcast i32* %798 to i8*
  %_offset_above_rbp_1028 = sub i64 %797, %_local_end_to_int_
  %_pot_address_in_parent_stack_1029 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1028
  %_cond1_1030 = icmp ugt i8* %_ptr_bt_1027, %_local_stack_end_ptr_
  %_cond2_1_1031 = icmp ugt i8* %_ptr_bt_1027, %_parent_stack_end_ptr_
  %_cond2_2_1032 = icmp ult i8* %_ptr_bt_1027, %_parent_stack_start_ptr_
  %_cond2_1033 = or i1 %_cond2_1_1031, %_cond2_2_1032
  %_cond4_1034 = icmp ule i8* %_pot_address_in_parent_stack_1029, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1035 = and i1 %_cond1_1030, %_cond2_1033
  %_cond1_n_cond2_cond3_1036 = and i1 %_cond1_n_cond2_1035, %_cond4_1034
  br i1 %_cond1_n_cond2_cond3_1036, label %799, label %800

; <label>:799:                                    ; preds = %775
  %_address_in_parent_stack_bt_1038 = bitcast i8* %_pot_address_in_parent_stack_1029 to i32*
  br label %800

; <label>:800:                                    ; preds = %775, %799
  %801 = phi i32* [ %798, %775 ], [ %_address_in_parent_stack_bt_1038, %799 ]
  %_new_load_1039 = load i32, i32* %801
  %802 = zext i32 %_new_load_1039 to i64, !mcsema_real_eip !151
  store i64 %802, i64* %XAX, !mcsema_real_eip !151
  %EAX_val.225 = load i32, i32* %EAX.9, !mcsema_real_eip !152
  %803 = and i32 %EAX_val.225, 65535, !mcsema_real_eip !152
  store i1 false, i1* %SF, !mcsema_real_eip !152
  %804 = icmp eq i32 %803, 0, !mcsema_real_eip !152
  store i1 %804, i1* %ZF, !mcsema_real_eip !152
  %805 = trunc i32 %803 to i8, !mcsema_real_eip !152
  %806 = call i8 @llvm.ctpop.i8(i8 %805), !mcsema_real_eip !152
  %807 = trunc i8 %806 to i1, !mcsema_real_eip !152
  %808 = xor i1 %807, true, !mcsema_real_eip !152
  store i1 %808, i1* %PF, !mcsema_real_eip !152
  store i1 false, i1* %OF, !mcsema_real_eip !152
  store i1 false, i1* %CF, !mcsema_real_eip !152
  store i1 undef, i1* %AF, !mcsema_real_eip !152
  %809 = zext i32 %803 to i64, !mcsema_real_eip !152
  store i64 %809, i64* %XAX, !mcsema_real_eip !152
  %_new_gep_218 = getelementptr i8, i8* %_load_rbp_ptr_214, i64 -56
  %_allin_new_bt_219 = bitcast i8* %_new_gep_218 to i64*
  %EAX_val.228 = load i32, i32* %EAX.9, !mcsema_real_eip !153
  %810 = ptrtoint i64* %_allin_new_bt_219 to i64, !mcsema_real_eip !153
  %811 = inttoptr i64 %810 to i32*, !mcsema_real_eip !153
  store i32 %EAX_val.228, i32* %811, !mcsema_real_eip !153
  %_load_rbp_ptr_220 = load i8*, i8** %_RBP_ptr_
  %_new_gep_221 = getelementptr i8, i8* %_load_rbp_ptr_220, i64 -52
  %_allin_new_bt_222 = bitcast i8* %_new_gep_221 to i64*
  %812 = ptrtoint i64* %_allin_new_bt_222 to i64, !mcsema_real_eip !154
  %813 = inttoptr i64 %812 to i32*, !mcsema_real_eip !154
  %_ptr_bt_1042 = bitcast i32* %813 to i8*
  %_offset_above_rbp_1043 = sub i64 %812, %_local_end_to_int_
  %_pot_address_in_parent_stack_1044 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1043
  %_cond1_1045 = icmp ugt i8* %_ptr_bt_1042, %_local_stack_end_ptr_
  %_cond2_1_1046 = icmp ugt i8* %_ptr_bt_1042, %_parent_stack_end_ptr_
  %_cond2_2_1047 = icmp ult i8* %_ptr_bt_1042, %_parent_stack_start_ptr_
  %_cond2_1048 = or i1 %_cond2_1_1046, %_cond2_2_1047
  %_cond4_1049 = icmp ule i8* %_pot_address_in_parent_stack_1044, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1050 = and i1 %_cond1_1045, %_cond2_1048
  %_cond1_n_cond2_cond3_1051 = and i1 %_cond1_n_cond2_1050, %_cond4_1049
  br i1 %_cond1_n_cond2_cond3_1051, label %814, label %815

; <label>:814:                                    ; preds = %800
  %_address_in_parent_stack_bt_1053 = bitcast i8* %_pot_address_in_parent_stack_1044 to i32*
  br label %815

; <label>:815:                                    ; preds = %800, %814
  %816 = phi i32* [ %813, %800 ], [ %_address_in_parent_stack_bt_1053, %814 ]
  %_new_load_1054 = load i32, i32* %816
  %817 = sub i32 %_new_load_1054, 79, !mcsema_real_eip !154
  %818 = xor i32 %817, %_new_load_1054, !mcsema_real_eip !154
  %819 = xor i32 %818, 79, !mcsema_real_eip !154
  %820 = and i32 %819, 16, !mcsema_real_eip !154
  %821 = icmp ne i32 %820, 0, !mcsema_real_eip !154
  store i1 %821, i1* %AF, !mcsema_real_eip !154
  %822 = trunc i32 %817 to i8, !mcsema_real_eip !154
  %823 = call i8 @llvm.ctpop.i8(i8 %822), !mcsema_real_eip !154
  %824 = trunc i8 %823 to i1, !mcsema_real_eip !154
  %825 = xor i1 %824, true, !mcsema_real_eip !154
  store i1 %825, i1* %PF, !mcsema_real_eip !154
  %826 = icmp eq i32 %817, 0, !mcsema_real_eip !154
  store i1 %826, i1* %ZF, !mcsema_real_eip !154
  %827 = lshr i32 %817, 31, !mcsema_real_eip !154
  %828 = trunc i32 %827 to i1, !mcsema_real_eip !154
  store i1 %828, i1* %SF, !mcsema_real_eip !154
  %829 = icmp ult i32 %_new_load_1054, 79, !mcsema_real_eip !154
  store i1 %829, i1* %CF, !mcsema_real_eip !154
  %830 = xor i32 %_new_load_1054, 79, !mcsema_real_eip !154
  %831 = and i32 %830, %818, !mcsema_real_eip !154
  %832 = lshr i32 %831, 31, !mcsema_real_eip !154
  %833 = trunc i32 %832 to i1, !mcsema_real_eip !154
  store i1 %833, i1* %OF, !mcsema_real_eip !154
  %834 = icmp eq i1 %826, false, !mcsema_real_eip !155
  br i1 %834, label %block_0x28c, label %block_0x274, !mcsema_real_eip !155

block_0x274:                                      ; preds = %815
  %_new_gep_224 = getelementptr i8, i8* %_load_rbp_ptr_220, i64 -56
  %_allin_new_bt_225 = bitcast i8* %_new_gep_224 to i64*
  %835 = ptrtoint i64* %_allin_new_bt_225 to i64, !mcsema_real_eip !156
  %836 = inttoptr i64 %835 to i32*, !mcsema_real_eip !156
  %_ptr_bt_1057 = bitcast i32* %836 to i8*
  %_offset_above_rbp_1058 = sub i64 %835, %_local_end_to_int_
  %_pot_address_in_parent_stack_1059 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1058
  %_cond1_1060 = icmp ugt i8* %_ptr_bt_1057, %_local_stack_end_ptr_
  %_cond2_1_1061 = icmp ugt i8* %_ptr_bt_1057, %_parent_stack_end_ptr_
  %_cond2_2_1062 = icmp ult i8* %_ptr_bt_1057, %_parent_stack_start_ptr_
  %_cond2_1063 = or i1 %_cond2_1_1061, %_cond2_2_1062
  %_cond4_1064 = icmp ule i8* %_pot_address_in_parent_stack_1059, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1065 = and i1 %_cond1_1060, %_cond2_1063
  %_cond1_n_cond2_cond3_1066 = and i1 %_cond1_n_cond2_1065, %_cond4_1064
  br i1 %_cond1_n_cond2_cond3_1066, label %837, label %838

; <label>:837:                                    ; preds = %block_0x274
  %_address_in_parent_stack_bt_1068 = bitcast i8* %_pot_address_in_parent_stack_1059 to i32*
  br label %838

; <label>:838:                                    ; preds = %block_0x274, %837
  %839 = phi i32* [ %836, %block_0x274 ], [ %_address_in_parent_stack_bt_1068, %837 ]
  %_new_load_1069 = load i32, i32* %839
  %840 = zext i32 %_new_load_1069 to i64, !mcsema_real_eip !156
  store i64 %840, i64* %XAX, !mcsema_real_eip !156
  %_new_gep_227 = getelementptr i8, i8* %_load_rbp_ptr_220, i64 -20
  %_allin_new_bt_228 = bitcast i8* %_new_gep_227 to i64*
  %EAX_val.233 = load i32, i32* %EAX.9, !mcsema_real_eip !157
  %841 = ptrtoint i64* %_allin_new_bt_228 to i64, !mcsema_real_eip !157
  %842 = inttoptr i64 %841 to i32*, !mcsema_real_eip !157
  %_ptr_bt_1072 = bitcast i32* %842 to i8*
  %_offset_above_rbp_1073 = sub i64 %841, %_local_end_to_int_
  %_pot_address_in_parent_stack_1074 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1073
  %_cond1_1075 = icmp ugt i8* %_ptr_bt_1072, %_local_stack_end_ptr_
  %_cond2_1_1076 = icmp ugt i8* %_ptr_bt_1072, %_parent_stack_end_ptr_
  %_cond2_2_1077 = icmp ult i8* %_ptr_bt_1072, %_parent_stack_start_ptr_
  %_cond2_1078 = or i1 %_cond2_1_1076, %_cond2_2_1077
  %_cond4_1079 = icmp ule i8* %_pot_address_in_parent_stack_1074, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1080 = and i1 %_cond1_1075, %_cond2_1078
  %_cond1_n_cond2_cond3_1081 = and i1 %_cond1_n_cond2_1080, %_cond4_1079
  br i1 %_cond1_n_cond2_cond3_1081, label %843, label %844

; <label>:843:                                    ; preds = %838
  %_address_in_parent_stack_bt_1083 = bitcast i8* %_pot_address_in_parent_stack_1074 to i32*
  br label %844

; <label>:844:                                    ; preds = %838, %843
  %845 = phi i32* [ %842, %838 ], [ %_address_in_parent_stack_bt_1083, %843 ]
  %_new_load_1084 = load i32, i32* %845
  %846 = sub i32 %EAX_val.233, %_new_load_1084, !mcsema_real_eip !157
  %847 = xor i32 %846, %EAX_val.233, !mcsema_real_eip !157
  %848 = xor i32 %847, %_new_load_1084, !mcsema_real_eip !157
  %849 = and i32 %848, 16, !mcsema_real_eip !157
  %850 = icmp ne i32 %849, 0, !mcsema_real_eip !157
  store i1 %850, i1* %AF, !mcsema_real_eip !157
  %851 = trunc i32 %846 to i8, !mcsema_real_eip !157
  %852 = call i8 @llvm.ctpop.i8(i8 %851), !mcsema_real_eip !157
  %853 = trunc i8 %852 to i1, !mcsema_real_eip !157
  %854 = xor i1 %853, true, !mcsema_real_eip !157
  store i1 %854, i1* %PF, !mcsema_real_eip !157
  %855 = icmp eq i32 %846, 0, !mcsema_real_eip !157
  store i1 %855, i1* %ZF, !mcsema_real_eip !157
  %856 = lshr i32 %846, 31, !mcsema_real_eip !157
  %857 = trunc i32 %856 to i1, !mcsema_real_eip !157
  store i1 %857, i1* %SF, !mcsema_real_eip !157
  %858 = icmp ult i32 %EAX_val.233, %_new_load_1084, !mcsema_real_eip !157
  store i1 %858, i1* %CF, !mcsema_real_eip !157
  %859 = xor i32 %EAX_val.233, %_new_load_1084, !mcsema_real_eip !157
  %860 = and i32 %859, %847, !mcsema_real_eip !157
  %861 = lshr i32 %860, 31, !mcsema_real_eip !157
  %862 = trunc i32 %861 to i1, !mcsema_real_eip !157
  store i1 %862, i1* %OF, !mcsema_real_eip !157
  %863 = icmp eq i1 %855, false, !mcsema_real_eip !158
  br i1 %863, label %block_0x28c, label %block_0x280, !mcsema_real_eip !158

block_0x280:                                      ; preds = %844
  store i32 0, i32* %842, !mcsema_real_eip !159
  br label %block_0x293, !mcsema_real_eip !160

block_0x28c:                                      ; preds = %844, %815
  %_new_gep_233 = getelementptr i8, i8* %_load_rbp_ptr_220, i64 -20
  %_allin_new_bt_234 = bitcast i8* %_new_gep_233 to i64*
  %864 = ptrtoint i64* %_allin_new_bt_234 to i64, !mcsema_real_eip !161
  %865 = inttoptr i64 %864 to i32*, !mcsema_real_eip !161
  store i32 48351, i32* %865, !mcsema_real_eip !161
  br label %block_0x293, !mcsema_real_eip !162

block_0x293:                                      ; preds = %block_0x28c, %block_0x280
  store i64 8, i64* %XDX, !mcsema_real_eip !162
  %_load_rbp_ptr_235 = load i8*, i8** %_RBP_ptr_
  %_new_gep_236 = getelementptr i8, i8* %_load_rbp_ptr_235, i64 -20
  %_allin_new_bt_237 = bitcast i8* %_new_gep_236 to i64*
  %866 = ptrtoint i64* %_allin_new_bt_237 to i64, !mcsema_real_eip !163
  %867 = inttoptr i64 %866 to i32*, !mcsema_real_eip !163
  %_ptr_bt_1087 = bitcast i32* %867 to i8*
  %_offset_above_rbp_1088 = sub i64 %866, %_local_end_to_int_
  %_pot_address_in_parent_stack_1089 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1088
  %_cond1_1090 = icmp ugt i8* %_ptr_bt_1087, %_local_stack_end_ptr_
  %_cond2_1_1091 = icmp ugt i8* %_ptr_bt_1087, %_parent_stack_end_ptr_
  %_cond2_2_1092 = icmp ult i8* %_ptr_bt_1087, %_parent_stack_start_ptr_
  %_cond2_1093 = or i1 %_cond2_1_1091, %_cond2_2_1092
  %_cond4_1094 = icmp ule i8* %_pot_address_in_parent_stack_1089, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1095 = and i1 %_cond1_1090, %_cond2_1093
  %_cond1_n_cond2_cond3_1096 = and i1 %_cond1_n_cond2_1095, %_cond4_1094
  br i1 %_cond1_n_cond2_cond3_1096, label %868, label %869

; <label>:868:                                    ; preds = %block_0x293
  %_address_in_parent_stack_bt_1098 = bitcast i8* %_pot_address_in_parent_stack_1089 to i32*
  br label %869

; <label>:869:                                    ; preds = %block_0x293, %868
  %870 = phi i32* [ %867, %block_0x293 ], [ %_address_in_parent_stack_bt_1098, %868 ]
  %_new_load_1099 = load i32, i32* %870
  %871 = zext i32 %_new_load_1099 to i64, !mcsema_real_eip !163
  store i64 %871, i64* %XDI, !mcsema_real_eip !163
  %_new_gep_239 = getelementptr i8, i8* %_load_rbp_ptr_235, i64 -16
  %_allin_new_bt_240 = bitcast i8* %_new_gep_239 to i64*
  %_ptr_to_int_1100 = ptrtoint i64* %_allin_new_bt_240 to i64
  %_offset_above_rbp_1103 = sub i64 %_ptr_to_int_1100, %_local_end_to_int_
  %_pot_address_in_parent_stack_1104 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1103
  %_cond1_1105 = icmp ugt i8* %_new_gep_239, %_local_stack_end_ptr_
  %_cond2_1_1106 = icmp ugt i8* %_new_gep_239, %_parent_stack_end_ptr_
  %_cond2_2_1107 = icmp ult i8* %_new_gep_239, %_parent_stack_start_ptr_
  %_cond2_1108 = or i1 %_cond2_1_1106, %_cond2_2_1107
  %_cond4_1109 = icmp ule i8* %_pot_address_in_parent_stack_1104, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1110 = and i1 %_cond1_1105, %_cond2_1108
  %_cond1_n_cond2_cond3_1111 = and i1 %_cond1_n_cond2_1110, %_cond4_1109
  br i1 %_cond1_n_cond2_cond3_1111, label %872, label %873

; <label>:872:                                    ; preds = %869
  %_address_in_parent_stack_bt_1113 = bitcast i8* %_pot_address_in_parent_stack_1104 to i64*
  br label %873

; <label>:873:                                    ; preds = %869, %872
  %874 = phi i64* [ %_allin_new_bt_240, %869 ], [ %_address_in_parent_stack_bt_1113, %872 ]
  %_new_load_1114 = load i64, i64* %874
  store i64 %_new_load_1114, i64* %XAX, !mcsema_real_eip !164
  %875 = add i64 20, %_new_load_1114, !mcsema_real_eip !165
  %876 = xor i64 %875, %_new_load_1114, !mcsema_real_eip !165
  %877 = xor i64 %876, 20, !mcsema_real_eip !165
  %878 = and i64 %877, 16, !mcsema_real_eip !165
  %879 = icmp ne i64 %878, 0, !mcsema_real_eip !165
  store i1 %879, i1* %AF, !mcsema_real_eip !165
  %880 = lshr i64 %875, 63, !mcsema_real_eip !165
  %881 = trunc i64 %880 to i1, !mcsema_real_eip !165
  store i1 %881, i1* %SF, !mcsema_real_eip !165
  %882 = icmp eq i64 %875, 0, !mcsema_real_eip !165
  store i1 %882, i1* %ZF, !mcsema_real_eip !165
  %883 = xor i64 %_new_load_1114, 20, !mcsema_real_eip !165
  %884 = xor i64 %883, -1, !mcsema_real_eip !165
  %885 = and i64 %884, %876, !mcsema_real_eip !165
  %886 = lshr i64 %885, 63, !mcsema_real_eip !165
  %887 = and i64 %886, 1, !mcsema_real_eip !165
  %888 = trunc i64 %887 to i1, !mcsema_real_eip !165
  store i1 %888, i1* %OF, !mcsema_real_eip !165
  %889 = trunc i64 %875 to i8, !mcsema_real_eip !165
  %890 = call i8 @llvm.ctpop.i8(i8 %889), !mcsema_real_eip !165
  %891 = trunc i8 %890 to i1, !mcsema_real_eip !165
  %892 = xor i1 %891, true, !mcsema_real_eip !165
  store i1 %892, i1* %PF, !mcsema_real_eip !165
  %893 = icmp ult i64 %875, %_new_load_1114, !mcsema_real_eip !165
  store i1 %893, i1* %CF, !mcsema_real_eip !165
  store i64 %875, i64* %XAX, !mcsema_real_eip !165
  store i64 %875, i64* %XSI, !mcsema_real_eip !166
  %_load_rsp_ptr_241 = load i8*, i8** %_RSP_ptr_
  %RSP_val.243 = load i64, i64* %XSP, !mcsema_real_eip !167
  %_new_gep_242 = getelementptr i8, i8* %_load_rsp_ptr_241, i64 -8
  %894 = sub i64 %RSP_val.243, 8, !mcsema_real_eip !167
  %_allin_new_bt_243 = bitcast i8* %_new_gep_242 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_243, !mcsema_real_eip !167
  store volatile i8* %_new_gep_242, i8** %_RSP_ptr_
  store i64 %894, i64* %XSP, !mcsema_real_eip !167
  %895 = call x86_64_sysvcc i64 @_read_bytes(i64 %871, i64 %875, i64 8)
  %_rsp_fix_430 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_431 = getelementptr i8, i8* %_rsp_fix_430, i64 8
  store i8* %_gep_fix_431, i8** %_RSP_ptr_
  store i64 %895, i64* %XAX, !mcsema_real_eip !167
  %_load_rbp_ptr_244 = load i8*, i8** %_RBP_ptr_
  %_new_gep_245 = getelementptr i8, i8* %_load_rbp_ptr_244, i64 -60
  %_allin_new_bt_246 = bitcast i8* %_new_gep_245 to i64*
  %EAX_val.246 = load i32, i32* %EAX.9, !mcsema_real_eip !168
  %896 = ptrtoint i64* %_allin_new_bt_246 to i64, !mcsema_real_eip !168
  %897 = inttoptr i64 %896 to i32*, !mcsema_real_eip !168
  store i32 %EAX_val.246, i32* %897, !mcsema_real_eip !168
  %_load_rbp_ptr_247 = load i8*, i8** %_RBP_ptr_
  %_new_gep_248 = getelementptr i8, i8* %_load_rbp_ptr_247, i64 -60
  %_allin_new_bt_249 = bitcast i8* %_new_gep_248 to i64*
  %898 = ptrtoint i64* %_allin_new_bt_249 to i64, !mcsema_real_eip !169
  %899 = inttoptr i64 %898 to i32*, !mcsema_real_eip !169
  %_ptr_bt_1117 = bitcast i32* %899 to i8*
  %_offset_above_rbp_1118 = sub i64 %898, %_local_end_to_int_
  %_pot_address_in_parent_stack_1119 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1118
  %_cond1_1120 = icmp ugt i8* %_ptr_bt_1117, %_local_stack_end_ptr_
  %_cond2_1_1121 = icmp ugt i8* %_ptr_bt_1117, %_parent_stack_end_ptr_
  %_cond2_2_1122 = icmp ult i8* %_ptr_bt_1117, %_parent_stack_start_ptr_
  %_cond2_1123 = or i1 %_cond2_1_1121, %_cond2_2_1122
  %_cond4_1124 = icmp ule i8* %_pot_address_in_parent_stack_1119, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1125 = and i1 %_cond1_1120, %_cond2_1123
  %_cond1_n_cond2_cond3_1126 = and i1 %_cond1_n_cond2_1125, %_cond4_1124
  br i1 %_cond1_n_cond2_cond3_1126, label %900, label %901

; <label>:900:                                    ; preds = %873
  %_address_in_parent_stack_bt_1128 = bitcast i8* %_pot_address_in_parent_stack_1119 to i32*
  br label %901

; <label>:901:                                    ; preds = %873, %900
  %902 = phi i32* [ %899, %873 ], [ %_address_in_parent_stack_bt_1128, %900 ]
  %_new_load_1129 = load i32, i32* %902
  %903 = zext i32 %_new_load_1129 to i64, !mcsema_real_eip !169
  store i64 %903, i64* %XAX, !mcsema_real_eip !169
  %EAX_val.249 = load i32, i32* %EAX.9, !mcsema_real_eip !170
  %904 = sub i32 %EAX_val.249, 3, !mcsema_real_eip !170
  %905 = xor i32 %904, %EAX_val.249, !mcsema_real_eip !170
  %906 = xor i32 %905, 3, !mcsema_real_eip !170
  %907 = and i32 %906, 16, !mcsema_real_eip !170
  %908 = icmp ne i32 %907, 0, !mcsema_real_eip !170
  store i1 %908, i1* %AF, !mcsema_real_eip !170
  %909 = trunc i32 %904 to i8, !mcsema_real_eip !170
  %910 = call i8 @llvm.ctpop.i8(i8 %909), !mcsema_real_eip !170
  %911 = trunc i8 %910 to i1, !mcsema_real_eip !170
  %912 = xor i1 %911, true, !mcsema_real_eip !170
  store i1 %912, i1* %PF, !mcsema_real_eip !170
  %913 = icmp eq i32 %904, 0, !mcsema_real_eip !170
  store i1 %913, i1* %ZF, !mcsema_real_eip !170
  %914 = lshr i32 %904, 31, !mcsema_real_eip !170
  %915 = trunc i32 %914 to i1, !mcsema_real_eip !170
  store i1 %915, i1* %SF, !mcsema_real_eip !170
  %916 = icmp ult i32 %EAX_val.249, 3, !mcsema_real_eip !170
  store i1 %916, i1* %CF, !mcsema_real_eip !170
  %917 = xor i32 %EAX_val.249, 3, !mcsema_real_eip !170
  %918 = and i32 %917, %905, !mcsema_real_eip !170
  %919 = lshr i32 %918, 31, !mcsema_real_eip !170
  %920 = trunc i32 %919 to i1, !mcsema_real_eip !170
  store i1 %920, i1* %OF, !mcsema_real_eip !170
  %921 = zext i32 %904 to i64, !mcsema_real_eip !170
  store i64 %921, i64* %XAX, !mcsema_real_eip !170
  %EAX_val.252 = load i32, i32* %EAX.9, !mcsema_real_eip !171
  store i32 %EAX_val.252, i32* %899, !mcsema_real_eip !171
  %_load_rbp_ptr_253 = load i8*, i8** %_RBP_ptr_
  %_new_gep_254 = getelementptr i8, i8* %_load_rbp_ptr_253, i64 -60
  %_allin_new_bt_255 = bitcast i8* %_new_gep_254 to i64*
  %922 = ptrtoint i64* %_allin_new_bt_255 to i64, !mcsema_real_eip !172
  %923 = inttoptr i64 %922 to i32*, !mcsema_real_eip !172
  %_ptr_bt_1132 = bitcast i32* %923 to i8*
  %_offset_above_rbp_1133 = sub i64 %922, %_local_end_to_int_
  %_pot_address_in_parent_stack_1134 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1133
  %_cond1_1135 = icmp ugt i8* %_ptr_bt_1132, %_local_stack_end_ptr_
  %_cond2_1_1136 = icmp ugt i8* %_ptr_bt_1132, %_parent_stack_end_ptr_
  %_cond2_2_1137 = icmp ult i8* %_ptr_bt_1132, %_parent_stack_start_ptr_
  %_cond2_1138 = or i1 %_cond2_1_1136, %_cond2_2_1137
  %_cond4_1139 = icmp ule i8* %_pot_address_in_parent_stack_1134, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1140 = and i1 %_cond1_1135, %_cond2_1138
  %_cond1_n_cond2_cond3_1141 = and i1 %_cond1_n_cond2_1140, %_cond4_1139
  br i1 %_cond1_n_cond2_cond3_1141, label %924, label %925

; <label>:924:                                    ; preds = %901
  %_address_in_parent_stack_bt_1143 = bitcast i8* %_pot_address_in_parent_stack_1134 to i32*
  br label %925

; <label>:925:                                    ; preds = %901, %924
  %926 = phi i32* [ %923, %901 ], [ %_address_in_parent_stack_bt_1143, %924 ]
  %_new_load_1144 = load i32, i32* %926
  %927 = zext i32 %_new_load_1144 to i64, !mcsema_real_eip !172
  store i64 %927, i64* %XAX, !mcsema_real_eip !172
  %EAX_val.255 = load i32, i32* %EAX.9, !mcsema_real_eip !173
  %928 = and i32 %EAX_val.255, 7, !mcsema_real_eip !173
  store i1 false, i1* %SF, !mcsema_real_eip !173
  %929 = icmp eq i32 %928, 0, !mcsema_real_eip !173
  store i1 %929, i1* %ZF, !mcsema_real_eip !173
  %930 = trunc i32 %928 to i8, !mcsema_real_eip !173
  %931 = call i8 @llvm.ctpop.i8(i8 %930), !mcsema_real_eip !173
  %932 = trunc i8 %931 to i1, !mcsema_real_eip !173
  %933 = xor i1 %932, true, !mcsema_real_eip !173
  store i1 %933, i1* %PF, !mcsema_real_eip !173
  store i1 false, i1* %OF, !mcsema_real_eip !173
  store i1 false, i1* %CF, !mcsema_real_eip !173
  store i1 undef, i1* %AF, !mcsema_real_eip !173
  %934 = zext i32 %928 to i64, !mcsema_real_eip !173
  store i64 %934, i64* %XAX, !mcsema_real_eip !173
  %EAX_val.257 = load i32, i32* %EAX.9, !mcsema_real_eip !174
  store i1 false, i1* %AF, !mcsema_real_eip !174
  %935 = trunc i32 %EAX_val.257 to i8, !mcsema_real_eip !174
  %936 = call i8 @llvm.ctpop.i8(i8 %935), !mcsema_real_eip !174
  %937 = trunc i8 %936 to i1, !mcsema_real_eip !174
  %938 = xor i1 %937, true, !mcsema_real_eip !174
  store i1 %938, i1* %PF, !mcsema_real_eip !174
  %939 = icmp eq i32 %EAX_val.257, 0, !mcsema_real_eip !174
  store i1 %939, i1* %ZF, !mcsema_real_eip !174
  %940 = lshr i32 %EAX_val.257, 31, !mcsema_real_eip !174
  %941 = trunc i32 %940 to i1, !mcsema_real_eip !174
  store i1 %941, i1* %SF, !mcsema_real_eip !174
  store i1 false, i1* %CF, !mcsema_real_eip !174
  store i1 false, i1* %OF, !mcsema_real_eip !174
  br i1 %939, label %block_0x2d2, label %block_0x2c6, !mcsema_real_eip !175

block_0x2c6:                                      ; preds = %925
  %_new_gep_257 = getelementptr i8, i8* %_load_rbp_ptr_253, i64 -4
  %_allin_new_bt_258 = bitcast i8* %_new_gep_257 to i64*
  %942 = ptrtoint i64* %_allin_new_bt_258 to i64, !mcsema_real_eip !176
  %943 = inttoptr i64 %942 to i32*, !mcsema_real_eip !176
  store i32 -21, i32* %943, !mcsema_real_eip !176
  br label %block_0x417, !mcsema_real_eip !177

block_0x2d2:                                      ; preds = %925
  br i1 %_cond1_n_cond2_cond3_1141, label %944, label %945

; <label>:944:                                    ; preds = %block_0x2d2
  %_address_in_parent_stack_bt_1158 = bitcast i8* %_pot_address_in_parent_stack_1134 to i32*
  br label %945

; <label>:945:                                    ; preds = %block_0x2d2, %944
  %946 = phi i32* [ %923, %block_0x2d2 ], [ %_address_in_parent_stack_bt_1158, %944 ]
  %_new_load_1159 = load i32, i32* %946
  %947 = zext i32 %_new_load_1159 to i64, !mcsema_real_eip !178
  store i64 %947, i64* %XAX, !mcsema_real_eip !178
  %EAX_val.261 = load i32, i32* %EAX.9, !mcsema_real_eip !179
  %948 = sub i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  %949 = xor i32 %948, %EAX_val.261, !mcsema_real_eip !179
  %950 = xor i32 %949, -2147483648, !mcsema_real_eip !179
  %951 = and i32 %950, 16, !mcsema_real_eip !179
  %952 = icmp ne i32 %951, 0, !mcsema_real_eip !179
  store i1 %952, i1* %AF, !mcsema_real_eip !179
  %953 = trunc i32 %948 to i8, !mcsema_real_eip !179
  %954 = call i8 @llvm.ctpop.i8(i8 %953), !mcsema_real_eip !179
  %955 = trunc i8 %954 to i1, !mcsema_real_eip !179
  %956 = xor i1 %955, true, !mcsema_real_eip !179
  store i1 %956, i1* %PF, !mcsema_real_eip !179
  %957 = icmp eq i32 %948, 0, !mcsema_real_eip !179
  store i1 %957, i1* %ZF, !mcsema_real_eip !179
  %958 = lshr i32 %948, 31, !mcsema_real_eip !179
  %959 = trunc i32 %958 to i1, !mcsema_real_eip !179
  store i1 %959, i1* %SF, !mcsema_real_eip !179
  %960 = icmp ult i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  store i1 %960, i1* %CF, !mcsema_real_eip !179
  %961 = xor i32 %EAX_val.261, -2147483648, !mcsema_real_eip !179
  %962 = and i32 %961, %949, !mcsema_real_eip !179
  %963 = lshr i32 %962, 31, !mcsema_real_eip !179
  %964 = trunc i32 %963 to i1, !mcsema_real_eip !179
  store i1 %964, i1* %OF, !mcsema_real_eip !179
  %965 = zext i32 %948 to i64, !mcsema_real_eip !179
  store i64 %965, i64* %XAX, !mcsema_real_eip !179
  %EAX_val.264 = load i32, i32* %EAX.9, !mcsema_real_eip !180
  store i32 %EAX_val.264, i32* %923, !mcsema_real_eip !180
  %_load_rbp_ptr_265 = load i8*, i8** %_RBP_ptr_
  %_new_gep_266 = getelementptr i8, i8* %_load_rbp_ptr_265, i64 -60
  %_allin_new_bt_267 = bitcast i8* %_new_gep_266 to i64*
  %966 = ptrtoint i64* %_allin_new_bt_267 to i64, !mcsema_real_eip !181
  %967 = inttoptr i64 %966 to i32*, !mcsema_real_eip !181
  %_ptr_bt_1162 = bitcast i32* %967 to i8*
  %_offset_above_rbp_1163 = sub i64 %966, %_local_end_to_int_
  %_pot_address_in_parent_stack_1164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1163
  %_cond1_1165 = icmp ugt i8* %_ptr_bt_1162, %_local_stack_end_ptr_
  %_cond2_1_1166 = icmp ugt i8* %_ptr_bt_1162, %_parent_stack_end_ptr_
  %_cond2_2_1167 = icmp ult i8* %_ptr_bt_1162, %_parent_stack_start_ptr_
  %_cond2_1168 = or i1 %_cond2_1_1166, %_cond2_2_1167
  %_cond4_1169 = icmp ule i8* %_pot_address_in_parent_stack_1164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1170 = and i1 %_cond1_1165, %_cond2_1168
  %_cond1_n_cond2_cond3_1171 = and i1 %_cond1_n_cond2_1170, %_cond4_1169
  br i1 %_cond1_n_cond2_cond3_1171, label %968, label %969

; <label>:968:                                    ; preds = %945
  %_address_in_parent_stack_bt_1173 = bitcast i8* %_pot_address_in_parent_stack_1164 to i32*
  br label %969

; <label>:969:                                    ; preds = %945, %968
  %970 = phi i32* [ %967, %945 ], [ %_address_in_parent_stack_bt_1173, %968 ]
  %_new_load_1174 = load i32, i32* %970
  %971 = sub i32 %_new_load_1174, 268435455, !mcsema_real_eip !181
  %972 = xor i32 %971, %_new_load_1174, !mcsema_real_eip !181
  %973 = xor i32 %972, 268435455, !mcsema_real_eip !181
  %974 = and i32 %973, 16, !mcsema_real_eip !181
  %975 = icmp ne i32 %974, 0, !mcsema_real_eip !181
  store i1 %975, i1* %AF, !mcsema_real_eip !181
  %976 = trunc i32 %971 to i8, !mcsema_real_eip !181
  %977 = call i8 @llvm.ctpop.i8(i8 %976), !mcsema_real_eip !181
  %978 = trunc i8 %977 to i1, !mcsema_real_eip !181
  %979 = xor i1 %978, true, !mcsema_real_eip !181
  store i1 %979, i1* %PF, !mcsema_real_eip !181
  %980 = icmp eq i32 %971, 0, !mcsema_real_eip !181
  store i1 %980, i1* %ZF, !mcsema_real_eip !181
  %981 = lshr i32 %971, 31, !mcsema_real_eip !181
  %982 = trunc i32 %981 to i1, !mcsema_real_eip !181
  store i1 %982, i1* %SF, !mcsema_real_eip !181
  %983 = icmp ult i32 %_new_load_1174, 268435455, !mcsema_real_eip !181
  store i1 %983, i1* %CF, !mcsema_real_eip !181
  %984 = xor i32 %_new_load_1174, 268435455, !mcsema_real_eip !181
  %985 = and i32 %984, %972, !mcsema_real_eip !181
  %986 = lshr i32 %985, 31, !mcsema_real_eip !181
  %987 = trunc i32 %986 to i1, !mcsema_real_eip !181
  store i1 %987, i1* %OF, !mcsema_real_eip !181
  %988 = or i1 %983, %980, !mcsema_real_eip !182
  br i1 %988, label %block_0x2f6, label %block_0x2ea, !mcsema_real_eip !182

block_0x2ea:                                      ; preds = %969
  %_new_gep_269 = getelementptr i8, i8* %_load_rbp_ptr_265, i64 -4
  %_allin_new_bt_270 = bitcast i8* %_new_gep_269 to i64*
  %989 = ptrtoint i64* %_allin_new_bt_270 to i64, !mcsema_real_eip !183
  %990 = inttoptr i64 %989 to i32*, !mcsema_real_eip !183
  store i32 -22, i32* %990, !mcsema_real_eip !183
  br label %block_0x417, !mcsema_real_eip !184

block_0x2f6:                                      ; preds = %969
  store i64 10000, i64* %XAX, !mcsema_real_eip !185
  br i1 %_cond1_n_cond2_cond3_1171, label %991, label %992

; <label>:991:                                    ; preds = %block_0x2f6
  %_address_in_parent_stack_bt_1188 = bitcast i8* %_pot_address_in_parent_stack_1164 to i32*
  br label %992

; <label>:992:                                    ; preds = %block_0x2f6, %991
  %993 = phi i32* [ %967, %block_0x2f6 ], [ %_address_in_parent_stack_bt_1188, %991 ]
  %_new_load_1189 = load i32, i32* %993
  %994 = zext i32 %_new_load_1189 to i64, !mcsema_real_eip !186
  store i64 %994, i64* %XCX, !mcsema_real_eip !186
  %ECX_val.269 = load i32, i32* %ECX.12, !mcsema_real_eip !187
  %995 = xor i32 %ECX_val.269, 13631488, !mcsema_real_eip !187
  store i1 false, i1* %CF, !mcsema_real_eip !187
  store i1 false, i1* %OF, !mcsema_real_eip !187
  %996 = lshr i32 %995, 31, !mcsema_real_eip !187
  %997 = trunc i32 %996 to i1, !mcsema_real_eip !187
  store i1 %997, i1* %SF, !mcsema_real_eip !187
  %998 = icmp eq i32 %995, 0, !mcsema_real_eip !187
  store i1 %998, i1* %ZF, !mcsema_real_eip !187
  %999 = trunc i32 %995 to i8, !mcsema_real_eip !187
  %1000 = call i8 @llvm.ctpop.i8(i8 %999), !mcsema_real_eip !187
  %1001 = trunc i8 %1000 to i1, !mcsema_real_eip !187
  %1002 = xor i1 %1001, true, !mcsema_real_eip !187
  store i1 %1002, i1* %PF, !mcsema_real_eip !187
  store i1 undef, i1* %AF, !mcsema_real_eip !187
  %1003 = zext i32 %995 to i64, !mcsema_real_eip !187
  store i64 %1003, i64* %XCX, !mcsema_real_eip !187
  %ECX_val.272 = load i32, i32* %ECX.12, !mcsema_real_eip !188
  store i32 %ECX_val.272, i32* %967, !mcsema_real_eip !188
  %_load_rbp_ptr_277 = load i8*, i8** %_RBP_ptr_
  %_new_gep_278 = getelementptr i8, i8* %_load_rbp_ptr_277, i64 -60
  %_allin_new_bt_279 = bitcast i8* %_new_gep_278 to i64*
  %1004 = ptrtoint i64* %_allin_new_bt_279 to i64, !mcsema_real_eip !189
  %1005 = inttoptr i64 %1004 to i32*, !mcsema_real_eip !189
  %_ptr_bt_1192 = bitcast i32* %1005 to i8*
  %_offset_above_rbp_1193 = sub i64 %1004, %_local_end_to_int_
  %_pot_address_in_parent_stack_1194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1193
  %_cond1_1195 = icmp ugt i8* %_ptr_bt_1192, %_local_stack_end_ptr_
  %_cond2_1_1196 = icmp ugt i8* %_ptr_bt_1192, %_parent_stack_end_ptr_
  %_cond2_2_1197 = icmp ult i8* %_ptr_bt_1192, %_parent_stack_start_ptr_
  %_cond2_1198 = or i1 %_cond2_1_1196, %_cond2_2_1197
  %_cond4_1199 = icmp ule i8* %_pot_address_in_parent_stack_1194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1200 = and i1 %_cond1_1195, %_cond2_1198
  %_cond1_n_cond2_cond3_1201 = and i1 %_cond1_n_cond2_1200, %_cond4_1199
  br i1 %_cond1_n_cond2_cond3_1201, label %1006, label %1007

; <label>:1006:                                   ; preds = %992
  %_address_in_parent_stack_bt_1203 = bitcast i8* %_pot_address_in_parent_stack_1194 to i32*
  br label %1007

; <label>:1007:                                   ; preds = %992, %1006
  %1008 = phi i32* [ %1005, %992 ], [ %_address_in_parent_stack_bt_1203, %1006 ]
  %_new_load_1204 = load i32, i32* %1008
  %1009 = zext i32 %_new_load_1204 to i64, !mcsema_real_eip !189
  store i64 %1009, i64* %XCX, !mcsema_real_eip !189
  %ECX_val.275 = load i32, i32* %ECX.12, !mcsema_real_eip !190
  %1010 = lshr i32 %ECX_val.275, 3, !mcsema_real_eip !190
  %1011 = and i32 %1010, 1, !mcsema_real_eip !190
  %1012 = icmp ne i32 %1011, 0, !mcsema_real_eip !190
  %1013 = load i1, i1* %CF, !mcsema_real_eip !190
  %1014 = lshr i32 %1010, 1, !mcsema_real_eip !190
  %1015 = load i1, i1* %OF, !mcsema_real_eip !190
  %1016 = and i32 %ECX_val.275, -2147483648, !mcsema_real_eip !190
  %1017 = icmp ne i32 %1016, 0, !mcsema_real_eip !190
  store i1 %1012, i1* %CF, !mcsema_real_eip !190
  %1018 = load i1, i1* %ZF, !mcsema_real_eip !190
  %1019 = icmp eq i32 %1014, 0, !mcsema_real_eip !190
  store i1 %1019, i1* %ZF, !mcsema_real_eip !190
  %1020 = load i1, i1* %SF, !mcsema_real_eip !190
  store i1 false, i1* %SF, !mcsema_real_eip !190
  %1021 = load i1, i1* %PF, !mcsema_real_eip !190
  %1022 = trunc i32 %1014 to i8, !mcsema_real_eip !190
  %1023 = call i8 @llvm.ctpop.i8(i8 %1022), !mcsema_real_eip !190
  %1024 = trunc i8 %1023 to i1, !mcsema_real_eip !190
  %1025 = xor i1 %1024, true, !mcsema_real_eip !190
  store i1 %1025, i1* %PF, !mcsema_real_eip !190
  %1026 = zext i32 %1014 to i64, !mcsema_real_eip !190
  store i64 %1026, i64* %XCX, !mcsema_real_eip !190
  %ECX_val.278 = load i32, i32* %ECX.12, !mcsema_real_eip !191
  store i32 %ECX_val.278, i32* %1005, !mcsema_real_eip !191
  %_load_rbp_ptr_283 = load i8*, i8** %_RBP_ptr_
  %_new_gep_284 = getelementptr i8, i8* %_load_rbp_ptr_283, i64 -60
  %_allin_new_bt_285 = bitcast i8* %_new_gep_284 to i64*
  %1027 = ptrtoint i64* %_allin_new_bt_285 to i64, !mcsema_real_eip !192
  %1028 = inttoptr i64 %1027 to i32*, !mcsema_real_eip !192
  %_ptr_bt_1207 = bitcast i32* %1028 to i8*
  %_offset_above_rbp_1208 = sub i64 %1027, %_local_end_to_int_
  %_pot_address_in_parent_stack_1209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1208
  %_cond1_1210 = icmp ugt i8* %_ptr_bt_1207, %_local_stack_end_ptr_
  %_cond2_1_1211 = icmp ugt i8* %_ptr_bt_1207, %_parent_stack_end_ptr_
  %_cond2_2_1212 = icmp ult i8* %_ptr_bt_1207, %_parent_stack_start_ptr_
  %_cond2_1213 = or i1 %_cond2_1_1211, %_cond2_2_1212
  %_cond4_1214 = icmp ule i8* %_pot_address_in_parent_stack_1209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1215 = and i1 %_cond1_1210, %_cond2_1213
  %_cond1_n_cond2_cond3_1216 = and i1 %_cond1_n_cond2_1215, %_cond4_1214
  br i1 %_cond1_n_cond2_cond3_1216, label %1029, label %1030

; <label>:1029:                                   ; preds = %1007
  %_address_in_parent_stack_bt_1218 = bitcast i8* %_pot_address_in_parent_stack_1209 to i32*
  br label %1030

; <label>:1030:                                   ; preds = %1007, %1029
  %1031 = phi i32* [ %1028, %1007 ], [ %_address_in_parent_stack_bt_1218, %1029 ]
  %_new_load_1219 = load i32, i32* %1031
  %1032 = zext i32 %_new_load_1219 to i64, !mcsema_real_eip !192
  store i64 %1032, i64* %XCX, !mcsema_real_eip !192
  %ECX_val.281 = load i32, i32* %ECX.12, !mcsema_real_eip !193
  %1033 = sub i32 %ECX_val.281, 226, !mcsema_real_eip !193
  %1034 = xor i32 %1033, %ECX_val.281, !mcsema_real_eip !193
  %1035 = xor i32 %1034, 226, !mcsema_real_eip !193
  %1036 = and i32 %1035, 16, !mcsema_real_eip !193
  %1037 = icmp ne i32 %1036, 0, !mcsema_real_eip !193
  store i1 %1037, i1* %AF, !mcsema_real_eip !193
  %1038 = trunc i32 %1033 to i8, !mcsema_real_eip !193
  %1039 = call i8 @llvm.ctpop.i8(i8 %1038), !mcsema_real_eip !193
  %1040 = trunc i8 %1039 to i1, !mcsema_real_eip !193
  %1041 = xor i1 %1040, true, !mcsema_real_eip !193
  store i1 %1041, i1* %PF, !mcsema_real_eip !193
  %1042 = icmp eq i32 %1033, 0, !mcsema_real_eip !193
  store i1 %1042, i1* %ZF, !mcsema_real_eip !193
  %1043 = lshr i32 %1033, 31, !mcsema_real_eip !193
  %1044 = trunc i32 %1043 to i1, !mcsema_real_eip !193
  store i1 %1044, i1* %SF, !mcsema_real_eip !193
  %1045 = icmp ult i32 %ECX_val.281, 226, !mcsema_real_eip !193
  store i1 %1045, i1* %CF, !mcsema_real_eip !193
  %1046 = xor i32 %ECX_val.281, 226, !mcsema_real_eip !193
  %1047 = and i32 %1046, %1034, !mcsema_real_eip !193
  %1048 = lshr i32 %1047, 31, !mcsema_real_eip !193
  %1049 = trunc i32 %1048 to i1, !mcsema_real_eip !193
  store i1 %1049, i1* %OF, !mcsema_real_eip !193
  %1050 = zext i32 %1033 to i64, !mcsema_real_eip !193
  store i64 %1050, i64* %XCX, !mcsema_real_eip !193
  %ECX_val.284 = load i32, i32* %ECX.12, !mcsema_real_eip !194
  store i32 %ECX_val.284, i32* %1028, !mcsema_real_eip !194
  %_load_rbp_ptr_289 = load i8*, i8** %_RBP_ptr_
  %_new_gep_290 = getelementptr i8, i8* %_load_rbp_ptr_289, i64 -60
  %_allin_new_bt_291 = bitcast i8* %_new_gep_290 to i64*
  %1051 = ptrtoint i64* %_allin_new_bt_291 to i64, !mcsema_real_eip !195
  %1052 = inttoptr i64 %1051 to i32*, !mcsema_real_eip !195
  %_ptr_bt_1222 = bitcast i32* %1052 to i8*
  %_offset_above_rbp_1223 = sub i64 %1051, %_local_end_to_int_
  %_pot_address_in_parent_stack_1224 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1223
  %_cond1_1225 = icmp ugt i8* %_ptr_bt_1222, %_local_stack_end_ptr_
  %_cond2_1_1226 = icmp ugt i8* %_ptr_bt_1222, %_parent_stack_end_ptr_
  %_cond2_2_1227 = icmp ult i8* %_ptr_bt_1222, %_parent_stack_start_ptr_
  %_cond2_1228 = or i1 %_cond2_1_1226, %_cond2_2_1227
  %_cond4_1229 = icmp ule i8* %_pot_address_in_parent_stack_1224, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1230 = and i1 %_cond1_1225, %_cond2_1228
  %_cond1_n_cond2_cond3_1231 = and i1 %_cond1_n_cond2_1230, %_cond4_1229
  br i1 %_cond1_n_cond2_cond3_1231, label %1053, label %1054

; <label>:1053:                                   ; preds = %1030
  %_address_in_parent_stack_bt_1233 = bitcast i8* %_pot_address_in_parent_stack_1224 to i32*
  br label %1054

; <label>:1054:                                   ; preds = %1030, %1053
  %1055 = phi i32* [ %1052, %1030 ], [ %_address_in_parent_stack_bt_1233, %1053 ]
  %_new_load_1234 = load i32, i32* %1055
  %1056 = zext i32 %_new_load_1234 to i64, !mcsema_real_eip !195
  store i64 %1056, i64* %XCX, !mcsema_real_eip !195
  %_new_gep_293 = getelementptr i8, i8* %_load_rbp_ptr_289, i64 -68
  %_allin_new_bt_294 = bitcast i8* %_new_gep_293 to i64*
  %EAX_val.288 = load i32, i32* %EAX.9, !mcsema_real_eip !196
  %1057 = ptrtoint i64* %_allin_new_bt_294 to i64, !mcsema_real_eip !196
  %1058 = inttoptr i64 %1057 to i32*, !mcsema_real_eip !196
  store i32 %EAX_val.288, i32* %1058, !mcsema_real_eip !196
  %ECX_val.290 = load i32, i32* %ECX.12, !mcsema_real_eip !197
  %1059 = zext i32 %ECX_val.290 to i64, !mcsema_real_eip !197
  store i64 %1059, i64* %XAX, !mcsema_real_eip !197
  %EDX_val.292 = load i32, i32* %EDX.64, !mcsema_real_eip !198
  store i1 false, i1* %CF, !mcsema_real_eip !198
  store i1 false, i1* %OF, !mcsema_real_eip !198
  store i1 false, i1* %SF, !mcsema_real_eip !198
  store i1 true, i1* %ZF, !mcsema_real_eip !198
  store i1 true, i1* %PF, !mcsema_real_eip !198
  store i1 undef, i1* %AF, !mcsema_real_eip !198
  store i64 0, i64* %XDX, !mcsema_real_eip !198
  %_load_rbp_ptr_295 = load i8*, i8** %_RBP_ptr_
  %_new_gep_296 = getelementptr i8, i8* %_load_rbp_ptr_295, i64 -68
  %_allin_new_bt_297 = bitcast i8* %_new_gep_296 to i64*
  %1060 = ptrtoint i64* %_allin_new_bt_297 to i64, !mcsema_real_eip !199
  %1061 = inttoptr i64 %1060 to i32*, !mcsema_real_eip !199
  %_ptr_bt_1237 = bitcast i32* %1061 to i8*
  %_offset_above_rbp_1238 = sub i64 %1060, %_local_end_to_int_
  %_pot_address_in_parent_stack_1239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1238
  %_cond1_1240 = icmp ugt i8* %_ptr_bt_1237, %_local_stack_end_ptr_
  %_cond2_1_1241 = icmp ugt i8* %_ptr_bt_1237, %_parent_stack_end_ptr_
  %_cond2_2_1242 = icmp ult i8* %_ptr_bt_1237, %_parent_stack_start_ptr_
  %_cond2_1243 = or i1 %_cond2_1_1241, %_cond2_2_1242
  %_cond4_1244 = icmp ule i8* %_pot_address_in_parent_stack_1239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1245 = and i1 %_cond1_1240, %_cond2_1243
  %_cond1_n_cond2_cond3_1246 = and i1 %_cond1_n_cond2_1245, %_cond4_1244
  br i1 %_cond1_n_cond2_cond3_1246, label %1062, label %1063

; <label>:1062:                                   ; preds = %1054
  %_address_in_parent_stack_bt_1248 = bitcast i8* %_pot_address_in_parent_stack_1239 to i32*
  br label %1063

; <label>:1063:                                   ; preds = %1054, %1062
  %1064 = phi i32* [ %1061, %1054 ], [ %_address_in_parent_stack_bt_1248, %1062 ]
  %_new_load_1249 = load i32, i32* %1064
  %1065 = zext i32 %_new_load_1249 to i64, !mcsema_real_eip !199
  store i64 %1065, i64* %XCX, !mcsema_real_eip !199
  %ECX_val.297 = load i32, i32* %ECX.12, !mcsema_real_eip !200
  %EAX_val.299 = load i32, i32* %EAX.9, !mcsema_real_eip !200
  %EDX_val.301 = load i32, i32* %EDX.64, !mcsema_real_eip !200
  %1066 = zext i32 %EDX_val.301 to i64, !mcsema_real_eip !200
  %1067 = shl i64 %1066, 32, !mcsema_real_eip !200
  %1068 = sext i32 %EAX_val.299 to i64, !mcsema_real_eip !200
  %1069 = or i64 %1067, %1068, !mcsema_real_eip !200
  %1070 = zext i32 %ECX_val.297 to i64, !mcsema_real_eip !200
  %1071 = udiv i64 %1069, %1070, !mcsema_real_eip !200
  %1072 = urem i64 %1069, %1070, !mcsema_real_eip !200
  %1073 = trunc i64 %1072 to i32, !mcsema_real_eip !200
  %1074 = trunc i64 %1071 to i32, !mcsema_real_eip !200
  %1075 = zext i32 %1073 to i64, !mcsema_real_eip !200
  store i64 %1075, i64* %XDX, !mcsema_real_eip !200
  %1076 = zext i32 %1074 to i64, !mcsema_real_eip !200
  store i64 %1076, i64* %XAX, !mcsema_real_eip !200
  %_new_gep_299 = getelementptr i8, i8* %_load_rbp_ptr_295, i64 -60
  %_allin_new_bt_300 = bitcast i8* %_new_gep_299 to i64*
  %EAX_val.304 = load i32, i32* %EAX.9, !mcsema_real_eip !201
  %1077 = ptrtoint i64* %_allin_new_bt_300 to i64, !mcsema_real_eip !201
  %1078 = inttoptr i64 %1077 to i32*, !mcsema_real_eip !201
  store i32 %EAX_val.304, i32* %1078, !mcsema_real_eip !201
  %_load_rbp_ptr_301 = load i8*, i8** %_RBP_ptr_
  %_new_gep_302 = getelementptr i8, i8* %_load_rbp_ptr_301, i64 -60
  %_allin_new_bt_303 = bitcast i8* %_new_gep_302 to i64*
  %1079 = ptrtoint i64* %_allin_new_bt_303 to i64, !mcsema_real_eip !202
  %1080 = inttoptr i64 %1079 to i32*, !mcsema_real_eip !202
  %_ptr_bt_1252 = bitcast i32* %1080 to i8*
  %_offset_above_rbp_1253 = sub i64 %1079, %_local_end_to_int_
  %_pot_address_in_parent_stack_1254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1253
  %_cond1_1255 = icmp ugt i8* %_ptr_bt_1252, %_local_stack_end_ptr_
  %_cond2_1_1256 = icmp ugt i8* %_ptr_bt_1252, %_parent_stack_end_ptr_
  %_cond2_2_1257 = icmp ult i8* %_ptr_bt_1252, %_parent_stack_start_ptr_
  %_cond2_1258 = or i1 %_cond2_1_1256, %_cond2_2_1257
  %_cond4_1259 = icmp ule i8* %_pot_address_in_parent_stack_1254, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1260 = and i1 %_cond1_1255, %_cond2_1258
  %_cond1_n_cond2_cond3_1261 = and i1 %_cond1_n_cond2_1260, %_cond4_1259
  br i1 %_cond1_n_cond2_cond3_1261, label %1081, label %1082

; <label>:1081:                                   ; preds = %1063
  %_address_in_parent_stack_bt_1263 = bitcast i8* %_pot_address_in_parent_stack_1254 to i32*
  br label %1082

; <label>:1082:                                   ; preds = %1063, %1081
  %1083 = phi i32* [ %1080, %1063 ], [ %_address_in_parent_stack_bt_1263, %1081 ]
  %_new_load_1264 = load i32, i32* %1083
  %1084 = sub i32 %_new_load_1264, 3, !mcsema_real_eip !202
  %1085 = xor i32 %1084, %_new_load_1264, !mcsema_real_eip !202
  %1086 = xor i32 %1085, 3, !mcsema_real_eip !202
  %1087 = and i32 %1086, 16, !mcsema_real_eip !202
  %1088 = icmp ne i32 %1087, 0, !mcsema_real_eip !202
  store i1 %1088, i1* %AF, !mcsema_real_eip !202
  %1089 = trunc i32 %1084 to i8, !mcsema_real_eip !202
  %1090 = call i8 @llvm.ctpop.i8(i8 %1089), !mcsema_real_eip !202
  %1091 = trunc i8 %1090 to i1, !mcsema_real_eip !202
  %1092 = xor i1 %1091, true, !mcsema_real_eip !202
  store i1 %1092, i1* %PF, !mcsema_real_eip !202
  %1093 = icmp eq i32 %1084, 0, !mcsema_real_eip !202
  store i1 %1093, i1* %ZF, !mcsema_real_eip !202
  %1094 = lshr i32 %1084, 31, !mcsema_real_eip !202
  %1095 = trunc i32 %1094 to i1, !mcsema_real_eip !202
  store i1 %1095, i1* %SF, !mcsema_real_eip !202
  %1096 = icmp ult i32 %_new_load_1264, 3, !mcsema_real_eip !202
  store i1 %1096, i1* %CF, !mcsema_real_eip !202
  %1097 = xor i32 %_new_load_1264, 3, !mcsema_real_eip !202
  %1098 = and i32 %1097, %1085, !mcsema_real_eip !202
  %1099 = lshr i32 %1098, 31, !mcsema_real_eip !202
  %1100 = trunc i32 %1099 to i1, !mcsema_real_eip !202
  store i1 %1100, i1* %OF, !mcsema_real_eip !202
  br i1 %1093, label %block_0x343, label %block_0x338, !mcsema_real_eip !203

block_0x338:                                      ; preds = %1082
  br i1 %_cond1_n_cond2_cond3_1261, label %1101, label %1102

; <label>:1101:                                   ; preds = %block_0x338
  %_address_in_parent_stack_bt_1278 = bitcast i8* %_pot_address_in_parent_stack_1254 to i32*
  br label %1102

; <label>:1102:                                   ; preds = %block_0x338, %1101
  %1103 = phi i32* [ %1080, %block_0x338 ], [ %_address_in_parent_stack_bt_1278, %1101 ]
  %_new_load_1279 = load i32, i32* %1103
  %1104 = zext i32 %_new_load_1279 to i64, !mcsema_real_eip !204
  store i64 %1104, i64* %XAX, !mcsema_real_eip !204
  %_new_gep_308 = getelementptr i8, i8* %_load_rbp_ptr_301, i64 -4
  %_allin_new_bt_309 = bitcast i8* %_new_gep_308 to i64*
  %EAX_val.309 = load i32, i32* %EAX.9, !mcsema_real_eip !205
  %1105 = ptrtoint i64* %_allin_new_bt_309 to i64, !mcsema_real_eip !205
  %1106 = inttoptr i64 %1105 to i32*, !mcsema_real_eip !205
  store i32 %EAX_val.309, i32* %1106, !mcsema_real_eip !205
  br label %block_0x417, !mcsema_real_eip !206

block_0x343:                                      ; preds = %1082
  store i64 4, i64* %XDX, !mcsema_real_eip !207
  %_new_gep_311 = getelementptr i8, i8* %_load_rbp_ptr_301, i64 -20
  %_allin_new_bt_312 = bitcast i8* %_new_gep_311 to i64*
  %1107 = ptrtoint i64* %_allin_new_bt_312 to i64, !mcsema_real_eip !208
  %1108 = inttoptr i64 %1107 to i32*, !mcsema_real_eip !208
  %_ptr_bt_1282 = bitcast i32* %1108 to i8*
  %_offset_above_rbp_1283 = sub i64 %1107, %_local_end_to_int_
  %_pot_address_in_parent_stack_1284 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1283
  %_cond1_1285 = icmp ugt i8* %_ptr_bt_1282, %_local_stack_end_ptr_
  %_cond2_1_1286 = icmp ugt i8* %_ptr_bt_1282, %_parent_stack_end_ptr_
  %_cond2_2_1287 = icmp ult i8* %_ptr_bt_1282, %_parent_stack_start_ptr_
  %_cond2_1288 = or i1 %_cond2_1_1286, %_cond2_2_1287
  %_cond4_1289 = icmp ule i8* %_pot_address_in_parent_stack_1284, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1290 = and i1 %_cond1_1285, %_cond2_1288
  %_cond1_n_cond2_cond3_1291 = and i1 %_cond1_n_cond2_1290, %_cond4_1289
  br i1 %_cond1_n_cond2_cond3_1291, label %1109, label %1110

; <label>:1109:                                   ; preds = %block_0x343
  %_address_in_parent_stack_bt_1293 = bitcast i8* %_pot_address_in_parent_stack_1284 to i32*
  br label %1110

; <label>:1110:                                   ; preds = %block_0x343, %1109
  %1111 = phi i32* [ %1108, %block_0x343 ], [ %_address_in_parent_stack_bt_1293, %1109 ]
  %_new_load_1294 = load i32, i32* %1111
  %1112 = zext i32 %_new_load_1294 to i64, !mcsema_real_eip !208
  store i64 %1112, i64* %XDI, !mcsema_real_eip !208
  %_new_gep_314 = getelementptr i8, i8* %_load_rbp_ptr_301, i64 -16
  %_allin_new_bt_315 = bitcast i8* %_new_gep_314 to i64*
  %_ptr_to_int_1295 = ptrtoint i64* %_allin_new_bt_315 to i64
  %_offset_above_rbp_1298 = sub i64 %_ptr_to_int_1295, %_local_end_to_int_
  %_pot_address_in_parent_stack_1299 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1298
  %_cond1_1300 = icmp ugt i8* %_new_gep_314, %_local_stack_end_ptr_
  %_cond2_1_1301 = icmp ugt i8* %_new_gep_314, %_parent_stack_end_ptr_
  %_cond2_2_1302 = icmp ult i8* %_new_gep_314, %_parent_stack_start_ptr_
  %_cond2_1303 = or i1 %_cond2_1_1301, %_cond2_2_1302
  %_cond4_1304 = icmp ule i8* %_pot_address_in_parent_stack_1299, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1305 = and i1 %_cond1_1300, %_cond2_1303
  %_cond1_n_cond2_cond3_1306 = and i1 %_cond1_n_cond2_1305, %_cond4_1304
  br i1 %_cond1_n_cond2_cond3_1306, label %1113, label %1114

; <label>:1113:                                   ; preds = %1110
  %_address_in_parent_stack_bt_1308 = bitcast i8* %_pot_address_in_parent_stack_1299 to i64*
  br label %1114

; <label>:1114:                                   ; preds = %1110, %1113
  %1115 = phi i64* [ %_allin_new_bt_315, %1110 ], [ %_address_in_parent_stack_bt_1308, %1113 ]
  %_new_load_1309 = load i64, i64* %1115
  store i64 %_new_load_1309, i64* %XAX, !mcsema_real_eip !209
  %1116 = add i64 28, %_new_load_1309, !mcsema_real_eip !210
  %1117 = xor i64 %1116, %_new_load_1309, !mcsema_real_eip !210
  %1118 = xor i64 %1117, 28, !mcsema_real_eip !210
  %1119 = and i64 %1118, 16, !mcsema_real_eip !210
  %1120 = icmp ne i64 %1119, 0, !mcsema_real_eip !210
  store i1 %1120, i1* %AF, !mcsema_real_eip !210
  %1121 = lshr i64 %1116, 63, !mcsema_real_eip !210
  %1122 = trunc i64 %1121 to i1, !mcsema_real_eip !210
  store i1 %1122, i1* %SF, !mcsema_real_eip !210
  %1123 = icmp eq i64 %1116, 0, !mcsema_real_eip !210
  store i1 %1123, i1* %ZF, !mcsema_real_eip !210
  %1124 = xor i64 %_new_load_1309, 28, !mcsema_real_eip !210
  %1125 = xor i64 %1124, -1, !mcsema_real_eip !210
  %1126 = and i64 %1125, %1117, !mcsema_real_eip !210
  %1127 = lshr i64 %1126, 63, !mcsema_real_eip !210
  %1128 = and i64 %1127, 1, !mcsema_real_eip !210
  %1129 = trunc i64 %1128 to i1, !mcsema_real_eip !210
  store i1 %1129, i1* %OF, !mcsema_real_eip !210
  %1130 = trunc i64 %1116 to i8, !mcsema_real_eip !210
  %1131 = call i8 @llvm.ctpop.i8(i8 %1130), !mcsema_real_eip !210
  %1132 = trunc i8 %1131 to i1, !mcsema_real_eip !210
  %1133 = xor i1 %1132, true, !mcsema_real_eip !210
  store i1 %1133, i1* %PF, !mcsema_real_eip !210
  %1134 = icmp ult i64 %1116, %_new_load_1309, !mcsema_real_eip !210
  store i1 %1134, i1* %CF, !mcsema_real_eip !210
  store i64 %1116, i64* %XAX, !mcsema_real_eip !210
  store i64 %1116, i64* %XSI, !mcsema_real_eip !211
  %_load_rsp_ptr_316 = load i8*, i8** %_RSP_ptr_
  %RSP_val.317 = load i64, i64* %XSP, !mcsema_real_eip !212
  %_new_gep_317 = getelementptr i8, i8* %_load_rsp_ptr_316, i64 -8
  %1135 = sub i64 %RSP_val.317, 8, !mcsema_real_eip !212
  %_allin_new_bt_318 = bitcast i8* %_new_gep_317 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_318, !mcsema_real_eip !212
  store volatile i8* %_new_gep_317, i8** %_RSP_ptr_
  store i64 %1135, i64* %XSP, !mcsema_real_eip !212
  %1136 = call x86_64_sysvcc i64 @_read_bytes(i64 %1112, i64 %1116, i64 4)
  %_rsp_fix_432 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_433 = getelementptr i8, i8* %_rsp_fix_432, i64 8
  store i8* %_gep_fix_433, i8** %_RSP_ptr_
  store i64 %1136, i64* %XAX, !mcsema_real_eip !212
  %_load_rbp_ptr_319 = load i8*, i8** %_RBP_ptr_
  %_new_gep_320 = getelementptr i8, i8* %_load_rbp_ptr_319, i64 -64
  %_allin_new_bt_321 = bitcast i8* %_new_gep_320 to i64*
  %EAX_val.320 = load i32, i32* %EAX.9, !mcsema_real_eip !213
  %1137 = ptrtoint i64* %_allin_new_bt_321 to i64, !mcsema_real_eip !213
  %1138 = inttoptr i64 %1137 to i32*, !mcsema_real_eip !213
  store i32 %EAX_val.320, i32* %1138, !mcsema_real_eip !213
  %_load_rbp_ptr_322 = load i8*, i8** %_RBP_ptr_
  %_new_gep_323 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -16
  %_allin_new_bt_324 = bitcast i8* %_new_gep_323 to i64*
  %_ptr_to_int_1310 = ptrtoint i64* %_allin_new_bt_324 to i64
  %_offset_above_rbp_1313 = sub i64 %_ptr_to_int_1310, %_local_end_to_int_
  %_pot_address_in_parent_stack_1314 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1313
  %_cond1_1315 = icmp ugt i8* %_new_gep_323, %_local_stack_end_ptr_
  %_cond2_1_1316 = icmp ugt i8* %_new_gep_323, %_parent_stack_end_ptr_
  %_cond2_2_1317 = icmp ult i8* %_new_gep_323, %_parent_stack_start_ptr_
  %_cond2_1318 = or i1 %_cond2_1_1316, %_cond2_2_1317
  %_cond4_1319 = icmp ule i8* %_pot_address_in_parent_stack_1314, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1320 = and i1 %_cond1_1315, %_cond2_1318
  %_cond1_n_cond2_cond3_1321 = and i1 %_cond1_n_cond2_1320, %_cond4_1319
  br i1 %_cond1_n_cond2_cond3_1321, label %1139, label %1140

; <label>:1139:                                   ; preds = %1114
  %_address_in_parent_stack_bt_1323 = bitcast i8* %_pot_address_in_parent_stack_1314 to i64*
  br label %1140

; <label>:1140:                                   ; preds = %1114, %1139
  %1141 = phi i64* [ %_allin_new_bt_324, %1114 ], [ %_address_in_parent_stack_bt_1323, %1139 ]
  %_new_load_1324 = load i64, i64* %1141
  store i64 %_new_load_1324, i64* %XSI, !mcsema_real_eip !214
  %1142 = add i64 %_new_load_1324, 28, !mcsema_real_eip !215
  %1143 = inttoptr i64 %1142 to i64*, !mcsema_real_eip !215
  %1144 = inttoptr i64 %1142 to i8*, !mcsema_real_eip !215
  %_offset_above_rbp_1327 = sub i64 %1142, %_local_end_to_int_
  %_pot_address_in_parent_stack_1328 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1327
  %_cond1_1329 = icmp ugt i8* %1144, %_local_stack_end_ptr_
  %_cond2_1_1330 = icmp ugt i8* %1144, %_parent_stack_end_ptr_
  %_cond2_2_1331 = icmp ult i8* %1144, %_parent_stack_start_ptr_
  %_cond2_1332 = or i1 %_cond2_1_1330, %_cond2_2_1331
  %_cond4_1333 = icmp ule i8* %_pot_address_in_parent_stack_1328, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1334 = and i1 %_cond1_1329, %_cond2_1332
  %_cond1_n_cond2_cond3_1335 = and i1 %_cond1_n_cond2_1334, %_cond4_1333
  br i1 %_cond1_n_cond2_cond3_1335, label %1145, label %1146

; <label>:1145:                                   ; preds = %1140
  br label %1146

; <label>:1146:                                   ; preds = %1140, %1145
  %1147 = phi i8* [ %1144, %1140 ], [ %_pot_address_in_parent_stack_1328, %1145 ]
  %_new_load_1337 = load i8, i8* %1147
  %1148 = sext i8 %_new_load_1337 to i32, !mcsema_real_eip !215
  %1149 = zext i32 %1148 to i64, !mcsema_real_eip !215
  store i64 %1149, i64* %XAX, !mcsema_real_eip !215
  %EAX_val.324 = load i32, i32* %EAX.9, !mcsema_real_eip !216
  %1150 = sub i32 %EAX_val.324, 100, !mcsema_real_eip !216
  %1151 = xor i32 %1150, %EAX_val.324, !mcsema_real_eip !216
  %1152 = xor i32 %1151, 100, !mcsema_real_eip !216
  %1153 = and i32 %1152, 16, !mcsema_real_eip !216
  %1154 = icmp ne i32 %1153, 0, !mcsema_real_eip !216
  store i1 %1154, i1* %AF, !mcsema_real_eip !216
  %1155 = trunc i32 %1150 to i8, !mcsema_real_eip !216
  %1156 = call i8 @llvm.ctpop.i8(i8 %1155), !mcsema_real_eip !216
  %1157 = trunc i8 %1156 to i1, !mcsema_real_eip !216
  %1158 = xor i1 %1157, true, !mcsema_real_eip !216
  store i1 %1158, i1* %PF, !mcsema_real_eip !216
  %1159 = icmp eq i32 %1150, 0, !mcsema_real_eip !216
  store i1 %1159, i1* %ZF, !mcsema_real_eip !216
  %1160 = lshr i32 %1150, 31, !mcsema_real_eip !216
  %1161 = trunc i32 %1160 to i1, !mcsema_real_eip !216
  store i1 %1161, i1* %SF, !mcsema_real_eip !216
  %1162 = icmp ult i32 %EAX_val.324, 100, !mcsema_real_eip !216
  store i1 %1162, i1* %CF, !mcsema_real_eip !216
  %1163 = xor i32 %EAX_val.324, 100, !mcsema_real_eip !216
  %1164 = and i32 %1163, %1151, !mcsema_real_eip !216
  %1165 = lshr i32 %1164, 31, !mcsema_real_eip !216
  %1166 = trunc i32 %1165 to i1, !mcsema_real_eip !216
  store i1 %1166, i1* %OF, !mcsema_real_eip !216
  %1167 = icmp eq i1 %1159, false, !mcsema_real_eip !217
  br i1 %1167, label %block_0x38e, label %block_0x36f, !mcsema_real_eip !217

block_0x36f:                                      ; preds = %1146
  br i1 %_cond1_n_cond2_cond3_1321, label %1168, label %1169

; <label>:1168:                                   ; preds = %block_0x36f
  %_address_in_parent_stack_bt_1351 = bitcast i8* %_pot_address_in_parent_stack_1314 to i64*
  br label %1169

; <label>:1169:                                   ; preds = %block_0x36f, %1168
  %1170 = phi i64* [ %_allin_new_bt_324, %block_0x36f ], [ %_address_in_parent_stack_bt_1351, %1168 ]
  %_new_load_1352 = load i64, i64* %1170
  store i64 %_new_load_1352, i64* %XAX, !mcsema_real_eip !218
  %1171 = add i64 %_new_load_1352, 29, !mcsema_real_eip !219
  %1172 = inttoptr i64 %1171 to i64*, !mcsema_real_eip !219
  %1173 = inttoptr i64 %1171 to i8*, !mcsema_real_eip !219
  %_offset_above_rbp_1355 = sub i64 %1171, %_local_end_to_int_
  %_pot_address_in_parent_stack_1356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1355
  %_cond1_1357 = icmp ugt i8* %1173, %_local_stack_end_ptr_
  %_cond2_1_1358 = icmp ugt i8* %1173, %_parent_stack_end_ptr_
  %_cond2_2_1359 = icmp ult i8* %1173, %_parent_stack_start_ptr_
  %_cond2_1360 = or i1 %_cond2_1_1358, %_cond2_2_1359
  %_cond4_1361 = icmp ule i8* %_pot_address_in_parent_stack_1356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1362 = and i1 %_cond1_1357, %_cond2_1360
  %_cond1_n_cond2_cond3_1363 = and i1 %_cond1_n_cond2_1362, %_cond4_1361
  br i1 %_cond1_n_cond2_cond3_1363, label %1174, label %1175

; <label>:1174:                                   ; preds = %1169
  br label %1175

; <label>:1175:                                   ; preds = %1169, %1174
  %1176 = phi i8* [ %1173, %1169 ], [ %_pot_address_in_parent_stack_1356, %1174 ]
  %_new_load_1365 = load i8, i8* %1176
  %1177 = sext i8 %_new_load_1365 to i32, !mcsema_real_eip !219
  %1178 = zext i32 %1177 to i64, !mcsema_real_eip !219
  store i64 %1178, i64* %XCX, !mcsema_real_eip !219
  %ECX_val.328 = load i32, i32* %ECX.12, !mcsema_real_eip !220
  %1179 = sub i32 %ECX_val.328, 100, !mcsema_real_eip !220
  %1180 = xor i32 %1179, %ECX_val.328, !mcsema_real_eip !220
  %1181 = xor i32 %1180, 100, !mcsema_real_eip !220
  %1182 = and i32 %1181, 16, !mcsema_real_eip !220
  %1183 = icmp ne i32 %1182, 0, !mcsema_real_eip !220
  store i1 %1183, i1* %AF, !mcsema_real_eip !220
  %1184 = trunc i32 %1179 to i8, !mcsema_real_eip !220
  %1185 = call i8 @llvm.ctpop.i8(i8 %1184), !mcsema_real_eip !220
  %1186 = trunc i8 %1185 to i1, !mcsema_real_eip !220
  %1187 = xor i1 %1186, true, !mcsema_real_eip !220
  store i1 %1187, i1* %PF, !mcsema_real_eip !220
  %1188 = icmp eq i32 %1179, 0, !mcsema_real_eip !220
  store i1 %1188, i1* %ZF, !mcsema_real_eip !220
  %1189 = lshr i32 %1179, 31, !mcsema_real_eip !220
  %1190 = trunc i32 %1189 to i1, !mcsema_real_eip !220
  store i1 %1190, i1* %SF, !mcsema_real_eip !220
  %1191 = icmp ult i32 %ECX_val.328, 100, !mcsema_real_eip !220
  store i1 %1191, i1* %CF, !mcsema_real_eip !220
  %1192 = xor i32 %ECX_val.328, 100, !mcsema_real_eip !220
  %1193 = and i32 %1192, %1180, !mcsema_real_eip !220
  %1194 = lshr i32 %1193, 31, !mcsema_real_eip !220
  %1195 = trunc i32 %1194 to i1, !mcsema_real_eip !220
  store i1 %1195, i1* %OF, !mcsema_real_eip !220
  %1196 = icmp eq i1 %1188, false, !mcsema_real_eip !221
  br i1 %1196, label %block_0x38e, label %block_0x380, !mcsema_real_eip !221

block_0x380:                                      ; preds = %1175
  %_new_gep_329 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -64
  %_allin_new_bt_330 = bitcast i8* %_new_gep_329 to i64*
  %1197 = ptrtoint i64* %_allin_new_bt_330 to i64, !mcsema_real_eip !222
  %1198 = inttoptr i64 %1197 to i32*, !mcsema_real_eip !222
  %_ptr_bt_1368 = bitcast i32* %1198 to i8*
  %_offset_above_rbp_1369 = sub i64 %1197, %_local_end_to_int_
  %_pot_address_in_parent_stack_1370 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1369
  %_cond1_1371 = icmp ugt i8* %_ptr_bt_1368, %_local_stack_end_ptr_
  %_cond2_1_1372 = icmp ugt i8* %_ptr_bt_1368, %_parent_stack_end_ptr_
  %_cond2_2_1373 = icmp ult i8* %_ptr_bt_1368, %_parent_stack_start_ptr_
  %_cond2_1374 = or i1 %_cond2_1_1372, %_cond2_2_1373
  %_cond4_1375 = icmp ule i8* %_pot_address_in_parent_stack_1370, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1376 = and i1 %_cond1_1371, %_cond2_1374
  %_cond1_n_cond2_cond3_1377 = and i1 %_cond1_n_cond2_1376, %_cond4_1375
  br i1 %_cond1_n_cond2_cond3_1377, label %1199, label %1200

; <label>:1199:                                   ; preds = %block_0x380
  %_address_in_parent_stack_bt_1379 = bitcast i8* %_pot_address_in_parent_stack_1370 to i32*
  br label %1200

; <label>:1200:                                   ; preds = %block_0x380, %1199
  %1201 = phi i32* [ %1198, %block_0x380 ], [ %_address_in_parent_stack_bt_1379, %1199 ]
  %_new_load_1380 = load i32, i32* %1201
  %1202 = zext i32 %_new_load_1380 to i64, !mcsema_real_eip !222
  store i64 %1202, i64* %XAX, !mcsema_real_eip !222
  %_new_gep_332 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -20
  %_allin_new_bt_333 = bitcast i8* %_new_gep_332 to i64*
  %1203 = ptrtoint i64* %_allin_new_bt_333 to i64, !mcsema_real_eip !223
  %1204 = inttoptr i64 %1203 to i32*, !mcsema_real_eip !223
  %_ptr_bt_1383 = bitcast i32* %1204 to i8*
  %_offset_above_rbp_1384 = sub i64 %1203, %_local_end_to_int_
  %_pot_address_in_parent_stack_1385 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1384
  %_cond1_1386 = icmp ugt i8* %_ptr_bt_1383, %_local_stack_end_ptr_
  %_cond2_1_1387 = icmp ugt i8* %_ptr_bt_1383, %_parent_stack_end_ptr_
  %_cond2_2_1388 = icmp ult i8* %_ptr_bt_1383, %_parent_stack_start_ptr_
  %_cond2_1389 = or i1 %_cond2_1_1387, %_cond2_2_1388
  %_cond4_1390 = icmp ule i8* %_pot_address_in_parent_stack_1385, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1391 = and i1 %_cond1_1386, %_cond2_1389
  %_cond1_n_cond2_cond3_1392 = and i1 %_cond1_n_cond2_1391, %_cond4_1390
  br i1 %_cond1_n_cond2_cond3_1392, label %1205, label %1206

; <label>:1205:                                   ; preds = %1200
  %_address_in_parent_stack_bt_1394 = bitcast i8* %_pot_address_in_parent_stack_1385 to i32*
  br label %1206

; <label>:1206:                                   ; preds = %1200, %1205
  %1207 = phi i32* [ %1204, %1200 ], [ %_address_in_parent_stack_bt_1394, %1205 ]
  %_new_load_1395 = load i32, i32* %1207
  %EAX_val.332 = load i32, i32* %EAX.9, !mcsema_real_eip !223
  %1208 = xor i32 %_new_load_1395, %EAX_val.332, !mcsema_real_eip !223
  store i1 false, i1* %CF, !mcsema_real_eip !223
  store i1 false, i1* %OF, !mcsema_real_eip !223
  %1209 = lshr i32 %1208, 31, !mcsema_real_eip !223
  %1210 = trunc i32 %1209 to i1, !mcsema_real_eip !223
  store i1 %1210, i1* %SF, !mcsema_real_eip !223
  %1211 = icmp eq i32 %1208, 0, !mcsema_real_eip !223
  store i1 %1211, i1* %ZF, !mcsema_real_eip !223
  %1212 = trunc i32 %1208 to i8, !mcsema_real_eip !223
  %1213 = call i8 @llvm.ctpop.i8(i8 %1212), !mcsema_real_eip !223
  %1214 = trunc i8 %1213 to i1, !mcsema_real_eip !223
  %1215 = xor i1 %1214, true, !mcsema_real_eip !223
  store i1 %1215, i1* %PF, !mcsema_real_eip !223
  store i1 undef, i1* %AF, !mcsema_real_eip !223
  %1216 = zext i32 %1208 to i64, !mcsema_real_eip !223
  store i64 %1216, i64* %XAX, !mcsema_real_eip !223
  %EAX_val.335 = load i32, i32* %EAX.9, !mcsema_real_eip !224
  store i32 %EAX_val.335, i32* %1204, !mcsema_real_eip !224
  br label %block_0x411, !mcsema_real_eip !225

block_0x38e:                                      ; preds = %1175, %1146
  br i1 %_cond1_n_cond2_cond3_1321, label %1217, label %1218

; <label>:1217:                                   ; preds = %block_0x38e
  %_address_in_parent_stack_bt_1409 = bitcast i8* %_pot_address_in_parent_stack_1314 to i64*
  br label %1218

; <label>:1218:                                   ; preds = %block_0x38e, %1217
  %1219 = phi i64* [ %_allin_new_bt_324, %block_0x38e ], [ %_address_in_parent_stack_bt_1409, %1217 ]
  %_new_load_1410 = load i64, i64* %1219
  store i64 %_new_load_1410, i64* %XAX, !mcsema_real_eip !226
  %1220 = add i64 %_new_load_1410, 28, !mcsema_real_eip !227
  %1221 = inttoptr i64 %1220 to i64*, !mcsema_real_eip !227
  %1222 = inttoptr i64 %1220 to i8*, !mcsema_real_eip !227
  %_offset_above_rbp_1413 = sub i64 %1220, %_local_end_to_int_
  %_pot_address_in_parent_stack_1414 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1413
  %_cond1_1415 = icmp ugt i8* %1222, %_local_stack_end_ptr_
  %_cond2_1_1416 = icmp ugt i8* %1222, %_parent_stack_end_ptr_
  %_cond2_2_1417 = icmp ult i8* %1222, %_parent_stack_start_ptr_
  %_cond2_1418 = or i1 %_cond2_1_1416, %_cond2_2_1417
  %_cond4_1419 = icmp ule i8* %_pot_address_in_parent_stack_1414, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1420 = and i1 %_cond1_1415, %_cond2_1418
  %_cond1_n_cond2_cond3_1421 = and i1 %_cond1_n_cond2_1420, %_cond4_1419
  br i1 %_cond1_n_cond2_cond3_1421, label %1223, label %1224

; <label>:1223:                                   ; preds = %1218
  br label %1224

; <label>:1224:                                   ; preds = %1218, %1223
  %1225 = phi i8* [ %1222, %1218 ], [ %_pot_address_in_parent_stack_1414, %1223 ]
  %_new_load_1423 = load i8, i8* %1225
  %1226 = sext i8 %_new_load_1423 to i32, !mcsema_real_eip !227
  %1227 = zext i32 %1226 to i64, !mcsema_real_eip !227
  store i64 %1227, i64* %XCX, !mcsema_real_eip !227
  br i1 %_cond1_n_cond2_cond3_1321, label %1228, label %1229

; <label>:1228:                                   ; preds = %1224
  %_address_in_parent_stack_bt_1437 = bitcast i8* %_pot_address_in_parent_stack_1314 to i64*
  br label %1229

; <label>:1229:                                   ; preds = %1224, %1228
  %1230 = phi i64* [ %_allin_new_bt_324, %1224 ], [ %_address_in_parent_stack_bt_1437, %1228 ]
  %_new_load_1438 = load i64, i64* %1230
  store i64 %_new_load_1438, i64* %XAX, !mcsema_real_eip !228
  %1231 = add i64 %_new_load_1438, 29, !mcsema_real_eip !229
  %1232 = inttoptr i64 %1231 to i64*, !mcsema_real_eip !229
  %1233 = inttoptr i64 %1231 to i8*, !mcsema_real_eip !229
  %_offset_above_rbp_1441 = sub i64 %1231, %_local_end_to_int_
  %_pot_address_in_parent_stack_1442 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1441
  %_cond1_1443 = icmp ugt i8* %1233, %_local_stack_end_ptr_
  %_cond2_1_1444 = icmp ugt i8* %1233, %_parent_stack_end_ptr_
  %_cond2_2_1445 = icmp ult i8* %1233, %_parent_stack_start_ptr_
  %_cond2_1446 = or i1 %_cond2_1_1444, %_cond2_2_1445
  %_cond4_1447 = icmp ule i8* %_pot_address_in_parent_stack_1442, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1448 = and i1 %_cond1_1443, %_cond2_1446
  %_cond1_n_cond2_cond3_1449 = and i1 %_cond1_n_cond2_1448, %_cond4_1447
  br i1 %_cond1_n_cond2_cond3_1449, label %1234, label %1235

; <label>:1234:                                   ; preds = %1229
  br label %1235

; <label>:1235:                                   ; preds = %1229, %1234
  %1236 = phi i8* [ %1233, %1229 ], [ %_pot_address_in_parent_stack_1442, %1234 ]
  %_new_load_1451 = load i8, i8* %1236
  %1237 = sext i8 %_new_load_1451 to i32, !mcsema_real_eip !229
  %1238 = zext i32 %1237 to i64, !mcsema_real_eip !229
  store i64 %1238, i64* %XDX, !mcsema_real_eip !229
  %ECX_val.341 = load i32, i32* %ECX.12, !mcsema_real_eip !230
  %EDX_val.343 = load i32, i32* %EDX.64, !mcsema_real_eip !230
  %1239 = sub i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  %1240 = xor i32 %1239, %ECX_val.341, !mcsema_real_eip !230
  %1241 = xor i32 %1240, %EDX_val.343, !mcsema_real_eip !230
  %1242 = and i32 %1241, 16, !mcsema_real_eip !230
  %1243 = icmp ne i32 %1242, 0, !mcsema_real_eip !230
  store i1 %1243, i1* %AF, !mcsema_real_eip !230
  %1244 = trunc i32 %1239 to i8, !mcsema_real_eip !230
  %1245 = call i8 @llvm.ctpop.i8(i8 %1244), !mcsema_real_eip !230
  %1246 = trunc i8 %1245 to i1, !mcsema_real_eip !230
  %1247 = xor i1 %1246, true, !mcsema_real_eip !230
  store i1 %1247, i1* %PF, !mcsema_real_eip !230
  %1248 = icmp eq i32 %1239, 0, !mcsema_real_eip !230
  store i1 %1248, i1* %ZF, !mcsema_real_eip !230
  %1249 = lshr i32 %1239, 31, !mcsema_real_eip !230
  %1250 = trunc i32 %1249 to i1, !mcsema_real_eip !230
  store i1 %1250, i1* %SF, !mcsema_real_eip !230
  %1251 = icmp ult i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  store i1 %1251, i1* %CF, !mcsema_real_eip !230
  %1252 = xor i32 %ECX_val.341, %EDX_val.343, !mcsema_real_eip !230
  %1253 = and i32 %1252, %1240, !mcsema_real_eip !230
  %1254 = lshr i32 %1253, 31, !mcsema_real_eip !230
  %1255 = trunc i32 %1254 to i1, !mcsema_real_eip !230
  store i1 %1255, i1* %OF, !mcsema_real_eip !230
  %1256 = icmp eq i1 %1248, false, !mcsema_real_eip !231
  br i1 %1256, label %block_0x406, label %block_0x3a6, !mcsema_real_eip !231

block_0x3a6:                                      ; preds = %1235
  store i64 15, i64* %XAX, !mcsema_real_eip !232
  br i1 %_cond1_n_cond2_cond3_1321, label %1257, label %1258

; <label>:1257:                                   ; preds = %block_0x3a6
  %_address_in_parent_stack_bt_1465 = bitcast i8* %_pot_address_in_parent_stack_1314 to i64*
  br label %1258

; <label>:1258:                                   ; preds = %block_0x3a6, %1257
  %1259 = phi i64* [ %_allin_new_bt_324, %block_0x3a6 ], [ %_address_in_parent_stack_bt_1465, %1257 ]
  %_new_load_1466 = load i64, i64* %1259
  store i64 %_new_load_1466, i64* %XCX, !mcsema_real_eip !233
  %1260 = add i64 %_new_load_1466, 31, !mcsema_real_eip !234
  %1261 = inttoptr i64 %1260 to i64*, !mcsema_real_eip !234
  %1262 = inttoptr i64 %1260 to i8*, !mcsema_real_eip !234
  %_offset_above_rbp_1469 = sub i64 %1260, %_local_end_to_int_
  %_pot_address_in_parent_stack_1470 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1469
  %_cond1_1471 = icmp ugt i8* %1262, %_local_stack_end_ptr_
  %_cond2_1_1472 = icmp ugt i8* %1262, %_parent_stack_end_ptr_
  %_cond2_2_1473 = icmp ult i8* %1262, %_parent_stack_start_ptr_
  %_cond2_1474 = or i1 %_cond2_1_1472, %_cond2_2_1473
  %_cond4_1475 = icmp ule i8* %_pot_address_in_parent_stack_1470, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1476 = and i1 %_cond1_1471, %_cond2_1474
  %_cond1_n_cond2_cond3_1477 = and i1 %_cond1_n_cond2_1476, %_cond4_1475
  br i1 %_cond1_n_cond2_cond3_1477, label %1263, label %1264

; <label>:1263:                                   ; preds = %1258
  br label %1264

; <label>:1264:                                   ; preds = %1258, %1263
  %1265 = phi i8* [ %1262, %1258 ], [ %_pot_address_in_parent_stack_1470, %1263 ]
  %_new_load_1479 = load i8, i8* %1265
  %1266 = sext i8 %_new_load_1479 to i32, !mcsema_real_eip !234
  %1267 = zext i32 %1266 to i64, !mcsema_real_eip !234
  store i64 %1267, i64* %XDX, !mcsema_real_eip !234
  br i1 %_cond1_n_cond2_cond3_1321, label %1268, label %1269

; <label>:1268:                                   ; preds = %1264
  %_address_in_parent_stack_bt_1493 = bitcast i8* %_pot_address_in_parent_stack_1314 to i64*
  br label %1269

; <label>:1269:                                   ; preds = %1264, %1268
  %1270 = phi i64* [ %_allin_new_bt_324, %1264 ], [ %_address_in_parent_stack_bt_1493, %1268 ]
  %_new_load_1494 = load i64, i64* %1270
  store i64 %_new_load_1494, i64* %XCX, !mcsema_real_eip !235
  %1271 = add i64 %_new_load_1494, 30, !mcsema_real_eip !236
  %1272 = inttoptr i64 %1271 to i64*, !mcsema_real_eip !236
  %1273 = inttoptr i64 %1271 to i8*, !mcsema_real_eip !236
  %_offset_above_rbp_1497 = sub i64 %1271, %_local_end_to_int_
  %_pot_address_in_parent_stack_1498 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1497
  %_cond1_1499 = icmp ugt i8* %1273, %_local_stack_end_ptr_
  %_cond2_1_1500 = icmp ugt i8* %1273, %_parent_stack_end_ptr_
  %_cond2_2_1501 = icmp ult i8* %1273, %_parent_stack_start_ptr_
  %_cond2_1502 = or i1 %_cond2_1_1500, %_cond2_2_1501
  %_cond4_1503 = icmp ule i8* %_pot_address_in_parent_stack_1498, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1504 = and i1 %_cond1_1499, %_cond2_1502
  %_cond1_n_cond2_cond3_1505 = and i1 %_cond1_n_cond2_1504, %_cond4_1503
  br i1 %_cond1_n_cond2_cond3_1505, label %1274, label %1275

; <label>:1274:                                   ; preds = %1269
  br label %1275

; <label>:1275:                                   ; preds = %1269, %1274
  %1276 = phi i8* [ %1273, %1269 ], [ %_pot_address_in_parent_stack_1498, %1274 ]
  %_new_load_1507 = load i8, i8* %1276
  %1277 = sext i8 %_new_load_1507 to i32, !mcsema_real_eip !236
  %1278 = zext i32 %1277 to i64, !mcsema_real_eip !236
  store i64 %1278, i64* %XSI, !mcsema_real_eip !236
  %EDX_val.349 = load i32, i32* %EDX.64, !mcsema_real_eip !237
  %ESI.350 = bitcast i64* %XSI to i32*, !mcsema_real_eip !237
  %ESI_val.351 = load i32, i32* %ESI.350, !mcsema_real_eip !237
  %1279 = sub i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  %1280 = xor i32 %1279, %EDX_val.349, !mcsema_real_eip !237
  %1281 = xor i32 %1280, %ESI_val.351, !mcsema_real_eip !237
  %1282 = and i32 %1281, 16, !mcsema_real_eip !237
  %1283 = icmp ne i32 %1282, 0, !mcsema_real_eip !237
  store i1 %1283, i1* %AF, !mcsema_real_eip !237
  %1284 = trunc i32 %1279 to i8, !mcsema_real_eip !237
  %1285 = call i8 @llvm.ctpop.i8(i8 %1284), !mcsema_real_eip !237
  %1286 = trunc i8 %1285 to i1, !mcsema_real_eip !237
  %1287 = xor i1 %1286, true, !mcsema_real_eip !237
  store i1 %1287, i1* %PF, !mcsema_real_eip !237
  %1288 = icmp eq i32 %1279, 0, !mcsema_real_eip !237
  store i1 %1288, i1* %ZF, !mcsema_real_eip !237
  %1289 = lshr i32 %1279, 31, !mcsema_real_eip !237
  %1290 = trunc i32 %1289 to i1, !mcsema_real_eip !237
  store i1 %1290, i1* %SF, !mcsema_real_eip !237
  %1291 = icmp ult i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  store i1 %1291, i1* %CF, !mcsema_real_eip !237
  %1292 = xor i32 %EDX_val.349, %ESI_val.351, !mcsema_real_eip !237
  %1293 = and i32 %1292, %1280, !mcsema_real_eip !237
  %1294 = lshr i32 %1293, 31, !mcsema_real_eip !237
  %1295 = trunc i32 %1294 to i1, !mcsema_real_eip !237
  store i1 %1295, i1* %OF, !mcsema_real_eip !237
  %1296 = zext i32 %1279 to i64, !mcsema_real_eip !237
  store i64 %1296, i64* %XDX, !mcsema_real_eip !237
  %EAX_val.353 = load i32, i32* %EAX.9, !mcsema_real_eip !238
  %EDX_val.355 = load i32, i32* %EDX.64, !mcsema_real_eip !238
  %1297 = sub i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  %1298 = xor i32 %1297, %EAX_val.353, !mcsema_real_eip !238
  %1299 = xor i32 %1298, %EDX_val.355, !mcsema_real_eip !238
  %1300 = and i32 %1299, 16, !mcsema_real_eip !238
  %1301 = icmp ne i32 %1300, 0, !mcsema_real_eip !238
  store i1 %1301, i1* %AF, !mcsema_real_eip !238
  %1302 = trunc i32 %1297 to i8, !mcsema_real_eip !238
  %1303 = call i8 @llvm.ctpop.i8(i8 %1302), !mcsema_real_eip !238
  %1304 = trunc i8 %1303 to i1, !mcsema_real_eip !238
  %1305 = xor i1 %1304, true, !mcsema_real_eip !238
  store i1 %1305, i1* %PF, !mcsema_real_eip !238
  %1306 = icmp eq i32 %1297, 0, !mcsema_real_eip !238
  store i1 %1306, i1* %ZF, !mcsema_real_eip !238
  %1307 = lshr i32 %1297, 31, !mcsema_real_eip !238
  %1308 = trunc i32 %1307 to i1, !mcsema_real_eip !238
  store i1 %1308, i1* %SF, !mcsema_real_eip !238
  %1309 = icmp ult i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  store i1 %1309, i1* %CF, !mcsema_real_eip !238
  %1310 = xor i32 %EAX_val.353, %EDX_val.355, !mcsema_real_eip !238
  %1311 = and i32 %1310, %1298, !mcsema_real_eip !238
  %1312 = lshr i32 %1311, 31, !mcsema_real_eip !238
  %1313 = trunc i32 %1312 to i1, !mcsema_real_eip !238
  store i1 %1313, i1* %OF, !mcsema_real_eip !238
  %1314 = zext i32 %1297 to i64, !mcsema_real_eip !238
  store i64 %1314, i64* %XAX, !mcsema_real_eip !238
  %_new_gep_350 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -20
  %_allin_new_bt_351 = bitcast i8* %_new_gep_350 to i64*
  %1315 = ptrtoint i64* %_allin_new_bt_351 to i64, !mcsema_real_eip !239
  %1316 = inttoptr i64 %1315 to i32*, !mcsema_real_eip !239
  %_ptr_bt_1510 = bitcast i32* %1316 to i8*
  %_offset_above_rbp_1511 = sub i64 %1315, %_local_end_to_int_
  %_pot_address_in_parent_stack_1512 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1511
  %_cond1_1513 = icmp ugt i8* %_ptr_bt_1510, %_local_stack_end_ptr_
  %_cond2_1_1514 = icmp ugt i8* %_ptr_bt_1510, %_parent_stack_end_ptr_
  %_cond2_2_1515 = icmp ult i8* %_ptr_bt_1510, %_parent_stack_start_ptr_
  %_cond2_1516 = or i1 %_cond2_1_1514, %_cond2_2_1515
  %_cond4_1517 = icmp ule i8* %_pot_address_in_parent_stack_1512, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1518 = and i1 %_cond1_1513, %_cond2_1516
  %_cond1_n_cond2_cond3_1519 = and i1 %_cond1_n_cond2_1518, %_cond4_1517
  br i1 %_cond1_n_cond2_cond3_1519, label %1317, label %1318

; <label>:1317:                                   ; preds = %1275
  %_address_in_parent_stack_bt_1521 = bitcast i8* %_pot_address_in_parent_stack_1512 to i32*
  br label %1318

; <label>:1318:                                   ; preds = %1275, %1317
  %1319 = phi i32* [ %1316, %1275 ], [ %_address_in_parent_stack_bt_1521, %1317 ]
  %_new_load_1522 = load i32, i32* %1319
  %EAX_val.358 = load i32, i32* %EAX.9, !mcsema_real_eip !239
  %1320 = add i32 %EAX_val.358, %_new_load_1522, !mcsema_real_eip !239
  %1321 = xor i32 %1320, %_new_load_1522, !mcsema_real_eip !239
  %1322 = xor i32 %1321, %EAX_val.358, !mcsema_real_eip !239
  %1323 = and i32 %1322, 16, !mcsema_real_eip !239
  %1324 = icmp ne i32 %1323, 0, !mcsema_real_eip !239
  store i1 %1324, i1* %AF, !mcsema_real_eip !239
  %1325 = lshr i32 %1320, 31, !mcsema_real_eip !239
  %1326 = trunc i32 %1325 to i1, !mcsema_real_eip !239
  store i1 %1326, i1* %SF, !mcsema_real_eip !239
  %1327 = icmp eq i32 %1320, 0, !mcsema_real_eip !239
  store i1 %1327, i1* %ZF, !mcsema_real_eip !239
  %1328 = xor i32 %_new_load_1522, %EAX_val.358, !mcsema_real_eip !239
  %1329 = xor i32 %1328, -1, !mcsema_real_eip !239
  %1330 = and i32 %1329, %1321, !mcsema_real_eip !239
  %1331 = lshr i32 %1330, 31, !mcsema_real_eip !239
  %1332 = and i32 %1331, 1, !mcsema_real_eip !239
  %1333 = trunc i32 %1332 to i1, !mcsema_real_eip !239
  store i1 %1333, i1* %OF, !mcsema_real_eip !239
  %1334 = trunc i32 %1320 to i8, !mcsema_real_eip !239
  %1335 = call i8 @llvm.ctpop.i8(i8 %1334), !mcsema_real_eip !239
  %1336 = trunc i8 %1335 to i1, !mcsema_real_eip !239
  %1337 = xor i1 %1336, true, !mcsema_real_eip !239
  store i1 %1337, i1* %PF, !mcsema_real_eip !239
  %1338 = icmp ult i32 %1320, %_new_load_1522, !mcsema_real_eip !239
  store i1 %1338, i1* %CF, !mcsema_real_eip !239
  %1339 = zext i32 %1320 to i64, !mcsema_real_eip !239
  store i64 %1339, i64* %XAX, !mcsema_real_eip !239
  %EAX_val.361 = load i32, i32* %EAX.9, !mcsema_real_eip !240
  store i32 %EAX_val.361, i32* %1316, !mcsema_real_eip !240
  %_load_rbp_ptr_355 = load i8*, i8** %_RBP_ptr_
  %_new_gep_356 = getelementptr i8, i8* %_load_rbp_ptr_355, i64 -16
  %_allin_new_bt_357 = bitcast i8* %_new_gep_356 to i64*
  %_ptr_to_int_1523 = ptrtoint i64* %_allin_new_bt_357 to i64
  %_offset_above_rbp_1526 = sub i64 %_ptr_to_int_1523, %_local_end_to_int_
  %_pot_address_in_parent_stack_1527 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1526
  %_cond1_1528 = icmp ugt i8* %_new_gep_356, %_local_stack_end_ptr_
  %_cond2_1_1529 = icmp ugt i8* %_new_gep_356, %_parent_stack_end_ptr_
  %_cond2_2_1530 = icmp ult i8* %_new_gep_356, %_parent_stack_start_ptr_
  %_cond2_1531 = or i1 %_cond2_1_1529, %_cond2_2_1530
  %_cond4_1532 = icmp ule i8* %_pot_address_in_parent_stack_1527, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1533 = and i1 %_cond1_1528, %_cond2_1531
  %_cond1_n_cond2_cond3_1534 = and i1 %_cond1_n_cond2_1533, %_cond4_1532
  br i1 %_cond1_n_cond2_cond3_1534, label %1340, label %1341

; <label>:1340:                                   ; preds = %1318
  %_address_in_parent_stack_bt_1536 = bitcast i8* %_pot_address_in_parent_stack_1527 to i64*
  br label %1341

; <label>:1341:                                   ; preds = %1318, %1340
  %1342 = phi i64* [ %_allin_new_bt_357, %1318 ], [ %_address_in_parent_stack_bt_1536, %1340 ]
  %_new_load_1537 = load i64, i64* %1342
  store i64 %_new_load_1537, i64* %XCX, !mcsema_real_eip !241
  %1343 = add i64 %_new_load_1537, 28, !mcsema_real_eip !242
  %1344 = inttoptr i64 %1343 to i64*, !mcsema_real_eip !242
  %1345 = inttoptr i64 %1343 to i8*, !mcsema_real_eip !242
  %_offset_above_rbp_1540 = sub i64 %1343, %_local_end_to_int_
  %_pot_address_in_parent_stack_1541 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1540
  %_cond1_1542 = icmp ugt i8* %1345, %_local_stack_end_ptr_
  %_cond2_1_1543 = icmp ugt i8* %1345, %_parent_stack_end_ptr_
  %_cond2_2_1544 = icmp ult i8* %1345, %_parent_stack_start_ptr_
  %_cond2_1545 = or i1 %_cond2_1_1543, %_cond2_2_1544
  %_cond4_1546 = icmp ule i8* %_pot_address_in_parent_stack_1541, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1547 = and i1 %_cond1_1542, %_cond2_1545
  %_cond1_n_cond2_cond3_1548 = and i1 %_cond1_n_cond2_1547, %_cond4_1546
  br i1 %_cond1_n_cond2_cond3_1548, label %1346, label %1347

; <label>:1346:                                   ; preds = %1341
  br label %1347

; <label>:1347:                                   ; preds = %1341, %1346
  %1348 = phi i8* [ %1345, %1341 ], [ %_pot_address_in_parent_stack_1541, %1346 ]
  %_new_load_1550 = load i8, i8* %1348
  %1349 = zext i8 %_new_load_1550 to i32, !mcsema_real_eip !242
  %1350 = zext i32 %1349 to i64, !mcsema_real_eip !242
  store i64 %1350, i64* %XDI, !mcsema_real_eip !242
  %_load_rsp_ptr_358 = load i8*, i8** %_RSP_ptr_
  %RSP_val.365 = load i64, i64* %XSP, !mcsema_real_eip !243
  %_new_gep_359 = getelementptr i8, i8* %_load_rsp_ptr_358, i64 -8
  %1351 = sub i64 %RSP_val.365, 8, !mcsema_real_eip !243
  %_allin_new_bt_360 = bitcast i8* %_new_gep_359 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_360, !mcsema_real_eip !243
  store volatile i8* %_new_gep_359, i8** %_RSP_ptr_
  store i64 %1351, i64* %XSP, !mcsema_real_eip !243
  %1352 = call x86_64_sysvcc i64 @_to_byte(i64 %1350)
  %_rsp_fix_434 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_435 = getelementptr i8, i8* %_rsp_fix_434, i64 8
  store i8* %_gep_fix_435, i8** %_RSP_ptr_
  store i64 %1352, i64* %XAX, !mcsema_real_eip !243
  %_load_rbp_ptr_361 = load i8*, i8** %_RBP_ptr_
  %_new_gep_362 = getelementptr i8, i8* %_load_rbp_ptr_361, i64 -20
  %_allin_new_bt_363 = bitcast i8* %_new_gep_362 to i64*
  %1353 = ptrtoint i64* %_allin_new_bt_363 to i64, !mcsema_real_eip !244
  %1354 = inttoptr i64 %1353 to i32*, !mcsema_real_eip !244
  %_ptr_bt_1553 = bitcast i32* %1354 to i8*
  %_offset_above_rbp_1554 = sub i64 %1353, %_local_end_to_int_
  %_pot_address_in_parent_stack_1555 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1554
  %_cond1_1556 = icmp ugt i8* %_ptr_bt_1553, %_local_stack_end_ptr_
  %_cond2_1_1557 = icmp ugt i8* %_ptr_bt_1553, %_parent_stack_end_ptr_
  %_cond2_2_1558 = icmp ult i8* %_ptr_bt_1553, %_parent_stack_start_ptr_
  %_cond2_1559 = or i1 %_cond2_1_1557, %_cond2_2_1558
  %_cond4_1560 = icmp ule i8* %_pot_address_in_parent_stack_1555, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1561 = and i1 %_cond1_1556, %_cond2_1559
  %_cond1_n_cond2_cond3_1562 = and i1 %_cond1_n_cond2_1561, %_cond4_1560
  br i1 %_cond1_n_cond2_cond3_1562, label %1355, label %1356

; <label>:1355:                                   ; preds = %1347
  %_address_in_parent_stack_bt_1564 = bitcast i8* %_pot_address_in_parent_stack_1555 to i32*
  br label %1356

; <label>:1356:                                   ; preds = %1347, %1355
  %1357 = phi i32* [ %1354, %1347 ], [ %_address_in_parent_stack_bt_1564, %1355 ]
  %_new_load_1565 = load i32, i32* %1357
  %1358 = zext i32 %_new_load_1565 to i64, !mcsema_real_eip !244
  store i64 %1358, i64* %XDX, !mcsema_real_eip !244
  %EDX_val.368 = load i32, i32* %EDX.64, !mcsema_real_eip !245
  %EAX_val.370 = load i32, i32* %EAX.9, !mcsema_real_eip !245
  %1359 = sub i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  %1360 = xor i32 %1359, %EDX_val.368, !mcsema_real_eip !245
  %1361 = xor i32 %1360, %EAX_val.370, !mcsema_real_eip !245
  %1362 = and i32 %1361, 16, !mcsema_real_eip !245
  %1363 = icmp ne i32 %1362, 0, !mcsema_real_eip !245
  store i1 %1363, i1* %AF, !mcsema_real_eip !245
  %1364 = trunc i32 %1359 to i8, !mcsema_real_eip !245
  %1365 = call i8 @llvm.ctpop.i8(i8 %1364), !mcsema_real_eip !245
  %1366 = trunc i8 %1365 to i1, !mcsema_real_eip !245
  %1367 = xor i1 %1366, true, !mcsema_real_eip !245
  store i1 %1367, i1* %PF, !mcsema_real_eip !245
  %1368 = icmp eq i32 %1359, 0, !mcsema_real_eip !245
  store i1 %1368, i1* %ZF, !mcsema_real_eip !245
  %1369 = lshr i32 %1359, 31, !mcsema_real_eip !245
  %1370 = trunc i32 %1369 to i1, !mcsema_real_eip !245
  store i1 %1370, i1* %SF, !mcsema_real_eip !245
  %1371 = icmp ult i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  store i1 %1371, i1* %CF, !mcsema_real_eip !245
  %1372 = xor i32 %EDX_val.368, %EAX_val.370, !mcsema_real_eip !245
  %1373 = and i32 %1372, %1360, !mcsema_real_eip !245
  %1374 = lshr i32 %1373, 31, !mcsema_real_eip !245
  %1375 = trunc i32 %1374 to i1, !mcsema_real_eip !245
  store i1 %1375, i1* %OF, !mcsema_real_eip !245
  %1376 = zext i32 %1359 to i64, !mcsema_real_eip !245
  store i64 %1376, i64* %XDX, !mcsema_real_eip !245
  %EDX_val.373 = load i32, i32* %EDX.64, !mcsema_real_eip !246
  store i32 %EDX_val.373, i32* %1354, !mcsema_real_eip !246
  %_load_rbp_ptr_367 = load i8*, i8** %_RBP_ptr_
  %_new_gep_368 = getelementptr i8, i8* %_load_rbp_ptr_367, i64 -20
  %_allin_new_bt_369 = bitcast i8* %_new_gep_368 to i64*
  %1377 = ptrtoint i64* %_allin_new_bt_369 to i64, !mcsema_real_eip !247
  %1378 = inttoptr i64 %1377 to i32*, !mcsema_real_eip !247
  %_ptr_bt_1568 = bitcast i32* %1378 to i8*
  %_offset_above_rbp_1569 = sub i64 %1377, %_local_end_to_int_
  %_pot_address_in_parent_stack_1570 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1569
  %_cond1_1571 = icmp ugt i8* %_ptr_bt_1568, %_local_stack_end_ptr_
  %_cond2_1_1572 = icmp ugt i8* %_ptr_bt_1568, %_parent_stack_end_ptr_
  %_cond2_2_1573 = icmp ult i8* %_ptr_bt_1568, %_parent_stack_start_ptr_
  %_cond2_1574 = or i1 %_cond2_1_1572, %_cond2_2_1573
  %_cond4_1575 = icmp ule i8* %_pot_address_in_parent_stack_1570, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1576 = and i1 %_cond1_1571, %_cond2_1574
  %_cond1_n_cond2_cond3_1577 = and i1 %_cond1_n_cond2_1576, %_cond4_1575
  br i1 %_cond1_n_cond2_cond3_1577, label %1379, label %1380

; <label>:1379:                                   ; preds = %1356
  %_address_in_parent_stack_bt_1579 = bitcast i8* %_pot_address_in_parent_stack_1570 to i32*
  br label %1380

; <label>:1380:                                   ; preds = %1356, %1379
  %1381 = phi i32* [ %1378, %1356 ], [ %_address_in_parent_stack_bt_1579, %1379 ]
  %_new_load_1580 = load i32, i32* %1381
  store i1 false, i1* %AF, !mcsema_real_eip !247
  %1382 = trunc i32 %_new_load_1580 to i8, !mcsema_real_eip !247
  %1383 = call i8 @llvm.ctpop.i8(i8 %1382), !mcsema_real_eip !247
  %1384 = trunc i8 %1383 to i1, !mcsema_real_eip !247
  %1385 = xor i1 %1384, true, !mcsema_real_eip !247
  store i1 %1385, i1* %PF, !mcsema_real_eip !247
  %1386 = icmp eq i32 %_new_load_1580, 0, !mcsema_real_eip !247
  store i1 %1386, i1* %ZF, !mcsema_real_eip !247
  %1387 = lshr i32 %_new_load_1580, 31, !mcsema_real_eip !247
  %1388 = trunc i32 %1387 to i1, !mcsema_real_eip !247
  store i1 %1388, i1* %SF, !mcsema_real_eip !247
  store i1 false, i1* %CF, !mcsema_real_eip !247
  store i1 false, i1* %OF, !mcsema_real_eip !247
  %1389 = icmp eq i1 %1386, false, !mcsema_real_eip !248
  br i1 %1389, label %block_0x401, label %block_0x3e4, !mcsema_real_eip !248

block_0x3e4:                                      ; preds = %1380
  %_new_gep_371 = getelementptr i8, i8* %_load_rbp_ptr_367, i64 -16
  %_allin_new_bt_372 = bitcast i8* %_new_gep_371 to i64*
  %_ptr_to_int_1581 = ptrtoint i64* %_allin_new_bt_372 to i64
  %_offset_above_rbp_1584 = sub i64 %_ptr_to_int_1581, %_local_end_to_int_
  %_pot_address_in_parent_stack_1585 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1584
  %_cond1_1586 = icmp ugt i8* %_new_gep_371, %_local_stack_end_ptr_
  %_cond2_1_1587 = icmp ugt i8* %_new_gep_371, %_parent_stack_end_ptr_
  %_cond2_2_1588 = icmp ult i8* %_new_gep_371, %_parent_stack_start_ptr_
  %_cond2_1589 = or i1 %_cond2_1_1587, %_cond2_2_1588
  %_cond4_1590 = icmp ule i8* %_pot_address_in_parent_stack_1585, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1591 = and i1 %_cond1_1586, %_cond2_1589
  %_cond1_n_cond2_cond3_1592 = and i1 %_cond1_n_cond2_1591, %_cond4_1590
  br i1 %_cond1_n_cond2_cond3_1592, label %1390, label %1391

; <label>:1390:                                   ; preds = %block_0x3e4
  %_address_in_parent_stack_bt_1594 = bitcast i8* %_pot_address_in_parent_stack_1585 to i64*
  br label %1391

; <label>:1391:                                   ; preds = %block_0x3e4, %1390
  %1392 = phi i64* [ %_allin_new_bt_372, %block_0x3e4 ], [ %_address_in_parent_stack_bt_1594, %1390 ]
  %_new_load_1595 = load i64, i64* %1392
  store i64 %_new_load_1595, i64* %XAX, !mcsema_real_eip !249
  %1393 = add i64 %_new_load_1595, 31, !mcsema_real_eip !250
  %1394 = inttoptr i64 %1393 to i64*, !mcsema_real_eip !250
  %1395 = inttoptr i64 %1393 to i8*, !mcsema_real_eip !250
  %_offset_above_rbp_1598 = sub i64 %1393, %_local_end_to_int_
  %_pot_address_in_parent_stack_1599 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1598
  %_cond1_1600 = icmp ugt i8* %1395, %_local_stack_end_ptr_
  %_cond2_1_1601 = icmp ugt i8* %1395, %_parent_stack_end_ptr_
  %_cond2_2_1602 = icmp ult i8* %1395, %_parent_stack_start_ptr_
  %_cond2_1603 = or i1 %_cond2_1_1601, %_cond2_2_1602
  %_cond4_1604 = icmp ule i8* %_pot_address_in_parent_stack_1599, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1605 = and i1 %_cond1_1600, %_cond2_1603
  %_cond1_n_cond2_cond3_1606 = and i1 %_cond1_n_cond2_1605, %_cond4_1604
  br i1 %_cond1_n_cond2_cond3_1606, label %1396, label %1397

; <label>:1396:                                   ; preds = %1391
  br label %1397

; <label>:1397:                                   ; preds = %1391, %1396
  %1398 = phi i8* [ %1395, %1391 ], [ %_pot_address_in_parent_stack_1599, %1396 ]
  %_new_load_1608 = load i8, i8* %1398
  %1399 = zext i8 %_new_load_1608 to i32, !mcsema_real_eip !250
  %1400 = zext i32 %1399 to i64, !mcsema_real_eip !250
  store i64 %1400, i64* %XDI, !mcsema_real_eip !250
  %_load_rsp_ptr_373 = load i8*, i8** %_RSP_ptr_
  %RSP_val.378 = load i64, i64* %XSP, !mcsema_real_eip !251
  %_new_gep_374 = getelementptr i8, i8* %_load_rsp_ptr_373, i64 -8
  %1401 = sub i64 %RSP_val.378, 8, !mcsema_real_eip !251
  %_allin_new_bt_375 = bitcast i8* %_new_gep_374 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_375, !mcsema_real_eip !251
  store volatile i8* %_new_gep_374, i8** %_RSP_ptr_
  store i64 %1401, i64* %XSP, !mcsema_real_eip !251
  %1402 = call x86_64_sysvcc i64 @_to_byte(i64 %1400)
  %_rsp_fix_436 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_437 = getelementptr i8, i8* %_rsp_fix_436, i64 8
  store i8* %_gep_fix_437, i8** %_RSP_ptr_
  store i64 %1402, i64* %XAX, !mcsema_real_eip !251
  %EAX_val.380 = load i32, i32* %EAX.9, !mcsema_real_eip !252
  %1403 = sub i32 %EAX_val.380, 4, !mcsema_real_eip !252
  %1404 = xor i32 %1403, %EAX_val.380, !mcsema_real_eip !252
  %1405 = xor i32 %1404, 4, !mcsema_real_eip !252
  %1406 = and i32 %1405, 16, !mcsema_real_eip !252
  %1407 = icmp ne i32 %1406, 0, !mcsema_real_eip !252
  store i1 %1407, i1* %AF, !mcsema_real_eip !252
  %1408 = trunc i32 %1403 to i8, !mcsema_real_eip !252
  %1409 = call i8 @llvm.ctpop.i8(i8 %1408), !mcsema_real_eip !252
  %1410 = trunc i8 %1409 to i1, !mcsema_real_eip !252
  %1411 = xor i1 %1410, true, !mcsema_real_eip !252
  store i1 %1411, i1* %PF, !mcsema_real_eip !252
  %1412 = icmp eq i32 %1403, 0, !mcsema_real_eip !252
  store i1 %1412, i1* %ZF, !mcsema_real_eip !252
  %1413 = lshr i32 %1403, 31, !mcsema_real_eip !252
  %1414 = trunc i32 %1413 to i1, !mcsema_real_eip !252
  store i1 %1414, i1* %SF, !mcsema_real_eip !252
  %1415 = icmp ult i32 %EAX_val.380, 4, !mcsema_real_eip !252
  store i1 %1415, i1* %CF, !mcsema_real_eip !252
  %1416 = xor i32 %EAX_val.380, 4, !mcsema_real_eip !252
  %1417 = and i32 %1416, %1404, !mcsema_real_eip !252
  %1418 = lshr i32 %1417, 31, !mcsema_real_eip !252
  %1419 = trunc i32 %1418 to i1, !mcsema_real_eip !252
  store i1 %1419, i1* %OF, !mcsema_real_eip !252
  br i1 %1412, label %block_0x401, label %block_0x3fa, !mcsema_real_eip !253

block_0x3fa:                                      ; preds = %1397
  %_load_rbp_ptr_376 = load i8*, i8** %_RBP_ptr_
  %_new_gep_377 = getelementptr i8, i8* %_load_rbp_ptr_376, i64 -20
  %_allin_new_bt_378 = bitcast i8* %_new_gep_377 to i64*
  %1420 = ptrtoint i64* %_allin_new_bt_378 to i64, !mcsema_real_eip !254
  %1421 = inttoptr i64 %1420 to i32*, !mcsema_real_eip !254
  store i32 -32, i32* %1421, !mcsema_real_eip !254
  br label %block_0x401, !mcsema_real_eip !255

block_0x401:                                      ; preds = %block_0x3fa, %1397, %1380
  br label %block_0x40c, !mcsema_real_eip !255

block_0x406:                                      ; preds = %1235
  %_new_gep_380 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -64
  %_allin_new_bt_381 = bitcast i8* %_new_gep_380 to i64*
  %1422 = ptrtoint i64* %_allin_new_bt_381 to i64, !mcsema_real_eip !256
  %1423 = inttoptr i64 %1422 to i32*, !mcsema_real_eip !256
  %_ptr_bt_1611 = bitcast i32* %1423 to i8*
  %_offset_above_rbp_1612 = sub i64 %1422, %_local_end_to_int_
  %_pot_address_in_parent_stack_1613 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1612
  %_cond1_1614 = icmp ugt i8* %_ptr_bt_1611, %_local_stack_end_ptr_
  %_cond2_1_1615 = icmp ugt i8* %_ptr_bt_1611, %_parent_stack_end_ptr_
  %_cond2_2_1616 = icmp ult i8* %_ptr_bt_1611, %_parent_stack_start_ptr_
  %_cond2_1617 = or i1 %_cond2_1_1615, %_cond2_2_1616
  %_cond4_1618 = icmp ule i8* %_pot_address_in_parent_stack_1613, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1619 = and i1 %_cond1_1614, %_cond2_1617
  %_cond1_n_cond2_cond3_1620 = and i1 %_cond1_n_cond2_1619, %_cond4_1618
  br i1 %_cond1_n_cond2_cond3_1620, label %1424, label %1425

; <label>:1424:                                   ; preds = %block_0x406
  %_address_in_parent_stack_bt_1622 = bitcast i8* %_pot_address_in_parent_stack_1613 to i32*
  br label %1425

; <label>:1425:                                   ; preds = %block_0x406, %1424
  %1426 = phi i32* [ %1423, %block_0x406 ], [ %_address_in_parent_stack_bt_1622, %1424 ]
  %_new_load_1623 = load i32, i32* %1426
  %1427 = zext i32 %_new_load_1623 to i64, !mcsema_real_eip !256
  store i64 %1427, i64* %XAX, !mcsema_real_eip !256
  %_new_gep_383 = getelementptr i8, i8* %_load_rbp_ptr_322, i64 -20
  %_allin_new_bt_384 = bitcast i8* %_new_gep_383 to i64*
  %EAX_val.385 = load i32, i32* %EAX.9, !mcsema_real_eip !257
  %1428 = ptrtoint i64* %_allin_new_bt_384 to i64, !mcsema_real_eip !257
  %1429 = inttoptr i64 %1428 to i32*, !mcsema_real_eip !257
  store i32 %EAX_val.385, i32* %1429, !mcsema_real_eip !257
  br label %block_0x40c, !mcsema_real_eip !258

block_0x40c:                                      ; preds = %1425, %block_0x401
  br label %block_0x411, !mcsema_real_eip !258

block_0x411:                                      ; preds = %block_0x40c, %1206
  %_load_rbp_ptr_385 = load i8*, i8** %_RBP_ptr_
  %_new_gep_386 = getelementptr i8, i8* %_load_rbp_ptr_385, i64 -20
  %_allin_new_bt_387 = bitcast i8* %_new_gep_386 to i64*
  %1430 = ptrtoint i64* %_allin_new_bt_387 to i64, !mcsema_real_eip !259
  %1431 = inttoptr i64 %1430 to i32*, !mcsema_real_eip !259
  %_ptr_bt_1626 = bitcast i32* %1431 to i8*
  %_offset_above_rbp_1627 = sub i64 %1430, %_local_end_to_int_
  %_pot_address_in_parent_stack_1628 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1627
  %_cond1_1629 = icmp ugt i8* %_ptr_bt_1626, %_local_stack_end_ptr_
  %_cond2_1_1630 = icmp ugt i8* %_ptr_bt_1626, %_parent_stack_end_ptr_
  %_cond2_2_1631 = icmp ult i8* %_ptr_bt_1626, %_parent_stack_start_ptr_
  %_cond2_1632 = or i1 %_cond2_1_1630, %_cond2_2_1631
  %_cond4_1633 = icmp ule i8* %_pot_address_in_parent_stack_1628, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1634 = and i1 %_cond1_1629, %_cond2_1632
  %_cond1_n_cond2_cond3_1635 = and i1 %_cond1_n_cond2_1634, %_cond4_1633
  br i1 %_cond1_n_cond2_cond3_1635, label %1432, label %1433

; <label>:1432:                                   ; preds = %block_0x411
  %_address_in_parent_stack_bt_1637 = bitcast i8* %_pot_address_in_parent_stack_1628 to i32*
  br label %1433

; <label>:1433:                                   ; preds = %block_0x411, %1432
  %1434 = phi i32* [ %1431, %block_0x411 ], [ %_address_in_parent_stack_bt_1637, %1432 ]
  %_new_load_1638 = load i32, i32* %1434
  %1435 = zext i32 %_new_load_1638 to i64, !mcsema_real_eip !259
  store i64 %1435, i64* %XAX, !mcsema_real_eip !259
  %_new_gep_389 = getelementptr i8, i8* %_load_rbp_ptr_385, i64 -4
  %_allin_new_bt_390 = bitcast i8* %_new_gep_389 to i64*
  %EAX_val.389 = load i32, i32* %EAX.9, !mcsema_real_eip !260
  %1436 = ptrtoint i64* %_allin_new_bt_390 to i64, !mcsema_real_eip !260
  %1437 = inttoptr i64 %1436 to i32*, !mcsema_real_eip !260
  store i32 %EAX_val.389, i32* %1437, !mcsema_real_eip !260
  br label %block_0x417, !mcsema_real_eip !261

block_0x417:                                      ; preds = %1433, %1102, %block_0x2ea, %block_0x2c6, %block_0x1cc, %block_0x10e, %block_0xcb, %block_0x98, %block_0x6d, %block_0x4b, %45
  %_load_rbp_ptr_391 = load i8*, i8** %_RBP_ptr_
  %_new_gep_392 = getelementptr i8, i8* %_load_rbp_ptr_391, i64 -4
  %_allin_new_bt_393 = bitcast i8* %_new_gep_392 to i64*
  %1438 = ptrtoint i64* %_allin_new_bt_393 to i64, !mcsema_real_eip !261
  %1439 = inttoptr i64 %1438 to i32*, !mcsema_real_eip !261
  %_ptr_bt_1641 = bitcast i32* %1439 to i8*
  %_offset_above_rbp_1642 = sub i64 %1438, %_local_end_to_int_
  %_pot_address_in_parent_stack_1643 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1642
  %_cond1_1644 = icmp ugt i8* %_ptr_bt_1641, %_local_stack_end_ptr_
  %_cond2_1_1645 = icmp ugt i8* %_ptr_bt_1641, %_parent_stack_end_ptr_
  %_cond2_2_1646 = icmp ult i8* %_ptr_bt_1641, %_parent_stack_start_ptr_
  %_cond2_1647 = or i1 %_cond2_1_1645, %_cond2_2_1646
  %_cond4_1648 = icmp ule i8* %_pot_address_in_parent_stack_1643, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1649 = and i1 %_cond1_1644, %_cond2_1647
  %_cond1_n_cond2_cond3_1650 = and i1 %_cond1_n_cond2_1649, %_cond4_1648
  br i1 %_cond1_n_cond2_cond3_1650, label %1440, label %1441

; <label>:1440:                                   ; preds = %block_0x417
  %_address_in_parent_stack_bt_1652 = bitcast i8* %_pot_address_in_parent_stack_1643 to i32*
  br label %1441

; <label>:1441:                                   ; preds = %block_0x417, %1440
  %1442 = phi i32* [ %1439, %block_0x417 ], [ %_address_in_parent_stack_bt_1652, %1440 ]
  %_new_load_1653 = load i32, i32* %1442
  %1443 = zext i32 %_new_load_1653 to i64, !mcsema_real_eip !261
  store i64 %1443, i64* %XAX, !mcsema_real_eip !261
  %_load_rsp_ptr_394 = load i8*, i8** %_RSP_ptr_
  %RSP_val.391 = load i64, i64* %XSP, !mcsema_real_eip !262
  %_new_gep_395 = getelementptr i8, i8* %_load_rsp_ptr_394, i64 80
  %1444 = add i64 80, %RSP_val.391, !mcsema_real_eip !262
  %_trans_p2i_396 = ptrtoint i8* %_new_gep_395 to i64
  %_trans_p2i_397 = ptrtoint i8* %_load_rsp_ptr_394 to i64
  %_trans_xor_398 = xor i64 %_trans_p2i_396, %_trans_p2i_397
  %1445 = xor i64 %_trans_xor_398, 80, !mcsema_real_eip !262
  %1446 = and i64 %1445, 16, !mcsema_real_eip !262
  %1447 = icmp ne i64 %1446, 0, !mcsema_real_eip !262
  store i1 %1447, i1* %AF, !mcsema_real_eip !262
  %1448 = lshr i64 %1444, 63, !mcsema_real_eip !262
  %1449 = trunc i64 %1448 to i1, !mcsema_real_eip !262
  store i1 %1449, i1* %SF, !mcsema_real_eip !262
  %_trans_icmp_eq_400 = icmp eq i64 %_trans_p2i_396, 0
  store i1 %_trans_icmp_eq_400, i1* %ZF, !mcsema_real_eip !262
  %_trans_xor_402 = xor i64 %_trans_p2i_397, 80
  %1450 = xor i64 %_trans_xor_402, -1, !mcsema_real_eip !262
  %1451 = and i64 %1450, %_trans_xor_398, !mcsema_real_eip !262
  %1452 = lshr i64 %1451, 63, !mcsema_real_eip !262
  %1453 = and i64 %1452, 1, !mcsema_real_eip !262
  %1454 = trunc i64 %1453 to i1, !mcsema_real_eip !262
  store i1 %1454, i1* %OF, !mcsema_real_eip !262
  %_trans_trunc_407 = trunc i64 %_trans_p2i_396 to i8
  %1455 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_407), !mcsema_real_eip !262
  %1456 = trunc i8 %1455 to i1, !mcsema_real_eip !262
  %1457 = xor i1 %1456, true, !mcsema_real_eip !262
  store i1 %1457, i1* %PF, !mcsema_real_eip !262
  %_trans_icmp_ne_409 = icmp ne i64 %_trans_p2i_396, %RSP_val.391
  store i1 %_trans_icmp_ne_409, i1* %CF, !mcsema_real_eip !262
  store volatile i8* %_new_gep_395, i8** %_RSP_ptr_
  store i64 %1444, i64* %XSP, !mcsema_real_eip !262
  %_allin_new_bt_411 = bitcast i8* %_new_gep_395 to i64*
  %_ptr_to_int_1654 = ptrtoint i64* %_allin_new_bt_411 to i64
  %_offset_above_rbp_1657 = sub i64 %_ptr_to_int_1654, %_local_end_to_int_
  %_pot_address_in_parent_stack_1658 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1657
  %_cond1_1659 = icmp ugt i8* %_new_gep_395, %_local_stack_end_ptr_
  %_cond2_1_1660 = icmp ugt i8* %_new_gep_395, %_parent_stack_end_ptr_
  %_cond2_2_1661 = icmp ult i8* %_new_gep_395, %_parent_stack_start_ptr_
  %_cond2_1662 = or i1 %_cond2_1_1660, %_cond2_2_1661
  %_cond4_1663 = icmp ule i8* %_pot_address_in_parent_stack_1658, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1664 = and i1 %_cond1_1659, %_cond2_1662
  %_cond1_n_cond2_cond3_1665 = and i1 %_cond1_n_cond2_1664, %_cond4_1663
  br i1 %_cond1_n_cond2_cond3_1665, label %1458, label %1459

; <label>:1458:                                   ; preds = %1441
  %_address_in_parent_stack_bt_1667 = bitcast i8* %_pot_address_in_parent_stack_1658 to i64*
  br label %1459

; <label>:1459:                                   ; preds = %1441, %1458
  %1460 = phi i64* [ %_allin_new_bt_411, %1441 ], [ %_address_in_parent_stack_bt_1667, %1458 ]
  %_new_load_1668 = load i64, i64* %1460
  %_new_int2ptr_ = inttoptr i64 %_new_load_1668 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_1668, i64* %XBP, !mcsema_real_eip !263
  %_new_gep_412 = getelementptr i8, i8* %_new_gep_395, i64 8
  %1461 = add i64 %1444, 8, !mcsema_real_eip !263
  store volatile i8* %_new_gep_412, i8** %_RSP_ptr_
  store i64 %1461, i64* %XSP, !mcsema_real_eip !263
  %_new_gep_414 = getelementptr i8, i8* %_new_gep_412, i64 8
  %1462 = add i64 %1461, 8, !mcsema_real_eip !264
  %_allin_new_bt_415 = bitcast i8* %_new_gep_412 to i64*
  %_ptr_to_int_1669 = ptrtoint i64* %_allin_new_bt_415 to i64
  %_offset_above_rbp_1672 = sub i64 %_ptr_to_int_1669, %_local_end_to_int_
  %_pot_address_in_parent_stack_1673 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1672
  %_cond1_1674 = icmp ugt i8* %_new_gep_412, %_local_stack_end_ptr_
  %_cond2_1_1675 = icmp ugt i8* %_new_gep_412, %_parent_stack_end_ptr_
  %_cond2_2_1676 = icmp ult i8* %_new_gep_412, %_parent_stack_start_ptr_
  %_cond2_1677 = or i1 %_cond2_1_1675, %_cond2_2_1676
  %_cond4_1678 = icmp ule i8* %_pot_address_in_parent_stack_1673, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1679 = and i1 %_cond1_1674, %_cond2_1677
  %_cond1_n_cond2_cond3_1680 = and i1 %_cond1_n_cond2_1679, %_cond4_1678
  br i1 %_cond1_n_cond2_cond3_1680, label %1463, label %1464

; <label>:1463:                                   ; preds = %1459
  %_address_in_parent_stack_bt_1682 = bitcast i8* %_pot_address_in_parent_stack_1673 to i64*
  br label %1464

; <label>:1464:                                   ; preds = %1459, %1463
  %1465 = phi i64* [ %_allin_new_bt_415, %1459 ], [ %_address_in_parent_stack_bt_1682, %1463 ]
  %_new_load_1683 = load i64, i64* %1465
  store i64 %_new_load_1683, i64* %XIP, !mcsema_real_eip !264
  store volatile i8* %_new_gep_414, i8** %_RSP_ptr_
  store i64 %1462, i64* %XSP, !mcsema_real_eip !264
  ret void, !mcsema_real_eip !264
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
!6 = !{i64 12}
!7 = !{i64 16}
!8 = !{i64 21}
!9 = !{i64 23}
!10 = !{i64 26}
!11 = !{i64 30}
!12 = !{i64 36}
!13 = !{i64 39}
!14 = !{i64 42}
!15 = !{i64 47}
!16 = !{i64 51}
!17 = !{i64 55}
!18 = !{i64 59}
!19 = !{i64 63}
!20 = !{i64 66}
!21 = !{i64 69}
!22 = !{i64 75}
!23 = !{i64 82}
!24 = !{i64 87}
!25 = !{i64 91}
!26 = !{i64 95}
!27 = !{i64 100}
!28 = !{i64 103}
!29 = !{i64 109}
!30 = !{i64 116}
!31 = !{i64 121}
!32 = !{i64 125}
!33 = !{i64 129}
!34 = !{i64 134}
!35 = !{i64 137}
!36 = !{i64 140}
!37 = !{i64 143}
!38 = !{i64 146}
!39 = !{i64 152}
!40 = !{i64 159}
!41 = !{i64 164}
!42 = !{i64 168}
!43 = !{i64 172}
!44 = !{i64 177}
!45 = !{i64 182}
!46 = !{i64 185}
!47 = !{i64 188}
!48 = !{i64 191}
!49 = !{i64 192}
!50 = !{i64 194}
!51 = !{i64 197}
!52 = !{i64 203}
!53 = !{i64 210}
!54 = !{i64 215}
!55 = !{i64 219}
!56 = !{i64 223}
!57 = !{i64 226}
!58 = !{i64 229}
!59 = !{i64 235}
!60 = !{i64 239}
!61 = !{i64 243}
!62 = !{i64 249}
!63 = !{i64 252}
!64 = !{i64 258}
!65 = !{i64 265}
!66 = !{i64 270}
!67 = !{i64 277}
!68 = !{i64 282}
!69 = !{i64 286}
!70 = !{i64 290}
!71 = !{i64 293}
!72 = !{i64 295}
!73 = !{i64 298}
!74 = !{i64 302}
!75 = !{i64 306}
!76 = !{i64 312}
!77 = !{i64 314}
!78 = !{i64 317}
!79 = !{i64 321}
!80 = !{i64 324}
!81 = !{i64 330}
!82 = !{i64 334}
!83 = !{i64 337}
!84 = !{i64 343}
!85 = !{i64 346}
!86 = !{i64 349}
!87 = !{i64 352}
!88 = !{i64 357}
!89 = !{i64 360}
!90 = !{i64 363}
!91 = !{i64 366}
!92 = !{i64 370}
!93 = !{i64 374}
!94 = !{i64 379}
!95 = !{i64 381}
!96 = !{i64 384}
!97 = !{i64 388}
!98 = !{i64 392}
!99 = !{i64 397}
!100 = !{i64 401}
!101 = !{i64 403}
!102 = !{i64 406}
!103 = !{i64 409}
!104 = !{i64 413}
!105 = !{i64 416}
!106 = !{i64 419}
!107 = !{i64 425}
!108 = !{i64 428}
!109 = !{i64 431}
!110 = !{i64 434}
!111 = !{i64 439}
!112 = !{i64 442}
!113 = !{i64 445}
!114 = !{i64 447}
!115 = !{i64 450}
!116 = !{i64 454}
!117 = !{i64 460}
!118 = !{i64 467}
!119 = !{i64 472}
!120 = !{i64 474}
!121 = !{i64 479}
!122 = !{i64 483}
!123 = !{i64 487}
!124 = !{i64 490}
!125 = !{i64 495}
!126 = !{i64 498}
!127 = !{i64 502}
!128 = !{i64 506}
!129 = !{i64 511}
!130 = !{i64 516}
!131 = !{i64 522}
!132 = !{i64 526}
!133 = !{i64 531}
!134 = !{i64 536}
!135 = !{i64 542}
!136 = !{i64 549}
!137 = !{i64 554}
!138 = !{i64 561}
!139 = !{i64 563}
!140 = !{i64 568}
!141 = !{i64 572}
!142 = !{i64 576}
!143 = !{i64 579}
!144 = !{i64 584}
!145 = !{i64 587}
!146 = !{i64 590}
!147 = !{i64 595}
!148 = !{i64 598}
!149 = !{i64 601}
!150 = !{i64 604}
!151 = !{i64 607}
!152 = !{i64 610}
!153 = !{i64 615}
!154 = !{i64 618}
!155 = !{i64 622}
!156 = !{i64 628}
!157 = !{i64 631}
!158 = !{i64 634}
!159 = !{i64 640}
!160 = !{i64 647}
!161 = !{i64 652}
!162 = !{i64 659}
!163 = !{i64 664}
!164 = !{i64 667}
!165 = !{i64 671}
!166 = !{i64 675}
!167 = !{i64 678}
!168 = !{i64 683}
!169 = !{i64 686}
!170 = !{i64 689}
!171 = !{i64 692}
!172 = !{i64 695}
!173 = !{i64 698}
!174 = !{i64 701}
!175 = !{i64 704}
!176 = !{i64 710}
!177 = !{i64 717}
!178 = !{i64 722}
!179 = !{i64 725}
!180 = !{i64 730}
!181 = !{i64 733}
!182 = !{i64 740}
!183 = !{i64 746}
!184 = !{i64 753}
!185 = !{i64 758}
!186 = !{i64 763}
!187 = !{i64 766}
!188 = !{i64 772}
!189 = !{i64 775}
!190 = !{i64 778}
!191 = !{i64 781}
!192 = !{i64 784}
!193 = !{i64 787}
!194 = !{i64 793}
!195 = !{i64 796}
!196 = !{i64 799}
!197 = !{i64 802}
!198 = !{i64 804}
!199 = !{i64 806}
!200 = !{i64 809}
!201 = !{i64 811}
!202 = !{i64 814}
!203 = !{i64 818}
!204 = !{i64 824}
!205 = !{i64 827}
!206 = !{i64 830}
!207 = !{i64 835}
!208 = !{i64 840}
!209 = !{i64 843}
!210 = !{i64 847}
!211 = !{i64 851}
!212 = !{i64 854}
!213 = !{i64 859}
!214 = !{i64 862}
!215 = !{i64 866}
!216 = !{i64 870}
!217 = !{i64 873}
!218 = !{i64 879}
!219 = !{i64 883}
!220 = !{i64 887}
!221 = !{i64 890}
!222 = !{i64 896}
!223 = !{i64 899}
!224 = !{i64 902}
!225 = !{i64 905}
!226 = !{i64 910}
!227 = !{i64 914}
!228 = !{i64 918}
!229 = !{i64 922}
!230 = !{i64 926}
!231 = !{i64 928}
!232 = !{i64 934}
!233 = !{i64 939}
!234 = !{i64 943}
!235 = !{i64 947}
!236 = !{i64 951}
!237 = !{i64 955}
!238 = !{i64 957}
!239 = !{i64 959}
!240 = !{i64 962}
!241 = !{i64 965}
!242 = !{i64 969}
!243 = !{i64 973}
!244 = !{i64 978}
!245 = !{i64 981}
!246 = !{i64 983}
!247 = !{i64 986}
!248 = !{i64 990}
!249 = !{i64 996}
!250 = !{i64 1000}
!251 = !{i64 1004}
!252 = !{i64 1009}
!253 = !{i64 1012}
!254 = !{i64 1018}
!255 = !{i64 1025}
!256 = !{i64 1030}
!257 = !{i64 1033}
!258 = !{i64 1036}
!259 = !{i64 1041}
!260 = !{i64 1044}
!261 = !{i64 1047}
!262 = !{i64 1050}
!263 = !{i64 1054}
!264 = !{i64 1055}
