; ModuleID = 'Output/test_7_1.clang.trans.bc'
source_filename = "Output/test_7_1.clang.bc"
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
module asm "  .globl sub_30;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_30(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xb7 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xc0 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c".\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\87\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = add i64 %1, 16, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  %5 = load i64, i64* %4, !mcsema_real_eip !4
  store i64 %5, i64* %XAX, !mcsema_real_eip !4
  %6 = add i64 %1, -4, !mcsema_real_eip !5
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !5
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %8 = inttoptr i64 %6 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %8, !mcsema_real_eip !5
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !6
  %9 = add i64 %RBP_val.7, -8, !mcsema_real_eip !6
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !6
  %ESI.8 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.9 = load i32, i32* %ESI.8, !mcsema_real_eip !6
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.9, i32* %11, !mcsema_real_eip !6
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !7
  %12 = add i64 %RBP_val.10, -12, !mcsema_real_eip !7
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !7
  %EDX.11 = bitcast i64* %XDX to i32*, !mcsema_real_eip !7
  %EDX_val.12 = load i32, i32* %EDX.11, !mcsema_real_eip !7
  %14 = inttoptr i64 %12 to i32*, !mcsema_real_eip !7
  store i32 %EDX_val.12, i32* %14, !mcsema_real_eip !7
  %RBP_val.13 = load i64, i64* %XBP, !mcsema_real_eip !8
  %15 = add i64 %RBP_val.13, -16, !mcsema_real_eip !8
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !8
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !8
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !8
  %17 = inttoptr i64 %15 to i32*, !mcsema_real_eip !8
  store i32 %ECX_val.15, i32* %17, !mcsema_real_eip !8
  %RBP_val.16 = load i64, i64* %XBP, !mcsema_real_eip !9
  %18 = add i64 %RBP_val.16, -20, !mcsema_real_eip !9
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !9
  %R8D.17 = bitcast i64* %R8 to i32*, !mcsema_real_eip !9
  %R8D_val.18 = load i32, i32* %R8D.17, !mcsema_real_eip !9
  %20 = inttoptr i64 %18 to i32*, !mcsema_real_eip !9
  store i32 %R8D_val.18, i32* %20, !mcsema_real_eip !9
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !10
  %21 = add i64 %RBP_val.19, -24, !mcsema_real_eip !10
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !10
  %R9D.20 = bitcast i64* %R9 to i32*, !mcsema_real_eip !10
  %R9D_val.21 = load i32, i32* %R9D.20, !mcsema_real_eip !10
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !10
  store i32 %R9D_val.21, i32* %23, !mcsema_real_eip !10
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !11
  %24 = add i64 %RBP_val.22, -32, !mcsema_real_eip !11
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !11
  %RAX_val.23 = load i64, i64* %XAX, !mcsema_real_eip !11
  store i64 %RAX_val.23, i64* %25, !mcsema_real_eip !11
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !12
  %26 = add i64 %RBP_val.24, -32, !mcsema_real_eip !12
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !12
  %28 = load i64, i64* %27, !mcsema_real_eip !12
  store i64 %28, i64* %XAX, !mcsema_real_eip !12
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !13
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !13
  %31 = load i32, i32* %30, !mcsema_real_eip !13
  %32 = zext i32 %31 to i64, !mcsema_real_eip !13
  store i64 %32, i64* %XCX, !mcsema_real_eip !13
  %33 = add i64 %RBP_val.24, -36, !mcsema_real_eip !14
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !14
  %ECX_val.28 = load i32, i32* %ECX.14, !mcsema_real_eip !14
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !14
  store i32 %ECX_val.28, i32* %35, !mcsema_real_eip !14
  %RBP_val.29 = load i64, i64* %XBP, !mcsema_real_eip !15
  %36 = add i64 %RBP_val.29, -36, !mcsema_real_eip !15
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !15
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !15
  %39 = load i32, i32* %38, !mcsema_real_eip !15
  %40 = zext i32 %39 to i64, !mcsema_real_eip !15
  store i64 %40, i64* %XAX, !mcsema_real_eip !15
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !16
  %41 = inttoptr i64 %RSP_val.30 to i64*, !mcsema_real_eip !16
  %42 = load i64, i64* %41, !mcsema_real_eip !16
  store i64 %42, i64* %XBP, !mcsema_real_eip !16
  %43 = add i64 %RSP_val.30, 8, !mcsema_real_eip !16
  store i64 %43, i64* %XSP, !mcsema_real_eip !16
  %44 = add i64 %43, 8, !mcsema_real_eip !17
  %45 = inttoptr i64 %43 to i64*, !mcsema_real_eip !17
  %46 = load i64, i64* %45, !mcsema_real_eip !17
  store i64 %46, i64* %XIP, !mcsema_real_eip !17
  store i64 %44, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !18
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !18
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !18
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !18
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !18
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !18
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !18
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !18
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !18
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !18
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !18
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !18
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !18
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !18
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !18
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !18
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !18
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !18
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !18
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !18
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !18
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !18
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !18
  br label %block_0x30, !mcsema_real_eip !18

block_0x30:                                       ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !18
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !18
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !18
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !19
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !20
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -80
  %2 = sub i64 %RSP_val.35, 80, !mcsema_real_eip !20
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 80, !mcsema_real_eip !20
  %4 = and i64 %3, 16, !mcsema_real_eip !20
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !20
  store i1 %5, i1* %AF, !mcsema_real_eip !20
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !20
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !20
  %8 = xor i1 %7, true, !mcsema_real_eip !20
  store i1 %8, i1* %PF, !mcsema_real_eip !20
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !20
  %9 = lshr i64 %2, 63, !mcsema_real_eip !20
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !20
  store i1 %10, i1* %SF, !mcsema_real_eip !20
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 80
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !20
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 80
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !20
  %12 = lshr i64 %11, 63, !mcsema_real_eip !20
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !20
  store i1 %13, i1* %OF, !mcsema_real_eip !20
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !20
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !21
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !21
  store i32 0, i32* %15, !mcsema_real_eip !21
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -52
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !22
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !22
  store i32 0, i32* %17, !mcsema_real_eip !22
  br label %block_0x46, !mcsema_real_eip !23

block_0x46:                                       ; preds = %block_0x50, %block_0x30
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -52
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !23
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !23
  %20 = load i32, i32* %19, !mcsema_real_eip !23
  %21 = sub i32 %20, 10, !mcsema_real_eip !23
  %22 = xor i32 %21, %20, !mcsema_real_eip !23
  %23 = xor i32 %22, 10, !mcsema_real_eip !23
  %24 = and i32 %23, 16, !mcsema_real_eip !23
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !23
  store i1 %25, i1* %AF, !mcsema_real_eip !23
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !23
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !23
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !23
  %29 = xor i1 %28, true, !mcsema_real_eip !23
  store i1 %29, i1* %PF, !mcsema_real_eip !23
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !23
  store i1 %30, i1* %ZF, !mcsema_real_eip !23
  %31 = lshr i32 %21, 31, !mcsema_real_eip !23
  %32 = trunc i32 %31 to i1, !mcsema_real_eip !23
  store i1 %32, i1* %SF, !mcsema_real_eip !23
  %33 = icmp ult i32 %20, 10, !mcsema_real_eip !23
  store i1 %33, i1* %CF, !mcsema_real_eip !23
  %34 = xor i32 %20, 10, !mcsema_real_eip !23
  %35 = and i32 %34, %22, !mcsema_real_eip !23
  %36 = lshr i32 %35, 31, !mcsema_real_eip !23
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !23
  store i1 %37, i1* %OF, !mcsema_real_eip !23
  %38 = icmp eq i1 %32, %37, !mcsema_real_eip !24
  br i1 %38, label %block_0x6a, label %block_0x50, !mcsema_real_eip !24

