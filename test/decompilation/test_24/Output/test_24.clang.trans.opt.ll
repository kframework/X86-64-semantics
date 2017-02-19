; ModuleID = 'Output/test_24.clang.trans.opt.bc'
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

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_10 = alloca [96 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_10, i64 0, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_10, i64 0, i64 88
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_10, i64 0, i64 8
  %3 = add i64 %RSP_val.1, -88
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %2
  %4 = and i64 %_trans_xor_, 16
  %5 = icmp eq i64 %4, 0
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 80 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %10 = and i64 %_trans_xor_, %2, !mcsema_real_eip !4
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %12 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_14 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_10, i64 0, i64 72
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, align 8
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !5
  %_new_gep_20 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_10, i64 0, i64 0
  %13 = add i64 %RSP_val.1, -96
  %_allin_new_bt_21 = bitcast [96 x i8]* %_local_stack_start_ptr_10 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !6
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %13, i64* %XSP, align 8, !mcsema_real_eip !6
  %14 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.5)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %14, i64* %XAX, align 8, !mcsema_real_eip !6
  %EAX.9 = bitcast i64* %XAX to i32*, !mcsema_real_eip !7
  %15 = trunc i64 %14 to i32
  %16 = and i64 %14, 4294967295
  store i64 %16, i64* %XCX, align 8, !mcsema_real_eip !7
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2214 = load i8*, i8** %12, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2214, i64 -32
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !8
  %17 = bitcast i8* %_new_gep_23 to i32*
  store i32 %15, i32* %17, align 4, !mcsema_real_eip !8
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2515 = load i8*, i8** %12, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2515, i64 -32
  %18 = bitcast i8* %_new_gep_26 to i32*
  %19 = load i32, i32* %18, align 4, !mcsema_real_eip !9
  %20 = add i32 %19, -37
  %21 = xor i32 %20, %19, !mcsema_real_eip !9
  %22 = and i32 %21, 16, !mcsema_real_eip !9
  %23 = icmp ne i32 %22, 0, !mcsema_real_eip !9
  store i1 %23, i1* %AF, align 1, !mcsema_real_eip !9
  %24 = trunc i32 %20 to i8, !mcsema_real_eip !9
  %25 = call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !9
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !9
  %28 = icmp eq i32 %20, 0, !mcsema_real_eip !9
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !9
  %29 = icmp slt i32 %20, 0
  store i1 %29, i1* %SF, align 1, !mcsema_real_eip !9
  %30 = icmp ult i32 %19, 37, !mcsema_real_eip !9
  store i1 %30, i1* %CF, align 1, !mcsema_real_eip !9
  %31 = and i32 %21, %19, !mcsema_real_eip !9
  %32 = icmp slt i32 %31, 0
  store i1 %32, i1* %OF, align 1, !mcsema_real_eip !9
  br i1 %28, label %block_0x2f, label %block_0x24, !mcsema_real_eip !10

block_0x24:                                       ; preds = %entry
  %33 = load i32, i32* %18, align 4, !mcsema_real_eip !11
  %34 = zext i32 %33 to i64, !mcsema_real_eip !11
  store i64 %34, i64* %XAX, align 8, !mcsema_real_eip !11
  br label %block_0x417, !mcsema_real_eip !12

block_0x2f:                                       ; preds = %entry
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2515, i64 -16
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %35 = load i64, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !13
  %36 = add i64 %35, 4, !mcsema_real_eip !14
  %37 = xor i64 %36, %35, !mcsema_real_eip !14
  %38 = and i64 %37, 16, !mcsema_real_eip !14
  %39 = icmp ne i64 %38, 0, !mcsema_real_eip !14
  store i1 %39, i1* %AF, align 1, !mcsema_real_eip !14
  %40 = icmp slt i64 %36, 0
  store i1 %40, i1* %SF, align 1, !mcsema_real_eip !14
  %41 = icmp eq i64 %36, 0, !mcsema_real_eip !14
  store i1 %41, i1* %ZF, align 1, !mcsema_real_eip !14
  %42 = xor i64 %35, -9223372036854775808, !mcsema_real_eip !14
  %43 = and i64 %37, %42, !mcsema_real_eip !14
  %44 = icmp slt i64 %43, 0
  store i1 %44, i1* %OF, align 1, !mcsema_real_eip !14
  %45 = trunc i64 %36 to i8, !mcsema_real_eip !14
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !14
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  store i1 %48, i1* %PF, align 1, !mcsema_real_eip !14
  %49 = icmp ugt i64 %35, -5
  store i1 %49, i1* %CF, align 1, !mcsema_real_eip !14
  store i64 %36, i64* %XAX, align 8, !mcsema_real_eip !14
  store i64 %36, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4017 = load i8*, i8** %12, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4017, i64 -16
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %50 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !16
  store i64 %50, i64* %XAX, align 8, !mcsema_real_eip !16
  %51 = inttoptr i64 %50 to i8*, !mcsema_real_eip !17
  %52 = load i8, i8* %51, align 1, !mcsema_real_eip !17
  %53 = sext i8 %52 to i64
  %54 = and i64 %53, 4294967295
  store i64 %54, i64* %XCX, align 8, !mcsema_real_eip !17
  %55 = sext i8 %52 to i32
  %56 = add nsw i32 %55, -100
  %57 = xor i32 %56, %55, !mcsema_real_eip !18
  %58 = and i32 %57, 16, !mcsema_real_eip !18
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !18
  store i1 %59, i1* %AF, align 1, !mcsema_real_eip !18
  %60 = trunc i32 %56 to i8, !mcsema_real_eip !18
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !18
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  store i1 %63, i1* %PF, align 1, !mcsema_real_eip !18
  %64 = icmp eq i32 %56, 0, !mcsema_real_eip !18
  store i1 %64, i1* %ZF, align 1, !mcsema_real_eip !18
  %65 = icmp slt i8 %52, 100
  store i1 %65, i1* %SF, align 1, !mcsema_real_eip !18
  %66 = icmp ult i8 %52, 100
  store i1 %66, i1* %CF, align 1, !mcsema_real_eip !18
  %67 = and i32 %57, %55, !mcsema_real_eip !18
  %68 = icmp slt i32 %67, 0
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !18
  br i1 %64, label %block_0x57, label %block_0x417, !mcsema_real_eip !19

block_0x57:                                       ; preds = %block_0x2f
  %69 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !20
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !20
  %70 = add i64 %69, 1, !mcsema_real_eip !21
  %71 = inttoptr i64 %70 to i8*, !mcsema_real_eip !21
  %72 = load i8, i8* %71, align 1, !mcsema_real_eip !21
  %73 = zext i8 %72 to i64
  store i64 %73, i64* %XDI, align 8, !mcsema_real_eip !21
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.31 = load i64, i64* %XSP, align 8, !mcsema_real_eip !22
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 -8
  %74 = add i64 %RSP_val.31, -8
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %74, i64* %XSP, align 8, !mcsema_real_eip !22
  %75 = call x86_64_sysvcc i64 @_to_byte(i64 %73)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_417 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416, i64 8
  store i8* %_gep_fix_417, i8** %_RSP_ptr_, align 8
  store i64 %75, i64* %XAX, align 8, !mcsema_real_eip !22
  %76 = trunc i64 %75 to i32
  %77 = add i32 %76, -9
  %78 = xor i32 %77, %76, !mcsema_real_eip !23
  %79 = and i32 %78, 16, !mcsema_real_eip !23
  %80 = icmp ne i32 %79, 0, !mcsema_real_eip !23
  store i1 %80, i1* %AF, align 1, !mcsema_real_eip !23
  %81 = trunc i32 %77 to i8, !mcsema_real_eip !23
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !23
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !23
  %85 = icmp eq i32 %77, 0, !mcsema_real_eip !23
  store i1 %85, i1* %ZF, align 1, !mcsema_real_eip !23
  %86 = icmp slt i32 %77, 0
  store i1 %86, i1* %SF, align 1, !mcsema_real_eip !23
  %87 = icmp ult i32 %76, 9, !mcsema_real_eip !23
  store i1 %87, i1* %CF, align 1, !mcsema_real_eip !23
  %88 = and i32 %78, %76, !mcsema_real_eip !23
  %89 = icmp slt i32 %88, 0
  store i1 %89, i1* %OF, align 1, !mcsema_real_eip !23
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5518 = load i8*, i8** %12, align 8
  br i1 %85, label %block_0x79, label %block_0x417, !mcsema_real_eip !24

block_0x79:                                       ; preds = %block_0x57
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5518, i64 -16
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %90 = load i64, i64* %_allin_new_bt_57, align 8, !mcsema_real_eip !25
  store i64 %90, i64* %XAX, align 8, !mcsema_real_eip !25
  %91 = add i64 %90, 2, !mcsema_real_eip !26
  %92 = inttoptr i64 %91 to i8*, !mcsema_real_eip !26
  %93 = load i8, i8* %92, align 1, !mcsema_real_eip !26
  %94 = zext i8 %93 to i64
  store i64 %94, i64* %XDI, align 8, !mcsema_real_eip !26
  %RSP_val.38 = load i64, i64* %XSP, align 8, !mcsema_real_eip !27
  %95 = add i64 %RSP_val.38, -8
  %_allin_new_bt_60 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !27
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416, i8** %_RSP_ptr_, align 8
  store i64 %95, i64* %XSP, align 8, !mcsema_real_eip !27
  %96 = call x86_64_sysvcc i64 @_to_byte(i64 %94)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_418 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_419 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_418, i64 8
  store i8* %_gep_fix_419, i8** %_RSP_ptr_, align 8
  store i64 %96, i64* %XAX, align 8, !mcsema_real_eip !27
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6119 = load i8*, i8** %12, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6119, i64 -24
  %97 = trunc i64 %96 to i32
  %98 = bitcast i8* %_new_gep_62 to i32*
  store i32 %97, i32* %98, align 4, !mcsema_real_eip !28
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6420 = load i8*, i8** %12, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6420, i64 -24
  %99 = bitcast i8* %_new_gep_65 to i32*
  %100 = load i32, i32* %99, align 4, !mcsema_real_eip !29
  %101 = shl i32 %100, 1, !mcsema_real_eip !30
  %102 = zext i32 %101 to i64, !mcsema_real_eip !30
  store i64 %102, i64* %XAX, align 8, !mcsema_real_eip !30
  %103 = add i32 %101, -26
  %104 = xor i32 %103, %101, !mcsema_real_eip !31
  %105 = and i32 %104, 16
  %106 = icmp eq i32 %105, 0
  store i1 %106, i1* %AF, align 1, !mcsema_real_eip !31
  %107 = trunc i32 %103 to i8, !mcsema_real_eip !31
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !31
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  store i1 %110, i1* %PF, align 1, !mcsema_real_eip !31
  %111 = icmp eq i32 %103, 0, !mcsema_real_eip !31
  store i1 %111, i1* %ZF, align 1, !mcsema_real_eip !31
  %112 = icmp slt i32 %103, 0
  store i1 %112, i1* %SF, align 1, !mcsema_real_eip !31
  %113 = icmp ult i32 %101, 26, !mcsema_real_eip !31
  store i1 %113, i1* %CF, align 1, !mcsema_real_eip !31
  %114 = and i32 %104, %101, !mcsema_real_eip !31
  %115 = icmp slt i32 %114, 0
  store i1 %115, i1* %OF, align 1, !mcsema_real_eip !31
  br i1 %111, label %block_0xa4, label %block_0x417, !mcsema_real_eip !32

block_0xa4:                                       ; preds = %block_0x79
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6420, i64 -16
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %116 = load i64, i64* %_allin_new_bt_72, align 8, !mcsema_real_eip !33
  store i64 %116, i64* %XAX, align 8, !mcsema_real_eip !33
  %117 = add i64 %116, 3, !mcsema_real_eip !34
  %118 = inttoptr i64 %117 to i8*, !mcsema_real_eip !34
  %119 = load i8, i8* %118, align 1, !mcsema_real_eip !34
  %120 = zext i8 %119 to i64
  store i64 %120, i64* %XDI, align 8, !mcsema_real_eip !34
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_73 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.51 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %_new_gep_74 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_73, i64 -8
  %121 = add i64 %RSP_val.51, -8
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_, align 8
  store i64 %121, i64* %XSP, align 8, !mcsema_real_eip !35
  %122 = call x86_64_sysvcc i64 @_to_byte(i64 %120)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_420 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_421 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_420, i64 8
  store i8* %_gep_fix_421, i8** %_RSP_ptr_, align 8
  store i64 %122, i64* %XAX, align 8, !mcsema_real_eip !35
  store i64 2, i64* %XDI, align 8, !mcsema_real_eip !36
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7621 = load i8*, i8** %12, align 8
  %_new_gep_77 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7621, i64 -28
  %123 = trunc i64 %122 to i32
  %124 = bitcast i8* %_new_gep_77 to i32*
  store i32 %123, i32* %124, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7922 = load i8*, i8** %12, align 8
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7922, i64 -28
  %125 = bitcast i8* %_new_gep_80 to i32*
  %126 = load i32, i32* %125, align 4, !mcsema_real_eip !38
  %127 = add i32 %126, 1, !mcsema_real_eip !39
  %EAX_val.59.lobit = ashr i32 %127, 31
  %128 = zext i32 %EAX_val.59.lobit to i64
  %EDI.60 = bitcast i64* %XDI to i32*, !mcsema_real_eip !40
  %EDI_val.61 = load i32, i32* %EDI.60, align 4, !mcsema_real_eip !40
  %129 = shl nuw i64 %128, 32, !mcsema_real_eip !40
  %130 = sext i32 %127 to i64, !mcsema_real_eip !40
  %131 = or i64 %129, %130, !mcsema_real_eip !40
  %132 = sext i32 %EDI_val.61 to i64, !mcsema_real_eip !40
  %133 = sdiv i64 %131, %132, !mcsema_real_eip !40
  %134 = srem i64 %131, %132, !mcsema_real_eip !40
  %135 = and i64 %134, 4294967295
  store i64 %135, i64* %XDX, align 8, !mcsema_real_eip !40
  %136 = and i64 %133, 4294967295
  store i64 %136, i64* %XAX, align 8, !mcsema_real_eip !40
  %137 = trunc i64 %133 to i32
  %138 = add i32 %137, -7
  %139 = xor i32 %138, %137, !mcsema_real_eip !41
  %140 = and i32 %139, 16, !mcsema_real_eip !41
  %141 = icmp ne i32 %140, 0, !mcsema_real_eip !41
  store i1 %141, i1* %AF, align 1, !mcsema_real_eip !41
  %142 = trunc i32 %138 to i8, !mcsema_real_eip !41
  %143 = call i8 @llvm.ctpop.i8(i8 %142), !mcsema_real_eip !41
  %144 = and i8 %143, 1
  %145 = icmp eq i8 %144, 0
  store i1 %145, i1* %PF, align 1, !mcsema_real_eip !41
  %146 = icmp eq i32 %138, 0, !mcsema_real_eip !41
  store i1 %146, i1* %ZF, align 1, !mcsema_real_eip !41
  %147 = icmp slt i32 %138, 0
  store i1 %147, i1* %SF, align 1, !mcsema_real_eip !41
  %148 = icmp ult i32 %137, 7, !mcsema_real_eip !41
  store i1 %148, i1* %CF, align 1, !mcsema_real_eip !41
  %149 = and i32 %139, %137, !mcsema_real_eip !41
  %150 = icmp slt i32 %149, 0
  store i1 %150, i1* %OF, align 1, !mcsema_real_eip !41
  br i1 %146, label %block_0xd7, label %block_0x417, !mcsema_real_eip !42

block_0xd7:                                       ; preds = %block_0xa4
  %_new_gep_86 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7922, i64 -16
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %151 = load i64, i64* %_allin_new_bt_87, align 8, !mcsema_real_eip !43
  store i64 %151, i64* %XAX, align 8, !mcsema_real_eip !43
  %152 = add i64 %151, 4, !mcsema_real_eip !44
  %153 = inttoptr i64 %152 to i8*, !mcsema_real_eip !44
  %154 = load i8, i8* %153, align 1, !mcsema_real_eip !44
  %155 = and i8 %154, 15
  %156 = zext i8 %155 to i32
  %157 = icmp eq i8 %155, 0
  %158 = zext i8 %155 to i64
  store i64 %158, i64* %XCX, align 8, !mcsema_real_eip !45
  %159 = add nsw i32 %156, -1
  %160 = add nuw nsw i8 %155, 31
  %161 = and i8 %160, 16
  %162 = icmp ne i8 %161, 0
  store i1 %162, i1* %AF, align 1, !mcsema_real_eip !46
  %163 = trunc i32 %159 to i8, !mcsema_real_eip !46
  %164 = call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !46
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  store i1 %166, i1* %PF, align 1, !mcsema_real_eip !46
  %167 = icmp eq i32 %159, 0, !mcsema_real_eip !46
  store i1 %167, i1* %ZF, align 1, !mcsema_real_eip !46
  %168 = icmp eq i8 %155, 0
  store i1 %168, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %157, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !46
  br i1 %167, label %block_0xeb, label %block_0x417, !mcsema_real_eip !47

block_0xeb:                                       ; preds = %block_0xd7
  %169 = load i64, i64* %_allin_new_bt_87, align 8, !mcsema_real_eip !48
  store i64 %169, i64* %XAX, align 8, !mcsema_real_eip !48
  %170 = add i64 %169, 4, !mcsema_real_eip !49
  %171 = inttoptr i64 %170 to i8*, !mcsema_real_eip !49
  %172 = load i8, i8* %171, align 1, !mcsema_real_eip !49
  %173 = and i8 %172, -16
  %174 = zext i8 %173 to i32
  %175 = zext i8 %173 to i64
  store i64 %175, i64* %XCX, align 8, !mcsema_real_eip !50
  %176 = add nsw i32 %174, -48
  %177 = xor i32 %176, %174, !mcsema_real_eip !51
  %178 = and i32 %177, 16
  %179 = icmp eq i32 %178, 0
  store i1 %179, i1* %AF, align 1, !mcsema_real_eip !51
  %180 = trunc i32 %176 to i8, !mcsema_real_eip !51
  %181 = call i8 @llvm.ctpop.i8(i8 %180), !mcsema_real_eip !51
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  store i1 %183, i1* %PF, align 1, !mcsema_real_eip !51
  %184 = icmp eq i32 %176, 0, !mcsema_real_eip !51
  store i1 %184, i1* %ZF, align 1, !mcsema_real_eip !51
  %185 = icmp ult i8 %173, 48
  store i1 %185, i1* %SF, align 1, !mcsema_real_eip !51
  %186 = icmp ult i8 %173, 48
  store i1 %186, i1* %CF, align 1, !mcsema_real_eip !51
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !51
  br i1 %184, label %block_0x102, label %block_0x417, !mcsema_real_eip !52

block_0x102:                                      ; preds = %block_0xeb
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7922, i64 -20
  %187 = bitcast i8* %_new_gep_92 to i32*
  store i32 -4, i32* %187, align 4, !mcsema_real_eip !53
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9723 = load i8*, i8** %12, align 8
  %_new_gep_98 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9723, i64 -16
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  %188 = load i64, i64* %_allin_new_bt_99, align 8, !mcsema_real_eip !54
  store i64 %188, i64* %XAX, align 8, !mcsema_real_eip !54
  %189 = add i64 %188, 5, !mcsema_real_eip !55
  %190 = inttoptr i64 %189 to i8*, !mcsema_real_eip !55
  %191 = load i8, i8* %190, align 1, !mcsema_real_eip !55
  %192 = and i8 %191, 15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !56
  %193 = icmp eq i8 %192, 0
  store i1 %193, i1* %ZF, align 1, !mcsema_real_eip !56
  %194 = call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !56
  %195 = and i8 %194, 1
  %196 = icmp eq i8 %195, 0
  store i1 %196, i1* %PF, align 1, !mcsema_real_eip !56
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !56
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !56
  %197 = zext i8 %192 to i64
  store i64 %197, i64* %XCX, align 8, !mcsema_real_eip !56
  %CL.87 = bitcast i64* %XCX to i8*, !mcsema_real_eip !57
  %DL.89 = bitcast i64* %XDX to i8*, !mcsema_real_eip !57
  store i8 %192, i8* %DL.89, align 1, !mcsema_real_eip !57
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9723, i64 -33
  store i8 %192, i8* %_new_gep_101, align 1, !mcsema_real_eip !58
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10324 = load i8*, i8** %12, align 8
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10324, i64 -16
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %198 = load i64, i64* %_allin_new_bt_105, align 8, !mcsema_real_eip !59
  store i64 %198, i64* %XAX, align 8, !mcsema_real_eip !59
  %199 = add i64 %198, 5, !mcsema_real_eip !60
  %200 = inttoptr i64 %199 to i8*, !mcsema_real_eip !60
  %201 = load i8, i8* %200, align 1, !mcsema_real_eip !60
  %202 = and i8 %201, -16
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !61
  %203 = icmp eq i8 %202, 0
  store i1 %203, i1* %ZF, align 1, !mcsema_real_eip !61
  %204 = call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !61
  %205 = and i8 %204, 1
  %206 = icmp eq i8 %205, 0
  store i1 %206, i1* %PF, align 1, !mcsema_real_eip !61
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !61
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !61
  %207 = zext i8 %202 to i64
  store i64 %207, i64* %XCX, align 8, !mcsema_real_eip !61
  store i8 %202, i8* %DL.89, align 1, !mcsema_real_eip !62
  %_new_gep_107 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10324, i64 -34
  store i8 %202, i8* %_new_gep_107, align 1, !mcsema_real_eip !63
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10925 = load i8*, i8** %12, align 8
  %_new_gep_110 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10925, i64 -33
  %208 = load i8, i8* %_new_gep_110, align 1, !mcsema_real_eip !64
  %209 = zext i8 %208 to i64
  store i64 %209, i64* %XCX, align 8, !mcsema_real_eip !64
  %210 = zext i8 %208 to i32
  %211 = add nsw i32 %210, -3
  %212 = xor i32 %211, %210, !mcsema_real_eip !65
  %213 = and i32 %212, 16, !mcsema_real_eip !65
  %214 = icmp ne i32 %213, 0, !mcsema_real_eip !65
  store i1 %214, i1* %AF, align 1, !mcsema_real_eip !65
  %215 = trunc i32 %211 to i8, !mcsema_real_eip !65
  %216 = call i8 @llvm.ctpop.i8(i8 %215), !mcsema_real_eip !65
  %217 = and i8 %216, 1
  %218 = icmp eq i8 %217, 0
  store i1 %218, i1* %PF, align 1, !mcsema_real_eip !65
  %219 = icmp eq i32 %211, 0, !mcsema_real_eip !65
  store i1 %219, i1* %ZF, align 1, !mcsema_real_eip !65
  %220 = icmp ult i8 %208, 3
  store i1 %220, i1* %SF, align 1, !mcsema_real_eip !65
  %221 = icmp ult i8 %208, 3
  store i1 %221, i1* %CF, align 1, !mcsema_real_eip !65
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !65
  br i1 %219, label %block_0x14a, label %block_0x165, !mcsema_real_eip !66

block_0x14a:                                      ; preds = %block_0x102
  %_new_gep_113 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10925, i64 -34
  %222 = load i8, i8* %_new_gep_113, align 1, !mcsema_real_eip !67
  %223 = zext i8 %222 to i64
  store i64 %223, i64* %XAX, align 8, !mcsema_real_eip !67
  %224 = zext i8 %222 to i32
  %225 = add nsw i32 %224, -96
  %226 = xor i32 %225, %224, !mcsema_real_eip !68
  %227 = and i32 %226, 16, !mcsema_real_eip !68
  %228 = icmp ne i32 %227, 0, !mcsema_real_eip !68
  store i1 %228, i1* %AF, align 1, !mcsema_real_eip !68
  %229 = trunc i32 %225 to i8, !mcsema_real_eip !68
  %230 = call i8 @llvm.ctpop.i8(i8 %229), !mcsema_real_eip !68
  %231 = and i8 %230, 1
  %232 = icmp eq i8 %231, 0
  store i1 %232, i1* %PF, align 1, !mcsema_real_eip !68
  %233 = icmp eq i32 %225, 0, !mcsema_real_eip !68
  store i1 %233, i1* %ZF, align 1, !mcsema_real_eip !68
  %234 = icmp ult i8 %222, 96
  store i1 %234, i1* %SF, align 1, !mcsema_real_eip !68
  %235 = icmp ult i8 %222, 96
  store i1 %235, i1* %CF, align 1, !mcsema_real_eip !68
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !68
  br i1 %233, label %block_0x157, label %block_0x165, !mcsema_real_eip !69

block_0x157:                                      ; preds = %block_0x14a
  %_new_gep_116 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10925, i64 -20
  %236 = bitcast i8* %_new_gep_116 to i32*
  %237 = load i32, i32* %236, align 4, !mcsema_real_eip !70
  %238 = zext i32 %237 to i64, !mcsema_real_eip !70
  store i64 %238, i64* %XAX, align 8, !mcsema_real_eip !70
  %239 = add i32 %237, 4, !mcsema_real_eip !71
  %240 = xor i32 %239, %237, !mcsema_real_eip !71
  %241 = and i32 %240, 16, !mcsema_real_eip !71
  %242 = icmp ne i32 %241, 0, !mcsema_real_eip !71
  store i1 %242, i1* %AF, align 1, !mcsema_real_eip !71
  %243 = icmp slt i32 %239, 0
  store i1 %243, i1* %SF, align 1, !mcsema_real_eip !71
  %244 = icmp eq i32 %239, 0, !mcsema_real_eip !71
  store i1 %244, i1* %ZF, align 1, !mcsema_real_eip !71
  %245 = xor i32 %237, -2147483648, !mcsema_real_eip !71
  %246 = and i32 %240, %245, !mcsema_real_eip !71
  %247 = icmp slt i32 %246, 0
  store i1 %247, i1* %OF, align 1, !mcsema_real_eip !71
  %248 = trunc i32 %239 to i8, !mcsema_real_eip !71
  %249 = call i8 @llvm.ctpop.i8(i8 %248), !mcsema_real_eip !71
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  store i1 %251, i1* %PF, align 1, !mcsema_real_eip !71
  %252 = icmp ugt i32 %237, -5
  br label %block_0x1c2, !mcsema_real_eip !72

block_0x165:                                      ; preds = %block_0x14a, %block_0x102
  %_new_gep_122 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10925, i64 -20
  %253 = bitcast i8* %_new_gep_122 to i32*
  %254 = load i32, i32* %253, align 4, !mcsema_real_eip !73
  %255 = zext i32 %254 to i64, !mcsema_real_eip !73
  store i64 %255, i64* %XAX, align 8, !mcsema_real_eip !73
  %256 = add i32 %254, 5, !mcsema_real_eip !74
  %257 = xor i32 %256, %254, !mcsema_real_eip !74
  %258 = and i32 %257, 16, !mcsema_real_eip !74
  %259 = icmp ne i32 %258, 0, !mcsema_real_eip !74
  store i1 %259, i1* %AF, align 1, !mcsema_real_eip !74
  %260 = icmp slt i32 %256, 0
  store i1 %260, i1* %SF, align 1, !mcsema_real_eip !74
  %261 = icmp eq i32 %256, 0, !mcsema_real_eip !74
  store i1 %261, i1* %ZF, align 1, !mcsema_real_eip !74
  %262 = xor i32 %254, -2147483648, !mcsema_real_eip !74
  %263 = and i32 %257, %262, !mcsema_real_eip !74
  %264 = icmp slt i32 %263, 0
  store i1 %264, i1* %OF, align 1, !mcsema_real_eip !74
  %265 = trunc i32 %256 to i8, !mcsema_real_eip !74
  %266 = call i8 @llvm.ctpop.i8(i8 %265), !mcsema_real_eip !74
  %267 = and i8 %266, 1
  %268 = icmp eq i8 %267, 0
  store i1 %268, i1* %PF, align 1, !mcsema_real_eip !74
  %269 = icmp ugt i32 %254, -6
  br label %block_0x1c2, !mcsema_real_eip !75

block_0x1c2:                                      ; preds = %block_0x165, %block_0x157
  %.sink4 = phi i1 [ %269, %block_0x165 ], [ %252, %block_0x157 ]
  %.sink3 = phi i32 [ %256, %block_0x165 ], [ %239, %block_0x157 ]
  %.sink = phi i32* [ %253, %block_0x165 ], [ %236, %block_0x157 ]
  store i1 %.sink4, i1* %CF, align 1
  %270 = zext i32 %.sink3 to i64
  store i64 %270, i64* %XAX, align 8
  store i32 %.sink3, i32* %.sink, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12726 = load i8*, i8** %12, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12726, i64 -16
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %271 = load i64, i64* %_allin_new_bt_129, align 8, !mcsema_real_eip !75
  store i64 %271, i64* %XAX, align 8, !mcsema_real_eip !75
  %272 = add i64 %271, 6, !mcsema_real_eip !76
  %273 = inttoptr i64 %272 to i8*, !mcsema_real_eip !76
  %274 = load i8, i8* %273, align 1, !mcsema_real_eip !76
  %275 = zext i8 %274 to i64
  store i64 %275, i64* %XDI, align 8, !mcsema_real_eip !76
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_130 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.124 = load i64, i64* %XSP, align 8, !mcsema_real_eip !77
  %_new_gep_131 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_130, i64 -8
  %276 = add i64 %RSP_val.124, -8
  %_allin_new_bt_132 = bitcast i8* %_new_gep_131 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_132, align 8, !mcsema_real_eip !77
  store volatile i8* %_new_gep_131, i8** %_RSP_ptr_, align 8
  store i64 %276, i64* %XSP, align 8, !mcsema_real_eip !77
  %277 = call x86_64_sysvcc i64 @_to_byte(i64 %275)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_422 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_423 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_422, i64 8
  store i8* %_gep_fix_423, i8** %_RSP_ptr_, align 8
  store i64 %277, i64* %XAX, align 8, !mcsema_real_eip !77
  %278 = trunc i64 %277 to i8
  store i8 %278, i8* %CL.87, align 1, !mcsema_real_eip !78
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13327 = load i8*, i8** %12, align 8
  %_new_gep_134 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13327, i64 -35
  store i8 %278, i8* %_new_gep_134, align 1, !mcsema_real_eip !79
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13628 = load i8*, i8** %12, align 8
  %_new_gep_137 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13628, i64 -16
  %_allin_new_bt_138 = bitcast i8* %_new_gep_137 to i64*
  %279 = load i64, i64* %_allin_new_bt_138, align 8, !mcsema_real_eip !80
  store i64 %279, i64* %XDX, align 8, !mcsema_real_eip !80
  %280 = add i64 %279, 7, !mcsema_real_eip !81
  %281 = inttoptr i64 %280 to i8*, !mcsema_real_eip !81
  %282 = load i8, i8* %281, align 1, !mcsema_real_eip !81
  %283 = zext i8 %282 to i64
  store i64 %283, i64* %XDI, align 8, !mcsema_real_eip !81
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.134 = load i64, i64* %XSP, align 8, !mcsema_real_eip !82
  %_new_gep_140 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139, i64 -8
  %284 = add i64 %RSP_val.134, -8
  %_allin_new_bt_141 = bitcast i8* %_new_gep_140 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_141, align 8, !mcsema_real_eip !82
  store volatile i8* %_new_gep_140, i8** %_RSP_ptr_, align 8
  store i64 %284, i64* %XSP, align 8, !mcsema_real_eip !82
  %285 = call x86_64_sysvcc i64 @_to_byte(i64 %283)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_424 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_425 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_424, i64 8
  store i8* %_gep_fix_425, i8** %_RSP_ptr_, align 8
  store i64 %285, i64* %XAX, align 8, !mcsema_real_eip !82
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14229 = load i8*, i8** %12, align 8
  %_new_gep_143 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14229, i64 -35
  %286 = load i8, i8* %_new_gep_143, align 1, !mcsema_real_eip !83
  %287 = zext i8 %286 to i32
  %288 = trunc i64 %285 to i32
  %289 = or i32 %288, %287, !mcsema_real_eip !84
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !84
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !84
  %290 = icmp slt i32 %289, 0
  store i1 %290, i1* %SF, align 1, !mcsema_real_eip !84
  %291 = icmp eq i32 %289, 0, !mcsema_real_eip !84
  store i1 %291, i1* %ZF, align 1, !mcsema_real_eip !84
  %292 = trunc i32 %289 to i8, !mcsema_real_eip !84
  %293 = call i8 @llvm.ctpop.i8(i8 %292), !mcsema_real_eip !84
  %294 = and i8 %293, 1
  %295 = icmp eq i8 %294, 0
  store i1 %295, i1* %PF, align 1, !mcsema_real_eip !84
  %296 = zext i32 %289 to i64, !mcsema_real_eip !84
  store i64 %296, i64* %XDI, align 8, !mcsema_real_eip !84
  %297 = trunc i32 %289 to i8
  store i8 %297, i8* %CL.87, align 1, !mcsema_real_eip !85
  store i8 %297, i8* %_new_gep_143, align 1, !mcsema_real_eip !86
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14830 = load i8*, i8** %12, align 8
  %_new_gep_149 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14830, i64 -35
  %298 = load i8, i8* %_new_gep_149, align 1, !mcsema_real_eip !87
  %299 = zext i8 %298 to i32
  %300 = xor i32 %299, -1, !mcsema_real_eip !88
  %301 = zext i32 %300 to i64, !mcsema_real_eip !88
  store i64 %301, i64* %XAX, align 8, !mcsema_real_eip !88
  %302 = sub nuw nsw i32 -71, %299
  %303 = xor i32 %302, %300, !mcsema_real_eip !89
  %304 = and i32 %303, 16, !mcsema_real_eip !89
  %305 = icmp ne i32 %304, 0, !mcsema_real_eip !89
  store i1 %305, i1* %AF, align 1, !mcsema_real_eip !89
  %306 = trunc i32 %302 to i8, !mcsema_real_eip !89
  %307 = call i8 @llvm.ctpop.i8(i8 %306), !mcsema_real_eip !89
  %308 = and i8 %307, 1
  %309 = icmp eq i8 %308, 0
  store i1 %309, i1* %PF, align 1, !mcsema_real_eip !89
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !89
  store i1 true, i1* %SF, align 1, !mcsema_real_eip !89
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !89
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !89
  %_new_gep_158 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14830, i64 -20
  %310 = bitcast i8* %_new_gep_158 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %XCX, align 8, !mcsema_real_eip !90
  %313 = load i32, i32* %310, align 4, !mcsema_real_eip !91
  %CL_val.162.zext = and i32 %311, 255
  %314 = and i32 %311, 31, !mcsema_real_eip !92
  %315 = add nsw i32 %CL_val.162.zext, -1
  %316 = icmp ne i32 %314, 0, !mcsema_real_eip !92
  %317 = select i1 %316, i32 %315, i32 0, !mcsema_real_eip !92
  %318 = zext i1 %316 to i32
  %319 = shl i32 %313, %317, !mcsema_real_eip !92
  %320 = icmp slt i32 %319, 0
  %321 = and i1 %316, %320
  %322 = shl i32 %319, %318, !mcsema_real_eip !92
  %323 = icmp eq i32 %314, 1, !mcsema_real_eip !92
  %324 = icmp slt i32 %322, 0
  %325 = xor i1 %324, %321, !mcsema_real_eip !92
  %326 = and i1 %323, %325
  store i1 %326, i1* %OF, align 1, !mcsema_real_eip !92
  store i1 %321, i1* %CF, align 1, !mcsema_real_eip !92
  %327 = icmp eq i32 %322, 0, !mcsema_real_eip !92
  %328 = and i1 %316, %327
  store i1 %328, i1* %ZF, align 1, !mcsema_real_eip !92
  %not. = xor i1 %316, true
  %329 = or i1 %324, %not.
  store i1 %329, i1* %SF, align 1, !mcsema_real_eip !92
  %330 = trunc i32 %322 to i8, !mcsema_real_eip !92
  %331 = call i8 @llvm.ctpop.i8(i8 %330), !mcsema_real_eip !92
  %332 = and i8 %331, 1
  %333 = icmp eq i8 %332, 0
  %334 = select i1 %316, i1 %333, i1 %309, !mcsema_real_eip !92
  store i1 %334, i1* %PF, align 1, !mcsema_real_eip !92
  %335 = zext i32 %322 to i64
  store i64 %335, i64* %XAX, align 8
  store i32 %322, i32* %310, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16631 = load i8*, i8** %12, align 8
  %_new_gep_167 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16631, i64 -20
  %336 = bitcast i8* %_new_gep_167 to i32*
  %337 = load i32, i32* %336, align 4, !mcsema_real_eip !93
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !93
  %338 = trunc i32 %337 to i8, !mcsema_real_eip !93
  %339 = call i8 @llvm.ctpop.i8(i8 %338), !mcsema_real_eip !93
  %340 = and i8 %339, 1
  %341 = icmp eq i8 %340, 0
  store i1 %341, i1* %PF, align 1, !mcsema_real_eip !93
  %342 = icmp eq i32 %337, 0, !mcsema_real_eip !93
  store i1 %342, i1* %ZF, align 1, !mcsema_real_eip !93
  %343 = icmp slt i32 %337, 0
  store i1 %343, i1* %SF, align 1, !mcsema_real_eip !93
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !93
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !93
  br i1 %342, label %block_0x1d8, label %block_0x417, !mcsema_real_eip !94

