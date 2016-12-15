; ModuleID = 'Output/test_23.clang.trans.bc'
source_filename = "Output/test_23.clang.bc"
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
module asm "  .globl read;"
module asm "  .globl _read;"
module asm "  .type _read,@function"
module asm "_read:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq read@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _read,0b-_read;"
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
module asm "  .globl exit;"
module asm "  .globl _exit;"
module asm "  .type _exit,@function"
module asm "_exit:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq exit@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _exit,0b-_exit;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_b0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_b0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [184 x i8] }>
%1 = type <{ [77 x i8] }>
%2 = type <{ [95 x i8] }>
%3 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x320 = internal constant %0 <{ [184 x i8] c"r\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\80\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00d\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00\8E\01\00\00\00\00\00\00V\01\00\00\00\00\00\00" }>, align 64
@data_0x3e0 = internal global %1 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64
@data_0x42d = internal constant %2 <{ [95 x i8] c"%c\00\0A\00Wrong command!(only w,s,a,d accepted!)\0A\00You lose!\0A\00You win!\0A\00Your solution:%s \0A\00You lose\0A\00" }>, align 64
@data_0x490 = internal constant %3 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\A5\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"k\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_b0(%RegState*) #1 {
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
  br label %block_0xb0, !mcsema_real_eip !2

block_0xb0:                                       ; preds = %entry
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
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  store i1 false, i1* %SF, !mcsema_real_eip !5
  store i1 true, i1* %ZF, !mcsema_real_eip !5
  store i1 true, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  store i64 0, i64* %XAX, !mcsema_real_eip !5
  store i64 28, i64* %XCX, !mcsema_real_eip !6
  %ECX.8 = bitcast i64* %XCX to i32*, !mcsema_real_eip !7
  %ECX_val.9 = load i32, i32* %ECX.8, !mcsema_real_eip !7
  %14 = zext i32 %ECX_val.9 to i64, !mcsema_real_eip !7
  store i64 %14, i64* %XDX, !mcsema_real_eip !7
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -64
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !8
  store i64 %15, i64* %R8, !mcsema_real_eip !8
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %R9, !mcsema_real_eip !9
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !10
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !10
  store i32 0, i32* %17, !mcsema_real_eip !10
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EDI.13 = bitcast i64* %XDI to i32*, !mcsema_real_eip !11
  %EDI_val.14 = load i32, i32* %EDI.13, !mcsema_real_eip !11
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !11
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !11
  store i32 %EDI_val.14, i32* %19, !mcsema_real_eip !11
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.16 = load i64, i64* %XSI, !mcsema_real_eip !12
  store i64 %RSI_val.16, i64* %_allin_new_bt_24, !mcsema_real_eip !12
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -36
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !13
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !13
  store i32 0, i32* %21, !mcsema_real_eip !13
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -20
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %22 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !14
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !14
  store i32 1, i32* %23, !mcsema_real_eip !14
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !15
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !15
  store i32 1, i32* %25, !mcsema_real_eip !15
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !16
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !16
  %28 = load i32, i32* %27, !mcsema_real_eip !16
  %29 = sext i32 %28 to i64, !mcsema_real_eip !16
  store i64 %29, i64* %XSI, !mcsema_real_eip !16
  %30 = sext i64 %29 to i128, !mcsema_real_eip !17
  %31 = mul i128 %30, 11, !mcsema_real_eip !17
  %32 = trunc i128 %31 to i64, !mcsema_real_eip !17
  %33 = sext i64 %32 to i128, !mcsema_real_eip !17
  %34 = icmp ne i128 %33, %31, !mcsema_real_eip !17
  %35 = icmp slt i64 %32, 0, !mcsema_real_eip !17
  store i1 %35, i1* %SF, !mcsema_real_eip !17
  store i1 %34, i1* %OF, !mcsema_real_eip !17
  store i1 %34, i1* %CF, !mcsema_real_eip !17
  store i64 %32, i64* %XSI, !mcsema_real_eip !17
  %R9_val.22 = load i64, i64* %R9, !mcsema_real_eip !18
  %36 = add i64 %32, %R9_val.22, !mcsema_real_eip !18
  %37 = xor i64 %36, %R9_val.22, !mcsema_real_eip !18
  %38 = xor i64 %37, %32, !mcsema_real_eip !18
  %39 = and i64 %38, 16, !mcsema_real_eip !18
  %40 = icmp ne i64 %39, 0, !mcsema_real_eip !18
  store i1 %40, i1* %AF, !mcsema_real_eip !18
  %41 = lshr i64 %36, 63, !mcsema_real_eip !18
  %42 = trunc i64 %41 to i1, !mcsema_real_eip !18
  store i1 %42, i1* %SF, !mcsema_real_eip !18
  %43 = icmp eq i64 %36, 0, !mcsema_real_eip !18
  store i1 %43, i1* %ZF, !mcsema_real_eip !18
  %44 = xor i64 %R9_val.22, %32, !mcsema_real_eip !18
  %45 = xor i64 %44, -1, !mcsema_real_eip !18
  %46 = and i64 %45, %37, !mcsema_real_eip !18
  %47 = lshr i64 %46, 63, !mcsema_real_eip !18
  %48 = and i64 %47, 1, !mcsema_real_eip !18
  %49 = trunc i64 %48 to i1, !mcsema_real_eip !18
  store i1 %49, i1* %OF, !mcsema_real_eip !18
  %50 = trunc i64 %36 to i8, !mcsema_real_eip !18
  %51 = call i8 @llvm.ctpop.i8(i8 %50), !mcsema_real_eip !18
  %52 = trunc i8 %51 to i1, !mcsema_real_eip !18
  %53 = xor i1 %52, true, !mcsema_real_eip !18
  store i1 %53, i1* %PF, !mcsema_real_eip !18
  %54 = icmp ult i64 %36, %R9_val.22, !mcsema_real_eip !18
  store i1 %54, i1* %CF, !mcsema_real_eip !18
  store i64 %36, i64* %R9, !mcsema_real_eip !18
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -20
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !19
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !19
  %57 = load i32, i32* %56, !mcsema_real_eip !19
  %58 = sext i32 %57 to i64, !mcsema_real_eip !19
  store i64 %58, i64* %XSI, !mcsema_real_eip !19
  %59 = add i64 %36, %58, !mcsema_real_eip !20
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !20
  %61 = inttoptr i64 %59 to i8*, !mcsema_real_eip !20
  store i8 88, i8* %61, !mcsema_real_eip !20
  %EAX_val.28 = load i32, i32* %EAX.4, !mcsema_real_eip !21
  %62 = zext i32 %EAX_val.28 to i64, !mcsema_real_eip !21
  store i64 %62, i64* %XDI, !mcsema_real_eip !21
  %R8_val.29 = load i64, i64* %R8, !mcsema_real_eip !22
  store i64 %R8_val.29, i64* %XSI, !mcsema_real_eip !22
  %RDX_val.32 = load i64, i64* %XDX, !mcsema_real_eip !23
  %_load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !23
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_40, i64 -8
  %63 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !23
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_42, !mcsema_real_eip !23
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %63, i64* %XSP, !mcsema_real_eip !23
  %64 = call x86_64_sysvcc i64 @_read(i64 %62, i64 %R8_val.29, i64 %RDX_val.32)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %64, i64* %XAX, !mcsema_real_eip !23
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -72
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %64, i64* %_allin_new_bt_45, !mcsema_real_eip !24
  br label %block_0x114, !mcsema_real_eip !25

block_0x114:                                      ; preds = %block_0x2c7, %block_0xb0
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -36
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %65 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !25
  %66 = inttoptr i64 %65 to i32*, !mcsema_real_eip !25
  %67 = load i32, i32* %66, !mcsema_real_eip !25
  %68 = sub i32 %67, 28, !mcsema_real_eip !25
  %69 = xor i32 %68, %67, !mcsema_real_eip !25
  %70 = xor i32 %69, 28, !mcsema_real_eip !25
  %71 = and i32 %70, 16, !mcsema_real_eip !25
  %72 = icmp ne i32 %71, 0, !mcsema_real_eip !25
  store i1 %72, i1* %AF, !mcsema_real_eip !25
  %73 = trunc i32 %68 to i8, !mcsema_real_eip !25
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !25
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !25
  %76 = xor i1 %75, true, !mcsema_real_eip !25
  store i1 %76, i1* %PF, !mcsema_real_eip !25
  %77 = icmp eq i32 %68, 0, !mcsema_real_eip !25
  store i1 %77, i1* %ZF, !mcsema_real_eip !25
  %78 = lshr i32 %68, 31, !mcsema_real_eip !25
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !25
  store i1 %79, i1* %SF, !mcsema_real_eip !25
  %80 = icmp ult i32 %67, 28, !mcsema_real_eip !25
  store i1 %80, i1* %CF, !mcsema_real_eip !25
  %81 = xor i32 %67, 28, !mcsema_real_eip !25
  %82 = and i32 %81, %69, !mcsema_real_eip !25
  %83 = lshr i32 %82, 31, !mcsema_real_eip !25
  %84 = trunc i32 %83 to i1, !mcsema_real_eip !25
  store i1 %84, i1* %OF, !mcsema_real_eip !25
  %85 = icmp eq i1 %79, %84, !mcsema_real_eip !26
  br i1 %85, label %block_0x2f7, label %block_0x11e, !mcsema_real_eip !26

block_0x11e:                                      ; preds = %block_0x114
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -20
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %86 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !27
  %87 = inttoptr i64 %86 to i32*, !mcsema_real_eip !27
  %88 = load i32, i32* %87, !mcsema_real_eip !27
  %89 = zext i32 %88 to i64, !mcsema_real_eip !27
  store i64 %89, i64* %XAX, !mcsema_real_eip !27
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -28
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %EAX_val.48 = load i32, i32* %EAX.4, !mcsema_real_eip !28
  %90 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !28
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.48, i32* %91, !mcsema_real_eip !28
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -24
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %92 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !29
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !29
  %94 = load i32, i32* %93, !mcsema_real_eip !29
  %95 = zext i32 %94 to i64, !mcsema_real_eip !29
  store i64 %95, i64* %XAX, !mcsema_real_eip !29
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -32
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %EAX_val.52 = load i32, i32* %EAX.4, !mcsema_real_eip !30
  %96 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !30
  %97 = inttoptr i64 %96 to i32*, !mcsema_real_eip !30
  store i32 %EAX_val.52, i32* %97, !mcsema_real_eip !30
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -36
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %98 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !31
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !31
  %100 = load i32, i32* %99, !mcsema_real_eip !31
  %101 = sext i32 %100 to i64, !mcsema_real_eip !31
  store i64 %101, i64* %XCX, !mcsema_real_eip !31
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -64
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_65, i64 %101
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %102 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !32
  %103 = inttoptr i64 %102 to i8*, !mcsema_real_eip !32
  %104 = load i8, i8* %103, !mcsema_real_eip !32
  %105 = sext i8 %104 to i32, !mcsema_real_eip !32
  %106 = zext i32 %105 to i64, !mcsema_real_eip !32
  store i64 %106, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.57 = load i32, i32* %EAX.4, !mcsema_real_eip !33
  %107 = add i32 -97, %EAX_val.57, !mcsema_real_eip !33
  %108 = xor i32 %107, %EAX_val.57, !mcsema_real_eip !33
  %109 = xor i32 %108, -97, !mcsema_real_eip !33
  %110 = and i32 %109, 16, !mcsema_real_eip !33
  %111 = icmp ne i32 %110, 0, !mcsema_real_eip !33
  store i1 %111, i1* %AF, !mcsema_real_eip !33
  %112 = lshr i32 %107, 31, !mcsema_real_eip !33
  %113 = trunc i32 %112 to i1, !mcsema_real_eip !33
  store i1 %113, i1* %SF, !mcsema_real_eip !33
  %114 = icmp eq i32 %107, 0, !mcsema_real_eip !33
  store i1 %114, i1* %ZF, !mcsema_real_eip !33
  %115 = xor i32 %EAX_val.57, -97, !mcsema_real_eip !33
  %116 = xor i32 %115, -1, !mcsema_real_eip !33
  %117 = and i32 %116, %108, !mcsema_real_eip !33
  %118 = lshr i32 %117, 31, !mcsema_real_eip !33
  %119 = and i32 %118, 1, !mcsema_real_eip !33
  %120 = trunc i32 %119 to i1, !mcsema_real_eip !33
  store i1 %120, i1* %OF, !mcsema_real_eip !33
  %121 = trunc i32 %107 to i8, !mcsema_real_eip !33
  %122 = call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !33
  %123 = trunc i8 %122 to i1, !mcsema_real_eip !33
  %124 = xor i1 %123, true, !mcsema_real_eip !33
  store i1 %124, i1* %PF, !mcsema_real_eip !33
  %125 = icmp ult i32 %107, %EAX_val.57, !mcsema_real_eip !33
  store i1 %125, i1* %CF, !mcsema_real_eip !33
  %126 = zext i32 %107 to i64, !mcsema_real_eip !33
  store i64 %126, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.59 = load i32, i32* %EAX.4, !mcsema_real_eip !34
  %127 = zext i32 %EAX_val.59 to i64, !mcsema_real_eip !34
  store i64 %127, i64* %XCX, !mcsema_real_eip !34
  %128 = sub i32 %EAX_val.59, 22, !mcsema_real_eip !35
  %129 = xor i32 %128, %EAX_val.59, !mcsema_real_eip !35
  %130 = xor i32 %129, 22, !mcsema_real_eip !35
  %131 = and i32 %130, 16, !mcsema_real_eip !35
  %132 = icmp ne i32 %131, 0, !mcsema_real_eip !35
  store i1 %132, i1* %AF, !mcsema_real_eip !35
  %133 = trunc i32 %128 to i8, !mcsema_real_eip !35
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !35
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !35
  %136 = xor i1 %135, true, !mcsema_real_eip !35
  store i1 %136, i1* %PF, !mcsema_real_eip !35
  %137 = icmp eq i32 %128, 0, !mcsema_real_eip !35
  store i1 %137, i1* %ZF, !mcsema_real_eip !35
  %138 = lshr i32 %128, 31, !mcsema_real_eip !35
  %139 = trunc i32 %138 to i1, !mcsema_real_eip !35
  store i1 %139, i1* %SF, !mcsema_real_eip !35
  %140 = icmp ult i32 %EAX_val.59, 22, !mcsema_real_eip !35
  store i1 %140, i1* %CF, !mcsema_real_eip !35
  %141 = xor i32 %EAX_val.59, 22, !mcsema_real_eip !35
  %142 = and i32 %141, %129, !mcsema_real_eip !35
  %143 = lshr i32 %142, 31, !mcsema_real_eip !35
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !35
  store i1 %144, i1* %OF, !mcsema_real_eip !35
  %145 = zext i32 %128 to i64, !mcsema_real_eip !35
  store i64 %145, i64* %XAX, !mcsema_real_eip !35
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -80
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %127, i64* %_allin_new_bt_70, !mcsema_real_eip !36
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -84
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %EAX_val.66 = load i32, i32* %EAX.4, !mcsema_real_eip !37
  %146 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !37
  %147 = inttoptr i64 %146 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.66, i32* %147, !mcsema_real_eip !37
  %148 = load i1, i1* %ZF, !mcsema_real_eip !38
  %149 = icmp eq i1 %148, false, !mcsema_real_eip !38
  %150 = load i1, i1* %CF, !mcsema_real_eip !38
  %151 = icmp eq i1 %150, false, !mcsema_real_eip !38
  %152 = and i1 %151, %149, !mcsema_real_eip !38
  br i1 %152, label %block_0x18e, label %block_0x148, !mcsema_real_eip !38

block_0x2f7:                                      ; preds = %block_0x114
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !39
  %AL.37 = bitcast i64* %XAX to i8*, !mcsema_real_eip !40
  store i8 0, i8* %AL.37, !mcsema_real_eip !40
  %RSI_val.39 = load i64, i64* %XSI, !mcsema_real_eip !41
  %_load_rsp_ptr_74 = load i8*, i8** %_RSP_ptr_
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !41
  %_new_gep_75 = getelementptr i8, i8* %_load_rsp_ptr_74, i64 -8
  %153 = sub i64 %RSP_val.40, 8, !mcsema_real_eip !41
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_76, !mcsema_real_eip !41
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_
  store i64 %153, i64* %XSP, !mcsema_real_eip !41
  %154 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.39)
  %_rsp_fix_243 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_244 = getelementptr i8, i8* %_rsp_fix_243, i64 8
  store i8* %_gep_fix_244, i8** %_RSP_ptr_
  store i64 %154, i64* %XAX, !mcsema_real_eip !41
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -4
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %155 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !42
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !42
  store i32 1, i32* %156, !mcsema_real_eip !42
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -108
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %EAX_val.44 = load i32, i32* %EAX.4, !mcsema_real_eip !43
  %157 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !43
  %158 = inttoptr i64 %157 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.44, i32* %158, !mcsema_real_eip !43
  br label %block_0x312, !mcsema_real_eip !27

block_0x312:                                      ; preds = %block_0x2a7, %block_0x2f7
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -4
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %159 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !44
  %160 = inttoptr i64 %159 to i32*, !mcsema_real_eip !44
  %161 = load i32, i32* %160, !mcsema_real_eip !44
  %162 = zext i32 %161 to i64, !mcsema_real_eip !44
  store i64 %162, i64* %XAX, !mcsema_real_eip !44
  %_load_rsp_ptr_86 = load i8*, i8** %_RSP_ptr_
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !45
  %_new_gep_87 = getelementptr i8, i8* %_load_rsp_ptr_86, i64 112
  %163 = add i64 112, %RSP_val.68, !mcsema_real_eip !45
  %_trans_p2i_88 = ptrtoint i8* %_new_gep_87 to i64
  %_trans_p2i_89 = ptrtoint i8* %_load_rsp_ptr_86 to i64
  %_trans_xor_90 = xor i64 %_trans_p2i_88, %_trans_p2i_89
  %164 = xor i64 %_trans_xor_90, 112, !mcsema_real_eip !45
  %165 = and i64 %164, 16, !mcsema_real_eip !45
  %166 = icmp ne i64 %165, 0, !mcsema_real_eip !45
  store i1 %166, i1* %AF, !mcsema_real_eip !45
  %167 = lshr i64 %163, 63, !mcsema_real_eip !45
  %168 = trunc i64 %167 to i1, !mcsema_real_eip !45
  store i1 %168, i1* %SF, !mcsema_real_eip !45
  %_trans_icmp_eq_92 = icmp eq i64 %_trans_p2i_88, 0
  store i1 %_trans_icmp_eq_92, i1* %ZF, !mcsema_real_eip !45
  %_trans_xor_94 = xor i64 %_trans_p2i_89, 112
  %169 = xor i64 %_trans_xor_94, -1, !mcsema_real_eip !45
  %170 = and i64 %169, %_trans_xor_90, !mcsema_real_eip !45
  %171 = lshr i64 %170, 63, !mcsema_real_eip !45
  %172 = and i64 %171, 1, !mcsema_real_eip !45
  %173 = trunc i64 %172 to i1, !mcsema_real_eip !45
  store i1 %173, i1* %OF, !mcsema_real_eip !45
  %_trans_trunc_99 = trunc i64 %_trans_p2i_88 to i8
  %174 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_99), !mcsema_real_eip !45
  %175 = trunc i8 %174 to i1, !mcsema_real_eip !45
  %176 = xor i1 %175, true, !mcsema_real_eip !45
  store i1 %176, i1* %PF, !mcsema_real_eip !45
  %_trans_icmp_ne_101 = icmp ne i64 %_trans_p2i_88, %RSP_val.68
  store i1 %_trans_icmp_ne_101, i1* %CF, !mcsema_real_eip !45
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_
  store i64 %163, i64* %XSP, !mcsema_real_eip !45
  %_allin_new_bt_103 = bitcast i8* %_new_gep_87 to i64*
  %177 = load i64, i64* %_allin_new_bt_103, !mcsema_real_eip !46
  %_new_int2ptr_ = inttoptr i64 %177 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %177, i64* %XBP, !mcsema_real_eip !46
  %_new_gep_104 = getelementptr i8, i8* %_new_gep_87, i64 8
  %178 = add i64 %163, 8, !mcsema_real_eip !46
  store volatile i8* %_new_gep_104, i8** %_RSP_ptr_
  store i64 %178, i64* %XSP, !mcsema_real_eip !46
  %_new_gep_106 = getelementptr i8, i8* %_new_gep_104, i64 8
  %179 = add i64 %178, 8, !mcsema_real_eip !47
  %_allin_new_bt_107 = bitcast i8* %_new_gep_104 to i64*
  %180 = load i64, i64* %_allin_new_bt_107, !mcsema_real_eip !47
  store i64 %180, i64* %XIP, !mcsema_real_eip !47
  store volatile i8* %_new_gep_106, i8** %_RSP_ptr_
  store i64 %179, i64* %XSP, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47

block_0x148:                                      ; preds = %block_0x11e
  %_load_rbp_ptr_108 = load i8*, i8** %_RBP_ptr_
  %_new_gep_109 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -80
  %_allin_new_bt_110 = bitcast i8* %_new_gep_109 to i64*
  %181 = load i64, i64* %_allin_new_bt_110, !mcsema_real_eip !48
  store i64 %181, i64* %XAX, !mcsema_real_eip !48
  %182 = mul i64 %181, 8, !mcsema_real_eip !49
  %183 = add i64 ptrtoint (%0* @data_0x320 to i64), %182, !mcsema_real_eip !49
  %184 = inttoptr i64 %183 to i64*, !mcsema_real_eip !49
  %185 = load i64, i64* %184, !mcsema_real_eip !49
  store i64 %185, i64* %XCX, !mcsema_real_eip !49
  switch i64 %185, label %347 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !50

block_0x18e:                                      ; preds = %block_0x148, %block_0x11e
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, !mcsema_real_eip !51
  %AL.71 = bitcast i64* %XAX to i8*, !mcsema_real_eip !52
  store i8 0, i8* %AL.71, !mcsema_real_eip !52
  %RSI_val.73 = load i64, i64* %XSI, !mcsema_real_eip !53
  %_load_rsp_ptr_111 = load i8*, i8** %_RSP_ptr_
  %RSP_val.74 = load i64, i64* %XSP, !mcsema_real_eip !53
  %_new_gep_112 = getelementptr i8, i8* %_load_rsp_ptr_111, i64 -8
  %186 = sub i64 %RSP_val.74, 8, !mcsema_real_eip !53
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_113, !mcsema_real_eip !53
  store volatile i8* %_new_gep_112, i8** %_RSP_ptr_
  store i64 %186, i64* %XSP, !mcsema_real_eip !53
  %187 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64 %RSI_val.73)
  %_rsp_fix_245 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_246 = getelementptr i8, i8* %_rsp_fix_245, i64 8
  store i8* %_gep_fix_246, i8** %_RSP_ptr_
  store i64 %187, i64* %XAX, !mcsema_real_eip !53
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, !mcsema_real_eip !54
  %_load_rbp_ptr_114 = load i8*, i8** %_RBP_ptr_
  %_new_gep_115 = getelementptr i8, i8* %_load_rbp_ptr_114, i64 -88
  %_allin_new_bt_116 = bitcast i8* %_new_gep_115 to i64*
  %EAX_val.77 = load i32, i32* %EAX.4, !mcsema_real_eip !55
  %188 = ptrtoint i64* %_allin_new_bt_116 to i64, !mcsema_real_eip !55
  %189 = inttoptr i64 %188 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.77, i32* %189, !mcsema_real_eip !55
  store i8 0, i8* %AL.71, !mcsema_real_eip !56
  %RDI_val.79 = load i64, i64* %XDI, !mcsema_real_eip !57
  %RSI_val.80 = load i64, i64* %XSI, !mcsema_real_eip !57
  %_load_rsp_ptr_117 = load i8*, i8** %_RSP_ptr_
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !57
  %_new_gep_118 = getelementptr i8, i8* %_load_rsp_ptr_117, i64 -8
  %190 = sub i64 %RSP_val.81, 8, !mcsema_real_eip !57
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_119, !mcsema_real_eip !57
  store volatile i8* %_new_gep_118, i8** %_RSP_ptr_
  store i64 %190, i64* %XSP, !mcsema_real_eip !57
  %191 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.79, i64 %RSI_val.80)
  %_rsp_fix_247 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_248 = getelementptr i8, i8* %_rsp_fix_247, i64 8
  store i8* %_gep_fix_248, i8** %_RSP_ptr_
  store i64 %191, i64* %XAX, !mcsema_real_eip !57
  store i64 4294967295, i64* %XDI, !mcsema_real_eip !58
  %_load_rbp_ptr_120 = load i8*, i8** %_RBP_ptr_
  %_new_gep_121 = getelementptr i8, i8* %_load_rbp_ptr_120, i64 -92
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  %EAX_val.84 = load i32, i32* %EAX.4, !mcsema_real_eip !59
  %192 = ptrtoint i64* %_allin_new_bt_122 to i64, !mcsema_real_eip !59
  %193 = inttoptr i64 %192 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.84, i32* %193, !mcsema_real_eip !59
  %RDI_val.85 = load i64, i64* %XDI, !mcsema_real_eip !60
  %_load_rsp_ptr_123 = load i8*, i8** %_RSP_ptr_
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !60
  %_new_gep_124 = getelementptr i8, i8* %_load_rsp_ptr_123, i64 -8
  %194 = sub i64 %RSP_val.86, 8, !mcsema_real_eip !60
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_125, !mcsema_real_eip !60
  store volatile i8* %_new_gep_124, i8** %_RSP_ptr_
  store i64 %194, i64* %XSP, !mcsema_real_eip !60
  %195 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.85)
  %_rsp_fix_249 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_250 = getelementptr i8, i8* %_rsp_fix_249, i64 8
  store i8* %_gep_fix_250, i8** %_RSP_ptr_
  store i64 %195, i64* %XAX, !mcsema_real_eip !60
  br label %block_0x1c0, !mcsema_real_eip !48

block_0x1c0:                                      ; preds = %block_0x180, %block_0x172, %block_0x164, %block_0x156, %block_0x18e
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !61
  %_load_rbp_ptr_126 = load i8*, i8** %_RBP_ptr_
  %_new_gep_127 = getelementptr i8, i8* %_load_rbp_ptr_126, i64 -24
  %_allin_new_bt_128 = bitcast i8* %_new_gep_127 to i64*
  %196 = ptrtoint i64* %_allin_new_bt_128 to i64, !mcsema_real_eip !62
  %197 = inttoptr i64 %196 to i32*, !mcsema_real_eip !62
  %198 = load i32, i32* %197, !mcsema_real_eip !62
  %199 = sext i32 %198 to i64, !mcsema_real_eip !62
  store i64 %199, i64* %XCX, !mcsema_real_eip !62
  %200 = sext i64 %199 to i128, !mcsema_real_eip !63
  %201 = mul i128 %200, 11, !mcsema_real_eip !63
  %202 = trunc i128 %201 to i64, !mcsema_real_eip !63
  %203 = sext i64 %202 to i128, !mcsema_real_eip !63
  %204 = icmp ne i128 %203, %201, !mcsema_real_eip !63
  %205 = icmp slt i64 %202, 0, !mcsema_real_eip !63
  store i1 %205, i1* %SF, !mcsema_real_eip !63
  store i1 %204, i1* %OF, !mcsema_real_eip !63
  store i1 %204, i1* %CF, !mcsema_real_eip !63
  store i64 %202, i64* %XCX, !mcsema_real_eip !63
  %206 = add i64 %202, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !64
  %207 = xor i64 %206, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !64
  %208 = xor i64 %207, %202, !mcsema_real_eip !64
  %209 = and i64 %208, 16, !mcsema_real_eip !64
  %210 = icmp ne i64 %209, 0, !mcsema_real_eip !64
  store i1 %210, i1* %AF, !mcsema_real_eip !64
  %211 = lshr i64 %206, 63, !mcsema_real_eip !64
  %212 = trunc i64 %211 to i1, !mcsema_real_eip !64
  store i1 %212, i1* %SF, !mcsema_real_eip !64
  %213 = icmp eq i64 %206, 0, !mcsema_real_eip !64
  store i1 %213, i1* %ZF, !mcsema_real_eip !64
  %214 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %202, !mcsema_real_eip !64
  %215 = xor i64 %214, -1, !mcsema_real_eip !64
  %216 = and i64 %215, %207, !mcsema_real_eip !64
  %217 = lshr i64 %216, 63, !mcsema_real_eip !64
  %218 = and i64 %217, 1, !mcsema_real_eip !64
  %219 = trunc i64 %218 to i1, !mcsema_real_eip !64
  store i1 %219, i1* %OF, !mcsema_real_eip !64
  %220 = trunc i64 %206 to i8, !mcsema_real_eip !64
  %221 = call i8 @llvm.ctpop.i8(i8 %220), !mcsema_real_eip !64
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !64
  %223 = xor i1 %222, true, !mcsema_real_eip !64
  store i1 %223, i1* %PF, !mcsema_real_eip !64
  %224 = icmp ult i64 %206, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !64
  store i1 %224, i1* %CF, !mcsema_real_eip !64
  store i64 %206, i64* %XAX, !mcsema_real_eip !64
  %_new_gep_130 = getelementptr i8, i8* %_load_rbp_ptr_126, i64 -20
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %225 = ptrtoint i64* %_allin_new_bt_131 to i64, !mcsema_real_eip !65
  %226 = inttoptr i64 %225 to i32*, !mcsema_real_eip !65
  %227 = load i32, i32* %226, !mcsema_real_eip !65
  %228 = sext i32 %227 to i64, !mcsema_real_eip !65
  store i64 %228, i64* %XCX, !mcsema_real_eip !65
  %229 = add i64 %206, %228, !mcsema_real_eip !66
  %230 = inttoptr i64 %229 to i64*, !mcsema_real_eip !66
  %231 = inttoptr i64 %229 to i8*, !mcsema_real_eip !66
  %232 = load i8, i8* %231, !mcsema_real_eip !66
  %233 = sext i8 %232 to i32, !mcsema_real_eip !66
  %234 = zext i32 %233 to i64, !mcsema_real_eip !66
  store i64 %234, i64* %XDX, !mcsema_real_eip !66
  %EDX.97 = bitcast i64* %XDX to i32*, !mcsema_real_eip !67
  %EDX_val.98 = load i32, i32* %EDX.97, !mcsema_real_eip !67
  %235 = sub i32 %EDX_val.98, 35, !mcsema_real_eip !67
  %236 = xor i32 %235, %EDX_val.98, !mcsema_real_eip !67
  %237 = xor i32 %236, 35, !mcsema_real_eip !67
  %238 = and i32 %237, 16, !mcsema_real_eip !67
  %239 = icmp ne i32 %238, 0, !mcsema_real_eip !67
  store i1 %239, i1* %AF, !mcsema_real_eip !67
  %240 = trunc i32 %235 to i8, !mcsema_real_eip !67
  %241 = call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !67
  %242 = trunc i8 %241 to i1, !mcsema_real_eip !67
  %243 = xor i1 %242, true, !mcsema_real_eip !67
  store i1 %243, i1* %PF, !mcsema_real_eip !67
  %244 = icmp eq i32 %235, 0, !mcsema_real_eip !67
  store i1 %244, i1* %ZF, !mcsema_real_eip !67
  %245 = lshr i32 %235, 31, !mcsema_real_eip !67
  %246 = trunc i32 %245 to i1, !mcsema_real_eip !67
  store i1 %246, i1* %SF, !mcsema_real_eip !67
  %247 = icmp ult i32 %EDX_val.98, 35, !mcsema_real_eip !67
  store i1 %247, i1* %CF, !mcsema_real_eip !67
  %248 = xor i32 %EDX_val.98, 35, !mcsema_real_eip !67
  %249 = and i32 %248, %236, !mcsema_real_eip !67
  %250 = lshr i32 %249, 31, !mcsema_real_eip !67
  %251 = trunc i32 %250 to i1, !mcsema_real_eip !67
  store i1 %251, i1* %OF, !mcsema_real_eip !67
  %252 = icmp eq i1 %244, false, !mcsema_real_eip !68
  br i1 %252, label %block_0x219, label %block_0x1e6, !mcsema_real_eip !68

