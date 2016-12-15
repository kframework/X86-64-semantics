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
  %EAX_val.26 = load i32, i32* %EAX.9, !mcsema_real_eip !13
  %42 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !13
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.26, i32* %43, !mcsema_real_eip !13
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
  %ECX_val.22 = load i32, i32* %ECX.12, !mcsema_real_eip !20
  %70 = sub i32 %ECX_val.22, 100, !mcsema_real_eip !20
  %71 = xor i32 %70, %ECX_val.22, !mcsema_real_eip !20
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
  %82 = icmp ult i32 %ECX_val.22, 100, !mcsema_real_eip !20
  store i1 %82, i1* %CF, !mcsema_real_eip !20
  %83 = xor i32 %ECX_val.22, 100, !mcsema_real_eip !20
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
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %96 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !26
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_51, !mcsema_real_eip !26
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %96, i64* %XSP, !mcsema_real_eip !26
  %97 = call x86_64_sysvcc i64 @_to_byte(i64 %95)
  %_rsp_fix_416 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_417 = getelementptr i8, i8* %_rsp_fix_416, i64 8
  store i8* %_gep_fix_417, i8** %_RSP_ptr_
  store i64 %97, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.32 = load i32, i32* %EAX.9, !mcsema_real_eip !27
  %98 = sub i32 %EAX_val.32, 9, !mcsema_real_eip !27
  %99 = xor i32 %98, %EAX_val.32, !mcsema_real_eip !27
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
  %110 = icmp ult i32 %EAX_val.32, 9, !mcsema_real_eip !27
  store i1 %110, i1* %CF, !mcsema_real_eip !27
  %111 = xor i32 %EAX_val.32, 9, !mcsema_real_eip !27
  %112 = and i32 %111, %99, !mcsema_real_eip !27
  %113 = lshr i32 %112, 31, !mcsema_real_eip !27
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !27
  store i1 %114, i1* %OF, !mcsema_real_eip !27
  br i1 %107, label %block_0x79, label %block_0x6d, !mcsema_real_eip !28

block_0x417:                                      ; preds = %block_0x411, %block_0x338, %block_0x2ea, %block_0x2c6, %block_0x1cc, %block_0x10e, %block_0xcb, %block_0x98, %block_0x6d, %block_0x4b, %block_0x24
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -4
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %115 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !29
  %116 = inttoptr i64 %115 to i32*, !mcsema_real_eip !29
  %117 = load i32, i32* %116, !mcsema_real_eip !29
  %118 = zext i32 %117 to i64, !mcsema_real_eip !29
  store i64 %118, i64* %XAX, !mcsema_real_eip !29
  %_load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_55, i64 80
  %119 = add i64 80, %RSP_val.35, !mcsema_real_eip !30
  %_trans_p2i_57 = ptrtoint i8* %_new_gep_56 to i64
  %_trans_p2i_58 = ptrtoint i8* %_load_rsp_ptr_55 to i64
  %_trans_xor_59 = xor i64 %_trans_p2i_57, %_trans_p2i_58
  %120 = xor i64 %_trans_xor_59, 80, !mcsema_real_eip !30
  %121 = and i64 %120, 16, !mcsema_real_eip !30
  %122 = icmp ne i64 %121, 0, !mcsema_real_eip !30
  store i1 %122, i1* %AF, !mcsema_real_eip !30
  %123 = lshr i64 %119, 63, !mcsema_real_eip !30
  %124 = trunc i64 %123 to i1, !mcsema_real_eip !30
  store i1 %124, i1* %SF, !mcsema_real_eip !30
  %_trans_icmp_eq_61 = icmp eq i64 %_trans_p2i_57, 0
  store i1 %_trans_icmp_eq_61, i1* %ZF, !mcsema_real_eip !30
  %_trans_xor_63 = xor i64 %_trans_p2i_58, 80
  %125 = xor i64 %_trans_xor_63, -1, !mcsema_real_eip !30
  %126 = and i64 %125, %_trans_xor_59, !mcsema_real_eip !30
  %127 = lshr i64 %126, 63, !mcsema_real_eip !30
  %128 = and i64 %127, 1, !mcsema_real_eip !30
  %129 = trunc i64 %128 to i1, !mcsema_real_eip !30
  store i1 %129, i1* %OF, !mcsema_real_eip !30
  %_trans_trunc_68 = trunc i64 %_trans_p2i_57 to i8
  %130 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_68), !mcsema_real_eip !30
  %131 = trunc i8 %130 to i1, !mcsema_real_eip !30
  %132 = xor i1 %131, true, !mcsema_real_eip !30
  store i1 %132, i1* %PF, !mcsema_real_eip !30
  %_trans_icmp_ne_70 = icmp ne i64 %_trans_p2i_57, %RSP_val.35
  store i1 %_trans_icmp_ne_70, i1* %CF, !mcsema_real_eip !30
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %119, i64* %XSP, !mcsema_real_eip !30
  %_allin_new_bt_72 = bitcast i8* %_new_gep_56 to i64*
  %133 = load i64, i64* %_allin_new_bt_72, !mcsema_real_eip !31
  %_new_int2ptr_ = inttoptr i64 %133 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %133, i64* %XBP, !mcsema_real_eip !31
  %_new_gep_73 = getelementptr i8, i8* %_new_gep_56, i64 8
  %134 = add i64 %119, 8, !mcsema_real_eip !31
  store volatile i8* %_new_gep_73, i8** %_RSP_ptr_
  store i64 %134, i64* %XSP, !mcsema_real_eip !31
  %_new_gep_75 = getelementptr i8, i8* %_new_gep_73, i64 8
  %135 = add i64 %134, 8, !mcsema_real_eip !32
  %_allin_new_bt_76 = bitcast i8* %_new_gep_73 to i64*
  %136 = load i64, i64* %_allin_new_bt_76, !mcsema_real_eip !32
  store i64 %136, i64* %XIP, !mcsema_real_eip !32
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_
  store i64 %135, i64* %XSP, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32

block_0x6d:                                       ; preds = %block_0x57
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -4
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %137 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !33
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !33
  store i32 -3, i32* %138, !mcsema_real_eip !33
  br label %block_0x417, !mcsema_real_eip !34

block_0x79:                                       ; preds = %block_0x57
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -16
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %139 = load i64, i64* %_allin_new_bt_82, !mcsema_real_eip !35
  store i64 %139, i64* %XAX, !mcsema_real_eip !35
  %140 = add i64 %139, 2, !mcsema_real_eip !36
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !36
  %142 = inttoptr i64 %140 to i8*, !mcsema_real_eip !36
  %143 = load i8, i8* %142, !mcsema_real_eip !36
  %144 = zext i8 %143 to i32, !mcsema_real_eip !36
  %145 = zext i32 %144 to i64, !mcsema_real_eip !36
  store i64 %145, i64* %XDI, !mcsema_real_eip !36
  %RSP_val.41 = load i64, i64* %XSP, !mcsema_real_eip !37
  %_new_gep_84 = getelementptr i8, i8* %_gep_fix_417, i64 -8
  %146 = sub i64 %RSP_val.41, 8, !mcsema_real_eip !37
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_85, !mcsema_real_eip !37
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_
  store i64 %146, i64* %XSP, !mcsema_real_eip !37
  %147 = call x86_64_sysvcc i64 @_to_byte(i64 %145)
  %_rsp_fix_418 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_419 = getelementptr i8, i8* %_rsp_fix_418, i64 8
  store i8* %_gep_fix_419, i8** %_RSP_ptr_
  store i64 %147, i64* %XAX, !mcsema_real_eip !37
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -24
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %EAX_val.44 = load i32, i32* %EAX.9, !mcsema_real_eip !38
  %148 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !38
  %149 = inttoptr i64 %148 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.44, i32* %149, !mcsema_real_eip !38
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -24
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %150 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !39
  %151 = inttoptr i64 %150 to i32*, !mcsema_real_eip !39
  %152 = load i32, i32* %151, !mcsema_real_eip !39
  %153 = zext i32 %152 to i64, !mcsema_real_eip !39
  store i64 %153, i64* %XAX, !mcsema_real_eip !39
  %EAX_val.47 = load i32, i32* %EAX.9, !mcsema_real_eip !40
  %154 = and i32 %EAX_val.47, -2147483648, !mcsema_real_eip !40
  %155 = icmp ne i32 %154, 0, !mcsema_real_eip !40
  %156 = load i1, i1* %CF, !mcsema_real_eip !40
  %157 = shl i32 %EAX_val.47, 1, !mcsema_real_eip !40
  %158 = load i1, i1* %OF, !mcsema_real_eip !40
  %159 = and i32 %157, -2147483648, !mcsema_real_eip !40
  %160 = icmp ne i32 %159, 0, !mcsema_real_eip !40
  %161 = xor i1 %160, %155, !mcsema_real_eip !40
  store i1 %161, i1* %OF, !mcsema_real_eip !40
  store i1 %155, i1* %CF, !mcsema_real_eip !40
  %162 = load i1, i1* %ZF, !mcsema_real_eip !40
  %163 = icmp eq i32 %157, 0, !mcsema_real_eip !40
  store i1 %163, i1* %ZF, !mcsema_real_eip !40
  %164 = load i1, i1* %SF, !mcsema_real_eip !40
  %165 = icmp slt i32 %157, 0, !mcsema_real_eip !40
  store i1 %165, i1* %SF, !mcsema_real_eip !40
  %166 = load i1, i1* %PF, !mcsema_real_eip !40
  %167 = trunc i32 %157 to i8, !mcsema_real_eip !40
  %168 = call i8 @llvm.ctpop.i8(i8 %167), !mcsema_real_eip !40
  %169 = trunc i8 %168 to i1, !mcsema_real_eip !40
  %170 = xor i1 %169, true, !mcsema_real_eip !40
  store i1 %170, i1* %PF, !mcsema_real_eip !40
  %171 = zext i32 %157 to i64, !mcsema_real_eip !40
  store i64 %171, i64* %XAX, !mcsema_real_eip !40
  %EAX_val.49 = load i32, i32* %EAX.9, !mcsema_real_eip !41
  %172 = sub i32 %EAX_val.49, 26, !mcsema_real_eip !41
  %173 = xor i32 %172, %EAX_val.49, !mcsema_real_eip !41
  %174 = xor i32 %173, 26, !mcsema_real_eip !41
  %175 = and i32 %174, 16, !mcsema_real_eip !41
  %176 = icmp ne i32 %175, 0, !mcsema_real_eip !41
  store i1 %176, i1* %AF, !mcsema_real_eip !41
  %177 = trunc i32 %172 to i8, !mcsema_real_eip !41
  %178 = call i8 @llvm.ctpop.i8(i8 %177), !mcsema_real_eip !41
  %179 = trunc i8 %178 to i1, !mcsema_real_eip !41
  %180 = xor i1 %179, true, !mcsema_real_eip !41
  store i1 %180, i1* %PF, !mcsema_real_eip !41
  %181 = icmp eq i32 %172, 0, !mcsema_real_eip !41
  store i1 %181, i1* %ZF, !mcsema_real_eip !41
  %182 = lshr i32 %172, 31, !mcsema_real_eip !41
  %183 = trunc i32 %182 to i1, !mcsema_real_eip !41
  store i1 %183, i1* %SF, !mcsema_real_eip !41
  %184 = icmp ult i32 %EAX_val.49, 26, !mcsema_real_eip !41
  store i1 %184, i1* %CF, !mcsema_real_eip !41
  %185 = xor i32 %EAX_val.49, 26, !mcsema_real_eip !41
  %186 = and i32 %185, %173, !mcsema_real_eip !41
  %187 = lshr i32 %186, 31, !mcsema_real_eip !41
  %188 = trunc i32 %187 to i1, !mcsema_real_eip !41
  store i1 %188, i1* %OF, !mcsema_real_eip !41
  br i1 %181, label %block_0xa4, label %block_0x98, !mcsema_real_eip !42

block_0x98:                                       ; preds = %block_0x79
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -4
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %189 = ptrtoint i64* %_allin_new_bt_94 to i64, !mcsema_real_eip !43
  %190 = inttoptr i64 %189 to i32*, !mcsema_real_eip !43
  store i32 -4, i32* %190, !mcsema_real_eip !43
  br label %block_0x417, !mcsema_real_eip !44

block_0xa4:                                       ; preds = %block_0x79
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -16
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %191 = load i64, i64* %_allin_new_bt_97, !mcsema_real_eip !45
  store i64 %191, i64* %XAX, !mcsema_real_eip !45
  %192 = add i64 %191, 3, !mcsema_real_eip !46
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !46
  %194 = inttoptr i64 %192 to i8*, !mcsema_real_eip !46
  %195 = load i8, i8* %194, !mcsema_real_eip !46
  %196 = zext i8 %195 to i32, !mcsema_real_eip !46
  %197 = zext i32 %196 to i64, !mcsema_real_eip !46
  store i64 %197, i64* %XDI, !mcsema_real_eip !46
  %_load_rsp_ptr_98 = load i8*, i8** %_RSP_ptr_
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !47
  %_new_gep_99 = getelementptr i8, i8* %_load_rsp_ptr_98, i64 -8
  %198 = sub i64 %RSP_val.54, 8, !mcsema_real_eip !47
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_100, !mcsema_real_eip !47
  store volatile i8* %_new_gep_99, i8** %_RSP_ptr_
  store i64 %198, i64* %XSP, !mcsema_real_eip !47
  %199 = call x86_64_sysvcc i64 @_to_byte(i64 %197)
  %_rsp_fix_420 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_421 = getelementptr i8, i8* %_rsp_fix_420, i64 8
  store i8* %_gep_fix_421, i8** %_RSP_ptr_
  store i64 %199, i64* %XAX, !mcsema_real_eip !47
  store i64 2, i64* %XDI, !mcsema_real_eip !48
  %_load_rbp_ptr_101 = load i8*, i8** %_RBP_ptr_
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -28
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %EAX_val.57 = load i32, i32* %EAX.9, !mcsema_real_eip !49
  %200 = ptrtoint i64* %_allin_new_bt_103 to i64, !mcsema_real_eip !49
  %201 = inttoptr i64 %200 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.57, i32* %201, !mcsema_real_eip !49
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -28
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %202 = ptrtoint i64* %_allin_new_bt_106 to i64, !mcsema_real_eip !50
  %203 = inttoptr i64 %202 to i32*, !mcsema_real_eip !50
  %204 = load i32, i32* %203, !mcsema_real_eip !50
  %205 = zext i32 %204 to i64, !mcsema_real_eip !50
  store i64 %205, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.60 = load i32, i32* %EAX.9, !mcsema_real_eip !51
  %206 = add i32 1, %EAX_val.60, !mcsema_real_eip !51
  %207 = xor i32 %206, %EAX_val.60, !mcsema_real_eip !51
  %208 = xor i32 %207, 1, !mcsema_real_eip !51
  %209 = and i32 %208, 16, !mcsema_real_eip !51
  %210 = icmp ne i32 %209, 0, !mcsema_real_eip !51
  store i1 %210, i1* %AF, !mcsema_real_eip !51
  %211 = lshr i32 %206, 31, !mcsema_real_eip !51
  %212 = trunc i32 %211 to i1, !mcsema_real_eip !51
  store i1 %212, i1* %SF, !mcsema_real_eip !51
  %213 = icmp eq i32 %206, 0, !mcsema_real_eip !51
  store i1 %213, i1* %ZF, !mcsema_real_eip !51
  %214 = xor i32 %EAX_val.60, 1, !mcsema_real_eip !51
  %215 = xor i32 %214, -1, !mcsema_real_eip !51
  %216 = and i32 %215, %207, !mcsema_real_eip !51
  %217 = lshr i32 %216, 31, !mcsema_real_eip !51
  %218 = and i32 %217, 1, !mcsema_real_eip !51
  %219 = trunc i32 %218 to i1, !mcsema_real_eip !51
  store i1 %219, i1* %OF, !mcsema_real_eip !51
  %220 = trunc i32 %206 to i8, !mcsema_real_eip !51
  %221 = call i8 @llvm.ctpop.i8(i8 %220), !mcsema_real_eip !51
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !51
  %223 = xor i1 %222, true, !mcsema_real_eip !51
  store i1 %223, i1* %PF, !mcsema_real_eip !51
  %224 = icmp ult i32 %206, %EAX_val.60, !mcsema_real_eip !51
  store i1 %224, i1* %CF, !mcsema_real_eip !51
  %225 = zext i32 %206 to i64, !mcsema_real_eip !51
  store i64 %225, i64* %XAX, !mcsema_real_eip !51
  %EAX_val.62 = load i32, i32* %EAX.9, !mcsema_real_eip !52
  %226 = and i32 %EAX_val.62, -2147483648, !mcsema_real_eip !52
  %227 = icmp eq i32 %226, 0, !mcsema_real_eip !52
  %228 = select i1 %227, i32 0, i32 -1, !mcsema_real_eip !52
  %229 = zext i32 %228 to i64, !mcsema_real_eip !52
  store i64 %229, i64* %XDX, !mcsema_real_eip !52
  %EDI.63 = bitcast i64* %XDI to i32*, !mcsema_real_eip !53
  %EDI_val.64 = load i32, i32* %EDI.63, !mcsema_real_eip !53
  %EDX.67 = bitcast i64* %XDX to i32*, !mcsema_real_eip !53
  %EDX_val.68 = load i32, i32* %EDX.67, !mcsema_real_eip !53
  %230 = zext i32 %EDX_val.68 to i64, !mcsema_real_eip !53
  %231 = shl i64 %230, 32, !mcsema_real_eip !53
  %232 = sext i32 %EAX_val.62 to i64, !mcsema_real_eip !53
  %233 = or i64 %231, %232, !mcsema_real_eip !53
  %234 = sext i32 %EDI_val.64 to i64, !mcsema_real_eip !53
  %235 = sdiv i64 %233, %234, !mcsema_real_eip !53
  %236 = srem i64 %233, %234, !mcsema_real_eip !53
  %237 = trunc i64 %236 to i32, !mcsema_real_eip !53
  %238 = trunc i64 %235 to i32, !mcsema_real_eip !53
  %239 = zext i32 %237 to i64, !mcsema_real_eip !53
  store i64 %239, i64* %XDX, !mcsema_real_eip !53
  %240 = zext i32 %238 to i64, !mcsema_real_eip !53
  store i64 %240, i64* %XAX, !mcsema_real_eip !53
  %EAX_val.70 = load i32, i32* %EAX.9, !mcsema_real_eip !54
  %241 = sub i32 %EAX_val.70, 7, !mcsema_real_eip !54
  %242 = xor i32 %241, %EAX_val.70, !mcsema_real_eip !54
  %243 = xor i32 %242, 7, !mcsema_real_eip !54
  %244 = and i32 %243, 16, !mcsema_real_eip !54
  %245 = icmp ne i32 %244, 0, !mcsema_real_eip !54
  store i1 %245, i1* %AF, !mcsema_real_eip !54
  %246 = trunc i32 %241 to i8, !mcsema_real_eip !54
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !54
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !54
  %249 = xor i1 %248, true, !mcsema_real_eip !54
  store i1 %249, i1* %PF, !mcsema_real_eip !54
  %250 = icmp eq i32 %241, 0, !mcsema_real_eip !54
  store i1 %250, i1* %ZF, !mcsema_real_eip !54
  %251 = lshr i32 %241, 31, !mcsema_real_eip !54
  %252 = trunc i32 %251 to i1, !mcsema_real_eip !54
  store i1 %252, i1* %SF, !mcsema_real_eip !54
  %253 = icmp ult i32 %EAX_val.70, 7, !mcsema_real_eip !54
  store i1 %253, i1* %CF, !mcsema_real_eip !54
  %254 = xor i32 %EAX_val.70, 7, !mcsema_real_eip !54
  %255 = and i32 %254, %242, !mcsema_real_eip !54
  %256 = lshr i32 %255, 31, !mcsema_real_eip !54
  %257 = trunc i32 %256 to i1, !mcsema_real_eip !54
  store i1 %257, i1* %OF, !mcsema_real_eip !54
  br i1 %250, label %block_0xd7, label %block_0xcb, !mcsema_real_eip !55

block_0xcb:                                       ; preds = %block_0xa4
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -4
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %258 = ptrtoint i64* %_allin_new_bt_109 to i64, !mcsema_real_eip !56
  %259 = inttoptr i64 %258 to i32*, !mcsema_real_eip !56
  store i32 -5, i32* %259, !mcsema_real_eip !56
  br label %block_0x417, !mcsema_real_eip !57

block_0xd7:                                       ; preds = %block_0xa4
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -16
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %260 = load i64, i64* %_allin_new_bt_112, !mcsema_real_eip !58
  store i64 %260, i64* %XAX, !mcsema_real_eip !58
  %261 = add i64 %260, 4, !mcsema_real_eip !59
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !59
  %263 = inttoptr i64 %261 to i8*, !mcsema_real_eip !59
  %264 = load i8, i8* %263, !mcsema_real_eip !59
  %265 = sext i8 %264 to i32, !mcsema_real_eip !59
  %266 = zext i32 %265 to i64, !mcsema_real_eip !59
  store i64 %266, i64* %XCX, !mcsema_real_eip !59
  %ECX_val.75 = load i32, i32* %ECX.12, !mcsema_real_eip !60
  %267 = and i32 %ECX_val.75, 15, !mcsema_real_eip !60
  store i1 false, i1* %SF, !mcsema_real_eip !60
  %268 = icmp eq i32 %267, 0, !mcsema_real_eip !60
  store i1 %268, i1* %ZF, !mcsema_real_eip !60
  %269 = trunc i32 %267 to i8, !mcsema_real_eip !60
  %270 = call i8 @llvm.ctpop.i8(i8 %269), !mcsema_real_eip !60
  %271 = trunc i8 %270 to i1, !mcsema_real_eip !60
  %272 = xor i1 %271, true, !mcsema_real_eip !60
  store i1 %272, i1* %PF, !mcsema_real_eip !60
  store i1 false, i1* %OF, !mcsema_real_eip !60
  store i1 false, i1* %CF, !mcsema_real_eip !60
  store i1 undef, i1* %AF, !mcsema_real_eip !60
  %273 = zext i32 %267 to i64, !mcsema_real_eip !60
  store i64 %273, i64* %XCX, !mcsema_real_eip !60
  %ECX_val.77 = load i32, i32* %ECX.12, !mcsema_real_eip !61
  %274 = sub i32 %ECX_val.77, 1, !mcsema_real_eip !61
  %275 = xor i32 %274, %ECX_val.77, !mcsema_real_eip !61
  %276 = xor i32 %275, 1, !mcsema_real_eip !61
  %277 = and i32 %276, 16, !mcsema_real_eip !61
  %278 = icmp ne i32 %277, 0, !mcsema_real_eip !61
  store i1 %278, i1* %AF, !mcsema_real_eip !61
  %279 = trunc i32 %274 to i8, !mcsema_real_eip !61
  %280 = call i8 @llvm.ctpop.i8(i8 %279), !mcsema_real_eip !61
  %281 = trunc i8 %280 to i1, !mcsema_real_eip !61
  %282 = xor i1 %281, true, !mcsema_real_eip !61
  store i1 %282, i1* %PF, !mcsema_real_eip !61
  %283 = icmp eq i32 %274, 0, !mcsema_real_eip !61
  store i1 %283, i1* %ZF, !mcsema_real_eip !61
  %284 = lshr i32 %274, 31, !mcsema_real_eip !61
  %285 = trunc i32 %284 to i1, !mcsema_real_eip !61
  store i1 %285, i1* %SF, !mcsema_real_eip !61
  %286 = icmp ult i32 %ECX_val.77, 1, !mcsema_real_eip !61
  store i1 %286, i1* %CF, !mcsema_real_eip !61
  %287 = xor i32 %ECX_val.77, 1, !mcsema_real_eip !61
  %288 = and i32 %287, %275, !mcsema_real_eip !61
  %289 = lshr i32 %288, 31, !mcsema_real_eip !61
  %290 = trunc i32 %289 to i1, !mcsema_real_eip !61
  store i1 %290, i1* %OF, !mcsema_real_eip !61
  %291 = icmp eq i1 %283, false, !mcsema_real_eip !62
  br i1 %291, label %block_0x10e, label %block_0xeb, !mcsema_real_eip !62

block_0xeb:                                       ; preds = %block_0xd7
  %292 = load i64, i64* %_allin_new_bt_112, !mcsema_real_eip !63
  store i64 %292, i64* %XAX, !mcsema_real_eip !63
  %293 = add i64 %292, 4, !mcsema_real_eip !64
  %294 = inttoptr i64 %293 to i64*, !mcsema_real_eip !64
  %295 = inttoptr i64 %293 to i8*, !mcsema_real_eip !64
  %296 = load i8, i8* %295, !mcsema_real_eip !64
  %297 = sext i8 %296 to i32, !mcsema_real_eip !64
  %298 = zext i32 %297 to i64, !mcsema_real_eip !64
  store i64 %298, i64* %XCX, !mcsema_real_eip !64
  %ECX_val.83 = load i32, i32* %ECX.12, !mcsema_real_eip !65
  %299 = and i32 %ECX_val.83, 240, !mcsema_real_eip !65
  store i1 false, i1* %SF, !mcsema_real_eip !65
  %300 = icmp eq i32 %299, 0, !mcsema_real_eip !65
  store i1 %300, i1* %ZF, !mcsema_real_eip !65
  %301 = trunc i32 %299 to i8, !mcsema_real_eip !65
  %302 = call i8 @llvm.ctpop.i8(i8 %301), !mcsema_real_eip !65
  %303 = trunc i8 %302 to i1, !mcsema_real_eip !65
  %304 = xor i1 %303, true, !mcsema_real_eip !65
  store i1 %304, i1* %PF, !mcsema_real_eip !65
  store i1 false, i1* %OF, !mcsema_real_eip !65
  store i1 false, i1* %CF, !mcsema_real_eip !65
  store i1 undef, i1* %AF, !mcsema_real_eip !65
  %305 = zext i32 %299 to i64, !mcsema_real_eip !65
  store i64 %305, i64* %XCX, !mcsema_real_eip !65
  %ECX_val.85 = load i32, i32* %ECX.12, !mcsema_real_eip !66
  %306 = sub i32 %ECX_val.85, 48, !mcsema_real_eip !66
  %307 = xor i32 %306, %ECX_val.85, !mcsema_real_eip !66
  %308 = xor i32 %307, 48, !mcsema_real_eip !66
  %309 = and i32 %308, 16, !mcsema_real_eip !66
  %310 = icmp ne i32 %309, 0, !mcsema_real_eip !66
  store i1 %310, i1* %AF, !mcsema_real_eip !66
  %311 = trunc i32 %306 to i8, !mcsema_real_eip !66
  %312 = call i8 @llvm.ctpop.i8(i8 %311), !mcsema_real_eip !66
  %313 = trunc i8 %312 to i1, !mcsema_real_eip !66
  %314 = xor i1 %313, true, !mcsema_real_eip !66
  store i1 %314, i1* %PF, !mcsema_real_eip !66
  %315 = icmp eq i32 %306, 0, !mcsema_real_eip !66
  store i1 %315, i1* %ZF, !mcsema_real_eip !66
  %316 = lshr i32 %306, 31, !mcsema_real_eip !66
  %317 = trunc i32 %316 to i1, !mcsema_real_eip !66
  store i1 %317, i1* %SF, !mcsema_real_eip !66
  %318 = icmp ult i32 %ECX_val.85, 48, !mcsema_real_eip !66
  store i1 %318, i1* %CF, !mcsema_real_eip !66
  %319 = xor i32 %ECX_val.85, 48, !mcsema_real_eip !66
  %320 = and i32 %319, %307, !mcsema_real_eip !66
  %321 = lshr i32 %320, 31, !mcsema_real_eip !66
  %322 = trunc i32 %321 to i1, !mcsema_real_eip !66
  store i1 %322, i1* %OF, !mcsema_real_eip !66
  %323 = icmp eq i1 %315, false, !mcsema_real_eip !67
  br i1 %323, label %block_0x10e, label %block_0x102, !mcsema_real_eip !67

block_0x10e:                                      ; preds = %block_0xeb, %block_0xd7
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -4
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %324 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !68
  %325 = inttoptr i64 %324 to i32*, !mcsema_real_eip !68
  store i32 -6, i32* %325, !mcsema_real_eip !68
  br label %block_0x417, !mcsema_real_eip !69

block_0x102:                                      ; preds = %block_0xeb
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -20
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %326 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !70
  %327 = inttoptr i64 %326 to i32*, !mcsema_real_eip !70
  store i32 -4, i32* %327, !mcsema_real_eip !70
  br label %block_0x11a, !mcsema_real_eip !71

block_0x11a:                                      ; preds = %block_0x102
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -16
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %328 = load i64, i64* %_allin_new_bt_124, !mcsema_real_eip !72
  store i64 %328, i64* %XAX, !mcsema_real_eip !72
  %329 = add i64 %328, 5, !mcsema_real_eip !73
  %330 = inttoptr i64 %329 to i64*, !mcsema_real_eip !73
  %331 = inttoptr i64 %329 to i8*, !mcsema_real_eip !73
  %332 = load i8, i8* %331, !mcsema_real_eip !73
  %333 = sext i8 %332 to i32, !mcsema_real_eip !73
  %334 = zext i32 %333 to i64, !mcsema_real_eip !73
  store i64 %334, i64* %XCX, !mcsema_real_eip !73
  %ECX_val.90 = load i32, i32* %ECX.12, !mcsema_real_eip !74
  %335 = and i32 %ECX_val.90, 15, !mcsema_real_eip !74
  store i1 false, i1* %SF, !mcsema_real_eip !74
  %336 = icmp eq i32 %335, 0, !mcsema_real_eip !74
  store i1 %336, i1* %ZF, !mcsema_real_eip !74
  %337 = trunc i32 %335 to i8, !mcsema_real_eip !74
  %338 = call i8 @llvm.ctpop.i8(i8 %337), !mcsema_real_eip !74
  %339 = trunc i8 %338 to i1, !mcsema_real_eip !74
  %340 = xor i1 %339, true, !mcsema_real_eip !74
  store i1 %340, i1* %PF, !mcsema_real_eip !74
  store i1 false, i1* %OF, !mcsema_real_eip !74
  store i1 false, i1* %CF, !mcsema_real_eip !74
  store i1 undef, i1* %AF, !mcsema_real_eip !74
  %341 = zext i32 %335 to i64, !mcsema_real_eip !74
  store i64 %341, i64* %XCX, !mcsema_real_eip !74
  %CL.91 = bitcast i64* %XCX to i8*, !mcsema_real_eip !75
  %CL_val.92 = load i8, i8* %CL.91, !mcsema_real_eip !75
  %DL.93 = bitcast i64* %XDX to i8*, !mcsema_real_eip !75
  store i8 %CL_val.92, i8* %DL.93, !mcsema_real_eip !75
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -33
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %342 = ptrtoint i64* %_allin_new_bt_127 to i64, !mcsema_real_eip !76
  %343 = inttoptr i64 %342 to i8*, !mcsema_real_eip !76
  store i8 %CL_val.92, i8* %343, !mcsema_real_eip !76
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -16
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %344 = load i64, i64* %_allin_new_bt_130, !mcsema_real_eip !77
  store i64 %344, i64* %XAX, !mcsema_real_eip !77
  %345 = add i64 %344, 5, !mcsema_real_eip !78
  %346 = inttoptr i64 %345 to i64*, !mcsema_real_eip !78
  %347 = inttoptr i64 %345 to i8*, !mcsema_real_eip !78
  %348 = load i8, i8* %347, !mcsema_real_eip !78
  %349 = sext i8 %348 to i32, !mcsema_real_eip !78
  %350 = zext i32 %349 to i64, !mcsema_real_eip !78
  store i64 %350, i64* %XCX, !mcsema_real_eip !78
  %ECX_val.100 = load i32, i32* %ECX.12, !mcsema_real_eip !79
  %351 = and i32 %ECX_val.100, 240, !mcsema_real_eip !79
  store i1 false, i1* %SF, !mcsema_real_eip !79
  %352 = icmp eq i32 %351, 0, !mcsema_real_eip !79
  store i1 %352, i1* %ZF, !mcsema_real_eip !79
  %353 = trunc i32 %351 to i8, !mcsema_real_eip !79
  %354 = call i8 @llvm.ctpop.i8(i8 %353), !mcsema_real_eip !79
  %355 = trunc i8 %354 to i1, !mcsema_real_eip !79
  %356 = xor i1 %355, true, !mcsema_real_eip !79
  store i1 %356, i1* %PF, !mcsema_real_eip !79
  store i1 false, i1* %OF, !mcsema_real_eip !79
  store i1 false, i1* %CF, !mcsema_real_eip !79
  store i1 undef, i1* %AF, !mcsema_real_eip !79
  %357 = zext i32 %351 to i64, !mcsema_real_eip !79
  store i64 %357, i64* %XCX, !mcsema_real_eip !79
  %CL_val.102 = load i8, i8* %CL.91, !mcsema_real_eip !80
  store i8 %CL_val.102, i8* %DL.93, !mcsema_real_eip !80
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -34
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %358 = ptrtoint i64* %_allin_new_bt_133 to i64, !mcsema_real_eip !81
  %359 = inttoptr i64 %358 to i8*, !mcsema_real_eip !81
  store i8 %CL_val.102, i8* %359, !mcsema_real_eip !81
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -33
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %360 = ptrtoint i64* %_allin_new_bt_136 to i64, !mcsema_real_eip !82
  %361 = inttoptr i64 %360 to i8*, !mcsema_real_eip !82
  %362 = load i8, i8* %361, !mcsema_real_eip !82
  %363 = zext i8 %362 to i32, !mcsema_real_eip !82
  %364 = zext i32 %363 to i64, !mcsema_real_eip !82
  store i64 %364, i64* %XCX, !mcsema_real_eip !82
  %ECX_val.109 = load i32, i32* %ECX.12, !mcsema_real_eip !83
  %365 = sub i32 %ECX_val.109, 3, !mcsema_real_eip !83
  %366 = xor i32 %365, %ECX_val.109, !mcsema_real_eip !83
  %367 = xor i32 %366, 3, !mcsema_real_eip !83
  %368 = and i32 %367, 16, !mcsema_real_eip !83
  %369 = icmp ne i32 %368, 0, !mcsema_real_eip !83
  store i1 %369, i1* %AF, !mcsema_real_eip !83
  %370 = trunc i32 %365 to i8, !mcsema_real_eip !83
  %371 = call i8 @llvm.ctpop.i8(i8 %370), !mcsema_real_eip !83
  %372 = trunc i8 %371 to i1, !mcsema_real_eip !83
  %373 = xor i1 %372, true, !mcsema_real_eip !83
  store i1 %373, i1* %PF, !mcsema_real_eip !83
  %374 = icmp eq i32 %365, 0, !mcsema_real_eip !83
  store i1 %374, i1* %ZF, !mcsema_real_eip !83
  %375 = lshr i32 %365, 31, !mcsema_real_eip !83
  %376 = trunc i32 %375 to i1, !mcsema_real_eip !83
  store i1 %376, i1* %SF, !mcsema_real_eip !83
  %377 = icmp ult i32 %ECX_val.109, 3, !mcsema_real_eip !83
  store i1 %377, i1* %CF, !mcsema_real_eip !83
  %378 = xor i32 %ECX_val.109, 3, !mcsema_real_eip !83
  %379 = and i32 %378, %366, !mcsema_real_eip !83
  %380 = lshr i32 %379, 31, !mcsema_real_eip !83
  %381 = trunc i32 %380 to i1, !mcsema_real_eip !83
  store i1 %381, i1* %OF, !mcsema_real_eip !83
  %382 = icmp eq i1 %374, false, !mcsema_real_eip !84
  br i1 %382, label %block_0x165, label %block_0x14a, !mcsema_real_eip !84

block_0x14a:                                      ; preds = %block_0x11a
  %_new_gep_138 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -34
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %383 = ptrtoint i64* %_allin_new_bt_139 to i64, !mcsema_real_eip !85
  %384 = inttoptr i64 %383 to i8*, !mcsema_real_eip !85
  %385 = load i8, i8* %384, !mcsema_real_eip !85
  %386 = zext i8 %385 to i32, !mcsema_real_eip !85
  %387 = zext i32 %386 to i64, !mcsema_real_eip !85
  store i64 %387, i64* %XAX, !mcsema_real_eip !85
  %EAX_val.118 = load i32, i32* %EAX.9, !mcsema_real_eip !86
  %388 = sub i32 %EAX_val.118, 96, !mcsema_real_eip !86
  %389 = xor i32 %388, %EAX_val.118, !mcsema_real_eip !86
  %390 = xor i32 %389, 96, !mcsema_real_eip !86
  %391 = and i32 %390, 16, !mcsema_real_eip !86
  %392 = icmp ne i32 %391, 0, !mcsema_real_eip !86
  store i1 %392, i1* %AF, !mcsema_real_eip !86
  %393 = trunc i32 %388 to i8, !mcsema_real_eip !86
  %394 = call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !86
  %395 = trunc i8 %394 to i1, !mcsema_real_eip !86
  %396 = xor i1 %395, true, !mcsema_real_eip !86
  store i1 %396, i1* %PF, !mcsema_real_eip !86
  %397 = icmp eq i32 %388, 0, !mcsema_real_eip !86
  store i1 %397, i1* %ZF, !mcsema_real_eip !86
  %398 = lshr i32 %388, 31, !mcsema_real_eip !86
  %399 = trunc i32 %398 to i1, !mcsema_real_eip !86
  store i1 %399, i1* %SF, !mcsema_real_eip !86
  %400 = icmp ult i32 %EAX_val.118, 96, !mcsema_real_eip !86
  store i1 %400, i1* %CF, !mcsema_real_eip !86
  %401 = xor i32 %EAX_val.118, 96, !mcsema_real_eip !86
  %402 = and i32 %401, %389, !mcsema_real_eip !86
  %403 = lshr i32 %402, 31, !mcsema_real_eip !86
  %404 = trunc i32 %403 to i1, !mcsema_real_eip !86
  store i1 %404, i1* %OF, !mcsema_real_eip !86
  %405 = icmp eq i1 %397, false, !mcsema_real_eip !87
  br i1 %405, label %block_0x165, label %block_0x157, !mcsema_real_eip !87

block_0x165:                                      ; preds = %block_0x14a, %block_0x11a
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -20
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %406 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !88
  %407 = inttoptr i64 %406 to i32*, !mcsema_real_eip !88
  %408 = load i32, i32* %407, !mcsema_real_eip !88
  %409 = zext i32 %408 to i64, !mcsema_real_eip !88
  store i64 %409, i64* %XAX, !mcsema_real_eip !88
  %EAX_val.112 = load i32, i32* %EAX.9, !mcsema_real_eip !89
  %410 = add i32 5, %EAX_val.112, !mcsema_real_eip !89
  %411 = xor i32 %410, %EAX_val.112, !mcsema_real_eip !89
  %412 = xor i32 %411, 5, !mcsema_real_eip !89
  %413 = and i32 %412, 16, !mcsema_real_eip !89
  %414 = icmp ne i32 %413, 0, !mcsema_real_eip !89
  store i1 %414, i1* %AF, !mcsema_real_eip !89
  %415 = lshr i32 %410, 31, !mcsema_real_eip !89
  %416 = trunc i32 %415 to i1, !mcsema_real_eip !89
  store i1 %416, i1* %SF, !mcsema_real_eip !89
  %417 = icmp eq i32 %410, 0, !mcsema_real_eip !89
  store i1 %417, i1* %ZF, !mcsema_real_eip !89
  %418 = xor i32 %EAX_val.112, 5, !mcsema_real_eip !89
  %419 = xor i32 %418, -1, !mcsema_real_eip !89
  %420 = and i32 %419, %411, !mcsema_real_eip !89
  %421 = lshr i32 %420, 31, !mcsema_real_eip !89
  %422 = and i32 %421, 1, !mcsema_real_eip !89
  %423 = trunc i32 %422 to i1, !mcsema_real_eip !89
  store i1 %423, i1* %OF, !mcsema_real_eip !89
  %424 = trunc i32 %410 to i8, !mcsema_real_eip !89
  %425 = call i8 @llvm.ctpop.i8(i8 %424), !mcsema_real_eip !89
  %426 = trunc i8 %425 to i1, !mcsema_real_eip !89
  %427 = xor i1 %426, true, !mcsema_real_eip !89
  store i1 %427, i1* %PF, !mcsema_real_eip !89
  %428 = icmp ult i32 %410, %EAX_val.112, !mcsema_real_eip !89
  store i1 %428, i1* %CF, !mcsema_real_eip !89
  %429 = zext i32 %410 to i64, !mcsema_real_eip !89
  store i64 %429, i64* %XAX, !mcsema_real_eip !89
  %EAX_val.115 = load i32, i32* %EAX.9, !mcsema_real_eip !90
  store i32 %EAX_val.115, i32* %407, !mcsema_real_eip !90
  br label %block_0x16e, !mcsema_real_eip !85

block_0x16e:                                      ; preds = %block_0x157, %block_0x165
  %_load_rbp_ptr_146 = load i8*, i8** %_RBP_ptr_
  %_new_gep_147 = getelementptr i8, i8* %_load_rbp_ptr_146, i64 -16
  %_allin_new_bt_148 = bitcast i8* %_new_gep_147 to i64*
  %430 = load i64, i64* %_allin_new_bt_148, !mcsema_real_eip !91
  store i64 %430, i64* %XAX, !mcsema_real_eip !91
  %431 = add i64 %430, 6, !mcsema_real_eip !92
  %432 = inttoptr i64 %431 to i64*, !mcsema_real_eip !92
  %433 = inttoptr i64 %431 to i8*, !mcsema_real_eip !92
  %434 = load i8, i8* %433, !mcsema_real_eip !92
  %435 = zext i8 %434 to i32, !mcsema_real_eip !92
  %436 = zext i32 %435 to i64, !mcsema_real_eip !92
  store i64 %436, i64* %XDI, !mcsema_real_eip !92
  %_load_rsp_ptr_149 = load i8*, i8** %_RSP_ptr_
  %RSP_val.122 = load i64, i64* %XSP, !mcsema_real_eip !93
  %_new_gep_150 = getelementptr i8, i8* %_load_rsp_ptr_149, i64 -8
  %437 = sub i64 %RSP_val.122, 8, !mcsema_real_eip !93
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_151, !mcsema_real_eip !93
  store volatile i8* %_new_gep_150, i8** %_RSP_ptr_
  store i64 %437, i64* %XSP, !mcsema_real_eip !93
  %438 = call x86_64_sysvcc i64 @_to_byte(i64 %436)
  %_rsp_fix_422 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_423 = getelementptr i8, i8* %_rsp_fix_422, i64 8
  store i8* %_gep_fix_423, i8** %_RSP_ptr_
  store i64 %438, i64* %XAX, !mcsema_real_eip !93
  %AL.123 = bitcast i64* %XAX to i8*, !mcsema_real_eip !94
  %AL_val.124 = load i8, i8* %AL.123, !mcsema_real_eip !94
  store i8 %AL_val.124, i8* %CL.91, !mcsema_real_eip !94
  %_load_rbp_ptr_152 = load i8*, i8** %_RBP_ptr_
  %_new_gep_153 = getelementptr i8, i8* %_load_rbp_ptr_152, i64 -35
  %_allin_new_bt_154 = bitcast i8* %_new_gep_153 to i64*
  %439 = ptrtoint i64* %_allin_new_bt_154 to i64, !mcsema_real_eip !95
  %440 = inttoptr i64 %439 to i8*, !mcsema_real_eip !95
  store i8 %AL_val.124, i8* %440, !mcsema_real_eip !95
  %_load_rbp_ptr_155 = load i8*, i8** %_RBP_ptr_
  %_new_gep_156 = getelementptr i8, i8* %_load_rbp_ptr_155, i64 -16
  %_allin_new_bt_157 = bitcast i8* %_new_gep_156 to i64*
  %441 = load i64, i64* %_allin_new_bt_157, !mcsema_real_eip !96
  store i64 %441, i64* %XDX, !mcsema_real_eip !96
  %442 = add i64 %441, 7, !mcsema_real_eip !97
  %443 = inttoptr i64 %442 to i64*, !mcsema_real_eip !97
  %444 = inttoptr i64 %442 to i8*, !mcsema_real_eip !97
  %445 = load i8, i8* %444, !mcsema_real_eip !97
  %446 = zext i8 %445 to i32, !mcsema_real_eip !97
  %447 = zext i32 %446 to i64, !mcsema_real_eip !97
  store i64 %447, i64* %XDI, !mcsema_real_eip !97
  %_load_rsp_ptr_158 = load i8*, i8** %_RSP_ptr_
  %RSP_val.132 = load i64, i64* %XSP, !mcsema_real_eip !98
  %_new_gep_159 = getelementptr i8, i8* %_load_rsp_ptr_158, i64 -8
  %448 = sub i64 %RSP_val.132, 8, !mcsema_real_eip !98
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_160, !mcsema_real_eip !98
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_
  store i64 %448, i64* %XSP, !mcsema_real_eip !98
  %449 = call x86_64_sysvcc i64 @_to_byte(i64 %447)
  %_rsp_fix_424 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_425 = getelementptr i8, i8* %_rsp_fix_424, i64 8
  store i8* %_gep_fix_425, i8** %_RSP_ptr_
  store i64 %449, i64* %XAX, !mcsema_real_eip !98
  %_load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_
  %_new_gep_162 = getelementptr i8, i8* %_load_rbp_ptr_161, i64 -35
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %450 = ptrtoint i64* %_allin_new_bt_163 to i64, !mcsema_real_eip !99
  %451 = inttoptr i64 %450 to i8*, !mcsema_real_eip !99
  %452 = load i8, i8* %451, !mcsema_real_eip !99
  %453 = zext i8 %452 to i32, !mcsema_real_eip !99
  %454 = zext i32 %453 to i64, !mcsema_real_eip !99
  store i64 %454, i64* %XDI, !mcsema_real_eip !99
  %EDI_val.135 = load i32, i32* %EDI.63, !mcsema_real_eip !100
  %EAX_val.137 = load i32, i32* %EAX.9, !mcsema_real_eip !100
  %455 = or i32 %EDI_val.135, %EAX_val.137, !mcsema_real_eip !100
  store i1 undef, i1* %AF, !mcsema_real_eip !100
  store i1 false, i1* %OF, !mcsema_real_eip !100
  store i1 false, i1* %CF, !mcsema_real_eip !100
  %456 = lshr i32 %455, 31, !mcsema_real_eip !100
  %457 = trunc i32 %456 to i1, !mcsema_real_eip !100
  store i1 %457, i1* %SF, !mcsema_real_eip !100
  %458 = icmp eq i32 %455, 0, !mcsema_real_eip !100
  store i1 %458, i1* %ZF, !mcsema_real_eip !100
  %459 = trunc i32 %455 to i8, !mcsema_real_eip !100
  %460 = call i8 @llvm.ctpop.i8(i8 %459), !mcsema_real_eip !100
  %461 = trunc i8 %460 to i1, !mcsema_real_eip !100
  %462 = xor i1 %461, true, !mcsema_real_eip !100
  store i1 %462, i1* %PF, !mcsema_real_eip !100
  %463 = zext i32 %455 to i64, !mcsema_real_eip !100
  store i64 %463, i64* %XDI, !mcsema_real_eip !100
  %DIL.138 = bitcast i64* %XDI to i8*, !mcsema_real_eip !101
  %DIL_val.139 = load i8, i8* %DIL.138, !mcsema_real_eip !101
  store i8 %DIL_val.139, i8* %CL.91, !mcsema_real_eip !101
  store i8 %DIL_val.139, i8* %451, !mcsema_real_eip !102
  %_load_rbp_ptr_167 = load i8*, i8** %_RBP_ptr_
  %_new_gep_168 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -35
  %_allin_new_bt_169 = bitcast i8* %_new_gep_168 to i64*
  %464 = ptrtoint i64* %_allin_new_bt_169 to i64, !mcsema_real_eip !103
  %465 = inttoptr i64 %464 to i8*, !mcsema_real_eip !103
  %466 = load i8, i8* %465, !mcsema_real_eip !103
  %467 = zext i8 %466 to i32, !mcsema_real_eip !103
  %468 = zext i32 %467 to i64, !mcsema_real_eip !103
  store i64 %468, i64* %XAX, !mcsema_real_eip !103
  %EAX_val.146 = load i32, i32* %EAX.9, !mcsema_real_eip !104
  %469 = xor i32 %EAX_val.146, -1, !mcsema_real_eip !104
  store i1 false, i1* %CF, !mcsema_real_eip !104
  store i1 false, i1* %OF, !mcsema_real_eip !104
  %470 = lshr i32 %469, 31, !mcsema_real_eip !104
  %471 = trunc i32 %470 to i1, !mcsema_real_eip !104
  store i1 %471, i1* %SF, !mcsema_real_eip !104
  %472 = icmp eq i32 %469, 0, !mcsema_real_eip !104
  store i1 %472, i1* %ZF, !mcsema_real_eip !104
  %473 = trunc i32 %469 to i8, !mcsema_real_eip !104
  %474 = call i8 @llvm.ctpop.i8(i8 %473), !mcsema_real_eip !104
  %475 = trunc i8 %474 to i1, !mcsema_real_eip !104
  %476 = xor i1 %475, true, !mcsema_real_eip !104
  store i1 %476, i1* %PF, !mcsema_real_eip !104
  store i1 undef, i1* %AF, !mcsema_real_eip !104
  %477 = zext i32 %469 to i64, !mcsema_real_eip !104
  store i64 %477, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.148 = load i32, i32* %EAX.9, !mcsema_real_eip !105
  %478 = sub i32 %EAX_val.148, 70, !mcsema_real_eip !105
  %479 = xor i32 %478, %EAX_val.148, !mcsema_real_eip !105
  %480 = xor i32 %479, 70, !mcsema_real_eip !105
  %481 = and i32 %480, 16, !mcsema_real_eip !105
  %482 = icmp ne i32 %481, 0, !mcsema_real_eip !105
  store i1 %482, i1* %AF, !mcsema_real_eip !105
  %483 = trunc i32 %478 to i8, !mcsema_real_eip !105
  %484 = call i8 @llvm.ctpop.i8(i8 %483), !mcsema_real_eip !105
  %485 = trunc i8 %484 to i1, !mcsema_real_eip !105
  %486 = xor i1 %485, true, !mcsema_real_eip !105
  store i1 %486, i1* %PF, !mcsema_real_eip !105
  %487 = icmp eq i32 %478, 0, !mcsema_real_eip !105
  store i1 %487, i1* %ZF, !mcsema_real_eip !105
  %488 = lshr i32 %478, 31, !mcsema_real_eip !105
  %489 = trunc i32 %488 to i1, !mcsema_real_eip !105
  store i1 %489, i1* %SF, !mcsema_real_eip !105
  %490 = icmp ult i32 %EAX_val.148, 70, !mcsema_real_eip !105
  store i1 %490, i1* %CF, !mcsema_real_eip !105
  %491 = xor i32 %EAX_val.148, 70, !mcsema_real_eip !105
  %492 = and i32 %491, %479, !mcsema_real_eip !105
  %493 = lshr i32 %492, 31, !mcsema_real_eip !105
  %494 = trunc i32 %493 to i1, !mcsema_real_eip !105
  store i1 %494, i1* %OF, !mcsema_real_eip !105
  %495 = icmp eq i1 %487, false, !mcsema_real_eip !106
  br i1 %495, label %block_0x1b7, label %block_0x1a9, !mcsema_real_eip !106

block_0x157:                                      ; preds = %block_0x14a
  %_new_gep_171 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -20
  %_allin_new_bt_172 = bitcast i8* %_new_gep_171 to i64*
  %496 = ptrtoint i64* %_allin_new_bt_172 to i64, !mcsema_real_eip !107
  %497 = inttoptr i64 %496 to i32*, !mcsema_real_eip !107
  %498 = load i32, i32* %497, !mcsema_real_eip !107
  %499 = zext i32 %498 to i64, !mcsema_real_eip !107
  store i64 %499, i64* %XAX, !mcsema_real_eip !107
  %EAX_val.151 = load i32, i32* %EAX.9, !mcsema_real_eip !108
  %500 = add i32 4, %EAX_val.151, !mcsema_real_eip !108
  %501 = xor i32 %500, %EAX_val.151, !mcsema_real_eip !108
  %502 = xor i32 %501, 4, !mcsema_real_eip !108
  %503 = and i32 %502, 16, !mcsema_real_eip !108
  %504 = icmp ne i32 %503, 0, !mcsema_real_eip !108
  store i1 %504, i1* %AF, !mcsema_real_eip !108
  %505 = lshr i32 %500, 31, !mcsema_real_eip !108
  %506 = trunc i32 %505 to i1, !mcsema_real_eip !108
  store i1 %506, i1* %SF, !mcsema_real_eip !108
  %507 = icmp eq i32 %500, 0, !mcsema_real_eip !108
  store i1 %507, i1* %ZF, !mcsema_real_eip !108
  %508 = xor i32 %EAX_val.151, 4, !mcsema_real_eip !108
  %509 = xor i32 %508, -1, !mcsema_real_eip !108
  %510 = and i32 %509, %501, !mcsema_real_eip !108
  %511 = lshr i32 %510, 31, !mcsema_real_eip !108
  %512 = and i32 %511, 1, !mcsema_real_eip !108
  %513 = trunc i32 %512 to i1, !mcsema_real_eip !108
  store i1 %513, i1* %OF, !mcsema_real_eip !108
  %514 = trunc i32 %500 to i8, !mcsema_real_eip !108
  %515 = call i8 @llvm.ctpop.i8(i8 %514), !mcsema_real_eip !108
  %516 = trunc i8 %515 to i1, !mcsema_real_eip !108
  %517 = xor i1 %516, true, !mcsema_real_eip !108
  store i1 %517, i1* %PF, !mcsema_real_eip !108
  %518 = icmp ult i32 %500, %EAX_val.151, !mcsema_real_eip !108
  store i1 %518, i1* %CF, !mcsema_real_eip !108
  %519 = zext i32 %500 to i64, !mcsema_real_eip !108
  store i64 %519, i64* %XAX, !mcsema_real_eip !108
  %EAX_val.154 = load i32, i32* %EAX.9, !mcsema_real_eip !109
  store i32 %EAX_val.154, i32* %497, !mcsema_real_eip !109
  br label %block_0x16e, !mcsema_real_eip !110

block_0x1a9:                                      ; preds = %block_0x16e
  %_new_gep_177 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -20
  %_allin_new_bt_178 = bitcast i8* %_new_gep_177 to i64*
  %520 = ptrtoint i64* %_allin_new_bt_178 to i64, !mcsema_real_eip !111
  %521 = inttoptr i64 %520 to i32*, !mcsema_real_eip !111
  %522 = load i32, i32* %521, !mcsema_real_eip !111
  %523 = zext i32 %522 to i64, !mcsema_real_eip !111
  store i64 %523, i64* %XAX, !mcsema_real_eip !111
  %EAX_val.166 = load i32, i32* %EAX.9, !mcsema_real_eip !112
  %524 = sub i32 %EAX_val.166, 1, !mcsema_real_eip !112
  %525 = xor i32 %524, %EAX_val.166, !mcsema_real_eip !112
  %526 = xor i32 %525, 1, !mcsema_real_eip !112
  %527 = and i32 %526, 16, !mcsema_real_eip !112
  %528 = icmp ne i32 %527, 0, !mcsema_real_eip !112
  store i1 %528, i1* %AF, !mcsema_real_eip !112
  %529 = trunc i32 %524 to i8, !mcsema_real_eip !112
  %530 = call i8 @llvm.ctpop.i8(i8 %529), !mcsema_real_eip !112
  %531 = trunc i8 %530 to i1, !mcsema_real_eip !112
  %532 = xor i1 %531, true, !mcsema_real_eip !112
  store i1 %532, i1* %PF, !mcsema_real_eip !112
  %533 = icmp eq i32 %524, 0, !mcsema_real_eip !112
  store i1 %533, i1* %ZF, !mcsema_real_eip !112
  %534 = lshr i32 %524, 31, !mcsema_real_eip !112
  %535 = trunc i32 %534 to i1, !mcsema_real_eip !112
  store i1 %535, i1* %SF, !mcsema_real_eip !112
  %536 = icmp ult i32 %EAX_val.166, 1, !mcsema_real_eip !112
  store i1 %536, i1* %CF, !mcsema_real_eip !112
  %537 = xor i32 %EAX_val.166, 1, !mcsema_real_eip !112
  %538 = and i32 %537, %525, !mcsema_real_eip !112
  %539 = lshr i32 %538, 31, !mcsema_real_eip !112
  %540 = trunc i32 %539 to i1, !mcsema_real_eip !112
  store i1 %540, i1* %OF, !mcsema_real_eip !112
  %541 = zext i32 %524 to i64, !mcsema_real_eip !112
  store i64 %541, i64* %XAX, !mcsema_real_eip !112
  %EAX_val.169 = load i32, i32* %EAX.9, !mcsema_real_eip !113
  store i32 %EAX_val.169, i32* %521, !mcsema_real_eip !113
  br label %block_0x1c2, !mcsema_real_eip !114

block_0x1b7:                                      ; preds = %block_0x16e
  %_new_gep_183 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -20
  %_allin_new_bt_184 = bitcast i8* %_new_gep_183 to i64*
  %542 = ptrtoint i64* %_allin_new_bt_184 to i64, !mcsema_real_eip !115
  %543 = inttoptr i64 %542 to i32*, !mcsema_real_eip !115
  %544 = load i32, i32* %543, !mcsema_real_eip !115
  %545 = zext i32 %544 to i64, !mcsema_real_eip !115
  store i64 %545, i64* %XCX, !mcsema_real_eip !115
  %546 = load i32, i32* %543, !mcsema_real_eip !116
  %547 = zext i32 %546 to i64, !mcsema_real_eip !116
  store i64 %547, i64* %XAX, !mcsema_real_eip !116
  %EAX_val.158 = load i32, i32* %EAX.9, !mcsema_real_eip !117
  %CL_val.160 = load i8, i8* %CL.91, !mcsema_real_eip !117
  %CL_val.160.zext = zext i8 %CL_val.160 to i32, !mcsema_real_eip !117
  %548 = and i32 %CL_val.160.zext, 31, !mcsema_real_eip !117
  %549 = sub i32 %CL_val.160.zext, 1, !mcsema_real_eip !117
  %550 = icmp ne i32 %548, 0, !mcsema_real_eip !117
  %551 = select i1 %550, i32 %549, i32 0, !mcsema_real_eip !117
  %552 = select i1 %550, i32 1, i32 0, !mcsema_real_eip !117
  %553 = shl i32 %EAX_val.158, %551, !mcsema_real_eip !117
  %554 = and i32 %553, -2147483648, !mcsema_real_eip !117
  %555 = icmp ne i32 %554, 0, !mcsema_real_eip !117
  %556 = select i1 %550, i1 %555, i1 %490, !mcsema_real_eip !117
  %557 = shl i32 %553, %552, !mcsema_real_eip !117
  %558 = icmp eq i32 %548, 1, !mcsema_real_eip !117
  %559 = and i32 %557, -2147483648, !mcsema_real_eip !117
  %560 = icmp ne i32 %559, 0, !mcsema_real_eip !117
  %561 = xor i1 %560, %556, !mcsema_real_eip !117
  %562 = select i1 %558, i1 %561, i1 %494, !mcsema_real_eip !117
  store i1 %562, i1* %OF, !mcsema_real_eip !117
  store i1 %556, i1* %CF, !mcsema_real_eip !117
  %563 = icmp eq i32 %557, 0, !mcsema_real_eip !117
  %564 = select i1 %550, i1 %563, i1 %487, !mcsema_real_eip !117
  store i1 %564, i1* %ZF, !mcsema_real_eip !117
  %565 = icmp slt i32 %557, 0, !mcsema_real_eip !117
  %566 = select i1 %550, i1 %565, i1 %489, !mcsema_real_eip !117
  store i1 %566, i1* %SF, !mcsema_real_eip !117
  %567 = trunc i32 %557 to i8, !mcsema_real_eip !117
  %568 = call i8 @llvm.ctpop.i8(i8 %567), !mcsema_real_eip !117
  %569 = trunc i8 %568 to i1, !mcsema_real_eip !117
  %570 = xor i1 %569, true, !mcsema_real_eip !117
  %571 = select i1 %550, i1 %570, i1 %486, !mcsema_real_eip !117
  store i1 %571, i1* %PF, !mcsema_real_eip !117
  %572 = zext i32 %557 to i64, !mcsema_real_eip !117
  store i64 %572, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.163 = load i32, i32* %EAX.9, !mcsema_real_eip !118
  store i32 %EAX_val.163, i32* %543, !mcsema_real_eip !118
  br label %block_0x1c2, !mcsema_real_eip !111

block_0x1c2:                                      ; preds = %block_0x1b7, %block_0x1a9
  %_load_rbp_ptr_191 = load i8*, i8** %_RBP_ptr_
  %_new_gep_192 = getelementptr i8, i8* %_load_rbp_ptr_191, i64 -20
  %_allin_new_bt_193 = bitcast i8* %_new_gep_192 to i64*
  %573 = ptrtoint i64* %_allin_new_bt_193 to i64, !mcsema_real_eip !119
  %574 = inttoptr i64 %573 to i32*, !mcsema_real_eip !119
  %575 = load i32, i32* %574, !mcsema_real_eip !119
  store i1 false, i1* %AF, !mcsema_real_eip !119
  %576 = trunc i32 %575 to i8, !mcsema_real_eip !119
  %577 = call i8 @llvm.ctpop.i8(i8 %576), !mcsema_real_eip !119
  %578 = trunc i8 %577 to i1, !mcsema_real_eip !119
  %579 = xor i1 %578, true, !mcsema_real_eip !119
  store i1 %579, i1* %PF, !mcsema_real_eip !119
  %580 = icmp eq i32 %575, 0, !mcsema_real_eip !119
  store i1 %580, i1* %ZF, !mcsema_real_eip !119
  %581 = lshr i32 %575, 31, !mcsema_real_eip !119
  %582 = trunc i32 %581 to i1, !mcsema_real_eip !119
  store i1 %582, i1* %SF, !mcsema_real_eip !119
  store i1 false, i1* %CF, !mcsema_real_eip !119
  store i1 false, i1* %OF, !mcsema_real_eip !119
  br i1 %580, label %block_0x1d8, label %block_0x1cc, !mcsema_real_eip !120

block_0x1cc:                                      ; preds = %block_0x1c2
  %_new_gep_195 = getelementptr i8, i8* %_load_rbp_ptr_191, i64 -4
  %_allin_new_bt_196 = bitcast i8* %_new_gep_195 to i64*
  %583 = ptrtoint i64* %_allin_new_bt_196 to i64, !mcsema_real_eip !121
  %584 = inttoptr i64 %583 to i32*, !mcsema_real_eip !121
  store i32 -7, i32* %584, !mcsema_real_eip !121
  br label %block_0x417, !mcsema_real_eip !122

block_0x1d8:                                      ; preds = %block_0x1c2
  %EDI_val.172 = load i32, i32* %EDI.63, !mcsema_real_eip !123
  store i1 false, i1* %CF, !mcsema_real_eip !123
  store i1 false, i1* %OF, !mcsema_real_eip !123
  store i1 false, i1* %SF, !mcsema_real_eip !123
  store i1 true, i1* %ZF, !mcsema_real_eip !123
  store i1 true, i1* %PF, !mcsema_real_eip !123
  store i1 undef, i1* %AF, !mcsema_real_eip !123
  store i64 0, i64* %XDI, !mcsema_real_eip !123
  store i64 4, i64* %XDX, !mcsema_real_eip !124
  %_new_gep_198 = getelementptr i8, i8* %_load_rbp_ptr_191, i64 -16
  %_allin_new_bt_199 = bitcast i8* %_new_gep_198 to i64*
  %585 = load i64, i64* %_allin_new_bt_199, !mcsema_real_eip !125
  store i64 %585, i64* %XAX, !mcsema_real_eip !125
  %586 = add i64 8, %585, !mcsema_real_eip !126
  %587 = xor i64 %586, %585, !mcsema_real_eip !126
  %588 = xor i64 %587, 8, !mcsema_real_eip !126
  %589 = and i64 %588, 16, !mcsema_real_eip !126
  %590 = icmp ne i64 %589, 0, !mcsema_real_eip !126
  store i1 %590, i1* %AF, !mcsema_real_eip !126
  %591 = lshr i64 %586, 63, !mcsema_real_eip !126
  %592 = trunc i64 %591 to i1, !mcsema_real_eip !126
  store i1 %592, i1* %SF, !mcsema_real_eip !126
  %593 = icmp eq i64 %586, 0, !mcsema_real_eip !126
  store i1 %593, i1* %ZF, !mcsema_real_eip !126
  %594 = xor i64 %585, 8, !mcsema_real_eip !126
  %595 = xor i64 %594, -1, !mcsema_real_eip !126
  %596 = and i64 %595, %587, !mcsema_real_eip !126
  %597 = lshr i64 %596, 63, !mcsema_real_eip !126
  %598 = and i64 %597, 1, !mcsema_real_eip !126
  %599 = trunc i64 %598 to i1, !mcsema_real_eip !126
  store i1 %599, i1* %OF, !mcsema_real_eip !126
  %600 = trunc i64 %586 to i8, !mcsema_real_eip !126
  %601 = call i8 @llvm.ctpop.i8(i8 %600), !mcsema_real_eip !126
  %602 = trunc i8 %601 to i1, !mcsema_real_eip !126
  %603 = xor i1 %602, true, !mcsema_real_eip !126
  store i1 %603, i1* %PF, !mcsema_real_eip !126
  %604 = icmp ult i64 %586, %585, !mcsema_real_eip !126
  store i1 %604, i1* %CF, !mcsema_real_eip !126
  store i64 %586, i64* %XAX, !mcsema_real_eip !126
  store i64 %586, i64* %XSI, !mcsema_real_eip !127
  %_load_rsp_ptr_200 = load i8*, i8** %_RSP_ptr_
  %RSP_val.181 = load i64, i64* %XSP, !mcsema_real_eip !128
  %_new_gep_201 = getelementptr i8, i8* %_load_rsp_ptr_200, i64 -8
  %605 = sub i64 %RSP_val.181, 8, !mcsema_real_eip !128
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_202, !mcsema_real_eip !128
  store volatile i8* %_new_gep_201, i8** %_RSP_ptr_
  store i64 %605, i64* %XSP, !mcsema_real_eip !128
  %606 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %586, i64 4)
  %_rsp_fix_426 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_427 = getelementptr i8, i8* %_rsp_fix_426, i64 8
  store i8* %_gep_fix_427, i8** %_RSP_ptr_
  store i64 %606, i64* %XAX, !mcsema_real_eip !128
  %AX.182 = bitcast i64* %XAX to i16*, !mcsema_real_eip !129
  %AX_val.183 = load i16, i16* %AX.182, !mcsema_real_eip !129
  %CX.184 = bitcast i64* %XCX to i16*, !mcsema_real_eip !129
  store i16 %AX_val.183, i16* %CX.184, !mcsema_real_eip !129
  %_load_rbp_ptr_203 = load i8*, i8** %_RBP_ptr_
  %_new_gep_204 = getelementptr i8, i8* %_load_rbp_ptr_203, i64 -38
  %_allin_new_bt_205 = bitcast i8* %_new_gep_204 to i64*
  %607 = ptrtoint i64* %_allin_new_bt_205 to i64, !mcsema_real_eip !130
  %608 = inttoptr i64 %607 to i16*, !mcsema_real_eip !130
  store i16 %AX_val.183, i16* %608, !mcsema_real_eip !130
  %_load_rbp_ptr_206 = load i8*, i8** %_RBP_ptr_
  %_new_gep_207 = getelementptr i8, i8* %_load_rbp_ptr_206, i64 -38
  %_allin_new_bt_208 = bitcast i8* %_new_gep_207 to i64*
  %609 = ptrtoint i64* %_allin_new_bt_208 to i64, !mcsema_real_eip !131
  %610 = inttoptr i64 %609 to i16*, !mcsema_real_eip !131
  %611 = load i16, i16* %610, !mcsema_real_eip !131
  %612 = zext i16 %611 to i32, !mcsema_real_eip !131
  %613 = zext i32 %612 to i64, !mcsema_real_eip !131
  store i64 %613, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.190 = load i32, i32* %EAX.9, !mcsema_real_eip !132
  %614 = or i32 %EAX_val.190, 21845, !mcsema_real_eip !132
  store i1 undef, i1* %AF, !mcsema_real_eip !132
  store i1 false, i1* %OF, !mcsema_real_eip !132
  store i1 false, i1* %CF, !mcsema_real_eip !132
  %615 = lshr i32 %614, 31, !mcsema_real_eip !132
  %616 = trunc i32 %615 to i1, !mcsema_real_eip !132
  store i1 %616, i1* %SF, !mcsema_real_eip !132
  store i1 false, i1* %ZF, !mcsema_real_eip !132
  %617 = trunc i32 %614 to i8, !mcsema_real_eip !132
  %618 = call i8 @llvm.ctpop.i8(i8 %617), !mcsema_real_eip !132
  %619 = trunc i8 %618 to i1, !mcsema_real_eip !132
  %620 = xor i1 %619, true, !mcsema_real_eip !132
  store i1 %620, i1* %PF, !mcsema_real_eip !132
  %621 = zext i32 %614 to i64, !mcsema_real_eip !132
  store i64 %621, i64* %XAX, !mcsema_real_eip !132
  %EAX_val.192 = load i32, i32* %EAX.9, !mcsema_real_eip !133
  %622 = sub i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  %623 = xor i32 %622, %EAX_val.192, !mcsema_real_eip !133
  %624 = xor i32 %623, 56663, !mcsema_real_eip !133
  %625 = and i32 %624, 16, !mcsema_real_eip !133
  %626 = icmp ne i32 %625, 0, !mcsema_real_eip !133
  store i1 %626, i1* %AF, !mcsema_real_eip !133
  %627 = trunc i32 %622 to i8, !mcsema_real_eip !133
  %628 = call i8 @llvm.ctpop.i8(i8 %627), !mcsema_real_eip !133
  %629 = trunc i8 %628 to i1, !mcsema_real_eip !133
  %630 = xor i1 %629, true, !mcsema_real_eip !133
  store i1 %630, i1* %PF, !mcsema_real_eip !133
  %631 = icmp eq i32 %622, 0, !mcsema_real_eip !133
  store i1 %631, i1* %ZF, !mcsema_real_eip !133
  %632 = lshr i32 %622, 31, !mcsema_real_eip !133
  %633 = trunc i32 %632 to i1, !mcsema_real_eip !133
  store i1 %633, i1* %SF, !mcsema_real_eip !133
  %634 = icmp ult i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  store i1 %634, i1* %CF, !mcsema_real_eip !133
  %635 = xor i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  %636 = and i32 %635, %623, !mcsema_real_eip !133
  %637 = lshr i32 %636, 31, !mcsema_real_eip !133
  %638 = trunc i32 %637 to i1, !mcsema_real_eip !133
  store i1 %638, i1* %OF, !mcsema_real_eip !133
  %639 = icmp eq i1 %631, false, !mcsema_real_eip !134
  br i1 %639, label %block_0x22a, label %block_0x20a, !mcsema_real_eip !134

block_0x20a:                                      ; preds = %block_0x1d8
  %640 = load i16, i16* %610, !mcsema_real_eip !135
  %641 = zext i16 %640 to i32, !mcsema_real_eip !135
  %642 = zext i32 %641 to i64, !mcsema_real_eip !135
  store i64 %642, i64* %XAX, !mcsema_real_eip !135
  %EAX_val.197 = load i32, i32* %EAX.9, !mcsema_real_eip !136
  %643 = or i32 %EAX_val.197, 43690, !mcsema_real_eip !136
  store i1 undef, i1* %AF, !mcsema_real_eip !136
  store i1 false, i1* %OF, !mcsema_real_eip !136
  store i1 false, i1* %CF, !mcsema_real_eip !136
  %644 = lshr i32 %643, 31, !mcsema_real_eip !136
  %645 = trunc i32 %644 to i1, !mcsema_real_eip !136
  store i1 %645, i1* %SF, !mcsema_real_eip !136
  store i1 false, i1* %ZF, !mcsema_real_eip !136
  %646 = trunc i32 %643 to i8, !mcsema_real_eip !136
  %647 = call i8 @llvm.ctpop.i8(i8 %646), !mcsema_real_eip !136
  %648 = trunc i8 %647 to i1, !mcsema_real_eip !136
  %649 = xor i1 %648, true, !mcsema_real_eip !136
  store i1 %649, i1* %PF, !mcsema_real_eip !136
  %650 = zext i32 %643 to i64, !mcsema_real_eip !136
  store i64 %650, i64* %XAX, !mcsema_real_eip !136
  %EAX_val.199 = load i32, i32* %EAX.9, !mcsema_real_eip !137
  %651 = sub i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  %652 = xor i32 %651, %EAX_val.199, !mcsema_real_eip !137
  %653 = xor i32 %652, 65211, !mcsema_real_eip !137
  %654 = and i32 %653, 16, !mcsema_real_eip !137
  %655 = icmp ne i32 %654, 0, !mcsema_real_eip !137
  store i1 %655, i1* %AF, !mcsema_real_eip !137
  %656 = trunc i32 %651 to i8, !mcsema_real_eip !137
  %657 = call i8 @llvm.ctpop.i8(i8 %656), !mcsema_real_eip !137
  %658 = trunc i8 %657 to i1, !mcsema_real_eip !137
  %659 = xor i1 %658, true, !mcsema_real_eip !137
  store i1 %659, i1* %PF, !mcsema_real_eip !137
  %660 = icmp eq i32 %651, 0, !mcsema_real_eip !137
  store i1 %660, i1* %ZF, !mcsema_real_eip !137
  %661 = lshr i32 %651, 31, !mcsema_real_eip !137
  %662 = trunc i32 %661 to i1, !mcsema_real_eip !137
  store i1 %662, i1* %SF, !mcsema_real_eip !137
  %663 = icmp ult i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  store i1 %663, i1* %CF, !mcsema_real_eip !137
  %664 = xor i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  %665 = and i32 %664, %652, !mcsema_real_eip !137
  %666 = lshr i32 %665, 31, !mcsema_real_eip !137
  %667 = trunc i32 %666 to i1, !mcsema_real_eip !137
  store i1 %667, i1* %OF, !mcsema_real_eip !137
  %668 = icmp eq i1 %660, false, !mcsema_real_eip !138
  br i1 %668, label %block_0x22a, label %block_0x21e, !mcsema_real_eip !138

block_0x22a:                                      ; preds = %block_0x20a, %block_0x1d8
  %_new_gep_213 = getelementptr i8, i8* %_load_rbp_ptr_206, i64 -20
  %_allin_new_bt_214 = bitcast i8* %_new_gep_213 to i64*
  %669 = ptrtoint i64* %_allin_new_bt_214 to i64, !mcsema_real_eip !139
  %670 = inttoptr i64 %669 to i32*, !mcsema_real_eip !139
  store i32 48059, i32* %670, !mcsema_real_eip !139
  br label %block_0x231, !mcsema_real_eip !135

block_0x231:                                      ; preds = %block_0x21e, %block_0x22a
  %EDI_val.201 = load i32, i32* %EDI.63, !mcsema_real_eip !140
  store i1 false, i1* %CF, !mcsema_real_eip !140
  store i1 false, i1* %OF, !mcsema_real_eip !140
  store i1 false, i1* %SF, !mcsema_real_eip !140
  store i1 true, i1* %ZF, !mcsema_real_eip !140
  store i1 true, i1* %PF, !mcsema_real_eip !140
  store i1 undef, i1* %AF, !mcsema_real_eip !140
  store i64 0, i64* %XDI, !mcsema_real_eip !140
  store i64 8, i64* %XDX, !mcsema_real_eip !141
  %_load_rbp_ptr_215 = load i8*, i8** %_RBP_ptr_
  %_new_gep_216 = getelementptr i8, i8* %_load_rbp_ptr_215, i64 -16
  %_allin_new_bt_217 = bitcast i8* %_new_gep_216 to i64*
  %671 = load i64, i64* %_allin_new_bt_217, !mcsema_real_eip !142
  store i64 %671, i64* %XAX, !mcsema_real_eip !142
  %672 = add i64 12, %671, !mcsema_real_eip !143
  %673 = xor i64 %672, %671, !mcsema_real_eip !143
  %674 = xor i64 %673, 12, !mcsema_real_eip !143
  %675 = and i64 %674, 16, !mcsema_real_eip !143
  %676 = icmp ne i64 %675, 0, !mcsema_real_eip !143
  store i1 %676, i1* %AF, !mcsema_real_eip !143
  %677 = lshr i64 %672, 63, !mcsema_real_eip !143
  %678 = trunc i64 %677 to i1, !mcsema_real_eip !143
  store i1 %678, i1* %SF, !mcsema_real_eip !143
  %679 = icmp eq i64 %672, 0, !mcsema_real_eip !143
  store i1 %679, i1* %ZF, !mcsema_real_eip !143
  %680 = xor i64 %671, 12, !mcsema_real_eip !143
  %681 = xor i64 %680, -1, !mcsema_real_eip !143
  %682 = and i64 %681, %673, !mcsema_real_eip !143
  %683 = lshr i64 %682, 63, !mcsema_real_eip !143
  %684 = and i64 %683, 1, !mcsema_real_eip !143
  %685 = trunc i64 %684 to i1, !mcsema_real_eip !143
  store i1 %685, i1* %OF, !mcsema_real_eip !143
  %686 = trunc i64 %672 to i8, !mcsema_real_eip !143
  %687 = call i8 @llvm.ctpop.i8(i8 %686), !mcsema_real_eip !143
  %688 = trunc i8 %687 to i1, !mcsema_real_eip !143
  %689 = xor i1 %688, true, !mcsema_real_eip !143
  store i1 %689, i1* %PF, !mcsema_real_eip !143
  %690 = icmp ult i64 %672, %671, !mcsema_real_eip !143
  store i1 %690, i1* %CF, !mcsema_real_eip !143
  store i64 %672, i64* %XAX, !mcsema_real_eip !143
  store i64 %672, i64* %XSI, !mcsema_real_eip !144
  %_load_rsp_ptr_218 = load i8*, i8** %_RSP_ptr_
  %RSP_val.210 = load i64, i64* %XSP, !mcsema_real_eip !145
  %_new_gep_219 = getelementptr i8, i8* %_load_rsp_ptr_218, i64 -8
  %691 = sub i64 %RSP_val.210, 8, !mcsema_real_eip !145
  %_allin_new_bt_220 = bitcast i8* %_new_gep_219 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_220, !mcsema_real_eip !145
  store volatile i8* %_new_gep_219, i8** %_RSP_ptr_
  store i64 %691, i64* %XSP, !mcsema_real_eip !145
  %692 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %672, i64 8)
  %_rsp_fix_428 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_429 = getelementptr i8, i8* %_rsp_fix_428, i64 8
  store i8* %_gep_fix_429, i8** %_RSP_ptr_
  store i64 %692, i64* %XAX, !mcsema_real_eip !145
  %_load_rbp_ptr_221 = load i8*, i8** %_RBP_ptr_
  %_new_gep_222 = getelementptr i8, i8* %_load_rbp_ptr_221, i64 -44
  %_allin_new_bt_223 = bitcast i8* %_new_gep_222 to i64*
  %EAX_val.213 = load i32, i32* %EAX.9, !mcsema_real_eip !146
  %693 = ptrtoint i64* %_allin_new_bt_223 to i64, !mcsema_real_eip !146
  %694 = inttoptr i64 %693 to i32*, !mcsema_real_eip !146
  store i32 %EAX_val.213, i32* %694, !mcsema_real_eip !146
  %_load_rbp_ptr_224 = load i8*, i8** %_RBP_ptr_
  %_new_gep_225 = getelementptr i8, i8* %_load_rbp_ptr_224, i64 -44
  %_allin_new_bt_226 = bitcast i8* %_new_gep_225 to i64*
  %695 = ptrtoint i64* %_allin_new_bt_226 to i64, !mcsema_real_eip !147
  %696 = inttoptr i64 %695 to i32*, !mcsema_real_eip !147
  %697 = load i32, i32* %696, !mcsema_real_eip !147
  %698 = zext i32 %697 to i64, !mcsema_real_eip !147
  store i64 %698, i64* %XAX, !mcsema_real_eip !147
  %EAX_val.216 = load i32, i32* %EAX.9, !mcsema_real_eip !148
  %699 = xor i32 %EAX_val.216, -1534560611, !mcsema_real_eip !148
  store i1 false, i1* %CF, !mcsema_real_eip !148
  store i1 false, i1* %OF, !mcsema_real_eip !148
  %700 = lshr i32 %699, 31, !mcsema_real_eip !148
  %701 = trunc i32 %700 to i1, !mcsema_real_eip !148
  store i1 %701, i1* %SF, !mcsema_real_eip !148
  %702 = icmp eq i32 %699, 0, !mcsema_real_eip !148
  store i1 %702, i1* %ZF, !mcsema_real_eip !148
  %703 = trunc i32 %699 to i8, !mcsema_real_eip !148
  %704 = call i8 @llvm.ctpop.i8(i8 %703), !mcsema_real_eip !148
  %705 = trunc i8 %704 to i1, !mcsema_real_eip !148
  %706 = xor i1 %705, true, !mcsema_real_eip !148
  store i1 %706, i1* %PF, !mcsema_real_eip !148
  store i1 undef, i1* %AF, !mcsema_real_eip !148
  %707 = zext i32 %699 to i64, !mcsema_real_eip !148
  store i64 %707, i64* %XAX, !mcsema_real_eip !148
  %_new_gep_228 = getelementptr i8, i8* %_load_rbp_ptr_224, i64 -48
  %_allin_new_bt_229 = bitcast i8* %_new_gep_228 to i64*
  %EAX_val.219 = load i32, i32* %EAX.9, !mcsema_real_eip !149
  %708 = ptrtoint i64* %_allin_new_bt_229 to i64, !mcsema_real_eip !149
  %709 = inttoptr i64 %708 to i32*, !mcsema_real_eip !149
  store i32 %EAX_val.219, i32* %709, !mcsema_real_eip !149
  %_load_rbp_ptr_230 = load i8*, i8** %_RBP_ptr_
  %_new_gep_231 = getelementptr i8, i8* %_load_rbp_ptr_230, i64 -48
  %_allin_new_bt_232 = bitcast i8* %_new_gep_231 to i64*
  %710 = ptrtoint i64* %_allin_new_bt_232 to i64, !mcsema_real_eip !150
  %711 = inttoptr i64 %710 to i32*, !mcsema_real_eip !150
  %712 = load i32, i32* %711, !mcsema_real_eip !150
  %713 = zext i32 %712 to i64, !mcsema_real_eip !150
  store i64 %713, i64* %XAX, !mcsema_real_eip !150
  %EAX_val.222 = load i32, i32* %EAX.9, !mcsema_real_eip !151
  %714 = lshr i32 %EAX_val.222, 15, !mcsema_real_eip !151
  %715 = and i32 %714, 1, !mcsema_real_eip !151
  %716 = icmp ne i32 %715, 0, !mcsema_real_eip !151
  %717 = load i1, i1* %CF, !mcsema_real_eip !151
  %718 = lshr i32 %714, 1, !mcsema_real_eip !151
  %719 = load i1, i1* %OF, !mcsema_real_eip !151
  %720 = and i32 %EAX_val.222, -2147483648, !mcsema_real_eip !151
  %721 = icmp ne i32 %720, 0, !mcsema_real_eip !151
  store i1 %716, i1* %CF, !mcsema_real_eip !151
  %722 = load i1, i1* %ZF, !mcsema_real_eip !151
  %723 = icmp eq i32 %718, 0, !mcsema_real_eip !151
  store i1 %723, i1* %ZF, !mcsema_real_eip !151
  %724 = load i1, i1* %SF, !mcsema_real_eip !151
  store i1 false, i1* %SF, !mcsema_real_eip !151
  %725 = load i1, i1* %PF, !mcsema_real_eip !151
  %726 = trunc i32 %718 to i8, !mcsema_real_eip !151
  %727 = call i8 @llvm.ctpop.i8(i8 %726), !mcsema_real_eip !151
  %728 = trunc i8 %727 to i1, !mcsema_real_eip !151
  %729 = xor i1 %728, true, !mcsema_real_eip !151
  store i1 %729, i1* %PF, !mcsema_real_eip !151
  %730 = zext i32 %718 to i64, !mcsema_real_eip !151
  store i64 %730, i64* %XAX, !mcsema_real_eip !151
  %_new_gep_234 = getelementptr i8, i8* %_load_rbp_ptr_230, i64 -52
  %_allin_new_bt_235 = bitcast i8* %_new_gep_234 to i64*
  %EAX_val.225 = load i32, i32* %EAX.9, !mcsema_real_eip !152
  %731 = ptrtoint i64* %_allin_new_bt_235 to i64, !mcsema_real_eip !152
  %732 = inttoptr i64 %731 to i32*, !mcsema_real_eip !152
  store i32 %EAX_val.225, i32* %732, !mcsema_real_eip !152
  %_load_rbp_ptr_236 = load i8*, i8** %_RBP_ptr_
  %_new_gep_237 = getelementptr i8, i8* %_load_rbp_ptr_236, i64 -48
  %_allin_new_bt_238 = bitcast i8* %_new_gep_237 to i64*
  %733 = ptrtoint i64* %_allin_new_bt_238 to i64, !mcsema_real_eip !153
  %734 = inttoptr i64 %733 to i32*, !mcsema_real_eip !153
  %735 = load i32, i32* %734, !mcsema_real_eip !153
  %736 = zext i32 %735 to i64, !mcsema_real_eip !153
  store i64 %736, i64* %XAX, !mcsema_real_eip !153
  %EAX_val.228 = load i32, i32* %EAX.9, !mcsema_real_eip !154
  %737 = and i32 %EAX_val.228, 65535, !mcsema_real_eip !154
  store i1 false, i1* %SF, !mcsema_real_eip !154
  %738 = icmp eq i32 %737, 0, !mcsema_real_eip !154
  store i1 %738, i1* %ZF, !mcsema_real_eip !154
  %739 = trunc i32 %737 to i8, !mcsema_real_eip !154
  %740 = call i8 @llvm.ctpop.i8(i8 %739), !mcsema_real_eip !154
  %741 = trunc i8 %740 to i1, !mcsema_real_eip !154
  %742 = xor i1 %741, true, !mcsema_real_eip !154
  store i1 %742, i1* %PF, !mcsema_real_eip !154
  store i1 false, i1* %OF, !mcsema_real_eip !154
  store i1 false, i1* %CF, !mcsema_real_eip !154
  store i1 undef, i1* %AF, !mcsema_real_eip !154
  %743 = zext i32 %737 to i64, !mcsema_real_eip !154
  store i64 %743, i64* %XAX, !mcsema_real_eip !154
  %_new_gep_240 = getelementptr i8, i8* %_load_rbp_ptr_236, i64 -56
  %_allin_new_bt_241 = bitcast i8* %_new_gep_240 to i64*
  %EAX_val.231 = load i32, i32* %EAX.9, !mcsema_real_eip !155
  %744 = ptrtoint i64* %_allin_new_bt_241 to i64, !mcsema_real_eip !155
  %745 = inttoptr i64 %744 to i32*, !mcsema_real_eip !155
  store i32 %EAX_val.231, i32* %745, !mcsema_real_eip !155
  %_load_rbp_ptr_242 = load i8*, i8** %_RBP_ptr_
  %_new_gep_243 = getelementptr i8, i8* %_load_rbp_ptr_242, i64 -52
  %_allin_new_bt_244 = bitcast i8* %_new_gep_243 to i64*
  %746 = ptrtoint i64* %_allin_new_bt_244 to i64, !mcsema_real_eip !156
  %747 = inttoptr i64 %746 to i32*, !mcsema_real_eip !156
  %748 = load i32, i32* %747, !mcsema_real_eip !156
  %749 = sub i32 %748, 79, !mcsema_real_eip !156
  %750 = xor i32 %749, %748, !mcsema_real_eip !156
  %751 = xor i32 %750, 79, !mcsema_real_eip !156
  %752 = and i32 %751, 16, !mcsema_real_eip !156
  %753 = icmp ne i32 %752, 0, !mcsema_real_eip !156
  store i1 %753, i1* %AF, !mcsema_real_eip !156
  %754 = trunc i32 %749 to i8, !mcsema_real_eip !156
  %755 = call i8 @llvm.ctpop.i8(i8 %754), !mcsema_real_eip !156
  %756 = trunc i8 %755 to i1, !mcsema_real_eip !156
  %757 = xor i1 %756, true, !mcsema_real_eip !156
  store i1 %757, i1* %PF, !mcsema_real_eip !156
  %758 = icmp eq i32 %749, 0, !mcsema_real_eip !156
  store i1 %758, i1* %ZF, !mcsema_real_eip !156
  %759 = lshr i32 %749, 31, !mcsema_real_eip !156
  %760 = trunc i32 %759 to i1, !mcsema_real_eip !156
  store i1 %760, i1* %SF, !mcsema_real_eip !156
  %761 = icmp ult i32 %748, 79, !mcsema_real_eip !156
  store i1 %761, i1* %CF, !mcsema_real_eip !156
  %762 = xor i32 %748, 79, !mcsema_real_eip !156
  %763 = and i32 %762, %750, !mcsema_real_eip !156
  %764 = lshr i32 %763, 31, !mcsema_real_eip !156
  %765 = trunc i32 %764 to i1, !mcsema_real_eip !156
  store i1 %765, i1* %OF, !mcsema_real_eip !156
  %766 = icmp eq i1 %758, false, !mcsema_real_eip !157
  br i1 %766, label %block_0x28c, label %block_0x274, !mcsema_real_eip !157

block_0x21e:                                      ; preds = %block_0x20a
  %_new_gep_246 = getelementptr i8, i8* %_load_rbp_ptr_206, i64 -20
  %_allin_new_bt_247 = bitcast i8* %_new_gep_246 to i64*
  %767 = ptrtoint i64* %_allin_new_bt_247 to i64, !mcsema_real_eip !158
  %768 = inttoptr i64 %767 to i32*, !mcsema_real_eip !158
  store i32 43690, i32* %768, !mcsema_real_eip !158
  br label %block_0x231, !mcsema_real_eip !159

block_0x274:                                      ; preds = %block_0x231
  %_new_gep_249 = getelementptr i8, i8* %_load_rbp_ptr_242, i64 -56
  %_allin_new_bt_250 = bitcast i8* %_new_gep_249 to i64*
  %769 = ptrtoint i64* %_allin_new_bt_250 to i64, !mcsema_real_eip !160
  %770 = inttoptr i64 %769 to i32*, !mcsema_real_eip !160
  %771 = load i32, i32* %770, !mcsema_real_eip !160
  %772 = zext i32 %771 to i64, !mcsema_real_eip !160
  store i64 %772, i64* %XAX, !mcsema_real_eip !160
  %_new_gep_252 = getelementptr i8, i8* %_load_rbp_ptr_242, i64 -20
  %_allin_new_bt_253 = bitcast i8* %_new_gep_252 to i64*
  %EAX_val.238 = load i32, i32* %EAX.9, !mcsema_real_eip !161
  %773 = ptrtoint i64* %_allin_new_bt_253 to i64, !mcsema_real_eip !161
  %774 = inttoptr i64 %773 to i32*, !mcsema_real_eip !161
  %775 = load i32, i32* %774, !mcsema_real_eip !161
  %776 = sub i32 %EAX_val.238, %775, !mcsema_real_eip !161
  %777 = xor i32 %776, %EAX_val.238, !mcsema_real_eip !161
  %778 = xor i32 %777, %775, !mcsema_real_eip !161
  %779 = and i32 %778, 16, !mcsema_real_eip !161
  %780 = icmp ne i32 %779, 0, !mcsema_real_eip !161
  store i1 %780, i1* %AF, !mcsema_real_eip !161
  %781 = trunc i32 %776 to i8, !mcsema_real_eip !161
  %782 = call i8 @llvm.ctpop.i8(i8 %781), !mcsema_real_eip !161
  %783 = trunc i8 %782 to i1, !mcsema_real_eip !161
  %784 = xor i1 %783, true, !mcsema_real_eip !161
  store i1 %784, i1* %PF, !mcsema_real_eip !161
  %785 = icmp eq i32 %776, 0, !mcsema_real_eip !161
  store i1 %785, i1* %ZF, !mcsema_real_eip !161
  %786 = lshr i32 %776, 31, !mcsema_real_eip !161
  %787 = trunc i32 %786 to i1, !mcsema_real_eip !161
  store i1 %787, i1* %SF, !mcsema_real_eip !161
  %788 = icmp ult i32 %EAX_val.238, %775, !mcsema_real_eip !161
  store i1 %788, i1* %CF, !mcsema_real_eip !161
  %789 = xor i32 %EAX_val.238, %775, !mcsema_real_eip !161
  %790 = and i32 %789, %777, !mcsema_real_eip !161
  %791 = lshr i32 %790, 31, !mcsema_real_eip !161
  %792 = trunc i32 %791 to i1, !mcsema_real_eip !161
  store i1 %792, i1* %OF, !mcsema_real_eip !161
  %793 = icmp eq i1 %785, false, !mcsema_real_eip !162
  br i1 %793, label %block_0x28c, label %block_0x280, !mcsema_real_eip !162

block_0x28c:                                      ; preds = %block_0x274, %block_0x231
  %_new_gep_255 = getelementptr i8, i8* %_load_rbp_ptr_242, i64 -20
  %_allin_new_bt_256 = bitcast i8* %_new_gep_255 to i64*
  %794 = ptrtoint i64* %_allin_new_bt_256 to i64, !mcsema_real_eip !163
  %795 = inttoptr i64 %794 to i32*, !mcsema_real_eip !163
  store i32 48351, i32* %795, !mcsema_real_eip !163
  br label %block_0x293, !mcsema_real_eip !160

block_0x293:                                      ; preds = %block_0x280, %block_0x28c
  store i64 8, i64* %XDX, !mcsema_real_eip !164
  %_load_rbp_ptr_257 = load i8*, i8** %_RBP_ptr_
  %_new_gep_258 = getelementptr i8, i8* %_load_rbp_ptr_257, i64 -20
  %_allin_new_bt_259 = bitcast i8* %_new_gep_258 to i64*
  %796 = ptrtoint i64* %_allin_new_bt_259 to i64, !mcsema_real_eip !165
  %797 = inttoptr i64 %796 to i32*, !mcsema_real_eip !165
  %798 = load i32, i32* %797, !mcsema_real_eip !165
  %799 = zext i32 %798 to i64, !mcsema_real_eip !165
  store i64 %799, i64* %XDI, !mcsema_real_eip !165
  %_new_gep_261 = getelementptr i8, i8* %_load_rbp_ptr_257, i64 -16
  %_allin_new_bt_262 = bitcast i8* %_new_gep_261 to i64*
  %800 = load i64, i64* %_allin_new_bt_262, !mcsema_real_eip !166
  store i64 %800, i64* %XAX, !mcsema_real_eip !166
  %801 = add i64 20, %800, !mcsema_real_eip !167
  %802 = xor i64 %801, %800, !mcsema_real_eip !167
  %803 = xor i64 %802, 20, !mcsema_real_eip !167
  %804 = and i64 %803, 16, !mcsema_real_eip !167
  %805 = icmp ne i64 %804, 0, !mcsema_real_eip !167
  store i1 %805, i1* %AF, !mcsema_real_eip !167
  %806 = lshr i64 %801, 63, !mcsema_real_eip !167
  %807 = trunc i64 %806 to i1, !mcsema_real_eip !167
  store i1 %807, i1* %SF, !mcsema_real_eip !167
  %808 = icmp eq i64 %801, 0, !mcsema_real_eip !167
  store i1 %808, i1* %ZF, !mcsema_real_eip !167
  %809 = xor i64 %800, 20, !mcsema_real_eip !167
  %810 = xor i64 %809, -1, !mcsema_real_eip !167
  %811 = and i64 %810, %802, !mcsema_real_eip !167
  %812 = lshr i64 %811, 63, !mcsema_real_eip !167
  %813 = and i64 %812, 1, !mcsema_real_eip !167
  %814 = trunc i64 %813 to i1, !mcsema_real_eip !167
  store i1 %814, i1* %OF, !mcsema_real_eip !167
  %815 = trunc i64 %801 to i8, !mcsema_real_eip !167
  %816 = call i8 @llvm.ctpop.i8(i8 %815), !mcsema_real_eip !167
  %817 = trunc i8 %816 to i1, !mcsema_real_eip !167
  %818 = xor i1 %817, true, !mcsema_real_eip !167
  store i1 %818, i1* %PF, !mcsema_real_eip !167
  %819 = icmp ult i64 %801, %800, !mcsema_real_eip !167
  store i1 %819, i1* %CF, !mcsema_real_eip !167
  store i64 %801, i64* %XAX, !mcsema_real_eip !167
  store i64 %801, i64* %XSI, !mcsema_real_eip !168
  %_load_rsp_ptr_263 = load i8*, i8** %_RSP_ptr_
  %RSP_val.246 = load i64, i64* %XSP, !mcsema_real_eip !169
  %_new_gep_264 = getelementptr i8, i8* %_load_rsp_ptr_263, i64 -8
  %820 = sub i64 %RSP_val.246, 8, !mcsema_real_eip !169
  %_allin_new_bt_265 = bitcast i8* %_new_gep_264 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_265, !mcsema_real_eip !169
  store volatile i8* %_new_gep_264, i8** %_RSP_ptr_
  store i64 %820, i64* %XSP, !mcsema_real_eip !169
  %821 = call x86_64_sysvcc i64 @_read_bytes(i64 %799, i64 %801, i64 8)
  %_rsp_fix_430 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_431 = getelementptr i8, i8* %_rsp_fix_430, i64 8
  store i8* %_gep_fix_431, i8** %_RSP_ptr_
  store i64 %821, i64* %XAX, !mcsema_real_eip !169
  %_load_rbp_ptr_266 = load i8*, i8** %_RBP_ptr_
  %_new_gep_267 = getelementptr i8, i8* %_load_rbp_ptr_266, i64 -60
  %_allin_new_bt_268 = bitcast i8* %_new_gep_267 to i64*
  %EAX_val.249 = load i32, i32* %EAX.9, !mcsema_real_eip !170
  %822 = ptrtoint i64* %_allin_new_bt_268 to i64, !mcsema_real_eip !170
  %823 = inttoptr i64 %822 to i32*, !mcsema_real_eip !170
  store i32 %EAX_val.249, i32* %823, !mcsema_real_eip !170
  %_load_rbp_ptr_269 = load i8*, i8** %_RBP_ptr_
  %_new_gep_270 = getelementptr i8, i8* %_load_rbp_ptr_269, i64 -60
  %_allin_new_bt_271 = bitcast i8* %_new_gep_270 to i64*
  %824 = ptrtoint i64* %_allin_new_bt_271 to i64, !mcsema_real_eip !171
  %825 = inttoptr i64 %824 to i32*, !mcsema_real_eip !171
  %826 = load i32, i32* %825, !mcsema_real_eip !171
  %827 = zext i32 %826 to i64, !mcsema_real_eip !171
  store i64 %827, i64* %XAX, !mcsema_real_eip !171
  %EAX_val.252 = load i32, i32* %EAX.9, !mcsema_real_eip !172
  %828 = sub i32 %EAX_val.252, 3, !mcsema_real_eip !172
  %829 = xor i32 %828, %EAX_val.252, !mcsema_real_eip !172
  %830 = xor i32 %829, 3, !mcsema_real_eip !172
  %831 = and i32 %830, 16, !mcsema_real_eip !172
  %832 = icmp ne i32 %831, 0, !mcsema_real_eip !172
  store i1 %832, i1* %AF, !mcsema_real_eip !172
  %833 = trunc i32 %828 to i8, !mcsema_real_eip !172
  %834 = call i8 @llvm.ctpop.i8(i8 %833), !mcsema_real_eip !172
  %835 = trunc i8 %834 to i1, !mcsema_real_eip !172
  %836 = xor i1 %835, true, !mcsema_real_eip !172
  store i1 %836, i1* %PF, !mcsema_real_eip !172
  %837 = icmp eq i32 %828, 0, !mcsema_real_eip !172
  store i1 %837, i1* %ZF, !mcsema_real_eip !172
  %838 = lshr i32 %828, 31, !mcsema_real_eip !172
  %839 = trunc i32 %838 to i1, !mcsema_real_eip !172
  store i1 %839, i1* %SF, !mcsema_real_eip !172
  %840 = icmp ult i32 %EAX_val.252, 3, !mcsema_real_eip !172
  store i1 %840, i1* %CF, !mcsema_real_eip !172
  %841 = xor i32 %EAX_val.252, 3, !mcsema_real_eip !172
  %842 = and i32 %841, %829, !mcsema_real_eip !172
  %843 = lshr i32 %842, 31, !mcsema_real_eip !172
  %844 = trunc i32 %843 to i1, !mcsema_real_eip !172
  store i1 %844, i1* %OF, !mcsema_real_eip !172
  %845 = zext i32 %828 to i64, !mcsema_real_eip !172
  store i64 %845, i64* %XAX, !mcsema_real_eip !172
  %EAX_val.255 = load i32, i32* %EAX.9, !mcsema_real_eip !173
  store i32 %EAX_val.255, i32* %825, !mcsema_real_eip !173
  %_load_rbp_ptr_275 = load i8*, i8** %_RBP_ptr_
  %_new_gep_276 = getelementptr i8, i8* %_load_rbp_ptr_275, i64 -60
  %_allin_new_bt_277 = bitcast i8* %_new_gep_276 to i64*
  %846 = ptrtoint i64* %_allin_new_bt_277 to i64, !mcsema_real_eip !174
  %847 = inttoptr i64 %846 to i32*, !mcsema_real_eip !174
  %848 = load i32, i32* %847, !mcsema_real_eip !174
  %849 = zext i32 %848 to i64, !mcsema_real_eip !174
  store i64 %849, i64* %XAX, !mcsema_real_eip !174
  %EAX_val.258 = load i32, i32* %EAX.9, !mcsema_real_eip !175
  %850 = and i32 %EAX_val.258, 7, !mcsema_real_eip !175
  store i1 false, i1* %SF, !mcsema_real_eip !175
  %851 = icmp eq i32 %850, 0, !mcsema_real_eip !175
  store i1 %851, i1* %ZF, !mcsema_real_eip !175
  %852 = trunc i32 %850 to i8, !mcsema_real_eip !175
  %853 = call i8 @llvm.ctpop.i8(i8 %852), !mcsema_real_eip !175
  %854 = trunc i8 %853 to i1, !mcsema_real_eip !175
  %855 = xor i1 %854, true, !mcsema_real_eip !175
  store i1 %855, i1* %PF, !mcsema_real_eip !175
  store i1 false, i1* %OF, !mcsema_real_eip !175
  store i1 false, i1* %CF, !mcsema_real_eip !175
  store i1 undef, i1* %AF, !mcsema_real_eip !175
  %856 = zext i32 %850 to i64, !mcsema_real_eip !175
  store i64 %856, i64* %XAX, !mcsema_real_eip !175
  %EAX_val.260 = load i32, i32* %EAX.9, !mcsema_real_eip !176
  store i1 false, i1* %AF, !mcsema_real_eip !176
  %857 = trunc i32 %EAX_val.260 to i8, !mcsema_real_eip !176
  %858 = call i8 @llvm.ctpop.i8(i8 %857), !mcsema_real_eip !176
  %859 = trunc i8 %858 to i1, !mcsema_real_eip !176
  %860 = xor i1 %859, true, !mcsema_real_eip !176
  store i1 %860, i1* %PF, !mcsema_real_eip !176
  %861 = icmp eq i32 %EAX_val.260, 0, !mcsema_real_eip !176
  store i1 %861, i1* %ZF, !mcsema_real_eip !176
  %862 = lshr i32 %EAX_val.260, 31, !mcsema_real_eip !176
  %863 = trunc i32 %862 to i1, !mcsema_real_eip !176
  store i1 %863, i1* %SF, !mcsema_real_eip !176
  store i1 false, i1* %CF, !mcsema_real_eip !176
  store i1 false, i1* %OF, !mcsema_real_eip !176
  br i1 %861, label %block_0x2d2, label %block_0x2c6, !mcsema_real_eip !177

block_0x280:                                      ; preds = %block_0x274
  store i32 0, i32* %774, !mcsema_real_eip !178
  br label %block_0x293, !mcsema_real_eip !179

block_0x2c6:                                      ; preds = %block_0x293
  %_new_gep_282 = getelementptr i8, i8* %_load_rbp_ptr_275, i64 -4
  %_allin_new_bt_283 = bitcast i8* %_new_gep_282 to i64*
  %864 = ptrtoint i64* %_allin_new_bt_283 to i64, !mcsema_real_eip !180
  %865 = inttoptr i64 %864 to i32*, !mcsema_real_eip !180
  store i32 -21, i32* %865, !mcsema_real_eip !180
  br label %block_0x417, !mcsema_real_eip !181

block_0x2d2:                                      ; preds = %block_0x293
  %866 = load i32, i32* %847, !mcsema_real_eip !182
  %867 = zext i32 %866 to i64, !mcsema_real_eip !182
  store i64 %867, i64* %XAX, !mcsema_real_eip !182
  %EAX_val.264 = load i32, i32* %EAX.9, !mcsema_real_eip !183
  %868 = sub i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  %869 = xor i32 %868, %EAX_val.264, !mcsema_real_eip !183
  %870 = xor i32 %869, -2147483648, !mcsema_real_eip !183
  %871 = and i32 %870, 16, !mcsema_real_eip !183
  %872 = icmp ne i32 %871, 0, !mcsema_real_eip !183
  store i1 %872, i1* %AF, !mcsema_real_eip !183
  %873 = trunc i32 %868 to i8, !mcsema_real_eip !183
  %874 = call i8 @llvm.ctpop.i8(i8 %873), !mcsema_real_eip !183
  %875 = trunc i8 %874 to i1, !mcsema_real_eip !183
  %876 = xor i1 %875, true, !mcsema_real_eip !183
  store i1 %876, i1* %PF, !mcsema_real_eip !183
  %877 = icmp eq i32 %868, 0, !mcsema_real_eip !183
  store i1 %877, i1* %ZF, !mcsema_real_eip !183
  %878 = lshr i32 %868, 31, !mcsema_real_eip !183
  %879 = trunc i32 %878 to i1, !mcsema_real_eip !183
  store i1 %879, i1* %SF, !mcsema_real_eip !183
  %880 = icmp ult i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  store i1 %880, i1* %CF, !mcsema_real_eip !183
  %881 = xor i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  %882 = and i32 %881, %869, !mcsema_real_eip !183
  %883 = lshr i32 %882, 31, !mcsema_real_eip !183
  %884 = trunc i32 %883 to i1, !mcsema_real_eip !183
  store i1 %884, i1* %OF, !mcsema_real_eip !183
  %885 = zext i32 %868 to i64, !mcsema_real_eip !183
  store i64 %885, i64* %XAX, !mcsema_real_eip !183
  %EAX_val.267 = load i32, i32* %EAX.9, !mcsema_real_eip !184
  store i32 %EAX_val.267, i32* %847, !mcsema_real_eip !184
  %_load_rbp_ptr_290 = load i8*, i8** %_RBP_ptr_
  %_new_gep_291 = getelementptr i8, i8* %_load_rbp_ptr_290, i64 -60
  %_allin_new_bt_292 = bitcast i8* %_new_gep_291 to i64*
  %886 = ptrtoint i64* %_allin_new_bt_292 to i64, !mcsema_real_eip !185
  %887 = inttoptr i64 %886 to i32*, !mcsema_real_eip !185
  %888 = load i32, i32* %887, !mcsema_real_eip !185
  %889 = sub i32 %888, 268435455, !mcsema_real_eip !185
  %890 = xor i32 %889, %888, !mcsema_real_eip !185
  %891 = xor i32 %890, 268435455, !mcsema_real_eip !185
  %892 = and i32 %891, 16, !mcsema_real_eip !185
  %893 = icmp ne i32 %892, 0, !mcsema_real_eip !185
  store i1 %893, i1* %AF, !mcsema_real_eip !185
  %894 = trunc i32 %889 to i8, !mcsema_real_eip !185
  %895 = call i8 @llvm.ctpop.i8(i8 %894), !mcsema_real_eip !185
  %896 = trunc i8 %895 to i1, !mcsema_real_eip !185
  %897 = xor i1 %896, true, !mcsema_real_eip !185
  store i1 %897, i1* %PF, !mcsema_real_eip !185
  %898 = icmp eq i32 %889, 0, !mcsema_real_eip !185
  store i1 %898, i1* %ZF, !mcsema_real_eip !185
  %899 = lshr i32 %889, 31, !mcsema_real_eip !185
  %900 = trunc i32 %899 to i1, !mcsema_real_eip !185
  store i1 %900, i1* %SF, !mcsema_real_eip !185
  %901 = icmp ult i32 %888, 268435455, !mcsema_real_eip !185
  store i1 %901, i1* %CF, !mcsema_real_eip !185
  %902 = xor i32 %888, 268435455, !mcsema_real_eip !185
  %903 = and i32 %902, %890, !mcsema_real_eip !185
  %904 = lshr i32 %903, 31, !mcsema_real_eip !185
  %905 = trunc i32 %904 to i1, !mcsema_real_eip !185
  store i1 %905, i1* %OF, !mcsema_real_eip !185
  %906 = or i1 %901, %898, !mcsema_real_eip !186
  br i1 %906, label %block_0x2f6, label %block_0x2ea, !mcsema_real_eip !186

block_0x2ea:                                      ; preds = %block_0x2d2
  %_new_gep_294 = getelementptr i8, i8* %_load_rbp_ptr_290, i64 -4
  %_allin_new_bt_295 = bitcast i8* %_new_gep_294 to i64*
  %907 = ptrtoint i64* %_allin_new_bt_295 to i64, !mcsema_real_eip !187
  %908 = inttoptr i64 %907 to i32*, !mcsema_real_eip !187
  store i32 -22, i32* %908, !mcsema_real_eip !187
  br label %block_0x417, !mcsema_real_eip !188

block_0x2f6:                                      ; preds = %block_0x2d2
  store i64 10000, i64* %XAX, !mcsema_real_eip !189
  %909 = load i32, i32* %887, !mcsema_real_eip !190
  %910 = zext i32 %909 to i64, !mcsema_real_eip !190
  store i64 %910, i64* %XCX, !mcsema_real_eip !190
  %ECX_val.272 = load i32, i32* %ECX.12, !mcsema_real_eip !191
  %911 = xor i32 %ECX_val.272, 13631488, !mcsema_real_eip !191
  store i1 false, i1* %CF, !mcsema_real_eip !191
  store i1 false, i1* %OF, !mcsema_real_eip !191
  %912 = lshr i32 %911, 31, !mcsema_real_eip !191
  %913 = trunc i32 %912 to i1, !mcsema_real_eip !191
  store i1 %913, i1* %SF, !mcsema_real_eip !191
  %914 = icmp eq i32 %911, 0, !mcsema_real_eip !191
  store i1 %914, i1* %ZF, !mcsema_real_eip !191
  %915 = trunc i32 %911 to i8, !mcsema_real_eip !191
  %916 = call i8 @llvm.ctpop.i8(i8 %915), !mcsema_real_eip !191
  %917 = trunc i8 %916 to i1, !mcsema_real_eip !191
  %918 = xor i1 %917, true, !mcsema_real_eip !191
  store i1 %918, i1* %PF, !mcsema_real_eip !191
  store i1 undef, i1* %AF, !mcsema_real_eip !191
  %919 = zext i32 %911 to i64, !mcsema_real_eip !191
  store i64 %919, i64* %XCX, !mcsema_real_eip !191
  %ECX_val.275 = load i32, i32* %ECX.12, !mcsema_real_eip !192
  store i32 %ECX_val.275, i32* %887, !mcsema_real_eip !192
  %_load_rbp_ptr_302 = load i8*, i8** %_RBP_ptr_
  %_new_gep_303 = getelementptr i8, i8* %_load_rbp_ptr_302, i64 -60
  %_allin_new_bt_304 = bitcast i8* %_new_gep_303 to i64*
  %920 = ptrtoint i64* %_allin_new_bt_304 to i64, !mcsema_real_eip !193
  %921 = inttoptr i64 %920 to i32*, !mcsema_real_eip !193
  %922 = load i32, i32* %921, !mcsema_real_eip !193
  %923 = zext i32 %922 to i64, !mcsema_real_eip !193
  store i64 %923, i64* %XCX, !mcsema_real_eip !193
  %ECX_val.278 = load i32, i32* %ECX.12, !mcsema_real_eip !194
  %924 = lshr i32 %ECX_val.278, 3, !mcsema_real_eip !194
  %925 = and i32 %924, 1, !mcsema_real_eip !194
  %926 = icmp ne i32 %925, 0, !mcsema_real_eip !194
  %927 = load i1, i1* %CF, !mcsema_real_eip !194
  %928 = lshr i32 %924, 1, !mcsema_real_eip !194
  %929 = load i1, i1* %OF, !mcsema_real_eip !194
  %930 = and i32 %ECX_val.278, -2147483648, !mcsema_real_eip !194
  %931 = icmp ne i32 %930, 0, !mcsema_real_eip !194
  store i1 %926, i1* %CF, !mcsema_real_eip !194
  %932 = load i1, i1* %ZF, !mcsema_real_eip !194
  %933 = icmp eq i32 %928, 0, !mcsema_real_eip !194
  store i1 %933, i1* %ZF, !mcsema_real_eip !194
  %934 = load i1, i1* %SF, !mcsema_real_eip !194
  store i1 false, i1* %SF, !mcsema_real_eip !194
  %935 = load i1, i1* %PF, !mcsema_real_eip !194
  %936 = trunc i32 %928 to i8, !mcsema_real_eip !194
  %937 = call i8 @llvm.ctpop.i8(i8 %936), !mcsema_real_eip !194
  %938 = trunc i8 %937 to i1, !mcsema_real_eip !194
  %939 = xor i1 %938, true, !mcsema_real_eip !194
  store i1 %939, i1* %PF, !mcsema_real_eip !194
  %940 = zext i32 %928 to i64, !mcsema_real_eip !194
  store i64 %940, i64* %XCX, !mcsema_real_eip !194
  %ECX_val.281 = load i32, i32* %ECX.12, !mcsema_real_eip !195
  store i32 %ECX_val.281, i32* %921, !mcsema_real_eip !195
  %_load_rbp_ptr_308 = load i8*, i8** %_RBP_ptr_
  %_new_gep_309 = getelementptr i8, i8* %_load_rbp_ptr_308, i64 -60
  %_allin_new_bt_310 = bitcast i8* %_new_gep_309 to i64*
  %941 = ptrtoint i64* %_allin_new_bt_310 to i64, !mcsema_real_eip !196
  %942 = inttoptr i64 %941 to i32*, !mcsema_real_eip !196
  %943 = load i32, i32* %942, !mcsema_real_eip !196
  %944 = zext i32 %943 to i64, !mcsema_real_eip !196
  store i64 %944, i64* %XCX, !mcsema_real_eip !196
  %ECX_val.284 = load i32, i32* %ECX.12, !mcsema_real_eip !197
  %945 = sub i32 %ECX_val.284, 226, !mcsema_real_eip !197
  %946 = xor i32 %945, %ECX_val.284, !mcsema_real_eip !197
  %947 = xor i32 %946, 226, !mcsema_real_eip !197
  %948 = and i32 %947, 16, !mcsema_real_eip !197
  %949 = icmp ne i32 %948, 0, !mcsema_real_eip !197
  store i1 %949, i1* %AF, !mcsema_real_eip !197
  %950 = trunc i32 %945 to i8, !mcsema_real_eip !197
  %951 = call i8 @llvm.ctpop.i8(i8 %950), !mcsema_real_eip !197
  %952 = trunc i8 %951 to i1, !mcsema_real_eip !197
  %953 = xor i1 %952, true, !mcsema_real_eip !197
  store i1 %953, i1* %PF, !mcsema_real_eip !197
  %954 = icmp eq i32 %945, 0, !mcsema_real_eip !197
  store i1 %954, i1* %ZF, !mcsema_real_eip !197
  %955 = lshr i32 %945, 31, !mcsema_real_eip !197
  %956 = trunc i32 %955 to i1, !mcsema_real_eip !197
  store i1 %956, i1* %SF, !mcsema_real_eip !197
  %957 = icmp ult i32 %ECX_val.284, 226, !mcsema_real_eip !197
  store i1 %957, i1* %CF, !mcsema_real_eip !197
  %958 = xor i32 %ECX_val.284, 226, !mcsema_real_eip !197
  %959 = and i32 %958, %946, !mcsema_real_eip !197
  %960 = lshr i32 %959, 31, !mcsema_real_eip !197
  %961 = trunc i32 %960 to i1, !mcsema_real_eip !197
  store i1 %961, i1* %OF, !mcsema_real_eip !197
  %962 = zext i32 %945 to i64, !mcsema_real_eip !197
  store i64 %962, i64* %XCX, !mcsema_real_eip !197
  %ECX_val.287 = load i32, i32* %ECX.12, !mcsema_real_eip !198
  store i32 %ECX_val.287, i32* %942, !mcsema_real_eip !198
  %_load_rbp_ptr_314 = load i8*, i8** %_RBP_ptr_
  %_new_gep_315 = getelementptr i8, i8* %_load_rbp_ptr_314, i64 -60
  %_allin_new_bt_316 = bitcast i8* %_new_gep_315 to i64*
  %963 = ptrtoint i64* %_allin_new_bt_316 to i64, !mcsema_real_eip !199
  %964 = inttoptr i64 %963 to i32*, !mcsema_real_eip !199
  %965 = load i32, i32* %964, !mcsema_real_eip !199
  %966 = zext i32 %965 to i64, !mcsema_real_eip !199
  store i64 %966, i64* %XCX, !mcsema_real_eip !199
  %_new_gep_318 = getelementptr i8, i8* %_load_rbp_ptr_314, i64 -68
  %_allin_new_bt_319 = bitcast i8* %_new_gep_318 to i64*
  %EAX_val.291 = load i32, i32* %EAX.9, !mcsema_real_eip !200
  %967 = ptrtoint i64* %_allin_new_bt_319 to i64, !mcsema_real_eip !200
  %968 = inttoptr i64 %967 to i32*, !mcsema_real_eip !200
  store i32 %EAX_val.291, i32* %968, !mcsema_real_eip !200
  %ECX_val.293 = load i32, i32* %ECX.12, !mcsema_real_eip !201
  %969 = zext i32 %ECX_val.293 to i64, !mcsema_real_eip !201
  store i64 %969, i64* %XAX, !mcsema_real_eip !201
  %EDX_val.295 = load i32, i32* %EDX.67, !mcsema_real_eip !202
  store i1 false, i1* %CF, !mcsema_real_eip !202
  store i1 false, i1* %OF, !mcsema_real_eip !202
  store i1 false, i1* %SF, !mcsema_real_eip !202
  store i1 true, i1* %ZF, !mcsema_real_eip !202
  store i1 true, i1* %PF, !mcsema_real_eip !202
  store i1 undef, i1* %AF, !mcsema_real_eip !202
  store i64 0, i64* %XDX, !mcsema_real_eip !202
  %_load_rbp_ptr_320 = load i8*, i8** %_RBP_ptr_
  %_new_gep_321 = getelementptr i8, i8* %_load_rbp_ptr_320, i64 -68
  %_allin_new_bt_322 = bitcast i8* %_new_gep_321 to i64*
  %970 = ptrtoint i64* %_allin_new_bt_322 to i64, !mcsema_real_eip !203
  %971 = inttoptr i64 %970 to i32*, !mcsema_real_eip !203
  %972 = load i32, i32* %971, !mcsema_real_eip !203
  %973 = zext i32 %972 to i64, !mcsema_real_eip !203
  store i64 %973, i64* %XCX, !mcsema_real_eip !203
  %ECX_val.300 = load i32, i32* %ECX.12, !mcsema_real_eip !204
  %EAX_val.302 = load i32, i32* %EAX.9, !mcsema_real_eip !204
  %EDX_val.304 = load i32, i32* %EDX.67, !mcsema_real_eip !204
  %974 = zext i32 %EDX_val.304 to i64, !mcsema_real_eip !204
  %975 = shl i64 %974, 32, !mcsema_real_eip !204
  %976 = sext i32 %EAX_val.302 to i64, !mcsema_real_eip !204
  %977 = or i64 %975, %976, !mcsema_real_eip !204
  %978 = zext i32 %ECX_val.300 to i64, !mcsema_real_eip !204
  %979 = udiv i64 %977, %978, !mcsema_real_eip !204
  %980 = urem i64 %977, %978, !mcsema_real_eip !204
  %981 = trunc i64 %980 to i32, !mcsema_real_eip !204
  %982 = trunc i64 %979 to i32, !mcsema_real_eip !204
  %983 = zext i32 %981 to i64, !mcsema_real_eip !204
  store i64 %983, i64* %XDX, !mcsema_real_eip !204
  %984 = zext i32 %982 to i64, !mcsema_real_eip !204
  store i64 %984, i64* %XAX, !mcsema_real_eip !204
  %_new_gep_324 = getelementptr i8, i8* %_load_rbp_ptr_320, i64 -60
  %_allin_new_bt_325 = bitcast i8* %_new_gep_324 to i64*
  %EAX_val.307 = load i32, i32* %EAX.9, !mcsema_real_eip !205
  %985 = ptrtoint i64* %_allin_new_bt_325 to i64, !mcsema_real_eip !205
  %986 = inttoptr i64 %985 to i32*, !mcsema_real_eip !205
  store i32 %EAX_val.307, i32* %986, !mcsema_real_eip !205
  %_load_rbp_ptr_326 = load i8*, i8** %_RBP_ptr_
  %_new_gep_327 = getelementptr i8, i8* %_load_rbp_ptr_326, i64 -60
  %_allin_new_bt_328 = bitcast i8* %_new_gep_327 to i64*
  %987 = ptrtoint i64* %_allin_new_bt_328 to i64, !mcsema_real_eip !206
  %988 = inttoptr i64 %987 to i32*, !mcsema_real_eip !206
  %989 = load i32, i32* %988, !mcsema_real_eip !206
  %990 = sub i32 %989, 3, !mcsema_real_eip !206
  %991 = xor i32 %990, %989, !mcsema_real_eip !206
  %992 = xor i32 %991, 3, !mcsema_real_eip !206
  %993 = and i32 %992, 16, !mcsema_real_eip !206
  %994 = icmp ne i32 %993, 0, !mcsema_real_eip !206
  store i1 %994, i1* %AF, !mcsema_real_eip !206
  %995 = trunc i32 %990 to i8, !mcsema_real_eip !206
  %996 = call i8 @llvm.ctpop.i8(i8 %995), !mcsema_real_eip !206
  %997 = trunc i8 %996 to i1, !mcsema_real_eip !206
  %998 = xor i1 %997, true, !mcsema_real_eip !206
  store i1 %998, i1* %PF, !mcsema_real_eip !206
  %999 = icmp eq i32 %990, 0, !mcsema_real_eip !206
  store i1 %999, i1* %ZF, !mcsema_real_eip !206
  %1000 = lshr i32 %990, 31, !mcsema_real_eip !206
  %1001 = trunc i32 %1000 to i1, !mcsema_real_eip !206
  store i1 %1001, i1* %SF, !mcsema_real_eip !206
  %1002 = icmp ult i32 %989, 3, !mcsema_real_eip !206
  store i1 %1002, i1* %CF, !mcsema_real_eip !206
  %1003 = xor i32 %989, 3, !mcsema_real_eip !206
  %1004 = and i32 %1003, %991, !mcsema_real_eip !206
  %1005 = lshr i32 %1004, 31, !mcsema_real_eip !206
  %1006 = trunc i32 %1005 to i1, !mcsema_real_eip !206
  store i1 %1006, i1* %OF, !mcsema_real_eip !206
  br i1 %999, label %block_0x343, label %block_0x338, !mcsema_real_eip !207

block_0x338:                                      ; preds = %block_0x2f6
  %1007 = load i32, i32* %988, !mcsema_real_eip !208
  %1008 = zext i32 %1007 to i64, !mcsema_real_eip !208
  store i64 %1008, i64* %XAX, !mcsema_real_eip !208
  %_new_gep_333 = getelementptr i8, i8* %_load_rbp_ptr_326, i64 -4
  %_allin_new_bt_334 = bitcast i8* %_new_gep_333 to i64*
  %EAX_val.328 = load i32, i32* %EAX.9, !mcsema_real_eip !209
  %1009 = ptrtoint i64* %_allin_new_bt_334 to i64, !mcsema_real_eip !209
  %1010 = inttoptr i64 %1009 to i32*, !mcsema_real_eip !209
  store i32 %EAX_val.328, i32* %1010, !mcsema_real_eip !209
  br label %block_0x417, !mcsema_real_eip !210

block_0x343:                                      ; preds = %block_0x2f6
  store i64 4, i64* %XDX, !mcsema_real_eip !211
  %_new_gep_336 = getelementptr i8, i8* %_load_rbp_ptr_326, i64 -20
  %_allin_new_bt_337 = bitcast i8* %_new_gep_336 to i64*
  %1011 = ptrtoint i64* %_allin_new_bt_337 to i64, !mcsema_real_eip !212
  %1012 = inttoptr i64 %1011 to i32*, !mcsema_real_eip !212
  %1013 = load i32, i32* %1012, !mcsema_real_eip !212
  %1014 = zext i32 %1013 to i64, !mcsema_real_eip !212
  store i64 %1014, i64* %XDI, !mcsema_real_eip !212
  %_new_gep_339 = getelementptr i8, i8* %_load_rbp_ptr_326, i64 -16
  %_allin_new_bt_340 = bitcast i8* %_new_gep_339 to i64*
  %1015 = load i64, i64* %_allin_new_bt_340, !mcsema_real_eip !213
  store i64 %1015, i64* %XAX, !mcsema_real_eip !213
  %1016 = add i64 28, %1015, !mcsema_real_eip !214
  %1017 = xor i64 %1016, %1015, !mcsema_real_eip !214
  %1018 = xor i64 %1017, 28, !mcsema_real_eip !214
  %1019 = and i64 %1018, 16, !mcsema_real_eip !214
  %1020 = icmp ne i64 %1019, 0, !mcsema_real_eip !214
  store i1 %1020, i1* %AF, !mcsema_real_eip !214
  %1021 = lshr i64 %1016, 63, !mcsema_real_eip !214
  %1022 = trunc i64 %1021 to i1, !mcsema_real_eip !214
  store i1 %1022, i1* %SF, !mcsema_real_eip !214
  %1023 = icmp eq i64 %1016, 0, !mcsema_real_eip !214
  store i1 %1023, i1* %ZF, !mcsema_real_eip !214
  %1024 = xor i64 %1015, 28, !mcsema_real_eip !214
  %1025 = xor i64 %1024, -1, !mcsema_real_eip !214
  %1026 = and i64 %1025, %1017, !mcsema_real_eip !214
  %1027 = lshr i64 %1026, 63, !mcsema_real_eip !214
  %1028 = and i64 %1027, 1, !mcsema_real_eip !214
  %1029 = trunc i64 %1028 to i1, !mcsema_real_eip !214
  store i1 %1029, i1* %OF, !mcsema_real_eip !214
  %1030 = trunc i64 %1016 to i8, !mcsema_real_eip !214
  %1031 = call i8 @llvm.ctpop.i8(i8 %1030), !mcsema_real_eip !214
  %1032 = trunc i8 %1031 to i1, !mcsema_real_eip !214
  %1033 = xor i1 %1032, true, !mcsema_real_eip !214
  store i1 %1033, i1* %PF, !mcsema_real_eip !214
  %1034 = icmp ult i64 %1016, %1015, !mcsema_real_eip !214
  store i1 %1034, i1* %CF, !mcsema_real_eip !214
  store i64 %1016, i64* %XAX, !mcsema_real_eip !214
  store i64 %1016, i64* %XSI, !mcsema_real_eip !215
  %_load_rsp_ptr_341 = load i8*, i8** %_RSP_ptr_
  %RSP_val.317 = load i64, i64* %XSP, !mcsema_real_eip !216
  %_new_gep_342 = getelementptr i8, i8* %_load_rsp_ptr_341, i64 -8
  %1035 = sub i64 %RSP_val.317, 8, !mcsema_real_eip !216
  %_allin_new_bt_343 = bitcast i8* %_new_gep_342 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_343, !mcsema_real_eip !216
  store volatile i8* %_new_gep_342, i8** %_RSP_ptr_
  store i64 %1035, i64* %XSP, !mcsema_real_eip !216
  %1036 = call x86_64_sysvcc i64 @_read_bytes(i64 %1014, i64 %1016, i64 4)
  %_rsp_fix_432 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_433 = getelementptr i8, i8* %_rsp_fix_432, i64 8
  store i8* %_gep_fix_433, i8** %_RSP_ptr_
  store i64 %1036, i64* %XAX, !mcsema_real_eip !216
  %_load_rbp_ptr_344 = load i8*, i8** %_RBP_ptr_
  %_new_gep_345 = getelementptr i8, i8* %_load_rbp_ptr_344, i64 -64
  %_allin_new_bt_346 = bitcast i8* %_new_gep_345 to i64*
  %EAX_val.320 = load i32, i32* %EAX.9, !mcsema_real_eip !217
  %1037 = ptrtoint i64* %_allin_new_bt_346 to i64, !mcsema_real_eip !217
  %1038 = inttoptr i64 %1037 to i32*, !mcsema_real_eip !217
  store i32 %EAX_val.320, i32* %1038, !mcsema_real_eip !217
  %_load_rbp_ptr_347 = load i8*, i8** %_RBP_ptr_
  %_new_gep_348 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -16
  %_allin_new_bt_349 = bitcast i8* %_new_gep_348 to i64*
  %1039 = load i64, i64* %_allin_new_bt_349, !mcsema_real_eip !218
  store i64 %1039, i64* %XSI, !mcsema_real_eip !218
  %1040 = add i64 %1039, 28, !mcsema_real_eip !219
  %1041 = inttoptr i64 %1040 to i64*, !mcsema_real_eip !219
  %1042 = inttoptr i64 %1040 to i8*, !mcsema_real_eip !219
  %1043 = load i8, i8* %1042, !mcsema_real_eip !219
  %1044 = sext i8 %1043 to i32, !mcsema_real_eip !219
  %1045 = zext i32 %1044 to i64, !mcsema_real_eip !219
  store i64 %1045, i64* %XAX, !mcsema_real_eip !219
  %EAX_val.324 = load i32, i32* %EAX.9, !mcsema_real_eip !220
  %1046 = sub i32 %EAX_val.324, 100, !mcsema_real_eip !220
  %1047 = xor i32 %1046, %EAX_val.324, !mcsema_real_eip !220
  %1048 = xor i32 %1047, 100, !mcsema_real_eip !220
  %1049 = and i32 %1048, 16, !mcsema_real_eip !220
  %1050 = icmp ne i32 %1049, 0, !mcsema_real_eip !220
  store i1 %1050, i1* %AF, !mcsema_real_eip !220
  %1051 = trunc i32 %1046 to i8, !mcsema_real_eip !220
  %1052 = call i8 @llvm.ctpop.i8(i8 %1051), !mcsema_real_eip !220
  %1053 = trunc i8 %1052 to i1, !mcsema_real_eip !220
  %1054 = xor i1 %1053, true, !mcsema_real_eip !220
  store i1 %1054, i1* %PF, !mcsema_real_eip !220
  %1055 = icmp eq i32 %1046, 0, !mcsema_real_eip !220
  store i1 %1055, i1* %ZF, !mcsema_real_eip !220
  %1056 = lshr i32 %1046, 31, !mcsema_real_eip !220
  %1057 = trunc i32 %1056 to i1, !mcsema_real_eip !220
  store i1 %1057, i1* %SF, !mcsema_real_eip !220
  %1058 = icmp ult i32 %EAX_val.324, 100, !mcsema_real_eip !220
  store i1 %1058, i1* %CF, !mcsema_real_eip !220
  %1059 = xor i32 %EAX_val.324, 100, !mcsema_real_eip !220
  %1060 = and i32 %1059, %1047, !mcsema_real_eip !220
  %1061 = lshr i32 %1060, 31, !mcsema_real_eip !220
  %1062 = trunc i32 %1061 to i1, !mcsema_real_eip !220
  store i1 %1062, i1* %OF, !mcsema_real_eip !220
  %1063 = icmp eq i1 %1055, false, !mcsema_real_eip !221
  br i1 %1063, label %block_0x38e, label %block_0x36f, !mcsema_real_eip !221

block_0x36f:                                      ; preds = %block_0x343
  %1064 = load i64, i64* %_allin_new_bt_349, !mcsema_real_eip !222
  store i64 %1064, i64* %XAX, !mcsema_real_eip !222
  %1065 = add i64 %1064, 29, !mcsema_real_eip !223
  %1066 = inttoptr i64 %1065 to i64*, !mcsema_real_eip !223
  %1067 = inttoptr i64 %1065 to i8*, !mcsema_real_eip !223
  %1068 = load i8, i8* %1067, !mcsema_real_eip !223
  %1069 = sext i8 %1068 to i32, !mcsema_real_eip !223
  %1070 = zext i32 %1069 to i64, !mcsema_real_eip !223
  store i64 %1070, i64* %XCX, !mcsema_real_eip !223
  %ECX_val.340 = load i32, i32* %ECX.12, !mcsema_real_eip !224
  %1071 = sub i32 %ECX_val.340, 100, !mcsema_real_eip !224
  %1072 = xor i32 %1071, %ECX_val.340, !mcsema_real_eip !224
  %1073 = xor i32 %1072, 100, !mcsema_real_eip !224
  %1074 = and i32 %1073, 16, !mcsema_real_eip !224
  %1075 = icmp ne i32 %1074, 0, !mcsema_real_eip !224
  store i1 %1075, i1* %AF, !mcsema_real_eip !224
  %1076 = trunc i32 %1071 to i8, !mcsema_real_eip !224
  %1077 = call i8 @llvm.ctpop.i8(i8 %1076), !mcsema_real_eip !224
  %1078 = trunc i8 %1077 to i1, !mcsema_real_eip !224
  %1079 = xor i1 %1078, true, !mcsema_real_eip !224
  store i1 %1079, i1* %PF, !mcsema_real_eip !224
  %1080 = icmp eq i32 %1071, 0, !mcsema_real_eip !224
  store i1 %1080, i1* %ZF, !mcsema_real_eip !224
  %1081 = lshr i32 %1071, 31, !mcsema_real_eip !224
  %1082 = trunc i32 %1081 to i1, !mcsema_real_eip !224
  store i1 %1082, i1* %SF, !mcsema_real_eip !224
  %1083 = icmp ult i32 %ECX_val.340, 100, !mcsema_real_eip !224
  store i1 %1083, i1* %CF, !mcsema_real_eip !224
  %1084 = xor i32 %ECX_val.340, 100, !mcsema_real_eip !224
  %1085 = and i32 %1084, %1072, !mcsema_real_eip !224
  %1086 = lshr i32 %1085, 31, !mcsema_real_eip !224
  %1087 = trunc i32 %1086 to i1, !mcsema_real_eip !224
  store i1 %1087, i1* %OF, !mcsema_real_eip !224
  %1088 = icmp eq i1 %1080, false, !mcsema_real_eip !225
  br i1 %1088, label %block_0x38e, label %block_0x380, !mcsema_real_eip !225

block_0x38e:                                      ; preds = %block_0x36f, %block_0x343
  %1089 = load i64, i64* %_allin_new_bt_349, !mcsema_real_eip !226
  store i64 %1089, i64* %XAX, !mcsema_real_eip !226
  %1090 = add i64 %1089, 28, !mcsema_real_eip !227
  %1091 = inttoptr i64 %1090 to i64*, !mcsema_real_eip !227
  %1092 = inttoptr i64 %1090 to i8*, !mcsema_real_eip !227
  %1093 = load i8, i8* %1092, !mcsema_real_eip !227
  %1094 = sext i8 %1093 to i32, !mcsema_real_eip !227
  %1095 = zext i32 %1094 to i64, !mcsema_real_eip !227
  store i64 %1095, i64* %XCX, !mcsema_real_eip !227
  %1096 = load i64, i64* %_allin_new_bt_349, !mcsema_real_eip !228
  store i64 %1096, i64* %XAX, !mcsema_real_eip !228
  %1097 = add i64 %1096, 29, !mcsema_real_eip !229
  %1098 = inttoptr i64 %1097 to i64*, !mcsema_real_eip !229
  %1099 = inttoptr i64 %1097 to i8*, !mcsema_real_eip !229
  %1100 = load i8, i8* %1099, !mcsema_real_eip !229
  %1101 = sext i8 %1100 to i32, !mcsema_real_eip !229
  %1102 = zext i32 %1101 to i64, !mcsema_real_eip !229
  store i64 %1102, i64* %XDX, !mcsema_real_eip !229
  %ECX_val.334 = load i32, i32* %ECX.12, !mcsema_real_eip !230
  %EDX_val.336 = load i32, i32* %EDX.67, !mcsema_real_eip !230
  %1103 = sub i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  %1104 = xor i32 %1103, %ECX_val.334, !mcsema_real_eip !230
  %1105 = xor i32 %1104, %EDX_val.336, !mcsema_real_eip !230
  %1106 = and i32 %1105, 16, !mcsema_real_eip !230
  %1107 = icmp ne i32 %1106, 0, !mcsema_real_eip !230
  store i1 %1107, i1* %AF, !mcsema_real_eip !230
  %1108 = trunc i32 %1103 to i8, !mcsema_real_eip !230
  %1109 = call i8 @llvm.ctpop.i8(i8 %1108), !mcsema_real_eip !230
  %1110 = trunc i8 %1109 to i1, !mcsema_real_eip !230
  %1111 = xor i1 %1110, true, !mcsema_real_eip !230
  store i1 %1111, i1* %PF, !mcsema_real_eip !230
  %1112 = icmp eq i32 %1103, 0, !mcsema_real_eip !230
  store i1 %1112, i1* %ZF, !mcsema_real_eip !230
  %1113 = lshr i32 %1103, 31, !mcsema_real_eip !230
  %1114 = trunc i32 %1113 to i1, !mcsema_real_eip !230
  store i1 %1114, i1* %SF, !mcsema_real_eip !230
  %1115 = icmp ult i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  store i1 %1115, i1* %CF, !mcsema_real_eip !230
  %1116 = xor i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  %1117 = and i32 %1116, %1104, !mcsema_real_eip !230
  %1118 = lshr i32 %1117, 31, !mcsema_real_eip !230
  %1119 = trunc i32 %1118 to i1, !mcsema_real_eip !230
  store i1 %1119, i1* %OF, !mcsema_real_eip !230
  %1120 = icmp eq i1 %1112, false, !mcsema_real_eip !231
  br i1 %1120, label %block_0x406, label %block_0x3a6, !mcsema_real_eip !231

block_0x3a6:                                      ; preds = %block_0x38e
  store i64 15, i64* %XAX, !mcsema_real_eip !232
  %1121 = load i64, i64* %_allin_new_bt_349, !mcsema_real_eip !233
  store i64 %1121, i64* %XCX, !mcsema_real_eip !233
  %1122 = add i64 %1121, 31, !mcsema_real_eip !234
  %1123 = inttoptr i64 %1122 to i64*, !mcsema_real_eip !234
  %1124 = inttoptr i64 %1122 to i8*, !mcsema_real_eip !234
  %1125 = load i8, i8* %1124, !mcsema_real_eip !234
  %1126 = sext i8 %1125 to i32, !mcsema_real_eip !234
  %1127 = zext i32 %1126 to i64, !mcsema_real_eip !234
  store i64 %1127, i64* %XDX, !mcsema_real_eip !234
  %1128 = load i64, i64* %_allin_new_bt_349, !mcsema_real_eip !235
  store i64 %1128, i64* %XCX, !mcsema_real_eip !235
  %1129 = add i64 %1128, 30, !mcsema_real_eip !236
  %1130 = inttoptr i64 %1129 to i64*, !mcsema_real_eip !236
  %1131 = inttoptr i64 %1129 to i8*, !mcsema_real_eip !236
  %1132 = load i8, i8* %1131, !mcsema_real_eip !236
  %1133 = sext i8 %1132 to i32, !mcsema_real_eip !236
  %1134 = zext i32 %1133 to i64, !mcsema_real_eip !236
  store i64 %1134, i64* %XSI, !mcsema_real_eip !236
  %EDX_val.350 = load i32, i32* %EDX.67, !mcsema_real_eip !237
  %ESI.351 = bitcast i64* %XSI to i32*, !mcsema_real_eip !237
  %ESI_val.352 = load i32, i32* %ESI.351, !mcsema_real_eip !237
  %1135 = sub i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  %1136 = xor i32 %1135, %EDX_val.350, !mcsema_real_eip !237
  %1137 = xor i32 %1136, %ESI_val.352, !mcsema_real_eip !237
  %1138 = and i32 %1137, 16, !mcsema_real_eip !237
  %1139 = icmp ne i32 %1138, 0, !mcsema_real_eip !237
  store i1 %1139, i1* %AF, !mcsema_real_eip !237
  %1140 = trunc i32 %1135 to i8, !mcsema_real_eip !237
  %1141 = call i8 @llvm.ctpop.i8(i8 %1140), !mcsema_real_eip !237
  %1142 = trunc i8 %1141 to i1, !mcsema_real_eip !237
  %1143 = xor i1 %1142, true, !mcsema_real_eip !237
  store i1 %1143, i1* %PF, !mcsema_real_eip !237
  %1144 = icmp eq i32 %1135, 0, !mcsema_real_eip !237
  store i1 %1144, i1* %ZF, !mcsema_real_eip !237
  %1145 = lshr i32 %1135, 31, !mcsema_real_eip !237
  %1146 = trunc i32 %1145 to i1, !mcsema_real_eip !237
  store i1 %1146, i1* %SF, !mcsema_real_eip !237
  %1147 = icmp ult i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  store i1 %1147, i1* %CF, !mcsema_real_eip !237
  %1148 = xor i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  %1149 = and i32 %1148, %1136, !mcsema_real_eip !237
  %1150 = lshr i32 %1149, 31, !mcsema_real_eip !237
  %1151 = trunc i32 %1150 to i1, !mcsema_real_eip !237
  store i1 %1151, i1* %OF, !mcsema_real_eip !237
  %1152 = zext i32 %1135 to i64, !mcsema_real_eip !237
  store i64 %1152, i64* %XDX, !mcsema_real_eip !237
  %EAX_val.354 = load i32, i32* %EAX.9, !mcsema_real_eip !238
  %EDX_val.356 = load i32, i32* %EDX.67, !mcsema_real_eip !238
  %1153 = sub i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  %1154 = xor i32 %1153, %EAX_val.354, !mcsema_real_eip !238
  %1155 = xor i32 %1154, %EDX_val.356, !mcsema_real_eip !238
  %1156 = and i32 %1155, 16, !mcsema_real_eip !238
  %1157 = icmp ne i32 %1156, 0, !mcsema_real_eip !238
  store i1 %1157, i1* %AF, !mcsema_real_eip !238
  %1158 = trunc i32 %1153 to i8, !mcsema_real_eip !238
  %1159 = call i8 @llvm.ctpop.i8(i8 %1158), !mcsema_real_eip !238
  %1160 = trunc i8 %1159 to i1, !mcsema_real_eip !238
  %1161 = xor i1 %1160, true, !mcsema_real_eip !238
  store i1 %1161, i1* %PF, !mcsema_real_eip !238
  %1162 = icmp eq i32 %1153, 0, !mcsema_real_eip !238
  store i1 %1162, i1* %ZF, !mcsema_real_eip !238
  %1163 = lshr i32 %1153, 31, !mcsema_real_eip !238
  %1164 = trunc i32 %1163 to i1, !mcsema_real_eip !238
  store i1 %1164, i1* %SF, !mcsema_real_eip !238
  %1165 = icmp ult i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  store i1 %1165, i1* %CF, !mcsema_real_eip !238
  %1166 = xor i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  %1167 = and i32 %1166, %1154, !mcsema_real_eip !238
  %1168 = lshr i32 %1167, 31, !mcsema_real_eip !238
  %1169 = trunc i32 %1168 to i1, !mcsema_real_eip !238
  store i1 %1169, i1* %OF, !mcsema_real_eip !238
  %1170 = zext i32 %1153 to i64, !mcsema_real_eip !238
  store i64 %1170, i64* %XAX, !mcsema_real_eip !238
  %_new_gep_366 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -20
  %_allin_new_bt_367 = bitcast i8* %_new_gep_366 to i64*
  %1171 = ptrtoint i64* %_allin_new_bt_367 to i64, !mcsema_real_eip !239
  %1172 = inttoptr i64 %1171 to i32*, !mcsema_real_eip !239
  %1173 = load i32, i32* %1172, !mcsema_real_eip !239
  %EAX_val.359 = load i32, i32* %EAX.9, !mcsema_real_eip !239
  %1174 = add i32 %EAX_val.359, %1173, !mcsema_real_eip !239
  %1175 = xor i32 %1174, %1173, !mcsema_real_eip !239
  %1176 = xor i32 %1175, %EAX_val.359, !mcsema_real_eip !239
  %1177 = and i32 %1176, 16, !mcsema_real_eip !239
  %1178 = icmp ne i32 %1177, 0, !mcsema_real_eip !239
  store i1 %1178, i1* %AF, !mcsema_real_eip !239
  %1179 = lshr i32 %1174, 31, !mcsema_real_eip !239
  %1180 = trunc i32 %1179 to i1, !mcsema_real_eip !239
  store i1 %1180, i1* %SF, !mcsema_real_eip !239
  %1181 = icmp eq i32 %1174, 0, !mcsema_real_eip !239
  store i1 %1181, i1* %ZF, !mcsema_real_eip !239
  %1182 = xor i32 %1173, %EAX_val.359, !mcsema_real_eip !239
  %1183 = xor i32 %1182, -1, !mcsema_real_eip !239
  %1184 = and i32 %1183, %1175, !mcsema_real_eip !239
  %1185 = lshr i32 %1184, 31, !mcsema_real_eip !239
  %1186 = and i32 %1185, 1, !mcsema_real_eip !239
  %1187 = trunc i32 %1186 to i1, !mcsema_real_eip !239
  store i1 %1187, i1* %OF, !mcsema_real_eip !239
  %1188 = trunc i32 %1174 to i8, !mcsema_real_eip !239
  %1189 = call i8 @llvm.ctpop.i8(i8 %1188), !mcsema_real_eip !239
  %1190 = trunc i8 %1189 to i1, !mcsema_real_eip !239
  %1191 = xor i1 %1190, true, !mcsema_real_eip !239
  store i1 %1191, i1* %PF, !mcsema_real_eip !239
  %1192 = icmp ult i32 %1174, %1173, !mcsema_real_eip !239
  store i1 %1192, i1* %CF, !mcsema_real_eip !239
  %1193 = zext i32 %1174 to i64, !mcsema_real_eip !239
  store i64 %1193, i64* %XAX, !mcsema_real_eip !239
  %EAX_val.362 = load i32, i32* %EAX.9, !mcsema_real_eip !240
  store i32 %EAX_val.362, i32* %1172, !mcsema_real_eip !240
  %_load_rbp_ptr_371 = load i8*, i8** %_RBP_ptr_
  %_new_gep_372 = getelementptr i8, i8* %_load_rbp_ptr_371, i64 -16
  %_allin_new_bt_373 = bitcast i8* %_new_gep_372 to i64*
  %1194 = load i64, i64* %_allin_new_bt_373, !mcsema_real_eip !241
  store i64 %1194, i64* %XCX, !mcsema_real_eip !241
  %1195 = add i64 %1194, 28, !mcsema_real_eip !242
  %1196 = inttoptr i64 %1195 to i64*, !mcsema_real_eip !242
  %1197 = inttoptr i64 %1195 to i8*, !mcsema_real_eip !242
  %1198 = load i8, i8* %1197, !mcsema_real_eip !242
  %1199 = zext i8 %1198 to i32, !mcsema_real_eip !242
  %1200 = zext i32 %1199 to i64, !mcsema_real_eip !242
  store i64 %1200, i64* %XDI, !mcsema_real_eip !242
  %_load_rsp_ptr_374 = load i8*, i8** %_RSP_ptr_
  %RSP_val.366 = load i64, i64* %XSP, !mcsema_real_eip !243
  %_new_gep_375 = getelementptr i8, i8* %_load_rsp_ptr_374, i64 -8
  %1201 = sub i64 %RSP_val.366, 8, !mcsema_real_eip !243
  %_allin_new_bt_376 = bitcast i8* %_new_gep_375 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_376, !mcsema_real_eip !243
  store volatile i8* %_new_gep_375, i8** %_RSP_ptr_
  store i64 %1201, i64* %XSP, !mcsema_real_eip !243
  %1202 = call x86_64_sysvcc i64 @_to_byte(i64 %1200)
  %_rsp_fix_434 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_435 = getelementptr i8, i8* %_rsp_fix_434, i64 8
  store i8* %_gep_fix_435, i8** %_RSP_ptr_
  store i64 %1202, i64* %XAX, !mcsema_real_eip !243
  %_load_rbp_ptr_377 = load i8*, i8** %_RBP_ptr_
  %_new_gep_378 = getelementptr i8, i8* %_load_rbp_ptr_377, i64 -20
  %_allin_new_bt_379 = bitcast i8* %_new_gep_378 to i64*
  %1203 = ptrtoint i64* %_allin_new_bt_379 to i64, !mcsema_real_eip !244
  %1204 = inttoptr i64 %1203 to i32*, !mcsema_real_eip !244
  %1205 = load i32, i32* %1204, !mcsema_real_eip !244
  %1206 = zext i32 %1205 to i64, !mcsema_real_eip !244
  store i64 %1206, i64* %XDX, !mcsema_real_eip !244
  %EDX_val.369 = load i32, i32* %EDX.67, !mcsema_real_eip !245
  %EAX_val.371 = load i32, i32* %EAX.9, !mcsema_real_eip !245
  %1207 = sub i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  %1208 = xor i32 %1207, %EDX_val.369, !mcsema_real_eip !245
  %1209 = xor i32 %1208, %EAX_val.371, !mcsema_real_eip !245
  %1210 = and i32 %1209, 16, !mcsema_real_eip !245
  %1211 = icmp ne i32 %1210, 0, !mcsema_real_eip !245
  store i1 %1211, i1* %AF, !mcsema_real_eip !245
  %1212 = trunc i32 %1207 to i8, !mcsema_real_eip !245
  %1213 = call i8 @llvm.ctpop.i8(i8 %1212), !mcsema_real_eip !245
  %1214 = trunc i8 %1213 to i1, !mcsema_real_eip !245
  %1215 = xor i1 %1214, true, !mcsema_real_eip !245
  store i1 %1215, i1* %PF, !mcsema_real_eip !245
  %1216 = icmp eq i32 %1207, 0, !mcsema_real_eip !245
  store i1 %1216, i1* %ZF, !mcsema_real_eip !245
  %1217 = lshr i32 %1207, 31, !mcsema_real_eip !245
  %1218 = trunc i32 %1217 to i1, !mcsema_real_eip !245
  store i1 %1218, i1* %SF, !mcsema_real_eip !245
  %1219 = icmp ult i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  store i1 %1219, i1* %CF, !mcsema_real_eip !245
  %1220 = xor i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  %1221 = and i32 %1220, %1208, !mcsema_real_eip !245
  %1222 = lshr i32 %1221, 31, !mcsema_real_eip !245
  %1223 = trunc i32 %1222 to i1, !mcsema_real_eip !245
  store i1 %1223, i1* %OF, !mcsema_real_eip !245
  %1224 = zext i32 %1207 to i64, !mcsema_real_eip !245
  store i64 %1224, i64* %XDX, !mcsema_real_eip !245
  %EDX_val.374 = load i32, i32* %EDX.67, !mcsema_real_eip !246
  store i32 %EDX_val.374, i32* %1204, !mcsema_real_eip !246
  %_load_rbp_ptr_383 = load i8*, i8** %_RBP_ptr_
  %_new_gep_384 = getelementptr i8, i8* %_load_rbp_ptr_383, i64 -20
  %_allin_new_bt_385 = bitcast i8* %_new_gep_384 to i64*
  %1225 = ptrtoint i64* %_allin_new_bt_385 to i64, !mcsema_real_eip !247
  %1226 = inttoptr i64 %1225 to i32*, !mcsema_real_eip !247
  %1227 = load i32, i32* %1226, !mcsema_real_eip !247
  store i1 false, i1* %AF, !mcsema_real_eip !247
  %1228 = trunc i32 %1227 to i8, !mcsema_real_eip !247
  %1229 = call i8 @llvm.ctpop.i8(i8 %1228), !mcsema_real_eip !247
  %1230 = trunc i8 %1229 to i1, !mcsema_real_eip !247
  %1231 = xor i1 %1230, true, !mcsema_real_eip !247
  store i1 %1231, i1* %PF, !mcsema_real_eip !247
  %1232 = icmp eq i32 %1227, 0, !mcsema_real_eip !247
  store i1 %1232, i1* %ZF, !mcsema_real_eip !247
  %1233 = lshr i32 %1227, 31, !mcsema_real_eip !247
  %1234 = trunc i32 %1233 to i1, !mcsema_real_eip !247
  store i1 %1234, i1* %SF, !mcsema_real_eip !247
  store i1 false, i1* %CF, !mcsema_real_eip !247
  store i1 false, i1* %OF, !mcsema_real_eip !247
  %1235 = icmp eq i1 %1232, false, !mcsema_real_eip !248
  br i1 %1235, label %block_0x401, label %block_0x3e4, !mcsema_real_eip !248

block_0x406:                                      ; preds = %block_0x38e
  %_new_gep_387 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -64
  %_allin_new_bt_388 = bitcast i8* %_new_gep_387 to i64*
  %1236 = ptrtoint i64* %_allin_new_bt_388 to i64, !mcsema_real_eip !249
  %1237 = inttoptr i64 %1236 to i32*, !mcsema_real_eip !249
  %1238 = load i32, i32* %1237, !mcsema_real_eip !249
  %1239 = zext i32 %1238 to i64, !mcsema_real_eip !249
  store i64 %1239, i64* %XAX, !mcsema_real_eip !249
  %_new_gep_390 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -20
  %_allin_new_bt_391 = bitcast i8* %_new_gep_390 to i64*
  %EAX_val.344 = load i32, i32* %EAX.9, !mcsema_real_eip !250
  %1240 = ptrtoint i64* %_allin_new_bt_391 to i64, !mcsema_real_eip !250
  %1241 = inttoptr i64 %1240 to i32*, !mcsema_real_eip !250
  store i32 %EAX_val.344, i32* %1241, !mcsema_real_eip !250
  br label %block_0x40c, !mcsema_real_eip !232

block_0x380:                                      ; preds = %block_0x36f
  %_new_gep_393 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -64
  %_allin_new_bt_394 = bitcast i8* %_new_gep_393 to i64*
  %1242 = ptrtoint i64* %_allin_new_bt_394 to i64, !mcsema_real_eip !251
  %1243 = inttoptr i64 %1242 to i32*, !mcsema_real_eip !251
  %1244 = load i32, i32* %1243, !mcsema_real_eip !251
  %1245 = zext i32 %1244 to i64, !mcsema_real_eip !251
  store i64 %1245, i64* %XAX, !mcsema_real_eip !251
  %_new_gep_396 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -20
  %_allin_new_bt_397 = bitcast i8* %_new_gep_396 to i64*
  %1246 = ptrtoint i64* %_allin_new_bt_397 to i64, !mcsema_real_eip !252
  %1247 = inttoptr i64 %1246 to i32*, !mcsema_real_eip !252
  %1248 = load i32, i32* %1247, !mcsema_real_eip !252
  %EAX_val.379 = load i32, i32* %EAX.9, !mcsema_real_eip !252
  %1249 = xor i32 %1248, %EAX_val.379, !mcsema_real_eip !252
  store i1 false, i1* %CF, !mcsema_real_eip !252
  store i1 false, i1* %OF, !mcsema_real_eip !252
  %1250 = lshr i32 %1249, 31, !mcsema_real_eip !252
  %1251 = trunc i32 %1250 to i1, !mcsema_real_eip !252
  store i1 %1251, i1* %SF, !mcsema_real_eip !252
  %1252 = icmp eq i32 %1249, 0, !mcsema_real_eip !252
  store i1 %1252, i1* %ZF, !mcsema_real_eip !252
  %1253 = trunc i32 %1249 to i8, !mcsema_real_eip !252
  %1254 = call i8 @llvm.ctpop.i8(i8 %1253), !mcsema_real_eip !252
  %1255 = trunc i8 %1254 to i1, !mcsema_real_eip !252
  %1256 = xor i1 %1255, true, !mcsema_real_eip !252
  store i1 %1256, i1* %PF, !mcsema_real_eip !252
  store i1 undef, i1* %AF, !mcsema_real_eip !252
  %1257 = zext i32 %1249 to i64, !mcsema_real_eip !252
  store i64 %1257, i64* %XAX, !mcsema_real_eip !252
  %EAX_val.382 = load i32, i32* %EAX.9, !mcsema_real_eip !253
  store i32 %EAX_val.382, i32* %1247, !mcsema_real_eip !253
  br label %block_0x411, !mcsema_real_eip !254

block_0x40c:                                      ; preds = %block_0x401, %block_0x406
  br label %block_0x411, !mcsema_real_eip !255

block_0x3e4:                                      ; preds = %block_0x3a6
  %_new_gep_402 = getelementptr i8, i8* %_load_rbp_ptr_383, i64 -16
  %_allin_new_bt_403 = bitcast i8* %_new_gep_402 to i64*
  %1258 = load i64, i64* %_allin_new_bt_403, !mcsema_real_eip !256
  store i64 %1258, i64* %XAX, !mcsema_real_eip !256
  %1259 = add i64 %1258, 31, !mcsema_real_eip !257
  %1260 = inttoptr i64 %1259 to i64*, !mcsema_real_eip !257
  %1261 = inttoptr i64 %1259 to i8*, !mcsema_real_eip !257
  %1262 = load i8, i8* %1261, !mcsema_real_eip !257
  %1263 = zext i8 %1262 to i32, !mcsema_real_eip !257
  %1264 = zext i32 %1263 to i64, !mcsema_real_eip !257
  store i64 %1264, i64* %XDI, !mcsema_real_eip !257
  %_load_rsp_ptr_404 = load i8*, i8** %_RSP_ptr_
  %RSP_val.386 = load i64, i64* %XSP, !mcsema_real_eip !258
  %_new_gep_405 = getelementptr i8, i8* %_load_rsp_ptr_404, i64 -8
  %1265 = sub i64 %RSP_val.386, 8, !mcsema_real_eip !258
  %_allin_new_bt_406 = bitcast i8* %_new_gep_405 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_406, !mcsema_real_eip !258
  store volatile i8* %_new_gep_405, i8** %_RSP_ptr_
  store i64 %1265, i64* %XSP, !mcsema_real_eip !258
  %1266 = call x86_64_sysvcc i64 @_to_byte(i64 %1264)
  %_rsp_fix_436 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_437 = getelementptr i8, i8* %_rsp_fix_436, i64 8
  store i8* %_gep_fix_437, i8** %_RSP_ptr_
  store i64 %1266, i64* %XAX, !mcsema_real_eip !258
  %EAX_val.388 = load i32, i32* %EAX.9, !mcsema_real_eip !259
  %1267 = sub i32 %EAX_val.388, 4, !mcsema_real_eip !259
  %1268 = xor i32 %1267, %EAX_val.388, !mcsema_real_eip !259
  %1269 = xor i32 %1268, 4, !mcsema_real_eip !259
  %1270 = and i32 %1269, 16, !mcsema_real_eip !259
  %1271 = icmp ne i32 %1270, 0, !mcsema_real_eip !259
  store i1 %1271, i1* %AF, !mcsema_real_eip !259
  %1272 = trunc i32 %1267 to i8, !mcsema_real_eip !259
  %1273 = call i8 @llvm.ctpop.i8(i8 %1272), !mcsema_real_eip !259
  %1274 = trunc i8 %1273 to i1, !mcsema_real_eip !259
  %1275 = xor i1 %1274, true, !mcsema_real_eip !259
  store i1 %1275, i1* %PF, !mcsema_real_eip !259
  %1276 = icmp eq i32 %1267, 0, !mcsema_real_eip !259
  store i1 %1276, i1* %ZF, !mcsema_real_eip !259
  %1277 = lshr i32 %1267, 31, !mcsema_real_eip !259
  %1278 = trunc i32 %1277 to i1, !mcsema_real_eip !259
  store i1 %1278, i1* %SF, !mcsema_real_eip !259
  %1279 = icmp ult i32 %EAX_val.388, 4, !mcsema_real_eip !259
  store i1 %1279, i1* %CF, !mcsema_real_eip !259
  %1280 = xor i32 %EAX_val.388, 4, !mcsema_real_eip !259
  %1281 = and i32 %1280, %1268, !mcsema_real_eip !259
  %1282 = lshr i32 %1281, 31, !mcsema_real_eip !259
  %1283 = trunc i32 %1282 to i1, !mcsema_real_eip !259
  store i1 %1283, i1* %OF, !mcsema_real_eip !259
  br i1 %1276, label %block_0x401, label %block_0x3fa, !mcsema_real_eip !260

block_0x401:                                      ; preds = %block_0x3fa, %block_0x3e4, %block_0x3a6
  br label %block_0x40c, !mcsema_real_eip !261

block_0x411:                                      ; preds = %block_0x40c, %block_0x380
  %_load_rbp_ptr_407 = load i8*, i8** %_RBP_ptr_
  %_new_gep_408 = getelementptr i8, i8* %_load_rbp_ptr_407, i64 -20
  %_allin_new_bt_409 = bitcast i8* %_new_gep_408 to i64*
  %1284 = ptrtoint i64* %_allin_new_bt_409 to i64, !mcsema_real_eip !262
  %1285 = inttoptr i64 %1284 to i32*, !mcsema_real_eip !262
  %1286 = load i32, i32* %1285, !mcsema_real_eip !262
  %1287 = zext i32 %1286 to i64, !mcsema_real_eip !262
  store i64 %1287, i64* %XAX, !mcsema_real_eip !262
  %_new_gep_411 = getelementptr i8, i8* %_load_rbp_ptr_407, i64 -4
  %_allin_new_bt_412 = bitcast i8* %_new_gep_411 to i64*
  %EAX_val.392 = load i32, i32* %EAX.9, !mcsema_real_eip !263
  %1288 = ptrtoint i64* %_allin_new_bt_412 to i64, !mcsema_real_eip !263
  %1289 = inttoptr i64 %1288 to i32*, !mcsema_real_eip !263
  store i32 %EAX_val.392, i32* %1289, !mcsema_real_eip !263
  br label %block_0x417, !mcsema_real_eip !264

block_0x3fa:                                      ; preds = %block_0x3e4
  %_load_rbp_ptr_413 = load i8*, i8** %_RBP_ptr_
  %_new_gep_414 = getelementptr i8, i8* %_load_rbp_ptr_413, i64 -20
  %_allin_new_bt_415 = bitcast i8* %_new_gep_414 to i64*
  %1290 = ptrtoint i64* %_allin_new_bt_415 to i64, !mcsema_real_eip !264
  %1291 = inttoptr i64 %1290 to i32*, !mcsema_real_eip !264
  store i32 -32, i32* %1291, !mcsema_real_eip !264
  br label %block_0x401
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
  %EAX_val.26 = load i32, i32* %EAX.9, !mcsema_real_eip !13
  %48 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !13
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !13
  store i32 %EAX_val.26, i32* %49, !mcsema_real_eip !13
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
  %ECX_val.22 = load i32, i32* %ECX.12, !mcsema_real_eip !20
  %82 = sub i32 %ECX_val.22, 100, !mcsema_real_eip !20
  %83 = xor i32 %82, %ECX_val.22, !mcsema_real_eip !20
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
  %94 = icmp ult i32 %ECX_val.22, 100, !mcsema_real_eip !20
  store i1 %94, i1* %CF, !mcsema_real_eip !20
  %95 = xor i32 %ECX_val.22, 100, !mcsema_real_eip !20
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
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %112 = sub i64 %RSP_val.30, 8, !mcsema_real_eip !26
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_51, !mcsema_real_eip !26
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %112, i64* %XSP, !mcsema_real_eip !26
  %113 = call x86_64_sysvcc i64 @_to_byte(i64 %111)
  %_rsp_fix_416 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_417 = getelementptr i8, i8* %_rsp_fix_416, i64 8
  store i8* %_gep_fix_417, i8** %_RSP_ptr_
  store i64 %113, i64* %XAX, !mcsema_real_eip !26
  %EAX_val.32 = load i32, i32* %EAX.9, !mcsema_real_eip !27
  %114 = sub i32 %EAX_val.32, 9, !mcsema_real_eip !27
  %115 = xor i32 %114, %EAX_val.32, !mcsema_real_eip !27
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
  %126 = icmp ult i32 %EAX_val.32, 9, !mcsema_real_eip !27
  store i1 %126, i1* %CF, !mcsema_real_eip !27
  %127 = xor i32 %EAX_val.32, 9, !mcsema_real_eip !27
  %128 = and i32 %127, %115, !mcsema_real_eip !27
  %129 = lshr i32 %128, 31, !mcsema_real_eip !27
  %130 = trunc i32 %129 to i1, !mcsema_real_eip !27
  store i1 %130, i1* %OF, !mcsema_real_eip !27
  br i1 %123, label %block_0x79, label %block_0x6d, !mcsema_real_eip !28

block_0x417:                                      ; preds = %1459, %1130, %block_0x2ea, %block_0x2c6, %block_0x1cc, %block_0x10e, %block_0xcb, %block_0x98, %block_0x6d, %block_0x4b, %45
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -4
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %131 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !29
  %132 = inttoptr i64 %131 to i32*, !mcsema_real_eip !29
  %_ptr_bt_541 = bitcast i32* %132 to i8*
  %_offset_above_rbp_542 = sub i64 %131, %_local_end_to_int_
  %_pot_address_in_parent_stack_543 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_542
  %_cond1_544 = icmp ugt i8* %_ptr_bt_541, %_local_stack_end_ptr_
  %_cond2_1_545 = icmp ugt i8* %_ptr_bt_541, %_parent_stack_end_ptr_
  %_cond2_2_546 = icmp ult i8* %_ptr_bt_541, %_parent_stack_start_ptr_
  %_cond2_547 = or i1 %_cond2_1_545, %_cond2_2_546
  %_cond4_548 = icmp ule i8* %_pot_address_in_parent_stack_543, %_parent_stack_end_ptr_
  %_cond1_n_cond2_549 = and i1 %_cond1_544, %_cond2_547
  %_cond1_n_cond2_cond3_550 = and i1 %_cond1_n_cond2_549, %_cond4_548
  br i1 %_cond1_n_cond2_cond3_550, label %133, label %134

; <label>:133:                                    ; preds = %block_0x417
  %_address_in_parent_stack_bt_552 = bitcast i8* %_pot_address_in_parent_stack_543 to i32*
  br label %134

; <label>:134:                                    ; preds = %block_0x417, %133
  %135 = phi i32* [ %132, %block_0x417 ], [ %_address_in_parent_stack_bt_552, %133 ]
  %_new_load_553 = load i32, i32* %135
  %136 = zext i32 %_new_load_553 to i64, !mcsema_real_eip !29
  store i64 %136, i64* %XAX, !mcsema_real_eip !29
  %_load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_55, i64 80
  %137 = add i64 80, %RSP_val.35, !mcsema_real_eip !30
  %_trans_p2i_57 = ptrtoint i8* %_new_gep_56 to i64
  %_trans_p2i_58 = ptrtoint i8* %_load_rsp_ptr_55 to i64
  %_trans_xor_59 = xor i64 %_trans_p2i_57, %_trans_p2i_58
  %138 = xor i64 %_trans_xor_59, 80, !mcsema_real_eip !30
  %139 = and i64 %138, 16, !mcsema_real_eip !30
  %140 = icmp ne i64 %139, 0, !mcsema_real_eip !30
  store i1 %140, i1* %AF, !mcsema_real_eip !30
  %141 = lshr i64 %137, 63, !mcsema_real_eip !30
  %142 = trunc i64 %141 to i1, !mcsema_real_eip !30
  store i1 %142, i1* %SF, !mcsema_real_eip !30
  %_trans_icmp_eq_61 = icmp eq i64 %_trans_p2i_57, 0
  store i1 %_trans_icmp_eq_61, i1* %ZF, !mcsema_real_eip !30
  %_trans_xor_63 = xor i64 %_trans_p2i_58, 80
  %143 = xor i64 %_trans_xor_63, -1, !mcsema_real_eip !30
  %144 = and i64 %143, %_trans_xor_59, !mcsema_real_eip !30
  %145 = lshr i64 %144, 63, !mcsema_real_eip !30
  %146 = and i64 %145, 1, !mcsema_real_eip !30
  %147 = trunc i64 %146 to i1, !mcsema_real_eip !30
  store i1 %147, i1* %OF, !mcsema_real_eip !30
  %_trans_trunc_68 = trunc i64 %_trans_p2i_57 to i8
  %148 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_68), !mcsema_real_eip !30
  %149 = trunc i8 %148 to i1, !mcsema_real_eip !30
  %150 = xor i1 %149, true, !mcsema_real_eip !30
  store i1 %150, i1* %PF, !mcsema_real_eip !30
  %_trans_icmp_ne_70 = icmp ne i64 %_trans_p2i_57, %RSP_val.35
  store i1 %_trans_icmp_ne_70, i1* %CF, !mcsema_real_eip !30
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %137, i64* %XSP, !mcsema_real_eip !30
  %_allin_new_bt_72 = bitcast i8* %_new_gep_56 to i64*
  %_ptr_to_int_554 = ptrtoint i64* %_allin_new_bt_72 to i64
  %_offset_above_rbp_557 = sub i64 %_ptr_to_int_554, %_local_end_to_int_
  %_pot_address_in_parent_stack_558 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_557
  %_cond1_559 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_560 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_561 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_562 = or i1 %_cond2_1_560, %_cond2_2_561
  %_cond4_563 = icmp ule i8* %_pot_address_in_parent_stack_558, %_parent_stack_end_ptr_
  %_cond1_n_cond2_564 = and i1 %_cond1_559, %_cond2_562
  %_cond1_n_cond2_cond3_565 = and i1 %_cond1_n_cond2_564, %_cond4_563
  br i1 %_cond1_n_cond2_cond3_565, label %151, label %152

; <label>:151:                                    ; preds = %134
  %_address_in_parent_stack_bt_567 = bitcast i8* %_pot_address_in_parent_stack_558 to i64*
  br label %152

; <label>:152:                                    ; preds = %134, %151
  %153 = phi i64* [ %_allin_new_bt_72, %134 ], [ %_address_in_parent_stack_bt_567, %151 ]
  %_new_load_568 = load i64, i64* %153
  %_new_int2ptr_ = inttoptr i64 %_new_load_568 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_568, i64* %XBP, !mcsema_real_eip !31
  %_new_gep_73 = getelementptr i8, i8* %_new_gep_56, i64 8
  %154 = add i64 %137, 8, !mcsema_real_eip !31
  store volatile i8* %_new_gep_73, i8** %_RSP_ptr_
  store i64 %154, i64* %XSP, !mcsema_real_eip !31
  %_new_gep_75 = getelementptr i8, i8* %_new_gep_73, i64 8
  %155 = add i64 %154, 8, !mcsema_real_eip !32
  %_allin_new_bt_76 = bitcast i8* %_new_gep_73 to i64*
  %_ptr_to_int_569 = ptrtoint i64* %_allin_new_bt_76 to i64
  %_offset_above_rbp_572 = sub i64 %_ptr_to_int_569, %_local_end_to_int_
  %_pot_address_in_parent_stack_573 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_572
  %_cond1_574 = icmp ugt i8* %_new_gep_73, %_local_stack_end_ptr_
  %_cond2_1_575 = icmp ugt i8* %_new_gep_73, %_parent_stack_end_ptr_
  %_cond2_2_576 = icmp ult i8* %_new_gep_73, %_parent_stack_start_ptr_
  %_cond2_577 = or i1 %_cond2_1_575, %_cond2_2_576
  %_cond4_578 = icmp ule i8* %_pot_address_in_parent_stack_573, %_parent_stack_end_ptr_
  %_cond1_n_cond2_579 = and i1 %_cond1_574, %_cond2_577
  %_cond1_n_cond2_cond3_580 = and i1 %_cond1_n_cond2_579, %_cond4_578
  br i1 %_cond1_n_cond2_cond3_580, label %156, label %157

; <label>:156:                                    ; preds = %152
  %_address_in_parent_stack_bt_582 = bitcast i8* %_pot_address_in_parent_stack_573 to i64*
  br label %157

; <label>:157:                                    ; preds = %152, %156
  %158 = phi i64* [ %_allin_new_bt_76, %152 ], [ %_address_in_parent_stack_bt_582, %156 ]
  %_new_load_583 = load i64, i64* %158
  store i64 %_new_load_583, i64* %XIP, !mcsema_real_eip !32
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_
  store i64 %155, i64* %XSP, !mcsema_real_eip !32
  ret void, !mcsema_real_eip !32

block_0x6d:                                       ; preds = %108
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -4
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %159 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !33
  %160 = inttoptr i64 %159 to i32*, !mcsema_real_eip !33
  store i32 -3, i32* %160, !mcsema_real_eip !33
  br label %block_0x417, !mcsema_real_eip !34

block_0x79:                                       ; preds = %108
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -16
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %_ptr_to_int_584 = ptrtoint i64* %_allin_new_bt_82 to i64
  %_offset_above_rbp_587 = sub i64 %_ptr_to_int_584, %_local_end_to_int_
  %_pot_address_in_parent_stack_588 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_587
  %_cond1_589 = icmp ugt i8* %_new_gep_81, %_local_stack_end_ptr_
  %_cond2_1_590 = icmp ugt i8* %_new_gep_81, %_parent_stack_end_ptr_
  %_cond2_2_591 = icmp ult i8* %_new_gep_81, %_parent_stack_start_ptr_
  %_cond2_592 = or i1 %_cond2_1_590, %_cond2_2_591
  %_cond4_593 = icmp ule i8* %_pot_address_in_parent_stack_588, %_parent_stack_end_ptr_
  %_cond1_n_cond2_594 = and i1 %_cond1_589, %_cond2_592
  %_cond1_n_cond2_cond3_595 = and i1 %_cond1_n_cond2_594, %_cond4_593
  br i1 %_cond1_n_cond2_cond3_595, label %161, label %162

; <label>:161:                                    ; preds = %block_0x79
  %_address_in_parent_stack_bt_597 = bitcast i8* %_pot_address_in_parent_stack_588 to i64*
  br label %162

; <label>:162:                                    ; preds = %block_0x79, %161
  %163 = phi i64* [ %_allin_new_bt_82, %block_0x79 ], [ %_address_in_parent_stack_bt_597, %161 ]
  %_new_load_598 = load i64, i64* %163
  store i64 %_new_load_598, i64* %XAX, !mcsema_real_eip !35
  %164 = add i64 %_new_load_598, 2, !mcsema_real_eip !36
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !36
  %166 = inttoptr i64 %164 to i8*, !mcsema_real_eip !36
  %_offset_above_rbp_601 = sub i64 %164, %_local_end_to_int_
  %_pot_address_in_parent_stack_602 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_601
  %_cond1_603 = icmp ugt i8* %166, %_local_stack_end_ptr_
  %_cond2_1_604 = icmp ugt i8* %166, %_parent_stack_end_ptr_
  %_cond2_2_605 = icmp ult i8* %166, %_parent_stack_start_ptr_
  %_cond2_606 = or i1 %_cond2_1_604, %_cond2_2_605
  %_cond4_607 = icmp ule i8* %_pot_address_in_parent_stack_602, %_parent_stack_end_ptr_
  %_cond1_n_cond2_608 = and i1 %_cond1_603, %_cond2_606
  %_cond1_n_cond2_cond3_609 = and i1 %_cond1_n_cond2_608, %_cond4_607
  br i1 %_cond1_n_cond2_cond3_609, label %167, label %168

; <label>:167:                                    ; preds = %162
  br label %168

; <label>:168:                                    ; preds = %162, %167
  %169 = phi i8* [ %166, %162 ], [ %_pot_address_in_parent_stack_602, %167 ]
  %_new_load_611 = load i8, i8* %169
  %170 = zext i8 %_new_load_611 to i32, !mcsema_real_eip !36
  %171 = zext i32 %170 to i64, !mcsema_real_eip !36
  store i64 %171, i64* %XDI, !mcsema_real_eip !36
  %RSP_val.41 = load i64, i64* %XSP, !mcsema_real_eip !37
  %_new_gep_84 = getelementptr i8, i8* %_gep_fix_417, i64 -8
  %172 = sub i64 %RSP_val.41, 8, !mcsema_real_eip !37
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_85, !mcsema_real_eip !37
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_
  store i64 %172, i64* %XSP, !mcsema_real_eip !37
  %173 = call x86_64_sysvcc i64 @_to_byte(i64 %171)
  %_rsp_fix_418 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_419 = getelementptr i8, i8* %_rsp_fix_418, i64 8
  store i8* %_gep_fix_419, i8** %_RSP_ptr_
  store i64 %173, i64* %XAX, !mcsema_real_eip !37
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -24
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %EAX_val.44 = load i32, i32* %EAX.9, !mcsema_real_eip !38
  %174 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !38
  %175 = inttoptr i64 %174 to i32*, !mcsema_real_eip !38
  store i32 %EAX_val.44, i32* %175, !mcsema_real_eip !38
  %_load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_
  %_new_gep_90 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -24
  %_allin_new_bt_91 = bitcast i8* %_new_gep_90 to i64*
  %176 = ptrtoint i64* %_allin_new_bt_91 to i64, !mcsema_real_eip !39
  %177 = inttoptr i64 %176 to i32*, !mcsema_real_eip !39
  %_ptr_bt_614 = bitcast i32* %177 to i8*
  %_offset_above_rbp_615 = sub i64 %176, %_local_end_to_int_
  %_pot_address_in_parent_stack_616 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_615
  %_cond1_617 = icmp ugt i8* %_ptr_bt_614, %_local_stack_end_ptr_
  %_cond2_1_618 = icmp ugt i8* %_ptr_bt_614, %_parent_stack_end_ptr_
  %_cond2_2_619 = icmp ult i8* %_ptr_bt_614, %_parent_stack_start_ptr_
  %_cond2_620 = or i1 %_cond2_1_618, %_cond2_2_619
  %_cond4_621 = icmp ule i8* %_pot_address_in_parent_stack_616, %_parent_stack_end_ptr_
  %_cond1_n_cond2_622 = and i1 %_cond1_617, %_cond2_620
  %_cond1_n_cond2_cond3_623 = and i1 %_cond1_n_cond2_622, %_cond4_621
  br i1 %_cond1_n_cond2_cond3_623, label %178, label %179

; <label>:178:                                    ; preds = %168
  %_address_in_parent_stack_bt_625 = bitcast i8* %_pot_address_in_parent_stack_616 to i32*
  br label %179

; <label>:179:                                    ; preds = %168, %178
  %180 = phi i32* [ %177, %168 ], [ %_address_in_parent_stack_bt_625, %178 ]
  %_new_load_626 = load i32, i32* %180
  %181 = zext i32 %_new_load_626 to i64, !mcsema_real_eip !39
  store i64 %181, i64* %XAX, !mcsema_real_eip !39
  %EAX_val.47 = load i32, i32* %EAX.9, !mcsema_real_eip !40
  %182 = and i32 %EAX_val.47, -2147483648, !mcsema_real_eip !40
  %183 = icmp ne i32 %182, 0, !mcsema_real_eip !40
  %184 = load i1, i1* %CF, !mcsema_real_eip !40
  %185 = shl i32 %EAX_val.47, 1, !mcsema_real_eip !40
  %186 = load i1, i1* %OF, !mcsema_real_eip !40
  %187 = and i32 %185, -2147483648, !mcsema_real_eip !40
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !40
  %189 = xor i1 %188, %183, !mcsema_real_eip !40
  store i1 %189, i1* %OF, !mcsema_real_eip !40
  store i1 %183, i1* %CF, !mcsema_real_eip !40
  %190 = load i1, i1* %ZF, !mcsema_real_eip !40
  %191 = icmp eq i32 %185, 0, !mcsema_real_eip !40
  store i1 %191, i1* %ZF, !mcsema_real_eip !40
  %192 = load i1, i1* %SF, !mcsema_real_eip !40
  %193 = icmp slt i32 %185, 0, !mcsema_real_eip !40
  store i1 %193, i1* %SF, !mcsema_real_eip !40
  %194 = load i1, i1* %PF, !mcsema_real_eip !40
  %195 = trunc i32 %185 to i8, !mcsema_real_eip !40
  %196 = call i8 @llvm.ctpop.i8(i8 %195), !mcsema_real_eip !40
  %197 = trunc i8 %196 to i1, !mcsema_real_eip !40
  %198 = xor i1 %197, true, !mcsema_real_eip !40
  store i1 %198, i1* %PF, !mcsema_real_eip !40
  %199 = zext i32 %185 to i64, !mcsema_real_eip !40
  store i64 %199, i64* %XAX, !mcsema_real_eip !40
  %EAX_val.49 = load i32, i32* %EAX.9, !mcsema_real_eip !41
  %200 = sub i32 %EAX_val.49, 26, !mcsema_real_eip !41
  %201 = xor i32 %200, %EAX_val.49, !mcsema_real_eip !41
  %202 = xor i32 %201, 26, !mcsema_real_eip !41
  %203 = and i32 %202, 16, !mcsema_real_eip !41
  %204 = icmp ne i32 %203, 0, !mcsema_real_eip !41
  store i1 %204, i1* %AF, !mcsema_real_eip !41
  %205 = trunc i32 %200 to i8, !mcsema_real_eip !41
  %206 = call i8 @llvm.ctpop.i8(i8 %205), !mcsema_real_eip !41
  %207 = trunc i8 %206 to i1, !mcsema_real_eip !41
  %208 = xor i1 %207, true, !mcsema_real_eip !41
  store i1 %208, i1* %PF, !mcsema_real_eip !41
  %209 = icmp eq i32 %200, 0, !mcsema_real_eip !41
  store i1 %209, i1* %ZF, !mcsema_real_eip !41
  %210 = lshr i32 %200, 31, !mcsema_real_eip !41
  %211 = trunc i32 %210 to i1, !mcsema_real_eip !41
  store i1 %211, i1* %SF, !mcsema_real_eip !41
  %212 = icmp ult i32 %EAX_val.49, 26, !mcsema_real_eip !41
  store i1 %212, i1* %CF, !mcsema_real_eip !41
  %213 = xor i32 %EAX_val.49, 26, !mcsema_real_eip !41
  %214 = and i32 %213, %201, !mcsema_real_eip !41
  %215 = lshr i32 %214, 31, !mcsema_real_eip !41
  %216 = trunc i32 %215 to i1, !mcsema_real_eip !41
  store i1 %216, i1* %OF, !mcsema_real_eip !41
  br i1 %209, label %block_0xa4, label %block_0x98, !mcsema_real_eip !42

block_0x98:                                       ; preds = %179
  %_new_gep_93 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -4
  %_allin_new_bt_94 = bitcast i8* %_new_gep_93 to i64*
  %217 = ptrtoint i64* %_allin_new_bt_94 to i64, !mcsema_real_eip !43
  %218 = inttoptr i64 %217 to i32*, !mcsema_real_eip !43
  store i32 -4, i32* %218, !mcsema_real_eip !43
  br label %block_0x417, !mcsema_real_eip !44

block_0xa4:                                       ; preds = %179
  %_new_gep_96 = getelementptr i8, i8* %_load_rbp_ptr_89, i64 -16
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %_ptr_to_int_627 = ptrtoint i64* %_allin_new_bt_97 to i64
  %_offset_above_rbp_630 = sub i64 %_ptr_to_int_627, %_local_end_to_int_
  %_pot_address_in_parent_stack_631 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_630
  %_cond1_632 = icmp ugt i8* %_new_gep_96, %_local_stack_end_ptr_
  %_cond2_1_633 = icmp ugt i8* %_new_gep_96, %_parent_stack_end_ptr_
  %_cond2_2_634 = icmp ult i8* %_new_gep_96, %_parent_stack_start_ptr_
  %_cond2_635 = or i1 %_cond2_1_633, %_cond2_2_634
  %_cond4_636 = icmp ule i8* %_pot_address_in_parent_stack_631, %_parent_stack_end_ptr_
  %_cond1_n_cond2_637 = and i1 %_cond1_632, %_cond2_635
  %_cond1_n_cond2_cond3_638 = and i1 %_cond1_n_cond2_637, %_cond4_636
  br i1 %_cond1_n_cond2_cond3_638, label %219, label %220

; <label>:219:                                    ; preds = %block_0xa4
  %_address_in_parent_stack_bt_640 = bitcast i8* %_pot_address_in_parent_stack_631 to i64*
  br label %220

; <label>:220:                                    ; preds = %block_0xa4, %219
  %221 = phi i64* [ %_allin_new_bt_97, %block_0xa4 ], [ %_address_in_parent_stack_bt_640, %219 ]
  %_new_load_641 = load i64, i64* %221
  store i64 %_new_load_641, i64* %XAX, !mcsema_real_eip !45
  %222 = add i64 %_new_load_641, 3, !mcsema_real_eip !46
  %223 = inttoptr i64 %222 to i64*, !mcsema_real_eip !46
  %224 = inttoptr i64 %222 to i8*, !mcsema_real_eip !46
  %_offset_above_rbp_644 = sub i64 %222, %_local_end_to_int_
  %_pot_address_in_parent_stack_645 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_644
  %_cond1_646 = icmp ugt i8* %224, %_local_stack_end_ptr_
  %_cond2_1_647 = icmp ugt i8* %224, %_parent_stack_end_ptr_
  %_cond2_2_648 = icmp ult i8* %224, %_parent_stack_start_ptr_
  %_cond2_649 = or i1 %_cond2_1_647, %_cond2_2_648
  %_cond4_650 = icmp ule i8* %_pot_address_in_parent_stack_645, %_parent_stack_end_ptr_
  %_cond1_n_cond2_651 = and i1 %_cond1_646, %_cond2_649
  %_cond1_n_cond2_cond3_652 = and i1 %_cond1_n_cond2_651, %_cond4_650
  br i1 %_cond1_n_cond2_cond3_652, label %225, label %226

; <label>:225:                                    ; preds = %220
  br label %226

; <label>:226:                                    ; preds = %220, %225
  %227 = phi i8* [ %224, %220 ], [ %_pot_address_in_parent_stack_645, %225 ]
  %_new_load_654 = load i8, i8* %227
  %228 = zext i8 %_new_load_654 to i32, !mcsema_real_eip !46
  %229 = zext i32 %228 to i64, !mcsema_real_eip !46
  store i64 %229, i64* %XDI, !mcsema_real_eip !46
  %_load_rsp_ptr_98 = load i8*, i8** %_RSP_ptr_
  %RSP_val.54 = load i64, i64* %XSP, !mcsema_real_eip !47
  %_new_gep_99 = getelementptr i8, i8* %_load_rsp_ptr_98, i64 -8
  %230 = sub i64 %RSP_val.54, 8, !mcsema_real_eip !47
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_100, !mcsema_real_eip !47
  store volatile i8* %_new_gep_99, i8** %_RSP_ptr_
  store i64 %230, i64* %XSP, !mcsema_real_eip !47
  %231 = call x86_64_sysvcc i64 @_to_byte(i64 %229)
  %_rsp_fix_420 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_421 = getelementptr i8, i8* %_rsp_fix_420, i64 8
  store i8* %_gep_fix_421, i8** %_RSP_ptr_
  store i64 %231, i64* %XAX, !mcsema_real_eip !47
  store i64 2, i64* %XDI, !mcsema_real_eip !48
  %_load_rbp_ptr_101 = load i8*, i8** %_RBP_ptr_
  %_new_gep_102 = getelementptr i8, i8* %_load_rbp_ptr_101, i64 -28
  %_allin_new_bt_103 = bitcast i8* %_new_gep_102 to i64*
  %EAX_val.57 = load i32, i32* %EAX.9, !mcsema_real_eip !49
  %232 = ptrtoint i64* %_allin_new_bt_103 to i64, !mcsema_real_eip !49
  %233 = inttoptr i64 %232 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.57, i32* %233, !mcsema_real_eip !49
  %_load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_
  %_new_gep_105 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -28
  %_allin_new_bt_106 = bitcast i8* %_new_gep_105 to i64*
  %234 = ptrtoint i64* %_allin_new_bt_106 to i64, !mcsema_real_eip !50
  %235 = inttoptr i64 %234 to i32*, !mcsema_real_eip !50
  %_ptr_bt_657 = bitcast i32* %235 to i8*
  %_offset_above_rbp_658 = sub i64 %234, %_local_end_to_int_
  %_pot_address_in_parent_stack_659 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_658
  %_cond1_660 = icmp ugt i8* %_ptr_bt_657, %_local_stack_end_ptr_
  %_cond2_1_661 = icmp ugt i8* %_ptr_bt_657, %_parent_stack_end_ptr_
  %_cond2_2_662 = icmp ult i8* %_ptr_bt_657, %_parent_stack_start_ptr_
  %_cond2_663 = or i1 %_cond2_1_661, %_cond2_2_662
  %_cond4_664 = icmp ule i8* %_pot_address_in_parent_stack_659, %_parent_stack_end_ptr_
  %_cond1_n_cond2_665 = and i1 %_cond1_660, %_cond2_663
  %_cond1_n_cond2_cond3_666 = and i1 %_cond1_n_cond2_665, %_cond4_664
  br i1 %_cond1_n_cond2_cond3_666, label %236, label %237

; <label>:236:                                    ; preds = %226
  %_address_in_parent_stack_bt_668 = bitcast i8* %_pot_address_in_parent_stack_659 to i32*
  br label %237

; <label>:237:                                    ; preds = %226, %236
  %238 = phi i32* [ %235, %226 ], [ %_address_in_parent_stack_bt_668, %236 ]
  %_new_load_669 = load i32, i32* %238
  %239 = zext i32 %_new_load_669 to i64, !mcsema_real_eip !50
  store i64 %239, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.60 = load i32, i32* %EAX.9, !mcsema_real_eip !51
  %240 = add i32 1, %EAX_val.60, !mcsema_real_eip !51
  %241 = xor i32 %240, %EAX_val.60, !mcsema_real_eip !51
  %242 = xor i32 %241, 1, !mcsema_real_eip !51
  %243 = and i32 %242, 16, !mcsema_real_eip !51
  %244 = icmp ne i32 %243, 0, !mcsema_real_eip !51
  store i1 %244, i1* %AF, !mcsema_real_eip !51
  %245 = lshr i32 %240, 31, !mcsema_real_eip !51
  %246 = trunc i32 %245 to i1, !mcsema_real_eip !51
  store i1 %246, i1* %SF, !mcsema_real_eip !51
  %247 = icmp eq i32 %240, 0, !mcsema_real_eip !51
  store i1 %247, i1* %ZF, !mcsema_real_eip !51
  %248 = xor i32 %EAX_val.60, 1, !mcsema_real_eip !51
  %249 = xor i32 %248, -1, !mcsema_real_eip !51
  %250 = and i32 %249, %241, !mcsema_real_eip !51
  %251 = lshr i32 %250, 31, !mcsema_real_eip !51
  %252 = and i32 %251, 1, !mcsema_real_eip !51
  %253 = trunc i32 %252 to i1, !mcsema_real_eip !51
  store i1 %253, i1* %OF, !mcsema_real_eip !51
  %254 = trunc i32 %240 to i8, !mcsema_real_eip !51
  %255 = call i8 @llvm.ctpop.i8(i8 %254), !mcsema_real_eip !51
  %256 = trunc i8 %255 to i1, !mcsema_real_eip !51
  %257 = xor i1 %256, true, !mcsema_real_eip !51
  store i1 %257, i1* %PF, !mcsema_real_eip !51
  %258 = icmp ult i32 %240, %EAX_val.60, !mcsema_real_eip !51
  store i1 %258, i1* %CF, !mcsema_real_eip !51
  %259 = zext i32 %240 to i64, !mcsema_real_eip !51
  store i64 %259, i64* %XAX, !mcsema_real_eip !51
  %EAX_val.62 = load i32, i32* %EAX.9, !mcsema_real_eip !52
  %260 = and i32 %EAX_val.62, -2147483648, !mcsema_real_eip !52
  %261 = icmp eq i32 %260, 0, !mcsema_real_eip !52
  %262 = select i1 %261, i32 0, i32 -1, !mcsema_real_eip !52
  %263 = zext i32 %262 to i64, !mcsema_real_eip !52
  store i64 %263, i64* %XDX, !mcsema_real_eip !52
  %EDI.63 = bitcast i64* %XDI to i32*, !mcsema_real_eip !53
  %EDI_val.64 = load i32, i32* %EDI.63, !mcsema_real_eip !53
  %EDX.67 = bitcast i64* %XDX to i32*, !mcsema_real_eip !53
  %EDX_val.68 = load i32, i32* %EDX.67, !mcsema_real_eip !53
  %264 = zext i32 %EDX_val.68 to i64, !mcsema_real_eip !53
  %265 = shl i64 %264, 32, !mcsema_real_eip !53
  %266 = sext i32 %EAX_val.62 to i64, !mcsema_real_eip !53
  %267 = or i64 %265, %266, !mcsema_real_eip !53
  %268 = sext i32 %EDI_val.64 to i64, !mcsema_real_eip !53
  %269 = sdiv i64 %267, %268, !mcsema_real_eip !53
  %270 = srem i64 %267, %268, !mcsema_real_eip !53
  %271 = trunc i64 %270 to i32, !mcsema_real_eip !53
  %272 = trunc i64 %269 to i32, !mcsema_real_eip !53
  %273 = zext i32 %271 to i64, !mcsema_real_eip !53
  store i64 %273, i64* %XDX, !mcsema_real_eip !53
  %274 = zext i32 %272 to i64, !mcsema_real_eip !53
  store i64 %274, i64* %XAX, !mcsema_real_eip !53
  %EAX_val.70 = load i32, i32* %EAX.9, !mcsema_real_eip !54
  %275 = sub i32 %EAX_val.70, 7, !mcsema_real_eip !54
  %276 = xor i32 %275, %EAX_val.70, !mcsema_real_eip !54
  %277 = xor i32 %276, 7, !mcsema_real_eip !54
  %278 = and i32 %277, 16, !mcsema_real_eip !54
  %279 = icmp ne i32 %278, 0, !mcsema_real_eip !54
  store i1 %279, i1* %AF, !mcsema_real_eip !54
  %280 = trunc i32 %275 to i8, !mcsema_real_eip !54
  %281 = call i8 @llvm.ctpop.i8(i8 %280), !mcsema_real_eip !54
  %282 = trunc i8 %281 to i1, !mcsema_real_eip !54
  %283 = xor i1 %282, true, !mcsema_real_eip !54
  store i1 %283, i1* %PF, !mcsema_real_eip !54
  %284 = icmp eq i32 %275, 0, !mcsema_real_eip !54
  store i1 %284, i1* %ZF, !mcsema_real_eip !54
  %285 = lshr i32 %275, 31, !mcsema_real_eip !54
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !54
  store i1 %286, i1* %SF, !mcsema_real_eip !54
  %287 = icmp ult i32 %EAX_val.70, 7, !mcsema_real_eip !54
  store i1 %287, i1* %CF, !mcsema_real_eip !54
  %288 = xor i32 %EAX_val.70, 7, !mcsema_real_eip !54
  %289 = and i32 %288, %276, !mcsema_real_eip !54
  %290 = lshr i32 %289, 31, !mcsema_real_eip !54
  %291 = trunc i32 %290 to i1, !mcsema_real_eip !54
  store i1 %291, i1* %OF, !mcsema_real_eip !54
  br i1 %284, label %block_0xd7, label %block_0xcb, !mcsema_real_eip !55

block_0xcb:                                       ; preds = %237
  %_new_gep_108 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -4
  %_allin_new_bt_109 = bitcast i8* %_new_gep_108 to i64*
  %292 = ptrtoint i64* %_allin_new_bt_109 to i64, !mcsema_real_eip !56
  %293 = inttoptr i64 %292 to i32*, !mcsema_real_eip !56
  store i32 -5, i32* %293, !mcsema_real_eip !56
  br label %block_0x417, !mcsema_real_eip !57

block_0xd7:                                       ; preds = %237
  %_new_gep_111 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -16
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %_ptr_to_int_670 = ptrtoint i64* %_allin_new_bt_112 to i64
  %_offset_above_rbp_673 = sub i64 %_ptr_to_int_670, %_local_end_to_int_
  %_pot_address_in_parent_stack_674 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_673
  %_cond1_675 = icmp ugt i8* %_new_gep_111, %_local_stack_end_ptr_
  %_cond2_1_676 = icmp ugt i8* %_new_gep_111, %_parent_stack_end_ptr_
  %_cond2_2_677 = icmp ult i8* %_new_gep_111, %_parent_stack_start_ptr_
  %_cond2_678 = or i1 %_cond2_1_676, %_cond2_2_677
  %_cond4_679 = icmp ule i8* %_pot_address_in_parent_stack_674, %_parent_stack_end_ptr_
  %_cond1_n_cond2_680 = and i1 %_cond1_675, %_cond2_678
  %_cond1_n_cond2_cond3_681 = and i1 %_cond1_n_cond2_680, %_cond4_679
  br i1 %_cond1_n_cond2_cond3_681, label %294, label %295

; <label>:294:                                    ; preds = %block_0xd7
  %_address_in_parent_stack_bt_683 = bitcast i8* %_pot_address_in_parent_stack_674 to i64*
  br label %295

; <label>:295:                                    ; preds = %block_0xd7, %294
  %296 = phi i64* [ %_allin_new_bt_112, %block_0xd7 ], [ %_address_in_parent_stack_bt_683, %294 ]
  %_new_load_684 = load i64, i64* %296
  store i64 %_new_load_684, i64* %XAX, !mcsema_real_eip !58
  %297 = add i64 %_new_load_684, 4, !mcsema_real_eip !59
  %298 = inttoptr i64 %297 to i64*, !mcsema_real_eip !59
  %299 = inttoptr i64 %297 to i8*, !mcsema_real_eip !59
  %_offset_above_rbp_687 = sub i64 %297, %_local_end_to_int_
  %_pot_address_in_parent_stack_688 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_687
  %_cond1_689 = icmp ugt i8* %299, %_local_stack_end_ptr_
  %_cond2_1_690 = icmp ugt i8* %299, %_parent_stack_end_ptr_
  %_cond2_2_691 = icmp ult i8* %299, %_parent_stack_start_ptr_
  %_cond2_692 = or i1 %_cond2_1_690, %_cond2_2_691
  %_cond4_693 = icmp ule i8* %_pot_address_in_parent_stack_688, %_parent_stack_end_ptr_
  %_cond1_n_cond2_694 = and i1 %_cond1_689, %_cond2_692
  %_cond1_n_cond2_cond3_695 = and i1 %_cond1_n_cond2_694, %_cond4_693
  br i1 %_cond1_n_cond2_cond3_695, label %300, label %301

; <label>:300:                                    ; preds = %295
  br label %301

; <label>:301:                                    ; preds = %295, %300
  %302 = phi i8* [ %299, %295 ], [ %_pot_address_in_parent_stack_688, %300 ]
  %_new_load_697 = load i8, i8* %302
  %303 = sext i8 %_new_load_697 to i32, !mcsema_real_eip !59
  %304 = zext i32 %303 to i64, !mcsema_real_eip !59
  store i64 %304, i64* %XCX, !mcsema_real_eip !59
  %ECX_val.75 = load i32, i32* %ECX.12, !mcsema_real_eip !60
  %305 = and i32 %ECX_val.75, 15, !mcsema_real_eip !60
  store i1 false, i1* %SF, !mcsema_real_eip !60
  %306 = icmp eq i32 %305, 0, !mcsema_real_eip !60
  store i1 %306, i1* %ZF, !mcsema_real_eip !60
  %307 = trunc i32 %305 to i8, !mcsema_real_eip !60
  %308 = call i8 @llvm.ctpop.i8(i8 %307), !mcsema_real_eip !60
  %309 = trunc i8 %308 to i1, !mcsema_real_eip !60
  %310 = xor i1 %309, true, !mcsema_real_eip !60
  store i1 %310, i1* %PF, !mcsema_real_eip !60
  store i1 false, i1* %OF, !mcsema_real_eip !60
  store i1 false, i1* %CF, !mcsema_real_eip !60
  store i1 undef, i1* %AF, !mcsema_real_eip !60
  %311 = zext i32 %305 to i64, !mcsema_real_eip !60
  store i64 %311, i64* %XCX, !mcsema_real_eip !60
  %ECX_val.77 = load i32, i32* %ECX.12, !mcsema_real_eip !61
  %312 = sub i32 %ECX_val.77, 1, !mcsema_real_eip !61
  %313 = xor i32 %312, %ECX_val.77, !mcsema_real_eip !61
  %314 = xor i32 %313, 1, !mcsema_real_eip !61
  %315 = and i32 %314, 16, !mcsema_real_eip !61
  %316 = icmp ne i32 %315, 0, !mcsema_real_eip !61
  store i1 %316, i1* %AF, !mcsema_real_eip !61
  %317 = trunc i32 %312 to i8, !mcsema_real_eip !61
  %318 = call i8 @llvm.ctpop.i8(i8 %317), !mcsema_real_eip !61
  %319 = trunc i8 %318 to i1, !mcsema_real_eip !61
  %320 = xor i1 %319, true, !mcsema_real_eip !61
  store i1 %320, i1* %PF, !mcsema_real_eip !61
  %321 = icmp eq i32 %312, 0, !mcsema_real_eip !61
  store i1 %321, i1* %ZF, !mcsema_real_eip !61
  %322 = lshr i32 %312, 31, !mcsema_real_eip !61
  %323 = trunc i32 %322 to i1, !mcsema_real_eip !61
  store i1 %323, i1* %SF, !mcsema_real_eip !61
  %324 = icmp ult i32 %ECX_val.77, 1, !mcsema_real_eip !61
  store i1 %324, i1* %CF, !mcsema_real_eip !61
  %325 = xor i32 %ECX_val.77, 1, !mcsema_real_eip !61
  %326 = and i32 %325, %313, !mcsema_real_eip !61
  %327 = lshr i32 %326, 31, !mcsema_real_eip !61
  %328 = trunc i32 %327 to i1, !mcsema_real_eip !61
  store i1 %328, i1* %OF, !mcsema_real_eip !61
  %329 = icmp eq i1 %321, false, !mcsema_real_eip !62
  br i1 %329, label %block_0x10e, label %block_0xeb, !mcsema_real_eip !62

block_0xeb:                                       ; preds = %301
  br i1 %_cond1_n_cond2_cond3_681, label %330, label %331

; <label>:330:                                    ; preds = %block_0xeb
  %_address_in_parent_stack_bt_711 = bitcast i8* %_pot_address_in_parent_stack_674 to i64*
  br label %331

; <label>:331:                                    ; preds = %block_0xeb, %330
  %332 = phi i64* [ %_allin_new_bt_112, %block_0xeb ], [ %_address_in_parent_stack_bt_711, %330 ]
  %_new_load_712 = load i64, i64* %332
  store i64 %_new_load_712, i64* %XAX, !mcsema_real_eip !63
  %333 = add i64 %_new_load_712, 4, !mcsema_real_eip !64
  %334 = inttoptr i64 %333 to i64*, !mcsema_real_eip !64
  %335 = inttoptr i64 %333 to i8*, !mcsema_real_eip !64
  %_offset_above_rbp_715 = sub i64 %333, %_local_end_to_int_
  %_pot_address_in_parent_stack_716 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_715
  %_cond1_717 = icmp ugt i8* %335, %_local_stack_end_ptr_
  %_cond2_1_718 = icmp ugt i8* %335, %_parent_stack_end_ptr_
  %_cond2_2_719 = icmp ult i8* %335, %_parent_stack_start_ptr_
  %_cond2_720 = or i1 %_cond2_1_718, %_cond2_2_719
  %_cond4_721 = icmp ule i8* %_pot_address_in_parent_stack_716, %_parent_stack_end_ptr_
  %_cond1_n_cond2_722 = and i1 %_cond1_717, %_cond2_720
  %_cond1_n_cond2_cond3_723 = and i1 %_cond1_n_cond2_722, %_cond4_721
  br i1 %_cond1_n_cond2_cond3_723, label %336, label %337

; <label>:336:                                    ; preds = %331
  br label %337

; <label>:337:                                    ; preds = %331, %336
  %338 = phi i8* [ %335, %331 ], [ %_pot_address_in_parent_stack_716, %336 ]
  %_new_load_725 = load i8, i8* %338
  %339 = sext i8 %_new_load_725 to i32, !mcsema_real_eip !64
  %340 = zext i32 %339 to i64, !mcsema_real_eip !64
  store i64 %340, i64* %XCX, !mcsema_real_eip !64
  %ECX_val.83 = load i32, i32* %ECX.12, !mcsema_real_eip !65
  %341 = and i32 %ECX_val.83, 240, !mcsema_real_eip !65
  store i1 false, i1* %SF, !mcsema_real_eip !65
  %342 = icmp eq i32 %341, 0, !mcsema_real_eip !65
  store i1 %342, i1* %ZF, !mcsema_real_eip !65
  %343 = trunc i32 %341 to i8, !mcsema_real_eip !65
  %344 = call i8 @llvm.ctpop.i8(i8 %343), !mcsema_real_eip !65
  %345 = trunc i8 %344 to i1, !mcsema_real_eip !65
  %346 = xor i1 %345, true, !mcsema_real_eip !65
  store i1 %346, i1* %PF, !mcsema_real_eip !65
  store i1 false, i1* %OF, !mcsema_real_eip !65
  store i1 false, i1* %CF, !mcsema_real_eip !65
  store i1 undef, i1* %AF, !mcsema_real_eip !65
  %347 = zext i32 %341 to i64, !mcsema_real_eip !65
  store i64 %347, i64* %XCX, !mcsema_real_eip !65
  %ECX_val.85 = load i32, i32* %ECX.12, !mcsema_real_eip !66
  %348 = sub i32 %ECX_val.85, 48, !mcsema_real_eip !66
  %349 = xor i32 %348, %ECX_val.85, !mcsema_real_eip !66
  %350 = xor i32 %349, 48, !mcsema_real_eip !66
  %351 = and i32 %350, 16, !mcsema_real_eip !66
  %352 = icmp ne i32 %351, 0, !mcsema_real_eip !66
  store i1 %352, i1* %AF, !mcsema_real_eip !66
  %353 = trunc i32 %348 to i8, !mcsema_real_eip !66
  %354 = call i8 @llvm.ctpop.i8(i8 %353), !mcsema_real_eip !66
  %355 = trunc i8 %354 to i1, !mcsema_real_eip !66
  %356 = xor i1 %355, true, !mcsema_real_eip !66
  store i1 %356, i1* %PF, !mcsema_real_eip !66
  %357 = icmp eq i32 %348, 0, !mcsema_real_eip !66
  store i1 %357, i1* %ZF, !mcsema_real_eip !66
  %358 = lshr i32 %348, 31, !mcsema_real_eip !66
  %359 = trunc i32 %358 to i1, !mcsema_real_eip !66
  store i1 %359, i1* %SF, !mcsema_real_eip !66
  %360 = icmp ult i32 %ECX_val.85, 48, !mcsema_real_eip !66
  store i1 %360, i1* %CF, !mcsema_real_eip !66
  %361 = xor i32 %ECX_val.85, 48, !mcsema_real_eip !66
  %362 = and i32 %361, %349, !mcsema_real_eip !66
  %363 = lshr i32 %362, 31, !mcsema_real_eip !66
  %364 = trunc i32 %363 to i1, !mcsema_real_eip !66
  store i1 %364, i1* %OF, !mcsema_real_eip !66
  %365 = icmp eq i1 %357, false, !mcsema_real_eip !67
  br i1 %365, label %block_0x10e, label %block_0x102, !mcsema_real_eip !67

block_0x10e:                                      ; preds = %337, %301
  %_new_gep_117 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -4
  %_allin_new_bt_118 = bitcast i8* %_new_gep_117 to i64*
  %366 = ptrtoint i64* %_allin_new_bt_118 to i64, !mcsema_real_eip !68
  %367 = inttoptr i64 %366 to i32*, !mcsema_real_eip !68
  store i32 -6, i32* %367, !mcsema_real_eip !68
  br label %block_0x417, !mcsema_real_eip !69

block_0x102:                                      ; preds = %337
  %_new_gep_120 = getelementptr i8, i8* %_load_rbp_ptr_104, i64 -20
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %368 = ptrtoint i64* %_allin_new_bt_121 to i64, !mcsema_real_eip !70
  %369 = inttoptr i64 %368 to i32*, !mcsema_real_eip !70
  store i32 -4, i32* %369, !mcsema_real_eip !70
  br label %block_0x11a, !mcsema_real_eip !71

block_0x11a:                                      ; preds = %block_0x102
  %_load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_
  %_new_gep_123 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -16
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %_ptr_to_int_726 = ptrtoint i64* %_allin_new_bt_124 to i64
  %_offset_above_rbp_729 = sub i64 %_ptr_to_int_726, %_local_end_to_int_
  %_pot_address_in_parent_stack_730 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_729
  %_cond1_731 = icmp ugt i8* %_new_gep_123, %_local_stack_end_ptr_
  %_cond2_1_732 = icmp ugt i8* %_new_gep_123, %_parent_stack_end_ptr_
  %_cond2_2_733 = icmp ult i8* %_new_gep_123, %_parent_stack_start_ptr_
  %_cond2_734 = or i1 %_cond2_1_732, %_cond2_2_733
  %_cond4_735 = icmp ule i8* %_pot_address_in_parent_stack_730, %_parent_stack_end_ptr_
  %_cond1_n_cond2_736 = and i1 %_cond1_731, %_cond2_734
  %_cond1_n_cond2_cond3_737 = and i1 %_cond1_n_cond2_736, %_cond4_735
  br i1 %_cond1_n_cond2_cond3_737, label %370, label %371

; <label>:370:                                    ; preds = %block_0x11a
  %_address_in_parent_stack_bt_739 = bitcast i8* %_pot_address_in_parent_stack_730 to i64*
  br label %371

; <label>:371:                                    ; preds = %block_0x11a, %370
  %372 = phi i64* [ %_allin_new_bt_124, %block_0x11a ], [ %_address_in_parent_stack_bt_739, %370 ]
  %_new_load_740 = load i64, i64* %372
  store i64 %_new_load_740, i64* %XAX, !mcsema_real_eip !72
  %373 = add i64 %_new_load_740, 5, !mcsema_real_eip !73
  %374 = inttoptr i64 %373 to i64*, !mcsema_real_eip !73
  %375 = inttoptr i64 %373 to i8*, !mcsema_real_eip !73
  %_offset_above_rbp_743 = sub i64 %373, %_local_end_to_int_
  %_pot_address_in_parent_stack_744 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_743
  %_cond1_745 = icmp ugt i8* %375, %_local_stack_end_ptr_
  %_cond2_1_746 = icmp ugt i8* %375, %_parent_stack_end_ptr_
  %_cond2_2_747 = icmp ult i8* %375, %_parent_stack_start_ptr_
  %_cond2_748 = or i1 %_cond2_1_746, %_cond2_2_747
  %_cond4_749 = icmp ule i8* %_pot_address_in_parent_stack_744, %_parent_stack_end_ptr_
  %_cond1_n_cond2_750 = and i1 %_cond1_745, %_cond2_748
  %_cond1_n_cond2_cond3_751 = and i1 %_cond1_n_cond2_750, %_cond4_749
  br i1 %_cond1_n_cond2_cond3_751, label %376, label %377

; <label>:376:                                    ; preds = %371
  br label %377

; <label>:377:                                    ; preds = %371, %376
  %378 = phi i8* [ %375, %371 ], [ %_pot_address_in_parent_stack_744, %376 ]
  %_new_load_753 = load i8, i8* %378
  %379 = sext i8 %_new_load_753 to i32, !mcsema_real_eip !73
  %380 = zext i32 %379 to i64, !mcsema_real_eip !73
  store i64 %380, i64* %XCX, !mcsema_real_eip !73
  %ECX_val.90 = load i32, i32* %ECX.12, !mcsema_real_eip !74
  %381 = and i32 %ECX_val.90, 15, !mcsema_real_eip !74
  store i1 false, i1* %SF, !mcsema_real_eip !74
  %382 = icmp eq i32 %381, 0, !mcsema_real_eip !74
  store i1 %382, i1* %ZF, !mcsema_real_eip !74
  %383 = trunc i32 %381 to i8, !mcsema_real_eip !74
  %384 = call i8 @llvm.ctpop.i8(i8 %383), !mcsema_real_eip !74
  %385 = trunc i8 %384 to i1, !mcsema_real_eip !74
  %386 = xor i1 %385, true, !mcsema_real_eip !74
  store i1 %386, i1* %PF, !mcsema_real_eip !74
  store i1 false, i1* %OF, !mcsema_real_eip !74
  store i1 false, i1* %CF, !mcsema_real_eip !74
  store i1 undef, i1* %AF, !mcsema_real_eip !74
  %387 = zext i32 %381 to i64, !mcsema_real_eip !74
  store i64 %387, i64* %XCX, !mcsema_real_eip !74
  %CL.91 = bitcast i64* %XCX to i8*, !mcsema_real_eip !75
  %CL_val.92 = load i8, i8* %CL.91, !mcsema_real_eip !75
  %DL.93 = bitcast i64* %XDX to i8*, !mcsema_real_eip !75
  store i8 %CL_val.92, i8* %DL.93, !mcsema_real_eip !75
  %_new_gep_126 = getelementptr i8, i8* %_load_rbp_ptr_122, i64 -33
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %388 = ptrtoint i64* %_allin_new_bt_127 to i64, !mcsema_real_eip !76
  %389 = inttoptr i64 %388 to i8*, !mcsema_real_eip !76
  store i8 %CL_val.92, i8* %389, !mcsema_real_eip !76
  %_load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_
  %_new_gep_129 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -16
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %_ptr_to_int_754 = ptrtoint i64* %_allin_new_bt_130 to i64
  %_offset_above_rbp_757 = sub i64 %_ptr_to_int_754, %_local_end_to_int_
  %_pot_address_in_parent_stack_758 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_757
  %_cond1_759 = icmp ugt i8* %_new_gep_129, %_local_stack_end_ptr_
  %_cond2_1_760 = icmp ugt i8* %_new_gep_129, %_parent_stack_end_ptr_
  %_cond2_2_761 = icmp ult i8* %_new_gep_129, %_parent_stack_start_ptr_
  %_cond2_762 = or i1 %_cond2_1_760, %_cond2_2_761
  %_cond4_763 = icmp ule i8* %_pot_address_in_parent_stack_758, %_parent_stack_end_ptr_
  %_cond1_n_cond2_764 = and i1 %_cond1_759, %_cond2_762
  %_cond1_n_cond2_cond3_765 = and i1 %_cond1_n_cond2_764, %_cond4_763
  br i1 %_cond1_n_cond2_cond3_765, label %390, label %391

; <label>:390:                                    ; preds = %377
  %_address_in_parent_stack_bt_767 = bitcast i8* %_pot_address_in_parent_stack_758 to i64*
  br label %391

; <label>:391:                                    ; preds = %377, %390
  %392 = phi i64* [ %_allin_new_bt_130, %377 ], [ %_address_in_parent_stack_bt_767, %390 ]
  %_new_load_768 = load i64, i64* %392
  store i64 %_new_load_768, i64* %XAX, !mcsema_real_eip !77
  %393 = add i64 %_new_load_768, 5, !mcsema_real_eip !78
  %394 = inttoptr i64 %393 to i64*, !mcsema_real_eip !78
  %395 = inttoptr i64 %393 to i8*, !mcsema_real_eip !78
  %_offset_above_rbp_771 = sub i64 %393, %_local_end_to_int_
  %_pot_address_in_parent_stack_772 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_771
  %_cond1_773 = icmp ugt i8* %395, %_local_stack_end_ptr_
  %_cond2_1_774 = icmp ugt i8* %395, %_parent_stack_end_ptr_
  %_cond2_2_775 = icmp ult i8* %395, %_parent_stack_start_ptr_
  %_cond2_776 = or i1 %_cond2_1_774, %_cond2_2_775
  %_cond4_777 = icmp ule i8* %_pot_address_in_parent_stack_772, %_parent_stack_end_ptr_
  %_cond1_n_cond2_778 = and i1 %_cond1_773, %_cond2_776
  %_cond1_n_cond2_cond3_779 = and i1 %_cond1_n_cond2_778, %_cond4_777
  br i1 %_cond1_n_cond2_cond3_779, label %396, label %397

; <label>:396:                                    ; preds = %391
  br label %397

; <label>:397:                                    ; preds = %391, %396
  %398 = phi i8* [ %395, %391 ], [ %_pot_address_in_parent_stack_772, %396 ]
  %_new_load_781 = load i8, i8* %398
  %399 = sext i8 %_new_load_781 to i32, !mcsema_real_eip !78
  %400 = zext i32 %399 to i64, !mcsema_real_eip !78
  store i64 %400, i64* %XCX, !mcsema_real_eip !78
  %ECX_val.100 = load i32, i32* %ECX.12, !mcsema_real_eip !79
  %401 = and i32 %ECX_val.100, 240, !mcsema_real_eip !79
  store i1 false, i1* %SF, !mcsema_real_eip !79
  %402 = icmp eq i32 %401, 0, !mcsema_real_eip !79
  store i1 %402, i1* %ZF, !mcsema_real_eip !79
  %403 = trunc i32 %401 to i8, !mcsema_real_eip !79
  %404 = call i8 @llvm.ctpop.i8(i8 %403), !mcsema_real_eip !79
  %405 = trunc i8 %404 to i1, !mcsema_real_eip !79
  %406 = xor i1 %405, true, !mcsema_real_eip !79
  store i1 %406, i1* %PF, !mcsema_real_eip !79
  store i1 false, i1* %OF, !mcsema_real_eip !79
  store i1 false, i1* %CF, !mcsema_real_eip !79
  store i1 undef, i1* %AF, !mcsema_real_eip !79
  %407 = zext i32 %401 to i64, !mcsema_real_eip !79
  store i64 %407, i64* %XCX, !mcsema_real_eip !79
  %CL_val.102 = load i8, i8* %CL.91, !mcsema_real_eip !80
  store i8 %CL_val.102, i8* %DL.93, !mcsema_real_eip !80
  %_new_gep_132 = getelementptr i8, i8* %_load_rbp_ptr_128, i64 -34
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %408 = ptrtoint i64* %_allin_new_bt_133 to i64, !mcsema_real_eip !81
  %409 = inttoptr i64 %408 to i8*, !mcsema_real_eip !81
  store i8 %CL_val.102, i8* %409, !mcsema_real_eip !81
  %_load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_
  %_new_gep_135 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -33
  %_allin_new_bt_136 = bitcast i8* %_new_gep_135 to i64*
  %410 = ptrtoint i64* %_allin_new_bt_136 to i64, !mcsema_real_eip !82
  %411 = inttoptr i64 %410 to i8*, !mcsema_real_eip !82
  %_offset_above_rbp_784 = sub i64 %410, %_local_end_to_int_
  %_pot_address_in_parent_stack_785 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_784
  %_cond1_786 = icmp ugt i8* %411, %_local_stack_end_ptr_
  %_cond2_1_787 = icmp ugt i8* %411, %_parent_stack_end_ptr_
  %_cond2_2_788 = icmp ult i8* %411, %_parent_stack_start_ptr_
  %_cond2_789 = or i1 %_cond2_1_787, %_cond2_2_788
  %_cond4_790 = icmp ule i8* %_pot_address_in_parent_stack_785, %_parent_stack_end_ptr_
  %_cond1_n_cond2_791 = and i1 %_cond1_786, %_cond2_789
  %_cond1_n_cond2_cond3_792 = and i1 %_cond1_n_cond2_791, %_cond4_790
  br i1 %_cond1_n_cond2_cond3_792, label %412, label %413

; <label>:412:                                    ; preds = %397
  br label %413

; <label>:413:                                    ; preds = %397, %412
  %414 = phi i8* [ %411, %397 ], [ %_pot_address_in_parent_stack_785, %412 ]
  %_new_load_794 = load i8, i8* %414
  %415 = zext i8 %_new_load_794 to i32, !mcsema_real_eip !82
  %416 = zext i32 %415 to i64, !mcsema_real_eip !82
  store i64 %416, i64* %XCX, !mcsema_real_eip !82
  %ECX_val.109 = load i32, i32* %ECX.12, !mcsema_real_eip !83
  %417 = sub i32 %ECX_val.109, 3, !mcsema_real_eip !83
  %418 = xor i32 %417, %ECX_val.109, !mcsema_real_eip !83
  %419 = xor i32 %418, 3, !mcsema_real_eip !83
  %420 = and i32 %419, 16, !mcsema_real_eip !83
  %421 = icmp ne i32 %420, 0, !mcsema_real_eip !83
  store i1 %421, i1* %AF, !mcsema_real_eip !83
  %422 = trunc i32 %417 to i8, !mcsema_real_eip !83
  %423 = call i8 @llvm.ctpop.i8(i8 %422), !mcsema_real_eip !83
  %424 = trunc i8 %423 to i1, !mcsema_real_eip !83
  %425 = xor i1 %424, true, !mcsema_real_eip !83
  store i1 %425, i1* %PF, !mcsema_real_eip !83
  %426 = icmp eq i32 %417, 0, !mcsema_real_eip !83
  store i1 %426, i1* %ZF, !mcsema_real_eip !83
  %427 = lshr i32 %417, 31, !mcsema_real_eip !83
  %428 = trunc i32 %427 to i1, !mcsema_real_eip !83
  store i1 %428, i1* %SF, !mcsema_real_eip !83
  %429 = icmp ult i32 %ECX_val.109, 3, !mcsema_real_eip !83
  store i1 %429, i1* %CF, !mcsema_real_eip !83
  %430 = xor i32 %ECX_val.109, 3, !mcsema_real_eip !83
  %431 = and i32 %430, %418, !mcsema_real_eip !83
  %432 = lshr i32 %431, 31, !mcsema_real_eip !83
  %433 = trunc i32 %432 to i1, !mcsema_real_eip !83
  store i1 %433, i1* %OF, !mcsema_real_eip !83
  %434 = icmp eq i1 %426, false, !mcsema_real_eip !84
  br i1 %434, label %block_0x165, label %block_0x14a, !mcsema_real_eip !84

block_0x14a:                                      ; preds = %413
  %_new_gep_138 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -34
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %435 = ptrtoint i64* %_allin_new_bt_139 to i64, !mcsema_real_eip !85
  %436 = inttoptr i64 %435 to i8*, !mcsema_real_eip !85
  %_offset_above_rbp_797 = sub i64 %435, %_local_end_to_int_
  %_pot_address_in_parent_stack_798 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_797
  %_cond1_799 = icmp ugt i8* %436, %_local_stack_end_ptr_
  %_cond2_1_800 = icmp ugt i8* %436, %_parent_stack_end_ptr_
  %_cond2_2_801 = icmp ult i8* %436, %_parent_stack_start_ptr_
  %_cond2_802 = or i1 %_cond2_1_800, %_cond2_2_801
  %_cond4_803 = icmp ule i8* %_pot_address_in_parent_stack_798, %_parent_stack_end_ptr_
  %_cond1_n_cond2_804 = and i1 %_cond1_799, %_cond2_802
  %_cond1_n_cond2_cond3_805 = and i1 %_cond1_n_cond2_804, %_cond4_803
  br i1 %_cond1_n_cond2_cond3_805, label %437, label %438

; <label>:437:                                    ; preds = %block_0x14a
  br label %438

; <label>:438:                                    ; preds = %block_0x14a, %437
  %439 = phi i8* [ %436, %block_0x14a ], [ %_pot_address_in_parent_stack_798, %437 ]
  %_new_load_807 = load i8, i8* %439
  %440 = zext i8 %_new_load_807 to i32, !mcsema_real_eip !85
  %441 = zext i32 %440 to i64, !mcsema_real_eip !85
  store i64 %441, i64* %XAX, !mcsema_real_eip !85
  %EAX_val.118 = load i32, i32* %EAX.9, !mcsema_real_eip !86
  %442 = sub i32 %EAX_val.118, 96, !mcsema_real_eip !86
  %443 = xor i32 %442, %EAX_val.118, !mcsema_real_eip !86
  %444 = xor i32 %443, 96, !mcsema_real_eip !86
  %445 = and i32 %444, 16, !mcsema_real_eip !86
  %446 = icmp ne i32 %445, 0, !mcsema_real_eip !86
  store i1 %446, i1* %AF, !mcsema_real_eip !86
  %447 = trunc i32 %442 to i8, !mcsema_real_eip !86
  %448 = call i8 @llvm.ctpop.i8(i8 %447), !mcsema_real_eip !86
  %449 = trunc i8 %448 to i1, !mcsema_real_eip !86
  %450 = xor i1 %449, true, !mcsema_real_eip !86
  store i1 %450, i1* %PF, !mcsema_real_eip !86
  %451 = icmp eq i32 %442, 0, !mcsema_real_eip !86
  store i1 %451, i1* %ZF, !mcsema_real_eip !86
  %452 = lshr i32 %442, 31, !mcsema_real_eip !86
  %453 = trunc i32 %452 to i1, !mcsema_real_eip !86
  store i1 %453, i1* %SF, !mcsema_real_eip !86
  %454 = icmp ult i32 %EAX_val.118, 96, !mcsema_real_eip !86
  store i1 %454, i1* %CF, !mcsema_real_eip !86
  %455 = xor i32 %EAX_val.118, 96, !mcsema_real_eip !86
  %456 = and i32 %455, %443, !mcsema_real_eip !86
  %457 = lshr i32 %456, 31, !mcsema_real_eip !86
  %458 = trunc i32 %457 to i1, !mcsema_real_eip !86
  store i1 %458, i1* %OF, !mcsema_real_eip !86
  %459 = icmp eq i1 %451, false, !mcsema_real_eip !87
  br i1 %459, label %block_0x165, label %block_0x157, !mcsema_real_eip !87

block_0x165:                                      ; preds = %438, %413
  %_new_gep_141 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -20
  %_allin_new_bt_142 = bitcast i8* %_new_gep_141 to i64*
  %460 = ptrtoint i64* %_allin_new_bt_142 to i64, !mcsema_real_eip !88
  %461 = inttoptr i64 %460 to i32*, !mcsema_real_eip !88
  %_ptr_bt_810 = bitcast i32* %461 to i8*
  %_offset_above_rbp_811 = sub i64 %460, %_local_end_to_int_
  %_pot_address_in_parent_stack_812 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_811
  %_cond1_813 = icmp ugt i8* %_ptr_bt_810, %_local_stack_end_ptr_
  %_cond2_1_814 = icmp ugt i8* %_ptr_bt_810, %_parent_stack_end_ptr_
  %_cond2_2_815 = icmp ult i8* %_ptr_bt_810, %_parent_stack_start_ptr_
  %_cond2_816 = or i1 %_cond2_1_814, %_cond2_2_815
  %_cond4_817 = icmp ule i8* %_pot_address_in_parent_stack_812, %_parent_stack_end_ptr_
  %_cond1_n_cond2_818 = and i1 %_cond1_813, %_cond2_816
  %_cond1_n_cond2_cond3_819 = and i1 %_cond1_n_cond2_818, %_cond4_817
  br i1 %_cond1_n_cond2_cond3_819, label %462, label %463

; <label>:462:                                    ; preds = %block_0x165
  %_address_in_parent_stack_bt_821 = bitcast i8* %_pot_address_in_parent_stack_812 to i32*
  br label %463

; <label>:463:                                    ; preds = %block_0x165, %462
  %464 = phi i32* [ %461, %block_0x165 ], [ %_address_in_parent_stack_bt_821, %462 ]
  %_new_load_822 = load i32, i32* %464
  %465 = zext i32 %_new_load_822 to i64, !mcsema_real_eip !88
  store i64 %465, i64* %XAX, !mcsema_real_eip !88
  %EAX_val.112 = load i32, i32* %EAX.9, !mcsema_real_eip !89
  %466 = add i32 5, %EAX_val.112, !mcsema_real_eip !89
  %467 = xor i32 %466, %EAX_val.112, !mcsema_real_eip !89
  %468 = xor i32 %467, 5, !mcsema_real_eip !89
  %469 = and i32 %468, 16, !mcsema_real_eip !89
  %470 = icmp ne i32 %469, 0, !mcsema_real_eip !89
  store i1 %470, i1* %AF, !mcsema_real_eip !89
  %471 = lshr i32 %466, 31, !mcsema_real_eip !89
  %472 = trunc i32 %471 to i1, !mcsema_real_eip !89
  store i1 %472, i1* %SF, !mcsema_real_eip !89
  %473 = icmp eq i32 %466, 0, !mcsema_real_eip !89
  store i1 %473, i1* %ZF, !mcsema_real_eip !89
  %474 = xor i32 %EAX_val.112, 5, !mcsema_real_eip !89
  %475 = xor i32 %474, -1, !mcsema_real_eip !89
  %476 = and i32 %475, %467, !mcsema_real_eip !89
  %477 = lshr i32 %476, 31, !mcsema_real_eip !89
  %478 = and i32 %477, 1, !mcsema_real_eip !89
  %479 = trunc i32 %478 to i1, !mcsema_real_eip !89
  store i1 %479, i1* %OF, !mcsema_real_eip !89
  %480 = trunc i32 %466 to i8, !mcsema_real_eip !89
  %481 = call i8 @llvm.ctpop.i8(i8 %480), !mcsema_real_eip !89
  %482 = trunc i8 %481 to i1, !mcsema_real_eip !89
  %483 = xor i1 %482, true, !mcsema_real_eip !89
  store i1 %483, i1* %PF, !mcsema_real_eip !89
  %484 = icmp ult i32 %466, %EAX_val.112, !mcsema_real_eip !89
  store i1 %484, i1* %CF, !mcsema_real_eip !89
  %485 = zext i32 %466 to i64, !mcsema_real_eip !89
  store i64 %485, i64* %XAX, !mcsema_real_eip !89
  %EAX_val.115 = load i32, i32* %EAX.9, !mcsema_real_eip !90
  store i32 %EAX_val.115, i32* %461, !mcsema_real_eip !90
  br label %block_0x16e, !mcsema_real_eip !85

block_0x16e:                                      ; preds = %567, %463
  %_load_rbp_ptr_146 = load i8*, i8** %_RBP_ptr_
  %_new_gep_147 = getelementptr i8, i8* %_load_rbp_ptr_146, i64 -16
  %_allin_new_bt_148 = bitcast i8* %_new_gep_147 to i64*
  %_ptr_to_int_823 = ptrtoint i64* %_allin_new_bt_148 to i64
  %_offset_above_rbp_826 = sub i64 %_ptr_to_int_823, %_local_end_to_int_
  %_pot_address_in_parent_stack_827 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_826
  %_cond1_828 = icmp ugt i8* %_new_gep_147, %_local_stack_end_ptr_
  %_cond2_1_829 = icmp ugt i8* %_new_gep_147, %_parent_stack_end_ptr_
  %_cond2_2_830 = icmp ult i8* %_new_gep_147, %_parent_stack_start_ptr_
  %_cond2_831 = or i1 %_cond2_1_829, %_cond2_2_830
  %_cond4_832 = icmp ule i8* %_pot_address_in_parent_stack_827, %_parent_stack_end_ptr_
  %_cond1_n_cond2_833 = and i1 %_cond1_828, %_cond2_831
  %_cond1_n_cond2_cond3_834 = and i1 %_cond1_n_cond2_833, %_cond4_832
  br i1 %_cond1_n_cond2_cond3_834, label %486, label %487

; <label>:486:                                    ; preds = %block_0x16e
  %_address_in_parent_stack_bt_836 = bitcast i8* %_pot_address_in_parent_stack_827 to i64*
  br label %487

; <label>:487:                                    ; preds = %block_0x16e, %486
  %488 = phi i64* [ %_allin_new_bt_148, %block_0x16e ], [ %_address_in_parent_stack_bt_836, %486 ]
  %_new_load_837 = load i64, i64* %488
  store i64 %_new_load_837, i64* %XAX, !mcsema_real_eip !91
  %489 = add i64 %_new_load_837, 6, !mcsema_real_eip !92
  %490 = inttoptr i64 %489 to i64*, !mcsema_real_eip !92
  %491 = inttoptr i64 %489 to i8*, !mcsema_real_eip !92
  %_offset_above_rbp_840 = sub i64 %489, %_local_end_to_int_
  %_pot_address_in_parent_stack_841 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_840
  %_cond1_842 = icmp ugt i8* %491, %_local_stack_end_ptr_
  %_cond2_1_843 = icmp ugt i8* %491, %_parent_stack_end_ptr_
  %_cond2_2_844 = icmp ult i8* %491, %_parent_stack_start_ptr_
  %_cond2_845 = or i1 %_cond2_1_843, %_cond2_2_844
  %_cond4_846 = icmp ule i8* %_pot_address_in_parent_stack_841, %_parent_stack_end_ptr_
  %_cond1_n_cond2_847 = and i1 %_cond1_842, %_cond2_845
  %_cond1_n_cond2_cond3_848 = and i1 %_cond1_n_cond2_847, %_cond4_846
  br i1 %_cond1_n_cond2_cond3_848, label %492, label %493

; <label>:492:                                    ; preds = %487
  br label %493

; <label>:493:                                    ; preds = %487, %492
  %494 = phi i8* [ %491, %487 ], [ %_pot_address_in_parent_stack_841, %492 ]
  %_new_load_850 = load i8, i8* %494
  %495 = zext i8 %_new_load_850 to i32, !mcsema_real_eip !92
  %496 = zext i32 %495 to i64, !mcsema_real_eip !92
  store i64 %496, i64* %XDI, !mcsema_real_eip !92
  %_load_rsp_ptr_149 = load i8*, i8** %_RSP_ptr_
  %RSP_val.122 = load i64, i64* %XSP, !mcsema_real_eip !93
  %_new_gep_150 = getelementptr i8, i8* %_load_rsp_ptr_149, i64 -8
  %497 = sub i64 %RSP_val.122, 8, !mcsema_real_eip !93
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_151, !mcsema_real_eip !93
  store volatile i8* %_new_gep_150, i8** %_RSP_ptr_
  store i64 %497, i64* %XSP, !mcsema_real_eip !93
  %498 = call x86_64_sysvcc i64 @_to_byte(i64 %496)
  %_rsp_fix_422 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_423 = getelementptr i8, i8* %_rsp_fix_422, i64 8
  store i8* %_gep_fix_423, i8** %_RSP_ptr_
  store i64 %498, i64* %XAX, !mcsema_real_eip !93
  %AL.123 = bitcast i64* %XAX to i8*, !mcsema_real_eip !94
  %AL_val.124 = load i8, i8* %AL.123, !mcsema_real_eip !94
  store i8 %AL_val.124, i8* %CL.91, !mcsema_real_eip !94
  %_load_rbp_ptr_152 = load i8*, i8** %_RBP_ptr_
  %_new_gep_153 = getelementptr i8, i8* %_load_rbp_ptr_152, i64 -35
  %_allin_new_bt_154 = bitcast i8* %_new_gep_153 to i64*
  %499 = ptrtoint i64* %_allin_new_bt_154 to i64, !mcsema_real_eip !95
  %500 = inttoptr i64 %499 to i8*, !mcsema_real_eip !95
  store i8 %AL_val.124, i8* %500, !mcsema_real_eip !95
  %_load_rbp_ptr_155 = load i8*, i8** %_RBP_ptr_
  %_new_gep_156 = getelementptr i8, i8* %_load_rbp_ptr_155, i64 -16
  %_allin_new_bt_157 = bitcast i8* %_new_gep_156 to i64*
  %_ptr_to_int_851 = ptrtoint i64* %_allin_new_bt_157 to i64
  %_offset_above_rbp_854 = sub i64 %_ptr_to_int_851, %_local_end_to_int_
  %_pot_address_in_parent_stack_855 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_854
  %_cond1_856 = icmp ugt i8* %_new_gep_156, %_local_stack_end_ptr_
  %_cond2_1_857 = icmp ugt i8* %_new_gep_156, %_parent_stack_end_ptr_
  %_cond2_2_858 = icmp ult i8* %_new_gep_156, %_parent_stack_start_ptr_
  %_cond2_859 = or i1 %_cond2_1_857, %_cond2_2_858
  %_cond4_860 = icmp ule i8* %_pot_address_in_parent_stack_855, %_parent_stack_end_ptr_
  %_cond1_n_cond2_861 = and i1 %_cond1_856, %_cond2_859
  %_cond1_n_cond2_cond3_862 = and i1 %_cond1_n_cond2_861, %_cond4_860
  br i1 %_cond1_n_cond2_cond3_862, label %501, label %502

; <label>:501:                                    ; preds = %493
  %_address_in_parent_stack_bt_864 = bitcast i8* %_pot_address_in_parent_stack_855 to i64*
  br label %502

; <label>:502:                                    ; preds = %493, %501
  %503 = phi i64* [ %_allin_new_bt_157, %493 ], [ %_address_in_parent_stack_bt_864, %501 ]
  %_new_load_865 = load i64, i64* %503
  store i64 %_new_load_865, i64* %XDX, !mcsema_real_eip !96
  %504 = add i64 %_new_load_865, 7, !mcsema_real_eip !97
  %505 = inttoptr i64 %504 to i64*, !mcsema_real_eip !97
  %506 = inttoptr i64 %504 to i8*, !mcsema_real_eip !97
  %_offset_above_rbp_868 = sub i64 %504, %_local_end_to_int_
  %_pot_address_in_parent_stack_869 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_868
  %_cond1_870 = icmp ugt i8* %506, %_local_stack_end_ptr_
  %_cond2_1_871 = icmp ugt i8* %506, %_parent_stack_end_ptr_
  %_cond2_2_872 = icmp ult i8* %506, %_parent_stack_start_ptr_
  %_cond2_873 = or i1 %_cond2_1_871, %_cond2_2_872
  %_cond4_874 = icmp ule i8* %_pot_address_in_parent_stack_869, %_parent_stack_end_ptr_
  %_cond1_n_cond2_875 = and i1 %_cond1_870, %_cond2_873
  %_cond1_n_cond2_cond3_876 = and i1 %_cond1_n_cond2_875, %_cond4_874
  br i1 %_cond1_n_cond2_cond3_876, label %507, label %508

; <label>:507:                                    ; preds = %502
  br label %508

; <label>:508:                                    ; preds = %502, %507
  %509 = phi i8* [ %506, %502 ], [ %_pot_address_in_parent_stack_869, %507 ]
  %_new_load_878 = load i8, i8* %509
  %510 = zext i8 %_new_load_878 to i32, !mcsema_real_eip !97
  %511 = zext i32 %510 to i64, !mcsema_real_eip !97
  store i64 %511, i64* %XDI, !mcsema_real_eip !97
  %_load_rsp_ptr_158 = load i8*, i8** %_RSP_ptr_
  %RSP_val.132 = load i64, i64* %XSP, !mcsema_real_eip !98
  %_new_gep_159 = getelementptr i8, i8* %_load_rsp_ptr_158, i64 -8
  %512 = sub i64 %RSP_val.132, 8, !mcsema_real_eip !98
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_160, !mcsema_real_eip !98
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_
  store i64 %512, i64* %XSP, !mcsema_real_eip !98
  %513 = call x86_64_sysvcc i64 @_to_byte(i64 %511)
  %_rsp_fix_424 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_425 = getelementptr i8, i8* %_rsp_fix_424, i64 8
  store i8* %_gep_fix_425, i8** %_RSP_ptr_
  store i64 %513, i64* %XAX, !mcsema_real_eip !98
  %_load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_
  %_new_gep_162 = getelementptr i8, i8* %_load_rbp_ptr_161, i64 -35
  %_allin_new_bt_163 = bitcast i8* %_new_gep_162 to i64*
  %514 = ptrtoint i64* %_allin_new_bt_163 to i64, !mcsema_real_eip !99
  %515 = inttoptr i64 %514 to i8*, !mcsema_real_eip !99
  %_offset_above_rbp_881 = sub i64 %514, %_local_end_to_int_
  %_pot_address_in_parent_stack_882 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_881
  %_cond1_883 = icmp ugt i8* %515, %_local_stack_end_ptr_
  %_cond2_1_884 = icmp ugt i8* %515, %_parent_stack_end_ptr_
  %_cond2_2_885 = icmp ult i8* %515, %_parent_stack_start_ptr_
  %_cond2_886 = or i1 %_cond2_1_884, %_cond2_2_885
  %_cond4_887 = icmp ule i8* %_pot_address_in_parent_stack_882, %_parent_stack_end_ptr_
  %_cond1_n_cond2_888 = and i1 %_cond1_883, %_cond2_886
  %_cond1_n_cond2_cond3_889 = and i1 %_cond1_n_cond2_888, %_cond4_887
  br i1 %_cond1_n_cond2_cond3_889, label %516, label %517

; <label>:516:                                    ; preds = %508
  br label %517

; <label>:517:                                    ; preds = %508, %516
  %518 = phi i8* [ %515, %508 ], [ %_pot_address_in_parent_stack_882, %516 ]
  %_new_load_891 = load i8, i8* %518
  %519 = zext i8 %_new_load_891 to i32, !mcsema_real_eip !99
  %520 = zext i32 %519 to i64, !mcsema_real_eip !99
  store i64 %520, i64* %XDI, !mcsema_real_eip !99
  %EDI_val.135 = load i32, i32* %EDI.63, !mcsema_real_eip !100
  %EAX_val.137 = load i32, i32* %EAX.9, !mcsema_real_eip !100
  %521 = or i32 %EDI_val.135, %EAX_val.137, !mcsema_real_eip !100
  store i1 undef, i1* %AF, !mcsema_real_eip !100
  store i1 false, i1* %OF, !mcsema_real_eip !100
  store i1 false, i1* %CF, !mcsema_real_eip !100
  %522 = lshr i32 %521, 31, !mcsema_real_eip !100
  %523 = trunc i32 %522 to i1, !mcsema_real_eip !100
  store i1 %523, i1* %SF, !mcsema_real_eip !100
  %524 = icmp eq i32 %521, 0, !mcsema_real_eip !100
  store i1 %524, i1* %ZF, !mcsema_real_eip !100
  %525 = trunc i32 %521 to i8, !mcsema_real_eip !100
  %526 = call i8 @llvm.ctpop.i8(i8 %525), !mcsema_real_eip !100
  %527 = trunc i8 %526 to i1, !mcsema_real_eip !100
  %528 = xor i1 %527, true, !mcsema_real_eip !100
  store i1 %528, i1* %PF, !mcsema_real_eip !100
  %529 = zext i32 %521 to i64, !mcsema_real_eip !100
  store i64 %529, i64* %XDI, !mcsema_real_eip !100
  %DIL.138 = bitcast i64* %XDI to i8*, !mcsema_real_eip !101
  %DIL_val.139 = load i8, i8* %DIL.138, !mcsema_real_eip !101
  store i8 %DIL_val.139, i8* %CL.91, !mcsema_real_eip !101
  store i8 %DIL_val.139, i8* %515, !mcsema_real_eip !102
  %_load_rbp_ptr_167 = load i8*, i8** %_RBP_ptr_
  %_new_gep_168 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -35
  %_allin_new_bt_169 = bitcast i8* %_new_gep_168 to i64*
  %530 = ptrtoint i64* %_allin_new_bt_169 to i64, !mcsema_real_eip !103
  %531 = inttoptr i64 %530 to i8*, !mcsema_real_eip !103
  %_offset_above_rbp_894 = sub i64 %530, %_local_end_to_int_
  %_pot_address_in_parent_stack_895 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_894
  %_cond1_896 = icmp ugt i8* %531, %_local_stack_end_ptr_
  %_cond2_1_897 = icmp ugt i8* %531, %_parent_stack_end_ptr_
  %_cond2_2_898 = icmp ult i8* %531, %_parent_stack_start_ptr_
  %_cond2_899 = or i1 %_cond2_1_897, %_cond2_2_898
  %_cond4_900 = icmp ule i8* %_pot_address_in_parent_stack_895, %_parent_stack_end_ptr_
  %_cond1_n_cond2_901 = and i1 %_cond1_896, %_cond2_899
  %_cond1_n_cond2_cond3_902 = and i1 %_cond1_n_cond2_901, %_cond4_900
  br i1 %_cond1_n_cond2_cond3_902, label %532, label %533

; <label>:532:                                    ; preds = %517
  br label %533

; <label>:533:                                    ; preds = %517, %532
  %534 = phi i8* [ %531, %517 ], [ %_pot_address_in_parent_stack_895, %532 ]
  %_new_load_904 = load i8, i8* %534
  %535 = zext i8 %_new_load_904 to i32, !mcsema_real_eip !103
  %536 = zext i32 %535 to i64, !mcsema_real_eip !103
  store i64 %536, i64* %XAX, !mcsema_real_eip !103
  %EAX_val.146 = load i32, i32* %EAX.9, !mcsema_real_eip !104
  %537 = xor i32 %EAX_val.146, -1, !mcsema_real_eip !104
  store i1 false, i1* %CF, !mcsema_real_eip !104
  store i1 false, i1* %OF, !mcsema_real_eip !104
  %538 = lshr i32 %537, 31, !mcsema_real_eip !104
  %539 = trunc i32 %538 to i1, !mcsema_real_eip !104
  store i1 %539, i1* %SF, !mcsema_real_eip !104
  %540 = icmp eq i32 %537, 0, !mcsema_real_eip !104
  store i1 %540, i1* %ZF, !mcsema_real_eip !104
  %541 = trunc i32 %537 to i8, !mcsema_real_eip !104
  %542 = call i8 @llvm.ctpop.i8(i8 %541), !mcsema_real_eip !104
  %543 = trunc i8 %542 to i1, !mcsema_real_eip !104
  %544 = xor i1 %543, true, !mcsema_real_eip !104
  store i1 %544, i1* %PF, !mcsema_real_eip !104
  store i1 undef, i1* %AF, !mcsema_real_eip !104
  %545 = zext i32 %537 to i64, !mcsema_real_eip !104
  store i64 %545, i64* %XAX, !mcsema_real_eip !104
  %EAX_val.148 = load i32, i32* %EAX.9, !mcsema_real_eip !105
  %546 = sub i32 %EAX_val.148, 70, !mcsema_real_eip !105
  %547 = xor i32 %546, %EAX_val.148, !mcsema_real_eip !105
  %548 = xor i32 %547, 70, !mcsema_real_eip !105
  %549 = and i32 %548, 16, !mcsema_real_eip !105
  %550 = icmp ne i32 %549, 0, !mcsema_real_eip !105
  store i1 %550, i1* %AF, !mcsema_real_eip !105
  %551 = trunc i32 %546 to i8, !mcsema_real_eip !105
  %552 = call i8 @llvm.ctpop.i8(i8 %551), !mcsema_real_eip !105
  %553 = trunc i8 %552 to i1, !mcsema_real_eip !105
  %554 = xor i1 %553, true, !mcsema_real_eip !105
  store i1 %554, i1* %PF, !mcsema_real_eip !105
  %555 = icmp eq i32 %546, 0, !mcsema_real_eip !105
  store i1 %555, i1* %ZF, !mcsema_real_eip !105
  %556 = lshr i32 %546, 31, !mcsema_real_eip !105
  %557 = trunc i32 %556 to i1, !mcsema_real_eip !105
  store i1 %557, i1* %SF, !mcsema_real_eip !105
  %558 = icmp ult i32 %EAX_val.148, 70, !mcsema_real_eip !105
  store i1 %558, i1* %CF, !mcsema_real_eip !105
  %559 = xor i32 %EAX_val.148, 70, !mcsema_real_eip !105
  %560 = and i32 %559, %547, !mcsema_real_eip !105
  %561 = lshr i32 %560, 31, !mcsema_real_eip !105
  %562 = trunc i32 %561 to i1, !mcsema_real_eip !105
  store i1 %562, i1* %OF, !mcsema_real_eip !105
  %563 = icmp eq i1 %555, false, !mcsema_real_eip !106
  br i1 %563, label %block_0x1b7, label %block_0x1a9, !mcsema_real_eip !106

block_0x157:                                      ; preds = %438
  %_new_gep_171 = getelementptr i8, i8* %_load_rbp_ptr_134, i64 -20
  %_allin_new_bt_172 = bitcast i8* %_new_gep_171 to i64*
  %564 = ptrtoint i64* %_allin_new_bt_172 to i64, !mcsema_real_eip !107
  %565 = inttoptr i64 %564 to i32*, !mcsema_real_eip !107
  %_ptr_bt_907 = bitcast i32* %565 to i8*
  %_offset_above_rbp_908 = sub i64 %564, %_local_end_to_int_
  %_pot_address_in_parent_stack_909 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_908
  %_cond1_910 = icmp ugt i8* %_ptr_bt_907, %_local_stack_end_ptr_
  %_cond2_1_911 = icmp ugt i8* %_ptr_bt_907, %_parent_stack_end_ptr_
  %_cond2_2_912 = icmp ult i8* %_ptr_bt_907, %_parent_stack_start_ptr_
  %_cond2_913 = or i1 %_cond2_1_911, %_cond2_2_912
  %_cond4_914 = icmp ule i8* %_pot_address_in_parent_stack_909, %_parent_stack_end_ptr_
  %_cond1_n_cond2_915 = and i1 %_cond1_910, %_cond2_913
  %_cond1_n_cond2_cond3_916 = and i1 %_cond1_n_cond2_915, %_cond4_914
  br i1 %_cond1_n_cond2_cond3_916, label %566, label %567

; <label>:566:                                    ; preds = %block_0x157
  %_address_in_parent_stack_bt_918 = bitcast i8* %_pot_address_in_parent_stack_909 to i32*
  br label %567

; <label>:567:                                    ; preds = %block_0x157, %566
  %568 = phi i32* [ %565, %block_0x157 ], [ %_address_in_parent_stack_bt_918, %566 ]
  %_new_load_919 = load i32, i32* %568
  %569 = zext i32 %_new_load_919 to i64, !mcsema_real_eip !107
  store i64 %569, i64* %XAX, !mcsema_real_eip !107
  %EAX_val.151 = load i32, i32* %EAX.9, !mcsema_real_eip !108
  %570 = add i32 4, %EAX_val.151, !mcsema_real_eip !108
  %571 = xor i32 %570, %EAX_val.151, !mcsema_real_eip !108
  %572 = xor i32 %571, 4, !mcsema_real_eip !108
  %573 = and i32 %572, 16, !mcsema_real_eip !108
  %574 = icmp ne i32 %573, 0, !mcsema_real_eip !108
  store i1 %574, i1* %AF, !mcsema_real_eip !108
  %575 = lshr i32 %570, 31, !mcsema_real_eip !108
  %576 = trunc i32 %575 to i1, !mcsema_real_eip !108
  store i1 %576, i1* %SF, !mcsema_real_eip !108
  %577 = icmp eq i32 %570, 0, !mcsema_real_eip !108
  store i1 %577, i1* %ZF, !mcsema_real_eip !108
  %578 = xor i32 %EAX_val.151, 4, !mcsema_real_eip !108
  %579 = xor i32 %578, -1, !mcsema_real_eip !108
  %580 = and i32 %579, %571, !mcsema_real_eip !108
  %581 = lshr i32 %580, 31, !mcsema_real_eip !108
  %582 = and i32 %581, 1, !mcsema_real_eip !108
  %583 = trunc i32 %582 to i1, !mcsema_real_eip !108
  store i1 %583, i1* %OF, !mcsema_real_eip !108
  %584 = trunc i32 %570 to i8, !mcsema_real_eip !108
  %585 = call i8 @llvm.ctpop.i8(i8 %584), !mcsema_real_eip !108
  %586 = trunc i8 %585 to i1, !mcsema_real_eip !108
  %587 = xor i1 %586, true, !mcsema_real_eip !108
  store i1 %587, i1* %PF, !mcsema_real_eip !108
  %588 = icmp ult i32 %570, %EAX_val.151, !mcsema_real_eip !108
  store i1 %588, i1* %CF, !mcsema_real_eip !108
  %589 = zext i32 %570 to i64, !mcsema_real_eip !108
  store i64 %589, i64* %XAX, !mcsema_real_eip !108
  %EAX_val.154 = load i32, i32* %EAX.9, !mcsema_real_eip !109
  store i32 %EAX_val.154, i32* %565, !mcsema_real_eip !109
  br label %block_0x16e, !mcsema_real_eip !110

block_0x1a9:                                      ; preds = %533
  %_new_gep_177 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -20
  %_allin_new_bt_178 = bitcast i8* %_new_gep_177 to i64*
  %590 = ptrtoint i64* %_allin_new_bt_178 to i64, !mcsema_real_eip !111
  %591 = inttoptr i64 %590 to i32*, !mcsema_real_eip !111
  %_ptr_bt_922 = bitcast i32* %591 to i8*
  %_offset_above_rbp_923 = sub i64 %590, %_local_end_to_int_
  %_pot_address_in_parent_stack_924 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_923
  %_cond1_925 = icmp ugt i8* %_ptr_bt_922, %_local_stack_end_ptr_
  %_cond2_1_926 = icmp ugt i8* %_ptr_bt_922, %_parent_stack_end_ptr_
  %_cond2_2_927 = icmp ult i8* %_ptr_bt_922, %_parent_stack_start_ptr_
  %_cond2_928 = or i1 %_cond2_1_926, %_cond2_2_927
  %_cond4_929 = icmp ule i8* %_pot_address_in_parent_stack_924, %_parent_stack_end_ptr_
  %_cond1_n_cond2_930 = and i1 %_cond1_925, %_cond2_928
  %_cond1_n_cond2_cond3_931 = and i1 %_cond1_n_cond2_930, %_cond4_929
  br i1 %_cond1_n_cond2_cond3_931, label %592, label %593

; <label>:592:                                    ; preds = %block_0x1a9
  %_address_in_parent_stack_bt_933 = bitcast i8* %_pot_address_in_parent_stack_924 to i32*
  br label %593

; <label>:593:                                    ; preds = %block_0x1a9, %592
  %594 = phi i32* [ %591, %block_0x1a9 ], [ %_address_in_parent_stack_bt_933, %592 ]
  %_new_load_934 = load i32, i32* %594
  %595 = zext i32 %_new_load_934 to i64, !mcsema_real_eip !111
  store i64 %595, i64* %XAX, !mcsema_real_eip !111
  %EAX_val.166 = load i32, i32* %EAX.9, !mcsema_real_eip !112
  %596 = sub i32 %EAX_val.166, 1, !mcsema_real_eip !112
  %597 = xor i32 %596, %EAX_val.166, !mcsema_real_eip !112
  %598 = xor i32 %597, 1, !mcsema_real_eip !112
  %599 = and i32 %598, 16, !mcsema_real_eip !112
  %600 = icmp ne i32 %599, 0, !mcsema_real_eip !112
  store i1 %600, i1* %AF, !mcsema_real_eip !112
  %601 = trunc i32 %596 to i8, !mcsema_real_eip !112
  %602 = call i8 @llvm.ctpop.i8(i8 %601), !mcsema_real_eip !112
  %603 = trunc i8 %602 to i1, !mcsema_real_eip !112
  %604 = xor i1 %603, true, !mcsema_real_eip !112
  store i1 %604, i1* %PF, !mcsema_real_eip !112
  %605 = icmp eq i32 %596, 0, !mcsema_real_eip !112
  store i1 %605, i1* %ZF, !mcsema_real_eip !112
  %606 = lshr i32 %596, 31, !mcsema_real_eip !112
  %607 = trunc i32 %606 to i1, !mcsema_real_eip !112
  store i1 %607, i1* %SF, !mcsema_real_eip !112
  %608 = icmp ult i32 %EAX_val.166, 1, !mcsema_real_eip !112
  store i1 %608, i1* %CF, !mcsema_real_eip !112
  %609 = xor i32 %EAX_val.166, 1, !mcsema_real_eip !112
  %610 = and i32 %609, %597, !mcsema_real_eip !112
  %611 = lshr i32 %610, 31, !mcsema_real_eip !112
  %612 = trunc i32 %611 to i1, !mcsema_real_eip !112
  store i1 %612, i1* %OF, !mcsema_real_eip !112
  %613 = zext i32 %596 to i64, !mcsema_real_eip !112
  store i64 %613, i64* %XAX, !mcsema_real_eip !112
  %EAX_val.169 = load i32, i32* %EAX.9, !mcsema_real_eip !113
  store i32 %EAX_val.169, i32* %591, !mcsema_real_eip !113
  br label %block_0x1c2, !mcsema_real_eip !114

block_0x1b7:                                      ; preds = %533
  %_new_gep_183 = getelementptr i8, i8* %_load_rbp_ptr_167, i64 -20
  %_allin_new_bt_184 = bitcast i8* %_new_gep_183 to i64*
  %614 = ptrtoint i64* %_allin_new_bt_184 to i64, !mcsema_real_eip !115
  %615 = inttoptr i64 %614 to i32*, !mcsema_real_eip !115
  %_ptr_bt_937 = bitcast i32* %615 to i8*
  %_offset_above_rbp_938 = sub i64 %614, %_local_end_to_int_
  %_pot_address_in_parent_stack_939 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_938
  %_cond1_940 = icmp ugt i8* %_ptr_bt_937, %_local_stack_end_ptr_
  %_cond2_1_941 = icmp ugt i8* %_ptr_bt_937, %_parent_stack_end_ptr_
  %_cond2_2_942 = icmp ult i8* %_ptr_bt_937, %_parent_stack_start_ptr_
  %_cond2_943 = or i1 %_cond2_1_941, %_cond2_2_942
  %_cond4_944 = icmp ule i8* %_pot_address_in_parent_stack_939, %_parent_stack_end_ptr_
  %_cond1_n_cond2_945 = and i1 %_cond1_940, %_cond2_943
  %_cond1_n_cond2_cond3_946 = and i1 %_cond1_n_cond2_945, %_cond4_944
  br i1 %_cond1_n_cond2_cond3_946, label %616, label %617

; <label>:616:                                    ; preds = %block_0x1b7
  %_address_in_parent_stack_bt_948 = bitcast i8* %_pot_address_in_parent_stack_939 to i32*
  br label %617

; <label>:617:                                    ; preds = %block_0x1b7, %616
  %618 = phi i32* [ %615, %block_0x1b7 ], [ %_address_in_parent_stack_bt_948, %616 ]
  %_new_load_949 = load i32, i32* %618
  %619 = zext i32 %_new_load_949 to i64, !mcsema_real_eip !115
  store i64 %619, i64* %XCX, !mcsema_real_eip !115
  br i1 %_cond1_n_cond2_cond3_946, label %620, label %621

; <label>:620:                                    ; preds = %617
  %_address_in_parent_stack_bt_963 = bitcast i8* %_pot_address_in_parent_stack_939 to i32*
  br label %621

; <label>:621:                                    ; preds = %617, %620
  %622 = phi i32* [ %615, %617 ], [ %_address_in_parent_stack_bt_963, %620 ]
  %_new_load_964 = load i32, i32* %622
  %623 = zext i32 %_new_load_964 to i64, !mcsema_real_eip !116
  store i64 %623, i64* %XAX, !mcsema_real_eip !116
  %EAX_val.158 = load i32, i32* %EAX.9, !mcsema_real_eip !117
  %CL_val.160 = load i8, i8* %CL.91, !mcsema_real_eip !117
  %CL_val.160.zext = zext i8 %CL_val.160 to i32, !mcsema_real_eip !117
  %624 = and i32 %CL_val.160.zext, 31, !mcsema_real_eip !117
  %625 = sub i32 %CL_val.160.zext, 1, !mcsema_real_eip !117
  %626 = icmp ne i32 %624, 0, !mcsema_real_eip !117
  %627 = select i1 %626, i32 %625, i32 0, !mcsema_real_eip !117
  %628 = select i1 %626, i32 1, i32 0, !mcsema_real_eip !117
  %629 = shl i32 %EAX_val.158, %627, !mcsema_real_eip !117
  %630 = and i32 %629, -2147483648, !mcsema_real_eip !117
  %631 = icmp ne i32 %630, 0, !mcsema_real_eip !117
  %632 = select i1 %626, i1 %631, i1 %558, !mcsema_real_eip !117
  %633 = shl i32 %629, %628, !mcsema_real_eip !117
  %634 = icmp eq i32 %624, 1, !mcsema_real_eip !117
  %635 = and i32 %633, -2147483648, !mcsema_real_eip !117
  %636 = icmp ne i32 %635, 0, !mcsema_real_eip !117
  %637 = xor i1 %636, %632, !mcsema_real_eip !117
  %638 = select i1 %634, i1 %637, i1 %562, !mcsema_real_eip !117
  store i1 %638, i1* %OF, !mcsema_real_eip !117
  store i1 %632, i1* %CF, !mcsema_real_eip !117
  %639 = icmp eq i32 %633, 0, !mcsema_real_eip !117
  %640 = select i1 %626, i1 %639, i1 %555, !mcsema_real_eip !117
  store i1 %640, i1* %ZF, !mcsema_real_eip !117
  %641 = icmp slt i32 %633, 0, !mcsema_real_eip !117
  %642 = select i1 %626, i1 %641, i1 %557, !mcsema_real_eip !117
  store i1 %642, i1* %SF, !mcsema_real_eip !117
  %643 = trunc i32 %633 to i8, !mcsema_real_eip !117
  %644 = call i8 @llvm.ctpop.i8(i8 %643), !mcsema_real_eip !117
  %645 = trunc i8 %644 to i1, !mcsema_real_eip !117
  %646 = xor i1 %645, true, !mcsema_real_eip !117
  %647 = select i1 %626, i1 %646, i1 %554, !mcsema_real_eip !117
  store i1 %647, i1* %PF, !mcsema_real_eip !117
  %648 = zext i32 %633 to i64, !mcsema_real_eip !117
  store i64 %648, i64* %XAX, !mcsema_real_eip !117
  %EAX_val.163 = load i32, i32* %EAX.9, !mcsema_real_eip !118
  store i32 %EAX_val.163, i32* %615, !mcsema_real_eip !118
  br label %block_0x1c2, !mcsema_real_eip !111

block_0x1c2:                                      ; preds = %621, %593
  %_load_rbp_ptr_191 = load i8*, i8** %_RBP_ptr_
  %_new_gep_192 = getelementptr i8, i8* %_load_rbp_ptr_191, i64 -20
  %_allin_new_bt_193 = bitcast i8* %_new_gep_192 to i64*
  %649 = ptrtoint i64* %_allin_new_bt_193 to i64, !mcsema_real_eip !119
  %650 = inttoptr i64 %649 to i32*, !mcsema_real_eip !119
  %_ptr_bt_967 = bitcast i32* %650 to i8*
  %_offset_above_rbp_968 = sub i64 %649, %_local_end_to_int_
  %_pot_address_in_parent_stack_969 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_968
  %_cond1_970 = icmp ugt i8* %_ptr_bt_967, %_local_stack_end_ptr_
  %_cond2_1_971 = icmp ugt i8* %_ptr_bt_967, %_parent_stack_end_ptr_
  %_cond2_2_972 = icmp ult i8* %_ptr_bt_967, %_parent_stack_start_ptr_
  %_cond2_973 = or i1 %_cond2_1_971, %_cond2_2_972
  %_cond4_974 = icmp ule i8* %_pot_address_in_parent_stack_969, %_parent_stack_end_ptr_
  %_cond1_n_cond2_975 = and i1 %_cond1_970, %_cond2_973
  %_cond1_n_cond2_cond3_976 = and i1 %_cond1_n_cond2_975, %_cond4_974
  br i1 %_cond1_n_cond2_cond3_976, label %651, label %652

; <label>:651:                                    ; preds = %block_0x1c2
  %_address_in_parent_stack_bt_978 = bitcast i8* %_pot_address_in_parent_stack_969 to i32*
  br label %652

; <label>:652:                                    ; preds = %block_0x1c2, %651
  %653 = phi i32* [ %650, %block_0x1c2 ], [ %_address_in_parent_stack_bt_978, %651 ]
  %_new_load_979 = load i32, i32* %653
  store i1 false, i1* %AF, !mcsema_real_eip !119
  %654 = trunc i32 %_new_load_979 to i8, !mcsema_real_eip !119
  %655 = call i8 @llvm.ctpop.i8(i8 %654), !mcsema_real_eip !119
  %656 = trunc i8 %655 to i1, !mcsema_real_eip !119
  %657 = xor i1 %656, true, !mcsema_real_eip !119
  store i1 %657, i1* %PF, !mcsema_real_eip !119
  %658 = icmp eq i32 %_new_load_979, 0, !mcsema_real_eip !119
  store i1 %658, i1* %ZF, !mcsema_real_eip !119
  %659 = lshr i32 %_new_load_979, 31, !mcsema_real_eip !119
  %660 = trunc i32 %659 to i1, !mcsema_real_eip !119
  store i1 %660, i1* %SF, !mcsema_real_eip !119
  store i1 false, i1* %CF, !mcsema_real_eip !119
  store i1 false, i1* %OF, !mcsema_real_eip !119
  br i1 %658, label %block_0x1d8, label %block_0x1cc, !mcsema_real_eip !120

block_0x1cc:                                      ; preds = %652
  %_new_gep_195 = getelementptr i8, i8* %_load_rbp_ptr_191, i64 -4
  %_allin_new_bt_196 = bitcast i8* %_new_gep_195 to i64*
  %661 = ptrtoint i64* %_allin_new_bt_196 to i64, !mcsema_real_eip !121
  %662 = inttoptr i64 %661 to i32*, !mcsema_real_eip !121
  store i32 -7, i32* %662, !mcsema_real_eip !121
  br label %block_0x417, !mcsema_real_eip !122

block_0x1d8:                                      ; preds = %652
  %EDI_val.172 = load i32, i32* %EDI.63, !mcsema_real_eip !123
  store i1 false, i1* %CF, !mcsema_real_eip !123
  store i1 false, i1* %OF, !mcsema_real_eip !123
  store i1 false, i1* %SF, !mcsema_real_eip !123
  store i1 true, i1* %ZF, !mcsema_real_eip !123
  store i1 true, i1* %PF, !mcsema_real_eip !123
  store i1 undef, i1* %AF, !mcsema_real_eip !123
  store i64 0, i64* %XDI, !mcsema_real_eip !123
  store i64 4, i64* %XDX, !mcsema_real_eip !124
  %_new_gep_198 = getelementptr i8, i8* %_load_rbp_ptr_191, i64 -16
  %_allin_new_bt_199 = bitcast i8* %_new_gep_198 to i64*
  %_ptr_to_int_980 = ptrtoint i64* %_allin_new_bt_199 to i64
  %_offset_above_rbp_983 = sub i64 %_ptr_to_int_980, %_local_end_to_int_
  %_pot_address_in_parent_stack_984 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_983
  %_cond1_985 = icmp ugt i8* %_new_gep_198, %_local_stack_end_ptr_
  %_cond2_1_986 = icmp ugt i8* %_new_gep_198, %_parent_stack_end_ptr_
  %_cond2_2_987 = icmp ult i8* %_new_gep_198, %_parent_stack_start_ptr_
  %_cond2_988 = or i1 %_cond2_1_986, %_cond2_2_987
  %_cond4_989 = icmp ule i8* %_pot_address_in_parent_stack_984, %_parent_stack_end_ptr_
  %_cond1_n_cond2_990 = and i1 %_cond1_985, %_cond2_988
  %_cond1_n_cond2_cond3_991 = and i1 %_cond1_n_cond2_990, %_cond4_989
  br i1 %_cond1_n_cond2_cond3_991, label %663, label %664

; <label>:663:                                    ; preds = %block_0x1d8
  %_address_in_parent_stack_bt_993 = bitcast i8* %_pot_address_in_parent_stack_984 to i64*
  br label %664

; <label>:664:                                    ; preds = %block_0x1d8, %663
  %665 = phi i64* [ %_allin_new_bt_199, %block_0x1d8 ], [ %_address_in_parent_stack_bt_993, %663 ]
  %_new_load_994 = load i64, i64* %665
  store i64 %_new_load_994, i64* %XAX, !mcsema_real_eip !125
  %666 = add i64 8, %_new_load_994, !mcsema_real_eip !126
  %667 = xor i64 %666, %_new_load_994, !mcsema_real_eip !126
  %668 = xor i64 %667, 8, !mcsema_real_eip !126
  %669 = and i64 %668, 16, !mcsema_real_eip !126
  %670 = icmp ne i64 %669, 0, !mcsema_real_eip !126
  store i1 %670, i1* %AF, !mcsema_real_eip !126
  %671 = lshr i64 %666, 63, !mcsema_real_eip !126
  %672 = trunc i64 %671 to i1, !mcsema_real_eip !126
  store i1 %672, i1* %SF, !mcsema_real_eip !126
  %673 = icmp eq i64 %666, 0, !mcsema_real_eip !126
  store i1 %673, i1* %ZF, !mcsema_real_eip !126
  %674 = xor i64 %_new_load_994, 8, !mcsema_real_eip !126
  %675 = xor i64 %674, -1, !mcsema_real_eip !126
  %676 = and i64 %675, %667, !mcsema_real_eip !126
  %677 = lshr i64 %676, 63, !mcsema_real_eip !126
  %678 = and i64 %677, 1, !mcsema_real_eip !126
  %679 = trunc i64 %678 to i1, !mcsema_real_eip !126
  store i1 %679, i1* %OF, !mcsema_real_eip !126
  %680 = trunc i64 %666 to i8, !mcsema_real_eip !126
  %681 = call i8 @llvm.ctpop.i8(i8 %680), !mcsema_real_eip !126
  %682 = trunc i8 %681 to i1, !mcsema_real_eip !126
  %683 = xor i1 %682, true, !mcsema_real_eip !126
  store i1 %683, i1* %PF, !mcsema_real_eip !126
  %684 = icmp ult i64 %666, %_new_load_994, !mcsema_real_eip !126
  store i1 %684, i1* %CF, !mcsema_real_eip !126
  store i64 %666, i64* %XAX, !mcsema_real_eip !126
  store i64 %666, i64* %XSI, !mcsema_real_eip !127
  %_load_rsp_ptr_200 = load i8*, i8** %_RSP_ptr_
  %RSP_val.181 = load i64, i64* %XSP, !mcsema_real_eip !128
  %_new_gep_201 = getelementptr i8, i8* %_load_rsp_ptr_200, i64 -8
  %685 = sub i64 %RSP_val.181, 8, !mcsema_real_eip !128
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_202, !mcsema_real_eip !128
  store volatile i8* %_new_gep_201, i8** %_RSP_ptr_
  store i64 %685, i64* %XSP, !mcsema_real_eip !128
  %686 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %666, i64 4)
  %_rsp_fix_426 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_427 = getelementptr i8, i8* %_rsp_fix_426, i64 8
  store i8* %_gep_fix_427, i8** %_RSP_ptr_
  store i64 %686, i64* %XAX, !mcsema_real_eip !128
  %AX.182 = bitcast i64* %XAX to i16*, !mcsema_real_eip !129
  %AX_val.183 = load i16, i16* %AX.182, !mcsema_real_eip !129
  %CX.184 = bitcast i64* %XCX to i16*, !mcsema_real_eip !129
  store i16 %AX_val.183, i16* %CX.184, !mcsema_real_eip !129
  %_load_rbp_ptr_203 = load i8*, i8** %_RBP_ptr_
  %_new_gep_204 = getelementptr i8, i8* %_load_rbp_ptr_203, i64 -38
  %_allin_new_bt_205 = bitcast i8* %_new_gep_204 to i64*
  %687 = ptrtoint i64* %_allin_new_bt_205 to i64, !mcsema_real_eip !130
  %688 = inttoptr i64 %687 to i16*, !mcsema_real_eip !130
  store i16 %AX_val.183, i16* %688, !mcsema_real_eip !130
  %_load_rbp_ptr_206 = load i8*, i8** %_RBP_ptr_
  %_new_gep_207 = getelementptr i8, i8* %_load_rbp_ptr_206, i64 -38
  %_allin_new_bt_208 = bitcast i8* %_new_gep_207 to i64*
  %689 = ptrtoint i64* %_allin_new_bt_208 to i64, !mcsema_real_eip !131
  %690 = inttoptr i64 %689 to i16*, !mcsema_real_eip !131
  %_ptr_bt_997 = bitcast i16* %690 to i8*
  %_offset_above_rbp_998 = sub i64 %689, %_local_end_to_int_
  %_pot_address_in_parent_stack_999 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_998
  %_cond1_1000 = icmp ugt i8* %_ptr_bt_997, %_local_stack_end_ptr_
  %_cond2_1_1001 = icmp ugt i8* %_ptr_bt_997, %_parent_stack_end_ptr_
  %_cond2_2_1002 = icmp ult i8* %_ptr_bt_997, %_parent_stack_start_ptr_
  %_cond2_1003 = or i1 %_cond2_1_1001, %_cond2_2_1002
  %_cond4_1004 = icmp ule i8* %_pot_address_in_parent_stack_999, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1005 = and i1 %_cond1_1000, %_cond2_1003
  %_cond1_n_cond2_cond3_1006 = and i1 %_cond1_n_cond2_1005, %_cond4_1004
  br i1 %_cond1_n_cond2_cond3_1006, label %691, label %692

; <label>:691:                                    ; preds = %664
  %_address_in_parent_stack_bt_1008 = bitcast i8* %_pot_address_in_parent_stack_999 to i16*
  br label %692

; <label>:692:                                    ; preds = %664, %691
  %693 = phi i16* [ %690, %664 ], [ %_address_in_parent_stack_bt_1008, %691 ]
  %_new_load_1009 = load i16, i16* %693
  %694 = zext i16 %_new_load_1009 to i32, !mcsema_real_eip !131
  %695 = zext i32 %694 to i64, !mcsema_real_eip !131
  store i64 %695, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.190 = load i32, i32* %EAX.9, !mcsema_real_eip !132
  %696 = or i32 %EAX_val.190, 21845, !mcsema_real_eip !132
  store i1 undef, i1* %AF, !mcsema_real_eip !132
  store i1 false, i1* %OF, !mcsema_real_eip !132
  store i1 false, i1* %CF, !mcsema_real_eip !132
  %697 = lshr i32 %696, 31, !mcsema_real_eip !132
  %698 = trunc i32 %697 to i1, !mcsema_real_eip !132
  store i1 %698, i1* %SF, !mcsema_real_eip !132
  store i1 false, i1* %ZF, !mcsema_real_eip !132
  %699 = trunc i32 %696 to i8, !mcsema_real_eip !132
  %700 = call i8 @llvm.ctpop.i8(i8 %699), !mcsema_real_eip !132
  %701 = trunc i8 %700 to i1, !mcsema_real_eip !132
  %702 = xor i1 %701, true, !mcsema_real_eip !132
  store i1 %702, i1* %PF, !mcsema_real_eip !132
  %703 = zext i32 %696 to i64, !mcsema_real_eip !132
  store i64 %703, i64* %XAX, !mcsema_real_eip !132
  %EAX_val.192 = load i32, i32* %EAX.9, !mcsema_real_eip !133
  %704 = sub i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  %705 = xor i32 %704, %EAX_val.192, !mcsema_real_eip !133
  %706 = xor i32 %705, 56663, !mcsema_real_eip !133
  %707 = and i32 %706, 16, !mcsema_real_eip !133
  %708 = icmp ne i32 %707, 0, !mcsema_real_eip !133
  store i1 %708, i1* %AF, !mcsema_real_eip !133
  %709 = trunc i32 %704 to i8, !mcsema_real_eip !133
  %710 = call i8 @llvm.ctpop.i8(i8 %709), !mcsema_real_eip !133
  %711 = trunc i8 %710 to i1, !mcsema_real_eip !133
  %712 = xor i1 %711, true, !mcsema_real_eip !133
  store i1 %712, i1* %PF, !mcsema_real_eip !133
  %713 = icmp eq i32 %704, 0, !mcsema_real_eip !133
  store i1 %713, i1* %ZF, !mcsema_real_eip !133
  %714 = lshr i32 %704, 31, !mcsema_real_eip !133
  %715 = trunc i32 %714 to i1, !mcsema_real_eip !133
  store i1 %715, i1* %SF, !mcsema_real_eip !133
  %716 = icmp ult i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  store i1 %716, i1* %CF, !mcsema_real_eip !133
  %717 = xor i32 %EAX_val.192, 56663, !mcsema_real_eip !133
  %718 = and i32 %717, %705, !mcsema_real_eip !133
  %719 = lshr i32 %718, 31, !mcsema_real_eip !133
  %720 = trunc i32 %719 to i1, !mcsema_real_eip !133
  store i1 %720, i1* %OF, !mcsema_real_eip !133
  %721 = icmp eq i1 %713, false, !mcsema_real_eip !134
  br i1 %721, label %block_0x22a, label %block_0x20a, !mcsema_real_eip !134

block_0x20a:                                      ; preds = %692
  br i1 %_cond1_n_cond2_cond3_1006, label %722, label %723

; <label>:722:                                    ; preds = %block_0x20a
  %_address_in_parent_stack_bt_1023 = bitcast i8* %_pot_address_in_parent_stack_999 to i16*
  br label %723

; <label>:723:                                    ; preds = %block_0x20a, %722
  %724 = phi i16* [ %690, %block_0x20a ], [ %_address_in_parent_stack_bt_1023, %722 ]
  %_new_load_1024 = load i16, i16* %724
  %725 = zext i16 %_new_load_1024 to i32, !mcsema_real_eip !135
  %726 = zext i32 %725 to i64, !mcsema_real_eip !135
  store i64 %726, i64* %XAX, !mcsema_real_eip !135
  %EAX_val.197 = load i32, i32* %EAX.9, !mcsema_real_eip !136
  %727 = or i32 %EAX_val.197, 43690, !mcsema_real_eip !136
  store i1 undef, i1* %AF, !mcsema_real_eip !136
  store i1 false, i1* %OF, !mcsema_real_eip !136
  store i1 false, i1* %CF, !mcsema_real_eip !136
  %728 = lshr i32 %727, 31, !mcsema_real_eip !136
  %729 = trunc i32 %728 to i1, !mcsema_real_eip !136
  store i1 %729, i1* %SF, !mcsema_real_eip !136
  store i1 false, i1* %ZF, !mcsema_real_eip !136
  %730 = trunc i32 %727 to i8, !mcsema_real_eip !136
  %731 = call i8 @llvm.ctpop.i8(i8 %730), !mcsema_real_eip !136
  %732 = trunc i8 %731 to i1, !mcsema_real_eip !136
  %733 = xor i1 %732, true, !mcsema_real_eip !136
  store i1 %733, i1* %PF, !mcsema_real_eip !136
  %734 = zext i32 %727 to i64, !mcsema_real_eip !136
  store i64 %734, i64* %XAX, !mcsema_real_eip !136
  %EAX_val.199 = load i32, i32* %EAX.9, !mcsema_real_eip !137
  %735 = sub i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  %736 = xor i32 %735, %EAX_val.199, !mcsema_real_eip !137
  %737 = xor i32 %736, 65211, !mcsema_real_eip !137
  %738 = and i32 %737, 16, !mcsema_real_eip !137
  %739 = icmp ne i32 %738, 0, !mcsema_real_eip !137
  store i1 %739, i1* %AF, !mcsema_real_eip !137
  %740 = trunc i32 %735 to i8, !mcsema_real_eip !137
  %741 = call i8 @llvm.ctpop.i8(i8 %740), !mcsema_real_eip !137
  %742 = trunc i8 %741 to i1, !mcsema_real_eip !137
  %743 = xor i1 %742, true, !mcsema_real_eip !137
  store i1 %743, i1* %PF, !mcsema_real_eip !137
  %744 = icmp eq i32 %735, 0, !mcsema_real_eip !137
  store i1 %744, i1* %ZF, !mcsema_real_eip !137
  %745 = lshr i32 %735, 31, !mcsema_real_eip !137
  %746 = trunc i32 %745 to i1, !mcsema_real_eip !137
  store i1 %746, i1* %SF, !mcsema_real_eip !137
  %747 = icmp ult i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  store i1 %747, i1* %CF, !mcsema_real_eip !137
  %748 = xor i32 %EAX_val.199, 65211, !mcsema_real_eip !137
  %749 = and i32 %748, %736, !mcsema_real_eip !137
  %750 = lshr i32 %749, 31, !mcsema_real_eip !137
  %751 = trunc i32 %750 to i1, !mcsema_real_eip !137
  store i1 %751, i1* %OF, !mcsema_real_eip !137
  %752 = icmp eq i1 %744, false, !mcsema_real_eip !138
  br i1 %752, label %block_0x22a, label %block_0x21e, !mcsema_real_eip !138

block_0x22a:                                      ; preds = %723, %692
  %_new_gep_213 = getelementptr i8, i8* %_load_rbp_ptr_206, i64 -20
  %_allin_new_bt_214 = bitcast i8* %_new_gep_213 to i64*
  %753 = ptrtoint i64* %_allin_new_bt_214 to i64, !mcsema_real_eip !139
  %754 = inttoptr i64 %753 to i32*, !mcsema_real_eip !139
  store i32 48059, i32* %754, !mcsema_real_eip !139
  br label %block_0x231, !mcsema_real_eip !135

block_0x231:                                      ; preds = %block_0x21e, %block_0x22a
  %EDI_val.201 = load i32, i32* %EDI.63, !mcsema_real_eip !140
  store i1 false, i1* %CF, !mcsema_real_eip !140
  store i1 false, i1* %OF, !mcsema_real_eip !140
  store i1 false, i1* %SF, !mcsema_real_eip !140
  store i1 true, i1* %ZF, !mcsema_real_eip !140
  store i1 true, i1* %PF, !mcsema_real_eip !140
  store i1 undef, i1* %AF, !mcsema_real_eip !140
  store i64 0, i64* %XDI, !mcsema_real_eip !140
  store i64 8, i64* %XDX, !mcsema_real_eip !141
  %_load_rbp_ptr_215 = load i8*, i8** %_RBP_ptr_
  %_new_gep_216 = getelementptr i8, i8* %_load_rbp_ptr_215, i64 -16
  %_allin_new_bt_217 = bitcast i8* %_new_gep_216 to i64*
  %_ptr_to_int_1025 = ptrtoint i64* %_allin_new_bt_217 to i64
  %_offset_above_rbp_1028 = sub i64 %_ptr_to_int_1025, %_local_end_to_int_
  %_pot_address_in_parent_stack_1029 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1028
  %_cond1_1030 = icmp ugt i8* %_new_gep_216, %_local_stack_end_ptr_
  %_cond2_1_1031 = icmp ugt i8* %_new_gep_216, %_parent_stack_end_ptr_
  %_cond2_2_1032 = icmp ult i8* %_new_gep_216, %_parent_stack_start_ptr_
  %_cond2_1033 = or i1 %_cond2_1_1031, %_cond2_2_1032
  %_cond4_1034 = icmp ule i8* %_pot_address_in_parent_stack_1029, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1035 = and i1 %_cond1_1030, %_cond2_1033
  %_cond1_n_cond2_cond3_1036 = and i1 %_cond1_n_cond2_1035, %_cond4_1034
  br i1 %_cond1_n_cond2_cond3_1036, label %755, label %756

; <label>:755:                                    ; preds = %block_0x231
  %_address_in_parent_stack_bt_1038 = bitcast i8* %_pot_address_in_parent_stack_1029 to i64*
  br label %756

; <label>:756:                                    ; preds = %block_0x231, %755
  %757 = phi i64* [ %_allin_new_bt_217, %block_0x231 ], [ %_address_in_parent_stack_bt_1038, %755 ]
  %_new_load_1039 = load i64, i64* %757
  store i64 %_new_load_1039, i64* %XAX, !mcsema_real_eip !142
  %758 = add i64 12, %_new_load_1039, !mcsema_real_eip !143
  %759 = xor i64 %758, %_new_load_1039, !mcsema_real_eip !143
  %760 = xor i64 %759, 12, !mcsema_real_eip !143
  %761 = and i64 %760, 16, !mcsema_real_eip !143
  %762 = icmp ne i64 %761, 0, !mcsema_real_eip !143
  store i1 %762, i1* %AF, !mcsema_real_eip !143
  %763 = lshr i64 %758, 63, !mcsema_real_eip !143
  %764 = trunc i64 %763 to i1, !mcsema_real_eip !143
  store i1 %764, i1* %SF, !mcsema_real_eip !143
  %765 = icmp eq i64 %758, 0, !mcsema_real_eip !143
  store i1 %765, i1* %ZF, !mcsema_real_eip !143
  %766 = xor i64 %_new_load_1039, 12, !mcsema_real_eip !143
  %767 = xor i64 %766, -1, !mcsema_real_eip !143
  %768 = and i64 %767, %759, !mcsema_real_eip !143
  %769 = lshr i64 %768, 63, !mcsema_real_eip !143
  %770 = and i64 %769, 1, !mcsema_real_eip !143
  %771 = trunc i64 %770 to i1, !mcsema_real_eip !143
  store i1 %771, i1* %OF, !mcsema_real_eip !143
  %772 = trunc i64 %758 to i8, !mcsema_real_eip !143
  %773 = call i8 @llvm.ctpop.i8(i8 %772), !mcsema_real_eip !143
  %774 = trunc i8 %773 to i1, !mcsema_real_eip !143
  %775 = xor i1 %774, true, !mcsema_real_eip !143
  store i1 %775, i1* %PF, !mcsema_real_eip !143
  %776 = icmp ult i64 %758, %_new_load_1039, !mcsema_real_eip !143
  store i1 %776, i1* %CF, !mcsema_real_eip !143
  store i64 %758, i64* %XAX, !mcsema_real_eip !143
  store i64 %758, i64* %XSI, !mcsema_real_eip !144
  %_load_rsp_ptr_218 = load i8*, i8** %_RSP_ptr_
  %RSP_val.210 = load i64, i64* %XSP, !mcsema_real_eip !145
  %_new_gep_219 = getelementptr i8, i8* %_load_rsp_ptr_218, i64 -8
  %777 = sub i64 %RSP_val.210, 8, !mcsema_real_eip !145
  %_allin_new_bt_220 = bitcast i8* %_new_gep_219 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_220, !mcsema_real_eip !145
  store volatile i8* %_new_gep_219, i8** %_RSP_ptr_
  store i64 %777, i64* %XSP, !mcsema_real_eip !145
  %778 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %758, i64 8)
  %_rsp_fix_428 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_429 = getelementptr i8, i8* %_rsp_fix_428, i64 8
  store i8* %_gep_fix_429, i8** %_RSP_ptr_
  store i64 %778, i64* %XAX, !mcsema_real_eip !145
  %_load_rbp_ptr_221 = load i8*, i8** %_RBP_ptr_
  %_new_gep_222 = getelementptr i8, i8* %_load_rbp_ptr_221, i64 -44
  %_allin_new_bt_223 = bitcast i8* %_new_gep_222 to i64*
  %EAX_val.213 = load i32, i32* %EAX.9, !mcsema_real_eip !146
  %779 = ptrtoint i64* %_allin_new_bt_223 to i64, !mcsema_real_eip !146
  %780 = inttoptr i64 %779 to i32*, !mcsema_real_eip !146
  store i32 %EAX_val.213, i32* %780, !mcsema_real_eip !146
  %_load_rbp_ptr_224 = load i8*, i8** %_RBP_ptr_
  %_new_gep_225 = getelementptr i8, i8* %_load_rbp_ptr_224, i64 -44
  %_allin_new_bt_226 = bitcast i8* %_new_gep_225 to i64*
  %781 = ptrtoint i64* %_allin_new_bt_226 to i64, !mcsema_real_eip !147
  %782 = inttoptr i64 %781 to i32*, !mcsema_real_eip !147
  %_ptr_bt_1042 = bitcast i32* %782 to i8*
  %_offset_above_rbp_1043 = sub i64 %781, %_local_end_to_int_
  %_pot_address_in_parent_stack_1044 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1043
  %_cond1_1045 = icmp ugt i8* %_ptr_bt_1042, %_local_stack_end_ptr_
  %_cond2_1_1046 = icmp ugt i8* %_ptr_bt_1042, %_parent_stack_end_ptr_
  %_cond2_2_1047 = icmp ult i8* %_ptr_bt_1042, %_parent_stack_start_ptr_
  %_cond2_1048 = or i1 %_cond2_1_1046, %_cond2_2_1047
  %_cond4_1049 = icmp ule i8* %_pot_address_in_parent_stack_1044, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1050 = and i1 %_cond1_1045, %_cond2_1048
  %_cond1_n_cond2_cond3_1051 = and i1 %_cond1_n_cond2_1050, %_cond4_1049
  br i1 %_cond1_n_cond2_cond3_1051, label %783, label %784

; <label>:783:                                    ; preds = %756
  %_address_in_parent_stack_bt_1053 = bitcast i8* %_pot_address_in_parent_stack_1044 to i32*
  br label %784

; <label>:784:                                    ; preds = %756, %783
  %785 = phi i32* [ %782, %756 ], [ %_address_in_parent_stack_bt_1053, %783 ]
  %_new_load_1054 = load i32, i32* %785
  %786 = zext i32 %_new_load_1054 to i64, !mcsema_real_eip !147
  store i64 %786, i64* %XAX, !mcsema_real_eip !147
  %EAX_val.216 = load i32, i32* %EAX.9, !mcsema_real_eip !148
  %787 = xor i32 %EAX_val.216, -1534560611, !mcsema_real_eip !148
  store i1 false, i1* %CF, !mcsema_real_eip !148
  store i1 false, i1* %OF, !mcsema_real_eip !148
  %788 = lshr i32 %787, 31, !mcsema_real_eip !148
  %789 = trunc i32 %788 to i1, !mcsema_real_eip !148
  store i1 %789, i1* %SF, !mcsema_real_eip !148
  %790 = icmp eq i32 %787, 0, !mcsema_real_eip !148
  store i1 %790, i1* %ZF, !mcsema_real_eip !148
  %791 = trunc i32 %787 to i8, !mcsema_real_eip !148
  %792 = call i8 @llvm.ctpop.i8(i8 %791), !mcsema_real_eip !148
  %793 = trunc i8 %792 to i1, !mcsema_real_eip !148
  %794 = xor i1 %793, true, !mcsema_real_eip !148
  store i1 %794, i1* %PF, !mcsema_real_eip !148
  store i1 undef, i1* %AF, !mcsema_real_eip !148
  %795 = zext i32 %787 to i64, !mcsema_real_eip !148
  store i64 %795, i64* %XAX, !mcsema_real_eip !148
  %_new_gep_228 = getelementptr i8, i8* %_load_rbp_ptr_224, i64 -48
  %_allin_new_bt_229 = bitcast i8* %_new_gep_228 to i64*
  %EAX_val.219 = load i32, i32* %EAX.9, !mcsema_real_eip !149
  %796 = ptrtoint i64* %_allin_new_bt_229 to i64, !mcsema_real_eip !149
  %797 = inttoptr i64 %796 to i32*, !mcsema_real_eip !149
  store i32 %EAX_val.219, i32* %797, !mcsema_real_eip !149
  %_load_rbp_ptr_230 = load i8*, i8** %_RBP_ptr_
  %_new_gep_231 = getelementptr i8, i8* %_load_rbp_ptr_230, i64 -48
  %_allin_new_bt_232 = bitcast i8* %_new_gep_231 to i64*
  %798 = ptrtoint i64* %_allin_new_bt_232 to i64, !mcsema_real_eip !150
  %799 = inttoptr i64 %798 to i32*, !mcsema_real_eip !150
  %_ptr_bt_1057 = bitcast i32* %799 to i8*
  %_offset_above_rbp_1058 = sub i64 %798, %_local_end_to_int_
  %_pot_address_in_parent_stack_1059 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1058
  %_cond1_1060 = icmp ugt i8* %_ptr_bt_1057, %_local_stack_end_ptr_
  %_cond2_1_1061 = icmp ugt i8* %_ptr_bt_1057, %_parent_stack_end_ptr_
  %_cond2_2_1062 = icmp ult i8* %_ptr_bt_1057, %_parent_stack_start_ptr_
  %_cond2_1063 = or i1 %_cond2_1_1061, %_cond2_2_1062
  %_cond4_1064 = icmp ule i8* %_pot_address_in_parent_stack_1059, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1065 = and i1 %_cond1_1060, %_cond2_1063
  %_cond1_n_cond2_cond3_1066 = and i1 %_cond1_n_cond2_1065, %_cond4_1064
  br i1 %_cond1_n_cond2_cond3_1066, label %800, label %801

; <label>:800:                                    ; preds = %784
  %_address_in_parent_stack_bt_1068 = bitcast i8* %_pot_address_in_parent_stack_1059 to i32*
  br label %801

; <label>:801:                                    ; preds = %784, %800
  %802 = phi i32* [ %799, %784 ], [ %_address_in_parent_stack_bt_1068, %800 ]
  %_new_load_1069 = load i32, i32* %802
  %803 = zext i32 %_new_load_1069 to i64, !mcsema_real_eip !150
  store i64 %803, i64* %XAX, !mcsema_real_eip !150
  %EAX_val.222 = load i32, i32* %EAX.9, !mcsema_real_eip !151
  %804 = lshr i32 %EAX_val.222, 15, !mcsema_real_eip !151
  %805 = and i32 %804, 1, !mcsema_real_eip !151
  %806 = icmp ne i32 %805, 0, !mcsema_real_eip !151
  %807 = load i1, i1* %CF, !mcsema_real_eip !151
  %808 = lshr i32 %804, 1, !mcsema_real_eip !151
  %809 = load i1, i1* %OF, !mcsema_real_eip !151
  %810 = and i32 %EAX_val.222, -2147483648, !mcsema_real_eip !151
  %811 = icmp ne i32 %810, 0, !mcsema_real_eip !151
  store i1 %806, i1* %CF, !mcsema_real_eip !151
  %812 = load i1, i1* %ZF, !mcsema_real_eip !151
  %813 = icmp eq i32 %808, 0, !mcsema_real_eip !151
  store i1 %813, i1* %ZF, !mcsema_real_eip !151
  %814 = load i1, i1* %SF, !mcsema_real_eip !151
  store i1 false, i1* %SF, !mcsema_real_eip !151
  %815 = load i1, i1* %PF, !mcsema_real_eip !151
  %816 = trunc i32 %808 to i8, !mcsema_real_eip !151
  %817 = call i8 @llvm.ctpop.i8(i8 %816), !mcsema_real_eip !151
  %818 = trunc i8 %817 to i1, !mcsema_real_eip !151
  %819 = xor i1 %818, true, !mcsema_real_eip !151
  store i1 %819, i1* %PF, !mcsema_real_eip !151
  %820 = zext i32 %808 to i64, !mcsema_real_eip !151
  store i64 %820, i64* %XAX, !mcsema_real_eip !151
  %_new_gep_234 = getelementptr i8, i8* %_load_rbp_ptr_230, i64 -52
  %_allin_new_bt_235 = bitcast i8* %_new_gep_234 to i64*
  %EAX_val.225 = load i32, i32* %EAX.9, !mcsema_real_eip !152
  %821 = ptrtoint i64* %_allin_new_bt_235 to i64, !mcsema_real_eip !152
  %822 = inttoptr i64 %821 to i32*, !mcsema_real_eip !152
  store i32 %EAX_val.225, i32* %822, !mcsema_real_eip !152
  %_load_rbp_ptr_236 = load i8*, i8** %_RBP_ptr_
  %_new_gep_237 = getelementptr i8, i8* %_load_rbp_ptr_236, i64 -48
  %_allin_new_bt_238 = bitcast i8* %_new_gep_237 to i64*
  %823 = ptrtoint i64* %_allin_new_bt_238 to i64, !mcsema_real_eip !153
  %824 = inttoptr i64 %823 to i32*, !mcsema_real_eip !153
  %_ptr_bt_1072 = bitcast i32* %824 to i8*
  %_offset_above_rbp_1073 = sub i64 %823, %_local_end_to_int_
  %_pot_address_in_parent_stack_1074 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1073
  %_cond1_1075 = icmp ugt i8* %_ptr_bt_1072, %_local_stack_end_ptr_
  %_cond2_1_1076 = icmp ugt i8* %_ptr_bt_1072, %_parent_stack_end_ptr_
  %_cond2_2_1077 = icmp ult i8* %_ptr_bt_1072, %_parent_stack_start_ptr_
  %_cond2_1078 = or i1 %_cond2_1_1076, %_cond2_2_1077
  %_cond4_1079 = icmp ule i8* %_pot_address_in_parent_stack_1074, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1080 = and i1 %_cond1_1075, %_cond2_1078
  %_cond1_n_cond2_cond3_1081 = and i1 %_cond1_n_cond2_1080, %_cond4_1079
  br i1 %_cond1_n_cond2_cond3_1081, label %825, label %826

; <label>:825:                                    ; preds = %801
  %_address_in_parent_stack_bt_1083 = bitcast i8* %_pot_address_in_parent_stack_1074 to i32*
  br label %826

; <label>:826:                                    ; preds = %801, %825
  %827 = phi i32* [ %824, %801 ], [ %_address_in_parent_stack_bt_1083, %825 ]
  %_new_load_1084 = load i32, i32* %827
  %828 = zext i32 %_new_load_1084 to i64, !mcsema_real_eip !153
  store i64 %828, i64* %XAX, !mcsema_real_eip !153
  %EAX_val.228 = load i32, i32* %EAX.9, !mcsema_real_eip !154
  %829 = and i32 %EAX_val.228, 65535, !mcsema_real_eip !154
  store i1 false, i1* %SF, !mcsema_real_eip !154
  %830 = icmp eq i32 %829, 0, !mcsema_real_eip !154
  store i1 %830, i1* %ZF, !mcsema_real_eip !154
  %831 = trunc i32 %829 to i8, !mcsema_real_eip !154
  %832 = call i8 @llvm.ctpop.i8(i8 %831), !mcsema_real_eip !154
  %833 = trunc i8 %832 to i1, !mcsema_real_eip !154
  %834 = xor i1 %833, true, !mcsema_real_eip !154
  store i1 %834, i1* %PF, !mcsema_real_eip !154
  store i1 false, i1* %OF, !mcsema_real_eip !154
  store i1 false, i1* %CF, !mcsema_real_eip !154
  store i1 undef, i1* %AF, !mcsema_real_eip !154
  %835 = zext i32 %829 to i64, !mcsema_real_eip !154
  store i64 %835, i64* %XAX, !mcsema_real_eip !154
  %_new_gep_240 = getelementptr i8, i8* %_load_rbp_ptr_236, i64 -56
  %_allin_new_bt_241 = bitcast i8* %_new_gep_240 to i64*
  %EAX_val.231 = load i32, i32* %EAX.9, !mcsema_real_eip !155
  %836 = ptrtoint i64* %_allin_new_bt_241 to i64, !mcsema_real_eip !155
  %837 = inttoptr i64 %836 to i32*, !mcsema_real_eip !155
  store i32 %EAX_val.231, i32* %837, !mcsema_real_eip !155
  %_load_rbp_ptr_242 = load i8*, i8** %_RBP_ptr_
  %_new_gep_243 = getelementptr i8, i8* %_load_rbp_ptr_242, i64 -52
  %_allin_new_bt_244 = bitcast i8* %_new_gep_243 to i64*
  %838 = ptrtoint i64* %_allin_new_bt_244 to i64, !mcsema_real_eip !156
  %839 = inttoptr i64 %838 to i32*, !mcsema_real_eip !156
  %_ptr_bt_1087 = bitcast i32* %839 to i8*
  %_offset_above_rbp_1088 = sub i64 %838, %_local_end_to_int_
  %_pot_address_in_parent_stack_1089 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1088
  %_cond1_1090 = icmp ugt i8* %_ptr_bt_1087, %_local_stack_end_ptr_
  %_cond2_1_1091 = icmp ugt i8* %_ptr_bt_1087, %_parent_stack_end_ptr_
  %_cond2_2_1092 = icmp ult i8* %_ptr_bt_1087, %_parent_stack_start_ptr_
  %_cond2_1093 = or i1 %_cond2_1_1091, %_cond2_2_1092
  %_cond4_1094 = icmp ule i8* %_pot_address_in_parent_stack_1089, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1095 = and i1 %_cond1_1090, %_cond2_1093
  %_cond1_n_cond2_cond3_1096 = and i1 %_cond1_n_cond2_1095, %_cond4_1094
  br i1 %_cond1_n_cond2_cond3_1096, label %840, label %841

; <label>:840:                                    ; preds = %826
  %_address_in_parent_stack_bt_1098 = bitcast i8* %_pot_address_in_parent_stack_1089 to i32*
  br label %841

; <label>:841:                                    ; preds = %826, %840
  %842 = phi i32* [ %839, %826 ], [ %_address_in_parent_stack_bt_1098, %840 ]
  %_new_load_1099 = load i32, i32* %842
  %843 = sub i32 %_new_load_1099, 79, !mcsema_real_eip !156
  %844 = xor i32 %843, %_new_load_1099, !mcsema_real_eip !156
  %845 = xor i32 %844, 79, !mcsema_real_eip !156
  %846 = and i32 %845, 16, !mcsema_real_eip !156
  %847 = icmp ne i32 %846, 0, !mcsema_real_eip !156
  store i1 %847, i1* %AF, !mcsema_real_eip !156
  %848 = trunc i32 %843 to i8, !mcsema_real_eip !156
  %849 = call i8 @llvm.ctpop.i8(i8 %848), !mcsema_real_eip !156
  %850 = trunc i8 %849 to i1, !mcsema_real_eip !156
  %851 = xor i1 %850, true, !mcsema_real_eip !156
  store i1 %851, i1* %PF, !mcsema_real_eip !156
  %852 = icmp eq i32 %843, 0, !mcsema_real_eip !156
  store i1 %852, i1* %ZF, !mcsema_real_eip !156
  %853 = lshr i32 %843, 31, !mcsema_real_eip !156
  %854 = trunc i32 %853 to i1, !mcsema_real_eip !156
  store i1 %854, i1* %SF, !mcsema_real_eip !156
  %855 = icmp ult i32 %_new_load_1099, 79, !mcsema_real_eip !156
  store i1 %855, i1* %CF, !mcsema_real_eip !156
  %856 = xor i32 %_new_load_1099, 79, !mcsema_real_eip !156
  %857 = and i32 %856, %844, !mcsema_real_eip !156
  %858 = lshr i32 %857, 31, !mcsema_real_eip !156
  %859 = trunc i32 %858 to i1, !mcsema_real_eip !156
  store i1 %859, i1* %OF, !mcsema_real_eip !156
  %860 = icmp eq i1 %852, false, !mcsema_real_eip !157
  br i1 %860, label %block_0x28c, label %block_0x274, !mcsema_real_eip !157

block_0x21e:                                      ; preds = %723
  %_new_gep_246 = getelementptr i8, i8* %_load_rbp_ptr_206, i64 -20
  %_allin_new_bt_247 = bitcast i8* %_new_gep_246 to i64*
  %861 = ptrtoint i64* %_allin_new_bt_247 to i64, !mcsema_real_eip !158
  %862 = inttoptr i64 %861 to i32*, !mcsema_real_eip !158
  store i32 43690, i32* %862, !mcsema_real_eip !158
  br label %block_0x231, !mcsema_real_eip !159

block_0x274:                                      ; preds = %841
  %_new_gep_249 = getelementptr i8, i8* %_load_rbp_ptr_242, i64 -56
  %_allin_new_bt_250 = bitcast i8* %_new_gep_249 to i64*
  %863 = ptrtoint i64* %_allin_new_bt_250 to i64, !mcsema_real_eip !160
  %864 = inttoptr i64 %863 to i32*, !mcsema_real_eip !160
  %_ptr_bt_1102 = bitcast i32* %864 to i8*
  %_offset_above_rbp_1103 = sub i64 %863, %_local_end_to_int_
  %_pot_address_in_parent_stack_1104 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1103
  %_cond1_1105 = icmp ugt i8* %_ptr_bt_1102, %_local_stack_end_ptr_
  %_cond2_1_1106 = icmp ugt i8* %_ptr_bt_1102, %_parent_stack_end_ptr_
  %_cond2_2_1107 = icmp ult i8* %_ptr_bt_1102, %_parent_stack_start_ptr_
  %_cond2_1108 = or i1 %_cond2_1_1106, %_cond2_2_1107
  %_cond4_1109 = icmp ule i8* %_pot_address_in_parent_stack_1104, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1110 = and i1 %_cond1_1105, %_cond2_1108
  %_cond1_n_cond2_cond3_1111 = and i1 %_cond1_n_cond2_1110, %_cond4_1109
  br i1 %_cond1_n_cond2_cond3_1111, label %865, label %866

; <label>:865:                                    ; preds = %block_0x274
  %_address_in_parent_stack_bt_1113 = bitcast i8* %_pot_address_in_parent_stack_1104 to i32*
  br label %866

; <label>:866:                                    ; preds = %block_0x274, %865
  %867 = phi i32* [ %864, %block_0x274 ], [ %_address_in_parent_stack_bt_1113, %865 ]
  %_new_load_1114 = load i32, i32* %867
  %868 = zext i32 %_new_load_1114 to i64, !mcsema_real_eip !160
  store i64 %868, i64* %XAX, !mcsema_real_eip !160
  %_new_gep_252 = getelementptr i8, i8* %_load_rbp_ptr_242, i64 -20
  %_allin_new_bt_253 = bitcast i8* %_new_gep_252 to i64*
  %EAX_val.238 = load i32, i32* %EAX.9, !mcsema_real_eip !161
  %869 = ptrtoint i64* %_allin_new_bt_253 to i64, !mcsema_real_eip !161
  %870 = inttoptr i64 %869 to i32*, !mcsema_real_eip !161
  %_ptr_bt_1117 = bitcast i32* %870 to i8*
  %_offset_above_rbp_1118 = sub i64 %869, %_local_end_to_int_
  %_pot_address_in_parent_stack_1119 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1118
  %_cond1_1120 = icmp ugt i8* %_ptr_bt_1117, %_local_stack_end_ptr_
  %_cond2_1_1121 = icmp ugt i8* %_ptr_bt_1117, %_parent_stack_end_ptr_
  %_cond2_2_1122 = icmp ult i8* %_ptr_bt_1117, %_parent_stack_start_ptr_
  %_cond2_1123 = or i1 %_cond2_1_1121, %_cond2_2_1122
  %_cond4_1124 = icmp ule i8* %_pot_address_in_parent_stack_1119, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1125 = and i1 %_cond1_1120, %_cond2_1123
  %_cond1_n_cond2_cond3_1126 = and i1 %_cond1_n_cond2_1125, %_cond4_1124
  br i1 %_cond1_n_cond2_cond3_1126, label %871, label %872

; <label>:871:                                    ; preds = %866
  %_address_in_parent_stack_bt_1128 = bitcast i8* %_pot_address_in_parent_stack_1119 to i32*
  br label %872

; <label>:872:                                    ; preds = %866, %871
  %873 = phi i32* [ %870, %866 ], [ %_address_in_parent_stack_bt_1128, %871 ]
  %_new_load_1129 = load i32, i32* %873
  %874 = sub i32 %EAX_val.238, %_new_load_1129, !mcsema_real_eip !161
  %875 = xor i32 %874, %EAX_val.238, !mcsema_real_eip !161
  %876 = xor i32 %875, %_new_load_1129, !mcsema_real_eip !161
  %877 = and i32 %876, 16, !mcsema_real_eip !161
  %878 = icmp ne i32 %877, 0, !mcsema_real_eip !161
  store i1 %878, i1* %AF, !mcsema_real_eip !161
  %879 = trunc i32 %874 to i8, !mcsema_real_eip !161
  %880 = call i8 @llvm.ctpop.i8(i8 %879), !mcsema_real_eip !161
  %881 = trunc i8 %880 to i1, !mcsema_real_eip !161
  %882 = xor i1 %881, true, !mcsema_real_eip !161
  store i1 %882, i1* %PF, !mcsema_real_eip !161
  %883 = icmp eq i32 %874, 0, !mcsema_real_eip !161
  store i1 %883, i1* %ZF, !mcsema_real_eip !161
  %884 = lshr i32 %874, 31, !mcsema_real_eip !161
  %885 = trunc i32 %884 to i1, !mcsema_real_eip !161
  store i1 %885, i1* %SF, !mcsema_real_eip !161
  %886 = icmp ult i32 %EAX_val.238, %_new_load_1129, !mcsema_real_eip !161
  store i1 %886, i1* %CF, !mcsema_real_eip !161
  %887 = xor i32 %EAX_val.238, %_new_load_1129, !mcsema_real_eip !161
  %888 = and i32 %887, %875, !mcsema_real_eip !161
  %889 = lshr i32 %888, 31, !mcsema_real_eip !161
  %890 = trunc i32 %889 to i1, !mcsema_real_eip !161
  store i1 %890, i1* %OF, !mcsema_real_eip !161
  %891 = icmp eq i1 %883, false, !mcsema_real_eip !162
  br i1 %891, label %block_0x28c, label %block_0x280, !mcsema_real_eip !162

block_0x28c:                                      ; preds = %872, %841
  %_new_gep_255 = getelementptr i8, i8* %_load_rbp_ptr_242, i64 -20
  %_allin_new_bt_256 = bitcast i8* %_new_gep_255 to i64*
  %892 = ptrtoint i64* %_allin_new_bt_256 to i64, !mcsema_real_eip !163
  %893 = inttoptr i64 %892 to i32*, !mcsema_real_eip !163
  store i32 48351, i32* %893, !mcsema_real_eip !163
  br label %block_0x293, !mcsema_real_eip !160

block_0x293:                                      ; preds = %block_0x280, %block_0x28c
  store i64 8, i64* %XDX, !mcsema_real_eip !164
  %_load_rbp_ptr_257 = load i8*, i8** %_RBP_ptr_
  %_new_gep_258 = getelementptr i8, i8* %_load_rbp_ptr_257, i64 -20
  %_allin_new_bt_259 = bitcast i8* %_new_gep_258 to i64*
  %894 = ptrtoint i64* %_allin_new_bt_259 to i64, !mcsema_real_eip !165
  %895 = inttoptr i64 %894 to i32*, !mcsema_real_eip !165
  %_ptr_bt_1132 = bitcast i32* %895 to i8*
  %_offset_above_rbp_1133 = sub i64 %894, %_local_end_to_int_
  %_pot_address_in_parent_stack_1134 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1133
  %_cond1_1135 = icmp ugt i8* %_ptr_bt_1132, %_local_stack_end_ptr_
  %_cond2_1_1136 = icmp ugt i8* %_ptr_bt_1132, %_parent_stack_end_ptr_
  %_cond2_2_1137 = icmp ult i8* %_ptr_bt_1132, %_parent_stack_start_ptr_
  %_cond2_1138 = or i1 %_cond2_1_1136, %_cond2_2_1137
  %_cond4_1139 = icmp ule i8* %_pot_address_in_parent_stack_1134, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1140 = and i1 %_cond1_1135, %_cond2_1138
  %_cond1_n_cond2_cond3_1141 = and i1 %_cond1_n_cond2_1140, %_cond4_1139
  br i1 %_cond1_n_cond2_cond3_1141, label %896, label %897

; <label>:896:                                    ; preds = %block_0x293
  %_address_in_parent_stack_bt_1143 = bitcast i8* %_pot_address_in_parent_stack_1134 to i32*
  br label %897

; <label>:897:                                    ; preds = %block_0x293, %896
  %898 = phi i32* [ %895, %block_0x293 ], [ %_address_in_parent_stack_bt_1143, %896 ]
  %_new_load_1144 = load i32, i32* %898
  %899 = zext i32 %_new_load_1144 to i64, !mcsema_real_eip !165
  store i64 %899, i64* %XDI, !mcsema_real_eip !165
  %_new_gep_261 = getelementptr i8, i8* %_load_rbp_ptr_257, i64 -16
  %_allin_new_bt_262 = bitcast i8* %_new_gep_261 to i64*
  %_ptr_to_int_1145 = ptrtoint i64* %_allin_new_bt_262 to i64
  %_offset_above_rbp_1148 = sub i64 %_ptr_to_int_1145, %_local_end_to_int_
  %_pot_address_in_parent_stack_1149 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1148
  %_cond1_1150 = icmp ugt i8* %_new_gep_261, %_local_stack_end_ptr_
  %_cond2_1_1151 = icmp ugt i8* %_new_gep_261, %_parent_stack_end_ptr_
  %_cond2_2_1152 = icmp ult i8* %_new_gep_261, %_parent_stack_start_ptr_
  %_cond2_1153 = or i1 %_cond2_1_1151, %_cond2_2_1152
  %_cond4_1154 = icmp ule i8* %_pot_address_in_parent_stack_1149, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1155 = and i1 %_cond1_1150, %_cond2_1153
  %_cond1_n_cond2_cond3_1156 = and i1 %_cond1_n_cond2_1155, %_cond4_1154
  br i1 %_cond1_n_cond2_cond3_1156, label %900, label %901

; <label>:900:                                    ; preds = %897
  %_address_in_parent_stack_bt_1158 = bitcast i8* %_pot_address_in_parent_stack_1149 to i64*
  br label %901

; <label>:901:                                    ; preds = %897, %900
  %902 = phi i64* [ %_allin_new_bt_262, %897 ], [ %_address_in_parent_stack_bt_1158, %900 ]
  %_new_load_1159 = load i64, i64* %902
  store i64 %_new_load_1159, i64* %XAX, !mcsema_real_eip !166
  %903 = add i64 20, %_new_load_1159, !mcsema_real_eip !167
  %904 = xor i64 %903, %_new_load_1159, !mcsema_real_eip !167
  %905 = xor i64 %904, 20, !mcsema_real_eip !167
  %906 = and i64 %905, 16, !mcsema_real_eip !167
  %907 = icmp ne i64 %906, 0, !mcsema_real_eip !167
  store i1 %907, i1* %AF, !mcsema_real_eip !167
  %908 = lshr i64 %903, 63, !mcsema_real_eip !167
  %909 = trunc i64 %908 to i1, !mcsema_real_eip !167
  store i1 %909, i1* %SF, !mcsema_real_eip !167
  %910 = icmp eq i64 %903, 0, !mcsema_real_eip !167
  store i1 %910, i1* %ZF, !mcsema_real_eip !167
  %911 = xor i64 %_new_load_1159, 20, !mcsema_real_eip !167
  %912 = xor i64 %911, -1, !mcsema_real_eip !167
  %913 = and i64 %912, %904, !mcsema_real_eip !167
  %914 = lshr i64 %913, 63, !mcsema_real_eip !167
  %915 = and i64 %914, 1, !mcsema_real_eip !167
  %916 = trunc i64 %915 to i1, !mcsema_real_eip !167
  store i1 %916, i1* %OF, !mcsema_real_eip !167
  %917 = trunc i64 %903 to i8, !mcsema_real_eip !167
  %918 = call i8 @llvm.ctpop.i8(i8 %917), !mcsema_real_eip !167
  %919 = trunc i8 %918 to i1, !mcsema_real_eip !167
  %920 = xor i1 %919, true, !mcsema_real_eip !167
  store i1 %920, i1* %PF, !mcsema_real_eip !167
  %921 = icmp ult i64 %903, %_new_load_1159, !mcsema_real_eip !167
  store i1 %921, i1* %CF, !mcsema_real_eip !167
  store i64 %903, i64* %XAX, !mcsema_real_eip !167
  store i64 %903, i64* %XSI, !mcsema_real_eip !168
  %_load_rsp_ptr_263 = load i8*, i8** %_RSP_ptr_
  %RSP_val.246 = load i64, i64* %XSP, !mcsema_real_eip !169
  %_new_gep_264 = getelementptr i8, i8* %_load_rsp_ptr_263, i64 -8
  %922 = sub i64 %RSP_val.246, 8, !mcsema_real_eip !169
  %_allin_new_bt_265 = bitcast i8* %_new_gep_264 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_265, !mcsema_real_eip !169
  store volatile i8* %_new_gep_264, i8** %_RSP_ptr_
  store i64 %922, i64* %XSP, !mcsema_real_eip !169
  %923 = call x86_64_sysvcc i64 @_read_bytes(i64 %899, i64 %903, i64 8)
  %_rsp_fix_430 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_431 = getelementptr i8, i8* %_rsp_fix_430, i64 8
  store i8* %_gep_fix_431, i8** %_RSP_ptr_
  store i64 %923, i64* %XAX, !mcsema_real_eip !169
  %_load_rbp_ptr_266 = load i8*, i8** %_RBP_ptr_
  %_new_gep_267 = getelementptr i8, i8* %_load_rbp_ptr_266, i64 -60
  %_allin_new_bt_268 = bitcast i8* %_new_gep_267 to i64*
  %EAX_val.249 = load i32, i32* %EAX.9, !mcsema_real_eip !170
  %924 = ptrtoint i64* %_allin_new_bt_268 to i64, !mcsema_real_eip !170
  %925 = inttoptr i64 %924 to i32*, !mcsema_real_eip !170
  store i32 %EAX_val.249, i32* %925, !mcsema_real_eip !170
  %_load_rbp_ptr_269 = load i8*, i8** %_RBP_ptr_
  %_new_gep_270 = getelementptr i8, i8* %_load_rbp_ptr_269, i64 -60
  %_allin_new_bt_271 = bitcast i8* %_new_gep_270 to i64*
  %926 = ptrtoint i64* %_allin_new_bt_271 to i64, !mcsema_real_eip !171
  %927 = inttoptr i64 %926 to i32*, !mcsema_real_eip !171
  %_ptr_bt_1162 = bitcast i32* %927 to i8*
  %_offset_above_rbp_1163 = sub i64 %926, %_local_end_to_int_
  %_pot_address_in_parent_stack_1164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1163
  %_cond1_1165 = icmp ugt i8* %_ptr_bt_1162, %_local_stack_end_ptr_
  %_cond2_1_1166 = icmp ugt i8* %_ptr_bt_1162, %_parent_stack_end_ptr_
  %_cond2_2_1167 = icmp ult i8* %_ptr_bt_1162, %_parent_stack_start_ptr_
  %_cond2_1168 = or i1 %_cond2_1_1166, %_cond2_2_1167
  %_cond4_1169 = icmp ule i8* %_pot_address_in_parent_stack_1164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1170 = and i1 %_cond1_1165, %_cond2_1168
  %_cond1_n_cond2_cond3_1171 = and i1 %_cond1_n_cond2_1170, %_cond4_1169
  br i1 %_cond1_n_cond2_cond3_1171, label %928, label %929

; <label>:928:                                    ; preds = %901
  %_address_in_parent_stack_bt_1173 = bitcast i8* %_pot_address_in_parent_stack_1164 to i32*
  br label %929

; <label>:929:                                    ; preds = %901, %928
  %930 = phi i32* [ %927, %901 ], [ %_address_in_parent_stack_bt_1173, %928 ]
  %_new_load_1174 = load i32, i32* %930
  %931 = zext i32 %_new_load_1174 to i64, !mcsema_real_eip !171
  store i64 %931, i64* %XAX, !mcsema_real_eip !171
  %EAX_val.252 = load i32, i32* %EAX.9, !mcsema_real_eip !172
  %932 = sub i32 %EAX_val.252, 3, !mcsema_real_eip !172
  %933 = xor i32 %932, %EAX_val.252, !mcsema_real_eip !172
  %934 = xor i32 %933, 3, !mcsema_real_eip !172
  %935 = and i32 %934, 16, !mcsema_real_eip !172
  %936 = icmp ne i32 %935, 0, !mcsema_real_eip !172
  store i1 %936, i1* %AF, !mcsema_real_eip !172
  %937 = trunc i32 %932 to i8, !mcsema_real_eip !172
  %938 = call i8 @llvm.ctpop.i8(i8 %937), !mcsema_real_eip !172
  %939 = trunc i8 %938 to i1, !mcsema_real_eip !172
  %940 = xor i1 %939, true, !mcsema_real_eip !172
  store i1 %940, i1* %PF, !mcsema_real_eip !172
  %941 = icmp eq i32 %932, 0, !mcsema_real_eip !172
  store i1 %941, i1* %ZF, !mcsema_real_eip !172
  %942 = lshr i32 %932, 31, !mcsema_real_eip !172
  %943 = trunc i32 %942 to i1, !mcsema_real_eip !172
  store i1 %943, i1* %SF, !mcsema_real_eip !172
  %944 = icmp ult i32 %EAX_val.252, 3, !mcsema_real_eip !172
  store i1 %944, i1* %CF, !mcsema_real_eip !172
  %945 = xor i32 %EAX_val.252, 3, !mcsema_real_eip !172
  %946 = and i32 %945, %933, !mcsema_real_eip !172
  %947 = lshr i32 %946, 31, !mcsema_real_eip !172
  %948 = trunc i32 %947 to i1, !mcsema_real_eip !172
  store i1 %948, i1* %OF, !mcsema_real_eip !172
  %949 = zext i32 %932 to i64, !mcsema_real_eip !172
  store i64 %949, i64* %XAX, !mcsema_real_eip !172
  %EAX_val.255 = load i32, i32* %EAX.9, !mcsema_real_eip !173
  store i32 %EAX_val.255, i32* %927, !mcsema_real_eip !173
  %_load_rbp_ptr_275 = load i8*, i8** %_RBP_ptr_
  %_new_gep_276 = getelementptr i8, i8* %_load_rbp_ptr_275, i64 -60
  %_allin_new_bt_277 = bitcast i8* %_new_gep_276 to i64*
  %950 = ptrtoint i64* %_allin_new_bt_277 to i64, !mcsema_real_eip !174
  %951 = inttoptr i64 %950 to i32*, !mcsema_real_eip !174
  %_ptr_bt_1177 = bitcast i32* %951 to i8*
  %_offset_above_rbp_1178 = sub i64 %950, %_local_end_to_int_
  %_pot_address_in_parent_stack_1179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1178
  %_cond1_1180 = icmp ugt i8* %_ptr_bt_1177, %_local_stack_end_ptr_
  %_cond2_1_1181 = icmp ugt i8* %_ptr_bt_1177, %_parent_stack_end_ptr_
  %_cond2_2_1182 = icmp ult i8* %_ptr_bt_1177, %_parent_stack_start_ptr_
  %_cond2_1183 = or i1 %_cond2_1_1181, %_cond2_2_1182
  %_cond4_1184 = icmp ule i8* %_pot_address_in_parent_stack_1179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1185 = and i1 %_cond1_1180, %_cond2_1183
  %_cond1_n_cond2_cond3_1186 = and i1 %_cond1_n_cond2_1185, %_cond4_1184
  br i1 %_cond1_n_cond2_cond3_1186, label %952, label %953

; <label>:952:                                    ; preds = %929
  %_address_in_parent_stack_bt_1188 = bitcast i8* %_pot_address_in_parent_stack_1179 to i32*
  br label %953

; <label>:953:                                    ; preds = %929, %952
  %954 = phi i32* [ %951, %929 ], [ %_address_in_parent_stack_bt_1188, %952 ]
  %_new_load_1189 = load i32, i32* %954
  %955 = zext i32 %_new_load_1189 to i64, !mcsema_real_eip !174
  store i64 %955, i64* %XAX, !mcsema_real_eip !174
  %EAX_val.258 = load i32, i32* %EAX.9, !mcsema_real_eip !175
  %956 = and i32 %EAX_val.258, 7, !mcsema_real_eip !175
  store i1 false, i1* %SF, !mcsema_real_eip !175
  %957 = icmp eq i32 %956, 0, !mcsema_real_eip !175
  store i1 %957, i1* %ZF, !mcsema_real_eip !175
  %958 = trunc i32 %956 to i8, !mcsema_real_eip !175
  %959 = call i8 @llvm.ctpop.i8(i8 %958), !mcsema_real_eip !175
  %960 = trunc i8 %959 to i1, !mcsema_real_eip !175
  %961 = xor i1 %960, true, !mcsema_real_eip !175
  store i1 %961, i1* %PF, !mcsema_real_eip !175
  store i1 false, i1* %OF, !mcsema_real_eip !175
  store i1 false, i1* %CF, !mcsema_real_eip !175
  store i1 undef, i1* %AF, !mcsema_real_eip !175
  %962 = zext i32 %956 to i64, !mcsema_real_eip !175
  store i64 %962, i64* %XAX, !mcsema_real_eip !175
  %EAX_val.260 = load i32, i32* %EAX.9, !mcsema_real_eip !176
  store i1 false, i1* %AF, !mcsema_real_eip !176
  %963 = trunc i32 %EAX_val.260 to i8, !mcsema_real_eip !176
  %964 = call i8 @llvm.ctpop.i8(i8 %963), !mcsema_real_eip !176
  %965 = trunc i8 %964 to i1, !mcsema_real_eip !176
  %966 = xor i1 %965, true, !mcsema_real_eip !176
  store i1 %966, i1* %PF, !mcsema_real_eip !176
  %967 = icmp eq i32 %EAX_val.260, 0, !mcsema_real_eip !176
  store i1 %967, i1* %ZF, !mcsema_real_eip !176
  %968 = lshr i32 %EAX_val.260, 31, !mcsema_real_eip !176
  %969 = trunc i32 %968 to i1, !mcsema_real_eip !176
  store i1 %969, i1* %SF, !mcsema_real_eip !176
  store i1 false, i1* %CF, !mcsema_real_eip !176
  store i1 false, i1* %OF, !mcsema_real_eip !176
  br i1 %967, label %block_0x2d2, label %block_0x2c6, !mcsema_real_eip !177

block_0x280:                                      ; preds = %872
  store i32 0, i32* %870, !mcsema_real_eip !178
  br label %block_0x293, !mcsema_real_eip !179

block_0x2c6:                                      ; preds = %953
  %_new_gep_282 = getelementptr i8, i8* %_load_rbp_ptr_275, i64 -4
  %_allin_new_bt_283 = bitcast i8* %_new_gep_282 to i64*
  %970 = ptrtoint i64* %_allin_new_bt_283 to i64, !mcsema_real_eip !180
  %971 = inttoptr i64 %970 to i32*, !mcsema_real_eip !180
  store i32 -21, i32* %971, !mcsema_real_eip !180
  br label %block_0x417, !mcsema_real_eip !181

block_0x2d2:                                      ; preds = %953
  br i1 %_cond1_n_cond2_cond3_1186, label %972, label %973

; <label>:972:                                    ; preds = %block_0x2d2
  %_address_in_parent_stack_bt_1203 = bitcast i8* %_pot_address_in_parent_stack_1179 to i32*
  br label %973

; <label>:973:                                    ; preds = %block_0x2d2, %972
  %974 = phi i32* [ %951, %block_0x2d2 ], [ %_address_in_parent_stack_bt_1203, %972 ]
  %_new_load_1204 = load i32, i32* %974
  %975 = zext i32 %_new_load_1204 to i64, !mcsema_real_eip !182
  store i64 %975, i64* %XAX, !mcsema_real_eip !182
  %EAX_val.264 = load i32, i32* %EAX.9, !mcsema_real_eip !183
  %976 = sub i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  %977 = xor i32 %976, %EAX_val.264, !mcsema_real_eip !183
  %978 = xor i32 %977, -2147483648, !mcsema_real_eip !183
  %979 = and i32 %978, 16, !mcsema_real_eip !183
  %980 = icmp ne i32 %979, 0, !mcsema_real_eip !183
  store i1 %980, i1* %AF, !mcsema_real_eip !183
  %981 = trunc i32 %976 to i8, !mcsema_real_eip !183
  %982 = call i8 @llvm.ctpop.i8(i8 %981), !mcsema_real_eip !183
  %983 = trunc i8 %982 to i1, !mcsema_real_eip !183
  %984 = xor i1 %983, true, !mcsema_real_eip !183
  store i1 %984, i1* %PF, !mcsema_real_eip !183
  %985 = icmp eq i32 %976, 0, !mcsema_real_eip !183
  store i1 %985, i1* %ZF, !mcsema_real_eip !183
  %986 = lshr i32 %976, 31, !mcsema_real_eip !183
  %987 = trunc i32 %986 to i1, !mcsema_real_eip !183
  store i1 %987, i1* %SF, !mcsema_real_eip !183
  %988 = icmp ult i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  store i1 %988, i1* %CF, !mcsema_real_eip !183
  %989 = xor i32 %EAX_val.264, -2147483648, !mcsema_real_eip !183
  %990 = and i32 %989, %977, !mcsema_real_eip !183
  %991 = lshr i32 %990, 31, !mcsema_real_eip !183
  %992 = trunc i32 %991 to i1, !mcsema_real_eip !183
  store i1 %992, i1* %OF, !mcsema_real_eip !183
  %993 = zext i32 %976 to i64, !mcsema_real_eip !183
  store i64 %993, i64* %XAX, !mcsema_real_eip !183
  %EAX_val.267 = load i32, i32* %EAX.9, !mcsema_real_eip !184
  store i32 %EAX_val.267, i32* %951, !mcsema_real_eip !184
  %_load_rbp_ptr_290 = load i8*, i8** %_RBP_ptr_
  %_new_gep_291 = getelementptr i8, i8* %_load_rbp_ptr_290, i64 -60
  %_allin_new_bt_292 = bitcast i8* %_new_gep_291 to i64*
  %994 = ptrtoint i64* %_allin_new_bt_292 to i64, !mcsema_real_eip !185
  %995 = inttoptr i64 %994 to i32*, !mcsema_real_eip !185
  %_ptr_bt_1207 = bitcast i32* %995 to i8*
  %_offset_above_rbp_1208 = sub i64 %994, %_local_end_to_int_
  %_pot_address_in_parent_stack_1209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1208
  %_cond1_1210 = icmp ugt i8* %_ptr_bt_1207, %_local_stack_end_ptr_
  %_cond2_1_1211 = icmp ugt i8* %_ptr_bt_1207, %_parent_stack_end_ptr_
  %_cond2_2_1212 = icmp ult i8* %_ptr_bt_1207, %_parent_stack_start_ptr_
  %_cond2_1213 = or i1 %_cond2_1_1211, %_cond2_2_1212
  %_cond4_1214 = icmp ule i8* %_pot_address_in_parent_stack_1209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1215 = and i1 %_cond1_1210, %_cond2_1213
  %_cond1_n_cond2_cond3_1216 = and i1 %_cond1_n_cond2_1215, %_cond4_1214
  br i1 %_cond1_n_cond2_cond3_1216, label %996, label %997

; <label>:996:                                    ; preds = %973
  %_address_in_parent_stack_bt_1218 = bitcast i8* %_pot_address_in_parent_stack_1209 to i32*
  br label %997

; <label>:997:                                    ; preds = %973, %996
  %998 = phi i32* [ %995, %973 ], [ %_address_in_parent_stack_bt_1218, %996 ]
  %_new_load_1219 = load i32, i32* %998
  %999 = sub i32 %_new_load_1219, 268435455, !mcsema_real_eip !185
  %1000 = xor i32 %999, %_new_load_1219, !mcsema_real_eip !185
  %1001 = xor i32 %1000, 268435455, !mcsema_real_eip !185
  %1002 = and i32 %1001, 16, !mcsema_real_eip !185
  %1003 = icmp ne i32 %1002, 0, !mcsema_real_eip !185
  store i1 %1003, i1* %AF, !mcsema_real_eip !185
  %1004 = trunc i32 %999 to i8, !mcsema_real_eip !185
  %1005 = call i8 @llvm.ctpop.i8(i8 %1004), !mcsema_real_eip !185
  %1006 = trunc i8 %1005 to i1, !mcsema_real_eip !185
  %1007 = xor i1 %1006, true, !mcsema_real_eip !185
  store i1 %1007, i1* %PF, !mcsema_real_eip !185
  %1008 = icmp eq i32 %999, 0, !mcsema_real_eip !185
  store i1 %1008, i1* %ZF, !mcsema_real_eip !185
  %1009 = lshr i32 %999, 31, !mcsema_real_eip !185
  %1010 = trunc i32 %1009 to i1, !mcsema_real_eip !185
  store i1 %1010, i1* %SF, !mcsema_real_eip !185
  %1011 = icmp ult i32 %_new_load_1219, 268435455, !mcsema_real_eip !185
  store i1 %1011, i1* %CF, !mcsema_real_eip !185
  %1012 = xor i32 %_new_load_1219, 268435455, !mcsema_real_eip !185
  %1013 = and i32 %1012, %1000, !mcsema_real_eip !185
  %1014 = lshr i32 %1013, 31, !mcsema_real_eip !185
  %1015 = trunc i32 %1014 to i1, !mcsema_real_eip !185
  store i1 %1015, i1* %OF, !mcsema_real_eip !185
  %1016 = or i1 %1011, %1008, !mcsema_real_eip !186
  br i1 %1016, label %block_0x2f6, label %block_0x2ea, !mcsema_real_eip !186

block_0x2ea:                                      ; preds = %997
  %_new_gep_294 = getelementptr i8, i8* %_load_rbp_ptr_290, i64 -4
  %_allin_new_bt_295 = bitcast i8* %_new_gep_294 to i64*
  %1017 = ptrtoint i64* %_allin_new_bt_295 to i64, !mcsema_real_eip !187
  %1018 = inttoptr i64 %1017 to i32*, !mcsema_real_eip !187
  store i32 -22, i32* %1018, !mcsema_real_eip !187
  br label %block_0x417, !mcsema_real_eip !188

block_0x2f6:                                      ; preds = %997
  store i64 10000, i64* %XAX, !mcsema_real_eip !189
  br i1 %_cond1_n_cond2_cond3_1216, label %1019, label %1020

; <label>:1019:                                   ; preds = %block_0x2f6
  %_address_in_parent_stack_bt_1233 = bitcast i8* %_pot_address_in_parent_stack_1209 to i32*
  br label %1020

; <label>:1020:                                   ; preds = %block_0x2f6, %1019
  %1021 = phi i32* [ %995, %block_0x2f6 ], [ %_address_in_parent_stack_bt_1233, %1019 ]
  %_new_load_1234 = load i32, i32* %1021
  %1022 = zext i32 %_new_load_1234 to i64, !mcsema_real_eip !190
  store i64 %1022, i64* %XCX, !mcsema_real_eip !190
  %ECX_val.272 = load i32, i32* %ECX.12, !mcsema_real_eip !191
  %1023 = xor i32 %ECX_val.272, 13631488, !mcsema_real_eip !191
  store i1 false, i1* %CF, !mcsema_real_eip !191
  store i1 false, i1* %OF, !mcsema_real_eip !191
  %1024 = lshr i32 %1023, 31, !mcsema_real_eip !191
  %1025 = trunc i32 %1024 to i1, !mcsema_real_eip !191
  store i1 %1025, i1* %SF, !mcsema_real_eip !191
  %1026 = icmp eq i32 %1023, 0, !mcsema_real_eip !191
  store i1 %1026, i1* %ZF, !mcsema_real_eip !191
  %1027 = trunc i32 %1023 to i8, !mcsema_real_eip !191
  %1028 = call i8 @llvm.ctpop.i8(i8 %1027), !mcsema_real_eip !191
  %1029 = trunc i8 %1028 to i1, !mcsema_real_eip !191
  %1030 = xor i1 %1029, true, !mcsema_real_eip !191
  store i1 %1030, i1* %PF, !mcsema_real_eip !191
  store i1 undef, i1* %AF, !mcsema_real_eip !191
  %1031 = zext i32 %1023 to i64, !mcsema_real_eip !191
  store i64 %1031, i64* %XCX, !mcsema_real_eip !191
  %ECX_val.275 = load i32, i32* %ECX.12, !mcsema_real_eip !192
  store i32 %ECX_val.275, i32* %995, !mcsema_real_eip !192
  %_load_rbp_ptr_302 = load i8*, i8** %_RBP_ptr_
  %_new_gep_303 = getelementptr i8, i8* %_load_rbp_ptr_302, i64 -60
  %_allin_new_bt_304 = bitcast i8* %_new_gep_303 to i64*
  %1032 = ptrtoint i64* %_allin_new_bt_304 to i64, !mcsema_real_eip !193
  %1033 = inttoptr i64 %1032 to i32*, !mcsema_real_eip !193
  %_ptr_bt_1237 = bitcast i32* %1033 to i8*
  %_offset_above_rbp_1238 = sub i64 %1032, %_local_end_to_int_
  %_pot_address_in_parent_stack_1239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1238
  %_cond1_1240 = icmp ugt i8* %_ptr_bt_1237, %_local_stack_end_ptr_
  %_cond2_1_1241 = icmp ugt i8* %_ptr_bt_1237, %_parent_stack_end_ptr_
  %_cond2_2_1242 = icmp ult i8* %_ptr_bt_1237, %_parent_stack_start_ptr_
  %_cond2_1243 = or i1 %_cond2_1_1241, %_cond2_2_1242
  %_cond4_1244 = icmp ule i8* %_pot_address_in_parent_stack_1239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1245 = and i1 %_cond1_1240, %_cond2_1243
  %_cond1_n_cond2_cond3_1246 = and i1 %_cond1_n_cond2_1245, %_cond4_1244
  br i1 %_cond1_n_cond2_cond3_1246, label %1034, label %1035

; <label>:1034:                                   ; preds = %1020
  %_address_in_parent_stack_bt_1248 = bitcast i8* %_pot_address_in_parent_stack_1239 to i32*
  br label %1035

; <label>:1035:                                   ; preds = %1020, %1034
  %1036 = phi i32* [ %1033, %1020 ], [ %_address_in_parent_stack_bt_1248, %1034 ]
  %_new_load_1249 = load i32, i32* %1036
  %1037 = zext i32 %_new_load_1249 to i64, !mcsema_real_eip !193
  store i64 %1037, i64* %XCX, !mcsema_real_eip !193
  %ECX_val.278 = load i32, i32* %ECX.12, !mcsema_real_eip !194
  %1038 = lshr i32 %ECX_val.278, 3, !mcsema_real_eip !194
  %1039 = and i32 %1038, 1, !mcsema_real_eip !194
  %1040 = icmp ne i32 %1039, 0, !mcsema_real_eip !194
  %1041 = load i1, i1* %CF, !mcsema_real_eip !194
  %1042 = lshr i32 %1038, 1, !mcsema_real_eip !194
  %1043 = load i1, i1* %OF, !mcsema_real_eip !194
  %1044 = and i32 %ECX_val.278, -2147483648, !mcsema_real_eip !194
  %1045 = icmp ne i32 %1044, 0, !mcsema_real_eip !194
  store i1 %1040, i1* %CF, !mcsema_real_eip !194
  %1046 = load i1, i1* %ZF, !mcsema_real_eip !194
  %1047 = icmp eq i32 %1042, 0, !mcsema_real_eip !194
  store i1 %1047, i1* %ZF, !mcsema_real_eip !194
  %1048 = load i1, i1* %SF, !mcsema_real_eip !194
  store i1 false, i1* %SF, !mcsema_real_eip !194
  %1049 = load i1, i1* %PF, !mcsema_real_eip !194
  %1050 = trunc i32 %1042 to i8, !mcsema_real_eip !194
  %1051 = call i8 @llvm.ctpop.i8(i8 %1050), !mcsema_real_eip !194
  %1052 = trunc i8 %1051 to i1, !mcsema_real_eip !194
  %1053 = xor i1 %1052, true, !mcsema_real_eip !194
  store i1 %1053, i1* %PF, !mcsema_real_eip !194
  %1054 = zext i32 %1042 to i64, !mcsema_real_eip !194
  store i64 %1054, i64* %XCX, !mcsema_real_eip !194
  %ECX_val.281 = load i32, i32* %ECX.12, !mcsema_real_eip !195
  store i32 %ECX_val.281, i32* %1033, !mcsema_real_eip !195
  %_load_rbp_ptr_308 = load i8*, i8** %_RBP_ptr_
  %_new_gep_309 = getelementptr i8, i8* %_load_rbp_ptr_308, i64 -60
  %_allin_new_bt_310 = bitcast i8* %_new_gep_309 to i64*
  %1055 = ptrtoint i64* %_allin_new_bt_310 to i64, !mcsema_real_eip !196
  %1056 = inttoptr i64 %1055 to i32*, !mcsema_real_eip !196
  %_ptr_bt_1252 = bitcast i32* %1056 to i8*
  %_offset_above_rbp_1253 = sub i64 %1055, %_local_end_to_int_
  %_pot_address_in_parent_stack_1254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1253
  %_cond1_1255 = icmp ugt i8* %_ptr_bt_1252, %_local_stack_end_ptr_
  %_cond2_1_1256 = icmp ugt i8* %_ptr_bt_1252, %_parent_stack_end_ptr_
  %_cond2_2_1257 = icmp ult i8* %_ptr_bt_1252, %_parent_stack_start_ptr_
  %_cond2_1258 = or i1 %_cond2_1_1256, %_cond2_2_1257
  %_cond4_1259 = icmp ule i8* %_pot_address_in_parent_stack_1254, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1260 = and i1 %_cond1_1255, %_cond2_1258
  %_cond1_n_cond2_cond3_1261 = and i1 %_cond1_n_cond2_1260, %_cond4_1259
  br i1 %_cond1_n_cond2_cond3_1261, label %1057, label %1058

; <label>:1057:                                   ; preds = %1035
  %_address_in_parent_stack_bt_1263 = bitcast i8* %_pot_address_in_parent_stack_1254 to i32*
  br label %1058

; <label>:1058:                                   ; preds = %1035, %1057
  %1059 = phi i32* [ %1056, %1035 ], [ %_address_in_parent_stack_bt_1263, %1057 ]
  %_new_load_1264 = load i32, i32* %1059
  %1060 = zext i32 %_new_load_1264 to i64, !mcsema_real_eip !196
  store i64 %1060, i64* %XCX, !mcsema_real_eip !196
  %ECX_val.284 = load i32, i32* %ECX.12, !mcsema_real_eip !197
  %1061 = sub i32 %ECX_val.284, 226, !mcsema_real_eip !197
  %1062 = xor i32 %1061, %ECX_val.284, !mcsema_real_eip !197
  %1063 = xor i32 %1062, 226, !mcsema_real_eip !197
  %1064 = and i32 %1063, 16, !mcsema_real_eip !197
  %1065 = icmp ne i32 %1064, 0, !mcsema_real_eip !197
  store i1 %1065, i1* %AF, !mcsema_real_eip !197
  %1066 = trunc i32 %1061 to i8, !mcsema_real_eip !197
  %1067 = call i8 @llvm.ctpop.i8(i8 %1066), !mcsema_real_eip !197
  %1068 = trunc i8 %1067 to i1, !mcsema_real_eip !197
  %1069 = xor i1 %1068, true, !mcsema_real_eip !197
  store i1 %1069, i1* %PF, !mcsema_real_eip !197
  %1070 = icmp eq i32 %1061, 0, !mcsema_real_eip !197
  store i1 %1070, i1* %ZF, !mcsema_real_eip !197
  %1071 = lshr i32 %1061, 31, !mcsema_real_eip !197
  %1072 = trunc i32 %1071 to i1, !mcsema_real_eip !197
  store i1 %1072, i1* %SF, !mcsema_real_eip !197
  %1073 = icmp ult i32 %ECX_val.284, 226, !mcsema_real_eip !197
  store i1 %1073, i1* %CF, !mcsema_real_eip !197
  %1074 = xor i32 %ECX_val.284, 226, !mcsema_real_eip !197
  %1075 = and i32 %1074, %1062, !mcsema_real_eip !197
  %1076 = lshr i32 %1075, 31, !mcsema_real_eip !197
  %1077 = trunc i32 %1076 to i1, !mcsema_real_eip !197
  store i1 %1077, i1* %OF, !mcsema_real_eip !197
  %1078 = zext i32 %1061 to i64, !mcsema_real_eip !197
  store i64 %1078, i64* %XCX, !mcsema_real_eip !197
  %ECX_val.287 = load i32, i32* %ECX.12, !mcsema_real_eip !198
  store i32 %ECX_val.287, i32* %1056, !mcsema_real_eip !198
  %_load_rbp_ptr_314 = load i8*, i8** %_RBP_ptr_
  %_new_gep_315 = getelementptr i8, i8* %_load_rbp_ptr_314, i64 -60
  %_allin_new_bt_316 = bitcast i8* %_new_gep_315 to i64*
  %1079 = ptrtoint i64* %_allin_new_bt_316 to i64, !mcsema_real_eip !199
  %1080 = inttoptr i64 %1079 to i32*, !mcsema_real_eip !199
  %_ptr_bt_1267 = bitcast i32* %1080 to i8*
  %_offset_above_rbp_1268 = sub i64 %1079, %_local_end_to_int_
  %_pot_address_in_parent_stack_1269 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1268
  %_cond1_1270 = icmp ugt i8* %_ptr_bt_1267, %_local_stack_end_ptr_
  %_cond2_1_1271 = icmp ugt i8* %_ptr_bt_1267, %_parent_stack_end_ptr_
  %_cond2_2_1272 = icmp ult i8* %_ptr_bt_1267, %_parent_stack_start_ptr_
  %_cond2_1273 = or i1 %_cond2_1_1271, %_cond2_2_1272
  %_cond4_1274 = icmp ule i8* %_pot_address_in_parent_stack_1269, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1275 = and i1 %_cond1_1270, %_cond2_1273
  %_cond1_n_cond2_cond3_1276 = and i1 %_cond1_n_cond2_1275, %_cond4_1274
  br i1 %_cond1_n_cond2_cond3_1276, label %1081, label %1082

; <label>:1081:                                   ; preds = %1058
  %_address_in_parent_stack_bt_1278 = bitcast i8* %_pot_address_in_parent_stack_1269 to i32*
  br label %1082

; <label>:1082:                                   ; preds = %1058, %1081
  %1083 = phi i32* [ %1080, %1058 ], [ %_address_in_parent_stack_bt_1278, %1081 ]
  %_new_load_1279 = load i32, i32* %1083
  %1084 = zext i32 %_new_load_1279 to i64, !mcsema_real_eip !199
  store i64 %1084, i64* %XCX, !mcsema_real_eip !199
  %_new_gep_318 = getelementptr i8, i8* %_load_rbp_ptr_314, i64 -68
  %_allin_new_bt_319 = bitcast i8* %_new_gep_318 to i64*
  %EAX_val.291 = load i32, i32* %EAX.9, !mcsema_real_eip !200
  %1085 = ptrtoint i64* %_allin_new_bt_319 to i64, !mcsema_real_eip !200
  %1086 = inttoptr i64 %1085 to i32*, !mcsema_real_eip !200
  store i32 %EAX_val.291, i32* %1086, !mcsema_real_eip !200
  %ECX_val.293 = load i32, i32* %ECX.12, !mcsema_real_eip !201
  %1087 = zext i32 %ECX_val.293 to i64, !mcsema_real_eip !201
  store i64 %1087, i64* %XAX, !mcsema_real_eip !201
  %EDX_val.295 = load i32, i32* %EDX.67, !mcsema_real_eip !202
  store i1 false, i1* %CF, !mcsema_real_eip !202
  store i1 false, i1* %OF, !mcsema_real_eip !202
  store i1 false, i1* %SF, !mcsema_real_eip !202
  store i1 true, i1* %ZF, !mcsema_real_eip !202
  store i1 true, i1* %PF, !mcsema_real_eip !202
  store i1 undef, i1* %AF, !mcsema_real_eip !202
  store i64 0, i64* %XDX, !mcsema_real_eip !202
  %_load_rbp_ptr_320 = load i8*, i8** %_RBP_ptr_
  %_new_gep_321 = getelementptr i8, i8* %_load_rbp_ptr_320, i64 -68
  %_allin_new_bt_322 = bitcast i8* %_new_gep_321 to i64*
  %1088 = ptrtoint i64* %_allin_new_bt_322 to i64, !mcsema_real_eip !203
  %1089 = inttoptr i64 %1088 to i32*, !mcsema_real_eip !203
  %_ptr_bt_1282 = bitcast i32* %1089 to i8*
  %_offset_above_rbp_1283 = sub i64 %1088, %_local_end_to_int_
  %_pot_address_in_parent_stack_1284 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1283
  %_cond1_1285 = icmp ugt i8* %_ptr_bt_1282, %_local_stack_end_ptr_
  %_cond2_1_1286 = icmp ugt i8* %_ptr_bt_1282, %_parent_stack_end_ptr_
  %_cond2_2_1287 = icmp ult i8* %_ptr_bt_1282, %_parent_stack_start_ptr_
  %_cond2_1288 = or i1 %_cond2_1_1286, %_cond2_2_1287
  %_cond4_1289 = icmp ule i8* %_pot_address_in_parent_stack_1284, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1290 = and i1 %_cond1_1285, %_cond2_1288
  %_cond1_n_cond2_cond3_1291 = and i1 %_cond1_n_cond2_1290, %_cond4_1289
  br i1 %_cond1_n_cond2_cond3_1291, label %1090, label %1091

; <label>:1090:                                   ; preds = %1082
  %_address_in_parent_stack_bt_1293 = bitcast i8* %_pot_address_in_parent_stack_1284 to i32*
  br label %1091

; <label>:1091:                                   ; preds = %1082, %1090
  %1092 = phi i32* [ %1089, %1082 ], [ %_address_in_parent_stack_bt_1293, %1090 ]
  %_new_load_1294 = load i32, i32* %1092
  %1093 = zext i32 %_new_load_1294 to i64, !mcsema_real_eip !203
  store i64 %1093, i64* %XCX, !mcsema_real_eip !203
  %ECX_val.300 = load i32, i32* %ECX.12, !mcsema_real_eip !204
  %EAX_val.302 = load i32, i32* %EAX.9, !mcsema_real_eip !204
  %EDX_val.304 = load i32, i32* %EDX.67, !mcsema_real_eip !204
  %1094 = zext i32 %EDX_val.304 to i64, !mcsema_real_eip !204
  %1095 = shl i64 %1094, 32, !mcsema_real_eip !204
  %1096 = sext i32 %EAX_val.302 to i64, !mcsema_real_eip !204
  %1097 = or i64 %1095, %1096, !mcsema_real_eip !204
  %1098 = zext i32 %ECX_val.300 to i64, !mcsema_real_eip !204
  %1099 = udiv i64 %1097, %1098, !mcsema_real_eip !204
  %1100 = urem i64 %1097, %1098, !mcsema_real_eip !204
  %1101 = trunc i64 %1100 to i32, !mcsema_real_eip !204
  %1102 = trunc i64 %1099 to i32, !mcsema_real_eip !204
  %1103 = zext i32 %1101 to i64, !mcsema_real_eip !204
  store i64 %1103, i64* %XDX, !mcsema_real_eip !204
  %1104 = zext i32 %1102 to i64, !mcsema_real_eip !204
  store i64 %1104, i64* %XAX, !mcsema_real_eip !204
  %_new_gep_324 = getelementptr i8, i8* %_load_rbp_ptr_320, i64 -60
  %_allin_new_bt_325 = bitcast i8* %_new_gep_324 to i64*
  %EAX_val.307 = load i32, i32* %EAX.9, !mcsema_real_eip !205
  %1105 = ptrtoint i64* %_allin_new_bt_325 to i64, !mcsema_real_eip !205
  %1106 = inttoptr i64 %1105 to i32*, !mcsema_real_eip !205
  store i32 %EAX_val.307, i32* %1106, !mcsema_real_eip !205
  %_load_rbp_ptr_326 = load i8*, i8** %_RBP_ptr_
  %_new_gep_327 = getelementptr i8, i8* %_load_rbp_ptr_326, i64 -60
  %_allin_new_bt_328 = bitcast i8* %_new_gep_327 to i64*
  %1107 = ptrtoint i64* %_allin_new_bt_328 to i64, !mcsema_real_eip !206
  %1108 = inttoptr i64 %1107 to i32*, !mcsema_real_eip !206
  %_ptr_bt_1297 = bitcast i32* %1108 to i8*
  %_offset_above_rbp_1298 = sub i64 %1107, %_local_end_to_int_
  %_pot_address_in_parent_stack_1299 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1298
  %_cond1_1300 = icmp ugt i8* %_ptr_bt_1297, %_local_stack_end_ptr_
  %_cond2_1_1301 = icmp ugt i8* %_ptr_bt_1297, %_parent_stack_end_ptr_
  %_cond2_2_1302 = icmp ult i8* %_ptr_bt_1297, %_parent_stack_start_ptr_
  %_cond2_1303 = or i1 %_cond2_1_1301, %_cond2_2_1302
  %_cond4_1304 = icmp ule i8* %_pot_address_in_parent_stack_1299, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1305 = and i1 %_cond1_1300, %_cond2_1303
  %_cond1_n_cond2_cond3_1306 = and i1 %_cond1_n_cond2_1305, %_cond4_1304
  br i1 %_cond1_n_cond2_cond3_1306, label %1109, label %1110

; <label>:1109:                                   ; preds = %1091
  %_address_in_parent_stack_bt_1308 = bitcast i8* %_pot_address_in_parent_stack_1299 to i32*
  br label %1110

; <label>:1110:                                   ; preds = %1091, %1109
  %1111 = phi i32* [ %1108, %1091 ], [ %_address_in_parent_stack_bt_1308, %1109 ]
  %_new_load_1309 = load i32, i32* %1111
  %1112 = sub i32 %_new_load_1309, 3, !mcsema_real_eip !206
  %1113 = xor i32 %1112, %_new_load_1309, !mcsema_real_eip !206
  %1114 = xor i32 %1113, 3, !mcsema_real_eip !206
  %1115 = and i32 %1114, 16, !mcsema_real_eip !206
  %1116 = icmp ne i32 %1115, 0, !mcsema_real_eip !206
  store i1 %1116, i1* %AF, !mcsema_real_eip !206
  %1117 = trunc i32 %1112 to i8, !mcsema_real_eip !206
  %1118 = call i8 @llvm.ctpop.i8(i8 %1117), !mcsema_real_eip !206
  %1119 = trunc i8 %1118 to i1, !mcsema_real_eip !206
  %1120 = xor i1 %1119, true, !mcsema_real_eip !206
  store i1 %1120, i1* %PF, !mcsema_real_eip !206
  %1121 = icmp eq i32 %1112, 0, !mcsema_real_eip !206
  store i1 %1121, i1* %ZF, !mcsema_real_eip !206
  %1122 = lshr i32 %1112, 31, !mcsema_real_eip !206
  %1123 = trunc i32 %1122 to i1, !mcsema_real_eip !206
  store i1 %1123, i1* %SF, !mcsema_real_eip !206
  %1124 = icmp ult i32 %_new_load_1309, 3, !mcsema_real_eip !206
  store i1 %1124, i1* %CF, !mcsema_real_eip !206
  %1125 = xor i32 %_new_load_1309, 3, !mcsema_real_eip !206
  %1126 = and i32 %1125, %1113, !mcsema_real_eip !206
  %1127 = lshr i32 %1126, 31, !mcsema_real_eip !206
  %1128 = trunc i32 %1127 to i1, !mcsema_real_eip !206
  store i1 %1128, i1* %OF, !mcsema_real_eip !206
  br i1 %1121, label %block_0x343, label %block_0x338, !mcsema_real_eip !207

block_0x338:                                      ; preds = %1110
  br i1 %_cond1_n_cond2_cond3_1306, label %1129, label %1130

; <label>:1129:                                   ; preds = %block_0x338
  %_address_in_parent_stack_bt_1323 = bitcast i8* %_pot_address_in_parent_stack_1299 to i32*
  br label %1130

; <label>:1130:                                   ; preds = %block_0x338, %1129
  %1131 = phi i32* [ %1108, %block_0x338 ], [ %_address_in_parent_stack_bt_1323, %1129 ]
  %_new_load_1324 = load i32, i32* %1131
  %1132 = zext i32 %_new_load_1324 to i64, !mcsema_real_eip !208
  store i64 %1132, i64* %XAX, !mcsema_real_eip !208
  %_new_gep_333 = getelementptr i8, i8* %_load_rbp_ptr_326, i64 -4
  %_allin_new_bt_334 = bitcast i8* %_new_gep_333 to i64*
  %EAX_val.328 = load i32, i32* %EAX.9, !mcsema_real_eip !209
  %1133 = ptrtoint i64* %_allin_new_bt_334 to i64, !mcsema_real_eip !209
  %1134 = inttoptr i64 %1133 to i32*, !mcsema_real_eip !209
  store i32 %EAX_val.328, i32* %1134, !mcsema_real_eip !209
  br label %block_0x417, !mcsema_real_eip !210

block_0x343:                                      ; preds = %1110
  store i64 4, i64* %XDX, !mcsema_real_eip !211
  %_new_gep_336 = getelementptr i8, i8* %_load_rbp_ptr_326, i64 -20
  %_allin_new_bt_337 = bitcast i8* %_new_gep_336 to i64*
  %1135 = ptrtoint i64* %_allin_new_bt_337 to i64, !mcsema_real_eip !212
  %1136 = inttoptr i64 %1135 to i32*, !mcsema_real_eip !212
  %_ptr_bt_1327 = bitcast i32* %1136 to i8*
  %_offset_above_rbp_1328 = sub i64 %1135, %_local_end_to_int_
  %_pot_address_in_parent_stack_1329 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1328
  %_cond1_1330 = icmp ugt i8* %_ptr_bt_1327, %_local_stack_end_ptr_
  %_cond2_1_1331 = icmp ugt i8* %_ptr_bt_1327, %_parent_stack_end_ptr_
  %_cond2_2_1332 = icmp ult i8* %_ptr_bt_1327, %_parent_stack_start_ptr_
  %_cond2_1333 = or i1 %_cond2_1_1331, %_cond2_2_1332
  %_cond4_1334 = icmp ule i8* %_pot_address_in_parent_stack_1329, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1335 = and i1 %_cond1_1330, %_cond2_1333
  %_cond1_n_cond2_cond3_1336 = and i1 %_cond1_n_cond2_1335, %_cond4_1334
  br i1 %_cond1_n_cond2_cond3_1336, label %1137, label %1138

; <label>:1137:                                   ; preds = %block_0x343
  %_address_in_parent_stack_bt_1338 = bitcast i8* %_pot_address_in_parent_stack_1329 to i32*
  br label %1138

; <label>:1138:                                   ; preds = %block_0x343, %1137
  %1139 = phi i32* [ %1136, %block_0x343 ], [ %_address_in_parent_stack_bt_1338, %1137 ]
  %_new_load_1339 = load i32, i32* %1139
  %1140 = zext i32 %_new_load_1339 to i64, !mcsema_real_eip !212
  store i64 %1140, i64* %XDI, !mcsema_real_eip !212
  %_new_gep_339 = getelementptr i8, i8* %_load_rbp_ptr_326, i64 -16
  %_allin_new_bt_340 = bitcast i8* %_new_gep_339 to i64*
  %_ptr_to_int_1340 = ptrtoint i64* %_allin_new_bt_340 to i64
  %_offset_above_rbp_1343 = sub i64 %_ptr_to_int_1340, %_local_end_to_int_
  %_pot_address_in_parent_stack_1344 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1343
  %_cond1_1345 = icmp ugt i8* %_new_gep_339, %_local_stack_end_ptr_
  %_cond2_1_1346 = icmp ugt i8* %_new_gep_339, %_parent_stack_end_ptr_
  %_cond2_2_1347 = icmp ult i8* %_new_gep_339, %_parent_stack_start_ptr_
  %_cond2_1348 = or i1 %_cond2_1_1346, %_cond2_2_1347
  %_cond4_1349 = icmp ule i8* %_pot_address_in_parent_stack_1344, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1350 = and i1 %_cond1_1345, %_cond2_1348
  %_cond1_n_cond2_cond3_1351 = and i1 %_cond1_n_cond2_1350, %_cond4_1349
  br i1 %_cond1_n_cond2_cond3_1351, label %1141, label %1142

; <label>:1141:                                   ; preds = %1138
  %_address_in_parent_stack_bt_1353 = bitcast i8* %_pot_address_in_parent_stack_1344 to i64*
  br label %1142

; <label>:1142:                                   ; preds = %1138, %1141
  %1143 = phi i64* [ %_allin_new_bt_340, %1138 ], [ %_address_in_parent_stack_bt_1353, %1141 ]
  %_new_load_1354 = load i64, i64* %1143
  store i64 %_new_load_1354, i64* %XAX, !mcsema_real_eip !213
  %1144 = add i64 28, %_new_load_1354, !mcsema_real_eip !214
  %1145 = xor i64 %1144, %_new_load_1354, !mcsema_real_eip !214
  %1146 = xor i64 %1145, 28, !mcsema_real_eip !214
  %1147 = and i64 %1146, 16, !mcsema_real_eip !214
  %1148 = icmp ne i64 %1147, 0, !mcsema_real_eip !214
  store i1 %1148, i1* %AF, !mcsema_real_eip !214
  %1149 = lshr i64 %1144, 63, !mcsema_real_eip !214
  %1150 = trunc i64 %1149 to i1, !mcsema_real_eip !214
  store i1 %1150, i1* %SF, !mcsema_real_eip !214
  %1151 = icmp eq i64 %1144, 0, !mcsema_real_eip !214
  store i1 %1151, i1* %ZF, !mcsema_real_eip !214
  %1152 = xor i64 %_new_load_1354, 28, !mcsema_real_eip !214
  %1153 = xor i64 %1152, -1, !mcsema_real_eip !214
  %1154 = and i64 %1153, %1145, !mcsema_real_eip !214
  %1155 = lshr i64 %1154, 63, !mcsema_real_eip !214
  %1156 = and i64 %1155, 1, !mcsema_real_eip !214
  %1157 = trunc i64 %1156 to i1, !mcsema_real_eip !214
  store i1 %1157, i1* %OF, !mcsema_real_eip !214
  %1158 = trunc i64 %1144 to i8, !mcsema_real_eip !214
  %1159 = call i8 @llvm.ctpop.i8(i8 %1158), !mcsema_real_eip !214
  %1160 = trunc i8 %1159 to i1, !mcsema_real_eip !214
  %1161 = xor i1 %1160, true, !mcsema_real_eip !214
  store i1 %1161, i1* %PF, !mcsema_real_eip !214
  %1162 = icmp ult i64 %1144, %_new_load_1354, !mcsema_real_eip !214
  store i1 %1162, i1* %CF, !mcsema_real_eip !214
  store i64 %1144, i64* %XAX, !mcsema_real_eip !214
  store i64 %1144, i64* %XSI, !mcsema_real_eip !215
  %_load_rsp_ptr_341 = load i8*, i8** %_RSP_ptr_
  %RSP_val.317 = load i64, i64* %XSP, !mcsema_real_eip !216
  %_new_gep_342 = getelementptr i8, i8* %_load_rsp_ptr_341, i64 -8
  %1163 = sub i64 %RSP_val.317, 8, !mcsema_real_eip !216
  %_allin_new_bt_343 = bitcast i8* %_new_gep_342 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_343, !mcsema_real_eip !216
  store volatile i8* %_new_gep_342, i8** %_RSP_ptr_
  store i64 %1163, i64* %XSP, !mcsema_real_eip !216
  %1164 = call x86_64_sysvcc i64 @_read_bytes(i64 %1140, i64 %1144, i64 4)
  %_rsp_fix_432 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_433 = getelementptr i8, i8* %_rsp_fix_432, i64 8
  store i8* %_gep_fix_433, i8** %_RSP_ptr_
  store i64 %1164, i64* %XAX, !mcsema_real_eip !216
  %_load_rbp_ptr_344 = load i8*, i8** %_RBP_ptr_
  %_new_gep_345 = getelementptr i8, i8* %_load_rbp_ptr_344, i64 -64
  %_allin_new_bt_346 = bitcast i8* %_new_gep_345 to i64*
  %EAX_val.320 = load i32, i32* %EAX.9, !mcsema_real_eip !217
  %1165 = ptrtoint i64* %_allin_new_bt_346 to i64, !mcsema_real_eip !217
  %1166 = inttoptr i64 %1165 to i32*, !mcsema_real_eip !217
  store i32 %EAX_val.320, i32* %1166, !mcsema_real_eip !217
  %_load_rbp_ptr_347 = load i8*, i8** %_RBP_ptr_
  %_new_gep_348 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -16
  %_allin_new_bt_349 = bitcast i8* %_new_gep_348 to i64*
  %_ptr_to_int_1355 = ptrtoint i64* %_allin_new_bt_349 to i64
  %_offset_above_rbp_1358 = sub i64 %_ptr_to_int_1355, %_local_end_to_int_
  %_pot_address_in_parent_stack_1359 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1358
  %_cond1_1360 = icmp ugt i8* %_new_gep_348, %_local_stack_end_ptr_
  %_cond2_1_1361 = icmp ugt i8* %_new_gep_348, %_parent_stack_end_ptr_
  %_cond2_2_1362 = icmp ult i8* %_new_gep_348, %_parent_stack_start_ptr_
  %_cond2_1363 = or i1 %_cond2_1_1361, %_cond2_2_1362
  %_cond4_1364 = icmp ule i8* %_pot_address_in_parent_stack_1359, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1365 = and i1 %_cond1_1360, %_cond2_1363
  %_cond1_n_cond2_cond3_1366 = and i1 %_cond1_n_cond2_1365, %_cond4_1364
  br i1 %_cond1_n_cond2_cond3_1366, label %1167, label %1168

; <label>:1167:                                   ; preds = %1142
  %_address_in_parent_stack_bt_1368 = bitcast i8* %_pot_address_in_parent_stack_1359 to i64*
  br label %1168

; <label>:1168:                                   ; preds = %1142, %1167
  %1169 = phi i64* [ %_allin_new_bt_349, %1142 ], [ %_address_in_parent_stack_bt_1368, %1167 ]
  %_new_load_1369 = load i64, i64* %1169
  store i64 %_new_load_1369, i64* %XSI, !mcsema_real_eip !218
  %1170 = add i64 %_new_load_1369, 28, !mcsema_real_eip !219
  %1171 = inttoptr i64 %1170 to i64*, !mcsema_real_eip !219
  %1172 = inttoptr i64 %1170 to i8*, !mcsema_real_eip !219
  %_offset_above_rbp_1372 = sub i64 %1170, %_local_end_to_int_
  %_pot_address_in_parent_stack_1373 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1372
  %_cond1_1374 = icmp ugt i8* %1172, %_local_stack_end_ptr_
  %_cond2_1_1375 = icmp ugt i8* %1172, %_parent_stack_end_ptr_
  %_cond2_2_1376 = icmp ult i8* %1172, %_parent_stack_start_ptr_
  %_cond2_1377 = or i1 %_cond2_1_1375, %_cond2_2_1376
  %_cond4_1378 = icmp ule i8* %_pot_address_in_parent_stack_1373, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1379 = and i1 %_cond1_1374, %_cond2_1377
  %_cond1_n_cond2_cond3_1380 = and i1 %_cond1_n_cond2_1379, %_cond4_1378
  br i1 %_cond1_n_cond2_cond3_1380, label %1173, label %1174

; <label>:1173:                                   ; preds = %1168
  br label %1174

; <label>:1174:                                   ; preds = %1168, %1173
  %1175 = phi i8* [ %1172, %1168 ], [ %_pot_address_in_parent_stack_1373, %1173 ]
  %_new_load_1382 = load i8, i8* %1175
  %1176 = sext i8 %_new_load_1382 to i32, !mcsema_real_eip !219
  %1177 = zext i32 %1176 to i64, !mcsema_real_eip !219
  store i64 %1177, i64* %XAX, !mcsema_real_eip !219
  %EAX_val.324 = load i32, i32* %EAX.9, !mcsema_real_eip !220
  %1178 = sub i32 %EAX_val.324, 100, !mcsema_real_eip !220
  %1179 = xor i32 %1178, %EAX_val.324, !mcsema_real_eip !220
  %1180 = xor i32 %1179, 100, !mcsema_real_eip !220
  %1181 = and i32 %1180, 16, !mcsema_real_eip !220
  %1182 = icmp ne i32 %1181, 0, !mcsema_real_eip !220
  store i1 %1182, i1* %AF, !mcsema_real_eip !220
  %1183 = trunc i32 %1178 to i8, !mcsema_real_eip !220
  %1184 = call i8 @llvm.ctpop.i8(i8 %1183), !mcsema_real_eip !220
  %1185 = trunc i8 %1184 to i1, !mcsema_real_eip !220
  %1186 = xor i1 %1185, true, !mcsema_real_eip !220
  store i1 %1186, i1* %PF, !mcsema_real_eip !220
  %1187 = icmp eq i32 %1178, 0, !mcsema_real_eip !220
  store i1 %1187, i1* %ZF, !mcsema_real_eip !220
  %1188 = lshr i32 %1178, 31, !mcsema_real_eip !220
  %1189 = trunc i32 %1188 to i1, !mcsema_real_eip !220
  store i1 %1189, i1* %SF, !mcsema_real_eip !220
  %1190 = icmp ult i32 %EAX_val.324, 100, !mcsema_real_eip !220
  store i1 %1190, i1* %CF, !mcsema_real_eip !220
  %1191 = xor i32 %EAX_val.324, 100, !mcsema_real_eip !220
  %1192 = and i32 %1191, %1179, !mcsema_real_eip !220
  %1193 = lshr i32 %1192, 31, !mcsema_real_eip !220
  %1194 = trunc i32 %1193 to i1, !mcsema_real_eip !220
  store i1 %1194, i1* %OF, !mcsema_real_eip !220
  %1195 = icmp eq i1 %1187, false, !mcsema_real_eip !221
  br i1 %1195, label %block_0x38e, label %block_0x36f, !mcsema_real_eip !221

block_0x36f:                                      ; preds = %1174
  br i1 %_cond1_n_cond2_cond3_1366, label %1196, label %1197

; <label>:1196:                                   ; preds = %block_0x36f
  %_address_in_parent_stack_bt_1396 = bitcast i8* %_pot_address_in_parent_stack_1359 to i64*
  br label %1197

; <label>:1197:                                   ; preds = %block_0x36f, %1196
  %1198 = phi i64* [ %_allin_new_bt_349, %block_0x36f ], [ %_address_in_parent_stack_bt_1396, %1196 ]
  %_new_load_1397 = load i64, i64* %1198
  store i64 %_new_load_1397, i64* %XAX, !mcsema_real_eip !222
  %1199 = add i64 %_new_load_1397, 29, !mcsema_real_eip !223
  %1200 = inttoptr i64 %1199 to i64*, !mcsema_real_eip !223
  %1201 = inttoptr i64 %1199 to i8*, !mcsema_real_eip !223
  %_offset_above_rbp_1400 = sub i64 %1199, %_local_end_to_int_
  %_pot_address_in_parent_stack_1401 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1400
  %_cond1_1402 = icmp ugt i8* %1201, %_local_stack_end_ptr_
  %_cond2_1_1403 = icmp ugt i8* %1201, %_parent_stack_end_ptr_
  %_cond2_2_1404 = icmp ult i8* %1201, %_parent_stack_start_ptr_
  %_cond2_1405 = or i1 %_cond2_1_1403, %_cond2_2_1404
  %_cond4_1406 = icmp ule i8* %_pot_address_in_parent_stack_1401, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1407 = and i1 %_cond1_1402, %_cond2_1405
  %_cond1_n_cond2_cond3_1408 = and i1 %_cond1_n_cond2_1407, %_cond4_1406
  br i1 %_cond1_n_cond2_cond3_1408, label %1202, label %1203

; <label>:1202:                                   ; preds = %1197
  br label %1203

; <label>:1203:                                   ; preds = %1197, %1202
  %1204 = phi i8* [ %1201, %1197 ], [ %_pot_address_in_parent_stack_1401, %1202 ]
  %_new_load_1410 = load i8, i8* %1204
  %1205 = sext i8 %_new_load_1410 to i32, !mcsema_real_eip !223
  %1206 = zext i32 %1205 to i64, !mcsema_real_eip !223
  store i64 %1206, i64* %XCX, !mcsema_real_eip !223
  %ECX_val.340 = load i32, i32* %ECX.12, !mcsema_real_eip !224
  %1207 = sub i32 %ECX_val.340, 100, !mcsema_real_eip !224
  %1208 = xor i32 %1207, %ECX_val.340, !mcsema_real_eip !224
  %1209 = xor i32 %1208, 100, !mcsema_real_eip !224
  %1210 = and i32 %1209, 16, !mcsema_real_eip !224
  %1211 = icmp ne i32 %1210, 0, !mcsema_real_eip !224
  store i1 %1211, i1* %AF, !mcsema_real_eip !224
  %1212 = trunc i32 %1207 to i8, !mcsema_real_eip !224
  %1213 = call i8 @llvm.ctpop.i8(i8 %1212), !mcsema_real_eip !224
  %1214 = trunc i8 %1213 to i1, !mcsema_real_eip !224
  %1215 = xor i1 %1214, true, !mcsema_real_eip !224
  store i1 %1215, i1* %PF, !mcsema_real_eip !224
  %1216 = icmp eq i32 %1207, 0, !mcsema_real_eip !224
  store i1 %1216, i1* %ZF, !mcsema_real_eip !224
  %1217 = lshr i32 %1207, 31, !mcsema_real_eip !224
  %1218 = trunc i32 %1217 to i1, !mcsema_real_eip !224
  store i1 %1218, i1* %SF, !mcsema_real_eip !224
  %1219 = icmp ult i32 %ECX_val.340, 100, !mcsema_real_eip !224
  store i1 %1219, i1* %CF, !mcsema_real_eip !224
  %1220 = xor i32 %ECX_val.340, 100, !mcsema_real_eip !224
  %1221 = and i32 %1220, %1208, !mcsema_real_eip !224
  %1222 = lshr i32 %1221, 31, !mcsema_real_eip !224
  %1223 = trunc i32 %1222 to i1, !mcsema_real_eip !224
  store i1 %1223, i1* %OF, !mcsema_real_eip !224
  %1224 = icmp eq i1 %1216, false, !mcsema_real_eip !225
  br i1 %1224, label %block_0x38e, label %block_0x380, !mcsema_real_eip !225

block_0x38e:                                      ; preds = %1203, %1174
  br i1 %_cond1_n_cond2_cond3_1366, label %1225, label %1226

; <label>:1225:                                   ; preds = %block_0x38e
  %_address_in_parent_stack_bt_1424 = bitcast i8* %_pot_address_in_parent_stack_1359 to i64*
  br label %1226

; <label>:1226:                                   ; preds = %block_0x38e, %1225
  %1227 = phi i64* [ %_allin_new_bt_349, %block_0x38e ], [ %_address_in_parent_stack_bt_1424, %1225 ]
  %_new_load_1425 = load i64, i64* %1227
  store i64 %_new_load_1425, i64* %XAX, !mcsema_real_eip !226
  %1228 = add i64 %_new_load_1425, 28, !mcsema_real_eip !227
  %1229 = inttoptr i64 %1228 to i64*, !mcsema_real_eip !227
  %1230 = inttoptr i64 %1228 to i8*, !mcsema_real_eip !227
  %_offset_above_rbp_1428 = sub i64 %1228, %_local_end_to_int_
  %_pot_address_in_parent_stack_1429 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1428
  %_cond1_1430 = icmp ugt i8* %1230, %_local_stack_end_ptr_
  %_cond2_1_1431 = icmp ugt i8* %1230, %_parent_stack_end_ptr_
  %_cond2_2_1432 = icmp ult i8* %1230, %_parent_stack_start_ptr_
  %_cond2_1433 = or i1 %_cond2_1_1431, %_cond2_2_1432
  %_cond4_1434 = icmp ule i8* %_pot_address_in_parent_stack_1429, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1435 = and i1 %_cond1_1430, %_cond2_1433
  %_cond1_n_cond2_cond3_1436 = and i1 %_cond1_n_cond2_1435, %_cond4_1434
  br i1 %_cond1_n_cond2_cond3_1436, label %1231, label %1232

; <label>:1231:                                   ; preds = %1226
  br label %1232

; <label>:1232:                                   ; preds = %1226, %1231
  %1233 = phi i8* [ %1230, %1226 ], [ %_pot_address_in_parent_stack_1429, %1231 ]
  %_new_load_1438 = load i8, i8* %1233
  %1234 = sext i8 %_new_load_1438 to i32, !mcsema_real_eip !227
  %1235 = zext i32 %1234 to i64, !mcsema_real_eip !227
  store i64 %1235, i64* %XCX, !mcsema_real_eip !227
  br i1 %_cond1_n_cond2_cond3_1366, label %1236, label %1237

; <label>:1236:                                   ; preds = %1232
  %_address_in_parent_stack_bt_1452 = bitcast i8* %_pot_address_in_parent_stack_1359 to i64*
  br label %1237

; <label>:1237:                                   ; preds = %1232, %1236
  %1238 = phi i64* [ %_allin_new_bt_349, %1232 ], [ %_address_in_parent_stack_bt_1452, %1236 ]
  %_new_load_1453 = load i64, i64* %1238
  store i64 %_new_load_1453, i64* %XAX, !mcsema_real_eip !228
  %1239 = add i64 %_new_load_1453, 29, !mcsema_real_eip !229
  %1240 = inttoptr i64 %1239 to i64*, !mcsema_real_eip !229
  %1241 = inttoptr i64 %1239 to i8*, !mcsema_real_eip !229
  %_offset_above_rbp_1456 = sub i64 %1239, %_local_end_to_int_
  %_pot_address_in_parent_stack_1457 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1456
  %_cond1_1458 = icmp ugt i8* %1241, %_local_stack_end_ptr_
  %_cond2_1_1459 = icmp ugt i8* %1241, %_parent_stack_end_ptr_
  %_cond2_2_1460 = icmp ult i8* %1241, %_parent_stack_start_ptr_
  %_cond2_1461 = or i1 %_cond2_1_1459, %_cond2_2_1460
  %_cond4_1462 = icmp ule i8* %_pot_address_in_parent_stack_1457, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1463 = and i1 %_cond1_1458, %_cond2_1461
  %_cond1_n_cond2_cond3_1464 = and i1 %_cond1_n_cond2_1463, %_cond4_1462
  br i1 %_cond1_n_cond2_cond3_1464, label %1242, label %1243

; <label>:1242:                                   ; preds = %1237
  br label %1243

; <label>:1243:                                   ; preds = %1237, %1242
  %1244 = phi i8* [ %1241, %1237 ], [ %_pot_address_in_parent_stack_1457, %1242 ]
  %_new_load_1466 = load i8, i8* %1244
  %1245 = sext i8 %_new_load_1466 to i32, !mcsema_real_eip !229
  %1246 = zext i32 %1245 to i64, !mcsema_real_eip !229
  store i64 %1246, i64* %XDX, !mcsema_real_eip !229
  %ECX_val.334 = load i32, i32* %ECX.12, !mcsema_real_eip !230
  %EDX_val.336 = load i32, i32* %EDX.67, !mcsema_real_eip !230
  %1247 = sub i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  %1248 = xor i32 %1247, %ECX_val.334, !mcsema_real_eip !230
  %1249 = xor i32 %1248, %EDX_val.336, !mcsema_real_eip !230
  %1250 = and i32 %1249, 16, !mcsema_real_eip !230
  %1251 = icmp ne i32 %1250, 0, !mcsema_real_eip !230
  store i1 %1251, i1* %AF, !mcsema_real_eip !230
  %1252 = trunc i32 %1247 to i8, !mcsema_real_eip !230
  %1253 = call i8 @llvm.ctpop.i8(i8 %1252), !mcsema_real_eip !230
  %1254 = trunc i8 %1253 to i1, !mcsema_real_eip !230
  %1255 = xor i1 %1254, true, !mcsema_real_eip !230
  store i1 %1255, i1* %PF, !mcsema_real_eip !230
  %1256 = icmp eq i32 %1247, 0, !mcsema_real_eip !230
  store i1 %1256, i1* %ZF, !mcsema_real_eip !230
  %1257 = lshr i32 %1247, 31, !mcsema_real_eip !230
  %1258 = trunc i32 %1257 to i1, !mcsema_real_eip !230
  store i1 %1258, i1* %SF, !mcsema_real_eip !230
  %1259 = icmp ult i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  store i1 %1259, i1* %CF, !mcsema_real_eip !230
  %1260 = xor i32 %ECX_val.334, %EDX_val.336, !mcsema_real_eip !230
  %1261 = and i32 %1260, %1248, !mcsema_real_eip !230
  %1262 = lshr i32 %1261, 31, !mcsema_real_eip !230
  %1263 = trunc i32 %1262 to i1, !mcsema_real_eip !230
  store i1 %1263, i1* %OF, !mcsema_real_eip !230
  %1264 = icmp eq i1 %1256, false, !mcsema_real_eip !231
  br i1 %1264, label %block_0x406, label %block_0x3a6, !mcsema_real_eip !231

block_0x3a6:                                      ; preds = %1243
  store i64 15, i64* %XAX, !mcsema_real_eip !232
  br i1 %_cond1_n_cond2_cond3_1366, label %1265, label %1266

; <label>:1265:                                   ; preds = %block_0x3a6
  %_address_in_parent_stack_bt_1480 = bitcast i8* %_pot_address_in_parent_stack_1359 to i64*
  br label %1266

; <label>:1266:                                   ; preds = %block_0x3a6, %1265
  %1267 = phi i64* [ %_allin_new_bt_349, %block_0x3a6 ], [ %_address_in_parent_stack_bt_1480, %1265 ]
  %_new_load_1481 = load i64, i64* %1267
  store i64 %_new_load_1481, i64* %XCX, !mcsema_real_eip !233
  %1268 = add i64 %_new_load_1481, 31, !mcsema_real_eip !234
  %1269 = inttoptr i64 %1268 to i64*, !mcsema_real_eip !234
  %1270 = inttoptr i64 %1268 to i8*, !mcsema_real_eip !234
  %_offset_above_rbp_1484 = sub i64 %1268, %_local_end_to_int_
  %_pot_address_in_parent_stack_1485 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1484
  %_cond1_1486 = icmp ugt i8* %1270, %_local_stack_end_ptr_
  %_cond2_1_1487 = icmp ugt i8* %1270, %_parent_stack_end_ptr_
  %_cond2_2_1488 = icmp ult i8* %1270, %_parent_stack_start_ptr_
  %_cond2_1489 = or i1 %_cond2_1_1487, %_cond2_2_1488
  %_cond4_1490 = icmp ule i8* %_pot_address_in_parent_stack_1485, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1491 = and i1 %_cond1_1486, %_cond2_1489
  %_cond1_n_cond2_cond3_1492 = and i1 %_cond1_n_cond2_1491, %_cond4_1490
  br i1 %_cond1_n_cond2_cond3_1492, label %1271, label %1272

; <label>:1271:                                   ; preds = %1266
  br label %1272

; <label>:1272:                                   ; preds = %1266, %1271
  %1273 = phi i8* [ %1270, %1266 ], [ %_pot_address_in_parent_stack_1485, %1271 ]
  %_new_load_1494 = load i8, i8* %1273
  %1274 = sext i8 %_new_load_1494 to i32, !mcsema_real_eip !234
  %1275 = zext i32 %1274 to i64, !mcsema_real_eip !234
  store i64 %1275, i64* %XDX, !mcsema_real_eip !234
  br i1 %_cond1_n_cond2_cond3_1366, label %1276, label %1277

; <label>:1276:                                   ; preds = %1272
  %_address_in_parent_stack_bt_1508 = bitcast i8* %_pot_address_in_parent_stack_1359 to i64*
  br label %1277

; <label>:1277:                                   ; preds = %1272, %1276
  %1278 = phi i64* [ %_allin_new_bt_349, %1272 ], [ %_address_in_parent_stack_bt_1508, %1276 ]
  %_new_load_1509 = load i64, i64* %1278
  store i64 %_new_load_1509, i64* %XCX, !mcsema_real_eip !235
  %1279 = add i64 %_new_load_1509, 30, !mcsema_real_eip !236
  %1280 = inttoptr i64 %1279 to i64*, !mcsema_real_eip !236
  %1281 = inttoptr i64 %1279 to i8*, !mcsema_real_eip !236
  %_offset_above_rbp_1512 = sub i64 %1279, %_local_end_to_int_
  %_pot_address_in_parent_stack_1513 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1512
  %_cond1_1514 = icmp ugt i8* %1281, %_local_stack_end_ptr_
  %_cond2_1_1515 = icmp ugt i8* %1281, %_parent_stack_end_ptr_
  %_cond2_2_1516 = icmp ult i8* %1281, %_parent_stack_start_ptr_
  %_cond2_1517 = or i1 %_cond2_1_1515, %_cond2_2_1516
  %_cond4_1518 = icmp ule i8* %_pot_address_in_parent_stack_1513, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1519 = and i1 %_cond1_1514, %_cond2_1517
  %_cond1_n_cond2_cond3_1520 = and i1 %_cond1_n_cond2_1519, %_cond4_1518
  br i1 %_cond1_n_cond2_cond3_1520, label %1282, label %1283

; <label>:1282:                                   ; preds = %1277
  br label %1283

; <label>:1283:                                   ; preds = %1277, %1282
  %1284 = phi i8* [ %1281, %1277 ], [ %_pot_address_in_parent_stack_1513, %1282 ]
  %_new_load_1522 = load i8, i8* %1284
  %1285 = sext i8 %_new_load_1522 to i32, !mcsema_real_eip !236
  %1286 = zext i32 %1285 to i64, !mcsema_real_eip !236
  store i64 %1286, i64* %XSI, !mcsema_real_eip !236
  %EDX_val.350 = load i32, i32* %EDX.67, !mcsema_real_eip !237
  %ESI.351 = bitcast i64* %XSI to i32*, !mcsema_real_eip !237
  %ESI_val.352 = load i32, i32* %ESI.351, !mcsema_real_eip !237
  %1287 = sub i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  %1288 = xor i32 %1287, %EDX_val.350, !mcsema_real_eip !237
  %1289 = xor i32 %1288, %ESI_val.352, !mcsema_real_eip !237
  %1290 = and i32 %1289, 16, !mcsema_real_eip !237
  %1291 = icmp ne i32 %1290, 0, !mcsema_real_eip !237
  store i1 %1291, i1* %AF, !mcsema_real_eip !237
  %1292 = trunc i32 %1287 to i8, !mcsema_real_eip !237
  %1293 = call i8 @llvm.ctpop.i8(i8 %1292), !mcsema_real_eip !237
  %1294 = trunc i8 %1293 to i1, !mcsema_real_eip !237
  %1295 = xor i1 %1294, true, !mcsema_real_eip !237
  store i1 %1295, i1* %PF, !mcsema_real_eip !237
  %1296 = icmp eq i32 %1287, 0, !mcsema_real_eip !237
  store i1 %1296, i1* %ZF, !mcsema_real_eip !237
  %1297 = lshr i32 %1287, 31, !mcsema_real_eip !237
  %1298 = trunc i32 %1297 to i1, !mcsema_real_eip !237
  store i1 %1298, i1* %SF, !mcsema_real_eip !237
  %1299 = icmp ult i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  store i1 %1299, i1* %CF, !mcsema_real_eip !237
  %1300 = xor i32 %EDX_val.350, %ESI_val.352, !mcsema_real_eip !237
  %1301 = and i32 %1300, %1288, !mcsema_real_eip !237
  %1302 = lshr i32 %1301, 31, !mcsema_real_eip !237
  %1303 = trunc i32 %1302 to i1, !mcsema_real_eip !237
  store i1 %1303, i1* %OF, !mcsema_real_eip !237
  %1304 = zext i32 %1287 to i64, !mcsema_real_eip !237
  store i64 %1304, i64* %XDX, !mcsema_real_eip !237
  %EAX_val.354 = load i32, i32* %EAX.9, !mcsema_real_eip !238
  %EDX_val.356 = load i32, i32* %EDX.67, !mcsema_real_eip !238
  %1305 = sub i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  %1306 = xor i32 %1305, %EAX_val.354, !mcsema_real_eip !238
  %1307 = xor i32 %1306, %EDX_val.356, !mcsema_real_eip !238
  %1308 = and i32 %1307, 16, !mcsema_real_eip !238
  %1309 = icmp ne i32 %1308, 0, !mcsema_real_eip !238
  store i1 %1309, i1* %AF, !mcsema_real_eip !238
  %1310 = trunc i32 %1305 to i8, !mcsema_real_eip !238
  %1311 = call i8 @llvm.ctpop.i8(i8 %1310), !mcsema_real_eip !238
  %1312 = trunc i8 %1311 to i1, !mcsema_real_eip !238
  %1313 = xor i1 %1312, true, !mcsema_real_eip !238
  store i1 %1313, i1* %PF, !mcsema_real_eip !238
  %1314 = icmp eq i32 %1305, 0, !mcsema_real_eip !238
  store i1 %1314, i1* %ZF, !mcsema_real_eip !238
  %1315 = lshr i32 %1305, 31, !mcsema_real_eip !238
  %1316 = trunc i32 %1315 to i1, !mcsema_real_eip !238
  store i1 %1316, i1* %SF, !mcsema_real_eip !238
  %1317 = icmp ult i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  store i1 %1317, i1* %CF, !mcsema_real_eip !238
  %1318 = xor i32 %EAX_val.354, %EDX_val.356, !mcsema_real_eip !238
  %1319 = and i32 %1318, %1306, !mcsema_real_eip !238
  %1320 = lshr i32 %1319, 31, !mcsema_real_eip !238
  %1321 = trunc i32 %1320 to i1, !mcsema_real_eip !238
  store i1 %1321, i1* %OF, !mcsema_real_eip !238
  %1322 = zext i32 %1305 to i64, !mcsema_real_eip !238
  store i64 %1322, i64* %XAX, !mcsema_real_eip !238
  %_new_gep_366 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -20
  %_allin_new_bt_367 = bitcast i8* %_new_gep_366 to i64*
  %1323 = ptrtoint i64* %_allin_new_bt_367 to i64, !mcsema_real_eip !239
  %1324 = inttoptr i64 %1323 to i32*, !mcsema_real_eip !239
  %_ptr_bt_1525 = bitcast i32* %1324 to i8*
  %_offset_above_rbp_1526 = sub i64 %1323, %_local_end_to_int_
  %_pot_address_in_parent_stack_1527 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1526
  %_cond1_1528 = icmp ugt i8* %_ptr_bt_1525, %_local_stack_end_ptr_
  %_cond2_1_1529 = icmp ugt i8* %_ptr_bt_1525, %_parent_stack_end_ptr_
  %_cond2_2_1530 = icmp ult i8* %_ptr_bt_1525, %_parent_stack_start_ptr_
  %_cond2_1531 = or i1 %_cond2_1_1529, %_cond2_2_1530
  %_cond4_1532 = icmp ule i8* %_pot_address_in_parent_stack_1527, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1533 = and i1 %_cond1_1528, %_cond2_1531
  %_cond1_n_cond2_cond3_1534 = and i1 %_cond1_n_cond2_1533, %_cond4_1532
  br i1 %_cond1_n_cond2_cond3_1534, label %1325, label %1326

; <label>:1325:                                   ; preds = %1283
  %_address_in_parent_stack_bt_1536 = bitcast i8* %_pot_address_in_parent_stack_1527 to i32*
  br label %1326

; <label>:1326:                                   ; preds = %1283, %1325
  %1327 = phi i32* [ %1324, %1283 ], [ %_address_in_parent_stack_bt_1536, %1325 ]
  %_new_load_1537 = load i32, i32* %1327
  %EAX_val.359 = load i32, i32* %EAX.9, !mcsema_real_eip !239
  %1328 = add i32 %EAX_val.359, %_new_load_1537, !mcsema_real_eip !239
  %1329 = xor i32 %1328, %_new_load_1537, !mcsema_real_eip !239
  %1330 = xor i32 %1329, %EAX_val.359, !mcsema_real_eip !239
  %1331 = and i32 %1330, 16, !mcsema_real_eip !239
  %1332 = icmp ne i32 %1331, 0, !mcsema_real_eip !239
  store i1 %1332, i1* %AF, !mcsema_real_eip !239
  %1333 = lshr i32 %1328, 31, !mcsema_real_eip !239
  %1334 = trunc i32 %1333 to i1, !mcsema_real_eip !239
  store i1 %1334, i1* %SF, !mcsema_real_eip !239
  %1335 = icmp eq i32 %1328, 0, !mcsema_real_eip !239
  store i1 %1335, i1* %ZF, !mcsema_real_eip !239
  %1336 = xor i32 %_new_load_1537, %EAX_val.359, !mcsema_real_eip !239
  %1337 = xor i32 %1336, -1, !mcsema_real_eip !239
  %1338 = and i32 %1337, %1329, !mcsema_real_eip !239
  %1339 = lshr i32 %1338, 31, !mcsema_real_eip !239
  %1340 = and i32 %1339, 1, !mcsema_real_eip !239
  %1341 = trunc i32 %1340 to i1, !mcsema_real_eip !239
  store i1 %1341, i1* %OF, !mcsema_real_eip !239
  %1342 = trunc i32 %1328 to i8, !mcsema_real_eip !239
  %1343 = call i8 @llvm.ctpop.i8(i8 %1342), !mcsema_real_eip !239
  %1344 = trunc i8 %1343 to i1, !mcsema_real_eip !239
  %1345 = xor i1 %1344, true, !mcsema_real_eip !239
  store i1 %1345, i1* %PF, !mcsema_real_eip !239
  %1346 = icmp ult i32 %1328, %_new_load_1537, !mcsema_real_eip !239
  store i1 %1346, i1* %CF, !mcsema_real_eip !239
  %1347 = zext i32 %1328 to i64, !mcsema_real_eip !239
  store i64 %1347, i64* %XAX, !mcsema_real_eip !239
  %EAX_val.362 = load i32, i32* %EAX.9, !mcsema_real_eip !240
  store i32 %EAX_val.362, i32* %1324, !mcsema_real_eip !240
  %_load_rbp_ptr_371 = load i8*, i8** %_RBP_ptr_
  %_new_gep_372 = getelementptr i8, i8* %_load_rbp_ptr_371, i64 -16
  %_allin_new_bt_373 = bitcast i8* %_new_gep_372 to i64*
  %_ptr_to_int_1538 = ptrtoint i64* %_allin_new_bt_373 to i64
  %_offset_above_rbp_1541 = sub i64 %_ptr_to_int_1538, %_local_end_to_int_
  %_pot_address_in_parent_stack_1542 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1541
  %_cond1_1543 = icmp ugt i8* %_new_gep_372, %_local_stack_end_ptr_
  %_cond2_1_1544 = icmp ugt i8* %_new_gep_372, %_parent_stack_end_ptr_
  %_cond2_2_1545 = icmp ult i8* %_new_gep_372, %_parent_stack_start_ptr_
  %_cond2_1546 = or i1 %_cond2_1_1544, %_cond2_2_1545
  %_cond4_1547 = icmp ule i8* %_pot_address_in_parent_stack_1542, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1548 = and i1 %_cond1_1543, %_cond2_1546
  %_cond1_n_cond2_cond3_1549 = and i1 %_cond1_n_cond2_1548, %_cond4_1547
  br i1 %_cond1_n_cond2_cond3_1549, label %1348, label %1349

; <label>:1348:                                   ; preds = %1326
  %_address_in_parent_stack_bt_1551 = bitcast i8* %_pot_address_in_parent_stack_1542 to i64*
  br label %1349

; <label>:1349:                                   ; preds = %1326, %1348
  %1350 = phi i64* [ %_allin_new_bt_373, %1326 ], [ %_address_in_parent_stack_bt_1551, %1348 ]
  %_new_load_1552 = load i64, i64* %1350
  store i64 %_new_load_1552, i64* %XCX, !mcsema_real_eip !241
  %1351 = add i64 %_new_load_1552, 28, !mcsema_real_eip !242
  %1352 = inttoptr i64 %1351 to i64*, !mcsema_real_eip !242
  %1353 = inttoptr i64 %1351 to i8*, !mcsema_real_eip !242
  %_offset_above_rbp_1555 = sub i64 %1351, %_local_end_to_int_
  %_pot_address_in_parent_stack_1556 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1555
  %_cond1_1557 = icmp ugt i8* %1353, %_local_stack_end_ptr_
  %_cond2_1_1558 = icmp ugt i8* %1353, %_parent_stack_end_ptr_
  %_cond2_2_1559 = icmp ult i8* %1353, %_parent_stack_start_ptr_
  %_cond2_1560 = or i1 %_cond2_1_1558, %_cond2_2_1559
  %_cond4_1561 = icmp ule i8* %_pot_address_in_parent_stack_1556, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1562 = and i1 %_cond1_1557, %_cond2_1560
  %_cond1_n_cond2_cond3_1563 = and i1 %_cond1_n_cond2_1562, %_cond4_1561
  br i1 %_cond1_n_cond2_cond3_1563, label %1354, label %1355

; <label>:1354:                                   ; preds = %1349
  br label %1355

; <label>:1355:                                   ; preds = %1349, %1354
  %1356 = phi i8* [ %1353, %1349 ], [ %_pot_address_in_parent_stack_1556, %1354 ]
  %_new_load_1565 = load i8, i8* %1356
  %1357 = zext i8 %_new_load_1565 to i32, !mcsema_real_eip !242
  %1358 = zext i32 %1357 to i64, !mcsema_real_eip !242
  store i64 %1358, i64* %XDI, !mcsema_real_eip !242
  %_load_rsp_ptr_374 = load i8*, i8** %_RSP_ptr_
  %RSP_val.366 = load i64, i64* %XSP, !mcsema_real_eip !243
  %_new_gep_375 = getelementptr i8, i8* %_load_rsp_ptr_374, i64 -8
  %1359 = sub i64 %RSP_val.366, 8, !mcsema_real_eip !243
  %_allin_new_bt_376 = bitcast i8* %_new_gep_375 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_376, !mcsema_real_eip !243
  store volatile i8* %_new_gep_375, i8** %_RSP_ptr_
  store i64 %1359, i64* %XSP, !mcsema_real_eip !243
  %1360 = call x86_64_sysvcc i64 @_to_byte(i64 %1358)
  %_rsp_fix_434 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_435 = getelementptr i8, i8* %_rsp_fix_434, i64 8
  store i8* %_gep_fix_435, i8** %_RSP_ptr_
  store i64 %1360, i64* %XAX, !mcsema_real_eip !243
  %_load_rbp_ptr_377 = load i8*, i8** %_RBP_ptr_
  %_new_gep_378 = getelementptr i8, i8* %_load_rbp_ptr_377, i64 -20
  %_allin_new_bt_379 = bitcast i8* %_new_gep_378 to i64*
  %1361 = ptrtoint i64* %_allin_new_bt_379 to i64, !mcsema_real_eip !244
  %1362 = inttoptr i64 %1361 to i32*, !mcsema_real_eip !244
  %_ptr_bt_1568 = bitcast i32* %1362 to i8*
  %_offset_above_rbp_1569 = sub i64 %1361, %_local_end_to_int_
  %_pot_address_in_parent_stack_1570 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1569
  %_cond1_1571 = icmp ugt i8* %_ptr_bt_1568, %_local_stack_end_ptr_
  %_cond2_1_1572 = icmp ugt i8* %_ptr_bt_1568, %_parent_stack_end_ptr_
  %_cond2_2_1573 = icmp ult i8* %_ptr_bt_1568, %_parent_stack_start_ptr_
  %_cond2_1574 = or i1 %_cond2_1_1572, %_cond2_2_1573
  %_cond4_1575 = icmp ule i8* %_pot_address_in_parent_stack_1570, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1576 = and i1 %_cond1_1571, %_cond2_1574
  %_cond1_n_cond2_cond3_1577 = and i1 %_cond1_n_cond2_1576, %_cond4_1575
  br i1 %_cond1_n_cond2_cond3_1577, label %1363, label %1364

; <label>:1363:                                   ; preds = %1355
  %_address_in_parent_stack_bt_1579 = bitcast i8* %_pot_address_in_parent_stack_1570 to i32*
  br label %1364

; <label>:1364:                                   ; preds = %1355, %1363
  %1365 = phi i32* [ %1362, %1355 ], [ %_address_in_parent_stack_bt_1579, %1363 ]
  %_new_load_1580 = load i32, i32* %1365
  %1366 = zext i32 %_new_load_1580 to i64, !mcsema_real_eip !244
  store i64 %1366, i64* %XDX, !mcsema_real_eip !244
  %EDX_val.369 = load i32, i32* %EDX.67, !mcsema_real_eip !245
  %EAX_val.371 = load i32, i32* %EAX.9, !mcsema_real_eip !245
  %1367 = sub i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  %1368 = xor i32 %1367, %EDX_val.369, !mcsema_real_eip !245
  %1369 = xor i32 %1368, %EAX_val.371, !mcsema_real_eip !245
  %1370 = and i32 %1369, 16, !mcsema_real_eip !245
  %1371 = icmp ne i32 %1370, 0, !mcsema_real_eip !245
  store i1 %1371, i1* %AF, !mcsema_real_eip !245
  %1372 = trunc i32 %1367 to i8, !mcsema_real_eip !245
  %1373 = call i8 @llvm.ctpop.i8(i8 %1372), !mcsema_real_eip !245
  %1374 = trunc i8 %1373 to i1, !mcsema_real_eip !245
  %1375 = xor i1 %1374, true, !mcsema_real_eip !245
  store i1 %1375, i1* %PF, !mcsema_real_eip !245
  %1376 = icmp eq i32 %1367, 0, !mcsema_real_eip !245
  store i1 %1376, i1* %ZF, !mcsema_real_eip !245
  %1377 = lshr i32 %1367, 31, !mcsema_real_eip !245
  %1378 = trunc i32 %1377 to i1, !mcsema_real_eip !245
  store i1 %1378, i1* %SF, !mcsema_real_eip !245
  %1379 = icmp ult i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  store i1 %1379, i1* %CF, !mcsema_real_eip !245
  %1380 = xor i32 %EDX_val.369, %EAX_val.371, !mcsema_real_eip !245
  %1381 = and i32 %1380, %1368, !mcsema_real_eip !245
  %1382 = lshr i32 %1381, 31, !mcsema_real_eip !245
  %1383 = trunc i32 %1382 to i1, !mcsema_real_eip !245
  store i1 %1383, i1* %OF, !mcsema_real_eip !245
  %1384 = zext i32 %1367 to i64, !mcsema_real_eip !245
  store i64 %1384, i64* %XDX, !mcsema_real_eip !245
  %EDX_val.374 = load i32, i32* %EDX.67, !mcsema_real_eip !246
  store i32 %EDX_val.374, i32* %1362, !mcsema_real_eip !246
  %_load_rbp_ptr_383 = load i8*, i8** %_RBP_ptr_
  %_new_gep_384 = getelementptr i8, i8* %_load_rbp_ptr_383, i64 -20
  %_allin_new_bt_385 = bitcast i8* %_new_gep_384 to i64*
  %1385 = ptrtoint i64* %_allin_new_bt_385 to i64, !mcsema_real_eip !247
  %1386 = inttoptr i64 %1385 to i32*, !mcsema_real_eip !247
  %_ptr_bt_1583 = bitcast i32* %1386 to i8*
  %_offset_above_rbp_1584 = sub i64 %1385, %_local_end_to_int_
  %_pot_address_in_parent_stack_1585 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1584
  %_cond1_1586 = icmp ugt i8* %_ptr_bt_1583, %_local_stack_end_ptr_
  %_cond2_1_1587 = icmp ugt i8* %_ptr_bt_1583, %_parent_stack_end_ptr_
  %_cond2_2_1588 = icmp ult i8* %_ptr_bt_1583, %_parent_stack_start_ptr_
  %_cond2_1589 = or i1 %_cond2_1_1587, %_cond2_2_1588
  %_cond4_1590 = icmp ule i8* %_pot_address_in_parent_stack_1585, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1591 = and i1 %_cond1_1586, %_cond2_1589
  %_cond1_n_cond2_cond3_1592 = and i1 %_cond1_n_cond2_1591, %_cond4_1590
  br i1 %_cond1_n_cond2_cond3_1592, label %1387, label %1388

; <label>:1387:                                   ; preds = %1364
  %_address_in_parent_stack_bt_1594 = bitcast i8* %_pot_address_in_parent_stack_1585 to i32*
  br label %1388

; <label>:1388:                                   ; preds = %1364, %1387
  %1389 = phi i32* [ %1386, %1364 ], [ %_address_in_parent_stack_bt_1594, %1387 ]
  %_new_load_1595 = load i32, i32* %1389
  store i1 false, i1* %AF, !mcsema_real_eip !247
  %1390 = trunc i32 %_new_load_1595 to i8, !mcsema_real_eip !247
  %1391 = call i8 @llvm.ctpop.i8(i8 %1390), !mcsema_real_eip !247
  %1392 = trunc i8 %1391 to i1, !mcsema_real_eip !247
  %1393 = xor i1 %1392, true, !mcsema_real_eip !247
  store i1 %1393, i1* %PF, !mcsema_real_eip !247
  %1394 = icmp eq i32 %_new_load_1595, 0, !mcsema_real_eip !247
  store i1 %1394, i1* %ZF, !mcsema_real_eip !247
  %1395 = lshr i32 %_new_load_1595, 31, !mcsema_real_eip !247
  %1396 = trunc i32 %1395 to i1, !mcsema_real_eip !247
  store i1 %1396, i1* %SF, !mcsema_real_eip !247
  store i1 false, i1* %CF, !mcsema_real_eip !247
  store i1 false, i1* %OF, !mcsema_real_eip !247
  %1397 = icmp eq i1 %1394, false, !mcsema_real_eip !248
  br i1 %1397, label %block_0x401, label %block_0x3e4, !mcsema_real_eip !248

block_0x406:                                      ; preds = %1243
  %_new_gep_387 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -64
  %_allin_new_bt_388 = bitcast i8* %_new_gep_387 to i64*
  %1398 = ptrtoint i64* %_allin_new_bt_388 to i64, !mcsema_real_eip !249
  %1399 = inttoptr i64 %1398 to i32*, !mcsema_real_eip !249
  %_ptr_bt_1598 = bitcast i32* %1399 to i8*
  %_offset_above_rbp_1599 = sub i64 %1398, %_local_end_to_int_
  %_pot_address_in_parent_stack_1600 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1599
  %_cond1_1601 = icmp ugt i8* %_ptr_bt_1598, %_local_stack_end_ptr_
  %_cond2_1_1602 = icmp ugt i8* %_ptr_bt_1598, %_parent_stack_end_ptr_
  %_cond2_2_1603 = icmp ult i8* %_ptr_bt_1598, %_parent_stack_start_ptr_
  %_cond2_1604 = or i1 %_cond2_1_1602, %_cond2_2_1603
  %_cond4_1605 = icmp ule i8* %_pot_address_in_parent_stack_1600, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1606 = and i1 %_cond1_1601, %_cond2_1604
  %_cond1_n_cond2_cond3_1607 = and i1 %_cond1_n_cond2_1606, %_cond4_1605
  br i1 %_cond1_n_cond2_cond3_1607, label %1400, label %1401

; <label>:1400:                                   ; preds = %block_0x406
  %_address_in_parent_stack_bt_1609 = bitcast i8* %_pot_address_in_parent_stack_1600 to i32*
  br label %1401

; <label>:1401:                                   ; preds = %block_0x406, %1400
  %1402 = phi i32* [ %1399, %block_0x406 ], [ %_address_in_parent_stack_bt_1609, %1400 ]
  %_new_load_1610 = load i32, i32* %1402
  %1403 = zext i32 %_new_load_1610 to i64, !mcsema_real_eip !249
  store i64 %1403, i64* %XAX, !mcsema_real_eip !249
  %_new_gep_390 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -20
  %_allin_new_bt_391 = bitcast i8* %_new_gep_390 to i64*
  %EAX_val.344 = load i32, i32* %EAX.9, !mcsema_real_eip !250
  %1404 = ptrtoint i64* %_allin_new_bt_391 to i64, !mcsema_real_eip !250
  %1405 = inttoptr i64 %1404 to i32*, !mcsema_real_eip !250
  store i32 %EAX_val.344, i32* %1405, !mcsema_real_eip !250
  br label %block_0x40c, !mcsema_real_eip !232

block_0x380:                                      ; preds = %1203
  %_new_gep_393 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -64
  %_allin_new_bt_394 = bitcast i8* %_new_gep_393 to i64*
  %1406 = ptrtoint i64* %_allin_new_bt_394 to i64, !mcsema_real_eip !251
  %1407 = inttoptr i64 %1406 to i32*, !mcsema_real_eip !251
  %_ptr_bt_1613 = bitcast i32* %1407 to i8*
  %_offset_above_rbp_1614 = sub i64 %1406, %_local_end_to_int_
  %_pot_address_in_parent_stack_1615 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1614
  %_cond1_1616 = icmp ugt i8* %_ptr_bt_1613, %_local_stack_end_ptr_
  %_cond2_1_1617 = icmp ugt i8* %_ptr_bt_1613, %_parent_stack_end_ptr_
  %_cond2_2_1618 = icmp ult i8* %_ptr_bt_1613, %_parent_stack_start_ptr_
  %_cond2_1619 = or i1 %_cond2_1_1617, %_cond2_2_1618
  %_cond4_1620 = icmp ule i8* %_pot_address_in_parent_stack_1615, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1621 = and i1 %_cond1_1616, %_cond2_1619
  %_cond1_n_cond2_cond3_1622 = and i1 %_cond1_n_cond2_1621, %_cond4_1620
  br i1 %_cond1_n_cond2_cond3_1622, label %1408, label %1409

; <label>:1408:                                   ; preds = %block_0x380
  %_address_in_parent_stack_bt_1624 = bitcast i8* %_pot_address_in_parent_stack_1615 to i32*
  br label %1409

; <label>:1409:                                   ; preds = %block_0x380, %1408
  %1410 = phi i32* [ %1407, %block_0x380 ], [ %_address_in_parent_stack_bt_1624, %1408 ]
  %_new_load_1625 = load i32, i32* %1410
  %1411 = zext i32 %_new_load_1625 to i64, !mcsema_real_eip !251
  store i64 %1411, i64* %XAX, !mcsema_real_eip !251
  %_new_gep_396 = getelementptr i8, i8* %_load_rbp_ptr_347, i64 -20
  %_allin_new_bt_397 = bitcast i8* %_new_gep_396 to i64*
  %1412 = ptrtoint i64* %_allin_new_bt_397 to i64, !mcsema_real_eip !252
  %1413 = inttoptr i64 %1412 to i32*, !mcsema_real_eip !252
  %_ptr_bt_1628 = bitcast i32* %1413 to i8*
  %_offset_above_rbp_1629 = sub i64 %1412, %_local_end_to_int_
  %_pot_address_in_parent_stack_1630 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1629
  %_cond1_1631 = icmp ugt i8* %_ptr_bt_1628, %_local_stack_end_ptr_
  %_cond2_1_1632 = icmp ugt i8* %_ptr_bt_1628, %_parent_stack_end_ptr_
  %_cond2_2_1633 = icmp ult i8* %_ptr_bt_1628, %_parent_stack_start_ptr_
  %_cond2_1634 = or i1 %_cond2_1_1632, %_cond2_2_1633
  %_cond4_1635 = icmp ule i8* %_pot_address_in_parent_stack_1630, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1636 = and i1 %_cond1_1631, %_cond2_1634
  %_cond1_n_cond2_cond3_1637 = and i1 %_cond1_n_cond2_1636, %_cond4_1635
  br i1 %_cond1_n_cond2_cond3_1637, label %1414, label %1415

; <label>:1414:                                   ; preds = %1409
  %_address_in_parent_stack_bt_1639 = bitcast i8* %_pot_address_in_parent_stack_1630 to i32*
  br label %1415

; <label>:1415:                                   ; preds = %1409, %1414
  %1416 = phi i32* [ %1413, %1409 ], [ %_address_in_parent_stack_bt_1639, %1414 ]
  %_new_load_1640 = load i32, i32* %1416
  %EAX_val.379 = load i32, i32* %EAX.9, !mcsema_real_eip !252
  %1417 = xor i32 %_new_load_1640, %EAX_val.379, !mcsema_real_eip !252
  store i1 false, i1* %CF, !mcsema_real_eip !252
  store i1 false, i1* %OF, !mcsema_real_eip !252
  %1418 = lshr i32 %1417, 31, !mcsema_real_eip !252
  %1419 = trunc i32 %1418 to i1, !mcsema_real_eip !252
  store i1 %1419, i1* %SF, !mcsema_real_eip !252
  %1420 = icmp eq i32 %1417, 0, !mcsema_real_eip !252
  store i1 %1420, i1* %ZF, !mcsema_real_eip !252
  %1421 = trunc i32 %1417 to i8, !mcsema_real_eip !252
  %1422 = call i8 @llvm.ctpop.i8(i8 %1421), !mcsema_real_eip !252
  %1423 = trunc i8 %1422 to i1, !mcsema_real_eip !252
  %1424 = xor i1 %1423, true, !mcsema_real_eip !252
  store i1 %1424, i1* %PF, !mcsema_real_eip !252
  store i1 undef, i1* %AF, !mcsema_real_eip !252
  %1425 = zext i32 %1417 to i64, !mcsema_real_eip !252
  store i64 %1425, i64* %XAX, !mcsema_real_eip !252
  %EAX_val.382 = load i32, i32* %EAX.9, !mcsema_real_eip !253
  store i32 %EAX_val.382, i32* %1413, !mcsema_real_eip !253
  br label %block_0x411, !mcsema_real_eip !254

block_0x40c:                                      ; preds = %block_0x401, %1401
  br label %block_0x411, !mcsema_real_eip !255

block_0x3e4:                                      ; preds = %1388
  %_new_gep_402 = getelementptr i8, i8* %_load_rbp_ptr_383, i64 -16
  %_allin_new_bt_403 = bitcast i8* %_new_gep_402 to i64*
  %_ptr_to_int_1641 = ptrtoint i64* %_allin_new_bt_403 to i64
  %_offset_above_rbp_1644 = sub i64 %_ptr_to_int_1641, %_local_end_to_int_
  %_pot_address_in_parent_stack_1645 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1644
  %_cond1_1646 = icmp ugt i8* %_new_gep_402, %_local_stack_end_ptr_
  %_cond2_1_1647 = icmp ugt i8* %_new_gep_402, %_parent_stack_end_ptr_
  %_cond2_2_1648 = icmp ult i8* %_new_gep_402, %_parent_stack_start_ptr_
  %_cond2_1649 = or i1 %_cond2_1_1647, %_cond2_2_1648
  %_cond4_1650 = icmp ule i8* %_pot_address_in_parent_stack_1645, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1651 = and i1 %_cond1_1646, %_cond2_1649
  %_cond1_n_cond2_cond3_1652 = and i1 %_cond1_n_cond2_1651, %_cond4_1650
  br i1 %_cond1_n_cond2_cond3_1652, label %1426, label %1427

; <label>:1426:                                   ; preds = %block_0x3e4
  %_address_in_parent_stack_bt_1654 = bitcast i8* %_pot_address_in_parent_stack_1645 to i64*
  br label %1427

; <label>:1427:                                   ; preds = %block_0x3e4, %1426
  %1428 = phi i64* [ %_allin_new_bt_403, %block_0x3e4 ], [ %_address_in_parent_stack_bt_1654, %1426 ]
  %_new_load_1655 = load i64, i64* %1428
  store i64 %_new_load_1655, i64* %XAX, !mcsema_real_eip !256
  %1429 = add i64 %_new_load_1655, 31, !mcsema_real_eip !257
  %1430 = inttoptr i64 %1429 to i64*, !mcsema_real_eip !257
  %1431 = inttoptr i64 %1429 to i8*, !mcsema_real_eip !257
  %_offset_above_rbp_1658 = sub i64 %1429, %_local_end_to_int_
  %_pot_address_in_parent_stack_1659 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1658
  %_cond1_1660 = icmp ugt i8* %1431, %_local_stack_end_ptr_
  %_cond2_1_1661 = icmp ugt i8* %1431, %_parent_stack_end_ptr_
  %_cond2_2_1662 = icmp ult i8* %1431, %_parent_stack_start_ptr_
  %_cond2_1663 = or i1 %_cond2_1_1661, %_cond2_2_1662
  %_cond4_1664 = icmp ule i8* %_pot_address_in_parent_stack_1659, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1665 = and i1 %_cond1_1660, %_cond2_1663
  %_cond1_n_cond2_cond3_1666 = and i1 %_cond1_n_cond2_1665, %_cond4_1664
  br i1 %_cond1_n_cond2_cond3_1666, label %1432, label %1433

; <label>:1432:                                   ; preds = %1427
  br label %1433

; <label>:1433:                                   ; preds = %1427, %1432
  %1434 = phi i8* [ %1431, %1427 ], [ %_pot_address_in_parent_stack_1659, %1432 ]
  %_new_load_1668 = load i8, i8* %1434
  %1435 = zext i8 %_new_load_1668 to i32, !mcsema_real_eip !257
  %1436 = zext i32 %1435 to i64, !mcsema_real_eip !257
  store i64 %1436, i64* %XDI, !mcsema_real_eip !257
  %_load_rsp_ptr_404 = load i8*, i8** %_RSP_ptr_
  %RSP_val.386 = load i64, i64* %XSP, !mcsema_real_eip !258
  %_new_gep_405 = getelementptr i8, i8* %_load_rsp_ptr_404, i64 -8
  %1437 = sub i64 %RSP_val.386, 8, !mcsema_real_eip !258
  %_allin_new_bt_406 = bitcast i8* %_new_gep_405 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_406, !mcsema_real_eip !258
  store volatile i8* %_new_gep_405, i8** %_RSP_ptr_
  store i64 %1437, i64* %XSP, !mcsema_real_eip !258
  %1438 = call x86_64_sysvcc i64 @_to_byte(i64 %1436)
  %_rsp_fix_436 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_437 = getelementptr i8, i8* %_rsp_fix_436, i64 8
  store i8* %_gep_fix_437, i8** %_RSP_ptr_
  store i64 %1438, i64* %XAX, !mcsema_real_eip !258
  %EAX_val.388 = load i32, i32* %EAX.9, !mcsema_real_eip !259
  %1439 = sub i32 %EAX_val.388, 4, !mcsema_real_eip !259
  %1440 = xor i32 %1439, %EAX_val.388, !mcsema_real_eip !259
  %1441 = xor i32 %1440, 4, !mcsema_real_eip !259
  %1442 = and i32 %1441, 16, !mcsema_real_eip !259
  %1443 = icmp ne i32 %1442, 0, !mcsema_real_eip !259
  store i1 %1443, i1* %AF, !mcsema_real_eip !259
  %1444 = trunc i32 %1439 to i8, !mcsema_real_eip !259
  %1445 = call i8 @llvm.ctpop.i8(i8 %1444), !mcsema_real_eip !259
  %1446 = trunc i8 %1445 to i1, !mcsema_real_eip !259
  %1447 = xor i1 %1446, true, !mcsema_real_eip !259
  store i1 %1447, i1* %PF, !mcsema_real_eip !259
  %1448 = icmp eq i32 %1439, 0, !mcsema_real_eip !259
  store i1 %1448, i1* %ZF, !mcsema_real_eip !259
  %1449 = lshr i32 %1439, 31, !mcsema_real_eip !259
  %1450 = trunc i32 %1449 to i1, !mcsema_real_eip !259
  store i1 %1450, i1* %SF, !mcsema_real_eip !259
  %1451 = icmp ult i32 %EAX_val.388, 4, !mcsema_real_eip !259
  store i1 %1451, i1* %CF, !mcsema_real_eip !259
  %1452 = xor i32 %EAX_val.388, 4, !mcsema_real_eip !259
  %1453 = and i32 %1452, %1440, !mcsema_real_eip !259
  %1454 = lshr i32 %1453, 31, !mcsema_real_eip !259
  %1455 = trunc i32 %1454 to i1, !mcsema_real_eip !259
  store i1 %1455, i1* %OF, !mcsema_real_eip !259
  br i1 %1448, label %block_0x401, label %block_0x3fa, !mcsema_real_eip !260

block_0x401:                                      ; preds = %block_0x3fa, %1433, %1388
  br label %block_0x40c, !mcsema_real_eip !261

block_0x411:                                      ; preds = %block_0x40c, %1415
  %_load_rbp_ptr_407 = load i8*, i8** %_RBP_ptr_
  %_new_gep_408 = getelementptr i8, i8* %_load_rbp_ptr_407, i64 -20
  %_allin_new_bt_409 = bitcast i8* %_new_gep_408 to i64*
  %1456 = ptrtoint i64* %_allin_new_bt_409 to i64, !mcsema_real_eip !262
  %1457 = inttoptr i64 %1456 to i32*, !mcsema_real_eip !262
  %_ptr_bt_1671 = bitcast i32* %1457 to i8*
  %_offset_above_rbp_1672 = sub i64 %1456, %_local_end_to_int_
  %_pot_address_in_parent_stack_1673 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1672
  %_cond1_1674 = icmp ugt i8* %_ptr_bt_1671, %_local_stack_end_ptr_
  %_cond2_1_1675 = icmp ugt i8* %_ptr_bt_1671, %_parent_stack_end_ptr_
  %_cond2_2_1676 = icmp ult i8* %_ptr_bt_1671, %_parent_stack_start_ptr_
  %_cond2_1677 = or i1 %_cond2_1_1675, %_cond2_2_1676
  %_cond4_1678 = icmp ule i8* %_pot_address_in_parent_stack_1673, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1679 = and i1 %_cond1_1674, %_cond2_1677
  %_cond1_n_cond2_cond3_1680 = and i1 %_cond1_n_cond2_1679, %_cond4_1678
  br i1 %_cond1_n_cond2_cond3_1680, label %1458, label %1459

; <label>:1458:                                   ; preds = %block_0x411
  %_address_in_parent_stack_bt_1682 = bitcast i8* %_pot_address_in_parent_stack_1673 to i32*
  br label %1459

; <label>:1459:                                   ; preds = %block_0x411, %1458
  %1460 = phi i32* [ %1457, %block_0x411 ], [ %_address_in_parent_stack_bt_1682, %1458 ]
  %_new_load_1683 = load i32, i32* %1460
  %1461 = zext i32 %_new_load_1683 to i64, !mcsema_real_eip !262
  store i64 %1461, i64* %XAX, !mcsema_real_eip !262
  %_new_gep_411 = getelementptr i8, i8* %_load_rbp_ptr_407, i64 -4
  %_allin_new_bt_412 = bitcast i8* %_new_gep_411 to i64*
  %EAX_val.392 = load i32, i32* %EAX.9, !mcsema_real_eip !263
  %1462 = ptrtoint i64* %_allin_new_bt_412 to i64, !mcsema_real_eip !263
  %1463 = inttoptr i64 %1462 to i32*, !mcsema_real_eip !263
  store i32 %EAX_val.392, i32* %1463, !mcsema_real_eip !263
  br label %block_0x417, !mcsema_real_eip !264

block_0x3fa:                                      ; preds = %1433
  %_load_rbp_ptr_413 = load i8*, i8** %_RBP_ptr_
  %_new_gep_414 = getelementptr i8, i8* %_load_rbp_ptr_413, i64 -20
  %_allin_new_bt_415 = bitcast i8* %_new_gep_414 to i64*
  %1464 = ptrtoint i64* %_allin_new_bt_415 to i64, !mcsema_real_eip !264
  %1465 = inttoptr i64 %1464 to i32*, !mcsema_real_eip !264
  store i32 -32, i32* %1465, !mcsema_real_eip !264
  br label %block_0x401
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
!29 = !{i64 1047}
!30 = !{i64 1050}
!31 = !{i64 1054}
!32 = !{i64 1055}
!33 = !{i64 109}
!34 = !{i64 116}
!35 = !{i64 121}
!36 = !{i64 125}
!37 = !{i64 129}
!38 = !{i64 134}
!39 = !{i64 137}
!40 = !{i64 140}
!41 = !{i64 143}
!42 = !{i64 146}
!43 = !{i64 152}
!44 = !{i64 159}
!45 = !{i64 164}
!46 = !{i64 168}
!47 = !{i64 172}
!48 = !{i64 177}
!49 = !{i64 182}
!50 = !{i64 185}
!51 = !{i64 188}
!52 = !{i64 191}
!53 = !{i64 192}
!54 = !{i64 194}
!55 = !{i64 197}
!56 = !{i64 203}
!57 = !{i64 210}
!58 = !{i64 215}
!59 = !{i64 219}
!60 = !{i64 223}
!61 = !{i64 226}
!62 = !{i64 229}
!63 = !{i64 235}
!64 = !{i64 239}
!65 = !{i64 243}
!66 = !{i64 249}
!67 = !{i64 252}
!68 = !{i64 270}
!69 = !{i64 277}
!70 = !{i64 258}
!71 = !{i64 265}
!72 = !{i64 282}
!73 = !{i64 286}
!74 = !{i64 290}
!75 = !{i64 293}
!76 = !{i64 295}
!77 = !{i64 298}
!78 = !{i64 302}
!79 = !{i64 306}
!80 = !{i64 312}
!81 = !{i64 314}
!82 = !{i64 317}
!83 = !{i64 321}
!84 = !{i64 324}
!85 = !{i64 330}
!86 = !{i64 334}
!87 = !{i64 337}
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
!107 = !{i64 343}
!108 = !{i64 346}
!109 = !{i64 349}
!110 = !{i64 352}
!111 = !{i64 425}
!112 = !{i64 428}
!113 = !{i64 431}
!114 = !{i64 434}
!115 = !{i64 439}
!116 = !{i64 442}
!117 = !{i64 445}
!118 = !{i64 447}
!119 = !{i64 450}
!120 = !{i64 454}
!121 = !{i64 460}
!122 = !{i64 467}
!123 = !{i64 472}
!124 = !{i64 474}
!125 = !{i64 479}
!126 = !{i64 483}
!127 = !{i64 487}
!128 = !{i64 490}
!129 = !{i64 495}
!130 = !{i64 498}
!131 = !{i64 502}
!132 = !{i64 506}
!133 = !{i64 511}
!134 = !{i64 516}
!135 = !{i64 522}
!136 = !{i64 526}
!137 = !{i64 531}
!138 = !{i64 536}
!139 = !{i64 554}
!140 = !{i64 561}
!141 = !{i64 563}
!142 = !{i64 568}
!143 = !{i64 572}
!144 = !{i64 576}
!145 = !{i64 579}
!146 = !{i64 584}
!147 = !{i64 587}
!148 = !{i64 590}
!149 = !{i64 595}
!150 = !{i64 598}
!151 = !{i64 601}
!152 = !{i64 604}
!153 = !{i64 607}
!154 = !{i64 610}
!155 = !{i64 615}
!156 = !{i64 618}
!157 = !{i64 622}
!158 = !{i64 542}
!159 = !{i64 549}
!160 = !{i64 628}
!161 = !{i64 631}
!162 = !{i64 634}
!163 = !{i64 652}
!164 = !{i64 659}
!165 = !{i64 664}
!166 = !{i64 667}
!167 = !{i64 671}
!168 = !{i64 675}
!169 = !{i64 678}
!170 = !{i64 683}
!171 = !{i64 686}
!172 = !{i64 689}
!173 = !{i64 692}
!174 = !{i64 695}
!175 = !{i64 698}
!176 = !{i64 701}
!177 = !{i64 704}
!178 = !{i64 640}
!179 = !{i64 647}
!180 = !{i64 710}
!181 = !{i64 717}
!182 = !{i64 722}
!183 = !{i64 725}
!184 = !{i64 730}
!185 = !{i64 733}
!186 = !{i64 740}
!187 = !{i64 746}
!188 = !{i64 753}
!189 = !{i64 758}
!190 = !{i64 763}
!191 = !{i64 766}
!192 = !{i64 772}
!193 = !{i64 775}
!194 = !{i64 778}
!195 = !{i64 781}
!196 = !{i64 784}
!197 = !{i64 787}
!198 = !{i64 793}
!199 = !{i64 796}
!200 = !{i64 799}
!201 = !{i64 802}
!202 = !{i64 804}
!203 = !{i64 806}
!204 = !{i64 809}
!205 = !{i64 811}
!206 = !{i64 814}
!207 = !{i64 818}
!208 = !{i64 824}
!209 = !{i64 827}
!210 = !{i64 830}
!211 = !{i64 835}
!212 = !{i64 840}
!213 = !{i64 843}
!214 = !{i64 847}
!215 = !{i64 851}
!216 = !{i64 854}
!217 = !{i64 859}
!218 = !{i64 862}
!219 = !{i64 866}
!220 = !{i64 870}
!221 = !{i64 873}
!222 = !{i64 879}
!223 = !{i64 883}
!224 = !{i64 887}
!225 = !{i64 890}
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
!249 = !{i64 1030}
!250 = !{i64 1033}
!251 = !{i64 896}
!252 = !{i64 899}
!253 = !{i64 902}
!254 = !{i64 905}
!255 = !{i64 1036}
!256 = !{i64 996}
!257 = !{i64 1000}
!258 = !{i64 1004}
!259 = !{i64 1009}
!260 = !{i64 1012}
!261 = !{i64 1025}
!262 = !{i64 1041}
!263 = !{i64 1044}
!264 = !{i64 1018}
