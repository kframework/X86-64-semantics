; ModuleID = 'Output/test_18.clang.trans.opt.bc'
source_filename = "Output/test_18.clang.bc"
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
module asm "  .globl sub_0;"
module asm "  .globl printdata;"
module asm "  .type printdata,@function"
module asm "printdata:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size printdata,0b-printdata;"
module asm "  .cfi_endproc;"

%0 = type <{ [336 x i8], i64, [16 x i8], i64, [24 x i8], i64, [128 x i8], i64, [16 x i8], i64, [24 x i8], i64, [256 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x60 = internal global %0 <{ [336 x i8] c"\00\00\AA\00\00\BB\00\00\CC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (%0* @data_0x60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 8), [128 x i8] zeroinitializer, i64 ptrtoint (%0* @data_0x60 to i64), [16 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 4), [24 x i8] zeroinitializer, i64 add (i64 ptrtoint (%0* @data_0x60 to i64), i64 8), [256 x i8] zeroinitializer }>, align 64

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [16 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %3 = bitcast [16 x i8]* %_local_stack_start_ptr_1 to i32*
  store i32 0, i32* %3, align 4, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 4
  %4 = bitcast i8* %_new_gep_6 to i32*
  store i32 0, i32* %4, align 4, !mcsema_real_eip !5
  %5 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  br label %block_0x12, !mcsema_real_eip !6

block_0x12:                                       ; preds = %block_0x4c, %entry
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2346 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_83.pre, %block_0x4c ], [ %_new_gep_, %entry ]
  %_new_gep_9 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2346, i64 -4
  %6 = bitcast i8* %_new_gep_9 to i32*
  %7 = load i32, i32* %6, align 4, !mcsema_real_eip !6
  %8 = sext i32 %7 to i64, !mcsema_real_eip !6
  store i64 %8, i64* %XAX, align 8, !mcsema_real_eip !6
  %9 = add nsw i64 %8, -104
  %10 = xor i64 %9, %8, !mcsema_real_eip !7
  %11 = and i64 %10, 16, !mcsema_real_eip !7
  %12 = icmp ne i64 %11, 0, !mcsema_real_eip !7
  store i1 %12, i1* %AF, align 1, !mcsema_real_eip !7
  %13 = trunc i64 %9 to i8, !mcsema_real_eip !7
  %14 = call i8 @llvm.ctpop.i8(i8 %13), !mcsema_real_eip !7
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  store i1 %16, i1* %PF, align 1, !mcsema_real_eip !7
  %17 = icmp eq i64 %9, 0, !mcsema_real_eip !7
  store i1 %17, i1* %ZF, align 1, !mcsema_real_eip !7
  %18 = icmp slt i32 %7, 104
  store i1 %18, i1* %SF, align 1, !mcsema_real_eip !7
  %19 = icmp ult i32 %7, 104
  store i1 %19, i1* %CF, align 1, !mcsema_real_eip !7
  %20 = and i64 %10, %8, !mcsema_real_eip !7
  %21 = icmp slt i64 %20, 0
  store i1 %21, i1* %OF, align 1, !mcsema_real_eip !7
  br i1 %19, label %block_0x20, label %block_0x5a, !mcsema_real_eip !8

block_0x20:                                       ; preds = %block_0x12
  %22 = load i32, i32* %6, align 4, !mcsema_real_eip !9
  %23 = sext i32 %22 to i64, !mcsema_real_eip !9
  store i64 %23, i64* %XAX, align 8, !mcsema_real_eip !9
  %24 = shl nsw i64 %23, 3
  %25 = add i64 %24, add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), !mcsema_real_eip !10
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !10
  %27 = load i64, i64* %26, align 8, !mcsema_real_eip !10
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !10
  %28 = trunc i64 %27 to i8, !mcsema_real_eip !10
  %29 = call i8 @llvm.ctpop.i8(i8 %28), !mcsema_real_eip !10
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  store i1 %31, i1* %PF, align 1, !mcsema_real_eip !10
  %32 = icmp eq i64 %27, 0, !mcsema_real_eip !10
  store i1 %32, i1* %ZF, align 1, !mcsema_real_eip !10
  %33 = icmp slt i64 %27, 0
  store i1 %33, i1* %SF, align 1, !mcsema_real_eip !10
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !10
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !10
  br i1 %32, label %block_0x4c, label %block_0x33, !mcsema_real_eip !11

block_0x33:                                       ; preds = %block_0x20
  %34 = load i32, i32* %6, align 4, !mcsema_real_eip !12
  %35 = sext i32 %34 to i64, !mcsema_real_eip !12
  store i64 %35, i64* %XAX, align 8, !mcsema_real_eip !12
  %36 = shl nsw i64 %35, 3
  %37 = add i64 %36, add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), !mcsema_real_eip !13
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !13
  %39 = load i64, i64* %38, align 8, !mcsema_real_eip !13
  store i64 %39, i64* %XAX, align 8, !mcsema_real_eip !13
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !14
  %41 = load i32, i32* %40, align 4, !mcsema_real_eip !14
  %42 = zext i32 %41 to i64, !mcsema_real_eip !14
  store i64 %42, i64* %XCX, align 8, !mcsema_real_eip !14
  %_new_gep_18 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2346, i64 -8
  %43 = bitcast i8* %_new_gep_18 to i32*
  %44 = load i32, i32* %43, align 4, !mcsema_real_eip !15
  %45 = add i32 %41, %44, !mcsema_real_eip !15
  %46 = xor i32 %45, %44, !mcsema_real_eip !15
  %47 = xor i32 %46, %41, !mcsema_real_eip !15
  %48 = and i32 %47, 16, !mcsema_real_eip !15
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !15
  store i1 %49, i1* %AF, align 1, !mcsema_real_eip !15
  %50 = icmp slt i32 %45, 0
  store i1 %50, i1* %SF, align 1, !mcsema_real_eip !15
  %51 = icmp eq i32 %45, 0, !mcsema_real_eip !15
  store i1 %51, i1* %ZF, align 1, !mcsema_real_eip !15
  %52 = xor i32 %44, -2147483648, !mcsema_real_eip !15
  %53 = xor i32 %52, %41, !mcsema_real_eip !15
  %54 = and i32 %46, %53, !mcsema_real_eip !15
  %55 = icmp slt i32 %54, 0
  store i1 %55, i1* %OF, align 1, !mcsema_real_eip !15
  %56 = trunc i32 %45 to i8, !mcsema_real_eip !15
  %57 = call i8 @llvm.ctpop.i8(i8 %56), !mcsema_real_eip !15
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  store i1 %59, i1* %PF, align 1, !mcsema_real_eip !15
  %60 = icmp ult i32 %45, %44, !mcsema_real_eip !15
  store i1 %60, i1* %CF, align 1, !mcsema_real_eip !15
  %61 = zext i32 %45 to i64, !mcsema_real_eip !15
  store i64 %61, i64* %XCX, align 8, !mcsema_real_eip !15
  store i32 %45, i32* %43, align 4, !mcsema_real_eip !16
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_234.pre = load i8*, i8** %5, align 8
  br label %block_0x4c, !mcsema_real_eip !17

block_0x4c:                                       ; preds = %block_0x20, %block_0x33
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_234 = phi i8* [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2346, %block_0x20 ], [ %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_234.pre, %block_0x33 ]
  %_new_gep_24 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_234, i64 -4
  %62 = bitcast i8* %_new_gep_24 to i32*
  %63 = load i32, i32* %62, align 4, !mcsema_real_eip !18
  %64 = add i32 %63, 1, !mcsema_real_eip !19
  %65 = xor i32 %64, %63, !mcsema_real_eip !19
  %66 = and i32 %65, 16, !mcsema_real_eip !19
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !19
  store i1 %67, i1* %AF, align 1, !mcsema_real_eip !19
  %68 = icmp slt i32 %64, 0
  store i1 %68, i1* %SF, align 1, !mcsema_real_eip !19
  %69 = icmp eq i32 %64, 0, !mcsema_real_eip !19
  store i1 %69, i1* %ZF, align 1, !mcsema_real_eip !19
  %70 = xor i32 %63, -2147483648, !mcsema_real_eip !19
  %71 = and i32 %65, %70, !mcsema_real_eip !19
  %72 = icmp slt i32 %71, 0
  store i1 %72, i1* %OF, align 1, !mcsema_real_eip !19
  %73 = trunc i32 %64 to i8, !mcsema_real_eip !19
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !19
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  store i1 %76, i1* %PF, align 1, !mcsema_real_eip !19
  %77 = icmp eq i32 %63, -1
  store i1 %77, i1* %CF, align 1, !mcsema_real_eip !19
  %78 = zext i32 %64 to i64, !mcsema_real_eip !19
  store i64 %78, i64* %XAX, align 8, !mcsema_real_eip !19
  store i32 %64, i32* %62, align 4, !mcsema_real_eip !20
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_83.pre = load i8*, i8** %5, align 8
  br label %block_0x12, !mcsema_real_eip !21

block_0x5a:                                       ; preds = %block_0x12
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_30 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_2346, i64 -8
  %79 = bitcast i8* %_new_gep_30 to i32*
  %80 = load i32, i32* %79, align 4, !mcsema_real_eip !22
  %81 = zext i32 %80 to i64, !mcsema_real_eip !22
  store i64 %81, i64* %XAX, align 8, !mcsema_real_eip !22
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.25 = load i64, i64* %XSP, align 8, !mcsema_real_eip !23
  %_allin_new_bt_33 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32 to i64*
  %82 = load i64, i64* %_allin_new_bt_33, align 8, !mcsema_real_eip !23
  store volatile i64 %82, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %82, i64* %XBP, align 8, !mcsema_real_eip !23
  %_new_gep_34 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 8
  %83 = add i64 %RSP_val.25, 8, !mcsema_real_eip !23
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_, align 8
  store i64 %83, i64* %XSP, align 8, !mcsema_real_eip !23
  %_new_gep_36 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 16
  %84 = add i64 %RSP_val.25, 16, !mcsema_real_eip !24
  %_allin_new_bt_37 = bitcast i8* %_new_gep_34 to i64*
  %85 = load i64, i64* %_allin_new_bt_37, align 8, !mcsema_real_eip !24
  store i64 %85, i64* %XIP, align 8, !mcsema_real_eip !24
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_, align 8
  store i64 %84, i64* %XSP, align 8, !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [16 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 16
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %2 = bitcast [16 x i8]* %_local_stack_start_ptr_1 to i32*
  store i32 0, i32* %2, align 4, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [16 x i8], [16 x i8]* %_local_stack_start_ptr_1, i64 0, i64 4
  %3 = bitcast i8* %_new_gep_6 to i32*
  store i32 0, i32* %3, align 4, !mcsema_real_eip !5
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  br label %block_0x12, !mcsema_real_eip !6

block_0x12:                                       ; preds = %block_0x4c, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_8 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_8.pre, %block_0x4c ], [ %_new_gep_, %entry ]
  %_new_gep_9 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_8, i64 -4
  %4 = ptrtoint i8* %_new_gep_9 to i64
  %_offset_above_rbp_ = sub i64 %4, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %_address_in_parent_stack_bt_..v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_9
  %_address_in_parent_stack_bt_. = bitcast i8* %_address_in_parent_stack_bt_..v to i32*
  %_new_load_ = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %5 = sext i32 %_new_load_ to i64, !mcsema_real_eip !6
  store i64 %5, i64* %XAX, align 8, !mcsema_real_eip !6
  %6 = add nsw i64 %5, -104
  %7 = xor i64 %6, %5, !mcsema_real_eip !7
  %8 = and i64 %7, 16, !mcsema_real_eip !7
  %9 = icmp ne i64 %8, 0, !mcsema_real_eip !7
  store i1 %9, i1* %AF, align 1, !mcsema_real_eip !7
  %10 = trunc i64 %6 to i8, !mcsema_real_eip !7
  %11 = call i8 @llvm.ctpop.i8(i8 %10), !mcsema_real_eip !7
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  store i1 %13, i1* %PF, align 1, !mcsema_real_eip !7
  %14 = icmp eq i64 %6, 0, !mcsema_real_eip !7
  store i1 %14, i1* %ZF, align 1, !mcsema_real_eip !7
  %15 = icmp slt i32 %_new_load_, 104
  store i1 %15, i1* %SF, align 1, !mcsema_real_eip !7
  %16 = icmp ult i32 %_new_load_, 104
  store i1 %16, i1* %CF, align 1, !mcsema_real_eip !7
  %17 = and i64 %7, %5, !mcsema_real_eip !7
  %18 = icmp slt i64 %17, 0
  store i1 %18, i1* %OF, align 1, !mcsema_real_eip !7
  br i1 %16, label %block_0x20, label %block_0x5a, !mcsema_real_eip !8

block_0x20:                                       ; preds = %block_0x12
  %_new_load_52 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %19 = sext i32 %_new_load_52 to i64, !mcsema_real_eip !9
  store i64 %19, i64* %XAX, align 8, !mcsema_real_eip !9
  %20 = shl nsw i64 %19, 3
  %21 = add i64 %20, add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), !mcsema_real_eip !10
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !10
  %_ptr_bt_55 = inttoptr i64 %21 to i8*
  %_offset_above_rbp_56 = sub i64 %21, %_local_end_to_int_
  %_pot_address_in_parent_stack_57 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_56
  %_cond1_58 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_55
  %_cond2_1_59 = icmp ugt i8* %_ptr_bt_55, %_parent_stack_end_ptr_
  %_cond2_2_60 = icmp ult i8* %_ptr_bt_55, %_parent_stack_start_ptr_
  %_cond2_61 = or i1 %_cond2_1_59, %_cond2_2_60
  %_cond4_62 = icmp ule i8* %_pot_address_in_parent_stack_57, %_parent_stack_end_ptr_
  %_cond1_n_cond2_63 = and i1 %_cond1_58, %_cond2_61
  %_cond1_n_cond2_cond3_64 = and i1 %_cond4_62, %_cond1_n_cond2_63
  %_address_in_parent_stack_bt_66 = bitcast i8* %_pot_address_in_parent_stack_57 to i64*
  %23 = select i1 %_cond1_n_cond2_cond3_64, i64* %_address_in_parent_stack_bt_66, i64* %22
  %_new_load_67 = load i64, i64* %23, align 8
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !10
  %24 = trunc i64 %_new_load_67 to i8, !mcsema_real_eip !10
  %25 = call i8 @llvm.ctpop.i8(i8 %24), !mcsema_real_eip !10
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  store i1 %27, i1* %PF, align 1, !mcsema_real_eip !10
  %28 = icmp eq i64 %_new_load_67, 0, !mcsema_real_eip !10
  store i1 %28, i1* %ZF, align 1, !mcsema_real_eip !10
  %29 = icmp slt i64 %_new_load_67, 0
  store i1 %29, i1* %SF, align 1, !mcsema_real_eip !10
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !10
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !10
  br i1 %28, label %block_0x4c, label %block_0x33, !mcsema_real_eip !11