block_0x156:                                      ; preds = %block_0x148
  %_new_gep_133 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -24
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  %253 = ptrtoint i64* %_allin_new_bt_134 to i64, !mcsema_real_eip !69
  %254 = inttoptr i64 %253 to i32*, !mcsema_real_eip !69
  %255 = load i32, i32* %254, !mcsema_real_eip !69
  %256 = zext i32 %255 to i64, !mcsema_real_eip !69
  store i64 %256, i64* %XAX, !mcsema_real_eip !69
  %EAX_val.119 = load i32, i32* %EAX.4, !mcsema_real_eip !70
  %257 = add i32 -1, %EAX_val.119, !mcsema_real_eip !70
  %258 = xor i32 %257, %EAX_val.119, !mcsema_real_eip !70
  %259 = xor i32 %258, -1, !mcsema_real_eip !70
  %260 = and i32 %259, 16, !mcsema_real_eip !70
  %261 = icmp ne i32 %260, 0, !mcsema_real_eip !70
  store i1 %261, i1* %AF, !mcsema_real_eip !70
  %262 = lshr i32 %257, 31, !mcsema_real_eip !70
  %263 = trunc i32 %262 to i1, !mcsema_real_eip !70
  store i1 %263, i1* %SF, !mcsema_real_eip !70
  %264 = icmp eq i32 %257, 0, !mcsema_real_eip !70
  store i1 %264, i1* %ZF, !mcsema_real_eip !70
  %265 = xor i32 %EAX_val.119, -1, !mcsema_real_eip !70
  %266 = and i32 %EAX_val.119, %258, !mcsema_real_eip !70
  %267 = lshr i32 %266, 31, !mcsema_real_eip !70
  %268 = and i32 %267, 1, !mcsema_real_eip !70
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !70
  store i1 %269, i1* %OF, !mcsema_real_eip !70
  %270 = trunc i32 %257 to i8, !mcsema_real_eip !70
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !70
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !70
  %273 = xor i1 %272, true, !mcsema_real_eip !70
  store i1 %273, i1* %PF, !mcsema_real_eip !70
  %274 = icmp ult i32 %257, %EAX_val.119, !mcsema_real_eip !70
  store i1 %274, i1* %CF, !mcsema_real_eip !70
  %275 = zext i32 %257 to i64, !mcsema_real_eip !70
  store i64 %275, i64* %XAX, !mcsema_real_eip !70
  %EAX_val.122 = load i32, i32* %EAX.4, !mcsema_real_eip !71
  store i32 %EAX_val.122, i32* %254, !mcsema_real_eip !71
  br label %block_0x1c0, !mcsema_real_eip !72

block_0x164:                                      ; preds = %block_0x148
  %_new_gep_139 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -24
  %_allin_new_bt_140 = bitcast i8* %_new_gep_139 to i64*
  %276 = ptrtoint i64* %_allin_new_bt_140 to i64, !mcsema_real_eip !73
  %277 = inttoptr i64 %276 to i32*, !mcsema_real_eip !73
  %278 = load i32, i32* %277, !mcsema_real_eip !73
  %279 = zext i32 %278 to i64, !mcsema_real_eip !73
  store i64 %279, i64* %XAX, !mcsema_real_eip !73
  %EAX_val.113 = load i32, i32* %EAX.4, !mcsema_real_eip !74
  %280 = add i32 1, %EAX_val.113, !mcsema_real_eip !74
  %281 = xor i32 %280, %EAX_val.113, !mcsema_real_eip !74
  %282 = xor i32 %281, 1, !mcsema_real_eip !74
  %283 = and i32 %282, 16, !mcsema_real_eip !74
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !74
  store i1 %284, i1* %AF, !mcsema_real_eip !74
  %285 = lshr i32 %280, 31, !mcsema_real_eip !74
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !74
  store i1 %286, i1* %SF, !mcsema_real_eip !74
  %287 = icmp eq i32 %280, 0, !mcsema_real_eip !74
  store i1 %287, i1* %ZF, !mcsema_real_eip !74
  %288 = xor i32 %EAX_val.113, 1, !mcsema_real_eip !74
  %289 = xor i32 %288, -1, !mcsema_real_eip !74
  %290 = and i32 %289, %281, !mcsema_real_eip !74
  %291 = lshr i32 %290, 31, !mcsema_real_eip !74
  %292 = and i32 %291, 1, !mcsema_real_eip !74
  %293 = trunc i32 %292 to i1, !mcsema_real_eip !74
  store i1 %293, i1* %OF, !mcsema_real_eip !74
  %294 = trunc i32 %280 to i8, !mcsema_real_eip !74
  %295 = call i8 @llvm.ctpop.i8(i8 %294), !mcsema_real_eip !74
  %296 = trunc i8 %295 to i1, !mcsema_real_eip !74
  %297 = xor i1 %296, true, !mcsema_real_eip !74
  store i1 %297, i1* %PF, !mcsema_real_eip !74
  %298 = icmp ult i32 %280, %EAX_val.113, !mcsema_real_eip !74
  store i1 %298, i1* %CF, !mcsema_real_eip !74
  %299 = zext i32 %280 to i64, !mcsema_real_eip !74
  store i64 %299, i64* %XAX, !mcsema_real_eip !74
  %EAX_val.116 = load i32, i32* %EAX.4, !mcsema_real_eip !75
  store i32 %EAX_val.116, i32* %277, !mcsema_real_eip !75
  br label %block_0x1c0, !mcsema_real_eip !76

block_0x172:                                      ; preds = %block_0x148
  %_new_gep_145 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -20
  %_allin_new_bt_146 = bitcast i8* %_new_gep_145 to i64*
  %300 = ptrtoint i64* %_allin_new_bt_146 to i64, !mcsema_real_eip !77
  %301 = inttoptr i64 %300 to i32*, !mcsema_real_eip !77
  %302 = load i32, i32* %301, !mcsema_real_eip !77
  %303 = zext i32 %302 to i64, !mcsema_real_eip !77
  store i64 %303, i64* %XAX, !mcsema_real_eip !77
  %EAX_val.107 = load i32, i32* %EAX.4, !mcsema_real_eip !78
  %304 = add i32 -1, %EAX_val.107, !mcsema_real_eip !78
  %305 = xor i32 %304, %EAX_val.107, !mcsema_real_eip !78
  %306 = xor i32 %305, -1, !mcsema_real_eip !78
  %307 = and i32 %306, 16, !mcsema_real_eip !78
  %308 = icmp ne i32 %307, 0, !mcsema_real_eip !78
  store i1 %308, i1* %AF, !mcsema_real_eip !78
  %309 = lshr i32 %304, 31, !mcsema_real_eip !78
  %310 = trunc i32 %309 to i1, !mcsema_real_eip !78
  store i1 %310, i1* %SF, !mcsema_real_eip !78
  %311 = icmp eq i32 %304, 0, !mcsema_real_eip !78
  store i1 %311, i1* %ZF, !mcsema_real_eip !78
  %312 = xor i32 %EAX_val.107, -1, !mcsema_real_eip !78
  %313 = and i32 %EAX_val.107, %305, !mcsema_real_eip !78
  %314 = lshr i32 %313, 31, !mcsema_real_eip !78
  %315 = and i32 %314, 1, !mcsema_real_eip !78
  %316 = trunc i32 %315 to i1, !mcsema_real_eip !78
  store i1 %316, i1* %OF, !mcsema_real_eip !78
  %317 = trunc i32 %304 to i8, !mcsema_real_eip !78
  %318 = call i8 @llvm.ctpop.i8(i8 %317), !mcsema_real_eip !78
  %319 = trunc i8 %318 to i1, !mcsema_real_eip !78
  %320 = xor i1 %319, true, !mcsema_real_eip !78
  store i1 %320, i1* %PF, !mcsema_real_eip !78
  %321 = icmp ult i32 %304, %EAX_val.107, !mcsema_real_eip !78
  store i1 %321, i1* %CF, !mcsema_real_eip !78
  %322 = zext i32 %304 to i64, !mcsema_real_eip !78
  store i64 %322, i64* %XAX, !mcsema_real_eip !78
  %EAX_val.110 = load i32, i32* %EAX.4, !mcsema_real_eip !79
  store i32 %EAX_val.110, i32* %301, !mcsema_real_eip !79
  br label %block_0x1c0, !mcsema_real_eip !80

block_0x180:                                      ; preds = %block_0x148
  %_new_gep_151 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -20
  %_allin_new_bt_152 = bitcast i8* %_new_gep_151 to i64*
  %323 = ptrtoint i64* %_allin_new_bt_152 to i64, !mcsema_real_eip !81
  %324 = inttoptr i64 %323 to i32*, !mcsema_real_eip !81
  %325 = load i32, i32* %324, !mcsema_real_eip !81
  %326 = zext i32 %325 to i64, !mcsema_real_eip !81
  store i64 %326, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.101 = load i32, i32* %EAX.4, !mcsema_real_eip !82
  %327 = add i32 1, %EAX_val.101, !mcsema_real_eip !82
  %328 = xor i32 %327, %EAX_val.101, !mcsema_real_eip !82
  %329 = xor i32 %328, 1, !mcsema_real_eip !82
  %330 = and i32 %329, 16, !mcsema_real_eip !82
  %331 = icmp ne i32 %330, 0, !mcsema_real_eip !82
  store i1 %331, i1* %AF, !mcsema_real_eip !82
  %332 = lshr i32 %327, 31, !mcsema_real_eip !82
  %333 = trunc i32 %332 to i1, !mcsema_real_eip !82
  store i1 %333, i1* %SF, !mcsema_real_eip !82
  %334 = icmp eq i32 %327, 0, !mcsema_real_eip !82
  store i1 %334, i1* %ZF, !mcsema_real_eip !82
  %335 = xor i32 %EAX_val.101, 1, !mcsema_real_eip !82
  %336 = xor i32 %335, -1, !mcsema_real_eip !82
  %337 = and i32 %336, %328, !mcsema_real_eip !82
  %338 = lshr i32 %337, 31, !mcsema_real_eip !82
  %339 = and i32 %338, 1, !mcsema_real_eip !82
  %340 = trunc i32 %339 to i1, !mcsema_real_eip !82
  store i1 %340, i1* %OF, !mcsema_real_eip !82
  %341 = trunc i32 %327 to i8, !mcsema_real_eip !82
  %342 = call i8 @llvm.ctpop.i8(i8 %341), !mcsema_real_eip !82
  %343 = trunc i8 %342 to i1, !mcsema_real_eip !82
  %344 = xor i1 %343, true, !mcsema_real_eip !82
  store i1 %344, i1* %PF, !mcsema_real_eip !82
  %345 = icmp ult i32 %327, %EAX_val.101, !mcsema_real_eip !82
  store i1 %345, i1* %CF, !mcsema_real_eip !82
  %346 = zext i32 %327 to i64, !mcsema_real_eip !82
  store i64 %346, i64* %XAX, !mcsema_real_eip !82
  %EAX_val.104 = load i32, i32* %EAX.4, !mcsema_real_eip !83
  store i32 %EAX_val.104, i32* %324, !mcsema_real_eip !83
  br label %block_0x1c0, !mcsema_real_eip !84

; <label>:347:                                    ; preds = %block_0x148
  store i64 %185, i64* %XIP, !mcsema_real_eip !50
  call void @__mcsema_detach_call_value()
  %_rsp_fix_251 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_252 = getelementptr i8, i8* %_rsp_fix_251, i64 8
  store i8* %_gep_fix_252, i8** %_RSP_ptr_
  ret void, !mcsema_real_eip !50

block_0x1e6:                                      ; preds = %block_0x1c0
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, !mcsema_real_eip !85
  %AL.132 = bitcast i64* %XAX to i8*, !mcsema_real_eip !86
  store i8 0, i8* %AL.132, !mcsema_real_eip !86
  %RSI_val.134 = load i64, i64* %XSI, !mcsema_real_eip !87
  %_load_rsp_ptr_156 = load i8*, i8** %_RSP_ptr_
  %RSP_val.135 = load i64, i64* %XSP, !mcsema_real_eip !87
  %_new_gep_157 = getelementptr i8, i8* %_load_rsp_ptr_156, i64 -8
  %348 = sub i64 %RSP_val.135, 8, !mcsema_real_eip !87
  %_allin_new_bt_158 = bitcast i8* %_new_gep_157 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_158, !mcsema_real_eip !87
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_
  store i64 %348, i64* %XSP, !mcsema_real_eip !87
  %349 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64 %RSI_val.134)
  %_rsp_fix_253 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_254 = getelementptr i8, i8* %_rsp_fix_253, i64 8
  store i8* %_gep_fix_254, i8** %_RSP_ptr_
  store i64 %349, i64* %XAX, !mcsema_real_eip !87
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, !mcsema_real_eip !88
  %_load_rbp_ptr_159 = load i8*, i8** %_RBP_ptr_
  %_new_gep_160 = getelementptr i8, i8* %_load_rbp_ptr_159, i64 -64
  %_allin_new_bt_161 = bitcast i8* %_new_gep_160 to i64*
  %350 = ptrtoint i64* %_allin_new_bt_161 to i64, !mcsema_real_eip !89
  store i64 %350, i64* %XSI, !mcsema_real_eip !89
  %_new_gep_163 = getelementptr i8, i8* %_load_rbp_ptr_159, i64 -96
  %_allin_new_bt_164 = bitcast i8* %_new_gep_163 to i64*
  %EAX_val.139 = load i32, i32* %EAX.4, !mcsema_real_eip !90
  %351 = ptrtoint i64* %_allin_new_bt_164 to i64, !mcsema_real_eip !90
  %352 = inttoptr i64 %351 to i32*, !mcsema_real_eip !90
  store i32 %EAX_val.139, i32* %352, !mcsema_real_eip !90
  store i8 0, i8* %AL.132, !mcsema_real_eip !91
  %RDI_val.141 = load i64, i64* %XDI, !mcsema_real_eip !92
  %RSI_val.142 = load i64, i64* %XSI, !mcsema_real_eip !92
  %_load_rsp_ptr_165 = load i8*, i8** %_RSP_ptr_
  %RSP_val.143 = load i64, i64* %XSP, !mcsema_real_eip !92
  %_new_gep_166 = getelementptr i8, i8* %_load_rsp_ptr_165, i64 -8
  %353 = sub i64 %RSP_val.143, 8, !mcsema_real_eip !92
  %_allin_new_bt_167 = bitcast i8* %_new_gep_166 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_167, !mcsema_real_eip !92
  store volatile i8* %_new_gep_166, i8** %_RSP_ptr_
  store i64 %353, i64* %XSP, !mcsema_real_eip !92
  %354 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.141, i64 %RSI_val.142)
  %_rsp_fix_255 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_256 = getelementptr i8, i8* %_rsp_fix_255, i64 8
  store i8* %_gep_fix_256, i8** %_RSP_ptr_
  store i64 %354, i64* %XAX, !mcsema_real_eip !92
  %EDI_val.145 = load i32, i32* %EDI.13, !mcsema_real_eip !93
  store i1 false, i1* %CF, !mcsema_real_eip !93
  store i1 false, i1* %OF, !mcsema_real_eip !93
  store i1 false, i1* %SF, !mcsema_real_eip !93
  store i1 true, i1* %ZF, !mcsema_real_eip !93
  store i1 true, i1* %PF, !mcsema_real_eip !93
  store i1 undef, i1* %AF, !mcsema_real_eip !93
  store i64 0, i64* %XDI, !mcsema_real_eip !93
  %_load_rbp_ptr_168 = load i8*, i8** %_RBP_ptr_
  %_new_gep_169 = getelementptr i8, i8* %_load_rbp_ptr_168, i64 -100
  %_allin_new_bt_170 = bitcast i8* %_new_gep_169 to i64*
  %EAX_val.150 = load i32, i32* %EAX.4, !mcsema_real_eip !94
  %355 = ptrtoint i64* %_allin_new_bt_170 to i64, !mcsema_real_eip !94
  %356 = inttoptr i64 %355 to i32*, !mcsema_real_eip !94
  store i32 %EAX_val.150, i32* %356, !mcsema_real_eip !94
  %RDI_val.151 = load i64, i64* %XDI, !mcsema_real_eip !95
  %_load_rsp_ptr_171 = load i8*, i8** %_RSP_ptr_
  %RSP_val.152 = load i64, i64* %XSP, !mcsema_real_eip !95
  %_new_gep_172 = getelementptr i8, i8* %_load_rsp_ptr_171, i64 -8
  %357 = sub i64 %RSP_val.152, 8, !mcsema_real_eip !95
  %_allin_new_bt_173 = bitcast i8* %_new_gep_172 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_173, !mcsema_real_eip !95
  store volatile i8* %_new_gep_172, i8** %_RSP_ptr_
  store i64 %357, i64* %XSP, !mcsema_real_eip !95
  %358 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151)
  %_rsp_fix_257 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_258 = getelementptr i8, i8* %_rsp_fix_257, i64 8
  store i8* %_gep_fix_258, i8** %_RSP_ptr_
  store i64 %358, i64* %XAX, !mcsema_real_eip !95
  br label %block_0x219, !mcsema_real_eip !96

block_0x219:                                      ; preds = %block_0x1e6, %block_0x1c0
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !97
  %_load_rbp_ptr_174 = load i8*, i8** %_RBP_ptr_
  %_new_gep_175 = getelementptr i8, i8* %_load_rbp_ptr_174, i64 -24
  %_allin_new_bt_176 = bitcast i8* %_new_gep_175 to i64*
  %359 = ptrtoint i64* %_allin_new_bt_176 to i64, !mcsema_real_eip !98
  %360 = inttoptr i64 %359 to i32*, !mcsema_real_eip !98
  %361 = load i32, i32* %360, !mcsema_real_eip !98
  %362 = sext i32 %361 to i64, !mcsema_real_eip !98
  store i64 %362, i64* %XCX, !mcsema_real_eip !98
  %363 = sext i64 %362 to i128, !mcsema_real_eip !99
  %364 = mul i128 %363, 11, !mcsema_real_eip !99
  %365 = trunc i128 %364 to i64, !mcsema_real_eip !99
  %366 = sext i64 %365 to i128, !mcsema_real_eip !99
  %367 = icmp ne i128 %366, %364, !mcsema_real_eip !99
  %368 = icmp slt i64 %365, 0, !mcsema_real_eip !99
  store i1 %368, i1* %SF, !mcsema_real_eip !99
  store i1 %367, i1* %OF, !mcsema_real_eip !99
  store i1 %367, i1* %CF, !mcsema_real_eip !99
  store i64 %365, i64* %XCX, !mcsema_real_eip !99
  %369 = add i64 %365, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !100
  %370 = xor i64 %369, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !100
  %371 = xor i64 %370, %365, !mcsema_real_eip !100
  %372 = and i64 %371, 16, !mcsema_real_eip !100
  %373 = icmp ne i64 %372, 0, !mcsema_real_eip !100
  store i1 %373, i1* %AF, !mcsema_real_eip !100
  %374 = lshr i64 %369, 63, !mcsema_real_eip !100
  %375 = trunc i64 %374 to i1, !mcsema_real_eip !100
  store i1 %375, i1* %SF, !mcsema_real_eip !100
  %376 = icmp eq i64 %369, 0, !mcsema_real_eip !100
  store i1 %376, i1* %ZF, !mcsema_real_eip !100
  %377 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %365, !mcsema_real_eip !100
  %378 = xor i64 %377, -1, !mcsema_real_eip !100
  %379 = and i64 %378, %370, !mcsema_real_eip !100
  %380 = lshr i64 %379, 63, !mcsema_real_eip !100
  %381 = and i64 %380, 1, !mcsema_real_eip !100
  %382 = trunc i64 %381 to i1, !mcsema_real_eip !100
  store i1 %382, i1* %OF, !mcsema_real_eip !100
  %383 = trunc i64 %369 to i8, !mcsema_real_eip !100
  %384 = call i8 @llvm.ctpop.i8(i8 %383), !mcsema_real_eip !100
  %385 = trunc i8 %384 to i1, !mcsema_real_eip !100
  %386 = xor i1 %385, true, !mcsema_real_eip !100
  store i1 %386, i1* %PF, !mcsema_real_eip !100
  %387 = icmp ult i64 %369, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !100
  store i1 %387, i1* %CF, !mcsema_real_eip !100
  store i64 %369, i64* %XAX, !mcsema_real_eip !100
  %_new_gep_178 = getelementptr i8, i8* %_load_rbp_ptr_174, i64 -20
  %_allin_new_bt_179 = bitcast i8* %_new_gep_178 to i64*
  %388 = ptrtoint i64* %_allin_new_bt_179 to i64, !mcsema_real_eip !101
  %389 = inttoptr i64 %388 to i32*, !mcsema_real_eip !101
  %390 = load i32, i32* %389, !mcsema_real_eip !101
  %391 = sext i32 %390 to i64, !mcsema_real_eip !101
  store i64 %391, i64* %XCX, !mcsema_real_eip !101
  %392 = add i64 %369, %391, !mcsema_real_eip !102
  %393 = inttoptr i64 %392 to i64*, !mcsema_real_eip !102
  %394 = inttoptr i64 %392 to i8*, !mcsema_real_eip !102
  %395 = load i8, i8* %394, !mcsema_real_eip !102
  %396 = sext i8 %395 to i32, !mcsema_real_eip !102
  %397 = zext i32 %396 to i64, !mcsema_real_eip !102
  store i64 %397, i64* %XDX, !mcsema_real_eip !102
  %EDX_val.131 = load i32, i32* %EDX.97, !mcsema_real_eip !103
  %398 = sub i32 %EDX_val.131, 32, !mcsema_real_eip !103
  %399 = xor i32 %398, %EDX_val.131, !mcsema_real_eip !103
  %400 = xor i32 %399, 32, !mcsema_real_eip !103
  %401 = and i32 %400, 16, !mcsema_real_eip !103
  %402 = icmp ne i32 %401, 0, !mcsema_real_eip !103
  store i1 %402, i1* %AF, !mcsema_real_eip !103
  %403 = trunc i32 %398 to i8, !mcsema_real_eip !103
  %404 = call i8 @llvm.ctpop.i8(i8 %403), !mcsema_real_eip !103
  %405 = trunc i8 %404 to i1, !mcsema_real_eip !103
  %406 = xor i1 %405, true, !mcsema_real_eip !103
  store i1 %406, i1* %PF, !mcsema_real_eip !103
  %407 = icmp eq i32 %398, 0, !mcsema_real_eip !103
  store i1 %407, i1* %ZF, !mcsema_real_eip !103
  %408 = lshr i32 %398, 31, !mcsema_real_eip !103
  %409 = trunc i32 %408 to i1, !mcsema_real_eip !103
  store i1 %409, i1* %SF, !mcsema_real_eip !103
  %410 = icmp ult i32 %EDX_val.131, 32, !mcsema_real_eip !103
  store i1 %410, i1* %CF, !mcsema_real_eip !103
  %411 = xor i32 %EDX_val.131, 32, !mcsema_real_eip !103
  %412 = and i32 %411, %399, !mcsema_real_eip !103
  %413 = lshr i32 %412, 31, !mcsema_real_eip !103
  %414 = trunc i32 %413 to i1, !mcsema_real_eip !103
  store i1 %414, i1* %OF, !mcsema_real_eip !103
  br i1 %407, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !104

block_0x23f:                                      ; preds = %block_0x219
  %415 = load i32, i32* %360, !mcsema_real_eip !105
  %416 = sub i32 %415, 2, !mcsema_real_eip !105
  %417 = xor i32 %416, %415, !mcsema_real_eip !105
  %418 = xor i32 %417, 2, !mcsema_real_eip !105
  %419 = and i32 %418, 16, !mcsema_real_eip !105
  %420 = icmp ne i32 %419, 0, !mcsema_real_eip !105
  store i1 %420, i1* %AF, !mcsema_real_eip !105
  %421 = trunc i32 %416 to i8, !mcsema_real_eip !105
  %422 = call i8 @llvm.ctpop.i8(i8 %421), !mcsema_real_eip !105
  %423 = trunc i8 %422 to i1, !mcsema_real_eip !105
  %424 = xor i1 %423, true, !mcsema_real_eip !105
  store i1 %424, i1* %PF, !mcsema_real_eip !105
  %425 = icmp eq i32 %416, 0, !mcsema_real_eip !105
  store i1 %425, i1* %ZF, !mcsema_real_eip !105
  %426 = lshr i32 %416, 31, !mcsema_real_eip !105
  %427 = trunc i32 %426 to i1, !mcsema_real_eip !105
  store i1 %427, i1* %SF, !mcsema_real_eip !105
  %428 = icmp ult i32 %415, 2, !mcsema_real_eip !105
  store i1 %428, i1* %CF, !mcsema_real_eip !105
  %429 = xor i32 %415, 2, !mcsema_real_eip !105
  %430 = and i32 %429, %417, !mcsema_real_eip !105
  %431 = lshr i32 %430, 31, !mcsema_real_eip !105
  %432 = trunc i32 %431 to i1, !mcsema_real_eip !105
  store i1 %432, i1* %OF, !mcsema_real_eip !105
  %433 = icmp eq i1 %425, false, !mcsema_real_eip !106
  br i1 %433, label %block_0x283, label %block_0x249, !mcsema_real_eip !106

block_0x28f:                                      ; preds = %block_0x279, %block_0x283, %block_0x219
  %_load_rbp_ptr_183 = load i8*, i8** %_RBP_ptr_
  %_new_gep_184 = getelementptr i8, i8* %_load_rbp_ptr_183, i64 -28
  %_allin_new_bt_185 = bitcast i8* %_new_gep_184 to i64*
  %434 = ptrtoint i64* %_allin_new_bt_185 to i64, !mcsema_real_eip !96
  %435 = inttoptr i64 %434 to i32*, !mcsema_real_eip !96
  %436 = load i32, i32* %435, !mcsema_real_eip !96
  %437 = zext i32 %436 to i64, !mcsema_real_eip !96
  store i64 %437, i64* %XAX, !mcsema_real_eip !96
  %_new_gep_187 = getelementptr i8, i8* %_load_rbp_ptr_183, i64 -20
  %_allin_new_bt_188 = bitcast i8* %_new_gep_187 to i64*
  %EAX_val.156 = load i32, i32* %EAX.4, !mcsema_real_eip !107
  %438 = ptrtoint i64* %_allin_new_bt_188 to i64, !mcsema_real_eip !107
  %439 = inttoptr i64 %438 to i32*, !mcsema_real_eip !107
  %440 = load i32, i32* %439, !mcsema_real_eip !107
  %441 = sub i32 %EAX_val.156, %440, !mcsema_real_eip !107
  %442 = xor i32 %441, %EAX_val.156, !mcsema_real_eip !107
  %443 = xor i32 %442, %440, !mcsema_real_eip !107
  %444 = and i32 %443, 16, !mcsema_real_eip !107
  %445 = icmp ne i32 %444, 0, !mcsema_real_eip !107
  store i1 %445, i1* %AF, !mcsema_real_eip !107
  %446 = trunc i32 %441 to i8, !mcsema_real_eip !107
  %447 = call i8 @llvm.ctpop.i8(i8 %446), !mcsema_real_eip !107
  %448 = trunc i8 %447 to i1, !mcsema_real_eip !107
  %449 = xor i1 %448, true, !mcsema_real_eip !107
  store i1 %449, i1* %PF, !mcsema_real_eip !107
  %450 = icmp eq i32 %441, 0, !mcsema_real_eip !107
  store i1 %450, i1* %ZF, !mcsema_real_eip !107
  %451 = lshr i32 %441, 31, !mcsema_real_eip !107
  %452 = trunc i32 %451 to i1, !mcsema_real_eip !107
  store i1 %452, i1* %SF, !mcsema_real_eip !107
  %453 = icmp ult i32 %EAX_val.156, %440, !mcsema_real_eip !107
  store i1 %453, i1* %CF, !mcsema_real_eip !107
  %454 = xor i32 %EAX_val.156, %440, !mcsema_real_eip !107
  %455 = and i32 %454, %442, !mcsema_real_eip !107
  %456 = lshr i32 %455, 31, !mcsema_real_eip !107
  %457 = trunc i32 %456 to i1, !mcsema_real_eip !107
  store i1 %457, i1* %OF, !mcsema_real_eip !107
  %458 = icmp eq i1 %450, false, !mcsema_real_eip !108
  br i1 %458, label %block_0x2c7, label %block_0x29b, !mcsema_real_eip !108

block_0x29b:                                      ; preds = %block_0x28f
  %_new_gep_190 = getelementptr i8, i8* %_load_rbp_ptr_183, i64 -32
  %_allin_new_bt_191 = bitcast i8* %_new_gep_190 to i64*
  %459 = ptrtoint i64* %_allin_new_bt_191 to i64, !mcsema_real_eip !109
  %460 = inttoptr i64 %459 to i32*, !mcsema_real_eip !109
  %461 = load i32, i32* %460, !mcsema_real_eip !109
  %462 = zext i32 %461 to i64, !mcsema_real_eip !109
  store i64 %462, i64* %XAX, !mcsema_real_eip !109
  %_new_gep_193 = getelementptr i8, i8* %_load_rbp_ptr_183, i64 -24
  %_allin_new_bt_194 = bitcast i8* %_new_gep_193 to i64*
  %EAX_val.175 = load i32, i32* %EAX.4, !mcsema_real_eip !110
  %463 = ptrtoint i64* %_allin_new_bt_194 to i64, !mcsema_real_eip !110
  %464 = inttoptr i64 %463 to i32*, !mcsema_real_eip !110
  %465 = load i32, i32* %464, !mcsema_real_eip !110
  %466 = sub i32 %EAX_val.175, %465, !mcsema_real_eip !110
  %467 = xor i32 %466, %EAX_val.175, !mcsema_real_eip !110
  %468 = xor i32 %467, %465, !mcsema_real_eip !110
  %469 = and i32 %468, 16, !mcsema_real_eip !110
  %470 = icmp ne i32 %469, 0, !mcsema_real_eip !110
  store i1 %470, i1* %AF, !mcsema_real_eip !110
  %471 = trunc i32 %466 to i8, !mcsema_real_eip !110
  %472 = call i8 @llvm.ctpop.i8(i8 %471), !mcsema_real_eip !110
  %473 = trunc i8 %472 to i1, !mcsema_real_eip !110
  %474 = xor i1 %473, true, !mcsema_real_eip !110
  store i1 %474, i1* %PF, !mcsema_real_eip !110
  %475 = icmp eq i32 %466, 0, !mcsema_real_eip !110
  store i1 %475, i1* %ZF, !mcsema_real_eip !110
  %476 = lshr i32 %466, 31, !mcsema_real_eip !110
  %477 = trunc i32 %476 to i1, !mcsema_real_eip !110
  store i1 %477, i1* %SF, !mcsema_real_eip !110
  %478 = icmp ult i32 %EAX_val.175, %465, !mcsema_real_eip !110
  store i1 %478, i1* %CF, !mcsema_real_eip !110
  %479 = xor i32 %EAX_val.175, %465, !mcsema_real_eip !110
  %480 = and i32 %479, %467, !mcsema_real_eip !110
  %481 = lshr i32 %480, 31, !mcsema_real_eip !110
  %482 = trunc i32 %481 to i1, !mcsema_real_eip !110
  store i1 %482, i1* %OF, !mcsema_real_eip !110
  %483 = icmp eq i1 %475, false, !mcsema_real_eip !111
  br i1 %483, label %block_0x2c7, label %block_0x2a7, !mcsema_real_eip !111

