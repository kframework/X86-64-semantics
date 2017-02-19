; ModuleID = 'Output/test_20.clang.trans.opt.bc'
source_filename = "Output/test_20.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl switches;"
module asm "  .type switches,@function"
module asm "switches:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size switches,0b-switches;"
module asm "  .cfi_endproc;"

%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState*) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_3 = alloca [92 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 92
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 84
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 80
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, align 4
  %3 = bitcast i8* %_new_gep_3 to i32*
  store i32 %EDI_val.5, i32* %3, align 4, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 76
  %4 = bitcast i8* %_new_gep_6 to i32*
  store i32 0, i32* %4, align 4, !mcsema_real_eip !5
  %5 = zext i32 %EDI_val.5 to i64
  store i64 %5, i64* %XDI, align 8, !mcsema_real_eip !6
  %6 = icmp eq i32 %EDI_val.5, 0
  store i1 %6, i1* %ZF, align 1, !mcsema_real_eip !7
  %7 = icmp slt i32 %EDI_val.5, 0
  store i1 %7, i1* %SF, align 1, !mcsema_real_eip !7
  %8 = trunc i32 %EDI_val.5 to i8, !mcsema_real_eip !7
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !7
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  store i1 %11, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !7
  %_new_gep_12 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 72
  %12 = bitcast i8* %_new_gep_12 to i32*
  store i32 %EDI_val.5, i32* %12, align 4, !mcsema_real_eip !8
  br i1 %6, label %block_0x19f, label %block_0x21, !mcsema_real_eip !9

block_0x21:                                       ; preds = %entry
  %13 = add i32 %EDI_val.5, -1
  %14 = xor i32 %13, %EDI_val.5, !mcsema_real_eip !10
  %15 = and i32 %14, 16, !mcsema_real_eip !10
  %16 = icmp ne i32 %15, 0, !mcsema_real_eip !10
  store i1 %16, i1* %AF, align 1, !mcsema_real_eip !10
  %17 = trunc i32 %13 to i8, !mcsema_real_eip !10
  %18 = call i8 @llvm.ctpop.i8(i8 %17), !mcsema_real_eip !10
  %19 = and i8 %18, 1
  %20 = icmp eq i8 %19, 0
  store i1 %20, i1* %PF, align 1, !mcsema_real_eip !10
  %21 = icmp eq i32 %13, 0
  store i1 %21, i1* %ZF, align 1, !mcsema_real_eip !10
  %22 = icmp slt i32 %13, 0
  store i1 %22, i1* %SF, align 1, !mcsema_real_eip !10
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !10
  %23 = and i32 %14, %EDI_val.5, !mcsema_real_eip !10
  %24 = icmp slt i32 %23, 0
  store i1 %24, i1* %OF, align 1, !mcsema_real_eip !10
  %25 = zext i32 %13 to i64, !mcsema_real_eip !10
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !10
  %_new_gep_18 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 68
  %26 = bitcast i8* %_new_gep_18 to i32*
  store i32 %13, i32* %26, align 4, !mcsema_real_eip !11
  br i1 %21, label %block_0x1ad, label %block_0x35, !mcsema_real_eip !12

block_0x35:                                       ; preds = %block_0x21
  %27 = add i32 %EDI_val.5, -2
  %28 = xor i32 %27, %EDI_val.5, !mcsema_real_eip !13
  %29 = and i32 %28, 16, !mcsema_real_eip !13
  %30 = icmp ne i32 %29, 0, !mcsema_real_eip !13
  store i1 %30, i1* %AF, align 1, !mcsema_real_eip !13
  %31 = trunc i32 %27 to i8, !mcsema_real_eip !13
  %32 = call i8 @llvm.ctpop.i8(i8 %31), !mcsema_real_eip !13
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  store i1 %34, i1* %PF, align 1, !mcsema_real_eip !13
  %35 = icmp eq i32 %27, 0
  store i1 %35, i1* %ZF, align 1, !mcsema_real_eip !13
  %36 = icmp slt i32 %27, 0
  store i1 %36, i1* %SF, align 1, !mcsema_real_eip !13
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !13
  %37 = and i32 %28, %EDI_val.5, !mcsema_real_eip !13
  %38 = icmp slt i32 %37, 0
  store i1 %38, i1* %OF, align 1, !mcsema_real_eip !13
  %39 = zext i32 %27 to i64, !mcsema_real_eip !13
  store i64 %39, i64* %XAX, align 8, !mcsema_real_eip !13
  %_new_gep_24 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 64
  %40 = bitcast i8* %_new_gep_24 to i32*
  store i32 %27, i32* %40, align 4, !mcsema_real_eip !14
  br i1 %35, label %block_0x1bb, label %block_0x49, !mcsema_real_eip !15

block_0x49:                                       ; preds = %block_0x35
  %41 = add i32 %EDI_val.5, -4
  %42 = xor i32 %41, %EDI_val.5, !mcsema_real_eip !16
  %43 = and i32 %42, 16, !mcsema_real_eip !16
  %44 = icmp ne i32 %43, 0, !mcsema_real_eip !16
  store i1 %44, i1* %AF, align 1, !mcsema_real_eip !16
  %45 = trunc i32 %41 to i8, !mcsema_real_eip !16
  %46 = call i8 @llvm.ctpop.i8(i8 %45), !mcsema_real_eip !16
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  store i1 %48, i1* %PF, align 1, !mcsema_real_eip !16
  %49 = icmp eq i32 %41, 0
  store i1 %49, i1* %ZF, align 1, !mcsema_real_eip !16
  %50 = icmp slt i32 %41, 0
  store i1 %50, i1* %SF, align 1, !mcsema_real_eip !16
  %51 = icmp ult i32 %EDI_val.5, 4, !mcsema_real_eip !16
  store i1 %51, i1* %CF, align 1, !mcsema_real_eip !16
  %52 = and i32 %42, %EDI_val.5, !mcsema_real_eip !16
  %53 = icmp slt i32 %52, 0
  store i1 %53, i1* %OF, align 1, !mcsema_real_eip !16
  %54 = zext i32 %41 to i64, !mcsema_real_eip !16
  store i64 %54, i64* %XAX, align 8, !mcsema_real_eip !16
  %_new_gep_30 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 60
  %55 = bitcast i8* %_new_gep_30 to i32*
  store i32 %41, i32* %55, align 4, !mcsema_real_eip !17
  br i1 %49, label %block_0x1c9, label %block_0x5d, !mcsema_real_eip !18

block_0x5d:                                       ; preds = %block_0x49
  %56 = add i32 %EDI_val.5, -6
  %57 = xor i32 %56, %EDI_val.5, !mcsema_real_eip !19
  %58 = and i32 %57, 16, !mcsema_real_eip !19
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !19
  store i1 %59, i1* %AF, align 1, !mcsema_real_eip !19
  %60 = trunc i32 %56 to i8, !mcsema_real_eip !19
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !19
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  store i1 %63, i1* %PF, align 1, !mcsema_real_eip !19
  %64 = icmp eq i32 %56, 0
  store i1 %64, i1* %ZF, align 1, !mcsema_real_eip !19
  %65 = icmp slt i32 %56, 0
  store i1 %65, i1* %SF, align 1, !mcsema_real_eip !19
  %66 = icmp ult i32 %EDI_val.5, 6, !mcsema_real_eip !19
  store i1 %66, i1* %CF, align 1, !mcsema_real_eip !19
  %67 = and i32 %57, %EDI_val.5, !mcsema_real_eip !19
  %68 = icmp slt i32 %67, 0
  store i1 %68, i1* %OF, align 1, !mcsema_real_eip !19
  %69 = zext i32 %56 to i64, !mcsema_real_eip !19
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !19
  %_new_gep_36 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 56
  %70 = bitcast i8* %_new_gep_36 to i32*
  store i32 %56, i32* %70, align 4, !mcsema_real_eip !20
  br i1 %64, label %block_0x1d7, label %block_0x71, !mcsema_real_eip !21

block_0x71:                                       ; preds = %block_0x5d
  %71 = add i32 %EDI_val.5, -12
  %72 = xor i32 %71, %EDI_val.5, !mcsema_real_eip !22
  %73 = and i32 %72, 16, !mcsema_real_eip !22
  %74 = icmp ne i32 %73, 0, !mcsema_real_eip !22
  store i1 %74, i1* %AF, align 1, !mcsema_real_eip !22
  %75 = trunc i32 %71 to i8, !mcsema_real_eip !22
  %76 = call i8 @llvm.ctpop.i8(i8 %75), !mcsema_real_eip !22
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  store i1 %78, i1* %PF, align 1, !mcsema_real_eip !22
  %79 = icmp eq i32 %71, 0
  store i1 %79, i1* %ZF, align 1, !mcsema_real_eip !22
  %80 = icmp slt i32 %71, 0
  store i1 %80, i1* %SF, align 1, !mcsema_real_eip !22
  %81 = icmp ult i32 %EDI_val.5, 12, !mcsema_real_eip !22
  store i1 %81, i1* %CF, align 1, !mcsema_real_eip !22
  %82 = and i32 %72, %EDI_val.5, !mcsema_real_eip !22
  %83 = icmp slt i32 %82, 0
  store i1 %83, i1* %OF, align 1, !mcsema_real_eip !22
  %84 = zext i32 %71 to i64, !mcsema_real_eip !22
  store i64 %84, i64* %XAX, align 8, !mcsema_real_eip !22
  %_new_gep_42 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 52
  %85 = bitcast i8* %_new_gep_42 to i32*
  store i32 %71, i32* %85, align 4, !mcsema_real_eip !23
  br i1 %79, label %block_0x1e5, label %block_0x85, !mcsema_real_eip !24

block_0x85:                                       ; preds = %block_0x71
  %86 = add i32 %EDI_val.5, -13
  %87 = xor i32 %86, %EDI_val.5, !mcsema_real_eip !25
  %88 = and i32 %87, 16, !mcsema_real_eip !25
  %89 = icmp ne i32 %88, 0, !mcsema_real_eip !25
  store i1 %89, i1* %AF, align 1, !mcsema_real_eip !25
  %90 = trunc i32 %86 to i8, !mcsema_real_eip !25
  %91 = call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !25
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  store i1 %93, i1* %PF, align 1, !mcsema_real_eip !25
  %94 = icmp eq i32 %86, 0
  store i1 %94, i1* %ZF, align 1, !mcsema_real_eip !25
  %95 = icmp slt i32 %86, 0
  store i1 %95, i1* %SF, align 1, !mcsema_real_eip !25
  %96 = icmp ult i32 %EDI_val.5, 13, !mcsema_real_eip !25
  store i1 %96, i1* %CF, align 1, !mcsema_real_eip !25
  %97 = and i32 %87, %EDI_val.5, !mcsema_real_eip !25
  %98 = icmp slt i32 %97, 0
  store i1 %98, i1* %OF, align 1, !mcsema_real_eip !25
  %99 = zext i32 %86 to i64, !mcsema_real_eip !25
  store i64 %99, i64* %XAX, align 8, !mcsema_real_eip !25
  %_new_gep_48 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 48
  %100 = bitcast i8* %_new_gep_48 to i32*
  store i32 %86, i32* %100, align 4, !mcsema_real_eip !26
  br i1 %94, label %block_0x1f3, label %block_0x99, !mcsema_real_eip !27

block_0x99:                                       ; preds = %block_0x85
  %101 = add i32 %EDI_val.5, -19
  %102 = xor i32 %101, %EDI_val.5, !mcsema_real_eip !28
  %103 = and i32 %102, 16
  %104 = icmp eq i32 %103, 0
  store i1 %104, i1* %AF, align 1, !mcsema_real_eip !28
  %105 = trunc i32 %101 to i8, !mcsema_real_eip !28
  %106 = call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !28
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  store i1 %108, i1* %PF, align 1, !mcsema_real_eip !28
  %109 = icmp eq i32 %101, 0
  store i1 %109, i1* %ZF, align 1, !mcsema_real_eip !28
  %110 = icmp slt i32 %101, 0
  store i1 %110, i1* %SF, align 1, !mcsema_real_eip !28
  %111 = icmp ult i32 %EDI_val.5, 19, !mcsema_real_eip !28
  store i1 %111, i1* %CF, align 1, !mcsema_real_eip !28
  %112 = and i32 %102, %EDI_val.5, !mcsema_real_eip !28
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF, align 1, !mcsema_real_eip !28
  %114 = zext i32 %101 to i64, !mcsema_real_eip !28
  store i64 %114, i64* %XAX, align 8, !mcsema_real_eip !28
  %_new_gep_54 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 44
  %115 = bitcast i8* %_new_gep_54 to i32*
  store i32 %101, i32* %115, align 4, !mcsema_real_eip !29
  br i1 %109, label %block_0x201, label %block_0xad, !mcsema_real_eip !30

block_0xad:                                       ; preds = %block_0x99
  %116 = add i32 %EDI_val.5, -255
  %117 = xor i32 %116, %EDI_val.5, !mcsema_real_eip !31
  %118 = and i32 %117, 16
  %119 = icmp eq i32 %118, 0
  store i1 %119, i1* %AF, align 1, !mcsema_real_eip !31
  %120 = trunc i32 %116 to i8, !mcsema_real_eip !31
  %121 = call i8 @llvm.ctpop.i8(i8 %120), !mcsema_real_eip !31
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  store i1 %123, i1* %PF, align 1, !mcsema_real_eip !31
  %124 = icmp eq i32 %116, 0
  store i1 %124, i1* %ZF, align 1, !mcsema_real_eip !31
  %125 = icmp slt i32 %116, 0
  store i1 %125, i1* %SF, align 1, !mcsema_real_eip !31
  %126 = icmp ult i32 %EDI_val.5, 255, !mcsema_real_eip !31
  store i1 %126, i1* %CF, align 1, !mcsema_real_eip !31
  %127 = and i32 %117, %EDI_val.5, !mcsema_real_eip !31
  %128 = icmp slt i32 %127, 0
  store i1 %128, i1* %OF, align 1, !mcsema_real_eip !31
  %129 = zext i32 %116 to i64, !mcsema_real_eip !31
  store i64 %129, i64* %XAX, align 8, !mcsema_real_eip !31
  %_new_gep_60 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 40
  %130 = bitcast i8* %_new_gep_60 to i32*
  store i32 %116, i32* %130, align 4, !mcsema_real_eip !32
  br i1 %124, label %block_0x20f, label %block_0xc3, !mcsema_real_eip !33

block_0xc3:                                       ; preds = %block_0xad
  %131 = add i32 %EDI_val.5, -74633
  %132 = xor i32 %131, %EDI_val.5, !mcsema_real_eip !34
  %133 = and i32 %132, 16, !mcsema_real_eip !34
  %134 = icmp ne i32 %133, 0, !mcsema_real_eip !34
  store i1 %134, i1* %AF, align 1, !mcsema_real_eip !34
  %135 = trunc i32 %131 to i8, !mcsema_real_eip !34
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !34
  %137 = and i8 %136, 1
  %138 = icmp eq i8 %137, 0
  store i1 %138, i1* %PF, align 1, !mcsema_real_eip !34
  %139 = icmp eq i32 %131, 0
  store i1 %139, i1* %ZF, align 1, !mcsema_real_eip !34
  %140 = icmp slt i32 %131, 0
  store i1 %140, i1* %SF, align 1, !mcsema_real_eip !34
  %141 = icmp ult i32 %EDI_val.5, 74633, !mcsema_real_eip !34
  store i1 %141, i1* %CF, align 1, !mcsema_real_eip !34
  %142 = and i32 %132, %EDI_val.5, !mcsema_real_eip !34
  %143 = icmp slt i32 %142, 0
  store i1 %143, i1* %OF, align 1, !mcsema_real_eip !34
  %144 = zext i32 %131 to i64, !mcsema_real_eip !34
  store i64 %144, i64* %XAX, align 8, !mcsema_real_eip !34
  %_new_gep_66 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 36
  %145 = bitcast i8* %_new_gep_66 to i32*
  store i32 %131, i32* %145, align 4, !mcsema_real_eip !35
  br i1 %139, label %block_0x21f, label %block_0xd9, !mcsema_real_eip !36

block_0xd9:                                       ; preds = %block_0xc3
  %146 = add i32 %EDI_val.5, -74634
  %147 = xor i32 %146, %EDI_val.5, !mcsema_real_eip !37
  %148 = and i32 %147, 16, !mcsema_real_eip !37
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !37
  store i1 %149, i1* %AF, align 1, !mcsema_real_eip !37
  %150 = trunc i32 %146 to i8, !mcsema_real_eip !37
  %151 = call i8 @llvm.ctpop.i8(i8 %150), !mcsema_real_eip !37
  %152 = and i8 %151, 1
  %153 = icmp eq i8 %152, 0
  store i1 %153, i1* %PF, align 1, !mcsema_real_eip !37
  %154 = icmp eq i32 %146, 0
  store i1 %154, i1* %ZF, align 1, !mcsema_real_eip !37
  %155 = icmp slt i32 %146, 0
  store i1 %155, i1* %SF, align 1, !mcsema_real_eip !37
  %156 = icmp ult i32 %EDI_val.5, 74634, !mcsema_real_eip !37
  store i1 %156, i1* %CF, align 1, !mcsema_real_eip !37
  %157 = and i32 %147, %EDI_val.5, !mcsema_real_eip !37
  %158 = icmp slt i32 %157, 0
  store i1 %158, i1* %OF, align 1, !mcsema_real_eip !37
  %159 = zext i32 %146 to i64, !mcsema_real_eip !37
  store i64 %159, i64* %XAX, align 8, !mcsema_real_eip !37
  %_new_gep_72 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 32
  %160 = bitcast i8* %_new_gep_72 to i32*
  store i32 %146, i32* %160, align 4, !mcsema_real_eip !38
  br i1 %154, label %block_0x22f, label %block_0xef, !mcsema_real_eip !39

block_0xef:                                       ; preds = %block_0xd9
  %161 = add i32 %EDI_val.5, -74635
  %162 = xor i32 %161, %EDI_val.5, !mcsema_real_eip !40
  %163 = and i32 %162, 16, !mcsema_real_eip !40
  %164 = icmp ne i32 %163, 0, !mcsema_real_eip !40
  store i1 %164, i1* %AF, align 1, !mcsema_real_eip !40
  %165 = trunc i32 %161 to i8, !mcsema_real_eip !40
  %166 = call i8 @llvm.ctpop.i8(i8 %165), !mcsema_real_eip !40
  %167 = and i8 %166, 1
  %168 = icmp eq i8 %167, 0
  store i1 %168, i1* %PF, align 1, !mcsema_real_eip !40
  %169 = icmp eq i32 %161, 0
  store i1 %169, i1* %ZF, align 1, !mcsema_real_eip !40
  %170 = icmp slt i32 %161, 0
  store i1 %170, i1* %SF, align 1, !mcsema_real_eip !40
  %171 = icmp ult i32 %EDI_val.5, 74635, !mcsema_real_eip !40
  store i1 %171, i1* %CF, align 1, !mcsema_real_eip !40
  %172 = and i32 %162, %EDI_val.5, !mcsema_real_eip !40
  %173 = icmp slt i32 %172, 0
  store i1 %173, i1* %OF, align 1, !mcsema_real_eip !40
  %174 = zext i32 %161 to i64, !mcsema_real_eip !40
  store i64 %174, i64* %XAX, align 8, !mcsema_real_eip !40
  %_new_gep_78 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 28
  %175 = bitcast i8* %_new_gep_78 to i32*
  store i32 %161, i32* %175, align 4, !mcsema_real_eip !41
  br i1 %169, label %block_0x23f, label %block_0x105, !mcsema_real_eip !42

block_0x105:                                      ; preds = %block_0xef
  %176 = add i32 %EDI_val.5, -74636
  %177 = xor i32 %176, %EDI_val.5, !mcsema_real_eip !43
  %178 = and i32 %177, 16, !mcsema_real_eip !43
  %179 = icmp ne i32 %178, 0, !mcsema_real_eip !43
  store i1 %179, i1* %AF, align 1, !mcsema_real_eip !43
  %180 = trunc i32 %176 to i8, !mcsema_real_eip !43
  %181 = call i8 @llvm.ctpop.i8(i8 %180), !mcsema_real_eip !43
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  store i1 %183, i1* %PF, align 1, !mcsema_real_eip !43
  %184 = icmp eq i32 %176, 0
  store i1 %184, i1* %ZF, align 1, !mcsema_real_eip !43
  %185 = icmp slt i32 %176, 0
  store i1 %185, i1* %SF, align 1, !mcsema_real_eip !43
  %186 = icmp ult i32 %EDI_val.5, 74636, !mcsema_real_eip !43
  store i1 %186, i1* %CF, align 1, !mcsema_real_eip !43
  %187 = and i32 %177, %EDI_val.5, !mcsema_real_eip !43
  %188 = icmp slt i32 %187, 0
  store i1 %188, i1* %OF, align 1, !mcsema_real_eip !43
  %189 = zext i32 %176 to i64, !mcsema_real_eip !43
  store i64 %189, i64* %XAX, align 8, !mcsema_real_eip !43
  %_new_gep_84 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 24
  %190 = bitcast i8* %_new_gep_84 to i32*
  store i32 %176, i32* %190, align 4, !mcsema_real_eip !44
  br i1 %184, label %block_0x24f, label %block_0x11b, !mcsema_real_eip !45

block_0x11b:                                      ; preds = %block_0x105
  %191 = add i32 %EDI_val.5, -74637
  %192 = xor i32 %191, %EDI_val.5, !mcsema_real_eip !46
  %193 = and i32 %192, 16, !mcsema_real_eip !46
  %194 = icmp ne i32 %193, 0, !mcsema_real_eip !46
  store i1 %194, i1* %AF, align 1, !mcsema_real_eip !46
  %195 = trunc i32 %191 to i8, !mcsema_real_eip !46
  %196 = call i8 @llvm.ctpop.i8(i8 %195), !mcsema_real_eip !46
  %197 = and i8 %196, 1
  %198 = icmp eq i8 %197, 0
  store i1 %198, i1* %PF, align 1, !mcsema_real_eip !46
  %199 = icmp eq i32 %191, 0
  store i1 %199, i1* %ZF, align 1, !mcsema_real_eip !46
  %200 = icmp slt i32 %191, 0
  store i1 %200, i1* %SF, align 1, !mcsema_real_eip !46
  %201 = icmp ult i32 %EDI_val.5, 74637, !mcsema_real_eip !46
  store i1 %201, i1* %CF, align 1, !mcsema_real_eip !46
  %202 = and i32 %192, %EDI_val.5, !mcsema_real_eip !46
  %203 = icmp slt i32 %202, 0
  store i1 %203, i1* %OF, align 1, !mcsema_real_eip !46
  %204 = zext i32 %191 to i64, !mcsema_real_eip !46
  store i64 %204, i64* %XAX, align 8, !mcsema_real_eip !46
  %_new_gep_90 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 20
  %205 = bitcast i8* %_new_gep_90 to i32*
  store i32 %191, i32* %205, align 4, !mcsema_real_eip !47
  br i1 %199, label %block_0x25f, label %block_0x131, !mcsema_real_eip !48

block_0x131:                                      ; preds = %block_0x11b
  %206 = add i32 %EDI_val.5, -74639
  %207 = xor i32 %206, %EDI_val.5, !mcsema_real_eip !49
  %208 = and i32 %207, 16, !mcsema_real_eip !49
  %209 = icmp ne i32 %208, 0, !mcsema_real_eip !49
  store i1 %209, i1* %AF, align 1, !mcsema_real_eip !49
  %210 = trunc i32 %206 to i8, !mcsema_real_eip !49
  %211 = call i8 @llvm.ctpop.i8(i8 %210), !mcsema_real_eip !49
  %212 = and i8 %211, 1
  %213 = icmp eq i8 %212, 0
  store i1 %213, i1* %PF, align 1, !mcsema_real_eip !49
  %214 = icmp eq i32 %206, 0
  store i1 %214, i1* %ZF, align 1, !mcsema_real_eip !49
  %215 = icmp slt i32 %206, 0
  store i1 %215, i1* %SF, align 1, !mcsema_real_eip !49
  %216 = icmp ult i32 %EDI_val.5, 74639, !mcsema_real_eip !49
  store i1 %216, i1* %CF, align 1, !mcsema_real_eip !49
  %217 = and i32 %207, %EDI_val.5, !mcsema_real_eip !49
  %218 = icmp slt i32 %217, 0
  store i1 %218, i1* %OF, align 1, !mcsema_real_eip !49
  %219 = zext i32 %206 to i64, !mcsema_real_eip !49
  store i64 %219, i64* %XAX, align 8, !mcsema_real_eip !49
  %_new_gep_96 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 16
  %220 = bitcast i8* %_new_gep_96 to i32*
  store i32 %206, i32* %220, align 4, !mcsema_real_eip !50
  br i1 %214, label %block_0x26f, label %block_0x147, !mcsema_real_eip !51

block_0x147:                                      ; preds = %block_0x131
  %221 = add i32 %EDI_val.5, -74640
  %222 = xor i32 %221, %EDI_val.5, !mcsema_real_eip !52
  %223 = and i32 %222, 16
  %224 = icmp eq i32 %223, 0
  store i1 %224, i1* %AF, align 1, !mcsema_real_eip !52
  %225 = trunc i32 %221 to i8, !mcsema_real_eip !52
  %226 = call i8 @llvm.ctpop.i8(i8 %225), !mcsema_real_eip !52
  %227 = and i8 %226, 1
  %228 = icmp eq i8 %227, 0
  store i1 %228, i1* %PF, align 1, !mcsema_real_eip !52
  %229 = icmp eq i32 %221, 0
  store i1 %229, i1* %ZF, align 1, !mcsema_real_eip !52
  %230 = icmp slt i32 %221, 0
  store i1 %230, i1* %SF, align 1, !mcsema_real_eip !52
  %231 = icmp ult i32 %EDI_val.5, 74640, !mcsema_real_eip !52
  store i1 %231, i1* %CF, align 1, !mcsema_real_eip !52
  %232 = and i32 %222, %EDI_val.5, !mcsema_real_eip !52
  %233 = icmp slt i32 %232, 0
  store i1 %233, i1* %OF, align 1, !mcsema_real_eip !52
  %234 = zext i32 %221 to i64, !mcsema_real_eip !52
  store i64 %234, i64* %XAX, align 8, !mcsema_real_eip !52
  %_new_gep_102 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 12
  %235 = bitcast i8* %_new_gep_102 to i32*
  store i32 %221, i32* %235, align 4, !mcsema_real_eip !53
  br i1 %229, label %block_0x27f, label %block_0x15d, !mcsema_real_eip !54

block_0x15d:                                      ; preds = %block_0x147
  %236 = add i32 %EDI_val.5, -74641
  %237 = xor i32 %236, %EDI_val.5, !mcsema_real_eip !55
  %238 = and i32 %237, 16
  %239 = icmp eq i32 %238, 0
  store i1 %239, i1* %AF, align 1, !mcsema_real_eip !55
  %240 = trunc i32 %236 to i8, !mcsema_real_eip !55
  %241 = call i8 @llvm.ctpop.i8(i8 %240), !mcsema_real_eip !55
  %242 = and i8 %241, 1
  %243 = icmp eq i8 %242, 0
  store i1 %243, i1* %PF, align 1, !mcsema_real_eip !55
  %244 = icmp eq i32 %236, 0
  store i1 %244, i1* %ZF, align 1, !mcsema_real_eip !55
  %245 = icmp slt i32 %236, 0
  store i1 %245, i1* %SF, align 1, !mcsema_real_eip !55
  %246 = icmp ult i32 %EDI_val.5, 74641, !mcsema_real_eip !55
  store i1 %246, i1* %CF, align 1, !mcsema_real_eip !55
  %247 = and i32 %237, %EDI_val.5, !mcsema_real_eip !55
  %248 = icmp slt i32 %247, 0
  store i1 %248, i1* %OF, align 1, !mcsema_real_eip !55
  %249 = zext i32 %236 to i64, !mcsema_real_eip !55
  store i64 %249, i64* %XAX, align 8, !mcsema_real_eip !55
  %_new_gep_108 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 8
  %250 = bitcast i8* %_new_gep_108 to i32*
  store i32 %236, i32* %250, align 4, !mcsema_real_eip !56
  br i1 %244, label %block_0x28f, label %block_0x173, !mcsema_real_eip !57

block_0x173:                                      ; preds = %block_0x15d
  %251 = add i32 %EDI_val.5, -74642
  %252 = xor i32 %251, %EDI_val.5, !mcsema_real_eip !58
  %253 = and i32 %252, 16
  %254 = icmp eq i32 %253, 0
  store i1 %254, i1* %AF, align 1, !mcsema_real_eip !58
  %255 = trunc i32 %251 to i8, !mcsema_real_eip !58
  %256 = call i8 @llvm.ctpop.i8(i8 %255), !mcsema_real_eip !58
  %257 = and i8 %256, 1
  %258 = icmp eq i8 %257, 0
  store i1 %258, i1* %PF, align 1, !mcsema_real_eip !58
  %259 = icmp eq i32 %251, 0
  store i1 %259, i1* %ZF, align 1, !mcsema_real_eip !58
  %260 = icmp slt i32 %251, 0
  store i1 %260, i1* %SF, align 1, !mcsema_real_eip !58
  %261 = icmp ult i32 %EDI_val.5, 74642, !mcsema_real_eip !58
  store i1 %261, i1* %CF, align 1, !mcsema_real_eip !58
  %262 = and i32 %252, %EDI_val.5, !mcsema_real_eip !58
  %263 = icmp slt i32 %262, 0
  store i1 %263, i1* %OF, align 1, !mcsema_real_eip !58
  %264 = zext i32 %251 to i64, !mcsema_real_eip !58
  store i64 %264, i64* %XAX, align 8, !mcsema_real_eip !58
  %_new_gep_114 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 4
  %265 = bitcast i8* %_new_gep_114 to i32*
  store i32 %251, i32* %265, align 4, !mcsema_real_eip !59
  br i1 %259, label %block_0x29f, label %block_0x189, !mcsema_real_eip !60

block_0x189:                                      ; preds = %block_0x173
  %266 = add i32 %EDI_val.5, -74643
  %267 = xor i32 %266, %EDI_val.5, !mcsema_real_eip !61
  %268 = and i32 %267, 16
  %269 = icmp eq i32 %268, 0
  store i1 %269, i1* %AF, align 1, !mcsema_real_eip !61
  %270 = trunc i32 %266 to i8, !mcsema_real_eip !61
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !61
  %272 = and i8 %271, 1
  %273 = icmp eq i8 %272, 0
  store i1 %273, i1* %PF, align 1, !mcsema_real_eip !61
  %274 = icmp eq i32 %266, 0
  store i1 %274, i1* %ZF, align 1, !mcsema_real_eip !61
  %275 = icmp slt i32 %266, 0
  store i1 %275, i1* %SF, align 1, !mcsema_real_eip !61
  %276 = icmp ult i32 %EDI_val.5, 74643, !mcsema_real_eip !61
  store i1 %276, i1* %CF, align 1, !mcsema_real_eip !61
  %277 = and i32 %267, %EDI_val.5, !mcsema_real_eip !61
  %278 = icmp slt i32 %277, 0
  store i1 %278, i1* %OF, align 1, !mcsema_real_eip !61
  %279 = bitcast [92 x i8]* %_local_stack_start_ptr_3 to i32*
  store i32 %266, i32* %279, align 4, !mcsema_real_eip !62
  store i64 0, i64* %XAX, align 8
  br i1 %274, label %block_0x2af, label %block_0x2bf, !mcsema_real_eip !63

block_0x19f:                                      ; preds = %entry
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !64
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !65
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !65
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !65
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !65
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !65
  br label %block_0x2c8, !mcsema_real_eip !66

block_0x1ad:                                      ; preds = %block_0x21
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !67
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !68

block_0x1bb:                                      ; preds = %block_0x35
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !69
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !70

block_0x1c9:                                      ; preds = %block_0x49
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !71
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !72

block_0x1d7:                                      ; preds = %block_0x5d
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !73
  %280 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %280, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !74
  br label %block_0x2c8, !mcsema_real_eip !75

block_0x1e5:                                      ; preds = %block_0x71
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !76
  %281 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %281, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !77
  br label %block_0x2c8, !mcsema_real_eip !78

block_0x1f3:                                      ; preds = %block_0x85
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !79
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !80

block_0x201:                                      ; preds = %block_0x99
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !81
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !82

block_0x20f:                                      ; preds = %block_0xad
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !83
  %282 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %282, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !84
  br label %block_0x2c8, !mcsema_real_eip !85

block_0x21f:                                      ; preds = %block_0xc3
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !86
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !87

block_0x22f:                                      ; preds = %block_0xd9
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !88
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !89

block_0x23f:                                      ; preds = %block_0xef
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !90
  %283 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %283, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !91
  br label %block_0x2c8, !mcsema_real_eip !92

block_0x24f:                                      ; preds = %block_0x105
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !93
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !94

block_0x25f:                                      ; preds = %block_0x11b
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !95
  %284 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %284, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !96
  br label %block_0x2c8, !mcsema_real_eip !97

block_0x26f:                                      ; preds = %block_0x131
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !98
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !99

block_0x27f:                                      ; preds = %block_0x147
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !100
  %285 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %285, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !101
  br label %block_0x2c8, !mcsema_real_eip !102

block_0x28f:                                      ; preds = %block_0x15d
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !103
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !104

block_0x29f:                                      ; preds = %block_0x173
  store i64 0, i64* %XAX, align 8, !mcsema_real_eip !105
  call void @llvm.memset.p0i8.i64(i8* nonnull %PF_full, i8 0, i64 5, i32 1, i1 false)
  br label %block_0x2c8, !mcsema_real_eip !106

block_0x2af:                                      ; preds = %block_0x189
  %286 = bitcast i8* %AF_full to i32*
  store i32 0, i32* %286, align 1
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !107
  br label %block_0x2c8, !mcsema_real_eip !108

block_0x2bf:                                      ; preds = %block_0x189
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !109
  store i1 false, i1* %SF, align 1, !mcsema_real_eip !109
  store i1 true, i1* %ZF, align 1, !mcsema_real_eip !109
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !109
  store i1 true, i1* %PF, align 1, !mcsema_real_eip !109
  br label %block_0x2c8, !mcsema_real_eip !110

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %EAX_val.239.sink = phi i32 [ 0, %block_0x2bf ], [ 74643, %block_0x2af ], [ 74642, %block_0x29f ], [ 74641, %block_0x28f ], [ 74640, %block_0x27f ], [ 74639, %block_0x26f ], [ 74637, %block_0x25f ], [ 74636, %block_0x24f ], [ 74635, %block_0x23f ], [ 74634, %block_0x22f ], [ 74633, %block_0x21f ], [ 255, %block_0x20f ], [ 19, %block_0x201 ], [ 13, %block_0x1f3 ], [ 12, %block_0x1e5 ], [ 6, %block_0x1d7 ], [ 4, %block_0x1c9 ], [ 2, %block_0x1bb ], [ 1, %block_0x1ad ], [ 0, %block_0x19f ]
  store i1 false, i1* %CF, align 1
  %287 = zext i32 %EAX_val.239.sink to i64
  store i32 %EAX_val.239.sink, i32* %4, align 4
  store i64 %287, i64* %XAX, align 8, !mcsema_real_eip !110
  store volatile i64 undef, i64* %_RBP_ptr_.sroa.0, align 8
  %_new_gep_247 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 92
  store volatile i8* %_new_gep_247, i8** %_RSP_ptr_, align 8
  %_new_gep_249 = getelementptr [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 100
  %288 = add i64 %RSP_val.1, 8, !mcsema_real_eip !111
  store volatile i8* %_new_gep_249, i8** %_RSP_ptr_, align 8
  store i64 %288, i64* %XSP, align 8, !mcsema_real_eip !111
  ret void, !mcsema_real_eip !111
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_3 = alloca [92 x i8], align 4
  %_local_stack_end_ptr_ = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 92
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
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
  %_new_gep_ = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 84
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store i64 %1, i64* %XSP, align 8, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %_new_gep_3 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 80
  %EDI.4 = bitcast i64* %XDI to i32*, !mcsema_real_eip !4
  %EDI_val.5 = load i32, i32* %EDI.4, align 4, !mcsema_real_eip !4
  %2 = bitcast i8* %_new_gep_3 to i32*
  store i32 %EDI_val.5, i32* %2, align 4, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 76
  %3 = bitcast i8* %_new_gep_6 to i32*
  store i32 0, i32* %3, align 4, !mcsema_real_eip !5
  %4 = zext i32 %EDI_val.5 to i64, !mcsema_real_eip !6
  store i64 %4, i64* %XDI, align 8, !mcsema_real_eip !6
  %5 = icmp eq i32 %EDI_val.5, 0
  store i1 %5, i1* %ZF, align 1, !mcsema_real_eip !7
  %6 = icmp slt i32 %EDI_val.5, 0
  store i1 %6, i1* %SF, align 1, !mcsema_real_eip !7
  %7 = trunc i32 %EDI_val.5 to i8, !mcsema_real_eip !7
  %8 = call i8 @llvm.ctpop.i8(i8 %7), !mcsema_real_eip !7
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  store i1 %10, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !7
  %_new_gep_12 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 72
  %11 = bitcast i8* %_new_gep_12 to i32*
  store i32 %EDI_val.5, i32* %11, align 4, !mcsema_real_eip !8
  br i1 %5, label %block_0x19f, label %block_0x21, !mcsema_real_eip !9

block_0x21:                                       ; preds = %entry
  %_address_in_parent_stack_bt_264. = bitcast i8* %_new_gep_12 to i32*
  %_new_load_265 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %12 = add i32 %_new_load_265, -1
  %13 = xor i32 %12, %_new_load_265, !mcsema_real_eip !10
  %14 = and i32 %13, 16, !mcsema_real_eip !10
  %15 = icmp ne i32 %14, 0, !mcsema_real_eip !10
  store i1 %15, i1* %AF, align 1, !mcsema_real_eip !10
  %16 = trunc i32 %12 to i8, !mcsema_real_eip !10
  %17 = call i8 @llvm.ctpop.i8(i8 %16), !mcsema_real_eip !10
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  store i1 %19, i1* %PF, align 1, !mcsema_real_eip !10
  %20 = icmp eq i32 %12, 0
  store i1 %20, i1* %ZF, align 1, !mcsema_real_eip !10
  %21 = icmp slt i32 %12, 0
  store i1 %21, i1* %SF, align 1, !mcsema_real_eip !10
  %22 = icmp eq i32 %_new_load_265, 0
  store i1 %22, i1* %CF, align 1, !mcsema_real_eip !10
  %23 = and i32 %13, %_new_load_265, !mcsema_real_eip !10
  %24 = icmp slt i32 %23, 0
  store i1 %24, i1* %OF, align 1, !mcsema_real_eip !10
  %25 = zext i32 %12 to i64, !mcsema_real_eip !10
  store i64 %25, i64* %XAX, align 8, !mcsema_real_eip !10
  %_new_gep_18 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 68
  %26 = bitcast i8* %_new_gep_18 to i32*
  store i32 %12, i32* %26, align 4, !mcsema_real_eip !11
  br i1 %20, label %block_0x1ad, label %block_0x35, !mcsema_real_eip !12

block_0x35:                                       ; preds = %block_0x21
  %_new_load_280 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %27 = add i32 %_new_load_280, -2
  %28 = xor i32 %27, %_new_load_280, !mcsema_real_eip !13
  %29 = and i32 %28, 16, !mcsema_real_eip !13
  %30 = icmp ne i32 %29, 0, !mcsema_real_eip !13
  store i1 %30, i1* %AF, align 1, !mcsema_real_eip !13
  %31 = trunc i32 %27 to i8, !mcsema_real_eip !13
  %32 = call i8 @llvm.ctpop.i8(i8 %31), !mcsema_real_eip !13
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  store i1 %34, i1* %PF, align 1, !mcsema_real_eip !13
  %35 = icmp eq i32 %27, 0
  store i1 %35, i1* %ZF, align 1, !mcsema_real_eip !13
  %36 = icmp slt i32 %27, 0
  store i1 %36, i1* %SF, align 1, !mcsema_real_eip !13
  %37 = icmp ult i32 %_new_load_280, 2, !mcsema_real_eip !13
  store i1 %37, i1* %CF, align 1, !mcsema_real_eip !13
  %38 = and i32 %28, %_new_load_280, !mcsema_real_eip !13
  %39 = icmp slt i32 %38, 0
  store i1 %39, i1* %OF, align 1, !mcsema_real_eip !13
  %40 = zext i32 %27 to i64, !mcsema_real_eip !13
  store i64 %40, i64* %XAX, align 8, !mcsema_real_eip !13
  %_new_gep_24 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 64
  %41 = bitcast i8* %_new_gep_24 to i32*
  store i32 %27, i32* %41, align 4, !mcsema_real_eip !14
  br i1 %35, label %block_0x1bb, label %block_0x49, !mcsema_real_eip !15

block_0x49:                                       ; preds = %block_0x35
  %_new_load_295 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %42 = add i32 %_new_load_295, -4
  %43 = xor i32 %42, %_new_load_295, !mcsema_real_eip !16
  %44 = and i32 %43, 16, !mcsema_real_eip !16
  %45 = icmp ne i32 %44, 0, !mcsema_real_eip !16
  store i1 %45, i1* %AF, align 1, !mcsema_real_eip !16
  %46 = trunc i32 %42 to i8, !mcsema_real_eip !16
  %47 = call i8 @llvm.ctpop.i8(i8 %46), !mcsema_real_eip !16
  %48 = and i8 %47, 1
  %49 = icmp eq i8 %48, 0
  store i1 %49, i1* %PF, align 1, !mcsema_real_eip !16
  %50 = icmp eq i32 %42, 0
  store i1 %50, i1* %ZF, align 1, !mcsema_real_eip !16
  %51 = icmp slt i32 %42, 0
  store i1 %51, i1* %SF, align 1, !mcsema_real_eip !16
  %52 = icmp ult i32 %_new_load_295, 4, !mcsema_real_eip !16
  store i1 %52, i1* %CF, align 1, !mcsema_real_eip !16
  %53 = and i32 %43, %_new_load_295, !mcsema_real_eip !16
  %54 = icmp slt i32 %53, 0
  store i1 %54, i1* %OF, align 1, !mcsema_real_eip !16
  %55 = zext i32 %42 to i64, !mcsema_real_eip !16
  store i64 %55, i64* %XAX, align 8, !mcsema_real_eip !16
  %_new_gep_30 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 60
  %56 = bitcast i8* %_new_gep_30 to i32*
  store i32 %42, i32* %56, align 4, !mcsema_real_eip !17
  br i1 %50, label %block_0x1c9, label %block_0x5d, !mcsema_real_eip !18

block_0x5d:                                       ; preds = %block_0x49
  %_new_load_310 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %57 = add i32 %_new_load_310, -6
  %58 = xor i32 %57, %_new_load_310, !mcsema_real_eip !19
  %59 = and i32 %58, 16, !mcsema_real_eip !19
  %60 = icmp ne i32 %59, 0, !mcsema_real_eip !19
  store i1 %60, i1* %AF, align 1, !mcsema_real_eip !19
  %61 = trunc i32 %57 to i8, !mcsema_real_eip !19
  %62 = call i8 @llvm.ctpop.i8(i8 %61), !mcsema_real_eip !19
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  store i1 %64, i1* %PF, align 1, !mcsema_real_eip !19
  %65 = icmp eq i32 %57, 0
  store i1 %65, i1* %ZF, align 1, !mcsema_real_eip !19
  %66 = icmp slt i32 %57, 0
  store i1 %66, i1* %SF, align 1, !mcsema_real_eip !19
  %67 = icmp ult i32 %_new_load_310, 6, !mcsema_real_eip !19
  store i1 %67, i1* %CF, align 1, !mcsema_real_eip !19
  %68 = and i32 %58, %_new_load_310, !mcsema_real_eip !19
  %69 = icmp slt i32 %68, 0
  store i1 %69, i1* %OF, align 1, !mcsema_real_eip !19
  %70 = zext i32 %57 to i64, !mcsema_real_eip !19
  store i64 %70, i64* %XAX, align 8, !mcsema_real_eip !19
  %_new_gep_36 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 56
  %71 = bitcast i8* %_new_gep_36 to i32*
  store i32 %57, i32* %71, align 4, !mcsema_real_eip !20
  br i1 %65, label %block_0x1d7, label %block_0x71, !mcsema_real_eip !21

block_0x71:                                       ; preds = %block_0x5d
  %_new_load_325 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %72 = add i32 %_new_load_325, -12
  %73 = xor i32 %72, %_new_load_325, !mcsema_real_eip !22
  %74 = and i32 %73, 16, !mcsema_real_eip !22
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !22
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !22
  %76 = trunc i32 %72 to i8, !mcsema_real_eip !22
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !22
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  store i1 %79, i1* %PF, align 1, !mcsema_real_eip !22
  %80 = icmp eq i32 %72, 0
  store i1 %80, i1* %ZF, align 1, !mcsema_real_eip !22
  %81 = icmp slt i32 %72, 0
  store i1 %81, i1* %SF, align 1, !mcsema_real_eip !22
  %82 = icmp ult i32 %_new_load_325, 12, !mcsema_real_eip !22
  store i1 %82, i1* %CF, align 1, !mcsema_real_eip !22
  %83 = and i32 %73, %_new_load_325, !mcsema_real_eip !22
  %84 = icmp slt i32 %83, 0
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !22
  %85 = zext i32 %72 to i64, !mcsema_real_eip !22
  store i64 %85, i64* %XAX, align 8, !mcsema_real_eip !22
  %_new_gep_42 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 52
  %86 = bitcast i8* %_new_gep_42 to i32*
  store i32 %72, i32* %86, align 4, !mcsema_real_eip !23
  br i1 %80, label %block_0x1e5, label %block_0x85, !mcsema_real_eip !24

block_0x85:                                       ; preds = %block_0x71
  %_new_load_340 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %87 = add i32 %_new_load_340, -13
  %88 = xor i32 %87, %_new_load_340, !mcsema_real_eip !25
  %89 = and i32 %88, 16, !mcsema_real_eip !25
  %90 = icmp ne i32 %89, 0, !mcsema_real_eip !25
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !25
  %91 = trunc i32 %87 to i8, !mcsema_real_eip !25
  %92 = call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !25
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !25
  %95 = icmp eq i32 %87, 0
  store i1 %95, i1* %ZF, align 1, !mcsema_real_eip !25
  %96 = icmp slt i32 %87, 0
  store i1 %96, i1* %SF, align 1, !mcsema_real_eip !25
  %97 = icmp ult i32 %_new_load_340, 13, !mcsema_real_eip !25
  store i1 %97, i1* %CF, align 1, !mcsema_real_eip !25
  %98 = and i32 %88, %_new_load_340, !mcsema_real_eip !25
  %99 = icmp slt i32 %98, 0
  store i1 %99, i1* %OF, align 1, !mcsema_real_eip !25
  %100 = zext i32 %87 to i64, !mcsema_real_eip !25
  store i64 %100, i64* %XAX, align 8, !mcsema_real_eip !25
  %_new_gep_48 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 48
  %101 = bitcast i8* %_new_gep_48 to i32*
  store i32 %87, i32* %101, align 4, !mcsema_real_eip !26
  br i1 %95, label %block_0x1f3, label %block_0x99, !mcsema_real_eip !27

block_0x99:                                       ; preds = %block_0x85
  %_new_load_355 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %102 = add i32 %_new_load_355, -19
  %103 = xor i32 %102, %_new_load_355, !mcsema_real_eip !28
  %104 = and i32 %103, 16
  %105 = icmp eq i32 %104, 0
  store i1 %105, i1* %AF, align 1, !mcsema_real_eip !28
  %106 = trunc i32 %102 to i8, !mcsema_real_eip !28
  %107 = call i8 @llvm.ctpop.i8(i8 %106), !mcsema_real_eip !28
  %108 = and i8 %107, 1
  %109 = icmp eq i8 %108, 0
  store i1 %109, i1* %PF, align 1, !mcsema_real_eip !28
  %110 = icmp eq i32 %102, 0
  store i1 %110, i1* %ZF, align 1, !mcsema_real_eip !28
  %111 = icmp slt i32 %102, 0
  store i1 %111, i1* %SF, align 1, !mcsema_real_eip !28
  %112 = icmp ult i32 %_new_load_355, 19, !mcsema_real_eip !28
  store i1 %112, i1* %CF, align 1, !mcsema_real_eip !28
  %113 = and i32 %103, %_new_load_355, !mcsema_real_eip !28
  %114 = icmp slt i32 %113, 0
  store i1 %114, i1* %OF, align 1, !mcsema_real_eip !28
  %115 = zext i32 %102 to i64, !mcsema_real_eip !28
  store i64 %115, i64* %XAX, align 8, !mcsema_real_eip !28
  %_new_gep_54 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 44
  %116 = bitcast i8* %_new_gep_54 to i32*
  store i32 %102, i32* %116, align 4, !mcsema_real_eip !29
  br i1 %110, label %block_0x201, label %block_0xad, !mcsema_real_eip !30

block_0xad:                                       ; preds = %block_0x99
  %_new_load_370 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %117 = add i32 %_new_load_370, -255
  %118 = xor i32 %117, %_new_load_370, !mcsema_real_eip !31
  %119 = and i32 %118, 16
  %120 = icmp eq i32 %119, 0
  store i1 %120, i1* %AF, align 1, !mcsema_real_eip !31
  %121 = trunc i32 %117 to i8, !mcsema_real_eip !31
  %122 = call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !31
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  store i1 %124, i1* %PF, align 1, !mcsema_real_eip !31
  %125 = icmp eq i32 %117, 0
  store i1 %125, i1* %ZF, align 1, !mcsema_real_eip !31
  %126 = icmp slt i32 %117, 0
  store i1 %126, i1* %SF, align 1, !mcsema_real_eip !31
  %127 = icmp ult i32 %_new_load_370, 255, !mcsema_real_eip !31
  store i1 %127, i1* %CF, align 1, !mcsema_real_eip !31
  %128 = and i32 %118, %_new_load_370, !mcsema_real_eip !31
  %129 = icmp slt i32 %128, 0
  store i1 %129, i1* %OF, align 1, !mcsema_real_eip !31
  %130 = zext i32 %117 to i64, !mcsema_real_eip !31
  store i64 %130, i64* %XAX, align 8, !mcsema_real_eip !31
  %_new_gep_60 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 40
  %131 = bitcast i8* %_new_gep_60 to i32*
  store i32 %117, i32* %131, align 4, !mcsema_real_eip !32
  br i1 %125, label %block_0x20f, label %block_0xc3, !mcsema_real_eip !33

block_0xc3:                                       ; preds = %block_0xad
  %_new_load_385 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %132 = add i32 %_new_load_385, -74633
  %133 = xor i32 %132, %_new_load_385, !mcsema_real_eip !34
  %134 = and i32 %133, 16, !mcsema_real_eip !34
  %135 = icmp ne i32 %134, 0, !mcsema_real_eip !34
  store i1 %135, i1* %AF, align 1, !mcsema_real_eip !34
  %136 = trunc i32 %132 to i8, !mcsema_real_eip !34
  %137 = call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !34
  %138 = and i8 %137, 1
  %139 = icmp eq i8 %138, 0
  store i1 %139, i1* %PF, align 1, !mcsema_real_eip !34
  %140 = icmp eq i32 %132, 0
  store i1 %140, i1* %ZF, align 1, !mcsema_real_eip !34
  %141 = icmp slt i32 %132, 0
  store i1 %141, i1* %SF, align 1, !mcsema_real_eip !34
  %142 = icmp ult i32 %_new_load_385, 74633, !mcsema_real_eip !34
  store i1 %142, i1* %CF, align 1, !mcsema_real_eip !34
  %143 = and i32 %133, %_new_load_385, !mcsema_real_eip !34
  %144 = icmp slt i32 %143, 0
  store i1 %144, i1* %OF, align 1, !mcsema_real_eip !34
  %145 = zext i32 %132 to i64, !mcsema_real_eip !34
  store i64 %145, i64* %XAX, align 8, !mcsema_real_eip !34
  %_new_gep_66 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 36
  %146 = bitcast i8* %_new_gep_66 to i32*
  store i32 %132, i32* %146, align 4, !mcsema_real_eip !35
  br i1 %140, label %block_0x21f, label %block_0xd9, !mcsema_real_eip !36

block_0xd9:                                       ; preds = %block_0xc3
  %_new_load_400 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %147 = add i32 %_new_load_400, -74634
  %148 = xor i32 %147, %_new_load_400, !mcsema_real_eip !37
  %149 = and i32 %148, 16, !mcsema_real_eip !37
  %150 = icmp ne i32 %149, 0, !mcsema_real_eip !37
  store i1 %150, i1* %AF, align 1, !mcsema_real_eip !37
  %151 = trunc i32 %147 to i8, !mcsema_real_eip !37
  %152 = call i8 @llvm.ctpop.i8(i8 %151), !mcsema_real_eip !37
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  store i1 %154, i1* %PF, align 1, !mcsema_real_eip !37
  %155 = icmp eq i32 %147, 0
  store i1 %155, i1* %ZF, align 1, !mcsema_real_eip !37
  %156 = icmp slt i32 %147, 0
  store i1 %156, i1* %SF, align 1, !mcsema_real_eip !37
  %157 = icmp ult i32 %_new_load_400, 74634, !mcsema_real_eip !37
  store i1 %157, i1* %CF, align 1, !mcsema_real_eip !37
  %158 = and i32 %148, %_new_load_400, !mcsema_real_eip !37
  %159 = icmp slt i32 %158, 0
  store i1 %159, i1* %OF, align 1, !mcsema_real_eip !37
  %160 = zext i32 %147 to i64, !mcsema_real_eip !37
  store i64 %160, i64* %XAX, align 8, !mcsema_real_eip !37
  %_new_gep_72 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 32
  %161 = bitcast i8* %_new_gep_72 to i32*
  store i32 %147, i32* %161, align 4, !mcsema_real_eip !38
  br i1 %155, label %block_0x22f, label %block_0xef, !mcsema_real_eip !39

block_0xef:                                       ; preds = %block_0xd9
  %_new_load_415 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %162 = add i32 %_new_load_415, -74635
  %163 = xor i32 %162, %_new_load_415, !mcsema_real_eip !40
  %164 = and i32 %163, 16, !mcsema_real_eip !40
  %165 = icmp ne i32 %164, 0, !mcsema_real_eip !40
  store i1 %165, i1* %AF, align 1, !mcsema_real_eip !40
  %166 = trunc i32 %162 to i8, !mcsema_real_eip !40
  %167 = call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !40
  %168 = and i8 %167, 1
  %169 = icmp eq i8 %168, 0
  store i1 %169, i1* %PF, align 1, !mcsema_real_eip !40
  %170 = icmp eq i32 %162, 0
  store i1 %170, i1* %ZF, align 1, !mcsema_real_eip !40
  %171 = icmp slt i32 %162, 0
  store i1 %171, i1* %SF, align 1, !mcsema_real_eip !40
  %172 = icmp ult i32 %_new_load_415, 74635, !mcsema_real_eip !40
  store i1 %172, i1* %CF, align 1, !mcsema_real_eip !40
  %173 = and i32 %163, %_new_load_415, !mcsema_real_eip !40
  %174 = icmp slt i32 %173, 0
  store i1 %174, i1* %OF, align 1, !mcsema_real_eip !40
  %175 = zext i32 %162 to i64, !mcsema_real_eip !40
  store i64 %175, i64* %XAX, align 8, !mcsema_real_eip !40
  %_new_gep_78 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 28
  %176 = bitcast i8* %_new_gep_78 to i32*
  store i32 %162, i32* %176, align 4, !mcsema_real_eip !41
  br i1 %170, label %block_0x23f, label %block_0x105, !mcsema_real_eip !42

block_0x105:                                      ; preds = %block_0xef
  %_new_load_430 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %177 = add i32 %_new_load_430, -74636
  %178 = xor i32 %177, %_new_load_430, !mcsema_real_eip !43
  %179 = and i32 %178, 16, !mcsema_real_eip !43
  %180 = icmp ne i32 %179, 0, !mcsema_real_eip !43
  store i1 %180, i1* %AF, align 1, !mcsema_real_eip !43
  %181 = trunc i32 %177 to i8, !mcsema_real_eip !43
  %182 = call i8 @llvm.ctpop.i8(i8 %181), !mcsema_real_eip !43
  %183 = and i8 %182, 1
  %184 = icmp eq i8 %183, 0
  store i1 %184, i1* %PF, align 1, !mcsema_real_eip !43
  %185 = icmp eq i32 %177, 0
  store i1 %185, i1* %ZF, align 1, !mcsema_real_eip !43
  %186 = icmp slt i32 %177, 0
  store i1 %186, i1* %SF, align 1, !mcsema_real_eip !43
  %187 = icmp ult i32 %_new_load_430, 74636, !mcsema_real_eip !43
  store i1 %187, i1* %CF, align 1, !mcsema_real_eip !43
  %188 = and i32 %178, %_new_load_430, !mcsema_real_eip !43
  %189 = icmp slt i32 %188, 0
  store i1 %189, i1* %OF, align 1, !mcsema_real_eip !43
  %190 = zext i32 %177 to i64, !mcsema_real_eip !43
  store i64 %190, i64* %XAX, align 8, !mcsema_real_eip !43
  %_new_gep_84 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 24
  %191 = bitcast i8* %_new_gep_84 to i32*
  store i32 %177, i32* %191, align 4, !mcsema_real_eip !44
  br i1 %185, label %block_0x24f, label %block_0x11b, !mcsema_real_eip !45

block_0x11b:                                      ; preds = %block_0x105
  %_new_load_445 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %192 = add i32 %_new_load_445, -74637
  %193 = xor i32 %192, %_new_load_445, !mcsema_real_eip !46
  %194 = and i32 %193, 16, !mcsema_real_eip !46
  %195 = icmp ne i32 %194, 0, !mcsema_real_eip !46
  store i1 %195, i1* %AF, align 1, !mcsema_real_eip !46
  %196 = trunc i32 %192 to i8, !mcsema_real_eip !46
  %197 = call i8 @llvm.ctpop.i8(i8 %196), !mcsema_real_eip !46
  %198 = and i8 %197, 1
  %199 = icmp eq i8 %198, 0
  store i1 %199, i1* %PF, align 1, !mcsema_real_eip !46
  %200 = icmp eq i32 %192, 0
  store i1 %200, i1* %ZF, align 1, !mcsema_real_eip !46
  %201 = icmp slt i32 %192, 0
  store i1 %201, i1* %SF, align 1, !mcsema_real_eip !46
  %202 = icmp ult i32 %_new_load_445, 74637, !mcsema_real_eip !46
  store i1 %202, i1* %CF, align 1, !mcsema_real_eip !46
  %203 = and i32 %193, %_new_load_445, !mcsema_real_eip !46
  %204 = icmp slt i32 %203, 0
  store i1 %204, i1* %OF, align 1, !mcsema_real_eip !46
  %205 = zext i32 %192 to i64, !mcsema_real_eip !46
  store i64 %205, i64* %XAX, align 8, !mcsema_real_eip !46
  %_new_gep_90 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 20
  %206 = bitcast i8* %_new_gep_90 to i32*
  store i32 %192, i32* %206, align 4, !mcsema_real_eip !47
  br i1 %200, label %block_0x25f, label %block_0x131, !mcsema_real_eip !48

block_0x131:                                      ; preds = %block_0x11b
  %_new_load_460 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %207 = add i32 %_new_load_460, -74639
  %208 = xor i32 %207, %_new_load_460, !mcsema_real_eip !49
  %209 = and i32 %208, 16, !mcsema_real_eip !49
  %210 = icmp ne i32 %209, 0, !mcsema_real_eip !49
  store i1 %210, i1* %AF, align 1, !mcsema_real_eip !49
  %211 = trunc i32 %207 to i8, !mcsema_real_eip !49
  %212 = call i8 @llvm.ctpop.i8(i8 %211), !mcsema_real_eip !49
  %213 = and i8 %212, 1
  %214 = icmp eq i8 %213, 0
  store i1 %214, i1* %PF, align 1, !mcsema_real_eip !49
  %215 = icmp eq i32 %207, 0
  store i1 %215, i1* %ZF, align 1, !mcsema_real_eip !49
  %216 = icmp slt i32 %207, 0
  store i1 %216, i1* %SF, align 1, !mcsema_real_eip !49
  %217 = icmp ult i32 %_new_load_460, 74639, !mcsema_real_eip !49
  store i1 %217, i1* %CF, align 1, !mcsema_real_eip !49
  %218 = and i32 %208, %_new_load_460, !mcsema_real_eip !49
  %219 = icmp slt i32 %218, 0
  store i1 %219, i1* %OF, align 1, !mcsema_real_eip !49
  %220 = zext i32 %207 to i64, !mcsema_real_eip !49
  store i64 %220, i64* %XAX, align 8, !mcsema_real_eip !49
  %_new_gep_96 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 16
  %221 = bitcast i8* %_new_gep_96 to i32*
  store i32 %207, i32* %221, align 4, !mcsema_real_eip !50
  br i1 %215, label %block_0x26f, label %block_0x147, !mcsema_real_eip !51

block_0x147:                                      ; preds = %block_0x131
  %_new_load_475 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %222 = add i32 %_new_load_475, -74640
  %223 = xor i32 %222, %_new_load_475, !mcsema_real_eip !52
  %224 = and i32 %223, 16
  %225 = icmp eq i32 %224, 0
  store i1 %225, i1* %AF, align 1, !mcsema_real_eip !52
  %226 = trunc i32 %222 to i8, !mcsema_real_eip !52
  %227 = call i8 @llvm.ctpop.i8(i8 %226), !mcsema_real_eip !52
  %228 = and i8 %227, 1
  %229 = icmp eq i8 %228, 0
  store i1 %229, i1* %PF, align 1, !mcsema_real_eip !52
  %230 = icmp eq i32 %222, 0
  store i1 %230, i1* %ZF, align 1, !mcsema_real_eip !52
  %231 = icmp slt i32 %222, 0
  store i1 %231, i1* %SF, align 1, !mcsema_real_eip !52
  %232 = icmp ult i32 %_new_load_475, 74640, !mcsema_real_eip !52
  store i1 %232, i1* %CF, align 1, !mcsema_real_eip !52
  %233 = and i32 %223, %_new_load_475, !mcsema_real_eip !52
  %234 = icmp slt i32 %233, 0
  store i1 %234, i1* %OF, align 1, !mcsema_real_eip !52
  %235 = zext i32 %222 to i64, !mcsema_real_eip !52
  store i64 %235, i64* %XAX, align 8, !mcsema_real_eip !52
  %_new_gep_102 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 12
  %236 = bitcast i8* %_new_gep_102 to i32*
  store i32 %222, i32* %236, align 4, !mcsema_real_eip !53
  br i1 %230, label %block_0x27f, label %block_0x15d, !mcsema_real_eip !54

block_0x15d:                                      ; preds = %block_0x147
  %_new_load_490 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %237 = add i32 %_new_load_490, -74641
  %238 = xor i32 %237, %_new_load_490, !mcsema_real_eip !55
  %239 = and i32 %238, 16
  %240 = icmp eq i32 %239, 0
  store i1 %240, i1* %AF, align 1, !mcsema_real_eip !55
  %241 = trunc i32 %237 to i8, !mcsema_real_eip !55
  %242 = call i8 @llvm.ctpop.i8(i8 %241), !mcsema_real_eip !55
  %243 = and i8 %242, 1
  %244 = icmp eq i8 %243, 0
  store i1 %244, i1* %PF, align 1, !mcsema_real_eip !55
  %245 = icmp eq i32 %237, 0
  store i1 %245, i1* %ZF, align 1, !mcsema_real_eip !55
  %246 = icmp slt i32 %237, 0
  store i1 %246, i1* %SF, align 1, !mcsema_real_eip !55
  %247 = icmp ult i32 %_new_load_490, 74641, !mcsema_real_eip !55
  store i1 %247, i1* %CF, align 1, !mcsema_real_eip !55
  %248 = and i32 %238, %_new_load_490, !mcsema_real_eip !55
  %249 = icmp slt i32 %248, 0
  store i1 %249, i1* %OF, align 1, !mcsema_real_eip !55
  %250 = zext i32 %237 to i64, !mcsema_real_eip !55
  store i64 %250, i64* %XAX, align 8, !mcsema_real_eip !55
  %_new_gep_108 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 8
  %251 = bitcast i8* %_new_gep_108 to i32*
  store i32 %237, i32* %251, align 4, !mcsema_real_eip !56
  br i1 %245, label %block_0x28f, label %block_0x173, !mcsema_real_eip !57

block_0x173:                                      ; preds = %block_0x15d
  %_new_load_505 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %252 = add i32 %_new_load_505, -74642
  %253 = xor i32 %252, %_new_load_505, !mcsema_real_eip !58
  %254 = and i32 %253, 16
  %255 = icmp eq i32 %254, 0
  store i1 %255, i1* %AF, align 1, !mcsema_real_eip !58
  %256 = trunc i32 %252 to i8, !mcsema_real_eip !58
  %257 = call i8 @llvm.ctpop.i8(i8 %256), !mcsema_real_eip !58
  %258 = and i8 %257, 1
  %259 = icmp eq i8 %258, 0
  store i1 %259, i1* %PF, align 1, !mcsema_real_eip !58
  %260 = icmp eq i32 %252, 0
  store i1 %260, i1* %ZF, align 1, !mcsema_real_eip !58
  %261 = icmp slt i32 %252, 0
  store i1 %261, i1* %SF, align 1, !mcsema_real_eip !58
  %262 = icmp ult i32 %_new_load_505, 74642, !mcsema_real_eip !58
  store i1 %262, i1* %CF, align 1, !mcsema_real_eip !58
  %263 = and i32 %253, %_new_load_505, !mcsema_real_eip !58
  %264 = icmp slt i32 %263, 0
  store i1 %264, i1* %OF, align 1, !mcsema_real_eip !58
  %265 = zext i32 %252 to i64, !mcsema_real_eip !58
  store i64 %265, i64* %XAX, align 8, !mcsema_real_eip !58
  %_new_gep_114 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 4
  %266 = bitcast i8* %_new_gep_114 to i32*
  store i32 %252, i32* %266, align 4, !mcsema_real_eip !59
  br i1 %260, label %block_0x29f, label %block_0x189, !mcsema_real_eip !60

block_0x189:                                      ; preds = %block_0x173
  %_new_load_520 = load i32, i32* %_address_in_parent_stack_bt_264., align 4
  %267 = add i32 %_new_load_520, -74643
  %268 = xor i32 %267, %_new_load_520, !mcsema_real_eip !61
  %269 = and i32 %268, 16
  %270 = icmp eq i32 %269, 0
  store i1 %270, i1* %AF, align 1, !mcsema_real_eip !61
  %271 = trunc i32 %267 to i8, !mcsema_real_eip !61
  %272 = call i8 @llvm.ctpop.i8(i8 %271), !mcsema_real_eip !61
  %273 = and i8 %272, 1
  %274 = icmp eq i8 %273, 0
  store i1 %274, i1* %PF, align 1, !mcsema_real_eip !61
  %275 = icmp eq i32 %267, 0
  store i1 %275, i1* %ZF, align 1, !mcsema_real_eip !61
  %276 = icmp slt i32 %267, 0
  store i1 %276, i1* %SF, align 1, !mcsema_real_eip !61
  %277 = icmp ult i32 %_new_load_520, 74643, !mcsema_real_eip !61
  store i1 %277, i1* %CF, align 1, !mcsema_real_eip !61
  %278 = and i32 %268, %_new_load_520, !mcsema_real_eip !61
  %279 = icmp slt i32 %278, 0
  store i1 %279, i1* %OF, align 1, !mcsema_real_eip !61
  %280 = bitcast [92 x i8]* %_local_stack_start_ptr_3 to i32*
  store i32 %267, i32* %280, align 4, !mcsema_real_eip !62
  %_new_load_805 = load i32, i32* %3, align 4
  %281 = zext i32 %_new_load_805 to i64
  store i64 %281, i64* %XAX, align 8
  br i1 %275, label %block_0x2af, label %block_0x2bf, !mcsema_real_eip !63

block_0x19f:                                      ; preds = %entry
  %_new_load_535 = load i32, i32* %3, align 4
  %282 = zext i32 %_new_load_535 to i64, !mcsema_real_eip !64
  store i64 %282, i64* %XAX, align 8, !mcsema_real_eip !64
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !65
  %283 = icmp slt i32 %_new_load_535, 0
  store i1 %283, i1* %SF, align 1, !mcsema_real_eip !65
  %284 = icmp eq i32 %_new_load_535, 0, !mcsema_real_eip !65
  store i1 %284, i1* %ZF, align 1, !mcsema_real_eip !65
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !65
  %285 = trunc i32 %_new_load_535 to i8, !mcsema_real_eip !65
  %286 = call i8 @llvm.ctpop.i8(i8 %285), !mcsema_real_eip !65
  %287 = and i8 %286, 1
  %288 = icmp eq i8 %287, 0
  store i1 %288, i1* %PF, align 1, !mcsema_real_eip !65
  br label %block_0x2c8, !mcsema_real_eip !66

block_0x1ad:                                      ; preds = %block_0x21
  %_new_load_550 = load i32, i32* %3, align 4
  %289 = zext i32 %_new_load_550 to i64, !mcsema_real_eip !67
  store i64 %289, i64* %XAX, align 8, !mcsema_real_eip !67
  %290 = add i32 %_new_load_550, 1, !mcsema_real_eip !112
  %291 = xor i32 %290, %_new_load_550, !mcsema_real_eip !112
  %292 = and i32 %291, 16, !mcsema_real_eip !112
  %293 = icmp ne i32 %292, 0, !mcsema_real_eip !112
  store i1 %293, i1* %AF, align 1, !mcsema_real_eip !112
  %294 = icmp slt i32 %290, 0
  store i1 %294, i1* %SF, align 1, !mcsema_real_eip !112
  %295 = icmp eq i32 %290, 0, !mcsema_real_eip !112
  store i1 %295, i1* %ZF, align 1, !mcsema_real_eip !112
  %296 = xor i32 %_new_load_550, -2147483648, !mcsema_real_eip !112
  %297 = and i32 %291, %296, !mcsema_real_eip !112
  %298 = icmp slt i32 %297, 0
  store i1 %298, i1* %OF, align 1, !mcsema_real_eip !112
  %299 = trunc i32 %290 to i8, !mcsema_real_eip !112
  %300 = call i8 @llvm.ctpop.i8(i8 %299), !mcsema_real_eip !112
  %301 = and i8 %300, 1
  %302 = icmp eq i8 %301, 0
  store i1 %302, i1* %PF, align 1, !mcsema_real_eip !112
  %303 = icmp eq i32 %_new_load_550, -1
  br label %block_0x2c8, !mcsema_real_eip !68

block_0x1bb:                                      ; preds = %block_0x35
  %_new_load_565 = load i32, i32* %3, align 4
  %304 = zext i32 %_new_load_565 to i64, !mcsema_real_eip !69
  store i64 %304, i64* %XAX, align 8, !mcsema_real_eip !69
  %305 = add i32 %_new_load_565, 2, !mcsema_real_eip !113
  %306 = xor i32 %305, %_new_load_565, !mcsema_real_eip !113
  %307 = and i32 %306, 16, !mcsema_real_eip !113
  %308 = icmp ne i32 %307, 0, !mcsema_real_eip !113
  store i1 %308, i1* %AF, align 1, !mcsema_real_eip !113
  %309 = icmp slt i32 %305, 0
  store i1 %309, i1* %SF, align 1, !mcsema_real_eip !113
  %310 = icmp eq i32 %305, 0, !mcsema_real_eip !113
  store i1 %310, i1* %ZF, align 1, !mcsema_real_eip !113
  %311 = xor i32 %_new_load_565, -2147483648, !mcsema_real_eip !113
  %312 = and i32 %306, %311, !mcsema_real_eip !113
  %313 = icmp slt i32 %312, 0
  store i1 %313, i1* %OF, align 1, !mcsema_real_eip !113
  %314 = trunc i32 %305 to i8, !mcsema_real_eip !113
  %315 = call i8 @llvm.ctpop.i8(i8 %314), !mcsema_real_eip !113
  %316 = and i8 %315, 1
  %317 = icmp eq i8 %316, 0
  store i1 %317, i1* %PF, align 1, !mcsema_real_eip !113
  %318 = icmp ugt i32 %_new_load_565, -3
  br label %block_0x2c8, !mcsema_real_eip !70

block_0x1c9:                                      ; preds = %block_0x49
  %_new_load_580 = load i32, i32* %3, align 4
  %319 = zext i32 %_new_load_580 to i64, !mcsema_real_eip !71
  store i64 %319, i64* %XAX, align 8, !mcsema_real_eip !71
  %320 = add i32 %_new_load_580, 4, !mcsema_real_eip !114
  %321 = xor i32 %320, %_new_load_580, !mcsema_real_eip !114
  %322 = and i32 %321, 16, !mcsema_real_eip !114
  %323 = icmp ne i32 %322, 0, !mcsema_real_eip !114
  store i1 %323, i1* %AF, align 1, !mcsema_real_eip !114
  %324 = icmp slt i32 %320, 0
  store i1 %324, i1* %SF, align 1, !mcsema_real_eip !114
  %325 = icmp eq i32 %320, 0, !mcsema_real_eip !114
  store i1 %325, i1* %ZF, align 1, !mcsema_real_eip !114
  %326 = xor i32 %_new_load_580, -2147483648, !mcsema_real_eip !114
  %327 = and i32 %321, %326, !mcsema_real_eip !114
  %328 = icmp slt i32 %327, 0
  store i1 %328, i1* %OF, align 1, !mcsema_real_eip !114
  %329 = trunc i32 %320 to i8, !mcsema_real_eip !114
  %330 = call i8 @llvm.ctpop.i8(i8 %329), !mcsema_real_eip !114
  %331 = and i8 %330, 1
  %332 = icmp eq i8 %331, 0
  store i1 %332, i1* %PF, align 1, !mcsema_real_eip !114
  %333 = icmp ugt i32 %_new_load_580, -5
  br label %block_0x2c8, !mcsema_real_eip !72

block_0x1d7:                                      ; preds = %block_0x5d
  %_new_load_595 = load i32, i32* %3, align 4
  %334 = zext i32 %_new_load_595 to i64, !mcsema_real_eip !73
  store i64 %334, i64* %XAX, align 8, !mcsema_real_eip !73
  %335 = add i32 %_new_load_595, 6, !mcsema_real_eip !74
  %336 = xor i32 %335, %_new_load_595, !mcsema_real_eip !74
  %337 = and i32 %336, 16, !mcsema_real_eip !74
  %338 = icmp ne i32 %337, 0, !mcsema_real_eip !74
  store i1 %338, i1* %AF, align 1, !mcsema_real_eip !74
  %339 = icmp slt i32 %335, 0
  store i1 %339, i1* %SF, align 1, !mcsema_real_eip !74
  %340 = icmp eq i32 %335, 0, !mcsema_real_eip !74
  store i1 %340, i1* %ZF, align 1, !mcsema_real_eip !74
  %341 = xor i32 %_new_load_595, -2147483648, !mcsema_real_eip !74
  %342 = and i32 %336, %341, !mcsema_real_eip !74
  %343 = icmp slt i32 %342, 0
  store i1 %343, i1* %OF, align 1, !mcsema_real_eip !74
  %344 = trunc i32 %335 to i8, !mcsema_real_eip !74
  %345 = call i8 @llvm.ctpop.i8(i8 %344), !mcsema_real_eip !74
  %346 = and i8 %345, 1
  %347 = icmp eq i8 %346, 0
  store i1 %347, i1* %PF, align 1, !mcsema_real_eip !74
  %348 = icmp ugt i32 %_new_load_595, -7
  br label %block_0x2c8, !mcsema_real_eip !75

block_0x1e5:                                      ; preds = %block_0x71
  %_new_load_610 = load i32, i32* %3, align 4
  %349 = zext i32 %_new_load_610 to i64, !mcsema_real_eip !76
  store i64 %349, i64* %XAX, align 8, !mcsema_real_eip !76
  %350 = add i32 %_new_load_610, 12, !mcsema_real_eip !77
  %351 = xor i32 %350, %_new_load_610, !mcsema_real_eip !77
  %352 = and i32 %351, 16, !mcsema_real_eip !77
  %353 = icmp ne i32 %352, 0, !mcsema_real_eip !77
  store i1 %353, i1* %AF, align 1, !mcsema_real_eip !77
  %354 = icmp slt i32 %350, 0
  store i1 %354, i1* %SF, align 1, !mcsema_real_eip !77
  %355 = icmp eq i32 %350, 0, !mcsema_real_eip !77
  store i1 %355, i1* %ZF, align 1, !mcsema_real_eip !77
  %356 = xor i32 %_new_load_610, -2147483648, !mcsema_real_eip !77
  %357 = and i32 %351, %356, !mcsema_real_eip !77
  %358 = icmp slt i32 %357, 0
  store i1 %358, i1* %OF, align 1, !mcsema_real_eip !77
  %359 = trunc i32 %350 to i8, !mcsema_real_eip !77
  %360 = call i8 @llvm.ctpop.i8(i8 %359), !mcsema_real_eip !77
  %361 = and i8 %360, 1
  %362 = icmp eq i8 %361, 0
  store i1 %362, i1* %PF, align 1, !mcsema_real_eip !77
  %363 = icmp ugt i32 %_new_load_610, -13
  br label %block_0x2c8, !mcsema_real_eip !78

block_0x1f3:                                      ; preds = %block_0x85
  %_new_load_625 = load i32, i32* %3, align 4
  %364 = zext i32 %_new_load_625 to i64, !mcsema_real_eip !79
  store i64 %364, i64* %XAX, align 8, !mcsema_real_eip !79
  %365 = add i32 %_new_load_625, 13, !mcsema_real_eip !115
  %366 = xor i32 %365, %_new_load_625, !mcsema_real_eip !115
  %367 = and i32 %366, 16, !mcsema_real_eip !115
  %368 = icmp ne i32 %367, 0, !mcsema_real_eip !115
  store i1 %368, i1* %AF, align 1, !mcsema_real_eip !115
  %369 = icmp slt i32 %365, 0
  store i1 %369, i1* %SF, align 1, !mcsema_real_eip !115
  %370 = icmp eq i32 %365, 0, !mcsema_real_eip !115
  store i1 %370, i1* %ZF, align 1, !mcsema_real_eip !115
  %371 = xor i32 %_new_load_625, -2147483648, !mcsema_real_eip !115
  %372 = and i32 %366, %371, !mcsema_real_eip !115
  %373 = icmp slt i32 %372, 0
  store i1 %373, i1* %OF, align 1, !mcsema_real_eip !115
  %374 = trunc i32 %365 to i8, !mcsema_real_eip !115
  %375 = call i8 @llvm.ctpop.i8(i8 %374), !mcsema_real_eip !115
  %376 = and i8 %375, 1
  %377 = icmp eq i8 %376, 0
  store i1 %377, i1* %PF, align 1, !mcsema_real_eip !115
  %378 = icmp ugt i32 %_new_load_625, -14
  br label %block_0x2c8, !mcsema_real_eip !80

block_0x201:                                      ; preds = %block_0x99
  %_new_load_640 = load i32, i32* %3, align 4
  %379 = zext i32 %_new_load_640 to i64, !mcsema_real_eip !81
  store i64 %379, i64* %XAX, align 8, !mcsema_real_eip !81
  %380 = add i32 %_new_load_640, 19, !mcsema_real_eip !116
  %381 = xor i32 %380, %_new_load_640, !mcsema_real_eip !116
  %382 = and i32 %381, 16
  %383 = icmp eq i32 %382, 0
  store i1 %383, i1* %AF, align 1, !mcsema_real_eip !116
  %384 = icmp slt i32 %380, 0
  store i1 %384, i1* %SF, align 1, !mcsema_real_eip !116
  %385 = icmp eq i32 %380, 0, !mcsema_real_eip !116
  store i1 %385, i1* %ZF, align 1, !mcsema_real_eip !116
  %386 = xor i32 %_new_load_640, -2147483648, !mcsema_real_eip !116
  %387 = and i32 %381, %386, !mcsema_real_eip !116
  %388 = icmp slt i32 %387, 0
  store i1 %388, i1* %OF, align 1, !mcsema_real_eip !116
  %389 = trunc i32 %380 to i8, !mcsema_real_eip !116
  %390 = call i8 @llvm.ctpop.i8(i8 %389), !mcsema_real_eip !116
  %391 = and i8 %390, 1
  %392 = icmp eq i8 %391, 0
  store i1 %392, i1* %PF, align 1, !mcsema_real_eip !116
  %393 = icmp ugt i32 %_new_load_640, -20
  br label %block_0x2c8, !mcsema_real_eip !82

block_0x20f:                                      ; preds = %block_0xad
  %_new_load_655 = load i32, i32* %3, align 4
  %394 = zext i32 %_new_load_655 to i64, !mcsema_real_eip !83
  store i64 %394, i64* %XAX, align 8, !mcsema_real_eip !83
  %395 = add i32 %_new_load_655, 255, !mcsema_real_eip !84
  %396 = xor i32 %395, %_new_load_655, !mcsema_real_eip !84
  %397 = and i32 %396, 16
  %398 = icmp eq i32 %397, 0
  store i1 %398, i1* %AF, align 1, !mcsema_real_eip !84
  %399 = icmp slt i32 %395, 0
  store i1 %399, i1* %SF, align 1, !mcsema_real_eip !84
  %400 = icmp eq i32 %395, 0, !mcsema_real_eip !84
  store i1 %400, i1* %ZF, align 1, !mcsema_real_eip !84
  %401 = xor i32 %_new_load_655, -2147483648, !mcsema_real_eip !84
  %402 = and i32 %396, %401, !mcsema_real_eip !84
  %403 = icmp slt i32 %402, 0
  store i1 %403, i1* %OF, align 1, !mcsema_real_eip !84
  %404 = trunc i32 %395 to i8, !mcsema_real_eip !84
  %405 = call i8 @llvm.ctpop.i8(i8 %404), !mcsema_real_eip !84
  %406 = and i8 %405, 1
  %407 = icmp eq i8 %406, 0
  store i1 %407, i1* %PF, align 1, !mcsema_real_eip !84
  %408 = icmp ugt i32 %_new_load_655, -256
  br label %block_0x2c8, !mcsema_real_eip !85

block_0x21f:                                      ; preds = %block_0xc3
  %_new_load_670 = load i32, i32* %3, align 4
  %409 = zext i32 %_new_load_670 to i64, !mcsema_real_eip !86
  store i64 %409, i64* %XAX, align 8, !mcsema_real_eip !86
  %410 = add i32 %_new_load_670, 74633, !mcsema_real_eip !117
  %411 = xor i32 %410, %_new_load_670, !mcsema_real_eip !117
  %412 = and i32 %411, 16, !mcsema_real_eip !117
  %413 = icmp ne i32 %412, 0, !mcsema_real_eip !117
  store i1 %413, i1* %AF, align 1, !mcsema_real_eip !117
  %414 = icmp slt i32 %410, 0
  store i1 %414, i1* %SF, align 1, !mcsema_real_eip !117
  %415 = icmp eq i32 %410, 0, !mcsema_real_eip !117
  store i1 %415, i1* %ZF, align 1, !mcsema_real_eip !117
  %416 = xor i32 %_new_load_670, -2147483648, !mcsema_real_eip !117
  %417 = and i32 %411, %416, !mcsema_real_eip !117
  %418 = icmp slt i32 %417, 0
  store i1 %418, i1* %OF, align 1, !mcsema_real_eip !117
  %419 = trunc i32 %410 to i8, !mcsema_real_eip !117
  %420 = call i8 @llvm.ctpop.i8(i8 %419), !mcsema_real_eip !117
  %421 = and i8 %420, 1
  %422 = icmp eq i8 %421, 0
  store i1 %422, i1* %PF, align 1, !mcsema_real_eip !117
  %423 = icmp ugt i32 %_new_load_670, -74634
  br label %block_0x2c8, !mcsema_real_eip !87

block_0x22f:                                      ; preds = %block_0xd9
  %_new_load_685 = load i32, i32* %3, align 4
  %424 = zext i32 %_new_load_685 to i64, !mcsema_real_eip !88
  store i64 %424, i64* %XAX, align 8, !mcsema_real_eip !88
  %425 = add i32 %_new_load_685, 74634, !mcsema_real_eip !118
  %426 = xor i32 %425, %_new_load_685, !mcsema_real_eip !118
  %427 = and i32 %426, 16, !mcsema_real_eip !118
  %428 = icmp ne i32 %427, 0, !mcsema_real_eip !118
  store i1 %428, i1* %AF, align 1, !mcsema_real_eip !118
  %429 = icmp slt i32 %425, 0
  store i1 %429, i1* %SF, align 1, !mcsema_real_eip !118
  %430 = icmp eq i32 %425, 0, !mcsema_real_eip !118
  store i1 %430, i1* %ZF, align 1, !mcsema_real_eip !118
  %431 = xor i32 %_new_load_685, -2147483648, !mcsema_real_eip !118
  %432 = and i32 %426, %431, !mcsema_real_eip !118
  %433 = icmp slt i32 %432, 0
  store i1 %433, i1* %OF, align 1, !mcsema_real_eip !118
  %434 = trunc i32 %425 to i8, !mcsema_real_eip !118
  %435 = call i8 @llvm.ctpop.i8(i8 %434), !mcsema_real_eip !118
  %436 = and i8 %435, 1
  %437 = icmp eq i8 %436, 0
  store i1 %437, i1* %PF, align 1, !mcsema_real_eip !118
  %438 = icmp ugt i32 %_new_load_685, -74635
  br label %block_0x2c8, !mcsema_real_eip !89

block_0x23f:                                      ; preds = %block_0xef
  %_new_load_700 = load i32, i32* %3, align 4
  %439 = zext i32 %_new_load_700 to i64, !mcsema_real_eip !90
  store i64 %439, i64* %XAX, align 8, !mcsema_real_eip !90
  %440 = add i32 %_new_load_700, 74635, !mcsema_real_eip !91
  %441 = xor i32 %440, %_new_load_700, !mcsema_real_eip !91
  %442 = and i32 %441, 16, !mcsema_real_eip !91
  %443 = icmp ne i32 %442, 0, !mcsema_real_eip !91
  store i1 %443, i1* %AF, align 1, !mcsema_real_eip !91
  %444 = icmp slt i32 %440, 0
  store i1 %444, i1* %SF, align 1, !mcsema_real_eip !91
  %445 = icmp eq i32 %440, 0, !mcsema_real_eip !91
  store i1 %445, i1* %ZF, align 1, !mcsema_real_eip !91
  %446 = xor i32 %_new_load_700, -2147483648, !mcsema_real_eip !91
  %447 = and i32 %441, %446, !mcsema_real_eip !91
  %448 = icmp slt i32 %447, 0
  store i1 %448, i1* %OF, align 1, !mcsema_real_eip !91
  %449 = trunc i32 %440 to i8, !mcsema_real_eip !91
  %450 = call i8 @llvm.ctpop.i8(i8 %449), !mcsema_real_eip !91
  %451 = and i8 %450, 1
  %452 = icmp eq i8 %451, 0
  store i1 %452, i1* %PF, align 1, !mcsema_real_eip !91
  %453 = icmp ugt i32 %_new_load_700, -74636
  br label %block_0x2c8, !mcsema_real_eip !92

block_0x24f:                                      ; preds = %block_0x105
  %_new_load_715 = load i32, i32* %3, align 4
  %454 = zext i32 %_new_load_715 to i64, !mcsema_real_eip !93
  store i64 %454, i64* %XAX, align 8, !mcsema_real_eip !93
  %455 = add i32 %_new_load_715, 74636, !mcsema_real_eip !119
  %456 = xor i32 %455, %_new_load_715, !mcsema_real_eip !119
  %457 = and i32 %456, 16, !mcsema_real_eip !119
  %458 = icmp ne i32 %457, 0, !mcsema_real_eip !119
  store i1 %458, i1* %AF, align 1, !mcsema_real_eip !119
  %459 = icmp slt i32 %455, 0
  store i1 %459, i1* %SF, align 1, !mcsema_real_eip !119
  %460 = icmp eq i32 %455, 0, !mcsema_real_eip !119
  store i1 %460, i1* %ZF, align 1, !mcsema_real_eip !119
  %461 = xor i32 %_new_load_715, -2147483648, !mcsema_real_eip !119
  %462 = and i32 %456, %461, !mcsema_real_eip !119
  %463 = icmp slt i32 %462, 0
  store i1 %463, i1* %OF, align 1, !mcsema_real_eip !119
  %464 = trunc i32 %455 to i8, !mcsema_real_eip !119
  %465 = call i8 @llvm.ctpop.i8(i8 %464), !mcsema_real_eip !119
  %466 = and i8 %465, 1
  %467 = icmp eq i8 %466, 0
  store i1 %467, i1* %PF, align 1, !mcsema_real_eip !119
  %468 = icmp ugt i32 %_new_load_715, -74637
  br label %block_0x2c8, !mcsema_real_eip !94

block_0x25f:                                      ; preds = %block_0x11b
  %_new_load_730 = load i32, i32* %3, align 4
  %469 = zext i32 %_new_load_730 to i64, !mcsema_real_eip !95
  store i64 %469, i64* %XAX, align 8, !mcsema_real_eip !95
  %470 = add i32 %_new_load_730, 74637, !mcsema_real_eip !96
  %471 = xor i32 %470, %_new_load_730, !mcsema_real_eip !96
  %472 = and i32 %471, 16, !mcsema_real_eip !96
  %473 = icmp ne i32 %472, 0, !mcsema_real_eip !96
  store i1 %473, i1* %AF, align 1, !mcsema_real_eip !96
  %474 = icmp slt i32 %470, 0
  store i1 %474, i1* %SF, align 1, !mcsema_real_eip !96
  %475 = icmp eq i32 %470, 0, !mcsema_real_eip !96
  store i1 %475, i1* %ZF, align 1, !mcsema_real_eip !96
  %476 = xor i32 %_new_load_730, -2147483648, !mcsema_real_eip !96
  %477 = and i32 %471, %476, !mcsema_real_eip !96
  %478 = icmp slt i32 %477, 0
  store i1 %478, i1* %OF, align 1, !mcsema_real_eip !96
  %479 = trunc i32 %470 to i8, !mcsema_real_eip !96
  %480 = call i8 @llvm.ctpop.i8(i8 %479), !mcsema_real_eip !96
  %481 = and i8 %480, 1
  %482 = icmp eq i8 %481, 0
  store i1 %482, i1* %PF, align 1, !mcsema_real_eip !96
  %483 = icmp ugt i32 %_new_load_730, -74638
  br label %block_0x2c8, !mcsema_real_eip !97

block_0x26f:                                      ; preds = %block_0x131
  %_new_load_745 = load i32, i32* %3, align 4
  %484 = zext i32 %_new_load_745 to i64, !mcsema_real_eip !98
  store i64 %484, i64* %XAX, align 8, !mcsema_real_eip !98
  %485 = add i32 %_new_load_745, 74639, !mcsema_real_eip !120
  %486 = xor i32 %485, %_new_load_745, !mcsema_real_eip !120
  %487 = and i32 %486, 16, !mcsema_real_eip !120
  %488 = icmp ne i32 %487, 0, !mcsema_real_eip !120
  store i1 %488, i1* %AF, align 1, !mcsema_real_eip !120
  %489 = icmp slt i32 %485, 0
  store i1 %489, i1* %SF, align 1, !mcsema_real_eip !120
  %490 = icmp eq i32 %485, 0, !mcsema_real_eip !120
  store i1 %490, i1* %ZF, align 1, !mcsema_real_eip !120
  %491 = xor i32 %_new_load_745, -2147483648, !mcsema_real_eip !120
  %492 = and i32 %486, %491, !mcsema_real_eip !120
  %493 = icmp slt i32 %492, 0
  store i1 %493, i1* %OF, align 1, !mcsema_real_eip !120
  %494 = trunc i32 %485 to i8, !mcsema_real_eip !120
  %495 = call i8 @llvm.ctpop.i8(i8 %494), !mcsema_real_eip !120
  %496 = and i8 %495, 1
  %497 = icmp eq i8 %496, 0
  store i1 %497, i1* %PF, align 1, !mcsema_real_eip !120
  %498 = icmp ugt i32 %_new_load_745, -74640
  br label %block_0x2c8, !mcsema_real_eip !99

block_0x27f:                                      ; preds = %block_0x147
  %_new_load_760 = load i32, i32* %3, align 4
  %499 = zext i32 %_new_load_760 to i64, !mcsema_real_eip !100
  store i64 %499, i64* %XAX, align 8, !mcsema_real_eip !100
  %500 = add i32 %_new_load_760, 74640, !mcsema_real_eip !101
  %501 = xor i32 %500, %_new_load_760, !mcsema_real_eip !101
  %502 = and i32 %501, 16
  %503 = icmp eq i32 %502, 0
  store i1 %503, i1* %AF, align 1, !mcsema_real_eip !101
  %504 = icmp slt i32 %500, 0
  store i1 %504, i1* %SF, align 1, !mcsema_real_eip !101
  %505 = icmp eq i32 %500, 0, !mcsema_real_eip !101
  store i1 %505, i1* %ZF, align 1, !mcsema_real_eip !101
  %506 = xor i32 %_new_load_760, -2147483648, !mcsema_real_eip !101
  %507 = and i32 %501, %506, !mcsema_real_eip !101
  %508 = icmp slt i32 %507, 0
  store i1 %508, i1* %OF, align 1, !mcsema_real_eip !101
  %509 = trunc i32 %500 to i8, !mcsema_real_eip !101
  %510 = call i8 @llvm.ctpop.i8(i8 %509), !mcsema_real_eip !101
  %511 = and i8 %510, 1
  %512 = icmp eq i8 %511, 0
  store i1 %512, i1* %PF, align 1, !mcsema_real_eip !101
  %513 = icmp ugt i32 %_new_load_760, -74641
  br label %block_0x2c8, !mcsema_real_eip !102

block_0x28f:                                      ; preds = %block_0x15d
  %_new_load_775 = load i32, i32* %3, align 4
  %514 = zext i32 %_new_load_775 to i64, !mcsema_real_eip !103
  store i64 %514, i64* %XAX, align 8, !mcsema_real_eip !103
  %515 = add i32 %_new_load_775, 74641, !mcsema_real_eip !121
  %516 = xor i32 %515, %_new_load_775, !mcsema_real_eip !121
  %517 = and i32 %516, 16
  %518 = icmp eq i32 %517, 0
  store i1 %518, i1* %AF, align 1, !mcsema_real_eip !121
  %519 = icmp slt i32 %515, 0
  store i1 %519, i1* %SF, align 1, !mcsema_real_eip !121
  %520 = icmp eq i32 %515, 0, !mcsema_real_eip !121
  store i1 %520, i1* %ZF, align 1, !mcsema_real_eip !121
  %521 = xor i32 %_new_load_775, -2147483648, !mcsema_real_eip !121
  %522 = and i32 %516, %521, !mcsema_real_eip !121
  %523 = icmp slt i32 %522, 0
  store i1 %523, i1* %OF, align 1, !mcsema_real_eip !121
  %524 = trunc i32 %515 to i8, !mcsema_real_eip !121
  %525 = call i8 @llvm.ctpop.i8(i8 %524), !mcsema_real_eip !121
  %526 = and i8 %525, 1
  %527 = icmp eq i8 %526, 0
  store i1 %527, i1* %PF, align 1, !mcsema_real_eip !121
  %528 = icmp ugt i32 %_new_load_775, -74642
  br label %block_0x2c8, !mcsema_real_eip !104

block_0x29f:                                      ; preds = %block_0x173
  %_new_load_790 = load i32, i32* %3, align 4
  %529 = zext i32 %_new_load_790 to i64, !mcsema_real_eip !105
  store i64 %529, i64* %XAX, align 8, !mcsema_real_eip !105
  %530 = add i32 %_new_load_790, 74642, !mcsema_real_eip !122
  %531 = xor i32 %530, %_new_load_790, !mcsema_real_eip !122
  %532 = and i32 %531, 16
  %533 = icmp eq i32 %532, 0
  store i1 %533, i1* %AF, align 1, !mcsema_real_eip !122
  %534 = icmp slt i32 %530, 0
  store i1 %534, i1* %SF, align 1, !mcsema_real_eip !122
  %535 = icmp eq i32 %530, 0, !mcsema_real_eip !122
  store i1 %535, i1* %ZF, align 1, !mcsema_real_eip !122
  %536 = xor i32 %_new_load_790, -2147483648, !mcsema_real_eip !122
  %537 = and i32 %531, %536, !mcsema_real_eip !122
  %538 = icmp slt i32 %537, 0
  store i1 %538, i1* %OF, align 1, !mcsema_real_eip !122
  %539 = trunc i32 %530 to i8, !mcsema_real_eip !122
  %540 = call i8 @llvm.ctpop.i8(i8 %539), !mcsema_real_eip !122
  %541 = and i8 %540, 1
  %542 = icmp eq i8 %541, 0
  store i1 %542, i1* %PF, align 1, !mcsema_real_eip !122
  %543 = icmp ugt i32 %_new_load_790, -74643
  br label %block_0x2c8, !mcsema_real_eip !106

block_0x2af:                                      ; preds = %block_0x189
  %544 = add i32 %_new_load_805, 74643, !mcsema_real_eip !107
  %545 = xor i32 %544, %_new_load_805, !mcsema_real_eip !107
  %546 = and i32 %545, 16
  %547 = icmp eq i32 %546, 0
  store i1 %547, i1* %AF, align 1, !mcsema_real_eip !107
  %548 = icmp slt i32 %544, 0
  store i1 %548, i1* %SF, align 1, !mcsema_real_eip !107
  %549 = icmp eq i32 %544, 0, !mcsema_real_eip !107
  store i1 %549, i1* %ZF, align 1, !mcsema_real_eip !107
  %550 = xor i32 %_new_load_805, -2147483648, !mcsema_real_eip !107
  %551 = and i32 %545, %550, !mcsema_real_eip !107
  %552 = icmp slt i32 %551, 0
  store i1 %552, i1* %OF, align 1, !mcsema_real_eip !107
  %553 = trunc i32 %544 to i8, !mcsema_real_eip !107
  %554 = call i8 @llvm.ctpop.i8(i8 %553), !mcsema_real_eip !107
  %555 = and i8 %554, 1
  %556 = icmp eq i8 %555, 0
  store i1 %556, i1* %PF, align 1, !mcsema_real_eip !107
  %557 = icmp ugt i32 %_new_load_805, -74644
  br label %block_0x2c8, !mcsema_real_eip !108

block_0x2bf:                                      ; preds = %block_0x189
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !109
  %558 = icmp slt i32 %_new_load_805, 0
  store i1 %558, i1* %SF, align 1, !mcsema_real_eip !109
  %559 = icmp eq i32 %_new_load_805, 0, !mcsema_real_eip !109
  store i1 %559, i1* %ZF, align 1, !mcsema_real_eip !109
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !109
  %560 = trunc i32 %_new_load_805 to i8, !mcsema_real_eip !109
  %561 = call i8 @llvm.ctpop.i8(i8 %560), !mcsema_real_eip !109
  %562 = and i8 %561, 1
  %563 = icmp eq i8 %562, 0
  store i1 %563, i1* %PF, align 1, !mcsema_real_eip !109
  br label %block_0x2c8, !mcsema_real_eip !110

block_0x2c8:                                      ; preds = %block_0x2bf, %block_0x2af, %block_0x29f, %block_0x28f, %block_0x27f, %block_0x26f, %block_0x25f, %block_0x24f, %block_0x23f, %block_0x22f, %block_0x21f, %block_0x20f, %block_0x201, %block_0x1f3, %block_0x1e5, %block_0x1d7, %block_0x1c9, %block_0x1bb, %block_0x1ad, %block_0x19f
  %.sink2 = phi i1 [ false, %block_0x2bf ], [ %557, %block_0x2af ], [ %543, %block_0x29f ], [ %528, %block_0x28f ], [ %513, %block_0x27f ], [ %498, %block_0x26f ], [ %483, %block_0x25f ], [ %468, %block_0x24f ], [ %453, %block_0x23f ], [ %438, %block_0x22f ], [ %423, %block_0x21f ], [ %408, %block_0x20f ], [ %393, %block_0x201 ], [ %378, %block_0x1f3 ], [ %363, %block_0x1e5 ], [ %348, %block_0x1d7 ], [ %333, %block_0x1c9 ], [ %318, %block_0x1bb ], [ %303, %block_0x1ad ], [ false, %block_0x19f ]
  %EAX_val.233.sink = phi i32 [ %_new_load_805, %block_0x2bf ], [ %544, %block_0x2af ], [ %530, %block_0x29f ], [ %515, %block_0x28f ], [ %500, %block_0x27f ], [ %485, %block_0x26f ], [ %470, %block_0x25f ], [ %455, %block_0x24f ], [ %440, %block_0x23f ], [ %425, %block_0x22f ], [ %410, %block_0x21f ], [ %395, %block_0x20f ], [ %380, %block_0x201 ], [ %365, %block_0x1f3 ], [ %350, %block_0x1e5 ], [ %335, %block_0x1d7 ], [ %320, %block_0x1c9 ], [ %305, %block_0x1bb ], [ %290, %block_0x1ad ], [ %_new_load_535, %block_0x19f ]
  store i1 %.sink2, i1* %CF, align 1
  store i32 %EAX_val.233.sink, i32* %3, align 4
  %564 = zext i32 %EAX_val.233.sink to i64, !mcsema_real_eip !110
  store i64 %564, i64* %XAX, align 8, !mcsema_real_eip !110
  store volatile i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_ptr2int_, i64* %XBP, align 8, !mcsema_real_eip !123
  %_new_gep_247 = getelementptr inbounds [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 92
  store volatile i8* %_new_gep_247, i8** %_RSP_ptr_, align 8
  %_new_gep_249 = getelementptr [92 x i8], [92 x i8]* %_local_stack_start_ptr_3, i64 0, i64 100
  %565 = add i64 %RSP_val.1, 8, !mcsema_real_eip !111
  %_address_in_parent_stack_bt_864._allin_new_bt_250 = bitcast i8* %_new_gep_247 to i64*
  %_new_load_865 = load i64, i64* %_address_in_parent_stack_bt_864._allin_new_bt_250, align 8
  store i64 %_new_load_865, i64* %XIP, align 8, !mcsema_real_eip !111
  store volatile i8* %_new_gep_249, i8** %_RSP_ptr_, align 8
  store i64 %565, i64* %XSP, align 8, !mcsema_real_eip !111
  ret void, !mcsema_real_eip !111
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 7}
!6 = !{i64 14}
!7 = !{i64 17}
!8 = !{i64 19}
!9 = !{i64 22}
!10 = !{i64 36}
!11 = !{i64 39}
!12 = !{i64 42}
!13 = !{i64 56}
!14 = !{i64 59}
!15 = !{i64 62}
!16 = !{i64 76}
!17 = !{i64 79}
!18 = !{i64 82}
!19 = !{i64 96}
!20 = !{i64 99}
!21 = !{i64 102}
!22 = !{i64 116}
!23 = !{i64 119}
!24 = !{i64 122}
!25 = !{i64 136}
!26 = !{i64 139}
!27 = !{i64 142}
!28 = !{i64 156}
!29 = !{i64 159}
!30 = !{i64 162}
!31 = !{i64 176}
!32 = !{i64 181}
!33 = !{i64 184}
!34 = !{i64 198}
!35 = !{i64 203}
!36 = !{i64 206}
!37 = !{i64 220}
!38 = !{i64 225}
!39 = !{i64 228}
!40 = !{i64 242}
!41 = !{i64 247}
!42 = !{i64 250}
!43 = !{i64 264}
!44 = !{i64 269}
!45 = !{i64 272}
!46 = !{i64 286}
!47 = !{i64 291}
!48 = !{i64 294}
!49 = !{i64 308}
!50 = !{i64 313}
!51 = !{i64 316}
!52 = !{i64 330}
!53 = !{i64 335}
!54 = !{i64 338}
!55 = !{i64 352}
!56 = !{i64 357}
!57 = !{i64 360}
!58 = !{i64 374}
!59 = !{i64 379}
!60 = !{i64 382}
!61 = !{i64 396}
!62 = !{i64 401}
!63 = !{i64 404}
!64 = !{i64 415}
!65 = !{i64 418}
!66 = !{i64 424}
!67 = !{i64 429}
!68 = !{i64 438}
!69 = !{i64 443}
!70 = !{i64 452}
!71 = !{i64 457}
!72 = !{i64 466}
!73 = !{i64 471}
!74 = !{i64 474}
!75 = !{i64 480}
!76 = !{i64 485}
!77 = !{i64 488}
!78 = !{i64 494}
!79 = !{i64 499}
!80 = !{i64 508}
!81 = !{i64 513}
!82 = !{i64 522}
!83 = !{i64 527}
!84 = !{i64 530}
!85 = !{i64 538}
!86 = !{i64 543}
!87 = !{i64 554}
!88 = !{i64 559}
!89 = !{i64 570}
!90 = !{i64 575}
!91 = !{i64 578}
!92 = !{i64 586}
!93 = !{i64 591}
!94 = !{i64 602}
!95 = !{i64 607}
!96 = !{i64 610}
!97 = !{i64 618}
!98 = !{i64 623}
!99 = !{i64 634}
!100 = !{i64 639}
!101 = !{i64 642}
!102 = !{i64 650}
!103 = !{i64 655}
!104 = !{i64 666}
!105 = !{i64 671}
!106 = !{i64 682}
!107 = !{i64 690}
!108 = !{i64 698}
!109 = !{i64 706}
!110 = !{i64 712}
!111 = !{i64 716}
!112 = !{i64 432}
!113 = !{i64 446}
!114 = !{i64 460}
!115 = !{i64 502}
!116 = !{i64 516}
!117 = !{i64 546}
!118 = !{i64 562}
!119 = !{i64 594}
!120 = !{i64 626}
!121 = !{i64 658}
!122 = !{i64 674}
!123 = !{i64 715}