block_0x1d8:                                      ; preds = %block_0x1c2
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !95
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !95
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !95
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !95
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !95
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !95
  store i64 4, i64* %XDX, align 8, !mcsema_real_eip !96
  %_new_gep_173 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16631, i64 -16
  %_allin_new_bt_174 = bitcast i8* %_new_gep_173 to i64*
  %344 = load i64, i64* %_allin_new_bt_174, align 8, !mcsema_real_eip !97
  %345 = add i64 %344, 8, !mcsema_real_eip !98
  %346 = xor i64 %345, %344, !mcsema_real_eip !98
  %347 = and i64 %346, 16, !mcsema_real_eip !98
  %348 = icmp ne i64 %347, 0, !mcsema_real_eip !98
  store i1 %348, i1* %AF, align 1, !mcsema_real_eip !98
  %349 = icmp slt i64 %345, 0
  store i1 %349, i1* %SF, align 1, !mcsema_real_eip !98
  %350 = icmp eq i64 %345, 0, !mcsema_real_eip !98
  store i1 %350, i1* %ZF, align 1, !mcsema_real_eip !98
  %351 = xor i64 %344, -9223372036854775808, !mcsema_real_eip !98
  %352 = and i64 %346, %351, !mcsema_real_eip !98
  %353 = icmp slt i64 %352, 0
  store i1 %353, i1* %OF, align 1, !mcsema_real_eip !98
  %354 = trunc i64 %345 to i8, !mcsema_real_eip !98
  %355 = call i8 @llvm.ctpop.i8(i8 %354), !mcsema_real_eip !98
  %356 = and i8 %355, 1
  %357 = icmp eq i8 %356, 0
  store i1 %357, i1* %PF, align 1, !mcsema_real_eip !98
  %358 = icmp ugt i64 %344, -9
  store i1 %358, i1* %CF, align 1, !mcsema_real_eip !98
  store i64 %345, i64* %XAX, align 8, !mcsema_real_eip !98
  store i64 %345, i64* %XSI, align 8, !mcsema_real_eip !99
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_175 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.178 = load i64, i64* %XSP, align 8, !mcsema_real_eip !100
  %_new_gep_176 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_175, i64 -8
  %359 = add i64 %RSP_val.178, -8
  %_allin_new_bt_177 = bitcast i8* %_new_gep_176 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_177, align 8, !mcsema_real_eip !100
  store volatile i8* %_new_gep_176, i8** %_RSP_ptr_, align 8
  store i64 %359, i64* %XSP, align 8, !mcsema_real_eip !100
  %360 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %345, i64 4)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_426 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_427 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_426, i64 8
  store i8* %_gep_fix_427, i8** %_RSP_ptr_, align 8
  store i64 %360, i64* %XAX, align 8, !mcsema_real_eip !100
  %361 = trunc i64 %360 to i16
  %CX.181 = bitcast i64* %XCX to i16*, !mcsema_real_eip !101
  store i16 %361, i16* %CX.181, align 2, !mcsema_real_eip !101
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17832 = load i8*, i8** %12, align 8
  %_new_gep_179 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_17832, i64 -38
  %362 = bitcast i8* %_new_gep_179 to i16*
  store i16 %361, i16* %362, align 2, !mcsema_real_eip !102
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18133 = load i8*, i8** %12, align 8
  %_new_gep_182 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18133, i64 -38
  %363 = bitcast i8* %_new_gep_182 to i16*
  %364 = load i16, i16* %363, align 2, !mcsema_real_eip !103
  %365 = or i16 %364, 21845
  %366 = zext i16 %365 to i32
  %367 = zext i16 %365 to i64
  store i64 %367, i64* %XAX, align 8, !mcsema_real_eip !104
  %368 = add nsw i32 %366, -56663
  %369 = xor i32 %368, %366, !mcsema_real_eip !105
  %370 = and i32 %369, 16
  %371 = icmp eq i32 %370, 0
  store i1 %371, i1* %AF, align 1, !mcsema_real_eip !105
  %372 = trunc i32 %368 to i8, !mcsema_real_eip !105
  %373 = call i8 @llvm.ctpop.i8(i8 %372), !mcsema_real_eip !105
  %374 = and i8 %373, 1
  %375 = icmp eq i8 %374, 0
  store i1 %375, i1* %PF, align 1, !mcsema_real_eip !105
  %376 = icmp eq i32 %368, 0, !mcsema_real_eip !105
  store i1 %376, i1* %ZF, align 1, !mcsema_real_eip !105
  %377 = icmp ult i16 %365, -8873
  store i1 %377, i1* %SF, align 1, !mcsema_real_eip !105
  %378 = icmp ult i16 %365, -8873
  store i1 %378, i1* %CF, align 1, !mcsema_real_eip !105
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !105
  br i1 %376, label %block_0x20a, label %block_0x231, !mcsema_real_eip !106

block_0x20a:                                      ; preds = %block_0x1d8
  %379 = load i16, i16* %363, align 2, !mcsema_real_eip !107
  %380 = or i16 %379, -21846
  %381 = zext i16 %380 to i32
  %382 = zext i16 %380 to i64
  store i64 %382, i64* %XAX, align 8, !mcsema_real_eip !108
  %383 = add nsw i32 %381, -65211
  %384 = xor i32 %383, %381, !mcsema_real_eip !109
  %385 = and i32 %384, 16
  %386 = icmp eq i32 %385, 0
  store i1 %386, i1* %AF, align 1, !mcsema_real_eip !109
  %387 = trunc i32 %383 to i8, !mcsema_real_eip !109
  %388 = call i8 @llvm.ctpop.i8(i8 %387), !mcsema_real_eip !109
  %389 = and i8 %388, 1
  %390 = icmp eq i8 %389, 0
  store i1 %390, i1* %PF, align 1, !mcsema_real_eip !109
  %391 = icmp eq i32 %383, 0, !mcsema_real_eip !109
  store i1 %391, i1* %ZF, align 1, !mcsema_real_eip !109
  %392 = icmp ult i16 %380, -325
  store i1 %392, i1* %SF, align 1, !mcsema_real_eip !109
  %393 = icmp ult i16 %380, -325
  store i1 %393, i1* %CF, align 1, !mcsema_real_eip !109
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !109
  %. = select i1 %391, i32 43690, i32 48059
  br label %block_0x231

block_0x231:                                      ; preds = %block_0x1d8, %block_0x20a
  %.sink7 = phi i32 [ 48059, %block_0x1d8 ], [ %., %block_0x20a ]
  %_new_gep_191 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_18133, i64 -20
  %394 = bitcast i8* %_new_gep_191 to i32*
  store i32 %.sink7, i32* %394, align 4
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !110
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !110
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !110
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !110
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !110
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !110
  store i64 8, i64* %XDX, align 8, !mcsema_real_eip !111
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19334 = load i8*, i8** %12, align 8
  %_new_gep_194 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19334, i64 -16
  %_allin_new_bt_195 = bitcast i8* %_new_gep_194 to i64*
  %395 = load i64, i64* %_allin_new_bt_195, align 8, !mcsema_real_eip !112
  %396 = add i64 %395, 12, !mcsema_real_eip !113
  %397 = xor i64 %396, %395, !mcsema_real_eip !113
  %398 = and i64 %397, 16, !mcsema_real_eip !113
  %399 = icmp ne i64 %398, 0, !mcsema_real_eip !113
  store i1 %399, i1* %AF, align 1, !mcsema_real_eip !113
  %400 = icmp slt i64 %396, 0
  store i1 %400, i1* %SF, align 1, !mcsema_real_eip !113
  %401 = icmp eq i64 %396, 0, !mcsema_real_eip !113
  store i1 %401, i1* %ZF, align 1, !mcsema_real_eip !113
  %402 = xor i64 %395, -9223372036854775808, !mcsema_real_eip !113
  %403 = and i64 %397, %402, !mcsema_real_eip !113
  %404 = icmp slt i64 %403, 0
  store i1 %404, i1* %OF, align 1, !mcsema_real_eip !113
  %405 = trunc i64 %396 to i8, !mcsema_real_eip !113
  %406 = call i8 @llvm.ctpop.i8(i8 %405), !mcsema_real_eip !113
  %407 = and i8 %406, 1
  %408 = icmp eq i8 %407, 0
  store i1 %408, i1* %PF, align 1, !mcsema_real_eip !113
  %409 = icmp ugt i64 %395, -13
  store i1 %409, i1* %CF, align 1, !mcsema_real_eip !113
  store i64 %396, i64* %XAX, align 8, !mcsema_real_eip !113
  store i64 %396, i64* %XSI, align 8, !mcsema_real_eip !114
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_196 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.207 = load i64, i64* %XSP, align 8, !mcsema_real_eip !115
  %_new_gep_197 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_196, i64 -8
  %410 = add i64 %RSP_val.207, -8
  %_allin_new_bt_198 = bitcast i8* %_new_gep_197 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_198, align 8, !mcsema_real_eip !115
  store volatile i8* %_new_gep_197, i8** %_RSP_ptr_, align 8
  store i64 %410, i64* %XSP, align 8, !mcsema_real_eip !115
  %411 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %396, i64 8)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_428 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_429 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_428, i64 8
  store i8* %_gep_fix_429, i8** %_RSP_ptr_, align 8
  store i64 %411, i64* %XAX, align 8, !mcsema_real_eip !115
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19935 = load i8*, i8** %12, align 8
  %_new_gep_200 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19935, i64 -44
  %412 = trunc i64 %411 to i32
  %413 = bitcast i8* %_new_gep_200 to i32*
  store i32 %412, i32* %413, align 4, !mcsema_real_eip !116
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20236 = load i8*, i8** %12, align 8
  %_new_gep_203 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20236, i64 -44
  %414 = bitcast i8* %_new_gep_203 to i32*
  %415 = load i32, i32* %414, align 4, !mcsema_real_eip !117
  %416 = xor i32 %415, -1534560611, !mcsema_real_eip !118
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !118
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !118
  %417 = icmp sgt i32 %415, -1
  store i1 %417, i1* %SF, align 1, !mcsema_real_eip !118
  %418 = icmp eq i32 %416, 0, !mcsema_real_eip !118
  store i1 %418, i1* %ZF, align 1, !mcsema_real_eip !118
  %419 = trunc i32 %416 to i8, !mcsema_real_eip !118
  %420 = call i8 @llvm.ctpop.i8(i8 %419), !mcsema_real_eip !118
  %421 = and i8 %420, 1
  %422 = icmp eq i8 %421, 0
  store i1 %422, i1* %PF, align 1, !mcsema_real_eip !118
  %423 = zext i32 %416 to i64, !mcsema_real_eip !118
  store i64 %423, i64* %XAX, align 8, !mcsema_real_eip !118
  %_new_gep_206 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20236, i64 -48
  %424 = bitcast i8* %_new_gep_206 to i32*
  store i32 %416, i32* %424, align 4, !mcsema_real_eip !119
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20837 = load i8*, i8** %12, align 8
  %_new_gep_209 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20837, i64 -48
  %425 = bitcast i8* %_new_gep_209 to i32*
  %426 = load i32, i32* %425, align 4, !mcsema_real_eip !120
  %427 = trunc i32 %426 to i16
  %428 = icmp slt i16 %427, 0
  %429 = lshr i32 %426, 16
  store i1 %428, i1* %CF, align 1, !mcsema_real_eip !121
  %430 = icmp eq i32 %429, 0, !mcsema_real_eip !121
  store i1 %430, i1* %ZF, align 1, !mcsema_real_eip !121
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !121
  %431 = trunc i32 %429 to i8, !mcsema_real_eip !121
  %432 = call i8 @llvm.ctpop.i8(i8 %431), !mcsema_real_eip !121
  %433 = and i8 %432, 1
  %434 = icmp eq i8 %433, 0
  store i1 %434, i1* %PF, align 1, !mcsema_real_eip !121
  %435 = zext i32 %429 to i64, !mcsema_real_eip !121
  store i64 %435, i64* %XAX, align 8, !mcsema_real_eip !121
  %_new_gep_212 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20837, i64 -52
  %436 = bitcast i8* %_new_gep_212 to i32*
  store i32 %429, i32* %436, align 4, !mcsema_real_eip !122
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_21438 = load i8*, i8** %12, align 8
  %_new_gep_215 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_21438, i64 -48
  %437 = bitcast i8* %_new_gep_215 to i32*
  %438 = load i32, i32* %437, align 4, !mcsema_real_eip !123
  %439 = and i32 %438, 65535, !mcsema_real_eip !124
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !124
  %440 = icmp eq i32 %439, 0, !mcsema_real_eip !124
  store i1 %440, i1* %ZF, align 1, !mcsema_real_eip !124
  %441 = trunc i32 %438 to i8, !mcsema_real_eip !124
  %442 = call i8 @llvm.ctpop.i8(i8 %441), !mcsema_real_eip !124
  %443 = and i8 %442, 1
  %444 = icmp eq i8 %443, 0
  store i1 %444, i1* %PF, align 1, !mcsema_real_eip !124
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !124
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !124
  %445 = zext i32 %439 to i64, !mcsema_real_eip !124
  store i64 %445, i64* %XAX, align 8, !mcsema_real_eip !124
  %_new_gep_218 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_21438, i64 -56
  %446 = bitcast i8* %_new_gep_218 to i32*
  store i32 %439, i32* %446, align 4, !mcsema_real_eip !125
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22039 = load i8*, i8** %12, align 8
  %_new_gep_221 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22039, i64 -52
  %447 = bitcast i8* %_new_gep_221 to i32*
  %448 = load i32, i32* %447, align 4, !mcsema_real_eip !126
  %449 = add i32 %448, -79
  %450 = xor i32 %449, %448, !mcsema_real_eip !126
  %451 = and i32 %450, 16, !mcsema_real_eip !126
  %452 = icmp ne i32 %451, 0, !mcsema_real_eip !126
  store i1 %452, i1* %AF, align 1, !mcsema_real_eip !126
  %453 = trunc i32 %449 to i8, !mcsema_real_eip !126
  %454 = call i8 @llvm.ctpop.i8(i8 %453), !mcsema_real_eip !126
  %455 = and i8 %454, 1
  %456 = icmp eq i8 %455, 0
  store i1 %456, i1* %PF, align 1, !mcsema_real_eip !126
  %457 = icmp eq i32 %449, 0, !mcsema_real_eip !126
  store i1 %457, i1* %ZF, align 1, !mcsema_real_eip !126
  %458 = icmp slt i32 %449, 0
  store i1 %458, i1* %SF, align 1, !mcsema_real_eip !126
  %459 = icmp ult i32 %448, 79, !mcsema_real_eip !126
  store i1 %459, i1* %CF, align 1, !mcsema_real_eip !126
  %460 = and i32 %450, %448, !mcsema_real_eip !126
  %461 = icmp slt i32 %460, 0
  store i1 %461, i1* %OF, align 1, !mcsema_real_eip !126
  br i1 %457, label %block_0x274, label %block_0x231.block_0x28c_crit_edge, !mcsema_real_eip !127

block_0x231.block_0x28c_crit_edge:                ; preds = %block_0x231
  %.pre = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22039, i64 -20
  %.pre57 = bitcast i8* %.pre to i32*
  br label %block_0x28c

block_0x274:                                      ; preds = %block_0x231
  %_new_gep_224 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22039, i64 -56
  %462 = bitcast i8* %_new_gep_224 to i32*
  %463 = load i32, i32* %462, align 4, !mcsema_real_eip !128
  %464 = zext i32 %463 to i64, !mcsema_real_eip !128
  store i64 %464, i64* %XAX, align 8, !mcsema_real_eip !128
  %_new_gep_227 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22039, i64 -20
  %465 = bitcast i8* %_new_gep_227 to i32*
  %466 = load i32, i32* %465, align 4, !mcsema_real_eip !129
  %467 = sub i32 %463, %466, !mcsema_real_eip !129
  %468 = xor i32 %467, %463, !mcsema_real_eip !129
  %469 = xor i32 %468, %466, !mcsema_real_eip !129
  %470 = and i32 %469, 16, !mcsema_real_eip !129
  %471 = icmp ne i32 %470, 0, !mcsema_real_eip !129
  store i1 %471, i1* %AF, align 1, !mcsema_real_eip !129
  %472 = trunc i32 %467 to i8, !mcsema_real_eip !129
  %473 = call i8 @llvm.ctpop.i8(i8 %472), !mcsema_real_eip !129
  %474 = and i8 %473, 1
  %475 = icmp eq i8 %474, 0
  store i1 %475, i1* %PF, align 1, !mcsema_real_eip !129
  %476 = icmp eq i32 %467, 0, !mcsema_real_eip !129
  store i1 %476, i1* %ZF, align 1, !mcsema_real_eip !129
  %477 = icmp slt i32 %467, 0
  store i1 %477, i1* %SF, align 1, !mcsema_real_eip !129
  %478 = icmp ult i32 %463, %466, !mcsema_real_eip !129
  store i1 %478, i1* %CF, align 1, !mcsema_real_eip !129
  %479 = xor i32 %466, %463, !mcsema_real_eip !129
  %480 = and i32 %468, %479, !mcsema_real_eip !129
  %481 = icmp slt i32 %480, 0
  store i1 %481, i1* %OF, align 1, !mcsema_real_eip !129
  br i1 %476, label %block_0x280, label %block_0x28c, !mcsema_real_eip !130

block_0x280:                                      ; preds = %block_0x274
  store i32 0, i32* %465, align 4, !mcsema_real_eip !131
  br label %block_0x293, !mcsema_real_eip !132

block_0x28c:                                      ; preds = %block_0x231.block_0x28c_crit_edge, %block_0x274
  %.pre-phi = phi i32* [ %.pre57, %block_0x231.block_0x28c_crit_edge ], [ %465, %block_0x274 ]
  store i32 48351, i32* %.pre-phi, align 4, !mcsema_real_eip !133
  br label %block_0x293, !mcsema_real_eip !134

block_0x293:                                      ; preds = %block_0x28c, %block_0x280
  store i64 8, i64* %XDX, align 8, !mcsema_real_eip !134
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23540 = load i8*, i8** %12, align 8
  %_new_gep_236 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23540, i64 -20
  %482 = bitcast i8* %_new_gep_236 to i32*
  %483 = load i32, i32* %482, align 4, !mcsema_real_eip !135
  %484 = zext i32 %483 to i64, !mcsema_real_eip !135
  store i64 %484, i64* %XDI, align 8, !mcsema_real_eip !135
  %_new_gep_239 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23540, i64 -16
  %_allin_new_bt_240 = bitcast i8* %_new_gep_239 to i64*
  %485 = load i64, i64* %_allin_new_bt_240, align 8, !mcsema_real_eip !136
  %486 = add i64 %485, 20, !mcsema_real_eip !137
  %487 = xor i64 %486, %485, !mcsema_real_eip !137
  %488 = and i64 %487, 16
  %489 = icmp eq i64 %488, 0
  store i1 %489, i1* %AF, align 1, !mcsema_real_eip !137
  %490 = icmp slt i64 %486, 0
  store i1 %490, i1* %SF, align 1, !mcsema_real_eip !137
  %491 = icmp eq i64 %486, 0, !mcsema_real_eip !137
  store i1 %491, i1* %ZF, align 1, !mcsema_real_eip !137
  %492 = xor i64 %485, -9223372036854775808, !mcsema_real_eip !137
  %493 = and i64 %487, %492, !mcsema_real_eip !137
  %494 = icmp slt i64 %493, 0
  store i1 %494, i1* %OF, align 1, !mcsema_real_eip !137
  %495 = trunc i64 %486 to i8, !mcsema_real_eip !137
  %496 = call i8 @llvm.ctpop.i8(i8 %495), !mcsema_real_eip !137
  %497 = and i8 %496, 1
  %498 = icmp eq i8 %497, 0
  store i1 %498, i1* %PF, align 1, !mcsema_real_eip !137
  %499 = icmp ugt i64 %485, -21
  store i1 %499, i1* %CF, align 1, !mcsema_real_eip !137
  store i64 %486, i64* %XAX, align 8, !mcsema_real_eip !137
  store i64 %486, i64* %XSI, align 8, !mcsema_real_eip !138
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_241 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.243 = load i64, i64* %XSP, align 8, !mcsema_real_eip !139
  %_new_gep_242 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_241, i64 -8
  %500 = add i64 %RSP_val.243, -8
  %_allin_new_bt_243 = bitcast i8* %_new_gep_242 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_243, align 8, !mcsema_real_eip !139
  store volatile i8* %_new_gep_242, i8** %_RSP_ptr_, align 8
  store i64 %500, i64* %XSP, align 8, !mcsema_real_eip !139
  %501 = call x86_64_sysvcc i64 @_read_bytes(i64 %484, i64 %486, i64 8)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_430 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_431 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_430, i64 8
  store i8* %_gep_fix_431, i8** %_RSP_ptr_, align 8
  store i64 %501, i64* %XAX, align 8, !mcsema_real_eip !139
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_24441 = load i8*, i8** %12, align 8
  %_new_gep_245 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_24441, i64 -60
  %502 = trunc i64 %501 to i32
  %503 = bitcast i8* %_new_gep_245 to i32*
  store i32 %502, i32* %503, align 4, !mcsema_real_eip !140
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_24742 = load i8*, i8** %12, align 8
  %_new_gep_248 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_24742, i64 -60
  %504 = bitcast i8* %_new_gep_248 to i32*
  %505 = load i32, i32* %504, align 4, !mcsema_real_eip !141
  %506 = add i32 %505, -3
  %507 = xor i32 %506, %505, !mcsema_real_eip !142
  %508 = and i32 %507, 16, !mcsema_real_eip !142
  %509 = icmp ne i32 %508, 0, !mcsema_real_eip !142
  store i1 %509, i1* %AF, align 1, !mcsema_real_eip !142
  %510 = trunc i32 %506 to i8, !mcsema_real_eip !142
  %511 = call i8 @llvm.ctpop.i8(i8 %510), !mcsema_real_eip !142
  %512 = and i8 %511, 1
  %513 = icmp eq i8 %512, 0
  store i1 %513, i1* %PF, align 1, !mcsema_real_eip !142
  %514 = icmp eq i32 %506, 0, !mcsema_real_eip !142
  store i1 %514, i1* %ZF, align 1, !mcsema_real_eip !142
  %515 = icmp slt i32 %506, 0
  store i1 %515, i1* %SF, align 1, !mcsema_real_eip !142
  %516 = icmp ult i32 %505, 3, !mcsema_real_eip !142
  store i1 %516, i1* %CF, align 1, !mcsema_real_eip !142
  %517 = and i32 %507, %505, !mcsema_real_eip !142
  %518 = icmp slt i32 %517, 0
  store i1 %518, i1* %OF, align 1, !mcsema_real_eip !142
  %519 = zext i32 %506 to i64, !mcsema_real_eip !142
  store i64 %519, i64* %XAX, align 8, !mcsema_real_eip !142
  store i32 %506, i32* %504, align 4, !mcsema_real_eip !143
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25343 = load i8*, i8** %12, align 8
  %_new_gep_254 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25343, i64 -60
  %520 = bitcast i8* %_new_gep_254 to i32*
  %521 = load i32, i32* %520, align 4, !mcsema_real_eip !144
  %522 = and i32 %521, 7, !mcsema_real_eip !145
  %523 = icmp eq i32 %522, 0
  %524 = trunc i32 %522 to i8
  %525 = call i8 @llvm.ctpop.i8(i8 %524)
  %526 = and i8 %525, 1
  %527 = icmp eq i8 %526, 0
  %528 = zext i32 %522 to i64, !mcsema_real_eip !145
  store i64 %528, i64* %XAX, align 8, !mcsema_real_eip !145
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !146
  store i1 %527, i1* %PF, align 1, !mcsema_real_eip !146
  store i1 %523, i1* %ZF, align 1, !mcsema_real_eip !146
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !146
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !146
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !146
  br i1 %523, label %block_0x2d2, label %block_0x417, !mcsema_real_eip !147

block_0x2d2:                                      ; preds = %block_0x293
  %529 = load i32, i32* %520, align 4, !mcsema_real_eip !148
  %530 = xor i32 %529, -2147483648
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !149
  %531 = trunc i32 %529 to i8, !mcsema_real_eip !149
  %532 = call i8 @llvm.ctpop.i8(i8 %531), !mcsema_real_eip !149
  %533 = and i8 %532, 1
  %534 = icmp eq i8 %533, 0
  store i1 %534, i1* %PF, align 1, !mcsema_real_eip !149
  %535 = icmp eq i32 %530, 0, !mcsema_real_eip !149
  store i1 %535, i1* %ZF, align 1, !mcsema_real_eip !149
  %536 = icmp sgt i32 %529, -1
  store i1 %536, i1* %SF, align 1, !mcsema_real_eip !149
  store i1 %536, i1* %CF, align 1, !mcsema_real_eip !149
  store i1 %536, i1* %OF, align 1, !mcsema_real_eip !149
  %537 = zext i32 %530 to i64, !mcsema_real_eip !149
  store i64 %537, i64* %XAX, align 8, !mcsema_real_eip !149
  store i32 %530, i32* %520, align 4, !mcsema_real_eip !150
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26544 = load i8*, i8** %12, align 8
  %_new_gep_266 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26544, i64 -60
  %538 = bitcast i8* %_new_gep_266 to i32*
  %539 = load i32, i32* %538, align 4, !mcsema_real_eip !151
  %540 = add i32 %539, -268435455
  %541 = xor i32 %540, %539, !mcsema_real_eip !151
  %542 = and i32 %541, 16
  %543 = icmp eq i32 %542, 0
  store i1 %543, i1* %AF, align 1, !mcsema_real_eip !151
  %544 = trunc i32 %540 to i8, !mcsema_real_eip !151
  %545 = call i8 @llvm.ctpop.i8(i8 %544), !mcsema_real_eip !151
  %546 = and i8 %545, 1
  %547 = icmp eq i8 %546, 0
  store i1 %547, i1* %PF, align 1, !mcsema_real_eip !151
  %548 = icmp eq i32 %540, 0, !mcsema_real_eip !151
  store i1 %548, i1* %ZF, align 1, !mcsema_real_eip !151
  %549 = icmp slt i32 %540, 0
  store i1 %549, i1* %SF, align 1, !mcsema_real_eip !151
  %550 = icmp ult i32 %539, 268435455, !mcsema_real_eip !151
  store i1 %550, i1* %CF, align 1, !mcsema_real_eip !151
  %551 = and i32 %541, %539, !mcsema_real_eip !151
  %552 = icmp slt i32 %551, 0
  store i1 %552, i1* %OF, align 1, !mcsema_real_eip !151
  %553 = or i1 %550, %548, !mcsema_real_eip !152
  br i1 %553, label %block_0x2f6, label %block_0x417, !mcsema_real_eip !152

block_0x2f6:                                      ; preds = %block_0x2d2
  store i64 10000, i64* %XAX, align 8, !mcsema_real_eip !153
  %554 = load i32, i32* %538, align 4, !mcsema_real_eip !154
  %555 = xor i32 %554, 13631488, !mcsema_real_eip !155
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !155
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !155
  %556 = icmp slt i32 %554, 0
  store i1 %556, i1* %SF, align 1, !mcsema_real_eip !155
  %557 = icmp eq i32 %555, 0, !mcsema_real_eip !155
  store i1 %557, i1* %ZF, align 1, !mcsema_real_eip !155
  %558 = trunc i32 %554 to i8, !mcsema_real_eip !155
  %559 = call i8 @llvm.ctpop.i8(i8 %558), !mcsema_real_eip !155
  %560 = and i8 %559, 1
  %561 = icmp eq i8 %560, 0
  store i1 %561, i1* %PF, align 1, !mcsema_real_eip !155
  %562 = zext i32 %555 to i64, !mcsema_real_eip !155
  store i64 %562, i64* %XCX, align 8, !mcsema_real_eip !155
  store i32 %555, i32* %538, align 4, !mcsema_real_eip !156
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27745 = load i8*, i8** %12, align 8
  %_new_gep_278 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27745, i64 -60
  %563 = bitcast i8* %_new_gep_278 to i32*
  %564 = load i32, i32* %563, align 4, !mcsema_real_eip !157
  %565 = and i32 %564, 8, !mcsema_real_eip !158
  %566 = icmp ne i32 %565, 0, !mcsema_real_eip !158
  %567 = lshr i32 %564, 4
  store i1 %566, i1* %CF, align 1, !mcsema_real_eip !158
  %568 = icmp eq i32 %567, 0, !mcsema_real_eip !158
  store i1 %568, i1* %ZF, align 1, !mcsema_real_eip !158
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !158
  %569 = trunc i32 %567 to i8, !mcsema_real_eip !158
  %570 = call i8 @llvm.ctpop.i8(i8 %569), !mcsema_real_eip !158
  %571 = and i8 %570, 1
  %572 = icmp eq i8 %571, 0
  store i1 %572, i1* %PF, align 1, !mcsema_real_eip !158
  %573 = zext i32 %567 to i64, !mcsema_real_eip !158
  store i64 %573, i64* %XCX, align 8, !mcsema_real_eip !158
  store i32 %567, i32* %563, align 4, !mcsema_real_eip !159
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28346 = load i8*, i8** %12, align 8
  %_new_gep_284 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28346, i64 -60
  %574 = bitcast i8* %_new_gep_284 to i32*
  %575 = load i32, i32* %574, align 4, !mcsema_real_eip !160
  %576 = add i32 %575, -226
  %577 = xor i32 %576, %575, !mcsema_real_eip !161
  %578 = and i32 %577, 16, !mcsema_real_eip !161
  %579 = icmp ne i32 %578, 0, !mcsema_real_eip !161
  store i1 %579, i1* %AF, align 1, !mcsema_real_eip !161
  %580 = trunc i32 %576 to i8, !mcsema_real_eip !161
  %581 = call i8 @llvm.ctpop.i8(i8 %580), !mcsema_real_eip !161
  %582 = and i8 %581, 1
  %583 = icmp eq i8 %582, 0
  store i1 %583, i1* %PF, align 1, !mcsema_real_eip !161
  %584 = icmp eq i32 %576, 0, !mcsema_real_eip !161
  store i1 %584, i1* %ZF, align 1, !mcsema_real_eip !161
  %585 = icmp slt i32 %576, 0
  store i1 %585, i1* %SF, align 1, !mcsema_real_eip !161
  %586 = icmp ult i32 %575, 226, !mcsema_real_eip !161
  store i1 %586, i1* %CF, align 1, !mcsema_real_eip !161
  %587 = and i32 %577, %575, !mcsema_real_eip !161
  %588 = icmp slt i32 %587, 0
  store i1 %588, i1* %OF, align 1, !mcsema_real_eip !161
  %589 = zext i32 %576 to i64, !mcsema_real_eip !161
  store i64 %589, i64* %XCX, align 8, !mcsema_real_eip !161
  store i32 %576, i32* %574, align 4, !mcsema_real_eip !162
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28947 = load i8*, i8** %12, align 8
  %_new_gep_290 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28947, i64 -60
  %590 = bitcast i8* %_new_gep_290 to i32*
  %591 = load i32, i32* %590, align 4, !mcsema_real_eip !163
  %592 = zext i32 %591 to i64, !mcsema_real_eip !163
  store i64 %592, i64* %XCX, align 8, !mcsema_real_eip !163
  %_new_gep_293 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_28947, i64 -68
  %EAX_val.288 = load i32, i32* %EAX.9, align 4, !mcsema_real_eip !164
  %593 = bitcast i8* %_new_gep_293 to i32*
  store i32 %EAX_val.288, i32* %593, align 4, !mcsema_real_eip !164
  %ECX_val.290 = load i32, i32* %ECX.12, align 4, !mcsema_real_eip !165
  %594 = zext i32 %ECX_val.290 to i64, !mcsema_real_eip !165
  store i64 %594, i64* %XAX, align 8, !mcsema_real_eip !165
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !166
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !166
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !166
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !166
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !166
  store i64 0, i64* %XDX, align 8, !mcsema_real_eip !166
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29548 = load i8*, i8** %12, align 8
  %_new_gep_296 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29548, i64 -68
  %595 = bitcast i8* %_new_gep_296 to i32*
  %596 = load i32, i32* %595, align 4, !mcsema_real_eip !167
  %597 = zext i32 %596 to i64
  store i64 %597, i64* %XCX, align 8, !mcsema_real_eip !167
  %598 = sext i32 %ECX_val.290 to i64, !mcsema_real_eip !168
  %599 = udiv i64 %598, %597, !mcsema_real_eip !168
  %600 = urem i64 %598, %597, !mcsema_real_eip !168
  store i64 %600, i64* %XDX, align 8, !mcsema_real_eip !168
  %601 = and i64 %599, 4294967295
  store i64 %601, i64* %XAX, align 8, !mcsema_real_eip !168
  %_new_gep_299 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29548, i64 -60
  %602 = trunc i64 %599 to i32
  %603 = bitcast i8* %_new_gep_299 to i32*
  store i32 %602, i32* %603, align 4, !mcsema_real_eip !169
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30149 = load i8*, i8** %12, align 8
  %_new_gep_302 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30149, i64 -60
  %604 = bitcast i8* %_new_gep_302 to i32*
  %605 = load i32, i32* %604, align 4, !mcsema_real_eip !170
  %606 = add i32 %605, -3
  %607 = xor i32 %606, %605, !mcsema_real_eip !170
  %608 = and i32 %607, 16, !mcsema_real_eip !170
  %609 = icmp ne i32 %608, 0, !mcsema_real_eip !170
  store i1 %609, i1* %AF, align 1, !mcsema_real_eip !170
  %610 = trunc i32 %606 to i8, !mcsema_real_eip !170
  %611 = call i8 @llvm.ctpop.i8(i8 %610), !mcsema_real_eip !170
  %612 = and i8 %611, 1
  %613 = icmp eq i8 %612, 0
  store i1 %613, i1* %PF, align 1, !mcsema_real_eip !170
  %614 = icmp eq i32 %606, 0, !mcsema_real_eip !170
  store i1 %614, i1* %ZF, align 1, !mcsema_real_eip !170
  %615 = icmp slt i32 %606, 0
  store i1 %615, i1* %SF, align 1, !mcsema_real_eip !170
  %616 = icmp ult i32 %605, 3, !mcsema_real_eip !170
  store i1 %616, i1* %CF, align 1, !mcsema_real_eip !170
  %617 = and i32 %607, %605, !mcsema_real_eip !170
  %618 = icmp slt i32 %617, 0
  store i1 %618, i1* %OF, align 1, !mcsema_real_eip !170
  br i1 %614, label %block_0x343, label %block_0x338, !mcsema_real_eip !171

block_0x338:                                      ; preds = %block_0x2f6
  %619 = load i32, i32* %604, align 4, !mcsema_real_eip !172
  %620 = zext i32 %619 to i64, !mcsema_real_eip !172
  store i64 %620, i64* %XAX, align 8, !mcsema_real_eip !172
  br label %block_0x417, !mcsema_real_eip !173

