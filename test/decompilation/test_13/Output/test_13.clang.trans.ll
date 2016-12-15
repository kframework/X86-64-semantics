; ModuleID = 'Output/test_13.clang.trans.bc'
source_filename = "Output/test_13.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl doWork;"
module asm "  .type doWork,@function"
module asm "doWork:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doWork,0b-doWork;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x180 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\83\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"l\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00T\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"|\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.8 = load i32, i32* %ESI.7, !mcsema_real_eip !6
  %14 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.8, i32* %15, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %17, !mcsema_real_eip !7
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -12
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
  %20 = load i32, i32* %19, !mcsema_real_eip !8
  %21 = sext i32 %20 to i64, !mcsema_real_eip !8
  store i64 %21, i64* %XDI, !mcsema_real_eip !8
  %22 = shl i64 %21, 2, !mcsema_real_eip !9
  %23 = and i64 %22, -9223372036854775808, !mcsema_real_eip !9
  %24 = icmp ne i64 %23, 0, !mcsema_real_eip !9
  %25 = load i1, i1* %CF, !mcsema_real_eip !9
  %26 = shl i64 %22, 1, !mcsema_real_eip !9
  %27 = load i1, i1* %OF, !mcsema_real_eip !9
  %28 = and i64 %26, -9223372036854775808, !mcsema_real_eip !9
  %29 = icmp ne i64 %28, 0, !mcsema_real_eip !9
  %30 = xor i1 %29, %24, !mcsema_real_eip !9
  store i1 %24, i1* %CF, !mcsema_real_eip !9
  %31 = load i1, i1* %ZF, !mcsema_real_eip !9
  %32 = icmp eq i64 %26, 0, !mcsema_real_eip !9
  store i1 %32, i1* %ZF, !mcsema_real_eip !9
  %33 = load i1, i1* %SF, !mcsema_real_eip !9
  %34 = icmp slt i64 %26, 0, !mcsema_real_eip !9
  store i1 %34, i1* %SF, !mcsema_real_eip !9
  %35 = load i1, i1* %PF, !mcsema_real_eip !9
  %36 = trunc i64 %26 to i8, !mcsema_real_eip !9
  %37 = call i8 @llvm.ctpop.i8(i8 %36), !mcsema_real_eip !9
  %38 = trunc i8 %37 to i1, !mcsema_real_eip !9
  %39 = xor i1 %38, true, !mcsema_real_eip !9
  store i1 %39, i1* %PF, !mcsema_real_eip !9
  store i64 %26, i64* %XDI, !mcsema_real_eip !9
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !10
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %40 = sub i64 %RSP_val.13, 8, !mcsema_real_eip !10
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !10
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %40, i64* %XSP, !mcsema_real_eip !10
  %41 = call x86_64_sysvcc i64 @_malloc(i64 %26)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %41, i64* %XAX, !mcsema_real_eip !10
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 %41, i64* %_allin_new_bt_30, !mcsema_real_eip !11
  br label %block_0x27, !mcsema_real_eip !12

block_0x27:                                       ; preds = %block_0x67, %block_0x0
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -16
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %42 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !12
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !12
  %44 = load i32, i32* %43, !mcsema_real_eip !12
  %45 = zext i32 %44 to i64, !mcsema_real_eip !12
  store i64 %45, i64* %XAX, !mcsema_real_eip !12
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -12
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.18 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.19 = load i32, i32* %EAX.18, !mcsema_real_eip !13
  %46 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !13
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !13
  %48 = load i32, i32* %47, !mcsema_real_eip !13
  %49 = sub i32 %EAX_val.19, %48, !mcsema_real_eip !13
  %50 = xor i32 %49, %EAX_val.19, !mcsema_real_eip !13
  %51 = xor i32 %50, %48, !mcsema_real_eip !13
  %52 = and i32 %51, 16, !mcsema_real_eip !13
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !13
  store i1 %53, i1* %AF, !mcsema_real_eip !13
  %54 = trunc i32 %49 to i8, !mcsema_real_eip !13
  %55 = call i8 @llvm.ctpop.i8(i8 %54), !mcsema_real_eip !13
  %56 = trunc i8 %55 to i1, !mcsema_real_eip !13
  %57 = xor i1 %56, true, !mcsema_real_eip !13
  store i1 %57, i1* %PF, !mcsema_real_eip !13
  %58 = icmp eq i32 %49, 0, !mcsema_real_eip !13
  store i1 %58, i1* %ZF, !mcsema_real_eip !13
  %59 = lshr i32 %49, 31, !mcsema_real_eip !13
  %60 = trunc i32 %59 to i1, !mcsema_real_eip !13
  store i1 %60, i1* %SF, !mcsema_real_eip !13
  %61 = icmp ult i32 %EAX_val.19, %48, !mcsema_real_eip !13
  store i1 %61, i1* %CF, !mcsema_real_eip !13
  %62 = xor i32 %EAX_val.19, %48, !mcsema_real_eip !13
  %63 = and i32 %62, %50, !mcsema_real_eip !13
  %64 = lshr i32 %63, 31, !mcsema_real_eip !13
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !13
  store i1 %65, i1* %OF, !mcsema_real_eip !13
  %66 = icmp eq i1 %60, %65, !mcsema_real_eip !14
  br i1 %66, label %block_0x75, label %block_0x33, !mcsema_real_eip !14

block_0x33:                                       ; preds = %block_0x27
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %67 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !15
  store i64 %67, i64* %XAX, !mcsema_real_eip !15
  %68 = load i32, i32* %43, !mcsema_real_eip !16
  %69 = sext i32 %68 to i64, !mcsema_real_eip !16
  store i64 %69, i64* %XCX, !mcsema_real_eip !16
  %70 = mul i64 %69, 8, !mcsema_real_eip !17
  %71 = add i64 %67, %70, !mcsema_real_eip !17
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !17
  %73 = load i64, i64* %72, !mcsema_real_eip !17
  store i64 %73, i64* %XAX, !mcsema_real_eip !17
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -32
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %73, i64* %_allin_new_bt_45, !mcsema_real_eip !18
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -32
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %74 = load i64, i64* %_allin_new_bt_48, !mcsema_real_eip !19
  store i64 %74, i64* %XDI, !mcsema_real_eip !19
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !20
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %75 = sub i64 %RSP_val.32, 8, !mcsema_real_eip !20
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_51, !mcsema_real_eip !20
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %75, i64* %XSP, !mcsema_real_eip !20
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @checkFn.3(%RegState* %0, i8* %_new_gep_50, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_92)
  %_rsp_fix_94 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_95 = getelementptr i8, i8* %_rsp_fix_94, i64 8
  store i8* %_gep_fix_95, i8** %_RSP_ptr_
  %EAX_val.34 = load i32, i32* %EAX.18, !mcsema_real_eip !21
  store i1 false, i1* %AF, !mcsema_real_eip !21
  %76 = trunc i32 %EAX_val.34 to i8, !mcsema_real_eip !21
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !21
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !21
  %79 = xor i1 %78, true, !mcsema_real_eip !21
  store i1 %79, i1* %PF, !mcsema_real_eip !21
  %80 = icmp eq i32 %EAX_val.34, 0, !mcsema_real_eip !21
  store i1 %80, i1* %ZF, !mcsema_real_eip !21
  %81 = lshr i32 %EAX_val.34, 31, !mcsema_real_eip !21
  %82 = trunc i32 %81 to i1, !mcsema_real_eip !21
  store i1 %82, i1* %SF, !mcsema_real_eip !21
  store i1 false, i1* %CF, !mcsema_real_eip !21
  store i1 false, i1* %OF, !mcsema_real_eip !21
  %83 = icmp eq i1 %80, false, !mcsema_real_eip !22
  br i1 %83, label %block_0x62, label %block_0x55, !mcsema_real_eip !22

block_0x75:                                       ; preds = %block_0x27
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %84 = load i64, i64* %_allin_new_bt_54, !mcsema_real_eip !23
  store i64 %84, i64* %XAX, !mcsema_real_eip !23
  %85 = add i64 %84, 1, !mcsema_real_eip !24
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !24
  %87 = inttoptr i64 %85 to i8*, !mcsema_real_eip !24
  store i8 2, i8* %87, !mcsema_real_eip !24
  %_load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_55, i64 32
  %88 = add i64 32, %RSP_val.22, !mcsema_real_eip !25
  %_trans_p2i_57 = ptrtoint i8* %_new_gep_56 to i64
  %_trans_p2i_58 = ptrtoint i8* %_load_rsp_ptr_55 to i64
  %_trans_xor_59 = xor i64 %_trans_p2i_57, %_trans_p2i_58
  %89 = xor i64 %_trans_xor_59, 32, !mcsema_real_eip !25
  %90 = and i64 %89, 16, !mcsema_real_eip !25
  %91 = icmp ne i64 %90, 0, !mcsema_real_eip !25
  store i1 %91, i1* %AF, !mcsema_real_eip !25
  %92 = lshr i64 %88, 63, !mcsema_real_eip !25
  %93 = trunc i64 %92 to i1, !mcsema_real_eip !25
  store i1 %93, i1* %SF, !mcsema_real_eip !25
  %_trans_icmp_eq_61 = icmp eq i64 %_trans_p2i_57, 0
  store i1 %_trans_icmp_eq_61, i1* %ZF, !mcsema_real_eip !25
  %_trans_xor_63 = xor i64 %_trans_p2i_58, 32
  %94 = xor i64 %_trans_xor_63, -1, !mcsema_real_eip !25
  %95 = and i64 %94, %_trans_xor_59, !mcsema_real_eip !25
  %96 = lshr i64 %95, 63, !mcsema_real_eip !25
  %97 = and i64 %96, 1, !mcsema_real_eip !25
  %98 = trunc i64 %97 to i1, !mcsema_real_eip !25
  store i1 %98, i1* %OF, !mcsema_real_eip !25
  %_trans_trunc_68 = trunc i64 %_trans_p2i_57 to i8
  %99 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_68), !mcsema_real_eip !25
  %100 = trunc i8 %99 to i1, !mcsema_real_eip !25
  %101 = xor i1 %100, true, !mcsema_real_eip !25
  store i1 %101, i1* %PF, !mcsema_real_eip !25
  %_trans_icmp_ne_70 = icmp ne i64 %_trans_p2i_57, %RSP_val.22
  store i1 %_trans_icmp_ne_70, i1* %CF, !mcsema_real_eip !25
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %88, i64* %XSP, !mcsema_real_eip !25
  %_allin_new_bt_72 = bitcast i8* %_new_gep_56 to i64*
  %102 = load i64, i64* %_allin_new_bt_72, !mcsema_real_eip !26
  %_new_int2ptr_ = inttoptr i64 %102 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %102, i64* %XBP, !mcsema_real_eip !26
  %_new_gep_73 = getelementptr i8, i8* %_new_gep_56, i64 8
  %103 = add i64 %88, 8, !mcsema_real_eip !26
  store volatile i8* %_new_gep_73, i8** %_RSP_ptr_
  store i64 %103, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_75 = getelementptr i8, i8* %_new_gep_73, i64 8
  %104 = add i64 %103, 8, !mcsema_real_eip !27
  %_allin_new_bt_76 = bitcast i8* %_new_gep_73 to i64*
  %105 = load i64, i64* %_allin_new_bt_76, !mcsema_real_eip !27
  store i64 %105, i64* %XIP, !mcsema_real_eip !27
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_
  store i64 %104, i64* %XSP, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x55:                                       ; preds = %block_0x33
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -32
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %106 = load i64, i64* %_allin_new_bt_79, !mcsema_real_eip !28
  store i64 %106, i64* %XDI, !mcsema_real_eip !28
  %107 = load i64, i64* %_allin_new_bt_79, !mcsema_real_eip !29
  store i64 %107, i64* %XSI, !mcsema_real_eip !29
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_84 = getelementptr i8, i8* %_gep_fix_95, i64 -8
  %108 = sub i64 %RSP_val.37, 8, !mcsema_real_eip !30
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_85, !mcsema_real_eip !30
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_
  store i64 %108, i64* %XSP, !mcsema_real_eip !30
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @doStuff.2(%RegState* %0, i8* %_new_gep_84, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_96)
  %_rsp_fix_98 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_99 = getelementptr i8, i8* %_rsp_fix_98, i64 8
  store i8* %_gep_fix_99, i8** %_RSP_ptr_
  br label %block_0x62, !mcsema_real_eip !31

block_0x62:                                       ; preds = %block_0x55, %block_0x33
  br label %block_0x67, !mcsema_real_eip !32

