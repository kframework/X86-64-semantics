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
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !22
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 -8
  %74 = add i64 %RSP_val.30, -8
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
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8018 = load i8*, i8** %12, align 8
  br i1 %85, label %block_0x79, label %block_0x417, !mcsema_real_eip !24

block_0x417:                                      ; preds = %block_0x2d2, %block_0x293, %block_0x1c2, %block_0xd7, %block_0xeb, %block_0xa4, %block_0x79, %block_0x57, %block_0x2f, %block_0x411, %block_0x338, %block_0x24
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_40752.sink = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_40752, %block_0x411 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32649, %block_0x338 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2515, %block_0x24 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_4017, %block_0x2f ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8018, %block_0x57 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8920, %block_0x79 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10422, %block_0xa4 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10422, %block_0xeb ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10422, %block_0xd7 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19131, %block_0x1c2 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27543, %block_0x293 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29044, %block_0x2d2 ]
  %EAX_val.392.sink = phi i32 [ %852, %block_0x411 ], [ %636, %block_0x338 ], [ %33, %block_0x24 ], [ -2, %block_0x2f ], [ -3, %block_0x57 ], [ -4, %block_0x79 ], [ -5, %block_0xa4 ], [ -6, %block_0xeb ], [ -6, %block_0xd7 ], [ -7, %block_0x1c2 ], [ -21, %block_0x293 ], [ -22, %block_0x2d2 ]
  %_new_gep_411 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_40752.sink, i64 -4
  %90 = bitcast i8* %_new_gep_411 to i32*
  store i32 %EAX_val.392.sink, i32* %90, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5216 = load i8*, i8** %12, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5216, i64 -4
  %91 = bitcast i8* %_new_gep_53 to i32*
  %92 = load i32, i32* %91, align 4, !mcsema_real_eip !25
  %93 = zext i32 %92 to i64, !mcsema_real_eip !25
  store i64 %93, i64* %XAX, align 8, !mcsema_real_eip !25
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.35 = load i64, i64* %XSP, align 8, !mcsema_real_eip !26
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 80
  %94 = add i64 %RSP_val.35, 80, !mcsema_real_eip !26
  %_trans_p2i_57 = ptrtoint i8* %_new_gep_56 to i64
  %_trans_p2i_58 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 to i64
  %_trans_xor_59 = xor i64 %_trans_p2i_57, %_trans_p2i_58
  %95 = and i64 %_trans_xor_59, 16
  %96 = icmp eq i64 %95, 0
  store i1 %96, i1* %AF, align 1, !mcsema_real_eip !26
  %97 = icmp slt i64 %94, 0
  store i1 %97, i1* %SF, align 1, !mcsema_real_eip !26
  %_trans_icmp_eq_61 = icmp eq i8* %_new_gep_56, null
  store i1 %_trans_icmp_eq_61, i1* %ZF, align 1, !mcsema_real_eip !26
  %98 = xor i64 %_trans_p2i_58, -9223372036854775808, !mcsema_real_eip !26
  %99 = and i64 %_trans_xor_59, %98, !mcsema_real_eip !26
  %100 = icmp slt i64 %99, 0
  store i1 %100, i1* %OF, align 1, !mcsema_real_eip !26
  %_trans_trunc_68 = trunc i64 %_trans_p2i_57 to i8
  %101 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_68), !mcsema_real_eip !26
  %102 = and i8 %101, 1
  %103 = icmp eq i8 %102, 0
  store i1 %103, i1* %PF, align 1, !mcsema_real_eip !26
  %_trans_icmp_ne_70 = icmp ne i64 %_trans_p2i_57, %RSP_val.35
  store i1 %_trans_icmp_ne_70, i1* %CF, align 1, !mcsema_real_eip !26
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %94, i64* %XSP, align 8, !mcsema_real_eip !26
  %_allin_new_bt_72 = bitcast i8* %_new_gep_56 to i64*
  %104 = load i64, i64* %_allin_new_bt_72, align 8, !mcsema_real_eip !27
  store volatile i64 %104, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %104, i64* %XBP, align 8, !mcsema_real_eip !27
  %_new_gep_73 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 88
  %105 = add i64 %RSP_val.35, 88, !mcsema_real_eip !27
  store volatile i8* %_new_gep_73, i8** %_RSP_ptr_, align 8
  store i64 %105, i64* %XSP, align 8, !mcsema_real_eip !27
  %_new_gep_75 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 96
  %106 = add i64 %RSP_val.35, 96, !mcsema_real_eip !28
  %_allin_new_bt_76 = bitcast i8* %_new_gep_73 to i64*
  %107 = load i64, i64* %_allin_new_bt_76, align 8, !mcsema_real_eip !28
  store i64 %107, i64* %XIP, align 8, !mcsema_real_eip !28
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_, align 8
  store i64 %106, i64* %XSP, align 8, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

block_0x79:                                       ; preds = %block_0x57
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8018, i64 -16
  %_allin_new_bt_82 = bitcast i8* %_new_gep_81 to i64*
  %108 = load i64, i64* %_allin_new_bt_82, align 8, !mcsema_real_eip !29
  store i64 %108, i64* %XAX, align 8, !mcsema_real_eip !29
  %109 = add i64 %108, 2, !mcsema_real_eip !30
  %110 = inttoptr i64 %109 to i8*, !mcsema_real_eip !30
  %111 = load i8, i8* %110, align 1, !mcsema_real_eip !30
  %112 = zext i8 %111 to i64
  store i64 %112, i64* %XDI, align 8, !mcsema_real_eip !30
  %RSP_val.41 = load i64, i64* %XSP, align 8, !mcsema_real_eip !31
  %113 = add i64 %RSP_val.41, -8
  %_allin_new_bt_85 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_85, align 8, !mcsema_real_eip !31
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416, i8** %_RSP_ptr_, align 8
  store i64 %113, i64* %XSP, align 8, !mcsema_real_eip !31
  %114 = call x86_64_sysvcc i64 @_to_byte(i64 %112)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_418 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_419 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_418, i64 8
  store i8* %_gep_fix_419, i8** %_RSP_ptr_, align 8
  store i64 %114, i64* %XAX, align 8, !mcsema_real_eip !31
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8619 = load i8*, i8** %12, align 8
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8619, i64 -24
  %115 = trunc i64 %114 to i32
  %116 = bitcast i8* %_new_gep_87 to i32*
  store i32 %115, i32* %116, align 4, !mcsema_real_eip !32
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8920 = load i8*, i8** %12, align 8
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8920, i64 -24
  %117 = bitcast i8* %_new_gep_90 to i32*
  %118 = load i32, i32* %117, align 4, !mcsema_real_eip !33
  %119 = shl i32 %118, 1, !mcsema_real_eip !34
  %120 = zext i32 %119 to i64, !mcsema_real_eip !34
  store i64 %120, i64* %XAX, align 8, !mcsema_real_eip !34
  %121 = add i32 %119, -26
  %122 = xor i32 %121, %119, !mcsema_real_eip !35
  %123 = and i32 %122, 16
  %124 = icmp eq i32 %123, 0
  store i1 %124, i1* %AF, align 1, !mcsema_real_eip !35
  %125 = trunc i32 %121 to i8, !mcsema_real_eip !35
  %126 = call i8 @llvm.ctpop.i8(i8 %125), !mcsema_real_eip !35
  %127 = and i8 %126, 1
  %128 = icmp eq i8 %127, 0
  store i1 %128, i1* %PF, align 1, !mcsema_real_eip !35
  %129 = icmp eq i32 %121, 0, !mcsema_real_eip !35
  store i1 %129, i1* %ZF, align 1, !mcsema_real_eip !35
  %130 = icmp slt i32 %121, 0
  store i1 %130, i1* %SF, align 1, !mcsema_real_eip !35
  %131 = icmp ult i32 %119, 26, !mcsema_real_eip !35
  store i1 %131, i1* %CF, align 1, !mcsema_real_eip !35
  %132 = and i32 %122, %119, !mcsema_real_eip !35
  %133 = icmp slt i32 %132, 0
  store i1 %133, i1* %OF, align 1, !mcsema_real_eip !35
  br i1 %129, label %block_0xa4, label %block_0x417, !mcsema_real_eip !36

block_0xa4:                                       ; preds = %block_0x79
  %_new_gep_96 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_8920, i64 -16
  %_allin_new_bt_97 = bitcast i8* %_new_gep_96 to i64*
  %134 = load i64, i64* %_allin_new_bt_97, align 8, !mcsema_real_eip !37
  store i64 %134, i64* %XAX, align 8, !mcsema_real_eip !37
  %135 = add i64 %134, 3, !mcsema_real_eip !38
  %136 = inttoptr i64 %135 to i8*, !mcsema_real_eip !38
  %137 = load i8, i8* %136, align 1, !mcsema_real_eip !38
  %138 = zext i8 %137 to i64
  store i64 %138, i64* %XDI, align 8, !mcsema_real_eip !38
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_98 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.54 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %_new_gep_99 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_98, i64 -8
  %139 = add i64 %RSP_val.54, -8
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_100, align 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_99, i8** %_RSP_ptr_, align 8
  store i64 %139, i64* %XSP, align 8, !mcsema_real_eip !39
  %140 = call x86_64_sysvcc i64 @_to_byte(i64 %138)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_420 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_421 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_420, i64 8
  store i8* %_gep_fix_421, i8** %_RSP_ptr_, align 8
  store i64 %140, i64* %XAX, align 8, !mcsema_real_eip !39
  store i64 2, i64* %XDI, align 8, !mcsema_real_eip !40
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10121 = load i8*, i8** %12, align 8
  %_new_gep_102 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10121, i64 -28
  %141 = trunc i64 %140 to i32
  %142 = bitcast i8* %_new_gep_102 to i32*
  store i32 %141, i32* %142, align 4, !mcsema_real_eip !41
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10422 = load i8*, i8** %12, align 8
  %_new_gep_105 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10422, i64 -28
  %143 = bitcast i8* %_new_gep_105 to i32*
  %144 = load i32, i32* %143, align 4, !mcsema_real_eip !42
  %145 = add i32 %144, 1, !mcsema_real_eip !43
  %EAX_val.62.lobit = ashr i32 %145, 31
  %146 = zext i32 %EAX_val.62.lobit to i64
  %EDI.63 = bitcast i64* %XDI to i32*, !mcsema_real_eip !44
  %EDI_val.64 = load i32, i32* %EDI.63, align 4, !mcsema_real_eip !44
  %147 = shl nuw i64 %146, 32, !mcsema_real_eip !44
  %148 = sext i32 %145 to i64, !mcsema_real_eip !44
  %149 = or i64 %147, %148, !mcsema_real_eip !44
  %150 = sext i32 %EDI_val.64 to i64, !mcsema_real_eip !44
  %151 = sdiv i64 %149, %150, !mcsema_real_eip !44
  %152 = srem i64 %149, %150, !mcsema_real_eip !44
  %153 = and i64 %152, 4294967295
  store i64 %153, i64* %XDX, align 8, !mcsema_real_eip !44
  %154 = and i64 %151, 4294967295
  store i64 %154, i64* %XAX, align 8, !mcsema_real_eip !44
  %155 = trunc i64 %151 to i32
  %156 = add i32 %155, -7
  %157 = xor i32 %156, %155, !mcsema_real_eip !45
  %158 = and i32 %157, 16, !mcsema_real_eip !45
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !45
  store i1 %159, i1* %AF, align 1, !mcsema_real_eip !45
  %160 = trunc i32 %156 to i8, !mcsema_real_eip !45
  %161 = call i8 @llvm.ctpop.i8(i8 %160), !mcsema_real_eip !45
  %162 = and i8 %161, 1
  %163 = icmp eq i8 %162, 0
  store i1 %163, i1* %PF, align 1, !mcsema_real_eip !45
  %164 = icmp eq i32 %156, 0, !mcsema_real_eip !45
  store i1 %164, i1* %ZF, align 1, !mcsema_real_eip !45
  %165 = icmp slt i32 %156, 0
  store i1 %165, i1* %SF, align 1, !mcsema_real_eip !45
  %166 = icmp ult i32 %155, 7, !mcsema_real_eip !45
  store i1 %166, i1* %CF, align 1, !mcsema_real_eip !45
  %167 = and i32 %157, %155, !mcsema_real_eip !45
  %168 = icmp slt i32 %167, 0
  store i1 %168, i1* %OF, align 1, !mcsema_real_eip !45
  br i1 %164, label %block_0xd7, label %block_0x417, !mcsema_real_eip !46

block_0xd7:                                       ; preds = %block_0xa4
  %_new_gep_111 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10422, i64 -16
  %_allin_new_bt_112 = bitcast i8* %_new_gep_111 to i64*
  %169 = load i64, i64* %_allin_new_bt_112, align 8, !mcsema_real_eip !47
  store i64 %169, i64* %XAX, align 8, !mcsema_real_eip !47
  %170 = add i64 %169, 4, !mcsema_real_eip !48
  %171 = inttoptr i64 %170 to i8*, !mcsema_real_eip !48
  %172 = load i8, i8* %171, align 1, !mcsema_real_eip !48
  %173 = and i8 %172, 15
  %174 = zext i8 %173 to i32
  %175 = icmp eq i8 %173, 0
  %176 = zext i8 %173 to i64
  store i64 %176, i64* %XCX, align 8, !mcsema_real_eip !49
  %177 = add nsw i32 %174, -1
  %178 = and i32 %177, 16, !mcsema_real_eip !50
  %179 = icmp ne i32 %178, 0, !mcsema_real_eip !50
  store i1 %179, i1* %AF, align 1, !mcsema_real_eip !50
  %180 = trunc i32 %177 to i8, !mcsema_real_eip !50
  %181 = call i8 @llvm.ctpop.i8(i8 %180), !mcsema_real_eip !50
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  store i1 %183, i1* %PF, align 1, !mcsema_real_eip !50
  %184 = icmp eq i32 %177, 0, !mcsema_real_eip !50
  store i1 %184, i1* %ZF, align 1, !mcsema_real_eip !50
  %185 = icmp eq i8 %173, 0
  store i1 %185, i1* %SF, align 1, !mcsema_real_eip !50
  store i1 %175, i1* %CF, align 1, !mcsema_real_eip !50
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !50
  br i1 %184, label %block_0xeb, label %block_0x417, !mcsema_real_eip !51

block_0xeb:                                       ; preds = %block_0xd7
  %186 = load i64, i64* %_allin_new_bt_112, align 8, !mcsema_real_eip !52
  store i64 %186, i64* %XAX, align 8, !mcsema_real_eip !52
  %187 = add i64 %186, 4, !mcsema_real_eip !53
  %188 = inttoptr i64 %187 to i8*, !mcsema_real_eip !53
  %189 = load i8, i8* %188, align 1, !mcsema_real_eip !53
  %190 = and i8 %189, -16
  %191 = zext i8 %190 to i32
  %192 = zext i8 %190 to i64
  store i64 %192, i64* %XCX, align 8, !mcsema_real_eip !54
  %193 = add nsw i32 %191, -48
  %194 = xor i32 %193, %191, !mcsema_real_eip !55
  %195 = and i32 %194, 16
  %196 = icmp eq i32 %195, 0
  store i1 %196, i1* %AF, align 1, !mcsema_real_eip !55
  %197 = trunc i32 %193 to i8, !mcsema_real_eip !55
  %198 = call i8 @llvm.ctpop.i8(i8 %197), !mcsema_real_eip !55
  %199 = and i8 %198, 1
  %200 = icmp eq i8 %199, 0
  store i1 %200, i1* %PF, align 1, !mcsema_real_eip !55
  %201 = icmp eq i32 %193, 0, !mcsema_real_eip !55
  store i1 %201, i1* %ZF, align 1, !mcsema_real_eip !55
  %202 = icmp ult i8 %190, 48
  store i1 %202, i1* %SF, align 1, !mcsema_real_eip !55
  %203 = icmp ult i8 %190, 48
  store i1 %203, i1* %CF, align 1, !mcsema_real_eip !55
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !55
  br i1 %201, label %block_0x102, label %block_0x417, !mcsema_real_eip !56

block_0x102:                                      ; preds = %block_0xeb
  %_new_gep_120 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_10422, i64 -20
  %204 = bitcast i8* %_new_gep_120 to i32*
  store i32 -4, i32* %204, align 4, !mcsema_real_eip !57
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12223 = load i8*, i8** %12, align 8
  %_new_gep_123 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12223, i64 -16
  %_allin_new_bt_124 = bitcast i8* %_new_gep_123 to i64*
  %205 = load i64, i64* %_allin_new_bt_124, align 8, !mcsema_real_eip !58
  store i64 %205, i64* %XAX, align 8, !mcsema_real_eip !58
  %206 = add i64 %205, 5, !mcsema_real_eip !59
  %207 = inttoptr i64 %206 to i8*, !mcsema_real_eip !59
  %208 = load i8, i8* %207, align 1, !mcsema_real_eip !59
  %209 = and i8 %208, 15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !60
  %210 = icmp eq i8 %209, 0
  store i1 %210, i1* %ZF, align 1, !mcsema_real_eip !60
  %211 = call i8 @llvm.ctpop.i8(i8 %209), !mcsema_real_eip !60
  %212 = and i8 %211, 1
  %213 = icmp eq i8 %212, 0
  store i1 %213, i1* %PF, align 1, !mcsema_real_eip !60
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !60
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !60
  %214 = zext i8 %209 to i64
  store i64 %214, i64* %XCX, align 8, !mcsema_real_eip !60
  %CL.91 = bitcast i64* %XCX to i8*, !mcsema_real_eip !61
  %DL.93 = bitcast i64* %XDX to i8*, !mcsema_real_eip !61
  store i8 %209, i8* %DL.93, align 1, !mcsema_real_eip !61
  %_new_gep_126 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12223, i64 -33
  store i8 %209, i8* %_new_gep_126, align 1, !mcsema_real_eip !62
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12824 = load i8*, i8** %12, align 8
  %_new_gep_129 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12824, i64 -16
  %_allin_new_bt_130 = bitcast i8* %_new_gep_129 to i64*
  %215 = load i64, i64* %_allin_new_bt_130, align 8, !mcsema_real_eip !63
  store i64 %215, i64* %XAX, align 8, !mcsema_real_eip !63
  %216 = add i64 %215, 5, !mcsema_real_eip !64
  %217 = inttoptr i64 %216 to i8*, !mcsema_real_eip !64
  %218 = load i8, i8* %217, align 1, !mcsema_real_eip !64
  %219 = and i8 %218, -16
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !65
  %220 = icmp eq i8 %219, 0
  store i1 %220, i1* %ZF, align 1, !mcsema_real_eip !65
  %221 = call i8 @llvm.ctpop.i8(i8 %219), !mcsema_real_eip !65
  %222 = and i8 %221, 1
  %223 = icmp eq i8 %222, 0
  store i1 %223, i1* %PF, align 1, !mcsema_real_eip !65
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !65
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !65
  %224 = zext i8 %219 to i64
  store i64 %224, i64* %XCX, align 8, !mcsema_real_eip !65
  store i8 %219, i8* %DL.93, align 1, !mcsema_real_eip !66
  %_new_gep_132 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12824, i64 -34
  store i8 %219, i8* %_new_gep_132, align 1, !mcsema_real_eip !67
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13425 = load i8*, i8** %12, align 8
  %_new_gep_135 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13425, i64 -33
  %225 = load i8, i8* %_new_gep_135, align 1, !mcsema_real_eip !68
  %226 = zext i8 %225 to i64
  store i64 %226, i64* %XCX, align 8, !mcsema_real_eip !68
  %227 = zext i8 %225 to i32
  %228 = add nsw i32 %227, -3
  %229 = xor i32 %228, %227, !mcsema_real_eip !69
  %230 = and i32 %229, 16, !mcsema_real_eip !69
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !69
  store i1 %231, i1* %AF, align 1, !mcsema_real_eip !69
  %232 = trunc i32 %228 to i8, !mcsema_real_eip !69
  %233 = call i8 @llvm.ctpop.i8(i8 %232), !mcsema_real_eip !69
  %234 = and i8 %233, 1
  %235 = icmp eq i8 %234, 0
  store i1 %235, i1* %PF, align 1, !mcsema_real_eip !69
  %236 = icmp eq i32 %228, 0, !mcsema_real_eip !69
  store i1 %236, i1* %ZF, align 1, !mcsema_real_eip !69
  %237 = icmp ult i8 %225, 3
  store i1 %237, i1* %SF, align 1, !mcsema_real_eip !69
  %238 = icmp ult i8 %225, 3
  store i1 %238, i1* %CF, align 1, !mcsema_real_eip !69
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !69
  br i1 %236, label %block_0x14a, label %block_0x165, !mcsema_real_eip !70

block_0x14a:                                      ; preds = %block_0x102
  %_new_gep_138 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13425, i64 -34
  %239 = load i8, i8* %_new_gep_138, align 1, !mcsema_real_eip !71
  %240 = zext i8 %239 to i64
  store i64 %240, i64* %XAX, align 8, !mcsema_real_eip !71
  %241 = zext i8 %239 to i32
  %242 = add nsw i32 %241, -96
  %243 = xor i32 %242, %241, !mcsema_real_eip !72
  %244 = and i32 %243, 16, !mcsema_real_eip !72
  %245 = icmp ne i32 %244, 0, !mcsema_real_eip !72
  store i1 %245, i1* %AF, align 1, !mcsema_real_eip !72
  %246 = trunc i32 %242 to i8, !mcsema_real_eip !72
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !72
  %248 = and i8 %247, 1
  %249 = icmp eq i8 %248, 0
  store i1 %249, i1* %PF, align 1, !mcsema_real_eip !72
  %250 = icmp eq i32 %242, 0, !mcsema_real_eip !72
  store i1 %250, i1* %ZF, align 1, !mcsema_real_eip !72
  %251 = icmp ult i8 %239, 96
  store i1 %251, i1* %SF, align 1, !mcsema_real_eip !72
  %252 = icmp ult i8 %239, 96
  store i1 %252, i1* %CF, align 1, !mcsema_real_eip !72
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !72
  br i1 %250, label %block_0x157, label %block_0x165, !mcsema_real_eip !73

block_0x165:                                      ; preds = %block_0x14a, %block_0x102
  %_new_gep_141 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13425, i64 -20
  %253 = bitcast i8* %_new_gep_141 to i32*
  %254 = load i32, i32* %253, align 4, !mcsema_real_eip !74
  %255 = zext i32 %254 to i64, !mcsema_real_eip !74
  store i64 %255, i64* %XAX, align 8, !mcsema_real_eip !74
  %256 = add i32 %254, 5, !mcsema_real_eip !75
  %257 = xor i32 %256, %254, !mcsema_real_eip !75
  %258 = and i32 %257, 16, !mcsema_real_eip !75
  %259 = icmp ne i32 %258, 0, !mcsema_real_eip !75
  store i1 %259, i1* %AF, align 1, !mcsema_real_eip !75
  %260 = icmp slt i32 %256, 0
  store i1 %260, i1* %SF, align 1, !mcsema_real_eip !75
  %261 = icmp eq i32 %256, 0, !mcsema_real_eip !75
  store i1 %261, i1* %ZF, align 1, !mcsema_real_eip !75
  %262 = xor i32 %254, -2147483648, !mcsema_real_eip !75
  %263 = and i32 %257, %262, !mcsema_real_eip !75
  %264 = icmp slt i32 %263, 0
  store i1 %264, i1* %OF, align 1, !mcsema_real_eip !75
  %265 = trunc i32 %256 to i8, !mcsema_real_eip !75
  %266 = call i8 @llvm.ctpop.i8(i8 %265), !mcsema_real_eip !75
  %267 = and i8 %266, 1
  %268 = icmp eq i8 %267, 0
  store i1 %268, i1* %PF, align 1, !mcsema_real_eip !75
  %269 = icmp ugt i32 %254, -6
  br label %block_0x1c2, !mcsema_real_eip !71

block_0x157:                                      ; preds = %block_0x14a
  %_new_gep_171 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13425, i64 -20
  %270 = bitcast i8* %_new_gep_171 to i32*
  %271 = load i32, i32* %270, align 4, !mcsema_real_eip !76
  %272 = zext i32 %271 to i64, !mcsema_real_eip !76
  store i64 %272, i64* %XAX, align 8, !mcsema_real_eip !76
  %273 = add i32 %271, 4, !mcsema_real_eip !77
  %274 = xor i32 %273, %271, !mcsema_real_eip !77
  %275 = and i32 %274, 16, !mcsema_real_eip !77
  %276 = icmp ne i32 %275, 0, !mcsema_real_eip !77
  store i1 %276, i1* %AF, align 1, !mcsema_real_eip !77
  %277 = icmp slt i32 %273, 0
  store i1 %277, i1* %SF, align 1, !mcsema_real_eip !77
  %278 = icmp eq i32 %273, 0, !mcsema_real_eip !77
  store i1 %278, i1* %ZF, align 1, !mcsema_real_eip !77
  %279 = xor i32 %271, -2147483648, !mcsema_real_eip !77
  %280 = and i32 %274, %279, !mcsema_real_eip !77
  %281 = icmp slt i32 %280, 0
  store i1 %281, i1* %OF, align 1, !mcsema_real_eip !77
  %282 = trunc i32 %273 to i8, !mcsema_real_eip !77
  %283 = call i8 @llvm.ctpop.i8(i8 %282), !mcsema_real_eip !77
  %284 = and i8 %283, 1
  %285 = icmp eq i8 %284, 0
  store i1 %285, i1* %PF, align 1, !mcsema_real_eip !77
  %286 = icmp ugt i32 %271, -5
  br label %block_0x1c2, !mcsema_real_eip !78

block_0x1c2:                                      ; preds = %block_0x157, %block_0x165
  %.sink4 = phi i1 [ %286, %block_0x157 ], [ %269, %block_0x165 ]
  %.sink3 = phi i32 [ %273, %block_0x157 ], [ %256, %block_0x165 ]
  %.sink = phi i32* [ %270, %block_0x157 ], [ %253, %block_0x165 ]
  store i1 %.sink4, i1* %CF, align 1
  %287 = zext i32 %.sink3 to i64
  store i64 %287, i64* %XAX, align 8
  store i32 %.sink3, i32* %.sink, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14626 = load i8*, i8** %12, align 8
  %_new_gep_147 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_14626, i64 -16
  %_allin_new_bt_148 = bitcast i8* %_new_gep_147 to i64*
  %288 = load i64, i64* %_allin_new_bt_148, align 8, !mcsema_real_eip !79
  store i64 %288, i64* %XAX, align 8, !mcsema_real_eip !79
  %289 = add i64 %288, 6, !mcsema_real_eip !80
  %290 = inttoptr i64 %289 to i8*, !mcsema_real_eip !80
  %291 = load i8, i8* %290, align 1, !mcsema_real_eip !80
  %292 = zext i8 %291 to i64
  store i64 %292, i64* %XDI, align 8, !mcsema_real_eip !80
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_149 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.122 = load i64, i64* %XSP, align 8, !mcsema_real_eip !81
  %_new_gep_150 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_149, i64 -8
  %293 = add i64 %RSP_val.122, -8
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_151, align 8, !mcsema_real_eip !81
  store volatile i8* %_new_gep_150, i8** %_RSP_ptr_, align 8
  store i64 %293, i64* %XSP, align 8, !mcsema_real_eip !81
  %294 = call x86_64_sysvcc i64 @_to_byte(i64 %292)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_422 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_423 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_422, i64 8
  store i8* %_gep_fix_423, i8** %_RSP_ptr_, align 8
  store i64 %294, i64* %XAX, align 8, !mcsema_real_eip !81
  %295 = trunc i64 %294 to i8
  store i8 %295, i8* %CL.91, align 1, !mcsema_real_eip !82
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15227 = load i8*, i8** %12, align 8
  %_new_gep_153 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15227, i64 -35
  store i8 %295, i8* %_new_gep_153, align 1, !mcsema_real_eip !83
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15528 = load i8*, i8** %12, align 8
  %_new_gep_156 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15528, i64 -16
  %_allin_new_bt_157 = bitcast i8* %_new_gep_156 to i64*
  %296 = load i64, i64* %_allin_new_bt_157, align 8, !mcsema_real_eip !84
  store i64 %296, i64* %XDX, align 8, !mcsema_real_eip !84
  %297 = add i64 %296, 7, !mcsema_real_eip !85
  %298 = inttoptr i64 %297 to i8*, !mcsema_real_eip !85
  %299 = load i8, i8* %298, align 1, !mcsema_real_eip !85
  %300 = zext i8 %299 to i64
  store i64 %300, i64* %XDI, align 8, !mcsema_real_eip !85
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_158 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.132 = load i64, i64* %XSP, align 8, !mcsema_real_eip !86
  %_new_gep_159 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_158, i64 -8
  %301 = add i64 %RSP_val.132, -8
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_160, align 8, !mcsema_real_eip !86
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_, align 8
  store i64 %301, i64* %XSP, align 8, !mcsema_real_eip !86
  %302 = call x86_64_sysvcc i64 @_to_byte(i64 %300)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_424 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_425 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_424, i64 8
  store i8* %_gep_fix_425, i8** %_RSP_ptr_, align 8
  store i64 %302, i64* %XAX, align 8, !mcsema_real_eip !86
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16129 = load i8*, i8** %12, align 8
  %_new_gep_162 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16129, i64 -35
  %303 = load i8, i8* %_new_gep_162, align 1, !mcsema_real_eip !87
  %304 = zext i8 %303 to i32
  %305 = trunc i64 %302 to i32
  %306 = or i32 %305, %304, !mcsema_real_eip !88
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !88
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !88
  %307 = icmp slt i32 %306, 0
  store i1 %307, i1* %SF, align 1, !mcsema_real_eip !88
  %308 = icmp eq i32 %306, 0, !mcsema_real_eip !88
  store i1 %308, i1* %ZF, align 1, !mcsema_real_eip !88
  %309 = trunc i32 %306 to i8, !mcsema_real_eip !88
  %310 = call i8 @llvm.ctpop.i8(i8 %309), !mcsema_real_eip !88
  %311 = and i8 %310, 1
  %312 = icmp eq i8 %311, 0
  store i1 %312, i1* %PF, align 1, !mcsema_real_eip !88
  %313 = zext i32 %306 to i64, !mcsema_real_eip !88
  store i64 %313, i64* %XDI, align 8, !mcsema_real_eip !88
  %314 = trunc i32 %306 to i8
  store i8 %314, i8* %CL.91, align 1, !mcsema_real_eip !89
  store i8 %314, i8* %_new_gep_162, align 1, !mcsema_real_eip !90
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16730 = load i8*, i8** %12, align 8
  %_new_gep_168 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16730, i64 -35
  %315 = load i8, i8* %_new_gep_168, align 1, !mcsema_real_eip !91
  %316 = zext i8 %315 to i32
  %317 = xor i32 %316, -1, !mcsema_real_eip !92
  %318 = zext i32 %317 to i64, !mcsema_real_eip !92
  store i64 %318, i64* %XAX, align 8, !mcsema_real_eip !92
  %319 = sub nuw nsw i32 -71, %316
  %320 = xor i32 %319, %317, !mcsema_real_eip !93
  %321 = and i32 %320, 16, !mcsema_real_eip !93
  %322 = icmp ne i32 %321, 0, !mcsema_real_eip !93
  store i1 %322, i1* %AF, align 1, !mcsema_real_eip !93
  %323 = trunc i32 %319 to i8, !mcsema_real_eip !93
  %324 = call i8 @llvm.ctpop.i8(i8 %323), !mcsema_real_eip !93
  %325 = and i8 %324, 1
  %326 = icmp eq i8 %325, 0
  store i1 %326, i1* %PF, align 1, !mcsema_real_eip !93
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !93
  store i1 true, i1* %SF, align 1, !mcsema_real_eip !93
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !93
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !93
  %_new_gep_183 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_16730, i64 -20
  %327 = bitcast i8* %_new_gep_183 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %XCX, align 8, !mcsema_real_eip !94
  %330 = load i32, i32* %327, align 4, !mcsema_real_eip !95
  %CL_val.160.zext = and i32 %328, 255
  %331 = and i32 %328, 31, !mcsema_real_eip !96
  %332 = add nsw i32 %CL_val.160.zext, -1
  %333 = icmp ne i32 %331, 0, !mcsema_real_eip !96
  %334 = select i1 %333, i32 %332, i32 0, !mcsema_real_eip !96
  %335 = zext i1 %333 to i32
  %336 = shl i32 %330, %334, !mcsema_real_eip !96
  %337 = icmp slt i32 %336, 0
  %338 = and i1 %333, %337
  %339 = shl i32 %336, %335, !mcsema_real_eip !96
  %340 = icmp eq i32 %331, 1, !mcsema_real_eip !96
  %341 = icmp slt i32 %339, 0
  %342 = xor i1 %341, %338, !mcsema_real_eip !96
  %343 = and i1 %340, %342
  store i1 %343, i1* %OF, align 1, !mcsema_real_eip !96
  store i1 %338, i1* %CF, align 1, !mcsema_real_eip !96
  %344 = icmp eq i32 %339, 0, !mcsema_real_eip !96
  %345 = and i1 %333, %344
  store i1 %345, i1* %ZF, align 1, !mcsema_real_eip !96
  %not. = xor i1 %333, true
  %346 = or i1 %341, %not.
  store i1 %346, i1* %SF, align 1, !mcsema_real_eip !96
  %347 = trunc i32 %339 to i8, !mcsema_real_eip !96
  %348 = call i8 @llvm.ctpop.i8(i8 %347), !mcsema_real_eip !96
  %349 = and i8 %348, 1
  %350 = icmp eq i8 %349, 0
  %351 = select i1 %333, i1 %350, i1 %326, !mcsema_real_eip !96
  store i1 %351, i1* %PF, align 1, !mcsema_real_eip !96
  %352 = zext i32 %339 to i64
  store i64 %352, i64* %XAX, align 8
  store i32 %339, i32* %327, align 4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19131 = load i8*, i8** %12, align 8
  %_new_gep_192 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19131, i64 -20
  %353 = bitcast i8* %_new_gep_192 to i32*
  %354 = load i32, i32* %353, align 4, !mcsema_real_eip !97
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !97
  %355 = trunc i32 %354 to i8, !mcsema_real_eip !97
  %356 = call i8 @llvm.ctpop.i8(i8 %355), !mcsema_real_eip !97
  %357 = and i8 %356, 1
  %358 = icmp eq i8 %357, 0
  store i1 %358, i1* %PF, align 1, !mcsema_real_eip !97
  %359 = icmp eq i32 %354, 0, !mcsema_real_eip !97
  store i1 %359, i1* %ZF, align 1, !mcsema_real_eip !97
  %360 = icmp slt i32 %354, 0
  store i1 %360, i1* %SF, align 1, !mcsema_real_eip !97
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !97
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !97
  br i1 %359, label %block_0x1d8, label %block_0x417, !mcsema_real_eip !98