block_0x343:                                      ; preds = %block_0x2f6
  store i64 4, i64* %XDX, align 8, !mcsema_real_eip !174
  %_new_gep_311 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30149, i64 -20
  %621 = bitcast i8* %_new_gep_311 to i32*
  %622 = load i32, i32* %621, align 4, !mcsema_real_eip !175
  %623 = zext i32 %622 to i64, !mcsema_real_eip !175
  store i64 %623, i64* %XDI, align 8, !mcsema_real_eip !175
  %_new_gep_314 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30149, i64 -16
  %_allin_new_bt_315 = bitcast i8* %_new_gep_314 to i64*
  %624 = load i64, i64* %_allin_new_bt_315, align 8, !mcsema_real_eip !176
  %625 = add i64 %624, 28, !mcsema_real_eip !177
  %626 = xor i64 %625, %624, !mcsema_real_eip !177
  %627 = and i64 %626, 16
  %628 = icmp eq i64 %627, 0
  store i1 %628, i1* %AF, align 1, !mcsema_real_eip !177
  %629 = icmp slt i64 %625, 0
  store i1 %629, i1* %SF, align 1, !mcsema_real_eip !177
  %630 = icmp eq i64 %625, 0, !mcsema_real_eip !177
  store i1 %630, i1* %ZF, align 1, !mcsema_real_eip !177
  %631 = xor i64 %624, -9223372036854775808, !mcsema_real_eip !177
  %632 = and i64 %626, %631, !mcsema_real_eip !177
  %633 = icmp slt i64 %632, 0
  store i1 %633, i1* %OF, align 1, !mcsema_real_eip !177
  %634 = trunc i64 %625 to i8, !mcsema_real_eip !177
  %635 = call i8 @llvm.ctpop.i8(i8 %634), !mcsema_real_eip !177
  %636 = and i8 %635, 1
  %637 = icmp eq i8 %636, 0
  store i1 %637, i1* %PF, align 1, !mcsema_real_eip !177
  %638 = icmp ugt i64 %624, -29
  store i1 %638, i1* %CF, align 1, !mcsema_real_eip !177
  store i64 %625, i64* %XAX, align 8, !mcsema_real_eip !177
  store i64 %625, i64* %XSI, align 8, !mcsema_real_eip !178
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_316 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.317 = load i64, i64* %XSP, align 8, !mcsema_real_eip !179
  %_new_gep_317 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_316, i64 -8
  %639 = add i64 %RSP_val.317, -8
  %_allin_new_bt_318 = bitcast i8* %_new_gep_317 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_318, align 8, !mcsema_real_eip !179
  store volatile i8* %_new_gep_317, i8** %_RSP_ptr_, align 8
  store i64 %639, i64* %XSP, align 8, !mcsema_real_eip !179
  %640 = call x86_64_sysvcc i64 @_read_bytes(i64 %623, i64 %625, i64 4)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_432 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_433 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_432, i64 8
  store i8* %_gep_fix_433, i8** %_RSP_ptr_, align 8
  store i64 %640, i64* %XAX, align 8, !mcsema_real_eip !179
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31950 = load i8*, i8** %12, align 8
  %_new_gep_320 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31950, i64 -64
  %641 = trunc i64 %640 to i32
  %642 = bitcast i8* %_new_gep_320 to i32*
  store i32 %641, i32* %642, align 4, !mcsema_real_eip !180
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32251 = load i8*, i8** %12, align 8
  %_new_gep_323 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32251, i64 -16
  %_allin_new_bt_324 = bitcast i8* %_new_gep_323 to i64*
  %643 = load i64, i64* %_allin_new_bt_324, align 8, !mcsema_real_eip !181
  store i64 %643, i64* %XSI, align 8, !mcsema_real_eip !181
  %644 = add i64 %643, 28, !mcsema_real_eip !182
  %645 = inttoptr i64 %644 to i8*, !mcsema_real_eip !182
  %646 = load i8, i8* %645, align 1, !mcsema_real_eip !182
  %647 = sext i8 %646 to i64
  %648 = and i64 %647, 4294967295
  store i64 %648, i64* %XAX, align 8, !mcsema_real_eip !182
  %649 = sext i8 %646 to i32
  %650 = add nsw i32 %649, -100
  %651 = xor i32 %650, %649, !mcsema_real_eip !183
  %652 = and i32 %651, 16, !mcsema_real_eip !183
  %653 = icmp ne i32 %652, 0, !mcsema_real_eip !183
  store i1 %653, i1* %AF, align 1, !mcsema_real_eip !183
  %654 = trunc i32 %650 to i8, !mcsema_real_eip !183
  %655 = call i8 @llvm.ctpop.i8(i8 %654), !mcsema_real_eip !183
  %656 = and i8 %655, 1
  %657 = icmp eq i8 %656, 0
  store i1 %657, i1* %PF, align 1, !mcsema_real_eip !183
  %658 = icmp eq i32 %650, 0, !mcsema_real_eip !183
  store i1 %658, i1* %ZF, align 1, !mcsema_real_eip !183
  %659 = icmp slt i8 %646, 100
  store i1 %659, i1* %SF, align 1, !mcsema_real_eip !183
  %660 = icmp ult i8 %646, 100
  store i1 %660, i1* %CF, align 1, !mcsema_real_eip !183
  %661 = and i32 %651, %649, !mcsema_real_eip !183
  %662 = icmp slt i32 %661, 0
  store i1 %662, i1* %OF, align 1, !mcsema_real_eip !183
  br i1 %658, label %block_0x36f, label %block_0x38e, !mcsema_real_eip !184

block_0x36f:                                      ; preds = %block_0x343
  %663 = load i64, i64* %_allin_new_bt_324, align 8, !mcsema_real_eip !185
  store i64 %663, i64* %XAX, align 8, !mcsema_real_eip !185
  %664 = add i64 %663, 29, !mcsema_real_eip !186
  %665 = inttoptr i64 %664 to i8*, !mcsema_real_eip !186
  %666 = load i8, i8* %665, align 1, !mcsema_real_eip !186
  %667 = sext i8 %666 to i64
  %668 = and i64 %667, 4294967295
  store i64 %668, i64* %XCX, align 8, !mcsema_real_eip !186
  %669 = sext i8 %666 to i32
  %670 = add nsw i32 %669, -100
  %671 = xor i32 %670, %669, !mcsema_real_eip !187
  %672 = and i32 %671, 16, !mcsema_real_eip !187
  %673 = icmp ne i32 %672, 0, !mcsema_real_eip !187
  store i1 %673, i1* %AF, align 1, !mcsema_real_eip !187
  %674 = trunc i32 %670 to i8, !mcsema_real_eip !187
  %675 = call i8 @llvm.ctpop.i8(i8 %674), !mcsema_real_eip !187
  %676 = and i8 %675, 1
  %677 = icmp eq i8 %676, 0
  store i1 %677, i1* %PF, align 1, !mcsema_real_eip !187
  %678 = icmp eq i32 %670, 0, !mcsema_real_eip !187
  store i1 %678, i1* %ZF, align 1, !mcsema_real_eip !187
  %679 = icmp slt i8 %666, 100
  store i1 %679, i1* %SF, align 1, !mcsema_real_eip !187
  %680 = icmp ult i8 %666, 100
  store i1 %680, i1* %CF, align 1, !mcsema_real_eip !187
  %681 = and i32 %671, %669, !mcsema_real_eip !187
  %682 = icmp slt i32 %681, 0
  store i1 %682, i1* %OF, align 1, !mcsema_real_eip !187
  br i1 %678, label %block_0x380, label %block_0x38e, !mcsema_real_eip !188

block_0x380:                                      ; preds = %block_0x36f
  %_new_gep_329 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32251, i64 -64
  %683 = bitcast i8* %_new_gep_329 to i32*
  %684 = load i32, i32* %683, align 4, !mcsema_real_eip !189
  %685 = zext i32 %684 to i64, !mcsema_real_eip !189
  store i64 %685, i64* %XAX, align 8, !mcsema_real_eip !189
  %_new_gep_332 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32251, i64 -20
  %686 = bitcast i8* %_new_gep_332 to i32*
  %687 = load i32, i32* %686, align 4, !mcsema_real_eip !190
  %688 = xor i32 %684, %687, !mcsema_real_eip !190
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !190
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !190
  %689 = icmp slt i32 %688, 0
  store i1 %689, i1* %SF, align 1, !mcsema_real_eip !190
  %690 = icmp eq i32 %688, 0, !mcsema_real_eip !190
  store i1 %690, i1* %ZF, align 1, !mcsema_real_eip !190
  %691 = trunc i32 %688 to i8, !mcsema_real_eip !190
  %692 = call i8 @llvm.ctpop.i8(i8 %691), !mcsema_real_eip !190
  %693 = and i8 %692, 1
  %694 = icmp eq i8 %693, 0
  store i1 %694, i1* %PF, align 1, !mcsema_real_eip !190
  %695 = zext i32 %688 to i64, !mcsema_real_eip !190
  store i64 %695, i64* %XAX, align 8, !mcsema_real_eip !190
  store i32 %688, i32* %686, align 4, !mcsema_real_eip !191
  br label %block_0x411, !mcsema_real_eip !192

block_0x38e:                                      ; preds = %block_0x36f, %block_0x343
  %696 = load i64, i64* %_allin_new_bt_324, align 8, !mcsema_real_eip !193
  store i64 %696, i64* %XAX, align 8, !mcsema_real_eip !193
  %697 = add i64 %696, 28, !mcsema_real_eip !194
  %698 = inttoptr i64 %697 to i8*, !mcsema_real_eip !194
  %699 = load i8, i8* %698, align 1, !mcsema_real_eip !194
  %700 = sext i8 %699 to i64
  %701 = and i64 %700, 4294967295
  store i64 %701, i64* %XCX, align 8, !mcsema_real_eip !194
  %702 = load i64, i64* %_allin_new_bt_324, align 8, !mcsema_real_eip !195
  store i64 %702, i64* %XAX, align 8, !mcsema_real_eip !195
  %703 = add i64 %702, 29, !mcsema_real_eip !196
  %704 = inttoptr i64 %703 to i8*, !mcsema_real_eip !196
  %705 = load i8, i8* %704, align 1, !mcsema_real_eip !196
  %706 = sext i8 %705 to i64
  %707 = and i64 %706, 4294967295
  store i64 %707, i64* %XDX, align 8, !mcsema_real_eip !196
  %708 = sext i8 %699 to i32
  %709 = sext i8 %705 to i32
  %710 = sub nsw i32 %708, %709, !mcsema_real_eip !197
  %711 = xor i32 %710, %708, !mcsema_real_eip !197
  %712 = xor i32 %711, %709, !mcsema_real_eip !197
  %713 = and i32 %712, 16, !mcsema_real_eip !197
  %714 = icmp ne i32 %713, 0, !mcsema_real_eip !197
  store i1 %714, i1* %AF, align 1, !mcsema_real_eip !197
  %715 = trunc i32 %710 to i8, !mcsema_real_eip !197
  %716 = call i8 @llvm.ctpop.i8(i8 %715), !mcsema_real_eip !197
  %717 = and i8 %716, 1
  %718 = icmp eq i8 %717, 0
  store i1 %718, i1* %PF, align 1, !mcsema_real_eip !197
  %719 = icmp eq i32 %710, 0, !mcsema_real_eip !197
  store i1 %719, i1* %ZF, align 1, !mcsema_real_eip !197
  %720 = icmp slt i32 %710, 0
  store i1 %720, i1* %SF, align 1, !mcsema_real_eip !197
  %721 = icmp ult i8 %699, %705
  store i1 %721, i1* %CF, align 1, !mcsema_real_eip !197
  %722 = xor i8 %705, %699
  %723 = sext i8 %722 to i32
  %724 = and i32 %711, %723, !mcsema_real_eip !197
  %725 = icmp slt i32 %724, 0
  store i1 %725, i1* %OF, align 1, !mcsema_real_eip !197
  br i1 %719, label %block_0x3a6, label %block_0x406, !mcsema_real_eip !198

block_0x3a6:                                      ; preds = %block_0x38e
  store i64 15, i64* %XAX, align 8, !mcsema_real_eip !199
  %726 = load i64, i64* %_allin_new_bt_324, align 8, !mcsema_real_eip !200
  store i64 %726, i64* %XCX, align 8, !mcsema_real_eip !200
  %727 = add i64 %726, 31, !mcsema_real_eip !201
  %728 = inttoptr i64 %727 to i8*, !mcsema_real_eip !201
  %729 = load i8, i8* %728, align 1, !mcsema_real_eip !201
  %730 = sext i8 %729 to i64
  %731 = and i64 %730, 4294967295
  store i64 %731, i64* %XDX, align 8, !mcsema_real_eip !201
  %732 = load i64, i64* %_allin_new_bt_324, align 8, !mcsema_real_eip !202
  store i64 %732, i64* %XCX, align 8, !mcsema_real_eip !202
  %733 = add i64 %732, 30, !mcsema_real_eip !203
  %734 = inttoptr i64 %733 to i8*, !mcsema_real_eip !203
  %735 = load i8, i8* %734, align 1, !mcsema_real_eip !203
  %736 = sext i8 %735 to i64
  %737 = and i64 %736, 4294967295
  store i64 %737, i64* %XSI, align 8, !mcsema_real_eip !203
  %738 = sext i8 %729 to i32
  %739 = sext i8 %735 to i32
  %740 = sub nsw i32 %738, %739, !mcsema_real_eip !204
  %741 = zext i32 %740 to i64, !mcsema_real_eip !204
  store i64 %741, i64* %XDX, align 8, !mcsema_real_eip !204
  %742 = sub nsw i32 15, %740, !mcsema_real_eip !205
  %743 = xor i32 %742, %740, !mcsema_real_eip !205
  %744 = and i32 %743, 16, !mcsema_real_eip !205
  %745 = icmp ne i32 %744, 0, !mcsema_real_eip !205
  store i1 %745, i1* %AF, align 1, !mcsema_real_eip !205
  %746 = trunc i32 %742 to i8, !mcsema_real_eip !205
  %747 = call i8 @llvm.ctpop.i8(i8 %746), !mcsema_real_eip !205
  %748 = and i8 %747, 1
  %749 = icmp eq i8 %748, 0
  store i1 %749, i1* %PF, align 1, !mcsema_real_eip !205
  %750 = icmp eq i32 %742, 0, !mcsema_real_eip !205
  store i1 %750, i1* %ZF, align 1, !mcsema_real_eip !205
  %751 = icmp slt i32 %742, 0
  store i1 %751, i1* %SF, align 1, !mcsema_real_eip !205
  %752 = icmp ugt i32 %740, 15, !mcsema_real_eip !205
  store i1 %752, i1* %CF, align 1, !mcsema_real_eip !205
  %753 = and i32 %742, %740, !mcsema_real_eip !205
  %754 = icmp slt i32 %753, 0
  store i1 %754, i1* %OF, align 1, !mcsema_real_eip !205
  %755 = zext i32 %742 to i64, !mcsema_real_eip !205
  store i64 %755, i64* %XAX, align 8, !mcsema_real_eip !205
  %_new_gep_350 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32251, i64 -20
  %756 = bitcast i8* %_new_gep_350 to i32*
  %757 = load i32, i32* %756, align 4, !mcsema_real_eip !206
  %758 = add i32 %742, %757, !mcsema_real_eip !206
  %759 = xor i32 %758, %757, !mcsema_real_eip !206
  %760 = xor i32 %759, %742, !mcsema_real_eip !206
  %761 = and i32 %760, 16, !mcsema_real_eip !206
  %762 = icmp ne i32 %761, 0, !mcsema_real_eip !206
  store i1 %762, i1* %AF, align 1, !mcsema_real_eip !206
  %763 = icmp slt i32 %758, 0
  store i1 %763, i1* %SF, align 1, !mcsema_real_eip !206
  %764 = icmp eq i32 %758, 0, !mcsema_real_eip !206
  store i1 %764, i1* %ZF, align 1, !mcsema_real_eip !206
  %765 = xor i32 %757, -2147483648, !mcsema_real_eip !206
  %766 = xor i32 %765, %742, !mcsema_real_eip !206
  %767 = and i32 %759, %766, !mcsema_real_eip !206
  %768 = icmp slt i32 %767, 0
  store i1 %768, i1* %OF, align 1, !mcsema_real_eip !206
  %769 = trunc i32 %758 to i8, !mcsema_real_eip !206
  %770 = call i8 @llvm.ctpop.i8(i8 %769), !mcsema_real_eip !206
  %771 = and i8 %770, 1
  %772 = icmp eq i8 %771, 0
  store i1 %772, i1* %PF, align 1, !mcsema_real_eip !206
  %773 = icmp ult i32 %758, %757, !mcsema_real_eip !206
  store i1 %773, i1* %CF, align 1, !mcsema_real_eip !206
  %774 = zext i32 %758 to i64, !mcsema_real_eip !206
  store i64 %774, i64* %XAX, align 8, !mcsema_real_eip !206
  store i32 %758, i32* %756, align 4, !mcsema_real_eip !207
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_35553 = load i8*, i8** %12, align 8
  %_new_gep_356 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_35553, i64 -16
  %_allin_new_bt_357 = bitcast i8* %_new_gep_356 to i64*
  %775 = load i64, i64* %_allin_new_bt_357, align 8, !mcsema_real_eip !208
  store i64 %775, i64* %XCX, align 8, !mcsema_real_eip !208
  %776 = add i64 %775, 28, !mcsema_real_eip !209
  %777 = inttoptr i64 %776 to i8*, !mcsema_real_eip !209
  %778 = load i8, i8* %777, align 1, !mcsema_real_eip !209
  %779 = zext i8 %778 to i64
  store i64 %779, i64* %XDI, align 8, !mcsema_real_eip !209
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_358 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.365 = load i64, i64* %XSP, align 8, !mcsema_real_eip !210
  %_new_gep_359 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_358, i64 -8
  %780 = add i64 %RSP_val.365, -8
  %_allin_new_bt_360 = bitcast i8* %_new_gep_359 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_360, align 8, !mcsema_real_eip !210
  store volatile i8* %_new_gep_359, i8** %_RSP_ptr_, align 8
  store i64 %780, i64* %XSP, align 8, !mcsema_real_eip !210
  %781 = call x86_64_sysvcc i64 @_to_byte(i64 %779)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_434 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_435 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_434, i64 8
  store i8* %_gep_fix_435, i8** %_RSP_ptr_, align 8
  store i64 %781, i64* %XAX, align 8, !mcsema_real_eip !210
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36154 = load i8*, i8** %12, align 8
  %_new_gep_362 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36154, i64 -20
  %782 = bitcast i8* %_new_gep_362 to i32*
  %783 = load i32, i32* %782, align 4, !mcsema_real_eip !211
  %784 = trunc i64 %781 to i32
  %785 = sub i32 %783, %784, !mcsema_real_eip !212
  %786 = xor i32 %785, %783, !mcsema_real_eip !212
  %787 = xor i32 %786, %784, !mcsema_real_eip !212
  %788 = and i32 %787, 16, !mcsema_real_eip !212
  %789 = icmp ne i32 %788, 0, !mcsema_real_eip !212
  store i1 %789, i1* %AF, align 1, !mcsema_real_eip !212
  %790 = trunc i32 %785 to i8, !mcsema_real_eip !212
  %791 = call i8 @llvm.ctpop.i8(i8 %790), !mcsema_real_eip !212
  %792 = and i8 %791, 1
  %793 = icmp eq i8 %792, 0
  store i1 %793, i1* %PF, align 1, !mcsema_real_eip !212
  %794 = icmp eq i32 %785, 0, !mcsema_real_eip !212
  store i1 %794, i1* %ZF, align 1, !mcsema_real_eip !212
  %795 = icmp slt i32 %785, 0
  store i1 %795, i1* %SF, align 1, !mcsema_real_eip !212
  %796 = icmp ult i32 %783, %784, !mcsema_real_eip !212
  store i1 %796, i1* %CF, align 1, !mcsema_real_eip !212
  %797 = xor i32 %783, %784, !mcsema_real_eip !212
  %798 = and i32 %786, %797, !mcsema_real_eip !212
  %799 = icmp slt i32 %798, 0
  store i1 %799, i1* %OF, align 1, !mcsema_real_eip !212
  %800 = zext i32 %785 to i64, !mcsema_real_eip !212
  store i64 %800, i64* %XDX, align 8, !mcsema_real_eip !212
  store i32 %785, i32* %782, align 4, !mcsema_real_eip !213
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36755 = load i8*, i8** %12, align 8
  %_new_gep_368 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36755, i64 -20
  %801 = bitcast i8* %_new_gep_368 to i32*
  %802 = load i32, i32* %801, align 4, !mcsema_real_eip !214
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !214
  %803 = trunc i32 %802 to i8, !mcsema_real_eip !214
  %804 = call i8 @llvm.ctpop.i8(i8 %803), !mcsema_real_eip !214
  %805 = and i8 %804, 1
  %806 = icmp eq i8 %805, 0
  store i1 %806, i1* %PF, align 1, !mcsema_real_eip !214
  %807 = icmp eq i32 %802, 0, !mcsema_real_eip !214
  store i1 %807, i1* %ZF, align 1, !mcsema_real_eip !214
  %808 = icmp slt i32 %802, 0
  store i1 %808, i1* %SF, align 1, !mcsema_real_eip !214
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !214
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !214
  br i1 %807, label %block_0x3e4, label %block_0x411, !mcsema_real_eip !215

block_0x3e4:                                      ; preds = %block_0x3a6
  %_new_gep_371 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_36755, i64 -16
  %_allin_new_bt_372 = bitcast i8* %_new_gep_371 to i64*
  %809 = load i64, i64* %_allin_new_bt_372, align 8, !mcsema_real_eip !216
  store i64 %809, i64* %XAX, align 8, !mcsema_real_eip !216
  %810 = add i64 %809, 31, !mcsema_real_eip !217
  %811 = inttoptr i64 %810 to i8*, !mcsema_real_eip !217
  %812 = load i8, i8* %811, align 1, !mcsema_real_eip !217
  %813 = zext i8 %812 to i64
  store i64 %813, i64* %XDI, align 8, !mcsema_real_eip !217
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_373 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.378 = load i64, i64* %XSP, align 8, !mcsema_real_eip !218
  %_new_gep_374 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_373, i64 -8
  %814 = add i64 %RSP_val.378, -8
  %_allin_new_bt_375 = bitcast i8* %_new_gep_374 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_375, align 8, !mcsema_real_eip !218
  store volatile i8* %_new_gep_374, i8** %_RSP_ptr_, align 8
  store i64 %814, i64* %XSP, align 8, !mcsema_real_eip !218
  %815 = call x86_64_sysvcc i64 @_to_byte(i64 %813)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_436 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_437 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_436, i64 8
  store i8* %_gep_fix_437, i8** %_RSP_ptr_, align 8
  store i64 %815, i64* %XAX, align 8, !mcsema_real_eip !218
  %816 = trunc i64 %815 to i32
  %817 = add i32 %816, -4
  %818 = xor i32 %817, %816, !mcsema_real_eip !219
  %819 = and i32 %818, 16, !mcsema_real_eip !219
  %820 = icmp ne i32 %819, 0, !mcsema_real_eip !219
  store i1 %820, i1* %AF, align 1, !mcsema_real_eip !219
  %821 = trunc i32 %817 to i8, !mcsema_real_eip !219
  %822 = call i8 @llvm.ctpop.i8(i8 %821), !mcsema_real_eip !219
  %823 = and i8 %822, 1
  %824 = icmp eq i8 %823, 0
  store i1 %824, i1* %PF, align 1, !mcsema_real_eip !219
  %825 = icmp eq i32 %817, 0, !mcsema_real_eip !219
  store i1 %825, i1* %ZF, align 1, !mcsema_real_eip !219
  %826 = icmp slt i32 %817, 0
  store i1 %826, i1* %SF, align 1, !mcsema_real_eip !219
  %827 = icmp ult i32 %816, 4, !mcsema_real_eip !219
  store i1 %827, i1* %CF, align 1, !mcsema_real_eip !219
  %828 = and i32 %818, %816, !mcsema_real_eip !219
  %829 = icmp slt i32 %828, 0
  store i1 %829, i1* %OF, align 1, !mcsema_real_eip !219
  br i1 %825, label %block_0x411, label %block_0x3fa, !mcsema_real_eip !220

block_0x3fa:                                      ; preds = %block_0x3e4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37656 = load i8*, i8** %12, align 8
  %_new_gep_377 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37656, i64 -20
  %830 = bitcast i8* %_new_gep_377 to i32*
  store i32 -32, i32* %830, align 4, !mcsema_real_eip !221
  br label %block_0x411, !mcsema_real_eip !222

block_0x406:                                      ; preds = %block_0x38e
  %_new_gep_380 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32251, i64 -64
  %831 = bitcast i8* %_new_gep_380 to i32*
  %832 = load i32, i32* %831, align 4, !mcsema_real_eip !223
  %833 = zext i32 %832 to i64, !mcsema_real_eip !223
  store i64 %833, i64* %XAX, align 8, !mcsema_real_eip !223
  %_new_gep_383 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32251, i64 -20
  %834 = bitcast i8* %_new_gep_383 to i32*
  store i32 %832, i32* %834, align 4, !mcsema_real_eip !224
  br label %block_0x411, !mcsema_real_eip !225

block_0x411:                                      ; preds = %block_0x3a6, %block_0x406, %block_0x3fa, %block_0x3e4, %block_0x380
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_38552 = load i8*, i8** %12, align 8
  %_new_gep_386 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_38552, i64 -20
  %835 = bitcast i8* %_new_gep_386 to i32*
  %836 = load i32, i32* %835, align 4, !mcsema_real_eip !226
  %837 = zext i32 %836 to i64, !mcsema_real_eip !226
  store i64 %837, i64* %XAX, align 8, !mcsema_real_eip !226
  br label %block_0x417, !mcsema_real_eip !227

