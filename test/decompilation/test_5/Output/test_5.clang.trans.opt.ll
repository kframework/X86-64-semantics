; ModuleID = 'Output/test_5.clang.trans.opt.bc'
source_filename = "Output/test_5.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl foo;"
module asm "  .type foo,@function"
module asm "foo:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size foo,0b-foo;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [28 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
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
  %_new_gep_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 12
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %RDI_val.4 = load i64, i64* %XDI, align 8, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %ESI.6 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.7 = load i32, i32* %ESI.6, align 4, !mcsema_real_eip !5
  %3 = bitcast i8* %_new_gep_6 to i32*
  store i32 %ESI_val.7, i32* %3, align 4, !mcsema_real_eip !5
  %4 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_9 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 4
  %5 = bitcast i8* %_new_gep_9 to i32*
  store i32 0, i32* %5, align 4, !mcsema_real_eip !6
  %6 = bitcast [28 x i8]* %_local_stack_start_ptr_1 to i32*
  store i32 0, i32* %6, align 4, !mcsema_real_eip !7
  br label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %block_0x25, %entry
  %7 = phi i32 [ %.pre, %block_0x25 ], [ 0, %entry ]
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_145 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_145.pre, %block_0x25 ], [ %_new_gep_, %entry ]
  %8 = zext i32 %7 to i64, !mcsema_real_eip !8
  store i64 %8, i64* %XAX, align 8, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_145, i64 -12
  %9 = bitcast i8* %_new_gep_18 to i32*
  %10 = load i32, i32* %9, align 4, !mcsema_real_eip !9
  %11 = sub i32 %7, %10, !mcsema_real_eip !9
  %12 = xor i32 %11, %7, !mcsema_real_eip !9
  %13 = xor i32 %12, %10, !mcsema_real_eip !9
  %14 = and i32 %13, 16, !mcsema_real_eip !9
  %15 = icmp ne i32 %14, 0, !mcsema_real_eip !9
  store i1 %15, i1* %AF, align 1, !mcsema_real_eip !9
  %16 = trunc i32 %11 to i8, !mcsema_real_eip !9
  %17 = call i8 @llvm.ctpop.i8(i8 %16), !mcsema_real_eip !9
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  store i1 %19, i1* %PF, align 1, !mcsema_real_eip !9
  %20 = icmp eq i32 %11, 0, !mcsema_real_eip !9
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !9
  %21 = icmp slt i32 %11, 0
  store i1 %21, i1* %SF, align 1, !mcsema_real_eip !9
  %22 = icmp ult i32 %7, %10, !mcsema_real_eip !9
  store i1 %22, i1* %CF, align 1, !mcsema_real_eip !9
  %23 = xor i32 %10, %7, !mcsema_real_eip !9
  %24 = and i32 %12, %23, !mcsema_real_eip !9
  %25 = icmp slt i32 %24, 0
  store i1 %25, i1* %OF, align 1, !mcsema_real_eip !9
  %tmp = xor i1 %21, %25
  br i1 %tmp, label %block_0x25, label %block_0x44, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x19
  %_new_gep_15 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_145, i64 -20
  %26 = bitcast i8* %_new_gep_15 to i32*
  %_new_gep_21 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_145, i64 -8
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %27 = load i64, i64* %_allin_new_bt_22, align 8, !mcsema_real_eip !11
  store i64 %27, i64* %XAX, align 8, !mcsema_real_eip !11
  %28 = load i32, i32* %26, align 4, !mcsema_real_eip !12
  %29 = sext i32 %28 to i64, !mcsema_real_eip !12
  store i64 %29, i64* %XCX, align 8, !mcsema_real_eip !12
  %30 = shl nsw i64 %29, 2
  %31 = add i64 %30, %27, !mcsema_real_eip !13
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !13
  %33 = load i32, i32* %32, align 4, !mcsema_real_eip !13
  %34 = zext i32 %33 to i64, !mcsema_real_eip !13
  store i64 %34, i64* %XDX, align 8, !mcsema_real_eip !13
  %_new_gep_27 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_145, i64 -16
  %35 = bitcast i8* %_new_gep_27 to i32*
  %36 = load i32, i32* %35, align 4, !mcsema_real_eip !14
  %37 = add i32 %33, %36, !mcsema_real_eip !14
  %38 = xor i32 %37, %36, !mcsema_real_eip !14
  %39 = xor i32 %38, %33, !mcsema_real_eip !14
  %40 = and i32 %39, 16, !mcsema_real_eip !14
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !14
  store i1 %41, i1* %AF, align 1, !mcsema_real_eip !14
  %42 = icmp slt i32 %37, 0
  store i1 %42, i1* %SF, align 1, !mcsema_real_eip !14
  %43 = icmp eq i32 %37, 0, !mcsema_real_eip !14
  store i1 %43, i1* %ZF, align 1, !mcsema_real_eip !14
  %44 = xor i32 %36, -2147483648, !mcsema_real_eip !14
  %45 = xor i32 %44, %33, !mcsema_real_eip !14
  %46 = and i32 %38, %45, !mcsema_real_eip !14
  %47 = icmp slt i32 %46, 0
  store i1 %47, i1* %OF, align 1, !mcsema_real_eip !14
  %48 = trunc i32 %37 to i8, !mcsema_real_eip !14
  %49 = call i8 @llvm.ctpop.i8(i8 %48), !mcsema_real_eip !14
  %50 = and i8 %49, 1
  %51 = icmp eq i8 %50, 0
  store i1 %51, i1* %PF, align 1, !mcsema_real_eip !14
  %52 = icmp ult i32 %37, %36, !mcsema_real_eip !14
  store i1 %52, i1* %CF, align 1, !mcsema_real_eip !14
  %53 = zext i32 %37 to i64, !mcsema_real_eip !14
  store i64 %53, i64* %XDX, align 8, !mcsema_real_eip !14
  store i32 %37, i32* %35, align 4, !mcsema_real_eip !15
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_326 = load i8*, i8** %4, align 8
  %_new_gep_33 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_326, i64 -20
  %54 = bitcast i8* %_new_gep_33 to i32*
  %55 = load i32, i32* %54, align 4, !mcsema_real_eip !16
  %56 = add i32 %55, 1, !mcsema_real_eip !17
  %57 = xor i32 %56, %55, !mcsema_real_eip !17
  %58 = and i32 %57, 16, !mcsema_real_eip !17
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !17
  store i1 %59, i1* %AF, align 1, !mcsema_real_eip !17
  %60 = icmp slt i32 %56, 0
  store i1 %60, i1* %SF, align 1, !mcsema_real_eip !17
  %61 = icmp eq i32 %56, 0, !mcsema_real_eip !17
  store i1 %61, i1* %ZF, align 1, !mcsema_real_eip !17
  %62 = xor i32 %55, -2147483648, !mcsema_real_eip !17
  %63 = and i32 %57, %62, !mcsema_real_eip !17
  %64 = icmp slt i32 %63, 0
  store i1 %64, i1* %OF, align 1, !mcsema_real_eip !17
  %65 = trunc i32 %56 to i8, !mcsema_real_eip !17
  %66 = call i8 @llvm.ctpop.i8(i8 %65), !mcsema_real_eip !17
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  store i1 %68, i1* %PF, align 1, !mcsema_real_eip !17
  %69 = icmp eq i32 %55, -1
  store i1 %69, i1* %CF, align 1, !mcsema_real_eip !17
  %70 = zext i32 %56 to i64, !mcsema_real_eip !17
  store i64 %70, i64* %XAX, align 8, !mcsema_real_eip !17
  store i32 %56, i32* %54, align 4, !mcsema_real_eip !18
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_145.pre = load i8*, i8** %4, align 8
  %_new_gep_15.phi.trans.insert = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_145.pre, i64 -20
  %.phi.trans.insert = bitcast i8* %_new_gep_15.phi.trans.insert to i32*
  %.pre = load i32, i32* %.phi.trans.insert, align 4
  br label %block_0x19, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x19
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_145, i64 -16
  %71 = bitcast i8* %_new_gep_39 to i32*
  %72 = load i32, i32* %71, align 4, !mcsema_real_eip !20
  %73 = zext i32 %72 to i64, !mcsema_real_eip !20
  store i64 %73, i64* %XAX, align 8, !mcsema_real_eip !20
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.31 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_allin_new_bt_42 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41 to i64*
  %74 = load i64, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !21
  store volatile i64 %74, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %74, i64* %XBP, align 8, !mcsema_real_eip !21
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, i64 8
  %75 = add i64 %RSP_val.31, 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_, align 8
  store i64 %75, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, i64 16
  %76 = add i64 %RSP_val.31, 16, !mcsema_real_eip !22
  %_allin_new_bt_46 = bitcast i8* %_new_gep_43 to i64*
  %77 = load i64, i64* %_allin_new_bt_46, align 8, !mcsema_real_eip !22
  store i64 %77, i64* %XIP, align 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_45, i8** %_RSP_ptr_, align 8
  store i64 %76, i64* %XSP, align 8, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [28 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 28
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
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
  %_new_gep_ = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 20
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 12
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %RDI_val.4 = load i64, i64* %XDI, align 8, !mcsema_real_eip !4
  store i64 %RDI_val.4, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %ESI.6 = bitcast i64* %XSI to i32*, !mcsema_real_eip !5
  %ESI_val.7 = load i32, i32* %ESI.6, align 4, !mcsema_real_eip !5
  %2 = bitcast i8* %_new_gep_6 to i32*
  store i32 %ESI_val.7, i32* %2, align 4, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr inbounds [28 x i8], [28 x i8]* %_local_stack_start_ptr_1, i64 0, i64 4
  %3 = bitcast i8* %_new_gep_9 to i32*
  store i32 0, i32* %3, align 4, !mcsema_real_eip !6
  %4 = bitcast [28 x i8]* %_local_stack_start_ptr_1 to i32*
  store i32 0, i32* %4, align 4, !mcsema_real_eip !7
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  br label %block_0x19, !mcsema_real_eip !8

block_0x19:                                       ; preds = %block_0x25, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14.pre, %block_0x25 ], [ %_new_gep_, %entry ]
  %_new_gep_15 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14, i64 -20
  %5 = ptrtoint i8* %_new_gep_15 to i64
  %_offset_above_rbp_ = sub i64 %5, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_15, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_15, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_15, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_15
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %6 = zext i32 %_new_load_ to i64, !mcsema_real_eip !8
  store i64 %6, i64* %XAX, align 8, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14, i64 -12
  %7 = ptrtoint i8* %_new_gep_18 to i64
  %_offset_above_rbp_50 = sub i64 %7, %_local_end_to_int_
  %_pot_address_in_parent_stack_51 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_50
  %_cond1_52 = icmp ugt i8* %_new_gep_18, %_local_stack_end_ptr_
  %_cond2_1_53 = icmp ugt i8* %_new_gep_18, %_parent_stack_end_ptr_
  %_cond2_2_54 = icmp ult i8* %_new_gep_18, %_parent_stack_start_ptr_
  %_cond2_55 = or i1 %_cond2_1_53, %_cond2_2_54
  %_cond4_56 = icmp ule i8* %_pot_address_in_parent_stack_51, %_parent_stack_end_ptr_
  %_cond1_n_cond2_57 = and i1 %_cond1_52, %_cond2_55
  %_cond1_n_cond2_cond3_58 = and i1 %_cond1_n_cond2_57, %_cond4_56
  %.v = select i1 %_cond1_n_cond2_cond3_58, i8* %_pot_address_in_parent_stack_51, i8* %_new_gep_18
  %8 = bitcast i8* %.v to i32*
  %_new_load_61 = load i32, i32* %8, align 4
  %9 = sub i32 %_new_load_, %_new_load_61, !mcsema_real_eip !9
  %10 = xor i32 %9, %_new_load_, !mcsema_real_eip !9
  %11 = xor i32 %10, %_new_load_61, !mcsema_real_eip !9
  %12 = and i32 %11, 16, !mcsema_real_eip !9
  %13 = icmp ne i32 %12, 0, !mcsema_real_eip !9
  store i1 %13, i1* %AF, align 1, !mcsema_real_eip !9
  %14 = trunc i32 %9 to i8, !mcsema_real_eip !9
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !9
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  store i1 %17, i1* %PF, align 1, !mcsema_real_eip !9
  %18 = icmp eq i32 %9, 0, !mcsema_real_eip !9
  store i1 %18, i1* %ZF, align 1, !mcsema_real_eip !9
  %19 = icmp slt i32 %9, 0
  store i1 %19, i1* %SF, align 1, !mcsema_real_eip !9
  %20 = icmp ult i32 %_new_load_, %_new_load_61, !mcsema_real_eip !9
  store i1 %20, i1* %CF, align 1, !mcsema_real_eip !9
  %21 = xor i32 %_new_load_61, %_new_load_, !mcsema_real_eip !9
  %22 = and i32 %10, %21, !mcsema_real_eip !9
  %23 = icmp slt i32 %22, 0
  store i1 %23, i1* %OF, align 1, !mcsema_real_eip !9
  %tmp = xor i1 %19, %23
  br i1 %tmp, label %block_0x25, label %block_0x44, !mcsema_real_eip !10