block_0x1d8:                                      ; preds = %block_0x1c2
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !99
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !99
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !99
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !99
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !99
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !99
  store i64 4, i64* %XDX, align 8, !mcsema_real_eip !100
  %_new_gep_198 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_19131, i64 -16
  %_allin_new_bt_199 = bitcast i8* %_new_gep_198 to i64*
  %361 = load i64, i64* %_allin_new_bt_199, align 8, !mcsema_real_eip !101
  %362 = add i64 %361, 8, !mcsema_real_eip !102
  %363 = xor i64 %362, %361, !mcsema_real_eip !102
  %364 = and i64 %363, 16, !mcsema_real_eip !102
  %365 = icmp ne i64 %364, 0, !mcsema_real_eip !102
  store i1 %365, i1* %AF, align 1, !mcsema_real_eip !102
  %366 = icmp slt i64 %362, 0
  store i1 %366, i1* %SF, align 1, !mcsema_real_eip !102
  %367 = icmp eq i64 %362, 0, !mcsema_real_eip !102
  store i1 %367, i1* %ZF, align 1, !mcsema_real_eip !102
  %368 = xor i64 %361, -9223372036854775808, !mcsema_real_eip !102
  %369 = and i64 %363, %368, !mcsema_real_eip !102
  %370 = icmp slt i64 %369, 0
  store i1 %370, i1* %OF, align 1, !mcsema_real_eip !102
  %371 = trunc i64 %362 to i8, !mcsema_real_eip !102
  %372 = call i8 @llvm.ctpop.i8(i8 %371), !mcsema_real_eip !102
  %373 = and i8 %372, 1
  %374 = icmp eq i8 %373, 0
  store i1 %374, i1* %PF, align 1, !mcsema_real_eip !102
  %375 = icmp ugt i64 %361, -9
  store i1 %375, i1* %CF, align 1, !mcsema_real_eip !102
  store i64 %362, i64* %XAX, align 8, !mcsema_real_eip !102
  store i64 %362, i64* %XSI, align 8, !mcsema_real_eip !103
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_200 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.181 = load i64, i64* %XSP, align 8, !mcsema_real_eip !104
  %_new_gep_201 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_200, i64 -8
  %376 = add i64 %RSP_val.181, -8
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_202, align 8, !mcsema_real_eip !104
  store volatile i8* %_new_gep_201, i8** %_RSP_ptr_, align 8
  store i64 %376, i64* %XSP, align 8, !mcsema_real_eip !104
  %377 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %362, i64 4)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_426 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_427 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_426, i64 8
  store i8* %_gep_fix_427, i8** %_RSP_ptr_, align 8
  store i64 %377, i64* %XAX, align 8, !mcsema_real_eip !104
  %378 = trunc i64 %377 to i16
  %CX.184 = bitcast i64* %XCX to i16*, !mcsema_real_eip !105
  store i16 %378, i16* %CX.184, align 2, !mcsema_real_eip !105
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20332 = load i8*, i8** %12, align 8
  %_new_gep_204 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20332, i64 -38
  %379 = bitcast i8* %_new_gep_204 to i16*
  store i16 %378, i16* %379, align 2, !mcsema_real_eip !106
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20633 = load i8*, i8** %12, align 8
  %_new_gep_207 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20633, i64 -38
  %380 = bitcast i8* %_new_gep_207 to i16*
  %381 = load i16, i16* %380, align 2, !mcsema_real_eip !107
  %382 = or i16 %381, 21845
  %383 = zext i16 %382 to i32
  %384 = zext i16 %382 to i64
  store i64 %384, i64* %XAX, align 8, !mcsema_real_eip !108
  %385 = add nsw i32 %383, -56663
  %386 = xor i32 %385, %383, !mcsema_real_eip !109
  %387 = and i32 %386, 16
  %388 = icmp eq i32 %387, 0
  store i1 %388, i1* %AF, align 1, !mcsema_real_eip !109
  %389 = trunc i32 %385 to i8, !mcsema_real_eip !109
  %390 = call i8 @llvm.ctpop.i8(i8 %389), !mcsema_real_eip !109
  %391 = and i8 %390, 1
  %392 = icmp eq i8 %391, 0
  store i1 %392, i1* %PF, align 1, !mcsema_real_eip !109
  %393 = icmp eq i32 %385, 0, !mcsema_real_eip !109
  store i1 %393, i1* %ZF, align 1, !mcsema_real_eip !109
  %394 = icmp ult i16 %382, -8873
  store i1 %394, i1* %SF, align 1, !mcsema_real_eip !109
  %395 = icmp ult i16 %382, -8873
  store i1 %395, i1* %CF, align 1, !mcsema_real_eip !109
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !109
  br i1 %393, label %block_0x20a, label %block_0x22a, !mcsema_real_eip !110

block_0x20a:                                      ; preds = %block_0x1d8
  %396 = load i16, i16* %380, align 2, !mcsema_real_eip !111
  %397 = or i16 %396, -21846
  %398 = zext i16 %397 to i32
  %399 = zext i16 %397 to i64
  store i64 %399, i64* %XAX, align 8, !mcsema_real_eip !112
  %400 = add nsw i32 %398, -65211
  %401 = xor i32 %400, %398, !mcsema_real_eip !113
  %402 = and i32 %401, 16
  %403 = icmp eq i32 %402, 0
  store i1 %403, i1* %AF, align 1, !mcsema_real_eip !113
  %404 = trunc i32 %400 to i8, !mcsema_real_eip !113
  %405 = call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !113
  %406 = and i8 %405, 1
  %407 = icmp eq i8 %406, 0
  store i1 %407, i1* %PF, align 1, !mcsema_real_eip !113
  %408 = icmp eq i32 %400, 0, !mcsema_real_eip !113
  store i1 %408, i1* %ZF, align 1, !mcsema_real_eip !113
  %409 = icmp ult i16 %397, -325
  store i1 %409, i1* %SF, align 1, !mcsema_real_eip !113
  %410 = icmp ult i16 %397, -325
  store i1 %410, i1* %CF, align 1, !mcsema_real_eip !113
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !113
  br i1 %408, label %block_0x231, label %block_0x22a, !mcsema_real_eip !114

block_0x22a:                                      ; preds = %block_0x20a, %block_0x1d8
  br label %block_0x231, !mcsema_real_eip !111

block_0x231:                                      ; preds = %block_0x20a, %block_0x22a
  %.sink7 = phi i32 [ 48059, %block_0x22a ], [ 43690, %block_0x20a ]
  %_new_gep_246 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20633, i64 -20
  %411 = bitcast i8* %_new_gep_246 to i32*
  store i32 %.sink7, i32* %411, align 4
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !115
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !115
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !115
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !115
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !115
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !115
  store i64 8, i64* %XDX, align 8, !mcsema_real_eip !116
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_21534 = load i8*, i8** %12, align 8
  %_new_gep_216 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_21534, i64 -16
  %_allin_new_bt_217 = bitcast i8* %_new_gep_216 to i64*
  %412 = load i64, i64* %_allin_new_bt_217, align 8, !mcsema_real_eip !117
  %413 = add i64 %412, 12, !mcsema_real_eip !118
  %414 = xor i64 %413, %412, !mcsema_real_eip !118
  %415 = and i64 %414, 16, !mcsema_real_eip !118
  %416 = icmp ne i64 %415, 0, !mcsema_real_eip !118
  store i1 %416, i1* %AF, align 1, !mcsema_real_eip !118
  %417 = icmp slt i64 %413, 0
  store i1 %417, i1* %SF, align 1, !mcsema_real_eip !118
  %418 = icmp eq i64 %413, 0, !mcsema_real_eip !118
  store i1 %418, i1* %ZF, align 1, !mcsema_real_eip !118
  %419 = xor i64 %412, -9223372036854775808, !mcsema_real_eip !118
  %420 = and i64 %414, %419, !mcsema_real_eip !118
  %421 = icmp slt i64 %420, 0
  store i1 %421, i1* %OF, align 1, !mcsema_real_eip !118
  %422 = trunc i64 %413 to i8, !mcsema_real_eip !118
  %423 = call i8 @llvm.ctpop.i8(i8 %422), !mcsema_real_eip !118
  %424 = and i8 %423, 1
  %425 = icmp eq i8 %424, 0
  store i1 %425, i1* %PF, align 1, !mcsema_real_eip !118
  %426 = icmp ugt i64 %412, -13
  store i1 %426, i1* %CF, align 1, !mcsema_real_eip !118
  store i64 %413, i64* %XAX, align 8, !mcsema_real_eip !118
  store i64 %413, i64* %XSI, align 8, !mcsema_real_eip !119
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_218 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.210 = load i64, i64* %XSP, align 8, !mcsema_real_eip !120
  %_new_gep_219 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_218, i64 -8
  %427 = add i64 %RSP_val.210, -8
  %_allin_new_bt_220 = bitcast i8* %_new_gep_219 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_220, align 8, !mcsema_real_eip !120
  store volatile i8* %_new_gep_219, i8** %_RSP_ptr_, align 8
  store i64 %427, i64* %XSP, align 8, !mcsema_real_eip !120
  %428 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %413, i64 8)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_428 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_429 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_428, i64 8
  store i8* %_gep_fix_429, i8** %_RSP_ptr_, align 8
  store i64 %428, i64* %XAX, align 8, !mcsema_real_eip !120
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22135 = load i8*, i8** %12, align 8
  %_new_gep_222 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22135, i64 -44
  %429 = trunc i64 %428 to i32
  %430 = bitcast i8* %_new_gep_222 to i32*
  store i32 %429, i32* %430, align 4, !mcsema_real_eip !121
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22436 = load i8*, i8** %12, align 8
  %_new_gep_225 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22436, i64 -44
  %431 = bitcast i8* %_new_gep_225 to i32*
  %432 = load i32, i32* %431, align 4, !mcsema_real_eip !122
  %433 = xor i32 %432, -1534560611, !mcsema_real_eip !123
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !123
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !123
  %434 = icmp sgt i32 %432, -1
  store i1 %434, i1* %SF, align 1, !mcsema_real_eip !123
  %435 = icmp eq i32 %433, 0, !mcsema_real_eip !123
  store i1 %435, i1* %ZF, align 1, !mcsema_real_eip !123
  %436 = trunc i32 %433 to i8, !mcsema_real_eip !123
  %437 = call i8 @llvm.ctpop.i8(i8 %436), !mcsema_real_eip !123
  %438 = and i8 %437, 1
  %439 = icmp eq i8 %438, 0
  store i1 %439, i1* %PF, align 1, !mcsema_real_eip !123
  %440 = zext i32 %433 to i64, !mcsema_real_eip !123
  store i64 %440, i64* %XAX, align 8, !mcsema_real_eip !123
  %_new_gep_228 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_22436, i64 -48
  %441 = bitcast i8* %_new_gep_228 to i32*
  store i32 %433, i32* %441, align 4, !mcsema_real_eip !124
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23037 = load i8*, i8** %12, align 8
  %_new_gep_231 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23037, i64 -48
  %442 = bitcast i8* %_new_gep_231 to i32*
  %443 = load i32, i32* %442, align 4, !mcsema_real_eip !125
  %444 = trunc i32 %443 to i16
  %445 = icmp slt i16 %444, 0
  %446 = lshr i32 %443, 16
  store i1 %445, i1* %CF, align 1, !mcsema_real_eip !126
  %447 = icmp eq i32 %446, 0, !mcsema_real_eip !126
  store i1 %447, i1* %ZF, align 1, !mcsema_real_eip !126
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !126
  %448 = trunc i32 %446 to i8, !mcsema_real_eip !126
  %449 = call i8 @llvm.ctpop.i8(i8 %448), !mcsema_real_eip !126
  %450 = and i8 %449, 1
  %451 = icmp eq i8 %450, 0
  store i1 %451, i1* %PF, align 1, !mcsema_real_eip !126
  %452 = zext i32 %446 to i64, !mcsema_real_eip !126
  store i64 %452, i64* %XAX, align 8, !mcsema_real_eip !126
  %_new_gep_234 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23037, i64 -52
  %453 = bitcast i8* %_new_gep_234 to i32*
  store i32 %446, i32* %453, align 4, !mcsema_real_eip !127
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23638 = load i8*, i8** %12, align 8
  %_new_gep_237 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23638, i64 -48
  %454 = bitcast i8* %_new_gep_237 to i32*
  %455 = load i32, i32* %454, align 4, !mcsema_real_eip !128
  %456 = and i32 %455, 65535, !mcsema_real_eip !129
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !129
  %457 = icmp eq i32 %456, 0, !mcsema_real_eip !129
  store i1 %457, i1* %ZF, align 1, !mcsema_real_eip !129
  %458 = trunc i32 %455 to i8, !mcsema_real_eip !129
  %459 = call i8 @llvm.ctpop.i8(i8 %458), !mcsema_real_eip !129
  %460 = and i8 %459, 1
  %461 = icmp eq i8 %460, 0
  store i1 %461, i1* %PF, align 1, !mcsema_real_eip !129
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !129
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !129
  %462 = zext i32 %456 to i64, !mcsema_real_eip !129
  store i64 %462, i64* %XAX, align 8, !mcsema_real_eip !129
  %_new_gep_240 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_23638, i64 -56
  %463 = bitcast i8* %_new_gep_240 to i32*
  store i32 %456, i32* %463, align 4, !mcsema_real_eip !130
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_24239 = load i8*, i8** %12, align 8
  %_new_gep_243 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_24239, i64 -52
  %464 = bitcast i8* %_new_gep_243 to i32*
  %465 = load i32, i32* %464, align 4, !mcsema_real_eip !131
  %466 = add i32 %465, -79
  %467 = xor i32 %466, %465, !mcsema_real_eip !131
  %468 = and i32 %467, 16, !mcsema_real_eip !131
  %469 = icmp ne i32 %468, 0, !mcsema_real_eip !131
  store i1 %469, i1* %AF, align 1, !mcsema_real_eip !131
  %470 = trunc i32 %466 to i8, !mcsema_real_eip !131
  %471 = call i8 @llvm.ctpop.i8(i8 %470), !mcsema_real_eip !131
  %472 = and i8 %471, 1
  %473 = icmp eq i8 %472, 0
  store i1 %473, i1* %PF, align 1, !mcsema_real_eip !131
  %474 = icmp eq i32 %466, 0, !mcsema_real_eip !131
  store i1 %474, i1* %ZF, align 1, !mcsema_real_eip !131
  %475 = icmp slt i32 %466, 0
  store i1 %475, i1* %SF, align 1, !mcsema_real_eip !131
  %476 = icmp ult i32 %465, 79, !mcsema_real_eip !131
  store i1 %476, i1* %CF, align 1, !mcsema_real_eip !131
  %477 = and i32 %467, %465, !mcsema_real_eip !131
  %478 = icmp slt i32 %477, 0
  store i1 %478, i1* %OF, align 1, !mcsema_real_eip !131
  br i1 %474, label %block_0x274, label %block_0x231.block_0x28c_crit_edge, !mcsema_real_eip !132

block_0x231.block_0x28c_crit_edge:                ; preds = %block_0x231
  %.pre = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_24239, i64 -20
  %.pre57 = bitcast i8* %.pre to i32*
  br label %block_0x28c

block_0x274:                                      ; preds = %block_0x231
  %_new_gep_249 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_24239, i64 -56
  %479 = bitcast i8* %_new_gep_249 to i32*
  %480 = load i32, i32* %479, align 4, !mcsema_real_eip !133
  %481 = zext i32 %480 to i64, !mcsema_real_eip !133
  store i64 %481, i64* %XAX, align 8, !mcsema_real_eip !133
  %_new_gep_252 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_24239, i64 -20
  %482 = bitcast i8* %_new_gep_252 to i32*
  %483 = load i32, i32* %482, align 4, !mcsema_real_eip !134
  %484 = sub i32 %480, %483, !mcsema_real_eip !134
  %485 = xor i32 %484, %480, !mcsema_real_eip !134
  %486 = xor i32 %485, %483, !mcsema_real_eip !134
  %487 = and i32 %486, 16, !mcsema_real_eip !134
  %488 = icmp ne i32 %487, 0, !mcsema_real_eip !134
  store i1 %488, i1* %AF, align 1, !mcsema_real_eip !134
  %489 = trunc i32 %484 to i8, !mcsema_real_eip !134
  %490 = call i8 @llvm.ctpop.i8(i8 %489), !mcsema_real_eip !134
  %491 = and i8 %490, 1
  %492 = icmp eq i8 %491, 0
  store i1 %492, i1* %PF, align 1, !mcsema_real_eip !134
  %493 = icmp eq i32 %484, 0, !mcsema_real_eip !134
  store i1 %493, i1* %ZF, align 1, !mcsema_real_eip !134
  %494 = icmp slt i32 %484, 0
  store i1 %494, i1* %SF, align 1, !mcsema_real_eip !134
  %495 = icmp ult i32 %480, %483, !mcsema_real_eip !134
  store i1 %495, i1* %CF, align 1, !mcsema_real_eip !134
  %496 = xor i32 %483, %480, !mcsema_real_eip !134
  %497 = and i32 %485, %496, !mcsema_real_eip !134
  %498 = icmp slt i32 %497, 0
  store i1 %498, i1* %OF, align 1, !mcsema_real_eip !134
  br i1 %493, label %block_0x280, label %block_0x28c, !mcsema_real_eip !135

block_0x28c:                                      ; preds = %block_0x231.block_0x28c_crit_edge, %block_0x274
  %.pre-phi = phi i32* [ %.pre57, %block_0x231.block_0x28c_crit_edge ], [ %482, %block_0x274 ]
  store i32 48351, i32* %.pre-phi, align 4, !mcsema_real_eip !136
  br label %block_0x293, !mcsema_real_eip !133

block_0x293:                                      ; preds = %block_0x280, %block_0x28c
  store i64 8, i64* %XDX, align 8, !mcsema_real_eip !137
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25740 = load i8*, i8** %12, align 8
  %_new_gep_258 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25740, i64 -20
  %499 = bitcast i8* %_new_gep_258 to i32*
  %500 = load i32, i32* %499, align 4, !mcsema_real_eip !138
  %501 = zext i32 %500 to i64, !mcsema_real_eip !138
  store i64 %501, i64* %XDI, align 8, !mcsema_real_eip !138
  %_new_gep_261 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_25740, i64 -16
  %_allin_new_bt_262 = bitcast i8* %_new_gep_261 to i64*
  %502 = load i64, i64* %_allin_new_bt_262, align 8, !mcsema_real_eip !139
  %503 = add i64 %502, 20, !mcsema_real_eip !140
  %504 = xor i64 %503, %502, !mcsema_real_eip !140
  %505 = and i64 %504, 16
  %506 = icmp eq i64 %505, 0
  store i1 %506, i1* %AF, align 1, !mcsema_real_eip !140
  %507 = icmp slt i64 %503, 0
  store i1 %507, i1* %SF, align 1, !mcsema_real_eip !140
  %508 = icmp eq i64 %503, 0, !mcsema_real_eip !140
  store i1 %508, i1* %ZF, align 1, !mcsema_real_eip !140
  %509 = xor i64 %502, -9223372036854775808, !mcsema_real_eip !140
  %510 = and i64 %504, %509, !mcsema_real_eip !140
  %511 = icmp slt i64 %510, 0
  store i1 %511, i1* %OF, align 1, !mcsema_real_eip !140
  %512 = trunc i64 %503 to i8, !mcsema_real_eip !140
  %513 = call i8 @llvm.ctpop.i8(i8 %512), !mcsema_real_eip !140
  %514 = and i8 %513, 1
  %515 = icmp eq i8 %514, 0
  store i1 %515, i1* %PF, align 1, !mcsema_real_eip !140
  %516 = icmp ugt i64 %502, -21
  store i1 %516, i1* %CF, align 1, !mcsema_real_eip !140
  store i64 %503, i64* %XAX, align 8, !mcsema_real_eip !140
  store i64 %503, i64* %XSI, align 8, !mcsema_real_eip !141
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_263 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.246 = load i64, i64* %XSP, align 8, !mcsema_real_eip !142
  %_new_gep_264 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_263, i64 -8
  %517 = add i64 %RSP_val.246, -8
  %_allin_new_bt_265 = bitcast i8* %_new_gep_264 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_265, align 8, !mcsema_real_eip !142
  store volatile i8* %_new_gep_264, i8** %_RSP_ptr_, align 8
  store i64 %517, i64* %XSP, align 8, !mcsema_real_eip !142
  %518 = call x86_64_sysvcc i64 @_read_bytes(i64 %501, i64 %503, i64 8)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_430 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_431 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_430, i64 8
  store i8* %_gep_fix_431, i8** %_RSP_ptr_, align 8
  store i64 %518, i64* %XAX, align 8, !mcsema_real_eip !142
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26641 = load i8*, i8** %12, align 8
  %_new_gep_267 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26641, i64 -60
  %519 = trunc i64 %518 to i32
  %520 = bitcast i8* %_new_gep_267 to i32*
  store i32 %519, i32* %520, align 4, !mcsema_real_eip !143
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26942 = load i8*, i8** %12, align 8
  %_new_gep_270 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_26942, i64 -60
  %521 = bitcast i8* %_new_gep_270 to i32*
  %522 = load i32, i32* %521, align 4, !mcsema_real_eip !144
  %523 = add i32 %522, -3
  %524 = xor i32 %523, %522, !mcsema_real_eip !145
  %525 = and i32 %524, 16, !mcsema_real_eip !145
  %526 = icmp ne i32 %525, 0, !mcsema_real_eip !145
  store i1 %526, i1* %AF, align 1, !mcsema_real_eip !145
  %527 = trunc i32 %523 to i8, !mcsema_real_eip !145
  %528 = call i8 @llvm.ctpop.i8(i8 %527), !mcsema_real_eip !145
  %529 = and i8 %528, 1
  %530 = icmp eq i8 %529, 0
  store i1 %530, i1* %PF, align 1, !mcsema_real_eip !145
  %531 = icmp eq i32 %523, 0, !mcsema_real_eip !145
  store i1 %531, i1* %ZF, align 1, !mcsema_real_eip !145
  %532 = icmp slt i32 %523, 0
  store i1 %532, i1* %SF, align 1, !mcsema_real_eip !145
  %533 = icmp ult i32 %522, 3, !mcsema_real_eip !145
  store i1 %533, i1* %CF, align 1, !mcsema_real_eip !145
  %534 = and i32 %524, %522, !mcsema_real_eip !145
  %535 = icmp slt i32 %534, 0
  store i1 %535, i1* %OF, align 1, !mcsema_real_eip !145
  %536 = zext i32 %523 to i64, !mcsema_real_eip !145
  store i64 %536, i64* %XAX, align 8, !mcsema_real_eip !145
  store i32 %523, i32* %521, align 4, !mcsema_real_eip !146
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27543 = load i8*, i8** %12, align 8
  %_new_gep_276 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_27543, i64 -60
  %537 = bitcast i8* %_new_gep_276 to i32*
  %538 = load i32, i32* %537, align 4, !mcsema_real_eip !147
  %539 = and i32 %538, 7, !mcsema_real_eip !148
  %540 = icmp eq i32 %539, 0
  %541 = trunc i32 %539 to i8
  %542 = call i8 @llvm.ctpop.i8(i8 %541)
  %543 = and i8 %542, 1
  %544 = icmp eq i8 %543, 0
  %545 = zext i32 %539 to i64, !mcsema_real_eip !148
  store i64 %545, i64* %XAX, align 8, !mcsema_real_eip !148
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !149
  store i1 %544, i1* %PF, align 1, !mcsema_real_eip !149
  store i1 %540, i1* %ZF, align 1, !mcsema_real_eip !149
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !149
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !149
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !149
  br i1 %540, label %block_0x2d2, label %block_0x417, !mcsema_real_eip !150

block_0x280:                                      ; preds = %block_0x274
  store i32 0, i32* %482, align 4, !mcsema_real_eip !151
  br label %block_0x293, !mcsema_real_eip !152

block_0x2d2:                                      ; preds = %block_0x293
  %546 = load i32, i32* %537, align 4, !mcsema_real_eip !153
  %547 = xor i32 %546, -2147483648
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !154
  %548 = trunc i32 %546 to i8, !mcsema_real_eip !154
  %549 = call i8 @llvm.ctpop.i8(i8 %548), !mcsema_real_eip !154
  %550 = and i8 %549, 1
  %551 = icmp eq i8 %550, 0
  store i1 %551, i1* %PF, align 1, !mcsema_real_eip !154
  %552 = icmp eq i32 %547, 0, !mcsema_real_eip !154
  store i1 %552, i1* %ZF, align 1, !mcsema_real_eip !154
  %553 = icmp sgt i32 %546, -1
  store i1 %553, i1* %SF, align 1, !mcsema_real_eip !154
  store i1 %553, i1* %CF, align 1, !mcsema_real_eip !154
  store i1 %553, i1* %OF, align 1, !mcsema_real_eip !154
  %554 = zext i32 %547 to i64, !mcsema_real_eip !154
  store i64 %554, i64* %XAX, align 8, !mcsema_real_eip !154
  store i32 %547, i32* %537, align 4, !mcsema_real_eip !155
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29044 = load i8*, i8** %12, align 8
  %_new_gep_291 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_29044, i64 -60
  %555 = bitcast i8* %_new_gep_291 to i32*
  %556 = load i32, i32* %555, align 4, !mcsema_real_eip !156
  %557 = add i32 %556, -268435455
  %558 = xor i32 %557, %556, !mcsema_real_eip !156
  %559 = and i32 %558, 16
  %560 = icmp eq i32 %559, 0
  store i1 %560, i1* %AF, align 1, !mcsema_real_eip !156
  %561 = trunc i32 %557 to i8, !mcsema_real_eip !156
  %562 = call i8 @llvm.ctpop.i8(i8 %561), !mcsema_real_eip !156
  %563 = and i8 %562, 1
  %564 = icmp eq i8 %563, 0
  store i1 %564, i1* %PF, align 1, !mcsema_real_eip !156
  %565 = icmp eq i32 %557, 0, !mcsema_real_eip !156
  store i1 %565, i1* %ZF, align 1, !mcsema_real_eip !156
  %566 = icmp slt i32 %557, 0
  store i1 %566, i1* %SF, align 1, !mcsema_real_eip !156
  %567 = icmp ult i32 %556, 268435455, !mcsema_real_eip !156
  store i1 %567, i1* %CF, align 1, !mcsema_real_eip !156
  %568 = and i32 %558, %556, !mcsema_real_eip !156
  %569 = icmp slt i32 %568, 0
  store i1 %569, i1* %OF, align 1, !mcsema_real_eip !156
  %570 = or i1 %567, %565, !mcsema_real_eip !157
  br i1 %570, label %block_0x2f6, label %block_0x417, !mcsema_real_eip !157

block_0x2f6:                                      ; preds = %block_0x2d2
  store i64 10000, i64* %XAX, align 8, !mcsema_real_eip !158
  %571 = load i32, i32* %555, align 4, !mcsema_real_eip !159
  %572 = xor i32 %571, 13631488, !mcsema_real_eip !160
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !160
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !160
  %573 = icmp slt i32 %571, 0
  store i1 %573, i1* %SF, align 1, !mcsema_real_eip !160
  %574 = icmp eq i32 %572, 0, !mcsema_real_eip !160
  store i1 %574, i1* %ZF, align 1, !mcsema_real_eip !160
  %575 = trunc i32 %571 to i8, !mcsema_real_eip !160
  %576 = call i8 @llvm.ctpop.i8(i8 %575), !mcsema_real_eip !160
  %577 = and i8 %576, 1
  %578 = icmp eq i8 %577, 0
  store i1 %578, i1* %PF, align 1, !mcsema_real_eip !160
  %579 = zext i32 %572 to i64, !mcsema_real_eip !160
  store i64 %579, i64* %XCX, align 8, !mcsema_real_eip !160
  store i32 %572, i32* %555, align 4, !mcsema_real_eip !161
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30245 = load i8*, i8** %12, align 8
  %_new_gep_303 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30245, i64 -60
  %580 = bitcast i8* %_new_gep_303 to i32*
  %581 = load i32, i32* %580, align 4, !mcsema_real_eip !162
  %582 = and i32 %581, 8, !mcsema_real_eip !163
  %583 = icmp ne i32 %582, 0, !mcsema_real_eip !163
  %584 = lshr i32 %581, 4
  store i1 %583, i1* %CF, align 1, !mcsema_real_eip !163
  %585 = icmp eq i32 %584, 0, !mcsema_real_eip !163
  store i1 %585, i1* %ZF, align 1, !mcsema_real_eip !163
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !163
  %586 = trunc i32 %584 to i8, !mcsema_real_eip !163
  %587 = call i8 @llvm.ctpop.i8(i8 %586), !mcsema_real_eip !163
  %588 = and i8 %587, 1
  %589 = icmp eq i8 %588, 0
  store i1 %589, i1* %PF, align 1, !mcsema_real_eip !163
  %590 = zext i32 %584 to i64, !mcsema_real_eip !163
  store i64 %590, i64* %XCX, align 8, !mcsema_real_eip !163
  store i32 %584, i32* %580, align 4, !mcsema_real_eip !164
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30846 = load i8*, i8** %12, align 8
  %_new_gep_309 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_30846, i64 -60
  %591 = bitcast i8* %_new_gep_309 to i32*
  %592 = load i32, i32* %591, align 4, !mcsema_real_eip !165
  %593 = add i32 %592, -226
  %594 = xor i32 %593, %592, !mcsema_real_eip !166
  %595 = and i32 %594, 16, !mcsema_real_eip !166
  %596 = icmp ne i32 %595, 0, !mcsema_real_eip !166
  store i1 %596, i1* %AF, align 1, !mcsema_real_eip !166
  %597 = trunc i32 %593 to i8, !mcsema_real_eip !166
  %598 = call i8 @llvm.ctpop.i8(i8 %597), !mcsema_real_eip !166
  %599 = and i8 %598, 1
  %600 = icmp eq i8 %599, 0
  store i1 %600, i1* %PF, align 1, !mcsema_real_eip !166
  %601 = icmp eq i32 %593, 0, !mcsema_real_eip !166
  store i1 %601, i1* %ZF, align 1, !mcsema_real_eip !166
  %602 = icmp slt i32 %593, 0
  store i1 %602, i1* %SF, align 1, !mcsema_real_eip !166
  %603 = icmp ult i32 %592, 226, !mcsema_real_eip !166
  store i1 %603, i1* %CF, align 1, !mcsema_real_eip !166
  %604 = and i32 %594, %592, !mcsema_real_eip !166
  %605 = icmp slt i32 %604, 0
  store i1 %605, i1* %OF, align 1, !mcsema_real_eip !166
  %606 = zext i32 %593 to i64, !mcsema_real_eip !166
  store i64 %606, i64* %XCX, align 8, !mcsema_real_eip !166
  store i32 %593, i32* %591, align 4, !mcsema_real_eip !167
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31447 = load i8*, i8** %12, align 8
  %_new_gep_315 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31447, i64 -60
  %607 = bitcast i8* %_new_gep_315 to i32*
  %608 = load i32, i32* %607, align 4, !mcsema_real_eip !168
  %609 = zext i32 %608 to i64, !mcsema_real_eip !168
  store i64 %609, i64* %XCX, align 8, !mcsema_real_eip !168
  %_new_gep_318 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_31447, i64 -68
  %EAX_val.291 = load i32, i32* %EAX.9, align 4, !mcsema_real_eip !169
  %610 = bitcast i8* %_new_gep_318 to i32*
  store i32 %EAX_val.291, i32* %610, align 4, !mcsema_real_eip !169
  %ECX_val.293 = load i32, i32* %ECX.12, align 4, !mcsema_real_eip !170
  %611 = zext i32 %ECX_val.293 to i64, !mcsema_real_eip !170
  store i64 %611, i64* %XAX, align 8, !mcsema_real_eip !170
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !171
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !171
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !171
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !171
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !171
  store i64 0, i64* %XDX, align 8, !mcsema_real_eip !171
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32048 = load i8*, i8** %12, align 8
  %_new_gep_321 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32048, i64 -68
  %612 = bitcast i8* %_new_gep_321 to i32*
  %613 = load i32, i32* %612, align 4, !mcsema_real_eip !172
  %614 = zext i32 %613 to i64
  store i64 %614, i64* %XCX, align 8, !mcsema_real_eip !172
  %615 = sext i32 %ECX_val.293 to i64, !mcsema_real_eip !173
  %616 = udiv i64 %615, %614, !mcsema_real_eip !173
  %617 = urem i64 %615, %614, !mcsema_real_eip !173
  store i64 %617, i64* %XDX, align 8, !mcsema_real_eip !173
  %618 = and i64 %616, 4294967295
  store i64 %618, i64* %XAX, align 8, !mcsema_real_eip !173
  %_new_gep_324 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32048, i64 -60
  %619 = trunc i64 %616 to i32
  %620 = bitcast i8* %_new_gep_324 to i32*
  store i32 %619, i32* %620, align 4, !mcsema_real_eip !174
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32649 = load i8*, i8** %12, align 8
  %_new_gep_327 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32649, i64 -60
  %621 = bitcast i8* %_new_gep_327 to i32*
  %622 = load i32, i32* %621, align 4, !mcsema_real_eip !175
  %623 = add i32 %622, -3
  %624 = xor i32 %623, %622, !mcsema_real_eip !175
  %625 = and i32 %624, 16, !mcsema_real_eip !175
  %626 = icmp ne i32 %625, 0, !mcsema_real_eip !175
  store i1 %626, i1* %AF, align 1, !mcsema_real_eip !175
  %627 = trunc i32 %623 to i8, !mcsema_real_eip !175
  %628 = call i8 @llvm.ctpop.i8(i8 %627), !mcsema_real_eip !175
  %629 = and i8 %628, 1
  %630 = icmp eq i8 %629, 0
  store i1 %630, i1* %PF, align 1, !mcsema_real_eip !175
  %631 = icmp eq i32 %623, 0, !mcsema_real_eip !175
  store i1 %631, i1* %ZF, align 1, !mcsema_real_eip !175
  %632 = icmp slt i32 %623, 0
  store i1 %632, i1* %SF, align 1, !mcsema_real_eip !175
  %633 = icmp ult i32 %622, 3, !mcsema_real_eip !175
  store i1 %633, i1* %CF, align 1, !mcsema_real_eip !175
  %634 = and i32 %624, %622, !mcsema_real_eip !175
  %635 = icmp slt i32 %634, 0
  store i1 %635, i1* %OF, align 1, !mcsema_real_eip !175
  br i1 %631, label %block_0x343, label %block_0x338, !mcsema_real_eip !176