block_0x417:                                      ; preds = %block_0x2d2, %block_0x293, %block_0x1c2, %block_0xd7, %block_0xeb, %block_0xa4, %block_0x79, %block_0x57, %block_0x2f, %block_0x411, %block_0x338, %block_0x24
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_38552.sink = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_38552, %block_0x411 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30149, %block_0x338 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2515, %block_0x24 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4017, %block_0x2f ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5518, %block_0x57 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6420, %block_0x79 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7922, %block_0xa4 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7922, %block_0xeb ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7922, %block_0xd7 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16631, %block_0x1c2 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25343, %block_0x293 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26544, %block_0x2d2 ]
  %EAX_val.389.sink = phi i32 [ %836, %block_0x411 ], [ %619, %block_0x338 ], [ %33, %block_0x24 ], [ -2, %block_0x2f ], [ -3, %block_0x57 ], [ -4, %block_0x79 ], [ -5, %block_0xa4 ], [ -6, %block_0xeb ], [ -6, %block_0xd7 ], [ -7, %block_0x1c2 ], [ -21, %block_0x293 ], [ -22, %block_0x2d2 ]
  %_new_gep_389 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_38552.sink, i64 -4
  %838 = bitcast i8* %_new_gep_389 to i32*
  store i32 %EAX_val.389.sink, i32* %838, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39116 = load i8*, i8** %12, align 8
  %_new_gep_392 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_39116, i64 -4
  %839 = bitcast i8* %_new_gep_392 to i32*
  %840 = load i32, i32* %839, align 4, !mcsema_real_eip !227
  %841 = zext i32 %840 to i64, !mcsema_real_eip !227
  store i64 %841, i64* %XAX, align 8, !mcsema_real_eip !227
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_394 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.391 = load i64, i64* %XSP, align 8, !mcsema_real_eip !228
  %_new_gep_395 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_394, i64 80
  %842 = add i64 %RSP_val.391, 80, !mcsema_real_eip !228
  %_trans_p2i_396 = ptrtoint i8* %_new_gep_395 to i64
  %_trans_p2i_397 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_394 to i64
  %_trans_xor_398 = xor i64 %_trans_p2i_396, %_trans_p2i_397
  %843 = and i64 %_trans_xor_398, 16
  %844 = icmp eq i64 %843, 0
  store i1 %844, i1* %AF, align 1, !mcsema_real_eip !228
  %845 = icmp slt i64 %842, 0
  store i1 %845, i1* %SF, align 1, !mcsema_real_eip !228
  %_trans_icmp_eq_400 = icmp eq i8* %_new_gep_395, null
  store i1 %_trans_icmp_eq_400, i1* %ZF, align 1, !mcsema_real_eip !228
  %846 = xor i64 %_trans_p2i_397, -9223372036854775808, !mcsema_real_eip !228
  %847 = and i64 %_trans_xor_398, %846, !mcsema_real_eip !228
  %848 = icmp slt i64 %847, 0
  store i1 %848, i1* %OF, align 1, !mcsema_real_eip !228
  %_trans_trunc_407 = trunc i64 %_trans_p2i_396 to i8
  %849 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_407), !mcsema_real_eip !228
  %850 = and i8 %849, 1
  %851 = icmp eq i8 %850, 0
  store i1 %851, i1* %PF, align 1, !mcsema_real_eip !228
  %_trans_icmp_ne_409 = icmp ne i64 %RSP_val.391, %_trans_p2i_396
  store i1 %_trans_icmp_ne_409, i1* %CF, align 1, !mcsema_real_eip !228
  store volatile i8* %_new_gep_395, i8** %_RSP_ptr_, align 8
  store i64 %842, i64* %XSP, align 8, !mcsema_real_eip !228
  %_allin_new_bt_411 = bitcast i8* %_new_gep_395 to i64*
  %852 = load i64, i64* %_allin_new_bt_411, align 8, !mcsema_real_eip !229
  store volatile i64 %852, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %852, i64* %XBP, align 8, !mcsema_real_eip !229
  %_new_gep_412 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_394, i64 88
  %853 = add i64 %RSP_val.391, 88, !mcsema_real_eip !229
  store volatile i8* %_new_gep_412, i8** %_RSP_ptr_, align 8
  store i64 %853, i64* %XSP, align 8, !mcsema_real_eip !229
  %_new_gep_414 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_394, i64 96
  %854 = add i64 %RSP_val.391, 96, !mcsema_real_eip !230
  %_allin_new_bt_415 = bitcast i8* %_new_gep_412 to i64*
  %855 = load i64, i64* %_allin_new_bt_415, align 8, !mcsema_real_eip !230
  store i64 %855, i64* %XIP, align 8, !mcsema_real_eip !230
  store volatile i8* %_new_gep_414, i8** %_RSP_ptr_, align 8
  store i64 %854, i64* %XSP, align 8, !mcsema_real_eip !230
  ret void, !mcsema_real_eip !230
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_to_byte(i64) local_unnamed_addr #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_read_bytes(i64, i64, i64) local_unnamed_addr #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_9 = alloca [96 x i8], align 8
  %_local_stack_end_ptr_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_9, i64 0, i64 96
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_9, i64 0, i64 88
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_9, i64 0, i64 8
  %2 = add i64 %RSP_val.1, -88
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_new_gep_ to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !4
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !4
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_, inttoptr (i64 80 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !4
  %9 = and i64 %_trans_xor_, %_trans_p2i_4, !mcsema_real_eip !4
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %_new_gep_14 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_9, i64 0, i64 72
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, align 8, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, align 8, !mcsema_real_eip !5
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_new_gep_20 = getelementptr inbounds [96 x i8], [96 x i8]* %_local_stack_start_ptr_9, i64 0, i64 0
  %11 = add i64 %RSP_val.1, -96
  %_allin_new_bt_21 = bitcast [96 x i8]* %_local_stack_start_ptr_9 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_21, align 8, !mcsema_real_eip !6
  store volatile i8* %_new_gep_20, i8** %_RSP_ptr_, align 8
  store i64 %11, i64* %XSP, align 8, !mcsema_real_eip !6
  %12 = call x86_64_sysvcc i64 @_strlen(i64 %RDI_val.5)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %12, i64* %XAX, align 8, !mcsema_real_eip !6
  %EAX.9 = bitcast i64* %XAX to i32*, !mcsema_real_eip !7
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %XCX, align 8, !mcsema_real_eip !7
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_23 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_22, i64 -32
  %ECX.12 = bitcast i64* %XCX to i32*, !mcsema_real_eip !8
  %15 = bitcast i8* %_new_gep_23 to i32*
  store i32 %13, i32* %15, align 4, !mcsema_real_eip !8
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_26 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -32
  %16 = ptrtoint i8* %_new_gep_26 to i64
  %_offset_above_rbp_441 = sub i64 %16, %_local_end_to_int_
  %_pot_address_in_parent_stack_442 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_441
  %_cond1_443 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_444 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_445 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_446 = or i1 %_cond2_1_444, %_cond2_2_445
  %_cond4_447 = icmp ule i8* %_pot_address_in_parent_stack_442, %_parent_stack_end_ptr_
  %_cond1_n_cond2_448 = and i1 %_cond1_443, %_cond2_446
  %_cond1_n_cond2_cond3_449 = and i1 %_cond1_n_cond2_448, %_cond4_447
  %_address_in_parent_stack_bt_451..v = select i1 %_cond1_n_cond2_cond3_449, i8* %_pot_address_in_parent_stack_442, i8* %_new_gep_26
  %_address_in_parent_stack_bt_451. = bitcast i8* %_address_in_parent_stack_bt_451..v to i32*
  %_new_load_452 = load i32, i32* %_address_in_parent_stack_bt_451., align 4
  %17 = add i32 %_new_load_452, -37
  %18 = xor i32 %17, %_new_load_452, !mcsema_real_eip !9
  %19 = and i32 %18, 16, !mcsema_real_eip !9
  %20 = icmp ne i32 %19, 0, !mcsema_real_eip !9
  store i1 %20, i1* %AF, align 1, !mcsema_real_eip !9
  %21 = trunc i32 %17 to i8, !mcsema_real_eip !9
  %22 = call i8 @llvm.ctpop.i8(i8 %21), !mcsema_real_eip !9
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  store i1 %24, i1* %PF, align 1, !mcsema_real_eip !9
  %25 = icmp eq i32 %17, 0, !mcsema_real_eip !9
  store i1 %25, i1* %ZF, align 1, !mcsema_real_eip !9
  %26 = icmp slt i32 %17, 0
  store i1 %26, i1* %SF, align 1, !mcsema_real_eip !9
  %27 = icmp ult i32 %_new_load_452, 37, !mcsema_real_eip !9
  store i1 %27, i1* %CF, align 1, !mcsema_real_eip !9
  %28 = and i32 %18, %_new_load_452, !mcsema_real_eip !9
  %29 = icmp slt i32 %28, 0
  store i1 %29, i1* %OF, align 1, !mcsema_real_eip !9
  br i1 %25, label %block_0x2f, label %block_0x24, !mcsema_real_eip !10

block_0x24:                                       ; preds = %entry
  %_new_load_467 = load i32, i32* %_address_in_parent_stack_bt_451., align 4
  %30 = zext i32 %_new_load_467 to i64, !mcsema_real_eip !11
  store i64 %30, i64* %XAX, align 8, !mcsema_real_eip !11
  br label %block_0x417, !mcsema_real_eip !12

block_0x2f:                                       ; preds = %entry
  %_new_gep_35 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, i64 -16
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_468 = ptrtoint i8* %_new_gep_35 to i64
  %_offset_above_rbp_471 = sub i64 %_ptr_to_int_468, %_local_end_to_int_
  %_pot_address_in_parent_stack_472 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_471
  %_cond1_473 = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_474 = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_475 = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_476 = or i1 %_cond2_1_474, %_cond2_2_475
  %_cond4_477 = icmp ule i8* %_pot_address_in_parent_stack_472, %_parent_stack_end_ptr_
  %_cond1_n_cond2_478 = and i1 %_cond1_473, %_cond2_476
  %_cond1_n_cond2_cond3_479 = and i1 %_cond1_n_cond2_478, %_cond4_477
  %_address_in_parent_stack_bt_481 = bitcast i8* %_pot_address_in_parent_stack_472 to i64*
  %_address_in_parent_stack_bt_481._allin_new_bt_36 = select i1 %_cond1_n_cond2_cond3_479, i64* %_address_in_parent_stack_bt_481, i64* %_allin_new_bt_36
  %_new_load_482 = load i64, i64* %_address_in_parent_stack_bt_481._allin_new_bt_36, align 8
  %31 = add i64 %_new_load_482, 4, !mcsema_real_eip !14
  %32 = xor i64 %31, %_new_load_482, !mcsema_real_eip !14
  %33 = and i64 %32, 16, !mcsema_real_eip !14
  %34 = icmp ne i64 %33, 0, !mcsema_real_eip !14
  store i1 %34, i1* %AF, align 1, !mcsema_real_eip !14
  %35 = icmp slt i64 %31, 0
  store i1 %35, i1* %SF, align 1, !mcsema_real_eip !14
  %36 = icmp eq i64 %31, 0, !mcsema_real_eip !14
  store i1 %36, i1* %ZF, align 1, !mcsema_real_eip !14
  %37 = xor i64 %_new_load_482, -9223372036854775808, !mcsema_real_eip !14
  %38 = and i64 %32, %37, !mcsema_real_eip !14
  %39 = icmp slt i64 %38, 0
  store i1 %39, i1* %OF, align 1, !mcsema_real_eip !14
  %40 = trunc i64 %31 to i8, !mcsema_real_eip !14
  %41 = call i8 @llvm.ctpop.i8(i8 %40), !mcsema_real_eip !14
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  store i1 %43, i1* %PF, align 1, !mcsema_real_eip !14
  %44 = icmp ugt i64 %_new_load_482, -5
  store i1 %44, i1* %CF, align 1, !mcsema_real_eip !14
  store i64 %31, i64* %XAX, align 8, !mcsema_real_eip !14
  store i64 %31, i64* %_allin_new_bt_36, align 8, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_41 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, i64 -16
  %_ptr_to_int_483 = ptrtoint i8* %_new_gep_41 to i64
  %_offset_above_rbp_486 = sub i64 %_ptr_to_int_483, %_local_end_to_int_
  %_pot_address_in_parent_stack_487 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_486
  %_cond1_488 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_489 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_490 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_491 = or i1 %_cond2_1_489, %_cond2_2_490
  %_cond4_492 = icmp ule i8* %_pot_address_in_parent_stack_487, %_parent_stack_end_ptr_
  %_cond1_n_cond2_493 = and i1 %_cond1_488, %_cond2_491
  %_cond1_n_cond2_cond3_494 = and i1 %_cond1_n_cond2_493, %_cond4_492
  %.v11 = select i1 %_cond1_n_cond2_cond3_494, i8* %_pot_address_in_parent_stack_487, i8* %_new_gep_41
  %45 = bitcast i8* %.v11 to i64*
  %_new_load_497 = load i64, i64* %45, align 8
  store i64 %_new_load_497, i64* %XAX, align 8, !mcsema_real_eip !16
  %46 = inttoptr i64 %_new_load_497 to i8*, !mcsema_real_eip !17
  %_offset_above_rbp_500 = sub i64 %_new_load_497, %_local_end_to_int_
  %_pot_address_in_parent_stack_501 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_500
  %_cond1_502 = icmp ult i8* %_local_stack_end_ptr_, %46
  %_cond2_1_503 = icmp ugt i8* %46, %_parent_stack_end_ptr_
  %_cond2_2_504 = icmp ult i8* %46, %_parent_stack_start_ptr_
  %_cond2_505 = or i1 %_cond2_1_503, %_cond2_2_504
  %_cond4_506 = icmp ule i8* %_pot_address_in_parent_stack_501, %_parent_stack_end_ptr_
  %_cond1_n_cond2_507 = and i1 %_cond1_502, %_cond2_505
  %_cond1_n_cond2_cond3_508 = and i1 %_cond4_506, %_cond1_n_cond2_507
  %_pot_address_in_parent_stack_501. = select i1 %_cond1_n_cond2_cond3_508, i8* %_pot_address_in_parent_stack_501, i8* %46
  %_new_load_510 = load i8, i8* %_pot_address_in_parent_stack_501., align 1
  %47 = sext i8 %_new_load_510 to i64
  %48 = and i64 %47, 4294967295
  store i64 %48, i64* %XCX, align 8, !mcsema_real_eip !17
  %49 = sext i8 %_new_load_510 to i32
  %50 = add nsw i32 %49, -100
  %51 = xor i32 %50, %49, !mcsema_real_eip !18
  %52 = and i32 %51, 16, !mcsema_real_eip !18
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !18
  store i1 %53, i1* %AF, align 1, !mcsema_real_eip !18
  %54 = trunc i32 %50 to i8, !mcsema_real_eip !18
  %55 = call i8 @llvm.ctpop.i8(i8 %54), !mcsema_real_eip !18
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  store i1 %57, i1* %PF, align 1, !mcsema_real_eip !18
  %58 = icmp eq i32 %50, 0, !mcsema_real_eip !18
  store i1 %58, i1* %ZF, align 1, !mcsema_real_eip !18
  %59 = icmp slt i8 %_new_load_510, 100
  store i1 %59, i1* %SF, align 1, !mcsema_real_eip !18
  %60 = icmp ult i8 %_new_load_510, 100
  store i1 %60, i1* %CF, align 1, !mcsema_real_eip !18
  %61 = and i32 %51, %49, !mcsema_real_eip !18
  %62 = icmp slt i32 %61, 0
  store i1 %62, i1* %OF, align 1, !mcsema_real_eip !18
  br i1 %58, label %block_0x57, label %block_0x417, !mcsema_real_eip !19

block_0x57:                                       ; preds = %block_0x2f
  %_new_load_525 = load i64, i64* %45, align 8
  store i64 %_new_load_525, i64* %XAX, align 8, !mcsema_real_eip !20
  %63 = add i64 %_new_load_525, 1, !mcsema_real_eip !21
  %64 = inttoptr i64 %63 to i8*, !mcsema_real_eip !21
  %_offset_above_rbp_528 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_529 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_528
  %_cond1_530 = icmp ult i8* %_local_stack_end_ptr_, %64
  %_cond2_1_531 = icmp ugt i8* %64, %_parent_stack_end_ptr_
  %_cond2_2_532 = icmp ult i8* %64, %_parent_stack_start_ptr_
  %_cond2_533 = or i1 %_cond2_1_531, %_cond2_2_532
  %_cond4_534 = icmp ule i8* %_pot_address_in_parent_stack_529, %_parent_stack_end_ptr_
  %_cond1_n_cond2_535 = and i1 %_cond1_530, %_cond2_533
  %_cond1_n_cond2_cond3_536 = and i1 %_cond4_534, %_cond1_n_cond2_535
  %65 = select i1 %_cond1_n_cond2_cond3_536, i8* %_pot_address_in_parent_stack_529, i8* %64
  %_new_load_538 = load i8, i8* %65, align 1
  %66 = zext i8 %_new_load_538 to i64
  store i64 %66, i64* %XDI, align 8, !mcsema_real_eip !21
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.31 = load i64, i64* %XSP, align 8, !mcsema_real_eip !22
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 -8
  %67 = add i64 %RSP_val.31, -8
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_, align 8
  store i64 %67, i64* %XSP, align 8, !mcsema_real_eip !22
  %68 = call x86_64_sysvcc i64 @_to_byte(i64 %66)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_417 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416, i64 8
  store i8* %_gep_fix_417, i8** %_RSP_ptr_, align 8
  store i64 %68, i64* %XAX, align 8, !mcsema_real_eip !22
  %69 = trunc i64 %68 to i32
  %70 = add i32 %69, -9
  %71 = xor i32 %70, %69, !mcsema_real_eip !23
  %72 = and i32 %71, 16, !mcsema_real_eip !23
  %73 = icmp ne i32 %72, 0, !mcsema_real_eip !23
  store i1 %73, i1* %AF, align 1, !mcsema_real_eip !23
  %74 = trunc i32 %70 to i8, !mcsema_real_eip !23
  %75 = call i8 @llvm.ctpop.i8(i8 %74), !mcsema_real_eip !23
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  store i1 %77, i1* %PF, align 1, !mcsema_real_eip !23
  %78 = icmp eq i32 %70, 0, !mcsema_real_eip !23
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !23
  %79 = icmp slt i32 %70, 0
  store i1 %79, i1* %SF, align 1, !mcsema_real_eip !23
  %80 = icmp ult i32 %69, 9, !mcsema_real_eip !23
  store i1 %80, i1* %CF, align 1, !mcsema_real_eip !23
  %81 = and i32 %71, %69, !mcsema_real_eip !23
  %82 = icmp slt i32 %81, 0
  store i1 %82, i1* %OF, align 1, !mcsema_real_eip !23
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_, align 8
  br i1 %78, label %block_0x79, label %block_0x417, !mcsema_real_eip !24

block_0x79:                                       ; preds = %block_0x57
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -16
  %_ptr_to_int_539 = ptrtoint i8* %_new_gep_56 to i64
  %_offset_above_rbp_542 = sub i64 %_ptr_to_int_539, %_local_end_to_int_
  %_pot_address_in_parent_stack_543 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_542
  %_cond1_544 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_545 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_546 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_547 = or i1 %_cond2_1_545, %_cond2_2_546
  %_cond4_548 = icmp ule i8* %_pot_address_in_parent_stack_543, %_parent_stack_end_ptr_
  %_cond1_n_cond2_549 = and i1 %_cond1_544, %_cond2_547
  %_cond1_n_cond2_cond3_550 = and i1 %_cond1_n_cond2_549, %_cond4_548
  %_address_in_parent_stack_bt_552._allin_new_bt_57.v = select i1 %_cond1_n_cond2_cond3_550, i8* %_pot_address_in_parent_stack_543, i8* %_new_gep_56
  %_address_in_parent_stack_bt_552._allin_new_bt_57 = bitcast i8* %_address_in_parent_stack_bt_552._allin_new_bt_57.v to i64*
  %_new_load_553 = load i64, i64* %_address_in_parent_stack_bt_552._allin_new_bt_57, align 8
  store i64 %_new_load_553, i64* %XAX, align 8, !mcsema_real_eip !25
  %83 = add i64 %_new_load_553, 2, !mcsema_real_eip !26
  %84 = inttoptr i64 %83 to i8*, !mcsema_real_eip !26
  %_offset_above_rbp_556 = sub i64 %83, %_local_end_to_int_
  %_pot_address_in_parent_stack_557 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_556
  %_cond1_558 = icmp ult i8* %_local_stack_end_ptr_, %84
  %_cond2_1_559 = icmp ugt i8* %84, %_parent_stack_end_ptr_
  %_cond2_2_560 = icmp ult i8* %84, %_parent_stack_start_ptr_
  %_cond2_561 = or i1 %_cond2_1_559, %_cond2_2_560
  %_cond4_562 = icmp ule i8* %_pot_address_in_parent_stack_557, %_parent_stack_end_ptr_
  %_cond1_n_cond2_563 = and i1 %_cond1_558, %_cond2_561
  %_cond1_n_cond2_cond3_564 = and i1 %_cond4_562, %_cond1_n_cond2_563
  %85 = select i1 %_cond1_n_cond2_cond3_564, i8* %_pot_address_in_parent_stack_557, i8* %84
  %_new_load_566 = load i8, i8* %85, align 1
  %86 = zext i8 %_new_load_566 to i64
  store i64 %86, i64* %XDI, align 8, !mcsema_real_eip !26
  %RSP_val.38 = load i64, i64* %XSP, align 8, !mcsema_real_eip !27
  %87 = add i64 %RSP_val.38, -8
  %_allin_new_bt_60 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !27
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416, i8** %_RSP_ptr_, align 8
  store i64 %87, i64* %XSP, align 8, !mcsema_real_eip !27
  %88 = call x86_64_sysvcc i64 @_to_byte(i64 %86)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_418 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_419 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_418, i64 8
  store i8* %_gep_fix_419, i8** %_RSP_ptr_, align 8
  store i64 %88, i64* %XAX, align 8, !mcsema_real_eip !27
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -24
  %89 = trunc i64 %88 to i32
  %90 = bitcast i8* %_new_gep_62 to i32*
  store i32 %89, i32* %90, align 4, !mcsema_real_eip !28
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64, i64 -24
  %91 = ptrtoint i8* %_new_gep_65 to i64
  %_offset_above_rbp_570 = sub i64 %91, %_local_end_to_int_
  %_pot_address_in_parent_stack_571 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_570
  %_cond1_572 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_573 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_574 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_575 = or i1 %_cond2_1_573, %_cond2_2_574
  %_cond4_576 = icmp ule i8* %_pot_address_in_parent_stack_571, %_parent_stack_end_ptr_
  %_cond1_n_cond2_577 = and i1 %_cond1_572, %_cond2_575
  %_cond1_n_cond2_cond3_578 = and i1 %_cond1_n_cond2_577, %_cond4_576
  %_address_in_parent_stack_bt_580..v = select i1 %_cond1_n_cond2_cond3_578, i8* %_pot_address_in_parent_stack_571, i8* %_new_gep_65
  %_address_in_parent_stack_bt_580. = bitcast i8* %_address_in_parent_stack_bt_580..v to i32*
  %_new_load_581 = load i32, i32* %_address_in_parent_stack_bt_580., align 4
  %92 = shl i32 %_new_load_581, 1, !mcsema_real_eip !30
  %93 = zext i32 %92 to i64, !mcsema_real_eip !30
  store i64 %93, i64* %XAX, align 8, !mcsema_real_eip !30
  %94 = add i32 %92, -26
  %95 = xor i32 %94, %92, !mcsema_real_eip !31
  %96 = and i32 %95, 16
  %97 = icmp eq i32 %96, 0
  store i1 %97, i1* %AF, align 1, !mcsema_real_eip !31
  %98 = trunc i32 %94 to i8, !mcsema_real_eip !31
  %99 = call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !31
  %100 = and i8 %99, 1
  %101 = icmp eq i8 %100, 0
  store i1 %101, i1* %PF, align 1, !mcsema_real_eip !31
  %102 = icmp eq i32 %94, 0, !mcsema_real_eip !31
  store i1 %102, i1* %ZF, align 1, !mcsema_real_eip !31
  %103 = icmp slt i32 %94, 0
  store i1 %103, i1* %SF, align 1, !mcsema_real_eip !31
  %104 = icmp ult i32 %92, 26, !mcsema_real_eip !31
  store i1 %104, i1* %CF, align 1, !mcsema_real_eip !31
  %105 = and i32 %95, %92, !mcsema_real_eip !31
  %106 = icmp slt i32 %105, 0
  store i1 %106, i1* %OF, align 1, !mcsema_real_eip !31
  br i1 %102, label %block_0xa4, label %block_0x417, !mcsema_real_eip !32

block_0xa4:                                       ; preds = %block_0x79
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64, i64 -16
  %_ptr_to_int_582 = ptrtoint i8* %_new_gep_71 to i64
  %_offset_above_rbp_585 = sub i64 %_ptr_to_int_582, %_local_end_to_int_
  %_pot_address_in_parent_stack_586 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_585
  %_cond1_587 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_588 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_589 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_590 = or i1 %_cond2_1_588, %_cond2_2_589
  %_cond4_591 = icmp ule i8* %_pot_address_in_parent_stack_586, %_parent_stack_end_ptr_
  %_cond1_n_cond2_592 = and i1 %_cond1_587, %_cond2_590
  %_cond1_n_cond2_cond3_593 = and i1 %_cond1_n_cond2_592, %_cond4_591
  %_address_in_parent_stack_bt_595._allin_new_bt_72.v = select i1 %_cond1_n_cond2_cond3_593, i8* %_pot_address_in_parent_stack_586, i8* %_new_gep_71
  %_address_in_parent_stack_bt_595._allin_new_bt_72 = bitcast i8* %_address_in_parent_stack_bt_595._allin_new_bt_72.v to i64*
  %_new_load_596 = load i64, i64* %_address_in_parent_stack_bt_595._allin_new_bt_72, align 8
  store i64 %_new_load_596, i64* %XAX, align 8, !mcsema_real_eip !33
  %107 = add i64 %_new_load_596, 3, !mcsema_real_eip !34
  %108 = inttoptr i64 %107 to i8*, !mcsema_real_eip !34
  %_offset_above_rbp_599 = sub i64 %107, %_local_end_to_int_
  %_pot_address_in_parent_stack_600 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_599
  %_cond1_601 = icmp ult i8* %_local_stack_end_ptr_, %108
  %_cond2_1_602 = icmp ugt i8* %108, %_parent_stack_end_ptr_
  %_cond2_2_603 = icmp ult i8* %108, %_parent_stack_start_ptr_
  %_cond2_604 = or i1 %_cond2_1_602, %_cond2_2_603
  %_cond4_605 = icmp ule i8* %_pot_address_in_parent_stack_600, %_parent_stack_end_ptr_
  %_cond1_n_cond2_606 = and i1 %_cond1_601, %_cond2_604
  %_cond1_n_cond2_cond3_607 = and i1 %_cond4_605, %_cond1_n_cond2_606
  %109 = select i1 %_cond1_n_cond2_cond3_607, i8* %_pot_address_in_parent_stack_600, i8* %108
  %_new_load_609 = load i8, i8* %109, align 1
  %110 = zext i8 %_new_load_609 to i64
  store i64 %110, i64* %XDI, align 8, !mcsema_real_eip !34
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_73 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.51 = load i64, i64* %XSP, align 8, !mcsema_real_eip !35
  %_new_gep_74 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_73, i64 -8
  %111 = add i64 %RSP_val.51, -8
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !35
  store volatile i8* %_new_gep_74, i8** %_RSP_ptr_, align 8
  store i64 %111, i64* %XSP, align 8, !mcsema_real_eip !35
  %112 = call x86_64_sysvcc i64 @_to_byte(i64 %110)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_420 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_421 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_420, i64 8
  store i8* %_gep_fix_421, i8** %_RSP_ptr_, align 8
  store i64 %112, i64* %XAX, align 8, !mcsema_real_eip !35
  store i64 2, i64* %XDI, align 8, !mcsema_real_eip !36
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_77 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_76, i64 -28
  %113 = trunc i64 %112 to i32
  %114 = bitcast i8* %_new_gep_77 to i32*
  store i32 %113, i32* %114, align 4, !mcsema_real_eip !37
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, i64 -28
  %115 = ptrtoint i8* %_new_gep_80 to i64
  %_offset_above_rbp_613 = sub i64 %115, %_local_end_to_int_
  %_pot_address_in_parent_stack_614 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_613
  %_cond1_615 = icmp ugt i8* %_new_gep_80, %_local_stack_end_ptr_
  %_cond2_1_616 = icmp ugt i8* %_new_gep_80, %_parent_stack_end_ptr_
  %_cond2_2_617 = icmp ult i8* %_new_gep_80, %_parent_stack_start_ptr_
  %_cond2_618 = or i1 %_cond2_1_616, %_cond2_2_617
  %_cond4_619 = icmp ule i8* %_pot_address_in_parent_stack_614, %_parent_stack_end_ptr_
  %_cond1_n_cond2_620 = and i1 %_cond1_615, %_cond2_618
  %_cond1_n_cond2_cond3_621 = and i1 %_cond1_n_cond2_620, %_cond4_619
  %_address_in_parent_stack_bt_623..v = select i1 %_cond1_n_cond2_cond3_621, i8* %_pot_address_in_parent_stack_614, i8* %_new_gep_80
  %_address_in_parent_stack_bt_623. = bitcast i8* %_address_in_parent_stack_bt_623..v to i32*
  %_new_load_624 = load i32, i32* %_address_in_parent_stack_bt_623., align 4
  %116 = add i32 %_new_load_624, 1, !mcsema_real_eip !39
  %EAX_val.59.lobit = ashr i32 %116, 31
  %117 = zext i32 %EAX_val.59.lobit to i64
  %EDI.60 = bitcast i64* %XDI to i32*, !mcsema_real_eip !40
  %EDI_val.61 = load i32, i32* %EDI.60, align 4, !mcsema_real_eip !40
  %118 = shl nuw i64 %117, 32, !mcsema_real_eip !40
  %119 = sext i32 %116 to i64, !mcsema_real_eip !40
  %120 = or i64 %118, %119, !mcsema_real_eip !40
  %121 = sext i32 %EDI_val.61 to i64, !mcsema_real_eip !40
  %122 = sdiv i64 %120, %121, !mcsema_real_eip !40
  %123 = srem i64 %120, %121, !mcsema_real_eip !40
  %124 = and i64 %123, 4294967295
  store i64 %124, i64* %XDX, align 8, !mcsema_real_eip !40
  %125 = and i64 %122, 4294967295
  store i64 %125, i64* %XAX, align 8, !mcsema_real_eip !40
  %126 = trunc i64 %122 to i32
  %127 = add i32 %126, -7
  %128 = xor i32 %127, %126, !mcsema_real_eip !41
  %129 = and i32 %128, 16, !mcsema_real_eip !41
  %130 = icmp ne i32 %129, 0, !mcsema_real_eip !41
  store i1 %130, i1* %AF, align 1, !mcsema_real_eip !41
  %131 = trunc i32 %127 to i8, !mcsema_real_eip !41
  %132 = call i8 @llvm.ctpop.i8(i8 %131), !mcsema_real_eip !41
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  store i1 %134, i1* %PF, align 1, !mcsema_real_eip !41
  %135 = icmp eq i32 %127, 0, !mcsema_real_eip !41
  store i1 %135, i1* %ZF, align 1, !mcsema_real_eip !41
  %136 = icmp slt i32 %127, 0
  store i1 %136, i1* %SF, align 1, !mcsema_real_eip !41
  %137 = icmp ult i32 %126, 7, !mcsema_real_eip !41
  store i1 %137, i1* %CF, align 1, !mcsema_real_eip !41
  %138 = and i32 %128, %126, !mcsema_real_eip !41
  %139 = icmp slt i32 %138, 0
  store i1 %139, i1* %OF, align 1, !mcsema_real_eip !41
  br i1 %135, label %block_0xd7, label %block_0x417, !mcsema_real_eip !42

block_0xd7:                                       ; preds = %block_0xa4
  %_new_gep_86 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, i64 -16
  %_ptr_to_int_625 = ptrtoint i8* %_new_gep_86 to i64
  %_offset_above_rbp_628 = sub i64 %_ptr_to_int_625, %_local_end_to_int_
  %_pot_address_in_parent_stack_629 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_628
  %_cond1_630 = icmp ugt i8* %_new_gep_86, %_local_stack_end_ptr_
  %_cond2_1_631 = icmp ugt i8* %_new_gep_86, %_parent_stack_end_ptr_
  %_cond2_2_632 = icmp ult i8* %_new_gep_86, %_parent_stack_start_ptr_
  %_cond2_633 = or i1 %_cond2_1_631, %_cond2_2_632
  %_cond4_634 = icmp ule i8* %_pot_address_in_parent_stack_629, %_parent_stack_end_ptr_
  %_cond1_n_cond2_635 = and i1 %_cond1_630, %_cond2_633
  %_cond1_n_cond2_cond3_636 = and i1 %_cond1_n_cond2_635, %_cond4_634
  %_address_in_parent_stack_bt_638._allin_new_bt_87.v = select i1 %_cond1_n_cond2_cond3_636, i8* %_pot_address_in_parent_stack_629, i8* %_new_gep_86
  %_address_in_parent_stack_bt_638._allin_new_bt_87 = bitcast i8* %_address_in_parent_stack_bt_638._allin_new_bt_87.v to i64*
  %_new_load_639 = load i64, i64* %_address_in_parent_stack_bt_638._allin_new_bt_87, align 8
  store i64 %_new_load_639, i64* %XAX, align 8, !mcsema_real_eip !43
  %140 = add i64 %_new_load_639, 4, !mcsema_real_eip !44
  %141 = inttoptr i64 %140 to i8*, !mcsema_real_eip !44
  %_offset_above_rbp_642 = sub i64 %140, %_local_end_to_int_
  %_pot_address_in_parent_stack_643 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_642
  %_cond1_644 = icmp ult i8* %_local_stack_end_ptr_, %141
  %_cond2_1_645 = icmp ugt i8* %141, %_parent_stack_end_ptr_
  %_cond2_2_646 = icmp ult i8* %141, %_parent_stack_start_ptr_
  %_cond2_647 = or i1 %_cond2_1_645, %_cond2_2_646
  %_cond4_648 = icmp ule i8* %_pot_address_in_parent_stack_643, %_parent_stack_end_ptr_
  %_cond1_n_cond2_649 = and i1 %_cond1_644, %_cond2_647
  %_cond1_n_cond2_cond3_650 = and i1 %_cond4_648, %_cond1_n_cond2_649
  %142 = select i1 %_cond1_n_cond2_cond3_650, i8* %_pot_address_in_parent_stack_643, i8* %141
  %_new_load_652 = load i8, i8* %142, align 1
  %143 = and i8 %_new_load_652, 15
  %144 = zext i8 %143 to i32
  %145 = icmp eq i8 %143, 0
  %146 = zext i8 %143 to i64
  store i64 %146, i64* %XCX, align 8, !mcsema_real_eip !45
  %147 = add nsw i32 %144, -1
  %148 = add nuw nsw i8 %143, 31
  %149 = and i8 %148, 16
  %150 = icmp ne i8 %149, 0
  store i1 %150, i1* %AF, align 1, !mcsema_real_eip !46
  %151 = trunc i32 %147 to i8, !mcsema_real_eip !46
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !46
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  store i1 %154, i1* %PF, align 1, !mcsema_real_eip !46
  %155 = icmp eq i32 %147, 0, !mcsema_real_eip !46
  store i1 %155, i1* %ZF, align 1, !mcsema_real_eip !46
  %156 = icmp eq i8 %143, 0
  store i1 %156, i1* %SF, align 1, !mcsema_real_eip !46
  store i1 %145, i1* %CF, align 1, !mcsema_real_eip !46
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !46
  br i1 %155, label %block_0xeb, label %block_0x417, !mcsema_real_eip !47

block_0xeb:                                       ; preds = %block_0xd7
  %_new_load_667 = load i64, i64* %_address_in_parent_stack_bt_638._allin_new_bt_87, align 8
  store i64 %_new_load_667, i64* %XAX, align 8, !mcsema_real_eip !48
  %157 = add i64 %_new_load_667, 4, !mcsema_real_eip !49
  %158 = inttoptr i64 %157 to i8*, !mcsema_real_eip !49
  %_offset_above_rbp_670 = sub i64 %157, %_local_end_to_int_
  %_pot_address_in_parent_stack_671 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_670
  %_cond1_672 = icmp ult i8* %_local_stack_end_ptr_, %158
  %_cond2_1_673 = icmp ugt i8* %158, %_parent_stack_end_ptr_
  %_cond2_2_674 = icmp ult i8* %158, %_parent_stack_start_ptr_
  %_cond2_675 = or i1 %_cond2_1_673, %_cond2_2_674
  %_cond4_676 = icmp ule i8* %_pot_address_in_parent_stack_671, %_parent_stack_end_ptr_
  %_cond1_n_cond2_677 = and i1 %_cond1_672, %_cond2_675
  %_cond1_n_cond2_cond3_678 = and i1 %_cond4_676, %_cond1_n_cond2_677
  %159 = select i1 %_cond1_n_cond2_cond3_678, i8* %_pot_address_in_parent_stack_671, i8* %158
  %_new_load_680 = load i8, i8* %159, align 1
  %160 = and i8 %_new_load_680, -16
  %161 = zext i8 %160 to i32
  %162 = zext i8 %160 to i64
  store i64 %162, i64* %XCX, align 8, !mcsema_real_eip !50
  %163 = add nsw i32 %161, -48
  %164 = xor i32 %163, %161, !mcsema_real_eip !51
  %165 = and i32 %164, 16
  %166 = icmp eq i32 %165, 0
  store i1 %166, i1* %AF, align 1, !mcsema_real_eip !51
  %167 = trunc i32 %163 to i8, !mcsema_real_eip !51
  %168 = call i8 @llvm.ctpop.i8(i8 %167), !mcsema_real_eip !51
  %169 = and i8 %168, 1
  %170 = icmp eq i8 %169, 0
  store i1 %170, i1* %PF, align 1, !mcsema_real_eip !51
  %171 = icmp eq i32 %163, 0, !mcsema_real_eip !51
  store i1 %171, i1* %ZF, align 1, !mcsema_real_eip !51
  %172 = icmp ult i8 %160, 48
  store i1 %172, i1* %SF, align 1, !mcsema_real_eip !51
  %173 = icmp ult i8 %160, 48
  store i1 %173, i1* %CF, align 1, !mcsema_real_eip !51
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !51
  br i1 %171, label %block_0x102, label %block_0x417, !mcsema_real_eip !52

block_0x102:                                      ; preds = %block_0xeb
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, i64 -20
  %174 = bitcast i8* %_new_gep_92 to i32*
  store i32 -4, i32* %174, align 4, !mcsema_real_eip !53
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_97 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_98 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_97, i64 -16
  %_ptr_to_int_681 = ptrtoint i8* %_new_gep_98 to i64
  %_offset_above_rbp_684 = sub i64 %_ptr_to_int_681, %_local_end_to_int_
  %_pot_address_in_parent_stack_685 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_684
  %_cond1_686 = icmp ugt i8* %_new_gep_98, %_local_stack_end_ptr_
  %_cond2_1_687 = icmp ugt i8* %_new_gep_98, %_parent_stack_end_ptr_
  %_cond2_2_688 = icmp ult i8* %_new_gep_98, %_parent_stack_start_ptr_
  %_cond2_689 = or i1 %_cond2_1_687, %_cond2_2_688
  %_cond4_690 = icmp ule i8* %_pot_address_in_parent_stack_685, %_parent_stack_end_ptr_
  %_cond1_n_cond2_691 = and i1 %_cond1_686, %_cond2_689
  %_cond1_n_cond2_cond3_692 = and i1 %_cond1_n_cond2_691, %_cond4_690
  %.v12 = select i1 %_cond1_n_cond2_cond3_692, i8* %_pot_address_in_parent_stack_685, i8* %_new_gep_98
  %175 = bitcast i8* %.v12 to i64*
  %_new_load_695 = load i64, i64* %175, align 8
  store i64 %_new_load_695, i64* %XAX, align 8, !mcsema_real_eip !54
  %176 = add i64 %_new_load_695, 5, !mcsema_real_eip !55
  %177 = inttoptr i64 %176 to i8*, !mcsema_real_eip !55
  %_offset_above_rbp_698 = sub i64 %176, %_local_end_to_int_
  %_pot_address_in_parent_stack_699 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_698
  %_cond1_700 = icmp ult i8* %_local_stack_end_ptr_, %177
  %_cond2_1_701 = icmp ugt i8* %177, %_parent_stack_end_ptr_
  %_cond2_2_702 = icmp ult i8* %177, %_parent_stack_start_ptr_
  %_cond2_703 = or i1 %_cond2_1_701, %_cond2_2_702
  %_cond4_704 = icmp ule i8* %_pot_address_in_parent_stack_699, %_parent_stack_end_ptr_
  %_cond1_n_cond2_705 = and i1 %_cond1_700, %_cond2_703
  %_cond1_n_cond2_cond3_706 = and i1 %_cond4_704, %_cond1_n_cond2_705
  %_pot_address_in_parent_stack_699. = select i1 %_cond1_n_cond2_cond3_706, i8* %_pot_address_in_parent_stack_699, i8* %177
  %_new_load_708 = load i8, i8* %_pot_address_in_parent_stack_699., align 1
  %178 = and i8 %_new_load_708, 15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !56
  %179 = icmp eq i8 %178, 0
  store i1 %179, i1* %ZF, align 1, !mcsema_real_eip !56
  %180 = call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !56
  %181 = and i8 %180, 1
  %182 = icmp eq i8 %181, 0
  store i1 %182, i1* %PF, align 1, !mcsema_real_eip !56
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !56
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !56
  %183 = zext i8 %178 to i64
  store i64 %183, i64* %XCX, align 8, !mcsema_real_eip !56
  %CL.87 = bitcast i64* %XCX to i8*, !mcsema_real_eip !57
  %DL.89 = bitcast i64* %XDX to i8*, !mcsema_real_eip !57
  store i8 %178, i8* %DL.89, align 1, !mcsema_real_eip !57
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_97, i64 -33
  store i8 %178, i8* %_new_gep_101, align 1, !mcsema_real_eip !58
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -16
  %_ptr_to_int_709 = ptrtoint i8* %_new_gep_104 to i64
  %_offset_above_rbp_712 = sub i64 %_ptr_to_int_709, %_local_end_to_int_
  %_pot_address_in_parent_stack_713 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_712
  %_cond1_714 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_715 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_716 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_717 = or i1 %_cond2_1_715, %_cond2_2_716
  %_cond4_718 = icmp ule i8* %_pot_address_in_parent_stack_713, %_parent_stack_end_ptr_
  %_cond1_n_cond2_719 = and i1 %_cond1_714, %_cond2_717
  %_cond1_n_cond2_cond3_720 = and i1 %_cond1_n_cond2_719, %_cond4_718
  %.v13 = select i1 %_cond1_n_cond2_cond3_720, i8* %_pot_address_in_parent_stack_713, i8* %_new_gep_104
  %184 = bitcast i8* %.v13 to i64*
  %_new_load_723 = load i64, i64* %184, align 8
  store i64 %_new_load_723, i64* %XAX, align 8, !mcsema_real_eip !59
  %185 = add i64 %_new_load_723, 5, !mcsema_real_eip !60
  %186 = inttoptr i64 %185 to i8*, !mcsema_real_eip !60
  %_offset_above_rbp_726 = sub i64 %185, %_local_end_to_int_
  %_pot_address_in_parent_stack_727 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_726
  %_cond1_728 = icmp ult i8* %_local_stack_end_ptr_, %186
  %_cond2_1_729 = icmp ugt i8* %186, %_parent_stack_end_ptr_
  %_cond2_2_730 = icmp ult i8* %186, %_parent_stack_start_ptr_
  %_cond2_731 = or i1 %_cond2_1_729, %_cond2_2_730
  %_cond4_732 = icmp ule i8* %_pot_address_in_parent_stack_727, %_parent_stack_end_ptr_
  %_cond1_n_cond2_733 = and i1 %_cond1_728, %_cond2_731
  %_cond1_n_cond2_cond3_734 = and i1 %_cond4_732, %_cond1_n_cond2_733
  %_pot_address_in_parent_stack_727. = select i1 %_cond1_n_cond2_cond3_734, i8* %_pot_address_in_parent_stack_727, i8* %186
  %_new_load_736 = load i8, i8* %_pot_address_in_parent_stack_727., align 1
  %187 = and i8 %_new_load_736, -16
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !61
  %188 = icmp eq i8 %187, 0
  store i1 %188, i1* %ZF, align 1, !mcsema_real_eip !61
  %189 = call i8 @llvm.ctpop.i8(i8 %187), !mcsema_real_eip !61
  %190 = and i8 %189, 1
  %191 = icmp eq i8 %190, 0
  store i1 %191, i1* %PF, align 1, !mcsema_real_eip !61
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !61
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !61
  %192 = zext i8 %187 to i64
  store i64 %192, i64* %XCX, align 8, !mcsema_real_eip !61
  store i8 %187, i8* %DL.89, align 1, !mcsema_real_eip !62
  %_new_gep_107 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_103, i64 -34
  store i8 %187, i8* %_new_gep_107, align 1, !mcsema_real_eip !63
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_109 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_110 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_109, i64 -33
  %193 = ptrtoint i8* %_new_gep_110 to i64
  %_offset_above_rbp_739 = sub i64 %193, %_local_end_to_int_
  %_pot_address_in_parent_stack_740 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_739
  %_cond1_741 = icmp ugt i8* %_new_gep_110, %_local_stack_end_ptr_
  %_cond2_1_742 = icmp ugt i8* %_new_gep_110, %_parent_stack_end_ptr_
  %_cond2_2_743 = icmp ult i8* %_new_gep_110, %_parent_stack_start_ptr_
  %_cond2_744 = or i1 %_cond2_1_742, %_cond2_2_743
  %_cond4_745 = icmp ule i8* %_pot_address_in_parent_stack_740, %_parent_stack_end_ptr_
  %_cond1_n_cond2_746 = and i1 %_cond1_741, %_cond2_744
  %_cond1_n_cond2_cond3_747 = and i1 %_cond1_n_cond2_746, %_cond4_745
  %194 = select i1 %_cond1_n_cond2_cond3_747, i8* %_pot_address_in_parent_stack_740, i8* %_new_gep_110
  %_new_load_749 = load i8, i8* %194, align 1
  %195 = zext i8 %_new_load_749 to i64
  store i64 %195, i64* %XCX, align 8, !mcsema_real_eip !64
  %196 = zext i8 %_new_load_749 to i32
  %197 = add nsw i32 %196, -3
  %198 = xor i32 %197, %196, !mcsema_real_eip !65
  %199 = and i32 %198, 16, !mcsema_real_eip !65
  %200 = icmp ne i32 %199, 0, !mcsema_real_eip !65
  store i1 %200, i1* %AF, align 1, !mcsema_real_eip !65
  %201 = trunc i32 %197 to i8, !mcsema_real_eip !65
  %202 = call i8 @llvm.ctpop.i8(i8 %201), !mcsema_real_eip !65
  %203 = and i8 %202, 1
  %204 = icmp eq i8 %203, 0
  store i1 %204, i1* %PF, align 1, !mcsema_real_eip !65
  %205 = icmp eq i32 %197, 0, !mcsema_real_eip !65
  store i1 %205, i1* %ZF, align 1, !mcsema_real_eip !65
  %206 = icmp ult i8 %_new_load_749, 3
  store i1 %206, i1* %SF, align 1, !mcsema_real_eip !65
  %207 = icmp ult i8 %_new_load_749, 3
  store i1 %207, i1* %CF, align 1, !mcsema_real_eip !65
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !65
  br i1 %205, label %block_0x14a, label %block_0x165, !mcsema_real_eip !66

block_0x14a:                                      ; preds = %block_0x102
  %_new_gep_113 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_109, i64 -34
  %208 = ptrtoint i8* %_new_gep_113 to i64
  %_offset_above_rbp_752 = sub i64 %208, %_local_end_to_int_
  %_pot_address_in_parent_stack_753 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_752
  %_cond1_754 = icmp ugt i8* %_new_gep_113, %_local_stack_end_ptr_
  %_cond2_1_755 = icmp ugt i8* %_new_gep_113, %_parent_stack_end_ptr_
  %_cond2_2_756 = icmp ult i8* %_new_gep_113, %_parent_stack_start_ptr_
  %_cond2_757 = or i1 %_cond2_1_755, %_cond2_2_756
  %_cond4_758 = icmp ule i8* %_pot_address_in_parent_stack_753, %_parent_stack_end_ptr_
  %_cond1_n_cond2_759 = and i1 %_cond1_754, %_cond2_757
  %_cond1_n_cond2_cond3_760 = and i1 %_cond1_n_cond2_759, %_cond4_758
  %_pot_address_in_parent_stack_753. = select i1 %_cond1_n_cond2_cond3_760, i8* %_pot_address_in_parent_stack_753, i8* %_new_gep_113
  %_new_load_762 = load i8, i8* %_pot_address_in_parent_stack_753., align 1
  %209 = zext i8 %_new_load_762 to i64
  store i64 %209, i64* %XAX, align 8, !mcsema_real_eip !67
  %210 = zext i8 %_new_load_762 to i32
  %211 = add nsw i32 %210, -96
  %212 = xor i32 %211, %210, !mcsema_real_eip !68
  %213 = and i32 %212, 16, !mcsema_real_eip !68
  %214 = icmp ne i32 %213, 0, !mcsema_real_eip !68
  store i1 %214, i1* %AF, align 1, !mcsema_real_eip !68
  %215 = trunc i32 %211 to i8, !mcsema_real_eip !68
  %216 = call i8 @llvm.ctpop.i8(i8 %215), !mcsema_real_eip !68
  %217 = and i8 %216, 1
  %218 = icmp eq i8 %217, 0
  store i1 %218, i1* %PF, align 1, !mcsema_real_eip !68
  %219 = icmp eq i32 %211, 0, !mcsema_real_eip !68
  store i1 %219, i1* %ZF, align 1, !mcsema_real_eip !68
  %220 = icmp ult i8 %_new_load_762, 96
  store i1 %220, i1* %SF, align 1, !mcsema_real_eip !68
  %221 = icmp ult i8 %_new_load_762, 96
  store i1 %221, i1* %CF, align 1, !mcsema_real_eip !68
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !68
  br i1 %219, label %block_0x157, label %block_0x165, !mcsema_real_eip !69

block_0x157:                                      ; preds = %block_0x14a
  %_new_gep_116 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_109, i64 -20
  %222 = ptrtoint i8* %_new_gep_116 to i64
  %223 = bitcast i8* %_new_gep_116 to i32*
  %_offset_above_rbp_766 = sub i64 %222, %_local_end_to_int_
  %_pot_address_in_parent_stack_767 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_766
  %_cond1_768 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_769 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_770 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_771 = or i1 %_cond2_1_769, %_cond2_2_770
  %_cond4_772 = icmp ule i8* %_pot_address_in_parent_stack_767, %_parent_stack_end_ptr_
  %_cond1_n_cond2_773 = and i1 %_cond1_768, %_cond2_771
  %_cond1_n_cond2_cond3_774 = and i1 %_cond1_n_cond2_773, %_cond4_772
  %_address_in_parent_stack_bt_776 = bitcast i8* %_pot_address_in_parent_stack_767 to i32*
  %_address_in_parent_stack_bt_776. = select i1 %_cond1_n_cond2_cond3_774, i32* %_address_in_parent_stack_bt_776, i32* %223
  %_new_load_777 = load i32, i32* %_address_in_parent_stack_bt_776., align 4
  %224 = zext i32 %_new_load_777 to i64, !mcsema_real_eip !70
  store i64 %224, i64* %XAX, align 8, !mcsema_real_eip !70
  %225 = add i32 %_new_load_777, 4, !mcsema_real_eip !71
  %226 = xor i32 %225, %_new_load_777, !mcsema_real_eip !71
  %227 = and i32 %226, 16, !mcsema_real_eip !71
  %228 = icmp ne i32 %227, 0, !mcsema_real_eip !71
  store i1 %228, i1* %AF, align 1, !mcsema_real_eip !71
  %229 = icmp slt i32 %225, 0
  store i1 %229, i1* %SF, align 1, !mcsema_real_eip !71
  %230 = icmp eq i32 %225, 0, !mcsema_real_eip !71
  store i1 %230, i1* %ZF, align 1, !mcsema_real_eip !71
  %231 = xor i32 %_new_load_777, -2147483648, !mcsema_real_eip !71
  %232 = and i32 %226, %231, !mcsema_real_eip !71
  %233 = icmp slt i32 %232, 0
  store i1 %233, i1* %OF, align 1, !mcsema_real_eip !71
  %234 = trunc i32 %225 to i8, !mcsema_real_eip !71
  %235 = call i8 @llvm.ctpop.i8(i8 %234), !mcsema_real_eip !71
  %236 = and i8 %235, 1
  %237 = icmp eq i8 %236, 0
  store i1 %237, i1* %PF, align 1, !mcsema_real_eip !71
  %238 = icmp ugt i32 %_new_load_777, -5
  br label %block_0x1c2, !mcsema_real_eip !72

block_0x165:                                      ; preds = %block_0x14a, %block_0x102
  %_new_gep_122 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_109, i64 -20
  %239 = ptrtoint i8* %_new_gep_122 to i64
  %240 = bitcast i8* %_new_gep_122 to i32*
  %_offset_above_rbp_781 = sub i64 %239, %_local_end_to_int_
  %_pot_address_in_parent_stack_782 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_781
  %_cond1_783 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_784 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_785 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_786 = or i1 %_cond2_1_784, %_cond2_2_785
  %_cond4_787 = icmp ule i8* %_pot_address_in_parent_stack_782, %_parent_stack_end_ptr_
  %_cond1_n_cond2_788 = and i1 %_cond1_783, %_cond2_786
  %_cond1_n_cond2_cond3_789 = and i1 %_cond1_n_cond2_788, %_cond4_787
  %_address_in_parent_stack_bt_791 = bitcast i8* %_pot_address_in_parent_stack_782 to i32*
  %_address_in_parent_stack_bt_791. = select i1 %_cond1_n_cond2_cond3_789, i32* %_address_in_parent_stack_bt_791, i32* %240
  %_new_load_792 = load i32, i32* %_address_in_parent_stack_bt_791., align 4
  %241 = zext i32 %_new_load_792 to i64, !mcsema_real_eip !73
  store i64 %241, i64* %XAX, align 8, !mcsema_real_eip !73
  %242 = add i32 %_new_load_792, 5, !mcsema_real_eip !74
  %243 = xor i32 %242, %_new_load_792, !mcsema_real_eip !74
  %244 = and i32 %243, 16, !mcsema_real_eip !74
  %245 = icmp ne i32 %244, 0, !mcsema_real_eip !74
  store i1 %245, i1* %AF, align 1, !mcsema_real_eip !74
  %246 = icmp slt i32 %242, 0
  store i1 %246, i1* %SF, align 1, !mcsema_real_eip !74
  %247 = icmp eq i32 %242, 0, !mcsema_real_eip !74
  store i1 %247, i1* %ZF, align 1, !mcsema_real_eip !74
  %248 = xor i32 %_new_load_792, -2147483648, !mcsema_real_eip !74
  %249 = and i32 %243, %248, !mcsema_real_eip !74
  %250 = icmp slt i32 %249, 0
  store i1 %250, i1* %OF, align 1, !mcsema_real_eip !74
  %251 = trunc i32 %242 to i8, !mcsema_real_eip !74
  %252 = call i8 @llvm.ctpop.i8(i8 %251), !mcsema_real_eip !74
  %253 = and i8 %252, 1
  %254 = icmp eq i8 %253, 0
  store i1 %254, i1* %PF, align 1, !mcsema_real_eip !74
  %255 = icmp ugt i32 %_new_load_792, -6
  br label %block_0x1c2, !mcsema_real_eip !75

block_0x1c2:                                      ; preds = %block_0x165, %block_0x157
  %.sink8 = phi i1 [ %255, %block_0x165 ], [ %238, %block_0x157 ]
  %.sink7 = phi i32 [ %242, %block_0x165 ], [ %225, %block_0x157 ]
  %.sink5 = phi i32* [ %240, %block_0x165 ], [ %223, %block_0x157 ]
  store i1 %.sink8, i1* %CF, align 1
  %256 = zext i32 %.sink7 to i64
  store i64 %256, i64* %XAX, align 8
  store i32 %.sink7, i32* %.sink5, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_127 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_128 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_127, i64 -16
  %_ptr_to_int_793 = ptrtoint i8* %_new_gep_128 to i64
  %_offset_above_rbp_796 = sub i64 %_ptr_to_int_793, %_local_end_to_int_
  %_pot_address_in_parent_stack_797 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_796
  %_cond1_798 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_799 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_800 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_801 = or i1 %_cond2_1_799, %_cond2_2_800
  %_cond4_802 = icmp ule i8* %_pot_address_in_parent_stack_797, %_parent_stack_end_ptr_
  %_cond1_n_cond2_803 = and i1 %_cond1_798, %_cond2_801
  %_cond1_n_cond2_cond3_804 = and i1 %_cond1_n_cond2_803, %_cond4_802
  %_address_in_parent_stack_bt_806._allin_new_bt_129.v = select i1 %_cond1_n_cond2_cond3_804, i8* %_pot_address_in_parent_stack_797, i8* %_new_gep_128
  %_address_in_parent_stack_bt_806._allin_new_bt_129 = bitcast i8* %_address_in_parent_stack_bt_806._allin_new_bt_129.v to i64*
  %_new_load_807 = load i64, i64* %_address_in_parent_stack_bt_806._allin_new_bt_129, align 8
  store i64 %_new_load_807, i64* %XAX, align 8, !mcsema_real_eip !75
  %257 = add i64 %_new_load_807, 6, !mcsema_real_eip !76
  %258 = inttoptr i64 %257 to i8*, !mcsema_real_eip !76
  %_offset_above_rbp_810 = sub i64 %257, %_local_end_to_int_
  %_pot_address_in_parent_stack_811 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_810
  %_cond1_812 = icmp ult i8* %_local_stack_end_ptr_, %258
  %_cond2_1_813 = icmp ugt i8* %258, %_parent_stack_end_ptr_
  %_cond2_2_814 = icmp ult i8* %258, %_parent_stack_start_ptr_
  %_cond2_815 = or i1 %_cond2_1_813, %_cond2_2_814
  %_cond4_816 = icmp ule i8* %_pot_address_in_parent_stack_811, %_parent_stack_end_ptr_
  %_cond1_n_cond2_817 = and i1 %_cond1_812, %_cond2_815
  %_cond1_n_cond2_cond3_818 = and i1 %_cond4_816, %_cond1_n_cond2_817
  %259 = select i1 %_cond1_n_cond2_cond3_818, i8* %_pot_address_in_parent_stack_811, i8* %258
  %_new_load_820 = load i8, i8* %259, align 1
  %260 = zext i8 %_new_load_820 to i64
  store i64 %260, i64* %XDI, align 8, !mcsema_real_eip !76
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_130 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.124 = load i64, i64* %XSP, align 8, !mcsema_real_eip !77
  %_new_gep_131 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_130, i64 -8
  %261 = add i64 %RSP_val.124, -8
  %_allin_new_bt_132 = bitcast i8* %_new_gep_131 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_132, align 8, !mcsema_real_eip !77
  store volatile i8* %_new_gep_131, i8** %_RSP_ptr_, align 8
  store i64 %261, i64* %XSP, align 8, !mcsema_real_eip !77
  %262 = call x86_64_sysvcc i64 @_to_byte(i64 %260)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_422 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_423 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_422, i64 8
  store i8* %_gep_fix_423, i8** %_RSP_ptr_, align 8
  store i64 %262, i64* %XAX, align 8, !mcsema_real_eip !77
  %263 = trunc i64 %262 to i8
  store i8 %263, i8* %CL.87, align 1, !mcsema_real_eip !78
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_133 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_134 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_133, i64 -35
  store i8 %263, i8* %_new_gep_134, align 1, !mcsema_real_eip !79
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_136 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_137 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_136, i64 -16
  %_ptr_to_int_821 = ptrtoint i8* %_new_gep_137 to i64
  %_offset_above_rbp_824 = sub i64 %_ptr_to_int_821, %_local_end_to_int_
  %_pot_address_in_parent_stack_825 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_824
  %_cond1_826 = icmp ugt i8* %_new_gep_137, %_local_stack_end_ptr_
  %_cond2_1_827 = icmp ugt i8* %_new_gep_137, %_parent_stack_end_ptr_
  %_cond2_2_828 = icmp ult i8* %_new_gep_137, %_parent_stack_start_ptr_
  %_cond2_829 = or i1 %_cond2_1_827, %_cond2_2_828
  %_cond4_830 = icmp ule i8* %_pot_address_in_parent_stack_825, %_parent_stack_end_ptr_
  %_cond1_n_cond2_831 = and i1 %_cond1_826, %_cond2_829
  %_cond1_n_cond2_cond3_832 = and i1 %_cond1_n_cond2_831, %_cond4_830
  %_address_in_parent_stack_bt_834._allin_new_bt_138.v = select i1 %_cond1_n_cond2_cond3_832, i8* %_pot_address_in_parent_stack_825, i8* %_new_gep_137
  %_address_in_parent_stack_bt_834._allin_new_bt_138 = bitcast i8* %_address_in_parent_stack_bt_834._allin_new_bt_138.v to i64*
  %_new_load_835 = load i64, i64* %_address_in_parent_stack_bt_834._allin_new_bt_138, align 8
  store i64 %_new_load_835, i64* %XDX, align 8, !mcsema_real_eip !80
  %264 = add i64 %_new_load_835, 7, !mcsema_real_eip !81
  %265 = inttoptr i64 %264 to i8*, !mcsema_real_eip !81
  %_offset_above_rbp_838 = sub i64 %264, %_local_end_to_int_
  %_pot_address_in_parent_stack_839 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_838
  %_cond1_840 = icmp ult i8* %_local_stack_end_ptr_, %265
  %_cond2_1_841 = icmp ugt i8* %265, %_parent_stack_end_ptr_
  %_cond2_2_842 = icmp ult i8* %265, %_parent_stack_start_ptr_
  %_cond2_843 = or i1 %_cond2_1_841, %_cond2_2_842
  %_cond4_844 = icmp ule i8* %_pot_address_in_parent_stack_839, %_parent_stack_end_ptr_
  %_cond1_n_cond2_845 = and i1 %_cond1_840, %_cond2_843
  %_cond1_n_cond2_cond3_846 = and i1 %_cond4_844, %_cond1_n_cond2_845
  %266 = select i1 %_cond1_n_cond2_cond3_846, i8* %_pot_address_in_parent_stack_839, i8* %265
  %_new_load_848 = load i8, i8* %266, align 1
  %267 = zext i8 %_new_load_848 to i64
  store i64 %267, i64* %XDI, align 8, !mcsema_real_eip !81
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.134 = load i64, i64* %XSP, align 8, !mcsema_real_eip !82
  %_new_gep_140 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_139, i64 -8
  %268 = add i64 %RSP_val.134, -8
  %_allin_new_bt_141 = bitcast i8* %_new_gep_140 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_141, align 8, !mcsema_real_eip !82
  store volatile i8* %_new_gep_140, i8** %_RSP_ptr_, align 8
  store i64 %268, i64* %XSP, align 8, !mcsema_real_eip !82
  %269 = call x86_64_sysvcc i64 @_to_byte(i64 %267)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_424 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_425 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_424, i64 8
  store i8* %_gep_fix_425, i8** %_RSP_ptr_, align 8
  store i64 %269, i64* %XAX, align 8, !mcsema_real_eip !82
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_142 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_143 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_142, i64 -35
  %270 = ptrtoint i8* %_new_gep_143 to i64
  %_offset_above_rbp_851 = sub i64 %270, %_local_end_to_int_
  %_pot_address_in_parent_stack_852 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_851
  %_cond1_853 = icmp ugt i8* %_new_gep_143, %_local_stack_end_ptr_
  %_cond2_1_854 = icmp ugt i8* %_new_gep_143, %_parent_stack_end_ptr_
  %_cond2_2_855 = icmp ult i8* %_new_gep_143, %_parent_stack_start_ptr_
  %_cond2_856 = or i1 %_cond2_1_854, %_cond2_2_855
  %_cond4_857 = icmp ule i8* %_pot_address_in_parent_stack_852, %_parent_stack_end_ptr_
  %_cond1_n_cond2_858 = and i1 %_cond1_853, %_cond2_856
  %_cond1_n_cond2_cond3_859 = and i1 %_cond1_n_cond2_858, %_cond4_857
  %_pot_address_in_parent_stack_852. = select i1 %_cond1_n_cond2_cond3_859, i8* %_pot_address_in_parent_stack_852, i8* %_new_gep_143
  %_new_load_861 = load i8, i8* %_pot_address_in_parent_stack_852., align 1
  %271 = zext i8 %_new_load_861 to i32
  %272 = trunc i64 %269 to i32
  %273 = or i32 %272, %271, !mcsema_real_eip !84
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !84
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !84
  %274 = icmp slt i32 %273, 0
  store i1 %274, i1* %SF, align 1, !mcsema_real_eip !84
  %275 = icmp eq i32 %273, 0, !mcsema_real_eip !84
  store i1 %275, i1* %ZF, align 1, !mcsema_real_eip !84
  %276 = trunc i32 %273 to i8, !mcsema_real_eip !84
  %277 = call i8 @llvm.ctpop.i8(i8 %276), !mcsema_real_eip !84
  %278 = and i8 %277, 1
  %279 = icmp eq i8 %278, 0
  store i1 %279, i1* %PF, align 1, !mcsema_real_eip !84
  %280 = zext i32 %273 to i64, !mcsema_real_eip !84
  store i64 %280, i64* %XDI, align 8, !mcsema_real_eip !84
  %281 = trunc i32 %273 to i8
  store i8 %281, i8* %CL.87, align 1, !mcsema_real_eip !85
  store i8 %281, i8* %_new_gep_143, align 1, !mcsema_real_eip !86
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_148 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_149 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_148, i64 -35
  %282 = ptrtoint i8* %_new_gep_149 to i64
  %_offset_above_rbp_864 = sub i64 %282, %_local_end_to_int_
  %_pot_address_in_parent_stack_865 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_864
  %_cond1_866 = icmp ugt i8* %_new_gep_149, %_local_stack_end_ptr_
  %_cond2_1_867 = icmp ugt i8* %_new_gep_149, %_parent_stack_end_ptr_
  %_cond2_2_868 = icmp ult i8* %_new_gep_149, %_parent_stack_start_ptr_
  %_cond2_869 = or i1 %_cond2_1_867, %_cond2_2_868
  %_cond4_870 = icmp ule i8* %_pot_address_in_parent_stack_865, %_parent_stack_end_ptr_
  %_cond1_n_cond2_871 = and i1 %_cond1_866, %_cond2_869
  %_cond1_n_cond2_cond3_872 = and i1 %_cond1_n_cond2_871, %_cond4_870
  %283 = select i1 %_cond1_n_cond2_cond3_872, i8* %_pot_address_in_parent_stack_865, i8* %_new_gep_149
  %_new_load_874 = load i8, i8* %283, align 1
  %284 = zext i8 %_new_load_874 to i32
  %285 = xor i32 %284, -1, !mcsema_real_eip !88
  %286 = zext i32 %285 to i64, !mcsema_real_eip !88
  store i64 %286, i64* %XAX, align 8, !mcsema_real_eip !88
  %287 = sub nuw nsw i32 -71, %284
  %288 = xor i32 %287, %285, !mcsema_real_eip !89
  %289 = and i32 %288, 16, !mcsema_real_eip !89
  %290 = icmp ne i32 %289, 0, !mcsema_real_eip !89
  store i1 %290, i1* %AF, align 1, !mcsema_real_eip !89
  %291 = trunc i32 %287 to i8, !mcsema_real_eip !89
  %292 = call i8 @llvm.ctpop.i8(i8 %291), !mcsema_real_eip !89
  %293 = and i8 %292, 1
  %294 = icmp eq i8 %293, 0
  store i1 %294, i1* %PF, align 1, !mcsema_real_eip !89
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !89
  store i1 true, i1* %SF, align 1, !mcsema_real_eip !89
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !89
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !89
  %_new_gep_158 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_148, i64 -20
  %295 = ptrtoint i8* %_new_gep_158 to i64
  %296 = bitcast i8* %_new_gep_158 to i32*
  %_offset_above_rbp_893 = sub i64 %295, %_local_end_to_int_
  %_pot_address_in_parent_stack_894 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_893
  %_cond1_895 = icmp ugt i8* %_new_gep_158, %_local_stack_end_ptr_
  %_cond2_1_896 = icmp ugt i8* %_new_gep_158, %_parent_stack_end_ptr_
  %_cond2_2_897 = icmp ult i8* %_new_gep_158, %_parent_stack_start_ptr_
  %_cond2_898 = or i1 %_cond2_1_896, %_cond2_2_897
  %_cond4_899 = icmp ule i8* %_pot_address_in_parent_stack_894, %_parent_stack_end_ptr_
  %_cond1_n_cond2_900 = and i1 %_cond1_895, %_cond2_898
  %_cond1_n_cond2_cond3_901 = and i1 %_cond1_n_cond2_900, %_cond4_899
  %_address_in_parent_stack_bt_903 = bitcast i8* %_pot_address_in_parent_stack_894 to i32*
  %_address_in_parent_stack_bt_903. = select i1 %_cond1_n_cond2_cond3_901, i32* %_address_in_parent_stack_bt_903, i32* %296
  %_new_load_904 = load i32, i32* %_address_in_parent_stack_bt_903., align 4
  %297 = zext i32 %_new_load_904 to i64
  store i64 %297, i64* %XCX, align 8, !mcsema_real_eip !90
  %_new_load_919 = load i32, i32* %_address_in_parent_stack_bt_903., align 4
  %CL_val.162.zext = and i32 %_new_load_904, 255
  %298 = and i32 %_new_load_904, 31, !mcsema_real_eip !92
  %299 = add nsw i32 %CL_val.162.zext, -1
  %300 = icmp ne i32 %298, 0, !mcsema_real_eip !92
  %301 = select i1 %300, i32 %299, i32 0, !mcsema_real_eip !92
  %302 = zext i1 %300 to i32
  %303 = shl i32 %_new_load_919, %301, !mcsema_real_eip !92
  %304 = icmp slt i32 %303, 0
  %305 = and i1 %300, %304
  %306 = shl i32 %303, %302, !mcsema_real_eip !92
  %307 = icmp eq i32 %298, 1, !mcsema_real_eip !92
  %308 = icmp slt i32 %306, 0
  %309 = xor i1 %308, %305, !mcsema_real_eip !92
  %310 = and i1 %307, %309
  store i1 %310, i1* %OF, align 1, !mcsema_real_eip !92
  store i1 %305, i1* %CF, align 1, !mcsema_real_eip !92
  %311 = icmp eq i32 %306, 0, !mcsema_real_eip !92
  %312 = and i1 %300, %311
  store i1 %312, i1* %ZF, align 1, !mcsema_real_eip !92
  %not. = xor i1 %300, true
  %313 = or i1 %308, %not.
  store i1 %313, i1* %SF, align 1, !mcsema_real_eip !92
  %314 = trunc i32 %306 to i8, !mcsema_real_eip !92
  %315 = call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !92
  %316 = and i8 %315, 1
  %317 = icmp eq i8 %316, 0
  %318 = select i1 %300, i1 %317, i1 %294, !mcsema_real_eip !92
  store i1 %318, i1* %PF, align 1, !mcsema_real_eip !92
  %319 = zext i32 %306 to i64
  store i64 %319, i64* %XAX, align 8
  store i32 %306, i32* %296, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_166 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_167 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_166, i64 -20
  %320 = ptrtoint i8* %_new_gep_167 to i64
  %_offset_above_rbp_923 = sub i64 %320, %_local_end_to_int_
  %_pot_address_in_parent_stack_924 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_923
  %_cond1_925 = icmp ugt i8* %_new_gep_167, %_local_stack_end_ptr_
  %_cond2_1_926 = icmp ugt i8* %_new_gep_167, %_parent_stack_end_ptr_
  %_cond2_2_927 = icmp ult i8* %_new_gep_167, %_parent_stack_start_ptr_
  %_cond2_928 = or i1 %_cond2_1_926, %_cond2_2_927
  %_cond4_929 = icmp ule i8* %_pot_address_in_parent_stack_924, %_parent_stack_end_ptr_
  %_cond1_n_cond2_930 = and i1 %_cond1_925, %_cond2_928
  %_cond1_n_cond2_cond3_931 = and i1 %_cond1_n_cond2_930, %_cond4_929
  %_address_in_parent_stack_bt_933..v = select i1 %_cond1_n_cond2_cond3_931, i8* %_pot_address_in_parent_stack_924, i8* %_new_gep_167
  %_address_in_parent_stack_bt_933. = bitcast i8* %_address_in_parent_stack_bt_933..v to i32*
  %_new_load_934 = load i32, i32* %_address_in_parent_stack_bt_933., align 4
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !93
  %321 = trunc i32 %_new_load_934 to i8, !mcsema_real_eip !93
  %322 = call i8 @llvm.ctpop.i8(i8 %321), !mcsema_real_eip !93
  %323 = and i8 %322, 1
  %324 = icmp eq i8 %323, 0
  store i1 %324, i1* %PF, align 1, !mcsema_real_eip !93
  %325 = icmp eq i32 %_new_load_934, 0, !mcsema_real_eip !93
  store i1 %325, i1* %ZF, align 1, !mcsema_real_eip !93
  %326 = icmp slt i32 %_new_load_934, 0
  store i1 %326, i1* %SF, align 1, !mcsema_real_eip !93
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !93
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !93
  br i1 %325, label %block_0x1d8, label %block_0x417, !mcsema_real_eip !94

block_0x1d8:                                      ; preds = %block_0x1c2
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !95
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !95
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !95
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !95
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !95
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !95
  store i64 4, i64* %XDX, align 8, !mcsema_real_eip !96
  %_new_gep_173 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_166, i64 -16
  %_ptr_to_int_935 = ptrtoint i8* %_new_gep_173 to i64
  %_offset_above_rbp_938 = sub i64 %_ptr_to_int_935, %_local_end_to_int_
  %_pot_address_in_parent_stack_939 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_938
  %_cond1_940 = icmp ugt i8* %_new_gep_173, %_local_stack_end_ptr_
  %_cond2_1_941 = icmp ugt i8* %_new_gep_173, %_parent_stack_end_ptr_
  %_cond2_2_942 = icmp ult i8* %_new_gep_173, %_parent_stack_start_ptr_
  %_cond2_943 = or i1 %_cond2_1_941, %_cond2_2_942
  %_cond4_944 = icmp ule i8* %_pot_address_in_parent_stack_939, %_parent_stack_end_ptr_
  %_cond1_n_cond2_945 = and i1 %_cond1_940, %_cond2_943
  %_cond1_n_cond2_cond3_946 = and i1 %_cond1_n_cond2_945, %_cond4_944
  %_address_in_parent_stack_bt_948._allin_new_bt_174.v = select i1 %_cond1_n_cond2_cond3_946, i8* %_pot_address_in_parent_stack_939, i8* %_new_gep_173
  %_address_in_parent_stack_bt_948._allin_new_bt_174 = bitcast i8* %_address_in_parent_stack_bt_948._allin_new_bt_174.v to i64*
  %_new_load_949 = load i64, i64* %_address_in_parent_stack_bt_948._allin_new_bt_174, align 8
  %327 = add i64 %_new_load_949, 8, !mcsema_real_eip !98
  %328 = xor i64 %327, %_new_load_949, !mcsema_real_eip !98
  %329 = and i64 %328, 16, !mcsema_real_eip !98
  %330 = icmp ne i64 %329, 0, !mcsema_real_eip !98
  store i1 %330, i1* %AF, align 1, !mcsema_real_eip !98
  %331 = icmp slt i64 %327, 0
  store i1 %331, i1* %SF, align 1, !mcsema_real_eip !98
  %332 = icmp eq i64 %327, 0, !mcsema_real_eip !98
  store i1 %332, i1* %ZF, align 1, !mcsema_real_eip !98
  %333 = xor i64 %_new_load_949, -9223372036854775808, !mcsema_real_eip !98
  %334 = and i64 %328, %333, !mcsema_real_eip !98
  %335 = icmp slt i64 %334, 0
  store i1 %335, i1* %OF, align 1, !mcsema_real_eip !98
  %336 = trunc i64 %327 to i8, !mcsema_real_eip !98
  %337 = call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !98
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  store i1 %339, i1* %PF, align 1, !mcsema_real_eip !98
  %340 = icmp ugt i64 %_new_load_949, -9
  store i1 %340, i1* %CF, align 1, !mcsema_real_eip !98
  store i64 %327, i64* %XAX, align 8, !mcsema_real_eip !98
  store i64 %327, i64* %XSI, align 8, !mcsema_real_eip !99
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_175 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.178 = load i64, i64* %XSP, align 8, !mcsema_real_eip !100
  %_new_gep_176 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_175, i64 -8
  %341 = add i64 %RSP_val.178, -8
  %_allin_new_bt_177 = bitcast i8* %_new_gep_176 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_177, align 8, !mcsema_real_eip !100
  store volatile i8* %_new_gep_176, i8** %_RSP_ptr_, align 8
  store i64 %341, i64* %XSP, align 8, !mcsema_real_eip !100
  %342 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %327, i64 4)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_426 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_427 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_426, i64 8
  store i8* %_gep_fix_427, i8** %_RSP_ptr_, align 8
  store i64 %342, i64* %XAX, align 8, !mcsema_real_eip !100
  %343 = trunc i64 %342 to i16
  %CX.181 = bitcast i64* %XCX to i16*, !mcsema_real_eip !101
  store i16 %343, i16* %CX.181, align 2, !mcsema_real_eip !101
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_178 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_179 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_178, i64 -38
  %344 = bitcast i8* %_new_gep_179 to i16*
  store i16 %343, i16* %344, align 2, !mcsema_real_eip !102
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_181 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_182 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_181, i64 -38
  %345 = ptrtoint i8* %_new_gep_182 to i64
  %_offset_above_rbp_953 = sub i64 %345, %_local_end_to_int_
  %_pot_address_in_parent_stack_954 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_953
  %_cond1_955 = icmp ugt i8* %_new_gep_182, %_local_stack_end_ptr_
  %_cond2_1_956 = icmp ugt i8* %_new_gep_182, %_parent_stack_end_ptr_
  %_cond2_2_957 = icmp ult i8* %_new_gep_182, %_parent_stack_start_ptr_
  %_cond2_958 = or i1 %_cond2_1_956, %_cond2_2_957
  %_cond4_959 = icmp ule i8* %_pot_address_in_parent_stack_954, %_parent_stack_end_ptr_
  %_cond1_n_cond2_960 = and i1 %_cond1_955, %_cond2_958
  %_cond1_n_cond2_cond3_961 = and i1 %_cond1_n_cond2_960, %_cond4_959
  %.v14 = select i1 %_cond1_n_cond2_cond3_961, i8* %_pot_address_in_parent_stack_954, i8* %_new_gep_182
  %346 = bitcast i8* %.v14 to i16*
  %_new_load_964 = load i16, i16* %346, align 2
  %347 = or i16 %_new_load_964, 21845
  %348 = zext i16 %347 to i32
  %349 = zext i16 %347 to i64
  store i64 %349, i64* %XAX, align 8, !mcsema_real_eip !104
  %350 = add nsw i32 %348, -56663
  %351 = xor i32 %350, %348, !mcsema_real_eip !105
  %352 = and i32 %351, 16
  %353 = icmp eq i32 %352, 0
  store i1 %353, i1* %AF, align 1, !mcsema_real_eip !105
  %354 = trunc i32 %350 to i8, !mcsema_real_eip !105
  %355 = call i8 @llvm.ctpop.i8(i8 %354), !mcsema_real_eip !105
  %356 = and i8 %355, 1
  %357 = icmp eq i8 %356, 0
  store i1 %357, i1* %PF, align 1, !mcsema_real_eip !105
  %358 = icmp eq i32 %350, 0, !mcsema_real_eip !105
  store i1 %358, i1* %ZF, align 1, !mcsema_real_eip !105
  %359 = icmp ult i16 %347, -8873
  store i1 %359, i1* %SF, align 1, !mcsema_real_eip !105
  %360 = icmp ult i16 %347, -8873
  store i1 %360, i1* %CF, align 1, !mcsema_real_eip !105
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !105
  br i1 %358, label %block_0x20a, label %block_0x231, !mcsema_real_eip !106