block_0x33:                                       ; preds = %block_0x20
  %_new_load_82 = load i32, i32* %_address_in_parent_stack_bt_., align 4
  %30 = sext i32 %_new_load_82 to i64, !mcsema_real_eip !12
  store i64 %30, i64* %XAX, align 8, !mcsema_real_eip !12
  %31 = shl nsw i64 %30, 3
  %32 = add i64 %31, add (i64 ptrtoint (%0* @data_0x60 to i64), i64 16), !mcsema_real_eip !13
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !13
  %_ptr_bt_85 = inttoptr i64 %32 to i8*
  %_offset_above_rbp_86 = sub i64 %32, %_local_end_to_int_
  %_pot_address_in_parent_stack_87 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_86
  %_cond1_88 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_85
  %_cond2_1_89 = icmp ugt i8* %_ptr_bt_85, %_parent_stack_end_ptr_
  %_cond2_2_90 = icmp ult i8* %_ptr_bt_85, %_parent_stack_start_ptr_
  %_cond2_91 = or i1 %_cond2_1_89, %_cond2_2_90
  %_cond4_92 = icmp ule i8* %_pot_address_in_parent_stack_87, %_parent_stack_end_ptr_
  %_cond1_n_cond2_93 = and i1 %_cond1_88, %_cond2_91
  %_cond1_n_cond2_cond3_94 = and i1 %_cond4_92, %_cond1_n_cond2_93
  %_address_in_parent_stack_bt_96 = bitcast i8* %_pot_address_in_parent_stack_87 to i64*
  %34 = select i1 %_cond1_n_cond2_cond3_94, i64* %_address_in_parent_stack_bt_96, i64* %33
  %_new_load_97 = load i64, i64* %34, align 8
  store i64 %_new_load_97, i64* %XAX, align 8, !mcsema_real_eip !13
  %35 = inttoptr i64 %_new_load_97 to i32*, !mcsema_real_eip !14
  %_ptr_bt_100 = inttoptr i64 %_new_load_97 to i8*
  %_offset_above_rbp_101 = sub i64 %_new_load_97, %_local_end_to_int_
  %_pot_address_in_parent_stack_102 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_101
  %_cond1_103 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_100
  %_cond2_1_104 = icmp ugt i8* %_ptr_bt_100, %_parent_stack_end_ptr_
  %_cond2_2_105 = icmp ult i8* %_ptr_bt_100, %_parent_stack_start_ptr_
  %_cond2_106 = or i1 %_cond2_1_104, %_cond2_2_105
  %_cond4_107 = icmp ule i8* %_pot_address_in_parent_stack_102, %_parent_stack_end_ptr_
  %_cond1_n_cond2_108 = and i1 %_cond1_103, %_cond2_106
  %_cond1_n_cond2_cond3_109 = and i1 %_cond4_107, %_cond1_n_cond2_108
  %_address_in_parent_stack_bt_111 = bitcast i8* %_pot_address_in_parent_stack_102 to i32*
  %_address_in_parent_stack_bt_111. = select i1 %_cond1_n_cond2_cond3_109, i32* %_address_in_parent_stack_bt_111, i32* %35
  %_new_load_112 = load i32, i32* %_address_in_parent_stack_bt_111., align 4
  %36 = zext i32 %_new_load_112 to i64, !mcsema_real_eip !14
  store i64 %36, i64* %XCX, align 8, !mcsema_real_eip !14
  %_new_gep_18 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_8, i64 -8
  %37 = ptrtoint i8* %_new_gep_18 to i64
  %38 = bitcast i8* %_new_gep_18 to i32*
  %_offset_above_rbp_116 = sub i64 %37, %_local_end_to_int_
  %_pot_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_116
  %_cond1_118 = icmp ugt i8* %_new_gep_18, %_local_stack_end_ptr_
  %_cond2_1_119 = icmp ugt i8* %_new_gep_18, %_parent_stack_end_ptr_
  %_cond2_2_120 = icmp ult i8* %_new_gep_18, %_parent_stack_start_ptr_
  %_cond2_121 = or i1 %_cond2_1_119, %_cond2_2_120
  %_cond4_122 = icmp ule i8* %_pot_address_in_parent_stack_117, %_parent_stack_end_ptr_
  %_cond1_n_cond2_123 = and i1 %_cond1_118, %_cond2_121
  %_cond1_n_cond2_cond3_124 = and i1 %_cond1_n_cond2_123, %_cond4_122
  %_address_in_parent_stack_bt_126 = bitcast i8* %_pot_address_in_parent_stack_117 to i32*
  %39 = select i1 %_cond1_n_cond2_cond3_124, i32* %_address_in_parent_stack_bt_126, i32* %38
  %_new_load_127 = load i32, i32* %39, align 4
  %40 = add i32 %_new_load_112, %_new_load_127, !mcsema_real_eip !15
  %41 = xor i32 %40, %_new_load_127, !mcsema_real_eip !15
  %42 = xor i32 %41, %_new_load_112, !mcsema_real_eip !15
  %43 = and i32 %42, 16, !mcsema_real_eip !15
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !15
  store i1 %44, i1* %AF, align 1, !mcsema_real_eip !15
  %45 = icmp slt i32 %40, 0
  store i1 %45, i1* %SF, align 1, !mcsema_real_eip !15
  %46 = icmp eq i32 %40, 0, !mcsema_real_eip !15
  store i1 %46, i1* %ZF, align 1, !mcsema_real_eip !15
  %47 = xor i32 %_new_load_127, -2147483648, !mcsema_real_eip !15
  %48 = xor i32 %47, %_new_load_112, !mcsema_real_eip !15
  %49 = and i32 %41, %48, !mcsema_real_eip !15
  %50 = icmp slt i32 %49, 0
  store i1 %50, i1* %OF, align 1, !mcsema_real_eip !15
  %51 = trunc i32 %40 to i8, !mcsema_real_eip !15
  %52 = call i8 @llvm.ctpop.i8(i8 %51), !mcsema_real_eip !15
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  store i1 %54, i1* %PF, align 1, !mcsema_real_eip !15
  %55 = icmp ult i32 %40, %_new_load_127, !mcsema_real_eip !15
  store i1 %55, i1* %CF, align 1, !mcsema_real_eip !15
  %56 = zext i32 %40 to i64, !mcsema_real_eip !15
  store i64 %56, i64* %XCX, align 8, !mcsema_real_eip !15
  store i32 %40, i32* %38, align 4, !mcsema_real_eip !16
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_23.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x4c, !mcsema_real_eip !17