block_0x2c7:                                      ; preds = %block_0x29b, %block_0x28f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !112
  %_new_gep_196 = getelementptr i8, i8* %_load_rbp_ptr_183, i64 -24
  %_allin_new_bt_197 = bitcast i8* %_new_gep_196 to i64*
  %484 = ptrtoint i64* %_allin_new_bt_197 to i64, !mcsema_real_eip !113
  %485 = inttoptr i64 %484 to i32*, !mcsema_real_eip !113
  %486 = load i32, i32* %485, !mcsema_real_eip !113
  %487 = sext i32 %486 to i64, !mcsema_real_eip !113
  store i64 %487, i64* %XCX, !mcsema_real_eip !113
  %488 = sext i64 %487 to i128, !mcsema_real_eip !114
  %489 = mul i128 %488, 11, !mcsema_real_eip !114
  %490 = trunc i128 %489 to i64, !mcsema_real_eip !114
  %491 = sext i64 %490 to i128, !mcsema_real_eip !114
  %492 = icmp ne i128 %491, %489, !mcsema_real_eip !114
  %493 = icmp slt i64 %490, 0, !mcsema_real_eip !114
  store i1 %493, i1* %SF, !mcsema_real_eip !114
  store i1 %492, i1* %OF, !mcsema_real_eip !114
  store i1 %492, i1* %CF, !mcsema_real_eip !114
  store i64 %490, i64* %XCX, !mcsema_real_eip !114
  %494 = add i64 %490, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !115
  %495 = xor i64 %494, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !115
  %496 = xor i64 %495, %490, !mcsema_real_eip !115
  %497 = and i64 %496, 16, !mcsema_real_eip !115
  %498 = icmp ne i64 %497, 0, !mcsema_real_eip !115
  store i1 %498, i1* %AF, !mcsema_real_eip !115
  %499 = lshr i64 %494, 63, !mcsema_real_eip !115
  %500 = trunc i64 %499 to i1, !mcsema_real_eip !115
  store i1 %500, i1* %SF, !mcsema_real_eip !115
  %501 = icmp eq i64 %494, 0, !mcsema_real_eip !115
  store i1 %501, i1* %ZF, !mcsema_real_eip !115
  %502 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %490, !mcsema_real_eip !115
  %503 = xor i64 %502, -1, !mcsema_real_eip !115
  %504 = and i64 %503, %495, !mcsema_real_eip !115
  %505 = lshr i64 %504, 63, !mcsema_real_eip !115
  %506 = and i64 %505, 1, !mcsema_real_eip !115
  %507 = trunc i64 %506 to i1, !mcsema_real_eip !115
  store i1 %507, i1* %OF, !mcsema_real_eip !115
  %508 = trunc i64 %494 to i8, !mcsema_real_eip !115
  %509 = call i8 @llvm.ctpop.i8(i8 %508), !mcsema_real_eip !115
  %510 = trunc i8 %509 to i1, !mcsema_real_eip !115
  %511 = xor i1 %510, true, !mcsema_real_eip !115
  store i1 %511, i1* %PF, !mcsema_real_eip !115
  %512 = icmp ult i64 %494, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !115
  store i1 %512, i1* %CF, !mcsema_real_eip !115
  store i64 %494, i64* %XAX, !mcsema_real_eip !115
  %513 = load i32, i32* %439, !mcsema_real_eip !116
  %514 = sext i32 %513 to i64, !mcsema_real_eip !116
  store i64 %514, i64* %XCX, !mcsema_real_eip !116
  %515 = add i64 %494, %514, !mcsema_real_eip !117
  %516 = inttoptr i64 %515 to i64*, !mcsema_real_eip !117
  %517 = inttoptr i64 %515 to i8*, !mcsema_real_eip !117
  store i8 88, i8* %517, !mcsema_real_eip !117
  %_load_rsp_ptr_201 = load i8*, i8** %_RSP_ptr_
  %RSP_val.165 = load i64, i64* %XSP, !mcsema_real_eip !118
  %_new_gep_202 = getelementptr i8, i8* %_load_rsp_ptr_201, i64 -8
  %518 = sub i64 %RSP_val.165, 8, !mcsema_real_eip !118
  %_allin_new_bt_203 = bitcast i8* %_new_gep_202 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_203, !mcsema_real_eip !118
  store volatile i8* %_new_gep_202, i8** %_RSP_ptr_
  store i64 %518, i64* %XSP, !mcsema_real_eip !118
  %_load_rbp_ptr_259 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_202, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_259)
  %_rsp_fix_261 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_262 = getelementptr i8, i8* %_rsp_fix_261, i64 8
  store i8* %_gep_fix_262, i8** %_RSP_ptr_
  %_load_rbp_ptr_204 = load i8*, i8** %_RBP_ptr_
  %_new_gep_205 = getelementptr i8, i8* %_load_rbp_ptr_204, i64 -36
  %_allin_new_bt_206 = bitcast i8* %_new_gep_205 to i64*
  %519 = ptrtoint i64* %_allin_new_bt_206 to i64, !mcsema_real_eip !119
  %520 = inttoptr i64 %519 to i32*, !mcsema_real_eip !119
  %521 = load i32, i32* %520, !mcsema_real_eip !119
  %522 = zext i32 %521 to i64, !mcsema_real_eip !119
  store i64 %522, i64* %XDX, !mcsema_real_eip !119
  %EDX_val.168 = load i32, i32* %EDX.97, !mcsema_real_eip !120
  %523 = add i32 1, %EDX_val.168, !mcsema_real_eip !120
  %524 = xor i32 %523, %EDX_val.168, !mcsema_real_eip !120
  %525 = xor i32 %524, 1, !mcsema_real_eip !120
  %526 = and i32 %525, 16, !mcsema_real_eip !120
  %527 = icmp ne i32 %526, 0, !mcsema_real_eip !120
  store i1 %527, i1* %AF, !mcsema_real_eip !120
  %528 = lshr i32 %523, 31, !mcsema_real_eip !120
  %529 = trunc i32 %528 to i1, !mcsema_real_eip !120
  store i1 %529, i1* %SF, !mcsema_real_eip !120
  %530 = icmp eq i32 %523, 0, !mcsema_real_eip !120
  store i1 %530, i1* %ZF, !mcsema_real_eip !120
  %531 = xor i32 %EDX_val.168, 1, !mcsema_real_eip !120
  %532 = xor i32 %531, -1, !mcsema_real_eip !120
  %533 = and i32 %532, %524, !mcsema_real_eip !120
  %534 = lshr i32 %533, 31, !mcsema_real_eip !120
  %535 = and i32 %534, 1, !mcsema_real_eip !120
  %536 = trunc i32 %535 to i1, !mcsema_real_eip !120
  store i1 %536, i1* %OF, !mcsema_real_eip !120
  %537 = trunc i32 %523 to i8, !mcsema_real_eip !120
  %538 = call i8 @llvm.ctpop.i8(i8 %537), !mcsema_real_eip !120
  %539 = trunc i8 %538 to i1, !mcsema_real_eip !120
  %540 = xor i1 %539, true, !mcsema_real_eip !120
  store i1 %540, i1* %PF, !mcsema_real_eip !120
  %541 = icmp ult i32 %523, %EDX_val.168, !mcsema_real_eip !120
  store i1 %541, i1* %CF, !mcsema_real_eip !120
  %542 = zext i32 %523 to i64, !mcsema_real_eip !120
  store i64 %542, i64* %XDX, !mcsema_real_eip !120
  %EDX_val.171 = load i32, i32* %EDX.97, !mcsema_real_eip !121
  store i32 %EDX_val.171, i32* %520, !mcsema_real_eip !121
  br label %block_0x114, !mcsema_real_eip !122

block_0x249:                                      ; preds = %block_0x23f
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !123
  %543 = load i32, i32* %360, !mcsema_real_eip !124
  %544 = sext i32 %543 to i64, !mcsema_real_eip !124
  store i64 %544, i64* %XCX, !mcsema_real_eip !124
  %545 = sext i64 %544 to i128, !mcsema_real_eip !125
  %546 = mul i128 %545, 11, !mcsema_real_eip !125
  %547 = trunc i128 %546 to i64, !mcsema_real_eip !125
  %548 = sext i64 %547 to i128, !mcsema_real_eip !125
  %549 = icmp ne i128 %548, %546, !mcsema_real_eip !125
  %550 = icmp slt i64 %547, 0, !mcsema_real_eip !125
  store i1 %550, i1* %SF, !mcsema_real_eip !125
  store i1 %549, i1* %OF, !mcsema_real_eip !125
  store i1 %549, i1* %CF, !mcsema_real_eip !125
  store i64 %547, i64* %XCX, !mcsema_real_eip !125
  %551 = add i64 %547, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !126
  %552 = xor i64 %551, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !126
  %553 = xor i64 %552, %547, !mcsema_real_eip !126
  %554 = and i64 %553, 16, !mcsema_real_eip !126
  %555 = icmp ne i64 %554, 0, !mcsema_real_eip !126
  store i1 %555, i1* %AF, !mcsema_real_eip !126
  %556 = lshr i64 %551, 63, !mcsema_real_eip !126
  %557 = trunc i64 %556 to i1, !mcsema_real_eip !126
  store i1 %557, i1* %SF, !mcsema_real_eip !126
  %558 = icmp eq i64 %551, 0, !mcsema_real_eip !126
  store i1 %558, i1* %ZF, !mcsema_real_eip !126
  %559 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %547, !mcsema_real_eip !126
  %560 = xor i64 %559, -1, !mcsema_real_eip !126
  %561 = and i64 %560, %552, !mcsema_real_eip !126
  %562 = lshr i64 %561, 63, !mcsema_real_eip !126
  %563 = and i64 %562, 1, !mcsema_real_eip !126
  %564 = trunc i64 %563 to i1, !mcsema_real_eip !126
  store i1 %564, i1* %OF, !mcsema_real_eip !126
  %565 = trunc i64 %551 to i8, !mcsema_real_eip !126
  %566 = call i8 @llvm.ctpop.i8(i8 %565), !mcsema_real_eip !126
  %567 = trunc i8 %566 to i1, !mcsema_real_eip !126
  %568 = xor i1 %567, true, !mcsema_real_eip !126
  store i1 %568, i1* %PF, !mcsema_real_eip !126
  %569 = icmp ult i64 %551, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !126
  store i1 %569, i1* %CF, !mcsema_real_eip !126
  store i64 %551, i64* %XAX, !mcsema_real_eip !126
  %570 = load i32, i32* %389, !mcsema_real_eip !127
  %571 = sext i32 %570 to i64, !mcsema_real_eip !127
  store i64 %571, i64* %XCX, !mcsema_real_eip !127
  %572 = add i64 %551, %571, !mcsema_real_eip !128
  %573 = inttoptr i64 %572 to i64*, !mcsema_real_eip !128
  %574 = inttoptr i64 %572 to i8*, !mcsema_real_eip !128
  %575 = load i8, i8* %574, !mcsema_real_eip !128
  %576 = sext i8 %575 to i32, !mcsema_real_eip !128
  %577 = zext i32 %576 to i64, !mcsema_real_eip !128
  store i64 %577, i64* %XDX, !mcsema_real_eip !128
  %EDX_val.192 = load i32, i32* %EDX.97, !mcsema_real_eip !129
  %578 = sub i32 %EDX_val.192, 124, !mcsema_real_eip !129
  %579 = xor i32 %578, %EDX_val.192, !mcsema_real_eip !129
  %580 = xor i32 %579, 124, !mcsema_real_eip !129
  %581 = and i32 %580, 16, !mcsema_real_eip !129
  %582 = icmp ne i32 %581, 0, !mcsema_real_eip !129
  store i1 %582, i1* %AF, !mcsema_real_eip !129
  %583 = trunc i32 %578 to i8, !mcsema_real_eip !129
  %584 = call i8 @llvm.ctpop.i8(i8 %583), !mcsema_real_eip !129
  %585 = trunc i8 %584 to i1, !mcsema_real_eip !129
  %586 = xor i1 %585, true, !mcsema_real_eip !129
  store i1 %586, i1* %PF, !mcsema_real_eip !129
  %587 = icmp eq i32 %578, 0, !mcsema_real_eip !129
  store i1 %587, i1* %ZF, !mcsema_real_eip !129
  %588 = lshr i32 %578, 31, !mcsema_real_eip !129
  %589 = trunc i32 %588 to i1, !mcsema_real_eip !129
  store i1 %589, i1* %SF, !mcsema_real_eip !129
  %590 = icmp ult i32 %EDX_val.192, 124, !mcsema_real_eip !129
  store i1 %590, i1* %CF, !mcsema_real_eip !129
  %591 = xor i32 %EDX_val.192, 124, !mcsema_real_eip !129
  %592 = and i32 %591, %579, !mcsema_real_eip !129
  %593 = lshr i32 %592, 31, !mcsema_real_eip !129
  %594 = trunc i32 %593 to i1, !mcsema_real_eip !129
  store i1 %594, i1* %OF, !mcsema_real_eip !129
  %595 = icmp eq i1 %587, false, !mcsema_real_eip !130
  br i1 %595, label %block_0x283, label %block_0x26f, !mcsema_real_eip !130

block_0x283:                                      ; preds = %block_0x279, %block_0x26f, %block_0x249, %block_0x23f
  %_new_gep_217 = getelementptr i8, i8* %_load_rbp_ptr_174, i64 -28
  %_allin_new_bt_218 = bitcast i8* %_new_gep_217 to i64*
  %596 = ptrtoint i64* %_allin_new_bt_218 to i64, !mcsema_real_eip !131
  %597 = inttoptr i64 %596 to i32*, !mcsema_real_eip !131
  %598 = load i32, i32* %597, !mcsema_real_eip !131
  %599 = zext i32 %598 to i64, !mcsema_real_eip !131
  store i64 %599, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.179 = load i32, i32* %EAX.4, !mcsema_real_eip !132
  store i32 %EAX_val.179, i32* %389, !mcsema_real_eip !132
  %_load_rbp_ptr_222 = load i8*, i8** %_RBP_ptr_
  %_new_gep_223 = getelementptr i8, i8* %_load_rbp_ptr_222, i64 -32
  %_allin_new_bt_224 = bitcast i8* %_new_gep_223 to i64*
  %600 = ptrtoint i64* %_allin_new_bt_224 to i64, !mcsema_real_eip !133
  %601 = inttoptr i64 %600 to i32*, !mcsema_real_eip !133
  %602 = load i32, i32* %601, !mcsema_real_eip !133
  %603 = zext i32 %602 to i64, !mcsema_real_eip !133
  store i64 %603, i64* %XAX, !mcsema_real_eip !133
  %_new_gep_226 = getelementptr i8, i8* %_load_rbp_ptr_222, i64 -24
  %_allin_new_bt_227 = bitcast i8* %_new_gep_226 to i64*
  %EAX_val.183 = load i32, i32* %EAX.4, !mcsema_real_eip !134
  %604 = ptrtoint i64* %_allin_new_bt_227 to i64, !mcsema_real_eip !134
  %605 = inttoptr i64 %604 to i32*, !mcsema_real_eip !134
  store i32 %EAX_val.183, i32* %605, !mcsema_real_eip !134
  br label %block_0x28f, !mcsema_real_eip !123

block_0x2a7:                                      ; preds = %block_0x29b
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !135
  %AL.193 = bitcast i64* %XAX to i8*, !mcsema_real_eip !136
  store i8 0, i8* %AL.193, !mcsema_real_eip !136
  %RSI_val.195 = load i64, i64* %XSI, !mcsema_real_eip !137
  %_load_rsp_ptr_228 = load i8*, i8** %_RSP_ptr_
  %RSP_val.196 = load i64, i64* %XSP, !mcsema_real_eip !137
  %_new_gep_229 = getelementptr i8, i8* %_load_rsp_ptr_228, i64 -8
  %606 = sub i64 %RSP_val.196, 8, !mcsema_real_eip !137
  %_allin_new_bt_230 = bitcast i8* %_new_gep_229 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_230, !mcsema_real_eip !137
  store volatile i8* %_new_gep_229, i8** %_RSP_ptr_
  store i64 %606, i64* %XSP, !mcsema_real_eip !137
  %607 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.195)
  %_rsp_fix_263 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_264 = getelementptr i8, i8* %_rsp_fix_263, i64 8
  store i8* %_gep_fix_264, i8** %_RSP_ptr_
  store i64 %607, i64* %XAX, !mcsema_real_eip !137
  %_load_rbp_ptr_231 = load i8*, i8** %_RBP_ptr_
  %_new_gep_232 = getelementptr i8, i8* %_load_rbp_ptr_231, i64 -4
  %_allin_new_bt_233 = bitcast i8* %_new_gep_232 to i64*
  %608 = ptrtoint i64* %_allin_new_bt_233 to i64, !mcsema_real_eip !138
  %609 = inttoptr i64 %608 to i32*, !mcsema_real_eip !138
  store i32 2, i32* %609, !mcsema_real_eip !138
  %_load_rbp_ptr_234 = load i8*, i8** %_RBP_ptr_
  %_new_gep_235 = getelementptr i8, i8* %_load_rbp_ptr_234, i64 -104
  %_allin_new_bt_236 = bitcast i8* %_new_gep_235 to i64*
  %EAX_val.200 = load i32, i32* %EAX.4, !mcsema_real_eip !139
  %610 = ptrtoint i64* %_allin_new_bt_236 to i64, !mcsema_real_eip !139
  %611 = inttoptr i64 %610 to i32*, !mcsema_real_eip !139
  store i32 %EAX_val.200, i32* %611, !mcsema_real_eip !139
  br label %block_0x312, !mcsema_real_eip !140

block_0x26f:                                      ; preds = %block_0x249
  %612 = load i32, i32* %389, !mcsema_real_eip !141
  store i1 false, i1* %AF, !mcsema_real_eip !141
  %613 = trunc i32 %612 to i8, !mcsema_real_eip !141
  %614 = call i8 @llvm.ctpop.i8(i8 %613), !mcsema_real_eip !141
  %615 = trunc i8 %614 to i1, !mcsema_real_eip !141
  %616 = xor i1 %615, true, !mcsema_real_eip !141
  store i1 %616, i1* %PF, !mcsema_real_eip !141
  %617 = icmp eq i32 %612, 0, !mcsema_real_eip !141
  store i1 %617, i1* %ZF, !mcsema_real_eip !141
  %618 = lshr i32 %612, 31, !mcsema_real_eip !141
  %619 = trunc i32 %618 to i1, !mcsema_real_eip !141
  store i1 %619, i1* %SF, !mcsema_real_eip !141
  store i1 false, i1* %CF, !mcsema_real_eip !141
  store i1 false, i1* %OF, !mcsema_real_eip !141
  %620 = icmp eq i1 %619, false, !mcsema_real_eip !142
  %621 = icmp eq i1 %620, false, !mcsema_real_eip !142
  %622 = or i1 %617, %621, !mcsema_real_eip !142
  br i1 %622, label %block_0x283, label %block_0x279, !mcsema_real_eip !142

block_0x279:                                      ; preds = %block_0x26f
  %623 = load i32, i32* %389, !mcsema_real_eip !143
  %624 = sub i32 %623, 11, !mcsema_real_eip !143
  %625 = xor i32 %624, %623, !mcsema_real_eip !143
  %626 = xor i32 %625, 11, !mcsema_real_eip !143
  %627 = and i32 %626, 16, !mcsema_real_eip !143
  %628 = icmp ne i32 %627, 0, !mcsema_real_eip !143
  store i1 %628, i1* %AF, !mcsema_real_eip !143
  %629 = trunc i32 %624 to i8, !mcsema_real_eip !143
  %630 = call i8 @llvm.ctpop.i8(i8 %629), !mcsema_real_eip !143
  %631 = trunc i8 %630 to i1, !mcsema_real_eip !143
  %632 = xor i1 %631, true, !mcsema_real_eip !143
  store i1 %632, i1* %PF, !mcsema_real_eip !143
  %633 = icmp eq i32 %624, 0, !mcsema_real_eip !143
  store i1 %633, i1* %ZF, !mcsema_real_eip !143
  %634 = lshr i32 %624, 31, !mcsema_real_eip !143
  %635 = trunc i32 %634 to i1, !mcsema_real_eip !143
  store i1 %635, i1* %SF, !mcsema_real_eip !143
  %636 = icmp ult i32 %623, 11, !mcsema_real_eip !143
  store i1 %636, i1* %CF, !mcsema_real_eip !143
  %637 = xor i32 %623, 11, !mcsema_real_eip !143
  %638 = and i32 %637, %625, !mcsema_real_eip !143
  %639 = lshr i32 %638, 31, !mcsema_real_eip !143
  %640 = trunc i32 %639 to i1, !mcsema_real_eip !143
  store i1 %640, i1* %OF, !mcsema_real_eip !143
  %641 = icmp eq i1 %635, %640, !mcsema_real_eip !144
  %642 = icmp eq i1 %641, false, !mcsema_real_eip !144
  br i1 %642, label %block_0x28f, label %block_0x283, !mcsema_real_eip !144
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !145
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !145
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !145
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !145
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !145
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !145
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !145
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !145
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !145
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !145
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !145
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !145
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !145
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !145
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !145
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !145
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !145
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !145
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !145
  br label %block_0x0, !mcsema_real_eip !145

block_0x0:                                        ; preds = %entry
  %RBP_val.203 = load i64, i64* %XBP, !mcsema_real_eip !145
  %RSP_val.204 = load i64, i64* %XSP, !mcsema_real_eip !145
  %1 = sub i64 %RSP_val.204, 8, !mcsema_real_eip !145
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !145
  store i64 %RBP_val.203, i64* %2, !mcsema_real_eip !145
  store i64 %1, i64* %XSP, !mcsema_real_eip !145
  store i64 %1, i64* %XBP, !mcsema_real_eip !146
  %3 = sub i64 %1, 32, !mcsema_real_eip !147
  %4 = xor i64 %3, %1, !mcsema_real_eip !147
  %5 = xor i64 %4, 32, !mcsema_real_eip !147
  %6 = and i64 %5, 16, !mcsema_real_eip !147
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !147
  store i1 %7, i1* %AF, !mcsema_real_eip !147
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !147
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !147
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !147
  %11 = xor i1 %10, true, !mcsema_real_eip !147
  store i1 %11, i1* %PF, !mcsema_real_eip !147
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !147
  store i1 %12, i1* %ZF, !mcsema_real_eip !147
  %13 = lshr i64 %3, 63, !mcsema_real_eip !147
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !147
  store i1 %14, i1* %SF, !mcsema_real_eip !147
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !147
  store i1 %15, i1* %CF, !mcsema_real_eip !147
  %16 = xor i64 %1, 32, !mcsema_real_eip !147
  %17 = and i64 %16, %4, !mcsema_real_eip !147
  %18 = lshr i64 %17, 63, !mcsema_real_eip !147
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !147
  store i1 %19, i1* %OF, !mcsema_real_eip !147
  store i64 %3, i64* %XSP, !mcsema_real_eip !147
  %20 = add i64 %1, -4, !mcsema_real_eip !148
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !148
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !148
  store i32 0, i32* %22, !mcsema_real_eip !148
  br label %block_0xf, !mcsema_real_eip !149

block_0xf:                                        ; preds = %block_0x69, %block_0x0
  %RBP_val.208 = load i64, i64* %XBP, !mcsema_real_eip !149
  %23 = add i64 %RBP_val.208, -4, !mcsema_real_eip !149
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !149
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !149
  %26 = load i32, i32* %25, !mcsema_real_eip !149
  %27 = sub i32 %26, 7, !mcsema_real_eip !149
  %28 = xor i32 %27, %26, !mcsema_real_eip !149
  %29 = xor i32 %28, 7, !mcsema_real_eip !149
  %30 = and i32 %29, 16, !mcsema_real_eip !149
  %31 = icmp ne i32 %30, 0, !mcsema_real_eip !149
  store i1 %31, i1* %AF, !mcsema_real_eip !149
  %32 = trunc i32 %27 to i8, !mcsema_real_eip !149
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !149
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !149
  %35 = xor i1 %34, true, !mcsema_real_eip !149
  store i1 %35, i1* %PF, !mcsema_real_eip !149
  %36 = icmp eq i32 %27, 0, !mcsema_real_eip !149
  store i1 %36, i1* %ZF, !mcsema_real_eip !149
  %37 = lshr i32 %27, 31, !mcsema_real_eip !149
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !149
  store i1 %38, i1* %SF, !mcsema_real_eip !149
  %39 = icmp ult i32 %26, 7, !mcsema_real_eip !149
  store i1 %39, i1* %CF, !mcsema_real_eip !149
  %40 = xor i32 %26, 7, !mcsema_real_eip !149
  %41 = and i32 %40, %28, !mcsema_real_eip !149
  %42 = lshr i32 %41, 31, !mcsema_real_eip !149
  %43 = trunc i32 %42 to i1, !mcsema_real_eip !149
  store i1 %43, i1* %OF, !mcsema_real_eip !149
  %44 = icmp eq i1 %38, %43, !mcsema_real_eip !150
  br i1 %44, label %block_0x8b, label %block_0x19, !mcsema_real_eip !150

block_0x19:                                       ; preds = %block_0xf
  %45 = add i64 %RBP_val.208, -8, !mcsema_real_eip !151
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !151
  %47 = inttoptr i64 %45 to i32*, !mcsema_real_eip !151
  store i32 0, i32* %47, !mcsema_real_eip !151
  br label %block_0x20, !mcsema_real_eip !152

block_0x8b:                                       ; preds = %block_0xf
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !153
  %AL.209 = bitcast i64* %XAX to i8*, !mcsema_real_eip !154
  store i8 0, i8* %AL.209, !mcsema_real_eip !154
  %RSI_val.211 = load i64, i64* %XSI, !mcsema_real_eip !155
  %RSP_val.212 = load i64, i64* %XSP, !mcsema_real_eip !155
  %48 = sub i64 %RSP_val.212, 8, !mcsema_real_eip !155
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !155
  store i64 -2415393069852865332, i64* %49, !mcsema_real_eip !155
  store i64 %48, i64* %XSP, !mcsema_real_eip !155
  %50 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.211), !mcsema_real_eip !155
  store i64 %50, i64* %XAX, !mcsema_real_eip !155
  %RBP_val.213 = load i64, i64* %XBP, !mcsema_real_eip !156
  %51 = add i64 %RBP_val.213, -20, !mcsema_real_eip !156
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !156
  %EAX.214 = bitcast i64* %XAX to i32*, !mcsema_real_eip !156
  %EAX_val.215 = load i32, i32* %EAX.214, !mcsema_real_eip !156
  %53 = inttoptr i64 %51 to i32*, !mcsema_real_eip !156
  store i32 %EAX_val.215, i32* %53, !mcsema_real_eip !156
  %RSP_val.216 = load i64, i64* %XSP, !mcsema_real_eip !157
  %54 = add i64 32, %RSP_val.216, !mcsema_real_eip !157
  %55 = xor i64 %54, %RSP_val.216, !mcsema_real_eip !157
  %56 = xor i64 %55, 32, !mcsema_real_eip !157
  %57 = and i64 %56, 16, !mcsema_real_eip !157
  %58 = icmp ne i64 %57, 0, !mcsema_real_eip !157
  store i1 %58, i1* %AF, !mcsema_real_eip !157
  %59 = lshr i64 %54, 63, !mcsema_real_eip !157
  %60 = trunc i64 %59 to i1, !mcsema_real_eip !157
  store i1 %60, i1* %SF, !mcsema_real_eip !157
  %61 = icmp eq i64 %54, 0, !mcsema_real_eip !157
  store i1 %61, i1* %ZF, !mcsema_real_eip !157
  %62 = xor i64 %RSP_val.216, 32, !mcsema_real_eip !157
  %63 = xor i64 %62, -1, !mcsema_real_eip !157
  %64 = and i64 %63, %55, !mcsema_real_eip !157
  %65 = lshr i64 %64, 63, !mcsema_real_eip !157
  %66 = and i64 %65, 1, !mcsema_real_eip !157
  %67 = trunc i64 %66 to i1, !mcsema_real_eip !157
  store i1 %67, i1* %OF, !mcsema_real_eip !157
  %68 = trunc i64 %54 to i8, !mcsema_real_eip !157
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !157
  %70 = trunc i8 %69 to i1, !mcsema_real_eip !157
  %71 = xor i1 %70, true, !mcsema_real_eip !157
  store i1 %71, i1* %PF, !mcsema_real_eip !157
  %72 = icmp ult i64 %54, %RSP_val.216, !mcsema_real_eip !157
  store i1 %72, i1* %CF, !mcsema_real_eip !157
  store i64 %54, i64* %XSP, !mcsema_real_eip !157
  %73 = inttoptr i64 %54 to i64*, !mcsema_real_eip !158
  %74 = load i64, i64* %73, !mcsema_real_eip !158
  store i64 %74, i64* %XBP, !mcsema_real_eip !158
  %75 = add i64 %54, 8, !mcsema_real_eip !158
  store i64 %75, i64* %XSP, !mcsema_real_eip !158
  %76 = add i64 %75, 8, !mcsema_real_eip !159
  %77 = inttoptr i64 %75 to i64*, !mcsema_real_eip !159
  %78 = load i64, i64* %77, !mcsema_real_eip !159
  store i64 %78, i64* %XIP, !mcsema_real_eip !159
  store i64 %76, i64* %XSP, !mcsema_real_eip !159
  ret void, !mcsema_real_eip !159

block_0x20:                                       ; preds = %block_0x2a, %block_0x19
  %RBP_val.220 = load i64, i64* %XBP, !mcsema_real_eip !152
  %79 = add i64 %RBP_val.220, -8, !mcsema_real_eip !152
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !152
  %81 = inttoptr i64 %79 to i32*, !mcsema_real_eip !152
  %82 = load i32, i32* %81, !mcsema_real_eip !152
  %83 = sub i32 %82, 11, !mcsema_real_eip !152
  %84 = xor i32 %83, %82, !mcsema_real_eip !152
  %85 = xor i32 %84, 11, !mcsema_real_eip !152
  %86 = and i32 %85, 16, !mcsema_real_eip !152
  %87 = icmp ne i32 %86, 0, !mcsema_real_eip !152
  store i1 %87, i1* %AF, !mcsema_real_eip !152
  %88 = trunc i32 %83 to i8, !mcsema_real_eip !152
  %89 = call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !152
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !152
  %91 = xor i1 %90, true, !mcsema_real_eip !152
  store i1 %91, i1* %PF, !mcsema_real_eip !152
  %92 = icmp eq i32 %83, 0, !mcsema_real_eip !152
  store i1 %92, i1* %ZF, !mcsema_real_eip !152
  %93 = lshr i32 %83, 31, !mcsema_real_eip !152
  %94 = trunc i32 %93 to i1, !mcsema_real_eip !152
  store i1 %94, i1* %SF, !mcsema_real_eip !152
  %95 = icmp ult i32 %82, 11, !mcsema_real_eip !152
  store i1 %95, i1* %CF, !mcsema_real_eip !152
  %96 = xor i32 %82, 11, !mcsema_real_eip !152
  %97 = and i32 %96, %84, !mcsema_real_eip !152
  %98 = lshr i32 %97, 31, !mcsema_real_eip !152
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !152
  store i1 %99, i1* %OF, !mcsema_real_eip !152
  %100 = icmp eq i1 %94, %99, !mcsema_real_eip !160
  br i1 %100, label %block_0x69, label %block_0x2a, !mcsema_real_eip !160

block_0x2a:                                       ; preds = %block_0x20
  store i64 ptrtoint (%2* @data_0x42d to i64), i64* %XDI, !mcsema_real_eip !161
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !162
  %101 = add i64 %RBP_val.220, -4, !mcsema_real_eip !163
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !163
  %103 = inttoptr i64 %101 to i32*, !mcsema_real_eip !163
  %104 = load i32, i32* %103, !mcsema_real_eip !163
  %105 = sext i32 %104 to i64, !mcsema_real_eip !163
  store i64 %105, i64* %XCX, !mcsema_real_eip !163
  %106 = sext i64 %105 to i128, !mcsema_real_eip !164
  %107 = mul i128 %106, 11, !mcsema_real_eip !164
  %108 = trunc i128 %107 to i64, !mcsema_real_eip !164
  %109 = sext i64 %108 to i128, !mcsema_real_eip !164
  %110 = icmp ne i128 %109, %107, !mcsema_real_eip !164
  %111 = icmp slt i64 %108, 0, !mcsema_real_eip !164
  store i1 %111, i1* %SF, !mcsema_real_eip !164
  store i1 %110, i1* %OF, !mcsema_real_eip !164
  store i1 %110, i1* %CF, !mcsema_real_eip !164
  store i64 %108, i64* %XCX, !mcsema_real_eip !164
  %112 = add i64 %108, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !165
  %113 = xor i64 %112, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !165
  %114 = xor i64 %113, %108, !mcsema_real_eip !165
  %115 = and i64 %114, 16, !mcsema_real_eip !165
  %116 = icmp ne i64 %115, 0, !mcsema_real_eip !165
  store i1 %116, i1* %AF, !mcsema_real_eip !165
  %117 = lshr i64 %112, 63, !mcsema_real_eip !165
  %118 = trunc i64 %117 to i1, !mcsema_real_eip !165
  store i1 %118, i1* %SF, !mcsema_real_eip !165
  %119 = icmp eq i64 %112, 0, !mcsema_real_eip !165
  store i1 %119, i1* %ZF, !mcsema_real_eip !165
  %120 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %108, !mcsema_real_eip !165
  %121 = xor i64 %120, -1, !mcsema_real_eip !165
  %122 = and i64 %121, %113, !mcsema_real_eip !165
  %123 = lshr i64 %122, 63, !mcsema_real_eip !165
  %124 = and i64 %123, 1, !mcsema_real_eip !165
  %125 = trunc i64 %124 to i1, !mcsema_real_eip !165
  store i1 %125, i1* %OF, !mcsema_real_eip !165
  %126 = trunc i64 %112 to i8, !mcsema_real_eip !165
  %127 = call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !165
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !165
  %129 = xor i1 %128, true, !mcsema_real_eip !165
  store i1 %129, i1* %PF, !mcsema_real_eip !165
  %130 = icmp ult i64 %112, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !165
  store i1 %130, i1* %CF, !mcsema_real_eip !165
  store i64 %112, i64* %XAX, !mcsema_real_eip !165
  %131 = load i32, i32* %81, !mcsema_real_eip !166
  %132 = sext i32 %131 to i64, !mcsema_real_eip !166
  store i64 %132, i64* %XCX, !mcsema_real_eip !166
  %133 = add i64 %112, %132, !mcsema_real_eip !167
  %134 = inttoptr i64 %133 to i64*, !mcsema_real_eip !167
  %135 = inttoptr i64 %133 to i8*, !mcsema_real_eip !167
  %136 = load i8, i8* %135, !mcsema_real_eip !167
  %137 = sext i8 %136 to i32, !mcsema_real_eip !167
  %138 = zext i32 %137 to i64, !mcsema_real_eip !167
  store i64 %138, i64* %XSI, !mcsema_real_eip !167
  %AL.241 = bitcast i64* %XAX to i8*, !mcsema_real_eip !168
  store i8 0, i8* %AL.241, !mcsema_real_eip !168
  %RSP_val.244 = load i64, i64* %XSP, !mcsema_real_eip !169
  %139 = sub i64 %RSP_val.244, 8, !mcsema_real_eip !169
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !169
  store i64 -2415393069852865332, i64* %140, !mcsema_real_eip !169
  store i64 %139, i64* %XSP, !mcsema_real_eip !169
  %141 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%2* @data_0x42d to i64), i64 %138), !mcsema_real_eip !169
  store i64 %141, i64* %XAX, !mcsema_real_eip !169
  %RBP_val.245 = load i64, i64* %XBP, !mcsema_real_eip !170
  %142 = add i64 %RBP_val.245, -12, !mcsema_real_eip !170
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !170
  %EAX.246 = bitcast i64* %XAX to i32*, !mcsema_real_eip !170
  %EAX_val.247 = load i32, i32* %EAX.246, !mcsema_real_eip !170
  %144 = inttoptr i64 %142 to i32*, !mcsema_real_eip !170
  store i32 %EAX_val.247, i32* %144, !mcsema_real_eip !170
  %RBP_val.248 = load i64, i64* %XBP, !mcsema_real_eip !171
  %145 = add i64 %RBP_val.248, -8, !mcsema_real_eip !171
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !171
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !171
  %148 = load i32, i32* %147, !mcsema_real_eip !171
  %149 = zext i32 %148 to i64, !mcsema_real_eip !171
  store i64 %149, i64* %XAX, !mcsema_real_eip !171
  %EAX_val.250 = load i32, i32* %EAX.246, !mcsema_real_eip !172
  %150 = add i32 1, %EAX_val.250, !mcsema_real_eip !172
  %151 = xor i32 %150, %EAX_val.250, !mcsema_real_eip !172
  %152 = xor i32 %151, 1, !mcsema_real_eip !172
  %153 = and i32 %152, 16, !mcsema_real_eip !172
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !172
  store i1 %154, i1* %AF, !mcsema_real_eip !172
  %155 = lshr i32 %150, 31, !mcsema_real_eip !172
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !172
  store i1 %156, i1* %SF, !mcsema_real_eip !172
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !172
  store i1 %157, i1* %ZF, !mcsema_real_eip !172
  %158 = xor i32 %EAX_val.250, 1, !mcsema_real_eip !172
  %159 = xor i32 %158, -1, !mcsema_real_eip !172
  %160 = and i32 %159, %151, !mcsema_real_eip !172
  %161 = lshr i32 %160, 31, !mcsema_real_eip !172
  %162 = and i32 %161, 1, !mcsema_real_eip !172
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !172
  store i1 %163, i1* %OF, !mcsema_real_eip !172
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !172
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !172
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !172
  %167 = xor i1 %166, true, !mcsema_real_eip !172
  store i1 %167, i1* %PF, !mcsema_real_eip !172
  %168 = icmp ult i32 %150, %EAX_val.250, !mcsema_real_eip !172
  store i1 %168, i1* %CF, !mcsema_real_eip !172
  %169 = zext i32 %150 to i64, !mcsema_real_eip !172
  store i64 %169, i64* %XAX, !mcsema_real_eip !172
  %EAX_val.253 = load i32, i32* %EAX.246, !mcsema_real_eip !173
  store i32 %EAX_val.253, i32* %147, !mcsema_real_eip !173
  br label %block_0x20, !mcsema_real_eip !174