block_0x20a:                                      ; preds = %block_0x1d8
  %_new_load_979 = load i16, i16* %346, align 2
  %361 = or i16 %_new_load_979, -21846
  %362 = zext i16 %361 to i32
  %363 = zext i16 %361 to i64
  store i64 %363, i64* %XAX, align 8, !mcsema_real_eip !108
  %364 = add nsw i32 %362, -65211
  %365 = xor i32 %364, %362, !mcsema_real_eip !109
  %366 = and i32 %365, 16
  %367 = icmp eq i32 %366, 0
  store i1 %367, i1* %AF, align 1, !mcsema_real_eip !109
  %368 = trunc i32 %364 to i8, !mcsema_real_eip !109
  %369 = call i8 @llvm.ctpop.i8(i8 %368), !mcsema_real_eip !109
  %370 = and i8 %369, 1
  %371 = icmp eq i8 %370, 0
  store i1 %371, i1* %PF, align 1, !mcsema_real_eip !109
  %372 = icmp eq i32 %364, 0, !mcsema_real_eip !109
  store i1 %372, i1* %ZF, align 1, !mcsema_real_eip !109
  %373 = icmp ult i16 %361, -325
  store i1 %373, i1* %SF, align 1, !mcsema_real_eip !109
  %374 = icmp ult i16 %361, -325
  store i1 %374, i1* %CF, align 1, !mcsema_real_eip !109
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !109
  %. = select i1 %372, i32 43690, i32 48059
  br label %block_0x231