block_0x25:                                       ; preds = %block_0x19
  %_new_gep_21 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14, i64 -8
  %_ptr_to_int_62 = ptrtoint i8* %_new_gep_21 to i64
  %_offset_above_rbp_65 = sub i64 %_ptr_to_int_62, %_local_end_to_int_
  %_pot_address_in_parent_stack_66 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_65
  %_cond1_67 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_68 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_69 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_70 = or i1 %_cond2_1_68, %_cond2_2_69
  %_cond4_71 = icmp ule i8* %_pot_address_in_parent_stack_66, %_parent_stack_end_ptr_
  %_cond1_n_cond2_72 = and i1 %_cond1_67, %_cond2_70
  %_cond1_n_cond2_cond3_73 = and i1 %_cond1_n_cond2_72, %_cond4_71
  %_address_in_parent_stack_bt_75._allin_new_bt_22.v = select i1 %_cond1_n_cond2_cond3_73, i8* %_pot_address_in_parent_stack_66, i8* %_new_gep_21
  %_address_in_parent_stack_bt_75._allin_new_bt_22 = bitcast i8* %_address_in_parent_stack_bt_75._allin_new_bt_22.v to i64*
  %_new_load_76 = load i64, i64* %_address_in_parent_stack_bt_75._allin_new_bt_22, align 8
  store i64 %_new_load_76, i64* %XAX, align 8, !mcsema_real_eip !11
  %_new_load_91 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %24 = sext i32 %_new_load_91 to i64, !mcsema_real_eip !12
  store i64 %24, i64* %XCX, align 8, !mcsema_real_eip !12
  %25 = shl nsw i64 %24, 2
  %26 = add i64 %25, %_new_load_76, !mcsema_real_eip !13
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !13
  %_ptr_bt_94 = inttoptr i64 %26 to i8*
  %_offset_above_rbp_95 = sub i64 %26, %_local_end_to_int_
  %_pot_address_in_parent_stack_96 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_95
  %_cond1_97 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_94
  %_cond2_1_98 = icmp ugt i8* %_ptr_bt_94, %_parent_stack_end_ptr_
  %_cond2_2_99 = icmp ult i8* %_ptr_bt_94, %_parent_stack_start_ptr_
  %_cond2_100 = or i1 %_cond2_1_98, %_cond2_2_99
  %_cond4_101 = icmp ule i8* %_pot_address_in_parent_stack_96, %_parent_stack_end_ptr_
  %_cond1_n_cond2_102 = and i1 %_cond1_97, %_cond2_100
  %_cond1_n_cond2_cond3_103 = and i1 %_cond4_101, %_cond1_n_cond2_102
  %_address_in_parent_stack_bt_105 = bitcast i8* %_pot_address_in_parent_stack_96 to i32*
  %_address_in_parent_stack_bt_105. = select i1 %_cond1_n_cond2_cond3_103, i32* %_address_in_parent_stack_bt_105, i32* %27
  %_new_load_106 = load i32, i32* %_address_in_parent_stack_bt_105., align 4
  %28 = zext i32 %_new_load_106 to i64, !mcsema_real_eip !13
  store i64 %28, i64* %XDX, align 8, !mcsema_real_eip !13
  %_new_gep_27 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14, i64 -16
  %29 = ptrtoint i8* %_new_gep_27 to i64
  %30 = bitcast i8* %_new_gep_27 to i32*
  %_offset_above_rbp_110 = sub i64 %29, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %_new_gep_27, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %_new_gep_27, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %_new_gep_27, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  %_address_in_parent_stack_bt_120 = bitcast i8* %_pot_address_in_parent_stack_111 to i32*
  %31 = select i1 %_cond1_n_cond2_cond3_118, i32* %_address_in_parent_stack_bt_120, i32* %30
  %_new_load_121 = load i32, i32* %31, align 4
  %32 = add i32 %_new_load_106, %_new_load_121, !mcsema_real_eip !14
  %33 = xor i32 %32, %_new_load_121, !mcsema_real_eip !14
  %34 = xor i32 %33, %_new_load_106, !mcsema_real_eip !14
  %35 = and i32 %34, 16, !mcsema_real_eip !14
  %36 = icmp ne i32 %35, 0, !mcsema_real_eip !14
  store i1 %36, i1* %AF, align 1, !mcsema_real_eip !14
  %37 = icmp slt i32 %32, 0
  store i1 %37, i1* %SF, align 1, !mcsema_real_eip !14
  %38 = icmp eq i32 %32, 0, !mcsema_real_eip !14
  store i1 %38, i1* %ZF, align 1, !mcsema_real_eip !14
  %39 = xor i32 %_new_load_121, -2147483648, !mcsema_real_eip !14
  %40 = xor i32 %39, %_new_load_106, !mcsema_real_eip !14
  %41 = and i32 %33, %40, !mcsema_real_eip !14
  %42 = icmp slt i32 %41, 0
  store i1 %42, i1* %OF, align 1, !mcsema_real_eip !14
  %43 = trunc i32 %32 to i8, !mcsema_real_eip !14
  %44 = call i8 @llvm.ctpop.i8(i8 %43), !mcsema_real_eip !14
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  store i1 %46, i1* %PF, align 1, !mcsema_real_eip !14
  %47 = icmp ult i32 %32, %_new_load_121, !mcsema_real_eip !14
  store i1 %47, i1* %CF, align 1, !mcsema_real_eip !14
  %48 = zext i32 %32 to i64, !mcsema_real_eip !14
  store i64 %48, i64* %XDX, align 8, !mcsema_real_eip !14
  store i32 %32, i32* %30, align 4, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_32 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_33 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_32, i64 -20
  %49 = ptrtoint i8* %_new_gep_33 to i64
  %50 = bitcast i8* %_new_gep_33 to i32*
  %_offset_above_rbp_125 = sub i64 %49, %_local_end_to_int_
  %_pot_address_in_parent_stack_126 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_125
  %_cond1_127 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_128 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_129 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_130 = or i1 %_cond2_1_128, %_cond2_2_129
  %_cond4_131 = icmp ule i8* %_pot_address_in_parent_stack_126, %_parent_stack_end_ptr_
  %_cond1_n_cond2_132 = and i1 %_cond1_127, %_cond2_130
  %_cond1_n_cond2_cond3_133 = and i1 %_cond1_n_cond2_132, %_cond4_131
  %_address_in_parent_stack_bt_135 = bitcast i8* %_pot_address_in_parent_stack_126 to i32*
  %_address_in_parent_stack_bt_135. = select i1 %_cond1_n_cond2_cond3_133, i32* %_address_in_parent_stack_bt_135, i32* %50
  %_new_load_136 = load i32, i32* %_address_in_parent_stack_bt_135., align 4
  %51 = add i32 %_new_load_136, 1, !mcsema_real_eip !17
  %52 = xor i32 %51, %_new_load_136, !mcsema_real_eip !17
  %53 = and i32 %52, 16, !mcsema_real_eip !17
  %54 = icmp ne i32 %53, 0, !mcsema_real_eip !17
  store i1 %54, i1* %AF, align 1, !mcsema_real_eip !17
  %55 = icmp slt i32 %51, 0
  store i1 %55, i1* %SF, align 1, !mcsema_real_eip !17
  %56 = icmp eq i32 %51, 0, !mcsema_real_eip !17
  store i1 %56, i1* %ZF, align 1, !mcsema_real_eip !17
  %57 = xor i32 %_new_load_136, -2147483648, !mcsema_real_eip !17
  %58 = and i32 %52, %57, !mcsema_real_eip !17
  %59 = icmp slt i32 %58, 0
  store i1 %59, i1* %OF, align 1, !mcsema_real_eip !17
  %60 = trunc i32 %51 to i8, !mcsema_real_eip !17
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !17
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  store i1 %63, i1* %PF, align 1, !mcsema_real_eip !17
  %64 = icmp eq i32 %_new_load_136, -1
  store i1 %64, i1* %CF, align 1, !mcsema_real_eip !17
  %65 = zext i32 %51 to i64, !mcsema_real_eip !17
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !17
  store i32 %51, i32* %50, align 4, !mcsema_real_eip !18
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x19, !mcsema_real_eip !19