block_0x50:                                       ; preds = %block_0x46
  %39 = load i32, i32* %19, !mcsema_real_eip !25
  %40 = sext i32 %39 to i64, !mcsema_real_eip !25
  store i64 %40, i64* %XAX, !mcsema_real_eip !25
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -48
  %41 = mul i64 %40, 4, !mcsema_real_eip !26
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_26, i64 %41
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %42 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !26
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !26
  store i32 21, i32* %43, !mcsema_real_eip !26
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -52
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %44 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !27
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !27
  %46 = load i32, i32* %45, !mcsema_real_eip !27
  %47 = zext i32 %46 to i64, !mcsema_real_eip !27
  store i64 %47, i64* %XAX, !mcsema_real_eip !27
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !28
  %48 = add i32 1, %EAX_val.44, !mcsema_real_eip !28
  %49 = xor i32 %48, %EAX_val.44, !mcsema_real_eip !28
  %50 = xor i32 %49, 1, !mcsema_real_eip !28
  %51 = and i32 %50, 16, !mcsema_real_eip !28
  %52 = icmp ne i32 %51, 0, !mcsema_real_eip !28
  store i1 %52, i1* %AF, !mcsema_real_eip !28
  %53 = lshr i32 %48, 31, !mcsema_real_eip !28
  %54 = trunc i32 %53 to i1, !mcsema_real_eip !28
  store i1 %54, i1* %SF, !mcsema_real_eip !28
  %55 = icmp eq i32 %48, 0, !mcsema_real_eip !28
  store i1 %55, i1* %ZF, !mcsema_real_eip !28
  %56 = xor i32 %EAX_val.44, 1, !mcsema_real_eip !28
  %57 = xor i32 %56, -1, !mcsema_real_eip !28
  %58 = and i32 %57, %49, !mcsema_real_eip !28
  %59 = lshr i32 %58, 31, !mcsema_real_eip !28
  %60 = and i32 %59, 1, !mcsema_real_eip !28
  %61 = trunc i32 %60 to i1, !mcsema_real_eip !28
  store i1 %61, i1* %OF, !mcsema_real_eip !28
  %62 = trunc i32 %48 to i8, !mcsema_real_eip !28
  %63 = call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !28
  %64 = trunc i8 %63 to i1, !mcsema_real_eip !28
  %65 = xor i1 %64, true, !mcsema_real_eip !28
  store i1 %65, i1* %PF, !mcsema_real_eip !28
  %66 = icmp ult i32 %48, %EAX_val.44, !mcsema_real_eip !28
  store i1 %66, i1* %CF, !mcsema_real_eip !28
  %67 = zext i32 %48 to i64, !mcsema_real_eip !28
  store i64 %67, i64* %XAX, !mcsema_real_eip !28
  %EAX_val.47 = load i32, i32* %EAX.43, !mcsema_real_eip !29
  store i32 %EAX_val.47, i32* %45, !mcsema_real_eip !29
  br label %block_0x46, !mcsema_real_eip !30

block_0x6a:                                       ; preds = %block_0x46
  store i64 10, i64* %XAX, !mcsema_real_eip !31
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -48
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %68 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !32
  store i64 %68, i64* %XCX, !mcsema_real_eip !32
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !33
  %69 = zext i32 %EAX_val.50 to i64, !mcsema_real_eip !33
  store i64 %69, i64* %XDI, !mcsema_real_eip !33
  store i64 %69, i64* %XSI, !mcsema_real_eip !34
  store i64 %69, i64* %XDX, !mcsema_real_eip !35
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -64
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  store i64 %68, i64* %_allin_new_bt_40, !mcsema_real_eip !36
  %EAX_val.58 = load i32, i32* %EAX.49, !mcsema_real_eip !37
  %70 = zext i32 %EAX_val.58 to i64, !mcsema_real_eip !37
  store i64 %70, i64* %XCX, !mcsema_real_eip !37
  store i64 %70, i64* %R8, !mcsema_real_eip !38
  store i64 %70, i64* %R9, !mcsema_real_eip !39
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -64
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %71 = load i64, i64* %_allin_new_bt_43, !mcsema_real_eip !40
  store i64 %71, i64* %R10, !mcsema_real_eip !40
  %_load_rsp_ptr_44 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_46 = bitcast i8* %_load_rsp_ptr_44 to i64*
  store i64 %71, i64* %_allin_new_bt_46, !mcsema_real_eip !41
  %_load_rsp_ptr_47 = load i8*, i8** %_RSP_ptr_
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !42
  %_new_gep_48 = getelementptr i8, i8* %_load_rsp_ptr_47, i64 -8
  %72 = sub i64 %RSP_val.66, 8, !mcsema_real_eip !42
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_49, !mcsema_real_eip !42
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_
  store i64 %72, i64* %XSP, !mcsema_real_eip !42
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_48, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_107)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xb7 to i64), i64* %XDI, !mcsema_real_eip !43
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -56
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %EAX_val.69 = load i32, i32* %EAX.49, !mcsema_real_eip !44
  %73 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !44
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !44
  store i32 %EAX_val.69, i32* %74, !mcsema_real_eip !44
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -56
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %75 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !45
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !45
  %77 = load i32, i32* %76, !mcsema_real_eip !45
  %78 = zext i32 %77 to i64, !mcsema_real_eip !45
  store i64 %78, i64* %XSI, !mcsema_real_eip !45
  %AL.71 = bitcast i64* %XAX to i8*, !mcsema_real_eip !46
  store i8 0, i8* %AL.71, !mcsema_real_eip !46
  %RDI_val.72 = load i64, i64* %XDI, !mcsema_real_eip !47
  %RDX_val.74 = load i64, i64* %XDX, !mcsema_real_eip !47
  %RCX_val.75 = load i64, i64* %XCX, !mcsema_real_eip !47
  %R8_val.76 = load i64, i64* %R8, !mcsema_real_eip !47
  %R9_val.77 = load i64, i64* %R9, !mcsema_real_eip !47
  %_load_rsp_ptr_56 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_57 = bitcast i8* %_load_rsp_ptr_56 to i64*
  %79 = load i64, i64* %_allin_new_bt_57, !mcsema_real_eip !47
  %_new_gep_58 = getelementptr i8, i8* %_load_rsp_ptr_56, i64 8
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %80 = load i64, i64* %_allin_new_bt_59, !mcsema_real_eip !47
  %_new_gep_60 = getelementptr i8, i8* %_new_gep_58, i64 8
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %81 = load i64, i64* %_allin_new_bt_61, !mcsema_real_eip !47
  %_new_gep_62 = getelementptr i8, i8* %_new_gep_60, i64 8
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %82 = load i64, i64* %_allin_new_bt_63, !mcsema_real_eip !47
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_62, i64 8
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %83 = load i64, i64* %_allin_new_bt_65, !mcsema_real_eip !47
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %84 = load i64, i64* %_allin_new_bt_67, !mcsema_real_eip !47
  %_new_gep_68 = getelementptr i8, i8* %_new_gep_66, i64 8
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %85 = load i64, i64* %_allin_new_bt_69, !mcsema_real_eip !47
  %_new_gep_70 = getelementptr i8, i8* %_new_gep_68, i64 8
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %86 = load i64, i64* %_allin_new_bt_71, !mcsema_real_eip !47
  %_new_gep_72 = getelementptr i8, i8* %_new_gep_70, i64 8
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %87 = load i64, i64* %_allin_new_bt_73, !mcsema_real_eip !47
  %_new_gep_74 = getelementptr i8, i8* %_new_gep_72, i64 8
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %88 = load i64, i64* %_allin_new_bt_75, !mcsema_real_eip !47
  %RSP_val.79 = load i64, i64* %XSP, !mcsema_real_eip !47
  %_new_gep_77 = getelementptr i8, i8* %_load_rsp_ptr_56, i64 -8
  %89 = sub i64 %RSP_val.79, 8, !mcsema_real_eip !47
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_78, !mcsema_real_eip !47
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_
  store i64 %89, i64* %XSP, !mcsema_real_eip !47
  %90 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.72, i64 %78, i64 %RDX_val.74, i64 %RCX_val.75, i64 %R8_val.76, i64 %R9_val.77, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  %_rsp_fix_109 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_110 = getelementptr i8, i8* %_rsp_fix_109, i64 8
  store i8* %_gep_fix_110, i8** %_RSP_ptr_
  store i64 %90, i64* %XAX, !mcsema_real_eip !47
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -56
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %91 = ptrtoint i64* %_allin_new_bt_81 to i64, !mcsema_real_eip !48
  %92 = inttoptr i64 %91 to i32*, !mcsema_real_eip !48
  %93 = load i32, i32* %92, !mcsema_real_eip !48
  %94 = zext i32 %93 to i64, !mcsema_real_eip !48
  store i64 %94, i64* %XCX, !mcsema_real_eip !48
  %_new_gep_83 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -68
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %EAX_val.83 = load i32, i32* %EAX.49, !mcsema_real_eip !49
  %95 = ptrtoint i64* %_allin_new_bt_84 to i64, !mcsema_real_eip !49
  %96 = inttoptr i64 %95 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.83, i32* %96, !mcsema_real_eip !49
  %ECX.84 = bitcast i64* %XCX to i32*, !mcsema_real_eip !50
  %ECX_val.85 = load i32, i32* %ECX.84, !mcsema_real_eip !50
  %97 = zext i32 %ECX_val.85 to i64, !mcsema_real_eip !50
  store i64 %97, i64* %XAX, !mcsema_real_eip !50
  %_load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !51
  %_new_gep_86 = getelementptr i8, i8* %_load_rsp_ptr_85, i64 80
  %98 = add i64 80, %RSP_val.86, !mcsema_real_eip !51
  %_trans_p2i_87 = ptrtoint i8* %_new_gep_86 to i64
  %_trans_p2i_88 = ptrtoint i8* %_load_rsp_ptr_85 to i64
  %_trans_xor_89 = xor i64 %_trans_p2i_87, %_trans_p2i_88
  %99 = xor i64 %_trans_xor_89, 80, !mcsema_real_eip !51
  %100 = and i64 %99, 16, !mcsema_real_eip !51
  %101 = icmp ne i64 %100, 0, !mcsema_real_eip !51
  store i1 %101, i1* %AF, !mcsema_real_eip !51
  %102 = lshr i64 %98, 63, !mcsema_real_eip !51
  %103 = trunc i64 %102 to i1, !mcsema_real_eip !51
  store i1 %103, i1* %SF, !mcsema_real_eip !51
  %_trans_icmp_eq_91 = icmp eq i64 %_trans_p2i_87, 0
  store i1 %_trans_icmp_eq_91, i1* %ZF, !mcsema_real_eip !51
  %_trans_xor_93 = xor i64 %_trans_p2i_88, 80
  %104 = xor i64 %_trans_xor_93, -1, !mcsema_real_eip !51
  %105 = and i64 %104, %_trans_xor_89, !mcsema_real_eip !51
  %106 = lshr i64 %105, 63, !mcsema_real_eip !51
  %107 = and i64 %106, 1, !mcsema_real_eip !51
  %108 = trunc i64 %107 to i1, !mcsema_real_eip !51
  store i1 %108, i1* %OF, !mcsema_real_eip !51
  %_trans_trunc_98 = trunc i64 %_trans_p2i_87 to i8
  %109 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_98), !mcsema_real_eip !51
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !51
  %111 = xor i1 %110, true, !mcsema_real_eip !51
  store i1 %111, i1* %PF, !mcsema_real_eip !51
  %_trans_icmp_ne_100 = icmp ne i64 %_trans_p2i_87, %RSP_val.86
  store i1 %_trans_icmp_ne_100, i1* %CF, !mcsema_real_eip !51
  store volatile i8* %_new_gep_86, i8** %_RSP_ptr_
  store i64 %98, i64* %XSP, !mcsema_real_eip !51
  %_allin_new_bt_102 = bitcast i8* %_new_gep_86 to i64*
  %112 = load i64, i64* %_allin_new_bt_102, !mcsema_real_eip !52
  %_new_int2ptr_ = inttoptr i64 %112 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %112, i64* %XBP, !mcsema_real_eip !52
  %_new_gep_103 = getelementptr i8, i8* %_new_gep_86, i64 8
  %113 = add i64 %98, 8, !mcsema_real_eip !52
  store volatile i8* %_new_gep_103, i8** %_RSP_ptr_
  store i64 %113, i64* %XSP, !mcsema_real_eip !52
  %_new_gep_105 = getelementptr i8, i8* %_new_gep_103, i64 8
  %114 = add i64 %113, 8, !mcsema_real_eip !53
  %_allin_new_bt_106 = bitcast i8* %_new_gep_103 to i64*
  %115 = load i64, i64* %_allin_new_bt_106, !mcsema_real_eip !53
  store i64 %115, i64* %XIP, !mcsema_real_eip !53
  store volatile i8* %_new_gep_105, i8** %_RSP_ptr_
  store i64 %114, i64* %XSP, !mcsema_real_eip !53
  ret void, !mcsema_real_eip !53
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
  %_local_stack_start_ptr_ = alloca i8, i64 44
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 44
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
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 16
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
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_, i64 -4
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %EDI.5 = bitcast i64* %XDI to i32*, !mcsema_real_eip !5
  %EDI_val.6 = load i32, i32* %EDI.5, !mcsema_real_eip !5
  %5 = ptrtoint i64* %_allin_new_bt_7 to i64, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i32*, !mcsema_real_eip !5
  store i32 %EDI_val.6, i32* %6, !mcsema_real_eip !5
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %ESI.8 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.9 = load i32, i32* %ESI.8, !mcsema_real_eip !6
  %7 = ptrtoint i64* %_allin_new_bt_10 to i64, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.9, i32* %8, !mcsema_real_eip !6
  %_load_rbp_ptr_11 = load i8*, i8** %_RBP_ptr_
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_11, i64 -12
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  %EDX.11 = bitcast i64* %XDX to i32*, !mcsema_real_eip !7
  %EDX_val.12 = load i32, i32* %EDX.11, !mcsema_real_eip !7
  %9 = ptrtoint i64* %_allin_new_bt_13 to i64, !mcsema_real_eip !7
  %10 = inttoptr i64 %9 to i32*, !mcsema_real_eip !7
  store i32 %EDX_val.12, i32* %10, !mcsema_real_eip !7
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %ECX.14 = bitcast i64* %XCX to i32*, !mcsema_real_eip !8
  %ECX_val.15 = load i32, i32* %ECX.14, !mcsema_real_eip !8
  %11 = ptrtoint i64* %_allin_new_bt_16 to i64, !mcsema_real_eip !8
  %12 = inttoptr i64 %11 to i32*, !mcsema_real_eip !8
  store i32 %ECX_val.15, i32* %12, !mcsema_real_eip !8
  %_load_rbp_ptr_17 = load i8*, i8** %_RBP_ptr_
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_17, i64 -20
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  %R8D.17 = bitcast i64* %R8 to i32*, !mcsema_real_eip !9
  %R8D_val.18 = load i32, i32* %R8D.17, !mcsema_real_eip !9
  %13 = ptrtoint i64* %_allin_new_bt_19 to i64, !mcsema_real_eip !9
  %14 = inttoptr i64 %13 to i32*, !mcsema_real_eip !9
  store i32 %R8D_val.18, i32* %14, !mcsema_real_eip !9
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -24
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %R9D.20 = bitcast i64* %R9 to i32*, !mcsema_real_eip !10
  %R9D_val.21 = load i32, i32* %R9D.20, !mcsema_real_eip !10
  %15 = ptrtoint i64* %_allin_new_bt_22 to i64, !mcsema_real_eip !10
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !10
  store i32 %R9D_val.21, i32* %16, !mcsema_real_eip !10
  %_load_rbp_ptr_23 = load i8*, i8** %_RBP_ptr_
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_23, i64 -32
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %RAX_val.23 = load i64, i64* %XAX, !mcsema_real_eip !11
  store i64 %RAX_val.23, i64* %_allin_new_bt_25, !mcsema_real_eip !11
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %_ptr_to_int_41 = ptrtoint i64* %_allin_new_bt_28 to i64
  %_offset_above_rbp_44 = sub i64 %_ptr_to_int_41, %_local_end_to_int_
  %_pot_address_in_parent_stack_45 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_44
  %_cond1_46 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_47 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_48 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_49 = or i1 %_cond2_1_47, %_cond2_2_48
  %_cond4_50 = icmp ule i8* %_pot_address_in_parent_stack_45, %_parent_stack_end_ptr_
  %_cond1_n_cond2_51 = and i1 %_cond1_46, %_cond2_49
  %_cond1_n_cond2_cond3_52 = and i1 %_cond1_n_cond2_51, %_cond4_50
  br i1 %_cond1_n_cond2_cond3_52, label %17, label %18