block_0x231:                                      ; preds = %block_0x1d8, %block_0x20a
  %.sink = phi i32 [ 48059, %block_0x1d8 ], [ %., %block_0x20a ]
  %_new_gep_191 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_181, i64 -20
  %375 = bitcast i8* %_new_gep_191 to i32*
  store i32 %.sink, i32* %375, align 4
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !110
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !110
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !110
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !110
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !110
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !110
  store i64 8, i64* %XDX, align 8, !mcsema_real_eip !111
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_193 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_194 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_193, i64 -16
  %_ptr_to_int_980 = ptrtoint i8* %_new_gep_194 to i64
  %_offset_above_rbp_983 = sub i64 %_ptr_to_int_980, %_local_end_to_int_
  %_pot_address_in_parent_stack_984 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_983
  %_cond1_985 = icmp ugt i8* %_new_gep_194, %_local_stack_end_ptr_
  %_cond2_1_986 = icmp ugt i8* %_new_gep_194, %_parent_stack_end_ptr_
  %_cond2_2_987 = icmp ult i8* %_new_gep_194, %_parent_stack_start_ptr_
  %_cond2_988 = or i1 %_cond2_1_986, %_cond2_2_987
  %_cond4_989 = icmp ule i8* %_pot_address_in_parent_stack_984, %_parent_stack_end_ptr_
  %_cond1_n_cond2_990 = and i1 %_cond1_985, %_cond2_988
  %_cond1_n_cond2_cond3_991 = and i1 %_cond1_n_cond2_990, %_cond4_989
  %_address_in_parent_stack_bt_993._allin_new_bt_195.v = select i1 %_cond1_n_cond2_cond3_991, i8* %_pot_address_in_parent_stack_984, i8* %_new_gep_194
  %_address_in_parent_stack_bt_993._allin_new_bt_195 = bitcast i8* %_address_in_parent_stack_bt_993._allin_new_bt_195.v to i64*
  %_new_load_994 = load i64, i64* %_address_in_parent_stack_bt_993._allin_new_bt_195, align 8
  %376 = add i64 %_new_load_994, 12, !mcsema_real_eip !113
  %377 = xor i64 %376, %_new_load_994, !mcsema_real_eip !113
  %378 = and i64 %377, 16, !mcsema_real_eip !113
  %379 = icmp ne i64 %378, 0, !mcsema_real_eip !113
  store i1 %379, i1* %AF, align 1, !mcsema_real_eip !113
  %380 = icmp slt i64 %376, 0
  store i1 %380, i1* %SF, align 1, !mcsema_real_eip !113
  %381 = icmp eq i64 %376, 0, !mcsema_real_eip !113
  store i1 %381, i1* %ZF, align 1, !mcsema_real_eip !113
  %382 = xor i64 %_new_load_994, -9223372036854775808, !mcsema_real_eip !113
  %383 = and i64 %377, %382, !mcsema_real_eip !113
  %384 = icmp slt i64 %383, 0
  store i1 %384, i1* %OF, align 1, !mcsema_real_eip !113
  %385 = trunc i64 %376 to i8, !mcsema_real_eip !113
  %386 = call i8 @llvm.ctpop.i8(i8 %385), !mcsema_real_eip !113
  %387 = and i8 %386, 1
  %388 = icmp eq i8 %387, 0
  store i1 %388, i1* %PF, align 1, !mcsema_real_eip !113
  %389 = icmp ugt i64 %_new_load_994, -13
  store i1 %389, i1* %CF, align 1, !mcsema_real_eip !113
  store i64 %376, i64* %XAX, align 8, !mcsema_real_eip !113
  store i64 %376, i64* %XSI, align 8, !mcsema_real_eip !114
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_196 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.207 = load i64, i64* %XSP, align 8, !mcsema_real_eip !115
  %_new_gep_197 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_196, i64 -8
  %390 = add i64 %RSP_val.207, -8
  %_allin_new_bt_198 = bitcast i8* %_new_gep_197 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_198, align 8, !mcsema_real_eip !115
  store volatile i8* %_new_gep_197, i8** %_RSP_ptr_, align 8
  store i64 %390, i64* %XSP, align 8, !mcsema_real_eip !115
  %391 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %376, i64 8)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_428 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_429 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_428, i64 8
  store i8* %_gep_fix_429, i8** %_RSP_ptr_, align 8
  store i64 %391, i64* %XAX, align 8, !mcsema_real_eip !115
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_199 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_200 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_199, i64 -44
  %392 = trunc i64 %391 to i32
  %393 = bitcast i8* %_new_gep_200 to i32*
  store i32 %392, i32* %393, align 4, !mcsema_real_eip !116
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_202 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_203 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_202, i64 -44
  %394 = ptrtoint i8* %_new_gep_203 to i64
  %_offset_above_rbp_998 = sub i64 %394, %_local_end_to_int_
  %_pot_address_in_parent_stack_999 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_998
  %_cond1_1000 = icmp ugt i8* %_new_gep_203, %_local_stack_end_ptr_
  %_cond2_1_1001 = icmp ugt i8* %_new_gep_203, %_parent_stack_end_ptr_
  %_cond2_2_1002 = icmp ult i8* %_new_gep_203, %_parent_stack_start_ptr_
  %_cond2_1003 = or i1 %_cond2_1_1001, %_cond2_2_1002
  %_cond4_1004 = icmp ule i8* %_pot_address_in_parent_stack_999, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1005 = and i1 %_cond1_1000, %_cond2_1003
  %_cond1_n_cond2_cond3_1006 = and i1 %_cond1_n_cond2_1005, %_cond4_1004
  %.v15 = select i1 %_cond1_n_cond2_cond3_1006, i8* %_pot_address_in_parent_stack_999, i8* %_new_gep_203
  %395 = bitcast i8* %.v15 to i32*
  %_new_load_1009 = load i32, i32* %395, align 4
  %396 = xor i32 %_new_load_1009, -1534560611, !mcsema_real_eip !118
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !118
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !118
  %397 = icmp sgt i32 %_new_load_1009, -1
  store i1 %397, i1* %SF, align 1, !mcsema_real_eip !118
  %398 = icmp eq i32 %396, 0, !mcsema_real_eip !118
  store i1 %398, i1* %ZF, align 1, !mcsema_real_eip !118
  %399 = trunc i32 %396 to i8, !mcsema_real_eip !118
  %400 = call i8 @llvm.ctpop.i8(i8 %399), !mcsema_real_eip !118
  %401 = and i8 %400, 1
  %402 = icmp eq i8 %401, 0
  store i1 %402, i1* %PF, align 1, !mcsema_real_eip !118
  %403 = zext i32 %396 to i64, !mcsema_real_eip !118
  store i64 %403, i64* %XAX, align 8, !mcsema_real_eip !118
  %_new_gep_206 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_202, i64 -48
  %404 = bitcast i8* %_new_gep_206 to i32*
  store i32 %396, i32* %404, align 4, !mcsema_real_eip !119
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_208 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_209 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_208, i64 -48
  %405 = ptrtoint i8* %_new_gep_209 to i64
  %_offset_above_rbp_1013 = sub i64 %405, %_local_end_to_int_
  %_pot_address_in_parent_stack_1014 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1013
  %_cond1_1015 = icmp ugt i8* %_new_gep_209, %_local_stack_end_ptr_
  %_cond2_1_1016 = icmp ugt i8* %_new_gep_209, %_parent_stack_end_ptr_
  %_cond2_2_1017 = icmp ult i8* %_new_gep_209, %_parent_stack_start_ptr_
  %_cond2_1018 = or i1 %_cond2_1_1016, %_cond2_2_1017
  %_cond4_1019 = icmp ule i8* %_pot_address_in_parent_stack_1014, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1020 = and i1 %_cond1_1015, %_cond2_1018
  %_cond1_n_cond2_cond3_1021 = and i1 %_cond1_n_cond2_1020, %_cond4_1019
  %_address_in_parent_stack_bt_1023..v = select i1 %_cond1_n_cond2_cond3_1021, i8* %_pot_address_in_parent_stack_1014, i8* %_new_gep_209
  %_address_in_parent_stack_bt_1023. = bitcast i8* %_address_in_parent_stack_bt_1023..v to i32*
  %_new_load_1024 = load i32, i32* %_address_in_parent_stack_bt_1023., align 4
  %406 = trunc i32 %_new_load_1024 to i16
  %407 = icmp slt i16 %406, 0
  %408 = lshr i32 %_new_load_1024, 16
  store i1 %407, i1* %CF, align 1, !mcsema_real_eip !121
  %409 = icmp eq i32 %408, 0, !mcsema_real_eip !121
  store i1 %409, i1* %ZF, align 1, !mcsema_real_eip !121
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !121
  %410 = trunc i32 %408 to i8, !mcsema_real_eip !121
  %411 = call i8 @llvm.ctpop.i8(i8 %410), !mcsema_real_eip !121
  %412 = and i8 %411, 1
  %413 = icmp eq i8 %412, 0
  store i1 %413, i1* %PF, align 1, !mcsema_real_eip !121
  %414 = zext i32 %408 to i64, !mcsema_real_eip !121
  store i64 %414, i64* %XAX, align 8, !mcsema_real_eip !121
  %_new_gep_212 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_208, i64 -52
  %415 = bitcast i8* %_new_gep_212 to i32*
  store i32 %408, i32* %415, align 4, !mcsema_real_eip !122
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_214 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_215 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_214, i64 -48
  %416 = ptrtoint i8* %_new_gep_215 to i64
  %_offset_above_rbp_1028 = sub i64 %416, %_local_end_to_int_
  %_pot_address_in_parent_stack_1029 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1028
  %_cond1_1030 = icmp ugt i8* %_new_gep_215, %_local_stack_end_ptr_
  %_cond2_1_1031 = icmp ugt i8* %_new_gep_215, %_parent_stack_end_ptr_
  %_cond2_2_1032 = icmp ult i8* %_new_gep_215, %_parent_stack_start_ptr_
  %_cond2_1033 = or i1 %_cond2_1_1031, %_cond2_2_1032
  %_cond4_1034 = icmp ule i8* %_pot_address_in_parent_stack_1029, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1035 = and i1 %_cond1_1030, %_cond2_1033
  %_cond1_n_cond2_cond3_1036 = and i1 %_cond1_n_cond2_1035, %_cond4_1034
  %.v16 = select i1 %_cond1_n_cond2_cond3_1036, i8* %_pot_address_in_parent_stack_1029, i8* %_new_gep_215
  %417 = bitcast i8* %.v16 to i32*
  %_new_load_1039 = load i32, i32* %417, align 4
  %418 = and i32 %_new_load_1039, 65535, !mcsema_real_eip !124
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !124
  %419 = icmp eq i32 %418, 0, !mcsema_real_eip !124
  store i1 %419, i1* %ZF, align 1, !mcsema_real_eip !124
  %420 = trunc i32 %_new_load_1039 to i8, !mcsema_real_eip !124
  %421 = call i8 @llvm.ctpop.i8(i8 %420), !mcsema_real_eip !124
  %422 = and i8 %421, 1
  %423 = icmp eq i8 %422, 0
  store i1 %423, i1* %PF, align 1, !mcsema_real_eip !124
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !124
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !124
  %424 = zext i32 %418 to i64, !mcsema_real_eip !124
  store i64 %424, i64* %XAX, align 8, !mcsema_real_eip !124
  %_new_gep_218 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_214, i64 -56
  %425 = bitcast i8* %_new_gep_218 to i32*
  store i32 %418, i32* %425, align 4, !mcsema_real_eip !125
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_220 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_221 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_220, i64 -52
  %426 = ptrtoint i8* %_new_gep_221 to i64
  %_offset_above_rbp_1043 = sub i64 %426, %_local_end_to_int_
  %_pot_address_in_parent_stack_1044 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1043
  %_cond1_1045 = icmp ugt i8* %_new_gep_221, %_local_stack_end_ptr_
  %_cond2_1_1046 = icmp ugt i8* %_new_gep_221, %_parent_stack_end_ptr_
  %_cond2_2_1047 = icmp ult i8* %_new_gep_221, %_parent_stack_start_ptr_
  %_cond2_1048 = or i1 %_cond2_1_1046, %_cond2_2_1047
  %_cond4_1049 = icmp ule i8* %_pot_address_in_parent_stack_1044, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1050 = and i1 %_cond1_1045, %_cond2_1048
  %_cond1_n_cond2_cond3_1051 = and i1 %_cond1_n_cond2_1050, %_cond4_1049
  %_address_in_parent_stack_bt_1053..v = select i1 %_cond1_n_cond2_cond3_1051, i8* %_pot_address_in_parent_stack_1044, i8* %_new_gep_221
  %_address_in_parent_stack_bt_1053. = bitcast i8* %_address_in_parent_stack_bt_1053..v to i32*
  %_new_load_1054 = load i32, i32* %_address_in_parent_stack_bt_1053., align 4
  %427 = add i32 %_new_load_1054, -79
  %428 = xor i32 %427, %_new_load_1054, !mcsema_real_eip !126
  %429 = and i32 %428, 16, !mcsema_real_eip !126
  %430 = icmp ne i32 %429, 0, !mcsema_real_eip !126
  store i1 %430, i1* %AF, align 1, !mcsema_real_eip !126
  %431 = trunc i32 %427 to i8, !mcsema_real_eip !126
  %432 = call i8 @llvm.ctpop.i8(i8 %431), !mcsema_real_eip !126
  %433 = and i8 %432, 1
  %434 = icmp eq i8 %433, 0
  store i1 %434, i1* %PF, align 1, !mcsema_real_eip !126
  %435 = icmp eq i32 %427, 0, !mcsema_real_eip !126
  store i1 %435, i1* %ZF, align 1, !mcsema_real_eip !126
  %436 = icmp slt i32 %427, 0
  store i1 %436, i1* %SF, align 1, !mcsema_real_eip !126
  %437 = icmp ult i32 %_new_load_1054, 79, !mcsema_real_eip !126
  store i1 %437, i1* %CF, align 1, !mcsema_real_eip !126
  %438 = and i32 %428, %_new_load_1054, !mcsema_real_eip !126
  %439 = icmp slt i32 %438, 0
  store i1 %439, i1* %OF, align 1, !mcsema_real_eip !126
  br i1 %435, label %block_0x274, label %block_0x231.block_0x28c_crit_edge, !mcsema_real_eip !127

block_0x231.block_0x28c_crit_edge:                ; preds = %block_0x231
  %.pre = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_220, i64 -20
  %.pre22 = bitcast i8* %.pre to i32*
  br label %block_0x28c

block_0x274:                                      ; preds = %block_0x231
  %_new_gep_224 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_220, i64 -56
  %440 = ptrtoint i8* %_new_gep_224 to i64
  %_offset_above_rbp_1058 = sub i64 %440, %_local_end_to_int_
  %_pot_address_in_parent_stack_1059 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1058
  %_cond1_1060 = icmp ugt i8* %_new_gep_224, %_local_stack_end_ptr_
  %_cond2_1_1061 = icmp ugt i8* %_new_gep_224, %_parent_stack_end_ptr_
  %_cond2_2_1062 = icmp ult i8* %_new_gep_224, %_parent_stack_start_ptr_
  %_cond2_1063 = or i1 %_cond2_1_1061, %_cond2_2_1062
  %_cond4_1064 = icmp ule i8* %_pot_address_in_parent_stack_1059, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1065 = and i1 %_cond1_1060, %_cond2_1063
  %_cond1_n_cond2_cond3_1066 = and i1 %_cond1_n_cond2_1065, %_cond4_1064
  %_address_in_parent_stack_bt_1068..v = select i1 %_cond1_n_cond2_cond3_1066, i8* %_pot_address_in_parent_stack_1059, i8* %_new_gep_224
  %_address_in_parent_stack_bt_1068. = bitcast i8* %_address_in_parent_stack_bt_1068..v to i32*
  %_new_load_1069 = load i32, i32* %_address_in_parent_stack_bt_1068., align 4
  %441 = zext i32 %_new_load_1069 to i64, !mcsema_real_eip !128
  store i64 %441, i64* %XAX, align 8, !mcsema_real_eip !128
  %_new_gep_227 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_220, i64 -20
  %442 = ptrtoint i8* %_new_gep_227 to i64
  %443 = bitcast i8* %_new_gep_227 to i32*
  %_offset_above_rbp_1073 = sub i64 %442, %_local_end_to_int_
  %_pot_address_in_parent_stack_1074 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1073
  %_cond1_1075 = icmp ugt i8* %_new_gep_227, %_local_stack_end_ptr_
  %_cond2_1_1076 = icmp ugt i8* %_new_gep_227, %_parent_stack_end_ptr_
  %_cond2_2_1077 = icmp ult i8* %_new_gep_227, %_parent_stack_start_ptr_
  %_cond2_1078 = or i1 %_cond2_1_1076, %_cond2_2_1077
  %_cond4_1079 = icmp ule i8* %_pot_address_in_parent_stack_1074, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1080 = and i1 %_cond1_1075, %_cond2_1078
  %_cond1_n_cond2_cond3_1081 = and i1 %_cond1_n_cond2_1080, %_cond4_1079
  %_address_in_parent_stack_bt_1083 = bitcast i8* %_pot_address_in_parent_stack_1074 to i32*
  %444 = select i1 %_cond1_n_cond2_cond3_1081, i32* %_address_in_parent_stack_bt_1083, i32* %443
  %_new_load_1084 = load i32, i32* %444, align 4
  %445 = sub i32 %_new_load_1069, %_new_load_1084, !mcsema_real_eip !129
  %446 = xor i32 %445, %_new_load_1069, !mcsema_real_eip !129
  %447 = xor i32 %446, %_new_load_1084, !mcsema_real_eip !129
  %448 = and i32 %447, 16, !mcsema_real_eip !129
  %449 = icmp ne i32 %448, 0, !mcsema_real_eip !129
  store i1 %449, i1* %AF, align 1, !mcsema_real_eip !129
  %450 = trunc i32 %445 to i8, !mcsema_real_eip !129
  %451 = call i8 @llvm.ctpop.i8(i8 %450), !mcsema_real_eip !129
  %452 = and i8 %451, 1
  %453 = icmp eq i8 %452, 0
  store i1 %453, i1* %PF, align 1, !mcsema_real_eip !129
  %454 = icmp eq i32 %445, 0, !mcsema_real_eip !129
  store i1 %454, i1* %ZF, align 1, !mcsema_real_eip !129
  %455 = icmp slt i32 %445, 0
  store i1 %455, i1* %SF, align 1, !mcsema_real_eip !129
  %456 = icmp ult i32 %_new_load_1069, %_new_load_1084, !mcsema_real_eip !129
  store i1 %456, i1* %CF, align 1, !mcsema_real_eip !129
  %457 = xor i32 %_new_load_1084, %_new_load_1069, !mcsema_real_eip !129
  %458 = and i32 %446, %457, !mcsema_real_eip !129
  %459 = icmp slt i32 %458, 0
  store i1 %459, i1* %OF, align 1, !mcsema_real_eip !129
  br i1 %454, label %block_0x280, label %block_0x28c, !mcsema_real_eip !130

block_0x280:                                      ; preds = %block_0x274
  store i32 0, i32* %443, align 4, !mcsema_real_eip !131
  br label %block_0x293, !mcsema_real_eip !132

block_0x28c:                                      ; preds = %block_0x231.block_0x28c_crit_edge, %block_0x274
  %.pre-phi = phi i32* [ %.pre22, %block_0x231.block_0x28c_crit_edge ], [ %443, %block_0x274 ]
  store i32 48351, i32* %.pre-phi, align 4, !mcsema_real_eip !133
  br label %block_0x293, !mcsema_real_eip !134

block_0x293:                                      ; preds = %block_0x28c, %block_0x280
  store i64 8, i64* %XDX, align 8, !mcsema_real_eip !134
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_235 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_236 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_235, i64 -20
  %460 = ptrtoint i8* %_new_gep_236 to i64
  %_offset_above_rbp_1088 = sub i64 %460, %_local_end_to_int_
  %_pot_address_in_parent_stack_1089 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1088
  %_cond1_1090 = icmp ugt i8* %_new_gep_236, %_local_stack_end_ptr_
  %_cond2_1_1091 = icmp ugt i8* %_new_gep_236, %_parent_stack_end_ptr_
  %_cond2_2_1092 = icmp ult i8* %_new_gep_236, %_parent_stack_start_ptr_
  %_cond2_1093 = or i1 %_cond2_1_1091, %_cond2_2_1092
  %_cond4_1094 = icmp ule i8* %_pot_address_in_parent_stack_1089, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1095 = and i1 %_cond1_1090, %_cond2_1093
  %_cond1_n_cond2_cond3_1096 = and i1 %_cond1_n_cond2_1095, %_cond4_1094
  %_address_in_parent_stack_bt_1098..v = select i1 %_cond1_n_cond2_cond3_1096, i8* %_pot_address_in_parent_stack_1089, i8* %_new_gep_236
  %_address_in_parent_stack_bt_1098. = bitcast i8* %_address_in_parent_stack_bt_1098..v to i32*
  %_new_load_1099 = load i32, i32* %_address_in_parent_stack_bt_1098., align 4
  %461 = zext i32 %_new_load_1099 to i64, !mcsema_real_eip !135
  store i64 %461, i64* %XDI, align 8, !mcsema_real_eip !135
  %_new_gep_239 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_235, i64 -16
  %_ptr_to_int_1100 = ptrtoint i8* %_new_gep_239 to i64
  %_offset_above_rbp_1103 = sub i64 %_ptr_to_int_1100, %_local_end_to_int_
  %_pot_address_in_parent_stack_1104 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1103
  %_cond1_1105 = icmp ugt i8* %_new_gep_239, %_local_stack_end_ptr_
  %_cond2_1_1106 = icmp ugt i8* %_new_gep_239, %_parent_stack_end_ptr_
  %_cond2_2_1107 = icmp ult i8* %_new_gep_239, %_parent_stack_start_ptr_
  %_cond2_1108 = or i1 %_cond2_1_1106, %_cond2_2_1107
  %_cond4_1109 = icmp ule i8* %_pot_address_in_parent_stack_1104, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1110 = and i1 %_cond1_1105, %_cond2_1108
  %_cond1_n_cond2_cond3_1111 = and i1 %_cond1_n_cond2_1110, %_cond4_1109
  %.v17 = select i1 %_cond1_n_cond2_cond3_1111, i8* %_pot_address_in_parent_stack_1104, i8* %_new_gep_239
  %462 = bitcast i8* %.v17 to i64*
  %_new_load_1114 = load i64, i64* %462, align 8
  %463 = add i64 %_new_load_1114, 20, !mcsema_real_eip !137
  %464 = xor i64 %463, %_new_load_1114, !mcsema_real_eip !137
  %465 = and i64 %464, 16
  %466 = icmp eq i64 %465, 0
  store i1 %466, i1* %AF, align 1, !mcsema_real_eip !137
  %467 = icmp slt i64 %463, 0
  store i1 %467, i1* %SF, align 1, !mcsema_real_eip !137
  %468 = icmp eq i64 %463, 0, !mcsema_real_eip !137
  store i1 %468, i1* %ZF, align 1, !mcsema_real_eip !137
  %469 = xor i64 %_new_load_1114, -9223372036854775808, !mcsema_real_eip !137
  %470 = and i64 %464, %469, !mcsema_real_eip !137
  %471 = icmp slt i64 %470, 0
  store i1 %471, i1* %OF, align 1, !mcsema_real_eip !137
  %472 = trunc i64 %463 to i8, !mcsema_real_eip !137
  %473 = call i8 @llvm.ctpop.i8(i8 %472), !mcsema_real_eip !137
  %474 = and i8 %473, 1
  %475 = icmp eq i8 %474, 0
  store i1 %475, i1* %PF, align 1, !mcsema_real_eip !137
  %476 = icmp ugt i64 %_new_load_1114, -21
  store i1 %476, i1* %CF, align 1, !mcsema_real_eip !137
  store i64 %463, i64* %XAX, align 8, !mcsema_real_eip !137
  store i64 %463, i64* %XSI, align 8, !mcsema_real_eip !138
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_241 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.243 = load i64, i64* %XSP, align 8, !mcsema_real_eip !139
  %_new_gep_242 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_241, i64 -8
  %477 = add i64 %RSP_val.243, -8
  %_allin_new_bt_243 = bitcast i8* %_new_gep_242 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_243, align 8, !mcsema_real_eip !139
  store volatile i8* %_new_gep_242, i8** %_RSP_ptr_, align 8
  store i64 %477, i64* %XSP, align 8, !mcsema_real_eip !139
  %478 = call x86_64_sysvcc i64 @_read_bytes(i64 %461, i64 %463, i64 8)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_430 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_431 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_430, i64 8
  store i8* %_gep_fix_431, i8** %_RSP_ptr_, align 8
  store i64 %478, i64* %XAX, align 8, !mcsema_real_eip !139
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_244 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_245 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_244, i64 -60
  %479 = trunc i64 %478 to i32
  %480 = bitcast i8* %_new_gep_245 to i32*
  store i32 %479, i32* %480, align 4, !mcsema_real_eip !140
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_247 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_248 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_247, i64 -60
  %481 = ptrtoint i8* %_new_gep_248 to i64
  %482 = bitcast i8* %_new_gep_248 to i32*
  %_offset_above_rbp_1118 = sub i64 %481, %_local_end_to_int_
  %_pot_address_in_parent_stack_1119 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1118
  %_cond1_1120 = icmp ugt i8* %_new_gep_248, %_local_stack_end_ptr_
  %_cond2_1_1121 = icmp ugt i8* %_new_gep_248, %_parent_stack_end_ptr_
  %_cond2_2_1122 = icmp ult i8* %_new_gep_248, %_parent_stack_start_ptr_
  %_cond2_1123 = or i1 %_cond2_1_1121, %_cond2_2_1122
  %_cond4_1124 = icmp ule i8* %_pot_address_in_parent_stack_1119, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1125 = and i1 %_cond1_1120, %_cond2_1123
  %_cond1_n_cond2_cond3_1126 = and i1 %_cond1_n_cond2_1125, %_cond4_1124
  %_address_in_parent_stack_bt_1128 = bitcast i8* %_pot_address_in_parent_stack_1119 to i32*
  %_address_in_parent_stack_bt_1128. = select i1 %_cond1_n_cond2_cond3_1126, i32* %_address_in_parent_stack_bt_1128, i32* %482
  %_new_load_1129 = load i32, i32* %_address_in_parent_stack_bt_1128., align 4
  %483 = add i32 %_new_load_1129, -3
  %484 = xor i32 %483, %_new_load_1129, !mcsema_real_eip !142
  %485 = and i32 %484, 16, !mcsema_real_eip !142
  %486 = icmp ne i32 %485, 0, !mcsema_real_eip !142
  store i1 %486, i1* %AF, align 1, !mcsema_real_eip !142
  %487 = trunc i32 %483 to i8, !mcsema_real_eip !142
  %488 = call i8 @llvm.ctpop.i8(i8 %487), !mcsema_real_eip !142
  %489 = and i8 %488, 1
  %490 = icmp eq i8 %489, 0
  store i1 %490, i1* %PF, align 1, !mcsema_real_eip !142
  %491 = icmp eq i32 %483, 0, !mcsema_real_eip !142
  store i1 %491, i1* %ZF, align 1, !mcsema_real_eip !142
  %492 = icmp slt i32 %483, 0
  store i1 %492, i1* %SF, align 1, !mcsema_real_eip !142
  %493 = icmp ult i32 %_new_load_1129, 3, !mcsema_real_eip !142
  store i1 %493, i1* %CF, align 1, !mcsema_real_eip !142
  %494 = and i32 %484, %_new_load_1129, !mcsema_real_eip !142
  %495 = icmp slt i32 %494, 0
  store i1 %495, i1* %OF, align 1, !mcsema_real_eip !142
  %496 = zext i32 %483 to i64, !mcsema_real_eip !142
  store i64 %496, i64* %XAX, align 8, !mcsema_real_eip !142
  store i32 %483, i32* %482, align 4, !mcsema_real_eip !143
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_253 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_254 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_253, i64 -60
  %497 = ptrtoint i8* %_new_gep_254 to i64
  %498 = bitcast i8* %_new_gep_254 to i32*
  %_offset_above_rbp_1133 = sub i64 %497, %_local_end_to_int_
  %_pot_address_in_parent_stack_1134 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1133
  %_cond1_1135 = icmp ugt i8* %_new_gep_254, %_local_stack_end_ptr_
  %_cond2_1_1136 = icmp ugt i8* %_new_gep_254, %_parent_stack_end_ptr_
  %_cond2_2_1137 = icmp ult i8* %_new_gep_254, %_parent_stack_start_ptr_
  %_cond2_1138 = or i1 %_cond2_1_1136, %_cond2_2_1137
  %_cond4_1139 = icmp ule i8* %_pot_address_in_parent_stack_1134, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1140 = and i1 %_cond1_1135, %_cond2_1138
  %_cond1_n_cond2_cond3_1141 = and i1 %_cond1_n_cond2_1140, %_cond4_1139
  %_address_in_parent_stack_bt_1143 = bitcast i8* %_pot_address_in_parent_stack_1134 to i32*
  %499 = select i1 %_cond1_n_cond2_cond3_1141, i32* %_address_in_parent_stack_bt_1143, i32* %498
  %_new_load_1144 = load i32, i32* %499, align 4
  %500 = and i32 %_new_load_1144, 7, !mcsema_real_eip !145
  %501 = icmp eq i32 %500, 0
  %502 = trunc i32 %500 to i8
  %503 = call i8 @llvm.ctpop.i8(i8 %502)
  %504 = and i8 %503, 1
  %505 = icmp eq i8 %504, 0
  %506 = zext i32 %500 to i64, !mcsema_real_eip !145
  store i64 %506, i64* %XAX, align 8, !mcsema_real_eip !145
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !146
  store i1 %505, i1* %PF, align 1, !mcsema_real_eip !146
  store i1 %501, i1* %ZF, align 1, !mcsema_real_eip !146
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !146
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !146
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !146
  br i1 %501, label %block_0x2d2, label %block_0x417, !mcsema_real_eip !147

block_0x2d2:                                      ; preds = %block_0x293
  %_new_load_1159 = load i32, i32* %499, align 4
  %507 = xor i32 %_new_load_1159, -2147483648
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !149
  %508 = trunc i32 %_new_load_1159 to i8, !mcsema_real_eip !149
  %509 = call i8 @llvm.ctpop.i8(i8 %508), !mcsema_real_eip !149
  %510 = and i8 %509, 1
  %511 = icmp eq i8 %510, 0
  store i1 %511, i1* %PF, align 1, !mcsema_real_eip !149
  %512 = icmp eq i32 %507, 0, !mcsema_real_eip !149
  store i1 %512, i1* %ZF, align 1, !mcsema_real_eip !149
  %513 = icmp sgt i32 %_new_load_1159, -1
  store i1 %513, i1* %SF, align 1, !mcsema_real_eip !149
  store i1 %513, i1* %CF, align 1, !mcsema_real_eip !149
  store i1 %513, i1* %OF, align 1, !mcsema_real_eip !149
  %514 = zext i32 %507 to i64, !mcsema_real_eip !149
  store i64 %514, i64* %XAX, align 8, !mcsema_real_eip !149
  store i32 %507, i32* %498, align 4, !mcsema_real_eip !150
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_265 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_266 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_265, i64 -60
  %515 = ptrtoint i8* %_new_gep_266 to i64
  %516 = bitcast i8* %_new_gep_266 to i32*
  %_offset_above_rbp_1163 = sub i64 %515, %_local_end_to_int_
  %_pot_address_in_parent_stack_1164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1163
  %_cond1_1165 = icmp ugt i8* %_new_gep_266, %_local_stack_end_ptr_
  %_cond2_1_1166 = icmp ugt i8* %_new_gep_266, %_parent_stack_end_ptr_
  %_cond2_2_1167 = icmp ult i8* %_new_gep_266, %_parent_stack_start_ptr_
  %_cond2_1168 = or i1 %_cond2_1_1166, %_cond2_2_1167
  %_cond4_1169 = icmp ule i8* %_pot_address_in_parent_stack_1164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1170 = and i1 %_cond1_1165, %_cond2_1168
  %_cond1_n_cond2_cond3_1171 = and i1 %_cond1_n_cond2_1170, %_cond4_1169
  %_address_in_parent_stack_bt_1173 = bitcast i8* %_pot_address_in_parent_stack_1164 to i32*
  %517 = select i1 %_cond1_n_cond2_cond3_1171, i32* %_address_in_parent_stack_bt_1173, i32* %516
  %_new_load_1174 = load i32, i32* %517, align 4
  %518 = add i32 %_new_load_1174, -268435455
  %519 = xor i32 %518, %_new_load_1174, !mcsema_real_eip !151
  %520 = and i32 %519, 16
  %521 = icmp eq i32 %520, 0
  store i1 %521, i1* %AF, align 1, !mcsema_real_eip !151
  %522 = trunc i32 %518 to i8, !mcsema_real_eip !151
  %523 = call i8 @llvm.ctpop.i8(i8 %522), !mcsema_real_eip !151
  %524 = and i8 %523, 1
  %525 = icmp eq i8 %524, 0
  store i1 %525, i1* %PF, align 1, !mcsema_real_eip !151
  %526 = icmp eq i32 %518, 0, !mcsema_real_eip !151
  store i1 %526, i1* %ZF, align 1, !mcsema_real_eip !151
  %527 = icmp slt i32 %518, 0
  store i1 %527, i1* %SF, align 1, !mcsema_real_eip !151
  %528 = icmp ult i32 %_new_load_1174, 268435455, !mcsema_real_eip !151
  store i1 %528, i1* %CF, align 1, !mcsema_real_eip !151
  %529 = and i32 %519, %_new_load_1174, !mcsema_real_eip !151
  %530 = icmp slt i32 %529, 0
  store i1 %530, i1* %OF, align 1, !mcsema_real_eip !151
  %531 = or i1 %528, %526, !mcsema_real_eip !152
  br i1 %531, label %block_0x2f6, label %block_0x417, !mcsema_real_eip !152