block_0x338:                                      ; preds = %block_0x2f6
  %636 = load i32, i32* %621, align 4, !mcsema_real_eip !177
  %637 = zext i32 %636 to i64, !mcsema_real_eip !177
  store i64 %637, i64* %XAX, align 8, !mcsema_real_eip !177
  br label %block_0x417, !mcsema_real_eip !178

block_0x343:                                      ; preds = %block_0x2f6
  store i64 4, i64* %XDX, align 8, !mcsema_real_eip !179
  %_new_gep_336 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32649, i64 -20
  %638 = bitcast i8* %_new_gep_336 to i32*
  %639 = load i32, i32* %638, align 4, !mcsema_real_eip !180
  %640 = zext i32 %639 to i64, !mcsema_real_eip !180
  store i64 %640, i64* %XDI, align 8, !mcsema_real_eip !180
  %_new_gep_339 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_32649, i64 -16
  %_allin_new_bt_340 = bitcast i8* %_new_gep_339 to i64*
  %641 = load i64, i64* %_allin_new_bt_340, align 8, !mcsema_real_eip !181
  %642 = add i64 %641, 28, !mcsema_real_eip !182
  %643 = xor i64 %642, %641, !mcsema_real_eip !182
  %644 = and i64 %643, 16
  %645 = icmp eq i64 %644, 0
  store i1 %645, i1* %AF, align 1, !mcsema_real_eip !182
  %646 = icmp slt i64 %642, 0
  store i1 %646, i1* %SF, align 1, !mcsema_real_eip !182
  %647 = icmp eq i64 %642, 0, !mcsema_real_eip !182
  store i1 %647, i1* %ZF, align 1, !mcsema_real_eip !182
  %648 = xor i64 %641, -9223372036854775808, !mcsema_real_eip !182
  %649 = and i64 %643, %648, !mcsema_real_eip !182
  %650 = icmp slt i64 %649, 0
  store i1 %650, i1* %OF, align 1, !mcsema_real_eip !182
  %651 = trunc i64 %642 to i8, !mcsema_real_eip !182
  %652 = call i8 @llvm.ctpop.i8(i8 %651), !mcsema_real_eip !182
  %653 = and i8 %652, 1
  %654 = icmp eq i8 %653, 0
  store i1 %654, i1* %PF, align 1, !mcsema_real_eip !182
  %655 = icmp ugt i64 %641, -29
  store i1 %655, i1* %CF, align 1, !mcsema_real_eip !182
  store i64 %642, i64* %XAX, align 8, !mcsema_real_eip !182
  store i64 %642, i64* %XSI, align 8, !mcsema_real_eip !183
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_341 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.317 = load i64, i64* %XSP, align 8, !mcsema_real_eip !184
  %_new_gep_342 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_341, i64 -8
  %656 = add i64 %RSP_val.317, -8
  %_allin_new_bt_343 = bitcast i8* %_new_gep_342 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_343, align 8, !mcsema_real_eip !184
  store volatile i8* %_new_gep_342, i8** %_RSP_ptr_, align 8
  store i64 %656, i64* %XSP, align 8, !mcsema_real_eip !184
  %657 = call x86_64_sysvcc i64 @_read_bytes(i64 %640, i64 %642, i64 4)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_432 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_433 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_432, i64 8
  store i8* %_gep_fix_433, i8** %_RSP_ptr_, align 8
  store i64 %657, i64* %XAX, align 8, !mcsema_real_eip !184
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_34450 = load i8*, i8** %12, align 8
  %_new_gep_345 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_34450, i64 -64
  %658 = trunc i64 %657 to i32
  %659 = bitcast i8* %_new_gep_345 to i32*
  store i32 %658, i32* %659, align 4, !mcsema_real_eip !185
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_34751 = load i8*, i8** %12, align 8
  %_new_gep_348 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_34751, i64 -16
  %_allin_new_bt_349 = bitcast i8* %_new_gep_348 to i64*
  %660 = load i64, i64* %_allin_new_bt_349, align 8, !mcsema_real_eip !186
  store i64 %660, i64* %XSI, align 8, !mcsema_real_eip !186
  %661 = add i64 %660, 28, !mcsema_real_eip !187
  %662 = inttoptr i64 %661 to i8*, !mcsema_real_eip !187
  %663 = load i8, i8* %662, align 1, !mcsema_real_eip !187
  %664 = sext i8 %663 to i64
  %665 = and i64 %664, 4294967295
  store i64 %665, i64* %XAX, align 8, !mcsema_real_eip !187
  %666 = sext i8 %663 to i32
  %667 = add nsw i32 %666, -100
  %668 = xor i32 %667, %666, !mcsema_real_eip !188
  %669 = and i32 %668, 16, !mcsema_real_eip !188
  %670 = icmp ne i32 %669, 0, !mcsema_real_eip !188
  store i1 %670, i1* %AF, align 1, !mcsema_real_eip !188
  %671 = trunc i32 %667 to i8, !mcsema_real_eip !188
  %672 = call i8 @llvm.ctpop.i8(i8 %671), !mcsema_real_eip !188
  %673 = and i8 %672, 1
  %674 = icmp eq i8 %673, 0
  store i1 %674, i1* %PF, align 1, !mcsema_real_eip !188
  %675 = icmp eq i32 %667, 0, !mcsema_real_eip !188
  store i1 %675, i1* %ZF, align 1, !mcsema_real_eip !188
  %676 = icmp slt i8 %663, 100
  store i1 %676, i1* %SF, align 1, !mcsema_real_eip !188
  %677 = icmp ult i8 %663, 100
  store i1 %677, i1* %CF, align 1, !mcsema_real_eip !188
  %678 = and i32 %668, %666, !mcsema_real_eip !188
  %679 = icmp slt i32 %678, 0
  store i1 %679, i1* %OF, align 1, !mcsema_real_eip !188
  br i1 %675, label %block_0x36f, label %block_0x38e, !mcsema_real_eip !189

block_0x36f:                                      ; preds = %block_0x343
  %680 = load i64, i64* %_allin_new_bt_349, align 8, !mcsema_real_eip !190
  store i64 %680, i64* %XAX, align 8, !mcsema_real_eip !190
  %681 = add i64 %680, 29, !mcsema_real_eip !191
  %682 = inttoptr i64 %681 to i8*, !mcsema_real_eip !191
  %683 = load i8, i8* %682, align 1, !mcsema_real_eip !191
  %684 = sext i8 %683 to i64
  %685 = and i64 %684, 4294967295
  store i64 %685, i64* %XCX, align 8, !mcsema_real_eip !191
  %686 = sext i8 %683 to i32
  %687 = add nsw i32 %686, -100
  %688 = xor i32 %687, %686, !mcsema_real_eip !192
  %689 = and i32 %688, 16, !mcsema_real_eip !192
  %690 = icmp ne i32 %689, 0, !mcsema_real_eip !192
  store i1 %690, i1* %AF, align 1, !mcsema_real_eip !192
  %691 = trunc i32 %687 to i8, !mcsema_real_eip !192
  %692 = call i8 @llvm.ctpop.i8(i8 %691), !mcsema_real_eip !192
  %693 = and i8 %692, 1
  %694 = icmp eq i8 %693, 0
  store i1 %694, i1* %PF, align 1, !mcsema_real_eip !192
  %695 = icmp eq i32 %687, 0, !mcsema_real_eip !192
  store i1 %695, i1* %ZF, align 1, !mcsema_real_eip !192
  %696 = icmp slt i8 %683, 100
  store i1 %696, i1* %SF, align 1, !mcsema_real_eip !192
  %697 = icmp ult i8 %683, 100
  store i1 %697, i1* %CF, align 1, !mcsema_real_eip !192
  %698 = and i32 %688, %686, !mcsema_real_eip !192
  %699 = icmp slt i32 %698, 0
  store i1 %699, i1* %OF, align 1, !mcsema_real_eip !192
  br i1 %695, label %block_0x380, label %block_0x38e, !mcsema_real_eip !193

block_0x38e:                                      ; preds = %block_0x36f, %block_0x343
  %700 = load i64, i64* %_allin_new_bt_349, align 8, !mcsema_real_eip !194
  store i64 %700, i64* %XAX, align 8, !mcsema_real_eip !194
  %701 = add i64 %700, 28, !mcsema_real_eip !195
  %702 = inttoptr i64 %701 to i8*, !mcsema_real_eip !195
  %703 = load i8, i8* %702, align 1, !mcsema_real_eip !195
  %704 = sext i8 %703 to i64
  %705 = and i64 %704, 4294967295
  store i64 %705, i64* %XCX, align 8, !mcsema_real_eip !195
  %706 = load i64, i64* %_allin_new_bt_349, align 8, !mcsema_real_eip !196
  store i64 %706, i64* %XAX, align 8, !mcsema_real_eip !196
  %707 = add i64 %706, 29, !mcsema_real_eip !197
  %708 = inttoptr i64 %707 to i8*, !mcsema_real_eip !197
  %709 = load i8, i8* %708, align 1, !mcsema_real_eip !197
  %710 = sext i8 %709 to i64
  %711 = and i64 %710, 4294967295
  store i64 %711, i64* %XDX, align 8, !mcsema_real_eip !197
  %712 = sext i8 %703 to i32
  %713 = sext i8 %709 to i32
  %714 = sub nsw i32 %712, %713, !mcsema_real_eip !198
  %715 = xor i32 %714, %712, !mcsema_real_eip !198
  %716 = xor i32 %715, %713, !mcsema_real_eip !198
  %717 = and i32 %716, 16, !mcsema_real_eip !198
  %718 = icmp ne i32 %717, 0, !mcsema_real_eip !198
  store i1 %718, i1* %AF, align 1, !mcsema_real_eip !198
  %719 = trunc i32 %714 to i8, !mcsema_real_eip !198
  %720 = call i8 @llvm.ctpop.i8(i8 %719), !mcsema_real_eip !198
  %721 = and i8 %720, 1
  %722 = icmp eq i8 %721, 0
  store i1 %722, i1* %PF, align 1, !mcsema_real_eip !198
  %723 = icmp eq i32 %714, 0, !mcsema_real_eip !198
  store i1 %723, i1* %ZF, align 1, !mcsema_real_eip !198
  %724 = icmp slt i32 %714, 0
  store i1 %724, i1* %SF, align 1, !mcsema_real_eip !198
  %725 = icmp ult i8 %703, %709
  store i1 %725, i1* %CF, align 1, !mcsema_real_eip !198
  %726 = xor i8 %709, %703
  %727 = sext i8 %726 to i32
  %728 = and i32 %715, %727, !mcsema_real_eip !198
  %729 = icmp slt i32 %728, 0
  store i1 %729, i1* %OF, align 1, !mcsema_real_eip !198
  br i1 %723, label %block_0x3a6, label %block_0x406, !mcsema_real_eip !199

block_0x3a6:                                      ; preds = %block_0x38e
  store i64 15, i64* %XAX, align 8, !mcsema_real_eip !200
  %730 = load i64, i64* %_allin_new_bt_349, align 8, !mcsema_real_eip !201
  store i64 %730, i64* %XCX, align 8, !mcsema_real_eip !201
  %731 = add i64 %730, 31, !mcsema_real_eip !202
  %732 = inttoptr i64 %731 to i8*, !mcsema_real_eip !202
  %733 = load i8, i8* %732, align 1, !mcsema_real_eip !202
  %734 = sext i8 %733 to i64
  %735 = and i64 %734, 4294967295
  store i64 %735, i64* %XDX, align 8, !mcsema_real_eip !202
  %736 = load i64, i64* %_allin_new_bt_349, align 8, !mcsema_real_eip !203
  store i64 %736, i64* %XCX, align 8, !mcsema_real_eip !203
  %737 = add i64 %736, 30, !mcsema_real_eip !204
  %738 = inttoptr i64 %737 to i8*, !mcsema_real_eip !204
  %739 = load i8, i8* %738, align 1, !mcsema_real_eip !204
  %740 = sext i8 %739 to i64
  %741 = and i64 %740, 4294967295
  store i64 %741, i64* %XSI, align 8, !mcsema_real_eip !204
  %742 = sext i8 %733 to i32
  %743 = sext i8 %739 to i32
  %744 = sub nsw i32 %742, %743, !mcsema_real_eip !205
  %745 = zext i32 %744 to i64, !mcsema_real_eip !205
  store i64 %745, i64* %XDX, align 8, !mcsema_real_eip !205
  %746 = sub nsw i32 15, %744, !mcsema_real_eip !206
  %747 = xor i32 %746, %744, !mcsema_real_eip !206
  %748 = and i32 %747, 16, !mcsema_real_eip !206
  %749 = icmp ne i32 %748, 0, !mcsema_real_eip !206
  store i1 %749, i1* %AF, align 1, !mcsema_real_eip !206
  %750 = trunc i32 %746 to i8, !mcsema_real_eip !206
  %751 = call i8 @llvm.ctpop.i8(i8 %750), !mcsema_real_eip !206
  %752 = and i8 %751, 1
  %753 = icmp eq i8 %752, 0
  store i1 %753, i1* %PF, align 1, !mcsema_real_eip !206
  %754 = icmp eq i32 %746, 0, !mcsema_real_eip !206
  store i1 %754, i1* %ZF, align 1, !mcsema_real_eip !206
  %755 = icmp slt i32 %746, 0
  store i1 %755, i1* %SF, align 1, !mcsema_real_eip !206
  %756 = icmp ugt i32 %744, 15, !mcsema_real_eip !206
  store i1 %756, i1* %CF, align 1, !mcsema_real_eip !206
  %757 = and i32 %746, %744, !mcsema_real_eip !206
  %758 = icmp slt i32 %757, 0
  store i1 %758, i1* %OF, align 1, !mcsema_real_eip !206
  %759 = zext i32 %746 to i64, !mcsema_real_eip !206
  store i64 %759, i64* %XAX, align 8, !mcsema_real_eip !206
  %_new_gep_366 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_34751, i64 -20
  %760 = bitcast i8* %_new_gep_366 to i32*
  %761 = load i32, i32* %760, align 4, !mcsema_real_eip !207
  %762 = add i32 %746, %761, !mcsema_real_eip !207
  %763 = xor i32 %762, %761, !mcsema_real_eip !207
  %764 = xor i32 %763, %746, !mcsema_real_eip !207
  %765 = and i32 %764, 16, !mcsema_real_eip !207
  %766 = icmp ne i32 %765, 0, !mcsema_real_eip !207
  store i1 %766, i1* %AF, align 1, !mcsema_real_eip !207
  %767 = icmp slt i32 %762, 0
  store i1 %767, i1* %SF, align 1, !mcsema_real_eip !207
  %768 = icmp eq i32 %762, 0, !mcsema_real_eip !207
  store i1 %768, i1* %ZF, align 1, !mcsema_real_eip !207
  %769 = xor i32 %761, -2147483648, !mcsema_real_eip !207
  %770 = xor i32 %769, %746, !mcsema_real_eip !207
  %771 = and i32 %763, %770, !mcsema_real_eip !207
  %772 = icmp slt i32 %771, 0
  store i1 %772, i1* %OF, align 1, !mcsema_real_eip !207
  %773 = trunc i32 %762 to i8, !mcsema_real_eip !207
  %774 = call i8 @llvm.ctpop.i8(i8 %773), !mcsema_real_eip !207
  %775 = and i8 %774, 1
  %776 = icmp eq i8 %775, 0
  store i1 %776, i1* %PF, align 1, !mcsema_real_eip !207
  %777 = icmp ult i32 %762, %761, !mcsema_real_eip !207
  store i1 %777, i1* %CF, align 1, !mcsema_real_eip !207
  %778 = zext i32 %762 to i64, !mcsema_real_eip !207
  store i64 %778, i64* %XAX, align 8, !mcsema_real_eip !207
  store i32 %762, i32* %760, align 4, !mcsema_real_eip !208
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37153 = load i8*, i8** %12, align 8
  %_new_gep_372 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37153, i64 -16
  %_allin_new_bt_373 = bitcast i8* %_new_gep_372 to i64*
  %779 = load i64, i64* %_allin_new_bt_373, align 8, !mcsema_real_eip !209
  store i64 %779, i64* %XCX, align 8, !mcsema_real_eip !209
  %780 = add i64 %779, 28, !mcsema_real_eip !210
  %781 = inttoptr i64 %780 to i8*, !mcsema_real_eip !210
  %782 = load i8, i8* %781, align 1, !mcsema_real_eip !210
  %783 = zext i8 %782 to i64
  store i64 %783, i64* %XDI, align 8, !mcsema_real_eip !210
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_374 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.366 = load i64, i64* %XSP, align 8, !mcsema_real_eip !211
  %_new_gep_375 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_374, i64 -8
  %784 = add i64 %RSP_val.366, -8
  %_allin_new_bt_376 = bitcast i8* %_new_gep_375 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_376, align 8, !mcsema_real_eip !211
  store volatile i8* %_new_gep_375, i8** %_RSP_ptr_, align 8
  store i64 %784, i64* %XSP, align 8, !mcsema_real_eip !211
  %785 = call x86_64_sysvcc i64 @_to_byte(i64 %783)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_434 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_435 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_434, i64 8
  store i8* %_gep_fix_435, i8** %_RSP_ptr_, align 8
  store i64 %785, i64* %XAX, align 8, !mcsema_real_eip !211
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37754 = load i8*, i8** %12, align 8
  %_new_gep_378 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_37754, i64 -20
  %786 = bitcast i8* %_new_gep_378 to i32*
  %787 = load i32, i32* %786, align 4, !mcsema_real_eip !212
  %788 = trunc i64 %785 to i32
  %789 = sub i32 %787, %788, !mcsema_real_eip !213
  %790 = xor i32 %789, %787, !mcsema_real_eip !213
  %791 = xor i32 %790, %788, !mcsema_real_eip !213
  %792 = and i32 %791, 16, !mcsema_real_eip !213
  %793 = icmp ne i32 %792, 0, !mcsema_real_eip !213
  store i1 %793, i1* %AF, align 1, !mcsema_real_eip !213
  %794 = trunc i32 %789 to i8, !mcsema_real_eip !213
  %795 = call i8 @llvm.ctpop.i8(i8 %794), !mcsema_real_eip !213
  %796 = and i8 %795, 1
  %797 = icmp eq i8 %796, 0
  store i1 %797, i1* %PF, align 1, !mcsema_real_eip !213
  %798 = icmp eq i32 %789, 0, !mcsema_real_eip !213
  store i1 %798, i1* %ZF, align 1, !mcsema_real_eip !213
  %799 = icmp slt i32 %789, 0
  store i1 %799, i1* %SF, align 1, !mcsema_real_eip !213
  %800 = icmp ult i32 %787, %788, !mcsema_real_eip !213
  store i1 %800, i1* %CF, align 1, !mcsema_real_eip !213
  %801 = xor i32 %788, %787, !mcsema_real_eip !213
  %802 = and i32 %790, %801, !mcsema_real_eip !213
  %803 = icmp slt i32 %802, 0
  store i1 %803, i1* %OF, align 1, !mcsema_real_eip !213
  %804 = zext i32 %789 to i64, !mcsema_real_eip !213
  store i64 %804, i64* %XDX, align 8, !mcsema_real_eip !213
  store i32 %789, i32* %786, align 4, !mcsema_real_eip !214
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_38355 = load i8*, i8** %12, align 8
  %_new_gep_384 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_38355, i64 -20
  %805 = bitcast i8* %_new_gep_384 to i32*
  %806 = load i32, i32* %805, align 4, !mcsema_real_eip !215
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !215
  %807 = trunc i32 %806 to i8, !mcsema_real_eip !215
  %808 = call i8 @llvm.ctpop.i8(i8 %807), !mcsema_real_eip !215
  %809 = and i8 %808, 1
  %810 = icmp eq i8 %809, 0
  store i1 %810, i1* %PF, align 1, !mcsema_real_eip !215
  %811 = icmp eq i32 %806, 0, !mcsema_real_eip !215
  store i1 %811, i1* %ZF, align 1, !mcsema_real_eip !215
  %812 = icmp slt i32 %806, 0
  store i1 %812, i1* %SF, align 1, !mcsema_real_eip !215
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !215
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !215
  br i1 %811, label %block_0x3e4, label %block_0x411, !mcsema_real_eip !216

block_0x406:                                      ; preds = %block_0x38e
  %_new_gep_387 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_34751, i64 -64
  %813 = bitcast i8* %_new_gep_387 to i32*
  %814 = load i32, i32* %813, align 4, !mcsema_real_eip !217
  %815 = zext i32 %814 to i64, !mcsema_real_eip !217
  store i64 %815, i64* %XAX, align 8, !mcsema_real_eip !217
  %_new_gep_390 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_34751, i64 -20
  %816 = bitcast i8* %_new_gep_390 to i32*
  store i32 %814, i32* %816, align 4, !mcsema_real_eip !218
  br label %block_0x411, !mcsema_real_eip !200

block_0x380:                                      ; preds = %block_0x36f
  %_new_gep_393 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_34751, i64 -64
  %817 = bitcast i8* %_new_gep_393 to i32*
  %818 = load i32, i32* %817, align 4, !mcsema_real_eip !219
  %819 = zext i32 %818 to i64, !mcsema_real_eip !219
  store i64 %819, i64* %XAX, align 8, !mcsema_real_eip !219
  %_new_gep_396 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_34751, i64 -20
  %820 = bitcast i8* %_new_gep_396 to i32*
  %821 = load i32, i32* %820, align 4, !mcsema_real_eip !220
  %822 = xor i32 %818, %821, !mcsema_real_eip !220
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !220
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !220
  %823 = icmp slt i32 %822, 0
  store i1 %823, i1* %SF, align 1, !mcsema_real_eip !220
  %824 = icmp eq i32 %822, 0, !mcsema_real_eip !220
  store i1 %824, i1* %ZF, align 1, !mcsema_real_eip !220
  %825 = trunc i32 %822 to i8, !mcsema_real_eip !220
  %826 = call i8 @llvm.ctpop.i8(i8 %825), !mcsema_real_eip !220
  %827 = and i8 %826, 1
  %828 = icmp eq i8 %827, 0
  store i1 %828, i1* %PF, align 1, !mcsema_real_eip !220
  %829 = zext i32 %822 to i64, !mcsema_real_eip !220
  store i64 %829, i64* %XAX, align 8, !mcsema_real_eip !220
  store i32 %822, i32* %820, align 4, !mcsema_real_eip !221
  br label %block_0x411, !mcsema_real_eip !222

block_0x3e4:                                      ; preds = %block_0x3a6
  %_new_gep_402 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_38355, i64 -16
  %_allin_new_bt_403 = bitcast i8* %_new_gep_402 to i64*
  %830 = load i64, i64* %_allin_new_bt_403, align 8, !mcsema_real_eip !223
  store i64 %830, i64* %XAX, align 8, !mcsema_real_eip !223
  %831 = add i64 %830, 31, !mcsema_real_eip !224
  %832 = inttoptr i64 %831 to i8*, !mcsema_real_eip !224
  %833 = load i8, i8* %832, align 1, !mcsema_real_eip !224
  %834 = zext i8 %833 to i64
  store i64 %834, i64* %XDI, align 8, !mcsema_real_eip !224
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_404 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.386 = load i64, i64* %XSP, align 8, !mcsema_real_eip !225
  %_new_gep_405 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_404, i64 -8
  %835 = add i64 %RSP_val.386, -8
  %_allin_new_bt_406 = bitcast i8* %_new_gep_405 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_406, align 8, !mcsema_real_eip !225
  store volatile i8* %_new_gep_405, i8** %_RSP_ptr_, align 8
  store i64 %835, i64* %XSP, align 8, !mcsema_real_eip !225
  %836 = call x86_64_sysvcc i64 @_to_byte(i64 %834)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_436 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_437 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_436, i64 8
  store i8* %_gep_fix_437, i8** %_RSP_ptr_, align 8
  store i64 %836, i64* %XAX, align 8, !mcsema_real_eip !225
  %837 = trunc i64 %836 to i32
  %838 = add i32 %837, -4
  %839 = xor i32 %838, %837, !mcsema_real_eip !226
  %840 = and i32 %839, 16, !mcsema_real_eip !226
  %841 = icmp ne i32 %840, 0, !mcsema_real_eip !226
  store i1 %841, i1* %AF, align 1, !mcsema_real_eip !226
  %842 = trunc i32 %838 to i8, !mcsema_real_eip !226
  %843 = call i8 @llvm.ctpop.i8(i8 %842), !mcsema_real_eip !226
  %844 = and i8 %843, 1
  %845 = icmp eq i8 %844, 0
  store i1 %845, i1* %PF, align 1, !mcsema_real_eip !226
  %846 = icmp eq i32 %838, 0, !mcsema_real_eip !226
  store i1 %846, i1* %ZF, align 1, !mcsema_real_eip !226
  %847 = icmp slt i32 %838, 0
  store i1 %847, i1* %SF, align 1, !mcsema_real_eip !226
  %848 = icmp ult i32 %837, 4, !mcsema_real_eip !226
  store i1 %848, i1* %CF, align 1, !mcsema_real_eip !226
  %849 = and i32 %839, %837, !mcsema_real_eip !226
  %850 = icmp slt i32 %849, 0
  store i1 %850, i1* %OF, align 1, !mcsema_real_eip !226
  br i1 %846, label %block_0x411, label %block_0x3fa, !mcsema_real_eip !227

block_0x411:                                      ; preds = %block_0x3a6, %block_0x3e4, %block_0x3fa, %block_0x406, %block_0x380
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_40752 = load i8*, i8** %12, align 8
  %_new_gep_408 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_40752, i64 -20
  %851 = bitcast i8* %_new_gep_408 to i32*
  %852 = load i32, i32* %851, align 4, !mcsema_real_eip !228
  %853 = zext i32 %852 to i64, !mcsema_real_eip !228
  store i64 %853, i64* %XAX, align 8, !mcsema_real_eip !228
  br label %block_0x417, !mcsema_real_eip !229

block_0x3fa:                                      ; preds = %block_0x3e4
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_41356 = load i8*, i8** %12, align 8
  %_new_gep_414 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_41356, i64 -20
  %854 = bitcast i8* %_new_gep_414 to i32*
  store i32 -32, i32* %854, align 4, !mcsema_real_eip !229
  br label %block_0x411
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
  %_cond1_502 = icmp ugt i8* %46, %_local_stack_end_ptr_
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
  %_cond1_530 = icmp ugt i8* %64, %_local_stack_end_ptr_
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
  %RSP_val.30 = load i64, i64* %XSP, align 8, !mcsema_real_eip !22
  %_new_gep_50 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_49, i64 -8
  %67 = add i64 %RSP_val.30, -8
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
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_80 = load i8*, i8** %_RBP_ptr_, align 8
  br i1 %78, label %block_0x79, label %block_0x417, !mcsema_real_eip !24

block_0x417:                                      ; preds = %block_0x2d2, %block_0x293, %block_0x1c2, %block_0xd7, %block_0xeb, %block_0xa4, %block_0x79, %block_0x57, %block_0x2f, %block_0x411, %block_0x338, %block_0x24
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_407.sink = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_407, %block_0x411 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_326, %block_0x338 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_25, %block_0x24 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_40, %block_0x2f ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_80, %block_0x57 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_89, %block_0x79 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104, %block_0xa4 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104, %block_0xeb ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104, %block_0xd7 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_191, %block_0x1c2 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_275, %block_0x293 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_290, %block_0x2d2 ]
  %EAX_val.392.sink = phi i32 [ %_new_load_1683, %block_0x411 ], [ %_new_load_1324, %block_0x338 ], [ %_new_load_467, %block_0x24 ], [ -2, %block_0x2f ], [ -3, %block_0x57 ], [ -4, %block_0x79 ], [ -5, %block_0xa4 ], [ -6, %block_0xeb ], [ -6, %block_0xd7 ], [ -7, %block_0x1c2 ], [ -21, %block_0x293 ], [ -22, %block_0x2d2 ]
  %_new_gep_411 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_407.sink, i64 -4
  %83 = bitcast i8* %_new_gep_411 to i32*
  store i32 %EAX_val.392.sink, i32* %83, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52, i64 -4
  %84 = ptrtoint i8* %_new_gep_53 to i64
  %_offset_above_rbp_542 = sub i64 %84, %_local_end_to_int_
  %_pot_address_in_parent_stack_543 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_542
  %_cond1_544 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_545 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_546 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_547 = or i1 %_cond2_1_545, %_cond2_2_546
  %_cond4_548 = icmp ule i8* %_pot_address_in_parent_stack_543, %_parent_stack_end_ptr_
  %_cond1_n_cond2_549 = and i1 %_cond1_544, %_cond2_547
  %_cond1_n_cond2_cond3_550 = and i1 %_cond1_n_cond2_549, %_cond4_548
  %_address_in_parent_stack_bt_552..v = select i1 %_cond1_n_cond2_cond3_550, i8* %_pot_address_in_parent_stack_543, i8* %_new_gep_53
  %_address_in_parent_stack_bt_552. = bitcast i8* %_address_in_parent_stack_bt_552..v to i32*
  %_new_load_553 = load i32, i32* %_address_in_parent_stack_bt_552., align 4
  %85 = zext i32 %_new_load_553 to i64, !mcsema_real_eip !25
  store i64 %85, i64* %XAX, align 8, !mcsema_real_eip !25
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.35 = load i64, i64* %XSP, align 8, !mcsema_real_eip !26
  %_new_gep_56 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 80
  %86 = add i64 %RSP_val.35, 80, !mcsema_real_eip !26
  %_trans_p2i_57 = ptrtoint i8* %_new_gep_56 to i64
  %_trans_p2i_58 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55 to i64
  %_trans_xor_59 = xor i64 %_trans_p2i_57, %_trans_p2i_58
  %87 = and i64 %_trans_xor_59, 16
  %88 = icmp eq i64 %87, 0
  store i1 %88, i1* %AF, align 1, !mcsema_real_eip !26
  %89 = icmp slt i64 %86, 0
  store i1 %89, i1* %SF, align 1, !mcsema_real_eip !26
  %_trans_icmp_eq_61 = icmp eq i8* %_new_gep_56, null
  store i1 %_trans_icmp_eq_61, i1* %ZF, align 1, !mcsema_real_eip !26
  %90 = xor i64 %_trans_p2i_58, -9223372036854775808, !mcsema_real_eip !26
  %91 = and i64 %_trans_xor_59, %90, !mcsema_real_eip !26
  %92 = icmp slt i64 %91, 0
  store i1 %92, i1* %OF, align 1, !mcsema_real_eip !26
  %_trans_trunc_68 = trunc i64 %_trans_p2i_57 to i8
  %93 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_68), !mcsema_real_eip !26
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  store i1 %95, i1* %PF, align 1, !mcsema_real_eip !26
  %_trans_icmp_ne_70 = icmp ne i64 %_trans_p2i_57, %RSP_val.35
  store i1 %_trans_icmp_ne_70, i1* %CF, align 1, !mcsema_real_eip !26
  store volatile i8* %_new_gep_56, i8** %_RSP_ptr_, align 8
  store i64 %86, i64* %XSP, align 8, !mcsema_real_eip !26
  %_offset_above_rbp_557 = sub i64 %_trans_p2i_57, %_local_end_to_int_
  %_pot_address_in_parent_stack_558 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_557
  %_cond1_559 = icmp ugt i8* %_new_gep_56, %_local_stack_end_ptr_
  %_cond2_1_560 = icmp ugt i8* %_new_gep_56, %_parent_stack_end_ptr_
  %_cond2_2_561 = icmp ult i8* %_new_gep_56, %_parent_stack_start_ptr_
  %_cond2_562 = or i1 %_cond2_1_560, %_cond2_2_561
  %_cond4_563 = icmp ule i8* %_pot_address_in_parent_stack_558, %_parent_stack_end_ptr_
  %_cond1_n_cond2_564 = and i1 %_cond1_559, %_cond2_562
  %_cond1_n_cond2_cond3_565 = and i1 %_cond1_n_cond2_564, %_cond4_563
  %.v10 = select i1 %_cond1_n_cond2_cond3_565, i8* %_pot_address_in_parent_stack_558, i8* %_new_gep_56
  %96 = bitcast i8* %.v10 to i64*
  %_new_load_568 = load i64, i64* %96, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_568 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_568, i64* %XBP, align 8, !mcsema_real_eip !27
  %_new_gep_73 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 88
  %97 = add i64 %RSP_val.35, 88, !mcsema_real_eip !27
  store volatile i8* %_new_gep_73, i8** %_RSP_ptr_, align 8
  store i64 %97, i64* %XSP, align 8, !mcsema_real_eip !27
  %_new_gep_75 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_55, i64 96
  %98 = add i64 %RSP_val.35, 96, !mcsema_real_eip !28
  %_ptr_to_int_569 = ptrtoint i8* %_new_gep_73 to i64
  %_offset_above_rbp_572 = sub i64 %_ptr_to_int_569, %_local_end_to_int_
  %_pot_address_in_parent_stack_573 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_572
  %_cond1_574 = icmp ugt i8* %_new_gep_73, %_local_stack_end_ptr_
  %_cond2_1_575 = icmp ugt i8* %_new_gep_73, %_parent_stack_end_ptr_
  %_cond2_2_576 = icmp ult i8* %_new_gep_73, %_parent_stack_start_ptr_
  %_cond2_577 = or i1 %_cond2_1_575, %_cond2_2_576
  %_cond4_578 = icmp ule i8* %_pot_address_in_parent_stack_573, %_parent_stack_end_ptr_
  %_cond1_n_cond2_579 = and i1 %_cond1_574, %_cond2_577
  %_cond1_n_cond2_cond3_580 = and i1 %_cond1_n_cond2_579, %_cond4_578
  %_address_in_parent_stack_bt_582._allin_new_bt_76.v = select i1 %_cond1_n_cond2_cond3_580, i8* %_pot_address_in_parent_stack_573, i8* %_new_gep_73
  %_address_in_parent_stack_bt_582._allin_new_bt_76 = bitcast i8* %_address_in_parent_stack_bt_582._allin_new_bt_76.v to i64*
  %_new_load_583 = load i64, i64* %_address_in_parent_stack_bt_582._allin_new_bt_76, align 8
  store i64 %_new_load_583, i64* %XIP, align 8, !mcsema_real_eip !28
  store volatile i8* %_new_gep_75, i8** %_RSP_ptr_, align 8
  store i64 %98, i64* %XSP, align 8, !mcsema_real_eip !28
  ret void, !mcsema_real_eip !28