block_0x69:                                       ; preds = %block_0x20
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !175
  %AL.221 = bitcast i64* %XAX to i8*, !mcsema_real_eip !176
  store i8 0, i8* %AL.221, !mcsema_real_eip !176
  %RSI_val.223 = load i64, i64* %XSI, !mcsema_real_eip !177
  %RSP_val.224 = load i64, i64* %XSP, !mcsema_real_eip !177
  %170 = sub i64 %RSP_val.224, 8, !mcsema_real_eip !177
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !177
  store i64 -2415393069852865332, i64* %171, !mcsema_real_eip !177
  store i64 %170, i64* %XSP, !mcsema_real_eip !177
  %172 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.223), !mcsema_real_eip !177
  store i64 %172, i64* %XAX, !mcsema_real_eip !177
  %RBP_val.225 = load i64, i64* %XBP, !mcsema_real_eip !178
  %173 = add i64 %RBP_val.225, -16, !mcsema_real_eip !178
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !178
  %EAX.226 = bitcast i64* %XAX to i32*, !mcsema_real_eip !178
  %EAX_val.227 = load i32, i32* %EAX.226, !mcsema_real_eip !178
  %175 = inttoptr i64 %173 to i32*, !mcsema_real_eip !178
  store i32 %EAX_val.227, i32* %175, !mcsema_real_eip !178
  %RBP_val.228 = load i64, i64* %XBP, !mcsema_real_eip !179
  %176 = add i64 %RBP_val.228, -4, !mcsema_real_eip !179
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !179
  %178 = inttoptr i64 %176 to i32*, !mcsema_real_eip !179
  %179 = load i32, i32* %178, !mcsema_real_eip !179
  %180 = zext i32 %179 to i64, !mcsema_real_eip !179
  store i64 %180, i64* %XAX, !mcsema_real_eip !179
  %EAX_val.230 = load i32, i32* %EAX.226, !mcsema_real_eip !180
  %181 = add i32 1, %EAX_val.230, !mcsema_real_eip !180
  %182 = xor i32 %181, %EAX_val.230, !mcsema_real_eip !180
  %183 = xor i32 %182, 1, !mcsema_real_eip !180
  %184 = and i32 %183, 16, !mcsema_real_eip !180
  %185 = icmp ne i32 %184, 0, !mcsema_real_eip !180
  store i1 %185, i1* %AF, !mcsema_real_eip !180
  %186 = lshr i32 %181, 31, !mcsema_real_eip !180
  %187 = trunc i32 %186 to i1, !mcsema_real_eip !180
  store i1 %187, i1* %SF, !mcsema_real_eip !180
  %188 = icmp eq i32 %181, 0, !mcsema_real_eip !180
  store i1 %188, i1* %ZF, !mcsema_real_eip !180
  %189 = xor i32 %EAX_val.230, 1, !mcsema_real_eip !180
  %190 = xor i32 %189, -1, !mcsema_real_eip !180
  %191 = and i32 %190, %182, !mcsema_real_eip !180
  %192 = lshr i32 %191, 31, !mcsema_real_eip !180
  %193 = and i32 %192, 1, !mcsema_real_eip !180
  %194 = trunc i32 %193 to i1, !mcsema_real_eip !180
  store i1 %194, i1* %OF, !mcsema_real_eip !180
  %195 = trunc i32 %181 to i8, !mcsema_real_eip !180
  %196 = call i8 @llvm.ctpop.i8(i8 %195), !mcsema_real_eip !180
  %197 = trunc i8 %196 to i1, !mcsema_real_eip !180
  %198 = xor i1 %197, true, !mcsema_real_eip !180
  store i1 %198, i1* %PF, !mcsema_real_eip !180
  %199 = icmp ult i32 %181, %EAX_val.230, !mcsema_real_eip !180
  store i1 %199, i1* %CF, !mcsema_real_eip !180
  %200 = zext i32 %181 to i64, !mcsema_real_eip !180
  store i64 %200, i64* %XAX, !mcsema_real_eip !180
  %EAX_val.233 = load i32, i32* %EAX.226, !mcsema_real_eip !181
  store i32 %EAX_val.233, i32* %178, !mcsema_real_eip !181
  br label %block_0xf, !mcsema_real_eip !182
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @exit(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read(i64, i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_exit(i64) #2

; Function Attrs: naked noinline
declare void @main() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_b0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
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
  br label %block_0xb0, !mcsema_real_eip !2

block_0xb0:                                       ; preds = %entry
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
  %EAX.4 = bitcast i64* %XAX to i32*, !mcsema_real_eip !5
  %EAX_val.5 = load i32, i32* %EAX.4, !mcsema_real_eip !5
  store i1 false, i1* %CF, !mcsema_real_eip !5
  store i1 false, i1* %OF, !mcsema_real_eip !5
  store i1 false, i1* %SF, !mcsema_real_eip !5
  store i1 true, i1* %ZF, !mcsema_real_eip !5
  store i1 true, i1* %PF, !mcsema_real_eip !5
  store i1 undef, i1* %AF, !mcsema_real_eip !5
  store i64 0, i64* %XAX, !mcsema_real_eip !5
  store i64 28, i64* %XCX, !mcsema_real_eip !6
  %ECX.8 = bitcast i64* %XCX to i32*, !mcsema_real_eip !7
  %ECX_val.9 = load i32, i32* %ECX.8, !mcsema_real_eip !7
  %14 = zext i32 %ECX_val.9 to i64, !mcsema_real_eip !7
  store i64 %14, i64* %XDX, !mcsema_real_eip !7
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -64
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !8
  store i64 %15, i64* %R8, !mcsema_real_eip !8
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %R9, !mcsema_real_eip !9
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !10
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !10
  store i32 0, i32* %17, !mcsema_real_eip !10
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EDI.13 = bitcast i64* %XDI to i32*, !mcsema_real_eip !11
  %EDI_val.14 = load i32, i32* %EDI.13, !mcsema_real_eip !11
  %18 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !11
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !11
  store i32 %EDI_val.14, i32* %19, !mcsema_real_eip !11
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -16
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.16 = load i64, i64* %XSI, !mcsema_real_eip !12
  store i64 %RSI_val.16, i64* %_allin_new_bt_24, !mcsema_real_eip !12
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -36
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !13
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !13
  store i32 0, i32* %21, !mcsema_real_eip !13
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -20
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %22 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !14
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !14
  store i32 1, i32* %23, !mcsema_real_eip !14
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !15
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !15
  store i32 1, i32* %25, !mcsema_real_eip !15
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !16
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !16
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %27 to i8*
  %_offset_above_rbp_ = sub i64 %26, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %28, label %29

; <label>:28:                                     ; preds = %block_0xb0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %29

; <label>:29:                                     ; preds = %block_0xb0, %28
  %30 = phi i32* [ %27, %block_0xb0 ], [ %_address_in_parent_stack_bt_, %28 ]
  %_new_load_ = load i32, i32* %30
  %31 = sext i32 %_new_load_ to i64, !mcsema_real_eip !16
  store i64 %31, i64* %XSI, !mcsema_real_eip !16
  %32 = sext i64 %31 to i128, !mcsema_real_eip !17
  %33 = mul i128 %32, 11, !mcsema_real_eip !17
  %34 = trunc i128 %33 to i64, !mcsema_real_eip !17
  %35 = sext i64 %34 to i128, !mcsema_real_eip !17
  %36 = icmp ne i128 %35, %33, !mcsema_real_eip !17
  %37 = icmp slt i64 %34, 0, !mcsema_real_eip !17
  store i1 %37, i1* %SF, !mcsema_real_eip !17
  store i1 %36, i1* %OF, !mcsema_real_eip !17
  store i1 %36, i1* %CF, !mcsema_real_eip !17
  store i64 %34, i64* %XSI, !mcsema_real_eip !17
  %R9_val.22 = load i64, i64* %R9, !mcsema_real_eip !18
  %38 = add i64 %34, %R9_val.22, !mcsema_real_eip !18
  %39 = xor i64 %38, %R9_val.22, !mcsema_real_eip !18
  %40 = xor i64 %39, %34, !mcsema_real_eip !18
  %41 = and i64 %40, 16, !mcsema_real_eip !18
  %42 = icmp ne i64 %41, 0, !mcsema_real_eip !18
  store i1 %42, i1* %AF, !mcsema_real_eip !18
  %43 = lshr i64 %38, 63, !mcsema_real_eip !18
  %44 = trunc i64 %43 to i1, !mcsema_real_eip !18
  store i1 %44, i1* %SF, !mcsema_real_eip !18
  %45 = icmp eq i64 %38, 0, !mcsema_real_eip !18
  store i1 %45, i1* %ZF, !mcsema_real_eip !18
  %46 = xor i64 %R9_val.22, %34, !mcsema_real_eip !18
  %47 = xor i64 %46, -1, !mcsema_real_eip !18
  %48 = and i64 %47, %39, !mcsema_real_eip !18
  %49 = lshr i64 %48, 63, !mcsema_real_eip !18
  %50 = and i64 %49, 1, !mcsema_real_eip !18
  %51 = trunc i64 %50 to i1, !mcsema_real_eip !18
  store i1 %51, i1* %OF, !mcsema_real_eip !18
  %52 = trunc i64 %38 to i8, !mcsema_real_eip !18
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !18
  %54 = trunc i8 %53 to i1, !mcsema_real_eip !18
  %55 = xor i1 %54, true, !mcsema_real_eip !18
  store i1 %55, i1* %PF, !mcsema_real_eip !18
  %56 = icmp ult i64 %38, %R9_val.22, !mcsema_real_eip !18
  store i1 %56, i1* %CF, !mcsema_real_eip !18
  store i64 %38, i64* %R9, !mcsema_real_eip !18
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -20
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %57 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !19
  %58 = inttoptr i64 %57 to i32*, !mcsema_real_eip !19
  %_ptr_bt_267 = bitcast i32* %58 to i8*
  %_offset_above_rbp_268 = sub i64 %57, %_local_end_to_int_
  %_pot_address_in_parent_stack_269 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_268
  %_cond1_270 = icmp ugt i8* %_ptr_bt_267, %_local_stack_end_ptr_
  %_cond2_1_271 = icmp ugt i8* %_ptr_bt_267, %_parent_stack_end_ptr_
  %_cond2_2_272 = icmp ult i8* %_ptr_bt_267, %_parent_stack_start_ptr_
  %_cond2_273 = or i1 %_cond2_1_271, %_cond2_2_272
  %_cond4_274 = icmp ule i8* %_pot_address_in_parent_stack_269, %_parent_stack_end_ptr_
  %_cond1_n_cond2_275 = and i1 %_cond1_270, %_cond2_273
  %_cond1_n_cond2_cond3_276 = and i1 %_cond1_n_cond2_275, %_cond4_274
  br i1 %_cond1_n_cond2_cond3_276, label %59, label %60

; <label>:59:                                     ; preds = %29
  %_address_in_parent_stack_bt_278 = bitcast i8* %_pot_address_in_parent_stack_269 to i32*
  br label %60

; <label>:60:                                     ; preds = %29, %59
  %61 = phi i32* [ %58, %29 ], [ %_address_in_parent_stack_bt_278, %59 ]
  %_new_load_279 = load i32, i32* %61
  %62 = sext i32 %_new_load_279 to i64, !mcsema_real_eip !19
  store i64 %62, i64* %XSI, !mcsema_real_eip !19
  %63 = add i64 %38, %62, !mcsema_real_eip !20
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !20
  %65 = inttoptr i64 %63 to i8*, !mcsema_real_eip !20
  store i8 88, i8* %65, !mcsema_real_eip !20
  %EAX_val.28 = load i32, i32* %EAX.4, !mcsema_real_eip !21
  %66 = zext i32 %EAX_val.28 to i64, !mcsema_real_eip !21
  store i64 %66, i64* %XDI, !mcsema_real_eip !21
  %R8_val.29 = load i64, i64* %R8, !mcsema_real_eip !22
  store i64 %R8_val.29, i64* %XSI, !mcsema_real_eip !22
  %RDX_val.32 = load i64, i64* %XDX, !mcsema_real_eip !23
  %_load_rsp_ptr_40 = load i8*, i8** %_RSP_ptr_
  %RSP_val.33 = load i64, i64* %XSP, !mcsema_real_eip !23
  %_new_gep_41 = getelementptr i8, i8* %_load_rsp_ptr_40, i64 -8
  %67 = sub i64 %RSP_val.33, 8, !mcsema_real_eip !23
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_42, !mcsema_real_eip !23
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %67, i64* %XSP, !mcsema_real_eip !23
  %68 = call x86_64_sysvcc i64 @_read(i64 %66, i64 %R8_val.29, i64 %RDX_val.32)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %68, i64* %XAX, !mcsema_real_eip !23
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -72
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %68, i64* %_allin_new_bt_45, !mcsema_real_eip !24
  br label %block_0x114, !mcsema_real_eip !25

block_0x114:                                      ; preds = %580, %60
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -36
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %69 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !25
  %70 = inttoptr i64 %69 to i32*, !mcsema_real_eip !25
  %_ptr_bt_282 = bitcast i32* %70 to i8*
  %_offset_above_rbp_283 = sub i64 %69, %_local_end_to_int_
  %_pot_address_in_parent_stack_284 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_283
  %_cond1_285 = icmp ugt i8* %_ptr_bt_282, %_local_stack_end_ptr_
  %_cond2_1_286 = icmp ugt i8* %_ptr_bt_282, %_parent_stack_end_ptr_
  %_cond2_2_287 = icmp ult i8* %_ptr_bt_282, %_parent_stack_start_ptr_
  %_cond2_288 = or i1 %_cond2_1_286, %_cond2_2_287
  %_cond4_289 = icmp ule i8* %_pot_address_in_parent_stack_284, %_parent_stack_end_ptr_
  %_cond1_n_cond2_290 = and i1 %_cond1_285, %_cond2_288
  %_cond1_n_cond2_cond3_291 = and i1 %_cond1_n_cond2_290, %_cond4_289
  br i1 %_cond1_n_cond2_cond3_291, label %71, label %72

; <label>:71:                                     ; preds = %block_0x114
  %_address_in_parent_stack_bt_293 = bitcast i8* %_pot_address_in_parent_stack_284 to i32*
  br label %72

; <label>:72:                                     ; preds = %block_0x114, %71
  %73 = phi i32* [ %70, %block_0x114 ], [ %_address_in_parent_stack_bt_293, %71 ]
  %_new_load_294 = load i32, i32* %73
  %74 = sub i32 %_new_load_294, 28, !mcsema_real_eip !25
  %75 = xor i32 %74, %_new_load_294, !mcsema_real_eip !25
  %76 = xor i32 %75, 28, !mcsema_real_eip !25
  %77 = and i32 %76, 16, !mcsema_real_eip !25
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !25
  store i1 %78, i1* %AF, !mcsema_real_eip !25
  %79 = trunc i32 %74 to i8, !mcsema_real_eip !25
  %80 = call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !25
  %81 = trunc i8 %80 to i1, !mcsema_real_eip !25
  %82 = xor i1 %81, true, !mcsema_real_eip !25
  store i1 %82, i1* %PF, !mcsema_real_eip !25
  %83 = icmp eq i32 %74, 0, !mcsema_real_eip !25
  store i1 %83, i1* %ZF, !mcsema_real_eip !25
  %84 = lshr i32 %74, 31, !mcsema_real_eip !25
  %85 = trunc i32 %84 to i1, !mcsema_real_eip !25
  store i1 %85, i1* %SF, !mcsema_real_eip !25
  %86 = icmp ult i32 %_new_load_294, 28, !mcsema_real_eip !25
  store i1 %86, i1* %CF, !mcsema_real_eip !25
  %87 = xor i32 %_new_load_294, 28, !mcsema_real_eip !25
  %88 = and i32 %87, %75, !mcsema_real_eip !25
  %89 = lshr i32 %88, 31, !mcsema_real_eip !25
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !25
  store i1 %90, i1* %OF, !mcsema_real_eip !25
  %91 = icmp eq i1 %85, %90, !mcsema_real_eip !26
  br i1 %91, label %block_0x2f7, label %block_0x11e, !mcsema_real_eip !26

block_0x11e:                                      ; preds = %72
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -20
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %92 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !27
  %93 = inttoptr i64 %92 to i32*, !mcsema_real_eip !27
  %_ptr_bt_297 = bitcast i32* %93 to i8*
  %_offset_above_rbp_298 = sub i64 %92, %_local_end_to_int_
  %_pot_address_in_parent_stack_299 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_298
  %_cond1_300 = icmp ugt i8* %_ptr_bt_297, %_local_stack_end_ptr_
  %_cond2_1_301 = icmp ugt i8* %_ptr_bt_297, %_parent_stack_end_ptr_
  %_cond2_2_302 = icmp ult i8* %_ptr_bt_297, %_parent_stack_start_ptr_
  %_cond2_303 = or i1 %_cond2_1_301, %_cond2_2_302
  %_cond4_304 = icmp ule i8* %_pot_address_in_parent_stack_299, %_parent_stack_end_ptr_
  %_cond1_n_cond2_305 = and i1 %_cond1_300, %_cond2_303
  %_cond1_n_cond2_cond3_306 = and i1 %_cond1_n_cond2_305, %_cond4_304
  br i1 %_cond1_n_cond2_cond3_306, label %94, label %95

; <label>:94:                                     ; preds = %block_0x11e
  %_address_in_parent_stack_bt_308 = bitcast i8* %_pot_address_in_parent_stack_299 to i32*
  br label %95

; <label>:95:                                     ; preds = %block_0x11e, %94
  %96 = phi i32* [ %93, %block_0x11e ], [ %_address_in_parent_stack_bt_308, %94 ]
  %_new_load_309 = load i32, i32* %96
  %97 = zext i32 %_new_load_309 to i64, !mcsema_real_eip !27
  store i64 %97, i64* %XAX, !mcsema_real_eip !27
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -28
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %EAX_val.48 = load i32, i32* %EAX.4, !mcsema_real_eip !28
  %98 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !28
  %99 = inttoptr i64 %98 to i32*, !mcsema_real_eip !28
  store i32 %EAX_val.48, i32* %99, !mcsema_real_eip !28
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -24
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %100 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !29
  %101 = inttoptr i64 %100 to i32*, !mcsema_real_eip !29
  %_ptr_bt_312 = bitcast i32* %101 to i8*
  %_offset_above_rbp_313 = sub i64 %100, %_local_end_to_int_
  %_pot_address_in_parent_stack_314 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_313
  %_cond1_315 = icmp ugt i8* %_ptr_bt_312, %_local_stack_end_ptr_
  %_cond2_1_316 = icmp ugt i8* %_ptr_bt_312, %_parent_stack_end_ptr_
  %_cond2_2_317 = icmp ult i8* %_ptr_bt_312, %_parent_stack_start_ptr_
  %_cond2_318 = or i1 %_cond2_1_316, %_cond2_2_317
  %_cond4_319 = icmp ule i8* %_pot_address_in_parent_stack_314, %_parent_stack_end_ptr_
  %_cond1_n_cond2_320 = and i1 %_cond1_315, %_cond2_318
  %_cond1_n_cond2_cond3_321 = and i1 %_cond1_n_cond2_320, %_cond4_319
  br i1 %_cond1_n_cond2_cond3_321, label %102, label %103

; <label>:102:                                    ; preds = %95
  %_address_in_parent_stack_bt_323 = bitcast i8* %_pot_address_in_parent_stack_314 to i32*
  br label %103

; <label>:103:                                    ; preds = %95, %102
  %104 = phi i32* [ %101, %95 ], [ %_address_in_parent_stack_bt_323, %102 ]
  %_new_load_324 = load i32, i32* %104
  %105 = zext i32 %_new_load_324 to i64, !mcsema_real_eip !29
  store i64 %105, i64* %XAX, !mcsema_real_eip !29
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -32
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %EAX_val.52 = load i32, i32* %EAX.4, !mcsema_real_eip !30
  %106 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !30
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !30
  store i32 %EAX_val.52, i32* %107, !mcsema_real_eip !30
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -36
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %108 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !31
  %109 = inttoptr i64 %108 to i32*, !mcsema_real_eip !31
  %_ptr_bt_327 = bitcast i32* %109 to i8*
  %_offset_above_rbp_328 = sub i64 %108, %_local_end_to_int_
  %_pot_address_in_parent_stack_329 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_328
  %_cond1_330 = icmp ugt i8* %_ptr_bt_327, %_local_stack_end_ptr_
  %_cond2_1_331 = icmp ugt i8* %_ptr_bt_327, %_parent_stack_end_ptr_
  %_cond2_2_332 = icmp ult i8* %_ptr_bt_327, %_parent_stack_start_ptr_
  %_cond2_333 = or i1 %_cond2_1_331, %_cond2_2_332
  %_cond4_334 = icmp ule i8* %_pot_address_in_parent_stack_329, %_parent_stack_end_ptr_
  %_cond1_n_cond2_335 = and i1 %_cond1_330, %_cond2_333
  %_cond1_n_cond2_cond3_336 = and i1 %_cond1_n_cond2_335, %_cond4_334
  br i1 %_cond1_n_cond2_cond3_336, label %110, label %111

; <label>:110:                                    ; preds = %103
  %_address_in_parent_stack_bt_338 = bitcast i8* %_pot_address_in_parent_stack_329 to i32*
  br label %111

; <label>:111:                                    ; preds = %103, %110
  %112 = phi i32* [ %109, %103 ], [ %_address_in_parent_stack_bt_338, %110 ]
  %_new_load_339 = load i32, i32* %112
  %113 = sext i32 %_new_load_339 to i64, !mcsema_real_eip !31
  store i64 %113, i64* %XCX, !mcsema_real_eip !31
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -64
  %_new_gep_66 = getelementptr i8, i8* %_new_gep_65, i64 %113
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %114 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !32
  %115 = inttoptr i64 %114 to i8*, !mcsema_real_eip !32
  %_offset_above_rbp_342 = sub i64 %114, %_local_end_to_int_
  %_pot_address_in_parent_stack_343 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_342
  %_cond1_344 = icmp ugt i8* %115, %_local_stack_end_ptr_
  %_cond2_1_345 = icmp ugt i8* %115, %_parent_stack_end_ptr_
  %_cond2_2_346 = icmp ult i8* %115, %_parent_stack_start_ptr_
  %_cond2_347 = or i1 %_cond2_1_345, %_cond2_2_346
  %_cond4_348 = icmp ule i8* %_pot_address_in_parent_stack_343, %_parent_stack_end_ptr_
  %_cond1_n_cond2_349 = and i1 %_cond1_344, %_cond2_347
  %_cond1_n_cond2_cond3_350 = and i1 %_cond1_n_cond2_349, %_cond4_348
  br i1 %_cond1_n_cond2_cond3_350, label %116, label %117

; <label>:116:                                    ; preds = %111
  br label %117

; <label>:117:                                    ; preds = %111, %116
  %118 = phi i8* [ %115, %111 ], [ %_pot_address_in_parent_stack_343, %116 ]
  %_new_load_352 = load i8, i8* %118
  %119 = sext i8 %_new_load_352 to i32, !mcsema_real_eip !32
  %120 = zext i32 %119 to i64, !mcsema_real_eip !32
  store i64 %120, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.57 = load i32, i32* %EAX.4, !mcsema_real_eip !33
  %121 = add i32 -97, %EAX_val.57, !mcsema_real_eip !33
  %122 = xor i32 %121, %EAX_val.57, !mcsema_real_eip !33
  %123 = xor i32 %122, -97, !mcsema_real_eip !33
  %124 = and i32 %123, 16, !mcsema_real_eip !33
  %125 = icmp ne i32 %124, 0, !mcsema_real_eip !33
  store i1 %125, i1* %AF, !mcsema_real_eip !33
  %126 = lshr i32 %121, 31, !mcsema_real_eip !33
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !33
  store i1 %127, i1* %SF, !mcsema_real_eip !33
  %128 = icmp eq i32 %121, 0, !mcsema_real_eip !33
  store i1 %128, i1* %ZF, !mcsema_real_eip !33
  %129 = xor i32 %EAX_val.57, -97, !mcsema_real_eip !33
  %130 = xor i32 %129, -1, !mcsema_real_eip !33
  %131 = and i32 %130, %122, !mcsema_real_eip !33
  %132 = lshr i32 %131, 31, !mcsema_real_eip !33
  %133 = and i32 %132, 1, !mcsema_real_eip !33
  %134 = trunc i32 %133 to i1, !mcsema_real_eip !33
  store i1 %134, i1* %OF, !mcsema_real_eip !33
  %135 = trunc i32 %121 to i8, !mcsema_real_eip !33
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !33
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !33
  %138 = xor i1 %137, true, !mcsema_real_eip !33
  store i1 %138, i1* %PF, !mcsema_real_eip !33
  %139 = icmp ult i32 %121, %EAX_val.57, !mcsema_real_eip !33
  store i1 %139, i1* %CF, !mcsema_real_eip !33
  %140 = zext i32 %121 to i64, !mcsema_real_eip !33
  store i64 %140, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.59 = load i32, i32* %EAX.4, !mcsema_real_eip !34
  %141 = zext i32 %EAX_val.59 to i64, !mcsema_real_eip !34
  store i64 %141, i64* %XCX, !mcsema_real_eip !34
  %142 = sub i32 %EAX_val.59, 22, !mcsema_real_eip !35
  %143 = xor i32 %142, %EAX_val.59, !mcsema_real_eip !35
  %144 = xor i32 %143, 22, !mcsema_real_eip !35
  %145 = and i32 %144, 16, !mcsema_real_eip !35
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !35
  store i1 %146, i1* %AF, !mcsema_real_eip !35
  %147 = trunc i32 %142 to i8, !mcsema_real_eip !35
  %148 = call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !35
  %149 = trunc i8 %148 to i1, !mcsema_real_eip !35
  %150 = xor i1 %149, true, !mcsema_real_eip !35
  store i1 %150, i1* %PF, !mcsema_real_eip !35
  %151 = icmp eq i32 %142, 0, !mcsema_real_eip !35
  store i1 %151, i1* %ZF, !mcsema_real_eip !35
  %152 = lshr i32 %142, 31, !mcsema_real_eip !35
  %153 = trunc i32 %152 to i1, !mcsema_real_eip !35
  store i1 %153, i1* %SF, !mcsema_real_eip !35
  %154 = icmp ult i32 %EAX_val.59, 22, !mcsema_real_eip !35
  store i1 %154, i1* %CF, !mcsema_real_eip !35
  %155 = xor i32 %EAX_val.59, 22, !mcsema_real_eip !35
  %156 = and i32 %155, %143, !mcsema_real_eip !35
  %157 = lshr i32 %156, 31, !mcsema_real_eip !35
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !35
  store i1 %158, i1* %OF, !mcsema_real_eip !35
  %159 = zext i32 %142 to i64, !mcsema_real_eip !35
  store i64 %159, i64* %XAX, !mcsema_real_eip !35
  %_new_gep_69 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -80
  %_allin_new_bt_70 = bitcast i8* %_new_gep_69 to i64*
  store i64 %141, i64* %_allin_new_bt_70, !mcsema_real_eip !36
  %_load_rbp_ptr_71 = load i8*, i8** %_RBP_ptr_
  %_new_gep_72 = getelementptr i8, i8* %_load_rbp_ptr_71, i64 -84
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  %EAX_val.66 = load i32, i32* %EAX.4, !mcsema_real_eip !37
  %160 = ptrtoint i64* %_allin_new_bt_73 to i64, !mcsema_real_eip !37
  %161 = inttoptr i64 %160 to i32*, !mcsema_real_eip !37
  store i32 %EAX_val.66, i32* %161, !mcsema_real_eip !37
  %162 = load i1, i1* %ZF, !mcsema_real_eip !38
  %163 = icmp eq i1 %162, false, !mcsema_real_eip !38
  %164 = load i1, i1* %CF, !mcsema_real_eip !38
  %165 = icmp eq i1 %164, false, !mcsema_real_eip !38
  %166 = and i1 %165, %163, !mcsema_real_eip !38
  br i1 %166, label %block_0x18e, label %block_0x148, !mcsema_real_eip !38

block_0x2f7:                                      ; preds = %72
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !39
  %AL.37 = bitcast i64* %XAX to i8*, !mcsema_real_eip !40
  store i8 0, i8* %AL.37, !mcsema_real_eip !40
  %RSI_val.39 = load i64, i64* %XSI, !mcsema_real_eip !41
  %_load_rsp_ptr_74 = load i8*, i8** %_RSP_ptr_
  %RSP_val.40 = load i64, i64* %XSP, !mcsema_real_eip !41
  %_new_gep_75 = getelementptr i8, i8* %_load_rsp_ptr_74, i64 -8
  %167 = sub i64 %RSP_val.40, 8, !mcsema_real_eip !41
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_76, !mcsema_real_eip !41
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_
  store i64 %167, i64* %XSP, !mcsema_real_eip !41
  %168 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.39)
  %_rsp_fix_243 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_244 = getelementptr i8, i8* %_rsp_fix_243, i64 8
  store i8* %_gep_fix_244, i8** %_RSP_ptr_
  store i64 %168, i64* %XAX, !mcsema_real_eip !41
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -4
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %169 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !42
  %170 = inttoptr i64 %169 to i32*, !mcsema_real_eip !42
  store i32 1, i32* %170, !mcsema_real_eip !42
  %_load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_
  %_new_gep_81 = getelementptr i8, i8* %_load_rbp_ptr_80, i64 -108
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %EAX_val.44 = load i32, i32* %EAX.4, !mcsema_real_eip !43
  %171 = ptrtoint i64* %_allin_new_bt_82 to i64, !mcsema_real_eip !43
  %172 = inttoptr i64 %171 to i32*, !mcsema_real_eip !43
  store i32 %EAX_val.44, i32* %172, !mcsema_real_eip !43
  br label %block_0x312, !mcsema_real_eip !27

block_0x312:                                      ; preds = %block_0x2a7, %block_0x2f7
  %_load_rbp_ptr_83 = load i8*, i8** %_RBP_ptr_
  %_new_gep_84 = getelementptr i8, i8* %_load_rbp_ptr_83, i64 -4
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  %173 = ptrtoint i64* %_allin_new_bt_85 to i64, !mcsema_real_eip !44
  %174 = inttoptr i64 %173 to i32*, !mcsema_real_eip !44
  %_ptr_bt_355 = bitcast i32* %174 to i8*
  %_offset_above_rbp_356 = sub i64 %173, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_ptr_bt_355, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_ptr_bt_355, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_ptr_bt_355, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond1_n_cond2_363, %_cond4_362
  br i1 %_cond1_n_cond2_cond3_364, label %175, label %176

; <label>:175:                                    ; preds = %block_0x312
  %_address_in_parent_stack_bt_366 = bitcast i8* %_pot_address_in_parent_stack_357 to i32*
  br label %176

; <label>:176:                                    ; preds = %block_0x312, %175
  %177 = phi i32* [ %174, %block_0x312 ], [ %_address_in_parent_stack_bt_366, %175 ]
  %_new_load_367 = load i32, i32* %177
  %178 = zext i32 %_new_load_367 to i64, !mcsema_real_eip !44
  store i64 %178, i64* %XAX, !mcsema_real_eip !44
  %_load_rsp_ptr_86 = load i8*, i8** %_RSP_ptr_
  %RSP_val.68 = load i64, i64* %XSP, !mcsema_real_eip !45
  %_new_gep_87 = getelementptr i8, i8* %_load_rsp_ptr_86, i64 112
  %179 = add i64 112, %RSP_val.68, !mcsema_real_eip !45
  %_trans_p2i_88 = ptrtoint i8* %_new_gep_87 to i64
  %_trans_p2i_89 = ptrtoint i8* %_load_rsp_ptr_86 to i64
  %_trans_xor_90 = xor i64 %_trans_p2i_88, %_trans_p2i_89
  %180 = xor i64 %_trans_xor_90, 112, !mcsema_real_eip !45
  %181 = and i64 %180, 16, !mcsema_real_eip !45
  %182 = icmp ne i64 %181, 0, !mcsema_real_eip !45
  store i1 %182, i1* %AF, !mcsema_real_eip !45
  %183 = lshr i64 %179, 63, !mcsema_real_eip !45
  %184 = trunc i64 %183 to i1, !mcsema_real_eip !45
  store i1 %184, i1* %SF, !mcsema_real_eip !45
  %_trans_icmp_eq_92 = icmp eq i64 %_trans_p2i_88, 0
  store i1 %_trans_icmp_eq_92, i1* %ZF, !mcsema_real_eip !45
  %_trans_xor_94 = xor i64 %_trans_p2i_89, 112
  %185 = xor i64 %_trans_xor_94, -1, !mcsema_real_eip !45
  %186 = and i64 %185, %_trans_xor_90, !mcsema_real_eip !45
  %187 = lshr i64 %186, 63, !mcsema_real_eip !45
  %188 = and i64 %187, 1, !mcsema_real_eip !45
  %189 = trunc i64 %188 to i1, !mcsema_real_eip !45
  store i1 %189, i1* %OF, !mcsema_real_eip !45
  %_trans_trunc_99 = trunc i64 %_trans_p2i_88 to i8
  %190 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_99), !mcsema_real_eip !45
  %191 = trunc i8 %190 to i1, !mcsema_real_eip !45
  %192 = xor i1 %191, true, !mcsema_real_eip !45
  store i1 %192, i1* %PF, !mcsema_real_eip !45
  %_trans_icmp_ne_101 = icmp ne i64 %_trans_p2i_88, %RSP_val.68
  store i1 %_trans_icmp_ne_101, i1* %CF, !mcsema_real_eip !45
  store volatile i8* %_new_gep_87, i8** %_RSP_ptr_
  store i64 %179, i64* %XSP, !mcsema_real_eip !45
  %_allin_new_bt_103 = bitcast i8* %_new_gep_87 to i64*
  %_ptr_to_int_368 = ptrtoint i64* %_allin_new_bt_103 to i64
  %_offset_above_rbp_371 = sub i64 %_ptr_to_int_368, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  br i1 %_cond1_n_cond2_cond3_379, label %193, label %194