block_0x2f6:                                      ; preds = %block_0x2d2
  store i64 10000, i64* %XAX, align 8, !mcsema_real_eip !153
  %_new_load_1189 = load i32, i32* %517, align 4
  %532 = xor i32 %_new_load_1189, 13631488, !mcsema_real_eip !155
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !155
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !155
  %533 = icmp slt i32 %_new_load_1189, 0
  store i1 %533, i1* %SF, align 1, !mcsema_real_eip !155
  %534 = icmp eq i32 %532, 0, !mcsema_real_eip !155
  store i1 %534, i1* %ZF, align 1, !mcsema_real_eip !155
  %535 = trunc i32 %_new_load_1189 to i8, !mcsema_real_eip !155
  %536 = call i8 @llvm.ctpop.i8(i8 %535), !mcsema_real_eip !155
  %537 = and i8 %536, 1
  %538 = icmp eq i8 %537, 0
  store i1 %538, i1* %PF, align 1, !mcsema_real_eip !155
  %539 = zext i32 %532 to i64, !mcsema_real_eip !155
  store i64 %539, i64* %XCX, align 8, !mcsema_real_eip !155
  store i32 %532, i32* %516, align 4, !mcsema_real_eip !156
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_277 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_278 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_277, i64 -60
  %540 = ptrtoint i8* %_new_gep_278 to i64
  %541 = bitcast i8* %_new_gep_278 to i32*
  %_offset_above_rbp_1193 = sub i64 %540, %_local_end_to_int_
  %_pot_address_in_parent_stack_1194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1193
  %_cond1_1195 = icmp ugt i8* %_new_gep_278, %_local_stack_end_ptr_
  %_cond2_1_1196 = icmp ugt i8* %_new_gep_278, %_parent_stack_end_ptr_
  %_cond2_2_1197 = icmp ult i8* %_new_gep_278, %_parent_stack_start_ptr_
  %_cond2_1198 = or i1 %_cond2_1_1196, %_cond2_2_1197
  %_cond4_1199 = icmp ule i8* %_pot_address_in_parent_stack_1194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1200 = and i1 %_cond1_1195, %_cond2_1198
  %_cond1_n_cond2_cond3_1201 = and i1 %_cond1_n_cond2_1200, %_cond4_1199
  %_address_in_parent_stack_bt_1203 = bitcast i8* %_pot_address_in_parent_stack_1194 to i32*
  %542 = select i1 %_cond1_n_cond2_cond3_1201, i32* %_address_in_parent_stack_bt_1203, i32* %541
  %_new_load_1204 = load i32, i32* %542, align 4
  %543 = and i32 %_new_load_1204, 8, !mcsema_real_eip !158
  %544 = icmp ne i32 %543, 0, !mcsema_real_eip !158
  %545 = lshr i32 %_new_load_1204, 4
  store i1 %544, i1* %CF, align 1, !mcsema_real_eip !158
  %546 = icmp eq i32 %545, 0, !mcsema_real_eip !158
  store i1 %546, i1* %ZF, align 1, !mcsema_real_eip !158
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !158
  %547 = trunc i32 %545 to i8, !mcsema_real_eip !158
  %548 = call i8 @llvm.ctpop.i8(i8 %547), !mcsema_real_eip !158
  %549 = and i8 %548, 1
  %550 = icmp eq i8 %549, 0
  store i1 %550, i1* %PF, align 1, !mcsema_real_eip !158
  %551 = zext i32 %545 to i64, !mcsema_real_eip !158
  store i64 %551, i64* %XCX, align 8, !mcsema_real_eip !158
  store i32 %545, i32* %541, align 4, !mcsema_real_eip !159
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_283 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_284 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_283, i64 -60
  %552 = ptrtoint i8* %_new_gep_284 to i64
  %553 = bitcast i8* %_new_gep_284 to i32*
  %_offset_above_rbp_1208 = sub i64 %552, %_local_end_to_int_
  %_pot_address_in_parent_stack_1209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1208
  %_cond1_1210 = icmp ugt i8* %_new_gep_284, %_local_stack_end_ptr_
  %_cond2_1_1211 = icmp ugt i8* %_new_gep_284, %_parent_stack_end_ptr_
  %_cond2_2_1212 = icmp ult i8* %_new_gep_284, %_parent_stack_start_ptr_
  %_cond2_1213 = or i1 %_cond2_1_1211, %_cond2_2_1212
  %_cond4_1214 = icmp ule i8* %_pot_address_in_parent_stack_1209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1215 = and i1 %_cond1_1210, %_cond2_1213
  %_cond1_n_cond2_cond3_1216 = and i1 %_cond1_n_cond2_1215, %_cond4_1214
  %_address_in_parent_stack_bt_1218 = bitcast i8* %_pot_address_in_parent_stack_1209 to i32*
  %_address_in_parent_stack_bt_1218. = select i1 %_cond1_n_cond2_cond3_1216, i32* %_address_in_parent_stack_bt_1218, i32* %553
  %_new_load_1219 = load i32, i32* %_address_in_parent_stack_bt_1218., align 4
  %554 = add i32 %_new_load_1219, -226
  %555 = xor i32 %554, %_new_load_1219, !mcsema_real_eip !161
  %556 = and i32 %555, 16, !mcsema_real_eip !161
  %557 = icmp ne i32 %556, 0, !mcsema_real_eip !161
  store i1 %557, i1* %AF, align 1, !mcsema_real_eip !161
  %558 = trunc i32 %554 to i8, !mcsema_real_eip !161
  %559 = call i8 @llvm.ctpop.i8(i8 %558), !mcsema_real_eip !161
  %560 = and i8 %559, 1
  %561 = icmp eq i8 %560, 0
  store i1 %561, i1* %PF, align 1, !mcsema_real_eip !161
  %562 = icmp eq i32 %554, 0, !mcsema_real_eip !161
  store i1 %562, i1* %ZF, align 1, !mcsema_real_eip !161
  %563 = icmp slt i32 %554, 0
  store i1 %563, i1* %SF, align 1, !mcsema_real_eip !161
  %564 = icmp ult i32 %_new_load_1219, 226, !mcsema_real_eip !161
  store i1 %564, i1* %CF, align 1, !mcsema_real_eip !161
  %565 = and i32 %555, %_new_load_1219, !mcsema_real_eip !161
  %566 = icmp slt i32 %565, 0
  store i1 %566, i1* %OF, align 1, !mcsema_real_eip !161
  %567 = zext i32 %554 to i64, !mcsema_real_eip !161
  store i64 %567, i64* %XCX, align 8, !mcsema_real_eip !161
  store i32 %554, i32* %553, align 4, !mcsema_real_eip !162
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_289 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_290 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_289, i64 -60
  %568 = ptrtoint i8* %_new_gep_290 to i64
  %_offset_above_rbp_1223 = sub i64 %568, %_local_end_to_int_
  %_pot_address_in_parent_stack_1224 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1223
  %_cond1_1225 = icmp ugt i8* %_new_gep_290, %_local_stack_end_ptr_
  %_cond2_1_1226 = icmp ugt i8* %_new_gep_290, %_parent_stack_end_ptr_
  %_cond2_2_1227 = icmp ult i8* %_new_gep_290, %_parent_stack_start_ptr_
  %_cond2_1228 = or i1 %_cond2_1_1226, %_cond2_2_1227
  %_cond4_1229 = icmp ule i8* %_pot_address_in_parent_stack_1224, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1230 = and i1 %_cond1_1225, %_cond2_1228
  %_cond1_n_cond2_cond3_1231 = and i1 %_cond1_n_cond2_1230, %_cond4_1229
  %.v18 = select i1 %_cond1_n_cond2_cond3_1231, i8* %_pot_address_in_parent_stack_1224, i8* %_new_gep_290
  %569 = bitcast i8* %.v18 to i32*
  %_new_load_1234 = load i32, i32* %569, align 4
  %570 = zext i32 %_new_load_1234 to i64, !mcsema_real_eip !163
  store i64 %570, i64* %XCX, align 8, !mcsema_real_eip !163
  %_new_gep_293 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_289, i64 -68
  %EAX_val.288 = load i32, i32* %EAX.9, align 4, !mcsema_real_eip !164
  %571 = bitcast i8* %_new_gep_293 to i32*
  store i32 %EAX_val.288, i32* %571, align 4, !mcsema_real_eip !164
  %ECX_val.290 = load i32, i32* %ECX.12, align 4, !mcsema_real_eip !165
  %572 = zext i32 %ECX_val.290 to i64, !mcsema_real_eip !165
  store i64 %572, i64* %XAX, align 8, !mcsema_real_eip !165
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !166
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !166
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !166
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !166
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !166
  store i64 0, i64* %XDX, align 8, !mcsema_real_eip !166
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_295 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_296 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_295, i64 -68
  %573 = ptrtoint i8* %_new_gep_296 to i64
  %_offset_above_rbp_1238 = sub i64 %573, %_local_end_to_int_
  %_pot_address_in_parent_stack_1239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1238
  %_cond1_1240 = icmp ugt i8* %_new_gep_296, %_local_stack_end_ptr_
  %_cond2_1_1241 = icmp ugt i8* %_new_gep_296, %_parent_stack_end_ptr_
  %_cond2_2_1242 = icmp ult i8* %_new_gep_296, %_parent_stack_start_ptr_
  %_cond2_1243 = or i1 %_cond2_1_1241, %_cond2_2_1242
  %_cond4_1244 = icmp ule i8* %_pot_address_in_parent_stack_1239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1245 = and i1 %_cond1_1240, %_cond2_1243
  %_cond1_n_cond2_cond3_1246 = and i1 %_cond1_n_cond2_1245, %_cond4_1244
  %_address_in_parent_stack_bt_1248..v = select i1 %_cond1_n_cond2_cond3_1246, i8* %_pot_address_in_parent_stack_1239, i8* %_new_gep_296
  %_address_in_parent_stack_bt_1248. = bitcast i8* %_address_in_parent_stack_bt_1248..v to i32*
  %_new_load_1249 = load i32, i32* %_address_in_parent_stack_bt_1248., align 4
  %574 = zext i32 %_new_load_1249 to i64
  store i64 %574, i64* %XCX, align 8, !mcsema_real_eip !167
  %575 = sext i32 %ECX_val.290 to i64, !mcsema_real_eip !168
  %576 = udiv i64 %575, %574, !mcsema_real_eip !168
  %577 = urem i64 %575, %574, !mcsema_real_eip !168
  store i64 %577, i64* %XDX, align 8, !mcsema_real_eip !168
  %578 = and i64 %576, 4294967295
  store i64 %578, i64* %XAX, align 8, !mcsema_real_eip !168
  %_new_gep_299 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_295, i64 -60
  %579 = trunc i64 %576 to i32
  %580 = bitcast i8* %_new_gep_299 to i32*
  store i32 %579, i32* %580, align 4, !mcsema_real_eip !169
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_301 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_302 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_301, i64 -60
  %581 = ptrtoint i8* %_new_gep_302 to i64
  %_offset_above_rbp_1253 = sub i64 %581, %_local_end_to_int_
  %_pot_address_in_parent_stack_1254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1253
  %_cond1_1255 = icmp ugt i8* %_new_gep_302, %_local_stack_end_ptr_
  %_cond2_1_1256 = icmp ugt i8* %_new_gep_302, %_parent_stack_end_ptr_
  %_cond2_2_1257 = icmp ult i8* %_new_gep_302, %_parent_stack_start_ptr_
  %_cond2_1258 = or i1 %_cond2_1_1256, %_cond2_2_1257
  %_cond4_1259 = icmp ule i8* %_pot_address_in_parent_stack_1254, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1260 = and i1 %_cond1_1255, %_cond2_1258
  %_cond1_n_cond2_cond3_1261 = and i1 %_cond1_n_cond2_1260, %_cond4_1259
  %.v19 = select i1 %_cond1_n_cond2_cond3_1261, i8* %_pot_address_in_parent_stack_1254, i8* %_new_gep_302
  %582 = bitcast i8* %.v19 to i32*
  %_new_load_1264 = load i32, i32* %582, align 4
  %583 = add i32 %_new_load_1264, -3
  %584 = xor i32 %583, %_new_load_1264, !mcsema_real_eip !170
  %585 = and i32 %584, 16, !mcsema_real_eip !170
  %586 = icmp ne i32 %585, 0, !mcsema_real_eip !170
  store i1 %586, i1* %AF, align 1, !mcsema_real_eip !170
  %587 = trunc i32 %583 to i8, !mcsema_real_eip !170
  %588 = call i8 @llvm.ctpop.i8(i8 %587), !mcsema_real_eip !170
  %589 = and i8 %588, 1
  %590 = icmp eq i8 %589, 0
  store i1 %590, i1* %PF, align 1, !mcsema_real_eip !170
  %591 = icmp eq i32 %583, 0, !mcsema_real_eip !170
  store i1 %591, i1* %ZF, align 1, !mcsema_real_eip !170
  %592 = icmp slt i32 %583, 0
  store i1 %592, i1* %SF, align 1, !mcsema_real_eip !170
  %593 = icmp ult i32 %_new_load_1264, 3, !mcsema_real_eip !170
  store i1 %593, i1* %CF, align 1, !mcsema_real_eip !170
  %594 = and i32 %584, %_new_load_1264, !mcsema_real_eip !170
  %595 = icmp slt i32 %594, 0
  store i1 %595, i1* %OF, align 1, !mcsema_real_eip !170
  br i1 %591, label %block_0x343, label %block_0x338, !mcsema_real_eip !171

block_0x338:                                      ; preds = %block_0x2f6
  %_new_load_1279 = load i32, i32* %582, align 4
  %596 = zext i32 %_new_load_1279 to i64, !mcsema_real_eip !172
  store i64 %596, i64* %XAX, align 8, !mcsema_real_eip !172
  br label %block_0x417, !mcsema_real_eip !173

block_0x343:                                      ; preds = %block_0x2f6
  store i64 4, i64* %XDX, align 8, !mcsema_real_eip !174
  %_new_gep_311 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_301, i64 -20
  %597 = ptrtoint i8* %_new_gep_311 to i64
  %_offset_above_rbp_1283 = sub i64 %597, %_local_end_to_int_
  %_pot_address_in_parent_stack_1284 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1283
  %_cond1_1285 = icmp ugt i8* %_new_gep_311, %_local_stack_end_ptr_
  %_cond2_1_1286 = icmp ugt i8* %_new_gep_311, %_parent_stack_end_ptr_
  %_cond2_2_1287 = icmp ult i8* %_new_gep_311, %_parent_stack_start_ptr_
  %_cond2_1288 = or i1 %_cond2_1_1286, %_cond2_2_1287
  %_cond4_1289 = icmp ule i8* %_pot_address_in_parent_stack_1284, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1290 = and i1 %_cond1_1285, %_cond2_1288
  %_cond1_n_cond2_cond3_1291 = and i1 %_cond1_n_cond2_1290, %_cond4_1289
  %_address_in_parent_stack_bt_1293..v = select i1 %_cond1_n_cond2_cond3_1291, i8* %_pot_address_in_parent_stack_1284, i8* %_new_gep_311
  %_address_in_parent_stack_bt_1293. = bitcast i8* %_address_in_parent_stack_bt_1293..v to i32*
  %_new_load_1294 = load i32, i32* %_address_in_parent_stack_bt_1293., align 4
  %598 = zext i32 %_new_load_1294 to i64, !mcsema_real_eip !175
  store i64 %598, i64* %XDI, align 8, !mcsema_real_eip !175
  %_new_gep_314 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_301, i64 -16
  %_ptr_to_int_1295 = ptrtoint i8* %_new_gep_314 to i64
  %_offset_above_rbp_1298 = sub i64 %_ptr_to_int_1295, %_local_end_to_int_
  %_pot_address_in_parent_stack_1299 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1298
  %_cond1_1300 = icmp ugt i8* %_new_gep_314, %_local_stack_end_ptr_
  %_cond2_1_1301 = icmp ugt i8* %_new_gep_314, %_parent_stack_end_ptr_
  %_cond2_2_1302 = icmp ult i8* %_new_gep_314, %_parent_stack_start_ptr_
  %_cond2_1303 = or i1 %_cond2_1_1301, %_cond2_2_1302
  %_cond4_1304 = icmp ule i8* %_pot_address_in_parent_stack_1299, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1305 = and i1 %_cond1_1300, %_cond2_1303
  %_cond1_n_cond2_cond3_1306 = and i1 %_cond1_n_cond2_1305, %_cond4_1304
  %.v20 = select i1 %_cond1_n_cond2_cond3_1306, i8* %_pot_address_in_parent_stack_1299, i8* %_new_gep_314
  %599 = bitcast i8* %.v20 to i64*
  %_new_load_1309 = load i64, i64* %599, align 8
  %600 = add i64 %_new_load_1309, 28, !mcsema_real_eip !177
  %601 = xor i64 %600, %_new_load_1309, !mcsema_real_eip !177
  %602 = and i64 %601, 16
  %603 = icmp eq i64 %602, 0
  store i1 %603, i1* %AF, align 1, !mcsema_real_eip !177
  %604 = icmp slt i64 %600, 0
  store i1 %604, i1* %SF, align 1, !mcsema_real_eip !177
  %605 = icmp eq i64 %600, 0, !mcsema_real_eip !177
  store i1 %605, i1* %ZF, align 1, !mcsema_real_eip !177
  %606 = xor i64 %_new_load_1309, -9223372036854775808, !mcsema_real_eip !177
  %607 = and i64 %601, %606, !mcsema_real_eip !177
  %608 = icmp slt i64 %607, 0
  store i1 %608, i1* %OF, align 1, !mcsema_real_eip !177
  %609 = trunc i64 %600 to i8, !mcsema_real_eip !177
  %610 = call i8 @llvm.ctpop.i8(i8 %609), !mcsema_real_eip !177
  %611 = and i8 %610, 1
  %612 = icmp eq i8 %611, 0
  store i1 %612, i1* %PF, align 1, !mcsema_real_eip !177
  %613 = icmp ugt i64 %_new_load_1309, -29
  store i1 %613, i1* %CF, align 1, !mcsema_real_eip !177
  store i64 %600, i64* %XAX, align 8, !mcsema_real_eip !177
  store i64 %600, i64* %XSI, align 8, !mcsema_real_eip !178
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_316 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.317 = load i64, i64* %XSP, align 8, !mcsema_real_eip !179
  %_new_gep_317 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_316, i64 -8
  %614 = add i64 %RSP_val.317, -8
  %_allin_new_bt_318 = bitcast i8* %_new_gep_317 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_318, align 8, !mcsema_real_eip !179
  store volatile i8* %_new_gep_317, i8** %_RSP_ptr_, align 8
  store i64 %614, i64* %XSP, align 8, !mcsema_real_eip !179
  %615 = call x86_64_sysvcc i64 @_read_bytes(i64 %598, i64 %600, i64 4)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_432 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_433 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_432, i64 8
  store i8* %_gep_fix_433, i8** %_RSP_ptr_, align 8
  store i64 %615, i64* %XAX, align 8, !mcsema_real_eip !179
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_319 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_320 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_319, i64 -64
  %616 = trunc i64 %615 to i32
  %617 = bitcast i8* %_new_gep_320 to i32*
  store i32 %616, i32* %617, align 4, !mcsema_real_eip !180
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_322 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_323 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_322, i64 -16
  %_ptr_to_int_1310 = ptrtoint i8* %_new_gep_323 to i64
  %_offset_above_rbp_1313 = sub i64 %_ptr_to_int_1310, %_local_end_to_int_
  %_pot_address_in_parent_stack_1314 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1313
  %_cond1_1315 = icmp ugt i8* %_new_gep_323, %_local_stack_end_ptr_
  %_cond2_1_1316 = icmp ugt i8* %_new_gep_323, %_parent_stack_end_ptr_
  %_cond2_2_1317 = icmp ult i8* %_new_gep_323, %_parent_stack_start_ptr_
  %_cond2_1318 = or i1 %_cond2_1_1316, %_cond2_2_1317
  %_cond4_1319 = icmp ule i8* %_pot_address_in_parent_stack_1314, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1320 = and i1 %_cond1_1315, %_cond2_1318
  %_cond1_n_cond2_cond3_1321 = and i1 %_cond1_n_cond2_1320, %_cond4_1319
  %_address_in_parent_stack_bt_1323._allin_new_bt_324.v = select i1 %_cond1_n_cond2_cond3_1321, i8* %_pot_address_in_parent_stack_1314, i8* %_new_gep_323
  %_address_in_parent_stack_bt_1323._allin_new_bt_324 = bitcast i8* %_address_in_parent_stack_bt_1323._allin_new_bt_324.v to i64*
  %_new_load_1324 = load i64, i64* %_address_in_parent_stack_bt_1323._allin_new_bt_324, align 8
  store i64 %_new_load_1324, i64* %XSI, align 8, !mcsema_real_eip !181
  %618 = add i64 %_new_load_1324, 28, !mcsema_real_eip !182
  %619 = inttoptr i64 %618 to i8*, !mcsema_real_eip !182
  %_offset_above_rbp_1327 = sub i64 %618, %_local_end_to_int_
  %_pot_address_in_parent_stack_1328 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1327
  %_cond1_1329 = icmp ult i8* %_local_stack_end_ptr_, %619
  %_cond2_1_1330 = icmp ugt i8* %619, %_parent_stack_end_ptr_
  %_cond2_2_1331 = icmp ult i8* %619, %_parent_stack_start_ptr_
  %_cond2_1332 = or i1 %_cond2_1_1330, %_cond2_2_1331
  %_cond4_1333 = icmp ule i8* %_pot_address_in_parent_stack_1328, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1334 = and i1 %_cond1_1329, %_cond2_1332
  %_cond1_n_cond2_cond3_1335 = and i1 %_cond4_1333, %_cond1_n_cond2_1334
  %620 = select i1 %_cond1_n_cond2_cond3_1335, i8* %_pot_address_in_parent_stack_1328, i8* %619
  %_new_load_1337 = load i8, i8* %620, align 1
  %621 = sext i8 %_new_load_1337 to i64
  %622 = and i64 %621, 4294967295
  store i64 %622, i64* %XAX, align 8, !mcsema_real_eip !182
  %623 = sext i8 %_new_load_1337 to i32
  %624 = add nsw i32 %623, -100
  %625 = xor i32 %624, %623, !mcsema_real_eip !183
  %626 = and i32 %625, 16, !mcsema_real_eip !183
  %627 = icmp ne i32 %626, 0, !mcsema_real_eip !183
  store i1 %627, i1* %AF, align 1, !mcsema_real_eip !183
  %628 = trunc i32 %624 to i8, !mcsema_real_eip !183
  %629 = call i8 @llvm.ctpop.i8(i8 %628), !mcsema_real_eip !183
  %630 = and i8 %629, 1
  %631 = icmp eq i8 %630, 0
  store i1 %631, i1* %PF, align 1, !mcsema_real_eip !183
  %632 = icmp eq i32 %624, 0, !mcsema_real_eip !183
  store i1 %632, i1* %ZF, align 1, !mcsema_real_eip !183
  %633 = icmp slt i8 %_new_load_1337, 100
  store i1 %633, i1* %SF, align 1, !mcsema_real_eip !183
  %634 = icmp ult i8 %_new_load_1337, 100
  store i1 %634, i1* %CF, align 1, !mcsema_real_eip !183
  %635 = and i32 %625, %623, !mcsema_real_eip !183
  %636 = icmp slt i32 %635, 0
  store i1 %636, i1* %OF, align 1, !mcsema_real_eip !183
  br i1 %632, label %block_0x36f, label %block_0x38e, !mcsema_real_eip !184

block_0x36f:                                      ; preds = %block_0x343
  %_new_load_1352 = load i64, i64* %_address_in_parent_stack_bt_1323._allin_new_bt_324, align 8
  store i64 %_new_load_1352, i64* %XAX, align 8, !mcsema_real_eip !185
  %637 = add i64 %_new_load_1352, 29, !mcsema_real_eip !186
  %638 = inttoptr i64 %637 to i8*, !mcsema_real_eip !186
  %_offset_above_rbp_1355 = sub i64 %637, %_local_end_to_int_
  %_pot_address_in_parent_stack_1356 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1355
  %_cond1_1357 = icmp ult i8* %_local_stack_end_ptr_, %638
  %_cond2_1_1358 = icmp ugt i8* %638, %_parent_stack_end_ptr_
  %_cond2_2_1359 = icmp ult i8* %638, %_parent_stack_start_ptr_
  %_cond2_1360 = or i1 %_cond2_1_1358, %_cond2_2_1359
  %_cond4_1361 = icmp ule i8* %_pot_address_in_parent_stack_1356, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1362 = and i1 %_cond1_1357, %_cond2_1360
  %_cond1_n_cond2_cond3_1363 = and i1 %_cond4_1361, %_cond1_n_cond2_1362
  %639 = select i1 %_cond1_n_cond2_cond3_1363, i8* %_pot_address_in_parent_stack_1356, i8* %638
  %_new_load_1365 = load i8, i8* %639, align 1
  %640 = sext i8 %_new_load_1365 to i64
  %641 = and i64 %640, 4294967295
  store i64 %641, i64* %XCX, align 8, !mcsema_real_eip !186
  %642 = sext i8 %_new_load_1365 to i32
  %643 = add nsw i32 %642, -100
  %644 = xor i32 %643, %642, !mcsema_real_eip !187
  %645 = and i32 %644, 16, !mcsema_real_eip !187
  %646 = icmp ne i32 %645, 0, !mcsema_real_eip !187
  store i1 %646, i1* %AF, align 1, !mcsema_real_eip !187
  %647 = trunc i32 %643 to i8, !mcsema_real_eip !187
  %648 = call i8 @llvm.ctpop.i8(i8 %647), !mcsema_real_eip !187
  %649 = and i8 %648, 1
  %650 = icmp eq i8 %649, 0
  store i1 %650, i1* %PF, align 1, !mcsema_real_eip !187
  %651 = icmp eq i32 %643, 0, !mcsema_real_eip !187
  store i1 %651, i1* %ZF, align 1, !mcsema_real_eip !187
  %652 = icmp slt i8 %_new_load_1365, 100
  store i1 %652, i1* %SF, align 1, !mcsema_real_eip !187
  %653 = icmp ult i8 %_new_load_1365, 100
  store i1 %653, i1* %CF, align 1, !mcsema_real_eip !187
  %654 = and i32 %644, %642, !mcsema_real_eip !187
  %655 = icmp slt i32 %654, 0
  store i1 %655, i1* %OF, align 1, !mcsema_real_eip !187
  br i1 %651, label %block_0x380, label %block_0x38e, !mcsema_real_eip !188

block_0x380:                                      ; preds = %block_0x36f
  %_new_gep_329 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_322, i64 -64
  %656 = ptrtoint i8* %_new_gep_329 to i64
  %_offset_above_rbp_1369 = sub i64 %656, %_local_end_to_int_
  %_pot_address_in_parent_stack_1370 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1369
  %_cond1_1371 = icmp ugt i8* %_new_gep_329, %_local_stack_end_ptr_
  %_cond2_1_1372 = icmp ugt i8* %_new_gep_329, %_parent_stack_end_ptr_
  %_cond2_2_1373 = icmp ult i8* %_new_gep_329, %_parent_stack_start_ptr_
  %_cond2_1374 = or i1 %_cond2_1_1372, %_cond2_2_1373
  %_cond4_1375 = icmp ule i8* %_pot_address_in_parent_stack_1370, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1376 = and i1 %_cond1_1371, %_cond2_1374
  %_cond1_n_cond2_cond3_1377 = and i1 %_cond1_n_cond2_1376, %_cond4_1375
  %_address_in_parent_stack_bt_1379..v = select i1 %_cond1_n_cond2_cond3_1377, i8* %_pot_address_in_parent_stack_1370, i8* %_new_gep_329
  %_address_in_parent_stack_bt_1379. = bitcast i8* %_address_in_parent_stack_bt_1379..v to i32*
  %_new_load_1380 = load i32, i32* %_address_in_parent_stack_bt_1379., align 4
  %657 = zext i32 %_new_load_1380 to i64, !mcsema_real_eip !189
  store i64 %657, i64* %XAX, align 8, !mcsema_real_eip !189
  %_new_gep_332 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_322, i64 -20
  %658 = ptrtoint i8* %_new_gep_332 to i64
  %659 = bitcast i8* %_new_gep_332 to i32*
  %_offset_above_rbp_1384 = sub i64 %658, %_local_end_to_int_
  %_pot_address_in_parent_stack_1385 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1384
  %_cond1_1386 = icmp ugt i8* %_new_gep_332, %_local_stack_end_ptr_
  %_cond2_1_1387 = icmp ugt i8* %_new_gep_332, %_parent_stack_end_ptr_
  %_cond2_2_1388 = icmp ult i8* %_new_gep_332, %_parent_stack_start_ptr_
  %_cond2_1389 = or i1 %_cond2_1_1387, %_cond2_2_1388
  %_cond4_1390 = icmp ule i8* %_pot_address_in_parent_stack_1385, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1391 = and i1 %_cond1_1386, %_cond2_1389
  %_cond1_n_cond2_cond3_1392 = and i1 %_cond1_n_cond2_1391, %_cond4_1390
  %_address_in_parent_stack_bt_1394 = bitcast i8* %_pot_address_in_parent_stack_1385 to i32*
  %660 = select i1 %_cond1_n_cond2_cond3_1392, i32* %_address_in_parent_stack_bt_1394, i32* %659
  %_new_load_1395 = load i32, i32* %660, align 4
  %661 = xor i32 %_new_load_1380, %_new_load_1395, !mcsema_real_eip !190
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !190
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !190
  %662 = icmp slt i32 %661, 0
  store i1 %662, i1* %SF, align 1, !mcsema_real_eip !190
  %663 = icmp eq i32 %661, 0, !mcsema_real_eip !190
  store i1 %663, i1* %ZF, align 1, !mcsema_real_eip !190
  %664 = trunc i32 %661 to i8, !mcsema_real_eip !190
  %665 = call i8 @llvm.ctpop.i8(i8 %664), !mcsema_real_eip !190
  %666 = and i8 %665, 1
  %667 = icmp eq i8 %666, 0
  store i1 %667, i1* %PF, align 1, !mcsema_real_eip !190
  %668 = zext i32 %661 to i64, !mcsema_real_eip !190
  store i64 %668, i64* %XAX, align 8, !mcsema_real_eip !190
  store i32 %661, i32* %659, align 4, !mcsema_real_eip !191
  br label %block_0x411, !mcsema_real_eip !192

block_0x38e:                                      ; preds = %block_0x36f, %block_0x343
  %_new_load_1410 = load i64, i64* %_address_in_parent_stack_bt_1323._allin_new_bt_324, align 8
  store i64 %_new_load_1410, i64* %XAX, align 8, !mcsema_real_eip !193
  %669 = add i64 %_new_load_1410, 28, !mcsema_real_eip !194
  %670 = inttoptr i64 %669 to i8*, !mcsema_real_eip !194
  %_offset_above_rbp_1413 = sub i64 %669, %_local_end_to_int_
  %_pot_address_in_parent_stack_1414 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1413
  %_cond1_1415 = icmp ult i8* %_local_stack_end_ptr_, %670
  %_cond2_1_1416 = icmp ugt i8* %670, %_parent_stack_end_ptr_
  %_cond2_2_1417 = icmp ult i8* %670, %_parent_stack_start_ptr_
  %_cond2_1418 = or i1 %_cond2_1_1416, %_cond2_2_1417
  %_cond4_1419 = icmp ule i8* %_pot_address_in_parent_stack_1414, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1420 = and i1 %_cond1_1415, %_cond2_1418
  %_cond1_n_cond2_cond3_1421 = and i1 %_cond4_1419, %_cond1_n_cond2_1420
  %671 = select i1 %_cond1_n_cond2_cond3_1421, i8* %_pot_address_in_parent_stack_1414, i8* %670
  %_new_load_1423 = load i8, i8* %671, align 1
  %672 = sext i8 %_new_load_1423 to i64
  %673 = and i64 %672, 4294967295
  store i64 %673, i64* %XCX, align 8, !mcsema_real_eip !194
  %_new_load_1438 = load i64, i64* %_address_in_parent_stack_bt_1323._allin_new_bt_324, align 8
  store i64 %_new_load_1438, i64* %XAX, align 8, !mcsema_real_eip !195
  %674 = add i64 %_new_load_1438, 29, !mcsema_real_eip !196
  %675 = inttoptr i64 %674 to i8*, !mcsema_real_eip !196
  %_offset_above_rbp_1441 = sub i64 %674, %_local_end_to_int_
  %_pot_address_in_parent_stack_1442 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1441
  %_cond1_1443 = icmp ult i8* %_local_stack_end_ptr_, %675
  %_cond2_1_1444 = icmp ugt i8* %675, %_parent_stack_end_ptr_
  %_cond2_2_1445 = icmp ult i8* %675, %_parent_stack_start_ptr_
  %_cond2_1446 = or i1 %_cond2_1_1444, %_cond2_2_1445
  %_cond4_1447 = icmp ule i8* %_pot_address_in_parent_stack_1442, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1448 = and i1 %_cond1_1443, %_cond2_1446
  %_cond1_n_cond2_cond3_1449 = and i1 %_cond4_1447, %_cond1_n_cond2_1448
  %676 = select i1 %_cond1_n_cond2_cond3_1449, i8* %_pot_address_in_parent_stack_1442, i8* %675
  %_new_load_1451 = load i8, i8* %676, align 1
  %677 = sext i8 %_new_load_1451 to i64
  %678 = and i64 %677, 4294967295
  store i64 %678, i64* %XDX, align 8, !mcsema_real_eip !196
  %679 = sext i8 %_new_load_1423 to i32
  %680 = sext i8 %_new_load_1451 to i32
  %681 = sub nsw i32 %679, %680, !mcsema_real_eip !197
  %682 = xor i32 %681, %679, !mcsema_real_eip !197
  %683 = xor i32 %682, %680, !mcsema_real_eip !197
  %684 = and i32 %683, 16, !mcsema_real_eip !197
  %685 = icmp ne i32 %684, 0, !mcsema_real_eip !197
  store i1 %685, i1* %AF, align 1, !mcsema_real_eip !197
  %686 = trunc i32 %681 to i8, !mcsema_real_eip !197
  %687 = call i8 @llvm.ctpop.i8(i8 %686), !mcsema_real_eip !197
  %688 = and i8 %687, 1
  %689 = icmp eq i8 %688, 0
  store i1 %689, i1* %PF, align 1, !mcsema_real_eip !197
  %690 = icmp eq i32 %681, 0, !mcsema_real_eip !197
  store i1 %690, i1* %ZF, align 1, !mcsema_real_eip !197
  %691 = icmp slt i32 %681, 0
  store i1 %691, i1* %SF, align 1, !mcsema_real_eip !197
  %692 = icmp ult i8 %_new_load_1423, %_new_load_1451
  store i1 %692, i1* %CF, align 1, !mcsema_real_eip !197
  %693 = xor i8 %_new_load_1451, %_new_load_1423
  %694 = sext i8 %693 to i32
  %695 = and i32 %682, %694, !mcsema_real_eip !197
  %696 = icmp slt i32 %695, 0
  store i1 %696, i1* %OF, align 1, !mcsema_real_eip !197
  br i1 %690, label %block_0x3a6, label %block_0x406, !mcsema_real_eip !198