block_0x4c:                                       ; preds = %block_0x20, %block_0x33
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_23 = phi i8* [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_8, %block_0x20 ], [ %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_23.pre, %block_0x33 ]
  %_new_gep_24 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_23, i64 -4
  %57 = ptrtoint i8* %_new_gep_24 to i64
  %58 = bitcast i8* %_new_gep_24 to i32*
  %_offset_above_rbp_131 = sub i64 %57, %_local_end_to_int_
  %_pot_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_131
  %_cond1_133 = icmp ugt i8* %_new_gep_24, %_local_stack_end_ptr_
  %_cond2_1_134 = icmp ugt i8* %_new_gep_24, %_parent_stack_end_ptr_
  %_cond2_2_135 = icmp ult i8* %_new_gep_24, %_parent_stack_start_ptr_
  %_cond2_136 = or i1 %_cond2_1_134, %_cond2_2_135
  %_cond4_137 = icmp ule i8* %_pot_address_in_parent_stack_132, %_parent_stack_end_ptr_
  %_cond1_n_cond2_138 = and i1 %_cond1_133, %_cond2_136
  %_cond1_n_cond2_cond3_139 = and i1 %_cond1_n_cond2_138, %_cond4_137
  %_address_in_parent_stack_bt_141 = bitcast i8* %_pot_address_in_parent_stack_132 to i32*
  %_address_in_parent_stack_bt_141. = select i1 %_cond1_n_cond2_cond3_139, i32* %_address_in_parent_stack_bt_141, i32* %58
  %_new_load_142 = load i32, i32* %_address_in_parent_stack_bt_141., align 4
  %59 = add i32 %_new_load_142, 1, !mcsema_real_eip !19
  %60 = xor i32 %59, %_new_load_142, !mcsema_real_eip !19
  %61 = and i32 %60, 16, !mcsema_real_eip !19
  %62 = icmp ne i32 %61, 0, !mcsema_real_eip !19
  store i1 %62, i1* %AF, align 1, !mcsema_real_eip !19
  %63 = icmp slt i32 %59, 0
  store i1 %63, i1* %SF, align 1, !mcsema_real_eip !19
  %64 = icmp eq i32 %59, 0, !mcsema_real_eip !19
  store i1 %64, i1* %ZF, align 1, !mcsema_real_eip !19
  %65 = xor i32 %_new_load_142, -2147483648, !mcsema_real_eip !19
  %66 = and i32 %60, %65, !mcsema_real_eip !19
  %67 = icmp slt i32 %66, 0
  store i1 %67, i1* %OF, align 1, !mcsema_real_eip !19
  %68 = trunc i32 %59 to i8, !mcsema_real_eip !19
  %69 = call i8 @llvm.ctpop.i8(i8 %68), !mcsema_real_eip !19
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  store i1 %71, i1* %PF, align 1, !mcsema_real_eip !19
  %72 = icmp eq i32 %_new_load_142, -1
  store i1 %72, i1* %CF, align 1, !mcsema_real_eip !19
  %73 = zext i32 %59 to i64, !mcsema_real_eip !19
  store i64 %73, i64* %XAX, align 8, !mcsema_real_eip !19
  store i32 %59, i32* %58, align 4, !mcsema_real_eip !20
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_8.pre = load i8*, i8** %_RBP_ptr_, align 8
  br label %block_0x12, !mcsema_real_eip !21