block_0x79:                                       ; preds = %block_0x57
  %_new_gep_81 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_80, i64 -16
  %_ptr_to_int_584 = ptrtoint i8* %_new_gep_81 to i64
  %_offset_above_rbp_587 = sub i64 %_ptr_to_int_584, %_local_end_to_int_
  %_pot_address_in_parent_stack_588 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_587
  %_cond1_589 = icmp ugt i8* %_new_gep_81, %_local_stack_end_ptr_
  %_cond2_1_590 = icmp ugt i8* %_new_gep_81, %_parent_stack_end_ptr_
  %_cond2_2_591 = icmp ult i8* %_new_gep_81, %_parent_stack_start_ptr_
  %_cond2_592 = or i1 %_cond2_1_590, %_cond2_2_591
  %_cond4_593 = icmp ule i8* %_pot_address_in_parent_stack_588, %_parent_stack_end_ptr_
  %_cond1_n_cond2_594 = and i1 %_cond1_589, %_cond2_592
  %_cond1_n_cond2_cond3_595 = and i1 %_cond1_n_cond2_594, %_cond4_593
  %_address_in_parent_stack_bt_597._allin_new_bt_82.v = select i1 %_cond1_n_cond2_cond3_595, i8* %_pot_address_in_parent_stack_588, i8* %_new_gep_81
  %_address_in_parent_stack_bt_597._allin_new_bt_82 = bitcast i8* %_address_in_parent_stack_bt_597._allin_new_bt_82.v to i64*
  %_new_load_598 = load i64, i64* %_address_in_parent_stack_bt_597._allin_new_bt_82, align 8
  store i64 %_new_load_598, i64* %XAX, align 8, !mcsema_real_eip !29
  %99 = add i64 %_new_load_598, 2, !mcsema_real_eip !30
  %100 = inttoptr i64 %99 to i8*, !mcsema_real_eip !30
  %_offset_above_rbp_601 = sub i64 %99, %_local_end_to_int_
  %_pot_address_in_parent_stack_602 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_601
  %_cond1_603 = icmp ugt i8* %100, %_local_stack_end_ptr_
  %_cond2_1_604 = icmp ugt i8* %100, %_parent_stack_end_ptr_
  %_cond2_2_605 = icmp ult i8* %100, %_parent_stack_start_ptr_
  %_cond2_606 = or i1 %_cond2_1_604, %_cond2_2_605
  %_cond4_607 = icmp ule i8* %_pot_address_in_parent_stack_602, %_parent_stack_end_ptr_
  %_cond1_n_cond2_608 = and i1 %_cond1_603, %_cond2_606
  %_cond1_n_cond2_cond3_609 = and i1 %_cond4_607, %_cond1_n_cond2_608
  %101 = select i1 %_cond1_n_cond2_cond3_609, i8* %_pot_address_in_parent_stack_602, i8* %100
  %_new_load_611 = load i8, i8* %101, align 1
  %102 = zext i8 %_new_load_611 to i64
  store i64 %102, i64* %XDI, align 8, !mcsema_real_eip !30
  %RSP_val.41 = load i64, i64* %XSP, align 8, !mcsema_real_eip !31
  %103 = add i64 %RSP_val.41, -8
  %_allin_new_bt_85 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_85, align 8, !mcsema_real_eip !31
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_416, i8** %_RSP_ptr_, align 8
  store i64 %103, i64* %XSP, align 8, !mcsema_real_eip !31
  %104 = call x86_64_sysvcc i64 @_to_byte(i64 %102)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_418 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_419 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_418, i64 8
  store i8* %_gep_fix_419, i8** %_RSP_ptr_, align 8
  store i64 %104, i64* %XAX, align 8, !mcsema_real_eip !31
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_86, i64 -24
  %105 = trunc i64 %104 to i32
  %106 = bitcast i8* %_new_gep_87 to i32*
  store i32 %105, i32* %106, align 4, !mcsema_real_eip !32
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_89 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_89, i64 -24
  %107 = ptrtoint i8* %_new_gep_90 to i64
  %_offset_above_rbp_615 = sub i64 %107, %_local_end_to_int_
  %_pot_address_in_parent_stack_616 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_615
  %_cond1_617 = icmp ugt i8* %_new_gep_90, %_local_stack_end_ptr_
  %_cond2_1_618 = icmp ugt i8* %_new_gep_90, %_parent_stack_end_ptr_
  %_cond2_2_619 = icmp ult i8* %_new_gep_90, %_parent_stack_start_ptr_
  %_cond2_620 = or i1 %_cond2_1_618, %_cond2_2_619
  %_cond4_621 = icmp ule i8* %_pot_address_in_parent_stack_616, %_parent_stack_end_ptr_
  %_cond1_n_cond2_622 = and i1 %_cond1_617, %_cond2_620
  %_cond1_n_cond2_cond3_623 = and i1 %_cond1_n_cond2_622, %_cond4_621
  %_address_in_parent_stack_bt_625..v = select i1 %_cond1_n_cond2_cond3_623, i8* %_pot_address_in_parent_stack_616, i8* %_new_gep_90
  %_address_in_parent_stack_bt_625. = bitcast i8* %_address_in_parent_stack_bt_625..v to i32*
  %_new_load_626 = load i32, i32* %_address_in_parent_stack_bt_625., align 4
  %108 = shl i32 %_new_load_626, 1, !mcsema_real_eip !34
  %109 = zext i32 %108 to i64, !mcsema_real_eip !34
  store i64 %109, i64* %XAX, align 8, !mcsema_real_eip !34
  %110 = add i32 %108, -26
  %111 = xor i32 %110, %108, !mcsema_real_eip !35
  %112 = and i32 %111, 16
  %113 = icmp eq i32 %112, 0
  store i1 %113, i1* %AF, align 1, !mcsema_real_eip !35
  %114 = trunc i32 %110 to i8, !mcsema_real_eip !35
  %115 = call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !35
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !35
  %118 = icmp eq i32 %110, 0, !mcsema_real_eip !35
  store i1 %118, i1* %ZF, align 1, !mcsema_real_eip !35
  %119 = icmp slt i32 %110, 0
  store i1 %119, i1* %SF, align 1, !mcsema_real_eip !35
  %120 = icmp ult i32 %108, 26, !mcsema_real_eip !35
  store i1 %120, i1* %CF, align 1, !mcsema_real_eip !35
  %121 = and i32 %111, %108, !mcsema_real_eip !35
  %122 = icmp slt i32 %121, 0
  store i1 %122, i1* %OF, align 1, !mcsema_real_eip !35
  br i1 %118, label %block_0xa4, label %block_0x417, !mcsema_real_eip !36

block_0xa4:                                       ; preds = %block_0x79
  %_new_gep_96 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_89, i64 -16
  %_ptr_to_int_627 = ptrtoint i8* %_new_gep_96 to i64
  %_offset_above_rbp_630 = sub i64 %_ptr_to_int_627, %_local_end_to_int_
  %_pot_address_in_parent_stack_631 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_630
  %_cond1_632 = icmp ugt i8* %_new_gep_96, %_local_stack_end_ptr_
  %_cond2_1_633 = icmp ugt i8* %_new_gep_96, %_parent_stack_end_ptr_
  %_cond2_2_634 = icmp ult i8* %_new_gep_96, %_parent_stack_start_ptr_
  %_cond2_635 = or i1 %_cond2_1_633, %_cond2_2_634
  %_cond4_636 = icmp ule i8* %_pot_address_in_parent_stack_631, %_parent_stack_end_ptr_
  %_cond1_n_cond2_637 = and i1 %_cond1_632, %_cond2_635
  %_cond1_n_cond2_cond3_638 = and i1 %_cond1_n_cond2_637, %_cond4_636
  %_address_in_parent_stack_bt_640._allin_new_bt_97.v = select i1 %_cond1_n_cond2_cond3_638, i8* %_pot_address_in_parent_stack_631, i8* %_new_gep_96
  %_address_in_parent_stack_bt_640._allin_new_bt_97 = bitcast i8* %_address_in_parent_stack_bt_640._allin_new_bt_97.v to i64*
  %_new_load_641 = load i64, i64* %_address_in_parent_stack_bt_640._allin_new_bt_97, align 8
  store i64 %_new_load_641, i64* %XAX, align 8, !mcsema_real_eip !37
  %123 = add i64 %_new_load_641, 3, !mcsema_real_eip !38
  %124 = inttoptr i64 %123 to i8*, !mcsema_real_eip !38
  %_offset_above_rbp_644 = sub i64 %123, %_local_end_to_int_
  %_pot_address_in_parent_stack_645 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_644
  %_cond1_646 = icmp ugt i8* %124, %_local_stack_end_ptr_
  %_cond2_1_647 = icmp ugt i8* %124, %_parent_stack_end_ptr_
  %_cond2_2_648 = icmp ult i8* %124, %_parent_stack_start_ptr_
  %_cond2_649 = or i1 %_cond2_1_647, %_cond2_2_648
  %_cond4_650 = icmp ule i8* %_pot_address_in_parent_stack_645, %_parent_stack_end_ptr_
  %_cond1_n_cond2_651 = and i1 %_cond1_646, %_cond2_649
  %_cond1_n_cond2_cond3_652 = and i1 %_cond4_650, %_cond1_n_cond2_651
  %125 = select i1 %_cond1_n_cond2_cond3_652, i8* %_pot_address_in_parent_stack_645, i8* %124
  %_new_load_654 = load i8, i8* %125, align 1
  %126 = zext i8 %_new_load_654 to i64
  store i64 %126, i64* %XDI, align 8, !mcsema_real_eip !38
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_98 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.54 = load i64, i64* %XSP, align 8, !mcsema_real_eip !39
  %_new_gep_99 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_98, i64 -8
  %127 = add i64 %RSP_val.54, -8
  %_allin_new_bt_100 = bitcast i8* %_new_gep_99 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_100, align 8, !mcsema_real_eip !39
  store volatile i8* %_new_gep_99, i8** %_RSP_ptr_, align 8
  store i64 %127, i64* %XSP, align 8, !mcsema_real_eip !39
  %128 = call x86_64_sysvcc i64 @_to_byte(i64 %126)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_420 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_421 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_420, i64 8
  store i8* %_gep_fix_421, i8** %_RSP_ptr_, align 8
  store i64 %128, i64* %XAX, align 8, !mcsema_real_eip !39
  store i64 2, i64* %XDI, align 8, !mcsema_real_eip !40
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_101 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_102 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_101, i64 -28
  %129 = trunc i64 %128 to i32
  %130 = bitcast i8* %_new_gep_102 to i32*
  store i32 %129, i32* %130, align 4, !mcsema_real_eip !41
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_105 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104, i64 -28
  %131 = ptrtoint i8* %_new_gep_105 to i64
  %_offset_above_rbp_658 = sub i64 %131, %_local_end_to_int_
  %_pot_address_in_parent_stack_659 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_658
  %_cond1_660 = icmp ugt i8* %_new_gep_105, %_local_stack_end_ptr_
  %_cond2_1_661 = icmp ugt i8* %_new_gep_105, %_parent_stack_end_ptr_
  %_cond2_2_662 = icmp ult i8* %_new_gep_105, %_parent_stack_start_ptr_
  %_cond2_663 = or i1 %_cond2_1_661, %_cond2_2_662
  %_cond4_664 = icmp ule i8* %_pot_address_in_parent_stack_659, %_parent_stack_end_ptr_
  %_cond1_n_cond2_665 = and i1 %_cond1_660, %_cond2_663
  %_cond1_n_cond2_cond3_666 = and i1 %_cond1_n_cond2_665, %_cond4_664
  %_address_in_parent_stack_bt_668..v = select i1 %_cond1_n_cond2_cond3_666, i8* %_pot_address_in_parent_stack_659, i8* %_new_gep_105
  %_address_in_parent_stack_bt_668. = bitcast i8* %_address_in_parent_stack_bt_668..v to i32*
  %_new_load_669 = load i32, i32* %_address_in_parent_stack_bt_668., align 4
  %132 = add i32 %_new_load_669, 1, !mcsema_real_eip !43
  %EAX_val.62.lobit = ashr i32 %132, 31
  %133 = zext i32 %EAX_val.62.lobit to i64
  %EDI.63 = bitcast i64* %XDI to i32*, !mcsema_real_eip !44
  %EDI_val.64 = load i32, i32* %EDI.63, align 4, !mcsema_real_eip !44
  %134 = shl nuw i64 %133, 32, !mcsema_real_eip !44
  %135 = sext i32 %132 to i64, !mcsema_real_eip !44
  %136 = or i64 %134, %135, !mcsema_real_eip !44
  %137 = sext i32 %EDI_val.64 to i64, !mcsema_real_eip !44
  %138 = sdiv i64 %136, %137, !mcsema_real_eip !44
  %139 = srem i64 %136, %137, !mcsema_real_eip !44
  %140 = and i64 %139, 4294967295
  store i64 %140, i64* %XDX, align 8, !mcsema_real_eip !44
  %141 = and i64 %138, 4294967295
  store i64 %141, i64* %XAX, align 8, !mcsema_real_eip !44
  %142 = trunc i64 %138 to i32
  %143 = add i32 %142, -7
  %144 = xor i32 %143, %142, !mcsema_real_eip !45
  %145 = and i32 %144, 16, !mcsema_real_eip !45
  %146 = icmp ne i32 %145, 0, !mcsema_real_eip !45
  store i1 %146, i1* %AF, align 1, !mcsema_real_eip !45
  %147 = trunc i32 %143 to i8, !mcsema_real_eip !45
  %148 = call i8 @llvm.ctpop.i8(i8 %147), !mcsema_real_eip !45
  %149 = and i8 %148, 1
  %150 = icmp eq i8 %149, 0
  store i1 %150, i1* %PF, align 1, !mcsema_real_eip !45
  %151 = icmp eq i32 %143, 0, !mcsema_real_eip !45
  store i1 %151, i1* %ZF, align 1, !mcsema_real_eip !45
  %152 = icmp slt i32 %143, 0
  store i1 %152, i1* %SF, align 1, !mcsema_real_eip !45
  %153 = icmp ult i32 %142, 7, !mcsema_real_eip !45
  store i1 %153, i1* %CF, align 1, !mcsema_real_eip !45
  %154 = and i32 %144, %142, !mcsema_real_eip !45
  %155 = icmp slt i32 %154, 0
  store i1 %155, i1* %OF, align 1, !mcsema_real_eip !45
  br i1 %151, label %block_0xd7, label %block_0x417, !mcsema_real_eip !46

block_0xd7:                                       ; preds = %block_0xa4
  %_new_gep_111 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104, i64 -16
  %_ptr_to_int_670 = ptrtoint i8* %_new_gep_111 to i64
  %_offset_above_rbp_673 = sub i64 %_ptr_to_int_670, %_local_end_to_int_
  %_pot_address_in_parent_stack_674 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_673
  %_cond1_675 = icmp ugt i8* %_new_gep_111, %_local_stack_end_ptr_
  %_cond2_1_676 = icmp ugt i8* %_new_gep_111, %_parent_stack_end_ptr_
  %_cond2_2_677 = icmp ult i8* %_new_gep_111, %_parent_stack_start_ptr_
  %_cond2_678 = or i1 %_cond2_1_676, %_cond2_2_677
  %_cond4_679 = icmp ule i8* %_pot_address_in_parent_stack_674, %_parent_stack_end_ptr_
  %_cond1_n_cond2_680 = and i1 %_cond1_675, %_cond2_678
  %_cond1_n_cond2_cond3_681 = and i1 %_cond1_n_cond2_680, %_cond4_679
  %_address_in_parent_stack_bt_683._allin_new_bt_112.v = select i1 %_cond1_n_cond2_cond3_681, i8* %_pot_address_in_parent_stack_674, i8* %_new_gep_111
  %_address_in_parent_stack_bt_683._allin_new_bt_112 = bitcast i8* %_address_in_parent_stack_bt_683._allin_new_bt_112.v to i64*
  %_new_load_684 = load i64, i64* %_address_in_parent_stack_bt_683._allin_new_bt_112, align 8
  store i64 %_new_load_684, i64* %XAX, align 8, !mcsema_real_eip !47
  %156 = add i64 %_new_load_684, 4, !mcsema_real_eip !48
  %157 = inttoptr i64 %156 to i8*, !mcsema_real_eip !48
  %_offset_above_rbp_687 = sub i64 %156, %_local_end_to_int_
  %_pot_address_in_parent_stack_688 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_687
  %_cond1_689 = icmp ugt i8* %157, %_local_stack_end_ptr_
  %_cond2_1_690 = icmp ugt i8* %157, %_parent_stack_end_ptr_
  %_cond2_2_691 = icmp ult i8* %157, %_parent_stack_start_ptr_
  %_cond2_692 = or i1 %_cond2_1_690, %_cond2_2_691
  %_cond4_693 = icmp ule i8* %_pot_address_in_parent_stack_688, %_parent_stack_end_ptr_
  %_cond1_n_cond2_694 = and i1 %_cond1_689, %_cond2_692
  %_cond1_n_cond2_cond3_695 = and i1 %_cond4_693, %_cond1_n_cond2_694
  %158 = select i1 %_cond1_n_cond2_cond3_695, i8* %_pot_address_in_parent_stack_688, i8* %157
  %_new_load_697 = load i8, i8* %158, align 1
  %159 = and i8 %_new_load_697, 15
  %160 = zext i8 %159 to i32
  %161 = icmp eq i8 %159, 0
  %162 = zext i8 %159 to i64
  store i64 %162, i64* %XCX, align 8, !mcsema_real_eip !49
  %163 = add nsw i32 %160, -1
  %164 = and i32 %163, 16, !mcsema_real_eip !50
  %165 = icmp ne i32 %164, 0, !mcsema_real_eip !50
  store i1 %165, i1* %AF, align 1, !mcsema_real_eip !50
  %166 = trunc i32 %163 to i8, !mcsema_real_eip !50
  %167 = call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !50
  %168 = and i8 %167, 1
  %169 = icmp eq i8 %168, 0
  store i1 %169, i1* %PF, align 1, !mcsema_real_eip !50
  %170 = icmp eq i32 %163, 0, !mcsema_real_eip !50
  store i1 %170, i1* %ZF, align 1, !mcsema_real_eip !50
  %171 = icmp eq i8 %159, 0
  store i1 %171, i1* %SF, align 1, !mcsema_real_eip !50
  store i1 %161, i1* %CF, align 1, !mcsema_real_eip !50
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !50
  br i1 %170, label %block_0xeb, label %block_0x417, !mcsema_real_eip !51

block_0xeb:                                       ; preds = %block_0xd7
  %_new_load_712 = load i64, i64* %_address_in_parent_stack_bt_683._allin_new_bt_112, align 8
  store i64 %_new_load_712, i64* %XAX, align 8, !mcsema_real_eip !52
  %172 = add i64 %_new_load_712, 4, !mcsema_real_eip !53
  %173 = inttoptr i64 %172 to i8*, !mcsema_real_eip !53
  %_offset_above_rbp_715 = sub i64 %172, %_local_end_to_int_
  %_pot_address_in_parent_stack_716 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_715
  %_cond1_717 = icmp ugt i8* %173, %_local_stack_end_ptr_
  %_cond2_1_718 = icmp ugt i8* %173, %_parent_stack_end_ptr_
  %_cond2_2_719 = icmp ult i8* %173, %_parent_stack_start_ptr_
  %_cond2_720 = or i1 %_cond2_1_718, %_cond2_2_719
  %_cond4_721 = icmp ule i8* %_pot_address_in_parent_stack_716, %_parent_stack_end_ptr_
  %_cond1_n_cond2_722 = and i1 %_cond1_717, %_cond2_720
  %_cond1_n_cond2_cond3_723 = and i1 %_cond4_721, %_cond1_n_cond2_722
  %174 = select i1 %_cond1_n_cond2_cond3_723, i8* %_pot_address_in_parent_stack_716, i8* %173
  %_new_load_725 = load i8, i8* %174, align 1
  %175 = and i8 %_new_load_725, -16
  %176 = zext i8 %175 to i32
  %177 = zext i8 %175 to i64
  store i64 %177, i64* %XCX, align 8, !mcsema_real_eip !54
  %178 = add nsw i32 %176, -48
  %179 = xor i32 %178, %176, !mcsema_real_eip !55
  %180 = and i32 %179, 16
  %181 = icmp eq i32 %180, 0
  store i1 %181, i1* %AF, align 1, !mcsema_real_eip !55
  %182 = trunc i32 %178 to i8, !mcsema_real_eip !55
  %183 = call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !55
  %184 = and i8 %183, 1
  %185 = icmp eq i8 %184, 0
  store i1 %185, i1* %PF, align 1, !mcsema_real_eip !55
  %186 = icmp eq i32 %178, 0, !mcsema_real_eip !55
  store i1 %186, i1* %ZF, align 1, !mcsema_real_eip !55
  %187 = icmp ult i8 %175, 48
  store i1 %187, i1* %SF, align 1, !mcsema_real_eip !55
  %188 = icmp ult i8 %175, 48
  store i1 %188, i1* %CF, align 1, !mcsema_real_eip !55
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !55
  br i1 %186, label %block_0x102, label %block_0x417, !mcsema_real_eip !56

block_0x102:                                      ; preds = %block_0xeb
  %_new_gep_120 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_104, i64 -20
  %189 = bitcast i8* %_new_gep_120 to i32*
  store i32 -4, i32* %189, align 4, !mcsema_real_eip !57
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_122 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_123 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_122, i64 -16
  %_ptr_to_int_726 = ptrtoint i8* %_new_gep_123 to i64
  %_offset_above_rbp_729 = sub i64 %_ptr_to_int_726, %_local_end_to_int_
  %_pot_address_in_parent_stack_730 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_729
  %_cond1_731 = icmp ugt i8* %_new_gep_123, %_local_stack_end_ptr_
  %_cond2_1_732 = icmp ugt i8* %_new_gep_123, %_parent_stack_end_ptr_
  %_cond2_2_733 = icmp ult i8* %_new_gep_123, %_parent_stack_start_ptr_
  %_cond2_734 = or i1 %_cond2_1_732, %_cond2_2_733
  %_cond4_735 = icmp ule i8* %_pot_address_in_parent_stack_730, %_parent_stack_end_ptr_
  %_cond1_n_cond2_736 = and i1 %_cond1_731, %_cond2_734
  %_cond1_n_cond2_cond3_737 = and i1 %_cond1_n_cond2_736, %_cond4_735
  %.v12 = select i1 %_cond1_n_cond2_cond3_737, i8* %_pot_address_in_parent_stack_730, i8* %_new_gep_123
  %190 = bitcast i8* %.v12 to i64*
  %_new_load_740 = load i64, i64* %190, align 8
  store i64 %_new_load_740, i64* %XAX, align 8, !mcsema_real_eip !58
  %191 = add i64 %_new_load_740, 5, !mcsema_real_eip !59
  %192 = inttoptr i64 %191 to i8*, !mcsema_real_eip !59
  %_offset_above_rbp_743 = sub i64 %191, %_local_end_to_int_
  %_pot_address_in_parent_stack_744 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_743
  %_cond1_745 = icmp ugt i8* %192, %_local_stack_end_ptr_
  %_cond2_1_746 = icmp ugt i8* %192, %_parent_stack_end_ptr_
  %_cond2_2_747 = icmp ult i8* %192, %_parent_stack_start_ptr_
  %_cond2_748 = or i1 %_cond2_1_746, %_cond2_2_747
  %_cond4_749 = icmp ule i8* %_pot_address_in_parent_stack_744, %_parent_stack_end_ptr_
  %_cond1_n_cond2_750 = and i1 %_cond1_745, %_cond2_748
  %_cond1_n_cond2_cond3_751 = and i1 %_cond4_749, %_cond1_n_cond2_750
  %_pot_address_in_parent_stack_744. = select i1 %_cond1_n_cond2_cond3_751, i8* %_pot_address_in_parent_stack_744, i8* %192
  %_new_load_753 = load i8, i8* %_pot_address_in_parent_stack_744., align 1
  %193 = and i8 %_new_load_753, 15
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !60
  %194 = icmp eq i8 %193, 0
  store i1 %194, i1* %ZF, align 1, !mcsema_real_eip !60
  %195 = call i8 @llvm.ctpop.i8(i8 %193), !mcsema_real_eip !60
  %196 = and i8 %195, 1
  %197 = icmp eq i8 %196, 0
  store i1 %197, i1* %PF, align 1, !mcsema_real_eip !60
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !60
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !60
  %198 = zext i8 %193 to i64
  store i64 %198, i64* %XCX, align 8, !mcsema_real_eip !60
  %CL.91 = bitcast i64* %XCX to i8*, !mcsema_real_eip !61
  %DL.93 = bitcast i64* %XDX to i8*, !mcsema_real_eip !61
  store i8 %193, i8* %DL.93, align 1, !mcsema_real_eip !61
  %_new_gep_126 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_122, i64 -33
  store i8 %193, i8* %_new_gep_126, align 1, !mcsema_real_eip !62
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_128 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_129 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_128, i64 -16
  %_ptr_to_int_754 = ptrtoint i8* %_new_gep_129 to i64
  %_offset_above_rbp_757 = sub i64 %_ptr_to_int_754, %_local_end_to_int_
  %_pot_address_in_parent_stack_758 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_757
  %_cond1_759 = icmp ugt i8* %_new_gep_129, %_local_stack_end_ptr_
  %_cond2_1_760 = icmp ugt i8* %_new_gep_129, %_parent_stack_end_ptr_
  %_cond2_2_761 = icmp ult i8* %_new_gep_129, %_parent_stack_start_ptr_
  %_cond2_762 = or i1 %_cond2_1_760, %_cond2_2_761
  %_cond4_763 = icmp ule i8* %_pot_address_in_parent_stack_758, %_parent_stack_end_ptr_
  %_cond1_n_cond2_764 = and i1 %_cond1_759, %_cond2_762
  %_cond1_n_cond2_cond3_765 = and i1 %_cond1_n_cond2_764, %_cond4_763
  %.v13 = select i1 %_cond1_n_cond2_cond3_765, i8* %_pot_address_in_parent_stack_758, i8* %_new_gep_129
  %199 = bitcast i8* %.v13 to i64*
  %_new_load_768 = load i64, i64* %199, align 8
  store i64 %_new_load_768, i64* %XAX, align 8, !mcsema_real_eip !63
  %200 = add i64 %_new_load_768, 5, !mcsema_real_eip !64
  %201 = inttoptr i64 %200 to i8*, !mcsema_real_eip !64
  %_offset_above_rbp_771 = sub i64 %200, %_local_end_to_int_
  %_pot_address_in_parent_stack_772 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_771
  %_cond1_773 = icmp ugt i8* %201, %_local_stack_end_ptr_
  %_cond2_1_774 = icmp ugt i8* %201, %_parent_stack_end_ptr_
  %_cond2_2_775 = icmp ult i8* %201, %_parent_stack_start_ptr_
  %_cond2_776 = or i1 %_cond2_1_774, %_cond2_2_775
  %_cond4_777 = icmp ule i8* %_pot_address_in_parent_stack_772, %_parent_stack_end_ptr_
  %_cond1_n_cond2_778 = and i1 %_cond1_773, %_cond2_776
  %_cond1_n_cond2_cond3_779 = and i1 %_cond4_777, %_cond1_n_cond2_778
  %_pot_address_in_parent_stack_772. = select i1 %_cond1_n_cond2_cond3_779, i8* %_pot_address_in_parent_stack_772, i8* %201
  %_new_load_781 = load i8, i8* %_pot_address_in_parent_stack_772., align 1
  %202 = and i8 %_new_load_781, -16
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !65
  %203 = icmp eq i8 %202, 0
  store i1 %203, i1* %ZF, align 1, !mcsema_real_eip !65
  %204 = call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !65
  %205 = and i8 %204, 1
  %206 = icmp eq i8 %205, 0
  store i1 %206, i1* %PF, align 1, !mcsema_real_eip !65
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !65
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !65
  %207 = zext i8 %202 to i64
  store i64 %207, i64* %XCX, align 8, !mcsema_real_eip !65
  store i8 %202, i8* %DL.93, align 1, !mcsema_real_eip !66
  %_new_gep_132 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_128, i64 -34
  store i8 %202, i8* %_new_gep_132, align 1, !mcsema_real_eip !67
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_135 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -33
  %208 = ptrtoint i8* %_new_gep_135 to i64
  %_offset_above_rbp_784 = sub i64 %208, %_local_end_to_int_
  %_pot_address_in_parent_stack_785 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_784
  %_cond1_786 = icmp ugt i8* %_new_gep_135, %_local_stack_end_ptr_
  %_cond2_1_787 = icmp ugt i8* %_new_gep_135, %_parent_stack_end_ptr_
  %_cond2_2_788 = icmp ult i8* %_new_gep_135, %_parent_stack_start_ptr_
  %_cond2_789 = or i1 %_cond2_1_787, %_cond2_2_788
  %_cond4_790 = icmp ule i8* %_pot_address_in_parent_stack_785, %_parent_stack_end_ptr_
  %_cond1_n_cond2_791 = and i1 %_cond1_786, %_cond2_789
  %_cond1_n_cond2_cond3_792 = and i1 %_cond1_n_cond2_791, %_cond4_790
  %209 = select i1 %_cond1_n_cond2_cond3_792, i8* %_pot_address_in_parent_stack_785, i8* %_new_gep_135
  %_new_load_794 = load i8, i8* %209, align 1
  %210 = zext i8 %_new_load_794 to i64
  store i64 %210, i64* %XCX, align 8, !mcsema_real_eip !68
  %211 = zext i8 %_new_load_794 to i32
  %212 = add nsw i32 %211, -3
  %213 = xor i32 %212, %211, !mcsema_real_eip !69
  %214 = and i32 %213, 16, !mcsema_real_eip !69
  %215 = icmp ne i32 %214, 0, !mcsema_real_eip !69
  store i1 %215, i1* %AF, align 1, !mcsema_real_eip !69
  %216 = trunc i32 %212 to i8, !mcsema_real_eip !69
  %217 = call i8 @llvm.ctpop.i8(i8 %216), !mcsema_real_eip !69
  %218 = and i8 %217, 1
  %219 = icmp eq i8 %218, 0
  store i1 %219, i1* %PF, align 1, !mcsema_real_eip !69
  %220 = icmp eq i32 %212, 0, !mcsema_real_eip !69
  store i1 %220, i1* %ZF, align 1, !mcsema_real_eip !69
  %221 = icmp ult i8 %_new_load_794, 3
  store i1 %221, i1* %SF, align 1, !mcsema_real_eip !69
  %222 = icmp ult i8 %_new_load_794, 3
  store i1 %222, i1* %CF, align 1, !mcsema_real_eip !69
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !69
  br i1 %220, label %block_0x14a, label %block_0x165, !mcsema_real_eip !70