; <label>:193:                                    ; preds = %176
  %_address_in_parent_stack_bt_381 = bitcast i8* %_pot_address_in_parent_stack_372 to i64*
  br label %194

; <label>:194:                                    ; preds = %176, %193
  %195 = phi i64* [ %_allin_new_bt_103, %176 ], [ %_address_in_parent_stack_bt_381, %193 ]
  %_new_load_382 = load i64, i64* %195
  %_new_int2ptr_ = inttoptr i64 %_new_load_382 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_382, i64* %XBP, !mcsema_real_eip !46
  %_new_gep_104 = getelementptr i8, i8* %_new_gep_87, i64 8
  %196 = add i64 %179, 8, !mcsema_real_eip !46
  store volatile i8* %_new_gep_104, i8** %_RSP_ptr_
  store i64 %196, i64* %XSP, !mcsema_real_eip !46
  %_new_gep_106 = getelementptr i8, i8* %_new_gep_104, i64 8
  %197 = add i64 %196, 8, !mcsema_real_eip !47
  %_allin_new_bt_107 = bitcast i8* %_new_gep_104 to i64*
  %_ptr_to_int_383 = ptrtoint i64* %_allin_new_bt_107 to i64
  %_offset_above_rbp_386 = sub i64 %_ptr_to_int_383, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond1_n_cond2_393, %_cond4_392
  br i1 %_cond1_n_cond2_cond3_394, label %198, label %199

; <label>:198:                                    ; preds = %194
  %_address_in_parent_stack_bt_396 = bitcast i8* %_pot_address_in_parent_stack_387 to i64*
  br label %199

; <label>:199:                                    ; preds = %194, %198
  %200 = phi i64* [ %_allin_new_bt_107, %194 ], [ %_address_in_parent_stack_bt_396, %198 ]
  %_new_load_397 = load i64, i64* %200
  store i64 %_new_load_397, i64* %XIP, !mcsema_real_eip !47
  store volatile i8* %_new_gep_106, i8** %_RSP_ptr_
  store i64 %197, i64* %XSP, !mcsema_real_eip !47
  ret void, !mcsema_real_eip !47

block_0x148:                                      ; preds = %117
  %_load_rbp_ptr_108 = load i8*, i8** %_RBP_ptr_
  %_new_gep_109 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -80
  %_allin_new_bt_110 = bitcast i8* %_new_gep_109 to i64*
  %_ptr_to_int_398 = ptrtoint i64* %_allin_new_bt_110 to i64
  %_offset_above_rbp_401 = sub i64 %_ptr_to_int_398, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_new_gep_109, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_new_gep_109, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_new_gep_109, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  br i1 %_cond1_n_cond2_cond3_409, label %201, label %202

; <label>:201:                                    ; preds = %block_0x148
  %_address_in_parent_stack_bt_411 = bitcast i8* %_pot_address_in_parent_stack_402 to i64*
  br label %202

; <label>:202:                                    ; preds = %block_0x148, %201
  %203 = phi i64* [ %_allin_new_bt_110, %block_0x148 ], [ %_address_in_parent_stack_bt_411, %201 ]
  %_new_load_412 = load i64, i64* %203
  store i64 %_new_load_412, i64* %XAX, !mcsema_real_eip !48
  %204 = mul i64 %_new_load_412, 8, !mcsema_real_eip !49
  %205 = add i64 ptrtoint (%0* @data_0x320 to i64), %204, !mcsema_real_eip !49
  %206 = inttoptr i64 %205 to i64*, !mcsema_real_eip !49
  %_ptr_bt_415 = bitcast i64* %206 to i8*
  %_offset_above_rbp_416 = sub i64 %205, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_ptr_bt_415, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_ptr_bt_415, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_ptr_bt_415, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  br i1 %_cond1_n_cond2_cond3_424, label %207, label %208

; <label>:207:                                    ; preds = %202
  %_address_in_parent_stack_bt_426 = bitcast i8* %_pot_address_in_parent_stack_417 to i64*
  br label %208

; <label>:208:                                    ; preds = %202, %207
  %209 = phi i64* [ %206, %202 ], [ %_address_in_parent_stack_bt_426, %207 ]
  %_new_load_427 = load i64, i64* %209
  store i64 %_new_load_427, i64* %XCX, !mcsema_real_eip !49
  switch i64 %_new_load_427, label %385 [
    i64 342, label %block_0x156
    i64 356, label %block_0x164
    i64 384, label %block_0x180
    i64 398, label %block_0x18e
    i64 370, label %block_0x172
  ], !mcsema_real_eip !50

block_0x18e:                                      ; preds = %208, %117
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64* %XDI, !mcsema_real_eip !51
  %AL.71 = bitcast i64* %XAX to i8*, !mcsema_real_eip !52
  store i8 0, i8* %AL.71, !mcsema_real_eip !52
  %RSI_val.73 = load i64, i64* %XSI, !mcsema_real_eip !53
  %_load_rsp_ptr_111 = load i8*, i8** %_RSP_ptr_
  %RSP_val.74 = load i64, i64* %XSP, !mcsema_real_eip !53
  %_new_gep_112 = getelementptr i8, i8* %_load_rsp_ptr_111, i64 -8
  %210 = sub i64 %RSP_val.74, 8, !mcsema_real_eip !53
  %_allin_new_bt_113 = bitcast i8* %_new_gep_112 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_113, !mcsema_real_eip !53
  store volatile i8* %_new_gep_112, i8** %_RSP_ptr_
  store i64 %210, i64* %XSP, !mcsema_real_eip !53
  %211 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 5), i64 %RSI_val.73)
  %_rsp_fix_245 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_246 = getelementptr i8, i8* %_rsp_fix_245, i64 8
  store i8* %_gep_fix_246, i8** %_RSP_ptr_
  store i64 %211, i64* %XAX, !mcsema_real_eip !53
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 45), i64* %XDI, !mcsema_real_eip !54
  %_load_rbp_ptr_114 = load i8*, i8** %_RBP_ptr_
  %_new_gep_115 = getelementptr i8, i8* %_load_rbp_ptr_114, i64 -88
  %_allin_new_bt_116 = bitcast i8* %_new_gep_115 to i64*
  %EAX_val.77 = load i32, i32* %EAX.4, !mcsema_real_eip !55
  %212 = ptrtoint i64* %_allin_new_bt_116 to i64, !mcsema_real_eip !55
  %213 = inttoptr i64 %212 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.77, i32* %213, !mcsema_real_eip !55
  store i8 0, i8* %AL.71, !mcsema_real_eip !56
  %RDI_val.79 = load i64, i64* %XDI, !mcsema_real_eip !57
  %RSI_val.80 = load i64, i64* %XSI, !mcsema_real_eip !57
  %_load_rsp_ptr_117 = load i8*, i8** %_RSP_ptr_
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !57
  %_new_gep_118 = getelementptr i8, i8* %_load_rsp_ptr_117, i64 -8
  %214 = sub i64 %RSP_val.81, 8, !mcsema_real_eip !57
  %_allin_new_bt_119 = bitcast i8* %_new_gep_118 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_119, !mcsema_real_eip !57
  store volatile i8* %_new_gep_118, i8** %_RSP_ptr_
  store i64 %214, i64* %XSP, !mcsema_real_eip !57
  %215 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.79, i64 %RSI_val.80)
  %_rsp_fix_247 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_248 = getelementptr i8, i8* %_rsp_fix_247, i64 8
  store i8* %_gep_fix_248, i8** %_RSP_ptr_
  store i64 %215, i64* %XAX, !mcsema_real_eip !57
  store i64 4294967295, i64* %XDI, !mcsema_real_eip !58
  %_load_rbp_ptr_120 = load i8*, i8** %_RBP_ptr_
  %_new_gep_121 = getelementptr i8, i8* %_load_rbp_ptr_120, i64 -92
  %_allin_new_bt_122 = bitcast i8* %_new_gep_121 to i64*
  %EAX_val.84 = load i32, i32* %EAX.4, !mcsema_real_eip !59
  %216 = ptrtoint i64* %_allin_new_bt_122 to i64, !mcsema_real_eip !59
  %217 = inttoptr i64 %216 to i32*, !mcsema_real_eip !59
  store i32 %EAX_val.84, i32* %217, !mcsema_real_eip !59
  %RDI_val.85 = load i64, i64* %XDI, !mcsema_real_eip !60
  %_load_rsp_ptr_123 = load i8*, i8** %_RSP_ptr_
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !60
  %_new_gep_124 = getelementptr i8, i8* %_load_rsp_ptr_123, i64 -8
  %218 = sub i64 %RSP_val.86, 8, !mcsema_real_eip !60
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_125, !mcsema_real_eip !60
  store volatile i8* %_new_gep_124, i8** %_RSP_ptr_
  store i64 %218, i64* %XSP, !mcsema_real_eip !60
  %219 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.85)
  %_rsp_fix_249 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_250 = getelementptr i8, i8* %_rsp_fix_249, i64 8
  store i8* %_gep_fix_250, i8** %_RSP_ptr_
  store i64 %219, i64* %XAX, !mcsema_real_eip !60
  br label %block_0x1c0, !mcsema_real_eip !48

block_0x1c0:                                      ; preds = %362, %337, %311, %286, %block_0x18e
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !61
  %_load_rbp_ptr_126 = load i8*, i8** %_RBP_ptr_
  %_new_gep_127 = getelementptr i8, i8* %_load_rbp_ptr_126, i64 -24
  %_allin_new_bt_128 = bitcast i8* %_new_gep_127 to i64*
  %220 = ptrtoint i64* %_allin_new_bt_128 to i64, !mcsema_real_eip !62
  %221 = inttoptr i64 %220 to i32*, !mcsema_real_eip !62
  %_ptr_bt_430 = bitcast i32* %221 to i8*
  %_offset_above_rbp_431 = sub i64 %220, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_ptr_bt_430, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_ptr_bt_430, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_ptr_bt_430, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  br i1 %_cond1_n_cond2_cond3_439, label %222, label %223

; <label>:222:                                    ; preds = %block_0x1c0
  %_address_in_parent_stack_bt_441 = bitcast i8* %_pot_address_in_parent_stack_432 to i32*
  br label %223

; <label>:223:                                    ; preds = %block_0x1c0, %222
  %224 = phi i32* [ %221, %block_0x1c0 ], [ %_address_in_parent_stack_bt_441, %222 ]
  %_new_load_442 = load i32, i32* %224
  %225 = sext i32 %_new_load_442 to i64, !mcsema_real_eip !62
  store i64 %225, i64* %XCX, !mcsema_real_eip !62
  %226 = sext i64 %225 to i128, !mcsema_real_eip !63
  %227 = mul i128 %226, 11, !mcsema_real_eip !63
  %228 = trunc i128 %227 to i64, !mcsema_real_eip !63
  %229 = sext i64 %228 to i128, !mcsema_real_eip !63
  %230 = icmp ne i128 %229, %227, !mcsema_real_eip !63
  %231 = icmp slt i64 %228, 0, !mcsema_real_eip !63
  store i1 %231, i1* %SF, !mcsema_real_eip !63
  store i1 %230, i1* %OF, !mcsema_real_eip !63
  store i1 %230, i1* %CF, !mcsema_real_eip !63
  store i64 %228, i64* %XCX, !mcsema_real_eip !63
  %232 = add i64 %228, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !64
  %233 = xor i64 %232, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !64
  %234 = xor i64 %233, %228, !mcsema_real_eip !64
  %235 = and i64 %234, 16, !mcsema_real_eip !64
  %236 = icmp ne i64 %235, 0, !mcsema_real_eip !64
  store i1 %236, i1* %AF, !mcsema_real_eip !64
  %237 = lshr i64 %232, 63, !mcsema_real_eip !64
  %238 = trunc i64 %237 to i1, !mcsema_real_eip !64
  store i1 %238, i1* %SF, !mcsema_real_eip !64
  %239 = icmp eq i64 %232, 0, !mcsema_real_eip !64
  store i1 %239, i1* %ZF, !mcsema_real_eip !64
  %240 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %228, !mcsema_real_eip !64
  %241 = xor i64 %240, -1, !mcsema_real_eip !64
  %242 = and i64 %241, %233, !mcsema_real_eip !64
  %243 = lshr i64 %242, 63, !mcsema_real_eip !64
  %244 = and i64 %243, 1, !mcsema_real_eip !64
  %245 = trunc i64 %244 to i1, !mcsema_real_eip !64
  store i1 %245, i1* %OF, !mcsema_real_eip !64
  %246 = trunc i64 %232 to i8, !mcsema_real_eip !64
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !64
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !64
  %249 = xor i1 %248, true, !mcsema_real_eip !64
  store i1 %249, i1* %PF, !mcsema_real_eip !64
  %250 = icmp ult i64 %232, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !64
  store i1 %250, i1* %CF, !mcsema_real_eip !64
  store i64 %232, i64* %XAX, !mcsema_real_eip !64
  %_new_gep_130 = getelementptr i8, i8* %_load_rbp_ptr_126, i64 -20
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %251 = ptrtoint i64* %_allin_new_bt_131 to i64, !mcsema_real_eip !65
  %252 = inttoptr i64 %251 to i32*, !mcsema_real_eip !65
  %_ptr_bt_445 = bitcast i32* %252 to i8*
  %_offset_above_rbp_446 = sub i64 %251, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_ptr_bt_445, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_ptr_bt_445, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_ptr_bt_445, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond1_n_cond2_453, %_cond4_452
  br i1 %_cond1_n_cond2_cond3_454, label %253, label %254

; <label>:253:                                    ; preds = %223
  %_address_in_parent_stack_bt_456 = bitcast i8* %_pot_address_in_parent_stack_447 to i32*
  br label %254

; <label>:254:                                    ; preds = %223, %253
  %255 = phi i32* [ %252, %223 ], [ %_address_in_parent_stack_bt_456, %253 ]
  %_new_load_457 = load i32, i32* %255
  %256 = sext i32 %_new_load_457 to i64, !mcsema_real_eip !65
  store i64 %256, i64* %XCX, !mcsema_real_eip !65
  %257 = add i64 %232, %256, !mcsema_real_eip !66
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !66
  %259 = inttoptr i64 %257 to i8*, !mcsema_real_eip !66
  %_offset_above_rbp_460 = sub i64 %257, %_local_end_to_int_
  %_pot_address_in_parent_stack_461 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_460
  %_cond1_462 = icmp ugt i8* %259, %_local_stack_end_ptr_
  %_cond2_1_463 = icmp ugt i8* %259, %_parent_stack_end_ptr_
  %_cond2_2_464 = icmp ult i8* %259, %_parent_stack_start_ptr_
  %_cond2_465 = or i1 %_cond2_1_463, %_cond2_2_464
  %_cond4_466 = icmp ule i8* %_pot_address_in_parent_stack_461, %_parent_stack_end_ptr_
  %_cond1_n_cond2_467 = and i1 %_cond1_462, %_cond2_465
  %_cond1_n_cond2_cond3_468 = and i1 %_cond1_n_cond2_467, %_cond4_466
  br i1 %_cond1_n_cond2_cond3_468, label %260, label %261

; <label>:260:                                    ; preds = %254
  br label %261

; <label>:261:                                    ; preds = %254, %260
  %262 = phi i8* [ %259, %254 ], [ %_pot_address_in_parent_stack_461, %260 ]
  %_new_load_470 = load i8, i8* %262
  %263 = sext i8 %_new_load_470 to i32, !mcsema_real_eip !66
  %264 = zext i32 %263 to i64, !mcsema_real_eip !66
  store i64 %264, i64* %XDX, !mcsema_real_eip !66
  %EDX.97 = bitcast i64* %XDX to i32*, !mcsema_real_eip !67
  %EDX_val.98 = load i32, i32* %EDX.97, !mcsema_real_eip !67
  %265 = sub i32 %EDX_val.98, 35, !mcsema_real_eip !67
  %266 = xor i32 %265, %EDX_val.98, !mcsema_real_eip !67
  %267 = xor i32 %266, 35, !mcsema_real_eip !67
  %268 = and i32 %267, 16, !mcsema_real_eip !67
  %269 = icmp ne i32 %268, 0, !mcsema_real_eip !67
  store i1 %269, i1* %AF, !mcsema_real_eip !67
  %270 = trunc i32 %265 to i8, !mcsema_real_eip !67
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !67
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !67
  %273 = xor i1 %272, true, !mcsema_real_eip !67
  store i1 %273, i1* %PF, !mcsema_real_eip !67
  %274 = icmp eq i32 %265, 0, !mcsema_real_eip !67
  store i1 %274, i1* %ZF, !mcsema_real_eip !67
  %275 = lshr i32 %265, 31, !mcsema_real_eip !67
  %276 = trunc i32 %275 to i1, !mcsema_real_eip !67
  store i1 %276, i1* %SF, !mcsema_real_eip !67
  %277 = icmp ult i32 %EDX_val.98, 35, !mcsema_real_eip !67
  store i1 %277, i1* %CF, !mcsema_real_eip !67
  %278 = xor i32 %EDX_val.98, 35, !mcsema_real_eip !67
  %279 = and i32 %278, %266, !mcsema_real_eip !67
  %280 = lshr i32 %279, 31, !mcsema_real_eip !67
  %281 = trunc i32 %280 to i1, !mcsema_real_eip !67
  store i1 %281, i1* %OF, !mcsema_real_eip !67
  %282 = icmp eq i1 %274, false, !mcsema_real_eip !68
  br i1 %282, label %block_0x219, label %block_0x1e6, !mcsema_real_eip !68

block_0x156:                                      ; preds = %208
  %_new_gep_133 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -24
  %_allin_new_bt_134 = bitcast i8* %_new_gep_133 to i64*
  %283 = ptrtoint i64* %_allin_new_bt_134 to i64, !mcsema_real_eip !69
  %284 = inttoptr i64 %283 to i32*, !mcsema_real_eip !69
  %_ptr_bt_473 = bitcast i32* %284 to i8*
  %_offset_above_rbp_474 = sub i64 %283, %_local_end_to_int_
  %_pot_address_in_parent_stack_475 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_474
  %_cond1_476 = icmp ugt i8* %_ptr_bt_473, %_local_stack_end_ptr_
  %_cond2_1_477 = icmp ugt i8* %_ptr_bt_473, %_parent_stack_end_ptr_
  %_cond2_2_478 = icmp ult i8* %_ptr_bt_473, %_parent_stack_start_ptr_
  %_cond2_479 = or i1 %_cond2_1_477, %_cond2_2_478
  %_cond4_480 = icmp ule i8* %_pot_address_in_parent_stack_475, %_parent_stack_end_ptr_
  %_cond1_n_cond2_481 = and i1 %_cond1_476, %_cond2_479
  %_cond1_n_cond2_cond3_482 = and i1 %_cond1_n_cond2_481, %_cond4_480
  br i1 %_cond1_n_cond2_cond3_482, label %285, label %286

; <label>:285:                                    ; preds = %block_0x156
  %_address_in_parent_stack_bt_484 = bitcast i8* %_pot_address_in_parent_stack_475 to i32*
  br label %286

; <label>:286:                                    ; preds = %block_0x156, %285
  %287 = phi i32* [ %284, %block_0x156 ], [ %_address_in_parent_stack_bt_484, %285 ]
  %_new_load_485 = load i32, i32* %287
  %288 = zext i32 %_new_load_485 to i64, !mcsema_real_eip !69
  store i64 %288, i64* %XAX, !mcsema_real_eip !69
  %EAX_val.119 = load i32, i32* %EAX.4, !mcsema_real_eip !70
  %289 = add i32 -1, %EAX_val.119, !mcsema_real_eip !70
  %290 = xor i32 %289, %EAX_val.119, !mcsema_real_eip !70
  %291 = xor i32 %290, -1, !mcsema_real_eip !70
  %292 = and i32 %291, 16, !mcsema_real_eip !70
  %293 = icmp ne i32 %292, 0, !mcsema_real_eip !70
  store i1 %293, i1* %AF, !mcsema_real_eip !70
  %294 = lshr i32 %289, 31, !mcsema_real_eip !70
  %295 = trunc i32 %294 to i1, !mcsema_real_eip !70
  store i1 %295, i1* %SF, !mcsema_real_eip !70
  %296 = icmp eq i32 %289, 0, !mcsema_real_eip !70
  store i1 %296, i1* %ZF, !mcsema_real_eip !70
  %297 = xor i32 %EAX_val.119, -1, !mcsema_real_eip !70
  %298 = and i32 %EAX_val.119, %290, !mcsema_real_eip !70
  %299 = lshr i32 %298, 31, !mcsema_real_eip !70
  %300 = and i32 %299, 1, !mcsema_real_eip !70
  %301 = trunc i32 %300 to i1, !mcsema_real_eip !70
  store i1 %301, i1* %OF, !mcsema_real_eip !70
  %302 = trunc i32 %289 to i8, !mcsema_real_eip !70
  %303 = call i8 @llvm.ctpop.i8(i8 %302), !mcsema_real_eip !70
  %304 = trunc i8 %303 to i1, !mcsema_real_eip !70
  %305 = xor i1 %304, true, !mcsema_real_eip !70
  store i1 %305, i1* %PF, !mcsema_real_eip !70
  %306 = icmp ult i32 %289, %EAX_val.119, !mcsema_real_eip !70
  store i1 %306, i1* %CF, !mcsema_real_eip !70
  %307 = zext i32 %289 to i64, !mcsema_real_eip !70
  store i64 %307, i64* %XAX, !mcsema_real_eip !70
  %EAX_val.122 = load i32, i32* %EAX.4, !mcsema_real_eip !71
  store i32 %EAX_val.122, i32* %284, !mcsema_real_eip !71
  br label %block_0x1c0, !mcsema_real_eip !72

block_0x164:                                      ; preds = %208
  %_new_gep_139 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -24
  %_allin_new_bt_140 = bitcast i8* %_new_gep_139 to i64*
  %308 = ptrtoint i64* %_allin_new_bt_140 to i64, !mcsema_real_eip !73
  %309 = inttoptr i64 %308 to i32*, !mcsema_real_eip !73
  %_ptr_bt_488 = bitcast i32* %309 to i8*
  %_offset_above_rbp_489 = sub i64 %308, %_local_end_to_int_
  %_pot_address_in_parent_stack_490 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_489
  %_cond1_491 = icmp ugt i8* %_ptr_bt_488, %_local_stack_end_ptr_
  %_cond2_1_492 = icmp ugt i8* %_ptr_bt_488, %_parent_stack_end_ptr_
  %_cond2_2_493 = icmp ult i8* %_ptr_bt_488, %_parent_stack_start_ptr_
  %_cond2_494 = or i1 %_cond2_1_492, %_cond2_2_493
  %_cond4_495 = icmp ule i8* %_pot_address_in_parent_stack_490, %_parent_stack_end_ptr_
  %_cond1_n_cond2_496 = and i1 %_cond1_491, %_cond2_494
  %_cond1_n_cond2_cond3_497 = and i1 %_cond1_n_cond2_496, %_cond4_495
  br i1 %_cond1_n_cond2_cond3_497, label %310, label %311

; <label>:310:                                    ; preds = %block_0x164
  %_address_in_parent_stack_bt_499 = bitcast i8* %_pot_address_in_parent_stack_490 to i32*
  br label %311

; <label>:311:                                    ; preds = %block_0x164, %310
  %312 = phi i32* [ %309, %block_0x164 ], [ %_address_in_parent_stack_bt_499, %310 ]
  %_new_load_500 = load i32, i32* %312
  %313 = zext i32 %_new_load_500 to i64, !mcsema_real_eip !73
  store i64 %313, i64* %XAX, !mcsema_real_eip !73
  %EAX_val.113 = load i32, i32* %EAX.4, !mcsema_real_eip !74
  %314 = add i32 1, %EAX_val.113, !mcsema_real_eip !74
  %315 = xor i32 %314, %EAX_val.113, !mcsema_real_eip !74
  %316 = xor i32 %315, 1, !mcsema_real_eip !74
  %317 = and i32 %316, 16, !mcsema_real_eip !74
  %318 = icmp ne i32 %317, 0, !mcsema_real_eip !74
  store i1 %318, i1* %AF, !mcsema_real_eip !74
  %319 = lshr i32 %314, 31, !mcsema_real_eip !74
  %320 = trunc i32 %319 to i1, !mcsema_real_eip !74
  store i1 %320, i1* %SF, !mcsema_real_eip !74
  %321 = icmp eq i32 %314, 0, !mcsema_real_eip !74
  store i1 %321, i1* %ZF, !mcsema_real_eip !74
  %322 = xor i32 %EAX_val.113, 1, !mcsema_real_eip !74
  %323 = xor i32 %322, -1, !mcsema_real_eip !74
  %324 = and i32 %323, %315, !mcsema_real_eip !74
  %325 = lshr i32 %324, 31, !mcsema_real_eip !74
  %326 = and i32 %325, 1, !mcsema_real_eip !74
  %327 = trunc i32 %326 to i1, !mcsema_real_eip !74
  store i1 %327, i1* %OF, !mcsema_real_eip !74
  %328 = trunc i32 %314 to i8, !mcsema_real_eip !74
  %329 = call i8 @llvm.ctpop.i8(i8 %328), !mcsema_real_eip !74
  %330 = trunc i8 %329 to i1, !mcsema_real_eip !74
  %331 = xor i1 %330, true, !mcsema_real_eip !74
  store i1 %331, i1* %PF, !mcsema_real_eip !74
  %332 = icmp ult i32 %314, %EAX_val.113, !mcsema_real_eip !74
  store i1 %332, i1* %CF, !mcsema_real_eip !74
  %333 = zext i32 %314 to i64, !mcsema_real_eip !74
  store i64 %333, i64* %XAX, !mcsema_real_eip !74
  %EAX_val.116 = load i32, i32* %EAX.4, !mcsema_real_eip !75
  store i32 %EAX_val.116, i32* %309, !mcsema_real_eip !75
  br label %block_0x1c0, !mcsema_real_eip !76

block_0x172:                                      ; preds = %208
  %_new_gep_145 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -20
  %_allin_new_bt_146 = bitcast i8* %_new_gep_145 to i64*
  %334 = ptrtoint i64* %_allin_new_bt_146 to i64, !mcsema_real_eip !77
  %335 = inttoptr i64 %334 to i32*, !mcsema_real_eip !77
  %_ptr_bt_503 = bitcast i32* %335 to i8*
  %_offset_above_rbp_504 = sub i64 %334, %_local_end_to_int_
  %_pot_address_in_parent_stack_505 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_504
  %_cond1_506 = icmp ugt i8* %_ptr_bt_503, %_local_stack_end_ptr_
  %_cond2_1_507 = icmp ugt i8* %_ptr_bt_503, %_parent_stack_end_ptr_
  %_cond2_2_508 = icmp ult i8* %_ptr_bt_503, %_parent_stack_start_ptr_
  %_cond2_509 = or i1 %_cond2_1_507, %_cond2_2_508
  %_cond4_510 = icmp ule i8* %_pot_address_in_parent_stack_505, %_parent_stack_end_ptr_
  %_cond1_n_cond2_511 = and i1 %_cond1_506, %_cond2_509
  %_cond1_n_cond2_cond3_512 = and i1 %_cond1_n_cond2_511, %_cond4_510
  br i1 %_cond1_n_cond2_cond3_512, label %336, label %337

; <label>:336:                                    ; preds = %block_0x172
  %_address_in_parent_stack_bt_514 = bitcast i8* %_pot_address_in_parent_stack_505 to i32*
  br label %337

; <label>:337:                                    ; preds = %block_0x172, %336
  %338 = phi i32* [ %335, %block_0x172 ], [ %_address_in_parent_stack_bt_514, %336 ]
  %_new_load_515 = load i32, i32* %338
  %339 = zext i32 %_new_load_515 to i64, !mcsema_real_eip !77
  store i64 %339, i64* %XAX, !mcsema_real_eip !77
  %EAX_val.107 = load i32, i32* %EAX.4, !mcsema_real_eip !78
  %340 = add i32 -1, %EAX_val.107, !mcsema_real_eip !78
  %341 = xor i32 %340, %EAX_val.107, !mcsema_real_eip !78
  %342 = xor i32 %341, -1, !mcsema_real_eip !78
  %343 = and i32 %342, 16, !mcsema_real_eip !78
  %344 = icmp ne i32 %343, 0, !mcsema_real_eip !78
  store i1 %344, i1* %AF, !mcsema_real_eip !78
  %345 = lshr i32 %340, 31, !mcsema_real_eip !78
  %346 = trunc i32 %345 to i1, !mcsema_real_eip !78
  store i1 %346, i1* %SF, !mcsema_real_eip !78
  %347 = icmp eq i32 %340, 0, !mcsema_real_eip !78
  store i1 %347, i1* %ZF, !mcsema_real_eip !78
  %348 = xor i32 %EAX_val.107, -1, !mcsema_real_eip !78
  %349 = and i32 %EAX_val.107, %341, !mcsema_real_eip !78
  %350 = lshr i32 %349, 31, !mcsema_real_eip !78
  %351 = and i32 %350, 1, !mcsema_real_eip !78
  %352 = trunc i32 %351 to i1, !mcsema_real_eip !78
  store i1 %352, i1* %OF, !mcsema_real_eip !78
  %353 = trunc i32 %340 to i8, !mcsema_real_eip !78
  %354 = call i8 @llvm.ctpop.i8(i8 %353), !mcsema_real_eip !78
  %355 = trunc i8 %354 to i1, !mcsema_real_eip !78
  %356 = xor i1 %355, true, !mcsema_real_eip !78
  store i1 %356, i1* %PF, !mcsema_real_eip !78
  %357 = icmp ult i32 %340, %EAX_val.107, !mcsema_real_eip !78
  store i1 %357, i1* %CF, !mcsema_real_eip !78
  %358 = zext i32 %340 to i64, !mcsema_real_eip !78
  store i64 %358, i64* %XAX, !mcsema_real_eip !78
  %EAX_val.110 = load i32, i32* %EAX.4, !mcsema_real_eip !79
  store i32 %EAX_val.110, i32* %335, !mcsema_real_eip !79
  br label %block_0x1c0, !mcsema_real_eip !80

block_0x180:                                      ; preds = %208
  %_new_gep_151 = getelementptr i8, i8* %_load_rbp_ptr_108, i64 -20
  %_allin_new_bt_152 = bitcast i8* %_new_gep_151 to i64*
  %359 = ptrtoint i64* %_allin_new_bt_152 to i64, !mcsema_real_eip !81
  %360 = inttoptr i64 %359 to i32*, !mcsema_real_eip !81
  %_ptr_bt_518 = bitcast i32* %360 to i8*
  %_offset_above_rbp_519 = sub i64 %359, %_local_end_to_int_
  %_pot_address_in_parent_stack_520 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_519
  %_cond1_521 = icmp ugt i8* %_ptr_bt_518, %_local_stack_end_ptr_
  %_cond2_1_522 = icmp ugt i8* %_ptr_bt_518, %_parent_stack_end_ptr_
  %_cond2_2_523 = icmp ult i8* %_ptr_bt_518, %_parent_stack_start_ptr_
  %_cond2_524 = or i1 %_cond2_1_522, %_cond2_2_523
  %_cond4_525 = icmp ule i8* %_pot_address_in_parent_stack_520, %_parent_stack_end_ptr_
  %_cond1_n_cond2_526 = and i1 %_cond1_521, %_cond2_524
  %_cond1_n_cond2_cond3_527 = and i1 %_cond1_n_cond2_526, %_cond4_525
  br i1 %_cond1_n_cond2_cond3_527, label %361, label %362