; <label>:17:                                     ; preds = %3
  %_address_in_parent_stack_bt_54 = bitcast i8* %_pot_address_in_parent_stack_45 to i64*
  br label %18

; <label>:18:                                     ; preds = %3, %17
  %19 = phi i64* [ %_allin_new_bt_28, %3 ], [ %_address_in_parent_stack_bt_54, %17 ]
  %_new_load_55 = load i64, i64* %19
  store i64 %_new_load_55, i64* %XAX, !mcsema_real_eip !12
  %20 = inttoptr i64 %_new_load_55 to i64*, !mcsema_real_eip !13
  %21 = inttoptr i64 %_new_load_55 to i32*, !mcsema_real_eip !13
  %_ptr_bt_58 = bitcast i32* %21 to i8*
  %_offset_above_rbp_59 = sub i64 %_new_load_55, %_local_end_to_int_
  %_pot_address_in_parent_stack_60 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_59
  %_cond1_61 = icmp ugt i8* %_ptr_bt_58, %_local_stack_end_ptr_
  %_cond2_1_62 = icmp ugt i8* %_ptr_bt_58, %_parent_stack_end_ptr_
  %_cond2_2_63 = icmp ult i8* %_ptr_bt_58, %_parent_stack_start_ptr_
  %_cond2_64 = or i1 %_cond2_1_62, %_cond2_2_63
  %_cond4_65 = icmp ule i8* %_pot_address_in_parent_stack_60, %_parent_stack_end_ptr_
  %_cond1_n_cond2_66 = and i1 %_cond1_61, %_cond2_64
  %_cond1_n_cond2_cond3_67 = and i1 %_cond1_n_cond2_66, %_cond4_65
  br i1 %_cond1_n_cond2_cond3_67, label %22, label %23

; <label>:22:                                     ; preds = %18
  %_address_in_parent_stack_bt_69 = bitcast i8* %_pot_address_in_parent_stack_60 to i32*
  br label %23

; <label>:23:                                     ; preds = %18, %22
  %24 = phi i32* [ %21, %18 ], [ %_address_in_parent_stack_bt_69, %22 ]
  %_new_load_70 = load i32, i32* %24
  %25 = zext i32 %_new_load_70 to i64, !mcsema_real_eip !13
  store i64 %25, i64* %XCX, !mcsema_real_eip !13
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -36
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %ECX_val.28 = load i32, i32* %ECX.14, !mcsema_real_eip !14
  %26 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !14
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !14
  store i32 %ECX_val.28, i32* %27, !mcsema_real_eip !14
  %_load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_32, i64 -36
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %28 = ptrtoint i64* %_allin_new_bt_34 to i64, !mcsema_real_eip !15
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !15
  %_ptr_bt_73 = bitcast i32* %29 to i8*
  %_offset_above_rbp_74 = sub i64 %28, %_local_end_to_int_
  %_pot_address_in_parent_stack_75 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_74
  %_cond1_76 = icmp ugt i8* %_ptr_bt_73, %_local_stack_end_ptr_
  %_cond2_1_77 = icmp ugt i8* %_ptr_bt_73, %_parent_stack_end_ptr_
  %_cond2_2_78 = icmp ult i8* %_ptr_bt_73, %_parent_stack_start_ptr_
  %_cond2_79 = or i1 %_cond2_1_77, %_cond2_2_78
  %_cond4_80 = icmp ule i8* %_pot_address_in_parent_stack_75, %_parent_stack_end_ptr_
  %_cond1_n_cond2_81 = and i1 %_cond1_76, %_cond2_79
  %_cond1_n_cond2_cond3_82 = and i1 %_cond1_n_cond2_81, %_cond4_80
  br i1 %_cond1_n_cond2_cond3_82, label %30, label %31