block_0x14a:                                      ; preds = %block_0x102
  %_new_gep_138 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -34
  %223 = ptrtoint i8* %_new_gep_138 to i64
  %_offset_above_rbp_797 = sub i64 %223, %_local_end_to_int_
  %_pot_address_in_parent_stack_798 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_797
  %_cond1_799 = icmp ugt i8* %_new_gep_138, %_local_stack_end_ptr_
  %_cond2_1_800 = icmp ugt i8* %_new_gep_138, %_parent_stack_end_ptr_
  %_cond2_2_801 = icmp ult i8* %_new_gep_138, %_parent_stack_start_ptr_
  %_cond2_802 = or i1 %_cond2_1_800, %_cond2_2_801
  %_cond4_803 = icmp ule i8* %_pot_address_in_parent_stack_798, %_parent_stack_end_ptr_
  %_cond1_n_cond2_804 = and i1 %_cond1_799, %_cond2_802
  %_cond1_n_cond2_cond3_805 = and i1 %_cond1_n_cond2_804, %_cond4_803
  %_pot_address_in_parent_stack_798. = select i1 %_cond1_n_cond2_cond3_805, i8* %_pot_address_in_parent_stack_798, i8* %_new_gep_138
  %_new_load_807 = load i8, i8* %_pot_address_in_parent_stack_798., align 1
  %224 = zext i8 %_new_load_807 to i64
  store i64 %224, i64* %XAX, align 8, !mcsema_real_eip !71
  %225 = zext i8 %_new_load_807 to i32
  %226 = add nsw i32 %225, -96
  %227 = xor i32 %226, %225, !mcsema_real_eip !72
  %228 = and i32 %227, 16, !mcsema_real_eip !72
  %229 = icmp ne i32 %228, 0, !mcsema_real_eip !72
  store i1 %229, i1* %AF, align 1, !mcsema_real_eip !72
  %230 = trunc i32 %226 to i8, !mcsema_real_eip !72
  %231 = call i8 @llvm.ctpop.i8(i8 %230), !mcsema_real_eip !72
  %232 = and i8 %231, 1
  %233 = icmp eq i8 %232, 0
  store i1 %233, i1* %PF, align 1, !mcsema_real_eip !72
  %234 = icmp eq i32 %226, 0, !mcsema_real_eip !72
  store i1 %234, i1* %ZF, align 1, !mcsema_real_eip !72
  %235 = icmp ult i8 %_new_load_807, 96
  store i1 %235, i1* %SF, align 1, !mcsema_real_eip !72
  %236 = icmp ult i8 %_new_load_807, 96
  store i1 %236, i1* %CF, align 1, !mcsema_real_eip !72
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !72
  br i1 %234, label %block_0x157, label %block_0x165, !mcsema_real_eip !73

block_0x165:                                      ; preds = %block_0x14a, %block_0x102
  %_new_gep_141 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -20
  %237 = ptrtoint i8* %_new_gep_141 to i64
  %238 = bitcast i8* %_new_gep_141 to i32*
  %_offset_above_rbp_811 = sub i64 %237, %_local_end_to_int_
  %_pot_address_in_parent_stack_812 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_811
  %_cond1_813 = icmp ugt i8* %_new_gep_141, %_local_stack_end_ptr_
  %_cond2_1_814 = icmp ugt i8* %_new_gep_141, %_parent_stack_end_ptr_
  %_cond2_2_815 = icmp ult i8* %_new_gep_141, %_parent_stack_start_ptr_
  %_cond2_816 = or i1 %_cond2_1_814, %_cond2_2_815
  %_cond4_817 = icmp ule i8* %_pot_address_in_parent_stack_812, %_parent_stack_end_ptr_
  %_cond1_n_cond2_818 = and i1 %_cond1_813, %_cond2_816
  %_cond1_n_cond2_cond3_819 = and i1 %_cond1_n_cond2_818, %_cond4_817
  %_address_in_parent_stack_bt_821 = bitcast i8* %_pot_address_in_parent_stack_812 to i32*
  %_address_in_parent_stack_bt_821. = select i1 %_cond1_n_cond2_cond3_819, i32* %_address_in_parent_stack_bt_821, i32* %238
  %_new_load_822 = load i32, i32* %_address_in_parent_stack_bt_821., align 4
  %239 = zext i32 %_new_load_822 to i64, !mcsema_real_eip !74
  store i64 %239, i64* %XAX, align 8, !mcsema_real_eip !74
  %240 = add i32 %_new_load_822, 5, !mcsema_real_eip !75
  %241 = xor i32 %240, %_new_load_822, !mcsema_real_eip !75
  %242 = and i32 %241, 16, !mcsema_real_eip !75
  %243 = icmp ne i32 %242, 0, !mcsema_real_eip !75
  store i1 %243, i1* %AF, align 1, !mcsema_real_eip !75
  %244 = icmp slt i32 %240, 0
  store i1 %244, i1* %SF, align 1, !mcsema_real_eip !75
  %245 = icmp eq i32 %240, 0, !mcsema_real_eip !75
  store i1 %245, i1* %ZF, align 1, !mcsema_real_eip !75
  %246 = xor i32 %_new_load_822, -2147483648, !mcsema_real_eip !75
  %247 = and i32 %241, %246, !mcsema_real_eip !75
  %248 = icmp slt i32 %247, 0
  store i1 %248, i1* %OF, align 1, !mcsema_real_eip !75
  %249 = trunc i32 %240 to i8, !mcsema_real_eip !75
  %250 = call i8 @llvm.ctpop.i8(i8 %249), !mcsema_real_eip !75
  %251 = and i8 %250, 1
  %252 = icmp eq i8 %251, 0
  store i1 %252, i1* %PF, align 1, !mcsema_real_eip !75
  %253 = icmp ugt i32 %_new_load_822, -6
  br label %block_0x1c2, !mcsema_real_eip !71

block_0x157:                                      ; preds = %block_0x14a
  %_new_gep_171 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_134, i64 -20
  %254 = ptrtoint i8* %_new_gep_171 to i64
  %255 = bitcast i8* %_new_gep_171 to i32*
  %_offset_above_rbp_908 = sub i64 %254, %_local_end_to_int_
  %_pot_address_in_parent_stack_909 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_908
  %_cond1_910 = icmp ugt i8* %_new_gep_171, %_local_stack_end_ptr_
  %_cond2_1_911 = icmp ugt i8* %_new_gep_171, %_parent_stack_end_ptr_
  %_cond2_2_912 = icmp ult i8* %_new_gep_171, %_parent_stack_start_ptr_
  %_cond2_913 = or i1 %_cond2_1_911, %_cond2_2_912
  %_cond4_914 = icmp ule i8* %_pot_address_in_parent_stack_909, %_parent_stack_end_ptr_
  %_cond1_n_cond2_915 = and i1 %_cond1_910, %_cond2_913
  %_cond1_n_cond2_cond3_916 = and i1 %_cond1_n_cond2_915, %_cond4_914
  %_address_in_parent_stack_bt_918 = bitcast i8* %_pot_address_in_parent_stack_909 to i32*
  %_address_in_parent_stack_bt_918. = select i1 %_cond1_n_cond2_cond3_916, i32* %_address_in_parent_stack_bt_918, i32* %255
  %_new_load_919 = load i32, i32* %_address_in_parent_stack_bt_918., align 4
  %256 = zext i32 %_new_load_919 to i64, !mcsema_real_eip !76
  store i64 %256, i64* %XAX, align 8, !mcsema_real_eip !76
  %257 = add i32 %_new_load_919, 4, !mcsema_real_eip !77
  %258 = xor i32 %257, %_new_load_919, !mcsema_real_eip !77
  %259 = and i32 %258, 16, !mcsema_real_eip !77
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !77
  store i1 %260, i1* %AF, align 1, !mcsema_real_eip !77
  %261 = icmp slt i32 %257, 0
  store i1 %261, i1* %SF, align 1, !mcsema_real_eip !77
  %262 = icmp eq i32 %257, 0, !mcsema_real_eip !77
  store i1 %262, i1* %ZF, align 1, !mcsema_real_eip !77
  %263 = xor i32 %_new_load_919, -2147483648, !mcsema_real_eip !77
  %264 = and i32 %258, %263, !mcsema_real_eip !77
  %265 = icmp slt i32 %264, 0
  store i1 %265, i1* %OF, align 1, !mcsema_real_eip !77
  %266 = trunc i32 %257 to i8, !mcsema_real_eip !77
  %267 = call i8 @llvm.ctpop.i8(i8 %266), !mcsema_real_eip !77
  %268 = and i8 %267, 1
  %269 = icmp eq i8 %268, 0
  store i1 %269, i1* %PF, align 1, !mcsema_real_eip !77
  %270 = icmp ugt i32 %_new_load_919, -5
  br label %block_0x1c2, !mcsema_real_eip !78

block_0x1c2:                                      ; preds = %block_0x157, %block_0x165
  %.sink8 = phi i1 [ %270, %block_0x157 ], [ %253, %block_0x165 ]
  %.sink7 = phi i32 [ %257, %block_0x157 ], [ %240, %block_0x165 ]
  %.sink5 = phi i32* [ %255, %block_0x157 ], [ %238, %block_0x165 ]
  store i1 %.sink8, i1* %CF, align 1
  %271 = zext i32 %.sink7 to i64
  store i64 %271, i64* %XAX, align 8
  store i32 %.sink7, i32* %.sink5, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_146 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_147 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_146, i64 -16
  %_ptr_to_int_823 = ptrtoint i8* %_new_gep_147 to i64
  %_offset_above_rbp_826 = sub i64 %_ptr_to_int_823, %_local_end_to_int_
  %_pot_address_in_parent_stack_827 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_826
  %_cond1_828 = icmp ugt i8* %_new_gep_147, %_local_stack_end_ptr_
  %_cond2_1_829 = icmp ugt i8* %_new_gep_147, %_parent_stack_end_ptr_
  %_cond2_2_830 = icmp ult i8* %_new_gep_147, %_parent_stack_start_ptr_
  %_cond2_831 = or i1 %_cond2_1_829, %_cond2_2_830
  %_cond4_832 = icmp ule i8* %_pot_address_in_parent_stack_827, %_parent_stack_end_ptr_
  %_cond1_n_cond2_833 = and i1 %_cond1_828, %_cond2_831
  %_cond1_n_cond2_cond3_834 = and i1 %_cond1_n_cond2_833, %_cond4_832
  %_address_in_parent_stack_bt_836._allin_new_bt_148.v = select i1 %_cond1_n_cond2_cond3_834, i8* %_pot_address_in_parent_stack_827, i8* %_new_gep_147
  %_address_in_parent_stack_bt_836._allin_new_bt_148 = bitcast i8* %_address_in_parent_stack_bt_836._allin_new_bt_148.v to i64*
  %_new_load_837 = load i64, i64* %_address_in_parent_stack_bt_836._allin_new_bt_148, align 8
  store i64 %_new_load_837, i64* %XAX, align 8, !mcsema_real_eip !79
  %272 = add i64 %_new_load_837, 6, !mcsema_real_eip !80
  %273 = inttoptr i64 %272 to i8*, !mcsema_real_eip !80
  %_offset_above_rbp_840 = sub i64 %272, %_local_end_to_int_
  %_pot_address_in_parent_stack_841 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_840
  %_cond1_842 = icmp ugt i8* %273, %_local_stack_end_ptr_
  %_cond2_1_843 = icmp ugt i8* %273, %_parent_stack_end_ptr_
  %_cond2_2_844 = icmp ult i8* %273, %_parent_stack_start_ptr_
  %_cond2_845 = or i1 %_cond2_1_843, %_cond2_2_844
  %_cond4_846 = icmp ule i8* %_pot_address_in_parent_stack_841, %_parent_stack_end_ptr_
  %_cond1_n_cond2_847 = and i1 %_cond1_842, %_cond2_845
  %_cond1_n_cond2_cond3_848 = and i1 %_cond4_846, %_cond1_n_cond2_847
  %274 = select i1 %_cond1_n_cond2_cond3_848, i8* %_pot_address_in_parent_stack_841, i8* %273
  %_new_load_850 = load i8, i8* %274, align 1
  %275 = zext i8 %_new_load_850 to i64
  store i64 %275, i64* %XDI, align 8, !mcsema_real_eip !80
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_149 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.122 = load i64, i64* %XSP, align 8, !mcsema_real_eip !81
  %_new_gep_150 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_149, i64 -8
  %276 = add i64 %RSP_val.122, -8
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_151, align 8, !mcsema_real_eip !81
  store volatile i8* %_new_gep_150, i8** %_RSP_ptr_, align 8
  store i64 %276, i64* %XSP, align 8, !mcsema_real_eip !81
  %277 = call x86_64_sysvcc i64 @_to_byte(i64 %275)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_422 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_423 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_422, i64 8
  store i8* %_gep_fix_423, i8** %_RSP_ptr_, align 8
  store i64 %277, i64* %XAX, align 8, !mcsema_real_eip !81
  %278 = trunc i64 %277 to i8
  store i8 %278, i8* %CL.91, align 1, !mcsema_real_eip !82
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_152 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_153 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_152, i64 -35
  store i8 %278, i8* %_new_gep_153, align 1, !mcsema_real_eip !83
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_155 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_156 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_155, i64 -16
  %_ptr_to_int_851 = ptrtoint i8* %_new_gep_156 to i64
  %_offset_above_rbp_854 = sub i64 %_ptr_to_int_851, %_local_end_to_int_
  %_pot_address_in_parent_stack_855 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_854
  %_cond1_856 = icmp ugt i8* %_new_gep_156, %_local_stack_end_ptr_
  %_cond2_1_857 = icmp ugt i8* %_new_gep_156, %_parent_stack_end_ptr_
  %_cond2_2_858 = icmp ult i8* %_new_gep_156, %_parent_stack_start_ptr_
  %_cond2_859 = or i1 %_cond2_1_857, %_cond2_2_858
  %_cond4_860 = icmp ule i8* %_pot_address_in_parent_stack_855, %_parent_stack_end_ptr_
  %_cond1_n_cond2_861 = and i1 %_cond1_856, %_cond2_859
  %_cond1_n_cond2_cond3_862 = and i1 %_cond1_n_cond2_861, %_cond4_860
  %_address_in_parent_stack_bt_864._allin_new_bt_157.v = select i1 %_cond1_n_cond2_cond3_862, i8* %_pot_address_in_parent_stack_855, i8* %_new_gep_156
  %_address_in_parent_stack_bt_864._allin_new_bt_157 = bitcast i8* %_address_in_parent_stack_bt_864._allin_new_bt_157.v to i64*
  %_new_load_865 = load i64, i64* %_address_in_parent_stack_bt_864._allin_new_bt_157, align 8
  store i64 %_new_load_865, i64* %XDX, align 8, !mcsema_real_eip !84
  %279 = add i64 %_new_load_865, 7, !mcsema_real_eip !85
  %280 = inttoptr i64 %279 to i8*, !mcsema_real_eip !85
  %_offset_above_rbp_868 = sub i64 %279, %_local_end_to_int_
  %_pot_address_in_parent_stack_869 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_868
  %_cond1_870 = icmp ugt i8* %280, %_local_stack_end_ptr_
  %_cond2_1_871 = icmp ugt i8* %280, %_parent_stack_end_ptr_
  %_cond2_2_872 = icmp ult i8* %280, %_parent_stack_start_ptr_
  %_cond2_873 = or i1 %_cond2_1_871, %_cond2_2_872
  %_cond4_874 = icmp ule i8* %_pot_address_in_parent_stack_869, %_parent_stack_end_ptr_
  %_cond1_n_cond2_875 = and i1 %_cond1_870, %_cond2_873
  %_cond1_n_cond2_cond3_876 = and i1 %_cond4_874, %_cond1_n_cond2_875
  %281 = select i1 %_cond1_n_cond2_cond3_876, i8* %_pot_address_in_parent_stack_869, i8* %280
  %_new_load_878 = load i8, i8* %281, align 1
  %282 = zext i8 %_new_load_878 to i64
  store i64 %282, i64* %XDI, align 8, !mcsema_real_eip !85
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_158 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.132 = load i64, i64* %XSP, align 8, !mcsema_real_eip !86
  %_new_gep_159 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_158, i64 -8
  %283 = add i64 %RSP_val.132, -8
  %_allin_new_bt_160 = bitcast i8* %_new_gep_159 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_160, align 8, !mcsema_real_eip !86
  store volatile i8* %_new_gep_159, i8** %_RSP_ptr_, align 8
  store i64 %283, i64* %XSP, align 8, !mcsema_real_eip !86
  %284 = call x86_64_sysvcc i64 @_to_byte(i64 %282)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_424 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_425 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_424, i64 8
  store i8* %_gep_fix_425, i8** %_RSP_ptr_, align 8
  store i64 %284, i64* %XAX, align 8, !mcsema_real_eip !86
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_161 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_162 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_161, i64 -35
  %285 = ptrtoint i8* %_new_gep_162 to i64
  %_offset_above_rbp_881 = sub i64 %285, %_local_end_to_int_
  %_pot_address_in_parent_stack_882 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_881
  %_cond1_883 = icmp ugt i8* %_new_gep_162, %_local_stack_end_ptr_
  %_cond2_1_884 = icmp ugt i8* %_new_gep_162, %_parent_stack_end_ptr_
  %_cond2_2_885 = icmp ult i8* %_new_gep_162, %_parent_stack_start_ptr_
  %_cond2_886 = or i1 %_cond2_1_884, %_cond2_2_885
  %_cond4_887 = icmp ule i8* %_pot_address_in_parent_stack_882, %_parent_stack_end_ptr_
  %_cond1_n_cond2_888 = and i1 %_cond1_883, %_cond2_886
  %_cond1_n_cond2_cond3_889 = and i1 %_cond1_n_cond2_888, %_cond4_887
  %_pot_address_in_parent_stack_882. = select i1 %_cond1_n_cond2_cond3_889, i8* %_pot_address_in_parent_stack_882, i8* %_new_gep_162
  %_new_load_891 = load i8, i8* %_pot_address_in_parent_stack_882., align 1
  %286 = zext i8 %_new_load_891 to i32
  %287 = trunc i64 %284 to i32
  %288 = or i32 %287, %286, !mcsema_real_eip !88
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !88
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !88
  %289 = icmp slt i32 %288, 0
  store i1 %289, i1* %SF, align 1, !mcsema_real_eip !88
  %290 = icmp eq i32 %288, 0, !mcsema_real_eip !88
  store i1 %290, i1* %ZF, align 1, !mcsema_real_eip !88
  %291 = trunc i32 %288 to i8, !mcsema_real_eip !88
  %292 = call i8 @llvm.ctpop.i8(i8 %291), !mcsema_real_eip !88
  %293 = and i8 %292, 1
  %294 = icmp eq i8 %293, 0
  store i1 %294, i1* %PF, align 1, !mcsema_real_eip !88
  %295 = zext i32 %288 to i64, !mcsema_real_eip !88
  store i64 %295, i64* %XDI, align 8, !mcsema_real_eip !88
  %296 = trunc i32 %288 to i8
  store i8 %296, i8* %CL.91, align 1, !mcsema_real_eip !89
  store i8 %296, i8* %_new_gep_162, align 1, !mcsema_real_eip !90
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_167 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_168 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_167, i64 -35
  %297 = ptrtoint i8* %_new_gep_168 to i64
  %_offset_above_rbp_894 = sub i64 %297, %_local_end_to_int_
  %_pot_address_in_parent_stack_895 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_894
  %_cond1_896 = icmp ugt i8* %_new_gep_168, %_local_stack_end_ptr_
  %_cond2_1_897 = icmp ugt i8* %_new_gep_168, %_parent_stack_end_ptr_
  %_cond2_2_898 = icmp ult i8* %_new_gep_168, %_parent_stack_start_ptr_
  %_cond2_899 = or i1 %_cond2_1_897, %_cond2_2_898
  %_cond4_900 = icmp ule i8* %_pot_address_in_parent_stack_895, %_parent_stack_end_ptr_
  %_cond1_n_cond2_901 = and i1 %_cond1_896, %_cond2_899
  %_cond1_n_cond2_cond3_902 = and i1 %_cond1_n_cond2_901, %_cond4_900
  %298 = select i1 %_cond1_n_cond2_cond3_902, i8* %_pot_address_in_parent_stack_895, i8* %_new_gep_168
  %_new_load_904 = load i8, i8* %298, align 1
  %299 = zext i8 %_new_load_904 to i32
  %300 = xor i32 %299, -1, !mcsema_real_eip !92
  %301 = zext i32 %300 to i64, !mcsema_real_eip !92
  store i64 %301, i64* %XAX, align 8, !mcsema_real_eip !92
  %302 = sub nuw nsw i32 -71, %299
  %303 = xor i32 %302, %300, !mcsema_real_eip !93
  %304 = and i32 %303, 16, !mcsema_real_eip !93
  %305 = icmp ne i32 %304, 0, !mcsema_real_eip !93
  store i1 %305, i1* %AF, align 1, !mcsema_real_eip !93
  %306 = trunc i32 %302 to i8, !mcsema_real_eip !93
  %307 = call i8 @llvm.ctpop.i8(i8 %306), !mcsema_real_eip !93
  %308 = and i8 %307, 1
  %309 = icmp eq i8 %308, 0
  store i1 %309, i1* %PF, align 1, !mcsema_real_eip !93
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !93
  store i1 true, i1* %SF, align 1, !mcsema_real_eip !93
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !93
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !93
  %_new_gep_183 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_167, i64 -20
  %310 = ptrtoint i8* %_new_gep_183 to i64
  %311 = bitcast i8* %_new_gep_183 to i32*
  %_offset_above_rbp_938 = sub i64 %310, %_local_end_to_int_
  %_pot_address_in_parent_stack_939 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_938
  %_cond1_940 = icmp ugt i8* %_new_gep_183, %_local_stack_end_ptr_
  %_cond2_1_941 = icmp ugt i8* %_new_gep_183, %_parent_stack_end_ptr_
  %_cond2_2_942 = icmp ult i8* %_new_gep_183, %_parent_stack_start_ptr_
  %_cond2_943 = or i1 %_cond2_1_941, %_cond2_2_942
  %_cond4_944 = icmp ule i8* %_pot_address_in_parent_stack_939, %_parent_stack_end_ptr_
  %_cond1_n_cond2_945 = and i1 %_cond1_940, %_cond2_943
  %_cond1_n_cond2_cond3_946 = and i1 %_cond1_n_cond2_945, %_cond4_944
  %_address_in_parent_stack_bt_948 = bitcast i8* %_pot_address_in_parent_stack_939 to i32*
  %_address_in_parent_stack_bt_948. = select i1 %_cond1_n_cond2_cond3_946, i32* %_address_in_parent_stack_bt_948, i32* %311
  %_new_load_949 = load i32, i32* %_address_in_parent_stack_bt_948., align 4
  %312 = zext i32 %_new_load_949 to i64
  store i64 %312, i64* %XCX, align 8, !mcsema_real_eip !94
  %_new_load_964 = load i32, i32* %_address_in_parent_stack_bt_948., align 4
  %CL_val.160.zext = and i32 %_new_load_949, 255
  %313 = and i32 %_new_load_949, 31, !mcsema_real_eip !96
  %314 = add nsw i32 %CL_val.160.zext, -1
  %315 = icmp ne i32 %313, 0, !mcsema_real_eip !96
  %316 = select i1 %315, i32 %314, i32 0, !mcsema_real_eip !96
  %317 = zext i1 %315 to i32
  %318 = shl i32 %_new_load_964, %316, !mcsema_real_eip !96
  %319 = icmp slt i32 %318, 0
  %320 = and i1 %315, %319
  %321 = shl i32 %318, %317, !mcsema_real_eip !96
  %322 = icmp eq i32 %313, 1, !mcsema_real_eip !96
  %323 = icmp slt i32 %321, 0
  %324 = xor i1 %323, %320, !mcsema_real_eip !96
  %325 = and i1 %322, %324
  store i1 %325, i1* %OF, align 1, !mcsema_real_eip !96
  store i1 %320, i1* %CF, align 1, !mcsema_real_eip !96
  %326 = icmp eq i32 %321, 0, !mcsema_real_eip !96
  %327 = and i1 %315, %326
  store i1 %327, i1* %ZF, align 1, !mcsema_real_eip !96
  %not. = xor i1 %315, true
  %328 = or i1 %323, %not.
  store i1 %328, i1* %SF, align 1, !mcsema_real_eip !96
  %329 = trunc i32 %321 to i8, !mcsema_real_eip !96
  %330 = call i8 @llvm.ctpop.i8(i8 %329), !mcsema_real_eip !96
  %331 = and i8 %330, 1
  %332 = icmp eq i8 %331, 0
  %333 = select i1 %315, i1 %332, i1 %309, !mcsema_real_eip !96
  store i1 %333, i1* %PF, align 1, !mcsema_real_eip !96
  %334 = zext i32 %321 to i64
  store i64 %334, i64* %XAX, align 8
  store i32 %321, i32* %311, align 4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_191 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_192 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_191, i64 -20
  %335 = ptrtoint i8* %_new_gep_192 to i64
  %_offset_above_rbp_968 = sub i64 %335, %_local_end_to_int_
  %_pot_address_in_parent_stack_969 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_968
  %_cond1_970 = icmp ugt i8* %_new_gep_192, %_local_stack_end_ptr_
  %_cond2_1_971 = icmp ugt i8* %_new_gep_192, %_parent_stack_end_ptr_
  %_cond2_2_972 = icmp ult i8* %_new_gep_192, %_parent_stack_start_ptr_
  %_cond2_973 = or i1 %_cond2_1_971, %_cond2_2_972
  %_cond4_974 = icmp ule i8* %_pot_address_in_parent_stack_969, %_parent_stack_end_ptr_
  %_cond1_n_cond2_975 = and i1 %_cond1_970, %_cond2_973
  %_cond1_n_cond2_cond3_976 = and i1 %_cond1_n_cond2_975, %_cond4_974
  %_address_in_parent_stack_bt_978..v = select i1 %_cond1_n_cond2_cond3_976, i8* %_pot_address_in_parent_stack_969, i8* %_new_gep_192
  %_address_in_parent_stack_bt_978. = bitcast i8* %_address_in_parent_stack_bt_978..v to i32*
  %_new_load_979 = load i32, i32* %_address_in_parent_stack_bt_978., align 4
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !97
  %336 = trunc i32 %_new_load_979 to i8, !mcsema_real_eip !97
  %337 = call i8 @llvm.ctpop.i8(i8 %336), !mcsema_real_eip !97
  %338 = and i8 %337, 1
  %339 = icmp eq i8 %338, 0
  store i1 %339, i1* %PF, align 1, !mcsema_real_eip !97
  %340 = icmp eq i32 %_new_load_979, 0, !mcsema_real_eip !97
  store i1 %340, i1* %ZF, align 1, !mcsema_real_eip !97
  %341 = icmp slt i32 %_new_load_979, 0
  store i1 %341, i1* %SF, align 1, !mcsema_real_eip !97
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !97
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !97
  br i1 %340, label %block_0x1d8, label %block_0x417, !mcsema_real_eip !98

block_0x1d8:                                      ; preds = %block_0x1c2
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !99
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !99
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !99
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !99
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !99
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !99
  store i64 4, i64* %XDX, align 8, !mcsema_real_eip !100
  %_new_gep_198 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_191, i64 -16
  %_ptr_to_int_980 = ptrtoint i8* %_new_gep_198 to i64
  %_offset_above_rbp_983 = sub i64 %_ptr_to_int_980, %_local_end_to_int_
  %_pot_address_in_parent_stack_984 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_983
  %_cond1_985 = icmp ugt i8* %_new_gep_198, %_local_stack_end_ptr_
  %_cond2_1_986 = icmp ugt i8* %_new_gep_198, %_parent_stack_end_ptr_
  %_cond2_2_987 = icmp ult i8* %_new_gep_198, %_parent_stack_start_ptr_
  %_cond2_988 = or i1 %_cond2_1_986, %_cond2_2_987
  %_cond4_989 = icmp ule i8* %_pot_address_in_parent_stack_984, %_parent_stack_end_ptr_
  %_cond1_n_cond2_990 = and i1 %_cond1_985, %_cond2_988
  %_cond1_n_cond2_cond3_991 = and i1 %_cond1_n_cond2_990, %_cond4_989
  %_address_in_parent_stack_bt_993._allin_new_bt_199.v = select i1 %_cond1_n_cond2_cond3_991, i8* %_pot_address_in_parent_stack_984, i8* %_new_gep_198
  %_address_in_parent_stack_bt_993._allin_new_bt_199 = bitcast i8* %_address_in_parent_stack_bt_993._allin_new_bt_199.v to i64*
  %_new_load_994 = load i64, i64* %_address_in_parent_stack_bt_993._allin_new_bt_199, align 8
  %342 = add i64 %_new_load_994, 8, !mcsema_real_eip !102
  %343 = xor i64 %342, %_new_load_994, !mcsema_real_eip !102
  %344 = and i64 %343, 16, !mcsema_real_eip !102
  %345 = icmp ne i64 %344, 0, !mcsema_real_eip !102
  store i1 %345, i1* %AF, align 1, !mcsema_real_eip !102
  %346 = icmp slt i64 %342, 0
  store i1 %346, i1* %SF, align 1, !mcsema_real_eip !102
  %347 = icmp eq i64 %342, 0, !mcsema_real_eip !102
  store i1 %347, i1* %ZF, align 1, !mcsema_real_eip !102
  %348 = xor i64 %_new_load_994, -9223372036854775808, !mcsema_real_eip !102
  %349 = and i64 %343, %348, !mcsema_real_eip !102
  %350 = icmp slt i64 %349, 0
  store i1 %350, i1* %OF, align 1, !mcsema_real_eip !102
  %351 = trunc i64 %342 to i8, !mcsema_real_eip !102
  %352 = call i8 @llvm.ctpop.i8(i8 %351), !mcsema_real_eip !102
  %353 = and i8 %352, 1
  %354 = icmp eq i8 %353, 0
  store i1 %354, i1* %PF, align 1, !mcsema_real_eip !102
  %355 = icmp ugt i64 %_new_load_994, -9
  store i1 %355, i1* %CF, align 1, !mcsema_real_eip !102
  store i64 %342, i64* %XAX, align 8, !mcsema_real_eip !102
  store i64 %342, i64* %XSI, align 8, !mcsema_real_eip !103
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_200 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.181 = load i64, i64* %XSP, align 8, !mcsema_real_eip !104
  %_new_gep_201 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_200, i64 -8
  %356 = add i64 %RSP_val.181, -8
  %_allin_new_bt_202 = bitcast i8* %_new_gep_201 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_202, align 8, !mcsema_real_eip !104
  store volatile i8* %_new_gep_201, i8** %_RSP_ptr_, align 8
  store i64 %356, i64* %XSP, align 8, !mcsema_real_eip !104
  %357 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %342, i64 4)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_426 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_427 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_426, i64 8
  store i8* %_gep_fix_427, i8** %_RSP_ptr_, align 8
  store i64 %357, i64* %XAX, align 8, !mcsema_real_eip !104
  %358 = trunc i64 %357 to i16
  %CX.184 = bitcast i64* %XCX to i16*, !mcsema_real_eip !105
  store i16 %358, i16* %CX.184, align 2, !mcsema_real_eip !105
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_203 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_204 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_203, i64 -38
  %359 = bitcast i8* %_new_gep_204 to i16*
  store i16 %358, i16* %359, align 2, !mcsema_real_eip !106
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_206 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_207 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_206, i64 -38
  %360 = ptrtoint i8* %_new_gep_207 to i64
  %_offset_above_rbp_998 = sub i64 %360, %_local_end_to_int_
  %_pot_address_in_parent_stack_999 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_998
  %_cond1_1000 = icmp ugt i8* %_new_gep_207, %_local_stack_end_ptr_
  %_cond2_1_1001 = icmp ugt i8* %_new_gep_207, %_parent_stack_end_ptr_
  %_cond2_2_1002 = icmp ult i8* %_new_gep_207, %_parent_stack_start_ptr_
  %_cond2_1003 = or i1 %_cond2_1_1001, %_cond2_2_1002
  %_cond4_1004 = icmp ule i8* %_pot_address_in_parent_stack_999, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1005 = and i1 %_cond1_1000, %_cond2_1003
  %_cond1_n_cond2_cond3_1006 = and i1 %_cond1_n_cond2_1005, %_cond4_1004
  %.v14 = select i1 %_cond1_n_cond2_cond3_1006, i8* %_pot_address_in_parent_stack_999, i8* %_new_gep_207
  %361 = bitcast i8* %.v14 to i16*
  %_new_load_1009 = load i16, i16* %361, align 2
  %362 = or i16 %_new_load_1009, 21845
  %363 = zext i16 %362 to i32
  %364 = zext i16 %362 to i64
  store i64 %364, i64* %XAX, align 8, !mcsema_real_eip !108
  %365 = add nsw i32 %363, -56663
  %366 = xor i32 %365, %363, !mcsema_real_eip !109
  %367 = and i32 %366, 16
  %368 = icmp eq i32 %367, 0
  store i1 %368, i1* %AF, align 1, !mcsema_real_eip !109
  %369 = trunc i32 %365 to i8, !mcsema_real_eip !109
  %370 = call i8 @llvm.ctpop.i8(i8 %369), !mcsema_real_eip !109
  %371 = and i8 %370, 1
  %372 = icmp eq i8 %371, 0
  store i1 %372, i1* %PF, align 1, !mcsema_real_eip !109
  %373 = icmp eq i32 %365, 0, !mcsema_real_eip !109
  store i1 %373, i1* %ZF, align 1, !mcsema_real_eip !109
  %374 = icmp ult i16 %362, -8873
  store i1 %374, i1* %SF, align 1, !mcsema_real_eip !109
  %375 = icmp ult i16 %362, -8873
  store i1 %375, i1* %CF, align 1, !mcsema_real_eip !109
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !109
  br i1 %373, label %block_0x20a, label %block_0x22a, !mcsema_real_eip !110

block_0x20a:                                      ; preds = %block_0x1d8
  %_new_load_1024 = load i16, i16* %361, align 2
  %376 = or i16 %_new_load_1024, -21846
  %377 = zext i16 %376 to i32
  %378 = zext i16 %376 to i64
  store i64 %378, i64* %XAX, align 8, !mcsema_real_eip !112
  %379 = add nsw i32 %377, -65211
  %380 = xor i32 %379, %377, !mcsema_real_eip !113
  %381 = and i32 %380, 16
  %382 = icmp eq i32 %381, 0
  store i1 %382, i1* %AF, align 1, !mcsema_real_eip !113
  %383 = trunc i32 %379 to i8, !mcsema_real_eip !113
  %384 = call i8 @llvm.ctpop.i8(i8 %383), !mcsema_real_eip !113
  %385 = and i8 %384, 1
  %386 = icmp eq i8 %385, 0
  store i1 %386, i1* %PF, align 1, !mcsema_real_eip !113
  %387 = icmp eq i32 %379, 0, !mcsema_real_eip !113
  store i1 %387, i1* %ZF, align 1, !mcsema_real_eip !113
  %388 = icmp ult i16 %376, -325
  store i1 %388, i1* %SF, align 1, !mcsema_real_eip !113
  %389 = icmp ult i16 %376, -325
  store i1 %389, i1* %CF, align 1, !mcsema_real_eip !113
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !113
  br i1 %387, label %block_0x231, label %block_0x22a, !mcsema_real_eip !114