; <label>:361:                                    ; preds = %block_0x180
  %_address_in_parent_stack_bt_529 = bitcast i8* %_pot_address_in_parent_stack_520 to i32*
  br label %362

; <label>:362:                                    ; preds = %block_0x180, %361
  %363 = phi i32* [ %360, %block_0x180 ], [ %_address_in_parent_stack_bt_529, %361 ]
  %_new_load_530 = load i32, i32* %363
  %364 = zext i32 %_new_load_530 to i64, !mcsema_real_eip !81
  store i64 %364, i64* %XAX, !mcsema_real_eip !81
  %EAX_val.101 = load i32, i32* %EAX.4, !mcsema_real_eip !82
  %365 = add i32 1, %EAX_val.101, !mcsema_real_eip !82
  %366 = xor i32 %365, %EAX_val.101, !mcsema_real_eip !82
  %367 = xor i32 %366, 1, !mcsema_real_eip !82
  %368 = and i32 %367, 16, !mcsema_real_eip !82
  %369 = icmp ne i32 %368, 0, !mcsema_real_eip !82
  store i1 %369, i1* %AF, !mcsema_real_eip !82
  %370 = lshr i32 %365, 31, !mcsema_real_eip !82
  %371 = trunc i32 %370 to i1, !mcsema_real_eip !82
  store i1 %371, i1* %SF, !mcsema_real_eip !82
  %372 = icmp eq i32 %365, 0, !mcsema_real_eip !82
  store i1 %372, i1* %ZF, !mcsema_real_eip !82
  %373 = xor i32 %EAX_val.101, 1, !mcsema_real_eip !82
  %374 = xor i32 %373, -1, !mcsema_real_eip !82
  %375 = and i32 %374, %366, !mcsema_real_eip !82
  %376 = lshr i32 %375, 31, !mcsema_real_eip !82
  %377 = and i32 %376, 1, !mcsema_real_eip !82
  %378 = trunc i32 %377 to i1, !mcsema_real_eip !82
  store i1 %378, i1* %OF, !mcsema_real_eip !82
  %379 = trunc i32 %365 to i8, !mcsema_real_eip !82
  %380 = call i8 @llvm.ctpop.i8(i8 %379), !mcsema_real_eip !82
  %381 = trunc i8 %380 to i1, !mcsema_real_eip !82
  %382 = xor i1 %381, true, !mcsema_real_eip !82
  store i1 %382, i1* %PF, !mcsema_real_eip !82
  %383 = icmp ult i32 %365, %EAX_val.101, !mcsema_real_eip !82
  store i1 %383, i1* %CF, !mcsema_real_eip !82
  %384 = zext i32 %365 to i64, !mcsema_real_eip !82
  store i64 %384, i64* %XAX, !mcsema_real_eip !82
  %EAX_val.104 = load i32, i32* %EAX.4, !mcsema_real_eip !83
  store i32 %EAX_val.104, i32* %360, !mcsema_real_eip !83
  br label %block_0x1c0, !mcsema_real_eip !84

; <label>:385:                                    ; preds = %208
  store i64 %_new_load_427, i64* %XIP, !mcsema_real_eip !50
  call void @__mcsema_detach_call_value()
  %_rsp_fix_251 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_252 = getelementptr i8, i8* %_rsp_fix_251, i64 8
  store i8* %_gep_fix_252, i8** %_RSP_ptr_
  ret void, !mcsema_real_eip !50

block_0x1e6:                                      ; preds = %261
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64* %XDI, !mcsema_real_eip !85
  %AL.132 = bitcast i64* %XAX to i8*, !mcsema_real_eip !86
  store i8 0, i8* %AL.132, !mcsema_real_eip !86
  %RSI_val.134 = load i64, i64* %XSI, !mcsema_real_eip !87
  %_load_rsp_ptr_156 = load i8*, i8** %_RSP_ptr_
  %RSP_val.135 = load i64, i64* %XSP, !mcsema_real_eip !87
  %_new_gep_157 = getelementptr i8, i8* %_load_rsp_ptr_156, i64 -8
  %386 = sub i64 %RSP_val.135, 8, !mcsema_real_eip !87
  %_allin_new_bt_158 = bitcast i8* %_new_gep_157 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_158, !mcsema_real_eip !87
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_
  store i64 %386, i64* %XSP, !mcsema_real_eip !87
  %387 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 56), i64 %RSI_val.134)
  %_rsp_fix_253 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_254 = getelementptr i8, i8* %_rsp_fix_253, i64 8
  store i8* %_gep_fix_254, i8** %_RSP_ptr_
  store i64 %387, i64* %XAX, !mcsema_real_eip !87
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 66), i64* %XDI, !mcsema_real_eip !88
  %_load_rbp_ptr_159 = load i8*, i8** %_RBP_ptr_
  %_new_gep_160 = getelementptr i8, i8* %_load_rbp_ptr_159, i64 -64
  %_allin_new_bt_161 = bitcast i8* %_new_gep_160 to i64*
  %388 = ptrtoint i64* %_allin_new_bt_161 to i64, !mcsema_real_eip !89
  store i64 %388, i64* %XSI, !mcsema_real_eip !89
  %_new_gep_163 = getelementptr i8, i8* %_load_rbp_ptr_159, i64 -96
  %_allin_new_bt_164 = bitcast i8* %_new_gep_163 to i64*
  %EAX_val.139 = load i32, i32* %EAX.4, !mcsema_real_eip !90
  %389 = ptrtoint i64* %_allin_new_bt_164 to i64, !mcsema_real_eip !90
  %390 = inttoptr i64 %389 to i32*, !mcsema_real_eip !90
  store i32 %EAX_val.139, i32* %390, !mcsema_real_eip !90
  store i8 0, i8* %AL.132, !mcsema_real_eip !91
  %RDI_val.141 = load i64, i64* %XDI, !mcsema_real_eip !92
  %RSI_val.142 = load i64, i64* %XSI, !mcsema_real_eip !92
  %_load_rsp_ptr_165 = load i8*, i8** %_RSP_ptr_
  %RSP_val.143 = load i64, i64* %XSP, !mcsema_real_eip !92
  %_new_gep_166 = getelementptr i8, i8* %_load_rsp_ptr_165, i64 -8
  %391 = sub i64 %RSP_val.143, 8, !mcsema_real_eip !92
  %_allin_new_bt_167 = bitcast i8* %_new_gep_166 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_167, !mcsema_real_eip !92
  store volatile i8* %_new_gep_166, i8** %_RSP_ptr_
  store i64 %391, i64* %XSP, !mcsema_real_eip !92
  %392 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.141, i64 %RSI_val.142)
  %_rsp_fix_255 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_256 = getelementptr i8, i8* %_rsp_fix_255, i64 8
  store i8* %_gep_fix_256, i8** %_RSP_ptr_
  store i64 %392, i64* %XAX, !mcsema_real_eip !92
  %EDI_val.145 = load i32, i32* %EDI.13, !mcsema_real_eip !93
  store i1 false, i1* %CF, !mcsema_real_eip !93
  store i1 false, i1* %OF, !mcsema_real_eip !93
  store i1 false, i1* %SF, !mcsema_real_eip !93
  store i1 true, i1* %ZF, !mcsema_real_eip !93
  store i1 true, i1* %PF, !mcsema_real_eip !93
  store i1 undef, i1* %AF, !mcsema_real_eip !93
  store i64 0, i64* %XDI, !mcsema_real_eip !93
  %_load_rbp_ptr_168 = load i8*, i8** %_RBP_ptr_
  %_new_gep_169 = getelementptr i8, i8* %_load_rbp_ptr_168, i64 -100
  %_allin_new_bt_170 = bitcast i8* %_new_gep_169 to i64*
  %EAX_val.150 = load i32, i32* %EAX.4, !mcsema_real_eip !94
  %393 = ptrtoint i64* %_allin_new_bt_170 to i64, !mcsema_real_eip !94
  %394 = inttoptr i64 %393 to i32*, !mcsema_real_eip !94
  store i32 %EAX_val.150, i32* %394, !mcsema_real_eip !94
  %RDI_val.151 = load i64, i64* %XDI, !mcsema_real_eip !95
  %_load_rsp_ptr_171 = load i8*, i8** %_RSP_ptr_
  %RSP_val.152 = load i64, i64* %XSP, !mcsema_real_eip !95
  %_new_gep_172 = getelementptr i8, i8* %_load_rsp_ptr_171, i64 -8
  %395 = sub i64 %RSP_val.152, 8, !mcsema_real_eip !95
  %_allin_new_bt_173 = bitcast i8* %_new_gep_172 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_173, !mcsema_real_eip !95
  store volatile i8* %_new_gep_172, i8** %_RSP_ptr_
  store i64 %395, i64* %XSP, !mcsema_real_eip !95
  %396 = call x86_64_sysvcc i64 @_exit(i64 %RDI_val.151)
  %_rsp_fix_257 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_258 = getelementptr i8, i8* %_rsp_fix_257, i64 8
  store i8* %_gep_fix_258, i8** %_RSP_ptr_
  store i64 %396, i64* %XAX, !mcsema_real_eip !95
  br label %block_0x219, !mcsema_real_eip !96

block_0x219:                                      ; preds = %block_0x1e6, %261
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !97
  %_load_rbp_ptr_174 = load i8*, i8** %_RBP_ptr_
  %_new_gep_175 = getelementptr i8, i8* %_load_rbp_ptr_174, i64 -24
  %_allin_new_bt_176 = bitcast i8* %_new_gep_175 to i64*
  %397 = ptrtoint i64* %_allin_new_bt_176 to i64, !mcsema_real_eip !98
  %398 = inttoptr i64 %397 to i32*, !mcsema_real_eip !98
  %_ptr_bt_533 = bitcast i32* %398 to i8*
  %_offset_above_rbp_534 = sub i64 %397, %_local_end_to_int_
  %_pot_address_in_parent_stack_535 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_534
  %_cond1_536 = icmp ugt i8* %_ptr_bt_533, %_local_stack_end_ptr_
  %_cond2_1_537 = icmp ugt i8* %_ptr_bt_533, %_parent_stack_end_ptr_
  %_cond2_2_538 = icmp ult i8* %_ptr_bt_533, %_parent_stack_start_ptr_
  %_cond2_539 = or i1 %_cond2_1_537, %_cond2_2_538
  %_cond4_540 = icmp ule i8* %_pot_address_in_parent_stack_535, %_parent_stack_end_ptr_
  %_cond1_n_cond2_541 = and i1 %_cond1_536, %_cond2_539
  %_cond1_n_cond2_cond3_542 = and i1 %_cond1_n_cond2_541, %_cond4_540
  br i1 %_cond1_n_cond2_cond3_542, label %399, label %400

; <label>:399:                                    ; preds = %block_0x219
  %_address_in_parent_stack_bt_544 = bitcast i8* %_pot_address_in_parent_stack_535 to i32*
  br label %400

; <label>:400:                                    ; preds = %block_0x219, %399
  %401 = phi i32* [ %398, %block_0x219 ], [ %_address_in_parent_stack_bt_544, %399 ]
  %_new_load_545 = load i32, i32* %401
  %402 = sext i32 %_new_load_545 to i64, !mcsema_real_eip !98
  store i64 %402, i64* %XCX, !mcsema_real_eip !98
  %403 = sext i64 %402 to i128, !mcsema_real_eip !99
  %404 = mul i128 %403, 11, !mcsema_real_eip !99
  %405 = trunc i128 %404 to i64, !mcsema_real_eip !99
  %406 = sext i64 %405 to i128, !mcsema_real_eip !99
  %407 = icmp ne i128 %406, %404, !mcsema_real_eip !99
  %408 = icmp slt i64 %405, 0, !mcsema_real_eip !99
  store i1 %408, i1* %SF, !mcsema_real_eip !99
  store i1 %407, i1* %OF, !mcsema_real_eip !99
  store i1 %407, i1* %CF, !mcsema_real_eip !99
  store i64 %405, i64* %XCX, !mcsema_real_eip !99
  %409 = add i64 %405, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !100
  %410 = xor i64 %409, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !100
  %411 = xor i64 %410, %405, !mcsema_real_eip !100
  %412 = and i64 %411, 16, !mcsema_real_eip !100
  %413 = icmp ne i64 %412, 0, !mcsema_real_eip !100
  store i1 %413, i1* %AF, !mcsema_real_eip !100
  %414 = lshr i64 %409, 63, !mcsema_real_eip !100
  %415 = trunc i64 %414 to i1, !mcsema_real_eip !100
  store i1 %415, i1* %SF, !mcsema_real_eip !100
  %416 = icmp eq i64 %409, 0, !mcsema_real_eip !100
  store i1 %416, i1* %ZF, !mcsema_real_eip !100
  %417 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %405, !mcsema_real_eip !100
  %418 = xor i64 %417, -1, !mcsema_real_eip !100
  %419 = and i64 %418, %410, !mcsema_real_eip !100
  %420 = lshr i64 %419, 63, !mcsema_real_eip !100
  %421 = and i64 %420, 1, !mcsema_real_eip !100
  %422 = trunc i64 %421 to i1, !mcsema_real_eip !100
  store i1 %422, i1* %OF, !mcsema_real_eip !100
  %423 = trunc i64 %409 to i8, !mcsema_real_eip !100
  %424 = call i8 @llvm.ctpop.i8(i8 %423), !mcsema_real_eip !100
  %425 = trunc i8 %424 to i1, !mcsema_real_eip !100
  %426 = xor i1 %425, true, !mcsema_real_eip !100
  store i1 %426, i1* %PF, !mcsema_real_eip !100
  %427 = icmp ult i64 %409, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !100
  store i1 %427, i1* %CF, !mcsema_real_eip !100
  store i64 %409, i64* %XAX, !mcsema_real_eip !100
  %_new_gep_178 = getelementptr i8, i8* %_load_rbp_ptr_174, i64 -20
  %_allin_new_bt_179 = bitcast i8* %_new_gep_178 to i64*
  %428 = ptrtoint i64* %_allin_new_bt_179 to i64, !mcsema_real_eip !101
  %429 = inttoptr i64 %428 to i32*, !mcsema_real_eip !101
  %_ptr_bt_548 = bitcast i32* %429 to i8*
  %_offset_above_rbp_549 = sub i64 %428, %_local_end_to_int_
  %_pot_address_in_parent_stack_550 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_549
  %_cond1_551 = icmp ugt i8* %_ptr_bt_548, %_local_stack_end_ptr_
  %_cond2_1_552 = icmp ugt i8* %_ptr_bt_548, %_parent_stack_end_ptr_
  %_cond2_2_553 = icmp ult i8* %_ptr_bt_548, %_parent_stack_start_ptr_
  %_cond2_554 = or i1 %_cond2_1_552, %_cond2_2_553
  %_cond4_555 = icmp ule i8* %_pot_address_in_parent_stack_550, %_parent_stack_end_ptr_
  %_cond1_n_cond2_556 = and i1 %_cond1_551, %_cond2_554
  %_cond1_n_cond2_cond3_557 = and i1 %_cond1_n_cond2_556, %_cond4_555
  br i1 %_cond1_n_cond2_cond3_557, label %430, label %431

; <label>:430:                                    ; preds = %400
  %_address_in_parent_stack_bt_559 = bitcast i8* %_pot_address_in_parent_stack_550 to i32*
  br label %431

; <label>:431:                                    ; preds = %400, %430
  %432 = phi i32* [ %429, %400 ], [ %_address_in_parent_stack_bt_559, %430 ]
  %_new_load_560 = load i32, i32* %432
  %433 = sext i32 %_new_load_560 to i64, !mcsema_real_eip !101
  store i64 %433, i64* %XCX, !mcsema_real_eip !101
  %434 = add i64 %409, %433, !mcsema_real_eip !102
  %435 = inttoptr i64 %434 to i64*, !mcsema_real_eip !102
  %436 = inttoptr i64 %434 to i8*, !mcsema_real_eip !102
  %_offset_above_rbp_563 = sub i64 %434, %_local_end_to_int_
  %_pot_address_in_parent_stack_564 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_563
  %_cond1_565 = icmp ugt i8* %436, %_local_stack_end_ptr_
  %_cond2_1_566 = icmp ugt i8* %436, %_parent_stack_end_ptr_
  %_cond2_2_567 = icmp ult i8* %436, %_parent_stack_start_ptr_
  %_cond2_568 = or i1 %_cond2_1_566, %_cond2_2_567
  %_cond4_569 = icmp ule i8* %_pot_address_in_parent_stack_564, %_parent_stack_end_ptr_
  %_cond1_n_cond2_570 = and i1 %_cond1_565, %_cond2_568
  %_cond1_n_cond2_cond3_571 = and i1 %_cond1_n_cond2_570, %_cond4_569
  br i1 %_cond1_n_cond2_cond3_571, label %437, label %438

; <label>:437:                                    ; preds = %431
  br label %438

; <label>:438:                                    ; preds = %431, %437
  %439 = phi i8* [ %436, %431 ], [ %_pot_address_in_parent_stack_564, %437 ]
  %_new_load_573 = load i8, i8* %439
  %440 = sext i8 %_new_load_573 to i32, !mcsema_real_eip !102
  %441 = zext i32 %440 to i64, !mcsema_real_eip !102
  store i64 %441, i64* %XDX, !mcsema_real_eip !102
  %EDX_val.131 = load i32, i32* %EDX.97, !mcsema_real_eip !103
  %442 = sub i32 %EDX_val.131, 32, !mcsema_real_eip !103
  %443 = xor i32 %442, %EDX_val.131, !mcsema_real_eip !103
  %444 = xor i32 %443, 32, !mcsema_real_eip !103
  %445 = and i32 %444, 16, !mcsema_real_eip !103
  %446 = icmp ne i32 %445, 0, !mcsema_real_eip !103
  store i1 %446, i1* %AF, !mcsema_real_eip !103
  %447 = trunc i32 %442 to i8, !mcsema_real_eip !103
  %448 = call i8 @llvm.ctpop.i8(i8 %447), !mcsema_real_eip !103
  %449 = trunc i8 %448 to i1, !mcsema_real_eip !103
  %450 = xor i1 %449, true, !mcsema_real_eip !103
  store i1 %450, i1* %PF, !mcsema_real_eip !103
  %451 = icmp eq i32 %442, 0, !mcsema_real_eip !103
  store i1 %451, i1* %ZF, !mcsema_real_eip !103
  %452 = lshr i32 %442, 31, !mcsema_real_eip !103
  %453 = trunc i32 %452 to i1, !mcsema_real_eip !103
  store i1 %453, i1* %SF, !mcsema_real_eip !103
  %454 = icmp ult i32 %EDX_val.131, 32, !mcsema_real_eip !103
  store i1 %454, i1* %CF, !mcsema_real_eip !103
  %455 = xor i32 %EDX_val.131, 32, !mcsema_real_eip !103
  %456 = and i32 %455, %443, !mcsema_real_eip !103
  %457 = lshr i32 %456, 31, !mcsema_real_eip !103
  %458 = trunc i32 %457 to i1, !mcsema_real_eip !103
  store i1 %458, i1* %OF, !mcsema_real_eip !103
  br i1 %451, label %block_0x28f, label %block_0x23f, !mcsema_real_eip !104

block_0x23f:                                      ; preds = %438
  br i1 %_cond1_n_cond2_cond3_542, label %459, label %460

; <label>:459:                                    ; preds = %block_0x23f
  %_address_in_parent_stack_bt_587 = bitcast i8* %_pot_address_in_parent_stack_535 to i32*
  br label %460

; <label>:460:                                    ; preds = %block_0x23f, %459
  %461 = phi i32* [ %398, %block_0x23f ], [ %_address_in_parent_stack_bt_587, %459 ]
  %_new_load_588 = load i32, i32* %461
  %462 = sub i32 %_new_load_588, 2, !mcsema_real_eip !105
  %463 = xor i32 %462, %_new_load_588, !mcsema_real_eip !105
  %464 = xor i32 %463, 2, !mcsema_real_eip !105
  %465 = and i32 %464, 16, !mcsema_real_eip !105
  %466 = icmp ne i32 %465, 0, !mcsema_real_eip !105
  store i1 %466, i1* %AF, !mcsema_real_eip !105
  %467 = trunc i32 %462 to i8, !mcsema_real_eip !105
  %468 = call i8 @llvm.ctpop.i8(i8 %467), !mcsema_real_eip !105
  %469 = trunc i8 %468 to i1, !mcsema_real_eip !105
  %470 = xor i1 %469, true, !mcsema_real_eip !105
  store i1 %470, i1* %PF, !mcsema_real_eip !105
  %471 = icmp eq i32 %462, 0, !mcsema_real_eip !105
  store i1 %471, i1* %ZF, !mcsema_real_eip !105
  %472 = lshr i32 %462, 31, !mcsema_real_eip !105
  %473 = trunc i32 %472 to i1, !mcsema_real_eip !105
  store i1 %473, i1* %SF, !mcsema_real_eip !105
  %474 = icmp ult i32 %_new_load_588, 2, !mcsema_real_eip !105
  store i1 %474, i1* %CF, !mcsema_real_eip !105
  %475 = xor i32 %_new_load_588, 2, !mcsema_real_eip !105
  %476 = and i32 %475, %463, !mcsema_real_eip !105
  %477 = lshr i32 %476, 31, !mcsema_real_eip !105
  %478 = trunc i32 %477 to i1, !mcsema_real_eip !105
  store i1 %478, i1* %OF, !mcsema_real_eip !105
  %479 = icmp eq i1 %471, false, !mcsema_real_eip !106
  br i1 %479, label %block_0x283, label %block_0x249, !mcsema_real_eip !106

block_0x28f:                                      ; preds = %696, %671, %438
  %_load_rbp_ptr_183 = load i8*, i8** %_RBP_ptr_
  %_new_gep_184 = getelementptr i8, i8* %_load_rbp_ptr_183, i64 -28
  %_allin_new_bt_185 = bitcast i8* %_new_gep_184 to i64*
  %480 = ptrtoint i64* %_allin_new_bt_185 to i64, !mcsema_real_eip !96
  %481 = inttoptr i64 %480 to i32*, !mcsema_real_eip !96
  %_ptr_bt_591 = bitcast i32* %481 to i8*
  %_offset_above_rbp_592 = sub i64 %480, %_local_end_to_int_
  %_pot_address_in_parent_stack_593 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_592
  %_cond1_594 = icmp ugt i8* %_ptr_bt_591, %_local_stack_end_ptr_
  %_cond2_1_595 = icmp ugt i8* %_ptr_bt_591, %_parent_stack_end_ptr_
  %_cond2_2_596 = icmp ult i8* %_ptr_bt_591, %_parent_stack_start_ptr_
  %_cond2_597 = or i1 %_cond2_1_595, %_cond2_2_596
  %_cond4_598 = icmp ule i8* %_pot_address_in_parent_stack_593, %_parent_stack_end_ptr_
  %_cond1_n_cond2_599 = and i1 %_cond1_594, %_cond2_597
  %_cond1_n_cond2_cond3_600 = and i1 %_cond1_n_cond2_599, %_cond4_598
  br i1 %_cond1_n_cond2_cond3_600, label %482, label %483

; <label>:482:                                    ; preds = %block_0x28f
  %_address_in_parent_stack_bt_602 = bitcast i8* %_pot_address_in_parent_stack_593 to i32*
  br label %483

; <label>:483:                                    ; preds = %block_0x28f, %482
  %484 = phi i32* [ %481, %block_0x28f ], [ %_address_in_parent_stack_bt_602, %482 ]
  %_new_load_603 = load i32, i32* %484
  %485 = zext i32 %_new_load_603 to i64, !mcsema_real_eip !96
  store i64 %485, i64* %XAX, !mcsema_real_eip !96
  %_new_gep_187 = getelementptr i8, i8* %_load_rbp_ptr_183, i64 -20
  %_allin_new_bt_188 = bitcast i8* %_new_gep_187 to i64*
  %EAX_val.156 = load i32, i32* %EAX.4, !mcsema_real_eip !107
  %486 = ptrtoint i64* %_allin_new_bt_188 to i64, !mcsema_real_eip !107
  %487 = inttoptr i64 %486 to i32*, !mcsema_real_eip !107
  %_ptr_bt_606 = bitcast i32* %487 to i8*
  %_offset_above_rbp_607 = sub i64 %486, %_local_end_to_int_
  %_pot_address_in_parent_stack_608 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_607
  %_cond1_609 = icmp ugt i8* %_ptr_bt_606, %_local_stack_end_ptr_
  %_cond2_1_610 = icmp ugt i8* %_ptr_bt_606, %_parent_stack_end_ptr_
  %_cond2_2_611 = icmp ult i8* %_ptr_bt_606, %_parent_stack_start_ptr_
  %_cond2_612 = or i1 %_cond2_1_610, %_cond2_2_611
  %_cond4_613 = icmp ule i8* %_pot_address_in_parent_stack_608, %_parent_stack_end_ptr_
  %_cond1_n_cond2_614 = and i1 %_cond1_609, %_cond2_612
  %_cond1_n_cond2_cond3_615 = and i1 %_cond1_n_cond2_614, %_cond4_613
  br i1 %_cond1_n_cond2_cond3_615, label %488, label %489

; <label>:488:                                    ; preds = %483
  %_address_in_parent_stack_bt_617 = bitcast i8* %_pot_address_in_parent_stack_608 to i32*
  br label %489

; <label>:489:                                    ; preds = %483, %488
  %490 = phi i32* [ %487, %483 ], [ %_address_in_parent_stack_bt_617, %488 ]
  %_new_load_618 = load i32, i32* %490
  %491 = sub i32 %EAX_val.156, %_new_load_618, !mcsema_real_eip !107
  %492 = xor i32 %491, %EAX_val.156, !mcsema_real_eip !107
  %493 = xor i32 %492, %_new_load_618, !mcsema_real_eip !107
  %494 = and i32 %493, 16, !mcsema_real_eip !107
  %495 = icmp ne i32 %494, 0, !mcsema_real_eip !107
  store i1 %495, i1* %AF, !mcsema_real_eip !107
  %496 = trunc i32 %491 to i8, !mcsema_real_eip !107
  %497 = call i8 @llvm.ctpop.i8(i8 %496), !mcsema_real_eip !107
  %498 = trunc i8 %497 to i1, !mcsema_real_eip !107
  %499 = xor i1 %498, true, !mcsema_real_eip !107
  store i1 %499, i1* %PF, !mcsema_real_eip !107
  %500 = icmp eq i32 %491, 0, !mcsema_real_eip !107
  store i1 %500, i1* %ZF, !mcsema_real_eip !107
  %501 = lshr i32 %491, 31, !mcsema_real_eip !107
  %502 = trunc i32 %501 to i1, !mcsema_real_eip !107
  store i1 %502, i1* %SF, !mcsema_real_eip !107
  %503 = icmp ult i32 %EAX_val.156, %_new_load_618, !mcsema_real_eip !107
  store i1 %503, i1* %CF, !mcsema_real_eip !107
  %504 = xor i32 %EAX_val.156, %_new_load_618, !mcsema_real_eip !107
  %505 = and i32 %504, %492, !mcsema_real_eip !107
  %506 = lshr i32 %505, 31, !mcsema_real_eip !107
  %507 = trunc i32 %506 to i1, !mcsema_real_eip !107
  store i1 %507, i1* %OF, !mcsema_real_eip !107
  %508 = icmp eq i1 %500, false, !mcsema_real_eip !108
  br i1 %508, label %block_0x2c7, label %block_0x29b, !mcsema_real_eip !108

block_0x29b:                                      ; preds = %489
  %_new_gep_190 = getelementptr i8, i8* %_load_rbp_ptr_183, i64 -32
  %_allin_new_bt_191 = bitcast i8* %_new_gep_190 to i64*
  %509 = ptrtoint i64* %_allin_new_bt_191 to i64, !mcsema_real_eip !109
  %510 = inttoptr i64 %509 to i32*, !mcsema_real_eip !109
  %_ptr_bt_621 = bitcast i32* %510 to i8*
  %_offset_above_rbp_622 = sub i64 %509, %_local_end_to_int_
  %_pot_address_in_parent_stack_623 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_622
  %_cond1_624 = icmp ugt i8* %_ptr_bt_621, %_local_stack_end_ptr_
  %_cond2_1_625 = icmp ugt i8* %_ptr_bt_621, %_parent_stack_end_ptr_
  %_cond2_2_626 = icmp ult i8* %_ptr_bt_621, %_parent_stack_start_ptr_
  %_cond2_627 = or i1 %_cond2_1_625, %_cond2_2_626
  %_cond4_628 = icmp ule i8* %_pot_address_in_parent_stack_623, %_parent_stack_end_ptr_
  %_cond1_n_cond2_629 = and i1 %_cond1_624, %_cond2_627
  %_cond1_n_cond2_cond3_630 = and i1 %_cond1_n_cond2_629, %_cond4_628
  br i1 %_cond1_n_cond2_cond3_630, label %511, label %512

; <label>:511:                                    ; preds = %block_0x29b
  %_address_in_parent_stack_bt_632 = bitcast i8* %_pot_address_in_parent_stack_623 to i32*
  br label %512

; <label>:512:                                    ; preds = %block_0x29b, %511
  %513 = phi i32* [ %510, %block_0x29b ], [ %_address_in_parent_stack_bt_632, %511 ]
  %_new_load_633 = load i32, i32* %513
  %514 = zext i32 %_new_load_633 to i64, !mcsema_real_eip !109
  store i64 %514, i64* %XAX, !mcsema_real_eip !109
  %_new_gep_193 = getelementptr i8, i8* %_load_rbp_ptr_183, i64 -24
  %_allin_new_bt_194 = bitcast i8* %_new_gep_193 to i64*
  %EAX_val.175 = load i32, i32* %EAX.4, !mcsema_real_eip !110
  %515 = ptrtoint i64* %_allin_new_bt_194 to i64, !mcsema_real_eip !110
  %516 = inttoptr i64 %515 to i32*, !mcsema_real_eip !110
  %_ptr_bt_636 = bitcast i32* %516 to i8*
  %_offset_above_rbp_637 = sub i64 %515, %_local_end_to_int_
  %_pot_address_in_parent_stack_638 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_637
  %_cond1_639 = icmp ugt i8* %_ptr_bt_636, %_local_stack_end_ptr_
  %_cond2_1_640 = icmp ugt i8* %_ptr_bt_636, %_parent_stack_end_ptr_
  %_cond2_2_641 = icmp ult i8* %_ptr_bt_636, %_parent_stack_start_ptr_
  %_cond2_642 = or i1 %_cond2_1_640, %_cond2_2_641
  %_cond4_643 = icmp ule i8* %_pot_address_in_parent_stack_638, %_parent_stack_end_ptr_
  %_cond1_n_cond2_644 = and i1 %_cond1_639, %_cond2_642
  %_cond1_n_cond2_cond3_645 = and i1 %_cond1_n_cond2_644, %_cond4_643
  br i1 %_cond1_n_cond2_cond3_645, label %517, label %518

; <label>:517:                                    ; preds = %512
  %_address_in_parent_stack_bt_647 = bitcast i8* %_pot_address_in_parent_stack_638 to i32*
  br label %518

; <label>:518:                                    ; preds = %512, %517
  %519 = phi i32* [ %516, %512 ], [ %_address_in_parent_stack_bt_647, %517 ]
  %_new_load_648 = load i32, i32* %519
  %520 = sub i32 %EAX_val.175, %_new_load_648, !mcsema_real_eip !110
  %521 = xor i32 %520, %EAX_val.175, !mcsema_real_eip !110
  %522 = xor i32 %521, %_new_load_648, !mcsema_real_eip !110
  %523 = and i32 %522, 16, !mcsema_real_eip !110
  %524 = icmp ne i32 %523, 0, !mcsema_real_eip !110
  store i1 %524, i1* %AF, !mcsema_real_eip !110
  %525 = trunc i32 %520 to i8, !mcsema_real_eip !110
  %526 = call i8 @llvm.ctpop.i8(i8 %525), !mcsema_real_eip !110
  %527 = trunc i8 %526 to i1, !mcsema_real_eip !110
  %528 = xor i1 %527, true, !mcsema_real_eip !110
  store i1 %528, i1* %PF, !mcsema_real_eip !110
  %529 = icmp eq i32 %520, 0, !mcsema_real_eip !110
  store i1 %529, i1* %ZF, !mcsema_real_eip !110
  %530 = lshr i32 %520, 31, !mcsema_real_eip !110
  %531 = trunc i32 %530 to i1, !mcsema_real_eip !110
  store i1 %531, i1* %SF, !mcsema_real_eip !110
  %532 = icmp ult i32 %EAX_val.175, %_new_load_648, !mcsema_real_eip !110
  store i1 %532, i1* %CF, !mcsema_real_eip !110
  %533 = xor i32 %EAX_val.175, %_new_load_648, !mcsema_real_eip !110
  %534 = and i32 %533, %521, !mcsema_real_eip !110
  %535 = lshr i32 %534, 31, !mcsema_real_eip !110
  %536 = trunc i32 %535 to i1, !mcsema_real_eip !110
  store i1 %536, i1* %OF, !mcsema_real_eip !110
  %537 = icmp eq i1 %529, false, !mcsema_real_eip !111
  br i1 %537, label %block_0x2c7, label %block_0x2a7, !mcsema_real_eip !111