block_0x5a:                                       ; preds = %block_0x12
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_30 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_8, i64 -8
  %74 = ptrtoint i8* %_new_gep_30 to i64
  %_offset_above_rbp_146 = sub i64 %74, %_local_end_to_int_
  %_pot_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_146
  %_cond1_148 = icmp ugt i8* %_new_gep_30, %_local_stack_end_ptr_
  %_cond2_1_149 = icmp ugt i8* %_new_gep_30, %_parent_stack_end_ptr_
  %_cond2_2_150 = icmp ult i8* %_new_gep_30, %_parent_stack_start_ptr_
  %_cond2_151 = or i1 %_cond2_1_149, %_cond2_2_150
  %_cond4_152 = icmp ule i8* %_pot_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond1_n_cond2_153 = and i1 %_cond1_148, %_cond2_151
  %_cond1_n_cond2_cond3_154 = and i1 %_cond1_n_cond2_153, %_cond4_152
  %_address_in_parent_stack_bt_156..v = select i1 %_cond1_n_cond2_cond3_154, i8* %_pot_address_in_parent_stack_147, i8* %_new_gep_30
  %_address_in_parent_stack_bt_156. = bitcast i8* %_address_in_parent_stack_bt_156..v to i32*
  %_new_load_157 = load i32, i32* %_address_in_parent_stack_bt_156., align 4
  %75 = zext i32 %_new_load_157 to i64, !mcsema_real_eip !22
  store i64 %75, i64* %XAX, align 8, !mcsema_real_eip !22
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.25 = load i64, i64* %XSP, align 8, !mcsema_real_eip !23
  %_ptr_to_int_158 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32 to i64
  %_offset_above_rbp_161 = sub i64 %_ptr_to_int_158, %_local_end_to_int_
  %_pot_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_cond1_163 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, %_local_stack_end_ptr_
  %_cond2_1_164 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, %_parent_stack_end_ptr_
  %_cond2_2_165 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, %_parent_stack_start_ptr_
  %_cond2_166 = or i1 %_cond2_1_164, %_cond2_2_165
  %_cond4_167 = icmp ule i8* %_pot_address_in_parent_stack_162, %_parent_stack_end_ptr_
  %_cond1_n_cond2_168 = and i1 %_cond1_163, %_cond2_166
  %_cond1_n_cond2_cond3_169 = and i1 %_cond1_n_cond2_168, %_cond4_167
  %.v = select i1 %_cond1_n_cond2_cond3_169, i8* %_pot_address_in_parent_stack_162, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32
  %76 = bitcast i8* %.v to i64*
  %_new_load_172 = load i64, i64* %76, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_172 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_172, i64* %XBP, align 8, !mcsema_real_eip !23
  %_new_gep_34 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 8
  %77 = add i64 %RSP_val.25, 8, !mcsema_real_eip !23
  store volatile i8* %_new_gep_34, i8** %_RSP_ptr_, align 8
  store i64 %77, i64* %XSP, align 8, !mcsema_real_eip !23
  %_new_gep_36 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_32, i64 16
  %78 = add i64 %RSP_val.25, 16, !mcsema_real_eip !24
  %_ptr_to_int_173 = ptrtoint i8* %_new_gep_34 to i64
  %_offset_above_rbp_176 = sub i64 %_ptr_to_int_173, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_new_gep_34, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_new_gep_34, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_new_gep_34, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  %_address_in_parent_stack_bt_186._allin_new_bt_37.v = select i1 %_cond1_n_cond2_cond3_184, i8* %_pot_address_in_parent_stack_177, i8* %_new_gep_34
  %_address_in_parent_stack_bt_186._allin_new_bt_37 = bitcast i8* %_address_in_parent_stack_bt_186._allin_new_bt_37.v to i64*
  %_new_load_187 = load i64, i64* %_address_in_parent_stack_bt_186._allin_new_bt_37, align 8
  store i64 %_new_load_187, i64* %XIP, align 8, !mcsema_real_eip !24
  store volatile i8* %_new_gep_36, i8** %_RSP_ptr_, align 8
  store i64 %78, i64* %XSP, align 8, !mcsema_real_eip !24
  ret void, !mcsema_real_eip !24
}

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 11}
!6 = !{i64 18}
!7 = !{i64 22}
!8 = !{i64 26}
!9 = !{i64 32}
!10 = !{i64 36}
!11 = !{i64 45}
!12 = !{i64 51}
!13 = !{i64 55}
!14 = !{i64 63}
!15 = !{i64 65}
!16 = !{i64 68}
!17 = !{i64 71}
!18 = !{i64 76}
!19 = !{i64 79}
!20 = !{i64 82}
!21 = !{i64 85}
!22 = !{i64 90}
!23 = !{i64 93}
!24 = !{i64 94}