block_0x22a:                                      ; preds = %block_0x20a, %block_0x1d8
  br label %block_0x231, !mcsema_real_eip !111

block_0x231:                                      ; preds = %block_0x20a, %block_0x22a
  %.sink = phi i32 [ 48059, %block_0x22a ], [ 43690, %block_0x20a ]
  %_new_gep_246 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_206, i64 -20
  %390 = bitcast i8* %_new_gep_246 to i32*
  store i32 %.sink, i32* %390, align 4
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !115
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !115
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !115
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !115
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !115
  store i64 0, i64* %XDI, align 8, !mcsema_real_eip !115
  store i64 8, i64* %XDX, align 8, !mcsema_real_eip !116
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_215 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_216 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_215, i64 -16
  %_ptr_to_int_1025 = ptrtoint i8* %_new_gep_216 to i64
  %_offset_above_rbp_1028 = sub i64 %_ptr_to_int_1025, %_local_end_to_int_
  %_pot_address_in_parent_stack_1029 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1028
  %_cond1_1030 = icmp ugt i8* %_new_gep_216, %_local_stack_end_ptr_
  %_cond2_1_1031 = icmp ugt i8* %_new_gep_216, %_parent_stack_end_ptr_
  %_cond2_2_1032 = icmp ult i8* %_new_gep_216, %_parent_stack_start_ptr_
  %_cond2_1033 = or i1 %_cond2_1_1031, %_cond2_2_1032
  %_cond4_1034 = icmp ule i8* %_pot_address_in_parent_stack_1029, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1035 = and i1 %_cond1_1030, %_cond2_1033
  %_cond1_n_cond2_cond3_1036 = and i1 %_cond1_n_cond2_1035, %_cond4_1034
  %_address_in_parent_stack_bt_1038._allin_new_bt_217.v = select i1 %_cond1_n_cond2_cond3_1036, i8* %_pot_address_in_parent_stack_1029, i8* %_new_gep_216
  %_address_in_parent_stack_bt_1038._allin_new_bt_217 = bitcast i8* %_address_in_parent_stack_bt_1038._allin_new_bt_217.v to i64*
  %_new_load_1039 = load i64, i64* %_address_in_parent_stack_bt_1038._allin_new_bt_217, align 8
  %391 = add i64 %_new_load_1039, 12, !mcsema_real_eip !118
  %392 = xor i64 %391, %_new_load_1039, !mcsema_real_eip !118
  %393 = and i64 %392, 16, !mcsema_real_eip !118
  %394 = icmp ne i64 %393, 0, !mcsema_real_eip !118
  store i1 %394, i1* %AF, align 1, !mcsema_real_eip !118
  %395 = icmp slt i64 %391, 0
  store i1 %395, i1* %SF, align 1, !mcsema_real_eip !118
  %396 = icmp eq i64 %391, 0, !mcsema_real_eip !118
  store i1 %396, i1* %ZF, align 1, !mcsema_real_eip !118
  %397 = xor i64 %_new_load_1039, -9223372036854775808, !mcsema_real_eip !118
  %398 = and i64 %392, %397, !mcsema_real_eip !118
  %399 = icmp slt i64 %398, 0
  store i1 %399, i1* %OF, align 1, !mcsema_real_eip !118
  %400 = trunc i64 %391 to i8, !mcsema_real_eip !118
  %401 = call i8 @llvm.ctpop.i8(i8 %400), !mcsema_real_eip !118
  %402 = and i8 %401, 1
  %403 = icmp eq i8 %402, 0
  store i1 %403, i1* %PF, align 1, !mcsema_real_eip !118
  %404 = icmp ugt i64 %_new_load_1039, -13
  store i1 %404, i1* %CF, align 1, !mcsema_real_eip !118
  store i64 %391, i64* %XAX, align 8, !mcsema_real_eip !118
  store i64 %391, i64* %XSI, align 8, !mcsema_real_eip !119
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_218 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.210 = load i64, i64* %XSP, align 8, !mcsema_real_eip !120
  %_new_gep_219 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_218, i64 -8
  %405 = add i64 %RSP_val.210, -8
  %_allin_new_bt_220 = bitcast i8* %_new_gep_219 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_220, align 8, !mcsema_real_eip !120
  store volatile i8* %_new_gep_219, i8** %_RSP_ptr_, align 8
  store i64 %405, i64* %XSP, align 8, !mcsema_real_eip !120
  %406 = call x86_64_sysvcc i64 @_read_bytes(i64 0, i64 %391, i64 8)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_428 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_429 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_428, i64 8
  store i8* %_gep_fix_429, i8** %_RSP_ptr_, align 8
  store i64 %406, i64* %XAX, align 8, !mcsema_real_eip !120
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_221 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_222 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_221, i64 -44
  %407 = trunc i64 %406 to i32
  %408 = bitcast i8* %_new_gep_222 to i32*
  store i32 %407, i32* %408, align 4, !mcsema_real_eip !121
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_224 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_225 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_224, i64 -44
  %409 = ptrtoint i8* %_new_gep_225 to i64
  %_offset_above_rbp_1043 = sub i64 %409, %_local_end_to_int_
  %_pot_address_in_parent_stack_1044 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1043
  %_cond1_1045 = icmp ugt i8* %_new_gep_225, %_local_stack_end_ptr_
  %_cond2_1_1046 = icmp ugt i8* %_new_gep_225, %_parent_stack_end_ptr_
  %_cond2_2_1047 = icmp ult i8* %_new_gep_225, %_parent_stack_start_ptr_
  %_cond2_1048 = or i1 %_cond2_1_1046, %_cond2_2_1047
  %_cond4_1049 = icmp ule i8* %_pot_address_in_parent_stack_1044, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1050 = and i1 %_cond1_1045, %_cond2_1048
  %_cond1_n_cond2_cond3_1051 = and i1 %_cond1_n_cond2_1050, %_cond4_1049
  %.v15 = select i1 %_cond1_n_cond2_cond3_1051, i8* %_pot_address_in_parent_stack_1044, i8* %_new_gep_225
  %410 = bitcast i8* %.v15 to i32*
  %_new_load_1054 = load i32, i32* %410, align 4
  %411 = xor i32 %_new_load_1054, -1534560611, !mcsema_real_eip !123
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !123
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !123
  %412 = icmp sgt i32 %_new_load_1054, -1
  store i1 %412, i1* %SF, align 1, !mcsema_real_eip !123
  %413 = icmp eq i32 %411, 0, !mcsema_real_eip !123
  store i1 %413, i1* %ZF, align 1, !mcsema_real_eip !123
  %414 = trunc i32 %411 to i8, !mcsema_real_eip !123
  %415 = call i8 @llvm.ctpop.i8(i8 %414), !mcsema_real_eip !123
  %416 = and i8 %415, 1
  %417 = icmp eq i8 %416, 0
  store i1 %417, i1* %PF, align 1, !mcsema_real_eip !123
  %418 = zext i32 %411 to i64, !mcsema_real_eip !123
  store i64 %418, i64* %XAX, align 8, !mcsema_real_eip !123
  %_new_gep_228 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_224, i64 -48
  %419 = bitcast i8* %_new_gep_228 to i32*
  store i32 %411, i32* %419, align 4, !mcsema_real_eip !124
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_230 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_231 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_230, i64 -48
  %420 = ptrtoint i8* %_new_gep_231 to i64
  %_offset_above_rbp_1058 = sub i64 %420, %_local_end_to_int_
  %_pot_address_in_parent_stack_1059 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1058
  %_cond1_1060 = icmp ugt i8* %_new_gep_231, %_local_stack_end_ptr_
  %_cond2_1_1061 = icmp ugt i8* %_new_gep_231, %_parent_stack_end_ptr_
  %_cond2_2_1062 = icmp ult i8* %_new_gep_231, %_parent_stack_start_ptr_
  %_cond2_1063 = or i1 %_cond2_1_1061, %_cond2_2_1062
  %_cond4_1064 = icmp ule i8* %_pot_address_in_parent_stack_1059, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1065 = and i1 %_cond1_1060, %_cond2_1063
  %_cond1_n_cond2_cond3_1066 = and i1 %_cond1_n_cond2_1065, %_cond4_1064
  %_address_in_parent_stack_bt_1068..v = select i1 %_cond1_n_cond2_cond3_1066, i8* %_pot_address_in_parent_stack_1059, i8* %_new_gep_231
  %_address_in_parent_stack_bt_1068. = bitcast i8* %_address_in_parent_stack_bt_1068..v to i32*
  %_new_load_1069 = load i32, i32* %_address_in_parent_stack_bt_1068., align 4
  %421 = trunc i32 %_new_load_1069 to i16
  %422 = icmp slt i16 %421, 0
  %423 = lshr i32 %_new_load_1069, 16
  store i1 %422, i1* %CF, align 1, !mcsema_real_eip !126
  %424 = icmp eq i32 %423, 0, !mcsema_real_eip !126
  store i1 %424, i1* %ZF, align 1, !mcsema_real_eip !126
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !126
  %425 = trunc i32 %423 to i8, !mcsema_real_eip !126
  %426 = call i8 @llvm.ctpop.i8(i8 %425), !mcsema_real_eip !126
  %427 = and i8 %426, 1
  %428 = icmp eq i8 %427, 0
  store i1 %428, i1* %PF, align 1, !mcsema_real_eip !126
  %429 = zext i32 %423 to i64, !mcsema_real_eip !126
  store i64 %429, i64* %XAX, align 8, !mcsema_real_eip !126
  %_new_gep_234 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_230, i64 -52
  %430 = bitcast i8* %_new_gep_234 to i32*
  store i32 %423, i32* %430, align 4, !mcsema_real_eip !127
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_236 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_237 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_236, i64 -48
  %431 = ptrtoint i8* %_new_gep_237 to i64
  %_offset_above_rbp_1073 = sub i64 %431, %_local_end_to_int_
  %_pot_address_in_parent_stack_1074 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1073
  %_cond1_1075 = icmp ugt i8* %_new_gep_237, %_local_stack_end_ptr_
  %_cond2_1_1076 = icmp ugt i8* %_new_gep_237, %_parent_stack_end_ptr_
  %_cond2_2_1077 = icmp ult i8* %_new_gep_237, %_parent_stack_start_ptr_
  %_cond2_1078 = or i1 %_cond2_1_1076, %_cond2_2_1077
  %_cond4_1079 = icmp ule i8* %_pot_address_in_parent_stack_1074, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1080 = and i1 %_cond1_1075, %_cond2_1078
  %_cond1_n_cond2_cond3_1081 = and i1 %_cond1_n_cond2_1080, %_cond4_1079
  %.v16 = select i1 %_cond1_n_cond2_cond3_1081, i8* %_pot_address_in_parent_stack_1074, i8* %_new_gep_237
  %432 = bitcast i8* %.v16 to i32*
  %_new_load_1084 = load i32, i32* %432, align 4
  %433 = and i32 %_new_load_1084, 65535, !mcsema_real_eip !129
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !129
  %434 = icmp eq i32 %433, 0, !mcsema_real_eip !129
  store i1 %434, i1* %ZF, align 1, !mcsema_real_eip !129
  %435 = trunc i32 %_new_load_1084 to i8, !mcsema_real_eip !129
  %436 = call i8 @llvm.ctpop.i8(i8 %435), !mcsema_real_eip !129
  %437 = and i8 %436, 1
  %438 = icmp eq i8 %437, 0
  store i1 %438, i1* %PF, align 1, !mcsema_real_eip !129
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !129
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !129
  %439 = zext i32 %433 to i64, !mcsema_real_eip !129
  store i64 %439, i64* %XAX, align 8, !mcsema_real_eip !129
  %_new_gep_240 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_236, i64 -56
  %440 = bitcast i8* %_new_gep_240 to i32*
  store i32 %433, i32* %440, align 4, !mcsema_real_eip !130
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_242 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_243 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_242, i64 -52
  %441 = ptrtoint i8* %_new_gep_243 to i64
  %_offset_above_rbp_1088 = sub i64 %441, %_local_end_to_int_
  %_pot_address_in_parent_stack_1089 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1088
  %_cond1_1090 = icmp ugt i8* %_new_gep_243, %_local_stack_end_ptr_
  %_cond2_1_1091 = icmp ugt i8* %_new_gep_243, %_parent_stack_end_ptr_
  %_cond2_2_1092 = icmp ult i8* %_new_gep_243, %_parent_stack_start_ptr_
  %_cond2_1093 = or i1 %_cond2_1_1091, %_cond2_2_1092
  %_cond4_1094 = icmp ule i8* %_pot_address_in_parent_stack_1089, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1095 = and i1 %_cond1_1090, %_cond2_1093
  %_cond1_n_cond2_cond3_1096 = and i1 %_cond1_n_cond2_1095, %_cond4_1094
  %_address_in_parent_stack_bt_1098..v = select i1 %_cond1_n_cond2_cond3_1096, i8* %_pot_address_in_parent_stack_1089, i8* %_new_gep_243
  %_address_in_parent_stack_bt_1098. = bitcast i8* %_address_in_parent_stack_bt_1098..v to i32*
  %_new_load_1099 = load i32, i32* %_address_in_parent_stack_bt_1098., align 4
  %442 = add i32 %_new_load_1099, -79
  %443 = xor i32 %442, %_new_load_1099, !mcsema_real_eip !131
  %444 = and i32 %443, 16, !mcsema_real_eip !131
  %445 = icmp ne i32 %444, 0, !mcsema_real_eip !131
  store i1 %445, i1* %AF, align 1, !mcsema_real_eip !131
  %446 = trunc i32 %442 to i8, !mcsema_real_eip !131
  %447 = call i8 @llvm.ctpop.i8(i8 %446), !mcsema_real_eip !131
  %448 = and i8 %447, 1
  %449 = icmp eq i8 %448, 0
  store i1 %449, i1* %PF, align 1, !mcsema_real_eip !131
  %450 = icmp eq i32 %442, 0, !mcsema_real_eip !131
  store i1 %450, i1* %ZF, align 1, !mcsema_real_eip !131
  %451 = icmp slt i32 %442, 0
  store i1 %451, i1* %SF, align 1, !mcsema_real_eip !131
  %452 = icmp ult i32 %_new_load_1099, 79, !mcsema_real_eip !131
  store i1 %452, i1* %CF, align 1, !mcsema_real_eip !131
  %453 = and i32 %443, %_new_load_1099, !mcsema_real_eip !131
  %454 = icmp slt i32 %453, 0
  store i1 %454, i1* %OF, align 1, !mcsema_real_eip !131
  br i1 %450, label %block_0x274, label %block_0x231.block_0x28c_crit_edge, !mcsema_real_eip !132

block_0x231.block_0x28c_crit_edge:                ; preds = %block_0x231
  %.pre = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_242, i64 -20
  %.pre22 = bitcast i8* %.pre to i32*
  br label %block_0x28c

block_0x274:                                      ; preds = %block_0x231
  %_new_gep_249 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_242, i64 -56
  %455 = ptrtoint i8* %_new_gep_249 to i64
  %_offset_above_rbp_1103 = sub i64 %455, %_local_end_to_int_
  %_pot_address_in_parent_stack_1104 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1103
  %_cond1_1105 = icmp ugt i8* %_new_gep_249, %_local_stack_end_ptr_
  %_cond2_1_1106 = icmp ugt i8* %_new_gep_249, %_parent_stack_end_ptr_
  %_cond2_2_1107 = icmp ult i8* %_new_gep_249, %_parent_stack_start_ptr_
  %_cond2_1108 = or i1 %_cond2_1_1106, %_cond2_2_1107
  %_cond4_1109 = icmp ule i8* %_pot_address_in_parent_stack_1104, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1110 = and i1 %_cond1_1105, %_cond2_1108
  %_cond1_n_cond2_cond3_1111 = and i1 %_cond1_n_cond2_1110, %_cond4_1109
  %_address_in_parent_stack_bt_1113..v = select i1 %_cond1_n_cond2_cond3_1111, i8* %_pot_address_in_parent_stack_1104, i8* %_new_gep_249
  %_address_in_parent_stack_bt_1113. = bitcast i8* %_address_in_parent_stack_bt_1113..v to i32*
  %_new_load_1114 = load i32, i32* %_address_in_parent_stack_bt_1113., align 4
  %456 = zext i32 %_new_load_1114 to i64, !mcsema_real_eip !133
  store i64 %456, i64* %XAX, align 8, !mcsema_real_eip !133
  %_new_gep_252 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_242, i64 -20
  %457 = ptrtoint i8* %_new_gep_252 to i64
  %458 = bitcast i8* %_new_gep_252 to i32*
  %_offset_above_rbp_1118 = sub i64 %457, %_local_end_to_int_
  %_pot_address_in_parent_stack_1119 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1118
  %_cond1_1120 = icmp ugt i8* %_new_gep_252, %_local_stack_end_ptr_
  %_cond2_1_1121 = icmp ugt i8* %_new_gep_252, %_parent_stack_end_ptr_
  %_cond2_2_1122 = icmp ult i8* %_new_gep_252, %_parent_stack_start_ptr_
  %_cond2_1123 = or i1 %_cond2_1_1121, %_cond2_2_1122
  %_cond4_1124 = icmp ule i8* %_pot_address_in_parent_stack_1119, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1125 = and i1 %_cond1_1120, %_cond2_1123
  %_cond1_n_cond2_cond3_1126 = and i1 %_cond1_n_cond2_1125, %_cond4_1124
  %_address_in_parent_stack_bt_1128 = bitcast i8* %_pot_address_in_parent_stack_1119 to i32*
  %459 = select i1 %_cond1_n_cond2_cond3_1126, i32* %_address_in_parent_stack_bt_1128, i32* %458
  %_new_load_1129 = load i32, i32* %459, align 4
  %460 = sub i32 %_new_load_1114, %_new_load_1129, !mcsema_real_eip !134
  %461 = xor i32 %460, %_new_load_1114, !mcsema_real_eip !134
  %462 = xor i32 %461, %_new_load_1129, !mcsema_real_eip !134
  %463 = and i32 %462, 16, !mcsema_real_eip !134
  %464 = icmp ne i32 %463, 0, !mcsema_real_eip !134
  store i1 %464, i1* %AF, align 1, !mcsema_real_eip !134
  %465 = trunc i32 %460 to i8, !mcsema_real_eip !134
  %466 = call i8 @llvm.ctpop.i8(i8 %465), !mcsema_real_eip !134
  %467 = and i8 %466, 1
  %468 = icmp eq i8 %467, 0
  store i1 %468, i1* %PF, align 1, !mcsema_real_eip !134
  %469 = icmp eq i32 %460, 0, !mcsema_real_eip !134
  store i1 %469, i1* %ZF, align 1, !mcsema_real_eip !134
  %470 = icmp slt i32 %460, 0
  store i1 %470, i1* %SF, align 1, !mcsema_real_eip !134
  %471 = icmp ult i32 %_new_load_1114, %_new_load_1129, !mcsema_real_eip !134
  store i1 %471, i1* %CF, align 1, !mcsema_real_eip !134
  %472 = xor i32 %_new_load_1129, %_new_load_1114, !mcsema_real_eip !134
  %473 = and i32 %461, %472, !mcsema_real_eip !134
  %474 = icmp slt i32 %473, 0
  store i1 %474, i1* %OF, align 1, !mcsema_real_eip !134
  br i1 %469, label %block_0x280, label %block_0x28c, !mcsema_real_eip !135

block_0x28c:                                      ; preds = %block_0x231.block_0x28c_crit_edge, %block_0x274
  %.pre-phi = phi i32* [ %.pre22, %block_0x231.block_0x28c_crit_edge ], [ %458, %block_0x274 ]
  store i32 48351, i32* %.pre-phi, align 4, !mcsema_real_eip !136
  br label %block_0x293, !mcsema_real_eip !133

block_0x293:                                      ; preds = %block_0x280, %block_0x28c
  store i64 8, i64* %XDX, align 8, !mcsema_real_eip !137
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_257 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_258 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_257, i64 -20
  %475 = ptrtoint i8* %_new_gep_258 to i64
  %_offset_above_rbp_1133 = sub i64 %475, %_local_end_to_int_
  %_pot_address_in_parent_stack_1134 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1133
  %_cond1_1135 = icmp ugt i8* %_new_gep_258, %_local_stack_end_ptr_
  %_cond2_1_1136 = icmp ugt i8* %_new_gep_258, %_parent_stack_end_ptr_
  %_cond2_2_1137 = icmp ult i8* %_new_gep_258, %_parent_stack_start_ptr_
  %_cond2_1138 = or i1 %_cond2_1_1136, %_cond2_2_1137
  %_cond4_1139 = icmp ule i8* %_pot_address_in_parent_stack_1134, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1140 = and i1 %_cond1_1135, %_cond2_1138
  %_cond1_n_cond2_cond3_1141 = and i1 %_cond1_n_cond2_1140, %_cond4_1139
  %_address_in_parent_stack_bt_1143..v = select i1 %_cond1_n_cond2_cond3_1141, i8* %_pot_address_in_parent_stack_1134, i8* %_new_gep_258
  %_address_in_parent_stack_bt_1143. = bitcast i8* %_address_in_parent_stack_bt_1143..v to i32*
  %_new_load_1144 = load i32, i32* %_address_in_parent_stack_bt_1143., align 4
  %476 = zext i32 %_new_load_1144 to i64, !mcsema_real_eip !138
  store i64 %476, i64* %XDI, align 8, !mcsema_real_eip !138
  %_new_gep_261 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_257, i64 -16
  %_ptr_to_int_1145 = ptrtoint i8* %_new_gep_261 to i64
  %_offset_above_rbp_1148 = sub i64 %_ptr_to_int_1145, %_local_end_to_int_
  %_pot_address_in_parent_stack_1149 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1148
  %_cond1_1150 = icmp ugt i8* %_new_gep_261, %_local_stack_end_ptr_
  %_cond2_1_1151 = icmp ugt i8* %_new_gep_261, %_parent_stack_end_ptr_
  %_cond2_2_1152 = icmp ult i8* %_new_gep_261, %_parent_stack_start_ptr_
  %_cond2_1153 = or i1 %_cond2_1_1151, %_cond2_2_1152
  %_cond4_1154 = icmp ule i8* %_pot_address_in_parent_stack_1149, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1155 = and i1 %_cond1_1150, %_cond2_1153
  %_cond1_n_cond2_cond3_1156 = and i1 %_cond1_n_cond2_1155, %_cond4_1154
  %.v17 = select i1 %_cond1_n_cond2_cond3_1156, i8* %_pot_address_in_parent_stack_1149, i8* %_new_gep_261
  %477 = bitcast i8* %.v17 to i64*
  %_new_load_1159 = load i64, i64* %477, align 8
  %478 = add i64 %_new_load_1159, 20, !mcsema_real_eip !140
  %479 = xor i64 %478, %_new_load_1159, !mcsema_real_eip !140
  %480 = and i64 %479, 16
  %481 = icmp eq i64 %480, 0
  store i1 %481, i1* %AF, align 1, !mcsema_real_eip !140
  %482 = icmp slt i64 %478, 0
  store i1 %482, i1* %SF, align 1, !mcsema_real_eip !140
  %483 = icmp eq i64 %478, 0, !mcsema_real_eip !140
  store i1 %483, i1* %ZF, align 1, !mcsema_real_eip !140
  %484 = xor i64 %_new_load_1159, -9223372036854775808, !mcsema_real_eip !140
  %485 = and i64 %479, %484, !mcsema_real_eip !140
  %486 = icmp slt i64 %485, 0
  store i1 %486, i1* %OF, align 1, !mcsema_real_eip !140
  %487 = trunc i64 %478 to i8, !mcsema_real_eip !140
  %488 = call i8 @llvm.ctpop.i8(i8 %487), !mcsema_real_eip !140
  %489 = and i8 %488, 1
  %490 = icmp eq i8 %489, 0
  store i1 %490, i1* %PF, align 1, !mcsema_real_eip !140
  %491 = icmp ugt i64 %_new_load_1159, -21
  store i1 %491, i1* %CF, align 1, !mcsema_real_eip !140
  store i64 %478, i64* %XAX, align 8, !mcsema_real_eip !140
  store i64 %478, i64* %XSI, align 8, !mcsema_real_eip !141
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_263 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.246 = load i64, i64* %XSP, align 8, !mcsema_real_eip !142
  %_new_gep_264 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_263, i64 -8
  %492 = add i64 %RSP_val.246, -8
  %_allin_new_bt_265 = bitcast i8* %_new_gep_264 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_265, align 8, !mcsema_real_eip !142
  store volatile i8* %_new_gep_264, i8** %_RSP_ptr_, align 8
  store i64 %492, i64* %XSP, align 8, !mcsema_real_eip !142
  %493 = call x86_64_sysvcc i64 @_read_bytes(i64 %476, i64 %478, i64 8)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_430 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_431 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_430, i64 8
  store i8* %_gep_fix_431, i8** %_RSP_ptr_, align 8
  store i64 %493, i64* %XAX, align 8, !mcsema_real_eip !142
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_266 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_267 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_266, i64 -60
  %494 = trunc i64 %493 to i32
  %495 = bitcast i8* %_new_gep_267 to i32*
  store i32 %494, i32* %495, align 4, !mcsema_real_eip !143
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_269 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_270 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_269, i64 -60
  %496 = ptrtoint i8* %_new_gep_270 to i64
  %497 = bitcast i8* %_new_gep_270 to i32*
  %_offset_above_rbp_1163 = sub i64 %496, %_local_end_to_int_
  %_pot_address_in_parent_stack_1164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1163
  %_cond1_1165 = icmp ugt i8* %_new_gep_270, %_local_stack_end_ptr_
  %_cond2_1_1166 = icmp ugt i8* %_new_gep_270, %_parent_stack_end_ptr_
  %_cond2_2_1167 = icmp ult i8* %_new_gep_270, %_parent_stack_start_ptr_
  %_cond2_1168 = or i1 %_cond2_1_1166, %_cond2_2_1167
  %_cond4_1169 = icmp ule i8* %_pot_address_in_parent_stack_1164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1170 = and i1 %_cond1_1165, %_cond2_1168
  %_cond1_n_cond2_cond3_1171 = and i1 %_cond1_n_cond2_1170, %_cond4_1169
  %_address_in_parent_stack_bt_1173 = bitcast i8* %_pot_address_in_parent_stack_1164 to i32*
  %_address_in_parent_stack_bt_1173. = select i1 %_cond1_n_cond2_cond3_1171, i32* %_address_in_parent_stack_bt_1173, i32* %497
  %_new_load_1174 = load i32, i32* %_address_in_parent_stack_bt_1173., align 4
  %498 = add i32 %_new_load_1174, -3
  %499 = xor i32 %498, %_new_load_1174, !mcsema_real_eip !145
  %500 = and i32 %499, 16, !mcsema_real_eip !145
  %501 = icmp ne i32 %500, 0, !mcsema_real_eip !145
  store i1 %501, i1* %AF, align 1, !mcsema_real_eip !145
  %502 = trunc i32 %498 to i8, !mcsema_real_eip !145
  %503 = call i8 @llvm.ctpop.i8(i8 %502), !mcsema_real_eip !145
  %504 = and i8 %503, 1
  %505 = icmp eq i8 %504, 0
  store i1 %505, i1* %PF, align 1, !mcsema_real_eip !145
  %506 = icmp eq i32 %498, 0, !mcsema_real_eip !145
  store i1 %506, i1* %ZF, align 1, !mcsema_real_eip !145
  %507 = icmp slt i32 %498, 0
  store i1 %507, i1* %SF, align 1, !mcsema_real_eip !145
  %508 = icmp ult i32 %_new_load_1174, 3, !mcsema_real_eip !145
  store i1 %508, i1* %CF, align 1, !mcsema_real_eip !145
  %509 = and i32 %499, %_new_load_1174, !mcsema_real_eip !145
  %510 = icmp slt i32 %509, 0
  store i1 %510, i1* %OF, align 1, !mcsema_real_eip !145
  %511 = zext i32 %498 to i64, !mcsema_real_eip !145
  store i64 %511, i64* %XAX, align 8, !mcsema_real_eip !145
  store i32 %498, i32* %497, align 4, !mcsema_real_eip !146
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_275 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_276 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_275, i64 -60
  %512 = ptrtoint i8* %_new_gep_276 to i64
  %513 = bitcast i8* %_new_gep_276 to i32*
  %_offset_above_rbp_1178 = sub i64 %512, %_local_end_to_int_
  %_pot_address_in_parent_stack_1179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1178
  %_cond1_1180 = icmp ugt i8* %_new_gep_276, %_local_stack_end_ptr_
  %_cond2_1_1181 = icmp ugt i8* %_new_gep_276, %_parent_stack_end_ptr_
  %_cond2_2_1182 = icmp ult i8* %_new_gep_276, %_parent_stack_start_ptr_
  %_cond2_1183 = or i1 %_cond2_1_1181, %_cond2_2_1182
  %_cond4_1184 = icmp ule i8* %_pot_address_in_parent_stack_1179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1185 = and i1 %_cond1_1180, %_cond2_1183
  %_cond1_n_cond2_cond3_1186 = and i1 %_cond1_n_cond2_1185, %_cond4_1184
  %_address_in_parent_stack_bt_1188 = bitcast i8* %_pot_address_in_parent_stack_1179 to i32*
  %514 = select i1 %_cond1_n_cond2_cond3_1186, i32* %_address_in_parent_stack_bt_1188, i32* %513
  %_new_load_1189 = load i32, i32* %514, align 4
  %515 = and i32 %_new_load_1189, 7, !mcsema_real_eip !148
  %516 = icmp eq i32 %515, 0
  %517 = trunc i32 %515 to i8
  %518 = call i8 @llvm.ctpop.i8(i8 %517)
  %519 = and i8 %518, 1
  %520 = icmp eq i8 %519, 0
  %521 = zext i32 %515 to i64, !mcsema_real_eip !148
  store i64 %521, i64* %XAX, align 8, !mcsema_real_eip !148
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !149
  store i1 %520, i1* %PF, align 1, !mcsema_real_eip !149
  store i1 %516, i1* %ZF, align 1, !mcsema_real_eip !149
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !149
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !149
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !149
  br i1 %516, label %block_0x2d2, label %block_0x417, !mcsema_real_eip !150

block_0x280:                                      ; preds = %block_0x274
  store i32 0, i32* %458, align 4, !mcsema_real_eip !151
  br label %block_0x293, !mcsema_real_eip !152

block_0x2d2:                                      ; preds = %block_0x293
  %_new_load_1204 = load i32, i32* %514, align 4
  %522 = xor i32 %_new_load_1204, -2147483648
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !154
  %523 = trunc i32 %_new_load_1204 to i8, !mcsema_real_eip !154
  %524 = call i8 @llvm.ctpop.i8(i8 %523), !mcsema_real_eip !154
  %525 = and i8 %524, 1
  %526 = icmp eq i8 %525, 0
  store i1 %526, i1* %PF, align 1, !mcsema_real_eip !154
  %527 = icmp eq i32 %522, 0, !mcsema_real_eip !154
  store i1 %527, i1* %ZF, align 1, !mcsema_real_eip !154
  %528 = icmp sgt i32 %_new_load_1204, -1
  store i1 %528, i1* %SF, align 1, !mcsema_real_eip !154
  store i1 %528, i1* %CF, align 1, !mcsema_real_eip !154
  store i1 %528, i1* %OF, align 1, !mcsema_real_eip !154
  %529 = zext i32 %522 to i64, !mcsema_real_eip !154
  store i64 %529, i64* %XAX, align 8, !mcsema_real_eip !154
  store i32 %522, i32* %513, align 4, !mcsema_real_eip !155
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_290 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_291 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_290, i64 -60
  %530 = ptrtoint i8* %_new_gep_291 to i64
  %531 = bitcast i8* %_new_gep_291 to i32*
  %_offset_above_rbp_1208 = sub i64 %530, %_local_end_to_int_
  %_pot_address_in_parent_stack_1209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1208
  %_cond1_1210 = icmp ugt i8* %_new_gep_291, %_local_stack_end_ptr_
  %_cond2_1_1211 = icmp ugt i8* %_new_gep_291, %_parent_stack_end_ptr_
  %_cond2_2_1212 = icmp ult i8* %_new_gep_291, %_parent_stack_start_ptr_
  %_cond2_1213 = or i1 %_cond2_1_1211, %_cond2_2_1212
  %_cond4_1214 = icmp ule i8* %_pot_address_in_parent_stack_1209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1215 = and i1 %_cond1_1210, %_cond2_1213
  %_cond1_n_cond2_cond3_1216 = and i1 %_cond1_n_cond2_1215, %_cond4_1214
  %_address_in_parent_stack_bt_1218 = bitcast i8* %_pot_address_in_parent_stack_1209 to i32*
  %532 = select i1 %_cond1_n_cond2_cond3_1216, i32* %_address_in_parent_stack_bt_1218, i32* %531
  %_new_load_1219 = load i32, i32* %532, align 4
  %533 = add i32 %_new_load_1219, -268435455
  %534 = xor i32 %533, %_new_load_1219, !mcsema_real_eip !156
  %535 = and i32 %534, 16
  %536 = icmp eq i32 %535, 0
  store i1 %536, i1* %AF, align 1, !mcsema_real_eip !156
  %537 = trunc i32 %533 to i8, !mcsema_real_eip !156
  %538 = call i8 @llvm.ctpop.i8(i8 %537), !mcsema_real_eip !156
  %539 = and i8 %538, 1
  %540 = icmp eq i8 %539, 0
  store i1 %540, i1* %PF, align 1, !mcsema_real_eip !156
  %541 = icmp eq i32 %533, 0, !mcsema_real_eip !156
  store i1 %541, i1* %ZF, align 1, !mcsema_real_eip !156
  %542 = icmp slt i32 %533, 0
  store i1 %542, i1* %SF, align 1, !mcsema_real_eip !156
  %543 = icmp ult i32 %_new_load_1219, 268435455, !mcsema_real_eip !156
  store i1 %543, i1* %CF, align 1, !mcsema_real_eip !156
  %544 = and i32 %534, %_new_load_1219, !mcsema_real_eip !156
  %545 = icmp slt i32 %544, 0
  store i1 %545, i1* %OF, align 1, !mcsema_real_eip !156
  %546 = or i1 %543, %541, !mcsema_real_eip !157
  br i1 %546, label %block_0x2f6, label %block_0x417, !mcsema_real_eip !157