block_0x44:                                       ; preds = %block_0x19
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_14, i64 -16
  %66 = ptrtoint i8* %_new_gep_39 to i64
  %_offset_above_rbp_140 = sub i64 %66, %_local_end_to_int_
  %_pot_address_in_parent_stack_141 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_140
  %_cond1_142 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_143 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_144 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_145 = or i1 %_cond2_1_143, %_cond2_2_144
  %_cond4_146 = icmp ule i8* %_pot_address_in_parent_stack_141, %_parent_stack_end_ptr_
  %_cond1_n_cond2_147 = and i1 %_cond1_142, %_cond2_145
  %_cond1_n_cond2_cond3_148 = and i1 %_cond1_n_cond2_147, %_cond4_146
  %_address_in_parent_stack_bt_150..v = select i1 %_cond1_n_cond2_cond3_148, i8* %_pot_address_in_parent_stack_141, i8* %_new_gep_39
  %_address_in_parent_stack_bt_150. = bitcast i8* %_address_in_parent_stack_bt_150..v to i32*
  %_new_load_151 = load i32, i32* %_address_in_parent_stack_bt_150., align 4
  %67 = zext i32 %_new_load_151 to i64, !mcsema_real_eip !20
  store i64 %67, i64* %XAX, align 8, !mcsema_real_eip !20
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.31 = load i64, i64* %XSP, align 8, !mcsema_real_eip !21
  %_ptr_to_int_152 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41 to i64
  %_offset_above_rbp_155 = sub i64 %_ptr_to_int_152, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  %.v2 = select i1 %_cond1_n_cond2_cond3_163, i8* %_pot_address_in_parent_stack_156, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41
  %68 = bitcast i8* %.v2 to i64*
  %_new_load_166 = load i64, i64* %68, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_166 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_166, i64* %XBP, align 8, !mcsema_real_eip !21
  %_new_gep_43 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, i64 8
  %69 = add i64 %RSP_val.31, 8, !mcsema_real_eip !21
  store volatile i8* %_new_gep_43, i8** %_RSP_ptr_, align 8
  store i64 %69, i64* %XSP, align 8, !mcsema_real_eip !21
  %_new_gep_45 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_41, i64 16
  %70 = add i64 %RSP_val.31, 16, !mcsema_real_eip !22
  %_ptr_to_int_167 = ptrtoint i8* %_new_gep_43 to i64
  %_offset_above_rbp_170 = sub i64 %_ptr_to_int_167, %_local_end_to_int_
  %_pot_address_in_parent_stack_171 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_170
  %_cond1_172 = icmp ugt i8* %_new_gep_43, %_local_stack_end_ptr_
  %_cond2_1_173 = icmp ugt i8* %_new_gep_43, %_parent_stack_end_ptr_
  %_cond2_2_174 = icmp ult i8* %_new_gep_43, %_parent_stack_start_ptr_
  %_cond2_175 = or i1 %_cond2_1_173, %_cond2_2_174
  %_cond4_176 = icmp ule i8* %_pot_address_in_parent_stack_171, %_parent_stack_end_ptr_
  %_cond1_n_cond2_177 = and i1 %_cond1_172, %_cond2_175
  %_cond1_n_cond2_cond3_178 = and i1 %_cond1_n_cond2_177, %_cond4_176
  %_address_in_parent_stack_bt_180._allin_new_bt_46.v = select i1 %_cond1_n_cond2_cond3_178, i8* %_pot_address_in_parent_stack_171, i8* %_new_gep_43
  %_address_in_parent_stack_bt_180._allin_new_bt_46 = bitcast i8* %_address_in_parent_stack_bt_180._allin_new_bt_46.v to i64*
  %_new_load_181 = load i64, i64* %_address_in_parent_stack_bt_180._allin_new_bt_46, align 8
  store i64 %_new_load_181, i64* %XIP, align 8, !mcsema_real_eip !22
  store volatile i8* %_new_gep_45, i8** %_RSP_ptr_, align 8
  store i64 %70, i64* %XSP, align 8, !mcsema_real_eip !22
  ret void, !mcsema_real_eip !22
}

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 18}
!8 = !{i64 25}
!9 = !{i64 28}
!10 = !{i64 31}
!11 = !{i64 37}
!12 = !{i64 41}
!13 = !{i64 45}
!14 = !{i64 48}
!15 = !{i64 51}
!16 = !{i64 54}
!17 = !{i64 57}
!18 = !{i64 60}
!19 = !{i64 63}
!20 = !{i64 68}
!21 = !{i64 71}
!22 = !{i64 72}