block_0x67:                                       ; preds = %block_0x62
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -16
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %109 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !31
  %110 = inttoptr i64 %109 to i32*, !mcsema_real_eip !31
  %111 = load i32, i32* %110, !mcsema_real_eip !31
  %112 = zext i32 %111 to i64, !mcsema_real_eip !31
  store i64 %112, i64* %XAX, !mcsema_real_eip !31
  %EAX_val.40 = load i32, i32* %EAX.18, !mcsema_real_eip !33
  %113 = add i32 1, %EAX_val.40, !mcsema_real_eip !33
  %114 = xor i32 %113, %EAX_val.40, !mcsema_real_eip !33
  %115 = xor i32 %114, 1, !mcsema_real_eip !33
  %116 = and i32 %115, 16, !mcsema_real_eip !33
  %117 = icmp ne i32 %116, 0, !mcsema_real_eip !33
  store i1 %117, i1* %AF, !mcsema_real_eip !33
  %118 = lshr i32 %113, 31, !mcsema_real_eip !33
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !33
  store i1 %119, i1* %SF, !mcsema_real_eip !33
  %120 = icmp eq i32 %113, 0, !mcsema_real_eip !33
  store i1 %120, i1* %ZF, !mcsema_real_eip !33
  %121 = xor i32 %EAX_val.40, 1, !mcsema_real_eip !33
  %122 = xor i32 %121, -1, !mcsema_real_eip !33
  %123 = and i32 %122, %114, !mcsema_real_eip !33
  %124 = lshr i32 %123, 31, !mcsema_real_eip !33
  %125 = and i32 %124, 1, !mcsema_real_eip !33
  %126 = trunc i32 %125 to i1, !mcsema_real_eip !33
  store i1 %126, i1* %OF, !mcsema_real_eip !33
  %127 = trunc i32 %113 to i8, !mcsema_real_eip !33
  %128 = call i8 @llvm.ctpop.i8(i8 %127), !mcsema_real_eip !33
  %129 = trunc i8 %128 to i1, !mcsema_real_eip !33
  %130 = xor i1 %129, true, !mcsema_real_eip !33
  store i1 %130, i1* %PF, !mcsema_real_eip !33
  %131 = icmp ult i32 %113, %EAX_val.40, !mcsema_real_eip !33
  store i1 %131, i1* %CF, !mcsema_real_eip !33
  %132 = zext i32 %113 to i64, !mcsema_real_eip !33
  store i64 %132, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.43 = load i32, i32* %EAX.18, !mcsema_real_eip !34
  store i32 %EAX_val.43, i32* %110, !mcsema_real_eip !34
  br label %block_0x27, !mcsema_real_eip !35
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @doStuff(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !36
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !36
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !36
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !36
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !36
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !36
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !36
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !36
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !36
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !36
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !36
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !36
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !36
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !36
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !36
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !36
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !36
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !36
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !36
  br label %block_0x100, !mcsema_real_eip !36

block_0x100:                                      ; preds = %entry
  %RBP_val.44 = load i64, i64* %XBP, !mcsema_real_eip !36
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !36
  %1 = sub i64 %RSP_val.45, 8, !mcsema_real_eip !36
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !36
  store i64 %RBP_val.44, i64* %2, !mcsema_real_eip !36
  store i64 %1, i64* %XSP, !mcsema_real_eip !36
  store i64 %1, i64* %XBP, !mcsema_real_eip !37
  %3 = add i64 %1, -8, !mcsema_real_eip !38
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !38
  %RDI_val.48 = load i64, i64* %XDI, !mcsema_real_eip !38
  store i64 %RDI_val.48, i64* %4, !mcsema_real_eip !38
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !39
  %5 = add i64 %RBP_val.49, -16, !mcsema_real_eip !39
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !39
  %RSI_val.50 = load i64, i64* %XSI, !mcsema_real_eip !39
  store i64 %RSI_val.50, i64* %6, !mcsema_real_eip !39
  %RBP_val.51 = load i64, i64* %XBP, !mcsema_real_eip !40
  %7 = add i64 %RBP_val.51, -8, !mcsema_real_eip !40
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !40
  %9 = load i64, i64* %8, !mcsema_real_eip !40
  store i64 %9, i64* %XSI, !mcsema_real_eip !40
  %10 = add i64 %RBP_val.51, -24, !mcsema_real_eip !41
  %11 = inttoptr i64 %10 to i64*, !mcsema_real_eip !41
  store i64 %9, i64* %11, !mcsema_real_eip !41
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !42
  %12 = add i64 %RBP_val.54, -16, !mcsema_real_eip !42
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !42
  %14 = load i64, i64* %13, !mcsema_real_eip !42
  store i64 %14, i64* %XSI, !mcsema_real_eip !42
  %15 = add i64 %RBP_val.54, -32, !mcsema_real_eip !43
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !43
  store i64 %14, i64* %16, !mcsema_real_eip !43
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !44
  %17 = add i64 %RBP_val.57, -24, !mcsema_real_eip !44
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !44
  %19 = load i64, i64* %18, !mcsema_real_eip !44
  store i64 %19, i64* %XSI, !mcsema_real_eip !44
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !45
  %21 = inttoptr i64 %19 to i8*, !mcsema_real_eip !45
  %22 = load i8, i8* %21, !mcsema_real_eip !45
  %AL.59 = bitcast i64* %XAX to i8*, !mcsema_real_eip !45
  store i8 %22, i8* %AL.59, !mcsema_real_eip !45
  %23 = add i64 %RBP_val.57, -33, !mcsema_real_eip !46
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !46
  %25 = inttoptr i64 %23 to i8*, !mcsema_real_eip !46
  store i8 %22, i8* %25, !mcsema_real_eip !46
  br label %block_0x125, !mcsema_real_eip !47

block_0x125:                                      ; preds = %block_0x154, %block_0x100
  %RBP_val.63 = load i64, i64* %XBP, !mcsema_real_eip !47
  %26 = add i64 %RBP_val.63, -33, !mcsema_real_eip !47
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !47
  %28 = inttoptr i64 %26 to i8*, !mcsema_real_eip !47
  %29 = load i8, i8* %28, !mcsema_real_eip !47
  %30 = sext i8 %29 to i32, !mcsema_real_eip !47
  %31 = zext i32 %30 to i64, !mcsema_real_eip !47
  store i64 %31, i64* %XAX, !mcsema_real_eip !47
  %EAX.64 = bitcast i64* %XAX to i32*, !mcsema_real_eip !48
  %EAX_val.65 = load i32, i32* %EAX.64, !mcsema_real_eip !48
  store i1 false, i1* %AF, !mcsema_real_eip !48
  %32 = trunc i32 %EAX_val.65 to i8, !mcsema_real_eip !48
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !48
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !48
  %35 = xor i1 %34, true, !mcsema_real_eip !48
  store i1 %35, i1* %PF, !mcsema_real_eip !48
  %36 = icmp eq i32 %EAX_val.65, 0, !mcsema_real_eip !48
  store i1 %36, i1* %ZF, !mcsema_real_eip !48
  %37 = lshr i32 %EAX_val.65, 31, !mcsema_real_eip !48
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !48
  store i1 %38, i1* %SF, !mcsema_real_eip !48
  store i1 false, i1* %CF, !mcsema_real_eip !48
  store i1 false, i1* %OF, !mcsema_real_eip !48
  br i1 %36, label %block_0x17a, label %block_0x132, !mcsema_real_eip !49

block_0x132:                                      ; preds = %block_0x125
  %39 = load i8, i8* %28, !mcsema_real_eip !50
  %40 = sext i8 %39 to i32, !mcsema_real_eip !50
  %41 = zext i32 %40 to i64, !mcsema_real_eip !50
  store i64 %41, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.70 = load i32, i32* %EAX.64, !mcsema_real_eip !51
  %42 = sub i32 %EAX_val.70, 47, !mcsema_real_eip !51
  %43 = xor i32 %42, %EAX_val.70, !mcsema_real_eip !51
  %44 = xor i32 %43, 47, !mcsema_real_eip !51
  %45 = and i32 %44, 16, !mcsema_real_eip !51
  %46 = icmp ne i32 %45, 0, !mcsema_real_eip !51
  store i1 %46, i1* %AF, !mcsema_real_eip !51
  %47 = trunc i32 %42 to i8, !mcsema_real_eip !51
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !51
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !51
  %50 = xor i1 %49, true, !mcsema_real_eip !51
  store i1 %50, i1* %PF, !mcsema_real_eip !51
  %51 = icmp eq i32 %42, 0, !mcsema_real_eip !51
  store i1 %51, i1* %ZF, !mcsema_real_eip !51
  %52 = lshr i32 %42, 31, !mcsema_real_eip !51
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !51
  store i1 %53, i1* %SF, !mcsema_real_eip !51
  %54 = icmp ult i32 %EAX_val.70, 47, !mcsema_real_eip !51
  store i1 %54, i1* %CF, !mcsema_real_eip !51
  %55 = xor i32 %EAX_val.70, 47, !mcsema_real_eip !51
  %56 = and i32 %55, %43, !mcsema_real_eip !51
  %57 = lshr i32 %56, 31, !mcsema_real_eip !51
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !51
  store i1 %58, i1* %OF, !mcsema_real_eip !51
  %59 = icmp eq i1 %51, false, !mcsema_real_eip !52
  br i1 %59, label %block_0x14b, label %block_0x13f, !mcsema_real_eip !52

block_0x17a:                                      ; preds = %block_0x125
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !53
  %60 = inttoptr i64 %RSP_val.66 to i64*, !mcsema_real_eip !53
  %61 = load i64, i64* %60, !mcsema_real_eip !53
  store i64 %61, i64* %XBP, !mcsema_real_eip !53
  %62 = add i64 %RSP_val.66, 8, !mcsema_real_eip !53
  store i64 %62, i64* %XSP, !mcsema_real_eip !53
  %63 = add i64 %62, 8, !mcsema_real_eip !54
  %64 = inttoptr i64 %62 to i64*, !mcsema_real_eip !54
  %65 = load i64, i64* %64, !mcsema_real_eip !54
  store i64 %65, i64* %XIP, !mcsema_real_eip !54
  store i64 %63, i64* %XSP, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54

block_0x13f:                                      ; preds = %block_0x132
  %66 = add i64 %RBP_val.63, -32, !mcsema_real_eip !55
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !55
  %68 = load i64, i64* %67, !mcsema_real_eip !55
  store i64 %68, i64* %XAX, !mcsema_real_eip !55
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !56
  %70 = inttoptr i64 %68 to i8*, !mcsema_real_eip !56
  store i8 92, i8* %70, !mcsema_real_eip !56
  br label %block_0x154, !mcsema_real_eip !57

block_0x14b:                                      ; preds = %block_0x132
  %71 = load i8, i8* %28, !mcsema_real_eip !58
  store i8 %71, i8* %AL.59, !mcsema_real_eip !58
  %72 = add i64 %RBP_val.63, -32, !mcsema_real_eip !59
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !59
  %74 = load i64, i64* %73, !mcsema_real_eip !59
  store i64 %74, i64* %XCX, !mcsema_real_eip !59
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !60
  %76 = inttoptr i64 %74 to i8*, !mcsema_real_eip !60
  store i8 %71, i8* %76, !mcsema_real_eip !60
  br label %block_0x154, !mcsema_real_eip !55

block_0x154:                                      ; preds = %block_0x14b, %block_0x13f
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !61
  %77 = add i64 %RBP_val.79, -24, !mcsema_real_eip !61
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !61
  %79 = load i64, i64* %78, !mcsema_real_eip !61
  store i64 %79, i64* %XAX, !mcsema_real_eip !61
  %80 = add i64 1, %79, !mcsema_real_eip !62
  %81 = xor i64 %80, %79, !mcsema_real_eip !62
  %82 = xor i64 %81, 1, !mcsema_real_eip !62
  %83 = and i64 %82, 16, !mcsema_real_eip !62
  %84 = icmp ne i64 %83, 0, !mcsema_real_eip !62
  store i1 %84, i1* %AF, !mcsema_real_eip !62
  %85 = lshr i64 %80, 63, !mcsema_real_eip !62
  %86 = trunc i64 %85 to i1, !mcsema_real_eip !62
  store i1 %86, i1* %SF, !mcsema_real_eip !62
  %87 = icmp eq i64 %80, 0, !mcsema_real_eip !62
  store i1 %87, i1* %ZF, !mcsema_real_eip !62
  %88 = xor i64 %79, 1, !mcsema_real_eip !62
  %89 = xor i64 %88, -1, !mcsema_real_eip !62
  %90 = and i64 %89, %81, !mcsema_real_eip !62
  %91 = lshr i64 %90, 63, !mcsema_real_eip !62
  %92 = and i64 %91, 1, !mcsema_real_eip !62
  %93 = trunc i64 %92 to i1, !mcsema_real_eip !62
  store i1 %93, i1* %OF, !mcsema_real_eip !62
  %94 = trunc i64 %80 to i8, !mcsema_real_eip !62
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !62
  %96 = trunc i8 %95 to i1, !mcsema_real_eip !62
  %97 = xor i1 %96, true, !mcsema_real_eip !62
  store i1 %97, i1* %PF, !mcsema_real_eip !62
  %98 = icmp ult i64 %80, %79, !mcsema_real_eip !62
  store i1 %98, i1* %CF, !mcsema_real_eip !62
  store i64 %80, i64* %XAX, !mcsema_real_eip !62
  store i64 %80, i64* %78, !mcsema_real_eip !63
  %RBP_val.83 = load i64, i64* %XBP, !mcsema_real_eip !64
  %99 = add i64 %RBP_val.83, -32, !mcsema_real_eip !64
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !64
  %101 = load i64, i64* %100, !mcsema_real_eip !64
  store i64 %101, i64* %XAX, !mcsema_real_eip !64
  %102 = add i64 1, %101, !mcsema_real_eip !65
  %103 = xor i64 %102, %101, !mcsema_real_eip !65
  %104 = xor i64 %103, 1, !mcsema_real_eip !65
  %105 = and i64 %104, 16, !mcsema_real_eip !65
  %106 = icmp ne i64 %105, 0, !mcsema_real_eip !65
  store i1 %106, i1* %AF, !mcsema_real_eip !65
  %107 = lshr i64 %102, 63, !mcsema_real_eip !65
  %108 = trunc i64 %107 to i1, !mcsema_real_eip !65
  store i1 %108, i1* %SF, !mcsema_real_eip !65
  %109 = icmp eq i64 %102, 0, !mcsema_real_eip !65
  store i1 %109, i1* %ZF, !mcsema_real_eip !65
  %110 = xor i64 %101, 1, !mcsema_real_eip !65
  %111 = xor i64 %110, -1, !mcsema_real_eip !65
  %112 = and i64 %111, %103, !mcsema_real_eip !65
  %113 = lshr i64 %112, 63, !mcsema_real_eip !65
  %114 = and i64 %113, 1, !mcsema_real_eip !65
  %115 = trunc i64 %114 to i1, !mcsema_real_eip !65
  store i1 %115, i1* %OF, !mcsema_real_eip !65
  %116 = trunc i64 %102 to i8, !mcsema_real_eip !65
  %117 = call i8 @llvm.ctpop.i8(i8 %116), !mcsema_real_eip !65
  %118 = trunc i8 %117 to i1, !mcsema_real_eip !65
  %119 = xor i1 %118, true, !mcsema_real_eip !65
  store i1 %119, i1* %PF, !mcsema_real_eip !65
  %120 = icmp ult i64 %102, %101, !mcsema_real_eip !65
  store i1 %120, i1* %CF, !mcsema_real_eip !65
  store i64 %102, i64* %XAX, !mcsema_real_eip !65
  store i64 %102, i64* %100, !mcsema_real_eip !66
  %RBP_val.87 = load i64, i64* %XBP, !mcsema_real_eip !67
  %121 = add i64 %RBP_val.87, -24, !mcsema_real_eip !67
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !67
  %123 = load i64, i64* %122, !mcsema_real_eip !67
  store i64 %123, i64* %XAX, !mcsema_real_eip !67
  %124 = inttoptr i64 %123 to i64*, !mcsema_real_eip !68
  %125 = inttoptr i64 %123 to i8*, !mcsema_real_eip !68
  %126 = load i8, i8* %125, !mcsema_real_eip !68
  %CL.89 = bitcast i64* %XCX to i8*, !mcsema_real_eip !68
  store i8 %126, i8* %CL.89, !mcsema_real_eip !68
  %127 = add i64 %RBP_val.87, -33, !mcsema_real_eip !69
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !69
  %129 = inttoptr i64 %127 to i8*, !mcsema_real_eip !69
  store i8 %126, i8* %129, !mcsema_real_eip !69
  br label %block_0x125, !mcsema_real_eip !70
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @checkFn(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !71
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !71
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !71
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !71
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !71
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !71
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !71
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !71
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !71
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !71
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !71
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !71
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !71
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !71
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !71
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !71
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !71
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !71
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !71
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !71
  br label %block_0x90, !mcsema_real_eip !71

block_0x90:                                       ; preds = %entry
  %RBP_val.93 = load i64, i64* %XBP, !mcsema_real_eip !71
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !71
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !71
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !71
  store i64 %RBP_val.93, i64* %2, !mcsema_real_eip !71
  store i64 %1, i64* %XSP, !mcsema_real_eip !71
  store i64 %1, i64* %XBP, !mcsema_real_eip !72
  %3 = sub i64 %1, 32, !mcsema_real_eip !73
  %4 = xor i64 %3, %1, !mcsema_real_eip !73
  %5 = xor i64 %4, 32, !mcsema_real_eip !73
  %6 = and i64 %5, 16, !mcsema_real_eip !73
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !73
  store i1 %7, i1* %AF, !mcsema_real_eip !73
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !73
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !73
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !73
  %11 = xor i1 %10, true, !mcsema_real_eip !73
  store i1 %11, i1* %PF, !mcsema_real_eip !73
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !73
  store i1 %12, i1* %ZF, !mcsema_real_eip !73
  %13 = lshr i64 %3, 63, !mcsema_real_eip !73
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !73
  store i1 %14, i1* %SF, !mcsema_real_eip !73
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !73
  store i1 %15, i1* %CF, !mcsema_real_eip !73
  %16 = xor i64 %1, 32, !mcsema_real_eip !73
  %17 = and i64 %16, %4, !mcsema_real_eip !73
  %18 = lshr i64 %17, 63, !mcsema_real_eip !73
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !73
  store i1 %19, i1* %OF, !mcsema_real_eip !73
  store i64 %3, i64* %XSP, !mcsema_real_eip !73
  %20 = add i64 %1, -8, !mcsema_real_eip !74
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !74
  %RDI_val.98 = load i64, i64* %XDI, !mcsema_real_eip !74
  store i64 %RDI_val.98, i64* %21, !mcsema_real_eip !74
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !75
  %22 = add i64 %RBP_val.99, -12, !mcsema_real_eip !75
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !75
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !75
  store i32 1, i32* %24, !mcsema_real_eip !75
  %RBP_val.100 = load i64, i64* %XBP, !mcsema_real_eip !76
  %25 = add i64 %RBP_val.100, -8, !mcsema_real_eip !76
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !76
  %27 = load i64, i64* %26, !mcsema_real_eip !76
  store i64 %27, i64* %XDI, !mcsema_real_eip !76
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !77
  %28 = sub i64 %RSP_val.102, 8, !mcsema_real_eip !77
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !77
  store i64 -2415393069852865332, i64* %29, !mcsema_real_eip !77
  store i64 %28, i64* %XSP, !mcsema_real_eip !77
  %30 = call x86_64_sysvcc i64 @_strlen(i64 %27), !mcsema_real_eip !77
  store i64 %30, i64* %XAX, !mcsema_real_eip !77
  %EAX.103 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.104 = load i32, i32* %EAX.103, !mcsema_real_eip !78
  %31 = zext i32 %EAX_val.104 to i64, !mcsema_real_eip !78
  store i64 %31, i64* %XCX, !mcsema_real_eip !78
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !79
  %32 = add i64 %RBP_val.105, -16, !mcsema_real_eip !79
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !79
  %ECX.106 = bitcast i64* %XCX to i32*, !mcsema_real_eip !79
  %ECX_val.107 = load i32, i32* %ECX.106, !mcsema_real_eip !79
  %34 = inttoptr i64 %32 to i32*, !mcsema_real_eip !79
  store i32 %ECX_val.107, i32* %34, !mcsema_real_eip !79
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !80
  %35 = add i64 %RBP_val.108, -16, !mcsema_real_eip !80
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !80
  %37 = inttoptr i64 %35 to i32*, !mcsema_real_eip !80
  %38 = load i32, i32* %37, !mcsema_real_eip !80
  %39 = sub i32 %38, 1, !mcsema_real_eip !80
  %40 = xor i32 %39, %38, !mcsema_real_eip !80
  %41 = xor i32 %40, 1, !mcsema_real_eip !80
  %42 = and i32 %41, 16, !mcsema_real_eip !80
  %43 = icmp ne i32 %42, 0, !mcsema_real_eip !80
  store i1 %43, i1* %AF, !mcsema_real_eip !80
  %44 = trunc i32 %39 to i8, !mcsema_real_eip !80
  %45 = call i8 @llvm.ctpop.i8(i8 %44), !mcsema_real_eip !80
  %46 = trunc i8 %45 to i1, !mcsema_real_eip !80
  %47 = xor i1 %46, true, !mcsema_real_eip !80
  store i1 %47, i1* %PF, !mcsema_real_eip !80
  %48 = icmp eq i32 %39, 0, !mcsema_real_eip !80
  store i1 %48, i1* %ZF, !mcsema_real_eip !80
  %49 = lshr i32 %39, 31, !mcsema_real_eip !80
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !80
  store i1 %50, i1* %SF, !mcsema_real_eip !80
  %51 = icmp ult i32 %38, 1, !mcsema_real_eip !80
  store i1 %51, i1* %CF, !mcsema_real_eip !80
  %52 = xor i32 %38, 1, !mcsema_real_eip !80
  %53 = and i32 %52, %40, !mcsema_real_eip !80
  %54 = lshr i32 %53, 31, !mcsema_real_eip !80
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !80
  store i1 %55, i1* %OF, !mcsema_real_eip !80
  %56 = icmp eq i1 %50, %55, !mcsema_real_eip !81
  %57 = icmp eq i1 %56, false, !mcsema_real_eip !81
  %58 = or i1 %48, %57, !mcsema_real_eip !81
  br i1 %58, label %block_0xf3, label %block_0xbb, !mcsema_real_eip !81

block_0xbb:                                       ; preds = %block_0x90
  %59 = add i64 %RBP_val.108, -8, !mcsema_real_eip !82
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !82
  %61 = load i64, i64* %60, !mcsema_real_eip !82
  store i64 %61, i64* %XAX, !mcsema_real_eip !82
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !83
  %63 = inttoptr i64 %61 to i8*, !mcsema_real_eip !83
  %64 = load i8, i8* %63, !mcsema_real_eip !83
  %CL.115 = bitcast i64* %XCX to i8*, !mcsema_real_eip !83
  store i8 %64, i8* %CL.115, !mcsema_real_eip !83
  %65 = add i64 %RBP_val.108, -17, !mcsema_real_eip !84
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !84
  %67 = inttoptr i64 %65 to i8*, !mcsema_real_eip !84
  store i8 %64, i8* %67, !mcsema_real_eip !84
  %RBP_val.119 = load i64, i64* %XBP, !mcsema_real_eip !85
  %68 = add i64 %RBP_val.119, -8, !mcsema_real_eip !85
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !85
  %70 = load i64, i64* %69, !mcsema_real_eip !85
  store i64 %70, i64* %XAX, !mcsema_real_eip !85
  %71 = add i64 %RBP_val.119, -16, !mcsema_real_eip !86
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !86
  %73 = inttoptr i64 %71 to i32*, !mcsema_real_eip !86
  %74 = load i32, i32* %73, !mcsema_real_eip !86
  %75 = zext i32 %74 to i64, !mcsema_real_eip !86
  store i64 %75, i64* %XDX, !mcsema_real_eip !86
  %EDX.121 = bitcast i64* %XDX to i32*, !mcsema_real_eip !87
  %EDX_val.122 = load i32, i32* %EDX.121, !mcsema_real_eip !87
  %76 = sub i32 %EDX_val.122, 1, !mcsema_real_eip !87
  %77 = xor i32 %76, %EDX_val.122, !mcsema_real_eip !87
  %78 = xor i32 %77, 1, !mcsema_real_eip !87
  %79 = and i32 %78, 16, !mcsema_real_eip !87
  %80 = icmp ne i32 %79, 0, !mcsema_real_eip !87
  store i1 %80, i1* %AF, !mcsema_real_eip !87
  %81 = trunc i32 %76 to i8, !mcsema_real_eip !87
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !87
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !87
  %84 = xor i1 %83, true, !mcsema_real_eip !87
  store i1 %84, i1* %PF, !mcsema_real_eip !87
  %85 = icmp eq i32 %76, 0, !mcsema_real_eip !87
  store i1 %85, i1* %ZF, !mcsema_real_eip !87
  %86 = lshr i32 %76, 31, !mcsema_real_eip !87
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !87
  store i1 %87, i1* %SF, !mcsema_real_eip !87
  %88 = icmp ult i32 %EDX_val.122, 1, !mcsema_real_eip !87
  store i1 %88, i1* %CF, !mcsema_real_eip !87
  %89 = xor i32 %EDX_val.122, 1, !mcsema_real_eip !87
  %90 = and i32 %89, %77, !mcsema_real_eip !87
  %91 = lshr i32 %90, 31, !mcsema_real_eip !87
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !87
  store i1 %92, i1* %OF, !mcsema_real_eip !87
  %93 = zext i32 %76 to i64, !mcsema_real_eip !87
  store i64 %93, i64* %XDX, !mcsema_real_eip !87
  %EDX_val.124 = load i32, i32* %EDX.121, !mcsema_real_eip !88
  %94 = sext i32 %EDX_val.124 to i64, !mcsema_real_eip !88
  store i64 %94, i64* %XSI, !mcsema_real_eip !88
  %95 = add i64 %70, %94, !mcsema_real_eip !89
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !89
  %97 = inttoptr i64 %95 to i8*, !mcsema_real_eip !89
  %98 = load i8, i8* %97, !mcsema_real_eip !89
  store i8 %98, i8* %CL.115, !mcsema_real_eip !89
  %99 = add i64 %RBP_val.119, -18, !mcsema_real_eip !90
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !90
  %101 = inttoptr i64 %99 to i8*, !mcsema_real_eip !90
  store i8 %98, i8* %101, !mcsema_real_eip !90
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !91
  %102 = add i64 %RBP_val.131, -17, !mcsema_real_eip !91
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !91
  %104 = inttoptr i64 %102 to i8*, !mcsema_real_eip !91
  %105 = load i8, i8* %104, !mcsema_real_eip !91
  %106 = sext i8 %105 to i32, !mcsema_real_eip !91
  %107 = zext i32 %106 to i64, !mcsema_real_eip !91
  store i64 %107, i64* %XDX, !mcsema_real_eip !91
  %108 = add i64 %RBP_val.131, -18, !mcsema_real_eip !92
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !92
  %110 = inttoptr i64 %108 to i8*, !mcsema_real_eip !92
  %111 = load i8, i8* %110, !mcsema_real_eip !92
  %112 = sext i8 %111 to i32, !mcsema_real_eip !92
  %113 = zext i32 %112 to i64, !mcsema_real_eip !92
  store i64 %113, i64* %XDI, !mcsema_real_eip !92
  %EDX_val.134 = load i32, i32* %EDX.121, !mcsema_real_eip !93
  %EDI.135 = bitcast i64* %XDI to i32*, !mcsema_real_eip !93
  %EDI_val.136 = load i32, i32* %EDI.135, !mcsema_real_eip !93
  %114 = sub i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  %115 = xor i32 %114, %EDX_val.134, !mcsema_real_eip !93
  %116 = xor i32 %115, %EDI_val.136, !mcsema_real_eip !93
  %117 = and i32 %116, 16, !mcsema_real_eip !93
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !93
  store i1 %118, i1* %AF, !mcsema_real_eip !93
  %119 = trunc i32 %114 to i8, !mcsema_real_eip !93
  %120 = call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !93
  %121 = trunc i8 %120 to i1, !mcsema_real_eip !93
  %122 = xor i1 %121, true, !mcsema_real_eip !93
  store i1 %122, i1* %PF, !mcsema_real_eip !93
  %123 = icmp eq i32 %114, 0, !mcsema_real_eip !93
  store i1 %123, i1* %ZF, !mcsema_real_eip !93
  %124 = lshr i32 %114, 31, !mcsema_real_eip !93
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !93
  store i1 %125, i1* %SF, !mcsema_real_eip !93
  %126 = icmp ult i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  store i1 %126, i1* %CF, !mcsema_real_eip !93
  %127 = xor i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  %128 = and i32 %127, %115, !mcsema_real_eip !93
  %129 = lshr i32 %128, 31, !mcsema_real_eip !93
  %130 = trunc i32 %129 to i1, !mcsema_real_eip !93
  store i1 %130, i1* %OF, !mcsema_real_eip !93
  %131 = icmp eq i1 %123, false, !mcsema_real_eip !94
  br i1 %131, label %block_0xee, label %block_0xe7, !mcsema_real_eip !94

block_0xf3:                                       ; preds = %block_0xee, %block_0x90
  %RBP_val.109 = load i64, i64* %XBP, !mcsema_real_eip !95
  %132 = add i64 %RBP_val.109, -12, !mcsema_real_eip !95
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !95
  %134 = inttoptr i64 %132 to i32*, !mcsema_real_eip !95
  %135 = load i32, i32* %134, !mcsema_real_eip !95
  %136 = zext i32 %135 to i64, !mcsema_real_eip !95
  store i64 %136, i64* %XAX, !mcsema_real_eip !95
  %RSP_val.110 = load i64, i64* %XSP, !mcsema_real_eip !96
  %137 = add i64 32, %RSP_val.110, !mcsema_real_eip !96
  %138 = xor i64 %137, %RSP_val.110, !mcsema_real_eip !96
  %139 = xor i64 %138, 32, !mcsema_real_eip !96
  %140 = and i64 %139, 16, !mcsema_real_eip !96
  %141 = icmp ne i64 %140, 0, !mcsema_real_eip !96
  store i1 %141, i1* %AF, !mcsema_real_eip !96
  %142 = lshr i64 %137, 63, !mcsema_real_eip !96
  %143 = trunc i64 %142 to i1, !mcsema_real_eip !96
  store i1 %143, i1* %SF, !mcsema_real_eip !96
  %144 = icmp eq i64 %137, 0, !mcsema_real_eip !96
  store i1 %144, i1* %ZF, !mcsema_real_eip !96
  %145 = xor i64 %RSP_val.110, 32, !mcsema_real_eip !96
  %146 = xor i64 %145, -1, !mcsema_real_eip !96
  %147 = and i64 %146, %138, !mcsema_real_eip !96
  %148 = lshr i64 %147, 63, !mcsema_real_eip !96
  %149 = and i64 %148, 1, !mcsema_real_eip !96
  %150 = trunc i64 %149 to i1, !mcsema_real_eip !96
  store i1 %150, i1* %OF, !mcsema_real_eip !96
  %151 = trunc i64 %137 to i8, !mcsema_real_eip !96
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !96
  %153 = trunc i8 %152 to i1, !mcsema_real_eip !96
  %154 = xor i1 %153, true, !mcsema_real_eip !96
  store i1 %154, i1* %PF, !mcsema_real_eip !96
  %155 = icmp ult i64 %137, %RSP_val.110, !mcsema_real_eip !96
  store i1 %155, i1* %CF, !mcsema_real_eip !96
  store i64 %137, i64* %XSP, !mcsema_real_eip !96
  %156 = inttoptr i64 %137 to i64*, !mcsema_real_eip !97
  %157 = load i64, i64* %156, !mcsema_real_eip !97
  store i64 %157, i64* %XBP, !mcsema_real_eip !97
  %158 = add i64 %137, 8, !mcsema_real_eip !97
  store i64 %158, i64* %XSP, !mcsema_real_eip !97
  %159 = add i64 %158, 8, !mcsema_real_eip !98
  %160 = inttoptr i64 %158 to i64*, !mcsema_real_eip !98
  %161 = load i64, i64* %160, !mcsema_real_eip !98
  store i64 %161, i64* %XIP, !mcsema_real_eip !98
  store i64 %159, i64* %XSP, !mcsema_real_eip !98
  ret void, !mcsema_real_eip !98

block_0xe7:                                       ; preds = %block_0xbb
  %162 = add i64 %RBP_val.131, -12, !mcsema_real_eip !99
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !99
  %164 = inttoptr i64 %162 to i32*, !mcsema_real_eip !99
  store i32 0, i32* %164, !mcsema_real_eip !99
  br label %block_0xee

block_0xee:                                       ; preds = %block_0xe7, %block_0xbb
  br label %block_0xf3, !mcsema_real_eip !100
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare void @doWork() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
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
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %ESI.7 = bitcast i64* %XSI to i32*, !mcsema_real_eip !6
  %ESI_val.8 = load i32, i32* %ESI.7, !mcsema_real_eip !6
  %14 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 %ESI_val.8, i32* %15, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !7
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !7
  store i32 0, i32* %17, !mcsema_real_eip !7
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -12
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !8
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !8
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

; <label>:20:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x0, %20
  %22 = phi i32* [ %19, %block_0x0 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  %23 = sext i32 %_new_load_ to i64, !mcsema_real_eip !8
  store i64 %23, i64* %XDI, !mcsema_real_eip !8
  %24 = shl i64 %23, 2, !mcsema_real_eip !9
  %25 = and i64 %24, -9223372036854775808, !mcsema_real_eip !9
  %26 = icmp ne i64 %25, 0, !mcsema_real_eip !9
  %27 = load i1, i1* %CF, !mcsema_real_eip !9
  %28 = shl i64 %24, 1, !mcsema_real_eip !9
  %29 = load i1, i1* %OF, !mcsema_real_eip !9
  %30 = and i64 %28, -9223372036854775808, !mcsema_real_eip !9
  %31 = icmp ne i64 %30, 0, !mcsema_real_eip !9
  %32 = xor i1 %31, %26, !mcsema_real_eip !9
  store i1 %26, i1* %CF, !mcsema_real_eip !9
  %33 = load i1, i1* %ZF, !mcsema_real_eip !9
  %34 = icmp eq i64 %28, 0, !mcsema_real_eip !9
  store i1 %34, i1* %ZF, !mcsema_real_eip !9
  %35 = load i1, i1* %SF, !mcsema_real_eip !9
  %36 = icmp slt i64 %28, 0, !mcsema_real_eip !9
  store i1 %36, i1* %SF, !mcsema_real_eip !9
  %37 = load i1, i1* %PF, !mcsema_real_eip !9
  %38 = trunc i64 %28 to i8, !mcsema_real_eip !9
  %39 = call i8 @llvm.ctpop.i8(i8 %38), !mcsema_real_eip !9
  %40 = trunc i8 %39 to i1, !mcsema_real_eip !9
  %41 = xor i1 %40, true, !mcsema_real_eip !9
  store i1 %41, i1* %PF, !mcsema_real_eip !9
  store i64 %28, i64* %XDI, !mcsema_real_eip !9
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.13 = load i64, i64* %XSP, !mcsema_real_eip !10
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %42 = sub i64 %RSP_val.13, 8, !mcsema_real_eip !10
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !10
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %42, i64* %XSP, !mcsema_real_eip !10
  %43 = call x86_64_sysvcc i64 @_malloc(i64 %28)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %43, i64* %XAX, !mcsema_real_eip !10
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 %43, i64* %_allin_new_bt_30, !mcsema_real_eip !11
  br label %block_0x27, !mcsema_real_eip !12

block_0x27:                                       ; preds = %136, %21
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -16
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %44 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !12
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !12
  %_ptr_bt_102 = bitcast i32* %45 to i8*
  %_offset_above_rbp_103 = sub i64 %44, %_local_end_to_int_
  %_pot_address_in_parent_stack_104 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_103
  %_cond1_105 = icmp ugt i8* %_ptr_bt_102, %_local_stack_end_ptr_
  %_cond2_1_106 = icmp ugt i8* %_ptr_bt_102, %_parent_stack_end_ptr_
  %_cond2_2_107 = icmp ult i8* %_ptr_bt_102, %_parent_stack_start_ptr_
  %_cond2_108 = or i1 %_cond2_1_106, %_cond2_2_107
  %_cond4_109 = icmp ule i8* %_pot_address_in_parent_stack_104, %_parent_stack_end_ptr_
  %_cond1_n_cond2_110 = and i1 %_cond1_105, %_cond2_108
  %_cond1_n_cond2_cond3_111 = and i1 %_cond1_n_cond2_110, %_cond4_109
  br i1 %_cond1_n_cond2_cond3_111, label %46, label %47

; <label>:46:                                     ; preds = %block_0x27
  %_address_in_parent_stack_bt_113 = bitcast i8* %_pot_address_in_parent_stack_104 to i32*
  br label %47

; <label>:47:                                     ; preds = %block_0x27, %46
  %48 = phi i32* [ %45, %block_0x27 ], [ %_address_in_parent_stack_bt_113, %46 ]
  %_new_load_114 = load i32, i32* %48
  %49 = zext i32 %_new_load_114 to i64, !mcsema_real_eip !12
  store i64 %49, i64* %XAX, !mcsema_real_eip !12
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -12
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.18 = bitcast i64* %XAX to i32*, !mcsema_real_eip !13
  %EAX_val.19 = load i32, i32* %EAX.18, !mcsema_real_eip !13
  %50 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !13
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !13
  %_ptr_bt_117 = bitcast i32* %51 to i8*
  %_offset_above_rbp_118 = sub i64 %50, %_local_end_to_int_
  %_pot_address_in_parent_stack_119 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_118
  %_cond1_120 = icmp ugt i8* %_ptr_bt_117, %_local_stack_end_ptr_
  %_cond2_1_121 = icmp ugt i8* %_ptr_bt_117, %_parent_stack_end_ptr_
  %_cond2_2_122 = icmp ult i8* %_ptr_bt_117, %_parent_stack_start_ptr_
  %_cond2_123 = or i1 %_cond2_1_121, %_cond2_2_122
  %_cond4_124 = icmp ule i8* %_pot_address_in_parent_stack_119, %_parent_stack_end_ptr_
  %_cond1_n_cond2_125 = and i1 %_cond1_120, %_cond2_123
  %_cond1_n_cond2_cond3_126 = and i1 %_cond1_n_cond2_125, %_cond4_124
  br i1 %_cond1_n_cond2_cond3_126, label %52, label %53

; <label>:52:                                     ; preds = %47
  %_address_in_parent_stack_bt_128 = bitcast i8* %_pot_address_in_parent_stack_119 to i32*
  br label %53

; <label>:53:                                     ; preds = %47, %52
  %54 = phi i32* [ %51, %47 ], [ %_address_in_parent_stack_bt_128, %52 ]
  %_new_load_129 = load i32, i32* %54
  %55 = sub i32 %EAX_val.19, %_new_load_129, !mcsema_real_eip !13
  %56 = xor i32 %55, %EAX_val.19, !mcsema_real_eip !13
  %57 = xor i32 %56, %_new_load_129, !mcsema_real_eip !13
  %58 = and i32 %57, 16, !mcsema_real_eip !13
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !13
  store i1 %59, i1* %AF, !mcsema_real_eip !13
  %60 = trunc i32 %55 to i8, !mcsema_real_eip !13
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !13
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !13
  %63 = xor i1 %62, true, !mcsema_real_eip !13
  store i1 %63, i1* %PF, !mcsema_real_eip !13
  %64 = icmp eq i32 %55, 0, !mcsema_real_eip !13
  store i1 %64, i1* %ZF, !mcsema_real_eip !13
  %65 = lshr i32 %55, 31, !mcsema_real_eip !13
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !13
  store i1 %66, i1* %SF, !mcsema_real_eip !13
  %67 = icmp ult i32 %EAX_val.19, %_new_load_129, !mcsema_real_eip !13
  store i1 %67, i1* %CF, !mcsema_real_eip !13
  %68 = xor i32 %EAX_val.19, %_new_load_129, !mcsema_real_eip !13
  %69 = and i32 %68, %56, !mcsema_real_eip !13
  %70 = lshr i32 %69, 31, !mcsema_real_eip !13
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !13
  store i1 %71, i1* %OF, !mcsema_real_eip !13
  %72 = icmp eq i1 %66, %71, !mcsema_real_eip !14
  br i1 %72, label %block_0x75, label %block_0x33, !mcsema_real_eip !14

block_0x33:                                       ; preds = %53
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_130 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_133 = sub i64 %_ptr_to_int_130, %_local_end_to_int_
  %_pot_address_in_parent_stack_134 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_133
  %_cond1_135 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_136 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_137 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_138 = or i1 %_cond2_1_136, %_cond2_2_137
  %_cond4_139 = icmp ule i8* %_pot_address_in_parent_stack_134, %_parent_stack_end_ptr_
  %_cond1_n_cond2_140 = and i1 %_cond1_135, %_cond2_138
  %_cond1_n_cond2_cond3_141 = and i1 %_cond1_n_cond2_140, %_cond4_139
  br i1 %_cond1_n_cond2_cond3_141, label %73, label %74

; <label>:73:                                     ; preds = %block_0x33
  %_address_in_parent_stack_bt_143 = bitcast i8* %_pot_address_in_parent_stack_134 to i64*
  br label %74

; <label>:74:                                     ; preds = %block_0x33, %73
  %75 = phi i64* [ %_allin_new_bt_39, %block_0x33 ], [ %_address_in_parent_stack_bt_143, %73 ]
  %_new_load_144 = load i64, i64* %75
  store i64 %_new_load_144, i64* %XAX, !mcsema_real_eip !15
  br i1 %_cond1_n_cond2_cond3_111, label %76, label %77

; <label>:76:                                     ; preds = %74
  %_address_in_parent_stack_bt_158 = bitcast i8* %_pot_address_in_parent_stack_104 to i32*
  br label %77

; <label>:77:                                     ; preds = %74, %76
  %78 = phi i32* [ %45, %74 ], [ %_address_in_parent_stack_bt_158, %76 ]
  %_new_load_159 = load i32, i32* %78
  %79 = sext i32 %_new_load_159 to i64, !mcsema_real_eip !16
  store i64 %79, i64* %XCX, !mcsema_real_eip !16
  %80 = mul i64 %79, 8, !mcsema_real_eip !17
  %81 = add i64 %_new_load_144, %80, !mcsema_real_eip !17
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !17
  %_ptr_bt_162 = bitcast i64* %82 to i8*
  %_offset_above_rbp_163 = sub i64 %81, %_local_end_to_int_
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_ptr_bt_162, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_ptr_bt_162, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_ptr_bt_162, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  br i1 %_cond1_n_cond2_cond3_171, label %83, label %84

; <label>:83:                                     ; preds = %77
  %_address_in_parent_stack_bt_173 = bitcast i8* %_pot_address_in_parent_stack_164 to i64*
  br label %84

; <label>:84:                                     ; preds = %77, %83
  %85 = phi i64* [ %82, %77 ], [ %_address_in_parent_stack_bt_173, %83 ]
  %_new_load_174 = load i64, i64* %85
  store i64 %_new_load_174, i64* %XAX, !mcsema_real_eip !17
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -32
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %_new_load_174, i64* %_allin_new_bt_45, !mcsema_real_eip !18
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -32
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %_ptr_to_int_175 = ptrtoint i64* %_allin_new_bt_48 to i64
  %_offset_above_rbp_178 = sub i64 %_ptr_to_int_175, %_local_end_to_int_
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  br i1 %_cond1_n_cond2_cond3_186, label %86, label %87

; <label>:86:                                     ; preds = %84
  %_address_in_parent_stack_bt_188 = bitcast i8* %_pot_address_in_parent_stack_179 to i64*
  br label %87

; <label>:87:                                     ; preds = %84, %86
  %88 = phi i64* [ %_allin_new_bt_48, %84 ], [ %_address_in_parent_stack_bt_188, %86 ]
  %_new_load_189 = load i64, i64* %88
  store i64 %_new_load_189, i64* %XDI, !mcsema_real_eip !19
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.32 = load i64, i64* %XSP, !mcsema_real_eip !20
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %89 = sub i64 %RSP_val.32, 8, !mcsema_real_eip !20
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_51, !mcsema_real_eip !20
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %89, i64* %XSP, !mcsema_real_eip !20
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @checkFn.3(%RegState* %0, i8* %_new_gep_50, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_92)
  %_rsp_fix_94 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_95 = getelementptr i8, i8* %_rsp_fix_94, i64 8
  store i8* %_gep_fix_95, i8** %_RSP_ptr_
  %EAX_val.34 = load i32, i32* %EAX.18, !mcsema_real_eip !21
  store i1 false, i1* %AF, !mcsema_real_eip !21
  %90 = trunc i32 %EAX_val.34 to i8, !mcsema_real_eip !21
  %91 = call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !21
  %92 = trunc i8 %91 to i1, !mcsema_real_eip !21
  %93 = xor i1 %92, true, !mcsema_real_eip !21
  store i1 %93, i1* %PF, !mcsema_real_eip !21
  %94 = icmp eq i32 %EAX_val.34, 0, !mcsema_real_eip !21
  store i1 %94, i1* %ZF, !mcsema_real_eip !21
  %95 = lshr i32 %EAX_val.34, 31, !mcsema_real_eip !21
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !21
  store i1 %96, i1* %SF, !mcsema_real_eip !21
  store i1 false, i1* %CF, !mcsema_real_eip !21
  store i1 false, i1* %OF, !mcsema_real_eip !21
  %97 = icmp eq i1 %94, false, !mcsema_real_eip !22
  br i1 %97, label %block_0x62, label %block_0x55, !mcsema_real_eip !22

block_0x75:                                       ; preds = %53
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %_ptr_to_int_190 = ptrtoint i64* %_allin_new_bt_54 to i64
  %_offset_above_rbp_193 = sub i64 %_ptr_to_int_190, %_local_end_to_int_
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  br i1 %_cond1_n_cond2_cond3_201, label %98, label %99

; <label>:98:                                     ; preds = %block_0x75
  %_address_in_parent_stack_bt_203 = bitcast i8* %_pot_address_in_parent_stack_194 to i64*
  br label %99

; <label>:99:                                     ; preds = %block_0x75, %98
  %100 = phi i64* [ %_allin_new_bt_54, %block_0x75 ], [ %_address_in_parent_stack_bt_203, %98 ]
  %_new_load_204 = load i64, i64* %100
  store i64 %_new_load_204, i64* %XAX, !mcsema_real_eip !23
  %101 = add i64 %_new_load_204, 1, !mcsema_real_eip !24
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !24
  %103 = inttoptr i64 %101 to i8*, !mcsema_real_eip !24
  store i8 2, i8* %103, !mcsema_real_eip !24
  %_load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_
  %RSP_val.22 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_55, i64 32
  %104 = add i64 32, %RSP_val.22, !mcsema_real_eip !25
  %_trans_p2i_57 = ptrtoint i8* %_new_gep_56 to i64
  %_trans_p2i_58 = ptrtoint i8* %_load_rsp_ptr_55 to i64
  %_trans_xor_59 = xor i64 %_trans_p2i_57, %_trans_p2i_58
  %105 = xor i64 %_trans_xor_59, 32, !mcsema_real_eip !25
  %106 = and i64 %105, 16, !mcsema_real_eip !25
  %107 = icmp ne i64 %106, 0, !mcsema_real_eip !25
  store i1 %107, i1* %AF, !mcsema_real_eip !25
  %108 = lshr i64 %104, 63, !mcsema_real_eip !25
  %109 = trunc i64 %108 to i1, !mcsema_real_eip !25
  store i1 %109, i1* %SF, !mcsema_real_eip !25
  %_trans_icmp_eq_61 = icmp eq i64 %_trans_p2i_57, 0
  store i1 %_trans_icmp_eq_61, i1* %ZF, !mcsema_real_eip !25
  %_trans_xor_63 = xor i64 %_trans_p2i_58, 32
  %110 = xor i64 %_trans_xor_63, -1, !mcsema_real_eip !25
  %111 = and i64 %110, %_trans_xor_59, !mcsema_real_eip !25
  %112 = lshr i64 %111, 63, !mcsema_real_eip !25
  %113 = and i64 %112, 1, !mcsema_real_eip !25
  %114 = trunc i64 %113 to i1, !mcsema_real_eip !25
  store i1 %114, i1* %OF, !mcsema_real_eip !25
  %_trans_trunc_68 = trunc i64 %_trans_p2i_57 to i8
  %115 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_68), !mcsema_real_eip !25
  %116 = trunc i8 %115 to i1, !mcsema_real_eip !25
  %117 = xor i1 %116, true, !mcsema_real_eip !25
  store i1 %117, i1* %PF, !mcsema_real_eip !25
  %_trans_icmp_ne_70 = icmp ne i64 %_trans_p2i_57, %RSP_val.22
  store i1 %_trans_icmp_ne_70, i1* %CF, !mcsema_real_eip !25
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %104, i64* %XSP, !mcsema_real_eip !25
  %_allin_new_bt_72 = bitcast i8* %_new_gep_56 to i64*
  %_ptr_to_int_205 = ptrtoint i64* %_allin_new_bt_72 to i64
  %_offset_above_rbp_208 = sub i64 %_ptr_to_int_205, %_local_end_to_int_
  %_pot_address_in_parent_stack_209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_208
  %_cond1_210 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_211 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_212 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_213 = or i1 %_cond2_1_211, %_cond2_2_212
  %_cond4_214 = icmp ule i8* %_pot_address_in_parent_stack_209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_215 = and i1 %_cond1_210, %_cond2_213
  %_cond1_n_cond2_cond3_216 = and i1 %_cond1_n_cond2_215, %_cond4_214
  br i1 %_cond1_n_cond2_cond3_216, label %118, label %119

; <label>:118:                                    ; preds = %99
  %_address_in_parent_stack_bt_218 = bitcast i8* %_pot_address_in_parent_stack_209 to i64*
  br label %119

; <label>:119:                                    ; preds = %99, %118
  %120 = phi i64* [ %_allin_new_bt_72, %99 ], [ %_address_in_parent_stack_bt_218, %118 ]
  %_new_load_219 = load i64, i64* %120
  %_new_int2ptr_ = inttoptr i64 %_new_load_219 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_219, i64* %XBP, !mcsema_real_eip !26
  %_new_gep_73 = getelementptr i8, i8* %_new_gep_56, i64 8
  %121 = add i64 %104, 8, !mcsema_real_eip !26
  store volatile i8* %_new_gep_73, i8** %_RSP_ptr_
  store i64 %121, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_75 = getelementptr i8, i8* %_new_gep_73, i64 8
  %122 = add i64 %121, 8, !mcsema_real_eip !27
  %_allin_new_bt_76 = bitcast i8* %_new_gep_73 to i64*
  %_ptr_to_int_220 = ptrtoint i64* %_allin_new_bt_76 to i64
  %_offset_above_rbp_223 = sub i64 %_ptr_to_int_220, %_local_end_to_int_
  %_pot_address_in_parent_stack_224 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_223
  %_cond1_225 = icmp ugt i8* %_new_gep_73, %_local_stack_end_ptr_
  %_cond2_1_226 = icmp ugt i8* %_new_gep_73, %_parent_stack_end_ptr_
  %_cond2_2_227 = icmp ult i8* %_new_gep_73, %_parent_stack_start_ptr_
  %_cond2_228 = or i1 %_cond2_1_226, %_cond2_2_227
  %_cond4_229 = icmp ule i8* %_pot_address_in_parent_stack_224, %_parent_stack_end_ptr_
  %_cond1_n_cond2_230 = and i1 %_cond1_225, %_cond2_228
  %_cond1_n_cond2_cond3_231 = and i1 %_cond1_n_cond2_230, %_cond4_229
  br i1 %_cond1_n_cond2_cond3_231, label %123, label %124

; <label>:123:                                    ; preds = %119
  %_address_in_parent_stack_bt_233 = bitcast i8* %_pot_address_in_parent_stack_224 to i64*
  br label %124

; <label>:124:                                    ; preds = %119, %123
  %125 = phi i64* [ %_allin_new_bt_76, %119 ], [ %_address_in_parent_stack_bt_233, %123 ]
  %_new_load_234 = load i64, i64* %125
  store i64 %_new_load_234, i64* %XIP, !mcsema_real_eip !27
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_
  store i64 %122, i64* %XSP, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27

block_0x55:                                       ; preds = %87
  %_load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_77, i64 -32
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %_ptr_to_int_235 = ptrtoint i64* %_allin_new_bt_79 to i64
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %_local_end_to_int_
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  br i1 %_cond1_n_cond2_cond3_246, label %126, label %127

; <label>:126:                                    ; preds = %block_0x55
  %_address_in_parent_stack_bt_248 = bitcast i8* %_pot_address_in_parent_stack_239 to i64*
  br label %127

; <label>:127:                                    ; preds = %block_0x55, %126
  %128 = phi i64* [ %_allin_new_bt_79, %block_0x55 ], [ %_address_in_parent_stack_bt_248, %126 ]
  %_new_load_249 = load i64, i64* %128
  store i64 %_new_load_249, i64* %XDI, !mcsema_real_eip !28
  br i1 %_cond1_n_cond2_cond3_246, label %129, label %130

; <label>:129:                                    ; preds = %127
  %_address_in_parent_stack_bt_263 = bitcast i8* %_pot_address_in_parent_stack_239 to i64*
  br label %130

; <label>:130:                                    ; preds = %127, %129
  %131 = phi i64* [ %_allin_new_bt_79, %127 ], [ %_address_in_parent_stack_bt_263, %129 ]
  %_new_load_264 = load i64, i64* %131
  store i64 %_new_load_264, i64* %XSI, !mcsema_real_eip !29
  %RSP_val.37 = load i64, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_84 = getelementptr i8, i8* %_gep_fix_95, i64 -8
  %132 = sub i64 %RSP_val.37, 8, !mcsema_real_eip !30
  %_allin_new_bt_85 = bitcast i8* %_new_gep_84 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_85, !mcsema_real_eip !30
  store volatile i8* %_new_gep_84, i8** %_RSP_ptr_
  store i64 %132, i64* %XSP, !mcsema_real_eip !30
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @doStuff.2(%RegState* %0, i8* %_new_gep_84, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_96)
  %_rsp_fix_98 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_99 = getelementptr i8, i8* %_rsp_fix_98, i64 8
  store i8* %_gep_fix_99, i8** %_RSP_ptr_
  br label %block_0x62, !mcsema_real_eip !31

block_0x62:                                       ; preds = %130, %87
  br label %block_0x67, !mcsema_real_eip !32

block_0x67:                                       ; preds = %block_0x62
  %_load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_
  %_new_gep_87 = getelementptr i8, i8* %_load_rbp_ptr_86, i64 -16
  %_allin_new_bt_88 = bitcast i8* %_new_gep_87 to i64*
  %133 = ptrtoint i64* %_allin_new_bt_88 to i64, !mcsema_real_eip !31
  %134 = inttoptr i64 %133 to i32*, !mcsema_real_eip !31
  %_ptr_bt_267 = bitcast i32* %134 to i8*
  %_offset_above_rbp_268 = sub i64 %133, %_local_end_to_int_
  %_pot_address_in_parent_stack_269 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_268
  %_cond1_270 = icmp ugt i8* %_ptr_bt_267, %_local_stack_end_ptr_
  %_cond2_1_271 = icmp ugt i8* %_ptr_bt_267, %_parent_stack_end_ptr_
  %_cond2_2_272 = icmp ult i8* %_ptr_bt_267, %_parent_stack_start_ptr_
  %_cond2_273 = or i1 %_cond2_1_271, %_cond2_2_272
  %_cond4_274 = icmp ule i8* %_pot_address_in_parent_stack_269, %_parent_stack_end_ptr_
  %_cond1_n_cond2_275 = and i1 %_cond1_270, %_cond2_273
  %_cond1_n_cond2_cond3_276 = and i1 %_cond1_n_cond2_275, %_cond4_274
  br i1 %_cond1_n_cond2_cond3_276, label %135, label %136

; <label>:135:                                    ; preds = %block_0x67
  %_address_in_parent_stack_bt_278 = bitcast i8* %_pot_address_in_parent_stack_269 to i32*
  br label %136

; <label>:136:                                    ; preds = %block_0x67, %135
  %137 = phi i32* [ %134, %block_0x67 ], [ %_address_in_parent_stack_bt_278, %135 ]
  %_new_load_279 = load i32, i32* %137
  %138 = zext i32 %_new_load_279 to i64, !mcsema_real_eip !31
  store i64 %138, i64* %XAX, !mcsema_real_eip !31
  %EAX_val.40 = load i32, i32* %EAX.18, !mcsema_real_eip !33
  %139 = add i32 1, %EAX_val.40, !mcsema_real_eip !33
  %140 = xor i32 %139, %EAX_val.40, !mcsema_real_eip !33
  %141 = xor i32 %140, 1, !mcsema_real_eip !33
  %142 = and i32 %141, 16, !mcsema_real_eip !33
  %143 = icmp ne i32 %142, 0, !mcsema_real_eip !33
  store i1 %143, i1* %AF, !mcsema_real_eip !33
  %144 = lshr i32 %139, 31, !mcsema_real_eip !33
  %145 = trunc i32 %144 to i1, !mcsema_real_eip !33
  store i1 %145, i1* %SF, !mcsema_real_eip !33
  %146 = icmp eq i32 %139, 0, !mcsema_real_eip !33
  store i1 %146, i1* %ZF, !mcsema_real_eip !33
  %147 = xor i32 %EAX_val.40, 1, !mcsema_real_eip !33
  %148 = xor i32 %147, -1, !mcsema_real_eip !33
  %149 = and i32 %148, %140, !mcsema_real_eip !33
  %150 = lshr i32 %149, 31, !mcsema_real_eip !33
  %151 = and i32 %150, 1, !mcsema_real_eip !33
  %152 = trunc i32 %151 to i1, !mcsema_real_eip !33
  store i1 %152, i1* %OF, !mcsema_real_eip !33
  %153 = trunc i32 %139 to i8, !mcsema_real_eip !33
  %154 = call i8 @llvm.ctpop.i8(i8 %153), !mcsema_real_eip !33
  %155 = trunc i8 %154 to i1, !mcsema_real_eip !33
  %156 = xor i1 %155, true, !mcsema_real_eip !33
  store i1 %156, i1* %PF, !mcsema_real_eip !33
  %157 = icmp ult i32 %139, %EAX_val.40, !mcsema_real_eip !33
  store i1 %157, i1* %CF, !mcsema_real_eip !33
  %158 = zext i32 %139 to i64, !mcsema_real_eip !33
  store i64 %158, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.43 = load i32, i32* %EAX.18, !mcsema_real_eip !34
  store i32 %EAX_val.43, i32* %134, !mcsema_real_eip !34
  br label %block_0x27, !mcsema_real_eip !35
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @doStuff.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 41
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 41
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !36
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !36
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !36
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !36
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !36
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !36
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !36
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !36
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !36
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !36
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !36
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !36
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !36
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !36
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !36
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !36
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !36
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !36
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !36
  br label %block_0x100, !mcsema_real_eip !36

block_0x100:                                      ; preds = %entry
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !36
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.45, 8, !mcsema_real_eip !36
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !36
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !37
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %RDI_val.48 = load i64, i64* %XDI, !mcsema_real_eip !38
  store i64 %RDI_val.48, i64* %_allin_new_bt_4, !mcsema_real_eip !38
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -16
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %RSI_val.50 = load i64, i64* %XSI, !mcsema_real_eip !39
  store i64 %RSI_val.50, i64* %_allin_new_bt_7, !mcsema_real_eip !39
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_10 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %2, label %3

; <label>:2:                                      ; preds = %block_0x100
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %3

; <label>:3:                                      ; preds = %block_0x100, %2
  %4 = phi i64* [ %_allin_new_bt_10, %block_0x100 ], [ %_address_in_parent_stack_bt_, %2 ]
  %_new_load_ = load i64, i64* %4
  store i64 %_new_load_, i64* %XSI, !mcsema_real_eip !40
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  store i64 %_new_load_, i64* %_allin_new_bt_13, !mcsema_real_eip !41
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %_ptr_to_int_65 = ptrtoint i64* %_allin_new_bt_16 to i64
  %_offset_above_rbp_68 = sub i64 %_ptr_to_int_65, %_local_end_to_int_
  %_pot_address_in_parent_stack_69 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_68
  %_cond1_70 = icmp ugt i8* %_new_gep_15, %_local_stack_end_ptr_
  %_cond2_1_71 = icmp ugt i8* %_new_gep_15, %_parent_stack_end_ptr_
  %_cond2_2_72 = icmp ult i8* %_new_gep_15, %_parent_stack_start_ptr_
  %_cond2_73 = or i1 %_cond2_1_71, %_cond2_2_72
  %_cond4_74 = icmp ule i8* %_pot_address_in_parent_stack_69, %_parent_stack_end_ptr_
  %_cond1_n_cond2_75 = and i1 %_cond1_70, %_cond2_73
  %_cond1_n_cond2_cond3_76 = and i1 %_cond1_n_cond2_75, %_cond4_74
  br i1 %_cond1_n_cond2_cond3_76, label %5, label %6

; <label>:5:                                      ; preds = %3
  %_address_in_parent_stack_bt_78 = bitcast i8* %_pot_address_in_parent_stack_69 to i64*
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = phi i64* [ %_allin_new_bt_16, %3 ], [ %_address_in_parent_stack_bt_78, %5 ]
  %_new_load_79 = load i64, i64* %7
  store i64 %_new_load_79, i64* %XSI, !mcsema_real_eip !42
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -32
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  store i64 %_new_load_79, i64* %_allin_new_bt_19, !mcsema_real_eip !43
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -24
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %_ptr_to_int_80 = ptrtoint i64* %_allin_new_bt_22 to i64
  %_offset_above_rbp_83 = sub i64 %_ptr_to_int_80, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  br i1 %_cond1_n_cond2_cond3_91, label %8, label %9

; <label>:8:                                      ; preds = %6
  %_address_in_parent_stack_bt_93 = bitcast i8* %_pot_address_in_parent_stack_84 to i64*
  br label %9

; <label>:9:                                      ; preds = %6, %8
  %10 = phi i64* [ %_allin_new_bt_22, %6 ], [ %_address_in_parent_stack_bt_93, %8 ]
  %_new_load_94 = load i64, i64* %10
  store i64 %_new_load_94, i64* %XSI, !mcsema_real_eip !44
  %11 = inttoptr i64 %_new_load_94 to i64*, !mcsema_real_eip !45
  %12 = inttoptr i64 %_new_load_94 to i8*, !mcsema_real_eip !45
  %_offset_above_rbp_97 = sub i64 %_new_load_94, %_local_end_to_int_
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %12, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %12, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %12, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond1_n_cond2_104, %_cond4_103
  br i1 %_cond1_n_cond2_cond3_105, label %13, label %14

; <label>:13:                                     ; preds = %9
  br label %14

; <label>:14:                                     ; preds = %9, %13
  %15 = phi i8* [ %12, %9 ], [ %_pot_address_in_parent_stack_98, %13 ]
  %_new_load_107 = load i8, i8* %15
  %AL.59 = bitcast i64* %XAX to i8*, !mcsema_real_eip !45
  store i8 %_new_load_107, i8* %AL.59, !mcsema_real_eip !45
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -33
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !46
  %17 = inttoptr i64 %16 to i8*, !mcsema_real_eip !46
  store i8 %_new_load_107, i8* %17, !mcsema_real_eip !46
  br label %block_0x125, !mcsema_real_eip !47

block_0x125:                                      ; preds = %126, %14
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -33
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !47
  %19 = inttoptr i64 %18 to i8*, !mcsema_real_eip !47
  %_offset_above_rbp_110 = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %19, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %19, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %19, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  br i1 %_cond1_n_cond2_cond3_118, label %20, label %21

; <label>:20:                                     ; preds = %block_0x125
  br label %21

; <label>:21:                                     ; preds = %block_0x125, %20
  %22 = phi i8* [ %19, %block_0x125 ], [ %_pot_address_in_parent_stack_111, %20 ]
  %_new_load_120 = load i8, i8* %22
  %23 = sext i8 %_new_load_120 to i32, !mcsema_real_eip !47
  %24 = zext i32 %23 to i64, !mcsema_real_eip !47
  store i64 %24, i64* %XAX, !mcsema_real_eip !47
  %EAX.64 = bitcast i64* %XAX to i32*, !mcsema_real_eip !48
  %EAX_val.65 = load i32, i32* %EAX.64, !mcsema_real_eip !48
  store i1 false, i1* %AF, !mcsema_real_eip !48
  %25 = trunc i32 %EAX_val.65 to i8, !mcsema_real_eip !48
  %26 = call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !48
  %27 = trunc i8 %26 to i1, !mcsema_real_eip !48
  %28 = xor i1 %27, true, !mcsema_real_eip !48
  store i1 %28, i1* %PF, !mcsema_real_eip !48
  %29 = icmp eq i32 %EAX_val.65, 0, !mcsema_real_eip !48
  store i1 %29, i1* %ZF, !mcsema_real_eip !48
  %30 = lshr i32 %EAX_val.65, 31, !mcsema_real_eip !48
  %31 = trunc i32 %30 to i1, !mcsema_real_eip !48
  store i1 %31, i1* %SF, !mcsema_real_eip !48
  store i1 false, i1* %CF, !mcsema_real_eip !48
  store i1 false, i1* %OF, !mcsema_real_eip !48
  br i1 %29, label %block_0x17a, label %block_0x132, !mcsema_real_eip !49

block_0x132:                                      ; preds = %21
  br i1 %_cond1_n_cond2_cond3_118, label %32, label %33

; <label>:32:                                     ; preds = %block_0x132
  br label %33

; <label>:33:                                     ; preds = %block_0x132, %32
  %34 = phi i8* [ %19, %block_0x132 ], [ %_pot_address_in_parent_stack_111, %32 ]
  %_new_load_133 = load i8, i8* %34
  %35 = sext i8 %_new_load_133 to i32, !mcsema_real_eip !50
  %36 = zext i32 %35 to i64, !mcsema_real_eip !50
  store i64 %36, i64* %XAX, !mcsema_real_eip !50
  %EAX_val.70 = load i32, i32* %EAX.64, !mcsema_real_eip !51
  %37 = sub i32 %EAX_val.70, 47, !mcsema_real_eip !51
  %38 = xor i32 %37, %EAX_val.70, !mcsema_real_eip !51
  %39 = xor i32 %38, 47, !mcsema_real_eip !51
  %40 = and i32 %39, 16, !mcsema_real_eip !51
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !51
  store i1 %41, i1* %AF, !mcsema_real_eip !51
  %42 = trunc i32 %37 to i8, !mcsema_real_eip !51
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !51
  %44 = trunc i8 %43 to i1, !mcsema_real_eip !51
  %45 = xor i1 %44, true, !mcsema_real_eip !51
  store i1 %45, i1* %PF, !mcsema_real_eip !51
  %46 = icmp eq i32 %37, 0, !mcsema_real_eip !51
  store i1 %46, i1* %ZF, !mcsema_real_eip !51
  %47 = lshr i32 %37, 31, !mcsema_real_eip !51
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !51
  store i1 %48, i1* %SF, !mcsema_real_eip !51
  %49 = icmp ult i32 %EAX_val.70, 47, !mcsema_real_eip !51
  store i1 %49, i1* %CF, !mcsema_real_eip !51
  %50 = xor i32 %EAX_val.70, 47, !mcsema_real_eip !51
  %51 = and i32 %50, %38, !mcsema_real_eip !51
  %52 = lshr i32 %51, 31, !mcsema_real_eip !51
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !51
  store i1 %53, i1* %OF, !mcsema_real_eip !51
  %54 = icmp eq i1 %46, false, !mcsema_real_eip !52
  br i1 %54, label %block_0x14b, label %block_0x13f, !mcsema_real_eip !52

block_0x17a:                                      ; preds = %21
  %_load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_
  %RSP_val.66 = load i64, i64* %XSP, !mcsema_real_eip !53
  %_allin_new_bt_33 = bitcast i8* %_load_rsp_ptr_32 to i64*
  %_ptr_to_int_134 = ptrtoint i64* %_allin_new_bt_33 to i64
  %_offset_above_rbp_137 = sub i64 %_ptr_to_int_134, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_load_rsp_ptr_32, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_load_rsp_ptr_32, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_load_rsp_ptr_32, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  br i1 %_cond1_n_cond2_cond3_145, label %55, label %56

; <label>:55:                                     ; preds = %block_0x17a
  %_address_in_parent_stack_bt_147 = bitcast i8* %_pot_address_in_parent_stack_138 to i64*
  br label %56

; <label>:56:                                     ; preds = %block_0x17a, %55
  %57 = phi i64* [ %_allin_new_bt_33, %block_0x17a ], [ %_address_in_parent_stack_bt_147, %55 ]
  %_new_load_148 = load i64, i64* %57
  %_new_int2ptr_ = inttoptr i64 %_new_load_148 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_148, i64* %XBP, !mcsema_real_eip !53
  %_new_gep_34 = getelementptr i8, i8* %_load_rsp_ptr_32, i64 8
  %58 = add i64 %RSP_val.66, 8, !mcsema_real_eip !53
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_
  store i64 %58, i64* %XSP, !mcsema_real_eip !53
  %_new_gep_36 = getelementptr i8, i8* %_new_gep_34, i64 8
  %59 = add i64 %58, 8, !mcsema_real_eip !54
  %_allin_new_bt_37 = bitcast i8* %_new_gep_34 to i64*
  %_ptr_to_int_149 = ptrtoint i64* %_allin_new_bt_37 to i64
  %_offset_above_rbp_152 = sub i64 %_ptr_to_int_149, %_local_end_to_int_
  %_pot_address_in_parent_stack_153 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_152
  %_cond1_154 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_155 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_156 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_157 = or i1 %_cond2_1_155, %_cond2_2_156
  %_cond4_158 = icmp ule i8* %_pot_address_in_parent_stack_153, %_parent_stack_end_ptr_
  %_cond1_n_cond2_159 = and i1 %_cond1_154, %_cond2_157
  %_cond1_n_cond2_cond3_160 = and i1 %_cond1_n_cond2_159, %_cond4_158
  br i1 %_cond1_n_cond2_cond3_160, label %60, label %61

; <label>:60:                                     ; preds = %56
  %_address_in_parent_stack_bt_162 = bitcast i8* %_pot_address_in_parent_stack_153 to i64*
  br label %61

; <label>:61:                                     ; preds = %56, %60
  %62 = phi i64* [ %_allin_new_bt_37, %56 ], [ %_address_in_parent_stack_bt_162, %60 ]
  %_new_load_163 = load i64, i64* %62
  store i64 %_new_load_163, i64* %XIP, !mcsema_real_eip !54
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_
  store i64 %59, i64* %XSP, !mcsema_real_eip !54
  ret void, !mcsema_real_eip !54

block_0x13f:                                      ; preds = %33
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_164 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_167 = sub i64 %_ptr_to_int_164, %_local_end_to_int_
  %_pot_address_in_parent_stack_168 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_167
  %_cond1_169 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_170 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_171 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_172 = or i1 %_cond2_1_170, %_cond2_2_171
  %_cond4_173 = icmp ule i8* %_pot_address_in_parent_stack_168, %_parent_stack_end_ptr_
  %_cond1_n_cond2_174 = and i1 %_cond1_169, %_cond2_172
  %_cond1_n_cond2_cond3_175 = and i1 %_cond1_n_cond2_174, %_cond4_173
  br i1 %_cond1_n_cond2_cond3_175, label %63, label %64

; <label>:63:                                     ; preds = %block_0x13f
  %_address_in_parent_stack_bt_177 = bitcast i8* %_pot_address_in_parent_stack_168 to i64*
  br label %64

; <label>:64:                                     ; preds = %block_0x13f, %63
  %65 = phi i64* [ %_allin_new_bt_40, %block_0x13f ], [ %_address_in_parent_stack_bt_177, %63 ]
  %_new_load_178 = load i64, i64* %65
  store i64 %_new_load_178, i64* %XAX, !mcsema_real_eip !55
  %66 = inttoptr i64 %_new_load_178 to i64*, !mcsema_real_eip !56
  %67 = inttoptr i64 %_new_load_178 to i8*, !mcsema_real_eip !56
  store i8 92, i8* %67, !mcsema_real_eip !56
  br label %block_0x154, !mcsema_real_eip !57

block_0x14b:                                      ; preds = %33
  br i1 %_cond1_n_cond2_cond3_118, label %68, label %69

; <label>:68:                                     ; preds = %block_0x14b
  br label %69

; <label>:69:                                     ; preds = %block_0x14b, %68
  %70 = phi i8* [ %19, %block_0x14b ], [ %_pot_address_in_parent_stack_111, %68 ]
  %_new_load_191 = load i8, i8* %70
  store i8 %_new_load_191, i8* %AL.59, !mcsema_real_eip !58
  %_new_gep_45 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %_ptr_to_int_192 = ptrtoint i64* %_allin_new_bt_46 to i64
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_new_gep_45, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_new_gep_45, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_new_gep_45, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  br i1 %_cond1_n_cond2_cond3_203, label %71, label %72

; <label>:71:                                     ; preds = %69
  %_address_in_parent_stack_bt_205 = bitcast i8* %_pot_address_in_parent_stack_196 to i64*
  br label %72

; <label>:72:                                     ; preds = %69, %71
  %73 = phi i64* [ %_allin_new_bt_46, %69 ], [ %_address_in_parent_stack_bt_205, %71 ]
  %_new_load_206 = load i64, i64* %73
  store i64 %_new_load_206, i64* %XCX, !mcsema_real_eip !59
  %74 = inttoptr i64 %_new_load_206 to i64*, !mcsema_real_eip !60
  %75 = inttoptr i64 %_new_load_206 to i8*, !mcsema_real_eip !60
  store i8 %_new_load_191, i8* %75, !mcsema_real_eip !60
  br label %block_0x154, !mcsema_real_eip !55

block_0x154:                                      ; preds = %72, %64
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -24
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %_ptr_to_int_207 = ptrtoint i64* %_allin_new_bt_49 to i64
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_207, %_local_end_to_int_
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_48, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_48, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_48, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  br i1 %_cond1_n_cond2_cond3_218, label %76, label %77

; <label>:76:                                     ; preds = %block_0x154
  %_address_in_parent_stack_bt_220 = bitcast i8* %_pot_address_in_parent_stack_211 to i64*
  br label %77

; <label>:77:                                     ; preds = %block_0x154, %76
  %78 = phi i64* [ %_allin_new_bt_49, %block_0x154 ], [ %_address_in_parent_stack_bt_220, %76 ]
  %_new_load_221 = load i64, i64* %78
  store i64 %_new_load_221, i64* %XAX, !mcsema_real_eip !61
  %79 = add i64 1, %_new_load_221, !mcsema_real_eip !62
  %80 = xor i64 %79, %_new_load_221, !mcsema_real_eip !62
  %81 = xor i64 %80, 1, !mcsema_real_eip !62
  %82 = and i64 %81, 16, !mcsema_real_eip !62
  %83 = icmp ne i64 %82, 0, !mcsema_real_eip !62
  store i1 %83, i1* %AF, !mcsema_real_eip !62
  %84 = lshr i64 %79, 63, !mcsema_real_eip !62
  %85 = trunc i64 %84 to i1, !mcsema_real_eip !62
  store i1 %85, i1* %SF, !mcsema_real_eip !62
  %86 = icmp eq i64 %79, 0, !mcsema_real_eip !62
  store i1 %86, i1* %ZF, !mcsema_real_eip !62
  %87 = xor i64 %_new_load_221, 1, !mcsema_real_eip !62
  %88 = xor i64 %87, -1, !mcsema_real_eip !62
  %89 = and i64 %88, %80, !mcsema_real_eip !62
  %90 = lshr i64 %89, 63, !mcsema_real_eip !62
  %91 = and i64 %90, 1, !mcsema_real_eip !62
  %92 = trunc i64 %91 to i1, !mcsema_real_eip !62
  store i1 %92, i1* %OF, !mcsema_real_eip !62
  %93 = trunc i64 %79 to i8, !mcsema_real_eip !62
  %94 = call i8 @llvm.ctpop.i8(i8 %93), !mcsema_real_eip !62
  %95 = trunc i8 %94 to i1, !mcsema_real_eip !62
  %96 = xor i1 %95, true, !mcsema_real_eip !62
  store i1 %96, i1* %PF, !mcsema_real_eip !62
  %97 = icmp ult i64 %79, %_new_load_221, !mcsema_real_eip !62
  store i1 %97, i1* %CF, !mcsema_real_eip !62
  store i64 %79, i64* %XAX, !mcsema_real_eip !62
  store i64 %79, i64* %_allin_new_bt_49, !mcsema_real_eip !63
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -32
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %_ptr_to_int_222 = ptrtoint i64* %_allin_new_bt_55 to i64
  %_offset_above_rbp_225 = sub i64 %_ptr_to_int_222, %_local_end_to_int_
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  br i1 %_cond1_n_cond2_cond3_233, label %98, label %99

; <label>:98:                                     ; preds = %77
  %_address_in_parent_stack_bt_235 = bitcast i8* %_pot_address_in_parent_stack_226 to i64*
  br label %99

; <label>:99:                                     ; preds = %77, %98
  %100 = phi i64* [ %_allin_new_bt_55, %77 ], [ %_address_in_parent_stack_bt_235, %98 ]
  %_new_load_236 = load i64, i64* %100
  store i64 %_new_load_236, i64* %XAX, !mcsema_real_eip !64
  %101 = add i64 1, %_new_load_236, !mcsema_real_eip !65
  %102 = xor i64 %101, %_new_load_236, !mcsema_real_eip !65
  %103 = xor i64 %102, 1, !mcsema_real_eip !65
  %104 = and i64 %103, 16, !mcsema_real_eip !65
  %105 = icmp ne i64 %104, 0, !mcsema_real_eip !65
  store i1 %105, i1* %AF, !mcsema_real_eip !65
  %106 = lshr i64 %101, 63, !mcsema_real_eip !65
  %107 = trunc i64 %106 to i1, !mcsema_real_eip !65
  store i1 %107, i1* %SF, !mcsema_real_eip !65
  %108 = icmp eq i64 %101, 0, !mcsema_real_eip !65
  store i1 %108, i1* %ZF, !mcsema_real_eip !65
  %109 = xor i64 %_new_load_236, 1, !mcsema_real_eip !65
  %110 = xor i64 %109, -1, !mcsema_real_eip !65
  %111 = and i64 %110, %102, !mcsema_real_eip !65
  %112 = lshr i64 %111, 63, !mcsema_real_eip !65
  %113 = and i64 %112, 1, !mcsema_real_eip !65
  %114 = trunc i64 %113 to i1, !mcsema_real_eip !65
  store i1 %114, i1* %OF, !mcsema_real_eip !65
  %115 = trunc i64 %101 to i8, !mcsema_real_eip !65
  %116 = call i8 @llvm.ctpop.i8(i8 %115), !mcsema_real_eip !65
  %117 = trunc i8 %116 to i1, !mcsema_real_eip !65
  %118 = xor i1 %117, true, !mcsema_real_eip !65
  store i1 %118, i1* %PF, !mcsema_real_eip !65
  %119 = icmp ult i64 %101, %_new_load_236, !mcsema_real_eip !65
  store i1 %119, i1* %CF, !mcsema_real_eip !65
  store i64 %101, i64* %XAX, !mcsema_real_eip !65
  store i64 %101, i64* %_allin_new_bt_55, !mcsema_real_eip !66
  %_load_rbp_ptr_59 = load i8*, i8** %_RBP_ptr_
  %_new_gep_60 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -24
  %_allin_new_bt_61 = bitcast i8* %_new_gep_60 to i64*
  %_ptr_to_int_237 = ptrtoint i64* %_allin_new_bt_61 to i64
  %_offset_above_rbp_240 = sub i64 %_ptr_to_int_237, %_local_end_to_int_
  %_pot_address_in_parent_stack_241 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_240
  %_cond1_242 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_243 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_244 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_245 = or i1 %_cond2_1_243, %_cond2_2_244
  %_cond4_246 = icmp ule i8* %_pot_address_in_parent_stack_241, %_parent_stack_end_ptr_
  %_cond1_n_cond2_247 = and i1 %_cond1_242, %_cond2_245
  %_cond1_n_cond2_cond3_248 = and i1 %_cond1_n_cond2_247, %_cond4_246
  br i1 %_cond1_n_cond2_cond3_248, label %120, label %121

; <label>:120:                                    ; preds = %99
  %_address_in_parent_stack_bt_250 = bitcast i8* %_pot_address_in_parent_stack_241 to i64*
  br label %121

; <label>:121:                                    ; preds = %99, %120
  %122 = phi i64* [ %_allin_new_bt_61, %99 ], [ %_address_in_parent_stack_bt_250, %120 ]
  %_new_load_251 = load i64, i64* %122
  store i64 %_new_load_251, i64* %XAX, !mcsema_real_eip !67
  %123 = inttoptr i64 %_new_load_251 to i64*, !mcsema_real_eip !68
  %124 = inttoptr i64 %_new_load_251 to i8*, !mcsema_real_eip !68
  %_offset_above_rbp_254 = sub i64 %_new_load_251, %_local_end_to_int_
  %_pot_address_in_parent_stack_255 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_254
  %_cond1_256 = icmp ugt i8* %124, %_local_stack_end_ptr_
  %_cond2_1_257 = icmp ugt i8* %124, %_parent_stack_end_ptr_
  %_cond2_2_258 = icmp ult i8* %124, %_parent_stack_start_ptr_
  %_cond2_259 = or i1 %_cond2_1_257, %_cond2_2_258
  %_cond4_260 = icmp ule i8* %_pot_address_in_parent_stack_255, %_parent_stack_end_ptr_
  %_cond1_n_cond2_261 = and i1 %_cond1_256, %_cond2_259
  %_cond1_n_cond2_cond3_262 = and i1 %_cond1_n_cond2_261, %_cond4_260
  br i1 %_cond1_n_cond2_cond3_262, label %125, label %126

; <label>:125:                                    ; preds = %121
  br label %126

; <label>:126:                                    ; preds = %121, %125
  %127 = phi i8* [ %124, %121 ], [ %_pot_address_in_parent_stack_255, %125 ]
  %_new_load_264 = load i8, i8* %127
  %CL.89 = bitcast i64* %XCX to i8*, !mcsema_real_eip !68
  store i8 %_new_load_264, i8* %CL.89, !mcsema_real_eip !68
  %_new_gep_63 = getelementptr i8, i8* %_load_rbp_ptr_59, i64 -33
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %128 = ptrtoint i64* %_allin_new_bt_64 to i64, !mcsema_real_eip !69
  %129 = inttoptr i64 %128 to i8*, !mcsema_real_eip !69
  store i8 %_new_load_264, i8* %129, !mcsema_real_eip !69
  br label %block_0x125, !mcsema_real_eip !70
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @checkFn.3(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !71
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !71
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !71
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !71
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !71
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !71
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !71
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !71
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !71
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !71
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !71
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !71
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !71
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !71
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !71
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !71
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !71
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !71
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !71
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !71
  br label %block_0x90, !mcsema_real_eip !71

block_0x90:                                       ; preds = %entry
  %RSP_val.94 = load i64, i64* %XSP, !mcsema_real_eip !71
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.94, 8, !mcsema_real_eip !71
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !71
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !72
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.96 = load i64, i64* %XSP, !mcsema_real_eip !73
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.96, 32, !mcsema_real_eip !73
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !73
  %4 = and i64 %3, 16, !mcsema_real_eip !73
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !73
  store i1 %5, i1* %AF, !mcsema_real_eip !73
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !73
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !73
  %8 = xor i1 %7, true, !mcsema_real_eip !73
  store i1 %8, i1* %PF, !mcsema_real_eip !73
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !73
  %9 = lshr i64 %2, 63, !mcsema_real_eip !73
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !73
  store i1 %10, i1* %SF, !mcsema_real_eip !73
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !73
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !73
  %12 = lshr i64 %11, 63, !mcsema_real_eip !73
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !73
  store i1 %13, i1* %OF, !mcsema_real_eip !73
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !73
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.98 = load i64, i64* %XDI, !mcsema_real_eip !74
  store i64 %RDI_val.98, i64* %_allin_new_bt_15, !mcsema_real_eip !74
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !75
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !75
  store i32 1, i32* %15, !mcsema_real_eip !75
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_21 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %16, label %17

; <label>:16:                                     ; preds = %block_0x90
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %17

; <label>:17:                                     ; preds = %block_0x90, %16
  %18 = phi i64* [ %_allin_new_bt_21, %block_0x90 ], [ %_address_in_parent_stack_bt_, %16 ]
  %_new_load_ = load i64, i64* %18
  store i64 %_new_load_, i64* %XDI, !mcsema_real_eip !76
  %_load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_
  %RSP_val.102 = load i64, i64* %XSP, !mcsema_real_eip !77
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_22, i64 -8
  %19 = sub i64 %RSP_val.102, 8, !mcsema_real_eip !77
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, !mcsema_real_eip !77
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %19, i64* %XSP, !mcsema_real_eip !77
  %20 = call x86_64_sysvcc i64 @_strlen(i64 %_new_load_)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %20, i64* %XAX, !mcsema_real_eip !77
  %EAX.103 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.104 = load i32, i32* %EAX.103, !mcsema_real_eip !78
  %21 = zext i32 %EAX_val.104 to i64, !mcsema_real_eip !78
  store i64 %21, i64* %XCX, !mcsema_real_eip !78
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %ECX.106 = bitcast i64* %XCX to i32*, !mcsema_real_eip !79
  %ECX_val.107 = load i32, i32* %ECX.106, !mcsema_real_eip !79
  %22 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !79
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !79
  store i32 %ECX_val.107, i32* %23, !mcsema_real_eip !79
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !80
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !80
  %_ptr_bt_82 = bitcast i32* %25 to i8*
  %_offset_above_rbp_83 = sub i64 %24, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_ptr_bt_82, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_ptr_bt_82, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_ptr_bt_82, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  br i1 %_cond1_n_cond2_cond3_91, label %26, label %27

; <label>:26:                                     ; preds = %17
  %_address_in_parent_stack_bt_93 = bitcast i8* %_pot_address_in_parent_stack_84 to i32*
  br label %27

; <label>:27:                                     ; preds = %17, %26
  %28 = phi i32* [ %25, %17 ], [ %_address_in_parent_stack_bt_93, %26 ]
  %_new_load_94 = load i32, i32* %28
  %29 = sub i32 %_new_load_94, 1, !mcsema_real_eip !80
  %30 = xor i32 %29, %_new_load_94, !mcsema_real_eip !80
  %31 = xor i32 %30, 1, !mcsema_real_eip !80
  %32 = and i32 %31, 16, !mcsema_real_eip !80
  %33 = icmp ne i32 %32, 0, !mcsema_real_eip !80
  store i1 %33, i1* %AF, !mcsema_real_eip !80
  %34 = trunc i32 %29 to i8, !mcsema_real_eip !80
  %35 = call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !80
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !80
  %37 = xor i1 %36, true, !mcsema_real_eip !80
  store i1 %37, i1* %PF, !mcsema_real_eip !80
  %38 = icmp eq i32 %29, 0, !mcsema_real_eip !80
  store i1 %38, i1* %ZF, !mcsema_real_eip !80
  %39 = lshr i32 %29, 31, !mcsema_real_eip !80
  %40 = trunc i32 %39 to i1, !mcsema_real_eip !80
  store i1 %40, i1* %SF, !mcsema_real_eip !80
  %41 = icmp ult i32 %_new_load_94, 1, !mcsema_real_eip !80
  store i1 %41, i1* %CF, !mcsema_real_eip !80
  %42 = xor i32 %_new_load_94, 1, !mcsema_real_eip !80
  %43 = and i32 %42, %30, !mcsema_real_eip !80
  %44 = lshr i32 %43, 31, !mcsema_real_eip !80
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !80
  store i1 %45, i1* %OF, !mcsema_real_eip !80
  %46 = icmp eq i1 %40, %45, !mcsema_real_eip !81
  %47 = icmp eq i1 %46, false, !mcsema_real_eip !81
  %48 = or i1 %38, %47, !mcsema_real_eip !81
  br i1 %48, label %block_0xf3, label %block_0xbb, !mcsema_real_eip !81

block_0xbb:                                       ; preds = %27
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %_ptr_to_int_95 = ptrtoint i64* %_allin_new_bt_33 to i64
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_95, %_local_end_to_int_
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i8* %_new_gep_32, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_32, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_32, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  br i1 %_cond1_n_cond2_cond3_106, label %49, label %50

; <label>:49:                                     ; preds = %block_0xbb
  %_address_in_parent_stack_bt_108 = bitcast i8* %_pot_address_in_parent_stack_99 to i64*
  br label %50

; <label>:50:                                     ; preds = %block_0xbb, %49
  %51 = phi i64* [ %_allin_new_bt_33, %block_0xbb ], [ %_address_in_parent_stack_bt_108, %49 ]
  %_new_load_109 = load i64, i64* %51
  store i64 %_new_load_109, i64* %XAX, !mcsema_real_eip !82
  %52 = inttoptr i64 %_new_load_109 to i64*, !mcsema_real_eip !83
  %53 = inttoptr i64 %_new_load_109 to i8*, !mcsema_real_eip !83
  %_offset_above_rbp_112 = sub i64 %_new_load_109, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %53, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %53, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %53, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  br i1 %_cond1_n_cond2_cond3_120, label %54, label %55

; <label>:54:                                     ; preds = %50
  br label %55

; <label>:55:                                     ; preds = %50, %54
  %56 = phi i8* [ %53, %50 ], [ %_pot_address_in_parent_stack_113, %54 ]
  %_new_load_122 = load i8, i8* %56
  %CL.115 = bitcast i64* %XCX to i8*, !mcsema_real_eip !83
  store i8 %_new_load_122, i8* %CL.115, !mcsema_real_eip !83
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -17
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %57 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !84
  %58 = inttoptr i64 %57 to i8*, !mcsema_real_eip !84
  store i8 %_new_load_122, i8* %58, !mcsema_real_eip !84
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_123 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_126 = sub i64 %_ptr_to_int_123, %_local_end_to_int_
  %_pot_address_in_parent_stack_127 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_126
  %_cond1_128 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_129 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_130 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_131 = or i1 %_cond2_1_129, %_cond2_2_130
  %_cond4_132 = icmp ule i8* %_pot_address_in_parent_stack_127, %_parent_stack_end_ptr_
  %_cond1_n_cond2_133 = and i1 %_cond1_128, %_cond2_131
  %_cond1_n_cond2_cond3_134 = and i1 %_cond1_n_cond2_133, %_cond4_132
  br i1 %_cond1_n_cond2_cond3_134, label %59, label %60

; <label>:59:                                     ; preds = %55
  %_address_in_parent_stack_bt_136 = bitcast i8* %_pot_address_in_parent_stack_127 to i64*
  br label %60

; <label>:60:                                     ; preds = %55, %59
  %61 = phi i64* [ %_allin_new_bt_39, %55 ], [ %_address_in_parent_stack_bt_136, %59 ]
  %_new_load_137 = load i64, i64* %61
  store i64 %_new_load_137, i64* %XAX, !mcsema_real_eip !85
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -16
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %62 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !86
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !86
  %_ptr_bt_140 = bitcast i32* %63 to i8*
  %_offset_above_rbp_141 = sub i64 %62, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_ptr_bt_140, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_ptr_bt_140, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_ptr_bt_140, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  br i1 %_cond1_n_cond2_cond3_149, label %64, label %65

; <label>:64:                                     ; preds = %60
  %_address_in_parent_stack_bt_151 = bitcast i8* %_pot_address_in_parent_stack_142 to i32*
  br label %65

; <label>:65:                                     ; preds = %60, %64
  %66 = phi i32* [ %63, %60 ], [ %_address_in_parent_stack_bt_151, %64 ]
  %_new_load_152 = load i32, i32* %66
  %67 = zext i32 %_new_load_152 to i64, !mcsema_real_eip !86
  store i64 %67, i64* %XDX, !mcsema_real_eip !86
  %EDX.121 = bitcast i64* %XDX to i32*, !mcsema_real_eip !87
  %EDX_val.122 = load i32, i32* %EDX.121, !mcsema_real_eip !87
  %68 = sub i32 %EDX_val.122, 1, !mcsema_real_eip !87
  %69 = xor i32 %68, %EDX_val.122, !mcsema_real_eip !87
  %70 = xor i32 %69, 1, !mcsema_real_eip !87
  %71 = and i32 %70, 16, !mcsema_real_eip !87
  %72 = icmp ne i32 %71, 0, !mcsema_real_eip !87
  store i1 %72, i1* %AF, !mcsema_real_eip !87
  %73 = trunc i32 %68 to i8, !mcsema_real_eip !87
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !87
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !87
  %76 = xor i1 %75, true, !mcsema_real_eip !87
  store i1 %76, i1* %PF, !mcsema_real_eip !87
  %77 = icmp eq i32 %68, 0, !mcsema_real_eip !87
  store i1 %77, i1* %ZF, !mcsema_real_eip !87
  %78 = lshr i32 %68, 31, !mcsema_real_eip !87
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !87
  store i1 %79, i1* %SF, !mcsema_real_eip !87
  %80 = icmp ult i32 %EDX_val.122, 1, !mcsema_real_eip !87
  store i1 %80, i1* %CF, !mcsema_real_eip !87
  %81 = xor i32 %EDX_val.122, 1, !mcsema_real_eip !87
  %82 = and i32 %81, %69, !mcsema_real_eip !87
  %83 = lshr i32 %82, 31, !mcsema_real_eip !87
  %84 = trunc i32 %83 to i1, !mcsema_real_eip !87
  store i1 %84, i1* %OF, !mcsema_real_eip !87
  %85 = zext i32 %68 to i64, !mcsema_real_eip !87
  store i64 %85, i64* %XDX, !mcsema_real_eip !87
  %EDX_val.124 = load i32, i32* %EDX.121, !mcsema_real_eip !88
  %86 = sext i32 %EDX_val.124 to i64, !mcsema_real_eip !88
  store i64 %86, i64* %XSI, !mcsema_real_eip !88
  %87 = add i64 %_new_load_137, %86, !mcsema_real_eip !89
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !89
  %89 = inttoptr i64 %87 to i8*, !mcsema_real_eip !89
  %_offset_above_rbp_155 = sub i64 %87, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %89, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %89, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %89, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  br i1 %_cond1_n_cond2_cond3_163, label %90, label %91

; <label>:90:                                     ; preds = %65
  br label %91

; <label>:91:                                     ; preds = %65, %90
  %92 = phi i8* [ %89, %65 ], [ %_pot_address_in_parent_stack_156, %90 ]
  %_new_load_165 = load i8, i8* %92
  store i8 %_new_load_165, i8* %CL.115, !mcsema_real_eip !89
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -18
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %93 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !90
  %94 = inttoptr i64 %93 to i8*, !mcsema_real_eip !90
  store i8 %_new_load_165, i8* %94, !mcsema_real_eip !90
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -17
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %95 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !91
  %96 = inttoptr i64 %95 to i8*, !mcsema_real_eip !91
  %_offset_above_rbp_168 = sub i64 %95, %_local_end_to_int_
  %_pot_address_in_parent_stack_169 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_168
  %_cond1_170 = icmp ugt i8* %96, %_local_stack_end_ptr_
  %_cond2_1_171 = icmp ugt i8* %96, %_parent_stack_end_ptr_
  %_cond2_2_172 = icmp ult i8* %96, %_parent_stack_start_ptr_
  %_cond2_173 = or i1 %_cond2_1_171, %_cond2_2_172
  %_cond4_174 = icmp ule i8* %_pot_address_in_parent_stack_169, %_parent_stack_end_ptr_
  %_cond1_n_cond2_175 = and i1 %_cond1_170, %_cond2_173
  %_cond1_n_cond2_cond3_176 = and i1 %_cond1_n_cond2_175, %_cond4_174
  br i1 %_cond1_n_cond2_cond3_176, label %97, label %98

; <label>:97:                                     ; preds = %91
  br label %98

; <label>:98:                                     ; preds = %91, %97
  %99 = phi i8* [ %96, %91 ], [ %_pot_address_in_parent_stack_169, %97 ]
  %_new_load_178 = load i8, i8* %99
  %100 = sext i8 %_new_load_178 to i32, !mcsema_real_eip !91
  %101 = zext i32 %100 to i64, !mcsema_real_eip !91
  store i64 %101, i64* %XDX, !mcsema_real_eip !91
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -18
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %102 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !92
  %103 = inttoptr i64 %102 to i8*, !mcsema_real_eip !92
  %_offset_above_rbp_181 = sub i64 %102, %_local_end_to_int_
  %_pot_address_in_parent_stack_182 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_181
  %_cond1_183 = icmp ugt i8* %103, %_local_stack_end_ptr_
  %_cond2_1_184 = icmp ugt i8* %103, %_parent_stack_end_ptr_
  %_cond2_2_185 = icmp ult i8* %103, %_parent_stack_start_ptr_
  %_cond2_186 = or i1 %_cond2_1_184, %_cond2_2_185
  %_cond4_187 = icmp ule i8* %_pot_address_in_parent_stack_182, %_parent_stack_end_ptr_
  %_cond1_n_cond2_188 = and i1 %_cond1_183, %_cond2_186
  %_cond1_n_cond2_cond3_189 = and i1 %_cond1_n_cond2_188, %_cond4_187
  br i1 %_cond1_n_cond2_cond3_189, label %104, label %105

; <label>:104:                                    ; preds = %98
  br label %105

; <label>:105:                                    ; preds = %98, %104
  %106 = phi i8* [ %103, %98 ], [ %_pot_address_in_parent_stack_182, %104 ]
  %_new_load_191 = load i8, i8* %106
  %107 = sext i8 %_new_load_191 to i32, !mcsema_real_eip !92
  %108 = zext i32 %107 to i64, !mcsema_real_eip !92
  store i64 %108, i64* %XDI, !mcsema_real_eip !92
  %EDX_val.134 = load i32, i32* %EDX.121, !mcsema_real_eip !93
  %EDI.135 = bitcast i64* %XDI to i32*, !mcsema_real_eip !93
  %EDI_val.136 = load i32, i32* %EDI.135, !mcsema_real_eip !93
  %109 = sub i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  %110 = xor i32 %109, %EDX_val.134, !mcsema_real_eip !93
  %111 = xor i32 %110, %EDI_val.136, !mcsema_real_eip !93
  %112 = and i32 %111, 16, !mcsema_real_eip !93
  %113 = icmp ne i32 %112, 0, !mcsema_real_eip !93
  store i1 %113, i1* %AF, !mcsema_real_eip !93
  %114 = trunc i32 %109 to i8, !mcsema_real_eip !93
  %115 = call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !93
  %116 = trunc i8 %115 to i1, !mcsema_real_eip !93
  %117 = xor i1 %116, true, !mcsema_real_eip !93
  store i1 %117, i1* %PF, !mcsema_real_eip !93
  %118 = icmp eq i32 %109, 0, !mcsema_real_eip !93
  store i1 %118, i1* %ZF, !mcsema_real_eip !93
  %119 = lshr i32 %109, 31, !mcsema_real_eip !93
  %120 = trunc i32 %119 to i1, !mcsema_real_eip !93
  store i1 %120, i1* %SF, !mcsema_real_eip !93
  %121 = icmp ult i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  store i1 %121, i1* %CF, !mcsema_real_eip !93
  %122 = xor i32 %EDX_val.134, %EDI_val.136, !mcsema_real_eip !93
  %123 = and i32 %122, %110, !mcsema_real_eip !93
  %124 = lshr i32 %123, 31, !mcsema_real_eip !93
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !93
  store i1 %125, i1* %OF, !mcsema_real_eip !93
  %126 = icmp eq i1 %118, false, !mcsema_real_eip !94
  br i1 %126, label %block_0xee, label %block_0xe7, !mcsema_real_eip !94

block_0xf3:                                       ; preds = %block_0xee, %27
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -12
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %127 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !95
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !95
  %_ptr_bt_194 = bitcast i32* %128 to i8*
  %_offset_above_rbp_195 = sub i64 %127, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_ptr_bt_194, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_ptr_bt_194, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_ptr_bt_194, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  br i1 %_cond1_n_cond2_cond3_203, label %129, label %130

; <label>:129:                                    ; preds = %block_0xf3
  %_address_in_parent_stack_bt_205 = bitcast i8* %_pot_address_in_parent_stack_196 to i32*
  br label %130

; <label>:130:                                    ; preds = %block_0xf3, %129
  %131 = phi i32* [ %128, %block_0xf3 ], [ %_address_in_parent_stack_bt_205, %129 ]
  %_new_load_206 = load i32, i32* %131
  %132 = zext i32 %_new_load_206 to i64, !mcsema_real_eip !95
  store i64 %132, i64* %XAX, !mcsema_real_eip !95
  %_load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_
  %RSP_val.110 = load i64, i64* %XSP, !mcsema_real_eip !96
  %_new_gep_56 = getelementptr i8, i8* %_load_rsp_ptr_55, i64 32
  %133 = add i64 32, %RSP_val.110, !mcsema_real_eip !96
  %_trans_p2i_57 = ptrtoint i8* %_new_gep_56 to i64
  %_trans_p2i_58 = ptrtoint i8* %_load_rsp_ptr_55 to i64
  %_trans_xor_59 = xor i64 %_trans_p2i_57, %_trans_p2i_58
  %134 = xor i64 %_trans_xor_59, 32, !mcsema_real_eip !96
  %135 = and i64 %134, 16, !mcsema_real_eip !96
  %136 = icmp ne i64 %135, 0, !mcsema_real_eip !96
  store i1 %136, i1* %AF, !mcsema_real_eip !96
  %137 = lshr i64 %133, 63, !mcsema_real_eip !96
  %138 = trunc i64 %137 to i1, !mcsema_real_eip !96
  store i1 %138, i1* %SF, !mcsema_real_eip !96
  %_trans_icmp_eq_61 = icmp eq i64 %_trans_p2i_57, 0
  store i1 %_trans_icmp_eq_61, i1* %ZF, !mcsema_real_eip !96
  %_trans_xor_63 = xor i64 %_trans_p2i_58, 32
  %139 = xor i64 %_trans_xor_63, -1, !mcsema_real_eip !96
  %140 = and i64 %139, %_trans_xor_59, !mcsema_real_eip !96
  %141 = lshr i64 %140, 63, !mcsema_real_eip !96
  %142 = and i64 %141, 1, !mcsema_real_eip !96
  %143 = trunc i64 %142 to i1, !mcsema_real_eip !96
  store i1 %143, i1* %OF, !mcsema_real_eip !96
  %_trans_trunc_68 = trunc i64 %_trans_p2i_57 to i8
  %144 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_68), !mcsema_real_eip !96
  %145 = trunc i8 %144 to i1, !mcsema_real_eip !96
  %146 = xor i1 %145, true, !mcsema_real_eip !96
  store i1 %146, i1* %PF, !mcsema_real_eip !96
  %_trans_icmp_ne_70 = icmp ne i64 %_trans_p2i_57, %RSP_val.110
  store i1 %_trans_icmp_ne_70, i1* %CF, !mcsema_real_eip !96
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_
  store i64 %133, i64* %XSP, !mcsema_real_eip !96
  %_allin_new_bt_72 = bitcast i8* %_new_gep_56 to i64*
  %_ptr_to_int_207 = ptrtoint i64* %_allin_new_bt_72 to i64
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_207, %_local_end_to_int_
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  br i1 %_cond1_n_cond2_cond3_218, label %147, label %148

; <label>:147:                                    ; preds = %130
  %_address_in_parent_stack_bt_220 = bitcast i8* %_pot_address_in_parent_stack_211 to i64*
  br label %148

; <label>:148:                                    ; preds = %130, %147
  %149 = phi i64* [ %_allin_new_bt_72, %130 ], [ %_address_in_parent_stack_bt_220, %147 ]
  %_new_load_221 = load i64, i64* %149
  %_new_int2ptr_ = inttoptr i64 %_new_load_221 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_221, i64* %XBP, !mcsema_real_eip !97
  %_new_gep_73 = getelementptr i8, i8* %_new_gep_56, i64 8
  %150 = add i64 %133, 8, !mcsema_real_eip !97
  store volatile i8* %_new_gep_73, i8** %_RSP_ptr_
  store i64 %150, i64* %XSP, !mcsema_real_eip !97
  %_new_gep_75 = getelementptr i8, i8* %_new_gep_73, i64 8
  %151 = add i64 %150, 8, !mcsema_real_eip !98
  %_allin_new_bt_76 = bitcast i8* %_new_gep_73 to i64*
  %_ptr_to_int_222 = ptrtoint i64* %_allin_new_bt_76 to i64
  %_offset_above_rbp_225 = sub i64 %_ptr_to_int_222, %_local_end_to_int_
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_new_gep_73, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_new_gep_73, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_new_gep_73, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  br i1 %_cond1_n_cond2_cond3_233, label %152, label %153

; <label>:152:                                    ; preds = %148
  %_address_in_parent_stack_bt_235 = bitcast i8* %_pot_address_in_parent_stack_226 to i64*
  br label %153

; <label>:153:                                    ; preds = %148, %152
  %154 = phi i64* [ %_allin_new_bt_76, %148 ], [ %_address_in_parent_stack_bt_235, %152 ]
  %_new_load_236 = load i64, i64* %154
  store i64 %_new_load_236, i64* %XIP, !mcsema_real_eip !98
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_
  store i64 %151, i64* %XSP, !mcsema_real_eip !98
  ret void, !mcsema_real_eip !98

block_0xe7:                                       ; preds = %105
  %_new_gep_78 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -12
  %_allin_new_bt_79 = bitcast i8* %_new_gep_78 to i64*
  %155 = ptrtoint i64* %_allin_new_bt_79 to i64, !mcsema_real_eip !99
  %156 = inttoptr i64 %155 to i32*, !mcsema_real_eip !99
  store i32 0, i32* %156, !mcsema_real_eip !99
  br label %block_0xee

block_0xee:                                       ; preds = %block_0xe7, %105
  br label %block_0xf3, !mcsema_real_eip !100
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
!7 = !{i64 15}
!8 = !{i64 22}
!9 = !{i64 26}
!10 = !{i64 30}
!11 = !{i64 35}
!12 = !{i64 39}
!13 = !{i64 42}
!14 = !{i64 45}
!15 = !{i64 51}
!16 = !{i64 55}
!17 = !{i64 59}
!18 = !{i64 63}
!19 = !{i64 67}
!20 = !{i64 71}
!21 = !{i64 76}
!22 = !{i64 79}
!23 = !{i64 117}
!24 = !{i64 121}
!25 = !{i64 125}
!26 = !{i64 129}
!27 = !{i64 130}
!28 = !{i64 85}
!29 = !{i64 89}
!30 = !{i64 93}
!31 = !{i64 103}
!32 = !{i64 98}
!33 = !{i64 106}
!34 = !{i64 109}
!35 = !{i64 112}
!36 = !{i64 256}
!37 = !{i64 257}
!38 = !{i64 260}
!39 = !{i64 264}
!40 = !{i64 268}
!41 = !{i64 272}
!42 = !{i64 276}
!43 = !{i64 280}
!44 = !{i64 284}
!45 = !{i64 288}
!46 = !{i64 290}
!47 = !{i64 293}
!48 = !{i64 297}
!49 = !{i64 300}
!50 = !{i64 306}
!51 = !{i64 310}
!52 = !{i64 313}
!53 = !{i64 378}
!54 = !{i64 379}
!55 = !{i64 319}
!56 = !{i64 323}
!57 = !{i64 326}
!58 = !{i64 331}
!59 = !{i64 334}
!60 = !{i64 338}
!61 = !{i64 340}
!62 = !{i64 344}
!63 = !{i64 348}
!64 = !{i64 352}
!65 = !{i64 356}
!66 = !{i64 360}
!67 = !{i64 364}
!68 = !{i64 368}
!69 = !{i64 370}
!70 = !{i64 373}
!71 = !{i64 144}
!72 = !{i64 145}
!73 = !{i64 148}
!74 = !{i64 152}
!75 = !{i64 156}
!76 = !{i64 163}
!77 = !{i64 167}
!78 = !{i64 172}
!79 = !{i64 174}
!80 = !{i64 177}
!81 = !{i64 181}
!82 = !{i64 187}
!83 = !{i64 191}
!84 = !{i64 193}
!85 = !{i64 196}
!86 = !{i64 200}
!87 = !{i64 203}
!88 = !{i64 206}
!89 = !{i64 209}
!90 = !{i64 212}
!91 = !{i64 215}
!92 = !{i64 219}
!93 = !{i64 223}
!94 = !{i64 225}
!95 = !{i64 243}
!96 = !{i64 246}
!97 = !{i64 250}
!98 = !{i64 251}
!99 = !{i64 231}
!100 = !{i64 238}