block_0x2f6:                                      ; preds = %block_0x2d2
  store i64 10000, i64* %XAX, align 8, !mcsema_real_eip !158
  %_new_load_1234 = load i32, i32* %532, align 4
  %547 = xor i32 %_new_load_1234, 13631488, !mcsema_real_eip !160
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !160
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !160
  %548 = icmp slt i32 %_new_load_1234, 0
  store i1 %548, i1* %SF, align 1, !mcsema_real_eip !160
  %549 = icmp eq i32 %547, 0, !mcsema_real_eip !160
  store i1 %549, i1* %ZF, align 1, !mcsema_real_eip !160
  %550 = trunc i32 %_new_load_1234 to i8, !mcsema_real_eip !160
  %551 = call i8 @llvm.ctpop.i8(i8 %550), !mcsema_real_eip !160
  %552 = and i8 %551, 1
  %553 = icmp eq i8 %552, 0
  store i1 %553, i1* %PF, align 1, !mcsema_real_eip !160
  %554 = zext i32 %547 to i64, !mcsema_real_eip !160
  store i64 %554, i64* %XCX, align 8, !mcsema_real_eip !160
  store i32 %547, i32* %531, align 4, !mcsema_real_eip !161
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_302 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_303 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_302, i64 -60
  %555 = ptrtoint i8* %_new_gep_303 to i64
  %556 = bitcast i8* %_new_gep_303 to i32*
  %_offset_above_rbp_1238 = sub i64 %555, %_local_end_to_int_
  %_pot_address_in_parent_stack_1239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1238
  %_cond1_1240 = icmp ugt i8* %_new_gep_303, %_local_stack_end_ptr_
  %_cond2_1_1241 = icmp ugt i8* %_new_gep_303, %_parent_stack_end_ptr_
  %_cond2_2_1242 = icmp ult i8* %_new_gep_303, %_parent_stack_start_ptr_
  %_cond2_1243 = or i1 %_cond2_1_1241, %_cond2_2_1242
  %_cond4_1244 = icmp ule i8* %_pot_address_in_parent_stack_1239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1245 = and i1 %_cond1_1240, %_cond2_1243
  %_cond1_n_cond2_cond3_1246 = and i1 %_cond1_n_cond2_1245, %_cond4_1244
  %_address_in_parent_stack_bt_1248 = bitcast i8* %_pot_address_in_parent_stack_1239 to i32*
  %557 = select i1 %_cond1_n_cond2_cond3_1246, i32* %_address_in_parent_stack_bt_1248, i32* %556
  %_new_load_1249 = load i32, i32* %557, align 4
  %558 = and i32 %_new_load_1249, 8, !mcsema_real_eip !163
  %559 = icmp ne i32 %558, 0, !mcsema_real_eip !163
  %560 = lshr i32 %_new_load_1249, 4
  store i1 %559, i1* %CF, align 1, !mcsema_real_eip !163
  %561 = icmp eq i32 %560, 0, !mcsema_real_eip !163
  store i1 %561, i1* %ZF, align 1, !mcsema_real_eip !163
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !163
  %562 = trunc i32 %560 to i8, !mcsema_real_eip !163
  %563 = call i8 @llvm.ctpop.i8(i8 %562), !mcsema_real_eip !163
  %564 = and i8 %563, 1
  %565 = icmp eq i8 %564, 0
  store i1 %565, i1* %PF, align 1, !mcsema_real_eip !163
  %566 = zext i32 %560 to i64, !mcsema_real_eip !163
  store i64 %566, i64* %XCX, align 8, !mcsema_real_eip !163
  store i32 %560, i32* %556, align 4, !mcsema_real_eip !164
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_308 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_309 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_308, i64 -60
  %567 = ptrtoint i8* %_new_gep_309 to i64
  %568 = bitcast i8* %_new_gep_309 to i32*
  %_offset_above_rbp_1253 = sub i64 %567, %_local_end_to_int_
  %_pot_address_in_parent_stack_1254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1253
  %_cond1_1255 = icmp ugt i8* %_new_gep_309, %_local_stack_end_ptr_
  %_cond2_1_1256 = icmp ugt i8* %_new_gep_309, %_parent_stack_end_ptr_
  %_cond2_2_1257 = icmp ult i8* %_new_gep_309, %_parent_stack_start_ptr_
  %_cond2_1258 = or i1 %_cond2_1_1256, %_cond2_2_1257
  %_cond4_1259 = icmp ule i8* %_pot_address_in_parent_stack_1254, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1260 = and i1 %_cond1_1255, %_cond2_1258
  %_cond1_n_cond2_cond3_1261 = and i1 %_cond1_n_cond2_1260, %_cond4_1259
  %_address_in_parent_stack_bt_1263 = bitcast i8* %_pot_address_in_parent_stack_1254 to i32*
  %_address_in_parent_stack_bt_1263. = select i1 %_cond1_n_cond2_cond3_1261, i32* %_address_in_parent_stack_bt_1263, i32* %568
  %_new_load_1264 = load i32, i32* %_address_in_parent_stack_bt_1263., align 4
  %569 = add i32 %_new_load_1264, -226
  %570 = xor i32 %569, %_new_load_1264, !mcsema_real_eip !166
  %571 = and i32 %570, 16, !mcsema_real_eip !166
  %572 = icmp ne i32 %571, 0, !mcsema_real_eip !166
  store i1 %572, i1* %AF, align 1, !mcsema_real_eip !166
  %573 = trunc i32 %569 to i8, !mcsema_real_eip !166
  %574 = call i8 @llvm.ctpop.i8(i8 %573), !mcsema_real_eip !166
  %575 = and i8 %574, 1
  %576 = icmp eq i8 %575, 0
  store i1 %576, i1* %PF, align 1, !mcsema_real_eip !166
  %577 = icmp eq i32 %569, 0, !mcsema_real_eip !166
  store i1 %577, i1* %ZF, align 1, !mcsema_real_eip !166
  %578 = icmp slt i32 %569, 0
  store i1 %578, i1* %SF, align 1, !mcsema_real_eip !166
  %579 = icmp ult i32 %_new_load_1264, 226, !mcsema_real_eip !166
  store i1 %579, i1* %CF, align 1, !mcsema_real_eip !166
  %580 = and i32 %570, %_new_load_1264, !mcsema_real_eip !166
  %581 = icmp slt i32 %580, 0
  store i1 %581, i1* %OF, align 1, !mcsema_real_eip !166
  %582 = zext i32 %569 to i64, !mcsema_real_eip !166
  store i64 %582, i64* %XCX, align 8, !mcsema_real_eip !166
  store i32 %569, i32* %568, align 4, !mcsema_real_eip !167
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_314 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_315 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_314, i64 -60
  %583 = ptrtoint i8* %_new_gep_315 to i64
  %_offset_above_rbp_1268 = sub i64 %583, %_local_end_to_int_
  %_pot_address_in_parent_stack_1269 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1268
  %_cond1_1270 = icmp ugt i8* %_new_gep_315, %_local_stack_end_ptr_
  %_cond2_1_1271 = icmp ugt i8* %_new_gep_315, %_parent_stack_end_ptr_
  %_cond2_2_1272 = icmp ult i8* %_new_gep_315, %_parent_stack_start_ptr_
  %_cond2_1273 = or i1 %_cond2_1_1271, %_cond2_2_1272
  %_cond4_1274 = icmp ule i8* %_pot_address_in_parent_stack_1269, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1275 = and i1 %_cond1_1270, %_cond2_1273
  %_cond1_n_cond2_cond3_1276 = and i1 %_cond1_n_cond2_1275, %_cond4_1274
  %.v18 = select i1 %_cond1_n_cond2_cond3_1276, i8* %_pot_address_in_parent_stack_1269, i8* %_new_gep_315
  %584 = bitcast i8* %.v18 to i32*
  %_new_load_1279 = load i32, i32* %584, align 4
  %585 = zext i32 %_new_load_1279 to i64, !mcsema_real_eip !168
  store i64 %585, i64* %XCX, align 8, !mcsema_real_eip !168
  %_new_gep_318 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_314, i64 -68
  %EAX_val.291 = load i32, i32* %EAX.9, align 4, !mcsema_real_eip !169
  %586 = bitcast i8* %_new_gep_318 to i32*
  store i32 %EAX_val.291, i32* %586, align 4, !mcsema_real_eip !169
  %ECX_val.293 = load i32, i32* %ECX.12, align 4, !mcsema_real_eip !170
  %587 = zext i32 %ECX_val.293 to i64, !mcsema_real_eip !170
  store i64 %587, i64* %XAX, align 8, !mcsema_real_eip !170
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !171
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !171
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !171
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !171
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !171
  store i64 0, i64* %XDX, align 8, !mcsema_real_eip !171
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_320 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_321 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_320, i64 -68
  %588 = ptrtoint i8* %_new_gep_321 to i64
  %_offset_above_rbp_1283 = sub i64 %588, %_local_end_to_int_
  %_pot_address_in_parent_stack_1284 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1283
  %_cond1_1285 = icmp ugt i8* %_new_gep_321, %_local_stack_end_ptr_
  %_cond2_1_1286 = icmp ugt i8* %_new_gep_321, %_parent_stack_end_ptr_
  %_cond2_2_1287 = icmp ult i8* %_new_gep_321, %_parent_stack_start_ptr_
  %_cond2_1288 = or i1 %_cond2_1_1286, %_cond2_2_1287
  %_cond4_1289 = icmp ule i8* %_pot_address_in_parent_stack_1284, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1290 = and i1 %_cond1_1285, %_cond2_1288
  %_cond1_n_cond2_cond3_1291 = and i1 %_cond1_n_cond2_1290, %_cond4_1289
  %_address_in_parent_stack_bt_1293..v = select i1 %_cond1_n_cond2_cond3_1291, i8* %_pot_address_in_parent_stack_1284, i8* %_new_gep_321
  %_address_in_parent_stack_bt_1293. = bitcast i8* %_address_in_parent_stack_bt_1293..v to i32*
  %_new_load_1294 = load i32, i32* %_address_in_parent_stack_bt_1293., align 4
  %589 = zext i32 %_new_load_1294 to i64
  store i64 %589, i64* %XCX, align 8, !mcsema_real_eip !172
  %590 = sext i32 %ECX_val.293 to i64, !mcsema_real_eip !173
  %591 = udiv i64 %590, %589, !mcsema_real_eip !173
  %592 = urem i64 %590, %589, !mcsema_real_eip !173
  store i64 %592, i64* %XDX, align 8, !mcsema_real_eip !173
  %593 = and i64 %591, 4294967295
  store i64 %593, i64* %XAX, align 8, !mcsema_real_eip !173
  %_new_gep_324 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_320, i64 -60
  %594 = trunc i64 %591 to i32
  %595 = bitcast i8* %_new_gep_324 to i32*
  store i32 %594, i32* %595, align 4, !mcsema_real_eip !174
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_326 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_327 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_326, i64 -60
  %596 = ptrtoint i8* %_new_gep_327 to i64
  %_offset_above_rbp_1298 = sub i64 %596, %_local_end_to_int_
  %_pot_address_in_parent_stack_1299 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1298
  %_cond1_1300 = icmp ugt i8* %_new_gep_327, %_local_stack_end_ptr_
  %_cond2_1_1301 = icmp ugt i8* %_new_gep_327, %_parent_stack_end_ptr_
  %_cond2_2_1302 = icmp ult i8* %_new_gep_327, %_parent_stack_start_ptr_
  %_cond2_1303 = or i1 %_cond2_1_1301, %_cond2_2_1302
  %_cond4_1304 = icmp ule i8* %_pot_address_in_parent_stack_1299, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1305 = and i1 %_cond1_1300, %_cond2_1303
  %_cond1_n_cond2_cond3_1306 = and i1 %_cond1_n_cond2_1305, %_cond4_1304
  %.v19 = select i1 %_cond1_n_cond2_cond3_1306, i8* %_pot_address_in_parent_stack_1299, i8* %_new_gep_327
  %597 = bitcast i8* %.v19 to i32*
  %_new_load_1309 = load i32, i32* %597, align 4
  %598 = add i32 %_new_load_1309, -3
  %599 = xor i32 %598, %_new_load_1309, !mcsema_real_eip !175
  %600 = and i32 %599, 16, !mcsema_real_eip !175
  %601 = icmp ne i32 %600, 0, !mcsema_real_eip !175
  store i1 %601, i1* %AF, align 1, !mcsema_real_eip !175
  %602 = trunc i32 %598 to i8, !mcsema_real_eip !175
  %603 = call i8 @llvm.ctpop.i8(i8 %602), !mcsema_real_eip !175
  %604 = and i8 %603, 1
  %605 = icmp eq i8 %604, 0
  store i1 %605, i1* %PF, align 1, !mcsema_real_eip !175
  %606 = icmp eq i32 %598, 0, !mcsema_real_eip !175
  store i1 %606, i1* %ZF, align 1, !mcsema_real_eip !175
  %607 = icmp slt i32 %598, 0
  store i1 %607, i1* %SF, align 1, !mcsema_real_eip !175
  %608 = icmp ult i32 %_new_load_1309, 3, !mcsema_real_eip !175
  store i1 %608, i1* %CF, align 1, !mcsema_real_eip !175
  %609 = and i32 %599, %_new_load_1309, !mcsema_real_eip !175
  %610 = icmp slt i32 %609, 0
  store i1 %610, i1* %OF, align 1, !mcsema_real_eip !175
  br i1 %606, label %block_0x343, label %block_0x338, !mcsema_real_eip !176

block_0x338:                                      ; preds = %block_0x2f6
  %_new_load_1324 = load i32, i32* %597, align 4
  %611 = zext i32 %_new_load_1324 to i64, !mcsema_real_eip !177
  store i64 %611, i64* %XAX, align 8, !mcsema_real_eip !177
  br label %block_0x417, !mcsema_real_eip !178

block_0x343:                                      ; preds = %block_0x2f6
  store i64 4, i64* %XDX, align 8, !mcsema_real_eip !179
  %_new_gep_336 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_326, i64 -20
  %612 = ptrtoint i8* %_new_gep_336 to i64
  %_offset_above_rbp_1328 = sub i64 %612, %_local_end_to_int_
  %_pot_address_in_parent_stack_1329 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1328
  %_cond1_1330 = icmp ugt i8* %_new_gep_336, %_local_stack_end_ptr_
  %_cond2_1_1331 = icmp ugt i8* %_new_gep_336, %_parent_stack_end_ptr_
  %_cond2_2_1332 = icmp ult i8* %_new_gep_336, %_parent_stack_start_ptr_
  %_cond2_1333 = or i1 %_cond2_1_1331, %_cond2_2_1332
  %_cond4_1334 = icmp ule i8* %_pot_address_in_parent_stack_1329, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1335 = and i1 %_cond1_1330, %_cond2_1333
  %_cond1_n_cond2_cond3_1336 = and i1 %_cond1_n_cond2_1335, %_cond4_1334
  %_address_in_parent_stack_bt_1338..v = select i1 %_cond1_n_cond2_cond3_1336, i8* %_pot_address_in_parent_stack_1329, i8* %_new_gep_336
  %_address_in_parent_stack_bt_1338. = bitcast i8* %_address_in_parent_stack_bt_1338..v to i32*
  %_new_load_1339 = load i32, i32* %_address_in_parent_stack_bt_1338., align 4
  %613 = zext i32 %_new_load_1339 to i64, !mcsema_real_eip !180
  store i64 %613, i64* %XDI, align 8, !mcsema_real_eip !180
  %_new_gep_339 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_326, i64 -16
  %_ptr_to_int_1340 = ptrtoint i8* %_new_gep_339 to i64
  %_offset_above_rbp_1343 = sub i64 %_ptr_to_int_1340, %_local_end_to_int_
  %_pot_address_in_parent_stack_1344 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1343
  %_cond1_1345 = icmp ugt i8* %_new_gep_339, %_local_stack_end_ptr_
  %_cond2_1_1346 = icmp ugt i8* %_new_gep_339, %_parent_stack_end_ptr_
  %_cond2_2_1347 = icmp ult i8* %_new_gep_339, %_parent_stack_start_ptr_
  %_cond2_1348 = or i1 %_cond2_1_1346, %_cond2_2_1347
  %_cond4_1349 = icmp ule i8* %_pot_address_in_parent_stack_1344, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1350 = and i1 %_cond1_1345, %_cond2_1348
  %_cond1_n_cond2_cond3_1351 = and i1 %_cond1_n_cond2_1350, %_cond4_1349
  %.v20 = select i1 %_cond1_n_cond2_cond3_1351, i8* %_pot_address_in_parent_stack_1344, i8* %_new_gep_339
  %614 = bitcast i8* %.v20 to i64*
  %_new_load_1354 = load i64, i64* %614, align 8
  %615 = add i64 %_new_load_1354, 28, !mcsema_real_eip !182
  %616 = xor i64 %615, %_new_load_1354, !mcsema_real_eip !182
  %617 = and i64 %616, 16
  %618 = icmp eq i64 %617, 0
  store i1 %618, i1* %AF, align 1, !mcsema_real_eip !182
  %619 = icmp slt i64 %615, 0
  store i1 %619, i1* %SF, align 1, !mcsema_real_eip !182
  %620 = icmp eq i64 %615, 0, !mcsema_real_eip !182
  store i1 %620, i1* %ZF, align 1, !mcsema_real_eip !182
  %621 = xor i64 %_new_load_1354, -9223372036854775808, !mcsema_real_eip !182
  %622 = and i64 %616, %621, !mcsema_real_eip !182
  %623 = icmp slt i64 %622, 0
  store i1 %623, i1* %OF, align 1, !mcsema_real_eip !182
  %624 = trunc i64 %615 to i8, !mcsema_real_eip !182
  %625 = call i8 @llvm.ctpop.i8(i8 %624), !mcsema_real_eip !182
  %626 = and i8 %625, 1
  %627 = icmp eq i8 %626, 0
  store i1 %627, i1* %PF, align 1, !mcsema_real_eip !182
  %628 = icmp ugt i64 %_new_load_1354, -29
  store i1 %628, i1* %CF, align 1, !mcsema_real_eip !182
  store i64 %615, i64* %XAX, align 8, !mcsema_real_eip !182
  store i64 %615, i64* %XSI, align 8, !mcsema_real_eip !183
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_341 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.317 = load i64, i64* %XSP, align 8, !mcsema_real_eip !184
  %_new_gep_342 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_341, i64 -8
  %629 = add i64 %RSP_val.317, -8
  %_allin_new_bt_343 = bitcast i8* %_new_gep_342 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_343, align 8, !mcsema_real_eip !184
  store volatile i8* %_new_gep_342, i8** %_RSP_ptr_, align 8
  store i64 %629, i64* %XSP, align 8, !mcsema_real_eip !184
  %630 = call x86_64_sysvcc i64 @_read_bytes(i64 %613, i64 %615, i64 4)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_432 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_433 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_432, i64 8
  store i8* %_gep_fix_433, i8** %_RSP_ptr_, align 8
  store i64 %630, i64* %XAX, align 8, !mcsema_real_eip !184
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_344 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_345 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_344, i64 -64
  %631 = trunc i64 %630 to i32
  %632 = bitcast i8* %_new_gep_345 to i32*
  store i32 %631, i32* %632, align 4, !mcsema_real_eip !185
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_347 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_348 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_347, i64 -16
  %_ptr_to_int_1355 = ptrtoint i8* %_new_gep_348 to i64
  %_offset_above_rbp_1358 = sub i64 %_ptr_to_int_1355, %_local_end_to_int_
  %_pot_address_in_parent_stack_1359 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1358
  %_cond1_1360 = icmp ugt i8* %_new_gep_348, %_local_stack_end_ptr_
  %_cond2_1_1361 = icmp ugt i8* %_new_gep_348, %_parent_stack_end_ptr_
  %_cond2_2_1362 = icmp ult i8* %_new_gep_348, %_parent_stack_start_ptr_
  %_cond2_1363 = or i1 %_cond2_1_1361, %_cond2_2_1362
  %_cond4_1364 = icmp ule i8* %_pot_address_in_parent_stack_1359, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1365 = and i1 %_cond1_1360, %_cond2_1363
  %_cond1_n_cond2_cond3_1366 = and i1 %_cond1_n_cond2_1365, %_cond4_1364
  %_address_in_parent_stack_bt_1368._allin_new_bt_349.v = select i1 %_cond1_n_cond2_cond3_1366, i8* %_pot_address_in_parent_stack_1359, i8* %_new_gep_348
  %_address_in_parent_stack_bt_1368._allin_new_bt_349 = bitcast i8* %_address_in_parent_stack_bt_1368._allin_new_bt_349.v to i64*
  %_new_load_1369 = load i64, i64* %_address_in_parent_stack_bt_1368._allin_new_bt_349, align 8
  store i64 %_new_load_1369, i64* %XSI, align 8, !mcsema_real_eip !186
  %633 = add i64 %_new_load_1369, 28, !mcsema_real_eip !187
  %634 = inttoptr i64 %633 to i8*, !mcsema_real_eip !187
  %_offset_above_rbp_1372 = sub i64 %633, %_local_end_to_int_
  %_pot_address_in_parent_stack_1373 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1372
  %_cond1_1374 = icmp ugt i8* %634, %_local_stack_end_ptr_
  %_cond2_1_1375 = icmp ugt i8* %634, %_parent_stack_end_ptr_
  %_cond2_2_1376 = icmp ult i8* %634, %_parent_stack_start_ptr_
  %_cond2_1377 = or i1 %_cond2_1_1375, %_cond2_2_1376
  %_cond4_1378 = icmp ule i8* %_pot_address_in_parent_stack_1373, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1379 = and i1 %_cond1_1374, %_cond2_1377
  %_cond1_n_cond2_cond3_1380 = and i1 %_cond4_1378, %_cond1_n_cond2_1379
  %635 = select i1 %_cond1_n_cond2_cond3_1380, i8* %_pot_address_in_parent_stack_1373, i8* %634
  %_new_load_1382 = load i8, i8* %635, align 1
  %636 = sext i8 %_new_load_1382 to i64
  %637 = and i64 %636, 4294967295
  store i64 %637, i64* %XAX, align 8, !mcsema_real_eip !187
  %638 = sext i8 %_new_load_1382 to i32
  %639 = add nsw i32 %638, -100
  %640 = xor i32 %639, %638, !mcsema_real_eip !188
  %641 = and i32 %640, 16, !mcsema_real_eip !188
  %642 = icmp ne i32 %641, 0, !mcsema_real_eip !188
  store i1 %642, i1* %AF, align 1, !mcsema_real_eip !188
  %643 = trunc i32 %639 to i8, !mcsema_real_eip !188
  %644 = call i8 @llvm.ctpop.i8(i8 %643), !mcsema_real_eip !188
  %645 = and i8 %644, 1
  %646 = icmp eq i8 %645, 0
  store i1 %646, i1* %PF, align 1, !mcsema_real_eip !188
  %647 = icmp eq i32 %639, 0, !mcsema_real_eip !188
  store i1 %647, i1* %ZF, align 1, !mcsema_real_eip !188
  %648 = icmp slt i8 %_new_load_1382, 100
  store i1 %648, i1* %SF, align 1, !mcsema_real_eip !188
  %649 = icmp ult i8 %_new_load_1382, 100
  store i1 %649, i1* %CF, align 1, !mcsema_real_eip !188
  %650 = and i32 %640, %638, !mcsema_real_eip !188
  %651 = icmp slt i32 %650, 0
  store i1 %651, i1* %OF, align 1, !mcsema_real_eip !188
  br i1 %647, label %block_0x36f, label %block_0x38e, !mcsema_real_eip !189

block_0x36f:                                      ; preds = %block_0x343
  %_new_load_1397 = load i64, i64* %_address_in_parent_stack_bt_1368._allin_new_bt_349, align 8
  store i64 %_new_load_1397, i64* %XAX, align 8, !mcsema_real_eip !190
  %652 = add i64 %_new_load_1397, 29, !mcsema_real_eip !191
  %653 = inttoptr i64 %652 to i8*, !mcsema_real_eip !191
  %_offset_above_rbp_1400 = sub i64 %652, %_local_end_to_int_
  %_pot_address_in_parent_stack_1401 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1400
  %_cond1_1402 = icmp ugt i8* %653, %_local_stack_end_ptr_
  %_cond2_1_1403 = icmp ugt i8* %653, %_parent_stack_end_ptr_
  %_cond2_2_1404 = icmp ult i8* %653, %_parent_stack_start_ptr_
  %_cond2_1405 = or i1 %_cond2_1_1403, %_cond2_2_1404
  %_cond4_1406 = icmp ule i8* %_pot_address_in_parent_stack_1401, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1407 = and i1 %_cond1_1402, %_cond2_1405
  %_cond1_n_cond2_cond3_1408 = and i1 %_cond4_1406, %_cond1_n_cond2_1407
  %654 = select i1 %_cond1_n_cond2_cond3_1408, i8* %_pot_address_in_parent_stack_1401, i8* %653
  %_new_load_1410 = load i8, i8* %654, align 1
  %655 = sext i8 %_new_load_1410 to i64
  %656 = and i64 %655, 4294967295
  store i64 %656, i64* %XCX, align 8, !mcsema_real_eip !191
  %657 = sext i8 %_new_load_1410 to i32
  %658 = add nsw i32 %657, -100
  %659 = xor i32 %658, %657, !mcsema_real_eip !192
  %660 = and i32 %659, 16, !mcsema_real_eip !192
  %661 = icmp ne i32 %660, 0, !mcsema_real_eip !192
  store i1 %661, i1* %AF, align 1, !mcsema_real_eip !192
  %662 = trunc i32 %658 to i8, !mcsema_real_eip !192
  %663 = call i8 @llvm.ctpop.i8(i8 %662), !mcsema_real_eip !192
  %664 = and i8 %663, 1
  %665 = icmp eq i8 %664, 0
  store i1 %665, i1* %PF, align 1, !mcsema_real_eip !192
  %666 = icmp eq i32 %658, 0, !mcsema_real_eip !192
  store i1 %666, i1* %ZF, align 1, !mcsema_real_eip !192
  %667 = icmp slt i8 %_new_load_1410, 100
  store i1 %667, i1* %SF, align 1, !mcsema_real_eip !192
  %668 = icmp ult i8 %_new_load_1410, 100
  store i1 %668, i1* %CF, align 1, !mcsema_real_eip !192
  %669 = and i32 %659, %657, !mcsema_real_eip !192
  %670 = icmp slt i32 %669, 0
  store i1 %670, i1* %OF, align 1, !mcsema_real_eip !192
  br i1 %666, label %block_0x380, label %block_0x38e, !mcsema_real_eip !193

block_0x38e:                                      ; preds = %block_0x36f, %block_0x343
  %_new_load_1425 = load i64, i64* %_address_in_parent_stack_bt_1368._allin_new_bt_349, align 8
  store i64 %_new_load_1425, i64* %XAX, align 8, !mcsema_real_eip !194
  %671 = add i64 %_new_load_1425, 28, !mcsema_real_eip !195
  %672 = inttoptr i64 %671 to i8*, !mcsema_real_eip !195
  %_offset_above_rbp_1428 = sub i64 %671, %_local_end_to_int_
  %_pot_address_in_parent_stack_1429 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1428
  %_cond1_1430 = icmp ugt i8* %672, %_local_stack_end_ptr_
  %_cond2_1_1431 = icmp ugt i8* %672, %_parent_stack_end_ptr_
  %_cond2_2_1432 = icmp ult i8* %672, %_parent_stack_start_ptr_
  %_cond2_1433 = or i1 %_cond2_1_1431, %_cond2_2_1432
  %_cond4_1434 = icmp ule i8* %_pot_address_in_parent_stack_1429, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1435 = and i1 %_cond1_1430, %_cond2_1433
  %_cond1_n_cond2_cond3_1436 = and i1 %_cond4_1434, %_cond1_n_cond2_1435
  %673 = select i1 %_cond1_n_cond2_cond3_1436, i8* %_pot_address_in_parent_stack_1429, i8* %672
  %_new_load_1438 = load i8, i8* %673, align 1
  %674 = sext i8 %_new_load_1438 to i64
  %675 = and i64 %674, 4294967295
  store i64 %675, i64* %XCX, align 8, !mcsema_real_eip !195
  %_new_load_1453 = load i64, i64* %_address_in_parent_stack_bt_1368._allin_new_bt_349, align 8
  store i64 %_new_load_1453, i64* %XAX, align 8, !mcsema_real_eip !196
  %676 = add i64 %_new_load_1453, 29, !mcsema_real_eip !197
  %677 = inttoptr i64 %676 to i8*, !mcsema_real_eip !197
  %_offset_above_rbp_1456 = sub i64 %676, %_local_end_to_int_
  %_pot_address_in_parent_stack_1457 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1456
  %_cond1_1458 = icmp ugt i8* %677, %_local_stack_end_ptr_
  %_cond2_1_1459 = icmp ugt i8* %677, %_parent_stack_end_ptr_
  %_cond2_2_1460 = icmp ult i8* %677, %_parent_stack_start_ptr_
  %_cond2_1461 = or i1 %_cond2_1_1459, %_cond2_2_1460
  %_cond4_1462 = icmp ule i8* %_pot_address_in_parent_stack_1457, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1463 = and i1 %_cond1_1458, %_cond2_1461
  %_cond1_n_cond2_cond3_1464 = and i1 %_cond4_1462, %_cond1_n_cond2_1463
  %678 = select i1 %_cond1_n_cond2_cond3_1464, i8* %_pot_address_in_parent_stack_1457, i8* %677
  %_new_load_1466 = load i8, i8* %678, align 1
  %679 = sext i8 %_new_load_1466 to i64
  %680 = and i64 %679, 4294967295
  store i64 %680, i64* %XDX, align 8, !mcsema_real_eip !197
  %681 = sext i8 %_new_load_1438 to i32
  %682 = sext i8 %_new_load_1466 to i32
  %683 = sub nsw i32 %681, %682, !mcsema_real_eip !198
  %684 = xor i32 %683, %681, !mcsema_real_eip !198
  %685 = xor i32 %684, %682, !mcsema_real_eip !198
  %686 = and i32 %685, 16, !mcsema_real_eip !198
  %687 = icmp ne i32 %686, 0, !mcsema_real_eip !198
  store i1 %687, i1* %AF, align 1, !mcsema_real_eip !198
  %688 = trunc i32 %683 to i8, !mcsema_real_eip !198
  %689 = call i8 @llvm.ctpop.i8(i8 %688), !mcsema_real_eip !198
  %690 = and i8 %689, 1
  %691 = icmp eq i8 %690, 0
  store i1 %691, i1* %PF, align 1, !mcsema_real_eip !198
  %692 = icmp eq i32 %683, 0, !mcsema_real_eip !198
  store i1 %692, i1* %ZF, align 1, !mcsema_real_eip !198
  %693 = icmp slt i32 %683, 0
  store i1 %693, i1* %SF, align 1, !mcsema_real_eip !198
  %694 = icmp ult i8 %_new_load_1438, %_new_load_1466
  store i1 %694, i1* %CF, align 1, !mcsema_real_eip !198
  %695 = xor i8 %_new_load_1466, %_new_load_1438
  %696 = sext i8 %695 to i32
  %697 = and i32 %684, %696, !mcsema_real_eip !198
  %698 = icmp slt i32 %697, 0
  store i1 %698, i1* %OF, align 1, !mcsema_real_eip !198
  br i1 %692, label %block_0x3a6, label %block_0x406, !mcsema_real_eip !199

