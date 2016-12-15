; ModuleID = 'Output/test_30.clang.trans.bc'
source_filename = "Output/test_30.clang.bc"
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
module asm "  .globl fprintf;"
module asm "  .globl _fprintf;"
module asm "  .type _fprintf,@function"
module asm "_fprintf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq fprintf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _fprintf,0b-_fprintf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl print_it;"
module asm "  .type print_it,@function"
module asm "print_it:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size print_it,0b-print_it;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@stderr = external global [8 x i8]
@data_0x36 = internal constant %0 <{ [4 x i8] c"%s\0A\00" }>, align 64
@data_0x40 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"6\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  store i64 ptrtoint (%0* @data_0x36 to i64), i64* %XSI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !6
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, !mcsema_real_eip !6
  %14 = load i64, i64* bitcast ([8 x i8]* @stderr to i64*), !mcsema_real_eip !7
  store i64 %14, i64* %XDI, !mcsema_real_eip !7
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %15 = load i64, i64* %_allin_new_bt_18, !mcsema_real_eip !8
  store i64 %15, i64* %XDX, !mcsema_real_eip !8
  %AL.7 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 0, i8* %AL.7, !mcsema_real_eip !9
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !10
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !10
  %_new_gep_20 = getelementptr i8, i8* %_load_rsp_ptr_19, i64 -8
  %16 = sub i64 %RSP_val.11, 8, !mcsema_real_eip !10
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, !mcsema_real_eip !10
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %16, i64* %XSP, !mcsema_real_eip !10
  %17 = call x86_64_sysvcc i64 @_fprintf(i64 %14, i64 %RSI_val.9, i64 %15)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %17, i64* %XAX, !mcsema_real_eip !10
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  %ECX_val.13 = load i32, i32* %ECX.12, !mcsema_real_eip !11
  store i1 false, i1* %CF, !mcsema_real_eip !11
  store i1 false, i1* %OF, !mcsema_real_eip !11
  store i1 false, i1* %SF, !mcsema_real_eip !11
  store i1 true, i1* %ZF, !mcsema_real_eip !11
  store i1 true, i1* %PF, !mcsema_real_eip !11
  store i1 undef, i1* %AF, !mcsema_real_eip !11
  store i64 0, i64* %XCX, !mcsema_real_eip !11
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -12
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %EAX.17 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.18 = load i32, i32* %EAX.17, !mcsema_real_eip !12
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !12
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !12
  store i32 %EAX_val.18, i32* %19, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.12, !mcsema_real_eip !13
  %20 = zext i32 %ECX_val.20 to i64, !mcsema_real_eip !13
  store i64 %20, i64* %XAX, !mcsema_real_eip !13
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.21 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 16
  %21 = add i64 16, %RSP_val.21, !mcsema_real_eip !14
  %_trans_p2i_27 = ptrtoint i8* %_new_gep_26 to i64
  %_trans_p2i_28 = ptrtoint i8* %_load_rsp_ptr_25 to i64
  %_trans_xor_29 = xor i64 %_trans_p2i_27, %_trans_p2i_28
  %22 = xor i64 %_trans_xor_29, 16, !mcsema_real_eip !14
  %23 = and i64 %22, 16, !mcsema_real_eip !14
  %24 = icmp ne i64 %23, 0, !mcsema_real_eip !14
  store i1 %24, i1* %AF, !mcsema_real_eip !14
  %25 = lshr i64 %21, 63, !mcsema_real_eip !14
  %26 = trunc i64 %25 to i1, !mcsema_real_eip !14
  store i1 %26, i1* %SF, !mcsema_real_eip !14
  %_trans_icmp_eq_31 = icmp eq i64 %_trans_p2i_27, 0
  store i1 %_trans_icmp_eq_31, i1* %ZF, !mcsema_real_eip !14
  %_trans_xor_33 = xor i64 %_trans_p2i_28, 16
  %27 = xor i64 %_trans_xor_33, -1, !mcsema_real_eip !14
  %28 = and i64 %27, %_trans_xor_29, !mcsema_real_eip !14
  %29 = lshr i64 %28, 63, !mcsema_real_eip !14
  %30 = and i64 %29, 1, !mcsema_real_eip !14
  %31 = trunc i64 %30 to i1, !mcsema_real_eip !14
  store i1 %31, i1* %OF, !mcsema_real_eip !14
  %_trans_trunc_38 = trunc i64 %_trans_p2i_27 to i8
  %32 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_38), !mcsema_real_eip !14
  %33 = trunc i8 %32 to i1, !mcsema_real_eip !14
  %34 = xor i1 %33, true, !mcsema_real_eip !14
  store i1 %34, i1* %PF, !mcsema_real_eip !14
  %_trans_icmp_ne_40 = icmp ne i64 %_trans_p2i_27, %RSP_val.21
  store i1 %_trans_icmp_ne_40, i1* %CF, !mcsema_real_eip !14
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %21, i64* %XSP, !mcsema_real_eip !14
  %_allin_new_bt_42 = bitcast i8* %_new_gep_26 to i64*
  %35 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !15
  %_new_int2ptr_ = inttoptr i64 %35 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %35, i64* %XBP, !mcsema_real_eip !15
  %_new_gep_43 = getelementptr i8, i8* %_new_gep_26, i64 8
  %36 = add i64 %21, 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_
  store i64 %36, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_45 = getelementptr i8, i8* %_new_gep_43, i64 8
  %37 = add i64 %36, 8, !mcsema_real_eip !16
  %_allin_new_bt_46 = bitcast i8* %_new_gep_43 to i64*
  %38 = load i64, i64* %_allin_new_bt_46, !mcsema_real_eip !16
  store i64 %38, i64* %XIP, !mcsema_real_eip !16
  store volatile i8* %_new_gep_45, i8** %_RSP_ptr_
  store i64 %37, i64* %XSP, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
}