block_0x2c7:                                      ; preds = %518, %489
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !112
  %_new_gep_196 = getelementptr i8, i8* %_load_rbp_ptr_183, i64 -24
  %_allin_new_bt_197 = bitcast i8* %_new_gep_196 to i64*
  %538 = ptrtoint i64* %_allin_new_bt_197 to i64, !mcsema_real_eip !113
  %539 = inttoptr i64 %538 to i32*, !mcsema_real_eip !113
  %_ptr_bt_651 = bitcast i32* %539 to i8*
  %_offset_above_rbp_652 = sub i64 %538, %_local_end_to_int_
  %_pot_address_in_parent_stack_653 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_652
  %_cond1_654 = icmp ugt i8* %_ptr_bt_651, %_local_stack_end_ptr_
  %_cond2_1_655 = icmp ugt i8* %_ptr_bt_651, %_parent_stack_end_ptr_
  %_cond2_2_656 = icmp ult i8* %_ptr_bt_651, %_parent_stack_start_ptr_
  %_cond2_657 = or i1 %_cond2_1_655, %_cond2_2_656
  %_cond4_658 = icmp ule i8* %_pot_address_in_parent_stack_653, %_parent_stack_end_ptr_
  %_cond1_n_cond2_659 = and i1 %_cond1_654, %_cond2_657
  %_cond1_n_cond2_cond3_660 = and i1 %_cond1_n_cond2_659, %_cond4_658
  br i1 %_cond1_n_cond2_cond3_660, label %540, label %541

; <label>:540:                                    ; preds = %block_0x2c7
  %_address_in_parent_stack_bt_662 = bitcast i8* %_pot_address_in_parent_stack_653 to i32*
  br label %541

; <label>:541:                                    ; preds = %block_0x2c7, %540
  %542 = phi i32* [ %539, %block_0x2c7 ], [ %_address_in_parent_stack_bt_662, %540 ]
  %_new_load_663 = load i32, i32* %542
  %543 = sext i32 %_new_load_663 to i64, !mcsema_real_eip !113
  store i64 %543, i64* %XCX, !mcsema_real_eip !113
  %544 = sext i64 %543 to i128, !mcsema_real_eip !114
  %545 = mul i128 %544, 11, !mcsema_real_eip !114
  %546 = trunc i128 %545 to i64, !mcsema_real_eip !114
  %547 = sext i64 %546 to i128, !mcsema_real_eip !114
  %548 = icmp ne i128 %547, %545, !mcsema_real_eip !114
  %549 = icmp slt i64 %546, 0, !mcsema_real_eip !114
  store i1 %549, i1* %SF, !mcsema_real_eip !114
  store i1 %548, i1* %OF, !mcsema_real_eip !114
  store i1 %548, i1* %CF, !mcsema_real_eip !114
  store i64 %546, i64* %XCX, !mcsema_real_eip !114
  %550 = add i64 %546, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !115
  %551 = xor i64 %550, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !115
  %552 = xor i64 %551, %546, !mcsema_real_eip !115
  %553 = and i64 %552, 16, !mcsema_real_eip !115
  %554 = icmp ne i64 %553, 0, !mcsema_real_eip !115
  store i1 %554, i1* %AF, !mcsema_real_eip !115
  %555 = lshr i64 %550, 63, !mcsema_real_eip !115
  %556 = trunc i64 %555 to i1, !mcsema_real_eip !115
  store i1 %556, i1* %SF, !mcsema_real_eip !115
  %557 = icmp eq i64 %550, 0, !mcsema_real_eip !115
  store i1 %557, i1* %ZF, !mcsema_real_eip !115
  %558 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %546, !mcsema_real_eip !115
  %559 = xor i64 %558, -1, !mcsema_real_eip !115
  %560 = and i64 %559, %551, !mcsema_real_eip !115
  %561 = lshr i64 %560, 63, !mcsema_real_eip !115
  %562 = and i64 %561, 1, !mcsema_real_eip !115
  %563 = trunc i64 %562 to i1, !mcsema_real_eip !115
  store i1 %563, i1* %OF, !mcsema_real_eip !115
  %564 = trunc i64 %550 to i8, !mcsema_real_eip !115
  %565 = call i8 @llvm.ctpop.i8(i8 %564), !mcsema_real_eip !115
  %566 = trunc i8 %565 to i1, !mcsema_real_eip !115
  %567 = xor i1 %566, true, !mcsema_real_eip !115
  store i1 %567, i1* %PF, !mcsema_real_eip !115
  %568 = icmp ult i64 %550, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !115
  store i1 %568, i1* %CF, !mcsema_real_eip !115
  store i64 %550, i64* %XAX, !mcsema_real_eip !115
  br i1 %_cond1_n_cond2_cond3_615, label %569, label %570

; <label>:569:                                    ; preds = %541
  %_address_in_parent_stack_bt_677 = bitcast i8* %_pot_address_in_parent_stack_608 to i32*
  br label %570

; <label>:570:                                    ; preds = %541, %569
  %571 = phi i32* [ %487, %541 ], [ %_address_in_parent_stack_bt_677, %569 ]
  %_new_load_678 = load i32, i32* %571
  %572 = sext i32 %_new_load_678 to i64, !mcsema_real_eip !116
  store i64 %572, i64* %XCX, !mcsema_real_eip !116
  %573 = add i64 %550, %572, !mcsema_real_eip !117
  %574 = inttoptr i64 %573 to i64*, !mcsema_real_eip !117
  %575 = inttoptr i64 %573 to i8*, !mcsema_real_eip !117
  store i8 88, i8* %575, !mcsema_real_eip !117
  %_load_rsp_ptr_201 = load i8*, i8** %_RSP_ptr_
  %RSP_val.165 = load i64, i64* %XSP, !mcsema_real_eip !118
  %_new_gep_202 = getelementptr i8, i8* %_load_rsp_ptr_201, i64 -8
  %576 = sub i64 %RSP_val.165, 8, !mcsema_real_eip !118
  %_allin_new_bt_203 = bitcast i8* %_new_gep_202 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_203, !mcsema_real_eip !118
  store volatile i8* %_new_gep_202, i8** %_RSP_ptr_
  store i64 %576, i64* %XSP, !mcsema_real_eip !118
  %_load_rbp_ptr_259 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.2(%RegState* %0, i8* %_new_gep_202, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_259)
  %_rsp_fix_261 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_262 = getelementptr i8, i8* %_rsp_fix_261, i64 8
  store i8* %_gep_fix_262, i8** %_RSP_ptr_
  %_load_rbp_ptr_204 = load i8*, i8** %_RBP_ptr_
  %_new_gep_205 = getelementptr i8, i8* %_load_rbp_ptr_204, i64 -36
  %_allin_new_bt_206 = bitcast i8* %_new_gep_205 to i64*
  %577 = ptrtoint i64* %_allin_new_bt_206 to i64, !mcsema_real_eip !119
  %578 = inttoptr i64 %577 to i32*, !mcsema_real_eip !119
  %_ptr_bt_681 = bitcast i32* %578 to i8*
  %_offset_above_rbp_682 = sub i64 %577, %_local_end_to_int_
  %_pot_address_in_parent_stack_683 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_682
  %_cond1_684 = icmp ugt i8* %_ptr_bt_681, %_local_stack_end_ptr_
  %_cond2_1_685 = icmp ugt i8* %_ptr_bt_681, %_parent_stack_end_ptr_
  %_cond2_2_686 = icmp ult i8* %_ptr_bt_681, %_parent_stack_start_ptr_
  %_cond2_687 = or i1 %_cond2_1_685, %_cond2_2_686
  %_cond4_688 = icmp ule i8* %_pot_address_in_parent_stack_683, %_parent_stack_end_ptr_
  %_cond1_n_cond2_689 = and i1 %_cond1_684, %_cond2_687
  %_cond1_n_cond2_cond3_690 = and i1 %_cond1_n_cond2_689, %_cond4_688
  br i1 %_cond1_n_cond2_cond3_690, label %579, label %580

; <label>:579:                                    ; preds = %570
  %_address_in_parent_stack_bt_692 = bitcast i8* %_pot_address_in_parent_stack_683 to i32*
  br label %580

; <label>:580:                                    ; preds = %570, %579
  %581 = phi i32* [ %578, %570 ], [ %_address_in_parent_stack_bt_692, %579 ]
  %_new_load_693 = load i32, i32* %581
  %582 = zext i32 %_new_load_693 to i64, !mcsema_real_eip !119
  store i64 %582, i64* %XDX, !mcsema_real_eip !119
  %EDX_val.168 = load i32, i32* %EDX.97, !mcsema_real_eip !120
  %583 = add i32 1, %EDX_val.168, !mcsema_real_eip !120
  %584 = xor i32 %583, %EDX_val.168, !mcsema_real_eip !120
  %585 = xor i32 %584, 1, !mcsema_real_eip !120
  %586 = and i32 %585, 16, !mcsema_real_eip !120
  %587 = icmp ne i32 %586, 0, !mcsema_real_eip !120
  store i1 %587, i1* %AF, !mcsema_real_eip !120
  %588 = lshr i32 %583, 31, !mcsema_real_eip !120
  %589 = trunc i32 %588 to i1, !mcsema_real_eip !120
  store i1 %589, i1* %SF, !mcsema_real_eip !120
  %590 = icmp eq i32 %583, 0, !mcsema_real_eip !120
  store i1 %590, i1* %ZF, !mcsema_real_eip !120
  %591 = xor i32 %EDX_val.168, 1, !mcsema_real_eip !120
  %592 = xor i32 %591, -1, !mcsema_real_eip !120
  %593 = and i32 %592, %584, !mcsema_real_eip !120
  %594 = lshr i32 %593, 31, !mcsema_real_eip !120
  %595 = and i32 %594, 1, !mcsema_real_eip !120
  %596 = trunc i32 %595 to i1, !mcsema_real_eip !120
  store i1 %596, i1* %OF, !mcsema_real_eip !120
  %597 = trunc i32 %583 to i8, !mcsema_real_eip !120
  %598 = call i8 @llvm.ctpop.i8(i8 %597), !mcsema_real_eip !120
  %599 = trunc i8 %598 to i1, !mcsema_real_eip !120
  %600 = xor i1 %599, true, !mcsema_real_eip !120
  store i1 %600, i1* %PF, !mcsema_real_eip !120
  %601 = icmp ult i32 %583, %EDX_val.168, !mcsema_real_eip !120
  store i1 %601, i1* %CF, !mcsema_real_eip !120
  %602 = zext i32 %583 to i64, !mcsema_real_eip !120
  store i64 %602, i64* %XDX, !mcsema_real_eip !120
  %EDX_val.171 = load i32, i32* %EDX.97, !mcsema_real_eip !121
  store i32 %EDX_val.171, i32* %578, !mcsema_real_eip !121
  br label %block_0x114, !mcsema_real_eip !122

block_0x249:                                      ; preds = %460
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !123
  br i1 %_cond1_n_cond2_cond3_542, label %603, label %604

; <label>:603:                                    ; preds = %block_0x249
  %_address_in_parent_stack_bt_707 = bitcast i8* %_pot_address_in_parent_stack_535 to i32*
  br label %604

; <label>:604:                                    ; preds = %block_0x249, %603
  %605 = phi i32* [ %398, %block_0x249 ], [ %_address_in_parent_stack_bt_707, %603 ]
  %_new_load_708 = load i32, i32* %605
  %606 = sext i32 %_new_load_708 to i64, !mcsema_real_eip !124
  store i64 %606, i64* %XCX, !mcsema_real_eip !124
  %607 = sext i64 %606 to i128, !mcsema_real_eip !125
  %608 = mul i128 %607, 11, !mcsema_real_eip !125
  %609 = trunc i128 %608 to i64, !mcsema_real_eip !125
  %610 = sext i64 %609 to i128, !mcsema_real_eip !125
  %611 = icmp ne i128 %610, %608, !mcsema_real_eip !125
  %612 = icmp slt i64 %609, 0, !mcsema_real_eip !125
  store i1 %612, i1* %SF, !mcsema_real_eip !125
  store i1 %611, i1* %OF, !mcsema_real_eip !125
  store i1 %611, i1* %CF, !mcsema_real_eip !125
  store i64 %609, i64* %XCX, !mcsema_real_eip !125
  %613 = add i64 %609, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !126
  %614 = xor i64 %613, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !126
  %615 = xor i64 %614, %609, !mcsema_real_eip !126
  %616 = and i64 %615, 16, !mcsema_real_eip !126
  %617 = icmp ne i64 %616, 0, !mcsema_real_eip !126
  store i1 %617, i1* %AF, !mcsema_real_eip !126
  %618 = lshr i64 %613, 63, !mcsema_real_eip !126
  %619 = trunc i64 %618 to i1, !mcsema_real_eip !126
  store i1 %619, i1* %SF, !mcsema_real_eip !126
  %620 = icmp eq i64 %613, 0, !mcsema_real_eip !126
  store i1 %620, i1* %ZF, !mcsema_real_eip !126
  %621 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %609, !mcsema_real_eip !126
  %622 = xor i64 %621, -1, !mcsema_real_eip !126
  %623 = and i64 %622, %614, !mcsema_real_eip !126
  %624 = lshr i64 %623, 63, !mcsema_real_eip !126
  %625 = and i64 %624, 1, !mcsema_real_eip !126
  %626 = trunc i64 %625 to i1, !mcsema_real_eip !126
  store i1 %626, i1* %OF, !mcsema_real_eip !126
  %627 = trunc i64 %613 to i8, !mcsema_real_eip !126
  %628 = call i8 @llvm.ctpop.i8(i8 %627), !mcsema_real_eip !126
  %629 = trunc i8 %628 to i1, !mcsema_real_eip !126
  %630 = xor i1 %629, true, !mcsema_real_eip !126
  store i1 %630, i1* %PF, !mcsema_real_eip !126
  %631 = icmp ult i64 %613, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !126
  store i1 %631, i1* %CF, !mcsema_real_eip !126
  store i64 %613, i64* %XAX, !mcsema_real_eip !126
  br i1 %_cond1_n_cond2_cond3_557, label %632, label %633

; <label>:632:                                    ; preds = %604
  %_address_in_parent_stack_bt_722 = bitcast i8* %_pot_address_in_parent_stack_550 to i32*
  br label %633

; <label>:633:                                    ; preds = %604, %632
  %634 = phi i32* [ %429, %604 ], [ %_address_in_parent_stack_bt_722, %632 ]
  %_new_load_723 = load i32, i32* %634
  %635 = sext i32 %_new_load_723 to i64, !mcsema_real_eip !127
  store i64 %635, i64* %XCX, !mcsema_real_eip !127
  %636 = add i64 %613, %635, !mcsema_real_eip !128
  %637 = inttoptr i64 %636 to i64*, !mcsema_real_eip !128
  %638 = inttoptr i64 %636 to i8*, !mcsema_real_eip !128
  %_offset_above_rbp_726 = sub i64 %636, %_local_end_to_int_
  %_pot_address_in_parent_stack_727 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_726
  %_cond1_728 = icmp ugt i8* %638, %_local_stack_end_ptr_
  %_cond2_1_729 = icmp ugt i8* %638, %_parent_stack_end_ptr_
  %_cond2_2_730 = icmp ult i8* %638, %_parent_stack_start_ptr_
  %_cond2_731 = or i1 %_cond2_1_729, %_cond2_2_730
  %_cond4_732 = icmp ule i8* %_pot_address_in_parent_stack_727, %_parent_stack_end_ptr_
  %_cond1_n_cond2_733 = and i1 %_cond1_728, %_cond2_731
  %_cond1_n_cond2_cond3_734 = and i1 %_cond1_n_cond2_733, %_cond4_732
  br i1 %_cond1_n_cond2_cond3_734, label %639, label %640

; <label>:639:                                    ; preds = %633
  br label %640

; <label>:640:                                    ; preds = %633, %639
  %641 = phi i8* [ %638, %633 ], [ %_pot_address_in_parent_stack_727, %639 ]
  %_new_load_736 = load i8, i8* %641
  %642 = sext i8 %_new_load_736 to i32, !mcsema_real_eip !128
  %643 = zext i32 %642 to i64, !mcsema_real_eip !128
  store i64 %643, i64* %XDX, !mcsema_real_eip !128
  %EDX_val.192 = load i32, i32* %EDX.97, !mcsema_real_eip !129
  %644 = sub i32 %EDX_val.192, 124, !mcsema_real_eip !129
  %645 = xor i32 %644, %EDX_val.192, !mcsema_real_eip !129
  %646 = xor i32 %645, 124, !mcsema_real_eip !129
  %647 = and i32 %646, 16, !mcsema_real_eip !129
  %648 = icmp ne i32 %647, 0, !mcsema_real_eip !129
  store i1 %648, i1* %AF, !mcsema_real_eip !129
  %649 = trunc i32 %644 to i8, !mcsema_real_eip !129
  %650 = call i8 @llvm.ctpop.i8(i8 %649), !mcsema_real_eip !129
  %651 = trunc i8 %650 to i1, !mcsema_real_eip !129
  %652 = xor i1 %651, true, !mcsema_real_eip !129
  store i1 %652, i1* %PF, !mcsema_real_eip !129
  %653 = icmp eq i32 %644, 0, !mcsema_real_eip !129
  store i1 %653, i1* %ZF, !mcsema_real_eip !129
  %654 = lshr i32 %644, 31, !mcsema_real_eip !129
  %655 = trunc i32 %654 to i1, !mcsema_real_eip !129
  store i1 %655, i1* %SF, !mcsema_real_eip !129
  %656 = icmp ult i32 %EDX_val.192, 124, !mcsema_real_eip !129
  store i1 %656, i1* %CF, !mcsema_real_eip !129
  %657 = xor i32 %EDX_val.192, 124, !mcsema_real_eip !129
  %658 = and i32 %657, %645, !mcsema_real_eip !129
  %659 = lshr i32 %658, 31, !mcsema_real_eip !129
  %660 = trunc i32 %659 to i1, !mcsema_real_eip !129
  store i1 %660, i1* %OF, !mcsema_real_eip !129
  %661 = icmp eq i1 %653, false, !mcsema_real_eip !130
  br i1 %661, label %block_0x283, label %block_0x26f, !mcsema_real_eip !130

block_0x283:                                      ; preds = %696, %683, %640, %460
  %_new_gep_217 = getelementptr i8, i8* %_load_rbp_ptr_174, i64 -28
  %_allin_new_bt_218 = bitcast i8* %_new_gep_217 to i64*
  %662 = ptrtoint i64* %_allin_new_bt_218 to i64, !mcsema_real_eip !131
  %663 = inttoptr i64 %662 to i32*, !mcsema_real_eip !131
  %_ptr_bt_739 = bitcast i32* %663 to i8*
  %_offset_above_rbp_740 = sub i64 %662, %_local_end_to_int_
  %_pot_address_in_parent_stack_741 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_740
  %_cond1_742 = icmp ugt i8* %_ptr_bt_739, %_local_stack_end_ptr_
  %_cond2_1_743 = icmp ugt i8* %_ptr_bt_739, %_parent_stack_end_ptr_
  %_cond2_2_744 = icmp ult i8* %_ptr_bt_739, %_parent_stack_start_ptr_
  %_cond2_745 = or i1 %_cond2_1_743, %_cond2_2_744
  %_cond4_746 = icmp ule i8* %_pot_address_in_parent_stack_741, %_parent_stack_end_ptr_
  %_cond1_n_cond2_747 = and i1 %_cond1_742, %_cond2_745
  %_cond1_n_cond2_cond3_748 = and i1 %_cond1_n_cond2_747, %_cond4_746
  br i1 %_cond1_n_cond2_cond3_748, label %664, label %665

; <label>:664:                                    ; preds = %block_0x283
  %_address_in_parent_stack_bt_750 = bitcast i8* %_pot_address_in_parent_stack_741 to i32*
  br label %665

; <label>:665:                                    ; preds = %block_0x283, %664
  %666 = phi i32* [ %663, %block_0x283 ], [ %_address_in_parent_stack_bt_750, %664 ]
  %_new_load_751 = load i32, i32* %666
  %667 = zext i32 %_new_load_751 to i64, !mcsema_real_eip !131
  store i64 %667, i64* %XAX, !mcsema_real_eip !131
  %EAX_val.179 = load i32, i32* %EAX.4, !mcsema_real_eip !132
  store i32 %EAX_val.179, i32* %429, !mcsema_real_eip !132
  %_load_rbp_ptr_222 = load i8*, i8** %_RBP_ptr_
  %_new_gep_223 = getelementptr i8, i8* %_load_rbp_ptr_222, i64 -32
  %_allin_new_bt_224 = bitcast i8* %_new_gep_223 to i64*
  %668 = ptrtoint i64* %_allin_new_bt_224 to i64, !mcsema_real_eip !133
  %669 = inttoptr i64 %668 to i32*, !mcsema_real_eip !133
  %_ptr_bt_754 = bitcast i32* %669 to i8*
  %_offset_above_rbp_755 = sub i64 %668, %_local_end_to_int_
  %_pot_address_in_parent_stack_756 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_755
  %_cond1_757 = icmp ugt i8* %_ptr_bt_754, %_local_stack_end_ptr_
  %_cond2_1_758 = icmp ugt i8* %_ptr_bt_754, %_parent_stack_end_ptr_
  %_cond2_2_759 = icmp ult i8* %_ptr_bt_754, %_parent_stack_start_ptr_
  %_cond2_760 = or i1 %_cond2_1_758, %_cond2_2_759
  %_cond4_761 = icmp ule i8* %_pot_address_in_parent_stack_756, %_parent_stack_end_ptr_
  %_cond1_n_cond2_762 = and i1 %_cond1_757, %_cond2_760
  %_cond1_n_cond2_cond3_763 = and i1 %_cond1_n_cond2_762, %_cond4_761
  br i1 %_cond1_n_cond2_cond3_763, label %670, label %671

; <label>:670:                                    ; preds = %665
  %_address_in_parent_stack_bt_765 = bitcast i8* %_pot_address_in_parent_stack_756 to i32*
  br label %671

; <label>:671:                                    ; preds = %665, %670
  %672 = phi i32* [ %669, %665 ], [ %_address_in_parent_stack_bt_765, %670 ]
  %_new_load_766 = load i32, i32* %672
  %673 = zext i32 %_new_load_766 to i64, !mcsema_real_eip !133
  store i64 %673, i64* %XAX, !mcsema_real_eip !133
  %_new_gep_226 = getelementptr i8, i8* %_load_rbp_ptr_222, i64 -24
  %_allin_new_bt_227 = bitcast i8* %_new_gep_226 to i64*
  %EAX_val.183 = load i32, i32* %EAX.4, !mcsema_real_eip !134
  %674 = ptrtoint i64* %_allin_new_bt_227 to i64, !mcsema_real_eip !134
  %675 = inttoptr i64 %674 to i32*, !mcsema_real_eip !134
  store i32 %EAX_val.183, i32* %675, !mcsema_real_eip !134
  br label %block_0x28f, !mcsema_real_eip !123

block_0x2a7:                                      ; preds = %518
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64* %XDI, !mcsema_real_eip !135
  %AL.193 = bitcast i64* %XAX to i8*, !mcsema_real_eip !136
  store i8 0, i8* %AL.193, !mcsema_real_eip !136
  %RSI_val.195 = load i64, i64* %XSI, !mcsema_real_eip !137
  %_load_rsp_ptr_228 = load i8*, i8** %_RSP_ptr_
  %RSP_val.196 = load i64, i64* %XSP, !mcsema_real_eip !137
  %_new_gep_229 = getelementptr i8, i8* %_load_rsp_ptr_228, i64 -8
  %676 = sub i64 %RSP_val.196, 8, !mcsema_real_eip !137
  %_allin_new_bt_230 = bitcast i8* %_new_gep_229 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_230, !mcsema_real_eip !137
  store volatile i8* %_new_gep_229, i8** %_RSP_ptr_
  store i64 %676, i64* %XSP, !mcsema_real_eip !137
  %677 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 85), i64 %RSI_val.195)
  %_rsp_fix_263 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_264 = getelementptr i8, i8* %_rsp_fix_263, i64 8
  store i8* %_gep_fix_264, i8** %_RSP_ptr_
  store i64 %677, i64* %XAX, !mcsema_real_eip !137
  %_load_rbp_ptr_231 = load i8*, i8** %_RBP_ptr_
  %_new_gep_232 = getelementptr i8, i8* %_load_rbp_ptr_231, i64 -4
  %_allin_new_bt_233 = bitcast i8* %_new_gep_232 to i64*
  %678 = ptrtoint i64* %_allin_new_bt_233 to i64, !mcsema_real_eip !138
  %679 = inttoptr i64 %678 to i32*, !mcsema_real_eip !138
  store i32 2, i32* %679, !mcsema_real_eip !138
  %_load_rbp_ptr_234 = load i8*, i8** %_RBP_ptr_
  %_new_gep_235 = getelementptr i8, i8* %_load_rbp_ptr_234, i64 -104
  %_allin_new_bt_236 = bitcast i8* %_new_gep_235 to i64*
  %EAX_val.200 = load i32, i32* %EAX.4, !mcsema_real_eip !139
  %680 = ptrtoint i64* %_allin_new_bt_236 to i64, !mcsema_real_eip !139
  %681 = inttoptr i64 %680 to i32*, !mcsema_real_eip !139
  store i32 %EAX_val.200, i32* %681, !mcsema_real_eip !139
  br label %block_0x312, !mcsema_real_eip !140

block_0x26f:                                      ; preds = %640
  br i1 %_cond1_n_cond2_cond3_557, label %682, label %683

; <label>:682:                                    ; preds = %block_0x26f
  %_address_in_parent_stack_bt_780 = bitcast i8* %_pot_address_in_parent_stack_550 to i32*
  br label %683

; <label>:683:                                    ; preds = %block_0x26f, %682
  %684 = phi i32* [ %429, %block_0x26f ], [ %_address_in_parent_stack_bt_780, %682 ]
  %_new_load_781 = load i32, i32* %684
  store i1 false, i1* %AF, !mcsema_real_eip !141
  %685 = trunc i32 %_new_load_781 to i8, !mcsema_real_eip !141
  %686 = call i8 @llvm.ctpop.i8(i8 %685), !mcsema_real_eip !141
  %687 = trunc i8 %686 to i1, !mcsema_real_eip !141
  %688 = xor i1 %687, true, !mcsema_real_eip !141
  store i1 %688, i1* %PF, !mcsema_real_eip !141
  %689 = icmp eq i32 %_new_load_781, 0, !mcsema_real_eip !141
  store i1 %689, i1* %ZF, !mcsema_real_eip !141
  %690 = lshr i32 %_new_load_781, 31, !mcsema_real_eip !141
  %691 = trunc i32 %690 to i1, !mcsema_real_eip !141
  store i1 %691, i1* %SF, !mcsema_real_eip !141
  store i1 false, i1* %CF, !mcsema_real_eip !141
  store i1 false, i1* %OF, !mcsema_real_eip !141
  %692 = icmp eq i1 %691, false, !mcsema_real_eip !142
  %693 = icmp eq i1 %692, false, !mcsema_real_eip !142
  %694 = or i1 %689, %693, !mcsema_real_eip !142
  br i1 %694, label %block_0x283, label %block_0x279, !mcsema_real_eip !142

block_0x279:                                      ; preds = %683
  br i1 %_cond1_n_cond2_cond3_557, label %695, label %696

; <label>:695:                                    ; preds = %block_0x279
  %_address_in_parent_stack_bt_795 = bitcast i8* %_pot_address_in_parent_stack_550 to i32*
  br label %696

; <label>:696:                                    ; preds = %block_0x279, %695
  %697 = phi i32* [ %429, %block_0x279 ], [ %_address_in_parent_stack_bt_795, %695 ]
  %_new_load_796 = load i32, i32* %697
  %698 = sub i32 %_new_load_796, 11, !mcsema_real_eip !143
  %699 = xor i32 %698, %_new_load_796, !mcsema_real_eip !143
  %700 = xor i32 %699, 11, !mcsema_real_eip !143
  %701 = and i32 %700, 16, !mcsema_real_eip !143
  %702 = icmp ne i32 %701, 0, !mcsema_real_eip !143
  store i1 %702, i1* %AF, !mcsema_real_eip !143
  %703 = trunc i32 %698 to i8, !mcsema_real_eip !143
  %704 = call i8 @llvm.ctpop.i8(i8 %703), !mcsema_real_eip !143
  %705 = trunc i8 %704 to i1, !mcsema_real_eip !143
  %706 = xor i1 %705, true, !mcsema_real_eip !143
  store i1 %706, i1* %PF, !mcsema_real_eip !143
  %707 = icmp eq i32 %698, 0, !mcsema_real_eip !143
  store i1 %707, i1* %ZF, !mcsema_real_eip !143
  %708 = lshr i32 %698, 31, !mcsema_real_eip !143
  %709 = trunc i32 %708 to i1, !mcsema_real_eip !143
  store i1 %709, i1* %SF, !mcsema_real_eip !143
  %710 = icmp ult i32 %_new_load_796, 11, !mcsema_real_eip !143
  store i1 %710, i1* %CF, !mcsema_real_eip !143
  %711 = xor i32 %_new_load_796, 11, !mcsema_real_eip !143
  %712 = and i32 %711, %699, !mcsema_real_eip !143
  %713 = lshr i32 %712, 31, !mcsema_real_eip !143
  %714 = trunc i32 %713 to i1, !mcsema_real_eip !143
  store i1 %714, i1* %OF, !mcsema_real_eip !143
  %715 = icmp eq i1 %709, %714, !mcsema_real_eip !144
  %716 = icmp eq i1 %715, false, !mcsema_real_eip !144
  br i1 %716, label %block_0x28f, label %block_0x283, !mcsema_real_eip !144
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !145
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !145
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !145
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !145
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !145
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !145
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !145
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !145
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !145
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !145
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !145
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !145
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !145
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !145
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !145
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !145
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !145
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !145
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !145
  br label %block_0x0, !mcsema_real_eip !145

block_0x0:                                        ; preds = %entry
  %RSP_val.204 = load i64, i64* %XSP, !mcsema_real_eip !145
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.204, 8, !mcsema_real_eip !145
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !145
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !146
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.206 = load i64, i64* %XSP, !mcsema_real_eip !147
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.206, 32, !mcsema_real_eip !147
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !147
  %4 = and i64 %3, 16, !mcsema_real_eip !147
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !147
  store i1 %5, i1* %AF, !mcsema_real_eip !147
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !147
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !147
  %8 = xor i1 %7, true, !mcsema_real_eip !147
  store i1 %8, i1* %PF, !mcsema_real_eip !147
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !147
  %9 = lshr i64 %2, 63, !mcsema_real_eip !147
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !147
  store i1 %10, i1* %SF, !mcsema_real_eip !147
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !147
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !147
  %12 = lshr i64 %11, 63, !mcsema_real_eip !147
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !147
  store i1 %13, i1* %OF, !mcsema_real_eip !147
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !147
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !148
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !148
  store i32 0, i32* %15, !mcsema_real_eip !148
  br label %block_0xf, !mcsema_real_eip !149

block_0xf:                                        ; preds = %170, %block_0x0
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -4
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !149
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !149
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %17 to i8*
  %_offset_above_rbp_ = sub i64 %16, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %18, label %19

; <label>:18:                                     ; preds = %block_0xf
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %19

; <label>:19:                                     ; preds = %block_0xf, %18
  %20 = phi i32* [ %17, %block_0xf ], [ %_address_in_parent_stack_bt_, %18 ]
  %_new_load_ = load i32, i32* %20
  %21 = sub i32 %_new_load_, 7, !mcsema_real_eip !149
  %22 = xor i32 %21, %_new_load_, !mcsema_real_eip !149
  %23 = xor i32 %22, 7, !mcsema_real_eip !149
  %24 = and i32 %23, 16, !mcsema_real_eip !149
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !149
  store i1 %25, i1* %AF, !mcsema_real_eip !149
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !149
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !149
  %28 = trunc i8 %27 to i1, !mcsema_real_eip !149
  %29 = xor i1 %28, true, !mcsema_real_eip !149
  store i1 %29, i1* %PF, !mcsema_real_eip !149
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !149
  store i1 %30, i1* %ZF, !mcsema_real_eip !149
  %31 = lshr i32 %21, 31, !mcsema_real_eip !149
  %32 = trunc i32 %31 to i1, !mcsema_real_eip !149
  store i1 %32, i1* %SF, !mcsema_real_eip !149
  %33 = icmp ult i32 %_new_load_, 7, !mcsema_real_eip !149
  store i1 %33, i1* %CF, !mcsema_real_eip !149
  %34 = xor i32 %_new_load_, 7, !mcsema_real_eip !149
  %35 = and i32 %34, %22, !mcsema_real_eip !149
  %36 = lshr i32 %35, 31, !mcsema_real_eip !149
  %37 = trunc i32 %36 to i1, !mcsema_real_eip !149
  store i1 %37, i1* %OF, !mcsema_real_eip !149
  %38 = icmp eq i1 %32, %37, !mcsema_real_eip !150
  br i1 %38, label %block_0x8b, label %block_0x19, !mcsema_real_eip !150