block_0x3a6:                                      ; preds = %block_0x38e
  store i64 15, i64* %XAX, align 8, !mcsema_real_eip !199
  %_new_load_1466 = load i64, i64* %_address_in_parent_stack_bt_1323._allin_new_bt_324, align 8
  store i64 %_new_load_1466, i64* %XCX, align 8, !mcsema_real_eip !200
  %697 = add i64 %_new_load_1466, 31, !mcsema_real_eip !201
  %698 = inttoptr i64 %697 to i8*, !mcsema_real_eip !201
  %_offset_above_rbp_1469 = sub i64 %697, %_local_end_to_int_
  %_pot_address_in_parent_stack_1470 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1469
  %_cond1_1471 = icmp ult i8* %_local_stack_end_ptr_, %698
  %_cond2_1_1472 = icmp ugt i8* %698, %_parent_stack_end_ptr_
  %_cond2_2_1473 = icmp ult i8* %698, %_parent_stack_start_ptr_
  %_cond2_1474 = or i1 %_cond2_1_1472, %_cond2_2_1473
  %_cond4_1475 = icmp ule i8* %_pot_address_in_parent_stack_1470, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1476 = and i1 %_cond1_1471, %_cond2_1474
  %_cond1_n_cond2_cond3_1477 = and i1 %_cond4_1475, %_cond1_n_cond2_1476
  %699 = select i1 %_cond1_n_cond2_cond3_1477, i8* %_pot_address_in_parent_stack_1470, i8* %698
  %_new_load_1479 = load i8, i8* %699, align 1
  %700 = sext i8 %_new_load_1479 to i64
  %701 = and i64 %700, 4294967295
  store i64 %701, i64* %XDX, align 8, !mcsema_real_eip !201
  %_new_load_1494 = load i64, i64* %_address_in_parent_stack_bt_1323._allin_new_bt_324, align 8
  store i64 %_new_load_1494, i64* %XCX, align 8, !mcsema_real_eip !202
  %702 = add i64 %_new_load_1494, 30, !mcsema_real_eip !203
  %703 = inttoptr i64 %702 to i8*, !mcsema_real_eip !203
  %_offset_above_rbp_1497 = sub i64 %702, %_local_end_to_int_
  %_pot_address_in_parent_stack_1498 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1497
  %_cond1_1499 = icmp ult i8* %_local_stack_end_ptr_, %703
  %_cond2_1_1500 = icmp ugt i8* %703, %_parent_stack_end_ptr_
  %_cond2_2_1501 = icmp ult i8* %703, %_parent_stack_start_ptr_
  %_cond2_1502 = or i1 %_cond2_1_1500, %_cond2_2_1501
  %_cond4_1503 = icmp ule i8* %_pot_address_in_parent_stack_1498, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1504 = and i1 %_cond1_1499, %_cond2_1502
  %_cond1_n_cond2_cond3_1505 = and i1 %_cond4_1503, %_cond1_n_cond2_1504
  %704 = select i1 %_cond1_n_cond2_cond3_1505, i8* %_pot_address_in_parent_stack_1498, i8* %703
  %_new_load_1507 = load i8, i8* %704, align 1
  %705 = sext i8 %_new_load_1507 to i64
  %706 = and i64 %705, 4294967295
  store i64 %706, i64* %XSI, align 8, !mcsema_real_eip !203
  %707 = sext i8 %_new_load_1479 to i32
  %708 = sext i8 %_new_load_1507 to i32
  %709 = sub nsw i32 %707, %708, !mcsema_real_eip !204
  %710 = zext i32 %709 to i64, !mcsema_real_eip !204
  store i64 %710, i64* %XDX, align 8, !mcsema_real_eip !204
  %711 = sub nsw i32 15, %709, !mcsema_real_eip !205
  %712 = xor i32 %711, %709, !mcsema_real_eip !205
  %713 = and i32 %712, 16, !mcsema_real_eip !205
  %714 = icmp ne i32 %713, 0, !mcsema_real_eip !205
  store i1 %714, i1* %AF, align 1, !mcsema_real_eip !205
  %715 = trunc i32 %711 to i8, !mcsema_real_eip !205
  %716 = call i8 @llvm.ctpop.i8(i8 %715), !mcsema_real_eip !205
  %717 = and i8 %716, 1
  %718 = icmp eq i8 %717, 0
  store i1 %718, i1* %PF, align 1, !mcsema_real_eip !205
  %719 = icmp eq i32 %711, 0, !mcsema_real_eip !205
  store i1 %719, i1* %ZF, align 1, !mcsema_real_eip !205
  %720 = icmp slt i32 %711, 0
  store i1 %720, i1* %SF, align 1, !mcsema_real_eip !205
  %721 = icmp ugt i32 %709, 15, !mcsema_real_eip !205
  store i1 %721, i1* %CF, align 1, !mcsema_real_eip !205
  %722 = and i32 %711, %709, !mcsema_real_eip !205
  %723 = icmp slt i32 %722, 0
  store i1 %723, i1* %OF, align 1, !mcsema_real_eip !205
  %724 = zext i32 %711 to i64, !mcsema_real_eip !205
  store i64 %724, i64* %XAX, align 8, !mcsema_real_eip !205
  %_new_gep_350 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_322, i64 -20
  %725 = ptrtoint i8* %_new_gep_350 to i64
  %726 = bitcast i8* %_new_gep_350 to i32*
  %_offset_above_rbp_1511 = sub i64 %725, %_local_end_to_int_
  %_pot_address_in_parent_stack_1512 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1511
  %_cond1_1513 = icmp ugt i8* %_new_gep_350, %_local_stack_end_ptr_
  %_cond2_1_1514 = icmp ugt i8* %_new_gep_350, %_parent_stack_end_ptr_
  %_cond2_2_1515 = icmp ult i8* %_new_gep_350, %_parent_stack_start_ptr_
  %_cond2_1516 = or i1 %_cond2_1_1514, %_cond2_2_1515
  %_cond4_1517 = icmp ule i8* %_pot_address_in_parent_stack_1512, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1518 = and i1 %_cond1_1513, %_cond2_1516
  %_cond1_n_cond2_cond3_1519 = and i1 %_cond1_n_cond2_1518, %_cond4_1517
  %_address_in_parent_stack_bt_1521 = bitcast i8* %_pot_address_in_parent_stack_1512 to i32*
  %_address_in_parent_stack_bt_1521. = select i1 %_cond1_n_cond2_cond3_1519, i32* %_address_in_parent_stack_bt_1521, i32* %726
  %_new_load_1522 = load i32, i32* %_address_in_parent_stack_bt_1521., align 4
  %727 = add i32 %711, %_new_load_1522, !mcsema_real_eip !206
  %728 = xor i32 %727, %_new_load_1522, !mcsema_real_eip !206
  %729 = xor i32 %728, %711, !mcsema_real_eip !206
  %730 = and i32 %729, 16, !mcsema_real_eip !206
  %731 = icmp ne i32 %730, 0, !mcsema_real_eip !206
  store i1 %731, i1* %AF, align 1, !mcsema_real_eip !206
  %732 = icmp slt i32 %727, 0
  store i1 %732, i1* %SF, align 1, !mcsema_real_eip !206
  %733 = icmp eq i32 %727, 0, !mcsema_real_eip !206
  store i1 %733, i1* %ZF, align 1, !mcsema_real_eip !206
  %734 = xor i32 %_new_load_1522, -2147483648, !mcsema_real_eip !206
  %735 = xor i32 %734, %711, !mcsema_real_eip !206
  %736 = and i32 %728, %735, !mcsema_real_eip !206
  %737 = icmp slt i32 %736, 0
  store i1 %737, i1* %OF, align 1, !mcsema_real_eip !206
  %738 = trunc i32 %727 to i8, !mcsema_real_eip !206
  %739 = call i8 @llvm.ctpop.i8(i8 %738), !mcsema_real_eip !206
  %740 = and i8 %739, 1
  %741 = icmp eq i8 %740, 0
  store i1 %741, i1* %PF, align 1, !mcsema_real_eip !206
  %742 = icmp ult i32 %727, %_new_load_1522, !mcsema_real_eip !206
  store i1 %742, i1* %CF, align 1, !mcsema_real_eip !206
  %743 = zext i32 %727 to i64, !mcsema_real_eip !206
  store i64 %743, i64* %XAX, align 8, !mcsema_real_eip !206
  store i32 %727, i32* %726, align 4, !mcsema_real_eip !207
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_355 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_356 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_355, i64 -16
  %_ptr_to_int_1523 = ptrtoint i8* %_new_gep_356 to i64
  %_offset_above_rbp_1526 = sub i64 %_ptr_to_int_1523, %_local_end_to_int_
  %_pot_address_in_parent_stack_1527 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1526
  %_cond1_1528 = icmp ugt i8* %_new_gep_356, %_local_stack_end_ptr_
  %_cond2_1_1529 = icmp ugt i8* %_new_gep_356, %_parent_stack_end_ptr_
  %_cond2_2_1530 = icmp ult i8* %_new_gep_356, %_parent_stack_start_ptr_
  %_cond2_1531 = or i1 %_cond2_1_1529, %_cond2_2_1530
  %_cond4_1532 = icmp ule i8* %_pot_address_in_parent_stack_1527, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1533 = and i1 %_cond1_1528, %_cond2_1531
  %_cond1_n_cond2_cond3_1534 = and i1 %_cond1_n_cond2_1533, %_cond4_1532
  %.v21 = select i1 %_cond1_n_cond2_cond3_1534, i8* %_pot_address_in_parent_stack_1527, i8* %_new_gep_356
  %744 = bitcast i8* %.v21 to i64*
  %_new_load_1537 = load i64, i64* %744, align 8
  store i64 %_new_load_1537, i64* %XCX, align 8, !mcsema_real_eip !208
  %745 = add i64 %_new_load_1537, 28, !mcsema_real_eip !209
  %746 = inttoptr i64 %745 to i8*, !mcsema_real_eip !209
  %_offset_above_rbp_1540 = sub i64 %745, %_local_end_to_int_
  %_pot_address_in_parent_stack_1541 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1540
  %_cond1_1542 = icmp ult i8* %_local_stack_end_ptr_, %746
  %_cond2_1_1543 = icmp ugt i8* %746, %_parent_stack_end_ptr_
  %_cond2_2_1544 = icmp ult i8* %746, %_parent_stack_start_ptr_
  %_cond2_1545 = or i1 %_cond2_1_1543, %_cond2_2_1544
  %_cond4_1546 = icmp ule i8* %_pot_address_in_parent_stack_1541, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1547 = and i1 %_cond1_1542, %_cond2_1545
  %_cond1_n_cond2_cond3_1548 = and i1 %_cond4_1546, %_cond1_n_cond2_1547
  %_pot_address_in_parent_stack_1541. = select i1 %_cond1_n_cond2_cond3_1548, i8* %_pot_address_in_parent_stack_1541, i8* %746
  %_new_load_1550 = load i8, i8* %_pot_address_in_parent_stack_1541., align 1
  %747 = zext i8 %_new_load_1550 to i64
  store i64 %747, i64* %XDI, align 8, !mcsema_real_eip !209
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_358 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.365 = load i64, i64* %XSP, align 8, !mcsema_real_eip !210
  %_new_gep_359 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_358, i64 -8
  %748 = add i64 %RSP_val.365, -8
  %_allin_new_bt_360 = bitcast i8* %_new_gep_359 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_360, align 8, !mcsema_real_eip !210
  store volatile i8* %_new_gep_359, i8** %_RSP_ptr_, align 8
  store i64 %748, i64* %XSP, align 8, !mcsema_real_eip !210
  %749 = call x86_64_sysvcc i64 @_to_byte(i64 %747)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_434 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_435 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_434, i64 8
  store i8* %_gep_fix_435, i8** %_RSP_ptr_, align 8
  store i64 %749, i64* %XAX, align 8, !mcsema_real_eip !210
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_361 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_362 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_361, i64 -20
  %750 = ptrtoint i8* %_new_gep_362 to i64
  %751 = bitcast i8* %_new_gep_362 to i32*
  %_offset_above_rbp_1554 = sub i64 %750, %_local_end_to_int_
  %_pot_address_in_parent_stack_1555 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1554
  %_cond1_1556 = icmp ugt i8* %_new_gep_362, %_local_stack_end_ptr_
  %_cond2_1_1557 = icmp ugt i8* %_new_gep_362, %_parent_stack_end_ptr_
  %_cond2_2_1558 = icmp ult i8* %_new_gep_362, %_parent_stack_start_ptr_
  %_cond2_1559 = or i1 %_cond2_1_1557, %_cond2_2_1558
  %_cond4_1560 = icmp ule i8* %_pot_address_in_parent_stack_1555, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1561 = and i1 %_cond1_1556, %_cond2_1559
  %_cond1_n_cond2_cond3_1562 = and i1 %_cond1_n_cond2_1561, %_cond4_1560
  %_address_in_parent_stack_bt_1564 = bitcast i8* %_pot_address_in_parent_stack_1555 to i32*
  %752 = select i1 %_cond1_n_cond2_cond3_1562, i32* %_address_in_parent_stack_bt_1564, i32* %751
  %_new_load_1565 = load i32, i32* %752, align 4
  %753 = trunc i64 %749 to i32
  %754 = sub i32 %_new_load_1565, %753, !mcsema_real_eip !212
  %755 = xor i32 %754, %_new_load_1565, !mcsema_real_eip !212
  %756 = xor i32 %755, %753, !mcsema_real_eip !212
  %757 = and i32 %756, 16, !mcsema_real_eip !212
  %758 = icmp ne i32 %757, 0, !mcsema_real_eip !212
  store i1 %758, i1* %AF, align 1, !mcsema_real_eip !212
  %759 = trunc i32 %754 to i8, !mcsema_real_eip !212
  %760 = call i8 @llvm.ctpop.i8(i8 %759), !mcsema_real_eip !212
  %761 = and i8 %760, 1
  %762 = icmp eq i8 %761, 0
  store i1 %762, i1* %PF, align 1, !mcsema_real_eip !212
  %763 = icmp eq i32 %754, 0, !mcsema_real_eip !212
  store i1 %763, i1* %ZF, align 1, !mcsema_real_eip !212
  %764 = icmp slt i32 %754, 0
  store i1 %764, i1* %SF, align 1, !mcsema_real_eip !212
  %765 = icmp ult i32 %_new_load_1565, %753, !mcsema_real_eip !212
  store i1 %765, i1* %CF, align 1, !mcsema_real_eip !212
  %766 = xor i32 %_new_load_1565, %753, !mcsema_real_eip !212
  %767 = and i32 %755, %766, !mcsema_real_eip !212
  %768 = icmp slt i32 %767, 0
  store i1 %768, i1* %OF, align 1, !mcsema_real_eip !212
  %769 = zext i32 %754 to i64, !mcsema_real_eip !212
  store i64 %769, i64* %XDX, align 8, !mcsema_real_eip !212
  store i32 %754, i32* %751, align 4, !mcsema_real_eip !213
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_367 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_368 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_367, i64 -20
  %770 = ptrtoint i8* %_new_gep_368 to i64
  %_offset_above_rbp_1569 = sub i64 %770, %_local_end_to_int_
  %_pot_address_in_parent_stack_1570 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1569
  %_cond1_1571 = icmp ugt i8* %_new_gep_368, %_local_stack_end_ptr_
  %_cond2_1_1572 = icmp ugt i8* %_new_gep_368, %_parent_stack_end_ptr_
  %_cond2_2_1573 = icmp ult i8* %_new_gep_368, %_parent_stack_start_ptr_
  %_cond2_1574 = or i1 %_cond2_1_1572, %_cond2_2_1573
  %_cond4_1575 = icmp ule i8* %_pot_address_in_parent_stack_1570, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1576 = and i1 %_cond1_1571, %_cond2_1574
  %_cond1_n_cond2_cond3_1577 = and i1 %_cond1_n_cond2_1576, %_cond4_1575
  %_address_in_parent_stack_bt_1579..v = select i1 %_cond1_n_cond2_cond3_1577, i8* %_pot_address_in_parent_stack_1570, i8* %_new_gep_368
  %_address_in_parent_stack_bt_1579. = bitcast i8* %_address_in_parent_stack_bt_1579..v to i32*
  %_new_load_1580 = load i32, i32* %_address_in_parent_stack_bt_1579., align 4
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !214
  %771 = trunc i32 %_new_load_1580 to i8, !mcsema_real_eip !214
  %772 = call i8 @llvm.ctpop.i8(i8 %771), !mcsema_real_eip !214
  %773 = and i8 %772, 1
  %774 = icmp eq i8 %773, 0
  store i1 %774, i1* %PF, align 1, !mcsema_real_eip !214
  %775 = icmp eq i32 %_new_load_1580, 0, !mcsema_real_eip !214
  store i1 %775, i1* %ZF, align 1, !mcsema_real_eip !214
  %776 = icmp slt i32 %_new_load_1580, 0
  store i1 %776, i1* %SF, align 1, !mcsema_real_eip !214
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !214
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !214
  br i1 %775, label %block_0x3e4, label %block_0x411, !mcsema_real_eip !215

block_0x3e4:                                      ; preds = %block_0x3a6
  %_new_gep_371 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_367, i64 -16
  %_ptr_to_int_1581 = ptrtoint i8* %_new_gep_371 to i64
  %_offset_above_rbp_1584 = sub i64 %_ptr_to_int_1581, %_local_end_to_int_
  %_pot_address_in_parent_stack_1585 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1584
  %_cond1_1586 = icmp ugt i8* %_new_gep_371, %_local_stack_end_ptr_
  %_cond2_1_1587 = icmp ugt i8* %_new_gep_371, %_parent_stack_end_ptr_
  %_cond2_2_1588 = icmp ult i8* %_new_gep_371, %_parent_stack_start_ptr_
  %_cond2_1589 = or i1 %_cond2_1_1587, %_cond2_2_1588
  %_cond4_1590 = icmp ule i8* %_pot_address_in_parent_stack_1585, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1591 = and i1 %_cond1_1586, %_cond2_1589
  %_cond1_n_cond2_cond3_1592 = and i1 %_cond1_n_cond2_1591, %_cond4_1590
  %_address_in_parent_stack_bt_1594._allin_new_bt_372.v = select i1 %_cond1_n_cond2_cond3_1592, i8* %_pot_address_in_parent_stack_1585, i8* %_new_gep_371
  %_address_in_parent_stack_bt_1594._allin_new_bt_372 = bitcast i8* %_address_in_parent_stack_bt_1594._allin_new_bt_372.v to i64*
  %_new_load_1595 = load i64, i64* %_address_in_parent_stack_bt_1594._allin_new_bt_372, align 8
  store i64 %_new_load_1595, i64* %XAX, align 8, !mcsema_real_eip !216
  %777 = add i64 %_new_load_1595, 31, !mcsema_real_eip !217
  %778 = inttoptr i64 %777 to i8*, !mcsema_real_eip !217
  %_offset_above_rbp_1598 = sub i64 %777, %_local_end_to_int_
  %_pot_address_in_parent_stack_1599 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1598
  %_cond1_1600 = icmp ult i8* %_local_stack_end_ptr_, %778
  %_cond2_1_1601 = icmp ugt i8* %778, %_parent_stack_end_ptr_
  %_cond2_2_1602 = icmp ult i8* %778, %_parent_stack_start_ptr_
  %_cond2_1603 = or i1 %_cond2_1_1601, %_cond2_2_1602
  %_cond4_1604 = icmp ule i8* %_pot_address_in_parent_stack_1599, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1605 = and i1 %_cond1_1600, %_cond2_1603
  %_cond1_n_cond2_cond3_1606 = and i1 %_cond4_1604, %_cond1_n_cond2_1605
  %779 = select i1 %_cond1_n_cond2_cond3_1606, i8* %_pot_address_in_parent_stack_1599, i8* %778
  %_new_load_1608 = load i8, i8* %779, align 1
  %780 = zext i8 %_new_load_1608 to i64
  store i64 %780, i64* %XDI, align 8, !mcsema_real_eip !217
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_373 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.378 = load i64, i64* %XSP, align 8, !mcsema_real_eip !218
  %_new_gep_374 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_373, i64 -8
  %781 = add i64 %RSP_val.378, -8
  %_allin_new_bt_375 = bitcast i8* %_new_gep_374 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_375, align 8, !mcsema_real_eip !218
  store volatile i8* %_new_gep_374, i8** %_RSP_ptr_, align 8
  store i64 %781, i64* %XSP, align 8, !mcsema_real_eip !218
  %782 = call x86_64_sysvcc i64 @_to_byte(i64 %780)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_436 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_437 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_436, i64 8
  store i8* %_gep_fix_437, i8** %_RSP_ptr_, align 8
  store i64 %782, i64* %XAX, align 8, !mcsema_real_eip !218
  %783 = trunc i64 %782 to i32
  %784 = add i32 %783, -4
  %785 = xor i32 %784, %783, !mcsema_real_eip !219
  %786 = and i32 %785, 16, !mcsema_real_eip !219
  %787 = icmp ne i32 %786, 0, !mcsema_real_eip !219
  store i1 %787, i1* %AF, align 1, !mcsema_real_eip !219
  %788 = trunc i32 %784 to i8, !mcsema_real_eip !219
  %789 = call i8 @llvm.ctpop.i8(i8 %788), !mcsema_real_eip !219
  %790 = and i8 %789, 1
  %791 = icmp eq i8 %790, 0
  store i1 %791, i1* %PF, align 1, !mcsema_real_eip !219
  %792 = icmp eq i32 %784, 0, !mcsema_real_eip !219
  store i1 %792, i1* %ZF, align 1, !mcsema_real_eip !219
  %793 = icmp slt i32 %784, 0
  store i1 %793, i1* %SF, align 1, !mcsema_real_eip !219
  %794 = icmp ult i32 %783, 4, !mcsema_real_eip !219
  store i1 %794, i1* %CF, align 1, !mcsema_real_eip !219
  %795 = and i32 %785, %783, !mcsema_real_eip !219
  %796 = icmp slt i32 %795, 0
  store i1 %796, i1* %OF, align 1, !mcsema_real_eip !219
  br i1 %792, label %block_0x411, label %block_0x3fa, !mcsema_real_eip !220

block_0x3fa:                                      ; preds = %block_0x3e4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_376 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_377 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_376, i64 -20
  %797 = bitcast i8* %_new_gep_377 to i32*
  store i32 -32, i32* %797, align 4, !mcsema_real_eip !221
  br label %block_0x411, !mcsema_real_eip !222

block_0x406:                                      ; preds = %block_0x38e
  %_new_gep_380 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_322, i64 -64
  %798 = ptrtoint i8* %_new_gep_380 to i64
  %_offset_above_rbp_1612 = sub i64 %798, %_local_end_to_int_
  %_pot_address_in_parent_stack_1613 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1612
  %_cond1_1614 = icmp ugt i8* %_new_gep_380, %_local_stack_end_ptr_
  %_cond2_1_1615 = icmp ugt i8* %_new_gep_380, %_parent_stack_end_ptr_
  %_cond2_2_1616 = icmp ult i8* %_new_gep_380, %_parent_stack_start_ptr_
  %_cond2_1617 = or i1 %_cond2_1_1615, %_cond2_2_1616
  %_cond4_1618 = icmp ule i8* %_pot_address_in_parent_stack_1613, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1619 = and i1 %_cond1_1614, %_cond2_1617
  %_cond1_n_cond2_cond3_1620 = and i1 %_cond1_n_cond2_1619, %_cond4_1618
  %_address_in_parent_stack_bt_1622..v = select i1 %_cond1_n_cond2_cond3_1620, i8* %_pot_address_in_parent_stack_1613, i8* %_new_gep_380
  %_address_in_parent_stack_bt_1622. = bitcast i8* %_address_in_parent_stack_bt_1622..v to i32*
  %_new_load_1623 = load i32, i32* %_address_in_parent_stack_bt_1622., align 4
  %799 = zext i32 %_new_load_1623 to i64, !mcsema_real_eip !223
  store i64 %799, i64* %XAX, align 8, !mcsema_real_eip !223
  %_new_gep_383 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_322, i64 -20
  %800 = bitcast i8* %_new_gep_383 to i32*
  store i32 %_new_load_1623, i32* %800, align 4, !mcsema_real_eip !224
  br label %block_0x411, !mcsema_real_eip !225

block_0x411:                                      ; preds = %block_0x3a6, %block_0x406, %block_0x3fa, %block_0x3e4, %block_0x380
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_385 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_386 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_385, i64 -20
  %801 = ptrtoint i8* %_new_gep_386 to i64
  %_offset_above_rbp_1627 = sub i64 %801, %_local_end_to_int_
  %_pot_address_in_parent_stack_1628 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1627
  %_cond1_1629 = icmp ugt i8* %_new_gep_386, %_local_stack_end_ptr_
  %_cond2_1_1630 = icmp ugt i8* %_new_gep_386, %_parent_stack_end_ptr_
  %_cond2_2_1631 = icmp ult i8* %_new_gep_386, %_parent_stack_start_ptr_
  %_cond2_1632 = or i1 %_cond2_1_1630, %_cond2_2_1631
  %_cond4_1633 = icmp ule i8* %_pot_address_in_parent_stack_1628, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1634 = and i1 %_cond1_1629, %_cond2_1632
  %_cond1_n_cond2_cond3_1635 = and i1 %_cond1_n_cond2_1634, %_cond4_1633
  %_address_in_parent_stack_bt_1637..v = select i1 %_cond1_n_cond2_cond3_1635, i8* %_pot_address_in_parent_stack_1628, i8* %_new_gep_386
  %_address_in_parent_stack_bt_1637. = bitcast i8* %_address_in_parent_stack_bt_1637..v to i32*
  %_new_load_1638 = load i32, i32* %_address_in_parent_stack_bt_1637., align 4
  %802 = zext i32 %_new_load_1638 to i64, !mcsema_real_eip !226
  store i64 %802, i64* %XAX, align 8, !mcsema_real_eip !226
  br label %block_0x417, !mcsema_real_eip !227

block_0x417:                                      ; preds = %block_0x2d2, %block_0x293, %block_0x1c2, %block_0xd7, %block_0xeb, %block_0xa4, %block_0x79, %block_0x57, %block_0x2f, %block_0x411, %block_0x338, %block_0x24
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_385.sink = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_385, %block_0x411 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_301, %block_0x338 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, %block_0x24 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, %block_0x2f ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, %block_0x57 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64, %block_0x79 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, %block_0xa4 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, %block_0xeb ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, %block_0xd7 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_166, %block_0x1c2 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_253, %block_0x293 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_265, %block_0x2d2 ]
  %EAX_val.389.sink = phi i32 [ %_new_load_1638, %block_0x411 ], [ %_new_load_1279, %block_0x338 ], [ %_new_load_467, %block_0x24 ], [ -2, %block_0x2f ], [ -3, %block_0x57 ], [ -4, %block_0x79 ], [ -5, %block_0xa4 ], [ -6, %block_0xeb ], [ -6, %block_0xd7 ], [ -7, %block_0x1c2 ], [ -21, %block_0x293 ], [ -22, %block_0x2d2 ]
  %_new_gep_389 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_385.sink, i64 -4
  %803 = bitcast i8* %_new_gep_389 to i32*
  store i32 %EAX_val.389.sink, i32* %803, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_391 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_392 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_391, i64 -4
  %804 = ptrtoint i8* %_new_gep_392 to i64
  %_offset_above_rbp_1642 = sub i64 %804, %_local_end_to_int_
  %_pot_address_in_parent_stack_1643 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1642
  %_cond1_1644 = icmp ugt i8* %_new_gep_392, %_local_stack_end_ptr_
  %_cond2_1_1645 = icmp ugt i8* %_new_gep_392, %_parent_stack_end_ptr_
  %_cond2_2_1646 = icmp ult i8* %_new_gep_392, %_parent_stack_start_ptr_
  %_cond2_1647 = or i1 %_cond2_1_1645, %_cond2_2_1646
  %_cond4_1648 = icmp ule i8* %_pot_address_in_parent_stack_1643, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1649 = and i1 %_cond1_1644, %_cond2_1647
  %_cond1_n_cond2_cond3_1650 = and i1 %_cond1_n_cond2_1649, %_cond4_1648
  %_address_in_parent_stack_bt_1652..v = select i1 %_cond1_n_cond2_cond3_1650, i8* %_pot_address_in_parent_stack_1643, i8* %_new_gep_392
  %_address_in_parent_stack_bt_1652. = bitcast i8* %_address_in_parent_stack_bt_1652..v to i32*
  %_new_load_1653 = load i32, i32* %_address_in_parent_stack_bt_1652., align 4
  %805 = zext i32 %_new_load_1653 to i64, !mcsema_real_eip !227
  store i64 %805, i64* %XAX, align 8, !mcsema_real_eip !227
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_394 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.391 = load i64, i64* %XSP, align 8, !mcsema_real_eip !228
  %_new_gep_395 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_394, i64 80
  %806 = add i64 %RSP_val.391, 80, !mcsema_real_eip !228
  %_trans_p2i_396 = ptrtoint i8* %_new_gep_395 to i64
  %_trans_p2i_397 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_394 to i64
  %_trans_xor_398 = xor i64 %_trans_p2i_396, %_trans_p2i_397
  %807 = and i64 %_trans_xor_398, 16
  %808 = icmp eq i64 %807, 0
  store i1 %808, i1* %AF, align 1, !mcsema_real_eip !228
  %809 = icmp slt i64 %806, 0
  store i1 %809, i1* %SF, align 1, !mcsema_real_eip !228
  %_trans_icmp_eq_400 = icmp eq i8* %_new_gep_395, null
  store i1 %_trans_icmp_eq_400, i1* %ZF, align 1, !mcsema_real_eip !228
  %810 = xor i64 %_trans_p2i_397, -9223372036854775808, !mcsema_real_eip !228
  %811 = and i64 %_trans_xor_398, %810, !mcsema_real_eip !228
  %812 = icmp slt i64 %811, 0
  store i1 %812, i1* %OF, align 1, !mcsema_real_eip !228
  %_trans_trunc_407 = trunc i64 %_trans_p2i_396 to i8
  %813 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_407), !mcsema_real_eip !228
  %814 = and i8 %813, 1
  %815 = icmp eq i8 %814, 0
  store i1 %815, i1* %PF, align 1, !mcsema_real_eip !228
  %_trans_icmp_ne_409 = icmp ne i64 %RSP_val.391, %_trans_p2i_396
  store i1 %_trans_icmp_ne_409, i1* %CF, align 1, !mcsema_real_eip !228
  store volatile i8* %_new_gep_395, i8** %_RSP_ptr_, align 8
  store i64 %806, i64* %XSP, align 8, !mcsema_real_eip !228
  %_offset_above_rbp_1657 = sub i64 %_trans_p2i_396, %_local_end_to_int_
  %_pot_address_in_parent_stack_1658 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1657
  %_cond1_1659 = icmp ugt i8* %_new_gep_395, %_local_stack_end_ptr_
  %_cond2_1_1660 = icmp ugt i8* %_new_gep_395, %_parent_stack_end_ptr_
  %_cond2_2_1661 = icmp ult i8* %_new_gep_395, %_parent_stack_start_ptr_
  %_cond2_1662 = or i1 %_cond2_1_1660, %_cond2_2_1661
  %_cond4_1663 = icmp ule i8* %_pot_address_in_parent_stack_1658, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1664 = and i1 %_cond1_1659, %_cond2_1662
  %_cond1_n_cond2_cond3_1665 = and i1 %_cond1_n_cond2_1664, %_cond4_1663
  %.v10 = select i1 %_cond1_n_cond2_cond3_1665, i8* %_pot_address_in_parent_stack_1658, i8* %_new_gep_395
  %816 = bitcast i8* %.v10 to i64*
  %_new_load_1668 = load i64, i64* %816, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_1668 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_1668, i64* %XBP, align 8, !mcsema_real_eip !229
  %_new_gep_412 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_394, i64 88
  %817 = add i64 %RSP_val.391, 88, !mcsema_real_eip !229
  store volatile i8* %_new_gep_412, i8** %_RSP_ptr_, align 8
  store i64 %817, i64* %XSP, align 8, !mcsema_real_eip !229
  %_new_gep_414 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_394, i64 96
  %818 = add i64 %RSP_val.391, 96, !mcsema_real_eip !230
  %_ptr_to_int_1669 = ptrtoint i8* %_new_gep_412 to i64
  %_offset_above_rbp_1672 = sub i64 %_ptr_to_int_1669, %_local_end_to_int_
  %_pot_address_in_parent_stack_1673 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1672
  %_cond1_1674 = icmp ugt i8* %_new_gep_412, %_local_stack_end_ptr_
  %_cond2_1_1675 = icmp ugt i8* %_new_gep_412, %_parent_stack_end_ptr_
  %_cond2_2_1676 = icmp ult i8* %_new_gep_412, %_parent_stack_start_ptr_
  %_cond2_1677 = or i1 %_cond2_1_1675, %_cond2_2_1676
  %_cond4_1678 = icmp ule i8* %_pot_address_in_parent_stack_1673, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1679 = and i1 %_cond1_1674, %_cond2_1677
  %_cond1_n_cond2_cond3_1680 = and i1 %_cond1_n_cond2_1679, %_cond4_1678
  %_address_in_parent_stack_bt_1682._allin_new_bt_415.v = select i1 %_cond1_n_cond2_cond3_1680, i8* %_pot_address_in_parent_stack_1673, i8* %_new_gep_412
  %_address_in_parent_stack_bt_1682._allin_new_bt_415 = bitcast i8* %_address_in_parent_stack_bt_1682._allin_new_bt_415.v to i64*
  %_new_load_1683 = load i64, i64* %_address_in_parent_stack_bt_1682._allin_new_bt_415, align 8
  store i64 %_new_load_1683, i64* %XIP, align 8, !mcsema_real_eip !230
  store volatile i8* %_new_gep_414, i8** %_RSP_ptr_, align 8
  store i64 %818, i64* %XSP, align 8, !mcsema_real_eip !230
  ret void, !mcsema_real_eip !230
}

attributes #0 = { noinline }
attributes #1 = { nounwind readnone }
attributes #2 = { naked noinline }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 16}
!7 = !{i64 21}
!8 = !{i64 23}
!9 = !{i64 26}
!10 = !{i64 30}
!11 = !{i64 36}
!12 = !{i64 42}
!13 = !{i64 47}
!14 = !{i64 51}
!15 = !{i64 55}
!16 = !{i64 59}
!17 = !{i64 63}
!18 = !{i64 66}
!19 = !{i64 69}
!20 = !{i64 87}
!21 = !{i64 91}
!22 = !{i64 95}
!23 = !{i64 100}
!24 = !{i64 103}
!25 = !{i64 121}
!26 = !{i64 125}
!27 = !{i64 129}
!28 = !{i64 134}
!29 = !{i64 137}
!30 = !{i64 140}
!31 = !{i64 143}
!32 = !{i64 146}
!33 = !{i64 164}
!34 = !{i64 168}
!35 = !{i64 172}
!36 = !{i64 177}
!37 = !{i64 182}
!38 = !{i64 185}
!39 = !{i64 188}
!40 = !{i64 192}
!41 = !{i64 194}
!42 = !{i64 197}
!43 = !{i64 215}
!44 = !{i64 219}
!45 = !{i64 223}
!46 = !{i64 226}
!47 = !{i64 229}
!48 = !{i64 235}
!49 = !{i64 239}
!50 = !{i64 243}
!51 = !{i64 249}
!52 = !{i64 252}
!53 = !{i64 258}
!54 = !{i64 282}
!55 = !{i64 286}
!56 = !{i64 290}
!57 = !{i64 293}
!58 = !{i64 295}
!59 = !{i64 298}
!60 = !{i64 302}
!61 = !{i64 306}
!62 = !{i64 312}
!63 = !{i64 314}
!64 = !{i64 317}
!65 = !{i64 321}
!66 = !{i64 324}
!67 = !{i64 330}
!68 = !{i64 334}
!69 = !{i64 337}
!70 = !{i64 343}
!71 = !{i64 346}
!72 = !{i64 352}
!73 = !{i64 357}
!74 = !{i64 360}
!75 = !{i64 366}
!76 = !{i64 370}
!77 = !{i64 374}
!78 = !{i64 379}
!79 = !{i64 381}
!80 = !{i64 384}
!81 = !{i64 388}
!82 = !{i64 392}
!83 = !{i64 397}
!84 = !{i64 401}
!85 = !{i64 403}
!86 = !{i64 406}
!87 = !{i64 409}
!88 = !{i64 413}
!89 = !{i64 416}
!90 = !{i64 439}
!91 = !{i64 442}
!92 = !{i64 445}
!93 = !{i64 450}
!94 = !{i64 454}
!95 = !{i64 472}
!96 = !{i64 474}
!97 = !{i64 479}
!98 = !{i64 483}
!99 = !{i64 487}
!100 = !{i64 490}
!101 = !{i64 495}
!102 = !{i64 498}
!103 = !{i64 502}
!104 = !{i64 506}
!105 = !{i64 511}
!106 = !{i64 516}
!107 = !{i64 522}
!108 = !{i64 526}
!109 = !{i64 531}
!110 = !{i64 561}
!111 = !{i64 563}
!112 = !{i64 568}
!113 = !{i64 572}
!114 = !{i64 576}
!115 = !{i64 579}
!116 = !{i64 584}
!117 = !{i64 587}
!118 = !{i64 590}
!119 = !{i64 595}
!120 = !{i64 598}
!121 = !{i64 601}
!122 = !{i64 604}
!123 = !{i64 607}
!124 = !{i64 610}
!125 = !{i64 615}
!126 = !{i64 618}
!127 = !{i64 622}
!128 = !{i64 628}
!129 = !{i64 631}
!130 = !{i64 634}
!131 = !{i64 640}
!132 = !{i64 647}
!133 = !{i64 652}
!134 = !{i64 659}
!135 = !{i64 664}
!136 = !{i64 667}
!137 = !{i64 671}
!138 = !{i64 675}
!139 = !{i64 678}
!140 = !{i64 683}
!141 = !{i64 686}
!142 = !{i64 689}
!143 = !{i64 692}
!144 = !{i64 695}
!145 = !{i64 698}
!146 = !{i64 701}
!147 = !{i64 704}
!148 = !{i64 722}
!149 = !{i64 725}
!150 = !{i64 730}
!151 = !{i64 733}
!152 = !{i64 740}
!153 = !{i64 758}
!154 = !{i64 763}
!155 = !{i64 766}
!156 = !{i64 772}
!157 = !{i64 775}
!158 = !{i64 778}
!159 = !{i64 781}
!160 = !{i64 784}
!161 = !{i64 787}
!162 = !{i64 793}
!163 = !{i64 796}
!164 = !{i64 799}
!165 = !{i64 802}
!166 = !{i64 804}
!167 = !{i64 806}
!168 = !{i64 809}
!169 = !{i64 811}
!170 = !{i64 814}
!171 = !{i64 818}
!172 = !{i64 824}
!173 = !{i64 830}
!174 = !{i64 835}
!175 = !{i64 840}
!176 = !{i64 843}
!177 = !{i64 847}
!178 = !{i64 851}
!179 = !{i64 854}
!180 = !{i64 859}
!181 = !{i64 862}
!182 = !{i64 866}
!183 = !{i64 870}
!184 = !{i64 873}
!185 = !{i64 879}
!186 = !{i64 883}
!187 = !{i64 887}
!188 = !{i64 890}
!189 = !{i64 896}
!190 = !{i64 899}
!191 = !{i64 902}
!192 = !{i64 905}
!193 = !{i64 910}
!194 = !{i64 914}
!195 = !{i64 918}
!196 = !{i64 922}
!197 = !{i64 926}
!198 = !{i64 928}
!199 = !{i64 934}
!200 = !{i64 939}
!201 = !{i64 943}
!202 = !{i64 947}
!203 = !{i64 951}
!204 = !{i64 955}
!205 = !{i64 957}
!206 = !{i64 959}
!207 = !{i64 962}
!208 = !{i64 965}
!209 = !{i64 969}
!210 = !{i64 973}
!211 = !{i64 978}
!212 = !{i64 981}
!213 = !{i64 983}
!214 = !{i64 986}
!215 = !{i64 990}
!216 = !{i64 996}
!217 = !{i64 1000}
!218 = !{i64 1004}
!219 = !{i64 1009}
!220 = !{i64 1012}
!221 = !{i64 1018}
!222 = !{i64 1025}
!223 = !{i64 1030}
!224 = !{i64 1033}
!225 = !{i64 1036}
!226 = !{i64 1041}
!227 = !{i64 1047}
!228 = !{i64 1050}
!229 = !{i64 1054}
!230 = !{i64 1055}