; <label>:30:                                     ; preds = %23
  %_address_in_parent_stack_bt_84 = bitcast i8* %_pot_address_in_parent_stack_75 to i32*
  br label %31

; <label>:31:                                     ; preds = %23, %30
  %32 = phi i32* [ %29, %23 ], [ %_address_in_parent_stack_bt_84, %30 ]
  %_new_load_85 = load i32, i32* %32
  %33 = zext i32 %_new_load_85 to i64, !mcsema_real_eip !15
  store i64 %33, i64* %XAX, !mcsema_real_eip !15
  %_load_rsp_ptr_35 = load i8*, i8** %_RSP_ptr_
  %RSP_val.30 = load i64, i64* %XSP, !mcsema_real_eip !16
  %_allin_new_bt_36 = bitcast i8* %_load_rsp_ptr_35 to i64*
  %_ptr_to_int_86 = ptrtoint i64* %_allin_new_bt_36 to i64
  %_offset_above_rbp_89 = sub i64 %_ptr_to_int_86, %_local_end_to_int_
  %_pot_address_in_parent_stack_90 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_89
  %_cond1_91 = icmp ugt i8* %_load_rsp_ptr_35, %_local_stack_end_ptr_
  %_cond2_1_92 = icmp ugt i8* %_load_rsp_ptr_35, %_parent_stack_end_ptr_
  %_cond2_2_93 = icmp ult i8* %_load_rsp_ptr_35, %_parent_stack_start_ptr_
  %_cond2_94 = or i1 %_cond2_1_92, %_cond2_2_93
  %_cond4_95 = icmp ule i8* %_pot_address_in_parent_stack_90, %_parent_stack_end_ptr_
  %_cond1_n_cond2_96 = and i1 %_cond1_91, %_cond2_94
  %_cond1_n_cond2_cond3_97 = and i1 %_cond1_n_cond2_96, %_cond4_95
  br i1 %_cond1_n_cond2_cond3_97, label %34, label %35

; <label>:34:                                     ; preds = %31
  %_address_in_parent_stack_bt_99 = bitcast i8* %_pot_address_in_parent_stack_90 to i64*
  br label %35

; <label>:35:                                     ; preds = %31, %34
  %36 = phi i64* [ %_allin_new_bt_36, %31 ], [ %_address_in_parent_stack_bt_99, %34 ]
  %_new_load_100 = load i64, i64* %36
  %_new_int2ptr_ = inttoptr i64 %_new_load_100 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_100, i64* %XBP, !mcsema_real_eip !16
  %_new_gep_37 = getelementptr i8, i8* %_load_rsp_ptr_35, i64 8
  %37 = add i64 %RSP_val.30, 8, !mcsema_real_eip !16
  store volatile i8* %_new_gep_37, i8** %_RSP_ptr_
  store i64 %37, i64* %XSP, !mcsema_real_eip !16
  %_new_gep_39 = getelementptr i8, i8* %_new_gep_37, i64 8
  %38 = add i64 %37, 8, !mcsema_real_eip !17
  %_allin_new_bt_40 = bitcast i8* %_new_gep_37 to i64*
  %_ptr_to_int_101 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_104 = sub i64 %_ptr_to_int_101, %_local_end_to_int_
  %_pot_address_in_parent_stack_105 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_104
  %_cond1_106 = icmp ugt i8* %_new_gep_37, %_local_stack_end_ptr_
  %_cond2_1_107 = icmp ugt i8* %_new_gep_37, %_parent_stack_end_ptr_
  %_cond2_2_108 = icmp ult i8* %_new_gep_37, %_parent_stack_start_ptr_
  %_cond2_109 = or i1 %_cond2_1_107, %_cond2_2_108
  %_cond4_110 = icmp ule i8* %_pot_address_in_parent_stack_105, %_parent_stack_end_ptr_
  %_cond1_n_cond2_111 = and i1 %_cond1_106, %_cond2_109
  %_cond1_n_cond2_cond3_112 = and i1 %_cond1_n_cond2_111, %_cond4_110
  br i1 %_cond1_n_cond2_cond3_112, label %39, label %40

; <label>:39:                                     ; preds = %35
  %_address_in_parent_stack_bt_114 = bitcast i8* %_pot_address_in_parent_stack_105 to i64*
  br label %40

; <label>:40:                                     ; preds = %35, %39
  %41 = phi i64* [ %_allin_new_bt_40, %35 ], [ %_address_in_parent_stack_bt_114, %39 ]
  %_new_load_115 = load i64, i64* %41
  store i64 %_new_load_115, i64* %XIP, !mcsema_real_eip !17
  store volatile i8* %_new_gep_39, i8** %_RSP_ptr_
  store i64 %38, i64* %XSP, !mcsema_real_eip !17
  ret void, !mcsema_real_eip !17
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_30.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 96
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !18
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !18
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !18
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !18
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !18
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !18
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !18
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !18
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !18
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !18
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !18
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !18
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !18
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !18
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !18
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !18
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !18
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !18
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !18
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !18
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !18
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !18
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !18
  br label %block_0x30, !mcsema_real_eip !18

block_0x30:                                       ; preds = %entry
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !18
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !18
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !18
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !19
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.35 = load i64, i64* %XSP, !mcsema_real_eip !20
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -80
  %2 = sub i64 %RSP_val.35, 80, !mcsema_real_eip !20
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 80, !mcsema_real_eip !20
  %4 = and i64 %3, 16, !mcsema_real_eip !20
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !20
  store i1 %5, i1* %AF, !mcsema_real_eip !20
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !20
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !20
  %8 = xor i1 %7, true, !mcsema_real_eip !20
  store i1 %8, i1* %PF, !mcsema_real_eip !20
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !20
  %9 = lshr i64 %2, 63, !mcsema_real_eip !20
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !20
  store i1 %10, i1* %SF, !mcsema_real_eip !20
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 80
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !20
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 80
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !20
  %12 = lshr i64 %11, 63, !mcsema_real_eip !20
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !20
  store i1 %13, i1* %OF, !mcsema_real_eip !20
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !20
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !21
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !21
  store i32 0, i32* %15, !mcsema_real_eip !21
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -52
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !22
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !22
  store i32 0, i32* %17, !mcsema_real_eip !22
  br label %block_0x46, !mcsema_real_eip !23