block_0x19:                                       ; preds = %19
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %39 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !151
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !151
  store i32 0, i32* %40, !mcsema_real_eip !151
  br label %block_0x20, !mcsema_real_eip !152

block_0x8b:                                       ; preds = %19
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !153
  %AL.209 = bitcast i64* %XAX to i8*, !mcsema_real_eip !154
  store i8 0, i8* %AL.209, !mcsema_real_eip !154
  %RSI_val.211 = load i64, i64* %XSI, !mcsema_real_eip !155
  %_load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_
  %RSP_val.212 = load i64, i64* %XSP, !mcsema_real_eip !155
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_22, i64 -8
  %41 = sub i64 %RSP_val.212, 8, !mcsema_real_eip !155
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, !mcsema_real_eip !155
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %41, i64* %XSP, !mcsema_real_eip !155
  %42 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.211)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %42, i64* %XAX, !mcsema_real_eip !155
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -20
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %EAX.214 = bitcast i64* %XAX to i32*, !mcsema_real_eip !156
  %EAX_val.215 = load i32, i32* %EAX.214, !mcsema_real_eip !156
  %43 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !156
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !156
  store i32 %EAX_val.215, i32* %44, !mcsema_real_eip !156
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %RSP_val.216 = load i64, i64* %XSP, !mcsema_real_eip !157
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 32
  %45 = add i64 32, %RSP_val.216, !mcsema_real_eip !157
  %_trans_p2i_30 = ptrtoint i8* %_new_gep_29 to i64
  %_trans_p2i_31 = ptrtoint i8* %_load_rsp_ptr_28 to i64
  %_trans_xor_32 = xor i64 %_trans_p2i_30, %_trans_p2i_31
  %46 = xor i64 %_trans_xor_32, 32, !mcsema_real_eip !157
  %47 = and i64 %46, 16, !mcsema_real_eip !157
  %48 = icmp ne i64 %47, 0, !mcsema_real_eip !157
  store i1 %48, i1* %AF, !mcsema_real_eip !157
  %49 = lshr i64 %45, 63, !mcsema_real_eip !157
  %50 = trunc i64 %49 to i1, !mcsema_real_eip !157
  store i1 %50, i1* %SF, !mcsema_real_eip !157
  %_trans_icmp_eq_34 = icmp eq i64 %_trans_p2i_30, 0
  store i1 %_trans_icmp_eq_34, i1* %ZF, !mcsema_real_eip !157
  %_trans_xor_36 = xor i64 %_trans_p2i_31, 32
  %51 = xor i64 %_trans_xor_36, -1, !mcsema_real_eip !157
  %52 = and i64 %51, %_trans_xor_32, !mcsema_real_eip !157
  %53 = lshr i64 %52, 63, !mcsema_real_eip !157
  %54 = and i64 %53, 1, !mcsema_real_eip !157
  %55 = trunc i64 %54 to i1, !mcsema_real_eip !157
  store i1 %55, i1* %OF, !mcsema_real_eip !157
  %_trans_trunc_41 = trunc i64 %_trans_p2i_30 to i8
  %56 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_41), !mcsema_real_eip !157
  %57 = trunc i8 %56 to i1, !mcsema_real_eip !157
  %58 = xor i1 %57, true, !mcsema_real_eip !157
  store i1 %58, i1* %PF, !mcsema_real_eip !157
  %_trans_icmp_ne_43 = icmp ne i64 %_trans_p2i_30, %RSP_val.216
  store i1 %_trans_icmp_ne_43, i1* %CF, !mcsema_real_eip !157
  store volatile i8* %_new_gep_29, i8** %_RSP_ptr_
  store i64 %45, i64* %XSP, !mcsema_real_eip !157
  %_allin_new_bt_45 = bitcast i8* %_new_gep_29 to i64*
  %_ptr_to_int_87 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_90 = sub i64 %_ptr_to_int_87, %_local_end_to_int_
  %_pot_address_in_parent_stack_91 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_90
  %_cond1_92 = icmp ugt i8* %_new_gep_29, %_local_stack_end_ptr_
  %_cond2_1_93 = icmp ugt i8* %_new_gep_29, %_parent_stack_end_ptr_
  %_cond2_2_94 = icmp ult i8* %_new_gep_29, %_parent_stack_start_ptr_
  %_cond2_95 = or i1 %_cond2_1_93, %_cond2_2_94
  %_cond4_96 = icmp ule i8* %_pot_address_in_parent_stack_91, %_parent_stack_end_ptr_
  %_cond1_n_cond2_97 = and i1 %_cond1_92, %_cond2_95
  %_cond1_n_cond2_cond3_98 = and i1 %_cond1_n_cond2_97, %_cond4_96
  br i1 %_cond1_n_cond2_cond3_98, label %59, label %60

; <label>:59:                                     ; preds = %block_0x8b
  %_address_in_parent_stack_bt_100 = bitcast i8* %_pot_address_in_parent_stack_91 to i64*
  br label %60

; <label>:60:                                     ; preds = %block_0x8b, %59
  %61 = phi i64* [ %_allin_new_bt_45, %block_0x8b ], [ %_address_in_parent_stack_bt_100, %59 ]
  %_new_load_101 = load i64, i64* %61
  %_new_int2ptr_ = inttoptr i64 %_new_load_101 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_101, i64* %XBP, !mcsema_real_eip !158
  %_new_gep_46 = getelementptr i8, i8* %_new_gep_29, i64 8
  %62 = add i64 %45, 8, !mcsema_real_eip !158
  store volatile i8* %_new_gep_46, i8** %_RSP_ptr_
  store i64 %62, i64* %XSP, !mcsema_real_eip !158
  %_new_gep_48 = getelementptr i8, i8* %_new_gep_46, i64 8
  %63 = add i64 %62, 8, !mcsema_real_eip !159
  %_allin_new_bt_49 = bitcast i8* %_new_gep_46 to i64*
  %_ptr_to_int_102 = ptrtoint i64* %_allin_new_bt_49 to i64
  %_offset_above_rbp_105 = sub i64 %_ptr_to_int_102, %_local_end_to_int_
  %_pot_address_in_parent_stack_106 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_105
  %_cond1_107 = icmp ugt i8* %_new_gep_46, %_local_stack_end_ptr_
  %_cond2_1_108 = icmp ugt i8* %_new_gep_46, %_parent_stack_end_ptr_
  %_cond2_2_109 = icmp ult i8* %_new_gep_46, %_parent_stack_start_ptr_
  %_cond2_110 = or i1 %_cond2_1_108, %_cond2_2_109
  %_cond4_111 = icmp ule i8* %_pot_address_in_parent_stack_106, %_parent_stack_end_ptr_
  %_cond1_n_cond2_112 = and i1 %_cond1_107, %_cond2_110
  %_cond1_n_cond2_cond3_113 = and i1 %_cond1_n_cond2_112, %_cond4_111
  br i1 %_cond1_n_cond2_cond3_113, label %64, label %65

; <label>:64:                                     ; preds = %60
  %_address_in_parent_stack_bt_115 = bitcast i8* %_pot_address_in_parent_stack_106 to i64*
  br label %65

; <label>:65:                                     ; preds = %60, %64
  %66 = phi i64* [ %_allin_new_bt_49, %60 ], [ %_address_in_parent_stack_bt_115, %64 ]
  %_new_load_116 = load i64, i64* %66
  store i64 %_new_load_116, i64* %XIP, !mcsema_real_eip !159
  store volatile i8* %_new_gep_48, i8** %_RSP_ptr_
  store i64 %63, i64* %XSP, !mcsema_real_eip !159
  ret void, !mcsema_real_eip !159

block_0x20:                                       ; preds = %140, %block_0x19
  %_load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_
  %_new_gep_51 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -8
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %67 = ptrtoint i64* %_allin_new_bt_52 to i64, !mcsema_real_eip !152
  %68 = inttoptr i64 %67 to i32*, !mcsema_real_eip !152
  %_ptr_bt_119 = bitcast i32* %68 to i8*
  %_offset_above_rbp_120 = sub i64 %67, %_local_end_to_int_
  %_pot_address_in_parent_stack_121 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_120
  %_cond1_122 = icmp ugt i8* %_ptr_bt_119, %_local_stack_end_ptr_
  %_cond2_1_123 = icmp ugt i8* %_ptr_bt_119, %_parent_stack_end_ptr_
  %_cond2_2_124 = icmp ult i8* %_ptr_bt_119, %_parent_stack_start_ptr_
  %_cond2_125 = or i1 %_cond2_1_123, %_cond2_2_124
  %_cond4_126 = icmp ule i8* %_pot_address_in_parent_stack_121, %_parent_stack_end_ptr_
  %_cond1_n_cond2_127 = and i1 %_cond1_122, %_cond2_125
  %_cond1_n_cond2_cond3_128 = and i1 %_cond1_n_cond2_127, %_cond4_126
  br i1 %_cond1_n_cond2_cond3_128, label %69, label %70

; <label>:69:                                     ; preds = %block_0x20
  %_address_in_parent_stack_bt_130 = bitcast i8* %_pot_address_in_parent_stack_121 to i32*
  br label %70

; <label>:70:                                     ; preds = %block_0x20, %69
  %71 = phi i32* [ %68, %block_0x20 ], [ %_address_in_parent_stack_bt_130, %69 ]
  %_new_load_131 = load i32, i32* %71
  %72 = sub i32 %_new_load_131, 11, !mcsema_real_eip !152
  %73 = xor i32 %72, %_new_load_131, !mcsema_real_eip !152
  %74 = xor i32 %73, 11, !mcsema_real_eip !152
  %75 = and i32 %74, 16, !mcsema_real_eip !152
  %76 = icmp ne i32 %75, 0, !mcsema_real_eip !152
  store i1 %76, i1* %AF, !mcsema_real_eip !152
  %77 = trunc i32 %72 to i8, !mcsema_real_eip !152
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !152
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !152
  %80 = xor i1 %79, true, !mcsema_real_eip !152
  store i1 %80, i1* %PF, !mcsema_real_eip !152
  %81 = icmp eq i32 %72, 0, !mcsema_real_eip !152
  store i1 %81, i1* %ZF, !mcsema_real_eip !152
  %82 = lshr i32 %72, 31, !mcsema_real_eip !152
  %83 = trunc i32 %82 to i1, !mcsema_real_eip !152
  store i1 %83, i1* %SF, !mcsema_real_eip !152
  %84 = icmp ult i32 %_new_load_131, 11, !mcsema_real_eip !152
  store i1 %84, i1* %CF, !mcsema_real_eip !152
  %85 = xor i32 %_new_load_131, 11, !mcsema_real_eip !152
  %86 = and i32 %85, %73, !mcsema_real_eip !152
  %87 = lshr i32 %86, 31, !mcsema_real_eip !152
  %88 = trunc i32 %87 to i1, !mcsema_real_eip !152
  store i1 %88, i1* %OF, !mcsema_real_eip !152
  %89 = icmp eq i1 %83, %88, !mcsema_real_eip !160
  br i1 %89, label %block_0x69, label %block_0x2a, !mcsema_real_eip !160

block_0x2a:                                       ; preds = %70
  store i64 ptrtoint (%2* @data_0x42d to i64), i64* %XDI, !mcsema_real_eip !161
  store i64 ptrtoint (%1* @data_0x3e0 to i64), i64* %XAX, !mcsema_real_eip !162
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_50, i64 -4
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %90 = ptrtoint i64* %_allin_new_bt_55 to i64, !mcsema_real_eip !163
  %91 = inttoptr i64 %90 to i32*, !mcsema_real_eip !163
  %_ptr_bt_134 = bitcast i32* %91 to i8*
  %_offset_above_rbp_135 = sub i64 %90, %_local_end_to_int_
  %_pot_address_in_parent_stack_136 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_135
  %_cond1_137 = icmp ugt i8* %_ptr_bt_134, %_local_stack_end_ptr_
  %_cond2_1_138 = icmp ugt i8* %_ptr_bt_134, %_parent_stack_end_ptr_
  %_cond2_2_139 = icmp ult i8* %_ptr_bt_134, %_parent_stack_start_ptr_
  %_cond2_140 = or i1 %_cond2_1_138, %_cond2_2_139
  %_cond4_141 = icmp ule i8* %_pot_address_in_parent_stack_136, %_parent_stack_end_ptr_
  %_cond1_n_cond2_142 = and i1 %_cond1_137, %_cond2_140
  %_cond1_n_cond2_cond3_143 = and i1 %_cond1_n_cond2_142, %_cond4_141
  br i1 %_cond1_n_cond2_cond3_143, label %92, label %93

; <label>:92:                                     ; preds = %block_0x2a
  %_address_in_parent_stack_bt_145 = bitcast i8* %_pot_address_in_parent_stack_136 to i32*
  br label %93

; <label>:93:                                     ; preds = %block_0x2a, %92
  %94 = phi i32* [ %91, %block_0x2a ], [ %_address_in_parent_stack_bt_145, %92 ]
  %_new_load_146 = load i32, i32* %94
  %95 = sext i32 %_new_load_146 to i64, !mcsema_real_eip !163
  store i64 %95, i64* %XCX, !mcsema_real_eip !163
  %96 = sext i64 %95 to i128, !mcsema_real_eip !164
  %97 = mul i128 %96, 11, !mcsema_real_eip !164
  %98 = trunc i128 %97 to i64, !mcsema_real_eip !164
  %99 = sext i64 %98 to i128, !mcsema_real_eip !164
  %100 = icmp ne i128 %99, %97, !mcsema_real_eip !164
  %101 = icmp slt i64 %98, 0, !mcsema_real_eip !164
  store i1 %101, i1* %SF, !mcsema_real_eip !164
  store i1 %100, i1* %OF, !mcsema_real_eip !164
  store i1 %100, i1* %CF, !mcsema_real_eip !164
  store i64 %98, i64* %XCX, !mcsema_real_eip !164
  %102 = add i64 %98, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !165
  %103 = xor i64 %102, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !165
  %104 = xor i64 %103, %98, !mcsema_real_eip !165
  %105 = and i64 %104, 16, !mcsema_real_eip !165
  %106 = icmp ne i64 %105, 0, !mcsema_real_eip !165
  store i1 %106, i1* %AF, !mcsema_real_eip !165
  %107 = lshr i64 %102, 63, !mcsema_real_eip !165
  %108 = trunc i64 %107 to i1, !mcsema_real_eip !165
  store i1 %108, i1* %SF, !mcsema_real_eip !165
  %109 = icmp eq i64 %102, 0, !mcsema_real_eip !165
  store i1 %109, i1* %ZF, !mcsema_real_eip !165
  %110 = xor i64 ptrtoint (%1* @data_0x3e0 to i64), %98, !mcsema_real_eip !165
  %111 = xor i64 %110, -1, !mcsema_real_eip !165
  %112 = and i64 %111, %103, !mcsema_real_eip !165
  %113 = lshr i64 %112, 63, !mcsema_real_eip !165
  %114 = and i64 %113, 1, !mcsema_real_eip !165
  %115 = trunc i64 %114 to i1, !mcsema_real_eip !165
  store i1 %115, i1* %OF, !mcsema_real_eip !165
  %116 = trunc i64 %102 to i8, !mcsema_real_eip !165
  %117 = call i8 @llvm.ctpop.i8(i8 %116), !mcsema_real_eip !165
  %118 = trunc i8 %117 to i1, !mcsema_real_eip !165
  %119 = xor i1 %118, true, !mcsema_real_eip !165
  store i1 %119, i1* %PF, !mcsema_real_eip !165
  %120 = icmp ult i64 %102, ptrtoint (%1* @data_0x3e0 to i64), !mcsema_real_eip !165
  store i1 %120, i1* %CF, !mcsema_real_eip !165
  store i64 %102, i64* %XAX, !mcsema_real_eip !165
  br i1 %_cond1_n_cond2_cond3_128, label %121, label %122

; <label>:121:                                    ; preds = %93
  %_address_in_parent_stack_bt_160 = bitcast i8* %_pot_address_in_parent_stack_121 to i32*
  br label %122

; <label>:122:                                    ; preds = %93, %121
  %123 = phi i32* [ %68, %93 ], [ %_address_in_parent_stack_bt_160, %121 ]
  %_new_load_161 = load i32, i32* %123
  %124 = sext i32 %_new_load_161 to i64, !mcsema_real_eip !166
  store i64 %124, i64* %XCX, !mcsema_real_eip !166
  %125 = add i64 %102, %124, !mcsema_real_eip !167
  %126 = inttoptr i64 %125 to i64*, !mcsema_real_eip !167
  %127 = inttoptr i64 %125 to i8*, !mcsema_real_eip !167
  %_offset_above_rbp_164 = sub i64 %125, %_local_end_to_int_
  %_pot_address_in_parent_stack_165 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_164
  %_cond1_166 = icmp ugt i8* %127, %_local_stack_end_ptr_
  %_cond2_1_167 = icmp ugt i8* %127, %_parent_stack_end_ptr_
  %_cond2_2_168 = icmp ult i8* %127, %_parent_stack_start_ptr_
  %_cond2_169 = or i1 %_cond2_1_167, %_cond2_2_168
  %_cond4_170 = icmp ule i8* %_pot_address_in_parent_stack_165, %_parent_stack_end_ptr_
  %_cond1_n_cond2_171 = and i1 %_cond1_166, %_cond2_169
  %_cond1_n_cond2_cond3_172 = and i1 %_cond1_n_cond2_171, %_cond4_170
  br i1 %_cond1_n_cond2_cond3_172, label %128, label %129

; <label>:128:                                    ; preds = %122
  br label %129

; <label>:129:                                    ; preds = %122, %128
  %130 = phi i8* [ %127, %122 ], [ %_pot_address_in_parent_stack_165, %128 ]
  %_new_load_174 = load i8, i8* %130
  %131 = sext i8 %_new_load_174 to i32, !mcsema_real_eip !167
  %132 = zext i32 %131 to i64, !mcsema_real_eip !167
  store i64 %132, i64* %XSI, !mcsema_real_eip !167
  %AL.241 = bitcast i64* %XAX to i8*, !mcsema_real_eip !168
  store i8 0, i8* %AL.241, !mcsema_real_eip !168
  %_load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_
  %RSP_val.244 = load i64, i64* %XSP, !mcsema_real_eip !169
  %_new_gep_60 = getelementptr i8, i8* %_load_rsp_ptr_59, i64 -8
  %133 = sub i64 %RSP_val.244, 8, !mcsema_real_eip !169
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_61, !mcsema_real_eip !169
  store volatile i8* %_new_gep_60, i8** %_RSP_ptr_
  store i64 %133, i64* %XSP, !mcsema_real_eip !169
  %134 = call x86_64_sysvcc i64 @_printf(i64 ptrtoint (%2* @data_0x42d to i64), i64 %132)
  %_rsp_fix_83 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_84 = getelementptr i8, i8* %_rsp_fix_83, i64 8
  store i8* %_gep_fix_84, i8** %_RSP_ptr_
  store i64 %134, i64* %XAX, !mcsema_real_eip !169
  %_load_rbp_ptr_62 = load i8*, i8** %_RBP_ptr_
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_62, i64 -12
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %EAX.246 = bitcast i64* %XAX to i32*, !mcsema_real_eip !170
  %EAX_val.247 = load i32, i32* %EAX.246, !mcsema_real_eip !170
  %135 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !170
  %136 = inttoptr i64 %135 to i32*, !mcsema_real_eip !170
  store i32 %EAX_val.247, i32* %136, !mcsema_real_eip !170
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  %_new_gep_66 = getelementptr i8, i8* %_load_rbp_ptr_65, i64 -8
  %_allin_new_bt_67 = bitcast i8* %_new_gep_66 to i64*
  %137 = ptrtoint i64* %_allin_new_bt_67 to i64, !mcsema_real_eip !171
  %138 = inttoptr i64 %137 to i32*, !mcsema_real_eip !171
  %_ptr_bt_177 = bitcast i32* %138 to i8*
  %_offset_above_rbp_178 = sub i64 %137, %_local_end_to_int_
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %_ptr_bt_177, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %_ptr_bt_177, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %_ptr_bt_177, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  br i1 %_cond1_n_cond2_cond3_186, label %139, label %140

; <label>:139:                                    ; preds = %129
  %_address_in_parent_stack_bt_188 = bitcast i8* %_pot_address_in_parent_stack_179 to i32*
  br label %140

; <label>:140:                                    ; preds = %129, %139
  %141 = phi i32* [ %138, %129 ], [ %_address_in_parent_stack_bt_188, %139 ]
  %_new_load_189 = load i32, i32* %141
  %142 = zext i32 %_new_load_189 to i64, !mcsema_real_eip !171
  store i64 %142, i64* %XAX, !mcsema_real_eip !171
  %EAX_val.250 = load i32, i32* %EAX.246, !mcsema_real_eip !172
  %143 = add i32 1, %EAX_val.250, !mcsema_real_eip !172
  %144 = xor i32 %143, %EAX_val.250, !mcsema_real_eip !172
  %145 = xor i32 %144, 1, !mcsema_real_eip !172
  %146 = and i32 %145, 16, !mcsema_real_eip !172
  %147 = icmp ne i32 %146, 0, !mcsema_real_eip !172
  store i1 %147, i1* %AF, !mcsema_real_eip !172
  %148 = lshr i32 %143, 31, !mcsema_real_eip !172
  %149 = trunc i32 %148 to i1, !mcsema_real_eip !172
  store i1 %149, i1* %SF, !mcsema_real_eip !172
  %150 = icmp eq i32 %143, 0, !mcsema_real_eip !172
  store i1 %150, i1* %ZF, !mcsema_real_eip !172
  %151 = xor i32 %EAX_val.250, 1, !mcsema_real_eip !172
  %152 = xor i32 %151, -1, !mcsema_real_eip !172
  %153 = and i32 %152, %144, !mcsema_real_eip !172
  %154 = lshr i32 %153, 31, !mcsema_real_eip !172
  %155 = and i32 %154, 1, !mcsema_real_eip !172
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !172
  store i1 %156, i1* %OF, !mcsema_real_eip !172
  %157 = trunc i32 %143 to i8, !mcsema_real_eip !172
  %158 = call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !172
  %159 = trunc i8 %158 to i1, !mcsema_real_eip !172
  %160 = xor i1 %159, true, !mcsema_real_eip !172
  store i1 %160, i1* %PF, !mcsema_real_eip !172
  %161 = icmp ult i32 %143, %EAX_val.250, !mcsema_real_eip !172
  store i1 %161, i1* %CF, !mcsema_real_eip !172
  %162 = zext i32 %143 to i64, !mcsema_real_eip !172
  store i64 %162, i64* %XAX, !mcsema_real_eip !172
  %EAX_val.253 = load i32, i32* %EAX.246, !mcsema_real_eip !173
  store i32 %EAX_val.253, i32* %138, !mcsema_real_eip !173
  br label %block_0x20, !mcsema_real_eip !174

block_0x69:                                       ; preds = %70
  store i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64* %XDI, !mcsema_real_eip !175
  %AL.221 = bitcast i64* %XAX to i8*, !mcsema_real_eip !176
  store i8 0, i8* %AL.221, !mcsema_real_eip !176
  %RSI_val.223 = load i64, i64* %XSI, !mcsema_real_eip !177
  %_load_rsp_ptr_71 = load i8*, i8** %_RSP_ptr_
  %RSP_val.224 = load i64, i64* %XSP, !mcsema_real_eip !177
  %_new_gep_72 = getelementptr i8, i8* %_load_rsp_ptr_71, i64 -8
  %163 = sub i64 %RSP_val.224, 8, !mcsema_real_eip !177
  %_allin_new_bt_73 = bitcast i8* %_new_gep_72 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_73, !mcsema_real_eip !177
  store volatile i8* %_new_gep_72, i8** %_RSP_ptr_
  store i64 %163, i64* %XSP, !mcsema_real_eip !177
  %164 = call x86_64_sysvcc i64 @_printf(i64 add (i64 ptrtoint (%2* @data_0x42d to i64), i64 3), i64 %RSI_val.223)
  %_rsp_fix_85 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_86 = getelementptr i8, i8* %_rsp_fix_85, i64 8
  store i8* %_gep_fix_86, i8** %_RSP_ptr_
  store i64 %164, i64* %XAX, !mcsema_real_eip !177
  %_load_rbp_ptr_74 = load i8*, i8** %_RBP_ptr_
  %_new_gep_75 = getelementptr i8, i8* %_load_rbp_ptr_74, i64 -16
  %_allin_new_bt_76 = bitcast i8* %_new_gep_75 to i64*
  %EAX.226 = bitcast i64* %XAX to i32*, !mcsema_real_eip !178
  %EAX_val.227 = load i32, i32* %EAX.226, !mcsema_real_eip !178
  %165 = ptrtoint i64* %_allin_new_bt_76 to i64, !mcsema_real_eip !178
  %166 = inttoptr i64 %165 to i32*, !mcsema_real_eip !178
  store i32 %EAX_val.227, i32* %166, !mcsema_real_eip !178
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -4
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %167 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !179
  %168 = inttoptr i64 %167 to i32*, !mcsema_real_eip !179
  %_ptr_bt_192 = bitcast i32* %168 to i8*
  %_offset_above_rbp_193 = sub i64 %167, %_local_end_to_int_
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_ptr_bt_192, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_ptr_bt_192, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_ptr_bt_192, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  br i1 %_cond1_n_cond2_cond3_201, label %169, label %170

; <label>:169:                                    ; preds = %block_0x69
  %_address_in_parent_stack_bt_203 = bitcast i8* %_pot_address_in_parent_stack_194 to i32*
  br label %170

; <label>:170:                                    ; preds = %block_0x69, %169
  %171 = phi i32* [ %168, %block_0x69 ], [ %_address_in_parent_stack_bt_203, %169 ]
  %_new_load_204 = load i32, i32* %171
  %172 = zext i32 %_new_load_204 to i64, !mcsema_real_eip !179
  store i64 %172, i64* %XAX, !mcsema_real_eip !179
  %EAX_val.230 = load i32, i32* %EAX.226, !mcsema_real_eip !180
  %173 = add i32 1, %EAX_val.230, !mcsema_real_eip !180
  %174 = xor i32 %173, %EAX_val.230, !mcsema_real_eip !180
  %175 = xor i32 %174, 1, !mcsema_real_eip !180
  %176 = and i32 %175, 16, !mcsema_real_eip !180
  %177 = icmp ne i32 %176, 0, !mcsema_real_eip !180
  store i1 %177, i1* %AF, !mcsema_real_eip !180
  %178 = lshr i32 %173, 31, !mcsema_real_eip !180
  %179 = trunc i32 %178 to i1, !mcsema_real_eip !180
  store i1 %179, i1* %SF, !mcsema_real_eip !180
  %180 = icmp eq i32 %173, 0, !mcsema_real_eip !180
  store i1 %180, i1* %ZF, !mcsema_real_eip !180
  %181 = xor i32 %EAX_val.230, 1, !mcsema_real_eip !180
  %182 = xor i32 %181, -1, !mcsema_real_eip !180
  %183 = and i32 %182, %174, !mcsema_real_eip !180
  %184 = lshr i32 %183, 31, !mcsema_real_eip !180
  %185 = and i32 %184, 1, !mcsema_real_eip !180
  %186 = trunc i32 %185 to i1, !mcsema_real_eip !180
  store i1 %186, i1* %OF, !mcsema_real_eip !180
  %187 = trunc i32 %173 to i8, !mcsema_real_eip !180
  %188 = call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !180
  %189 = trunc i8 %188 to i1, !mcsema_real_eip !180
  %190 = xor i1 %189, true, !mcsema_real_eip !180
  store i1 %190, i1* %PF, !mcsema_real_eip !180
  %191 = icmp ult i32 %173, %EAX_val.230, !mcsema_real_eip !180
  store i1 %191, i1* %CF, !mcsema_real_eip !180
  %192 = zext i32 %173 to i64, !mcsema_real_eip !180
  store i64 %192, i64* %XAX, !mcsema_real_eip !180
  %EAX_val.233 = load i32, i32* %EAX.226, !mcsema_real_eip !181
  store i32 %EAX_val.233, i32* %168, !mcsema_real_eip !181
  br label %block_0xf, !mcsema_real_eip !182
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 176}
!3 = !{i64 177}
!4 = !{i64 180}
!5 = !{i64 184}
!6 = !{i64 186}
!7 = !{i64 191}
!8 = !{i64 193}
!9 = !{i64 197}
!10 = !{i64 207}
!11 = !{i64 214}
!12 = !{i64 217}
!13 = !{i64 221}
!14 = !{i64 228}
!15 = !{i64 235}
!16 = !{i64 242}
!17 = !{i64 246}
!18 = !{i64 250}
!19 = !{i64 253}
!20 = !{i64 257}
!21 = !{i64 262}
!22 = !{i64 264}
!23 = !{i64 267}
!24 = !{i64 272}
!25 = !{i64 276}
!26 = !{i64 280}
!27 = !{i64 286}
!28 = !{i64 289}
!29 = !{i64 292}
!30 = !{i64 295}
!31 = !{i64 298}
!32 = !{i64 302}
!33 = !{i64 307}
!34 = !{i64 310}
!35 = !{i64 312}
!36 = !{i64 315}
!37 = !{i64 319}
!38 = !{i64 322}
!39 = !{i64 759}
!40 = !{i64 769}
!41 = !{i64 771}
!42 = !{i64 776}
!43 = !{i64 783}
!44 = !{i64 786}
!45 = !{i64 789}
!46 = !{i64 793}
!47 = !{i64 794}
!48 = !{i64 328}
!49 = !{i64 332}
!50 = !{i64 340}
!51 = !{i64 398}
!52 = !{i64 408}
!53 = !{i64 410}
!54 = !{i64 415}
!55 = !{i64 425}
!56 = !{i64 428}
!57 = !{i64 430}
!58 = !{i64 435}
!59 = !{i64 440}
!60 = !{i64 443}
!61 = !{i64 448}
!62 = !{i64 458}
!63 = !{i64 462}
!64 = !{i64 466}
!65 = !{i64 469}
!66 = !{i64 473}
!67 = !{i64 477}
!68 = !{i64 480}
!69 = !{i64 342}
!70 = !{i64 345}
!71 = !{i64 348}
!72 = !{i64 351}
!73 = !{i64 356}
!74 = !{i64 359}
!75 = !{i64 362}
!76 = !{i64 365}
!77 = !{i64 370}
!78 = !{i64 373}
!79 = !{i64 376}
!80 = !{i64 379}
!81 = !{i64 384}
!82 = !{i64 387}
!83 = !{i64 390}
!84 = !{i64 393}
!85 = !{i64 486}
!86 = !{i64 496}
!87 = !{i64 498}
!88 = !{i64 503}
!89 = !{i64 513}
!90 = !{i64 517}
!91 = !{i64 520}
!92 = !{i64 522}
!93 = !{i64 527}
!94 = !{i64 529}
!95 = !{i64 532}
!96 = !{i64 655}
!97 = !{i64 537}
!98 = !{i64 547}
!99 = !{i64 551}
!100 = !{i64 555}
!101 = !{i64 558}
!102 = !{i64 562}
!103 = !{i64 566}
!104 = !{i64 569}
!105 = !{i64 575}
!106 = !{i64 579}
!107 = !{i64 658}
!108 = !{i64 661}
!109 = !{i64 667}
!110 = !{i64 670}
!111 = !{i64 673}
!112 = !{i64 711}
!113 = !{i64 721}
!114 = !{i64 725}
!115 = !{i64 729}
!116 = !{i64 732}
!117 = !{i64 736}
!118 = !{i64 740}
!119 = !{i64 745}
!120 = !{i64 748}
!121 = !{i64 751}
!122 = !{i64 754}
!123 = !{i64 585}
!124 = !{i64 595}
!125 = !{i64 599}
!126 = !{i64 603}
!127 = !{i64 606}
!128 = !{i64 610}
!129 = !{i64 614}
!130 = !{i64 617}
!131 = !{i64 643}
!132 = !{i64 646}
!133 = !{i64 649}
!134 = !{i64 652}
!135 = !{i64 679}
!136 = !{i64 689}
!137 = !{i64 691}
!138 = !{i64 696}
!139 = !{i64 703}
!140 = !{i64 706}
!141 = !{i64 623}
!142 = !{i64 627}
!143 = !{i64 633}
!144 = !{i64 637}
!145 = !{i64 0}
!146 = !{i64 1}
!147 = !{i64 4}
!148 = !{i64 8}
!149 = !{i64 15}
!150 = !{i64 19}
!151 = !{i64 25}
!152 = !{i64 32}
!153 = !{i64 139}
!154 = !{i64 149}
!155 = !{i64 151}
!156 = !{i64 156}
!157 = !{i64 159}
!158 = !{i64 163}
!159 = !{i64 164}
!160 = !{i64 36}
!161 = !{i64 42}
!162 = !{i64 52}
!163 = !{i64 62}
!164 = !{i64 66}
!165 = !{i64 70}
!166 = !{i64 73}
!167 = !{i64 77}
!168 = !{i64 81}
!169 = !{i64 83}
!170 = !{i64 88}
!171 = !{i64 91}
!172 = !{i64 94}
!173 = !{i64 97}
!174 = !{i64 100}
!175 = !{i64 105}
!176 = !{i64 115}
!177 = !{i64 117}
!178 = !{i64 122}
!179 = !{i64 125}
!180 = !{i64 128}
!181 = !{i64 131}
!182 = !{i64 134}