block_0x3a6:                                      ; preds = %block_0x38e
  store i64 15, i64* %XAX, align 8, !mcsema_real_eip !200
  %_new_load_1481 = load i64, i64* %_address_in_parent_stack_bt_1368._allin_new_bt_349, align 8
  store i64 %_new_load_1481, i64* %XCX, align 8, !mcsema_real_eip !201
  %699 = add i64 %_new_load_1481, 31, !mcsema_real_eip !202
  %700 = inttoptr i64 %699 to i8*, !mcsema_real_eip !202
  %_offset_above_rbp_1484 = sub i64 %699, %_local_end_to_int_
  %_pot_address_in_parent_stack_1485 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1484
  %_cond1_1486 = icmp ugt i8* %700, %_local_stack_end_ptr_
  %_cond2_1_1487 = icmp ugt i8* %700, %_parent_stack_end_ptr_
  %_cond2_2_1488 = icmp ult i8* %700, %_parent_stack_start_ptr_
  %_cond2_1489 = or i1 %_cond2_1_1487, %_cond2_2_1488
  %_cond4_1490 = icmp ule i8* %_pot_address_in_parent_stack_1485, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1491 = and i1 %_cond1_1486, %_cond2_1489
  %_cond1_n_cond2_cond3_1492 = and i1 %_cond4_1490, %_cond1_n_cond2_1491
  %701 = select i1 %_cond1_n_cond2_cond3_1492, i8* %_pot_address_in_parent_stack_1485, i8* %700
  %_new_load_1494 = load i8, i8* %701, align 1
  %702 = sext i8 %_new_load_1494 to i64
  %703 = and i64 %702, 4294967295
  store i64 %703, i64* %XDX, align 8, !mcsema_real_eip !202
  %_new_load_1509 = load i64, i64* %_address_in_parent_stack_bt_1368._allin_new_bt_349, align 8
  store i64 %_new_load_1509, i64* %XCX, align 8, !mcsema_real_eip !203
  %704 = add i64 %_new_load_1509, 30, !mcsema_real_eip !204
  %705 = inttoptr i64 %704 to i8*, !mcsema_real_eip !204
  %_offset_above_rbp_1512 = sub i64 %704, %_local_end_to_int_
  %_pot_address_in_parent_stack_1513 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1512
  %_cond1_1514 = icmp ugt i8* %705, %_local_stack_end_ptr_
  %_cond2_1_1515 = icmp ugt i8* %705, %_parent_stack_end_ptr_
  %_cond2_2_1516 = icmp ult i8* %705, %_parent_stack_start_ptr_
  %_cond2_1517 = or i1 %_cond2_1_1515, %_cond2_2_1516
  %_cond4_1518 = icmp ule i8* %_pot_address_in_parent_stack_1513, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1519 = and i1 %_cond1_1514, %_cond2_1517
  %_cond1_n_cond2_cond3_1520 = and i1 %_cond4_1518, %_cond1_n_cond2_1519
  %706 = select i1 %_cond1_n_cond2_cond3_1520, i8* %_pot_address_in_parent_stack_1513, i8* %705
  %_new_load_1522 = load i8, i8* %706, align 1
  %707 = sext i8 %_new_load_1522 to i64
  %708 = and i64 %707, 4294967295
  store i64 %708, i64* %XSI, align 8, !mcsema_real_eip !204
  %709 = sext i8 %_new_load_1494 to i32
  %710 = sext i8 %_new_load_1522 to i32
  %711 = sub nsw i32 %709, %710, !mcsema_real_eip !205
  %712 = zext i32 %711 to i64, !mcsema_real_eip !205
  store i64 %712, i64* %XDX, align 8, !mcsema_real_eip !205
  %713 = sub nsw i32 15, %711, !mcsema_real_eip !206
  %714 = xor i32 %713, %711, !mcsema_real_eip !206
  %715 = and i32 %714, 16, !mcsema_real_eip !206
  %716 = icmp ne i32 %715, 0, !mcsema_real_eip !206
  store i1 %716, i1* %AF, align 1, !mcsema_real_eip !206
  %717 = trunc i32 %713 to i8, !mcsema_real_eip !206
  %718 = call i8 @llvm.ctpop.i8(i8 %717), !mcsema_real_eip !206
  %719 = and i8 %718, 1
  %720 = icmp eq i8 %719, 0
  store i1 %720, i1* %PF, align 1, !mcsema_real_eip !206
  %721 = icmp eq i32 %713, 0, !mcsema_real_eip !206
  store i1 %721, i1* %ZF, align 1, !mcsema_real_eip !206
  %722 = icmp slt i32 %713, 0
  store i1 %722, i1* %SF, align 1, !mcsema_real_eip !206
  %723 = icmp ugt i32 %711, 15, !mcsema_real_eip !206
  store i1 %723, i1* %CF, align 1, !mcsema_real_eip !206
  %724 = and i32 %713, %711, !mcsema_real_eip !206
  %725 = icmp slt i32 %724, 0
  store i1 %725, i1* %OF, align 1, !mcsema_real_eip !206
  %726 = zext i32 %713 to i64, !mcsema_real_eip !206
  store i64 %726, i64* %XAX, align 8, !mcsema_real_eip !206
  %_new_gep_366 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_347, i64 -20
  %727 = ptrtoint i8* %_new_gep_366 to i64
  %728 = bitcast i8* %_new_gep_366 to i32*
  %_offset_above_rbp_1526 = sub i64 %727, %_local_end_to_int_
  %_pot_address_in_parent_stack_1527 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1526
  %_cond1_1528 = icmp ugt i8* %_new_gep_366, %_local_stack_end_ptr_
  %_cond2_1_1529 = icmp ugt i8* %_new_gep_366, %_parent_stack_end_ptr_
  %_cond2_2_1530 = icmp ult i8* %_new_gep_366, %_parent_stack_start_ptr_
  %_cond2_1531 = or i1 %_cond2_1_1529, %_cond2_2_1530
  %_cond4_1532 = icmp ule i8* %_pot_address_in_parent_stack_1527, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1533 = and i1 %_cond1_1528, %_cond2_1531
  %_cond1_n_cond2_cond3_1534 = and i1 %_cond1_n_cond2_1533, %_cond4_1532
  %_address_in_parent_stack_bt_1536 = bitcast i8* %_pot_address_in_parent_stack_1527 to i32*
  %_address_in_parent_stack_bt_1536. = select i1 %_cond1_n_cond2_cond3_1534, i32* %_address_in_parent_stack_bt_1536, i32* %728
  %_new_load_1537 = load i32, i32* %_address_in_parent_stack_bt_1536., align 4
  %729 = add i32 %713, %_new_load_1537, !mcsema_real_eip !207
  %730 = xor i32 %729, %_new_load_1537, !mcsema_real_eip !207
  %731 = xor i32 %730, %713, !mcsema_real_eip !207
  %732 = and i32 %731, 16, !mcsema_real_eip !207
  %733 = icmp ne i32 %732, 0, !mcsema_real_eip !207
  store i1 %733, i1* %AF, align 1, !mcsema_real_eip !207
  %734 = icmp slt i32 %729, 0
  store i1 %734, i1* %SF, align 1, !mcsema_real_eip !207
  %735 = icmp eq i32 %729, 0, !mcsema_real_eip !207
  store i1 %735, i1* %ZF, align 1, !mcsema_real_eip !207
  %736 = xor i32 %_new_load_1537, -2147483648, !mcsema_real_eip !207
  %737 = xor i32 %736, %713, !mcsema_real_eip !207
  %738 = and i32 %730, %737, !mcsema_real_eip !207
  %739 = icmp slt i32 %738, 0
  store i1 %739, i1* %OF, align 1, !mcsema_real_eip !207
  %740 = trunc i32 %729 to i8, !mcsema_real_eip !207
  %741 = call i8 @llvm.ctpop.i8(i8 %740), !mcsema_real_eip !207
  %742 = and i8 %741, 1
  %743 = icmp eq i8 %742, 0
  store i1 %743, i1* %PF, align 1, !mcsema_real_eip !207
  %744 = icmp ult i32 %729, %_new_load_1537, !mcsema_real_eip !207
  store i1 %744, i1* %CF, align 1, !mcsema_real_eip !207
  %745 = zext i32 %729 to i64, !mcsema_real_eip !207
  store i64 %745, i64* %XAX, align 8, !mcsema_real_eip !207
  store i32 %729, i32* %728, align 4, !mcsema_real_eip !208
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_371 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_372 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_371, i64 -16
  %_ptr_to_int_1538 = ptrtoint i8* %_new_gep_372 to i64
  %_offset_above_rbp_1541 = sub i64 %_ptr_to_int_1538, %_local_end_to_int_
  %_pot_address_in_parent_stack_1542 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1541
  %_cond1_1543 = icmp ugt i8* %_new_gep_372, %_local_stack_end_ptr_
  %_cond2_1_1544 = icmp ugt i8* %_new_gep_372, %_parent_stack_end_ptr_
  %_cond2_2_1545 = icmp ult i8* %_new_gep_372, %_parent_stack_start_ptr_
  %_cond2_1546 = or i1 %_cond2_1_1544, %_cond2_2_1545
  %_cond4_1547 = icmp ule i8* %_pot_address_in_parent_stack_1542, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1548 = and i1 %_cond1_1543, %_cond2_1546
  %_cond1_n_cond2_cond3_1549 = and i1 %_cond1_n_cond2_1548, %_cond4_1547
  %.v21 = select i1 %_cond1_n_cond2_cond3_1549, i8* %_pot_address_in_parent_stack_1542, i8* %_new_gep_372
  %746 = bitcast i8* %.v21 to i64*
  %_new_load_1552 = load i64, i64* %746, align 8
  store i64 %_new_load_1552, i64* %XCX, align 8, !mcsema_real_eip !209
  %747 = add i64 %_new_load_1552, 28, !mcsema_real_eip !210
  %748 = inttoptr i64 %747 to i8*, !mcsema_real_eip !210
  %_offset_above_rbp_1555 = sub i64 %747, %_local_end_to_int_
  %_pot_address_in_parent_stack_1556 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1555
  %_cond1_1557 = icmp ugt i8* %748, %_local_stack_end_ptr_
  %_cond2_1_1558 = icmp ugt i8* %748, %_parent_stack_end_ptr_
  %_cond2_2_1559 = icmp ult i8* %748, %_parent_stack_start_ptr_
  %_cond2_1560 = or i1 %_cond2_1_1558, %_cond2_2_1559
  %_cond4_1561 = icmp ule i8* %_pot_address_in_parent_stack_1556, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1562 = and i1 %_cond1_1557, %_cond2_1560
  %_cond1_n_cond2_cond3_1563 = and i1 %_cond4_1561, %_cond1_n_cond2_1562
  %_pot_address_in_parent_stack_1556. = select i1 %_cond1_n_cond2_cond3_1563, i8* %_pot_address_in_parent_stack_1556, i8* %748
  %_new_load_1565 = load i8, i8* %_pot_address_in_parent_stack_1556., align 1
  %749 = zext i8 %_new_load_1565 to i64
  store i64 %749, i64* %XDI, align 8, !mcsema_real_eip !210
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_374 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.366 = load i64, i64* %XSP, align 8, !mcsema_real_eip !211
  %_new_gep_375 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_374, i64 -8
  %750 = add i64 %RSP_val.366, -8
  %_allin_new_bt_376 = bitcast i8* %_new_gep_375 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_376, align 8, !mcsema_real_eip !211
  store volatile i8* %_new_gep_375, i8** %_RSP_ptr_, align 8
  store i64 %750, i64* %XSP, align 8, !mcsema_real_eip !211
  %751 = call x86_64_sysvcc i64 @_to_byte(i64 %749)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_434 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_435 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_434, i64 8
  store i8* %_gep_fix_435, i8** %_RSP_ptr_, align 8
  store i64 %751, i64* %XAX, align 8, !mcsema_real_eip !211
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_377 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_378 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_377, i64 -20
  %752 = ptrtoint i8* %_new_gep_378 to i64
  %753 = bitcast i8* %_new_gep_378 to i32*
  %_offset_above_rbp_1569 = sub i64 %752, %_local_end_to_int_
  %_pot_address_in_parent_stack_1570 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1569
  %_cond1_1571 = icmp ugt i8* %_new_gep_378, %_local_stack_end_ptr_
  %_cond2_1_1572 = icmp ugt i8* %_new_gep_378, %_parent_stack_end_ptr_
  %_cond2_2_1573 = icmp ult i8* %_new_gep_378, %_parent_stack_start_ptr_
  %_cond2_1574 = or i1 %_cond2_1_1572, %_cond2_2_1573
  %_cond4_1575 = icmp ule i8* %_pot_address_in_parent_stack_1570, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1576 = and i1 %_cond1_1571, %_cond2_1574
  %_cond1_n_cond2_cond3_1577 = and i1 %_cond1_n_cond2_1576, %_cond4_1575
  %_address_in_parent_stack_bt_1579 = bitcast i8* %_pot_address_in_parent_stack_1570 to i32*
  %754 = select i1 %_cond1_n_cond2_cond3_1577, i32* %_address_in_parent_stack_bt_1579, i32* %753
  %_new_load_1580 = load i32, i32* %754, align 4
  %755 = trunc i64 %751 to i32
  %756 = sub i32 %_new_load_1580, %755, !mcsema_real_eip !213
  %757 = xor i32 %756, %_new_load_1580, !mcsema_real_eip !213
  %758 = xor i32 %757, %755, !mcsema_real_eip !213
  %759 = and i32 %758, 16, !mcsema_real_eip !213
  %760 = icmp ne i32 %759, 0, !mcsema_real_eip !213
  store i1 %760, i1* %AF, align 1, !mcsema_real_eip !213
  %761 = trunc i32 %756 to i8, !mcsema_real_eip !213
  %762 = call i8 @llvm.ctpop.i8(i8 %761), !mcsema_real_eip !213
  %763 = and i8 %762, 1
  %764 = icmp eq i8 %763, 0
  store i1 %764, i1* %PF, align 1, !mcsema_real_eip !213
  %765 = icmp eq i32 %756, 0, !mcsema_real_eip !213
  store i1 %765, i1* %ZF, align 1, !mcsema_real_eip !213
  %766 = icmp slt i32 %756, 0
  store i1 %766, i1* %SF, align 1, !mcsema_real_eip !213
  %767 = icmp ult i32 %_new_load_1580, %755, !mcsema_real_eip !213
  store i1 %767, i1* %CF, align 1, !mcsema_real_eip !213
  %768 = xor i32 %755, %_new_load_1580, !mcsema_real_eip !213
  %769 = and i32 %757, %768, !mcsema_real_eip !213
  %770 = icmp slt i32 %769, 0
  store i1 %770, i1* %OF, align 1, !mcsema_real_eip !213
  %771 = zext i32 %756 to i64, !mcsema_real_eip !213
  store i64 %771, i64* %XDX, align 8, !mcsema_real_eip !213
  store i32 %756, i32* %753, align 4, !mcsema_real_eip !214
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_383 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_384 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_383, i64 -20
  %772 = ptrtoint i8* %_new_gep_384 to i64
  %_offset_above_rbp_1584 = sub i64 %772, %_local_end_to_int_
  %_pot_address_in_parent_stack_1585 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1584
  %_cond1_1586 = icmp ugt i8* %_new_gep_384, %_local_stack_end_ptr_
  %_cond2_1_1587 = icmp ugt i8* %_new_gep_384, %_parent_stack_end_ptr_
  %_cond2_2_1588 = icmp ult i8* %_new_gep_384, %_parent_stack_start_ptr_
  %_cond2_1589 = or i1 %_cond2_1_1587, %_cond2_2_1588
  %_cond4_1590 = icmp ule i8* %_pot_address_in_parent_stack_1585, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1591 = and i1 %_cond1_1586, %_cond2_1589
  %_cond1_n_cond2_cond3_1592 = and i1 %_cond1_n_cond2_1591, %_cond4_1590
  %_address_in_parent_stack_bt_1594..v = select i1 %_cond1_n_cond2_cond3_1592, i8* %_pot_address_in_parent_stack_1585, i8* %_new_gep_384
  %_address_in_parent_stack_bt_1594. = bitcast i8* %_address_in_parent_stack_bt_1594..v to i32*
  %_new_load_1595 = load i32, i32* %_address_in_parent_stack_bt_1594., align 4
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !215
  %773 = trunc i32 %_new_load_1595 to i8, !mcsema_real_eip !215
  %774 = call i8 @llvm.ctpop.i8(i8 %773), !mcsema_real_eip !215
  %775 = and i8 %774, 1
  %776 = icmp eq i8 %775, 0
  store i1 %776, i1* %PF, align 1, !mcsema_real_eip !215
  %777 = icmp eq i32 %_new_load_1595, 0, !mcsema_real_eip !215
  store i1 %777, i1* %ZF, align 1, !mcsema_real_eip !215
  %778 = icmp slt i32 %_new_load_1595, 0
  store i1 %778, i1* %SF, align 1, !mcsema_real_eip !215
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !215
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !215
  br i1 %777, label %block_0x3e4, label %block_0x411, !mcsema_real_eip !216

block_0x406:                                      ; preds = %block_0x38e
  %_new_gep_387 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_347, i64 -64
  %779 = ptrtoint i8* %_new_gep_387 to i64
  %_offset_above_rbp_1599 = sub i64 %779, %_local_end_to_int_
  %_pot_address_in_parent_stack_1600 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1599
  %_cond1_1601 = icmp ugt i8* %_new_gep_387, %_local_stack_end_ptr_
  %_cond2_1_1602 = icmp ugt i8* %_new_gep_387, %_parent_stack_end_ptr_
  %_cond2_2_1603 = icmp ult i8* %_new_gep_387, %_parent_stack_start_ptr_
  %_cond2_1604 = or i1 %_cond2_1_1602, %_cond2_2_1603
  %_cond4_1605 = icmp ule i8* %_pot_address_in_parent_stack_1600, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1606 = and i1 %_cond1_1601, %_cond2_1604
  %_cond1_n_cond2_cond3_1607 = and i1 %_cond1_n_cond2_1606, %_cond4_1605
  %_address_in_parent_stack_bt_1609..v = select i1 %_cond1_n_cond2_cond3_1607, i8* %_pot_address_in_parent_stack_1600, i8* %_new_gep_387
  %_address_in_parent_stack_bt_1609. = bitcast i8* %_address_in_parent_stack_bt_1609..v to i32*
  %_new_load_1610 = load i32, i32* %_address_in_parent_stack_bt_1609., align 4
  %780 = zext i32 %_new_load_1610 to i64, !mcsema_real_eip !217
  store i64 %780, i64* %XAX, align 8, !mcsema_real_eip !217
  %_new_gep_390 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_347, i64 -20
  %781 = bitcast i8* %_new_gep_390 to i32*
  store i32 %_new_load_1610, i32* %781, align 4, !mcsema_real_eip !218
  br label %block_0x411, !mcsema_real_eip !200

block_0x380:                                      ; preds = %block_0x36f
  %_new_gep_393 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_347, i64 -64
  %782 = ptrtoint i8* %_new_gep_393 to i64
  %_offset_above_rbp_1614 = sub i64 %782, %_local_end_to_int_
  %_pot_address_in_parent_stack_1615 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1614
  %_cond1_1616 = icmp ugt i8* %_new_gep_393, %_local_stack_end_ptr_
  %_cond2_1_1617 = icmp ugt i8* %_new_gep_393, %_parent_stack_end_ptr_
  %_cond2_2_1618 = icmp ult i8* %_new_gep_393, %_parent_stack_start_ptr_
  %_cond2_1619 = or i1 %_cond2_1_1617, %_cond2_2_1618
  %_cond4_1620 = icmp ule i8* %_pot_address_in_parent_stack_1615, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1621 = and i1 %_cond1_1616, %_cond2_1619
  %_cond1_n_cond2_cond3_1622 = and i1 %_cond1_n_cond2_1621, %_cond4_1620
  %_address_in_parent_stack_bt_1624..v = select i1 %_cond1_n_cond2_cond3_1622, i8* %_pot_address_in_parent_stack_1615, i8* %_new_gep_393
  %_address_in_parent_stack_bt_1624. = bitcast i8* %_address_in_parent_stack_bt_1624..v to i32*
  %_new_load_1625 = load i32, i32* %_address_in_parent_stack_bt_1624., align 4
  %783 = zext i32 %_new_load_1625 to i64, !mcsema_real_eip !219
  store i64 %783, i64* %XAX, align 8, !mcsema_real_eip !219
  %_new_gep_396 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_347, i64 -20
  %784 = ptrtoint i8* %_new_gep_396 to i64
  %785 = bitcast i8* %_new_gep_396 to i32*
  %_offset_above_rbp_1629 = sub i64 %784, %_local_end_to_int_
  %_pot_address_in_parent_stack_1630 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1629
  %_cond1_1631 = icmp ugt i8* %_new_gep_396, %_local_stack_end_ptr_
  %_cond2_1_1632 = icmp ugt i8* %_new_gep_396, %_parent_stack_end_ptr_
  %_cond2_2_1633 = icmp ult i8* %_new_gep_396, %_parent_stack_start_ptr_
  %_cond2_1634 = or i1 %_cond2_1_1632, %_cond2_2_1633
  %_cond4_1635 = icmp ule i8* %_pot_address_in_parent_stack_1630, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1636 = and i1 %_cond1_1631, %_cond2_1634
  %_cond1_n_cond2_cond3_1637 = and i1 %_cond1_n_cond2_1636, %_cond4_1635
  %_address_in_parent_stack_bt_1639 = bitcast i8* %_pot_address_in_parent_stack_1630 to i32*
  %786 = select i1 %_cond1_n_cond2_cond3_1637, i32* %_address_in_parent_stack_bt_1639, i32* %785
  %_new_load_1640 = load i32, i32* %786, align 4
  %787 = xor i32 %_new_load_1625, %_new_load_1640, !mcsema_real_eip !220
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !220
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !220
  %788 = icmp slt i32 %787, 0
  store i1 %788, i1* %SF, align 1, !mcsema_real_eip !220
  %789 = icmp eq i32 %787, 0, !mcsema_real_eip !220
  store i1 %789, i1* %ZF, align 1, !mcsema_real_eip !220
  %790 = trunc i32 %787 to i8, !mcsema_real_eip !220
  %791 = call i8 @llvm.ctpop.i8(i8 %790), !mcsema_real_eip !220
  %792 = and i8 %791, 1
  %793 = icmp eq i8 %792, 0
  store i1 %793, i1* %PF, align 1, !mcsema_real_eip !220
  %794 = zext i32 %787 to i64, !mcsema_real_eip !220
  store i64 %794, i64* %XAX, align 8, !mcsema_real_eip !220
  store i32 %787, i32* %785, align 4, !mcsema_real_eip !221
  br label %block_0x411, !mcsema_real_eip !222

block_0x3e4:                                      ; preds = %block_0x3a6
  %_new_gep_402 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_383, i64 -16
  %_ptr_to_int_1641 = ptrtoint i8* %_new_gep_402 to i64
  %_offset_above_rbp_1644 = sub i64 %_ptr_to_int_1641, %_local_end_to_int_
  %_pot_address_in_parent_stack_1645 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1644
  %_cond1_1646 = icmp ugt i8* %_new_gep_402, %_local_stack_end_ptr_
  %_cond2_1_1647 = icmp ugt i8* %_new_gep_402, %_parent_stack_end_ptr_
  %_cond2_2_1648 = icmp ult i8* %_new_gep_402, %_parent_stack_start_ptr_
  %_cond2_1649 = or i1 %_cond2_1_1647, %_cond2_2_1648
  %_cond4_1650 = icmp ule i8* %_pot_address_in_parent_stack_1645, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1651 = and i1 %_cond1_1646, %_cond2_1649
  %_cond1_n_cond2_cond3_1652 = and i1 %_cond1_n_cond2_1651, %_cond4_1650
  %_address_in_parent_stack_bt_1654._allin_new_bt_403.v = select i1 %_cond1_n_cond2_cond3_1652, i8* %_pot_address_in_parent_stack_1645, i8* %_new_gep_402
  %_address_in_parent_stack_bt_1654._allin_new_bt_403 = bitcast i8* %_address_in_parent_stack_bt_1654._allin_new_bt_403.v to i64*
  %_new_load_1655 = load i64, i64* %_address_in_parent_stack_bt_1654._allin_new_bt_403, align 8
  store i64 %_new_load_1655, i64* %XAX, align 8, !mcsema_real_eip !223
  %795 = add i64 %_new_load_1655, 31, !mcsema_real_eip !224
  %796 = inttoptr i64 %795 to i8*, !mcsema_real_eip !224
  %_offset_above_rbp_1658 = sub i64 %795, %_local_end_to_int_
  %_pot_address_in_parent_stack_1659 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1658
  %_cond1_1660 = icmp ugt i8* %796, %_local_stack_end_ptr_
  %_cond2_1_1661 = icmp ugt i8* %796, %_parent_stack_end_ptr_
  %_cond2_2_1662 = icmp ult i8* %796, %_parent_stack_start_ptr_
  %_cond2_1663 = or i1 %_cond2_1_1661, %_cond2_2_1662
  %_cond4_1664 = icmp ule i8* %_pot_address_in_parent_stack_1659, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1665 = and i1 %_cond1_1660, %_cond2_1663
  %_cond1_n_cond2_cond3_1666 = and i1 %_cond4_1664, %_cond1_n_cond2_1665
  %797 = select i1 %_cond1_n_cond2_cond3_1666, i8* %_pot_address_in_parent_stack_1659, i8* %796
  %_new_load_1668 = load i8, i8* %797, align 1
  %798 = zext i8 %_new_load_1668 to i64
  store i64 %798, i64* %XDI, align 8, !mcsema_real_eip !224
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_404 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.386 = load i64, i64* %XSP, align 8, !mcsema_real_eip !225
  %_new_gep_405 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_404, i64 -8
  %799 = add i64 %RSP_val.386, -8
  %_allin_new_bt_406 = bitcast i8* %_new_gep_405 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_406, align 8, !mcsema_real_eip !225
  store volatile i8* %_new_gep_405, i8** %_RSP_ptr_, align 8
  store i64 %799, i64* %XSP, align 8, !mcsema_real_eip !225
  %800 = call x86_64_sysvcc i64 @_to_byte(i64 %798)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_436 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_437 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_436, i64 8
  store i8* %_gep_fix_437, i8** %_RSP_ptr_, align 8
  store i64 %800, i64* %XAX, align 8, !mcsema_real_eip !225
  %801 = trunc i64 %800 to i32
  %802 = add i32 %801, -4
  %803 = xor i32 %802, %801, !mcsema_real_eip !226
  %804 = and i32 %803, 16, !mcsema_real_eip !226
  %805 = icmp ne i32 %804, 0, !mcsema_real_eip !226
  store i1 %805, i1* %AF, align 1, !mcsema_real_eip !226
  %806 = trunc i32 %802 to i8, !mcsema_real_eip !226
  %807 = call i8 @llvm.ctpop.i8(i8 %806), !mcsema_real_eip !226
  %808 = and i8 %807, 1
  %809 = icmp eq i8 %808, 0
  store i1 %809, i1* %PF, align 1, !mcsema_real_eip !226
  %810 = icmp eq i32 %802, 0, !mcsema_real_eip !226
  store i1 %810, i1* %ZF, align 1, !mcsema_real_eip !226
  %811 = icmp slt i32 %802, 0
  store i1 %811, i1* %SF, align 1, !mcsema_real_eip !226
  %812 = icmp ult i32 %801, 4, !mcsema_real_eip !226
  store i1 %812, i1* %CF, align 1, !mcsema_real_eip !226
  %813 = and i32 %803, %801, !mcsema_real_eip !226
  %814 = icmp slt i32 %813, 0
  store i1 %814, i1* %OF, align 1, !mcsema_real_eip !226
  br i1 %810, label %block_0x411, label %block_0x3fa, !mcsema_real_eip !227

block_0x411:                                      ; preds = %block_0x3a6, %block_0x3e4, %block_0x3fa, %block_0x406, %block_0x380
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_407 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_408 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_407, i64 -20
  %815 = ptrtoint i8* %_new_gep_408 to i64
  %_offset_above_rbp_1672 = sub i64 %815, %_local_end_to_int_
  %_pot_address_in_parent_stack_1673 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_1672
  %_cond1_1674 = icmp ugt i8* %_new_gep_408, %_local_stack_end_ptr_
  %_cond2_1_1675 = icmp ugt i8* %_new_gep_408, %_parent_stack_end_ptr_
  %_cond2_2_1676 = icmp ult i8* %_new_gep_408, %_parent_stack_start_ptr_
  %_cond2_1677 = or i1 %_cond2_1_1675, %_cond2_2_1676
  %_cond4_1678 = icmp ule i8* %_pot_address_in_parent_stack_1673, %_parent_stack_end_ptr_
  %_cond1_n_cond2_1679 = and i1 %_cond1_1674, %_cond2_1677
  %_cond1_n_cond2_cond3_1680 = and i1 %_cond1_n_cond2_1679, %_cond4_1678
  %_address_in_parent_stack_bt_1682..v = select i1 %_cond1_n_cond2_cond3_1680, i8* %_pot_address_in_parent_stack_1673, i8* %_new_gep_408
  %_address_in_parent_stack_bt_1682. = bitcast i8* %_address_in_parent_stack_bt_1682..v to i32*
  %_new_load_1683 = load i32, i32* %_address_in_parent_stack_bt_1682., align 4
  %816 = zext i32 %_new_load_1683 to i64, !mcsema_real_eip !228
  store i64 %816, i64* %XAX, align 8, !mcsema_real_eip !228
  br label %block_0x417, !mcsema_real_eip !229

block_0x3fa:                                      ; preds = %block_0x3e4
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_413 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_414 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_413, i64 -20
  %817 = bitcast i8* %_new_gep_414 to i32*
  store i32 -32, i32* %817, align 4, !mcsema_real_eip !229
  br label %block_0x411
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
!25 = !{i64 1047}
!26 = !{i64 1050}
!27 = !{i64 1054}
!28 = !{i64 1055}
!29 = !{i64 121}
!30 = !{i64 125}
!31 = !{i64 129}
!32 = !{i64 134}
!33 = !{i64 137}
!34 = !{i64 140}
!35 = !{i64 143}
!36 = !{i64 146}
!37 = !{i64 164}
!38 = !{i64 168}
!39 = !{i64 172}
!40 = !{i64 177}
!41 = !{i64 182}
!42 = !{i64 185}
!43 = !{i64 188}
!44 = !{i64 192}
!45 = !{i64 194}
!46 = !{i64 197}
!47 = !{i64 215}
!48 = !{i64 219}
!49 = !{i64 223}
!50 = !{i64 226}
!51 = !{i64 229}
!52 = !{i64 235}
!53 = !{i64 239}
!54 = !{i64 243}
!55 = !{i64 249}
!56 = !{i64 252}
!57 = !{i64 258}
!58 = !{i64 282}
!59 = !{i64 286}
!60 = !{i64 290}
!61 = !{i64 293}
!62 = !{i64 295}
!63 = !{i64 298}
!64 = !{i64 302}
!65 = !{i64 306}
!66 = !{i64 312}
!67 = !{i64 314}
!68 = !{i64 317}
!69 = !{i64 321}
!70 = !{i64 324}
!71 = !{i64 330}
!72 = !{i64 334}
!73 = !{i64 337}
!74 = !{i64 357}
!75 = !{i64 360}
!76 = !{i64 343}
!77 = !{i64 346}
!78 = !{i64 352}
!79 = !{i64 366}
!80 = !{i64 370}
!81 = !{i64 374}
!82 = !{i64 379}
!83 = !{i64 381}
!84 = !{i64 384}
!85 = !{i64 388}
!86 = !{i64 392}
!87 = !{i64 397}
!88 = !{i64 401}
!89 = !{i64 403}
!90 = !{i64 406}
!91 = !{i64 409}
!92 = !{i64 413}
!93 = !{i64 416}
!94 = !{i64 439}
!95 = !{i64 442}
!96 = !{i64 445}
!97 = !{i64 450}
!98 = !{i64 454}
!99 = !{i64 472}
!100 = !{i64 474}
!101 = !{i64 479}
!102 = !{i64 483}
!103 = !{i64 487}
!104 = !{i64 490}
!105 = !{i64 495}
!106 = !{i64 498}
!107 = !{i64 502}
!108 = !{i64 506}
!109 = !{i64 511}
!110 = !{i64 516}
!111 = !{i64 522}
!112 = !{i64 526}
!113 = !{i64 531}
!114 = !{i64 536}
!115 = !{i64 561}
!116 = !{i64 563}
!117 = !{i64 568}
!118 = !{i64 572}
!119 = !{i64 576}
!120 = !{i64 579}
!121 = !{i64 584}
!122 = !{i64 587}
!123 = !{i64 590}
!124 = !{i64 595}
!125 = !{i64 598}
!126 = !{i64 601}
!127 = !{i64 604}
!128 = !{i64 607}
!129 = !{i64 610}
!130 = !{i64 615}
!131 = !{i64 618}
!132 = !{i64 622}
!133 = !{i64 628}
!134 = !{i64 631}
!135 = !{i64 634}
!136 = !{i64 652}
!137 = !{i64 659}
!138 = !{i64 664}
!139 = !{i64 667}
!140 = !{i64 671}
!141 = !{i64 675}
!142 = !{i64 678}
!143 = !{i64 683}
!144 = !{i64 686}
!145 = !{i64 689}
!146 = !{i64 692}
!147 = !{i64 695}
!148 = !{i64 698}
!149 = !{i64 701}
!150 = !{i64 704}
!151 = !{i64 640}
!152 = !{i64 647}
!153 = !{i64 722}
!154 = !{i64 725}
!155 = !{i64 730}
!156 = !{i64 733}
!157 = !{i64 740}
!158 = !{i64 758}
!159 = !{i64 763}
!160 = !{i64 766}
!161 = !{i64 772}
!162 = !{i64 775}
!163 = !{i64 778}
!164 = !{i64 781}
!165 = !{i64 784}
!166 = !{i64 787}
!167 = !{i64 793}
!168 = !{i64 796}
!169 = !{i64 799}
!170 = !{i64 802}
!171 = !{i64 804}
!172 = !{i64 806}
!173 = !{i64 809}
!174 = !{i64 811}
!175 = !{i64 814}
!176 = !{i64 818}
!177 = !{i64 824}
!178 = !{i64 830}
!179 = !{i64 835}
!180 = !{i64 840}
!181 = !{i64 843}
!182 = !{i64 847}
!183 = !{i64 851}
!184 = !{i64 854}
!185 = !{i64 859}
!186 = !{i64 862}
!187 = !{i64 866}
!188 = !{i64 870}
!189 = !{i64 873}
!190 = !{i64 879}
!191 = !{i64 883}
!192 = !{i64 887}
!193 = !{i64 890}
!194 = !{i64 910}
!195 = !{i64 914}
!196 = !{i64 918}
!197 = !{i64 922}
!198 = !{i64 926}
!199 = !{i64 928}
!200 = !{i64 934}
!201 = !{i64 939}
!202 = !{i64 943}
!203 = !{i64 947}
!204 = !{i64 951}
!205 = !{i64 955}
!206 = !{i64 957}
!207 = !{i64 959}
!208 = !{i64 962}
!209 = !{i64 965}
!210 = !{i64 969}
!211 = !{i64 973}
!212 = !{i64 978}
!213 = !{i64 981}
!214 = !{i64 983}
!215 = !{i64 986}
!216 = !{i64 990}
!217 = !{i64 1030}
!218 = !{i64 1033}
!219 = !{i64 896}
!220 = !{i64 899}
!221 = !{i64 902}
!222 = !{i64 905}
!223 = !{i64 996}
!224 = !{i64 1000}
!225 = !{i64 1004}
!226 = !{i64 1009}
!227 = !{i64 1012}
!228 = !{i64 1041}
!229 = !{i64 1018}