block_0x46:                                       ; preds = %51, %block_0x30
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -52
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !23
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !23
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %19 to i8*
  %_offset_above_rbp_ = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0x46
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x46, %20
  %22 = phi i32* [ %19, %block_0x46 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  %23 = sub i32 %_new_load_, 10, !mcsema_real_eip !23
  %24 = xor i32 %23, %_new_load_, !mcsema_real_eip !23
  %25 = xor i32 %24, 10, !mcsema_real_eip !23
  %26 = and i32 %25, 16, !mcsema_real_eip !23
  %27 = icmp ne i32 %26, 0, !mcsema_real_eip !23
  store i1 %27, i1* %AF, !mcsema_real_eip !23
  %28 = trunc i32 %23 to i8, !mcsema_real_eip !23
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !23
  %30 = trunc i8 %29 to i1, !mcsema_real_eip !23
  %31 = xor i1 %30, true, !mcsema_real_eip !23
  store i1 %31, i1* %PF, !mcsema_real_eip !23
  %32 = icmp eq i32 %23, 0, !mcsema_real_eip !23
  store i1 %32, i1* %ZF, !mcsema_real_eip !23
  %33 = lshr i32 %23, 31, !mcsema_real_eip !23
  %34 = trunc i32 %33 to i1, !mcsema_real_eip !23
  store i1 %34, i1* %SF, !mcsema_real_eip !23
  %35 = icmp ult i32 %_new_load_, 10, !mcsema_real_eip !23
  store i1 %35, i1* %CF, !mcsema_real_eip !23
  %36 = xor i32 %_new_load_, 10, !mcsema_real_eip !23
  %37 = and i32 %36, %24, !mcsema_real_eip !23
  %38 = lshr i32 %37, 31, !mcsema_real_eip !23
  %39 = trunc i32 %38 to i1, !mcsema_real_eip !23
  store i1 %39, i1* %OF, !mcsema_real_eip !23
  %40 = icmp eq i1 %34, %39, !mcsema_real_eip !24
  br i1 %40, label %block_0x6a, label %block_0x50, !mcsema_real_eip !24

block_0x50:                                       ; preds = %21
  br i1 %_cond1_n_cond2_cond3_, label %41, label %42

; <label>:41:                                     ; preds = %block_0x50
  %_address_in_parent_stack_bt_124 = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %42

; <label>:42:                                     ; preds = %block_0x50, %41
  %43 = phi i32* [ %19, %block_0x50 ], [ %_address_in_parent_stack_bt_124, %41 ]
  %_new_load_125 = load i32, i32* %43
  %44 = sext i32 %_new_load_125 to i64, !mcsema_real_eip !25
  store i64 %44, i64* %XAX, !mcsema_real_eip !25
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -48
  %45 = mul i64 %44, 4, !mcsema_real_eip !26
  %_new_gep_27 = getelementptr i8, i8* %_new_gep_26, i64 %45
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %46 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !26
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !26
  store i32 21, i32* %47, !mcsema_real_eip !26
  %_load_rbp_ptr_29 = load i8*, i8** %_RBP_ptr_
  %_new_gep_30 = getelementptr i8, i8* %_load_rbp_ptr_29, i64 -52
  %_allin_new_bt_31 = bitcast i8* %_new_gep_30 to i64*
  %48 = ptrtoint i64* %_allin_new_bt_31 to i64, !mcsema_real_eip !27
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !27
  %_ptr_bt_128 = bitcast i32* %49 to i8*
  %_offset_above_rbp_129 = sub i64 %48, %_local_end_to_int_
  %_pot_address_in_parent_stack_130 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_129
  %_cond1_131 = icmp ugt i8* %_ptr_bt_128, %_local_stack_end_ptr_
  %_cond2_1_132 = icmp ugt i8* %_ptr_bt_128, %_parent_stack_end_ptr_
  %_cond2_2_133 = icmp ult i8* %_ptr_bt_128, %_parent_stack_start_ptr_
  %_cond2_134 = or i1 %_cond2_1_132, %_cond2_2_133
  %_cond4_135 = icmp ule i8* %_pot_address_in_parent_stack_130, %_parent_stack_end_ptr_
  %_cond1_n_cond2_136 = and i1 %_cond1_131, %_cond2_134
  %_cond1_n_cond2_cond3_137 = and i1 %_cond1_n_cond2_136, %_cond4_135
  br i1 %_cond1_n_cond2_cond3_137, label %50, label %51

; <label>:50:                                     ; preds = %42
  %_address_in_parent_stack_bt_139 = bitcast i8* %_pot_address_in_parent_stack_130 to i32*
  br label %51

; <label>:51:                                     ; preds = %42, %50
  %52 = phi i32* [ %49, %42 ], [ %_address_in_parent_stack_bt_139, %50 ]
  %_new_load_140 = load i32, i32* %52
  %53 = zext i32 %_new_load_140 to i64, !mcsema_real_eip !27
  store i64 %53, i64* %XAX, !mcsema_real_eip !27
  %EAX.43 = bitcast i64* %XAX to i32*, !mcsema_real_eip !28
  %EAX_val.44 = load i32, i32* %EAX.43, !mcsema_real_eip !28
  %54 = add i32 1, %EAX_val.44, !mcsema_real_eip !28
  %55 = xor i32 %54, %EAX_val.44, !mcsema_real_eip !28
  %56 = xor i32 %55, 1, !mcsema_real_eip !28
  %57 = and i32 %56, 16, !mcsema_real_eip !28
  %58 = icmp ne i32 %57, 0, !mcsema_real_eip !28
  store i1 %58, i1* %AF, !mcsema_real_eip !28
  %59 = lshr i32 %54, 31, !mcsema_real_eip !28
  %60 = trunc i32 %59 to i1, !mcsema_real_eip !28
  store i1 %60, i1* %SF, !mcsema_real_eip !28
  %61 = icmp eq i32 %54, 0, !mcsema_real_eip !28
  store i1 %61, i1* %ZF, !mcsema_real_eip !28
  %62 = xor i32 %EAX_val.44, 1, !mcsema_real_eip !28
  %63 = xor i32 %62, -1, !mcsema_real_eip !28
  %64 = and i32 %63, %55, !mcsema_real_eip !28
  %65 = lshr i32 %64, 31, !mcsema_real_eip !28
  %66 = and i32 %65, 1, !mcsema_real_eip !28
  %67 = trunc i32 %66 to i1, !mcsema_real_eip !28
  store i1 %67, i1* %OF, !mcsema_real_eip !28
  %68 = trunc i32 %54 to i8, !mcsema_real_eip !28
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !28
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !28
  %71 = xor i1 %70, true, !mcsema_real_eip !28
  store i1 %71, i1* %PF, !mcsema_real_eip !28
  %72 = icmp ult i32 %54, %EAX_val.44, !mcsema_real_eip !28
  store i1 %72, i1* %CF, !mcsema_real_eip !28
  %73 = zext i32 %54 to i64, !mcsema_real_eip !28
  store i64 %73, i64* %XAX, !mcsema_real_eip !28
  %EAX_val.47 = load i32, i32* %EAX.43, !mcsema_real_eip !29
  store i32 %EAX_val.47, i32* %49, !mcsema_real_eip !29
  br label %block_0x46, !mcsema_real_eip !30

block_0x6a:                                       ; preds = %21
  store i64 10, i64* %XAX, !mcsema_real_eip !31
  %_new_gep_36 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -48
  %_allin_new_bt_37 = bitcast i8* %_new_gep_36 to i64*
  %74 = ptrtoint i64* %_allin_new_bt_37 to i64, !mcsema_real_eip !32
  store i64 %74, i64* %XCX, !mcsema_real_eip !32
  %EAX.49 = bitcast i64* %XAX to i32*, !mcsema_real_eip !33
  %EAX_val.50 = load i32, i32* %EAX.49, !mcsema_real_eip !33
  %75 = zext i32 %EAX_val.50 to i64, !mcsema_real_eip !33
  store i64 %75, i64* %XDI, !mcsema_real_eip !33
  store i64 %75, i64* %XSI, !mcsema_real_eip !34
  store i64 %75, i64* %XDX, !mcsema_real_eip !35
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -64
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  store i64 %74, i64* %_allin_new_bt_40, !mcsema_real_eip !36
  %EAX_val.58 = load i32, i32* %EAX.49, !mcsema_real_eip !37
  %76 = zext i32 %EAX_val.58 to i64, !mcsema_real_eip !37
  store i64 %76, i64* %XCX, !mcsema_real_eip !37
  store i64 %76, i64* %R8, !mcsema_real_eip !38
  store i64 %76, i64* %R9, !mcsema_real_eip !39
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -64
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %_ptr_to_int_141 = ptrtoint i64* %_allin_new_bt_43 to i64
  %_offset_above_rbp_144 = sub i64 %_ptr_to_int_141, %_local_end_to_int_
  %_pot_address_in_parent_stack_145 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_144
  %_cond1_146 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_147 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_148 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_149 = or i1 %_cond2_1_147, %_cond2_2_148
  %_cond4_150 = icmp ule i8* %_pot_address_in_parent_stack_145, %_parent_stack_end_ptr_
  %_cond1_n_cond2_151 = and i1 %_cond1_146, %_cond2_149
  %_cond1_n_cond2_cond3_152 = and i1 %_cond1_n_cond2_151, %_cond4_150
  br i1 %_cond1_n_cond2_cond3_152, label %77, label %78

; <label>:77:                                     ; preds = %block_0x6a
  %_address_in_parent_stack_bt_154 = bitcast i8* %_pot_address_in_parent_stack_145 to i64*
  br label %78

; <label>:78:                                     ; preds = %block_0x6a, %77
  %79 = phi i64* [ %_allin_new_bt_43, %block_0x6a ], [ %_address_in_parent_stack_bt_154, %77 ]
  %_new_load_155 = load i64, i64* %79
  store i64 %_new_load_155, i64* %R10, !mcsema_real_eip !40
  %_load_rsp_ptr_44 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_46 = bitcast i8* %_load_rsp_ptr_44 to i64*
  store i64 %_new_load_155, i64* %_allin_new_bt_46, !mcsema_real_eip !41
  %_load_rsp_ptr_47 = load i8*, i8** %_RSP_ptr_
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !42
  %_new_gep_48 = getelementptr i8, i8* %_load_rsp_ptr_47, i64 -8
  %80 = sub i64 %RSP_val.66, 8, !mcsema_real_eip !42
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_49, !mcsema_real_eip !42
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_
  store i64 %80, i64* %XSP, !mcsema_real_eip !42
  %_load_rbp_ptr_107 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_48, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_107)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0xb7 to i64), i64* %XDI, !mcsema_real_eip !43
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -56
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %EAX_val.69 = load i32, i32* %EAX.49, !mcsema_real_eip !44
  %81 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !44
  %82 = inttoptr i64 %81 to i32*, !mcsema_real_eip !44
  store i32 %EAX_val.69, i32* %82, !mcsema_real_eip !44
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -56
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %83 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !45
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !45
  %_ptr_bt_158 = bitcast i32* %84 to i8*
  %_offset_above_rbp_159 = sub i64 %83, %_local_end_to_int_
  %_pot_address_in_parent_stack_160 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_159
  %_cond1_161 = icmp ugt i8* %_ptr_bt_158, %_local_stack_end_ptr_
  %_cond2_1_162 = icmp ugt i8* %_ptr_bt_158, %_parent_stack_end_ptr_
  %_cond2_2_163 = icmp ult i8* %_ptr_bt_158, %_parent_stack_start_ptr_
  %_cond2_164 = or i1 %_cond2_1_162, %_cond2_2_163
  %_cond4_165 = icmp ule i8* %_pot_address_in_parent_stack_160, %_parent_stack_end_ptr_
  %_cond1_n_cond2_166 = and i1 %_cond1_161, %_cond2_164
  %_cond1_n_cond2_cond3_167 = and i1 %_cond1_n_cond2_166, %_cond4_165
  br i1 %_cond1_n_cond2_cond3_167, label %85, label %86