declare x86_64_sysvcc i64 @fprintf(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_fprintf(i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @print_it() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
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
  store i64 ptrtoint (%0* @data_0x36 to i64), i64* %XSI, !mcsema_real_eip !5
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !6
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, !mcsema_real_eip !6
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 ptrtoint ([8 x i8]* @stderr to i64), %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* getelementptr inbounds ([8 x i8], [8 x i8]* @stderr, i32 0, i32 0), %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* getelementptr inbounds ([8 x i8], [8 x i8]* @stderr, i32 0, i32 0), %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* getelementptr inbounds ([8 x i8], [8 x i8]* @stderr, i32 0, i32 0), %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %14, label %15

; <label>:14:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %15

; <label>:15:                                     ; preds = %block_0x0, %14
  %16 = phi i64* [ bitcast ([8 x i8]* @stderr to i64*), %block_0x0 ], [ %_address_in_parent_stack_bt_, %14 ]
  %_new_load_ = load i64, i64* %16
  store i64 %_new_load_, i64* %XDI, !mcsema_real_eip !7
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_18 to i64
  %_offset_above_rbp_48 = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_49 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_48
  %_cond1_50 = icmp ugt i8* %_new_gep_17, %_local_stack_end_ptr_
  %_cond2_1_51 = icmp ugt i8* %_new_gep_17, %_parent_stack_end_ptr_
  %_cond2_2_52 = icmp ult i8* %_new_gep_17, %_parent_stack_start_ptr_
  %_cond2_53 = or i1 %_cond2_1_51, %_cond2_2_52
  %_cond4_54 = icmp ule i8* %_pot_address_in_parent_stack_49, %_parent_stack_end_ptr_
  %_cond1_n_cond2_55 = and i1 %_cond1_50, %_cond2_53
  %_cond1_n_cond2_cond3_56 = and i1 %_cond1_n_cond2_55, %_cond4_54
  br i1 %_cond1_n_cond2_cond3_56, label %17, label %18

; <label>:17:                                     ; preds = %15
  %_address_in_parent_stack_bt_58 = bitcast i8* %_pot_address_in_parent_stack_49 to i64*
  br label %18

; <label>:18:                                     ; preds = %15, %17
  %19 = phi i64* [ %_allin_new_bt_18, %15 ], [ %_address_in_parent_stack_bt_58, %17 ]
  %_new_load_59 = load i64, i64* %19
  store i64 %_new_load_59, i64* %XDX, !mcsema_real_eip !8
  %AL.7 = bitcast i64* %XAX to i8*, !mcsema_real_eip !9
  store i8 0, i8* %AL.7, !mcsema_real_eip !9
  %RSI_val.9 = load i64, i64* %XSI, !mcsema_real_eip !10
  %_load_rsp_ptr_19 = load i8*, i8** %_RSP_ptr_
  %RSP_val.11 = load i64, i64* %XSP, !mcsema_real_eip !10
  %_new_gep_20 = getelementptr i8, i8* %_load_rsp_ptr_19, i64 -8
  %20 = sub i64 %RSP_val.11, 8, !mcsema_real_eip !10
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, !mcsema_real_eip !10
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_
  store i64 %20, i64* %XSP, !mcsema_real_eip !10
  %21 = call x86_64_sysvcc i64 @_fprintf(i64 %_new_load_, i64 %RSI_val.9, i64 %_new_load_59)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %21, i64* %XAX, !mcsema_real_eip !10
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  %ECX_val.13 = load i32, i32* %ECX.12, !mcsema_real_eip !11
  store i1 false, i1* %CF, !mcsema_real_eip !11
  store i1 false, i1* %OF, !mcsema_real_eip !11
  store i1 false, i1* %SF, !mcsema_real_eip !11
  store i1 true, i1* %ZF, !mcsema_real_eip !11
  store i1 true, i1* %PF, !mcsema_real_eip !11
  store i1 undef, i1* %AF, !mcsema_real_eip !11
  store i64 0, i64* %XCX, !mcsema_real_eip !11
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -12
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %EAX.17 = bitcast i64* %XAX to i32*, !mcsema_real_eip !12
  %EAX_val.18 = load i32, i32* %EAX.17, !mcsema_real_eip !12
  %22 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !12
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !12
  store i32 %EAX_val.18, i32* %23, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.12, !mcsema_real_eip !13
  %24 = zext i32 %ECX_val.20 to i64, !mcsema_real_eip !13
  store i64 %24, i64* %XAX, !mcsema_real_eip !13
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.21 = load i64, i64* %XSP, !mcsema_real_eip !14
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 16
  %25 = add i64 16, %RSP_val.21, !mcsema_real_eip !14
  %_trans_p2i_27 = ptrtoint i8* %_new_gep_26 to i64
  %_trans_p2i_28 = ptrtoint i8* %_load_rsp_ptr_25 to i64
  %_trans_xor_29 = xor i64 %_trans_p2i_27, %_trans_p2i_28
  %26 = xor i64 %_trans_xor_29, 16, !mcsema_real_eip !14
  %27 = and i64 %26, 16, !mcsema_real_eip !14
  %28 = icmp ne i64 %27, 0, !mcsema_real_eip !14
  store i1 %28, i1* %AF, !mcsema_real_eip !14
  %29 = lshr i64 %25, 63, !mcsema_real_eip !14
  %30 = trunc i64 %29 to i1, !mcsema_real_eip !14
  store i1 %30, i1* %SF, !mcsema_real_eip !14
  %_trans_icmp_eq_31 = icmp eq i64 %_trans_p2i_27, 0
  store i1 %_trans_icmp_eq_31, i1* %ZF, !mcsema_real_eip !14
  %_trans_xor_33 = xor i64 %_trans_p2i_28, 16
  %31 = xor i64 %_trans_xor_33, -1, !mcsema_real_eip !14
  %32 = and i64 %31, %_trans_xor_29, !mcsema_real_eip !14
  %33 = lshr i64 %32, 63, !mcsema_real_eip !14
  %34 = and i64 %33, 1, !mcsema_real_eip !14
  %35 = trunc i64 %34 to i1, !mcsema_real_eip !14
  store i1 %35, i1* %OF, !mcsema_real_eip !14
  %_trans_trunc_38 = trunc i64 %_trans_p2i_27 to i8
  %36 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_38), !mcsema_real_eip !14
  %37 = trunc i8 %36 to i1, !mcsema_real_eip !14
  %38 = xor i1 %37, true, !mcsema_real_eip !14
  store i1 %38, i1* %PF, !mcsema_real_eip !14
  %_trans_icmp_ne_40 = icmp ne i64 %_trans_p2i_27, %RSP_val.21
  store i1 %_trans_icmp_ne_40, i1* %CF, !mcsema_real_eip !14
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %25, i64* %XSP, !mcsema_real_eip !14
  %_allin_new_bt_42 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_60 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_63 = sub i64 %_ptr_to_int_60, %_local_end_to_int_
  %_pot_address_in_parent_stack_64 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_63
  %_cond1_65 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_66 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_67 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_68 = or i1 %_cond2_1_66, %_cond2_2_67
  %_cond4_69 = icmp ule i8* %_pot_address_in_parent_stack_64, %_parent_stack_end_ptr_
  %_cond1_n_cond2_70 = and i1 %_cond1_65, %_cond2_68
  %_cond1_n_cond2_cond3_71 = and i1 %_cond1_n_cond2_70, %_cond4_69
  br i1 %_cond1_n_cond2_cond3_71, label %39, label %40

; <label>:39:                                     ; preds = %18
  %_address_in_parent_stack_bt_73 = bitcast i8* %_pot_address_in_parent_stack_64 to i64*
  br label %40

; <label>:40:                                     ; preds = %18, %39
  %41 = phi i64* [ %_allin_new_bt_42, %18 ], [ %_address_in_parent_stack_bt_73, %39 ]
  %_new_load_74 = load i64, i64* %41
  %_new_int2ptr_ = inttoptr i64 %_new_load_74 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_74, i64* %XBP, !mcsema_real_eip !15
  %_new_gep_43 = getelementptr i8, i8* %_new_gep_26, i64 8
  %42 = add i64 %25, 8, !mcsema_real_eip !15
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_
  store i64 %42, i64* %XSP, !mcsema_real_eip !15
  %_new_gep_45 = getelementptr i8, i8* %_new_gep_43, i64 8
  %43 = add i64 %42, 8, !mcsema_real_eip !16
  %_allin_new_bt_46 = bitcast i8* %_new_gep_43 to i64*
  %_ptr_to_int_75 = ptrtoint i64* %_allin_new_bt_46 to i64
  %_offset_above_rbp_78 = sub i64 %_ptr_to_int_75, %_local_end_to_int_
  %_pot_address_in_parent_stack_79 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_78
  %_cond1_80 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_81 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_82 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_83 = or i1 %_cond2_1_81, %_cond2_2_82
  %_cond4_84 = icmp ule i8* %_pot_address_in_parent_stack_79, %_parent_stack_end_ptr_
  %_cond1_n_cond2_85 = and i1 %_cond1_80, %_cond2_83
  %_cond1_n_cond2_cond3_86 = and i1 %_cond1_n_cond2_85, %_cond4_84
  br i1 %_cond1_n_cond2_cond3_86, label %44, label %45

; <label>:44:                                     ; preds = %40
  %_address_in_parent_stack_bt_88 = bitcast i8* %_pot_address_in_parent_stack_79 to i64*
  br label %45

; <label>:45:                                     ; preds = %40, %44
  %46 = phi i64* [ %_allin_new_bt_46, %40 ], [ %_address_in_parent_stack_bt_88, %44 ]
  %_new_load_89 = load i64, i64* %46
  store i64 %_new_load_89, i64* %XIP, !mcsema_real_eip !16
  store volatile i8* %_new_gep_45, i8** %_RSP_ptr_
  store i64 %43, i64* %XSP, !mcsema_real_eip !16
  ret void, !mcsema_real_eip !16
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
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 30}
!9 = !{i64 34}
!10 = !{i64 36}
!11 = !{i64 41}
!12 = !{i64 43}
!13 = !{i64 46}
!14 = !{i64 48}
!15 = !{i64 52}
!16 = !{i64 53}