; <label>:85:                                     ; preds = %78
  %_address_in_parent_stack_bt_169 = bitcast i8* %_pot_address_in_parent_stack_160 to i32*
  br label %86

; <label>:86:                                     ; preds = %78, %85
  %87 = phi i32* [ %84, %78 ], [ %_address_in_parent_stack_bt_169, %85 ]
  %_new_load_170 = load i32, i32* %87
  %88 = zext i32 %_new_load_170 to i64, !mcsema_real_eip !45
  store i64 %88, i64* %XSI, !mcsema_real_eip !45
  %AL.71 = bitcast i64* %XAX to i8*, !mcsema_real_eip !46
  store i8 0, i8* %AL.71, !mcsema_real_eip !46
  %RDI_val.72 = load i64, i64* %XDI, !mcsema_real_eip !47
  %RDX_val.74 = load i64, i64* %XDX, !mcsema_real_eip !47
  %RCX_val.75 = load i64, i64* %XCX, !mcsema_real_eip !47
  %R8_val.76 = load i64, i64* %R8, !mcsema_real_eip !47
  %R9_val.77 = load i64, i64* %R9, !mcsema_real_eip !47
  %_load_rsp_ptr_56 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_57 = bitcast i8* %_load_rsp_ptr_56 to i64*
  %_ptr_to_int_171 = ptrtoint i64* %_allin_new_bt_57 to i64
  %_offset_above_rbp_174 = sub i64 %_ptr_to_int_171, %_local_end_to_int_
  %_pot_address_in_parent_stack_175 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_174
  %_cond1_176 = icmp ugt i8* %_load_rsp_ptr_56, %_local_stack_end_ptr_
  %_cond2_1_177 = icmp ugt i8* %_load_rsp_ptr_56, %_parent_stack_end_ptr_
  %_cond2_2_178 = icmp ult i8* %_load_rsp_ptr_56, %_parent_stack_start_ptr_
  %_cond2_179 = or i1 %_cond2_1_177, %_cond2_2_178
  %_cond4_180 = icmp ule i8* %_pot_address_in_parent_stack_175, %_parent_stack_end_ptr_
  %_cond1_n_cond2_181 = and i1 %_cond1_176, %_cond2_179
  %_cond1_n_cond2_cond3_182 = and i1 %_cond1_n_cond2_181, %_cond4_180
  br i1 %_cond1_n_cond2_cond3_182, label %89, label %90

; <label>:89:                                     ; preds = %86
  %_address_in_parent_stack_bt_184 = bitcast i8* %_pot_address_in_parent_stack_175 to i64*
  br label %90

; <label>:90:                                     ; preds = %86, %89
  %91 = phi i64* [ %_allin_new_bt_57, %86 ], [ %_address_in_parent_stack_bt_184, %89 ]
  %_new_load_185 = load i64, i64* %91
  %_new_gep_58 = getelementptr i8, i8* %_load_rsp_ptr_56, i64 8
  %_allin_new_bt_59 = bitcast i8* %_new_gep_58 to i64*
  %_ptr_to_int_186 = ptrtoint i64* %_allin_new_bt_59 to i64
  %_offset_above_rbp_189 = sub i64 %_ptr_to_int_186, %_local_end_to_int_
  %_pot_address_in_parent_stack_190 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_189
  %_cond1_191 = icmp ugt i8* %_new_gep_58, %_local_stack_end_ptr_
  %_cond2_1_192 = icmp ugt i8* %_new_gep_58, %_parent_stack_end_ptr_
  %_cond2_2_193 = icmp ult i8* %_new_gep_58, %_parent_stack_start_ptr_
  %_cond2_194 = or i1 %_cond2_1_192, %_cond2_2_193
  %_cond4_195 = icmp ule i8* %_pot_address_in_parent_stack_190, %_parent_stack_end_ptr_
  %_cond1_n_cond2_196 = and i1 %_cond1_191, %_cond2_194
  %_cond1_n_cond2_cond3_197 = and i1 %_cond1_n_cond2_196, %_cond4_195
  br i1 %_cond1_n_cond2_cond3_197, label %92, label %93

; <label>:92:                                     ; preds = %90
  %_address_in_parent_stack_bt_199 = bitcast i8* %_pot_address_in_parent_stack_190 to i64*
  br label %93

; <label>:93:                                     ; preds = %90, %92
  %94 = phi i64* [ %_allin_new_bt_59, %90 ], [ %_address_in_parent_stack_bt_199, %92 ]
  %_new_load_200 = load i64, i64* %94
  %_new_gep_60 = getelementptr i8, i8* %_new_gep_58, i64 8
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_201 = ptrtoint i64* %_allin_new_bt_61 to i64
  %_offset_above_rbp_204 = sub i64 %_ptr_to_int_201, %_local_end_to_int_
  %_pot_address_in_parent_stack_205 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_204
  %_cond1_206 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_207 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_208 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_209 = or i1 %_cond2_1_207, %_cond2_2_208
  %_cond4_210 = icmp ule i8* %_pot_address_in_parent_stack_205, %_parent_stack_end_ptr_
  %_cond1_n_cond2_211 = and i1 %_cond1_206, %_cond2_209
  %_cond1_n_cond2_cond3_212 = and i1 %_cond1_n_cond2_211, %_cond4_210
  br i1 %_cond1_n_cond2_cond3_212, label %95, label %96

; <label>:95:                                     ; preds = %93
  %_address_in_parent_stack_bt_214 = bitcast i8* %_pot_address_in_parent_stack_205 to i64*
  br label %96

; <label>:96:                                     ; preds = %93, %95
  %97 = phi i64* [ %_allin_new_bt_61, %93 ], [ %_address_in_parent_stack_bt_214, %95 ]
  %_new_load_215 = load i64, i64* %97
  %_new_gep_62 = getelementptr i8, i8* %_new_gep_60, i64 8
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %_ptr_to_int_216 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_219 = sub i64 %_ptr_to_int_216, %_local_end_to_int_
  %_pot_address_in_parent_stack_220 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_219
  %_cond1_221 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_222 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_223 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_224 = or i1 %_cond2_1_222, %_cond2_2_223
  %_cond4_225 = icmp ule i8* %_pot_address_in_parent_stack_220, %_parent_stack_end_ptr_
  %_cond1_n_cond2_226 = and i1 %_cond1_221, %_cond2_224
  %_cond1_n_cond2_cond3_227 = and i1 %_cond1_n_cond2_226, %_cond4_225
  br i1 %_cond1_n_cond2_cond3_227, label %98, label %99

; <label>:98:                                     ; preds = %96
  %_address_in_parent_stack_bt_229 = bitcast i8* %_pot_address_in_parent_stack_220 to i64*
  br label %99

; <label>:99:                                     ; preds = %96, %98
  %100 = phi i64* [ %_allin_new_bt_63, %96 ], [ %_address_in_parent_stack_bt_229, %98 ]
  %_new_load_230 = load i64, i64* %100
  %_new_gep_64 = getelementptr i8, i8* %_new_gep_62, i64 8
  %_allin_new_bt_65 = bitcast i8* %_new_gep_64 to i64*
  %_ptr_to_int_231 = ptrtoint i64* %_allin_new_bt_65 to i64
  %_offset_above_rbp_234 = sub i64 %_ptr_to_int_231, %_local_end_to_int_
  %_pot_address_in_parent_stack_235 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_234
  %_cond1_236 = icmp ugt i8* %_new_gep_64, %_local_stack_end_ptr_
  %_cond2_1_237 = icmp ugt i8* %_new_gep_64, %_parent_stack_end_ptr_
  %_cond2_2_238 = icmp ult i8* %_new_gep_64, %_parent_stack_start_ptr_
  %_cond2_239 = or i1 %_cond2_1_237, %_cond2_2_238
  %_cond4_240 = icmp ule i8* %_pot_address_in_parent_stack_235, %_parent_stack_end_ptr_
  %_cond1_n_cond2_241 = and i1 %_cond1_236, %_cond2_239
  %_cond1_n_cond2_cond3_242 = and i1 %_cond1_n_cond2_241, %_cond4_240
  br i1 %_cond1_n_cond2_cond3_242, label %101, label %102

; <label>:101:                                    ; preds = %99
  %_address_in_parent_stack_bt_244 = bitcast i8* %_pot_address_in_parent_stack_235 to i64*
  br label %102

; <label>:102:                                    ; preds = %99, %101
  %103 = phi i64* [ %_allin_new_bt_65, %99 ], [ %_address_in_parent_stack_bt_244, %101 ]
  %_new_load_245 = load i64, i64* %103
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_64, i64 8
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %_ptr_to_int_246 = ptrtoint i64* %_allin_new_bt_67 to i64
  %_offset_above_rbp_249 = sub i64 %_ptr_to_int_246, %_local_end_to_int_
  %_pot_address_in_parent_stack_250 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_249
  %_cond1_251 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_252 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_253 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_254 = or i1 %_cond2_1_252, %_cond2_2_253
  %_cond4_255 = icmp ule i8* %_pot_address_in_parent_stack_250, %_parent_stack_end_ptr_
  %_cond1_n_cond2_256 = and i1 %_cond1_251, %_cond2_254
  %_cond1_n_cond2_cond3_257 = and i1 %_cond1_n_cond2_256, %_cond4_255
  br i1 %_cond1_n_cond2_cond3_257, label %104, label %105

; <label>:104:                                    ; preds = %102
  %_address_in_parent_stack_bt_259 = bitcast i8* %_pot_address_in_parent_stack_250 to i64*
  br label %105

; <label>:105:                                    ; preds = %102, %104
  %106 = phi i64* [ %_allin_new_bt_67, %102 ], [ %_address_in_parent_stack_bt_259, %104 ]
  %_new_load_260 = load i64, i64* %106
  %_new_gep_68 = getelementptr i8, i8* %_new_gep_66, i64 8
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %_ptr_to_int_261 = ptrtoint i64* %_allin_new_bt_69 to i64
  %_offset_above_rbp_264 = sub i64 %_ptr_to_int_261, %_local_end_to_int_
  %_pot_address_in_parent_stack_265 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_264
  %_cond1_266 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_267 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_268 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_269 = or i1 %_cond2_1_267, %_cond2_2_268
  %_cond4_270 = icmp ule i8* %_pot_address_in_parent_stack_265, %_parent_stack_end_ptr_
  %_cond1_n_cond2_271 = and i1 %_cond1_266, %_cond2_269
  %_cond1_n_cond2_cond3_272 = and i1 %_cond1_n_cond2_271, %_cond4_270
  br i1 %_cond1_n_cond2_cond3_272, label %107, label %108

; <label>:107:                                    ; preds = %105
  %_address_in_parent_stack_bt_274 = bitcast i8* %_pot_address_in_parent_stack_265 to i64*
  br label %108

; <label>:108:                                    ; preds = %105, %107
  %109 = phi i64* [ %_allin_new_bt_69, %105 ], [ %_address_in_parent_stack_bt_274, %107 ]
  %_new_load_275 = load i64, i64* %109
  %_new_gep_70 = getelementptr i8, i8* %_new_gep_68, i64 8
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  %_ptr_to_int_276 = ptrtoint i64* %_allin_new_bt_71 to i64
  %_offset_above_rbp_279 = sub i64 %_ptr_to_int_276, %_local_end_to_int_
  %_pot_address_in_parent_stack_280 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_279
  %_cond1_281 = icmp ugt i8* %_new_gep_70, %_local_stack_end_ptr_
  %_cond2_1_282 = icmp ugt i8* %_new_gep_70, %_parent_stack_end_ptr_
  %_cond2_2_283 = icmp ult i8* %_new_gep_70, %_parent_stack_start_ptr_
  %_cond2_284 = or i1 %_cond2_1_282, %_cond2_2_283
  %_cond4_285 = icmp ule i8* %_pot_address_in_parent_stack_280, %_parent_stack_end_ptr_
  %_cond1_n_cond2_286 = and i1 %_cond1_281, %_cond2_284
  %_cond1_n_cond2_cond3_287 = and i1 %_cond1_n_cond2_286, %_cond4_285
  br i1 %_cond1_n_cond2_cond3_287, label %110, label %111

; <label>:110:                                    ; preds = %108
  %_address_in_parent_stack_bt_289 = bitcast i8* %_pot_address_in_parent_stack_280 to i64*
  br label %111

; <label>:111:                                    ; preds = %108, %110
  %112 = phi i64* [ %_allin_new_bt_71, %108 ], [ %_address_in_parent_stack_bt_289, %110 ]
  %_new_load_290 = load i64, i64* %112
  %_new_gep_72 = getelementptr i8, i8* %_new_gep_70, i64 8
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %_ptr_to_int_291 = ptrtoint i64* %_allin_new_bt_73 to i64
  %_offset_above_rbp_294 = sub i64 %_ptr_to_int_291, %_local_end_to_int_
  %_pot_address_in_parent_stack_295 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_294
  %_cond1_296 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond2_1_297 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_2_298 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_299 = or i1 %_cond2_1_297, %_cond2_2_298
  %_cond4_300 = icmp ule i8* %_pot_address_in_parent_stack_295, %_parent_stack_end_ptr_
  %_cond1_n_cond2_301 = and i1 %_cond1_296, %_cond2_299
  %_cond1_n_cond2_cond3_302 = and i1 %_cond1_n_cond2_301, %_cond4_300
  br i1 %_cond1_n_cond2_cond3_302, label %113, label %114

; <label>:113:                                    ; preds = %111
  %_address_in_parent_stack_bt_304 = bitcast i8* %_pot_address_in_parent_stack_295 to i64*
  br label %114

; <label>:114:                                    ; preds = %111, %113
  %115 = phi i64* [ %_allin_new_bt_73, %111 ], [ %_address_in_parent_stack_bt_304, %113 ]
  %_new_load_305 = load i64, i64* %115
  %_new_gep_74 = getelementptr i8, i8* %_new_gep_72, i64 8
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %_ptr_to_int_306 = ptrtoint i64* %_allin_new_bt_75 to i64
  %_offset_above_rbp_309 = sub i64 %_ptr_to_int_306, %_local_end_to_int_
  %_pot_address_in_parent_stack_310 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_309
  %_cond1_311 = icmp ugt i8* %_new_gep_74, %_local_stack_end_ptr_
  %_cond2_1_312 = icmp ugt i8* %_new_gep_74, %_parent_stack_end_ptr_
  %_cond2_2_313 = icmp ult i8* %_new_gep_74, %_parent_stack_start_ptr_
  %_cond2_314 = or i1 %_cond2_1_312, %_cond2_2_313
  %_cond4_315 = icmp ule i8* %_pot_address_in_parent_stack_310, %_parent_stack_end_ptr_
  %_cond1_n_cond2_316 = and i1 %_cond1_311, %_cond2_314
  %_cond1_n_cond2_cond3_317 = and i1 %_cond1_n_cond2_316, %_cond4_315
  br i1 %_cond1_n_cond2_cond3_317, label %116, label %117

; <label>:116:                                    ; preds = %114
  %_address_in_parent_stack_bt_319 = bitcast i8* %_pot_address_in_parent_stack_310 to i64*
  br label %117

; <label>:117:                                    ; preds = %114, %116
  %118 = phi i64* [ %_allin_new_bt_75, %114 ], [ %_address_in_parent_stack_bt_319, %116 ]
  %_new_load_320 = load i64, i64* %118
  %RSP_val.79 = load i64, i64* %XSP, !mcsema_real_eip !47
  %_new_gep_77 = getelementptr i8, i8* %_load_rsp_ptr_56, i64 -8
  %119 = sub i64 %RSP_val.79, 8, !mcsema_real_eip !47
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_78, !mcsema_real_eip !47
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_
  store i64 %119, i64* %XSP, !mcsema_real_eip !47
  %120 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.72, i64 %88, i64 %RDX_val.74, i64 %RCX_val.75, i64 %R8_val.76, i64 %R9_val.77, i64 %_new_load_185, i64 %_new_load_200, i64 %_new_load_215, i64 %_new_load_230, i64 %_new_load_245, i64 %_new_load_260, i64 %_new_load_275, i64 %_new_load_290, i64 %_new_load_305, i64 %_new_load_320)
  %_rsp_fix_109 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_110 = getelementptr i8, i8* %_rsp_fix_109, i64 8
  store i8* %_gep_fix_110, i8** %_RSP_ptr_
  store i64 %120, i64* %XAX, !mcsema_real_eip !47
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -56
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %121 = ptrtoint i64* %_allin_new_bt_81 to i64, !mcsema_real_eip !48
  %122 = inttoptr i64 %121 to i32*, !mcsema_real_eip !48
  %_ptr_bt_323 = bitcast i32* %122 to i8*
  %_offset_above_rbp_324 = sub i64 %121, %_local_end_to_int_
  %_pot_address_in_parent_stack_325 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_324
  %_cond1_326 = icmp ugt i8* %_ptr_bt_323, %_local_stack_end_ptr_
  %_cond2_1_327 = icmp ugt i8* %_ptr_bt_323, %_parent_stack_end_ptr_
  %_cond2_2_328 = icmp ult i8* %_ptr_bt_323, %_parent_stack_start_ptr_
  %_cond2_329 = or i1 %_cond2_1_327, %_cond2_2_328
  %_cond4_330 = icmp ule i8* %_pot_address_in_parent_stack_325, %_parent_stack_end_ptr_
  %_cond1_n_cond2_331 = and i1 %_cond1_326, %_cond2_329
  %_cond1_n_cond2_cond3_332 = and i1 %_cond1_n_cond2_331, %_cond4_330
  br i1 %_cond1_n_cond2_cond3_332, label %123, label %124

; <label>:123:                                    ; preds = %117
  %_address_in_parent_stack_bt_334 = bitcast i8* %_pot_address_in_parent_stack_325 to i32*
  br label %124

; <label>:124:                                    ; preds = %117, %123
  %125 = phi i32* [ %122, %117 ], [ %_address_in_parent_stack_bt_334, %123 ]
  %_new_load_335 = load i32, i32* %125
  %126 = zext i32 %_new_load_335 to i64, !mcsema_real_eip !48
  store i64 %126, i64* %XCX, !mcsema_real_eip !48
  %_new_gep_83 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -68
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %EAX_val.83 = load i32, i32* %EAX.49, !mcsema_real_eip !49
  %127 = ptrtoint i64* %_allin_new_bt_84 to i64, !mcsema_real_eip !49
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !49
  store i32 %EAX_val.83, i32* %128, !mcsema_real_eip !49
  %ECX.84 = bitcast i64* %XCX to i32*, !mcsema_real_eip !50
  %ECX_val.85 = load i32, i32* %ECX.84, !mcsema_real_eip !50
  %129 = zext i32 %ECX_val.85 to i64, !mcsema_real_eip !50
  store i64 %129, i64* %XAX, !mcsema_real_eip !50
  %_load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !51
  %_new_gep_86 = getelementptr i8, i8* %_load_rsp_ptr_85, i64 80
  %130 = add i64 80, %RSP_val.86, !mcsema_real_eip !51
  %_trans_p2i_87 = ptrtoint i8* %_new_gep_86 to i64
  %_trans_p2i_88 = ptrtoint i8* %_load_rsp_ptr_85 to i64
  %_trans_xor_89 = xor i64 %_trans_p2i_87, %_trans_p2i_88
  %131 = xor i64 %_trans_xor_89, 80, !mcsema_real_eip !51
  %132 = and i64 %131, 16, !mcsema_real_eip !51
  %133 = icmp ne i64 %132, 0, !mcsema_real_eip !51
  store i1 %133, i1* %AF, !mcsema_real_eip !51
  %134 = lshr i64 %130, 63, !mcsema_real_eip !51
  %135 = trunc i64 %134 to i1, !mcsema_real_eip !51
  store i1 %135, i1* %SF, !mcsema_real_eip !51
  %_trans_icmp_eq_91 = icmp eq i64 %_trans_p2i_87, 0
  store i1 %_trans_icmp_eq_91, i1* %ZF, !mcsema_real_eip !51
  %_trans_xor_93 = xor i64 %_trans_p2i_88, 80
  %136 = xor i64 %_trans_xor_93, -1, !mcsema_real_eip !51
  %137 = and i64 %136, %_trans_xor_89, !mcsema_real_eip !51
  %138 = lshr i64 %137, 63, !mcsema_real_eip !51
  %139 = and i64 %138, 1, !mcsema_real_eip !51
  %140 = trunc i64 %139 to i1, !mcsema_real_eip !51
  store i1 %140, i1* %OF, !mcsema_real_eip !51
  %_trans_trunc_98 = trunc i64 %_trans_p2i_87 to i8
  %141 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_98), !mcsema_real_eip !51
  %142 = trunc i8 %141 to i1, !mcsema_real_eip !51
  %143 = xor i1 %142, true, !mcsema_real_eip !51
  store i1 %143, i1* %PF, !mcsema_real_eip !51
  %_trans_icmp_ne_100 = icmp ne i64 %_trans_p2i_87, %RSP_val.86
  store i1 %_trans_icmp_ne_100, i1* %CF, !mcsema_real_eip !51
  store volatile i8* %_new_gep_86, i8** %_RSP_ptr_
  store i64 %130, i64* %XSP, !mcsema_real_eip !51
  %_allin_new_bt_102 = bitcast i8* %_new_gep_86 to i64*
  %_ptr_to_int_336 = ptrtoint i64* %_allin_new_bt_102 to i64
  %_offset_above_rbp_339 = sub i64 %_ptr_to_int_336, %_local_end_to_int_
  %_pot_address_in_parent_stack_340 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_339
  %_cond1_341 = icmp ugt i8* %_new_gep_86, %_local_stack_end_ptr_
  %_cond2_1_342 = icmp ugt i8* %_new_gep_86, %_parent_stack_end_ptr_
  %_cond2_2_343 = icmp ult i8* %_new_gep_86, %_parent_stack_start_ptr_
  %_cond2_344 = or i1 %_cond2_1_342, %_cond2_2_343
  %_cond4_345 = icmp ule i8* %_pot_address_in_parent_stack_340, %_parent_stack_end_ptr_
  %_cond1_n_cond2_346 = and i1 %_cond1_341, %_cond2_344
  %_cond1_n_cond2_cond3_347 = and i1 %_cond1_n_cond2_346, %_cond4_345
  br i1 %_cond1_n_cond2_cond3_347, label %144, label %145

; <label>:144:                                    ; preds = %124
  %_address_in_parent_stack_bt_349 = bitcast i8* %_pot_address_in_parent_stack_340 to i64*
  br label %145

; <label>:145:                                    ; preds = %124, %144
  %146 = phi i64* [ %_allin_new_bt_102, %124 ], [ %_address_in_parent_stack_bt_349, %144 ]
  %_new_load_350 = load i64, i64* %146
  %_new_int2ptr_ = inttoptr i64 %_new_load_350 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_350, i64* %XBP, !mcsema_real_eip !52
  %_new_gep_103 = getelementptr i8, i8* %_new_gep_86, i64 8
  %147 = add i64 %130, 8, !mcsema_real_eip !52
  store volatile i8* %_new_gep_103, i8** %_RSP_ptr_
  store i64 %147, i64* %XSP, !mcsema_real_eip !52
  %_new_gep_105 = getelementptr i8, i8* %_new_gep_103, i64 8
  %148 = add i64 %147, 8, !mcsema_real_eip !53
  %_allin_new_bt_106 = bitcast i8* %_new_gep_103 to i64*
  %_ptr_to_int_351 = ptrtoint i64* %_allin_new_bt_106 to i64
  %_offset_above_rbp_354 = sub i64 %_ptr_to_int_351, %_local_end_to_int_
  %_pot_address_in_parent_stack_355 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_354
  %_cond1_356 = icmp ugt i8* %_new_gep_103, %_local_stack_end_ptr_
  %_cond2_1_357 = icmp ugt i8* %_new_gep_103, %_parent_stack_end_ptr_
  %_cond2_2_358 = icmp ult i8* %_new_gep_103, %_parent_stack_start_ptr_
  %_cond2_359 = or i1 %_cond2_1_357, %_cond2_2_358
  %_cond4_360 = icmp ule i8* %_pot_address_in_parent_stack_355, %_parent_stack_end_ptr_
  %_cond1_n_cond2_361 = and i1 %_cond1_356, %_cond2_359
  %_cond1_n_cond2_cond3_362 = and i1 %_cond1_n_cond2_361, %_cond4_360
  br i1 %_cond1_n_cond2_cond3_362, label %149, label %150

; <label>:149:                                    ; preds = %145
  %_address_in_parent_stack_bt_364 = bitcast i8* %_pot_address_in_parent_stack_355 to i64*
  br label %150

; <label>:150:                                    ; preds = %145, %149
  %151 = phi i64* [ %_allin_new_bt_106, %145 ], [ %_address_in_parent_stack_bt_364, %149 ]
  %_new_load_365 = load i64, i64* %151
  store i64 %_new_load_365, i64* %XIP, !mcsema_real_eip !53
  store volatile i8* %_new_gep_105, i8** %_RSP_ptr_
  store i64 %148, i64* %XSP, !mcsema_real_eip !53
  ret void, !mcsema_real_eip !53
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
!6 = !{i64 11}
!7 = !{i64 14}
!8 = !{i64 17}
!9 = !{i64 20}
!10 = !{i64 24}
!11 = !{i64 28}
!12 = !{i64 32}
!13 = !{i64 36}
!14 = !{i64 38}
!15 = !{i64 41}
!16 = !{i64 44}
!17 = !{i64 45}
!18 = !{i64 48}
!19 = !{i64 49}
!20 = !{i64 52}
!21 = !{i64 56}
!22 = !{i64 63}
!23 = !{i64 70}
!24 = !{i64 74}
!25 = !{i64 80}
!26 = !{i64 84}
!27 = !{i64 92}
!28 = !{i64 95}
!29 = !{i64 98}
!30 = !{i64 101}
!31 = !{i64 106}
!32 = !{i64 111}
!33 = !{i64 115}
!34 = !{i64 117}
!35 = !{i64 119}
!36 = !{i64 121}
!37 = !{i64 125}
!38 = !{i64 127}
!39 = !{i64 130}
!40 = !{i64 133}
!41 = !{i64 137}
!42 = !{i64 141}
!43 = !{i64 146}
!44 = !{i64 156}
!45 = !{i64 159}
!46 = !{i64 162}
!47 = !{i64 164}
!48 = !{i64 169}
!49 = !{i64 172}
!50 = !{i64 175}
!51 = !{i64 177}
!52 = !{i64 181}
!53 = !{i64 182}
